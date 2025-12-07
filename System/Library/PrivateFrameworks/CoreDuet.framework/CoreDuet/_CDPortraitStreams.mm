@interface _CDPortraitStreams
+ (id)allStreams;
@end

@implementation _CDPortraitStreams

+ (id)allStreams
{
  v7[2] = *MEMORY[0x1E69E9840];
  topicStream = [self topicStream];
  v7[0] = topicStream;
  entityStream = [self entityStream];
  v7[1] = entityStream;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];

  return v5;
}

@end