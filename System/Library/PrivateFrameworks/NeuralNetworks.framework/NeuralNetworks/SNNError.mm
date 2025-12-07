@interface SNNError
+ (id)errorWithCode:(int64_t)code description:(id)description;
+ (id)invalidEspressoConfigurationErrorForMethod:(id)method description:(id)description;
+ (id)invalidEspressoContextErrorForMethod:(id)method description:(id)description;
+ (id)invalidEspressoNetworkErrorForMethod:(id)method description:(id)description;
+ (id)invalidEspressoPlanErrorForMethod:(id)method description:(id)description;
+ (id)invalidInputErrorForMethod:(id)method description:(id)description;
+ (id)invalidMILProgramErrorForMethod:(id)method description:(id)description;
+ (id)invalidStateErrorForMethod:(id)method description:(id)description;
@end

@implementation SNNError

+ (id)errorWithCode:(int64_t)code description:(id)description
{
  v16[1] = *MEMORY[0x277D85DE8];
  descriptionCopy = description;
  v6 = MEMORY[0x277CCA9B8];
  v15 = *MEMORY[0x277CCA450];
  v16[0] = descriptionCopy;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  v8 = [v6 errorWithDomain:@"com.apple.coreml.foundation" code:code userInfo:v7];

  v9 = +[SNNLogging framework];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v11 = 138412546;
    v12 = descriptionCopy;
    v13 = 2112;
    v14 = v8;
    _os_log_impl(&dword_25BA90000, v9, OS_LOG_TYPE_INFO, "%@ : %@", &v11, 0x16u);
  }

  return v8;
}

+ (id)invalidStateErrorForMethod:(id)method description:(id)description
{
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: invalid state : %@", method, description];
  v6 = [self errorWithCode:-1 description:v5];

  return v6;
}

+ (id)invalidInputErrorForMethod:(id)method description:(id)description
{
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: invalid inputs : %@", method, description];
  v6 = [self errorWithCode:-2 description:v5];

  return v6;
}

+ (id)invalidMILProgramErrorForMethod:(id)method description:(id)description
{
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: invalid MIL program : %@", method, description];
  v6 = [self errorWithCode:-3 description:v5];

  return v6;
}

+ (id)invalidEspressoContextErrorForMethod:(id)method description:(id)description
{
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: invalid Espresso context : %@", method, description];
  v6 = [self errorWithCode:-4 description:v5];

  return v6;
}

+ (id)invalidEspressoPlanErrorForMethod:(id)method description:(id)description
{
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: invalid Espresso plan : %@", method, description];
  v6 = [self errorWithCode:-5 description:v5];

  return v6;
}

+ (id)invalidEspressoNetworkErrorForMethod:(id)method description:(id)description
{
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: invalid Espresso network : %@", method, description];
  v6 = [self errorWithCode:-6 description:v5];

  return v6;
}

+ (id)invalidEspressoConfigurationErrorForMethod:(id)method description:(id)description
{
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: invalid Espresso configuration : %@", method, description];
  v6 = [self errorWithCode:-7 description:v5];

  return v6;
}

@end