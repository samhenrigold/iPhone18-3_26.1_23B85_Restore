@interface LNPackageMetadata
- (BOOL)isEqual:(id)equal;
- (BOOL)resolveWithImagePath:(id)path executablePath:(id)executablePath rpaths:(id)rpaths partialResults:(id)results error:(id *)error;
- (LNPackageMetadata)initWithCoder:(id)coder;
- (LNPackageMetadata)initWithIncludes:(id)includes;
- (id)_initWithMetadataFileURL:(id)l bundleURL:(id)rL error:(id *)error;
- (id)description;
- (id)linkerSymbolNames;
- (id)resolveWithBundle:(id)bundle error:(id *)error;
- (id)verboseDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNPackageMetadata

- (id)_initWithMetadataFileURL:(id)l bundleURL:(id)rL error:(id *)error
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v16[-v7];
  v9 = sub_18F0932BC();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v16[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  sub_18F09327C();
  if (rL)
  {
    sub_18F09327C();
    (*(v10 + 32))(v8, v13, v9);
    v14 = 0;
  }

  else
  {
    v14 = 1;
  }

  __swift_storeEnumTagSinglePayload(v8, v14, 1, v9);
  LNPackageMetadata.init(metadataFileURL:bundleURL:)();
  return result;
}

- (BOOL)resolveWithImagePath:(id)path executablePath:(id)executablePath rpaths:(id)rpaths partialResults:(id)results error:(id *)error
{
  v88 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  executablePathCopy = executablePath;
  rpathsCopy = rpaths;
  resultsCopy = results;
  linkerSymbolNames = [(LNPackageMetadata *)self linkerSymbolNames];
  if ([linkerSymbolNames count])
  {
    v76 = 0;
    v77 = &v76;
    v78 = 0x3032000000;
    v79 = __Block_byref_object_copy__8615;
    v80 = __Block_byref_object_dispose__8616;
    v81 = 0;
    v70 = 0;
    v71 = &v70;
    v72 = 0x3032000000;
    v73 = __Block_byref_object_copy__8615;
    v74 = __Block_byref_object_dispose__8616;
    v75 = 0;
    v11 = getLNLogCategoryMetadata();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v85 = pathCopy;
      v86 = 2112;
      v87 = linkerSymbolNames;
      _os_log_impl(&dword_18EF7E000, v11, OS_LOG_TYPE_DEBUG, "resolving %@ looking for symbols %@", buf, 0x16u);
    }

    v12 = pathCopy;
    errorCopy = error;
    fileSystemRepresentation = [pathCopy fileSystemRepresentation];
    v66[0] = MEMORY[0x1E69E9820];
    v66[1] = 3221225472;
    v66[2] = __85__LNPackageMetadata_resolveWithImagePath_executablePath_rpaths_partialResults_error___block_invoke;
    v66[3] = &unk_1E72B14F0;
    v67 = linkerSymbolNames;
    v68 = &v76;
    v69 = &v70;
    v15 = macho_good_enough_slice(fileSystemRepresentation, v66);
    v16 = v15;
    if (v71[5] && v77[5])
    {
      v17 = [rpathsCopy arrayByAddingObjectsFromArray:?];
      array = [MEMORY[0x1E695DF70] array];
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v19 = v71[5];
      v20 = [v19 countByEnumeratingWithState:&v62 objects:v83 count:16];
      if (v20)
      {
        v21 = *v63;
        while (2)
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v63 != v21)
            {
              objc_enumerationMutation(v19);
            }

            v23 = *(*(&v62 + 1) + 8 * i);
            if ([v23 length])
            {
              stringByDeletingLastPathComponent = [pathCopy stringByDeletingLastPathComponent];
              v25 = _URLFromLibraryName(v23, 0, stringByDeletingLastPathComponent, executablePathCopy, v17);

              if (!v25)
              {
                v44 = getLNLogCategoryMetadata();
                if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412546;
                  v85 = v23;
                  v86 = 2112;
                  v87 = v17;
                  _os_log_impl(&dword_18EF7E000, v44, OS_LOG_TYPE_ERROR, "could not resolve library name %@ to path: tried %@", buf, 0x16u);
                }

                if (error)
                {
                  [MEMORY[0x1E696ABC0] errorWithErrno:85 forFilePath:pathCopy];
                  *error = LOBYTE(v39) = 0;
                }

                else
                {
LABEL_59:
                  LOBYTE(v39) = 0;
                }

                goto LABEL_60;
              }

              v26 = _CFBundleCopyBundleURLForExecutableURL();
              absoluteURL = [v26 absoluteURL];

              if (([array containsObject:absoluteURL] & 1) == 0)
              {
                [array addObject:absoluteURL];
              }
            }
          }

          v20 = [v19 countByEnumeratingWithState:&v62 objects:v83 count:16];
          if (v20)
          {
            continue;
          }

          break;
        }
      }

      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v19 = array;
      v28 = [v19 countByEnumeratingWithState:&v58 objects:v82 count:16];
      if (v28)
      {
        v51 = *v59;
        *&v29 = 138412546;
        v50 = v29;
        while (2)
        {
          for (j = 0; j != v28; ++j)
          {
            if (*v59 != v51)
            {
              objc_enumerationMutation(v19);
            }

            v31 = *(*(&v58 + 1) + 8 * j);
            if (([resultsCopy containsObject:{v31, v50}] & 1) == 0)
            {
              [resultsCopy addObject:v31];
              v32 = [objc_alloc(MEMORY[0x1E696AAE8]) _initUniqueWithURL:v31];
              v33 = [[LNPackageMetadata alloc] initFrom:v32 error:error];
              if (!v33)
              {
                v34 = getLNLogCategoryMetadata();
                if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
                {
                  path = [v31 path];
                  v36 = path;
                  errorCopy2 = error;
                  if (error)
                  {
                    errorCopy2 = *error;
                  }

                  *buf = v50;
                  v85 = path;
                  v86 = 2112;
                  v87 = errorCopy2;
                  _os_log_impl(&dword_18EF7E000, v34, OS_LOG_TYPE_ERROR, "could not get package metadata from bundle %@, %@", buf, 0x16u);
                }
              }

              v38 = [v32 executablePathWithError:error];
              if (!v38)
              {
                v45 = getLNLogCategoryMetadata();
                if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
                {
                  path2 = [v31 path];
                  v47 = path2;
                  errorCopy3 = error;
                  if (error)
                  {
                    errorCopy3 = *error;
                  }

                  *buf = v50;
                  v85 = path2;
                  v86 = 2112;
                  v87 = errorCopy3;
                  _os_log_impl(&dword_18EF7E000, v45, OS_LOG_TYPE_ERROR, "bundle %@ has no executable, %@", buf, 0x16u);
                }

                v38 = 0;
LABEL_58:

                goto LABEL_59;
              }

              if (!v33)
              {
                goto LABEL_58;
              }

              v39 = [v33 resolveWithImagePath:v38 executablePath:executablePathCopy rpaths:v17 partialResults:resultsCopy error:error];

              if (!v39)
              {
                goto LABEL_60;
              }
            }
          }

          v28 = [v19 countByEnumeratingWithState:&v58 objects:v82 count:16];
          if (v28)
          {
            continue;
          }

          break;
        }
      }

      v19 = getLNLogCategoryMetadata();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        allObjects = [resultsCopy allObjects];
        v41 = [allObjects if_map:&__block_literal_global_38_8624];
        *buf = 138412546;
        v85 = pathCopy;
        v86 = 2112;
        v87 = v41;
        _os_log_impl(&dword_18EF7E000, v19, OS_LOG_TYPE_DEBUG, "success: %@ includes %@", buf, 0x16u);
      }

      LOBYTE(v39) = 1;
LABEL_60:
    }

    else
    {
      if (error)
      {
        v42 = MEMORY[0x1E696ABC0];
        if (!v15)
        {
          v16 = *__error();
        }

        [v42 errorWithErrno:v16 forFilePath:pathCopy];
        *error = errorCopy = error;
      }

      v17 = getLNLogCategoryMetadata();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        if (errorCopy)
        {
          v43 = *errorCopy;
        }

        else
        {
          v43 = 0;
        }

        *buf = 138412546;
        v85 = pathCopy;
        v86 = 2112;
        v87 = v43;
        _os_log_impl(&dword_18EF7E000, v17, OS_LOG_TYPE_DEBUG, "could not resolve package includes in %@ - %@", buf, 0x16u);
      }

      LOBYTE(v39) = 0;
    }

    _Block_object_dispose(&v70, 8);
    _Block_object_dispose(&v76, 8);
  }

  else
  {
    LOBYTE(v39) = 1;
  }

  return v39;
}

void __85__LNPackageMetadata_resolveWithImagePath_executablePath_rpaths_partialResults_error___block_invoke(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = mh_validate(a2, a4);
  *__error() = v6;
  if (v6)
  {
    return;
  }

  v27 = a1;
  v7 = *(a1 + 32);
  v8 = malloc_type_malloc(8 * [v7 count], 0x10040436913F5uLL);
  if (v8)
  {
    v9 = [v7 count];
    if (v9)
    {
      for (i = 0; i != v9; ++i)
      {
        v11 = [v7 objectAtIndex:i];
        v8[i] = [v11 UTF8String];
      }
    }
  }

  else
  {
    v9 = 0;
  }

  v12 = malloc_type_malloc(8 * v9, 0x10040436913F5uLL);
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __mh_symlibnames_block_invoke;
  v28[3] = &unk_1E72B1560;
  v28[6] = v12;
  v28[7] = v8;
  v28[4] = &v29;
  v28[5] = v9;
  v13 = macho_for_each_imported_symbol();
  if (v13)
  {
    goto LABEL_17;
  }

  if (v30[3] < v9)
  {
    v14 = v12;
    v15 = v8;
    v16 = v9;
    do
    {
      if (!*v14)
      {
        v17 = getLNLogCategoryMetadata();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v18 = *v15;
          *buf = 136315138;
          v34 = v18;
        }
      }

      ++v15;
      ++v14;
      --v16;
    }

    while (v16);
    v13 = 22;
LABEL_17:
    free(v12);
    v12 = 0;
    *__error() = v13;
  }

  _Block_object_dispose(&v29, 8);
  v28[0] = 0;
  v19 = mh_cmdstrs(a2, v28, is_rpath);
  v20 = v19;
  if (v12 && v19)
  {
    v21 = strlist_to_array(v19, v28[0]);
    v22 = *(*(v27 + 40) + 8);
    v23 = *(v22 + 40);
    *(v22 + 40) = v21;

    v24 = strlist_to_array(v12, v9);
    v25 = *(*(v27 + 48) + 8);
    v26 = *(v25 + 40);
    *(v25 + 40) = v24;

LABEL_22:
    free(v12);
    goto LABEL_23;
  }

  if (v12)
  {
    goto LABEL_22;
  }

LABEL_23:
  if (v20)
  {
    free(v20);
  }

  if (v8)
  {
    free(v8);
  }
}

- (id)linkerSymbolNames
{
  includes = [(LNPackageMetadata *)self includes];
  v3 = [includes if_map:&__block_literal_global_8635];

  return v3;
}

- (id)resolveWithBundle:(id)bundle error:(id *)error
{
  v6 = [bundle executablePathWithError:error];
  v7 = [MEMORY[0x1E695DFA8] set];
  if (!v6)
  {
    allObjects = 0;
    goto LABEL_9;
  }

  stringByDeletingLastPathComponent = [v6 stringByDeletingLastPathComponent];
  v25 = 0;
  v9 = MEMORY[0x1E695E0F0];
  v10 = [(LNPackageMetadata *)self resolveWithImagePath:v6 executablePath:stringByDeletingLastPathComponent rpaths:MEMORY[0x1E695E0F0] partialResults:v7 error:&v25];
  v11 = v25;

  v12 = [v6 stringByAppendingString:@".debug.dylib"];
  stringByDeletingLastPathComponent2 = [v6 stringByDeletingLastPathComponent];
  v24 = 0;
  LOBYTE(v9) = [(LNPackageMetadata *)self resolveWithImagePath:v12 executablePath:stringByDeletingLastPathComponent2 rpaths:v9 partialResults:v7 error:&v24];
  v14 = v24;

  if (v9)
  {
    v15 = v14;
LABEL_6:
    allObjects = [v7 allObjects];
    goto LABEL_7;
  }

  v17 = [v6 stringByAppendingString:@".preview.dylib"];
  stringByDeletingLastPathComponent3 = [v6 stringByDeletingLastPathComponent];
  v23 = v14;
  v19 = [(LNPackageMetadata *)self resolveWithImagePath:v17 executablePath:stringByDeletingLastPathComponent3 rpaths:MEMORY[0x1E695E0F0] partialResults:v7 error:&v23];
  v15 = v23;

  if (v10 || v19)
  {
    goto LABEL_6;
  }

  if (v11)
  {
    v21 = v11;
    allObjects = 0;
    *error = v11;
  }

  else
  {
    if (!v15)
    {
      allObjects = 0;
      goto LABEL_8;
    }

    v22 = v15;
    allObjects = 0;
    *error = v15;
  }

LABEL_7:

LABEL_8:
LABEL_9:

  return allObjects;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self != equalCopy)
  {
    v6 = equalCopy;
    if (v6)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        includes = [(LNPackageMetadata *)self includes];
        includes2 = [(LNPackageMetadata *)v6 includes];

        if (includes == includes2)
        {
          v18 = 1;
          goto LABEL_12;
        }

        includes3 = [(LNPackageMetadata *)self includes];
        if (!includes3 || (v10 = includes3, [(LNPackageMetadata *)v6 includes], v11 = objc_claimAutoreleasedReturnValue(), v11, v10, !v11))
        {
          v18 = 0;
          goto LABEL_12;
        }

        v12 = MEMORY[0x1E695DFD8];
        includes4 = [(LNPackageMetadata *)self includes];
        v14 = [v12 setWithArray:includes4];
        v15 = MEMORY[0x1E695DFD8];
        includes5 = [(LNPackageMetadata *)v6 includes];
        v17 = [v15 setWithArray:includes5];
        v18 = [v14 isEqualToSet:v17];
      }

      else
      {
        v18 = 0;
        includes4 = v6;
        v6 = 0;
      }
    }

    else
    {
      includes4 = 0;
      v18 = 0;
    }

LABEL_12:
    goto LABEL_13;
  }

  v18 = 1;
LABEL_13:

  return v18;
}

- (unint64_t)hash
{
  includes = [(LNPackageMetadata *)self includes];
  v3 = [includes hash];

  return v3;
}

- (id)verboseDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  includes = [(LNPackageMetadata *)self includes];
  v7 = [v3 stringWithFormat:@"<%@: %p, includes: %@>", v5, self, includes];

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  includes = [(LNPackageMetadata *)self includes];
  v7 = [v3 stringWithFormat:@"<%@: %p, includes: %lu>", v5, self, objc_msgSend(includes, "count")];

  return v7;
}

- (LNPackageMetadata)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"includes"];

  if (v8)
  {
    self = [(LNPackageMetadata *)self initWithIncludes:v8];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  includes = [(LNPackageMetadata *)self includes];
  [coderCopy encodeObject:includes forKey:@"includes"];
}

- (LNPackageMetadata)initWithIncludes:(id)includes
{
  includesCopy = includes;
  v10.receiver = self;
  v10.super_class = LNPackageMetadata;
  v5 = [(LNPackageMetadata *)&v10 init];
  if (v5)
  {
    v6 = [includesCopy copy];
    includes = v5->_includes;
    v5->_includes = v6;

    v8 = v5;
  }

  return v5;
}

@end