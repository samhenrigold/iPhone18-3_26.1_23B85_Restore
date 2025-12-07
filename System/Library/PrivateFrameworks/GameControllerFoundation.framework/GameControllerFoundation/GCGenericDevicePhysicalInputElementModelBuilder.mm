@interface GCGenericDevicePhysicalInputElementModelBuilder
- (BOOL)isEqual:(id)equal;
- (GCGenericDevicePhysicalInputElementModelBuilder)init;
- (GCGenericDevicePhysicalInputElementModelBuilder)initWithDictionaryRepresentation:(id)representation error:(id *)error;
- (id)build;
- (unint64_t)hash;
- (void)build;
- (void)initializeWithModel:(id)model;
- (void)reset;
@end

@implementation GCGenericDevicePhysicalInputElementModelBuilder

- (GCGenericDevicePhysicalInputElementModelBuilder)init
{
  v4 = objc_opt_class();
  if (v4 == objc_opt_class())
  {
    [(GCGenericDevicePhysicalInputElementModelBuilder *)self doesNotRecognizeSelector:a2];
  }

  v6.receiver = self;
  v6.super_class = GCGenericDevicePhysicalInputElementModelBuilder;
  return [(GCGenericDevicePhysicalInputElementModelBuilder *)&v6 init];
}

- (void)initializeWithModel:(id)model
{
  modelCopy = model;
  identifier = [modelCopy identifier];
  [(GCGenericDevicePhysicalInputElementModelBuilder *)self setIdentifier:identifier];

  names = [modelCopy names];
  [(GCGenericDevicePhysicalInputElementModelBuilder *)self setNames:names];

  isAnalog = [modelCopy isAnalog];
  [(GCGenericDevicePhysicalInputElementModelBuilder *)self setAnalog:isAnalog];

  localizedNameKey = [modelCopy localizedNameKey];
  [(GCGenericDevicePhysicalInputElementModelBuilder *)self setLocalizedNameKey:localizedNameKey];

  symbolName = [modelCopy symbolName];

  [(GCGenericDevicePhysicalInputElementModelBuilder *)self setSymbolName:symbolName];
}

- (void)reset
{
  [(GCGenericDevicePhysicalInputElementModelBuilder *)self setIdentifier:0];
  [(GCGenericDevicePhysicalInputElementModelBuilder *)self setNames:0];
  [(GCGenericDevicePhysicalInputElementModelBuilder *)self setAnalog:0];
  [(GCGenericDevicePhysicalInputElementModelBuilder *)self setLocalizedNameKey:0];

  [(GCGenericDevicePhysicalInputElementModelBuilder *)self setSymbolName:0];
}

- (id)build
{
  v4 = objc_alloc([objc_opt_class() modelClass]);
  identifier = [(GCGenericDevicePhysicalInputElementModelBuilder *)self identifier];
  if (!identifier)
  {
    [(GCGenericDevicePhysicalInputElementModelBuilder *)a2 build];
  }

  v6 = [identifier copy];
  v7 = v4[1];
  v4[1] = v6;

  names = [(GCGenericDevicePhysicalInputElementModelBuilder *)self names];
  if (!names)
  {
    [(GCGenericDevicePhysicalInputElementModelBuilder *)a2 build];
  }

  if (![names count])
  {
    [(GCGenericDevicePhysicalInputElementModelBuilder *)a2 build];
  }

  v9 = [names copy];
  v10 = v4[2];
  v4[2] = v9;

  isAnalog = [(GCGenericDevicePhysicalInputElementModelBuilder *)self isAnalog];
  v12 = [isAnalog copy];
  v13 = v4[3];
  v4[3] = v12;

  localizedNameKey = [(GCGenericDevicePhysicalInputElementModelBuilder *)self localizedNameKey];
  v15 = [localizedNameKey copy];
  v16 = v4[4];
  v4[4] = v15;

  symbolName = [(GCGenericDevicePhysicalInputElementModelBuilder *)self symbolName];
  v18 = [symbolName copy];
  v19 = v4[5];
  v4[5] = v18;

  return v4;
}

- (unint64_t)hash
{
  modelClass = [objc_opt_class() modelClass];

  return [modelClass hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [equalCopy isEqual:self];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = GCGenericDevicePhysicalInputElementModelBuilder;
    v5 = [(GCGenericDevicePhysicalInputElementModelBuilder *)&v8 isEqual:equalCopy];
  }

  v6 = v5;

  return v6;
}

- (GCGenericDevicePhysicalInputElementModelBuilder)initWithDictionaryRepresentation:(id)representation error:(id *)error
{
  v80[2] = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  v7 = [(GCGenericDevicePhysicalInputElementModelBuilder *)self init];
  v68 = 0;
  v8 = [representationCopy gc_requiredObjectForKey:@"Identifier" ofClass:objc_opt_class() error:&v68];
  v9 = v68;
  if (!v8)
  {
    if (error)
    {
      v24 = MEMORY[0x1E696ABC0];
      v79[0] = *MEMORY[0x1E696A578];
      v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", objc_msgSend(objc_opt_class(), "modelClass")];
      v80[0] = v25;
      v79[1] = *MEMORY[0x1E696A588];
      localizedFailureReason = [v9 localizedFailureReason];
      v80[1] = localizedFailureReason;
      v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v80 forKeys:v79 count:2];
      *error = [(NSError *)v24 gc_modelError:v27 userInfo:?];
    }

    goto LABEL_6;
  }

  [(GCGenericDevicePhysicalInputElementModelBuilder *)v7 setIdentifier:v8];

  v67 = 0;
  v10 = [representationCopy gc_requiredObjectForKey:@"Aliases" ofClass:objc_opt_class() error:&v67];
  v11 = v67;
  if (!v10)
  {
    if (error)
    {
      v28 = MEMORY[0x1E696ABC0];
      v77[0] = *MEMORY[0x1E696A578];
      v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", objc_msgSend(objc_opt_class(), "modelClass")];
      v78[0] = v29;
      v77[1] = *MEMORY[0x1E696A588];
      localizedFailureReason2 = [v11 localizedFailureReason];
      v78[1] = localizedFailureReason2;
      v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v78 forKeys:v77 count:2];
      *error = [(NSError *)v28 gc_modelError:v31 userInfo:?];
    }

    goto LABEL_6;
  }

  v61 = 0;
  v62 = &v61;
  v63 = 0x3032000000;
  v64 = __Block_byref_object_copy_;
  v65 = __Block_byref_object_dispose_;
  v66 = 0;
  v60[0] = MEMORY[0x1E69E9820];
  v60[1] = 3221225472;
  v60[2] = __105__GCGenericDevicePhysicalInputElementModelBuilder_Serialization__initWithDictionaryRepresentation_error___block_invoke;
  v60[3] = &unk_1E8413B30;
  v60[4] = &v61;
  [v10 gc_enumerateObjectsUsingBlock:v60];
  v12 = v62[5];
  if (v12)
  {
    if (error)
    {
      v53 = MEMORY[0x1E696ABC0];
      v75[0] = *MEMORY[0x1E696A578];
      v56 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", objc_msgSend(objc_opt_class(), "modelClass")];
      v76[0] = v56;
      v75[1] = *MEMORY[0x1E696A588];
      localizedFailureReason3 = [v62[5] localizedFailureReason];
      v55 = localizedFailureReason3;
      v33 = &stru_1F4E1BE30;
      if (localizedFailureReason3)
      {
        v33 = localizedFailureReason3;
      }

      v76[1] = v33;
      v75[2] = *MEMORY[0x1E696AA08];
      v34 = v62[5];
      if (v34)
      {
        v35 = v62[5];
        null = v35;
      }

      else
      {
        null = [MEMORY[0x1E695DFB0] null];
        v35 = v62[5];
      }

      v52 = null;
      v76[2] = null;
      v75[3] = @"GCFailingKeyPathErrorKey";
      gc_failingKeyPath = [v35 gc_failingKeyPath];
      v50 = gc_failingKeyPath;
      if (!gc_failingKeyPath)
      {
        gc_failingKeyPath = MEMORY[0x1E695E0F0];
      }

      v54 = [gc_failingKeyPath arrayByAddingObject:@"Aliases"];
      v76[3] = v54;
      v51 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v76 forKeys:v75 count:4];
      *error = [(NSError *)v53 gc_modelError:v51 userInfo:?];

      if (!v34)
      {
      }
    }
  }

  else
  {
    [(GCGenericDevicePhysicalInputElementModelBuilder *)v7 setNames:v10];
  }

  _Block_object_dispose(&v61, 8);

  if (v12)
  {
LABEL_6:
    v13 = 0;
    goto LABEL_20;
  }

  v59 = 0;
  v14 = [representationCopy gc_objectForKey:@"Analog" ofClass:objc_opt_class() error:&v59];
  v15 = v59;
  v16 = v15;
  if (!v14 && v15)
  {
    if (error)
    {
      v37 = MEMORY[0x1E696ABC0];
      v73[0] = *MEMORY[0x1E696A578];
      v38 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", objc_msgSend(objc_opt_class(), "modelClass")];
      v74[0] = v38;
      v73[1] = *MEMORY[0x1E696A588];
      localizedFailureReason4 = [v16 localizedFailureReason];
      v74[1] = localizedFailureReason4;
      v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v74 forKeys:v73 count:2];
      *error = [(NSError *)v37 gc_modelError:v40 userInfo:?];
    }

    goto LABEL_6;
  }

  if (v14)
  {
    [(GCGenericDevicePhysicalInputElementModelBuilder *)v7 setAnalog:v14];
  }

  v58 = 0;
  v17 = [representationCopy gc_objectForKey:@"LocalizedNameKey" ofClass:objc_opt_class() error:&v58];
  v18 = v58;
  v19 = v18;
  if (!v17 && v18)
  {
    if (error)
    {
      v41 = MEMORY[0x1E696ABC0];
      v71[0] = *MEMORY[0x1E696A578];
      v42 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", objc_msgSend(objc_opt_class(), "modelClass")];
      v72[0] = v42;
      v71[1] = *MEMORY[0x1E696A588];
      localizedFailureReason5 = [v19 localizedFailureReason];
      v72[1] = localizedFailureReason5;
      v44 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v72 forKeys:v71 count:2];
      *error = [(NSError *)v41 gc_modelError:v44 userInfo:?];
    }

    goto LABEL_6;
  }

  if (v17)
  {
    [(GCGenericDevicePhysicalInputElementModelBuilder *)v7 setLocalizedNameKey:v17];
  }

  v57 = 0;
  v20 = [representationCopy gc_objectForKey:@"SymbolName" ofClass:objc_opt_class() error:&v57];
  v21 = v57;
  v22 = v21;
  if (!v20 && v21)
  {
    if (error)
    {
      v45 = MEMORY[0x1E696ABC0];
      v69[0] = *MEMORY[0x1E696A578];
      v46 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", objc_msgSend(objc_opt_class(), "modelClass")];
      v70[0] = v46;
      v69[1] = *MEMORY[0x1E696A588];
      localizedFailureReason6 = [v22 localizedFailureReason];
      v70[1] = localizedFailureReason6;
      v48 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v70 forKeys:v69 count:2];
      *error = [(NSError *)v45 gc_modelError:v48 userInfo:?];
    }

    goto LABEL_6;
  }

  if (v20)
  {
    [(GCGenericDevicePhysicalInputElementModelBuilder *)v7 setSymbolName:v20];
  }

  v13 = v7;
LABEL_20:

  return v13;
}

void __105__GCGenericDevicePhysicalInputElementModelBuilder_Serialization__initWithDictionaryRepresentation_error___block_invoke(uint64_t a1, uint64_t (**a2)(void, void, void), uint64_t a3, _BYTE *a4)
{
  v23[2] = *MEMORY[0x1E69E9840];
  v8 = a2;
  v9 = objc_opt_class();
  v10 = *(*(a1 + 32) + 8);
  obj = *(v10 + 40);
  v11 = (a2)[2](v8, v9, &obj);

  objc_storeStrong((v10 + 40), obj);
  if (!v11)
  {
    v12 = MEMORY[0x1E696ABC0];
    v22[0] = *MEMORY[0x1E696A588];
    v13 = [*(*(*(a1 + 32) + 8) + 40) localizedFailureReason];
    v23[0] = v13;
    v22[1] = @"GCFailingKeyPathErrorKey";
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%zd]", a3];
    v21 = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:1];
    v23[1] = v15;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:2];
    v17 = [(NSError *)v12 gc_modelError:v16 userInfo:?];
    v18 = *(*(a1 + 32) + 8);
    v19 = *(v18 + 40);
    *(v18 + 40) = v17;

    *a4 = 1;
  }
}

- (void)build
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"GCGenericDevicePhysicalInputElementModel.m" lineNumber:159 description:@"'names' can not be empty"];
}

@end