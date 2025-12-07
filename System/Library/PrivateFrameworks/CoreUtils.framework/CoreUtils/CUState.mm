@interface CUState
- (CUState)initWithName:(id)name parent:(id)parent;
- (id)description;
- (void)dealloc;
- (void)invalidate;
@end

@implementation CUState

- (void)invalidate
{
  eventHandler = self->_eventHandler;
  self->_eventHandler = 0;

  [(NSPointerArray *)self->_lcaMap setCount:0];
  lcaMap = self->_lcaMap;
  self->_lcaMap = 0;

  parent = self->_parent;
  self->_parent = 0;
}

- (id)description
{
  v2 = [(NSString *)self->_name copy];

  return v2;
}

- (void)dealloc
{
  if (self->_eventHandler || self->_lcaMap || self->_parent)
  {
    FatalErrorF("State %@: invalidate not called", a2, self->_name);
  }

  name = self->_name;
  self->_name = 0;

  v4.receiver = self;
  v4.super_class = CUState;
  [(CUState *)&v4 dealloc];
}

- (CUState)initWithName:(id)name parent:(id)parent
{
  nameCopy = name;
  parentCopy = parent;
  v15.receiver = self;
  v15.super_class = CUState;
  v8 = [(CUState *)&v15 init];
  if (!v8)
  {
    FatalErrorF("init failed");
  }

  v9 = v8;
  v10 = [nameCopy copy];
  name = v9->_name;
  v9->_name = v10;

  v12 = parentCopy;
  parent = v9->_parent;
  v9->_parent = v12;

  return v9;
}

@end