@interface MDMAccessibilityManager
+ (id)sharedInstance;
- (BOOL)touchAccommodationsEnabled;
- (int64_t)textSize;
- (void)setTextSize:(int64_t)size;
- (void)setTouchAccommodationsEnabled:(BOOL)enabled;
@end

@implementation MDMAccessibilityManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[MDMAccessibilityManager sharedInstance];
  }

  v3 = sharedInstance__sharedInstance;

  return v3;
}

uint64_t __41__MDMAccessibilityManager_sharedInstance__block_invoke()
{
  sharedInstance__sharedInstance = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (BOOL)touchAccommodationsEnabled
{
  mEMORY[0x277CE7E20] = [MEMORY[0x277CE7E20] sharedInstance];
  touchAccommodationsEnabled = [mEMORY[0x277CE7E20] touchAccommodationsEnabled];

  return touchAccommodationsEnabled;
}

- (void)setTouchAccommodationsEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  mEMORY[0x277CE7E20] = [MEMORY[0x277CE7E20] sharedInstance];
  [mEMORY[0x277CE7E20] setTouchAccommodationsEnabled:enabledCopy];
}

- (int64_t)textSize
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = -1;
  v2 = _AXSCopyPreferredContentSizeCategoryName();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __35__MDMAccessibilityManager_textSize__block_invoke;
  v6[3] = &unk_27982B8E0;
  v3 = v2;
  v7 = v3;
  v8 = &v9;
  [&unk_2868502F0 enumerateObjectsUsingBlock:v6];
  v4 = v10[3];

  _Block_object_dispose(&v9, 8);
  return v4;
}

void *__35__MDMAccessibilityManager_textSize__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 isEqualToString:*(a1 + 32)];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = a3;
    *a4 = 1;
  }

  return result;
}

- (void)setTextSize:(int64_t)size
{
  v13 = *MEMORY[0x277D85DE8];
  if ([(MDMAccessibilityManager *)self isValidTextSize:?])
  {
    v8 = [&unk_2868502F0 objectAtIndexedSubscript:size];
    _AXSSetPreferredContentSizeCategoryName();
  }

  else
  {
    v4 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = v4;
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      *buf = 138543618;
      v10 = v7;
      v11 = 1024;
      sizeCopy = size;
      _os_log_impl(&dword_2561F5000, v5, OS_LOG_TYPE_ERROR, "%{public}@ text size is out of range (%d)", buf, 0x12u);
    }
  }
}

@end