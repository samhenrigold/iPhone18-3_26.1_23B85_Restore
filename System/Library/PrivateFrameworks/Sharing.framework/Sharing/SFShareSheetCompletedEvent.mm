@interface SFShareSheetCompletedEvent
- (NSDictionary)eventPayload;
- (void)submitEvent;
@end

@implementation SFShareSheetCompletedEvent

- (NSDictionary)eventPayload
{
  v16[6] = *MEMORY[0x1E69E9840];
  v15[0] = @"sessionID";
  sessionID = [(SFShareSheetCompletedEvent *)self sessionID];
  v4 = sessionID;
  if (sessionID)
  {
    v5 = sessionID;
  }

  else
  {
    v5 = &stru_1F1D30528;
  }

  v16[0] = v5;
  v15[1] = @"presentationMs";
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[SFShareSheetCompletedEvent presentationMs](self, "presentationMs")}];
  v16[1] = v6;
  v15[2] = @"totalShareTimeMs";
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[SFShareSheetCompletedEvent totalShareTimeMs](self, "totalShareTimeMs")}];
  v16[2] = v7;
  v15[3] = @"success";
  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[SFShareSheetCompletedEvent success](self, "success")}];
  v16[3] = v8;
  v15[4] = @"activityType";
  activityType = [(SFShareSheetCompletedEvent *)self activityType];
  v10 = activityType;
  if (activityType)
  {
    v11 = activityType;
  }

  else
  {
    v11 = &stru_1F1D30528;
  }

  v16[4] = v11;
  v15[5] = @"isCollaborative";
  v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[SFShareSheetCompletedEvent isCollaborative](self, "isCollaborative")}];
  v16[5] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:6];

  return v13;
}

- (void)submitEvent
{
  v4 = +[SFShareSheetCompletedEvent eventName];
  eventPayload = [(SFShareSheetCompletedEvent *)self eventPayload];
  SFMetricsLog(v4, eventPayload);
}

@end