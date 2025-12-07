@interface ASDDSPGraph
- (ASDDSPGraph)init;
- (ASDDSPGraph)initWithDSPGraph:(shared_ptr<DSPGraph::Graph>)graph;
- (BOOL)configure;
- (BOOL)configured;
- (BOOL)getParameter:(float *)parameter forID:(unsigned int)d;
- (BOOL)getProperty:(void *)property withSize:(unsigned int *)size forID:(unsigned int)d;
- (BOOL)getPropertySize:(unsigned int *)size isWritable:(BOOL *)writable forID:(unsigned int)d;
- (BOOL)hasParameter:(unsigned int)parameter;
- (BOOL)initialize;
- (BOOL)initialized;
- (BOOL)reset;
- (BOOL)setAUStrip:(id)strip;
- (BOOL)setParameter:(float)parameter forID:(unsigned int)d;
- (BOOL)setProperty:(const void *)property withSize:(unsigned int)size forID:(unsigned int)d;
- (BOOL)setPropertyStrip:(id)strip;
- (BOOL)setVariableSliceDuration:(int64_t)duration forSampleRate:(int64_t)rate;
- (BOOL)unconfigure;
- (BOOL)uninitialize;
- (NSSet)boxes;
- (NSSet)inputs;
- (NSSet)outputs;
- (NSString)name;
- (id).cxx_construct;
- (id)boxWithName:(id)name;
- (int64_t)sliceDurationInSamples;
- (shared_ptr<DSPGraph::Graph>)graph;
- (unint64_t)numberOfInputs;
- (unint64_t)numberOfOutputs;
- (void)setName:(id)name;
@end

@implementation ASDDSPGraph

- (ASDDSPGraph)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[ASDDSPGraph init]"];
  [v3 raise:*MEMORY[0x277CBE660] format:{@"Do not call %@", v4}];

  return 0;
}

- (ASDDSPGraph)initWithDSPGraph:(shared_ptr<DSPGraph::Graph>)graph
{
  ptr = graph.__ptr_;
  v11.receiver = self;
  v11.super_class = ASDDSPGraph;
  v5 = [(ASDDSPGraph *)&v11 init:graph.__ptr_];
  if (v5)
  {
    v6 = *ptr;
    if (!*ptr)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v5 file:@"ASDDSPGraph.mm" lineNumber:37 description:{@"Invalid parameter not satisfying: %@", @"graph"}];

      v6 = *ptr;
    }

    v7 = *(ptr + 1);
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }

    cntrl = v5->_graph.__cntrl_;
    v5->_graph.__ptr_ = v6;
    v5->_graph.__cntrl_ = v7;
    if (cntrl)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
    }
  }

  return v5;
}

- (BOOL)setVariableSliceDuration:(int64_t)duration forSampleRate:(int64_t)rate
{
  v10 = *MEMORY[0x277D85DE8];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __54__ASDDSPGraph_setVariableSliceDuration_forSampleRate___block_invoke;
  v6[3] = &unk_278CE3A80;
  v6[4] = self;
  v6[5] = duration;
  v6[6] = rate;
  v7 = &unk_2853444C8;
  v8 = 0;
  v9 = &v7;
  v4 = ASDDSP::exceptionBarrier<BOOL({block_pointer} {__strong})(void)>(v6);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](&v7);
  return v4;
}

uint64_t __54__ASDDSPGraph_setVariableSliceDuration_forSampleRate___block_invoke(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    objc_msgSend_graph(v2, a2);
  }

  else
  {
    v4 = 0;
  }

  DSPGraph::Graph::setSliceDuration();
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  return 1;
}

- (int64_t)sliceDurationInSamples
{
  v8 = *MEMORY[0x277D85DE8];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __37__ASDDSPGraph_sliceDurationInSamples__block_invoke;
  v4[3] = &unk_278CE3AA8;
  v4[4] = self;
  v5 = &unk_285344480;
  v6 = 0;
  v7 = &v5;
  v2 = ASDDSP::exceptionBarrier<unsigned int({block_pointer} {__strong})(void)>(v4);
  std::__function::__value_func<unsigned int ()(void)>::~__value_func[abi:ne200100](&v5);
  return v2;
}

uint64_t __37__ASDDSPGraph_sliceDurationInSamples__block_invoke(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    return MEMORY[0x2B0];
  }

  objc_msgSend_graph(v2, a2);
  v3 = *(v5 + 688);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return v3;
}

- (BOOL)configured
{
  v8 = *MEMORY[0x277D85DE8];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __25__ASDDSPGraph_configured__block_invoke;
  v4[3] = &unk_278CE3AD0;
  v4[4] = self;
  v5 = &unk_2853444C8;
  v6 = 0;
  v7 = &v5;
  v2 = ASDDSP::exceptionBarrier<BOOL({block_pointer} {__strong})(void)>(v4);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](&v5);
  return v2;
}

uint64_t __25__ASDDSPGraph_configured__block_invoke(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    objc_msgSend_graph(v2, a2);
    v3 = *(v5 + 761);
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }

  else
  {
    v3 = MEMORY[0x2F9];
  }

  return v3 & 1;
}

- (BOOL)initialized
{
  v8 = *MEMORY[0x277D85DE8];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __26__ASDDSPGraph_initialized__block_invoke;
  v4[3] = &unk_278CE3AD0;
  v4[4] = self;
  v5 = &unk_2853444C8;
  v6 = 0;
  v7 = &v5;
  v2 = ASDDSP::exceptionBarrier<BOOL({block_pointer} {__strong})(void)>(v4);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](&v5);
  return v2;
}

uint64_t __26__ASDDSPGraph_initialized__block_invoke(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    objc_msgSend_graph(v2, a2);
    v3 = *(v5 + 762);
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }

  else
  {
    v3 = MEMORY[0x2FA];
  }

  return v3 & 1;
}

- (BOOL)configure
{
  v8 = *MEMORY[0x277D85DE8];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __24__ASDDSPGraph_configure__block_invoke;
  v4[3] = &unk_278CE3AD0;
  v4[4] = self;
  v5 = &unk_2853444C8;
  v6 = 0;
  v7 = &v5;
  v2 = ASDDSP::exceptionBarrier<BOOL({block_pointer} {__strong})(void)>(v4);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](&v5);
  return v2;
}

uint64_t __24__ASDDSPGraph_configure__block_invoke(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    objc_msgSend_graph(v2, a2);
    v2 = v4;
  }

  else
  {
    v5 = 0;
  }

  DSPGraph::Graph::configure(v2);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return 1;
}

- (BOOL)unconfigure
{
  v8 = *MEMORY[0x277D85DE8];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __26__ASDDSPGraph_unconfigure__block_invoke;
  v4[3] = &unk_278CE3AD0;
  v4[4] = self;
  v5 = &unk_2853444C8;
  v6 = 0;
  v7 = &v5;
  v2 = ASDDSP::exceptionBarrier<BOOL({block_pointer} {__strong})(void)>(v4);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](&v5);
  return v2;
}

uint64_t __26__ASDDSPGraph_unconfigure__block_invoke(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    objc_msgSend_graph(v2, a2);
    v2 = v4;
  }

  else
  {
    v5 = 0;
  }

  DSPGraph::Graph::unconfigure(v2);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return 1;
}

- (BOOL)initialize
{
  v8 = *MEMORY[0x277D85DE8];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __25__ASDDSPGraph_initialize__block_invoke;
  v4[3] = &unk_278CE3AD0;
  v4[4] = self;
  v5 = &unk_2853444C8;
  v6 = 0;
  v7 = &v5;
  v2 = ASDDSP::exceptionBarrier<BOOL({block_pointer} {__strong})(void)>(v4);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](&v5);
  return v2;
}

uint64_t __25__ASDDSPGraph_initialize__block_invoke(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    objc_msgSend_graph(v2, a2);
    v2 = v4;
  }

  else
  {
    v5 = 0;
  }

  DSPGraph::Graph::initialize(v2);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return 1;
}

- (BOOL)uninitialize
{
  v8 = *MEMORY[0x277D85DE8];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __27__ASDDSPGraph_uninitialize__block_invoke;
  v4[3] = &unk_278CE3AD0;
  v4[4] = self;
  v5 = &unk_2853444C8;
  v6 = 0;
  v7 = &v5;
  v2 = ASDDSP::exceptionBarrier<BOOL({block_pointer} {__strong})(void)>(v4);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](&v5);
  return v2;
}

uint64_t __27__ASDDSPGraph_uninitialize__block_invoke(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    objc_msgSend_graph(v2, a2);
    v2 = v4;
  }

  else
  {
    v5 = 0;
  }

  DSPGraph::Graph::uninitialize(v2);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return 1;
}

- (BOOL)reset
{
  v8 = *MEMORY[0x277D85DE8];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __20__ASDDSPGraph_reset__block_invoke;
  v4[3] = &unk_278CE3AD0;
  v4[4] = self;
  v5 = &unk_2853444C8;
  v6 = 0;
  v7 = &v5;
  v2 = ASDDSP::exceptionBarrier<BOOL({block_pointer} {__strong})(void)>(v4);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](&v5);
  return v2;
}

uint64_t __20__ASDDSPGraph_reset__block_invoke(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    objc_msgSend_graph(v2, a2);
    v2 = v4;
  }

  else
  {
    v5 = 0;
  }

  DSPGraph::Graph::reset(v2);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return 1;
}

- (BOOL)setAUStrip:(id)strip
{
  v13 = *MEMORY[0x277D85DE8];
  stripCopy = strip;
  v5 = stripCopy;
  if (stripCopy)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __26__ASDDSPGraph_setAUStrip___block_invoke;
    v8[3] = &unk_278CE3AF8;
    v8[4] = self;
    v9 = stripCopy;
    v10 = &unk_2853444C8;
    v11 = 0;
    v12 = &v10;
    v6 = ASDDSP::exceptionBarrier<BOOL({block_pointer} {__strong})(void)>(v8);
    std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](&v10);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ASDDSPGraph setAUStrip:];
    }

    v6 = 0;
  }

  return v6;
}

BOOL __26__ASDDSPGraph_setAUStrip___block_invoke(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    objc_msgSend_graph(v3, a2);
    v3 = v6;
  }

  else
  {
    v7 = 0;
  }

  v4 = DSPGraph::Graph::setAUStrip(v3, *(a1 + 40));
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  return v4 == 0;
}

- (BOOL)setPropertyStrip:(id)strip
{
  v13 = *MEMORY[0x277D85DE8];
  stripCopy = strip;
  v5 = stripCopy;
  if (stripCopy)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __32__ASDDSPGraph_setPropertyStrip___block_invoke;
    v8[3] = &unk_278CE3AF8;
    v8[4] = self;
    v9 = stripCopy;
    v10 = &unk_2853444C8;
    v11 = 0;
    v12 = &v10;
    v6 = ASDDSP::exceptionBarrier<BOOL({block_pointer} {__strong})(void)>(v8);
    std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](&v10);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ASDDSPGraph setPropertyStrip:];
    }

    v6 = 0;
  }

  return v6;
}

uint64_t __32__ASDDSPGraph_setPropertyStrip___block_invoke(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    objc_msgSend_graph(v3, a2);
    v3 = v5;
  }

  else
  {
    v6 = 0;
  }

  DSPGraph::Graph::setPropertyStrip(v3, *(a1 + 40));
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return 1;
}

- (BOOL)getParameter:(float *)parameter forID:(unsigned int)d
{
  v11 = *MEMORY[0x277D85DE8];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __34__ASDDSPGraph_getParameter_forID___block_invoke;
  v6[3] = &unk_278CE3B20;
  v6[4] = self;
  v6[5] = parameter;
  dCopy = d;
  v8 = &unk_2853444C8;
  v9 = 0;
  v10 = &v8;
  v4 = ASDDSP::exceptionBarrier<BOOL({block_pointer} {__strong})(void)>(v6);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](&v8);
  return v4;
}

uint64_t __34__ASDDSPGraph_getParameter_forID___block_invoke(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    objc_msgSend_graph(v3, a2);
    v3 = v5;
  }

  else
  {
    v6 = 0;
  }

  **(a1 + 40) = (*(*v3 + 48))(v3, *(a1 + 48));
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return 1;
}

- (BOOL)hasParameter:(unsigned int)parameter
{
  objc_msgSend_graph(self, a2);
  hasParameter = DSPGraph::Graph::hasParameter(v5);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return hasParameter;
}

- (BOOL)setParameter:(float)parameter forID:(unsigned int)d
{
  v4 = *&d;
  v23 = *MEMORY[0x277D85DE8];
  LODWORD(v7) = d >> 24;
  if (((d >> 24) - 32) >= 0x5F)
  {
    v7 = 32;
  }

  else
  {
    v7 = v7;
  }

  LODWORD(v8) = (d << 8) >> 24;
  if ((v8 - 32) >= 0x5F)
  {
    v8 = 32;
  }

  else
  {
    v8 = v8;
  }

  LODWORD(v9) = d >> 8;
  if ((v9 - 32) >= 0x5F)
  {
    v9 = 32;
  }

  else
  {
    v9 = v9;
  }

  if ((d - 32) >= 0x5F)
  {
    dCopy = 32;
  }

  else
  {
    dCopy = d;
  }

  dCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%c%c%c%c", v7, v8, v9, dCopy];
  if ([(ASDDSPGraph *)self hasParameter:v4])
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __34__ASDDSPGraph_setParameter_forID___block_invoke;
    v15[3] = &unk_278CE3B48;
    v15[4] = dCopy;
    v15[5] = self;
    parameterCopy = parameter;
    v17 = v4;
    *buf = &unk_2853444C8;
    buf[8] = 0;
    parameterCopy2 = COERCE_DOUBLE(buf);
    v12 = ASDDSP::exceptionBarrier<BOOL({block_pointer} {__strong})(void)>(v15);
    std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](buf);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      name = [(ASDDSPGraph *)self name];
      *buf = 136315650;
      *&buf[4] = [name UTF8String];
      v19 = 2080;
      uTF8String = [dCopy UTF8String];
      v21 = 2048;
      parameterCopy2 = parameter;
      _os_log_error_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "DSP graph: %s has no graph level parameter: %s, failed to set value: %f", buf, 0x20u);
    }

    v12 = 0;
  }

  return v12;
}

uint64_t __34__ASDDSPGraph_setParameter_forID___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v2 = [*(a1 + 32) UTF8String];
    v3 = [*(a1 + 40) name];
    v4 = [v3 UTF8String];
    v5 = *(a1 + 48);
    *v8 = 136315650;
    *&v8[4] = v2;
    *&v8[12] = 2080;
    *&v8[14] = v4;
    v9 = 2048;
    v10 = v5;
    _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Setting dsp graph level parameter %s on graph: %s to %f", v8, 0x20u);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    objc_msgSend_graph(v6);
    v6 = *v8;
  }

  else
  {
    *v8 = 0;
    *&v8[8] = 0;
  }

  (*(*v6 + 40))(v6, *(a1 + 52), *(a1 + 48));
  if (*&v8[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&v8[8]);
  }

  return 1;
}

- (BOOL)getPropertySize:(unsigned int *)size isWritable:(BOOL *)writable forID:(unsigned int)d
{
  result = 0;
  if (size && writable)
  {
    v8 = *&d;
    objc_msgSend_graph(self, a2);
    v10 = (*(*v13 + 64))(v13, v8);
    v12 = v11;
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }

    if (v12)
    {
      *size = v10;
      *writable = BYTE4(v10);
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (BOOL)getProperty:(void *)property withSize:(unsigned int *)size forID:(unsigned int)d
{
  v12 = *MEMORY[0x277D85DE8];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__ASDDSPGraph_getProperty_withSize_forID___block_invoke;
  v7[3] = &unk_278CE3B70;
  v7[5] = size;
  v7[6] = property;
  v7[4] = self;
  dCopy = d;
  v9 = &unk_2853444C8;
  v10 = 0;
  v11 = &v9;
  v5 = ASDDSP::exceptionBarrier<BOOL({block_pointer} {__strong})(void)>(v7);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](&v9);
  return v5;
}

uint64_t __42__ASDDSPGraph_getProperty_withSize_forID___block_invoke(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 40);
  if (!v2)
  {
    return 0;
  }

  v4 = *(a1 + 48);
  if (!v4)
  {
    return 0;
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    objc_msgSend_graph(v5, a2);
    v5 = v7;
    v2 = *(a1 + 40);
    v4 = *(a1 + 48);
  }

  else
  {
    v8 = 0;
  }

  (*(*v5 + 72))(v5, *(a1 + 56), v2, v4);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  return 1;
}

- (BOOL)setProperty:(const void *)property withSize:(unsigned int)size forID:(unsigned int)d
{
  v13 = *MEMORY[0x277D85DE8];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__ASDDSPGraph_setProperty_withSize_forID___block_invoke;
  v7[3] = &unk_278CE3A80;
  dCopy = d;
  sizeCopy = size;
  v7[4] = self;
  v7[5] = property;
  v10 = &unk_2853444C8;
  v11 = 0;
  v12 = &v10;
  v5 = ASDDSP::exceptionBarrier<BOOL({block_pointer} {__strong})(void)>(v7);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](&v10);
  return v5;
}

uint64_t __42__ASDDSPGraph_setProperty_withSize_forID___block_invoke(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    objc_msgSend_graph(v3, a2);
    v3 = v5;
  }

  else
  {
    v6 = 0;
  }

  (*(*v3 + 56))(v3, *(a1 + 48), *(a1 + 52), *(a1 + 40));
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return 1;
}

- (id)boxWithName:(id)name
{
  v10[4] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __27__ASDDSPGraph_boxWithName___block_invoke;
  v8[3] = &unk_278CE3B98;
  v8[4] = self;
  v9 = nameCopy;
  v10[0] = &unk_285344510;
  v10[1] = 0;
  v10[3] = v10;
  v5 = nameCopy;
  v6 = ASDDSP::exceptionBarrier<objc_object *({block_pointer} {__strong})(void)>(v8);
  std::__function::__value_func<objc_object * ()(void)>::~__value_func[abi:ne200100](v10);

  return v6;
}

ASDDSPGraphBox *__27__ASDDSPGraph_boxWithName___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) UTF8String];
  v3 = strlen(v2);
  if (v3 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v4 = v3;
  if (v3 >= 0x17)
  {
    operator new();
  }

  v16 = v3;
  if (v3)
  {
    memmove(&__dst, v2, v3);
  }

  *(&__dst + v4) = 0;
  v5 = DSPGraph::Graph::box();
  v6 = v5;
  if (v16 < 0)
  {
    operator delete(__dst);
    if (v6)
    {
      goto LABEL_9;
    }

LABEL_14:
    v11 = 0;
    goto LABEL_15;
  }

  if (!v5)
  {
    goto LABEL_14;
  }

LABEL_9:
  v7 = [ASDDSPGraphBox alloc];
  v8 = *(a1 + 32);
  v10 = *(v8 + 8);
  v9 = *(v8 + 16);
  v13 = v10;
  v14 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = [(ASDDSPGraphBox *)v7 initWithBox:v6 fromGraph:&v13];
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

LABEL_15:

  return v11;
}

- (NSSet)boxes
{
  v5[4] = *MEMORY[0x277D85DE8];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __20__ASDDSPGraph_boxes__block_invoke;
  v4[3] = &unk_278CE3BC0;
  v4[4] = self;
  v5[0] = &unk_285344510;
  v5[1] = 0;
  v5[3] = v5;
  v2 = ASDDSP::exceptionBarrier<objc_object *({block_pointer} {__strong})(void)>(v4);
  std::__function::__value_func<objc_object * ()(void)>::~__value_func[abi:ne200100](v5);

  return v2;
}

id __20__ASDDSPGraph_boxes__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB58] set];
  for (i = *(*(*(a1 + 32) + 8) + 24); i; i = *i)
  {
    v4 = [ASDDSPGraphBox alloc];
    v5 = i[2];
    v6 = *(a1 + 32);
    v8 = *(v6 + 8);
    v7 = *(v6 + 16);
    v11 = v8;
    v12 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v9 = [(ASDDSPGraphBox *)v4 initWithBox:v5 fromGraph:&v11];
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }

    [v2 addObject:{v9, v11}];
  }

  return v2;
}

- (NSSet)inputs
{
  v5[4] = *MEMORY[0x277D85DE8];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __21__ASDDSPGraph_inputs__block_invoke;
  v4[3] = &unk_278CE3BC0;
  v4[4] = self;
  v5[0] = &unk_285344510;
  v5[1] = 0;
  v5[3] = v5;
  v2 = ASDDSP::exceptionBarrier<objc_object *({block_pointer} {__strong})(void)>(v4);
  std::__function::__value_func<objc_object * ()(void)>::~__value_func[abi:ne200100](v5);

  return v2;
}

id __21__ASDDSPGraph_inputs__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB58] set];
  for (i = 0; i < DSPGraph::Graph::numInputs(*(*(a1 + 32) + 8)); ++i)
  {
    v4 = [ASDDSPGraphBox alloc];
    v5 = DSPGraph::Graph::in(*(*(a1 + 32) + 8));
    v6 = *(a1 + 32);
    v8 = *(v6 + 8);
    v7 = *(v6 + 16);
    v11 = v8;
    v12 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v9 = [(ASDDSPGraphBox *)v4 initWithBox:v5 fromGraph:&v11];
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }

    [v2 addObject:{v9, v11}];
  }

  return v2;
}

- (NSSet)outputs
{
  v5[4] = *MEMORY[0x277D85DE8];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __22__ASDDSPGraph_outputs__block_invoke;
  v4[3] = &unk_278CE3BC0;
  v4[4] = self;
  v5[0] = &unk_285344510;
  v5[1] = 0;
  v5[3] = v5;
  v2 = ASDDSP::exceptionBarrier<objc_object *({block_pointer} {__strong})(void)>(v4);
  std::__function::__value_func<objc_object * ()(void)>::~__value_func[abi:ne200100](v5);

  return v2;
}

id __22__ASDDSPGraph_outputs__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB58] set];
  for (i = 0; i < DSPGraph::Graph::numOutputs(*(*(a1 + 32) + 8)); ++i)
  {
    v4 = [ASDDSPGraphBox alloc];
    v5 = DSPGraph::Graph::out(*(*(a1 + 32) + 8));
    v6 = *(a1 + 32);
    v8 = *(v6 + 8);
    v7 = *(v6 + 16);
    v11 = v8;
    v12 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v9 = [(ASDDSPGraphBox *)v4 initWithBox:v5 fromGraph:&v11];
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }

    [v2 addObject:{v9, v11}];
  }

  return v2;
}

- (NSString)name
{
  ptr = self->_graph.__ptr_;
  v3 = (ptr + 408);
  if (*(ptr + 431) < 0)
  {
    v3 = *v3;
  }

  return [MEMORY[0x277CCACA8] stringWithUTF8String:v3];
}

- (void)setName:(id)name
{
  v8[4] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __23__ASDDSPGraph_setName___block_invoke;
  v6[3] = &unk_278CE3BE8;
  v6[4] = self;
  v7 = nameCopy;
  v8[0] = &unk_285344558;
  v8[3] = v8;
  v5 = nameCopy;
  ASDDSP::exceptionBarrier<void({block_pointer} {__strong})(void)>(v6);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v8);
}

void __23__ASDDSPGraph_setName___block_invoke(uint64_t a1)
{
  [*(a1 + 40) UTF8String];

  JUMPOUT(0x245CEB7F0);
}

- (unint64_t)numberOfInputs
{
  v8 = *MEMORY[0x277D85DE8];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __29__ASDDSPGraph_numberOfInputs__block_invoke;
  v4[3] = &unk_278CE3AA8;
  v4[4] = self;
  v5 = &unk_285344480;
  v6 = 0;
  v7 = &v5;
  v2 = ASDDSP::exceptionBarrier<unsigned int({block_pointer} {__strong})(void)>(v4);
  std::__function::__value_func<unsigned int ()(void)>::~__value_func[abi:ne200100](&v5);
  return v2;
}

- (unint64_t)numberOfOutputs
{
  v8 = *MEMORY[0x277D85DE8];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __30__ASDDSPGraph_numberOfOutputs__block_invoke;
  v4[3] = &unk_278CE3AA8;
  v4[4] = self;
  v5 = &unk_285344480;
  v6 = 0;
  v7 = &v5;
  v2 = ASDDSP::exceptionBarrier<unsigned int({block_pointer} {__strong})(void)>(v4);
  std::__function::__value_func<unsigned int ()(void)>::~__value_func[abi:ne200100](&v5);
  return v2;
}

- (shared_ptr<DSPGraph::Graph>)graph
{
  cntrl = self->_graph.__cntrl_;
  *v2 = self->_graph.__ptr_;
  v2[1] = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

@end