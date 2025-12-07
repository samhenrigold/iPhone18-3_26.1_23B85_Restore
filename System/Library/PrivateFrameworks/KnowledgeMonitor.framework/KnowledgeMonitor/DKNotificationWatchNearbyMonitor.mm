@interface DKNotificationWatchNearbyMonitor
@end

@implementation DKNotificationWatchNearbyMonitor

void *__42___DKNotificationWatchNearbyMonitor_start__block_invoke(uint64_t a1, int a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CFE0C8] contextChannel];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 138412290;
    *&v5[4] = @"com.apple.coreduetd.nearbydeviceschanged";
    _os_log_impl(&dword_22595A000, v3, OS_LOG_TYPE_DEFAULT, "Notification handler called for %@", v5, 0xCu);
  }

  *v5 = 0;
  result = notify_get_state(a2, v5);
  if (!result)
  {
    return [_DKNotificationWatchNearbyMonitor setIsWatchNearby:*v5 != 0];
  }

  return result;
}

@end