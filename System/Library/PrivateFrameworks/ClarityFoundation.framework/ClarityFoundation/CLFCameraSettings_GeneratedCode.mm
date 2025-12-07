@interface CLFCameraSettings_GeneratedCode
+ (CLFCameraSettings)sharedInstance;
+ (id)allPreferenceSelectorsAsStrings;
- (CLFCameraSettings_GeneratedCode)init;
- (void)setAllowPhotoCapture:(BOOL)capture;
- (void)setAllowSelfieCapture:(BOOL)capture;
- (void)setAllowSelfieVideoCapture:(BOOL)capture;
- (void)setAllowVideoCapture:(BOOL)capture;
@end

@implementation CLFCameraSettings_GeneratedCode

+ (CLFCameraSettings)sharedInstance
{
  if (sharedInstance_onceToken_4 != -1)
  {
    +[CLFCameraSettings_GeneratedCode sharedInstance];
  }

  v3 = sharedInstance_SharedSettings_3;

  return v3;
}

- (CLFCameraSettings_GeneratedCode)init
{
  v13.receiver = self;
  v13.super_class = CLFCameraSettings_GeneratedCode;
  v2 = [(CLFBaseSettings *)&v13 init];
  v3 = v2;
  if (v2)
  {
    preferenceKeysBySelectorName = [(CLFBaseSettings *)v2 preferenceKeysBySelectorName];
    v5 = NSStringFromSelector(sel_allowPhotoCapture);
    [preferenceKeysBySelectorName setObject:@"AllowPhotoCapture" forKeyedSubscript:v5];

    preferenceKeysBySelectorName2 = [(CLFBaseSettings *)v3 preferenceKeysBySelectorName];
    v7 = NSStringFromSelector(sel_allowSelfieCapture);
    [preferenceKeysBySelectorName2 setObject:@"AllowSelfieCapture" forKeyedSubscript:v7];

    preferenceKeysBySelectorName3 = [(CLFBaseSettings *)v3 preferenceKeysBySelectorName];
    v9 = NSStringFromSelector(sel_allowSelfieVideoCapture);
    [preferenceKeysBySelectorName3 setObject:@"AllowSelfieVideoCapture" forKeyedSubscript:v9];

    preferenceKeysBySelectorName4 = [(CLFBaseSettings *)v3 preferenceKeysBySelectorName];
    v11 = NSStringFromSelector(sel_allowVideoCapture);
    [preferenceKeysBySelectorName4 setObject:@"AllowVideoCapture" forKeyedSubscript:v11];
  }

  return v3;
}

+ (id)allPreferenceSelectorsAsStrings
{
  v11[4] = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = &OBJC_METACLASS___CLFCameraSettings_GeneratedCode;
  v2 = objc_msgSendSuper2(&v10, sel_allPreferenceSelectorsAsStrings);
  v3 = NSStringFromSelector(sel_allowPhotoCapture);
  v11[0] = v3;
  v4 = NSStringFromSelector(sel_allowSelfieCapture);
  v11[1] = v4;
  v5 = NSStringFromSelector(sel_allowSelfieVideoCapture);
  v11[2] = v5;
  v6 = NSStringFromSelector(sel_allowVideoCapture);
  v11[3] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:4];
  v8 = [v2 arrayByAddingObjectsFromArray:v7];

  return v8;
}

- (void)setAllowPhotoCapture:(BOOL)capture
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:capture];
  [(AXBaseSettings *)self setValue:v4 forPreferenceKey:@"AllowPhotoCapture"];
}

- (void)setAllowSelfieCapture:(BOOL)capture
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:capture];
  [(AXBaseSettings *)self setValue:v4 forPreferenceKey:@"AllowSelfieCapture"];
}

- (void)setAllowSelfieVideoCapture:(BOOL)capture
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:capture];
  [(AXBaseSettings *)self setValue:v4 forPreferenceKey:@"AllowSelfieVideoCapture"];
}

- (void)setAllowVideoCapture:(BOOL)capture
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:capture];
  [(AXBaseSettings *)self setValue:v4 forPreferenceKey:@"AllowVideoCapture"];
}

@end