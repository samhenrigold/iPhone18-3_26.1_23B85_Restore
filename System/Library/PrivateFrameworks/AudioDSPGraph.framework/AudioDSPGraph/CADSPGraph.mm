@interface CADSPGraph
- (BOOL)_hasRemoteProcessingBlockParameter:(unsigned int)parameter scope:(unsigned int)scope element:(unsigned int)element error:(id *)error;
- (BOOL)_hasRemoteProcessingBlockProperty:(unsigned int)property scope:(unsigned int)scope element:(unsigned int)element error:(id *)error;
- (BOOL)getLatency:(double *)latency error:(id *)error;
- (BOOL)getParameter:(float *)parameter forID:(unsigned int)d error:(id *)error;
- (BOOL)getParameterDirection:(unsigned int *)direction forID:(unsigned int)d error:(id *)error;
- (BOOL)getPropertyData:(void *)data size:(unsigned int *)size forID:(unsigned int)d error:(id *)error;
- (BOOL)getPropertyDirection:(unsigned int *)direction forID:(unsigned int)d error:(id *)error;
- (BOOL)getPropertyInfo:(CADSPPropertyInfo *)info forID:(unsigned int)d error:(id *)error;
- (BOOL)getRemoteProcessingBlockParameter:(float *)parameter forID:(unsigned int)d scope:(unsigned int)scope element:(unsigned int)element object:(id)object withError:(id *)error;
- (BOOL)getRemoteProcessingBlockParameterInfo:(id)info forScope:(unsigned int)scope object:(id)object withError:(id *)error;
- (BOOL)getRemoteProcessingBlockProperty:(id *)property forID:(unsigned int)d scope:(unsigned int)scope element:(unsigned int)element object:(id)object withError:(id *)error;
- (BOOL)getRemoteProcessingBlockPropertyInfo:(id *)info forID:(unsigned int)d scope:(unsigned int)scope element:(unsigned int)element object:(id)object withError:(id *)error;
- (BOOL)getRemoteProcessingBlockPropertyInfo:(id)info forScope:(unsigned int)scope object:(id)object withError:(id *)error;
- (BOOL)getTailTime:(double *)time error:(id *)error;
- (BOOL)importRemoteProcessingBlockStrip:(id)strip type:(unsigned int)type settings:(id)settings object:(id)object error:(id *)error;
- (BOOL)initialize:(id *)initialize;
- (BOOL)loadStrip:(id)strip type:(unsigned int)type withResourcePath:(id)path error:(id *)error;
- (BOOL)setModel:(id)model dryRun:(BOOL)run error:(id *)error;
- (BOOL)setParameter:(float)parameter forID:(unsigned int)d error:(id *)error;
- (BOOL)setPropertyData:(const void *)data size:(unsigned int)size forID:(unsigned int)d error:(id *)error;
- (BOOL)setRemoteProcessingBlockParameter:(float)parameter forID:(unsigned int)d scope:(unsigned int)scope element:(unsigned int)element object:(id)object withError:(id *)error;
- (BOOL)setRemoteProcessingBlockProperty:(id)property forID:(unsigned int)d scope:(unsigned int)scope element:(unsigned int)element object:(id)object withError:(id *)error;
- (CADSPGraph)initWithModel:(id)model error:(id *)error;
- (NSArray)boxes;
- (NSArray)eventListeners;
- (NSArray)subsets;
- (id).cxx_construct;
- (id)boxForName:(id)name;
- (id)createRemoteProcessingBlockHost:(id *)host;
- (id)exportRemoteProcessingBlockStrip:(unsigned int)strip settings:(id)settings object:(id)object error:(id *)error;
- (id)saveStrip:(unsigned int)strip error:(id *)error;
- (id)subsetForName:(id)name;
- (void)addEventListener:(id)listener;
- (void)removeAllEventListeners;
- (void)removeEventListener:(id)listener;
@end

@implementation CADSPGraph

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

- (id)subsetForName:(id)name
{
  v19 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  subsets = [(CADSPGraph *)self subsets];
  v6 = [subsets countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(subsets);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        model = [v9 model];
        name = [model name];
        v12 = [name isEqualToString:nameCopy];

        if (v12)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [subsets countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (NSArray)subsets
{
  v50 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  subsets = selfCopy->_subsets;
  if (!subsets)
  {
    v38 = [MEMORY[0x1E695DF70] arrayWithCapacity:(*(selfCopy->_graph.__ptr_ + 128) - *(selfCopy->_graph.__ptr_ + 127)) >> 3];
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    obj = [(CADSPGraphModel *)selfCopy->_model subsets];
    v4 = [obj countByEnumeratingWithState:&v45 objects:v49 count:16];
    if (v4)
    {
      v39 = *v46;
      do
      {
        v5 = 0;
        v40 = v4;
        do
        {
          if (*v46 != v39)
          {
            objc_enumerationMutation(obj);
          }

          v6 = *(*(&v45 + 1) + 8 * v5);
          ptr = selfCopy->_graph.__ptr_;
          name = [v6 name];
          v9 = name;
          std::string::basic_string[abi:ne200100]<0>(__p, [name UTF8String]);
          v10 = *(ptr + 127);
          v11 = *(ptr + 128);
          if (v10 == v11)
          {
LABEL_22:
            v14 = 0;
          }

          else
          {
            if ((v44 & 0x80u) == 0)
            {
              v12 = v44;
            }

            else
            {
              v12 = __p[1];
            }

            if ((v44 & 0x80u) == 0)
            {
              v13 = __p;
            }

            else
            {
              v13 = __p[0];
            }

            while (1)
            {
              v14 = *v10;
              v15 = *(*v10 + 31);
              v16 = v15;
              if ((v15 & 0x80u) != 0)
              {
                v15 = *(*v10 + 16);
              }

              if (v15 == v12)
              {
                v17 = v16 >= 0 ? v14 + 1 : v14[1];
                if (!memcmp(v17, v13, v12))
                {
                  break;
                }
              }

              v10 += 8;
              if (v10 == v11)
              {
                goto LABEL_22;
              }
            }
          }

          cntrl = selfCopy->_graph.__cntrl_;
          if (cntrl)
          {
            atomic_fetch_add_explicit(&cntrl->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (v44 < 0)
          {
            operator delete(__p[0]);
          }

          if (v14)
          {
            v19 = [MEMORY[0x1E695DF70] arrayWithCapacity:v14[7]];
            for (i = v14[6]; i; i = *i)
            {
              v21 = i[2];
              v22 = objc_alloc(MEMORY[0x1E696AEC0]);
              v25 = *(v21 + 40);
              v24 = v21 + 40;
              v23 = v25;
              v26 = *(v24 + 23);
              if (v26 >= 0)
              {
                v27 = v24;
              }

              else
              {
                v27 = v23;
              }

              if (v26 >= 0)
              {
                v28 = *(v24 + 23);
              }

              else
              {
                v28 = *(v24 + 8);
              }

              v29 = [v22 initWithBytes:v27 length:v28 encoding:4];
              v30 = [(CADSPGraph *)selfCopy boxForName:v29];
              if (v30)
              {
                [v19 addObject:v30];
              }
            }

            v31 = [CADSPSubset alloc];
            v41 = v14;
            v42 = cntrl;
            if (cntrl)
            {
              atomic_fetch_add_explicit(&cntrl->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v32 = [(CADSPSubset *)v31 initWithSubset:&v41 model:v6 boxes:v19];
            [v38 addObject:v32];

            if (v42)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v42);
            }
          }

          if (cntrl)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
          }

          ++v5;
        }

        while (v5 != v40);
        v4 = [obj countByEnumeratingWithState:&v45 objects:v49 count:16];
      }

      while (v4);
    }

    v33 = [v38 copy];
    v34 = selfCopy->_subsets;
    selfCopy->_subsets = v33;

    subsets = selfCopy->_subsets;
  }

  v35 = subsets;
  objc_sync_exit(selfCopy);

  return v35;
}

- (id)boxForName:(id)name
{
  v19 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  boxes = [(CADSPGraph *)self boxes];
  v6 = [boxes countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(boxes);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        model = [v9 model];
        name = [model name];
        v12 = [name isEqualToString:nameCopy];

        if (v12)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [boxes countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (NSArray)boxes
{
  v31 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  boxes = selfCopy->_boxes;
  if (!boxes)
  {
    v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:*(selfCopy->_graph.__ptr_ + 5)];
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    boxes = [(CADSPGraphModel *)selfCopy->_model boxes];
    v6 = [boxes countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v6)
    {
      v7 = *v27;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v27 != v7)
          {
            objc_enumerationMutation(boxes);
          }

          v9 = *(*(&v26 + 1) + 8 * i);
          ptr = selfCopy->_graph.__ptr_;
          name = [v9 name];
          v12 = name;
          std::string::basic_string[abi:ne200100]<0>(__p, [name UTF8String]);
          v13 = std::__hash_table<std::__hash_value_type<std::string,AudioDSPGraph::Box *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AudioDSPGraph::Box *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AudioDSPGraph::Box *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,AudioDSPGraph::Box *>>>::find<std::string>(ptr + 117, __p);
          if (v13)
          {
            v14 = v13[5];
          }

          else
          {
            v14 = 0;
          }

          cntrl = selfCopy->_graph.__cntrl_;
          if (cntrl)
          {
            atomic_fetch_add_explicit(&cntrl->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (v25 < 0)
          {
            operator delete(__p[0]);
          }

          if (v14)
          {
            v16 = [CADSPBox alloc];
            v22 = v14;
            v23 = cntrl;
            v17 = [(CADSPBox *)v16 initWithBox:&v22 model:v9];
            [v4 addObject:v17];

            cntrl = v23;
          }

          if (cntrl)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
          }
        }

        v6 = [boxes countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v6);
    }

    v18 = [v4 copy];
    v19 = selfCopy->_boxes;
    selfCopy->_boxes = v18;

    boxes = selfCopy->_boxes;
  }

  v20 = boxes;
  objc_sync_exit(selfCopy);

  return v20;
}

- (BOOL)setModel:(id)model dryRun:(BOOL)run error:(id *)error
{
  if (error)
  {
    *error = [CADSPError errorWithCode:1852403056, run];
  }

  return 0;
}

- (CADSPGraph)initWithModel:(id)model error:(id *)error
{
  modelCopy = model;
  selfCopy = self;
  v11.receiver = selfCopy;
  v11.super_class = CADSPGraph;
  v7 = [(CADSPGraph *)&v11 init];

  if (v7)
  {
    AudioDSPGraph::BoxRegistry::BoxRegistry(v10);
  }

  v8 = 0;

  return v8;
}

- (BOOL)getTailTime:(double *)time error:(id *)error
{
  TailTime = CADSPGraphGetTailTime(self, time);
  v6 = TailTime;
  if (error && !TailTime)
  {
    *error = [CADSPError createWithRealTimeError:0];
  }

  return v6 != 0;
}

- (id)saveStrip:(unsigned int)strip error:(id *)error
{
  if (strip)
  {
    v4 = 0;
    if (error)
    {
      *error = [CADSPError errorWithCode:1853060464 descriptionFormat:@"graph cannot save property strip(s)"];
    }
  }

  else
  {
    ptr = self->_graph.__ptr_;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    std::vector<AudioDSPGraph::Box *>::reserve(&v12, *(ptr + 5));
    for (i = *(ptr + 4); i; i = *i)
    {
      v15 = i[2];
      std::vector<AudioDSPGraph::Box *>::push_back[abi:ne200100](&v12, &v15);
    }

    v7 = v12;
    v8 = 126 - 2 * __clz(v13 - v12);
    if (v13 == v12)
    {
      v9 = 0;
    }

    else
    {
      v9 = v8;
    }

    std::__introsort<std::_ClassicAlgPolicy,std::vector<AudioDSPGraph::Box *> AudioDSPGraph::GetBoxesSortedByName<AudioDSPGraph::Box *>(std::unordered_set<AudioDSPGraph::Box *> const&)::{lambda(AudioDSPGraph::Box *,AudioDSPGraph::Box *)#1} &,AudioDSPGraph::Box **,false>(v12, v13, v9, 1);
    AudioDSPGraph::stripDictFromBoxes(&v15, &v12);
    if (v7)
    {
      operator delete(v7);
    }

    v10 = v15;
    v4 = v10;
    if (v10)
    {
      CFRelease(v10);
    }
  }

  return v4;
}

- (BOOL)loadStrip:(id)strip type:(unsigned int)type withResourcePath:(id)path error:(id *)error
{
  stripCopy = strip;
  pathCopy = path;
  if (type == 1)
  {
    AudioDSPGraph::Graph::setPropertyStrip(self->_graph.__ptr_, stripCopy, pathCopy);
LABEL_6:
    v6 = 1;
    goto LABEL_7;
  }

  if (!type)
  {
    v12 = AudioDSPGraph::Graph::setAUStrip(self->_graph.__ptr_, stripCopy);
    if (v12)
    {
      std::string::basic_string[abi:ne200100]<0>(v14, "failed to set parameter strip");
      AudioDSPGraph::ThrowException(v12, v14, off_1E8334670);
    }

    goto LABEL_6;
  }

LABEL_7:

  return v6 & 1;
}

- (id)createRemoteProcessingBlockHost:(id *)host
{
  v168[1] = *MEMORY[0x1E69E9840];
  if (objc_opt_class())
  {
    v3 = ((*(self->_graph.__ptr_ + 48) - *(self->_graph.__ptr_ + 47)) >> 3);
    v160 = [MEMORY[0x1E695DF70] arrayWithCapacity:v3];
    if (v3)
    {
      for (i = 0; i != v3; ++i)
      {
        v6 = objc_alloc(MEMORY[0x1E69C6E08]);
        v7 = *(self->_graph.__ptr_ + 47);
        if (i >= (*(self->_graph.__ptr_ + 48) - v7) >> 3)
        {
          v8 = 0;
        }

        else
        {
          v8 = *(v7 + 8 * i);
        }

        StreamDescription = AudioDSPGraph::Boxes::GraphInput::getStreamDescription(v8, v5);
        v10 = *(StreamDescription + 32);
        v11 = *(StreamDescription + 16);
        outData = *StreamDescription;
        v164 = v11;
        v165 = v10;
        v12 = [v6 initWithFormat:&outData];
        [v160 addObject:v12];
      }
    }

    v13 = ((*(self->_graph.__ptr_ + 51) - *(self->_graph.__ptr_ + 50)) >> 3);
    v159 = [MEMORY[0x1E695DF70] arrayWithCapacity:v13];
    if (v13)
    {
      for (j = 0; j != v13; ++j)
      {
        v16 = objc_alloc(MEMORY[0x1E69C6E08]);
        v17 = *(self->_graph.__ptr_ + 50);
        if (j >= (*(self->_graph.__ptr_ + 51) - v17) >> 3)
        {
          v18 = 0;
        }

        else
        {
          v18 = *(v17 + 8 * j);
        }

        v19 = AudioDSPGraph::Boxes::GraphOutput::getStreamDescription(v18, v15);
        v20 = *(v19 + 32);
        v21 = *(v19 + 16);
        outData = *v19;
        v164 = v21;
        v165 = v20;
        v22 = [v16 initWithFormat:&outData];
        [v159 addObject:v22];
      }
    }

    v23 = objc_alloc(MEMORY[0x1E69C6DE0]);
    model = [(CADSPGraph *)self model];
    name = [model name];
    v26 = [v23 initWithName:name inputs:v160 outputs:v159];

    if (v26)
    {
      if (v3)
      {
        v27 = 0;
        v28 = MEMORY[0x1E695E0F0];
        do
        {
          v29 = objc_alloc(MEMORY[0x1E69C6DE8]);
          v30 = *(self->_graph.__ptr_ + 47);
          if (v27 >= (*(self->_graph.__ptr_ + 48) - v30) >> 3)
          {
            v31 = 0;
          }

          else
          {
            v31 = *(v30 + 8 * v27);
          }

          v32 = (v31 + 40);
          if (*(v31 + 63) < 0)
          {
            v32 = *v32;
          }

          v33 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v32];
          v34 = [v160 objectAtIndexedSubscript:v27];
          v168[0] = v34;
          v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v168 count:1];
          v36 = [v29 initWithName:v33 inputs:v28 outputs:v35];
          [v26 addItem:v36];

          ++v27;
        }

        while (v3 != v27);
      }

      if (v13)
      {
        v37 = 0;
        v38 = MEMORY[0x1E695E0F0];
        do
        {
          v39 = objc_alloc(MEMORY[0x1E69C6DE8]);
          v40 = *(self->_graph.__ptr_ + 50);
          if (v37 >= (*(self->_graph.__ptr_ + 51) - v40) >> 3)
          {
            v41 = 0;
          }

          else
          {
            v41 = *(v40 + 8 * v37);
          }

          v42 = (v41 + 40);
          if (*(v41 + 63) < 0)
          {
            v42 = *v42;
          }

          v43 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v42];
          v44 = [v159 objectAtIndexedSubscript:v37];
          v167 = v44;
          v45 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v167 count:1];
          v46 = [v39 initWithName:v43 inputs:v45 outputs:v38];
          [v26 addItem:v46];

          ++v37;
        }

        while (v13 != v37);
      }

      ptr = self->_graph.__ptr_;
      v48 = *(ptr + 4);
      if (v48)
      {
        while (1)
        {
          v49 = (*(*v48[2] + 224))(v48[2]);
          if (v49)
          {
            break;
          }

          if (!(*(*v48[2] + 232))(v48[2]) && !(*(*v48[2] + 240))(v48[2]))
          {
            v56 = ((v48[2][10] - v48[2][9]) >> 5);
            v57 = [MEMORY[0x1E695DF70] arrayWithCapacity:v56];
            if (v56)
            {
              v58 = 0;
              v59 = 16;
              do
              {
                v60 = objc_alloc(MEMORY[0x1E69C6E08]);
                v62 = v48[2];
                v63 = v62[9];
                v64 = (v62[10] - v63) >> 5;
                if (v64 <= v58)
                {
                  v151 = v62 + 5;
                  if (*(v62 + 63) < 0)
                  {
                    v151 = *v151;
                  }

                  caulk::make_string(&outData, "Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v61, v151, v64, v58);
                  AudioDSPGraph::ThrowException(1919837985, &outData, off_1E8337C60);
                }

                v65 = *(*(v63 + v59) + 120);
                v66 = *(v65 + 4);
                v67 = v65[1];
                outData = *v65;
                v164 = v67;
                v165 = v66;
                v68 = [v60 initWithFormat:&outData];
                [v57 addObject:v68];

                ++v58;
                v59 += 32;
              }

              while (v56 != v58);
            }

            v69 = ((v48[2][13] - v48[2][12]) >> 5);
            v70 = [MEMORY[0x1E695DF70] arrayWithCapacity:v69];
            if (v69)
            {
              v71 = 0;
              v72 = 16;
              do
              {
                v73 = objc_alloc(MEMORY[0x1E69C6E08]);
                v75 = v48[2];
                v76 = v75[12];
                v77 = (v75[13] - v76) >> 5;
                if (v77 <= v71)
                {
                  v152 = v75 + 5;
                  if (*(v75 + 63) < 0)
                  {
                    v152 = *v152;
                  }

                  caulk::make_string(&outData, "Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v74, v152, v77, v71);
                  AudioDSPGraph::ThrowException(1919837985, &outData, off_1E8337C78);
                }

                v78 = *(*(v76 + v72) + 120);
                v79 = *(v78 + 4);
                v80 = v78[1];
                outData = *v78;
                v164 = v80;
                v165 = v79;
                v81 = [v73 initWithFormat:&outData];
                [v70 addObject:v81];

                ++v71;
                v72 += 32;
              }

              while (v69 != v71);
            }

            v82 = v48[2];
            v83 = objc_alloc(MEMORY[0x1E696AEC0]);
            v86 = v82[5];
            v85 = v82 + 5;
            v84 = v86;
            v87 = *(v85 + 23);
            if (v87 >= 0)
            {
              v88 = v85;
            }

            else
            {
              v88 = v84;
            }

            if (v87 >= 0)
            {
              v89 = *(v85 + 23);
            }

            else
            {
              v89 = v85[1];
            }

            v156 = [v83 initWithBytes:v88 length:v89 encoding:4];
            v52 = [objc_alloc(MEMORY[0x1E69C6DE8]) initWithName:v156 inputs:v57 outputs:v70];
            v90 = [(CADSPGraph *)self boxForName:v156];
            [v52 setDelegate:v90];

            v91 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
            executableURL = [v91 executableURL];
            uRLByStandardizingPath = [executableURL URLByStandardizingPath];

            v94 = objc_opt_class();
            v95 = NSStringFromClass(v94);
            v166 = uRLByStandardizingPath;
            v96 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v166 count:1];
            [v52 loadPropertyMarshallerWithClassName:v95 bundleLocationURLs:v96 error:0];

            goto LABEL_61;
          }

          v52 = 0;
LABEL_62:

          v48 = *v48;
          if (!v48)
          {
            ptr = self->_graph.__ptr_;
            goto LABEL_64;
          }
        }

        v50 = v49;
        v51 = *(v49 + 840);
        v52 = [objc_alloc(MEMORY[0x1E69C6DD0]) initWithAudioUnit:v51];
        (*(*v50 + 216))(&outData, v50);
        if (DWORD1(outData) == 1685287015)
        {
          *&outData = 0;
          ioDataSize = 8;
          if (!AudioUnitGetProperty(v51, 0x686F7062u, 0, 0, &outData, &ioDataSize) && outData != 0)
          {
            mEMORY[0x1E69C6E00] = [MEMORY[0x1E69C6E00] sharedInstance];
            v55 = outData;
            [mEMORY[0x1E69C6E00] addHost:outData toItem:v52];
          }
        }

LABEL_61:
        [v26 addItem:v52];
        goto LABEL_62;
      }

LABEL_64:
      v97 = *(ptr + 9);
      if (v97)
      {
        do
        {
          v98 = v97[2];
          v99 = *(v98 + 8);
          if (v99)
          {
            for (k = *(v98 + 32); k; k = *k)
            {
              v101 = *(v99 + 8);
              v102 = (v101 + 40);
              if (*(v101 + 63) < 0)
              {
                v102 = *v102;
              }

              v103 = k[2];
              v104 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v102];
              v105 = [v26 itemForName:v104];

              v106 = *(v103 + 8);
              v107 = (v106 + 40);
              if (*(v106 + 63) < 0)
              {
                v107 = *v107;
              }

              v108 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v107];
              v109 = [v26 itemForName:v108];

              [v26 addWireFrom:v105 terminal:*(v99 + 24) to:v109 terminal:*(v103 + 24)];
            }
          }

          v97 = *v97;
        }

        while (v97);
        ptr = self->_graph.__ptr_;
      }

      v110 = *(ptr + 75);
      if (v110)
      {
        do
        {
          v111 = v110[5];
          v112 = v110[6];
          while (v111 != v112)
          {
            v113 = (*v111 + 40);
            if (*(*v111 + 63) < 0)
            {
              v113 = *v113;
            }

            v114 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v113];
            v115 = [v26 itemForName:v114];

            v116 = v111[2];
            v117 = v111[3];
            v118 = *(v110 + 4);
            if (*(v110 + 36) == 1)
            {
              LODWORD(v154) = 0;
              [v26 addWireFrom:v115 parameter:v116 scope:v117 element:v111[4] toHostParameter:v118 scope:2 element:v154];
            }

            else
            {
              LODWORD(v154) = v111[4];
              [v26 addWireFromHostParameter:v118 scope:1 element:0 to:v115 parameter:v116 scope:v117 element:v154];
            }

            v111 += 6;
          }

          v110 = *v110;
        }

        while (v110);
        ptr = self->_graph.__ptr_;
      }

      v119 = *(ptr + 67);
      v157 = *(ptr + 68);
      if (v119 != v157)
      {
        do
        {
          v120 = (*v119 + 40);
          if (*(*v119 + 63) < 0)
          {
            v120 = *v120;
          }

          v121 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v120];
          v122 = [v26 itemForName:v121];
          v123 = *(v119 + 24);
          v124 = (v123 + 40);
          if (*(v123 + 63) < 0)
          {
            v124 = *v124;
          }

          v125 = *(v119 + 8);
          v126 = *(v119 + 12);
          v127 = *(v119 + 16);
          v128 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v124];
          v129 = [v26 itemForName:v128];
          [v26 addWireFrom:v122 parameter:v125 scope:v126 element:v127 to:v129 parameter:*(v119 + 32) scope:*(v119 + 36) element:?];

          v119 += 56;
        }

        while (v119 != v157);
        ptr = self->_graph.__ptr_;
      }

      v130 = *(ptr + 80);
      if (v130)
      {
        do
        {
          v131 = v130[9];
          v132 = v130[10];
          while (v131 != v132)
          {
            v133 = (*v131 + 40);
            if (*(*v131 + 63) < 0)
            {
              v133 = *v133;
            }

            v134 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v133];
            v135 = [v26 itemForName:v134];

            v136 = v131[2];
            v137 = v131[3];
            v138 = *(v130 + 4);
            if (*(v130 + 64) == 1)
            {
              LODWORD(v154) = 0;
              [v26 addWireFrom:v135 property:v136 scope:v137 element:v131[4] toHostProperty:v138 scope:2 element:v154];
            }

            else
            {
              LODWORD(v154) = v131[4];
              [v26 addWireFromHostProperty:v138 scope:1 element:0 to:v135 property:v136 scope:v137 element:v154];
            }

            v131 += 6;
          }

          v130 = *v130;
        }

        while (v130);
        ptr = self->_graph.__ptr_;
      }

      v139 = *(ptr + 70);
      v140 = *(ptr + 71);
      v158 = v140;
      while (v139 != v140)
      {
        v141 = (*v139 + 40);
        if (*(*v139 + 63) < 0)
        {
          v141 = *v141;
        }

        v142 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v141];
        v143 = [v26 itemForName:v142];
        v144 = *(v139 + 24);
        v145 = (v144 + 40);
        if (*(v144 + 63) < 0)
        {
          v145 = *v145;
        }

        v146 = *(v139 + 8);
        v147 = *(v139 + 12);
        v148 = *(v139 + 16);
        v149 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v145];
        v150 = [v26 itemForName:v149];
        [v26 addWireFrom:v143 property:v146 scope:v147 element:v148 to:v150 property:*(v139 + 32) scope:*(v139 + 36) element:?];

        v139 += 56;
        v140 = v158;
      }

      [v26 setDelegate:self];
    }

    else if (host)
    {
      *host = [[CADSPError alloc] initWithCode:1970170734];
    }
  }

  else
  {
    v26 = 0;
    if (host)
    {
      *host = [[CADSPError alloc] initWithCode:1853060464];
    }
  }

  return v26;
}

- (id)exportRemoteProcessingBlockStrip:(unsigned int)strip settings:(id)settings object:(id)object error:(id *)error
{
  v8 = *&strip;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (v8 < 2)
  {
    v6 = [(CADSPGraph *)selfCopy saveStrip:v8 error:error];
  }

  objc_sync_exit(selfCopy);

  return v6;
}

- (BOOL)importRemoteProcessingBlockStrip:(id)strip type:(unsigned int)type settings:(id)settings object:(id)object error:(id *)error
{
  v9 = *&type;
  stripCopy = strip;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (v9 < 2)
  {
    v7 = [(CADSPGraph *)selfCopy loadStrip:stripCopy type:v9 error:error];
  }

  objc_sync_exit(selfCopy);

  return v7;
}

- (BOOL)setRemoteProcessingBlockProperty:(id)property forID:(unsigned int)d scope:(unsigned int)scope element:(unsigned int)element object:(id)object withError:(id *)error
{
  v10 = *&element;
  v11 = *&scope;
  v12 = *&d;
  propertyCopy = property;
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = objectCopy;
    if (v12 == 1952673893 && !v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v17 = propertyCopy;
      threadCounterProfiler = [v16 threadCounterProfiler];

      if (threadCounterProfiler)
      {
        if (([v17 BOOLValue] & 1) == 0)
        {
          [v16 setThreadCounterProfiler:0];
        }
      }

      else if ([v17 BOOLValue])
      {
        v24 = [[CADSPThreadCounterProfiler alloc] initWithGraph:self];
        [v16 setThreadCounterProfiler:v24];
      }

      v19 = 1;
    }

    else
    {
      if (![(CADSPGraph *)self _hasRemoteProcessingBlockProperty:v12 scope:v11 element:v10 error:error]|| (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        v19 = 0;
LABEL_20:

        goto LABEL_21;
      }

      v20 = propertyCopy;
      bytes = [v20 bytes];
      v22 = [v20 length];
      if (HIDWORD(v22))
      {
        v23 = 0xFFFFFFFFLL;
      }

      else
      {
        v23 = v22;
      }

      v19 = [(CADSPGraph *)self setPropertyData:bytes size:v23 forID:v12 error:error];
    }

    goto LABEL_20;
  }

  v19 = 0;
LABEL_21:

  return v19;
}

- (BOOL)getRemoteProcessingBlockProperty:(id *)property forID:(unsigned int)d scope:(unsigned int)scope element:(unsigned int)element object:(id)object withError:(id *)error
{
  v9 = *&element;
  v10 = *&scope;
  v11 = *&d;
  objectCopy = object;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    LOBYTE(error) = 0;
    goto LABEL_16;
  }

  v15 = objectCopy;
  v16 = v15;
  if (!v10)
  {
    if (v11 == 1952673893)
    {
      v21 = MEMORY[0x1E696AD98];
      error = [v15 threadCounterProfiler];
      statistics = [v21 numberWithBool:error != 0];
    }

    else
    {
      if (v11 != 1952673907)
      {
        goto LABEL_3;
      }

      error = [v15 threadCounterProfiler];
      statistics = [error statistics];
    }

    *property = statistics;

    LOBYTE(error) = 1;
    goto LABEL_16;
  }

LABEL_3:
  if ([(CADSPGraph *)self _hasRemoteProcessingBlockProperty:v11 scope:v10 element:v9 error:error]&& [(CADSPGraph *)self getPropertyInfo:v23 forID:v11 error:error])
  {
    v17 = objc_alloc(MEMORY[0x1E695DF88]);
    v18 = [v17 initWithLength:v24];
    LODWORD(error) = -[CADSPGraph getPropertyData:size:forID:error:](self, "getPropertyData:size:forID:error:", [v18 mutableBytes], &v24, v11, error);
    if (error)
    {
      v19 = v18;
      *property = v18;
    }
  }

  else
  {
    LOBYTE(error) = 0;
  }

LABEL_16:
  return error;
}

- (BOOL)getRemoteProcessingBlockPropertyInfo:(id *)info forID:(unsigned int)d scope:(unsigned int)scope element:(unsigned int)element object:(id)object withError:(id *)error
{
  v9 = *&scope;
  v10 = *&d;
  v28 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_11;
  }

  if ((v9 - 1) > 1)
  {
    if (error)
    {
      v16 = [CADSPError _errorForUnsupportedRemoteProcessingBlockScope:v9 connectionType:@"graph properties"];
      LOBYTE(v9) = 0;
      *error = v16;
      goto LABEL_12;
    }

LABEL_11:
    LOBYTE(v9) = 0;
    goto LABEL_12;
  }

  LODWORD(v9) = [(CADSPGraph *)self getPropertyInfo:&v24 forID:v10 error:error];
  if (v9)
  {
    v14 = [objc_alloc(MEMORY[0x1E69C6DF8]) initWithPropertyID:v10];
    v15 = bswap32(v10);
    v26 = v15;
    if ((v15 - 32) > 0x5E || ((v15 >> 8) - 32) > 0x5E || ((v15 << 8 >> 24) - 32) > 0x5E || ((v15 >> 24) - 32) > 0x5E)
    {
      std::to_string(&__p, v10);
    }

    else
    {
      v27 = 39;
      __s = 39;
      std::string::basic_string[abi:ne200100]<0>(&__p, &__s);
    }

    v18 = objc_alloc(MEMORY[0x1E696AEC0]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    v21 = [v18 initWithBytes:p_p length:size encoding:4];
    [v14 setName:v21];

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    [v14 setReadable:v24 & 1];
    [v14 setWritable:(v24 >> 1) & 1];
    v22 = v14;
    *info = v14;
  }

LABEL_12:

  return v9;
}

- (BOOL)getRemoteProcessingBlockPropertyInfo:(id)info forScope:(unsigned int)scope object:(id)object withError:(id *)error
{
  v8 = *&scope;
  v35 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  objectCopy = object;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_44;
  }

  if (v8 == 2)
  {
    for (i = *(self->_graph.__ptr_ + 80); i; i = *i)
    {
      if (*(i + 64) == 1)
      {
        v21 = [objc_alloc(MEMORY[0x1E69C6DF8]) initWithPropertyID:*(i + 4)];
        v22 = *(i + 4);
        v23 = bswap32(v22);
        v33 = v23;
        if ((v23 - 32) > 0x5E || ((v23 >> 8) - 32) > 0x5E || ((v23 << 8 >> 24) - 32) > 0x5E || ((v23 >> 24) - 32) > 0x5E)
        {
          std::to_string(&v31, v22);
        }

        else
        {
          v34 = 39;
          __s = 39;
          std::string::basic_string[abi:ne200100]<0>(&v31, &__s);
        }

        v24 = objc_alloc(MEMORY[0x1E696AEC0]);
        if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v25 = &v31;
        }

        else
        {
          v25 = v31.__r_.__value_.__r.__words[0];
        }

        if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v31.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v31.__r_.__value_.__l.__size_;
        }

        v27 = [v24 initWithBytes:v25 length:size encoding:4];
        [v21 setName:v27];

        if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v31.__r_.__value_.__l.__data_);
        }

        [v21 setReadable:1];
        [v21 setWritable:0];
        [infoCopy addObject:v21];
      }
    }

    goto LABEL_41;
  }

  if (v8 != 1)
  {
    if (error)
    {
      v29 = [CADSPError _errorForUnsupportedRemoteProcessingBlockScope:v8 connectionType:@"graph properties"];
      v28 = 0;
      *error = v29;
      goto LABEL_45;
    }

LABEL_44:
    v28 = 0;
    goto LABEL_45;
  }

  for (j = *(self->_graph.__ptr_ + 80); j; j = *j)
  {
    if ((j[8] & 1) == 0)
    {
      v13 = [objc_alloc(MEMORY[0x1E69C6DF8]) initWithPropertyID:*(j + 4)];
      v14 = *(j + 4);
      v15 = bswap32(v14);
      v33 = v15;
      if ((v15 - 32) > 0x5E || ((v15 >> 8) - 32) > 0x5E || ((v15 << 8 >> 24) - 32) > 0x5E || ((v15 >> 24) - 32) > 0x5E)
      {
        std::to_string(&v31, v14);
      }

      else
      {
        v34 = 39;
        __s = 39;
        std::string::basic_string[abi:ne200100]<0>(&v31, &__s);
      }

      v16 = objc_alloc(MEMORY[0x1E696AEC0]);
      if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v17 = &v31;
      }

      else
      {
        v17 = v31.__r_.__value_.__r.__words[0];
      }

      if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v18 = HIBYTE(v31.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v18 = v31.__r_.__value_.__l.__size_;
      }

      v19 = [v16 initWithBytes:v17 length:v18 encoding:4];
      [v13 setName:v19];

      if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v31.__r_.__value_.__l.__data_);
      }

      [v13 setReadable:1];
      [v13 setWritable:1];
      [infoCopy addObject:v13];
    }
  }

LABEL_41:
  v28 = 1;
LABEL_45:

  return v28;
}

- (BOOL)setRemoteProcessingBlockParameter:(float)parameter forID:(unsigned int)d scope:(unsigned int)scope element:(unsigned int)element object:(id)object withError:(id *)error
{
  v9 = *&element;
  v10 = *&scope;
  v11 = *&d;
  objectCopy = object;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [(CADSPGraph *)self _hasRemoteProcessingBlockParameter:v11 scope:v10 element:v9 error:error])
  {
    *&v15 = parameter;
    v16 = [(CADSPGraph *)self setParameter:v11 forID:error error:v15];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (BOOL)getRemoteProcessingBlockParameter:(float *)parameter forID:(unsigned int)d scope:(unsigned int)scope element:(unsigned int)element object:(id)object withError:(id *)error
{
  v9 = *&element;
  v10 = *&scope;
  v11 = *&d;
  objectCopy = object;
  objc_opt_class();
  v15 = (objc_opt_isKindOfClass() & 1) != 0 && [(CADSPGraph *)self _hasRemoteProcessingBlockParameter:v11 scope:v10 element:v9 error:error]&& [(CADSPGraph *)self getParameter:parameter forID:v11 error:error];

  return v15;
}

- (BOOL)getRemoteProcessingBlockParameterInfo:(id)info forScope:(unsigned int)scope object:(id)object withError:(id *)error
{
  v8 = *&scope;
  v35 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  objectCopy = object;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_44;
  }

  if (v8 == 2)
  {
    for (i = *(self->_graph.__ptr_ + 75); i; i = *i)
    {
      if (*(i + 36) == 1)
      {
        v21 = [objc_alloc(MEMORY[0x1E69C6DF0]) initWithParameterID:*(i + 4)];
        v22 = *(i + 4);
        v23 = bswap32(v22);
        v33 = v23;
        if ((v23 - 32) > 0x5E || ((v23 >> 8) - 32) > 0x5E || ((v23 << 8 >> 24) - 32) > 0x5E || ((v23 >> 24) - 32) > 0x5E)
        {
          std::to_string(&v31, v22);
        }

        else
        {
          v34 = 39;
          __s = 39;
          std::string::basic_string[abi:ne200100]<0>(&v31, &__s);
        }

        v24 = objc_alloc(MEMORY[0x1E696AEC0]);
        if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v25 = &v31;
        }

        else
        {
          v25 = v31.__r_.__value_.__r.__words[0];
        }

        if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v31.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v31.__r_.__value_.__l.__size_;
        }

        v27 = [v24 initWithBytes:v25 length:size encoding:4];
        [v21 setName:v27];

        if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v31.__r_.__value_.__l.__data_);
        }

        [v21 setReadable:1];
        [v21 setWritable:0];
        [infoCopy addObject:v21];
      }
    }

    goto LABEL_41;
  }

  if (v8 != 1)
  {
    if (error)
    {
      v29 = [CADSPError _errorForUnsupportedRemoteProcessingBlockScope:v8 connectionType:@"graph parameters"];
      v28 = 0;
      *error = v29;
      goto LABEL_45;
    }

LABEL_44:
    v28 = 0;
    goto LABEL_45;
  }

  for (j = *(self->_graph.__ptr_ + 75); j; j = *j)
  {
    if ((*(j + 36) & 1) == 0)
    {
      v13 = [objc_alloc(MEMORY[0x1E69C6DF0]) initWithParameterID:*(j + 4)];
      v14 = *(j + 4);
      v15 = bswap32(v14);
      v33 = v15;
      if ((v15 - 32) > 0x5E || ((v15 >> 8) - 32) > 0x5E || ((v15 << 8 >> 24) - 32) > 0x5E || ((v15 >> 24) - 32) > 0x5E)
      {
        std::to_string(&v31, v14);
      }

      else
      {
        v34 = 39;
        __s = 39;
        std::string::basic_string[abi:ne200100]<0>(&v31, &__s);
      }

      v16 = objc_alloc(MEMORY[0x1E696AEC0]);
      if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v17 = &v31;
      }

      else
      {
        v17 = v31.__r_.__value_.__r.__words[0];
      }

      if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v18 = HIBYTE(v31.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v18 = v31.__r_.__value_.__l.__size_;
      }

      v19 = [v16 initWithBytes:v17 length:v18 encoding:4];
      [v13 setName:v19];

      if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v31.__r_.__value_.__l.__data_);
      }

      [v13 setReadable:1];
      [v13 setWritable:1];
      [infoCopy addObject:v13];
    }
  }

LABEL_41:
  v28 = 1;
LABEL_45:

  return v28;
}

- (BOOL)_hasRemoteProcessingBlockProperty:(unsigned int)property scope:(unsigned int)scope element:(unsigned int)element error:(id *)error
{
  v7 = *&element;
  v8 = *&scope;
  v13 = 0;
  LODWORD(v9) = [(CADSPGraph *)self getPropertyDirection:&v13 forID:*&property error:error];
  if (v9)
  {
    if ((v8 != 1 || v13) && (v8 != 2 || v13 != 1))
    {
      if (error)
      {
        v10 = [CADSPError _errorForUnsupportedRemoteProcessingBlockScope:v8 connectionType:@"graph properties"];
        goto LABEL_12;
      }

LABEL_13:
      LOBYTE(v9) = 0;
      return v9;
    }

    if (v7)
    {
      if (error)
      {
        v10 = [CADSPError _errorForUnsupportedRemoteProcessingBlockElement:v7 connectionType:@"graph properties"];
LABEL_12:
        v11 = v10;
        v9 = v10;
        LOBYTE(v9) = 0;
        *error = v11;
        return v9;
      }

      goto LABEL_13;
    }

    LOBYTE(v9) = 1;
  }

  return v9;
}

- (BOOL)_hasRemoteProcessingBlockParameter:(unsigned int)parameter scope:(unsigned int)scope element:(unsigned int)element error:(id *)error
{
  v7 = *&element;
  v8 = *&scope;
  v13 = 0;
  LODWORD(v9) = [(CADSPGraph *)self getParameterDirection:&v13 forID:*&parameter error:error];
  if (v9)
  {
    if ((v8 != 1 || v13) && (v8 != 2 || v13 != 1))
    {
      if (error)
      {
        v10 = [CADSPError _errorForUnsupportedRemoteProcessingBlockScope:v8 connectionType:@"graph parameters"];
        goto LABEL_12;
      }

LABEL_13:
      LOBYTE(v9) = 0;
      return v9;
    }

    if (v7)
    {
      if (error)
      {
        v10 = [CADSPError _errorForUnsupportedRemoteProcessingBlockElement:v7 connectionType:@"graph parameters"];
LABEL_12:
        v11 = v10;
        v9 = v10;
        LOBYTE(v9) = 0;
        *error = v11;
        return v9;
      }

      goto LABEL_13;
    }

    LOBYTE(v9) = 1;
  }

  return v9;
}

- (BOOL)setPropertyData:(const void *)data size:(unsigned int)size forID:(unsigned int)d error:(id *)error
{
  v7 = CADSPGraphSetProperty(self, d, data, *&size);
  v8 = v7;
  if (error && !v7)
  {
    *error = [CADSPError createWithRealTimeError:0];
  }

  return v8 != 0;
}

- (BOOL)getPropertyData:(void *)data size:(unsigned int *)size forID:(unsigned int)d error:(id *)error
{
  Property = CADSPGraphGetProperty(self, d, data, size);
  v8 = Property;
  if (error && !Property)
  {
    *error = [CADSPError createWithRealTimeError:0];
  }

  return v8 != 0;
}

- (BOOL)getPropertyInfo:(CADSPPropertyInfo *)info forID:(unsigned int)d error:(id *)error
{
  PropertyInfo = CADSPGraphGetPropertyInfo(self, d, info);
  v7 = PropertyInfo;
  if (error && !PropertyInfo)
  {
    *error = [CADSPError createWithRealTimeError:0];
  }

  return v7 != 0;
}

- (BOOL)getPropertyDirection:(unsigned int *)direction forID:(unsigned int)d error:(id *)error
{
  PropertyDirection = CADSPGraphGetPropertyDirection(self, d, direction);
  v7 = PropertyDirection;
  if (error && !PropertyDirection)
  {
    *error = [CADSPError createWithRealTimeError:0];
  }

  return v7 != 0;
}

- (BOOL)setParameter:(float)parameter forID:(unsigned int)d error:(id *)error
{
  v9 = 0;
  v6 = CADSPGraphSetParameter(self, parameter, *&d, &v9);
  v7 = v6;
  if (error && !v6)
  {
    *error = [CADSPError createWithRealTimeError:v9];
  }

  return v7 != 0;
}

- (BOOL)getParameter:(float *)parameter forID:(unsigned int)d error:(id *)error
{
  v9 = 0;
  Parameter = CADSPGraphGetParameter(self, d, parameter, &v9);
  v7 = Parameter;
  if (error && !Parameter)
  {
    *error = [CADSPError createWithRealTimeError:v9];
  }

  return v7 != 0;
}

- (BOOL)getParameterDirection:(unsigned int *)direction forID:(unsigned int)d error:(id *)error
{
  v9 = 0;
  ParameterDirection = CADSPGraphGetParameterDirection(self, d, direction, &v9);
  v7 = ParameterDirection;
  if (error && !ParameterDirection)
  {
    *error = [CADSPError createWithRealTimeError:v9];
  }

  return v7 != 0;
}

- (BOOL)getLatency:(double *)latency error:(id *)error
{
  Latency = CADSPGraphGetLatency(self, latency);
  v6 = Latency;
  if (error && !Latency)
  {
    *error = [CADSPError createWithRealTimeError:0];
  }

  return v6 != 0;
}

- (BOOL)initialize:(id *)initialize
{
  v77 = *MEMORY[0x1E69E9840];
  v3 = self->_graph.__ptr_;
  if ((*(v3 + 921) & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(buf, "graph is not configured. configure the graph before initializing");
    AudioDSPGraph::ThrowException(1667655457, buf, off_1E8335DC0);
  }

  if ((*(v3 + 922) & 1) == 0)
  {
    AudioDSPGraph::Graph::setGraphPropertiesInitialValues(*(v3 + 80), a2);
    AudioDSPGraph::Graph::setGraphParameterInitialValues(*(v3 + 75));
    *(v3 + 107) = 0;
    *(v3 + 55) = 0u;
    v5 = *(v3 + 44);
    v4 = *(v3 + 45);
    ptr = v3;
    if (v5 != v4)
    {
      v68 = *(v3 + 45);
      do
      {
        v6 = *v5;
        *(v6 + 256) = 0;
        *(v6 + 288) = 0;
        v7 = *(v6 + 268);
        v8 = v7;
        if (v7 == 1)
        {
          v8 = *(v6 + 272);
        }

        {
          AudioDSPGraph::getLog(void)::gLog = os_log_create("com.apple.coreaudio", "AudioDSPGraph");
        }

        v9 = os_signpost_id_make_with_pointer(AudioDSPGraph::getLog(void)::gLog, v6);
        v11 = *(v6 + 224);
        v10 = *(v6 + 232);
        if (v11 != v10)
        {
          v12 = v9;
          v13 = v9 - 1;
          do
          {
            v14 = *v11;
            (*(**v11 + 120))(*v11, v8);
            if (v7 >= 2)
            {
              (*(*v14 + 128))(v14, 1);
            }

            {
              AudioDSPGraph::getLog(void)::gLog = os_log_create("com.apple.coreaudio", "AudioDSPGraph");
            }

            if (v13 <= 0xFFFFFFFFFFFFFFFDLL)
            {
              v15 = AudioDSPGraph::getLog(void)::gLog;
              if (os_signpost_enabled(AudioDSPGraph::getLog(void)::gLog))
              {
                v16 = v14 + 40;
                if (v14[63] < 0)
                {
                  v16 = *v16;
                }

                *buf = 136315138;
                *&buf[4] = v16;
                _os_signpost_emit_with_name_impl(&dword_1C91AE000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v12, "Box::initialize", "%s", buf, 0xCu);
              }
            }

            (*(*v14 + 560))(v14);
            {
              AudioDSPGraph::getLog(void)::gLog = os_log_create("com.apple.coreaudio", "AudioDSPGraph");
            }

            if (v13 <= 0xFFFFFFFFFFFFFFFDLL)
            {
              v17 = AudioDSPGraph::getLog(void)::gLog;
              if (os_signpost_enabled(AudioDSPGraph::getLog(void)::gLog))
              {
                v18 = v14 + 40;
                if (v14[63] < 0)
                {
                  v18 = *v18;
                }

                *buf = 136315138;
                *&buf[4] = v18;
                _os_signpost_emit_with_name_impl(&dword_1C91AE000, v17, OS_SIGNPOST_INTERVAL_END, v12, "Box::initialize", "%s", buf, 0xCu);
              }
            }

            ++v11;
          }

          while (v11 != v10);
        }

        ++v5;
      }

      while (v5 != v68);
      v5 = *(ptr + 44);
      v4 = *(ptr + 45);
    }

    while (v5 != v4)
    {
      v19 = *(*v5 + 224);
      v20 = *(*v5 + 232);
      while (v19 != v20)
      {
        (*(**v19 + 592))(*v19);
        ++v19;
      }

      ++v5;
    }

    v21 = ptr;
    v22 = *(ptr + 840);
    if ((v22 & 4) != 0)
    {
      v23 = 0uLL;
      memset(buf, 0, sizeof(buf));
      v24 = *(ptr + 4);
      if (v24)
      {
        do
        {
          v71 = v24[2];
          std::vector<AudioDSPGraph::Box *>::push_back[abi:ne200100](buf, &v71);
          v24 = *v24;
        }

        while (v24);
        v23 = *buf;
      }

      v25 = v23;
      if (v23 != *(&v23 + 1))
      {
        v26 = v23;
        do
        {
          v27 = *v26;
          AudioDSPGraph::Box::upstreamLatencyInTicks(*v26);
          (*(*v27 + 368))(v27);
          ++v26;
        }

        while (v26 != *(&v25 + 1));
        if (v25 != *(&v25 + 1))
        {
          v28 = v25;
          do
          {
            v29 = *v28;
            (*(**v28 + 360))(*v28);
            if (*(v29 + 752) == 1)
            {
              *(v29 + 752) = 0;
            }

            ++v28;
          }

          while (v28 != *(&v25 + 1));
        }
      }

      if (v25)
      {
        operator delete(v25);
      }

      v21 = ptr;
      v22 = *(ptr + 840);
    }

    if ((v22 & 2) != 0)
    {
      v30 = *(v21 + 923);
    }

    else
    {
      v30 = 0;
    }

    *(v21 + 924) = v30 & 1;
    {
      AudioDSPGraph::getLog(void)::gLog = os_log_create("com.apple.coreaudio", "AudioDSPGraph");
    }

    v31 = os_signpost_id_make_with_pointer(AudioDSPGraph::getLog(void)::gLog, v21);
    {
      AudioDSPGraph::getLog(void)::gLog = os_log_create("com.apple.coreaudio", "AudioDSPGraph");
    }

    if (v31 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v32 = AudioDSPGraph::getLog(void)::gLog;
      if (os_signpost_enabled(AudioDSPGraph::getLog(void)::gLog))
      {
        if (*(ptr + 528) == 1)
        {
          v33 = (ptr + 504);
          if (*(ptr + 527) < 0)
          {
            v33 = *v33;
          }
        }

        else
        {
          v33 = 0;
        }

        *buf = 136315138;
        *&buf[4] = v33;
        _os_signpost_emit_with_name_impl(&dword_1C91AE000, v32, OS_SIGNPOST_INTERVAL_BEGIN, v31, "Graph::initializeBuffers", "%s", buf, 0xCu);
      }
    }

    *buf = ptr;
    *&buf[8] = 0u;
    v73 = 0u;
    v74 = 1065353216;
    memset(v75, 0, sizeof(v75));
    v76 = 1065353216;
    v34 = *(ptr + 44);
    v35 = *(ptr + 45);
    while (v34 != v35)
    {
      v36 = *(*v34 + 224);
      v37 = *(*v34 + 232);
      while (v36 != v37)
      {
        v38 = *v36;
        if ((*(**v36 + 8))(*v36))
        {
          AudioDSPGraph::BufferColorist::consumeInputs(buf, v38);
          AudioDSPGraph::BufferColorist::allocOutputs(buf, v38[12], v38[13]);
        }

        else
        {
          AudioDSPGraph::BufferColorist::allocOutputs(buf, v38[12], v38[13]);
          AudioDSPGraph::BufferColorist::consumeInputs(buf, v38);
        }

        ++v36;
      }

      v34 += 8;
    }

    std::__hash_table<std::__hash_value_type<unsigned int,std::vector<AudioDSPGraph::Buffer *>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::vector<AudioDSPGraph::Buffer *>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::vector<AudioDSPGraph::Buffer *>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::vector<AudioDSPGraph::Buffer *>>>>::~__hash_table(v75);
    std::__hash_table<std::__hash_value_type<unsigned int,std::vector<AudioDSPGraph::Buffer *>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::vector<AudioDSPGraph::Buffer *>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::vector<AudioDSPGraph::Buffer *>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::vector<AudioDSPGraph::Buffer *>>>>::~__hash_table(&buf[8]);
    for (i = *(ptr + 9); i; i = *i)
    {
      v40 = i[2];
      v41 = v40[15];
      v42 = v41[10];
      if (v42 == 1)
      {
        v42 = *(*(*(*(v40[4] + 16) + 8) + 24) + 272);
      }

      v43 = v40[7];
      v44 = v41[2];
      v45 = v41[4];
      v46 = 2 * v42 * v45;
      v47 = v45 * v42;
      if (v44 == 1819304813)
      {
        v45 = v47;
      }

      if (v44 == 1718773105)
      {
        v45 = v46;
      }

      if (v45 <= *(v43 + 100))
      {
        v45 = *(v43 + 100);
      }

      *(v43 + 100) = v45;
    }

    if ((*(ptr + 924) & 1) == 0)
    {
      v50 = *(ptr + 36);
      v51 = *(ptr + 37);
      while (v50 != v51)
      {
        v52 = *v50;
        AudioDSPGraph::SimpleABL::free((*v50 + 80));
        AudioDSPGraph::SimpleABL::alloc((v52 + 80), *(v52 + 96), *(v52 + 100), *(v52 + 108));
        ++v50;
      }
    }

    {
      AudioDSPGraph::getLog(void)::gLog = os_log_create("com.apple.coreaudio", "AudioDSPGraph");
    }

    if (v31 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v48 = AudioDSPGraph::getLog(void)::gLog;
      if (os_signpost_enabled(AudioDSPGraph::getLog(void)::gLog))
      {
        if (*(ptr + 528) == 1)
        {
          v49 = (ptr + 504);
          if (*(ptr + 527) < 0)
          {
            v49 = *v49;
          }
        }

        else
        {
          v49 = 0;
        }

        *buf = 136315138;
        *&buf[4] = v49;
        _os_signpost_emit_with_name_impl(&dword_1C91AE000, v48, OS_SIGNPOST_INTERVAL_END, v31, "Graph::initializeBuffers", "%s", buf, 0xCu);
      }
    }

    v53 = *(ptr + 132);
    v54 = *(ptr + 133);
    v70 = v54;
    while (v53 != v54)
    {
      v55 = *(v53 + 32);
      v56 = *(v53 + 40);
      while (v55 != v56)
      {
        PropertyInfo = AudioDSPGraph::Graph::getPropertyInfo(ptr, *v55);
        v58 = PropertyInfo;
        if ((v59 & 1) == 0)
        {
          std::string::basic_string[abi:ne200100]<0>(buf, "graph bridge property size could not be queried");
          AudioDSPGraph::ThrowException(v58, buf, off_1E8336300);
        }

        v60 = PropertyInfo;
        v62 = *(v55 + 8);
        v61 = *(v55 + 16);
        v63 = v58 >= &v61[-v62];
        v64 = v58 - &v61[-v62];
        if (v64 != 0 && v63)
        {
          v65 = *(v55 + 24);
          if (v65 - v61 < v64)
          {
            operator new();
          }

          v66 = &v61[v64];
          bzero(v61, v64);
          *(v55 + 16) = v66;
        }

        else if (!v63)
        {
          *(v55 + 16) = v62 + v60;
        }

        v55 += 32;
      }

      v53 += 56;
      v54 = v70;
    }

    *(ptr + 922) = 1;
  }

  return 1;
}

- (void)removeAllEventListeners
{
  v17 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = selfCopy->_eventListeners;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = *v13;
    do
    {
      v6 = 0;
      do
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v12 + 1) + 8 * v6);
        ptr = selfCopy->_graph.__ptr_;
        v9 = v7[1];
        v10 = v7[2];
        if (v10)
        {
          atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v11[0] = v9;
        v11[1] = v10;
        AudioDSPGraph::Graph::removeEventHandler(ptr, v11);
        if (v10)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v10);
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  [(NSMutableArray *)selfCopy->_eventListeners removeAllObjects];
  objc_sync_exit(selfCopy);
}

- (void)removeEventListener:(id)listener
{
  listenerCopy = listener;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(NSMutableArray *)selfCopy->_eventListeners containsObject:listenerCopy])
  {
    ptr = selfCopy->_graph.__ptr_;
    v6 = listenerCopy[1];
    v7 = listenerCopy[2];
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v9[0] = v6;
    v9[1] = v7;
    AudioDSPGraph::Graph::removeEventHandler(ptr, v9);
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }

    [(NSMutableArray *)selfCopy->_eventListeners removeObject:listenerCopy];
  }

  objc_sync_exit(selfCopy);
}

- (void)addEventListener:(id)listener
{
  listenerCopy = listener;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  eventListeners = selfCopy->_eventListeners;
  if (eventListeners)
  {
    if (([(NSMutableArray *)eventListeners containsObject:listenerCopy]& 1) == 0)
    {
      ptr = selfCopy->_graph.__ptr_;
      v8 = listenerCopy[1];
      v7 = listenerCopy[2];
      if (v7)
      {
        atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
      }

      *&v15 = v8;
      *(&v15 + 1) = v7;
      AudioDSPGraph::Graph::addEventHandler(ptr, &v15);
      if (*(&v15 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v15 + 1));
      }

      [(NSMutableArray *)selfCopy->_eventListeners addObject:listenerCopy];
    }
  }

  else
  {
    v9 = selfCopy->_graph.__ptr_;
    v11 = listenerCopy[1];
    v10 = listenerCopy[2];
    if (v10)
    {
      atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
    }

    *&v16 = v11;
    *(&v16 + 1) = v10;
    AudioDSPGraph::Graph::addEventHandler(v9, &v16);
    if (*(&v16 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v16 + 1));
    }

    v12 = [MEMORY[0x1E695DF70] arrayWithObject:listenerCopy];
    v13 = selfCopy->_eventListeners;
    selfCopy->_eventListeners = v12;
  }

  objc_sync_exit(selfCopy);
}

- (NSArray)eventListeners
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  eventListeners = selfCopy->_eventListeners;
  if (eventListeners)
  {
    v4 = [(NSMutableArray *)eventListeners copy];
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  objc_sync_exit(selfCopy);

  return v4;
}

@end