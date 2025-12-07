@interface UIBarButtonItem(SSSAdditions)
+ (id)_sss_cropItemWithTarget:()SSSAdditions action:;
+ (id)_sss_redoItemWithTarget:()SSSAdditions action:;
+ (id)_sss_shareItemWithTarget:()SSSAdditions action:;
+ (id)_sss_trashItemWithTarget:()SSSAdditions action:;
+ (id)_sss_undoItemWithTarget:()SSSAdditions action:;
@end

@implementation UIBarButtonItem(SSSAdditions)

+ (id)_sss_undoItemWithTarget:()SSSAdditions action:
{
  v5 = MEMORY[0x1E69DC708];
  v6 = a3;
  v7 = [v5 alloc];
  v8 = MEMORY[0x1E69DCAB8];
  if (_SSScreenshotsRedesign2025Enabled(v7, v9))
  {
    v10 = @"arrow.uturn.backward";
  }

  else
  {
    v10 = @"arrow.uturn.backward.circle";
  }

  v11 = [v8 systemImageNamed:v10];
  v12 = [v7 initWithImage:v11 style:0 target:v6 action:a4];

  return v12;
}

+ (id)_sss_redoItemWithTarget:()SSSAdditions action:
{
  v5 = MEMORY[0x1E69DC708];
  v6 = a3;
  v7 = [v5 alloc];
  v8 = MEMORY[0x1E69DCAB8];
  if (_SSScreenshotsRedesign2025Enabled(v7, v9))
  {
    v10 = @"arrow.uturn.forward";
  }

  else
  {
    v10 = @"arrow.uturn.forward.circle";
  }

  v11 = [v8 systemImageNamed:v10];
  v12 = [v7 initWithImage:v11 style:0 target:v6 action:a4];

  return v12;
}

+ (id)_sss_shareItemWithTarget:()SSSAdditions action:
{
  v5 = MEMORY[0x1E69DC708];
  v6 = a3;
  v7 = [v5 alloc];
  v8 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"square.and.arrow.up"];
  v9 = [v7 initWithImage:v8 style:0 target:v6 action:a4];

  return v9;
}

+ (id)_sss_trashItemWithTarget:()SSSAdditions action:
{
  v5 = MEMORY[0x1E69DC708];
  v6 = a3;
  v7 = [v5 alloc];
  v8 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"trash"];
  v9 = [v7 initWithImage:v8 style:0 target:v6 action:a4];

  return v9;
}

+ (id)_sss_cropItemWithTarget:()SSSAdditions action:
{
  v5 = MEMORY[0x1E69DC708];
  v6 = a3;
  v7 = [v5 alloc];
  v8 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"crop"];
  v9 = [v7 initWithImage:v8 style:0 target:v6 action:a4];

  return v9;
}

@end