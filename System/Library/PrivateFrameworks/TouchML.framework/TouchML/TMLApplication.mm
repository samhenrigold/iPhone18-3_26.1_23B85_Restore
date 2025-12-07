@interface TMLApplication
+ (id)sharedInstance;
- (NSString)applicationVersion;
- (NSString)hardwareModel;
@end

@implementation TMLApplication

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_26F1A7830;
  block[3] = &unk_279DC5818;
  block[4] = self;
  if (qword_2806D9120 != -1)
  {
    dispatch_once(&qword_2806D9120, block);
  }

  v2 = qword_2806D9118;

  return v2;
}

- (NSString)hardwareModel
{
  if (qword_2806D9130 != -1)
  {
    sub_26F200C18();
  }

  v3 = qword_2806D9128;

  return v3;
}

- (NSString)applicationVersion
{
  if (qword_2806D9140 != -1)
  {
    sub_26F200C2C();
  }

  v3 = qword_2806D9138;

  return v3;
}

@end