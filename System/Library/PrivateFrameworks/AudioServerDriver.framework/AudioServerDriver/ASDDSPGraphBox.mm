@interface ASDDSPGraphBox
- (ASDDSPGraphBox)init;
- (ASDDSPGraphBox)initWithBox:(void *)box fromGraph:(shared_ptr<DSPGraph::Graph>)graph;
- (BOOL)getParameter:(float *)parameter forID:(unsigned int)d scope:(unsigned int)scope element:(unsigned int)element;
- (BOOL)getParameterInfo:(AudioUnitParameterInfo *)info forID:(unsigned int)d inScope:(unsigned int)scope;
- (BOOL)getParameterList:(unsigned int *)list numParameterIDs:(int64_t *)ds inScope:(unsigned int)scope;
- (BOOL)hasParameter:(unsigned int)parameter scope:(unsigned int)scope element:(unsigned int)element;
- (BOOL)setParameter:(float)parameter forID:(unsigned int)d scope:(unsigned int)scope element:(unsigned int)element bufferOffset:(int64_t)offset;
- (BOOL)startInjectingPort:(int64_t)port toFile:(id)file shouldLoop:(BOOL)loop;
- (BOOL)startRecordingPort:(int64_t)port toFile:(id)file;
- (BOOL)startRecordingPort:(int64_t)port toFile:(id)file withAudioCapturerOptions:(unint64_t)options;
- (BOOL)stopInjectingPort:(int64_t)port;
- (BOOL)stopRecordingPort:(int64_t)port;
- (NSString)name;
- (id).cxx_construct;
@end

@implementation ASDDSPGraphBox

- (ASDDSPGraphBox)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[ASDDSPGraphBox init]"];
  [v3 raise:*MEMORY[0x277CBE660] format:{@"Do not call %@", v4}];

  return 0;
}

- (ASDDSPGraphBox)initWithBox:(void *)box fromGraph:(shared_ptr<DSPGraph::Graph>)graph
{
  ptr = graph.__ptr_;
  v14.receiver = self;
  v14.super_class = ASDDSPGraphBox;
  v7 = [(ASDDSPGraphBox *)&v14 init:box];
  if (v7)
  {
    if (!box)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v7 file:@"ASDDSPGraphBox.mm" lineNumber:35 description:{@"Invalid parameter not satisfying: %@", @"box"}];
    }

    if (!*ptr)
    {
      currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:v7 file:@"ASDDSPGraphBox.mm" lineNumber:36 description:{@"Invalid parameter not satisfying: %@", @"graph"}];
    }

    v7->_box = box;
    v9 = *ptr;
    v8 = *(ptr + 1);
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    cntrl = v7->_graph.__cntrl_;
    v7->_graph.__ptr_ = v9;
    v7->_graph.__cntrl_ = v8;
    if (cntrl)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
    }
  }

  return v7;
}

- (BOOL)startRecordingPort:(int64_t)port toFile:(id)file
{
  v15 = *MEMORY[0x277D85DE8];
  fileCopy = file;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __44__ASDDSPGraphBox_startRecordingPort_toFile___block_invoke;
  v9[3] = &unk_278CE3B48;
  v9[4] = self;
  v10 = fileCopy;
  portCopy = port;
  v12 = &unk_2853444C8;
  v13 = 0;
  v14 = &v12;
  v7 = fileCopy;
  LOBYTE(self) = ASDDSP::exceptionBarrier<BOOL({block_pointer} {__strong})(void)>(v9);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](&v12);

  return self;
}

- (BOOL)startRecordingPort:(int64_t)port toFile:(id)file withAudioCapturerOptions:(unint64_t)options
{
  v18 = *MEMORY[0x277D85DE8];
  fileCopy = file;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __69__ASDDSPGraphBox_startRecordingPort_toFile_withAudioCapturerOptions___block_invoke;
  v11[3] = &unk_278CE3EF0;
  v11[4] = self;
  v12 = fileCopy;
  portCopy = port;
  optionsCopy = options;
  v15 = &unk_2853444C8;
  v16 = 0;
  v17 = &v15;
  v9 = fileCopy;
  LOBYTE(port) = ASDDSP::exceptionBarrier<BOOL({block_pointer} {__strong})(void)>(v11);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](&v15);

  return port;
}

- (BOOL)stopRecordingPort:(int64_t)port
{
  v9 = *MEMORY[0x277D85DE8];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __36__ASDDSPGraphBox_stopRecordingPort___block_invoke;
  v5[3] = &unk_278CE3F18;
  v5[4] = self;
  v5[5] = port;
  v6 = &unk_2853444C8;
  v7 = 0;
  v8 = &v6;
  v3 = ASDDSP::exceptionBarrier<BOOL({block_pointer} {__strong})(void)>(v5);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](&v6);
  return v3;
}

- (BOOL)startInjectingPort:(int64_t)port toFile:(id)file shouldLoop:(BOOL)loop
{
  v18 = *MEMORY[0x277D85DE8];
  fileCopy = file;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __55__ASDDSPGraphBox_startInjectingPort_toFile_shouldLoop___block_invoke;
  v11[3] = &unk_278CE3F40;
  v11[4] = self;
  v12 = fileCopy;
  portCopy = port;
  loopCopy = loop;
  v15 = &unk_2853444C8;
  v16 = 0;
  v17 = &v15;
  v9 = fileCopy;
  LOBYTE(port) = ASDDSP::exceptionBarrier<BOOL({block_pointer} {__strong})(void)>(v11);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](&v15);

  return port;
}

- (BOOL)stopInjectingPort:(int64_t)port
{
  v9 = *MEMORY[0x277D85DE8];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __36__ASDDSPGraphBox_stopInjectingPort___block_invoke;
  v5[3] = &unk_278CE3F18;
  v5[4] = self;
  v5[5] = port;
  v6 = &unk_2853444C8;
  v7 = 0;
  v8 = &v6;
  v3 = ASDDSP::exceptionBarrier<BOOL({block_pointer} {__strong})(void)>(v5);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](&v6);
  return v3;
}

- (NSString)name
{
  box = self->_box;
  v3 = box + 32;
  if (box[55] < 0)
  {
    v3 = *v3;
  }

  return [MEMORY[0x277CCACA8] stringWithUTF8String:v3];
}

- (BOOL)getParameterList:(unsigned int *)list numParameterIDs:(int64_t *)ds inScope:(unsigned int)scope
{
  v12 = *MEMORY[0x277D85DE8];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__ASDDSPGraphBox_getParameterList_numParameterIDs_inScope___block_invoke;
  v7[3] = &unk_278CE3B70;
  scopeCopy = scope;
  v7[4] = self;
  v7[5] = ds;
  v7[6] = list;
  v9 = &unk_2853444C8;
  v10 = 0;
  v11 = &v9;
  v5 = ASDDSP::exceptionBarrier<BOOL({block_pointer} {__strong})(void)>(v7);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](&v9);
  return v5;
}

uint64_t __59__ASDDSPGraphBox_getParameterList_numParameterIDs_inScope___block_invoke(uint64_t a1)
{
  (*(**(*(a1 + 32) + 8) + 96))(&v7);
  v2 = v7;
  v3 = v8;
  v4 = v8 - v7;
  v5 = *(a1 + 48);
  **(a1 + 40) = (v8 - v7) >> 2;
  if (v5 && v3 != v2)
  {
    memmove(v5, v2, v4);
    v2 = v7;
  }

  if (v2)
  {
    v8 = v2;
    operator delete(v2);
  }

  return 1;
}

- (BOOL)getParameterInfo:(AudioUnitParameterInfo *)info forID:(unsigned int)d inScope:(unsigned int)scope
{
  v13 = *MEMORY[0x277D85DE8];
  (*(*self->_box + 104))(v10);
  result = v12;
  if (v12)
  {
    v7 = v10[5];
    *&info->clumpID = v10[4];
    *&info->unit = v7;
    *&info->flags = v11;
    v8 = v10[1];
    *info->name = v10[0];
    *&info->name[16] = v8;
    v9 = v10[3];
    *&info->name[32] = v10[2];
    *&info->name[48] = v9;
  }

  return result;
}

- (BOOL)getParameter:(float *)parameter forID:(unsigned int)d scope:(unsigned int)scope element:(unsigned int)element
{
  v15 = *MEMORY[0x277D85DE8];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __51__ASDDSPGraphBox_getParameter_forID_scope_element___block_invoke;
  v8[3] = &unk_278CE3B70;
  v8[4] = self;
  v8[5] = parameter;
  dCopy = d;
  scopeCopy = scope;
  elementCopy = element;
  v12 = &unk_2853444C8;
  v13 = 0;
  v14 = &v12;
  v6 = ASDDSP::exceptionBarrier<BOOL({block_pointer} {__strong})(void)>(v8);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](&v12);
  return v6;
}

- (BOOL)hasParameter:(unsigned int)parameter scope:(unsigned int)scope element:(unsigned int)element
{
  v13 = *MEMORY[0x277D85DE8];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__ASDDSPGraphBox_hasParameter_scope_element___block_invoke;
  v7[3] = &unk_278CE3F18;
  v7[4] = self;
  scopeCopy = scope;
  parameterCopy = parameter;
  v10 = &unk_2853444C8;
  v11 = 0;
  v12 = &v10;
  v5 = ASDDSP::exceptionBarrier<BOOL({block_pointer} {__strong})(void)>(v7);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](&v10);
  return v5;
}

BOOL __45__ASDDSPGraphBox_hasParameter_scope_element___block_invoke(uint64_t a1)
{
  (*(**(*(a1 + 32) + 8) + 96))(&v5);
  v2 = v6;
  v3 = v5;
  if (v5 != v6)
  {
    v3 = v5;
    while (*v3 != *(a1 + 44))
    {
      if (++v3 == v6)
      {
        v3 = v6;
        break;
      }
    }
  }

  if (v5)
  {
    v6 = v5;
    operator delete(v5);
  }

  return v3 != v2;
}

- (BOOL)setParameter:(float)parameter forID:(unsigned int)d scope:(unsigned int)scope element:(unsigned int)element bufferOffset:(int64_t)offset
{
  v17 = *MEMORY[0x277D85DE8];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __64__ASDDSPGraphBox_setParameter_forID_scope_element_bufferOffset___block_invoke;
  v9[3] = &unk_278CE3F68;
  dCopy = d;
  scopeCopy = scope;
  elementCopy = element;
  parameterCopy = parameter;
  v9[4] = self;
  v9[5] = offset;
  v14 = &unk_2853444C8;
  v15 = 0;
  v16 = &v14;
  v7 = ASDDSP::exceptionBarrier<BOOL({block_pointer} {__strong})(void)>(v9);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](&v14);
  return v7;
}

- (id).cxx_construct
{
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

@end