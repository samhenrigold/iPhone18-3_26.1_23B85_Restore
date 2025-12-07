@interface SCNetworkReachabilityRestartResolver
@end

@implementation SCNetworkReachabilityRestartResolver

void ____SCNetworkReachabilityRestartResolver_block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  if (pthread_mutex_lock((*(a1 + 32) + 16)))
  {
    ____SCNetworkReachabilityRestartResolver_block_invoke_2_cold_1();
  }

  v6 = *(a1 + 32);
  if (*(v6 + 112))
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x2000000000;
    v21 = 0;
    FlagsFromPath = __SCNetworkReachabilityGetFlagsFromPath(v6 + 193, *(a1 + 40), *(v6 + 248), *(v6 + 80), *(v6 + 272), *(v6 + 280), *(v6 + 288), *(v6 + 292));
    interface_index = nw_path_get_interface_index();
    count = nw_array_get_count();
    v10 = *(a1 + 32);
    *(v10 + 272) = a2;
    nw_release(*(v10 + 280));
    *(*(a1 + 32) + 280) = nw_retain(a3);
    v11 = *(a1 + 32);
    *(v11 + 288) = 0;
    *(v11 + 292) = 0;
    nw_array_apply();
    v12 = *(v19 + 24);
    v13 = *(a1 + 32);
    *(v13 + 288) = v12;
    v14 = __SCNetworkReachabilityGetFlagsFromPath(v13 + 193, "ShouldUpdateClient", *(v13 + 248), *(v13 + 80), *(v13 + 272), *(v13 + 280), v12, *(v13 + 292));
    v15 = nw_path_get_interface_index();
    v16 = nw_array_get_count();
    v17 = *(a1 + 32);
    if (*(v13 + 113) && v14 == FlagsFromPath && v15 == interface_index && v16 == count)
    {
      if (pthread_mutex_unlock((v17 + 16)))
      {
        ____SCNetworkReachabilityRestartResolver_block_invoke_2_cold_2();
      }
    }

    else
    {
      reachUpdateAndUnlock(v17);
    }

    _Block_object_dispose(&v18, 8);
  }

  else if (pthread_mutex_unlock((v6 + 16)))
  {
    ____SCNetworkReachabilityRestartResolver_block_invoke_2_cold_3();
  }
}

BOOL ____SCNetworkReachabilityRestartResolver_block_invoke_3(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  evaluator_for_endpoint = nw_path_create_evaluator_for_endpoint();
  v6 = nw_path_evaluator_copy_path();
  if (!v6)
  {
    FlagsFromPath = 0;
    goto LABEL_23;
  }

  v19 = 0;
  type = nw_endpoint_get_type(a3);
  v8 = type;
  if (type == nw_endpoint_type_address)
  {
    address = nw_endpoint_get_address(a3);
    if (!address)
    {
LABEL_16:
      CrazyIvan46Path = __SCNetworkReachabilityCreateCrazyIvan46Path(v6, a3, *(*(a1 + 40) + 232), 0);
      if (CrazyIvan46Path)
      {
        v13 = CrazyIvan46Path;
        nw_release(v6);
        v6 = v13;
      }

      goto LABEL_18;
    }

    _SC_sockaddr_to_string(address, v20, 0x80uLL);
    goto LABEL_10;
  }

  if (type != nw_endpoint_type_url && type != nw_endpoint_type_host)
  {
    v11 = asprintf(&v19, "endpoint %zu, ?");
    goto LABEL_12;
  }

  if (nw_endpoint_get_hostname(a3))
  {
LABEL_10:
    v11 = asprintf(&v19, "endpoint %zu, %s");
LABEL_12:
    if (v11 < 0 && v19)
    {
      free(v19);
      v19 = 0;
    }

    if (v8 != nw_endpoint_type_address)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

LABEL_18:
  if (v19)
  {
    v14 = v19;
  }

  else
  {
    v14 = "";
  }

  FlagsFromPath = __SCNetworkReachabilityGetFlagsFromPath(*(a1 + 40) + 193, v14, v6, 0, 0, 0, 0, 0);
  *(*(*(a1 + 32) + 8) + 24) = 1;
  if (v19)
  {
    free(v19);
  }

LABEL_23:
  interface_index = nw_path_get_interface_index();
  nw_release(v6);
  nw_release(evaluator_for_endpoint);
  v16 = *(a1 + 40);
  v17 = (*(v16 + 292) & 6) != 2;
  if ((FlagsFromPath & 4) != 0)
  {
    v17 = (*(v16 + 292) & 2) == 0;
  }

  result = 1;
  if ((FlagsFromPath & 2) != 0 && v17)
  {
    *(v16 + 292) = FlagsFromPath;
    *(v16 + 296) = interface_index;
    if ((FlagsFromPath & 4) == 0)
    {
      return 0;
    }
  }

  return result;
}

void ____SCNetworkReachabilityRestartResolver_block_invoke(uint64_t a1)
{
  nw_resolver_cancel();
  v2 = *(a1 + 32);

  nw_release(v2);
}

void ____SCNetworkReachabilityRestartResolver_block_invoke_137(uint64_t a1)
{
  if (pthread_mutex_lock((*(a1 + 32) + 16)))
  {
    ____SCNetworkReachabilityRestartResolver_block_invoke_137_cold_1();
  }

  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v2 == *(v3 + 264))
  {
    *(v3 + 264) = 0;
    v2 = *(a1 + 40);
  }

  nw_release(v2);
  if (pthread_mutex_unlock((*(a1 + 32) + 16)))
  {
    ____SCNetworkReachabilityRestartResolver_block_invoke_137_cold_2();
  }

  v4 = *(a1 + 32);

  CFRelease(v4);
}

@end