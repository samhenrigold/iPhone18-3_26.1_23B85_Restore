@interface GCGenericDeviceRumbleModel
+ (GCGenericDeviceRumbleModel)modelWithDictionaryRepresentation:(id)representation error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (GCGenericDeviceRumbleModel)init;
- (GCGenericDeviceRumbleModel)initWithCoder:(id)coder;
- (id)debugDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GCGenericDeviceRumbleModel

- (GCGenericDeviceRumbleModel)init
{
  [(GCGenericDeviceRumbleModel *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (GCGenericDeviceRumbleModel)initWithCoder:(id)coder
{
  v25[2] = *MEMORY[0x1E69E9840];
  v22.receiver = self;
  v22.super_class = GCGenericDeviceRumbleModel;
  coderCopy = coder;
  v4 = [(GCGenericDeviceRumbleModel *)&v22 init];
  [coderCopy decodeFloatForKey:@"dispatchFrequency"];
  v4->_dispatchFrequency = v5;
  v6 = MEMORY[0x1E695DFD8];
  v25[0] = objc_opt_class();
  v25[1] = objc_opt_class();
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
  v8 = [v6 setWithArray:v7];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"actuators"];
  actuators = v4->_actuators;
  v4->_actuators = v9;

  v11 = MEMORY[0x1E695DFD8];
  v24[0] = objc_opt_class();
  v24[1] = objc_opt_class();
  v24[2] = objc_opt_class();
  v24[3] = objc_opt_class();
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:4];
  v13 = [v11 setWithArray:v12];
  v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"nodes"];
  nodes = v4->_nodes;
  v4->_nodes = v14;

  v16 = MEMORY[0x1E695DFD8];
  v23[0] = objc_opt_class();
  v23[1] = objc_opt_class();
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
  v18 = [v16 setWithArray:v17];
  v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"outputs"];

  outputs = v4->_outputs;
  v4->_outputs = v19;

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [(GCGenericDeviceRumbleModel *)self dispatchFrequency];
  [coderCopy encodeFloat:@"dispatchFrequency" forKey:?];
  actuators = [(GCGenericDeviceRumbleModel *)self actuators];
  [coderCopy encodeObject:actuators forKey:@"actuators"];

  nodes = [(GCGenericDeviceRumbleModel *)self nodes];
  [coderCopy encodeObject:nodes forKey:@"nodes"];

  outputs = [(GCGenericDeviceRumbleModel *)self outputs];
  [coderCopy encodeObject:outputs forKey:@"outputs"];
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
    if (([(GCGenericDeviceRumbleModel *)self isMemberOfClass:objc_opt_class()]& 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || !-[GCGenericDeviceRumbleModel isMemberOfClass:](self, "isMemberOfClass:", [objc_opt_class() modelClass]))
    {
      goto LABEL_10;
    }
  }

  [(GCGenericDeviceRumbleModel *)self dispatchFrequency];
  v6 = v5;
  [equalCopy dispatchFrequency];
  if (v6 != v7)
  {
LABEL_10:
    v14 = 0;
    goto LABEL_15;
  }

  actuators = [(GCGenericDeviceRumbleModel *)self actuators];
  actuators2 = [equalCopy actuators];
  if ([actuators isEqual:actuators2])
  {
    nodes = [(GCGenericDeviceRumbleModel *)self nodes];
    nodes2 = [equalCopy nodes];
    if ([nodes isEqual:nodes2])
    {
      outputs = [(GCGenericDeviceRumbleModel *)self outputs];
      outputs2 = [equalCopy outputs];
      v14 = [outputs isEqual:outputs2];
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

LABEL_15:
  return v14;
}

- (id)debugDescription
{
  v16 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  [(GCGenericDeviceRumbleModel *)self dispatchFrequency];
  v6 = v5;
  actuators = [(GCGenericDeviceRumbleModel *)self actuators];
  v8 = [actuators debugDescription];
  v9 = [v8 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t"];
  nodes = [(GCGenericDeviceRumbleModel *)self nodes];
  outputs = [(GCGenericDeviceRumbleModel *)self outputs];
  v12 = [outputs debugDescription];
  v13 = [v12 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t"];
  v14 = [v16 stringWithFormat:@"<%@ %p> {\n\t dispatchFrequency = %f\n\t actuators = %@\n\t nodes = %@\n\t outputs = %@\n}", v4, self, *&v6, v9, nodes, v13];

  return v14;
}

+ (GCGenericDeviceRumbleModel)modelWithDictionaryRepresentation:(id)representation error:(id *)error
{
  v126[2] = *MEMORY[0x1E69E9840];
  v92 = objc_opt_new();
  v112[0] = 0;
  representationCopy = representation;
  v5 = [representation gc_requiredObjectForKey:@"DispatchFrequency" ofClass:objc_opt_class() error:v112];
  v6 = v112[0];
  if (!v5)
  {
    if (error)
    {
      v60 = MEMORY[0x1E696ABC0];
      v125[0] = *MEMORY[0x1E696A578];
      v61 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", self];
      v126[0] = v61;
      v125[1] = *MEMORY[0x1E696A588];
      localizedFailureReason = [v6 localizedFailureReason];
      v126[1] = localizedFailureReason;
      v63 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v126 forKeys:v125 count:2];
      *error = [(NSError *)v60 gc_modelError:v63 userInfo:?];
    }

    goto LABEL_70;
  }

  [v5 floatValue];
  [v92 setDispatchFrequency:?];

  v111 = 0;
  v7 = [representationCopy gc_requiredObjectForKey:@"Actuators" ofClass:objc_opt_class() error:&v111];
  v8 = v111;
  if (!v7)
  {
    v6 = v8;
    if (error)
    {
      v64 = MEMORY[0x1E696ABC0];
      v123[0] = *MEMORY[0x1E696A578];
      v65 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", self];
      v124[0] = v65;
      v123[1] = *MEMORY[0x1E696A588];
      localizedFailureReason2 = [v6 localizedFailureReason];
      v124[1] = localizedFailureReason2;
      v67 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v124 forKeys:v123 count:2];
      *error = [(NSError *)v64 gc_modelError:v67 userInfo:?];
    }

    goto LABEL_70;
  }

  v89 = v8;
  v105 = 0;
  v106 = &v105;
  v107 = 0x3032000000;
  v108 = __Block_byref_object_copy__16;
  v109 = __Block_byref_object_dispose__16;
  v110 = 0;
  v9 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(v7, "count")}];
  v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v7, "count")}];
  v101[0] = MEMORY[0x1E69E9820];
  v101[1] = 3221225472;
  v101[2] = __85__GCGenericDeviceRumbleModel_Serialization__modelWithDictionaryRepresentation_error___block_invoke;
  v101[3] = &unk_1E8413C58;
  v104 = &v105;
  v11 = v9;
  v102 = v11;
  v12 = v10;
  v103 = v12;
  [v7 gc_enumerateObjectsUsingBlock:v101];
  v13 = [v12 count];
  v14 = [v7 count];
  if (v13 == v14)
  {
    [v92 setActuators:v12];
  }

  else if (error)
  {
    v77 = MEMORY[0x1E696ABC0];
    v121[0] = *MEMORY[0x1E696A578];
    localizedDescription = [v106[5] localizedDescription];
    if ([localizedDescription length])
    {
      [v106[5] localizedDescription];
    }

    else
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", self];
    }
    v79 = ;
    v122[0] = v79;
    v121[1] = *MEMORY[0x1E696A588];
    localizedFailureReason3 = [v106[5] localizedFailureReason];
    v16 = localizedFailureReason3;
    v17 = &stru_1F4E1BE30;
    if (localizedFailureReason3)
    {
      v17 = localizedFailureReason3;
    }

    v122[1] = v17;
    v121[2] = *MEMORY[0x1E696AA08];
    v18 = v106[5];
    if (v18)
    {
      v19 = v106[5];
      null = v19;
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      v19 = v106[5];
    }

    v76 = null;
    v122[2] = null;
    v121[3] = @"GCFailingKeyPathErrorKey";
    gc_failingKeyPath = [v19 gc_failingKeyPath];
    v22 = gc_failingKeyPath;
    if (!gc_failingKeyPath)
    {
      gc_failingKeyPath = MEMORY[0x1E695E0F0];
    }

    v23 = [gc_failingKeyPath arrayByAddingObject:@"Actuators"];
    v122[3] = v23;
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v122 forKeys:v121 count:4];
    *error = [(NSError *)v77 gc_modelError:v24 userInfo:?];

    if (!v18)
    {
    }
  }

  _Block_object_dispose(&v105, 8);
  if (v13 != v14)
  {
    goto LABEL_58;
  }

  v100 = 0;
  v25 = [representationCopy gc_requiredObjectForKey:@"Nodes" ofClass:objc_opt_class() error:&v100];
  v26 = v100;
  if (!v25)
  {
    v6 = v26;
    if (error)
    {
      v68 = MEMORY[0x1E696ABC0];
      v119[0] = *MEMORY[0x1E696A578];
      v69 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", self];
      v120[0] = v69;
      v119[1] = *MEMORY[0x1E696A588];
      localizedFailureReason4 = [v6 localizedFailureReason];
      v120[1] = localizedFailureReason4;
      v71 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v120 forKeys:v119 count:2];
      *error = [(NSError *)v68 gc_modelError:v71 userInfo:?];
    }

    goto LABEL_70;
  }

  v90 = v26;
  v105 = 0;
  v106 = &v105;
  v107 = 0x3032000000;
  v108 = __Block_byref_object_copy__16;
  v109 = __Block_byref_object_dispose__16;
  v110 = 0;
  v27 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v25, "count")}];
  v97[0] = MEMORY[0x1E69E9820];
  v97[1] = 3221225472;
  v97[2] = __85__GCGenericDeviceRumbleModel_Serialization__modelWithDictionaryRepresentation_error___block_invoke_2;
  v97[3] = &unk_1E8414FA8;
  v99 = &v105;
  v28 = v27;
  v98 = v28;
  [v25 gc_enumerateObjectsUsingBlock:v97];
  v29 = [v28 count];
  v30 = [v25 count];
  if (v29 == v30)
  {
    [v92 setNodes:v28];
  }

  else if (error)
  {
    v78 = MEMORY[0x1E696ABC0];
    v117[0] = *MEMORY[0x1E696A578];
    localizedDescription2 = [v106[5] localizedDescription];
    if ([localizedDescription2 length])
    {
      [v106[5] localizedDescription];
    }

    else
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", self];
    }
    v80 = ;
    v118[0] = v80;
    v117[1] = *MEMORY[0x1E696A588];
    localizedFailureReason5 = [v106[5] localizedFailureReason];
    v32 = localizedFailureReason5;
    v33 = &stru_1F4E1BE30;
    if (localizedFailureReason5)
    {
      v33 = localizedFailureReason5;
    }

    v118[1] = v33;
    v117[2] = *MEMORY[0x1E696AA08];
    v34 = v106[5];
    if (v34)
    {
      v35 = v106[5];
      null2 = v35;
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      v35 = v106[5];
    }

    v118[2] = null2;
    v117[3] = @"GCFailingKeyPathErrorKey";
    gc_failingKeyPath2 = [v35 gc_failingKeyPath];
    v38 = gc_failingKeyPath2;
    if (!gc_failingKeyPath2)
    {
      gc_failingKeyPath2 = MEMORY[0x1E695E0F0];
    }

    v39 = [gc_failingKeyPath2 arrayByAddingObject:@"Nodes"];
    v118[3] = v39;
    v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v118 forKeys:v117 count:4];
    *error = [(NSError *)v78 gc_modelError:v40 userInfo:?];

    if (!v34)
    {
    }
  }

  _Block_object_dispose(&v105, 8);
  if (v29 != v30)
  {
    goto LABEL_58;
  }

  v96 = 0;
  v41 = [representationCopy gc_requiredObjectForKey:@"Outputs" ofClass:objc_opt_class() error:&v96];
  v42 = v96;
  if (!v41)
  {
    v6 = v42;
    if (error)
    {
      v72 = MEMORY[0x1E696ABC0];
      v115[0] = *MEMORY[0x1E696A578];
      v73 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", self];
      v116[0] = v73;
      v115[1] = *MEMORY[0x1E696A588];
      localizedFailureReason6 = [v6 localizedFailureReason];
      v116[1] = localizedFailureReason6;
      v75 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v116 forKeys:v115 count:2];
      *error = [(NSError *)v72 gc_modelError:v75 userInfo:?];
    }

LABEL_70:
    build = 0;
    v57 = v6;
    goto LABEL_57;
  }

  v91 = v42;
  v105 = 0;
  v106 = &v105;
  v107 = 0x3032000000;
  v108 = __Block_byref_object_copy__16;
  v109 = __Block_byref_object_dispose__16;
  v110 = 0;
  v43 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v41, "count")}];
  v93[0] = MEMORY[0x1E69E9820];
  v93[1] = 3221225472;
  v93[2] = __85__GCGenericDeviceRumbleModel_Serialization__modelWithDictionaryRepresentation_error___block_invoke_3;
  v93[3] = &unk_1E8414FA8;
  v95 = &v105;
  v44 = v43;
  v94 = v44;
  [v41 gc_enumerateObjectsUsingBlock:v93];
  v45 = [v44 count];
  v46 = [v41 count];
  if (v45 == v46)
  {
    [v92 setOutputs:v44];
  }

  else if (error)
  {
    v81 = MEMORY[0x1E696ABC0];
    v113[0] = *MEMORY[0x1E696A578];
    localizedDescription3 = [v106[5] localizedDescription];
    if ([localizedDescription3 length])
    {
      [v106[5] localizedDescription];
    }

    else
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' definition.", self];
    }
    v82 = ;
    v114[0] = v82;
    v113[1] = *MEMORY[0x1E696A588];
    localizedFailureReason7 = [v106[5] localizedFailureReason];
    v48 = localizedFailureReason7;
    v49 = &stru_1F4E1BE30;
    if (localizedFailureReason7)
    {
      v49 = localizedFailureReason7;
    }

    v114[1] = v49;
    v113[2] = *MEMORY[0x1E696AA08];
    v50 = v106[5];
    if (v50)
    {
      v51 = v106[5];
      null3 = v51;
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      v51 = v106[5];
    }

    v114[2] = null3;
    v113[3] = @"GCFailingKeyPathErrorKey";
    gc_failingKeyPath3 = [v51 gc_failingKeyPath];
    v54 = gc_failingKeyPath3;
    if (!gc_failingKeyPath3)
    {
      gc_failingKeyPath3 = MEMORY[0x1E695E0F0];
    }

    v55 = [gc_failingKeyPath3 arrayByAddingObject:@"Outputs"];
    v114[3] = v55;
    v56 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v114 forKeys:v113 count:4];
    *error = [(NSError *)v81 gc_modelError:v56 userInfo:?];

    if (!v50)
    {
    }
  }

  _Block_object_dispose(&v105, 8);
  if (v45 == v46)
  {
    v57 = v92;
    build = [v92 build];
    v92 = 0;
LABEL_57:

    goto LABEL_59;
  }

LABEL_58:
  build = 0;
LABEL_59:

  return build;
}

void __85__GCGenericDeviceRumbleModel_Serialization__modelWithDictionaryRepresentation_error___block_invoke(uint64_t a1, uint64_t (**a2)(void, void, void), uint64_t a3, _BYTE *a4)
{
  v70[2] = *MEMORY[0x1E69E9840];
  v8 = a2;
  v9 = objc_opt_class();
  v10 = *(*(a1 + 48) + 8);
  obj = *(v10 + 40);
  v11 = (a2)[2](v8, v9, &obj);

  objc_storeStrong((v10 + 40), obj);
  if (v11)
  {
    v12 = *(*(a1 + 48) + 8);
    v61 = 0;
    v13 = [GCGenericDeviceRumbleActuatorModel modelWithDictionaryRepresentation:v11 error:&v61];
    objc_storeStrong((v12 + 40), v61);
    if (v13)
    {
      v14 = *(a1 + 32);
      v15 = [v13 name];
      v16 = [v14 member:v15];

      if (v16)
      {
        v17 = MEMORY[0x1E696ABC0];
        v64[0] = *MEMORY[0x1E696A588];
        v18 = MEMORY[0x1E696AEC0];
        v59 = v11;
        v19 = a4;
        v20 = objc_opt_class();
        v21 = [v13 name];
        v22 = [v18 stringWithFormat:@"Duplicate definition of '%@' with name '%@'.", v20, v21];
        v65[0] = v22;
        v64[1] = @"GCFailingKeyPathErrorKey";
        v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%zd]", a3];
        v63 = v23;
        v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v63 count:1];
        v65[1] = v24;
        v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v65 forKeys:v64 count:2];
        v26 = [(NSError *)v17 gc_modelError:v25 userInfo:?];
        v27 = *(*(a1 + 48) + 8);
        v28 = *(v27 + 40);
        *(v27 + 40) = v26;

        *v19 = 1;
        v11 = v59;
      }

      else
      {
        [*(a1 + 40) addObject:v13];
        v29 = *(a1 + 32);
        v30 = [v13 name];
        [v29 addObject:v30];
      }
    }

    else
    {
      v57 = MEMORY[0x1E696ABC0];
      v66[0] = *MEMORY[0x1E696A578];
      v39 = [*(*(*(a1 + 48) + 8) + 40) localizedDescription];
      v40 = &stru_1F4E1BE30;
      v60 = v39;
      if (v39)
      {
        v40 = v39;
      }

      v67[0] = v40;
      v66[1] = *MEMORY[0x1E696A588];
      v41 = [*(*(*(a1 + 48) + 8) + 40) localizedFailureReason];
      v58 = v41;
      if (!v41)
      {
        v41 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error instantiating '%@' model.", objc_opt_class()];
      }

      v42 = a4;
      v56 = v41;
      v67[1] = v41;
      v66[2] = *MEMORY[0x1E696AA08];
      v43 = *(*(*(a1 + 48) + 8) + 40);
      v44 = v43;
      v45 = v43;
      if (!v43)
      {
        v45 = [MEMORY[0x1E695DFB0] null];
        v44 = *(*(*(a1 + 48) + 8) + 40);
      }

      v55 = v45;
      v67[2] = v45;
      v66[3] = @"GCFailingKeyPathErrorKey";
      v46 = [v44 gc_failingKeyPath];
      v47 = v46;
      if (v46)
      {
        v48 = v46;
      }

      else
      {
        v48 = MEMORY[0x1E695E0F0];
      }

      v49 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%zd]", a3];
      v50 = [v48 arrayByAddingObject:v49];
      v67[3] = v50;
      v51 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v67 forKeys:v66 count:4];
      v52 = [(NSError *)v57 gc_modelError:v51 userInfo:?];
      v53 = *(*(a1 + 48) + 8);
      v54 = *(v53 + 40);
      *(v53 + 40) = v52;

      if (!v43)
      {
      }

      if (!v58)
      {
      }

      *v42 = 1;
    }
  }

  else
  {
    v31 = MEMORY[0x1E696ABC0];
    v69[0] = *MEMORY[0x1E696A588];
    v32 = [*(*(*(a1 + 48) + 8) + 40) localizedFailureReason];
    v70[0] = v32;
    v69[1] = @"GCFailingKeyPathErrorKey";
    v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%zd]", a3];
    v68 = v33;
    v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v68 count:1];
    v70[1] = v34;
    v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v70 forKeys:v69 count:2];
    v36 = [(NSError *)v31 gc_modelError:v35 userInfo:?];
    v37 = *(*(a1 + 48) + 8);
    v38 = *(v37 + 40);
    *(v37 + 40) = v36;

    *a4 = 1;
  }
}

void __85__GCGenericDeviceRumbleModel_Serialization__modelWithDictionaryRepresentation_error___block_invoke_2(uint64_t a1, uint64_t (**a2)(void, void, void), uint64_t a3, _BYTE *a4)
{
  v23[2] = *MEMORY[0x1E69E9840];
  v8 = a2;
  v9 = objc_opt_class();
  v10 = *(*(a1 + 40) + 8);
  obj = *(v10 + 40);
  v11 = (a2)[2](v8, v9, &obj);

  objc_storeStrong((v10 + 40), obj);
  if (v11)
  {
    [*(a1 + 32) addObject:v11];
  }

  else
  {
    v12 = MEMORY[0x1E696ABC0];
    v22[0] = *MEMORY[0x1E696A588];
    v13 = [*(*(*(a1 + 40) + 8) + 40) localizedFailureReason];
    v23[0] = v13;
    v22[1] = @"GCFailingKeyPathErrorKey";
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%zd]", a3];
    v21 = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:1];
    v23[1] = v15;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:2];
    v17 = [(NSError *)v12 gc_modelError:v16 userInfo:?];
    v18 = *(*(a1 + 40) + 8);
    v19 = *(v18 + 40);
    *(v18 + 40) = v17;

    *a4 = 1;
  }
}

void __85__GCGenericDeviceRumbleModel_Serialization__modelWithDictionaryRepresentation_error___block_invoke_3(uint64_t a1, uint64_t (**a2)(void, void, void), uint64_t a3, _BYTE *a4)
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
    v13 = [GCGenericDeviceRumbleOutputModel modelWithDictionaryRepresentation:v11 error:&v42];
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