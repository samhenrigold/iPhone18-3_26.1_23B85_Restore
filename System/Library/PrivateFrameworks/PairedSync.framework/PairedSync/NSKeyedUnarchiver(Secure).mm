@interface NSKeyedUnarchiver(Secure)
+ (id)secureUnarchiveObjectOfClasses:()Secure withData:;
+ (id)secureUnarchiveObjectOfClasses:()Secure withFile:;
@end

@implementation NSKeyedUnarchiver(Secure)

+ (id)secureUnarchiveObjectOfClasses:()Secure withFile:
{
  v6 = a3;
  v7 = a4;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v9 = [defaultManager fileExistsAtPath:v7];

  if (v9)
  {
    v19 = 0;
    v10 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v7 options:0 error:&v19];
    v11 = v19;
    v12 = v11;
    if (v11)
    {
      v13 = psd_log(v11);
      v14 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);

      if (v14)
      {
        v16 = psd_log(v15);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          [(NSKeyedUnarchiver(Secure) *)v7 secureUnarchiveObjectOfClasses:v12 withFile:v16];
        }
      }

      v17 = 0;
    }

    else
    {
      v17 = [self secureUnarchiveObjectOfClasses:v6 withData:v10];
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

+ (id)secureUnarchiveObjectOfClasses:()Secure withData:
{
  v6 = a3;
  v7 = a4;
  v8 = [[self alloc] initForReadingFromData:v7 error:0];
  v9 = [v8 decodeObjectOfClasses:v6 forKey:*MEMORY[0x277CCA308]];
  [v8 finishDecoding];
  v10 = v9;

  return v10;
}

+ (void)secureUnarchiveObjectOfClasses:()Secure withFile:.cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = [a2 psy_safeDescription];
  v6 = 138543618;
  v7 = a1;
  v8 = 2114;
  v9 = v5;
  _os_log_error_impl(&dword_25DF25000, a3, OS_LOG_TYPE_ERROR, "Failed to read data from file %{public}@ with error %{public}@", &v6, 0x16u);
}

+ (void)secureUnarchiveObjectOfClasses:()Secure withData:.cold.1(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_25DF25000, log, OS_LOG_TYPE_ERROR, "Failed to unarchive data of type %{public}@ with exception %{public}@", buf, 0x16u);
}

@end