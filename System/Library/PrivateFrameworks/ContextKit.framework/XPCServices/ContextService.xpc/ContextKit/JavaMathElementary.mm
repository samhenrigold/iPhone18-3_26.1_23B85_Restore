@interface JavaMathElementary
+ (id)addWithIntArray:(id)array withInt:(int)int withIntArray:(id)intArray withInt:(int)withInt;
+ (id)subtractWithIntArray:(id)array withInt:(int)int withIntArray:(id)intArray withInt:(int)withInt;
@end

@implementation JavaMathElementary

+ (id)addWithIntArray:(id)array withInt:(int)int withIntArray:(id)intArray withInt:(int)withInt
{
  v6 = *&withInt;
  v8 = *&int;
  v10 = [IOSIntArray arrayWithLength:int + 1];
  sub_10024907C(v10, array, v8, intArray, v6);
  return v10;
}

+ (id)subtractWithIntArray:(id)array withInt:(int)int withIntArray:(id)intArray withInt:(int)withInt
{
  v10 = [IOSIntArray arrayWithLength:int];
  sub_100249814(v10, array, int, intArray, withInt);
  return v10;
}

@end