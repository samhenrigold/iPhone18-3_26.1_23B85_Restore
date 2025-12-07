@interface PPNotificationManagerGuardedData
- (id)description;
@end

@implementation PPNotificationManagerGuardedData

- (id)description
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v11[0] = @"ct";
  v11[1] = @"cn";
  v4 = *&self->_contactsToken;
  v11[2] = @"mt";
  v11[3] = @"md";
  v5 = *&self->_meCardToken;
  v12[0] = v4;
  v12[1] = v5;
  v11[4] = @"pct";
  v6 = [MEMORY[0x1E696AD98] numberWithInt:self->_portraitChangeToken];
  v13 = v6;
  v11[5] = @"pit";
  v7 = [MEMORY[0x1E696AD98] numberWithInt:self->_portraitInvalidationToken];
  v14 = v7;
  v15 = *&self->_eventKitToken;
  v11[6] = @"et";
  v11[7] = @"es";
  v11[8] = @"cvm";
  calendarVisibilityManager = self->_calendarVisibilityManager;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:9];
  v9 = [v3 initWithFormat:@"<PPNotificationManagerGuardedData %@>", v8];

  return v9;
}

@end