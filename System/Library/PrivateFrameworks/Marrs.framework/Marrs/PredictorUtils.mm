@interface PredictorUtils
+ (id)getInitStatusWithPredictorName:(id)name domain:(id)domain code:(int64_t)code;
+ (id)getPredictStatusWithPredictorName:(id)name domain:(id)domain code:(int64_t)code;
+ (int64_t)handleInitException:(exception_ptr)exception;
+ (int64_t)handlePredictException:(exception_ptr)exception;
+ (void)reportInitStatusWithPredictorName:(id)name domain:(id)domain code:(int64_t)code locale:(id)locale;
+ (void)reportPredictStatusWithPredictorName:(id)name domain:(id)domain code:(int64_t)code locale:(id)locale;
@end

@implementation PredictorUtils

+ (id)getPredictStatusWithPredictorName:(id)name domain:(id)domain code:(int64_t)code
{
  v14[1] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  domainCopy = domain;
  if (code)
  {
    v9 = objc_alloc(MEMORY[0x277CCA9B8]);
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Prediction failed with %@", nameCopy, *MEMORY[0x277CCA450]];
    v14[0] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    code = [v9 initWithDomain:domainCopy code:code userInfo:v11];
  }

  return code;
}

+ (id)getInitStatusWithPredictorName:(id)name domain:(id)domain code:(int64_t)code
{
  v14[1] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  domainCopy = domain;
  if (code)
  {
    v9 = objc_alloc(MEMORY[0x277CCA9B8]);
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to intialize %@", nameCopy, *MEMORY[0x277CCA450]];
    v14[0] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    code = [v9 initWithDomain:domainCopy code:code userInfo:v11];
  }

  return code;
}

+ (void)reportPredictStatusWithPredictorName:(id)name domain:(id)domain code:(int64_t)code locale:(id)locale
{
  localeCopy = locale;
  name = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@.Prediction", domain, name];
  v10 = localeCopy;
  AnalyticsSendEventLazy();
}

id __74__PredictorUtils_reportPredictStatusWithPredictorName_domain_code_locale___block_invoke(uint64_t a1)
{
  v9[3] = *MEMORY[0x277D85DE8];
  v2 = @"failed";
  if (!*(a1 + 40))
  {
    v2 = @"success";
  }

  v9[0] = v2;
  v8[0] = @"outcome";
  v8[1] = @"statusCode";
  v3 = [MEMORY[0x277CCABB0] numberWithInt:?];
  v4 = [v3 stringValue];
  v8[2] = @"locale";
  v5 = *(a1 + 32);
  v9[1] = v4;
  v9[2] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:3];

  return v6;
}

+ (void)reportInitStatusWithPredictorName:(id)name domain:(id)domain code:(int64_t)code locale:(id)locale
{
  localeCopy = locale;
  name = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@.Initialization", domain, name];
  v10 = localeCopy;
  AnalyticsSendEventLazy();
}

id __71__PredictorUtils_reportInitStatusWithPredictorName_domain_code_locale___block_invoke(uint64_t a1)
{
  v9[3] = *MEMORY[0x277D85DE8];
  v2 = @"failed";
  if (!*(a1 + 40))
  {
    v2 = @"success";
  }

  v9[0] = v2;
  v8[0] = @"outcome";
  v8[1] = @"statusCode";
  v3 = [MEMORY[0x277CCABB0] numberWithInt:?];
  v4 = [v3 stringValue];
  v8[2] = @"locale";
  v5 = *(a1 + 32);
  v9[1] = v4;
  v9[2] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:3];

  return v6;
}

+ (int64_t)handlePredictException:(exception_ptr)exception
{
  v6 = *MEMORY[0x277D85DE8];
  if (*exception.var0)
  {
    std::exception_ptr::exception_ptr(&v5, exception.var0);
    v4.__ptr_ = &v5;
    std::rethrow_exception(v4);
    __break(1u);
  }

  return 0;
}

+ (int64_t)handleInitException:(exception_ptr)exception
{
  v6 = *MEMORY[0x277D85DE8];
  if (*exception.var0)
  {
    std::exception_ptr::exception_ptr(&v5, exception.var0);
    v4.__ptr_ = &v5;
    std::rethrow_exception(v4);
    __break(1u);
  }

  return 0;
}

@end