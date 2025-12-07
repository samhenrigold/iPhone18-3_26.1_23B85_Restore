@interface GCGenericDeviceInputGamepadEventFieldModel
+ (id)modelWithDictionaryRepresentation:(id)representation error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (GCGenericDeviceInputGamepadEventFieldModel)init;
- (GCGenericDeviceInputGamepadEventFieldModel)initWithCoder:(id)coder;
- (id)debugDescription;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GCGenericDeviceInputGamepadEventFieldModel

- (GCGenericDeviceInputGamepadEventFieldModel)init
{
  [(GCGenericDeviceInputGamepadEventFieldModel *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (GCGenericDeviceInputGamepadEventFieldModel)initWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = GCGenericDeviceInputGamepadEventFieldModel;
  coderCopy = coder;
  v4 = [(GCGenericDeviceInputGamepadEventFieldModel *)&v8 init];
  v4->_extendedIndex = [coderCopy decodeIntegerForKey:{@"extendedIndex", v8.receiver, v8.super_class}];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sourceExpression"];

  sourceExpression = v4->_sourceExpression;
  v4->_sourceExpression = v5;

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[GCGenericDeviceInputGamepadEventFieldModel extendedIndex](self forKey:{"extendedIndex"), @"extendedIndex"}];
  sourceExpression = [(GCGenericDeviceInputGamepadEventFieldModel *)self sourceExpression];
  [coderCopy encodeObject:sourceExpression forKey:@"sourceExpression"];
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
    if (([(GCGenericDeviceInputGamepadEventFieldModel *)self isMemberOfClass:objc_opt_class()]& 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || !-[GCGenericDeviceInputGamepadEventFieldModel isMemberOfClass:](self, "isMemberOfClass:", [objc_opt_class() modelClass]))
    {
      goto LABEL_8;
    }
  }

  extendedIndex = [(GCGenericDeviceInputGamepadEventFieldModel *)self extendedIndex];
  if (extendedIndex != [equalCopy extendedIndex])
  {
LABEL_8:
    v8 = 0;
    goto LABEL_9;
  }

  sourceExpression = [(GCGenericDeviceInputGamepadEventFieldModel *)self sourceExpression];
  sourceExpression2 = [equalCopy sourceExpression];
  v8 = [sourceExpression isEqual:sourceExpression2];

LABEL_9:
  return v8;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  extendedIndex = [(GCGenericDeviceInputGamepadEventFieldModel *)self extendedIndex];
  sourceExpression = [(GCGenericDeviceInputGamepadEventFieldModel *)self sourceExpression];
  v6 = [v3 stringWithFormat:@"[%zd] <- %@", extendedIndex, sourceExpression];

  return v6;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  extendedIndex = [(GCGenericDeviceInputGamepadEventFieldModel *)self extendedIndex];
  sourceExpression = [(GCGenericDeviceInputGamepadEventFieldModel *)self sourceExpression];
  v8 = [v3 stringWithFormat:@"<%@ %p> {\n\t extendedIndex = %zd\n\t sourceExpression = %@\n}", v5, self, extendedIndex, sourceExpression];

  return v8;
}

+ (id)modelWithDictionaryRepresentation:(id)representation error:(id *)error
{
  v46[2] = *MEMORY[0x1E69E9840];
  v7 = objc_opt_new();
  v40[0] = 0;
  v8 = [representation gc_objectForKey:@"ExtendedIndex" ofClass:objc_opt_class() error:v40];
  v9 = v40[0];
  v10 = v9;
  if (v8)
  {
    v11 = 1;
  }

  else
  {
    v11 = v9 == 0;
  }

  if (!v11)
  {
    if (error)
    {
      v19 = MEMORY[0x1E696ABC0];
      v45[0] = *MEMORY[0x1E696A578];
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", self];
      v46[0] = v20;
      v45[1] = *MEMORY[0x1E696A588];
      localizedFailureReason = [v10 localizedFailureReason];
      v46[1] = localizedFailureReason;
      v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v46 forKeys:v45 count:2];
      *error = [(NSError *)v19 gc_modelError:v22 userInfo:?];
    }

    goto LABEL_41;
  }

  if (v8)
  {
    [v7 setExtendedIndex:{objc_msgSend(v8, "integerValue")}];
  }

  v39 = 0;
  v12 = [representation gc_objectForKey:@"SourceExpression" ofClass:objc_opt_class() error:&v39];
  v13 = v39;
  v14 = v13;
  if (!v12 && v13)
  {
    if (!error)
    {
      v16 = v13;
      goto LABEL_40;
    }

    v23 = MEMORY[0x1E696ABC0];
    v43[0] = *MEMORY[0x1E696A578];
    v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", self];
    v44[0] = v24;
    v43[1] = *MEMORY[0x1E696A588];
    localizedFailureReason2 = [v14 localizedFailureReason];
    v44[1] = localizedFailureReason2;
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:v43 count:2];
    *error = [(NSError *)v23 gc_modelError:v25 userInfo:?];

    v16 = v14;
LABEL_23:

LABEL_38:
    goto LABEL_40;
  }

  if (!v12)
  {
    v16 = v13;
    goto LABEL_14;
  }

  v38 = 0;
  v15 = [GCGenericDeviceDataProcessorExpressionModel modelWithDictionaryRepresentation:v12 error:&v38];
  v16 = v38;

  if (v15)
  {
    [v7 setSourceExpression:v15];

LABEL_14:
    build = [v7 build];
    goto LABEL_15;
  }

  if (error)
  {
    v36 = MEMORY[0x1E696ABC0];
    v41[0] = *MEMORY[0x1E696A578];
    localizedDescription = [v16 localizedDescription];
    v24 = localizedDescription;
    if (!localizedDescription)
    {
      localizedDescription = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", self];
    }

    localizedFailureReason2 = localizedDescription;
    v42[0] = localizedDescription;
    v41[1] = *MEMORY[0x1E696A588];
    localizedFailureReason3 = [v16 localizedFailureReason];
    v28 = localizedFailureReason3;
    if (!localizedFailureReason3)
    {
      localizedFailureReason3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error instantiating '%@' model for key '%@'.", objc_opt_class(), @"SourceExpression"];
    }

    v35 = localizedFailureReason3;
    v42[1] = localizedFailureReason3;
    v41[2] = *MEMORY[0x1E696AA08];
    null = v16;
    if (!v16)
    {
      null = [MEMORY[0x1E695DFB0] null];
    }

    v34 = null;
    v42[2] = null;
    v41[3] = @"GCFailingKeyPathErrorKey";
    gc_failingKeyPath = [v16 gc_failingKeyPath];
    v31 = gc_failingKeyPath;
    if (!gc_failingKeyPath)
    {
      gc_failingKeyPath = MEMORY[0x1E695E0F0];
    }

    v32 = [gc_failingKeyPath arrayByAddingObject:@"SourceExpression"];
    v42[3] = v32;
    v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:v41 count:4];
    *error = [(NSError *)v36 gc_modelError:v33 userInfo:?];

    if (!v16)
    {
    }

    if (!v28)
    {
    }

    if (v24)
    {
      goto LABEL_38;
    }

    goto LABEL_23;
  }

LABEL_40:

LABEL_41:
  build = 0;
LABEL_15:

  return build;
}

@end