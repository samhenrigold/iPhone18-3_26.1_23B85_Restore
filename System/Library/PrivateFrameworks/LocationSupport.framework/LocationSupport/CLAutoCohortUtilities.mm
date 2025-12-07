@interface CLAutoCohortUtilities
+ (BOOL)isEdgeKnownToCauseCycle:(id)cycle;
+ (id)computeAutoCohortMapWithStarterGraph:(id)graph;
+ (id)getEdgeFilesFromDirectory:(id)directory;
+ (id)getSafeEdges;
+ (id)getUnsafeEdges;
+ (id)layerAssignmentForNode:(id)node inGraph:(id)graph extendingLayering:(id)layering;
+ (id)readEdges:(id)edges;
+ (void)applyEdges:(id)edges toGraph:(id)graph;
+ (void)createDirectoryAtPath:(id)path;
+ (void)enableAutoCohortingForProcessAtPath:(id)path;
+ (void)markUnvetted:(id)unvetted;
+ (void)persistEdgeFrom:(id)from to:(id)to;
+ (void)writeEdge:(id)edge toDirectory:(id)directory;
@end

@implementation CLAutoCohortUtilities

+ (void)enableAutoCohortingForProcessAtPath:(id)path
{
  v18 = *MEMORY[0x1E69E9840];
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    if (qword_1ED5FAD40 == -1)
    {
LABEL_11:
      v6 = qword_1ED5FAD48;
      if (!os_log_type_enabled(qword_1ED5FAD48, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      *buf = 68289282;
      v12 = 2082;
      v13 = &unk_1DF8255EF;
      v14 = 2114;
      pathCopy2 = path;
      v7 = "{msg%{public}.0s:#Cohorting Process intended to sign up for auto cohorting but CoreLocation/CLAutoCohort=off, autoCohortEdgesDirectoryPath:%{public, location:escape_only}@}";
      goto LABEL_13;
    }

LABEL_26:
    dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6980);
    goto LABEL_11;
  }

  if (!path || !objc_msgSend_length(path, v4, v5))
  {
    if (qword_1ED5FAD40 != -1)
    {
      dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6980);
    }

    v8 = qword_1ED5FAD48;
    if (os_log_type_enabled(qword_1ED5FAD48, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      v12 = 2082;
      v13 = &unk_1DF8255EF;
      v14 = 2082;
      pathCopy2 = "assert";
      v16 = 2081;
      v17 = "path && path.length";
      _os_log_impl(&dword_1DF7FE000, v8, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#Cohorting Invalid path while enabling auto cohorting, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED5FAD40 != -1)
      {
        dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6980);
      }
    }

    v9 = qword_1ED5FAD48;
    if (os_signpost_enabled(qword_1ED5FAD48))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      v12 = 2082;
      v13 = &unk_1DF8255EF;
      v14 = 2082;
      pathCopy2 = "assert";
      v16 = 2081;
      v17 = "path && path.length";
      _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#Cohorting Invalid path while enabling auto cohorting", "{msg%{public}.0s:#Cohorting Invalid path while enabling auto cohorting, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED5FAD40 != -1)
      {
        dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6980);
      }
    }

    path = qword_1ED5FAD48;
    if (os_log_type_enabled(qword_1ED5FAD48, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      v12 = 2082;
      v13 = &unk_1DF8255EF;
      v14 = 2082;
      pathCopy2 = "assert";
      v16 = 2081;
      v17 = "path && path.length";
      _os_log_impl(&dword_1DF7FE000, path, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#Cohorting Invalid path while enabling auto cohorting, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Shared/Utilities/CLAutoCohortUtilities.mm", 44, "+[CLAutoCohortUtilities enableAutoCohortingForProcessAtPath:]");
    goto LABEL_26;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1DF8186C4;
  block[3] = &unk_1E86C8408;
  block[4] = path;
  if (qword_1ECE5D910 != -1)
  {
    dispatch_once(&qword_1ECE5D910, block);
  }

  if (qword_1ED5FAD40 != -1)
  {
    dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6980);
  }

  v6 = qword_1ED5FAD48;
  if (os_log_type_enabled(qword_1ED5FAD48, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v12 = 2082;
    v13 = &unk_1DF8255EF;
    v14 = 2114;
    pathCopy2 = path;
    v7 = "{msg%{public}.0s:#Cohorting Process successfully signed up for auto cohorting, autoCohortEdgesDirectoryPath:%{public, location:escape_only}@}";
LABEL_13:
    _os_log_impl(&dword_1DF7FE000, v6, OS_LOG_TYPE_DEFAULT, v7, buf, 0x1Cu);
  }
}

+ (id)layerAssignmentForNode:(id)node inGraph:(id)graph extendingLayering:(id)layering
{
  v38 = *MEMORY[0x1E69E9840];
  v9 = objc_msgSend_objectForKeyedSubscript_(layering, a2, node);
  if (!v9)
  {
    objc_msgSend_setObject_forKeyedSubscript_(layering, v8, &unk_1F5AC9B90, node);
    v9 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v10, 0);
    nodeCopy = node;
    v12 = objc_msgSend_objectForKeyedSubscript_(graph, v11, node);
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v33, v37, 16);
    if (v14)
    {
      v16 = v14;
      v17 = *v34;
      while (2)
      {
        v18 = 0;
        do
        {
          if (*v34 != v17)
          {
            objc_enumerationMutation(v12);
          }

          v19 = objc_msgSend_layerAssignmentForNode_inGraph_extendingLayering_(CLAutoCohortUtilities, v15, *(*(&v33 + 1) + 8 * v18), graph, layering);
          if (v19 == &unk_1F5AC9B90)
          {
            return &unk_1F5AC9B90;
          }

          v22 = v19;
          v23 = MEMORY[0x1E696AD98];
          v24 = objc_msgSend_intValue(v9, v20, v21);
          if (v24 <= (objc_msgSend_intValue(v22, v25, v26) + 1))
          {
            v30 = objc_msgSend_intValue(v22, v27, v28) + 1;
          }

          else
          {
            v30 = objc_msgSend_intValue(v9, v27, v28);
          }

          v9 = objc_msgSend_numberWithInt_(v23, v29, v30);
          ++v18;
        }

        while (v16 != v18);
        v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v15, &v33, v37, 16);
        if (v16)
        {
          continue;
        }

        break;
      }
    }

    objc_msgSend_setObject_forKeyedSubscript_(layering, v15, v9, nodeCopy);
  }

  return v9;
}

+ (void)applyEdges:(id)edges toGraph:(id)graph
{
  v41 = *MEMORY[0x1E69E9840];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(edges, a2, &v28, v40, 16);
  if (v6)
  {
    v8 = v6;
    v9 = *v29;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v29 != v9)
        {
          objc_enumerationMutation(edges);
        }

        v11 = *(*(&v28 + 1) + 8 * i);
        v12 = objc_msgSend_objectAtIndex_(v11, v7, 0);
        v14 = objc_msgSend_objectForKeyedSubscript_(graph, v13, v12);
        if (!v14)
        {
          v19 = objc_msgSend_set(MEMORY[0x1E695DFA8], v15, v16);
          goto LABEL_12;
        }

        v17 = v14;
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (qword_1ED5FAD40 != -1)
            {
              goto LABEL_26;
            }

            while (1)
            {
              v25 = qword_1ED5FAD48;
              if (os_log_type_enabled(qword_1ED5FAD48, OS_LOG_TYPE_FAULT))
              {
                *buf = 68289539;
                v33 = 0;
                v34 = 2082;
                v35 = &unk_1DF8255EF;
                v36 = 2082;
                v37 = "assert";
                v38 = 2081;
                v39 = "[children isKindOfClass:[NSArray class]] || [children isKindOfClass:[NSSet class]]";
                _os_log_impl(&dword_1DF7FE000, v25, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#Cohorting Sync-get graph is of unexpected type. Expects {key:[, ]}, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
                if (qword_1ED5FAD40 != -1)
                {
                  dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6980);
                }
              }

              v26 = qword_1ED5FAD48;
              if (os_signpost_enabled(qword_1ED5FAD48))
              {
                *buf = 68289539;
                v33 = 0;
                v34 = 2082;
                v35 = &unk_1DF8255EF;
                v36 = 2082;
                v37 = "assert";
                v38 = 2081;
                v39 = "[children isKindOfClass:[NSArray class]] || [children isKindOfClass:[NSSet class]]";
                _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v26, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#Cohorting Sync-get graph is of unexpected type. Expects {key:[, ]}", "{msg%{public}.0s:#Cohorting Sync-get graph is of unexpected type. Expects {key:[, ]}, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
                if (qword_1ED5FAD40 != -1)
                {
                  dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6980);
                }
              }

              v27 = qword_1ED5FAD48;
              if (os_log_type_enabled(qword_1ED5FAD48, OS_LOG_TYPE_INFO))
              {
                *buf = 68289539;
                v33 = 0;
                v34 = 2082;
                v35 = &unk_1DF8255EF;
                v36 = 2082;
                v37 = "assert";
                v38 = 2081;
                v39 = "[children isKindOfClass:[NSArray class]] || [children isKindOfClass:[NSSet class]]";
                _os_log_impl(&dword_1DF7FE000, v27, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#Cohorting Sync-get graph is of unexpected type. Expects {key:[, ]}, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
              }

              abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Shared/Utilities/CLAutoCohortUtilities.mm", 100, "+[CLAutoCohortUtilities applyEdges:toGraph:]");
LABEL_26:
              dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6980);
            }
          }
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v19 = objc_msgSend_setWithArray_(MEMORY[0x1E695DFA8], v18, v17);
LABEL_12:
          v17 = v19;
          v21 = objc_msgSend_objectAtIndex_(v11, v20, 0);
          objc_msgSend_setObject_forKeyedSubscript_(graph, v22, v17, v21);
        }

        v23 = objc_msgSend_objectAtIndex_(v11, v18, 1);
        objc_msgSend_addObject_(v17, v24, v23);
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(edges, v7, &v28, v40, 16);
    }

    while (v8);
  }
}

+ (void)createDirectoryAtPath:(id)path
{
  v30 = *MEMORY[0x1E69E9840];
  v18 = 0;
  v4 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], a2, path);
  objc_msgSend_createDirectoryAtPath_withIntermediateDirectories_attributes_error_(v4, v5, path, 1, 0, &v18);
  if (v18)
  {
    if (qword_1ED5FAD40 != -1)
    {
      dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6980);
    }

    v6 = qword_1ED5FAD48;
    if (os_log_type_enabled(qword_1ED5FAD48, OS_LOG_TYPE_FAULT))
    {
      v9 = objc_msgSend_localizedFailureReason(v18, v7, v8);
      *buf = 68290051;
      v20 = 2082;
      v21 = &unk_1DF8255EF;
      v22 = 2114;
      pathCopy3 = path;
      v24 = 2114;
      v25 = v9;
      v26 = 2082;
      v27 = "assert";
      v28 = 2081;
      v29 = "!error";
      _os_log_impl(&dword_1DF7FE000, v6, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#Cohorting Cannot create directory, directoryPath:%{public, location:escape_only}@, error:%{public, location:escape_only}@, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (qword_1ED5FAD40 != -1)
      {
        dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6980);
      }
    }

    v10 = qword_1ED5FAD48;
    if (os_signpost_enabled(qword_1ED5FAD48))
    {
      v13 = objc_msgSend_localizedFailureReason(v18, v11, v12);
      *buf = 68290051;
      v20 = 2082;
      v21 = &unk_1DF8255EF;
      v22 = 2114;
      pathCopy3 = path;
      v24 = 2114;
      v25 = v13;
      v26 = 2082;
      v27 = "assert";
      v28 = 2081;
      v29 = "!error";
      _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#Cohorting Cannot create directory", "{msg%{public}.0s:#Cohorting Cannot create directory, directoryPath:%{public, location:escape_only}@, error:%{public, location:escape_only}@, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (qword_1ED5FAD40 != -1)
      {
        dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6980);
      }
    }

    v14 = qword_1ED5FAD48;
    if (os_log_type_enabled(qword_1ED5FAD48, OS_LOG_TYPE_INFO))
    {
      v17 = objc_msgSend_localizedFailureReason(v18, v15, v16);
      *buf = 68290051;
      *&buf[4] = 0;
      v20 = 2082;
      v21 = &unk_1DF8255EF;
      v22 = 2114;
      pathCopy3 = path;
      v24 = 2114;
      v25 = v17;
      v26 = 2082;
      v27 = "assert";
      v28 = 2081;
      v29 = "!error";
      _os_log_impl(&dword_1DF7FE000, v14, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#Cohorting Cannot create directory, directoryPath:%{public, location:escape_only}@, error:%{public, location:escape_only}@, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Shared/Utilities/CLAutoCohortUtilities.mm", 120, "+[CLAutoCohortUtilities createDirectoryAtPath:]");
  }
}

+ (id)getEdgeFilesFromDirectory:(id)directory
{
  v37 = *MEMORY[0x1E69E9840];
  v30 = 0;
  v4 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], a2, directory);
  if (!objc_msgSend_fileExistsAtPath_isDirectory_(v4, v5, directory, &v30) || (v30 & 1) == 0)
  {
    if (qword_1ED5FAD40 != -1)
    {
      dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6980);
    }

    v13 = qword_1ED5FAD48;
    if (!os_log_type_enabled(qword_1ED5FAD48, OS_LOG_TYPE_DEFAULT))
    {
      return 0;
    }

    *buf = 68289282;
    v33 = 2082;
    v34 = &unk_1DF8255EF;
    v35 = 2114;
    directoryCopy2 = directory;
    v14 = "{msg%{public}.0s:#Cohorting Doesnot exist or is not a directory, directoryPath:%{public, location:escape_only}@}";
    goto LABEL_12;
  }

  v29 = 0;
  v8 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v6, v7);
  v10 = objc_msgSend_contentsOfDirectoryAtPath_error_(v8, v9, directory, &v29);
  if (v29)
  {
    if (qword_1ED5FAD40 != -1)
    {
      dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6980);
    }

    v13 = qword_1ED5FAD48;
    if (!os_log_type_enabled(qword_1ED5FAD48, OS_LOG_TYPE_DEFAULT))
    {
      return 0;
    }

    *buf = 68289282;
    v33 = 2082;
    v34 = &unk_1DF8255EF;
    v35 = 2114;
    directoryCopy2 = directory;
    v14 = "{msg%{public}.0s:#Cohorting Cannot read contents of directory, directoryPath:%{public, location:escape_only}@}";
LABEL_12:
    _os_log_impl(&dword_1DF7FE000, v13, OS_LOG_TYPE_DEFAULT, v14, buf, 0x1Cu);
    return 0;
  }

  v17 = v10;
  v15 = objc_msgSend_array(MEMORY[0x1E695DF70], v11, v12);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, &v25, v31, 16);
  if (v19)
  {
    v21 = v19;
    v22 = *v26;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v26 != v22)
        {
          objc_enumerationMutation(v17);
        }

        v24 = *(*(&v25 + 1) + 8 * i);
        if (objc_msgSend_hasSuffix_(v24, v20, @".plist"))
        {
          objc_msgSend_addObject_(v15, v20, v24);
        }
      }

      v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v20, &v25, v31, 16);
    }

    while (v21);
  }

  return v15;
}

+ (id)readEdges:(id)edges
{
  v34 = *MEMORY[0x1E69E9840];
  EdgeFilesFromDirectory = objc_msgSend_getEdgeFilesFromDirectory_(CLAutoCohortUtilities, a2, edges);
  v7 = objc_msgSend_array(MEMORY[0x1E695DF70], v5, v6);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(EdgeFilesFromDirectory, v8, &v25, v33, 16);
  if (v9)
  {
    v12 = v9;
    v13 = *v26;
    *&v11 = 68289026;
    v24 = v11;
    do
    {
      v14 = 0;
      do
      {
        if (*v26 != v13)
        {
          objc_enumerationMutation(EdgeFilesFromDirectory);
        }

        v15 = objc_msgSend_stringByAppendingPathComponent_(edges, v10, *(*(&v25 + 1) + 8 * v14), v24);
        v17 = objc_msgSend_arrayWithContentsOfFile_(MEMORY[0x1E695DEC8], v16, v15);
        if (v17 && (v20 = v17, objc_msgSend_count(v17, v18, v19) == 2))
        {
          objc_msgSend_addObject_(v7, v21, v20);
        }

        else
        {
          if (qword_1ED5FAD40 != -1)
          {
            dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6980);
          }

          v22 = qword_1ED5FAD48;
          if (os_log_type_enabled(qword_1ED5FAD48, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v24;
            v30 = 0;
            v31 = 2082;
            v32 = &unk_1DF8255EF;
            _os_log_impl(&dword_1DF7FE000, v22, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#Cohorting Sync-get graph edge is of unexpected type. Expects [, ]}", buf, 0x12u);
          }
        }

        ++v14;
      }

      while (v12 != v14);
      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(EdgeFilesFromDirectory, v10, &v25, v33, 16);
    }

    while (v12);
  }

  return v7;
}

+ (id)getSafeEdges
{
  v2 = objc_msgSend_stringByAppendingPathComponent_(qword_1ECE5D908, a2, @"_safe");

  return MEMORY[0x1EEE66B58](CLAutoCohortUtilities, sel_readEdges_, v2);
}

+ (id)getUnsafeEdges
{
  v2 = objc_msgSend_stringByAppendingPathComponent_(qword_1ECE5D908, a2, @"_unsafe");

  return MEMORY[0x1EEE66B58](CLAutoCohortUtilities, sel_readEdges_, v2);
}

+ (void)writeEdge:(id)edge toDirectory:(id)directory
{
  v28 = *MEMORY[0x1E69E9840];
  objc_msgSend_createDirectoryAtPath_(CLAutoCohortUtilities, a2, directory);
  v6 = objc_alloc_init(MEMORY[0x1E696AB78]);
  objc_msgSend_setDateFormat_(v6, v7, @"yyyy_MM_dd_HH_mm_ss");
  v8 = MEMORY[0x1E696AEC0];
  v11 = objc_msgSend_date(MEMORY[0x1E695DF00], v9, v10);
  v13 = objc_msgSend_stringFromDate_(v6, v12, v11);
  v15 = objc_msgSend_stringWithFormat_(v8, v14, @"%@.plist", v13);
  v17 = objc_msgSend_stringByAppendingPathComponent_(directory, v16, v15);
  v22 = 0;
  v19 = objc_msgSend_fileURLWithPath_(MEMORY[0x1E695DFF8], v18, v17);
  objc_msgSend_writeToURL_error_(edge, v20, v19, &v22);
  if (v22)
  {
    if (qword_1ED5FAD40 != -1)
    {
      dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6980);
    }

    v21 = qword_1ED5FAD48;
    if (os_log_type_enabled(qword_1ED5FAD48, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289282;
      v24 = 2082;
      v25 = &unk_1DF8255EF;
      v26 = 2114;
      v27 = v17;
      _os_log_impl(&dword_1DF7FE000, v21, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#Cohorting Cannot write edge file, edgeFilePath:%{public, location:escape_only}@}", buf, 0x1Cu);
    }
  }
}

+ (void)persistEdgeFrom:(id)from to:(id)to
{
  v6[2] = *MEMORY[0x1E69E9840];
  v6[0] = from;
  v6[1] = to;
  v4 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], a2, v6, 2);
  objc_msgSend_writeEdge_toDirectory_(CLAutoCohortUtilities, v5, v4, qword_1ECE5D908);
}

+ (void)markUnvetted:(id)unvetted
{
  v39 = *MEMORY[0x1E69E9840];
  EdgeFilesFromDirectory = objc_msgSend_getEdgeFilesFromDirectory_(CLAutoCohortUtilities, a2, qword_1ECE5D908);
  v6 = objc_msgSend_stringByAppendingPathComponent_(qword_1ECE5D908, v5, unvetted);
  objc_msgSend_createDirectoryAtPath_(CLAutoCohortUtilities, v7, v6);
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(EdgeFilesFromDirectory, v8, &v26, v38, 16);
  if (v9)
  {
    v12 = v9;
    v13 = *v27;
    *&v11 = 68289538;
    v24 = v11;
    do
    {
      v14 = 0;
      do
      {
        if (*v27 != v13)
        {
          objc_enumerationMutation(EdgeFilesFromDirectory);
        }

        v15 = *(*(&v26 + 1) + 8 * v14);
        v16 = objc_msgSend_stringByAppendingPathComponent_(qword_1ECE5D908, v10, v15, v24);
        v18 = objc_msgSend_stringByAppendingPathComponent_(v6, v17, v15);
        v25 = 0;
        v21 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v19, v20);
        objc_msgSend_moveItemAtPath_toPath_error_(v21, v22, v16, v18, &v25);
        if (v25)
        {
          if (qword_1ED5FAD40 != -1)
          {
            dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6980);
          }

          v23 = qword_1ED5FAD48;
          if (os_log_type_enabled(qword_1ED5FAD48, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v24;
            v31 = 0;
            v32 = 2082;
            v33 = &unk_1DF8255EF;
            v34 = 2114;
            v35 = v16;
            v36 = 2114;
            v37 = v18;
            _os_log_impl(&dword_1DF7FE000, v23, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#Cohorting Cannot move unvetted edge, srcFilePath:%{public, location:escape_only}@, dstFilePath:%{public, location:escape_only}@}", buf, 0x26u);
          }
        }

        ++v14;
      }

      while (v12 != v14);
      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(EdgeFilesFromDirectory, v10, &v26, v38, 16);
    }

    while (v12);
  }
}

+ (BOOL)isEdgeKnownToCauseCycle:(id)cycle
{
  if (qword_1ED5FAEB0 != -1)
  {
    dispatch_once(&qword_1ED5FAEB0, &unk_1F5AC6960);
  }

  v4 = qword_1ED5FAEA8;
  v5 = objc_msgSend_objectAtIndexedSubscript_(cycle, a2, 0);
  v7 = objc_msgSend_objectForKeyedSubscript_(v4, v6, v5);
  if (!v7)
  {
    return 0;
  }

  v9 = v7;
  v10 = 1;
  v11 = objc_msgSend_objectAtIndexedSubscript_(cycle, v8, 1);
  if ((objc_msgSend_containsObject_(v9, v12, v11) & 1) == 0)
  {
    return 0;
  }

  return v10;
}

+ (id)computeAutoCohortMapWithStarterGraph:(id)graph
{
  graphCopy = graph;
  v70 = *MEMORY[0x1E69E9840];
  v4 = 0x1E695D000uLL;
  objc_msgSend_dictionary(MEMORY[0x1E695DF90], a2, graph);
  if (!graphCopy)
  {
    graphCopy = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v5, v6);
  }

  v7 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v5, v6);
  SafeEdges = objc_msgSend_getSafeEdges(CLAutoCohortUtilities, v8, v9);
  objc_msgSend_applyEdges_toGraph_(CLAutoCohortUtilities, v11, SafeEdges, graphCopy);
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(graphCopy, v12, &v57, v69, 16);
  if (v13)
  {
    v16 = v13;
    v17 = *v58;
    while (2)
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v58 != v17)
        {
          objc_enumerationMutation(graphCopy);
        }

        v19 = objc_msgSend_layerAssignmentForNode_inGraph_extendingLayering_(CLAutoCohortUtilities, v14, *(*(&v57 + 1) + 8 * i), graphCopy, v7);
        if (objc_msgSend_intValue(v19, v20, v21) <= -2)
        {
          v39 = 0x1ED5FA000;
          if (qword_1ED5FAD40 != -1)
          {
            dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6980);
          }

          v51 = qword_1ED5FAD48;
          if (os_log_type_enabled(qword_1ED5FAD48, OS_LOG_TYPE_FAULT))
          {
            buf = 68289539;
            v63 = 2082;
            v64 = &unk_1DF8255EF;
            v65 = 2082;
            v66 = "assert";
            v67 = 2081;
            v68 = "-1 <= [CLAutoCohortUtilities layerAssignmentForNode:node inGraph:syncgetGraph extendingLayering:autoCohortNameToCohortMapAggregateSafe].intValue";
            _os_log_impl(&dword_1DF7FE000, v51, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#Cohorting Edge that was marked safe causes cycle in syncget graph, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", &buf, 0x26u);
            if (qword_1ED5FAD40 != -1)
            {
              dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6980);
            }
          }

          v52 = qword_1ED5FAD48;
          if (os_signpost_enabled(qword_1ED5FAD48))
          {
            buf = 68289539;
            v63 = 2082;
            v64 = &unk_1DF8255EF;
            v65 = 2082;
            v66 = "assert";
            v67 = 2081;
            v68 = "-1 <= [CLAutoCohortUtilities layerAssignmentForNode:node inGraph:syncgetGraph extendingLayering:autoCohortNameToCohortMapAggregateSafe].intValue";
            _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v52, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#Cohorting Edge that was marked safe causes cycle in syncget graph", "{msg%{public}.0s:#Cohorting Edge that was marked safe causes cycle in syncget graph, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", &buf, 0x26u);
            if (qword_1ED5FAD40 != -1)
            {
              dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6980);
            }
          }

          v7 = qword_1ED5FAD48;
          if (os_log_type_enabled(qword_1ED5FAD48, OS_LOG_TYPE_INFO))
          {
            buf = 68289539;
            v63 = 2082;
            v64 = &unk_1DF8255EF;
            v65 = 2082;
            v66 = "assert";
            v67 = 2081;
            v68 = "-1 <= [CLAutoCohortUtilities layerAssignmentForNode:node inGraph:syncgetGraph extendingLayering:autoCohortNameToCohortMapAggregateSafe].intValue";
            _os_log_impl(&dword_1DF7FE000, v7, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#Cohorting Edge that was marked safe causes cycle in syncget graph, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", &buf, 0x26u);
          }

          abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Shared/Utilities/CLAutoCohortUtilities.mm", 301, "+[CLAutoCohortUtilities computeAutoCohortMapWithStarterGraph:]");
LABEL_39:
          dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6980);
          goto LABEL_21;
        }
      }

      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(graphCopy, v14, &v57, v69, 16);
      if (v16)
      {
        continue;
      }

      break;
    }
  }

  UnvettedEdges = objc_msgSend_getUnvettedEdges(CLAutoCohortUtilities, v14, v15);
  v25 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v23, v24);
  objc_msgSend_applyEdges_toGraph_(CLAutoCohortUtilities, v26, UnvettedEdges, graphCopy);
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(graphCopy, v27, &v53, v61, 16);
  if (v28)
  {
    v31 = v28;
    v32 = *v54;
LABEL_13:
    v33 = 0;
    while (1)
    {
      if (*v54 != v32)
      {
        objc_enumerationMutation(graphCopy);
      }

      v34 = objc_msgSend_layerAssignmentForNode_inGraph_extendingLayering_(CLAutoCohortUtilities, v29, *(*(&v53 + 1) + 8 * v33), graphCopy, v25);
      if (objc_msgSend_intValue(v34, v35, v36) == -1)
      {
        break;
      }

      if (v31 == ++v33)
      {
        v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(graphCopy, v29, &v53, v61, 16);
        if (v31)
        {
          goto LABEL_13;
        }

        goto LABEL_19;
      }
    }

    objc_msgSend_markUnvettedUnsafe(CLAutoCohortUtilities, v29, v37);
    v39 = objc_msgSend_objectAtIndex_(UnvettedEdges, v38, 0);
    v4 = 0x1ED5FA000uLL;
    if (qword_1ED5FAD40 != -1)
    {
      goto LABEL_39;
    }

LABEL_21:
    v40 = qword_1ED5FAD48;
    if (os_log_type_enabled(qword_1ED5FAD48, OS_LOG_TYPE_FAULT))
    {
      v42 = objc_msgSend_objectAtIndexedSubscript_(v39, v41, 0);
      v44 = objc_msgSend_objectAtIndexedSubscript_(v39, v43, 1);
      buf = 68289538;
      v63 = 2082;
      v64 = &unk_1DF8255EF;
      v65 = 2114;
      v66 = v42;
      v67 = 2114;
      v68 = v44;
      _os_log_impl(&dword_1DF7FE000, v40, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#Cohorting Cycle introduced in sync-get graph, FromNode:%{public, location:escape_only}@, ToNode:%{public, location:escape_only}@}", &buf, 0x26u);
      if (*(v4 + 3392) != -1)
      {
        dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6980);
      }
    }

    v45 = qword_1ED5FAD48;
    if (os_signpost_enabled(qword_1ED5FAD48))
    {
      v47 = objc_msgSend_objectAtIndexedSubscript_(v39, v46, 0);
      v49 = objc_msgSend_objectAtIndexedSubscript_(v39, v48, 1);
      buf = 68289538;
      v63 = 2082;
      v64 = &unk_1DF8255EF;
      v65 = 2114;
      v66 = v47;
      v67 = 2114;
      v68 = v49;
      _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v45, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#Cohorting Cycle introduced in sync-get graph", "{msg%{public}.0s:#Cohorting Cycle introduced in sync-get graph, FromNode:%{public, location:escape_only}@, ToNode:%{public, location:escape_only}@}", &buf, 0x26u);
    }

    return v7;
  }

  else
  {
LABEL_19:
    objc_msgSend_markUnvettedSafe(CLAutoCohortUtilities, v29, v30);
  }

  return v25;
}

@end