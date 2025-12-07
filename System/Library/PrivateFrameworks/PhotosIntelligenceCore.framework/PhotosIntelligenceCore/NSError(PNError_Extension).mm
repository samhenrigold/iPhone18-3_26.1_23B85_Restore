@interface NSError(PNError_Extension)
+ (id)_pn_genericErrorWithUnderlyingError:()PNError_Extension localizedDescription:;
+ (id)pn_errorWithCode:()PNError_Extension localizedDescription:;
+ (id)pn_genericErrorWithLocalizedDescription:()PNError_Extension;
+ (id)pn_genericErrorWithMultipleUnderlyingErrors:()PNError_Extension localizedDescription:;
+ (id)pn_genericErrorWithUnderlyingError:()PNError_Extension localizedDescription:;
@end

@implementation NSError(PNError_Extension)

+ (id)pn_genericErrorWithUnderlyingError:()PNError_Extension localizedDescription:
{
  va_start(va, a8);
  v10 = *MEMORY[0x277CBECE8];
  v11 = a3;
  v12 = CFStringCreateWithFormatAndArguments(v10, 0, a4, va);
  v13 = [self _pn_genericErrorWithUnderlyingError:v11 localizedDescription:v12];

  return v13;
}

+ (id)pn_genericErrorWithLocalizedDescription:()PNError_Extension
{
  va_start(va, a8);
  v9 = CFStringCreateWithFormatAndArguments(*MEMORY[0x277CBECE8], 0, a3, va);
  v10 = [self _pn_genericErrorWithUnderlyingError:0 localizedDescription:v9];

  return v10;
}

+ (id)pn_errorWithCode:()PNError_Extension localizedDescription:
{
  va_start(va, format);
  v6 = CFStringCreateWithFormatAndArguments(*MEMORY[0x277CBECE8], 0, format, va);
  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v7 setObject:v6 forKeyedSubscript:*MEMORY[0x277CCA450]];
  v8 = [self errorWithDomain:@"PNPhotosIntelligenceErrorDomain" code:a3 userInfo:v7];

  return v8;
}

+ (id)pn_genericErrorWithMultipleUnderlyingErrors:()PNError_Extension localizedDescription:
{
  v6 = MEMORY[0x277CBEB38];
  v7 = a4;
  v8 = a3;
  v9 = objc_alloc_init(v6);
  [v9 setObject:v8 forKeyedSubscript:*MEMORY[0x277CCA578]];

  [v9 setObject:v7 forKeyedSubscript:*MEMORY[0x277CCA450]];
  v10 = [self errorWithDomain:@"PNPhotosIntelligenceErrorDomain" code:3 userInfo:v9];

  return v10;
}

+ (id)_pn_genericErrorWithUnderlyingError:()PNError_Extension localizedDescription:
{
  v6 = MEMORY[0x277CBEB38];
  v7 = a4;
  v8 = a3;
  v9 = objc_alloc_init(v6);
  [v9 setObject:v8 forKeyedSubscript:*MEMORY[0x277CCA7E8]];

  [v9 setObject:v7 forKeyedSubscript:*MEMORY[0x277CCA450]];
  v10 = [self errorWithDomain:@"PNPhotosIntelligenceErrorDomain" code:-1 userInfo:v9];

  return v10;
}

@end