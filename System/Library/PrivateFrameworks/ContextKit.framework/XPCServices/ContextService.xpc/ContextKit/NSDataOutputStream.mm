@interface NSDataOutputStream
+ (id)stream;
- (NSDataOutputStream)init;
- (void)dealloc;
- (void)writeWithByteArray:(id)array withInt:(int)int withInt:(int)withInt;
@end

@implementation NSDataOutputStream

- (NSDataOutputStream)init
{
  v4.receiver = self;
  v4.super_class = NSDataOutputStream;
  v2 = [(JavaIoOutputStream *)&v4 init];
  if (v2)
  {
    v2->data_ = objc_alloc_init(NSMutableData);
  }

  return v2;
}

+ (id)stream
{
  v2 = objc_alloc_init(NSDataOutputStream);

  return v2;
}

- (void)dealloc
{
  v3 = self->data_;
  v4.receiver = self;
  v4.super_class = NSDataOutputStream;
  [(NSDataOutputStream *)&v4 dealloc];
}

- (void)writeWithByteArray:(id)array withInt:(int)int withInt:(int)withInt
{
  if (!array)
  {
    JreThrowNullPointerException();
  }

  v5 = *&withInt;
  v6 = *&int;
  v9 = [(NSMutableData *)self->data_ length];
  [(NSMutableData *)self->data_ increaseLengthBy:v5];
  v10 = [(NSMutableData *)self->data_ mutableBytes]+ v9;

  [array getBytes:v10 offset:v6 length:v5];
}

@end