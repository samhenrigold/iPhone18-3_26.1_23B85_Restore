@interface _PASLPWriterV1
+ (dispatch_data_t)_mappedDataWithPlist:(int)plist fd:(unint64_t)fd ofs:(void *)ofs error:;
+ (id)dataWithPropertyList:(id)list error:(id *)error;
+ (id)fileBackedDataWithPropertyList:(id)list appendedToFd:(int)fd startOfs:(int64_t *)ofs error:(id *)error;
+ (id)fileBackedDataWithPropertyList:(id)list writtenToPath:(id)path error:(id *)error;
+ (uint64_t)_scanPlist:(unint64_t)plist recursionDepth:(uint64_t *)depth sizeUpperBound:(void *)bound allDictionaryKeys:(id *)keys error:;
+ (uint64_t)_valueWordForObjectGraph:(uint64_t)graph allocContext:(unint64_t)context recursionDepth:;
+ (uint64_t)_visitObject:(uint64_t)object context:(void *)context handleBoolean:(void *)boolean handleInt64:(void *)int64 handleFloat64:(void *)float64 handleTimeInterval:(void *)interval handleData:(void *)data handleString:(void *)self0 handleDict:(void *)self1 handleArray:(void *)self2 handleOther:;
@end

@implementation _PASLPWriterV1

+ (id)fileBackedDataWithPropertyList:(id)list appendedToFd:(int)fd startOfs:(int64_t *)ofs error:(id *)error
{
  v31[1] = *MEMORY[0x1E69E9840];
  listCopy = list;
  if (listCopy)
  {
    if ((fd & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_PASLPWriterV1.m" lineNumber:233 description:{@"Invalid parameter not satisfying: %@", @"plist"}];

    if ((fd & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"_PASLPWriterV1.m" lineNumber:234 description:{@"Invalid parameter not satisfying: %@", @"fd >= 0"}];

LABEL_3:
  v27 = 0;
  v12 = objc_autoreleasePoolPush();
  memset(&v26, 0, sizeof(v26));
  if (fstat(fd, &v26))
  {
    v13 = objc_alloc(MEMORY[0x1E696ABC0]);
    v14 = *MEMORY[0x1E696A798];
    v15 = *__error();
    v30 = *MEMORY[0x1E696A578];
    v16 = objc_alloc(MEMORY[0x1E696AEC0]);
    v17 = __error();
    v18 = strerror(*v17);
    v19 = [v16 initWithFormat:@"stat() failure: %s (%d)", v18, *__error()];
    v31[0] = v19;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:&v30 count:1];
    v27 = [v13 initWithDomain:v14 code:v15 userInfo:v20];

    v21 = 0;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      st_size = v26.st_size;
      _os_log_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "_PASLazyPlist: Appending to fd beginning at file offset %lld", buf, 0xCu);
    }

    v22 = v26.st_size;
    if (ofs)
    {
      *ofs = v26.st_size;
    }

    v21 = [(_PASLPWriterV1 *)self _mappedDataWithPlist:listCopy fd:fd ofs:v22 error:&v27];
  }

  objc_autoreleasePoolPop(v12);
  if (error && !v21)
  {
    *error = v27;
  }

  return v21;
}

+ (dispatch_data_t)_mappedDataWithPlist:(int)plist fd:(unint64_t)fd ofs:(void *)ofs error:
{
  v152 = *MEMORY[0x1E69E9840];
  v8 = a2;
  v9 = objc_opt_self();
  if (!v8)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:sel__mappedDataWithPlist_fd_ofs_error_ object:v9 file:@"_PASLPWriterV1.m" lineNumber:939 description:{@"Invalid parameter not satisfying: %@", @"plist"}];
  }

  plistCopy = plist;
  if (plist <= -2)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:sel__mappedDataWithPlist_fd_ofs_error_ object:v9 file:@"_PASLPWriterV1.m" lineNumber:940 description:{@"Invalid parameter not satisfying: %@", @"fd >= -1"}];

    if ((fd & 0x8000000000000000) == 0)
    {
      goto LABEL_5;
    }
  }

  else if ((fd & 0x8000000000000000) == 0)
  {
    goto LABEL_5;
  }

  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:sel__mappedDataWithPlist_fd_ofs_error_ object:v9 file:@"_PASLPWriterV1.m" lineNumber:941 description:{@"Invalid parameter not satisfying: %@", @"ofs >= 0"}];

LABEL_5:
  v118 = 0;
  v113 = v9;
  v116 = objc_opt_new();
  v117 = v8;
  ofsCopy = ofs;
  if (([(_PASLPWriterV1 *)v9 _scanPlist:v8 recursionDepth:0 sizeUpperBound:&v118 allDictionaryKeys:v116 error:ofs]& 1) == 0)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

LABEL_81:
    v75 = *ofsCopy;
    *buf = 138412290;
    *&buf[4] = v75;
    _os_log_error_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "_PASLazyPlist: %@", buf, 0xCu);
    goto LABEL_12;
  }

  v10 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO);
  v11 = v118;
  if (v10)
  {
    *buf = 134217984;
    *&buf[4] = v118;
    _os_log_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "_PASLazyPlist: _mappedDataWithPlist: _PASLazyPlist size over-estimate: %zu bytes", buf, 0xCu);
  }

  if (v11 >> 29)
  {
    v12 = objc_opt_new();
    [v12 setObject:@"The object is too large to serialize as _PASLazyPlist." forKeyedSubscript:*MEMORY[0x1E696A578]];
    [v12 setObject:0 forKeyedSubscript:*MEMORY[0x1E696A588]];
    v13 = objc_alloc(MEMORY[0x1E696ABC0]);
    v14 = [v12 copy];
    v15 = [v13 initWithDomain:@"_PASLazyPlistErrorDomain" code:7 userInfo:v14];

    v16 = *ofsCopy;
    *ofsCopy = v15;

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_81;
    }

LABEL_12:
    v17 = 0;
    goto LABEL_13;
  }

  v19 = fd / *MEMORY[0x1E69E9AC8] * *MEMORY[0x1E69E9AC8];
  v109 = fd % *MEMORY[0x1E69E9AC8];
  v110 = v11;
  v112 = v109 + v11;
  if (plistCopy == -1)
  {
    if (fd)
    {
      currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler4 handleFailureInMethod:sel__mappedDataWithPlist_fd_ofs_error_ object:v9 file:@"_PASLPWriterV1.m" lineNumber:969 description:{@"Invalid parameter not satisfying: %@", @"ofs == 0"}];
    }

    v111 = mmap(0, v112, 3, 4098, -1, v19);
  }

  else
  {
    v20 = v11 + fd;
    if (ftruncate(plistCopy, v11 + fd))
    {
      v21 = objc_alloc(MEMORY[0x1E696ABC0]);
      v22 = *__error();
      v135 = *MEMORY[0x1E696A578];
      v23 = objc_alloc(MEMORY[0x1E696AEC0]);
      v24 = __error();
      v25 = strerror(*v24);
      v26 = [v23 initWithFormat:@"Failed to ftruncate file to size %zu bytes: %s (%d)", v20, v25, *__error()];
      v136 = v26;
      v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v136 forKeys:&v135 count:1];
      v28 = [v21 initWithDomain:*MEMORY[0x1E696A798] code:v22 userInfo:v27];
      v29 = *ofs;
      *ofs = v28;

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_81;
      }

      goto LABEL_12;
    }

    v111 = mmap(0, v112, 3, 1, plistCopy, v19);
  }

  if (v111 == -1)
  {
    v66 = objc_alloc(MEMORY[0x1E696ABC0]);
    v67 = *__error();
    v133 = *MEMORY[0x1E696A578];
    v68 = objc_alloc(MEMORY[0x1E696AEC0]);
    v69 = __error();
    v70 = strerror(*v69);
    v71 = [v68 initWithFormat:@"Failed to map buffer of size %zu bytes: %s (%d)", v110, v70, *__error()];
    v134 = v71;
    v72 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v134 forKeys:&v133 count:1];
    v73 = [v66 initWithDomain:*MEMORY[0x1E696A798] code:v67 userInfo:v72];
    v74 = *ofs;
    *ofs = v73;

    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    goto LABEL_81;
  }

  v108 = v8;
  v30 = v116;
  v106 = objc_opt_self();
  Mutable = CFSetCreateMutable(0, 0, &bufferDescrCallbacks);
  if (!Mutable)
  {
    currentHandler5 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler5 handleFailureInMethod:sel__writePlist_allDictionaryKeys_toBuffer_size_actSize_ object:v106 file:@"_PASLPWriterV1.m" lineNumber:857 description:@"Failed to allocate buffer set"];
  }

  v128[0] = MEMORY[0x1E69E9820];
  v128[1] = 3221225472;
  v128[2] = __70___PASLPWriterV1__writePlist_allDictionaryKeys_toBuffer_size_actSize___block_invoke;
  v128[3] = &__block_descriptor_40_e5_v8__0l;
  v128[4] = Mutable;
  v107 = MEMORY[0x1AC566DD0](v128);
  v150 = 0u;
  v151 = 0u;
  v148 = 0u;
  v149 = 0u;
  v146 = 0u;
  v147 = 0u;
  memset(buf, 0, sizeof(buf));
  *buf = [v30 count];
  v124[0] = &v111[v109];
  v124[1] = &v111[v109 + v110];
  theSet = Mutable;
  v126 = &v111[v109];
  buffer = &v111[v109];
  v127 = buf;
  v32 = bumpChecked(v124, 16);
  *v32 = 22039632;
  *(v32 + 8) = 0;
  *(v32 + 4) = 0;
  context = objc_autoreleasePoolPush();
  v33 = malloc_type_malloc(8 * [v30 count], 0x50040EE9192B6uLL);
  v34 = v33;
  if (!v33)
  {
    v102 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA18] reason:@"malloc failed" userInfo:0];
    objc_exception_throw(v102);
  }

  v123[0] = MEMORY[0x1E69E9820];
  v123[1] = 3221225472;
  v123[2] = __70___PASLPWriterV1__writePlist_allDictionaryKeys_toBuffer_size_actSize___block_invoke_2;
  v123[3] = &__block_descriptor_40_e5_v8__0l;
  v123[4] = v33;
  v104 = MEMORY[0x1AC566DD0](v123);
  v121 = 0u;
  v122 = 0u;
  v119 = 0u;
  v120 = 0u;
  v35 = v30;
  v36 = [v35 countByEnumeratingWithState:&v119 objects:v144 count:16];
  if (v36)
  {
    v37 = 0;
    v38 = *v120;
    do
    {
      for (i = 0; i != v36; ++i)
      {
        if (*v120 != v38)
        {
          objc_enumerationMutation(v35);
        }

        uTF8String = [*(*(&v119 + 1) + 8 * i) UTF8String];
        if (!uTF8String)
        {
          currentHandler6 = [MEMORY[0x1E696AAA8] currentHandler];
          [currentHandler6 handleFailureInMethod:sel__writePlist_allDictionaryKeys_toBuffer_size_actSize_ object:v106 file:@"_PASLPWriterV1.m" lineNumber:886 description:@"dictionary key is not Unicode"];
        }

        v34[v37++] = uTF8String;
      }

      v36 = [v35 countByEnumeratingWithState:&v119 objects:v144 count:16];
    }

    while (v36);
  }

  qsort_b(v34, [v35 count], 8uLL, &__block_literal_global_149);
  v42 = 0;
  *(v32 + 4) = v126 - LODWORD(v124[0]);
  while (v42 < [v35 count])
  {
    v43 = strlen(v34[v42]) + 1;
    v44 = bumpChecked(v124, v43);
    memcpy(v44, v34[v42], v43);
    *value = v44;
    *&value[8] = v43 | 0x100000000;
    v45 = theSet;
    ++*(v127 + 15);
    CFSetAddValue(v45, value);
    ++v42;
  }

  *(v32 + 8) = v126 - LODWORD(v124[0]);
  if (v104)
  {
    v104[2](v104);
  }

  objc_autoreleasePoolPop(context);
  v46 = [(_PASLPWriterV1 *)v106 _valueWordForObjectGraph:v108 allocContext:v124 recursionDepth:0];
  alignChecked(v124, 4uLL);
  v47 = bumpChecked(v124, 4);
  *v47 = v46;
  v48 = v124[0];
  *(v32 + 12) = v47 - LODWORD(v124[0]);
  v49 = &v126[-v48];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    *value = 134218240;
    *&value[4] = v49;
    *&value[12] = 2048;
    *&value[14] = &v111[v109];
    _os_log_debug_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "_PASLazyPlist: Successfully constructed _PASLazyPlist of size %zu bytes in buffer %p .  Object graph statistics:", value, 0x16u);
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    *value = 134217984;
    *&value[4] = *&buf[8];
    _os_log_debug_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "_PASLazyPlist: Boolean:        %tu", value, 0xCu);
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    *value = 134217984;
    *&value[4] = *&buf[16];
    _os_log_debug_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "_PASLazyPlist: Tagged integer: %tu", value, 0xCu);
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    *value = 134217984;
    *&value[4] = *&buf[24];
    _os_log_debug_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "_PASLazyPlist: Boxed integer:  %tu", value, 0xCu);
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    *value = 134217984;
    *&value[4] = v146;
    _os_log_debug_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "_PASLazyPlist: Tagged real:    %tu", value, 0xCu);
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    *value = 134217984;
    *&value[4] = *(&v146 + 1);
    _os_log_debug_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "_PASLazyPlist: Boxed real:     %tu", value, 0xCu);
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    *value = 134217984;
    *&value[4] = v147;
    _os_log_debug_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "_PASLazyPlist: Date:           %tu", value, 0xCu);
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    *value = 134218240;
    *&value[4] = *(&v147 + 1);
    *&value[12] = 2048;
    *&value[14] = *buf;
    _os_log_debug_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "_PASLazyPlist: String:         %tu (%tu unique dictionary keys)", value, 0x16u);
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    *value = 134218240;
    *&value[4] = v148;
    *&value[12] = 2048;
    *&value[14] = *(&v148 + 1);
    _os_log_debug_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "_PASLazyPlist: Data:           %tu (%tu total bytes)", value, 0x16u);
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    *value = 134218240;
    *&value[4] = v150;
    *&value[12] = 2048;
    *&value[14] = *(&v150 + 1);
    _os_log_debug_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "_PASLazyPlist: Dictionary:     %tu (%tu total key/value mappings)", value, 0x16u);
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    *value = 134218240;
    *&value[4] = v149;
    *&value[12] = 2048;
    *&value[14] = *(&v149 + 1);
    _os_log_debug_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "_PASLazyPlist: Array:          %tu (%tu total elements)", value, 0x16u);
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    *value = 134217984;
    *&value[4] = v151;
    _os_log_debug_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "_PASLazyPlist: Object graph maximum depth: %tu", value, 0xCu);
  }

  v50 = *(&v151 + 1);
  if (*(&v151 + 1) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    *value = 134218240;
    *&value[4] = v50;
    *&value[12] = 2048;
    *&value[14] = v150 + v149 + v148 + *(&v147 + 1) + v147 + *(&v146 + 1) + *&buf[24];
    _os_log_debug_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "_PASLazyPlist: Boxed allocations: %tu (referenced by %tu total pointers)", value, 0x16u);
  }

  v51 = +[_PASLazyPlist serializationStatsHandler];
  v52 = v51;
  if (v51)
  {
    v53 = *(v51 + 16);
    v140 = v148;
    v141 = v149;
    v142 = v150;
    v143 = v151;
    *value = *buf;
    *&value[16] = *&buf[16];
    v138 = v146;
    v139 = v147;
    v53(v51, value);
  }

  v54 = v107;
  if (v107)
  {
    (*(v107 + 2))();
    v54 = v107;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    *&buf[4] = v49;
    _os_log_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "_PASLazyPlist: _mappedDataWithPlist: _PASLazyPlist actual size: %zu bytes", buf, 0xCu);
  }

  v55 = v110;
  v56 = plistCopy;
  if (v49 > v110)
  {
    currentHandler7 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler7 handleFailureInMethod:sel__mappedDataWithPlist_fd_ofs_error_ object:v113 file:@"_PASLPWriterV1.m" lineNumber:1009 description:{@"Invalid parameter not satisfying: %@", @"actSize <= sizeUpperBound"}];

    v56 = plistCopy;
    v55 = v110;
    if (plistCopy < 0)
    {
      goto LABEL_85;
    }
  }

  else if (plistCopy < 0)
  {
    goto LABEL_85;
  }

  v56 = plistCopy;
  if (msync(v111, v112, 16))
  {
    v57 = objc_alloc(MEMORY[0x1E696ABC0]);
    v58 = *__error();
    v131 = *MEMORY[0x1E696A578];
    v59 = objc_alloc(MEMORY[0x1E696AEC0]);
    v60 = __error();
    v61 = strerror(*v60);
    v62 = [v59 initWithFormat:@"Failed to msync file content of size %zu bytes: %s (%d)", v49, v61, *__error()];
    v132 = v62;
    v63 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v132 forKeys:&v131 count:1];
    v64 = [v57 initWithDomain:*MEMORY[0x1E696A798] code:v58 userInfo:v63];
    v65 = *ofsCopy;
    *ofsCopy = v64;

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_99;
    }

    goto LABEL_92;
  }

LABEL_85:
  v81 = &buffer[v49 - 1 + *MEMORY[0x1E69E9AC8]] / *MEMORY[0x1E69E9AC8] * *MEMORY[0x1E69E9AC8];
  if (&buffer[v55] > v81)
  {
    v56 = plistCopy;
    if (munmap(v81, &buffer[v55 - v81]))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v82 = __error();
        v83 = strerror(*v82);
        v84 = *__error();
        *buf = 136315394;
        *&buf[4] = v83;
        *&buf[12] = 1024;
        *&buf[14] = v84;
        _os_log_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "_PASLazyPlist: Warning: failed to unmap unused tail: %s (%d)", buf, 0x12u);
        v56 = plistCopy;
      }
    }
  }

  v112 = v49 + v109;
  if ((v56 & 0x80000000) == 0 && ftruncate(v56, v49 + fd))
  {
    v85 = objc_alloc(MEMORY[0x1E696ABC0]);
    v86 = *__error();
    v129 = *MEMORY[0x1E696A578];
    v87 = objc_alloc(MEMORY[0x1E696AEC0]);
    v88 = __error();
    v89 = strerror(*v88);
    v90 = [v87 initWithFormat:@"Failed to ftruncate file to size %zu bytes: %s (%d)", v49, v89, *__error()];
    v130 = v90;
    v91 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v130 forKeys:&v129 count:1];
    v92 = [v85 initWithDomain:*MEMORY[0x1E696A798] code:v86 userInfo:v91];
    v93 = *ofsCopy;
    *ofsCopy = v92;

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
LABEL_99:
      v100 = *ofsCopy;
      *buf = 138412290;
      *&buf[4] = v100;
      _os_log_error_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "_PASLazyPlist: %@", buf, 0xCu);
    }

LABEL_92:
    if (munmap(v111, v112) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v94 = __error();
      v95 = strerror(*v94);
      v96 = *__error();
      *buf = 136315394;
      *&buf[4] = v95;
      *&buf[12] = 1024;
      *&buf[14] = v96;
      _os_log_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "_PASLazyPlist: Warning: failed to unmap in failure recovery: %s (%d)", buf, 0x12u);
    }

    goto LABEL_12;
  }

  if (mprotect(v111, v112, 1) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v97 = __error();
    v98 = strerror(*v97);
    v99 = *__error();
    *buf = 136315394;
    *&buf[4] = v98;
    *&buf[12] = 1024;
    *&buf[14] = v99;
    _os_log_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "_PASLazyPlist: Warning: failed to mprotect mapping: %s (%d)", buf, 0x12u);
  }

  v17 = dispatch_data_create(buffer, v49, 0, *MEMORY[0x1E69E9650]);
LABEL_13:

  return v17;
}

+ (uint64_t)_scanPlist:(unint64_t)plist recursionDepth:(uint64_t *)depth sizeUpperBound:(void *)bound allDictionaryKeys:(id *)keys error:
{
  v10 = a2;
  boundCopy = bound;
  v12 = objc_opt_self();
  if (!keys)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:sel__scanPlist_recursionDepth_sizeUpperBound_allDictionaryKeys_error_ object:v12 file:@"_PASLPWriterV1.m" lineNumber:359 description:{@"Invalid parameter not satisfying: %@", @"error"}];
  }

  if (plist < 0x65)
  {
    v17 = *depth;
    plistCopy = plist;
    v29 = v17;
    v30 = boundCopy;
    obj = *keys;
    v18 = [(_PASLPWriterV1 *)v12 _visitObject:v10 context:&plistCopy handleBoolean:&__block_literal_global_4037 handleInt64:&__block_literal_global_46 handleFloat64:&__block_literal_global_49_4038 handleTimeInterval:&__block_literal_global_51 handleData:&__block_literal_global_54 handleString:&__block_literal_global_57_4039 handleDict:&__block_literal_global_63 handleArray:&__block_literal_global_74 handleOther:&__block_literal_global_78];
    if (v18)
    {
      v19 = obj;
      *depth = v29 + 19;
      objc_storeStrong(keys, v19);
      v20 = v30;
      v30 = 0;

      v21 = obj;
      obj = 0;
    }
  }

  else
  {
    v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"plist object graph exceeds maximum depth %tu, or contains a cycle", 100];
    v14 = objc_opt_new();
    v15 = v14;
    if (v13)
    {
      v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"The object is too large to serialize as _PASLazyPlist: %@", v13];
      [v15 setObject:v16 forKeyedSubscript:*MEMORY[0x1E696A578]];
    }

    else
    {
      [v14 setObject:@"The object is too large to serialize as _PASLazyPlist." forKeyedSubscript:*MEMORY[0x1E696A578]];
    }

    [v15 setObject:v13 forKeyedSubscript:*MEMORY[0x1E696A588]];

    v22 = objc_alloc(MEMORY[0x1E696ABC0]);
    v23 = [v15 copy];
    v24 = [v22 initWithDomain:@"_PASLazyPlistErrorDomain" code:7 userInfo:v23];

    v25 = *keys;
    *keys = v24;

    v18 = 0;
  }

  return v18;
}

+ (uint64_t)_valueWordForObjectGraph:(uint64_t)graph allocContext:(unint64_t)context recursionDepth:
{
  v6 = a2;
  v7 = objc_opt_self();
  v8 = v7;
  v9 = *(graph + 32);
  contextCopy = *(v9 + 112);
  if (contextCopy <= context)
  {
    contextCopy = context;
  }

  *(v9 + 112) = contextCopy;
  graphCopy = graph;
  v16 = 0;
  contextCopy2 = context;
  v11 = [(_PASLPWriterV1 *)v7 _visitObject:v6 context:&graphCopy handleBoolean:&__block_literal_global_88 handleInt64:&__block_literal_global_90 handleFloat64:&__block_literal_global_92 handleTimeInterval:&__block_literal_global_97 handleData:&__block_literal_global_99 handleString:&__block_literal_global_105 handleDict:&__block_literal_global_111 handleArray:&__block_literal_global_126 handleOther:0];

  if ((v11 & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:sel__valueWordForObjectGraph_allocContext_recursionDepth_ object:v8 file:@"_PASLPWriterV1.m" lineNumber:841 description:{@"Invalid parameter not satisfying: %@", @"ok"}];
  }

  if ((v16 & 0x100000000) == 0)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:sel__valueWordForObjectGraph_allocContext_recursionDepth_ object:v8 file:@"_PASLPWriterV1.m" lineNumber:842 description:{@"Invalid parameter not satisfying: %@", @"valueWordContext.hasValueWord"}];
  }

  return v16;
}

+ (uint64_t)_visitObject:(uint64_t)object context:(void *)context handleBoolean:(void *)boolean handleInt64:(void *)int64 handleFloat64:(void *)float64 handleTimeInterval:(void *)interval handleData:(void *)data handleString:(void *)self0 handleDict:(void *)self1 handleArray:(void *)self2 handleOther:
{
  v17 = a2;
  contextCopy = context;
  booleanCopy = boolean;
  int64Copy = int64;
  float64Copy = float64;
  intervalCopy = interval;
  dataCopy = data;
  stringCopy = string;
  dictCopy = dict;
  arrayCopy = array;
  v25 = objc_opt_self();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v26 = CFGetTypeID(v17);
    if (v26 == CFBooleanGetTypeID())
    {
      v27 = booleanCopy;
      v28 = contextCopy;
      if (contextCopy)
      {
        v29 = CFBooleanGetValue(v17) != 0;
        v30 = (*(contextCopy + 2))(contextCopy, object, v29);
LABEL_34:
        v34 = v30;
        goto LABEL_36;
      }

      goto LABEL_35;
    }

    v27 = booleanCopy;
    if (CFNumberIsFloatType(v17))
    {
      if (int64Copy)
      {
        valuePtr = 0;
        if (!CFNumberGetValue(v17, kCFNumberDoubleType, &valuePtr))
        {
          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          [currentHandler handleFailureInMethod:sel__visitObject_context_handleBoolean_handleInt64_handleFloat64_handleTimeInterval_handleData_handleString_handleDict_handleArray_handleOther_ object:v25 file:@"_PASLPWriterV1.m" lineNumber:307 description:{@"Invalid parameter not satisfying: %@", @"convOk"}];

          v27 = booleanCopy;
        }

        v33.n128_u64[0] = valuePtr;
        v32 = int64Copy[2](int64Copy, object, v33);
        goto LABEL_13;
      }
    }

    else if (booleanCopy)
    {
      valuePtr = 0;
      if (!CFNumberGetValue(v17, kCFNumberSInt64Type, &valuePtr))
      {
        currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler2 handleFailureInMethod:sel__visitObject_context_handleBoolean_handleInt64_handleFloat64_handleTimeInterval_handleData_handleString_handleDict_handleArray_handleOther_ object:v25 file:@"_PASLPWriterV1.m" lineNumber:314 description:{@"Invalid parameter not satisfying: %@", @"convOk"}];

        v27 = booleanCopy;
      }

      v32 = v27[2](v27, object, valuePtr);
      goto LABEL_13;
    }

LABEL_24:
    v34 = 1;
    goto LABEL_25;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    v27 = booleanCopy;
    if (objc_opt_isKindOfClass())
    {
      v28 = contextCopy;
      if (intervalCopy)
      {
        v30 = intervalCopy[2](intervalCopy, object, v17);
        goto LABEL_34;
      }
    }

    else
    {
      objc_opt_class();
      v28 = contextCopy;
      if (objc_opt_isKindOfClass())
      {
        if (dataCopy)
        {
          v30 = dataCopy[2](dataCopy, object, v17);
          goto LABEL_34;
        }
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if (stringCopy)
          {
            v30 = stringCopy[2](stringCopy, object, v17);
            goto LABEL_34;
          }
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if (dictCopy)
            {
              v30 = dictCopy[2](dictCopy, object, v17);
              goto LABEL_34;
            }
          }

          else if (arrayCopy)
          {
            v30 = arrayCopy[2](arrayCopy, object, v17);
            goto LABEL_34;
          }
        }
      }
    }

LABEL_35:
    v34 = 1;
    goto LABEL_36;
  }

  v27 = booleanCopy;
  if (!float64Copy)
  {
    goto LABEL_24;
  }

  [v17 timeIntervalSinceReferenceDate];
  v32 = float64Copy[2](float64Copy, object, v31);
LABEL_13:
  v34 = v32;
LABEL_25:
  v28 = contextCopy;
LABEL_36:

  return v34;
}

+ (id)fileBackedDataWithPropertyList:(id)list writtenToPath:(id)path error:(id *)error
{
  listCopy = list;
  pathCopy = path;
  v11 = pathCopy;
  if (listCopy)
  {
    if (pathCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_PASLPWriterV1.m" lineNumber:200 description:{@"Invalid parameter not satisfying: %@", @"plist"}];

    if (v11)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"_PASLPWriterV1.m" lineNumber:201 description:{@"Invalid parameter not satisfying: %@", @"path"}];

LABEL_3:
  v30 = 0;
  v12 = objc_autoreleasePoolPush();
  v13 = open([v11 fileSystemRepresentation], 1538, 420);
  if (v13 < 0)
  {
    v16 = objc_alloc(MEMORY[0x1E696AEC0]);
    v17 = __error();
    v18 = strerror(*v17);
    v19 = [v16 initWithFormat:@"Could not open file: %s (%d)", v18, *__error()];
    v20 = v11;
    v21 = objc_opt_new();
    v22 = v21;
    if (v19)
    {
      v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"The file cannot be opened: %@", v19];
      [v22 setObject:v23 forKeyedSubscript:*MEMORY[0x1E696A578]];
    }

    else
    {
      [v21 setObject:@"The file cannot be opened." forKeyedSubscript:*MEMORY[0x1E696A578]];
    }

    [v22 setObject:v19 forKeyedSubscript:*MEMORY[0x1E696A588]];

    [v22 setObject:v20 forKeyedSubscript:*MEMORY[0x1E696A368]];
    v24 = objc_alloc(MEMORY[0x1E696ABC0]);
    v25 = [v22 copy];
    v26 = [v24 initWithDomain:@"_PASLazyPlistErrorDomain" code:1 userInfo:v25];

    v30 = v26;
    v15 = 0;
  }

  else
  {
    v14 = v13;
    v15 = [(_PASLPWriterV1 *)self _mappedDataWithPlist:listCopy fd:v13 ofs:0 error:&v30];
    close(v14);
  }

  objc_autoreleasePoolPop(v12);
  if (error && !v15)
  {
    *error = v30;
  }

  return v15;
}

+ (id)dataWithPropertyList:(id)list error:(id *)error
{
  listCopy = list;
  if (listCopy)
  {
    v14 = 0;
    v8 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v10 = listCopy;
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_PASLPWriterV1.m" lineNumber:180 description:{@"Invalid parameter not satisfying: %@", @"plist"}];

    v14 = 0;
    v8 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v10 = 0;
  }

  v11 = [(_PASLPWriterV1 *)selfCopy2 _mappedDataWithPlist:v10 fd:-1 ofs:0 error:&v14];
  objc_autoreleasePoolPop(v8);
  if (error && !v11)
  {
    *error = v14;
  }

  return v11;
}

@end