@interface WFAVSystemController
- (BOOL)setSilentMode:(BOOL)mode reason:(id)reason client:(int64_t)client;
- (BOOL)silentModeActive;
- (BOOL)toggleSilentModeWithReason:(id)reason client:(int64_t)client;
- (id)avSystemController;
@end

@implementation WFAVSystemController

- (BOOL)toggleSilentModeWithReason:(id)reason client:(int64_t)client
{
  reasonCopy = reason;
  LOBYTE(client) = [(WFAVSystemController *)self setSilentMode:[(WFAVSystemController *)self silentModeActive]^ 1 reason:reasonCopy client:client];

  return client;
}

- (BOOL)setSilentMode:(BOOL)mode reason:(id)reason client:(int64_t)client
{
  modeCopy = mode;
  reasonCopy = reason;
  avSystemController = [(WFAVSystemController *)self avSystemController];
  v10 = avSystemController;
  if (client == 3)
  {
    v11 = 1;
  }

  else
  {
    v11 = 6;
  }

  if (client == 2)
  {
    v12 = 3;
  }

  else
  {
    v12 = v11;
  }

  v13 = [avSystemController setSilentMode:modeCopy untilTime:0 reason:reasonCopy clientType:v12];

  return v13;
}

- (BOOL)silentModeActive
{
  avSystemController = [(WFAVSystemController *)self avSystemController];
  getSilentMode = [avSystemController getSilentMode];

  return getSilentMode;
}

- (id)avSystemController
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2050000000;
  v2 = getAVSystemControllerClass_softClass;
  v10 = getAVSystemControllerClass_softClass;
  if (!getAVSystemControllerClass_softClass)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __getAVSystemControllerClass_block_invoke;
    v6[3] = &unk_1E7B02C60;
    v6[4] = &v7;
    __getAVSystemControllerClass_block_invoke(v6);
    v2 = v8[3];
  }

  v3 = v2;
  _Block_object_dispose(&v7, 8);
  sharedAVSystemController = [v2 sharedAVSystemController];

  return sharedAVSystemController;
}

@end