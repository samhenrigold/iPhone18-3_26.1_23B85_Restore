@interface TMLJSNil
+ (BOOL)isNil:(id)nil;
+ (id)jsValueInContext:(id)context;
+ (id)sharedInstance;
+ (id)unwrap:(id)unwrap;
- (TMLJSNil)init;
- (id)jsValueInContext:(id)context;
@end

@implementation TMLJSNil

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_26F1FA96C;
  block[3] = &unk_279DC5818;
  block[4] = self;
  if (qword_2806D93B8 != -1)
  {
    dispatch_once(&qword_2806D93B8, block);
  }

  v2 = qword_2806D93B0;

  return v2;
}

- (TMLJSNil)init
{
  v9.receiver = self;
  v9.super_class = TMLJSNil;
  v2 = [(TMLJSNil *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v4 = MEMORY[0x277CD4678];
    v5 = *(MEMORY[0x277CD4678] + 16);
    *(v2 + 1) = *MEMORY[0x277CD4678];
    *(v2 + 2) = v5;
    v6 = v4[3];
    *(v2 + 3) = v4[2];
    *(v2 + 4) = v6;
    v7 = v4[5];
    *(v2 + 5) = v4[4];
    *(v2 + 6) = v7;
    *(v2 + 5) = 2;
    *(v2 + 3) = "Nil";
    *(v2 + 4) = 0;
    *(v2 + 7) = nullsub_5;
    *(v2 + 8) = nullsub_6;
    *(v2 + 9) = sub_26F1FAB04;
    *(v2 + 10) = sub_26F1FAB2C;
    *(v2 + 11) = sub_26F1FAB34;
    *(v2 + 15) = j__JSValueMakeUndefined;
    *(v2 + 14) = sub_26F1FAB40;
    *(v2 + 16) = sub_26F1FAB48;
    *(v2 + 17) = sub_26F1FAB50;
    *(v2 + 1) = JSClassCreate((v2 + 16));
  }

  return v3;
}

+ (id)jsValueInContext:(id)context
{
  contextCopy = context;
  sharedInstance = [self sharedInstance];
  v6 = [sharedInstance jsValueInContext:contextCopy];

  return v6;
}

+ (id)unwrap:(id)unwrap
{
  unwrapCopy = unwrap;
  if ([self isNil:unwrapCopy])
  {
    v5 = 0;
  }

  else
  {
    v5 = unwrapCopy;
  }

  v6 = v5;

  return v5;
}

+ (BOOL)isNil:(id)nil
{
  nilCopy = nil;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [nilCopy objectForKey:@"$__tml_nil__$"];
    v5 = v4 != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)jsValueInContext:(id)context
{
  v13[3] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v5 = [contextCopy objectForKeyedSubscript:@"Nil"];
  v6 = v5;
  if (!v5 || [v5 isUndefined])
  {
    v7 = [MEMORY[0x277CD4658] valueWithJSValueRef:JSObjectMake(objc_msgSend(contextCopy inContext:{"JSGlobalContextRef"), self->_jsClassRef, 0), contextCopy}];

    v8 = *MEMORY[0x277CD4638];
    v12[0] = *MEMORY[0x277CD4618];
    v12[1] = v8;
    v13[0] = MEMORY[0x277CBEC38];
    v13[1] = MEMORY[0x277CBEC28];
    v12[2] = *MEMORY[0x277CD4630];
    v13[2] = @"$__tml_nil__$";
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:3];
    [v7 defineProperty:@"$__tml_nil__$" descriptor:v9];

    [contextCopy setObject:v7 forKeyedSubscript:@"Nil"];
    v6 = v7;
  }

  v10 = v6;

  return v10;
}

@end