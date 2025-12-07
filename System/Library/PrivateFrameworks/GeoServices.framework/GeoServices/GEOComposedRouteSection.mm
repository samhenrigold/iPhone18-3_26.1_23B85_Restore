@interface GEOComposedRouteSection
- ($90D036F581E326925CD61B5243353B00)bounds;
- (void)dealloc;
@end

@implementation GEOComposedRouteSection

- ($90D036F581E326925CD61B5243353B00)bounds
{
  v3 = *&self[1].var1.var0;
  *&retstr->var0.var0 = *&self[1].var0.var1;
  *&retstr->var0.var2 = v3;
  *&retstr->var1.var1 = *&self[1].var1.var2;
  return self;
}

- (void)dealloc
{
  free(self->_points);
  v3.receiver = self;
  v3.super_class = GEOComposedRouteSection;
  [(GEOComposedRouteSection *)&v3 dealloc];
}

@end