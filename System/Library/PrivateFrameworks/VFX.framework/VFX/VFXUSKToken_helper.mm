@interface VFXUSKToken_helper
+ (id)tokenWithString:(id)string;
@end

@implementation VFXUSKToken_helper

+ (id)tokenWithString:(id)string
{
  v4 = [qword_1EB658D08 alloc];
  v6 = objc_msgSend_initWithString_(v4, v5, string);

  return v6;
}

@end