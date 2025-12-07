uint64_t MTLGetUnpackFloatFunction::$_4::__invoke(MTLGetUnpackFloatFunction::$_4 *this, float32x4_t *a2, float *a3)
{
  v3.i64[0] = *this;
  v3.i64[1] = 0x7FFF00000000;
  __asm { FMOV            V1.4S, #-1.0 }

  *a2 = vmaxnmq_f32(vmulq_f32(vcvtq_f32_s32(v3), vdupq_n_s32(0x38000100u)), _Q1);
  return 2;
}

uint64_t MTLGetUnpackFloatFunction::$_5::__invoke(MTLGetUnpackFloatFunction::$_5 *this, float32x4_t *a2, float *a3)
{
  v3.i32[0] = *this;
  v3.i32[1] = 1006632960;
  *a2 = vcvtq_f32_f16(v3);
  return 2;
}

uint64_t MTLGetUnpackFloatFunction::$_6::__invoke(MTLGetUnpackFloatFunction::$_6 *this, float32x4_t *a2, float *a3)
{
  v3.i32[0] = *this;
  v3.i32[1] = *(this + 1);
  v3.i64[1] = 0xFF00000000;
  *a2 = vmulq_f32(vcvtq_f32_u32(v3), vdupq_n_s32(0x3B808081u));
  return 2;
}

uint64_t MTLGetUnpackFloatFunction::$_7::__invoke(MTLGetUnpackFloatFunction::$_7 *this, float32x4_t *a2, float *a3)
{
  v3.i32[0] = *this;
  v3.i32[1] = *(this + 1);
  v3.i64[1] = 0x7F00000000;
  __asm { FMOV            V1.4S, #-1.0 }

  *a2 = vmaxnmq_f32(vmulq_f32(vcvtq_f32_s32(v3), vdupq_n_s32(0x3C010204u)), _Q1);
  return 2;
}

uint64_t MTLGetUnpackFloatFunction::$_8::__invoke(MTLGetUnpackFloatFunction::$_8 *this, int8x16_t *a2, float *a3, double a4, int8x8_t a5)
{
  a5.i16[0] = *this;
  a5.i16[1] = *this >> 5;
  a5.i16[2] = *this >> 10;
  v5 = vand_s8(a5, 0x1F001F001F001FLL);
  v5.i16[3] = vshr_n_u16(vdup_n_s16(*this), 0xFuLL).i16[3];
  v6 = vrev64q_s32(vmulq_f32(vcvtq_f32_u32(vmovl_u16(v5)), xmmword_185DC5080));
  *a2 = vextq_s8(v6, v6, 0xCuLL);
  return 2;
}

uint64_t MTLGetUnpackFloatFunction::$_9::__invoke(MTLGetUnpackFloatFunction::$_9 *this, _OWORD *a2, float *a3)
{
  *&v3 = *this;
  *(&v3 + 1) = 0x3F80000000000000;
  *a2 = v3;
  return 4;
}

uint64_t MTLGetUnpackFloatFunction::$_10::__invoke(MTLGetUnpackFloatFunction::$_10 *this, float32x4_t *a2, float *a3)
{
  v3.i32[0] = *this;
  v3.i32[1] = *(this + 1);
  v3.i64[1] = 0xFFFF00000000;
  *a2 = vmulq_f32(vcvtq_f32_u32(v3), vdupq_n_s32(0x37800080u));
  return 4;
}

uint64_t MTLGetUnpackFloatFunction::$_11::__invoke(MTLGetUnpackFloatFunction::$_11 *this, float32x4_t *a2, float *a3)
{
  v3.i32[0] = *this;
  v3.i32[1] = *(this + 1);
  v3.i64[1] = 0x7FFF00000000;
  __asm { FMOV            V1.4S, #-1.0 }

  *a2 = vmaxnmq_f32(vmulq_f32(vcvtq_f32_s32(v3), vdupq_n_s32(0x38000100u)), _Q1);
  return 4;
}

uint64_t MTLGetUnpackFloatFunction::$_12::__invoke(MTLGetUnpackFloatFunction::$_12 *this, float32x4_t *a2, float *a3)
{
  v3.i32[0] = *this;
  v3.i32[1] = 1006632960;
  *a2 = vcvtq_f32_f16(v3);
  return 4;
}

uint64_t MTLGetUnpackFloatFunction::$_13::__invoke(MTLGetUnpackFloatFunction::$_13 *this, float32x4_t *a2, float *a3, uint8x8_t a4)
{
  a4.i32[0] = *this;
  *a2 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(a4))), vdupq_n_s32(0x3B808081u));
  return 4;
}

uint64_t MTLGetUnpackFloatFunction::$_14::__invoke(MTLGetUnpackFloatFunction::$_14 *this, _OWORD *a2, float *a3, double a4, float a5)
{
  LODWORD(v5) = Gamma::kGamma[2 * *this + 384];
  LOBYTE(a5) = *(this + 3);
  DWORD1(v5) = Gamma::kGamma[2 * *(this + 1) + 384];
  DWORD2(v5) = Gamma::kGamma[2 * *(this + 2) + 384];
  *(&v5 + 3) = LODWORD(a5) * 0.0039216;
  *a2 = v5;
  return 4;
}

uint64_t MTLGetUnpackFloatFunction::$_15::__invoke(MTLGetUnpackFloatFunction::$_15 *this, float32x4_t *a2, float *a3, int8x8_t a4)
{
  a4.i32[0] = *this;
  __asm { FMOV            V1.4S, #-1.0 }

  *a2 = vmaxnmq_f32(vmulq_f32(vcvtq_f32_s32(vmovl_s16(*&vmovl_s8(a4))), vdupq_n_s32(0x3C010204u)), _Q1);
  return 4;
}

uint64_t MTLGetUnpackFloatFunction::$_16::__invoke(MTLGetUnpackFloatFunction::$_16 *this, int8x16_t *a2, float *a3, uint8x8_t a4)
{
  a4.i32[0] = *this;
  v4 = vrev64q_s32(vmulq_f32(vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(a4))), vdupq_n_s32(0x3B808081u)));
  *a2 = vextq_s8(v4, v4, 0xCuLL);
  return 4;
}

uint64_t MTLGetUnpackFloatFunction::$_17::__invoke(MTLGetUnpackFloatFunction::$_17 *this, _OWORD *a2, float *a3, double a4, float a5)
{
  LODWORD(v5) = Gamma::kGamma[2 * *(this + 2) + 384];
  LOBYTE(a5) = *(this + 3);
  DWORD1(v5) = Gamma::kGamma[2 * *(this + 1) + 384];
  DWORD2(v5) = Gamma::kGamma[2 * *this + 384];
  *(&v5 + 3) = LODWORD(a5) * 0.0039216;
  *a2 = v5;
  return 4;
}

uint64_t MTLGetUnpackFloatFunction::$_18::__invoke(MTLGetUnpackFloatFunction::$_18 *this, float32x4_t *a2, float *a3, double a4, int8x16_t a5)
{
  a5.i32[0] = *this;
  a5.i32[1] = *this >> 10;
  a5.i32[2] = *this >> 20;
  v5.i64[0] = 0x300000003;
  v5.i64[1] = 0x300000003;
  v6 = vandq_s8(a5, v5);
  v6.i32[3] = vshrq_n_u32(vdupq_n_s32(*this), 0x1EuLL).i32[3];
  *a2 = vmulq_f32(vcvtq_f32_u32(v6), xmmword_185DC5090);
  return 4;
}

uint64_t MTLGetUnpackFloatFunction::$_19::__invoke(MTLGetUnpackFloatFunction::$_19 *this, float32x4_t *a2, float *a3)
{
  v3 = vdup_n_s16(0x1E0u);
  v3.i16[0] = *this & 0x7FF;
  v3.i16[1] = (*this >> 11) & 0x7FF;
  v3.i16[2] = *this >> 22;
  *a2 = vcvtq_f32_f16(vshl_u16(v3, 0x5000500040004));
  return 4;
}

uint64_t MTLGetUnpackFloatFunction::$_20::__invoke(MTLGetUnpackFloatFunction::$_20 *this, float32x4_t *a2, float *a3, uint32x4_t a4)
{
  a4.i32[0] = *this;
  a4.i32[1] = *this >> 9;
  *a4.i8 = vand_s8(*a4.i8, 0x100000001);
  a4.i32[2] = (*this >> 18) & 0x1FF;
  v4 = vmulq_f32(vdupq_n_s32((*this >> 27 << 23) + 864026624), vcvtq_f32_u32(a4));
  v4.i32[3] = 1.0;
  *a2 = v4;
  return 4;
}

uint64_t MTLGetUnpackFloatFunction::$_21::__invoke(MTLGetUnpackFloatFunction::$_21 *this, int8x16_t *a2, float *a3, double a4, int8x16_t a5)
{
  a5.i32[0] = *this;
  a5.i32[1] = *this >> 10;
  a5.i32[2] = *this >> 20;
  v5.i64[0] = 0x300000003;
  v5.i64[1] = 0x300000003;
  v6 = vandq_s8(a5, v5);
  v6.i32[3] = vshrq_n_u32(vdupq_n_s32(*this), 0x1EuLL).i32[3];
  v7 = vrev64q_s32(vmulq_f32(vcvtq_f32_u32(v6), xmmword_185DC5090));
  *a2 = vextq_s8(v7, v7, 0xCuLL);
  return 4;
}

uint64_t MTLGetUnpackFloatFunction::$_22::__invoke(MTLGetUnpackFloatFunction::$_22 *this, _OWORD *a2, float *a3)
{
  *&v3 = *this;
  *(&v3 + 1) = 0x3F80000000000000;
  *a2 = v3;
  return 8;
}

uint64_t MTLGetUnpackFloatFunction::$_24::__invoke(int16x4_t *this, float32x4_t *a2, float *a3)
{
  __asm { FMOV            V1.4S, #-1.0 }

  *a2 = vmaxnmq_f32(vmulq_f32(vcvtq_f32_s32(vmovl_s16(*this)), vdupq_n_s32(0x38000100u)), _Q1);
  return 8;
}

uint64_t MTLGetUnpackFloatFunction::$_27::__invoke(MTLGetUnpackFloatFunction::$_27 *this, float32x4_t *a2, float *a3, uint8x8_t a4)
{
  a4.i32[0] = *this;
  v4 = vmovl_u8(a4);
  v4.i16[3] = 255;
  *a2 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*v4.i8)), vdupq_n_s32(0x3B808081u));
  return 4;
}

uint64_t MTLGetUnpackFloatFunction::$_28::__invoke(MTLGetUnpackFloatFunction::$_28 *this, _OWORD *a2, float *a3)
{
  __asm { FMOV            V0.4S, #1.0 }

  LODWORD(_Q0) = Gamma::kGamma[2 * *this + 384];
  DWORD1(_Q0) = Gamma::kGamma[2 * *(this + 1) + 384];
  DWORD2(_Q0) = Gamma::kGamma[2 * *(this + 2) + 384];
  *a2 = _Q0;
  return 4;
}

uint64_t MTLGetUnpackFloatFunction::$_29::__invoke(MTLGetUnpackFloatFunction::$_29 *this, float32x4_t *a2, float *a3, uint8x8_t a4)
{
  a4.i32[0] = *this;
  v4 = vmovl_u8(a4);
  v4.i16[3] = 127;
  __asm { FMOV            V1.4S, #-1.0 }

  *a2 = vmaxnmq_f32(vmulq_f32(vcvtq_f32_s32(vmovl_s16(vshr_n_s16(vshl_n_s16(*v4.i8, 8uLL), 8uLL))), vdupq_n_s32(0x3C010204u)), _Q1);
  return 4;
}

uint64_t MTLGetUnpackFloatFunction::$_30::__invoke(float16x4_t *this, float32x4_t *a2, float *a3)
{
  v3 = *this;
  v3.i16[3] = 15360;
  *a2 = vcvtq_f32_f16(v3);
  return 8;
}

uint64_t MTLGetUnpackFloatFunction::$_31::__invoke(MTLGetUnpackFloatFunction::$_31 *this, _OWORD *a2, float *a3)
{
  v3 = *this;
  HIDWORD(v3) = 1065353216;
  *a2 = v3;
  return 16;
}

uint64_t MTLGetUnpackFloatFunction::$_32::__invoke(float16x4_t *this, float32x4_t *a2, float *a3)
{
  v3 = vcvtq_f32_f16(*this);
  *a2 = vminnmq_f32(vmaxnmq_f32(vandq_s8(v3, vceqq_f32(v3, v3)), xmmword_185DC50A0), xmmword_185DC50B0);
  return 8;
}

uint64_t MTLGetUnpackFloatFunction::$_33::__invoke(MTLGetUnpackFloatFunction::$_33 *this, _OWORD *a2, float *a3)
{
  *&v3 = Gamma::kGamma[2 * *this + 384];
  DWORD2(v3) = 0;
  HIDWORD(v3) = 1.0;
  *a2 = v3;
  return 1;
}

uint64_t MTLGetUnpackFloatFunction::$_34::__invoke(MTLGetUnpackFloatFunction::$_34 *this, _OWORD *a2, float *a3)
{
  LODWORD(v3) = Gamma::kGamma[2 * *this + 384];
  DWORD1(v3) = Gamma::kGamma[2 * *(this + 1) + 384];
  DWORD2(v3) = 0;
  HIDWORD(v3) = 1.0;
  *a2 = v3;
  return 2;
}

uint64_t MTLGetUnpackFloatFunction::$_35::__invoke(MTLGetUnpackFloatFunction::$_35 *this, float32x4_t *a2, float *a3)
{
  v3 = *this;
  v4.i32[3] = 31;
  v4.i32[0] = v3 >> 11;
  v4.i32[1] = (v3 >> 5) & 0x3F;
  v4.i32[2] = v3 & 0x1F;
  *a2 = vmulq_f32(vcvtq_f32_u32(v4), xmmword_185DC50C0);
  return 2;
}

uint64_t MTLGetUnpackFloatFunction::$_36::__invoke(MTLGetUnpackFloatFunction::$_36 *this, int8x16_t *a2, float *a3, double a4, int8x8_t a5)
{
  a5.i16[0] = *this;
  a5.i16[1] = *this >> 1;
  a5.i16[2] = *this >> 6;
  v5 = vand_s8(a5, 0x1F001F0001);
  v5.i16[3] = vshr_n_u16(vdup_n_s16(*this), 0xBuLL).i16[3];
  v6 = vrev64q_s32(vmulq_f32(vcvtq_f32_u32(vmovl_u16(v5)), xmmword_185DC50D0));
  *a2 = vextq_s8(v6, v6, 8uLL);
  return 2;
}

uint64_t MTLGetUnpackFloatFunction::$_37::__invoke(MTLGetUnpackFloatFunction::$_37 *this, int8x16_t *a2, float *a3, double a4, int8x8_t a5)
{
  a5.i16[0] = *this;
  a5.i16[1] = *this >> 4;
  a5.i16[2] = HIBYTE(*this);
  v5 = vand_s8(a5, 0xF000F000F000FLL);
  v5.i16[3] = vshr_n_u16(vdup_n_s16(*this), 0xCuLL).i16[3];
  v6 = vrev64q_s32(vmulq_f32(vcvtq_f32_u32(vmovl_u16(v5)), vdupq_n_s32(0x3D888889u)));
  *a2 = vextq_s8(v6, v6, 8uLL);
  return 2;
}

uint64_t MTLGetUnpackFloatFunction::$_38::__invoke(MTLGetUnpackFloatFunction::$_38 *this, int8x16_t *a2, float *a3)
{
  v3 = vdupq_n_s32(0x37Eu);
  v3.i32[0] = *this & 0x3FF;
  v3.i32[1] = (*this >> 10) & 0x3FF;
  v3.i32[2] = (*this >> 20) & 0x3FF;
  v4 = vrev64q_s32(vmulq_f32(vcvtq_f32_s32(vaddq_s32(v3, vdupq_n_s32(0xFFFFFE80))), vdupq_n_s32(0x3B008081u)));
  *a2 = vextq_s8(v4, v4, 0xCuLL);
  return 4;
}

uint64_t MTLGetUnpackFloatFunction::$_39::__invoke(MTLGetUnpackFloatFunction::$_39 *this, _OWORD *a2, float *a3)
{
  v3 = *this;
  __asm { FMOV            V0.4S, #1.0 }

  LODWORD(_Q0) = Gamma::kGamma[(v3 >> 20) & 0x3FF];
  DWORD1(_Q0) = Gamma::kGamma[(v3 >> 10) & 0x3FF];
  DWORD2(_Q0) = Gamma::kGamma[v3 & 0x3FF];
  *a2 = _Q0;
  return 4;
}

uint64_t MTLGetUnpackFloatFunction::$_40::__invoke(uint16x4_t *this, int8x16_t *a2, float *a3)
{
  v3 = vmulq_f32(vcvtq_f32_s32(vmovl_s16(vsra_n_u16(vdup_n_s16(0xFE80u), *this, 6uLL))), vdupq_n_s32(0x3B008081u));
  v3.i32[3] = fminf(fmaxf(*&v3.i32[3], 0.0), 1.0);
  v4 = vrev64q_s32(v3);
  *a2 = vextq_s8(v4, v4, 0xCuLL);
  return 8;
}

uint64_t MTLGetUnpackFloatFunction::$_41::__invoke(uint16x4_t *this, _OWORD *a2, float *a3)
{
  v3 = vmovl_u16(vshr_n_u16(*this, 6uLL));
  LODWORD(v4) = Gamma::kGamma[v3.u32[2]];
  DWORD1(v4) = Gamma::kGamma[v3.u32[1]];
  DWORD2(v4) = Gamma::kGamma[v3.u32[0]];
  HIDWORD(v4) = fminf(fmaxf((v3.i32[3] - 384) * 0.0019608, 0.0), 1.0);
  *a2 = v4;
  return 8;
}

uint64_t MTLGetUnpackFloatFunction::$_42::__invoke(MTLGetUnpackFloatFunction::$_42 *this, int8x16_t *a2, float *a3, double a4, int8x8_t a5)
{
  a5.i16[0] = *this;
  a5.i16[1] = *this >> 4;
  a5.i16[2] = HIBYTE(*this);
  v5 = vand_s8(a5, 0xF000F000F000FLL);
  v5.i16[3] = vshr_n_u16(vdup_n_s16(*this), 0xCuLL).i16[3];
  v6 = vrev64q_s32(vmulq_f32(vcvtq_f32_u32(vmovl_u16(v5)), vdupq_n_s32(0x3D888889u)));
  *a2 = vextq_s8(v6, v6, 0xCuLL);
  return 2;
}

uint64_t MTLGetUnpackFloatFunction::$_43::__invoke(MTLGetUnpackFloatFunction::$_43 *this, int8x16_t *a2, float *a3, uint8x8_t a4)
{
  a4.i32[0] = *this;
  v4 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(a4))), vdupq_n_s32(0x3B808081u));
  *a2 = vextq_s8(v4, v4, 4uLL);
  return 4;
}

uint64_t MTLGetUnpackFloatFunction::$_44::__invoke(MTLGetUnpackFloatFunction::$_44 *this, _OWORD *a2, float *a3, double a4, float a5)
{
  LODWORD(v5) = Gamma::kGamma[2 * *(this + 1) + 384];
  LOBYTE(a5) = *this;
  DWORD1(v5) = Gamma::kGamma[2 * *(this + 2) + 384];
  DWORD2(v5) = Gamma::kGamma[2 * *(this + 3) + 384];
  *(&v5 + 3) = LODWORD(a5) * 0.0039216;
  *a2 = v5;
  return 4;
}

uint64_t MTLGetUnpackFloatFunction::$_45::__invoke(MTLGetUnpackFloatFunction::$_45 *this, _OWORD *a2, float *a3)
{
  *&v3 = *this << 16;
  *(&v3 + 1) = 0x3F80000000000000;
  *a2 = v3;
  return 2;
}

uint64_t MTLGetUnpackFloatFunction::$_46::__invoke(MTLGetUnpackFloatFunction::$_46 *this, int32x4_t *a2, float *a3, int32x4_t a4)
{
  a4.i32[0] = *this;
  a4.i16[2] = *(this + 1);
  a4.i64[1] = 0x3F8000000000;
  *a2 = vshlq_n_s32(a4, 0x10uLL);
  return 4;
}

uint64_t MTLGetPackUintFunction::$_0::__invoke(MTLGetPackUintFunction::$_0 *this, unsigned int *a2, void *a3, uint32x4_t a4)
{
  a4.i32[0] = *this;
  *a2 = vminq_u32(a4, xmmword_185DC50E0).u8[0];
  return 1;
}

uint64_t MTLGetPackUintFunction::$_1::__invoke(MTLGetPackUintFunction::$_1 *this, unsigned int *a2, void *a3, uint32x4_t a4)
{
  a4.i64[0] = *this;
  v4 = vminq_u32(a4, xmmword_185DC50F0).u64[0];
  *(a2 + 1) = BYTE4(v4);
  *a2 = v4;
  return 2;
}

uint64_t MTLGetPackUintFunction::$_2::__invoke(uint32x4_t *this, unsigned int *a2, void *a3)
{
  v3 = vmovn_s32(vminq_u32(*this, xmmword_185DC5100));
  *a2 = vuzp1_s8(v3, v3).u32[0];
  return 4;
}

uint64_t MTLGetPackUintFunction::$_3::__invoke(uint32x4_t *this, unsigned int *a2, void *a3)
{
  v3.i64[0] = 0xFF000000FFLL;
  v3.i64[1] = 0xFF000000FFLL;
  v4 = vmovn_s32(vminq_u32(*this, v3));
  *a2 = vuzp1_s8(v4, v4).u32[0];
  return 4;
}

uint64_t MTLGetPackUintFunction::$_4::__invoke(MTLGetPackUintFunction::$_4 *this, unsigned int *a2, void *a3, uint32x4_t a4)
{
  a4.i32[0] = *this;
  *a2 = vminq_u32(a4, xmmword_185DC5110).u16[0];
  return 2;
}

uint64_t MTLGetPackUintFunction::$_5::__invoke(MTLGetPackUintFunction::$_5 *this, unsigned int *a2, void *a3, uint32x4_t a4)
{
  a4.i64[0] = *this;
  v4 = vminq_u32(a4, xmmword_185DC5120).u64[0];
  *(a2 + 1) = WORD2(v4);
  *a2 = v4;
  return 4;
}

uint64_t MTLGetPackUintFunction::$_12::__invoke(uint32x4_t *this, unsigned int *a2, void *a3)
{
  v3 = vminq_u32(*this, xmmword_185DC5150);
  v4 = v3.i32[1];
  v5 = v3.i32[0];
  *v3.i8 = vshl_u32(*&vextq_s8(v3, v3, 8uLL), 0x1E00000014);
  *a2 = v5 | (v4 << 10) | v3.i32[0] | v3.i32[1];
  return 4;
}

uint64_t MTLGetUnpackUintFunction::$_0::__invoke(MTLGetUnpackUintFunction::$_0 *this, _OWORD *a2, unsigned int *a3)
{
  *&v3 = *this;
  *(&v3 + 1) = 0x100000000;
  *a2 = v3;
  return 1;
}

uint64_t MTLGetUnpackUintFunction::$_1::__invoke(MTLGetUnpackUintFunction::$_1 *this, _OWORD *a2, unsigned int *a3)
{
  LODWORD(v3) = *this;
  DWORD1(v3) = *(this + 1);
  *(&v3 + 1) = 0x100000000;
  *a2 = v3;
  return 2;
}

uint64_t MTLGetUnpackUintFunction::$_2::__invoke(MTLGetUnpackUintFunction::$_2 *this, uint32x4_t *a2, unsigned int *a3, uint8x8_t a4)
{
  a4.i32[0] = *this;
  v4 = vmovl_u8(a4);
  v4.i16[3] = 1;
  *a2 = vmovl_u16(*v4.i8);
  return 4;
}

uint64_t MTLGetUnpackUintFunction::$_3::__invoke(MTLGetUnpackUintFunction::$_3 *this, uint32x4_t *a2, unsigned int *a3, uint8x8_t a4)
{
  a4.i32[0] = *this;
  *a2 = vmovl_u16(*&vmovl_u8(a4));
  return 4;
}

uint64_t MTLGetUnpackUintFunction::$_4::__invoke(MTLGetUnpackUintFunction::$_4 *this, _OWORD *a2, unsigned int *a3)
{
  *&v3 = *this;
  *(&v3 + 1) = 0x100000000;
  *a2 = v3;
  return 2;
}

uint64_t MTLGetUnpackUintFunction::$_5::__invoke(MTLGetUnpackUintFunction::$_5 *this, _OWORD *a2, unsigned int *a3)
{
  LODWORD(v3) = *this;
  DWORD1(v3) = *(this + 1);
  *(&v3 + 1) = 0x100000000;
  *a2 = v3;
  return 4;
}

uint64_t MTLGetUnpackUintFunction::$_6::__invoke(uint16x4_t *this, uint32x4_t *a2, unsigned int *a3)
{
  v3 = *this;
  v3.i16[3] = 1;
  *a2 = vmovl_u16(v3);
  return 8;
}

uint64_t MTLGetUnpackUintFunction::$_8::__invoke(MTLGetUnpackUintFunction::$_8 *this, _OWORD *a2, unsigned int *a3)
{
  *&v3 = *this;
  *(&v3 + 1) = 0x100000000;
  *a2 = v3;
  return 4;
}

uint64_t MTLGetUnpackUintFunction::$_9::__invoke(MTLGetUnpackUintFunction::$_9 *this, _OWORD *a2, unsigned int *a3)
{
  *&v3 = *this;
  *(&v3 + 1) = 0x100000000;
  *a2 = v3;
  return 8;
}

uint64_t MTLGetUnpackUintFunction::$_10::__invoke(MTLGetUnpackUintFunction::$_10 *this, _OWORD *a2, unsigned int *a3)
{
  v3 = *this;
  HIDWORD(v3) = 1;
  *a2 = v3;
  return 16;
}

uint64_t MTLGetUnpackUintFunction::$_12::__invoke(MTLGetUnpackUintFunction::$_12 *this, int8x16_t *a2, unsigned int *a3, double a4, int8x16_t a5)
{
  a5.i32[0] = *this;
  a5.i32[1] = *this >> 10;
  a5.i32[2] = *this >> 20;
  v5.i64[0] = 0x300000003;
  v5.i64[1] = 0x300000003;
  v6 = vandq_s8(a5, v5);
  v6.i32[3] = vshrq_n_u32(vdupq_n_s32(*this), 0x1EuLL).i32[3];
  *a2 = v6;
  return 4;
}

uint64_t MTLGetPackSintFunction::$_0::__invoke(MTLGetPackSintFunction::$_0 *this, int *a2, void *a3, int32x4_t a4)
{
  a4.i32[0] = *this;
  *a2 = vminq_s32(vmaxq_s32(a4, xmmword_185DC5160), xmmword_185DC5170).u8[0];
  return 1;
}

uint64_t MTLGetPackSintFunction::$_1::__invoke(MTLGetPackSintFunction::$_1 *this, int *a2, void *a3, int32x4_t a4)
{
  a4.i64[0] = *this;
  v4 = vminq_s32(vmaxq_s32(a4, xmmword_185DC5180), xmmword_185DC5190).u64[0];
  *(a2 + 1) = BYTE4(v4);
  *a2 = v4;
  return 2;
}

uint64_t MTLGetPackSintFunction::$_2::__invoke(int32x4_t *this, int *a2, void *a3)
{
  v3 = vmovn_s32(vminq_s32(vmaxq_s32(*this, xmmword_185DC51A0), xmmword_185DC51B0));
  *a2 = vuzp1_s8(v3, v3).u32[0];
  return 4;
}

uint64_t MTLGetPackSintFunction::$_3::__invoke(int32x4_t *this, int *a2, void *a3)
{
  v3.i64[0] = 0x7F0000007FLL;
  v3.i64[1] = 0x7F0000007FLL;
  v4 = vmovn_s32(vminq_s32(vmaxq_s32(*this, v3), v3));
  *a2 = vuzp1_s8(v4, v4).u32[0];
  return 4;
}

uint64_t MTLGetPackSintFunction::$_4::__invoke(MTLGetPackSintFunction::$_4 *this, int *a2, void *a3, int32x4_t a4)
{
  a4.i32[0] = *this;
  *a2 = vminq_s32(vmaxq_s32(a4, xmmword_185DC51C0), xmmword_185DC51D0).u16[0];
  return 2;
}

uint64_t MTLGetPackSintFunction::$_5::__invoke(MTLGetPackSintFunction::$_5 *this, int *a2, void *a3, int32x4_t a4)
{
  a4.i64[0] = *this;
  v4 = vminq_s32(vmaxq_s32(a4, xmmword_185DC51E0), xmmword_185DC51F0).u64[0];
  *(a2 + 1) = WORD2(v4);
  *a2 = v4;
  return 4;
}

uint64_t MTLGetUnpackSintFunction::$_0::__invoke(MTLGetUnpackSintFunction::$_0 *this, _OWORD *a2, int *a3)
{
  *&v3 = *this;
  *(&v3 + 1) = 0x100000000;
  *a2 = v3;
  return 1;
}

uint64_t MTLGetUnpackSintFunction::$_1::__invoke(MTLGetUnpackSintFunction::$_1 *this, _OWORD *a2, int *a3)
{
  LODWORD(v3) = *this;
  DWORD1(v3) = *(this + 1);
  *(&v3 + 1) = 0x100000000;
  *a2 = v3;
  return 2;
}

uint64_t MTLGetUnpackSintFunction::$_2::__invoke(MTLGetUnpackSintFunction::$_2 *this, int32x4_t *a2, int *a3, uint8x8_t a4)
{
  a4.i32[0] = *this;
  v4 = vmovl_u8(a4);
  v4.i16[3] = 1;
  *a2 = vshrq_n_s32(vshlq_n_s32(vmovl_u16(*v4.i8), 0x18uLL), 0x18uLL);
  return 4;
}

uint64_t MTLGetUnpackSintFunction::$_3::__invoke(MTLGetUnpackSintFunction::$_3 *this, int32x4_t *a2, int *a3, int8x8_t a4)
{
  a4.i32[0] = *this;
  *a2 = vmovl_s16(*&vmovl_s8(a4));
  return 4;
}

uint64_t MTLGetUnpackSintFunction::$_4::__invoke(MTLGetUnpackSintFunction::$_4 *this, _OWORD *a2, int *a3)
{
  *&v3 = *this;
  *(&v3 + 1) = 0x100000000;
  *a2 = v3;
  return 2;
}

uint64_t MTLGetUnpackSintFunction::$_5::__invoke(MTLGetUnpackSintFunction::$_5 *this, _OWORD *a2, int *a3)
{
  LODWORD(v3) = *this;
  DWORD1(v3) = *(this + 1);
  *(&v3 + 1) = 0x100000000;
  *a2 = v3;
  return 4;
}

uint64_t MTLGetUnpackSintFunction::$_6::__invoke(int16x4_t *this, int32x4_t *a2, int *a3)
{
  v3 = *this;
  v3.i16[3] = 1;
  *a2 = vmovl_s16(v3);
  return 8;
}

uint64_t MTLGetUnpackSintFunction::$_8::__invoke(MTLGetUnpackSintFunction::$_8 *this, _OWORD *a2, int *a3)
{
  *&v3 = *this;
  *(&v3 + 1) = 0x100000000;
  *a2 = v3;
  return 4;
}

uint64_t MTLGetUnpackSintFunction::$_9::__invoke(MTLGetUnpackSintFunction::$_9 *this, _OWORD *a2, int *a3)
{
  *&v3 = *this;
  *(&v3 + 1) = 0x100000000;
  *a2 = v3;
  return 8;
}

uint64_t MTLGetUnpackSintFunction::$_10::__invoke(MTLGetUnpackSintFunction::$_10 *this, _OWORD *a2, int *a3)
{
  v3 = *this;
  HIDWORD(v3) = 1;
  *a2 = v3;
  return 16;
}

void MTLLibraryData::setOverrideTriple(MTLLibraryData *this, NSString *a2)
{
  v3 = *(this + 11);
  if (v3 != a2)
  {
    v4 = v3;
    *(this + 11) = [(NSString *)a2 copy];
  }
}

uint64_t MTLLibraryData::copyData(MTLLibraryData *this)
{
  v2 = (*(*this + 376))(this);
  v3 = malloc_type_malloc(v2, 0x55B043EuLL);
  os_unfair_lock_lock(this + 21);
  (*(*this + 360))(this, 0);
  if ((*(*this + 368))(this, v3, v2) == v2)
  {
    v4 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:v3 length:v2];
  }

  else
  {
    free(v3);
    v4 = 0;
  }

  os_unfair_lock_unlock(this + 21);
  return v4;
}

uint64_t MTLLibraryData::newFunction()
{
  return 0;
}

{
  return 0;
}

uint64_t MTLLibraryData::copyCompressedBitCode(MTLLibraryData *this, void *a2, uint64_t a3, size_t a4, unsigned int a5)
{
  os_unfair_lock_lock(this + 21);
  (*(*this + 360))(this, a3);
  v10 = malloc_type_malloc(a4, 0xCC9A2A65uLL);
  (*(*this + 368))(this, v10, a4);
  v11 = (*(*this + 232))(this, a2, a5, v10, a4);
  free(v10);
  os_unfair_lock_unlock(this + 21);
  return v11;
}

void MTLLibraryData::parseDynamicLibraryBitCode(MTLLibraryData *this, unint64_t *a2, unint64_t *a3, unsigned int *a4)
{
  *a2 = 0;
  *a3 = 0;
  *a4 = 0;
}

void MTLLibraryData::parseDynamicLibraryReflection(MTLLibraryData *this, unint64_t *a2, unsigned int *a3, unsigned int *a4, NSError **a5)
{
  *a2 = 0;
  *a3 = 0;
  *a4 = 0;
}

void MTLLibraryData::getInputListForStitchedFunction(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

uint64_t getBatchCountForFragmentCapacity(unint64_t a1, uint64_t a2)
{
  if (a1 <= 0x2000)
  {
    return 0;
  }

  v2 = (a2 + a1) / (a2 + 1);
  if (v2 >= 2)
  {
    return 2 * v2;
  }

  else
  {
    return 2;
  }
}

unint64_t getNumberOfNodesThatCanBeBatchedForFragmentCapacity(unint64_t a1, unint64_t a2)
{
  if (a1 <= 0x2000)
  {
    return 0;
  }

  if ((a1 + a2 - 1) / a2 <= 1)
  {
    return 1;
  }

  return (a1 + a2 - 1) / a2;
}

void *useResourcesBatched(void *a1, uint64_t a2, void *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  memset(v8, 0, sizeof(v8));
  result = [a1 countByEnumeratingWithState:v8 objects:v9 count:16];
  if (result)
  {
    v7 = result;
    do
    {
      [a3 useResources:*(&v8[0] + 1) count:v7 usage:a2];
      result = [a1 countByEnumeratingWithState:v8 objects:v9 count:16];
      v7 = result;
    }

    while (result);
  }

  return result;
}

unint64_t _MTLClampMaxDepthForDescriptor(MTLBVHDescriptor *a1)
{
  if (![(MTLBVHDescriptor *)a1 fragmentCount])
  {
    return 1;
  }

  v2 = [(MTLBVHDescriptor *)a1 fragmentCount];
  [(MTLBVHDescriptor *)a1 splitCapacity];
  v4 = vcvtpd_u64_f64(v2 * v3);
  if ([MTLBVHBuilder useTemporalSplitsForDescriptor:a1])
  {
    v5 = ([(MTLBVHDescriptor *)a1 primitiveKeyframeCount]- 1) * v4;
    v4 = v5 * (1 << [(MTLBVHDescriptor *)a1 maxSubKeyframeTemporalSplits]);
  }

  v6 = v4 + [(MTLBVHDescriptor *)a1 minPrimitivesPerLeaf]- 1;
  v7 = v6 / [(MTLBVHDescriptor *)a1 minPrimitivesPerLeaf];
  v8 = [(MTLBVHDescriptor *)a1 branchingFactor];
  v9 = [(MTLBVHDescriptor *)a1 actualMaxDepth];
  v10 = log(v7);
  if (v8 != 2)
  {
    v13 = v10 + v10;
    if (ceil((v10 + v10) / log([(MTLBVHDescriptor *)a1 branchingFactor]) + 2.0) <= v9)
    {
      v11 = ceil(v13 / log([(MTLBVHDescriptor *)a1 branchingFactor]) + 2.0);
      goto LABEL_11;
    }

LABEL_9:
    v11 = [(MTLBVHDescriptor *)a1 actualMaxDepth];
    goto LABEL_11;
  }

  v11 = ceil((v10 / 0.693147181 + 2.0) * 1.35);
  if (v11 > v9)
  {
    goto LABEL_9;
  }

LABEL_11:
  if (v11 <= 1)
  {
    return 1;
  }

  else
  {
    return v11;
  }
}

uint64_t getDispatchBinsSmallTGSize(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___Z26getDispatchBinsSmallTGSizePU19objcproto9MTLDevice11objc_object_block_invoke;
  block[3] = &unk_1E6EEA858;
  block[4] = a1;
  if (getDispatchBinsSmallTGSize(objc_object  {objcproto9MTLDevice}*)::onceToken != -1)
  {
    dispatch_once(&getDispatchBinsSmallTGSize(objc_object  {objcproto9MTLDevice}*)::onceToken, block);
  }

  if (getDispatchBinsSmallTGSize(objc_object  {objcproto9MTLDevice}*)::threadgroupSize)
  {
    return 32;
  }

  else
  {
    return 64;
  }
}

void *___Z26getDispatchBinsSmallTGSizePU19objcproto9MTLDevice11objc_object_block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) supportsFamily:1009];
  if (result)
  {
    getDispatchBinsSmallTGSize(objc_object  {objcproto9MTLDevice}*)::threadgroupSize = 1;
  }

  return result;
}

uint64_t getBinningTGSize(void *a1)
{
  if ([objc_msgSend(a1 "name")])
  {
    getBinningTGSize(objc_object  {objcproto9MTLDevice}*)::threadgroupSize = 1;
    return 512;
  }

  else if (getBinningTGSize(objc_object  {objcproto9MTLDevice}*)::threadgroupSize)
  {
    return 512;
  }

  else
  {
    return 64;
  }
}

uint64_t getSpatialBinningTGSize(void *a1)
{
  if ([objc_msgSend(a1 "name")])
  {
    getSpatialBinningTGSize(objc_object  {objcproto9MTLDevice}*)::threadgroupSize = 1;
    return 256;
  }

  else if (getSpatialBinningTGSize(objc_object  {objcproto9MTLDevice}*)::threadgroupSize)
  {
    return 256;
  }

  else
  {
    return 64;
  }
}

uint64_t getSplitTGSize(void *a1)
{
  if ([objc_msgSend(a1 "name")])
  {
    return 256;
  }

  else
  {
    return 64;
  }
}

uint64_t newPipeline(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v55 = a4;
  v7 = objc_alloc_init(MTLFunctionConstantValues);
  v8 = *a2;
  v9 = 1 << ((*a2 >> 45) & 0xF);
  v53 = (*a2 >> 10) & 0xF;
  v54 = v9;
  v51 = (v8 >> 49);
  v52 = (v8 >> 14);
  v50 = (v8 & 0x4000000) != 0;
  v49 = (v8 & 0x8000000) != 0;
  v48 = (v8 & 0x1000000000) != 0;
  v47 = (v8 & 0x10000000) != 0;
  v45 = (v8 >> 8) & 3;
  v46 = BYTE4(v8) & 0xF;
  v44 = (v8 >> 39) & 0x3F;
  v43 = (v8 & 0x2000000000) != 0;
  v42 = (v8 & 0x200000000000000) != 0;
  v41 = (v8 & 0x400000000000000) != 0;
  v40 = (v8 & 0x4000000000) != 0;
  v39 = (v8 & 0x800000000000000) != 0;
  v38 = *(a2 + 36);
  v37 = (v8 & 0x1000000000000000) != 0;
  v36 = (v8 & 0x2000000000000000) != 0;
  v35 = (v8 & 0x4000000000000000) != 0;
  v34 = v8 < 0;
  v10 = *(a2 + 8);
  v33 = v10 & 1;
  v32 = (v10 & 2) != 0;
  v31 = (v10 & 4) != 0;
  v29 = (v10 >> 3) & 0xF;
  v30 = (v8 >> 22) & 0xF;
  v28 = (v10 & 0x80) != 0;
  v27 = BYTE1(v10) & 1;
  v26 = (v10 & 0x200) != 0;
  [(MTLFunctionConstantValues *)v7 setConstantValue:&v53 type:33 atIndex:0];
  [(MTLFunctionConstantValues *)v7 setConstantValue:&v52 type:33 atIndex:1];
  [(MTLFunctionConstantValues *)v7 setConstantValue:&v51 type:33 atIndex:19];
  [(MTLFunctionConstantValues *)v7 setConstantValue:&v42 type:53 atIndex:20];
  [(MTLFunctionConstantValues *)v7 setConstantValue:&v41 type:53 atIndex:21];
  [(MTLFunctionConstantValues *)v7 setConstantValue:a2 + 24 type:3 atIndex:2];
  [(MTLFunctionConstantValues *)v7 setConstantValue:a2 + 28 type:3 atIndex:3];
  [(MTLFunctionConstantValues *)v7 setConstantValue:a2 + 32 type:3 atIndex:4];
  [(MTLFunctionConstantValues *)v7 setConstantValue:a2 + 16 type:33 atIndex:5];
  [(MTLFunctionConstantValues *)v7 setConstantValue:&v30 type:33 atIndex:6];
  [(MTLFunctionConstantValues *)v7 setConstantValue:a2 + 20 type:33 atIndex:7];
  [(MTLFunctionConstantValues *)v7 setConstantValue:&v50 type:53 atIndex:8];
  [(MTLFunctionConstantValues *)v7 setConstantValue:&v49 type:53 atIndex:9];
  [(MTLFunctionConstantValues *)v7 setConstantValue:&v47 type:53 atIndex:12];
  [(MTLFunctionConstantValues *)v7 setConstantValue:&v45 type:33 atIndex:10];
  [(MTLFunctionConstantValues *)v7 setConstantValue:&v46 type:33 atIndex:13];
  [(MTLFunctionConstantValues *)v7 setConstantValue:&v54 type:33 atIndex:11];
  [(MTLFunctionConstantValues *)v7 setConstantValue:&v48 type:53 atIndex:14];
  v25 = (*a2 & 0x1004000000) != 0;
  [(MTLFunctionConstantValues *)v7 setConstantValue:&v25 type:53 atIndex:15];
  [(MTLFunctionConstantValues *)v7 setConstantValue:&v44 type:33 atIndex:16];
  [(MTLFunctionConstantValues *)v7 setConstantValue:&v55 type:33 atIndex:17];
  [(MTLFunctionConstantValues *)v7 setConstantValue:&v43 type:53 atIndex:18];
  [(MTLFunctionConstantValues *)v7 setConstantValue:&v40 type:53 atIndex:22];
  [(MTLFunctionConstantValues *)v7 setConstantValue:&v39 type:53 atIndex:23];
  [(MTLFunctionConstantValues *)v7 setConstantValue:&v38 type:3 atIndex:24];
  [(MTLFunctionConstantValues *)v7 setConstantValue:&v37 type:53 atIndex:25];
  [(MTLFunctionConstantValues *)v7 setConstantValue:&v36 type:53 atIndex:26];
  [(MTLFunctionConstantValues *)v7 setConstantValue:&v35 type:53 atIndex:27];
  [(MTLFunctionConstantValues *)v7 setConstantValue:&v34 type:49 atIndex:28];
  [(MTLFunctionConstantValues *)v7 setConstantValue:&v33 type:53 atIndex:29];
  [(MTLFunctionConstantValues *)v7 setConstantValue:&v32 type:53 atIndex:30];
  [(MTLFunctionConstantValues *)v7 setConstantValue:&v31 type:53 atIndex:31];
  [(MTLFunctionConstantValues *)v7 setConstantValue:&v29 type:33 atIndex:32];
  [(MTLFunctionConstantValues *)v7 setConstantValue:&v28 type:53 atIndex:33];
  [(MTLFunctionConstantValues *)v7 setConstantValue:&v27 type:53 atIndex:34];
  [(MTLFunctionConstantValues *)v7 setConstantValue:&v26 type:53 atIndex:35];
  v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*a3];
  if (*(a3 + 8) == 1 && (*(a2 + 4) & 0x10) != 0)
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", v11, @"Motion"];
  }

  if (*(a3 + 9) == 1)
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%llu", v11, v54];
  }

  v12 = objc_alloc_init(MTLComputePipelineDescriptor);
  v24 = 0;
  v13 = objc_alloc_init(MTLFunctionDescriptor);
  [(MTLFunctionDescriptor *)v13 setName:v11];
  [(MTLFunctionDescriptor *)v13 setConstantValues:v7];
  [(MTLFunctionDescriptor *)v13 setOptions:[(MTLFunctionDescriptor *)v13 options]| 0x10];
  v14 = [a1 newFunctionWithDescriptor:v13 error:&v24];
  if (!v14)
  {
    newPipeline(&v24);
  }

  [(MTLComputePipelineDescriptor *)v12 setComputeFunction:v14];
  [(MTLComputePipelineDescriptor *)v12 setThreadGroupSizeIsMultipleOfThreadExecutionWidth:1];
  [(MTLComputePipelineDescriptor *)v12 setMaxTotalThreadsPerThreadgroup:v54];
  [(MTLComputePipelineDescriptor *)v12 setInternalPipeline:1];

  v22 = [objc_msgSend(a1 "device")];
  if (!v22)
  {
    newPipeline(0, v15, v16, v17, v18, v19, v20, v21);
  }

  return v22;
}

uint64_t getTmpFragmentBinBufferSize(uint64_t a1, MTLBVHDescriptor *a2)
{
  if ([(MTLBVHDescriptor *)a2 maxSubKeyframeTemporalSplits])
  {
    return 2 * a1;
  }

  else
  {
    return 0;
  }
}

char *setResourceBufferContents(char *result, int a2, unsigned int a3, uint64_t a4, void *a5, uint64_t a6)
{
  v71 = result;
  if (a4)
  {
    v66 = 0;
    v7 = 0;
    v73 = 16 * a3;
    v74 = 8 * a3;
    v67 = 136 * a4;
    v8 = &result[136 * a4];
    v9 = &result[136 * a4 + v74];
    v10 = v8;
    do
    {
      v11 = &v71[136 * v7];
      v12 = [a5 objectAtIndexedSubscript:v7];
      [a5 objectAtIndexedSubscript:v7];
      v13 = objc_opt_class();
      if ([v13 isSubclassOfClass:objc_opt_class()])
      {
        if (a2)
        {
          if (a3)
          {
            v14 = 0;
            do
            {
              v15 = [objc_msgSend(objc_msgSend(objc_msgSend(v12 "vertexBuffers")];
              *&v8[8 * v14] = [objc_msgSend(objc_msgSend(v12 "vertexBuffers")] + v15;
              ++v14;
            }

            while (a3 != v14);
          }

          v16 = v67 + v74 * v7 + a6;
        }

        else
        {
          v21 = [objc_msgSend(objc_msgSend(objc_msgSend(v12 "vertexBuffers")];
          v16 = [objc_msgSend(objc_msgSend(v12 "vertexBuffers")] + v21;
        }

        *v11 = v16;
        if ([v12 indexBuffer])
        {
          v22 = [objc_msgSend(v12 "indexBuffer")];
          *(v11 + 1) = [v12 indexBufferOffset] + v22;
        }

        v23 = [v12 vertexFormat];
        v24 = [v12 vertexStride];
        v32 = v24;
        if (!v24)
        {
          v32 = MTLAttributeFormatSize(v23, v25, v26, v27, v28, v29, v30, v31);
        }

        if ([v12 indexBuffer])
        {
          if ([v12 indexType])
          {
            v33 = 4;
          }

          else
          {
            v33 = 2;
          }
        }

        else
        {
          v33 = 0;
        }

        *(v11 + 10) = v32;
        *(v11 + 11) = v33;
        *(v11 + 22) = v23;
        v41 = [objc_msgSend(v12 "transformationMatrixBuffer")];
        *(v11 + 12) = [v12 transformationMatrixBufferOffset] + v41;
        *(v11 + 26) = [v12 transformationMatrixLayout] == 1;
      }

      else
      {
        [a5 objectAtIndexedSubscript:v7];
        v17 = objc_opt_class();
        if ([v17 isSubclassOfClass:objc_opt_class()])
        {
          if (a2)
          {
            if (a3)
            {
              v18 = 0;
              do
              {
                v19 = [objc_msgSend(objc_msgSend(objc_msgSend(v12 "boundingBoxBuffers")];
                *&v8[8 * v18] = [objc_msgSend(objc_msgSend(v12 "boundingBoxBuffers")] + v19;
                ++v18;
              }

              while (a3 != v18);
            }

            v20 = v67 + v74 * v7 + a6;
          }

          else
          {
            v42 = [objc_msgSend(objc_msgSend(objc_msgSend(v12 "boundingBoxBuffers")];
            v20 = [objc_msgSend(objc_msgSend(v12 "boundingBoxBuffers")] + v42;
          }

          *(v11 + 2) = v20;
          *(v11 + 12) = [v12 boundingBoxStride];
        }

        else
        {
          [a5 objectAtIndexedSubscript:v7];
          v34 = objc_opt_class();
          if ([v34 isSubclassOfClass:objc_opt_class()])
          {
            if (a2)
            {
              v35 = v67 + v73 * v7;
              if (a3)
              {
                v65 = v67 + v73 * v7;
                v36 = 0;
                do
                {
                  v37 = [objc_msgSend(objc_msgSend(objc_msgSend(v12 controlPointBuffers];
                  *&v10[8 * v36] = [objc_msgSend(objc_msgSend(v12 "controlPointBuffers")] + v37;
                  ++v36;
                }

                while (a3 != v36);
                *(v11 + 3) = v65 + a6;
                v38 = 0;
                do
                {
                  v39 = [objc_msgSend(objc_msgSend(objc_msgSend(v12 "radiusBuffers")];
                  *&v9[8 * v38] = [objc_msgSend(objc_msgSend(v12 "radiusBuffers")] + v39;
                  ++v38;
                }

                while (a3 != v38);
                v40 = *(v11 + 3);
              }

              else
              {
                v40 = v35 + a6;
                *(v11 + 3) = v35 + a6;
              }

              v45 = v40 + v74;
            }

            else
            {
              v43 = [objc_msgSend(objc_msgSend(objc_msgSend(v12 "controlPointBuffers")];
              *(v11 + 3) = [objc_msgSend(objc_msgSend(v12 "controlPointBuffers")] + v43;
              v44 = [objc_msgSend(objc_msgSend(objc_msgSend(v12 "radiusBuffers")];
              v45 = [objc_msgSend(objc_msgSend(v12 "radiusBuffers")] + v44;
            }

            *(v11 + 4) = v45;
            v46 = [objc_msgSend(v12 "indexBuffer")];
            *(v11 + 1) = [v12 indexBufferOffset] + v46;
            *(v11 + 15) = [v12 controlPointFormat];
            *(v11 + 16) = [v12 radiusFormat];
            v47 = [v12 controlPointStride];
            if (!v47)
            {
              LODWORD(v47) = MTLAttributeFormatSize(*(v11 + 15), v48, v49, v50, v51, v52, v53, v54);
            }

            *(v11 + 13) = v47;
            v55 = [v12 radiusStride];
            if (!v55)
            {
              LODWORD(v55) = MTLAttributeFormatSize(*(v11 + 16), v56, v57, v58, v59, v60, v61, v62);
            }

            *(v11 + 14) = v55;
            *(v11 + 17) = v66;
            *(v11 + 18) = [v12 curveBasis];
            *(v11 + 19) = [v12 segmentControlPointCount];
            *(v11 + 20) = [v12 curveType];
            *(v11 + 21) = [v12 curveEndCaps];
            if ([v12 indexType])
            {
              v63 = 4;
            }

            else
            {
              v63 = 2;
            }

            *(v11 + 11) = v63;
            v66 += [v12 controlPointCount];
          }
        }
      }

      v64 = [objc_msgSend(v12 "primitiveDataBuffer")];
      *(v11 + 14) = [v12 primitiveDataBufferOffset] + v64;
      *(v11 + 30) = [v12 primitiveDataStride];
      *(v11 + 31) = [v12 primitiveDataElementSize];
      result = [v12 primitiveCount];
      *(v11 + 16) = result;
      ++v7;
      v10 += v73;
      v9 += v73;
      v8 += v74;
    }

    while (v7 != a4);
  }

  return result;
}

uint64_t computeResourceBufferLength(int a1, unsigned int *a2, uint64_t a3, void *a4)
{
  *a2 = 1;
  if (a1)
  {
    [a4 objectAtIndexedSubscript:0];
    v7 = objc_opt_class();
    LODWORD(v7) = [v7 isSubclassOfClass:objc_opt_class()];
    v8 = [a4 objectAtIndexedSubscript:0];
    if (v7)
    {
      v9 = [v8 vertexBuffers];
    }

    else
    {
      v11 = objc_opt_class();
      LODWORD(v11) = [v11 isSubclassOfClass:objc_opt_class()];
      v12 = [a4 objectAtIndexedSubscript:0];
      if (!v11)
      {
        v15 = objc_opt_class();
        if ([v15 isSubclassOfClass:objc_opt_class()])
        {
          v16 = [objc_msgSend(objc_msgSend(a4 objectAtIndexedSubscript:{0), "controlPointBuffers"), "count"}];
          *a2 = v16;
          v13 = 2 * v16;
        }

        else
        {
          v13 = 1;
        }

        goto LABEL_8;
      }

      v9 = [v12 boundingBoxBuffers];
    }

    v13 = [v9 count];
    *a2 = v13;
LABEL_8:
    v10 = 8 * v13 + 136;
    return v10 * a3;
  }

  v10 = 136;
  return v10 * a3;
}

void *PipelineCache<PipelineKey>::getPipeline(uint64_t a1, const char *a2, void *a3)
{
  v7 = 3;
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  PipelineCache<PipelineKey>::getPipelineKey(a1, a2, a3, *(a1 + 40), &v7, v5);
  return PipelineCache<PipelineKey>::getPipeline(a1, v5, 0);
}

void sub_185C37D54(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 120);
  if (v3)
  {
    *(v1 - 112) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *PipelineCache<PipelineKey>::getPipeline(uint64_t a1, const char *a2, void *a3, unsigned int *a4, void *a5)
{
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  PipelineCache<PipelineKey>::getPipelineKey(a1, a2, a3, *(a1 + 40), a4, v8);
  return PipelineCache<PipelineKey>::getPipeline(a1, v8, a5);
}

void std::vector<unsigned long>::resize(void *result, unint64_t a2)
{
  v2 = (result[1] - *result) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      result[1] = *result + 8 * a2;
    }
  }

  else
  {
    std::vector<unsigned long>::__append(result, a2 - v2);
  }
}

void PipelineCache<PipelineKey>::getPipelineKey(unsigned __int8 *a1@<X0>, const char *a2@<X1>, void *a3@<X2>, unint64_t a4@<X3>, unsigned int *a5@<X4>, uint64_t a6@<X8>)
{
  v8 = a2;
  *(a6 + 32) = 0;
  *a6 = 0u;
  *(a6 + 16) = 0u;
  if (a3)
  {
    objc_msgSend_cachedPipelineKey(a3);
    v11 = *a6 & 0x79FFFFFFFFFFFF00;
    v12 = *(a6 + 8) & 0xFE78;
  }

  else
  {
    v12 = 0;
    v11 = 0;
    *(a6 + 24) = 0uLL;
    *(a6 + 8) = 0uLL;
  }

  v13 = *a5;
  *a6 = v11 & 0x7FFFFFFFFFFFFFFFLL | v8 | ((v13 & 1) << 57) & 0x7FFFFFFFFFFFFFFFLL | (((v13 >> 1) & 1) << 58) & 0x7FFFFFFFFFFFFFFFLL | ((v13 >> 2) << 63);
  *(a6 + 8) = ((16 * v13) | (4 * a1[82])) & 0x184 | v12 | a1[80] | (2 * (a1[81] & 1));
  if (a4)
  {
    *a6 = v11 & 0x7FFE1FFFFFFFFFFFLL | v8 | ((v13 & 1) << 57) & 0x7FFE1FFFFFFFFFFFLL | (((v13 >> 1) & 1) << 58) & 0x7FFE1FFFFFFFFFFFLL | ((v13 >> 2) << 63) | ((log2(a4) & 0xFLL) << 45);
  }
}

void *PipelineCache<PipelineKey>::getPipeline(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a1 + 84));
  v4 = *(a2 + 16);
  v10[0] = *a2;
  v10[1] = v4;
  v11 = *(a2 + 32);
  v5 = std::__hash_table<std::__hash_value_type<PipelineCache<PipelineKey>::HashKey,PipelineValue>,std::__unordered_map_hasher<PipelineCache<PipelineKey>::HashKey,std::__hash_value_type<PipelineCache<PipelineKey>::HashKey,PipelineValue>,PipelineCache<PipelineKey>::Hasher,std::equal_to<PipelineCache<PipelineKey>::HashKey>,true>,std::__unordered_map_equal<PipelineCache<PipelineKey>::HashKey,std::__hash_value_type<PipelineCache<PipelineKey>::HashKey,PipelineValue>,std::equal_to<PipelineCache<PipelineKey>::HashKey>,PipelineCache<PipelineKey>::Hasher,true>,std::allocator<std::__hash_value_type<PipelineCache<PipelineKey>::HashKey,PipelineValue>>>::find<PipelineCache<PipelineKey>::HashKey>(a1, v10);
  if (v5)
  {
    v6 = v5;
    os_unfair_lock_unlock((a1 + 84));
    return v6[7];
  }

  else
  {
    v8 = *(a1 + 72);
    if (!v8)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    v7 = (*(*v8 + 48))(v8, a2);
    PipelineCache<PipelineKey>::addPipeline(a1, a2, v7);
    os_unfair_lock_unlock((a1 + 84));
  }

  return v7;
}

void *PipelineCache<PipelineKey>::getPipeline(uint64_t a1, const char *a2, void *a3, int a4, int a5)
{
  if (a5)
  {
    v6 = 2;
  }

  else
  {
    v6 = 0;
  }

  v10 = v6 | a4;
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  PipelineCache<PipelineKey>::getPipelineKey(a1, a2, a3, *(a1 + 40), &v10, v8);
  return PipelineCache<PipelineKey>::getPipeline(a1, v8, 0);
}

void *PipelineCache<PipelineKey>::getPipeline(unsigned __int8 *a1, const char *a2, void *a3, unint64_t a4)
{
  v8 = 3;
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  PipelineCache<PipelineKey>::getPipelineKey(a1, a2, a3, a4, &v8, v6);
  return PipelineCache<PipelineKey>::getPipeline(a1, v6, 0);
}

uint64_t getMTLSWBVHType(MTLAccelerationStructureDescriptor *a1)
{
  v1 = objc_opt_class();
  if ([v1 isSubclassOfClass:objc_opt_class()])
  {
    return 1;
  }

  v3 = objc_opt_class();
  return [v3 isSubclassOfClass:objc_opt_class()];
}

BOOL getMTLSWBVHMotion(MTLAccelerationStructureDescriptor *a1)
{
  v2 = objc_opt_class();
  if ([v2 isSubclassOfClass:objc_opt_class()])
  {
    v3 = [(MTLAccelerationStructureDescriptor *)a1 instanceDescriptorType];
    v4 = [(MTLAccelerationStructureDescriptor *)a1 instanceDescriptorType];
    return v3 == 2 || v4 == 4;
  }

  else
  {
    v6 = objc_opt_class();
    if (![v6 isSubclassOfClass:objc_opt_class()])
    {
      return [(MTLAccelerationStructureDescriptor *)a1 motionKeyframeCount]> 1;
    }

    return [(MTLAccelerationStructureDescriptor *)a1 instanceDescriptorType]== 4;
  }
}

uint64_t getMTLSWBVHPrimitiveType(MTLAccelerationStructureDescriptor *a1)
{
  v2 = objc_opt_class();
  if ([v2 isSubclassOfClass:objc_opt_class()])
  {
    result = [-[MTLAccelerationStructureDescriptor geometryDescriptors](a1 "geometryDescriptors")];
    if (!result)
    {
      return result;
    }

    [-[MTLAccelerationStructureDescriptor geometryDescriptors](a1 "geometryDescriptors")];
    v4 = objc_opt_class();
    if (([v4 isSubclassOfClass:objc_opt_class()] & 1) == 0)
    {
      v5 = objc_opt_class();
      if (([v5 isSubclassOfClass:objc_opt_class()] & 1) == 0)
      {
        v6 = objc_opt_class();
        if ([v6 isSubclassOfClass:objc_opt_class()])
        {
          return 1;
        }

        v7 = objc_opt_class();
        if ([v7 isSubclassOfClass:objc_opt_class()])
        {
          return 1;
        }

        v8 = objc_opt_class();
        if ([v8 isSubclassOfClass:objc_opt_class()])
        {
          return 2;
        }

        v9 = objc_opt_class();
        if ([v9 isSubclassOfClass:objc_opt_class()])
        {
          return 2;
        }
      }
    }
  }

  return 0;
}

MTLBVHDescriptor *MTLBVHDescriptorForMTLAccelerationStructureDescriptor(void *a1)
{
  v191 = *MEMORY[0x1E69E9840];
  v156 = objc_alloc_init(MTLBVHDescriptor);
  [(MTLBVHDescriptor *)v156 setPrimitiveKeyframeCount:1];
  [(MTLBVHDescriptor *)v156 setBranchingFactor:2];
  [(MTLBVHDescriptor *)v156 setMaxDepth:32];
  -[MTLBVHDescriptor setUseFastBuild:](v156, "setUseFastBuild:", ([a1 usage] >> 1) & 1);
  v2 = !-[MTLBVHDescriptor useFastBuild](v156, "useFastBuild") && ([a1 usage] & 1) == 0;
  v3 = objc_opt_class();
  if (![v3 isSubclassOfClass:objc_opt_class()])
  {
    v29 = objc_opt_class();
    if ([v29 isSubclassOfClass:objc_opt_class()])
    {
      [(MTLBVHDescriptor *)v156 setMaxPrimitivesPerLeaf:1];
      [(MTLBVHDescriptor *)v156 setMinPrimitivesPerLeaf:1];
      [(MTLBVHDescriptor *)v156 setSplitHeuristic:2];
      LODWORD(v30) = 1.0;
      [(MTLBVHDescriptor *)v156 setSplitCapacity:v30];
      -[MTLBVHDescriptor setDeterministic:](v156, "setDeterministic:", ([a1 usage] >> 3) & 1);
      if ([a1 instanceDescriptorType] == 2 || objc_msgSend(a1, "instanceDescriptorType") == 4)
      {
        [(MTLBVHDescriptor *)v156 setMotion:1];
      }

      v31 = objc_alloc_init(MTLBVHBoundingBoxGeometryDescriptor);
      v184 = objc_alloc_init(MTLMotionKeyframeData);
      -[MTLBVHBoundingBoxGeometryDescriptor setBoundingBoxBuffers:](v31, "setBoundingBoxBuffers:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v184 count:1]);
      if ([(MTLBVHDescriptor *)v156 motion])
      {
        v32 = 56;
      }

      else
      {
        v32 = 24;
      }

      [(MTLBVHBoundingBoxGeometryDescriptor *)v31 setBoundingBoxStride:v32];
      -[MTLBVHGeometryDescriptor setPrimitiveCount:](v31, "setPrimitiveCount:", [a1 instanceCount]);
      -[MTLBVHDescriptor setGeometryDescriptors:](v156, "setGeometryDescriptors:", [MEMORY[0x1E695DEC8] arrayWithObject:v31]);
      v33 = v31;
      v34 = v156;
    }

    else
    {
      v35 = objc_opt_class();
      if (![v35 isSubclassOfClass:objc_opt_class()])
      {
        v39 = 0;
        v11 = 0;
        v34 = v156;
        goto LABEL_146;
      }

      v34 = v156;
      [(MTLBVHDescriptor *)v156 setMaxPrimitivesPerLeaf:1];
      [(MTLBVHDescriptor *)v156 setMinPrimitivesPerLeaf:1];
      [(MTLBVHDescriptor *)v156 setSplitHeuristic:2];
      LODWORD(v36) = 1.0;
      [(MTLBVHDescriptor *)v156 setSplitCapacity:v36];
      -[MTLBVHDescriptor setMotion:](v156, "setMotion:", [a1 instanceDescriptorType] == 4);
      v37 = objc_alloc_init(MTLBVHBoundingBoxGeometryDescriptor);
      v183 = objc_alloc_init(MTLMotionKeyframeData);
      -[MTLBVHBoundingBoxGeometryDescriptor setBoundingBoxBuffers:](v37, "setBoundingBoxBuffers:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v183 count:1]);
      if ([(MTLBVHDescriptor *)v156 motion])
      {
        v38 = 56;
      }

      else
      {
        v38 = 24;
      }

      [(MTLBVHBoundingBoxGeometryDescriptor *)v37 setBoundingBoxStride:v38];
      -[MTLBVHGeometryDescriptor setPrimitiveCount:](v37, "setPrimitiveCount:", [a1 maxInstanceCount]);
      -[MTLBVHDescriptor setGeometryDescriptors:](v156, "setGeometryDescriptors:", [MEMORY[0x1E695DEC8] arrayWithObject:v37]);
      v33 = v37;
    }

    v11 = [(MTLBVHGeometryDescriptor *)v33 primitiveCount];
    v39 = 0;
LABEL_146:
    [(MTLBVHDescriptor *)v34 setFragmentCount:v11];
    [(MTLBVHDescriptor *)v34 setPrimitiveDataSize:v39];
    return v156;
  }

  [(MTLBVHDescriptor *)v156 setMinPrimitivesPerLeaf:2];
  [(MTLBVHDescriptor *)v156 setMaxPrimitivesPerLeaf:32];
  -[MTLBVHDescriptor setPrimitiveKeyframeCount:](v156, "setPrimitiveKeyframeCount:", [a1 motionKeyframeCount]);
  [a1 motionStartTime];
  [(MTLBVHDescriptor *)v156 setPrimitiveMotionStartTime:?];
  [a1 motionEndTime];
  [(MTLBVHDescriptor *)v156 setPrimitiveMotionEndTime:?];
  [(MTLBVHDescriptor *)v156 setMotion:[(MTLBVHDescriptor *)v156 primitiveKeyframeCount]> 1];
  v4 = [a1 geometryDescriptors];
  v5 = [objc_msgSend(a1 "geometryDescriptors")];
  if (v5)
  {
    v6 = v5;
    [v4 objectAtIndexedSubscript:0];
    v158 = [MEMORY[0x1E695DF70] arrayWithCapacity:v6];
    [(MTLBVHDescriptor *)v156 setGeometryDescriptors:?];
    v7 = objc_opt_class();
    if ([v7 isSubclassOfClass:objc_opt_class()])
    {
      v181 = 0u;
      v182 = 0u;
      v179 = 0u;
      v180 = 0u;
      v8 = [a1 geometryDescriptors];
      v9 = [v8 countByEnumeratingWithState:&v179 objects:v190 count:16];
      if (v9)
      {
        v10 = v9;
        v157 = 0;
        v11 = 0;
        v12 = *v180;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v180 != v12)
            {
              objc_enumerationMutation(v8);
            }

            v14 = *(*(&v179 + 1) + 8 * i);
            if (v2)
            {
              v2 = [*(*(&v179 + 1) + 8 * i) allowDuplicateIntersectionFunctionInvocation];
            }

            else
            {
              v2 = 0;
            }

            if ([(MTLBVHDescriptor *)v156 primitiveKeyframeCount]!= 1)
            {
              MTLBVHDescriptorForMTLAccelerationStructureDescriptor_cold_6(v156);
            }

            v15 = objc_alloc_init(MTLBVHPolygonGeometryDescriptor);
            [(MTLBVHPolygonGeometryDescriptor *)v15 setPolygonType:0];
            v16 = objc_alloc_init(MTLMotionKeyframeData);
            -[MTLMotionKeyframeData setBuffer:](v16, "setBuffer:", [v14 vertexBuffer]);
            -[MTLMotionKeyframeData setOffset:](v16, "setOffset:", [v14 vertexBufferOffset]);
            -[MTLBVHPolygonGeometryDescriptor setVertexBuffers:](v15, "setVertexBuffers:", [MEMORY[0x1E695DEC8] arrayWithObject:v16]);
            v17 = [v14 vertexStride];
            v18 = [v14 vertexFormat];
            if (!v17)
            {
              v17 = MTLAttributeFormatSize(v18, v19, v20, v21, v22, v23, v24, v25);
            }

            [(MTLBVHPolygonGeometryDescriptor *)v15 setVertexStride:v17];
            -[MTLBVHPolygonGeometryDescriptor setVertexFormat:](v15, "setVertexFormat:", [v14 vertexFormat]);
            -[MTLBVHPolygonGeometryDescriptor setTransformationMatrixBuffer:](v15, "setTransformationMatrixBuffer:", [v14 transformationMatrixBuffer]);
            -[MTLBVHPolygonGeometryDescriptor setTransformationMatrixBufferOffset:](v15, "setTransformationMatrixBufferOffset:", [v14 transformationMatrixBufferOffset]);
            -[MTLBVHPolygonGeometryDescriptor setTransformationMatrixLayout:](v15, "setTransformationMatrixLayout:", [v14 transformationMatrixLayout]);
            -[MTLBVHPolygonGeometryDescriptor setIndexBuffer:](v15, "setIndexBuffer:", [v14 indexBuffer]);
            -[MTLBVHPolygonGeometryDescriptor setIndexBufferOffset:](v15, "setIndexBufferOffset:", [v14 indexBufferOffset]);
            -[MTLBVHPolygonGeometryDescriptor setIndexType:](v15, "setIndexType:", [v14 indexType]);
            -[MTLBVHGeometryDescriptor setPrimitiveCount:](v15, "setPrimitiveCount:", [v14 triangleCount]);
            v26 = [v14 primitiveDataBuffer];
            if (v26)
            {
              [(MTLBVHGeometryDescriptor *)v15 setPrimitiveDataBuffer:v26];
              -[MTLBVHGeometryDescriptor setPrimitiveDataBufferOffset:](v15, "setPrimitiveDataBufferOffset:", [v14 primitiveDataBufferOffset]);
              -[MTLBVHGeometryDescriptor setPrimitiveDataStride:](v15, "setPrimitiveDataStride:", [v14 primitiveDataStride]);
              -[MTLBVHGeometryDescriptor setPrimitiveDataElementSize:](v15, "setPrimitiveDataElementSize:", [v14 primitiveDataElementSize]);
            }

            [v158 addObject:v15];
            v27 = [(MTLBVHGeometryDescriptor *)v15 primitiveCount];
            if ([v14 primitiveDataBuffer] && objc_msgSend(v14, "primitiveDataElementSize"))
            {
              v28 = [(MTLBVHGeometryDescriptor *)v15 primitiveCount];
              v157 += ([v14 primitiveDataElementSize] * v28 + 255) & 0xFFFFFFFFFFFFFF00;
            }

            v11 += v27;
          }

          v10 = [v8 countByEnumeratingWithState:&v179 objects:v190 count:16];
        }

        while (v10);
        if (!v2)
        {
          goto LABEL_144;
        }

LABEL_87:
        v34 = v156;
        [(MTLBVHDescriptor *)v156 setSplitHeuristic:3];
        LODWORD(v103) = 2.0;
LABEL_145:
        [(MTLBVHDescriptor *)v34 setSplitCapacity:v103];
        v39 = v157;
        goto LABEL_146;
      }

      v157 = 0;
      v11 = 0;
      if (v2)
      {
        goto LABEL_87;
      }
    }

    else
    {
      v40 = objc_opt_class();
      if ([v40 isSubclassOfClass:objc_opt_class()])
      {
        [(MTLBVHDescriptor *)v156 setMaxPrimitivesPerLeaf:1];
        [(MTLBVHDescriptor *)v156 setMinPrimitivesPerLeaf:1];
        v177 = 0u;
        v178 = 0u;
        v175 = 0u;
        v176 = 0u;
        obj = [a1 geometryDescriptors];
        v41 = [obj countByEnumeratingWithState:&v175 objects:v189 count:16];
        if (v41)
        {
          v42 = v41;
          v157 = 0;
          v11 = 0;
          v43 = *v176;
          do
          {
            for (j = 0; j != v42; ++j)
            {
              if (*v176 != v43)
              {
                objc_enumerationMutation(obj);
              }

              v45 = *(*(&v175 + 1) + 8 * j);
              if ([(MTLBVHDescriptor *)v156 primitiveKeyframeCount]!= 1)
              {
                MTLBVHDescriptorForMTLAccelerationStructureDescriptor_cold_5(v156);
              }

              v46 = objc_alloc_init(MTLBVHCurveGeometryDescriptor);
              v47 = objc_alloc_init(MTLMotionKeyframeData);
              -[MTLMotionKeyframeData setBuffer:](v47, "setBuffer:", [v45 controlPointBuffer]);
              -[MTLMotionKeyframeData setOffset:](v47, "setOffset:", [v45 controlPointBufferOffset]);
              -[MTLBVHCurveGeometryDescriptor setControlPointBuffers:](v46, "setControlPointBuffers:", [MEMORY[0x1E695DEC8] arrayWithObject:v47]);
              v48 = objc_alloc_init(MTLMotionKeyframeData);
              -[MTLMotionKeyframeData setBuffer:](v48, "setBuffer:", [v45 radiusBuffer]);
              -[MTLMotionKeyframeData setOffset:](v48, "setOffset:", [v45 radiusBufferOffset]);
              -[MTLBVHCurveGeometryDescriptor setRadiusBuffers:](v46, "setRadiusBuffers:", [MEMORY[0x1E695DEC8] arrayWithObject:v48]);
              v49 = [v45 controlPointStride];
              v50 = [v45 controlPointFormat];
              if (!v49)
              {
                v49 = MTLAttributeFormatSize(v50, v51, v52, v53, v54, v55, v56, v57);
              }

              [(MTLBVHCurveGeometryDescriptor *)v46 setControlPointStride:v49];
              -[MTLBVHCurveGeometryDescriptor setControlPointFormat:](v46, "setControlPointFormat:", [v45 controlPointFormat]);
              v58 = [v45 radiusStride];
              v59 = [v45 radiusFormat];
              if (!v58)
              {
                v58 = MTLAttributeFormatSize(v59, v60, v61, v62, v63, v64, v65, v66);
              }

              [(MTLBVHCurveGeometryDescriptor *)v46 setRadiusStride:v58];
              -[MTLBVHCurveGeometryDescriptor setRadiusFormat:](v46, "setRadiusFormat:", [v45 radiusFormat]);
              -[MTLBVHCurveGeometryDescriptor setControlPointCount:](v46, "setControlPointCount:", [v45 controlPointCount]);
              -[MTLBVHCurveGeometryDescriptor setIndexBuffer:](v46, "setIndexBuffer:", [v45 indexBuffer]);
              -[MTLBVHCurveGeometryDescriptor setIndexBufferOffset:](v46, "setIndexBufferOffset:", [v45 indexBufferOffset]);
              -[MTLBVHCurveGeometryDescriptor setIndexType:](v46, "setIndexType:", [v45 indexType]);
              -[MTLBVHGeometryDescriptor setPrimitiveCount:](v46, "setPrimitiveCount:", [v45 segmentCount]);
              -[MTLBVHCurveGeometryDescriptor setSegmentControlPointCount:](v46, "setSegmentControlPointCount:", [v45 segmentControlPointCount]);
              -[MTLBVHCurveGeometryDescriptor setCurveType:](v46, "setCurveType:", [v45 curveType]);
              -[MTLBVHCurveGeometryDescriptor setCurveBasis:](v46, "setCurveBasis:", [v45 curveBasis]);
              -[MTLBVHCurveGeometryDescriptor setCurveEndCaps:](v46, "setCurveEndCaps:", [v45 endCaps]);
              v67 = [v45 primitiveDataBuffer];
              if (v67)
              {
                [(MTLBVHGeometryDescriptor *)v46 setPrimitiveDataBuffer:v67];
                -[MTLBVHGeometryDescriptor setPrimitiveDataBufferOffset:](v46, "setPrimitiveDataBufferOffset:", [v45 primitiveDataBufferOffset]);
                -[MTLBVHGeometryDescriptor setPrimitiveDataStride:](v46, "setPrimitiveDataStride:", [v45 primitiveDataStride]);
                -[MTLBVHGeometryDescriptor setPrimitiveDataElementSize:](v46, "setPrimitiveDataElementSize:", [v45 primitiveDataElementSize]);
              }

              [v158 addObject:v46];
              v68 = [(MTLBVHGeometryDescriptor *)v46 primitiveCount];
              if ([v45 primitiveDataBuffer] && objc_msgSend(v45, "primitiveDataElementSize"))
              {
                v69 = [(MTLBVHGeometryDescriptor *)v46 primitiveCount];
                v157 += ([v45 primitiveDataElementSize] * v69 + 255) & 0xFFFFFFFFFFFFFF00;
              }

              v11 += v68;
            }

            v42 = [obj countByEnumeratingWithState:&v175 objects:v189 count:16];
          }

          while (v42);
          goto LABEL_144;
        }
      }

      else
      {
        v70 = objc_opt_class();
        if ([v70 isSubclassOfClass:objc_opt_class()])
        {
          [(MTLBVHDescriptor *)v156 setMaxPrimitivesPerLeaf:1];
          [(MTLBVHDescriptor *)v156 setMinPrimitivesPerLeaf:1];
          v173 = 0u;
          v174 = 0u;
          v171 = 0u;
          v172 = 0u;
          obja = [a1 geometryDescriptors];
          v71 = [obja countByEnumeratingWithState:&v171 objects:v188 count:16];
          if (v71)
          {
            v72 = v71;
            v157 = 0;
            v11 = 0;
            v73 = *v172;
            do
            {
              v74 = 0;
              v75 = v157;
              do
              {
                if (*v172 != v73)
                {
                  objc_enumerationMutation(obja);
                }

                v76 = *(*(&v171 + 1) + 8 * v74);
                v77 = [(MTLBVHDescriptor *)v156 primitiveKeyframeCount];
                if (v77 != [objc_msgSend(v76 "controlPointBuffers")])
                {
                  MTLBVHDescriptorForMTLAccelerationStructureDescriptor_cold_4(v156, v76);
                }

                v78 = objc_alloc_init(MTLBVHCurveGeometryDescriptor);
                if ([objc_msgSend(v76 "controlPointBuffers")])
                {
                  -[MTLBVHCurveGeometryDescriptor setControlPointBuffers:](v78, "setControlPointBuffers:", [v76 controlPointBuffers]);
                  v79 = [v76 radiusBuffers];
                }

                else
                {
                  v80 = objc_alloc_init(MTLMotionKeyframeData);
                  [(MTLMotionKeyframeData *)v80 setBuffer:0];
                  [(MTLMotionKeyframeData *)v80 setOffset:0];
                  -[MTLBVHCurveGeometryDescriptor setControlPointBuffers:](v78, "setControlPointBuffers:", [MEMORY[0x1E695DEC8] arrayWithObject:v80]);
                  v81 = objc_alloc_init(MTLMotionKeyframeData);
                  [(MTLMotionKeyframeData *)v81 setBuffer:0];
                  [(MTLMotionKeyframeData *)v81 setOffset:0];
                  v79 = [MEMORY[0x1E695DEC8] arrayWithObject:v81];
                }

                [(MTLBVHCurveGeometryDescriptor *)v78 setRadiusBuffers:v79];
                v82 = [v76 controlPointStride];
                v83 = [v76 controlPointFormat];
                if (!v82)
                {
                  v82 = MTLAttributeFormatSize(v83, v84, v85, v86, v87, v88, v89, v90);
                }

                [(MTLBVHCurveGeometryDescriptor *)v78 setControlPointStride:v82];
                -[MTLBVHCurveGeometryDescriptor setControlPointFormat:](v78, "setControlPointFormat:", [v76 controlPointFormat]);
                v91 = [v76 radiusStride];
                v92 = [v76 radiusFormat];
                if (!v91)
                {
                  v91 = MTLAttributeFormatSize(v92, v93, v94, v95, v96, v97, v98, v99);
                }

                [(MTLBVHCurveGeometryDescriptor *)v78 setRadiusStride:v91];
                -[MTLBVHCurveGeometryDescriptor setRadiusFormat:](v78, "setRadiusFormat:", [v76 radiusFormat]);
                -[MTLBVHCurveGeometryDescriptor setControlPointCount:](v78, "setControlPointCount:", [v76 controlPointCount]);
                -[MTLBVHCurveGeometryDescriptor setIndexBuffer:](v78, "setIndexBuffer:", [v76 indexBuffer]);
                -[MTLBVHCurveGeometryDescriptor setIndexBufferOffset:](v78, "setIndexBufferOffset:", [v76 indexBufferOffset]);
                -[MTLBVHCurveGeometryDescriptor setIndexType:](v78, "setIndexType:", [v76 indexType]);
                -[MTLBVHGeometryDescriptor setPrimitiveCount:](v78, "setPrimitiveCount:", [v76 segmentCount]);
                -[MTLBVHCurveGeometryDescriptor setSegmentControlPointCount:](v78, "setSegmentControlPointCount:", [v76 segmentControlPointCount]);
                -[MTLBVHCurveGeometryDescriptor setCurveType:](v78, "setCurveType:", [v76 curveType]);
                -[MTLBVHCurveGeometryDescriptor setCurveBasis:](v78, "setCurveBasis:", [v76 curveBasis]);
                -[MTLBVHCurveGeometryDescriptor setCurveEndCaps:](v78, "setCurveEndCaps:", [v76 endCaps]);
                v100 = [v76 primitiveDataBuffer];
                if (v100)
                {
                  [(MTLBVHGeometryDescriptor *)v78 setPrimitiveDataBuffer:v100];
                  -[MTLBVHGeometryDescriptor setPrimitiveDataBufferOffset:](v78, "setPrimitiveDataBufferOffset:", [v76 primitiveDataBufferOffset]);
                  -[MTLBVHGeometryDescriptor setPrimitiveDataStride:](v78, "setPrimitiveDataStride:", [v76 primitiveDataStride]);
                  -[MTLBVHGeometryDescriptor setPrimitiveDataElementSize:](v78, "setPrimitiveDataElementSize:", [v76 primitiveDataElementSize]);
                }

                [v158 addObject:v78];
                v101 = [(MTLBVHGeometryDescriptor *)v78 primitiveCount];
                if ([v76 primitiveDataBuffer] && objc_msgSend(v76, "primitiveDataElementSize"))
                {
                  v102 = [(MTLBVHGeometryDescriptor *)v78 primitiveCount];
                  v75 += ([v76 primitiveDataElementSize] * v102 + 255) & 0xFFFFFFFFFFFFFF00;
                }

                v11 += v101;
                ++v74;
              }

              while (v72 != v74);
              v157 = v75;
              v72 = [obja countByEnumeratingWithState:&v171 objects:v188 count:16];
            }

            while (v72);
            goto LABEL_144;
          }
        }

        else
        {
          v104 = objc_opt_class();
          if ([v104 isSubclassOfClass:objc_opt_class()])
          {
            v169 = 0u;
            v170 = 0u;
            v167 = 0u;
            v168 = 0u;
            v105 = [a1 geometryDescriptors];
            v106 = [v105 countByEnumeratingWithState:&v167 objects:v187 count:16];
            if (v106)
            {
              v107 = v106;
              v157 = 0;
              v11 = 0;
              v108 = *v168;
              do
              {
                for (k = 0; k != v107; ++k)
                {
                  if (*v168 != v108)
                  {
                    objc_enumerationMutation(v105);
                  }

                  v110 = *(*(&v167 + 1) + 8 * k);
                  v111 = [(MTLBVHDescriptor *)v156 primitiveKeyframeCount];
                  if (v111 != [objc_msgSend(v110 "vertexBuffers")])
                  {
                    MTLBVHDescriptorForMTLAccelerationStructureDescriptor_cold_3(v156, v110);
                  }

                  v112 = objc_alloc_init(MTLBVHPolygonGeometryDescriptor);
                  [(MTLBVHPolygonGeometryDescriptor *)v112 setPolygonType:0];
                  if ([objc_msgSend(v110 "vertexBuffers")])
                  {
                    v113 = [v110 vertexBuffers];
                  }

                  else
                  {
                    v114 = objc_alloc_init(MTLMotionKeyframeData);
                    [(MTLMotionKeyframeData *)v114 setBuffer:0];
                    [(MTLMotionKeyframeData *)v114 setOffset:0];
                    v113 = [MEMORY[0x1E695DEC8] arrayWithObject:v114];
                  }

                  [(MTLBVHPolygonGeometryDescriptor *)v112 setVertexBuffers:v113];
                  v115 = [v110 vertexStride];
                  v116 = [v110 vertexFormat];
                  if (!v115)
                  {
                    v115 = MTLAttributeFormatSize(v116, v117, v118, v119, v120, v121, v122, v123);
                  }

                  [(MTLBVHPolygonGeometryDescriptor *)v112 setVertexStride:v115];
                  -[MTLBVHPolygonGeometryDescriptor setVertexFormat:](v112, "setVertexFormat:", [v110 vertexFormat]);
                  -[MTLBVHPolygonGeometryDescriptor setTransformationMatrixBuffer:](v112, "setTransformationMatrixBuffer:", [v110 transformationMatrixBuffer]);
                  -[MTLBVHPolygonGeometryDescriptor setTransformationMatrixBufferOffset:](v112, "setTransformationMatrixBufferOffset:", [v110 transformationMatrixBufferOffset]);
                  -[MTLBVHPolygonGeometryDescriptor setTransformationMatrixLayout:](v112, "setTransformationMatrixLayout:", [v110 transformationMatrixLayout]);
                  -[MTLBVHPolygonGeometryDescriptor setIndexBuffer:](v112, "setIndexBuffer:", [v110 indexBuffer]);
                  -[MTLBVHPolygonGeometryDescriptor setIndexBufferOffset:](v112, "setIndexBufferOffset:", [v110 indexBufferOffset]);
                  -[MTLBVHPolygonGeometryDescriptor setIndexType:](v112, "setIndexType:", [v110 indexType]);
                  -[MTLBVHGeometryDescriptor setPrimitiveCount:](v112, "setPrimitiveCount:", [v110 triangleCount]);
                  v124 = [v110 primitiveDataBuffer];
                  if (v124)
                  {
                    [(MTLBVHGeometryDescriptor *)v112 setPrimitiveDataBuffer:v124];
                    -[MTLBVHGeometryDescriptor setPrimitiveDataBufferOffset:](v112, "setPrimitiveDataBufferOffset:", [v110 primitiveDataBufferOffset]);
                    -[MTLBVHGeometryDescriptor setPrimitiveDataStride:](v112, "setPrimitiveDataStride:", [v110 primitiveDataStride]);
                    -[MTLBVHGeometryDescriptor setPrimitiveDataElementSize:](v112, "setPrimitiveDataElementSize:", [v110 primitiveDataElementSize]);
                  }

                  [v158 addObject:v112];
                  v125 = [(MTLBVHGeometryDescriptor *)v112 primitiveCount];
                  if ([v110 primitiveDataBuffer] && objc_msgSend(v110, "primitiveDataElementSize"))
                  {
                    v126 = [(MTLBVHGeometryDescriptor *)v112 primitiveCount];
                    v157 += ([v110 primitiveDataElementSize] * v126 + 255) & 0xFFFFFFFFFFFFFF00;
                  }

                  v11 += v125;
                }

                v107 = [v105 countByEnumeratingWithState:&v167 objects:v187 count:16];
              }

              while (v107);
              goto LABEL_144;
            }
          }

          else
          {
            v127 = objc_opt_class();
            LODWORD(v127) = [v127 isSubclassOfClass:objc_opt_class()];
            [(MTLBVHDescriptor *)v156 setMaxPrimitivesPerLeaf:1];
            [(MTLBVHDescriptor *)v156 setMinPrimitivesPerLeaf:1];
            if (v127)
            {
              v165 = 0uLL;
              v166 = 0uLL;
              v163 = 0uLL;
              v164 = 0uLL;
              v128 = [a1 geometryDescriptors];
              v129 = [v128 countByEnumeratingWithState:&v163 objects:v186 count:16];
              if (v129)
              {
                v130 = v129;
                v157 = 0;
                v11 = 0;
                v131 = *v164;
                do
                {
                  for (m = 0; m != v130; ++m)
                  {
                    if (*v164 != v131)
                    {
                      objc_enumerationMutation(v128);
                    }

                    v133 = *(*(&v163 + 1) + 8 * m);
                    v134 = [(MTLBVHDescriptor *)v156 primitiveKeyframeCount];
                    if (v134 != [objc_msgSend(v133 "boundingBoxBuffers")])
                    {
                      MTLBVHDescriptorForMTLAccelerationStructureDescriptor_cold_2(v156, v133);
                    }

                    v135 = objc_alloc_init(MTLBVHBoundingBoxGeometryDescriptor);
                    if ([objc_msgSend(v133 "boundingBoxBuffers")])
                    {
                      v136 = [v133 boundingBoxBuffers];
                    }

                    else
                    {
                      v137 = objc_alloc_init(MTLMotionKeyframeData);
                      [(MTLMotionKeyframeData *)v137 setBuffer:0];
                      [(MTLMotionKeyframeData *)v137 setOffset:0];
                      v136 = [MEMORY[0x1E695DEC8] arrayWithObject:v137];
                    }

                    [(MTLBVHBoundingBoxGeometryDescriptor *)v135 setBoundingBoxBuffers:v136];
                    -[MTLBVHBoundingBoxGeometryDescriptor setBoundingBoxStride:](v135, "setBoundingBoxStride:", [v133 boundingBoxStride]);
                    -[MTLBVHGeometryDescriptor setPrimitiveCount:](v135, "setPrimitiveCount:", [v133 boundingBoxCount]);
                    v138 = [v133 primitiveDataBuffer];
                    if (v138)
                    {
                      [(MTLBVHGeometryDescriptor *)v135 setPrimitiveDataBuffer:v138];
                      -[MTLBVHGeometryDescriptor setPrimitiveDataBufferOffset:](v135, "setPrimitiveDataBufferOffset:", [v133 primitiveDataBufferOffset]);
                      -[MTLBVHGeometryDescriptor setPrimitiveDataStride:](v135, "setPrimitiveDataStride:", [v133 primitiveDataStride]);
                      -[MTLBVHGeometryDescriptor setPrimitiveDataElementSize:](v135, "setPrimitiveDataElementSize:", [v133 primitiveDataElementSize]);
                    }

                    [v158 addObject:v135];
                    v139 = [(MTLBVHGeometryDescriptor *)v135 primitiveCount];
                    if ([v133 primitiveDataBuffer] && objc_msgSend(v133, "primitiveDataElementSize"))
                    {
                      v140 = [(MTLBVHGeometryDescriptor *)v135 primitiveCount];
                      v157 += ([v133 primitiveDataElementSize] * v140 + 255) & 0xFFFFFFFFFFFFFF00;
                    }

                    v11 += v139;
                  }

                  v130 = [v128 countByEnumeratingWithState:&v163 objects:v186 count:16];
                }

                while (v130);
                goto LABEL_144;
              }
            }

            else
            {
              v161 = 0uLL;
              v162 = 0uLL;
              v159 = 0uLL;
              v160 = 0uLL;
              v141 = [a1 geometryDescriptors];
              v142 = [v141 countByEnumeratingWithState:&v159 objects:v185 count:16];
              if (v142)
              {
                v143 = v142;
                v157 = 0;
                v11 = 0;
                v144 = *v160;
                objb = 255;
                do
                {
                  for (n = 0; n != v143; ++n)
                  {
                    if (*v160 != v144)
                    {
                      objc_enumerationMutation(v141);
                    }

                    v146 = *(*(&v159 + 1) + 8 * n);
                    if ([(MTLBVHDescriptor *)v156 primitiveKeyframeCount]!= 1)
                    {
                      MTLBVHDescriptorForMTLAccelerationStructureDescriptor_cold_1(v156);
                    }

                    v147 = objc_alloc_init(MTLBVHBoundingBoxGeometryDescriptor);
                    v148 = objc_alloc_init(MTLMotionKeyframeData);
                    -[MTLMotionKeyframeData setBuffer:](v148, "setBuffer:", [v146 boundingBoxBuffer]);
                    -[MTLMotionKeyframeData setOffset:](v148, "setOffset:", [v146 boundingBoxBufferOffset]);
                    -[MTLBVHBoundingBoxGeometryDescriptor setBoundingBoxBuffers:](v147, "setBoundingBoxBuffers:", [MEMORY[0x1E695DEC8] arrayWithObject:v148]);
                    -[MTLBVHBoundingBoxGeometryDescriptor setBoundingBoxStride:](v147, "setBoundingBoxStride:", [v146 boundingBoxStride]);
                    -[MTLBVHGeometryDescriptor setPrimitiveCount:](v147, "setPrimitiveCount:", [v146 boundingBoxCount]);
                    v149 = [v146 primitiveDataBuffer];
                    if (v149)
                    {
                      [(MTLBVHGeometryDescriptor *)v147 setPrimitiveDataBuffer:v149];
                      -[MTLBVHGeometryDescriptor setPrimitiveDataBufferOffset:](v147, "setPrimitiveDataBufferOffset:", [v146 primitiveDataBufferOffset]);
                      -[MTLBVHGeometryDescriptor setPrimitiveDataStride:](v147, "setPrimitiveDataStride:", [v146 primitiveDataStride]);
                      -[MTLBVHGeometryDescriptor setPrimitiveDataElementSize:](v147, "setPrimitiveDataElementSize:", [v146 primitiveDataElementSize]);
                    }

                    [v158 addObject:v147];
                    v150 = [(MTLBVHGeometryDescriptor *)v147 primitiveCount];
                    if ([v146 primitiveDataBuffer] && objc_msgSend(v146, "primitiveDataElementSize"))
                    {
                      v151 = [(MTLBVHGeometryDescriptor *)v147 primitiveCount];
                      v157 += (objb + [v146 primitiveDataElementSize] * v151) & 0xFFFFFFFFFFFFFF00;
                    }

                    v11 += v150;
                  }

                  v143 = [v141 countByEnumeratingWithState:&v159 objects:v185 count:16];
                }

                while (v143);
                goto LABEL_144;
              }
            }
          }
        }
      }

      v11 = 0;
      v157 = 0;
    }

LABEL_144:
    v34 = v156;
    [(MTLBVHDescriptor *)v156 setSplitHeuristic:2];
    LODWORD(v103) = 1.0;
    goto LABEL_145;
  }

  return v156;
}

uint64_t ___ZL41refitUpdatesOpacityAndFunctionTableOffsetv_block_invoke()
{
  result = dyld_program_sdk_at_least();
  refitUpdatesOpacityAndFunctionTableOffset(void)::useNewRefitBehavior = result;
  return result;
}

void *PipelineCache<PipelineKey>::getPipeline(uint64_t a1, uint64_t a2, void *a3)
{
  os_unfair_lock_lock((a1 + 84));
  v6 = *(a2 + 16);
  v12[0] = *a2;
  v12[1] = v6;
  v13 = *(a2 + 32);
  v7 = std::__hash_table<std::__hash_value_type<PipelineCache<PipelineKey>::HashKey,PipelineValue>,std::__unordered_map_hasher<PipelineCache<PipelineKey>::HashKey,std::__hash_value_type<PipelineCache<PipelineKey>::HashKey,PipelineValue>,PipelineCache<PipelineKey>::Hasher,std::equal_to<PipelineCache<PipelineKey>::HashKey>,true>,std::__unordered_map_equal<PipelineCache<PipelineKey>::HashKey,std::__hash_value_type<PipelineCache<PipelineKey>::HashKey,PipelineValue>,std::equal_to<PipelineCache<PipelineKey>::HashKey>,PipelineCache<PipelineKey>::Hasher,true>,std::allocator<std::__hash_value_type<PipelineCache<PipelineKey>::HashKey,PipelineValue>>>::find<PipelineCache<PipelineKey>::HashKey>(a1, v12);
  if (v7)
  {
    v8 = v7;
    os_unfair_lock_unlock((a1 + 84));
    if (a3)
    {
      *a3 = v8[8];
    }

    return v8[7];
  }

  else
  {
    v10 = *(a1 + 72);
    if (!v10)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    v9 = (*(*v10 + 48))(v10, a2);
    PipelineCache<PipelineKey>::addPipeline(a1, a2, v9);
    os_unfair_lock_unlock((a1 + 84));
    if (a3)
    {
      *a3 = [v9 threadExecutionWidth];
    }
  }

  return v9;
}

void *PipelineCache<PipelineKey>::addPipeline(void *a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v7 = [a3 threadExecutionWidth];
  v8 = *(a2 + 16);
  v10[0] = *a2;
  v10[1] = v8;
  v11 = *(a2 + 32);
  v12 = v10;
  result = std::__hash_table<std::__hash_value_type<PipelineCache<PipelineKey>::HashKey,PipelineValue>,std::__unordered_map_hasher<PipelineCache<PipelineKey>::HashKey,std::__hash_value_type<PipelineCache<PipelineKey>::HashKey,PipelineValue>,PipelineCache<PipelineKey>::Hasher,std::equal_to<PipelineCache<PipelineKey>::HashKey>,true>,std::__unordered_map_equal<PipelineCache<PipelineKey>::HashKey,std::__hash_value_type<PipelineCache<PipelineKey>::HashKey,PipelineValue>,std::equal_to<PipelineCache<PipelineKey>::HashKey>,PipelineCache<PipelineKey>::Hasher,true>,std::allocator<std::__hash_value_type<PipelineCache<PipelineKey>::HashKey,PipelineValue>>>::__emplace_unique_key_args<PipelineCache<PipelineKey>::HashKey,std::piecewise_construct_t const&,std::tuple<PipelineCache<PipelineKey>::HashKey&&>,std::tuple<>>(a1, v10, &std::piecewise_construct, &v12);
  result[7] = v6;
  result[8] = v7;
  return result;
}

void *std::__hash_table<std::__hash_value_type<PipelineCache<PipelineKey>::HashKey,PipelineValue>,std::__unordered_map_hasher<PipelineCache<PipelineKey>::HashKey,std::__hash_value_type<PipelineCache<PipelineKey>::HashKey,PipelineValue>,PipelineCache<PipelineKey>::Hasher,std::equal_to<PipelineCache<PipelineKey>::HashKey>,true>,std::__unordered_map_equal<PipelineCache<PipelineKey>::HashKey,std::__hash_value_type<PipelineCache<PipelineKey>::HashKey,PipelineValue>,std::equal_to<PipelineCache<PipelineKey>::HashKey>,PipelineCache<PipelineKey>::Hasher,true>,std::allocator<std::__hash_value_type<PipelineCache<PipelineKey>::HashKey,PipelineValue>>>::find<PipelineCache<PipelineKey>::HashKey>(void *a1, int *a2)
{
  v4 = _MTLHashState(a2, 0x28uLL);
  v5 = a1[1];
  if (!v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v5 <= v4)
    {
      v9 = v4 % v5;
    }
  }

  else
  {
    v9 = (v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  v11 = *v10;
  if (*v10)
  {
    do
    {
      v12 = v11[1];
      if (v12 == v6)
      {
        if (!memcmp(v11 + 2, a2, 0x28uLL))
        {
          return v11;
        }
      }

      else
      {
        if (v8 > 1)
        {
          if (v12 >= v5)
          {
            v12 %= v5;
          }
        }

        else
        {
          v12 &= v5 - 1;
        }

        if (v12 != v9)
        {
          return 0;
        }
      }

      v11 = *v11;
    }

    while (v11);
  }

  return v11;
}

void std::__throw_bad_function_call[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x1E69E5558] + 16;
  __cxa_throw(exception, MEMORY[0x1E69E53C0], MEMORY[0x1E69E52E8]);
}

void *std::__hash_table<std::__hash_value_type<PipelineCache<PipelineKey>::HashKey,PipelineValue>,std::__unordered_map_hasher<PipelineCache<PipelineKey>::HashKey,std::__hash_value_type<PipelineCache<PipelineKey>::HashKey,PipelineValue>,PipelineCache<PipelineKey>::Hasher,std::equal_to<PipelineCache<PipelineKey>::HashKey>,true>,std::__unordered_map_equal<PipelineCache<PipelineKey>::HashKey,std::__hash_value_type<PipelineCache<PipelineKey>::HashKey,PipelineValue>,std::equal_to<PipelineCache<PipelineKey>::HashKey>,PipelineCache<PipelineKey>::Hasher,true>,std::allocator<std::__hash_value_type<PipelineCache<PipelineKey>::HashKey,PipelineValue>>>::__emplace_unique_key_args<PipelineCache<PipelineKey>::HashKey,std::piecewise_construct_t const&,std::tuple<PipelineCache<PipelineKey>::HashKey&&>,std::tuple<>>(void *a1, int *a2, uint64_t a3, _OWORD **a4)
{
  v6 = _MTLHashState(a2, 0x28uLL);
  v7 = v6;
  v8 = a1[1];
  if (!v8)
  {
    goto LABEL_18;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v6;
    if (v8 <= v6)
    {
      v11 = v6 % v8;
    }
  }

  else
  {
    v11 = (v8 - 1) & v6;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v14 = v13[1];
    if (v14 == v7)
    {
      break;
    }

    if (v10 > 1)
    {
      if (v14 >= v8)
      {
        v14 %= v8;
      }
    }

    else
    {
      v14 &= v8 - 1;
    }

    if (v14 != v11)
    {
      goto LABEL_18;
    }

LABEL_17:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_18;
    }
  }

  if (memcmp(v13 + 2, a2, 0x28uLL))
  {
    goto LABEL_17;
  }

  return v13;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<PipelineCache<PipelineKey>::HashKey,PipelineValue>,void *>>>::operator()[abi:ne200100](uint64_t a1, id *a2)
{
  if (*(a1 + 8) == 1)
  {
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

void *std::__function::__value_func<objc_object  {objcproto23MTLComputePipelineState}* ()(PipelineKey const&)>::swap[abi:ne200100](void *result, void *a2)
{
  v5[3] = *MEMORY[0x1E69E9840];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_185C43F4C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__value_func<objc_object  {objcproto23MTLComputePipelineState}* ()(PipelineKey const&)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void *PipelineCache<PipelineKey>::getPipeline(uint64_t a1, unsigned __int8 a2, unint64_t a3, int a4)
{
  v11 = 0u;
  v12 = 0u;
  if (!a3)
  {
    a3 = *(a1 + 40);
  }

  v7 = log2(a3);
  v8 = 0x1000000000;
  if (!a4)
  {
    v8 = 0;
  }

  v10 = v8 & 0xFFFFFFFFFFFFFF00 | ((v7 & 0xF) << 45) | a2;
  return PipelineCache<PipelineKey>::getPipeline(a1, &v10);
}

void std::vector<unsigned long>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<MTLTagType>>(a1, v10);
    }

    v11 = (8 * (v7 >> 3));
    bzero(v11, 8 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[8 * a2];
    *(a1 + 16) = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

void std::__hash_table<std::__hash_value_type<PipelineCache<PipelineKey>::HashKey,PipelineValue>,std::__unordered_map_hasher<PipelineCache<PipelineKey>::HashKey,std::__hash_value_type<PipelineCache<PipelineKey>::HashKey,PipelineValue>,PipelineCache<PipelineKey>::Hasher,std::equal_to<PipelineCache<PipelineKey>::HashKey>,true>,std::__unordered_map_equal<PipelineCache<PipelineKey>::HashKey,std::__hash_value_type<PipelineCache<PipelineKey>::HashKey,PipelineValue>,std::equal_to<PipelineCache<PipelineKey>::HashKey>,PipelineCache<PipelineKey>::Hasher,true>,std::allocator<std::__hash_value_type<PipelineCache<PipelineKey>::HashKey,PipelineValue>>>::clear(uint64_t result)
{
  if (*(result + 24))
  {
    std::__hash_table<std::__hash_value_type<PipelineCache<PipelineKey>::HashKey,PipelineValue>,std::__unordered_map_hasher<PipelineCache<PipelineKey>::HashKey,std::__hash_value_type<PipelineCache<PipelineKey>::HashKey,PipelineValue>,PipelineCache<PipelineKey>::Hasher,std::equal_to<PipelineCache<PipelineKey>::HashKey>,true>,std::__unordered_map_equal<PipelineCache<PipelineKey>::HashKey,std::__hash_value_type<PipelineCache<PipelineKey>::HashKey,PipelineValue>,std::equal_to<PipelineCache<PipelineKey>::HashKey>,PipelineCache<PipelineKey>::Hasher,true>,std::allocator<std::__hash_value_type<PipelineCache<PipelineKey>::HashKey,PipelineValue>>>::__deallocate_node(result, *(result + 16));
    *(result + 16) = 0;
    v2 = *(result + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*result + 8 * i) = 0;
      }
    }

    *(result + 24) = 0;
  }
}

void std::__hash_table<std::__hash_value_type<PipelineCache<PipelineKey>::HashKey,PipelineValue>,std::__unordered_map_hasher<PipelineCache<PipelineKey>::HashKey,std::__hash_value_type<PipelineCache<PipelineKey>::HashKey,PipelineValue>,PipelineCache<PipelineKey>::Hasher,std::equal_to<PipelineCache<PipelineKey>::HashKey>,true>,std::__unordered_map_equal<PipelineCache<PipelineKey>::HashKey,std::__hash_value_type<PipelineCache<PipelineKey>::HashKey,PipelineValue>,std::equal_to<PipelineCache<PipelineKey>::HashKey>,PipelineCache<PipelineKey>::Hasher,true>,std::allocator<std::__hash_value_type<PipelineCache<PipelineKey>::HashKey,PipelineValue>>>::__deallocate_node(uint64_t a1, id *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<PipelineCache<PipelineKey>::HashKey,PipelineValue>,std::__unordered_map_hasher<PipelineCache<PipelineKey>::HashKey,std::__hash_value_type<PipelineCache<PipelineKey>::HashKey,PipelineValue>,PipelineCache<PipelineKey>::Hasher,std::equal_to<PipelineCache<PipelineKey>::HashKey>,true>,std::__unordered_map_equal<PipelineCache<PipelineKey>::HashKey,std::__hash_value_type<PipelineCache<PipelineKey>::HashKey,PipelineValue>,std::equal_to<PipelineCache<PipelineKey>::HashKey>,PipelineCache<PipelineKey>::Hasher,true>,std::allocator<std::__hash_value_type<PipelineCache<PipelineKey>::HashKey,PipelineValue>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<PipelineCache<PipelineKey>::HashKey,PipelineValue>,std::__unordered_map_hasher<PipelineCache<PipelineKey>::HashKey,std::__hash_value_type<PipelineCache<PipelineKey>::HashKey,PipelineValue>,PipelineCache<PipelineKey>::Hasher,std::equal_to<PipelineCache<PipelineKey>::HashKey>,true>,std::__unordered_map_equal<PipelineCache<PipelineKey>::HashKey,std::__hash_value_type<PipelineCache<PipelineKey>::HashKey,PipelineValue>,std::equal_to<PipelineCache<PipelineKey>::HashKey>,PipelineCache<PipelineKey>::Hasher,true>,std::allocator<std::__hash_value_type<PipelineCache<PipelineKey>::HashKey,PipelineValue>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

MTLStructType *MTLCreateStructTypeFromArgumentDescriptors(void *a1)
{
  std::vector<MTLStructMember *>::vector[abi:ne200100](__p, [a1 count]);
  v2 = 0;
  v3 = 0;
  v4 = 0;
  while (v2 < [a1 count])
  {
    v43 = [a1 objectAtIndexedSubscript:v2];
    v5 = [v43 dataType];
    if (v5 <= 79)
    {
      if (v5 <= 59)
      {
        if (v5 == 58)
        {
          LOBYTE(v35) = 0;
          v42 = -[MTLTextureBindingInternal initWithName:access:isActive:locationIndex:arraySize:dataType:textureType:isDepthTexture:]([MTLTextureBindingInternal alloc], "initWithName:access:isActive:locationIndex:arraySize:dataType:textureType:isDepthTexture:", &stru_1EF478240, [v43 access], 1, objc_msgSend(v43, "index"), 1, 3, objc_msgSend(v43, "textureType"), v35);
LABEL_29:
          v3 = 0;
          Alignment = 8;
          Size = 8;
          goto LABEL_30;
        }

        if (v5 == 59)
        {
          v10 = [MTLBindingInternal alloc];
          v41 = [v43 access];
          v11 = [v43 index];
          v12 = 3;
          goto LABEL_28;
        }

        if (v5 < 3)
        {
          MTLReportFailure(0, "MTLCreateStructTypeFromArgumentDescriptors", 469, @"Invalid argument type at index %lu", v6, v7, v8, v9, v2);
          abort();
        }
      }

      else
      {
        switch(v5)
        {
          case '<':
            LOBYTE(v37) = 0;
            v42 = -[MTLBufferBindingInternal initWithName:type:access:isActive:locationIndex:arraySize:dataType:pixelFormat:aluType:isConstantBuffer:dataSize:alignment:]([MTLBufferBindingInternal alloc], "initWithName:type:access:isActive:locationIndex:arraySize:dataType:pixelFormat:aluType:isConstantBuffer:dataSize:alignment:", &stru_1EF478240, 0, [v43 access], 1, objc_msgSend(v43, "index"), 1, 0, 0, 0, v37, 0, 1);
            goto LABEL_29;
          case 'N':
            v10 = [MTLBindingInternal alloc];
            v41 = [v43 access];
            v11 = [v43 index];
            v12 = 19;
LABEL_28:
            v42 = [(MTLBindingInternal *)v10 initWithName:&stru_1EF478240 type:v12 access:v41 index:v11 active:1 arrayLength:1];
            goto LABEL_29;
          case 'O':
            v10 = [MTLBindingInternal alloc];
            v41 = [v43 access];
            v11 = [v43 index];
            v12 = 20;
            goto LABEL_28;
        }
      }
    }

    else if (v5 > 116)
    {
      switch(v5)
      {
        case 117:
          v10 = [MTLBindingInternal alloc];
          v41 = [v43 access];
          v11 = [v43 index];
          v12 = 25;
          goto LABEL_28;
        case 118:
          v10 = [MTLBindingInternal alloc];
          v41 = [v43 access];
          v11 = [v43 index];
          v12 = 26;
          goto LABEL_28;
        case 139:
          v10 = [MTLBindingInternal alloc];
          v41 = [v43 access];
          v11 = [v43 index];
          v12 = 36;
          goto LABEL_28;
      }
    }

    else
    {
      switch(v5)
      {
        case 'P':
          v10 = [MTLBindingInternal alloc];
          v41 = [v43 access];
          v11 = [v43 index];
          v12 = 21;
          goto LABEL_28;
        case 's':
          v10 = [MTLBindingInternal alloc];
          v41 = [v43 access];
          v11 = [v43 index];
          v12 = 24;
          goto LABEL_28;
        case 't':
          v10 = [MTLBindingInternal alloc];
          v41 = [v43 access];
          v11 = [v43 index];
          v12 = 27;
          goto LABEL_28;
      }
    }

    v18 = [v43 dataType];
    if ((v18 - 3) >= 0x36 && ((v18 - 81) > 0x36 || ((1 << (v18 - 81)) & 0x7FCF00000000FFLL) == 0) && (v18 - 62) >= 0x10)
    {
      v25 = MTLDataTypeString([v43 dataType]);
      MTLReportFailure(0, "MTLCreateStructTypeFromArgumentDescriptors", 437, @"dataType (%@) is not a valid data type", v26, v27, v28, v29, v25);
    }

    Size = MTLDataTypeGetSize([v43 dataType]);
    Alignment = MTLDataTypeGetAlignment([v43 dataType]);
    if ([v43 constantBlockAlignment])
    {
      if (v3)
      {
        MTLReportFailure(0, "MTLCreateStructTypeFromArgumentDescriptors", 445, @"Constant block alignment can only be set the first constant in a constant block", v19, v20, v21, v22, v34);
      }

      v23 = [v43 constantBlockAlignment];
      v24 = Alignment;
      if (Alignment <= v23)
      {
        v24 = v23;
      }

      Alignment = v24;
    }

    v42 = -[MTLIndirectConstantArgument initWithName:type:access:isActive:locationIndex:dataType:pixelFormat:aluType:dataSize:alignment:]([MTLIndirectConstantArgument alloc], "initWithName:type:access:isActive:locationIndex:dataType:pixelFormat:aluType:dataSize:alignment:", &stru_1EF478240, 4, [v43 access], 1, objc_msgSend(v43, "index"), objc_msgSend(v43, "dataType"), 0, 0, Size, MTLDataTypeGetAlignment(objc_msgSend(v43, "dataType")));
    v3 = 1;
LABEL_30:
    v13 = [v43 arrayLength];
    v14 = v4 + Alignment - 1;
    v15 = v14 & -Alignment;
    if (v13)
    {
      v39 = v14 & -Alignment;
      v35 = 0xFFFFFFFFLL;
      v36 = -[MTLArrayTypeInternal initWithArrayLength:elementType:stride:pixelFormat:aluType:details:]([MTLArrayTypeInternal alloc], "initWithArrayLength:elementType:stride:pixelFormat:aluType:details:", [v43 arrayLength], 57, Size, 0, 0, v42);
      v34 = 0xFFFFFFFFLL;
      v16 = [MTLStructMemberInternal initWithName:"initWithName:offset:dataType:pixelFormat:aluType:indirectArgumentIndex:render_target:raster_order_group:details:" offset:&stru_1EF478240 dataType:v39 pixelFormat:2 aluType:0 indirectArgumentIndex:0 render_target:[(MTLBindingInternal *)v42 index] raster_order_group:? details:?];
      *(__p[0] + v2) = v16;

      Size *= [v43 arrayLength];
      v15 = v39;
    }

    else
    {
      v35 = 0xFFFFFFFFLL;
      v34 = 0xFFFFFFFFLL;
      v17 = [MTLStructMemberInternal initWithName:"initWithName:offset:dataType:pixelFormat:aluType:indirectArgumentIndex:render_target:raster_order_group:details:" offset:&stru_1EF478240 dataType:v15 pixelFormat:57 aluType:0 indirectArgumentIndex:0 render_target:[(MTLBindingInternal *)v42 index] raster_order_group:? details:?];
      *(__p[0] + v2) = v17;
    }

    v4 = Size + v15;
    ++v2;
  }

  v30 = [MTLStructType alloc];
  v31 = -[MTLStructType initWithMembers:count:](v30, "initWithMembers:count:", __p[0], [a1 count]);
  for (i = 0; [a1 count] > i; ++i)
  {
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return v31;
}

void sub_185C460F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MTLIndirectResourceEnumerator::collectIndirectResources(MTLIndirectResourceEnumerator *this, MTLPointerTypeInternal *a2)
{
  if ([(MTLPointerTypeInternal *)a2 elementIsArgumentBuffer]&& [(MTLPointerTypeInternal *)a2 elementTypeDescription])
  {
    (*(*this + 16))();
  }

  return 1;
}

unint64_t MTLIndirectResourceEnumerator::collectIndirectResources(MTLIndirectResourceEnumerator *this, MTLArrayType *a2, unint64_t a3)
{
  v6 = [(MTLArrayType *)a2 arrayLength];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = a3;
    while (1)
    {
      v10 = [(MTLArrayType *)a2 elementType];
      if (v10 <= MTLDataTypeSampler)
      {
        if (v10 - 58 >= 2)
        {
          if (v10 == MTLDataTypeStruct)
          {
            v9 += MTLIndirectResourceEnumerator::collectIndirectResources(this, [(MTLArrayType *)a2 elementStructType], v9);
            goto LABEL_16;
          }

          if (v10 == MTLDataTypeArray)
          {
            v9 += MTLIndirectResourceEnumerator::collectIndirectResources(this, [(MTLArrayType *)a2 elementArrayType], v9);
LABEL_12:
            v11 = [(MTLArrayType *)a2 elementTypeDescription];
            if ([v11 elementIsArgumentBuffer] && objc_msgSend(v11, "elementTypeDescription"))
            {
              (*(*this + 16))();
            }
          }
        }
      }

      else if ((v10 - 78 > 0x3D || ((1 << (v10 - 78)) & 0x2000000000000007) == 0) && v10 == MTLDataTypePointer)
      {
        goto LABEL_12;
      }

      ++v9;
LABEL_16:
      if (v9 > v8)
      {
        v8 = v9;
      }

      if (!--v7)
      {
        return v8 - a3;
      }
    }
  }

  v8 = 0;
  return v8 - a3;
}

char *MTLIndirectResourceEnumerator::collectIndirectResources(MTLIndirectResourceEnumerator *this, MTLStructType *a2, uint64_t a3)
{
  v24 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v4 = [(MTLStructType *)a2 members];
    v5 = [(NSArray *)v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = 0;
      v8 = *v20;
      while (1)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v20 != v8)
          {
            objc_enumerationMutation(v4);
          }

          v10 = *(*(&v19 + 1) + 8 * i);
          v11 = [v10 indirectArgumentIndex] + a3;
          v12 = [v10 dataType];
          if (v12 > 59)
          {
            if (((v12 - 78) > 0x3D || ((1 << (v12 - 78)) & 0x2000000000000007) == 0) && v12 == 60)
            {
              v14 = [v10 dataTypeDescription];
              if ([v14 elementIsArgumentBuffer])
              {
                if ([v14 elementTypeDescription])
                {
                  (*(*this + 16))();
                }
              }
            }

LABEL_21:
            v16 = v11 + 1;
            goto LABEL_24;
          }

          if ((v12 - 58) < 2)
          {
            goto LABEL_21;
          }

          if (v12 == 1)
          {
            v15 = MTLIndirectResourceEnumerator::collectIndirectResources(this, [v10 structType], v11);
          }

          else
          {
            if (v12 != 2)
            {
              goto LABEL_21;
            }

            v15 = MTLIndirectResourceEnumerator::collectIndirectResources(this, [v10 arrayType], v11);
          }

          v16 = v15 + v11;
LABEL_24:
          if (v16 > v7)
          {
            v7 = v16;
          }
        }

        v6 = [(NSArray *)v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (!v6)
        {
          return (v7 - a3);
        }
      }
    }
  }

  v7 = 0;
  return (v7 - a3);
}

uint64_t _MTLIndirectArgumentBufferLayoutPrivate::_MTLIndirectArgumentBufferLayoutPrivate(uint64_t a1, MTLStructType *a2, void *a3)
{
  *a1 = a3;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 1065353216;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = ___ZN39_MTLIndirectArgumentBufferLayoutPrivateC2EP13MTLStructTypePU23objcproto12MTLDeviceSPI11objc_object_block_invoke;
  v7[3] = &unk_1E6EEA960;
  v7[4] = a3;
  v7[5] = a1;
  v8 = v7;
  MTLIndirectResourceEnumerator::collectIndirectResources(&v8, a2, 0);
  return a1;
}

uint64_t ___ZN39_MTLIndirectArgumentBufferLayoutPrivateC2EP13MTLStructTypePU23objcproto12MTLDeviceSPI11objc_object_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = a3;
  v5 = *(a1 + 40);
  v6 = [*(a1 + 32) newIndirectArgumentBufferLayoutWithStructType:a2];
  v9 = &v8;
  std::__hash_table<std::__hash_value_type<unsigned long,_MTLIndirectArgumentBufferLayout *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,_MTLIndirectArgumentBufferLayout *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,_MTLIndirectArgumentBufferLayout *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,_MTLIndirectArgumentBufferLayout *>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>((v5 + 8), &v8, &std::piecewise_construct, &v9)[3] = v6;
  return [v6 setStructType:a2 withDevice:*(a1 + 32)];
}

void _MTLIndirectArgumentBufferLayoutPrivate::~_MTLIndirectArgumentBufferLayoutPrivate(id *this)
{
  for (i = this + 3; ; i[3])
  {
    i = *i;
    if (!i)
    {
      break;
    }
  }

  *this = 0;
  std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::~__hash_table((this + 1));
}

void *_MTLIndirectArgumentBufferLayoutPrivate::bufferLayoutForResourceAtIndex(_MTLIndirectArgumentBufferLayoutPrivate *this, unint64_t a2)
{
  v3 = a2;
  result = std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::find<unsigned long>(this + 1, &v3);
  if (result)
  {
    return result[3];
  }

  return result;
}

uint64_t assignArgumentIndices(unint64_t a1, void *a2, void *a3)
{
  v6 = [a2 type];
  if (v6 > 23)
  {
    if (v6 > 25)
    {
      if (v6 == 27)
      {
        if ([a2 arrayLength])
        {
          v32 = 0;
          do
          {
            v33 = a3[5];
            v34 = v33[3];
            v37 = a1;
            v38 = &v37;
            std::__hash_table<std::__hash_value_type<unsigned long,unsigned long>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned long>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long &&>,std::tuple<>>(v33, &v37, &std::piecewise_construct, &v38)[3] = v34;
            ++v32;
            ++a1;
          }

          while ([a2 arrayLength] > v32);
        }
      }

      else
      {
        if (v6 != 26)
        {
          goto LABEL_43;
        }

        if ([a2 arrayLength])
        {
          v20 = 0;
          do
          {
            v21 = a3[7];
            v22 = v21[3];
            v37 = a1;
            v38 = &v37;
            std::__hash_table<std::__hash_value_type<unsigned long,unsigned long>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned long>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long &&>,std::tuple<>>(v21, &v37, &std::piecewise_construct, &v38)[3] = v22;
            ++v20;
            ++a1;
          }

          while ([a2 arrayLength] > v20);
        }
      }
    }

    else if (v6 == 24)
    {
      if ([a2 arrayLength])
      {
        v26 = 0;
        do
        {
          v27 = a3[4];
          v28 = v27[3];
          v37 = a1;
          v38 = &v37;
          std::__hash_table<std::__hash_value_type<unsigned long,unsigned long>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned long>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long &&>,std::tuple<>>(v27, &v37, &std::piecewise_construct, &v38)[3] = v28;
          ++v26;
          ++a1;
        }

        while ([a2 arrayLength] > v26);
      }
    }

    else if ([a2 arrayLength])
    {
      v14 = 0;
      do
      {
        v15 = a3[6];
        v16 = v15[3];
        v37 = a1;
        v38 = &v37;
        std::__hash_table<std::__hash_value_type<unsigned long,unsigned long>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned long>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long &&>,std::tuple<>>(v15, &v37, &std::piecewise_construct, &v38)[3] = v16;
        ++v14;
        ++a1;
      }

      while ([a2 arrayLength] > v14);
    }
  }

  else if (v6 > 2)
  {
    if (v6 == 3)
    {
      if ([a2 arrayLength])
      {
        v29 = 0;
        do
        {
          v30 = a3[2];
          v31 = v30[3];
          v37 = a1;
          v38 = &v37;
          std::__hash_table<std::__hash_value_type<unsigned long,unsigned long>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned long>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long &&>,std::tuple<>>(v30, &v37, &std::piecewise_construct, &v38)[3] = v31;
          ++v29;
          ++a1;
        }

        while ([a2 arrayLength] > v29);
      }
    }

    else
    {
      if (v6 != 4)
      {
        goto LABEL_43;
      }

      if ([a2 arrayLength])
      {
        v17 = 0;
        do
        {
          v18 = a3[3];
          v19 = v18[3];
          v37 = a1;
          v38 = &v37;
          std::__hash_table<std::__hash_value_type<unsigned long,unsigned long>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned long>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long &&>,std::tuple<>>(v18, &v37, &std::piecewise_construct, &v38)[3] = v19;
          ++v17;
          ++a1;
        }

        while ([a2 arrayLength] > v17);
      }
    }
  }

  else
  {
    if (v6)
    {
      if (v6 == 2)
      {
        if ([a2 arrayLength])
        {
          v11 = 0;
          do
          {
            v12 = a3[1];
            v13 = v12[3];
            v37 = a1;
            v38 = &v37;
            std::__hash_table<std::__hash_value_type<unsigned long,unsigned long>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned long>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long &&>,std::tuple<>>(v12, &v37, &std::piecewise_construct, &v38)[3] = v13;
            ++v11;
            ++a1;
          }

          while ([a2 arrayLength] > v11);
        }

        return [a2 arrayLength];
      }

LABEL_43:
      MTLReportFailure(0, "assignArgumentIndices", 1157, @"Unexpected data type in indirect argument buffer", v7, v8, v9, v10, v36);
      return [a2 arrayLength];
    }

    if ([a2 arrayLength])
    {
      v23 = 0;
      do
      {
        v24 = *a3;
        v25 = *(*a3 + 24);
        v37 = a1;
        v38 = &v37;
        std::__hash_table<std::__hash_value_type<unsigned long,unsigned long>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned long>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long &&>,std::tuple<>>(v24, &v37, &std::piecewise_construct, &v38)[3] = v25;
        ++v23;
        ++a1;
      }

      while ([a2 arrayLength] > v23);
    }
  }

  return [a2 arrayLength];
}

unint64_t assignArrayIndices(unint64_t a1, void *a2, uint64_t *a3)
{
  if ([a2 arrayLength])
  {
    v6 = 0;
    v7 = 0;
    v8 = a1;
    while (1)
    {
      v9 = [a2 elementType];
      if (v9 > 59)
      {
        break;
      }

      if (v9 <= 56)
      {
        if (v9 == 1)
        {
          v11 = assignStructIndices(v8, [a2 elementStructType], a3);
        }

        else
        {
          if (v9 != 2)
          {
            goto LABEL_26;
          }

          v11 = assignArrayIndices(v8, [a2 elementArrayType], a3);
        }
      }

      else
      {
        if (v9 != 57)
        {
          if (v9 == 58)
          {
            v10 = a3[1];
          }

          else
          {
            v10 = a3[2];
          }

          goto LABEL_27;
        }

        v11 = assignArgumentIndices(v8, [a2 elementIndirectArgumentType], a3);
      }

      v8 += v11;
LABEL_28:
      if (v7 <= v8)
      {
        v7 = v8;
      }

      if (++v6 >= [a2 arrayLength])
      {
        return v7 - a1;
      }
    }

    if (v9 <= 115)
    {
      if (v9 == 60)
      {
        v10 = *a3;
        goto LABEL_27;
      }

      if (v9 == 115)
      {
        v10 = a3[4];
        goto LABEL_27;
      }
    }

    else
    {
      switch(v9)
      {
        case 't':
          v10 = a3[5];
          goto LABEL_27;
        case 'u':
          v10 = a3[6];
          goto LABEL_27;
        case 'v':
          v10 = a3[7];
LABEL_27:
          v12 = v10[3];
          v14 = v8;
          v15 = &v14;
          std::__hash_table<std::__hash_value_type<unsigned long,unsigned long>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned long>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long &&>,std::tuple<>>(v10, &v14, &std::piecewise_construct, &v15)[3] = v12;
          ++v8;
          goto LABEL_28;
      }
    }

LABEL_26:
    v10 = a3[3];
    goto LABEL_27;
  }

  v7 = 0;
  return v7 - a1;
}

char *assignStructIndices(uint64_t a1, void *a2, uint64_t *a3)
{
  v6 = 0;
  if ([objc_msgSend(a2 "members")])
  {
    v7 = 0;
    while (1)
    {
      v8 = [objc_msgSend(a2 "members")];
      v9 = [v8 indirectArgumentIndex] + a1;
      v10 = [v8 dataType];
      if (v10 > 59)
      {
        break;
      }

      if (v10 <= 56)
      {
        if (v10 == 1)
        {
          v12 = assignStructIndices(v9, [v8 structType], a3);
        }

        else
        {
          if (v10 != 2)
          {
            goto LABEL_26;
          }

          v12 = assignArrayIndices(v9, [v8 arrayType], a3);
        }
      }

      else
      {
        if (v10 != 57)
        {
          if (v10 == 58)
          {
            v11 = a3[1];
          }

          else
          {
            v11 = a3[2];
          }

          goto LABEL_27;
        }

        v12 = assignArgumentIndices(v9, [v8 indirectArgumentType], a3);
      }

      v13 = v12 + v9;
LABEL_28:
      if (v6 <= v13)
      {
        v6 = v13;
      }

      if (++v7 >= [objc_msgSend(a2 "members")])
      {
        return (v6 - a1);
      }
    }

    if (v10 <= 115)
    {
      if (v10 == 60)
      {
        v11 = *a3;
        goto LABEL_27;
      }

      if (v10 == 115)
      {
        v11 = a3[4];
        goto LABEL_27;
      }
    }

    else
    {
      switch(v10)
      {
        case 't':
          v11 = a3[5];
          goto LABEL_27;
        case 'u':
          v11 = a3[6];
          goto LABEL_27;
        case 'v':
          v11 = a3[7];
LABEL_27:
          v14 = v11[3];
          v13 = v9 + 1;
          v16 = v9;
          v17 = &v16;
          std::__hash_table<std::__hash_value_type<unsigned long,unsigned long>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned long>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long &&>,std::tuple<>>(v11, &v16, &std::piecewise_construct, &v17)[3] = v14;
          goto LABEL_28;
      }
    }

LABEL_26:
    v11 = a3[3];
    goto LABEL_27;
  }

  return (v6 - a1);
}

void countArgument(MTLArgument *a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, unint64_t *a5, unint64_t *a6, unint64_t *a7, unint64_t *a8, uint64_t a9)
{
  v17 = [(MTLArgument *)a1 type];
  if (v17 > (MTLArgumentTypeImageblock|MTLArgumentTypeTexture|0x4))
  {
    if (v17 <= MTLArgumentTypePrimitiveAccelerationStructure)
    {
      if (v17 == MTLArgumentTypeVisibleFunctionTable)
      {
        *a5 += [(MTLArgument *)a1 arrayLength];
      }

      else
      {
        *a7 += [(MTLArgument *)a1 arrayLength];
      }

      return;
    }

    if (v17 == MTLArgumentTypeInstanceAccelerationStructure)
    {
      *a8 += [(MTLArgument *)a1 arrayLength];
      return;
    }

    if (v17 == MTLArgumentTypeIntersectionFunctionTable)
    {
      *a6 += [(MTLArgument *)a1 arrayLength];
      return;
    }

    goto LABEL_20;
  }

  if (v17 <= MTLArgumentTypeTexture)
  {
    if (v17 == MTLArgumentTypeBuffer)
    {
      *a2 += [(MTLArgument *)a1 arrayLength];
      return;
    }

    if (v17 == MTLArgumentTypeTexture)
    {
      *a3 += [(MTLArgument *)a1 arrayLength];
      return;
    }

LABEL_20:

    MTLReportFailure(0, "countArgument", 1322, @"Unexpected data type in indirect argument buffer", v18, v19, v20, v21, a9);
    return;
  }

  if (v17 == MTLArgumentTypeSampler)
  {
    *a4 += [(MTLArgument *)a1 arrayLength];
    return;
  }

  if (v17 != 4)
  {
    goto LABEL_20;
  }
}

NSUInteger countArrayArguments(MTLArrayType *a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, unint64_t *a5, unint64_t *a6, unint64_t *a7, unint64_t *a8)
{
  result = [(MTLArrayType *)a1 arrayLength];
  if (result)
  {
    for (i = 0; i < result; ++i)
    {
      v18 = [(MTLArrayType *)a1 elementType];
      if (v18 > MTLDataTypeSampler)
      {
        if (v18 <= MTLDataTypeVisibleFunctionTable)
        {
          if (v18 == MTLDataTypePointer)
          {
            ++*a2;
          }

          else if (v18 == MTLDataTypeVisibleFunctionTable)
          {
            ++*a5;
          }
        }

        else
        {
          switch(v18)
          {
            case MTLDataTypeIntersectionFunctionTable:
              ++*a6;
              break;
            case MTLDataTypePrimitiveAccelerationStructure:
              ++*a7;
              break;
            case MTLDataTypeInstanceAccelerationStructure:
              ++*a8;
              break;
          }
        }
      }

      else if (v18 <= MTLDataTypeBool4)
      {
        if (v18 == MTLDataTypeStruct)
        {
          countStructArguments([(MTLArrayType *)a1 elementStructType], a2, a3, a4, a5, a6, a7, a8);
        }

        else if (v18 == MTLDataTypeArray)
        {
          countArrayArguments([(MTLArrayType *)a1 elementArrayType], a2, a3, a4, a5, a6, a7, a8);
        }
      }

      else if (v18 == (MTLDataTypeBool4|MTLDataTypeStruct))
      {
        countArgument([(MTLArrayType *)a1 elementIndirectArgumentType], a2, a3, a4, a5, a6, a7, a8, v19);
      }

      else if (v18 == MTLDataTypeTexture)
      {
        ++*a3;
      }

      else
      {
        ++*a4;
      }

      result = [(MTLArrayType *)a1 arrayLength];
    }
  }

  return result;
}

NSUInteger countStructArguments(MTLStructType *a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, unint64_t *a5, unint64_t *a6, unint64_t *a7, unint64_t *a8)
{
  result = [(NSArray *)[(MTLStructType *)a1 members] count];
  if (result)
  {
    for (i = 0; i < result; ++i)
    {
      v18 = [(NSArray *)[(MTLStructType *)a1 members] objectAtIndexedSubscript:i];
      v19 = [v18 dataType];
      if (v19 > 59)
      {
        if (v19 <= 115)
        {
          if (v19 == 60)
          {
            ++*a2;
          }

          else if (v19 == 115)
          {
            ++*a5;
          }
        }

        else
        {
          switch(v19)
          {
            case 't':
              ++*a6;
              break;
            case 'u':
              ++*a7;
              break;
            case 'v':
              ++*a8;
              break;
          }
        }
      }

      else if (v19 <= 56)
      {
        if (v19 == 1)
        {
          countStructArguments([v18 structType], a2, a3, a4, a5, a6, a7, a8);
        }

        else if (v19 == 2)
        {
          countArrayArguments([v18 arrayType], a2, a3, a4, a5, a6, a7, a8);
        }
      }

      else if (v19 == 57)
      {
        countArgument([v18 indirectArgumentType], a2, a3, a4, a5, a6, a7, a8, v20);
      }

      else if (v19 == 58)
      {
        ++*a3;
      }

      else
      {
        ++*a4;
      }

      result = [(NSArray *)[(MTLStructType *)a1 members] count];
    }
  }

  return result;
}

uint64_t getArgumentSizeAndAlign(uint64_t a1, unint64_t *a2, unint64_t *a3, BOOL *a4)
{
  *a2 = MTLDataTypeGetSize(a1);
  result = MTLDataTypeGetAlignment(a1);
  *a3 = result;
  return result;
}

NSUInteger getArraySizeAndAlign(MTLArrayType *a1, unint64_t *a2, unint64_t *a3, BOOL *a4)
{
  Alignment = 0;
  Size = 0;
  v8 = [(MTLArrayType *)a1 elementType];
  if (v8 - 57 <= 0x3D)
  {
    if (((1 << (v8 - 57)) & 0x3C0000000000000ELL) != 0)
    {
      Alignment = 1;
      Size = 0;
      *a4 = 0;
      goto LABEL_4;
    }

    if (v8 == (MTLDataTypeBool4|MTLDataTypeStruct))
    {
      goto LABEL_4;
    }
  }

  if (v8 == MTLDataTypeStruct)
  {
    getStructSizeAndAlign([(MTLArrayType *)a1 elementStructType], &Size, &Alignment, a4);
  }

  else if (v8 == MTLDataTypeArray)
  {
    getArraySizeAndAlign([(MTLArrayType *)a1 elementArrayType], &Size, &Alignment, a4);
  }

  else
  {
    *a4 = 1;
    v10 = [(MTLArrayType *)a1 elementType];
    Size = MTLDataTypeGetSize(v10);
    Alignment = MTLDataTypeGetAlignment(v10);
  }

LABEL_4:
  result = [(MTLArrayType *)a1 arrayLength];
  *a2 = Size * result;
  *a3 = Alignment;
  return result;
}

NSUInteger getStructSizeAndAlign(MTLStructType *a1, unint64_t *a2, unint64_t *a3, BOOL *a4)
{
  v8 = 1;
  *a4 = 1;
  result = [(NSArray *)[(MTLStructType *)a1 members] count];
  if (!result)
  {
    v16 = -1;
    goto LABEL_15;
  }

  v10 = 0;
  v11 = 0;
  v12 = 0;
  v8 = 1;
  do
  {
    v18 = 0;
    v19 = 0;
    v17 = 0;
    getStructMemberSizeAndAlignment([(NSArray *)[(MTLStructType *)a1 members] objectAtIndexedSubscript:v11], &v19, &v18, &v17);
    if (v12)
    {
      v13 = v18;
      v14 = (v10 + v18 - 1) & -v18;
      if (v17)
      {
        v12 = 1;
        goto LABEL_10;
      }
    }

    else
    {
      if (v17)
      {
        ConstantBlockAlignment = getConstantBlockAlignment([(MTLStructType *)a1 members], v11);
        v14 = (v10 + ConstantBlockAlignment - 1) & -ConstantBlockAlignment;
        v12 = 1;
        v13 = v18;
        goto LABEL_10;
      }

      v13 = v18;
      v14 = (v10 + v18 - 1) & -v18;
    }

    v12 = 0;
    *a4 = 0;
LABEL_10:
    v10 = v19 + v14;
    if (v8 <= v13)
    {
      v8 = v13;
    }

    ++v11;
    result = [(NSArray *)[(MTLStructType *)a1 members] count];
  }

  while (v11 < result);
  v16 = v10 - 1;
LABEL_15:
  *a2 = (v16 + v8) & -v8;
  *a3 = v8;
  return result;
}

uint64_t getStructMemberSizeAndAlignment(MTLStructMember *a1, unint64_t *a2, unint64_t *a3, BOOL *a4)
{
  result = [(MTLStructMember *)a1 dataType];
  if ((result - 57) > 0x3D)
  {
    goto LABEL_6;
  }

  if (((1 << (result - 57)) & 0x3C0000000000000ELL) != 0)
  {
    *a2 = 0;
    *a3 = 1;
    *a4 = 0;
    return result;
  }

  if (result != 57)
  {
LABEL_6:
    if (result == 1)
    {
      v10 = [(MTLStructMember *)a1 structType];

      return getStructSizeAndAlign(v10, a2, a3, a4);
    }

    else if (result == 2)
    {
      v9 = [(MTLStructMember *)a1 arrayType];

      return getArraySizeAndAlign(v9, a2, a3, a4);
    }

    else
    {
      *a4 = 1;
      v11 = [(MTLStructMember *)a1 dataType];
      *a2 = MTLDataTypeGetSize(v11);
      result = MTLDataTypeGetAlignment(v11);
      *a3 = result;
    }
  }

  return result;
}

unint64_t getConstantBlockAlignment(void *a1, uint64_t a2)
{
  v17 = 1;
  v16 = 1;
  getStructMemberSizeAndAlignment([a1 objectAtIndexedSubscript:a2], &v15, &v16, &v17);
  v4 = [a1 count];
  v5 = v16;
  if (v17 && a2 + 1 < v4)
  {
    v7 = v4;
    v8 = a2 + 2;
    do
    {
      v9 = [a1 objectAtIndexedSubscript:v8 - 1];
      v14 = 1;
      getStructMemberSizeAndAlignment(v9, &v13, &v14, &v17);
      v10 = v14;
      if (v5 > v14)
      {
        v10 = v5;
      }

      if (v17)
      {
        v5 = v10;
      }
    }

    while (v17 && v8++ < v7);
  }

  return v5;
}

void assignArgumentOffsets(uint64_t a1, uint64_t *a2, const void **a3)
{
  Size = MTLDataTypeGetSize(a1);
  Alignment = MTLDataTypeGetAlignment(a1);
  v8 = (Alignment + *a2 - 1) & -Alignment;
  *a2 = v8;
  v10 = a3[1];
  v9 = a3[2];
  if (v10 >= v9)
  {
    v12 = *a3;
    v13 = v10 - *a3;
    v14 = v13 >> 3;
    v15 = (v13 >> 3) + 1;
    if (v15 >> 61)
    {
      std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
    }

    v16 = v9 - v12;
    if (v16 >> 2 > v15)
    {
      v15 = v16 >> 2;
    }

    v17 = v16 >= 0x7FFFFFFFFFFFFFF8;
    v18 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v17)
    {
      v18 = v15;
    }

    if (v18)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<MTLTagType>>(a3, v18);
    }

    *(8 * v14) = v8;
    v11 = (8 * v14 + 8);
    memcpy(0, v12, v13);
    v19 = *a3;
    *a3 = 0;
    a3[1] = v11;
    a3[2] = 0;
    if (v19)
    {
      operator delete(v19);
    }
  }

  else
  {
    *v10 = v8;
    v11 = v10 + 8;
  }

  a3[1] = v11;
  *a2 += Size;
}

void *assignArrayOffsets(MTLArrayType *a1, uint64_t *a2, const void **a3)
{
  v10 = 0;
  getArraySizeAndAlign(a1, &v11, &v10, &v9);
  *a2 = (*a2 + v10 - 1) & -v10;
  result = [(MTLArrayType *)a1 arrayLength];
  if (result)
  {
    for (i = 0; result > i; ++i)
    {
      v8 = [(MTLArrayType *)a1 elementType];
      if (v8 > (MTLDataTypeLong2|MTLDataTypeInt4))
      {
        if (v8 - 115 >= 4)
        {
          goto LABEL_11;
        }
      }

      else if (v8 - 57 >= 4)
      {
        if (v8 == MTLDataTypeStruct)
        {
          assignStructOffsets([(MTLArrayType *)a1 elementStructType], a2, a3);
          goto LABEL_9;
        }

        if (v8 != MTLDataTypeArray)
        {
LABEL_11:
          assignArgumentOffsets([(MTLArrayType *)a1 elementType], a2, a3);
          goto LABEL_9;
        }

        assignArrayOffsets([(MTLArrayType *)a1 elementArrayType], a2, a3);
      }

LABEL_9:
      result = [(MTLArrayType *)a1 arrayLength];
    }
  }

  return result;
}

void *assignStructOffsets(MTLStructType *a1, unint64_t *a2, const void **a3)
{
  v19 = 1;
  v20 = 0;
  getStructSizeAndAlign(a1, &v20, &v19, &v18);
  v6 = (*a2 + v19 - 1) & -v19;
  *a2 = v6;
  result = [(NSArray *)[(MTLStructType *)a1 members] count];
  if (result)
  {
    v8 = 0;
    for (i = 0; i < result; ++i)
    {
      v10 = [(NSArray *)[(MTLStructType *)a1 members] objectAtIndexedSubscript:i];
      v16 = 0;
      v15 = 0;
      getStructMemberSizeAndAlignment(v10, &v17, &v16, &v15);
      if ((v8 & 1) != 0 || !v15)
      {
        v8 &= v15;
        ConstantBlockAlignment = *a2;
        v12 = v16;
        v13 = v16;
      }

      else
      {
        ConstantBlockAlignment = getConstantBlockAlignment([(MTLStructType *)a1 members], i);
        v12 = *a2;
        v8 = 1;
        v13 = ConstantBlockAlignment;
      }

      *a2 = (ConstantBlockAlignment + v12 - 1) & -v13;
      v14 = [(MTLStructMember *)v10 dataType];
      if (v14 > 114)
      {
        if ((v14 - 115) >= 4)
        {
          goto LABEL_15;
        }
      }

      else if ((v14 - 57) >= 4)
      {
        if (v14 == 1)
        {
          assignStructOffsets([(MTLStructMember *)v10 structType], a2, a3);
          goto LABEL_13;
        }

        if (v14 != 2)
        {
LABEL_15:
          assignArgumentOffsets([(MTLStructMember *)v10 dataType], a2, a3);
          goto LABEL_13;
        }

        assignArrayOffsets([(MTLStructMember *)v10 arrayType], a2, a3);
      }

LABEL_13:
      result = [(NSArray *)[(MTLStructType *)a1 members] count];
    }
  }

  *a2 = v20 + v6;
  return result;
}

void *_MTLFixIABReflectionOffsetsWithLayout(void *a1, void *a2, void *a3)
{
  v6 = [a2 bufferLayoutMatchesFrontEndLayout];
  if ((v6 & 1) == 0)
  {
    [a1 setDataSize:{objc_msgSend(a2, "encodedLength")}];
    v7 = [a1 dataTypeDescription];
    updatePointerType(v7, a2, a3);
    [a1 setAlignment:{objc_msgSend(v7, "alignment")}];
  }

  result = [objc_msgSend(a1 "bufferStructType")];
  if (result)
  {
    result = getGlobalConstantOffsets([a1 bufferStructType], 0, a2, a3, v10);
    if ((v6 & 1) == 0)
    {
      v9 = [a1 bufferStructType];

      return makeOffsetRelative(v9, 0);
    }
  }

  return result;
}

uint64_t updatePointerType(void *a1, void *a2, void *a3)
{
  v6 = [a2 alignment];
  if ([a1 isConstantBuffer])
  {
    v7 = [a3 minConstantBufferAlignmentBytes];
    if (v7 > v6)
    {
      v6 = v7;
    }
  }

  v8 = [a2 encodedLength];

  return [a1 setAlignment:v6 dataSize:v8];
}

void *getGlobalConstantOffsets@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, char **a5@<X8>)
{
  v35 = *MEMORY[0x1E69E9840];
  v7 = [a3 bufferLayoutMatchesFrontEndLayout];
  a5[1] = -1;
  a5[2] = -1;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = [a1 members];
  result = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (!result)
  {
    v20 = 0;
    goto LABEL_34;
  }

  v9 = result;
  v23 = a5;
  v10 = *v31;
  v11 = -1;
  v12 = -1;
  do
  {
    v13 = 0;
    do
    {
      if (*v31 != v10)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(*(&v30 + 1) + 8 * v13);
      v15 = [v14 indirectArgumentIndex];
      v16 = v15 + a2;
      v17 = [v14 dataType];
      *&v18 = -1;
      *(&v18 + 1) = -1;
      if (v17 > 138)
      {
        v19 = 1;
        if ((v17 - 139) < 2)
        {
          goto LABEL_19;
        }
      }

      else
      {
        if ((v17 - 57) <= 0x3D)
        {
          v19 = 1;
          if (((1 << (v17 - 57)) & 0x3C00000000E00006) != 0)
          {
            goto LABEL_19;
          }

          if (v17 == 60)
          {
            getGlobalConstantOffsets([v14 dataTypeDescription], a4, &v28);
LABEL_18:
            v19 = v28;
            v18 = v29;
LABEL_19:
            v20 = (v19 + v15);
            v16 = *(&v18 + 1);
            v21 = v18;
            if ((v7 & 1) == 0)
            {
              goto LABEL_20;
            }

            goto LABEL_24;
          }

          if (v17 == 57)
          {
            v23[1] = v12;
            v23[2] = v11;
            abort();
          }
        }

        if (v17 == 1)
        {
          getGlobalConstantOffsets([v14 structType], v16, a3, a4, &v28);
          goto LABEL_18;
        }

        if (v17 == 2)
        {
          getGlobalConstantOffsets([v14 arrayType], v16, a3, a4, &v28);
          goto LABEL_18;
        }
      }

      if (!v7)
      {
        v21 = [a3 constantOffsetAtIndex:{v16, NAN}];
        v20 = (v15 + 1);
LABEL_20:
        if (v16 == -1)
        {
          v22 = -1;
        }

        else
        {
          v22 = v21;
        }

        [v14 setOffset:v22];
        goto LABEL_24;
      }

      v21 = 0;
      v20 = (v15 + 1);
LABEL_24:
      if (v21 < v12)
      {
        v11 = v16;
        v12 = v21;
      }

      v13 = v13 + 1;
    }

    while (v9 != v13);
    result = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    v9 = result;
  }

  while (result);
  a5 = v23;
  v23[1] = v12;
  v23[2] = v11;
LABEL_34:
  *a5 = v20;
  return result;
}

void *makeOffsetRelative(MTLStructType *a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [(MTLStructType *)a1 members];
  result = [(NSArray *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (result)
  {
    v5 = result;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * v7);
        v9 = [v8 offset];
        if (v9 != -1)
        {
          v10 = v9;
          v11 = [v8 dataType];
          if (v11 == 2)
          {
            makeOffsetRelative([v8 arrayType], v10);
          }

          else if (v11 == 1)
          {
            makeOffsetRelative([v8 structType], v10);
          }

          [v8 setOffset:v10 - a2];
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      result = [(NSArray *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      v5 = result;
    }

    while (result);
  }

  return result;
}

void _MTLFixIABReflectionOffsets(void *a1, void *a2)
{
  if (![a1 type] && objc_msgSend(a1, "bufferDataType") == 1)
  {
    v4 = [a1 dataTypeDescription];
    if ([v4 elementIsArgumentBuffer])
    {
      v5 = [a2 newIndirectArgumentBufferLayoutWithStructType:{objc_msgSend(v4, "elementTypeDescription")}];
      _MTLFixIABReflectionOffsetsWithLayout(a1, v5, a2);
    }
  }
}

uint64_t getGlobalConstantOffsets@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  v10 = [a3 bufferLayoutMatchesFrontEndLayout];
  *a5 = 1;
  a5[1] = -1;
  a5[2] = -1;
  v11 = [a1 elementType];
  if (v11 > 138)
  {
    if ((v11 - 139) < 2)
    {
      goto LABEL_4;
    }
  }

  else
  {
    if ((v11 - 57) <= 0x3D)
    {
      if (((1 << (v11 - 57)) & 0x3C00000000E00006) != 0)
      {
        goto LABEL_4;
      }

      if (v11 == 60)
      {
        getGlobalConstantOffsets([a1 elementTypeDescription], a4, a5);
        goto LABEL_4;
      }

      if (v11 == 57)
      {
        abort();
      }
    }

    if (v11 == 1)
    {
      getGlobalConstantOffsets([a1 elementStructType], a2, a3, a4, a5);
      goto LABEL_4;
    }

    if (v11 == 2)
    {
      getGlobalConstantOffsets([a1 elementArrayType], a2, a3, a4, a5);
      goto LABEL_4;
    }
  }

  if (v10)
  {
    v17 = 0;
  }

  else
  {
    v17 = [a3 constantOffsetAtIndex:a2];
  }

  a5[1] = v17;
  a5[2] = a2;
  *a5 = 1;
LABEL_4:
  v12 = a5[2];
  if (v12 == -1)
  {
    v15 = 0;
    v14 = *a5;
    goto LABEL_10;
  }

  v13 = [a1 arrayLength];
  v14 = *a5;
  if (v13 < 2)
  {
    v15 = 0;
    goto LABEL_10;
  }

  if ((v10 & 1) == 0)
  {
    v15 = [a3 constantOffsetAtIndex:&v14[v12]] - a5[1];
LABEL_10:
    [a1 setStride:v15];
  }

  result = [a1 arrayLength];
  *a5 = result * v14;
  return result;
}

void getGlobalConstantOffsets(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  *a3 = 1;
  a3[1] = -1;
  a3[2] = -1;
  if ([a1 elementIsArgumentBuffer])
  {
    v5 = [a1 elementTypeDescription];
    v6 = [a2 newIndirectArgumentBufferLayoutWithStructType:v5];
    getGlobalConstantOffsets(v5, 0, v6, a2, &v7);
    if (([v6 bufferLayoutMatchesFrontEndLayout] & 1) == 0)
    {
      updatePointerType(a1, v6, a2);
      makeOffsetRelative(v5, 0);
    }
  }
}

void *makeOffsetRelative(MTLArrayType *a1, uint64_t a2)
{
  while (1)
  {
    v3 = a1;
    result = [(MTLArrayType *)a1 elementType];
    if (result != 2)
    {
      break;
    }

    a1 = [(MTLArrayType *)v3 elementArrayType];
  }

  if (result == 1)
  {
    v5 = [(MTLArrayType *)v3 elementStructType];

    return makeOffsetRelative(v5, a2);
  }

  return result;
}

uint64_t *std::vector<MTLStructMember *>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<MTLStructMember *>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_185C49760(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<MTLStructMember *>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<objc_object  {objcproto18MTLIOScratchBuffer}*>>(a1, a2);
  }

  std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
}

void *std::__hash_table<std::__hash_value_type<unsigned long,_MTLIndirectArgumentBufferLayout *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,_MTLIndirectArgumentBufferLayout *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,_MTLIndirectArgumentBufferLayout *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,_MTLIndirectArgumentBufferLayout *>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(void *a1, unint64_t *a2, uint64_t a3, void **a4)
{
  v4 = *a2;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *a2;
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != v4)
  {
    goto LABEL_17;
  }

  return v9;
}

void *std::__hash_table<std::__hash_value_type<unsigned long,unsigned long>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned long>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long &&>,std::tuple<>>(void *a1, unint64_t *a2, uint64_t a3, void **a4)
{
  v4 = *a2;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *a2;
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != v4)
  {
    goto LABEL_17;
  }

  return v9;
}

id newErrorWithMessage(NSString *a1, MTLBinaryArchiveError a2)
{
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObject:a1 forKey:*MEMORY[0x1E696A578]];
  v4 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"MTLBinaryArchiveDomain" code:a2 userInfo:v3];

  return v4;
}

void sub_185C4ADF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose(&a34, 8);
  std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::~__hash_table(&a40);
  _Block_object_dispose((v40 - 192), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__148(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a2 + 48) = 0;
  *(result + 48) = v2;
  v5 = *(a2 + 64);
  v3 = a2 + 64;
  v4 = v5;
  v6 = *(v3 - 8);
  *(result + 64) = v5;
  *(result + 56) = v6;
  *(v3 - 8) = 0;
  v7 = *(v3 + 8);
  *(result + 72) = v7;
  *(result + 80) = *(v3 + 16);
  if (v7)
  {
    v8 = *(v4 + 8);
    v9 = *(result + 56);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v8 %= v9;
      }
    }

    else
    {
      v8 &= v9 - 1;
    }

    *(v2 + 8 * v8) = result + 64;
    *v3 = 0;
    *(v3 + 8) = 0;
  }

  return result;
}

const char *air_macho_get_public_arch_name_from_id(int a1, int a2)
{
  result = "unknown";
  if (a1 <= 16777234)
  {
    if (a1 <= 22)
    {
      if (a1 == 7)
      {
        v10 = (a2 & 0xFFFFFF) - 3;
        if (v10 >= 3)
        {
          return result;
        }

        v11 = off_1E6EEAF38;
      }

      else
      {
        if (a1 != 12)
        {
          return result;
        }

        v10 = (a2 & 0xFFFFFF) - 5;
        if (v10 >= 0xC)
        {
          return result;
        }

        v11 = off_1E6EEAF50;
      }
    }

    else
    {
      if (a1 != 23)
      {
        v5 = "x86_64h";
        if ((a2 & 0xFFFFFF) != 8)
        {
          v5 = "unknown";
        }

        if ((a2 & 0xFFFFFF) == 3)
        {
          v6 = "x86_64";
        }

        else
        {
          v6 = v5;
        }

        v7 = "arm64";
        if ((a2 & 0xFFFFFF) != 0)
        {
          v7 = "unknown";
        }

        if (a1 == 16777228)
        {
          v8 = v7;
        }

        else
        {
          v8 = "unknown";
        }

        if (a1 == 16777223)
        {
          return v6;
        }

        else
        {
          return v8;
        }
      }

      v10 = (a2 & 0xFFFFFF) - 1;
      if (v10 >= 0xC)
      {
        return result;
      }

      v11 = off_1E6EEAFD0;
    }

    return v11[v10];
  }

  if (a1 > 16777237)
  {
    if (a1 == 16777238)
    {
      v10 = (a2 & 0xFFFFFF) - 1;
      if (v10 >= 4)
      {
        return result;
      }

      v11 = off_1E6EEAFB0;
    }

    else
    {
      if (a1 != 16777239)
      {
        if ((a2 & 0xFFFFFF) == 1)
        {
          v9 = "arm64_32";
        }

        else
        {
          v9 = "unknown";
        }

        if (a1 == 33554444)
        {
          return v9;
        }

        return result;
      }

      v10 = (a2 & 0xFFFFFF) - 1;
      if (v10 >= 0xC)
      {
        return result;
      }

      v11 = off_1E6EEB030;
    }

    return v11[v10];
  }

  if (a1 != 16777235)
  {
    if (a1 == 16777236)
    {
      v12 = a2 & 0xFFFFFF;
      if ((a2 & 0xFFFFFFu) <= 0x1388)
      {
        if ((a2 & 0xFFFFFFu) <= 0xFA2)
        {
          switch(v12)
          {
            case 4000:
              return "amdgpu_gfx600";
            case 4001:
              return "amdgpu_gfx600_nwh";
            case 4002:
              return "amdgpu_gfx701";
          }
        }

        else if ((a2 & 0xFFFFFFu) > 0xFA4)
        {
          if (v12 == 4005)
          {
            return "amdgpu_gfx802";
          }

          else if (v12 == 5000)
          {
            return "amdgpu_gfx900";
          }
        }

        else if (v12 == 4003)
        {
          return "amdgpu_gfx704";
        }

        else
        {
          return "amdgpu_gfx803";
        }
      }

      else if ((a2 & 0xFFFFFFu) > 0x1771)
      {
        if ((a2 & 0xFFFFFFu) > 0x1773)
        {
          if (v12 == 6004)
          {
            return "amdgpu_gfx1030";
          }

          else if (v12 == 6005)
          {
            return "amdgpu_gfx1032";
          }
        }

        else if (v12 == 6002)
        {
          return "amdgpu_gfx1011";
        }

        else
        {
          return "amdgpu_gfx1012";
        }
      }

      else if ((a2 & 0xFFFFFFu) > 0x176F)
      {
        if (v12 == 6000)
        {
          return "amdgpu_gfx1010_nsgc";
        }

        else
        {
          return "amdgpu_gfx1010";
        }
      }

      else if (v12 == 5001)
      {
        return "amdgpu_gfx904";
      }

      else if (v12 == 5002)
      {
        return "amdgpu_gfx906";
      }
    }

    else
    {
      v4 = a2 & 0xFFFFFF;
      if ((a2 & 0xFFFFFFu) > 0x9501FF)
      {
        if ((a2 & 0xFFFFFFu) <= 0x950203)
        {
          if (v4 == 9765376)
          {
            return "intelgpu_kbl_gt2r0";
          }

          else if (v4 == 9765378)
          {
            return "intelgpu_kbl_gt2r2";
          }
        }

        else
        {
          switch(v4)
          {
            case 9765380:
              return "intelgpu_kbl_gt2r4";
            case 9765633:
              return "intelgpu_kbl_gt3r1";
            case 9765638:
              return "intelgpu_kbl_gt3r6";
          }
        }
      }

      else if ((a2 & 0xFFFFFFu) <= 0x90309)
      {
        if (v4 == 590342)
        {
          return "intelgpu_skl_gt2r6";
        }

        else if (v4 == 590343)
        {
          return "intelgpu_skl_gt2r7";
        }
      }

      else
      {
        switch(v4)
        {
          case 590602:
            return "intelgpu_skl_gt3r10";
          case 1115655:
            return "intelgpu_icl_1x6x8r7";
          case 1116167:
            return "intelgpu_icl_1x8x8r7";
        }
      }
    }

    return result;
  }

  v13 = a2 & 0xFFFFFF;
  if ((a2 & 0xFFFFFFu) > 0x112)
  {
    if ((a2 & 0xFFFFFFu) <= 0x1A2)
    {
      if ((a2 & 0xFFFFFFu) <= 0x161)
      {
        if ((a2 & 0xFFFFFFu) > 0x131)
        {
          if ((a2 & 0xFFFFFFu) > 0x142)
          {
            if (v13 == 323)
            {
              return "applegpu_g17p";
            }

            if (v13 == 339)
            {
              return "applegpu_g17g";
            }
          }

          else if (v13 == 306 || v13 == 322)
          {
            return "applegpu_g13g";
          }

          return "unknown";
        }

        if (v13 != 275)
        {
          if (v13 != 290)
          {
            if (v13 == 291)
            {
              return "applegpu_g16s";
            }

            return "unknown";
          }

          return "applegpu_g13p";
        }

        return "applegpu_g15g";
      }

      if ((a2 & 0xFFFFFFu) <= 0x181)
      {
        if (v13 == 354 || v13 == 370)
        {
          return "applegpu_g14p";
        }

        if (v13 == 371)
        {
          return "applegpu_g18p";
        }

        return "unknown";
      }

      if ((a2 & 0xFFFFFFu) <= 0x192)
      {
        if (v13 == 386 || v13 == 402)
        {
          return "applegpu_g14g";
        }

        return "unknown";
      }

      if (v13 != 403)
      {
        if (v13 != 418)
        {
          return "unknown";
        }

        return "applegpu_g14s";
      }

      return "applegpu_g16g";
    }

    if ((a2 & 0xFFFFFFu) > 0x211)
    {
      if ((a2 & 0xFFFFFFu) > 0x241)
      {
        if ((a2 & 0xFFFFFFu) > 0x261)
        {
          if (v13 == 610)
          {
            return "applegpu_g15p";
          }

          if (v13 == 1602)
          {
            return "applegpu_g11g_8fstp";
          }
        }

        else if (v13 == 578 || v13 == 594)
        {
          return "applegpu_g13d";
        }

        return "unknown";
      }

      if (v13 != 530)
      {
        if (v13 == 546 || v13 == 562)
        {
          return "applegpu_g13c";
        }

        return "unknown";
      }

      return "applegpu_g13s";
    }

    if ((a2 & 0xFFFFFFu) > 0x1D2)
    {
      if ((a2 & 0xFFFFFFu) <= 0x1F1)
      {
        if (v13 == 467)
        {
          return "applegpu_g16s";
        }

        if (v13 != 482)
        {
          return "unknown";
        }

        return "applegpu_g14d";
      }

      if (v13 == 498)
      {
        return "applegpu_g14d";
      }

      if (v13 != 514)
      {
        return "unknown";
      }

      return "applegpu_g13s";
    }

    if (v13 != 419)
    {
      if (v13 == 434)
      {
        return "applegpu_g14s";
      }

      if (v13 != 435)
      {
        return "unknown";
      }

      return "applegpu_g16p";
    }

    return "applegpu_g15s";
  }

  if ((a2 & 0xFFFFFFu) > 0x61)
  {
    if ((a2 & 0xFFFFFFu) > 0xB2)
    {
      if ((a2 & 0xFFFFFFu) > 0xE2)
      {
        if ((a2 & 0xFFFFFFu) > 0x102)
        {
          if (v13 != 259)
          {
            if (v13 != 274)
            {
              return "unknown";
            }

            return "applegpu_g13p";
          }

          return "applegpu_g16g";
        }

        if (v13 != 227 && v13 != 243)
        {
          return "unknown";
        }

        return "applegpu_g16p";
      }

      if (v13 != 179)
      {
        if (v13 == 194 || v13 == 210)
        {
          return "applegpu_g12p";
        }

        return "unknown";
      }
    }

    else
    {
      if ((a2 & 0xFFFFFFu) <= 0x72)
      {
        if (v13 != 98)
        {
          if (v13 == 99)
          {
            return "applegpu_g15s";
          }

          if (v13 != 114)
          {
            return "unknown";
          }
        }

        return "applegpu_g11p";
      }

      if ((a2 & 0xFFFFFFu) <= 0x91)
      {
        if (v13 == 115)
        {
          return "applegpu_g15s";
        }

        if (v13 != 130)
        {
          return "unknown";
        }

        return "applegpu_g11g";
      }

      if (v13 == 146)
      {
        return "applegpu_g11g";
      }

      if (v13 != 163)
      {
        return "unknown";
      }
    }

    return "applegpu_g15d";
  }

  if ((a2 & 0xFFFFFFu) > 0x40)
  {
    if ((a2 & 0xFFFFFFu) <= 0x50)
    {
      if (v13 == 65)
      {
        return "applegpu_g5p";
      }

      if (v13 != 66)
      {
        if (v13 != 67)
        {
          return "unknown";
        }

        return "applegpu_g15g";
      }
    }

    else
    {
      if ((a2 & 0xFFFFFFu) > 0x52)
      {
        if (v13 != 83)
        {
          if (v13 == 97)
          {
            return "applegpu_g9g";
          }

          return "unknown";
        }

        return "applegpu_g15g";
      }

      if (v13 == 81)
      {
        return "applegpu_g9p";
      }
    }

    return "applegpu_g11m";
  }

  if ((a2 & 0xFFFFFFu) > 0x20)
  {
    switch(v13)
    {
      case '!':
        return "applegpu_g4g";
      case '""':
        return "applegpu_g10p";
      case '1':
        return "applegpu_g4g";
    }

    return "unknown";
  }

  result = "applegpu_gx2";
  if (v13 != 16)
  {
    if (v13 == 17)
    {
      return "applegpu_g4p";
    }

    if (v13 != 32)
    {
      return "unknown";
    }
  }

  return result;
}

{
  result = "unknown";
  if (a1 <= 16777234)
  {
    if (a1 <= 22)
    {
      if (a1 == 7)
      {
        v10 = (a2 & 0xFFFFFF) - 3;
        if (v10 >= 3)
        {
          return result;
        }

        v11 = off_1E6EED078;
      }

      else
      {
        if (a1 != 12)
        {
          return result;
        }

        v10 = (a2 & 0xFFFFFF) - 5;
        if (v10 >= 0xC)
        {
          return result;
        }

        v11 = off_1E6EED090;
      }
    }

    else
    {
      if (a1 != 23)
      {
        v5 = "x86_64h";
        if ((a2 & 0xFFFFFF) != 8)
        {
          v5 = "unknown";
        }

        if ((a2 & 0xFFFFFF) == 3)
        {
          v6 = "x86_64";
        }

        else
        {
          v6 = v5;
        }

        v7 = "arm64";
        if ((a2 & 0xFFFFFF) != 0)
        {
          v7 = "unknown";
        }

        if (a1 == 16777228)
        {
          v8 = v7;
        }

        else
        {
          v8 = "unknown";
        }

        if (a1 == 16777223)
        {
          return v6;
        }

        else
        {
          return v8;
        }
      }

      v10 = (a2 & 0xFFFFFF) - 1;
      if (v10 >= 0xC)
      {
        return result;
      }

      v11 = off_1E6EED110;
    }

    return v11[v10];
  }

  if (a1 > 16777237)
  {
    if (a1 == 16777238)
    {
      v10 = (a2 & 0xFFFFFF) - 1;
      if (v10 >= 4)
      {
        return result;
      }

      v11 = off_1E6EED0F0;
    }

    else
    {
      if (a1 != 16777239)
      {
        if ((a2 & 0xFFFFFF) == 1)
        {
          v9 = "arm64_32";
        }

        else
        {
          v9 = "unknown";
        }

        if (a1 == 33554444)
        {
          return v9;
        }

        return result;
      }

      v10 = (a2 & 0xFFFFFF) - 1;
      if (v10 >= 0xC)
      {
        return result;
      }

      v11 = off_1E6EED170;
    }

    return v11[v10];
  }

  if (a1 != 16777235)
  {
    if (a1 == 16777236)
    {
      v12 = a2 & 0xFFFFFF;
      if ((a2 & 0xFFFFFFu) <= 0x1388)
      {
        if ((a2 & 0xFFFFFFu) <= 0xFA2)
        {
          switch(v12)
          {
            case 4000:
              return "amdgpu_gfx600";
            case 4001:
              return "amdgpu_gfx600_nwh";
            case 4002:
              return "amdgpu_gfx701";
          }
        }

        else if ((a2 & 0xFFFFFFu) > 0xFA4)
        {
          if (v12 == 4005)
          {
            return "amdgpu_gfx802";
          }

          else if (v12 == 5000)
          {
            return "amdgpu_gfx900";
          }
        }

        else if (v12 == 4003)
        {
          return "amdgpu_gfx704";
        }

        else
        {
          return "amdgpu_gfx803";
        }
      }

      else if ((a2 & 0xFFFFFFu) > 0x1771)
      {
        if ((a2 & 0xFFFFFFu) > 0x1773)
        {
          if (v12 == 6004)
          {
            return "amdgpu_gfx1030";
          }

          else if (v12 == 6005)
          {
            return "amdgpu_gfx1032";
          }
        }

        else if (v12 == 6002)
        {
          return "amdgpu_gfx1011";
        }

        else
        {
          return "amdgpu_gfx1012";
        }
      }

      else if ((a2 & 0xFFFFFFu) > 0x176F)
      {
        if (v12 == 6000)
        {
          return "amdgpu_gfx1010_nsgc";
        }

        else
        {
          return "amdgpu_gfx1010";
        }
      }

      else if (v12 == 5001)
      {
        return "amdgpu_gfx904";
      }

      else if (v12 == 5002)
      {
        return "amdgpu_gfx906";
      }
    }

    else
    {
      v4 = a2 & 0xFFFFFF;
      if ((a2 & 0xFFFFFFu) > 0x9501FF)
      {
        if ((a2 & 0xFFFFFFu) <= 0x950203)
        {
          if (v4 == 9765376)
          {
            return "intelgpu_kbl_gt2r0";
          }

          else if (v4 == 9765378)
          {
            return "intelgpu_kbl_gt2r2";
          }
        }

        else
        {
          switch(v4)
          {
            case 9765380:
              return "intelgpu_kbl_gt2r4";
            case 9765633:
              return "intelgpu_kbl_gt3r1";
            case 9765638:
              return "intelgpu_kbl_gt3r6";
          }
        }
      }

      else if ((a2 & 0xFFFFFFu) <= 0x90309)
      {
        if (v4 == 590342)
        {
          return "intelgpu_skl_gt2r6";
        }

        else if (v4 == 590343)
        {
          return "intelgpu_skl_gt2r7";
        }
      }

      else
      {
        switch(v4)
        {
          case 590602:
            return "intelgpu_skl_gt3r10";
          case 1115655:
            return "intelgpu_icl_1x6x8r7";
          case 1116167:
            return "intelgpu_icl_1x8x8r7";
        }
      }
    }

    return result;
  }

  v13 = a2 & 0xFFFFFF;
  if ((a2 & 0xFFFFFFu) > 0x112)
  {
    if ((a2 & 0xFFFFFFu) <= 0x1A2)
    {
      if ((a2 & 0xFFFFFFu) <= 0x161)
      {
        if ((a2 & 0xFFFFFFu) > 0x131)
        {
          if ((a2 & 0xFFFFFFu) > 0x142)
          {
            if (v13 == 323)
            {
              return "applegpu_g17p";
            }

            if (v13 == 339)
            {
              return "applegpu_g17g";
            }
          }

          else if (v13 == 306 || v13 == 322)
          {
            return "applegpu_g13g";
          }

          return "unknown";
        }

        if (v13 != 275)
        {
          if (v13 != 290)
          {
            if (v13 == 291)
            {
              return "applegpu_g16s";
            }

            return "unknown";
          }

          return "applegpu_g13p";
        }

        return "applegpu_g15g";
      }

      if ((a2 & 0xFFFFFFu) <= 0x181)
      {
        if (v13 == 354 || v13 == 370)
        {
          return "applegpu_g14p";
        }

        if (v13 == 371)
        {
          return "applegpu_g18p";
        }

        return "unknown";
      }

      if ((a2 & 0xFFFFFFu) <= 0x192)
      {
        if (v13 == 386 || v13 == 402)
        {
          return "applegpu_g14g";
        }

        return "unknown";
      }

      if (v13 != 403)
      {
        if (v13 != 418)
        {
          return "unknown";
        }

        return "applegpu_g14s";
      }

      return "applegpu_g16g";
    }

    if ((a2 & 0xFFFFFFu) > 0x211)
    {
      if ((a2 & 0xFFFFFFu) > 0x241)
      {
        if ((a2 & 0xFFFFFFu) > 0x261)
        {
          if (v13 == 610)
          {
            return "applegpu_g15p";
          }

          if (v13 == 1602)
          {
            return "applegpu_g11g_8fstp";
          }
        }

        else if (v13 == 578 || v13 == 594)
        {
          return "applegpu_g13d";
        }

        return "unknown";
      }

      if (v13 != 530)
      {
        if (v13 == 546 || v13 == 562)
        {
          return "applegpu_g13c";
        }

        return "unknown";
      }

      return "applegpu_g13s";
    }

    if ((a2 & 0xFFFFFFu) > 0x1D2)
    {
      if ((a2 & 0xFFFFFFu) <= 0x1F1)
      {
        if (v13 == 467)
        {
          return "applegpu_g16s";
        }

        if (v13 != 482)
        {
          return "unknown";
        }

        return "applegpu_g14d";
      }

      if (v13 == 498)
      {
        return "applegpu_g14d";
      }

      if (v13 != 514)
      {
        return "unknown";
      }

      return "applegpu_g13s";
    }

    if (v13 != 419)
    {
      if (v13 == 434)
      {
        return "applegpu_g14s";
      }

      if (v13 != 435)
      {
        return "unknown";
      }

      return "applegpu_g16p";
    }

    return "applegpu_g15s";
  }

  if ((a2 & 0xFFFFFFu) > 0x61)
  {
    if ((a2 & 0xFFFFFFu) > 0xB2)
    {
      if ((a2 & 0xFFFFFFu) > 0xE2)
      {
        if ((a2 & 0xFFFFFFu) > 0x102)
        {
          if (v13 != 259)
          {
            if (v13 != 274)
            {
              return "unknown";
            }

            return "applegpu_g13p";
          }

          return "applegpu_g16g";
        }

        if (v13 != 227 && v13 != 243)
        {
          return "unknown";
        }

        return "applegpu_g16p";
      }

      if (v13 != 179)
      {
        if (v13 == 194 || v13 == 210)
        {
          return "applegpu_g12p";
        }

        return "unknown";
      }
    }

    else
    {
      if ((a2 & 0xFFFFFFu) <= 0x72)
      {
        if (v13 != 98)
        {
          if (v13 == 99)
          {
            return "applegpu_g15s";
          }

          if (v13 != 114)
          {
            return "unknown";
          }
        }

        return "applegpu_g11p";
      }

      if ((a2 & 0xFFFFFFu) <= 0x91)
      {
        if (v13 == 115)
        {
          return "applegpu_g15s";
        }

        if (v13 != 130)
        {
          return "unknown";
        }

        return "applegpu_g11g";
      }

      if (v13 == 146)
      {
        return "applegpu_g11g";
      }

      if (v13 != 163)
      {
        return "unknown";
      }
    }

    return "applegpu_g15d";
  }

  if ((a2 & 0xFFFFFFu) > 0x40)
  {
    if ((a2 & 0xFFFFFFu) <= 0x50)
    {
      if (v13 == 65)
      {
        return "applegpu_g5p";
      }

      if (v13 != 66)
      {
        if (v13 != 67)
        {
          return "unknown";
        }

        return "applegpu_g15g";
      }
    }

    else
    {
      if ((a2 & 0xFFFFFFu) > 0x52)
      {
        if (v13 != 83)
        {
          if (v13 == 97)
          {
            return "applegpu_g9g";
          }

          return "unknown";
        }

        return "applegpu_g15g";
      }

      if (v13 == 81)
      {
        return "applegpu_g9p";
      }
    }

    return "applegpu_g11m";
  }

  if ((a2 & 0xFFFFFFu) > 0x20)
  {
    switch(v13)
    {
      case '!':
        return "applegpu_g4g";
      case '""':
        return "applegpu_g10p";
      case '1':
        return "applegpu_g4g";
    }

    return "unknown";
  }

  result = "applegpu_gx2";
  if (v13 != 16)
  {
    if (v13 == 17)
    {
      return "applegpu_g4p";
    }

    if (v13 != 32)
    {
      return "unknown";
    }
  }

  return result;
}

void sub_185C4D358(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v24 - 144), 8);
  _Block_object_dispose((v24 - 96), 8);
  _Block_object_dispose((v24 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_185C4D84C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL hasFileExtension(const char *a1, const char *a2)
{
  v4 = strlen(a1);
  v5 = strlen(a2);
  return v4 >= v5 && strcmp(&a1[v4 - v5], a2) == 0;
}

void sub_185C4F630(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_185C4FF60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *__p, uint64_t a52)
{
  std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::~__hash_table(&a46);
  if (__p)
  {
    a52 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_185C50238(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_185C508D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, uint64_t a19, uint64_t a20, MTLHashKey *a21)
{
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

void sub_185C50BCC(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 176), 8);
  _Block_object_dispose((v1 - 128), 8);
  _Block_object_dispose((v1 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_185C50F94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, std::__shared_weak_count *a25, uint64_t a26, std::__shared_weak_count *a27, uint64_t a28, std::__shared_weak_count *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, std::__shared_weak_count *a43)
{
  if (a25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a25);
  }

  if (a27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a27);
  }

  if (a29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a29);
  }

  if (a43)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a43);
  }

  _Block_object_dispose((v44 - 240), 8);
  v46 = *(v44 - 192);
  if (v46)
  {
    *(v44 - 184) = v46;
    operator delete(v46);
  }

  _Block_object_dispose((v44 - 144), 8);
  _Block_object_dispose((v44 - 112), 8);
  std::__shared_weak_count::__release_shared[abi:ne200100](v43);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__209(__n128 *a1, __n128 *a2)
{
  a1[3] = 0uLL;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3] = 0uLL;
  a2[4].n128_u64[0] = 0;
  return result;
}

void __Block_byref_object_dispose__210(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_185C51B38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_96c70_ZTSNSt3__110shared_ptrINS_6vectorI10machOEntryNS_9allocatorIS2_EEEEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 104);
  *(result + 96) = *(a2 + 96);
  *(result + 104) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_96c70_ZTSNSt3__110shared_ptrINS_6vectorI10machOEntryNS_9allocatorIS2_EEEEEE(uint64_t a1)
{
  v1 = *(a1 + 104);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t __copy_helper_block_e8_104c70_ZTSNSt3__110shared_ptrINS_6vectorI10machOEntryNS_9allocatorIS2_EEEEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 112);
  *(result + 104) = *(a2 + 104);
  *(result + 112) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_104c70_ZTSNSt3__110shared_ptrINS_6vectorI10machOEntryNS_9allocatorIS2_EEEEEE(uint64_t a1)
{
  v1 = *(a1 + 112);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void sub_185C52870(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  std::__hash_table<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::__unordered_map_hasher<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,key_hash,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,true>,std::__unordered_map_equal<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,key_hash,true>,std::allocator<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>>::~__hash_table(&a26);
  std::__hash_table<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::__unordered_map_hasher<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,key_hash,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,true>,std::__unordered_map_equal<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,key_hash,true>,std::allocator<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>>::~__hash_table(&a32);
  std::__hash_table<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::__unordered_map_hasher<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,key_hash,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,true>,std::__unordered_map_equal<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,key_hash,true>,std::allocator<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>>::~__hash_table((v32 - 144));
  _Unwind_Resume(a1);
}

void sub_185C55660(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t *a12)
{
  a12 = &a9;
  std::vector<std::pair<MTLHashKey,unsigned int>>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_185C567D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a28)
  {
    operator delete(a28);
  }

  _Unwind_Resume(exception_object);
}

void sub_185C56EB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_185C57140(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, ...)
{
  va_start(va, a27);
  _Block_object_dispose(&a22, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_185C58354(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::~__hash_table(&a17);
  _Block_object_dispose(&a37, 8);
  if (a41)
  {
    a42 = a41;
    operator delete(a41);
  }

  _Unwind_Resume(a1);
}

void std::vector<MTLLoaderSliceIdentifier>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<MTLTagType>>(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

__n128 __Block_byref_object_copy__283(__n128 *a1, __n128 *a2)
{
  a1[3] = 0uLL;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3] = 0uLL;
  a2[4].n128_u64[0] = 0;
  return result;
}

void __Block_byref_object_dispose__284(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void std::vector<MTLLoaderMachOPayload>::reserve(void *a1, unint64_t a2)
{
  if (0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 4) < a2)
  {
    if (a2 < 0x24924924924924ALL)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<MTLLoaderMachOPayload>>(a1, a2);
    }

    std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
  }
}

void std::vector<MTLLoaderMachOPayload>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v12 = 0x6DB6DB6DB6DB6DB7 * ((v4 - *a1) >> 4);
    v13 = v12 + 1;
    if ((v12 + 1) > 0x249249249249249)
    {
      std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
    }

    v14 = 0x6DB6DB6DB6DB6DB7 * ((v5 - *a1) >> 4);
    if (2 * v14 > v13)
    {
      v13 = 2 * v14;
    }

    if (v14 >= 0x124924924924924)
    {
      v15 = 0x249249249249249;
    }

    else
    {
      v15 = v13;
    }

    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<MTLLoaderMachOPayload>>(a1, v15);
    }

    v16 = 112 * v12;
    v17 = *a2;
    v18 = a2[2];
    *(v16 + 16) = a2[1];
    *(v16 + 32) = v18;
    *v16 = v17;
    v19 = a2[3];
    v20 = a2[4];
    v21 = a2[6];
    *(v16 + 80) = a2[5];
    *(v16 + 96) = v21;
    *(v16 + 48) = v19;
    *(v16 + 64) = v20;
    v11 = 112 * v12 + 112;
    v22 = *(a1 + 8) - *a1;
    v23 = v16 - v22;
    memcpy((v16 - v22), *a1, v22);
    v24 = *a1;
    *a1 = v23;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v24)
    {
      operator delete(v24);
    }
  }

  else
  {
    v6 = *a2;
    v7 = a2[2];
    v4[1] = a2[1];
    v4[2] = v7;
    *v4 = v6;
    v8 = a2[3];
    v9 = a2[4];
    v10 = a2[6];
    v4[5] = a2[5];
    v4[6] = v10;
    v4[3] = v8;
    v4[4] = v9;
    v11 = (v4 + 7);
  }

  *(a1 + 8) = v11;
}

void sub_185C58E0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, MTLHashKey *a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10, MTLHashKey *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  a9 = &a14;
  std::vector<std::pair<MTLHashKey,unsigned int>>::__destroy_vector::operator()[abi:ne200100](&a9);
  MTLHashKey::~MTLHashKey(&a28);
  _Unwind_Resume(a1);
}

void sub_185C59280(_Unwind_Exception *__p, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, MTLHashKey *__pa, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v19 = *(v17 - 120);
  if (v19)
  {
    *(v17 - 112) = v19;
    operator delete(v19);
  }

  MTLHashKey::~MTLHashKey(&a17);
  _Unwind_Resume(__p);
}

void sub_185C5A068(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_185C5AA34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_185C5B664(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_185C5B9F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 __Block_byref_object_copy__584(__n128 *a1, __n128 *a2)
{
  a1[3] = 0uLL;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3] = 0uLL;
  a2[4].n128_u64[0] = 0;
  return result;
}

void __Block_byref_object_dispose__585(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_185C5C3F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getRequiredStagesPresentMask(const Air::PipelineScript *this)
{
  v1 = (this - *this);
  if (*v1 < 9u)
  {
    return 0;
  }

  v2 = v1[4];
  if (!v2)
  {
    return 0;
  }

  v4 = *(this + v2);
  if ((v4 - 2) < 2)
  {
    return 2;
  }

  if (v4 == 1)
  {
    v9 = Air::PipelineScript::pipeline_as_render(this);
    v10 = (v9 - *v9);
    if (*v10 < 5u)
    {
      v11 = 0;
    }

    else
    {
      v11 = 2 * (v10[2] != 0);
    }

    v15 = Air::PipelineScript::pipeline_as_render(this);
    v16 = (v15 - *v15);
    v17 = *v16 >= 7u && v16[3] != 0;
    return v11 | v17;
  }

  else if (v4 == 4)
  {
    v5 = Mtl4::FunctionConstantValue::value_as_ConstantFloat2(this);
    v6 = (v5 - *v5);
    v7 = *v6 >= 9u && v6[4] != 0;
    v12 = Mtl4::FunctionConstantValue::value_as_ConstantFloat2(this);
    v13 = (v12 - *v12);
    v14 = 2;
    if (*v13 >= 5u)
    {
      if (v13[2])
      {
        v14 = 6;
      }

      else
      {
        v14 = 2;
      }
    }

    return v14 | v7;
  }

  else
  {
    return 0;
  }
}

void *std::__hash_table<std::__hash_value_type<MTLUINT256_t,_NSRange>,std::__unordered_map_hasher<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,_NSRange>,UnorderedContainerHash,UnorderedContainerHash,true>,std::__unordered_map_equal<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,_NSRange>,UnorderedContainerHash,UnorderedContainerHash,true>,std::allocator<std::__hash_value_type<MTLUINT256_t,_NSRange>>>::__emplace_unique_key_args<MTLUINT256_t,std::piecewise_construct_t const&,std::tuple<MTLUINT256_t const&>,std::tuple<>>(void *a1, unint64_t *a2, uint64_t a3, _OWORD **a4)
{
  v4 = *a2;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_28;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *a2;
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_28:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_28;
    }

LABEL_27:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_28;
    }
  }

  if (v9[2] != *a2 || v9[3] != a2[1] || v9[4] != a2[2] || v9[5] != a2[3])
  {
    goto LABEL_27;
  }

  return v9;
}

void MTLProgramObject::~MTLProgramObject(MTLProgramObject *this)
{
  dispatch_release(*(this + 55));
  v2 = *(this + 53);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(this + 54);
  if (v3)
  {
  }

  VariantList<4u>::~VariantList(this);
}

uint64_t VariantList<4u>::~VariantList(uint64_t a1)
{
  v2 = *(a1 + 328);
  if (v2 != a1)
  {
    do
    {
      v3 = *(v2 + 320);
      for (i = 240; i != -80; i -= 80)
      {
        VariantEntry::~VariantEntry((v2 + i));
      }

      MEMORY[0x1865FF210](v2, 0x10B0C4094D98C36);
      *(a1 + 328) = v3;
      v2 = v3;
    }

    while (v3 != a1);
  }

  VariantEntry::~VariantEntry((a1 + 344));
  for (j = 240; j != -80; j -= 80)
  {
    VariantEntry::~VariantEntry((a1 + j));
  }

  return a1;
}

void VariantEntry::~VariantEntry(VariantEntry *this)
{
  free(this->var0);
  var5 = this->var5;
  if (var5)
  {
    dispatch_release(var5);
  }

  var9 = this->var9;
  if (var9)
  {
    dispatch_release(var9);
  }
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_1E6EEA6B8, MEMORY[0x1E69E5280]);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B8] + 16);
  return result;
}

void MTLProgramObject::MTLProgramObject(MTLProgramObject *this)
{
  for (i = 0; i != 320; i += 80)
  {
    v3 = this + i;
    *(v3 + 8) = 0;
    *v3 = 0uLL;
    *(v3 + 1) = 0uLL;
    *(v3 + 40) = 0uLL;
    *(v3 + 56) = 0uLL;
    *(v3 + 9) = 0;
  }

  *(this + 84) = 0;
  *(this + 94) = 0;
  *(this + 344) = 0u;
  *(this + 360) = 0u;
  *(this + 40) = 0;
  *(this + 41) = this;
  *(this + 24) = 0u;
  *(this + 25) = 0u;
  *(this + 26) = 0u;
  *(this + 55) = dispatch_queue_create("programObject Queue", 0);
  *(this + 54) = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:0 valueOptions:0 capacity:1];
}

void std::__shared_ptr_emplace<std::unordered_map<MTLUINT256_t,NSObject  {objcproto16OS_dispatch_data}*,UnorderedContainerHash,UnorderedContainerHash,std::allocator<std::pair<MTLUINT256_t const,NSObject  {objcproto16OS_dispatch_data}*>>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1EF474D98;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1865FF210);
}

unint64_t *std::__tree<std::__value_type<MTLUINT256_t,std::pair<unsigned int,unsigned long long>>,std::__map_value_compare<MTLUINT256_t,std::__value_type<MTLUINT256_t,std::pair<unsigned int,unsigned long long>>,CompareHash,true>,std::allocator<std::__value_type<MTLUINT256_t,std::pair<unsigned int,unsigned long long>>>>::lower_bound[abi:ne200100]<MTLUINT256_t>(uint64_t a1, unint64_t *a2)
{
  v4 = *(a1 + 8);
  result = (a1 + 8);
  v3 = v4;
  if (v4)
  {
    v5 = bswap64(*a2);
    do
    {
      v6 = bswap64(v3[4]);
      if (v6 == v5)
      {
        v6 = bswap64(v3[5]);
        v7 = bswap64(a2[1]);
        if (v6 == v7)
        {
          v6 = bswap64(v3[6]);
          v7 = bswap64(a2[2]);
          if (v6 == v7)
          {
            v6 = bswap64(v3[7]);
            v7 = bswap64(a2[3]);
            if (v6 == v7)
            {
              v8 = 0;
              goto LABEL_12;
            }
          }
        }
      }

      else
      {
        v7 = v5;
      }

      if (v6 < v7)
      {
        v8 = -1;
      }

      else
      {
        v8 = 1;
      }

LABEL_12:
      v9 = v8 <= 0;
      v10 = v8 > 0;
      if (v9)
      {
        result = v3;
      }

      v3 = v3[v10];
    }

    while (v3);
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<MTLUINT256_t,NSObject  {objcproto16OS_dispatch_data}*>,std::__unordered_map_hasher<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,NSObject  {objcproto16OS_dispatch_data}*>,UnorderedContainerHash,UnorderedContainerHash,true>,std::__unordered_map_equal<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,NSObject  {objcproto16OS_dispatch_data}*>,UnorderedContainerHash,UnorderedContainerHash,true>,std::allocator<std::__hash_value_type<MTLUINT256_t,NSObject  {objcproto16OS_dispatch_data}*>>>::__emplace_unique_key_args<MTLUINT256_t,std::pair<MTLUINT256_t const,NSObject  {objcproto16OS_dispatch_data}*> const&>(void *a1, unint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_28;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = *a2;
    if (v3 >= *&v4)
    {
      v6 = v3 % *&v4;
    }
  }

  else
  {
    v6 = (*&v4 - 1) & v3;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_28:
    operator new();
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v3)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_28;
    }

LABEL_27:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_28;
    }
  }

  if (v8[2] != *a2 || v8[3] != a2[1] || v8[4] != a2[2] || v8[5] != a2[3])
  {
    goto LABEL_27;
  }

  return v8;
}

void *std::__hash_table<std::__hash_value_type<MTLUINT256_t,NSObject  {objcproto16OS_dispatch_data}*>,std::__unordered_map_hasher<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,NSObject  {objcproto16OS_dispatch_data}*>,UnorderedContainerHash,UnorderedContainerHash,true>,std::__unordered_map_equal<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,NSObject  {objcproto16OS_dispatch_data}*>,UnorderedContainerHash,UnorderedContainerHash,true>,std::allocator<std::__hash_value_type<MTLUINT256_t,NSObject  {objcproto16OS_dispatch_data}*>>>::__emplace_unique_key_args<MTLUINT256_t,std::pair<MTLUINT256_t,NSObject  {objcproto16OS_dispatch_data}*>>(void *a1, unint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_28;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = *a2;
    if (v3 >= *&v4)
    {
      v6 = v3 % *&v4;
    }
  }

  else
  {
    v6 = (*&v4 - 1) & v3;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_28:
    operator new();
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v3)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_28;
    }

LABEL_27:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_28;
    }
  }

  if (v8[2] != *a2 || v8[3] != a2[1] || v8[4] != a2[2] || v8[5] != a2[3])
  {
    goto LABEL_27;
  }

  return v8;
}

const void **std::__hash_table<std::__hash_value_type<std::string,objc_object  {objcproto13MTLLibrarySPI}*>,std::__unordered_map_hasher<std::string,objc_object  {objcproto13MTLLibrarySPI}*,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,objc_object  {objcproto13MTLLibrarySPI}*,std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto13MTLLibrarySPI}*>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::piecewise_construct_t const&<>>(void *a1, const void **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v8 = v7;
  v9 = a1[1];
  if (!*&v9)
  {
    goto LABEL_18;
  }

  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  v11 = v10.u32[0];
  if (v10.u32[0] > 1uLL)
  {
    v12 = v7;
    if (v7 >= *&v9)
    {
      v12 = v7 % *&v9;
    }
  }

  else
  {
    v12 = (*&v9 - 1) & v7;
  }

  v13 = *(*a1 + 8 * v12);
  if (!v13 || (v14 = *v13) == 0)
  {
LABEL_18:
    std::__hash_table<std::__hash_value_type<std::string,objc_object  {objcproto13MTLLibrarySPI}*>,std::__unordered_map_hasher<std::string,objc_object  {objcproto13MTLLibrarySPI}*,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,objc_object  {objcproto13MTLLibrarySPI}*,std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto13MTLLibrarySPI}*>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::piecewise_construct_t const&<>>();
  }

  while (1)
  {
    v15 = v14[1];
    if (v15 == v8)
    {
      break;
    }

    if (v11 > 1)
    {
      if (v15 >= *&v9)
      {
        v15 %= *&v9;
      }
    }

    else
    {
      v15 &= *&v9 - 1;
    }

    if (v15 != v12)
    {
      goto LABEL_18;
    }

LABEL_17:
    v14 = *v14;
    if (!v14)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v14 + 2, a2))
  {
    goto LABEL_17;
  }

  return v14;
}

void sub_185C5DB6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_185C5DC34(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t *std::vector<functionIdExtended>::__init_with_size[abi:ne200100]<functionIdExtended*,functionIdExtended*>(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<functionIdExtended>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_185C5DCB0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<functionIdExtended>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<functionIdExtended>>(a1, a2);
  }

  std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<functionIdExtended>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::unordered_map<MTLUINT256_t,MTLAirEntry *,UnorderedContainerHash,UnorderedContainerHash,std::allocator<std::pair<MTLUINT256_t const,MTLAirEntry *>>>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::__unordered_map_hasher<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,key_hash,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,true>,std::__unordered_map_equal<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,key_hash,true>,std::allocator<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<MTLUINT256_t,MTLAirEntry *>,std::__unordered_map_hasher<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,MTLAirEntry *>,UnorderedContainerHash,UnorderedContainerHash,true>,std::__unordered_map_equal<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,MTLAirEntry *>,UnorderedContainerHash,UnorderedContainerHash,true>,std::allocator<std::__hash_value_type<MTLUINT256_t,MTLAirEntry *>>>::__emplace_unique_key_args<MTLUINT256_t,std::pair<MTLUINT256_t const,MTLAirEntry *> const&>(a1, i + 2, (i + 2));
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<MTLUINT256_t,MTLAirEntry *>,std::__unordered_map_hasher<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,MTLAirEntry *>,UnorderedContainerHash,UnorderedContainerHash,true>,std::__unordered_map_equal<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,MTLAirEntry *>,UnorderedContainerHash,UnorderedContainerHash,true>,std::allocator<std::__hash_value_type<MTLUINT256_t,MTLAirEntry *>>>::__emplace_unique_key_args<MTLUINT256_t,std::pair<MTLUINT256_t const,MTLAirEntry *> const&>(void *a1, unint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_28;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = *a2;
    if (v3 >= *&v4)
    {
      v6 = v3 % *&v4;
    }
  }

  else
  {
    v6 = (*&v4 - 1) & v3;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_28:
    operator new();
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v3)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_28;
    }

LABEL_27:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_28;
    }
  }

  if (v8[2] != *a2 || v8[3] != a2[1] || v8[4] != a2[2] || v8[5] != a2[3])
  {
    goto LABEL_27;
  }

  return v8;
}

uint64_t std::vector<machOEntry>::__emplace_back_slow_path<>(unint64_t *a1)
{
  v1 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 3);
  v2 = v1 + 1;
  if (v1 + 1 > 0x38E38E38E38E38ELL)
  {
    std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
  }

  if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3) > v2)
  {
    v2 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3);
  }

  if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 3) >= 0x1C71C71C71C71C7)
  {
    v4 = 0x38E38E38E38E38ELL;
  }

  else
  {
    v4 = v2;
  }

  v15 = a1;
  if (v4)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<machOEntry>>(a1, v4);
  }

  v5 = 72 * v1;
  v12 = 0;
  v13 = v5;
  *(&v14 + 1) = 0;
  *v5 = 0u;
  *(v5 + 16) = 0u;
  *(v5 + 32) = 0u;
  *(v5 + 48) = 0u;
  *(v5 + 64) = 0;
  *&v14 = 72 * v1 + 72;
  v6 = a1[1];
  v7 = 72 * v1 + *a1 - v6;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<machOEntry>,machOEntry*>(a1, *a1, v6, v5 + *a1 - v6);
  v8 = *a1;
  *a1 = v7;
  v9 = a1[2];
  v11 = v14;
  *(a1 + 1) = v14;
  *&v14 = v8;
  *(&v14 + 1) = v9;
  v12 = v8;
  v13 = v8;
  std::__split_buffer<machOEntry>::~__split_buffer(&v12);
  return v11;
}

void sub_185C5E13C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<machOEntry>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<machOEntry>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x38E38E38E38E38FLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<machOEntry>,machOEntry*>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v14 = a4;
  v13 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  if (a2 == a3)
  {
    v12 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      v8 = v6[2];
      *(a4 + 16) = v6[1];
      *(a4 + 32) = v8;
      *a4 = v7;
      *(a4 + 56) = 0;
      *(a4 + 64) = 0;
      *(a4 + 48) = 0;
      *(a4 + 48) = v6[3];
      *(a4 + 64) = *(v6 + 8);
      *(v6 + 6) = 0;
      *(v6 + 7) = 0;
      *(v6 + 8) = 0;
      v6 = (v6 + 72);
      a4 += 72;
    }

    while (v6 != a3);
    v14 = a4;
    v12 = 1;
    while (v5 != a3)
    {
      v9 = *(v5 + 6);
      if (v9)
      {
        *(v5 + 7) = v9;
        operator delete(v9);
      }

      v5 = (v5 + 72);
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<machOEntry>,machOEntry*>>::~__exception_guard_exceptions[abi:ne200100](v11);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<machOEntry>,machOEntry*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<machOEntry>,machOEntry*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<machOEntry>,machOEntry*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 24);
    if (v3)
    {
      *(v1 - 16) = v3;
      operator delete(v3);
    }

    v1 -= 72;
  }
}

uint64_t std::__split_buffer<machOEntry>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<machOEntry>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<machOEntry>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    *(a1 + 16) = v2 - 72;
    v5 = *(v2 - 24);
    if (v5)
    {
      *(v2 - 16) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 72;
    }
  }
}

void *std::__hash_table<std::__hash_value_type<MTLUINT256_t,NSObject  {objcproto16OS_dispatch_data}*>,std::__unordered_map_hasher<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,NSObject  {objcproto16OS_dispatch_data}*>,UnorderedContainerHash,UnorderedContainerHash,true>,std::__unordered_map_equal<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,NSObject  {objcproto16OS_dispatch_data}*>,UnorderedContainerHash,UnorderedContainerHash,true>,std::allocator<std::__hash_value_type<MTLUINT256_t,NSObject  {objcproto16OS_dispatch_data}*>>>::__emplace_unique_key_args<MTLUINT256_t,std::piecewise_construct_t const&,std::tuple<MTLUINT256_t const&>,std::tuple<>>(void *a1, unint64_t *a2, uint64_t a3, _OWORD **a4)
{
  v4 = *a2;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_28;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *a2;
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_28:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_28;
    }

LABEL_27:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_28;
    }
  }

  if (v9[2] != *a2 || v9[3] != a2[1] || v9[4] != a2[2] || v9[5] != a2[3])
  {
    goto LABEL_27;
  }

  return v9;
}

uint64_t *std::vector<MTLUINT256_t>::__init_with_size[abi:ne200100]<MTLUINT256_t*,MTLUINT256_t*>(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<MTLUINT256_t>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_185C5E654(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::pair<MTLHashKey,unsigned int> *,std::pair<MTLHashKey,unsigned int> *,std::pair<MTLHashKey,unsigned int> *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = a2;
  if (a2 != a3)
  {
    v7 = a2 + 64;
    do
    {
      v9 = v7 - 64;
      v8 = *(v7 - 64);
      *(a4 + 16) = *(v7 - 48);
      v10 = *(v7 - 56);
      *a4 = v8;
      *(a4 + 8) = v10;
      v11 = *(v7 - 40);
      *(a4 + 40) = *(v7 - 24);
      *(a4 + 24) = v11;
      if (a4 != v7 - 64)
      {
        std::vector<MTLUINT256_t>::__assign_with_size[abi:ne200100]<MTLUINT256_t*,MTLUINT256_t*>((a4 + 56), *(v7 - 8), *v7, (*v7 - *(v7 - 8)) >> 5);
      }

      *(a4 + 80) = *(v7 + 16);
      a4 += 88;
      v7 += 88;
    }

    while (v9 + 88 != a3);
    return a3;
  }

  return result;
}

void std::__shared_ptr_emplace<std::vector<machOEntry>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1EF474DE8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1865FF210);
}

void std::vector<machOEntry>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<machOEntry>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<machOEntry>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 72)
  {
    v4 = *(i - 24);
    if (v4)
    {
      *(i - 16) = v4;
      operator delete(v4);
    }
  }

  a1[1] = v2;
}

const void **std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(void *a1, const void **a2, uint64_t a3)
{
  v5 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v6 = v5;
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_18;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v5;
    if (v5 >= *&v7)
    {
      v10 = v5 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v5;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_18:
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__construct_node_hash<std::string const&>();
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v6)
    {
      break;
    }

    if (v9 > 1)
    {
      if (v13 >= *&v7)
      {
        v13 %= *&v7;
      }
    }

    else
    {
      v13 &= *&v7 - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_18;
    }

LABEL_17:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v12 + 2, a2))
  {
    goto LABEL_17;
  }

  return v12;
}

void sub_185C5EA98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_185C5EB58(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void sub_185C5EBB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_185C5EC88(_Unwind_Exception *a1)
{
  *v2 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,void *>>>::operator()[abi:ne200100](v3, v1);
  _Unwind_Resume(a1);
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::string_view>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string_view>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string_view>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string_view>>>::__node_insert_multi(void *a1, uint64_t a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2 + 16);
  *(a2 + 8) = v4;
  inserted = std::__hash_table<std::__hash_value_type<std::string,std::string_view>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string_view>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string_view>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string_view>>>::__node_insert_multi_prepare(a1, v4, (a2 + 16));
  std::__hash_table<std::__hash_value_type<std::string,std::string_view>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string_view>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string_view>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string_view>>>::__node_insert_multi_perform(a1, a2, inserted);
  return a2;
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::string_view>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string_view>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string_view>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string_view>>>::__node_insert_multi_prepare(unint64_t a1, unint64_t a2, const void **a3)
{
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (!v6 || (v8 * v6) < v7)
  {
    v9 = 1;
    if (v6 >= 3)
    {
      v9 = (v6 & (v6 - 1)) != 0;
    }

    v10 = v9 | (2 * v6);
    v11 = vcvtps_u32_f32(v7 / v8);
    if (v10 <= v11)
    {
      v12 = v11;
    }

    else
    {
      v12 = v10;
    }

    std::__hash_table<std::__hash_value_type<std::string,std::string_view>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string_view>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string_view>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string_view>>>::__rehash<false>(a1, v12);
    v6 = *(a1 + 8);
  }

  v13 = vcnt_s8(v6);
  v13.i16[0] = vaddlv_u8(v13);
  v14 = v13.u32[0];
  if (v13.u32[0] > 1uLL)
  {
    v15 = a2;
    if (v6 <= a2)
    {
      v15 = a2 % v6;
    }
  }

  else
  {
    v15 = (v6 - 1) & a2;
  }

  v16 = *(*a1 + 8 * v15);
  if (v16)
  {
    v17 = *v16;
    if (*v16)
    {
      v18 = 0;
      do
      {
        v19 = v17[1];
        if (v14 > 1)
        {
          v20 = v17[1];
          if (v19 >= v6)
          {
            v20 = v19 % v6;
          }
        }

        else
        {
          v20 = v19 & (v6 - 1);
        }

        if (v20 != v15)
        {
          break;
        }

        v21 = v19 == a2 && std::equal_to<std::string>::operator()[abi:ne200100](a1, v17 + 2, a3);
        if ((v18 & (v21 != (v18 & 1))) != 0)
        {
          break;
        }

        v18 |= v21 != (v18 & 1);
        v16 = *v16;
        v17 = *v16;
      }

      while (*v16);
    }
  }

  return v16;
}

void *std::__hash_table<std::__hash_value_type<std::string,std::string_view>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string_view>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string_view>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string_view>>>::__node_insert_multi_perform(void *result, void *a2, void *a3)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  if (!a3)
  {
    *a2 = result[2];
    result[2] = a2;
    *(*result + 8 * v4) = result + 2;
    if (!*a2)
    {
      goto LABEL_19;
    }

    v6 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v6 >= *&v3)
      {
        v6 %= *&v3;
      }
    }

    else
    {
      v6 &= *&v3 - 1;
    }

LABEL_18:
    *(*result + 8 * v6) = a2;
    goto LABEL_19;
  }

  *a2 = *a3;
  *a3 = a2;
  if (*a2)
  {
    v6 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v6 >= *&v3)
      {
        v6 %= *&v3;
      }
    }

    else
    {
      v6 &= *&v3 - 1;
    }

    if (v6 != v4)
    {
      goto LABEL_18;
    }
  }

LABEL_19:
  ++result[3];
  return result;
}

void std::__hash_table<std::__hash_value_type<std::string,std::string_view>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string_view>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string_view>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string_view>>>::__rehash<false>(unint64_t result, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(result + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(result + 24) / *(result + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<std::__hash_value_type<std::string,std::string_view>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string_view>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string_view>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string_view>>>::__do_rehash<false>(result, prime);
    }
  }
}

void std::__hash_table<std::__hash_value_type<std::string,std::string_view>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string_view>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string_view>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string_view>>>::__do_rehash<false>(void **a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  a1[1] = 0;
}

const void **std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v6 == v12)
    {
      if (std::equal_to<std::string>::operator()[abi:ne200100](a1, i + 2, a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::string_view>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string_view>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string_view>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string_view>>>::__equal_range_multi<std::string>(void *a1, const void **a2)
{
  v4 = std::__hash_table<std::__hash_value_type<std::string,DataBlock>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,DataBlock>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,DataBlock>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,DataBlock>>>::find<std::string>(a1, a2);
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    do
    {
      v6 = *v6;
    }

    while (v6 && std::equal_to<std::string>::operator()[abi:ne200100](a1, v6 + 2, a2));
  }

  return v5;
}

uint64_t *std::vector<std::pair<MTLHashKey,unsigned int>>::__init_with_size[abi:ne200100]<std::pair<MTLHashKey,unsigned int>*,std::pair<MTLHashKey,unsigned int>*>(uint64_t *result, MTLHashKey *a2, int a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::pair<MTLHashKey,unsigned int>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_185C5F3D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 8) = v10;
  std::vector<std::pair<MTLHashKey,unsigned int>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<std::pair<MTLHashKey,unsigned int>>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x2E8BA2E8BA2E8BBLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<MTLHashKey,unsigned int>>>(a1, a2);
  }

  std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<MTLHashKey,unsigned int>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2E8BA2E8BA2E8BBLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

MTLHashKey *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::pair<MTLHashKey,unsigned int>>,std::pair<MTLHashKey,unsigned int>*,std::pair<MTLHashKey,unsigned int>*,std::pair<MTLHashKey,unsigned int>*>(int a1, MTLHashKey *a2, MTLHashKey *a3, MTLHashKey *this)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      MTLHashKey::MTLHashKey(this, v6);
      LODWORD(this[1].var0.var0) = v6[1].var0.var0;
      v6 = (v6 + 88);
      this = (this + 88);
      v7 -= 88;
    }

    while (v6 != a3);
  }

  return this;
}

void sub_185C5F50C(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = (v1 - 88);
    do
    {
      MTLHashKey::~MTLHashKey(v4);
      v4 = (v5 - 88);
      v2 += 88;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::pair<MTLHashKey,unsigned int>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        MTLHashKey::~MTLHashKey((v4 - 88));
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<MTLLoaderMachOPayload>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x24924924924924ALL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::vector<std::pair<MTLHashKey,unsigned int>>::__emplace_back_slow_path<MTLHashKey&,int>(uint64_t a1, const MTLHashKey *a2, _DWORD *a3)
{
  v3 = 0x2E8BA2E8BA2E8BA3 * ((*(a1 + 8) - *a1) >> 3);
  v4 = v3 + 1;
  if ((v3 + 1) > 0x2E8BA2E8BA2E8BALL)
  {
    std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
  }

  if (0x5D1745D1745D1746 * ((*(a1 + 16) - *a1) >> 3) > v4)
  {
    v4 = 0x5D1745D1745D1746 * ((*(a1 + 16) - *a1) >> 3);
  }

  if ((0x2E8BA2E8BA2E8BA3 * ((*(a1 + 16) - *a1) >> 3)) >= 0x1745D1745D1745DLL)
  {
    v8 = 0x2E8BA2E8BA2E8BALL;
  }

  else
  {
    v8 = v4;
  }

  v19 = a1;
  if (v8)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<MTLHashKey,unsigned int>>>(a1, v8);
  }

  v16 = 0;
  v17 = 88 * v3;
  v18 = (88 * v3);
  MTLHashKey::MTLHashKey((88 * v3), a2);
  *(v9 + 80) = *a3;
  *&v18 = v18 + 88;
  v10 = *(a1 + 8);
  v11 = (v17 + *a1 - v10);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::pair<MTLHashKey,unsigned int>>,std::pair<MTLHashKey,unsigned int>*>(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = *(a1 + 16);
  v15 = v18;
  *(a1 + 8) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  std::__split_buffer<std::pair<MTLHashKey,unsigned int>>::~__split_buffer(&v16);
  return v15;
}

void sub_185C5F750(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<std::pair<MTLHashKey,unsigned int>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::pair<MTLHashKey,unsigned int>>,std::pair<MTLHashKey,unsigned int>*>(int a1, MTLHashKey *a2, MTLHashKey *a3, MTLHashKey *this)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    v8 = a2;
    do
    {
      MTLHashKey::MTLHashKey(this, v8);
      LODWORD(this[1].var0.var0) = v8[1].var0.var0;
      v8 = (v8 + 88);
      this = (this + 88);
      v7 -= 88;
    }

    while (v8 != a3);
    while (v6 != a3)
    {
      MTLHashKey::~MTLHashKey(v6);
      v6 = (v6 + 88);
    }
  }
}

void sub_185C5F7EC(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = (v1 - 88);
    do
    {
      MTLHashKey::~MTLHashKey(v4);
      v4 = (v5 - 88);
      v2 += 88;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<std::pair<MTLHashKey,unsigned int>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 88;
    MTLHashKey::~MTLHashKey((i - 88));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,std::vector<std::pair<MTLHashKey,unsigned int>>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::vector<std::pair<MTLHashKey,unsigned int>>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::vector<std::pair<MTLHashKey,unsigned int>>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::vector<std::pair<MTLHashKey,unsigned int>>>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long const,std::vector<std::pair<MTLHashKey,unsigned int>>>>(void *a1, unint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_18;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = *a2;
    if (v3 >= *&v4)
    {
      v6 = v3 % *&v4;
    }
  }

  else
  {
    v6 = (*&v4 - 1) & v3;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v3)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_18;
    }

LABEL_17:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_18;
    }
  }

  if (v8[2] != v3)
  {
    goto LABEL_17;
  }

  return v8;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,std::vector<std::pair<MTLHashKey,unsigned int>>>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p + 3;
    std::vector<std::pair<MTLHashKey,unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v3);
  }

  if (__p)
  {
    operator delete(__p);
  }
}

uint64_t std::__tree<std::__value_type<MTLUINT256_t,std::pair<unsigned int,unsigned long long>>,std::__map_value_compare<MTLUINT256_t,std::__value_type<MTLUINT256_t,std::pair<unsigned int,unsigned long long>>,CompareHash,true>,std::allocator<std::__value_type<MTLUINT256_t,std::pair<unsigned int,unsigned long long>>>>::__emplace_unique_key_args<MTLUINT256_t,std::pair<MTLUINT256_t const,std::pair<unsigned int,unsigned long long>>>(uint64_t **a1, unint64_t *a2, _OWORD *a3)
{
  v3 = *std::__tree<std::__value_type<MTLUINT256_t,std::pair<unsigned int,unsigned long long>>,std::__map_value_compare<MTLUINT256_t,std::__value_type<MTLUINT256_t,std::pair<unsigned int,unsigned long long>>,CompareHash,true>,std::allocator<std::__value_type<MTLUINT256_t,std::pair<unsigned int,unsigned long long>>>>::__find_equal<MTLUINT256_t>(a1, &v5, a2);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

void *std::__tree<std::__value_type<MTLUINT256_t,std::pair<unsigned int,unsigned long long>>,std::__map_value_compare<MTLUINT256_t,std::__value_type<MTLUINT256_t,std::pair<unsigned int,unsigned long long>>,CompareHash,true>,std::allocator<std::__value_type<MTLUINT256_t,std::pair<unsigned int,unsigned long long>>>>::__find_equal<MTLUINT256_t>(uint64_t a1, void *a2, unint64_t *a3)
{
  v5 = *(a1 + 8);
  result = (a1 + 8);
  v4 = v5;
  if (v5)
  {
    v6 = bswap64(*a3);
    while (1)
    {
      v7 = v4;
      v8 = bswap64(v4[4]);
      if (v6 != v8)
      {
        break;
      }

      v9 = bswap64(a3[1]);
      v8 = bswap64(v7[5]);
      if (v9 != v8)
      {
        goto LABEL_9;
      }

      v9 = bswap64(a3[2]);
      v8 = bswap64(v7[6]);
      if (v9 != v8)
      {
        goto LABEL_9;
      }

      v9 = bswap64(a3[3]);
      v8 = bswap64(v7[7]);
      if (v9 != v8)
      {
        goto LABEL_9;
      }

      v10 = 0;
LABEL_12:
      if (v10 < 1)
      {
        v11 = bswap64(v7[4]);
        v12 = bswap64(*a3);
        if (v11 == v12 && (v11 = bswap64(v7[5]), v12 = bswap64(a3[1]), v11 == v12) && (v11 = bswap64(v7[6]), v12 = bswap64(a3[2]), v11 == v12) && (v11 = bswap64(v7[7]), v12 = bswap64(a3[3]), v11 == v12))
        {
          v13 = 0;
        }

        else if (v11 < v12)
        {
          v13 = -1;
        }

        else
        {
          v13 = 1;
        }

        if (v13 < 1)
        {
          goto LABEL_27;
        }

        result = v7 + 1;
        v4 = v7[1];
        if (!v4)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v4 = *v7;
        result = v7;
        if (!*v7)
        {
          goto LABEL_27;
        }
      }
    }

    v9 = v6;
LABEL_9:
    if (v9 < v8)
    {
      v10 = -1;
    }

    else
    {
      v10 = 1;
    }

    goto LABEL_12;
  }

  v7 = result;
LABEL_27:
  *a2 = v7;
  return result;
}

uint64_t ___ZNK21MTLPipelineCollection14visitLibrariesIZ61___MTLBinaryArchive_enumerateArchivesFromPipelineCollection__E3__5EEvOT__block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(v1 + 32);
  v3 = (v1 + 40);
  if (v2 != (v1 + 40))
  {
    v4 = result;
    do
    {
      v5 = *(v4 + 40);
      result = MTLHashKey::hash(v2[8]);
      if (!(v2[4] | v2[5] | v2[6] | v2[7]))
      {
        goto LABEL_7;
      }

      if (result)
      {
        _MTLNSDataToDispatchData(result, 0);
      }

      result = (*(*(v5 + 8) + 16))();
      if ((result & 1) == 0)
      {
LABEL_7:
        **v5 = 0;
      }

      v6 = v2[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v2[2];
          v8 = *v7 == v2;
          v2 = v7;
        }

        while (!v8);
      }

      v2 = v7;
    }

    while (v7 != v3);
  }

  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long long,std::vector<std::pair<MTLHashKey,unsigned int>>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::vector<std::pair<MTLHashKey,unsigned int>>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::vector<std::pair<MTLHashKey,unsigned int>>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::vector<std::pair<MTLHashKey,unsigned int>>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<unsigned long long,std::vector<std::pair<MTLHashKey,unsigned int>>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::vector<std::pair<MTLHashKey,unsigned int>>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::vector<std::pair<MTLHashKey,unsigned int>>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::vector<std::pair<MTLHashKey,unsigned int>>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<unsigned long long,std::vector<std::pair<MTLHashKey,unsigned int>>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::vector<std::pair<MTLHashKey,unsigned int>>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::vector<std::pair<MTLHashKey,unsigned int>>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::vector<std::pair<MTLHashKey,unsigned int>>>>>::__deallocate_node(uint64_t a1, char *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      v4 = (v2 + 24);
      std::vector<std::pair<MTLHashKey,unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v4);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void *std::__hash_table<std::__hash_value_type<MTLUINT256_t,MTLAirEntry *>,std::__unordered_map_hasher<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,MTLAirEntry *>,UnorderedContainerHash,UnorderedContainerHash,true>,std::__unordered_map_equal<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,MTLAirEntry *>,UnorderedContainerHash,UnorderedContainerHash,true>,std::allocator<std::__hash_value_type<MTLUINT256_t,MTLAirEntry *>>>::__emplace_unique_key_args<MTLUINT256_t,std::pair<MTLUINT256_t,MTLAirEntry *>>(void *a1, unint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_28;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = *a2;
    if (v3 >= *&v4)
    {
      v6 = v3 % *&v4;
    }
  }

  else
  {
    v6 = (*&v4 - 1) & v3;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_28:
    operator new();
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v3)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_28;
    }

LABEL_27:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_28;
    }
  }

  if (v8[2] != *a2 || v8[3] != a2[1] || v8[4] != a2[2] || v8[5] != a2[3])
  {
    goto LABEL_27;
  }

  return v8;
}

void *std::__hash_table<std::__hash_value_type<MTLUINT256_t,MTLProgramObject *>,std::__unordered_map_hasher<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,MTLProgramObject *>,UnorderedContainerHash,UnorderedContainerHash,true>,std::__unordered_map_equal<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,MTLProgramObject *>,UnorderedContainerHash,UnorderedContainerHash,true>,std::allocator<std::__hash_value_type<MTLUINT256_t,MTLProgramObject *>>>::__emplace_unique_key_args<MTLUINT256_t,std::piecewise_construct_t const&,std::tuple<MTLUINT256_t const&>,std::tuple<>>(void *a1, unint64_t *a2, uint64_t a3, _OWORD **a4)
{
  v4 = *a2;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_28;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *a2;
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_28:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_28;
    }

LABEL_27:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_28;
    }
  }

  if (v9[2] != *a2 || v9[3] != a2[1] || v9[4] != a2[2] || v9[5] != a2[3])
  {
    goto LABEL_27;
  }

  return v9;
}

uint64_t *std::vector<objc_object  {objcproto11MTLFunction}*>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<MTLStructMember *>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_185C6033C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::__hash_table<std::__hash_value_type<MTLUINT256_t,MTLAirEntry *>,std::__unordered_map_hasher<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,MTLAirEntry *>,UnorderedContainerHash,UnorderedContainerHash,true>,std::__unordered_map_equal<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,MTLAirEntry *>,UnorderedContainerHash,UnorderedContainerHash,true>,std::allocator<std::__hash_value_type<MTLUINT256_t,MTLAirEntry *>>>::__emplace_unique_key_args<MTLUINT256_t,std::piecewise_construct_t const&,std::tuple<MTLUINT256_t const&>,std::tuple<>>(void *a1, unint64_t *a2, uint64_t a3, _OWORD **a4)
{
  v4 = *a2;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_28;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *a2;
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_28:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_28;
    }

LABEL_27:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_28;
    }
  }

  if (v9[2] != *a2 || v9[3] != a2[1] || v9[4] != a2[2] || v9[5] != a2[3])
  {
    goto LABEL_27;
  }

  return v9;
}

void *std::__hash_table<std::__hash_value_type<MTLHashKey,MTLOpaqueGPUArchiverUnitId *>,std::__unordered_map_hasher<MTLHashKey,std::__hash_value_type<MTLHashKey,MTLOpaqueGPUArchiverUnitId *>,CompareFunctionIdHash,CompareFunctionIdHash,true>,std::__unordered_map_equal<MTLHashKey,std::__hash_value_type<MTLHashKey,MTLOpaqueGPUArchiverUnitId *>,CompareFunctionIdHash,CompareFunctionIdHash,true>,std::allocator<std::__hash_value_type<MTLHashKey,MTLOpaqueGPUArchiverUnitId *>>>::__emplace_unique_key_args<MTLHashKey,std::piecewise_construct_t const&,std::tuple<MTLHashKey const&>,std::tuple<>>(void *a1, MTLHashKey *this, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = MTLHashKey::hash(this);
  v8 = v7;
  v9 = a1[1];
  if (!*&v9)
  {
    goto LABEL_18;
  }

  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  v11 = v10.u32[0];
  if (v10.u32[0] > 1uLL)
  {
    v12 = v7;
    if (v7 >= *&v9)
    {
      v12 = v7 % *&v9;
    }
  }

  else
  {
    v12 = (*&v9 - 1) & v7;
  }

  v13 = *(*a1 + 8 * v12);
  if (!v13 || (v14 = *v13) == 0)
  {
LABEL_18:
    std::__hash_table<std::__hash_value_type<MTLHashKey,MTLOpaqueGPUArchiverUnitId *>,std::__unordered_map_hasher<MTLHashKey,std::__hash_value_type<MTLHashKey,MTLOpaqueGPUArchiverUnitId *>,CompareFunctionIdHash,CompareFunctionIdHash,true>,std::__unordered_map_equal<MTLHashKey,std::__hash_value_type<MTLHashKey,MTLOpaqueGPUArchiverUnitId *>,CompareFunctionIdHash,CompareFunctionIdHash,true>,std::allocator<std::__hash_value_type<MTLHashKey,MTLOpaqueGPUArchiverUnitId *>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<MTLHashKey const&>,std::tuple<>>();
  }

  while (1)
  {
    v15 = v14[1];
    if (v15 == v8)
    {
      break;
    }

    if (v11 > 1)
    {
      if (v15 >= *&v9)
      {
        v15 %= *&v9;
      }
    }

    else
    {
      v15 &= *&v9 - 1;
    }

    if (v15 != v12)
    {
      goto LABEL_18;
    }

LABEL_17:
    v14 = *v14;
    if (!v14)
    {
      goto LABEL_18;
    }
  }

  if (!MTLHashKey::operator==(v14 + 2, this))
  {
    goto LABEL_17;
  }

  return v14;
}

void sub_185C60804(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<MTLHashKey,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<MTLHashKey,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void MTLIOAccelPooledResourceRelease(os_unfair_lock_s *a1)
{
  v1 = a1;
  v2 = a1 + 76;
  v3 = *&a1[76]._os_unfair_lock_opaque;
  if (v3)
  {
    v4 = v3 + 2;
    *&v2->_os_unfair_lock_opaque = 0;
    v8 = v3;
    os_unfair_lock_lock(v3 + 10);
    if (v2[8]._os_unfair_lock_opaque == v8[22]._os_unfair_lock_opaque)
    {
      v5 = &v4[4];
      v6 = *&v4[4]._os_unfair_lock_opaque;
      *&v1[78]._os_unfair_lock_opaque = v6;
      if (v6)
      {
        v7 = v6 + 80;
      }

      else
      {
        v7 = v4 + 6;
      }

      *&v7->_os_unfair_lock_opaque = v1 + 78;
      *v5 = v1;
      *&v1[80]._os_unfair_lock_opaque = v5;
      ++v4[9]._os_unfair_lock_opaque;
      *&v2[6]._os_unfair_lock_opaque = mach_absolute_time();
    }

    else
    {
    }

    os_unfair_lock_unlock(v4 + 8);
    a1 = v8;
  }
}

void std::vector<MTLRasterizationRateLayerDescriptor *>::resize(void *result, unint64_t a2, uint64_t *a3)
{
  v3 = (result[1] - *result) >> 3;
  if (a2 <= v3)
  {
    if (a2 < v3)
    {
      result[1] = *result + 8 * a2;
    }
  }

  else
  {
    std::vector<MTLRasterizationRateLayerDescriptor *>::__append(result, a2 - v3, a3);
  }
}

void std::vector<MTLRasterizationRateLayerDescriptor *>::__append(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (a2 <= (v5 - v6) >> 3)
  {
    if (a2)
    {
      v12 = 0;
      v13 = v6 + 8 * a2;
      v14 = *a3;
      v15 = (a2 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
      v16 = vdupq_n_s64(v15);
      v17 = (v6 + 8);
      do
      {
        v18 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(vdupq_n_s64(v12), xmmword_185DB7AF0)));
        if (v18.i8[0])
        {
          *(v17 - 1) = v14;
        }

        if (v18.i8[4])
        {
          *v17 = v14;
        }

        v12 += 2;
        v17 += 2;
      }

      while (v15 - ((a2 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v12);
    }

    else
    {
      v13 = *(a1 + 8);
    }

    *(a1 + 8) = v13;
  }

  else
  {
    v7 = v6 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
    }

    v9 = v7 >> 3;
    v10 = v5 - *a1;
    if (v10 >> 2 > v8)
    {
      v8 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v8;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<objc_object  {objcproto18MTLIOScratchBuffer}*>>(a1, v11);
    }

    v19 = 0;
    v20 = 8 * v9;
    v21 = 8 * v9 + 8 * a2;
    v22 = *a3;
    v23 = (a2 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v24 = v23 - ((a2 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2;
    v25 = vdupq_n_s64(v23);
    v26 = (v20 + 8);
    do
    {
      v27 = vmovn_s64(vcgeq_u64(v25, vorrq_s8(vdupq_n_s64(v19), xmmword_185DB7AF0)));
      if (v27.i8[0])
      {
        *(v26 - 1) = v22;
      }

      if (v27.i8[4])
      {
        *v26 = v22;
      }

      v19 += 2;
      v26 += 2;
    }

    while (v24 != v19);
    v28 = *(a1 + 8) - *a1;
    v29 = v20 - v28;
    memcpy((v20 - v28), *a1, v28);
    v30 = *a1;
    *a1 = v29;
    *(a1 + 8) = v21;
    *(a1 + 16) = 0;
    if (v30)
    {

      operator delete(v30);
    }
  }
}

uint64_t MTLShouldEnableNewCompilerScheduler()
{
  v0 = _os_feature_enabled_impl();
  v1 = dyld_program_sdk_at_least();
  if (!v1)
  {
    return MTLEnvVarAggregator::GET_MTL_COMPILER_SCHEDULER_VERSION(v1, 0) == 1;
  }

  v2 = MTLEnvVarAggregator::GET_MTL_COMPILER_SCHEDULER_VERSION(1, 0xFFFFFFFFLL);
  if (v2 == -1)
  {
    return v0;
  }

  else
  {
    return v2 == 1;
  }
}

uint64_t MTLEnvVarAggregator::GET_MTL_COMPILER_SCHEDULER_VERSION(MTLEnvVarAggregator *this, uint64_t a2)
{
  if (!MTLEnvVarAggregator::isInternalBuild(this))
  {
    return 0;
  }

  {
    MTLEnvVarAggregator::GET_MTL_COMPILER_SCHEDULER_VERSION();
  }

  if (MTLEnvVarAggregator::GET_MTL_COMPILER_SCHEDULER_VERSION(BOOL,int)::ev)
  {
    return strtol(MTLEnvVarAggregator::GET_MTL_COMPILER_SCHEDULER_VERSION(BOOL,int)::ev, 0, 0);
  }

  return a2;
}

void __MTLGetOptimalCompilerProcessesCount_block_invoke()
{
  if ((atomic_load_explicit(&_ZGVZZ35MTLGetOptimalCompilerProcessesCountEUb_E7fromEnv, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_ZGVZZ35MTLGetOptimalCompilerProcessesCountEUb_E7fromEnv))
  {
    _ZZZ35MTLGetOptimalCompilerProcessesCountEUb_E7fromEnv = MTLEnvVarAggregator::GET_MTL_MAX_COMPILER_TASKS(0, 0);
    __cxa_guard_release(&_ZGVZZ35MTLGetOptimalCompilerProcessesCountEUb_E7fromEnv);
  }

  v0 = _ZZZ35MTLGetOptimalCompilerProcessesCountEUb_E7fromEnv;
  if (!_ZZZ35MTLGetOptimalCompilerProcessesCountEUb_E7fromEnv)
  {
    v0 = 2;
  }

  MTLGetOptimalCompilerProcessesCount::ret = v0;
}

uint64_t MTLEnvVarAggregator::GET_MTL_MAX_COMPILER_TASKS(MTLEnvVarAggregator *this, uint64_t a2)
{
  if (!MTLEnvVarAggregator::isInternalBuild(this))
  {
    return 0;
  }

  {
    MTLEnvVarAggregator::GET_MTL_MAX_COMPILER_TASKS();
  }

  if (MTLEnvVarAggregator::GET_MTL_MAX_COMPILER_TASKS(BOOL,int)::ev)
  {
    return strtol(MTLEnvVarAggregator::GET_MTL_MAX_COMPILER_TASKS(BOOL,int)::ev, 0, 0);
  }

  return a2;
}

uint64_t MTLFeatureSetSupportsSamplingFromPixelFormat(unint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (a1 >= 0x13)
  {
    if (a3)
    {
      v7 = [MEMORY[0x1E695DF20] dictionaryWithObject:@"Unrecognized Metal Feature Set for this platform" forKey:*MEMORY[0x1E696A578]];
      v8 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"MTLLibraryErrorDomain" code:3 userInfo:v7];
      v5 = 0;
      *a3 = v8;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v4 = MTLGetGPUFamilyFromFeatureSet(qword_185DD30C0[a1]);
    MTLPixelFormatQuery::MTLPixelFormatQuery(v14, v4);
    v13 = 0;
    v11 = 0u;
    v12 = 0u;
    v10 = 0u;
    MTLPixelFormatGetInfoForFeatureSetQuery(v14, a2, &v10);
    v5 = v10.i8[8] & 1;
    if (__p)
    {
      v16 = __p;
      operator delete(__p);
    }
  }

  return v5;
}

void sub_185C6338C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MTLGPUFamilySupportsSamplingFromPixelFormat(MTLGPUFamily a1, uint64_t a2, uint64_t *a3)
{
  if (a1 > 2000)
  {
    if ((a1 - 3001) >= 3 && (a1 - 2001) >= 2 && (a1 - 4001) >= 2)
    {
      goto LABEL_11;
    }
  }

  else if ((a1 - 1001) >= 0xA && a1 != -1009)
  {
LABEL_11:
    if (!a3)
    {
      return 0;
    }

    v7 = [MEMORY[0x1E695DF20] dictionaryWithObject:@"Unrecognized Metal GPU Family" forKey:*MEMORY[0x1E696A578]];
    v8 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"MTLLibraryErrorDomain" code:1 userInfo:v7];
    v5 = 0;
    *a3 = v8;
    return v5;
  }

  MTLPixelFormatQuery::MTLPixelFormatQuery(v13, a1);
  v12 = 0;
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  MTLPixelFormatGetInfoForFeatureSetQuery(v13, a2, &v9);
  v5 = v9.i8[8] & 1;
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  return v5;
}

void sub_185C634C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MTLPixelFormatGetName(uint64_t a1)
{
  v3 = 0;
  memset(v2, 0, sizeof(v2));
  MTLPixelFormatGetInfoForDevice(0, a1, v2);
  return *&v2[0];
}

uint64_t MTLPixelFormatCompatibilityString(uint64_t a1)
{
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  MTLPixelFormatGetInfoForDevice(0, a1, v5);
  v1 = objc_opt_new();
  v2 = v1;
  v3 = DWORD2(v5[0]);
  if ((DWORD2(v5[0]) & 0x10000) != 0)
  {
    [v1 addObject:@"float"];
    v3 = DWORD2(v5[0]);
    if ((DWORD2(v5[0]) & 0x20000) == 0)
    {
LABEL_3:
      if ((v3 & 0x40000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((DWORD2(v5[0]) & 0x20000) == 0)
  {
    goto LABEL_3;
  }

  [v2 addObject:@"half"];
  v3 = DWORD2(v5[0]);
  if ((DWORD2(v5[0]) & 0x40000) == 0)
  {
LABEL_4:
    if ((v3 & 0x80000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  [v2 addObject:@"int"];
  v3 = DWORD2(v5[0]);
  if ((DWORD2(v5[0]) & 0x80000) == 0)
  {
LABEL_5:
    if ((v3 & 0x100000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  [v2 addObject:@"uint"];
  v3 = DWORD2(v5[0]);
  if ((DWORD2(v5[0]) & 0x100000) == 0)
  {
LABEL_6:
    if ((v3 & 0x200000) == 0)
    {
      goto LABEL_7;
    }

LABEL_15:
    [v2 addObject:@"ushort"];
    if ((DWORD2(v5[0]) & 0x20000000) == 0)
    {
      return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v2];
    }

    goto LABEL_8;
  }

LABEL_14:
  [v2 addObject:@"short"];
  v3 = DWORD2(v5[0]);
  if ((DWORD2(v5[0]) & 0x200000) != 0)
  {
    goto LABEL_15;
  }

LABEL_7:
  if ((v3 & 0x20000000) != 0)
  {
LABEL_8:
    [v2 addObject:@"ulong"];
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v2];
}

uint64_t MTLPixelFormatComputeiOSTotalSizeUsed(uint64_t a1, uint64_t *a2, uint64_t a3, int a4)
{
  if (!a3)
  {
    return 0;
  }

  v5 = a3;
  v8 = 0;
  v15 = 0;
  v16 = 0;
  v14 = 0;
  do
  {
    v9 = *(a1 + 16);
    v12[0] = *a1;
    v12[1] = v9;
    v12[2] = *(a1 + 32);
    v13 = *(a1 + 48);
    if ((WORD4(v12[0]) & 0x401) == 1)
    {
      adjustPixelFormatForiOSDevice(*a2, v12, &v16, &v15, &v14, 1, 1);
      if (a4)
      {
        v10 = &v16;
      }

      else
      {
        v10 = &v15;
      }

      v8 = ((v14 + v8 - 1) & -v14) + *v10;
    }

    ++a2;
    a1 += 56;
    --v5;
  }

  while (v5);
  return v8;
}

BOOL MTLReadWriteTextureIsSupported(void *a1, uint64_t a2)
{
  if (!a1 || [a1 supportsFamily:1003])
  {
    v9 = 0;
    memset(v8, 0, sizeof(v8));
    MTLPixelFormatGetInfoForDevice(a1, a2, v8);
    return (DWORD2(v8[0]) >> 1) & 1;
  }

  v5 = [a1 readWriteTextureSupport];
  v6 = a2 - 10;
  if ((a2 - 10) <= 0x3C)
  {
    if (((1 << v6) & 0x100000000000E019) != 0)
    {
      return v5 > 1;
    }

    if (((1 << v6) & 0x380000000000) != 0)
    {
      return v5 != 0;
    }
  }

  v4 = 0;
  if ((a2 - 73) <= 0x34 && ((1 << (a2 - 73)) & 0x1C070000000003) != 0)
  {
    return v5 > 1;
  }

  return v4;
}

void MTLPixelFormatQuery::MTLPixelFormatQuery(MTLPixelFormatQuery *this, MTLGPUFamily a2)
{
  *this = 0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  MTLPixelFormatQuery::initGPUFamiliesCache(this);
}

void sub_185C63870(_Unwind_Exception *exception_object)
{
  v3 = v2;
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 24) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

void MTLPixelFormatQuery::initGPUFamiliesCache(MTLPixelFormatQuery *this)
{
  v2 = *(this + 1);
  if (v2 <= 1005)
  {
    if (v2 > 1002)
    {
      if (v2 == 1003)
      {
LABEL_40:
        v18 = 1003;
        std::vector<MTLTagType>::push_back[abi:ne200100](this + 2, &v18);
        v18 = 3002;
        std::vector<MTLTagType>::push_back[abi:ne200100](this + 2, &v18);
        goto LABEL_41;
      }

      if (v2 == 1004)
      {
LABEL_39:
        v18 = 1004;
        std::vector<MTLTagType>::push_back[abi:ne200100](this + 2, &v18);
        goto LABEL_40;
      }

LABEL_38:
      v18 = 1005;
      std::vector<MTLTagType>::push_back[abi:ne200100](this + 2, &v18);
      v18 = 3003;
      std::vector<MTLTagType>::push_back[abi:ne200100](this + 2, &v18);
      goto LABEL_39;
    }

    if (v2 != -1009)
    {
      if (v2 == 1001)
      {
LABEL_42:
        v18 = 1001;
        std::vector<MTLTagType>::push_back[abi:ne200100](this + 2, &v18);
        v3 = 3001;
        goto LABEL_43;
      }

      if (v2 != 1002)
      {
        return;
      }

LABEL_41:
      v18 = 1002;
      std::vector<MTLTagType>::push_back[abi:ne200100](this + 2, &v18);
      goto LABEL_42;
    }

    goto LABEL_22;
  }

  if (v2 <= 1008)
  {
    if (v2 == 1006)
    {
LABEL_37:
      v18 = 1006;
      std::vector<MTLTagType>::push_back[abi:ne200100](this + 2, &v18);
      goto LABEL_38;
    }

    if (v2 == 1007)
    {
LABEL_36:
      v18 = 1007;
      std::vector<MTLTagType>::push_back[abi:ne200100](this + 2, &v18);
      goto LABEL_37;
    }

LABEL_35:
    v18 = 1008;
    std::vector<MTLTagType>::push_back[abi:ne200100](this + 2, &v18);
    goto LABEL_36;
  }

  if (v2 <= 2000)
  {
    if (v2 == 1009)
    {
LABEL_34:
      v18 = 1009;
      std::vector<MTLTagType>::push_back[abi:ne200100](this + 2, &v18);
      goto LABEL_35;
    }

    if (v2 != 1010)
    {
      return;
    }

    v18 = 1010;
    std::vector<MTLTagType>::push_back[abi:ne200100](this + 2, &v18);
LABEL_22:
    v5 = *(this + 3);
    v4 = *(this + 4);
    if (v5 >= v4)
    {
      v7 = *(this + 2);
      v8 = v5 - v7;
      v9 = (v5 - v7) >> 3;
      v10 = v9 + 1;
      if ((v9 + 1) >> 61)
      {
        std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
      }

      v11 = v4 - v7;
      if (v11 >> 2 > v10)
      {
        v10 = v11 >> 2;
      }

      v12 = v11 >= 0x7FFFFFFFFFFFFFF8;
      v13 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v12)
      {
        v13 = v10;
      }

      if (v13)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<MTLTagType>>(this + 16, v13);
      }

      v14 = (v5 - v7) >> 3;
      v15 = (8 * v9);
      v16 = (8 * v9 - 8 * v14);
      *v15 = -1009;
      v6 = v15 + 1;
      memcpy(v16, v7, v8);
      v17 = *(this + 2);
      *(this + 2) = v16;
      *(this + 3) = v6;
      *(this + 4) = 0;
      if (v17)
      {
        operator delete(v17);
      }
    }

    else
    {
      *v5 = -1009;
      v6 = v5 + 8;
    }

    *(this + 3) = v6;
    goto LABEL_34;
  }

  if (v2 != 2001)
  {
    if (v2 != 2002)
    {
      return;
    }

    v18 = 2002;
    std::vector<MTLTagType>::push_back[abi:ne200100](this + 2, &v18);
    v18 = 3003;
    std::vector<MTLTagType>::push_back[abi:ne200100](this + 2, &v18);
  }

  v18 = 2001;
  std::vector<MTLTagType>::push_back[abi:ne200100](this + 2, &v18);
  v18 = 3001;
  std::vector<MTLTagType>::push_back[abi:ne200100](this + 2, &v18);
  v3 = 3002;
LABEL_43:
  v18 = v3;
  std::vector<MTLTagType>::push_back[abi:ne200100](this + 2, &v18);
}

uint64_t MTLAccelerationStructureInstanceDescriptorSize(MTLAccelerationStructureInstanceDescriptorType a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 < (MTLAccelerationStructureInstanceDescriptorTypeIndirectMotion|MTLAccelerationStructureInstanceDescriptorTypeUserID))
  {
    return qword_185DD3158[a1];
  }

  MTLReportFailure(0, "MTLAccelerationStructureInstanceDescriptorSize", 1260, @"Invalid instance descriptor type", a5, a6, a7, a8, v8);
  return 0;
}

uint64_t newStringFromConstantValue(unsigned __int16 *a1, uint64_t a2)
{
  ComponentCount = MTLDataTypeGetComponentCount(a2);
  ComponentType = MTLDataTypeGetComponentType(a2);
  v6 = _MTLConstantDataSize(ComponentType);
  std::string::basic_string[abi:ne200100]<0>(&v19, "(");
  if (ComponentCount)
  {
    for (i = 0; i != ComponentCount; ++i)
    {
      __s = 0;
      if (i)
      {
        std::string::append(&v19, ", ");
      }

      if (ComponentType <= 36)
      {
        if (ComponentType > 28)
        {
          if (ComponentType == 29)
          {
            asprintf(&__s, "%i", *a1);
          }

          else
          {
            if (ComponentType != 33)
            {
              goto LABEL_33;
            }

            asprintf(&__s, "%u", *a1);
          }
        }

        else if (ComponentType == 3)
        {
          asprintf(&__s, "%f", *a1);
        }

        else
        {
          if (ComponentType != 16)
          {
            goto LABEL_33;
          }

          _H0 = *a1;
          __asm { FCVT            D0, H0 }

          asprintf(&__s, "%f", _D0);
        }
      }

      else if (ComponentType <= 44)
      {
        if (ComponentType == 37)
        {
          asprintf(&__s, "%i", *a1);
        }

        else
        {
          if (ComponentType != 41)
          {
            goto LABEL_33;
          }

          asprintf(&__s, "%u", *a1);
        }
      }

      else if (ComponentType == 45)
      {
        asprintf(&__s, "%i", *a1);
      }

      else
      {
        if (ComponentType != 49 && ComponentType != 53)
        {
LABEL_33:
          abort();
        }

        asprintf(&__s, "%u", *a1);
      }

      std::string::append(&v19, __s);
      free(__s);
      a1 = (a1 + v6);
    }
  }

  std::string::append(&v19, ")");
  v14 = objc_alloc(MEMORY[0x1E696AEC0]);
  if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v15 = &v19;
  }

  else
  {
    v15 = v19.__r_.__value_.__r.__words[0];
  }

  v16 = [v14 initWithUTF8String:v15];
  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  return v16;
}