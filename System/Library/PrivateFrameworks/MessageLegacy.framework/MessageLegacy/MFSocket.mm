@interface MFSocket
@end

@implementation MFSocket

intptr_t __37___MFSocket__evaluateTrust_errorPtr___block_invoke(uint64_t a1, int a2)
{
  switch(a2)
  {
    case 2:
      *(*(*(a1 + 64) + 8) + 24) = 1;
      [*(a1 + 32) _setCertificateIsTrusted:1 forAccount:*(a1 + 40)];
      [objc_msgSend(MEMORY[0x277CF9710] "defaultTrustManager")];
      break;
    case 1:
      *(*(*(a1 + 64) + 8) + 24) = 1;
      break;
    case 0:
      *(*(*(a1 + 64) + 8) + 24) = 0;
      v3 = [MFError errorWithDomain:*MEMORY[0x277CCA670] code:-9825 localizedDescription:0];
      if (!v3)
      {
        v3 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1029 localizedDescription:0];
      }

      **(a1 + 72) = v3;
      v4 = MFLogGeneral();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        __37___MFSocket__evaluateTrust_errorPtr___block_invoke_cold_1(a1, v3);
      }

      break;
  }

  return dispatch_semaphore_signal(*(a1 + 56));
}

void __17___MFSocket_init__block_invoke()
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  if ([v0 objectForKey:@"SocketTimeout"])
  {
    v1 = [v0 integerForKey:@"SocketTimeout"];
    _DefaultTimeout = v1 & ~(v1 >> 31);
  }

  if ([objc_msgSend(MEMORY[0x277CBEBD0] "standardUserDefaults")])
  {
    _LowThroughputThreshold = 1;
    v2 = MFLogGeneral();
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      return;
    }

    LOWORD(v8[0]) = 0;
    v3 = "#Streams throughput monitoring is OFF";
    v4 = v2;
    v5 = 2;
  }

  else
  {
    v6 = MFLogGeneral();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      return;
    }

    if (_LowThroughputThreshold)
    {
      v7 = 0;
    }

    else
    {
      v7 = 512;
    }

    v8[0] = 67109120;
    v8[1] = v7;
    v3 = "#Streams low throughput threshold is %d bytes/sec";
    v4 = v6;
    v5 = 8;
  }

  _os_log_impl(&dword_258BDA000, v4, OS_LOG_TYPE_INFO, v3, v8, v5);
}

void *__44___MFSocket_connectToHost_withPort_service___block_invoke(uint64_t a1, void *a2, void *a3)
{
  result = [*(a1 + 32) stream];
  if (result == a2)
  {
    [*(*(a1 + 32) + 8) lock];
    if ([a3 isEqualToString:@"MFStreamEventCanAcceptBytes"])
    {
      *(*(a1 + 32) + 75) = 1;
    }

    else
    {
      v7 = [a3 isEqualToString:@"MFStreamEventHasBytesAvailable"];
      v8 = *(a1 + 32);
      if (v7)
      {
        *(v8 + 74) = 1;
        [*(a1 + 32) mf_lock];
        v9 = *(*(a1 + 32) + 48);
        [*(a1 + 32) mf_unlock];
        if (v9)
        {
          v10 = 2;
          [v9 setArgument:&v10 atIndex:2];
          [v9 invoke];
        }
      }

      else
      {
        *(v8 + 75) = 0;
        *(*(a1 + 32) + 74) = 0;
      }
    }

    [*(*(a1 + 32) + 8) broadcast];
    return [*(*(a1 + 32) + 8) unlock];
  }

  return result;
}

void __44___MFSocket_connectToHost_withPort_service___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x277D85DE8];
  if ([MFUserAgent() isForeground])
  {
    return;
  }

  Weak = objc_loadWeak((a1 + 40));
  v5 = Weak;
  if (Weak)
  {
    ++Weak[16];
  }

  v6 = MFLogGeneral();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __44___MFSocket_connectToHost_withPort_service___block_invoke_2_cold_1();
    if (v5)
    {
LABEL_6:
      if (v5[16] < 11)
      {
        return;
      }
    }
  }

  else if (v5)
  {
    goto LABEL_6;
  }

  v7 = MFLogGeneral();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 134218242;
    v15 = a2;
    v16 = 2112;
    v17 = [v5 stream];
    _os_log_impl(&dword_258BDA000, v7, OS_LOG_TYPE_INFO, "#Streams (%p) tearing down connection %@ due to low throughput", buf, 0x16u);
  }

  v12[0] = @"stream";
  v12[1] = @"threshold";
  v13[0] = [MEMORY[0x277CCACA8] stringWithFormat:@"%p", objc_msgSend(v5, "stream")];
  if (_LowThroughputThreshold)
  {
    v8 = 0;
  }

  else
  {
    v8 = 512;
  }

  v13[1] = [MEMORY[0x277CCABB0] numberWithInt:v8];
  +[MFPowerController powerlog:eventData:](MFPowerController, "powerlog:eventData:", @"LowThroughput", [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2]);
  v9 = [MFError errorWithDomain:*MEMORY[0x277CCA5B8] code:60 localizedDescription:0];
  if (!v9)
  {
    v9 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1029 localizedDescription:0];
  }

  v10 = v9;
  v11 = MFLogGeneral();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    __44___MFSocket_connectToHost_withPort_service___block_invoke_2_cold_2();
  }

  [*(a1 + 32) setError:v10];

  [v5 abort];
}

void __37___MFSocket__evaluateTrust_errorPtr___block_invoke_cold_1(uint64_t a1, void *a2)
{
  [a2 domain];
  v8 = 136315906;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_258BDA000, v2, v3, "*** _NSSocket.m:%s failed; socket=%p error=(%@,%ld)", v4, v5, v6, v7, v8);
}

void __44___MFSocket_connectToHost_withPort_service___block_invoke_2_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_8(v0, *MEMORY[0x277D85DE8]);
  v7 = 136315906;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_258BDA000, v1, v2, "*** _NSSocket.m:%s failed; socket=%p error=(%@,%ld)", v3, v4, v5, v6, v7);
}

@end