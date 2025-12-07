@interface UIImage
+ (id)_pk_UCBButtonImage;
+ (id)_pk_closeButtonImage;
+ (id)_pk_ellipsisButtonImage;
+ (id)_pk_emojiButtonImage;
+ (id)_pk_keyboardButtonImage;
+ (id)_pk_plusButtonImage;
+ (id)_pk_redoButtonImage;
+ (id)_pk_returnKeyButtonImage;
+ (id)_pk_shapeButtonImage;
+ (id)_pk_textButtonImage;
+ (id)_pk_undoButtonImage;
@end

@implementation UIImage

+ (id)_pk_undoButtonImage
{
  v1 = objc_opt_self();
  v2 = +[(UIImageSymbolConfiguration *)MEMORY[0x1E69DCAD8]];
  v3 = [v1 systemImageNamed:@"arrow.uturn.backward" withConfiguration:v2];

  return v3;
}

+ (id)_pk_redoButtonImage
{
  v1 = objc_opt_self();
  v2 = +[(UIImageSymbolConfiguration *)MEMORY[0x1E69DCAD8]];
  v3 = [v1 systemImageNamed:@"arrow.uturn.forward" withConfiguration:v2];

  return v3;
}

+ (id)_pk_ellipsisButtonImage
{
  v1 = objc_opt_self();
  v2 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:6 weight:2 scale:17.0];
  v3 = [v1 systemImageNamed:@"ellipsis" withConfiguration:v2];

  return v3;
}

+ (id)_pk_plusButtonImage
{
  v1 = objc_opt_self();
  v2 = +[(UIImageSymbolConfiguration *)MEMORY[0x1E69DCAD8]];
  v3 = [v1 systemImageNamed:@"plus" withConfiguration:v2];

  return v3;
}

+ (id)_pk_UCBButtonImage
{
  v1 = objc_opt_self();
  v2 = MEMORY[0x1E69DCAD8];
  if (qword_1ED6A4FE0 != -1)
  {
    dispatch_once(&qword_1ED6A4FE0, &__block_literal_global_13);
  }

  v3 = [v2 configurationWithPointSize:6 weight:1 scale:*&_MergedGlobals_123];
  v4 = [v1 systemImageNamed:@"keyboard.badge.ellipsis" withConfiguration:v3];

  return v4;
}

+ (id)_pk_keyboardButtonImage
{
  v1 = objc_opt_self();
  v2 = +[(UIImageSymbolConfiguration *)MEMORY[0x1E69DCAD8]];
  v3 = [v1 systemImageNamed:@"keyboard" withConfiguration:v2];

  return v3;
}

+ (id)_pk_emojiButtonImage
{
  v1 = objc_opt_self();
  v2 = +[(UIImageSymbolConfiguration *)MEMORY[0x1E69DCAD8]];
  v3 = [v1 systemImageNamed:@"smiley" withConfiguration:v2];

  return v3;
}

+ (id)_pk_returnKeyButtonImage
{
  v1 = objc_opt_self();
  v2 = +[(UIImageSymbolConfiguration *)MEMORY[0x1E69DCAD8]];
  v3 = [v1 systemImageNamed:@"return" withConfiguration:v2];

  return v3;
}

+ (id)_pk_textButtonImage
{
  v1 = objc_opt_self();
  v2 = +[(UIImageSymbolConfiguration *)MEMORY[0x1E69DCAD8]];
  v3 = [v1 systemImageNamed:@"character.textbox" withConfiguration:v2];

  return v3;
}

+ (id)_pk_shapeButtonImage
{
  v1 = objc_opt_self();
  v2 = +[(UIImageSymbolConfiguration *)MEMORY[0x1E69DCAD8]];
  v3 = [v1 systemImageNamed:@"square.on.circle" withConfiguration:v2];

  return v3;
}

+ (id)_pk_closeButtonImage
{
  v1 = objc_opt_self();
  v2 = MEMORY[0x1E69DCAD8];
  if (qword_1ED6A4FE0 != -1)
  {
    dispatch_once(&qword_1ED6A4FE0, &__block_literal_global_13);
  }

  v3 = [v2 configurationWithPointSize:6 weight:1 scale:*&_MergedGlobals_123];
  v4 = [v1 systemImageNamed:@"xmark" withConfiguration:v3];

  return v4;
}

@end