@interface GCGenericDeviceRumbleOutputFieldModel
+ (id)modelWithDictionaryRepresentation:(id)representation error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (GCGenericDeviceRumbleOutputFieldModel)init;
- (GCGenericDeviceRumbleOutputFieldModel)initWithCoder:(id)coder;
- (id)debugDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GCGenericDeviceRumbleOutputFieldModel

- (GCGenericDeviceRumbleOutputFieldModel)init
{
  [(GCGenericDeviceRumbleOutputFieldModel *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (GCGenericDeviceRumbleOutputFieldModel)initWithCoder:(id)coder
{
  v12.receiver = self;
  v12.super_class = GCGenericDeviceRumbleOutputFieldModel;
  coderCopy = coder;
  v4 = [(GCGenericDeviceRumbleOutputFieldModel *)&v12 init];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:{@"valueExpression", v12.receiver, v12.super_class}];
  valueExpression = v4->_valueExpression;
  v4->_valueExpression = v5;

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sizeExpression"];
  sizeExpression = v4->_sizeExpression;
  v4->_sizeExpression = v7;

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"offsetExpression"];

  offsetExpression = v4->_offsetExpression;
  v4->_offsetExpression = v9;

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  valueExpression = [(GCGenericDeviceRumbleOutputFieldModel *)self valueExpression];
  [coderCopy encodeObject:valueExpression forKey:@"valueExpression"];

  offsetExpression = [(GCGenericDeviceRumbleOutputFieldModel *)self offsetExpression];
  [coderCopy encodeObject:offsetExpression forKey:@"offsetExpression"];

  sizeExpression = [(GCGenericDeviceRumbleOutputFieldModel *)self sizeExpression];
  [coderCopy encodeObject:sizeExpression forKey:@"sizeExpression"];
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
    if (([(GCGenericDeviceRumbleOutputFieldModel *)self isMemberOfClass:objc_opt_class()]& 1) == 0)
    {
LABEL_9:
      v11 = 0;
      goto LABEL_14;
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || !-[GCGenericDeviceRumbleOutputFieldModel isMemberOfClass:](self, "isMemberOfClass:", [objc_opt_class() modelClass]))
    {
      goto LABEL_9;
    }
  }

  valueExpression = [(GCGenericDeviceRumbleOutputFieldModel *)self valueExpression];
  valueExpression2 = [equalCopy valueExpression];
  if ([valueExpression isEqual:valueExpression2])
  {
    offsetExpression = [(GCGenericDeviceRumbleOutputFieldModel *)self offsetExpression];
    offsetExpression2 = [equalCopy offsetExpression];
    if ([offsetExpression isEqual:offsetExpression2])
    {
      sizeExpression = [(GCGenericDeviceRumbleOutputFieldModel *)self sizeExpression];
      sizeExpression2 = [equalCopy sizeExpression];
      v11 = [sizeExpression isEqual:sizeExpression2];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

LABEL_14:
  return v11;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  valueExpression = [(GCGenericDeviceRumbleOutputFieldModel *)self valueExpression];
  offsetExpression = [(GCGenericDeviceRumbleOutputFieldModel *)self offsetExpression];
  sizeExpression = [(GCGenericDeviceRumbleOutputFieldModel *)self sizeExpression];
  v9 = [v3 stringWithFormat:@"<%@ %p> {\n\t valueExpression = %@\n\t offsetExpression = %@\n\t sizeExpression = %@\n}", v5, self, valueExpression, offsetExpression, sizeExpression];

  return v9;
}

+ (id)modelWithDictionaryRepresentation:(id)representation error:(id *)error
{
  v87[2] = *MEMORY[0x1E69E9840];
  v6 = objc_opt_new();
  v75[0] = 0;
  v7 = [representation gc_requiredObjectForKey:@"ValueExpression" ofClass:objc_opt_class() error:v75];
  v8 = v75[0];
  if (v7)
  {
    v74 = 0;
    v9 = [GCGenericDeviceDataProcessorExpressionModel modelWithDictionaryRepresentation:v7 error:&v74];
    v10 = v74;

    if (v9)
    {
      [v6 setValueExpression:v9];

      v73 = 0;
      v11 = [representation gc_requiredObjectForKey:@"OffsetExpression" ofClass:objc_opt_class() error:&v73];
      v12 = v73;
      if (v11)
      {
        v72 = 0;
        v13 = [GCGenericDeviceDataProcessorExpressionModel modelWithDictionaryRepresentation:v11 error:&v72];
        v14 = v72;

        if (v13)
        {
          [v6 setOffsetExpression:v13];

          v71 = 0;
          v15 = [representation gc_requiredObjectForKey:@"SizeExpression" ofClass:objc_opt_class() error:&v71];
          v16 = v71;
          if (v15)
          {
            v70 = 0;
            v17 = [GCGenericDeviceDataProcessorExpressionModel modelWithDictionaryRepresentation:v15 error:&v70];
            v18 = v70;

            if (v17)
            {
              [v6 setSizeExpression:v17];

              build = [v6 build];
              goto LABEL_8;
            }

            if (error)
            {
              v68 = MEMORY[0x1E696ABC0];
              v76[0] = *MEMORY[0x1E696A578];
              localizedDescription = [v18 localizedDescription];
              v52 = localizedDescription;
              if (!localizedDescription)
              {
                localizedDescription = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", self];
              }

              v65 = localizedDescription;
              v77[0] = localizedDescription;
              v76[1] = *MEMORY[0x1E696A588];
              localizedFailureReason = [v18 localizedFailureReason];
              v54 = localizedFailureReason;
              if (!localizedFailureReason)
              {
                localizedFailureReason = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error instantiating '%@' model for key '%@'.", objc_opt_class(), @"SizeExpression"];
              }

              v62 = localizedFailureReason;
              v77[1] = localizedFailureReason;
              v76[2] = *MEMORY[0x1E696AA08];
              null = v18;
              if (!v18)
              {
                null = [MEMORY[0x1E695DFB0] null];
              }

              v77[2] = null;
              v76[3] = @"GCFailingKeyPathErrorKey";
              gc_failingKeyPath = [v18 gc_failingKeyPath];
              v57 = gc_failingKeyPath;
              if (!gc_failingKeyPath)
              {
                gc_failingKeyPath = MEMORY[0x1E695E0F0];
              }

              v58 = [gc_failingKeyPath arrayByAddingObject:@"SizeExpression"];
              v77[3] = v58;
              v59 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v77 forKeys:v76 count:4];
              *error = [(NSError *)v68 gc_modelError:v59 userInfo:?];

              if (!v18)
              {
              }

              if (!v54)
              {
              }

              if (!v52)
              {
              }
            }
          }

          else
          {
            if (error)
            {
              v47 = MEMORY[0x1E696ABC0];
              v78[0] = *MEMORY[0x1E696A578];
              v48 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", self];
              v79[0] = v48;
              v78[1] = *MEMORY[0x1E696A588];
              localizedFailureReason2 = [v16 localizedFailureReason];
              v79[1] = localizedFailureReason2;
              v50 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v79 forKeys:v78 count:2];
              *error = [(NSError *)v47 gc_modelError:v50 userInfo:?];
            }
          }
        }

        else
        {
          if (error)
          {
            v67 = MEMORY[0x1E696ABC0];
            v80[0] = *MEMORY[0x1E696A578];
            localizedDescription2 = [v14 localizedDescription];
            v39 = localizedDescription2;
            if (!localizedDescription2)
            {
              localizedDescription2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", self];
            }

            v64 = localizedDescription2;
            v81[0] = localizedDescription2;
            v80[1] = *MEMORY[0x1E696A588];
            localizedFailureReason3 = [v14 localizedFailureReason];
            v41 = localizedFailureReason3;
            if (!localizedFailureReason3)
            {
              localizedFailureReason3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error instantiating '%@' model for key '%@'.", objc_opt_class(), @"OffsetExpression"];
            }

            v61 = localizedFailureReason3;
            v81[1] = localizedFailureReason3;
            v80[2] = *MEMORY[0x1E696AA08];
            null2 = v14;
            if (!v14)
            {
              null2 = [MEMORY[0x1E695DFB0] null];
            }

            v81[2] = null2;
            v80[3] = @"GCFailingKeyPathErrorKey";
            gc_failingKeyPath2 = [v14 gc_failingKeyPath];
            v44 = gc_failingKeyPath2;
            if (!gc_failingKeyPath2)
            {
              gc_failingKeyPath2 = MEMORY[0x1E695E0F0];
            }

            v45 = [gc_failingKeyPath2 arrayByAddingObject:@"OffsetExpression"];
            v81[3] = v45;
            v46 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v81 forKeys:v80 count:4];
            *error = [(NSError *)v67 gc_modelError:v46 userInfo:?];

            if (!v14)
            {
            }

            if (!v41)
            {
            }

            if (!v39)
            {
            }
          }
        }
      }

      else
      {
        if (error)
        {
          v34 = MEMORY[0x1E696ABC0];
          v82[0] = *MEMORY[0x1E696A578];
          v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", self];
          v83[0] = v35;
          v82[1] = *MEMORY[0x1E696A588];
          localizedFailureReason4 = [v12 localizedFailureReason];
          v83[1] = localizedFailureReason4;
          v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v83 forKeys:v82 count:2];
          *error = [(NSError *)v34 gc_modelError:v37 userInfo:?];
        }
      }
    }

    else
    {
      if (error)
      {
        v66 = MEMORY[0x1E696ABC0];
        v84[0] = *MEMORY[0x1E696A578];
        localizedDescription3 = [v10 localizedDescription];
        v26 = localizedDescription3;
        if (!localizedDescription3)
        {
          localizedDescription3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", self];
        }

        v63 = localizedDescription3;
        v85[0] = localizedDescription3;
        v84[1] = *MEMORY[0x1E696A588];
        localizedFailureReason5 = [v10 localizedFailureReason];
        v28 = localizedFailureReason5;
        if (!localizedFailureReason5)
        {
          localizedFailureReason5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error instantiating '%@' model for key '%@'.", objc_opt_class(), @"ValueExpression"];
        }

        v60 = localizedFailureReason5;
        v85[1] = localizedFailureReason5;
        v84[2] = *MEMORY[0x1E696AA08];
        null3 = v10;
        if (!v10)
        {
          null3 = [MEMORY[0x1E695DFB0] null];
        }

        v85[2] = null3;
        v84[3] = @"GCFailingKeyPathErrorKey";
        gc_failingKeyPath3 = [v10 gc_failingKeyPath];
        v31 = gc_failingKeyPath3;
        if (!gc_failingKeyPath3)
        {
          gc_failingKeyPath3 = MEMORY[0x1E695E0F0];
        }

        v32 = [gc_failingKeyPath3 arrayByAddingObject:@"ValueExpression"];
        v85[3] = v32;
        v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v85 forKeys:v84 count:4];
        *error = [(NSError *)v66 gc_modelError:v33 userInfo:?];

        if (!v10)
        {
        }

        if (!v28)
        {
        }

        if (!v26)
        {
        }
      }
    }
  }

  else
  {
    if (error)
    {
      v21 = MEMORY[0x1E696ABC0];
      v86[0] = *MEMORY[0x1E696A578];
      v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", self];
      v87[0] = v22;
      v86[1] = *MEMORY[0x1E696A588];
      localizedFailureReason6 = [v8 localizedFailureReason];
      v87[1] = localizedFailureReason6;
      v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v87 forKeys:v86 count:2];
      *error = [(NSError *)v21 gc_modelError:v24 userInfo:?];
    }
  }

  build = 0;
LABEL_8:

  return build;
}

@end