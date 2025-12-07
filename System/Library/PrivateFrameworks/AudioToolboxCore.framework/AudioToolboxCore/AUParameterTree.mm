@interface AUParameterTree
+ (AUParameter)createParameterWithIdentifier:(NSString *)identifier name:(NSString *)name address:(AUParameterAddress)address min:(AUValue)min max:(AUValue)max unit:(AudioUnitParameterUnit)unit unitName:(NSString *)unitName flags:(AudioUnitParameterOptions)flags valueStrings:(NSArray *)valueStrings dependentParameters:(NSArray *)dependentParameters;
+ (AUParameterGroup)createGroupFromTemplate:(AUParameterGroup *)templateGroup identifier:(NSString *)identifier name:(NSString *)name addressOffset:(AUParameterAddress)addressOffset;
+ (AUParameterGroup)createGroupTemplate:(NSArray *)children;
+ (AUParameterGroup)createGroupWithIdentifier:(NSString *)identifier name:(NSString *)name children:(NSArray *)children;
+ (AUParameterTree)createTreeWithChildren:(NSArray *)children;
- (AUAudioUnit_XH)_auXH;
- (AUParameter)parameterWithAddress:(AUParameterAddress)address;
- (AUParameter)parameterWithID:(AudioUnitParameterID)paramID scope:(AudioUnitScope)scope element:(AudioUnitElement)element;
- (AUParameterTree)initWithChildren:(id)children;
- (AUParameterTree)initWithCoder:(id)coder;
- (NSXPCConnection)remoteParameterSynchronizerXPCConnection;
- (id).cxx_construct;
- (vector<AddressToParameter,)addrToParamIndex;
- (void)_checkInitTreeObservation;
- (void)_init2;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)remoteSyncParameter:(unint64_t)parameter value:(float)value extOriginator:(unint64_t)originator hostTime:(unint64_t)time eventType:(unsigned int)type;
- (void)setAddrToParamIndex:()vector<AddressToParameter;
@end

@implementation AUParameterTree

- (id).cxx_construct
{
  *(self + 13) = 0;
  *(self + 14) = 0;
  *(self + 23) = 0;
  *(self + 24) = 0;
  *(self + 22) = 0;
  return self;
}

- (NSXPCConnection)remoteParameterSynchronizerXPCConnection
{
  WeakRetained = objc_loadWeakRetained(&self->_remoteParameterSynchronizerXPCConnection);

  return WeakRetained;
}

- (AUAudioUnit_XH)_auXH
{
  WeakRetained = objc_loadWeakRetained(&self->__auXH);

  return WeakRetained;
}

- (void)setAddrToParamIndex:()vector<AddressToParameter
{
  p_addrToParamIndex = &self->_addrToParamIndex;
  if (&self->_addrToParamIndex != a3)
  {
    end = a3->__end_;
    v5 = end - a3->__begin_;
    cap = self->_addrToParamIndex.__cap_;
    v7 = *p_addrToParamIndex;
    if (cap - *p_addrToParamIndex < v5)
    {
      v8 = v5 >> 4;
      if (v7)
      {
        v9 = self->_addrToParamIndex.__end_;
        v10 = *p_addrToParamIndex;
        if (v9 != v7)
        {
          do
          {
            v11 = (v9 - 16);
            objc_destroyWeak(v9 - 1);
            v9 = v11;
          }

          while (v11 != v7);
          v10 = *p_addrToParamIndex;
        }

        p_addrToParamIndex[1] = v7;
        operator delete(v10);
        cap = 0;
        *p_addrToParamIndex = 0;
        p_addrToParamIndex[1] = 0;
        p_addrToParamIndex[2] = 0;
      }

      if (!(v8 >> 60))
      {
        v12 = cap >> 3;
        if (cap >> 3 <= v8)
        {
          v12 = v8;
        }

        if (cap >= 0x7FFFFFFFFFFFFFF0)
        {
          v13 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v13 = v12;
        }

        std::vector<AddressToParameter>::__vallocate[abi:ne200100](p_addrToParamIndex, v13);
      }

      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
    }

    v14 = self->_addrToParamIndex.__end_ - v7;
    if (v14 >= v5)
    {
      std::__copy_impl::operator()[abi:ne200100]<AddressToParameter *,AddressToParameter *,AddressToParameter *>(a3->__begin_, a3->__end_, *p_addrToParamIndex);
      v22 = v21;
      v23 = p_addrToParamIndex[1];
      if (v23 != v21)
      {
        do
        {
          v24 = v23 - 16;
          objc_destroyWeak((v23 - 8));
          v23 = v24;
        }

        while (v24 != v22);
      }

      p_addrToParamIndex[1] = v22;
    }

    else
    {
      v15 = std::__copy_impl::operator()[abi:ne200100]<AddressToParameter *,AddressToParameter *,AddressToParameter *>(a3->__begin_, (a3->__begin_ + v14), *p_addrToParamIndex);
      v16 = p_addrToParamIndex[1];
      if (end != v15)
      {
        v17 = v15;
        v18 = v15;
        v19 = p_addrToParamIndex[1];
        do
        {
          v20 = *v18;
          v18 += 2;
          *v19 = v20;
          v19 += 2;
          objc_copyWeak(v16 + 1, v17 + 1);
          v17 = v18;
          v16 = v19;
        }

        while (v18 != end);
        v16 = v19;
      }

      p_addrToParamIndex[1] = v16;
    }
  }
}

- (vector<AddressToParameter,)addrToParamIndex
{
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  retstr->__begin_ = 0;
  end = self[7].__end_;
  cap = self[7].__cap_;
  if (cap != end)
  {
    std::vector<AddressToParameter>::__vallocate[abi:ne200100](retstr, (cap - end) >> 4);
  }

  return self;
}

- (void)remoteSyncParameter:(unint64_t)parameter value:(float)value extOriginator:(unint64_t)originator hostTime:(unint64_t)time eventType:(unsigned int)type
{
  v7 = *&type;
  originatorCopy = originator;
  v12 = [(AUParameterTree *)self parameterWithAddress:parameter];
  if (v12)
  {
    *&v11 = value;
    [v12 setValue:originatorCopy & 0xFFFFFFFE | 1 extOriginator:time atHostTime:v7 eventType:v11];
  }
}

- (AUParameterTree)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = AUParameterTree;
  v5 = [(AUParameterGroup *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    -[AUParameterTree set_autoCreatedForV2AU:](v5, "set_autoCreatedForV2AU:", [coderCopy decodeIntForKey:@"autov2"]);
    [(AUParameterTree *)v5 _init2];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5.receiver = self;
  v5.super_class = AUParameterTree;
  [(AUParameterGroup *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInt:-[AUParameterTree _autoCreatedForV2AU](self forKey:{"_autoCreatedForV2AU"), @"autov2"}];
}

- (void)_checkInitTreeObservation
{
  if (!self->_observerController.__ptr_)
  {
    selfCopy = self;
    operator new();
  }
}

- (AUParameter)parameterWithID:(AudioUnitParameterID)paramID scope:(AudioUnitScope)scope element:(AudioUnitElement)element
{
  if (self->__autoCreatedForV2AU)
  {
    paramID = [(AUParameterTree *)self parameterWithAddress:(*&scope << 61) | ((element & 0x1FFFFFFF) << 32) | paramID];
  }

  else
  {
    paramID = 0;
  }

  return paramID;
}

- (AUParameter)parameterWithAddress:(AUParameterAddress)address
{
  begin = self->_addrToParamIndex.__begin_;
  end = self->_addrToParamIndex.__end_;
  if (end == begin)
  {
    WeakRetained = 0;
  }

  else
  {
    v6 = (end - begin) >> 4;
    do
    {
      v7 = v6 >> 1;
      v8 = (begin + 16 * (v6 >> 1));
      v10 = *v8;
      v9 = (v8 + 2);
      v6 += ~(v6 >> 1);
      if (v10 < address)
      {
        begin = v9;
      }

      else
      {
        v6 = v7;
      }
    }

    while (v6);
    if (begin == end || *begin != address)
    {
      WeakRetained = 0;
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(begin + 1);
    }
  }

  return WeakRetained;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = AUParameterTree;
  [(AUParameterGroup *)&v2 dealloc];
}

- (AUParameterTree)initWithChildren:(id)children
{
  childrenCopy = children;
  v8.receiver = self;
  v8.super_class = AUParameterTree;
  v5 = [(AUParameterGroup *)&v8 initWithID:&stru_1F0340B48 name:&stru_1F0340B48 children:childrenCopy];
  v6 = v5;
  if (v5)
  {
    [(AUParameterTree *)v5 _init2];
  }

  return v6;
}

- (void)_init2
{
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __25__AUParameterTree__init2__block_invoke;
  v20[3] = &unk_1E72C1340;
  v20[4] = self;
  [(AUParameterNode *)self _walkTree:0 callback:v20];
  p_addrToParamIndex = &self->_addrToParamIndex;
  begin = self->_addrToParamIndex.__begin_;
  end = self->_addrToParamIndex.__end_;
  v6 = 126 - 2 * __clz((end - begin) >> 4);
  if (end == begin)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,AddressToParameter *,false>(begin, end, v7, 1);
  v8 = p_addrToParamIndex->__begin_;
  v9 = self->_addrToParamIndex.__end_;
  if (p_addrToParamIndex->__begin_ != v9)
  {
    v10 = -1;
    do
    {
      v11 = *v8;
      if (*v8 == v10)
      {
        v16 = MEMORY[0x1E695DF30];
        v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"2 or more parameters share the same address: 0x%llx", v10];
        v18 = [v16 exceptionWithName:@"AUInvalidNodeInfoException" reason:v17 userInfo:0];
        v19 = v18;

        objc_exception_throw(v18);
      }

      v8 = (v8 + 16);
      v10 = v11;
    }

    while (v8 != v9);
  }

  v12 = dispatch_queue_create("AUParameterTree.observationQueue", 0);
  observationQueue = self->_observationQueue;
  self->_observationQueue = v12;

  v14 = dispatch_queue_create("AUParameterTree.valueAccessQueue", 0);
  valueAccessQueue = self->_valueAccessQueue;
  self->_valueAccessQueue = v14;

  dispatch_queue_set_specific(self->_valueAccessQueue, &current_queue_key, self->_valueAccessQueue, 0);
}

void __25__AUParameterTree__init2__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (([v4 isGroup] & 1) == 0)
  {
    v5 = v4;
    v25 = [v5 address];
    objc_initWeak(&v26, v5);
    v6 = (*(a1 + 32) + 176);
    v7 = v6[1];
    v8 = v6[2];
    if (v7 >= v8)
    {
      v10 = (v7 - *v6) >> 4;
      v11 = v10 + 1;
      if ((v10 + 1) >> 60)
      {
        std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
      }

      v12 = v8 - *v6;
      if (v12 >> 3 > v11)
      {
        v11 = v12 >> 3;
      }

      if (v12 >= 0x7FFFFFFFFFFFFFF0)
      {
        v13 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = v11;
      }

      if (v13)
      {
        std::allocator<AddressToParameter>::allocate_at_least[abi:ne200100](v13);
      }

      v14 = 16 * v10;
      *v14 = v25;
      v9 = 16 * v10 + 16;
      objc_copyWeak((v14 + 8), &v26);
      v24 = (v14 + 16);
      v16 = *v6;
      v15 = v6[1];
      v17 = (v14 + *v6 - v15);
      if (v15 != *v6)
      {
        v18 = *v6;
        v19 = v17;
        v20 = *v6;
        v21 = v17;
        do
        {
          v22 = *v20;
          v20 += 2;
          *v21 = v22;
          v21 += 2;
          objc_moveWeak(v19 + 1, v18 + 1);
          v18 = v20;
          v19 = v21;
        }

        while (v20 != v15);
        do
        {
          objc_destroyWeak(v16 + 1);
          v16 += 2;
        }

        while (v16 != v15);
      }

      v23 = *v6;
      *v6 = v17;
      *(v6 + 1) = v24;
      if (v23)
      {
        operator delete(v23);
      }
    }

    else
    {
      *v7 = v25;
      v9 = v7 + 16;
      objc_copyWeak((v7 + 8), &v26);
    }

    v6[1] = v9;
    objc_destroyWeak(&v26);
  }
}

+ (AUParameterTree)createTreeWithChildren:(NSArray *)children
{
  v3 = children;
  v4 = [[AUParameterTree alloc] initWithChildren:v3];

  return v4;
}

+ (AUParameterGroup)createGroupFromTemplate:(AUParameterGroup *)templateGroup identifier:(NSString *)identifier name:(NSString *)name addressOffset:(AUParameterAddress)addressOffset
{
  v9 = templateGroup;
  v10 = identifier;
  v11 = name;
  v12 = [[AUParameterGroup alloc] initWithTemplate:v9 identifier:v10 name:v11 addressOffset:addressOffset];

  return v12;
}

+ (AUParameterGroup)createGroupTemplate:(NSArray *)children
{
  v3 = children;
  v4 = [[AUParameterGroup alloc] initWithChildren:v3];

  return v4;
}

+ (AUParameterGroup)createGroupWithIdentifier:(NSString *)identifier name:(NSString *)name children:(NSArray *)children
{
  v7 = identifier;
  v8 = name;
  v9 = children;
  v10 = [[AUParameterGroup alloc] initWithID:v7 name:v8 children:v9];

  return v10;
}

+ (AUParameter)createParameterWithIdentifier:(NSString *)identifier name:(NSString *)name address:(AUParameterAddress)address min:(AUValue)min max:(AUValue)max unit:(AudioUnitParameterUnit)unit unitName:(NSString *)unitName flags:(AudioUnitParameterOptions)flags valueStrings:(NSArray *)valueStrings dependentParameters:(NSArray *)dependentParameters
{
  v12 = *&flags;
  v14 = *&unit;
  v19 = identifier;
  v20 = name;
  v21 = unitName;
  v22 = valueStrings;
  v23 = dependentParameters;
  v24 = [AUParameter alloc];
  *&v25 = min;
  *&v26 = max;
  v27 = [(AUParameter *)v24 initWithID:v19 name:v20 address:address min:v14 max:v21 unit:v12 unitName:v25 flags:v26 valueStrings:v22 dependentParameters:v23];

  return v27;
}

@end