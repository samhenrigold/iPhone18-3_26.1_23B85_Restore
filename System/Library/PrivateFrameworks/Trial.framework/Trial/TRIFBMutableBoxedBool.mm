@interface TRIFBMutableBoxedBool
- (TRIFBMutableBoxedBool)initWithVal:(BOOL)val;
- (void)dealloc;
- (void)setVal:(BOOL)val;
@end

@implementation TRIFBMutableBoxedBool

- (void)setVal:(BOOL)val
{
  if (self && !self->_allowMutation)
  {
    v4 = objc_alloc(MEMORY[0x277CCACA8]);
    v5 = NSStringFromSelector(a2);
    v6 = [v4 initWithFormat:@"%@ mutating method sent to immutable object", v5];

    v7 = [MEMORY[0x277CBEAD8] exceptionWithName:@"NSInternalInconsistencyException" reason:v6 userInfo:0];
    objc_exception_throw(v7);
  }

  self->_ptr->var0 = val;
}

- (void)dealloc
{
  if (self->_deleteWhenDone)
  {
    ptr = self->_ptr;
    if (ptr)
    {
      MEMORY[0x2318F1E10](ptr, 0x1000C4077774924);
    }
  }

  v4.receiver = self;
  v4.super_class = TRIFBMutableBoxedBool;
  [(TRIFBMutableBoxedBool *)&v4 dealloc];
}

- (TRIFBMutableBoxedBool)initWithVal:(BOOL)val
{
  valCopy = val;
  v4 = [(TRIFBMutableBoxedBool *)self init];
  v5 = v4;
  if (v4)
  {
    [(TRIFBMutableBoxedBool *)v4 setVal:valCopy];
  }

  return v5;
}

@end