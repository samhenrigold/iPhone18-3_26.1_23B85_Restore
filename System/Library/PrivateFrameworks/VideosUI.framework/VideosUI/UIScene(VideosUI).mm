@interface UIScene(VideosUI)
- (uint64_t)vui_isNonLightningSecondScreenScene;
@end

@implementation UIScene(VideosUI)

- (uint64_t)vui_isNonLightningSecondScreenScene
{
  v11 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  screen = [self screen];
  displayConfiguration = [screen displayConfiguration];
  name = [displayConfiguration name];

  v6 = VUIDefaultLogObject(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = name;
    _os_log_impl(&dword_1E323F000, v6, OS_LOG_TYPE_DEFAULT, "Found window scene with display name %@", &v9, 0xCu);
  }

  v7 = [name hasPrefix:@"TVOut"];
  return v7;
}

@end