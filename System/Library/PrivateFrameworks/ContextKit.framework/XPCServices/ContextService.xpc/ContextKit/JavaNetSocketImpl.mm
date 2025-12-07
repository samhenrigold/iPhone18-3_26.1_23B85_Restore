@interface JavaNetSocketImpl
- (NSString)description;
- (void)dealloc;
@end

@implementation JavaNetSocketImpl

- (NSString)description
{
  [(JavaNetSocketImpl *)self getInetAddress];
  [(JavaNetSocketImpl *)self getLocalPort];
  return JreStrcat("$@$I$IC", v3, v4, v5, v6, v7, v8, v9, @"Socket[address=");
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaNetSocketImpl;
  [(JavaNetSocketImpl *)&v3 dealloc];
}

@end