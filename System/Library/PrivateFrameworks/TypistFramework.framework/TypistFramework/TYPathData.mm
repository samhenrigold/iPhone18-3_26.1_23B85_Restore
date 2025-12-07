@interface TYPathData
- (TYPathData)initWithArray:(id)array width:(int64_t)width height:(int64_t)height isCursive:(BOOL)cursive;
@end

@implementation TYPathData

- (TYPathData)initWithArray:(id)array width:(int64_t)width height:(int64_t)height isCursive:(BOOL)cursive
{
  cursiveCopy = cursive;
  arrayCopy = array;
  v14.receiver = self;
  v14.super_class = TYPathData;
  v11 = [(TYPathData *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(TYPathData *)v11 setStrokeArray:arrayCopy];
    [(TYPathData *)v12 setWidth:width];
    [(TYPathData *)v12 setHeight:height];
    [(TYPathData *)v12 setIsCursive:cursiveCopy];
    [(TYPathData *)v12 setPerCharacterScale:1024.0 / height];
  }

  return v12;
}

@end