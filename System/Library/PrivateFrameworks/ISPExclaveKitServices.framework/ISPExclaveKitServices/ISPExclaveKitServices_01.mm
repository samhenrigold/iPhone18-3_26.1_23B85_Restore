uint64_t fidflowmodule_ekfidflow_channelfidsessionstart(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  v15 = 0;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v10 = 0u;
  v9 = 0u;
  v4 = tb_client_connection_message_construct();
  if (!v4)
  {
    tb_message_precheck_encoding();
    tb_message_raw_encode_u64();
    tb_message_raw_encode_u32();
    fidflowmodule_fidsessionconfig__raw_encode(v7, a2 + 4);
    tb_message_complete();
    v5 = tb_connection_send_query();
    if ((v5 & 0xFFFFFFF7) != 0)
    {
      v4 = v5;
      tb_client_connection_message_destruct();
    }

    else
    {
      tb_client_connection_message_destruct();
      return 4;
    }
  }

  return v4;
}

uint64_t fidflowmodule_ekfidflow_channelfidsessionstop(void *a1, unsigned int *a2, uint64_t a3)
{
  v3 = tb_client_connection_message_construct();
  if (!v3)
  {
    tb_message_precheck_encoding();
    tb_message_raw_encode_u64();
    tb_message_raw_encode_u32();
    tb_message_complete();
    v4 = tb_connection_send_query();
    if ((v4 & 0xFFFFFFF7) != 0)
    {
      v3 = v4;
      tb_client_connection_message_destruct();
    }

    else
    {
      tb_client_connection_message_destruct();
      return 4;
    }
  }

  return v3;
}

uint64_t fidflowmodule_ekfidflow_channelfidbracketcapture(void *a1, unsigned int *a2, uint64_t a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  v17 = 0;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  v11 = 0u;
  v4 = tb_client_connection_message_construct();
  if (!v4)
  {
    tb_message_precheck_encoding();
    tb_message_raw_encode_u64();
    tb_message_raw_encode_u32();
    tb_message_raw_encode_u8();
    v5 = (a2 + 2);
    v6 = 10;
    do
    {
      fidflowmodule_fidbiocapturedoublet__raw_encode(v9, v5);
      v5 += 12;
      --v6;
    }

    while (v6);
    tb_message_complete();
    v7 = tb_connection_send_query();
    if ((v7 & 0xFFFFFFF7) != 0)
    {
      v4 = v7;
      tb_client_connection_message_destruct();
    }

    else
    {
      tb_client_connection_message_destruct();
      return 4;
    }
  }

  return v4;
}

uint64_t fidflowmodule_ekfidflow__init(uint64_t *a1, uint64_t a2)
{
  tb_endpoint_set_interface_identifier();
  v3 = tb_client_connection_create_with_endpoint();
  result = tb_client_connection_activate();
  if (!result)
  {
    *a1 = v3;
  }

  return result;
}

uint64_t anstmodule_anstfaceposedegree__decode(uint64_t a1, void *a2)
{
  tb_message_decode_u64();
  if (*a2 == 0x9C1A4069785BB2FLL)
  {
    return 0;
  }

  if (*a2 == 0x2C7061AAF16187FFLL)
  {
    tb_message_decode_u32();
    return 0;
  }

  return 7;
}

uint64_t __anstmodule_anstfacev1502__v_decode_block_invoke(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    return 0;
  }

  v2 = 0;
  while (1)
  {
    memset(v4, 0, sizeof(v4));
    result = anstmodule_anstfacev1502__decode(*(a1 + 40), v4);
    if (result)
    {
      break;
    }

    if (++v2 >= *(a1 + 32))
    {
      return 0;
    }
  }

  return result;
}

uint64_t __anstmodule_anstobjectv1502__v_decode_block_invoke(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    return 0;
  }

  v2 = 0;
  while (1)
  {
    v5 = 0;
    memset(v4, 0, sizeof(v4));
    result = anstmodule_anstobjectv1502__decode(*(a1 + 40), v4);
    if (result)
    {
      break;
    }

    if (++v2 >= *(a1 + 32))
    {
      return 0;
    }
  }

  return result;
}

uint64_t attentionawarenessmodule_attentioninfo2__raw_decode(uint64_t a1, char *a2)
{
  tb_message_raw_decode_BOOL();
  tb_message_raw_decode_BOOL();
  tb_message_raw_decode_f32();
  tb_message_raw_decode_f32();
  tb_message_raw_decode_f32();
  tb_message_raw_decode_f32();
  tb_message_raw_decode_u64();
  v3 = *(a2 + 3);
  result = 7;
  if (v3 > 0x3D2738B860BC3A57)
  {
    if (v3 == 0x4FDB984F657766B3)
    {
      goto LABEL_7;
    }

    v5 = 0x3D2738B860BC3A58;
  }

  else
  {
    if (v3 == 0x9DE6C21734E76B63)
    {
      goto LABEL_7;
    }

    v5 = 0x694CCE200D3DDB4;
  }

  if (v3 != v5)
  {
    return result;
  }

LABEL_7:
  tb_message_raw_decode_f32();
  tb_message_raw_decode_f32();
  tb_message_raw_decode_f32();
  tb_message_raw_decode_u64();
  v6 = *(a2 + 6);
  result = 7;
  if (v6 <= 0x540E4F411BD8FE69)
  {
    if (v6 == 0xB2DCA7BD7FD685CLL || v6 == 0x37A32E6830CFDA17)
    {
      goto LABEL_17;
    }

    v7 = 0x489FC3D712823AF2;
  }

  else if (v6 > 0x6D019513B6874B79)
  {
    if (v6 == 0x755F17FCFA972511)
    {
      goto LABEL_17;
    }

    v7 = 0x6D019513B6874B7ALL;
  }

  else
  {
    if (v6 == 0x540E4F411BD8FE6ALL)
    {
      goto LABEL_17;
    }

    v7 = 0x64E16025E3B43FA8;
  }

  if (v6 != v7)
  {
    return result;
  }

LABEL_17:
  tb_message_raw_decode_u64();
  result = 0;
  v8 = *(a2 + 7);
  if (v8 <= 0x61712CD20EA23D34)
  {
    if (v8 == 0xE3995D86684768F7)
    {
      return result;
    }

    v9 = 0xF6549FD117FC2467;
    goto LABEL_23;
  }

  if (v8 != 0x61712CD20EA23D35 && v8 != 0x643FA57BEBB425D4)
  {
    v9 = 0x7CE0AE3EF231FCDCLL;
LABEL_23:
    if (v8 != v9)
    {
      return 7;
    }
  }

  return result;
}

uint64_t ispexclavekithardwaredefaultconfig_eklscconfig__raw_encode(uint64_t a1, unsigned __int16 *a2)
{
  tb_message_raw_encode_u16();
  tb_message_raw_encode_u16();
  tb_message_raw_encode_u16();
  tb_message_raw_encode_u16();
  tb_message_raw_encode_u16();
  tb_message_raw_encode_u16();
  tb_message_raw_encode_u32();
  tb_message_raw_encode_u32();
  tb_message_raw_encode_u32();
  v3 = a2 + 12;
  v4 = 11328;
  do
  {
    ++v3;
    result = tb_message_raw_encode_u16();
    --v4;
  }

  while (v4);
  return result;
}

uint64_t ispexclavekithardwaredefaultconfig_ekpdpconfig__raw_encode(uint64_t a1, uint64_t *a2)
{
  tb_message_raw_encode_u64();
  v3 = *a2;
  if (*a2 != 0x9F2753799C599BCDLL && v3 != 0x36E018811A0A63C9 && v3 != 0x5CC31B509520AF85)
  {
    ispexclavekithardwaredefaultconfig_ekpdpconfig__raw_encode_cold_2(v3);
  }

  tb_message_raw_encode_s32();
  tb_message_raw_encode_s32();
  tb_message_raw_encode_s32();
  tb_message_raw_encode_s32();
  for (i = 6; i != 1162; ++i)
  {
    tb_message_raw_encode_u32();
  }

  tb_message_raw_encode_u32();
  tb_message_raw_encode_u16();
  tb_message_raw_encode_u16();
  v7 = a2 + 4674;
  v8 = 16;
  do
  {
    tb_message_raw_encode_BOOL();
    tb_message_raw_encode_u64();
    v9 = *(v7 - 10);
    if (v9 > 0x57A59BECE08DD70ELL)
    {
      if (v9 != 0x57A59BECE08DD70FLL && v9 != 0x5CFC7CC9DC8905D6)
      {
LABEL_31:
        ispexclavekithardwaredefaultconfig_ekpdpconfig__raw_encode_cold_1(v9);
      }
    }

    else if (v9 != 0x7B516A2F3453C38 && v9 != 0x24938A0395A45F9FLL)
    {
      goto LABEL_31;
    }

    tb_message_raw_encode_u16();
    v7 += 24;
    tb_message_raw_encode_u16();
    --v8;
  }

  while (v8);
  v12 = a2 + 5042;
  v13 = 16;
  do
  {
    tb_message_raw_encode_u16();
    v12 += 4;
    tb_message_raw_encode_u16();
    --v13;
  }

  while (v13);
  v14 = a2 + 5106;
  v15 = 16;
  do
  {
    tb_message_raw_encode_u16();
    v14 += 4;
    tb_message_raw_encode_u16();
    --v15;
  }

  while (v15);
  tb_message_raw_encode_u32();
  tb_message_raw_encode_u32();
  tb_message_raw_encode_u16();

  return tb_message_raw_encode_u16();
}

uint64_t fidflowmodule_bufferformatdescriptor__raw_decode(uint64_t a1, uint64_t a2)
{
  tb_message_raw_decode_u32();
  tb_message_raw_decode_u32();
  tb_message_raw_decode_u32();
  tb_message_raw_decode_u32();
  tb_message_raw_decode_u64();
  v3 = *(a2 + 16);
  result = 7;
  if (v3 > 0x447E52DCF0166CF4)
  {
    if (v3 > 0x613A5560FD7EC2A1)
    {
      if (v3 == 0x7EBEBA8AE0FBC365)
      {
        goto LABEL_13;
      }

      v5 = 0x613A5560FD7EC2A2;
    }

    else
    {
      if (v3 == 0x447E52DCF0166CF5)
      {
        goto LABEL_13;
      }

      v5 = 0x56B9FDA5F5023189;
    }

LABEL_12:
    if (v3 != v5)
    {
      return result;
    }

    goto LABEL_13;
  }

  if (v3 > 0xE10561889E3AF236)
  {
    if (v3 == 0xE10561889E3AF237)
    {
      goto LABEL_13;
    }

    v5 = 0x33802151C6FC8407;
    goto LABEL_12;
  }

  if (v3 != 0x99C8205F3959757ALL)
  {
    v5 = 0xC97281951BF85B62;
    goto LABEL_12;
  }

LABEL_13:
  tb_message_raw_decode_u64();
  v6 = *(a2 + 24);
  if (v6 != 0x42864FB66FB4C549 && v6 != 0x21758C45B12BEDB3)
  {
    return 7;
  }

  tb_message_raw_decode_u32();
  return 0;
}

uint64_t fidflowmodule_fidsessionconfig__raw_encode(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *a2;
  if (v3 >= 4)
  {
    fidflowmodule_fidsessionconfig__raw_encode_cold_1(v3);
  }

  tb_message_raw_encode_u8();
  if (a2[1] >= 4u)
  {
    fidflowmodule_fidsessionconfig__raw_encode_cold_2(a2[1]);
  }

  tb_message_raw_encode_u8();
  tb_message_raw_encode_u32();
  tb_message_raw_encode_BOOL();

  return tb_message_raw_encode_BOOL();
}

uint64_t fidflowmodule_fidbiocapturedoublet__raw_encode(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *a2;
  if (v3 >= 3)
  {
    fidflowmodule_fidbiocapturedoublet__raw_encode_cold_1(v3);
  }

  tb_message_raw_encode_u8();
  if (*(a2 + 1) >= 0xEu)
  {
    ispexclavekitshared_ekispmanager_channelsensormetadataset_cold_1(*(a2 + 1));
  }

  tb_message_raw_encode_u32();
  if (*(a2 + 2) >= 4u)
  {
    ispexclavekitshared_ekispmanager_channelsensormetadataset_cold_2(*(a2 + 2));
  }

  return tb_message_raw_encode_u32();
}

void ispExclaveKitCommandChRunMd()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  v2 = 35;
  _os_log_debug_impl(&dword_25497B000, v0, OS_LOG_TYPE_DEBUG, "%s:%d - before calling new IDL\n", v1, 0x12u);
}

{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  v2 = 41;
  _os_log_debug_impl(&dword_25497B000, v0, OS_LOG_TYPE_DEBUG, "%s:%d - after calling new IDL\n", v1, 0x12u);
}

{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  v2 = 44;
  _os_log_error_impl(&dword_25497B000, v0, OS_LOG_TYPE_ERROR, "%s:%d - ERROR: ISP_EXCLAVEKIT_CMD_HANDLER_ERR_IDL_CALL_FAIL\n", v1, 0x12u);
}

{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  v2 = 25;
  _os_log_error_impl(&dword_25497B000, v0, OS_LOG_TYPE_ERROR, "%s:%d - ERROR: ISP_EXCLAVEKIT_CMD_HANDLER_ERR_WRONG_INPUT\n", v1, 0x12u);
}

void ispExclaveKitCommandChRunMd(int a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = 136315650;
  v3 = "ispExclaveKitCommandChRunMd";
  v4 = 1024;
  v5 = 68;
  v6 = 1024;
  v7 = a1;
  _os_log_debug_impl(&dword_25497B000, a2, OS_LOG_TYPE_DEBUG, "%s:%d - new IDL result: status=%d\n", &v2, 0x18u);
}

void ispExclaveKitCommandChRunMd(uint64_t *a1, NSObject *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = 136315650;
  v4 = "ispExclaveKitCommandChRunMd";
  v5 = 1024;
  v6 = 63;
  v7 = 2048;
  v8 = v2;
  _os_log_error_impl(&dword_25497B000, a2, OS_LOG_TYPE_ERROR, "%s:%d - wrong return value: 0x%llx\n", &v3, 0x1Cu);
}

void ispExclaveKitCommandChRunAndk()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_25497B000, v0, v1, "%s:%d - ispExclaveKitCommandChRunAndk\n", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_25497B000, v0, v1, "%s:%d - ERROR: ISP_EXCLAVEKIT_CMD_HANDLER_ERR_WRONG_INPUT\n", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_25497B000, v0, v1, "%s:%d - ERROR: ISP_EXCLAVEKIT_CMD_HANDLER_ERR_WRONG_INPUT\n", v2, v3, v4, v5);
}

void ispExclaveKitCommandChRunFd()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  v2 = 18;
  _os_log_error_impl(&dword_25497B000, v0, OS_LOG_TYPE_ERROR, "%s:%d - ERROR: ISP_EXCLAVEKIT_CMD_HANDLER_ERR_WRONG_INPUT\n", v1, 0x12u);
}

{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  v2 = 33;
  _os_log_error_impl(&dword_25497B000, v0, OS_LOG_TYPE_ERROR, "%s:%d - ERROR: ISP_EXCLAVEKIT_CMD_HANDLER_ERR_IDL_CALL_FAIL\n", v1, 0x12u);
}

void ispExclaveKitCommandChRunEr()
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 136315394;
  OUTLINED_FUNCTION_0_0();
  *(&v1[3] + 2) = 20;
  _os_log_error_impl(&dword_25497B000, v0, OS_LOG_TYPE_ERROR, "%s:%d - ERROR: ISP_EXCLAVEKIT_CMD_HANDLER_ERR_WRONG_INPUT\n", v1, 0x12u);
}

{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 136315394;
  OUTLINED_FUNCTION_0_0();
  *(&v1[3] + 2) = 30;
  _os_log_debug_impl(&dword_25497B000, v0, OS_LOG_TYPE_DEBUG, "%s:%d - before calling new IDL\n", v1, 0x12u);
}

{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 136315394;
  OUTLINED_FUNCTION_0_0();
  *(&v1[3] + 2) = 36;
  _os_log_debug_impl(&dword_25497B000, v0, OS_LOG_TYPE_DEBUG, "%s:%d - after calling new IDL\n", v1, 0x12u);
}

{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 136315394;
  OUTLINED_FUNCTION_0_0();
  *(&v1[3] + 2) = 39;
  _os_log_error_impl(&dword_25497B000, v0, OS_LOG_TYPE_ERROR, "%s:%d - ERROR: ISP_EXCLAVEKIT_CMD_HANDLER_ERR_IDL_CALL_FAIL\n", v1, 0x12u);
}

{
  v5 = *MEMORY[0x277D85DE8];
  *v3 = 136315650;
  OUTLINED_FUNCTION_0_0();
  *&v3[7] = 75;
  v3[9] = v0;
  v4 = v1;
  _os_log_debug_impl(&dword_25497B000, v2, OS_LOG_TYPE_DEBUG, "%s:%d - new IDL result: status=%d\n", v3, 0x18u);
}

{
  v4 = *MEMORY[0x277D85DE8];
  *v2 = 136315650;
  OUTLINED_FUNCTION_0_0();
  *&v2[7] = 70;
  v2[9] = 2048;
  v3 = v0;
  _os_log_error_impl(&dword_25497B000, v1, OS_LOG_TYPE_ERROR, "%s:%d - wrong return value: 0x%llx\n", v2, 0x1Cu);
}

void ispExclaveKitCommandChRunAnst()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void ___Z29ispExclaveKitCommandChRunAnstP20sExclaveKitIspCmdHdr_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void ___Z29ispExclaveKitCommandChRunAnstP20sExclaveKitIspCmdHdr_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void ispExclaveKitCommandChFacekitConfigSetV2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_25497B000, v0, v1, "%s:%d - ERROR: ISP_EXCLAVEKIT_CMD_HANDLER_ERR_WRONG_INPUT\n", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_25497B000, v0, v1, "%s:%d - ERROR: ISP_EXCLAVEKIT_CMD_HANDLER_ERR_WRONG_INPUT\n", v2, v3, v4, v5);
}

void ispExclaveKitCommandChRunFacekitFirstPassV2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_25497B000, v0, v1, "%s:%d - ERROR: ISP_EXCLAVEKIT_CMD_HANDLER_ERR_WRONG_INPUT\n", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_25497B000, v0, v1, "%s:%d - ERROR: ISP_EXCLAVEKIT_CMD_HANDLER_ERR_IDL_CALL_FAIL\n", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_25497B000, v0, v1, "%s:%d - ERROR: ISP_EXCLAVEKIT_CMD_HANDLER_ERR_WRONG_INPUT\n", v2, v3, v4, v5);
}

void ispExclaveKitCommandChRunFacekitSecondPassV2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_25497B000, v0, v1, "%s:%d - ERROR: ISP_EXCLAVEKIT_CMD_HANDLER_ERR_WRONG_INPUT\n", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_25497B000, v0, v1, "%s:%d - ERROR: ISP_EXCLAVEKIT_CMD_HANDLER_ERR_IDL_CALL_FAIL\n", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_25497B000, v0, v1, "%s:%d - ERROR: ISP_EXCLAVEKIT_CMD_HANDLER_ERR_WRONG_INPUT\n", v2, v3, v4, v5);
}

void commandTimerCallback(ISPExclaveKitTimer *a1, NSObject *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = 136316162;
  v5 = "commandTimerCallback";
  v6 = 1024;
  v7 = 51;
  v8 = 2048;
  CurrentPeriodMS = ISPExclaveKitTimer::getCurrentPeriodMS(a1);
  v10 = 2080;
  Note = ISPExclaveKitTimer::getNote(a1);
  v12 = 1024;
  CmdId = ISPExclaveKitTimer::getCmdId(a1);
  _os_log_error_impl(&dword_25497B000, a2, OS_LOG_TYPE_ERROR, "%s:%d - command timeout triggered, interval=%llu ms, timer command: %s, command Id: 0x%x\n", &v4, 0x2Cu);
}

void ispExclaveKitCommand()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1(&dword_25497B000, v0, v1, "%s:%d - run ISP_EXCLAVEKIT_CMD_CH_FID_BUFFER_RELEASE! - do nothing now!\n", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1(&dword_25497B000, v0, v1, "%s:%d - CMD_CH_DEBUG_CAPABILITY new path\n", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_25497B000, v0, v1, "%s:%d - in release mode, ispExclaveKitCommandChDebugCapability is not available\n", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1(&dword_25497B000, v0, v1, "%s:%d - CMD_CH_EXFILTRATION new path\n", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_25497B000, v0, v1, "%s:%d - in release mode, ispExclaveKitCommandChExfiltration is not available\n", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1(&dword_25497B000, v0, v1, "%s:%d - CMD_CH_INFILTRATION new path\n", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_25497B000, v0, v1, "%s:%d - in release mode, ispExclaveKitCommandChInfiltration is not available\n", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1(&dword_25497B000, v0, v1, "%s:%d - CMD_CH_PROPERTY_READ new path\n", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_25497B000, v0, v1, "%s:%d - in release mode, ispExclaveKitCommandChPropertyRead is not available\n", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1(&dword_25497B000, v0, v1, "%s:%d - CMD_CH_PROPERTY_WRITE new path\n", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_25497B000, v0, v1, "%s:%d - in release mode, ispExclaveKitCommandChPropertyWrite is not available\n", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1(&dword_25497B000, v0, v1, "%s:%d - run ANDK \n", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1(&dword_25497B000, v0, v1, "%s:%d - run facekit \n", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1(&dword_25497B000, v0, v1, "%s:%d - run facekit \n", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1(&dword_25497B000, v0, v1, "%s:%d - run facekit \n", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_25497B000, v0, v1, "%s:%d - ISP_EXCLAVEKIT_CMD_CH_RUN_FACEKIT_SECOND_PASS is deprecated.\n", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_25497B000, v0, v1, "%s:%d - ISP_EXCLAVEKIT_CMD_CH_RUN_FACEKIT_FIRST_PASS is deprecated.\n", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_25497B000, v0, v1, "%s:%d - ISP_EXCLAVEKIT_CMD_CH_FACEKIT_CONFIG_SET is deprecated.\n", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1(&dword_25497B000, v0, v1, "%s:%d - run ANST \n", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1(&dword_25497B000, v0, v1, "%s:%d - run motionToWake \n", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1(&dword_25497B000, v0, v1, "%s:%d - run AD \n", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1(&dword_25497B000, v0, v1, "%s:%d - run AD Config \n", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1(&dword_25497B000, v0, v1, "%s:%d - run FD \n", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1(&dword_25497B000, v0, v1, "%s:%d - run ER new path\n", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1(&dword_25497B000, v0, v1, "%s:%d - run ISP_EXCLAVEKIT_CMD_CH_AE_FRAME_RATE_MIN_GET new path\n", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1(&dword_25497B000, v0, v1, "%s:%d - run ISP_EXCLAVEKIT_CMD_CH_AE_FRAME_RATE_MAX_GET new path\n", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1(&dword_25497B000, v0, v1, "%s:%d - run ISP_EXCLAVEKIT_CMD_CH_AE_FLICKER_FREQ_SET new path\n", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1(&dword_25497B000, v0, v1, "%s:%d - run ISP_EXCLAVEKIT_CMD_CH_AE_INIT_SETTING_GET new path\n", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1(&dword_25497B000, v0, v1, "%s:%d - run ISP_EXCLAVEKIT_CMD_CH_AE_FRAME_RATE_MIN_SET new path\n", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1(&dword_25497B000, v0, v1, "%s:%d - run ISP_EXCLAVEKIT_CMD_CH_AE_FRAME_RATE_MAX_SET new path\n", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1(&dword_25497B000, v0, v1, "%s:%d - Channel camera config set new path\n", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1(&dword_25497B000, v0, v1, "%s:%d - run ISP_EXCLAVEKIT_CMD_CH_AE_FRAME_RATE_MIN_SET new path\n", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1(&dword_25497B000, v0, v1, "%s:%d - run ISP_EXCLAVEKIT_CMD_CH_RUN_AE new path\n", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1(&dword_25497B000, v0, v1, "%s:%d - run PDP SET new path\n", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_25497B000, v0, v1, "%s:%d - in release mode, ispExclaveKitCommandChPdpSet is not available\n", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1(&dword_25497B000, v0, v1, "%s:%d - run LSC SET new path\n", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_25497B000, v0, v1, "%s:%d - in release mode, ispExclaveKitCommandChLscSet is not available\n", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1(&dword_25497B000, v0, v1, "%s:%d - Channel run ISP new path\n", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1(&dword_25497B000, v0, v1, "%s:%d - Channel fps control new path\n", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1(&dword_25497B000, v0, v1, "%s:%d - Channel OFF new path\n", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1(&dword_25497B000, v0, v1, "%s:%d - Channel ON new path\n", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1(&dword_25497B000, v0, v1, "%s:%d - Configuration status read new path\n", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1(&dword_25497B000, v0, v1, "%s:%d - Channel concurrent flag set new path\n", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1(&dword_25497B000, v0, v1, "%s:%d - Channel info set new path\n", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1(&dword_25497B000, v0, v1, "%s:%d - Channel stop new path\n", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1(&dword_25497B000, v0, v1, "%s:%d - Channel start new path\n", v2, v3, v4, v5);
}

void ispExclaveKitCommand(int a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = 136315650;
  v3 = "ispExclaveKitCommand";
  v4 = 1024;
  v5 = 474;
  v6 = 1024;
  v7 = a1;
  _os_log_error_impl(&dword_25497B000, a2, OS_LOG_TYPE_ERROR, "%s:%d - cmdId=0x%x is not handled!\n", &v2, 0x18u);
}

void getConfigurationType()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void _ispExclaveKitCommandAlgoEnable()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1(&dword_25497B000, v0, v1, "%s:%d - before calling new IDL\n", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1(&dword_25497B000, v0, v1, "%s:%d - after calling new IDL\n", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void ispExclaveKitCommandChStop()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1(&dword_25497B000, v0, v1, "%s:%d - before calling new IDL\n", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1(&dword_25497B000, v0, v1, "%s:%d - after calling new IDL\n", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void ispExclaveKitCommandChConcurrentFlagSet()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1(&dword_25497B000, v0, v1, "%s:%d - before calling new IDL\n", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1(&dword_25497B000, v0, v1, "%s:%d - after calling new IDL\n", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void ispExclaveKitCommandChConfigurationStatusRead()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1(&dword_25497B000, v0, v1, "%s:%d - before calling new IDL\n", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1(&dword_25497B000, v0, v1, "%s:%d - after calling new IDL\n", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void ispExclaveKitCommandChAlgoEnable()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
  OUTLINED_FUNCTION_9(qword_27F6132E0);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
  OUTLINED_FUNCTION_9(qword_27F6132E0);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
  OUTLINED_FUNCTION_9(qword_27F6132E0);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
  OUTLINED_FUNCTION_9(qword_27F6132E0);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
  OUTLINED_FUNCTION_9(qword_27F6132E0);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
  OUTLINED_FUNCTION_9(qword_27F6132E0);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
  OUTLINED_FUNCTION_9(qword_27F6132E0);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
  OUTLINED_FUNCTION_9(qword_27F6132E0);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
  OUTLINED_FUNCTION_9(qword_27F6132E0);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
  OUTLINED_FUNCTION_9(qword_27F6132E0);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
  OUTLINED_FUNCTION_9(qword_27F6132E0);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
  OUTLINED_FUNCTION_9(qword_27F6132E0);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
  OUTLINED_FUNCTION_9(qword_27F6132E0);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1(&dword_25497B000, v0, v1, "%s:%d - channel state: ISP_EXCLAVEKIT_CHANNEL_STATE_OFF, cache the request\n", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_7();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x18u);
}

{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void ispExclaveKitCommandChOn()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1(&dword_25497B000, v0, v1, "%s:%d - before calling new IDL\n", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1(&dword_25497B000, v0, v1, "%s:%d - after calling new IDL\n", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x18u);
  OUTLINED_FUNCTION_9(qword_27F6132E0);
}

{
  OUTLINED_FUNCTION_13(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x18u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void ispExclaveKitCommandChOff()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1(&dword_25497B000, v0, v1, "%s:%d - before calling new IDL\n", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1(&dword_25497B000, v0, v1, "%s:%d - after calling new IDL\n", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_13(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x18u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void ispExclaveKitCommandChFrameRateControl()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1(&dword_25497B000, v0, v1, "%s:%d - before calling new IDL\n", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1(&dword_25497B000, v0, v1, "%s:%d - after calling new IDL\n", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_13(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x22u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_13(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void ispExclaveKitCommandChInfoSet()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1(&dword_25497B000, v0, v1, "%s:%d - before calling new IDL\n", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1(&dword_25497B000, v0, v1, "%s:%d - after calling new IDL\n", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
  OUTLINED_FUNCTION_9(qword_27F6132E0);
}

{
  OUTLINED_FUNCTION_11(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
  OUTLINED_FUNCTION_9(qword_27F6132E0);
}

{
  OUTLINED_FUNCTION_11(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
  OUTLINED_FUNCTION_9(qword_27F6132E0);
}

{
  OUTLINED_FUNCTION_11(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

{
  OUTLINED_FUNCTION_11(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Eu);
}

{
  OUTLINED_FUNCTION_11(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Eu);
}

{
  OUTLINED_FUNCTION_11(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x30u);
}

{
  OUTLINED_FUNCTION_11(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x6Cu);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void ispExclaveKitCommandChStart()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1(&dword_25497B000, v0, v1, "%s:%d - before calling IDL\n", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1(&dword_25497B000, v0, v1, "%s:%d - after calling IDL\n", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void ispExclaveKitCommandChFidSessionEnter()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void ispExclaveKitCommandChFidSessionExit()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1(&dword_25497B000, v0, v1, "%s:%d - before calling IDL\n", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1(&dword_25497B000, v0, v1, "%s:%d - after calling IDL\n", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void ispExclaveKitCommandChFidSessionStart()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1(&dword_25497B000, v0, v1, "%s:%d - before calling IDL\n", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1(&dword_25497B000, v0, v1, "%s:%d - after calling IDL\n", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_25497B000, v0, v1, "%s:%d - ERROR: ISP_EXCLAVEKIT_CMD_HANDLER_ERR_IDL_CALL_FAIL\n", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_25497B000, v0, v1, "%s:%d - ERROR: ISP_EXCLAVEKIT_CMD_HANDLER_ERR_WRONG_INPUT\n", v2, v3, v4, v5);
}

void ispExclaveKitCommandChFidSessionStop()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1(&dword_25497B000, v0, v1, "%s:%d - before calling IDL\n", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1(&dword_25497B000, v0, v1, "%s:%d - after calling IDL\n", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_25497B000, v0, v1, "%s:%d - ERROR: ISP_EXCLAVEKIT_CMD_HANDLER_ERR_IDL_CALL_FAIL\n", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_25497B000, v0, v1, "%s:%d - ERROR: ISP_EXCLAVEKIT_CMD_HANDLER_ERR_WRONG_INPUT\n", v2, v3, v4, v5);
}

void ispExclaveKitCommandChFidBracketCapture()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1(&dword_25497B000, v0, v1, "%s:%d - before calling IDL\n", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1(&dword_25497B000, v0, v1, "%s:%d - after calling IDL\n", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_25497B000, v0, v1, "%s:%d - ERROR: ISP_EXCLAVEKIT_CMD_HANDLER_ERR_IDL_CALL_FAIL\n", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_25497B000, v0, v1, "%s:%d - ERROR: ISP_EXCLAVEKIT_CMD_HANDLER_ERR_WRONG_INPUT\n", v2, v3, v4, v5);
}

void ISPExclaveKitTimer::ISPExclaveKitTimer()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x12u);
}

void ISPExclaveKitTimer::updateState()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_2();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x18u);
}

void ISPExclaveKitTimer::_releaseTimer()
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 136315650;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_25497B000, v0, OS_LOG_TYPE_ERROR, "%s:%d - invalid release, count=%d\n", v1, 0x18u);
}

void ISPExclaveKitTimer::_suspendTimer()
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 136315650;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_25497B000, v0, OS_LOG_TYPE_ERROR, "%s:%d - invalid suspend, count=%d\n", v1, 0x18u);
}

void ISPExclaveKitTimer::startTimer()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x12u);
}

void ISPExclaveKitTimer::stopTimer()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x12u);
}

void ISPExclaveKitTimerList::returnTimer()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

{
  __assert_rtn("returnTimer", "ISPExclaveKitTimer.cpp", 228, "pTimerItem");
}

void _ispExclaveKitCommandChAdConfigSet(int a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = 136315650;
  v3 = "_ispExclaveKitCommandChAdConfigSet";
  v4 = 1024;
  v5 = 33;
  v6 = 1024;
  v7 = a1;
  _os_log_error_impl(&dword_25497B000, a2, OS_LOG_TYPE_ERROR, "%s:%d - sendcmdadsettings[%d] is failure\n", &v2, 0x18u);
}

void ispExclaveKitCommandChRunAd()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_25497B000, v0, v1, "%s:%d - ERROR: ISP_EXCLAVEKIT_CMD_HANDLER_ERR_WRONG_INPUT\n", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_25497B000, v0, v1, "%s:%d - ERROR: ISP_EXCLAVEKIT_CMD_HANDLER_ERR_IDL_CALL_FAIL\n", v2, v3, v4, v5);
}

void ispExclaveKitCommandChRunAd(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  v5 = 323;
  _os_log_debug_impl(&dword_25497B000, v3, OS_LOG_TYPE_DEBUG, "%s:%d - before calling new IDL\n", v4, 0x12u);
  *a2 = qword_27F6132E0;
}

void ispExclaveKitCommandChRunAdv2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_25497B000, v0, v1, "%s:%d - ERROR: ISP_EXCLAVEKIT_CMD_HANDLER_ERR_WRONG_INPUT\n", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_25497B000, v0, v1, "%s:%d - ERROR: ISP_EXCLAVEKIT_CMD_HANDLER_ERR_IDL_CALL_FAIL\n", v2, v3, v4, v5);
}

void ispExclaveKitCommandChLscSet()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1(&dword_25497B000, v0, v1, "%s:%d - before calling new IDL\n", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1(&dword_25497B000, v0, v1, "%s:%d - after calling new IDL\n", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_25497B000, v0, v1, "%s:%d - ERROR: ISP_EXCLAVEKIT_CMD_HANDLER_ERR_IDL_CALL_FAIL\n", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_25497B000, v0, v1, "%s:%d - ERROR: ISP_EXCLAVEKIT_CMD_HANDLER_ERR_IDL_CALL_FAIL\n", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_25497B000, v0, v1, "%s:%d - ERROR: ISP_EXCLAVEKIT_CMD_HANDLER_ERR_WRONG_INPUT\n", v2, v3, v4, v5);
}

void ispExclaveKitCommandChPdpSet()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1(&dword_25497B000, v0, v1, "%s:%d - before calling new IDL\n", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1(&dword_25497B000, v0, v1, "%s:%d - after calling new IDL\n", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1(&dword_25497B000, v0, v1, "%s:%d - before calling new IDL\n", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1(&dword_25497B000, v0, v1, "%s:%d - after calling new IDL\n", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_25497B000, v0, v1, "%s:%d - ERROR: ISP_EXCLAVEKIT_CMD_HANDLER_ERR_IDL_CALL_FAIL\n", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_25497B000, v0, v1, "%s:%d - ERROR: ISP_EXCLAVEKIT_CMD_HANDLER_ERR_IDL_CALL_FAIL\n", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_25497B000, v0, v1, "%s:%d - ERROR: ISP_EXCLAVEKIT_CMD_HANDLER_ERR_WRONG_STATE\n", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_25497B000, v0, v1, "%s:%d - ERROR: ISP_EXCLAVEKIT_CMD_HANDLER_ERR_WRONG_INPUT\n", v2, v3, v4, v5);
}

void exclaveKitDefaultsInit(int a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = 136315650;
  v3 = "exclaveKitDefaultsInit";
  v4 = 1024;
  v5 = 80;
  v6 = 1024;
  v7 = a1;
  _os_log_debug_impl(&dword_25497B000, a2, OS_LOG_TYPE_DEBUG, "%s:%d - SearApprovedPathFlag=%d\n", &v2, 0x18u);
}

void ispExclavePrivatePropertiesReset()
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 136315394;
  OUTLINED_FUNCTION_0_0();
  *(&v1[3] + 2) = 387;
  _os_log_debug_impl(&dword_25497B000, v0, OS_LOG_TYPE_DEBUG, "%s:%d - Reset properties...\n", v1, 0x12u);
}

void channelStateUpdate(int a1, int a2, os_log_t log)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = properties[70 * a1 + 68];
  v4 = 136315906;
  v5 = "channelStateUpdate";
  v6 = 1024;
  v7 = 565;
  v8 = 1024;
  v9 = a2;
  v10 = 1024;
  v11 = v3;
  _os_log_debug_impl(&dword_25497B000, log, OS_LOG_TYPE_DEBUG, "%s:%d - signal=%d, state=%d\n", &v4, 0x1Eu);
}

void channelStateUpdate()
{
  v6 = 136315906;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_1_3(&dword_25497B000, v0, v1, "%s:%d - illegal transition signal=%d, currentState=%d\n", v2, v3, v4, v5, v6);
}

{
  v6 = 136315906;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_1_3(&dword_25497B000, v0, v1, "%s:%d - illegal transition signal=%d, currentState=%d\n", v2, v3, v4, v5, v6);
}

{
  v6 = 136315906;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_1_3(&dword_25497B000, v0, v1, "%s:%d - illegal transition signal=%d, currentState=%d\n", v2, v3, v4, v5, v6);
}

{
  v6 = 136315906;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_1_3(&dword_25497B000, v0, v1, "%s:%d - illegal transition signal=%d, currentState=%d\n", v2, v3, v4, v5, v6);
}

{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 136315650;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_8();
  v2[5] = v0;
  _os_log_error_impl(&dword_25497B000, v1, OS_LOG_TYPE_ERROR, "%s:%d - illegal chIdx=%d\n", v2, 0x18u);
}

void channelStateGet()
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 136315650;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_8();
  v2[5] = v0;
  _os_log_error_impl(&dword_25497B000, v1, OS_LOG_TYPE_ERROR, "%s:%d - illegal chIdx=%d\n", v2, 0x18u);
}

void ispExclaveKitCommandChRunAe()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1(&dword_25497B000, v0, v1, "%s:%d - before calling new IDL\n", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1(&dword_25497B000, v0, v1, "%s:%d - after calling new IDL\n", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_25497B000, v0, v1, "%s:%d - ERROR: ISP_EXCLAVEKIT_CMD_HANDLER_ERR_IDL_CALL_FAIL\n", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_25497B000, v0, v1, "%s:%d - ERROR: ISP_EXCLAVEKIT_CMD_HANDLER_ERR_WRONG_INPUT\n", v2, v3, v4, v5);
}

void ispExclaveKitCommandChSendMetadata()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1(&dword_25497B000, v0, v1, "%s:%d - before calling new IDL\n", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1(&dword_25497B000, v0, v1, "%s:%d - after calling new IDL\n", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_25497B000, v0, v1, "%s:%d - ERROR: ISP_EXCLAVEKIT_CMD_HANDLER_ERR_IDL_CALL_FAIL\n", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_25497B000, v0, v1, "%s:%d - ERROR: ISP_EXCLAVEKIT_CMD_HANDLER_ERR_WRONG_INPUT\n", v2, v3, v4, v5);
}

void ispExclaveKitCommandChSendMetadata(int a1, NSObject *a2, float a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = 136316162;
  v4 = "ispExclaveKitCommandChSendMetadata";
  v5 = 1024;
  v6 = 427;
  v7 = 1024;
  v8 = a1;
  v9 = 2048;
  v10 = a3;
  v11 = 2048;
  v12 = 0x40C0000000000000;
  _os_log_error_impl(&dword_25497B000, a2, OS_LOG_TYPE_ERROR, "%s:%d - ERROR: ISP_EXCLAVEKIT_CMD_HANDLER_ERR_WRONG_INPUT intrinsic[%d]=%f > %f\n", &v3, 0x2Cu);
}

void ispExclaveKitCommandChCameraConfigSet()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1(&dword_25497B000, v0, v1, "%s:%d - before calling IDL\n", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1(&dword_25497B000, v0, v1, "%s:%d - after calling IDL\n", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_25497B000, v0, v1, "%s:%d - ERROR: ISP_EXCLAVEKIT_CMD_HANDLER_ERR_IDL_CALL_FAIL\n", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_3_2(*MEMORY[0x277D85DE8]);
  v10 = 136318466;
  v11 = "ispExclaveKitCommandChCameraConfigSet";
  v12 = 1024;
  v13 = 505;
  v14 = 1024;
  v15 = v0;
  v16 = 1024;
  v17 = v1;
  v18 = 1024;
  v19 = v2;
  v20 = 1024;
  v21 = v3;
  v22 = 1024;
  v23 = v4;
  v24 = 1024;
  v25 = v5;
  v26 = 1024;
  v27 = v6;
  v28 = 1024;
  v29 = v7;
  v30 = 1024;
  v31 = v8;
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(&dword_25497B000, v9, OS_LOG_TYPE_ERROR, "%s:%d - Expected values: %u %u %u %u %u %u %u %u %u %u %u %u\n", &v10, 0x5Au);
}

{
  OUTLINED_FUNCTION_3_2(*MEMORY[0x277D85DE8]);
  v10 = 136318466;
  v11 = "ispExclaveKitCommandChCameraConfigSet";
  v12 = 1024;
  v13 = 525;
  v14 = 1024;
  v15 = v0;
  v16 = 1024;
  v17 = v1;
  v18 = 1024;
  v19 = v2;
  v20 = 1024;
  v21 = v3;
  v22 = 1024;
  v23 = v4;
  v24 = 1024;
  v25 = v5;
  v26 = 1024;
  v27 = v6;
  v28 = 1024;
  v29 = v7;
  v30 = 1024;
  v31 = v8;
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(&dword_25497B000, v9, OS_LOG_TYPE_ERROR, "%s:%d - Expected values: %u %u %u %u %u %u %u %u %u %u %u %u\n", &v10, 0x5Au);
}

void ispExclaveKitCommandChCameraConfigSet(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_25497B000, v3, v4, "%s:%d - ERROR: Channel camera configuration being set doesn't match with the data received from EK\n", v5, v6, v7, v8);
  *a2 = qword_27F6132E0;
}

void ispExclaveKitCommandChAeFrameRateMaxSet()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1(&dword_25497B000, v0, v1, "%s:%d - before calling new IDL\n", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1(&dword_25497B000, v0, v1, "%s:%d - after calling new IDL\n", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_25497B000, v0, v1, "%s:%d - ERROR: ISP_EXCLAVEKIT_CMD_HANDLER_ERR_IDL_CALL_FAIL\n", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_25497B000, v0, v1, "%s:%d - ERROR: ISP_EXCLAVEKIT_CMD_HANDLER_ERR_WRONG_INPUT\n", v2, v3, v4, v5);
}

void ispExclaveKitCommandChAeFrameRateMinSet(int a1, int a2, os_log_t log)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = 136315906;
  v4 = "ispExclaveKitCommandChAeFrameRateMinSet";
  v5 = 1024;
  v6 = 582;
  v7 = 1024;
  v8 = a1;
  v9 = 1024;
  v10 = a2;
  _os_log_debug_impl(&dword_25497B000, log, OS_LOG_TYPE_DEBUG, "%s:%d - before calling new IDL %d %d\n", &v3, 0x1Eu);
}

void ispExclaveKitCommandChAeFrameRateMinSet()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1(&dword_25497B000, v0, v1, "%s:%d - after calling new IDL\n", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_25497B000, v0, v1, "%s:%d - ERROR: ISP_EXCLAVEKIT_CMD_HANDLER_ERR_IDL_CALL_FAIL\n", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_25497B000, v0, v1, "%s:%d - ERROR: ISP_EXCLAVEKIT_CMD_HANDLER_ERR_WRONG_INPUT\n", v2, v3, v4, v5);
}

void ispExclaveKitCommandChAeInitSettingGet()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1(&dword_25497B000, v0, v1, "%s:%d - before calling new IDL\n", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1(&dword_25497B000, v0, v1, "%s:%d - after calling new IDL\n", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_25497B000, v0, v1, "%s:%d - ERROR: ISP_EXCLAVEKIT_CMD_HANDLER_ERR_IDL_CALL_FAIL\n", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_25497B000, v0, v1, "%s:%d - ERROR: ISP_EXCLAVEKIT_CMD_HANDLER_ERR_WRONG_INPUT\n", v2, v3, v4, v5);
}

void ispExclaveKitCommandChAeFlickerFreqSet()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1(&dword_25497B000, v0, v1, "%s:%d - before calling new IDL\n", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1(&dword_25497B000, v0, v1, "%s:%d - after calling new IDL\n", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_25497B000, v0, v1, "%s:%d - ERROR: ISP_EXCLAVEKIT_CMD_HANDLER_ERR_IDL_CALL_FAIL\n", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_25497B000, v0, v1, "%s:%d - ERROR: ISP_EXCLAVEKIT_CMD_HANDLER_ERR_WRONG_INPUT\n", v2, v3, v4, v5);
}

void ispExclaveKitCommandChAeFrameRateMaxGet()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1(&dword_25497B000, v0, v1, "%s:%d - before calling new IDL\n", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1(&dword_25497B000, v0, v1, "%s:%d - after calling new IDL\n", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_25497B000, v0, v1, "%s:%d - ERROR: ISP_EXCLAVEKIT_CMD_HANDLER_ERR_IDL_CALL_FAIL\n", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_25497B000, v0, v1, "%s:%d - ERROR: ISP_EXCLAVEKIT_CMD_HANDLER_ERR_WRONG_INPUT\n", v2, v3, v4, v5);
}

void ispExclaveKitCommandChAeFrameRateMinGet()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1(&dword_25497B000, v0, v1, "%s:%d - before calling new IDL\n", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1(&dword_25497B000, v0, v1, "%s:%d - after calling new IDL\n", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_25497B000, v0, v1, "%s:%d - ERROR: ISP_EXCLAVEKIT_CMD_HANDLER_ERR_IDL_CALL_FAIL\n", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_25497B000, v0, v1, "%s:%d - ERROR: ISP_EXCLAVEKIT_CMD_HANDLER_ERR_WRONG_INPUT\n", v2, v3, v4, v5);
}

void ispExclaveKitCommandDeviceInfoGet(int a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = 136315650;
  v3 = "ispExclaveKitCommandDeviceInfoGet";
  v4 = 1024;
  v5 = 146;
  v6 = 1024;
  v7 = a1;
  _os_log_error_impl(&dword_25497B000, a2, OS_LOG_TYPE_ERROR, "%s:%d - ERROR: ISP_EXCLAVEKIT_CMD_HANDLER_ERR_WRONG_INPUT | deviceType: %d\n", &v2, 0x18u);
}

void ispExclaveKitCommandChPropertyWrite()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1(&dword_25497B000, v0, v1, "%s:%d - before calling new IDL\n", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1(&dword_25497B000, v0, v1, "%s:%d - after calling new IDL\n", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_25497B000, v0, v1, "%s:%d - ERROR: ISP_EXCLAVEKIT_CMD_HANDLER_ERR_IDL_CALL_FAIL\n", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_25497B000, v0, v1, "%s:%d - ERROR: ISP_EXCLAVEKIT_CMD_HANDLER_ERR_IDL_CALL_FAIL\n", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_25497B000, v0, v1, "%s:%d - ERROR: ISP_EXCLAVEKIT_CMD_HANDLER_ERR_WRONG_INPUT\n", v2, v3, v4, v5);
}

void ispExclaveKitCommandChPropertyRead()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1(&dword_25497B000, v0, v1, "%s:%d - before calling new IDL\n", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1(&dword_25497B000, v0, v1, "%s:%d - after calling new IDL\n", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_25497B000, v0, v1, "%s:%d - ERROR: ISP_EXCLAVEKIT_CMD_HANDLER_ERR_IDL_CALL_FAIL\n", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_25497B000, v0, v1, "%s:%d - ERROR: ISP_EXCLAVEKIT_CMD_HANDLER_ERR_IDL_CALL_FAIL\n", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_25497B000, v0, v1, "%s:%d - ERROR: ISP_EXCLAVEKIT_CMD_HANDLER_ERR_WRONG_INPUT\n", v2, v3, v4, v5);
}

void ispExclaveKitCommandChInfiltration()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1(&dword_25497B000, v0, v1, "%s:%d - before calling new IDL\n", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1(&dword_25497B000, v0, v1, "%s:%d - after calling new IDL\n", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_25497B000, v0, v1, "%s:%d - ERROR: ISP_EXCLAVEKIT_CMD_HANDLER_ERR_IDL_CALL_FAIL\n", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_25497B000, v0, v1, "%s:%d - ERROR: ISP_EXCLAVEKIT_CMD_HANDLER_ERR_IDL_CALL_FAIL\n", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_25497B000, v0, v1, "%s:%d - ERROR: ISP_EXCLAVEKIT_CMD_HANDLER_ERR_WRONG_INPUT\n", v2, v3, v4, v5);
}

void ispExclaveKitCommandChExfiltration()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1(&dword_25497B000, v0, v1, "%s:%d - before calling new IDL\n", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1(&dword_25497B000, v0, v1, "%s:%d - after calling new IDL\n", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_25497B000, v0, v1, "%s:%d - ERROR: ISP_EXCLAVEKIT_CMD_HANDLER_ERR_IDL_CALL_FAIL\n", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_25497B000, v0, v1, "%s:%d - ERROR: ISP_EXCLAVEKIT_CMD_HANDLER_ERR_IDL_CALL_FAIL\n", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_25497B000, v0, v1, "%s:%d - ERROR: ISP_EXCLAVEKIT_CMD_HANDLER_ERR_WRONG_INPUT\n", v2, v3, v4, v5);
}

void ispExclaveKitCommandChDebugCapability()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1(&dword_25497B000, v0, v1, "%s:%d - before calling new IDL\n", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1(&dword_25497B000, v0, v1, "%s:%d - after calling new IDL\n", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_25497B000, v0, v1, "%s:%d - ERROR: ISP_EXCLAVEKIT_CMD_HANDLER_ERR_IDL_CALL_FAIL\n", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_25497B000, v0, v1, "%s:%d - ERROR: ISP_EXCLAVEKIT_CMD_HANDLER_ERR_IDL_CALL_FAIL\n", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_25497B000, v0, v1, "%s:%d - ERROR: ISP_EXCLAVEKIT_CMD_HANDLER_ERR_WRONG_INPUT\n", v2, v3, v4, v5);
}

void isUsingSearApprovedInterface(int a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = 136315650;
  v3 = "isUsingSearApprovedInterface";
  v4 = 1024;
  v5 = 77;
  v6 = 1024;
  v7 = a1;
  _os_log_error_impl(&dword_25497B000, a2, OS_LOG_TYPE_ERROR, "%s:%d - invalid cmdId: 0x%x\n", &v2, 0x18u);
}

void searApprovedInterfaceSwitcherUpdate(char a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = 136315650;
  v3 = "searApprovedInterfaceSwitcherUpdate";
  v4 = 1024;
  v5 = 85;
  v6 = 1024;
  v7 = a1 & 1;
  _os_log_debug_impl(&dword_25497B000, a2, OS_LOG_TYPE_DEBUG, "%s:%d - isUsingSearApprovedPath=%d\n", &v2, 0x18u);
}

void ispExclaveKitCommandChRunIsp()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_25497B000, v0, v1, "%s:%d - ERROR: ISP_EXCLAVEKIT_CMD_HANDLER_ERR_IDL_CALL_FAIL\n", v2, v3, v4, v5);
}

{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  v2 = 52;
  _os_log_debug_impl(&dword_25497B000, v0, OS_LOG_TYPE_DEBUG, "%s:%d - Skip downstream node\n", v1, 0x12u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_25497B000, v0, v1, "%s:%d - ERROR: ISP_EXCLAVEKIT_CMD_HANDLER_ERR_WRONG_INPUT\n", v2, v3, v4, v5);
}

void ispExclaveKitCommandChRunPostProcess()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_25497B000, v0, v1, "%s:%d - ERROR: ISP_EXCLAVEKIT_CMD_HANDLER_ERR_WRONG_INPUT\n", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_25497B000, v0, v1, "%s:%d - ERROR: ispExclaveKitCommandChRunPostProcess failed\n", v2, v3, v4, v5);
}

void ___Z36ispExclaveKitCommandChRunPostProcessP20sExclaveKitIspCmdHdr_block_invoke_cold_1()
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  v4 = 169;
  v5 = v0;
  v6 = v1;
  v7 = 2048;
  v8 = 792;
  _os_log_error_impl(&dword_25497B000, v2, OS_LOG_TYPE_ERROR, "%s:%d - ERROR: unmatch command size %u %zu\n", v3, 0x22u);
}

void facekitmodule_facekittrackedface__decode_cold_1(int a1)
{
  printf("TB_FATAL: invalid value: unexpected case value, %llx (%s:%d)\n", a1, "/Library/Caches/com.apple.xbs/Binaries/ExclaveSISP_XNU_products/install/TempContent/Objects/ExclaveSISP.build/ISPExclaveKitServices.build/DerivedSources/ISPExclaveKitServices_C.c", 2333);
  _os_crash("TB_FATAL: invalid value: unexpected case value, %llx", v1);
  __break(1u);
}

void facekitmodule_facekittrackedface__decode_cold_2(int a1)
{
  printf("TB_FATAL: invalid value: unexpected case value, %llx (%s:%d)\n", a1, "/Library/Caches/com.apple.xbs/Binaries/ExclaveSISP_XNU_products/install/TempContent/Objects/ExclaveSISP.build/ISPExclaveKitServices.build/DerivedSources/ISPExclaveKitServices_C.c", 2428);
  _os_crash("TB_FATAL: invalid value: unexpected case value, %llx", v1);
  __break(1u);
}

void facekitmodule_facekitaccessibilitydata__decode_cold_1(unsigned __int8 a1)
{
  printf("TB_FATAL: invalid value: unexpected case value, %llx (%s:%d)\n", a1, "/Library/Caches/com.apple.xbs/Binaries/ExclaveSISP_XNU_products/install/TempContent/Objects/ExclaveSISP.build/ISPExclaveKitServices.build/DerivedSources/ISPExclaveKitServices_C.c", 2858);
  _os_crash("TB_FATAL: invalid value: unexpected case value, %llx", v1);
  __break(1u);
}

void ispexclavekitshared_ekchannelinformation__decode_cold_1(unsigned int a1)
{
  printf("TB_FATAL: invalid value: unexpected case value, %llx (%s:%d)\n", a1, "/Library/Caches/com.apple.xbs/Binaries/ExclaveSISP_XNU_products/install/TempContent/Objects/ExclaveSISP.build/ISPExclaveKitServices.build/DerivedSources/ISPExclaveKitServices_C.c", 5554);
  _os_crash("TB_FATAL: invalid value: unexpected case value, %llx", v1);
  __break(1u);
}

void ispexclavekitshared_ekchannelcameraconfiguration__decode_cold_1(unsigned int a1)
{
  printf("TB_FATAL: invalid value: unexpected case value, %llx (%s:%d)\n", a1, "/Library/Caches/com.apple.xbs/Binaries/ExclaveSISP_XNU_products/install/TempContent/Objects/ExclaveSISP.build/ISPExclaveKitServices.build/DerivedSources/ISPExclaveKitServices_C.c", 5779);
  _os_crash("TB_FATAL: invalid value: unexpected case value, %llx", v1);
  __break(1u);
}

void ispexclavekitshared_ekchannelstreamingcontrol_channelalgorithmenable_cold_1(unsigned int a1)
{
  printf("TB_FATAL: invalid value: unexpected bits, 0x%llx (%s:%d)\n", a1, "/Library/Caches/com.apple.xbs/Binaries/ExclaveSISP_XNU_products/install/TempContent/Objects/ExclaveSISP.build/ISPExclaveKitServices.build/DerivedSources/ISPExclaveKitServices_C.c", 4477);
  _os_crash("TB_FATAL: invalid value: unexpected bits, 0x%llx", v1);
  __break(1u);
}

void ispexclavekitshared_ekchannelstreamingcontrol_channelalgorithmenable_cold_2(unsigned int a1)
{
  printf("TB_FATAL: invalid value: unexpected bits, 0x%llx (%s:%d)\n", a1, "/Library/Caches/com.apple.xbs/Binaries/ExclaveSISP_XNU_products/install/TempContent/Objects/ExclaveSISP.build/ISPExclaveKitServices.build/DerivedSources/ISPExclaveKitServices_C.c", 4501);
  _os_crash("TB_FATAL: invalid value: unexpected bits, 0x%llx", v1);
  __break(1u);
}

void ispexclavekitshared_ekchannelstreamingcontrol_channelconfigurationstatusread_cold_1(uint64_t a1)
{
  printf("TB_FATAL: invalid value: unexpected case value, %llx (%s:%d)\n", a1, "/Library/Caches/com.apple.xbs/Binaries/ExclaveSISP_XNU_products/install/TempContent/Objects/ExclaveSISP.build/ISPExclaveKitServices.build/DerivedSources/ISPExclaveKitServices_C.c", 4397);
  _os_crash("TB_FATAL: invalid value: unexpected case value, %llx", v1);
  __break(1u);
}

void ispexclavekitshared_ekispmanager_channelsensormetadataset_cold_1(unsigned int a1)
{
  printf("TB_FATAL: invalid value: unexpected case value, %llx (%s:%d)\n", a1, "/Library/Caches/com.apple.xbs/Binaries/ExclaveSISP_XNU_products/install/TempContent/Objects/ExclaveSISP.build/ISPExclaveKitServices.build/DerivedSources/ISPExclaveKitServices_C.c", 5073);
  _os_crash("TB_FATAL: invalid value: unexpected case value, %llx", v1);
  __break(1u);
}

void ispexclavekitshared_ekispmanager_channelsensormetadataset_cold_2(unsigned int a1)
{
  printf("TB_FATAL: invalid value: unexpected case value, %llx (%s:%d)\n", a1, "/Library/Caches/com.apple.xbs/Binaries/ExclaveSISP_XNU_products/install/TempContent/Objects/ExclaveSISP.build/ISPExclaveKitServices.build/DerivedSources/ISPExclaveKitServices_C.c", 5248);
  _os_crash("TB_FATAL: invalid value: unexpected case value, %llx", v1);
  __break(1u);
}

void anstmodule_anstobjectv1502__v_visit_cold_1()
{
  printf("TB_ASSERT: (vErr == TB_ERROR_SUCCESS) && tb_message_subrange failed, \b\b (%s:%d)\n", "ISPExclaveKitServices_C.c", 10990);
  _os_crash("TB_ASSERT: (vErr == TB_ERROR_SUCCESS) && tb_message_subrange failed");
  __break(1u);
}

void anstmodule_anstobjectv1502__v_visit_cold_2()
{
  printf("TB_ASSERT: (err == TB_ERROR_SUCCESS) && failed to wrap packed buffer, \b\b (%s:%d)\n", "ISPExclaveKitServices_C.c", 10971);
  _os_crash("TB_ASSERT: (err == TB_ERROR_SUCCESS) && failed to wrap packed buffer");
  __break(1u);
}

void anstmodule_anstobjectv1502__v_visit_cold_3()
{
  printf("TB_ASSERT: (anstmodule_anstobjectv1502__decode(msg, &item) == TB_ERROR_SUCCESS) && failed to decode type: AnstModule.ANSTObjectV1502, \b\b (%s:%d)\n", "ISPExclaveKitServices_C.c", 10976);
  _os_crash("TB_ASSERT: (anstmodule_anstobjectv1502__decode(msg, &item) == TB_ERROR_SUCCESS) && failed to decode type: AnstModule.ANSTObjectV1502");
  __break(1u);
}

void anstmodule_anstobjectv1502__v_visit_cold_4(unsigned __int8 a1)
{
  printf("TB_FATAL: invalid tag in array metadata: 0x%x (%s:%d)\n", a1, "/Library/Caches/com.apple.xbs/Binaries/ExclaveSISP_XNU_products/install/TempContent/Objects/ExclaveSISP.build/ISPExclaveKitServices.build/DerivedSources/ISPExclaveKitServices_C.c", 10993);
  _os_crash("TB_FATAL: invalid tag in array metadata: 0x%x", v1);
  __break(1u);
}

void __anstmodule_anstobjectv1502__v_visit_block_invoke_cold_1()
{
  printf("TB_ASSERT: (anstmodule_anstobjectv1502__decode(msg, &item) == TB_ERROR_SUCCESS) && failed to decode type: AnstModule.ANSTObjectV1502, \b\b (%s:%d)\n", "ISPExclaveKitServices_C.c", 10985);
  _os_crash("TB_ASSERT: (anstmodule_anstobjectv1502__decode(msg, &item) == TB_ERROR_SUCCESS) && failed to decode type: AnstModule.ANSTObjectV1502");
  __break(1u);
}

void anstmodule_anstfacev1502__v_visit_cold_1()
{
  printf("TB_ASSERT: (vErr == TB_ERROR_SUCCESS) && tb_message_subrange failed, \b\b (%s:%d)\n", "ISPExclaveKitServices_C.c", 11176);
  _os_crash("TB_ASSERT: (vErr == TB_ERROR_SUCCESS) && tb_message_subrange failed");
  __break(1u);
}

void anstmodule_anstfacev1502__v_visit_cold_2()
{
  printf("TB_ASSERT: (err == TB_ERROR_SUCCESS) && failed to wrap packed buffer, \b\b (%s:%d)\n", "ISPExclaveKitServices_C.c", 11157);
  _os_crash("TB_ASSERT: (err == TB_ERROR_SUCCESS) && failed to wrap packed buffer");
  __break(1u);
}

void anstmodule_anstfacev1502__v_visit_cold_3()
{
  printf("TB_ASSERT: (anstmodule_anstfacev1502__decode(msg, &item) == TB_ERROR_SUCCESS) && failed to decode type: AnstModule.ANSTFaceV1502, \b\b (%s:%d)\n", "ISPExclaveKitServices_C.c", 11162);
  _os_crash("TB_ASSERT: (anstmodule_anstfacev1502__decode(msg, &item) == TB_ERROR_SUCCESS) && failed to decode type: AnstModule.ANSTFaceV1502");
  __break(1u);
}

void anstmodule_anstfacev1502__v_visit_cold_4(unsigned __int8 a1)
{
  printf("TB_FATAL: invalid tag in array metadata: 0x%x (%s:%d)\n", a1, "/Library/Caches/com.apple.xbs/Binaries/ExclaveSISP_XNU_products/install/TempContent/Objects/ExclaveSISP.build/ISPExclaveKitServices.build/DerivedSources/ISPExclaveKitServices_C.c", 11179);
  _os_crash("TB_FATAL: invalid tag in array metadata: 0x%x", v1);
  __break(1u);
}

void __anstmodule_anstfacev1502__v_visit_block_invoke_cold_1()
{
  printf("TB_ASSERT: (anstmodule_anstfacev1502__decode(msg, &item) == TB_ERROR_SUCCESS) && failed to decode type: AnstModule.ANSTFaceV1502, \b\b (%s:%d)\n", "ISPExclaveKitServices_C.c", 11171);
  _os_crash("TB_ASSERT: (anstmodule_anstfacev1502__decode(msg, &item) == TB_ERROR_SUCCESS) && failed to decode type: AnstModule.ANSTFaceV1502");
  __break(1u);
}

void attentionawarenessmodule_ekattentionawareness_channelrunattentiondetect_cold_1(unsigned int a1)
{
  printf("TB_FATAL: invalid value: unexpected bits, 0x%llx (%s:%d)\n", a1, "/Library/Caches/com.apple.xbs/Binaries/ExclaveSISP_XNU_products/install/TempContent/Objects/ExclaveSISP.build/ISPExclaveKitServices.build/DerivedSources/ISPExclaveKitServices_C.c", 12701);
  _os_crash("TB_FATAL: invalid value: unexpected bits, 0x%llx", v1);
  __break(1u);
}

void attentionawarenessmodule_ekattentionawareness_channelupdateattentionconfig_cold_1(unsigned int a1)
{
  printf("TB_FATAL: invalid value: unexpected bits, 0x%llx (%s:%d)\n", a1, "/Library/Caches/com.apple.xbs/Binaries/ExclaveSISP_XNU_products/install/TempContent/Objects/ExclaveSISP.build/ISPExclaveKitServices.build/DerivedSources/ISPExclaveKitServices_C.c", 13207);
  _os_crash("TB_FATAL: invalid value: unexpected bits, 0x%llx", v1);
  __break(1u);
}

void autoexposuremodule_ekautoexposureresult__decode_cold_1(unsigned int a1)
{
  printf("TB_FATAL: invalid value: unexpected case value, %llx (%s:%d)\n", a1, "/Library/Caches/com.apple.xbs/Binaries/ExclaveSISP_XNU_products/install/TempContent/Objects/ExclaveSISP.build/ISPExclaveKitServices.build/DerivedSources/ISPExclaveKitServices_C.c", 5210);
  _os_crash("TB_FATAL: invalid value: unexpected case value, %llx", v1);
  __break(1u);
}

void autoexposuremodule_ekautoexposureresult__decode_cold_2(unsigned int a1)
{
  printf("TB_FATAL: invalid value: unexpected case value, %llx (%s:%d)\n", a1, "/Library/Caches/com.apple.xbs/Binaries/ExclaveSISP_XNU_products/install/TempContent/Objects/ExclaveSISP.build/ISPExclaveKitServices.build/DerivedSources/ISPExclaveKitServices_C.c", 5305);
  _os_crash("TB_FATAL: invalid value: unexpected case value, %llx", v1);
  __break(1u);
}

void autoexposuremodule_ekautoexposure_channelautoexposureflickerfreqset_cold_1(unsigned int a1)
{
  printf("TB_FATAL: invalid value: unexpected case value, %llx (%s:%d)\n", a1, "/Library/Caches/com.apple.xbs/Binaries/ExclaveSISP_XNU_products/install/TempContent/Objects/ExclaveSISP.build/ISPExclaveKitServices.build/DerivedSources/ISPExclaveKitServices_C.c", 14679);
  _os_crash("TB_FATAL: invalid value: unexpected case value, %llx", v1);
  __break(1u);
}

void ispexclavekitdebugmodule_ekdebug_channelinfiltration_cold_1(uint64_t a1)
{
  printf("TB_FATAL: invalid value: unexpected case value, %llx (%s:%d)\n", a1, "/Library/Caches/com.apple.xbs/Binaries/ExclaveSISP_XNU_products/install/TempContent/Objects/ExclaveSISP.build/ISPExclaveKitServices.build/DerivedSources/ISPExclaveKitServices_C.c", 18235);
  _os_crash("TB_FATAL: invalid value: unexpected case value, %llx", v1);
  __break(1u);
}

void ispexclavekithardwaredefaultconfig_ekpdpconfig__raw_encode_cold_1(uint64_t a1)
{
  printf("TB_FATAL: invalid value: unexpected case value, %llx (%s:%d)\n", a1, "/Library/Caches/com.apple.xbs/Binaries/ExclaveSISP_XNU_products/install/TempContent/Objects/ExclaveSISP.build/ISPExclaveKitServices.build/DerivedSources/ISPExclaveKitServices_C.c", 21722);
  _os_crash("TB_FATAL: invalid value: unexpected case value, %llx", v1);
  __break(1u);
}

void ispexclavekithardwaredefaultconfig_ekpdpconfig__raw_encode_cold_2(uint64_t a1)
{
  printf("TB_FATAL: invalid value: unexpected case value, %llx (%s:%d)\n", a1, "/Library/Caches/com.apple.xbs/Binaries/ExclaveSISP_XNU_products/install/TempContent/Objects/ExclaveSISP.build/ISPExclaveKitServices.build/DerivedSources/ISPExclaveKitServices_C.c", 22083);
  _os_crash("TB_FATAL: invalid value: unexpected case value, %llx", v1);
  __break(1u);
}

void fidflowmodule_fidsessionconfig__raw_encode_cold_1(unsigned __int8 a1)
{
  printf("TB_FATAL: invalid value: unexpected case value, %llx (%s:%d)\n", a1, "/Library/Caches/com.apple.xbs/Binaries/ExclaveSISP_XNU_products/install/TempContent/Objects/ExclaveSISP.build/ISPExclaveKitServices.build/DerivedSources/ISPExclaveKitServices_C.c", 27338);
  _os_crash("TB_FATAL: invalid value: unexpected case value, %llx", v1);
  __break(1u);
}

void fidflowmodule_fidsessionconfig__raw_encode_cold_2(unsigned __int8 a1)
{
  printf("TB_FATAL: invalid value: unexpected case value, %llx (%s:%d)\n", a1, "/Library/Caches/com.apple.xbs/Binaries/ExclaveSISP_XNU_products/install/TempContent/Objects/ExclaveSISP.build/ISPExclaveKitServices.build/DerivedSources/ISPExclaveKitServices_C.c", 27433);
  _os_crash("TB_FATAL: invalid value: unexpected case value, %llx", v1);
  __break(1u);
}

void fidflowmodule_fidbiocapturedoublet__raw_encode_cold_1(unsigned __int8 a1)
{
  printf("TB_FATAL: invalid value: unexpected case value, %llx (%s:%d)\n", a1, "/Library/Caches/com.apple.xbs/Binaries/ExclaveSISP_XNU_products/install/TempContent/Objects/ExclaveSISP.build/ISPExclaveKitServices.build/DerivedSources/ISPExclaveKitServices_C.c", 27814);
  _os_crash("TB_FATAL: invalid value: unexpected case value, %llx", v1);
  __break(1u);
  CFBooleanGetTypeID();
}

CFRange CFStringFind(CFStringRef theString, CFStringRef stringToFind, CFStringCompareFlags compareOptions)
{
  v3 = MEMORY[0x28210FD68](theString, stringToFind, compareOptions);
  result.length = v4;
  result.location = v3;
  return result;
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}