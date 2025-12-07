@interface UIAlertController
@end

@implementation UIAlertController

void __82__UIAlertController_TelephonyPreferences__tps_tapToRadarAlertControllerWithError___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CC1E80] defaultWorkspace];
  v3 = *(a1 + 32);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __82__UIAlertController_TelephonyPreferences__tps_tapToRadarAlertControllerWithError___block_invoke_2;
  v4[3] = &unk_2782E3B38;
  v5 = v3;
  [v2 openURL:v5 configuration:0 completionHandler:v4];
}

void __82__UIAlertController_TelephonyPreferences__tps_tapToRadarAlertControllerWithError___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v6 = v4;
  if (v4)
  {
    v7 = TPSLog(v4, v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __82__UIAlertController_TelephonyPreferences__tps_tapToRadarAlertControllerWithError___block_invoke_2_cold_1(a1, v6, v7);
    }
  }
}

void __82__UIAlertController_TelephonyPreferences__tps_tapToRadarAlertControllerWithError___block_invoke_2_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_21B8E9000, log, OS_LOG_TYPE_ERROR, "Opening URL %@ failed with error %@", &v4, 0x16u);
}

@end