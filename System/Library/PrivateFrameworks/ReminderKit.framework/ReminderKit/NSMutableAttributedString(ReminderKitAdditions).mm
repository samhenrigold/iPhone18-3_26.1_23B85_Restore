@interface NSMutableAttributedString(ReminderKitAdditions)
- (BOOL)rem_replaceTTREMHashtag:()ReminderKitAdditions withTTREMHashtag:;
@end

@implementation NSMutableAttributedString(ReminderKitAdditions)

- (BOOL)rem_replaceTTREMHashtag:()ReminderKitAdditions withTTREMHashtag:
{
  v26[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3010000000;
  v23 = &unk_19A260519;
  v24 = xmmword_19A2310A0;
  v8 = [self length];
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __92__NSMutableAttributedString_ReminderKitAdditions__rem_replaceTTREMHashtag_withTTREMHashtag___block_invoke;
  v16 = &unk_1E7508590;
  selfCopy = self;
  v9 = v6;
  v18 = v9;
  v19 = &v20;
  [self enumerateAttribute:@"_TTREMHashtag" inRange:0 options:v8 usingBlock:{0, &v13}];
  v10 = v21[4];
  if (v10 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [self removeAttribute:@"_TTREMHashtag" range:{v21[4], v21[5], v13, v14, v15, v16, selfCopy}];
    v25 = @"_TTREMHashtag";
    v26[0] = v7;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
    [self setAttributes:v11 range:{v21[4], v21[5]}];
  }

  _Block_object_dispose(&v20, 8);
  return v10 != 0x7FFFFFFFFFFFFFFFLL;
}

@end