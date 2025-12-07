@interface NSError(TSPersistence)
+ (id)tsp_errorWithCode:()TSPersistence underlyingError:;
+ (id)tsp_recoverableErrorWithCode:()TSPersistence;
+ (id)tsp_recoverableErrorWithError:()TSPersistence;
- (uint64_t)tsp_isRecoverable;
@end

@implementation NSError(TSPersistence)

+ (id)tsp_errorWithCode:()TSPersistence underlyingError:
{
  v6 = a4;
  v7 = v6;
  if (a3 > 5)
  {
    if (a3 <= 8)
    {
      if (a3 != 6)
      {
        v8 = UnsafePointer(v6);
        if (a3 == 7)
        {
          [v8 localizedStringForKey:@"To open this document value:download the latest version of the app from the App Store." table:{&stru_287D36338, @"TSPersistence"}];
        }

        else
        {
          [v8 localizedStringForKey:@"The document was created with an unsupported old application version" value:&stru_287D36338 table:@"TSPersistence"];
        }
        v9 = ;
        goto LABEL_27;
      }

      goto LABEL_26;
    }

    if (a3 == 9)
    {
      v10 = 0;
      v11 = @"The document was created with an unsupported application version";
      goto LABEL_28;
    }

    if (a3 != 10)
    {
      if (a3 == 11)
      {
        v10 = 0;
        v11 = @"View state version UUID does not match document's.";
        goto LABEL_28;
      }

      goto LABEL_31;
    }

    v8 = UnsafePointer(v6);
    v9 = [v8 localizedStringForKey:@"Can\\U2019t open document without password." value:&stru_287D36338 table:@"TSPersistence"];
    goto LABEL_27;
  }

  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 != 1)
      {
        goto LABEL_31;
      }

      v8 = UnsafePointer(v6);
      v9 = [v8 localizedStringForKey:@"An error occurred while reading the document." value:&stru_287D36338 table:@"TSPersistence"];
    }

    else
    {
      v8 = UnsafePointer(v6);
      v9 = [v8 localizedStringForKey:@"This document is corrupt." value:&stru_287D36338 table:@"TSPersistence"];
    }

LABEL_27:
    v11 = v9;

    v10 = 0;
    goto LABEL_28;
  }

  if ((a3 - 2) < 2)
  {
    v12 = UnsafePointer(v6);
    v11 = [v12 localizedStringForKey:@"Couldn\\U2019t auto-save document." value:&stru_287D36338 table:@"TSPersistence"];

    v14 = UnsafePointer(v13);
    if (a3 == 2)
    {
      [v14 localizedStringForKey:@"Your most recent changes might be lost." value:&stru_287D36338 table:@"TSPersistence"];
    }

    else
    {
      [v14 localizedStringForKey:@"The disk is full. Free up some space value:then return to your presentation. Your most recent changes might be lost." table:{&stru_287D36338, @"TSPersistence"}];
    }
    v10 = ;

    goto LABEL_28;
  }

  if (a3 == 4 || a3 == 5)
  {
LABEL_26:
    v8 = UnsafePointer(v6);
    v9 = [v8 localizedStringForKey:@"Encountered a critical error." value:&stru_287D36338 table:@"TSPersistence"];
    goto LABEL_27;
  }

LABEL_31:
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[NSError(TSPersistence) tsp_errorWithCode:underlyingError:]"];
  v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/persistence/src/NSError_TSPersistence.mm"];
  [currentHandler handleFailureInFunction:v18 file:v19 lineNumber:83 description:@"Bad error code"];

  v10 = 0;
  v11 = 0;
LABEL_28:
  v15 = [self tsu_errorWithDomain:@"com.apple.iWork.TSPersistence" code:a3 alertTitle:v11 alertMessage:v10 underlyingError:v7];

  return v15;
}

+ (id)tsp_recoverableErrorWithCode:()TSPersistence
{
  v2 = [self tsp_errorWithCode:?];
  v3 = [self tsp_recoverableErrorWithError:v2];

  return v3;
}

+ (id)tsp_recoverableErrorWithError:()TSPersistence
{
  v3 = a3;
  if (v3)
  {
    v4 = v3;
    userInfo = [v3 userInfo];
    if (userInfo)
    {
      userInfo2 = [v4 userInfo];
      v7 = [userInfo2 mutableCopy];
    }

    else
    {
      v7 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:1];
    }

    [v7 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"TSPErrorIsRecoverable"];
    v9 = MEMORY[0x277CCA9B8];
    domain = [v4 domain];
    v8 = [v9 errorWithDomain:domain code:objc_msgSend(v4 userInfo:{"code"), v7}];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (uint64_t)tsp_isRecoverable
{
  code = [self code];
  if (code == 11)
  {
    domain = [self domain];
    if ([domain isEqualToString:@"com.apple.iWork.TSPersistence"])
    {
      bOOLValue = 1;
LABEL_5:

      return bOOLValue;
    }
  }

  userInfo = [self userInfo];
  v6 = [userInfo objectForKeyedSubscript:@"TSPErrorIsRecoverable"];
  bOOLValue = [v6 BOOLValue];

  if (code == 11)
  {
    goto LABEL_5;
  }

  return bOOLValue;
}

@end