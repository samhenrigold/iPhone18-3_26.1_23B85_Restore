@interface HKClinicalGatewayEndpointSchema
+ (id)endpointSchemaFromDefinition:(id)definition error:(id *)error;
+ (id)endpointSchemasFromDefinitions:(id)definitions error:(id *)error;
@end

@implementation HKClinicalGatewayEndpointSchema

+ (id)endpointSchemasFromDefinitions:(id)definitions error:(id *)error
{
  definitionsCopy = definitions;
  objc_opt_class();
  v6 = HKSafeObject();

  if (v6)
  {
    v7 = [v6 hk_map:&stru_108228 error:error];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)endpointSchemaFromDefinition:(id)definition error:(id *)error
{
  definitionCopy = definition;
  objc_opt_class();
  v6 = HKSafeObject();
  if (!v6)
  {
    v25 = 0;
    goto LABEL_42;
  }

  v7 = objc_opt_class();
  v8 = sub_6DA38(v6, @"auth", v7, error);
  if (v8)
  {
    v9 = objc_opt_class();
    v10 = sub_6DA38(v6, @"enabled", v9, error);
    if (!v10)
    {
      v25 = 0;
LABEL_40:

      goto LABEL_41;
    }

    v11 = objc_opt_class();
    v12 = sub_6DA38(v6, @"method", v11, error);
    if (!v12)
    {
      v25 = 0;
LABEL_39:

      goto LABEL_40;
    }

    v13 = objc_opt_class();
    v14 = sub_6DA38(v6, @"minCompatibleApiVersion", v13, error);
    if (!v14)
    {
      v25 = 0;
LABEL_38:

      goto LABEL_39;
    }

    v15 = objc_opt_class();
    v16 = sub_6DA38(v6, @"name", v15, error);
    if (!v16)
    {
      v25 = 0;
LABEL_37:

      goto LABEL_38;
    }

    v17 = objc_opt_class();
    v18 = sub_6DA38(v6, @"url", v17, error);
    if (!v18)
    {
      v25 = 0;
LABEL_36:

      goto LABEL_37;
    }

    v46 = v18;
    v19 = objc_opt_class();
    v47 = 0;
    v20 = sub_6DAF0(v6, @"body", v19, &v47);
    v21 = v47;
    v22 = v21;
    v45 = v16;
    if (!v20 && v21)
    {
      if (error)
      {
        v23 = v21;
        v24 = v22;
        v25 = 0;
        *error = v24;
      }

      else
      {
        _HKLogDroppedError();
        v24 = v22;
        v25 = 0;
      }

      goto LABEL_35;
    }

    v42 = v21;
    v43 = v20;
    v26 = [v6 objectForKeyedSubscript:@"form"];

    if (v26)
    {
      v27 = [v6 objectForKeyedSubscript:@"form"];
      v25 = [HKClinicalGatewayEndpointSchemaParameter parametersFromDefinitions:v27 error:error];

      v44 = v25;
      if (!v25)
      {
        v20 = v43;
LABEL_34:
        v24 = v42;
LABEL_35:

        v16 = v45;
        v18 = v46;
        goto LABEL_36;
      }
    }

    else
    {
      v44 = 0;
    }

    v28 = [v6 objectForKeyedSubscript:@"headers"];

    if (v28)
    {
      v29 = [v6 objectForKeyedSubscript:@"headers"];
      v28 = [HKClinicalGatewayEndpointSchemaParameter parametersFromDefinitions:v29 error:error];

      if (!v28)
      {
        v25 = 0;
        v20 = v43;
        goto LABEL_33;
      }
    }

    v41 = v28;
    v30 = [v6 objectForKeyedSubscript:@"query"];

    if (v30)
    {
      v31 = [v6 objectForKeyedSubscript:@"query"];
      v32 = [HKClinicalGatewayEndpointSchemaParameter parametersFromDefinitions:v31 error:error];

      if (!v32)
      {
        v25 = 0;
        v20 = v43;
        v33 = v41;
LABEL_31:

LABEL_33:
        goto LABEL_34;
      }
    }

    else
    {
      v32 = 0;
    }

    v40 = v32;
    v34 = [HKClinicalGatewayEndpointSchema alloc];
    bOOLValue = [v10 BOOLValue];
    v39 = v32;
    integerValue = [v14 integerValue];
    v36 = v34;
    v20 = v43;
    v33 = v41;
    v25 = [v36 initWithAuth:v8 body:v43 enabled:bOOLValue form:v44 headers:v41 method:v12 minCompatibleAPIVersion:integerValue name:v16 query:v39 URL:v46 definition:definitionCopy];

    goto LABEL_31;
  }

  v25 = 0;
LABEL_41:

LABEL_42:

  return v25;
}

@end