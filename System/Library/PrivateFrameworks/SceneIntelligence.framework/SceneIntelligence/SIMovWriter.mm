@interface SIMovWriter
- (id)initWriterWithVideoURL:(id)l frameSize:(CGSize)size;
- (void)dealloc;
- (void)finishRecording;
- (void)startRecording;
- (void)writeFrame:(__CVBuffer *)frame andTime:(id *)time;
@end

@implementation SIMovWriter

- (id)initWriterWithVideoURL:(id)l frameSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v38 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v31.receiver = self;
  v31.super_class = SIMovWriter;
  v8 = [(SIMovWriter *)&v31 init];
  if (!v8)
  {
LABEL_6:
    v27 = v8;
    goto LABEL_10;
  }

  v9 = objc_alloc(MEMORY[0x277CE6460]);
  v10 = *MEMORY[0x277CE5DA8];
  v30 = 0;
  v11 = [v9 initWithURL:lCopy fileType:v10 error:&v30];
  v12 = v30;
  writer = v8->_writer;
  v8->_writer = v11;

  if (v8->_writer)
  {
    v15 = MEMORY[0x277CBEAC0];
    v16 = *MEMORY[0x277CE62F8];
    v17 = *MEMORY[0x277CE62C8];
    v18 = [MEMORY[0x277CCABB0] numberWithInt:width];
    v19 = *MEMORY[0x277CE63C0];
    v20 = [MEMORY[0x277CCABB0] numberWithInt:height];
    v21 = [v15 dictionaryWithObjectsAndKeys:{v16, v17, v18, v19, v20, *MEMORY[0x277CE6360], 0}];

    v22 = [MEMORY[0x277CE6468] assetWriterInputWithMediaType:*MEMORY[0x277CE5EA8] outputSettings:v21];
    writerInput = v8->_writerInput;
    v8->_writerInput = v22;

    v24 = [MEMORY[0x277CE6478] assetWriterInputPixelBufferAdaptorWithAssetWriterInput:v8->_writerInput sourcePixelBufferAttributes:0];
    inputAdaptor = v8->_inputAdaptor;
    v8->_inputAdaptor = v24;

    v26 = __SceneIntelligenceLogSharedInstance([(SIMovWriter *)v8 startRecording]);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136380931;
      v33 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIMovWriter.m";
      v34 = 1025;
      v35 = 49;
      _os_log_impl(&dword_21DE0D000, v26, OS_LOG_TYPE_DEFAULT, " %{private}s:%{private}d *** start recording ***", buf, 0x12u);
    }

    goto LABEL_6;
  }

  v28 = __SceneIntelligenceLogSharedInstance(v14);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136381187;
    v33 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIMovWriter.m";
    v34 = 1025;
    v35 = 35;
    v36 = 2113;
    v37 = v12;
    _os_log_impl(&dword_21DE0D000, v28, OS_LOG_TYPE_DEFAULT, " %{private}s:%{private}d *** Couldn't instantiate a AVAssetWriter with error %{private}@ ***", buf, 0x1Cu);
  }

  v27 = 0;
LABEL_10:

  return v27;
}

- (void)writeFrame:(__CVBuffer *)frame andTime:(id *)time
{
  v21 = *MEMORY[0x277D85DE8];
  if ([(AVAssetWriterInput *)self->_writerInput isReadyForMoreMediaData])
  {
    inputAdaptor = self->_inputAdaptor;
    *v18 = *&time->var0;
    *&v18[16] = time->var3;
    v8 = [(AVAssetWriterInputPixelBufferAdaptor *)inputAdaptor appendPixelBuffer:frame withPresentationTime:v18];
    if ((v8 & 1) == 0)
    {
      v9 = __SceneIntelligenceLogSharedInstance(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        error = [(AVAssetWriter *)self->_writer error];
        code = [error code];
        error2 = [(AVAssetWriter *)self->_writer error];
        localizedDescription = [error2 localizedDescription];
        uTF8String = [localizedDescription UTF8String];
        *v18 = 136381443;
        *&v18[4] = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIMovWriter.m";
        *&v18[12] = 1025;
        *&v18[14] = 60;
        *&v18[18] = 2048;
        *&v18[20] = code;
        v19 = 2081;
        v20 = uTF8String;
        _os_log_impl(&dword_21DE0D000, v9, OS_LOG_TYPE_DEFAULT, " %{private}s:%{private}d *** assetWriter.error %ld %{private}s \n ***", v18, 0x26u);
      }

      v16 = __SceneIntelligenceLogSharedInstance(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        status = [(AVAssetWriter *)self->_writer status];
        *v18 = 136381187;
        *&v18[4] = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIMovWriter.m";
        *&v18[12] = 1025;
        *&v18[14] = 61;
        *&v18[18] = 1024;
        *&v18[20] = status;
        _os_log_impl(&dword_21DE0D000, v16, OS_LOG_TYPE_DEFAULT, " %{private}s:%{private}d *** assetWriter.status = %u\n ***", v18, 0x18u);
      }
    }
  }
}

- (void)dealloc
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = __SceneIntelligenceLogSharedInstance([(SIMovWriter *)self finishRecording]);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136380931;
    v6 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIMovWriter.m";
    v7 = 1025;
    v8 = 68;
    _os_log_impl(&dword_21DE0D000, v3, OS_LOG_TYPE_DEFAULT, " %{private}s:%{private}d *** finish recording ***", buf, 0x12u);
  }

  v4.receiver = self;
  v4.super_class = SIMovWriter;
  [(SIMovWriter *)&v4 dealloc];
}

- (void)startRecording
{
  [(AVAssetWriter *)self->_writer addInput:self->_writerInput];
  [(AVAssetWriter *)self->_writer startWriting];
  writer = self->_writer;
  v4 = *MEMORY[0x277CC08F0];
  v5 = *(MEMORY[0x277CC08F0] + 16);
  [(AVAssetWriter *)writer startSessionAtSourceTime:&v4];
}

- (void)finishRecording
{
  [(AVAssetWriterInput *)self->_writerInput markAsFinished];
  writer = self->_writer;

  [(AVAssetWriter *)writer finishWritingWithCompletionHandler:&__block_literal_global_0];
}

@end