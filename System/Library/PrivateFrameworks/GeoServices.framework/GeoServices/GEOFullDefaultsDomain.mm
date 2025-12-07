@interface GEOFullDefaultsDomain
@end

@implementation GEOFullDefaultsDomain

void ___GEOFullDefaultsDomain_block_invoke()
{
  v0 = [GEOFilePaths pathFor:9];
  v3 = v0;
  if (GEODefaultsDomain_once[0] != -1)
  {
    dispatch_once(GEODefaultsDomain_once, &__block_literal_global_60);
    v0 = v3;
  }

  v1 = [v0 stringByAppendingPathComponent:GEODefaultsDomain_sDefaultsDomain];
  v2 = _GEOFullDefaultsDomain_sDefaultsDomain;
  _GEOFullDefaultsDomain_sDefaultsDomain = v1;
}

@end