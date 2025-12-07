uint64_t ccrng_generate_bridge(uint64_t (**a1)(void))
{
  result = (*a1)();
  if (result)
  {
    abort();
  }

  return result;
}

uint64_t SPAKE2CtxSize()
{
  v0 = ccspake_cp_256();

  return MEMORY[0x282201960](v0);
}

uint64_t SPAKE2Alishaz0Size()
{
  v0 = ccspake_cp_256();

  return MEMORY[0x282201970](v0);
}

uint64_t keyIsCompactRepresentable(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = MEMORY[0x28223BE20](a1, a2, a3);
  [v3 length];
  [v3 bytes];

  if (ccec_x963_import_pub())
  {
    return 0;
  }

  result = ccec_validate_pub();
  if (result)
  {
    MEMORY[0x28223BE20](result, v5, v6);
    ccn_sub();
    return ccn_cmp() >= 0;
  }

  return result;
}