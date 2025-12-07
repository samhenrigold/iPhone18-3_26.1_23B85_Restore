uint64_t pn_default_log(uint64_t a1, uint64_t a2)
{
  if (pn_default_log_onceToken != -1)
  {
    pn_default_log_cold_1();
  }

  return pn_default_log_sLog;
}

os_log_t __pn_default_log_block_invoke()
{
  result = os_log_create("com.apple.phonenumbers", "default");
  pn_default_log_sLog = result;
  return result;
}