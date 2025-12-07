@interface _GCDeviceDBBundleDevice
- (_GCDeviceDBBundleDevice)init;
- (_GCDeviceDBBundleDevice)initWithBundle:(id)bundle dictionary:(id)dictionary error:(id *)error;
- (id)personalities;
@end

@implementation _GCDeviceDBBundleDevice

- (_GCDeviceDBBundleDevice)initWithBundle:(id)bundle dictionary:(id)dictionary error:(id *)error
{
  v97[7] = *MEMORY[0x1E69E9840];
  bundleCopy = bundle;
  dictionaryCopy = dictionary;
  v70 = bundleCopy;
  if (!bundleCopy)
  {
    [_GCDeviceDBBundleDevice initWithBundle:a2 dictionary:self error:?];
  }

  if (!dictionaryCopy)
  {
    [_GCDeviceDBBundleDevice initWithBundle:a2 dictionary:self error:?];
  }

  v87.receiver = self;
  v87.super_class = _GCDeviceDBBundleDevice;
  v11 = [(_GCDeviceDBBundleDevice *)&v87 init];
  objc_storeStrong(&v11->_bundle, bundle);
  v86 = 0;
  v12 = [dictionaryCopy gc_objectForKey:@"CompatibilityVersion" ofClass:objc_opt_class() error:&v86];
  v13 = v86;
  v14 = v13;
  if (!v12 && v13)
  {
    [_GCDeviceDBBundleDevice initWithBundle:error dictionary:v13 error:?];
    goto LABEL_47;
  }

  if (v12)
  {
    v15 = [[GCVersion alloc] initWithString:v12];
    if (!v15)
    {
      if (!error)
      {
        goto LABEL_13;
      }

      v59 = MEMORY[0x1E696ABC0];
      v60 = *MEMORY[0x1E696A578];
      v97[0] = @"Invalid device definition.";
      v61 = *MEMORY[0x1E696A588];
      v96[0] = v60;
      v96[1] = v61;
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"'%@' is not a valid version.", v12];
      v97[1] = v21;
      v96[2] = 0x1F4E1C010;
      v95 = @"CompatibilityVersion";
      v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v95 count:1];
      v97[2] = v22;
      v62 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v97 forKeys:v96 count:3];
      *error = [(NSError *)v59 gc_deviceDBError:v62 userInfo:?];

      goto LABEL_12;
    }

    v16 = +[GCVersion currentSourceVersion];
    v17 = [(GCVersion *)v15 isGreaterThanSourceVersion:v16];

    if (v17)
    {
      if (!error)
      {
LABEL_13:

LABEL_47:
        v52 = 0;
        goto LABEL_48;
      }

      v18 = MEMORY[0x1E696ABC0];
      v19 = *MEMORY[0x1E696A578];
      v94[0] = @"Incompatible device definition.";
      v20 = *MEMORY[0x1E696A588];
      v93[0] = v19;
      v93[1] = v20;
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Device definition requires version '%@'.", v15];
      v94[1] = v21;
      v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v94 forKeys:v93 count:2];
      *error = [(NSError *)v18 gc_deviceDBError:v22 userInfo:?];
LABEL_12:

      goto LABEL_13;
    }
  }

  else
  {
    v15 = 0;
  }

  v85 = 0;
  v23 = [dictionaryCopy gc_requiredObjectForKey:@"Identifier" ofClass:objc_opt_class() error:&v85];
  v24 = v85;
  if (!v23)
  {
    [_GCDeviceDBBundleDevice initWithBundle:error dictionary:v24 error:?];
    goto LABEL_47;
  }

  identifier = v11->_identifier;
  v11->_identifier = v23;

  v26 = [dictionaryCopy gc_objectForKey:@"IOPropertyMatch" ofClass:objc_opt_class() error:0];
  v27 = v26;
  if (v26)
  {
    v92 = v26;
    v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v92 count:1];
    v29 = 0;
  }

  else
  {
    v84 = 0;
    v28 = [dictionaryCopy gc_requiredObjectForKey:@"IOPropertyMatch" ofClass:objc_opt_class() error:&v84];
    v29 = v84;
    if (!v28)
    {
      [_GCDeviceDBBundleDevice initWithBundle:error dictionary:v29 error:?];
      goto LABEL_47;
    }
  }

  v78 = 0;
  v79 = &v78;
  v80 = 0x3032000000;
  v81 = __Block_byref_object_copy__10;
  v82 = __Block_byref_object_dispose__10;
  v83 = 0;
  v30 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v28, "count")}];
  v75[0] = MEMORY[0x1E69E9820];
  v75[1] = 3221225472;
  v75[2] = __59___GCDeviceDBBundleDevice_initWithBundle_dictionary_error___block_invoke;
  v75[3] = &unk_1E8414FA8;
  v77 = &v78;
  v31 = v30;
  v76 = v31;
  [v28 gc_enumerateObjectsUsingBlock:v75];
  v32 = [v31 count];
  v33 = [v28 count];
  if (v32 == v33)
  {
    v34 = [v31 copy];
    ioMatchingPredicates = v11->_ioMatchingPredicates;
    v11->_ioMatchingPredicates = v34;
LABEL_21:

    goto LABEL_22;
  }

  if (error)
  {
    v64 = MEMORY[0x1E696ABC0];
    v53 = *MEMORY[0x1E696A578];
    v91[0] = @"Invalid device definition.";
    v54 = *MEMORY[0x1E696A588];
    v90[0] = v53;
    v90[1] = v54;
    localizedFailureReason = [v79[5] localizedFailureReason];
    ioMatchingPredicates = localizedFailureReason;
    v56 = &stru_1F4E1BE30;
    if (localizedFailureReason)
    {
      v56 = localizedFailureReason;
    }

    v91[1] = v56;
    v90[2] = @"GCFailingKeyPathErrorKey";
    gc_failingKeyPath = [v79[5] gc_failingKeyPath];
    v68 = gc_failingKeyPath;
    if (!gc_failingKeyPath)
    {
      gc_failingKeyPath = MEMORY[0x1E695E0F0];
    }

    v66 = [gc_failingKeyPath arrayByAddingObject:@"IOPropertyMatch"];
    v91[2] = v66;
    v58 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v91 forKeys:v90 count:3];
    *error = [(NSError *)v64 gc_deviceDBError:v58 userInfo:?];

    goto LABEL_21;
  }

LABEL_22:

  _Block_object_dispose(&v78, 8);
  if (v32 != v33)
  {
    goto LABEL_47;
  }

  v74 = 0;
  v36 = [dictionaryCopy gc_requiredObjectForKey:@"Personalities" ofClass:objc_opt_class() error:&v74];
  v37 = v74;
  if (!v36)
  {
    [_GCDeviceDBBundleDevice initWithBundle:error dictionary:v37 error:?];
    goto LABEL_47;
  }

  v67 = v37;
  v78 = 0;
  v79 = &v78;
  v80 = 0x3032000000;
  v81 = __Block_byref_object_copy__10;
  v82 = __Block_byref_object_dispose__10;
  v83 = 0;
  v38 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v36, "count")}];
  v71[0] = MEMORY[0x1E69E9820];
  v71[1] = 3221225472;
  v71[2] = __59___GCDeviceDBBundleDevice_initWithBundle_dictionary_error___block_invoke_2;
  v71[3] = &unk_1E8414FA8;
  v73 = &v78;
  v39 = v38;
  v72 = v39;
  [v36 gc_enumerateObjectsUsingBlock:v71];
  v40 = [v39 count];
  v41 = [v36 count];
  if (v40 == v41)
  {
    v42 = [v39 copy];
    personalityPaths = v11->_personalityPaths;
    v11->_personalityPaths = v42;
  }

  else
  {
    if (!error)
    {
      goto LABEL_33;
    }

    v65 = MEMORY[0x1E696ABC0];
    v44 = *MEMORY[0x1E696A578];
    v89[0] = @"Invalid device definition.";
    v45 = *MEMORY[0x1E696A588];
    v88[0] = v44;
    v88[1] = v45;
    localizedFailureReason2 = [v79[5] localizedFailureReason];
    personalityPaths = localizedFailureReason2;
    v47 = &stru_1F4E1BE30;
    if (localizedFailureReason2)
    {
      v47 = localizedFailureReason2;
    }

    v89[1] = v47;
    v88[2] = 0x1F4E1C010;
    gc_dbFailingPath = [(NSError *)v79[5] gc_dbFailingPath];
    v49 = gc_dbFailingPath;
    if (!gc_dbFailingPath)
    {
      gc_dbFailingPath = MEMORY[0x1E695E0F0];
    }

    v50 = [gc_dbFailingPath arrayByAddingObject:@"Personalities"];
    v89[2] = v50;
    v51 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v89 forKeys:v88 count:3];
    *error = [(NSError *)v65 gc_deviceDBError:v51 userInfo:?];
  }

LABEL_33:
  _Block_object_dispose(&v78, 8);

  if (v40 != v41)
  {
    goto LABEL_47;
  }

  v52 = v11;
LABEL_48:

  return v52;
}

- (_GCDeviceDBBundleDevice)init
{
  [(_GCDeviceDBBundleDevice *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (id)personalities
{
  v3 = [_GCDeviceDBBundleDevicePersonalitiesEnumerator alloc];
  bundle = self->_bundle;
  objectEnumerator = [(NSArray *)self->_personalityPaths objectEnumerator];
  v6 = [(_GCDeviceDBBundleDevicePersonalitiesEnumerator *)v3 initWithBundle:bundle personalityPaths:objectEnumerator];

  return v6;
}

- (void)initWithBundle:(uint64_t)a1 dictionary:(uint64_t)a2 error:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"_GCDeviceDBBundleDevice.m" lineNumber:41 description:{@"Invalid parameter not satisfying: %s", "bundle != nil"}];
}

- (void)initWithBundle:(uint64_t)a1 dictionary:(uint64_t)a2 error:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"_GCDeviceDBBundleDevice.m" lineNumber:42 description:{@"Invalid parameter not satisfying: %s", "dict != nil"}];
}

- (void)initWithBundle:(uint64_t)a1 dictionary:(void *)a2 error:.cold.3(uint64_t a1, void *a2)
{
  if (a1)
  {
    OUTLINED_FUNCTION_2_9();
    OUTLINED_FUNCTION_5_5(v6, v7, *MEMORY[0x1E696A578]);
    v9 = [OUTLINED_FUNCTION_4_4(v8 *MEMORY[0x1E696A588])];
    OUTLINED_FUNCTION_3_5(v9);
    OUTLINED_FUNCTION_1_10();
    [v10 dictionaryWithObjects:? forKeys:? count:?];
    objc_claimAutoreleasedReturnValue();
    v11 = OUTLINED_FUNCTION_0_2();
    *v2 = [(NSError *)v11 gc_deviceDBError:v12 userInfo:v13];
  }
}

@end