@interface FICustomNode
- (FICustomNode)init;
- (id)fileOpNode;
- (id)propertyAsNumber:(unsigned int)number async:(BOOL)async options:(unsigned int)options error:(id *)error;
- (void)dealloc;
@end

@implementation FICustomNode

- (FICustomNode)init
{
  v5.receiver = self;
  v5.super_class = FICustomNode;
  v2 = [(FICustomNode *)&v5 init];
  TNode::CreateCustomNode(v2, v3);
}

- (void)dealloc
{
  v3 = +[FIPresentationNodeMap shared];
  [v3 unregisterAllForPresentationNode:self];

  v4.receiver = self;
  v4.super_class = FICustomNode;
  [(FICustomNode *)&v4 dealloc];
}

- (id)fileOpNode
{
  fileURL = [(FIDSNode *)self fileURL];
  if (!fileURL || ([FINode fiNodeFromURL:fileURL], (selfCopy = objc_claimAutoreleasedReturnValue()) == 0))
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (id)propertyAsNumber:(unsigned int)number async:(BOOL)async options:(unsigned int)options error:(id *)error
{
  v7 = *&options;
  asyncCopy = async;
  v9 = *&number;
  if (number > 1819240306)
  {
    if (number == 1885895027)
    {
      goto LABEL_7;
    }

    v11 = 1819240307;
  }

  else
  {
    if (number == 1667785588)
    {
      goto LABEL_7;
    }

    v11 = 1684237940;
  }

  if (number != v11)
  {
LABEL_30:
    v41.receiver = self;
    v41.super_class = FICustomNode;
    v29 = [(FIDSNode *)&v41 propertyAsNumber:v9 async:asyncCopy options:v7 error:error];
    goto LABEL_45;
  }

LABEL_7:
  nodesForSizing = [(FICustomNode *)self nodesForSizing];
  if (!nodesForSizing)
  {
    goto LABEL_30;
  }

  v13 = nodesForSizing;
  IDContainerIteratorAdaptor<NSArray<FINode *>>::NSForwardIterator<NSArray<FINode *>>::NSForwardIterator(v46, nodesForSizing);
  IDContainerIteratorAdaptor<NSArray<FINode *>>::IDContainerIteratorAdaptor(v45, -1, v13);
  v14 = algorithm_extras::distance_or_zero<IDContainerIteratorAdaptor<NSArray<FINode *>>>(v46, v45);

  type_traits_extras::CopyAsHelper<std::vector<long long>>::MakeWithCapacity(v14, &__src);
  IDContainerIteratorAdaptor<NSArray<FINode *>>::NSForwardIterator<NSArray<FINode *>>::NSForwardIterator(&v48, v13);
  v40 = v13;
  IDContainerIteratorAdaptor<NSArray<FINode *>>::IDContainerIteratorAdaptor(v47, -1, v13);
  if (v9 == 1684237940)
  {
    asyncCopy = 0;
  }

  else
  {
    asyncCopy = asyncCopy;
  }

  while (v48 != v47[0] || v53 != v47[16])
  {
    v15 = *(v49[1] + 8 * v52);
    v16 = [v15 propertyAsNumber:v9 async:asyncCopy options:v7 error:0];
    longLongValue = [v16 longLongValue];

    v18 = v43;
    if (v43 >= v44)
    {
      v20 = __src;
      v21 = v43 - __src;
      v22 = (v43 - __src) >> 3;
      v23 = v22 + 1;
      if ((v22 + 1) >> 61)
      {
        std::vector<std::pair<TNodePtr,TNodePtr>>::__throw_length_error[abi:ne200100]();
      }

      v24 = v44 - __src;
      if ((v44 - __src) >> 2 > v23)
      {
        v23 = v24 >> 2;
      }

      if (v24 >= 0x7FFFFFFFFFFFFFF8)
      {
        v25 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v25 = v23;
      }

      if (v25)
      {
        std::allocator<long long>::allocate_at_least[abi:ne200100](&__src, v25);
      }

      *(8 * v22) = longLongValue;
      v19 = 8 * v22 + 8;
      memcpy(0, v20, v21);
      v26 = __src;
      __src = 0;
      v43 = v19;
      v44 = 0;
      if (v26)
      {
        operator delete(v26);
      }
    }

    else
    {
      *v43 = longLongValue;
      v19 = (v18 + 8);
    }

    v43 = v19;

    v27 = v52;
    if (v52 >= v51 - 1)
    {
      v28 = [v48 countByEnumeratingWithState:v49 objects:v50 count:4];
      v27 = -1;
      v51 = v28;
      v52 = -1;
    }

    if (v50[4] != *v49[2])
    {
      objc_enumerationMutation(v48);
      v27 = v52;
    }

    v52 = v27 + 1;
    ++v53;
  }

  v30 = __src;
  if (__src == v43)
  {
    v31 = 0;
    v33 = v40;
  }

  else
  {
    v31 = 0;
    v32 = __src;
    v33 = v40;
    do
    {
      v35 = *v32;
      v32 += 8;
      v34 = v35;
      v36 = v35 | v31;
      if (v31 >= v35)
      {
        v37 = v34;
      }

      else
      {
        v37 = v31;
      }

      v38 = v34 + v31;
      if (v36 >= 0)
      {
        v31 = v38;
      }

      else
      {
        v31 = v37;
      }
    }

    while (v32 != v43);
  }

  v29 = [MEMORY[0x1E696AD98] numberWithLongLong:v31];
  if (v30)
  {
    operator delete(v30);
  }

LABEL_45:

  return v29;
}

@end