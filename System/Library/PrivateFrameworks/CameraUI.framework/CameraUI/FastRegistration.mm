@interface FastRegistration
@end

@implementation FastRegistration

uint64_t __FastRegistration_computeSignatures_block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = result;
  if (*(result + 60) == 1)
  {
    result = FastRegistration_processProjections(*(*(result + 48) + 32), *(*(result + 48) + 40), a3, a4);
    *(*(*(v4 + 32) + 8) + 24) = result;
  }

  if (!*(*(*(v4 + 32) + 8) + 24))
  {
    if (*(v4 + 56))
    {
      result = Projections_computeMeanStdTable(*(*(v4 + 48) + 32), *(*(v4 + 48) + 40), (*(v4 + 48) + 48));
      *(*(*(v4 + 40) + 8) + 24) = result;
    }
  }

  return result;
}

uint64_t __FastRegistration_computeSignatures_block_invoke_2(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = result;
  if (*(result + 60) == 1)
  {
    result = FastRegistration_processProjections(**(result + 48), *(*(result + 48) + 8), a3, a4);
    *(*(*(v4 + 32) + 8) + 24) = result;
  }

  if (!*(*(*(v4 + 32) + 8) + 24))
  {
    if (*(v4 + 56))
    {
      result = Projections_computeMeanStdTable(**(v4 + 48), *(*(v4 + 48) + 8), (*(v4 + 48) + 16));
      *(*(*(v4 + 40) + 8) + 24) = result;
    }
  }

  return result;
}

uint64_t __FastRegistration_register_block_invoke(void *a1, ...)
{
  va_start(va, a1);
  STACK[0x19878] = *MEMORY[0x1E69E9840];
  result = Projections_computeShiftBruteForce(*(a1[5] + 32), *(a1[5] + 40), (a1[5] + 48), *(a1[6] + 32), *(a1[6] + 40), (a1[6] + 48), *(a1 + 18), &STACK[0x13260], 0.0, va, a1[7], a1[8]);
  *(*(a1[4] + 8) + 24) = result;
  return result;
}

uint64_t __FastRegistration_register_block_invoke_2(uint64_t a1, ...)
{
  va_start(va, a1);
  STACK[0x19878] = *MEMORY[0x1E69E9840];
  result = Projections_computeShiftBruteForce(**(a1 + 40), *(*(a1 + 40) + 8), (*(a1 + 40) + 16), **(a1 + 48), *(*(a1 + 48) + 8), (*(a1 + 48) + 16), *(a1 + 72), &STACK[0x13260], 0.0, va, *(a1 + 56), *(a1 + 64));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

@end