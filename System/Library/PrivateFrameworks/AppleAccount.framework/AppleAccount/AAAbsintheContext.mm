@interface AAAbsintheContext
- (AAAbsintheContext)init;
- (BOOL)R6XtwiyjL3q2:(id)l3q2 error:(id *)error;
- (id)TgBfoO2wtF5L:(id)l error:(id *)error;
- (id)cao1NI5PNJBn:(id)bn error:(id *)error;
- (void)dealloc;
@end

@implementation AAAbsintheContext

- (AAAbsintheContext)init
{
  v3.receiver = self;
  v3.super_class = AAAbsintheContext;
  result = [(AAAbsintheContext *)&v3 init];
  if (result)
  {
    result->_contextRef = 0;
  }

  return result;
}

- (void)dealloc
{
  contextRef = self->_contextRef;
  if (contextRef)
  {
    IW1PcFszqNK(contextRef);
  }

  v4.receiver = self;
  v4.super_class = AAAbsintheContext;
  [(AAAbsintheContext *)&v4 dealloc];
}

- (id)TgBfoO2wtF5L:(id)l error:(id *)error
{
  v16[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  if (!lCopy)
  {
    [AAAbsintheContext TgBfoO2wtF5L:a2 error:self];
  }

  if (self->_contextRef)
  {
    [AAAbsintheContext TgBfoO2wtF5L:a2 error:self];
  }

  KxmB0CKvgWt([lCopy bytes], objc_msgSend(lCopy, "length"));
  if (v8)
  {
    v9 = v8;
    v10 = _AALogSystem(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [AAAbsintheContext TgBfoO2wtF5L:v9 error:?];
    }

    if (error)
    {
      v11 = MEMORY[0x1E696ABC0];
      v15 = @"AAAbsintheError";
      v12 = [MEMORY[0x1E696AD98] numberWithInt:v9];
      v16[0] = v12;
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
      *error = [v11 aa_errorWithCode:-4403 userInfo:v13];

      error = 0;
    }
  }

  else
  {
    error = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:0 length:0 deallocator:&__block_literal_global_10];
  }

  return error;
}

- (BOOL)R6XtwiyjL3q2:(id)l3q2 error:(id *)error
{
  v16[1] = *MEMORY[0x1E69E9840];
  l3q2Copy = l3q2;
  if (!l3q2Copy)
  {
    [AAAbsintheContext R6XtwiyjL3q2:a2 error:self];
  }

  nDYmeMqvWb(self->_contextRef, [l3q2Copy bytes], objc_msgSend(l3q2Copy, "length"));
  v9 = v8;
  if (v8)
  {
    v10 = _AALogSystem(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [AAAbsintheContext R6XtwiyjL3q2:v9 error:?];
    }

    if (error)
    {
      v11 = MEMORY[0x1E696ABC0];
      v15 = @"AAAbsintheError";
      v12 = [MEMORY[0x1E696AD98] numberWithInt:v9];
      v16[0] = v12;
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
      *error = [v11 aa_errorWithCode:-4403 userInfo:v13];
    }
  }

  return v9 == 0;
}

- (id)cao1NI5PNJBn:(id)bn error:(id *)error
{
  v22[1] = *MEMORY[0x1E69E9840];
  v20 = 0;
  contextRef = self->_contextRef;
  bnCopy = bn;
  bnCopy2 = bn;
  bytes = [bnCopy2 bytes];
  v10 = [bnCopy2 length];

  t1BoNctgaUu66(contextRef, bytes, v10, &v20);
  if (v11)
  {
    v12 = v11;
    v13 = _AALogSystem(v11);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [AAAbsintheContext cao1NI5PNJBn:v12 error:?];
    }

    if (v20)
    {
      Be81a395Bf0(v20);
    }

    if (error)
    {
      v14 = MEMORY[0x1E696ABC0];
      v21 = @"AAAbsintheError";
      v15 = [MEMORY[0x1E696AD98] numberWithInt:v12];
      v22[0] = v15;
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
      *error = [v14 aa_errorWithCode:-4403 userInfo:v16];
    }

    v17 = 0;
  }

  else
  {
    v18 = objc_alloc(MEMORY[0x1E695DEF0]);
    v17 = [v18 initWithBytesNoCopy:v20 length:0 deallocator:&__block_literal_global_54];
  }

  return v17;
}

- (void)TgBfoO2wtF5L:(uint64_t)a1 error:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"AAAbsintheContext.m" lineNumber:46 description:{@"Invalid parameter not satisfying: %@", @"certificateData"}];
}

- (void)TgBfoO2wtF5L:(uint64_t)a1 error:(uint64_t)a2 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"AAAbsintheContext.m" lineNumber:48 description:@"Proxy already initialized!"];
}

- (void)TgBfoO2wtF5L:(uint64_t)a1 error:.cold.3(uint64_t a1)
{
  v1 = [MEMORY[0x1E696AD98] numberWithInt:a1];
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = v1;
  OUTLINED_FUNCTION_0_8(&dword_1B6F6A000, v2, v3, "Failed to initialize context: %@", v4, v5, v6, v7, v8, DWORD2(v8));
}

- (void)R6XtwiyjL3q2:(uint64_t)a1 error:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"AAAbsintheContext.m" lineNumber:75 description:{@"Invalid parameter not satisfying: %@", @"sessionInfo"}];
}

- (void)R6XtwiyjL3q2:(uint64_t)a1 error:.cold.2(uint64_t a1)
{
  v1 = [MEMORY[0x1E696AD98] numberWithInt:a1];
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = v1;
  OUTLINED_FUNCTION_0_8(&dword_1B6F6A000, v2, v3, "Failed to establish key: %@", v4, v5, v6, v7, v8, DWORD2(v8));
}

- (void)cao1NI5PNJBn:(uint64_t)a1 error:.cold.1(uint64_t a1)
{
  v1 = [MEMORY[0x1E696AD98] numberWithInt:a1];
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = v1;
  OUTLINED_FUNCTION_0_8(&dword_1B6F6A000, v2, v3, "Failed to generate signature: %@", v4, v5, v6, v7, v8, DWORD2(v8));
}

@end