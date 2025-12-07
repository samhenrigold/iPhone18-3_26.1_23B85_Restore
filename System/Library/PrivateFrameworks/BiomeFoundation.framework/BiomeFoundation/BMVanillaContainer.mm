@interface BMVanillaContainer
+ (id)containerForPersonaIdentifier:(id)identifier error:(id *)error;
@end

@implementation BMVanillaContainer

+ (id)containerForPersonaIdentifier:(id)identifier error:(id *)error
{
  v28 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if (!container_query_create())
  {
    if (!error)
    {
LABEL_11:
      v15 = 0;
      goto LABEL_15;
    }

LABEL_7:
    [MEMORY[0x1E696ABC0] errorWithDomain:@"BMAccessErrorDomain" code:10 userInfo:0];
    *error = v15 = 0;
    goto LABEL_15;
  }

  container_query_set_class();
  container_query_operation_set_flags();
  [identifierCopy cStringUsingEncoding:4];
  container_query_set_persona_unique_string();
  v6 = xpc_string_create("com.apple.biomed");
  container_query_set_identifiers();

  if (!container_query_get_single_result())
  {
    container_query_get_last_error();
    v16 = container_error_copy_unlocalized_description();
    v17 = __biome_log_for_category(6);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [BMVanillaContainer containerForPersonaIdentifier:v16 error:v17];
    }

    free(v16);
    if (!error)
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

  v7 = [MEMORY[0x1E696AEC0] stringWithCString:container_get_path() encoding:4];
  v8 = [v7 stringByAppendingPathComponent:@"Biome"];

  v9 = [MEMORY[0x1E695DFF8] fileURLWithPath:v8];
  v10 = container_copy_sandbox_token();
  v11 = sandbox_extension_consume();
  v12 = __biome_log_for_category(6);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = objc_opt_class();
    if (v11 == -1)
    {
      v18 = __error();
      v14 = strerror(*v18);
    }

    else
    {
      v14 = "no error";
    }

    v20 = 138413058;
    v21 = v13;
    v22 = 2048;
    v23 = v10;
    v24 = 2048;
    v25 = v11;
    v26 = 2082;
    v27 = v14;
    _os_log_impl(&dword_1AC15D000, v12, OS_LOG_TYPE_DEFAULT, "%@ sandbox_extension_consume(%p) = %lld, %{public}s", &v20, 0x2Au);
  }

  container_query_free();
  free(v10);
  v15 = [objc_alloc(objc_opt_class()) initWithURL:v9 personaIdentifier:identifierCopy];

LABEL_15:

  return v15;
}

+ (void)containerForPersonaIdentifier:(uint64_t)a1 error:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 136315138;
  v3 = a1;
  _os_log_error_impl(&dword_1AC15D000, a2, OS_LOG_TYPE_ERROR, "Error executing query: %s", &v2, 0xCu);
}

@end