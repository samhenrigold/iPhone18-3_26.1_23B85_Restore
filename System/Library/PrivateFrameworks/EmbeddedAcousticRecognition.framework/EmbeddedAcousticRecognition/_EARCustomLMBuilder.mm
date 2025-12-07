@interface _EARCustomLMBuilder
- (BOOL)getFstGrammar:(id)grammar overrideFolder:(id)folder weight:(float)weight errorOut:(id *)out;
- (_EARCustomLMBuilder)initWithConfiguration:(id)configuration;
- (id).cxx_construct;
@end

@implementation _EARCustomLMBuilder

- (_EARCustomLMBuilder)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  objc_msgSend_tokenizerWithModelRoot_(_EARQuasarTokenizer);
  ptr = self->_tokenizer.__ptr_;
  self->_tokenizer.__ptr_ = __p;
  if (ptr)
  {
    (*(*ptr + 8))(ptr);
  }

  v6 = [configurationCopy stringByAppendingPathComponent:{@"mini.json", 0}];
  if (v6)
  {
    objc_msgSend_ear_toString(v6);
  }

  operator new();
}

- (BOOL)getFstGrammar:(id)grammar overrideFolder:(id)folder weight:(float)weight errorOut:(id *)out
{
  v26 = *MEMORY[0x1E69E9840];
  folderCopy = folder;
  weightCopy = weight;
  v10 = [grammar mutableCopy];
  v16 = 0;
  v17 = &v16;
  v18 = 0x4812000000;
  v19 = __Block_byref_object_copy__10;
  v20 = __Block_byref_object_dispose__10;
  v21 = &unk_1B5CADD23;
  v23 = 0;
  v24 = 0;
  v22 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __68___EARCustomLMBuilder_getFstGrammar_overrideFolder_weight_errorOut___block_invoke;
  v15[3] = &unk_1E7C1A410;
  v15[4] = &v16;
  [v10 enumerateObjectsUsingBlock:v15];
  ptr = self->_customLMBuilder.__ptr_;
  v12 = v17;
  if (folderCopy)
  {
    objc_msgSend_ear_toString(folderCopy);
  }

  else
  {
    memset(&__p, 0, sizeof(__p));
  }

  quasar::CustomLMBuilder::getFstGrammar(ptr, (v12 + 6), &__p, &weightCopy);
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

@end