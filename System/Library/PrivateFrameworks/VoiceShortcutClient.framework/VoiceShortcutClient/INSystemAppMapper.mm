@interface INSystemAppMapper
@end

@implementation INSystemAppMapper

uint64_t __44__INSystemAppMapper_Shortcuts__sharedMapper__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedMapper_mapper;
  sharedMapper_mapper = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end