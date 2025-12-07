@interface JavaLangArrayIndexOutOfBoundsException
- (JavaLangArrayIndexOutOfBoundsException)initWithInt:(int)int;
- (JavaLangArrayIndexOutOfBoundsException)initWithInt:(int)int withInt:(int)withInt;
- (JavaLangArrayIndexOutOfBoundsException)initWithInt:(int)int withInt:(int)withInt withInt:(int)a5;
@end

@implementation JavaLangArrayIndexOutOfBoundsException

- (JavaLangArrayIndexOutOfBoundsException)initWithInt:(int)int
{
  v9 = JreStrcat("$I", a2, *&int, v3, v4, v5, v6, v7, @"index=");
  JavaLangIndexOutOfBoundsException_initWithNSString_(self, v9);
  return self;
}

- (JavaLangArrayIndexOutOfBoundsException)initWithInt:(int)int withInt:(int)withInt
{
  v9 = JreStrcat("$I$I", a2, *&int, *&withInt, v4, v5, v6, v7, @"length=");
  JavaLangIndexOutOfBoundsException_initWithNSString_(self, v9);
  return self;
}

- (JavaLangArrayIndexOutOfBoundsException)initWithInt:(int)int withInt:(int)withInt withInt:(int)a5
{
  v9 = JreStrcat("$I$I$I", a2, *&int, *&withInt, *&a5, v5, v6, v7, @"length=");
  JavaLangIndexOutOfBoundsException_initWithNSString_(self, v9);
  return self;
}

@end