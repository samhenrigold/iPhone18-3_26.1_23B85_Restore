@interface CADSPBox
- (BOOL)getParameter:(float *)parameter forID:(unsigned int)d scope:(unsigned int)scope element:(unsigned int)element error:(id *)error;
- (BOOL)getPropertyData:(void *)data size:(unsigned int *)size forID:(unsigned int)d scope:(unsigned int)scope element:(unsigned int)element error:(id *)error;
- (BOOL)getPropertyInfo:(CADSPPropertyInfo *)info forID:(unsigned int)d scope:(unsigned int)scope element:(unsigned int)element error:(id *)error;
- (BOOL)getRemoteProcessingBlockParameter:(float *)parameter forID:(unsigned int)d scope:(unsigned int)scope element:(unsigned int)element object:(id)object withError:(id *)error;
- (BOOL)getRemoteProcessingBlockParameterInfo:(id)info forScope:(unsigned int)scope object:(id)object withError:(id *)error;
- (BOOL)getRemoteProcessingBlockPropertyData:(void *)data size:(unint64_t *)size forID:(unsigned int)d scope:(unsigned int)scope element:(unsigned int)element object:(id)object withError:(id *)error;
- (BOOL)getRemoteProcessingBlockPropertyInfo:(id *)info forID:(unsigned int)d scope:(unsigned int)scope element:(unsigned int)element object:(id)object withError:(id *)error;
- (BOOL)setParameter:(float)parameter forID:(unsigned int)d scope:(unsigned int)scope element:(unsigned int)element error:(id *)error;
- (BOOL)setPropertyData:(const void *)data size:(unsigned int)size forID:(unsigned int)d scope:(unsigned int)scope element:(unsigned int)element error:(id *)error;
- (BOOL)setRemoteProcessingBlockParameter:(float)parameter forID:(unsigned int)d scope:(unsigned int)scope element:(unsigned int)element object:(id)object withError:(id *)error;
- (BOOL)setRemoteProcessingBlockPropertyData:(const void *)data size:(unint64_t)size forID:(unsigned int)d scope:(unsigned int)scope element:(unsigned int)element object:(id)object withError:(id *)error;
- (CADSPBox)initWithBox:(shared_ptr<AudioDSPGraph:(id)box :Box>)a3 model:;
- (CADSPBox)initWithModel:(id)model error:(id *)error;
- (NSArray)eventListeners;
- (id).cxx_construct;
- (void)addEventListener:(id)listener;
- (void)removeAllEventListeners;
- (void)removeEventListener:(id)listener;
@end

@implementation CADSPBox

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

- (CADSPBox)initWithBox:(shared_ptr<AudioDSPGraph:(id)box :Box>)a3 model:
{
  ptr = a3.__ptr_;
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3.__cntrl_;
  if (!*ptr)
  {
    v18 = 0;
    memset(v21, 0, sizeof(v21));
    v15 = MEMORY[0x1E69E9C10];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v16 = 3;
    }

    else
    {
      v16 = 2;
    }

    v19 = 134217984;
    v20 = 0;
    _os_log_send_and_compose_impl(v16, &v18, v21, 80, &dword_1C91AE000, v15, 16, "assertion failure: box != nullptr -> %llu", &v19);
    _os_crash_msg();
    __break(1u);
  }

  v17.receiver = self;
  v17.super_class = CADSPBox;
  v7 = [(CADSPBox *)&v17 init];
  v8 = v7;
  if (v7)
  {
    v9 = *ptr;
    v10 = *(ptr + 1);
    if (v10)
    {
      atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
    }

    cntrl = v7->_this.__cntrl_;
    v8->_this.__ptr_ = v9;
    v8->_this.__cntrl_ = v10;
    if (cntrl)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
      v9 = v8->_this.__ptr_;
    }

    *(v9 + 1) = v8;
    v12 = [(__shared_weak_count *)v6 copy];
    model = v8->_model;
    v8->_model = v12;
  }

  return v8;
}

- (CADSPBox)initWithModel:(id)model error:(id *)error
{
  v7 = *MEMORY[0x1E69E9840];
  modelCopy = model;
  AudioDSPGraph::BoxRegistry::BoxRegistry(v6);
}

- (BOOL)setRemoteProcessingBlockPropertyData:(const void *)data size:(unint64_t)size forID:(unsigned int)d scope:(unsigned int)scope element:(unsigned int)element object:(id)object withError:(id *)error
{
  v11 = *&d;
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    scopeCopy = scope;
    elementCopy = element;
    v16 = objectCopy;
    name = [v16 name];
    model = [(CADSPBox *)self model];
    name2 = [model name];
    v20 = [name isEqualToString:name2];

    if (v20)
    {
      v21 = [(CADSPBox *)self setPropertyData:data size:size forID:v11 scope:scopeCopy element:elementCopy error:error];
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (BOOL)getRemoteProcessingBlockPropertyData:(void *)data size:(unint64_t *)size forID:(unsigned int)d scope:(unsigned int)scope element:(unsigned int)element object:(id)object withError:(id *)error
{
  v9 = *&element;
  v10 = *&scope;
  v11 = *&d;
  objectCopy = object;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_6;
  }

  name = [objectCopy name];
  model = [(CADSPBox *)self model];
  name2 = [model name];
  v18 = [name isEqualToString:name2];

  if (!v18)
  {
    goto LABEL_6;
  }

  v24 = *size;
  if (data)
  {
    if ([(CADSPBox *)self getPropertyData:data size:&v24 forID:v11 scope:v10 element:v9 error:error])
    {
      *size = v24;
      LOBYTE(v19) = 1;
      goto LABEL_7;
    }

LABEL_6:
    LOBYTE(v19) = 0;
    goto LABEL_7;
  }

  v19 = [(CADSPBox *)self getPropertyInfo:v22 forID:v11 scope:v10 element:v9 error:error];
  if (v19)
  {
    *size = v23;
  }

LABEL_7:

  return v19;
}

- (BOOL)getRemoteProcessingBlockPropertyInfo:(id *)info forID:(unsigned int)d scope:(unsigned int)scope element:(unsigned int)element object:(id)object withError:(id *)error
{
  v9 = *&element;
  v10 = *&scope;
  v11 = *&d;
  objectCopy = object;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([objectCopy name], v14 = objc_claimAutoreleasedReturnValue(), -[CADSPBox model](self, "model"), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "name"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v14, "isEqualToString:", v16), v16, v15, v14, v17))
  {
    v18 = [(CADSPBox *)self getPropertyInfo:&v23 forID:v11 scope:v10 element:v9 error:error];
    if (v18)
    {
      v19 = [objc_alloc(MEMORY[0x1E69C6DF8]) initWithPropertyID:v11];
      [v19 setReadable:v23 & 1];
      [v19 setWritable:(v23 >> 1) & 1];
      v20 = v19;
      *info = v19;
    }
  }

  else
  {
    LOBYTE(v18) = 0;
  }

  return v18;
}

- (BOOL)setRemoteProcessingBlockParameter:(float)parameter forID:(unsigned int)d scope:(unsigned int)scope element:(unsigned int)element object:(id)object withError:(id *)error
{
  v9 = *&element;
  v10 = *&scope;
  v11 = *&d;
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    errorCopy = error;
    v15 = objectCopy;
    name = [v15 name];
    model = [(CADSPBox *)self model];
    name2 = [model name];
    v19 = [name isEqualToString:name2];

    if (v19)
    {
      *&v20 = parameter;
      LOBYTE(v19) = [(CADSPBox *)self setParameter:v11 forID:v10 scope:v9 element:errorCopy error:v20];
    }
  }

  else
  {
    LOBYTE(v19) = 0;
  }

  return v19;
}

- (BOOL)getRemoteProcessingBlockParameter:(float *)parameter forID:(unsigned int)d scope:(unsigned int)scope element:(unsigned int)element object:(id)object withError:(id *)error
{
  v10 = *&scope;
  v11 = *&d;
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    elementCopy = element;
    errorCopy = error;
    v15 = objectCopy;
    name = [v15 name];
    model = [(CADSPBox *)self model];
    name2 = [model name];
    v19 = [name isEqualToString:name2];

    if (v19)
    {
      v20 = [(CADSPBox *)self getParameter:parameter forID:v11 scope:v10 element:elementCopy error:errorCopy];
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (BOOL)getRemoteProcessingBlockParameterInfo:(id)info forScope:(unsigned int)scope object:(id)object withError:(id *)error
{
  v7 = *&scope;
  v75 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    ptr = self->_this.__ptr_;
    (*(*ptr + 104))(&v64, ptr, v7);
    v12 = v64;
    v13 = v65;
    if (v64 != v65)
    {
      v57 = objectCopy;
      v56 = *MEMORY[0x1E69C6E48];
      v55 = *MEMORY[0x1E69C6F08];
      v54 = *MEMORY[0x1E69C6EC0];
      v53 = *MEMORY[0x1E69C6E20];
      v52 = *MEMORY[0x1E69C6E18];
      v51 = *MEMORY[0x1E69C6ED0];
      v50 = *MEMORY[0x1E69C6E10];
      v49 = *MEMORY[0x1E69C6EB8];
      v48 = *MEMORY[0x1E69C6ED8];
      v47 = *MEMORY[0x1E69C6EC8];
      v46 = *MEMORY[0x1E69C6E68];
      v45 = *MEMORY[0x1E69C6E60];
      v44 = *MEMORY[0x1E69C6E90];
      v43 = *MEMORY[0x1E69C6E50];
      v42 = *MEMORY[0x1E69C6EA0];
      v41 = *MEMORY[0x1E69C6EA8];
      v40 = *MEMORY[0x1E69C6F10];
      v39 = *MEMORY[0x1E69C6E30];
      v38 = *MEMORY[0x1E69C6E80];
      v37 = *MEMORY[0x1E69C6F00];
      v36 = *MEMORY[0x1E69C6EE8];
      v35 = *MEMORY[0x1E69C6F18];
      v34 = *MEMORY[0x1E69C6F20];
      v33 = *MEMORY[0x1E69C6EE0];
      v32 = *MEMORY[0x1E69C6E28];
      v31 = *MEMORY[0x1E69C6E88];
      v14 = *MEMORY[0x1E69C6E78];
      v61 = *MEMORY[0x1E69C6EF0];
      v60 = *MEMORY[0x1E69C6EF8];
      v63 = *MEMORY[0x1E69C6E40];
      v59 = *MEMORY[0x1E69C6E38];
      v62 = *MEMORY[0x1E69C6E70];
      v58 = *MEMORY[0x1E69C6E98];
      v15 = *MEMORY[0x1E69C6EB0];
      v16 = *MEMORY[0x1E69C6E58];
      do
      {
        v17 = *v12;
        (*(*ptr + 112))(v66, ptr, v7, v17);
        if (v74 == 1)
        {
          v18 = [MEMORY[0x1E69C6DF0] createWithParameterID:v17];
          v19 = v18;
          if ((v73 & 0x8000000) != 0)
          {
            [v18 setName:v68];
            if ((v73 & 0x10) != 0)
            {
              CFRelease(v68);
            }
          }

          else
          {
            v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v66];
            [v19 setName:v20];
          }

          if ((v73 & 0x100000) != 0)
          {
            [v19 setClumpID:v67];
          }

          v22 = v14;
          switch(v69)
          {
            case 0:
              goto LABEL_38;
            case 1:
              v22 = v31;
              goto LABEL_38;
            case 2:
              v22 = v32;
              goto LABEL_38;
            case 3:
              v22 = v33;
              goto LABEL_38;
            case 4:
              v22 = v34;
              goto LABEL_38;
            case 5:
              v22 = v35;
              goto LABEL_38;
            case 6:
              v22 = v36;
              goto LABEL_38;
            case 7:
              v22 = v37;
              goto LABEL_38;
            case 8:
              v22 = v38;
              goto LABEL_38;
            case 9:
              v22 = v39;
              goto LABEL_38;
            case 10:
              v22 = v40;
              goto LABEL_38;
            case 11:
              v22 = v41;
              goto LABEL_38;
            case 12:
              v22 = v42;
              goto LABEL_38;
            case 13:
              v22 = v43;
              goto LABEL_38;
            case 14:
              v22 = v44;
              goto LABEL_38;
            case 15:
              v22 = v45;
              goto LABEL_38;
            case 16:
              v22 = v46;
              goto LABEL_38;
            case 17:
              v22 = v47;
              goto LABEL_38;
            case 18:
              v22 = v48;
              goto LABEL_38;
            case 19:
              v22 = v49;
              goto LABEL_38;
            case 20:
              v22 = v50;
              goto LABEL_38;
            case 21:
              v22 = v51;
              goto LABEL_38;
            case 22:
              v22 = v52;
              goto LABEL_38;
            case 23:
              v22 = v53;
              goto LABEL_38;
            case 24:
              v22 = v54;
              goto LABEL_38;
            case 25:
              v22 = v55;
              goto LABEL_38;
            case 26:
              v22 = v56;
LABEL_38:
              [v19 setUnit:v22];
              break;
            default:
              break;
          }

          LODWORD(v21) = v70;
          [v19 setMinValue:{v22, v21}];
          LODWORD(v23) = v71;
          [v19 setMaxValue:v23];
          LODWORD(v24) = v72;
          [v19 setDefaultValue:v24];
          v25 = v73;
          if ((v73 & 0x8000) != 0)
          {
            [v19 setFlags:{objc_msgSend(v19, "flags") | 2}];
            v25 = v73;
          }

          if ((v25 & 0x4000) != 0)
          {
            [v19 setFlags:{objc_msgSend(v19, "flags") | 4}];
            v25 = v73;
          }

          if ((v25 & 0x2000000) != 0)
          {
            [v19 setFlags:{objc_msgSend(v19, "flags") | 8}];
            v25 = v73;
          }

          if ((v25 & 0x10000) != 0)
          {
            [v19 setScale:v61];
            v25 = v73;
          }

          if ((v25 & 0x20000) != 0)
          {
            [v19 setScale:v60];
            v25 = v73;
          }

          if ((v25 & 0x30000) != 0)
          {
            [v19 setScale:v63];
            v25 = v73;
          }

          if ((v25 & 0x40000) != 0)
          {
            [v19 setScale:v59];
            v25 = v73;
          }

          if ((v25 & 0x50000) != 0)
          {
            [v19 setScale:v62];
            v25 = v73;
          }

          if ((v25 & 0x400000) != 0)
          {
            [v19 setScale:v58];
            v25 = v73;
          }

          if ((v25 & 0x800000) != 0)
          {
            v26 = v15;
          }

          else
          {
            v26 = v16;
          }

          [v19 setResolution:v26];
          if ((v73 & 0x1000000) != 0)
          {
            v27 = [v19 flags] & 0xFFFFFFFFFFFFFFFELL;
          }

          else
          {
            v27 = [v19 flags] | 1;
          }

          [v19 setFlags:v27];
          [v19 setReadable:(v73 >> 30) & 1];
          [v19 setWritable:v73 >> 31];
          v28 = [v19 copy];
          [infoCopy addObject:v28];
        }

        ++v12;
      }

      while (v12 != v13);
      v12 = v64;
      objectCopy = v57;
    }

    if (v12)
    {
      v65 = v12;
      operator delete(v12);
    }

    v29 = 1;
  }

  else
  {
    v29 = 0;
  }

  return v29;
}

- (BOOL)setPropertyData:(const void *)data size:(unsigned int)size forID:(unsigned int)d scope:(unsigned int)scope element:(unsigned int)element error:(id *)error
{
  v9 = CADSPBoxSetProperty(self, d | (*&scope << 32), element);
  v10 = v9;
  if (error && !v9)
  {
    *error = [CADSPError createWithRealTimeError:0];
  }

  return v10 != 0;
}

- (BOOL)getPropertyInfo:(CADSPPropertyInfo *)info forID:(unsigned int)d scope:(unsigned int)scope element:(unsigned int)element error:(id *)error
{
  PropertyInfo = CADSPBoxGetPropertyInfo(self, d | (*&scope << 32), element, info);
  v9 = PropertyInfo;
  if (error && !PropertyInfo)
  {
    *error = [CADSPError createWithRealTimeError:0];
  }

  return v9 != 0;
}

- (BOOL)getPropertyData:(void *)data size:(unsigned int *)size forID:(unsigned int)d scope:(unsigned int)scope element:(unsigned int)element error:(id *)error
{
  Property = CADSPBoxGetProperty(self, d | (*&scope << 32), element, data, size);
  v10 = Property;
  if (error && !Property)
  {
    *error = [CADSPError createWithRealTimeError:0];
  }

  return v10 != 0;
}

- (BOOL)setParameter:(float)parameter forID:(unsigned int)d scope:(unsigned int)scope element:(unsigned int)element error:(id *)error
{
  v11 = 0;
  v8 = CADSPBoxSetParameter(self, d | (*&scope << 32), element, &v11);
  v9 = v8;
  if (error && !v8)
  {
    *error = [CADSPError createWithRealTimeError:v11];
  }

  return v9 != 0;
}

- (BOOL)getParameter:(float *)parameter forID:(unsigned int)d scope:(unsigned int)scope element:(unsigned int)element error:(id *)error
{
  v11 = 0;
  Parameter = CADSPBoxGetParameter(self, d | (*&scope << 32), element, parameter, &v11);
  v9 = Parameter;
  if (error && !Parameter)
  {
    *error = [CADSPError createWithRealTimeError:v11];
  }

  return v9 != 0;
}

- (void)removeAllEventListeners
{
  v17 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
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
        ptr = selfCopy->_this.__ptr_;
        v9 = v7[1];
        v10 = v7[2];
        if (v10)
        {
          atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v11[0] = v9;
        v11[1] = v10;
        AudioDSPGraph::Box::removeEventHandler(ptr, v11);
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
    ptr = selfCopy->_this.__ptr_;
    v6 = listenerCopy[1];
    v7 = listenerCopy[2];
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v9[0] = v6;
    v9[1] = v7;
    AudioDSPGraph::Box::removeEventHandler(ptr, v9);
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
      ptr = selfCopy->_this.__ptr_;
      v8 = listenerCopy[1];
      v7 = listenerCopy[2];
      if (v7)
      {
        atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
      }

      *&v15 = v8;
      *(&v15 + 1) = v7;
      AudioDSPGraph::Box::addEventHandler(ptr, &v15);
      if (*(&v15 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v15 + 1));
      }

      [(NSMutableArray *)selfCopy->_eventListeners addObject:listenerCopy];
    }
  }

  else
  {
    v9 = selfCopy->_this.__ptr_;
    v11 = listenerCopy[1];
    v10 = listenerCopy[2];
    if (v10)
    {
      atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
    }

    *&v16 = v11;
    *(&v16 + 1) = v10;
    AudioDSPGraph::Box::addEventHandler(v9, &v16);
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