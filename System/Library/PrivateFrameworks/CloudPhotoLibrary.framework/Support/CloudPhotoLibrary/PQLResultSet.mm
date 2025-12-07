@interface PQLResultSet
- (id)cplChangeAtIndex:(int)index;
@end

@implementation PQLResultSet

- (id)cplChangeAtIndex:(int)index
{
  v3 = *&index;
  v5 = objc_autoreleasePoolPush();
  v6 = [(PQLResultSet *)self dataAtIndex:v3];
  if (v6)
  {
    v7 = [CPLArchiver unarchiveObjectWithData:v6 ofClass:objc_opt_class()];
  }

  else
  {
    v7 = 0;
  }

  objc_autoreleasePoolPop(v5);

  return v7;
}

@end