@interface NSKeyedUnarchiver(SWCSecureCodingWorkaround)
+ (id)swc_unarchivedObjectOfClass:()SWCSecureCodingWorkaround fromData:error:;
+ (id)swc_unarchivedObjectOfClasses:()SWCSecureCodingWorkaround fromData:error:;
@end

@implementation NSKeyedUnarchiver(SWCSecureCodingWorkaround)

+ (id)swc_unarchivedObjectOfClass:()SWCSecureCodingWorkaround fromData:error:
{
  v8 = a4;
  v9 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{a3, 0}];
  v10 = [self swc_unarchivedObjectOfClasses:v9 fromData:v8 error:a5];

  return v10;
}

+ (id)swc_unarchivedObjectOfClasses:()SWCSecureCodingWorkaround fromData:error:
{
  v30 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = objc_autoreleasePoolPush();
  v26 = 0;
  v11 = [self unarchivedObjectOfClasses:v8 fromData:v9 error:&v26];
  v12 = v26;
  objc_autoreleasePoolPop(v10);
  if (v11)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v13 = v8;
    v14 = [v13 countByEnumeratingWithState:&v22 objects:v29 count:16];
    if (v14)
    {
      v15 = *v23;
LABEL_4:
      v16 = 0;
      while (1)
      {
        if (*v23 != v15)
        {
          objc_enumerationMutation(v13);
        }

        if (objc_opt_isKindOfClass())
        {
          break;
        }

        if (v14 == ++v16)
        {
          v14 = [v13 countByEnumeratingWithState:&v22 objects:v29 count:16];
          if (v14)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:

      v17 = objc_alloc(MEMORY[0x277CCA9B8]);
      v27[0] = @"Line";
      v27[1] = @"Function";
      v28[0] = &unk_2877A7408;
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"+[NSKeyedUnarchiver(SWCSecureCodingWorkaround) swc_unarchivedObjectOfClasses:fromData:error:]", v22}];
      v28[1] = v13;
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:2];
      v19 = [v17 initWithDomain:*MEMORY[0x277CCA050] code:4864 userInfo:v18];

      v11 = 0;
      v12 = v19;
    }
  }

  if (a5 && !v11)
  {
    v20 = v12;
    *a5 = v12;
  }

  return v11;
}

@end