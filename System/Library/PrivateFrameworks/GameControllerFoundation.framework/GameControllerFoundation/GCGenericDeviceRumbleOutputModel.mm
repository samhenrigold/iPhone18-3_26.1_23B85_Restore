@interface GCGenericDeviceRumbleOutputModel
+ (id)modelWithDictionaryRepresentation:(id)representation error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (GCGenericDeviceRumbleOutputModel)init;
- (GCGenericDeviceRumbleOutputModel)initWithCoder:(id)coder;
- (id)debugDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GCGenericDeviceRumbleOutputModel

- (GCGenericDeviceRumbleOutputModel)init
{
  [(GCGenericDeviceRumbleOutputModel *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (GCGenericDeviceRumbleOutputModel)initWithCoder:(id)coder
{
  v14[2] = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = GCGenericDeviceRumbleOutputModel;
  coderCopy = coder;
  v4 = [(GCGenericDeviceRumbleOutputModel *)&v13 init];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"elementIdentifier"];
  elementIdentifier = v4->_elementIdentifier;
  v4->_elementIdentifier = v5;

  v7 = MEMORY[0x1E695DFD8];
  v14[0] = objc_opt_class();
  v14[1] = objc_opt_class();
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
  v9 = [v7 setWithArray:v8];
  v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"fields"];

  fields = v4->_fields;
  v4->_fields = v10;

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  elementIdentifier = [(GCGenericDeviceRumbleOutputModel *)self elementIdentifier];
  [coderCopy encodeObject:elementIdentifier forKey:@"elementIdentifier"];

  fields = [(GCGenericDeviceRumbleOutputModel *)self fields];
  [coderCopy encodeObject:fields forKey:@"fields"];
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
    if (([(GCGenericDeviceRumbleOutputModel *)self isMemberOfClass:objc_opt_class()]& 1) == 0)
    {
LABEL_8:
      v9 = 0;
      goto LABEL_11;
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || !-[GCGenericDeviceRumbleOutputModel isMemberOfClass:](self, "isMemberOfClass:", [objc_opt_class() modelClass]))
    {
      goto LABEL_8;
    }
  }

  elementIdentifier = [(GCGenericDeviceRumbleOutputModel *)self elementIdentifier];
  elementIdentifier2 = [equalCopy elementIdentifier];
  if ([elementIdentifier isEqual:elementIdentifier2])
  {
    fields = [(GCGenericDeviceRumbleOutputModel *)self fields];
    fields2 = [equalCopy fields];
    v9 = [fields isEqual:fields2];
  }

  else
  {
    v9 = 0;
  }

LABEL_11:
  return v9;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  elementIdentifier = [(GCGenericDeviceRumbleOutputModel *)self elementIdentifier];
  fields = [(GCGenericDeviceRumbleOutputModel *)self fields];
  v8 = [fields debugDescription];
  v9 = [v8 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t"];
  v10 = [v3 stringWithFormat:@"<%@ %p> {\n\t elementIdentifier = %@\n\t fields = %@\n}", v5, self, elementIdentifier, v9];

  return v10;
}

+ (id)modelWithDictionaryRepresentation:(id)representation error:(id *)error
{
  v55[2] = *MEMORY[0x1E69E9840];
  v38 = objc_opt_new();
  v49[0] = 0;
  v5 = [representation gc_requiredObjectForKey:@"ElementIdentifier" ofClass:objc_opt_class() error:v49];
  v6 = v49[0];
  if (!v5)
  {
    if (error)
    {
      v24 = MEMORY[0x1E696ABC0];
      v54[0] = *MEMORY[0x1E696A578];
      v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", self];
      v55[0] = v25;
      v54[1] = *MEMORY[0x1E696A588];
      localizedFailureReason = [v6 localizedFailureReason];
      v55[1] = localizedFailureReason;
      v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v55 forKeys:v54 count:2];
      *error = [(NSError *)v24 gc_modelError:v27 userInfo:?];
    }

    goto LABEL_30;
  }

  [v38 setElementIdentifier:v5];

  v48 = 0;
  v7 = [representation gc_requiredObjectForKey:@"Fields" ofClass:objc_opt_class() error:&v48];
  v6 = v48;
  if (!v7)
  {
    if (error)
    {
      v28 = MEMORY[0x1E696ABC0];
      v52[0] = *MEMORY[0x1E696A578];
      v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", self];
      v53[0] = v29;
      v52[1] = *MEMORY[0x1E696A588];
      localizedFailureReason2 = [v6 localizedFailureReason];
      v53[1] = localizedFailureReason2;
      v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v53 forKeys:v52 count:2];
      *error = [(NSError *)v28 gc_modelError:v31 userInfo:?];
    }

LABEL_30:
    build = 0;
    goto LABEL_21;
  }

  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = __Block_byref_object_copy__11;
  v46 = __Block_byref_object_dispose__11;
  v47 = 0;
  v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v7, "count")}];
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __91__GCGenericDeviceRumbleOutputModel_Serialization__modelWithDictionaryRepresentation_error___block_invoke;
  v39[3] = &unk_1E8414FA8;
  v41 = &v42;
  v9 = v8;
  v40 = v9;
  [v7 gc_enumerateObjectsUsingBlock:v39];
  v10 = [v9 count];
  v11 = [v7 count];
  if (v10 == v11)
  {
    [v38 setFields:v9];
  }

  else if (error)
  {
    v33 = MEMORY[0x1E696ABC0];
    v50[0] = *MEMORY[0x1E696A578];
    localizedDescription = [v43[5] localizedDescription];
    if ([localizedDescription length])
    {
      [v43[5] localizedDescription];
    }

    else
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", self];
    }
    v34 = ;
    v51[0] = v34;
    v50[1] = *MEMORY[0x1E696A588];
    localizedFailureReason3 = [v43[5] localizedFailureReason];
    v13 = localizedFailureReason3;
    v14 = &stru_1F4E1BE30;
    if (localizedFailureReason3)
    {
      v14 = localizedFailureReason3;
    }

    v51[1] = v14;
    v50[2] = *MEMORY[0x1E696AA08];
    v15 = v43[5];
    if (v15)
    {
      v16 = v43[5];
      null = v16;
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      v16 = v43[5];
    }

    v32 = null;
    v51[2] = null;
    v50[3] = @"GCFailingKeyPathErrorKey";
    gc_failingKeyPath = [v16 gc_failingKeyPath];
    v19 = gc_failingKeyPath;
    if (!gc_failingKeyPath)
    {
      gc_failingKeyPath = MEMORY[0x1E695E0F0];
    }

    v20 = [gc_failingKeyPath arrayByAddingObject:@"Fields"];
    v51[3] = v20;
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v51 forKeys:v50 count:4];
    *error = [(NSError *)v33 gc_modelError:v21 userInfo:?];

    if (!v15)
    {
    }
  }

  _Block_object_dispose(&v42, 8);
  if (v10 == v11)
  {
    v6 = v38;
    build = [v38 build];
    v38 = 0;
LABEL_21:

    goto LABEL_23;
  }

  build = 0;
LABEL_23:

  return build;
}

void __91__GCGenericDeviceRumbleOutputModel_Serialization__modelWithDictionaryRepresentation_error___block_invoke(uint64_t a1, uint64_t (**a2)(void, void, void), uint64_t a3, _BYTE *a4)
{
  v48[2] = *MEMORY[0x1E69E9840];
  v8 = a2;
  v9 = objc_opt_class();
  v10 = *(*(a1 + 40) + 8);
  obj = *(v10 + 40);
  v11 = (a2)[2](v8, v9, &obj);

  objc_storeStrong((v10 + 40), obj);
  if (v11)
  {
    v12 = *(*(a1 + 40) + 8);
    v42 = 0;
    v13 = [GCGenericDeviceRumbleOutputFieldModel modelWithDictionaryRepresentation:v11 error:&v42];
    objc_storeStrong((v12 + 40), v42);
    if (v13)
    {
      [*(a1 + 32) addObject:v13];
    }

    else
    {
      v39 = MEMORY[0x1E696ABC0];
      v44[0] = *MEMORY[0x1E696A578];
      v22 = [*(*(*(a1 + 40) + 8) + 40) localizedDescription];
      v23 = &stru_1F4E1BE30;
      v41 = v22;
      if (v22)
      {
        v23 = v22;
      }

      v45[0] = v23;
      v44[1] = *MEMORY[0x1E696A588];
      v24 = [*(*(*(a1 + 40) + 8) + 40) localizedFailureReason];
      v40 = v24;
      if (!v24)
      {
        v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error instantiating '%@' model.", objc_opt_class()];
      }

      v38 = v24;
      v45[1] = v24;
      v44[2] = *MEMORY[0x1E696AA08];
      v25 = *(*(*(a1 + 40) + 8) + 40);
      v26 = v25;
      v27 = v25;
      if (!v25)
      {
        v27 = [MEMORY[0x1E695DFB0] null];
        v26 = *(*(*(a1 + 40) + 8) + 40);
      }

      v37 = v27;
      v45[2] = v27;
      v44[3] = @"GCFailingKeyPathErrorKey";
      v28 = [v26 gc_failingKeyPath];
      v29 = v28;
      if (v28)
      {
        v30 = v28;
      }

      else
      {
        v30 = MEMORY[0x1E695E0F0];
      }

      v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%zd]", a3];
      v32 = [v30 arrayByAddingObject:v31];
      v45[3] = v32;
      v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:v44 count:4];
      v34 = [(NSError *)v39 gc_modelError:v33 userInfo:?];
      v35 = *(*(a1 + 40) + 8);
      v36 = *(v35 + 40);
      *(v35 + 40) = v34;

      if (!v25)
      {
      }

      if (!v40)
      {
      }

      *a4 = 1;
    }
  }

  else
  {
    v14 = MEMORY[0x1E696ABC0];
    v47[0] = *MEMORY[0x1E696A588];
    v15 = [*(*(*(a1 + 40) + 8) + 40) localizedFailureReason];
    v48[0] = v15;
    v47[1] = @"GCFailingKeyPathErrorKey";
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%zd]", a3];
    v46 = v16;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v46 count:1];
    v48[1] = v17;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v48 forKeys:v47 count:2];
    v19 = [(NSError *)v14 gc_modelError:v18 userInfo:?];
    v20 = *(*(a1 + 40) + 8);
    v21 = *(v20 + 40);
    *(v20 + 40) = v19;

    *a4 = 1;
  }
}

@end