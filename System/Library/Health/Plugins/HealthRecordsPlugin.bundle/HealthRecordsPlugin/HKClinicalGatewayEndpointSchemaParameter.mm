@interface HKClinicalGatewayEndpointSchemaParameter
+ (id)parameterFromDefinition:(id)definition error:(id *)error;
+ (id)parametersFromDefinitions:(id)definitions error:(id *)error;
@end

@implementation HKClinicalGatewayEndpointSchemaParameter

+ (id)parametersFromDefinitions:(id)definitions error:(id *)error
{
  definitionsCopy = definitions;
  objc_opt_class();
  v6 = HKSafeObject();

  if (v6)
  {
    v7 = [v6 hk_map:&stru_108248 error:error];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)parameterFromDefinition:(id)definition error:(id *)error
{
  definitionCopy = definition;
  objc_opt_class();
  v6 = HKSafeObject();

  if (v6)
  {
    v7 = [v6 objectForKeyedSubscript:@"param"];
    objc_opt_class();
    v8 = HKSafeObject();

    if (v8)
    {
      v9 = objc_opt_class();
      v27 = 0;
      v10 = sub_6DAF0(v6, @"literal", v9, &v27);
      v11 = v27;
      v12 = v11;
      if (v10 || !v11)
      {

        v15 = objc_opt_class();
        v26 = 0;
        v16 = sub_6DAF0(v6, @"variable", v15, &v26);
        v17 = v26;
        v12 = v17;
        if (v16 || !v17)
        {

          v19 = objc_opt_class();
          v25 = 0;
          v20 = sub_6DAF0(v6, @"mode", v19, &v25);
          v21 = v25;
          v12 = v21;
          if (v20 || !v21)
          {
            v23 = [v20 hk_map:&stru_108268 error:error];
            if (v23 || ![v20 count])
            {
              v14 = [[HKClinicalGatewayEndpointSchemaParameter alloc] initWithParam:v8 literal:v10 variable:v16 mode:v23];
            }

            else
            {
              v14 = 0;
            }
          }

          else if (error)
          {
            v22 = v21;
            v14 = 0;
            *error = v12;
          }

          else
          {
            _HKLogDroppedError();
            v14 = 0;
          }
        }

        else if (error)
        {
          v18 = v17;
          v14 = 0;
          *error = v12;
        }

        else
        {
          _HKLogDroppedError();
          v14 = 0;
        }
      }

      else if (error)
      {
        v13 = v11;
        v14 = 0;
        *error = v12;
      }

      else
      {
        _HKLogDroppedError();
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

@end