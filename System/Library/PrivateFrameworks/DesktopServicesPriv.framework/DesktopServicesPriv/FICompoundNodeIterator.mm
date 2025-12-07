@interface FICompoundNodeIterator
- (BOOL)fullyPopulated;
- (FICompoundNodeIterator)initWithNodes:(id)nodes options:(unsigned int)options;
- (id).cxx_construct;
- (id)first;
- (id)next;
- (unint64_t)estimatedSize;
@end

@implementation FICompoundNodeIterator

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

- (BOOL)fullyPopulated
{
  begin = self->_subIterators.__begin_;
  var0 = self->_subIterators.var0;
  if (begin == var0)
  {
    LOBYTE(fullyPopulated) = 1;
  }

  else
  {
    v4 = begin + 1;
    do
    {
      fullyPopulated = [(__cap_ *)*(v4 - 1) fullyPopulated];
      if (fullyPopulated)
      {
        v6 = v4 == var0;
      }

      else
      {
        v6 = 1;
      }

      ++v4;
    }

    while (!v6);
  }

  return fullyPopulated;
}

- (id)first
{
  self->fCurrentIterator = 0;
  begin = self->_subIterators.__begin_;
  var0 = self->_subIterators.var0;
  if (begin == var0)
  {
LABEL_4:
    first = 0;
  }

  else
  {
    while (1)
    {
      v5 = *begin;
      first = [(__end_ *)v5 first];
      if (first)
      {
        break;
      }

      ++self->fCurrentIterator;

      if (++begin == var0)
      {
        goto LABEL_4;
      }
    }
  }

  return first;
}

- (FICompoundNodeIterator)initWithNodes:(id)nodes options:(unsigned int)options
{
  v4 = *&options;
  nodesCopy = nodes;
  v21.receiver = self;
  v21.super_class = FICompoundNodeIterator;
  v7 = [(FICompoundNodeIterator *)&v21 init];
  IDContainerIteratorAdaptor<NSSet<FINode *>>::NSForwardIterator<NSSet<FINode *>>::NSForwardIterator(&obj, nodesCopy);
  IDContainerIteratorAdaptor<NSSet<FINode *>>::IDContainerIteratorAdaptor(v22, -1, nodesCopy);
  p_subIterators = &v7->_subIterators;
  while (obj != v22[0] || v28 != v22[16])
  {
    v9 = *(v24[1] + 8 * v27);
    v10 = [v9 iteratorWithOptions:v4];
    var0 = v7->_subIterators.var0;
    var1 = v7->_subIterators.var1;
    if (var0 >= var1)
    {
      v14 = (var0 - p_subIterators->__begin_) >> 3;
      if ((v14 + 1) >> 61)
      {
        std::vector<std::pair<TNodePtr,TNodePtr>>::__throw_length_error[abi:ne200100]();
      }

      v15 = var1 - p_subIterators->__begin_;
      v16 = v15 >> 2;
      if (v15 >> 2 <= (v14 + 1))
      {
        v16 = v14 + 1;
      }

      if (v15 >= 0x7FFFFFFFFFFFFFF8)
      {
        v17 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v17 = v16;
      }

      v33 = &v7->_subIterators;
      if (v17)
      {
        std::allocator<TNodePtr>::allocate_at_least[abi:ne200100](&v7->_subIterators, v17);
      }

      v29 = 0;
      v30 = (8 * v14);
      v32 = 0;
      *v30 = v10;
      v31 = 8 * v14 + 8;
      std::vector<NSURL * {__strong}>::__swap_out_circular_buffer(&v7->_subIterators, &v29);
      v13 = v7->_subIterators.var0;
      std::__split_buffer<TNodePtr>::~__split_buffer(&v29);
    }

    else
    {
      *var0 = v10;
      v13 = (var0 + 1);
      v7->_subIterators.var0 = v13;
    }

    v7->_subIterators.var0 = v13;

    v18 = v27;
    if (v27 >= v26 - 1)
    {
      v19 = [obj countByEnumeratingWithState:v24 objects:v25 count:4];
      v18 = -1;
      v26 = v19;
      v27 = -1;
    }

    if (v25[4] != *v24[2])
    {
      objc_enumerationMutation(obj);
      v18 = v27;
    }

    v27 = v18 + 1;
    ++v28;
  }

  return v7;
}

- (id)next
{
  fCurrentIterator = self->fCurrentIterator;
  begin = self->_subIterators.__begin_;
  if (fCurrentIterator >= self->_subIterators.var0 - begin)
  {
LABEL_8:
    v8 = 0;
  }

  else
  {
    v5 = 0;
    while (1)
    {
      v6 = begin[fCurrentIterator];
      v7 = v6;
      if (v5)
      {
        [(__end_ *)v6 first];
      }

      else
      {
        [(__end_ *)v6 next];
      }
      v8 = ;
      if (v8)
      {
        break;
      }

      ++self->fCurrentIterator;

      fCurrentIterator = self->fCurrentIterator;
      begin = self->_subIterators.__begin_;
      v5 = 1;
      if (fCurrentIterator >= self->_subIterators.var0 - begin)
      {
        goto LABEL_8;
      }
    }
  }

  return v8;
}

- (unint64_t)estimatedSize
{
  begin = self->_subIterators.__begin_;
  var0 = self->_subIterators.var0;
  if (begin == var0)
  {
    return 0;
  }

  LODWORD(v4) = 0;
  do
  {
    v5 = *begin++;
    v4 = v4 + [v5 estimatedSize];
  }

  while (begin != var0);
  return v4;
}

@end