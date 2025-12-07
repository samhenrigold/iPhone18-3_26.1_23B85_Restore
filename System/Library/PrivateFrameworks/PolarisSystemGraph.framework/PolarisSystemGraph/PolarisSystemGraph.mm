uint64_t __PSSGLogSharedInstance(uint64_t a1, uint64_t a2)
{
  if (__PSSGLogSharedInstance_onceToken != -1)
  {
    __PSSGLogSharedInstance_cold_1();
  }

  return __PSSGLogSharedInstance_sharedInstance;
}

uint64_t __PSSysHealthLogSharedInstance(uint64_t a1, uint64_t a2)
{
  if (__PSSysHealthLogSharedInstance_onceToken != -1)
  {
    __PSSysHealthLogSharedInstance_cold_1();
  }

  return sharedInstance;
}