@interface SUICMagicCurve
@end

@implementation SUICMagicCurve

uint64_t ___SUICMagicCurve_block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E69793D0]);
  LODWORD(v1) = 1043928040;
  LODWORD(v2) = 1058272560;
  LODWORD(v3) = 1063980840;
  v4 = [v0 initWithControlPoints:v1 :0.0 :v2 :v3];
  v5 = _SUICMagicCurve_curve;
  _SUICMagicCurve_curve = v4;

  return MEMORY[0x1EEE66BB8](v4, v5);
}

@end