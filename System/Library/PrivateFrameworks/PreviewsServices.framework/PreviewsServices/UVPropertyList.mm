@interface UVPropertyList
- (NSData)data;
- (NSDictionary)dictionary;
- (UVPropertyList)initWithData:(id)data;
- (UVPropertyList)initWithDictionary:(id)dictionary;
- (UVPropertyList)initWithXpcDictionary:(id)dictionary;
- (id)_initWithAnyCoder:(id)coder;
- (void)_encodeWithAnyCoder:(id)coder;
- (void)data;
- (void)dictionary;
- (void)encodeToXpcDictionary:(id)dictionary;
@end

@implementation UVPropertyList

- (UVPropertyList)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = UVPropertyList;
  v6 = [(UVPropertyList *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dictionary, dictionary);
    data = v7->_data;
    v7->_data = 0;
  }

  return v7;
}

- (UVPropertyList)initWithData:(id)data
{
  dataCopy = data;
  v10.receiver = self;
  v10.super_class = UVPropertyList;
  v6 = [(UVPropertyList *)&v10 init];
  v7 = v6;
  if (v6)
  {
    dictionary = v6->_dictionary;
    v6->_dictionary = 0;

    objc_storeStrong(&v7->_data, data);
  }

  return v7;
}

- (NSDictionary)dictionary
{
  v33 = *MEMORY[0x277D85DE8];
  dictionary = self->_dictionary;
  if (dictionary)
  {
    dictionary2 = dictionary;
  }

  else
  {
    data = self->_data;
    v27 = 0;
    v5 = [MEMORY[0x277CCAC58] propertyListWithData:data options:0 format:0 error:&v27];
    v6 = v27;
    v7 = v6;
    if (v5)
    {
      objc_opt_class();
      objc_opt_class();
      dictionary2 = v5;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v30 = 0u;
        v31 = 0u;
        v28 = 0u;
        v29 = 0u;
        allKeys = [(NSDictionary *)dictionary2 allKeys];
        v9 = [allKeys countByEnumeratingWithState:&v28 objects:v32 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v29;
          while (2)
          {
            for (i = 0; i != v10; ++i)
            {
              if (*v29 != v11)
              {
                objc_enumerationMutation(allKeys);
              }

              v13 = *(*(&v28 + 1) + 8 * i);
              if (objc_opt_isKindOfClass())
              {
                v14 = [(NSDictionary *)dictionary2 objectForKey:v13];
                isKindOfClass = objc_opt_isKindOfClass();

                if (isKindOfClass)
                {
                  continue;
                }
              }

              goto LABEL_20;
            }

            v10 = [allKeys countByEnumeratingWithState:&v28 objects:v32 count:16];
            if (v10)
            {
              continue;
            }

            break;
          }
        }
      }

      else
      {

LABEL_20:
        v24 = UVLog(v23);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          [(UVPropertyList *)v24 dictionary];
        }

        dictionary = [MEMORY[0x277CBEAC0] dictionary];

        dictionary2 = dictionary;
      }
    }

    else
    {
      v16 = UVLog(v6);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [(UVPropertyList *)v7 dictionary:v16];
      }

      dictionary2 = [MEMORY[0x277CBEAC0] dictionary];
    }
  }

  return dictionary2;
}

- (NSData)data
{
  data = self->_data;
  if (data)
  {
    data = data;
  }

  else
  {
    dictionary = self->_dictionary;
    v15 = 0;
    data = [MEMORY[0x277CCAC58] dataWithPropertyList:dictionary format:200 options:0 error:&v15];
    v5 = v15;
    v6 = v5;
    if (!data)
    {
      v7 = UVLog(v5);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [(UVPropertyList *)v6 data:v7];
      }

      data = [MEMORY[0x277CBEA90] data];
    }
  }

  return data;
}

- (void)_encodeWithAnyCoder:(id)coder
{
  coderCopy = coder;
  data = [(UVPropertyList *)self data];
  [coderCopy encodeObject:data forKey:@"data"];
}

- (id)_initWithAnyCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"data"];

  if (!v5)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"UVPropertyList missing serialization"];
  }

  v6 = [(UVPropertyList *)self initWithData:v5];

  return v6;
}

- (void)encodeToXpcDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [[UVRawXPCCoder alloc] initWithXpcDictionary:dictionaryCopy];

  [(UVPropertyList *)self _encodeWithAnyCoder:v5];
}

- (UVPropertyList)initWithXpcDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [[UVRawXPCDecoder alloc] initWithXpcDictionary:dictionaryCopy];
  v6 = [(UVPropertyList *)self _initWithAnyCoder:v5];

  return v6;
}

- (void)dictionary
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = self;
  OUTLINED_FUNCTION_0(&dword_25F533000, a2, a3, "UVPropertyList data could not be deserialized: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)data
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = self;
  OUTLINED_FUNCTION_0(&dword_25F533000, a2, a3, "UVPropertyList dictionary could not be serialized: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithXpcDictionary:(uint64_t)a3 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_0(&dword_25F533000, a2, a3, "UVPropertyList XPC dictionary could not be serialized: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end