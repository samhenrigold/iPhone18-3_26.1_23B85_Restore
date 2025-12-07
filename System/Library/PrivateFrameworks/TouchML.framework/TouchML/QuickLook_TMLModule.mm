@interface QuickLook_TMLModule
+ (BOOL)loadModule;
@end

@implementation QuickLook_TMLModule

+ (BOOL)loadModule
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 1;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_26F1D5300;
  block[3] = &unk_279DC5670;
  block[4] = &v5;
  if (qword_2806D9310 != -1)
  {
    dispatch_once(&qword_2806D9310, block);
  }

  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

@end