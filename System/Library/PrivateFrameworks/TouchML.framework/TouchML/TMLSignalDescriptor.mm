@interface TMLSignalDescriptor
- (TMLSignalDescriptor)initWithName:(id)name returnType:(unint64_t)type parameters:(id)parameters methodSelector:(id)selector attributes:(id)attributes;
@end

@implementation TMLSignalDescriptor

- (TMLSignalDescriptor)initWithName:(id)name returnType:(unint64_t)type parameters:(id)parameters methodSelector:(id)selector attributes:(id)attributes
{
  v8.receiver = self;
  v8.super_class = TMLSignalDescriptor;
  return [(TMLMethodDescriptor *)&v8 initWithName:name returnType:type parameters:parameters methodSelector:selector attributes:attributes];
}

@end