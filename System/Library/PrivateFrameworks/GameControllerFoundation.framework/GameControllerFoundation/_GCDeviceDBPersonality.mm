@interface _GCDeviceDBPersonality
- (_GCDeviceDBPersonality)init;
- (_GCDeviceDBPersonality)initWithDictionary:(id)dictionary error:(id *)error;
- (_GCDeviceDBPersonality)initWithURL:(id)l error:(id *)error;
@end

@implementation _GCDeviceDBPersonality

- (_GCDeviceDBPersonality)initWithDictionary:(id)dictionary error:(id *)error
{
  v110[2] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  if (!dictionaryCopy)
  {
    [_GCDeviceDBPersonality initWithDictionary:a2 error:self];
  }

  v87.receiver = self;
  v87.super_class = _GCDeviceDBPersonality;
  v8 = [(_GCDeviceDBPersonality *)&v87 init];
  v9 = objc_opt_class();
  v86 = 0;
  v10 = [dictionaryCopy gc_requiredObjectForKey:@"CompatibilityVersion" ofClass:v9 error:&v86];
  v11 = v86;
  if (!v10)
  {
    [(_GCDeviceDBPersonality *)error initWithDictionary:v11 error:v109, v110];
    goto LABEL_56;
  }

  v12 = [[GCVersion alloc] initWithString:v10];
  if (!v12)
  {
    if (!error)
    {
      goto LABEL_9;
    }

    v56 = MEMORY[0x1E696ABC0];
    v57 = *MEMORY[0x1E696A578];
    v108[0] = @"Invalid 'Personality' definition.";
    v58 = *MEMORY[0x1E696A588];
    v107[0] = v57;
    v107[1] = v58;
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"'%@' is not a valid version.", v10];
    v108[1] = v18;
    v107[2] = 0x1F4E1C010;
    v106 = @"CompatibilityVersion";
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v106 count:1];
    v108[2] = v19;
    v59 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v108 forKeys:v107 count:3];
    *error = [(NSError *)v56 gc_deviceDBError:v59 userInfo:?];

    goto LABEL_8;
  }

  v13 = +[GCVersion currentSourceVersion];
  v14 = [(GCVersion *)v12 isGreaterThanSourceVersion:v13];

  if (v14)
  {
    if (!error)
    {
LABEL_9:

LABEL_56:
      v46 = 0;
      goto LABEL_57;
    }

    v15 = MEMORY[0x1E696ABC0];
    v16 = *MEMORY[0x1E696A578];
    v105[0] = @"Incompatible 'Personality' definition.";
    v17 = *MEMORY[0x1E696A588];
    v104[0] = v16;
    v104[1] = v17;
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Personality definition requires version '%@'.", v12];
    v105[1] = v18;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v105 forKeys:v104 count:2];
    *error = [(NSError *)v15 gc_deviceDBError:v19 userInfo:?];
LABEL_8:

    goto LABEL_9;
  }

  compatibilityVersion = v8->_compatibilityVersion;
  v8->_compatibilityVersion = v12;

  v21 = objc_opt_class();
  v85 = 0;
  v22 = [dictionaryCopy gc_objectForKey:@"ObsoletedInVersion" ofClass:v21 error:&v85];
  v23 = v85;
  v24 = v23;
  if (!v22 && v23)
  {
    if (!error)
    {
      goto LABEL_20;
    }

    v60 = MEMORY[0x1E696ABC0];
    v61 = *MEMORY[0x1E696A578];
    v103[0] = @"Invalid 'Personality' definition.";
    v62 = *MEMORY[0x1E696A588];
    v102[0] = v61;
    v102[1] = v62;
    localizedFailureReason = [v23 localizedFailureReason];
    v103[1] = localizedFailureReason;
    v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v103 forKeys:v102 count:2];
    *error = [(NSError *)v60 gc_deviceDBError:v31 userInfo:?];
    goto LABEL_18;
  }

  if (v22)
  {
    localizedFailureReason = [[GCVersion alloc] initWithString:v22];
    if (!localizedFailureReason)
    {
      if (!error)
      {
        goto LABEL_19;
      }

      v67 = MEMORY[0x1E696ABC0];
      v68 = *MEMORY[0x1E696A578];
      v101[0] = @"Invalid 'Personality' definition.";
      v69 = *MEMORY[0x1E696A588];
      v100[0] = v68;
      v100[1] = v69;
      v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"'%@' is not a valid version.", v22];
      v101[1] = v31;
      v100[2] = 0x1F4E1C010;
      v99 = @"ObsoletedInVersion";
      v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v99 count:1];
      v101[2] = v32;
      v70 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v101 forKeys:v100 count:3];
      *error = [(NSError *)v67 gc_deviceDBError:v70 userInfo:?];

LABEL_17:
LABEL_18:

      goto LABEL_19;
    }

    v26 = +[GCVersion currentSourceVersion];
    v27 = [(GCVersion *)localizedFailureReason isLessThanOrEqualToSourceVersion:v26];

    if (v27)
    {
      if (!error)
      {
LABEL_19:

LABEL_20:
        goto LABEL_56;
      }

      v28 = MEMORY[0x1E696ABC0];
      v29 = *MEMORY[0x1E696A578];
      v98[0] = @"Incompatible 'Personality' definition.";
      v30 = *MEMORY[0x1E696A588];
      v97[0] = v29;
      v97[1] = v30;
      v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Personality definition requires version not greater than '%@'.", localizedFailureReason];
      v98[1] = v31;
      v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v98 forKeys:v97 count:2];
      *error = [(NSError *)v28 gc_deviceDBError:v32 userInfo:?];
      goto LABEL_17;
    }

    obsoletedInVersion = v8->_obsoletedInVersion;
    v8->_obsoletedInVersion = localizedFailureReason;
  }

  v34 = objc_opt_class();
  v84 = 0;
  v35 = [dictionaryCopy gc_objectForKey:@"IOPropertyMatchingPredicate" ofClass:v34 error:&v84];
  v36 = v84;
  v37 = v36;
  if (!v35 && v36)
  {
    if (!error)
    {
LABEL_55:

      goto LABEL_56;
    }

    v63 = MEMORY[0x1E696ABC0];
    v64 = *MEMORY[0x1E696A578];
    v96[0] = @"Invalid 'Personality' definition.";
    v65 = *MEMORY[0x1E696A588];
    v95[0] = v64;
    v95[1] = v65;
    localizedFailureReason2 = [v36 localizedFailureReason];
    v96[1] = localizedFailureReason2;
    v80 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v96 forKeys:v95 count:2];
    *error = [(NSError *)v63 gc_deviceDBError:v80 userInfo:?];

LABEL_54:
    goto LABEL_55;
  }

  if (!v35)
  {
    goto LABEL_27;
  }

  v38 = [MEMORY[0x1E696AE18] predicateWithFormat:v35];
  if (!v38)
  {
    v71 = [MEMORY[0x1E696AEC0] stringWithFormat:@"String is not a valid predicate: '%@'.", v35];
    localizedFailureReason2 = v71;
    if (error)
    {
      v72 = MEMORY[0x1E696ABC0];
      v73 = *MEMORY[0x1E696A588];
      v93[0] = *MEMORY[0x1E696A578];
      v93[1] = v73;
      v94[0] = @"Invalid 'Personality' definition.";
      v94[1] = v71;
      v93[2] = *MEMORY[0x1E696AA08];
      null = v37;
      if (!v37)
      {
        null = [MEMORY[0x1E695DFB0] null];
      }

      v81 = null;
      v94[2] = null;
      v93[3] = 0x1F4E1C010;
      v92 = @"IOPropertyMatchingPredicate";
      v75 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v92 count:1];
      v94[3] = v75;
      v76 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v94 forKeys:v93 count:4];
      *error = [(NSError *)v72 gc_deviceDBError:v76 userInfo:?];

      if (!v37)
      {
      }
    }

    goto LABEL_54;
  }

  ioMatchingPredicate = v8->_ioMatchingPredicate;
  v8->_ioMatchingPredicate = v38;

LABEL_27:
  v40 = objc_opt_class();
  v83 = 0;
  v41 = [dictionaryCopy gc_requiredObjectForKey:@"Model" ofClass:v40 error:&v83];
  v42 = v83;
  if (!v41)
  {
    [(_GCDeviceDBPersonality *)error initWithDictionary:v42 error:v90, v91];
    goto LABEL_56;
  }

  v82 = 0;
  v43 = [GCGenericDeviceModel modelWithDictionaryRepresentation:v41 error:&v82];
  v44 = v82;

  if (!v43)
  {
    if (error)
    {
      v78 = MEMORY[0x1E696ABC0];
      v88[0] = *MEMORY[0x1E696A578];
      localizedDescription = [v44 localizedDescription];
      v79 = localizedDescription;
      v48 = @"Invalid 'Personality' definition.";
      if (localizedDescription)
      {
        v48 = localizedDescription;
      }

      v89[0] = v48;
      v88[1] = *MEMORY[0x1E696A588];
      localizedFailureReason3 = [v44 localizedFailureReason];
      v50 = localizedFailureReason3;
      v51 = @"Invalid 'Model' definition.";
      if (localizedFailureReason3)
      {
        v51 = localizedFailureReason3;
      }

      v89[1] = v51;
      v88[2] = 0x1F4E1C010;
      gc_failingKeyPath = [v44 gc_failingKeyPath];
      v53 = gc_failingKeyPath;
      if (!gc_failingKeyPath)
      {
        gc_failingKeyPath = MEMORY[0x1E695E0F0];
      }

      v54 = [gc_failingKeyPath arrayByAddingObject:@"Model"];
      v89[2] = v54;
      v55 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v89 forKeys:v88 count:3];
      *error = [(NSError *)v78 gc_deviceDBError:v55 userInfo:?];
    }

    goto LABEL_56;
  }

  model = v8->_model;
  v8->_model = v43;

  v46 = v8;
LABEL_57:

  return v46;
}

- (_GCDeviceDBPersonality)initWithURL:(id)l error:(id *)error
{
  v34[4] = *MEMORY[0x1E69E9840];
  lCopy = l;
  if (!lCopy)
  {
    error = 0;
    goto LABEL_11;
  }

  v30 = 0;
  v8 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:lCopy options:0 error:&v30];
  v9 = v30;
  v10 = v9;
  if (!v8)
  {
    if (!error)
    {
      goto LABEL_9;
    }

    v19 = MEMORY[0x1E696ABC0];
    v20 = *MEMORY[0x1E696A588];
    v33[0] = *MEMORY[0x1E696A578];
    v33[1] = v20;
    v34[0] = @"Invalid device personality";
    v34[1] = @"Error loading file.";
    v33[2] = *MEMORY[0x1E696AA08];
    null = v9;
    if (!v9)
    {
      null = [MEMORY[0x1E695DFB0] null];
    }

    v34[2] = null;
    v33[3] = *MEMORY[0x1E696A368];
    path = [lCopy path];
    v34[3] = path;
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:4];
    *error = [(NSError *)v19 gc_deviceDBError:v22 userInfo:?];

    p_isa = 0;
    error = 0;
    if (v10)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v29 = 0;
  v11 = [MEMORY[0x1E696AE40] propertyListWithData:v8 options:0 format:0 error:&v29];
  v12 = v29;
  null = v12;
  if (v11)
  {
    v28 = 0;
    self = [(_GCDeviceDBPersonality *)self initWithDictionary:v11 error:&v28];
    v14 = v28;
    null2 = v14;
    if (self)
    {
      objc_storeStrong(&self->_url, l);
      self = self;
      selfCopy = self;
    }

    else
    {
      [(_GCDeviceDBPersonality *)v14 initWithURL:lCopy error:error];
      selfCopy = 0;
    }
  }

  else
  {
    if (!error)
    {
      p_isa = 0;
      goto LABEL_7;
    }

    v26 = MEMORY[0x1E696ABC0];
    v23 = *MEMORY[0x1E696A588];
    v31[0] = *MEMORY[0x1E696A578];
    v31[1] = v23;
    v32[0] = @"Invalid device personality";
    v32[1] = @"Property list syntax error.";
    v31[2] = *MEMORY[0x1E696AA08];
    null2 = v12;
    if (!v12)
    {
      null2 = [MEMORY[0x1E695DFB0] null];
    }

    v32[2] = null2;
    v31[3] = *MEMORY[0x1E696A368];
    path2 = [lCopy path];
    v32[3] = path2;
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:4];
    *error = [(NSError *)v27 gc_deviceDBError:v25 userInfo:?];

    selfCopy = 0;
    p_isa = 0;
    if (null)
    {
      goto LABEL_7;
    }
  }

  p_isa = &selfCopy->super.isa;
LABEL_7:

LABEL_8:
  error = p_isa;
LABEL_9:

LABEL_11:
  return error;
}

- (_GCDeviceDBPersonality)init
{
  [(_GCDeviceDBPersonality *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (void)initWithDictionary:(uint64_t)a1 error:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"_GCDeviceDBPersonality.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %s", "dict != nil"}];
}

- (void)initWithDictionary:(void *)a3 error:(void *)a4 .cold.2(void *a1, void *a2, void *a3, void *a4)
{
  if (a1)
  {
    *a3 = *MEMORY[0x1E696A578];
    *a4 = @"Invalid 'Personality' definition.";
    a3[1] = *MEMORY[0x1E696A588];
    v8 = [a2 localizedFailureReason];
    a4[1] = v8;
    [MEMORY[0x1E695DF20] dictionaryWithObjects:a4 forKeys:a3 count:2];
    objc_claimAutoreleasedReturnValue();
    v9 = OUTLINED_FUNCTION_0_2();
    *a1 = [(NSError *)v9 gc_deviceDBError:v10 userInfo:v11];
  }
}

- (void)initWithURL:(void *)a3 error:.cold.1(void *a1, void *a2, void *a3)
{
  v6 = [a1 userInfo];
  v7 = [v6 mutableCopy];

  v8 = [a2 path];
  [v7 setObject:v8 forKeyedSubscript:*MEMORY[0x1E696A368]];

  if (a3)
  {
    v9 = MEMORY[0x1E696ABC0];
    v10 = [a1 domain];
    *a3 = [v9 errorWithDomain:v10 code:objc_msgSend(a1 userInfo:{"code"), v7}];
  }
}

@end