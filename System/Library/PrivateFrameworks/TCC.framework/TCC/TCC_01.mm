void __TCCCopyIconResourcePathForService_block_invoke_2_cold_2(uint64_t a1)
{
  TCCAuthPromptIconString(*(a1 + 40));
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void __TCCCopyIconResourcePathForService_block_invoke_2_cold_4(void *a1)
{
  xpc_dictionary_get_string(a1, *MEMORY[0x1E69E9E28]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void __TCCAccessResetAll_block_invoke_2_cold_2(void *a1)
{
  xpc_dictionary_get_string(a1, *MEMORY[0x1E69E9E28]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void __TCCIntegrityFlagCheck_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __TCCIntegrityFlagCheck_block_invoke_cold_4(void *a1)
{
  xpc_dictionary_get_string(a1, *MEMORY[0x1E69E9E28]);
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void __TCCIntegrityFlagReset_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __TCCIntegrityFlagReset_block_invoke_cold_4(void *a1)
{
  xpc_dictionary_get_string(a1, *MEMORY[0x1E69E9E28]);
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void tccd_reply_description_redacted_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __TCCGetOverridesInternal_block_invoke_2_cold_2()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __TCCGetOverridesInternal_block_invoke_2_cold_4(void *a1)
{
  xpc_dictionary_get_string(a1, *MEMORY[0x1E69E9E28]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void __TCCResetInternalWithConnection_block_invoke_2_cold_2(void *a1)
{
  xpc_dictionary_get_string(a1, *MEMORY[0x1E69E9E28]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void __tcc_authorization_request_with_endpoint_block_invoke_cold_1()
{
  v5 = 136446466;
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_0(&dword_1B1686000, MEMORY[0x1E69E9C10], v0, "TCC authorization request (%{public}s) fails: %{public}@", v1, v2, v3, v4, v5);
}

void __tcc_authorization_preflight_with_endpoint_block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  *v8 = 136446466;
  *&v8[4] = tcc_service_get_name(*(a1 + 40));
  *&v8[12] = 2114;
  *&v8[14] = a2;
  OUTLINED_FUNCTION_1_0(&dword_1B1686000, MEMORY[0x1E69E9C10], v3, "tcc_authorization_preflight(%{public}s) fails: %{public}@", v4, v5, v6, v7, *v8, *&v8[8], *&v8[16]);
}

void __tcc_authorization_audit_token_request_change_block_invoke_cold_1()
{
  v5 = 136446466;
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_0(&dword_1B1686000, MEMORY[0x1E69E9C10], v0, "TCC authorization audit token request change (%{public}s) fails: %{public}@", v1, v2, v3, v4, v5);
}

void __tcc_authorization_audit_token_report_use_block_invoke_cold_1()
{
  v5 = 136446466;
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_0(&dword_1B1686000, MEMORY[0x1E69E9C10], v0, "(%{public}s) fails: %{public}@", v1, v2, v3, v4, v5);
}

void __tcc_authorization_request_change_block_invoke_cold_1()
{
  v5 = 136446466;
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_0(&dword_1B1686000, MEMORY[0x1E69E9C10], v0, "TCC authorization request change (%{public}s) fails: %{public}@", v1, v2, v3, v4, v5);
}

void __tcc_authorization_set_access_with_prompt_block_invoke_cold_1()
{
  v5 = 136446466;
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_0(&dword_1B1686000, MEMORY[0x1E69E9C10], v0, "TCC authorization request change (%{public}s) fails: %{public}@", v1, v2, v3, v4, v5);
}

void tcc_authorization_cache_create_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "tcc_authorization_cache_create";
  OUTLINED_FUNCTION_0_0(&dword_1B1686000, a1, a3, "%s: os_state_add_handler failed", a5, a6, a7, a8, v8, DWORD2(v8));
}

void tcc_authorization_cache_create_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "tcc_authorization_cache_create";
  OUTLINED_FUNCTION_0_0(&dword_1B1686000, a1, a3, "%s: tcc_authorization_change_monitor_create failed", a5, a6, a7, a8, v8, DWORD2(v8));
}

void tcc_authorization_cache_create_cold_3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "tcc_authorization_cache_create";
  OUTLINED_FUNCTION_0_0(&dword_1B1686000, a1, a3, "%s: CFDictionaryCreateMutable failed", a5, a6, a7, a8, v8, DWORD2(v8));
}

void _tcc_authorization_cache_locked_set_authorization_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_tcc_authorization_cache_locked_set_authorization";
  OUTLINED_FUNCTION_0_0(&dword_1B1686000, a1, a3, "%s: CFDictionaryCreateMutable failed", a5, a6, a7, a8, v8, DWORD2(v8));
}

void tcc_authorization_cache_handle_authorization_changed_for_service_cold_1(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136315138;
  *a2 = "_tcc_authorization_cache_copy_current_authorization";
  _os_log_error_impl(&dword_1B1686000, log, OS_LOG_TYPE_ERROR, "%s: failed to initialize server", buf, 0xCu);
}

void tcc_authorization_cache_handle_authorization_changed_for_service_cold_2(uint64_t a1)
{
  tcc_service_get_name(a1);
  v7 = 136315394;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_0(&dword_1B1686000, v1, v2, "%s: Failed to find cached authorizations for %{public}s", v3, v4, v5, v6, v7);
}

void tcc_authorization_cache_handle_authorization_changed_for_service_clear_cold_1(uint64_t a1)
{
  tcc_service_get_name(a1);
  v7 = 136315394;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_0(&dword_1B1686000, v1, v2, "%s: Failed to find cached authorizations for %{public}s", v3, v4, v5, v6, v7);
}

void ___tcc_authorization_cache_copy_current_authorization_block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = 136315394;
  v3 = "_tcc_authorization_cache_copy_current_authorization_block_invoke";
  v4 = 2114;
  v5 = a1;
  _os_log_error_impl(&dword_1B1686000, a2, OS_LOG_TYPE_ERROR, "%s: authorization request failed with error: %{public}@", &v2, 0x16u);
}

void tcc_events_subscribe_cold_1(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = 136446210;
  v4 = v2;
  _os_log_debug_impl(&dword_1B1686000, a2, OS_LOG_TYPE_DEBUG, "Replaced subscription: %{public}s", &v3, 0xCu);
}

void ___tcc_events_initialize_block_invoke_2_cold_1(const _xpc_type_s *a1, uint64_t a2, NSObject *a3)
{
  v8 = *MEMORY[0x1E69E9840];
  xpc_type_get_name(a1);
  OUTLINED_FUNCTION_1_1();
  v6 = 2080;
  v7 = a2;
  _os_log_error_impl(&dword_1B1686000, a3, OS_LOG_TYPE_ERROR, "Subscriber received event of unexpected type %s: %s", v5, 0x16u);
}

void ___tcc_events_initialize_block_invoke_2_cold_2()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(&dword_1B1686000, v0, OS_LOG_TYPE_DEBUG, "Subscriber received event: %s", v1, 0xCu);
}

void ___tcc_events_initialize_block_invoke_2_cold_10(void *a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  xpc_dictionary_get_string(a1, *MEMORY[0x1E69E9E28]);
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(&dword_1B1686000, a2, OS_LOG_TYPE_ERROR, "Subscriber received error: %s", v3, 0xCu);
}

void __tcc_server_set_authorization_change_handler_block_invoke_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "tcc_server_set_authorization_change_handler_block_invoke";
  OUTLINED_FUNCTION_3_0(&dword_1B1686000, a1, a3, "Called stub: %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __tcc_server_message_set_authorization_change_policy_block_invoke_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "tcc_server_message_set_authorization_change_policy_block_invoke";
  OUTLINED_FUNCTION_3_0(&dword_1B1686000, a1, a3, "Called stub: %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void ___tcc_server_send_request_authorization_block_invoke_3_cold_1()
{
  __error();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void ___tcc_server_send_request_authorization_block_invoke_3_cold_3(void *a1, const char *a2)
{
  xpc_dictionary_get_string(a1, a2);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void ___tcc_server_send_prompt_authorization_value_block_invoke_2_cold_1(void *a1, const char *a2)
{
  string = xpc_dictionary_get_string(a1, a2);
  xpc_dictionary_get_string(a1, string);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void ___tcc_server_send_get_authorization_records_block_invoke_2_cold_3(void *a1, const char *a2)
{
  xpc_dictionary_get_string(a1, a2);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void ___tcc_server_send_get_identity_for_credential_block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void ___tcc_server_send_get_identity_for_credential_block_invoke_2_cold_2(void *a1, const char *a2)
{
  string = xpc_dictionary_get_string(a1, a2);
  xpc_dictionary_get_string(a1, string);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void ___tcc_server_send_report_resource_use_block_invoke_2_cold_1(void *a1, const char *a2)
{
  string = xpc_dictionary_get_string(a1, a2);
  xpc_dictionary_get_string(a1, string);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void ___tcc_server_send_get_authorization_records_by_services_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void ___tcc_server_send_analytics_for_external_service_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void ___tcc_server_send_analytics_for_external_service_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

CFUUIDBytes CFUUIDGetUUIDBytes(CFUUIDRef uuid)
{
  v1 = MEMORY[0x1EEDB7E70](uuid);
  result.byte8 = v2;
  result.byte9 = BYTE1(v2);
  result.byte10 = BYTE2(v2);
  result.byte11 = BYTE3(v2);
  result.byte12 = BYTE4(v2);
  result.byte13 = BYTE5(v2);
  result.byte14 = BYTE6(v2);
  result.byte15 = HIBYTE(v2);
  result.byte0 = v1;
  result.byte1 = BYTE1(v1);
  result.byte2 = BYTE2(v1);
  result.byte3 = BYTE3(v1);
  result.byte4 = BYTE4(v1);
  result.byte5 = BYTE5(v1);
  result.byte6 = BYTE6(v1);
  result.byte7 = HIBYTE(v1);
  return result;
}