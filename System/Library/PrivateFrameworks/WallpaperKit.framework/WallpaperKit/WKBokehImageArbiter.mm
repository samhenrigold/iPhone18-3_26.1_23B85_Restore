@interface WKBokehImageArbiter
+ (id)imageForZ:(double)z;
@end

@implementation WKBokehImageArbiter

+ (id)imageForZ:(double)z
{
  v2 = objc_opt_self();
  v3 = (z + 1.5) / 1.2;
  if (v3 < 0.0)
  {
    v3 = 0.0;
  }

  v4 = MEMORY[0x1E69DCAB8];
  v5 = imageTable[blurTable[vcvtad_u64_f64((1.0 - fmin(v3, 1.0)) * 9.0)]];
  v6 = WKBundleForWallpaperKitFramework(v2);
  v7 = [v4 imageNamed:v5 inBundle:v6 compatibleWithTraitCollection:0];

  return v7;
}

@end