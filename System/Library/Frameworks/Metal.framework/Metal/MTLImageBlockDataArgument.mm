@interface MTLImageBlockDataArgument
- (BOOL)isEqual:(id)equal;
- (MTLImageBlockDataArgument)initWithName:(id)name type:(unint64_t)type access:(unint64_t)access isActive:(BOOL)active index:(unint64_t)index dataSize:(unsigned int)size masterStructMembers:(id)members aliasImplicitImageBlock:(BOOL)self0 aliasImplicitImageBlockRenderTarget:(unsigned int)self1;
- (void)dealloc;
@end

@implementation MTLImageBlockDataArgument

- (MTLImageBlockDataArgument)initWithName:(id)name type:(unint64_t)type access:(unint64_t)access isActive:(BOOL)active index:(unint64_t)index dataSize:(unsigned int)size masterStructMembers:(id)members aliasImplicitImageBlock:(BOOL)self0 aliasImplicitImageBlockRenderTarget:(unsigned int)self1
{
  v14.receiver = self;
  v14.super_class = MTLImageBlockDataArgument;
  v12 = [(MTLBindingInternal *)&v14 initWithName:name type:type access:access index:index active:active arrayLength:1];
  v12->_dataSize = size;
  v12->_aliasImplicitImageBlock = block;
  v12->_aliasImplicitImageBlockRenderTarget = target;
  v12->_masterStructMembers = members;
  return v12;
}

- (void)dealloc
{
  self->_masterStructMembers = 0;
  v3.receiver = self;
  v3.super_class = MTLImageBlockDataArgument;
  [(MTLBindingInternal *)&v3 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && self->_dataSize == *(equal + 42) && self->_aliasImplicitImageBlock == *(equal + 184) && self->_aliasImplicitImageBlockRenderTarget == *(equal + 47))
    {
      masterStructMembers = self->_masterStructMembers;
      if (!(masterStructMembers | *(equal + 22)) || (v6 = [(MTLStructTypeInternal *)masterStructMembers isEqual:?]))
      {
        v8.receiver = self;
        v8.super_class = MTLImageBlockDataArgument;
        LOBYTE(v6) = [(MTLBindingInternal *)&v8 isEqual:equal];
      }
    }

    else
    {
      LOBYTE(v6) = 0;
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

@end