@interface _EARLmEvaluator
+ (void)initialize;
- (BOOL)runEvaluationWithData:(id)data handle:(id)handle result:(id *)result bestWeight:(float *)weight;
- (_EARLmEvaluator)initWithConfiguration:(id)configuration root:(id)root recognizerConfiguration:(id)recognizerConfiguration;
- (id).cxx_construct;
@end

@implementation _EARLmEvaluator

+ (void)initialize
{
  v3 = objc_opt_class();
  if (v3 == self)
  {

    EARLogger::initializeLogging(v3);
  }
}

- (_EARLmEvaluator)initWithConfiguration:(id)configuration root:(id)root recognizerConfiguration:(id)recognizerConfiguration
{
  v21 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  rootCopy = root;
  recognizerConfigurationCopy = recognizerConfiguration;
  v18.receiver = self;
  v18.super_class = _EARLmEvaluator;
  v11 = [(_EARLmEvaluator *)&v18 init];
  if (v11)
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v13 = [defaultManager fileExistsAtPath:configurationCopy];

    if (v13)
    {
      if (configurationCopy)
      {
        objc_msgSend_ear_toString(configurationCopy);
        if (rootCopy)
        {
          goto LABEL_5;
        }
      }

      else
      {
        buf = 0uLL;
        v20 = 0;
        if (rootCopy)
        {
LABEL_5:
          objc_msgSend_ear_toString(rootCopy);
          if (!recognizerConfigurationCopy)
          {
            goto LABEL_12;
          }

          goto LABEL_6;
        }
      }

      if (!recognizerConfigurationCopy)
      {
LABEL_12:
        std::allocate_shared[abi:ne200100]<quasar::LmEvaluator,std::allocator<quasar::LmEvaluator>,std::string,std::string,std::string,0>();
      }

LABEL_6:
      objc_msgSend_ear_toString(recognizerConfigurationCopy);
      goto LABEL_12;
    }

    v15 = EarLmLogger(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = configurationCopy;
      _os_log_impl(&dword_1B501D000, v15, OS_LOG_TYPE_DEFAULT, "File does not exist %@", &buf, 0xCu);
    }

    v16 = 0;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (BOOL)runEvaluationWithData:(id)data handle:(id)handle result:(id *)result bestWeight:(float *)weight
{
  v21[9] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  handleCopy = handle;
  if (result)
  {
    *result = 0;
  }

  v12 = quasar::PTree::PTree(v21);
  if (handleCopy)
  {
    objc_msgSend_handle(handleCopy, v12);
  }

  else
  {
    v19 = 0;
    v20 = 0;
  }

  ptr = self->_evaluator.__ptr_;
  objc_msgSend_data(dataCopy);
  quasar::LmEvaluator::runEvaluation(ptr, v17, &v19, v21, weight, self->_roundingEnabled, 0);
  v15 = v14;
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  if (result)
  {
    *result = EARHelpers::dictFromPTree(v21, 1);
  }

  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  quasar::PTree::~PTree(v21);

  return v15;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

@end