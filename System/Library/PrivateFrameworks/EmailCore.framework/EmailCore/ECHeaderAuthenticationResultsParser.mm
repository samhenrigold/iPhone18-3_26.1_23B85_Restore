@interface ECHeaderAuthenticationResultsParser
@end

@implementation ECHeaderAuthenticationResultsParser

ECHeaderAuthenticationResults *__78___ECHeaderAuthenticationResultsParser__authenticationResultsForHeaderBodies___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [objc_alloc(MEMORY[0x277CCAC80]) initWithString:v3];
  v5 = [*(a1 + 32) _skipCFWSWithScanner:v4];
  if (v5)
  {
    v6 = *(a1 + 32);
    v19 = 0;
    v7 = [v6 _scanQuotedValueWithScanner:v4 intoString:&v19];
    v5 = v19;
    v8 = v5;
    if (v7)
    {
      v5 = [*(a1 + 32) _skipCFWSWithScanner:v4];
      if (v5)
      {
        v9 = [*(a1 + 32) _versionWithScanner:v4];
        v10 = *(a1 + 32);
        v18 = 0;
        v11 = [v10 _statementsWithScanner:v4 intoArray:&v18];
        v12 = v18;
        v13 = v12;
        if (v11)
        {
          v14 = [ECHeaderAuthenticationResults alloc];
          v15 = [v13 ef_notEmpty];
          v16 = [(ECHeaderAuthenticationResults *)v14 initWithAuthenticationServiceIdentifier:v8 version:v9 statements:v15];
        }

        else
        {
          v15 = _ef_log_ECHeaderAuthenticationResults(v12);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            __78___ECHeaderAuthenticationResultsParser__authenticationResultsForHeaderBodies___block_invoke_cold_2(v15);
          }

          v16 = 0;
        }

        goto LABEL_10;
      }
    }
  }

  else
  {
    v8 = 0;
  }

  v13 = _ef_log_ECHeaderAuthenticationResults(v5);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    __78___ECHeaderAuthenticationResultsParser__authenticationResultsForHeaderBodies___block_invoke_cold_1(v13);
  }

  v16 = 0;
LABEL_10:

  return v16;
}

uint64_t __61___ECHeaderAuthenticationResultsParser__skipCFWSWithScanner___block_invoke()
{
  _skipCFWSWithScanner__parentheses = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"()"];

  return MEMORY[0x2821F96F8]();
}

uint64_t __85___ECHeaderAuthenticationResultsParser__scanToCFWSOrSemicolonWithScanner_intoString___block_invoke()
{
  v0 = [MEMORY[0x277CCAB50] whitespaceAndNewlineCharacterSet];
  v1 = _scanToCFWSOrSemicolonWithScanner_intoString__whitespaceAndSemicolon;
  _scanToCFWSOrSemicolonWithScanner_intoString__whitespaceAndSemicolon = v0;

  v2 = _scanToCFWSOrSemicolonWithScanner_intoString__whitespaceAndSemicolon;

  return objc_msgSend(v2, "addCharactersInString:", @"(;");
}

uint64_t __79___ECHeaderAuthenticationResultsParser__scanQuotedValueWithScanner_intoString___block_invoke()
{
  _scanQuotedValueWithScanner_intoString__quotes = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@""];

  return MEMORY[0x2821F96F8]();
}

uint64_t __81___ECHeaderAuthenticationResultsParser__scanToCFWSOrEqualWithScanner_intoString___block_invoke()
{
  v0 = [MEMORY[0x277CCAB50] whitespaceAndNewlineCharacterSet];
  v1 = _scanToCFWSOrEqualWithScanner_intoString__whitespaceAndEqual;
  _scanToCFWSOrEqualWithScanner_intoString__whitespaceAndEqual = v0;

  v2 = _scanToCFWSOrEqualWithScanner_intoString__whitespaceAndEqual;

  return objc_msgSend(v2, "addCharactersInString:", @"(=");
}

uint64_t __93___ECHeaderAuthenticationResultsParser__scanToCFWSOrPeriodOrSemicolonWithScanner_intoString___block_invoke()
{
  v0 = [MEMORY[0x277CCAB50] whitespaceAndNewlineCharacterSet];
  v1 = _scanToCFWSOrPeriodOrSemicolonWithScanner_intoString__whitespacePeriodSemicolon;
  _scanToCFWSOrPeriodOrSemicolonWithScanner_intoString__whitespacePeriodSemicolon = v0;

  v2 = _scanToCFWSOrPeriodOrSemicolonWithScanner_intoString__whitespacePeriodSemicolon;

  return objc_msgSend(v2, "addCharactersInString:", @"(.;");
}

@end