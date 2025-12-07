@interface CIReedSolomon
- ($B716781559FB179C01A6A83DB44EE660)addOrSubtractPoly:(id *)poly with:(id *)with;
- ($B716781559FB179C01A6A83DB44EE660)buildGenerator:(int)generator;
- ($B716781559FB179C01A6A83DB44EE660)copyPoly:(id *)poly;
- ($B716781559FB179C01A6A83DB44EE660)createMonomial:(int)monomial coefficient:(int)coefficient;
- ($B716781559FB179C01A6A83DB44EE660)divide:(id *)divide by:(id *)by;
- ($B716781559FB179C01A6A83DB44EE660)multiplyByMonomial:(id *)monomial degree:(int)degree coefficient:(int)coefficient;
- ($B716781559FB179C01A6A83DB44EE660)multiplyPoly:(id *)poly with:(id *)with;
- (BOOL)encode:(int *)encode length:(int)length bytes:(int)bytes;
- (BOOL)fillPoly:(id *)poly coefficients:(int *)coefficients length:(int)length;
- (id)initReedSolomon;
- (int)inverse:(int)inverse;
- (int)multiply:(int)multiply with:(int)with;
- (int)polyCoefficient:(id *)coefficient degree:(int)degree;
- (void)clearPoly:(id *)poly;
- (void)dealloc;
@end

@implementation CIReedSolomon

- (id)initReedSolomon
{
  v12.receiver = self;
  v12.super_class = CIReedSolomon;
  v2 = [(CIReedSolomon *)&v12 init];
  v3 = v2;
  if (!v2)
  {
    goto LABEL_12;
  }

  v4 = 1;
  for (i = 8; i != 1032; i += 4)
  {
    *(&v2->super.isa + i) = v4;
    v6 = 2 * v4;
    v4 = (2 * v4) ^ 0x11D;
    if (v6 <= 255)
    {
      v4 = v6;
    }
  }

  for (j = 0; j != 255; ++j)
  {
    v2->_logTable[v2->_expTable[j]] = j;
  }

  *&v2->_cachedGeneratorNum = 0xA00000001;
  v8 = malloc_type_calloc(0xAuLL, 0x10uLL, 0x1010040A1D9428BuLL);
  v3->_cachedGenerators = v8;
  if (!v8)
  {
    goto LABEL_12;
  }

  v8->var1 = 1;
  v3->_cachedGenerators->var0 = malloc_type_calloc(1uLL, 4uLL, 0x100004052888210uLL);
  cachedGenerators = v3->_cachedGenerators;
  if (!cachedGenerators->var0)
  {
    free(cachedGenerators);
LABEL_12:
    v10 = 0;
    goto LABEL_13;
  }

  *cachedGenerators->var0 = 1;
  v10 = v3;
LABEL_13:

  return v10;
}

- (int)inverse:(int)inverse
{
  if (inverse)
  {
    return self->_expTable[255 - self->_logTable[inverse]];
  }

  v4 = sub_D58(self, a2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_F1A0();
  }

  return 0x7FFFFFFF;
}

- (int)multiply:(int)multiply with:(int)with
{
  v4 = 0;
  if (multiply && with)
  {
    if (multiply == 1)
    {
      return with;
    }

    else if (with == 1)
    {
      return multiply;
    }

    else
    {
      return self->_expTable[(self->_logTable[with] + self->_logTable[multiply]) % 255];
    }
  }

  return v4;
}

- ($B716781559FB179C01A6A83DB44EE660)createMonomial:(int)monomial coefficient:(int)coefficient
{
  if (monomial < 0)
  {
    v11 = sub_D58(self, a2);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_F1D4();
    }

    return 0;
  }

  if (coefficient)
  {
    v6 = (monomial + 1);
    v7 = malloc_type_calloc(v6, 4uLL, 0x100004052888210uLL);
    if (!v7)
    {
      return 0;
    }

    v8 = v7;
    *v7 = coefficient;
    v9 = malloc_type_calloc(1uLL, 0x10uLL, 0x1010040A1D9428BuLL);
    if (!v9)
    {
      free(v8);
      return v9;
    }

    v10 = [(CIReedSolomon *)self fillPoly:v9 coefficients:v8 length:v6];
    free(v8);
    if ((v10 & 1) == 0)
    {
      free(v9);
      return 0;
    }
  }

  else
  {
    v13 = malloc_type_calloc(1uLL, 0x10uLL, 0x1010040A1D9428BuLL);
    v9 = v13;
    if (v13)
    {
      v13->var1 = 0;
    }
  }

  return v9;
}

- (BOOL)fillPoly:(id *)poly coefficients:(int *)coefficients length:(int)length
{
  if (poly && (v5 = coefficients) != 0 && length)
  {
    if (length < 2 || *coefficients)
    {
      poly->var1 = length;
      if (poly->var0)
      {
        free(poly->var0);
      }

      v8 = malloc_type_calloc(length, 4uLL, 0x100004052888210uLL);
      poly->var0 = v8;
      if (v8)
      {
        v9 = 4 * length;
LABEL_10:
        memcpy(v8, v5, v9);
LABEL_11:
        LOBYTE(v8) = 1;
      }
    }

    else
    {
      v5 = coefficients + 1;
      v11 = length - 1;
      while (!*v5)
      {
        ++v5;
        if (!--v11)
        {
          goto LABEL_25;
        }
      }

      if (!v11)
      {
LABEL_25:
        [(CIReedSolomon *)self clearPoly:poly];
        goto LABEL_11;
      }

      poly->var1 = v11;
      if (poly->var0)
      {
        free(poly->var0);
        LODWORD(v11) = poly->var1;
      }

      v8 = malloc_type_calloc(v11, 4uLL, 0x100004052888210uLL);
      poly->var0 = v8;
      if (v8)
      {
        v9 = 4 * poly->var1;
        goto LABEL_10;
      }
    }
  }

  else
  {
    v10 = sub_D58(self, a2);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_F208();
    }

    LOBYTE(v8) = 0;
  }

  return v8;
}

- (void)clearPoly:(id *)poly
{
  if (poly)
  {
    free(poly->var0);
    poly->var1 = 0;
  }
}

- (int)polyCoefficient:(id *)coefficient degree:(int)degree
{
  if ((degree & 0x80000000) == 0)
  {
    var1 = coefficient->var1;
    if (var1 > degree)
    {
      return coefficient->var0[var1 + ~degree];
    }
  }

  v6 = sub_D58(self, a2);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_F23C();
  }

  return 0;
}

- ($B716781559FB179C01A6A83DB44EE660)copyPoly:(id *)poly
{
  v4 = malloc_type_calloc(1uLL, 0x10uLL, 0x1010040A1D9428BuLL);
  if (v4)
  {
    var1 = poly->var1;
    v4->var1 = var1;
    v6 = malloc_type_calloc(var1, 4uLL, 0x100004052888210uLL);
    v4->var0 = v6;
    if (v6)
    {
      if (poly->var1 >= 1)
      {
        v7 = 0;
        var0 = poly->var0;
        do
        {
          v6[v7] = var0[v7];
          ++v7;
        }

        while (v7 < poly->var1);
      }
    }

    else
    {
      free(v4);
      return 0;
    }
  }

  return v4;
}

- ($B716781559FB179C01A6A83DB44EE660)addOrSubtractPoly:(id *)poly with:(id *)with
{
  var0 = 0;
  if (!poly || !with)
  {
    return var0;
  }

  if (![(CIReedSolomon *)self isZero:poly->var0, *&poly->var1])
  {
    if ([(CIReedSolomon *)self isZero:with->var0, *&with->var1])
    {
      selfCopy2 = self;
      withCopy3 = poly;
      goto LABEL_7;
    }

    var1 = poly->var1;
    v12 = with->var1;
    if (var1 <= v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = var1;
    }

    if (var1 <= v12)
    {
      withCopy = poly;
    }

    else
    {
      withCopy = with;
    }

    if (var1 <= v12)
    {
      polyCopy3 = with;
    }

    else
    {
      polyCopy3 = poly;
    }

    var0 = polyCopy3->var0;
    if (polyCopy3->var0)
    {
      v16 = withCopy->var0;
      if (var1 >= v12)
      {
        v17 = with->var1;
      }

      else
      {
        v17 = poly->var1;
      }

      v18 = malloc_type_calloc(v13, 4uLL, 0x100004052888210uLL);
      if (v18)
      {
        v19 = v18;
        if (v13 - v17 >= 1)
        {
          v20 = (v13 - v17);
          v21 = var0;
          v22 = v18;
          do
          {
            v23 = v21->var0;
            v21 = (v21 + 4);
            *v22++ = v23;
            --v20;
          }

          while (v20);
        }

        if (v17 >= 1)
        {
          v24 = v13 - v17;
          do
          {
            v25 = *v16++;
            v19[v24] = [(CIReedSolomon *)self addOrSubtract:v25 with:*(&var0->var0 + v24)];
            ++v24;
          }

          while (v24 < v13);
        }

        var0 = malloc_type_calloc(1uLL, 0x10uLL, 0x1010040A1D9428BuLL);
        if (var0)
        {
          [(CIReedSolomon *)self fillPoly:var0 coefficients:v19 length:v13];
        }

        free(v19);
      }

      else
      {
        return 0;
      }
    }

    return var0;
  }

  selfCopy2 = self;
  withCopy3 = with;
LABEL_7:

  return [(CIReedSolomon *)selfCopy2 copyPoly:withCopy3];
}

- ($B716781559FB179C01A6A83DB44EE660)multiplyPoly:(id *)poly with:(id *)with
{
  result = 0;
  if (poly && with)
  {
    if ([(CIReedSolomon *)self isZero:poly->var0, *&poly->var1]|| [(CIReedSolomon *)self isZero:with->var0, *&with->var1])
    {
      result = malloc_type_calloc(1uLL, 0x10uLL, 0x1010040A1D9428BuLL);
      if (result)
      {
        result->var1 = 0;
      }
    }

    else
    {
      var1 = poly->var1;
      var0 = with->var0;
      v20 = poly->var0;
      v9 = with->var1;
      result = malloc_type_calloc(var1 + v9 - 1, 4uLL, 0x100004052888210uLL);
      v18 = result;
      if (result)
      {
        v17 = (var1 + v9 - 1);
        if (var1 >= 1)
        {
          v10 = 0;
          v11 = result;
          do
          {
            if (v9 >= 1)
            {
              v12 = var0;
              v13 = v20[v10];
              v14 = v9;
              v15 = v11;
              do
              {
                v16 = *v12++;
                *v15 = [(CIReedSolomon *)self addOrSubtract:*v15 with:[(CIReedSolomon *)self multiply:v13 with:v16, v17]];
                ++v15;
                --v14;
              }

              while (v14);
            }

            ++v10;
            v11 = (v11 + 4);
          }

          while (v10 != var1);
        }

        result = malloc_type_calloc(1uLL, 0x10uLL, 0x1010040A1D9428BuLL);
        if (result)
        {
          result->var0 = v18;
          result->var1 = v17;
        }

        else
        {
          free(v18);
          return 0;
        }
      }
    }
  }

  return result;
}

- ($B716781559FB179C01A6A83DB44EE660)multiplyByMonomial:(id *)monomial degree:(int)degree coefficient:(int)coefficient
{
  if (!monomial || degree < 0)
  {
    v14 = sub_D58(self, a2);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_F270();
    }

    return 0;
  }

  v5 = *&coefficient;
  if (coefficient)
  {
    var1 = monomial->var1;
    v9 = var1 + degree;
    result = malloc_type_calloc(var1 + degree, 4uLL, 0x100004052888210uLL);
    if (!result)
    {
      return result;
    }

    v11 = result;
    if (var1 >= 1)
    {
      v12 = 0;
      v13 = 4 * var1;
      do
      {
        v11[v12 / 4] = [(CIReedSolomon *)self multiply:monomial->var0[v12 / 4] with:v5];
        v12 += 4;
      }

      while (v13 != v12);
    }

    result = malloc_type_calloc(1uLL, 0x10uLL, 0x1010040A1D9428BuLL);
    if (result)
    {
      result->var0 = v11;
      result->var1 = v9;
      return result;
    }

    free(v11);
    return 0;
  }

  result = malloc_type_calloc(1uLL, 0x10uLL, 0x1010040A1D9428BuLL);
  if (result)
  {
    result->var1 = 0;
  }

  return result;
}

- ($B716781559FB179C01A6A83DB44EE660)divide:(id *)divide by:(id *)by
{
  if (divide && by && (v6 = self, self = [(CIReedSolomon *)self isZero:by->var0, *&by->var1], !self))
  {
    v9 = [(CIReedSolomon *)v6 copyPoly:divide];
    v10 = [(CIReedSolomon *)v6 inverse:[(CIReedSolomon *)v6 polyCoefficient:by degree:[(CIReedSolomon *)v6 Degree:by->var0, *&by->var1]]];
    while (1)
    {
      v11 = [(CIReedSolomon *)v6 Degree:v9->var0, *&v9->var1];
      if (v11 < [(CIReedSolomon *)v6 Degree:by->var0, *&by->var1])
      {
        break;
      }

      v12 = [(CIReedSolomon *)v6 multiplyByMonomial:by degree:[(CIReedSolomon *)v6 Degree:v9->var0 coefficient:*&v9->var1]- [(CIReedSolomon *)v6 Degree:by->var0, *&by->var1], [(CIReedSolomon *)v6 multiply:[(CIReedSolomon *)v6 polyCoefficient:v9 degree:[(CIReedSolomon *)v6 Degree:v9->var0 with:*&v9->var1]], v10]];
      v13 = [(CIReedSolomon *)v6 addOrSubtractPoly:v9 with:v12];
      [(CIReedSolomon *)v6 clearPoly:v12];
      free(v12);
      [(CIReedSolomon *)v6 clearPoly:v9];
      free(v9);
      v9 = v13;
    }

    v14 = malloc_type_calloc(1uLL, 0x10uLL, 0x1010040A1D9428BuLL);
    v8 = v14;
    if (v14)
    {
      v14->var1 = v9->var1;
      v14->var0 = v9->var0;
    }

    else
    {
      [(CIReedSolomon *)v6 clearPoly:v9];
    }

    free(v9);
  }

  else
  {
    v7 = sub_D58(self, a2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_F2A4();
    }

    return 0;
  }

  return v8;
}

- ($B716781559FB179C01A6A83DB44EE660)buildGenerator:(int)generator
{
  cachedGeneratorNum = self->_cachedGeneratorNum;
  cachedGenerators = self->_cachedGenerators;
  if (cachedGeneratorNum > generator)
  {
    return &cachedGenerators[generator];
  }

  v8 = cachedGeneratorNum;
  v9 = &cachedGenerators[cachedGeneratorNum - 1];
  v18 = generator + 1;
  v10 = (cachedGeneratorNum - 1);
  while (1)
  {
    v19[0] = 0;
    v19[1] = 2;
    v11 = malloc_type_calloc(2uLL, 4uLL, 0x100004052888210uLL);
    v19[0] = v11;
    if (!v11)
    {
      break;
    }

    *v11 = 1;
    v12 = [(CIReedSolomon *)self Exp:v10];
    *(v19[0] + 4) = v12;
    v13 = [(CIReedSolomon *)self multiplyPoly:v9 with:v19];
    [(CIReedSolomon *)self clearPoly:v19];
    memoryCapacity = self->_memoryCapacity;
    v15 = self->_cachedGenerators;
    if (cachedGeneratorNum >= memoryCapacity)
    {
      self->_memoryCapacity = 2 * memoryCapacity;
      v15 = malloc_type_realloc(v15, 32 * memoryCapacity, 0x1010040A1D9428BuLL);
      self->_cachedGenerators = v15;
      if (!v15)
      {
        free(v13);
        return 0;
      }
    }

    v16 = &v15[v8];
    v16->var1 = v13->var1;
    v16->var0 = v13->var0;
    free(v13);
    v17 = self->_cachedGenerators;
    v9 = &v17[v8];
    ++cachedGeneratorNum;
    v10 = (v10 + 1);
    ++v8;
    if (generator == v10)
    {
      self->_cachedGeneratorNum = v18;
      return &v17[v8 - 1];
    }
  }

  return 0;
}

- (BOOL)encode:(int *)encode length:(int)length bytes:(int)bytes
{
  if (!bytes)
  {
    v30 = sub_D58(self, a2);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      sub_F30C();
    }

    goto LABEL_26;
  }

  v5 = *&bytes;
  v6 = (length - bytes);
  if (length <= bytes)
  {
    v30 = sub_D58(self, a2);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      sub_F2D8();
    }

LABEL_26:

LABEL_30:
    LOBYTE(v10) = 0;
    return v10;
  }

  v9 = [(CIReedSolomon *)self buildGenerator:*&bytes];
  v10 = malloc_type_calloc(v6, 4uLL, 0x100004052888210uLL);
  if (!v10)
  {
    return v10;
  }

  v11 = v10;
  v12 = 0;
  do
  {
    *&v10[v12 * 4] = encode[v12];
    ++v12;
  }

  while (v6 != v12);
  v13 = malloc_type_calloc(1uLL, 0x10uLL, 0x1010040A1D9428BuLL);
  if (!v13)
  {
    v31 = v11;
LABEL_29:
    free(v31);
    goto LABEL_30;
  }

  v14 = v13;
  v15 = [(CIReedSolomon *)self fillPoly:v13 coefficients:v11 length:v6];
  free(v11);
  if ((v15 & 1) == 0)
  {
    v31 = v14;
    goto LABEL_29;
  }

  v16 = [(CIReedSolomon *)self multiplyByMonomial:v14 degree:v5 coefficient:1];
  [(CIReedSolomon *)self clearPoly:v14];
  free(v14);
  v17 = [(CIReedSolomon *)self divide:v16 by:v9];
  [(CIReedSolomon *)self clearPoly:v16];
  free(v16);
  var0 = v17->var0;
  var1 = v17->var1;
  v20 = (v5 - var1);
  if (v20 >= 1)
  {
    v21 = (v20 + 3) & 0xFFFFFFFC;
    v22 = vdupq_n_s64(v20 - 1);
    v23 = &encode[v6 + 2];
    v24 = xmmword_14970;
    v25 = xmmword_14980;
    v26 = vdupq_n_s64(4uLL);
    do
    {
      v27 = vmovn_s64(vcgeq_u64(v22, v25));
      if (vuzp1_s16(v27, *v22.i8).u8[0])
      {
        *(v23 - 2) = 0;
      }

      if (vuzp1_s16(v27, *&v22).i8[2])
      {
        *(v23 - 1) = 0;
      }

      if (vuzp1_s16(*&v22, vmovn_s64(vcgeq_u64(v22, *&v24))).i32[1])
      {
        *v23 = 0;
        v23[1] = 0;
      }

      v24 = vaddq_s64(v24, v26);
      v25 = vaddq_s64(v25, v26);
      v23 += 4;
      v21 -= 4;
    }

    while (v21);
    var1 = v17->var1;
  }

  if (var1 >= 1)
  {
    v28 = 0;
    v29 = &encode[v20 + v6];
    do
    {
      v29[v28] = var0[v28];
      ++v28;
    }

    while (v28 < v17->var1);
  }

  [(CIReedSolomon *)self clearPoly:v17];
  free(v17);
  LOBYTE(v10) = 1;
  return v10;
}

- (void)dealloc
{
  cachedGenerators = self->_cachedGenerators;
  if (cachedGenerators)
  {
    cachedGeneratorNum = self->_cachedGeneratorNum;
    if (cachedGeneratorNum >= 1)
    {
      v5 = 0;
      for (i = 0; i < cachedGeneratorNum; ++i)
      {
        var0 = self->_cachedGenerators[v5].var0;
        if (var0)
        {
          free(var0);
          cachedGeneratorNum = self->_cachedGeneratorNum;
        }

        ++v5;
      }

      cachedGenerators = self->_cachedGenerators;
    }

    free(cachedGenerators);
  }

  v8.receiver = self;
  v8.super_class = CIReedSolomon;
  [(CIReedSolomon *)&v8 dealloc];
}

@end