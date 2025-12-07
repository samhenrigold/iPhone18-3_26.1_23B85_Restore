@interface ICASDrawingConversionData
- (ICASDrawingConversionData)initWithConversionMethod:(id)method;
- (id)toDict;
@end

@implementation ICASDrawingConversionData

- (ICASDrawingConversionData)initWithConversionMethod:(id)method
{
  methodCopy = method;
  v9.receiver = self;
  v9.super_class = ICASDrawingConversionData;
  v6 = [(ICASDrawingConversionData *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_conversionMethod, method);
  }

  return v7;
}

- (id)toDict
{
  v9[1] = *MEMORY[0x277D85DE8];
  v8 = @"conversionMethod";
  conversionMethod = [(ICASDrawingConversionData *)self conversionMethod];
  if (conversionMethod)
  {
    conversionMethod2 = [(ICASDrawingConversionData *)self conversionMethod];
  }

  else
  {
    conversionMethod2 = objc_opt_new();
  }

  v5 = conversionMethod2;
  v9[0] = conversionMethod2;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];

  return v6;
}

@end