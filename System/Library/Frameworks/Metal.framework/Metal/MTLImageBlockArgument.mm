@interface MTLImageBlockArgument
- (BOOL)isEqual:(id)equal;
- (MTLImageBlockArgument)initWithName:(id)name type:(unint64_t)type access:(unint64_t)access isActive:(BOOL)active index:(unint64_t)index kind:(unint64_t)kind dataSize:(unsigned int)size masterStructMembers:(id)self0 aliasImplicitImageBlock:(BOOL)self1 aliasImplicitImageBlockRenderTarget:(unsigned int)self2;
- (void)dealloc;
@end

@implementation MTLImageBlockArgument

- (MTLImageBlockArgument)initWithName:(id)name type:(unint64_t)type access:(unint64_t)access isActive:(BOOL)active index:(unint64_t)index kind:(unint64_t)kind dataSize:(unsigned int)size masterStructMembers:(id)self0 aliasImplicitImageBlock:(BOOL)self1 aliasImplicitImageBlockRenderTarget:(unsigned int)self2
{
  v15.receiver = self;
  v15.super_class = MTLImageBlockArgument;
  v13 = [(MTLBindingInternal *)&v15 initWithName:name type:type access:access index:index active:active arrayLength:1];
  v13->_kind = kind;
  v13->_dataSize = size;
  v13->_masterStructMembers = members;
  v13->_aliasImplicitImageBlock = block;
  v13->_aliasImplicitImageBlockRenderTarget = target;
  return v13;
}

- (void)dealloc
{
  self->_masterStructMembers = 0;
  v3.receiver = self;
  v3.super_class = MTLImageBlockArgument;
  [(MTLBindingInternal *)&v3 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && self->_kind == *(equal + 21) && self->_dataSize == *(equal + 44) && self->_aliasImplicitImageBlock == *(equal + 192) && self->_aliasImplicitImageBlockRenderTarget == *(equal + 49))
    {
      masterStructMembers = self->_masterStructMembers;
      if (!(masterStructMembers | *(equal + 23)) || (v6 = [(MTLStructTypeInternal *)masterStructMembers isEqual:?]))
      {
        v8.receiver = self;
        v8.super_class = MTLImageBlockArgument;
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