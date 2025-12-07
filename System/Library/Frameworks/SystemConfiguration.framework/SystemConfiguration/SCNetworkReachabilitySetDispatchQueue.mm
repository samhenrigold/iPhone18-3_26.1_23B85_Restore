@interface SCNetworkReachabilitySetDispatchQueue
@end

@implementation SCNetworkReachabilitySetDispatchQueue

void ____SCNetworkReachabilitySetDispatchQueue_block_invoke(uint64_t a1)
{
  if (pthread_mutex_lock((*(a1 + 32) + 16)))
  {
    ____SCNetworkReachabilitySetDispatchQueue_block_invoke_cold_1();
  }

  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v2 == *(v3 + 240))
  {
    *(v3 + 240) = 0;
    v2 = *(a1 + 40);
  }

  nw_release(v2);
  if (pthread_mutex_unlock((*(a1 + 32) + 16)))
  {
    ____SCNetworkReachabilitySetDispatchQueue_block_invoke_cold_2();
  }

  v4 = *(a1 + 32);

  CFRelease(v4);
}

uint64_t ____SCNetworkReachabilitySetDispatchQueue_block_invoke_2(uint64_t a1, void *a2)
{
  if (pthread_mutex_lock((*(a1 + 32) + 16)))
  {
    ____SCNetworkReachabilitySetDispatchQueue_block_invoke_2_cold_1();
  }

  v4 = *(a1 + 32);
  if (*(v4 + 112))
  {
    FlagsFromPath = __SCNetworkReachabilityGetFlagsFromPath(v4 + 193, "Path updated", *(v4 + 248), *(v4 + 80), *(v4 + 272), *(v4 + 280), *(v4 + 288), *(v4 + 292));
    interface_index = nw_path_get_interface_index();
    count = nw_array_get_count();
    nw_release(*(*(a1 + 32) + 248));
    *(*(a1 + 32) + 248) = nw_retain(a2);
    v8 = *(a1 + 32);
    if (*(v8 + 80) <= 1u)
    {
      CrazyIvan46Path = __SCNetworkReachabilityCreateCrazyIvan46Path(*(v8 + 248), *(a1 + 40), *(v8 + 232), 1);
      v8 = *(a1 + 32);
      if (CrazyIvan46Path)
      {
        v10 = CrazyIvan46Path;
        nw_release(*(v8 + 248));
        *(*(a1 + 32) + 248) = v10;
        v8 = *(a1 + 32);
      }
    }

    v11 = *(v8 + 272);
    if (v11 == 2)
    {
      *(v8 + 272) = 0;
      __SCNetworkReachabilityRestartResolver(v8, "Path updated, restart DNS");
      v8 = *(a1 + 32);
      v11 = *(v8 + 272);
    }

    v12 = __SCNetworkReachabilityGetFlagsFromPath(v8 + 193, "ShouldUpdateClient", *(v8 + 248), *(v8 + 80), v11, *(v8 + 280), *(v8 + 288), *(v8 + 292));
    v13 = nw_path_get_interface_index();
    v14 = nw_array_get_count();
    v15 = *(a1 + 32);
    if (*(v8 + 113) && v12 == FlagsFromPath && v13 == interface_index && v14 == count)
    {
      result = pthread_mutex_unlock((v15 + 16));
      if (result)
      {
        ____SCNetworkReachabilitySetDispatchQueue_block_invoke_2_cold_2();
      }
    }

    else
    {

      return reachUpdateAndUnlock(v15);
    }
  }

  else
  {
    result = pthread_mutex_unlock((v4 + 16));
    if (result)
    {
      ____SCNetworkReachabilitySetDispatchQueue_block_invoke_2_cold_3();
    }
  }

  return result;
}

void ____SCNetworkReachabilitySetDispatchQueue_block_invoke_3(uint64_t a1)
{
  nw_resolver_cancel();
  v2 = *(a1 + 32);

  nw_release(v2);
}

@end