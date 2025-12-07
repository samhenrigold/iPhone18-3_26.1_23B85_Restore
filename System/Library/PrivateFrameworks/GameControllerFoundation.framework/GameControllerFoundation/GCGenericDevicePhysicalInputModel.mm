@interface GCGenericDevicePhysicalInputModel
+ (GCGenericDevicePhysicalInputModel)modelWithDictionaryRepresentation:(id)representation error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (GCGenericDevicePhysicalInputModel)init;
- (GCGenericDevicePhysicalInputModel)initWithCoder:(id)coder;
- (id)redactedDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GCGenericDevicePhysicalInputModel

- (GCGenericDevicePhysicalInputModel)init
{
  [(GCGenericDevicePhysicalInputModel *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (GCGenericDevicePhysicalInputModel)initWithCoder:(id)coder
{
  v11.receiver = self;
  v11.super_class = GCGenericDevicePhysicalInputModel;
  coderCopy = coder;
  v4 = [(GCGenericDevicePhysicalInputModel *)&v11 init];
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = [v5 setWithObjects:{v6, objc_opt_class(), 0, v11.receiver, v11.super_class}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"elements"];

  elements = v4->_elements;
  v4->_elements = v8;

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  elements = [(GCGenericDevicePhysicalInputModel *)self elements];
  [coderCopy encodeObject:elements forKey:@"elements"];
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
    if (([(GCGenericDevicePhysicalInputModel *)self isMemberOfClass:objc_opt_class()]& 1) == 0)
    {
LABEL_7:
      v7 = 0;
      goto LABEL_8;
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || !-[GCGenericDevicePhysicalInputModel isMemberOfClass:](self, "isMemberOfClass:", [objc_opt_class() modelClass]))
    {
      goto LABEL_7;
    }
  }

  elements = [(GCGenericDevicePhysicalInputModel *)self elements];
  elements2 = [equalCopy elements];
  v7 = [elements isEqual:elements2];

LABEL_8:
  return v7;
}

- (id)redactedDescription
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  [v3 appendString:@"{\n"];
  [v3 appendString:@"\t elements = ["];
  elements = [(GCGenericDevicePhysicalInputModel *)self elements];
  allObjects = [elements allObjects];
  v6 = [allObjects sortedArrayUsingComparator:&__block_literal_global_16];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v15 + 1) + 8 * i) description];
        v13 = [v12 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t"];
        [v3 appendFormat:@"\n\t %@, ", v13];
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  [v3 appendString:@"\t]\n"];
  [v3 appendString:@"}"];

  return v3;
}

uint64_t __56__GCGenericDevicePhysicalInputModel_redactedDescription__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 identifier];
  v6 = [v4 identifier];

  v7 = [v5 compare:v6];
  return v7;
}

+ (GCGenericDevicePhysicalInputModel)modelWithDictionaryRepresentation:(id)representation error:(id *)error
{
  v52[2] = *MEMORY[0x1E69E9840];
  v37 = objc_opt_new();
  v48[0] = 0;
  v5 = [representation gc_requiredObjectForKey:@"Elements" ofClass:objc_opt_class() error:v48];
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
  v45 = __Block_byref_object_copy__15;
  v46 = __Block_byref_object_dispose__15;
  v47 = 0;
  v7 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(v5, "count")}];
  v8 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(v5, "count")}];
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __92__GCGenericDevicePhysicalInputModel_Serialization__modelWithDictionaryRepresentation_error___block_invoke;
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
    [v37 setElements:v10];
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

    v21 = [gc_failingKeyPath arrayByAddingObject:@"Elements"];
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

void __92__GCGenericDevicePhysicalInputModel_Serialization__modelWithDictionaryRepresentation_error___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v74[2] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = objc_opt_class();
  v9 = *(*(a1 + 48) + 8);
  obj = *(v9 + 40);
  v59 = v7;
  v10 = (*(v7 + 2))(v7, v8, &obj);
  objc_storeStrong((v9 + 40), obj);
  if (v10)
  {
    v11 = *(*(a1 + 48) + 8);
    v64 = 0;
    v12 = [GCGenericDevicePhysicalInputElementModel modelWithDictionaryRepresentation:v10 error:&v64];
    objc_storeStrong((v11 + 40), v64);
    if (v12)
    {
      v13 = a3;
      v57 = a4;
      [v12 names];
      v60 = 0u;
      v61 = 0u;
      v62 = 0u;
      v14 = v63 = 0u;
      v15 = [v14 countByEnumeratingWithState:&v60 objects:v69 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v61;
        while (2)
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v61 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v60 + 1) + 8 * i);
            v20 = [*(a1 + 32) member:v19];

            if (v20)
            {
              v21 = MEMORY[0x1E696ABC0];
              v67[0] = *MEMORY[0x1E696A588];
              v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Duplicate definition of '%@' with name '%@'.", objc_opt_class(), v19];
              v68[0] = v22;
              v67[1] = @"GCFailingKeyPathErrorKey";
              v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%zd]", v13];
              v66 = v23;
              v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v66 count:1];
              v68[1] = v24;
              v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v68 forKeys:v67 count:2];
              v26 = [(NSError *)v21 gc_modelError:v25 userInfo:?];
              v27 = *(*(a1 + 48) + 8);
              v28 = *(v27 + 40);
              *(v27 + 40) = v26;

              *v57 = 1;
              goto LABEL_13;
            }
          }

          v16 = [v14 countByEnumeratingWithState:&v60 objects:v69 count:16];
          if (v16)
          {
            continue;
          }

          break;
        }
      }

      [*(a1 + 32) addObjectsFromArray:v14];
      [*(a1 + 40) addObject:v12];
LABEL_13:
    }

    else
    {
      v56 = MEMORY[0x1E696ABC0];
      v70[0] = *MEMORY[0x1E696A578];
      v37 = [*(*(*(a1 + 48) + 8) + 40) localizedDescription];
      v38 = v37;
      v39 = &stru_1F4E1BE30;
      if (v37)
      {
        v39 = v37;
      }

      v71[0] = v39;
      v70[1] = *MEMORY[0x1E696A588];
      v40 = [*(*(*(a1 + 48) + 8) + 40) localizedFailureReason];
      v58 = v40;
      if (!v40)
      {
        v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error instantiating '%@' model.", objc_opt_class()];
      }

      v41 = a4;
      v55 = v40;
      v71[1] = v40;
      v70[2] = *MEMORY[0x1E696AA08];
      v42 = *(*(*(a1 + 48) + 8) + 40);
      v43 = v42;
      v44 = v42;
      if (!v42)
      {
        v44 = [MEMORY[0x1E695DFB0] null];
        v43 = *(*(*(a1 + 48) + 8) + 40);
      }

      v54 = v44;
      v71[2] = v44;
      v70[3] = @"GCFailingKeyPathErrorKey";
      v45 = [v43 gc_failingKeyPath];
      v46 = v45;
      if (v45)
      {
        v47 = v45;
      }

      else
      {
        v47 = MEMORY[0x1E695E0F0];
      }

      v48 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%zd]", a3];
      v49 = [v47 arrayByAddingObject:v48];
      v71[3] = v49;
      v50 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v71 forKeys:v70 count:4];
      v51 = [(NSError *)v56 gc_modelError:v50 userInfo:?];
      v52 = *(*(a1 + 48) + 8);
      v53 = *(v52 + 40);
      *(v52 + 40) = v51;

      if (!v42)
      {
      }

      if (!v58)
      {
      }

      *v41 = 1;
    }
  }

  else
  {
    v29 = MEMORY[0x1E696ABC0];
    v73[0] = *MEMORY[0x1E696A588];
    v30 = [*(*(*(a1 + 48) + 8) + 40) localizedFailureReason];
    v74[0] = v30;
    v73[1] = @"GCFailingKeyPathErrorKey";
    v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%zd]", a3];
    v72 = v31;
    v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v72 count:1];
    v74[1] = v32;
    v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v74 forKeys:v73 count:2];
    v34 = [(NSError *)v29 gc_modelError:v33 userInfo:?];
    v35 = *(*(a1 + 48) + 8);
    v36 = *(v35 + 40);
    *(v35 + 40) = v34;

    *a4 = 1;
  }
}

@end