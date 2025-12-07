@interface ABPKSkeletonDefinition
+ (id)computeParentChildOrderFor:(const void *)for withRoot:(int64_t)root;
- (ABPKSkeletonDefinition)init;
- (ABPKSkeletonDefinition)initWithPlist:(id)plist fromBundle:(id)bundle;
- (ABPKSkeletonDefinition)initWithType:(int64_t)type;
- (id).cxx_construct;
- (id)getChildrenIndices:(int64_t)indices;
- (id)jointName:(int64_t)name;
- (int64_t)indexOfJointWithName:(id)name;
- (int64_t)parentJoint:(int64_t)joint;
- (void)enumerateChildrenJointIndicesOfJointAtIndex:(int64_t)index withBlock:(id)block;
@end

@implementation ABPKSkeletonDefinition

- (ABPKSkeletonDefinition)init
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [(ABPKSkeletonDefinition *)self initWithPlist:@"ABPKDetection2dSkeletonDefinition.plist" fromBundle:v3];

  return v4;
}

- (ABPKSkeletonDefinition)initWithType:(int64_t)type
{
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = v5;
  if (type >= 5)
  {
    v7 = __ABPKLogSharedInstance(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_impl(&dword_23EDDC000, v7, OS_LOG_TYPE_ERROR, " ERROR: Unknown ABPKSkeletonType in ABPKSkeletonDefinition:initWithType. ", v9, 2u);
    }
  }

  else
  {
    self = [(ABPKSkeletonDefinition *)self initWithPlist:off_278C718E0[type] fromBundle:v5];
  }

  return self;
}

- (ABPKSkeletonDefinition)initWithPlist:(id)plist fromBundle:(id)bundle
{
  v49 = *MEMORY[0x277D85DE8];
  plistCopy = plist;
  bundleCopy = bundle;
  v47.receiver = self;
  v47.super_class = ABPKSkeletonDefinition;
  v8 = [(ABPKSkeletonDefinition *)&v47 init];
  if (v8)
  {
    v9 = [bundleCopy pathForResource:plistCopy ofType:0];
    if (!v9)
    {
      v11 = __ABPKLogSharedInstance(0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = plistCopy;
        _os_log_impl(&dword_23EDDC000, v11, OS_LOG_TYPE_DEFAULT, " Could not find path for resource %@. ", buf, 0xCu);
      }

      v20 = 0;
      goto LABEL_44;
    }

    v10 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v9];
    v11 = v10;
    if (!v10)
    {
      v21 = __ABPKLogSharedInstance(0);
      obj = v21;
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = v9;
        _os_log_impl(&dword_23EDDC000, v21, OS_LOG_TYPE_ERROR, " Failed to init dictionary from plist at path %@. ", buf, 0xCu);
      }

      v20 = 0;
      goto LABEL_43;
    }

    obj = [v10 objectForKey:@"JointNames"];
    if (!obj)
    {
      v12 = __ABPKLogSharedInstance(0);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_23EDDC000, v12, OS_LOG_TYPE_ERROR, " Dictionary has not key 'JointNames' ", buf, 2u);
      }

      v20 = 0;
      goto LABEL_42;
    }

    v12 = [v11 objectForKey:@"ParentIndices"];
    if (v12)
    {
      v13 = [obj count];
      v14 = [v12 count];
      if (v13 == v14)
      {
        objc_storeStrong(&v8->_jointNames, obj);
        _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE7reserveEm(&v8->_jointParentIndicesVector.__begin_, [v12 count]);
        for (i = 0; ; i = v46 + 1)
        {
          v46 = i;
          v16 = [v12 count];
          if (i >= v16)
          {
            break;
          }

          v17 = [v12 objectAtIndexedSubscript:v46];
          integerValue = [v17 integerValue];

          v45 = integerValue;
          std::vector<long>::push_back[abi:ne200100](&v8->_jointParentIndicesVector.__begin_, &v45);
          if (v45 != -1)
          {
            *buf = &v45;
            v19 = std::__tree<std::__value_type<long,std::vector<long>>,std::__map_value_compare<long,std::__value_type<long,std::vector<long>>,std::less<long>,true>,std::allocator<std::__value_type<long,std::vector<long>>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>(&v8->_parentsToChildIndicesMap, &v45, &std::piecewise_construct, buf);
            std::vector<long>::push_back[abi:ne200100](v19 + 5, &v46);
          }
        }

        begin = v8->_jointParentIndicesVector.__begin_;
        end = v8->_jointParentIndicesVector.__end_;
        v28 = end - begin;
        if (end == begin)
        {
          v31 = -1;
LABEL_40:
          v8->_rootJointIndex = v31;
          v34 = [ABPKSkeletonDefinition computeParentChildOrderFor:&v8->_jointParentIndicesVector withRoot:?];
          parentChildOrder = v8->_parentChildOrder;
          v8->_parentChildOrder = v34;

          v36 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{-[ABPKSkeletonDefinition jointCount](v8, "jointCount")}];
          jointNames = v8->_jointNames;
          v43[0] = MEMORY[0x277D85DD0];
          v43[1] = 3221225472;
          v43[2] = __51__ABPKSkeletonDefinition_initWithPlist_fromBundle___block_invoke;
          v43[3] = &unk_278C718C0;
          v22 = v36;
          v44 = v22;
          [(NSArray *)jointNames enumerateObjectsUsingBlock:v43];
          v38 = [v22 copy];
          jointNamesToIndices = v8->_jointNamesToIndices;
          v8->_jointNamesToIndices = v38;

          v20 = v8;
          goto LABEL_41;
        }

        v29 = 0;
        v30 = v28 >> 3;
        if (v30 <= 1)
        {
          v30 = 1;
        }

        v31 = -1;
        while (1)
        {
          v32 = begin[v29];
          if (v32 < 0)
          {
            if (v32 != -1)
            {
              v22 = __ABPKLogSharedInstance(v16);
              if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_28;
              }

              *buf = 134217984;
              *&buf[4] = v32;
              v23 = " Found parent index (%ld) < -1. ";
              v24 = v22;
              v25 = 12;
              goto LABEL_27;
            }

            v33 = v31 == -1;
            v31 = v29;
            if (!v33)
            {
              break;
            }
          }

          if (v30 == ++v29)
          {
            goto LABEL_40;
          }
        }

        v22 = __ABPKLogSharedInstance(v16);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          v23 = " Found multiple joints without parent joint. ";
          goto LABEL_26;
        }

LABEL_28:
        v20 = 0;
LABEL_41:

LABEL_42:
LABEL_43:

LABEL_44:
        goto LABEL_45;
      }

      v22 = __ABPKLogSharedInstance(v14);
      if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_28;
      }

      *buf = 0;
      v23 = " Mismatch in nr of elements between JointNames and ParentIndices. ";
    }

    else
    {
      v22 = __ABPKLogSharedInstance(0);
      if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_28;
      }

      *buf = 0;
      v23 = " Dictionary has not key 'ParentIndices' ";
    }

LABEL_26:
    v24 = v22;
    v25 = 2;
LABEL_27:
    _os_log_impl(&dword_23EDDC000, v24, OS_LOG_TYPE_ERROR, v23, buf, v25);
    goto LABEL_28;
  }

  v20 = 0;
LABEL_45:

  return v20;
}

void __51__ABPKSkeletonDefinition_initWithPlist_fromBundle___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a2;
  v5 = *(a1 + 32);
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  [v5 setValue:v6 forKey:v7];
}

- (id)jointName:(int64_t)name
{
  if (name < 0)
  {
    v6 = 0;
  }

  else
  {
    if ([(NSArray *)self->_jointNames count]<= name)
    {
      v6 = 0;
    }

    else
    {
      v6 = [(NSArray *)self->_jointNames objectAtIndex:name];
    }
  }

  return v6;
}

- (int64_t)indexOfJointWithName:(id)name
{
  v3 = [(NSDictionary *)self->_jointNamesToIndices objectForKey:name];
  v4 = v3;
  if (v3)
  {
    integerValue = [v3 integerValue];
  }

  else
  {
    integerValue = -1;
  }

  return integerValue;
}

- (int64_t)parentJoint:(int64_t)joint
{
  if (joint < 0)
  {
    return -1;
  }

  begin = self->_jointParentIndicesVector.__begin_;
  if (joint >= (self->_jointParentIndicesVector.__end_ - begin))
  {
    return -1;
  }

  else
  {
    return begin[joint];
  }
}

- (id)getChildrenIndices:(int64_t)indices
{
  indicesCopy = indices;
  if (indices < 0 || indices >= (self->_jointParentIndicesVector.__end_ - self->_jointParentIndicesVector.__begin_))
  {
    v8 = objc_opt_new();
  }

  else
  {
    v11 = &indicesCopy;
    v3 = std::__tree<std::__value_type<long,std::vector<long>>,std::__map_value_compare<long,std::__value_type<long,std::vector<long>>,std::less<long>,true>,std::allocator<std::__value_type<long,std::vector<long>>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>(&self->_parentsToChildIndicesMap, &indicesCopy, &std::piecewise_construct, &v11);
    v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:(v3[6] - v3[5]) >> 3];
    v5 = v3[5];
    if (v3[6] != v5)
    {
      v6 = 0;
      do
      {
        v7 = [MEMORY[0x277CCABB0] numberWithLong:*(v5 + 8 * v6)];
        [v4 addObject:v7];

        ++v6;
        v5 = v3[5];
      }

      while (v6 < (v3[6] - v5) >> 3);
    }

    v8 = [v4 copy];
  }

  return v8;
}

- (void)enumerateChildrenJointIndicesOfJointAtIndex:(int64_t)index withBlock:(id)block
{
  indexCopy = index;
  blockCopy = block;
  if ((index & 0x8000000000000000) == 0 && index < (self->_jointParentIndicesVector.__end_ - self->_jointParentIndicesVector.__begin_))
  {
    v11 = &indexCopy;
    v7 = std::__tree<std::__value_type<long,std::vector<long>>,std::__map_value_compare<long,std::__value_type<long,std::vector<long>>,std::less<long>,true>,std::allocator<std::__value_type<long,std::vector<long>>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>(&self->_parentsToChildIndicesMap, &indexCopy, &std::piecewise_construct, &v11);
    v8 = v7[5];
    for (i = v7[6]; v8 != i; ++v8)
    {
      blockCopy[2](blockCopy, *v8);
    }
  }
}

+ (id)computeParentChildOrderFor:(const void *)for withRoot:(int64_t)root
{
  v6 = (*(for + 1) - *for) >> 3;
  LODWORD(v45) = -1;
  std::vector<int>::vector[abi:ne200100](&v48, v6, &v45);
  v7 = v48;
  v48[root] = 0;
  v45 = 0;
  v46 = 0;
  v47 = 0;
  v44 = 0;
  v8 = *for;
  if (*(for + 1) == *for)
  {
    v41 = 0;
    v42 = 0;
    v20 = 1;
    v43 = 0;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    do
    {
      v44 = v11;
      v12 = v7[v11];
      if (v12 < 0)
      {
        do
        {
          std::vector<long>::push_back[abi:ne200100](&v45, &v44);
          v8 = *for;
          v44 = *(*for + 8 * v44);
          v7 = v48;
          v12 = v48[v44];
        }

        while (v12 < 0);
        v10 = v45;
        v9 = v46;
      }

      if (v9 != v10)
      {
        v13 = v12 + 1;
        do
        {
          v14 = *(v9 - 1);
          v9 -= 8;
          v44 = v14;
          v7[v14] = v13++;
        }

        while (v9 != v10);
        v46 = v9;
      }

      ++v11;
      v15 = *(for + 1);
    }

    while (v11 < (v15 - v8) >> 3);
    v41 = 0;
    v42 = 0;
    v43 = 0;
    if (v15 == v8)
    {
      v20 = 1;
    }

    else
    {
      v16 = 0;
      v17 = 0;
      v18 = 0;
      do
      {
        v19 = v48[v18];
        if (v19 + 1 > ((v17 - v16) >> 2))
        {
          do
          {
            LODWORD(v40.__begin_) = 0;
            std::vector<int>::push_back[abi:ne200100](&v41, &v40);
            v16 = v41;
            v17 = v42;
          }

          while (v19 + 1 > ((v42 - v41) >> 2));
          v8 = *for;
          v15 = *(for + 1);
        }

        ++v16[v19];
        ++v18;
      }

      while (v18 < (v15 - v8) >> 3);
      v20 = ((v17 - v16) >> 2) + 1;
    }
  }

  memset(&v40, 0, sizeof(v40));
  std::vector<int>::reserve(&v40, v20);
  LODWORD(__p) = 0;
  std::vector<int>::push_back[abi:ne200100](&v40.__begin_, &__p);
  v21 = v41;
  v22 = v42;
  while (v21 != v22)
  {
    LODWORD(__p) = *(v40.__end_ - 1) + *v21;
    std::vector<int>::push_back[abi:ne200100](&v40.__begin_, &__p);
    ++v21;
  }

  v23 = (*(for + 1) - *for) >> 3;
  v37 = -1;
  std::vector<int>::vector[abi:ne200100](&__p, v23, &v37);
  v24 = v48;
  v25 = __p;
  if (v49 != v48)
  {
    v26 = 0;
    v27 = v49 - v48;
    begin = v40.__begin_;
    if (v27 <= 1)
    {
      v27 = 1;
    }

    do
    {
      v29 = v24[v26];
      v30 = begin[v29];
      begin[v29] = v30 + 1;
      v25[v30] = v26++;
    }

    while (v27 != v26);
  }

  v31 = [MEMORY[0x277CBEB18] arrayWithCapacity:(v39 - v25) >> 2];
  v32 = __p;
  if (v39 != __p)
  {
    v33 = 0;
    do
    {
      v34 = [MEMORY[0x277CCABB0] numberWithInt:v32[v33]];
      [v31 addObject:v34];

      ++v33;
      v32 = __p;
    }

    while (v33 < (v39 - __p) >> 2);
  }

  v35 = [v31 copy];

  if (__p)
  {
    v39 = __p;
    operator delete(__p);
  }

  if (v40.__begin_)
  {
    v40.__end_ = v40.__begin_;
    operator delete(v40.__begin_);
  }

  if (v41)
  {
    v42 = v41;
    operator delete(v41);
  }

  if (v45)
  {
    v46 = v45;
    operator delete(v45);
  }

  if (v48)
  {
    v49 = v48;
    operator delete(v48);
  }

  return v35;
}

- (id).cxx_construct
{
  *(self + 2) = 0;
  *(self + 3) = 0;
  *(self + 7) = 0;
  *(self + 6) = 0;
  *(self + 4) = 0;
  *(self + 5) = self + 48;
  return self;
}

@end