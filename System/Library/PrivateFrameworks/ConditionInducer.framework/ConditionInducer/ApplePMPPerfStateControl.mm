@interface ApplePMPPerfStateControl
- (BOOL)_disableConsistentPerfState;
- (BOOL)_enableConsistentPerfState:(unsigned int)state;
- (BOOL)_open:(unsigned int)_open;
- (BOOL)setupConnectionForPowerState:(unsigned int)state;
- (void)_copySelectorsForService;
- (void)tearDown;
@end

@implementation ApplePMPPerfStateControl

- (void)tearDown
{
  v5 = *MEMORY[0x277D85DE8];
  if (self->_connection)
  {
    [(ApplePMPPerfStateControl *)self _disableConsistentPerfState];
    IOServiceClose(self->_connection);
    self->_connection = 0;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v3 = *MEMORY[0x277D85F48];
      v4[0] = 67109120;
      v4[1] = v3;
      _os_log_impl(&dword_243E0F000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "PMP %u Connection Closed", v4, 8u);
    }
  }
}

- (BOOL)_enableConsistentPerfState:(unsigned int)state
{
  v28 = *MEMORY[0x277D85DE8];
  if (state > 2)
  {
    return 0;
  }

  self->_powerState = state;
  *input = 0u;
  v26 = 0u;
  v27 = 0xFFFFFFFFLL;
  if (LODWORD(self->_nDomains))
  {
    v5 = 0;
    v6 = 0;
    stateValues = self->_domainInfos[0].stateValues;
    stateCopy = state;
    do
    {
      v9 = stateValues[2];
      v10 = &stateValues[stateCopy];
      v11 = v9 == 0;
      if (v9)
      {
        v12 = &stateValues[stateCopy];
      }

      else
      {
        v12 = stateValues + 4;
      }

      v13 = *v12;
      if (v11)
      {
        v10 = stateValues + 5;
      }

      v14 = *v10;
      v15 = v13 << (v5 & 0x3C);
      input[v6 >> 4] |= v15;
      v16 = v14 << (v5 & 0x3C);
      input[(v6 >> 4) + 2] |= v16;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v17 = *(stateValues - 1);
        *buf = 138413314;
        v19 = v17;
        v20 = 2048;
        v21 = v15;
        v22 = 1024;
        *v23 = v6 >> 4;
        *&v23[4] = 2048;
        *&v23[6] = v16;
        *&v23[14] = 1024;
        *&v23[16] = (v6 >> 4) + 2;
        _os_log_impl(&dword_243E0F000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Setting Domain %@ 0x%llx at %u, 0x%llx at %u", buf, 0x2Cu);
      }

      ++v6;
      v5 += 4;
      stateValues += 7;
    }

    while (v6 < LODWORD(self->_nDomains));
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 134219008;
    v19 = input[0];
    v20 = 2048;
    v21 = input[1];
    v22 = 2048;
    *v23 = v26;
    *&v23[8] = 2048;
    *&v23[10] = *(&v26 + 1);
    *&v23[18] = 2048;
    v24 = v27;
    _os_log_impl(&dword_243E0F000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "PMP Enable {0x%llx, 0x%llx, 0x%llx, 0x%llx, 0x%llx}", buf, 0x34u);
  }

  return SetDVFSStates(self->_connection, input) == 0;
}

- (BOOL)_disableConsistentPerfState
{
  v23 = *MEMORY[0x277D85DE8];
  v22 = 0;
  *input = 0u;
  v21 = 0u;
  if (LODWORD(self->_nDomains))
  {
    v3 = 0;
    v4 = 0;
    p_currentMaxState = &self->_domainInfos[0].currentMaxState;
    v6 = MEMORY[0x277D86220];
    do
    {
      v7 = v3 & 0x3C;
      v8 = *p_currentMaxState;
      input[v4 >> 4] |= *(p_currentMaxState - 1) << (v3 & 0x3C);
      input[(v4 >> 4) + 2] |= v8 << (v3 & 0x3C);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v9 = *(p_currentMaxState - 6);
        v10 = *(p_currentMaxState - 1) << v7;
        v11 = *p_currentMaxState << v7;
        *buf = 138413314;
        v14 = v9;
        v15 = 2048;
        v16 = v10;
        v17 = 1024;
        *v18 = v4 >> 4;
        *&v18[4] = 2048;
        *&v18[6] = v11;
        *&v18[14] = 1024;
        *&v18[16] = (v4 >> 4) + 2;
        _os_log_impl(&dword_243E0F000, v6, OS_LOG_TYPE_INFO, "Setting Domain %@ 0x%llx at %u, 0x%llx at %u", buf, 0x2Cu);
      }

      ++v4;
      v3 += 4;
      p_currentMaxState += 7;
    }

    while (v4 < LODWORD(self->_nDomains));
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 134219008;
    v14 = input[0];
    v15 = 2048;
    v16 = input[1];
    v17 = 2048;
    *v18 = v21;
    *&v18[8] = 2048;
    *&v18[10] = *(&v21 + 1);
    *&v18[18] = 2048;
    v19 = v22;
    _os_log_impl(&dword_243E0F000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "PMP Disable {0x%llx, 0x%llx, 0x%llx, 0x%llx, 0x%llx}", buf, 0x34u);
  }

  self->_powerState = 3;
  return SetDVFSStates(self->_connection, input) == 0;
}

- (BOOL)_open:(unsigned int)_open
{
  v3 = IOServiceOpen(_open, *MEMORY[0x277D85F48], 0, &self->_connection);
  if (v3 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [ApplePMPPerfStateControl _open:v3];
  }

  return v3 == 0;
}

- (void)_copySelectorsForService
{
  if (self->_currentPMPVersion)
  {
    v2 = 2;
  }

  else
  {
    v2 = 13;
  }

  v3 = xmmword_243E248A0;
  v4 = &dword_27EDBE15C;
  v5 = 6;
  v6 = vdupq_n_s64(5uLL);
  do
  {
    if (vmovn_s64(vcgtq_u64(v6, v3)).u8[0])
    {
      *(v4 - 1) = v2;
    }

    if (vmovn_s64(vcgtq_u64(vdupq_n_s64(5uLL), *&v3)).i32[1])
    {
      *v4 = v2 + 1;
    }

    v3 = vaddq_s64(v3, vdupq_n_s64(2uLL));
    v2 += 2;
    v4 += 2;
    v5 -= 2;
  }

  while (v5);
}

- (BOOL)setupConnectionForPowerState:(unsigned int)state
{
  v56 = *MEMORY[0x277D85DE8];
  self->_currentPMPVersion = 0;
  v5 = *MEMORY[0x277CD28A0];
  v6 = IOServiceMatching("ApplePMP");
  MatchingService = IOServiceGetMatchingService(v5, v6);
  if (!MatchingService)
  {
    v8 = IOServiceMatching("ApplePMPv2");
    v9 = IOServiceGetMatchingService(v5, v8);
    if (!v9)
    {
      return v9;
    }

    MatchingService = v9;
    self->_currentPMPVersion = 1;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    currentPMPVersion = self->_currentPMPVersion;
    *buf = 67109120;
    *&buf[4] = currentPMPVersion;
    _os_log_impl(&dword_243E0F000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Setting PMP Version %u", buf, 8u);
  }

  [(ApplePMPPerfStateControl *)self _copySelectorsForService];
  bzero(self->_domainInfos, 0x700uLL);
  LODWORD(v9) = [(ApplePMPPerfStateControl *)self _open:MatchingService];
  if (v9)
  {
    LODWORD(v9) = self->_connection;
    if (!v9)
    {
LABEL_12:
      self->_nDomains = 0;
      return v9;
    }

    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    memset(buf, 0, sizeof(buf));
    outputCnt[0] = 1;
    v11 = IOConnectCallMethod(v9, gClientMethodSelectors, 0, 0, 0, 0, buf, outputCnt, 0, 0);
    if (v11)
    {
      v12 = v11;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
      {
        [ApplePMPPerfStateControl setupConnectionForPowerState:v12];
      }

      LOBYTE(v9) = 0;
      goto LABEL_12;
    }

    v13 = *buf;
    self->_nDomains = *buf;
    if (v13)
    {
      stateCopy = state;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        nDomains = self->_nDomains;
        *buf = 134217984;
        *&buf[4] = nDomains;
        _os_log_impl(&dword_243E0F000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Number of Domains %llu", buf, 0xCu);
      }

      if (self->_nDomains)
      {
        v15 = 0;
        v16 = MEMORY[0x277D86220];
        while (1)
        {
          LODWORD(v9) = self->_connection;
          if (!v9)
          {
            break;
          }

          v17 = self->_currentPMPVersion;
          *buf = v15;
          *outputStruct = 0;
          v41[0] = 0;
          v18 = v17 == 0;
          v19 = 16;
          if (v18)
          {
            v19 = 10;
          }

          outputStructCnt = v19;
          v20 = IOConnectCallMethod(v9, dword_27EDBE160, buf, 1u, 0, 0, 0, 0, outputStruct, &outputStructCnt);
          if (v20)
          {
            v21 = v20;
            if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
            {
              v35 = [MEMORY[0x277CCACA8] stringWithUTF8String:mach_error_string(v21)];
              outputCnt[0] = 67109378;
              outputCnt[1] = v21;
              LOWORD(outputCnt[2]) = 2112;
              *(&outputCnt[2] + 2) = v35;
              _os_log_fault_impl(&dword_243E0F000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "_getDVFSDomainName (0x%x - %@)", outputCnt, 0x12u);

              v16 = MEMORY[0x277D86220];
            }
          }

          if (outputStructCnt)
          {
            v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:outputStruct];
            if (!v22)
            {
              goto LABEL_49;
            }
          }

          else
          {
            v22 = &stru_28570BA10;
          }

          if (![(__CFString *)v22 length])
          {
            goto LABEL_49;
          }

          v23 = [(__CFString *)v22 copy];
          v24 = &self->_domainInfos[v15];
          name = v24->name;
          v24->name = v23;

          connection = self->_connection;
          if (connection)
          {
            v47 = 0u;
            v48 = 0u;
            v45 = 0u;
            v46 = 0u;
            v43 = 0u;
            v44 = 0u;
            memset(outputCnt, 0, sizeof(outputCnt));
            *buf = v15;
            LODWORD(outputStructCnt) = 3;
            v27 = IOConnectCallMethod(connection, dword_27EDBE15C, buf, 1u, 0, 0, outputCnt, &outputStructCnt, 0, 0);
            if (v27)
            {
              v28 = v27;
              if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
              {
                v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:mach_error_string(v28)];
                *outputStruct = 67109378;
                *&outputStruct[4] = v28;
                LOWORD(v41[0]) = 2112;
                *(v41 + 2) = v36;
                _os_log_fault_impl(&dword_243E0F000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "_getNumDVFSStates (0x%x - %@)", outputStruct, 0x12u);

                v16 = MEMORY[0x277D86220];
              }
            }

            v29 = *outputCnt;
            if (*outputCnt)
            {
              *&v24->currentMinState = *&outputCnt[2];
            }
          }

          else
          {
            v29 = 0;
          }

          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            currentMinState = v24->currentMinState;
            currentMaxState = v24->currentMaxState;
            *buf = 134218754;
            *&buf[4] = v29;
            *&buf[12] = 2112;
            *&buf[14] = v22;
            *&buf[22] = 2048;
            *&buf[24] = currentMinState;
            LOWORD(v50) = 2048;
            *(&v50 + 2) = currentMaxState;
            _os_log_impl(&dword_243E0F000, v16, OS_LOG_TYPE_INFO, "%llu states in Domains %@, Current Range: [%llu -> %llu]", buf, 0x2Au);
          }

          if (!v29)
          {
LABEL_49:

            goto LABEL_50;
          }

          if ([&unk_28570F8C0 count])
          {
            v32 = 0;
            while (1)
            {
              v33 = [&unk_28570F8C0 objectAtIndexedSubscript:v32];
              if ([(__CFString *)v22 hasPrefix:v33])
              {
                v34 = [v33 length] + 1;
                if (v34 >= [(__CFString *)v22 length])
                {
                  break;
                }
              }

              if (++v32 >= [&unk_28570F8C0 count])
              {
                goto LABEL_47;
              }
            }

            v24->stateValues[2] = v29 - 1;
            v24->stateValues[0] = 0;
            v24->stateValues[1] = (v29 - 1) >> 1;
          }

LABEL_47:

          ++v15;
          v16 = MEMORY[0x277D86220];
          if (v15 >= self->_nDomains)
          {
            goto LABEL_48;
          }
        }
      }

      else
      {
LABEL_48:
        LOBYTE(v9) = [(ApplePMPPerfStateControl *)self _enableConsistentPerfState:stateCopy];
      }
    }

    else
    {
LABEL_50:
      LOBYTE(v9) = 0;
    }
  }

  return v9;
}

- (void)_open:(mach_error_t)a1 .cold.1(mach_error_t a1)
{
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:mach_error_string(a1)];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_1(&dword_243E0F000, MEMORY[0x277D86220], v2, "IOServiceOpen (0x%x - %@)", v3, v4, v5, v6);
}

- (void)setupConnectionForPowerState:(mach_error_t)a1 .cold.1(mach_error_t a1)
{
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:mach_error_string(a1)];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_1(&dword_243E0F000, MEMORY[0x277D86220], v2, "_getNumDVFSDomains (0x%x - %@)", v3, v4, v5, v6);
}

@end