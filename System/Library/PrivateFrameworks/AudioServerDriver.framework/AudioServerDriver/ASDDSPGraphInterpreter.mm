@interface ASDDSPGraphInterpreter
+ (id)compileFile:(id)file withSubstitutions:(id)substitutions includingPaths:(id)paths;
+ (id)compileText:(id)text withSubstitutions:(id)substitutions includingPaths:(id)paths;
+ (unordered_map<std::string,)stringMapFromStringDictionary:()std:()std:(std:(std:(id)std :(SEL)a3 string>>> *__return_ptr)retstr :(id)a4 allocator<std::pair<const)std::string :equal_to<std::string> :hash<std::string>;
+ (vector<std::string,)stringVectorFromStringArray:(id)array;
- (ASDDSPGraphInterpreter)init;
- (id)compileFile:(id)file withSubstitutions:(id)substitutions includingPaths:(id)paths;
- (id)compileText:(id)text withSubstitutions:(id)substitutions includingPaths:(id)paths;
@end

@implementation ASDDSPGraphInterpreter

- (ASDDSPGraphInterpreter)init
{
  v12 = *MEMORY[0x277D85DE8];
  v8.receiver = self;
  v8.super_class = ASDDSPGraphInterpreter;
  v2 = [(ASDDSPGraphInterpreter *)&v8 init];
  if (!v2)
  {
    return 0;
  }

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __30__ASDDSPGraphInterpreter_init__block_invoke;
  v6[3] = &unk_278CE3AD0;
  v3 = v2;
  v7 = v3;
  v9 = &unk_2853444C8;
  v10 = 0;
  v11 = &v9;
  v4 = ASDDSP::exceptionBarrier<BOOL({block_pointer} {__strong})(void)>(v6);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](&v9);
  if ((v4 & 1) == 0)
  {

    v3 = 0;
  }

  return v3;
}

+ (id)compileFile:(id)file withSubstitutions:(id)substitutions includingPaths:(id)paths
{
  fileCopy = file;
  substitutionsCopy = substitutions;
  pathsCopy = paths;
  v10 = objc_alloc_init(objc_opt_class());
  v11 = [v10 compileFile:fileCopy withSubstitutions:substitutionsCopy includingPaths:pathsCopy];

  return v11;
}

+ (id)compileText:(id)text withSubstitutions:(id)substitutions includingPaths:(id)paths
{
  textCopy = text;
  substitutionsCopy = substitutions;
  pathsCopy = paths;
  v10 = objc_alloc_init(objc_opt_class());
  v11 = [v10 compileText:textCopy withSubstitutions:substitutionsCopy includingPaths:pathsCopy];

  return v11;
}

- (id)compileFile:(id)file withSubstitutions:(id)substitutions includingPaths:(id)paths
{
  v20[4] = *MEMORY[0x277D85DE8];
  fileCopy = file;
  substitutionsCopy = substitutions;
  pathsCopy = paths;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __71__ASDDSPGraphInterpreter_compileFile_withSubstitutions_includingPaths___block_invoke;
  v16[3] = &unk_278CE41B8;
  v16[4] = self;
  v17 = fileCopy;
  v18 = substitutionsCopy;
  v19 = pathsCopy;
  v20[0] = &unk_285344510;
  v20[1] = 0;
  v20[3] = v20;
  v11 = pathsCopy;
  v12 = substitutionsCopy;
  v13 = fileCopy;
  v14 = ASDDSP::exceptionBarrier<objc_object *({block_pointer} {__strong})(void)>(v16);
  std::__function::__value_func<objc_object * ()(void)>::~__value_func[abi:ne200100](v20);

  return v14;
}

ASDDSPGraph *__71__ASDDSPGraphInterpreter_compileFile_withSubstitutions_includingPaths___block_invoke(uint64_t a1)
{
  [*(a1 + 40) UTF8String];
  v1 = objc_opt_class();
  if (v1)
  {
    objc_msgSend_stringMapFromStringDictionary_(v1);
  }

  else
  {
    v6 = 0;
    memset(v5, 0, sizeof(v5));
  }

  v2 = objc_opt_class();
  if (v2)
  {
    objc_msgSend_stringVectorFromStringArray_(v2);
  }

  else
  {
    memset(v4, 0, sizeof(v4));
  }

  DSPGraph::Interpreter::compileFile();
  if (v7)
  {
    operator new();
  }

  v7 = 0;
  v8 = v4;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v8);
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(v5);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __71__ASDDSPGraphInterpreter_compileFile_withSubstitutions_includingPaths___block_invoke_cold_2();
  }

  return 0;
}

- (id)compileText:(id)text withSubstitutions:(id)substitutions includingPaths:(id)paths
{
  v20[4] = *MEMORY[0x277D85DE8];
  textCopy = text;
  substitutionsCopy = substitutions;
  pathsCopy = paths;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __71__ASDDSPGraphInterpreter_compileText_withSubstitutions_includingPaths___block_invoke;
  v16[3] = &unk_278CE41B8;
  v16[4] = self;
  v17 = textCopy;
  v18 = substitutionsCopy;
  v19 = pathsCopy;
  v20[0] = &unk_285344510;
  v20[1] = 0;
  v20[3] = v20;
  v11 = pathsCopy;
  v12 = substitutionsCopy;
  v13 = textCopy;
  v14 = ASDDSP::exceptionBarrier<objc_object *({block_pointer} {__strong})(void)>(v16);
  std::__function::__value_func<objc_object * ()(void)>::~__value_func[abi:ne200100](v20);

  return v14;
}

ASDDSPGraph *__71__ASDDSPGraphInterpreter_compileText_withSubstitutions_includingPaths___block_invoke(uint64_t a1)
{
  [*(a1 + 40) UTF8String];
  v1 = objc_opt_class();
  if (v1)
  {
    objc_msgSend_stringMapFromStringDictionary_(v1);
  }

  else
  {
    v6 = 0;
    memset(v5, 0, sizeof(v5));
  }

  v2 = objc_opt_class();
  if (v2)
  {
    objc_msgSend_stringVectorFromStringArray_(v2);
  }

  else
  {
    memset(v4, 0, sizeof(v4));
  }

  DSPGraph::Interpreter::compileText();
  if (v7)
  {
    operator new();
  }

  v7 = 0;
  v8 = v4;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v8);
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(v5);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __71__ASDDSPGraphInterpreter_compileText_withSubstitutions_includingPaths___block_invoke_cold_2();
  }

  return 0;
}

+ (unordered_map<std::string,)stringMapFromStringDictionary:()std:()std:(std:(std:(id)std :(SEL)a3 string>>> *__return_ptr)retstr :(id)a4 allocator<std::pair<const)std::string :equal_to<std::string> :hash<std::string>
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a4;
  retstr->var0.var0 = 0u;
  *&retstr->var0.var1.var0 = 0u;
  retstr->var0.var3 = 1.0;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v6 objectForKeyedSubscript:v10];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = v10;
          [v10 UTF8String];
          v13 = v11;
          [v11 UTF8String];
          std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_impl<char const*,char const*>(retstr);
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  return result;
}

+ (vector<std::string,)stringVectorFromStringArray:(id)array
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a4;
  retstr->var1 = 0;
  retstr->var2 = 0;
  retstr->var0 = 0;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v7)
  {
    v8 = *v17;
    do
    {
      v9 = 0;
      do
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v16 + 1) + 8 * v9);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = v10;
          uTF8String = [v10 UTF8String];
          v20 = uTF8String;
          var1 = retstr->var1;
          if (var1 >= retstr->var2)
          {
            v14 = std::vector<std::string>::__emplace_back_slow_path<char const*>(retstr, &v20);
          }

          else
          {
            std::string::basic_string[abi:ne200100]<0>(retstr->var1, uTF8String);
            v14 = var1 + 24;
          }

          retstr->var1 = v14;
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v7);
  }

  return result;
}

@end