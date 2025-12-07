@interface FBProcessExecutableSlice
+ (id)sliceWithType:(int)type subtype:(int)subtype;
@end

@implementation FBProcessExecutableSlice

+ (id)sliceWithType:(int)type subtype:(int)subtype
{
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___FBProcessExecutableSlice;
  v4 = objc_msgSendSuper2(&v6, sel_sliceWithType_subtype_, *&type, *&subtype);

  return v4;
}

@end