@interface _GCDeviceDBBundle
- (_GCDeviceDBBundle)initWithBundle:(id)bundle error:(id *)error;
- (id)debugDescription;
- (id)description;
- (id)redactedDescription;
@end

@implementation _GCDeviceDBBundle

- (_GCDeviceDBBundle)initWithBundle:(id)bundle error:(id *)error
{
  v98[3] = *MEMORY[0x1E69E9840];
  bundleCopy = bundle;
  v88.receiver = self;
  v88.super_class = _GCDeviceDBBundle;
  v9 = [(_GCDeviceDBBundle *)&v88 init];
  if (!bundleCopy)
  {
    [_GCDeviceDBBundle initWithBundle:a2 error:v9];
  }

  objc_storeStrong(&v9->_bundle, bundle);
  configurationType = [bundleCopy configurationType];
  v11 = [configurationType isEqualToString:0x1F4E1BFD0];

  if ((v11 & 1) == 0)
  {
    if (error)
    {
      v26 = MEMORY[0x1E696ABC0];
      v27 = *MEMORY[0x1E696A578];
      v98[0] = @"Failed to initialize Device DB Bundle.";
      v28 = *MEMORY[0x1E696A588];
      v97[0] = v27;
      v97[1] = v28;
      v29 = MEMORY[0x1E696AEC0];
      configurationType2 = [bundleCopy configurationType];
      v30 = [v29 stringWithFormat:@"The provided bundle has the wrong configuration type: '%@'.", configurationType2];
      v98[1] = v30;
      v97[2] = *MEMORY[0x1E696A368];
      bundleURL = [bundleCopy bundleURL];
      path = [bundleURL path];
      v33 = path;
      v34 = @"<missing path>";
      if (path)
      {
        v34 = path;
      }

      v98[2] = v34;
      v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v98 forKeys:v97 count:3];
      *error = [(NSError *)v26 gc_deviceDBError:v35 userInfo:?];

      goto LABEL_29;
    }

    goto LABEL_31;
  }

  compatibilityVersion = [bundleCopy compatibilityVersion];
  v13 = +[GCVersion currentSourceVersion];
  v14 = [compatibilityVersion isGreaterThanSourceVersion:v13];

  if (!v14)
  {
    configurationType2 = [bundleCopy infoDictionary];
    if (!configurationType2)
    {
      if (!error)
      {
LABEL_30:

        goto LABEL_31;
      }

      v51 = MEMORY[0x1E696ABC0];
      v52 = *MEMORY[0x1E696A588];
      v93[0] = *MEMORY[0x1E696A578];
      v93[1] = v52;
      v94[0] = @"Failed to initialize Device DB Bundle.";
      v94[1] = @"The provided bundle did not return an Info Dictionary.";
      v93[2] = *MEMORY[0x1E696A368];
      bundleURL2 = [bundleCopy bundleURL];
      path2 = [bundleURL2 path];
      v55 = path2;
      v56 = @"<missing path>";
      if (path2)
      {
        v56 = path2;
      }

      v94[2] = v56;
      v57 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v94 forKeys:v93 count:3];
      *error = [(NSError *)v51 gc_deviceDBError:v57 userInfo:?];

LABEL_29:
      error = 0;
      goto LABEL_30;
    }

    v87 = 0;
    v36 = [configurationType2 gc_requiredObjectForKey:@"Devices" ofClass:objc_opt_class() error:&v87];
    v37 = v87;
    if (!v36)
    {
      if (error)
      {
        v60 = MEMORY[0x1E696ABC0];
        v61 = *MEMORY[0x1E696A578];
        v92[0] = @"Failed to initialize Device DB Bundle.";
        v62 = *MEMORY[0x1E696A588];
        v91[0] = v61;
        v91[1] = v62;
        v63 = v37;
        localizedFailureReason = [v37 localizedFailureReason];
        v92[1] = localizedFailureReason;
        v91[2] = *MEMORY[0x1E696A368];
        bundleURL3 = [bundleCopy bundleURL];
        path3 = [bundleURL3 path];
        v67 = path3;
        v68 = @"<missing path>";
        if (path3)
        {
          v68 = path3;
        }

        v92[2] = v68;
        v69 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v92 forKeys:v91 count:3];
        *error = [(NSError *)v60 gc_deviceDBError:v69 userInfo:?];

        v37 = v63;
      }

      goto LABEL_29;
    }

    v75 = v37;
    v81 = 0;
    v82 = &v81;
    v83 = 0x3032000000;
    v84 = __Block_byref_object_copy__17;
    v85 = __Block_byref_object_dispose__17;
    v86 = 0;
    v38 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v36, "count")}];
    v76[0] = MEMORY[0x1E69E9820];
    v76[1] = 3221225472;
    v76[2] = __42___GCDeviceDBBundle_initWithBundle_error___block_invoke;
    v76[3] = &unk_1E8415528;
    v80 = &v81;
    v39 = bundleCopy;
    v77 = v39;
    v74 = v9;
    v78 = v74;
    v40 = v38;
    v79 = v40;
    [v36 gc_enumerateObjectsUsingBlock:v76];
    v41 = v82[5];
    if (v41)
    {
      if (!error)
      {
        goto LABEL_28;
      }

      v70 = MEMORY[0x1E696ABC0];
      v42 = *MEMORY[0x1E696A578];
      v90[0] = @"Failed to initialize Device DB Bundle.";
      v43 = *MEMORY[0x1E696A588];
      v89[0] = v42;
      v89[1] = v43;
      localizedFailureReason2 = [v41 localizedFailureReason];
      v90[1] = localizedFailureReason2;
      v89[2] = *MEMORY[0x1E696A368];
      bundleURL4 = [v39 bundleURL];
      path4 = [bundleURL4 path];
      v71 = path4;
      v45 = @"<missing path>";
      if (path4)
      {
        v45 = path4;
      }

      v90[2] = v45;
      v89[3] = 0x1F4E1C010;
      gc_dbFailingPath = [(NSError *)v82[5] gc_dbFailingPath];
      v47 = gc_dbFailingPath;
      if (!gc_dbFailingPath)
      {
        gc_dbFailingPath = MEMORY[0x1E695E0F0];
      }

      v48 = [gc_dbFailingPath arrayByAddingObject:@"Devices"];
      v90[3] = v48;
      v49 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v90 forKeys:v89 count:4];
      *error = [(NSError *)v70 gc_deviceDBError:v49 userInfo:?];

      devices = localizedFailureReason2;
    }

    else
    {
      v58 = [v40 copy];
      devices = v74->_devices;
      v74->_devices = v58;
    }

LABEL_28:
    _Block_object_dispose(&v81, 8);

    if (!v41)
    {
      error = v74;
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  if (error)
  {
    v15 = MEMORY[0x1E696ABC0];
    v16 = *MEMORY[0x1E696A578];
    v96[0] = @"Failed to initialize Device DB Bundle.";
    v17 = *MEMORY[0x1E696A588];
    v95[0] = v16;
    v95[1] = v17;
    v18 = MEMORY[0x1E696AEC0];
    configurationType2 = [bundleCopy compatibilityVersion];
    v20 = [v18 stringWithFormat:@"Bundle requires version '%@'.", configurationType2];
    v96[1] = v20;
    v95[2] = *MEMORY[0x1E696A368];
    bundleURL5 = [bundleCopy bundleURL];
    path5 = [bundleURL5 path];
    v23 = path5;
    v24 = @"<missing path>";
    if (path5)
    {
      v24 = path5;
    }

    v96[2] = v24;
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v96 forKeys:v95 count:3];
    *error = [(NSError *)v15 gc_deviceDBError:v25 userInfo:?];

    goto LABEL_29;
  }

LABEL_31:

  return error;
}

- (id)redactedDescription
{
  v3 = MEMORY[0x1E696AEC0];
  identifier = [(_GCDeviceDBBundle *)self identifier];
  version = [(_GCDeviceDBBundle *)self version];
  v6 = [v3 stringWithFormat:@"%@ (v%@)", identifier, version];

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  identifier = [(_GCDeviceDBBundle *)self identifier];
  version = [(_GCDeviceDBBundle *)self version];
  v6 = [v3 stringWithFormat:@"%@ (v%@)", identifier, version];

  return v6;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  identifier = [(_GCDeviceDBBundle *)self identifier];
  version = [(_GCDeviceDBBundle *)self version];
  v8 = [v3 stringWithFormat:@"<%@ %p> %@ (v%@)", v5, self, identifier, version];

  return v8;
}

- (void)initWithBundle:(uint64_t)a1 error:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"_GCDeviceDBBundle.m" lineNumber:24 description:{@"Invalid parameter not satisfying: %s", "bundle"}];
}

@end