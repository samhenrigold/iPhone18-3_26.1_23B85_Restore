@interface ASDRingBufferOutputStream
- (ASDRingBufferOutputStream)initWithDirection:(unsigned int)direction withPlugin:(id)plugin;
- (ASDRingBufferOutputStream)initWithRingBuffer:(id)buffer withPlugin:(id)plugin;
- (id)writeMixBlock;
- (void)setPhysicalFormat:(id)format;
- (void)startStream;
- (void)stopStream;
@end

@implementation ASDRingBufferOutputStream

- (ASDRingBufferOutputStream)initWithDirection:(unsigned int)direction withPlugin:(id)plugin
{
  pluginCopy = plugin;
  v5 = [MEMORY[0x277CBEAD8] exceptionWithName:@"UnavailableMethod" reason:@"Method is unavailable" userInfo:0];
  objc_exception_throw(v5);
}

- (ASDRingBufferOutputStream)initWithRingBuffer:(id)buffer withPlugin:(id)plugin
{
  bufferCopy = buffer;
  v11.receiver = self;
  v11.super_class = ASDRingBufferOutputStream;
  v8 = [(ASDStream *)&v11 initWithDirection:1869968496 withPlugin:plugin];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_ringBuffer, buffer);
  }

  return v9;
}

- (void)startStream
{
  if (!self->_bufferList.__ptr_)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"ASDRingBufferStream.mm" lineNumber:47 description:@"Format must be set before starting stream"];
  }

  v6.receiver = self;
  v6.super_class = ASDRingBufferOutputStream;
  [(ASDStream *)&v6 startStream];
  ringBuffer = [(ASDRingBufferOutputStream *)self ringBuffer];
  [ringBuffer startWriter];
}

- (void)stopStream
{
  v4.receiver = self;
  v4.super_class = ASDRingBufferOutputStream;
  [(ASDStream *)&v4 stopStream];
  ringBuffer = [(ASDRingBufferOutputStream *)self ringBuffer];
  [ringBuffer stopWriter];
}

- (void)setPhysicalFormat:(id)format
{
  formatCopy = format;
  v5.receiver = self;
  v5.super_class = ASDRingBufferOutputStream;
  [(ASDStream *)&v5 setPhysicalFormat:formatCopy];
  if (formatCopy)
  {
    objc_msgSend_audioStreamBasicDescription(formatCopy);
  }

  operator new();
}

- (id)writeMixBlock
{
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x3032000000;
  v7[3] = __Block_byref_object_copy__6;
  v7[4] = __Block_byref_object_dispose__6;
  writeBlock = [(ASDRingBuffer *)self->_ringBuffer writeBlock];
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x2020000000;
  v6[3] = &self->_bufferList;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __42__ASDRingBufferOutputStream_writeMixBlock__block_invoke;
  v5[3] = &unk_278CE42A8;
  v5[4] = v6;
  v5[5] = v7;
  v3 = MEMORY[0x245CEBEA0](v5);
  _Block_object_dispose(v6, 8);
  _Block_object_dispose(v7, 8);

  return v3;
}

uint64_t __42__ASDRingBufferOutputStream_writeMixBlock__block_invoke(uint64_t a1, int a2, int a3, void *a4)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = 2003329396;
  v6 = **(*(*(a1 + 32) + 8) + 24);
  if (v6)
  {
    ASDBufferList::setBufferListFromData(v6, a4, a2);
    v7 = (*(*(*(*(a1 + 40) + 8) + 40) + 16))();
    if ((v7 + 2) > 6)
    {
      if (CALog_DefaultScope)
      {
        v9 = *CALog_DefaultScope;
      }

      else
      {
        v9 = MEMORY[0x277D86220];
        v11 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v13 = 136315650;
        v14 = LogFilenameOnly("/Library/Caches/com.apple.xbs/Sources/AudioServerDriver/AudioServerDriver/DSP/ASDRingBufferStream.mm");
        v15 = 1024;
        v16 = 104;
        v17 = 2080;
        v18 = "[ASDRingBufferOutputStream writeMixBlock]_block_invoke";
        _os_log_impl(&dword_2415D8000, v9, OS_LOG_TYPE_ERROR, "%s:%d:%s: Unknown audio ring buffer error", &v13, 0x1Cu);
      }

      goto LABEL_17;
    }

    v8 = 1 << (v7 + 2);
    if ((v8 & 0x1B) == 0)
    {
      if ((v8 & 0x60) != 0)
      {
        if (CALog_DefaultScope)
        {
          v9 = *CALog_DefaultScope;
        }

        else
        {
          v9 = MEMORY[0x277D86220];
          v10 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v13 = 136315906;
          v14 = LogFilenameOnly("/Library/Caches/com.apple.xbs/Sources/AudioServerDriver/AudioServerDriver/DSP/ASDRingBufferStream.mm");
          v15 = 1024;
          v16 = 100;
          v17 = 2080;
          v18 = "[ASDRingBufferOutputStream writeMixBlock]_block_invoke";
          v19 = 1024;
          v20 = v7;
          _os_log_impl(&dword_2415D8000, v9, OS_LOG_TYPE_ERROR, "%s:%d:%s: Audio ring buffer error %d", &v13, 0x22u);
        }

LABEL_17:

        return v5;
      }

      return 0;
    }
  }

  return v5;
}

@end