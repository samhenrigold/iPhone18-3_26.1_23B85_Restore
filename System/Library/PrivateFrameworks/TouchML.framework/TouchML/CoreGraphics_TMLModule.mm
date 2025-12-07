@interface CoreGraphics_TMLModule
+ (void)initializeJSContext:(id)context;
@end

@implementation CoreGraphics_TMLModule

+ (void)initializeJSContext:(id)context
{
  contextCopy = context;
  [TMLVector initializeJSContext:contextCopy];
  [TMLAffineTransform initializeJSContext:contextCopy];
  [self defineConstants:contextCopy];
  [contextCopy setObject:&unk_287F2BE90 forKeyedSubscript:@"CGPathCreateCopyByStrokingPath"];
}

@end