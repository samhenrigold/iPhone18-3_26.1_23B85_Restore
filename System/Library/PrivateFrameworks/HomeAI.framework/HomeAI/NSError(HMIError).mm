@interface NSError(HMIError)
+ (id)_hmiErrorWithCode:()HMIError description:reason:suggestion:underlyingError:;
@end

@implementation NSError(HMIError)

+ (id)_hmiErrorWithCode:()HMIError description:reason:suggestion:underlyingError:
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = a7;
  v14 = v13;
  if (v10 || v11 || v12 || v13)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    if (v10)
    {
      mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
      v17 = [mainBundle localizedStringForKey:? value:? table:?];
      [dictionary setObject:? forKeyedSubscript:?];
    }

    if (v11)
    {
      mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
      v19 = [mainBundle2 localizedStringForKey:? value:? table:?];
      [dictionary setObject:? forKeyedSubscript:?];
    }

    if (v12)
    {
      mainBundle3 = [MEMORY[0x277CCA8D8] mainBundle];
      v21 = [mainBundle3 localizedStringForKey:? value:? table:?];
      [dictionary setObject:? forKeyedSubscript:?];
    }

    if (v14)
    {
      [dictionary setObject:? forKeyedSubscript:?];
    }
  }

  else
  {
    dictionary = 0;
  }

  v22 = [MEMORY[0x277CCA9B8] errorWithDomain:? code:? userInfo:?];

  return v22;
}

@end