@interface _MTLPipelineCache
- (_MTLPipelineCache)initWithFilePath:(id)path readOnly:(BOOL)only deviceInfo:(const MTLTargetDeviceArch *)info;
- (void)dealloc;
@end

@implementation _MTLPipelineCache

- (void)dealloc
{
  compilerCache = self->_compilerCache;
  if (compilerCache)
  {
    (*(compilerCache->var0 + 1))(compilerCache, a2);
    self->_compilerCache = 0;
  }

  v4.receiver = self;
  v4.super_class = _MTLPipelineCache;
  [(_MTLPipelineCache *)&v4 dealloc];
}

- (_MTLPipelineCache)initWithFilePath:(id)path readOnly:(BOOL)only deviceInfo:(const MTLTargetDeviceArch *)info
{
  v13.receiver = self;
  v13.super_class = _MTLPipelineCache;
  v8 = [(_MTLPipelineCache *)&v13 init];
  v8->_compilerCache = 0;
  v9 = !only;
  v8->_writable = v9;
  v8->_disableRunTimeCompilation = 0;
  if (path)
  {
    var1 = info->var1;
    LODWORD(v12) = 1;
    HIDWORD(v12) = var1;
    MTLCompilerCache::createPipelineDataCache(v9, [path UTF8String], &v12);
  }

  return v8;
}

@end