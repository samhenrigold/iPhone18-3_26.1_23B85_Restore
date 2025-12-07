@interface AlchemistWrapper
+ (BOOL)generateAlchemistResultWithSourceURL:(id)l outputURL:(id)rL outputColorSpace:(CGColorSpace *)space error:(id *)error;
@end

@implementation AlchemistWrapper

+ (BOOL)generateAlchemistResultWithSourceURL:(id)l outputURL:(id)rL outputColorSpace:(CGColorSpace *)space error:(id *)error
{
  v7 = sub_100021780();
  sub_100007380();
  v9 = v8;
  v11 = __chkstk_darwin(v10);
  v13 = &v19[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v15 = &v19[-v14];
  sub_100021760();
  sub_100021760();
  spaceCopy = space;
  static AlchemistWrapper.generateAlchemistResult(sourceURL:outputURL:outputColorSpace:)(v15, v13, space);

  v17 = *(v9 + 8);
  v17(v13, v7);
  v17(v15, v7);
  return 1;
}

@end