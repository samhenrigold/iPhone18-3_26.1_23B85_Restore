@interface AVAudioNode
- (void)safePerformInstallTapOnBus:(unint64_t)bus bufferSize:(unsigned int)size format:(id)format error:(id *)error block:(id)block;
@end

@implementation AVAudioNode

- (void)safePerformInstallTapOnBus:(unint64_t)bus bufferSize:(unsigned int)size format:(id)format error:(id *)error block:(id)block
{
  v8 = *&size;
  formatCopy = format;
  blockCopy = block;
  [(AVAudioNode *)self installTapOnBus:bus bufferSize:v8 format:formatCopy block:blockCopy];
}

@end