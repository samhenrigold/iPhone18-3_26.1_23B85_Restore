id _log(uint64_t a1)
{
  if (_log_onceToken != -1)
  {
    _log_cold_1();
  }

  v2 = _log_sLog;

  return v2;
}

uint64_t ___log_block_invoke()
{
  _log_sLog = os_log_create("com.apple.siri.NonverbalCues", "NonverbalCues");

  return MEMORY[0x2821F96F8]();
}