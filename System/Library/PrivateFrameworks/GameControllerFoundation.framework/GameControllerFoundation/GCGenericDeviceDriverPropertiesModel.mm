@interface GCGenericDeviceDriverPropertiesModel
+ (GCGenericDeviceDriverPropertiesModel)modelWithDictionaryRepresentation:(id)representation error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (GCGenericDeviceDriverPropertiesModel)init;
- (GCGenericDeviceDriverPropertiesModel)initWithCoder:(id)coder;
- (id)debugDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GCGenericDeviceDriverPropertiesModel

- (GCGenericDeviceDriverPropertiesModel)init
{
  [(GCGenericDeviceDriverPropertiesModel *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (GCGenericDeviceDriverPropertiesModel)initWithCoder:(id)coder
{
  v12[2] = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = GCGenericDeviceDriverPropertiesModel;
  coderCopy = coder;
  v4 = [(GCGenericDeviceDriverPropertiesModel *)&v11 init];
  v5 = MEMORY[0x1E695DFD8];
  v12[0] = objc_opt_class();
  v12[1] = objc_opt_class();
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
  v7 = [v5 setWithArray:v6];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"properties"];

  properties = v4->_properties;
  v4->_properties = v8;

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  properties = [(GCGenericDeviceDriverPropertiesModel *)self properties];
  [coderCopy encodeObject:properties forKey:@"properties"];
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
    if (([(GCGenericDeviceDriverPropertiesModel *)self isMemberOfClass:objc_opt_class()]& 1) == 0)
    {
LABEL_7:
      v7 = 0;
      goto LABEL_8;
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || !-[GCGenericDeviceDriverPropertiesModel isMemberOfClass:](self, "isMemberOfClass:", [objc_opt_class() modelClass]))
    {
      goto LABEL_7;
    }
  }

  properties = [(GCGenericDeviceDriverPropertiesModel *)self properties];
  properties2 = [equalCopy properties];
  v7 = [properties isEqual:properties2];

LABEL_8:
  return v7;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  properties = [(GCGenericDeviceDriverPropertiesModel *)self properties];
  v7 = [properties debugDescription];
  v8 = [v7 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t"];
  v9 = [v3 stringWithFormat:@"<%@ %p> {\n\t properties = %@\n}", v5, self, v8];

  return v9;
}

+ (GCGenericDeviceDriverPropertiesModel)modelWithDictionaryRepresentation:(id)representation error:(id *)error
{
  v52[2] = *MEMORY[0x1E69E9840];
  v37 = objc_opt_new();
  v48[0] = 0;
  v5 = [representation gc_requiredObjectForKey:@"Properties" ofClass:objc_opt_class() error:v48];
  v6 = v48[0];
  if (!v5)
  {
    if (error)
    {
      v25 = v6;
      v26 = MEMORY[0x1E696ABC0];
      v51[0] = *MEMORY[0x1E696A578];
      v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", self];
      v52[0] = v27;
      v51[1] = *MEMORY[0x1E696A588];
      localizedFailureReason = [v25 localizedFailureReason];
      v52[1] = localizedFailureReason;
      v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v52 forKeys:v51 count:2];
      *error = [(NSError *)v26 gc_modelError:v29 userInfo:?];

      build = 0;
      v6 = v25;
    }

    else
    {
      build = 0;
    }

    goto LABEL_20;
  }

  v36 = v6;
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = __Block_byref_object_copy__14;
  v46 = __Block_byref_object_dispose__14;
  v47 = 0;
  v7 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(v5, "count")}];
  v8 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(v5, "count")}];
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __95__GCGenericDeviceDriverPropertiesModel_Serialization__modelWithDictionaryRepresentation_error___block_invoke;
  v38[3] = &unk_1E8413C58;
  v41 = &v42;
  v9 = v7;
  v39 = v9;
  v10 = v8;
  v40 = v10;
  [v5 gc_enumerateObjectsUsingBlock:v38];
  v11 = [v10 count];
  v12 = [v5 count];
  if (v11 == v12)
  {
    [v37 setProperties:v10];
  }

  else if (error)
  {
    v31 = MEMORY[0x1E696ABC0];
    v49[0] = *MEMORY[0x1E696A578];
    localizedDescription = [v43[5] localizedDescription];
    if ([localizedDescription length])
    {
      [v43[5] localizedDescription];
    }

    else
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", self];
    }
    v32 = ;
    v50[0] = v32;
    v49[1] = *MEMORY[0x1E696A588];
    localizedFailureReason2 = [v43[5] localizedFailureReason];
    v14 = localizedFailureReason2;
    v15 = &stru_1F4E1BE30;
    if (localizedFailureReason2)
    {
      v15 = localizedFailureReason2;
    }

    v50[1] = v15;
    v49[2] = *MEMORY[0x1E696AA08];
    v16 = v43[5];
    if (v16)
    {
      v17 = v43[5];
      null = v17;
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      v17 = v43[5];
    }

    v30 = null;
    v50[2] = null;
    v49[3] = @"GCFailingKeyPathErrorKey";
    gc_failingKeyPath = [v17 gc_failingKeyPath];
    v20 = gc_failingKeyPath;
    if (!gc_failingKeyPath)
    {
      gc_failingKeyPath = MEMORY[0x1E695E0F0];
    }

    v21 = [gc_failingKeyPath arrayByAddingObject:@"Properties"];
    v50[3] = v21;
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v50 forKeys:v49 count:4];
    *error = [(NSError *)v31 gc_modelError:v22 userInfo:?];

    if (!v16)
    {
    }
  }

  _Block_object_dispose(&v42, 8);
  if (v11 == v12)
  {
    build = [v37 build];
    v6 = v37;
    v37 = 0;
LABEL_20:

    goto LABEL_22;
  }

  build = 0;
LABEL_22:

  return build;
}

void __95__GCGenericDeviceDriverPropertiesModel_Serialization__modelWithDictionaryRepresentation_error___block_invoke(uint64_t a1, uint64_t (**a2)(void, void, void), uint64_t a3, _BYTE *a4)
{
  v61[2] = *MEMORY[0x1E69E9840];
  v8 = a2;
  v9 = objc_opt_class();
  v10 = *(*(a1 + 48) + 8);
  obj = *(v10 + 40);
  v11 = (a2)[2](v8, v9, &obj);

  objc_storeStrong((v10 + 40), obj);
  if (v11)
  {
    v12 = *(*(a1 + 48) + 8);
    v52 = 0;
    v13 = [GCGenericDeviceDriverPropertyModel modelWithDictionaryRepresentation:v11 error:&v52];
    objc_storeStrong((v12 + 40), v52);
    if (v13)
    {
      v14 = [v13 name];
      v15 = [*(a1 + 32) member:v14];

      if (v15)
      {
        v16 = MEMORY[0x1E696ABC0];
        v55[0] = *MEMORY[0x1E696A588];
        v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Duplicate definition of '%@' with name '%@'.", objc_opt_class(), v14];
        v56[0] = v17;
        v55[1] = @"GCFailingKeyPathErrorKey";
        v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%zd]", a3];
        v54 = v18;
        v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v54 count:1];
        v56[1] = v19;
        v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v56 forKeys:v55 count:2];
        v21 = [(NSError *)v16 gc_modelError:v20 userInfo:?];
        v22 = *(*(a1 + 48) + 8);
        v23 = *(v22 + 40);
        *(v22 + 40) = v21;

        *a4 = 1;
      }

      else
      {
        [*(a1 + 32) addObject:v14];
        [*(a1 + 40) addObject:v13];
      }
    }

    else
    {
      v49 = MEMORY[0x1E696ABC0];
      v57[0] = *MEMORY[0x1E696A578];
      v32 = [*(*(*(a1 + 48) + 8) + 40) localizedDescription];
      v33 = &stru_1F4E1BE30;
      v51 = v32;
      if (v32)
      {
        v33 = v32;
      }

      v58[0] = v33;
      v57[1] = *MEMORY[0x1E696A588];
      v34 = [*(*(*(a1 + 48) + 8) + 40) localizedFailureReason];
      v50 = v34;
      if (!v34)
      {
        v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error instantiating '%@' model.", objc_opt_class()];
      }

      v48 = v34;
      v58[1] = v34;
      v57[2] = *MEMORY[0x1E696AA08];
      v35 = *(*(*(a1 + 48) + 8) + 40);
      v36 = v35;
      v37 = v35;
      if (!v35)
      {
        v37 = [MEMORY[0x1E695DFB0] null];
        v36 = *(*(*(a1 + 48) + 8) + 40);
      }

      v47 = v37;
      v58[2] = v37;
      v57[3] = @"GCFailingKeyPathErrorKey";
      v38 = [v36 gc_failingKeyPath];
      v39 = v38;
      if (v38)
      {
        v40 = v38;
      }

      else
      {
        v40 = MEMORY[0x1E695E0F0];
      }

      v41 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%zd]", a3];
      v42 = [v40 arrayByAddingObject:v41];
      v58[3] = v42;
      v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v58 forKeys:v57 count:4];
      v44 = [(NSError *)v49 gc_modelError:v43 userInfo:?];
      v45 = *(*(a1 + 48) + 8);
      v46 = *(v45 + 40);
      *(v45 + 40) = v44;

      if (!v35)
      {
      }

      if (!v50)
      {
      }

      *a4 = 1;
    }
  }

  else
  {
    v24 = MEMORY[0x1E696ABC0];
    v60[0] = *MEMORY[0x1E696A588];
    v25 = [*(*(*(a1 + 48) + 8) + 40) localizedFailureReason];
    v61[0] = v25;
    v60[1] = @"GCFailingKeyPathErrorKey";
    v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%zd]", a3];
    v59 = v26;
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v59 count:1];
    v61[1] = v27;
    v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v61 forKeys:v60 count:2];
    v29 = [(NSError *)v24 gc_modelError:v28 userInfo:?];
    v30 = *(*(a1 + 48) + 8);
    v31 = *(v30 + 40);
    *(v30 + 40) = v29;

    *a4 = 1;
  }
}

@end