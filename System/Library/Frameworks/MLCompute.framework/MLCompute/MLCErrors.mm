@interface MLCErrors
+ (id)createErrorWithCode:(int64_t)code description:(id)description;
+ (id)invalidInputErrorForMethod:(id)method description:(id)description;
+ (id)invalidStateErrorForMethod:(id)method description:(id)description;
@end

@implementation MLCErrors

+ (id)createErrorWithCode:(int64_t)code description:(id)description
{
  v17[1] = *MEMORY[0x277D85DE8];
  descriptionCopy = description;
  v6 = MEMORY[0x277CCA9B8];
  v7 = +[MLCStrings errorDomainGeneric];
  v16 = *MEMORY[0x277CCA450];
  v17[0] = descriptionCopy;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
  v9 = [v6 errorWithDomain:v7 code:code userInfo:v8];

  v10 = +[MLCLog framework];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v12 = 138412546;
    v13 = descriptionCopy;
    v14 = 2112;
    v15 = v9;
    _os_log_impl(&dword_238C1D000, v10, OS_LOG_TYPE_INFO, "%@ : %@", &v12, 0x16u);
  }

  return v9;
}

+ (id)invalidStateErrorForMethod:(id)method description:(id)description
{
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: invalid state : %@", method, description];
  v6 = [self createErrorWithCode:1 description:v5];

  return v6;
}

+ (id)invalidInputErrorForMethod:(id)method description:(id)description
{
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: invalid inputs : %@", method, description];
  v6 = [self createErrorWithCode:1 description:v5];

  return v6;
}

@end