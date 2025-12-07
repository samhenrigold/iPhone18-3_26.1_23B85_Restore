uint32x4_t sub_277AC3BCC(uint64_t a1, int a2, void *a3, int a4, uint32x4_t *a5)
{
  sub_277A78248(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 2uLL);
  *a5 = result;
  return result;
}

int32x4_t sub_277AC3C00(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  sub_277A75874(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 4uLL);
  *a5 = result;
  return result;
}

int32x4_t sub_277AC3C30(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  sub_277A75874(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 2uLL);
  *a5 = result;
  return result;
}

uint32x4_t sub_277AC3D30(uint64_t a1, int a2, void *a3, int a4, uint32x4_t *a5)
{
  sub_277A77E50(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 4uLL);
  *a5 = result;
  return result;
}

uint32x4_t sub_277AC3D60(uint64_t a1, int a2, void *a3, int a4, uint32x4_t *a5)
{
  sub_277A77E50(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 2uLL);
  *a5 = result;
  return result;
}

int32x4_t sub_277AC3D94(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  sub_277A753B0(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 4uLL);
  *a5 = result;
  return result;
}

int32x4_t sub_277AC3DC4(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  sub_277A753B0(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 2uLL);
  *a5 = result;
  return result;
}

uint64_t sub_277AC3DF4(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5)
{
  v5 = 0;
  v6 = 2 * a5;
  v7 = (2 * a3 + 16);
  v8 = (2 * a1 + 16);
  v9 = 0uLL;
  v10 = 0uLL;
  do
  {
    v9 = vpadalq_u16(v9, vabdq_u16(v8[-1], vrhaddq_u16(v7[-1], *(v6 + v5))));
    v10 = vpadalq_u16(v10, vabdq_u16(*v8, vrhaddq_u16(*v7, *(v6 + v5 + 16))));
    v5 += 32;
    v7 = (v7 + 2 * a4);
    v8 = (v8 + 2 * a2);
  }

  while (v5 != 1024);
  return vaddvq_s32(vaddq_s32(v10, v9));
}

uint64_t sub_277AC3E68(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5)
{
  v5 = 0;
  v6 = 2 * a5;
  v7 = (2 * a3 + 16);
  v8 = (2 * a1 + 16);
  v9 = 0uLL;
  v10 = 0uLL;
  do
  {
    v9 = vpadalq_u16(v9, vabdq_u16(v8[-1], vrhaddq_u16(v7[-1], *(v6 + v5))));
    v10 = vpadalq_u16(v10, vabdq_u16(*v8, vrhaddq_u16(*v7, *(v6 + v5 + 16))));
    v5 += 32;
    v7 = (v7 + 2 * a4);
    v8 = (v8 + 2 * a2);
  }

  while (v5 != 1024);
  return vaddvq_s32(vaddq_s32(v10, v9)) >> 4;
}

uint64_t sub_277AC3EE0(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5)
{
  v5 = 0;
  v6 = 2 * a5;
  v7 = (2 * a3 + 16);
  v8 = (2 * a1 + 16);
  v9 = 0uLL;
  v10 = 0uLL;
  do
  {
    v9 = vpadalq_u16(v9, vabdq_u16(v8[-1], vrhaddq_u16(v7[-1], *(v6 + v5))));
    v10 = vpadalq_u16(v10, vabdq_u16(*v8, vrhaddq_u16(*v7, *(v6 + v5 + 16))));
    v5 += 32;
    v7 = (v7 + 2 * a4);
    v8 = (v8 + 2 * a2);
  }

  while (v5 != 1024);
  return vaddvq_s32(vaddq_s32(v10, v9)) >> 2;
}

uint64_t sub_277AC3F58(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = (2 * a3 + 16);
  v5 = (2 * a1 + 16);
  v6 = 0uLL;
  v7 = -32;
  v8 = 0uLL;
  do
  {
    v6 = vpadalq_u16(v6, vabdq_u16(v5[-1], v4[-1]));
    v8 = vpadalq_u16(v8, vabdq_u16(*v5, *v4));
    v4 = (v4 + 2 * a4);
    v5 = (v5 + 2 * a2);
  }

  while (!__CFADD__(v7++, 1));
  return vaddvq_s32(vaddq_s32(v8, v6));
}

uint64_t sub_277AC3FB4(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = (2 * a3 + 16);
  v5 = (2 * a1 + 16);
  v6 = 0uLL;
  v7 = -32;
  v8 = 0uLL;
  do
  {
    v6 = vpadalq_u16(v6, vabdq_u16(v5[-1], v4[-1]));
    v8 = vpadalq_u16(v8, vabdq_u16(*v5, *v4));
    v4 = (v4 + 2 * a4);
    v5 = (v5 + 2 * a2);
  }

  while (!__CFADD__(v7++, 1));
  return vaddvq_s32(vaddq_s32(v8, v6)) >> 4;
}

uint64_t sub_277AC4014(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = (2 * a3 + 16);
  v5 = (2 * a1 + 16);
  v6 = 0uLL;
  v7 = -32;
  v8 = 0uLL;
  do
  {
    v6 = vpadalq_u16(v6, vabdq_u16(v5[-1], v4[-1]));
    v8 = vpadalq_u16(v8, vabdq_u16(*v5, *v4));
    v4 = (v4 + 2 * a4);
    v5 = (v5 + 2 * a2);
  }

  while (!__CFADD__(v7++, 1));
  return vaddvq_s32(vaddq_s32(v8, v6)) >> 2;
}

uint32x4_t sub_277AC40CC(uint64_t a1, int a2, void *a3, int a4, uint32x4_t *a5)
{
  sub_277A77F18(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 4uLL);
  *a5 = result;
  return result;
}

uint32x4_t sub_277AC40FC(uint64_t a1, int a2, void *a3, int a4, uint32x4_t *a5)
{
  sub_277A77F18(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 2uLL);
  *a5 = result;
  return result;
}

int32x4_t sub_277AC4130(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  sub_277A7549C(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 4uLL);
  *a5 = result;
  return result;
}

int32x4_t sub_277AC4160(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  sub_277A7549C(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 2uLL);
  *a5 = result;
  return result;
}

uint64_t sub_277AC41CC(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = (2 * a1 + 32);
  v5 = (2 * a3 + 32);
  v6 = 0uLL;
  v7 = -16;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 0uLL;
  do
  {
    v6 = vpadalq_u16(v6, vabdq_u16(v4[-2], v5[-2]));
    v8 = vpadalq_u16(v8, vabdq_u16(v4[-1], v5[-1]));
    v9 = vpadalq_u16(v9, vabdq_u16(*v4, *v5));
    v10 = vpadalq_u16(v10, vabdq_u16(v4[1], v5[1]));
    v4 = (v4 + 2 * a2);
    v5 = (v5 + 2 * a4);
  }

  while (!__CFADD__(v7++, 1));
  return vaddvq_s32(vaddq_s32(vaddq_s32(v8, v6), vaddq_s32(v9, v10)));
}

uint64_t sub_277AC4250(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = (2 * a1 + 32);
  v5 = (2 * a3 + 32);
  v6 = 0uLL;
  v7 = -16;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 0uLL;
  do
  {
    v6 = vpadalq_u16(v6, vabdq_u16(v4[-2], v5[-2]));
    v8 = vpadalq_u16(v8, vabdq_u16(v4[-1], v5[-1]));
    v9 = vpadalq_u16(v9, vabdq_u16(*v4, *v5));
    v10 = vpadalq_u16(v10, vabdq_u16(v4[1], v5[1]));
    v4 = (v4 + 2 * a2);
    v5 = (v5 + 2 * a4);
  }

  while (!__CFADD__(v7++, 1));
  return vaddvq_s32(vaddq_s32(vaddq_s32(v8, v6), vaddq_s32(v9, v10))) >> 4;
}

uint64_t sub_277AC42D8(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = (2 * a1 + 32);
  v5 = (2 * a3 + 32);
  v6 = 0uLL;
  v7 = -16;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 0uLL;
  do
  {
    v6 = vpadalq_u16(v6, vabdq_u16(v4[-2], v5[-2]));
    v8 = vpadalq_u16(v8, vabdq_u16(v4[-1], v5[-1]));
    v9 = vpadalq_u16(v9, vabdq_u16(*v4, *v5));
    v10 = vpadalq_u16(v10, vabdq_u16(v4[1], v5[1]));
    v4 = (v4 + 2 * a2);
    v5 = (v5 + 2 * a4);
  }

  while (!__CFADD__(v7++, 1));
  return vaddvq_s32(vaddq_s32(vaddq_s32(v8, v6), vaddq_s32(v9, v10))) >> 2;
}

uint32x4_t sub_277AC43B8(uint64_t a1, int a2, void *a3, int a4, uint32x4_t *a5)
{
  sub_277A78838(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 4uLL);
  *a5 = result;
  return result;
}

uint32x4_t sub_277AC43E8(uint64_t a1, int a2, void *a3, int a4, uint32x4_t *a5)
{
  sub_277A78838(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 2uLL);
  *a5 = result;
  return result;
}

int32x4_t sub_277AC441C(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  sub_277A75F9C(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 4uLL);
  *a5 = result;
  return result;
}

int32x4_t sub_277AC444C(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  sub_277A75F9C(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 2uLL);
  *a5 = result;
  return result;
}

uint64_t sub_277AC447C(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5)
{
  v5 = 0;
  v6 = (2 * a1);
  v7 = (2 * a3);
  v8 = 0uLL;
  do
  {
    v8 = vabal_u16(v8, *v6, vrhadd_u16(*v7, *(2 * a5 + v5)));
    v5 += 8;
    v7 = (v7 + 2 * a4);
    v6 = (v6 + 2 * a2);
  }

  while (v5 != 128);
  return vaddvq_s32(v8);
}

uint64_t sub_277AC44CC(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5)
{
  v5 = 0;
  v6 = (2 * a1);
  v7 = (2 * a3);
  v8 = 0uLL;
  do
  {
    v8 = vabal_u16(v8, *v6, vrhadd_u16(*v7, *(2 * a5 + v5)));
    v5 += 8;
    v7 = (v7 + 2 * a4);
    v6 = (v6 + 2 * a2);
  }

  while (v5 != 128);
  return vaddvq_s32(v8) >> 4;
}

uint64_t sub_277AC4520(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5)
{
  v5 = 0;
  v6 = (2 * a1);
  v7 = (2 * a3);
  v8 = 0uLL;
  do
  {
    v8 = vabal_u16(v8, *v6, vrhadd_u16(*v7, *(2 * a5 + v5)));
    v5 += 8;
    v7 = (v7 + 2 * a4);
    v6 = (v6 + 2 * a2);
  }

  while (v5 != 128);
  return vaddvq_s32(v8) >> 2;
}

uint64_t sub_277AC4574(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = (2 * a1);
  v5 = (2 * a3);
  v6 = 0uLL;
  v7 = -16;
  do
  {
    v6 = vabal_u16(v6, *v4, *v5);
    v5 = (v5 + 2 * a4);
    v4 = (v4 + 2 * a2);
  }

  while (!__CFADD__(v7++, 1));
  return vaddvq_s32(v6);
}

uint64_t sub_277AC45B4(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = (2 * a1);
  v5 = (2 * a3);
  v6 = 0uLL;
  v7 = -16;
  do
  {
    v6 = vabal_u16(v6, *v4, *v5);
    v5 = (v5 + 2 * a4);
    v4 = (v4 + 2 * a2);
  }

  while (!__CFADD__(v7++, 1));
  return vaddvq_s32(v6) >> 4;
}

uint64_t sub_277AC45F8(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = (2 * a1);
  v5 = (2 * a3);
  v6 = 0uLL;
  v7 = -16;
  do
  {
    v6 = vabal_u16(v6, *v4, *v5);
    v5 = (v5 + 2 * a4);
    v4 = (v4 + 2 * a2);
  }

  while (!__CFADD__(v7++, 1));
  return vaddvq_s32(v6) >> 2;
}

uint32x4_t sub_277AC4694(uint64_t a1, int a2, void *a3, int a4, uint32x4_t *a5)
{
  sub_277A7893C(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 4uLL);
  *a5 = result;
  return result;
}

uint32x4_t sub_277AC46C4(uint64_t a1, int a2, void *a3, int a4, uint32x4_t *a5)
{
  sub_277A7893C(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 2uLL);
  *a5 = result;
  return result;
}

int32x4_t sub_277AC46F8(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  sub_277A760B4(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 4uLL);
  *a5 = result;
  return result;
}

int32x4_t sub_277AC4728(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  sub_277A760B4(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 2uLL);
  *a5 = result;
  return result;
}

uint64_t sub_277AC4758(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5)
{
  v5 = 0;
  v6 = 2 * a5;
  v7 = (2 * a3 + 16);
  v8 = (2 * a1 + 16);
  v9 = 0uLL;
  v10 = 0uLL;
  do
  {
    v9 = vpadalq_u16(v9, vabdq_u16(v8[-1], vrhaddq_u16(v7[-1], *(v6 + v5))));
    v10 = vpadalq_u16(v10, vabdq_u16(*v8, vrhaddq_u16(*v7, *(v6 + v5 + 16))));
    v5 += 32;
    v7 = (v7 + 2 * a4);
    v8 = (v8 + 2 * a2);
  }

  while (v5 != 128);
  return vaddvq_s32(vaddq_s32(v10, v9));
}

uint64_t sub_277AC47CC(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5)
{
  v5 = 0;
  v6 = 2 * a5;
  v7 = (2 * a3 + 16);
  v8 = (2 * a1 + 16);
  v9 = 0uLL;
  v10 = 0uLL;
  do
  {
    v9 = vpadalq_u16(v9, vabdq_u16(v8[-1], vrhaddq_u16(v7[-1], *(v6 + v5))));
    v10 = vpadalq_u16(v10, vabdq_u16(*v8, vrhaddq_u16(*v7, *(v6 + v5 + 16))));
    v5 += 32;
    v7 = (v7 + 2 * a4);
    v8 = (v8 + 2 * a2);
  }

  while (v5 != 128);
  return vaddvq_s32(vaddq_s32(v10, v9)) >> 4;
}

uint64_t sub_277AC4844(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5)
{
  v5 = 0;
  v6 = 2 * a5;
  v7 = (2 * a3 + 16);
  v8 = (2 * a1 + 16);
  v9 = 0uLL;
  v10 = 0uLL;
  do
  {
    v9 = vpadalq_u16(v9, vabdq_u16(v8[-1], vrhaddq_u16(v7[-1], *(v6 + v5))));
    v10 = vpadalq_u16(v10, vabdq_u16(*v8, vrhaddq_u16(*v7, *(v6 + v5 + 16))));
    v5 += 32;
    v7 = (v7 + 2 * a4);
    v8 = (v8 + 2 * a2);
  }

  while (v5 != 128);
  return vaddvq_s32(vaddq_s32(v10, v9)) >> 2;
}

uint64_t sub_277AC48BC(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = (2 * a3 + 16);
  v5 = (2 * a1 + 16);
  v6 = 0uLL;
  v7 = -4;
  v8 = 0uLL;
  do
  {
    v6 = vpadalq_u16(v6, vabdq_u16(v5[-1], v4[-1]));
    v8 = vpadalq_u16(v8, vabdq_u16(*v5, *v4));
    v4 = (v4 + 2 * a4);
    v5 = (v5 + 2 * a2);
  }

  while (!__CFADD__(v7++, 1));
  return vaddvq_s32(vaddq_s32(v8, v6));
}

uint64_t sub_277AC4918(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = (2 * a3 + 16);
  v5 = (2 * a1 + 16);
  v6 = 0uLL;
  v7 = -4;
  v8 = 0uLL;
  do
  {
    v6 = vpadalq_u16(v6, vabdq_u16(v5[-1], v4[-1]));
    v8 = vpadalq_u16(v8, vabdq_u16(*v5, *v4));
    v4 = (v4 + 2 * a4);
    v5 = (v5 + 2 * a2);
  }

  while (!__CFADD__(v7++, 1));
  return vaddvq_s32(vaddq_s32(v8, v6)) >> 4;
}

uint64_t sub_277AC4978(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = (2 * a3 + 16);
  v5 = (2 * a1 + 16);
  v6 = 0uLL;
  v7 = -4;
  v8 = 0uLL;
  do
  {
    v6 = vpadalq_u16(v6, vabdq_u16(v5[-1], v4[-1]));
    v8 = vpadalq_u16(v8, vabdq_u16(*v5, *v4));
    v4 = (v4 + 2 * a4);
    v5 = (v5 + 2 * a2);
  }

  while (!__CFADD__(v7++, 1));
  return vaddvq_s32(vaddq_s32(v8, v6)) >> 2;
}

uint32x4_t sub_277AC4A30(uint64_t a1, int a2, void *a3, int a4, uint32x4_t *a5)
{
  sub_277A788B4(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 4uLL);
  *a5 = result;
  return result;
}

uint32x4_t sub_277AC4A60(uint64_t a1, int a2, void *a3, int a4, uint32x4_t *a5)
{
  sub_277A788B4(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 2uLL);
  *a5 = result;
  return result;
}

int32x4_t sub_277AC4A94(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  sub_277A76020(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 4uLL);
  *a5 = result;
  return result;
}

int32x4_t sub_277AC4AC4(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  sub_277A76020(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 2uLL);
  *a5 = result;
  return result;
}

uint64_t sub_277AC4AF4(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5)
{
  v5 = 0;
  v6 = (2 * a1);
  v7 = (2 * a3);
  v8 = 0uLL;
  do
  {
    v8 = vpadalq_u16(v8, vabdq_u16(*v6, vrhaddq_u16(*v7, *(2 * a5 + v5))));
    v5 += 16;
    v7 = (v7 + 2 * a4);
    v6 = (v6 + 2 * a2);
  }

  while (v5 != 512);
  return vaddvq_s32(v8);
}

uint64_t sub_277AC4B48(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5)
{
  v5 = 0;
  v6 = (2 * a1);
  v7 = (2 * a3);
  v8 = 0uLL;
  do
  {
    v8 = vpadalq_u16(v8, vabdq_u16(*v6, vrhaddq_u16(*v7, *(2 * a5 + v5))));
    v5 += 16;
    v7 = (v7 + 2 * a4);
    v6 = (v6 + 2 * a2);
  }

  while (v5 != 512);
  return vaddvq_s32(v8) >> 4;
}

uint64_t sub_277AC4BA0(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5)
{
  v5 = 0;
  v6 = (2 * a1);
  v7 = (2 * a3);
  v8 = 0uLL;
  do
  {
    v8 = vpadalq_u16(v8, vabdq_u16(*v6, vrhaddq_u16(*v7, *(2 * a5 + v5))));
    v5 += 16;
    v7 = (v7 + 2 * a4);
    v6 = (v6 + 2 * a2);
  }

  while (v5 != 512);
  return vaddvq_s32(v8) >> 2;
}

uint64_t sub_277AC4BF8(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = (2 * a1);
  v5 = (2 * a3);
  v6 = 0uLL;
  v7 = -32;
  do
  {
    v6 = vpadalq_u16(v6, vabdq_u16(*v4, *v5));
    v5 = (v5 + 2 * a4);
    v4 = (v4 + 2 * a2);
  }

  while (!__CFADD__(v7++, 1));
  return vaddvq_s32(v6);
}

uint64_t sub_277AC4C3C(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = (2 * a1);
  v5 = (2 * a3);
  v6 = 0uLL;
  v7 = -32;
  do
  {
    v6 = vpadalq_u16(v6, vabdq_u16(*v4, *v5));
    v5 = (v5 + 2 * a4);
    v4 = (v4 + 2 * a2);
  }

  while (!__CFADD__(v7++, 1));
  return vaddvq_s32(v6) >> 4;
}

uint64_t sub_277AC4C84(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = (2 * a1);
  v5 = (2 * a3);
  v6 = 0uLL;
  v7 = -32;
  do
  {
    v6 = vpadalq_u16(v6, vabdq_u16(*v4, *v5));
    v5 = (v5 + 2 * a4);
    v4 = (v4 + 2 * a2);
  }

  while (!__CFADD__(v7++, 1));
  return vaddvq_s32(v6) >> 2;
}

uint32x4_t sub_277AC4D24(uint64_t a1, int a2, void *a3, int a4, uint32x4_t *a5)
{
  sub_277A78ACC(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 4uLL);
  *a5 = result;
  return result;
}

uint32x4_t sub_277AC4D54(uint64_t a1, int a2, void *a3, int a4, uint32x4_t *a5)
{
  sub_277A78ACC(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 2uLL);
  *a5 = result;
  return result;
}

int32x4_t sub_277AC4D88(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  sub_277A7628C(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 4uLL);
  *a5 = result;
  return result;
}

int32x4_t sub_277AC4DB8(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  sub_277A7628C(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 2uLL);
  *a5 = result;
  return result;
}

uint64_t sub_277AC4E24(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = (2 * a1 + 32);
  v5 = (2 * a3 + 32);
  v6 = 0uLL;
  v7 = -8;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 0uLL;
  do
  {
    v6 = vpadalq_u16(v6, vabdq_u16(v4[-2], v5[-2]));
    v8 = vpadalq_u16(v8, vabdq_u16(v4[-1], v5[-1]));
    v9 = vpadalq_u16(v9, vabdq_u16(*v4, *v5));
    v10 = vpadalq_u16(v10, vabdq_u16(v4[1], v5[1]));
    v4 = (v4 + 2 * a2);
    v5 = (v5 + 2 * a4);
  }

  while (!__CFADD__(v7++, 1));
  return vaddvq_s32(vaddq_s32(vaddq_s32(v8, v6), vaddq_s32(v9, v10)));
}

uint64_t sub_277AC4EA8(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = (2 * a1 + 32);
  v5 = (2 * a3 + 32);
  v6 = 0uLL;
  v7 = -8;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 0uLL;
  do
  {
    v6 = vpadalq_u16(v6, vabdq_u16(v4[-2], v5[-2]));
    v8 = vpadalq_u16(v8, vabdq_u16(v4[-1], v5[-1]));
    v9 = vpadalq_u16(v9, vabdq_u16(*v4, *v5));
    v10 = vpadalq_u16(v10, vabdq_u16(v4[1], v5[1]));
    v4 = (v4 + 2 * a2);
    v5 = (v5 + 2 * a4);
  }

  while (!__CFADD__(v7++, 1));
  return vaddvq_s32(vaddq_s32(vaddq_s32(v8, v6), vaddq_s32(v9, v10))) >> 4;
}

uint64_t sub_277AC4F30(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = (2 * a1 + 32);
  v5 = (2 * a3 + 32);
  v6 = 0uLL;
  v7 = -8;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 0uLL;
  do
  {
    v6 = vpadalq_u16(v6, vabdq_u16(v4[-2], v5[-2]));
    v8 = vpadalq_u16(v8, vabdq_u16(v4[-1], v5[-1]));
    v9 = vpadalq_u16(v9, vabdq_u16(*v4, *v5));
    v10 = vpadalq_u16(v10, vabdq_u16(v4[1], v5[1]));
    v4 = (v4 + 2 * a2);
    v5 = (v5 + 2 * a4);
  }

  while (!__CFADD__(v7++, 1));
  return vaddvq_s32(vaddq_s32(vaddq_s32(v8, v6), vaddq_s32(v9, v10))) >> 2;
}

uint32x4_t sub_277AC5010(uint64_t a1, int a2, void *a3, int a4, uint32x4_t *a5)
{
  sub_277A78A04(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 4uLL);
  *a5 = result;
  return result;
}

uint32x4_t sub_277AC5040(uint64_t a1, int a2, void *a3, int a4, uint32x4_t *a5)
{
  sub_277A78A04(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 2uLL);
  *a5 = result;
  return result;
}

int32x4_t sub_277AC5074(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  sub_277A761A0(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 4uLL);
  *a5 = result;
  return result;
}

int32x4_t sub_277AC50A4(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  sub_277A761A0(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 2uLL);
  *a5 = result;
  return result;
}

uint64_t sub_277AC50D4(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5)
{
  v5 = 0;
  v6 = 2 * a5;
  v7 = (2 * a3 + 16);
  v8 = (2 * a1 + 16);
  v9 = 0uLL;
  v10 = 0uLL;
  do
  {
    v9 = vpadalq_u16(v9, vabdq_u16(v8[-1], vrhaddq_u16(v7[-1], *(v6 + v5))));
    v10 = vpadalq_u16(v10, vabdq_u16(*v8, vrhaddq_u16(*v7, *(v6 + v5 + 16))));
    v5 += 32;
    v7 = (v7 + 2 * a4);
    v8 = (v8 + 2 * a2);
  }

  while (v5 != 2048);
  return vaddvq_s32(vaddq_s32(v10, v9));
}

uint64_t sub_277AC5148(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5)
{
  v5 = 0;
  v6 = 2 * a5;
  v7 = (2 * a3 + 16);
  v8 = (2 * a1 + 16);
  v9 = 0uLL;
  v10 = 0uLL;
  do
  {
    v9 = vpadalq_u16(v9, vabdq_u16(v8[-1], vrhaddq_u16(v7[-1], *(v6 + v5))));
    v10 = vpadalq_u16(v10, vabdq_u16(*v8, vrhaddq_u16(*v7, *(v6 + v5 + 16))));
    v5 += 32;
    v7 = (v7 + 2 * a4);
    v8 = (v8 + 2 * a2);
  }

  while (v5 != 2048);
  return vaddvq_s32(vaddq_s32(v10, v9)) >> 4;
}

uint64_t sub_277AC51C0(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5)
{
  v5 = 0;
  v6 = 2 * a5;
  v7 = (2 * a3 + 16);
  v8 = (2 * a1 + 16);
  v9 = 0uLL;
  v10 = 0uLL;
  do
  {
    v9 = vpadalq_u16(v9, vabdq_u16(v8[-1], vrhaddq_u16(v7[-1], *(v6 + v5))));
    v10 = vpadalq_u16(v10, vabdq_u16(*v8, vrhaddq_u16(*v7, *(v6 + v5 + 16))));
    v5 += 32;
    v7 = (v7 + 2 * a4);
    v8 = (v8 + 2 * a2);
  }

  while (v5 != 2048);
  return vaddvq_s32(vaddq_s32(v10, v9)) >> 2;
}

uint64_t sub_277AC5238(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = (2 * a3 + 16);
  v5 = (2 * a1 + 16);
  v6 = 0uLL;
  v7 = -64;
  v8 = 0uLL;
  do
  {
    v6 = vpadalq_u16(v6, vabdq_u16(v5[-1], v4[-1]));
    v8 = vpadalq_u16(v8, vabdq_u16(*v5, *v4));
    v4 = (v4 + 2 * a4);
    v5 = (v5 + 2 * a2);
  }

  while (!__CFADD__(v7++, 1));
  return vaddvq_s32(vaddq_s32(v8, v6));
}

uint64_t sub_277AC5294(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = (2 * a3 + 16);
  v5 = (2 * a1 + 16);
  v6 = 0uLL;
  v7 = -64;
  v8 = 0uLL;
  do
  {
    v6 = vpadalq_u16(v6, vabdq_u16(v5[-1], v4[-1]));
    v8 = vpadalq_u16(v8, vabdq_u16(*v5, *v4));
    v4 = (v4 + 2 * a4);
    v5 = (v5 + 2 * a2);
  }

  while (!__CFADD__(v7++, 1));
  return vaddvq_s32(vaddq_s32(v8, v6)) >> 4;
}

uint64_t sub_277AC52F4(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = (2 * a3 + 16);
  v5 = (2 * a1 + 16);
  v6 = 0uLL;
  v7 = -64;
  v8 = 0uLL;
  do
  {
    v6 = vpadalq_u16(v6, vabdq_u16(v5[-1], v4[-1]));
    v8 = vpadalq_u16(v8, vabdq_u16(*v5, *v4));
    v4 = (v4 + 2 * a4);
    v5 = (v5 + 2 * a2);
  }

  while (!__CFADD__(v7++, 1));
  return vaddvq_s32(vaddq_s32(v8, v6)) >> 2;
}

uint32x4_t sub_277AC53AC(uint64_t a1, int a2, void *a3, int a4, uint32x4_t *a5)
{
  sub_277A78BDC(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 4uLL);
  *a5 = result;
  return result;
}

uint32x4_t sub_277AC53DC(uint64_t a1, int a2, void *a3, int a4, uint32x4_t *a5)
{
  sub_277A78BDC(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 2uLL);
  *a5 = result;
  return result;
}

int32x4_t sub_277AC5410(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  sub_277A763D4(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 4uLL);
  *a5 = result;
  return result;
}

int32x4_t sub_277AC5440(uint64_t a1, int a2, void *a3, int a4, int32x4_t *a5)
{
  sub_277A763D4(a1, a2, a3, a4, a5);
  result = vshrq_n_u32(*a5, 2uLL);
  *a5 = result;
  return result;
}

uint64_t sub_277AC54E8(uint64_t a1, void *__src, int a3)
{
  v3 = __src;
  *(&__ptr[1] + 1) = *MEMORY[0x277D85DE8];
  v5 = (a1 + 643712);
  v6 = a1 + 269952;
  v126 = *a1;
  v7 = (*a1 + 23172);
  if (*v7 && *(a1 + 644192) == 1)
  {
    v8 = *(a1 + 271408);
  }

  else
  {
    v8 = -1;
  }

  v123 = v8;
  v9 = a1 + 245616;
  v125 = *(a1 + 270312);
  v10 = (v126 + 23176);
  memcpy((a1 + 271104), __src, 0x480uLL);
  v11 = *v5;
  v127 = v9;
  if (*v5)
  {
    v12 = v5;
    v13 = *v11;
    if (*v11)
    {
      do
      {
        v14 = *(v13 + 664);
        free(*(v13 - 8));
        v13 = v14;
      }

      while (v14);
    }

    *v11 = 0;
    v11[1] = 0;
    v5 = v12;
    if (*v12)
    {
      free(*(*v12 - 1));
    }

    *v12 = 0;
    v9 = v127;
  }

  v122 = (a1 + 463508);
  v121 = (a1 + 240840);
  v15 = *(v3 + 224);
  v124 = v5;
  if (v15)
  {
    if (!*v9)
    {
      memcpy((a1 + 269352), &unk_277C3F9A8 + 648 * v15 - 648, 0x288uLL);
      if (*(v3 + 292) == 1)
      {
        *(v6 + 12) = 0;
        *v6 = 0;
        *(v6 + 36) = 0;
        *(a1 + 269476) = 0u;
        *(a1 + 269492) = 0u;
        *(a1 + 269508) = 0u;
        *(a1 + 269524) = 0u;
        *(a1 + 269540) = 0u;
        *(a1 + 269556) = 0u;
        *(a1 + 269572) = 0u;
        *(a1 + 269588) = 0u;
        *(a1 + 269604) = 0u;
        *(a1 + 269620) = 0u;
        *(a1 + 269636) = 0;
        *(a1 + 269748) = 0u;
        *(a1 + 269764) = 0u;
        *(a1 + 269780) = 0u;
        *(a1 + 269796) = 0u;
        *(a1 + 269812) = 0u;
        *(a1 + 269828) = 0u;
        *(a1 + 269844) = 0u;
        *(a1 + 269860) = 0u;
        *(a1 + 269876) = 0u;
        *(a1 + 269892) = 0u;
        *(a1 + 269908) = 0u;
        *(a1 + 269924) = 0u;
        *(a1 + 269940) = 0;
      }

      v16 = *(v6 + 360);
      *(v6 + 32) = *(v16 + 72);
LABEL_16:
      if (*(v16 + 92) == 1)
      {
        *(v6 + 28) = 0;
      }

      goto LABEL_33;
    }

    goto LABEL_33;
  }

  if (*(v3 + 110))
  {
    v17 = malloc_type_malloc(0x27uLL, 0x5F484EBFuLL);
    if (v17 && (v18 = ((v17 + 23) & 0xFFFFFFFFFFFFFFF0), *(v18 - 1) = v17, v18))
    {
      *v18 = 0;
      *(((v17 + 23) & 0xFFFFFFFFFFFFFFF0) + 8) = 0;
      v116 = (v17 + 23) & 0xFFFFFFFFFFFFFFF0;
      *v5 = v18;
    }

    else
    {
      *v5 = 0;
      sub_2779F5C10(*(v9 + 48), 2, "Failed to allocate cpi->film_grain_table");
      v116 = *v5;
    }

    v19 = *(v3 + 110);
    v20 = *(v9 + 48);
    v21 = fopen(v19, "rb");
    if (!v21)
    {
      sub_2779F5C10(v20, 1, "Unable to open %s", v19);
      goto LABEL_33;
    }

    v22 = v21;
    v115 = v3;
    *v20 = 0;
    if (!fread(__ptr, 9uLL, 1uLL, v21) || __ptr[0] != 0x316E72676D6C6966)
    {
      sub_2779F5C10(v20, 1, "Unable to read (or invalid) file magic");
LABEL_27:
      fclose(v22);
      v3 = v115;
      goto LABEL_33;
    }

    v117 = v20;
    v118 = 0;
    v91 = v116;
    v119 = v22;
    while (1)
    {
      if (feof(v22))
      {
        goto LABEL_27;
      }

      v92 = malloc_type_malloc(0x2B7uLL, 0x5F484EBFuLL);
      if (!v92 || (v93 = (v92 + 23) & 0xFFFFFFFFFFFFFFF0, *(v93 - 8) = v92, !v93))
      {
        sub_2779F5C10(v20, 2, "Unable to allocate grain table entry");
        goto LABEL_27;
      }

      bzero(((v92 + 23) & 0xFFFFFFFFFFFFFFF0), 0x2A0uLL);
      v94 = fscanf(v22, "E %lld %lld %d %hd %d\n", v93 + 648, v93 + 656, v93, v93 + 644, v93 + 4);
      if (v94 != 5)
      {
        v20 = v117;
        if (v94 || !feof(v119))
        {
          sub_2779F5C10(v117, 1, "Unable to read entry header. Read %d != 5");
        }

        goto LABEL_189;
      }

      v20 = v117;
      if (*(v93 + 4))
      {
        if (fscanf(v119, "p %d %d %d %d %d %d %d %d %d %d %d %d\n", v93 + 296, v93 + 596, v93 + 640, v93 + 292, v93 + 636, v93 + 624, v93 + 600, v93 + 604, v93 + 608, v93 + 612, v93 + 616, v93 + 620) == 12)
        {
          v95 = (v93 + 120);
          if (fscanf(v119, "\tsY %d ", v93 + 120))
          {
            if (*v95 >= 1)
            {
              v96 = 0;
              v97 = v93 + 8;
              while (fscanf(v119, "%d %d", v97, v97 + 4) == 2)
              {
                ++v96;
                v97 += 8;
                if (v96 >= *v95)
                {
                  goto LABEL_202;
                }
              }

              v20 = v117;
              sub_2779F5C10(v117, 1, "Unable to read y scaling points");
              goto LABEL_240;
            }

LABEL_202:
            v98 = (v93 + 204);
            v91 = v116;
            if (fscanf(v119, "\n\tsCb %d", v93 + 204))
            {
              if (*v98 >= 1)
              {
                v99 = 0;
                v100 = v93 + 124;
                while (fscanf(v119, "%d %d", v100, v100 + 4) == 2)
                {
                  ++v99;
                  v100 += 8;
                  if (v99 >= *v98)
                  {
                    goto LABEL_207;
                  }
                }

                v20 = v117;
                sub_2779F5C10(v117, 1, "Unable to read cb scaling points");
                goto LABEL_240;
              }

LABEL_207:
              v101 = (v93 + 288);
              v91 = v116;
              if (fscanf(v119, "\n\tsCr %d", v93 + 288))
              {
                if (*v101 >= 1)
                {
                  v102 = 0;
                  v103 = v93 + 208;
                  while (fscanf(v119, "%d %d", v103, v103 + 4) == 2)
                  {
                    ++v102;
                    v103 += 8;
                    if (v102 >= *v101)
                    {
                      goto LABEL_212;
                    }
                  }

                  v20 = v117;
                  sub_2779F5C10(v117, 1, "Unable to read cr scaling points");
LABEL_240:
                  v91 = v116;
                  goto LABEL_189;
                }

LABEL_212:
                v91 = v116;
                if (!fscanf(v119, "\n\tcY"))
                {
                  v104 = *(v93 + 296) + *(v93 + 296) * *(v93 + 296);
                  v105 = (2 * v104);
                  if (v105 < 1)
                  {
LABEL_225:
                    v91 = v116;
                    if (fscanf(v119, "\n\tcCb"))
                    {
                      v20 = v117;
                      sub_2779F5C10(v117, 1, "Unable to read Cb coeffs header (cCb)", v114);
                    }

                    else if ((v105 & 0x80000000) != 0)
                    {
                      if (fscanf(v119, "\n\tcCr"))
                      {
LABEL_238:
                        v20 = v117;
                        sub_2779F5C10(v117, 1, "Unable read to Cr coeffs header (cCr)", v114);
                      }

                      else
                      {
LABEL_241:
                        fscanf(v119, "\n");
                        v20 = v117;
                      }
                    }

                    else
                    {
                      v108 = v93 + 396;
                      v109 = v105 + 1;
                      v110 = v109;
                      do
                      {
                        if (fscanf(v119, "%d", v108) != 1)
                        {
                          v20 = v117;
                          sub_2779F5C10(v117, 1, "Unable to read Cb coeffs");
                          goto LABEL_240;
                        }

                        v108 += 4;
                        --v110;
                      }

                      while (v110);
                      v91 = v116;
                      if (fscanf(v119, "\n\tcCr"))
                      {
                        goto LABEL_238;
                      }

                      v111 = v93 + 496;
                      while (fscanf(v119, "%d", v111) == 1)
                      {
                        v111 += 4;
                        if (!--v109)
                        {
                          goto LABEL_241;
                        }
                      }

                      v20 = v117;
                      sub_2779F5C10(v117, 1, "Unable to read Cr coeffs");
                    }

                    goto LABEL_189;
                  }

                  v106 = v93 + 300;
                  v107 = (2 * v104);
                  while (fscanf(v119, "%d", v106) == 1)
                  {
                    v106 += 4;
                    if (!--v107)
                    {
                      goto LABEL_225;
                    }
                  }

                  v20 = v117;
                  sub_2779F5C10(v117, 1, "Unable to read Y coeffs");
                  goto LABEL_240;
                }

                v20 = v117;
                sub_2779F5C10(v117, 1, "Unable to read Y coeffs header (cY)", v114);
              }

              else
              {
                v20 = v117;
                sub_2779F5C10(v117, 1, "Unable to read num cr points", v114);
              }
            }

            else
            {
              v20 = v117;
              sub_2779F5C10(v117, 1, "Unable to read num cb points", v113);
            }
          }

          else
          {
            sub_2779F5C10(v117, 1, "Unable to read num y points", v112);
          }
        }

        else
        {
          sub_2779F5C10(v117, 1, "Unable to read entry params. Read %d != 12");
        }
      }

LABEL_189:
      *(v93 + 664) = 0;
      if (v118)
      {
        *(v118 + 664) = v93;
      }

      v5 = v124;
      v22 = v119;
      if (!*v91)
      {
        *v91 = v93;
      }

      v91[1] = v93;
      v118 = v93;
      if (*v20)
      {
        goto LABEL_27;
      }
    }
  }

  if (*(v3 + 223) == 2)
  {
    v16 = *(v6 + 360);
    *(v6 + 32) = *(v16 + 72);
    if (*(v3 + 292) == 1)
    {
      *(v6 + 12) = 0;
      *v6 = 0;
      *(v6 + 36) = 0;
      *(a1 + 269476) = 0u;
      *(a1 + 269492) = 0u;
      *(a1 + 269508) = 0u;
      *(a1 + 269524) = 0u;
      *(a1 + 269540) = 0u;
      *(a1 + 269556) = 0u;
      *(a1 + 269572) = 0u;
      *(a1 + 269588) = 0u;
      *(a1 + 269604) = 0u;
      *(a1 + 269620) = 0u;
      *(a1 + 269636) = 0;
      *(a1 + 269748) = 0u;
      *(a1 + 269764) = 0u;
      *(a1 + 269780) = 0u;
      *(a1 + 269796) = 0u;
      *(a1 + 269812) = 0u;
      *(a1 + 269828) = 0u;
      *(a1 + 269844) = 0u;
      *(a1 + 269860) = 0u;
      *(a1 + 269876) = 0u;
      *(a1 + 269892) = 0u;
      *(a1 + 269908) = 0u;
      *(a1 + 269924) = 0u;
      *(a1 + 269940) = 0;
    }

    goto LABEL_16;
  }

  bzero((a1 + 269352), 0x288uLL);
LABEL_33:
  v23 = 0;
  v24 = v3;
  v25 = *(v3 + 62);
  if (v25 == 4)
  {
    v25 = 0;
  }

  *(v5 + 122) = v25;
  *(a1 + 97136) = *(v125 + 72);
  *(a1 + 97224) = a1 + 270020;
  v26 = *(a1 + 272160);
  *v10 = *(a1 + 272144);
  *(v126 + 23192) = v26;
  v7[9] = 0;
  do
  {
    v27 = v10[v23];
    if (v27 < 0x1C || v27 == 32)
    {
      v7[9] |= 1 << v23;
      v28 = &v10[8 * v23];
      if (!*(v28 + 5))
      {
        v29 = malloc_type_malloc(0x107E7uLL, 0x5F484EBFuLL);
        if (v29 && (v30 = (v29 + 23) & 0xFFFFFFFFFFFFFFF0, *(v30 - 8) = v29, v30))
        {
          bzero(((v29 + 23) & 0xFFFFFFFFFFFFFFF0), 0x107D0uLL);
          *(v28 + 5) = v30;
        }

        else
        {
          *(v28 + 5) = 0;
          sub_2779F5C10(*(v127 + 48), 2, "Failed to allocate level_params->level_info[i]");
        }
      }
    }

    ++v23;
  }

  while (v23 != 32);
  if (*v10 < 0x1CuLL)
  {
    v31 = *(v6 + 360);
    v32 = &qword_277C300D0[10 * *v10];
    if (*(v125 + 321))
    {
      v33 = *v32 >= 8u;
    }

    else
    {
      v33 = 0;
    }

    v34 = !v33;
    v35 = 56;
    if (v34)
    {
      v35 = 48;
    }

    v36 = 3.0;
    if (*(v31 + 69) == 1)
    {
      v36 = 2.0;
    }

    if (!*(v31 + 69))
    {
      v36 = 1.0;
    }

    v37 = v36 * (*&v32[v35] * 1000000.0);
    v38 = *(v6 + 1288);
    if (v38 >= (v37 * 0.7))
    {
      v38 = (v37 * 0.7);
    }

    *(v6 + 1288) = v38;
    v39 = *(*(*a1 + 23888) + 24);
    if (v39)
    {
      *(*a1 + 35536) = (*(v39 + 168) * v38 / 10000000.0);
    }

    *(v6 + 1324) = 0xFF00000000;
    v40 = *(v32 + 6);
    v41 = *(v6 + 1488);
    if (v41 >= 1)
    {
      v42 = *(v32 + 7);
      while (1 << v41 > v42)
      {
        v43 = __OFSUB__(v41--, 1);
        *(v6 + 1488) = v41;
        if ((v41 < 0) ^ v43 | (v41 == 0))
        {
          LOBYTE(v41) = 0;
          break;
        }
      }
    }

    v44 = *(v6 + 1492);
    if (v44 >= 1)
    {
      v45 = 1 << v41;
      do
      {
        if (v45 << v44 <= v40)
        {
          break;
        }

        v43 = __OFSUB__(v44--, 1);
        *(v6 + 1492) = v44;
      }

      while (!((v44 < 0) ^ v43 | (v44 == 0)));
    }

    if (*(v31 + 57))
    {
      v46 = 80;
    }

    else
    {
      v47 = 72;
      if (v34)
      {
        v47 = 64;
      }

      v46 = (fmax(*&v32[v47] * (*(v32 + 5) / *(v32 + 4)), 0.8) * 100.0);
    }

    if (*(v6 + 1312) > v46)
    {
      v46 = *(v6 + 1312);
    }

    *(v6 + 1312) = v46;
  }

  if (*(v6 + 2228) || *(*a1 + 23172))
  {
    goto LABEL_82;
  }

  if (*(v24 + 47) == 3)
  {
    v48 = 16;
    goto LABEL_83;
  }

  if (*(v6 + 2256) != 1 || *(v6 + 1456) || !*(v127 + 16))
  {
LABEL_82:
    v48 = 18;
LABEL_83:
    *(v126 + 44120) = v48;
  }

  *(v6 + 3800) = 0;
  *(v127 + 516) = ((*(v24 + 864) | *(v24 + 291)) & 1) == 0;
  if (*(a1 + 102896))
  {
    goto LABEL_92;
  }

  v49 = malloc_type_malloc(0x5017uLL, 0x5F484EBFuLL);
  if (v49)
  {
    v50 = (v49 + 23) & 0xFFFFFFFFFFFFFFF0;
    *(v50 - 8) = v49;
    *(a1 + 102896) = v50;
    if (v50)
    {
      goto LABEL_92;
    }
  }

  else
  {
    *(a1 + 102896) = 0;
  }

  sub_2779F5C10(*(v127 + 48), 2, "Failed to allocate x->palette_buffer");
LABEL_92:
  if (*(a1 + 102944))
  {
    goto LABEL_99;
  }

  v51 = malloc_type_malloc(0x8027uLL, 0x5F484EBFuLL);
  if (!v51)
  {
    *(a1 + 102944) = 0;
LABEL_97:
    sub_2779F5C10(*(v127 + 48), 2, "Failed to allocate x->tmp_conv_dst");
    v52 = *(a1 + 102944);
    goto LABEL_98;
  }

  v52 = (v51 + 39) & 0xFFFFFFFFFFFFFFE0;
  *(v52 - 8) = v51;
  *(a1 + 102944) = v52;
  if (!v52)
  {
    goto LABEL_97;
  }

LABEL_98:
  *(a1 + 101512) = v52;
LABEL_99:
  if (*(v6 + 1232))
  {
    if (*(a1 + 102904))
    {
      goto LABEL_126;
    }

    v53 = *(v127 + 48);
    v54 = malloc_type_malloc(0x8017uLL, 0x5F484EBFuLL);
    if (v54)
    {
      v55 = (v54 + 23) & 0xFFFFFFFFFFFFFFF0;
      *(v55 - 8) = v54;
      *(a1 + 102904) = v55;
      if (v55)
      {
        goto LABEL_106;
      }
    }

    else
    {
      *(a1 + 102904) = 0;
    }

    sub_2779F5C10(v53, 2, "Failed to allocate bufs->pred0");
LABEL_106:
    v56 = malloc_type_malloc(0x8017uLL, 0x5F484EBFuLL);
    if (v56)
    {
      v57 = (v56 + 23) & 0xFFFFFFFFFFFFFFF0;
      *(v57 - 8) = v56;
      *(a1 + 102912) = v57;
      if (v57)
      {
        goto LABEL_111;
      }
    }

    else
    {
      *(a1 + 102912) = 0;
    }

    sub_2779F5C10(v53, 2, "Failed to allocate bufs->pred1");
LABEL_111:
    v58 = malloc_type_malloc(0x8027uLL, 0x5F484EBFuLL);
    if (v58)
    {
      v59 = (v58 + 39) & 0xFFFFFFFFFFFFFFE0;
      *(v59 - 8) = v58;
      *(a1 + 102920) = v59;
      if (v59)
      {
        goto LABEL_116;
      }
    }

    else
    {
      *(a1 + 102920) = 0;
    }

    sub_2779F5C10(v53, 2, "Failed to allocate bufs->residual1");
LABEL_116:
    v60 = malloc_type_malloc(0x8027uLL, 0x5F484EBFuLL);
    if (v60)
    {
      v61 = (v60 + 39) & 0xFFFFFFFFFFFFFFE0;
      *(v61 - 8) = v60;
      *(a1 + 102928) = v61;
      if (v61)
      {
LABEL_121:
        v62 = malloc_type_malloc(0x8017uLL, 0x5F484EBFuLL);
        if (!v62)
        {
          *(a1 + 102936) = 0;
LABEL_125:
          sub_2779F5C10(v53, 2, "Failed to allocate bufs->tmp_best_mask_buf");
          goto LABEL_126;
        }

        v63 = (v62 + 23) & 0xFFFFFFFFFFFFFFF0;
        *(v63 - 8) = v62;
        *(a1 + 102936) = v63;
        if (!v63)
        {
          goto LABEL_125;
        }

LABEL_126:
        v64 = 0;
        v65 = a1 + 102952;
        v66 = 1;
        while (1)
        {
          v67 = v66;
          if (!*(v65 + 8 * v64))
          {
            break;
          }

LABEL_134:
          v66 = 0;
          v64 = 1;
          if ((v67 & 1) == 0)
          {
            goto LABEL_135;
          }
        }

        v68 = malloc_type_malloc(0x18027uLL, 0x5F484EBFuLL);
        if (v68)
        {
          v69 = (v68 + 39) & 0xFFFFFFFFFFFFFFE0;
          *(v69 - 8) = v68;
          *(v65 + 8 * v64) = v69;
          if (v69)
          {
LABEL_133:
            *(a1 + 101520 + 8 * v64) = v69;
            goto LABEL_134;
          }
        }

        else
        {
          *(v65 + 8 * v64) = 0;
        }

        sub_2779F5C10(*(v127 + 48), 2, "Failed to allocate x->tmp_pred_bufs[i]");
        v69 = *(v65 + 8 * v64);
        goto LABEL_133;
      }
    }

    else
    {
      *(a1 + 102928) = 0;
    }

    sub_2779F5C10(v53, 2, "Failed to allocate bufs->diff10");
    goto LABEL_121;
  }

LABEL_135:
  *(a1 + 264608) = 0;
  *(a1 + 264610) = 0;
  *(a1 + 264612) = 0u;
  *(a1 + 264628) = 0u;
  *(a1 + 264644) = 0u;
  *(a1 + 264660) = 0u;
  *(a1 + 264676) = 0u;
  *(a1 + 264692) = 0u;
  *(a1 + 264708) = 0u;
  *(a1 + 264724) = 0u;
  *(a1 + 264740) = 0u;
  *(a1 + 264756) = 0u;
  v70 = *(a1 + 133624);
  if (v70)
  {
    *(v127 + 493) = 1;
    v70[0x10000] = v70 + 65548;
    v70[65537] = v70 + 24577;
    v70[65538] = v70 + 327684;
    v70[65539] = v70 + 57344;
    v70[65540] = v70 + 65538;
  }

  v71 = *(v126 + 44368);
  v72 = *(v126 + 44152);
  if (v71 >= v72)
  {
    v71 = *(v126 + 44152);
  }

  *(v126 + 44368) = v71;
  v73 = *(v126 + 44336);
  if (v73 >= v72)
  {
    v73 = v72;
  }

  *(v126 + 44336) = v73;
  v74 = *(a1 + 395376);
  if (v74 < 0.1)
  {
    v74 = 30.0;
  }

  *(a1 + 395376) = v74;
  sub_277A5BB98(a1, *(v127 + 56), *(v127 + 60));
  *(a1 + 395240) = *(v24 + 22);
  if (!*(v6 + 1332) && !*(v6 + 1328))
  {
    *(v126 + 44212) = 0u;
  }

  if (*(v24 + 864))
  {
    v75 = 0;
  }

  else
  {
    v75 = 4;
  }

  *(v127 + 505) = v75;
  *(v127 + 503) = *(v24 + 966) | *(v127 + 497);
  v76 = *(v6 + 1192);
  if (v76 < 1 || (v77 = *(v6 + 1196), v77 < 1))
  {
    v78 = *(v6 + 1176);
    v79 = *(v6 + 1180);
    *(v127 + 64) = v78;
    *(v127 + 68) = v79;
  }

  else
  {
    *(v127 + 64) = v76;
    *(v127 + 68) = v77;
    v78 = *(v6 + 1176);
    v79 = *(v6 + 1180);
  }

  *(v127 + 56) = v78;
  *(v127 + 60) = v79;
  if (v78 > *v122 || v79 > *(a1 + 463512) || a3)
  {
    v80 = *(v127 + 592);
    if (v80)
    {
      v80(a1 + 246136);
    }

    sub_277A82C68((a1 + 270936));
    sub_2779C963C(a1 + 240768);
    if (*v121)
    {
      free(*(*v121 - 8));
    }

    *v121 = 0;
    if (*(*(v6 + 360) + 77))
    {
      v81 = 1;
    }

    else
    {
      v81 = 3;
    }

    sub_2779C9AE8(*(a1 + 241064), v81);
    *(a1 + 241064) = 0;
    sub_277AC65E0(a1);
    sub_277AC6A44(a1);
    *v122 = *(v127 + 56);
    *(a1 + 463520) = 0;
  }

  result = sub_277AB9A60(a1);
  *(a1 + 395120) = 0;
  v86 = *a1;
  if (!*(*a1 + 85776))
  {
    *(v6 + 3817) = 0;
  }

  *(v6 + 3819) = 0;
  if (*(v86 + 51016))
  {
    result = sub_277A31A30(a1, *(v24 + 17), v83, v84, v85);
    v86 = *a1;
  }

  if (*(v127 + 16) > *(v124 + 22))
  {
    if (*(v86 + 51016))
    {
      result = sub_277A3251C(a1);
    }

    else
    {
      v87 = *(a1 + 395184);
      v88 = *(a1 + 395196);
      if (v87 < v88 >> 1 || v87 > v88 + (v88 >> 1))
      {
        v89 = (v86 + 44144);
        *(a1 + 395248) = 0;
        v90 = *v89;
        v89[28] = *v89;
        v89[24] = v90;
      }
    }
  }

  if (v123 != -1)
  {
    *(v6 + 1456) = v123;
  }

  *(v124 + 1068) = *(v24 + 299);
  return result;
}

_OWORD *sub_277AC65E0(uint64_t a1)
{
  v2 = (a1 + 270312);
  v3 = a1 + 245584;
  v4 = (a1 + 239312);
  (*(a1 + 246224))(a1 + 246136, *(a1 + 245672), *(a1 + 245676), *(a1 + 395554));
  if (*(v2 + 467) == 1 || *(a1 + 644192) == 1)
  {
    goto LABEL_43;
  }

  v5 = *v2;
  v6 = ((*(v3 + 564) + ~(-1 << *(*v2 + 36))) >> *(*v2 + 36)) * ((*(v3 + 568) + ~(-1 << *(*v2 + 36))) >> *(*v2 + 36));
  if (*(*v2 + 77))
  {
    v7 = 1;
  }

  else
  {
    v7 = 3;
  }

  v8 = 1 << byte_277C3BCB6[*(v5 + 28)];
  v9 = v8 >> (*(v5 + 100) + *(v5 + 96));
  v10 = v6;
  v11 = (v8 + v9 * (v7 - 1));
  if (!is_mul_ok(v11, v6))
  {
    sub_2779F5C10(*(v3 + 80), 1, "A multiplication would overflow size_t");
  }

  v12 = v11 * v10;
  sub_277A36F80(a1);
  if ((72 * v10) <= 0x1FFFFFFE9 && (v13 = malloc_type_malloc(72 * v10 + 23, 0x5F484EBFuLL)) != 0)
  {
    v14 = (v13 + 23) & 0xFFFFFFFFFFFFFFF0;
    *(v14 - 8) = v13;
    *v3 = v14;
    if (v14)
    {
      goto LABEL_14;
    }
  }

  else
  {
    *v3 = 0;
  }

  sub_2779F5C10(*(v3 + 80), 2, "Failed to allocate cpi->coeff_buffer_base");
LABEL_14:
  if (v12 >> 62)
  {
    sub_2779F5C10(*(v3 + 80), 1, "A multiplication would overflow size_t");
  }

  if (4 * v12 > 0x1FFFFFFD9 || (v15 = malloc_type_malloc(4 * v12 + 39, 0x5F484EBFuLL)) == 0)
  {
    *(v3 + 8) = 0;
LABEL_25:
    sub_2779F5C10(*(v3 + 80), 2, "Failed to allocate coeff_buf_pool->tcoeff");
    if ((v12 & 0x8000000000000000) == 0)
    {
      goto LABEL_20;
    }

LABEL_26:
    sub_2779F5C10(*(v3 + 80), 1, "A multiplication would overflow size_t");
    goto LABEL_20;
  }

  v16 = (v15 + 39) & 0xFFFFFFFFFFFFFFE0;
  *(v16 - 8) = v15;
  *(v3 + 8) = v16;
  if (!v16)
  {
    goto LABEL_25;
  }

  if ((v12 & 0x8000000000000000) != 0)
  {
    goto LABEL_26;
  }

LABEL_20:
  v17 = (v12 >> 3) & 0xFFFFFFFFFFFFFFFLL;
  if (v17 > 0x1FFFFFFE9 || (v18 = malloc_type_malloc(v17 + 23, 0x5F484EBFuLL)) == 0)
  {
    *(v3 + 16) = 0;
LABEL_28:
    sub_2779F5C10(*(v3 + 80), 2, "Failed to allocate coeff_buf_pool->eobs");
    goto LABEL_29;
  }

  v19 = (v18 + 23) & 0xFFFFFFFFFFFFFFF0;
  *(v19 - 8) = v18;
  *(v3 + 16) = v19;
  if (!v19)
  {
    goto LABEL_28;
  }

LABEL_29:
  if (v12 <= 0x1FFFFFFE9FLL && (v20 = malloc_type_malloc((v12 >> 4) + 23, 0x5F484EBFuLL)) != 0)
  {
    v21 = (v20 + 23) & 0xFFFFFFFFFFFFFFF0;
    *(v21 - 8) = v20;
    *(v3 + 24) = v21;
    if (v21)
    {
      goto LABEL_35;
    }
  }

  else
  {
    *(v3 + 24) = 0;
  }

  sub_2779F5C10(*(v3 + 80), 2, "Failed to allocate coeff_buf_pool->entropy_ctx");
  v21 = *(v3 + 24);
LABEL_35:
  if (v10 >= 1)
  {
    v22 = 0;
    v24 = *(v3 + 8);
    v23 = *(v3 + 16);
    for (i = 0; i != v10; ++i)
    {
      v26 = 0;
      v27 = v22;
      do
      {
        if (v26)
        {
          v28 = v9;
        }

        else
        {
          v28 = v8;
        }

        *(*v3 + v27) = v24;
        *(*v3 + v27 + 24) = v23;
        v24 += 4 * v28;
        v29 = v28 / 16;
        *(*v3 + v27 + 48) = v21;
        v23 += 2 * v29;
        v21 += v29;
        --v26;
        v27 += 8;
      }

      while (-v7 != v26);
      v22 += 72;
    }
  }

LABEL_43:
  if (*v4)
  {
    free(*(*v4 - 8));
  }

  *v4 = 0;
  if (*(v2 + 218))
  {
    v30 = malloc_type_malloc(0x8003FuLL, 0x5F484EBFuLL);
    if (v30 && (v31 = (v30 + 23) & 0xFFFFFFFFFFFFFFF0, *(v31 - 8) = v30, v31))
    {
      bzero(((v30 + 23) & 0xFFFFFFFFFFFFFFF0), 0x80028uLL);
      *v4 = v31;
    }

    else
    {
      *v4 = 0;
      sub_2779F5C10(*(v3 + 80), 2, "Failed to allocate cpi->td.mv_costs_alloc");
      v31 = *v4;
    }

    *(a1 + 133624) = v31;
  }

  sub_2779C9490(*v2, a1 + 240768, *(v3 + 80));
  if (sub_2779C9F18(a1, a1 + 86064))
  {
    sub_2779F5C10(*(v3 + 80), 2, "Failed to allocate SMS tree");
  }

  result = sub_2779C96A8(a1, 6, a1 + 240768);
  v4[219] = result;
  if (!result)
  {
    v33 = *(v3 + 80);

    return sub_2779F5C10(v33, 2, "Failed to allocate PICK_MODE_CONTEXT");
  }

  return result;
}

unint64_t sub_277AC6A44(uint64_t a1)
{
  v1 = (a1 + 463416);
  v2 = a1 + 245664;
  v3 = *(a1 + 463416);
  if (v3)
  {
    free(*(v3 - 8));
  }

  v4 = sub_2779724A8(*(v2 + 488) * *(v2 + 484), 1uLL);
  *v1 = v4;
  if (!v4)
  {
    sub_2779F5C10(*v2, 2, "Failed to allocate cpi->enc_seg.map");
  }

  v5 = v1[2];
  if (v5)
  {
    sub_277A4C9A0(v5);
  }

  v6 = *(v2 + 484);
  v7 = *(v2 + 488);
  v8 = malloc_type_malloc(0x8FuLL, 0x5F484EBFuLL);
  if (v8)
  {
    v9 = (v8 + 23) & 0xFFFFFFFFFFFFFFF0;
    *(v9 - 8) = v8;
    if (v9)
    {
      *(((v8 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x70) = 0;
      *(((v8 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x50) = 0u;
      *(((v8 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x60) = 0u;
      *(((v8 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x30) = 0u;
      *(((v8 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x40) = 0u;
      *(((v8 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x10) = 0u;
      *(((v8 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x20) = 0u;
      *v9 = 0u;
      v10 = sub_2779724A8(v7 * v6, 1uLL);
      *(v9 + 40) = v10;
      *(v9 + 112) = 0;
      *(v9 + 4) = 5;
      *(v9 + 80) = 0x3FD0000000000000;
      if (v10)
      {
        v1[2] = v9;
        goto LABEL_13;
      }

      free(*(v9 - 8));
    }
  }

  v1[2] = 0;
  sub_2779F5C10(*v2, 2, "Failed to allocate cpi->cyclic_refresh");
LABEL_13:
  v11 = v1[4];
  if (v11)
  {
    free(*(v11 - 8));
  }

  result = sub_2779724A8(*(v2 + 488) * *(v2 + 484), 1uLL);
  v1[4] = result;
  if (!result)
  {
    v13 = *v2;

    return sub_2779F5C10(v13, 2, "Failed to allocate cpi->active_map.map");
  }

  return result;
}

char *sub_277AC6BC0(uint64_t a1, int a2, uint64_t a3)
{
  v6 = malloc_type_malloc(0x14FAFuLL, 0x5F484EBFuLL);
  if (v6)
  {
    *(((v6 + 39) & 0xFFFFFFFFFFFFFFE0) - 8) = v6;
    v7 = ((v6 + 39) & 0xFFFFFFFFFFFFFFE0);
  }

  else
  {
    v7 = 0;
  }

  v40 = v7;
  if (!v7)
  {
    return 0;
  }

  bzero(v7, 0x14F88uLL);
  if (setjmp(v40 + 12811))
  {
    *(v40 + 12810) = 0;
    sub_277AC8F60(v40);
    return 0;
  }

  v9 = 1;
  *(v40 + 12810) = 1;
  *(v40 + 94) = 0;
  *(v40 + 5793) = a2 > 0;
  *(v40 + 48) = a1;
  *(v40 + 5868) = 0;
  *(v40 + 5869) = *(a3 + 12);
  *(v40 + 82) = 1;
  *(v40 + 12754) = 0;
  *(v40 + 6378) = 0x100000001;
  v10 = *(a3 + 1072);
  v40[49141] = v10;
  v11 = *(a3 + 272);
  *(v40 + 12286) = v11;
  v40[49148] = *(a3 + 1107);
  v12 = *(a3 + 904);
  *(v40 + 6144) = v12;
  v13 = *(a3 + 912);
  *(v40 + 12290) = v13;
  v14 = *(a3 + 292);
  v40[49149] = v14;
  *(v40 + 12294) = *(a3 + 916);
  *(v40 + 12291) = *(a3 + 920);
  v15 = *(a3 + 946);
  *(v40 + 12330) = v15;
  v16 = *(a3 + 924);
  *(v40 + 49324) = v16;
  v40[49360] = *(a3 + 945);
  v17 = *(a3 + 944);
  v40[49340] = v17;
  if (v17 == 1)
  {
    *(v40 + 12336) = *(a3 + 940);
    v40[51020] = 1;
    *(v40 + 49348) = 0xA00000010;
    *(v40 + 12339) = 10;
    v18 = xmmword_277BB7970;
LABEL_13:
    *(v40 + 12358) = v9;
    *(v40 + 3091) = v18;
    v19 = 8;
    goto LABEL_14;
  }

  v19 = 10;
  if (v15 && DWORD2(v16))
  {
    v18 = xmmword_277BB7960;
    v9 = 0;
    goto LABEL_13;
  }

LABEL_14:
  *(v40 + 12368) = v19;
  if (v14)
  {
LABEL_15:
    v20 = 1;
    *(v40 + 12292) = 1;
    goto LABEL_23;
  }

  if (v12 == 0xD00000001 && !v13 || v10 == 1)
  {
    v20 = 0;
    *(v40 + 12292) = 0;
  }

  else
  {
    if (!v10)
    {
      goto LABEL_15;
    }

    if (v11 == 12)
    {
      v21 = *(a3 + 20);
      *(v40 + 12292) = *(a3 + 16);
      v20 = v21;
    }

    else
    {
      *(v40 + 12292) = 1;
      v20 = 0;
    }
  }

LABEL_23:
  *(v40 + 12293) = v20;
  sub_277ABA1EC(v40, a3, 0);
  v22 = *(a3 + 308);
  if (!v22)
  {
    v23 = (*a3 * 0.125);
    v24 = *a3 * (*(a3 + 24) * *(a3 + 28));
    if (v23 >= 32)
    {
      v23 = 32;
    }

    if (v23 <= 4)
    {
      v23 = 4;
    }

    v22 = v23;
    if (v24 > 165888000.0)
    {
      if (v23 <= (v24 * 4.0 / 165888000.0 + 0.5))
      {
        v22 = (v24 * 4.0 / 165888000.0 + 0.5);
      }

      else
      {
        v22 = v23;
      }
    }
  }

  v25 = *(a3 + 176);
  v26 = *(a3 + 312);
  if (!v26)
  {
    v27 = (*a3 * 0.75);
    if (v27 >= 32)
    {
      v27 = 32;
    }

    v28 = (v27 & 1) + v27;
    if (v28 <= v22)
    {
      v28 = v22;
    }

    if (v28 <= 32)
    {
      v26 = 32;
    }

    else
    {
      v26 = v28;
    }
  }

  *(v40 + 11030) = (v26 + v22) / 2;
  *(v40 + 2770) = 0u;
  *(v40 + 5516) = 0;
  *(v40 + 11048) = 0;
  *(v40 + 5525) = 0;
  v29 = *(v40 + 5517);
  *(v40 + 5542) = v29;
  if (*(a3 + 1040) < 0x1Cu)
  {
    v25 = 255;
  }

  if (*(a3 + 1076) || *(a3 + 188) != 1)
  {
    *(v40 + 11053) = (*(a3 + 180) + v25) / 2;
    v25 = (*(a3 + 180) + v25) / 2;
  }

  else
  {
    *(v40 + 11053) = v25;
  }

  *(v40 + 11054) = v25;
  *(v40 + 5533) = sub_277A58CE0(*(a3 + 176), *(a3 + 272));
  *(v40 + 11068) = *(a3 + 180);
  *(v40 + 11069) = *(a3 + 176);
  memset_pattern16(v40 + 44288, &unk_277BB7CF0, 0x20uLL);
  *(v40 + 5539) = 0x3FF0000000000000;
  *(v40 + 5546) = v29;
  v30 = (*(a3 + 136) / *a3);
  if (v30 <= 1)
  {
    v30 = 1;
  }

  *(v40 + 11094) = v30;
  *(v40 + 11095) = v30;
  *(v40 + 11046) = 2;
  if (!*(v40 + 5793))
  {
    goto LABEL_54;
  }

  if ((a2 - 19) < 0xE)
  {
    v31 = 1;
LABEL_53:
    *(v40 + 11046) = v31;
    goto LABEL_54;
  }

  if (a2 <= 18)
  {
    v31 = 0;
    goto LABEL_53;
  }

LABEL_54:
  *(v40 + 6686) = sub_27799EA84;
  *(v40 + 6688) = sub_27799FC20;
  *(v40 + 6689) = off_280ABCC48;
  *(v40 + 6690) = sub_277A0B8C0;
  *(v40 + 6691) = sub_277A1061C;
  *(v40 + 6692) = sub_277A4B1C0;
  *(v40 + 6700) = sub_2779A09E8;
  *(v40 + 6701) = sub_277A151E8;
  *(v40 + 6693) = sub_277A49FDC;
  *(v40 + 6702) = qword_280ABC988;
  *(v40 + 6704) = qword_280ABC990;
  *(v40 + 6705) = off_280ABCC10;
  *(v40 + 6706) = sub_277A0BAF4;
  *(v40 + 6707) = sub_277A10868;
  *(v40 + 6708) = qword_280ABC9A0;
  *(v40 + 6716) = qword_280ABC860;
  *(v40 + 6717) = sub_277A1546C;
  *(v40 + 6709) = qword_280ABC998;
  *(v40 + 6718) = sub_27799EAD4;
  *(v40 + 6720) = sub_27799FC7C;
  *(v40 + 6721) = off_280ABCC88;
  *(v40 + 6722) = sub_277A0B9E4;
  *(v40 + 6723) = sub_277A10748;
  *(v40 + 6724) = sub_277A4B2AC;
  *(v40 + 6732) = sub_2779A0A5C;
  *(v40 + 6733) = sub_277A15330;
  *(v40 + 6725) = sub_277A4A0A8;
  *(v40 + 6734) = qword_280ABCA48;
  *(v40 + 6736) = qword_280ABCA50;
  *(v40 + 6737) = off_280ABCC40;
  *(v40 + 6738) = sub_277A0C018;
  *(v40 + 6739) = sub_277A10DB0;
  *(v40 + 6740) = qword_280ABCA60;
  *(v40 + 6748) = qword_280ABC890;
  *(v40 + 6749) = sub_277A159A4;
  *(v40 + 6741) = qword_280ABCA58;
  *(v40 + 6750) = qword_280ABC9A8;
  *(v40 + 6752) = qword_280ABC9B0;
  *(v40 + 6753) = off_280ABCC18;
  *(v40 + 6754) = sub_277A0BC14;
  *(v40 + 6755) = sub_277A10990;
  *(v40 + 6756) = qword_280ABC9C0;
  *(v40 + 6764) = qword_280ABC868;
  *(v40 + 6765) = sub_277A15578;
  *(v40 + 6757) = qword_280ABC9B8;
  *(v40 + 6766) = qword_280ABCA88;
  *(v40 + 6768) = qword_280ABCA90;
  *(v40 + 6769) = off_280ABCC68;
  *(v40 + 6770) = sub_277A0C520;
  *(v40 + 6771) = sub_277A11334;
  *(v40 + 6772) = qword_280ABCAA0;
  *(v40 + 6780) = qword_280ABC8A0;
  *(v40 + 6781) = sub_277A15E8C;
  *(v40 + 6773) = qword_280ABCA98;
  *(v40 + 6670) = qword_280ABC908;
  *(v40 + 6672) = qword_280ABC910;
  *(v40 + 6673) = off_280ABCBF0;
  *(v40 + 6674) = sub_277A0B368;
  *(v40 + 6675) = sub_277A10064;
  *(v40 + 6676) = qword_280ABC920;
  *(v40 + 6684) = qword_280ABC840;
  *(v40 + 6685) = sub_277A14CA0;
  *(v40 + 6677) = qword_280ABC918;
  *(v40 + 6654) = qword_280ABC928;
  *(v40 + 6656) = qword_280ABC930;
  *(v40 + 6657) = off_280ABCBF8;
  *(v40 + 6658) = sub_277A0AE10;
  *(v40 + 6659) = sub_277A0FAAC;
  *(v40 + 6660) = qword_280ABC940;
  *(v40 + 6668) = qword_280ABC848;
  *(v40 + 6669) = sub_277A14758;
  *(v40 + 6661) = qword_280ABC938;
  *(v40 + 6638) = qword_280ABCA68;
  *(v40 + 6640) = qword_280ABCA70;
  *(v40 + 6641) = off_280ABCC60;
  *(v40 + 6642) = sub_277A0A8B8;
  *(v40 + 6643) = sub_277A0F4F4;
  *(v40 + 6644) = qword_280ABCA80;
  *(v40 + 6652) = qword_280ABC898;
  *(v40 + 6653) = sub_277A14210;
  *(v40 + 6645) = qword_280ABCA78;
  *(v40 + 6558) = qword_280ABC9E8;
  *(v40 + 6560) = qword_280ABC9F0;
  *(v40 + 6561) = off_280ABCC28;
  *(v40 + 6562) = sub_277A08F3C;
  *(v40 + 6563) = sub_277A0D94C;
  *(v40 + 6564) = qword_280ABCA00;
  *(v40 + 6572) = qword_280ABC878;
  *(v40 + 6573) = sub_277A128E0;
  *(v40 + 6565) = qword_280ABC9F8;
  *(v40 + 6542) = qword_280ABC968;
  *(v40 + 6544) = qword_280ABC970;
  *(v40 + 6545) = off_280ABCC08;
  *(v40 + 6546) = sub_277A08B38;
  *(v40 + 6547) = sub_277A0D52C;
  *(v40 + 6548) = qword_280ABC980;
  *(v40 + 6556) = qword_280ABC858;
  *(v40 + 6557) = sub_277A124B4;
  *(v40 + 6549) = qword_280ABC978;
  *(v40 + 6606) = qword_280ABCAA8;
  *(v40 + 6608) = qword_280ABCAB0;
  *(v40 + 6609) = off_280ABCC70;
  *(v40 + 6610) = sub_277A09E2C;
  *(v40 + 6611) = sub_277A0E9AC;
  *(v40 + 6612) = qword_280ABCAC0;
  *(v40 + 6620) = qword_280ABC8A8;
  *(v40 + 6621) = sub_277A137B4;
  *(v40 + 6613) = qword_280ABCAB8;
  *(v40 + 6590) = qword_280ABCA28;
  *(v40 + 6592) = qword_280ABCA30;
  *(v40 + 6593) = off_280ABCC38;
  *(v40 + 6594) = sub_277A0991C;
  *(v40 + 6595) = sub_277A0E424;
  *(v40 + 6596) = qword_280ABCA40;
  *(v40 + 6604) = qword_280ABC888;
  *(v40 + 6605) = sub_277A132B0;
  *(v40 + 6597) = qword_280ABCA38;
  *(v40 + 6574) = off_280ABCA08;
  *(v40 + 6576) = qword_280ABCA10;
  *(v40 + 6577) = off_280ABCC30;
  *(v40 + 6578) = sub_277A0942C;
  *(v40 + 6579) = sub_277A0DEB8;
  *(v40 + 6580) = qword_280ABCA20;
  *(v40 + 6588) = qword_280ABC880;
  *(v40 + 6589) = sub_277A12DC8;
  *(v40 + 6581) = qword_280ABCA18;
  *(v40 + 6622) = qword_280ABCAC8;
  *(v40 + 6624) = qword_280ABCAD0;
  *(v40 + 6625) = off_280ABCC78;
  *(v40 + 6626) = sub_277A0A360;
  *(v40 + 6627) = sub_277A0EF3C;
  *(v40 + 6628) = qword_280ABCAE0;
  *(v40 + 6636) = qword_280ABC8B0;
  *(v40 + 6637) = sub_277A13CC8;
  *(v40 + 6629) = qword_280ABCAD8;
  *(v40 + 6526) = qword_280ABC948;
  *(v40 + 6528) = qword_280ABC950;
  *(v40 + 6529) = off_280ABCC00;
  *(v40 + 6530) = sub_277A08734;
  *(v40 + 6531) = sub_277A0D10C;
  *(v40 + 6532) = qword_280ABC960;
  *(v40 + 6540) = qword_280ABC850;
  *(v40 + 6541) = sub_277A12088;
  *(v40 + 6533) = qword_280ABC958;
  *(v40 + 6510) = qword_280ABC9C8;
  *(v40 + 6512) = qword_280ABC9D0;
  *(v40 + 6513) = off_280ABCC20;
  *(v40 + 6514) = sub_277A0860C;
  *(v40 + 6515) = sub_277A0CFDC;
  *(v40 + 6516) = qword_280ABC9E0;
  *(v40 + 6524) = qword_280ABC870;
  *(v40 + 6525) = sub_277A11EDC;
  *(v40 + 6517) = qword_280ABC9D8;
  *(v40 + 6494) = sub_27799E57C;
  *(v40 + 6496) = sub_27799F5DC;
  *(v40 + 6497) = off_280ABCC80;
  *(v40 + 6498) = sub_277A084FC;
  *(v40 + 6499) = sub_277A0CEBC;
  *(v40 + 6500) = sub_277A4A6B0;
  *(v40 + 6508) = sub_27799FFF8;
  *(v40 + 6509) = sub_277A11DA0;
  *(v40 + 6501) = sub_277A49630;
  *(v40 + 6478) = sub_27799E544;
  *(v40 + 6480) = sub_27799F598;
  *(v40 + 6481) = off_280ABCC98;
  *(v40 + 6482) = sub_277A083F4;
  *(v40 + 6483) = sub_277A0CDA4;
  *(v40 + 6484) = sub_277A4A624;
  *(v40 + 6492) = sub_27799FF9C;
  *(v40 + 6493) = sub_277A11C6C;
  *(v40 + 6485) = sub_277A495B0;
  *(v40 + 6462) = sub_27799E50C;
  *(v40 + 6464) = sub_27799F554;
  *(v40 + 6465) = off_280ABCC90;
  *(v40 + 6466) = sub_277A082EC;
  *(v40 + 6467) = sub_277A0CC8C;
  *(v40 + 6468) = sub_277A4A598;
  *(v40 + 6476) = sub_27799FF40;
  *(v40 + 6477) = sub_277A11B38;
  *(v40 + 6469) = sub_277A49530;
  *(v40 + 6446) = sub_27799E4BC;
  *(v40 + 6448) = sub_27799F4F8;
  *(v40 + 6449) = off_280ABCC58;
  *(v40 + 6450) = sub_277A081C8;
  *(v40 + 6451) = sub_277A0CB60;
  *(v40 + 6452) = sub_277A4A4AC;
  *(v40 + 6460) = sub_27799FECC;
  *(v40 + 6461) = sub_277A119F0;
  *(v40 + 6453) = sub_277A49464;
  *(v40 + 6430) = sub_27799E46C;
  *(v40 + 6432) = sub_27799F49C;
  *(v40 + 6433) = off_280ABCC50;
  *(v40 + 6434) = sub_277A080A4;
  *(v40 + 6435) = sub_277A0CA34;
  *(v40 + 6436) = sub_277A4A3DC;
  *(v40 + 6444) = sub_27799FE58;
  *(v40 + 6445) = sub_277A118A8;
  *(v40 + 6437) = sub_277A493B4;
  *(v40 + 6681) = sub_2779F69B0;
  *(v40 + 6682) = sub_277B304E8;
  *(v40 + 6683) = sub_277A1A7D4;
  *(v40 + 6665) = sub_2779F68EC;
  *(v40 + 6666) = sub_277B303F0;
  *(v40 + 6667) = sub_277A1A294;
  *(v40 + 6649) = sub_2779F6828;
  *(v40 + 6650) = sub_277B302F8;
  *(v40 + 6651) = sub_277A19D54;
  *(v40 + 6633) = sub_2779F6764;
  *(v40 + 6634) = sub_277B30200;
  *(v40 + 6635) = sub_277A19814;
  *(v40 + 6617) = sub_2779F66A0;
  *(v40 + 6618) = sub_277B30108;
  *(v40 + 6619) = sub_277A192F8;
  *(v40 + 6601) = sub_2779F6518;
  *(v40 + 6602) = sub_277B30010;
  *(v40 + 6603) = sub_277A18904;
  *(v40 + 6585) = sub_2779F6454;
  *(v40 + 6586) = sub_277B2FF18;
  *(v40 + 6587) = sub_277A1842C;
  *(v40 + 6569) = sub_2779F6390;
  *(v40 + 6570) = sub_277B2FE20;
  *(v40 + 6571) = sub_277A17F54;
  *(v40 + 6553) = sub_2779F6174;
  *(v40 + 6554) = sub_277B2FD40;
  *(v40 + 6555) = sub_277A1728C;
  *(v40 + 6537) = sub_2779F60C8;
  *(v40 + 6538) = sub_277B2FC60;
  *(v40 + 6539) = sub_277A16EA0;
  *(v40 + 6521) = sub_2779F601C;
  *(v40 + 6522) = sub_277B2FB80;
  *(v40 + 6523) = sub_277A16D80;
  *(v40 + 6505) = sub_2779F5EB8;
  *(v40 + 6506) = sub_277B2FAF8;
  *(v40 + 6507) = sub_277A16998;
  *(v40 + 6489) = sub_2779F5E5C;
  *(v40 + 6490) = sub_277B2FA70;
  *(v40 + 6491) = sub_277A16838;
  *(v40 + 6457) = sub_2779F5D30;
  *(v40 + 6458) = sub_277B2F954;
  *(v40 + 6459) = sub_277A164A0;
  *(v40 + 6473) = sub_2779F5E00;
  *(v40 + 6474) = sub_277B2F9E8;
  *(v40 + 6475) = sub_277A166D8;
  *(v40 + 6441) = sub_2779F5CC8;
  *(v40 + 6442) = sub_277B2F8C0;
  *(v40 + 6443) = sub_277A16384;
  *(v40 + 6697) = sub_2779F5D98;
  *(v40 + 6698) = sub_277B305E0;
  *(v40 + 6699) = sub_277A165BC;
  *(v40 + 6713) = sub_2779F5F70;
  *(v40 + 6714) = sub_277B30674;
  *(v40 + 6715) = sub_277A16C68;
  *(v40 + 6729) = sub_2779F5F14;
  *(v40 + 6730) = sub_277B30754;
  *(v40 + 6731) = sub_277A16B00;
  *(v40 + 6745) = sub_2779F62CC;
  *(v40 + 6746) = sub_277B307DC;
  *(v40 + 6747) = sub_277A17A64;
  *(v40 + 6761) = sub_2779F6220;
  *(v40 + 6762) = sub_277B308D4;
  *(v40 + 6763) = sub_277A17678;
  *(v40 + 6777) = sub_2779F65DC;
  *(v40 + 6778) = sub_277B309B4;
  *(v40 + 6779) = sub_277A18DFC;
  *(v40 + 6679) = sub_277987B68;
  *(v40 + 6680) = sub_277A20488;
  *(v40 + 6663) = sub_2779877C8;
  *(v40 + 6664) = sub_277A1FB20;
  *(v40 + 6647) = sub_2779875C8;
  *(v40 + 6648) = sub_277A1F1B8;
  *(v40 + 6631) = sub_2779873C8;
  *(v40 + 6632) = sub_277A1E854;
  *(v40 + 6615) = sub_2779871C8;
  *(v40 + 6616) = sub_277A1DEFC;
  *(v40 + 6599) = sub_2779870A8;
  *(v40 + 6600) = sub_277A1D5C4;
  *(v40 + 6583) = sub_277986F88;
  *(v40 + 6584) = sub_277A1CCE8;
  *(v40 + 6567) = sub_277986E68;
  *(v40 + 6568) = sub_277A1C408;
  *(v40 + 6551) = sub_277986DA4;
  *(v40 + 6552) = sub_277A1BCF0;
  *(v40 + 6535) = sub_277986CE0;
  *(v40 + 6536) = sub_277A1B5D8;
  *(v40 + 6519) = sub_277986C1C;
  *(v40 + 6520) = sub_277A1B44C;
  *(v40 + 6503) = sub_277986B70;
  *(v40 + 6504) = sub_277A1B2E4;
  *(v40 + 6487) = sub_277986AC4;
  *(v40 + 6488) = sub_277A1B184;
  *(v40 + 6455) = sub_277986930;
  *(v40 + 6456) = sub_277A1AE9C;
  *(v40 + 6471) = sub_277986A18;
  *(v40 + 6472) = sub_277A1B024;
  *(v40 + 6439) = sub_277986848;
  *(v40 + 6440) = sub_277A1AD14;
  *(v40 + 6695) = sub_277987F08;
  *(v40 + 6696) = sub_277A20DEC;
  *(v40 + 6711) = sub_277987FF0;
  *(v40 + 6712) = sub_277A210DC;
  *(v40 + 6727) = sub_2779880B4;
  *(v40 + 6728) = sub_277A20F74;
  *(v40 + 6743) = sub_277988160;
  *(v40 + 6744) = sub_277A21978;
  *(v40 + 6759) = sub_277988280;
  *(v40 + 6760) = sub_277A21260;
  *(v40 + 6775) = sub_277988344;
  *(v40 + 6776) = sub_277A22270;
  *(v40 + 6671) = qword_280ABCAE8;
  *(v40 + 6678) = qword_280ABCAF0;
  *(v40 + 6655) = qword_280ABCAF8;
  *(v40 + 6662) = qword_280ABCB00;
  *(v40 + 6639) = qword_280ABCB98;
  *(v40 + 6646) = qword_280ABCBA0;
  *(v40 + 6623) = qword_280ABCBC8;
  *(v40 + 6630) = qword_280ABCBD0;
  *(v40 + 6607) = qword_280ABCBB8;
  *(v40 + 6614) = qword_280ABCBC0;
  *(v40 + 6591) = qword_280ABCB78;
  *(v40 + 6598) = qword_280ABCB80;
  *(v40 + 6575) = qword_280ABCB68;
  *(v40 + 6582) = qword_280ABCB70;
  *(v40 + 6559) = qword_280ABCB58;
  *(v40 + 6566) = qword_280ABCB60;
  *(v40 + 6543) = qword_280ABCB18;
  *(v40 + 6550) = qword_280ABCB20;
  *(v40 + 6527) = qword_280ABCB08;
  *(v40 + 6534) = qword_280ABCB10;
  *(v40 + 6511) = qword_280ABCB48;
  *(v40 + 6518) = qword_280ABCB50;
  *(v40 + 6495) = sub_27799ECF0;
  *(v40 + 6502) = sub_277A4B7BC;
  *(v40 + 6479) = sub_27799ECAC;
  *(v40 + 6486) = sub_277A4B724;
  *(v40 + 6447) = sub_27799EC58;
  *(v40 + 6454) = sub_277A4B650;
  *(v40 + 6767) = qword_280ABCBA8;
  *(v40 + 6774) = qword_280ABCBB0;
  *(v40 + 6751) = qword_280ABCB38;
  *(v40 + 6758) = qword_280ABCB40;
  *(v40 + 6735) = qword_280ABCB88;
  *(v40 + 6742) = qword_280ABCB90;
  *(v40 + 6719) = sub_27799F2DC;
  *(v40 + 6726) = sub_277A4C3BC;
  *(v40 + 6687) = sub_27799F288;
  *(v40 + 6694) = sub_277A4C2CC;
  sub_277ABAA18(v40);
  v32 = ((*(a3 + 24) + 7) >> 2) & 0xFFFFFFFE;
  v33 = ((*(a3 + 28) + 7) >> 2) & 0xFFFFFFFE;
  v35 = v32 + 3;
  v34 = v32 < -3;
  v36 = v32 + 6;
  if (!v34)
  {
    v36 = v35;
  }

  v37 = v36 >> 2;
  v38 = v33 + 3;
  v34 = v33 < -3;
  v39 = v33 + 6;
  if (!v34)
  {
    v39 = v38;
  }

  *(v40 + 6782) = sub_2779724A8((v39 >> 2) * v37, 8uLL);
  if (!*(v40 + 6782))
  {
    sub_2779F5C10((v40 + 51032), 2, "Failed to allocate ppi->tpl_sb_rdmult_scaling_factors");
  }

  *(v40 + 12810) = 0;
  return v40;
}

void sub_277AC8F60(uint64_t a1)
{
  if (a1)
  {
    v2 = (a1 + 75040);
    v3 = a1 + 48384;
    if (*(a1 + 48384))
    {
      sub_27797ABB4(a1 + 48392);
      sub_27797ABB4(a1 + 48600);
      sub_27797ABB4(a1 + 48808);
    }

    for (i = 0; i != 256; i += 8)
    {
      v5 = *(a1 + 23216 + i);
      if (v5)
      {
        free(*(v5 - 8));
      }
    }

    sub_277AE51A4(*(a1 + 368));
    v6 = *(a1 + 54256);
    if (v6)
    {
      free(*(v6 - 8));
    }

    *(a1 + 54256) = 0;
    v7 = *(a1 + 64736);
    if (v7)
    {
      free(*(v7 - 8));
    }

    v8 = 0;
    v9 = a1 + 64352;
    v10 = a1 + 64744;
    do
    {
      v11 = *(v9 + v8);
      if (v11)
      {
        free(*(v11 - 8));
      }

      sub_27797ABB4(v10);
      *(v9 + v8) = 0;
      v8 += 8;
      v10 += 208;
    }

    while (v8 != 384);
    v71 = a1;
    sub_277AF9EF0((a1 + 74872));
    if (*v2 >= 1)
    {
      v12 = 0;
      v13 = 0;
      do
      {
        sub_277985DDC((*(v2 + 7) + v12));
        ++v13;
        v14 = *v2;
        v12 += 56;
      }

      while (v13 < v14);
      v15 = *(v3 + 765) ? 1 : 3;
      if (v14 >= 2)
      {
        v17 = v2[2];
        v16 = v2[3];
        if (v16 >= v14)
        {
          v16 = *v2;
        }

        if (v17 >= v14)
        {
          v17 = *v2;
        }

        v72 = *(v3 + 764);
        v73 = v16;
        v74 = v17;
        v18 = 1;
        do
        {
          v19 = *(v2 + 8) + 456 * v18;
          v20 = *(v19 + 16);
          *(v19 + 8) = v20;
          v21 = (v19 + 8);
          if (v20)
          {
            v22 = (v20 + 153104);
            v23 = *(v20 + 154976);
            if (v23)
            {
              free(*(v23 - 8));
            }

            v24 = *(v20 + 154856);
            if (v24)
            {
              free(*(v24 - 8));
            }

            v25 = *(v20 + 154904);
            if (v25)
            {
              free(*(v25 - 8));
            }

            v26 = *(v20 + 154864);
            if (v26)
            {
              free(*(v26 - 8));
            }

            v27 = *(v20 + 154872);
            if (v27)
            {
              free(*(v27 - 8));
            }

            v28 = *(v20 + 154880);
            if (v28)
            {
              free(*(v28 - 8));
            }

            v29 = *(v20 + 154888);
            if (v29)
            {
              free(*(v29 - 8));
            }

            v30 = *(v20 + 154896);
            if (v30)
            {
              free(*(v30 - 8));
            }

            *(v20 + 154896) = 0;
            *(v20 + 154864) = 0u;
            *(v20 + 154880) = 0u;
            v31 = *(v20 + 154920);
            if (v31)
            {
              free(*(v31 - 8));
            }

            v32 = *(v20 + 154928);
            if (v32)
            {
              free(*(v32 - 8));
            }

            v33 = (v20 + 159256);
            v34 = *(v20 + 159280);
            if (v34)
            {
              free(*(v34 - 8));
            }

            v35 = *(v20 + 159288);
            if (v35)
            {
              free(*(v35 - 8));
            }

            v36 = *(v20 + 154832);
            if (v36)
            {
              free(*(v36 - 8));
            }

            v37 = *(v20 + 154840);
            if (v37)
            {
              free(*(v37 - 8));
            }

            v38 = *(v20 + 154848);
            if (v38)
            {
              free(*(v38 - 8));
            }

            v39 = *(v20 + 154824);
            if (v39)
            {
              free(*(v39 - 8));
            }

            *(v20 + 154824) = 0u;
            *(v20 + 154840) = 0u;
            v40 = *(v20 + 154984);
            if (v40)
            {
              free(*(v40 - 8));
            }

            v41 = *(v20 + 154792);
            if (v41)
            {
              free(*(v41 - 8));
            }

            *(v20 + 154792) = 0;
            v42 = *(v20 + 154800);
            if (v42)
            {
              free(*(v42 - 8));
            }

            *(v20 + 154800) = 0;
            v43 = *(v20 + 154808);
            if (v43)
            {
              free(*(v43 - 8));
            }

            *(v20 + 154808) = 0;
            v44 = *(v20 + 154816);
            if (v44)
            {
              free(*(v44 - 8));
            }

            *(v20 + 154816) = 0;
            v45 = *(v20 + 153248);
            if (v45)
            {
              free(*(v45 - 8));
            }

            *(v20 + 153248) = 0;
            v46 = *(v20 + 153256);
            if (v46)
            {
              free(*(v46 - 8));
            }

            *(v20 + 153256) = 0;
            v47 = *(v20 + 154696);
            if (v47)
            {
              free(*(v47 - 8));
            }

            sub_2779C9AE8(*(v20 + 155000), v15);
            *(v20 + 155000) = 0;
            sub_2779C963C(v20 + 154704);
            v48 = *(v20 + 154776);
            if (v48)
            {
              free(*(v48 - 8));
            }

            *(v20 + 154776) = 0;
            if (v18 < v74)
            {
              if (v72)
              {
                *(v20 + 155048) *= 2;
              }

              v49 = *(v20 + 155024);
              if (v49)
              {
                free(*(v49 - 8));
              }

              *(v20 + 155024) = 0;
              v50 = *(v20 + 155032);
              if (v50)
              {
                free(*(v50 - 8));
              }

              *(v20 + 155032) = 0;
              v51 = *(v20 + 155040);
              if (v51)
              {
                free(*(v51 - 8));
              }

              *(v20 + 155040) = 0;
              v52 = *(v20 + 155048);
              if (v52)
              {
                free(*(v52 - 8));
              }

              *(v20 + 155048) = 0;
            }

            if (v18 < v73)
            {
              v53 = *(v20 + 155056);
              if (v53)
              {
                free(*(v53 - 8));
              }

              *(v20 + 155056) = 0;
              v54 = *(v20 + 155064);
              if (v54)
              {
                free(*(v54 - 8));
              }

              *(v20 + 155064) = 0;
              v55 = *(v20 + 155072);
              if (v55)
              {
                free(*(v55 - 8));
              }

              *(v20 + 155072) = 0;
              v56 = *(v20 + 155080);
              if (v56)
              {
                free(*(v56 - 8));
              }

              *(v20 + 155080) = 0;
              v57 = *(v20 + 155088);
              if (v57)
              {
                free(*(v57 - 8));
              }

              *(v20 + 155088) = 0;
            }

            v58 = *(v20 + 159272);
            if (v58)
            {
              free(*(v58 - 8));
            }

            *(v20 + 159272) = 0;
            if (*v33)
            {
              free(*(*v33 - 8));
            }

            *v33 = 0;
            if (*v22)
            {
              free(*(*v22 - 8));
            }

            v59 = (v20 + 116272);
            *v22 = 0;
            v60 = *(v20 + 116288);
            if (v60)
            {
              free(*(v60 - 8));
            }

            *(v20 + 116288) = 0;
            v61 = v20;
            v62 = v15;
            do
            {
              if (*v61)
              {
                free(*(*v61 - 8));
              }

              *v61 = 0;
              v61 += 17;
              --v62;
            }

            while (v62);
            v63 = *(v20 + 11184);
            if (v63)
            {
              free(*(v63 - 8));
            }

            *(v20 + 11184) = 0;
            if (*v59)
            {
              free(*(*v59 - 8));
            }

            *v59 = 0;
            v64 = *(v20 + 153144);
            if (v64)
            {
              free(*(v64 - 8));
            }

            *(v20 + 153144) = 0;
            v65 = *(v20 + 153232);
            if (v65)
            {
              free(*(v65 - 8));
            }

            *(v20 + 153232) = 0;
            v66 = *(v20 + 153240);
            if (v66)
            {
              free(*(v66 - 8));
            }

            *(v20 + 153240) = 0;
            sub_2779C9C3C(*(v20 + 159296), v15, 0, 0, 0);
            *(v20 + 159296) = 0;
            v67 = *(v20 + 154936);
            if (v67)
            {
              free(*(v67 - 8));
            }

            *(v20 + 154936) = 0;
            free(*(v20 - 8));
            *v21 = 0;
            v21[1] = 0;
            LODWORD(v14) = *v2;
          }

          ++v18;
        }

        while (v18 < v14);
      }
    }

    v68 = *(v2 + 8);
    if (v68)
    {
      free(*(v68 - 8));
    }

    *(v2 + 8) = 0;
    v69 = *(v2 + 7);
    if (v69)
    {
      free(*(v69 - 8));
    }

    *(v2 + 7) = 0;
    *v2 = 0;
    v70 = *(v71 - 8);

    free(v70);
  }
}

double *sub_277AC957C(uint64_t a1, int32x2_t *a2, uint64_t a3, char a4, int a5)
{
  v10 = malloc_type_malloc(0x9D6E7uLL, 0x5F484EBFuLL);
  if (v10)
  {
    *(((v10 + 39) & 0xFFFFFFFFFFFFFFE0) - 8) = v10;
    v11 = ((v10 + 39) & 0xFFFFFFFFFFFFFFE0);
  }

  else
  {
    v11 = 0;
  }

  v128 = v11;
  if (!v11)
  {
    return 0;
  }

  bzero(v11, 0x9D6C0uLL);
  *v128 = a1;
  *(v128 + 33789) = a1 + 49072;
  v12 = malloc_type_malloc(0x1ABuLL, 0x5F484EBFuLL);
  if (v12)
  {
    v13 = ((v12 + 23) & 0xFFFFFFFFFFFFFFF0);
    *(v13 - 1) = v12;
    if (v13)
    {
      *(((v12 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x190) = 0;
      *(((v12 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x170) = 0u;
      *(((v12 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x180) = 0u;
      *(((v12 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x150) = 0u;
      *(((v12 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x160) = 0u;
      *(((v12 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x130) = 0u;
      *(((v12 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x140) = 0u;
      *(((v12 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x110) = 0u;
      *(((v12 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x120) = 0u;
      *(((v12 + 23) & 0xFFFFFFFFFFFFFFF0) + 0xF0) = 0u;
      *(((v12 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x100) = 0u;
      *(((v12 + 23) & 0xFFFFFFFFFFFFFFF0) + 0xD0) = 0u;
      *(((v12 + 23) & 0xFFFFFFFFFFFFFFF0) + 0xE0) = 0u;
      *(((v12 + 23) & 0xFFFFFFFFFFFFFFF0) + 0xB0) = 0u;
      *(((v12 + 23) & 0xFFFFFFFFFFFFFFF0) + 0xC0) = 0u;
      *(((v12 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x90) = 0u;
      *(((v12 + 23) & 0xFFFFFFFFFFFFFFF0) + 0xA0) = 0u;
      *(((v12 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x70) = 0u;
      *(((v12 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x80) = 0u;
      *(((v12 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x50) = 0u;
      *(((v12 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x60) = 0u;
      *(((v12 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x30) = 0u;
      *(((v12 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x40) = 0u;
      *(((v12 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x10) = 0u;
      *(((v12 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x20) = 0u;
      *v13 = 0u;
    }
  }

  else
  {
    v13 = 0;
  }

  *(v128 + 30708) = v13;
  if (!*(v128 + 30708))
  {
    if (v128)
    {
      free(*(v128 - 1));
    }

    return 0;
  }

  v14 = setjmp((*(v128 + 30708) + 212));
  v15 = *(v128 + 30708);
  if (v14)
  {
    *(v15 + 208) = 0;
    sub_277ACA688(v128);
    return 0;
  }

  *(v15 + 208) = 1;
  *(v128 + 644192) = a4;
  *(v128 + 644464) = 1;
  *(v128 + 30776) = sub_277ACB3C0;
  *(v128 + 30777) = sub_277ACB354;
  if (a2[134].i32[1] == 1)
  {
    v17 = sub_277ACB2EC;
  }

  else
  {
    v17 = sub_277ACB284;
    if (*(v128 + 644192) == 1)
    {
      v17 = sub_277ACB2EC;
    }
  }

  *(v128 + 30778) = v17;
  *(v128 + 246176) = 0;
  v18 = malloc_type_malloc(0x5323uLL, 0x5F484EBFuLL);
  if (v18)
  {
    *(((v18 + 39) & 0xFFFFFFFFFFFFFFE0) - 8) = v18;
    v19 = (v18 + 39) & 0xFFFFFFFFFFFFFFE0;
  }

  else
  {
    v19 = 0;
  }

  *(v128 + 33790) = v19;
  if (!*(v128 + 33790))
  {
    sub_2779F5C10(*(v128 + 30708), 2, "Failed to allocate cm->fc");
  }

  v20 = malloc_type_malloc(0x5323uLL, 0x5F484EBFuLL);
  if (v20)
  {
    *(((v20 + 39) & 0xFFFFFFFFFFFFFFE0) - 8) = v20;
    v21 = (v20 + 39) & 0xFFFFFFFFFFFFFFE0;
  }

  else
  {
    v21 = 0;
  }

  *(v128 + 33791) = v21;
  if (!*(v128 + 33791))
  {
    sub_2779F5C10(*(v128 + 30708), 2, "Failed to allocate cm->default_frame_context");
  }

  bzero(*(v128 + 33790), 0x52FCuLL);
  bzero(*(v128 + 33791), 0x52FCuLL);
  *(v128 + 33866) = a3;
  memcpy(v128 + 33888, a2, 0x480uLL);
  v128[49422] = *a2;
  v128[30709] = *&a2[3];
  *(v128 + 644528) = 0;
  sub_277AC65E0(v128);
  *(v128 + 463508) = v128[30709];
  *(v128 + 30095) = v128 + 30672;
  *(v128 + 80475) = 0x100000001;
  *(v128 + 271084) = 0.0;
  *(v128 + 463520) = 0;
  v22 = *v128 + 85776;
  *(v22 + 16) = 0;
  *v22 = 0u;
  sub_277AC54E8(v128, a2, 0);
  *(v128 + 98846) = 0;
  *(v128 + 463532) = 0.0;
  *(v128 + 15368) = xmmword_277BB7980;
  *(v128 + 15366) = xmmword_277BB7060;
  *(v128 + 15367) = xmmword_277BB74D0;
  v128[34210] = 0.0;
  sub_277A6F6F4((v128 + 80528), *(v128 + 61418), *(v128 + 61419));
  if (*(v128 + 644192) == 1)
  {
    *(v128 + 67852) = a5;
  }

  *(v128 + 98778) = 8;
  v23 = *(v128 + 67820);
  v24 = *(v128 + 67853);
  v25 = *(v128 + 67854);
  *(v128 + 98779) = *(v128 + 67801);
  *(v128 + 98772) = 0;
  *(v128 + 98800) = v23;
  *(v128 + 98801) = 0;
  v26 = v24;
  *(v128 + 98774) = v24;
  *(v128 + 98775) = v25;
  if (!v24)
  {
    v27 = v128[33888];
    v28 = (v27 * 0.125);
    v29 = v27 * (*(v128 + 67782) * *(v128 + 67783));
    if (v28 >= 32)
    {
      v28 = 32;
    }

    if (v28 <= 4)
    {
      v28 = 4;
    }

    v30 = v28;
    if (v29 > 165888000.0)
    {
      v30 = (v29 * 4.0 / 165888000.0 + 0.5);
      if (v28 > v30)
      {
        v30 = v28;
      }
    }

    *(v128 + 98774) = v30;
    v26 = v30;
  }

  if (!v25)
  {
    v31 = (v128[33888] * 0.75);
    if (v31 >= 32)
    {
      v31 = 32;
    }

    v32 = (v31 & 1) + v31;
    if (v32 <= v26)
    {
      v32 = v26;
    }

    if (v32 <= 32)
    {
      v32 = 32;
    }

    *(v128 + 98775) = v32;
  }

  *(v128 + 98817) = 0;
  *(v128 + 98842) = 0;
  *(v128 + 98820) = 0;
  *(v128 + 395228) = 0.0;
  *(v128 + 98794) = 0;
  v128[49413] = 0.0;
  v128[49414] = 0.0;
  v128[49412] = 0.0;
  v33 = *(v128 + 33789);
  *&v34 = v128[30709];
  *(&v34 + 1) = *(v128 + 246148);
  *(v128 + 57933) = v34;
  v128[57935] = v128[30767];
  *(v128 + 115872) = *(v128 + 61536);
  *(v128 + 115873) = *(v33 + 72);
  v128[57937] = *(v33 + 96);
  *(v128 + 115876) = 0;
  *(v128 + 61408) = 0;
  *(v128 + 98809) = 0;
  *(v128 + 98804) = 0;
  *(v128 + 98806) = 0x7FFFFFFF;
  *(v128 + 98805) = 0;
  *(v128 + 67748) = -1;
  v128[57943] = 0.0;
  v128[34218] = 0.0;
  sub_277AC6A44(v128);
  *(v128 + 273754) = 0;
  v128[49382] = NAN;
  v35 = *(v128 + 68045);
  v127 = a2;
  if (v35 > 1 || !v35 && !*(v128 + 644192) && *(*v128 + 23172))
  {
    v36 = a2[33];
    if (*(*v128 + 23172))
    {
      v37 = *v128 + 0x8000;
      v38 = (*v128 + 35276);
      *(v37 + 2496) = *v128 + 23896;
      *(v37 + 2504) = 49;
      *(v38 + 236) = 0u;
      v38[13] = 0u;
      v38[14] = 0u;
      v38[11] = 0u;
      v38[12] = 0u;
      v38[9] = 0u;
      v38[10] = 0u;
      v38[7] = 0u;
      v38[8] = 0u;
      v38[5] = 0u;
      v38[6] = 0u;
      v38[3] = 0u;
      v38[4] = 0u;
      v38[1] = 0u;
      v38[2] = 0u;
      *v38 = 0u;
      v39 = *v128;
      if (*(*(*v128 + 23888) + 8))
      {
        *(v39 + 44344) = 0;
        *(v39 + 35536) = 0uLL;
        *(v39 + 35552) = 0uLL;
        *(v39 + 44352) = 0uLL;
        *(v39 + 35608) = 100;
        *(v39 + 35584) = 0x3FF0000000000000;
        *(v39 + 35592) = xmmword_277BB7990;
      }
    }

    else
    {
      v40 = a2[32];
      **(*v128 + 23888) = v40;
      v128[80567] = **(*v128 + 23888);
      v41 = *&v36 / 0xE8uLL - 1;
      *(*(*v128 + 23888) + 8) = **(*v128 + 23888) + 232 * v41;
      sub_2779B3570(*v128 + 23896, v40, v41);
      v42 = *v128;
      v43 = *(*v128 + 23888);
      v44 = *(v43 + 8);
      if (v44)
      {
        v45 = (v42 + 0x8000);
        v46 = *v43;
        v47 = v44 - 232;
        if (v44 - 232 > v46)
        {
          v48 = v46;
          do
          {
            v49 = v48 + 29;
            v50 = v48[37];
            v51 = v50 > v48[35] && v50 >= 0.5;
            *(v48 + 24) = v51;
            v48 += 29;
          }

          while (v49 < v47);
        }

        v126 = v42 + 0x8000;
        if (v47 >= v46)
        {
          *(v44 - 40) = 0;
        }

        sub_27797318C(v46, v44, *(v128 + 30708));
        sub_277973568(**(v42 + 23888), *(*(v42 + 23888) + 8));
        v52 = *(v42 + 23888);
        v53 = *(v52 + 24);
        v54 = *(v52 + 8);
        v55 = v54[6];
        v57 = v54[3];
        v56 = v54[4];
        *(v53 + 80) = v54[5];
        *(v53 + 96) = v55;
        *(v53 + 48) = v57;
        *(v53 + 64) = v56;
        v58 = v54[10];
        v60 = v54[7];
        v59 = v54[8];
        *(v53 + 144) = v54[9];
        *(v53 + 160) = v58;
        *(v53 + 112) = v60;
        *(v53 + 128) = v59;
        v62 = v54[12];
        v61 = v54[13];
        v63 = v54[11];
        *(v53 + 224) = *(v54 + 28);
        *(v53 + 192) = v62;
        *(v53 + 208) = v61;
        *(v53 + 176) = v63;
        v64 = *v54;
        v65 = v54[2];
        *(v53 + 16) = v54[1];
        *(v53 + 32) = v65;
        *v53 = v64;
        memmove(*(*(v42 + 23888) + 32), v54, 0xE8uLL);
        v66 = *(v53 + 176) * 10000000.0 / *(v53 + 168);
        if (v66 < 0.1)
        {
          v66 = 30.0;
        }

        v128[49422] = v66;
        sub_277A5BB98(v128, *(v128 + 61418), *(v128 + 61419));
        v67 = *(v53 + 176);
        *(v42 + 35536) = (*(v53 + 168) * *(v128 + 33905) / 10000000.0);
        *(v42 + 35600) = 1;
        v68 = *(v128 + 80567);
        v69 = *(v128 + 271300);
        v70.i64[0] = v69;
        v70.i64[1] = SHIDWORD(v69);
        v71 = vdivq_f64(vmulq_n_f64(vcvtq_f64_s64(v70), *(v53 + 32) / (v67 + dbl_277BB7020[v67 < 0.0])), vdupq_n_s64(0x4059000000000000uLL));
        *(v42 + 35544) = v71;
        v72 = *(v42 + 23888);
        v73 = *(v72 + 8);
        v74 = 0.0;
        if (v68 < v73)
        {
          v75 = v68;
          v76 = *(v72 + 24);
          v77 = *(v128 + 67824);
          v78 = v71;
          v79 = 0.0;
          do
          {
            v79 = v79 + sub_277973FD8((v128 + 57933), v76, v75, v77, v78.f64[0], v78.f64[1]);
            v75 = (v75 + 232);
            v74 = v79;
          }

          while (v75 < v73);
        }

        v45[349] = v74;
        v80 = *v128;
        *(v80 + 44344) = 0;
        *(v80 + 44352) = 0u;
        *(v126 + 2836) = 0x6400000064;
        v45[352] = 1.0;
        *(v45 + 353) = 0x100000001;
      }
    }
  }

  if (!*(v128 + 67796))
  {
    goto LABEL_91;
  }

  v81 = *(v128 + 30708);
  v82 = malloc_type_malloc(0x10017uLL, 0x5F484EBFuLL);
  if (v82)
  {
    v83 = (v82 + 23) & 0xFFFFFFFFFFFFFFF0;
    *(v83 - 8) = v82;
    *(v128 + 12858) = v83;
    if (v83)
    {
      goto LABEL_76;
    }
  }

  else
  {
    v128[12858] = 0.0;
  }

  sub_2779F5C10(v81, 2, "Failed to allocate obmc_buffer->wsrc");
LABEL_76:
  v84 = malloc_type_malloc(0x10017uLL, 0x5F484EBFuLL);
  if (v84)
  {
    v85 = (v84 + 23) & 0xFFFFFFFFFFFFFFF0;
    *(v85 - 8) = v84;
    *(v128 + 12859) = v85;
    if (v85)
    {
      goto LABEL_81;
    }
  }

  else
  {
    v128[12859] = 0.0;
  }

  sub_2779F5C10(v81, 2, "Failed to allocate obmc_buffer->mask");
LABEL_81:
  v86 = malloc_type_malloc(0xC017uLL, 0x5F484EBFuLL);
  if (v86)
  {
    v87 = (v86 + 23) & 0xFFFFFFFFFFFFFFF0;
    *(v87 - 8) = v86;
    *(v128 + 12860) = v87;
    if (v87)
    {
      goto LABEL_86;
    }
  }

  else
  {
    v128[12860] = 0.0;
  }

  sub_2779F5C10(v81, 2, "Failed to allocate obmc_buffer->above_pred");
LABEL_86:
  v88 = malloc_type_malloc(0xC017uLL, 0x5F484EBFuLL);
  if (v88)
  {
    v89 = (v88 + 23) & 0xFFFFFFFFFFFFFFF0;
    *(v89 - 8) = v88;
    *(v128 + 12861) = v89;
    if (v89)
    {
      goto LABEL_91;
    }
  }

  else
  {
    v128[12861] = 0.0;
  }

  sub_2779F5C10(v81, 2, "Failed to allocate obmc_buffer->left_pred");
LABEL_91:
  v90 = 1;
  v91 = 0;
  do
  {
    v92 = v90;
    v93 = 1;
    v94 = 0;
    do
    {
      v95 = v93;
      v96 = malloc_type_malloc(0x4017uLL, 0x5F484EBFuLL);
      if (v96)
      {
        *(((v96 + 23) & 0xFFFFFFFFFFFFFFF0) - 8) = v96;
        v97 = (v96 + 23) & 0xFFFFFFFFFFFFFFF0;
      }

      else
      {
        v97 = 0;
      }

      *&v128[2 * v91 + 26577 + v94] = v97;
      if (!*&v128[2 * v91 + 26577 + v94])
      {
        sub_2779F5C10(*(v128 + 30708), 2, "Failed to allocate cpi->td.mb.intrabc_hash_info.hash_value_buffer[x][y]");
      }

      v94 = 1;
      v93 = 0;
    }

    while ((v95 & 1) != 0);
    v91 = 1;
    v90 = 0;
  }

  while ((v92 & 1) != 0);
  *(v128 + 53684) = 0;
  sub_2779C44C0(v128, v127[129].u32[1]);
  sub_2779C32A8(v128, v127[129].u32[1]);
  v98 = vrev64_s32(v127[4]);
  v99 = vbsl_s8(vceqz_s32(v98), *(v128 + 246148), (*&vshr_n_s32(vadd_s32(v98, 0x700000007), 2uLL) & 0xFFFFFFFEFFFFFFFELL));
  v100 = v99.i32[1];
  v101 = v99.i32[0];
  v102 = (v99.i32[0] * v99.i32[1]) >> 2;
  *(v128 + 80533) = sub_2779724A8((v99.i32[0] * v99.i32[1]) >> 2, 1uLL);
  if (!*(v128 + 80533))
  {
    sub_2779F5C10(*(v128 + 30708), 2, "Failed to allocate cpi->consec_zero_mv");
  }

  *(v128 + 161068) = v102;
  v128[80559] = 0.0;
  v128[80565] = 0.0;
  *(v128 + 161196) = 0;
  *(v128 + 161197) = 0;
  v103 = v100 + 3;
  if (v100 < -3)
  {
    v103 = v100 + 6;
  }

  v104 = v103 >> 2;
  v105 = v101 + 3;
  if (v101 < -3)
  {
    v105 = v101 + 6;
  }

  v106 = (v105 >> 2) * v104;
  *(v128 + 80473) = sub_2779724A8(v106, 8uLL);
  if (!*(v128 + 80473))
  {
    sub_2779F5C10(*(v128 + 30708), 2, "Failed to allocate cpi->ssim_rdmult_scaling_factors");
  }

  *(v128 + 34117) = sub_2779724A8(v106, 8uLL);
  if (!*(v128 + 34117))
  {
    sub_2779F5C10(*(v128 + 30708), 2, "Failed to allocate cpi->tpl_rdmult_scaling_factors");
  }

  *&v107 = 0x8000000080000000;
  *(&v107 + 1) = 0x8000000080000000;
  *(v128 + 5377) = v107;
  *(v128 + 21512) = 0x7FFFFFFF;
  sub_277A7FF54(v128 + 1, v128 + 61558, *(*(v128 + 33789) + 72));
  v108 = v128 + 31706;
  if (*(*(v128 + 33789) + 77))
  {
    v109 = 1;
  }

  else
  {
    v109 = 3;
  }

  v110 = 0;
  v111 = v128 + 30702;
  do
  {
    v112 = v128 + 31649;
    v125 = v108;
    v113 = v108;
    v114 = v111;
    v115 = 0;
    do
    {
      v116 = 0;
      v117 = v112;
      for (i = 0; i != 19; ++i)
      {
        if (i > 0x10u)
        {
          if (i == 17)
          {
            v119 = 9;
            goto LABEL_125;
          }

          if (i == 18)
          {
            v119 = 10;
            goto LABEL_125;
          }
        }

        else
        {
          v119 = 3;
          if (i - 11 < 2 || i == 4)
          {
            goto LABEL_125;
          }
        }

        v119 = i;
LABEL_125:
        if (v110 == 15)
        {
          v117[912] = 0.0;
          *v117 = 0.0;
        }

        else
        {
          v120 = &v114[i];
          if (i == v119)
          {
            v121 = dword_277BFE7FC[i];
            *&v113[i] = &unk_277BFE84C + 6688 * v110 + 3344 * (v115 != 0) + v116;
            *(v120 + 92) = &unk_277C1702C + 6688 * v110 + 3344 * (v115 != 0) + v116;
            v116 += v121;
          }

          else
          {
            v113[i] = v128[57 * v110 + 31706 + 19 * v115 + v119];
            v120[92] = v128[57 * v110 + 30794 + 19 * v115 + v119];
          }
        }

        ++v117;
      }

      ++v115;
      v112 += 19;
      v114 += 19;
      v113 += 19;
    }

    while (v115 != v109);
    ++v110;
    v111 += 57;
    v108 = v125 + 57;
  }

  while (v110 != 16);
  sub_277A46DC8((v128 + 33100), *(v128 + 67164));
  v122 = (v128 + 33104);
  for (j = 0; j != 64; ++j)
  {
    v124 = 0x101010101010101 * (j >> 4);
    *v122 = v124;
    v122[1] = v124;
    v122 += 6;
  }

  *(v128 + 245696) = 8;
  *(v128 + 61422) = v127[3].i32[0];
  *(v128 + 61423) = v127[3].i32[1];
  v128[80572] = 0.0;
  if (*(v128 + 68045) == 3)
  {
    sub_2779F5C10(*(v128 + 30708), 1, "To utilize three-pass encoding, libaom must be built with CONFIG_THREE_PASS=1 & CONFIG_AV1_DECODER=1.");
  }

  v128[80573] = 0.0;
  *(v128 + 161152) = 0;
  *(*(v128 + 30708) + 208) = 0;
  return v128;
}

void sub_277ACA688(uint64_t *a1)
{
  if (a1)
  {
    v2 = a1 + 80418;
    v3 = a1 + 79293;
    v4 = a1 + 30665;
    v5 = a1 + 29896;
    v6 = a1[30708];
    if (v6)
    {
      strcpy((a1[30708] + 199), "AAAAAAAA");
      *&v7 = 0x4141414141414141;
      *(&v7 + 1) = 0x4141414141414141;
      *(v6 + 184) = v7;
      *(v6 + 168) = v7;
      *(v6 + 152) = v7;
      *(v6 + 136) = v7;
      *(v6 + 120) = v7;
      *(v6 + 104) = v7;
      *(v6 + 88) = v7;
      *(v6 + 72) = v7;
      *(v6 + 56) = v7;
      *(v6 + 40) = v7;
      *(v6 + 24) = v7;
      *(v6 + 8) = v7;
      v8 = a1[30708];
      if (v8)
      {
        free(*(v8 - 8));
      }
    }

    v9 = v5[234];
    if (v9)
    {
      free(*(v9 - 8));
    }

    v11 = v3[46];
    v10 = v3[47];
    v12 = *v2;
    v13 = v3[55];
    v14 = v3[90];
    if (v11)
    {
      pthread_mutex_destroy(v3[46]);
      free(*(v11 - 8));
    }

    if (v10)
    {
      pthread_cond_destroy(v10);
      free(*&v10[-1].__opaque[32]);
    }

    if (v12)
    {
      pthread_mutex_destroy(v12);
      free(*&v12[-1].__opaque[48]);
    }

    if (v13)
    {
      pthread_mutex_destroy(v13);
      free(*&v13[-1].__opaque[48]);
    }

    if (v14)
    {
      pthread_mutex_destroy(v14);
      free(*&v14[-1].__opaque[48]);
    }

    v15 = a1 + 57927;
    sub_277AF65C4(a1);
    if (*v3 >= 2)
    {
      sub_277AF64E0((*a1 + 85848));
      sub_2779CE694((a1 + 79351));
      v16 = v2[4];
      if (v16)
      {
        pthread_mutex_destroy(v16);
        v17 = v2[4];
        if (v17)
        {
          free(*(v17 - 8));
        }
      }

      sub_2779D1E04((a1 + 79367));
      v18 = v2[2];
      if (v18)
      {
        pthread_mutex_destroy(v18);
        v19 = v2[2];
        if (v19)
        {
          free(*(v19 - 8));
        }
      }

      *(v2 + 6) = 0;
    }

    if (*(a1[33789] + 77))
    {
      v20 = 1;
    }

    else
    {
      v20 = 3;
    }

    v21 = v4[31];
    if (v21)
    {
      free(*(v21 - 8));
    }

    v4[31] = 0;
    *(v4 + 64) = 0;
    v22 = a1[57943];
    if (v22)
    {
      free(*(v22 - 8));
    }

    a1[57943] = 0;
    *(a1 + 115888) = 0;
    v3[10] = 0;
    if (*v15)
    {
      free(*(*v15 - 8));
    }

    v23 = a1 + 34117;
    *v15 = 0;
    sub_277A4C9A0(a1[57929]);
    a1[57929] = 0;
    v24 = a1[57931];
    if (v24)
    {
      free(*(v24 - 8));
    }

    v25 = a1 + 12858;
    a1[57931] = 0;
    v26 = v2[55];
    if (v26)
    {
      free(*(v26 - 8));
    }

    v2[55] = 0;
    if (*v23)
    {
      free(*(*v23 - 8));
    }

    *v23 = 0;
    v27 = a1[12859];
    if (v27)
    {
      free(*(v27 - 8));
    }

    v28 = a1[12860];
    if (v28)
    {
      free(*(v28 - 8));
    }

    v29 = a1[12861];
    if (v29)
    {
      free(*(v29 - 8));
    }

    if (*v25)
    {
      free(*(*v25 - 8));
    }

    *v25 = 0u;
    *(a1 + 6430) = 0u;
    v30 = v5[18];
    if (v30)
    {
      free(*(v30 - 8));
    }

    v5[18] = 0;
    v31 = v5[19];
    if (v31)
    {
      free(*(v31 - 8));
    }

    v32 = a1 + 26577;
    v5[19] = 0;
    v33 = v5[16];
    if (v33)
    {
      free(*(v33 - 8));
    }

    v5[16] = 0;
    v34 = v5[17];
    if (v34)
    {
      free(*(v34 - 8));
    }

    v5[17] = 0;
    sub_2779C9C3C(v4[5], v20, 0, 0, *(a1 + 395528));
    v4[5] = 0;
    if (*v32)
    {
      free(*(*v32 - 8));
    }

    *v32 = 0;
    v35 = a1[26578];
    if (v35)
    {
      free(*(v35 - 8));
    }

    a1[26578] = 0;
    v36 = a1[26579];
    if (v36)
    {
      free(*(v36 - 8));
    }

    a1[26579] = 0;
    v37 = a1[26580];
    if (v37)
    {
      free(*(v37 - 8));
    }

    a1[26580] = 0;
    sub_277AE4284(a1 + 26581);
    v38 = a1[33879];
    if (v38)
    {
      free(*(v38 - 8));
    }

    a1[33879] = 0;
    v39 = v4[3];
    if (v39)
    {
      free(*(v39 - 8));
    }

    v4[3] = 0;
    v40 = v4[4];
    if (v40)
    {
      free(*(v40 - 8));
    }

    v4[4] = 0;
    v41 = v5[235];
    if (v41)
    {
      free(*(v41 - 8));
    }

    v5[235] = 0;
    sub_2779C9AE8(v5[237], v20);
    v5[237] = 0;
    if (*(a1 + 68351))
    {
      v5[243] *= 2;
    }

    v42 = v5[240];
    if (v42)
    {
      free(*(v42 - 8));
    }

    v5[240] = 0;
    v43 = v5[241];
    if (v43)
    {
      free(*(v43 - 8));
    }

    v5[241] = 0;
    v44 = v5[242];
    if (v44)
    {
      free(*(v44 - 8));
    }

    v5[242] = 0;
    v45 = v5[243];
    if (v45)
    {
      free(*(v45 - 8));
    }

    v5[243] = 0;
    v46 = v5[244];
    if (v46)
    {
      free(*(v46 - 8));
    }

    v5[244] = 0;
    v47 = v5[245];
    if (v47)
    {
      free(*(v47 - 8));
    }

    v5[245] = 0;
    v48 = v5[246];
    if (v48)
    {
      free(*(v48 - 8));
    }

    v5[246] = 0;
    v49 = v5[247];
    if (v49)
    {
      free(*(v49 - 8));
    }

    v5[247] = 0;
    v50 = v5[248];
    if (v50)
    {
      free(*(v50 - 8));
    }

    v5[248] = 0;
    v51 = v4[2];
    if (v51)
    {
      free(*(v51 - 8));
    }

    v4[2] = 0;
    if (*v4)
    {
      free(*(*v4 - 8));
    }

    v52 = a1 + 25292;
    *v4 = 0;
    sub_2779A4878(a1[34177]);
    v53 = a1[34177];
    if (v53)
    {
      free(*(v53 - 8));
    }

    a1[34177] = 0;
    if (*v5)
    {
      free(*(*v5 - 8));
    }

    *v5 = 0;
    v54 = a1[25294];
    if (v54)
    {
      free(*(v54 - 8));
    }

    a1[25294] = 0;
    v55 = 10758;
    v56 = v20;
    do
    {
      v57 = a1[v55];
      if (v57)
      {
        free(*(v57 - 8));
      }

      a1[v55] = 0;
      v55 += 17;
      --v56;
    }

    while (v56);
    v58 = a1[12156];
    if (v58)
    {
      free(*(v58 - 8));
    }

    a1[12156] = 0;
    if (*v52)
    {
      free(*(*v52 - 8));
    }

    *v52 = 0;
    v59 = v5[5];
    if (v59)
    {
      free(*(v59 - 8));
    }

    v5[5] = 0;
    v60 = v5[229];
    if (v60)
    {
      free(*(v60 - 8));
    }

    v5[229] = 0;
    sub_277A36F80(a1);
    v61 = v4[111];
    if (v61)
    {
      v61((a1 + 30767));
    }

    sub_277A82C68(a1 + 33867);
    sub_27797ABB4((a1 + 34222));
    v62 = 0;
    v63 = a1 + 33587;
    do
    {
      v64 = v63[v62];
      if (v64)
      {
        free(*(v64 - 8));
      }

      v63[v62] = 0;
      v62 += 8;
    }

    while (v62 != 24);
    v65 = a1[33608];
    if (v65)
    {
      free(*(v65 - 8));
    }

    a1[33608] = 0;
    v66 = a1[33609];
    if (v66)
    {
      free(*(v66 - 8));
    }

    a1[33609] = 0;
    v67 = 3;
    v68 = a1 + 33588;
    do
    {
      if (*v68)
      {
        free(*(*v68 - 8));
      }

      v69 = v68[1];
      if (v69)
      {
        free(*(v69 - 8));
      }

      *v68 = 0;
      v68[1] = 0;
      v68 += 8;
      --v67;
    }

    while (v67);
    sub_27797ABB4((a1 + 33610));
    v70 = v2[109];
    if (v70)
    {
      free(*(v70 - 8));
    }

    v2[109] = 0;
    v71 = v2[108];
    if (v71)
    {
      free(*(v71 - 8));
    }

    v2[108] = 0;
    if (*(a1 + 68045) != 1 && *(v2 + 848) != 1)
    {
      v72 = 0;
      v135 = *a1;
      v73 = *(a1 + 67335);
      v74 = a1 + 33639;
      do
      {
        v75 = v74[v72];
        if (v75)
        {
          free(*(v75 - 8));
        }

        v74[v72++] = 0;
      }

      while (v72 != 3);
      v76 = a1 + 33636;
      v77 = a1[33642];
      if (v77)
      {
        free(*(v77 - 8));
      }

      v78 = 0;
      a1[33642] = 0;
      do
      {
        v79 = v76[v78];
        if (v79)
        {
          free(*(v79 - 8));
        }

        v76[v78++] = 0;
      }

      while (v78 != 3);
      v80 = v2[5];
      if (v80)
      {
        if (v73 < 1)
        {
          goto LABEL_157;
        }

        v81 = 0;
        do
        {
          v82 = v2[5];
          v83 = *(v82 + v81);
          if (v83)
          {
            pthread_mutex_destroy(v83);
            v82 = v2[5];
            v84 = *(v82 + v81);
            if (v84)
            {
              free(*(v84 - 8));
              v82 = v2[5];
            }
          }

          v85 = *(v82 + v81 + 8);
          if (v85)
          {
            pthread_cond_destroy(v85);
            v86 = *(v2[5] + v81 + 8);
            if (v86)
            {
              free(*(v86 - 8));
            }
          }

          v81 += 24;
        }

        while (24 * v73 != v81);
        v80 = v2[5];
        if (v80)
        {
LABEL_157:
          free(*(v80 - 8));
        }

        v2[5] = 0;
      }

      v87 = *(a1 + 67336);
      if (v87 >= 2 && *(v135 + 75112))
      {
        v134 = v4;
        v88 = 488 * v87 - 472;
        do
        {
          v89 = *(v135 + 75112);
          v90 = v89 + 488 * (v87 - 1);
          v91 = *(v90 + 40);
          if (v91)
          {
            free(*(v91 - 8));
          }

          v92 = 0;
          *(v90 + 40) = 0;
          v93 = v89 + v88;
          do
          {
            v94 = *(v93 + v92);
            if (v94)
            {
              free(*(v94 - 8));
            }

            *(v93 + v92) = 0;
            v92 += 8;
          }

          while (v92 != 24);
          v88 -= 488;
        }

        while (v87-- > 2);
        v96 = *(v135 + 75112);
        if (v96)
        {
          free(*(v96 - 8));
        }

        *(v135 + 75112) = 0;
        v4 = v134;
      }
    }

    v97 = 80460;
    do
    {
      v98 = a1[v97];
      if (v98)
      {
        free(*(v98 - 8));
      }

      a1[v97++] = 0;
      --v20;
    }

    while (v20);
    v99 = v2[45];
    if (v99)
    {
      free(*(v99 - 8));
    }

    v2[45] = 0;
    sub_27797ABB4((a1 + 34248));
    sub_27797ABB4((a1 + 34036));
    sub_27797ABB4((a1 + 34063));
    sub_27797ABB4((a1 + 34090));
    sub_27797ABB4((a1 + 80490));
    v100 = a1[57946];
    if (v100)
    {
      free(*(v100 - 8));
    }

    a1[57946] = 0;
    v101 = a1[62042];
    if (v101)
    {
      free(*(v101 - 8));
    }

    a1[62042] = 0;
    *(a1 + 115890) = 0;
    sub_2779C963C((a1 + 30096));
    v102 = v5[209];
    if (v102)
    {
      free(*(v102 - 8));
    }

    v5[209] = 0;
    v103 = a1[12862];
    if (v103)
    {
      free(*(v103 - 8));
    }

    v104 = a1[12863];
    if (v104)
    {
      free(*(v104 - 8));
    }

    v105 = a1[12864];
    if (v105)
    {
      free(*(v105 - 8));
    }

    v106 = a1[12865];
    if (v106)
    {
      free(*(v106 - 8));
    }

    v107 = a1[12866];
    if (v107)
    {
      free(*(v107 - 8));
    }

    v108 = a1[12867];
    if (v108)
    {
      free(*(v108 - 8));
    }

    a1[12867] = 0;
    *(a1 + 12863) = 0u;
    *(a1 + 12865) = 0u;
    v109 = a1[12868];
    if (v109)
    {
      free(*(v109 - 8));
    }

    v110 = a1[12869];
    if (v110)
    {
      free(*(v110 - 8));
    }

    v111 = a1[12870];
    if (v111)
    {
      free(*(v111 - 8));
    }

    v112 = v2[47];
    if (v112)
    {
      sub_27798BF78(v112);
      v2[47] = 0;
    }

    v113 = v2[46];
    if (v113)
    {
      v114 = *v113;
      if (*v113)
      {
        do
        {
          v115 = *(v114 + 664);
          free(*(v114 - 8));
          v114 = v115;
        }

        while (v115);
      }

      *v113 = 0;
      v113[1] = 0;
      v116 = v2[46];
      if (v116)
      {
        free(*(v116 - 8));
      }

      v2[46] = 0;
    }

    if (*(*a1 + 51016))
    {
      v117 = *(v2 + 114);
      if (v117 >= 1)
      {
        v118 = 0;
        v119 = *(v2 + 115);
        do
        {
          if (v119 >= 1)
          {
            v120 = 0;
            do
            {
              v121 = v2[99] + 13176 * (v120 + v118 * v119);
              v122 = *(v121 + 13144);
              if (v122)
              {
                free(*(v122 - 8));
                v119 = *(v2 + 115);
              }

              *(v121 + 13144) = 0;
              ++v120;
            }

            while (v120 < v119);
            v117 = *(v2 + 114);
          }

          ++v118;
        }

        while (v118 < v117);
      }
    }

    v123 = v2[99];
    if (v123)
    {
      free(*(v123 - 8));
    }

    v2[99] = 0;
    v124 = v2[115];
    if (v124)
    {
      free(*(v124 - 8));
    }

    v2[115] = 0;
    *(v2 + 232) = 0;
    v125 = v2[156];
    if (v125)
    {
      free(*(v125 - 8));
    }

    v2[156] = 0;
    v126 = v2[141];
    if (v126)
    {
      free(*(v126 - 8));
    }

    v2[141] = 0;
    if (*(a1 + 68056))
    {
      v127 = v2[142];
      if (v127)
      {
        free(*(v127 - 8));
      }

      v2[142] = 0;
      v128 = v2[143];
      if (v128)
      {
        free(*(v128 - 8));
      }

      v2[143] = 0;
    }

    v129 = v2[147];
    if (v129)
    {
      free(*(v129 - 8));
    }

    v2[147] = 0;
    if (*(v2 + 238))
    {
      (v2[126])(v2[121]);
    }

    v130 = v4[111];
    if (v130)
    {
      v130((a1 + 30767));
    }

    sub_277A82C68(a1 + 33867);
    v131 = a1[33790];
    if (v131)
    {
      free(*(v131 - 8));
    }

    a1[33790] = 0;
    v132 = a1[33791];
    if (v132)
    {
      free(*(v132 - 8));
    }

    a1[33791] = 0;
    v133 = *(a1 - 1);

    free(v133);
  }
}

uint64_t sub_277ACB284(uint64_t result, int a2, int a3, int a4)
{
  *(result + 40) = a4;
  v4 = (a2 + 7) >> 2;
  *(result + 16) = v4 & 0xFFFFFFFE;
  v5 = (a3 + 7) >> 2;
  v6 = v5 & 0xFFFFFFFE;
  v7 = ((v4 & 0xFFFFFFFE) + 31) & 0xFFFFFFE0;
  *(result + 60) = v7;
  v8 = (v4 + 2) >> 2;
  v9 = (v5 + 2) >> 2;
  *result = v9;
  *(result + 4) = v8;
  *(result + 8) = v9 * v8;
  *(result + 12) = v6;
  *(result + 36) = (v7 + byte_277C3F990[a4] - 1) / byte_277C3F990[a4];
  return result;
}

uint64_t sub_277ACB2EC(uint64_t result, int a2, int a3)
{
  *(result + 40) = 6;
  v3 = (a2 + 7) >> 2;
  *(result + 16) = v3 & 0xFFFFFFFE;
  v4 = (a3 + 7) >> 2;
  v5 = v4 & 0xFFFFFFFE;
  v6 = ((v3 & 0xFFFFFFFE) + 31) & 0xFFFFFFE0;
  *(result + 60) = v6;
  v7 = (v3 + 2) >> 2;
  v8 = (v4 + 2) >> 2;
  *result = v8;
  *(result + 4) = v7;
  *(result + 8) = v8 * v7;
  *(result + 12) = v5;
  v9 = v6 | 3;
  v10 = v6 | 4;
  if (v9 < 0)
  {
    v9 = v10;
  }

  *(result + 36) = v9 >> 2;
  return result;
}

void sub_277ACB354(uint64_t a1)
{
  v2 = ((*(a1 + 12) + 31) & 0xFFFFFFFFFFFFFFE0) * *(a1 + 60);
  bzero(*(a1 + 24), 176 * *(a1 + 32));
  bzero(*(a1 + 48), 8 * v2);
  v3 = *(a1 + 64);

  bzero(v3, v2);
}

void sub_277ACB3C0(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    free(*(v2 - 8));
  }

  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v3 = *(a1 + 48);
  if (v3)
  {
    free(*(v3 - 8));
  }

  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  v4 = *(a1 + 64);
  if (v4)
  {
    free(*(v4 - 8));
  }

  *(a1 + 64) = 0;
}

uint64_t sub_277ACB424(uint64_t result)
{
  v1 = (result + 395688);
  v2 = *(result + 245672);
  if (v2 <= *(result + 245676))
  {
    v2 = *(result + 245676);
  }

  if (v2 <= 16)
  {
    v3 = 16;
  }

  else
  {
    v3 = v2;
  }

  v4 = -1;
  do
  {
    ++v4;
  }

  while (v3 << v4 < 1023);
  if (v4 >= 9)
  {
    v4 = 9;
  }

  *(result + 396700) = v4;
  if (*v1)
  {
    if ((*(result + 245616) & 0xFD) == 0)
    {
LABEL_28:
      *(result + 396696) = v2;
      return result;
    }

    if ((*(result + 246096) || *(*result + *(result + 463456) + 400) == 6) && *v1 >= 2)
    {
      v5 = *(result + 396696);
      if (v5 != -1)
      {
        if (v2 >= 2 * v5)
        {
          v2 = 2 * v5;
        }

        if (v2 <= 16)
        {
          v6 = 16;
        }

        else
        {
          v6 = v2;
        }

        v7 = -1;
        do
        {
          ++v7;
        }

        while (v6 << v7 < 1023);
        if (v7 >= 9)
        {
          v7 = 9;
        }

        *(result + 396700) = v7;
      }
    }

    if (*(result + 644464) == 1)
    {
      v2 = -1;
      goto LABEL_28;
    }
  }

  return result;
}

void sub_277ACB51C(uint64_t a1, uint64_t a2)
{
  v41 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 270312);
  v3 = *(v2 + 56);
  if (v3 == 2)
  {
    v4 = a1 + 643736;
    if (*(a1 + 271996) == 1)
    {
      *(a2 + 3) = 1;
      *(a2 + 4) = *(a1 + 272208) != 1;
      *v4 = 0x100000001;
    }

    else if (*(a1 + 272208) == 1 || *(a1 + 396384) && !*(a1 + 396432))
    {
      *(a2 + 3) = 0;
    }

    else
    {
      v5 = *(a1 + 272712);
      v6 = *v5;
      v7 = v5[2];
      v8 = v7 * *v5;
      v33 = v7;
      if (v7 >= 16)
      {
        v29 = v7 * v6;
        v30 = a1 + 643736;
        v11 = 0;
        v12 = 0;
        v9 = 0;
        v13 = *(v5 + 5);
        v14 = v5[48] & 8;
        v15 = v5[8];
        v37 = *(v2 + 72);
        v16 = 16;
        v31 = a2;
        v32 = v13;
        do
        {
          v35 = v16;
          v36 = v11;
          v34 = v13;
          if (v6 >= 16)
          {
            v17 = 0;
            v18 = v32 + v11 * v15;
            for (i = 16; i <= v6; i += 16)
            {
              v39 = 0;
              if (v14)
              {
                sub_277A9FD00(v18 + v17, v15, 16, 0x10u, v37, 0, v40, &v39, 0);
                v25 = v39;
              }

              else
              {
                bzero(v40, 0x400uLL);
                v20 = 0;
                v21 = v13;
                do
                {
                  for (j = 0; j != 16; ++j)
                  {
                    ++*&v40[4 * *(v21 + j)];
                  }

                  ++v20;
                  v21 += v15;
                }

                while (v20 != 16);
                v23 = 0;
                v24 = 0uLL;
                do
                {
                  v24 = vsubq_s32(v24, vtstq_s32(*&v40[v23], *&v40[v23]));
                  v23 += 16;
                }

                while (v23 != 1024);
                v25 = vaddvq_s32(v24);
              }

              if ((v25 - 2) <= 2)
              {
                ++v12;
                if (sub_277A5D00C(*a1, a1 + 86480, v18 + v17, v15, 6, 0, v14))
                {
                  ++v9;
                }
              }

              v17 += 16;
              v13 += 16;
            }
          }

          v16 = v35 + 16;
          v11 = v36 + 16;
          v13 = v34 + 16 * v15;
        }

        while (v35 + 16 <= v33);
        v10 = 2560 * v12;
        v4 = v30;
        a2 = v31;
        v8 = v29;
      }

      else
      {
        v9 = 0;
        v10 = 0;
      }

      v26 = v10 > v8;
      *(a2 + 3) = v26;
      v27 = 3072 * v9 > v8 && v10 > v8;
      *(a2 + 4) = v27;
      *v4 = v26;
      v28 = v10 > 4 * v8 && 7680 * v9 > v8;
      if (v27)
      {
        v28 = 1;
      }

      *(v4 + 4) = v28;
    }
  }

  else
  {
    *(a2 + 4) = v3 != 0;
    *(a2 + 3) = v3 != 0;
  }
}

uint64_t sub_277ACB81C(uint64_t a1, int a2, int a3, int a4)
{
  v5 = a1 + 463516;
  v6 = (a1 + 270312);
  v7 = *(a1 + 270312);
  if (*(a1 + 463520) == 1 && *(v7 + 76) == a2 && *(v7 + 96) == a3 && *(v7 + 100) == a4)
  {
    return 0;
  }

  v9 = (a1 + 245848);
  *(v7 + 96) = a3;
  *(v7 + 100) = a4;
  *(v7 + 76) = a2;
  sub_2779C44C0(a1, *(a1 + 272140));
  sub_2779C32A8(a1, *(v6 + 457));
  if (*(v6 + 467) != 1 && *(a1 + 644192) != 1)
  {
    v14 = *a1;
    if (*(v6 + 212) < 1)
    {
      *(v14 + 48384) = 0;
    }

    else
    {
      v15 = *(v6 + 274);
      *(v14 + 48384) = v15 > 1;
      if (v15 > 1)
      {
        v16 = 0;
        v17 = *v6;
        v18 = v14 + 48392;
        v19 = 1;
        do
        {
          v20 = sub_27797AC44(v18 + 208 * v16, *(v6 + 204), *(v6 + 205), *(v17 + 96), *(v17 + 100), *(v17 + 76), *(v6 + 455), *(a1 + 246128), v10, v11, v12, v13, *(a1 + 644780), 0);
          if ((v19 & 1) == 0)
          {
            break;
          }

          v19 = 0;
          v16 = 1;
        }

        while (!v20);
        if (v20)
        {
          return 2;
        }
      }
    }
  }

  if (*v9)
  {
    --**v9;
    *v9 = 0;
  }

  v21 = 0;
  v22 = a1 + 246032;
  do
  {
    v23 = *(v22 + v21);
    if (v23)
    {
      --*v23;
      *(v22 + v21) = 0;
    }

    v21 += 8;
  }

  while (v21 != 64);
  sub_277ACB9E8(a1);
  result = 0;
  *v5 = *(a1 + 246144);
  *(v5 + 4) = 1;
  return result;
}

_DWORD *sub_277ACB9E8(_DWORD *result)
{
  v1 = result;
  v48 = *MEMORY[0x277D85DE8];
  v2 = result[61418];
  v3 = (((v2 + 7) & 0xFFFFFFF8) + 2 * result[68033] + 31) & 0xFFFFFFE0;
  v4 = v3;
  if (result[67782] == v2)
  {
    v4 = (((v2 + 7) & 0xFFFFFFF8) + 2 * result[68033] + 31) & 0xFFFFFFE0;
    if (result[67783] == result[61419])
    {
      v4 = (((v2 + 7) & 0xFFFFFFF8) + 2 * result[68033] + 31) & 0xFFFFFFE0;
      if (v2 == result[61422])
      {
        v4 = *(*(*(*result + 368) + 40) + 32);
      }
    }
  }

  v5 = *(result + 30731);
  v6 = (((v2 + 7) & 0xFFFFFFF8) + 2 * result[68033] + 31) & 0xFFFFFFE0;
  if (v5)
  {
    v6 = *(v5 + 1280);
  }

  v7 = result[99971];
  if (!v7 || !result[105529] || v3 != v7)
  {
    v8 = 0;
    v23 = result + 110634;
    v9 = result + 99178;
    v10 = result + 104736;
    do
    {
      v11 = off_28866F278[v8];
      (v11)(v9, v3, (v8 & 6) == 2);
      (v11)(v10, v4, (v8++ & 6) == 2);
      v10 += 794;
      v9 += 794;
    }

    while (v8 != 7);
    v12 = 0;
    *v23 = 0;
    v23[453] = v6;
    v13 = v23 + 1;
    v14 = 1024;
    v15 = 10;
    do
    {
      v16 = 0;
      v24 = 0;
      if ((v14 * 0.41) <= 1)
      {
        v17 = 1;
      }

      else
      {
        v17 = (v14 * 0.41);
      }

      v25 = -v14;
      if (v14 == 1)
      {
        v18 = 8;
      }

      else
      {
        v18 = 12;
      }

      v26 = 0;
      v27 = v14;
      v28 = 0;
      v29 = -v14;
      v30 = 0;
      v31 = v14;
      v32 = -v14;
      v35 = v17;
      v38 = v17;
      v41 = v17;
      v44 = v17;
      v33 = -v17;
      v34 = v14;
      v36 = -v17;
      v37 = v14;
      v39 = -v14;
      v40 = -v14;
      v42 = v14;
      v43 = -v17;
      v45 = v14;
      v46 = -v17;
      v47 = -v14;
      v19 = v13;
      do
      {
        v20 = *(&v24 + v16);
        *(v19 - 1) = v20;
        *v19 = v20 * v6 + (v20 >> 16);
        v16 += 4;
        v19 += 2;
      }

      while (((16 * ((v18 >> 2) & 3)) | 4) != v16);
      v1[v15 + 111043] = v18;
      v1[v15-- + 111065] = v14;
      ++v12;
      v14 >>= 1;
      v13 -= 34;
    }

    while (v12 != 11);
    v23[408] = 11;
    v21 = (v1 + 111088);
    v22 = 6;
    do
    {
      result = memcpy(v21, v1 + 110294, 0xC68uLL);
      v21 += 3176;
      --v22;
    }

    while (v22);
  }

  return result;
}

int *sub_277ACBCC0(uint64_t a1, int a2, int a3, double a4, double a5, double a6, int32x2_t a7)
{
  v9 = a1;
  v10 = a1 + 643408;
  v104 = a1 + 395554;
  v11 = a1 + 268672;
  v12 = a1 + 245568;
  v13 = *(a1 + 270312);
  if (*(v13 + 77))
  {
    v14 = 1;
  }

  else
  {
    v14 = 3;
  }

  v110 = (a1 + 463456);
  v111 = v14;
  if (*(a1 + 245672) == a2 && *(a1 + 245676) == a3)
  {
    goto LABEL_40;
  }

  v15 = sub_277ACB81C(a1, *(v13 + 76), *(v13 + 96), *(v13 + 100));
  if (v15)
  {
    sub_2779F5C10(*(v12 + 96), v15, "av1_check_initial_width() failed");
  }

  if (a2 >= 1 && a3 >= 1)
  {
    *(v12 + 104) = a2;
    *(v12 + 108) = a3;
    if (*(v110 + 13) < a2 || *(v110 + 14) < a3)
    {
      v16 = (v9 + 240840);
      v17 = *(v12 + 640);
      if (v17)
      {
        v17(v9 + 246136);
      }

      sub_277A82C68((v9 + 270936));
      sub_2779C963C(v9 + 240768);
      if (*v16)
      {
        free(*(*v16 - 8));
      }

      *v16 = 0;
      if (*(*(v11 + 1640) + 77))
      {
        v18 = 1;
      }

      else
      {
        v18 = 3;
      }

      sub_2779C9AE8(*(v9 + 241064), v18);
      *(v9 + 241064) = 0;
      sub_277AC65E0(v9);
      sub_277AC6A44(v9);
      v19 = *(v12 + 108);
      *(v110 + 13) = *(v12 + 104);
      *(v110 + 14) = v19;
      v110[64] = 0;
    }

    if (sub_277A82D8C(v9 + 245616))
    {
      sub_2779F5C10(*(v12 + 96), 2, "Failed to allocate context buffers");
    }

    if (*(v11 + 3508) == 1 || *(v10 + 784) == 1)
    {
      goto LABEL_35;
    }

    v20 = byte_277C3F990[*(v12 + 608)];
    v21 = (*(v12 + 584) + v20 - 1) / v20;
    v22 = v21 * ((v20 - 1 + *(v12 + 580)) / v20);
    if (v22 <= *(v12 + 8))
    {
LABEL_34:
      *(v12 + 12) = v21;
LABEL_35:
      sub_277AB9A60(v9);
      goto LABEL_36;
    }

    if (*v12)
    {
      free(*(*v12 - 8));
    }

    *v12 = 0;
    *(v12 + 8) = 0;
    v23 = 84 * v22;
    if (v23 <= 0x1FFFFFFE9 && (v24 = malloc_type_malloc(v23 + 23, 0x5F484EBFuLL)) != 0)
    {
      v25 = (v24 + 23) & 0xFFFFFFFFFFFFFFF0;
      *(v25 - 8) = v24;
      *v12 = v25;
      if (v25)
      {
LABEL_33:
        *(v12 + 8) = v22;
        goto LABEL_34;
      }
    }

    else
    {
      *v12 = 0;
    }

    sub_2779F5C10(*(v12 + 96), 2, "Failed to allocate mbmi_ext_info->frame_base");
    goto LABEL_33;
  }

LABEL_36:
  v26 = *(v12 + 104);
  v27 = *(v12 + 547) == 1 && v26 == *(v12 + 120);
  *(v12 + 548) = v27;
  sub_277A6F6F4(v9 + 644224, v26, *(v12 + 108));
LABEL_40:
  v28 = *(v11 + 3508);
  if (v28 > 1 || !v28 && !*(v10 + 784) && *(*v9 + 23172))
  {
    sub_277A5BDA4(v9, *(v12 + 104), *(v12 + 108), a4, a5);
  }

  v29 = *(v12 + 280);
  v30 = *(v29 + 72);
  if (v30)
  {
    if (*(v29 + 260) == *(v12 + 580) && *(v29 + 264) == *(v12 + 584))
    {
      goto LABEL_55;
    }

    free(*(v30 - 8));
  }

  v31 = *(v12 + 580);
  *(v29 + 260) = v31;
  v32 = *(v12 + 584);
  *(v29 + 264) = v32;
  v33 = sub_2779724A8(((v32 + 1) >> 1) * ((v31 + 1) >> 1), 8uLL);
  *(v29 + 72) = v33;
  if (!v33)
  {
    sub_2779F5C10(*(v12 + 96), 2, "Failed to allocate buf->mvs");
  }

  v34 = *(v29 + 80);
  if (v34)
  {
    free(*(v34 - 8));
  }

  v35 = sub_2779724A8(*(v12 + 584) * *(v12 + 580), 1uLL);
  *(v29 + 80) = v35;
  if (!v35)
  {
    sub_2779F5C10(*(v12 + 96), 2, "Failed to allocate buf->seg_map");
  }

LABEL_55:
  v36 = ((*(v12 + 580) + 32) >> 1) * (*(v12 + 628) >> 1);
  v37 = *(v11 + 2360);
  if (v37)
  {
    if (*(v11 + 2368) >= v36)
    {
      goto LABEL_61;
    }

    free(*(v37 - 8));
  }

  v38 = sub_2779724A8(v36, 8uLL);
  *(v11 + 2360) = v38;
  if (!v38)
  {
    sub_2779F5C10(*(v12 + 96), 2, "Failed to allocate cm->tpl_mvs");
  }

  *(v11 + 2368) = v36;
LABEL_61:
  v106 = v13;
  v108 = v10;
  v39 = *(v12 + 104);
  *(v29 + 268) = v39;
  if (*(*(v11 + 1640) + 77))
  {
    v40 = 1;
  }

  else
  {
    v40 = 3;
  }

  if (*(v11 + 2304) < v40 || *(v11 + 2312) < *(v12 + 584) || *(v11 + 2308) < *(v11 + 1668))
  {
    v41 = (v11 + 2264);
    sub_277A82C68((v11 + 2264));
    v42 = *(v11 + 1668);
    if (*(*(v11 + 1640) + 77))
    {
      v43 = 1;
    }

    else
    {
      v43 = 3;
    }

    v44 = *(v12 + 584) + 31;
    v45 = v44 & 0xFFFFFFFFFFFFFFE0;
    *(v11 + 2308) = v42;
    *(v11 + 2312) = v44 & 0xFFFFFFE0;
    *(v11 + 2304) = v43;
    v46 = (v11 + 2272);
    v47 = v43;
    do
    {
      v48 = sub_2779724A8(v42, 8uLL);
      *v46 = v48;
      if (!v48)
      {
        goto LABEL_84;
      }

      ++v46;
      --v47;
    }

    while (v47);
    v49 = sub_2779724A8(v42, 8uLL);
    *v41 = v49;
    if (!v49)
    {
      goto LABEL_84;
    }

    v50 = sub_2779724A8(v42, 8uLL);
    *(v11 + 2296) = v50;
    if (!v50)
    {
      goto LABEL_84;
    }

    if (v42 >= 1)
    {
      v51 = 0;
      v101 = 1;
      v102 = v9;
LABEL_77:
      v52 = (v11 + 2272);
      v53 = v43;
      while (1)
      {
        *(*v52 + 8 * v51) = sub_2779724A8(v45, 1uLL);
        if (!*(*v52 + 8 * v51))
        {
          break;
        }

        ++v52;
        if (!--v53)
        {
          *(*v41 + 8 * v51) = sub_2779724A8(v45, 1uLL);
          if (*(*v41 + 8 * v51))
          {
            *(*(v11 + 2296) + 8 * v51) = sub_2779724A8(v45, 1uLL);
            if (*(*(v11 + 2296) + 8 * v51))
            {
              v101 = ++v51 < v42;
              if (v51 != v42)
              {
                goto LABEL_77;
              }
            }
          }

          break;
        }
      }

      v9 = v102;
      if (v101)
      {
LABEL_84:
        sub_2779F5C10(*(v12 + 96), 2, "Failed to allocate context buffers");
      }
    }
  }

  v54 = 288;
  if (!*(v11 + 2664))
  {
    v55 = *(v11 + 2680);
    v54 = v55 ? 288 : 64;
    if (!v55 && *(v11 + 2512))
    {
      v54 = byte_277C3CAFE[*(*(v11 + 1640) + 28)] + 32;
    }
  }

  *(v11 + 3460) = v54;
  if (sub_27797AC44(*(v12 + 280) + 1248, *(v12 + 104), *(v12 + 108), *(v106 + 96), *(v106 + 100), *(v106 + 76), v54, *(v12 + 560), v39, a5, a6, a7, *(v108 + 1372), 0))
  {
    sub_2779F5C10(*(v12 + 96), 2, "Failed to allocate frame buffer");
  }

  if (*(v11 + 3508) != 1 && *(v108 + 784) != 1)
  {
    v56 = *v9;
    if (*(*v9 + 4 * *v110 + 12668) <= 0)
    {
      v57 = v56 + 73728;
      if (*(v56 + 75084) <= 1)
      {
        v58 = 75072;
      }

      else
      {
        v58 = 75040;
      }

      sub_277A82424(v9 + 245616, (v56 + 75112), v9 + 643376, *(v56 + v58), 1);
      *v108 = *(v57 + 1384);
    }
  }

  v109 = (v9 + 94424);
  v59 = *(v11 + 1640);
  if (*(v59 + 68) && (*(v12 + 548) & 1) == 0 && !*(v11 + 2244))
  {
    v60 = vdupq_n_s64(v111 - 1);
    v61 = vmovn_s64(vcgeq_u64(v60, xmmword_277BB70A0));
    if (vuzp1_s16(v61, *v60.i8).u8[0])
    {
      *v11 = 0;
    }

    if (vuzp1_s16(v61, *&v60).i8[2])
    {
      *(v11 + 64) = 0;
    }

    v62 = vmovn_s64(vcgeq_u64(v60, xmmword_277BB7090));
    if (vuzp1_s16(v62, v62).i32[1])
    {
      *(v11 + 128) = 0;
      *(v11 + 192) = 0;
    }

    v63 = *(v59 + 77);
    if (!*(v11 + 192) && (*(v104 + 795) & 1) == 0)
    {
      v64 = malloc_type_malloc(0x13B9B7uLL, 0x5F484EBFuLL);
      if (v64)
      {
        v65 = (v64 + 23) & 0xFFFFFFFFFFFFFFF0;
        *(v65 - 8) = v64;
        *(v11 + 192) = v65;
        if (v65)
        {
          goto LABEL_117;
        }
      }

      else
      {
        *(v11 + 192) = 0;
      }

      sub_2779F5C10(*(v12 + 96), 2, "Failed to allocate cm->rst_tmpbuf");
    }

LABEL_117:
    v105 = v9 + 635008;
    if (!*(v11 + 200))
    {
      v66 = malloc_type_malloc(0x1277uLL, 0x5F484EBFuLL);
      if (!v66)
      {
        *(v11 + 200) = 0;
LABEL_122:
        sub_2779F5C10(*(v12 + 96), 2, "Failed to allocate cm->rlbs");
        goto LABEL_123;
      }

      v67 = (v66 + 23) & 0xFFFFFFFFFFFFFFF0;
      *(v67 - 8) = v66;
      *(v11 + 200) = v67;
      if (!v67)
      {
        goto LABEL_122;
      }
    }

LABEL_123:
    v103 = v9;
    v68 = 0;
    v69 = 4 * *(v12 + 580);
    v71 = v69 + 71;
    v70 = v69 < -71;
    v72 = v69 + 134;
    if (!v70)
    {
      v72 = v71;
    }

    v73 = *(v12 + 120);
    v74 = *(*(v11 + 1640) + 76);
    v75 = 2 * (v72 >> 6);
    v76 = (v11 + 32);
    v107 = v75;
    while (1)
    {
      v77 = v68 && *(*(v11 + 1640) + 96) != 0;
      v78 = (((v77 + v73) >> v77) + 39) & 0xFFFFFFE0;
      v79 = (v75 * v78) << v74;
      v80 = *v76;
      if (v79 == *(v76 + 5) && v80 != 0)
      {
        break;
      }

      if (v80)
      {
        goto LABEL_137;
      }

LABEL_138:
      v82 = v76[1];
      if (v82)
      {
        free(*(v82 - 8));
      }

      if (v79 < 0)
      {
        *v76 = 0;
        sub_2779F5C10(*(v12 + 96), 2, "Failed to allocate boundaries->stripe_boundary_above");
LABEL_150:
        v76[1] = 0;
LABEL_151:
        sub_2779F5C10(*(v12 + 96), 2, "Failed to allocate boundaries->stripe_boundary_below");
        goto LABEL_152;
      }

      v83 = malloc_type_malloc(v79 | 0x27u, 0x5F484EBFuLL);
      if (v83)
      {
        v84 = (v83 + 39) & 0xFFFFFFFFFFFFFFE0;
        *(v84 - 8) = v83;
        *v76 = v84;
        if (v84)
        {
          goto LABEL_147;
        }
      }

      else
      {
        *v76 = 0;
      }

      sub_2779F5C10(*(v12 + 96), 2, "Failed to allocate boundaries->stripe_boundary_above");
LABEL_147:
      v85 = malloc_type_malloc(v79 | 0x27u, 0x5F484EBFuLL);
      v75 = v107;
      if (!v85)
      {
        goto LABEL_150;
      }

      v86 = (v85 + 39) & 0xFFFFFFFFFFFFFFE0;
      *(v86 - 8) = v85;
      v76[1] = v86;
      if (!v86)
      {
        goto LABEL_151;
      }

LABEL_152:
      *(v76 + 5) = v79;
LABEL_153:
      *(v76 + 4) = v78;
      if (!v63)
      {
        v76 += 8;
        if (v68++ < 2)
        {
          continue;
        }
      }

      v9 = v103;
      v88 = *v103;
      if (*(*v103 + 75040) >= 2 && *v105 && *(v88 + 4 * *v110 + 12668) <= 0)
      {
        if (*(*v103 + 75084) <= 1)
        {
          v89 = 75076;
        }

        else
        {
          v89 = 75040;
        }

        *(*(v105 + 24) + 432 * *(v88 + v89) - 432) = *(v11 + 192);
      }

      goto LABEL_163;
    }

    if (v76[1])
    {
      goto LABEL_153;
    }

LABEL_137:
    free(*(v80 - 8));
    goto LABEL_138;
  }

LABEL_163:
  sub_277ACB9E8(v9);
  v90 = 0;
  v91 = 0;
  v92 = v9 + 245904;
  do
  {
    v93 = *(v12 + 288 + v90);
    if (v93 != -1)
    {
      v94 = *(v9 + 246032 + 8 * v93);
      if (v94)
      {
        v95 = (v92 + 16 * v93);
        sub_277AF62F8(v95, *(v94 + 1264), *(v94 + 1272), *(v12 + 104), *(v12 + 108));
        if (*v95 != -1)
        {
          v96 = v95[1];
          v91 |= v96 != -1;
          if (v96 != -1 && (*v95 != 0x4000 || v96 != 0x4000))
          {
            sub_277A48A28(v94 + 1248, v111);
          }
        }
      }
    }

    v90 += 4;
  }

  while (v90 != 28);
  if ((*(v9 + 245616) & 0xFD) != 0 && v91 == 0)
  {
    sub_2779F5C10(*(v12 + 96), 7, "Can't find at least one reference frame with valid size");
  }

  result = sub_277AF62F8((v9 + 245888), *(v12 + 104), *(v12 + 108), *(v12 + 104), *(v12 + 108));
  v99 = *(v12 + 288);
  if (v99 == -1)
  {
    v100 = 0;
  }

  else
  {
    v100 = v92 + 16 * v99;
  }

  *v109 = v100;
  v109[1] = v100;
  return result;
}

BOOL sub_277ACC7E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *__srce, uint64_t a35, uint64_t a36, int a37, int a38, uint64_t a39, uint64_t a40, double a41, double a42, uint64_t a43, __int128 a44, __int128 a45, __int128 a46, __int128 a47, __int128 a48, __int128 a49, __int128 a50, __int128 a51, __int128 a52, __int128 a53, __int128 a54, int a55)
{
  v62 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7, a8);
  STACK[0x3A38] = *MEMORY[0x277D85DE8];
  v65 = v62 + 393852;
  v66 = v62 + 273688;
  v67 = (v62 + 245616);
  v68 = *v56;
  *(v62 + 272280) = *v56;
  *(v62 + 272264) = v68;
  v653 = v62 + 269200;
  *(v62 + 272496) = v56[1];
  *(v62 + 245652) = *(v57 + 20);
  v69 = *v57;
  *(v62 + 246118) = *v57 != 0;
  *(v62 + 246124) = *(v57 + 8);
  v70 = *(v57 + 4);
  *(v62 + 245616) = v70;
  *(v62 + 246096) = *(v57 + 16);
  v71 = *(v57 + 32);
  *(v62 + 395384) = v71;
  *(v62 + 395388) = *(v57 + 72);
  v72 = *(v57 + 24);
  *(v62 + 246104) = v72;
  v657 = (v62 + 643472);
  *(v62 + 643472) = *(v57 + 28);
  v73 = *(v57 + 36);
  v74 = *(v57 + 52);
  *(v62 + 245856) = v73;
  *(v62 + 245872) = v74;
  v75 = *(v57 + 70);
  *(v62 + 273752) = *(v57 + 68);
  v76 = (v62 + 273752);
  *(v62 + 273754) = v75;
  v77 = *v62;
  v678 = v62 + 463432;
  if (v70)
  {
    v78 = *(v62 + 463456);
  }

  else
  {
    v78 = *(v62 + 463456);
    if (!*(*&v77 + v78 + 6410))
    {
      *(v62 + 245632) = 0;
    }
  }

  v661 = (v62 + 634344);
  v79 = (v62 + 94344);
  v80 = *(v57 + 12) + *(v62 + 245632);
  *(v62 + 245624) = v80;
  v81 = *(v62 + 270312);
  *(v62 + 245620) = v80 & ~(-1 << (*(v81 + 44) + 1));
  if (!v80)
  {
    goto LABEL_8;
  }

  v82 = *(*&v77 + 4 * v78 + 1152);
  if (v82 == 6)
  {
    v82 = *(*&v77 + 3152);
    goto LABEL_12;
  }

  if (v82 != 7)
  {
    if (v82 <= 1)
    {
      v82 = 1;
    }
  }

  else
  {
LABEL_8:
    v82 = 1;
  }

LABEL_12:
  *(v62 + 245628) = v82;
  v83 = *(v62 + 272180);
  v704 = v62 + 245616;
  if (v83 == 1 || *(v62 + 644192) == 1)
  {
    v84 = v56[2];
    if (*(v62 + 271312))
    {
      v85 = *(v62 + 271136);
      if (v85)
      {
        v86 = (((v85 + 7) >> 2) + 2) >> 2;
      }

      else
      {
        v86 = *(v62 + 246140);
      }

      v87 = *(v62 + 271140);
      if (v87)
      {
        v88 = (((v87 + 7) >> 2) + 2) >> 2;
      }

      else
      {
        v88 = *(v62 + 246136);
      }

      v89 = (v62 + 644208);
      sub_2779B2DDC(v67, (v62 + 644208), v88, v86);
      v90 = *(v62 + 644208);
      STACK[0x2290] = 0;
      *&STACK[0x2280] = 0u;
      *&STACK[0x2270] = 0u;
      *&STACK[0x2260] = 0u;
      *&STACK[0x2250] = 0u;
      *&STACK[0x2240] = 0u;
      *&STACK[0x2230] = 0u;
      *&STACK[0x2220] = 0u;
      sub_2779B2F4C(&STACK[0x2220], v90, v88, v86);
      v91 = *(v62 + 644216);
      if (v91)
      {
        free(*(v91 - 8));
        v90 = *v89;
      }

      *(v62 + 644216) = 0;
      if (v90)
      {
        free(*(v90 - 8));
      }

      *v89 = 0;
      sub_2779B310C(v62, &STACK[0x2220], *(v62 + 245632), v84, 6, 1.0);
    }

    else
    {
      v672 = v56[2];
      v675 = v71;
      v93 = 0;
      v94 = (v62 + 86064);
      if (*(v81 + 77))
      {
        v95 = 1;
      }

      else
      {
        v95 = 3;
      }

      v679 = v95;
      v636 = v81;
      v96 = *(v81 + 72);
      v97 = 255;
      do
      {
        if (sub_277A58CE0((v93 + v97) >> 1, v96) < 10.0)
        {
          v93 = ((v93 + v97) >> 1) + 1;
        }

        else
        {
          v97 = (v93 + v97) >> 1;
        }
      }

      while (v93 < v97);
      *(v62 + 395384) = 9;
      if ((v70 & 0xFFFFFFFD) == 0)
      {
        *(v62 + 94440) = v68;
        sub_277ACB51C(v62, v62 + 246108);
      }

      sub_2779C44C0(v62, *(v62 + 272140));
      v98 = *(v62 + 643740);
      v99 = *(v62 + 246136);
      v100 = *(v62 + 246140);
      v101 = *(v62 + 271136);
      if (v101)
      {
        v100 = (((v101 + 7) >> 2) + 2) >> 2;
      }

      v102 = *(v62 + 271140);
      if (v102)
      {
        v99 = (((v102 + 7) >> 2) + 2) >> 2;
      }

      if (v98)
      {
        v103 = 3;
      }

      else
      {
        v103 = 6;
      }

      v104 = byte_277C3CFCC[v103];
      if (v98)
      {
        v105 = 3;
      }

      else
      {
        v105 = 6;
      }

      v106 = v99 >> (v104 - 2);
      v107 = v99 << (2 - v104);
      if ((0x14FE80uLL >> v103))
      {
        v108 = v106;
      }

      else
      {
        v108 = v107;
      }

      v687 = v103;
      v109 = byte_277C42228[v103];
      *(v62 + 644276) = v105;
      v664 = v108;
      v667 = v100 << (2 - v109);
      sub_2779B2DDC(v704, (v62 + 644208), v108, v667);
      vars0 = *(v62 + 644216);
      v654 = *(v62 + 644208);
      if (*(v62 + 463552) < *(v62 + 270340) * *(v62 + 270336))
      {
        sub_277A5D194(v62);
      }

      sub_277A5D2C8(v62);
      v121 = v62 + 245616;
      v669 = v109;
      if ((*v704 & 0xFD) != 0)
      {
        sub_277BA45FC(v62, 0, 0, 0, v117, v118, v119, v120);
        v121 = v62 + 245616;
        v122 = *(v62 + 245856);
        if (v122 == -1)
        {
          v123 = 0;
        }

        else
        {
          v123 = (v62 + 245904 + 16 * v122);
        }

        v124 = *v123;
        if (*v123 == -1 || (v125 = v123[1], v125 == -1) || v124 == 0x4000 && v125 == 0x4000)
        {
          v126 = v62 + 273688;
          if (v122 == -1)
          {
            v127 = 0;
          }

          else
          {
            v127 = *(v62 + 8 * v122 + 246032);
          }

          if (v127)
          {
            v142 = v127 + 1248;
          }

          else
          {
            v142 = 0;
          }
        }

        else
        {
          v126 = v62 + 273688;
          v191 = *(v62 + 273688);
          if (v122 == -1)
          {
            v192 = 0;
          }

          else
          {
            v192 = *(v62 + 8 * v122 + 246032);
          }

          v195 = v191 == v192 || v191 == 0;
          v142 = v191 + 1248;
          if (v195)
          {
            v142 = 0;
          }
        }

        v699 = v142;
        v143 = *(v62 + 245868);
        if (v143 == -1)
        {
          v144 = 0;
        }

        else
        {
          v144 = (v62 + 245904 + 16 * v143);
        }

        v145 = *v144;
        if (*v144 == -1 || (v146 = v144[1], v146 == -1) || v145 == 0x4000 && v146 == 0x4000)
        {
          if (v143 == -1)
          {
            v147 = 0;
          }

          else
          {
            v147 = *(v62 + 8 * v143 + 246032);
          }
        }

        else
        {
          v193 = *(v126 + 24);
          if (v143 == -1)
          {
            v194 = 0;
          }

          else
          {
            v194 = *(v62 + 8 * v143 + 246032);
          }

          v196 = v193 == v194 || v193 == 0;
          v147 = v193 + 1248;
          if (v196)
          {
            v147 = 0;
          }
        }

        v141 = v147 == 0;
      }

      else
      {
        v699 = 0;
        v141 = 1;
      }

      vars8 = v141;
      v197 = *(v121 + 232);
      sub_2779F5008(v62, v117.n128_f64[0], v118, v119, v120, v110, v111, v112, v113, v114, v115, v116);
      sub_277ACB424(v62);
      v198 = *(v62 + 246196);
      **(v62 + 246184) = *(v62 + 246160);
      v199 = *(v62 + 246184);
      *v79 = v199;
      *(v62 + 94392) = *(v62 + 246200);
      *(v62 + 94400) = v198;
      **v199 = v105;
      *(v62 + 395108) = 0x7FFFFFFF;
      sub_277A80B98(v704, *(v62 + 271316), *(v62 + 271320), v93, *(v62 + 271331), *(v62 + 271332));
      sub_277A56D00(v62 + 86480, *(v636 + 96), *(v636 + 100), v679);
      sub_277A5D0C0(v62 + 86064, *(v62 + 272264), 0, 0, v679, v105);
      v658 = v197;
      sub_27798E348(v62 + 86496, *(v636 + 28), v197 + 1248, 0, 0, 0, v679);
      v200 = v62 + 245616;
      if ((*v704 & 0xFD) != 0)
      {
        sub_27798E424(v62 + 86480, 0, v699, 0, 0, 0, v679);
        v200 = v62 + 245616;
      }

      v201 = *(v200 + 580);
      **(v200 + 568) = *(v200 + 544);
      v202 = *(v200 + 568);
      *v79 = v202;
      *(v62 + 94392) = *(v200 + 584);
      *(v62 + 101504) = 0;
      *(v62 + 94400) = v201;
      *(v62 + 172664) = -1;
      sub_277A806F0(v62, v62 + 86064, *(*v202 + 167) & 7, 1);
      sub_27798F98C(v200);
      sub_277A464B0(*(v62 + 270320));
      memcpy((*(v62 + 270320) + 11912), &unk_277BC0A3E, 0x11EuLL);
      memcpy((*(v62 + 270320) + 12198), &unk_277BC0A3E, 0x11EuLL);
      sub_277A8A860(v62);
      *(v62 + 634728) = nullsub_3;
      *(v62 + 634736) = nullsub_4;
      if (*v661 <= 1)
      {
        v700 = *(v62 + 270336);
        v214 = *(v62 + 270340);
        sub_277A55DE8(v200, (v62 + 86064));
        if (v214 >= 1)
        {
          for (__src = 0; __src != v214; __src = __src + 1)
          {
            if (v700 >= 1)
            {
              v215 = 0;
              v216 = byte_277C36D60[v687];
              do
              {
                v217 = (*(v62 + 463544) + 23824 * v215 + 23824 * __src * v700);
                for (i = *v217; i < v217[1]; i += v216)
                {
                  sub_2779B1630(v62, v62 + 86064, v217, i >> v104, v105);
                }

                ++v215;
              }

              while (v215 != v700);
            }
          }
        }
      }

      else
      {
        *(v62 + 634728) = sub_277AF6378;
        *(v62 + 634736) = sub_277AF6430;
        v688 = *(v62 + 270336);
        v203 = *(v62 + 270340);
        if (v203 < 1)
        {
          v204 = 0;
        }

        else
        {
          v204 = 0;
          v206 = *(*(v62 + 270312) + 36);
          v207 = *(v62 + 270656);
          v208 = (v62 + 270660);
          v209 = *(v62 + 270340);
          do
          {
            v210 = v207 << v206;
            v211 = *v208++;
            v207 = v211;
            v212 = v211 << v206;
            if (v211 << v206 >= *(v62 + 246148))
            {
              v212 = *(v62 + 246148);
            }

            v205 = byte_277C3CFCC[*(v62 + 644276)];
            v213 = (~(-1 << v205) - v210 + v212) >> v205;
            if (v204 <= v213)
            {
              v204 = v213;
            }

            --v209;
          }

          while (v209);
        }

        v219 = *(v62 + 634424) != __PAIR64__(v688, v203) || *(v62 + 634432) != v204;
        v641 = v203 * v688;
        if (*(v62 + 463552) < v203 * v688)
        {
          sub_277A5D194(v62);
        }

        if (v219)
        {
          sub_277AF8B44(v62, v204, -1, 0);
        }

        v643 = v105;
        sub_277A5D2C8(v62);
        v220 = *(v62 + 634348);
        if (!v220)
        {
          v220 = sub_277AF8A04(v62);
        }

        v645 = v220;
        *&v221 = -1;
        *(&v221 + 1) = -1;
        *(v62 + 634664) = v221;
        *(v62 + 634680) = v221;
        *(v62 + 634632) = v221;
        *(v62 + 634648) = v221;
        *(v62 + 634600) = v221;
        *(v62 + 634616) = v221;
        *(v62 + 634568) = v221;
        *(v62 + 634584) = v221;
        *(v62 + 634536) = v221;
        *(v62 + 634552) = v221;
        *(v62 + 634504) = v221;
        *(v62 + 634520) = v221;
        *(v62 + 634472) = v221;
        *(v62 + 634488) = v221;
        *(v62 + 634440) = v221;
        *(v62 + 634456) = v221;
        *(v62 + 634709) = 0;
        if (v203 >= 1)
        {
          v222 = 0;
          v223 = 0;
          v224 = 4 * v204;
          v680 = 23824 * v688;
          v683 = v203;
          v225 = 23808;
          do
          {
            __srca = v223;
            v701 = v222;
            v691 = v225;
            v226 = v688;
            if (v688 >= 1)
            {
              do
              {
                v227 = *(v62 + 463544);
                v228 = v227 + v225;
                memset(*(v227 + v225 - 24), 255, v224);
                *(v228 - 4) = *(v227 + v222);
                *(v228 - 12) = 0;
                v225 += 23824;
                v222 += 23824;
                --v226;
              }

              while (v226);
            }

            v223 = __srca + 1;
            v225 = v691 + v680;
            v222 = v701 + v680;
          }

          while (__srca + 1 != v683);
        }

        v229 = v62 + 634344;
        LODWORD(v230) = *v661;
        if (v645 >= *v661)
        {
          v230 = v230;
        }

        else
        {
          v230 = v645;
        }

        v702 = v230;
        v105 = v643;
        if (v230 >= 1)
        {
          v231 = 0;
          v232 = 634440;
          v233 = v702;
          do
          {
            *(v62 + v232) = v231;
            if (v231 + 1 == v641)
            {
              v231 = 0;
            }

            else
            {
              ++v231;
            }

            v232 += 4;
            --v233;
          }

          while (v233);
          v234 = v702 - 1;
          v235 = (*(v62 + 634400) + 56 * (v702 - 1));
          v236 = *(v62 + 634408) + 456 * (v702 - 1);
          v235[3] = sub_277AF9890;
          v235[4] = v236;
          v235[5] = 0;
          *(v236 + 452) = v702 - 1;
          *(v236 + 448) = v702 - 1;
          *v236 = v62;
          if (v702 != 1)
          {
            v237 = v702 - 2;
            v238 = 456 * v702;
            v239 = 56 * v702 - 88;
            v240 = v702 - 1;
            do
            {
              v241 = *(v236 + 16);
              *(v236 + 8) = v241;
              memcpy(v241, (v62 + 86064), 0x256A0uLL);
              sub_277A55DE8(v704, *(v236 + 8));
              v242 = *(v62 + 634408);
              v243 = (v242 + v238 - 912);
              v244 = (*(v62 + 634400) + v239);
              *v244 = sub_277AF9890;
              v244[1] = v243;
              v244[2] = 0;
              *(v242 + v238 - 460) = v237;
              *(v242 + v238 - 464) = v237;
              *v243 = v62;
              --v237;
              v238 -= 456;
              v239 -= 56;
              --v240;
              v236 = v242 + 456 * v240;
            }

            while (v240);
            v236 = v242 + v238 - 456;
            v229 = v62 + 634344;
          }

          *(v236 + 8) = v94;
          sub_277A55DE8(v704, (v62 + 86064));
          v245 = *(v229 + 56) + 56 * v234;
          *(v245 + 48) = 0;
          if (v702 != 1)
          {
            v246 = 56 * v702 - 64;
            do
            {
              sub_277985E48(v245, 2);
              v247 = *(v229 + 56);
              *(v247 + v246) = 0;
              v246 -= 56;
              --v234;
              v245 = v247 + 56 * v234;
            }

            while (v234);
            v245 = v247 + v246 + 8;
          }

          v248 = *(v245 + 24);
          if (v248)
          {
            *(v245 + 48) |= v248(*(v245 + 32), *(v245 + 40)) == 0;
          }
        }

        v249 = *(v229 + 56);
        v250 = *(v249 + 48);
        LODWORD(STACK[0x23B0]) = 0;
        *&STACK[0x23A0] = 0u;
        *&STACK[0x2390] = 0u;
        *&STACK[0x2380] = 0u;
        *&STACK[0x2370] = 0u;
        *&STACK[0x2360] = 0u;
        *&STACK[0x2350] = 0u;
        *&STACK[0x2340] = 0u;
        *&STACK[0x2330] = 0u;
        *&STACK[0x2320] = 0u;
        *&STACK[0x2310] = 0u;
        *&STACK[0x2300] = 0u;
        *&STACK[0x22F0] = 0u;
        *&STACK[0x22E0] = 0u;
        *&STACK[0x22D0] = 0u;
        *&STACK[0x22C0] = 0u;
        *&STACK[0x22B0] = 0u;
        *&STACK[0x22A0] = 0u;
        *&STACK[0x2290] = 0u;
        *&STACK[0x2280] = 0u;
        *&STACK[0x2270] = 0u;
        *&STACK[0x2260] = 0u;
        *&STACK[0x2250] = 0u;
        *&STACK[0x2240] = 0u;
        *&STACK[0x2230] = 0u;
        *&STACK[0x2220] = 0u;
        if (v250)
        {
          memcpy(&STACK[0x2220], (*(v249 + 32) + 24), 0x194uLL);
        }

        if (v702 >= 2)
        {
          v251 = v702 + 1;
          v252 = 56 * v702;
          do
          {
            v253 = *(v229 + 56) + v252;
            sub_277985E48((v253 - 56), 1);
            if (*(v253 - 8))
            {
              memcpy(&STACK[0x2220], (*(v253 - 24) + 24), 0x194uLL);
              v250 = 1;
            }

            --v251;
            v252 -= 56;
          }

          while (v251 > 2);
        }

        if (v250)
        {
          sub_2779F5C78(*(v62 + 245664), &STACK[0x2220]);
        }

        *(*(*(v249 + 32) + 8) + 11152) = *(v62 + 245664);
        v254 = v702;
        if (v702 >= 1)
        {
          do
          {
            v255 = *(*(v229 + 64) + 456 * v254 - 448);
            if (v255 != v94)
            {
              if (*(*(v62 + 270312) + 77))
              {
                v256 = 1;
              }

              else
              {
                v256 = 3;
              }

              do
              {
                if (*v255)
                {
                  free(*(*v255 - 8));
                }

                *v255 = 0;
                v255 += 17;
                --v256;
              }

              while (v256);
            }

            v493 = v254-- > 1;
          }

          while (v493);
        }
      }

      STACK[0x2290] = 0;
      *&STACK[0x2280] = 0u;
      *&STACK[0x2270] = 0u;
      *&STACK[0x2260] = 0u;
      *&STACK[0x2250] = 0u;
      *&STACK[0x2240] = 0u;
      *&STACK[0x2230] = 0u;
      *&STACK[0x2220] = 0u;
      sub_2779B2F4C(&STACK[0x2220], v654, v664, v667);
      v257 = v664 * v667;
      v258 = 0.0;
      if ((*v704 & 0xFD) != 0 && v257 != 0)
      {
        if (v257 <= 0)
        {
          v265 = v257;
          v267 = 0.0;
        }

        else
        {
          v260 = 0;
          v261 = vars0;
          v262 = vars0;
          v263 = v664 * v667;
          do
          {
            v264 = *v262++;
            v260 += v264;
            --v263;
          }

          while (v263);
          v265 = v257;
          v266 = v260 / v257;
          v267 = 0.0;
          do
          {
            v268 = *v261++;
            v267 = v267 + (v268 - v266) * (v268 - v266);
            --v257;
          }

          while (v257);
        }

        v258 = sqrt(v267 / v265);
      }

      v269 = *(v62 + 644216);
      if (v269)
      {
        free(*(v269 - 8));
      }

      *(v62 + 644216) = 0;
      v270 = *(v62 + 644208);
      if (v270)
      {
        free(*(v270 - 8));
      }

      *(v62 + 644208) = 0;
      if (*(*(v62 + 270312) + 77))
      {
        v271 = 1;
      }

      else
      {
        v271 = 3;
      }

      v272 = 86064;
      v273 = v62 + 245616;
      do
      {
        v274 = *(v62 + v272);
        if (v274)
        {
          free(*(v274 - 8));
          v273 = v62 + 245616;
        }

        *(v62 + v272) = 0;
        v272 += 136;
        --v271;
      }

      while (v271);
      if (SLODWORD(STACK[0x225C]) >= v664 / 2)
      {
        v275 = v664 / 2;
      }

      else
      {
        v275 = STACK[0x225C];
      }

      if (LODWORD(STACK[0x225C]) == -1)
      {
        v276 = v664 / 2;
      }

      else
      {
        v276 = v275;
      }

      LODWORD(STACK[0x225C]) = v276;
      if (v276 >= 1)
      {
        LODWORD(STACK[0x2258]) = (LODWORD(STACK[0x2258]) - 2 * v667 * v276) & ~((LODWORD(STACK[0x2258]) - 2 * v667 * v276) >> 31);
      }

      v277 = *v62;
      v278 = 463516;
      if (!*(v62 + 271336))
      {
        v278 = 246144;
      }

      *&STACK[0x2288] = vdivq_f64(*&STACK[0x2288], vdupq_lane_s64(COERCE__INT64((*(v62 + v278) << (4 - (v104 + v669)))), 0));
      v279 = *(*(*&v277 + 23888) + 8);
      sub_2779B310C(v62, &STACK[0x2220], *(v273 + 16), v672, v105, v258);
      v280 = *(*&v277 + 35600);
      if (v280 > 3 || *(v62 + 245632) && v279[6] > 0.2 && v279[2] / (v279[4] + dbl_277BB7020[v279[4] < 0.0]) > 2.0)
      {
        v281 = v62 + 269200;
        if (!vars8)
        {
          v282 = *(v62 + 245868);
          v283 = *(v62 + 246032 + 8 * *(v62 + 245856));
          v284 = *(v62 + 246032 + 8 * v282);
          if (v284)
          {
            --*v284;
          }

          *(v62 + 246032 + 8 * v282) = v283;
          ++*v283;
        }

        v285 = 1;
      }

      else
      {
        v285 = v280 + 1;
        v281 = v62 + 269200;
      }

      *(*&v277 + 35600) = v285;
      sub_277A48A28(v658 + 1248, v679);
      v286 = v62 + 246032;
      v287 = *(v62 + 245856);
      v288 = *(v62 + 245848);
      v289 = *(v62 + 246032 + 8 * v287);
      if (v289)
      {
        --*v289;
      }

      *(v286 + 8 * v287) = v288;
      ++*v288;
      v290 = *(v62 + 245632);
      if (!v290)
      {
        v291 = *(v62 + 245868);
        if (v291 != -1)
        {
          v292 = *(v286 + 8 * *(v62 + 245856));
          v293 = *(v286 + 8 * v291);
          if (v293)
          {
            --*v293;
          }

          *(v286 + 8 * v291) = v292;
          ++*v292;
        }
      }

      *(v62 + 245632) = v290 + 1;
      *(v62 + 395384) = v675;
      if ((*v704 & 0xFD) != 0)
      {
        v294 = 0;
        v295 = *(v62 + 273752);
        v296 = v62 + 273688;
        v297 = 1;
        do
        {
          v298 = *(v296 + v294);
          if (v294 == 24)
          {
            if (*(v281 + 2980) || *(*v62 + 23172) || *(v281 + 3008) != 1 || *(v281 + 2208))
            {
              v299 = v297;
            }

            else
            {
              if (*(*v62 + 51016))
              {
                v300 = 1;
              }

              else
              {
                v300 = v298 == 0;
              }

              v299 = v297;
              if (!v300)
              {
                v301 = *(v286 + 8 * *(v62 + 245868));
                v302 = v298[316] == *(v301 + 1264) && v298[318] == *(v301 + 1272);
                v299 = v295 | v302;
                v297 = v295 | v302;
              }
            }
          }

          else
          {
            v299 = 1;
          }

          if (v298 && (v299 & 1) != 0)
          {
            --*v298;
            *(v296 + v294) = 0;
          }

          v294 += 8;
        }

        while (v294 != 56);
      }
    }

    return 0;
  }

  *(v62 + 94440) = v68;
  v632 = v55;
  v633 = v58;
  if ((v83 || *(*&v77 + 23172) || *(v62 + 272208) != 1 || *(v62 + 271408)) && *(v62 + 271329) == 2)
  {
    v73.i64[0] = *(*(*(*&v77 + 23888) + 24) + 24);
    if (*v73.i64 < 0.0)
    {
      v128 = 463516;
      if (!*(v62 + 271336))
      {
        v128 = 246144;
      }

      v129 = *(v62 + v128);
      v131 = 3;
      if (!*(v62 + 643740))
      {
        v131 = 6;
      }

      v132 = v81;
      v130 = *(v62 + 272712);
      v133 = sub_2779F1744(*(v130 + 40), *(v130 + 32), *(v130 + 192) & 8, (byte_277C3CAE8[v131] + *(v130 + 24) - 1) / byte_277C3CAE8[v131] * (byte_277C3CAE8[v131] >> 3), (byte_277C3CAFE[v131] + *(v130 + 16) - 1) / byte_277C3CAFE[v131] * (byte_277C3CAFE[v131] >> 3));
      *v73.i64 = log1p(v133 / v129);
      v81 = v132;
      v66 = v62 + 273688;
      v76 = (v62 + 273752);
      v65 = v62 + 393852;
      v67 = (v62 + 245616);
      *(v62 + 644568) = v73.i64[0];
    }
  }

  *(*(v67 + 29) + 1464) = v70;
  v134 = *(v62 + 271968);
  *(v62 + 270916) = v134;
  *(v62 + 270920) = *(v62 + 271969);
  if (v69)
  {
    LOBYTE(v135) = 0;
  }

  else
  {
    v135 = *(v81 + 52);
    if (v135)
    {
      v135 = *(v81 + 40);
      if (v135)
      {
        LOBYTE(v135) = (v70 & 0xFD) != 0;
      }
    }
  }

  v136 = (v135 & v67[498]);
  if (v134)
  {
    v137 = 1;
  }

  else
  {
    v137 = v136 == 0;
  }

  v138 = !v137;
  v67[498] = v138;
  v139 = v70 & 0xFFFFFFFD;
  if (!v69 && (*(v62 + 272069) & 1) != 0 && v139)
  {
    v67[497] = *(v81 + 65) != 0;
    *(v62 + 644193) = v70;
  }

  else
  {
    v67[497] = 0;
    *(v62 + 644193) = v70;
    if (!v139)
    {
      v140 = (v62 + 643472);
      *(v62 + 644688) = 0;
      goto LABEL_108;
    }
  }

  v137 = v70 == 3;
  v140 = (v62 + 643472);
  if (v137)
  {
    *(*&v77 + *(*&v77 + 6664) + 400) = 2;
    v72 = *(v67 + 122);
  }

LABEL_108:
  v148 = v62 + 269200;
  if (!v72 || v67[502] == 1 && *v67)
  {
    v149 = v62 + 264608;
    v631 = v62 + 264608;
    v634 = v66;
    v635 = v76;
    if (*(v62 + 272180) == 1 || *(v140 + 720) == 1 || v67[495] != 1 || (*v67 & 0xFD) == 0 || *(v65 + 2532))
    {
      goto LABEL_116;
    }

    v303 = *(*(v62 + 270312) + 59);
    if (v303 == 2)
    {
      v55 = *(v62 + 272496);
      if (!v55)
      {
LABEL_116:
        v150 = 0;
        v67[494] = 0;
LABEL_117:
        *(v62 + 97208) = v150;
        *(v149 + 4053) = 0;
        v151 = *v67;
        if (v151 <= 3 && v151 != 1)
        {
          *v149 = 0;
          *(v149 + 2) = 0;
          v73.i64[0] = 0;
          *(v62 + 264612) = 0u;
          *(v62 + 264628) = 0u;
          *(v62 + 264644) = 0u;
          *(v62 + 264660) = 0u;
          *(v62 + 264676) = 0u;
          *(v62 + 264692) = 0u;
          *(v62 + 264708) = 0u;
          *(v62 + 264724) = 0u;
          *(v62 + 264740) = 0u;
          *(v62 + 264756) = 0u;
        }

        if (*(v62 + 271436))
        {
          v152 = 1;
        }

        else
        {
          v152 = *(v62 + 271432);
        }

        v140[181] = v152;
        if (!*(v62 + 272180) && !*(*v62 + 23172) && *(v62 + 271292) == 1)
        {
          v179 = v81;
          v180 = v65;
          if (v140[80] >= 1 && !*(v62 + 271240) || (v181 = sub_277A58F40(v62), v67 = (v62 + 245616), v181))
          {
            *(v140 + 1056) = 1;
            goto LABEL_151;
          }

          v65 = v180;
          v81 = v179;
          if (v140[264])
          {
LABEL_151:
            sub_2779F5008(v62, *v73.i64, *&v74, v63, v64, v55, v56, v57, v58, v59, v60, v61);
            sub_277ACB424(v62);
            sub_277A5BAF0(v62);
            v182 = 0;
            v183 = *v635;
            v184 = v62 + 273688;
            v185 = 1;
            do
            {
              v186 = *(v184 + v182);
              if (v182 == 24)
              {
                if (*(v62 + 272180) || *(*v62 + 23172) || *(v62 + 272208) != 1 || *(v62 + 271408))
                {
                  v187 = v185;
                }

                else
                {
                  if (*(*v62 + 51016))
                  {
                    v188 = 1;
                  }

                  else
                  {
                    v188 = v186 == 0;
                  }

                  v187 = v185;
                  if (!v188)
                  {
                    v189 = *(v62 + 246032 + 8 * *(v62 + 245868));
                    v190 = v186[316] == *(v189 + 1264) && v186[318] == *(v189 + 1272);
                    v187 = v183 | v190;
                    v185 = v183 | v190;
                  }
                }
              }

              else
              {
                v187 = 1;
              }

              if (v186 && (v187 & 1) != 0)
              {
                --*v186;
                *(v184 + v182) = 0;
              }

              v182 += 8;
            }

            while (v182 != 56);
            *(*v62 + *(v62 + 463456) + 13918) = 1;
            if (*(v62 + 246096))
            {
              ++*(v62 + 463504);
              ++*(v62 + 245632);
            }

            return 0;
          }
        }

        v703 = v62;
        v639 = v65;
        v637 = v81;
        if (*(v62 + 271992) == 1)
        {
          v306 = *(v67 + 134);
          v307 = v306 + 3;
          v493 = v306 < -3;
          v655 = v306;
          v308 = v306 + 6;
          if (v493)
          {
            v307 = v308;
          }

          v309 = *(v67 + 133);
          v310 = v309 + 3;
          if (v309 < -3)
          {
            v310 = v309 + 6;
          }

          if (v309 >= 1)
          {
            v673 = 0;
            v659 = 0;
            v670 = 0;
            v311 = *(v62 + 272264);
            v662 = *(v311 + 40);
            v312 = *(v311 + 32);
            v313 = (v307 >> 2);
            v314 = v310 >> 2;
            v646 = v313;
            if (v313 <= 1)
            {
              v315 = 1;
            }

            else
            {
              v315 = v313;
            }

            v644 = v314;
            if (v314 <= 1)
            {
              v316 = 1;
            }

            else
            {
              v316 = v314;
            }

            vars8a = v316;
            v317 = 0.0;
            v318 = *(v67 + 134);
            v665 = v315;
            do
            {
              if (v655 >= 1)
              {
                v319 = 0;
                v320 = 0;
                v321 = v659 * v646;
                v689 = 2;
                do
                {
                  v681 = v319;
                  if (4 * v659 >= v309)
                  {
                    v330 = NAN;
                  }

                  else
                  {
                    v676 = v320;
                    v322 = 4 * v320;
                    v323 = 4 * v320 + 4;
                    v684 = v662 + v319;
                    v324 = 0.0;
                    v325 = v673;
                    v326 = v670;
                    v327 = 0.0;
                    do
                    {
                      if (v322 < v318)
                      {
                        v328 = v689;
                        v329 = v684 + v325;
                        do
                        {
                          v327 = v327 + sub_277A5D00C(*v703, (v703 + 10810), v329, v312, 3, 0, (*(v79[12] + 192) >> 3) & 1);
                          v324 = v324 + 1.0;
                          v318 = *(v704 + 536);
                          if (v328 >= v323)
                          {
                            break;
                          }

                          v329 += 8;
                          v493 = v328 < v318;
                          v328 += 2;
                        }

                        while (v493);
                        v309 = *(v704 + 532);
                      }

                      v326 += 2;
                      if (v326 >= 4 * v659 + 4)
                      {
                        break;
                      }

                      v325 += 8 * v312;
                    }

                    while (v326 < v309);
                    v330 = v327 / v324 * -0.0021489;
                    v140 = v657;
                    v315 = v665;
                    v321 = v659 * v646;
                    v320 = v676;
                    v62 = v703;
                  }

                  v331 = (1.0 - exp(v330)) * 67.035434 + 17.492222;
                  *(*(v140 + 39) + 8 * v320 + 8 * v321) = v331;
                  v317 = v317 + log(v331);
                  ++v320;
                  v689 += 4;
                  v319 = v681 + 16;
                }

                while (v320 != v315);
              }

              v670 += 4;
              v673 += 16 * v312;
              ++v659;
            }

            while (v659 != vars8a);
            *v73.i64 = exp(v317 / (v644 * v646));
            v332 = 0;
            v333 = 0;
            v67 = v704;
            v65 = v639;
            v81 = v637;
            do
            {
              if (v655 >= 1)
              {
                v334 = (*(v140 + 39) + v332);
                v335 = v315;
                do
                {
                  *&v74 = *v334 / *v73.i64;
                  *v334++ = v74;
                  --v335;
                }

                while (v335);
              }

              ++v333;
              v332 += 8 * v646;
            }

            while (v333 != vars8a);
          }
        }

        v336 = v653;
        v337 = *(v653 + 2129);
        if (v337 != 3)
        {
          goto LABEL_490;
        }

        if (*(v65 + 2532))
        {
          goto LABEL_573;
        }

        *(v140 + 1032) = 3;
        v338 = *(v140 + 125);
        if (*(v653 + 3024))
        {
          if (!v338 || !*(v140 + 126))
          {
            goto LABEL_382;
          }

          v338 = *(v140 + 127);
        }

        if (v338)
        {
LABEL_389:
          v342 = v67;
          if (sub_27797AC44(*(v67 + 29) + 1248, *(v67 + 14), *(v67 + 15), *(*(v653 + 1112) + 96), *(*(v653 + 1112) + 100), *(*(v653 + 1112) + 76), *(v653 + 2932), *(v67 + 128), *v73.i64, *&v74, v63, v64, *(v140 + 1308), 0))
          {
            sub_2779F5C10(*(v342 + 48), 2, "Failed to allocate frame buffer");
          }

          sub_277B0DA28(v342, v62 + 86064);
          *(v140 + 130) = 0;
          a53 = 0u;
          a54 = 0u;
          a51 = 0u;
          a52 = 0u;
          a50 = 0u;
          a48 = 0u;
          a49 = 0u;
          a46 = 0u;
          a47 = 0u;
          a43 = &a44;
          *v79 = &a43;
          *(v342 + 616) = *(v653 + 2088);
          a44 = 0u;
          a45 = 0u;
          *(v62 + 172664) = -1;
          sub_277A806F0(v62, v62 + 86064, 0, 1);
          a41 = 0.0;
          a42 = 0.0;
          v351 = v661[12];
          if (v351 >= *v661)
          {
            v352 = *v661;
          }

          else
          {
            v352 = v351;
          }

          *(v661 + 52) = nullsub_3;
          *(v661 + 53) = nullsub_4;
          if (v352 <= 1 || (*(v653 + 2879) & 1) != 0)
          {
            if (*(v678 + 40) >= 1)
            {
              v353 = 0;
              v354 = byte_277C3F990[*(v657 + 1032)];
              do
              {
                sub_277B0DACC(v62, v62 + 86064, v62 + 86480, v353, &STACK[0x3220], &STACK[0x2220], &STACK[0x1220], &a55, v343, v344, v345, v346, v347, v348, v349, v350, &a42, &a41, *(v62 + 241000));
                v353 += v354;
              }

              while (v353 < *(v678 + 40));
            }

            v355 = v704;
            v140 = v657;
          }

          else
          {
            __srcb = (v62 + 86064);
            *(v661 + 52) = sub_277AF6378;
            *(v661 + 53) = sub_277AF6430;
            v356 = *v62 + 81920;
            v357 = *(v704 + 532);
            sub_277AF96C0(*v62 + 85848, v704, *(v704 + 532));
            *(v356 + 3956) = 0;
            *(v356 + 3968) = v352;
            *(v356 + 3964) = 0;
            memset(*(v356 + 3944), 255, 4 * v357);
            *(v661 + 366) = 0;
            v358 = 56 * v352;
            v359 = *(v661 + 7);
            v360 = *(v661 + 8);
            v361 = v358 + v359;
            v362 = 456 * v352 - 456;
            v363 = v360 + v362;
            *(v361 - 32) = sub_277AFA790;
            *(v361 - 24) = v360 + v362;
            v364 = v352 - 1;
            *(v361 - 16) = 0;
            *(v363 + 452) = v352 - 1;
            *(v363 + 448) = 0;
            *v363 = v62;
            v365 = v352 - 2;
            v366 = v358 - 88;
            v367 = v352 - 1;
            do
            {
              v368 = *(v363 + 16);
              *(v363 + 8) = v368;
              if (v368 != __srcb)
              {
                memcpy(v368, __srcb, 0x256A0uLL);
                sub_277B0DA28(v704, *(v363 + 8));
                v359 = *(v661 + 7);
                v360 = *(v661 + 8);
              }

              --v367;
              v369 = v360 + v362;
              v370 = (v360 + v362 - 456);
              v371 = (v359 + v366);
              *v371 = sub_277AFA790;
              v371[1] = v370;
              v363 = v360 + 456 * v367;
              v371[2] = 0;
              *(v369 - 8) = 0;
              *(v369 - 4) = v365;
              *v370 = v62;
              --v365;
              v366 -= 56;
              v362 -= 456;
            }

            while (v362);
            *(v360 + 8) = __srcb;
            v372 = (v359 + 56 * v364);
            v372[12] = 0;
            v373 = 56 * v352 - 64;
            do
            {
              sub_277985E48(v372, 2);
              --v364;
              v374 = *(v661 + 7);
              v372 = (v374 + 56 * v364);
              *(v374 + v373) = 0;
              v373 -= 56;
            }

            while (v373 != -8);
            v375 = *(v374 + 24);
            if (v375)
            {
              *(v374 + 48) |= v375(*(v374 + 32), *(v374 + 40)) == 0;
              v374 = *(v661 + 7);
            }

            v376 = *(v374 + 48);
            LODWORD(STACK[0x23B0]) = 0;
            *&STACK[0x2390] = 0u;
            *&STACK[0x23A0] = 0u;
            *&STACK[0x2370] = 0u;
            *&STACK[0x2380] = 0u;
            *&STACK[0x2350] = 0u;
            *&STACK[0x2360] = 0u;
            *&STACK[0x2330] = 0u;
            *&STACK[0x2340] = 0u;
            *&STACK[0x2310] = 0u;
            *&STACK[0x2320] = 0u;
            *&STACK[0x22F0] = 0u;
            *&STACK[0x2300] = 0u;
            *&STACK[0x22D0] = 0u;
            *&STACK[0x22E0] = 0u;
            *&STACK[0x22B0] = 0u;
            *&STACK[0x22C0] = 0u;
            *&STACK[0x2290] = 0u;
            *&STACK[0x22A0] = 0u;
            *&STACK[0x2270] = 0u;
            *&STACK[0x2280] = 0u;
            *&STACK[0x2250] = 0u;
            *&STACK[0x2260] = 0u;
            *&STACK[0x2230] = 0u;
            *&STACK[0x2240] = 0u;
            v377 = v376 == 0;
            *&STACK[0x2220] = 0u;
            if (v376)
            {
              memcpy(&STACK[0x2220], (*(v374 + 32) + 24), 0x194uLL);
            }

            v378 = v352;
LABEL_411:
            v379 = 56 * v378 - 8;
            do
            {
              v380 = v378 - 1;
              v381 = (*(v661 + 7) + v379);
              sub_277985E48(v381 - 12, 1);
              if (*v381)
              {
                memcpy(&STACK[0x2220], (*(v381 - 2) + 24), 0x194uLL);
                v377 = 0;
                v493 = v378-- > 2;
                if (v493)
                {
                  goto LABEL_411;
                }

                goto LABEL_418;
              }

              v379 -= 56;
              --v378;
            }

            while (v380 + 1 > 2);
            if (v377)
            {
              goto LABEL_419;
            }

LABEL_418:
            sub_2779F5C78(*(v704 + 48), &STACK[0x2220]);
LABEL_419:
            *(*(*(v374 + 32) + 8) + 11152) = *(v704 + 48);
            sub_277AF64E0((*v62 + 85848));
            v355 = v704;
            v382 = 8;
            v140 = v657;
            do
            {
              v383 = *(*(v661 + 8) + v382);
              if (v383 != __srcb)
              {
                v384 = v383[19367];
                if (v384)
                {
                  free(*(v384 - 8));
                  v355 = v704;
                }

                v383[19367] = 0;
              }

              v382 += 456;
              --v352;
            }

            while (v352);
          }

          v336 = v653;
          if (*(v653 + 2879) == 1 && *(v355 + 616) <= 127)
          {
            v385 = *(v355 + 60) * *(v355 + 56);
            if (a41 / (100 * v385) > 2.0 && a42 / v385 < 4.0)
            {
              *(v653 + 2873) = 0;
              *(v653 + 2875) = 0;
              *(v653 + 2877) = 0;
            }
          }

          if (*(v653 + 3024))
          {
            v387 = byte_277C3F990[*(v140 + 1032)];
            v388 = fopen(*(v653 + 3032), "r");
            v355 = v704;
            if (v388)
            {
              v389 = v388;
              v390 = *(v678 + 40);
              v391 = 0.0;
              v392 = 0.0;
              if (v390 < 1)
              {
LABEL_443:
                fclose(v389);
                v355 = v704;
                v397 = *(v678 + 40);
                v336 = v653;
                v140 = v657;
                if (v397 >= 1)
                {
                  v398 = 0;
                  v399 = 0;
                  v400 = *(v678 + 44);
                  do
                  {
                    if (v400 >= 1)
                    {
                      for (j = 0; j < v400; j += 4)
                      {
                        v402 = 0;
                        v403 = 0;
                        do
                        {
                          for (k = 0; k < 4; k += v387)
                          {
                            v403 += *(*(v657 + 126) + 4 * ((j + k) / v387 + (v402 | v398) / v387 * v400));
                          }

                          v402 += v387;
                        }

                        while (v402 < 4);
                        v399 += v403;
                      }
                    }

                    v398 += 4;
                  }

                  while (v398 < v397);
                  v391 = v399;
                }

                *(v657 + 128) = v391 / v392;
              }

              else
              {
                v393 = 0;
                v394 = *(v678 + 44);
                while (v394 < 1)
                {
LABEL_442:
                  v393 += 4;
                  if (v393 >= v390)
                  {
                    goto LABEL_443;
                  }
                }

                v395 = 0;
                while (1)
                {
                  LODWORD(STACK[0x2220]) = 0;
                  if (fscanf(v389, "%f", &STACK[0x2220]) != 1)
                  {
                    break;
                  }

                  v396 = *&STACK[0x2220];
                  v392 = v392 + v396;
                  v394 = *(v678 + 44);
                  *(*(v657 + 127) + 8 * (v395 / v387 + v394 * (v393 / v387))) = v396;
                  v395 += 4;
                  if (v395 >= v394)
                  {
                    v390 = *(v678 + 40);
                    goto LABEL_442;
                  }
                }

                fclose(v389);
                v355 = v704;
                v336 = v653;
                v140 = v657;
              }
            }
          }

          v405 = *(*(v336 + 1112) + 28);
          v406 = byte_277C3F990[v405];
          v407 = *(v355 + 532);
          if (v407 < 1)
          {
            v416 = 1;
          }

          else
          {
            v408 = 0;
            v409 = *(v355 + 536);
            v410 = 0.0;
            v411 = 0.0;
            do
            {
              if (v409 >= 1)
              {
                v412 = 0;
                do
                {
                  v413 = sub_277B0E758(v62, v405, v408, v412);
                  v414 = sub_277B0E880(v62, v405, v408, v412);
                  v415 = v414 / sqrt(sub_277B0E944(v62, v405, v408, v412));
                  v410 = v410 + v415 * log(v413);
                  v411 = v411 + v415;
                  v412 = (v412 + v406);
                }

                while (v412 < v409);
              }

              v408 = (v408 + v406);
            }

            while (v408 < v407);
            if (v411 <= 0.0)
            {
              v416 = 1;
            }

            else
            {
              v416 = exp(v410 / v411);
            }

            v355 = v704;
            v336 = v653;
            v140 = v657;
          }

          if (v416 <= 1)
          {
            v417 = 1;
          }

          else
          {
            v417 = v416;
          }

          *(v140 + 130) = v417;
          v418 = 1;
          do
          {
            v419 = v418;
            if (v407 >= 1)
            {
              v692 = v418;
              v420 = 0;
              v421 = *(v355 + 536);
              __srcc = v417;
              v422 = v417;
              v423 = 0.0;
              v424 = 0.0;
              do
              {
                if (v421 >= 1)
                {
                  v425 = 0;
                  do
                  {
                    v426 = v422 / sub_277B0E758(v62, v405, v420, v425);
                    sub_277B0EA08(v62, v405, v420, v425);
                    if (v427 >= 1.0)
                    {
                      v428 = v427;
                    }

                    else
                    {
                      v428 = 1.0;
                    }

                    v429 = fmax(fmin(v426, 4.0), 0.25);
                    if (v429 >= 1.0 / v428)
                    {
                      v430 = (v422 / v429);
                      v431 = sub_277B0E880(v62, v405, v420, v425);
                      v432 = v431 / sqrt(sub_277B0E944(v62, v405, v420, v425));
                      v423 = v423 + v432 * log(v430);
                      v424 = v424 + v432;
                    }

                    v425 = (v425 + v406);
                  }

                  while (v425 < v421);
                }

                v420 = (v420 + v406);
              }

              while (v420 < v407);
              v355 = v704;
              v336 = v653;
              v140 = v657;
              v417 = __srcc;
              v419 = v692;
              if (v424 > 0.0)
              {
                v433 = exp(v423 / v424);
                v355 = v704;
                v417 = v433;
              }
            }

            v418 = 0;
            if (v417 <= 1)
            {
              v417 = 1;
            }

            *(v140 + 130) = v417;
          }

          while ((v419 & 1) != 0);
          *v79 = 0;
          sub_27797ABB4(*(v355 + 232) + 1248);
          v434 = *(v62 + 241000);
          if (v434)
          {
            free(*(v434 - 8));
          }

          *(v62 + 241000) = 0;
          v337 = *(v336 + 2129);
          v67 = v704;
          v65 = v639;
          v81 = v637;
LABEL_490:
          if (v337 == 4)
          {
            if (!*(v140 + 131))
            {
              v435 = sub_2779724A8(*(v678 + 52) * *(v678 + 48), 4uLL);
              v67 = v704;
              *(v140 + 131) = v435;
              if (!v435)
              {
                sub_2779F5C10(*(v704 + 48), 2, "Failed to allocate cpi->mb_delta_q");
                v67 = v704;
              }
            }

            v436 = *(v336 + 3064);
            v682 = *(v436 + 40);
            v437 = *(v436 + 32);
            v438 = *(*(v336 + 1112) + 28);
            vars8b = byte_277C3F990[v438];
            v439 = ((vars8b + *(v67 + 134) - 1) / vars8b);
            v640 = byte_277C36D60[v438];
            v642 = ((byte_277C36D60[v438] + *(v67 + 133) - 1) / byte_277C36D60[v438]);
            v440 = sub_2779724A8(v642 * v439, 4uLL);
            STACK[0x2220] = v440;
            v441 = v440;
            if (!v440)
            {
              sub_2779F5C10(*(v704 + 48), 2, "Failed to allocate mb_delta_q[0]");
            }

            v630 = v642 * v439;
            v442 = sub_2779724A8(v642 * v439, 4uLL);
            STACK[0x1220] = v442;
            if (!v442)
            {
              sub_2779F5C10(*(v704 + 48), 2, "Failed to allocate mb_delta_q[1]");
              v442 = 0;
            }

            v443 = v704;
            v444 = vars8b;
            if (v642 < 1)
            {
              v475 = 0.0;
              v474 = 0.0;
            }

            else
            {
              v445 = 0;
              v446 = 0;
              v671 = 0;
              v447 = 0;
              v663 = v439;
              v647 = v442;
              vars0a = v441;
              do
              {
                v656 = v445;
                if (v439 <= 0)
                {
                  v473 = v447 + 1;
                }

                else
                {
                  v693 = 0;
                  v674 = 0;
                  v677 = 0;
                  v668 = v447 * v439;
                  v666 = v447 * v640;
                  v638 = v447 + 1;
                  __srcd = (v447 + 1) * v640;
                  do
                  {
                    v448 = *(v443 + 532);
                    if (v448 <= v666)
                    {
                      v465 = v674;
                      v450 = v674 + 1;
                      v463 = NAN;
                      v464 = v442;
                    }

                    else
                    {
                      v660 = v446;
                      v449 = v674 * v444;
                      v450 = v674 + 1;
                      v451 = (v674 + 1) * v444;
                      LODWORD(v452) = *(v443 + 536);
                      v453 = 0.0;
                      v454 = v656;
                      v455 = 0.0;
                      v685 = v449;
                      do
                      {
                        if (v452 > v449)
                        {
                          v456 = v450;
                          v457 = v693;
                          v458 = v677 + 2;
                          do
                          {
                            v459 = sub_277A5D00C(*v62, v62 + 86480, v682 + 4 * v437 * v454 + v457, v437, 3, 0, (*(v79[12] + 192) >> 3) & 1);
                            if (v459 <= 1)
                            {
                              v460 = 1;
                            }

                            else
                            {
                              v460 = v459;
                            }

                            v453 = v453 + log(v460);
                            v455 = v455 + 1.0;
                            v452 = *(v704 + 536);
                            v461 = v458;
                            v493 = v458 < v452;
                            v458 += 2;
                            v457 += 8;
                          }

                          while (v493 && v461 < v451);
                          v448 = *(v704 + 532);
                          v450 = v456;
                          v449 = v685;
                        }

                        v454 += 2;
                      }

                      while (v454 < v448 && v454 < __srcd);
                      v463 = v453 / v455;
                      v464 = v647;
                      v441 = vars0a;
                      v444 = vars8b;
                      v446 = v660;
                      v465 = v674;
                    }

                    v466 = v465 + v668;
                    v467 = exp(v463);
                    v468 = exp(v467 * -0.004898) * -98.0 + 131.728;
                    v469 = 0.5;
                    if (v468 < 0.0)
                    {
                      v469 = -0.5;
                    }

                    *(v441 + 4 * v466) = (v468 + v469);
                    v470 = exp(v467 * -0.003093) * -68.8 + 180.4;
                    v471 = 0.5;
                    if (v470 < 0.0)
                    {
                      v471 = -0.5;
                    }

                    v472 = v470 + v471;
                    *(v464 + 4 * v466) = v472;
                    v446 += *(v441 + 4 * v466);
                    v671 += v472;
                    v674 = v450;
                    v677 += v444;
                    v693 += 4 * vars8b;
                    v443 = v704;
                    v442 = v464;
                  }

                  while (v450 != v663);
                  v439 = v663;
                  v473 = v638;
                }

                v445 = v656 + v640;
                v447 = v473;
              }

              while (v473 != v642);
              v474 = v446;
              v475 = v671;
              v336 = v653;
            }

            v476 = v474 / v630;
            v477 = -0.5;
            if (v476 >= 0.0)
            {
              v478 = 0.5;
            }

            else
            {
              v478 = -0.5;
            }

            v479 = v476 + v478;
            v480 = v475 / v630;
            if (v480 >= 0.0)
            {
              v481 = 0.5;
            }

            else
            {
              v481 = -0.5;
            }

            v482 = v480 + v481;
            v483 = v482;
            v484 = *(v336 + 2088);
            v485 = &STACK[0x2220];
            v486 = 255 - v482;
            v487 = v479;
            v488 = &STACK[0x3220];
            v489 = v484 - v479;
            v490 = v482 - v479;
            if (v484 < v482)
            {
              v486 = v482 - v479;
            }

            if (v484 < v483)
            {
              v491 = 1;
            }

            else
            {
              v489 = 255 - v484;
              v491 = 0;
            }

            if (v484 >= v483)
            {
              v492 = &STACK[0x1220];
            }

            else
            {
              v488 = v482;
              v492 = v488;
            }

            v493 = v484 < v487;
            if (v484 >= v487)
            {
              v494 = v486;
            }

            else
            {
              v494 = v479;
            }

            a55 = v479;
            LODWORD(STACK[0x3220]) = v483;
            if (v484 >= v487)
            {
              v495 = v489;
            }

            else
            {
              v495 = v484;
            }

            if (v484 >= v487)
            {
              v496 = v491;
            }

            else
            {
              v496 = 0;
            }

            if (v484 >= v487)
            {
              v497 = v488;
            }

            else
            {
              v497 = &a55;
            }

            if (!v493)
            {
              v485 = v492;
            }

            v140 = v657;
            if (v642 >= 1)
            {
              v498 = 0;
              v499 = 0;
              v500 = v495 / v494;
              do
              {
                if (v439 >= 1)
                {
                  v501 = *(v657 + 131);
                  v502 = v498;
                  v503 = v439;
                  do
                  {
                    if (v496)
                    {
                      v504 = *(v441 + v502);
                      v505 = v504;
                      v506 = *(v442 + v502) - v504;
                      *&v507 = v506;
                      LOBYTE(v507) = *(v336 + 2130);
                      v508 = v507 / 100.0 * (v505 + v500 * v506 - (v487 + v500 * v490));
                    }

                    else
                    {
                      LOBYTE(v477) = *(v336 + 2130);
                      v508 = v500 * (*&v477 / 100.0) * (*(*v485 + v502) - *v497);
                    }

                    v477 = v508 + 0.5;
                    if (v508 < 0.0)
                    {
                      v477 = v508 + -0.5;
                    }

                    *(v501 + v502) = v477;
                    v502 += 4;
                    --v503;
                  }

                  while (v503);
                }

                ++v499;
                v498 += 4 * v439;
              }

              while (v499 != v642);
            }

            if (v441)
            {
              v509 = v442;
              free(*(v441 - 8));
              v442 = v509;
            }

            if (v442)
            {
              free(*(v442 - 8));
            }

            v67 = v704;
            v65 = v639;
            v81 = v637;
          }

LABEL_573:
          v510 = v678;
          if (*(v81 + 16))
          {
            v511 = *(v336 + 1792);
            if (v511 == -1)
            {
              v513 = *(v336 + 3064);
              v514 = *(v513 + 40);
              if ((*(v513 + 192) & 8) != 0)
              {
                v517 = (2 * v514);
                v515 = *v517;
                v516 = v517[2];
              }

              else
              {
                v515 = *v514;
                v516 = v514[1];
              }

              v512 = (v515 | (v516 << 8)) % (1 << *(v81 + 20));
              if (*(v336 + 1992))
              {
                v512 = 55;
              }
            }

            else
            {
              v512 = (v511 + (1 << *(v81 + 20)) + 1) % (1 << *(v81 + 20));
            }

            *(v336 + 1792) = v512;
          }

          v518 = *(v336 + 1968);
          if (!*(v336 + 1968))
          {
            goto LABEL_611;
          }

          if (v518 == 2)
          {
            if ((*(v336 + 3008) | 2) == 2)
            {
              if ((*v67 & 0xFD) == 0)
              {
LABEL_602:
                LOBYTE(v519) = 0;
                goto LABEL_612;
              }

              LOBYTE(v519) = *(v67 + 120) != 0;
LABEL_612:
              v67[492] = v519;
              goto LABEL_613;
            }
          }

          else
          {
            if (v518 != 1)
            {
LABEL_613:
              if ((v140[248] & 1) == 0 && *(*v62 + *(v678 + 24) + 400) == 6)
              {
                v67[492] = 1;
              }

              if (*(v336 + 2203) == 1 && (*v67 & 0xFD) != 0)
              {
                v522 = v65;
                sub_277A9FC64(*(*(v336 + 3064) + 96));
                sub_2779FB544(*(*(v336 + 3064) + 104));
                v65 = v522;
              }

              a38 = 0;
              v523 = *(v336 + 2152);
              if (v523 != 4 || *(v65 + 1560) == 2 || *(v65 + 1256) < 2)
              {
                v524 = v140[182];
                v140[182] = v523;
                if (sub_277AD0364(v62, v633, v632, 0, 0, &a38))
                {
                  goto LABEL_623;
                }

                v140[182] = v524;
                v526 = v704;
                goto LABEL_625;
              }

              sub_277BA5710(v62);
              STACK[0x3220] = 0x7FFFFFFFFFFFFFFFLL;
              a43 = 0x7FFFFFFFFFFFFFFFLL;
              *&a44 = 0x7FFFFFFFFFFFFFFFLL;
              a40 = 0;
              a42 = NAN;
              v690 = *(*(v336 + 1112) + 72);
              v686 = *(*v62 + *(v678 + 24) + 400);
              if (*(v639 + 1560))
              {
                v140[182] = 4;
                v537 = sub_277AD0364(v62, v633, v632, &STACK[0x3220], &a44, &a40 + 1);
                v140[182] = 0;
                if (v537)
                {
                  goto LABEL_623;
                }

                v538 = *(v62 + 393880);
                *(v62 + 268640) = *(v62 + 393864);
                *(v62 + 268656) = v538;
                *(v336 + 136) = *(v639 + 292);
                v539 = *(v62 + 394032);
                *(v62 + 269208) = *(v62 + 394016);
                *(v62 + 269224) = v539;
                v540 = *(v62 + 394064);
                *(v62 + 269240) = *(v62 + 394048);
                *(v62 + 269256) = v540;
                v541 = *(v62 + 394080);
                v542 = *(v62 + 394096);
                v543 = *(v62 + 394128);
                *(v62 + 269304) = *(v62 + 394112);
                *(v62 + 269320) = v543;
                *(v62 + 269272) = v541;
                *(v62 + 269288) = v542;
                *v336 = *(v639 + 156);
                memcpy((v62 + 395064), (v62 + 394368), 0x138uLL);
                v544 = (*v62 + 74928);
                *v544 = *(v62 + 394680);
                v545 = *(v62 + 394696);
                v546 = *(v62 + 394712);
                v547 = *(v62 + 394728);
                *(v544 + 60) = *(v62 + 394740);
                v544[2] = v546;
                v544[3] = v547;
                v544[1] = v545;
                if ((*v704 & 0xFD) != 0)
                {
                  v548 = 0;
                  v549 = *v635;
                  v550 = v62 + 273688;
                  v551 = 1;
                  do
                  {
                    v552 = *(v550 + v548);
                    if (v548 == 24)
                    {
                      if (*(v336 + 2980) || *(*v62 + 23172) || *(v336 + 3008) != 1 || *(v336 + 2208))
                      {
                        v553 = v551;
                      }

                      else
                      {
                        if (*(*v62 + 51016))
                        {
                          v554 = 1;
                        }

                        else
                        {
                          v554 = v552 == 0;
                        }

                        v553 = v551;
                        if (!v554)
                        {
                          v555 = *(v62 + 246032 + 8 * *(v704 + 252));
                          v556 = v552[316] == *(v555 + 1264) && v552[318] == *(v555 + 1272);
                          v553 = v549 | v556;
                          v551 = v549 | v556;
                        }
                      }
                    }

                    else
                    {
                      v553 = 1;
                    }

                    if (v552 && (v553 & 1) != 0)
                    {
                      --*v552;
                      *(v550 + v548) = 0;
                    }

                    v548 += 8;
                  }

                  while (v548 != 56);
                }

                if (sub_277AD0364(v62, v633, v632, &a43, &a42, &a40))
                {
                  goto LABEL_623;
                }

                v578 = sub_277A89FA0(v690, v686, *(v704 + 616));
                if (v578 * a44 * 0.001953125 + (STACK[0x3220] >> (2 * v690 - 16)) * 128.0 >= v578 * *&a42 * 0.001953125 + (a43 >> (2 * v690 - 16)) * 128.0)
                {
                  a38 = a40;
                  v526 = v704;
                  v140 = v657;
                  v510 = v678;
LABEL_625:
                  v527 = v637;
LABEL_626:
                  v528 = v634;
                  if (*(v527 + 16))
                  {
                    v529 = 0;
                    v530 = *(v526 + 36);
                    do
                    {
                      if ((v530 >> v529))
                      {
                        *(v62 + 270996 + 4 * v529) = *(v336 + 1792);
                      }

                      ++v529;
                    }

                    while (v529 != 8);
                  }

                  if (v140[80] == v140[82] - 1)
                  {
                    ++v140[110];
                  }

                  if (*v631)
                  {
                    if (!*(v631 + 1))
                    {
                      v531 = *(v631 + 176);
                      if (v531)
                      {
                        memcpy(*(*(v526 + 232) + 80), v531, *(*(v526 + 232) + 260) * *(*(v526 + 232) + 264));
                        v528 = v634;
                        v526 = v704;
                      }
                    }
                  }

                  if (!*(*v62 + 4 * *(v510 + 24) + 12668) && (*v526 & 0xFD) != 0)
                  {
                    v532 = v528;
                    sub_277AD6D18(v62);
                    v528 = v532;
                    v526 = v704;
                  }

                  if (*(v526 + 480))
                  {
                    *(v528 + 56) = *(v526 + 232);
                  }

                  if (*(v526 + 516) == 1)
                  {
                    memcpy(*(v336 + 1120), (*(v510 + 112) + 23824 * a38 + 32), 0x52FCuLL);
                    sub_27798FC58(*(v336 + 1120));
                    v526 = v704;
                  }

                  if (!*(v336 + 1716))
                  {
                    memcpy((*(v526 + 232) + 1496), *(v336 + 1120), 0x52FCuLL);
                    v526 = v704;
                  }

                  if (*(v336 + 2770) == 1)
                  {
                    if (*(v336 + 1716))
                    {
                      v533 = *(v336 + 2980);
                      if (v533 > 1 || !v533 && !*(v140 + 720) && *(*v62 + 23172))
                      {
                        *&STACK[0x2220] = *"./fc";
                        LODWORD(STACK[0x2230]) = 0;
                        v534 = *(v526 + 16);
                        LOBYTE(STACK[0x2224]) = v534 / 0x64 + 48;
                        LOBYTE(STACK[0x2225]) = (v534 % 0x64 / 0xA) | 0x30;
                        LOWORD(STACK[0x2226]) = (v534 % 0xA) | 0x30;
                        sub_2779F4E7C(*(v336 + 1120), &STACK[0x2220]);
                        v526 = v704;
                      }
                    }
                  }

                  *(v140 + 721) = *v526;
                  if (*(v526 + 492) == 1)
                  {
                    v535 = v140[304] + 1;
                  }

                  else
                  {
                    v535 = 1;
                  }

                  v140[304] = v535;
                  v536 = v140[82];
                  if (v140[80] == v536 - 1)
                  {
                    v140[84] = v536;
                  }

                  *(v631 + 1) = 0;
                  *(v631 + 4053) = 0;
                  v525 = *(v526 + 480);
                  if (v525)
                  {
                    v525 = 0;
                    ++*(v510 + 72);
                    ++*(v526 + 16);
                  }

                  return v525 != 0;
                }

                v579 = *(v62 + 393880);
                *(v62 + 268640) = *(v62 + 393864);
                *(v62 + 268656) = v579;
                *(v336 + 136) = *(v639 + 292);
                v580 = *(v62 + 394032);
                *(v62 + 269208) = *(v62 + 394016);
                *(v62 + 269224) = v580;
                v581 = *(v62 + 394064);
                *(v62 + 269240) = *(v62 + 394048);
                *(v62 + 269256) = v581;
                v582 = *(v62 + 394080);
                v583 = *(v62 + 394096);
                v584 = *(v62 + 394128);
                *(v62 + 269304) = *(v62 + 394112);
                *(v62 + 269320) = v584;
                *(v62 + 269272) = v582;
                *(v62 + 269288) = v583;
                *v336 = *(v639 + 156);
                memcpy((v62 + 395064), (v62 + 394368), 0x138uLL);
                v585 = (*v62 + 74928);
                v586 = *(v62 + 394696);
                v587 = *(v62 + 394712);
                v588 = *(v62 + 394728);
                *(v585 + 60) = *(v62 + 394740);
                v585[2] = v587;
                v585[3] = v588;
                v585[1] = v586;
                *v585 = *(v62 + 394680);
                v589 = v704;
                v140 = v657;
                v510 = v678;
                if ((*v704 & 0xFD) != 0)
                {
                  v590 = 0;
                  v591 = *v635;
                  v592 = v62 + 273688;
                  v593 = v62 + 246032;
                  v594 = 1;
                  do
                  {
                    v595 = *(v592 + v590);
                    if (v590 == 24)
                    {
                      if (*(v336 + 2980) || *(*v62 + 23172) || *(v336 + 3008) != 1 || *(v336 + 2208))
                      {
                        v596 = v594;
                      }

                      else
                      {
                        if (*(*v62 + 51016))
                        {
                          v597 = 1;
                        }

                        else
                        {
                          v597 = v595 == 0;
                        }

                        v596 = v594;
                        if (!v597)
                        {
                          v598 = *(v593 + 8 * *(v589 + 252));
                          v599 = v595[316] == *(v598 + 1264) && v595[318] == *(v598 + 1272);
                          v596 = v591 | v599;
                          v594 = v591 | v599;
                          v62 = v703;
                          v589 = v704;
                          v336 = v653;
                          v140 = v657;
                          v510 = v678;
                        }
                      }
                    }

                    else
                    {
                      v596 = 1;
                    }

                    if (v595 && (v596 & 1) != 0)
                    {
                      --*v595;
                      *(v592 + v590) = 0;
                    }

                    v590 += 8;
                  }

                  while (v590 != 56);
                }

                v140[182] = 4;
                v629 = sub_277AD0364(v62, v633, v632, &STACK[0x2220], &STACK[0x1220], &a38);
                v140[182] = 0;
              }

              else
              {
                if ((*(*v62 + *(v678 + 24) + 400) - 6) < 0xFEu)
                {
                  v557 = v62 + 273688;
                  v558 = 9;
                  while (1)
                  {
                    *(v653 + 2148) = v558;
                    *(v653 + 2149) = v558;
                    v657[182] = 4;
                    v559 = sub_277AD0364(v62, v633, v632, &STACK[0x2220] + v558 - 9, &STACK[0x1220] + v558 - 9, &a55 + v558 - 9);
                    v657[182] = 0;
                    if (v559)
                    {
                      goto LABEL_623;
                    }

                    v560 = *(v62 + 393880);
                    *(v62 + 268640) = *(v62 + 393864);
                    *(v62 + 268656) = v560;
                    *(v653 + 136) = *(v639 + 292);
                    v561 = *(v62 + 394032);
                    *(v62 + 269208) = *(v62 + 394016);
                    *(v62 + 269224) = v561;
                    v562 = *(v62 + 394064);
                    *(v62 + 269240) = *(v62 + 394048);
                    *(v62 + 269256) = v562;
                    v563 = *(v62 + 394080);
                    v564 = *(v62 + 394096);
                    v565 = *(v62 + 394128);
                    *(v62 + 269304) = *(v62 + 394112);
                    *(v62 + 269320) = v565;
                    *(v62 + 269272) = v563;
                    *(v62 + 269288) = v564;
                    *v653 = *(v639 + 156);
                    memcpy((v62 + 395064), (v62 + 394368), 0x138uLL);
                    v566 = (*v62 + 74928);
                    v567 = *(v62 + 394696);
                    v568 = *(v62 + 394712);
                    v569 = *(v62 + 394728);
                    *(v566 + 60) = *(v62 + 394740);
                    v566[2] = v568;
                    v566[3] = v569;
                    v566[1] = v567;
                    *v566 = *(v62 + 394680);
                    if ((*v704 & 0xFD) != 0)
                    {
                      v570 = 0;
                      v571 = *v635;
                      v572 = 1;
                      do
                      {
                        v573 = *(v557 + v570);
                        if (v570 == 24)
                        {
                          if (*(v653 + 2980) || *(*v62 + 23172) || *(v653 + 3008) != 1 || *(v653 + 2208))
                          {
                            v574 = v572;
                          }

                          else
                          {
                            if (*(*v62 + 51016))
                            {
                              v575 = 1;
                            }

                            else
                            {
                              v575 = v573 == 0;
                            }

                            v574 = v572;
                            if (!v575)
                            {
                              v576 = *(v62 + 246032 + 8 * *(v704 + 252));
                              v577 = v573[316] == *(v576 + 1264) && v573[318] == *(v576 + 1272);
                              v574 = v571 | v577;
                              v572 = v571 | v577;
                            }
                          }
                        }

                        else
                        {
                          v574 = 1;
                        }

                        if (v573 && (v574 & 1) != 0)
                        {
                          --*v573;
                          *(v557 + v570) = 0;
                        }

                        v570 += 8;
                      }

                      while (v570 != 56);
                    }

                    if (++v558 == 17)
                    {
                      *(v653 + 2148) = 2056;
                      goto LABEL_736;
                    }
                  }
                }

                memset_pattern16(&STACK[0x2220], &unk_277BB7D90, 0x40uLL);
                memset_pattern16(&STACK[0x1220], &unk_277BB7D90, 0x40uLL);
LABEL_736:
                if (sub_277AD0364(v62, v633, v632, &a43, &a42, &a40))
                {
                  goto LABEL_623;
                }

                v600 = sub_277A89FA0(v690, v686, *(v704 + 616));
                v601 = 0;
                v602 = 2 * v690 - 16;
                v603 = v600;
                v604 = -1;
                v605 = 1.79769313e308;
                do
                {
                  v606 = (*(&STACK[0x2220] + v601) >> v602);
                  if (v603 * *(&STACK[0x1220] + v601) * 0.001953125 + v606 * 128.0 < v605)
                  {
                    v604 = v601 + 9;
                    v605 = v603 * *(&STACK[0x1220] + v601) * 0.001953125 + v606 * 128.0;
                  }

                  ++v601;
                }

                while (v601 != 8);
                v336 = v653;
                v140 = v657;
                v607 = v633;
                if (v605 >= v603 * *&a42 * 0.001953125 + (a43 >> v602) * 128.0)
                {
                  v629 = 0;
                  a38 = a40;
                }

                else
                {
                  v608 = *(v62 + 393880);
                  *(v62 + 268640) = *(v62 + 393864);
                  *(v62 + 268656) = v608;
                  *(v653 + 136) = *(v639 + 292);
                  v609 = *(v62 + 394032);
                  *(v62 + 269208) = *(v62 + 394016);
                  *(v62 + 269224) = v609;
                  v610 = *(v62 + 394064);
                  *(v62 + 269240) = *(v62 + 394048);
                  *(v62 + 269256) = v610;
                  v611 = *(v62 + 394080);
                  v612 = *(v62 + 394096);
                  v613 = *(v62 + 394128);
                  *(v62 + 269304) = *(v62 + 394112);
                  *(v62 + 269320) = v613;
                  *(v62 + 269272) = v611;
                  *(v62 + 269288) = v612;
                  *v653 = *(v639 + 156);
                  memcpy((v62 + 395064), (v62 + 394368), 0x138uLL);
                  v614 = (*v62 + 74928);
                  v615 = *(v62 + 394696);
                  v616 = *(v62 + 394712);
                  v617 = *(v62 + 394728);
                  *(v614 + 60) = *(v62 + 394740);
                  v614[2] = v616;
                  v614[3] = v617;
                  v614[1] = v615;
                  *v614 = *(v62 + 394680);
                  v618 = v704;
                  if ((*v704 & 0xFD) != 0)
                  {
                    v619 = 0;
                    v620 = *v635;
                    v621 = v62 + 273688;
                    v622 = v62 + 246032;
                    v623 = 1;
                    do
                    {
                      v624 = *(v621 + v619);
                      if (v619 == 24)
                      {
                        if (*(v336 + 2980) || *(*v62 + 23172) || *(v336 + 3008) != 1 || *(v336 + 2208))
                        {
                          v625 = v623;
                        }

                        else
                        {
                          if (*(*v62 + 51016))
                          {
                            v626 = 1;
                          }

                          else
                          {
                            v626 = v624 == 0;
                          }

                          v625 = v623;
                          if (!v626)
                          {
                            v627 = *(v622 + 8 * *(v618 + 252));
                            v628 = v624[316] == *(v627 + 1264) && v624[318] == *(v627 + 1272);
                            v625 = v620 | v628;
                            v623 = v620 | v628;
                            v62 = v703;
                            v618 = v704;
                            v336 = v653;
                            v140 = v657;
                            v607 = v633;
                          }
                        }
                      }

                      else
                      {
                        v625 = 1;
                      }

                      if (v624 && (v625 & 1) != 0)
                      {
                        --*v624;
                        *(v621 + v619) = 0;
                      }

                      v619 += 8;
                    }

                    while (v619 != 56);
                  }

                  *(v336 + 2148) = v604;
                  *(v336 + 2149) = v604;
                  v140[182] = 4;
                  v629 = sub_277AD0364(v62, v607, v632, &a41, &a39, &a38);
                  v140[182] = 0;
                  *(v336 + 2148) = 2056;
                }

                v510 = v678;
              }

              v527 = v637;
              v526 = v704;
              if (v629)
              {
                goto LABEL_623;
              }

              goto LABEL_626;
            }

            if (*(v65 + 2818) == 1 && *(*v62 + 85780) && *(v65 + 1260) > 2)
            {
              goto LABEL_611;
            }

            v519 = *(v65 + 2692);
            if (!v519)
            {
              goto LABEL_612;
            }
          }

          v519 = v140[83];
          if (v140[82] == 1 && v519 == 1)
          {
            if ((*v67 & 0xFD) != 0)
            {
              v520 = *(v678 + 100);
              if ((!v520 || (v521 = *(v678 + 104)) == 0 || *(v67 + 14) == v520 && *(v67 + 15) == v521) && !*(v65 + 1276) && *(v65 + 1260) >= 30 && (*(v336 + 2128) != 3 || *(*v678 + 112) >= 30) && (v140[304] < 9 || !*(v65 + 1300)))
              {
                goto LABEL_611;
              }
            }

            goto LABEL_602;
          }

          if (v519 < 2)
          {
LABEL_611:
            LOBYTE(v519) = 1;
            goto LABEL_612;
          }

          LOBYTE(v519) = v140[81] == v519 - 1;
          goto LABEL_612;
        }

LABEL_382:
        v339 = sub_2779724A8(*(v678 + 44) * *(v678 + 40), 0x38uLL);
        *(v140 + 125) = v339;
        if (!v339)
        {
          sub_2779F5C10(*(v704 + 48), 2, "Failed to allocate cpi->mb_weber_stats");
        }

        v67 = v704;
        if (*(v653 + 3024))
        {
          v340 = sub_2779724A8(*(v678 + 44) * *(v678 + 40), 4uLL);
          *(v140 + 126) = v340;
          if (!v340)
          {
            sub_2779F5C10(*(v704 + 48), 2, "Failed to allocate cpi->prep_rate_estimates");
          }

          v341 = sub_2779724A8(*(v678 + 44) * *(v678 + 40), 8uLL);
          *(v140 + 127) = v341;
          v67 = v704;
          if (!v341)
          {
            sub_2779F5C10(*(v704 + 48), 2, "Failed to allocate cpi->ext_rate_distribution");
            v67 = v704;
          }
        }

        goto LABEL_389;
      }

      v304 = v65;
      v305 = v81;
      v150 = sub_277BA53E4(*(v62 + 272264), v55, v62 + 273424);
      v149 = v62 + 264608;
      v81 = v305;
      v65 = v304;
      v67 = (v62 + 245616);
    }

    else
    {
      v150 = v303 != 0;
    }

    v67[494] = v150;
    goto LABEL_117;
  }

  v153 = v81;
  v154 = v66;
  v155 = v65;
  sub_277BA5128(v62, v73);
  LODWORD(STACK[0x1220]) = 0;
  v155[306] = 0;
  if (sub_277A06350(v62, v632, v633, &STACK[0x1220], v156, v157, v158, v159))
  {
LABEL_623:
    v525 = 1;
    return v525 != 0;
  }

  if (*(v153 + 16) && !*v704)
  {
    v162 = (v62 + 270996 + 4 * *v140);
    v160 = vld1q_dup_f32(v162);
    *(v62 + 270996) = v160;
    *(v62 + 271012) = v160;
  }

  if (*(v62 + 246096))
  {
    *(v154 + 56) = *(v62 + 245848);
  }

  sub_277A5BDA4(v62, *(v62 + 245672), *(v62 + 245676), *v160.i64, v161);
  v167 = v62 + 245616;
  if (*(*v62 + 23472) && *(v62 + 272180) != 1 && *(v140 + 720) != 1 && *(v62 + 246096) && (v140[264] & 1) == 0)
  {
    v168 = *(v62 + 245848);
    v169 = *(v168 + 1264);
    v170 = *(v168 + 1272);
    v171 = *(v62 + 270312);
    if (*(v171 + 77))
    {
      v172 = 1;
    }

    else
    {
      v172 = 3;
    }

    v173 = *(v62 + 272280);
    if (*(v173 + 16) != v169 || *(v173 + 24) != v170)
    {
      v173 = v62 + 272288;
      if (sub_27797AC44(v62 + 272288, v169, v170, *(v171 + 96), *(v171 + 100), *(v171 + 76), 288, *(v62 + 246128), v163, v164, v165, v166, *(v140 + 1308), 0))
      {
        sub_2779F5C10(*(v62 + 245664), 2, "Failed to reallocate scaled source buffer");
      }

      if (!sub_2779F4074(*(v62 + 272280), v62 + 272288, *(*(v62 + 270312) + 72), v172, v174, v175, v176, v177, v178))
      {
        sub_2779F5C10(*(v62 + 245664), 2, "Failed to reallocate buffers during resize");
      }

      v167 = v62 + 245616;
    }

    v148 = v62 + 269200;
    *(v62 + 272264) = v173;
  }

  if (v140[284])
  {
    *&STACK[0x22A0] = 0u;
    *&STACK[0x22B0] = 0u;
    *&STACK[0x2280] = 0u;
    *&STACK[0x2290] = 0u;
    *&STACK[0x2260] = 0u;
    *&STACK[0x2270] = 0u;
    *&STACK[0x2240] = 0u;
    *&STACK[0x2250] = 0u;
    *&STACK[0x2220] = 0u;
    *&STACK[0x2230] = 0u;
    sub_277A2C130(*(v148 + 3064), *(v167 + 232) + 1248, &STACK[0x2220]);
    v167 = v62 + 245616;
    v140[296] = *(*(v62 + 245848) + 36);
    v140[297] = *(v62 + 246232);
    v140[298] = *v155;
    v140[299] = 8 * *v633;
    *(v140 + 150) = STACK[0x2240];
    *(v140 + 151) = STACK[0x2220];
  }

  v525 = 0;
  ++*(v62 + 463504);
  ++*(v167 + 16);
  return v525 != 0;
}

uint64_t sub_277AD0364(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4, void *a5, _DWORD *a6)
{
  v1030 = a3;
  v1035 = a2;
  v6 = a1;
  v1158 = *MEMORY[0x277D85DE8];
  v7 = a1 + 643376;
  v8 = (a1 + 463416);
  v1037 = a1 + 634336;
  *(a1 + 634336) = 0;
  v9 = a1 + 393852;
  v1063 = a1 + 272840;
  *(a1 + 634164) = 0u;
  *(a1 + 634180) = 0u;
  *(a1 + 634196) = 0u;
  *(a1 + 634212) = 0u;
  *(a1 + 634228) = 0u;
  *(a1 + 634244) = 0u;
  v1036 = a1 + 264608;
  *(a1 + 634260) = 0u;
  *(a1 + 634276) = 0u;
  v10 = a1 + 245344;
  v11 = a1 + 239280;
  *(a1 + 634292) = 0u;
  *(a1 + 634308) = 0u;
  v1111 = (a1 + 97128);
  v1039 = a1 + 643376;
  v1049 = a1 + 393852;
  v1148 = a1 + 245344;
  v1067 = a1 + 268736;
  v1121 = (a1 + 463416);
  v1022 = a4;
  v1023 = a5;
  v1027 = a6;
  if (*(a1 + 395396))
  {
    v12 = 0;
    v1071 = (a1 + 529104);
    do
    {
      v13 = a1 + 270056 + v12;
      *v13 = xmmword_277C3A208;
      *(v13 + 16) = unk_277C3A218;
      *(v13 + 32) = 0;
      v12 += 36;
    }

    while (v12 != 252);
    *(a1 + 394760) = 0;
    sub_2779C44C0(a1, *(a1 + 395388));
    v21 = sub_277A8B744(v6);
    *(v10 + 777) = 4;
    *(v10 + 775) = *(v1067 + 3334) | *(v10 + 769);
    if (*(v1067 + 3444) < 2u || !*(v9 + 2192))
    {
      goto LABEL_131;
    }

    v21 = 0.0;
    memset(__dst, 0, 32);
    if (!*(v7 + 817) || (*(v1063 + 914) & 1) != 0)
    {
      LOWORD(v25) = 511;
LABEL_130:
      *(v7 + 356) = v25;
LABEL_131:
      sub_2779F5008(v6, v21, v22, v23, v24, v14, v15, v16, v17, v18, v19, v20);
      if (*(v1067 + 2616) == 4 && *(v9 + 1560) != 2 && *(v9 + 1256) >= 2 && *(v7 + 824) && *(v10 + 352) == 8)
      {
        if (v1022)
        {
          *v1022 = 0x7FFFFFFFFFFFFFFFLL;
        }

        if (v1023)
        {
          *v1023 = 0x7FFFFFFFFFFFFFFFLL;
        }

        result = 0;
        *v1027 = 0;
        return result;
      }

      LODWORD(__src[0]) = 0;
      LODWORD(v1156) = 0;
      HIDWORD(v1151) = 0;
      sub_277BA3DF0(v6, &v1151 + 1, &v1156, __src);
      v1073 = v1156;
      v104 = __src[0];
      sub_277ACB424(v6);
      v109 = v1067;
      if ((*(v10 + 272) & 0xFD) == 0 && !*(v9 + 2532) && !*(v9 + 1676) && (*(v9 + 2244) || *(v9 + 2248)))
      {
        v110 = *v10;
        if (!*v10)
        {
          v110 = sub_277972454(2uLL >> *(*(v1067 + 1576) + 77) << 16);
          if (!v110)
          {
            sub_2779F5C10(*(v10 + 320), 2, "Failed to allocate pixel_gradient_info");
          }

          *v10 = v110;
          v109 = v1067;
        }

        *(a1 + 214760) = v110;
      }

      if (*(v109 + 3472) == 2)
      {
        if (!*(v9 + 1676) || (v106.i64[0] = 1.0, v107.i64[0] = -0.25, *v105.i64 = *(v109 + 3404) * -0.25 + 1.0, *v105.i64 > 0.0) && (!*(v9 + 2532) || *(v9 + 2580)))
        {
          v111 = *(v10 + 8);
          if (!v111)
          {
            v112 = *(*(v109 + 1576) + 28);
            v113 = malloc_type_malloc(16 * byte_277C3F990[v112] * byte_277C36D60[v112] + 23, 0x5F484EBFuLL);
            if (!v113 || (v111 = (v113 + 23) & 0xFFFFFFFFFFFFFFF0, *(v111 - 8) = v113, !v111))
            {
              sub_2779F5C10(*(v10 + 320), 2, "Failed to allocate source_variance_info");
              v111 = 0;
            }

            *(v10 + 8) = v111;
            v109 = v1067;
          }

          *v11 = v111;
        }
      }

      if (*(v9 + 1676) != 2)
      {
        goto LABEL_178;
      }

      v114 = *(*(v109 + 1576) + 28);
      if (v114 == 12)
      {
        v115 = 1;
      }

      else
      {
        v115 = 4;
      }

      v116 = *(v11 + 1768);
      if (v116)
      {
        if (v115 == *(v11 + 1776))
        {
LABEL_178:
          if (!*(v10 + 272))
          {
            v120 = *a1;
            if (*(v9 + 2352))
            {
              memcpy(v120 + 75804, &unk_277C3D084, 0x2140uLL);
            }

            if ((*(v9 + 2076) - 0x7FFFFFFF) >= 0x80000002)
            {
              memcpy(v120 + 75160, &unk_277C3F1C4, 0x268uLL);
            }

            v109 = v1067;
            if (*(v9 + 2080) >= 1)
            {
              v120[4736] = xmmword_277C3F42C;
              v105 = *(&xmmword_277C3F42C + 12);
              *(v120 + 75788) = *(&xmmword_277C3F42C + 12);
            }

            if (*(v9 + 2192) == 2)
            {
              memcpy(v120 + 84316, &unk_277C3F448, 0x540uLL);
              v109 = v1067;
            }
          }

          v1078 = v104;
          v121 = a1;
          if (!*(v9 + 1564) && !*(v7 + 1232) && !*(v9 + 2532) && (*(v109 + 2472) & 1) == 0 && !*(v7 + 824) && *(v109 + 3472) != 1 && !*(v7 + 360) && !*(v10 + 272))
          {
            v497 = HIDWORD(v1151);
            v1102 = *(v10 + 768);
            v1142 = *(v10 + 767);
            v1132 = *(v7 + 364);
            if (*(v109 + 2548))
            {
              if (SHIDWORD(v1151) <= 244)
              {
                v497 = 244;
              }
            }

            else
            {
              if (SHIDWORD(v1151) <= 244)
              {
                v971 = 244;
              }

              else
              {
                v971 = HIDWORD(v1151);
              }

              if (*(v109 + 2544))
              {
                v497 = v971;
              }
            }

            v1120 = *(v1049 + 1676);
            v1110 = *(v1049 + 1677);
            *(v1067 + 3528) = sub_2779F4BE8(v10 + 272, *(v109 + 3544), (a1 + 272288), *(v10 + 777), 0, 0, 0, *(v109 + 3396), *v105.i64, *v106.i64, *v107.i64, *v108.i8, *(v7 + 1404));
            v976 = *(v1067 + 3760);
            if (v976)
            {
              *(v1067 + 3536) = sub_2779F4BE8(v10 + 272, v976, (a1 + 272504), *(v10 + 777), 0, 0, 0, *(v1067 + 3396), v972, v973, v974, v975, *(v7 + 1404));
            }

            sub_277BA4F38(a1);
            v977 = v1036;
            if (*v1036)
            {
              if (*(v1036 + 2) || (v978 = *(v10 + 496)) == 0)
              {
                sub_277AFBBBC(v1036);
                v977 = v1036;
              }

              else
              {
                v979 = 0;
                v980 = v978 + 92;
                v981 = a1 + 264612;
                do
                {
                  v982 = 0;
                  *(a1 + 264740 + 4 * v979) = *(v978 + 220 + 4 * v979);
                  do
                  {
                    *(v981 + v982) = *(v980 + v982);
                    v982 += 2;
                  }

                  while (v982 != 16);
                  ++v979;
                  v981 += 16;
                  v980 += 16;
                }

                while (v979 != 8);
                *(v1036 + 168) = *(v978 + 256);
                *(v1036 + 164) = *(v978 + 252);
                *v1036 = *(v978 + 88);
              }
            }

            else
            {
              *(v1036 + 156) = 0u;
              *(v1036 + 128) = 0u;
              *(v1036 + 144) = 0u;
              *(v1036 + 96) = 0u;
              *(v1036 + 112) = 0u;
              *(v1036 + 64) = 0u;
              *(v1036 + 80) = 0u;
              *(v1036 + 32) = 0u;
              *(v1036 + 48) = 0u;
              *v1036 = 0u;
              *(v1036 + 16) = 0u;
            }

            v983 = 0;
            v984 = *(v10 + 504);
            v985 = a1 + 264612;
            v986 = v984 + 92;
            do
            {
              v987 = 0;
              *(v984 + 220 + 4 * v983) = *(a1 + 264740 + 4 * v983);
              do
              {
                *(v986 + v987) = *(v985 + v987);
                v987 += 2;
              }

              while (v987 != 16);
              ++v983;
              v986 += 16;
              v985 += 16;
            }

            while (v983 != 8);
            v988 = 0;
            *(v984 + 256) = *(v977 + 168);
            *(v984 + 252) = *(v977 + 164);
            *(v984 + 88) = *v977;
            v989 = __dst;
            v990 = 1;
            do
            {
              v991 = v988;
              if (v990)
              {
                v992 = 0;
                v993 = v1148;
                *(v1148 + 768) = 0;
              }

              else
              {
                v992 = 1;
                v993 = v1148;
              }

              *(v993 + 767) = v992;
              *(v1039 + 360) = v992;
              *(v1049 + 1676) = 2305;
              sub_277A80B98(v993 + 272, *(v1067 + 2580), *(v1067 + 2584), v497, *(v1067 + 2595), *(v1067 + 2596));
              sub_2779C5D3C(a1, *(v1067 + 3404));
              sub_277A7FF54((a1 + 16), (a1 + 246232), *(*(v1067 + 1576) + 72));
              sub_277991BD0(a1, v497);
              sub_277A61248(a1);
              sub_277A2BD70(*(v1067 + 3528), *(v993 + 504) + 1248, v989, *(v1111 + 2), *(v1067 + 2376), v994, v995, v996, v997, v998);
              v990 = 0;
              v988 = 1;
              v989 = &__dst[10];
            }

            while ((v991 & 1) == 0);
            v999 = *__dst[10].i64 - *__dst[0].i64;
            v7 = v1039;
            v10 = v1148;
            v1000 = *(v1039 + 1408) / (*(v1148 + 328) * *(v1148 + 332));
            v107.i64[0] = 0x3F1A36E2EB1C432DLL;
            if (v1000 >= 0.0001)
            {
              v107.i64[0] = 4.0;
              v1001 = v999 / v1000 > 4.0;
            }

            else
            {
              v1001 = 0;
            }

            v109 = v1067;
            v121 = a1;
            v8 = v1121;
            v1002 = v1142;
            v1003 = v1132;
            v106.i64[0] = 0x3FECCCCCCCCCCCCDLL;
            if (v999 <= 0.9 && !v1001)
            {
              v1006 = 0;
              v1005 = v1102;
            }

            else
            {
              v1005 = *(v1039 + 100);
              v1002 = 1;
              v1006 = 1;
              v1003 = 1;
            }

            *(v1148 + 767) = v1002;
            *(v1148 + 768) = v1005 != 0;
            *(v1039 + 360) = v1006;
            *(v1039 + 364) = v1003;
            *(v1049 + 1676) = v1120;
            *(v1049 + 1677) = v1110;
            if ((v1002 & 1) == 0)
            {
              sub_277BA50D8(a1 + 463560);
              v109 = v1067;
            }
          }

          v1065 = 0;
          v122 = 0;
          v123 = 0;
          v1071[14] = 0;
          __dst[0].i32[0] = 0;
          LODWORD(v1151) = 0;
          v1057 = &v121[15377];
          v1059 = &v121[17105].i8[8];
          v1061 = v121 + 15366;
          v1092 = &v121[16546].i8[4];
          v1081 = &v121[16538].i32[1];
          v124 = &v121[40273].u32[2];
          v1096 = v121 + 16916;
          v1105 = &v121[16899].i8[12];
          v105.i64[0] = 65793;
          v1055 = v105;
          while (1)
          {
            v126 = sub_2779F4BE8(v10 + 272, *(v109 + 3544), &v121[17018], 0, 0, 0, 0, *(v109 + 3396), *v105.i64, *v106.i64, *v107.i64, *v108.i8, *(v7 + 1404));
            v131 = v1067;
            *(v1067 + 3528) = v126;
            v132 = *(v1067 + 3760);
            if (v132)
            {
              v133 = sub_2779F4BE8(v10 + 272, v132, &v121[17031].i32[2], 0, 0, 0, 0, *(v1067 + 3396), v127.n128_f64[0], v128, v129, v130, *(v7 + 1404));
              v131 = v1067;
              *(v1067 + 3536) = v133;
            }

            v134 = v121->i64[0];
            if (!*(v121->i64[0] + 4 * *(v8 + 40) + 12668) && (*(v10 + 272) & 0xFD) != 0)
            {
              if (v123)
              {
                v135 = 0;
                v136 = *(v1063 + 912);
                v137 = 1;
                do
                {
                  v138 = *&v1059[v135];
                  if (v135 == 24)
                  {
                    if (*(v131 + 3444) || *(v134 + 23172) || *(v131 + 3472) != 1 || *(v131 + 2672) || *(v134 + 51016))
                    {
                      v139 = v137;
                    }

                    else
                    {
                      v139 = v137;
                      if (v138)
                      {
                        v140 = *(v1057 + 8 * *(v10 + 524));
                        v141 = v138[316] == *(v140 + 1264) && v138[318] == *(v140 + 1272);
                        v139 = v136 | v141;
                        v137 = v136 | v141;
                      }
                    }
                  }

                  else
                  {
                    v139 = 1;
                  }

                  if (v138 && (v139 & 1) != 0)
                  {
                    --*v138;
                    *&v1059[v135] = 0;
                  }

                  v135 += 8;
                }

                while (v135 != 56);
              }

              sub_277BA45FC(v121, 0, 0, 0, v127, v128, v129, v130);
              v131 = v1067;
            }

            if (*(v7 + 1232) && *(v7 + 1240) == 1)
            {
              HIDWORD(v1151) = *(v7 + 1244);
              *(v131 + 1264) = *(v7 + 1272);
            }

            v142 = HIDWORD(v1151);
            v143 = v131;
            sub_277A80B98(v10 + 272, *(v131 + 2580), *(v131 + 2584), SHIDWORD(v1151), *(v131 + 2595), *(v131 + 2596));
            sub_2779C5D3C(a1, *(v143 + 3404));
            sub_277A7FF54((a1 + 16), (v10 + 888), *(*(v143 + 1576) + 72));
            v1089 = v142;
            sub_277991BD0(a1, v142);
            if (v123)
            {
              v145 = *(v10 + 780);
              if (v145 == 7 || (v145 & 0xF8) != 0 || (v146 = v1061->i32[v145 & 7], v146 == -1) || !*(v1057 + 8 * v146))
              {
                sub_27798F98C(v10 + 272);
                sub_277A46C04(v10 + 272);
              }
            }

            else
            {
              sub_277BA4F38(a1);
            }

            v147 = *(v1067 + 2592);
            v1083 = v123;
            if (v147 == 2)
            {
              v149 = *(v10 + 888);
              v150 = *(v10 + 496);
              if (v150 && (*(v10 + 328) != *(v150 + 268) || *(v10 + 332) != *(v150 + 272)))
              {
                v8 = v1121;
                bzero(*v1121, *(v10 + 808) * *(v10 + 804));
                *(v1081 + 8) = 0u;
                *(v1081 + 9) = 0u;
                *(v1081 + 6) = 0u;
                *(v1081 + 7) = 0u;
                *(v1081 + 4) = 0u;
                *(v1081 + 5) = 0u;
                *(v1081 + 2) = 0u;
                *(v1081 + 3) = 0u;
                *v1081 = 0u;
                *(v1081 + 1) = 0u;
                v154 = v1036;
LABEL_294:
                v144 = 0.0;
                *(v154 + 156) = 0u;
                *(v154 + 128) = 0u;
                *(v154 + 144) = 0u;
                *(v154 + 96) = 0u;
                *(v154 + 112) = 0u;
                *(v154 + 64) = 0u;
                *(v154 + 80) = 0u;
                *(v154 + 32) = 0u;
                *(v154 + 48) = 0u;
                *v154 = 0u;
                *(v154 + 16) = 0u;
                goto LABEL_295;
              }

              if ((*(v10 + 272) & 0xFD) == 0 || (*(v10 + 774) & 1) != 0 || (*(v1063 + 914) & 1) != 0 || *(v1063 + 912) == 1 && !*(v1049 + 1268))
              {
                v151 = *(*(v1067 + 1576) + 72);
                if (v149 >= 0xFF)
                {
                  v152 = 255;
                }

                else
                {
                  v152 = *(v10 + 888);
                }

                if (v149 < 0)
                {
                  v152 = 0;
                }

                if (v151 == 8)
                {
                  v153 = word_277BFE1FA;
                  v8 = v1121;
                }

                else
                {
                  v8 = v1121;
                  if (v151 != 12)
                  {
                    if (v151 == 10)
                    {
                      v153 = &unk_277BFE3FA;
                      goto LABEL_274;
                    }

                    v164 = -1;
LABEL_276:
                    if (v164 <= 103)
                    {
                      v165 = v164 > 43;
                    }

                    else
                    {
                      v165 = (v164 > 43) + 1;
                    }

                    memset(*v8, 3, *(v10 + 808) * *(v10 + 804));
                    *v1081 = 0u;
                    *(v1081 + 1) = 0u;
                    *(v1081 + 2) = 0u;
                    *(v1081 + 3) = 0u;
                    *(v1081 + 4) = 0u;
                    *(v1081 + 5) = 0u;
                    *(v1081 + 6) = 0u;
                    *(v1081 + 7) = 0u;
                    *(v1081 + 8) = 0u;
                    *(v1081 + 9) = 0u;
                    v154 = v1036;
                    if (*(v1049 + 1228) < 256)
                    {
                      goto LABEL_294;
                    }

                    v166 = 0;
                    v144 = *&v1055;
                    *v1036 = v1055;
                    v167 = &unk_277BED680 + 40 * v165;
                    v168 = 264740;
                    do
                    {
                      if (v166 != 12)
                      {
                        v169 = sub_277A5B3A8(a1, *(v10 + 272), v149, *&v167[v166 * 2]);
                        v170 = v149 + v169 || v149 == 0;
                        v171 = v170 ? v169 : 1 - v149;
                        if (v171 + v149 >= 1)
                        {
                          *(a1 + v168) |= 1u;
                          LOWORD(v1081[v166]) = v171;
                        }
                      }

                      v166 += 4;
                      v168 += 4;
                    }

                    while (v166 != 20);
                    goto LABEL_291;
                  }

                  v153 = &unk_277BFE5FA;
                }

LABEL_274:
                v164 = v153[v152];
                goto LABEL_276;
              }
            }

            else if (v147 == 1)
            {
              v148 = *(v10 + 496);
              if (v148)
              {
                v8 = v1121;
                LODWORD(v148) = *(v10 + 328) != *(v148 + 268) || *(v10 + 332) != *(v148 + 272);
              }

              else
              {
                v8 = v1121;
              }

              v144 = *(v7 + 1176) + -2.0;
              v155 = v144;
              if (v144 >= 7)
              {
                v155 = 7;
              }

              if (v148)
              {
                bzero(*v8, *(v10 + 808) * *(v10 + 804));
                v154 = v1036;
                goto LABEL_294;
              }

              v156 = *(v10 + 888);
              v157 = dbl_277C2F8D8[v155 & ~(v155 >> 31)];
              v158 = *(v10 + 272);
              if ((v158 & 0xFFFFFFFD) == 0 || (*(v10 + 774) & 1) != 0 || (*(v1063 + 914) & 1) != 0 || *(v1063 + 912) == 1 && !*(v1049 + 1268))
              {
                v159 = 0;
                *v1071 = 1;
                *v1036 = v1055;
                *v1081 = 0u;
                *(v1081 + 1) = 0u;
                *(v1081 + 2) = 0u;
                *(v1081 + 3) = 0u;
                *(v1081 + 4) = 0u;
                *(v1081 + 5) = 0u;
                *(v1081 + 6) = 0u;
                *(v1081 + 7) = 0u;
                v160 = -128;
                *(v1081 + 8) = 0u;
                *(v1081 + 9) = 0u;
                do
                {
                  v161 = sub_277A5B3A8(a1, v158, v156, dbl_277C2F8D8[v159] / v157);
                  if (v156 + v161)
                  {
                    v162 = 1;
                  }

                  else
                  {
                    v162 = v156 == 0;
                  }

                  if (v162)
                  {
                    v163 = v161;
                  }

                  else
                  {
                    v163 = 1 - v156;
                  }

                  *&v1092[v160] = v163;
                  *&v1092[4 * v159++] |= 1u;
                  v160 += 16;
                }

                while (v160);
              }
            }

LABEL_291:
            v154 = v1036;
            v8 = v1121;
            v123 = v1083;
            if (!*v1036)
            {
              goto LABEL_294;
            }

            if (*(v1036 + 2) || (v266 = *(v10 + 496)) == 0)
            {
              sub_277AFBBBC(v1036);
              v154 = v1036;
LABEL_295:
              v9 = v1049;
              v172 = a1;
              v173 = v1089;
              v174 = v1092;
              goto LABEL_296;
            }

            v267 = 0;
            v268 = v266 + 92;
            v269 = v1081;
            v9 = v1049;
            v172 = a1;
            v173 = v1089;
            v174 = v1092;
            do
            {
              v270 = 0;
              *&v1092[4 * v267] = *(v266 + 220 + 4 * v267);
              do
              {
                *(v269 + v270) = *(v268 + v270);
                v270 += 2;
              }

              while (v270 != 16);
              ++v267;
              v269 += 4;
              v268 += 16;
            }

            while (v267 != 8);
            *(v1036 + 168) = *(v266 + 256);
            *(v1036 + 164) = *(v266 + 252);
            *v1036 = *(v266 + 88);
LABEL_296:
            v175 = 0;
            v176 = *(v10 + 504);
            v177 = v176 + 92;
            v178 = v1081;
            do
            {
              v179 = 0;
              *(v176 + 220 + 4 * v175) = *&v174[4 * v175];
              do
              {
                *(v177 + v179) = *(v178 + v179);
                v179 += 2;
              }

              while (v179 != 16);
              ++v175;
              v177 += 16;
              v178 += 4;
            }

            while (v175 != 8);
            *(v176 + 256) = *(v154 + 168);
            *(v176 + 252) = *(v154 + 164);
            *(v176 + 88) = *v154;
            v1069 = v173;
            if ((*(v10 + 272) & 0xFD) != 0)
            {
              sub_277AE8CB0(v172, v173, v144);
              v1075 = *(v10 + 765);
              if (v123 && v122 != *(v10 + 765))
              {
                *(v9 + 908) = 0;
              }
            }

            else
            {
              v1075 = v122;
            }

            v180 = v1035;
            sub_277A61248(a1);
            v182 = *(v7 + 1088);
            if (*(v7 + 1072) && *(v7 + 1088))
            {
              v105 = 0uLL;
              *(v124 + 15) = 0u;
              *(v124 + 2) = 0u;
              *(v124 + 3) = 0u;
              *v124 = 0u;
              *(v124 + 1) = 0u;
            }

            v109 = v1067;
            v183 = v1089;
            if (!*(v9 + 1552) && (*(v10 + 272) & 0xFD) != 0 && (*(*a1 + *(v8 + 40) + 400) & 0xFE) != 4 && v182 != 0)
            {
              v1086 = *(v1067 + 1604);
              if (v1086 >= 1)
              {
                v185 = 0;
                v1130 = *(v1067 + 1600);
                do
                {
                  v1100 = v185;
                  v186 = *(*(v109 + 1576) + 36);
                  if (*(v1096->i32 + (((v185 << 32) + 0x100000000) >> 30)) << v186 >= *(v10 + 804))
                  {
                    v187 = *(v10 + 804);
                  }

                  else
                  {
                    v187 = *(v1096->i32 + (((v185 << 32) + 0x100000000) >> 30)) << v186;
                  }

                  if (v1130 >= 1)
                  {
                    v188 = 0;
                    v1139 = v1096->i32[v185] << v186;
                    do
                    {
                      v189 = v188 + v1100 * v1130;
                      v190 = *&v1105[4 * v188];
                      v191 = *(*(v109 + 1576) + 36);
                      if (*&v1105[((v188 << 32) + 0x100000000) >> 30] << v191 >= *(v1148 + 808))
                      {
                        v192 = *(v1148 + 808);
                      }

                      else
                      {
                        v192 = *&v1105[((v188 << 32) + 0x100000000) >> 30] << v191;
                      }

                      v193 = 23824 * v189;
                      memcpy(&v1121[16][23824 * v189 + 32], *(v109 + 1584), 0x52FCuLL);
                      *v1111 = &v1121[16][v193 + 32];
                      if (v1139 < v187)
                      {
                        v194 = (v190 << v191);
                        v195 = *(v1067 + 1576);
                        v196 = *(v195 + 32);
                        v197 = *(v195 + 28);
                        v198 = v1139;
                        do
                        {
                          for (i = v194; i < v192; i = (i + v196))
                          {
                            sub_277AE7B0C(v124, a1, v198, i, v197, *v105.i64, *v106.i64, *v107.i8, *v108.i8);
                          }

                          v198 = (v198 + v196);
                        }

                        while (v198 < v187);
                      }

                      ++v188;
                      v109 = v1067;
                    }

                    while (v188 != v1130);
                  }

                  v185 = v1100 + 1;
                  v10 = v1148;
                }

                while (v1100 + 1 != v1086);
              }

              v7 = v1039;
              v183 = v1089;
              *(v1039 + 1004) = v1089;
              *(v1039 + 1008) = *(v10 + 276);
              *(v1039 + 1072) = 1;
              v180 = v1035;
              v9 = v1049;
              v8 = v1121;
            }

            if (*(v9 + 1544) && *(v109 + 2556) != 3 || *(v109 + 2528))
            {
              sub_277BA5128(a1, v105);
              HIDWORD(v1150) = 0;
              *(v9 + 1224) = 0;
              if (sub_277A06350(a1, v1030, v180, &v1150 + 4, v200, v201, v202, v203))
              {
                return 1;
              }

              *(v9 + 1220) = 8 * *v180;
              v109 = v1067;
              v183 = v1089;
            }

            v204 = __src[0];
            v205 = v1156;
            v121 = a1;
            v206 = *a1;
            if (*(v9 + 1268) && *(v9 + 1220) < *(v9 + 1340))
            {
              goto LABEL_944;
            }

            v207 = *(v109 + 2528);
            if (v207 >= 1)
            {
              v208 = *(v9 + 1220) >> 3;
              v209 = *(*(v109 + 1576) + 69);
              v210 = 36;
              if (v209 == 1)
              {
                v210 = 30;
              }

              v162 = v209 == 0;
              v211 = 15;
              if (!v162)
              {
                v211 = v210;
              }

              if (v208 <= 0x81)
              {
                v212 = 1;
              }

              else
              {
                v212 = v208 - 128;
              }

              *v105.i64 = ((*(v10 + 332) * *(v10 + 344) * v211) >> 3) / v212;
              v107.i64[0] = 0x4059000000000000;
              *v106.i64 = v207 / 100.0;
              if (*v105.i64 < *v106.i64)
              {
                v213 = *(v9 + 1388);
                if (v183 >= v213)
                {
                  goto LABEL_944;
                }

                v214 = 0;
                *v107.i64 = v183;
                v215 = *v106.i64 / *v105.i64;
                *v106.i64 = v215 * v183;
                *v105.i64 = v215 * *v106.i64;
                v216 = *v105.i64;
                if (v183 >= *v105.i64)
                {
                  v216 = v183 + 1;
                }

                if (v216 >= v183 + 32)
                {
                  v216 = v183 + 32;
                }

                if (v216 < v213)
                {
                  v213 = v216;
                }

                HIDWORD(v1151) = v213;
                v217 = v1073;
                if (v213 > v1073)
                {
                  v217 = v213;
                }

                v1073 = v217;
                v218 = v1078;
                if (v213 > v1078)
                {
                  v218 = v213;
                }

                v1078 = v218;
                v1065 = 1;
                goto LABEL_550;
              }

              if (v1065)
              {
                goto LABEL_944;
              }

              v1065 = 0;
            }

            if (!*(v206 + 23208) || *(v109 + 3444) == 1 || *(v7 + 816) == 1)
            {
              v219 = *a1;
              goto LABEL_366;
            }

            if (*(v10 + 272))
            {
              v219 = *a1;
            }

            else
            {
              v219 = *a1;
              if (!*(v206 + *(v8 + 40) + 6410))
              {
                v277 = v1156;
                sub_277AE75B4(a1);
                v205 = v277;
                v183 = v1089;
                v109 = v1067;
                v219 = *a1;
              }
            }

            if (*(v219 + 23176) > 0x1BuLL)
            {
              goto LABEL_366;
            }

            v278 = *(v219 + 23216) + 1968 * *(v219 + 23176) + 12432;
            if (*v278 || *(v10 + 760))
            {
              goto LABEL_366;
            }

            v279 = v205;
            v280 = *(v9 + 1220);
            v281 = *(*(v219 + 23216) + 1968 * *(v219 + 23176) + 14352);
            v282 = *(*(v219 + 23216) + 1968 * *(v219 + 23176) + 12440);
            *v105.i64 = sub_277AE7520(*(v278 + 1), *(v278 + 68) + 1, *(v278 + 8), v278 + 112, *(v278 + 40));
            if (*v105.i64 < 0.0)
            {
              v9 = v1049;
              v109 = v1067;
              v121 = a1;
              v8 = v1121;
              v183 = v1089;
              v205 = v279;
              v7 = v1039;
LABEL_366:
              v220 = *(v109 + 2556);
              if (v220 == 3)
              {
                goto LABEL_944;
              }

              v221 = *(v9 + 1216);
              v222 = *(v9 + 1548) * v221;
              if (v222 >= 10000)
              {
                v223 = v222 / 0x64uLL;
              }

              else
              {
                v223 = 100;
              }

              v224 = (v221 - v223) & ~((v221 - v223) >> 31);
              v225 = v221 + v223;
              v226 = v9;
              v227 = *(v9 + 1340);
              if (v225 >= v227)
              {
                LODWORD(v225) = v227;
              }

              if (v225 <= 1)
              {
                v228 = 1;
              }

              else
              {
                v228 = v225;
              }

              v229 = *(v10 + 272);
              if (*(v10 + 272))
              {
                v230 = *(v226 + 1220);
                goto LABEL_377;
              }

              v244 = *(v206 + 44128);
              v230 = *(v226 + 1220);
              if (v244 && v230 < v227)
              {
                v245 = *(v1063 + 1352);
                v246 = *(*(v109 + 1576) + 76);
                v247 = *(v109 + 3528);
                v248 = *(v10 + 504);
                v249 = *(v247 + 40);
                v250 = *(v247 + 32);
                v251 = *(v248 + 1288);
                v252 = *(v248 + 1280);
                v253 = *(v247 + 16);
                v254 = *(v247 + 24);
                if (v246)
                {
                  v255 = sub_277A2BAE0(v249, v250, v251, v252, v253, v254, *v105.i64, v106, v107, v108, v181);
                }

                else
                {
                  v255 = sub_277A2B70C(v249, v250, v251, v252, v253, v254);
                }

                v9 = v1049;
                v243 = v1078;
                if (v255 <= 1)
                {
                  v274 = 1;
                }

                else
                {
                  v274 = v255;
                }

                v109 = v1067;
                v271 = v1073;
                v183 = v1089;
                if (v274 > v245 && *(v1049 + 1220) <= v228 || (v275 = v245 >> 1, v274 > v245 >> 1) && (v271 = v1073, *(v1049 + 1220) <= v224))
                {
                  if (v1089 - 1 <= v271)
                  {
                    v243 = v271;
                  }

                  else
                  {
                    v243 = v1089 - 1;
                  }

                  v276 = v245 * v1069 / v274;
                  if ((v243 + v271) >> 1 >= v276)
                  {
                    v272 = v276;
                  }

                  else
                  {
                    v272 = (v243 + v271) >> 1;
                  }
                }

                else
                {
                  if (v274 < v275)
                  {
                    v7 = v1039;
                    if (*(v1049 + 1220) >= v224)
                    {
                      if (v1089 + 1 < v1078)
                      {
                        v271 = v1089 + 1;
                      }

                      else
                      {
                        v271 = v1078;
                      }

                      v121 = a1;
                      v303 = v275 * v1069 / v274;
                      if ((v1078 + v271 + 1) >> 1 >= v303)
                      {
                        v272 = v303;
                      }

                      else
                      {
                        v272 = (v1078 + v271 + 1) >> 1;
                      }
                    }

                    else
                    {
                      v272 = v1089;
                      v121 = a1;
                      v271 = v1073;
                    }

LABEL_543:
                    if (v272 >= v243)
                    {
                      v236 = v243;
                    }

                    else
                    {
                      v236 = v272;
                    }

                    v1073 = v271;
                    if (v272 < v271)
                    {
                      v236 = v271;
                    }

                    HIDWORD(v1151) = v236;
LABEL_549:
                    v1078 = v243;
                    v214 = v236 == v183;
                    goto LABEL_550;
                  }

                  v272 = v1089;
                }

                v7 = v1039;
                v121 = a1;
                goto LABEL_543;
              }

LABEL_377:
              v231 = v1078;
              if (v1078 <= v204)
              {
                v231 = v204;
              }

              if (v230 < v227)
              {
                v232 = (v229 & 0xFD) == 0 || (*(v219 + *(v8 + 40) + 400) & 0xFE) == 2;
                v233 = *(v1049 + 1544);
                v234 = v232 && v233 == 1;
                v235 = v234;
                if (v233 != 2 && !v235)
                {
                  v236 = v183;
                  v7 = v1039;
LABEL_442:
                  v9 = v1049;
                  v121 = a1;
                  v243 = v1078;
                  goto LABEL_549;
                }
              }

              v237 = v230 > v228 && v183 < v231;
              v7 = v1039;
              if (!v237)
              {
                v238 = v230 >= v224 || v183 <= v205;
                if (v238 && (v220 != 2 || *(v109 + 2552) >= v183 || v230 >= (7 * *(v1049 + 1216)) >> 3))
                {
                  v236 = v183;
                  goto LABEL_442;
                }
              }

              if (v230 > *(v1049 + 1216))
              {
                v1140 = v205;
                if (v230 < v227)
                {
                  v243 = v1078;
                }

                else if (v183 == v1078)
                {
                  v239 = *(*(v109 + 1576) + 72);
                  v240 = sub_277A58CE0(v1078, v239);
                  v241 = *(v1049 + 1388);
                  if (*(v1049 + 1392) >= v241)
                  {
                    v243 = *(v1049 + 1392);
                  }

                  else
                  {
                    v242 = v240 * (v230 / v227);
                    v243 = *(v1049 + 1392);
                    do
                    {
                      if (sub_277A58CE0((v243 + v241) >> 1, v239) < v242)
                      {
                        v243 = ((v243 + v241) >> 1) + 1;
                      }

                      else
                      {
                        v241 = (v243 + v241) >> 1;
                      }
                    }

                    while (v243 < v241);
                  }
                }

                else
                {
                  v243 = v1078;
                }

                if (v1089 + 1 < v243)
                {
                  v283 = v1089 + 1;
                }

                else
                {
                  v283 = v243;
                }

                if (v1083 > 2 || v1151)
                {
                  v284 = *(v10 + 332);
                  v9 = v1049;
                  v121 = a1;
                  v8 = v1121;
                  goto LABEL_491;
                }

                v9 = v1049;
                v121 = a1;
                if (v1083 == 2)
                {
                  v284 = *(v10 + 332);
                  v8 = v1121;
                  if ((v229 & 0xFFFFFFFD) == 0)
                  {
                    sub_277A591C4(a1, 1, *(v10 + 328), v284);
                    if (v243 <= v204)
                    {
                      v285 = v204;
                    }

                    else
                    {
                      v285 = v243;
                    }

                    v286 = *(v10 + 328);
                    v287 = *(v10 + 332);
                    v288 = sub_277A5986C(a1, *(v1049 + 1216), v1140, v285, v286, v287);
                    if (v288 >= v283)
                    {
                      v271 = v283;
                    }

                    else
                    {
                      v289 = 0;
                      do
                      {
                        sub_277A591C4(a1, 1, v286, v287);
                        v286 = *(v10 + 328);
                        v287 = *(v10 + 332);
                        v288 = sub_277A5986C(a1, *(v1049 + 1216), v1140, v285, v286, v287);
                      }

                      while (v288 < v283 && v289++ < 9);
                      v271 = v283;
                      v8 = v1121;
                      v7 = v1039;
                    }

                    v272 = ((v243 + v271 + 1) / 2 + v288 + 1) / 2;
                    v273 = __dst;
                    v9 = v1049;
                    v109 = v1067;
                    v121 = a1;
LABEL_493:
                    v183 = v1089;
LABEL_542:
                    v273->i32[0] = 1;
                    goto LABEL_543;
                  }

LABEL_491:
                  sub_277A591C4(v121, 1, *(v10 + 328), v284);
                  v271 = v283;
                  v272 = (v243 + v283 + 1) / 2;
                  v273 = __dst;
LABEL_492:
                  v109 = v1067;
                  goto LABEL_493;
                }

                sub_277A591C4(a1, 1, *(v10 + 328), *(v10 + 332));
                if (v243 <= v204)
                {
                  v298 = v204;
                }

                else
                {
                  v298 = v243;
                }

                v299 = *(v10 + 328);
                v300 = *(v10 + 332);
                v272 = sub_277A5986C(a1, *(v1049 + 1216), v1140, v298, v299, v300);
                if (v272 >= v283)
                {
                  v271 = v283;
                  v273 = __dst;
                  v9 = v1049;
                  v109 = v1067;
                  v121 = a1;
                  v8 = v1121;
                  goto LABEL_493;
                }

                v301 = 0;
                do
                {
                  sub_277A591C4(a1, 1, v299, v300);
                  v299 = *(v10 + 328);
                  v300 = *(v10 + 332);
                  v272 = sub_277A5986C(a1, *(v1049 + 1216), v1140, v298, v299, v300);
                }

                while (v272 < v283 && v301++ < 9);
                v271 = v283;
                v273 = __dst;
                v9 = v1049;
                v109 = v1067;
                v121 = a1;
                v8 = v1121;
LABEL_541:
                v183 = v1089;
                v7 = v1039;
                goto LABEL_542;
              }

              if (v183 - 1 <= v1073)
              {
                v243 = v1073;
              }

              else
              {
                v243 = v183 - 1;
              }

              if (v1083 > 2 || __dst[0].i32[0])
              {
                v256 = *(v10 + 332);
                v9 = v1049;
                v121 = a1;
              }

              else
              {
                v9 = v1049;
                v121 = a1;
                if (v1083 != 2)
                {
                  v291 = v205;
                  sub_277A591C4(a1, 1, *(v10 + 328), *(v10 + 332));
                  v292 = *(v10 + 328);
                  v293 = *(v10 + 332);
                  v294 = v291;
                  v272 = sub_277A5986C(a1, *(v1049 + 1216), v291, v204, v292, v293);
                  if (v272 > v243)
                  {
                    v295 = 0;
                    do
                    {
                      sub_277A591C4(a1, 1, v292, v293);
                      v292 = *(v10 + 328);
                      v293 = *(v10 + 332);
                      v272 = sub_277A5986C(a1, *(v1049 + 1216), v294, v204, v292, v293);
                    }

                    while (v272 > v243 && v295++ < 9);
                    v8 = v1121;
                  }

                  v109 = v1067;
                  v271 = v1073;
                  if (v272 >= v1073)
                  {
                    v297 = v1073;
                  }

                  else
                  {
                    v297 = v272;
                  }

                  if (*(v1067 + 2556) == 2)
                  {
                    v271 = v297;
                  }

                  goto LABEL_540;
                }

                v256 = *(v10 + 332);
                if ((v229 & 0xFFFFFFFD) == 0)
                {
                  v257 = v205;
                  sub_277A591C4(a1, 1, *(v10 + 328), v256);
                  v258 = *(v10 + 328);
                  v259 = *(v10 + 332);
                  v260 = v257;
                  v261 = sub_277A5986C(a1, *(v1049 + 1216), v257, v204, v258, v259);
                  if (v261 <= v243)
                  {
                    v265 = v261;
                  }

                  else
                  {
                    v262 = 0;
                    do
                    {
                      sub_277A591C4(a1, 1, v258, v259);
                      v258 = *(v10 + 328);
                      v259 = *(v10 + 332);
                      v263 = sub_277A5986C(a1, *(v1049 + 1216), v260, v204, v258, v259);
                    }

                    while (v263 > v243 && v262++ < 9);
                    v265 = v263;
                    v8 = v1121;
                  }

                  v271 = v1073;
                  v272 = (v265 + (v243 + v1073) / 2) / 2;
                  v109 = v1067;
                  if (v265 < v1073 && *(v1067 + 2556) == 2)
                  {
                    v271 = (v265 + (v243 + v1073) / 2) / 2;
                  }

LABEL_540:
                  v273 = &v1151;
                  v9 = v1049;
                  v121 = a1;
                  goto LABEL_541;
                }
              }

              sub_277A591C4(v121, 1, *(v10 + 328), v256);
              v271 = v1073;
              v272 = (v243 + v1073) / 2;
              v273 = &v1151;
              goto LABEL_492;
            }

            *v106.i64 = *v105.i64 + (*(v278 + 4) + v282) / -90000.0;
            if (*(v278 + 1912) > *v106.i64)
            {
              v106.i64[0] = *(v278 + 1912);
            }

            v108.i64[0] = *(v278 + 56);
            *v107.i64 = (v281 + v280) / *v108.i64 + *v106.i64;
            v9 = v1049;
            v109 = v1067;
            v121 = a1;
            v8 = v1121;
            v183 = v1089;
            v205 = v279;
            v7 = v1039;
            if (*v107.i64 <= *v105.i64 || *(v278 + 2) == 1)
            {
              v307 = *(v278 + 356);
              v105.i64[0] = *(v278 + 360);
              v308 = *(v278 + 352);
              v309 = v278 + 368 + 24 * v308;
              v108.i64[0] = *(v309 + 16);
              if (*v108.i64 > *v107.i64 || v307 < 1)
              {
LABEL_575:
                *v106.i64 = *v107.i64 - *v106.i64;
                *v105.i64 = *v106.i64 + *v105.i64;
                if (*v105.i64 <= 1.0)
                {
                  goto LABEL_366;
                }
              }

              else
              {
                while (1)
                {
                  *v108.i64 = *v105.i64 + *v108.i64 - *v106.i64;
                  if (*v108.i64 > 1.0)
                  {
                    break;
                  }

                  v181.i64[0] = *v309;
                  *v105.i64 = *v105.i64 - (*(v309 + 8) - *v309);
                  v311 = v308 + 1;
                  v312 = -v311 < 0;
                  v313 = -v311 & 0x3F;
                  v308 = v311 & 0x3F;
                  if (!v312)
                  {
                    v308 = -v313;
                  }

                  v309 = v278 + 368 + 24 * v308;
                  v108.i64[0] = *(v309 + 16);
                  if (*v108.i64 > *v107.i64 || v307-- <= 1)
                  {
                    goto LABEL_575;
                  }
                }
              }
            }

            v315 = *(v1049 + 1388);
            if (v1089 >= v315)
            {
              goto LABEL_366;
            }

            v214 = 0;
            if (v1089 + 10 < v315)
            {
              v315 = v1089 + 10;
            }

            HIDWORD(v1151) = v315;
            v316 = v1073;
            if (v315 > v1073)
            {
              v316 = v315;
            }

            v1073 = v316;
            v317 = v1078;
            if (v315 > v1078)
            {
              v317 = v315;
            }

            v1078 = v317;
LABEL_550:
            if (*(v7 + 1232) || v214)
            {
              goto LABEL_944;
            }

            v123 = v1083 + 1;
            v305 = v1071[14];
            if (v305 < 9)
            {
              v306 = v305 + 1;
            }

            else
            {
              v306 = 9;
            }

            v1071[14] = v306;
            v122 = v1075;
            if (v1083 != -1)
            {
              v125 = *(v109 + 3528);
              if (v125)
              {
                if (*(v9 + 908) == 1 && (*(v125 + 16) != *(v10 + 328) || *(v125 + 24) != *(v10 + 332)))
                {
                  *(v9 + 908) = 0;
                }
              }
            }
          }
        }

        free(*(v116 - 8));
        *(v11 + 1768) = 0;
      }

      if (v114 == 12)
      {
        v117 = 43687;
      }

      else
      {
        v117 = 174679;
      }

      v118 = malloc_type_malloc(v117, 0x5F484EBFuLL);
      if (v118)
      {
        v119 = (v118 + 23) & 0xFFFFFFFFFFFFFFF0;
        *(v119 - 8) = v118;
        *(v11 + 1768) = v119;
        if (v119)
        {
LABEL_177:
          *(v11 + 1776) = v115;
          v109 = v1067;
          goto LABEL_178;
        }
      }

      else
      {
        *(v11 + 1768) = 0;
      }

      sub_2779F5C10(*(v10 + 320), 2, "Failed to allocate cpi->td.vt64x64");
      goto LABEL_177;
    }

    v84 = v6 + 30754;
    for (j = 1; j != 8; ++j)
    {
      v86 = __dst[0].i32[j];
      v87 = *(v10 + 512 + 4 * (j - 1));
      for (k = 1468; k != 1480; k += 4)
      {
        if (v87 == -1)
        {
          LODWORD(v89) = 0;
        }

        else
        {
          v89 = v84[v87];
          if (v89)
          {
            LODWORD(v89) = *(v89 + k);
          }
        }

        v86 += v89;
      }

      __dst[0].i32[j] = v86;
    }

    v90 = *(v10 + 512);
    v25 = 511;
    v91 = 1468;
    while (v90 == -1)
    {
      LODWORD(v92) = 0;
      if (__dst[0].i32[1])
      {
        goto LABEL_102;
      }

LABEL_129:
      v91 += 4;
      if (v91 == 1480)
      {
        goto LABEL_130;
      }
    }

    v92 = v84[v90];
    if (v92)
    {
      LODWORD(v92) = 30 * *(v92 + v91);
    }

    if (!__dst[0].i32[1])
    {
      goto LABEL_129;
    }

LABEL_102:
    if (v92 <= __dst[0].i32[1])
    {
      v93 = *(v10 + 516);
      if (v93 == -1)
      {
        LODWORD(v94) = 0;
      }

      else
      {
        v94 = v84[v93];
        if (v94)
        {
          LODWORD(v94) = *(v94 + v91);
        }
      }

      v95 = *(v10 + 520);
      if (v95 == -1)
      {
        LODWORD(v96) = 0;
      }

      else
      {
        v96 = v84[v95];
        if (v96)
        {
          LODWORD(v96) = *(v96 + v91);
        }
      }

      v97 = *(v10 + 524);
      if (v97 == -1)
      {
        LODWORD(v98) = 0;
      }

      else
      {
        v98 = v84[v97];
        if (v98)
        {
          LODWORD(v98) = *(v98 + v91);
        }
      }

      v99 = *(v10 + 528);
      if (v99 == -1)
      {
        LODWORD(v100) = 0;
      }

      else
      {
        v100 = v84[v99];
        if (v100)
        {
          LODWORD(v100) = 10 * *(v100 + v91);
        }
      }

      v101 = *(v10 + 532);
      if (v101 == -1)
      {
        v14 = 0;
      }

      else
      {
        v14 = v84[v101];
        if (v14)
        {
          v14 = (10 * *(v14 + v91));
        }
      }

      v102 = *(v10 + 536);
      if (v102 == -1)
      {
        v15 = 0;
      }

      else
      {
        v15 = v84[v102];
        if (v15)
        {
          v15 = (10 * *(v15 + v91));
        }
      }

      if (v100 + 20 * (v96 + v94 + v98) + v14 + v15 < __dst[0].i32[3] + __dst[0].i32[2] + __dst[1].i32[0] + __dst[1].i32[1] + __dst[1].i32[2] + __dst[1].i32[3])
      {
        v25 &= (1 << (v91 + 68)) ^ 0x1FF;
      }
    }

    goto LABEL_129;
  }

  v26 = *(a1 + 463532);
  v28 = v26 && (v27 = *(a1 + 463536)) != 0 && (*(a1 + 245672) != v26 || *(a1 + 245676) != v27);
  LODWORD(v1156) = 0;
  v1151 = 0;
  v29 = *(a1 + 272280);
  if (*(*a1 + 51016))
  {
    v30 = *(a1 + 643792);
    v31 = *(a1 + v30 + 644148);
    v32 = *(a1 + 4 * v30 + 644152);
  }

  else
  {
    v32 = 0;
    v31 = 1;
  }

  if (*(a1 + 395232) && !*(a1 + 272180) && !*(*a1 + 23172) && *(a1 + 272208) == 1 && !*(a1 + 271408) && *(a1 + 271292) == 1 && *(a1 + 271268) >= 1 && !*(a1 + 395312) && (*(a1 + 245616) & 0xFD) != 0 && !*(a1 + 643792))
  {
    sub_277BA5710(a1);
  }

  for (m = 0; m != 252; m += 36)
  {
    v34 = v6 + m + 270056;
    *v34 = xmmword_277C3A208;
    *(v34 + 1) = unk_277C3A218;
    *(v34 + 8) = 0;
  }

  *(v9 + 908) = 0;
  sub_2779C44C0(v6, *(v9 + 1536));
  v35 = sub_277A8B744(v6);
  *(v10 + 777) = 4;
  *(v10 + 775) = *(v1067 + 3334) | *(v10 + 769);
  sub_2779F5008(v6, v35, v43, v44, v45, v36, v37, v38, v39, v40, v41, v42);
  v46 = 0;
  v47 = *(v10 + 780);
  if (v47 != 7 && (v47 & 0xF8) == 0)
  {
    v48 = *(v6 + (v47 & 7) + 61464);
    if (v48 == -1)
    {
      v46 = 0;
    }

    else
    {
      v46 = v6[v48 + 30754];
    }
  }

  *(v10 + 496) = v46;
  sub_277BA3DF0(v6, &v1151, &v1151 + 1, &v1156);
  sub_277ACB424(v6);
  v53 = v1067;
  v1138 = v29;
  if (!*(v10 + 288) && (*(*v6 + 51016) || *(v1067 + 2532) >= 1) && !*(v1039 + 420))
  {
    v54 = *(v1067 + 1576);
    v55 = *(v1067 + 2392);
    v56 = v32;
    v57 = *(v1067 + 2396);
    v58 = *(v54 + 96);
    v1128 = *(v54 + 100);
    v1114 = *(v54 + 76);
    v59 = *(v1067 + 3396);
    v60 = *(v1148 + 784);
    v61 = sub_27797ABB4(a1 + 643920);
    v62 = v55;
    v6 = a1;
    v63 = v57;
    v32 = v56;
    v64 = v58;
    v9 = v1049;
    v65 = v59;
    v10 = v1148;
    v69 = sub_27797AC44(a1 + 643920, v62, v63, v64, v1128, v1114, v65, v60, v61, v66, v67, v68, 0, 0);
    v53 = v1067;
    if (v69)
    {
      sub_2779F5C10(*(v1148 + 320), 2, "Failed to allocate buffer for source_last_TL0");
      v53 = v1067;
    }
  }

  if (!*(*v6 + 51016))
  {
    v70 = *(v10 + 328);
    v71 = v29[4];
    if (v71 == 2 * v70 && (v72 = *(v10 + 332), v29[6] == 2 * v72))
    {
      if (v72 * v70 < 57601)
      {
        v31 = 1;
      }

      else
      {
        v31 = 3;
      }
    }

    else
    {
      v73 = 4 * v70;
      if (v73 == v71 && v29[6] == 4 * *(v10 + 332))
      {
        v31 = 1;
      }

      else if (v73 == 3 * v71)
      {
        if (3 * v29[6] == 4 * *(v10 + 332))
        {
          v31 = 0;
        }

        else
        {
          v31 = v31;
        }
      }
    }

    v32 = 8;
  }

  if ((*(v10 + 272) & 0xFD) == 0 && !*(v9 + 2532) && !*(v9 + 1676) && (*(v9 + 2244) || *(v9 + 2248)))
  {
    v74 = *v10;
    if (!*v10)
    {
      v74 = sub_277972454(2uLL >> *(*(v53 + 1576) + 77) << 16);
      if (!v74)
      {
        sub_2779F5C10(*(v10 + 320), 2, "Failed to allocate pixel_gradient_info");
      }

      *v10 = v74;
      v53 = v1067;
    }

    *(a1 + 214760) = v74;
  }

  v1129 = v32;
  if (*(v53 + 3472) == 2)
  {
    if (!*(v9 + 1676) || (v50 = 1.0, v51 = -0.25, v49 = *(v53 + 3404) * -0.25 + 1.0, v49 > 0.0) && (!*(v9 + 2532) || *(v9 + 2580)))
    {
      v75 = *(v10 + 8);
      if (!v75)
      {
        v76 = *(*(v53 + 1576) + 28);
        v77 = malloc_type_malloc(16 * byte_277C3F990[v76] * byte_277C36D60[v76] + 23, 0x5F484EBFuLL);
        if (!v77 || (v75 = (v77 + 23) & 0xFFFFFFFFFFFFFFF0, *(v75 - 8) = v77, !v75))
        {
          sub_2779F5C10(*(v10 + 320), 2, "Failed to allocate source_variance_info");
          v75 = 0;
        }

        *(v10 + 8) = v75;
        v53 = v1067;
      }

      *v11 = v75;
    }
  }

  if (*(v9 + 1676) == 2)
  {
    v78 = *(*(v53 + 1576) + 28);
    if (v78 == 12)
    {
      v79 = 1;
    }

    else
    {
      v79 = 4;
    }

    v80 = *(v11 + 1768);
    if (!v80)
    {
LABEL_81:
      if (v78 == 12)
      {
        v81 = 43687;
      }

      else
      {
        v81 = 174679;
      }

      v82 = malloc_type_malloc(v81, 0x5F484EBFuLL);
      if (v82)
      {
        v83 = (v82 + 23) & 0xFFFFFFFFFFFFFFF0;
        *(v83 - 8) = v82;
        *(v11 + 1768) = v83;
        if (v83)
        {
LABEL_586:
          *(v11 + 1776) = v79;
          v53 = v1067;
          goto LABEL_587;
        }
      }

      else
      {
        *(v11 + 1768) = 0;
      }

      sub_2779F5C10(*(v10 + 320), 2, "Failed to allocate cpi->td.vt64x64");
      goto LABEL_586;
    }

    if (v79 != *(v11 + 1776))
    {
      free(*(v80 - 8));
      *(v11 + 1768) = 0;
      goto LABEL_81;
    }
  }

LABEL_587:
  v318 = v1129;
  if (!*(v10 + 272) || *(v9 + 2164) && *(v1063 + 912) == 1)
  {
    v319 = *a1;
    if (*(v9 + 2352))
    {
      memcpy(v319 + 75804, &unk_277C3D084, 0x2140uLL);
    }

    if ((*(v9 + 2076) - 0x7FFFFFFF) >= 0x80000002)
    {
      memcpy(v319 + 75160, &unk_277C3F1C4, 0x268uLL);
    }

    v53 = v1067;
    if (*(v9 + 2080) >= 1)
    {
      v319[4736] = xmmword_277C3F42C;
      *&v49 = 0x4000000040;
      *(v319 + 75788) = *(&xmmword_277C3F42C + 12);
    }

    if (*(v9 + 2192) == 2)
    {
      memcpy(v319 + 84316, &unk_277C3F448, 0x540uLL);
      v53 = v1067;
    }
  }

  v320 = v1039;
  v321 = a1;
  v322 = sub_2779F4BE8(v10 + 272, v1138, (a1 + 272288), v31, v1129, 1, 0, *(v53 + 3396), v49, v50, v51, v52, *(v1039 + 1404));
  v327 = v1067;
  *(v1067 + 3528) = v322;
  if ((*(v10 + 272) & 0xFD) == 0 || v28)
  {
    v328 = (*(v10 + 808) * *(v10 + 804)) >> 2;
    v329 = *(v1039 + 888);
    if (!v329 || *(v1039 + 896) >= v328)
    {
      goto LABEL_608;
    }

    free(*(v329 - 1));
    *(v1039 + 896) = 0;
    if (v328 < 0 || (v330 = malloc_type_malloc((v328 + 23), 0x5F484EBFuLL)) == 0)
    {
      *(v1039 + 888) = 0;
    }

    else
    {
      v331 = v330;
      v329 = ((v330 + 23) & 0xFFFFFFFFFFFFFFF0);
      *(v329 - 1) = v331;
      *(v1039 + 888) = v329;
      if (v329)
      {
LABEL_607:
        *(v1039 + 896) = v328;
LABEL_608:
        bzero(v329, v328);
        v327 = v1067;
        v321 = a1;
        goto LABEL_609;
      }
    }

    sub_2779F5C10(*(v10 + 320), 2, "Failed to allocate cpi->consec_zero_mv");
    v329 = *(v1039 + 888);
    goto LABEL_607;
  }

LABEL_609:
  if (*(v1039 + 1412))
  {
    *(v327 + 3536) = v321 + 68126;
    *(v1039 + 1412) = 0;
  }

  else
  {
    v332 = *(v327 + 3760);
    if (v332)
    {
      v333 = sub_2779F4BE8(v10 + 272, v332, v321 + 68126, v31, v1129, 1, 0, *(v327 + 3396), v323.n128_f64[0], v324, v325, v326, *(v1039 + 1404));
      v327 = v1067;
      *(v1067 + 3536) = v333;
    }
  }

  if (!*(v9 + 2608))
  {
    goto LABEL_650;
  }

  v334 = *(v10 + 328);
  v335 = 40;
  if (v334 <= 352)
  {
    if (*(v10 + 332) >= 289)
    {
      v335 = 40;
    }

    else
    {
      v335 = 60;
    }
  }

  v336 = *(v10 + 288);
  v337 = *(v327 + 3536);
  v338 = *(v1121 + 29);
  v340 = !v338 || (v339 = *(v1121 + 30)) == 0 || v334 == v338 && *(v10 + 332) == v339;
  if (*(*(v327 + 1576) + 76) || *(v327 + 3444) || *(v327 + 2556) != 1 || *(v327 + 2592) != 3 || *(v327 + 3404) <= 4 || !v340 || *(*v321 + 51016) || *(v327 + 3260) == 1 || *(v10 + 332) * v334 <= 230399)
  {
    v342 = 0;
    v341 = 1;
  }

  else
  {
    v341 = 0;
    v342 = 1;
  }

  *(v1039 + 848) = v342;
  v343 = *(v1039 + 424);
  if (v343 >= 2)
  {
    v336 = *(v1039 + 456);
  }

  if ((v341 & 1) != 0 || (v336 & 7) != 0 || !v337)
  {
    if (!v337)
    {
      goto LABEL_650;
    }

    goto LABEL_649;
  }

  if (v343 == 1 && (*(v1039 + 872) != v334 || *(v1039 + 876) != *(v10 + 332)))
  {
LABEL_649:
    *(v1039 + 872) = v334;
    *(v1039 + 876) = *(v10 + 332);
    goto LABEL_650;
  }

  if (v336 >= 61 && *(v1039 + 536) > 1 && *(v9 + 1260) > v343 && *(v1039 + 416) == v343 - 1 && *(v9 + 1416) < v335)
  {
    *(v1039 + 852) = 0;
    *(v1039 + 868) = 0;
    *(v1039 + 880) = 10;
    goto LABEL_650;
  }

  v323.n128_u64[1] = 0;
  memset(__dst, 0, 80);
  v449 = *(v10 + 804);
  if (v449 >= 1)
  {
    v1116 = v31;
    v450 = 0;
    v451 = 0;
    v452 = 0;
    v453 = *(v327 + 3528);
    v454 = *(v453 + 40);
    v455 = *(v453 + 32);
    v456 = *(v337 + 40);
    v457 = *(v337 + 32);
    v458 = *(v10 + 808);
    do
    {
      if (v458 >= 1)
      {
        v459 = 0;
        v460 = (*(v1039 + 888) + v450);
        do
        {
          v461 = *v460++;
          if (v461 > 2)
          {
            ++v452;
          }

          v459 += 2;
        }

        while (v459 < v458);
      }

      v451 += 2;
      v450 += v458 >> 1;
    }

    while (v451 < v449);
    v462 = 0;
    v463 = (3 * v449 * v458) >> 5;
    while (1)
    {
      if (v458 < 1)
      {
        goto LABEL_854;
      }

      for (n = 0; n < v458; ++n)
      {
        if (((n | v462) & 7) == 0 && v462 < *(v1148 + 804) - 3 && n < v458 - 3)
        {
          v466 = (n >> 1) + ((v458 >> 1) * (v462 >> 1));
          v467 = v466 + (v458 >> 1);
          v468 = *(v1039 + 888);
          v469 = (v468 + v466);
          v470 = *v469;
          v471 = v469[1];
          v472 = (v468 + v467);
          v473 = *v472;
          v474 = v472[1];
          if (v473 < v474)
          {
            v474 = v473;
          }

          if (v471 < v474)
          {
            v474 = v471;
          }

          if (v474 >= v470)
          {
            v474 = v470;
          }

          if (v452 >= v463 && v474 >= 3 && !*(v1049 + 1276))
          {
            LODWORD(__src[0]) = 0;
            v475 = (*(*a1 + 52232))(v454, v455, v456, v457, __src);
            if (v475 <= 0x7CF)
            {
              v476 = &__dst[0].i8[4 * (v475 / 0x64u)];
              goto LABEL_850;
            }

            v476 = &__dst[4].i8[12];
            if (v475 <= 0xBB7)
            {
LABEL_850:
              ++*v476;
            }

            v458 = *(v1148 + 808);
            v327 = v1067;
          }
        }

        v454 += 4;
        v456 += 4;
      }

      LODWORD(v449) = *(v1148 + 804);
LABEL_854:
      v454 += 4 * (v455 - v458);
      v456 += 4 * (v457 - v458);
      if (++v462 >= v449)
      {
        v10 = v1148;
        v334 = *(v1148 + 328);
        v477 = __dst[0].i32[0];
        v478 = __dst[4].u32[3];
        v320 = v1039;
        v9 = v1049;
        v321 = a1;
        LODWORD(v31) = v1116;
        v318 = v1129;
        goto LABEL_873;
      }
    }
  }

  v478 = 0;
  v477 = 0;
LABEL_873:
  v320[218] = v334;
  v320[219] = *(v10 + 332);
  if (v477 < 0xB || v478 <= v477 >> 2)
  {
    v323.n128_u64[0] = *(__dst[0].u64 + 4);
  }

  else
  {
    v477 = 0;
    __dst[1].i32[1] = __dst[1].i32[1] >> 1;
    __dst[1].i32[2] = (3 * __dst[1].i32[2]) >> 1;
    __dst[0].i32[0] = 0;
    v324 = *(__dst[0].i64 + 4);
    v323 = vshlq_u32(*(__dst + 4), xmmword_277BB79A0);
    *(__dst + 4) = v323;
    v478 >>= 1;
    __dst[4].i32[3] = v478;
  }

  v486 = 0;
  v487 = 0;
  v488 = 0;
  v489 = (__dst[4].i32[1] + 2 * __dst[4].i32[2] + (v478 >> 1) + 2) >> 2;
  v490 = v478 >> 2;
  v491 = (v323.n128_u32[0] + v477 + v323.n128_u32[1]) / 3;
  v492 = __dst;
  do
  {
    if (v486 == 19)
    {
      v1154 = v490;
    }

    else if (v486 == 18)
    {
      v1153 = v489;
    }

    else if (v486)
    {
      *(__src + v486) = (v492[-1].i32[3] + 2 * v492->i32[0] + v492->i32[1] + 2) >> 2;
    }

    else
    {
      LODWORD(__src[0]) = v491;
    }

    if (*(__src + v486) > v488)
    {
      v488 = *(__src + v486);
      v487 = v486;
    }

    ++v486;
    v492 = (v492 + 4);
  }

  while (v486 != 20);
  v493 = (3 * v320[214] + 40 * v487) >> 2;
  v320[214] = v493;
  if (v320[213] <= 1u && v493 > v320[216] || (v494 = v320[217] + 1, v320[217] = v494, v494 == v320[220]))
  {
    v320[220] = 30;
    v320[217] = 0;
    v495 = v320[215];
    if (v493 <= 2 * v495)
    {
      if (v493 <= v495)
      {
        v496 = v493 > v495 >> 1;
      }

      else
      {
        v496 = 2;
      }
    }

    else
    {
      v496 = 3;
    }

    v320[213] = v496;
  }

LABEL_650:
  if (v320[106] == 1)
  {
    v344 = *(v9 + 1532);
    if ((*(v327 + 2620) & 1) == 0 && (v344 & 8) != 0)
    {
      v345 = *(v10 + 524);
      if (v345 == -1 || (v346 = *&v321[2 * v345 + 61508]) == 0 || *(v346 + 1264) != *(v10 + 328) || *(v346 + 1272) != *(v10 + 332))
      {
        v344 &= ~8u;
        *(v9 + 1532) = v344;
      }
    }

    if ((v344 & 0x40) != 0)
    {
      v347 = *(v10 + 536);
      if (v347 == -1 || (v348 = *&v321[2 * v347 + 61508]) == 0 || *(v348 + 1264) != *(v10 + 328) || *(v348 + 1272) != *(v10 + 332))
      {
        *(v9 + 1532) = v344 & 0xFFFFFFBF;
      }
    }
  }

  if (!*(*v321 + 4 * *(v1121 + 40) + 12668) && (*(v10 + 272) & 0xFD) != 0)
  {
    sub_277BA45FC(v321, v31, v318, 1, v323, v324, v325, v326);
    v327 = v1067;
  }

  v349 = v1151;
  v350 = v327;
  sub_277A80B98(v10 + 272, *(v327 + 2580), *(v327 + 2584), v1151, *(v327 + 2595), *(v327 + 2596));
  sub_2779C5D3C(a1, *(v350 + 3404));
  sub_277A7FF54((a1 + 16), (v10 + 888), *(*(v350 + 1576) + 72));
  sub_277991BD0(a1, v349);
  sub_277BA4F38(a1);
  if (*(v9 + 2592) == 1 && *(v9 + 1276))
  {
    v352 = *a1;
    v353 = *a1 + 44144;
    v354 = *(*a1 + 44288);
    v355 = *(v9 + 1332);
    v356 = *(v1067 + 3260);
    *(v1121[2] + 28) = 0;
    v357 = v320[104];
    if (v357 >= 1 && ((v358 = *(v1049 + 1532), (v358 & 1) != 0) && (v359 = v352[21429], v352[v359 + 21450] == v320[114]) && v357 > *(v352 + v359 + 85832) || (v358 & 8) != 0 && (v360 = v352[21432], v352[v360 + 21450] == v320[114]) && v357 > *(v352 + v360 + 85832) || (v358 & 0x40) != 0 && (v361 = v352[21435], v352[v361 + 21450] == v320[114]) && v357 > *(v352 + v361 + 85832)))
    {
      v362 = 0;
      v363 = (v349 + *(v1049 + 1388)) >> 1;
    }

    else
    {
      v363 = *(v1049 + 1388);
      v362 = 1;
      if (v356 != 1)
      {
        v363 = (3 * v363 + v349) >> 2;
      }
    }

    LODWORD(v1151) = v363;
    *(v353 + 72) = v363;
    v364 = *v353;
    *(v353 + 192) = *v353;
    *(v353 + 224) = v364;
    *(v1049 + 1396) = 0;
    v365 = (v355 << 9) / *(v10 + 800);
    v366 = sub_277A58CE0(v363, *(*(v1067 + 1576) + 72));
    if (v356 == 1)
    {
      v367 = 1000000;
    }

    else
    {
      v367 = 2000000;
    }

    v368 = v366 * v365 / v367;
    if (v368 > v354)
    {
      v369 = (v354 + v368) * 0.5;
      if (v369 <= 50.0)
      {
        v354 = v369;
      }

      else
      {
        v354 = 50.0;
      }

      *(v353 + 144) = v354;
    }

    v370 = *(v1039 + 428);
    v9 = v1049;
    if (v370 >= 2)
    {
      v371 = v362 ^ 1;
      if (!*(v1039 + 416))
      {
        v371 = 0;
      }

      if ((v371 & 1) == 0)
      {
        v372 = 0;
        v373 = *(v1039 + 760);
        do
        {
          v374 = v373 + 13176 * (v372 + *(v1039 + 416) * v370);
          *(v374 + 8904) = v363;
          v375 = *(v374 + 8832);
          *(v374 + 9024) = v375;
          *(v374 + 9056) = v375;
          *(v374 + 184) = 0;
          *(v374 + 8976) = v354;
          v370 = *(v1039 + 428);
          ++v372;
        }

        while (v372 < v370);
      }
    }

    sub_277A80B98(v10 + 272, *(v1067 + 2580), *(v1067 + 2584), v363, *(v1067 + 2595), *(v1067 + 2596));
    sub_2779C5D3C(a1, *(v1067 + 3404));
    sub_277A7FF54((a1 + 16), (v10 + 888), *(*(v1067 + 1576) + 72));
    sub_277991BD0(a1, v363);
    if ((*(v10 + 272) & 0xFD) == 0 || (*(v10 + 774) & 1) != 0 || *(v10 + 780) == 7)
    {
      sub_277BA4F38(a1);
    }
  }

  if ((*(v10 + 272) & 0xFD) == 0 || !*(v9 + 1428))
  {
    v8 = v1121;
    v376 = v1121 + 7;
    v351 = 0x100000000;
    v1121[3] = 0x100000000;
    v378 = v1036;
LABEL_706:
    *(v378 + 160) &= 0xFFFFFFA1;
    if (*v378)
    {
      *(v378 + 1) = 257;
    }

    goto LABEL_708;
  }

  v8 = v1121;
  v376 = v1121 + 7;
  v377 = v1067;
  v378 = v1036;
  if (!*(v1121 + 7))
  {
    goto LABEL_709;
  }

  if (!*(v1121 + 6))
  {
    goto LABEL_706;
  }

  memcpy(*v1121, v1121[4], *(v10 + 808) * *(v10 + 804));
  v378 = v1036;
  *v1036 = 65793;
  *(v1036 + 160) |= 0x5Eu;
  v351 = 0x3E003E003E003ELL;
  *(v1036 + 118) = 0x3E003E003E003ELL;
LABEL_708:
  v377 = v1067;
  *v376 = 0;
LABEL_709:
  v121 = a1;
  if (*(v377 + 2592) != 3)
  {
    goto LABEL_812;
  }

  v379 = v8[2];
  v380 = *(v9 + 1276);
  v381 = *(*a1 + 35636);
  if (v381 <= 1599)
  {
    v382 = v381 / 100;
  }

  else
  {
    v382 = 15;
  }

  if (*(*a1 + 4 * *(v8 + 40) + 1152) >= 6)
  {
    v383 = 6;
  }

  else
  {
    v383 = *(*a1 + 4 * *(v8 + 40) + 1152);
  }

  v384 = *(v10 + 272);
  v385 = *(v10 + 496);
  if (v385 && (*(v10 + 328) != *(v385 + 268) || *(v10 + 332) != *(v385 + 272)) && *(v1039 + 432) == *(v1039 + 424))
  {
    bzero(*(v379 + 5), *(v10 + 808) * *(v10 + 804));
    v378 = v1036;
    v377 = v1067;
    *(v379 + 3) = 0;
    *(v379 + 4) = 0;
    *(v1063 + 912) = 1;
    *(v379 + 26) = 0;
    *(v379 + 28) = 0;
    *(v379 + 1) = 5;
    *(v379 + 10) = 0x3FD0000000000000;
  }

  if (*(v379 + 26))
  {
    ++*(v379 + 28);
    v386 = *(v377 + 1576);
    v387 = sub_277A58CE0(*(v10 + 888), *(v386 + 72));
    *(v379 + 6) = *(v1049 + 1228) << 10;
    *(v379 + 7) = 4 * (v387 * v387);
    if (*(v1067 + 3404) < 8 || *(v10 + 332) * *(v10 + 328) < 230400)
    {
      *(v379 + 3) = xmmword_277BB7270;
    }

    *v1036 = 65793;
    if (*(v8 + 6))
    {
      LODWORD(v388) = *(v1036 + 132) & 0xFFFFFFFE;
      HIDWORD(v388) = (*(v1036 + 132) | 0x100000001uLL) >> 32;
      v389 = *(v1036 + 140) | 1;
      v390 = a1;
    }

    else
    {
      v390 = a1;
      *(a1 + 264740) = 0u;
      *(a1 + 264756) = 0u;
      *(a1 + 264708) = 0u;
      *(a1 + 264724) = 0u;
      *(a1 + 264676) = 0u;
      *(a1 + 264692) = 0u;
      *(a1 + 264644) = 0u;
      *(a1 + 264660) = 0u;
      *(a1 + 264612) = 0u;
      *(a1 + 264628) = 0u;
      v388 = 0x100000000;
      v389 = 1;
    }

    *(v1036 + 132) = v388;
    *(v1036 + 140) = v389;
    v391 = *(v379 + 9);
    v392 = sub_277A4C9EC(v390, *(v10 + 888), v391);
    v393 = v10;
    v394 = v392;
    *(v379 + 24) = v392;
    v395 = *(v393 + 888);
    v396 = v395 + *(v393 + 892) + v392;
    if (v396 >= 0xFF)
    {
      v397 = 255;
    }

    else
    {
      v397 = v396;
    }

    if (v396 >= 0)
    {
      v398 = v397;
    }

    else
    {
      v398 = 0;
    }

    v399 = *v390;
    v8 = v1121;
    v400 = *(v1067 + 3444);
    if (v400 > 1)
    {
      v401 = 1;
    }

    else
    {
      v401 = !v400 && !*(v1039 + 816) && *(v399 + 23172) != 0;
    }

    *(v379 + 9) = sub_277A8A0B8(v398, *(v386 + 72), *(v399 + *(v1121 + 40) + 400), v383, v382, v384, *(v1067 + 2576), v401);
    *(v1036 + 20) = v394;
    v402 = v391 * (*(v379 + 22) * 0.1);
    if (v402 > 4.0)
    {
      v402 = 4.0;
    }

    v403 = sub_277A4C9EC(a1, v395, v402);
    v378 = v1036;
    *(v379 + 25) = v403;
    *(v1036 + 36) = v403;
    v404 = v1121[2];
    v1115 = *v1121;
    v405 = v1121[4];
    v406 = *(v1148 + 804);
    v407 = *(v1148 + 808);
    v408 = v407 * v406;
    if (!*(v1121 + 6))
    {
      bzero(v1115, v408);
      v378 = v1036;
      v386 = *(v1067 + 1576);
    }

    v409 = *(v386 + 32);
    v410 = (v407 + v409 - 1) / v409;
    v411 = (v406 + v409 - 1) / v409 * v410;
    v412 = 1374389535 * *v404 * v408;
    v413 = HIDWORD(v412);
    v414 = v412 >> 63;
    v415 = *(v404 + 3);
    v377 = v1067;
    if (v415 >= v411)
    {
      v415 = 0;
      *(v404 + 3) = 0;
    }

    v416 = 0;
    v417 = 0;
    v418 = 0;
    *(v404 + 4) = v415;
    *(v404 + 6) = 0;
    v419 = 2 * v407;
    v420 = 0x7FFFFFFFFFFFFFFFLL;
    v421 = v414 + (v413 >> 5);
    v1106 = v406;
    v1101 = v410;
    v1097 = v411;
    v1093 = v421;
    while (1)
    {
      v422 = *(*(v377 + 1576) + 32);
      v423 = v422 * (v415 / v410);
      v424 = v415 % v410 * v422;
      v425 = v407 - v424;
      if (v407 - v424 >= v422)
      {
        v426 = *(*(v377 + 1576) + 32);
      }

      else
      {
        v426 = v407 - v424;
      }

      if (v406 - v423 >= v422)
      {
        v427 = v422;
      }

      else
      {
        v427 = (v406 - v423);
      }

      if (*(v404 + 29))
      {
        if (*(v1049 + 1260) >= 31 && *(v404 + 28) >= 31)
        {
          v428 = *(v1039 + 1216);
          if (v428)
          {
            if (*(v1039 + 416) == *(v1039 + 424) - 1)
            {
              v417 = *(v428 + 8 * v415);
              if (*(v1148 + 332) * *(v1148 + 328) >= 230400)
              {
                v420 = 0x8000;
              }

              else
              {
                v420 = 24576;
              }

              if (*(v1039 + 428) <= 1)
              {
                v418 = 0x2000;
              }

              else
              {
                if (*(v1039 + 420))
                {
                  v418 = 0x2000;
                }

                else
                {
                  v418 = 0x8000;
                }

                if (!*(v1039 + 420))
                {
                  v420 *= 16;
                }
              }
            }
          }
        }
      }

      if (v427 < 1)
      {
        break;
      }

      v429 = 0;
      v430 = 0;
      v431 = v426;
      v432 = v424 + v423 * v407;
      v433 = &v405[v432];
      v434 = v432;
      do
      {
        if (v425 >= 1)
        {
          v435 = 0;
          do
          {
            v436 = *(v404 + 5) + v434;
            v437 = *(v436 + v435);
            if (*(v436 + v435))
            {
              v438 = v417 >= v418;
            }

            else
            {
              v438 = 0;
            }

            if (v438 || *(v8 + 6) && v433[v435])
            {
              if (v437 < 0)
              {
                *(v436 + v435) = v437 + 1;
              }
            }

            else
            {
              v430 += 4;
            }

            v435 += 2;
          }

          while (v435 < v426);
        }

        v429 += 2;
        v433 += v419;
        v434 += v419;
      }

      while (v429 < v427);
      v439 = v426 * v427;
      if (v430 >= (v426 * v427) >> 1 && v417 < v420)
      {
        v1131 = v420;
        v1141 = v415;
        v442 = v405;
        v443 = &v1115[v432];
        do
        {
          memset(v443, 1, v431);
          v443 += v407;
          --v427;
        }

        while (v427);
        v416 = *(v404 + 6);
        v377 = v1067;
        v378 = v1036;
        v405 = v442;
        v406 = v1106;
        v410 = v1101;
        v411 = v1097;
        v415 = v1141;
        v420 = v1131;
        v421 = v1093;
LABEL_804:
        v416 += v439;
        *(v404 + 6) = v416;
        goto LABEL_805;
      }

      v416 = *(v404 + 6);
LABEL_805:
      if (v415 + 1 == v411)
      {
        v415 = 0;
      }

      else
      {
        ++v415;
      }

      v8 = v1121;
      if (v416 >= v421 || v415 == *(v404 + 3))
      {
        *(v404 + 3) = v415;
        v9 = v1049;
        v10 = v1148;
        v121 = a1;
        if (v416 || *(v1121 + 6))
        {
          goto LABEL_812;
        }

        *v378 = 0;
        goto LABEL_857;
      }
    }

    v439 = v426 * v427;
    if (v426 * v427 > 1 || v417 >= v420)
    {
      goto LABEL_805;
    }

    goto LABEL_804;
  }

  v9 = v1049;
  if (!*(v8 + 6) || *(v1049 + 1428) == 100)
  {
    bzero(*v8, *(v10 + 808) * *(v10 + 804));
    v378 = v1036;
    v377 = v1067;
    *v1036 = 0;
  }

  v121 = a1;
  if ((*(v10 + 272) & 0xFD) == 0 || v380 || *(*a1 + 85841) == 1)
  {
    v351 = 0;
    *(v379 + 12) = 0;
    *(v379 + 28) = 0;
    *(v379 + 28) = 0;
  }

LABEL_812:
  if (*v378)
  {
    v7 = v1039;
    if (*(v378 + 2) || (v444 = *(v10 + 496)) == 0)
    {
      sub_277AFBBBC(v378);
      v378 = v1036;
      v377 = v1067;
    }

    else
    {
      v445 = 0;
      v446 = v444 + 92;
      v447 = &v121[16538].i8[4];
      do
      {
        v448 = 0;
        v121[16546].i32[v445 + 1] = *(v444 + 220 + 4 * v445);
        do
        {
          *&v447[v448] = *(v446 + v448);
          v448 += 2;
        }

        while (v448 != 16);
        ++v445;
        v447 += 16;
        v446 += 16;
      }

      while (v445 != 8);
      *(v378 + 168) = *(v444 + 256);
      *(v378 + 164) = *(v444 + 252);
      *v378 = *(v444 + 88);
    }
  }

  else
  {
LABEL_857:
    v351 = 0;
    *(v378 + 156) = 0u;
    *(v378 + 128) = 0u;
    *(v378 + 144) = 0u;
    *(v378 + 96) = 0u;
    *(v378 + 112) = 0u;
    *(v378 + 64) = 0u;
    *(v378 + 80) = 0u;
    *(v378 + 32) = 0u;
    *(v378 + 48) = 0u;
    *v378 = 0u;
    *(v378 + 16) = 0u;
    v7 = v1039;
  }

  v479 = 0;
  v480 = *(v10 + 504);
  v481 = &v121[16538].i8[4];
  v482 = v480 + 92;
  do
  {
    v483 = 0;
    *(v480 + 220 + 4 * v479) = v121[16546].i32[v479 + 1];
    do
    {
      *(v482 + v483) = *&v481[v483];
      v483 += 2;
    }

    while (v483 != 16);
    ++v479;
    v482 += 16;
    v481 += 16;
  }

  while (v479 != 8);
  *(v480 + 256) = *(v378 + 168);
  *(v480 + 252) = *(v378 + 164);
  *(v480 + 88) = *v378;
  if (*(v121->i64[0] + 23472) && *(v377 + 3444) != 1 && *(v7 + 816) != 1 && *(v10 + 752) && (*(v7 + 1152) & 1) == 0 && *(v9 + 2760))
  {
    v484 = *(v377 + 1576);
    if (*v1063)
    {
      v485 = *(v377 + 2392);
      if (*(v9 + 1504) == v485)
      {
        v485 = *(v9 + 1504);
        if (*(v9 + 1508) == *(v377 + 2396))
        {
LABEL_907:
          v121 = a1;
          sub_277A48DA4(*(v377 + 3528), a1 + 272720, 1);
          sub_277A48E78(*(v1067 + 3528), a1 + 272720, 1);
          sub_277A48F50(*(v1067 + 3528), a1 + 272720, 1);
          goto LABEL_908;
        }
      }
    }

    else
    {
      v485 = *(v377 + 2392);
    }

    v498 = *(v377 + 2396);
    v499 = *(v484 + 96);
    v500 = *(v484 + 100);
    v501 = *(v484 + 76);
    v502 = *(v377 + 3396);
    v503 = *(v1148 + 784);
    v504 = sub_27797ABB4(a1 + 272720);
    v8 = v1121;
    v505 = v500;
    v9 = v1049;
    v506 = v502;
    v10 = v1148;
    v510 = sub_27797AC44(a1 + 272720, v485, v498, v499, v505, v501, v506, v503, v504, v507, v508, v509, 0, 0);
    v377 = v1067;
    if (v510)
    {
      sub_2779F5C10(*(v1148 + 320), 2, "Failed to allocate scaled buffer");
      v377 = v1067;
    }

    goto LABEL_907;
  }

LABEL_908:
  if ((*(v10 + 272) & 0xFD) != 0)
  {
    sub_277AE8CB0(v121, v1151, *&v351);
  }

  sub_277A61248(v121);
  v511 = *(v9 + 1460);
  if (v511)
  {
    v109 = v1067;
    if ((*(v10 + 272) & 0xFD) != 0)
    {
LABEL_912:
      if (*(v109 + 2556) == 1 && *(v109 + 3472) == 1 && *(v7 + 424) == 1 && !v511 && *(v7 + 428) == 1 && !*(v121->i64[0] + 85776) && *(v9 + 2756))
      {
        sub_277A5C2A0(v121);
        v109 = v1067;
      }
    }
  }

  else
  {
    v109 = v1067;
    if ((*(v10 + 272) & 0xFD) != 0)
    {
      v512 = *(v121->i64[0] + 51016);
      if (!v512 || !*(*(v7 + 760) + 13176 * *(v7 + 420) + 13168) && *(v7 + 416) == *(v7 + 424) - 1)
      {
        v513 = 100 * *(v9 + 1420) / (*(v10 + 808) * *(v10 + 804));
        v514 = *(v9 + 1416);
        v515 = 3 * v514 + v513;
        if (v515 < 0 != __OFADD__(3 * v514, v513))
        {
          v515 += 3;
        }

        v516 = v515 >> 2;
        if (v514)
        {
          v513 = v516;
        }

        *(v9 + 1416) = v513;
        if (v512)
        {
          v517 = *(v7 + 424);
          if (v517 >= 2)
          {
            v518 = *(v7 + 416);
            if (v518 == v517 - 1)
            {
              v519 = *(v7 + 428);
              v520 = *(v7 + 420);
              v521 = (v518 + 3) & 0x1FFFFFFFCLL;
              v105 = vdupq_n_s64(v518 - 1);
              v522 = 13176 * v520;
              v523 = v522 + 39528 * v519;
              v524 = *(v7 + 760) + 204;
              v525 = 52704 * v519;
              v526 = v522 + 26352 * v519;
              v527 = 13176 * (v519 + v520);
              v106 = xmmword_277BB7090;
              v107 = xmmword_277BB70A0;
              v108 = vdupq_n_s64(4uLL);
              do
              {
                v528 = vmovn_s64(vcgeq_u64(v105, v107));
                if (vuzp1_s16(v528, *v105.i8).u8[0])
                {
                  *(v524 + 13176 * v520) = v513;
                }

                if (vuzp1_s16(v528, *&v105).i8[2])
                {
                  *(v524 + v527) = v513;
                }

                v181 = vcgeq_u64(v105, v106);
                *v181.i8 = vmovn_s64(v181);
                if (vuzp1_s16(*&v105, *&v181).i32[1])
                {
                  *(v524 + v526) = v513;
                }

                *v181.i8 = vuzp1_s16(*v105.i8, *v181.i8);
                if (v181.i8[6])
                {
                  *(v524 + v523) = v513;
                }

                v106 = vaddq_s64(v106, v108);
                v107 = vaddq_s64(v107, v108);
                v524 += v525;
                v521 -= 4;
              }

              while (v521);
            }
          }
        }
      }

      goto LABEL_912;
    }
  }

  if (*(v10 + 288) >= 2u && !*(v121->i64[0] + 51016))
  {
    if (*(v109 + 3592))
    {
      if (*(v109 + 3808))
      {
        if (*(v109 + 3568) == *(v109 + 3784) && *(v109 + 3576) == *(v109 + 3792))
        {
          v551 = *(v109 + 3544);
          if (*(v10 + 328) != *(v551 + 16) || *(v10 + 332) != *(v551 + 24))
          {
            *(v7 + 1412) = 1;
            sub_277A48DA4((a1 + 272288), a1 + 272504, 1);
            sub_277A48E78((a1 + 272288), a1 + 272504, 1);
            v121 = a1;
            sub_277A48F50((a1 + 272288), a1 + 272504, 1);
            v109 = v1067;
          }
        }
      }
    }
  }

LABEL_944:
  v529 = *(v109 + 1576);
  if (*(v121->i64[0] + 44132) && *(v9 + 1256) == 1)
  {
    v530 = *(v109 + 3528);
    v531 = *(v10 + 504);
    v532 = *(v530 + 40);
    v533 = *(v530 + 32);
    v534 = *(v531 + 1288);
    v535 = *(v531 + 1280);
    v536 = *(v530 + 16);
    v537 = *(v530 + 24);
    if (*(v529 + 76))
    {
      v538 = sub_277A2BAE0(v532, v533, v534, v535, v536, v537, *v105.i64, v106, v107, v108, v181);
    }

    else
    {
      v538 = sub_277A2B70C(v532, v533, v534, v535, v536, v537);
    }

    *(v1063 + 1352) = v538;
    v109 = v1067;
  }

  v1082 = (v10 + 272);
  v539 = *(v10 + 504);
  *(v539 + 1404) = *(v529 + 80);
  *(v539 + 1412) = *(v529 + 88);
  *(v539 + 1416) = *(v529 + 77);
  *(v539 + 1420) = *(v529 + 104);
  v1019 = v529;
  *(v539 + 1424) = *(v529 + 92);
  v105.i64[0] = *(v10 + 336);
  *(v539 + 1428) = v105.i64[0];
  v540 = *(v7 + 88);
  v541 = v540 == 0;
  if (!v540)
  {
    *(v1036 + 4032) = 0;
    *(v109 + 600) = 0;
    v105 = 1uLL;
    *(v109 + 468) = 1;
    *(v109 + 536) = 0;
    *(v1036 + 4064) = 0;
    *v109 = 0;
    *(v109 + 64) = 0;
  }

  if (*(v10 + 768))
  {
    goto LABEL_1492;
  }

  v542 = *(v1037 + 32);
  v543 = *(v109 + 1576);
  if (v543[77])
  {
    v544 = 1;
  }

  else
  {
    v544 = 3;
  }

  *(a1 + 102984) = *v9;
  if (*(v10 + 771))
  {
    v541 = 0;
    v545 = 1;
    v546 = v1039;
    goto LABEL_961;
  }

  v546 = v1039;
  if (*(v109 + 2180))
  {
    v541 = 0;
LABEL_960:
    v545 = 1;
    goto LABEL_961;
  }

  if (!v543[67])
  {
    goto LABEL_960;
  }

  if (*(v8 + 6))
  {
    v545 = *(v9 + 1428) > *(v9 + 2780);
  }

  else
  {
    v545 = 0;
  }

LABEL_961:
  v547 = !v543[68] || (*(v10 + 772) & 1) != 0 || *(v109 + 2180) != 0;
  if (*(*a1 + 85780))
  {
    v548 = 12;
LABEL_967:
    HIDWORD(v1024) = v548;
    goto LABEL_981;
  }

  if (*(v109 + 2440) == 1)
  {
    v549 = *(*a1 + 23472) == 0;
    if (*(*a1 + 23472) == 0 && v547)
    {
      v549 = 2;
    }

    HIDWORD(v1024) = v549;
    if (*(*a1 + 23472) == 0 && v547 && *(v10 + 328) == *(v10 + 344))
    {
      if (v545)
      {
        if (v541)
        {
          v548 = 8;
        }

        else
        {
          v548 = 0;
        }
      }

      else if (v541 && *(v9 + 2456) == 6)
      {
        v548 = 12;
      }

      else
      {
        v548 = 4;
      }

      goto LABEL_967;
    }
  }

  else
  {
    HIDWORD(v1024) = 0;
  }

LABEL_981:
  if (!v541)
  {
    goto LABEL_1001;
  }

  v105 = sub_2779834A4(*(v109 + 3528), a1, *(v9 + 2448), v105, *v106.i64, *v107.i64, *v108.i8);
  if (*(v1036 + 4032))
  {
    v109 = v1067;
    if (HIDWORD(v1024) > 7)
    {
      goto LABEL_1001;
    }
  }

  else
  {
    v109 = v1067;
    if (!*(v1036 + 4036) || HIDWORD(v1024) >= 8)
    {
      goto LABEL_1001;
    }
  }

  if (*(v9 + 2308) < 1 || *(v9 + 2304) < 1)
  {
    v550 = 0;
  }

  else if (*(v9 + 2448) == 3)
  {
    v550 = 2;
  }

  else
  {
    v550 = 1;
  }

  sub_2779D132C(*(v10 + 504) + 1248, v1082, a1 + 86480, 0, v544, 0, *(v1037 + 64), v542, a1 + 634808, v550);
  v109 = v1067;
LABEL_1001:
  v1143 = a1 + 86480;
  if (!v547)
  {
    sub_2779F8D3C(*(v10 + 504) + 1248, v1082, 0);
    v109 = v1067;
  }

  if (!v545)
  {
    v1087 = *(v1037 + 40);
    if (*(v109 + 2652) == 2 && *(*a1 + 85780))
    {
      *(v109 + 600) = 0;
      v105.i64[0] = 1;
      *(v109 + 468) = 1;
      *(v109 + 536) = 0;
LABEL_1009:
      v552 = v1087;
      goto LABEL_1186;
    }

    if (*(v9 + 1460))
    {
      sub_2779A48DC(v1082, 0, 0, *v105.i64);
      v109 = v1067;
      goto LABEL_1009;
    }

    v553 = *(v9 + 2456);
    v554 = *(v10 + 888);
    if (v553 == 6)
    {
      v555 = *(v9 + 2808);
      if (v555 <= *(v9 + 1392) + 5)
      {
        v555 = *(v9 + 1392) + 5;
      }

      v556 = v554 > v555 && *(v109 + 3260) == 1;
      v552 = *(v1037 + 40);
      sub_2779A48DC(v1082, *(v9 + 2688), v556, *v105.i64);
      goto LABEL_1185;
    }

    v1079 = (v554 >> 6) + 3;
    v557 = *(*(v109 + 1576) + 77);
    v558 = *(v1063 + 576);
    if (!v558)
    {
      v559 = malloc_type_malloc(0x1F3FuLL, 0x5F484EBFuLL);
      if (v559)
      {
        v558 = (v559 + 23) & 0xFFFFFFFFFFFFFFF0;
        *(v558 - 8) = v559;
        *(v1063 + 576) = v558;
        v109 = v1067;
        if (v558)
        {
          goto LABEL_1027;
        }
      }

      else
      {
        *(v1063 + 576) = 0;
      }

      sub_2779F5C10(*(v10 + 320), 2, "Failed to allocate cpi->cdef_search_ctx");
      v109 = v1067;
      v558 = *(v1063 + 576);
    }

LABEL_1027:
    v1133 = v557;
    v1090 = v547;
    v1103 = v553 - 1;
    v560 = *(v10 + 504);
    v561 = *(v109 + 1576);
    if (*(v561 + 77))
    {
      v562 = 1;
    }

    else
    {
      v562 = 3;
    }

    *v558 = *(v109 + 3528);
    *(v558 + 8) = a1 + 246136;
    v563 = *(v10 + 804);
    v564 = v563 + 15;
    v237 = v563 < -15;
    v565 = v563 + 30;
    if (!v237)
    {
      v565 = v564;
    }

    *(v558 + 7936) = v565 >> 4;
    v566 = *(v10 + 808);
    v567 = v566 + 15;
    v237 = v566 < -15;
    v568 = v566 + 30;
    if (!v237)
    {
      v568 = v567;
    }

    *(v558 + 7940) = v568 >> 4;
    *(v558 + 7860) = *(v561 + 72) - 8;
    *(v558 + 7864) = (*(v10 + 888) >> 6) + 3;
    v569 = 86496;
    v1122 = dword_277BC0DF0[v553];
    *(v558 + 7856) = v1122;
    *(v558 + 7872) = v562;
    *(v558 + 7868) = v553;
    *(v558 + 7968) = 0;
    *(v558 + 7972) = *(v561 + 76) != 0;
    v570 = v558;
    sub_27798E348(a1 + 86496, *(v561 + 28), v560 + 1248, 0, 0, 0, v562);
    v571 = 86504;
    v572 = 16;
    v573 = 7924;
    do
    {
      v574 = (a1 + v571);
      v575 = *(a1 + v571 - 4);
      v162 = v575 == 0;
      v576 = v575 == 0;
      v577 = (v570 + v573);
      *(v577 - 6) = v575;
      v578 = *(a1 + v571);
      *(v577 - 3) = v578;
      v579 = 2 * v576;
      if (v162)
      {
        v580 = 3;
      }

      else
      {
        v580 = 1;
      }

      if (v578)
      {
        v581 = v579;
      }

      else
      {
        v581 = v580;
      }

      *v577 = v581;
      *(v577 - 12) = 2 - *(v574 - 1);
      *(v577 - 9) = 2 - *v574;
      memcpy((v570 + v572), (a1 + v569), 0xA30uLL);
      v572 += 2608;
      v573 += 4;
      v571 += 2608;
      v569 += 2608;
      --v562;
    }

    while (v562);
    if (*(*(v1067 + 1576) + 76))
    {
      v582 = sub_277AA4008;
    }

    else
    {
      v582 = sub_277AA3FF0;
    }

    v583 = sub_2779A4F6C;
    if (!*(*(v1067 + 1576) + 76))
    {
      v583 = sub_2779A50FC;
    }

    *(v570 + 7840) = v582;
    *(v570 + 7848) = v583;
    v584 = *(v570 + 7936);
    v585 = *(v570 + 7940);
    v586 = 4 * v585 * v584;
    v587 = v570;
    if (v586 <= 0x1FFFFFFE9 && (v588 = malloc_type_malloc(v586 + 23, 0x5F484EBFuLL), v587 = v570, v588))
    {
      v1076 = (v570 + 7960);
      v589 = (v588 + 23) & 0xFFFFFFFFFFFFFFF0;
      *(v589 - 8) = v588;
      *(v570 + 7960) = v589;
      v590 = v1148;
      v591 = v1037;
      if (v589)
      {
LABEL_1053:
        *(v587 + 7968) = 0;
        v592 = (v584 * v585) << 9;
        if (v592 <= 0x1FFFFFFE9 && (v593 = v592 | 0x17, v594 = malloc_type_malloc(v592 | 0x17, 0x5F484EBFuLL), v587 = v570, v594))
        {
          v595 = (v594 + 23) & 0xFFFFFFFFFFFFFFF0;
          *(v595 - 8) = v594;
          *(v570 + 7944) = v595;
          if (v595)
          {
            goto LABEL_1059;
          }

          sub_2779F5C10(*(v590 + 320), 2, "Failed to allocate cdef_search_ctx->mse[0]");
        }

        else
        {
          *(v587 + 7944) = 0;
          sub_2779F5C10(*(v590 + 320), 2, "Failed to allocate cdef_search_ctx->mse[0]");
          if (v592 > 0x1FFFFFFE9)
          {
            goto LABEL_1062;
          }
        }

        v593 = v592 | 0x17;
LABEL_1059:
        v597 = malloc_type_malloc(v593, 0x5F484EBFuLL);
        if (v597)
        {
          v602 = (v597 + 23) & 0xFFFFFFFFFFFFFFF0;
          *(v602 - 8) = v597;
          v596 = v570;
          *(v570 + 7952) = v602;
          if (v602)
          {
LABEL_1064:
            if (*(v591 + 8) <= 1)
            {
              v619 = *(v596 + 7936);
              v618 = v1067;
              if (v619 >= 1)
              {
                v620 = 0;
                v621 = 0;
                v622 = *(v596 + 7940);
                do
                {
                  if (v622 >= 1)
                  {
                    v623 = 0;
                    v624 = 0;
                    v625 = 0;
                    v626 = 16 * v621;
                    do
                    {
                      v627 = *(v596 + 8);
                      v628 = *(v627 + 12) - v626;
                      if (v628 >= 16)
                      {
                        v629 = 16;
                      }

                      else
                      {
                        v629 = *(v627 + 12) - v626;
                      }

                      if (v628 >= 1)
                      {
                        v630 = 0;
                        v631 = 0;
                        v632 = *(v627 + 48);
                        v633 = *(v627 + 60);
                        v634 = *(v632 + (v625 << 7) + 8 * v633 * v626);
                        v635 = *(v627 + 16);
                        v636 = v635 - 16 * v625;
                        v637 = v632 + v623 + 8 * v620 * v633;
                        if (v629 <= 1)
                        {
                          v638 = 1;
                        }

                        else
                        {
                          v638 = v629;
                        }

                        v639 = v635 + v624;
                        if (v639 >= 16)
                        {
                          v639 = 16;
                        }

                        if (v639 <= 1)
                        {
                          v639 = 1;
                        }

                        v640 = 8 * v639;
                        v641 = 8 * v633;
                        while (v636 < 1)
                        {
LABEL_1106:
                          v630 = ++v631 >= v629;
                          v637 += v641;
                          if (v631 == v638)
                          {
                            goto LABEL_1107;
                          }
                        }

                        v642 = 0;
                        while (*(*(v637 + v642) + 144))
                        {
                          v642 += 8;
                          if (v640 == v642)
                          {
                            goto LABEL_1106;
                          }
                        }

LABEL_1107:
                        if (!v630 && ((v625 & 1) == 0 || (*v634 & 0xFE) != 0xE) && ((v621 & 1) == 0 || ((*v634 - 13) & 0xFD) != 0))
                        {
                          sub_2779A3CE0(v570, v621, v625, *(v570 + 7968), v598, v599, v600, v601, v1008, v1009, v1010, v1011, v1012, v1013, v1014, v1015, v1017, v1019, v1020, v1022, v1023, v1024, v1025, v1027, v1028, v1030, v1031, v1033, v1035, v1036, v1037, v1038, v1039, v1040, v1041, v1042, v1043, v1044, v1045, v1047, v1049, v1050, v1052, SHIDWORD(v1052), v1054, SHIDWORD(v1054), v1055, v1056, v1057, v1059);
                          v596 = v570;
                          v618 = v1067;
                          ++*(v570 + 7968);
                          v622 = *(v570 + 7940);
                        }
                      }

                      ++v625;
                      v624 -= 16;
                      v623 += 128;
                    }

                    while (v625 < v622);
                    v619 = *(v596 + 7936);
                  }

                  v621 = (v621 + 1);
                  v620 += 16;
                }

                while (v621 < v619);
              }
            }

            else
            {
              v603 = *(v591 + 36);
              if (*v1039)
              {
                pthread_mutex_init(*v1039, 0);
              }

              *(a1 + 643397) = 0;
              *(a1 + 643392) = 0;
              if (v603 >= 1)
              {
                v604 = *(v591 + 64);
                v605 = v603 + 1;
                v606 = (*(v591 + 72) + 456 * v603 - 456);
                v607 = (v604 + 56 * v603 - 16);
                do
                {
                  *v606 = a1;
                  *(v607 - 2) = sub_277AFB354;
                  *(v607 - 1) = v606;
                  *v607 = v1039;
                  v607 -= 7;
                  --v605;
                  v606 -= 57;
                }

                while (v605 > 1);
                v608 = v603 - 1;
                v609 = v604 + 56 * (v603 - 1);
                *(v609 + 48) = 0;
                if (v603 != 1)
                {
                  v610 = 56 * v603 - 64;
                  do
                  {
                    sub_277985E48(v609, 2);
                    v611 = *(v591 + 64);
                    *(v611 + v610) = 0;
                    v610 -= 56;
                    --v608;
                    v609 = v611 + 56 * v608;
                  }

                  while (v608);
                  v609 = v611 + v610 + 8;
                }

                v612 = *(v609 + 24);
                if (v612)
                {
                  *(v609 + 48) |= v612(*(v609 + 32), *(v609 + 40)) == 0;
                }
              }

              v613 = *(v591 + 64);
              v614 = *(v613 + 48);
              memset(__dst, 0, 404);
              if (v614)
              {
                memcpy(__dst, (*(v613 + 32) + 24), 0x194uLL);
              }

              if (v603 >= 2)
              {
                v615 = v603 + 1;
                v616 = 56 * v603;
                do
                {
                  v617 = *(v591 + 64) + v616;
                  sub_277985E48((v617 - 56), 1);
                  if (*(v617 - 8))
                  {
                    memcpy(__dst, (*(v617 - 24) + 24), 0x194uLL);
                    v614 = 1;
                  }

                  --v615;
                  v616 -= 56;
                }

                while (v615 > 2);
              }

              if (v614)
              {
                sub_2779F5C78(*(v590 + 320), __dst);
              }

              *(*(*(v613 + 32) + 8) + 11152) = *(v590 + 320);
              v618 = v1067;
              v596 = v570;
            }

            v1094 = 0;
            v643 = 0;
            v644 = *(v596 + 7968);
            v645 = *(v596 + 7944);
            v646 = *(v596 + 7952);
            if (v1133)
            {
              v647 = 1;
            }

            else
            {
              v647 = v1122;
            }

            v648 = v647 * v1122 - 1;
            v162 = v648 == 0;
            v649 = __clz(v648) ^ 0x1F;
            if (v162)
            {
              v650 = 0;
            }

            else
            {
              v650 = v649 + 1;
            }

            if (v650 >= 3)
            {
              v650 = 3;
            }

            v1107 = v650;
            v1098 = (v618 + 472);
            v1084 = (v618 + 536);
            v1117 = *(a1 + 102984);
            v1123 = -1;
            do
            {
              memset(__dst, 0, 64);
              v651 = 1 << v643;
              memset(__src, 0, sizeof(__src));
              if (v1133)
              {
                v652 = 0;
                do
                {
                  v653 = sub_2779A4E00(__dst[0].i32, v652++, v645, v644, v553);
                }

                while (v651 != v652);
                if (v1103 >= 5)
                {
                  v654 = 4 << v643;
                  v655 = v651 - 1;
                  v656 = 4 * (v651 - 1);
                  do
                  {
                    if (v643)
                    {
                      memmove(__dst, __dst[0].i64 + 4, v656);
                    }

                    v653 = sub_2779A4E00(__dst[0].i32, v655, v645, v644, v553);
                    --v654;
                  }

                  while (v654);
                }

                v657 = 1;
              }

              else
              {
                v658 = 0;
                do
                {
                  sub_2779A4C30(__dst, __src, v658, v645, v646, v644, v553, v601);
                  v658 = (v658 + 1);
                }

                while (v651 != v658);
                v659 = 4 << v643;
                v660 = (v651 - 1);
                do
                {
                  if (v643)
                  {
                    memmove(__dst, __dst[0].i64 + 4, 4 * v660);
                    memmove(__src, __src + 4, 4 * v660);
                  }

                  v653 = sub_2779A4C30(__dst, __src, v660, v645, v646, v644, v553, v601);
                  --v659;
                }

                while (v659);
                v657 = 2;
              }

              v661 = ((v1117 * ((v643 * v644 + v657 * (6 << v643)) << 9)) >> 9) + (v653 << 11);
              if (v661 < v1123)
              {
                memcpy(v1098, __dst, (4 << v643));
                if (!v1133)
                {
                  memcpy(v1084, __src, (4 << v643));
                }

                v1123 = v661;
                v1094 = v643;
              }

              v162 = v643++ == v1107;
              v10 = v1148;
            }

            while (!v162);
            v662 = v570;
            *(v1067 + 600) = v1094;
            v663 = 1 << v1094;
            *(v1067 + 468) = 1 << v1094;
            v546 = v1039;
            if (v644 >= 1)
            {
              v664 = 0;
              while (1)
              {
                if (v663 < 1)
                {
                  v670 = 0;
                }

                else
                {
                  v665 = 0;
                  v666 = 0;
                  v667 = -1;
                  v668 = v1084;
                  do
                  {
                    v669 = v645[64 * v664 + *(v668 - 16)];
                    if (!v1133)
                    {
                      v669 += *(v646 + (v664 << 9) + 8 * *v668);
                    }

                    if (v669 < v667)
                    {
                      v667 = v669;
                      v666 = v665;
                    }

                    ++v665;
                    ++v668;
                  }

                  while (v663 != v665);
                  v670 = (v666 & 0xF) << 11;
                }

                v671 = *(*(v1148 + 840) + 8 * *(*v1076 + 4 * v664));
                *(v671 + 167) = *(v671 + 167) & 0x87FF | v670;
                if (++v664 == v644)
                {
                  break;
                }

                v663 = *(v1067 + 468);
              }
            }

            v9 = v1049;
            v547 = v1090;
            v552 = v1087;
            v672 = v1098;
            if (v1103 > 4 || (v673 = *(v1067 + 468), v673 < 1))
            {
LABEL_1184:
              *(v1067 + 464) = v1079;
              sub_2779A4878(v662);
LABEL_1185:
              v109 = v1067;
LABEL_1186:
              if ((v1024 & 0x400000000) == 0)
              {
                v684 = *(v109 + 1576);
                if (v552 <= 1)
                {
                  if (v684[77])
                  {
                    v688 = 1;
                  }

                  else
                  {
                    v688 = 3;
                  }

                  v689 = *(v10 + 804);
                  sub_27798E348(a1 + 86496, v684[28], *(v10 + 504) + 1248, 0, 0, 0, v688);
                  v109 = v1067;
                  if (v689 >= 1)
                  {
                    v690 = 0;
                    v691 = (v689 + 15) >> 4;
                    do
                    {
                      sub_277AA4334(v1082, v1143, a1 + 269112, a1 + 269088, *(v109 + 400), v690, sub_277AA4148, 0);
                      v109 = v1067;
                      ++v690;
                    }

                    while (v691 != v690);
                  }
                }

                else
                {
                  v685 = v547;
                  if (*(v1037 + 40) >= 2)
                  {
                    v687 = v1082;
                    v686 = v684[67] && (*(v10 + 771) & 1) == 0 && !*(v109 + 2180) && !*(*a1 + 85780) && (!v684[68] || *(v10 + 772) == 1) && *(v10 + 328) == *(v10 + 344);
                  }

                  else
                  {
                    v686 = 0;
                    v687 = v1082;
                  }

                  v692 = *(v546 + 32);
                  v693 = *(v1037 + 64);
                  if (v684[77])
                  {
                    v694 = 1;
                  }

                  else
                  {
                    v694 = 3;
                  }

                  sub_27798E348(a1 + 86496, v684[28], *(v10 + 504) + 1248, 0, 0, 0, v694);
                  *(a1 + 643397) = 0;
                  *(a1 + 643392) = 0;
                  v695 = *(*(v1067 + 1576) + 77);
                  v696 = (v1067 + 352);
                  *(v692 + 40) = *(v1067 + 400);
                  v697 = (v692 + 16);
                  if (v695)
                  {
                    v698 = 1;
                  }

                  else
                  {
                    v698 = 3;
                  }

                  v699 = v698;
                  do
                  {
                    v700 = *v696++;
                    *v697++ = v700;
                    --v699;
                  }

                  while (v699);
                  v701 = v692 + 488 * v552 - 440;
                  v702 = v552;
                  do
                  {
                    v703 = v692 + 488 * (v702 - 1);
                    *v703 = v687;
                    *(v703 + 8) = v1143;
                    *(v703 + 72) = sub_2779D240C;
                    *(v703 + 80) = v686;
                    v704 = (v1067 + 376);
                    v705 = v701;
                    v706 = v698;
                    do
                    {
                      v707 = *v704++;
                      *v705++ = v707;
                      --v706;
                    }

                    while (v706);
                    v708 = (v693 + 56 * (v702 - 1));
                    v708[3] = sub_2779D26C4;
                    v708[4] = a1 + 643376;
                    v708[5] = v703;
                    v701 -= 488;
                    v237 = v702-- <= 1;
                  }

                  while (!v237);
                  v709 = v552 - 1;
                  v710 = (v693 + 56 * (v552 - 1));
                  v710[12] = 0;
                  do
                  {
                    sub_277985E48(v710, 2);
                    *(v710 - 2) = 0;
                    v710 -= 14;
                    --v709;
                  }

                  while (v709);
                  v711 = *(v693 + 24);
                  v547 = v685;
                  if (v711)
                  {
                    v712 = *(v693 + 48) | (v711(*(v693 + 32), *(v693 + 40)) == 0);
                    *(v693 + 48) = v712;
                  }

                  else
                  {
                    v712 = *(v693 + 48);
                  }

                  v713 = v712 == 0;
                  memset(__dst, 0, 404);
                  if (v712)
                  {
                    memcpy(__dst, (*(v693 + 40) + 84), 0x194uLL);
                  }

                  v714 = v693 - 56;
LABEL_1223:
                  v715 = v714 + 56 * v552;
                  do
                  {
                    v716 = v552 - 1;
                    sub_277985E48(v715, 1);
                    if (*(v715 + 48))
                    {
                      memcpy(__dst, (*(v715 + 40) + 84), 0x194uLL);
                      v713 = 0;
                      v237 = v552-- > 2;
                      if (v237)
                      {
                        goto LABEL_1223;
                      }

                      goto LABEL_1230;
                    }

                    v715 -= 56;
                    --v552;
                  }

                  while (v716 + 1 > 2);
                  if (v713)
                  {
                    goto LABEL_1231;
                  }

LABEL_1230:
                  sub_2779F5C78(*(v10 + 320), __dst);
LABEL_1231:
                  v9 = v1049;
                  v109 = v1067;
                }
              }

              goto LABEL_1232;
            }

            if (v553 <= 2)
            {
              v674 = 4;
            }

            else
            {
              v674 = 2;
            }

            if (v553 == 5)
            {
              v674 = 1;
            }

            while (1)
            {
              v675 = v672[16];
              v676 = *v672 / v674;
              v677 = *v672 % v674;
              if (v553 <= 2)
              {
                if (v553 == 1)
                {
                  *v672 = v677 + 4 * dword_277BC0E0C[v676];
                  if (v675 >= 0)
                  {
                    v683 = v675;
                  }

                  else
                  {
                    v683 = v675 + 3;
                  }

                  v678 = v675 - (v683 & 0xFFFFFFFC);
                  v679 = dword_277BC0E0C[v683 >> 2];
                  goto LABEL_1183;
                }

                if (v553 != 2)
                {
LABEL_1182:
                  *v672 = v677 + 4 * v676;
                  v679 = v675 / v674;
                  v678 = v675 % v674;
                  goto LABEL_1183;
                }

                *v672 = v677 + 4 * dword_277BC0E2C[v676];
                v678 = v675 - (v677 & 0xFFFFFFFC);
                v679 = dword_277BC0E2C[v675 / 4];
              }

              else
              {
                if (v553 == 3)
                {
                  *v672 = dword_277BC0E40[v677] + 4 * dword_277BC0E2C[v676];
                  v680 = v675;
                  v681 = v675 % 2;
                  v679 = dword_277BC0E2C[v680 / 2];
LABEL_1177:
                  v678 = dword_277BC0E40[v681];
                  goto LABEL_1183;
                }

                if (v553 == 4)
                {
                  *v672 = dword_277BC0E40[v677] + 4 * dword_277BC0E48[v676];
                  v682 = v675 / 2;
                  v681 = v675 % 2;
                  v679 = dword_277BC0E48[v682];
                  goto LABEL_1177;
                }

                if (v553 != 5)
                {
                  goto LABEL_1182;
                }

                v678 = 0;
                *v672 = 4 * dword_277BC0E50[v676];
                v679 = dword_277BC0E50[v675];
              }

LABEL_1183:
              v672[16] = v678 + 4 * v679;
              ++v672;
              if (!--v673)
              {
                goto LABEL_1184;
              }
            }
          }

LABEL_1063:
          sub_2779F5C10(*(v590 + 320), 2, "Failed to allocate cdef_search_ctx->mse[1]", v596);
          v596 = v570;
          goto LABEL_1064;
        }

LABEL_1062:
        *(v570 + 7952) = 0;
        goto LABEL_1063;
      }
    }

    else
    {
      v1076 = (v587 + 7960);
      *(v587 + 7960) = 0;
      v590 = v1148;
      v591 = v1037;
    }

    sub_2779F5C10(*(v590 + 320), 2, "Failed to allocate cdef_search_ctx->sb_index");
    v587 = v570;
    goto LABEL_1053;
  }

LABEL_1232:
  if ((v1024 & 0x200000000) == 0)
  {
    v717 = *(v10 + 328);
    if (v717 != *(v10 + 344))
    {
      v1091 = v547;
      v1134 = *(v546 + 1404);
      v718 = *(v109 + 1576);
      if (*(v718 + 77))
      {
        v719 = 1;
      }

      else
      {
        v719 = 3;
      }

      v1124 = v719;
      v720 = *(v10 + 784);
      memset(__dst, 0, 208);
      v721 = *(v10 + 504);
      v722 = v10;
      v723 = (v721 + 1400);
      v724 = v717 + 7;
      v725 = *(v722 + 332);
      v726 = *(v718 + 96);
      v727 = *(v718 + 100);
      v728 = *(v718 + 76);
      v729 = sub_27797ABB4(__dst);
      v1144 = v720;
      if (sub_27797AC44(__dst, v724 & 0xFFFFFFF8, v725, v726, v727, v728, 288, v720, v729, v730, v731, v732, 0, 0))
      {
        sub_2779F5C10(*(v722 + 320), 2, "Failed to allocate copy buffer for superres upscaling");
      }

      sub_277A48B90(v721 + 1248, __dst, v1124);
      *(&__dst[9] + 8) = *v723;
      __dst[10].i8[8] = *(v721 + 1416);
      *(&__dst[10].i64[1] + 4) = *(v721 + 1420);
      v733 = *(v722 + 344);
      v734 = *(v722 + 348);
      v735 = *(v718 + 96);
      v736 = *(v718 + 100);
      v737 = *(v718 + 76);
      v738 = sub_27797ABB4(v721 + 1248);
      if (sub_27797AC44(v721 + 1248, v733, v734, v735, v736, v737, 288, v1144, v738, v739, v740, v741, v1134, 0))
      {
        sub_2779F5C10(*(v722 + 320), 2, "Failed to reallocate current frame buffer for superres upscaling");
      }

      v742 = 0;
      *v723 = *(&__dst[9] + 8);
      *(v721 + 1416) = __dst[10].i8[8];
      *(v721 + 1420) = *(&__dst[10].i64[1] + 4);
      if (*(*(v1067 + 1576) + 77))
      {
        v743 = 1;
      }

      else
      {
        v743 = 3;
      }

      do
      {
        sub_2779F445C(v1082, __dst[2].i64[v742 + 1], __dst[2].u32[v742 != 0], *(v721 + 1288 + 8 * v742), *(v721 + 1280 + 4 * (v742 != 0)), v742, __dst[1].u32[(v742 != 0) + 2]);
        ++v742;
      }

      while (v743 != v742);
      sub_277A48A28(v721 + 1248, v743);
      *v105.i64 = sub_27797ABB4(__dst);
      v10 = v1148;
      v747 = *(v1148 + 344);
      v748 = *(v1148 + 348);
      if (v747 == *(v1148 + 336) && v748 == *(v1148 + 340))
      {
        v109 = v1067;
        *(v1067 + 3528) = *(v1067 + 3544);
        v9 = v1049;
        v547 = v1091;
        if (*(v1067 + 3536))
        {
          *(v1067 + 3536) = *(v1067 + 3760);
        }
      }

      else
      {
        v109 = v1067;
        v749 = *(v1067 + 1576);
        if (*(v749 + 77))
        {
          v750 = 1;
        }

        else
        {
          v750 = 3;
        }

        v751 = *(v1067 + 3544);
        v9 = v1049;
        v547 = v1091;
        if (*(v751 + 16) != v747 || *(v751 + 24) != v748)
        {
          v751 = a1 + 272288;
          if (sub_27797AC44(a1 + 272288, v747, v748, *(v749 + 96), *(v749 + 100), *(v749 + 76), 288, *(v1148 + 784), *v105.i64, v744, v745, v746, *(v1039 + 1404), 0))
          {
            sub_2779F5C10(*(v1148 + 320), 2, "Failed to reallocate scaled source buffer");
          }

          if (!sub_2779F4074(*(v1067 + 3544), v751, *(*(v1067 + 1576) + 72), v750, v752, v753, v754, v755, v756))
          {
            sub_2779F5C10(*(v1148 + 320), 2, "Failed to reallocate buffers during resize");
          }

          v109 = v1067;
        }

        *(v109 + 3528) = v751;
      }
    }
  }

  if (v547)
  {
    goto LABEL_1492;
  }

  v1016 = *(v1037 + 44);
  v757 = v1082;
  v758 = v109;
  sub_2779F8D3C(*(v10 + 504) + 1248, v1082, 1);
  v1046 = *(v758 + 3528);
  v759 = *(v758 + 1576);
  v760 = *(v759 + 77);
  v1125 = v759;
  v1145 = *(v759 + 76);
  v761 = *v1111;
  sub_2779F1B94(a1 + 133472, *v1111 + 12706, 0);
  sub_2779F1B94(a1 + 133484, v761 + 12714, 0);
  sub_2779F1B94(a1 + 133492, v761 + 12720, 0);
  v762 = 0;
  if (*(v9 + 2476) <= byte_277C3CAFE[*(*(v758 + 1576) + 28)])
  {
    v763 = byte_277C3CAFE[*(*(v758 + 1576) + 28)];
  }

  else
  {
    v763 = *(v9 + 2476);
  }

  v1062 = v1039 + 304;
  v1135 = v760;
  v764 = 3;
  v1018 = *(v9 + 2480);
  if (v760)
  {
    v764 = 1;
  }

  v1032 = v764;
  v1034 = v763;
  v765 = v763 >> 1;
  v766 = (v1036 + 4088);
  do
  {
    if (v762)
    {
      v767 = vtst_s32(*(*(v1067 + 1576) + 96), *(*(v1067 + 1576) + 96));
    }

    else
    {
      v767 = 0;
    }

    if ((v765 + ((*(v1148 + 344) + ((1 << (v767.i8[0] & 1)) >> 1)) >> (v767.i8[0] & 1))) / v1034 <= 1)
    {
      v769 = 1;
    }

    else
    {
      v769 = (v765 + ((*(v1148 + 344) + ((1 << (v767.i8[0] & 1)) >> 1)) >> (v767.i8[0] & 1))) / v1034;
    }

    v768 = (*(v1148 + 332) + ((1 << (v767.i8[4] & 1)) >> 1)) >> (v767.i8[4] & 1);
    if ((v765 + v768) / v1034 <= 1)
    {
      v770 = 1;
    }

    else
    {
      v770 = (v765 + v768) / v1034;
    }

    if (*v766)
    {
      free(*(*v766 - 8));
    }

    v771 = v770 * v769;
    v772 = (v770 * v769) << 6;
    if (v771 >> 27)
    {
      *v766 = 0;
      sub_2779F5C10(*(v1148 + 320), 2, "Failed to allocate rsi->unit_info");
LABEL_1287:
      sub_2779F5C10(*(v1148 + 320), 2, "Failed to allocate rusi");
      v776 = 0;
      goto LABEL_1288;
    }

    v773 = malloc_type_malloc(v772 | 0x17, 0x5F484EBFuLL);
    if (!v773)
    {
      *v766 = 0;
LABEL_1284:
      sub_2779F5C10(*(v1148 + 320), 2, "Failed to allocate rsi->unit_info");
      goto LABEL_1285;
    }

    v774 = (v773 + 23) & 0xFFFFFFFFFFFFFFF0;
    *(v774 - 8) = v773;
    *v766 = v774;
    if (!v774)
    {
      goto LABEL_1284;
    }

LABEL_1285:
    v775 = malloc_type_malloc(v772 | 0x17, 0x5F484EBFuLL);
    if (!v775)
    {
      goto LABEL_1287;
    }

    v776 = ((v775 + 23) & 0xFFFFFFFFFFFFFFF0);
    *(v776 - 1) = v775;
    if (!v776)
    {
      goto LABEL_1287;
    }

LABEL_1288:
    bzero(v776, v772);
    *(v1062 + 8 * v762++) = v776;
    v766 += 8;
  }

  while (v1032 != v762);
  *(a1 + 102984) = *v1049;
  v10 = v1148;
  if (sub_27797AC44(a1 + 273984, *(v1148 + 344), *(v1148 + 348), *(v1125 + 96), *(v1125 + 100), v1145, 32, *(v1148 + 784), v777, v778, v779, v780, 0, 0))
  {
    sub_2779F5C10(*(v1148 + 320), 2, "Failed to allocate trial restored frame buffer");
  }

  memset(__dst, 0, 304);
  v781 = vdupq_n_s64(v1032 - 1);
  v782 = vmovn_s64(vcgeq_u64(v781, xmmword_277BB70A0));
  if (vuzp1_s16(v782, *v781.i8).u8[0])
  {
    *(v1036 + 4064) = 0;
  }

  v783 = v1067;
  if (vuzp1_s16(v782, *&v781).i8[2])
  {
    *v1067 = 0;
  }

  v784 = vmovn_s64(vcgeq_u64(v781, xmmword_277BB7090));
  if (vuzp1_s16(v784, v784).i32[1])
  {
    *(v1067 + 64) = 0;
    *(v1067 + 128) = 0;
  }

  v785 = *(v1049 + 2472);
  if (v1135)
  {
    v786 = 0;
  }

  else
  {
    v786 = 2 * (*(v1049 + 2468) == 0);
  }

  v787 = *(v1049 + 2496);
  v788 = *(v1049 + 2497);
  v1149[0] = v787 & v788;
  v1149[1] = v787;
  v1149[2] = v788;
  v1149[3] = (v787 | v788) & 1;
  if (v786)
  {
    v789 = 1;
  }

  else
  {
    v789 = v785 == 0;
  }

  v790 = !v789;
  v1029 = v790;
  if (v789)
  {
    if (v785)
    {
      v791 = 162;
    }

    else
    {
      v791 = 161;
    }

    v792 = v786 - (v785 != 0) + 1;
    do
    {
      if (v791 == 161)
      {
        v793 = 0;
      }

      else
      {
        v793 = vtst_s32(*(*(v783 + 1576) + 96), *(*(v783 + 1576) + 96));
      }

      sub_2779F6A74(*(*(v1148 + 504) + 8 * v791), (*(v1148 + 344) + ((1 << (v793.i8[0] & 1)) >> 1)) >> (v793.i8[0] & 1), (*(v1148 + 332) + ((1 << (v793.i8[4] & 1)) >> 1)) >> (v793.i8[4] & 1), *(*(v1148 + 504) + 4 * (v791 != 161) + 1280), v1145);
      ++v791;
      --v792;
      v783 = v1067;
    }

    while (v792);
  }

  v794 = v1018;
  if (v1018 >= v1034)
  {
    v796 = a1;
    v1026 = v785 != 0;
    v1072 = a1 + 270396;
    v1058 = (v786 | 1);
    v1060 = a1 + 270656;
    v797 = 1.79769313e308;
    v798 = v1018;
    v799 = v1018;
    v795 = (v1036 + 4064);
    while (1)
    {
      v794 = v798;
      v1157 = 0;
      v1156 = 0;
      if (v1029)
      {
        v800 = 0;
        v801 = 0.0;
      }

      else
      {
        v1021 = v799;
        v1048 = v798;
        v800 = 0;
        v802 = 0;
        v803 = v1026;
        do
        {
          v1051 = v802;
          v1053 = v800;
          v1146 = &v795[16 * v803];
          sub_277AA5C80(v757, v1146, v803 != 0, v1048);
          v783 = v1067;
          v804 = *(v1062 + 8 * v803);
          __dst[0].i64[0] = v1046;
          __dst[0].i64[1] = a1 + 273984;
          __dst[1].i64[0] = v757;
          __dst[1].i64[1] = a1 + 86064;
          __dst[2].i32[0] = v803;
          __dst[3].i64[0] = v804;
          __dst[3].i64[1] = a1 + 396300;
          v805 = *(v1067 + 1576);
          if (v803)
          {
            v806 = vbic_s8(0x100000001, vceqz_s32(v805[12]));
          }

          else
          {
            v806 = 0;
          }

          v807 = *(v10 + 504);
          v808 = *(v10 + 344);
          v809 = *(v10 + 332);
          *(__dst[2].i64 + 4) = vshl_s32(vsra_n_u32(__PAIR64__(v809, v808), vshl_u32(0x100000001, v806), 1uLL), vneg_s32(v806));
          __dst[5].i64[0] = *(v1046 + 40 + 8 * v803);
          __dst[5].i32[2] = *(v1046 + 32 + 4 * (v803 != 0));
          __dst[4].i64[0] = *(v807 + 8 * v803 + 1288);
          __dst[4].i32[2] = *(v807 + 4 * (v803 != 0) + 1280);
          v1088 = v805[3].u8[4];
          v1095 = v805[4].i32[1];
          if (v803)
          {
            v810 = v805[12].i32[1] != 0;
            v811 = vtst_s32(v805[12], v805[12]);
          }

          else
          {
            v810 = 0;
            v811 = 0;
          }

          v813 = v1146[1];
          v812 = v1146[2];
          if (v812 <= 1)
          {
            v814 = 3;
          }

          else
          {
            v814 = 4;
          }

          v1136 = v814;
          memset(&__dst[8], 0, 64);
          v815 = *(v1067 + 1604);
          if (v815 >= 1)
          {
            v816 = 0;
            v817 = (v808 + ((1 << (v811.i8[0] & 1)) >> 1)) >> (v811.i8[0] & 1);
            v818 = 3 * v813 / 2;
            v1108 = (v809 + ((1 << (v811.i8[4] & 1)) >> 1)) >> (v811.i8[4] & 1);
            v1126 = 8u >> v810;
            v819 = *(v1067 + 1600);
            v1085 = v803;
            do
            {
              v820 = v816 + 1;
              if (v819 >= 1)
              {
                v821 = 0;
                v822 = *(v1060 + 4 * v816);
                v1064 = v820;
                v1074 = *(v1060 + 4 * v820);
                v1066 = v822;
                do
                {
                  v1077 = *(v1072 + 4 * v821++);
                  v1099 = *(v1072 + 4 * v821);
                  __dst[13].i64[0] = 0xFFEA000FFFF90003;
                  __dst[12].i64[0] = 0xFFEA000FFFF90003;
                  __dst[13].i16[4] = 15;
                  __dst[12].i16[4] = 15;
                  *(&__dst[13].i32[2] + 2) = 262137;
                  *(&__dst[12].i32[2] + 2) = 262137;
                  *(__dst[14].i64 + 4) = 0x1FFFFFFFE0;
                  __dst[16].i64[0] = 0xFFEA000FFFF90003;
                  __dst[15].i64[0] = 0xFFEA000FFFF90003;
                  __dst[16].i16[4] = 15;
                  __dst[15].i32[2] = -458737;
                  *(&__dst[16].i32[2] + 2) = 262137;
                  __dst[15].i16[6] = 3;
                  *(__dst[17].i64 + 4) = 0x1FFFFFFFE0;
                  if (v822 < v1074)
                  {
                    v1070 = v821;
                    v1080 = v822;
                    do
                    {
                      if (v1077 < v1099)
                      {
                        v823 = v1077;
                        do
                        {
                          v1151 = 0;
                          v1150 = 0;
                          if (sub_2779F8C28(v757, v803, v1080 << v1095, v823 << v1095, v1088, &v1151 + 1, &v1151, &v1150 + 1, &v1150))
                          {
                            v1104 = v823;
                            v824 = HIDWORD(v1150);
                            v1118 = v1150;
                            if (SHIDWORD(v1150) < v1150)
                            {
                              v1112 = HIDWORD(v1151);
                              v825 = v1151;
                              do
                              {
                                v826 = v824 * v813;
                                v827 = v1108 - v824 * v813;
                                if (v827 >= v818)
                                {
                                  v827 = v813;
                                }

                                v828 = v827 + v826;
                                HIDWORD(__src[0]) = v828;
                                DWORD2(__src[0]) = (v826 - v1126) & ~((v826 - v1126) >> 31);
                                if (v828 < v1108)
                                {
                                  HIDWORD(__src[0]) = v828 - v1126;
                                }

                                v829 = v1112;
                                if (v1112 < v825)
                                {
                                  do
                                  {
                                    v830 = v817 - v829 * v813;
                                    if (v830 >= v818)
                                    {
                                      v830 = v813;
                                    }

                                    LODWORD(__src[0]) = v829 * v813;
                                    DWORD1(__src[0]) = v830 + v829 * v813;
                                    v831 = v1136;
                                    v832 = (v829 + v1146[4] * v824);
                                    __dst[7].i8[8] = 0;
                                    v833 = v1149;
                                    v834 = &off_28866EA30;
                                    do
                                    {
                                      v835 = *v833++;
                                      if ((v835 & 1) == 0)
                                      {
                                        (*v834)(__src, v832, __dst, *(__dst[1].i64[0] + 23248), 0, *(v1148 + 320));
                                      }

                                      ++v834;
                                      --v831;
                                    }

                                    while (v831);
                                    ++v829;
                                  }

                                  while (v829 != v825);
                                }

                                ++v824;
                              }

                              while (v824 < v1118);
                            }

                            v757 = v1082;
                            v803 = v1085;
                            v823 = v1104;
                          }

                          ++v823;
                        }

                        while (v823 != v1099);
                      }

                      ++v1080;
                    }

                    while (v1080 != v1074);
                    v783 = v1067;
                    v819 = *(v1067 + 1600);
                    v821 = v1070;
                    v822 = v1066;
                  }
                }

                while (v821 < v819);
                v815 = *(v783 + 1604);
                v820 = v1064;
              }

              v816 = v820;
            }

            while (v820 < v815);
            v812 = v1146[2];
            v795 = (v1036 + 4064);
          }

          v836 = 0;
          if (v812 <= 1)
          {
            v837 = 3;
          }

          else
          {
            v837 = 4;
          }

          v838 = v1149;
          v839 = 1.79769313e308;
          v840 = &__dst[10];
          v10 = v1148;
          v796 = a1;
          do
          {
            v841 = *v838++;
            if ((v841 & 1) == 0)
            {
              v842 = (v840->i64[0] >> 4) * *(a1 + 102984) * 0.001953125 + (v840[-2].i64[0] >> (2 * *(*(v783 + 1576) + 72) - 16)) * 128.0;
              if (v842 < v839)
              {
                *(&v1156 + v803) = v836;
                v839 = v842;
              }
            }

            ++v836;
            v840 = (v840 + 8);
            --v837;
          }

          while (v837);
          v843 = *(&v1156 + v803);
          v802 = __dst[10].i64[v843] + v1051;
          v800 = __dst[8].i64[v843] + v1053;
          v803 = v803 + 1;
        }

        while (v803 != v1058);
        v801 = (v802 >> 4);
        v794 = v1048;
        v799 = v1021;
      }

      v844 = v801 * *(v796 + 102984) * 0.001953125 + (v800 >> (2 * *(*(v783 + 1576) + 72) - 16)) * 128.0;
      if (v844 >= v797)
      {
        v794 = v799;
        goto LABEL_1389;
      }

      if (v1029)
      {
        break;
      }

      v845 = 1;
      v846 = v1026;
      do
      {
        v847 = *(&v1156 + v846);
        v848 = &v795[16 * v846];
        *v848 = v847;
        if (v847)
        {
          v849 = v848[2];
          if (v849 >= 1)
          {
            v850 = 0;
            v851 = v847 - 1;
            v852 = v849 << 6;
            v853 = 4 * v851 + 44;
            do
            {
              v854 = *(v1062 + 8 * v846) + v850;
              v855 = *(v848 + 3);
              v856 = *(v854 + v853);
              *(v855 + v850) = v856;
              v857 = v855 + v850;
              if (v856 == 1)
              {
                v858 = *(v854 + 16);
                *(v857 + 16) = *v854;
                *(v857 + 32) = v858;
              }

              else
              {
                v859 = *(v854 + 32);
                *(v857 + 56) = *(v854 + 40);
                *(v857 + 48) = v859;
              }

              v850 += 64;
            }

            while (v852 != v850);
          }

          v845 = 0;
        }

        v846 = v846 + 1;
      }

      while (v846 != v1058);
      v798 = v794 >> 1;
      v799 = v794;
      v797 = v844;
      if (v845 & 1 | (v794 >> 1 < v1034))
      {
        goto LABEL_1389;
      }
    }

    v794 = v1018;
  }

  else
  {
    v795 = (v1036 + 4064);
  }

LABEL_1389:
  v860 = 0;
  v861 = v795;
  v862 = v1032;
  do
  {
    sub_277AA5C80(v757, v861, v860++ != 0, v794);
    v861 += 16;
  }

  while (v1032 != v860);
  v9 = v1049;
  v109 = v1067;
  v866 = v1016;
  v867 = (v1039 + 304);
  do
  {
    if (*v867)
    {
      free(*(*v867 - 8));
      v109 = v1067;
    }

    *v867++ = 0;
    --v862;
  }

  while (v862);
  if ((v1024 & 0x100000000) == 0 && (*v795 || *v109 || *(v109 + 64)))
  {
    v868 = *(v10 + 504);
    if (v1016 < 2)
    {
      if (*(*(v109 + 1576) + 77))
      {
        v921 = 1;
      }

      else
      {
        v921 = 3;
      }

      v922 = v1039;
      sub_2779F8860((v1039 + 112), v868 + 1248, v1082, v921, *v105.i64, v863, v864, v865);
      v923 = 0;
      v1109 = v921;
      do
      {
        v924 = &v795[16 * v923];
        if (*v924)
        {
          if (v923)
          {
            *v105.i8 = vtst_s32(*(*(v1067 + 1576) + 96), *(*(v1067 + 1576) + 96));
          }

          else
          {
            v105 = 0uLL;
          }

          v925 = (*(v1148 + 332) + ((1 << (v105.i8[4] & 1)) >> 1)) >> (v105.i8[4] & 1);
          if (v925 >= 1)
          {
            v926 = 0;
            v927 = *(v922 + 112);
            v928 = a1 + 643496 + 56 * v923;
            v930 = *(v1067 + 128);
            v929 = *(v1067 + 136);
            v931 = v924[3];
            v932 = v924[4];
            v933 = v924[1];
            v934 = v1148;
            v935 = 3 * v933 / 2;
            v936 = (*(v1148 + 344) + ((1 << (v105.i8[0] & 1)) >> 1)) >> (v105.i8[0] & 1);
            __dst[0].i64[0] = 0;
            if (v925 >= v935)
            {
              v937 = v933;
            }

            else
            {
              v937 = v925;
            }

            __dst[0].i32[3] = v937;
            __dst[0].i32[2] = 0;
            if (v937 < v925)
            {
              v926 = 0;
              v1113 = 8u >> (v105.i8[4] & 1);
              v1137 = v925;
              v1119 = v929;
              v1127 = v923;
              do
              {
                v1147 = v937 - v1113;
                __dst[0].i32[3] = v937 - v1113;
                v938 = v923;
                v939 = v928;
                sub_2779F8AA0(__dst, v936, v927, v926, v933, v932, v931, v938, v928, v930, v929, nullsub_2, nullsub_1, 0, *(v934 + 320));
                v934 = v1148;
                v928 = v939;
                v929 = v1119;
                v923 = v1127;
                v926 = (v926 + 1);
                v940 = v1137 - v937;
                if (v1137 - v937 >= v935)
                {
                  v940 = v933;
                }

                __dst[0].i64[0] = 0;
                v937 += v940;
                __dst[0].i32[3] = v937;
                __dst[0].i32[2] = v1147 & ~(v1147 >> 31);
              }

              while (v937 < v1137);
            }

            sub_2779F8AA0(__dst, v936, v927, v926, v933, v932, v931, v923, v928, v930, v929, nullsub_2, nullsub_1, 0, *(v934 + 320));
            v795 = (v1036 + 4064);
            v922 = v1039;
            v9 = v1049;
            v921 = v1109;
          }
        }

        ++v923;
      }

      while (v923 != v921);
      v941 = (v922 + 140);
      v942 = &off_28866DEC0;
      v10 = v1148;
      v109 = v1067;
      do
      {
        v943 = *v795;
        v795 += 16;
        if (v943)
        {
          (*v942)(*(v1039 + 296), *(v1039 + 288), 0, *(v941 - 1), 0, *v941);
          v109 = v1067;
        }

        ++v942;
        v941 += 14;
        --v921;
      }

      while (v921);
    }

    else
    {
      v869 = *(v1037 + 64);
      v870 = a1 + 643488;
      if (*(*(v109 + 1576) + 77))
      {
        v871 = 1;
      }

      else
      {
        v871 = 3;
      }

      sub_2779F8860((a1 + 643488), v868 + 1248, v1082, v871, *v105.i64, v863, v864, v865);
      v872 = 0;
      if (*(*(v1067 + 1576) + 77))
      {
        v873 = 1;
      }

      else
      {
        v873 = 3;
      }

      v874 = (v1039 + 140);
      v875 = (v1036 + 4068);
      v876 = v873;
      do
      {
        if (*(v875 - 1))
        {
          v877 = (*v874 + (*v875 >> 1)) / *v875;
          if (v877 <= v872)
          {
            v877 = v872;
          }

          if (v877 <= 1)
          {
            v872 = 1;
          }

          else
          {
            v872 = v877;
          }
        }

        v874 += 14;
        v875 += 16;
        --v876;
      }

      while (v876);
      v878 = a1 + 634936;
      if (!*(v1037 + 672) || v872 > *(v1037 + 676) || *(v1037 + 684) < v1016 || v873 > *(v1037 + 680))
      {
        sub_2779D1E04(a1 + 634936);
        sub_2779D19B4(v878, v1082, v1016, v872, v873);
      }

      *(v1037 + 720) = 0;
      v879 = (v1037 + 648);
      v880 = 4 * v872;
      do
      {
        v881 = *v879++;
        memset(v881, 255, v880);
        --v873;
      }

      while (v873);
      v882 = 0;
      v883 = *(v1067 + 1576);
      v884 = *(v883 + 77);
      v885 = v1036 + 4064;
      v886 = *(v1037 + 704);
      *(v1037 + 712) = 0;
      v162 = v884 == 0;
      v887 = 3;
      if (!v162)
      {
        v887 = 1;
      }

      v888 = (v1036 + 4064);
      v889 = v1039 + 120;
      v890 = v887;
      do
      {
        v891 = *v888;
        v888 += 16;
        if (v891)
        {
          v882 += (*(*v889 + 12) + 1) >> 1;
        }

        v889 += 56;
        --v890;
      }

      while (v890);
      v892 = 0;
      v893 = 0;
      __dst[0].i32[0] = 0;
      __dst[0].i32[1] = v882;
      do
      {
        if (*(v885 + (v893 << 6)))
        {
          v894 = v893 && *(v883 + 100) != 0;
          v895 = v1039 + 120 + 56 * v893;
          v896 = *(v895 + 20);
          if (v896 >= 1)
          {
            v897 = 0;
            v898 = 0;
            v899 = *v895;
            v900 = *(v899 + 4);
            v901 = 8u >> v894;
            do
            {
              v902 = v896 - v898;
              if (v896 - v898 >= 3 * v900 / 2)
              {
                v902 = v900;
              }

              v903 = v898 - v901;
              v898 += v902;
              v904 = v903 & ~(v903 >> 31);
              if (v898 >= v896)
              {
                v905 = 0;
              }

              else
              {
                v905 = v901;
              }

              v906 = __dst[0].i32[v897 & 1];
              v907 = (v886 + 28 * v906);
              v907[2] = v897;
              v907[3] = v893;
              v908 = v898 - v905;
              *v907 = v904;
              v907[1] = v908;
              v907[4] = v897 & 1;
              if (v897)
              {
                if (v903 <= 3)
                {
                  v903 = 3;
                }

                v911 = v903 - 3;
                v912 = v886 + 28 * v906;
                v913 = v908 + 3;
                if (v913 >= v896)
                {
                  v913 = v896;
                }

                *(v912 + 20) = v911;
                *(v912 + 24) = v913;
                v10 = v1148;
              }

              else
              {
                v909 = v886 + 28 * v906;
                *(v909 + 20) = v904 + 3;
                v910 = (v909 + 20);
                v910[1] = v908 - 3;
                if (!v897)
                {
                  *v910 = 0;
                }

                v10 = v1148;
                if (v897 == *(v899 + 12) - 1)
                {
                  v910[1] = v896;
                }
              }

              __dst[0].i32[v897 & 1] = v906 + 1;
              ++v892;
              ++v897;
            }

            while (v898 < v896);
            v885 = v1036 + 4064;
            *(v1037 + 712) = v892;
          }
        }

        ++v893;
      }

      while (v893 != v887);
      v914 = v1016 - 1;
      v915 = v869 + 56 * (v1016 - 1);
      v916 = *(v1037 + 696) + 432 * v1016 - 432;
      *(v916 + 16) = v870;
      *(v916 + 24) = 1;
      *(v915 + 24) = sub_2779D1FB4;
      *(v915 + 32) = v878;
      *(v915 + 40) = v916;
      *(v915 + 48) = 0;
      v917 = 432 * v1016;
      do
      {
        sub_277985E48(v915, 2);
        v918 = *(v1037 + 696) + v917;
        *(v918 - 848) = v870;
        *(v918 - 840) = 1;
        *(v915 - 32) = sub_2779D1FB4;
        *(v915 - 24) = v878;
        *(v915 - 16) = v918 - 864;
        *(v915 - 8) = 0;
        v915 -= 56;
        v917 -= 432;
        --v914;
      }

      while (v914);
      v919 = *(v869 + 24);
      if (v919)
      {
        v920 = *(v869 + 48) | (v919(*(v869 + 32), *(v869 + 40)) == 0);
        *(v869 + 48) = v920;
      }

      else
      {
        v920 = *(v869 + 48);
      }

      v944 = v920 == 0;
      memset(__dst, 0, 404);
      if (v920)
      {
        memcpy(__dst, (*(v869 + 40) + 28), 0x194uLL);
      }

LABEL_1483:
      v945 = v869 - 56 + 56 * v866;
      do
      {
        v946 = v866 - 1;
        sub_277985E48(v945, 1);
        if (*(v945 + 48))
        {
          memcpy(__dst, (*(v945 + 40) + 28), 0x194uLL);
          v944 = 0;
          v237 = v866-- > 2;
          if (v237)
          {
            goto LABEL_1483;
          }

          goto LABEL_1490;
        }

        v945 -= 56;
        --v866;
      }

      while (v946 + 1 > 2);
      if (v944)
      {
        goto LABEL_1491;
      }

LABEL_1490:
      sub_2779F5C78(*(v10 + 320), __dst);
LABEL_1491:
      v9 = v1049;
      v109 = v1067;
    }
  }

LABEL_1492:
  if (*(v109 + 3472) != 2 && !*(*a1 + 85780))
  {
    v948 = 0;
    v949 = 268672;
    do
    {
      if (*(v1037 + 40) < 2 || (v950 = *(v109 + 1576), !v950[67]) || (*(v10 + 771) & 1) != 0 || *(v109 + 2180) || *(*a1 + 85780) || v950[68] && *(v10 + 772) != 1 || *(v10 + 328) != *(v10 + 344))
      {
        if (*(v1037 + 44) < 2 || (v950 = *(v109 + 1576), !v950[68]) || (*(v10 + 772) & 1) != 0 || *(v109 + 2180) || !*(a1 + v949))
        {
          sub_277A4848C(*(v10 + 504) + 1248, v948, 0, *(*(v10 + 504) + 4 * (v948 != 0) + 1272));
          v109 = v1067;
          v950 = *(v1067 + 1576);
        }
      }

      if (v950[77])
      {
        v951 = 1;
      }

      else
      {
        v951 = v948 >= 2;
      }

      ++v948;
      v949 += 64;
    }

    while (!v951);
  }

  if (*(v109 + 3260) == 2)
  {
    *(v109 + 616) = 0x100000001;
    *(v1067 + 1260) = rand();
    *(v1067 + 736) = 1;
    *(v1067 + 624) = 0x6400000080;
    if (*(*(v1067 + 1576) + 77))
    {
      v947 = 0;
    }

    else
    {
      *(v1067 + 740) = 0x6400000080;
      *(v1067 + 824) = 0x6400000080;
      v947 = 1;
    }

    *(v1067 + 820) = v947;
    *(v1067 + 904) = v947;
    *(v1067 + 908) = 1;
    *(v1067 + 1212) = 1;
    *(v1067 + 1240) = 1;
    v105 = 0uLL;
    *(v1067 + 1252) = 0;
  }

  sub_277BA5128(a1, v105);
  *(v9 + 1224) = 0;
  if (sub_277A06350(a1, v1030, v1035, v1027, v952, v953, v954, v955))
  {
    return 1;
  }

  v961 = v1067;
  if (*(v9 + 1380))
  {
    if (!*(v1067 + 3444) && !*(*a1 + 23172) && *(v1067 + 3472) == 1 && !*(v1067 + 2672) && *(v1067 + 2556) == 1 && *(v1067 + 2532) >= 1 && !*(v9 + 1460) && (v1082->i8[0] & 0xFD) != 0 && !*(v1039 + 416))
    {
      v1007 = sub_277A5CD00(a1, v1035);
      v961 = v1067;
      if (v1007)
      {
        return 0;
      }
    }
  }

  if (v1022)
  {
    v962 = *(v961 + 3528);
    v963 = *(v10 + 504);
    v964 = *(v962 + 40);
    v965 = *(v962 + 32);
    v966 = *(v963 + 1288);
    v967 = *(v963 + 1280);
    v968 = *(v962 + 16);
    v969 = *(v962 + 24);
    if (*(v1019 + 76))
    {
      v970 = sub_277A2BAE0(v964, v965, v966, v967, v968, v969, v956, v957, v958, v959, v960);
    }

    else
    {
      v970 = sub_277A2B70C(v964, v965, v966, v967, v968, v969);
    }

    *v1022 = v970;
    v961 = v1067;
  }

  if (v1023)
  {
    *v1023 = *v1035 << 8;
  }

  if (!*(v1039 + 1232))
  {
    return 0;
  }

  memset(__dst, 0, 160);
  sub_277A2C130(*(v961 + 3528), *(v10 + 504) + 1248, __dst);
  result = 0;
  *(v1039 + 1280) = *(*(v10 + 504) + 36);
  *(v1039 + 1284) = *(v10 + 888);
  *(v1039 + 1288) = *v9;
  *(v1039 + 1292) = 8 * *v1035;
  *(v1039 + 1296) = __dst[2].i64[0];
  *(v1039 + 1304) = __dst[0].i64[0];
  return result;
}