@interface CIRenderTask
+ (CIRenderTask)rendertaskWithInternalTask:(void *)task;
- (CIRenderInfo)waitUntilCompletedAndReturnError:(NSError *)error;
- (CIRenderTask)init;
- (CIRenderTask)initWithInternalTask:(void *)task;
- (id)_pdfDataRepresentation;
- (void)dealloc;
- (void)init;
@end

@implementation CIRenderTask

- (CIRenderTask)init
{
  v3 = ci_logger_api(self, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [(CIRenderTask *)v3 init:v4];
  }

  return 0;
}

- (CIRenderTask)initWithInternalTask:(void *)task
{
  v6.receiver = self;
  v6.super_class = CIRenderTask;
  v4 = [(CIRenderTask *)&v6 init];
  if (v4)
  {
    v4->_priv = CI::Object::ref(task);
  }

  return v4;
}

+ (CIRenderTask)rendertaskWithInternalTask:(void *)task
{
  v3 = [[self alloc] initWithInternalTask:task];

  return v3;
}

- (void)dealloc
{
  priv = self->_priv;
  if (priv)
  {
    CI::Object::unref(priv);
    self->_priv = 0;
  }

  v4.receiver = self;
  v4.super_class = CIRenderTask;
  [(CIRenderTask *)&v4 dealloc];
}

- (CIRenderInfo)waitUntilCompletedAndReturnError:(NSError *)error
{
  v22[2] = *MEMORY[0x1E69E9840];
  priv = self->_priv;
  if (priv[16])
  {
    if (error)
    {
      self = [MEMORY[0x1E696ABC0] errorWithDomain:@"CIRenderTaskWaitUntilCompleted" code:1 userInfo:&unk_1F1082618];
      *error = self;
    }

    v5 = ci_logger_api(self, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(CIRenderTask *)v5 waitUntilCompletedAndReturnError:v6, v7, v8, v9, v10, v11, v12];
    }

    return 0;
  }

  selfCopy = self;
  v14 = (*(*priv[3] + 280))(priv[3], a2);
  v15 = CI::RenderTask::waitUntilCompleted(priv, v14);
  if (v15)
  {
    v17 = v15;
    if (error)
    {
      v18 = *MEMORY[0x1E696AA08];
      v21[0] = @"CINonLocalizedDescriptionKey";
      v21[1] = v18;
      v22[0] = @"Unexpected error in the backing renderer.";
      v22[1] = v15;
      v15 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CIRenderTaskWaitUntilCompleted" code:1 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v22, v21, 2)}];
      *error = v15;
    }

    v19 = ci_logger_api(v15, v16);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [CIRenderTask waitUntilCompletedAndReturnError:v17];
    }

    return 0;
  }

  return [CIRenderInfo renderInfoWithCompletedTask:selfCopy];
}

- (id)_pdfDataRepresentation
{
  v2 = CI::RenderTask::quicklookDataForRenderTask(self->_priv);

  return v2;
}

- (void)init
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[CIRenderTask init]";
  OUTLINED_FUNCTION_2_1(&dword_19CC36000, self, a3, "%{public}s init is not a valid initializer for CIRenderTask", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)waitUntilCompletedAndReturnError:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[CIRenderTask waitUntilCompletedAndReturnError:]";
  OUTLINED_FUNCTION_2_1(&dword_19CC36000, a1, a3, "%{public}s Unexpected error in the backing renderer.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)waitUntilCompletedAndReturnError:(void *)a1 .cold.2(void *a1)
{
  *v7 = 136446466;
  *&v7[4] = "[CIRenderTask waitUntilCompletedAndReturnError:]";
  *&v7[12] = 2114;
  *&v7[14] = [a1 description];
  OUTLINED_FUNCTION_1_0(&dword_19CC36000, v1, v2, "%{public}s Unexpected error in the backing renderer: %{public}@.", v3, v4, v5, v6, *v7, *&v7[8], *&v7[16]);
}

@end