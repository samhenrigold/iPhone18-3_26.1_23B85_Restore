@interface TMLBackgroundBlock
+ (id)executeFunction:(id)function argument:(id)argument;
+ (id)sharedVM;
+ (void)handleException:(id)exception;
+ (void)initializeJSContext:(id)context;
@end

@implementation TMLBackgroundBlock

+ (void)initializeJSContext:(id)context
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_26F1980E4;
  block[3] = &unk_279DC5818;
  block[4] = self;
  v3 = qword_2806D9078;
  contextCopy = context;
  if (v3 != -1)
  {
    dispatch_once(&qword_2806D9078, block);
  }

  [contextCopy setObject:&unk_287F2B9B0 forKeyedSubscript:@"background"];
}

+ (id)sharedVM
{
  if (qword_2806D9088 != -1)
  {
    sub_26F200B8C();
  }

  v3 = qword_2806D9080;

  return v3;
}

+ (id)executeFunction:(id)function argument:(id)argument
{
  v21[1] = *MEMORY[0x277D85DE8];
  argumentCopy = argument;
  v7 = MEMORY[0x277CD4640];
  functionCopy = function;
  v9 = [v7 alloc];
  sharedVM = [self sharedVM];
  v11 = [v9 initWithVirtualMachine:sharedVM];

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_26F1986B8;
  v20[3] = &unk_279DC58A8;
  v20[4] = self;
  [v11 setExceptionHandler:v20];
  globalObject = [v11 globalObject];
  [globalObject setObject:&unk_287F2B9F0 forKeyedSubscript:@"nslog"];
  functionCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"var _tmlResult=%@ _tmlResult", functionCopy];;

  v14 = [v11 evaluateScript:functionCopy];

  null = argumentCopy;
  if (!argumentCopy)
  {
    null = [MEMORY[0x277CBEB68] null];
  }

  v21[0] = null;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
  v17 = [v14 callWithArguments:v16];

  if (!argumentCopy)
  {
  }

  v18 = [TMLJSEnvironment convertJsValue:v17 toType:16];

  return v18;
}

+ (void)handleException:(id)exception
{
  v18[1] = *MEMORY[0x277D85DE8];
  exceptionCopy = exception;
  v4 = [exceptionCopy objectForKeyedSubscript:@"stack"];
  toString = [v4 toString];
  v6 = [toString componentsSeparatedByString:@"\n"];
  v7 = [v6 mutableCopy];

  if (v7)
  {
    firstObject = [v7 firstObject];
    v9 = MEMORY[0x277CCACA8];
    v10 = [exceptionCopy objectForKeyedSubscript:@"line"];
    toString2 = [v10 toString];
    v12 = [v9 stringWithFormat:@"%@:#%@", firstObject, toString2];
    [v7 replaceObjectAtIndex:0 withObject:v12];
  }

  v13 = objc_alloc(MEMORY[0x277CBEAD8]);
  toString3 = [exceptionCopy toString];
  v17 = @"stack";
  v18[0] = v7;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
  v16 = [v13 initWithName:@"TMLJSException" reason:toString3 userInfo:v15];

  [TMLExceptionHandler raiseException:v16];
}

@end