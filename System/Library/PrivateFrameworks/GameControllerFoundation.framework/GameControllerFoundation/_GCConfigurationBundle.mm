@interface _GCConfigurationBundle
- (_GCConfigurationBundle)init;
- (_GCConfigurationBundle)initWithPath:(id)path error:(id *)error;
- (id)debugDescription;
- (id)description;
- (id)redactedDescription;
@end

@implementation _GCConfigurationBundle

- (_GCConfigurationBundle)initWithPath:(id)path error:(id *)error
{
  v116[3] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v7 = objc_getAssociatedObject(pathCopy, self);

  if (!v7)
  {
    objc_setAssociatedObject(pathCopy, self, self, 0);
    v99.receiver = self;
    v99.super_class = _GCConfigurationBundle;
    v9 = [(_GCConfigurationBundle *)&v99 _initUniqueWithPath:pathCopy];
    objc_setAssociatedObject(pathCopy, v9, 0, 0);
    if (!v9)
    {
      v8 = 0;
      goto LABEL_22;
    }

    infoDictionary = [v9 infoDictionary];
    if (!infoDictionary)
    {
      if (!error)
      {
        goto LABEL_14;
      }

      v45 = MEMORY[0x1E696ABC0];
      v46 = *MEMORY[0x1E696A588];
      v115[0] = *MEMORY[0x1E696A578];
      v115[1] = v46;
      v116[0] = @"Invalid bundle.";
      v116[1] = @"Missing information property list.";
      v115[2] = *MEMORY[0x1E696A368];
      bundleURL = [v9 bundleURL];
      path = [bundleURL path];
      localizedFailureReason2 = path;
      v49 = @"<missing path>";
      if (path)
      {
        v49 = path;
      }

      v116[2] = v49;
      bundleURL5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v116 forKeys:v115 count:3];
      *error = [(NSError *)v45 gc_ConfigurationError:bundleURL5 userInfo:?];
      goto LABEL_54;
    }

    errorCopy = error;
    v98 = 0;
    v11 = [infoDictionary gc_requiredObjectForKey:@"CompatibilityVersion" ofClass:objc_opt_class() error:&v98];
    v12 = v98;
    v13 = v12;
    if (!v11)
    {
      if (error)
      {
        v51 = MEMORY[0x1E696ABC0];
        v52 = *MEMORY[0x1E696A578];
        v114[0] = @"Invalid bundle information property list.";
        v53 = *MEMORY[0x1E696A588];
        v113[0] = v52;
        v113[1] = v53;
        localizedFailureReason = [v12 localizedFailureReason];
        v114[1] = localizedFailureReason;
        v113[2] = *MEMORY[0x1E696A368];
        bundleURL2 = [v9 bundleURL];
        path2 = [bundleURL2 path];
        v57 = path2;
        v58 = @"<missing path>";
        if (path2)
        {
          v58 = path2;
        }

        v114[2] = v58;
        v59 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v114 forKeys:v113 count:3];
        *error = [(NSError *)v51 gc_ConfigurationError:v59 userInfo:?];
      }

      goto LABEL_14;
    }

    v14 = v12;
    v15 = [[GCVersion alloc] initWithString:v11];
    if (!v15)
    {
      if (!errorCopy)
      {
        goto LABEL_13;
      }

      v91 = MEMORY[0x1E696ABC0];
      v92 = infoDictionary;
      v60 = *MEMORY[0x1E696A578];
      v112[0] = @"Invalid bundle information property list.";
      v61 = *MEMORY[0x1E696A588];
      v111[0] = v60;
      v111[1] = v61;
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid '%@' format: '%@'", @"CompatibilityVersion", v11];
      v112[1] = v21;
      v111[2] = *MEMORY[0x1E696A368];
      bundleURL3 = [v9 bundleURL];
      path3 = [bundleURL3 path];
      v24 = path3;
      v63 = @"<missing path>";
      if (path3)
      {
        v63 = path3;
      }

      v112[2] = v63;
      v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v112 forKeys:v111 count:3];
      v27 = v91;
      v28 = 1;
      goto LABEL_12;
    }

    v16 = +[GCVersion currentSourceVersion];
    v17 = [(GCVersion *)v15 isGreaterThanSourceVersion:v16];

    if (v17)
    {
      if (!errorCopy)
      {
LABEL_13:

LABEL_14:
        v8 = 0;
LABEL_21:

        goto LABEL_22;
      }

      v92 = infoDictionary;
      v18 = MEMORY[0x1E696ABC0];
      v19 = *MEMORY[0x1E696A578];
      v110[0] = @"Failed to initialize Configuration DB Bundle.";
      v20 = *MEMORY[0x1E696A588];
      v109[0] = v19;
      v109[1] = v20;
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Bundle requires framework version '%@'.", v15];
      v110[1] = v21;
      v109[2] = *MEMORY[0x1E696A368];
      bundleURL3 = [v9 bundleURL];
      path4 = [bundleURL3 path];
      v24 = path4;
      v25 = @"<missing path>";
      if (path4)
      {
        v25 = path4;
      }

      v110[2] = v25;
      v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v110 forKeys:v109 count:3];
      v27 = v18;
      v28 = 2;
LABEL_12:
      *errorCopy = [(NSError *)v27 gc_ConfigurationError:v28 userInfo:v26];

      infoDictionary = v92;
      goto LABEL_13;
    }

    v29 = [(GCVersion *)v15 copy];
    v30 = v9[11];
    v9[11] = v29;

    v31 = *MEMORY[0x1E695E4F0];
    v97 = 0;
    v32 = [infoDictionary gc_requiredObjectForKey:v31 ofClass:objc_opt_class() error:&v97];
    v33 = v97;
    bundleURL = v33;
    if (v32)
    {

      v35 = *MEMORY[0x1E695E500];
      v96 = 0;
      v36 = [infoDictionary gc_requiredObjectForKey:v35 ofClass:objc_opt_class() error:&v96];
      v37 = v96;
      bundleURL = v37;
      if (v36)
      {
        v38 = [[GCVersion alloc] initWithString:v36];
        if (!v38)
        {
          v93 = infoDictionary;
          if (errorCopy)
          {
            v77 = MEMORY[0x1E696ABC0];
            v78 = *MEMORY[0x1E696A578];
            v104[0] = @"Invalid bundle information property list.";
            v79 = *MEMORY[0x1E696A588];
            v103[0] = v78;
            v103[1] = v79;
            v80 = [MEMORY[0x1E696AEC0] stringWithFormat:@"'%@' is not a valid %@.", v36, v35];
            v104[1] = v80;
            v103[2] = *MEMORY[0x1E696A368];
            bundleURL4 = [v9 bundleURL];
            path5 = [bundleURL4 path];
            v83 = path5;
            v84 = @"<missing path>";
            if (path5)
            {
              v84 = path5;
            }

            v104[2] = v84;
            v85 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v104 forKeys:v103 count:3];
            *errorCopy = [(NSError *)v77 gc_ConfigurationError:v85 userInfo:?];
          }

          v8 = 0;
          infoDictionary = v93;
          goto LABEL_21;
        }

        v39 = v9[9];
        v9[9] = v38;

        v95 = 0;
        v40 = [infoDictionary gc_requiredObjectForKey:@"ConfigurationType" ofClass:objc_opt_class() error:&v95];
        v41 = v95;
        bundleURL = v41;
        if (v40)
        {
          v42 = [v40 copy];
          v43 = v9[10];
          v9[10] = v42;

          v8 = v9;
          goto LABEL_21;
        }

        if (!errorCopy)
        {
          goto LABEL_55;
        }

        v64 = MEMORY[0x1E696ABC0];
        v86 = *MEMORY[0x1E696A578];
        v102[0] = @"Invalid bundle information property list.";
        v87 = *MEMORY[0x1E696A588];
        v101[0] = v86;
        v101[1] = v87;
        localizedFailureReason2 = [v41 localizedFailureReason];
        v102[1] = localizedFailureReason2;
        v101[2] = *MEMORY[0x1E696A368];
        bundleURL5 = [v9 bundleURL];
        path6 = [bundleURL5 path];
        v68 = path6;
        v89 = @"<missing path>";
        if (path6)
        {
          v89 = path6;
        }

        v102[2] = v89;
        v70 = MEMORY[0x1E695DF20];
        v71 = v102;
        v72 = v101;
        goto LABEL_53;
      }

      if (errorCopy)
      {
        v64 = MEMORY[0x1E696ABC0];
        v73 = *MEMORY[0x1E696A578];
        v106[0] = @"Invalid bundle information property list.";
        v74 = *MEMORY[0x1E696A588];
        v105[0] = v73;
        v105[1] = v74;
        localizedFailureReason2 = [v37 localizedFailureReason];
        v106[1] = localizedFailureReason2;
        v105[2] = *MEMORY[0x1E696A368];
        bundleURL5 = [v9 bundleURL];
        path7 = [bundleURL5 path];
        v68 = path7;
        v76 = @"<missing path>";
        if (path7)
        {
          v76 = path7;
        }

        v106[2] = v76;
        v70 = MEMORY[0x1E695DF20];
        v71 = v106;
        v72 = v105;
LABEL_53:
        v90 = [v70 dictionaryWithObjects:v71 forKeys:v72 count:3];
        *errorCopy = [(NSError *)v64 gc_ConfigurationError:v90 userInfo:?];

LABEL_54:
      }
    }

    else if (errorCopy)
    {
      v64 = MEMORY[0x1E696ABC0];
      v65 = *MEMORY[0x1E696A578];
      v108[0] = @"Invalid bundle information property list.";
      v66 = *MEMORY[0x1E696A588];
      v107[0] = v65;
      v107[1] = v66;
      localizedFailureReason2 = [v33 localizedFailureReason];
      v108[1] = localizedFailureReason2;
      v107[2] = *MEMORY[0x1E696A368];
      bundleURL5 = [v9 bundleURL];
      path8 = [bundleURL5 path];
      v68 = path8;
      v69 = @"<missing path>";
      if (path8)
      {
        v69 = path8;
      }

      v108[2] = v69;
      v70 = MEMORY[0x1E695DF20];
      v71 = v108;
      v72 = v107;
      goto LABEL_53;
    }

LABEL_55:

    goto LABEL_14;
  }

  v100.receiver = self;
  v100.super_class = _GCConfigurationBundle;
  v8 = [(_GCConfigurationBundle *)&v100 initWithPath:pathCopy];
LABEL_22:

  return v8;
}

- (_GCConfigurationBundle)init
{
  [(_GCConfigurationBundle *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  identifier = [(_GCConfigurationBundle *)self identifier];
  version = [(_GCConfigurationBundle *)self version];
  v6 = [v3 stringWithFormat:@"%@ (v%@)", identifier, version];

  return v6;
}

- (id)redactedDescription
{
  v3 = MEMORY[0x1E696AEC0];
  identifier = [(_GCConfigurationBundle *)self identifier];
  version = [(_GCConfigurationBundle *)self version];
  v6 = [v3 stringWithFormat:@"%@ (v%@)", identifier, version];

  return v6;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  identifier = [(_GCConfigurationBundle *)self identifier];
  version = [(_GCConfigurationBundle *)self version];
  v8 = [v3 stringWithFormat:@"<%@ %p> %@ (v%@)", v5, self, identifier, version];

  return v8;
}

@end