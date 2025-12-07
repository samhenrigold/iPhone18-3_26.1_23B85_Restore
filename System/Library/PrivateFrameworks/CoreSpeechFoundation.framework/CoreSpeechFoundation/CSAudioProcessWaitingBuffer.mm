@interface CSAudioProcessWaitingBuffer
- (CSAudioProcessWaitingBuffer)initWithUUID:(id)d waitingBufferMaxLengthInSec:(float)sec;
- (void)addAudioChunk:(id)chunk;
- (void)addAudioChunk:(id)chunk withBufferedTimestamp:(id)timestamp;
- (void)dealloc;
@end

@implementation CSAudioProcessWaitingBuffer

- (void)addAudioChunk:(id)chunk withBufferedTimestamp:(id)timestamp
{
  chunkCopy = chunk;
  timestampCopy = timestamp;
  if (chunkCopy)
  {
    bufferedSampleCount = self->_bufferedSampleCount;
    if ([chunkCopy numSamples] + bufferedSampleCount <= self->_maxWaitingBufferSizeInSampleCount)
    {
      buffer = self->_buffer;
      v9 = [[CSAudioChunkWithBufferedTimestamp alloc] initWithAudioChunk:chunkCopy bufferedTimestamp:timestampCopy];
      [(NSMutableArray *)buffer addObject:v9];

      self->_bufferedSampleCount += [chunkCopy numSamples];
    }
  }
}

- (void)addAudioChunk:(id)chunk
{
  v4 = MEMORY[0x1E696AD98];
  chunkCopy = chunk;
  v6 = [[v4 alloc] initWithUnsignedLongLong:0];
  [(CSAudioProcessWaitingBuffer *)self addAudioChunk:chunkCopy withBufferedTimestamp:v6];
}

- (void)dealloc
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v6 = "[CSAudioProcessWaitingBuffer dealloc]";
    _os_log_impl(&dword_1DDA4B000, v3, OS_LOG_TYPE_DEFAULT, "%s CSAudioProcessWaitingBuffer deallocated", buf, 0xCu);
  }

  v4.receiver = self;
  v4.super_class = CSAudioProcessWaitingBuffer;
  [(CSAudioProcessWaitingBuffer *)&v4 dealloc];
}

- (CSAudioProcessWaitingBuffer)initWithUUID:(id)d waitingBufferMaxLengthInSec:(float)sec
{
  v19 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v14.receiver = self;
  v14.super_class = CSAudioProcessWaitingBuffer;
  v8 = [(CSAudioProcessWaitingBuffer *)&v14 init];
  if (v8)
  {
    array = [MEMORY[0x1E695DF70] array];
    buffer = v8->_buffer;
    v8->_buffer = array;

    objc_storeStrong(&v8->_uuid, d);
    +[CSConfig inputRecordingSampleRate];
    v8->_maxWaitingBufferSizeInSampleCount = (v11 * sec);
    v8->_bufferedSampleCount = 0;
    v12 = CSLogCategoryAudio;
    if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v16 = "[CSAudioProcessWaitingBuffer initWithUUID:waitingBufferMaxLengthInSec:]";
      v17 = 2114;
      v18 = dCopy;
      _os_log_impl(&dword_1DDA4B000, v12, OS_LOG_TYPE_DEFAULT, "%s uuid = %{public}@", buf, 0x16u);
    }
  }

  return v8;
}

@end