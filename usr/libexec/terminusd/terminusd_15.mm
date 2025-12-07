uint64_t sub_100154D38(uint64_t result)
{
  if (*(result + 56) == 1)
  {
    v1 = *(result + 40);
    if (!v1)
    {
      return result;
    }

    return (*(v1 + 16))(v1, *(result + 32));
  }

  v1 = *(result + 48);
  if (v1)
  {
    return (*(v1 + 16))(v1, *(result + 32));
  }

  return result;
}

void sub_100154D6C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v8 = WeakRetained;
  if (WeakRetained && (*(WeakRetained + 21) & 1) == 0)
  {
    if (v6 || ![v5 count])
    {
      v9 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v11 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs(v11, 16, "%s%.30s:%-4d no identities fetched (%@)", "", "[NRDiscoveryClient startBLEAdvertisements]_block_invoke", 1835, v6);
      }
    }

    else
    {
      v12 = _NRCopyLogObjectForNRUUID();
      v13 = _NRLogIsLevelEnabled();

      if (v13)
      {
        v14 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs(v14, 1, "%s%.30s:%-4d fetched %u identities", "", "-[NRDiscoveryClient startBLEAdvertisements]_block_invoke", 1821, [v5 count]);
      }

      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v15 = v5;
      v16 = [v15 countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v30;
        do
        {
          v19 = 0;
          do
          {
            if (*v30 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = [*(*(&v29 + 1) + 8 * v19) authTagForData:*(a1 + 32) type:3 error:0];
            v21 = *(*(a1 + 48) + 8);
            v22 = *(v21 + 40);
            *(v21 + 40) = v20;

            [*(a1 + 40) appendData:*(*(*(a1 + 48) + 8) + 40)];
            v19 = v19 + 1;
          }

          while (v17 != v19);
          v17 = [v15 countByEnumeratingWithState:&v29 objects:v33 count:16];
        }

        while (v17);
      }

      v23 = v8[27];
      if (v23)
      {
        [v23 setWatchSetupData:*(a1 + 40)];
        v24 = v8[27];
        v25[0] = _NSConcreteStackBlock;
        v25[1] = 3221225472;
        v25[2] = sub_100155048;
        v25[3] = &unk_1001FC9C8;
        v26 = v8;
        v27 = *(a1 + 40);
        v28 = *(a1 + 64);
        [v24 activateWithCompletion:v25];
      }
    }
  }
}

void sub_100155048(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = _NRCopyLogObjectForNRUUID();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v5 = *(a1 + 32);
    if (v5)
    {
      v5 = v5[3];
    }

    v6 = v5;
    v7 = _NRCopyLogObjectForNRUUID();
    LogString = _NRKeyCreateLogString();
    v9 = [*(a1 + 40) length];

    _NRLogWithArgs(v7, 1, "%s%.30s:%-4d advertising with data: %@ (len %u, nonce %u err %@)", "", "[NRDiscoveryClient startBLEAdvertisements]_block_invoke_2", 1831, LogString, v9, *(a1 + 48), v10);
  }
}

id sub_100155154()
{
  if (qword_1002293C0 != -1)
  {
    dispatch_once(&qword_1002293C0, &stru_1001FCBB0);
  }

  v1 = qword_1002293B8;

  return v1;
}

void sub_1001551A8(id a1)
{
  v1 = os_log_create("com.apple.networkrelay", "");
  v2 = qword_1002293B8;
  qword_1002293B8 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1001554F0(uint64_t a1)
{
  if (a1)
  {
    NRDiffMachTimeInSeconds();
    v3 = v2;
    NRDiffMachTimeInSeconds();
    v5 = v4;
    v6 = [NSNumber numberWithDouble:round(*(a1 + 24) * 1000.0) * 0.001];
    [*(a1 + 8) setObject:v6 forKeyedSubscript:@"uptimeInSec"];

    v7 = [NSNumber numberWithDouble:round(v5 * 1000.0) * 0.001];
    [*(a1 + 8) setObject:v7 forKeyedSubscript:@"ikeClassDSetupTimeInSec"];

    v8 = [NSNumber numberWithDouble:round(v3 * 1000.0) * 0.001];
    [*(a1 + 8) setObject:v8 forKeyedSubscript:@"ikeClassCSetupTimeInSec"];

    v9 = 0.0;
    if (*(a1 + 16))
    {
      v9 = 1.0;
    }

    v10 = [NSNumber numberWithDouble:v9];
    [*(a1 + 8) setObject:v10 forKeyedSubscript:@"external"];

    if (*(a1 + 80))
    {
      v11 = [NSNumber numberWithUnsignedLongLong:?];
      [*(a1 + 8) setObject:v11 forKeyedSubscript:@"ikeClassDAttempts"];
    }

    if (*(a1 + 72))
    {
      v12 = [NSNumber numberWithUnsignedLongLong:?];
      [*(a1 + 8) setObject:v12 forKeyedSubscript:@"ikeClassCAttempts"];
    }

    if (*(a1 + 32))
    {
      v13 = [NSNumber numberWithUnsignedLongLong:?];
      [*(a1 + 8) setObject:v13 forKeyedSubscript:@"totalIKEControlPackets"];
    }

    if (*(a1 + 88))
    {
      v14 = [NSNumber numberWithUnsignedLongLong:?];
      [*(a1 + 8) setObject:v14 forKeyedSubscript:@"totalBytesSent"];
    }

    if (*(a1 + 96))
    {
      v15 = [NSNumber numberWithUnsignedLongLong:?];
      [*(a1 + 8) setObject:v15 forKeyedSubscript:@"totalBytesReceived"];
    }
  }
}

void sub_1001557BC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = *(a1 + 8);
    [v4 allValues];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = v15 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    v7 = v5;
    if (v6)
    {
      v8 = v6;
      v9 = *v13;
      while (2)
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v5);
          }

          if ([*(*(&v12 + 1) + 8 * i) BOOLValue])
          {

            if (qword_1002293C0 != -1)
            {
              dispatch_once(&qword_1002293C0, &stru_1001FCBB0);
            }

            if (_NRLogIsLevelEnabled())
            {
              if (qword_1002293C0 != -1)
              {
                dispatch_once(&qword_1002293C0, &stru_1001FCBB0);
              }

              _NRLogWithArgs(qword_1002293B8, 0, "%s%.30s:%-4d AnalyticsReport - %@ : %@", "", "[NRAnalytics reportEvent:]", 75, v3, v4);
            }

            v11 = v4;
            AnalyticsSendEventLazy();
            v7 = v11;
            goto LABEL_18;
          }
        }

        v8 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }

      v7 = v5;
    }

LABEL_18:
  }
}

void *sub_100157134(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v16.receiver = a1;
    v16.super_class = NRAnalyticsLinkUpgradeReport;
    v4 = objc_msgSendSuper2(&v16, "init");
    if (!v4)
    {
      v9 = sub_100155154();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v11 = sub_100155154();
        _NRLogWithArgs(v11, 16, "%s%.30s:%-4d ABORTING: [super init] failed", "", "[NRAnalyticsLinkUpgradeReport initWithDictionary:]", 379);
      }

      v12 = _os_log_pack_size();
      v13 = __error();
      v14 = _os_log_pack_fill(&v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v12, *v13, &_mh_execute_header, "%{public}s [super init] failed");
      *v14 = 136446210;
      *(v14 + 4) = "[NRAnalyticsLinkUpgradeReport initWithDictionary:]";
      sub_100155154();
      _NRLogAbortWithPack();
    }

    v5 = v4;
    v6 = [[NSMutableDictionary alloc] initWithDictionary:v3];
    [v6 addEntriesFromDictionary:v5[1]];
    v7 = v5[1];
    v5[1] = v6;

    a1 = v5;
  }

  return a1;
}

uint64_t sub_1001572BC(uint64_t a1)
{
  if (*(a1 + 32) == 1)
  {
    v3 = [[NSMutableArray alloc] initWithCapacity:{128, v1}];
    v4 = qword_1002293C8;
    qword_1002293C8 = v3;
  }

  return __NRLogRegisterSimCrashHook(sub_100157364);
}

void sub_100157320(id a1)
{
  v1 = os_log_create("com.apple.networkrelay", "events");
  v2 = qword_1002293E0;
  qword_1002293E0 = v1;

  _objc_release_x1(v1, v2);
}

__CFString *sub_100157378(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = v1;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = @"");
      v5 = CFSTR("(");
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v6 = [v3 description];
LABEL_21:

        goto LABEL_22;
      }

      v4 = @"}");
      v5 = CFSTR("({");
    }

    v6 = [[NSMutableString alloc] initWithString:v5];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v7 = v3;
    v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v19;
      v11 = 1;
      do
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = **(&v18 + 1);
        if ((v11 & 1) == 0)
        {
          [(__CFString *)v6 appendString:@", ", v18];
        }

        v13 = [v12 description];
        [(__CFString *)v6 appendString:v13];

        if (v9 >= 2)
        {
          for (i = 1; i != v9; ++i)
          {
            if (*v19 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v15 = *(*(&v18 + 1) + 8 * i);
            [(__CFString *)v6 appendString:@", "];
            v16 = [v15 description];
            [(__CFString *)v6 appendString:v16];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
        v11 = 0;
      }

      while (v9);
    }

    [(__CFString *)v6 appendString:v4];
    goto LABEL_21;
  }

  v6 = @"(null)";
LABEL_22:

  return v6;
}

void sub_1001576B0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (qword_1002293F8 != -1)
    {
      dispatch_once(&qword_1002293F8, &stru_1001FCD78);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002293F8 != -1)
      {
        dispatch_once(&qword_1002293F8, &stru_1001FCD78);
      }

      _NRLogWithArgs(qword_1002293F0, 1, "%s%.30s:%-4d %@ DTLS write error %@", "", "[NRDDTLSStack processOutboundUnencryptedData:]_block_invoke", 112, *(a1 + 32), v3);
    }
  }

  else
  {
    if (qword_1002293F8 != -1)
    {
      dispatch_once(&qword_1002293F8, &stru_1001FCD78);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002293F8 != -1)
      {
        dispatch_once(&qword_1002293F8, &stru_1001FCD78);
      }

      _NRLogWithArgs(qword_1002293F0, 1, "%s%.30s:%-4d %@ DTLS write success", "", "[NRDDTLSStack processOutboundUnencryptedData:]_block_invoke", 115, *(a1 + 32));
    }
  }
}

void sub_100157820(id a1)
{
  v1 = os_log_create("com.apple.networkrelay", "");
  v2 = qword_1002293F0;
  qword_1002293F0 = v1;

  _objc_release_x1(v1, v2);
}

void sub_100157864(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (qword_1002293F8 != -1)
    {
      dispatch_once(&qword_1002293F8, &stru_1001FCD78);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002293F8 != -1)
      {
        dispatch_once(&qword_1002293F8, &stru_1001FCD78);
      }

      _NRLogWithArgs(qword_1002293F0, 1, "%s%.30s:%-4d %@ UDP write error %@", "", "[NRDDTLSStack processInboundEncryptedData:]_block_invoke", 126, *(a1 + 32), v3);
    }
  }

  else
  {
    if (qword_1002293F8 != -1)
    {
      dispatch_once(&qword_1002293F8, &stru_1001FCD78);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002293F8 != -1)
      {
        dispatch_once(&qword_1002293F8, &stru_1001FCD78);
      }

      _NRLogWithArgs(qword_1002293F0, 1, "%s%.30s:%-4d %@ UDP write success", "", "[NRDDTLSStack processInboundEncryptedData:]_block_invoke", 129, *(a1 + 32));
    }
  }
}

void sub_1001579D4(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  if (a1 && (*(a1 + 11) & 1) == 0)
  {
    v6 = dispatch_time(0x8000000000000000, 1000000000);
    v7 = *(a1 + 48);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100157AAC;
    block[3] = &unk_1001FCC40;
    block[4] = a1;
    v10 = a3;
    v9 = v5;
    dispatch_after(v6, v7, block);
  }
}

void sub_100157AAC(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2 || (*(v2 + 11) & 1) == 0)
  {
    if (qword_1002293F8 != -1)
    {
      dispatch_once(&qword_1002293F8, &stru_1001FCD78);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002293F8 != -1)
      {
        dispatch_once(&qword_1002293F8, &stru_1001FCD78);
      }

      v4 = *(a1 + 32);
      v3 = *(a1 + 40);
      v5 = *(a1 + 48);
      v6 = qword_1002293F0;
      _NRLogWithArgs(v6, 1, "%s%.30s:%-4d %@ retransmit #%u of %llu outbound encrypted bytes", "", "-[NRDDTLSStack retransmitOutboundEncryptedData:retransmitCount:]_block_invoke", 146, v4, v5, [v3 length]);
    }

    v7 = *(a1 + 32);
    if (v7)
    {
      WeakRetained = objc_loadWeakRetained((v7 + 64));
      v9 = *(a1 + 32);
    }

    else
    {
      v9 = 0;
      WeakRetained = 0;
    }

    [WeakRetained handleDTLSStack:v9 outboundEncryptedData:*(a1 + 40)];

    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v12 = *(a1 + 48) + 1;

    sub_1001579D4(v10, v11, v12);
  }
}

void sub_100157C10(uint64_t a1)
{
  if (a1 && (*(a1 + 9) & 1) == 0)
  {
    *(a1 + 9) = 1;
    if (qword_1002293F8 != -1)
    {
      dispatch_once(&qword_1002293F8, &stru_1001FCD78);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002293F8 != -1)
      {
        dispatch_once(&qword_1002293F8, &stru_1001FCD78);
      }

      v2 = *(a1 + 40);
      v3 = qword_1002293F0;
      _NRLogWithArgs(v3, 1, "%s%.30s:%-4d %@ reading on UDP %@", "", "[NRDDTLSStack readOnUDPConnection]", 158, a1, v2);
    }

    v4 = *(a1 + 40);
    completion[0] = _NSConcreteStackBlock;
    completion[1] = 3221225472;
    completion[2] = sub_100157D58;
    completion[3] = &unk_1001FCC68;
    completion[4] = a1;
    nw_connection_receive(v4, 1u, 0xFFFFFFFF, completion);
  }
}

void sub_100157D58(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v19 = a2;
  v8 = a3;
  v9 = a5;
  v10 = *(a1 + 32);
  if (v10)
  {
    *(v10 + 9) = 0;
  }

  if (v19 && !v9)
  {
    if (qword_1002293F8 != -1)
    {
      dispatch_once(&qword_1002293F8, &stru_1001FCD78);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002293F8 != -1)
      {
        dispatch_once(&qword_1002293F8, &stru_1001FCD78);
      }

      v11 = qword_1002293F0;
      v12 = *(a1 + 32);
      v13 = [v19 length];
      v14 = *(a1 + 32);
      if (v14)
      {
        v14 = *(v14 + 40);
      }

      _NRLogWithArgs(v11, 1, "%s%.30s:%-4d %@ passing %llu outbound encrypted bytes to client from UDP %@", "", "[NRDDTLSStack readOnUDPConnection]_block_invoke", 168, v12, v13, v14);
    }

    v15 = *(a1 + 32);
    if (v15)
    {
      WeakRetained = objc_loadWeakRetained((v15 + 64));
      v17 = *(a1 + 32);
    }

    else
    {
      v17 = 0;
      WeakRetained = 0;
    }

    [WeakRetained handleDTLSStack:v17 outboundEncryptedData:v19];

    v18 = *(a1 + 32);
    if (v18)
    {
      if (*(v18 + 12))
      {
LABEL_19:
        sub_100157C10(v18);
        goto LABEL_26;
      }

      *(v18 + 12) = 1;
      v18 = *(a1 + 32);
    }

    sub_1001579D4(v18, v19, 1);
    v18 = *(a1 + 32);
    goto LABEL_19;
  }

  if (qword_1002293F8 != -1)
  {
    dispatch_once(&qword_1002293F8, &stru_1001FCD78);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_1002293F8 != -1)
    {
      dispatch_once(&qword_1002293F8, &stru_1001FCD78);
    }

    _NRLogWithArgs(qword_1002293F0, 1, "%s%.30s:%-4d %@ UDP read sadness %@", "", "[NRDDTLSStack readOnUDPConnection]_block_invoke", 164, *(a1 + 32), v9);
  }

LABEL_26:
}

void sub_100157F98(uint64_t a1)
{
  if (a1 && (*(a1 + 10) & 1) == 0)
  {
    *(a1 + 10) = 1;
    if (qword_1002293F8 != -1)
    {
      dispatch_once(&qword_1002293F8, &stru_1001FCD78);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002293F8 != -1)
      {
        dispatch_once(&qword_1002293F8, &stru_1001FCD78);
      }

      v2 = *(a1 + 32);
      v3 = qword_1002293F0;
      _NRLogWithArgs(v3, 1, "%s%.30s:%-4d %@ reading on DTLS %@", "", "[NRDDTLSStack readOnDTLSConnection]", 184, a1, v2);
    }

    v4 = *(a1 + 32);
    completion[0] = _NSConcreteStackBlock;
    completion[1] = 3221225472;
    completion[2] = sub_1001580E0;
    completion[3] = &unk_1001FCC68;
    completion[4] = a1;
    nw_connection_receive(v4, 1u, 0xFFFFFFFF, completion);
  }
}

void sub_1001580E0(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v18 = a2;
  v8 = a3;
  v9 = a5;
  v10 = *(a1 + 32);
  if (v10)
  {
    *(v10 + 10) = 0;
  }

  if (!v18 || v9)
  {
    if (qword_1002293F8 != -1)
    {
      dispatch_once(&qword_1002293F8, &stru_1001FCD78);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002293F8 != -1)
      {
        dispatch_once(&qword_1002293F8, &stru_1001FCD78);
      }

      _NRLogWithArgs(qword_1002293F0, 1, "%s%.30s:%-4d %@ DTLS read sadness %@", "", "[NRDDTLSStack readOnDTLSConnection]_block_invoke", 190, *(a1 + 32), v9);
    }
  }

  else
  {
    if (qword_1002293F8 != -1)
    {
      dispatch_once(&qword_1002293F8, &stru_1001FCD78);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002293F8 != -1)
      {
        dispatch_once(&qword_1002293F8, &stru_1001FCD78);
      }

      v11 = qword_1002293F0;
      v12 = *(a1 + 32);
      v13 = [v18 length];
      v14 = *(a1 + 32);
      if (v14)
      {
        v14 = *(v14 + 32);
      }

      _NRLogWithArgs(v11, 1, "%s%.30s:%-4d %@ passing %llu inbound decrypted bytes to client from DTLS %@", "", "[NRDDTLSStack readOnDTLSConnection]_block_invoke", 194, v12, v13, v14);
    }

    v15 = *(a1 + 32);
    if (v15)
    {
      WeakRetained = objc_loadWeakRetained((v15 + 64));
      v17 = *(a1 + 32);
    }

    else
    {
      v17 = 0;
      WeakRetained = 0;
    }

    [WeakRetained handleDTLSStack:v17 inboundDecryptedData:v18];

    sub_100157F98(*(a1 + 32));
  }
}

void sub_1001582F8(uint64_t a1)
{
  if (a1)
  {
    if (qword_1002293F8 != -1)
    {
      dispatch_once(&qword_1002293F8, &stru_1001FCD78);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002293F8 != -1)
      {
        dispatch_once(&qword_1002293F8, &stru_1001FCD78);
      }

      _NRLogWithArgs(qword_1002293F0, 1, "%s%.30s:%-4d %@ is ready", "", "[NRDDTLSStack handleIsReady]", 202, a1);
    }

    sub_100157F98(a1);
    WeakRetained = objc_loadWeakRetained((a1 + 64));
    [WeakRetained handleIsReady:a1];
  }
}

void sub_1001583F0(uint64_t a1, void *a2)
{
  options = a2;
  sec_protocol_options_set_tls_server_name(options, "::1");
  sec_protocol_options_set_peer_authentication_required(options, 0);
  sec_protocol_options_append_tls_ciphersuite(options, tls_ciphersuite_RSA_WITH_AES_128_CBC_SHA|0x80);
  sec_protocol_options_append_tls_ciphersuite(options, 0xAEu);
  sec_protocol_options_append_tls_ciphersuite(options, 0x8Du);
  sec_protocol_options_append_tls_ciphersuite(options, 0x8Cu);
  sec_protocol_options_add_pre_shared_key(options, *(a1 + 32), *(a1 + 32));
}

void sub_10015848C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = *(v5 + 48);
  }

  else
  {
    v6 = 0;
  }

  nw_connection_set_queue(v3, v6);
  if (qword_1002293F8 != -1)
  {
    dispatch_once(&qword_1002293F8, &stru_1001FCD78);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_1002293F8 != -1)
    {
      dispatch_once(&qword_1002293F8, &stru_1001FCD78);
    }

    _NRLogWithArgs(qword_1002293F0, 1, "%s%.30s:%-4d %@ DTLS Server got new connection %@", "", "[NRDDTLSStack startDTLS]_block_invoke_2", 244, *(a1 + 32), v4);
  }

  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1001589A0;
  handler[3] = &unk_1001FCCB8;
  handler[4] = *(a1 + 32);
  v9 = v4;
  v7 = v4;
  nw_connection_set_state_changed_handler(v7, handler);
  nw_connection_start(v7);
}

void sub_1001585E8(uint64_t a1, void *a2)
{
  v3 = a2;
  sec_protocol_options_set_peer_authentication_required(v3, 0);
  verify_block[0] = _NSConcreteStackBlock;
  verify_block[1] = 3221225472;
  verify_block[2] = sub_100158884;
  verify_block[3] = &unk_1001FCD08;
  v4 = *(a1 + 32);
  verify_block[4] = v4;
  if (v4)
  {
    v5 = *(v4 + 48);
  }

  else
  {
    v5 = 0;
  }

  sec_protocol_options_set_verify_block(v3, verify_block, v5);
  sec_protocol_options_append_tls_ciphersuite(v3, tls_ciphersuite_RSA_WITH_AES_128_CBC_SHA|0x80);
  sec_protocol_options_append_tls_ciphersuite(v3, 0xAEu);
  sec_protocol_options_append_tls_ciphersuite(v3, 0x8Du);
  sec_protocol_options_append_tls_ciphersuite(v3, 0x8Cu);
  sec_protocol_options_add_pre_shared_key(v3, *(a1 + 40), *(a1 + 40));
}

void sub_1001586CC(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a2;
  v8 = a3;
  if (qword_1002293F8 != -1)
  {
    dispatch_once(&qword_1002293F8, &stru_1001FCD78);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_1002293F8 != -1)
    {
      dispatch_once(&qword_1002293F8, &stru_1001FCD78);
    }

    v5 = *(a1 + 32);
    v6 = qword_1002293F0;
    v7 = nw_connection_state_to_string();
    _NRLogWithArgs(v6, 1, "%s%.30s:%-4d %@ client DTLS connection got state %s error %@", "", "[NRDDTLSStack startDTLS]_block_invoke_6", 309, v5, v7, v8);
  }

  if (v3 == 3)
  {
    sub_1001582F8(*(a1 + 32));
  }

  else if ((v3 & 0xFFFFFFFE) == 4)
  {
    if (qword_1002293F8 != -1)
    {
      dispatch_once(&qword_1002293F8, &stru_1001FCD78);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002293F8 != -1)
      {
        dispatch_once(&qword_1002293F8, &stru_1001FCD78);
      }

      _NRLogWithArgs(qword_1002293F0, 1, "%s%.30s:%-4d %@ client DTLS Sadness", "", "[NRDDTLSStack startDTLS]_block_invoke_6", 313, *(a1 + 32));
    }
  }
}

void sub_100158884(uint64_t a1, void *a2, void *a3, void *a4)
{
  v9 = a2;
  v7 = a3;
  v8 = a4;
  if (qword_1002293F8 != -1)
  {
    dispatch_once(&qword_1002293F8, &stru_1001FCD78);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_1002293F8 != -1)
    {
      dispatch_once(&qword_1002293F8, &stru_1001FCD78);
    }

    _NRLogWithArgs(qword_1002293F0, 1, "%s%.30s:%-4d %@ client verify block called", "", "[NRDDTLSStack startDTLS]_block_invoke_5", 278, *(a1 + 32));
  }

  v8[2](v8, 1);
}

void sub_1001589A0(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a2;
  v18 = a3;
  if (qword_1002293F8 != -1)
  {
    dispatch_once(&qword_1002293F8, &stru_1001FCD78);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_1002293F8 != -1)
    {
      dispatch_once(&qword_1002293F8, &stru_1001FCD78);
    }

    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = qword_1002293F0;
    v8 = nw_connection_state_to_string();
    _NRLogWithArgs(v7, 1, "%s%.30s:%-4d %@ server connection %@ got state %s error %@", "", "[NRDDTLSStack startDTLS]_block_invoke_3", 249, v5, v6, v8, v18);
  }

  if (v3 == 3)
  {
    v9 = *(a1 + 32);
    if (!v9)
    {
      goto LABEL_33;
    }

    if (!*(v9 + 32))
    {
      goto LABEL_22;
    }

    if (qword_1002293F8 != -1)
    {
      dispatch_once(&qword_1002293F8, &stru_1001FCD78);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002293F8 != -1)
      {
        dispatch_once(&qword_1002293F8, &stru_1001FCD78);
      }

      v10 = *(a1 + 32);
      if (v10)
      {
        v11 = *(v10 + 32);
      }

      else
      {
        v11 = 0;
      }

      v12 = *(a1 + 40);
      v13 = qword_1002293F0;
      _NRLogWithArgs(v13, 17, "Got new connection %@ on DTLS listener when we already had %@", v11, v12);
    }

    v14 = *(a1 + 32);
    v15 = v14 ? *(v14 + 32) : 0;
    nw_connection_cancel(v15);
    v16 = *(a1 + 32);
    if (v16 && (v17 = *(v16 + 32), *(v16 + 32) = 0, v17, (v9 = *(a1 + 32)) != 0))
    {
LABEL_22:
      objc_storeStrong((v9 + 32), *(a1 + 40));
      sub_1001582F8(*(a1 + 32));
    }

    else
    {
LABEL_33:
      sub_1001582F8(0);
    }
  }

  else if ((v3 & 0xFFFFFFFE) == 4)
  {
    if (qword_1002293F8 != -1)
    {
      dispatch_once(&qword_1002293F8, &stru_1001FCD78);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002293F8 != -1)
      {
        dispatch_once(&qword_1002293F8, &stru_1001FCD78);
      }

      _NRLogWithArgs(qword_1002293F0, 1, "%s%.30s:%-4d %@ DTLS server Sadness", "", "[NRDDTLSStack startDTLS]_block_invoke_3", 260, *(a1 + 32));
    }
  }
}

id *sub_100158C54(id *a1, void *a2, char a3, void *a4)
{
  v8 = a2;
  v9 = a4;
  if (!a1)
  {
    goto LABEL_17;
  }

  v36.receiver = a1;
  v36.super_class = NRDDTLSStack;
  v10 = objc_msgSendSuper2(&v36, "init");
  if (!v10)
  {
    v22 = sub_100159088();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v24 = sub_100159088();
      _NRLogWithArgs(v24, 16, "%s%.30s:%-4d ABORTING: [super init] failed", "", "[NRDDTLSStack initDTLSWithQueue:server:delegate:]", 325);
    }

    v8 = _os_log_pack_size();
    v9 = handler - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
    v25 = __error();
    v26 = _os_log_pack_fill(v9, v8, *v25, &_mh_execute_header, "%{public}s [super init] failed");
    *v26 = 136446210;
    *(v26 + 4) = "[NRDDTLSStack initDTLSWithQueue:server:delegate:]";
    sub_100159088();
    _NRLogAbortWithPack();
LABEL_15:
    v27 = sub_100159088();
    v28 = _NRLogIsLevelEnabled();

    if (v28)
    {
      v29 = sub_100159088();
      _NRLogWithArgs(v29, 17, "%s called with null queue", "[NRDDTLSStack initDTLSWithQueue:server:delegate:]");

      v20 = 0;
      goto LABEL_11;
    }

LABEL_17:
    v20 = 0;
    goto LABEL_11;
  }

  a1 = v10;
  if (!v8)
  {
    goto LABEL_15;
  }

  v10[7] = atomic_fetch_add_explicit(&qword_100228C18, 1uLL, memory_order_relaxed);
  objc_storeStrong(v10 + 6, a2);
  *(a1 + 8) = a3;
  objc_storeWeak(a1 + 8, v9);
  *(a1 + 7) = sub_1001590DC();
  *(a1 + 8) = sub_1001590DC();
  v35 = 0;
  *__str = 0;
  snprintf(__str, 6uLL, "%u", *(a1 + 7));
  v33 = 0;
  *port = 0;
  snprintf(port, 6uLL, "%u", *(a1 + 8));
  if (qword_1002293F8 != -1)
  {
    dispatch_once(&qword_1002293F8, &stru_1001FCD78);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_1002293F8 != -1)
    {
      dispatch_once(&qword_1002293F8, &stru_1001FCD78);
    }

    _NRLogWithArgs(qword_1002293F0, 1, "%s%.30s:%-4d %@ using ports local %s remote %s", "", "[NRDDTLSStack initDTLSWithQueue:server:delegate:]", 341, a1, __str, port);
  }

  host = nw_endpoint_create_host("::", port);
  secure_udp = nw_parameters_create_secure_udp(_nw_parameters_configure_protocol_disable, _nw_parameters_configure_protocol_default_configuration);
  nw_parameters_set_local_address();
  v13 = nw_endpoint_create_host("localhost", __str);
  v14 = nw_connection_create(v13, secure_udp);
  v15 = a1[5];
  a1[5] = v14;

  v16 = a1[5];
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100159314;
  handler[3] = &unk_1001FCD58;
  v17 = a1;
  v31 = v17;
  nw_connection_set_state_changed_handler(v16, handler);
  v18 = a1[6];
  v19 = a1[5];
  nw_connection_set_queue(v19, v18);

  nw_connection_start(a1[5]);
  a1 = v17;

  v20 = a1;
LABEL_11:

  return v20;
}

id sub_100159088()
{
  if (qword_1002293F8 != -1)
  {
    dispatch_once(&qword_1002293F8, &stru_1001FCD78);
  }

  v1 = qword_1002293F0;

  return v1;
}

uint64_t sub_1001590DC()
{
  while (1)
  {
    while (1)
    {
      v0 = word_100229400;
      v1 = word_100229400++ + 1;
      if ((v0 + 2) <= 0xC001u)
      {
        v2 = arc4random_uniform(0x3FFFu);
        v1 = v2 - 0x4000;
        word_100229400 = v2 - 0x4000;
      }

      *&v7[12] = 0;
      *&v7[10] = 0;
      v8 = 0;
      *v7 = 7708;
      *&v7[2] = bswap32(v1) >> 16;
      v3 = socket(30, 2, 0);
      if ((v3 & 0x80000000) == 0)
      {
        break;
      }

      v5 = *__error();
      if (strerror_r(v5, __strerrbuf, 0x80uLL))
      {
        __strerrbuf[0] = 0;
      }

      if (qword_1002293F8 != -1)
      {
        dispatch_once(&qword_1002293F8, &stru_1001FCD78);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_1002293F8 != -1)
        {
          dispatch_once(&qword_1002293F8, &stru_1001FCD78);
        }

        _NRLogWithArgs(qword_1002293F0, 17, "socket open failed: [%d] %s", v5, __strerrbuf);
      }
    }

    v4 = v3;
    if (!bind(v3, v7, 0x1Cu))
    {
      break;
    }

    if (qword_1002293F8 != -1)
    {
      dispatch_once(&qword_1002293F8, &stru_1001FCD78);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002293F8 != -1)
      {
        dispatch_once(&qword_1002293F8, &stru_1001FCD78);
      }

      _NRLogWithArgs(qword_1002293F0, 1, "%s%.30s:%-4d socket bind failed for %u (sockFD %d)", "", "NRDIsUDPPortAvailable", 57, v1, v4);
    }

    close(v4);
  }

  close(v4);
  return word_100229400;
}

void sub_100159314(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a2;
  v30 = a3;
  if (qword_1002293F8 != -1)
  {
    dispatch_once(&qword_1002293F8, &stru_1001FCD78);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_1002293F8 != -1)
    {
      dispatch_once(&qword_1002293F8, &stru_1001FCD78);
    }

    v5 = *(a1 + 32);
    v6 = qword_1002293F0;
    v7 = nw_connection_state_to_string();
    _NRLogWithArgs(v6, 1, "%s%.30s:%-4d %@ UDP connection got state %s error %@", "", "[NRDDTLSStack initDTLSWithQueue:server:delegate:]_block_invoke", 354, v5, v7, v30);
  }

  if (v3 == 3)
  {
    sub_100157C10(*(a1 + 32));
    v8 = *(a1 + 32);
    if (v8)
    {
      if (qword_1002293F8 != -1)
      {
        dispatch_once(&qword_1002293F8, &stru_1001FCD78);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_1002293F8 != -1)
        {
          dispatch_once(&qword_1002293F8, &stru_1001FCD78);
        }

        _NRLogWithArgs(qword_1002293F0, 1, "%s%.30s:%-4d %@ starting DTLS", "", "[NRDDTLSStack startDTLS]", 209, v8);
      }

      *&v9 = -1;
      *(&v9 + 1) = -1;
      buffer[0] = v9;
      buffer[1] = v9;
      v10 = dispatch_data_create(buffer, 0x20uLL, 0, 0);
      v45 = 0;
      *__str = 0;
      snprintf(__str, 6uLL, "%u", *(v8 + 14));
      v43 = 0;
      *port = 0;
      snprintf(port, 6uLL, "%u", *(v8 + 16));
      host = nw_endpoint_create_host("::", __str);
      if (*(v8 + 8) == 1)
      {
        configure_dtls = _NSConcreteStackBlock;
        v32 = 3221225472;
        v33 = sub_1001583F0;
        v34 = &unk_1001FCC90;
        v35 = v10;
        v12 = nw_parameters_create_secure_udp(&configure_dtls, _nw_parameters_configure_protocol_default_configuration);
        nw_parameters_set_local_address();
        v13 = nw_listener_create(v12);
        v14 = *(v8 + 24);
        *(v8 + 24) = v13;

        v15 = *(v8 + 48);
        v16 = *(v8 + 24);
        nw_listener_set_queue(v16, v15);

        v17 = *(v8 + 24);
        handler = _NSConcreteStackBlock;
        v38 = 3221225472;
        v39 = sub_10015848C;
        v40 = &unk_1001FCCE0;
        v41 = v8;
        nw_listener_set_new_connection_handler(v17, &handler);
        nw_listener_start(*(v8 + 24));
        if (qword_1002293F8 != -1)
        {
          dispatch_once(&qword_1002293F8, &stru_1001FCD78);
        }

        if (_NRLogIsLevelEnabled())
        {
          if (qword_1002293F8 != -1)
          {
            dispatch_once(&qword_1002293F8, &stru_1001FCD78);
          }

          v18 = *(v8 + 24);
          v19 = qword_1002293F0;
          _NRLogWithArgs(v19, 1, "%s%.30s:%-4d %@ started DTLS listener %@", "", "[NRDDTLSStack startDTLS]", 266, v8, v18);
        }

        v20 = v35;
      }

      else
      {
        configure_dtls = _NSConcreteStackBlock;
        v32 = 3221225472;
        v33 = sub_1001585E8;
        v34 = &unk_1001FCD30;
        v35 = v8;
        v36 = v10;
        v21 = nw_parameters_create_secure_udp(&configure_dtls, _nw_parameters_configure_protocol_default_configuration);
        nw_parameters_set_local_address();
        v22 = nw_endpoint_create_host("localhost", port);
        v23 = nw_connection_create(v22, v21);
        v24 = *(v8 + 32);
        *(v8 + 32) = v23;

        v25 = *(v8 + 32);
        handler = _NSConcreteStackBlock;
        v38 = 3221225472;
        v39 = sub_1001586CC;
        v40 = &unk_1001FCD58;
        v41 = v8;
        nw_connection_set_state_changed_handler(v25, &handler);
        v26 = *(v8 + 48);
        v27 = *(v8 + 32);
        nw_connection_set_queue(v27, v26);

        nw_connection_start(*(v8 + 32));
        if (qword_1002293F8 != -1)
        {
          dispatch_once(&qword_1002293F8, &stru_1001FCD78);
        }

        if (_NRLogIsLevelEnabled())
        {
          if (qword_1002293F8 != -1)
          {
            dispatch_once(&qword_1002293F8, &stru_1001FCD78);
          }

          v28 = *(v8 + 32);
          v29 = qword_1002293F0;
          _NRLogWithArgs(v29, 1, "%s%.30s:%-4d %@ started DTLS connection %@", "", "[NRDDTLSStack startDTLS]", 319, v8, v28);
        }

        v20 = v36;
      }
    }
  }

  else if ((v3 & 0xFFFFFFFE) == 4)
  {
    if (qword_1002293F8 != -1)
    {
      dispatch_once(&qword_1002293F8, &stru_1001FCD78);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002293F8 != -1)
      {
        dispatch_once(&qword_1002293F8, &stru_1001FCD78);
      }

      _NRLogWithArgs(qword_1002293F0, 1, "%s%.30s:%-4d %@ UDP Sadness", "", "[NRDDTLSStack initDTLSWithQueue:server:delegate:]_block_invoke", 359, *(a1 + 32));
    }
  }
}

id sub_1001599CC(uint64_t a1)
{
  objc_opt_self();
  if (qword_100229410 != -1)
  {
    dispatch_once(&qword_100229410, &stru_1001FCD98);
  }

  v1 = qword_100229408;

  return v1;
}

void sub_100159A24(id a1)
{
  v1 = sub_100159A64([NRDPolicySessionManager alloc]);
  v2 = qword_100229408;
  qword_100229408 = v1;

  _objc_release_x1(v1, v2);
}

id sub_100159A64(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v28.receiver = a1;
  v28.super_class = NRDPolicySessionManager;
  v1 = objc_msgSendSuper2(&v28, "init");
  if (!v1)
  {
    v10 = sub_100159D68();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v12 = sub_100159D68();
      _NRLogWithArgs(v12, 16, "%s%.30s:%-4d ABORTING: [super init] failed", "", "[NRDPolicySessionManager initManager]", 38);
    }

    v13 = _os_log_pack_size();
    v14 = *__error();
    v15 = _os_log_pack_fill(&v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v13, v14, &_mh_execute_header, "%{public}s [super init] failed");
    goto LABEL_16;
  }

  v2 = v1;
  v3 = sub_100003490();
  v4 = *(v2 + 2);
  *(v2 + 2) = v3;

  v5 = objc_alloc_init(NEPolicySession);
  v6 = *(v2 + 3);
  *(v2 + 3) = v5;

  [*(v2 + 3) setPriority:101];
  if ([*(v2 + 3) priority] != 101)
  {
    v16 = sub_100159D68();
    v17 = _NRLogIsLevelEnabled();

    if (v17)
    {
      v18 = sub_100159D68();
      _NRLogWithArgs(v18, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: self.policySession.priority == NEPolicySessionPriorityControl1", "", "[NRDPolicySessionManager initManager]", 42);
    }

    v19 = _os_log_pack_size();
    v20 = __error();
    v21 = _os_log_pack_fill(&v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v19, *v20, &_mh_execute_header, "%{public}s Assertion Failed: self.policySession.priority == NEPolicySessionPriorityControl1");
    *v21 = 136446210;
    *(v21 + 4) = "[NRDPolicySessionManager initManager]";
    goto LABEL_17;
  }

  if (([*(v2 + 3) lockSessionToCurrentProcess] & 1) == 0)
  {
    v22 = sub_100159D68();
    v23 = _NRLogIsLevelEnabled();

    if (v23)
    {
      v24 = sub_100159D68();
      _NRLogWithArgs(v24, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: [self.policySession lockSessionToCurrentProcess]", "", "[NRDPolicySessionManager initManager]", 43);
    }

    v25 = _os_log_pack_size();
    v26 = *__error();
    v15 = _os_log_pack_fill(&v27 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0), v25, v26, &_mh_execute_header, "%{public}s Assertion Failed: [self.policySession lockSessionToCurrentProcess]");
LABEL_16:
    *v15 = 136446210;
    *(v15 + 4) = "[NRDPolicySessionManager initManager]";
LABEL_17:
    sub_100159D68();
    _NRLogAbortWithPack();
    return 0;
  }

  v7 = objc_alloc_init(NSMutableDictionary);
  v8 = *(v2 + 4);
  *(v2 + 4) = v7;

  return v2;
}

id sub_100159D68()
{
  if (qword_100229420 != -1)
  {
    dispatch_once(&qword_100229420, &stru_1001FCDB8);
  }

  v1 = qword_100229418;

  return v1;
}

void sub_100159DBC(id a1)
{
  v1 = os_log_create("com.apple.networkrelay", "");
  v2 = qword_100229418;
  qword_100229418 = v1;

  _objc_release_x1(v1, v2);
}

id sub_100159E00(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 16));
    v7 = [*(a1 + 32) objectForKeyedSubscript:v5];
    if (v7)
    {
      v8 = [[NSMutableArray alloc] initWithArray:v7];
    }

    else
    {
      v8 = objc_alloc_init(NSMutableArray);
    }

    v9 = v8;
    *(a1 + 8) = 1;
    v13 = [*(a1 + 24) addPolicy:v6];
    if (!v13)
    {
      sub_10013C2A8(@"NRPolicySessionManager", @"AddPolicy", @"InvalidPolicyNumber", 1, @"Failed to install policy: %@", v10, v11, v12, v6);
    }

    v14 = [NSNumber numberWithUnsignedInteger:v13];
    [v9 addObject:v14];
    [*(a1 + 32) setObject:v9 forKeyedSubscript:v5];
    if (gNRPacketLoggingEnabled == 1)
    {
      v16 = sub_100159D68();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v18 = sub_100159D68();
        _NRLogWithArgs(v18, 1, "%s%.30s:%-4d added policy (%@) for identifier %@ : %@", "", "[NRDPolicySessionManager addPolicyForIdentifier:policy:]", 85, v14, v5, v6);
      }
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

void sub_100159FB0(uint64_t a1, void *a2, void *a3)
{
  v23 = a2;
  v5 = a3;
  if (!a1)
  {
LABEL_11:

    return;
  }

  dispatch_assert_queue_V2(*(a1 + 16));
  v6 = [*(a1 + 32) objectForKeyedSubscript:v23];
  v7 = v6;
  if (!v6 || ![v6 containsObject:v5])
  {
LABEL_10:

    goto LABEL_11;
  }

  *(a1 + 8) = 1;
  v8 = [[NSMutableArray alloc] initWithArray:v7];
  v9 = *(a1 + 24);
  v10 = [v9 removePolicyWithID:{objc_msgSend(v5, "unsignedIntegerValue")}];

  if (v10)
  {
    if (gNRPacketLoggingEnabled == 1)
    {
      v12 = sub_100159D68();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v14 = sub_100159D68();
        _NRLogWithArgs(v14, 1, "%s%.30s:%-4d removed policy (%@) for identifier %@", "", "[NRDPolicySessionManager removePolicyIDForIdentifier:policyID:]", 107, v5, v23);
      }
    }

    [v8 removeObject:{v5, v23}];
    if ([v8 count])
    {
      v11 = v8;
    }

    else
    {
      v11 = 0;
    }

    [*(a1 + 32) setObject:v11 forKeyedSubscript:v23];

    goto LABEL_10;
  }

  v15 = sub_100159D68();
  v16 = _NRLogIsLevelEnabled();

  if (v16)
  {
    v17 = sub_100159D68();
    _NRLogWithArgs(v17, 16, "%s%.30s:%-4d ABORTING: Failed to remove policy identifier: %@", "", "[NRDPolicySessionManager removePolicyIDForIdentifier:policyID:]", 104, v5);
  }

  v18 = _os_log_pack_size();
  v19 = __error();
  v20 = _os_log_pack_fill(&v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v18, *v19, &_mh_execute_header, "%{public}s Failed to remove policy identifier: %@");
  *v20 = 136446466;
  *(v20 + 4) = "[NRDPolicySessionManager removePolicyIDForIdentifier:policyID:]";
  *(v20 + 12) = 2112;
  *(v20 + 14) = v5;
  sub_100159D68();
  v21 = _NRLogAbortWithPack();
  sub_10015A238(v21, v22);
}

void sub_10015A238(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 16));
    v4 = [*(a1 + 32) objectForKeyedSubscript:v3];
    if (v4)
    {
      v19 = v4;
      v20 = v3;
      *(a1 + 8) = 1;
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v5 = v4;
      v6 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v22;
        do
        {
          for (i = 0; i != v7; i = i + 1)
          {
            if (*v22 != v8)
            {
              objc_enumerationMutation(v5);
            }

            v10 = *(*(&v21 + 1) + 8 * i);
            if (gNRPacketLoggingEnabled == 1)
            {
              if (qword_100229420 != -1)
              {
                dispatch_once(&qword_100229420, &stru_1001FCDB8);
              }

              v16 = qword_100229418;
              IsLevelEnabled = _NRLogIsLevelEnabled();

              if (IsLevelEnabled)
              {
                if (qword_100229420 != -1)
                {
                  dispatch_once(&qword_100229420, &stru_1001FCDB8);
                }

                v18 = qword_100229418;
                _NRLogWithArgs(v18, 1, "%s%.30s:%-4d removed policy (%@) for identifier %@", "", "[NRDPolicySessionManager removeAllPoliciesForIdentifier:]", 123, v10, v20);
              }
            }

            v11 = *(a1 + 24);
            v12 = [v11 removePolicyWithID:{objc_msgSend(v10, "unsignedIntegerValue")}];

            if ((v12 & 1) == 0)
            {
              sub_10013C2A8(@"NRPolicySessionManager", @"RemovePolicy Failed", 0, 1, @"Failed to remove policy identifier: %@", v13, v14, v15, v10);
            }
          }

          v7 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
        }

        while (v7);
      }

      v3 = v20;
      [*(a1 + 32) setObject:0 forKeyedSubscript:v20];
      v4 = v19;
    }
  }
}

uint64_t sub_10015A4BC(uint64_t a1, void *a2)
{
  v2 = a1;
  if (a1)
  {
    v3 = *(a1 + 16);
    v4 = a2;
    dispatch_assert_queue_V2(v3);
    v5 = [*(v2 + 32) objectForKeyedSubscript:v4];

    v2 = [v5 count] != 0;
  }

  return v2;
}

void sub_10015A52C(uint64_t a1)
{
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 16));
    if (*(a1 + 8))
    {
      if (([*(a1 + 24) apply] & 1) == 0)
      {
        sub_10013C2A8(@"NRPolicySessionManager", @"ApplyPolicy Failed", 0, 1, @"Failed to apply policies", v2, v3, v4, v7);
      }

      *(a1 + 8) = 0;
      if (gNRPacketLoggingEnabled == 1)
      {
        v5 = sub_100159D68();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        if (IsLevelEnabled)
        {
          v8 = sub_100159D68();
          _NRLogWithArgs(v8, 1, "%s%.30s:%-4d applied policies", "", "[NRDPolicySessionManager applyPolicies]", 151);
        }
      }
    }

    else
    {
      if (qword_100229420 != -1)
      {
        dispatch_once(&qword_100229420, &stru_1001FCDB8);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100229420 != -1)
        {
          dispatch_once(&qword_100229420, &stru_1001FCDB8);
        }

        _NRLogWithArgs(qword_100229418, 2, "%s%.30s:%-4d ignoring policy apply due to no changes", "", "[NRDPolicySessionManager applyPolicies]", 144);
      }
    }
  }
}

void sub_10015B030(id a1)
{
  v1 = os_log_create("com.apple.networkrelay", "");
  v2 = qword_100229480;
  qword_100229480 = v1;

  _objc_release_x1(v1, v2);
}

id sub_10015B480()
{
  if (qword_100229488 != -1)
  {
    dispatch_once(&qword_100229488, &stru_1001FD018);
  }

  v1 = qword_100229480;

  return v1;
}

char *sub_10015D20C(char *a1, void *a2)
{
  v4 = a2;
  v5 = v4;
  if (!a1)
  {
    goto LABEL_11;
  }

  if (!v4)
  {
    v12 = sub_10015B480();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v14 = sub_10015B480();
      _NRLogWithArgs(v14, 17, "%s called with null nrUUID", "[NRDLocalDevice initWithNRUUID:]");

      v10 = 0;
      goto LABEL_5;
    }

LABEL_11:
    v10 = 0;
    goto LABEL_5;
  }

  v21.receiver = a1;
  v21.super_class = NRDLocalDevice;
  v6 = objc_msgSendSuper2(&v21, "init");
  if (!v6)
  {
    v15 = sub_10015B480();
    v16 = _NRLogIsLevelEnabled();

    if (v16)
    {
      v17 = sub_10015B480();
      _NRLogWithArgs(v17, 16, "%s%.30s:%-4d ABORTING: [super init] failed", "", "[NRDLocalDevice initWithNRUUID:]", 1714);
    }

    v5 = _os_log_pack_size();
    a1 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    v18 = __error();
    v19 = _os_log_pack_fill(a1, v5, *v18, &_mh_execute_header, "%{public}s [super init] failed");
    *v19 = 136446210;
    *(v19 + 4) = "[NRDLocalDevice initWithNRUUID:]";
    sub_10015B480();
    _NRLogAbortWithPack();
    goto LABEL_11;
  }

  v7 = v6;
  objc_storeStrong(v6 + 3, a2);
  v8 = +[NSDate date];
  v9 = v7[21];
  v7[21] = v8;

  a1 = v7;
  v10 = a1;
LABEL_5:

  return v10;
}

void sub_10015D3F4(_BYTE *a1)
{
  if (a1)
  {
    if (a1[14])
    {
      if (qword_100229488 != -1)
      {
        dispatch_once(&qword_100229488, &stru_1001FD018);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100229488 != -1)
        {
          dispatch_once(&qword_100229488, &stru_1001FD018);
        }

        _NRLogWithArgs(qword_100229480, 2, "%s%.30s:%-4d %@ will stop observing changes", "", "[NRDLocalDevice stopObservingChanges]", 1823, a1);
      }

      v9 = 0u;
      v10 = 0u;
      v7 = 0u;
      v8 = 0u;
      objc_opt_class();
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10015E830;
      block[3] = &unk_1001FCDD8;
      block[4] = objc_opt_self();
      if (qword_100229468 != -1)
      {
        dispatch_once(&qword_100229468, block);
      }

      v2 = qword_100229460;
      v3 = [v2 countByEnumeratingWithState:&v7 objects:v12 count:16];
      if (v3)
      {
        v4 = v3;
        v5 = *v8;
        do
        {
          for (i = 0; i != v4; i = i + 1)
          {
            if (*v8 != v5)
            {
              objc_enumerationMutation(v2);
            }

            [a1 removeObserver:a1 forKeyPath:*(*(&v7 + 1) + 8 * i)];
          }

          v4 = [v2 countByEnumeratingWithState:&v7 objects:v12 count:16];
        }

        while (v4);
      }

      a1[14] = 0;
    }

    else
    {
      if (qword_100229488 != -1)
      {
        dispatch_once(&qword_100229488, &stru_1001FD018);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100229488 != -1)
        {
          dispatch_once(&qword_100229488, &stru_1001FD018);
        }

        _NRLogWithArgs(qword_100229480, 2, "%s%.30s:%-4d stopObservingChanges called with no observer registered: %@", "", "[NRDLocalDevice stopObservingChanges]", 1820, a1);
      }
    }
  }
}

void sub_10015D69C(_BYTE *a1)
{
  if (a1)
  {
    if (a1[14] == 1)
    {
      if (qword_100229488 != -1)
      {
        dispatch_once(&qword_100229488, &stru_1001FD018);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100229488 != -1)
        {
          dispatch_once(&qword_100229488, &stru_1001FD018);
        }

        _NRLogWithArgs(qword_100229480, 2, "%s%.30s:%-4d startObservingChanges called with an observer already registered: %@", "", "[NRDLocalDevice startObservingChanges]", 1801, a1);
      }
    }

    else
    {
      if (qword_100229488 != -1)
      {
        dispatch_once(&qword_100229488, &stru_1001FD018);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100229488 != -1)
        {
          dispatch_once(&qword_100229488, &stru_1001FD018);
        }

        _NRLogWithArgs(qword_100229480, 2, "%s%.30s:%-4d %@ will start observing changes", "", "[NRDLocalDevice startObservingChanges]", 1804, a1);
      }

      v9 = 0u;
      v10 = 0u;
      v7 = 0u;
      v8 = 0u;
      objc_opt_class();
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10015E830;
      block[3] = &unk_1001FCDD8;
      block[4] = objc_opt_self();
      if (qword_100229468 != -1)
      {
        dispatch_once(&qword_100229468, block);
      }

      v2 = qword_100229460;
      v3 = [v2 countByEnumeratingWithState:&v7 objects:v12 count:16];
      if (v3)
      {
        v4 = v3;
        v5 = *v8;
        do
        {
          for (i = 0; i != v4; i = i + 1)
          {
            if (*v8 != v5)
            {
              objc_enumerationMutation(v2);
            }

            [a1 addObserver:a1 forKeyPath:*(*(&v7 + 1) + 8 * i) options:3 context:0];
          }

          v4 = [v2 countByEnumeratingWithState:&v7 objects:v12 count:16];
        }

        while (v4);
      }

      a1[14] = 1;
    }
  }
}

void *sub_10015D958(void *a1, void *a2)
{
  v4 = a2;
  v5 = v4;
  if (!a1)
  {
    goto LABEL_37;
  }

  if (!v4)
  {
    v28 = sub_10015B480();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      goto LABEL_37;
    }

    v16 = sub_10015B480();
    _NRLogWithArgs(v16, 17, "%s called with null legacyKeys", "[NRDLDDataClassKeychainItems initWithLegacyKeys:]");
    goto LABEL_36;
  }

  v45.receiver = a1;
  v45.super_class = NRDLDDataClassKeychainItems;
  v6 = objc_msgSendSuper2(&v45, "init");
  if (v6)
  {
    a1 = v6;
    p_superclass = NRASMFlow.superclass;
    if (v5[1])
    {
      v7 = [NRDLDKeychainItemSecKey alloc];
      v8 = v5[1];
      v9 = sub_10015DF34(v7, v8);
      v10 = a1[1];
      a1[1] = v9;

      if (!a1[1])
      {
        goto LABEL_37;
      }
    }

    if (!v5[3])
    {
      goto LABEL_12;
    }

    v11 = [NRDLDKeychainItemSecKey alloc];
    v12 = v5[3];
    v13 = sub_10015E1F8(v11, v12);
    v14 = a1[2];
    a1[2] = v13;

    v15 = a1[2];
    if (!v15)
    {
      goto LABEL_37;
    }

    if (v5[2])
    {
      v16 = sub_10015E4BC(v15);
      if (v16)
      {
        if ([v5[2] isEqualToData:v16])
        {
LABEL_11:

          goto LABEL_12;
        }

        v39 = sub_10015B480();
        v40 = _NRLogIsLevelEnabled();

        if (v40)
        {
          v41 = sub_10015B480();
          _NRLogWithArgs(v41, 17, "Migrated public key != legacy public key!");
LABEL_35:
        }
      }

LABEL_36:

      goto LABEL_37;
    }
  }

  else
  {
    v30 = sub_10015B480();
    v31 = _NRLogIsLevelEnabled();

    if (v31)
    {
      v32 = sub_10015B480();
      _NRLogWithArgs(v32, 16, "%s%.30s:%-4d ABORTING: [super init] failed", "", "[NRDLDDataClassKeychainItems initWithLegacyKeys:]", 583);
    }

    v5 = _os_log_pack_size();
    a1 = (&v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    v33 = __error();
    v34 = _os_log_pack_fill(a1, v5, *v33, &_mh_execute_header, "%{public}s [super init] failed");
    *v34 = 136446210;
    *(v34 + 4) = "[NRDLDDataClassKeychainItems initWithLegacyKeys:]";
    sub_10015B480();
    _NRLogAbortWithPack();
  }

  v35 = sub_10015B480();
  v36 = _NRLogIsLevelEnabled();

  if (v36)
  {
    v16 = sub_10015B480();
    _NRLogWithArgs(v16, 17, "Legacy public key is missing when migrating private key!");
    goto LABEL_11;
  }

LABEL_12:
  if (v5[6])
  {
    v17 = objc_alloc((p_superclass + 414));
    v18 = v5[6];
    v19 = sub_10015E56C(v17, v18);
    v20 = a1[4];
    a1[4] = v19;

    v21 = a1[4];
    if (v21)
    {
      if (!v5[5])
      {
        v37 = sub_10015B480();
        v38 = _NRLogIsLevelEnabled();

        if (!v38)
        {
          goto LABEL_18;
        }

        v16 = sub_10015B480();
        _NRLogWithArgs(v16, 17, "Legacy DH public key is missing when migrating DH private key!");
        goto LABEL_17;
      }

      v16 = sub_10015E4BC(v21);
      if (!v16)
      {
        goto LABEL_36;
      }

      if ([v5[5] isEqualToData:v16])
      {
LABEL_17:

        goto LABEL_18;
      }

      v42 = sub_10015B480();
      v43 = _NRLogIsLevelEnabled();

      if (!v43)
      {
        goto LABEL_36;
      }

      v41 = sub_10015B480();
      _NRLogWithArgs(v41, 17, "Migrated DH public key != legacy DH public key!");
      goto LABEL_35;
    }

LABEL_37:
    v26 = 0;
    goto LABEL_21;
  }

LABEL_18:
  if (v5[4])
  {
    v22 = [NRDLDKeychainItemData alloc];
    v23 = v5[4];
    v24 = sub_10015DD58(v22, v23);
    v25 = a1[3];
    a1[3] = v24;

    if (!a1[3])
    {
      goto LABEL_37;
    }
  }

  a1 = a1;
  v26 = a1;
LABEL_21:

  return v26;
}

char *sub_10015DD58(char *a1, void *a2)
{
  v4 = a2;
  v5 = v4;
  if (!a1)
  {
    goto LABEL_11;
  }

  if (!v4)
  {
    v10 = sub_10015B480();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v12 = sub_10015B480();
      _NRLogWithArgs(v12, 17, "%s called with null secretData", "[NRDLDKeychainItemData initWithData:]");

      v8 = 0;
      goto LABEL_5;
    }

LABEL_11:
    v8 = 0;
    goto LABEL_5;
  }

  v19.receiver = a1;
  v19.super_class = NRDLDKeychainItemData;
  v6 = objc_msgSendSuper2(&v19, "init");
  if (!v6)
  {
    v13 = sub_10015B480();
    v14 = _NRLogIsLevelEnabled();

    if (v14)
    {
      v15 = sub_10015B480();
      _NRLogWithArgs(v15, 16, "%s%.30s:%-4d ABORTING: [super init] failed", "", "[NRDLDKeychainItemData initWithData:]", 158);
    }

    v5 = _os_log_pack_size();
    a1 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    v16 = __error();
    v17 = _os_log_pack_fill(a1, v5, *v16, &_mh_execute_header, "%{public}s [super init] failed");
    *v17 = 136446210;
    *(v17 + 4) = "[NRDLDKeychainItemData initWithData:]";
    sub_10015B480();
    _NRLogAbortWithPack();
    goto LABEL_11;
  }

  v7 = v6;
  objc_storeStrong(v6 + 2, a2);
  v7[8] = 1;
  a1 = v7;
  v8 = a1;
LABEL_5:

  return v8;
}

char *sub_10015DF34(char *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!a1)
  {
    goto LABEL_20;
  }

  if (!v3)
  {
    v12 = sub_10015B480();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v14 = sub_10015B480();
      _NRLogWithArgs(v14, 17, "%s called with null publicKeyData", "[NRDLDKeychainItemSecKey initWithPublicSigningKeyData:]");

      v10 = 0;
      goto LABEL_9;
    }

LABEL_20:
    v10 = 0;
    goto LABEL_9;
  }

  v24.receiver = a1;
  v24.super_class = NRDLDKeychainItemSecKey;
  v5 = objc_msgSendSuper2(&v24, "init");
  if (!v5)
  {
    v15 = sub_10015B480();
    v16 = _NRLogIsLevelEnabled();

    v6 = "[NRDLDKeychainItemSecKey initWithPublicSigningKeyData:]";
    if (v16)
    {
      v17 = sub_10015B480();
      _NRLogWithArgs(v17, 16, "%s%.30s:%-4d ABORTING: [super init] failed", "", "[NRDLDKeychainItemSecKey initWithPublicSigningKeyData:]", 394);
    }

    v4 = _os_log_pack_size();
    a1 = &error - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    v18 = __error();
    v19 = _os_log_pack_fill(a1, v4, *v18, &_mh_execute_header, "%{public}s [super init] failed");
    *v19 = 136446210;
    *(v19 + 4) = "[NRDLDKeychainItemSecKey initWithPublicSigningKeyData:]";
    sub_10015B480();
    _NRLogAbortWithPack();
    goto LABEL_15;
  }

  a1 = v5;
  v25[0] = kSecAttrKeyType;
  v25[1] = kSecAttrKeyClass;
  v26[0] = kSecAttrKeyTypeEd25519;
  v26[1] = kSecAttrKeyClassPublic;
  v6 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:2];
  error = 0;
  v7 = SecKeyCreateWithData(v4, v6, &error);
  if (!v7)
  {
LABEL_15:
    v20 = sub_10015B480();
    v21 = _NRLogIsLevelEnabled();

    if (v21)
    {
      v22 = sub_10015B480();
      _NRLogWithArgs(v22, 17, "Failed to ingest public signing key: %@", error);
    }

    if (error)
    {
      CFRelease(error);
    }

    v10 = 0;
    goto LABEL_8;
  }

  v9 = v7;
  if (error)
  {
    CFRelease(error);
    error = 0;
  }

  objc_setProperty_nonatomic(a1, v8, v9, 16);
  CFRelease(v9);
  a1[8] = 1;
  v10 = a1;
LABEL_8:

LABEL_9:
  return v10;
}

char *sub_10015E1F8(char *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!a1)
  {
    goto LABEL_20;
  }

  if (!v3)
  {
    v12 = sub_10015B480();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v14 = sub_10015B480();
      _NRLogWithArgs(v14, 17, "%s called with null privateKeyData", "[NRDLDKeychainItemSecKey initWithPrivateSigningKeyData:]");

      v10 = 0;
      goto LABEL_9;
    }

LABEL_20:
    v10 = 0;
    goto LABEL_9;
  }

  v24.receiver = a1;
  v24.super_class = NRDLDKeychainItemSecKey;
  v5 = objc_msgSendSuper2(&v24, "init");
  if (!v5)
  {
    v15 = sub_10015B480();
    v16 = _NRLogIsLevelEnabled();

    v6 = "[NRDLDKeychainItemSecKey initWithPrivateSigningKeyData:]";
    if (v16)
    {
      v17 = sub_10015B480();
      _NRLogWithArgs(v17, 16, "%s%.30s:%-4d ABORTING: [super init] failed", "", "[NRDLDKeychainItemSecKey initWithPrivateSigningKeyData:]", 334);
    }

    v4 = _os_log_pack_size();
    a1 = &error - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    v18 = __error();
    v19 = _os_log_pack_fill(a1, v4, *v18, &_mh_execute_header, "%{public}s [super init] failed");
    *v19 = 136446210;
    *(v19 + 4) = "[NRDLDKeychainItemSecKey initWithPrivateSigningKeyData:]";
    sub_10015B480();
    _NRLogAbortWithPack();
    goto LABEL_15;
  }

  a1 = v5;
  v25[0] = kSecAttrKeyType;
  v25[1] = kSecAttrKeyClass;
  v26[0] = kSecAttrKeyTypeEd25519;
  v26[1] = kSecAttrKeyClassPrivate;
  v6 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:2];
  error = 0;
  v7 = SecKeyCreateWithData(v4, v6, &error);
  if (!v7)
  {
LABEL_15:
    v20 = sub_10015B480();
    v21 = _NRLogIsLevelEnabled();

    if (v21)
    {
      v22 = sub_10015B480();
      _NRLogWithArgs(v22, 17, "Failed to ingest private signing key: %@", error);
    }

    if (error)
    {
      CFRelease(error);
    }

    v10 = 0;
    goto LABEL_8;
  }

  v9 = v7;
  if (error)
  {
    CFRelease(error);
    error = 0;
  }

  objc_setProperty_nonatomic(a1, v8, v9, 16);
  CFRelease(v9);
  a1[8] = 1;
  v10 = a1;
LABEL_8:

LABEL_9:
  return v10;
}

void *sub_10015E4BC(void *result)
{
  if (result)
  {
    v1 = SecKeyCopyPublicBytes();
    v2 = sub_10015B480();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v4 = sub_10015B480();
      _NRLogWithArgs(v4, 17, "Failed to copy public key octets: %d", v1);
    }

    return 0;
  }

  return result;
}

char *sub_10015E56C(char *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!a1)
  {
    goto LABEL_20;
  }

  if (!v3)
  {
    v12 = sub_10015B480();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v14 = sub_10015B480();
      _NRLogWithArgs(v14, 17, "%s called with null privateKeyData", "[NRDLDKeychainItemSecKey initWithPrivateDHKeyData:]");

      v10 = 0;
      goto LABEL_9;
    }

LABEL_20:
    v10 = 0;
    goto LABEL_9;
  }

  v24.receiver = a1;
  v24.super_class = NRDLDKeychainItemSecKey;
  v5 = objc_msgSendSuper2(&v24, "init");
  if (!v5)
  {
    v15 = sub_10015B480();
    v16 = _NRLogIsLevelEnabled();

    v6 = "[NRDLDKeychainItemSecKey initWithPrivateDHKeyData:]";
    if (v16)
    {
      v17 = sub_10015B480();
      _NRLogWithArgs(v17, 16, "%s%.30s:%-4d ABORTING: [super init] failed", "", "[NRDLDKeychainItemSecKey initWithPrivateDHKeyData:]", 364);
    }

    v4 = _os_log_pack_size();
    a1 = &error - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    v18 = __error();
    v19 = _os_log_pack_fill(a1, v4, *v18, &_mh_execute_header, "%{public}s [super init] failed");
    *v19 = 136446210;
    *(v19 + 4) = "[NRDLDKeychainItemSecKey initWithPrivateDHKeyData:]";
    sub_10015B480();
    _NRLogAbortWithPack();
    goto LABEL_15;
  }

  a1 = v5;
  v25[0] = kSecAttrKeyType;
  v25[1] = kSecAttrKeyClass;
  v26[0] = kSecAttrKeyTypeX25519;
  v26[1] = kSecAttrKeyClassPrivate;
  v6 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:2];
  error = 0;
  v7 = SecKeyCreateWithData(v4, v6, &error);
  if (!v7)
  {
LABEL_15:
    v20 = sub_10015B480();
    v21 = _NRLogIsLevelEnabled();

    if (v21)
    {
      v22 = sub_10015B480();
      _NRLogWithArgs(v22, 17, "Failed to ingest private DH key: %@", error);
    }

    if (error)
    {
      CFRelease(error);
    }

    v10 = 0;
    goto LABEL_8;
  }

  v9 = v7;
  if (error)
  {
    CFRelease(error);
    error = 0;
  }

  objc_setProperty_nonatomic(a1, v8, v9, 16);
  CFRelease(v9);
  a1[8] = 1;
  v10 = a1;
LABEL_8:

LABEL_9:
  return v10;
}

void sub_10015E830(uint64_t a1)
{
  outCount = 0;
  v1 = class_copyPropertyList(*(a1 + 32), &outCount);
  v2 = [NSMutableArray alloc];
  v3 = [v2 initWithCapacity:outCount];
  if (outCount)
  {
    for (i = 0; i < outCount; ++i)
    {
      v5 = [[NSString alloc] initWithCString:property_getName(v1[i]) encoding:4];
      if (([0 containsObject:v5] & 1) == 0)
      {
        [v3 addObject:v5];
      }
    }
  }

  else if (!v1)
  {
    goto LABEL_8;
  }

  free(v1);
LABEL_8:
  v6 = [[NSArray alloc] initWithArray:v3];
  v7 = qword_100229460;
  qword_100229460 = v6;

  v14 = v3;
  if (qword_100229488 != -1)
  {
    dispatch_once(&qword_100229488, &stru_1001FD018);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100229488 != -1)
    {
      dispatch_once(&qword_100229488, &stru_1001FD018);
    }

    _NRLogWithArgs(qword_100229480, 2, "%s%.30s:%-4d NRDLocalDevice observed properties:", "", "+[NRDLocalDevice observedProperties]_block_invoke", 1014);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = qword_100229460;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (j = 0; j != v10; j = j + 1)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v15 + 1) + 8 * j);
        if (qword_100229488 != -1)
        {
          dispatch_once(&qword_100229488, &stru_1001FD018);
        }

        if (_NRLogIsLevelEnabled())
        {
          if (qword_100229488 != -1)
          {
            dispatch_once(&qword_100229488, &stru_1001FD018);
          }

          _NRLogWithArgs(qword_100229480, 2, "%s%.30s:%-4d \t%@", "", "+[NRDLocalDevice observedProperties]_block_invoke", 1016, v13);
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v15 objects:v20 count:16];
    }

    while (v10);
  }
}

id *sub_10015F4A8(id *a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3;
  if (!a1)
  {
    goto LABEL_16;
  }

  if (!v7)
  {
    v14 = sub_10015B480();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v16 = sub_10015B480();
      _NRLogWithArgs(v16, 17, "%s called with null itemName", "[NRDLDKeychainItemData initFromKeychainWithName:nrUUID:dataProtectionClass:]");

      v12 = 0;
      goto LABEL_9;
    }

LABEL_16:
    v12 = 0;
    goto LABEL_9;
  }

  v23.receiver = a1;
  v23.super_class = NRDLDKeychainItemData;
  v9 = objc_msgSendSuper2(&v23, "init");
  if (!v9)
  {
    v17 = sub_10015B480();
    v18 = _NRLogIsLevelEnabled();

    v8 = "[NRDLDKeychainItemData initFromKeychainWithName:nrUUID:dataProtectionClass:]";
    if (v18)
    {
      v19 = sub_10015B480();
      _NRLogWithArgs(v19, 16, "%s%.30s:%-4d ABORTING: [super init] failed", "", "[NRDLDKeychainItemData initFromKeychainWithName:nrUUID:dataProtectionClass:]", 169);
    }

    v7 = _os_log_pack_size();
    a1 = (&v22 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0));
    v20 = __error();
    v21 = _os_log_pack_fill(a1, v7, *v20, &_mh_execute_header, "%{public}s [super init] failed");
    *v21 = 136446210;
    *(v21 + 4) = "[NRDLDKeychainItemData initFromKeychainWithName:nrUUID:dataProtectionClass:]";
    sub_10015B480();
    _NRLogAbortWithPack();
    goto LABEL_15;
  }

  a1 = v9;
  objc_opt_self();
  if (qword_1002294C8 != -1)
  {
LABEL_15:
    dispatch_once(&qword_1002294C8, &stru_1001FD250);
  }

  v10 = qword_1002294C0;
  v11 = sub_100183000(v10, v7, v8, a4, 0);

  if (v11)
  {
    objc_storeStrong(a1 + 2, v11);
    v12 = a1;
  }

  else
  {
    v12 = 0;
  }

LABEL_9:
  return v12;
}

uint64_t sub_10015F718(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3;
  if (a1)
  {
    if (v7)
    {
      if (*(a1 + 8) != 1)
      {
LABEL_8:
        a1 = 1;
        goto LABEL_12;
      }

      objc_opt_self();
      if (qword_1002294C8 != -1)
      {
        dispatch_once(&qword_1002294C8, &stru_1001FD250);
      }

      v9 = qword_1002294C0;
      v10 = sub_1001825C0(v9, *(a1 + 16), v7, v8, a4, 0, 0);

      if (v10)
      {
        *(a1 + 8) = 0;
        goto LABEL_8;
      }
    }

    else
    {
      v11 = sub_10015B480();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v13 = sub_10015B480();
        _NRLogWithArgs(v13, 17, "%s called with null itemName", "[NRDLDKeychainItemData saveToKeychainWithName:nrUUID:dataProtectionClass:]");
      }
    }

    a1 = 0;
  }

LABEL_12:

  return a1;
}

_BYTE *sub_10015F850(void *a1, void *a2)
{
  if (!a1)
  {
LABEL_8:
    v6 = 0;
    goto LABEL_4;
  }

  v15.receiver = a1;
  v15.super_class = NRDLDKeychainItemSecKey;
  v3 = objc_msgSendSuper2(&v15, "init");
  if (!v3)
  {
    v8 = sub_10015B480();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v10 = sub_10015B480();
      _NRLogWithArgs(v10, 16, "%s%.30s:%-4d ABORTING: [super init] failed", "", "[NRDLDKeychainItemSecKey initWithKeyRef:]", 325);
    }

    v11 = _os_log_pack_size();
    v12 = __error();
    v13 = _os_log_pack_fill(&v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v11, *v12, &_mh_execute_header, "%{public}s [super init] failed");
    *v13 = 136446210;
    *(v13 + 4) = "[NRDLDKeychainItemSecKey initWithKeyRef:]";
    sub_10015B480();
    _NRLogAbortWithPack();
    goto LABEL_8;
  }

  v5 = v3;
  objc_setProperty_nonatomic(v3, v4, a2, 16);
  v5[8] = 1;
  v6 = v5;
LABEL_4:

  return v6;
}

char *sub_10015F9C0(char *a1, void *a2, void *a3, uint64_t a4)
{
  v4 = a4;
  v7 = a2;
  v8 = a3;
  if (!a1)
  {
    goto LABEL_64;
  }

  if (!v7)
  {
    v26 = sub_10015B480();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v28 = sub_10015B480();
      _NRLogWithArgs(v28, 17, "%s called with null itemName", "[NRDLDKeychainItemSecKey initFromKeychainWithName:nrUUID:dataProtectionClass:]");

      v23 = 0;
      goto LABEL_57;
    }

LABEL_64:
    v23 = 0;
    goto LABEL_57;
  }

  v46.receiver = a1;
  v46.super_class = NRDLDKeychainItemSecKey;
  v9 = objc_msgSendSuper2(&v46, "init");
  if (v9)
  {
    a1 = v9;
    objc_opt_self();
    if (qword_1002294C8 == -1)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v29 = sub_10015B480();
    v30 = _NRLogIsLevelEnabled();

    if (v30)
    {
      v31 = sub_10015B480();
      _NRLogWithArgs(v31, 16, "%s%.30s:%-4d ABORTING: [super init] failed", "", "[NRDLDKeychainItemSecKey initFromKeychainWithName:nrUUID:dataProtectionClass:]", 426);
    }

    v32 = _os_log_pack_size();
    a1 = &v42 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
    v33 = __error();
    v34 = _os_log_pack_fill(a1, v32, *v33, &_mh_execute_header, "%{public}s [super init] failed");
    *v34 = 136446210;
    *(v34 + 4) = "[NRDLDKeychainItemSecKey initFromKeychainWithName:nrUUID:dataProtectionClass:]";
    sub_10015B480();
    _NRLogAbortWithPack();
  }

  dispatch_once(&qword_1002294C8, &stru_1001FD250);
LABEL_5:
  v10 = qword_1002294C0;
  v11 = v7;
  v12 = v8;
  if (v10)
  {
    dispatch_assert_queue_V2(v10[2]);
    v13 = &kSecAttrAccessibleAlwaysThisDeviceOnlyPrivate;
    if (v4 != 4)
    {
      v13 = &kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly;
    }

    v14 = *v13;
    String = NRDataProtectionClassCreateString();
    v43 = v11;
    v44 = v8;
    if (!v14)
    {
      v40 = sub_100180A2C();
      v41 = _NRLogIsLevelEnabled();

      if (!v41)
      {
        v23 = 0;
        goto LABEL_54;
      }

      v18 = sub_100180A2C();
      _NRLogWithArgs(v18, 17, "Cannot read key %@ from keychain for %@", v43, String);
      v23 = 0;
LABEL_53:

LABEL_54:
      v11 = v43;
      v8 = v44;

      goto LABEL_55;
    }

    v16 = [NSString alloc];
    if (v12)
    {
      v17 = [v16 initWithFormat:@"%@/%@/%@/%@", @"com.apple.terminusd", v12, String, v11];
    }

    else
    {
      v17 = [v16 initWithFormat:@"%@/%@", @"com.apple.terminusd", v11];
    }

    v18 = v17;
    v45 = v7;
    if (qword_1002294D8 != -1)
    {
      dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002294D8 != -1)
      {
        dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
      }

      _NRLogWithArgs(qword_1002294D0, 0, "%s%.30s:%-4d Reading %@ keychain key %@", "", "[NRDKeyManager readKeyfromKeychainWithName:nrUUID:dataProtectionClass:]", 550, String, v18);
    }

    v19 = [v18 dataUsingEncoding:4];
    v48[0] = kSecClass;
    v48[1] = kSecAttrApplicationTag;
    v49[0] = kSecClassKey;
    v49[1] = v19;
    v48[2] = kSecAttrAccessGroup;
    v48[3] = kSecReturnRef;
    v49[2] = @"com.apple.terminusd";
    v49[3] = &__kCFBooleanTrue;
    v20 = [NSDictionary dictionaryWithObjects:v49 forKeys:v48 count:4];
    result = 0;
    v21 = SecItemCopyMatching(v20, &result);
    if (v21 || !result)
    {
      if (result)
      {
        CFRelease(result);
        result = 0;
      }

      if (v21 == -25308)
      {
        if (qword_1002294D8 != -1)
        {
          dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
        }

        if (_NRLogIsLevelEnabled())
        {
          if (qword_1002294D8 != -1)
          {
            dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
          }

          _NRLogWithArgs(qword_1002294D0, 16, "%s%.30s:%-4d Failed to read %@ keychain key %@: keychain locked", "", "[NRDKeyManager readKeyfromKeychainWithName:nrUUID:dataProtectionClass:]", 569, String, v18);
        }
      }

      else if (v21 == -25300)
      {
        if (qword_1002294D8 != -1)
        {
          dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
        }

        if (_NRLogIsLevelEnabled())
        {
          if (qword_1002294D8 != -1)
          {
            dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
          }

          _NRLogWithArgs(qword_1002294D0, 16, "%s%.30s:%-4d Failed to read %@ keychain key %@: not found", "", "[NRDKeyManager readKeyfromKeychainWithName:nrUUID:dataProtectionClass:]", 567, String, v18);
        }
      }

      else
      {
        if (qword_1002294D8 != -1)
        {
          dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
        }

        if (_NRLogIsLevelEnabled())
        {
          if (qword_1002294D8 != -1)
          {
            dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
          }

          _NRLogWithArgs(qword_1002294D0, 17, "Failed to read %@ keychain key %@: %d", String, v18, v21);
        }
      }

      v23 = 0;
    }

    else
    {
      v22 = CFGetTypeID(result);
      if (v22 != SecKeyGetTypeID())
      {
        if (result)
        {
          CFRelease(result);
          result = 0;
        }

        v35 = sub_100180A2C();
        v36 = _NRLogIsLevelEnabled();

        v7 = v45;
        if (v36)
        {
          v37 = sub_100180A2C();
          v38 = CFGetTypeID(result);
          v39 = CFCopyTypeIDDescription(v38);
          _NRLogWithArgs(v37, 17, "Read %@ keychain key %@ with bad class %@", String, v18, v39);
        }

        v23 = 0;
        goto LABEL_52;
      }

      if (qword_1002294D8 != -1)
      {
        dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_1002294D8 != -1)
        {
          dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
        }

        _NRLogWithArgs(qword_1002294D0, 0, "%s%.30s:%-4d Successfully read %@ keychain key %@", "", "[NRDKeyManager readKeyfromKeychainWithName:nrUUID:dataProtectionClass:]", 585, String, v18);
      }

      v23 = result;
    }

    v7 = v45;
LABEL_52:

    goto LABEL_53;
  }

  v23 = 0;
LABEL_55:

  if (v23)
  {
    objc_setProperty_nonatomic(a1, v24, v23, 16);
    a1 = a1;
    v23 = a1;
  }

LABEL_57:

  return v23;
}

uint64_t sub_100160170(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v4 = a4;
  v7 = a2;
  v8 = a3;
  if (a1)
  {
    if (!v7)
    {
      v29 = sub_10015B480();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v31 = sub_10015B480();
        _NRLogWithArgs(v31, 17, "%s called with null itemName", "[NRDLDKeychainItemSecKey saveToKeychainWithName:nrUUID:dataProtectionClass:]");
      }

      goto LABEL_67;
    }

    if (*(a1 + 8) != 1)
    {
LABEL_64:
      a1 = 1;
      goto LABEL_68;
    }

    objc_opt_self();
    if (qword_1002294C8 != -1)
    {
      dispatch_once(&qword_1002294C8, &stru_1001FD250);
    }

    v9 = qword_1002294C0;
    v10 = *(a1 + 16);
    v11 = v7;
    v12 = v8;
    v13 = v12;
    if (!v9)
    {

      goto LABEL_67;
    }

    v41 = v9;
    dispatch_assert_queue_V2(v9[2]);
    v14 = &kSecAttrAccessibleAlwaysThisDeviceOnlyPrivate;
    if (v4 != 4)
    {
      v14 = &kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly;
    }

    v15 = *v14;
    String = NRDataProtectionClassCreateString();
    if (!v15)
    {
      v33 = sub_100180A2C();
      v34 = _NRLogIsLevelEnabled();

      if (v34)
      {
        v35 = sub_100180A2C();
        _NRLogWithArgs(v35, 17, "Cannot save key %@ to keychain for %@", v11, String);
      }

      goto LABEL_67;
    }

    v17 = [NSString alloc];
    if (v13)
    {
      v18 = [v17 initWithFormat:@"%@/%@/%@/%@", @"com.apple.terminusd", v13, String, v11];
    }

    else
    {
      v18 = [v17 initWithFormat:@"%@/%@", @"com.apple.terminusd", v11, v36, v37];
    }

    v19 = v18;
    if (qword_1002294D8 != -1)
    {
      dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002294D8 != -1)
      {
        dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
      }

      _NRLogWithArgs(qword_1002294D0, 0, "%s%.30s:%-4d Adding %@ keychain key %@", "", "[NRDKeyManager saveKey:toKeychainWithName:nrUUID:dataProtectionClass:]", 478, String, v19);
    }

    v42 = v19;
    v43 = String;
    [v19 dataUsingEncoding:4];
    v47[0] = kSecClass;
    v47[1] = kSecAttrApplicationTag;
    v49 = v48 = kSecClassKey;
    v44 = v49;
    v47[2] = kSecAttrAccessGroup;
    v50 = @"com.apple.terminusd";
    v40 = [NSDictionary dictionaryWithObjects:&v48 forKeys:v47 count:3];
    v20 = SecItemDelete(v40);
    if (v20 == -25308)
    {
      if (qword_1002294D8 != -1)
      {
        dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
      }

      v28 = v41;
      v27 = v19;
      v26 = String;
      if (_NRLogIsLevelEnabled())
      {
        if (qword_1002294D8 != -1)
        {
          dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
        }

        _NRLogWithArgs(qword_1002294D0, 16, "%s%.30s:%-4d Failed to delete existing %@ keychain key %@: keychain locked", "", "[NRDKeyManager saveKey:toKeychainWithName:nrUUID:dataProtectionClass:]", 496, String, v19);
      }
    }

    else
    {
      v21 = v20;
      if (v20 == -25300)
      {
LABEL_28:
        v45[0] = kSecClass;
        v45[1] = kSecAttrApplicationTag;
        v46[0] = kSecClassKey;
        v46[1] = v44;
        v45[2] = kSecAttrAccessGroup;
        v45[3] = kSecAttrAccessible;
        v46[2] = @"com.apple.terminusd";
        v46[3] = v15;
        v45[4] = kSecValueRef;
        v46[4] = v10;
        v22 = [NSDictionary dictionaryWithObjects:v46 forKeys:v45 count:5];
        v23 = SecItemAdd(v22, 0);
        v24 = v23 == 0;
        if (v23)
        {
          v25 = v23;
          v27 = v42;
          v26 = v43;
          if (v23 == -25308)
          {
            if (qword_1002294D8 != -1)
            {
              dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
            }

            if (_NRLogIsLevelEnabled())
            {
              if (qword_1002294D8 != -1)
              {
                dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
              }

              _NRLogWithArgs(qword_1002294D0, 16, "%s%.30s:%-4d Failed to add %@ keychain key %@: keychain locked", "", "[NRDKeyManager saveKey:toKeychainWithName:nrUUID:dataProtectionClass:]", 521, v43, v42);
            }
          }

          else
          {
            if (qword_1002294D8 != -1)
            {
              dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
            }

            if (_NRLogIsLevelEnabled())
            {
              if (qword_1002294D8 != -1)
              {
                dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
              }

              _NRLogWithArgs(qword_1002294D0, 17, "Failed to add %@ keychain key %@: %d", v43, v42, v25, v38, v39);
            }
          }
        }

        else
        {
          v27 = v42;
          v26 = v43;
          if (qword_1002294D8 != -1)
          {
            dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
          }

          if (_NRLogIsLevelEnabled())
          {
            if (qword_1002294D8 != -1)
            {
              dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
            }

            _NRLogWithArgs(qword_1002294D0, 0, "%s%.30s:%-4d Successfully added %@ keychain key %@", "", "[NRDKeyManager saveKey:toKeychainWithName:nrUUID:dataProtectionClass:]", 517, v43, v42);
          }
        }

        v28 = v41;
LABEL_62:

        if (v24)
        {
          *(a1 + 8) = 0;
          goto LABEL_64;
        }

LABEL_67:
        a1 = 0;
        goto LABEL_68;
      }

      if (!v20)
      {
        if (qword_1002294D8 != -1)
        {
          dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
        }

        if (_NRLogIsLevelEnabled())
        {
          if (qword_1002294D8 != -1)
          {
            dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
          }

          _NRLogWithArgs(qword_1002294D0, 0, "%s%.30s:%-4d Successfully deleted existing %@ keychain key %@", "", "[NRDKeyManager saveKey:toKeychainWithName:nrUUID:dataProtectionClass:]", 493, String, v42);
        }

        goto LABEL_28;
      }

      if (qword_1002294D8 != -1)
      {
        dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
      }

      v28 = v41;
      v27 = v42;
      v26 = String;
      if (_NRLogIsLevelEnabled())
      {
        if (qword_1002294D8 != -1)
        {
          dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
        }

        _NRLogWithArgs(qword_1002294D0, 17, "Failed to delete existing %@ keychain key %@: %d", String, v42, v21, v38, v39);
      }
    }

    v24 = 0;
    goto LABEL_62;
  }

LABEL_68:

  return a1;
}

char *sub_100160954(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!a1)
  {
    goto LABEL_19;
  }

  if (!v3)
  {
    v11 = sub_10015B480();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v13 = sub_10015B480();
      _NRLogWithArgs(v13, 17, "%s called with null publicKeyData");
LABEL_18:

      v9 = 0;
      goto LABEL_13;
    }

LABEL_19:
    v9 = 0;
    goto LABEL_13;
  }

  if (!*(a1 + 16))
  {
    v14 = sub_10015B480();
    v15 = _NRLogIsLevelEnabled();

    if (v15)
    {
      v13 = sub_10015B480();
      _NRLogWithArgs(v13, 17, "%s called with null self.secKeyRef");
      goto LABEL_18;
    }

    goto LABEL_19;
  }

  v23[0] = kSecAttrKeyType;
  v23[1] = kSecAttrKeyClass;
  v24[0] = kSecAttrKeyTypeX25519;
  v24[1] = kSecAttrKeyClassPublic;
  v5 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:2];
  error = 0;
  v6 = SecKeyCreateWithData(v4, v5, &error);
  if (v6)
  {
    v7 = v6;
    if (error)
    {
      CFRelease(error);
      error = 0;
    }

    v8 = SecKeyCopyKeyExchangeResult(*(a1 + 16), kSecKeyAlgorithmECDHKeyExchangeStandard, v7, &__NSDictionary0__struct, &error);
    CFRelease(v7);
    if (v8)
    {
      if (error)
      {
        CFRelease(error);
        error = 0;
      }

      v9 = sub_10015DD58([NRDLDKeychainItemData alloc], v8);
    }

    else
    {
      v19 = sub_10015B480();
      v20 = _NRLogIsLevelEnabled();

      if (v20)
      {
        v21 = sub_10015B480();
        _NRLogWithArgs(v21, 17, "Failed to compute shared secret: %@", error);
      }

      if (error)
      {
        CFRelease(error);
        v9 = 0;
        error = 0;
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v16 = sub_10015B480();
    v17 = _NRLogIsLevelEnabled();

    if (v17)
    {
      v18 = sub_10015B480();
      _NRLogWithArgs(v18, 17, "Failed to ingest public DH key: %@", error);
    }

    if (error)
    {
      CFRelease(error);
    }

    v9 = 0;
  }

LABEL_13:
  return v9;
}

void *sub_100160C18(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (!a1)
  {
    goto LABEL_8;
  }

  if (!v5)
  {
    v22 = sub_10015B480();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v24 = sub_10015B480();
      _NRLogWithArgs(v24, 17, "%s called with null nrUUID", "[NRDLDDataClassKeychainItems initFromKeychainWithNRUUID:dataProtectionClass:]");
    }

    goto LABEL_8;
  }

  v33.receiver = a1;
  v33.super_class = NRDLDDataClassKeychainItems;
  v7 = objc_msgSendSuper2(&v33, "init");
  if (!v7)
  {
    v26 = sub_10015B480();
    v27 = _NRLogIsLevelEnabled();

    if (v27)
    {
      v28 = sub_10015B480();
      _NRLogWithArgs(v28, 16, "%s%.30s:%-4d ABORTING: [super init] failed", "", "[NRDLDDataClassKeychainItems initFromKeychainWithNRUUID:dataProtectionClass:]", 553);
    }

    v29 = _os_log_pack_size();
    v30 = __error();
    v31 = _os_log_pack_fill(&v32 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0), v29, *v30, &_mh_execute_header, "%{public}s [super init] failed");
    *v31 = 136446210;
    *(v31 + 4) = "[NRDLDDataClassKeychainItems initFromKeychainWithNRUUID:dataProtectionClass:]";
    sub_10015B480();
    _NRLogAbortWithPack();
  }

  a1 = v7;
  v8 = sub_10015F9C0([NRDLDKeychainItemSecKey alloc], @"RemotePublicKey", v6, a3);
  v9 = a1[1];
  a1[1] = v8;

  v10 = a1[1];
  v11 = sub_10015F9C0([NRDLDKeychainItemSecKey alloc], @"LocalPrivateKey", v6, a3);
  v12 = a1[2];
  a1[2] = v11;

  v13 = a1[2];
  v14 = sub_10015F9C0([NRDLDKeychainItemSecKey alloc], @"DHPrivateKey", v6, a3);
  v15 = a1[4];
  a1[4] = v14;

  v16 = a1[4];
  v17 = sub_10015F4A8([NRDLDKeychainItemData alloc], @"SharedSecret", v6, a3);
  v18 = a1[3];
  a1[3] = v17;

  v19.i64[0] = a1[3];
  v19.i64[1] = v16;
  v20.i64[0] = v10;
  v20.i64[1] = v13;
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(v20), vceqzq_s64(v19))))) & 1) == 0)
  {
LABEL_8:
    v21 = 0;
    goto LABEL_9;
  }

  a1 = a1;
  v21 = a1;
LABEL_9:

  return v21;
}

void *sub_100160EC0(void *a1, char *a2)
{
  if (!a1)
  {
    return 0;
  }

  v2 = a2;
  v44.receiver = a1;
  v44.super_class = NRDLDDataClassKeychainItems;
  v3 = objc_msgSendSuper2(&v44, "init");
  if (!v3)
  {
    v22 = sub_10015B480();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v24 = sub_10015B480();
      _NRLogWithArgs(v24, 16, "%s%.30s:%-4d ABORTING: [super init] failed", "", "[NRDLDDataClassKeychainItems initWithNewKeysForDataProtectionClass:]", 648);
    }

    v4 = _os_log_pack_size();
    v25 = &v42 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
    v26 = __error();
    v27 = _os_log_pack_fill(v25, v4, *v26, &_mh_execute_header, "%{public}s [super init] failed");
    *v27 = 136446210;
    *(v27 + 4) = "[NRDLDDataClassKeychainItems initWithNewKeysForDataProtectionClass:]";
    sub_10015B480();
    _NRLogAbortWithPack();
LABEL_27:
    v28 = sub_10015B480();
    v29 = _NRLogIsLevelEnabled();

    if (v29)
    {
      v30 = sub_10015B480();
      String = NRDataProtectionClassCreateString();
      _NRLogWithArgs(v30, 17, "Cannot generate keys for %@", String);

      v20 = 0;
      goto LABEL_22;
    }

LABEL_33:
    v20 = 0;
    goto LABEL_22;
  }

  v4 = v3;
  v5 = &kSecAttrAccessibleAlwaysThisDeviceOnlyPrivate;
  error = 0;
  if (v2 != 4)
  {
    v5 = &kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly;
  }

  if (!*v5)
  {
    goto LABEL_27;
  }

  v6 = SecAccessControlCreateWithFlags(kCFAllocatorDefault, *v5, 0x40000000uLL, &error);
  if (!v6)
  {
    v32 = sub_10015B480();
    v33 = _NRLogIsLevelEnabled();

    if (v33)
    {
      v34 = sub_10015B480();
      _NRLogWithArgs(v34, 17, "Failed to generate key access control: %@", error);
    }

    if (error)
    {
      CFRelease(error);
    }

    goto LABEL_33;
  }

  v7 = v6;
  if (error)
  {
    CFRelease(error);
    error = 0;
  }

  v51[0] = kSecAttrKeyType;
  v51[1] = kSecPrivateKeyAttrs;
  v52[0] = kSecAttrKeyTypeEd25519;
  v49[0] = kSecAttrIsPermanent;
  v49[1] = kSecAttrAccessControl;
  v50[0] = &__kCFBooleanFalse;
  v50[1] = v7;
  v8 = [NSDictionary dictionaryWithObjects:v50 forKeys:v49 count:2];
  v52[1] = v8;
  v9 = [NSDictionary dictionaryWithObjects:v52 forKeys:v51 count:2];

  v47[1] = kSecPrivateKeyAttrs;
  v48[0] = kSecAttrKeyTypeX25519;
  v46[1] = v7;
  v47[0] = kSecAttrKeyType;
  v45[0] = kSecAttrIsPermanent;
  v45[1] = kSecAttrAccessControl;
  v46[0] = &__kCFBooleanFalse;
  v10 = [NSDictionary dictionaryWithObjects:v46 forKeys:v45 count:2];
  v48[1] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v48 forKeys:v47 count:2];

  CFRelease(v7);
  if (!v4[2])
  {
    v12 = SecKeyCreateRandomKey(v9, &error);
    if (!v12)
    {
      v35 = sub_10015B480();
      v36 = _NRLogIsLevelEnabled();

      if (v36)
      {
        v37 = sub_10015B480();
        _NRLogWithArgs(v37, 17, "Failed to generate private key: %@", error);
      }

      v38 = error;
      if (!error)
      {
        goto LABEL_41;
      }

      goto LABEL_37;
    }

    v13 = v12;
    if (error)
    {
      CFRelease(error);
      error = 0;
    }

    v14 = sub_10015F850([NRDLDKeychainItemSecKey alloc], v13);
    v15 = v4[2];
    v4[2] = v14;

    CFRelease(v13);
    if (v4[4])
    {
      goto LABEL_20;
    }

LABEL_16:
    v16 = SecKeyCreateRandomKey(v11, &error);
    if (v16)
    {
      v17 = v16;
      if (error)
      {
        CFRelease(error);
        error = 0;
      }

      v18 = sub_10015F850([NRDLDKeychainItemSecKey alloc], v17);
      v19 = v4[4];
      v4[4] = v18;

      CFRelease(v17);
      goto LABEL_20;
    }

    v39 = sub_10015B480();
    v40 = _NRLogIsLevelEnabled();

    if (v40)
    {
      v41 = sub_10015B480();
      _NRLogWithArgs(v41, 17, "Failed to generate private key: %@", error);
    }

    v38 = error;
    if (!error)
    {
LABEL_41:
      v20 = 0;
      goto LABEL_21;
    }

LABEL_37:
    CFRelease(v38);
    v20 = 0;
    error = 0;
    goto LABEL_21;
  }

  if (!v4[4])
  {
    goto LABEL_16;
  }

LABEL_20:
  v20 = v4;
LABEL_21:

LABEL_22:
  return v20;
}

uint64_t sub_1001613B4(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (!a1)
  {
LABEL_16:
    v12 = 0;
    goto LABEL_11;
  }

  if (!v5)
  {
    v14 = sub_10015B480();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v16 = sub_10015B480();
      _NRLogWithArgs(v16, 17, "%s called with null nrUUID", "[NRDLDDataClassKeychainItems saveToKeychainWithNRUUID:dataProtectionClass:]");
    }

    goto LABEL_16;
  }

  v7 = a1[1];
  if (!v7)
  {
    v8 = 0;
    v9 = a1[2];
    if (!v9)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v8 = sub_100160170(v7, @"RemotePublicKey", v6, a3) ^ 1;
  v9 = a1[2];
  if (v9)
  {
LABEL_5:
    v8 |= sub_100160170(v9, @"LocalPrivateKey", v6, a3) ^ 1;
  }

LABEL_6:
  v10 = a1[4];
  if (v10)
  {
    v8 |= sub_100160170(v10, @"DHPrivateKey", v6, a3) ^ 1;
  }

  v11 = a1[3];
  if (v11)
  {
    v8 |= sub_10015F718(v11, @"SharedSecret", v6, a3) ^ 1;
  }

  v12 = v8 ^ 1u;
LABEL_11:

  return v12;
}

void sub_1001614EC(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a1)
  {
    v24 = v5;
    if (v5)
    {
      v6 = a1[1];
      if (v6)
      {
        v7 = v6;
        v8 = v24;
        objc_opt_self();
        if (qword_1002294C8 != -1)
        {
          dispatch_once(&qword_1002294C8, &stru_1001FD250);
        }

        v9 = qword_1002294C0;
        sub_1001820C0(v9, @"RemotePublicKey", v8, a3);

        v5 = v24;
      }

      v10 = a1[2];
      if (v10)
      {
        v11 = v10;
        v12 = v24;
        objc_opt_self();
        if (qword_1002294C8 != -1)
        {
          dispatch_once(&qword_1002294C8, &stru_1001FD250);
        }

        v13 = qword_1002294C0;
        sub_1001820C0(v13, @"LocalPrivateKey", v12, a3);

        v5 = v24;
      }

      v14 = a1[4];
      if (v14)
      {
        v15 = v14;
        v16 = v24;
        objc_opt_self();
        if (qword_1002294C8 != -1)
        {
          dispatch_once(&qword_1002294C8, &stru_1001FD250);
        }

        v17 = qword_1002294C0;
        sub_1001820C0(v17, @"DHPrivateKey", v16, a3);

        v5 = v24;
      }

      v18 = a1[3];
      if (v18)
      {
        v19 = v18;
        v20 = v24;
        objc_opt_self();
        if (qword_1002294C8 != -1)
        {
          dispatch_once(&qword_1002294C8, &stru_1001FD250);
        }

        v21 = qword_1002294C0;
        sub_100183644(v21, @"SharedSecret", v20, a3, 0, 0);

        v19[8] = 1;
        goto LABEL_19;
      }
    }

    else
    {
      v22 = sub_10015B480();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      v5 = 0;
      if (IsLevelEnabled)
      {
        v19 = sub_10015B480();
        _NRLogWithArgs(v19, 17, "%s called with null nrUUID", "[NRDLDDataClassKeychainItems deleteFromKeychainWithNRUUID:dataProtectionClass:]");
LABEL_19:

        v5 = v24;
      }
    }
  }
}

void *sub_1001617A4(void *a1, void *a2)
{
  v3 = a2;
  if (!a1)
  {
LABEL_11:
    v9 = 0;
    goto LABEL_5;
  }

  v20.receiver = a1;
  v20.super_class = NRDDeviceIdentity;
  v4 = objc_msgSendSuper2(&v20, "init");
  if (!v4)
  {
    v11 = sub_10015B480();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v13 = sub_10015B480();
      _NRLogWithArgs(v13, 16, "%s%.30s:%-4d ABORTING: [super init] failed", "", "[NRDDeviceIdentity initWithDeviceIdentityPayload:]", 808);
    }

    v3 = _os_log_pack_size();
    a1 = (&v19 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0));
    v14 = __error();
    v15 = _os_log_pack_fill(a1, v3, *v14, &_mh_execute_header, "%{public}s [super init] failed");
    *v15 = 136446210;
    *(v15 + 4) = "[NRDDeviceIdentity initWithDeviceIdentityPayload:]";
    sub_10015B480();
    _NRLogAbortWithPack();
    goto LABEL_9;
  }

  a1 = v4;
  if ([v3 length] != 48)
  {
LABEL_9:
    v16 = sub_10015B480();
    v17 = _NRLogIsLevelEnabled();

    if (v17)
    {
      v18 = sub_10015B480();
      _NRLogWithArgs(v18, 17, "%s called with null payload.length == sizeof(uuid_t) + sizeof(ccec25519pubkey)", "[NRDDeviceIdentity initWithDeviceIdentityPayload:]");
    }

    goto LABEL_11;
  }

  v21[0] = 0;
  v21[1] = 0;
  [v3 getBytes:v21 range:{0, 16}];
  v5 = [[NSUUID alloc] initWithUUIDBytes:v21];
  v6 = a1[1];
  a1[1] = v5;

  v7 = [v3 subdataWithRange:{16, 32}];
  v8 = a1[2];
  a1[2] = v7;

  a1 = a1;
  v9 = a1;
LABEL_5:

  return v9;
}

void sub_1001619D8(uint64_t a1)
{
  v1 = objc_opt_self();
  v2 = sub_100003490();
  dispatch_assert_queue_V2(v2);

  if (qword_100229428)
  {
    return;
  }

  objc_opt_self();
  if (qword_1002294C8 != -1)
  {
    dispatch_once(&qword_1002294C8, &stru_1001FD250);
  }

  v3 = qword_1002294C0;
  v4 = objc_opt_class();
  v5 = sub_100183C7C(v3, v4, @"LocalDeviceConfigClassD", 4);
  v6 = qword_100229428;
  qword_100229428 = v5;

  if (!qword_100229428)
  {
    v7 = objc_alloc_init(NSMutableDictionary);
    v8 = qword_100229428;
    qword_100229428 = v7;
  }

  if (qword_100229488 != -1)
  {
    dispatch_once(&qword_100229488, &stru_1001FD018);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100229488 != -1)
    {
      dispatch_once(&qword_100229488, &stru_1001FD018);
    }

    v9 = qword_100229428;
    v10 = qword_100229480;
    _NRLogWithArgs(v10, 0, "%s%.30s:%-4d Loaded %llu ClassD local device configs from keychain", "", "+[NRDLocalDevice initializeLocalDeviceDatabaseIfNecessary]", 1037, [v9 count]);
  }

  if (qword_100229428)
  {
    v57[1] = v1;
    v11 = objc_alloc_init(NSMutableDictionary);
    v12 = qword_100229430;
    qword_100229430 = v11;

    if (qword_100229430)
    {
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v13 = qword_100229428;
      v14 = [v13 countByEnumeratingWithState:&v62 objects:v71 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v63;
        do
        {
          for (i = 0; i != v15; i = i + 1)
          {
            if (*v63 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v62 + 1) + 8 * i);
            v19 = [qword_100229428 objectForKeyedSubscript:v18];
            v20 = v19;
            if (v19)
            {
              v21 = *(v19 + 56);
            }

            else
            {
              v21 = 0;
            }

            v22 = v21;

            if (v22)
            {
              [qword_100229430 setObject:v18 forKeyedSubscript:v22];
            }
          }

          v15 = [v13 countByEnumeratingWithState:&v62 objects:v71 count:16];
        }

        while (v15);
      }

      objc_opt_self();
      v66 = 0u;
      v67 = 0u;
      v68 = 0u;
      v69 = 0u;
      v23 = qword_100229428;
      v24 = [v23 countByEnumeratingWithState:&v66 objects:v72 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v67;
        do
        {
          for (j = 0; j != v25; j = j + 1)
          {
            if (*v67 != v26)
            {
              objc_enumerationMutation(v23);
            }

            v28 = *(*(&v66 + 1) + 8 * j);
            v29 = [qword_100229428 objectForKeyedSubscript:v28];
            v30 = v29;
            if (v29 && (*(v29 + 48) & 3) != 0 && !*(v29 + 72))
            {
              v31 = sub_100160C18([NRDLDDataClassKeychainItems alloc], v28, 4);
              v32 = v30[9];
              v30[9] = v31;
            }
          }

          v25 = [v23 countByEnumeratingWithState:&v66 objects:v72 count:16];
        }

        while (v25);
      }

      v33 = objc_opt_self();
      objc_opt_self();
      if (qword_1002294C8 == -1)
      {
        goto LABEL_38;
      }

      goto LABEL_61;
    }

    v51 = sub_10015B480();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v53 = sub_10015B480();
      _NRLogWithArgs(v53, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (nrdLocalDevicesByIdentity) != ((void*)0)", "", "+[NRDLocalDevice initializeLocalDeviceDatabaseIfNecessary]", 1041);
    }

    v54 = _os_log_pack_size();
    v33 = v57 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
    v55 = __error();
    v56 = _os_log_pack_fill(v33, v54, *v55, &_mh_execute_header, "%{public}s Assertion Failed: (nrdLocalDevicesByIdentity) != ((void*)0)");
    *v56 = 136446210;
    *(v56 + 4) = "+[NRDLocalDevice initializeLocalDeviceDatabaseIfNecessary]";
  }

  else
  {
    v45 = sub_10015B480();
    v46 = _NRLogIsLevelEnabled();

    if (v46)
    {
      v47 = sub_10015B480();
      _NRLogWithArgs(v47, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (nrdLocalDevices) != ((void*)0)", "", "+[NRDLocalDevice initializeLocalDeviceDatabaseIfNecessary]", 1038);
    }

    v48 = _os_log_pack_size();
    v33 = v57 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
    v49 = __error();
    v50 = _os_log_pack_fill(v33, v48, *v49, &_mh_execute_header, "%{public}s Assertion Failed: (nrdLocalDevices) != ((void*)0)");
    *v50 = 136446210;
    *(v50 + 4) = "+[NRDLocalDevice initializeLocalDeviceDatabaseIfNecessary]";
  }

  sub_10015B480();
  _NRLogAbortWithPack();
LABEL_61:
  dispatch_once(&qword_1002294C8, &stru_1001FD250);
LABEL_38:
  v34 = qword_1002294C0;
  v72[0] = _NSConcreteStackBlock;
  v72[1] = 3221225472;
  v72[2] = sub_100162100;
  v72[3] = &unk_1001FCDD8;
  v72[4] = v33;
  sub_100181928(v34, v72);

  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v35 = qword_100229428;
  v36 = [v35 countByEnumeratingWithState:&v58 objects:v70 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v59;
    do
    {
      for (k = 0; k != v37; k = k + 1)
      {
        if (*v59 != v38)
        {
          objc_enumerationMutation(v35);
        }

        v40 = [qword_100229428 objectForKeyedSubscript:*(*(&v58 + 1) + 8 * k)];
        objc_opt_self();
        if (v40)
        {
          v41 = v40[18];
        }

        else
        {
          v41 = 0;
        }

        v42 = [v41 usesTLS];
        if (v40)
        {
          v43 = v40[3];
        }

        else
        {
          v43 = 0;
        }

        sub_1001627AC(NRDLocalDevice, v42, v43);
      }

      v37 = [v35 countByEnumeratingWithState:&v58 objects:v70 count:16];
    }

    while (v37);
  }

  v44 = objc_opt_self();
  sub_1001629FC(v44, 0);
}

void sub_100162100(uint64_t a1)
{
  objc_opt_self();
  if (qword_1002294C8 != -1)
  {
    dispatch_once(&qword_1002294C8, &stru_1001FD250);
  }

  v2 = qword_1002294C0;
  v3 = objc_opt_class();
  v4 = sub_100183C7C(v2, v3, @"LocalDeviceKeysClassC", 3);

  if (v4)
  {
    if (qword_100229488 != -1)
    {
      dispatch_once(&qword_100229488, &stru_1001FD018);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100229488 != -1)
      {
        dispatch_once(&qword_100229488, &stru_1001FD018);
      }

      v5 = qword_100229480;
      _NRLogWithArgs(v5, 0, "%s%.30s:%-4d Loaded %llu legacy ClassC keys from keychain", "", "+[NRDLocalDevice loadClassCKeys]_block_invoke", 1110, [v4 count]);
    }

    v35 = a1;
    v36 = v4;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v41 objects:v50 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v42;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v42 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v41 + 1) + 8 * i);
          v12 = [qword_100229428 objectForKeyedSubscript:v11];
          v13 = v12;
          if (v12 && (*(v12 + 48) & 3) != 0)
          {
            v14 = [NRDLDDataClassKeychainItems alloc];
            v15 = [v6 objectForKeyedSubscript:v11];
            v16 = sub_10015D958(v14, v15);
            v17 = v13[10];
            v13[10] = v16;

            if (qword_100229488 != -1)
            {
              dispatch_once(&qword_100229488, &stru_1001FD018);
            }

            if (_NRLogIsLevelEnabled())
            {
              if (qword_100229488 != -1)
              {
                dispatch_once(&qword_100229488, &stru_1001FD018);
              }

              _NRLogWithArgs(qword_100229480, 0, "%s%.30s:%-4d Migrated legacy ClassC keys for %@", "", "+[NRDLocalDevice loadClassCKeys]_block_invoke", 1120, v13);
            }
          }

          else
          {
            if (qword_100229488 != -1)
            {
              dispatch_once(&qword_100229488, &stru_1001FD018);
            }

            if (_NRLogIsLevelEnabled())
            {
              if (qword_100229488 != -1)
              {
                dispatch_once(&qword_100229488, &stru_1001FD018);
              }

              _NRLogWithArgs(qword_100229480, 0, "%s%.30s:%-4d Skipping migrating legacy ClassC keys for %@", "", "+[NRDLocalDevice loadClassCKeys]_block_invoke", 1115, v11);
            }
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v41 objects:v50 count:16];
      }

      while (v8);
    }

    v4 = v36;
    if (sub_1001637E0(*(v35 + 32)))
    {
      objc_opt_self();
      if (qword_1002294C8 != -1)
      {
        dispatch_once(&qword_1002294C8, &stru_1001FD250);
      }

      v18 = qword_1002294C0;
      v19 = sub_100183644(v18, @"LocalDeviceKeysClassC", 0, 3, 0, 0);

      if ((v19 & 1) == 0)
      {
        if (qword_100229488 != -1)
        {
          dispatch_once(&qword_100229488, &stru_1001FD018);
        }

        if (_NRLogIsLevelEnabled())
        {
          if (qword_100229488 != -1)
          {
            dispatch_once(&qword_100229488, &stru_1001FD018);
          }

          _NRLogWithArgs(qword_100229480, 16, "%s%.30s:%-4d Failed to delete legacy ClassC keys from the keychain", "", "+[NRDLocalDevice loadClassCKeys]_block_invoke", 1130);
        }
      }
    }
  }

  v20 = objc_opt_self();
  objc_opt_self();
  if (qword_1002294C8 != -1)
  {
    dispatch_once(&qword_1002294C8, &stru_1001FD250);
  }

  v21 = qword_1002294C0;
  v45[0] = _NSConcreteStackBlock;
  v45[1] = 3221225472;
  v46 = sub_100163D80;
  v47 = &unk_1001FCDD8;
  v48 = v20;
  v22 = v45;
  if (v21)
  {
    dispatch_assert_queue_V2(v21[2]);
    if (MKBGetDeviceLockState())
    {
      sub_100181B44(v21, v22);
    }

    else
    {
      v46(v22);
    }
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v23 = qword_100229428;
  v24 = [v23 countByEnumeratingWithState:&v37 objects:v49 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v38;
    do
    {
      for (j = 0; j != v25; j = j + 1)
      {
        if (*v38 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v37 + 1) + 8 * j);
        v29 = [qword_100229428 objectForKeyedSubscript:v28];
        v30 = v29;
        if (v29 && (*(v29 + 48) & 3) != 0)
        {
          if (!*(v29 + 80))
          {
            v31 = sub_100160C18([NRDLDDataClassKeychainItems alloc], v28, 3);
            v32 = *(v30 + 80);
            *(v30 + 80) = v31;
          }

          v33 = *(v30 + 176);
          if (v33)
          {
            goto LABEL_51;
          }

          if ((*(v30 + 48) & 0x10) == 0)
          {
            v34 = sub_10015F4A8([NRDLDKeychainItemData alloc], @"OOBK", v28, 3);
            v33 = *(v30 + 176);
            *(v30 + 176) = v34;
LABEL_51:
          }
        }
      }

      v25 = [v23 countByEnumeratingWithState:&v37 objects:v49 count:16];
    }

    while (v25);
  }
}

void sub_1001627AC(uint64_t a1, uint64_t a2, void *a3)
{
  v20 = a3;
  v4 = objc_opt_self();
  v5 = sub_100003490();
  dispatch_assert_queue_V2(v5);

  if (v20)
  {
    v6 = sub_100163A30(v4, v20);
    if (v6)
    {
      if (v6[19] == a2)
      {
LABEL_4:

        goto LABEL_5;
      }
    }

    else
    {
      v11 = sub_10015B480();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v13 = sub_10015B480();
        _NRLogWithArgs(v13, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (localDevice) != ((void*)0)", "", "+[NRDLocalDevice updateLocalDeviceFlagsInner:nrUUID:saveToDisk:]", 4107);
      }

      a2 = _os_log_pack_size();
      v14 = __error();
      v15 = _os_log_pack_fill(&v20 - ((a2 + 15) & 0xFFFFFFFFFFFFFFF0), a2, *v14, &_mh_execute_header, "%{public}s Assertion Failed: (localDevice) != ((void*)0)");
      *v15 = 136446210;
      *(v15 + 4) = "+[NRDLocalDevice updateLocalDeviceFlagsInner:nrUUID:saveToDisk:]";
      sub_10015B480();
      v6 = _NRLogAbortWithPack();
    }

    v16 = v6;
    v17 = _NRCopyLogObjectForNRUUID();
    v18 = _NRLogIsLevelEnabled();

    if (v18)
    {
      v19 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs(v19, 0, "%s%.30s:%-4d %@ Updating local flags from %#llx to %#llx", "", "+[NRDLocalDevice updateLocalDeviceFlagsInner:nrUUID:saveToDisk:]", 4111, v16, v16[19], a2);
    }

    [v16 setLocalFlags:{a2, v20}];
    v6 = v16;
    goto LABEL_4;
  }

  v8 = sub_10015B480();
  v9 = _NRLogIsLevelEnabled();

  if (v9)
  {
    v10 = sub_10015B480();
    _NRLogWithArgs(v10, 17, "%s called with null nrUUID", "+[NRDLocalDevice updateLocalDeviceFlagsInner:nrUUID:saveToDisk:]");
    v6 = v10;
    goto LABEL_4;
  }

LABEL_5:
  v7 = v20;
}

uint64_t sub_1001629FC(uint64_t a1, int a2)
{
  v89 = objc_opt_self();
  v2 = sub_100003490();
  dispatch_assert_queue_V2(v2);

  v108 = 0u;
  v109 = 0u;
  v106 = 0u;
  v107 = 0u;
  v3 = qword_100229428;
  v4 = [v3 countByEnumeratingWithState:&v106 objects:v118 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v107;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v107 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v106 + 1) + 8 * i);
        v11 = [qword_100229428 objectForKeyedSubscript:v10];
        if (v11)
        {
          v12 = v11[8];

          if (v12 == 1)
          {
            if (!v6)
            {
              v6 = objc_alloc_init(NSMutableDictionary);
            }

            v9 = [qword_100229428 objectForKeyedSubscript:v10];
            [v6 setObject:v9 forKeyedSubscript:v10];
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v106 objects:v118 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  if ([v6 count])
  {
    v104 = 0u;
    v105 = 0u;
    v102 = 0u;
    v103 = 0u;
    v13 = v6;
    v14 = [v13 countByEnumeratingWithState:&v102 objects:v117 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v103;
      do
      {
        for (j = 0; j != v15; j = j + 1)
        {
          if (*v103 != v16)
          {
            objc_enumerationMutation(v13);
          }

          [qword_100229428 setObject:0 forKeyedSubscript:*(*(&v102 + 1) + 8 * j)];
        }

        v15 = [v13 countByEnumeratingWithState:&v102 objects:v117 count:16];
      }

      while (v15);
    }
  }

  objc_opt_self();
  if (qword_1002294C8 != -1)
  {
    dispatch_once(&qword_1002294C8, &stru_1001FD250);
  }

  v18 = qword_1002294C0;
  if (!v18)
  {
    goto LABEL_32;
  }

  v19 = v18;
  dispatch_assert_queue_V2(*(v18 + 2));
  if ((v19[10] & 1) == 0)
  {
    v19[10] = 1;
    if (v19[8] == 4)
    {
      sub_100181020(v19);
      if (v19[9] == 1)
      {
        v19[8] = 3;
        sub_100181284(v19);
      }
    }
  }

  v20 = v19[8] & 0xFD;

  if (v20 == 1 && (sub_1001637E0(v89) & 1) == 0)
  {
    v21 = 0;
  }

  else
  {
LABEL_32:
    v21 = 1;
  }

  objc_opt_self();
  v110 = 0u;
  v111 = 0u;
  v112 = 0u;
  v113 = 0u;
  v22 = qword_100229428;
  v23 = [v22 countByEnumeratingWithState:&v110 objects:v119 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v111;
    v26 = 1;
    do
    {
      for (k = 0; k != v24; k = k + 1)
      {
        if (*v111 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v28 = *(*(&v110 + 1) + 8 * k);
        v29 = [qword_100229428 objectForKeyedSubscript:v28];
        if (v29 && (*(v29 + 8) & 1) == 0 && (*(v29 + 48) & 3) != 0 && *(v29 + 72))
        {
          v30 = v29;
          v31 = sub_1001613B4(*(v29 + 72), v28, 4);
          v29 = v30;
          v26 &= v31;
        }
      }

      v24 = [v22 countByEnumeratingWithState:&v110 objects:v119 count:16];
    }

    while (v24);

    if ((v26 & 1) == 0)
    {
      v21 = 0;
    }
  }

  else
  {
  }

  if (qword_100229488 != -1)
  {
    dispatch_once(&qword_100229488, &stru_1001FD018);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100229488 != -1)
    {
      dispatch_once(&qword_100229488, &stru_1001FD018);
    }

    _NRLogWithArgs(qword_100229480, 2, "%s%.30s:%-4d Checking if ClassD configs need to be saved", "", "+[NRDLocalDevice saveAllDevicesToDiskWithForce:]", 1392);
  }

  v88 = v21;
  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  v32 = qword_100229428;
  v33 = [v32 countByEnumeratingWithState:&v98 objects:v116 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v99;
    do
    {
      v36 = 0;
      do
      {
        if (*v99 != v35)
        {
          objc_enumerationMutation(v32);
        }

        v37 = *(*(&v98 + 1) + 8 * v36);
        if (qword_100229488 != -1)
        {
          dispatch_once(&qword_100229488, &stru_1001FD018);
        }

        if (_NRLogIsLevelEnabled())
        {
          if (qword_100229488 != -1)
          {
            dispatch_once(&qword_100229488, &stru_1001FD018);
          }

          v38 = qword_100229428;
          v39 = qword_100229480;
          v40 = [v38 objectForKeyedSubscript:v37];
          v41 = v40;
          if (v40)
          {
            v42 = "NO";
            if (*(v40 + 13))
            {
              v42 = "YES";
            }
          }

          else
          {
            v42 = "NO";
          }

          _NRLogWithArgs(v39, 2, "%s%.30s:%-4d Local device %@ ClassD config isChanged %s", "", "+[NRDLocalDevice saveAllDevicesToDiskWithForce:]", 1396, v37, v42);
        }

        v43 = [qword_100229428 objectForKeyedSubscript:v37];
        if (v43)
        {
          v44 = v43[13];

          if (v44 == 1)
          {

            goto LABEL_82;
          }
        }

        v36 = v36 + 1;
      }

      while (v34 != v36);
      v45 = [v32 countByEnumeratingWithState:&v98 objects:v116 count:16];
      v34 = v45;
    }

    while (v45);
  }

  if (!a2)
  {
    if (qword_100229488 != -1)
    {
      dispatch_once(&qword_100229488, &stru_1001FD018);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100229488 != -1)
      {
        dispatch_once(&qword_100229488, &stru_1001FD018);
      }

      _NRLogWithArgs(qword_100229480, 0, "%s%.30s:%-4d Skipping saving ClassD configs", "", "+[NRDLocalDevice saveAllDevicesToDiskWithForce:]", 1420);
    }

    goto LABEL_125;
  }

LABEL_82:
  if (qword_100229488 != -1)
  {
    dispatch_once(&qword_100229488, &stru_1001FD018);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100229488 != -1)
    {
      dispatch_once(&qword_100229488, &stru_1001FD018);
    }

    if (a2)
    {
      v46 = "Force s";
    }

    else
    {
      v46 = "S";
    }

    v47 = qword_100229428;
    v48 = qword_100229480;
    _NRLogWithArgs(v48, 0, "%s%.30s:%-4d %saving %llu local device ClassD configs", "", "+[NRDLocalDevice saveAllDevicesToDiskWithForce:]", 1405, v46, [v47 count]);
  }

  objc_opt_self();
  if (qword_1002294C8 != -1)
  {
    dispatch_once(&qword_1002294C8, &stru_1001FD250);
  }

  v49 = qword_1002294C0;
  v50 = qword_100229428;
  v51 = @"LocalDeviceConfigClassD";
  if (!v49)
  {
    goto LABEL_121;
  }

  dispatch_assert_queue_V2(v49[2]);
  if (!v50)
  {
    v84 = sub_100180A2C();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v86 = sub_100180A2C();
      _NRLogWithArgs(v86, 17, "%s called with null dictToSave", "[NRDKeyManager saveNRUUIDDictionary:toKeychainWithName:dataProtectionClass:]");
    }

    goto LABEL_121;
  }

  v50 = v50;
  v52 = @"LocalDeviceConfigClassD";
  dispatch_assert_queue_V2(v49[2]);
  v119[0] = 0;
  v53 = [NSKeyedArchiver archivedDataWithRootObject:v50 requiringSecureCoding:1 error:v119];
  v54 = v119[0];
  v55 = v54;
  if (!v53 || v54)
  {
    if (qword_1002294D8 != -1)
    {
      dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002294D8 != -1)
      {
        dispatch_once(&qword_1002294D8, &stru_1001FD2C0);
      }

      _NRLogWithArgs(qword_1002294D0, 16, "%s%.30s:%-4d Failed to archive keychain data %@: %@", "", "[NRDKeyManager _saveNRUUIDDictionary:toKeychainWithName:dataProtectionClass:retryBlock:]", 877, @"LocalDeviceConfigClassD", v55);
    }

LABEL_121:
    goto LABEL_122;
  }

  LOBYTE(v110) = 0;
  v56 = sub_1001825C0(v49, v53, @"LocalDeviceConfigClassD", 0, 4, &v110, 0);

  if (v56)
  {
    if (qword_100229488 != -1)
    {
      dispatch_once(&qword_100229488, &stru_1001FD018);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100229488 != -1)
      {
        dispatch_once(&qword_100229488, &stru_1001FD018);
      }

      v57 = qword_100229428;
      v58 = qword_100229480;
      _NRLogWithArgs(v58, 0, "%s%.30s:%-4d Saved %llu local device ClassD configs", "", "+[NRDLocalDevice saveAllDevicesToDiskWithForce:]", 1411, [v57 count]);
    }

    v96 = 0u;
    v97 = 0u;
    v94 = 0u;
    v95 = 0u;
    v59 = qword_100229428;
    v60 = [v59 countByEnumeratingWithState:&v94 objects:v115 count:16];
    if (v60)
    {
      v61 = v60;
      v62 = *v95;
      do
      {
        for (m = 0; m != v61; m = m + 1)
        {
          if (*v95 != v62)
          {
            objc_enumerationMutation(v59);
          }

          v64 = [qword_100229428 objectForKeyedSubscript:*(*(&v94 + 1) + 8 * m)];
          if (v64)
          {
            v64[13] = 0;
          }
        }

        v61 = [v59 countByEnumeratingWithState:&v94 objects:v115 count:16];
      }

      while (v61);
    }

    goto LABEL_125;
  }

LABEL_122:
  v65 = sub_10015B480();
  v66 = _NRLogIsLevelEnabled();

  if (v66)
  {
    v67 = sub_10015B480();
    _NRLogWithArgs(v67, 17, "Failed to save %llu local device ClassD configs", [qword_100229428 count]);
  }

  v88 = 0;
LABEL_125:
  if ([v6 count])
  {
    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    v68 = v6;
    v69 = [v68 countByEnumeratingWithState:&v90 objects:v114 count:16];
    if (v69)
    {
      v70 = v69;
      v71 = *v91;
      do
      {
        for (n = 0; n != v70; n = n + 1)
        {
          if (*v91 != v71)
          {
            objc_enumerationMutation(v68);
          }

          v73 = *(*(&v90 + 1) + 8 * n);
          v74 = [v68 objectForKeyedSubscript:v73];
          [qword_100229428 setObject:v74 forKeyedSubscript:v73];
        }

        v70 = [v68 countByEnumeratingWithState:&v90 objects:v114 count:16];
      }

      while (v70);
    }
  }

  objc_opt_self();
  if (qword_100229438)
  {
    v112 = 0u;
    v113 = 0u;
    v110 = 0u;
    v111 = 0u;
    v75 = qword_100229428;
    v76 = [v75 countByEnumeratingWithState:&v110 objects:v119 count:16];
    if (v76)
    {
      v77 = v76;
      v78 = *v111;
LABEL_137:
      v79 = 0;
      while (1)
      {
        if (*v111 != v78)
        {
          objc_enumerationMutation(v75);
        }

        v80 = [qword_100229428 objectForKeyedSubscript:*(*(&v110 + 1) + 8 * v79)];
        if (v80)
        {
          v81 = v80[7];

          if (v81)
          {
            break;
          }
        }

        if (v77 == ++v79)
        {
          v77 = [v75 countByEnumeratingWithState:&v110 objects:v119 count:16];
          if (v77)
          {
            goto LABEL_137;
          }

          goto LABEL_144;
        }
      }
    }

    else
    {
LABEL_144:

      if (qword_100229488 != -1)
      {
        dispatch_once(&qword_100229488, &stru_1001FD018);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100229488 != -1)
        {
          dispatch_once(&qword_100229488, &stru_1001FD018);
        }

        _NRLogWithArgs(qword_100229480, 0, "%s%.30s:%-4d No remaining devices with a local identity UUID, deleting encrypted identity key", "", "+[NRDLocalDevice deleteLocalDeviceIdentityKeyIfNecessary]", 1295);
      }

      if (qword_100229438)
      {
        objc_opt_self();
        if (qword_1002294C8 != -1)
        {
          dispatch_once(&qword_1002294C8, &stru_1001FD250);
        }

        v82 = qword_1002294C0;
        sub_1001820C0(v82, @"IdentityKey", 0, 4);

        v75 = qword_100229438;
      }

      else
      {
        v75 = 0;
      }

      qword_100229438 = 0;
    }
  }

  return v88;
}

uint64_t sub_1001637E0(uint64_t a1)
{
  objc_opt_self();
  objc_opt_self();
  if (qword_1002294C8 != -1)
  {
    dispatch_once(&qword_1002294C8, &stru_1001FD250);
  }

  v1 = qword_1002294C0;
  if (!v1)
  {
    goto LABEL_26;
  }

  v2 = v1;
  dispatch_assert_queue_V2(*(v1 + 2));
  if ((v2[10] & 1) == 0)
  {
    v2[10] = 1;
    if (v2[8] == 4)
    {
      sub_100181020(v2);
      if (v2[9] == 1)
      {
        v2[8] = 3;
        sub_100181284(v2);
      }
    }
  }

  v3 = v2[8] & 0xFD;

  if (v3 == 1)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v4 = qword_100229428;
    v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v17;
      v8 = 1;
      while (1)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v17 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v10 = *(*(&v16 + 1) + 8 * i);
          v11 = [qword_100229428 objectForKeyedSubscript:{v10, v16}];
          v12 = v11;
          if (v11 && (*(v11 + 8) & 1) == 0 && (*(v11 + 48) & 3) != 0)
          {
            v13 = *(v11 + 80);
            if (v13)
            {
              if (!sub_1001613B4(v13, v10, 3))
              {
                v8 = 0;
                v14 = v12[22];
                if (!v14)
                {
                  goto LABEL_13;
                }

LABEL_25:
                v8 &= sub_10015F718(v14, @"OOBK", v10, 3);
                goto LABEL_13;
              }

              [v12 setDatabaseFlags:v12[6] | 0x400];
            }

            v14 = v12[22];
            if (v14)
            {
              goto LABEL_25;
            }
          }

LABEL_13:
        }

        v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (!v6)
        {
          goto LABEL_28;
        }
      }
    }

    LOBYTE(v8) = 1;
LABEL_28:
  }

  else
  {
LABEL_26:
    LOBYTE(v8) = 0;
  }

  return v8 & 1;
}

uint64_t sub_100163A30(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_self();
  if (!v2)
  {
    v8 = sub_10015B480();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v10 = sub_10015B480();
      _NRLogWithArgs(v10, 17, "%s called with null nrUUID");
LABEL_9:
    }

LABEL_10:
    v6 = 0;
    goto LABEL_4;
  }

  v4 = v3;
  if ((_NRIsUUIDNonZero() & 1) == 0)
  {
    v11 = sub_10015B480();
    v12 = _NRLogIsLevelEnabled();

    if (v12)
    {
      v10 = sub_10015B480();
      _NRLogWithArgs(v10, 17, "called with all-zero nrUUID");
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  v5 = sub_100003490();
  dispatch_assert_queue_V2(v5);

  v6 = sub_100163B2C(v4, v2, 1);
LABEL_4:

  return v6;
}

uint64_t sub_100163B2C(uint64_t a1, void *a2, int a3)
{
  v4 = a2;
  v5 = objc_opt_self();
  if (!v4)
  {
    v14 = sub_10015B480();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v16 = sub_10015B480();
      _NRLogWithArgs(v16, 17, "%s called with null nrUUID");
LABEL_21:
    }

LABEL_22:
    v8 = 0;
    goto LABEL_16;
  }

  v6 = v5;
  if ((_NRIsUUIDNonZero() & 1) == 0)
  {
    v17 = sub_10015B480();
    v18 = _NRLogIsLevelEnabled();

    if (v18)
    {
      v16 = sub_10015B480();
      _NRLogWithArgs(v16, 17, "called with all-zero nrUUID");
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  v7 = sub_100003490();
  dispatch_assert_queue_V2(v7);

  sub_1001619D8(v6);
  v8 = [qword_100229428 objectForKeyedSubscript:v4];
  if (!v8 && a3)
  {
    if (qword_100229488 != -1)
    {
      dispatch_once(&qword_100229488, &stru_1001FD018);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100229488 != -1)
      {
        dispatch_once(&qword_100229488, &stru_1001FD018);
      }

      _NRLogWithArgs(qword_100229480, 0, "%s%.30s:%-4d Creating new local device for query %@", "", "+[NRDLocalDevice copyLocalDeviceForNRUUID:shouldCreate:]", 2282, v4);
    }

    v9 = sub_10015D20C([NRDLocalDevice alloc], v4);
    v8 = v9;
    if (v9)
    {
      if ((v9[12] & 1) == 0)
      {
        v9[12] = 1;
        sub_10015D3F4(v9);
      }

      *(v8 + 13) = 1;
      [qword_100229428 setObject:v8 forKeyedSubscript:v4];
      v10 = *(v8 + 24);
      v11 = [v8 description];
      sub_1000059A8(v10, 5000, v11, 0);
    }

    else
    {
      [qword_100229428 setObject:0 forKeyedSubscript:v4];
    }

    v12 = objc_opt_self();
    sub_1001629FC(v12, 0);
  }

LABEL_16:

  return v8;
}

void sub_100163D80(uint64_t a1)
{
  v10 = 0;
  objc_opt_self();
  if (qword_1002294C8 != -1)
  {
    dispatch_once(&qword_1002294C8, &stru_1001FD250);
  }

  v2 = qword_1002294C0;
  v3 = sub_100183644(v2, @"LocalDeviceKeysClassA", 0, 1, &v10, 0);

  if ((v3 & 1) == 0)
  {
    if (v10 == 1)
    {
      if (qword_100229488 != -1)
      {
        dispatch_once(&qword_100229488, &stru_1001FD018);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100229488 != -1)
        {
          dispatch_once(&qword_100229488, &stru_1001FD018);
        }

        _NRLogWithArgs(qword_100229480, 1, "%s%.30s:%-4d ClassA keychain is locked, will retry deleting legacy keys after unlocking", "", "+[NRDLocalDevice deleteClassAKeysRetryIfNeeded]_block_invoke", 1203);
      }

      objc_opt_self();
      if (qword_1002294C8 != -1)
      {
        dispatch_once(&qword_1002294C8, &stru_1001FD250);
      }

      v4 = qword_1002294C0;
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v7 = sub_100164018;
      v8 = &unk_1001FCDD8;
      v9 = *(a1 + 32);
      v5 = v6;
      if (v4)
      {
        dispatch_assert_queue_V2(v4[2]);
        if (MKBGetDeviceLockState())
        {
          sub_100181B44(v4, v5);
        }

        else
        {
          v7(v5);
        }
      }
    }

    else
    {
      if (qword_100229488 != -1)
      {
        dispatch_once(&qword_100229488, &stru_1001FD018);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100229488 != -1)
        {
          dispatch_once(&qword_100229488, &stru_1001FD018);
        }

        _NRLogWithArgs(qword_100229480, 16, "%s%.30s:%-4d Failed to delete legacy ClassA keys from the keychain", "", "+[NRDLocalDevice deleteClassAKeysRetryIfNeeded]_block_invoke", 1208);
      }
    }
  }
}

void sub_100164018(uint64_t a1)
{
  v1 = objc_opt_self();
  objc_opt_self();
  if (qword_1002294C8 != -1)
  {
    dispatch_once(&qword_1002294C8, &stru_1001FD250);
  }

  v2 = qword_1002294C0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v5 = sub_100163D80;
  v6 = &unk_1001FCDD8;
  v7 = v1;
  v3 = v4;
  if (v2)
  {
    dispatch_assert_queue_V2(v2[2]);
    if (MKBGetDeviceLockState())
    {
      sub_100181B44(v2, v3);
    }

    else
    {
      v5(v3);
    }
  }
}

uint64_t sub_100164120(uint64_t a1, char a2)
{
  objc_opt_self();
  if (qword_100229438)
  {
    return 1;
  }

  v4 = sub_10015F9C0([NRDLDKeychainItemSecKey alloc], @"IdentityKey", 0, 4);
  v5 = qword_100229438;
  qword_100229438 = v4;

  if (qword_100229438)
  {
    if (qword_100229488 != -1)
    {
      dispatch_once(&qword_100229488, &stru_1001FD018);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100229488 != -1)
      {
        dispatch_once(&qword_100229488, &stru_1001FD018);
      }

      v6 = qword_100229438;
      v7 = qword_100229480;
      v8 = sub_10015E4BC(v6);
      LogString = _NRKeyCreateLogString();
      _NRLogWithArgs(v7, 0, "%s%.30s:%-4d Loaded encrypted identity key: %@", "", "+[NRDLocalDevice initializeLocalDeviceIdentityKeyCreateIfNecessary:]", 1224, LogString);
    }

    return 1;
  }

  if (a2)
  {
    error = 0;
    v10 = SecAccessControlCreateWithFlags(kCFAllocatorDefault, kSecAttrAccessibleAlwaysThisDeviceOnlyPrivate, 0x40000000uLL, &error);
    if (!v10)
    {
      v27 = sub_10015B480();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v29 = sub_10015B480();
        _NRLogWithArgs(v29, 17, "Failed to generate key access control: %@", error);
      }

      if (error)
      {
        CFRelease(error);
      }

      return 0;
    }

    v11 = v10;
    if (error)
    {
      CFRelease(error);
      error = 0;
    }

    v38[0] = kSecAttrKeyType;
    v38[1] = kSecPrivateKeyAttrs;
    v39[0] = kSecAttrKeyTypeX25519;
    v36[0] = kSecAttrIsPermanent;
    v36[1] = kSecAttrAccessControl;
    v37[0] = &__kCFBooleanFalse;
    v37[1] = v11;
    v12 = [NSDictionary dictionaryWithObjects:v37 forKeys:v36 count:2];
    v39[1] = v12;
    v13 = [NSDictionary dictionaryWithObjects:v39 forKeys:v38 count:2];

    CFRelease(v11);
    v14 = SecKeyCreateRandomKey(v13, &error);
    if (v14)
    {
      v15 = v14;
      if (error)
      {
        CFRelease(error);
        error = 0;
      }

      if (qword_100229488 != -1)
      {
        dispatch_once(&qword_100229488, &stru_1001FD018);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100229488 != -1)
        {
          dispatch_once(&qword_100229488, &stru_1001FD018);
        }

        v16 = qword_100229480;
        v35 = 0;
        SecKeyCopyPublicBytes();
        v17 = v35;
        v35 = 0;
        v18 = _NRKeyCreateLogString();

        _NRLogWithArgs(v16, 0, "%s%.30s:%-4d Generated new encrypted identity key: %@", "", "+[NRDLocalDevice initializeLocalDeviceIdentityKeyCreateIfNecessary:]", 1269, v18);
      }

      v19 = sub_10015F850([NRDLDKeychainItemSecKey alloc], v15);
      v20 = qword_100229438;
      qword_100229438 = v19;

      CFRelease(v15);
      if (sub_100160170(qword_100229438, @"IdentityKey", 0, 4))
      {
        v21 = 1;
LABEL_38:

        return v21;
      }

      if (qword_100229488 != -1)
      {
        dispatch_once(&qword_100229488, &stru_1001FD018);
      }

      if (_NRLogIsLevelEnabled())
      {
        v25 = sub_10015B480();
        _NRLogWithArgs(v25, 16, "%s%.30s:%-4d Failed to save encrypted identity key to keychain, discarding", "", "+[NRDLocalDevice initializeLocalDeviceIdentityKeyCreateIfNecessary:]", 1275);
      }

      v26 = qword_100229438;
      qword_100229438 = 0;
    }

    else
    {
      v30 = sub_10015B480();
      v31 = _NRLogIsLevelEnabled();

      if (v31)
      {
        v32 = sub_10015B480();
        _NRLogWithArgs(v32, 17, "Failed to generate private key: %@", error);
      }

      if (error)
      {
        CFRelease(error);
        v21 = 0;
        error = 0;
        goto LABEL_38;
      }
    }

    v21 = 0;
    goto LABEL_38;
  }

  if (qword_100229488 != -1)
  {
    dispatch_once(&qword_100229488, &stru_1001FD018);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100229488 != -1)
    {
      dispatch_once(&qword_100229488, &stru_1001FD018);
    }

    _NRLogWithArgs(qword_100229480, 16, "%s%.30s:%-4d Failed to load identity key, not creating new one", "", "+[NRDLocalDevice initializeLocalDeviceIdentityKeyCreateIfNecessary:]", 1229);
  }

  sub_10013C2A8(@"NRDLocalDevice", @"EncryptedIdentifier", @"KeyLoadFailure", 0, 0, v22, v23, v24, v33);
  return 0;
}

NRDDecryptedIdentifier *sub_1001646B4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = a3;
  v8 = a4;
  objc_opt_self();
  if (!sub_100164120(NRDLocalDevice, 0))
  {
    v18 = 0;
    goto LABEL_15;
  }

  v9 = [NEIKEv2EncryptedKeyIDIdentifier alloc];
  v10 = [v6 identifierData];
  v11 = [v7 identifierData];
  if (qword_100229438)
  {
    v12 = *(qword_100229438 + 16);
  }

  else
  {
    v12 = 0;
  }

  v13 = [v9 initWithKeyID:v10 aad:v11 keyRef:v12];

  v38 = 0;
  v14 = [v13 decryptWithSession:v8 returnError:&v38];
  v15 = v38;
  if (!v14)
  {
    v30 = sub_10015B480();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      v18 = 0;
      v32 = @"DecryptionFailure";
      goto LABEL_27;
    }

    v23 = sub_10015B480();
    v37 = "";
    _NRLogWithArgs(v23, 16, "%s%.30s:%-4d Identifier decryption failed: %@");
    v32 = @"DecryptionFailure";
    goto LABEL_22;
  }

  if ([v14 length] != 96)
  {
    v33 = sub_10015B480();
    v34 = _NRLogIsLevelEnabled();

    if (!v34)
    {
      v18 = 0;
      v32 = @"IncorrectLength";
      goto LABEL_27;
    }

    v23 = sub_10015B480();
    _NRLogWithArgs(v23, 16, "%s%.30s:%-4d Decrypted identifier length %zu != %zu", "", "+[NRDLocalDevice decryptDeviceIdentifier:serviceIdentifier:ikeSession:]", 1333, [v14 length], 0x60uLL);
    v32 = @"IncorrectLength";
    goto LABEL_22;
  }

  v16 = [v14 bytes];
  if (*v16 != 1)
  {
    v35 = sub_10015B480();
    v36 = _NRLogIsLevelEnabled();

    if (!v36)
    {
      v18 = 0;
      v32 = @"IncorrectVersion";
      goto LABEL_27;
    }

    v23 = sub_10015B480();
    _NRLogWithArgs(v23, 16, "%s%.30s:%-4d Unknown encrypted identifier version %u", "", "+[NRDLocalDevice decryptDeviceIdentifier:serviceIdentifier:ikeSession:]", 1340, *v16);
    v32 = @"IncorrectVersion";
    goto LABEL_22;
  }

  v17 = objc_alloc_init(NRDDecryptedIdentifier);
  v18 = v17;
  if (v17)
  {
    v17->_version = *v16;
  }

  v19 = [[NSUUID alloc] initWithUUIDBytes:v16 + 1];
  if (v18)
  {
    identity = v18->_identity;
    v18->_identity = v19;

    v21 = v18->_identity;
  }

  else
  {

    v21 = 0;
  }

  v22 = qword_100229430;
  v23 = v21;
  v24 = [v22 objectForKeyedSubscript:v23];
  if (!v18)
  {

    v32 = @"NoDeviceFound";
LABEL_22:

    v18 = 0;
LABEL_27:
    sub_10013C2A8(@"NRDLocalDevice", @"EncryptedIdentifier", v32, 0, 0, v26, v27, v28, v37);
    goto LABEL_13;
  }

  nrUUID = v18->_nrUUID;
  v18->_nrUUID = v24;

  if (!v18->_nrUUID)
  {
    v32 = @"NoDeviceFound";
    goto LABEL_27;
  }

LABEL_13:

LABEL_15:
  return v18;
}

char *sub_100164A44(char *a1)
{
  v1 = a1;
  if (a1)
  {
    if (!qword_100229438)
    {
      v25 = 0u;
      v24 = 0u;
      v23 = 0u;
      v22 = 0u;
      v2 = qword_100229428;
      v3 = [v2 countByEnumeratingWithState:&v22 objects:v27 count:16];
      if (v3)
      {
        v4 = v3;
        v5 = *v23;
        do
        {
          v6 = 0;
          do
          {
            if (*v23 != v5)
            {
              objc_enumerationMutation(v2);
            }

            v7 = [qword_100229428 objectForKeyedSubscript:{*(*(&v22 + 1) + 8 * v6), v22}];
            if (v7)
            {
              v8 = v7[7];

              if (v8)
              {
                v10 = 0;
                goto LABEL_16;
              }
            }

            v6 = v6 + 1;
          }

          while (v4 != v6);
          v9 = [v2 countByEnumeratingWithState:&v22 objects:v27 count:16];
          v4 = v9;
        }

        while (v9);
      }

      v10 = 1;
LABEL_16:

      if (!sub_100164120(NRDLocalDevice, v10))
      {
        return 0;
      }
    }

    if (*(v1 + 7))
    {
      goto LABEL_22;
    }

    v11 = objc_alloc_init(NSUUID);
    if (v11)
    {
      v12 = v11;
      [v1 setLocalIdentity:v11];
      v13 = &qword_100229000;
      [qword_100229430 setObject:*(v1 + 3) forKeyedSubscript:v12];
      if ((v1[8] & 1) != 0 || (v14 = objc_opt_self(), sub_1001629FC(v14, 0)))
      {

LABEL_22:
        v12 = [[NSMutableData alloc] initWithCapacity:48];
        v26[0] = 0;
        v26[1] = 0;
        [*(v1 + 7) getUUIDBytes:v26];
        [v12 appendBytes:v26 length:16];
        v15 = sub_10015E4BC(qword_100229438);
        if (v15)
        {
          [v12 appendData:v15];
          v1 = v12;
        }

        else
        {
          v1 = 0;
        }

        goto LABEL_25;
      }
    }

    else
    {
      v17 = sub_10015B480();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      v13 = "[NRDLocalDevice copyDeviceIdentityPayload]";
      if (IsLevelEnabled)
      {
        v19 = sub_10015B480();
        _NRLogWithArgs(v19, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (randomUUID) != ((void*)0)", "", "[NRDLocalDevice copyDeviceIdentityPayload]", 1498);
      }

      v1 = _os_log_pack_size();
      v12 = &v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
      v20 = __error();
      v21 = _os_log_pack_fill(v12, v1, *v20, &_mh_execute_header, "%{public}s Assertion Failed: (randomUUID) != ((void*)0)");
      *v21 = 136446210;
      *(v21 + 4) = "[NRDLocalDevice copyDeviceIdentityPayload]";
      sub_10015B480();
      _NRLogAbortWithPack();
    }

    [v13[134] setObject:0 forKeyedSubscript:{v12, v22}];
    [v1 setLocalIdentity:0];
    v1 = 0;
LABEL_25:
  }

  return v1;
}

id sub_100164D70(void *a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  if (a2 == 1)
  {
    v2 = a1[11];
    goto LABEL_8;
  }

  if (a2 == 3)
  {
    v2 = a1[10];
    goto LABEL_8;
  }

  if (a2 != 4)
  {
    if (qword_100229488 != -1)
    {
      dispatch_once(&qword_100229488, &stru_1001FD018);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100229488 != -1)
      {
        dispatch_once(&qword_100229488, &stru_1001FD018);
      }

      v4 = qword_100229480;
      String = NRDataProtectionClassCreateString();
      _NRLogWithArgs(v4, 17, "Cannot get keychain items for %@", String);
    }

    return 0;
  }

  v2 = a1[9];
LABEL_8:

  return v2;
}

void sub_100164E90(uint64_t a1)
{
  if (a1 && (*(a1 + 8) & 1) == 0)
  {
    v2 = *(a1 + 24);
    v3 = *(a1 + 72);
    sub_1001614EC(v3, v2, 4);

    v4 = *(a1 + 24);
    v5 = *(a1 + 80);
    v6 = *(a1 + 176);
    objc_opt_self();
    if (qword_1002294C8 != -1)
    {
      dispatch_once(&qword_1002294C8, &stru_1001FD250);
    }

    v7 = qword_1002294C0;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100164FF8;
    v11[3] = &unk_1001FCE28;
    v12 = v5;
    v13 = v4;
    v14 = a1;
    v15 = v6;
    v8 = v6;
    v9 = v4;
    v10 = v5;
    sub_1001816DC(v7, v11);
  }
}

void sub_100164FF8(uint64_t a1)
{
  sub_1001614EC(*(a1 + 32), *(a1 + 40), 3);
  v2 = *(a1 + 48);
  if (!v2 || (*(v2 + 48) & 0x10) == 0)
  {
    v3 = *(a1 + 56);
    if (v3)
    {
      v4 = *(a1 + 40);
      objc_opt_self();
      if (qword_1002294C8 != -1)
      {
        dispatch_once(&qword_1002294C8, &stru_1001FD250);
      }

      v5 = qword_1002294C0;
      sub_100183644(v5, @"OOBK", v4, 3, 0, 0);

      *(v3 + 8) = 1;
    }
  }

  v6 = *(a1 + 40);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100165140;
  v7[3] = &unk_1001FCE00;
  v8 = v6;
  sub_100165208(NRDLocalDevice, v8, v7);
}

void sub_100165140(uint64_t a1, void *a2, int a3)
{
  v10 = a2;
  v5 = _NRCopyLogObjectForNRUUID();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v7 = _NRCopyLogObjectForNRUUID();
    v8 = v7;
    v9 = "NO";
    if (a3)
    {
      v9 = "YES";
    }

    _NRLogWithArgs(v7, 0, "%s%.30s:%-4d deletePairingInfoFromKeychain %@ deleted: %s", "", "[NRDLocalDevice deleteAllKeychainItems]_block_invoke_2", 1581, *(a1 + 32), v9);
  }
}

void sub_100165208(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  objc_opt_self();
  if (!v4)
  {
    v9 = sub_10015B480();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v11 = sub_10015B480();
      _NRLogWithArgs(v11, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (nrUUID) != ((void*)0)", "", "+[NRDLocalDevice deletePairingInfoFromKeychain:completionBlock:]", 4945);
    }

    v4 = _os_log_pack_size();
    v5 = &v15[-1] - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
    v12 = __error();
    v13 = _os_log_pack_fill(v5, v4, *v12, &_mh_execute_header, "%{public}s Assertion Failed: (nrUUID) != ((void*)0)");
    *v13 = 136446210;
    *(v13 + 4) = "+[NRDLocalDevice deletePairingInfoFromKeychain:completionBlock:]";
    sub_10015B480();
    _NRLogAbortWithPack();
    goto LABEL_7;
  }

  objc_opt_self();
  if (qword_1002294C8 != -1)
  {
LABEL_7:
    dispatch_once(&qword_1002294C8, &stru_1001FD250);
  }

  v6 = qword_1002294C0;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100165418;
  v15[3] = &unk_1001FCE50;
  v16 = v4;
  v17 = v5;
  v7 = v5;
  v8 = v4;
  sub_1001816DC(v6, v15);
}

uint64_t sub_100165418(uint64_t a1)
{
  objc_opt_self();
  if (qword_1002294C8 != -1)
  {
    dispatch_once(&qword_1002294C8, &stru_1001FD250);
  }

  v2 = qword_1002294C0;
  v3 = sub_100183644(v2, @"LocalDevicePairingInfo", *(a1 + 32), 3, 0, 1);

  v4 = _NRCopyLogObjectForNRUUID();
  if (v3)
  {
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      goto LABEL_9;
    }

    v6 = _NRCopyLogObjectForNRUUID();
    _NRLogWithArgs(v6, 0, "%s%.30s:%-4d Successfully deleted NRDLDPairingInfo from keychain");
  }

  else
  {
    v7 = _NRLogIsLevelEnabled();

    if (!v7)
    {
      goto LABEL_9;
    }

    v6 = _NRCopyLogObjectForNRUUID();
    _NRLogWithArgs(v6, 16, "%s%.30s:%-4d Failed to delete NRDLDPairingInfo from keychain");
  }

LABEL_9:
  result = *(a1 + 40);
  if (result)
  {
    v9 = *(result + 16);

    return v9();
  }

  return result;
}

void *sub_100165598(void *a1)
{
  if (a1)
  {
    v2 = a1[22];
    if (v2)
    {
      v2 = v2[2];
    }

    a1 = v2;
    v1 = vars8;
  }

  return a1;
}

uint64_t sub_1001655D8(uint64_t a1)
{
  if (qword_100229488 != -1)
  {
    dispatch_once(&qword_100229488, &stru_1001FD018);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100229488 != -1)
    {
      dispatch_once(&qword_100229488, &stru_1001FD018);
    }

    _NRLogWithArgs(qword_100229480, 2, "%s%.30s:%-4d Checking for compatibility. flags:%llu local:%llu remote:%llu", "", "[NRDLocalDevice compatible:]", 1610, 1, *(a1 + 152), *(a1 + 160));
  }

  if (*(a1 + 152))
  {
    return *(a1 + 160) & 1;
  }

  else
  {
    return 0;
  }
}

BOOL sub_1001656BC(uint64_t a1)
{
  v1 = *(a1 + 72);
  if (!v1)
  {
    v3 = sub_100160EC0([NRDLDDataClassKeychainItems alloc], 4);
    v4 = *(a1 + 72);
    *(a1 + 72) = v3;

    if (!*(a1 + 72))
    {
      v8 = sub_10015B480();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v10 = sub_10015B480();
        _NRLogWithArgs(v10, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (self.classDKeychainItems) != ((void*)0)", "", "[NRDLocalDevice fillInClassDKeys]", 1621);
      }

      v11 = _os_log_pack_size();
      v12 = __error();
      v13 = _os_log_pack_fill(&v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v11, *v12, &_mh_execute_header, "%{public}s Assertion Failed: (self.classDKeychainItems) != ((void*)0)");
      *v13 = 136446210;
      *(v13 + 4) = "[NRDLocalDevice fillInClassDKeys]";
      sub_10015B480();
      _NRLogAbortWithPack();
    }

    if (*(a1 + 12))
    {
      *(a1 + 12) = 0;
      if ((*(a1 + 8) & 1) == 0)
      {
        sub_10015D69C(a1);
        *(a1 + 13) = 1;
      }
    }

    v5 = *(a1 + 24);
    v6 = [a1 description];
    sub_1000059A8(v5, 5005, v6, @"ClassD");
  }

  return v1 == 0;
}

void sub_10016586C(uint64_t a1)
{
  v2 = sub_100003490();
  dispatch_assert_queue_V2(v2);

  if (qword_100229488 != -1)
  {
    dispatch_once(&qword_100229488, &stru_1001FD018);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100229488 != -1)
    {
      dispatch_once(&qword_100229488, &stru_1001FD018);
    }

    _NRLogWithArgs(qword_100229480, 0, "%s%.30s:%-4d Filling in currently unlocked keys for %@", "", "[NRDLocalDevice fillInKeysForCurrentlyUnlocked]", 1632, a1);
  }

  v3 = sub_1001656BC(a1);
  v4 = *(a1 + 80);
  if (v4)
  {
    goto LABEL_23;
  }

  if ((*(a1 + 49) & 4) != 0)
  {
    v4 = 0;
LABEL_23:

    goto LABEL_24;
  }

  objc_opt_self();
  if (qword_1002294C8 != -1)
  {
    dispatch_once(&qword_1002294C8, &stru_1001FD250);
  }

  v4 = qword_1002294C0;
  if (!v4)
  {
    goto LABEL_23;
  }

  v5 = v4;
  dispatch_assert_queue_V2(v4[2]);
  if ((*(v5 + 10) & 1) == 0)
  {
    *(v5 + 10) = 1;
    if (*(v5 + 8) == 4)
    {
      sub_100181020(v5);
      if (*(v5 + 9) == 1)
      {
        *(v5 + 8) = 3;
        sub_100181284(v5);
      }
    }
  }

  v6 = v5[1] & 0xFD;

  if (v6 == 1)
  {
    v7 = sub_100160EC0([NRDLDDataClassKeychainItems alloc], 3);
    v8 = *(a1 + 80);
    *(a1 + 80) = v7;

    if (!*(a1 + 80))
    {
      v23 = sub_10015B480();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v25 = sub_10015B480();
        _NRLogWithArgs(v25, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (self.classCKeychainItems) != ((void*)0)", "", "[NRDLocalDevice fillInKeysForCurrentlyUnlocked]", 1639);
      }

      v26 = _os_log_pack_size();
      v27 = &v30 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
      v28 = __error();
      v29 = _os_log_pack_fill(v27, v26, *v28, &_mh_execute_header, "%{public}s Assertion Failed: (self.classCKeychainItems) != ((void*)0)");
      *v29 = 136446210;
      *(v29 + 4) = "[NRDLocalDevice fillInKeysForCurrentlyUnlocked]";
      sub_10015B480();
      _NRLogAbortWithPack();
    }

    if (*(a1 + 12))
    {
      *(a1 + 12) = 0;
      if ((*(a1 + 8) & 1) == 0)
      {
        sub_10015D69C(a1);
        *(a1 + 13) = 1;
      }
    }

    v9 = *(a1 + 24);
    v10 = [a1 description];
    sub_1000059A8(v9, 5005, v10, @"ClassC");

    v4 = v10;
    v3 = 1;
    goto LABEL_23;
  }

LABEL_24:
  v11 = *(a1 + 80);
  if (!v11 || (v12 = *(a1 + 88), v11, v12))
  {
    if (!v3)
    {
      return;
    }

    goto LABEL_27;
  }

  v14 = *(a1 + 80);
  v15 = [v14 copy];
  v16 = *(a1 + 88);
  *(a1 + 88) = v15;

  v17 = *(a1 + 88);
  if (v17)
  {
    v18 = *(v17 + 8);
    *(v17 + 8) = 0;

    v19 = *(a1 + 88);
    if (v19)
    {
      v20 = *(v19 + 24);
      *(v19 + 24) = 0;
    }
  }

  v21 = *(a1 + 24);
  v22 = [a1 description];
  sub_1000059A8(v21, 5005, v22, @"ClassA");

  if (v3)
  {
LABEL_27:
    v13 = objc_opt_self();

    sub_1001629FC(v13, 0);
  }
}

void sub_100165C8C(char *a1, void *a2)
{
  v3 = a2;
  v4 = sub_100003490();
  dispatch_assert_queue_V2(v4);

  if (!v3)
  {
    v6 = sub_10015B480();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v8 = sub_10015B480();
      _NRLogWithArgs(v8, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (completionBlock) != ((void*)0)", "", "[NRDLocalDevice fillInClassCKeysWithCompletion:]", 1663);
    }

    v3 = _os_log_pack_size();
    a1 = &v12[-1] - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
    v9 = __error();
    v10 = _os_log_pack_fill(a1, v3, *v9, &_mh_execute_header, "%{public}s Assertion Failed: (completionBlock) != ((void*)0)");
    *v10 = 136446210;
    *(v10 + 4) = "[NRDLocalDevice fillInClassCKeysWithCompletion:]";
    sub_10015B480();
    _NRLogAbortWithPack();
    goto LABEL_10;
  }

  if (!*(a1 + 10))
  {
    objc_opt_self();
    if (qword_1002294C8 == -1)
    {
LABEL_5:
      v5 = qword_1002294C0;
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_100165EA4;
      v12[3] = &unk_1001FCE50;
      v12[4] = a1;
      v13 = v3;
      sub_1001816DC(v5, v12);

      goto LABEL_6;
    }

LABEL_10:
    dispatch_once(&qword_1002294C8, &stru_1001FD250);
    goto LABEL_5;
  }

  (*(v3 + 2))(v3, 1);
LABEL_6:
}

uint64_t sub_100165EA4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2 || !*(v2 + 80))
  {
    v3 = sub_100160EC0([NRDLDDataClassKeychainItems alloc], 3);
    v4 = *(a1 + 32);
    if (v4)
    {
      objc_storeStrong((v4 + 80), v3);
    }

    v5 = *(a1 + 32);
    if (!v5 || !*(v5 + 80))
    {
      v9 = sub_10015B480();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v11 = sub_10015B480();
        _NRLogWithArgs(v11, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (self.classCKeychainItems) != ((void*)0)", "", "[NRDLocalDevice fillInClassCKeysWithCompletion:]_block_invoke", 1672);
      }

      v12 = _os_log_pack_size();
      v13 = __error();
      v14 = _os_log_pack_fill(&v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v12, *v13, &_mh_execute_header, "%{public}s Assertion Failed: (self.classCKeychainItems) != ((void*)0)");
      *v14 = 136446210;
      *(v14 + 4) = "[NRDLocalDevice fillInClassCKeysWithCompletion:]_block_invoke";
      sub_10015B480();
      _NRLogAbortWithPack();
    }

    sub_10000DF34(v5, 5005, @"ClassC");
    v6 = objc_opt_self();
    sub_1001629FC(v6, 0);
  }

  v7 = *(*(a1 + 40) + 16);

  return v7();
}

void sub_100166050(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100003490();
  dispatch_assert_queue_V2(v4);

  if (!v3)
  {
    v5 = sub_10015B480();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v7 = sub_10015B480();
      _NRLogWithArgs(v7, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (completionBlock) != ((void*)0)", "", "[NRDLocalDevice fillInClassAKeysWithCompletion:]", 1684);
    }

    v8 = _os_log_pack_size();
    v9 = __error();
    v10 = _os_log_pack_fill(&v12[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v8, *v9, &_mh_execute_header, "%{public}s Assertion Failed: (completionBlock) != ((void*)0)");
    *v10 = 136446210;
    *(v10 + 4) = "[NRDLocalDevice fillInClassAKeysWithCompletion:]";
    sub_10015B480();
    _NRLogAbortWithPack();
  }

  if (*(a1 + 88))
  {
    v3[2](v3, 1);
  }

  else
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100166208;
    v12[3] = &unk_1001FCE78;
    v12[4] = a1;
    v13 = v3;
    sub_100165C8C(a1, v12);
  }
}

uint64_t sub_100166208(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      if (v3[11])
      {
        goto LABEL_13;
      }

      v3 = v3[10];
    }

    v4 = v3;
    v5 = [v4 copy];
    v6 = *(a1 + 32);
    if (v6)
    {
      objc_storeStrong((v6 + 88), v5);
    }

    v7 = *(a1 + 32);
    if (!v7 || (v8 = *(v7 + 88)) == 0)
    {
      v20 = sub_10015B480();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v22 = sub_10015B480();
        _NRLogWithArgs(v22, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (self.classAKeychainItemsLegacyOnly) != ((void*)0)", "", "[NRDLocalDevice fillInClassAKeysWithCompletion:]_block_invoke", 1700);
      }

      v23 = _os_log_pack_size();
      v24 = __error();
      v25 = _os_log_pack_fill(&v26 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), v23, *v24, &_mh_execute_header, "%{public}s Assertion Failed: (self.classAKeychainItemsLegacyOnly) != ((void*)0)");
      *v25 = 136446210;
      *(v25 + 4) = "[NRDLocalDevice fillInClassAKeysWithCompletion:]_block_invoke";
      sub_10015B480();
      _NRLogAbortWithPack();
    }

    v9 = v8;
    v10 = v9[1];
    v9[1] = 0;

    v11 = *(a1 + 32);
    if (v11)
    {
      v12 = *(v11 + 88);
      if (v12)
      {
        v13 = v12;
        v14 = *(v12 + 3);
        *(v12 + 3) = 0;
      }
    }

    sub_10000DF34(*(a1 + 32), 5005, @"ClassA");
  }

  else
  {
    v17 = sub_10015B480();
    v18 = _NRLogIsLevelEnabled();

    if (v18)
    {
      v19 = sub_10015B480();
      _NRLogWithArgs(v19, 17, "Cannot fill in ClassA keys due to ClassC failure");
    }
  }

LABEL_13:
  v15 = *(*(a1 + 40) + 16);

  return v15();
}

char *sub_100166438(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = objc_autoreleasePoolPush();
  if (!v2)
  {
    goto LABEL_10;
  }

  v4 = v2[4];
  if (v4)
  {

    goto LABEL_5;
  }

  if ((v2[1] & 1) == 0)
  {
LABEL_10:
    v5 = 0;
    goto LABEL_9;
  }

LABEL_5:
  v5 = sub_10015D20C([NRDLocalDevice alloc], v2[3]);
  [v5 setBluetoothUUID:v2[4]];
  v6 = v2[21];
  if (v5)
  {
    v7 = *(v5 + 21);
    *(v5 + 21) = v6;

    if ((v5[12] & 1) == 0)
    {
      v5[12] = 1;
      sub_10015D3F4(v5);
    }

    v5[13] = 1;
    v5[8] = *(v2 + 8);
    [v5 setDatabaseFlags:*(v5 + 6) & 0xFFFFFFFFFFFFFFBFLL | (((v2[6] >> 6) & 1) << 6)];
    [v5 setDatabaseFlags:*(v5 + 6) & 0xFFFFFFFFFFFFFF7FLL | (((v2[6] >> 7) & 1) << 7)];
  }

  else
  {
  }

LABEL_9:
  objc_autoreleasePoolPop(v3);

  return v5;
}

id *sub_100166548(id *result)
{
  if (!result)
  {
    return result;
  }

  v1 = result;
  if (*(result + 12) == 1)
  {
    [result description];
    return objc_claimAutoreleasedReturnValue();
  }

  v2 = [NSMutableString alloc];
  v3 = v1[3];
  v4 = [v2 initWithFormat:@"NRDLD[%@]", v3];

  if (*(v1 + 8))
  {
    goto LABEL_8;
  }

  v5 = v1[16];
  if (v5 || (v5 = v1[17]) != 0)
  {

LABEL_8:
    [v4 appendString:@"\n\t\t"];
    v6 = *(v1 + 8);
    v7 = *(v1 + 8) == 0;
    if (*(v1 + 8))
    {
      [v4 appendFormat:@"inner link version %u", *(v1 + 8)];
    }

    v8 = v1[16];

    v9 = ", ";
    if (v8)
    {
      if (v6)
      {
        v10 = ", ";
      }

      else
      {
        v10 = "";
      }

      v11 = v1[16];
      [v4 appendFormat:@"%sname %@", v10, v11];

      v7 = 0;
    }

    v12 = v1[17];

    if (v12)
    {
      if (v7)
      {
        v13 = "";
      }

      else
      {
        v13 = ", ";
      }

      v14 = v1[17];
      [v4 appendFormat:@"%sbuild %@", v13, v14];

      v7 = 0;
    }

    if (*(v1 + 9))
    {
      if (v7)
      {
        v9 = "";
      }

      StringFromNRDeviceEndpointType = createStringFromNRDeviceEndpointType();
      [v4 appendFormat:@"%stype %@", v9, StringFromNRDeviceEndpointType];
    }

    goto LABEL_24;
  }

  if (*(v1 + 9))
  {
    goto LABEL_8;
  }

LABEL_24:
  v16 = v1[4];

  if (v16)
  {
    v17 = v1[4];
    [v4 appendFormat:@"\n\t\tBluetoothUUID: %@", v17];
  }

  v18 = v1[5];

  if (v18)
  {
    v19 = v1[5];
    [v4 appendFormat:@"\n\t\tIDSDeviceID: %@", v19];
  }

  v20 = v1[6];
  v21 = "un";
  if (v20)
  {
    v21 = "";
  }

  if ((v20 & 2) != 0)
  {
    v22 = "en";
  }

  else
  {
    v22 = "dis";
  }

  [v4 appendFormat:@"\n\t\t%sregistered, %sabled", v21, v22];
  if (*(v1 + 8) == 1)
  {
    [v4 appendFormat:@", ephemeral"];
  }

  v23 = v1[6];
  if ((v23 & 0x10) != 0)
  {
    v25 = NRCreateStringFromPairingAuthMethod();
    [v4 appendFormat:@"\n\t\tinitially paired using %@", v25];
  }

  else
  {
    if ((v23 & 0x20) != 0)
    {
      v24 = "IDS";
    }

    else
    {
      v24 = "OOBK";
    }

    [v4 appendFormat:@"\n\t\tinitially paired using %s", v24];
  }

  v26 = v1[21];
  [v4 appendFormat:@"\n\t\tcreated: %@", v26];

  v27 = [v1 dateRegistered];

  if (v27)
  {
    v28 = [v1 dateRegistered];
    [v4 appendFormat:@", registered: %@", v28];
  }

  v29 = [v1 dateEnabled];

  if (v29)
  {
    v30 = [v1 dateEnabled];
    [v4 appendFormat:@", enabled: %@", v30];
  }

  v31 = v1[6];
  if ((v31 & 0x10) == 0)
  {
    v32 = v1[22];
    if (v32)
    {
      v32 = v32[2];
    }

    v33 = v32;
    LogString = _NRKeyCreateLogString();
    [v4 appendFormat:@"\n\t\tOut of Band Key: %@", LogString];

    v31 = v1[6];
  }

  if ((v31 & 4) != 0)
  {
    v35 = @"YES";
  }

  else
  {
    v35 = @"NO";
  }

  [v4 appendFormat:@"\n\t\tIsAltAccount: %@", v35];
  if ((v1[6] & 8) != 0)
  {
    v36 = @"YES";
  }

  else
  {
    v36 = @"NO";
  }

  [v4 appendFormat:@"\n\t\tIsExternal: %@", v36];
  if (*(v1 + 9))
  {
    [v4 appendFormat:@"\n\t\tPSM: %u", *(v1 + 9)];
  }

  if ((v1[6] & 0x100) != 0)
  {
    v37 = @"YES";
  }

  else
  {
    v37 = @"NO";
  }

  [v4 appendFormat:@"\n\t\tAlways On Wi-Fi: %@", v37];
  [v4 appendFormat:@"\n\t\tDevice Flags: l %#llx r %#llx", v1[19], v1[20]];
  v38 = v1[14];

  if (v38)
  {
    v39 = v1[14];
    v40 = _NRCreateMACAddressString();
    [v4 appendFormat:@"\n\t\tBluetooth MAC Address: %@", v40];
  }

  v41 = v1[18];

  if (v41)
  {
    v42 = v1[18];
    [v4 appendFormat:@"\n\t\tLocal Operational properties: %@", v42];
  }

  v43 = v1[8];

  if (v43)
  {
    v44 = v1[8];
    v45 = v44;
    if (v44)
    {
      v46 = *(v44 + 2);
    }

    else
    {
      v46 = 0;
    }

    v47 = v46;
    v48 = _NRKeyCreateLogString();
    [v4 appendFormat:@"\n\t\tRemote Identity Public Key: %@", v48];

    v49 = v1[8];
    v50 = v49;
    if (v49)
    {
      v51 = *(v49 + 1);
    }

    else
    {
      v51 = 0;
    }

    v52 = v51;
    [v4 appendFormat:@"\n\t\tRemote Device Identity: %@", v52];
  }

  v53 = v1[7];

  if (v53)
  {
    v54 = v1[7];
    [v4 appendFormat:@"\n\t\tLocal Device Identity: %@", v54];

    if ((v1[6] & 0x200) != 0)
    {
      v55 = @"YES";
    }

    else
    {
      v55 = @"NO";
    }

    [v4 appendFormat:@"\n\t\tHas Authenticated Using Identity: %@", v55];
  }

  v56 = v1[9];
  v57 = v56;
  if (v56)
  {
    v58 = *(v56 + 1);
  }

  else
  {
    v58 = 0;
  }

  v59 = v58;

  if (v59)
  {
    v60 = v1[9];
    v61 = v60;
    if (v60)
    {
      v62 = *(v60 + 1);
    }

    else
    {
      v62 = 0;
    }

    v63 = v62;
    v64 = sub_10015E4BC(v63);
    v65 = _NRKeyCreateLogString();
    [v4 appendFormat:@"\n\t\tClass D Remote Public Key: %@", v65];
  }

  v66 = v1[9];
  v67 = v66;
  if (v66)
  {
    v68 = *(v66 + 2);
  }

  else
  {
    v68 = 0;
  }

  v69 = v68;

  if (v69)
  {
    v70 = v1[9];
    v71 = v70;
    if (v70)
    {
      v72 = *(v70 + 2);
    }

    else
    {
      v72 = 0;
    }

    v73 = v72;
    v74 = sub_10015E4BC(v73);
    v75 = _NRKeyCreateLogString();
    [v4 appendFormat:@"\n\t\tClass D Local Public Key: %@", v75];
  }

  v76 = v1[9];
  v77 = v76;
  if (v76)
  {
    v78 = *(v76 + 3);
  }

  else
  {
    v78 = 0;
  }

  v79 = v78;

  if (v79)
  {
    v80 = v1[9];
    v81 = v80;
    if (v80)
    {
      v82 = v80[3];
      v83 = v82;
      if (v82)
      {
        v84 = *(v82 + 2);
      }

      else
      {
        v84 = 0;
      }
    }

    else
    {
      v83 = 0;
      v84 = 0;
    }

    v85 = v84;
    v86 = _NRKeyCreateLogString();
    [v4 appendFormat:@"\n\t\tClass D Shared Secret: %@", v86];
  }

  v87 = v1[10];
  v88 = v87;
  if (v87)
  {
    v89 = *(v87 + 1);
  }

  else
  {
    v89 = 0;
  }

  v90 = v89;

  if (v90)
  {
    v91 = v1[10];
    v92 = v91;
    if (v91)
    {
      v93 = *(v91 + 1);
    }

    else
    {
      v93 = 0;
    }

    v94 = v93;
    v95 = sub_10015E4BC(v94);
    v96 = _NRKeyCreateLogString();
    [v4 appendFormat:@"\n\t\tClass C Remote Public Key: %@", v96];
  }

  v97 = v1[10];
  v98 = v97;
  if (v97)
  {
    v99 = *(v97 + 2);
  }

  else
  {
    v99 = 0;
  }

  v100 = v99;

  if (v100)
  {
    v101 = v1[10];
    v102 = v101;
    if (v101)
    {
      v103 = *(v101 + 2);
    }

    else
    {
      v103 = 0;
    }

    v104 = v103;
    v105 = sub_10015E4BC(v104);
    v106 = _NRKeyCreateLogString();
    [v4 appendFormat:@"\n\t\tClass C Local Public Key: %@", v106];
  }

  v107 = v1[10];
  v108 = v107;
  if (v107)
  {
    v109 = *(v107 + 3);
  }

  else
  {
    v109 = 0;
  }

  v110 = v109;

  if (v110)
  {
    v111 = v1[10];
    v112 = v111;
    if (v111)
    {
      v113 = v111[3];
      v114 = v113;
      if (v113)
      {
        v115 = *(v113 + 2);
      }

      else
      {
        v115 = 0;
      }
    }

    else
    {
      v114 = 0;
      v115 = 0;
    }

    v116 = v115;
    v117 = _NRKeyCreateLogString();
    [v4 appendFormat:@"\n\t\tClass C Shared Secret: %@", v117];
  }

  v118 = v1[11];
  v119 = v118;
  if (v118)
  {
    v120 = *(v118 + 1);
  }

  else
  {
    v120 = 0;
  }

  v121 = v120;

  if (v121)
  {
    v122 = v1[11];
    v123 = v122;
    if (v122)
    {
      v124 = *(v122 + 1);
    }

    else
    {
      v124 = 0;
    }

    v125 = v124;
    v126 = sub_10015E4BC(v125);
    v127 = _NRKeyCreateLogString();
    [v4 appendFormat:@"\n\t\tClass A Remote Public Key: %@", v127];
  }

  v128 = v1[11];
  v129 = v128;
  if (v128)
  {
    v130 = *(v128 + 2);
  }

  else
  {
    v130 = 0;
  }

  v131 = v130;

  if (v131)
  {
    v132 = v1[11];
    v133 = v132;
    if (v132)
    {
      v134 = *(v132 + 2);
    }

    else
    {
      v134 = 0;
    }

    v135 = v134;
    v136 = sub_10015E4BC(v135);
    v137 = _NRKeyCreateLogString();
    [v4 appendFormat:@"\n\t\tClass A Local Public Key: %@", v137];
  }

  v138 = v1[11];
  v139 = v138;
  if (v138)
  {
    v140 = *(v138 + 3);
  }

  else
  {
    v140 = 0;
  }

  v141 = v140;

  if (v141)
  {
    v142 = v1[11];
    v143 = v142;
    if (v142)
    {
      v144 = v142[3];
      v145 = v144;
      if (v144)
      {
        v146 = *(v144 + 2);
      }

      else
      {
        v146 = 0;
      }
    }

    else
    {
      v145 = 0;
      v146 = 0;
    }

    v147 = v146;
    v148 = _NRKeyCreateLogString();
    [v4 appendFormat:@"\n\t\tClass A Shared Secret: %@", v148];
  }

  v149 = sub_100003490();
  dispatch_assert_queue_V2(v149);

  v150 = sub_1001672A0(v1, @"0");
  if (v150)
  {
    v151 = sub_100003490();
    dispatch_assert_queue_V2(v151);

    v152 = sub_1001672A0(v1, @"0");
    [v4 appendFormat:@"\n\t\tClass D Local Inner Endpoint: %@", v152];
  }

  v153 = sub_100003490();
  dispatch_assert_queue_V2(v153);

  v154 = sub_1001677D0(v1, @"0");
  if (v154)
  {
    v155 = sub_100003490();
    dispatch_assert_queue_V2(v155);

    v156 = sub_1001677D0(v1, @"0");
    [v4 appendFormat:@"\n\t\tClass D Remote Inner Endpoint: %@", v156];
  }

  v157 = sub_100003490();
  dispatch_assert_queue_V2(v157);

  v158 = sub_1001679E0(v1, @"0");
  if (v158)
  {
    v159 = sub_100003490();
    dispatch_assert_queue_V2(v159);

    v160 = sub_1001679E0(v1, @"0");
    [v4 appendFormat:@"\n\t\tClass C Local Inner Endpoint: %@", v160];
  }

  v161 = sub_100003490();
  dispatch_assert_queue_V2(v161);

  v162 = sub_100167B9C(v1, @"0");
  if (v162)
  {
    v163 = sub_100003490();
    dispatch_assert_queue_V2(v163);

    v164 = sub_100167B9C(v1, @"0");
    [v4 appendFormat:@"\n\t\tClass C Remote Inner Endpoint: %@", v164];
  }

  v165 = v1[6];
  v166 = "D";
  if ((v165 & 0x1000) == 0)
  {
    v166 = "";
  }

  if ((v165 & 0x2000) != 0)
  {
    v167 = "C";
  }

  else
  {
    v167 = "";
  }

  v168 = "A";
  if ((v165 & 0x4000) == 0)
  {
    v168 = "";
  }

  if ((v165 & 0x400) != 0)
  {
    v169 = "C";
  }

  else
  {
    v169 = "";
  }

  [v4 appendFormat:@"\n\t\tKeys confirmed: %s%s%s, keys saved in keychain: %s", v166, v167, v168, v169];
  v170 = v1[12];

  if (v170)
  {
    v171 = v1[12];
    v172 = _NRCreateDataStringTruncated();
    [v4 appendFormat:@"\n\t\tReceived Proxy Notify Payload: %@", v172];
  }

  v173 = v4;

  return v173;
}

void *sub_1001672A0(void *a1, void *a2)
{
  v2 = a1;
  if (a1)
  {
    v3 = a2;
    v4 = sub_100003490();
    dispatch_assert_queue_V2(v4);

    v5 = [v2 localInnerIPv6AddressBytesClassD];

    if (!v5)
    {
      if (v2[18])
      {
        v6 = sub_10013FF60(v2) == 1;
      }

      else
      {
        v6 = 1;
      }

      v7 = objc_opt_self();
      v8 = sub_100003490();
      dispatch_assert_queue_V2(v8);

      v39 = xmmword_100196400;
      BYTE9(v39) = 13;
      if (v6)
      {
        v32 = v3;
        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        v9 = qword_100229428;
        v10 = [v9 countByEnumeratingWithState:&v35 objects:v40 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v36;
          while (2)
          {
            for (i = 0; i != v11; i = i + 1)
            {
              if (*v36 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v17 = [qword_100229428 objectForKeyedSubscript:*(*(&v35 + 1) + 8 * i)];
              v18 = [v17 localInnerIPv6AddressBytesClassD];

              if (v18)
              {
                v33 = 0;
                v34 = 0;
                v19 = [v17 localInnerIPv6AddressBytesClassD];
                v20 = [v19 length];

                if (v20 != 16)
                {
                  goto LABEL_33;
                }

                v21 = [v17 localInnerIPv6AddressBytesClassD];
                [v21 getBytes:&v33 length:16];

                objc_opt_self();
                if (WORD1(v34) && WORD2(v34))
                {
                  if (qword_100229488 != -1)
                  {
                    dispatch_once(&qword_100229488, &stru_1001FD018);
                  }

                  if (_NRLogIsLevelEnabled())
                  {
                    if (qword_100229488 != -1)
                    {
                      dispatch_once(&qword_100229488, &stru_1001FD018);
                    }

                    v23 = qword_100229480;
                    v24 = [v17 localInnerIPv6AddressBytesClassD];
                    IPv6AddrStringFromData = createIPv6AddrStringFromData();
                    _NRLogWithArgs(v23, 0, "%s%.30s:%-4d reusing valid address from %@ : %@", "", "+[NRDLocalDevice createNewLocalClassDAddrData:]", 4377, v17, IPv6AddrStringFromData);
                  }

LABEL_33:
                  v22 = [v17 localInnerIPv6AddressBytesClassD];

                  v3 = v32;
                  goto LABEL_34;
                }

                if (qword_100229488 != -1)
                {
                  dispatch_once(&qword_100229488, &stru_1001FD018);
                }

                if (_NRLogIsLevelEnabled())
                {
                  if (qword_100229488 != -1)
                  {
                    dispatch_once(&qword_100229488, &stru_1001FD018);
                  }

                  v14 = qword_100229480;
                  v15 = [v17 localInnerIPv6AddressBytesClassD];
                  v16 = createIPv6AddrStringFromData();
                  _NRLogWithArgs(v14, 0, "%s%.30s:%-4d ignoring invalid address from %@ : %@", "", "+[NRDLocalDevice createNewLocalClassDAddrData:]", 4374, v17, v16);
                }
              }
            }

            v11 = [v9 countByEnumeratingWithState:&v35 objects:v40 count:16];
            if (v11)
            {
              continue;
            }

            break;
          }
        }

        sub_1001687DC(v7, &v39);
        v3 = v32;
      }

      else
      {
        HIBYTE(v39) = 1;
      }

      v22 = [[NSData alloc] initWithBytes:&v39 length:16];
LABEL_34:
      [v2 setLocalInnerIPv6AddressBytesClassD:v22];

      v26 = objc_opt_self();
      sub_1001629FC(v26, 0);
      if (qword_100229488 != -1)
      {
        dispatch_once(&qword_100229488, &stru_1001FD018);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100229488 != -1)
        {
          dispatch_once(&qword_100229488, &stru_1001FD018);
        }

        v27 = qword_100229480;
        v28 = [v2 localInnerIPv6AddressBytesClassD];
        v29 = createIPv6AddrStringFromData();
        _NRLogWithArgs(v27, 0, "%s%.30s:%-4d Generated new local classD inner address %@ for %@", "", "[NRDLocalDevice copyLocalClassDInnerEndpointWithPort:]", 4536, v29, v2);
      }
    }

    v30 = [v2 localInnerIPv6AddressBytesClassD];
    v2 = sub_100167F00(NRDLocalDevice, v30, v3);
  }

  return v2;
}

void *sub_1001677D0(void *a1, void *a2)
{
  v2 = a1;
  if (a1)
  {
    v3 = a2;
    v4 = sub_100003490();
    dispatch_assert_queue_V2(v4);

    v5 = [v2 remoteInnerIPv6AddressBytesClassD];

    if (!v5)
    {
      if (v2[18])
      {
        v6 = sub_10013FF60(v2) == 1;
      }

      else
      {
        v6 = 1;
      }

      v7 = objc_opt_self();
      v8 = sub_100003490();
      dispatch_assert_queue_V2(v8);

      v16 = xmmword_1001964A0;
      if (v6)
      {
        sub_1001687DC(v7, &v16);
      }

      else
      {
        HIBYTE(v16) = 2;
      }

      v9 = [[NSData alloc] initWithBytes:&v16 length:16];
      [v2 setRemoteInnerIPv6AddressBytesClassD:v9];

      v10 = objc_opt_self();
      sub_1001629FC(v10, 0);
      if (qword_100229488 != -1)
      {
        dispatch_once(&qword_100229488, &stru_1001FD018);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100229488 != -1)
        {
          dispatch_once(&qword_100229488, &stru_1001FD018);
        }

        v11 = qword_100229480;
        v12 = [v2 remoteInnerIPv6AddressBytesClassD];
        IPv6AddrStringFromData = createIPv6AddrStringFromData();
        _NRLogWithArgs(v11, 0, "%s%.30s:%-4d Generated new remote classD inner address %@ for %@", "", "[NRDLocalDevice copyRemoteClassDInnerEndpointWithPort:]", 4563, IPv6AddrStringFromData, v2);
      }
    }

    v14 = [v2 remoteInnerIPv6AddressBytesClassD];
    v2 = sub_100167F00(NRDLocalDevice, v14, v3);
  }

  return v2;
}

uint64_t sub_1001679E0(void *a1, void *a2)
{
  v3 = a2;
  v4 = sub_100003490();
  dispatch_assert_queue_V2(v4);

  v5 = [a1 localInnerIPv6AddressBytesClassC];

  if (!v5)
  {
    v14 = 0uLL;
    sub_100168638(a1, &v14);
    BYTE9(v14) = 12;
    v6 = [[NSData alloc] initWithBytes:&v14 length:16];
    [a1 setLocalInnerIPv6AddressBytesClassC:v6];

    v7 = objc_opt_self();
    sub_1001629FC(v7, 0);
    if (qword_100229488 != -1)
    {
      dispatch_once(&qword_100229488, &stru_1001FD018);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100229488 != -1)
      {
        dispatch_once(&qword_100229488, &stru_1001FD018);
      }

      v8 = qword_100229480;
      v9 = [a1 localInnerIPv6AddressBytesClassC];
      IPv6AddrStringFromData = createIPv6AddrStringFromData();
      _NRLogWithArgs(v8, 0, "%s%.30s:%-4d Generated new local classC inner address %@ for %@", "", "[NRDLocalDevice copyLocalClassCInnerEndpointWithPort:]", 4551, IPv6AddrStringFromData, a1);
    }
  }

  v11 = [a1 localInnerIPv6AddressBytesClassC];
  v12 = sub_100167F00(NRDLocalDevice, v11, v3);

  return v12;
}

void *sub_100167B9C(void *a1, void *a2)
{
  v2 = a1;
  if (a1)
  {
    v3 = a2;
    v4 = sub_100003490();
    dispatch_assert_queue_V2(v4);

    v5 = [v2 remoteInnerIPv6AddressBytesClassC];

    if (!v5)
    {
      v13 = 0uLL;
      sub_100167D5C(v2, &v13);
      BYTE9(v13) = 12;
      v6 = [[NSData alloc] initWithBytes:&v13 length:16];
      [v2 setRemoteInnerIPv6AddressBytesClassC:v6];

      v7 = objc_opt_self();
      sub_1001629FC(v7, 0);
      if (qword_100229488 != -1)
      {
        dispatch_once(&qword_100229488, &stru_1001FD018);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100229488 != -1)
        {
          dispatch_once(&qword_100229488, &stru_1001FD018);
        }

        v8 = qword_100229480;
        v9 = [v2 remoteInnerIPv6AddressBytesClassC];
        IPv6AddrStringFromData = createIPv6AddrStringFromData();
        _NRLogWithArgs(v8, 0, "%s%.30s:%-4d Generated new remote classC inner address %@ for %@", "", "[NRDLocalDevice copyRemoteClassCInnerEndpointWithPort:]", 4578, IPv6AddrStringFromData, v2);
      }
    }

    v11 = [v2 remoteInnerIPv6AddressBytesClassC];
    v2 = sub_100167F00(NRDLocalDevice, v11, v3);
  }

  return v2;
}

double sub_100167D5C(void *a1, _OWORD *a2)
{
  v4 = sub_100003490();
  dispatch_assert_queue_V2(v4);

  if (!a2)
  {
    v9 = sub_10015B480();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v11 = sub_10015B480();
      _NRLogWithArgs(v11, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (outBytes) != ((void*)0)", "", "[NRDLocalDevice writeRemoteClassDInnerAddressBytes:]", 4775);
    }

    v12 = _os_log_pack_size();
    v13 = __error();
    v14 = _os_log_pack_fill(&v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v12, *v13, &_mh_execute_header, "%{public}s Assertion Failed: (outBytes) != ((void*)0)");
    *v14 = 136446210;
    *(v14 + 4) = "[NRDLocalDevice writeRemoteClassDInnerAddressBytes:]";
    sub_10015B480();
    _NRLogAbortWithPack();
  }

  v16 = 0;
  v17 = 0uLL;
  v18 = 0;
  v5 = sub_100003490();
  dispatch_assert_queue_V2(v5);

  v6 = sub_100003490();
  dispatch_assert_queue_V2(v6);

  v7 = sub_1001677D0(a1, @"0");
  sub_1001681A4(NRDLocalDevice, &v16, v7);

  result = *&v17;
  *a2 = v17;
  return result;
}

id sub_100167F00(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  objc_opt_self();
  if (!v4)
  {
    v9 = sub_10015B480();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v11 = sub_10015B480();
      _NRLogWithArgs(v11, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (addrData) != ((void*)0)", "", "+[NRDLocalDevice createEndpointFromAddrData:portString:]", 4196);
    }

    v12 = _os_log_pack_size();
    v13 = &v23[-((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0)];
    v14 = __error();
    v15 = _os_log_pack_fill(v13, v12, *v14, &_mh_execute_header, "%{public}s Assertion Failed: (addrData) != ((void*)0)");
    *v15 = 136446210;
    *(v15 + 4) = "+[NRDLocalDevice createEndpointFromAddrData:portString:]";
LABEL_15:
    sub_10015B480();
    _NRLogAbortWithPack();
  }

  if ([v4 length] != 16)
  {
    v16 = sub_10015B480();
    v17 = _NRLogIsLevelEnabled();

    if (v17)
    {
      v18 = sub_10015B480();
      _NRLogWithArgs(v18, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: addrData.length == sizeof(struct in6_addr)", "", "+[NRDLocalDevice createEndpointFromAddrData:portString:]", 4197);
    }

    v19 = _os_log_pack_size();
    v20 = &v23[-((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0)];
    v21 = __error();
    v22 = _os_log_pack_fill(v20, v19, *v21, &_mh_execute_header, "%{public}s Assertion Failed: addrData.length == sizeof(struct in6_addr)");
    *v22 = 136446210;
    *(v22 + 4) = "+[NRDLocalDevice createEndpointFromAddrData:portString:]";
    goto LABEL_15;
  }

  if (v5)
  {
    v6 = bswap32([v5 intValue]) >> 16;
  }

  else
  {
    LOWORD(v6) = 0;
  }

  memset(&v24[2], 0, 24);
  v24[0] = 7708;
  v24[1] = v6;
  [v4 getBytes:&v24[4] length:16];
  v7 = [NWAddressEndpoint endpointWithAddress:v24];

  return v7;
}

void sub_1001681A4(uint64_t a1, _OWORD *a2, void *a3)
{
  v4 = a3;
  objc_opt_self();
  v5 = sub_100003490();
  dispatch_assert_queue_V2(v5);

  if (!a2)
  {
    v7 = sub_10015B480();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v9 = sub_10015B480();
      _NRLogWithArgs(v9, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (outSockAddrBytes) != ((void*)0)", "", "+[NRDLocalDevice writeSockAddrBytes:forEndpoint:]", 4640);
    }

    v4 = _os_log_pack_size();
    v6 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    v10 = *__error();
    v11 = _os_log_pack_fill(v6, v4, v10, &_mh_execute_header, "%{public}s Assertion Failed: (outSockAddrBytes) != ((void*)0)");
    goto LABEL_15;
  }

  if (!v4)
  {
    v12 = sub_10015B480();
    v13 = _NRLogIsLevelEnabled();

    if (v13)
    {
      v14 = sub_10015B480();
      _NRLogWithArgs(v14, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (endpoint) != ((void*)0)", "", "+[NRDLocalDevice writeSockAddrBytes:forEndpoint:]", 4641);
    }

    v4 = _os_log_pack_size();
    v6 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    v15 = *__error();
    v11 = _os_log_pack_fill(v6, v4, v15, &_mh_execute_header, "%{public}s Assertion Failed: (endpoint) != ((void*)0)");
LABEL_15:
    *v11 = 136446210;
    *(v11 + 4) = "+[NRDLocalDevice writeSockAddrBytes:forEndpoint:]";
    sub_10015B480();
    _NRLogAbortWithPack();
    goto LABEL_16;
  }

  memset(v33, 0, 28);
  v6 = [v4 addressData];
  if ([v6 length] <= 0x1B)
  {
LABEL_16:
    v16 = sub_10015B480();
    v17 = _NRLogIsLevelEnabled();

    if (v17)
    {
      v18 = sub_10015B480();
      _NRLogWithArgs(v18, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: addressData.length >= sizeof(sin6); Bad addressData %@ %@", "", "+[NRDLocalDevice writeSockAddrBytes:forEndpoint:]", 4644, v6, v4);
    }

    v19 = _os_log_pack_size();
    v20 = *__error();
    v21 = _os_log_pack_fill(&v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v19, v20, &_mh_execute_header, "%{public}s Assertion Failed: addressData.length >= sizeof(sin6); Bad addressData %@ %@");
    goto LABEL_25;
  }

  [v6 getBytes:v33 length:28];
  if (BYTE1(v33[0]) != 30)
  {
    v22 = sub_10015B480();
    v23 = _NRLogIsLevelEnabled();

    if (v23)
    {
      v24 = sub_10015B480();
      _NRLogWithArgs(v24, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: sin6.sin6_family == 30; Bad address family localInnerAddressData %@ %@", "", "+[NRDLocalDevice writeSockAddrBytes:forEndpoint:]", 4647, v6, v4);
    }

    v25 = _os_log_pack_size();
    v26 = __error();
    v21 = _os_log_pack_fill(&v32 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0), v25, *v26, &_mh_execute_header, "%{public}s Assertion Failed: sin6.sin6_family == 30; Bad address family localInnerAddressData %@ %@");
    *v21 = 136446722;
    *(v21 + 4) = "+[NRDLocalDevice writeSockAddrBytes:forEndpoint:]";
LABEL_26:
    *(v21 + 12) = 2112;
    *(v21 + 14) = v6;
    *(v21 + 22) = 2112;
    *(v21 + 24) = v4;
    sub_10015B480();
    _NRLogAbortWithPack();
  }

  if (LOBYTE(v33[0]) <= 0x1Bu)
  {
    v27 = sub_10015B480();
    v28 = _NRLogIsLevelEnabled();

    if (v28)
    {
      v29 = sub_10015B480();
      _NRLogWithArgs(v29, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: sin6.sin6_len >= sizeof(sin6); Bad sa_len localInnerAddressData %@ %@", "", "+[NRDLocalDevice writeSockAddrBytes:forEndpoint:]", 4648, v6, v4);
    }

    v30 = _os_log_pack_size();
    v31 = *__error();
    v21 = _os_log_pack_fill(&v32 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0), v30, v31, &_mh_execute_header, "%{public}s Assertion Failed: sin6.sin6_len >= sizeof(sin6); Bad sa_len localInnerAddressData %@ %@");
LABEL_25:
    *v21 = 136446722;
    *(v21 + 4) = "+[NRDLocalDevice writeSockAddrBytes:forEndpoint:]";
    goto LABEL_26;
  }

  if (LOBYTE(v33[0]) != 28)
  {
    LOBYTE(v33[0]) = 28;
  }

  *a2 = v33[0];
  *(a2 + 12) = *(v33 + 12);
}

double sub_100168638(void *a1, _OWORD *a2)
{
  v4 = sub_100003490();
  dispatch_assert_queue_V2(v4);

  if (!a2)
  {
    v9 = sub_10015B480();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v11 = sub_10015B480();
      _NRLogWithArgs(v11, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (outBytes) != ((void*)0)", "", "[NRDLocalDevice writeLocalClassDInnerAddressBytes:]", 4743);
    }

    v12 = _os_log_pack_size();
    v13 = __error();
    v14 = _os_log_pack_fill(&v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v12, *v13, &_mh_execute_header, "%{public}s Assertion Failed: (outBytes) != ((void*)0)");
    *v14 = 136446210;
    *(v14 + 4) = "[NRDLocalDevice writeLocalClassDInnerAddressBytes:]";
    sub_10015B480();
    _NRLogAbortWithPack();
  }

  v16 = 0;
  v17 = 0uLL;
  v18 = 0;
  v5 = sub_100003490();
  dispatch_assert_queue_V2(v5);

  v6 = sub_100003490();
  dispatch_assert_queue_V2(v6);

  v7 = sub_1001672A0(a1, @"0");
  sub_1001681A4(NRDLocalDevice, &v16, v7);

  result = *&v17;
  *a2 = v17;
  return result;
}

void sub_1001687DC(uint64_t a1, _WORD *a2)
{
  objc_opt_self();
  v3 = sub_100003490();
  dispatch_assert_queue_V2(v3);

  v15 = a2;
  do
  {
    do
    {
LABEL_6:
      arc4random_buf(a2 + 5, 6uLL);
    }

    while (!a2[5]);
  }

  while (!a2[6] || !a2[7]);
  v4 = [[NSData alloc] initWithBytes:a2 length:16];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = qword_100229428;
  v5 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      v8 = 0;
      do
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = [qword_100229428 objectForKeyedSubscript:{*(*(&v17 + 1) + 8 * v8), v15}];
        v10 = [v9 localInnerIPv6AddressBytesClassD];
        if ([v10 isEqual:v4])
        {
          goto LABEL_4;
        }

        v11 = [v9 remoteInnerIPv6AddressBytesClassD];
        if ([v11 isEqual:v4])
        {
          goto LABEL_3;
        }

        v12 = [v9 localInnerIPv6AddressBytesClassC];
        if ([v12 isEqual:v4])
        {

LABEL_3:
LABEL_4:

LABEL_5:
          a2 = v15;
          goto LABEL_6;
        }

        v13 = [v9 remoteInnerIPv6AddressBytesClassC];
        v14 = [v13 isEqual:v4];

        if (v14)
        {
          goto LABEL_5;
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }
}

void *sub_1001689F8(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = sub_100003490();
    dispatch_assert_queue_V2(v2);

    return sub_1001677D0(v1, @"0");
  }

  return result;
}

void *sub_100168A4C(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = sub_100003490();
    dispatch_assert_queue_V2(v2);

    return sub_100167B9C(v1, @"0");
  }

  return result;
}

int64_t sub_100168AA0(id a1, NRDLocalDevice *a2, NRDLocalDevice *a3)
{
  v4 = a2;
  v5 = a3;
  if (!v4)
  {
    v11 = v5;
    if (!v5)
    {
      v12 = 0;
      nrUUID = 0;
      goto LABEL_15;
    }

    if ((v5->_databaseFlags & 3) == 0)
    {
      if (v5->_isEmptyPairing)
      {
        v9 = -1;
        goto LABEL_16;
      }

      v12 = 0;
      goto LABEL_14;
    }

LABEL_22:
    v9 = 1;
    goto LABEL_16;
  }

  databaseFlags = v4->_databaseFlags;
  if (!v5)
  {
    if (databaseFlags)
    {
      goto LABEL_4;
    }

    v11 = 0;
    if ((databaseFlags & 2) != 0)
    {
      v8 = v4->_databaseFlags & 2;
      goto LABEL_7;
    }

    if (!v4->_isEmptyPairing)
    {
      v12 = v4->_nrUUID;
      nrUUID = 0;
      goto LABEL_15;
    }

    goto LABEL_22;
  }

  if ((databaseFlags & 1) != (v5->_databaseFlags & 1))
  {
LABEL_4:
    v7 = (v4->_databaseFlags & 1) == 0;
    goto LABEL_8;
  }

  if (((databaseFlags >> 1) & 1) != ((v5->_databaseFlags >> 1) & 1))
  {
    v8 = v4->_databaseFlags & 2;
LABEL_7:
    v7 = v8 == 0;
LABEL_8:
    if (v7)
    {
      v9 = 1;
    }

    else
    {
      v9 = -1;
    }

    goto LABEL_11;
  }

  if (v4->_isEmptyPairing == v5->_isEmptyPairing)
  {
    v11 = v5;
    v12 = v4->_nrUUID;
LABEL_14:
    nrUUID = v11->_nrUUID;
LABEL_15:
    v9 = [(NSUUID *)v12 compare:nrUUID];

LABEL_16:
    v5 = v11;
    goto LABEL_11;
  }

  if (v4->_isEmptyPairing)
  {
    v9 = 1;
  }

  else
  {
    v9 = -1;
  }

LABEL_11:

  return v9;
}

NRDLocalDevice *sub_100168BE8(uint64_t a1, void *a2, int a3)
{
  v4 = a2;
  v5 = objc_opt_self();
  if (!v4)
  {
    v27 = sub_10015B480();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v29 = sub_10015B480();
      _NRLogWithArgs(v29, 17, "%s called with null bluetoothUUID");
LABEL_46:

      v25 = 0;
      goto LABEL_41;
    }

LABEL_47:
    v25 = 0;
    goto LABEL_41;
  }

  v6 = v5;
  if ((_NRIsUUIDNonZero() & 1) == 0)
  {
    v30 = sub_10015B480();
    v31 = _NRLogIsLevelEnabled();

    if (v31)
    {
      v29 = sub_10015B480();
      _NRLogWithArgs(v29, 17, "called with all-zero bluetoothUUID");
      goto LABEL_46;
    }

    goto LABEL_47;
  }

  v7 = sub_100003490();
  dispatch_assert_queue_V2(v7);

  sub_1001619D8(v6);
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v8 = qword_100229428;
  v9 = [v8 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v33;
LABEL_5:
    v12 = 0;
    while (1)
    {
      if (*v33 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = [qword_100229428 objectForKeyedSubscript:*(*(&v32 + 1) + 8 * v12)];
      v14 = v13;
      v15 = v13 ? *(v13 + 32) : 0;
      if ([v4 isEqual:v15])
      {
        break;
      }

      if (v10 == ++v12)
      {
        v16 = [v8 countByEnumeratingWithState:&v32 objects:v36 count:16];
        v10 = v16;
        if (v16)
        {
          goto LABEL_5;
        }

        goto LABEL_15;
      }
    }
  }

  else
  {
LABEL_15:
    v14 = 0;
  }

  if (v14)
  {
    v17 = 1;
  }

  else
  {
    v17 = a3 == 0;
  }

  if (!v17)
  {
    v14 = [NRDLocalDevice alloc];
    if (v14 && (v18 = objc_alloc_init(NSUUID), v14 = sub_10015D20C(v14, v18), v18, v14, v14))
    {
      v19 = 0;
      nrUUID = v14->_nrUUID;
    }

    else
    {
      nrUUID = 0;
      v19 = 1;
    }

    v21 = nrUUID;
    if (qword_100229488 != -1)
    {
      dispatch_once(&qword_100229488, &stru_1001FD018);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100229488 != -1)
      {
        dispatch_once(&qword_100229488, &stru_1001FD018);
      }

      _NRLogWithArgs(qword_100229480, 0, "%s%.30s:%-4d Creating new local device with random %@ for Bluetooth query %@", "", "+[NRDLocalDevice copyLocalDeviceForBluetoothUUID:shouldCreate:]", 2359, v21, v4);
    }

    [(NRDLocalDevice *)v14 setBluetoothUUID:v4];
    if (v19)
    {
      [qword_100229428 setObject:v14 forKeyedSubscript:v21];
    }

    else
    {
      if (!v14->_isEmptyPairing)
      {
        v14->_isEmptyPairing = 1;
        sub_10015D3F4(v14);
      }

      v14->_isChanged = 1;
      [qword_100229428 setObject:v14 forKeyedSubscript:v21];
      v22 = v14->_nrUUID;
      v23 = [(NRDLocalDevice *)v14 description];
      sub_1000059A8(v22, 5000, v23, 0);
    }

    v24 = objc_opt_self();
    sub_1001629FC(v24, 0);
  }

  v25 = v14;
  if (qword_100229488 != -1)
  {
    dispatch_once(&qword_100229488, &stru_1001FD018);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100229488 != -1)
    {
      dispatch_once(&qword_100229488, &stru_1001FD018);
    }

    _NRLogWithArgs(qword_100229480, 0, "%s%.30s:%-4d Returning %@ for Bluetooth query %@", "", "+[NRDLocalDevice copyLocalDeviceForBluetoothUUID:shouldCreate:]", 2368, v25, v4);
  }

LABEL_41:
  return v25;
}

NRDLocalDevice *sub_100169028(uint64_t a1, void *a2, int a3)
{
  v4 = a2;
  v5 = objc_opt_self();
  if (v4)
  {
    v6 = v5;
    v7 = sub_100003490();
    dispatch_assert_queue_V2(v7);

    sub_1001619D8(v6);
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v8 = qword_100229428;
    v9 = [v8 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v30;
LABEL_4:
      v12 = 0;
      while (1)
      {
        if (*v30 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [qword_100229428 objectForKeyedSubscript:*(*(&v29 + 1) + 8 * v12)];
        v14 = v13;
        v15 = v13 ? *(v13 + 40) : 0;
        if ([v4 isEqual:v15])
        {
          break;
        }

        if (v10 == ++v12)
        {
          v16 = [v8 countByEnumeratingWithState:&v29 objects:v33 count:16];
          v10 = v16;
          if (v16)
          {
            goto LABEL_4;
          }

          goto LABEL_14;
        }
      }
    }

    else
    {
LABEL_14:
      v14 = 0;
    }

    if (!v14 && a3)
    {
      v14 = [NRDLocalDevice alloc];
      if (v14 && (v17 = objc_alloc_init(NSUUID), v14 = sub_10015D20C(v14, v17), v17, v14, v14))
      {
        v18 = 0;
        nrUUID = v14->_nrUUID;
      }

      else
      {
        nrUUID = 0;
        v18 = 1;
      }

      v20 = nrUUID;
      if (qword_100229488 != -1)
      {
        dispatch_once(&qword_100229488, &stru_1001FD018);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100229488 != -1)
        {
          dispatch_once(&qword_100229488, &stru_1001FD018);
        }

        _NRLogWithArgs(qword_100229480, 0, "%s%.30s:%-4d Creating new local device with random %@ for IDSDeviceID query %@", "", "+[NRDLocalDevice copyLocalDeviceForIDSDeviceID:shouldCreate:]", 2393, v20, v4);
      }

      [(NRDLocalDevice *)v14 setIdsDeviceID:v4];
      if (v18)
      {
        [qword_100229428 setObject:v14 forKeyedSubscript:v20];
      }

      else
      {
        if (!v14->_isEmptyPairing)
        {
          v14->_isEmptyPairing = 1;
          sub_10015D3F4(v14);
        }

        v14->_isChanged = 1;
        [qword_100229428 setObject:v14 forKeyedSubscript:v20];
        v21 = v14->_nrUUID;
        v22 = [(NRDLocalDevice *)v14 description];
        sub_1000059A8(v21, 5000, v22, 0);
      }

      v23 = objc_opt_self();
      sub_1001629FC(v23, 0);
    }

    v24 = v14;
    if (qword_100229488 != -1)
    {
      dispatch_once(&qword_100229488, &stru_1001FD018);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100229488 != -1)
      {
        dispatch_once(&qword_100229488, &stru_1001FD018);
      }

      _NRLogWithArgs(qword_100229480, 0, "%s%.30s:%-4d Returning %@ for IDSDeviceID query %@", "", "+[NRDLocalDevice copyLocalDeviceForIDSDeviceID:shouldCreate:]", 2402, v24, v4);
    }
  }

  else
  {
    v26 = sub_10015B480();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v28 = sub_10015B480();
      _NRLogWithArgs(v28, 17, "%s called with null idsDeviceID", "+[NRDLocalDevice copyLocalDeviceForIDSDeviceID:shouldCreate:]");
    }

    v24 = 0;
  }

  return v24;
}

uint64_t sub_100169428(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  if ((*(a1 + 15) & 1) == 0)
  {
    *(a1 + 15) = 1;
    if (*(a1 + 144))
    {
      v2 = +[NRDeviceOperationalProperties copyPropertiesForDefaultPairedPhone];
      v3 = [v2 allowedLinkTypes];
      v4 = [*(a1 + 144) allowedLinkTypes];
      v5 = [v3 isEqualToArray:v4];

      if (v5)
      {
        *(a1 + 10) = 1;
      }
    }

    else
    {
      *(a1 + 10) = 1;
    }
  }

  return *(a1 + 10) & 1;
}

void sub_1001694E4(void *a1, int a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = a3;
  v12 = [[NSString alloc] initWithFormat:v11 arguments:&a9];

  v13 = a1[3];
  v14 = v12;
  v15 = v13;
  v16 = [a1 description];
  sub_1000059A8(v15, a2, v16, v14);
}

void sub_100169594(uint64_t a1)
{
  sub_100169658(NRDLocalDevice, (*(a1 + 160) & 0xFFFFFFFFFFFFFFFELL | [*(a1 + 144) usesTLS]), *(a1 + 24), 0);
  v2 = a1;
  objc_opt_self();
  v3 = [*(a1 + 144) usesTLS];
  v4 = *(a1 + 24);

  sub_1001627AC(NRDLocalDevice, v3, v4);
  sub_100169848(NRDLocalDevice, 0, *(a1 + 24), 0);
  v5 = *(a1 + 24);

  sub_100169B38(NRDLocalDevice, v5);
}

void sub_100169658(uint64_t a1, char *a2, void *a3, int a4)
{
  LODWORD(v4) = a4;
  v20 = a3;
  v6 = objc_opt_self();
  v7 = sub_100003490();
  dispatch_assert_queue_V2(v7);

  if (v20)
  {
    v8 = sub_100163A30(v6, v20);
    if (v8)
    {
      if (v8[20] == a2)
      {
LABEL_4:

        goto LABEL_5;
      }
    }

    else
    {
      v13 = sub_10015B480();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v15 = sub_10015B480();
        _NRLogWithArgs(v15, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (localDevice) != ((void*)0)", "", "+[NRDLocalDevice updateRemoteDeviceFlagsInner:nrUUID:saveToDisk:]", 4085);
      }

      v4 = _os_log_pack_size();
      a2 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
      v16 = __error();
      v17 = _os_log_pack_fill(a2, v4, *v16, &_mh_execute_header, "%{public}s Assertion Failed: (localDevice) != ((void*)0)");
      *v17 = 136446210;
      *(v17 + 4) = "+[NRDLocalDevice updateRemoteDeviceFlagsInner:nrUUID:saveToDisk:]";
      sub_10015B480();
      v8 = _NRLogAbortWithPack();
    }

    v18 = v8;
    [v8 setRemoteFlags:{a2, v20}];
    if (v4)
    {
      v19 = objc_opt_self();
      sub_1001629FC(v19, 0);
    }

    v8 = v18;
    goto LABEL_4;
  }

  v10 = sub_10015B480();
  v11 = _NRLogIsLevelEnabled();

  if (v11)
  {
    v12 = sub_10015B480();
    _NRLogWithArgs(v12, 17, "%s called with null nrUUID", "+[NRDLocalDevice updateRemoteDeviceFlagsInner:nrUUID:saveToDisk:]");
    v8 = v12;
    goto LABEL_4;
  }

LABEL_5:
  v9 = v20;
}

void sub_100169848(uint64_t a1, void *a2, void *a3, int a4)
{
  LODWORD(v4) = a4;
  v25 = a2;
  v6 = a3;
  v7 = objc_opt_self();
  v8 = sub_100003490();
  dispatch_assert_queue_V2(v8);

  if (v6)
  {
    v9 = sub_100163A30(v7, v6);
    if (v9)
    {
      v8 = v9;
      if ([v25 isEqual:*(v9 + 96)])
      {
LABEL_4:

        goto LABEL_5;
      }
    }

    else
    {
      v13 = sub_10015B480();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v15 = sub_10015B480();
        _NRLogWithArgs(v15, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (localDevice) != ((void*)0)", "", "+[NRDLocalDevice updateReceivedProxyNotifyPayloadInner:nrUUID:saveToDisk:]", 4023);
      }

      v6 = _os_log_pack_size();
      v4 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
      v16 = __error();
      v17 = _os_log_pack_fill(v4, v6, *v16, &_mh_execute_header, "%{public}s Assertion Failed: (localDevice) != ((void*)0)");
      *v17 = 136446210;
      *(v17 + 4) = "+[NRDLocalDevice updateReceivedProxyNotifyPayloadInner:nrUUID:saveToDisk:]";
      sub_10015B480();
      _NRLogAbortWithPack();
    }

    if (v25 || v8[12].isa)
    {
      v18 = [v25 copy];
      [v8 setReceivedProxyNotifyPayload:v18];

      if ([(objc_class *)v8[18].isa proxyCapability]== 2)
      {
        if (v8[12].isa)
        {
          v19 = sub_100146010(v25);
          [(objc_class *)v8[18].isa setProxyProviderCriteria:v19];
        }

        else
        {
          [(objc_class *)v8[18].isa setProxyProviderCriteria:0];
        }

        if ([(objc_class *)v8[18].isa hasPoliciesForProxyCriteria])
        {
          v20 = sub_10015B480();
          v21 = _NRLogIsLevelEnabled();

          if (v21)
          {
            v22 = sub_10015B480();
            v23 = [(objc_class *)v8[18].isa proxyProviderCriteria];
            _NRLogWithArgs(v22, 0, "%s%.30s:%-4d received proxy criteria %@", "", "+[NRDLocalDevice updateReceivedProxyNotifyPayloadInner:nrUUID:saveToDisk:]", 4038, v23);
          }
        }
      }

      if (v4)
      {
        v24 = objc_opt_self();
        sub_1001629FC(v24, 0);
      }
    }

    goto LABEL_4;
  }

  v11 = sub_10015B480();
  v12 = _NRLogIsLevelEnabled();

  if (v12)
  {
    v8 = sub_10015B480();
    _NRLogWithArgs(v8, 17, "%s called with null nrUUID", "+[NRDLocalDevice updateReceivedProxyNotifyPayloadInner:nrUUID:saveToDisk:]");
    goto LABEL_4;
  }

LABEL_5:

  v10 = v25;
}

void sub_100169B38(uint64_t a1, void *a2)
{
  v14 = a2;
  v2 = objc_opt_self();
  v3 = sub_100003490();
  dispatch_assert_queue_V2(v3);

  if (v14)
  {
    v4 = sub_100163A30(v2, v14);
    if (!v4)
    {
      v8 = sub_10015B480();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v10 = sub_10015B480();
        _NRLogWithArgs(v10, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (localDevice) != ((void*)0)", "", "+[NRDLocalDevice suspendNonNearbyLinksForNRUUID:]", 4128);
      }

      v11 = _os_log_pack_size();
      v12 = __error();
      v13 = _os_log_pack_fill(&v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v11, *v12, &_mh_execute_header, "%{public}s Assertion Failed: (localDevice) != ((void*)0)");
      *v13 = 136446210;
      *(v13 + 4) = "+[NRDLocalDevice suspendNonNearbyLinksForNRUUID:]";
      sub_10015B480();
      _NRLogAbortWithPack();
    }

    v4[11] = 1;
    goto LABEL_4;
  }

  v5 = sub_10015B480();
  v6 = _NRLogIsLevelEnabled();

  if (v6)
  {
    v7 = sub_10015B480();
    _NRLogWithArgs(v7, 17, "%s called with null nrUUID", "+[NRDLocalDevice suspendNonNearbyLinksForNRUUID:]");
    v4 = v7;
LABEL_4:
  }
}

void sub_100169CF4(uint64_t a1, void *a2, uint64_t a3, int a4, int a5, void *a6, int a7, int a8, unsigned __int8 a9, char a10, uint64_t a11, unsigned __int16 a12, void *a13, void *a14, void *a15, void *a16, void *a17)
{
  v129 = a4;
  LODWORD(v130) = a8;
  LODWORD(v133) = a5;
  v128 = a3;
  v19 = a2;
  v134 = a6;
  v132 = a13;
  v20 = a14;
  v135 = a15;
  v136 = a16;
  v21 = a17;
  v22 = objc_opt_self();
  v23 = sub_100003490();
  dispatch_assert_queue_V2(v23);

  if (!v19)
  {
    v106 = sub_10015B480();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    v24 = v134;
    v25 = v132;
    if (!IsLevelEnabled)
    {
      goto LABEL_144;
    }

    v108 = sub_10015B480();
    _NRLogWithArgs(v108, 17, "%s called with null nrUUID");
LABEL_169:

    goto LABEL_144;
  }

  if ((_NRIsUUIDNonZero() & 1) == 0)
  {
    v109 = sub_10015B480();
    v110 = _NRLogIsLevelEnabled();

    v24 = v134;
    v25 = v132;
    if (v110)
    {
      v111 = sub_10015B480();
      _NRLogWithArgs(v111, 17, "called with all-zero nrUUID");
    }

    goto LABEL_144;
  }

  v24 = v134;
  if (!v21)
  {
    v112 = sub_10015B480();
    v113 = _NRLogIsLevelEnabled();

    v25 = v132;
    if (!v113)
    {
      goto LABEL_144;
    }

    v108 = sub_10015B480();
    _NRLogWithArgs(v108, 17, "%s called with null completionBlock");
    goto LABEL_169;
  }

  v131 = v21;
  v21 = a9;
  if (!v134 && (v133 & 1) == 0 && (a10 & 1) == 0 && (a9 & 1) == 0)
  {
    if (qword_100229488 != -1)
    {
      dispatch_once(&qword_100229488, &stru_1001FD018);
    }

    v21 = v131;
    v25 = v132;
    if (_NRLogIsLevelEnabled())
    {
      if (qword_100229488 != -1)
      {
        dispatch_once(&qword_100229488, &stru_1001FD018);
      }

      _NRLogWithArgs(qword_100229480, 17, "outOfBandKey was nil and !wasInitiallySetupUsingIDSPairing and !isModernPairing and !isExternalPairing for NRUUID %@", v19);
    }

    (v131)[2](v131, 22, @"outOfBandKey was nil and !wasInitiallySetupUsingIDSPairing and !isModernPairing and !isExternalPairing");
    goto LABEL_144;
  }

  if (a7)
  {
    if (qword_100229488 != -1)
    {
      dispatch_once(&qword_100229488, &stru_1001FD018);
    }

    v21 = v131;
    v25 = v132;
    v26 = &qword_100229000;
    if (!_NRLogIsLevelEnabled())
    {
      goto LABEL_21;
    }

    if (qword_100229488 == -1)
    {
LABEL_20:
      _NRLogWithArgs(v26[144], 17, "pairWithSPPLink is not supported");
LABEL_21:
      (*(v21 + 2))(v21, 22, @"pairWithSPPLink is not supported");
      goto LABEL_144;
    }

LABEL_176:
    dispatch_once(&qword_100229488, &stru_1001FD018);
    goto LABEL_20;
  }

  v126 = a11;
  if (a11 || !a10)
  {
    v27 = sub_100163A30(v22, v19);
    v25 = v132;
    if (!v27)
    {
      v117 = sub_10015B480();
      v118 = _NRLogIsLevelEnabled();

      if (v118)
      {
        v119 = sub_10015B480();
        _NRLogWithArgs(v119, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (localDevice) != ((void*)0)", "", "+[NRDLocalDevice registerDeviceWithNRUUID:pairingProtocolVersion:peerNetworkRelayVersion:wasInitiallySetupUsingIDSPairing:outOfBandKey:pairWithSPPLink:isAltAccountPairing:isExternalPairing:isModernPairing:authMethodUsedForModernPairing:psm:bluetoothMACAddress:operationalProperties:peerEndpointDictionary:candidateService:completionBlock:]", 2574);
      }

      v120 = _os_log_pack_size();
      v26 = (&v123 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0));
      v121 = __error();
      v122 = _os_log_pack_fill(v26, v120, *v121, &_mh_execute_header, "%{public}s Assertion Failed: (localDevice) != ((void*)0)");
      *v122 = 136446210;
      *(v122 + 4) = "+[NRDLocalDevice registerDeviceWithNRUUID:pairingProtocolVersion:peerNetworkRelayVersion:wasInitiallySetupUsingIDSPairing:outOfBandKey:pairWithSPPLink:isAltAccountPairing:isExternalPairing:isModernPairing:authMethodUsedForModernPairing:psm:bluetoothMACAddress:operationalProperties:peerEndpointDictionary:candidateService:completionBlock:]";
      sub_10015B480();
      _NRLogAbortWithPack();
      goto LABEL_176;
    }

    v28 = v27;
    if (v27[12])
    {
      v27[12] = 0;
      if ((v27[8] & 1) == 0)
      {
        sub_10015D69C(v27);
        v28[13] = 1;
      }
    }

    v29 = *(v28 + 6);
    if ((v29 & 1) != 0 && *(v28 + 18))
    {
      v127 = v28;
      if ((v29 & 1) == 0)
      {
        goto LABEL_31;
      }
    }

    else
    {
      [v28 setOperationalProp:v20];
      v29 = *(v28 + 6);
      v127 = v28;
      if ((v29 & 1) == 0)
      {
LABEL_31:
        v125 = v22;
        if (v24)
        {
          v30 = v28;
          v31 = *(v28 + 22);
          if (v31)
          {
            v32 = v24;
            v33 = *(v31 + 16);
            *(v31 + 16) = v32;
          }

          else
          {
            v35 = sub_10015DD58([NRDLDKeychainItemData alloc], v24);
            v33 = *(v30 + 22);
            *(v30 + 22) = v35;
          }

          v28 = v30;

          v29 = *(v30 + 6);
        }

        if (a10)
        {
          [v28 setDatabaseFlags:v29 | 0x10];
          [v28 setAuthMethodUsedForModernPairing:v126];
          v29 = *(v28 + 6);
        }

        v36 = v29 & 0xFFFFFFFFFFFFFFF7;
        v37 = 8;
        if (!a9)
        {
          v37 = 0;
        }

        [v28 setDatabaseFlags:v36 | v37];
        v38 = [*(v28 + 18) allowedLinkSubtypes];
        v39 = [v38 containsObject:&off_100209E90];

        if (v39)
        {
          if (a9)
          {
            v40 = a12;
          }

          else
          {
            v40 = 137;
          }

          [v28 setPsm:v40];
        }

        v41 = 4;
        if (!v130)
        {
          v41 = 0;
        }

        [v28 setDatabaseFlags:*(v28 + 6) & 0xFFFFFFFFFFFFFFFBLL | v41];
        if (v25)
        {
          [v28 setBluetoothMACAddress:v25];
        }

        v130 = v20;
        if (v135)
        {
          if (qword_100229488 != -1)
          {
            dispatch_once(&qword_100229488, &stru_1001FD018);
          }

          v124 = v19;
          if (_NRLogIsLevelEnabled())
          {
            if (qword_100229488 != -1)
            {
              dispatch_once(&qword_100229488, &stru_1001FD018);
            }

            _NRLogWithArgs(qword_100229480, 0, "%s%.30s:%-4d peer ip addr: %@", "", "+[NRDLocalDevice registerDeviceWithNRUUID:pairingProtocolVersion:peerNetworkRelayVersion:wasInitiallySetupUsingIDSPairing:outOfBandKey:pairWithSPPLink:isAltAccountPairing:isExternalPairing:isModernPairing:authMethodUsedForModernPairing:psm:bluetoothMACAddress:operationalProperties:peerEndpointDictionary:candidateService:completionBlock:]", 2616, v135);
          }

          v42 = objc_alloc_init(NSMutableDictionary);
          v141 = 0u;
          v142 = 0u;
          v143 = 0u;
          v144 = 0u;
          v43 = v135;
          v44 = [v43 countByEnumeratingWithState:&v141 objects:v146 count:16];
          if (v44)
          {
            v45 = v44;
            v46 = *v142;
            do
            {
              for (i = 0; i != v45; i = i + 1)
              {
                if (*v142 != v46)
                {
                  objc_enumerationMutation(v43);
                }

                v48 = *(*(&v141 + 1) + 8 * i);
                v49 = [v43 objectForKeyedSubscript:v48];
                v50 = v48;
                if ([v50 unsignedShortValue] == 2)
                {

                  v50 = &off_100209EA8;
                }

                [v42 setObject:v49 forKeyedSubscript:v50];
              }

              v45 = [v43 countByEnumeratingWithState:&v141 objects:v146 count:16];
            }

            while (v45);
          }

          v51 = qword_100229448;
          if (!qword_100229448)
          {
            v52 = objc_alloc_init(NSMutableDictionary);
            v53 = qword_100229448;
            qword_100229448 = v52;

            v51 = qword_100229448;
          }

          v19 = v124;
          [v51 setObject:v42 forKeyedSubscript:v124];

          v24 = v134;
          v25 = v132;
          v28 = v127;
        }

        if (v136 && [*(v28 + 18) allowsDeviceDiscovery])
        {
          v54 = qword_100229450;
          if (!qword_100229450)
          {
            v55 = objc_alloc_init(NSMutableDictionary);
            v56 = qword_100229450;
            qword_100229450 = v55;

            v54 = qword_100229450;
          }

          v139 = 0u;
          v140 = 0u;
          v137 = 0u;
          v138 = 0u;
          v57 = [v54 allValues];
          v58 = [v57 countByEnumeratingWithState:&v137 objects:v145 count:16];
          if (v58)
          {
            v59 = v58;
            v60 = *v138;
            while (2)
            {
              for (j = 0; j != v59; j = j + 1)
              {
                if (*v138 != v60)
                {
                  objc_enumerationMutation(v57);
                }

                if ([*(*(&v137 + 1) + 8 * j) isEqualToString:v136])
                {
                  if (qword_100229488 != -1)
                  {
                    dispatch_once(&qword_100229488, &stru_1001FD018);
                  }

                  v21 = v131;
                  v34 = v127;
                  if (_NRLogIsLevelEnabled())
                  {
                    v100 = sub_10015B480();
                    _NRLogWithArgs(v100, 16, "%s%.30s:%-4d service %@ already exists", "", "+[NRDLocalDevice registerDeviceWithNRUUID:pairingProtocolVersion:peerNetworkRelayVersion:wasInitiallySetupUsingIDSPairing:outOfBandKey:pairWithSPPLink:isAltAccountPairing:isExternalPairing:isModernPairing:authMethodUsedForModernPairing:psm:bluetoothMACAddress:operationalProperties:peerEndpointDictionary:candidateService:completionBlock:]", 2638, v136);
                  }

                  (v131)[2](v131, 22, @"service already exists");

                  v20 = v130;
                  goto LABEL_143;
                }
              }

              v59 = [v57 countByEnumeratingWithState:&v137 objects:v145 count:16];
              if (v59)
              {
                continue;
              }

              break;
            }
          }

          [qword_100229450 setObject:v136 forKeyedSubscript:v19];
        }

        v62 = [NSString alloc];
        if (a10)
        {
          LogString = NRCreateStringFromPairingAuthMethod();
          v64 = v128;
          v65 = [v62 initWithFormat:@"ppv=%lld, %@", v128, LogString];
        }

        else
        {
          if (v133)
          {
            v66 = "IDS, ";
          }

          else
          {
            v66 = "";
          }

          LogString = _NRKeyCreateLogString();
          v64 = v128;
          v65 = [v62 initWithFormat:@"ppv=%lld, %sOOBK %@", v128, v66, LogString];
        }

        v67 = v65;

        v68 = *(v127 + 3);
        v69 = v67;
        v70 = v68;
        v71 = v127;
        v72 = v70;
        v73 = [v127 description];
        sub_1000059A8(v72, 5001, v73, v69);
        v132 = v69;

        v74 = v19;
        objc_opt_self();
        if (qword_100229440)
        {
          v75 = [qword_100229440 objectForKeyedSubscript:v74];

          if (v75)
          {
            v76 = nr_absolute_time();
            goto LABEL_108;
          }
        }

        else
        {
        }

        v75 = objc_alloc_init(NRAnalyticsLocalDevice);
        v76 = nr_absolute_time();
        if (!v75)
        {
          v77 = v127 + 176;
LABEL_109:
          v78 = v75;
          v79 = v74;
          objc_opt_self();
          if (v78)
          {
            v80 = qword_100229440;
            if (!qword_100229440)
            {
              v81 = objc_alloc_init(NSMutableDictionary);
              v82 = qword_100229440;
              qword_100229440 = v81;

              v80 = qword_100229440;
            }

            [v80 setObject:v78 forKeyedSubscript:v79];
          }

          sub_10016586C(v71);
          v83 = 32;
          if (!v133)
          {
            v83 = 0;
          }

          [v71 setDatabaseFlags:*(v71 + 6) & 0xFFFFFFFFFFFFFFDFLL | v83];
          if (v64)
          {
            [v71 setPairingProtocolVersion:v64];
          }

          v133 = v78;
          if (v129)
          {
            [v71 setLastSeenInnerLinkVersionHBO:?];
          }

          [v71 setDatabaseFlags:*(v71 + 6) | 2];
          v84 = v71;
          objc_opt_self();
          v85 = [*(v71 + 18) usesTLS];
          v86 = *(v71 + 3);

          sub_1001627AC(NRDLocalDevice, v85, v86);
          v87 = *(v71 + 6);
          if ((v87 & 0x10) != 0 || *v77 || v84[5])
          {
            v88 = qword_100229470;
            if (!qword_100229470)
            {
              v89 = objc_alloc_init(NSMutableDictionary);
              v90 = qword_100229470;
              qword_100229470 = v89;

              v88 = qword_100229470;
            }

            v91 = [v88 objectForKeyedSubscript:v79];
            v24 = v134;
            if (!v91)
            {
              v91 = objc_alloc_init(NSMutableArray);
            }

            if (qword_100229488 != -1)
            {
              dispatch_once(&qword_100229488, &stru_1001FD018);
            }

            if (_NRLogIsLevelEnabled())
            {
              if (qword_100229488 != -1)
              {
                dispatch_once(&qword_100229488, &stru_1001FD018);
              }

              _NRLogWithArgs(qword_100229480, 0, "%s%.30s:%-4d Started registration for %@", "", "+[NRDLocalDevice registerDeviceWithNRUUID:pairingProtocolVersion:peerNetworkRelayVersion:wasInitiallySetupUsingIDSPairing:outOfBandKey:pairWithSPPLink:isAltAccountPairing:isExternalPairing:isModernPairing:authMethodUsedForModernPairing:psm:bluetoothMACAddress:operationalProperties:peerEndpointDictionary:candidateService:completionBlock:]", 2687, v84);
            }

            v92 = objc_retainBlock(v131);
            [v91 addObject:v92];

            v21 = v131;
            [qword_100229470 setObject:v91 forKeyedSubscript:v79];
            v93 = 0;
          }

          else
          {
            [v84 setDatabaseFlags:v87 | 1];
            if (qword_100229488 != -1)
            {
              dispatch_once(&qword_100229488, &stru_1001FD018);
            }

            v24 = v134;
            v21 = v131;
            if (_NRLogIsLevelEnabled())
            {
              if (qword_100229488 != -1)
              {
                dispatch_once(&qword_100229488, &stru_1001FD018);
              }

              _NRLogWithArgs(qword_100229480, 0, "%s%.30s:%-4d Registered %@", "", "+[NRDLocalDevice registerDeviceWithNRUUID:pairingProtocolVersion:peerNetworkRelayVersion:wasInitiallySetupUsingIDSPairing:outOfBandKey:pairWithSPPLink:isAltAccountPairing:isExternalPairing:isModernPairing:authMethodUsedForModernPairing:psm:bluetoothMACAddress:operationalProperties:peerEndpointDictionary:candidateService:completionBlock:]", 2692, v84);
            }

            v101 = *(v127 + 3);
            v102 = [v84 description];
            sub_1000059A8(v101, 5007, v102, 0);

            v103 = v79;
            objc_opt_self();
            if (qword_100229440)
            {
              v91 = [qword_100229440 objectForKeyedSubscript:v103];

              v93 = 1;
              if (!v91)
              {
                goto LABEL_134;
              }

              *(v91 + 4) = nr_absolute_time();
              *(v91 + 16) = 1;
              [v91 submit];
              v104 = v103;
              objc_opt_self();
              if (qword_100229440)
              {
                [qword_100229440 setObject:0 forKeyedSubscript:v104];
                if (![qword_100229440 count])
                {
                  v105 = qword_100229440;
                  qword_100229440 = 0;
                }
              }

              v93 = 1;
            }

            else
            {
              v93 = 1;
              v91 = v103;
            }
          }

LABEL_134:
          v20 = v130;
          v94 = v84[4];
          if (v94)
          {
          }

          else
          {
            v95 = [*(v127 + 18) allowedLinkTypes];
            v96 = [v95 containsObject:&off_100209EC0];

            if (v96)
            {
              [v84 setDatabaseFlags:*(v127 + 6) | 0x80];
            }
          }

          v97 = objc_opt_self();
          sub_1001629FC(v97, 0);
          if (v93)
          {
            (*(v21 + 2))(v21, 0, 0);
          }

          v98 = sub_100003490();
          dispatch_async(v98, &stru_1001FAE90);

          objc_opt_self();
          if (qword_1002290C0 != -1)
          {
            dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
          }

          v34 = v127;
          v99 = qword_1002290B8;
          sub_1000BC670(v99);

LABEL_143:
          goto LABEL_144;
        }

LABEL_108:
        v75->_deviceRegistrationStart = v76;
        v77 = v71 + 176;
        v75->_devicePairedWithOOBKey = *(v71 + 22) != 0;
        goto LABEL_109;
      }
    }

    if ((v29 & 2) != 0)
    {
      v21 = v131;
      if (qword_100229488 != -1)
      {
        dispatch_once(&qword_100229488, &stru_1001FD018);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100229488 != -1)
        {
          dispatch_once(&qword_100229488, &stru_1001FD018);
        }

        _NRLogWithArgs(qword_100229480, 0, "%s%.30s:%-4d Skipping registration of already registered enabled device %@", "", "+[NRDLocalDevice registerDeviceWithNRUUID:pairingProtocolVersion:peerNetworkRelayVersion:wasInitiallySetupUsingIDSPairing:outOfBandKey:pairWithSPPLink:isAltAccountPairing:isExternalPairing:isModernPairing:authMethodUsedForModernPairing:psm:bluetoothMACAddress:operationalProperties:peerEndpointDictionary:candidateService:completionBlock:]", 2581, v127);
      }

      v131[2](v131, 0, 0);
      v34 = v127;
    }

    else
    {
      v21 = v131;
      if (qword_100229488 != -1)
      {
        dispatch_once(&qword_100229488, &stru_1001FD018);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100229488 != -1)
        {
          dispatch_once(&qword_100229488, &stru_1001FD018);
        }

        _NRLogWithArgs(qword_100229480, 0, "%s%.30s:%-4d Enabling device due to registration of already registered disabled device %@", "", "+[NRDLocalDevice registerDeviceWithNRUUID:pairingProtocolVersion:peerNetworkRelayVersion:wasInitiallySetupUsingIDSPairing:outOfBandKey:pairWithSPPLink:isAltAccountPairing:isExternalPairing:isModernPairing:authMethodUsedForModernPairing:psm:bluetoothMACAddress:operationalProperties:peerEndpointDictionary:candidateService:completionBlock:]", 2584, v127);
      }

      sub_10016AE40(v22, v19, v131);
      v34 = v127;
    }

    goto LABEL_143;
  }

  v114 = sub_10015B480();
  v115 = _NRLogIsLevelEnabled();

  v25 = v132;
  if (v115)
  {
    v116 = sub_10015B480();
    _NRLogWithArgs(v116, 17, "Modern pairing was specified with invalid auth method for NRUUID %@", v19);
  }

  v21 = v131;
  (v131)[2](v131, 22, @"Modern pairing was specified with invalid auth method ");
LABEL_144:
}