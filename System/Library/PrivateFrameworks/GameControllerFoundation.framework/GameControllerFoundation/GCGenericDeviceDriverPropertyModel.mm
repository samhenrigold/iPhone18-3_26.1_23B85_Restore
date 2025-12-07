@interface GCGenericDeviceDriverPropertyModel
+ (id)modelWithDictionaryRepresentation:(id)representation error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (GCGenericDeviceDriverPropertyModel)init;
- (GCGenericDeviceDriverPropertyModel)initWithCoder:(id)coder;
- (id)debugDescription;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GCGenericDeviceDriverPropertyModel

- (GCGenericDeviceDriverPropertyModel)init
{
  [(GCGenericDeviceDriverPropertyModel *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (GCGenericDeviceDriverPropertyModel)initWithCoder:(id)coder
{
  v10.receiver = self;
  v10.super_class = GCGenericDeviceDriverPropertyModel;
  coderCopy = coder;
  v4 = [(GCGenericDeviceDriverPropertyModel *)&v10 init];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:{@"name", v10.receiver, v10.super_class}];
  name = v4->_name;
  v4->_name = v5;

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"valueExpression"];

  valueExpression = v4->_valueExpression;
  v4->_valueExpression = v7;

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  name = [(GCGenericDeviceDriverPropertyModel *)self name];
  [coderCopy encodeObject:name forKey:@"name"];

  valueExpression = [(GCGenericDeviceDriverPropertyModel *)self valueExpression];
  [coderCopy encodeObject:valueExpression forKey:@"valueExpression"];
}

- (unint64_t)hash
{
  v2 = objc_opt_class();

  return [v2 hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (([(GCGenericDeviceDriverPropertyModel *)self isMemberOfClass:objc_opt_class()]& 1) == 0)
    {
LABEL_8:
      v9 = 0;
      goto LABEL_11;
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || !-[GCGenericDeviceDriverPropertyModel isMemberOfClass:](self, "isMemberOfClass:", [objc_opt_class() modelClass]))
    {
      goto LABEL_8;
    }
  }

  name = [(GCGenericDeviceDriverPropertyModel *)self name];
  name2 = [equalCopy name];
  if ([name isEqual:name2])
  {
    valueExpression = [(GCGenericDeviceDriverPropertyModel *)self valueExpression];
    valueExpression2 = [equalCopy valueExpression];
    v9 = [valueExpression isEqual:valueExpression2];
  }

  else
  {
    v9 = 0;
  }

LABEL_11:
  return v9;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  name = [(GCGenericDeviceDriverPropertyModel *)self name];
  valueExpression = [(GCGenericDeviceDriverPropertyModel *)self valueExpression];
  v6 = [v3 stringWithFormat:@"'%@' <- %@", name, valueExpression];

  return v6;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  name = [(GCGenericDeviceDriverPropertyModel *)self name];
  valueExpression = [(GCGenericDeviceDriverPropertyModel *)self valueExpression];
  v8 = [v3 stringWithFormat:@"<%@ %p> {\n\t name = %@\n\t valueExpression = %@\n}", v5, self, name, valueExpression];

  return v8;
}

+ (id)modelWithDictionaryRepresentation:(id)representation error:(id *)error
{
  v44[2] = *MEMORY[0x1E69E9840];
  v6 = objc_opt_new();
  v38[0] = 0;
  v7 = [representation gc_requiredObjectForKey:@"Name" ofClass:objc_opt_class() error:v38];
  v8 = v38[0];
  if (v7)
  {
    [v6 setName:v7];

    v37 = 0;
    v9 = [representation gc_requiredObjectForKey:@"ValueExpression" ofClass:objc_opt_class() error:&v37];
    v10 = v37;
    if (v9)
    {
      v36 = 0;
      v11 = [GCGenericDeviceDataProcessorExpressionModel modelWithDictionaryRepresentation:v9 error:&v36];
      v12 = v36;

      if (v11)
      {
        [v6 setValueExpression:v11];

        build = [v6 build];
        goto LABEL_5;
      }

      if (error)
      {
        v34 = MEMORY[0x1E696ABC0];
        v39[0] = *MEMORY[0x1E696A578];
        localizedDescription = [v12 localizedDescription];
        v24 = localizedDescription;
        if (!localizedDescription)
        {
          localizedDescription = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", self];
        }

        v33 = localizedDescription;
        v40[0] = localizedDescription;
        v39[1] = *MEMORY[0x1E696A588];
        localizedFailureReason = [v12 localizedFailureReason];
        v26 = localizedFailureReason;
        if (!localizedFailureReason)
        {
          localizedFailureReason = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error instantiating '%@' model for key '%@'.", objc_opt_class(), @"ValueExpression"];
        }

        v32 = localizedFailureReason;
        v40[1] = localizedFailureReason;
        v39[2] = *MEMORY[0x1E696AA08];
        null = v12;
        if (!v12)
        {
          null = [MEMORY[0x1E695DFB0] null];
        }

        v40[2] = null;
        v39[3] = @"GCFailingKeyPathErrorKey";
        gc_failingKeyPath = [v12 gc_failingKeyPath];
        v29 = gc_failingKeyPath;
        if (!gc_failingKeyPath)
        {
          gc_failingKeyPath = MEMORY[0x1E695E0F0];
        }

        v30 = [gc_failingKeyPath arrayByAddingObject:@"ValueExpression"];
        v40[3] = v30;
        v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:v39 count:4];
        *error = [(NSError *)v34 gc_modelError:v31 userInfo:?];

        if (!v12)
        {
        }

        if (!v26)
        {
        }

        if (!v24)
        {
        }
      }
    }

    else
    {
      if (error)
      {
        v19 = MEMORY[0x1E696ABC0];
        v41[0] = *MEMORY[0x1E696A578];
        v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", self];
        v42[0] = v20;
        v41[1] = *MEMORY[0x1E696A588];
        localizedFailureReason2 = [v10 localizedFailureReason];
        v42[1] = localizedFailureReason2;
        v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:v41 count:2];
        *error = [(NSError *)v19 gc_modelError:v22 userInfo:?];
      }
    }
  }

  else
  {
    if (error)
    {
      v15 = MEMORY[0x1E696ABC0];
      v43[0] = *MEMORY[0x1E696A578];
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", self];
      v44[0] = v16;
      v43[1] = *MEMORY[0x1E696A588];
      localizedFailureReason3 = [v8 localizedFailureReason];
      v44[1] = localizedFailureReason3;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:v43 count:2];
      *error = [(NSError *)v15 gc_modelError:v18 userInfo:?];
    }
  }

  build = 0;
LABEL_5:

  return build;
}

@end