void OSAStabilityMonitorEvaluateStabilityForBundleID(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = v10;
  if (v7)
  {
    v12 = OSAnalyticsHelperServiceConnection();
    if (v12)
    {
      v13 = OSAStabilityMonitorLoadParameters();
      if (v13)
      {
        v14 = ns2xpc();
        v15 = v14 == 0;
        if (v14)
        {
          empty = xpc_dictionary_create_empty();
          xpc_dictionary_set_uint64(empty, "operation", 8uLL);
          xpc_dictionary_set_string(empty, "stability_bundleID", [v7 UTF8String]);
          xpc_dictionary_set_value(empty, "stability_parameters", v14);
          if (v8)
          {
            xpc_dictionary_set_string(empty, "stability_coalitionName", [v8 UTF8String]);
          }

          handler[0] = MEMORY[0x277D85DD0];
          handler[1] = 3221225472;
          handler[2] = __OSAStabilityMonitorEvaluateStabilityForBundleID_block_invoke;
          handler[3] = &unk_2799C0128;
          v18 = v11;
          xpc_connection_send_message_with_reply(v12, empty, v9, handler);
        }

        else
        {
          empty = OSAStabilityMonitorLogDomain(0);
          if (os_log_type_enabled(empty, OS_LOG_TYPE_ERROR))
          {
            OSAStabilityMonitorEvaluateStabilityForBundleID_cold_1();
          }
        }
      }

      else
      {
        v14 = OSAStabilityMonitorLogDomain(0);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          OSAStabilityMonitorEvaluateStabilityForBundleID_cold_2();
        }

        v15 = 1;
      }
    }

    else
    {
      v13 = OSAStabilityMonitorLogDomain(0);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        OSAStabilityMonitorEvaluateStabilityForBundleID_cold_3();
      }

      v15 = 1;
    }
  }

  else
  {
    v12 = OSAStabilityMonitorLogDomain(v10);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      OSAStabilityMonitorEvaluateStabilityForBundleID_cold_4();
    }

    v15 = 1;
  }

  if (v11 && v15)
  {
    v11[2](v11, 0);
  }
}

id OSAStabilityMonitorLoadParameters()
{
  if (objc_opt_class())
  {
    v0 = [MEMORY[0x277D73668] clientWithIdentifier:295];
    v1 = [v0 levelForFactor:@"parameters" withNamespaceName:@"OS_ANALYTICS_STABILITY_MONITOR"];
    v2 = MEMORY[0x277CBEA90];
    v3 = [v1 fileValue];
    v4 = [v3 path];
    v5 = [v2 dataWithContentsOfFile:v4];

    if (v5)
    {
      v12 = 0;
      v7 = [MEMORY[0x277CCAC58] propertyListWithData:v5 options:0 format:0 error:&v12];
      v8 = v12;
      v9 = v8;
      if (!v7)
      {
        v10 = OSAStabilityMonitorLogDomain(v8);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          OSAStabilityMonitorLoadParameters_cold_1();
        }
      }
    }

    else
    {
      v9 = OSAStabilityMonitorLogDomain(v6);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        OSAStabilityMonitorLoadParameters_cold_2();
      }

      v7 = 0;
    }
  }

  else
  {
    v0 = OSAStabilityMonitorLogDomain(0);
    if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
    {
      OSAStabilityMonitorLoadParameters_cold_3();
    }

    v7 = 0;
  }

  return v7;
}

id OSAStabilityMonitorLogDomain(uint64_t a1)
{
  if (OSAStabilityMonitorLogDomain_onceToken != -1)
  {
    OSAStabilityMonitorLogDomain_cold_1();
  }

  v2 = OSAStabilityMonitorLogDomain_domain;

  return v2;
}

void __OSAStabilityMonitorEvaluateStabilityForBundleID_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (MEMORY[0x25F892B00]() == MEMORY[0x277D86468])
  {
    if (xpc_dictionary_get_BOOL(v3, "result"))
    {
      v6 = xpc_dictionary_get_BOOL(v3, "stability_result");
      goto LABEL_12;
    }

    string = xpc_dictionary_get_string(v3, "error_desc");
    v8 = OSAStabilityMonitorLogDomain(string);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __OSAStabilityMonitorEvaluateStabilityForBundleID_block_invoke_cold_2();
    }
  }

  else
  {
    v4 = MEMORY[0x25F892A40](v3);
    v5 = OSAStabilityMonitorLogDomain(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __OSAStabilityMonitorEvaluateStabilityForBundleID_block_invoke_cold_1();
    }

    if (v4)
    {
      free(v4);
    }
  }

  v6 = 0;
LABEL_12:
  v9 = *(a1 + 32);
  if (v9)
  {
    (*(v9 + 16))(v9, v6);
  }

  else
  {
    v10 = OSAStabilityMonitorLogDomain(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __OSAStabilityMonitorEvaluateStabilityForBundleID_block_invoke_cold_3();
    }
  }
}

void sub_25D12EE94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 2u);
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 0xCu);
}

void sub_25D137A24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __OSAStabilityMonitorLogDomain_block_invoke()
{
  OSAStabilityMonitorLogDomain_domain = os_log_create("com.apple.osanalytics.monitors", "stability");

  return MEMORY[0x2821F96F8]();
}

void OSAStabilityMonitorLoadParameters_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void OSAStabilityMonitorLoadParameters_cold_2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void OSAStabilityMonitorLoadParameters_cold_3()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void OSAStabilityMonitorEvaluateStabilityForBundleID_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void OSAStabilityMonitorEvaluateStabilityForBundleID_cold_2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void OSAStabilityMonitorEvaluateStabilityForBundleID_cold_3()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void OSAStabilityMonitorEvaluateStabilityForBundleID_cold_4()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __OSAStabilityMonitorEvaluateStabilityForBundleID_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __OSAStabilityMonitorEvaluateStabilityForBundleID_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __OSAStabilityMonitorEvaluateStabilityForBundleID_block_invoke_cold_3()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}