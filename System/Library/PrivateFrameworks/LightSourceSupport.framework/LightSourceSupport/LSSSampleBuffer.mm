@interface LSSSampleBuffer
- (LSSSampleBuffer)init;
- (__n128)intervalContaining:(double)containing@<D0>;
- (uint64_t)removeStartingAt:(double)at;
- (void)append:(void *)result;
@end

@implementation LSSSampleBuffer

- (LSSSampleBuffer)init
{
  v3.receiver = self;
  v3.super_class = LSSSampleBuffer;
  return [(LSSSampleBuffer *)&v3 init];
}

- (uint64_t)removeStartingAt:(double)at
{
  if (result)
  {
    v3 = *(result + 3088);
    v4 = *(result + 3096);
    v5 = result + 16;
    for (i = v3; ; ++i)
    {
      v7 = i + 1;
      if (i + 1 >= v4)
      {
        break;
      }

      v8 = *(v5 + 96 * (i & 0x1F));
      if (v8 > *(v5 + 96 * (v7 & 0x1F)))
      {
        [LSSSampleBuffer removeStartingAt:];
      }
    }

    if (v3 != v4)
    {
      while (*(v5 + 96 * (v3 & 0x1F)) < at)
      {
        if (v4 == ++v3)
        {
          v3 = *(result + 3096);
          break;
        }
      }
    }

    *(result + 3096) = v3;
  }

  return result;
}

- (__n128)intervalContaining:(double)containing@<D0>
{
  if (!self)
  {
    goto LABEL_16;
  }

  v4 = *(self + 3088);
  v5 = *(self + 3096);
  v6 = self + 16;
  v7 = v4;
  while (1)
  {
    v8 = v7 + 1;
    if (v7 + 1 >= v5)
    {
      break;
    }

    v9 = *(v6 + 96 * (v7++ & 0x1F));
    if (v9 > *(v6 + 96 * (v8 & 0x1F)))
    {
      [LSSSampleBuffer intervalContaining:];
    }
  }

  v10 = *(self + 3088);
  while (1)
  {
    v11 = v10 + 1;
    if (v10 + 1 >= v5)
    {
      break;
    }

    v12 = *(v6 + 96 * (v10++ & 0x1F));
    if (v12 > *(v6 + 96 * (v11 & 0x1F)))
    {
      [LSSSampleBuffer removeStartingAt:];
    }
  }

  if (v4 == v5)
  {
    goto LABEL_16;
  }

  v13 = *(self + 3088);
  while (*(v6 + 96 * (v13 & 0x1F)) < containing)
  {
    if (v5 == ++v13)
    {
      v13 = *(self + 3096);
      break;
    }
  }

  if (v13 == v4)
  {
LABEL_16:
    result.n128_u64[0] = 0;
    a3[11] = 0u;
    a3[12] = 0u;
    a3[9] = 0u;
    a3[10] = 0u;
    a3[7] = 0u;
    a3[8] = 0u;
    a3[5] = 0u;
    a3[6] = 0u;
    a3[3] = 0u;
    a3[4] = 0u;
    a3[1] = 0u;
    a3[2] = 0u;
    *a3 = 0u;
  }

  else
  {
    v15 = (v6 + 96 * ((v13 - 1) & 0x1F));
    v16 = v15[3];
    a3[2] = v15[2];
    a3[3] = v16;
    v17 = v15[5];
    a3[4] = v15[4];
    a3[5] = v17;
    v18 = v15[1];
    *a3 = *v15;
    a3[1] = v18;
    if (v13 == v5)
    {
      result.n128_u64[0] = 0;
      a3[10] = 0u;
      a3[11] = 0u;
      a3[8] = 0u;
      a3[9] = 0u;
      a3[6] = 0u;
      a3[7] = 0u;
      *(a3 + 24) = 1;
    }

    else
    {
      v19 = v6 + 96 * (v13 & 0x1F);
      v20 = *(v19 + 48);
      a3[8] = *(v19 + 32);
      a3[9] = v20;
      v21 = *(v19 + 80);
      a3[10] = *(v19 + 64);
      a3[11] = v21;
      result = *v19;
      v22 = *(v19 + 16);
      a3[6] = *v19;
      a3[7] = v22;
      *(a3 + 24) = 2;
    }
  }

  return result;
}

- (void)append:(void *)result
{
  if (result)
  {
    v2 = result[387];
    v3 = result[386];
    if (v2 - v3 == 32)
    {
      result[386] = v3 + 1;
    }

    result[387] = v2 + 1;
    return memcpy(&result[12 * (v2 & 0x1F) + 2], a2, 0x60uLL);
  }

  return result;
}

@end