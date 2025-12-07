@interface _MLCANEModel
+ (id)objectWithModel:(id)model options:(id)options qos:(unsigned int)qos plist:(id)plist;
- (_MLCANEModel)initWithModel:(id)model options:(id)options qos:(unsigned int)qos plist:(id)plist;
- (void)dealloc;
@end

@implementation _MLCANEModel

+ (id)objectWithModel:(id)model options:(id)options qos:(unsigned int)qos plist:(id)plist
{
  v6 = *&qos;
  plistCopy = plist;
  optionsCopy = options;
  modelCopy = model;
  v13 = [[self alloc] initWithModel:modelCopy options:optionsCopy qos:v6 plist:plistCopy];

  return v13;
}

- (_MLCANEModel)initWithModel:(id)model options:(id)options qos:(unsigned int)qos plist:(id)plist
{
  modelCopy = model;
  optionsCopy = options;
  plistCopy = plist;
  v17.receiver = self;
  v17.super_class = _MLCANEModel;
  v14 = [(_MLCANEModel *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_anefModel, model);
    objc_storeStrong(&v15->_options, options);
    v15->_qos = qos;
    objc_storeStrong(&v15->_plist, plist);
  }

  return v15;
}

- (void)dealloc
{
  v19 = *MEMORY[0x277D85DE8];
  anefModel = self->_anefModel;
  qos = self->_qos;
  v12 = 0;
  v6 = [(_ANEInMemoryModel *)anefModel unloadWithQoS:qos error:&v12];
  v7 = v12;
  if ((v6 & 1) == 0)
  {
    v8 = +[MLCLog framework];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = NSStringFromSelector(a2);
      v10 = self->_anefModel;
      *buf = 138412802;
      v14 = v9;
      v15 = 2112;
      v16 = v10;
      v17 = 2112;
      v18 = v7;
      _os_log_error_impl(&dword_238C1D000, v8, OS_LOG_TYPE_ERROR, "%@: failed to unload model=%@ : error=%@", buf, 0x20u);
    }
  }

  v11.receiver = self;
  v11.super_class = _MLCANEModel;
  [(_MLCANEModel *)&v11 dealloc];
}

@end