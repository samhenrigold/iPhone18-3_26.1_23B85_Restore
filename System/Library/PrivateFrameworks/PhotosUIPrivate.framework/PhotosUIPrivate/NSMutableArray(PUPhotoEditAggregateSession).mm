@interface NSMutableArray(PUPhotoEditAggregateSession)
- (void)pu_addCFString:()PUPhotoEditAggregateSession;
- (void)pu_valuesChanged:()PUPhotoEditAggregateSession forKey:;
@end

@implementation NSMutableArray(PUPhotoEditAggregateSession)

- (void)pu_valuesChanged:()PUPhotoEditAggregateSession forKey:
{
  if (a3)
  {
    return [result pu_addCFString:a4];
  }

  return result;
}

- (void)pu_addCFString:()PUPhotoEditAggregateSession
{
  if (a3)
  {
    return [result addObject:?];
  }

  return result;
}

@end