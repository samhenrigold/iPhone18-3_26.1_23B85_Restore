@interface RDVAVisionKWSSpotter
- (RDVAVisionKWSSpotter)initWithDelegate:(id)delegate;
- (void)addAudioSamples:(void *)samples count:(int)count;
- (void)start:(id)start saveRuntimeAudio:(BOOL)audio;
@end

@implementation RDVAVisionKWSSpotter

- (RDVAVisionKWSSpotter)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v9.receiver = self;
  v9.super_class = RDVAVisionKWSSpotter;
  v5 = [(RDVAVisionKWSSpotter *)&v9 init];
  if (v5)
  {
    v6 = [[_TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDVASwiftVisionKWSSpotter alloc] initWithDelegate:delegateCopy];
    swiftVisionKWSSpotter = v5->_swiftVisionKWSSpotter;
    v5->_swiftVisionKWSSpotter = v6;
  }

  return v5;
}

- (void)start:(id)start saveRuntimeAudio:(BOOL)audio
{
  audioCopy = audio;
  startCopy = start;
  v7 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(startCopy, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = startCopy;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v15 + 1) + 8 * v12) componentsSeparatedByString:{@" ", v15}];
        v14 = [v13 objectAtIndexedSubscript:0];

        [v7 addObject:v14];
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  [(RDVASwiftVisionKWSSpotter *)self->_swiftVisionKWSSpotter startWithUsedKeywords:v7 saveRuntimeAudio:audioCopy];
}

- (void)addAudioSamples:(void *)samples count:(int)count
{
  countCopy = count;
  v11 = [[NSMutableArray alloc] initWithCapacity:count];
  if (count >= 1)
  {
    countCopy2 = count;
    do
    {
      v9 = *samples;
      samples = samples + 2;
      v10 = [NSNumber numberWithInt:v9];
      [v11 addObject:v10];

      --countCopy2;
    }

    while (countCopy2);
  }

  [(RDVASwiftVisionKWSSpotter *)self->_swiftVisionKWSSpotter addAudioSamplesWithAudio:v11 count:countCopy];
}

@end