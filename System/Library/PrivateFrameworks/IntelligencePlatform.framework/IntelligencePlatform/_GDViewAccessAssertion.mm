@interface _GDViewAccessAssertion
- (_GDViewAccessAssertion)initWithViewName:(id)name extensionToken:(id)token error:(id *)error;
- (void)dealloc;
@end

@implementation _GDViewAccessAssertion

- (void)dealloc
{
  v16 = *MEMORY[0x1E69E9840];
  if (self->_handle != -1)
  {
    v3 = sandbox_extension_release();
    v4 = GDViewLog();
    v5 = v4;
    if (v3 == -1)
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
      {
        viewName = self->_viewName;
        v9 = __error();
        v10 = strerror(*v9);
        *buf = 138412546;
        v13 = viewName;
        v14 = 2080;
        v15 = v10;
        _os_log_fault_impl(&dword_1ABA78000, v5, OS_LOG_TYPE_FAULT, "Error releasing sandbox extension token for %@: %s", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = self->_viewName;
      viewArtifactURL = self->_viewArtifactURL;
      *buf = 138412546;
      v13 = v6;
      v14 = 2112;
      v15 = viewArtifactURL;
      _os_log_impl(&dword_1ABA78000, v5, OS_LOG_TYPE_DEFAULT, "Released sandbox extension for %@ at %@", buf, 0x16u);
    }
  }

  v11.receiver = self;
  v11.super_class = _GDViewAccessAssertion;
  [(_GDViewAccessAssertion *)&v11 dealloc];
}

- (_GDViewAccessAssertion)initWithViewName:(id)name extensionToken:(id)token error:(id *)error
{
  v44 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  tokenCopy = token;
  v37.receiver = self;
  v37.super_class = _GDViewAccessAssertion;
  v10 = [(_GDViewAccessAssertion *)&v37 init];
  v11 = v10;
  if (!v10 || (v10->_handle = -1, v12 = [nameCopy copy], viewName = v11->_viewName, v11->_viewName = v12, viewName, objc_msgSend(tokenCopy, "url"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "copy"), viewArtifactURL = v11->_viewArtifactURL, v11->_viewArtifactURL = v15, viewArtifactURL, v14, objc_msgSend(tokenCopy, "tableName"), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "copy"), viewArtifactTableName = v11->_viewArtifactTableName, v11->_viewArtifactTableName = v18, viewArtifactTableName, v17, v11->_alwaysAvailable = objc_msgSend(tokenCopy, "alwaysAvailable"), objc_msgSend(tokenCopy, "token"), v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "length"), v20, !v21))
  {
LABEL_7:
    v28 = v11;
    goto LABEL_8;
  }

  token = [tokenCopy token];
  [token bytes];
  v23 = sandbox_extension_consume();
  if (v23 != -1)
  {
    v24 = v23;
    v25 = GDViewLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = v11->_viewName;
      v27 = v11->_viewArtifactURL;
      *buf = 138412546;
      v41 = v26;
      v42 = 2112;
      v43 = v27;
      _os_log_impl(&dword_1ABA78000, v25, OS_LOG_TYPE_DEFAULT, "Consumed sandbox extension for %@ at %@", buf, 0x16u);
    }

    v11->_handle = v24;
    goto LABEL_7;
  }

  v30 = MEMORY[0x1E696AEC0];
  v31 = __error();
  v32 = [v30 stringWithCString:strerror(*v31) encoding:4];
  v33 = GDViewLog();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
  {
    v36 = v11->_viewName;
    *buf = 138412546;
    v41 = v36;
    v42 = 2112;
    v43 = v32;
    _os_log_fault_impl(&dword_1ABA78000, v33, OS_LOG_TYPE_FAULT, "Error consuming sandbox extension token for %@: %@", buf, 0x16u);
  }

  if (error)
  {
    v34 = objc_alloc(MEMORY[0x1E696ABC0]);
    v38 = *MEMORY[0x1E696A578];
    v39 = v32;
    v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
    *error = [v34 initWithDomain:@"GDErrorDomain" code:11 userInfo:v35];
  }

  v28 = 0;
LABEL_8:

  return v28;
}

@end