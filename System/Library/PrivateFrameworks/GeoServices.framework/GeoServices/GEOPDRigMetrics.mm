@interface GEOPDRigMetrics
- (void)dealloc;
@end

@implementation GEOPDRigMetrics

- (void)dealloc
{
  PBRepeatedUInt32Clear();
  v3.receiver = self;
  v3.super_class = GEOPDRigMetrics;
  [(GEOPDRigMetrics *)&v3 dealloc];
}

@end