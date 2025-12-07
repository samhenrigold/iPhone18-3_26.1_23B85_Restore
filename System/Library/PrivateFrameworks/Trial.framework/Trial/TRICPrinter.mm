@interface TRICPrinter
+ (id)_repeatString:(id)string length:(unint64_t)length;
+ (void)_printAndLogString:(id)string error:(BOOL)error;
+ (void)printAndLogDefaultWithFormat:(id)format;
+ (void)printAndLogErrorWithFormat:(id)format;
+ (void)printNewlineAndLogDefaultWithFormat:(id)format;
+ (void)printNewlineAndLogErrorWithFormat:(id)format;
+ (void)printNewlineUsingStderr:(BOOL)stderr format:(id)format;
+ (void)printTabularWithLogDefaultForLines:(id)lines;
@end

@implementation TRICPrinter

+ (void)_printAndLogString:(id)string error:(BOOL)error
{
  errorCopy = error;
  v14 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  v6 = objc_autoreleasePoolPush();
  v7 = [stringCopy dataUsingEncoding:4];
  if (v7)
  {
    if (errorCopy)
    {
      [MEMORY[0x277CCA9F8] fileHandleWithStandardError];
    }

    else
    {
      [MEMORY[0x277CCA9F8] fileHandleWithStandardOutput];
    }
    v8 = ;
    [v8 writeData:v7 error:0];
  }

  objc_autoreleasePoolPop(v6);
  v9 = TRILogCategory_InternalTool();
  v10 = v9;
  if (errorCopy)
  {
    v11 = OS_LOG_TYPE_ERROR;
  }

  else
  {
    v11 = OS_LOG_TYPE_DEFAULT;
  }

  if (os_log_type_enabled(v9, v11))
  {
    v12 = 138412290;
    v13 = stringCopy;
    _os_log_impl(&dword_22EA6B000, v10, v11, "%@", &v12, 0xCu);
  }
}

+ (void)printNewlineUsingStderr:(BOOL)stderr format:(id)format
{
  v5 = MEMORY[0x277CCACA8];
  formatCopy = format;
  v7 = [[v5 alloc] initWithFormat:formatCopy arguments:&v11];

  v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@\n", v7];
  v9 = [v8 dataUsingEncoding:4];
  if (v9)
  {
    if (stderr)
    {
      [MEMORY[0x277CCA9F8] fileHandleWithStandardError];
    }

    else
    {
      [MEMORY[0x277CCA9F8] fileHandleWithStandardOutput];
    }
    v10 = ;
    [v10 writeData:v9 error:0];
  }
}

+ (void)printAndLogDefaultWithFormat:(id)format
{
  v4 = MEMORY[0x277CCACA8];
  formatCopy = format;
  v6 = [[v4 alloc] initWithFormat:formatCopy arguments:&v7];

  [self _printAndLogString:v6 error:0];
}

+ (void)printAndLogErrorWithFormat:(id)format
{
  v4 = MEMORY[0x277CCACA8];
  formatCopy = format;
  v6 = [[v4 alloc] initWithFormat:formatCopy arguments:&v7];

  [self _printAndLogString:v6 error:1];
}

+ (void)printNewlineAndLogDefaultWithFormat:(id)format
{
  v4 = MEMORY[0x277CCACA8];
  formatCopy = format;
  v6 = [[v4 alloc] initWithFormat:formatCopy arguments:&v8];

  v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@\n", v6];
  [self _printAndLogString:v7 error:0];
}

+ (void)printNewlineAndLogErrorWithFormat:(id)format
{
  v4 = MEMORY[0x277CCACA8];
  formatCopy = format;
  v6 = [[v4 alloc] initWithFormat:formatCopy arguments:&v8];

  v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@\n", v6];
  [self _printAndLogString:v7 error:1];
}

+ (void)printTabularWithLogDefaultForLines:(id)lines
{
  v31 = *MEMORY[0x277D85DE8];
  linesCopy = lines;
  if ([linesCopy count])
  {
    selfCopy = self;
    v5 = [linesCopy objectAtIndexedSubscript:0];
    v6 = [v5 count];

    v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v6];
    if (v6)
    {
      v8 = v6;
      do
      {
        [v7 addObject:&unk_28436F980];
        --v8;
      }

      while (v8);
    }

    v29[0] = 0;
    v29[1] = v29;
    v29[2] = 0x2020000000;
    v29[3] = 0;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    obj = linesCopy;
    v9 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v9)
    {
      v10 = *v26;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v26 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v25 + 1) + 8 * i);
          if ([v12 count] != v6)
          {
            currentHandler = [MEMORY[0x277CCA890] currentHandler];
            v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TRICPrinter printTabularWithLogDefaultForLines:]"];
            [currentHandler handleFailureInFunction:v14 file:@"TRICPrinter.m" lineNumber:97 description:@"Tabular data has mismatched column counts"];
          }

          v22[0] = MEMORY[0x277D85DD0];
          v22[1] = 3221225472;
          v22[2] = __50__TRICPrinter_printTabularWithLogDefaultForLines___block_invoke;
          v22[3] = &unk_27885DF30;
          v23 = v7;
          v24 = v29;
          [v12 enumerateObjectsUsingBlock:v22];
        }

        v9 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v9);
    }

    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __50__TRICPrinter_printTabularWithLogDefaultForLines___block_invoke_2;
    v18[3] = &unk_27885DF80;
    v20 = v6;
    v21 = selfCopy;
    v13 = v7;
    v19 = v13;
    [obj enumerateObjectsUsingBlock:v18];

    _Block_object_dispose(v29, 8);
  }
}

void __50__TRICPrinter_printTabularWithLogDefaultForLines___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x277CCABB0];
  v6 = a2;
  v7 = [v5 alloc];
  v8 = [v6 length];
  v9 = [*(a1 + 32) objectAtIndexedSubscript:a3];
  v10 = [v9 unsignedIntegerValue];

  if (v8 <= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = v8;
  }

  v12 = [v7 initWithUnsignedInteger:v11];
  [*(a1 + 32) setObject:v12 atIndexedSubscript:a3];

  v13 = *(*(*(a1 + 40) + 8) + 24);
  v14 = [v6 length];

  if (v13 <= v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = v13;
  }

  *(*(*(a1 + 40) + 8) + 24) = v15;
}

void __50__TRICPrinter_printTabularWithLogDefaultForLines___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x277CBEB18];
  v6 = a2;
  v7 = [[v5 alloc] initWithCapacity:*(a1 + 40)];
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __50__TRICPrinter_printTabularWithLogDefaultForLines___block_invoke_3;
  v15 = &unk_27885DF58;
  v18 = *(a1 + 48);
  v16 = *(a1 + 32);
  v8 = v7;
  v17 = v8;
  [v6 enumerateObjectsUsingBlock:&v12];

  v9 = [v8 componentsJoinedByString:@"|"];
  [*(a1 + 48) printNewlineAndLogDefaultWithFormat:@"%@", v9, v12, v13, v14, v15];
  if (!a3)
  {
    v10 = *(a1 + 48);
    v11 = [v10 _repeatString:@"-" length:{objc_msgSend(v9, "length")}];
    [v10 printNewlineAndLogDefaultWithFormat:@"%@", v11];
  }
}

void __50__TRICPrinter_printTabularWithLogDefaultForLines___block_invoke_3(void *a1, void *a2, uint64_t a3)
{
  v5 = a1[6];
  v6 = a1[4];
  v7 = a2;
  v8 = [v6 objectAtIndexedSubscript:a3];
  v11 = [v5 _repeatString:@" " length:{objc_msgSend(v8, "unsignedIntegerValue") - objc_msgSend(v7, "length")}];

  v9 = a1[5];
  v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@" %@%@ ", v7, v11];

  [v9 addObject:v10];
}

+ (id)_repeatString:(id)string length:(unint64_t)length
{
  stringCopy = string;
  for (i = [objc_alloc(MEMORY[0x277CCAB68]) initWithCapacity:{objc_msgSend(stringCopy, "length") * length}]; length; --length)
  {
    [i appendString:stringCopy];
  }

  return i;
}

@end