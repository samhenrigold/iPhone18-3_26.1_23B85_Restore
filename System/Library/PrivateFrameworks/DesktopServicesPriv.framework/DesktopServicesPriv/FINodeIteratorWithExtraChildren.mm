@interface FINodeIteratorWithExtraChildren
- (BOOL)fullyPopulated;
- (FINodeIteratorWithExtraChildren)initWithIterator:(id)iterator extraChildren:(id)children extraChildrenFullyPopulated:(BOOL)populated options:(unsigned int)options;
- (id)first;
- (id)next;
@end

@implementation FINodeIteratorWithExtraChildren

- (FINodeIteratorWithExtraChildren)initWithIterator:(id)iterator extraChildren:(id)children extraChildrenFullyPopulated:(BOOL)populated options:(unsigned int)options
{
  v6 = *&options;
  populatedCopy = populated;
  iteratorCopy = iterator;
  childrenCopy = children;
  v17.receiver = self;
  v17.super_class = FINodeIteratorWithExtraChildren;
  v13 = [(FINodeIteratorWithExtraChildren *)&v17 init];
  objc_storeStrong(&v13->_baseIterator, iterator);
  v14 = [[FIChildrenIterator alloc] initWithChildren:childrenCopy fullyPopulated:populatedCopy options:v6];
  extraIterator = v13->_extraIterator;
  v13->_extraIterator = v14;

  return v13;
}

- (id)first
{
  first = [(FINodeIterator *)self->_baseIterator first];
  if (!first)
  {
    first = [(FINodeIterator *)self->_extraIterator first];
  }

  return first;
}

- (id)next
{
  if (self->_baseIteratorDone)
  {
    next = [(FINodeIterator *)self->_extraIterator next];
  }

  else
  {
    next = [(FINodeIterator *)self->_baseIterator next];
    if (!next)
    {
      self->_baseIteratorDone = 1;
      next = [(FINodeIterator *)self->_extraIterator first];
    }
  }

  return next;
}

- (BOOL)fullyPopulated
{
  fullyPopulated = [(FINodeIterator *)self->_baseIterator fullyPopulated];
  if (fullyPopulated)
  {
    extraIterator = self->_extraIterator;

    LOBYTE(fullyPopulated) = [(FINodeIterator *)extraIterator fullyPopulated];
  }

  return fullyPopulated;
}

@end