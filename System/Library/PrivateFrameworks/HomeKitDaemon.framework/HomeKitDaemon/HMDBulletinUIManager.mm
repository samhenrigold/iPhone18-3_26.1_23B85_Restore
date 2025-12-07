@interface HMDBulletinUIManager
+ (void)openHomeAppWithURL:(id)l;
+ (void)presentExecutionErrorDialogForTrigger:(id)trigger partialSuccess:(BOOL)success;
@end

@implementation HMDBulletinUIManager

+ (void)presentExecutionErrorDialogForTrigger:(id)trigger partialSuccess:(BOOL)success
{
  successCopy = success;
  triggerCopy = trigger;
  v6 = +[HMDUIDialogPresenter sharedUIDialogPresenter];
  name = [triggerCopy name];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __77__HMDBulletinUIManager_presentExecutionErrorDialogForTrigger_partialSuccess___block_invoke;
  v9[3] = &unk_278679E10;
  v10 = triggerCopy;
  v8 = triggerCopy;
  [v6 displayExecutionErrorOfTrigger:name partialSuccess:successCopy context:v8 completionQueue:MEMORY[0x277D85CD0] completionHandler:v9];
}

void __77__HMDBulletinUIManager_presentExecutionErrorDialogForTrigger_partialSuccess___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v2 = MEMORY[0x277CD1878];
    v3 = [*(a1 + 32) home];
    v4 = [v3 contextSPIUniqueIdentifier];
    v5 = [v4 UUIDString];
    v9 = [v2 tupleWithQueryType:0 uuidString:v5];

    v6 = [MEMORY[0x277CD1878] tupleWithQueryType:7 uuidString:0];
    v7 = [MEMORY[0x277CBEB98] setWithObject:v9];
    v8 = generateURLForHomeKitObject();

    [HMDBulletinUIManager openHomeAppWithURL:v8];
  }
}

+ (void)openHomeAppWithURL:(id)l
{
  absoluteString = [l absoluteString];
  if (!absoluteString)
  {
    absoluteString = [MEMORY[0x277CCACA8] stringWithFormat:@"%@://", *MEMORY[0x277CCFE40]];
  }

  v6 = absoluteString;
  v4 = [MEMORY[0x277CBEBC0] URLWithString:absoluteString];
  defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
  [defaultWorkspace openSensitiveURL:v4 withOptions:0];
}

@end