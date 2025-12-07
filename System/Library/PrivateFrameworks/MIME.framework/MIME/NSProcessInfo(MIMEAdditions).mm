@interface NSProcessInfo(MIMEAdditions)
- (id)mf_thermalStateObservable;
@end

@implementation NSProcessInfo(MIMEAdditions)

- (id)mf_thermalStateObservable
{
  v11[1] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AD80]);
  v3 = *MEMORY[0x1E696A7E0];
  v4 = [v2 initWithName:*MEMORY[0x1E696A7E0] object:self userInfo:0];
  v5 = [MEMORY[0x1E699B830] observableOnDefaultNotificationCenterWithName:v3 object:self];
  v11[0] = v4;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v7 = [v5 startWith:v6];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __57__NSProcessInfo_MIMEAdditions__mf_thermalStateObservable__block_invoke;
  v10[3] = &unk_1E8455908;
  v10[4] = self;
  v8 = [v7 map:v10];

  return v8;
}

@end