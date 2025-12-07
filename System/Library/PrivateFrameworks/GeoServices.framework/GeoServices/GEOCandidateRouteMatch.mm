@interface GEOCandidateRouteMatch
@end

@implementation GEOCandidateRouteMatch

uint64_t __44___GEOCandidateRouteMatch_comparatorByScore__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = 0.0;
  v7 = 0.0;
  if (v4)
  {
    v7 = v4[2];
  }

  if (v5)
  {
    v6 = v5[2];
  }

  if (v7 <= v6)
  {
    v9 = 0.0;
    v10 = 0.0;
    if (v4)
    {
      v10 = v4[2];
    }

    if (v5)
    {
      v9 = v5[2];
    }

    v8 = v10 < v9;
  }

  else
  {
    v8 = -1;
  }

  return v8;
}

@end