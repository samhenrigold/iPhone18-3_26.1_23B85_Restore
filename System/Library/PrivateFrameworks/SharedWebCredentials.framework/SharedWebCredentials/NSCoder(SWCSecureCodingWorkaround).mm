@interface NSCoder(SWCSecureCodingWorkaround)
- (id)swc_decodeObjectOfClass:()SWCSecureCodingWorkaround forKey:;
- (id)swc_decodeObjectOfClasses:()SWCSecureCodingWorkaround forKey:;
@end

@implementation NSCoder(SWCSecureCodingWorkaround)

- (id)swc_decodeObjectOfClass:()SWCSecureCodingWorkaround forKey:
{
  v16[2] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = objc_autoreleasePoolPush();
  v8 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{a3, 0}];
  v9 = [self decodeObjectOfClasses:v8 forKey:v6];

  objc_autoreleasePoolPop(v7);
  if (v9 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v10 = objc_alloc(MEMORY[0x277CCA9B8]);
    v15[0] = @"Line";
    v15[1] = @"Function";
    v16[0] = &unk_2877A7420;
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[NSCoder(SWCSecureCodingWorkaround) swc_decodeObjectOfClass:forKey:]"];
    v16[1] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];
    v13 = [v10 initWithDomain:*MEMORY[0x277CCA050] code:4864 userInfo:v12];
    [self failWithError:v13];

    v9 = 0;
  }

  return v9;
}

- (id)swc_decodeObjectOfClasses:()SWCSecureCodingWorkaround forKey:
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = [self decodeObjectOfClasses:v6 forKey:v7];
  objc_autoreleasePoolPop(v8);
  if (v9)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v10 = v6;
    v11 = [v10 countByEnumeratingWithState:&v18 objects:v24 count:16];
    if (v11)
    {
      v12 = *v19;
LABEL_4:
      v13 = 0;
      while (1)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v10);
        }

        if (objc_opt_isKindOfClass())
        {
          break;
        }

        if (v11 == ++v13)
        {
          v11 = [v10 countByEnumeratingWithState:&v18 objects:v24 count:16];
          if (v11)
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

      v14 = objc_alloc(MEMORY[0x277CCA9B8]);
      v22[0] = @"Line";
      v22[1] = @"Function";
      v23[0] = &unk_2877A7438;
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"-[NSCoder(SWCSecureCodingWorkaround) swc_decodeObjectOfClasses:forKey:]", v18}];
      v23[1] = v10;
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];
      v16 = [v14 initWithDomain:*MEMORY[0x277CCA050] code:4864 userInfo:v15];
      [self failWithError:v16];

      v9 = 0;
    }
  }

  return v9;
}

@end