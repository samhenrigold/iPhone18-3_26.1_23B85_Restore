@interface TGTextGenerationResource
+ (id)createWithResourceDict:(id)dict;
- (BOOL)isEqual:(id)equal;
- (TGTextGenerationResource)initWithType:(unint64_t)type url:(id)url;
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation TGTextGenerationResource

+ (id)createWithResourceDict:(id)dict
{
  dictCopy = dict;
  v4 = [dictCopy objectForKeyedSubscript:@"path"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [dictCopy objectForKeyedSubscript:@"path"];

    if (v5)
    {
      v8 = [dictCopy objectForKeyedSubscript:@"type"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = [dictCopy objectForKeyedSubscript:@"type"];

        if (v9)
        {
          intValue = [v9 intValue];
          v14 = intValue;
          if (intValue < 2)
          {
            v15 = [dictCopy objectForKeyedSubscript:@"e5FunctionName"];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v16 = [dictCopy objectForKeyedSubscript:@"e5FunctionName"];
            }

            else
            {
              v16 = 0;
            }

            if (v14 != 1 || v16)
            {
              v23 = [TGMutableTextGenerationResource alloc];
              v24 = [MEMORY[0x277CBEBC0] fileURLWithPath:v5];
              v17 = [(TGTextGenerationResource *)v23 initWithType:v14 url:v24];

              [(TGTextGenerationResource *)v17 setE5FunctionName:v16];
            }

            else
            {
              v22 = _nlpDefaultLog(v20, v21);
              if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
              {
                +[TGTextGenerationResource createWithResourceDict:];
              }

              v17 = 0;
            }

            goto LABEL_16;
          }

          v19 = _nlpDefaultLog(intValue, v13);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            [(TGTextGenerationResource *)dictCopy createWithResourceDict:v14, v19];
          }

LABEL_15:
          v17 = 0;
LABEL_16:

          goto LABEL_17;
        }
      }

      else
      {
      }

      v9 = _nlpDefaultLog(v10, v11);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        +[TGTextGenerationResource createWithResourceDict:];
      }

      goto LABEL_15;
    }
  }

  else
  {
  }

  v5 = _nlpDefaultLog(v6, v7);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    +[TGTextGenerationResource createWithResourceDict:];
  }

  v17 = 0;
LABEL_17:

  return v17;
}

- (TGTextGenerationResource)initWithType:(unint64_t)type url:(id)url
{
  v19[2] = *MEMORY[0x277D85DE8];
  urlCopy = url;
  v17.receiver = self;
  v17.super_class = TGTextGenerationResource;
  v7 = [(TGTextGenerationResource *)&v17 init];
  v8 = v7;
  if (v7)
  {
    v7->_type = type;
    v9 = [urlCopy copy];
    url = v8->_url;
    v8->_url = v9;

    v18[0] = @"type";
    type = v8->_type;
    if (type == 1)
    {
      v12 = @"Foundation Language Model";
    }

    else if (type)
    {
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown resource type: %d", v8->_type];
    }

    else
    {
      v12 = @"Sentence Piece Tokenizer";
    }

    v18[1] = @"url";
    v19[0] = v12;
    v19[1] = v8->_url;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];
    v14 = [v13 description];
    description = v8->_description;
    v8->_description = v14;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [TGTextGenerationResource alloc];
  type = [(TGTextGenerationResource *)self type];
  v6 = [(TGTextGenerationResource *)self url];
  v7 = [(TGTextGenerationResource *)v4 initWithType:type url:v6];

  e5FunctionName = [(TGTextGenerationResource *)self e5FunctionName];
  [(TGTextGenerationResource *)v7 setE5FunctionName:e5FunctionName];

  return v7;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [TGMutableTextGenerationResource alloc];
  type = [(TGTextGenerationResource *)self type];
  v6 = [(TGTextGenerationResource *)self url];
  v7 = [(TGTextGenerationResource *)v4 initWithType:type url:v6];

  e5FunctionName = [(TGTextGenerationResource *)self e5FunctionName];
  [(TGTextGenerationResource *)v7 setE5FunctionName:e5FunctionName];

  return v7;
}

- (unint64_t)hash
{
  type = [(TGTextGenerationResource *)self type];
  v4 = [(TGTextGenerationResource *)self url];
  v5 = [v4 hash] ^ type;

  e5FunctionName = [(TGTextGenerationResource *)self e5FunctionName];
  v7 = [e5FunctionName hash];

  return v5 ^ v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v6 && (v7 = -[TGTextGenerationResource type](self, "type"), v7 == [v6 type]))
  {
    v8 = [(TGTextGenerationResource *)self url];
    v9 = [v6 url];
    if ([v8 isEqual:v9])
    {
      e5FunctionName = [(TGTextGenerationResource *)self e5FunctionName];
      e5FunctionName2 = [v6 e5FunctionName];
      v12 = TGTextGenerationEqualAllowingNil(e5FunctionName, e5FunctionName2);
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (void)createWithResourceDict:(os_log_t)log .cold.1(uint64_t a1, int a2, os_log_t log)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 67109378;
  v3[1] = a2;
  v4 = 2112;
  v5 = a1;
  _os_log_error_impl(&dword_26D3B8000, log, OS_LOG_TYPE_ERROR, "Invalid type: %d for resource type in config dictionary: %@", v3, 0x12u);
}

+ (void)createWithResourceDict:.cold.2()
{
  v6 = 138412546;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_26D3B8000, v0, v1, "Missing E5 function name key: %@ in configuration: %@ for foundation model", v2, v3, v4, v5, v6);
}

+ (void)createWithResourceDict:.cold.3()
{
  v6 = 138412546;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_26D3B8000, v0, v1, "Missing type key: %@ in config dictionary: %@", v2, v3, v4, v5, v6);
}

+ (void)createWithResourceDict:.cold.4()
{
  v6 = 138412546;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_26D3B8000, v0, v1, "Missing path key: %@ in config dictionary: %@", v2, v3, v4, v5, v6);
}

@end