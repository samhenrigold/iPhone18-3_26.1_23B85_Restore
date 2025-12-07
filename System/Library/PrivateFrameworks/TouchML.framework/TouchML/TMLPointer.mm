@interface TMLPointer
+ (id)pointerWithReadBlock:(id)block writeBlock:(id)writeBlock;
@end

@implementation TMLPointer

+ (id)pointerWithReadBlock:(id)block writeBlock:(id)writeBlock
{
  writeBlockCopy = writeBlock;
  blockCopy = block;
  v7 = objc_alloc_init(TMLPointer);
  [(TMLPointer *)v7 setReadBlock:blockCopy];

  [(TMLPointer *)v7 setWriteBlock:writeBlockCopy];

  return v7;
}

@end