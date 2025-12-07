id _DKLogSystem(uint64_t a1)
{
  if (_DKLogSystem_onceToken != -1)
  {
    _DKLogSystem_cold_1();
  }

  v2 = _DKLogSystem_log;

  return v2;
}