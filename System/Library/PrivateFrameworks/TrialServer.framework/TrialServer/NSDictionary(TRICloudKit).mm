@interface NSDictionary(TRICloudKit)
- (id)triArrayValueForField:()TRICloudKit isNestedValue:;
- (id)triDataForField:()TRICloudKit;
- (id)triDataValueFromBase64StringForField:()TRICloudKit;
- (id)triDateForField:()TRICloudKit;
- (id)triNumberValueForField:()TRICloudKit isNestedValue:;
- (id)triStringValueForField:()TRICloudKit isNestedValue:;
- (id)triValueFromNestedField:()TRICloudKit;
@end

@implementation NSDictionary(TRICloudKit)

- (id)triValueFromNestedField:()TRICloudKit
{
  v1 = [self objectForKeyedSubscript:?];
  v2 = [v1 objectForKeyedSubscript:@"value"];

  return v2;
}

- (id)triNumberValueForField:()TRICloudKit isNestedValue:
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (a4)
  {
    [self triValueFromNestedField:v6];
  }

  else
  {
    [self objectForKeyedSubscript:v6];
  }
  v7 = ;
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v9 = TRILogCategory_Server();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v12 = 138412290;
      v13 = objc_opt_class();
      v11 = v13;
      _os_log_error_impl(&dword_26F567000, v9, OS_LOG_TYPE_ERROR, "expected type NSNumber in dictionary field but got %@", &v12, 0xCu);
    }

    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  return v8;
}

- (id)triStringValueForField:()TRICloudKit isNestedValue:
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (a4)
  {
    [self triValueFromNestedField:v6];
  }

  else
  {
    [self objectForKeyedSubscript:v6];
  }
  v7 = ;
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v9 = TRILogCategory_Server();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v12 = 138412290;
      v13 = objc_opt_class();
      v11 = v13;
      _os_log_error_impl(&dword_26F567000, v9, OS_LOG_TYPE_ERROR, "expected type NSString in dictionary field but got %@", &v12, 0xCu);
    }

    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  return v8;
}

- (id)triArrayValueForField:()TRICloudKit isNestedValue:
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (a4)
  {
    [self triValueFromNestedField:v6];
  }

  else
  {
    [self objectForKeyedSubscript:v6];
  }
  v7 = ;
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v9 = TRILogCategory_Server();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v12 = 138412546;
      v13 = v6;
      v14 = 2112;
      v15 = objc_opt_class();
      v11 = v15;
      _os_log_error_impl(&dword_26F567000, v9, OS_LOG_TYPE_ERROR, "expected type NSArray in dictionary field %@ but got %@", &v12, 0x16u);
    }

    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  return v8;
}

- (id)triDataForField:()TRICloudKit
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [self objectForKeyedSubscript:?];
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v3 = TRILogCategory_Server();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v6 = 138412290;
      v7 = objc_opt_class();
      v5 = v7;
      _os_log_error_impl(&dword_26F567000, v3, OS_LOG_TYPE_ERROR, "expected type NSData in dictionary field but got %@", &v6, 0xCu);
    }

    v2 = 0;
  }

  else
  {
    v2 = v1;
  }

  return v2;
}

- (id)triDateForField:()TRICloudKit
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [self objectForKeyedSubscript:?];
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v3 = TRILogCategory_Server();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v6 = 138412290;
      v7 = objc_opt_class();
      v5 = v7;
      _os_log_error_impl(&dword_26F567000, v3, OS_LOG_TYPE_ERROR, "expected type NSDate in dictionary field but got %@", &v6, 0xCu);
    }

    v2 = 0;
  }

  else
  {
    v2 = v1;
  }

  return v2;
}

- (id)triDataValueFromBase64StringForField:()TRICloudKit
{
  v1 = [self triValueFromNestedField:?];
  if (v1)
  {
    v2 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v1 options:0];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end