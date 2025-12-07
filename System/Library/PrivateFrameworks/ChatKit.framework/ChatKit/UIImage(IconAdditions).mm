@interface UIImage(IconAdditions)
+ (id)badgeIconForImageNamed:()IconAdditions inBundle:;
+ (id)placeholderExtensionIcon;
- (id)iconForInterfaceStyle:()IconAdditions;
@end

@implementation UIImage(IconAdditions)

- (id)iconForInterfaceStyle:()IconAdditions
{
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen scale];
  v6 = v5;

  v10 = v6;
  [MEMORY[0x1E69DCAB8] _iconVariantForUIApplicationIconFormat:14 scale:&v10];
  [self CGImage];
  v7 = LICreateIconForImage();
  v8 = [MEMORY[0x1E69DCAB8] imageWithCGImage:v7 scale:0 orientation:v10];
  CGImageRelease(v7);

  return v8;
}

+ (id)badgeIconForImageNamed:()IconAdditions inBundle:
{
  if (a3)
  {
    v3 = [MEMORY[0x1E69DCAB8] imageNamed:? inBundle:?];
    [v3 size];
    v5 = v4;
    [v3 size];
    if (!CKFloatApproximatelyEqualToFloatWithTolerance(v5, v6, 0.1))
    {
      v7 = [v3 _applicationIconImageForFormat:15 precomposed:1];

      v3 = v7;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (id)placeholderExtensionIcon
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v2, OS_LOG_TYPE_INFO, "Generate placeholder image", buf, 2u);
    }
  }

  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen scale];
  v5 = v4;

  v10 = v5;
  [MEMORY[0x1E69DCAB8] _iconVariantForUIApplicationIconFormat:14 scale:&v10];
  v6 = LICreateDefaultIcon();
  if (v6)
  {
    v7 = v6;
    v8 = [MEMORY[0x1E69DCAB8] imageWithCGImage:v6];
    CFRelease(v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end