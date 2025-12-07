void LBPluginLoggingUtilsInit(uint64_t result, uint64_t a2)
{
  if (LBPluginLoggingUtilsInit_once != -1)
  {
    LBPluginLoggingUtilsInit_cold_1();
  }
}