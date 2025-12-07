@interface HDROutputTransform
- (id)description;
- (void)dealloc;
@end

@implementation HDROutputTransform

- (void)dealloc
{
  p_t = &self->t;
  isa = self[5].super.super.isa;
  if (isa)
  {
  }

  v5 = *&p_t[2].image.color.tm.params.e;
  if (v5)
  {
  }

  v6 = *&p_t[4].image.var0;
  if (v6)
  {
  }

  v7.receiver = self;
  v7.super_class = HDROutputTransform;
  [(HDROutputTransform *)&v7 dealloc];
}

- (id)description
{
  p_t = &self->t;
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"HDROutputTransform{hasGainMap:%d, baseIsSDR:%d}\nImage Steps:", self->t.flags & 1, (self->t.flags >> 1) & 1];
  if ((p_t[1].flags & 1) == 0)
  {
    v4 = *&p_t->image.color.tm.params.e;
    v50.columns[0] = *&p_t->image.color.tm.params.a;
    v50.columns[1] = v4;
    v5 = *&p_t[1].flags;
    v50.columns[2] = *&p_t->image.var0;
    v51 = v5;
    v6 = HDRColorMatrixToString(&v50);
    v7 = [v3 stringByAppendingFormat:@"\n\t MAT: %@", v6];

    v3 = v7;
  }

  if (LODWORD(p_t[1].image.color.tm.params.a))
  {
    if ((LOBYTE(p_t[3].image.color.tm.params.e) & 1) == 0)
    {
      v8 = *&p_t[3].flags;
      v50.columns[0] = *&p_t[2].image.var0;
      v50.columns[1] = v8;
      v9 = *&p_t[3].image.color.tm.params.e;
      v50.columns[2] = *&p_t[3].image.color.tm.params.a;
      v51 = v9;
      v10 = HDRColorMatrixToString(&v50);
      v11 = [v3 stringByAppendingFormat:@"\n\t MAT: %@", v10];

      v3 = v11;
    }

    v12 = *&p_t[4].image.color.tm.params.e;
    v60 = *&p_t[4].image.color.tm.params.a;
    v61 = v12;
    v62 = *&p_t[4].image.var0;
    v13 = *&p_t[3].image.color.tm.params.e;
    v56 = *&p_t[3].image.color.tm.params.a;
    v57 = v13;
    v14 = *&p_t[4].flags;
    v58 = *&p_t[3].image.var0;
    v59 = v14;
    v15 = *&p_t[2].image.color.tm.params.e;
    v52 = *&p_t[2].image.color.tm.params.a;
    v53 = v15;
    v16 = *&p_t[3].flags;
    v54 = *&p_t[2].image.var0;
    v55 = v16;
    v17 = *&p_t[1].image.color.tm.params.e;
    v50.columns[0] = *&p_t[1].image.color.tm.params.a;
    v50.columns[1] = v17;
    v18 = *&p_t[2].flags;
    v50.columns[2] = *&p_t[1].image.var0;
    v51 = v18;
    v19 = HDRToneMappingToString(&v50);
    v20 = [v3 stringByAppendingFormat:@"\n\t  TM: %@", v19];

    if (*&p_t[3].image.var0)
    {
      v21 = *&p_t[4].image.color.tm.params.e;
      v50.columns[2] = *&p_t[4].image.color.tm.params.a;
      v51 = v21;
      v52 = *&p_t[4].image.var0;
      v22 = *&p_t[4].flags;
      v50.columns[0] = *&p_t[3].image.var0;
      v50.columns[1] = v22;
      v23 = HDRColorTRCToString(&v50);
      v3 = [v20 stringByAppendingFormat:@"\n\t TRC:%@", v23];
    }

    else
    {
      v3 = v20;
    }
  }

  if (p_t[5].flags)
  {
    v24 = *&p_t[5].image.var0;
    v50.columns[2] = *&p_t[5].image.color.tm.params.e;
    v51 = v24;
    v52 = *&p_t[6].flags;
    v25 = *&p_t[5].image.color.tm.params.a;
    v50.columns[0] = *&p_t[5].flags;
    v50.columns[1] = v25;
    v26 = HDRColorTRCToString(&v50);
    v27 = [v3 stringByAppendingFormat:@"\n\t TRC: %@", v26];

    v3 = v27;
  }

  v28 = *&p_t[7].image.color.tm.params.e;
  v52 = *&p_t[7].image.color.tm.params.a;
  v53 = v28;
  v54 = *&p_t[7].image.var0;
  v29 = *&p_t[6].image.color.tm.params.e;
  v50.columns[0] = *&p_t[6].image.color.tm.params.a;
  v50.columns[1] = v29;
  v30 = *&p_t[7].flags;
  v50.columns[2] = *&p_t[6].image.var0;
  v51 = v30;
  v31 = HDRPixelTransformOutDescription(&v50);
  v32 = [v3 stringByAppendingFormat:@"\n\t OUT: %@", v31];

  if (p_t->flags)
  {
    v33 = [v32 stringByAppendingString:@"\nGainMap Steps:"];

    if (LOBYTE(p_t[10].image.color.tm.params.e))
    {
      v34 = v33;
    }

    else
    {
      v35 = *&p_t[10].flags;
      v50.columns[0] = *&p_t[9].image.var0;
      v50.columns[1] = v35;
      v36 = *&p_t[10].image.color.tm.params.e;
      v50.columns[2] = *&p_t[10].image.color.tm.params.a;
      v51 = v36;
      v37 = HDRColorMatrixToString(&v50);
      v34 = [v33 stringByAppendingFormat:@"\n\t MAT: %@", v37];
    }

    if (LOBYTE(p_t[11].image.color.tm.params.a) == 1)
    {
      v38 = [v34 stringByAppendingFormat:@"\n\tLUMA: [r=%g, g=%g, b=%g, max=%g]", COERCE_FLOAT(*&p_t[11].flags), COERCE_FLOAT(HIDWORD(*&p_t[11].flags)), COERCE_FLOAT(*&p_t[11].image.color.rgb.identity), COERCE_FLOAT(HIDWORD(*&p_t[11].flags))];

      v34 = v38;
    }

    v39 = [v34 stringByAppendingFormat:@"\n\tCLIP: [x=%g, y=%g]", COERCE_FLOAT(*&p_t[10].image.var0), COERCE_FLOAT(HIDWORD(*&p_t[10].image.var0))];

    v40 = *&p_t[9].image.color.tm.params.a;
    v52 = *&p_t[9].flags;
    v53 = v40;
    v54 = *&p_t[9].image.color.tm.params.e;
    v41 = *&p_t[8].image.color.tm.params.a;
    v50.columns[0] = *&p_t[8].flags;
    v50.columns[1] = v41;
    v42 = *&p_t[8].image.var0;
    v50.columns[2] = *&p_t[8].image.color.tm.params.e;
    v51 = v42;
    v43 = HDRGainMappingToString(&v50);
    v44 = [v39 stringByAppendingFormat:@"\n\tGAIN: %@", v43];

    v45 = *&p_t[12].image.var0;
    v52 = *&p_t[12].image.color.tm.params.e;
    v53 = v45;
    v54 = *&p_t[13].flags;
    v46 = *&p_t[11].image.var0;
    v50.columns[0] = *&p_t[11].image.color.tm.params.e;
    v50.columns[1] = v46;
    v47 = *&p_t[12].image.color.tm.params.a;
    v50.columns[2] = *&p_t[12].flags;
    v51 = v47;
    v48 = HDRPixelTransformOutDescription(&v50);
    v32 = [v44 stringByAppendingFormat:@"\n\t OUT: %@\n", v48];
  }

  return v32;
}

@end