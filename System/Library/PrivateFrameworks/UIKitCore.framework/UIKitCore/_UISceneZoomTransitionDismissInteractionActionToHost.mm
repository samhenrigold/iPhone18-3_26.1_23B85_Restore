@interface _UISceneZoomTransitionDismissInteractionActionToHost
+ (id)actionForDismissInteractionDidBeginAtLocation:(double)location withVelocity:(double)velocity;
+ (id)actionForDismissInteractionDidCancelWithVelocity:(double)velocity originalPosition:(double)position;
+ (id)actionForDismissInteractionDidDismissWithVelocity:(double)velocity;
+ (id)actionForDismissInteractionDidIssueUpdate:(uint64_t)update;
- (void)executeActionForProxyDismissInteraction:(void *)interaction;
@end

@implementation _UISceneZoomTransitionDismissInteractionActionToHost

+ (id)actionForDismissInteractionDidBeginAtLocation:(double)location withVelocity:(double)velocity
{
  v9 = objc_opt_self();
  v10 = objc_alloc_init(MEMORY[0x1E698E700]);
  [v10 setObject:&unk_1EFE33928 forSetting:0];
  *v16 = a2;
  *&v16[1] = location;
  v11 = [MEMORY[0x1E696B098] valueWithBytes:v16 objCType:"{CGPoint=dd}"];
  [v10 setObject:v11 forSetting:1];

  *v15 = velocity;
  *&v15[1] = a5;
  v12 = [MEMORY[0x1E696B098] valueWithBytes:v15 objCType:"{CGPoint=dd}"];
  [v10 setObject:v12 forSetting:2];

  v13 = [[v9 alloc] initWithInfo:v10 responder:0];

  return v13;
}

+ (id)actionForDismissInteractionDidIssueUpdate:(uint64_t)update
{
  v2 = a2;
  v3 = objc_opt_self();
  v4 = objc_alloc_init(MEMORY[0x1E698E700]);
  [v4 setObject:&unk_1EFE33940 forSetting:0];
  [v4 setObject:v2 forSetting:3];

  v5 = [[v3 alloc] initWithInfo:v4 responder:0];

  return v5;
}

+ (id)actionForDismissInteractionDidDismissWithVelocity:(double)velocity
{
  v5 = objc_opt_self();
  v6 = objc_alloc_init(MEMORY[0x1E698E700]);
  [v6 setObject:&unk_1EFE33958 forSetting:0];
  *v10 = a2;
  *&v10[1] = velocity;
  v7 = [MEMORY[0x1E696B098] valueWithBytes:v10 objCType:"{CGPoint=dd}"];
  [v6 setObject:v7 forSetting:2];

  v8 = [[v5 alloc] initWithInfo:v6 responder:0];

  return v8;
}

+ (id)actionForDismissInteractionDidCancelWithVelocity:(double)velocity originalPosition:(double)position
{
  v9 = objc_opt_self();
  v10 = objc_alloc_init(MEMORY[0x1E698E700]);
  [v10 setObject:&unk_1EFE33970 forSetting:0];
  *v16 = a2;
  *&v16[1] = velocity;
  v11 = [MEMORY[0x1E696B098] valueWithBytes:v16 objCType:"{CGPoint=dd}"];
  [v10 setObject:v11 forSetting:2];

  *v15 = position;
  *&v15[1] = a5;
  v12 = [MEMORY[0x1E696B098] valueWithBytes:v15 objCType:"{CGPoint=dd}"];
  [v10 setObject:v12 forSetting:1];

  v13 = [[v9 alloc] initWithInfo:v10 responder:0];

  return v13;
}

- (void)executeActionForProxyDismissInteraction:(void *)interaction
{
  v38 = a2;
  if (interaction)
  {
    info = [interaction info];
    v4 = [info objectForSetting:0];
    unsignedIntegerValue = [v4 unsignedIntegerValue];

    if (unsignedIntegerValue > 1)
    {
      if (unsignedIntegerValue == 2)
      {
        info2 = [interaction info];
        v33 = [info2 objectForSetting:2];
        [v33 CGPointValue];
        v35 = v34;
        v37 = v36;

        [v38 dismissWithVelocity:{v35, v37}];
      }

      else if (unsignedIntegerValue == 3)
      {
        info3 = [interaction info];
        v9 = [info3 objectForSetting:2];
        [v9 CGPointValue];
        v11 = v10;
        v13 = v12;

        info4 = [interaction info];
        v15 = [info4 objectForSetting:1];
        [v15 CGPointValue];
        v17 = v16;
        v19 = v18;

        [v38 cancelWithVelocity:v11 originalPosition:{v13, v17, v19}];
      }
    }

    else if (unsignedIntegerValue)
    {
      if (unsignedIntegerValue == 1)
      {
        info5 = [interaction info];
        v7 = [info5 objectForSetting:3];

        [v38 issueUpdate:v7];
      }
    }

    else
    {
      info6 = [interaction info];
      v21 = [info6 objectForSetting:1];
      [v21 CGPointValue];
      v23 = v22;
      v25 = v24;

      info7 = [interaction info];
      v27 = [info7 objectForSetting:2];
      [v27 CGPointValue];
      v29 = v28;
      v31 = v30;

      [v38 beginAtLocation:v23 withVelocity:{v25, v29, v31}];
    }
  }
}

@end