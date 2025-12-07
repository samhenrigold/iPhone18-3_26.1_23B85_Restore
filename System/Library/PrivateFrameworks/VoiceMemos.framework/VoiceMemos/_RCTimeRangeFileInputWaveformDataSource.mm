@interface _RCTimeRangeFileInputWaveformDataSource
- (void)saveGeneratedWaveformIfNecessary;
@end

@implementation _RCTimeRangeFileInputWaveformDataSource

- (void)saveGeneratedWaveformIfNecessary
{
  if (!self->_isDecomposedFragment || (-[RCWaveformDataSource generatedWaveformOutputURL](self, "generatedWaveformOutputURL"), v3 = objc_claimAutoreleasedReturnValue(), [MEMORY[0x277CCAA00] defaultManager], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "path"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v4, "fileExistsAtPath:", v5), v5, v4, v3, (v6 & 1) == 0))
  {
    v7.receiver = self;
    v7.super_class = _RCTimeRangeFileInputWaveformDataSource;
    [(RCFileInputWaveformDataSource *)&v7 saveGeneratedWaveformIfNecessary];
  }
}

@end