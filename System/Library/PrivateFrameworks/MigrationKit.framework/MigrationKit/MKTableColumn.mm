@interface MKTableColumn
- (void)adjustWidthToFit:(int)fit;
@end

@implementation MKTableColumn

- (void)adjustWidthToFit:(int)fit
{
  v3 = *&fit;
  if ([(MKTableColumn *)self width]< fit)
  {

    [(MKTableColumn *)self setWidth:v3];
  }
}

@end