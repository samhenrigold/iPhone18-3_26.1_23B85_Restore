@interface PSWriter
- (PSWriter)initWithName:(id)name withOutput:(id)output;
- (id)description;
- (id)initCameraStreamWriterWithName:(id)name withOutput:(id)output;
- (void)dealloc;
- (void)setImageBufferPool:(id)pool;
- (void)setMetadataBufferPool:(id)pool;
- (void)setPearlBufferPools:(id)pools;
@end

@implementation PSWriter

- (PSWriter)initWithName:(id)name withOutput:(id)output
{
  nameCopy = name;
  outputCopy = output;
  v18.receiver = self;
  v18.super_class = PSWriter;
  v9 = [(PSWriter *)&v18 init];
  v10 = v9;
  if (!v9)
  {
    goto LABEL_4;
  }

  objc_storeStrong(&v9->_name, name);
  objc_storeStrong(&v10->_output, output);
  v11 = malloc_type_calloc(1uLL, 0x78uLL, 0x10A0040C8A65D96uLL);
  v10->_context = v11;
  if (v11)
  {
    atomic_store(9u, v11 + 20);
LABEL_4:

    return v10;
  }

  v13 = [PSWriter initWithName:? withOutput:?];
  return [(PSWriter *)v13 initCameraStreamWriterWithName:v14 withOutput:v15, v16];
}

- (id)initCameraStreamWriterWithName:(id)name withOutput:(id)output
{
  outputCopy = output;
  nameCopy = name;
  v8 = [(PSWriter *)self initWithName:nameCopy withOutput:outputCopy];
  v9 = [[PSSourceTask alloc] initWithName:nameCopy];

  sourceTask = v8->_sourceTask;
  v8->_sourceTask = v9;

  [(PSSourceTask *)v8->_sourceTask addOutput:outputCopy];
  return v8;
}

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] stringWithFormat:@"...<%@: %@>", objc_opt_class(), self->_name];
  [v3 appendFormat:@"\n%@", self->_output];

  return v3;
}

- (void)setImageBufferPool:(id)pool
{
  poolCopy = pool;
  objc_storeStrong(&self->_imageBufferPool, pool);
  sourceTask = self->_sourceTask;
  if (sourceTask)
  {
    [(PSSourceTask *)sourceTask setBufferPool:poolCopy];
  }
}

- (void)setPearlBufferPools:(id)pools
{
  poolsCopy = pools;
  objc_storeStrong(&self->_pearlBufferPoolList, pools);
  sourceTask = self->_sourceTask;
  if (sourceTask)
  {
    [(PSSourceTask *)sourceTask setPearlBufferPools:poolsCopy];
  }
}

- (void)setMetadataBufferPool:(id)pool
{
  poolCopy = pool;
  objc_storeStrong(&self->_metadataBufferPool, pool);
  sourceTask = self->_sourceTask;
  if (sourceTask)
  {
    [(PSSourceTask *)sourceTask setMetadataBufferPool:poolCopy];
  }
}

- (void)dealloc
{
  free(self->_context);
  v3.receiver = self;
  v3.super_class = PSWriter;
  [(PSWriter *)&v3 dealloc];
}

- (uint64_t)initWithName:(char *)a1 withOutput:.cold.1(char **a1)
{
  v14 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  v1 = asprintf(a1, "%s: OOM!", "[PSWriter initWithName:withOutput:]");
  v2 = __PSGraphLogSharedInstance(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315650;
    v9 = "[PSWriter initWithName:withOutput:]";
    v10 = 1024;
    v11 = 52;
    v12 = 2080;
    v13 = "[PSWriter initWithName:withOutput:]";
    _os_log_impl(&dword_25EC85000, v2, OS_LOG_TYPE_FAULT, "%s:%d %s: OOM!", buf, 0x1Cu);
  }

  v3 = OSLogFlushBuffers();
  if (v3)
  {
    v4 = v3;
    v5 = __PSGraphLogSharedInstance(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v9 = "[PSWriter initWithName:withOutput:]";
      v10 = 1024;
      v11 = v4;
      _os_log_impl(&dword_25EC85000, v5, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v6 = abort_with_reason();
  return ps_resource::get_databuffer_ptr(v6);
}

@end