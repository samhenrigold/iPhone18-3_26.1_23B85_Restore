uint64_t sub_25B6D6008@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12NanoUniverse14PreferencePane_changeSequence;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_25B6D6060(int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC12NanoUniverse14PreferencePane_changeSequence;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_25B6D61BC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12NanoUniverse14PreferencePane_pickerOptions;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_25B6D621C@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

id sub_25B6D62D4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12NanoUniverse14PreferencePane_userDefaults;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_25B6D638C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA4A278, qword_25B738060);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_25B6D6448(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA4A278, qword_25B738060);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_25B6D6544()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25B6D65D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA4A440, &qword_25B738370);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25B6D6648(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA4A440, &qword_25B738370);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25B6D66B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA4A420, &qword_25B738360);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25B6D6744()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25B6D6780()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_25B6D67D8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12NanoUniverse22AegirCloudCoverService_fileConverter;
  swift_beginAccess();
  *a2 = *(v3 + v4);
  return swift_unknownObjectRetain();
}

uint64_t sub_25B6D6838@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12NanoUniverse22AegirCloudCoverService_disableFetch;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_25B6D6890(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC12NanoUniverse22AegirCloudCoverService_disableFetch;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_25B6D68EC()
{
  v1 = sub_25B716250();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_25B6D69B0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25B6D69E8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25B6D6A30()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_25B6D6A88()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_25B6D6AD8()
{
  MEMORY[0x25F86BE10](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25B6D6B20()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25B6D6B58()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25B6D6B98()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

CGImage *_NUNICreateImageFromURL(void *a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [v3 path];
  v5 = [objc_alloc(MEMORY[0x277D755B8]) initWithContentsOfFile:v4];
  Copy = CGImageCreateCopy([v5 CGImage]);

  if (!Copy)
  {
    v14 = NUNILoggingObjectForDomain(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      _NUNICreateImageFromURL_cold_1(v3, v14);
    }

    if (a2)
    {
      v11 = MEMORY[0x277CCA9B8];
      v12 = &unk_286CFF490;
      v13 = -1;
      goto LABEL_14;
    }

LABEL_15:
    Copy = 0;
    goto LABEL_16;
  }

  Width = CGImageGetWidth(Copy);
  Height = CGImageGetHeight(Copy);
  if ((Width - 1024) > 0xC00 || 2 * Height != Width)
  {
    CGImageRelease(Copy);
    v10 = NUNILoggingObjectForDomain(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v16 = [v3 path];
      v17[0] = 67109634;
      v17[1] = Width;
      v18 = 1024;
      v19 = Height;
      v20 = 2112;
      v21 = v16;
      _os_log_error_impl(&dword_25B6D4000, v10, OS_LOG_TYPE_ERROR, "AegirResourceManager: invalid dimensions (%d, %d) (%@)", v17, 0x18u);
    }

    if (a2)
    {
      v11 = MEMORY[0x277CCA9B8];
      v12 = &unk_286CFF4B8;
      v13 = -2;
LABEL_14:
      [v11 errorWithDomain:@"com.apple.NanoUniverse.NUNICloudCoverFileConverter" code:v13 userInfo:v12];
      *a2 = Copy = 0;
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_16:

  return Copy;
}

id _NUNIRasterizeImageGenericGray(CGImage *a1, int a2, int a3)
{
  v6 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:a3 * a2];
  v7 = [v6 mutableBytes];
  v8 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF440]);
  v9 = CGBitmapContextCreate(v7, a2, a3, 8uLL, a2, v8, 0);
  CGColorSpaceRelease(v8);
  CGContextSetInterpolationQuality(v9, kCGInterpolationHigh);
  v12.size.width = a2;
  v12.size.height = a3;
  v12.origin.x = 0.0;
  v12.origin.y = 0.0;
  CGContextDrawImage(v9, v12, a1);
  CGContextRelease(v9);

  return v6;
}

id _NUNIEqualize(void *a1, int a2, int a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = (a3 * a2);
  v7 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:v6];
  v8 = [v7 mutableBytes];
  v9 = [v5 bytes];
  bzero(v20, 0x400uLL);
  if (v6)
  {
    v10 = v6;
    v11 = v9;
    do
    {
      v12 = *v11++;
      ++v20[v12];
      --v10;
    }

    while (v10);
    v13 = v20[0];
  }

  else
  {
    v13 = 0;
  }

  v14 = 1;
  v15 = v13;
  do
  {
    v15 += v20[v14];
    *&v19[v14 * 4 + 256] = v15;
    ++v14;
  }

  while (v14 != 256);
  v19[0] = 0;
  for (i = 1; i != 256; ++i)
  {
    v19[i] = llroundf(((*&v19[4 * i + 256] - v13) / (v6 - v13)) * 255.0);
  }

  if (v6)
  {
    do
    {
      v17 = *v9++;
      *v8++ = v19[v17];
      --v6;
    }

    while (v6);
  }

  return v7;
}

id _NUNIInitializeImageGenericGray(int a1, int a2)
{
  v2 = (a2 * a1);
  v3 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:v2];
  [v3 resetBytesInRange:{0, v2}];

  return v3;
}

void _NUNIAddCloudLayer(void *a1, void *a2, int a3, int a4)
{
  v14 = a1;
  v7 = (a4 * a3);
  v8 = [a2 mutableBytes];
  v9 = v14;
  v10 = [v14 bytes];
  if (v7)
  {
    do
    {
      v12 = *v10++;
      v13 = v12 / 255.0;
      LOBYTE(v11) = *v8;
      v11 = LODWORD(v11);
      *v8++ = (v11 + (((v13 * v13) * v13) * 85.0));
      --v7;
    }

    while (v7);
  }
}

id _NUNIConvertEquirectangularToOctahedral(void *a1, unsigned int a2, int a3)
{
  v5 = a1;
  v6 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:0x400000];
  v7 = [v6 mutableBytes];
  v8 = [v5 bytes];
  v10 = 0;
  v11 = a3;
  v12 = 0.5;
  v13.i32[1] = 973078528;
  v14.i32[1] = 0x40000000;
  __asm { FMOV            V10.2S, #-1.0 }

  v20 = a3 - 1;
  do
  {
    v21 = 0;
    *&v9 = (v10 + v12) * 0.00048828;
    v46 = v9;
    do
    {
      v22.f32[0] = (v21 + v12) * 0.00048828;
      v22.i32[1] = v46;
      v23 = vmla_f32(_D10, 0x4000000040000000, v22);
      v24 = vabs_f32(v23);
      v24.f32[0] = (1.0 - v24.f32[0]) - v24.f32[1];
      *v13.i32 = fminf(fmaxf(-v24.f32[0], 0.0), 1.0);
      *v14.i32 = -*v13.i32;
      *v25.f32 = vadd_f32(v23, vbsl_s8(vcgez_f32(v23), vdup_lane_s32(v14, 0), vdup_lane_s32(v13, 0)));
      v25.i64[1] = __PAIR64__(HIDWORD(v46), v24.u32[0]);
      v26 = vmulq_f32(v25, v25);
      *&v27 = v26.f32[2] + vaddv_f32(*v26.f32);
      *v26.f32 = vrsqrte_f32(v27);
      *v26.f32 = vmul_f32(*v26.f32, vrsqrts_f32(v27, vmul_f32(*v26.f32, *v26.f32)));
      v47 = vmulq_n_f32(v25, vmul_f32(*v26.f32, vrsqrts_f32(v27, vmul_f32(*v26.f32, *v26.f32))).f32[0]);
      v28 = acosf(v47.f32[2]);
      *&v9 = ((((atan2f(v47.f32[1], v47.f32[0]) * -0.15915) + -0.25) + 1.0) * a2) + -0.5;
      v31 = (((v28 * -0.31831) + 1.0) * v11) + -0.5;
      v32 = v31;
      v33 = *&v9;
      v34 = *&v9 % a2;
      v35 = v31 & ~(v31 >> 31);
      if (v35 >= v20)
      {
        v35 = v20;
      }

      v36 = *&v9 - v33;
      if (v34 + 1 == a2)
      {
        v37 = 0;
      }

      else
      {
        v37 = v34 + 1;
      }

      v38 = v31 - v32;
      if (v35 + 1 < v20)
      {
        v39 = v35 + 1;
      }

      else
      {
        v39 = v20;
      }

      v40 = (v35 * a2);
      LOBYTE(v32) = *(v8 + v40 + v34);
      LOBYTE(v33) = *(v8 + v40 + v37);
      v41 = (v39 * a2);
      LOBYTE(v29) = *(v8 + v41 + v34);
      LOBYTE(v30) = *(v8 + v41 + v37);
      v42 = (v36 * v36) * ((v36 * -2.0) + 3.0);
      v43 = (v38 * v38) * ((v38 * -2.0) + 3.0);
      *v13.i32 = (v42 * LODWORD(v33)) + (LODWORD(v32) * (1.0 - v42));
      *v14.i32 = 1.0 - v43;
      v44 = v43 * ((v42 * v30) + (v29 * (1.0 - v42)));
      v12 = 0.5;
      v14.i32[1] = 0x40000000;
      v13.i32[1] = 973078528;
      *(v7 + v21++) = ((v44 + (*v13.i32 * *v14.i32)) + 0.5);
    }

    while (v21 != 2048);
    ++v10;
    v7 += 2048;
  }

  while (v10 != 2048);

  return v6;
}

void *_NUNIGenerateAllMipmapsR8(unsigned __int8 *a1, const void *a2)
{
  v2 = a1;
  result = memcpy(a1, a2, 0x400000uLL);
  v4 = v2 + 0x400000;
  v5 = 2048;
  for (i = 2048; ; i = v7)
  {
    v7 = i >> 1;
    if (i >> 1 <= 1)
    {
      v7 = 1;
    }

    v8 = v5 >> 1;
    if (v5 >> 1 <= 1)
    {
      v8 = 1;
    }

    if (i >= 2)
    {
      if (v5 <= 1)
      {
        v15 = v7;
        v16 = v4;
        do
        {
          *v16++ = (*v2 + v2[1] + 1) >> 1;
          v2 += 2;
          --v15;
        }

        while (v15);
      }

      else
      {
        v9 = 0;
        v10 = v4;
        do
        {
          v11 = v2 + 1;
          v2 += i;
          v12 = v7;
          do
          {
            v13 = *(v11 - 1);
            v14 = *v11;
            v11 += 2;
            result = ((v13 + v14 + *v2 + v2[1] + 2) >> 2);
            *v10++ = result;
            v2 += 2;
            --v12;
          }

          while (v12);
          ++v9;
        }

        while (v9 != v8);
      }
    }

    if ((i | v5) < 4)
    {
      break;
    }

    v2 = v4;
    v4 += (v7 * v8);
    v5 = v8;
  }

  return result;
}

uint64_t NUNIAstronomyVistaView_SpheroidTypeToVista(uint64_t a1)
{
  if ((a1 - 1) > 8)
  {
    return 2;
  }

  else
  {
    return qword_25B719DF0[a1 - 1];
  }
}

id NUNIAstronomyVistaView_GenerateZoomAnimationArrayFromSceneBlob(void *a1, void *a2, void *a3)
{
  v198 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = objc_opt_new();
  v162 = v6;
  v9 = [v6 bytes];
  v161 = v7;
  v10 = [v7 bytes];
  v11.i32[0] = *(v9 + 52);
  v160 = v11;
  v166 = *(v9 + 96);
  v168 = *(v9 + 104);
  v170 = *v9;
  v171 = *v10;
  v169 = *(v10 + 16);
  v157 = *(v10 + 32);
  v11.i32[1] = DWORD1(v157);
  v158 = *(v9 + 32);
  v11.i32[0] = *(v10 + 52);
  v159 = v11;
  v164 = *(v9 + 16);
  v165 = *(v10 + 96);
  v167 = *(v10 + 104);
  v12 = *(v9 + 128);
  v163 = v5;
  v13 = [v5 spheroids];
  v174 = *(v9 + 56);
  v175 = v13;
  v185 = v10;
  v173 = *(v10 + 56);
  if (v12)
  {
    v16 = 0;
    v17 = 0;
    v180 = 0;
    v181 = 0;
    v18 = 0;
    __asm { FMOV            V0.4S, #1.0 }

    v172 = *&_Q0;
    while (1)
    {
      v23 = [v175 objectAtIndex:v18];
      v26 = v185 + v16;
      v27 = *(v9 + v16 + 144);
      v28 = v181;
      if (v27 == v174)
      {
        v28 = v9 + v16 + 144;
      }

      v181 = v28;
      _ZF = v27 == v173;
      v29 = v180;
      if (_ZF)
      {
        v29 = v185 + v16 + 144;
      }

      v180 = v29;
      v25.i32[0] = *(v9 + v16 + 232);
      v24.i32[0] = *(v26 + 232);
      if (*v25.i32 != *v24.i32)
      {
        v30 = [[NUNIAnimation alloc] initWithAnimatable:v23 from:7 to:*vdupq_lane_s32(v25 key:0).i64, *vdupq_lane_s32(v24, 0).i64];

        [(NUNIAnimation *)v30 setFunction:0];
        [v8 addObject:v30];
        v17 = v30;
      }

      v25.i32[0] = *(v9 + v16 + 192);
      v24.i32[0] = *(v26 + 192);
      if (*v25.i32 == *v24.i32)
      {
        goto LABEL_21;
      }

      v177 = v24;
      if (*v25.i32 == 1.0 && *v24.i32 == 0.0)
      {
        break;
      }

      v176 = *&v25;
      v31 = [NUNIAnimation alloc];
      *&v34 = vdupq_lane_s32(*&v176, 0).u64[0];
      _ZF = *&v176 == 0.0 && *v177.i32 == 1.0;
      if (_ZF)
      {
        v33 = v23;
        v32 = v172;
        v35 = v34;
        v36 = v34;
        goto LABEL_19;
      }

      v38 = [(NUNIAnimation *)v31 initWithAnimatable:v23 from:9 to:v34 key:*vdupq_lane_s32(v177, 0).i64, v176];

      v39 = v38;
      v40 = 0;
LABEL_20:
      [v39 setFunction:v40];
      v17 = v38;
      [v8 addObject:v38];
LABEL_21:
      v24.i32[0] = *(v9 + v16 + 196);
      v25.i32[0] = *(v185 + v16 + 196);
      if (*v24.i32 != *v25.i32)
      {
        v41 = [[NUNIAnimation alloc] initWithAnimatable:v23 from:12 to:*vdupq_lane_s32(v24 key:0).i64, *vdupq_lane_s32(v25, 0).i64];

        [(NUNIAnimation *)v41 setFunction:0];
        [v8 addObject:v41];
        v17 = v41;
      }

      v25.i32[0] = *(v9 + v16 + 156);
      v24.i32[0] = *(v185 + v16 + 156);
      if (*v24.i32 != *v25.i32)
      {
        v42 = [[NUNIAnimation alloc] initWithAnimatable:v23 from:5 to:*vdupq_lane_s32(v25 key:0).i64, *vdupq_lane_s32(v24, 0).i64];

        [(NUNIAnimation *)v42 setFunction:0];
        [v8 addObject:v42];
        v17 = v42;
      }

      if ((vminvq_u32(vceqq_f32(*(v185 + v16 + 176), *(v9 + v16 + 176))) & 0x80000000) == 0)
      {
        *v190 = xmmword_25B719D50;
        *&v190[12] = *(&xmmword_25B719D50 + 12);
        [NUNIAnimation generateSlerpKeys:"generateSlerpKeys:times:count:from:to:" times:&v191 count:v190 from:7 to:?];
        v43 = [[NUNIAnimation alloc] initWithAnimatable:v23 values:&v191 count:7 key:2];

        [(NUNIAnimation *)v43 setFunction:3];
        [v8 addObject:v43];
        v17 = v43;
      }

      v44 = [[NUNIAnimation alloc] initWithAnimatable:v23 from:0 to:*(v9 + v16 + 240) key:*(v185 + v16 + 240)];

      [(NUNIAnimation *)v44 setFunction:0];
      [v8 addObject:v44];

      ++v18;
      v16 += 160;
      v17 = v44;
      if (v12 == v18)
      {
        goto LABEL_30;
      }
    }

    v31 = [NUNIAnimation alloc];
    *&v32 = vdupq_lane_s32(v177, 0).u64[0];
    v33 = v23;
    v34 = v172;
    v35 = v32;
    v36 = v32;
LABEL_19:
    v38 = [(NUNIAnimation *)v31 initWithAnimatable:v33 from:9 to:v34 ctrl1:v32 ctrl2:v35 key:v36];

    v39 = v38;
    v40 = 2;
    goto LABEL_20;
  }

  v180 = 0;
  v181 = 0;
  v44 = 0;
LABEL_30:
  v46 = v170;
  v45 = v171;
  _Q0 = vsubq_f32(v171, v170);
  _S2 = _Q0.i32[2];
  __asm { FMLA            S1, S2, V0.S[2] }

  *v14.i32 = sqrtf(_S1);
  v50 = vdivq_f32(_Q0, vdupq_lane_s32(v14, 0));
  if (!v181 || !v180)
  {
    if (v173 == 3 && v180)
    {
      v178 = *v14.i32;
      v81 = vsub_f32(v180[12], *v170.f32);
      v82 = vmul_f32(v81, v81);
      v82.i32[0] = vadd_f32(v82, vdup_lane_s32(v82, 1)).u32[0];
      v83 = vrsqrte_f32(v82.u32[0]);
      v84 = vmul_f32(v83, vrsqrts_f32(v82.u32[0], vmul_f32(v83, v83)));
      v182 = vmul_n_f32(v81, vmul_f32(v84, vrsqrts_f32(v82.u32[0], vmul_f32(v84, v84))).f32[0]);
      v186 = v50;
      v85 = vsub_f32(*v169.f32, *v171.f32);
      v86 = vmul_f32(v85, v85);
      v86.i32[0] = vadd_f32(v86, vdup_lane_s32(v86, 1)).u32[0];
      v87 = vrsqrte_f32(v86.u32[0]);
      v88 = vmul_f32(v87, vrsqrts_f32(v86.u32[0], vmul_f32(v87, v87)));
      v89 = vmul_n_f32(v85, vmul_f32(v88, vrsqrts_f32(v86.u32[0], vmul_f32(v88, v88))).f32[0]);
      v90 = atan2f(_Q0.f32[0], _Q0.f32[1]);
      v91 = atan2f(v182.f32[0], v182.f32[1]);
      v50 = v186;
      if (v90 >= v91)
      {
        v92.i64[1] = 0;
        v92.i32[0] = v186.i32[1];
        v92.f32[1] = -*v186.i32;
      }

      else
      {
        v92 = vtrn1q_s32(COERCE_UNSIGNED_INT(-*&v186.i32[1]), v186);
      }

      v74 = v163;
      v76 = v161;
      *v14.i32 = v178;
      v93 = fmaxf(v182.f32[1] * ((v178 * 30.0) * vaddv_f32(vmul_f32(v182, v89))), 0.0);
      v46 = v170;
      v45 = v171;
    }

    else
    {
      v92 = 0uLL;
      v93 = 0.0;
      if (v174 == 3)
      {
        v74 = v163;
        v76 = v161;
        if (v181)
        {
          v179 = *v14.i32;
          v94 = vsub_f32(v181[12], *v171.f32);
          v95 = vmul_f32(v94, v94);
          v95.i32[0] = vadd_f32(v95, vdup_lane_s32(v95, 1)).u32[0];
          v96 = vrsqrte_f32(v95.u32[0]);
          v97 = vmul_f32(v96, vrsqrts_f32(v95.u32[0], vmul_f32(v96, v96)));
          v183 = vmul_n_f32(v94, vmul_f32(v97, vrsqrts_f32(v95.u32[0], vmul_f32(v97, v97))).f32[0]);
          v187 = v50;
          v98 = vsub_f32(*v164.f32, *v170.f32);
          v99 = vmul_f32(v98, v98);
          v99.i32[0] = vadd_f32(v99, vdup_lane_s32(v99, 1)).u32[0];
          v100 = vrsqrte_f32(v99.u32[0]);
          v101 = vmul_f32(v100, vrsqrts_f32(v99.u32[0], vmul_f32(v100, v100)));
          v102 = vmul_n_f32(v98, vmul_f32(v101, vrsqrts_f32(v99.u32[0], vmul_f32(v101, v101))).f32[0]);
          v103 = vsubq_f32(v170, v171).u64[0];
          v104 = atan2f(*&v103, *(&v103 + 1));
          v105 = atan2f(v183.f32[0], v183.f32[1]);
          v50 = v187;
          if (v104 <= v105)
          {
            v92.i64[1] = 0;
            v92.i32[0] = v187.i32[1];
            v92.f32[1] = -*v187.i32;
          }

          else
          {
            v92 = vtrn1q_s32(COERCE_UNSIGNED_INT(-*&v187.i32[1]), v187);
          }

          *v14.i32 = v179;
          v93 = fmaxf(v183.f32[1] * ((v179 * 20.0) * vaddv_f32(vmul_f32(v183, v102))), 0.0);
          v46 = v170;
          v45 = v171;
          goto LABEL_67;
        }
      }

      else
      {
        v74 = v163;
        v76 = v161;
      }
    }

    if (v174 == 24)
    {
      v119 = v46;
      v119.i32[3] = 0;
      v120 = vmlaq_n_f32(vmlaq_n_f32(v46, v50, *v14.i32 * 0.2), v92, v93 * 0.2);
      v120.i32[3] = 0;
      v191 = v119;
      v192 = v120;
      v121 = vmlaq_n_f32(vmlaq_n_f32(v46, v50, *v14.i32 * 0.5), v92, v93 * 0.3);
      v121.i32[3] = 0;
      v122 = vmlaq_n_f32(vmlaq_n_f32(v46, v50, *v14.i32 * 0.8), v92, v93 * 0.15);
      v122.i32[3] = 0;
      v193 = v121;
      v194 = v122;
      v123 = vmlaq_n_f32(vmlaq_n_f32(v46, v50, *v14.i32 * 0.92), v92, v93 * 0.05);
      v123.i32[3] = 0;
      v124 = vmlaq_n_f32(vmlaq_n_f32(v46, v50, *v14.i32 * 0.97), v92, v93 * 0.02);
      v124.i32[3] = 0;
      v195 = v123;
LABEL_68:
      v45.i32[3] = 0;
      v196 = v124;
      v197 = v45;
      v136 = [[NUNIAnimation alloc] initWithAnimatable:v74 values:&v191 count:7 key:0];

      [(NUNIAnimation *)v136 setFunction:3];
      v137 = 0x27995E000;
      goto LABEL_74;
    }

LABEL_67:
    v131 = vmlaq_n_f32(vmlaq_n_f32(v46, v50, *v14.i32 * 0.3), v92, v93 * 0.15);
    v132 = vmlaq_n_f32(vmlaq_n_f32(v46, v50, *v14.i32 * 0.75), v92, v93 * 0.2);
    v133 = vmlaq_n_f32(vmlaq_n_f32(v46, v50, *v14.i32 * 0.93), v92, v93 * 0.05);
    v134 = v46;
    v134.i32[3] = 0;
    v135 = vmlaq_n_f32(vmlaq_n_f32(v46, v50, *v14.i32 * 0.97), v92, v93 * 0.02);
    v131.i32[3] = 0;
    v132.i32[3] = 0;
    v191 = v134;
    v192 = v131;
    v133.i32[3] = 0;
    v135.i32[3] = 0;
    v193 = v132;
    v194 = v133;
    v124 = vmlaq_n_f32(v46, v50, *v14.i32 * 0.99);
    v124.i32[3] = 0;
    v195 = v135;
    goto LABEL_68;
  }

  __asm { FMOV            V0.4S, #1.0 }

  _Q1 = vmulq_f32(v50, vnegq_f64(_Q0));
  _Q2 = vsubq_f32(v169, v171);
  _Q3 = vmulq_f32(_Q2, _Q2);
  _S4 = _Q2.i32[2];
  __asm { FMLA            S3, S4, V2.S[2] }

  _Q3.f32[0] = sqrtf(_Q3.f32[0]);
  v56 = vzip1q_s32(vextq_s8(_Q1, _Q1, 4uLL), _Q1);
  _Q2 = vdivq_f32(_Q2, vdupq_lane_s32(*_Q3.f32, 0));
  _Q3 = vsubq_f32(v164, v170);
  _Q4 = vmulq_f32(_Q3, _Q3);
  _S5 = _Q3.i32[2];
  __asm { FMLA            S4, S5, V3.S[2] }

  _Q4.f32[0] = sqrtf(_Q4.f32[0]);
  _Q4 = vdivq_f32(_Q3, vdupq_lane_s32(*_Q4.f32, 0));
  v62 = vmlaq_n_f32(vmlaq_n_f32(v170, v50, *v14.i32 * 0.25), v56, *v14.i32 * 0.05).u64[0];
  v63 = vmlaq_n_f32(vmlaq_n_f32(v170, v50, *v14.i32 * 0.75), v56, *v14.i32 * 0.05).u64[0];
  v64 = *v181[12].f32;
  v15.i32[0] = v181[10].i32[1];
  v65 = *v180[12].f32;
  v66 = v180[10].f32[1];
  _S16 = vsubq_f32(v170, v64).i32[2];
  __asm { FMLA            S7, S16, V5.S[2] }

  v69 = sqrtf(_S7) > (*v15.i32 * 5.7588);
  _S7 = _Q4.i32[2];
  _S5 = v50.i32[2];
  if (v69)
  {
    _S21 = vsubq_f32(v171, v64).i32[2];
    __asm { FMLA            S19, S21, V18.S[2] }

    v74 = v163;
    if (sqrtf(_S19) <= (*v15.i32 * 5.7588))
    {
      __asm { FMLA            S18, S5, V2.S[2] }

      v76 = v161;
      if (_S18 < -0.25)
      {
        _S18 = _Q2.i32[2];
        __asm
        {
          FMLA            S19, S2, V1.S[1]
          FMLA            S19, S18, V1.S[2]
        }

        *v15.i32 = (*v15.i32 * 5.7588) * 3.0;
        v80 = vdupq_lane_s32(v15, 0);
        if (_S19 <= 0.1)
        {
          v63 = vmlaq_f32(v171, v80, v56).u64[0];
        }

        else
        {
          v63 = vmlsq_f32(v171, v80, v56).u64[0];
        }
      }

      goto LABEL_50;
    }
  }

  else
  {
    __asm { FMLA            S19, S5, V4.S[2] }

    v74 = v163;
    if (_S19 > 0.25)
    {
      __asm
      {
        FMLA            S18, S4, V1.S[1]
        FMLA            S18, S7, V1.S[2]
      }

      *v15.i32 = (*v15.i32 * 5.7588) * 3.0;
      v109 = vdupq_lane_s32(v15, 0);
      v76 = v161;
      if (_S18 <= 0.1)
      {
        v62 = vmlaq_f32(v170, v109, v56).u64[0];
      }

      else
      {
        v62 = vmlsq_f32(v170, v109, v56).u64[0];
      }

      goto LABEL_50;
    }
  }

  v76 = v161;
LABEL_50:
  _S19 = vsubq_f32(v170, v65).i32[2];
  __asm { FMLA            S18, S19, V17.S[2] }

  if (sqrtf(_S18) <= (v66 * 5.7588))
  {
    __asm { FMLA            S2, S5, V4.S[2] }

    v184 = *&v63;
    if (_S2 <= 0.25)
    {
      v188 = *&v62;
    }

    else
    {
      __asm
      {
        FMLA            S2, S4, V1.S[1]
        FMLA            S2, S7, V1.S[2]
      }

      *_Q1.i32 = (v66 * 5.7588) * 3.0;
      v117 = vdupq_lane_s32(*_Q1.i8, 0);
      if (_S2 <= 0.1)
      {
        v118 = vmlaq_f32(v170, v117, v56).u64[0];
      }

      else
      {
        v118 = vmlsq_f32(v170, v117, v56).u64[0];
      }

      v188 = *&v118;
    }
  }

  else
  {
    _S7 = vsubq_f32(v171, v65).i32[2];
    __asm { FMLA            S6, S7, V4.S[2] }

    v188 = *&v62;
    if (sqrtf(_S6) <= (v66 * 5.7588))
    {
      __asm { FMLA            S4, S5, V2.S[2] }

      if (_S4 >= -0.25)
      {
        v184 = *&v63;
      }

      else
      {
        _S4 = _Q2.i32[2];
        __asm
        {
          FMLA            S5, S2, V1.S[1]
          FMLA            S5, S4, V1.S[2]
        }

        *_Q1.i32 = (v66 * 5.7588) * 3.0;
        v129 = vdupq_lane_s32(*_Q1.i8, 0);
        if (_S5 <= 0.1)
        {
          v130 = vmlaq_f32(v171, v129, v56).u64[0];
        }

        else
        {
          v130 = vmlsq_f32(v171, v129, v56).u64[0];
        }

        v184 = *&v130;
      }
    }

    else
    {
      v184 = *&v63;
    }
  }

  v137 = 0x27995E000uLL;
  v136 = [[NUNIAnimation alloc] initWithAnimatable:v74 from:0 to:*v170.i64 ctrl1:*v171.i64 ctrl2:v188 key:v184];

  [(NUNIAnimation *)v136 setFunction:2];
LABEL_74:
  [v8 addObject:v136];
  v138 = v169;
  _Q0 = vsubq_f32(v169, v164);
  _Q1 = vmulq_f32(_Q0, _Q0);
  _S2 = _Q0.i32[2];
  __asm { FMLA            S1, S2, V0.S[2] }

  _Q1.f32[0] = sqrtf(_Q1.f32[0]);
  v142 = vdivq_f32(_Q0, vdupq_lane_s32(*_Q1.f32, 0));
  v143 = v164;
  v143.i32[3] = 0;
  v144 = vmlaq_n_f32(v164, v142, _Q1.f32[0] * 0.3);
  v144.i32[3] = 0;
  v191 = v143;
  v192 = v144;
  v145 = vmlaq_n_f32(v164, v142, _Q1.f32[0] * 0.75);
  v145.i32[3] = 0;
  v146 = vmlaq_n_f32(v164, v142, _Q1.f32[0] * 0.93);
  v147 = vmlaq_n_f32(v164, v142, _Q1.f32[0] * 0.97);
  v146.i32[3] = 0;
  v147.i32[3] = 0;
  v193 = v145;
  v194 = v146;
  v148 = vmlaq_n_f32(v164, v142, _Q1.f32[0] * 0.99);
  v148.i32[3] = 0;
  v195 = v147;
  v196 = v148;
  v138.i32[3] = 0;
  v197 = v138;
  v149 = [objc_alloc(*(v137 + 3656)) initWithAnimatable:v74 values:&v191 count:7 key:1];

  [v149 setFunction:3];
  [v8 addObject:v149];
  v189[0] = xmmword_25B719D6C;
  *(v189 + 12) = *(&xmmword_25B719D6C + 12);
  [*(v137 + 3656) generateSlerpKeys:v190 times:v189 count:7 from:v158 to:*&v157];
  v150 = [objc_alloc(*(v137 + 3656)) initWithAnimatable:v74 values:v190 count:7 key:2];

  [v150 setFunction:3];
  [v8 addObject:v150];
  v151 = [objc_alloc(*(v137 + 3656)) initWithAnimatable:v74 from:3 to:*vdupq_lane_s32(v160 key:{0).i64, *vdupq_lane_s32(v159, 0).i64}];

  [v151 setFunction:0];
  [v8 addObject:v151];
  v152 = vceq_f32(*&v166, *&v165);
  if ((vpmin_u32(v152, v152).u32[0] & 0x80000000) == 0)
  {
    v153 = [objc_alloc(*(v137 + 3656)) initWithAnimatable:v74 from:6 to:v166 ctrl1:v165 ctrl2:v165 key:v165];

    [v153 setFunction:2];
    [v8 addObject:v153];
    v151 = v153;
  }

  v154 = vceq_f32(*&v168, *&v167);
  if ((vpmin_u32(v154, v154).u32[0] & 0x80000000) == 0)
  {
    v155 = [objc_alloc(*(v137 + 3656)) initWithAnimatable:v74 from:7 to:v168 ctrl1:v167 ctrl2:v167 key:v167];

    [v155 setFunction:2];
    [v8 addObject:v155];
    v151 = v155;
  }

  return v8;
}

id NUNIAstronomyVistaView_GenerateCarouselAnimationArrayFromSceneBlob(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = objc_opt_new();
  v9 = [v6 bytes];
  v10 = [v7 bytes];
  v11 = *(v9 + 32);
  v129 = *v9;
  v130 = v11;
  v11.i32[0] = *(v9 + 52);
  v127 = *v11.f32;
  v132 = *(v9 + 96);
  v134 = *(v9 + 104);
  v135 = *(v9 + 16);
  v128 = *v10;
  v12 = *(v10 + 32);
  v124 = *(v10 + 16);
  v125 = v12;
  v12.i32[0] = *(v10 + 52);
  v126 = *v12.f32;
  v131 = *(v10 + 96);
  v133 = *(v10 + 104);
  v13 = *(v9 + 128);
  v139 = [v5 spheroids];
  v138 = v13;
  if (!v13)
  {
    v64 = v6;
    v15 = 0;
LABEL_42:
    v66 = [[NUNIAnimation alloc] initWithAnimatable:v5 from:0 to:*v129.i64 key:*v128.i64];

    [(NUNIAnimation *)v66 setFunction:0];
    [v8 addObject:v66];
    goto LABEL_72;
  }

  v122 = v7;
  v123 = v6;
  v14 = 0;
  v15 = 0;
  v148 = 0;
  v16 = 0;
  v17 = 0;
  v136 = *(v9 + 56);
  v137 = *(v10 + 56);
  __asm { FMOV            V0.4S, #1.0 }

  v143 = *&_Q0;
  do
  {
    v22 = [v139 objectAtIndex:v17];
    v24 = *(v10 + v14 + 144);
    v25 = v148;
    if (v24 == v136)
    {
      v25 = v9 + v14 + 144;
    }

    v148 = v25;
    if (v24 == v137)
    {
      v16 = v10 + v14 + 144;
    }

    v145 = v16;
    v23.i32[0] = *(v9 + v14 + 232);
    v157 = v23;
    v23.i32[0] = *(v10 + v14 + 232);
    v152 = *v23.i32;
    *&v140 = vdupq_lane_s32(v23, 0).u64[0];
    *&v141 = vdupq_lane_s32(v157, 0).u64[0];
    v26 = [NUNIAnimation initWithAnimatable:"initWithAnimatable:from:to:key:" from:v22 to:7 key:?];

    [(NUNIAnimation *)v26 setFunction:0];
    if (*v157.i32 == 1.0 && v152 <= 0.00001)
    {
      v27 = [NUNIAnimation alloc];
      v28 = 0.0;
      v29 = 0.0;
      v30 = v22;
      v31 = v143;
      v32 = v143;
    }

    else
    {
      v27 = [NUNIAnimation alloc];
      if (*v157.i32 > 0.00001 || v152 != 1.0)
      {
        v15 = [(NUNIAnimation *)v27 initWithAnimatable:v22 from:7 to:v141 key:v140];

        v34 = v15;
        v35 = 0;
        goto LABEL_17;
      }

      v31 = 0.0;
      v32 = 0.0;
      v30 = v22;
      v28 = v143;
      v29 = v143;
    }

    v15 = [(NUNIAnimation *)v27 initWithAnimatable:v30 from:7 to:v31 ctrl1:v28 ctrl2:v32 key:v29];

    v34 = v15;
    v35 = 2;
LABEL_17:
    [(NUNIAnimation *)v34 setFunction:v35];
    v36 = v8;
    [v8 addObject:v15];
    v37.i32[0] = *(v9 + v14 + 192);
    v38.i32[0] = *(v10 + v14 + 192);
    if (*v37.i32 == *v38.i32)
    {
      goto LABEL_27;
    }

    if (*v37.i32 == 1.0 && *v38.i32 == 0.0)
    {
      v39 = [NUNIAnimation alloc];
      v40 = 0.0;
      v41 = 0.0000305175853;
      v42 = v22;
      v43 = v143;
      v44 = v143;
    }

    else
    {
      v153 = v38;
      v158 = v37;
      v39 = [NUNIAnimation alloc];
      if (*v158.i32 != 0.0 || *v153.i32 != 1.0)
      {
        v45 = [(NUNIAnimation *)v39 initWithAnimatable:v22 from:9 to:*vdupq_lane_s32(v158 key:0).i64, *vdupq_lane_s32(v153, 0).i64];

        v46 = v45;
        v47 = 0;
        goto LABEL_26;
      }

      v43 = 0.0;
      v44 = 0.0000305175853;
      v42 = v22;
      v40 = v143;
      v41 = v143;
    }

    v45 = [(NUNIAnimation *)v39 initWithAnimatable:v42 from:9 to:v43 ctrl1:v40 ctrl2:v44 key:v41];

    v46 = v45;
    v47 = 2;
LABEL_26:
    [v46 setFunction:v47];
    v15 = v45;
    [v8 addObject:v45];
LABEL_27:
    v38.i32[0] = *(v9 + v14 + 196);
    v37.i32[0] = *(v10 + v14 + 196);
    if (*v38.i32 != *v37.i32)
    {
      v48 = [[NUNIAnimation alloc] initWithAnimatable:v22 from:12 to:*vdupq_lane_s32(v38 key:0).i64, *vdupq_lane_s32(v37, 0).i64];

      [(NUNIAnimation *)v48 setFunction:0];
      [v8 addObject:v48];
      v15 = v48;
    }

    v37.i32[0] = *(v9 + v14 + 156);
    v38.i32[0] = *(v10 + v14 + 156);
    if (*v38.i32 != *v37.i32)
    {
      v49 = [[NUNIAnimation alloc] initWithAnimatable:v22 from:5 to:*vdupq_lane_s32(v37 key:0).i64, *vdupq_lane_s32(v38, 0).i64];

      [(NUNIAnimation *)v49 setFunction:0];
      [v8 addObject:v49];
      v15 = v49;
    }

    v50 = *(v10 + v14 + 240);
    v51 = vceqq_f32(*(v9 + v14 + 240), v50);
    v51.i32[3] = v51.i32[2];
    if ((vminvq_u32(v51) & 0x80000000) == 0)
    {
      v52 = [[NUNIAnimation alloc] initWithAnimatable:v22 from:0 to:*(v9 + v14 + 240) key:*v50.i64];

      [(NUNIAnimation *)v52 setFunction:0];
      [v8 addObject:v52];
      v15 = v52;
    }

    v53 = *(v10 + v14 + 176);
    if ((vminvq_u32(vceqq_f32(v53, *(v9 + v14 + 176))) & 0x80000000) == 0)
    {
      v54 = [[NUNIAnimation alloc] initWithAnimatable:v22 from:2 to:*(v9 + v14 + 176) key:*v53.i64];

      [(NUNIAnimation *)v54 setFunction:4];
      [v8 addObject:v54];
      v15 = v54;
    }

    v16 = v145;

    ++v17;
    v14 += 160;
  }

  while (v138 != v17);
  if (!v148 || !v145)
  {
    v64 = v123;
    v7 = v122;
    goto LABEL_42;
  }

  _Q1 = vsubq_f32(v129, v135);
  _S9 = _Q1.i32[2];
  v57 = _Q1.f32[1];
  __asm { FMLA            S0, S9, V1.S[2] }

  v154 = sqrtf(_S0);
  v159 = _Q1;
  v149 = acosf(_Q1.f32[2] / v154);
  _Q0.f32[0] = atan2f(v57, v159.f32[0]);
  v144 = _Q0.f32[0];
  _Q1 = _Q0;
  _Q1.f32[1] = v149;
  _Q1.f32[2] = v154;
  v146 = _Q1;
  v142 = vsubq_f32(v128, v135);
  _Q1.i32[0] = v142.i32[2];
  __asm { FMLA            S0, S1, V2.S[2] }

  v150 = sqrtf(_Q0.f32[0]);
  v155 = acosf(v142.f32[2] / v150);
  v61.f32[0] = atan2f(v142.f32[1], v142.f32[0]);
  v63.f32[0] = v144 - v61.f32[0];
  v64 = v123;
  if ((v144 - v61.f32[0]) > 3.1416)
  {
    v62.f32[0] = v144 + -6.2832;
    v65 = v146;
    goto LABEL_45;
  }

  v65 = v146;
  v62 = v146;
  if (v63.f32[0] < -3.1416)
  {
    v62.f32[0] = v144 + 6.2832;
LABEL_45:
    v62.i32[1] = v65.i32[1];
    v62.i32[2] = v65.i32[2];
  }

  _Q21 = v159;
  v68 = vmulq_f32(_Q21, _Q21);
  if ((v62.f32[1] - v155) > 3.1416)
  {
    v69 = -6.2832;
    goto LABEL_50;
  }

  if ((v62.f32[1] - v155) < -3.1416)
  {
    v69 = 6.2832;
LABEL_50:
    v70.i64[0] = __PAIR64__(v62.f32[1] + v69, v62.u32[0]);
    v70.i64[1] = v62.i64[1];
    v62 = v70;
  }

  v61.f32[1] = v155;
  if (v63.f32[0] > 3.1416)
  {
    v71 = -6.2832;
    goto LABEL_55;
  }

  v68 = v65;
  if (v63.f32[0] < -3.1416)
  {
    v71 = 6.2832;
LABEL_55:
    v68.f32[0] = v144 + v71;
    v68.i32[1] = v65.i32[1];
    v68.i32[2] = v65.i32[2];
  }

  v61.f32[2] = v150;
  v72 = vdupq_n_s32(0x3EA8F5C3u);
  if ((v68.f32[1] - v155) > 3.1416)
  {
    v73 = -6.2832;
    goto LABEL_60;
  }

  if ((v68.f32[1] - v155) < -3.1416)
  {
    v73 = 6.2832;
LABEL_60:
    v74.i64[0] = __PAIR64__(v68.f32[1] + v73, v68.u32[0]);
    v74.i64[1] = v68.i64[1];
    v68 = v74;
  }

  __asm { FMLA            S5, S9, V21.S[2] }

  v76 = vdupq_n_s32(0x3F2B851Eu);
  v77 = vmulq_f32(v61, v72);
  v78 = vmulq_f32(v61, vdupq_n_s32(0x3F28F5C3u));
  v79 = vdupq_n_s32(0x3EAE147Au);
  if (v63.f32[0] > 3.1416)
  {
    v63.i32[0] = -1060565029;
    goto LABEL_65;
  }

  if (v63.f32[0] < -3.1416)
  {
    v63.i32[0] = 1086918619;
LABEL_65:
    v63.f32[0] = v144 + v63.f32[0];
    v63.i32[1] = v65.i32[1];
    v63.i32[2] = v65.i32[2];
    v65 = v63;
  }

  v80 = vmlaq_f32(v77, v76, v62);
  v81 = sqrtf(_S5);
  v160 = vmlaq_f32(v78, v79, v68);
  if ((v65.f32[1] - v155) > 3.1416)
  {
    v82 = -6.2832;
    goto LABEL_70;
  }

  if ((v65.f32[1] - v155) < -3.1416)
  {
    v82 = 6.2832;
LABEL_70:
    v83.i32[0] = v65.i32[0];
    v83.f32[1] = v65.f32[1] + v82;
    v83.i64[1] = v65.i64[1];
    v65 = v83;
  }

  v84.i64[0] = 0x3F0000003F000000;
  v84.i64[1] = 0x3F0000003F000000;
  v151 = v80;
  v156 = vmlaq_f32(vmulq_f32(v61, v84), v84, v65);
  v85 = __sincosf_stret(v80.f32[0]);
  v86 = __sincosf_stret(v151.f32[1]);
  *v87.f32 = vmul_n_f32(__PAIR64__(LODWORD(v85.__sinval), LODWORD(v85.__cosval)), vmuls_lane_f32(v86.__sinval, v151, 2));
  v87.i32[2] = vmuls_lane_f32(v86.__cosval, v151, 2);
  v151.i64[0] = vaddq_f32(v135, v87).u64[0];
  v88 = __sincosf_stret(v160.f32[0]);
  v89 = __sincosf_stret(v160.f32[1]);
  *v90.f32 = vmul_n_f32(__PAIR64__(LODWORD(v88.__sinval), LODWORD(v88.__cosval)), vmuls_lane_f32(v89.__sinval, v160, 2));
  v90.i32[2] = vmuls_lane_f32(v89.__cosval, v160, 2);
  *&v147 = vaddq_f32(v135, v90).u64[0];
  v91 = [v5 spheroidOfType:v136];
  v92 = [v5 spheroidOfType:v137];
  v93 = __sincosf_stret(v156.f32[0]);
  v94 = __sincosf_stret(v156.f32[1]);
  *v95.f32 = vmul_n_f32(__PAIR64__(LODWORD(v93.__sinval), LODWORD(v93.__cosval)), vmuls_lane_f32(v94.__sinval, v156, 2));
  v95.i32[2] = vmuls_lane_f32(v94.__cosval, v156, 2);
  _Q0 = vsubq_f32(vaddq_f32(v135, v95), v135);
  _Q1 = vmulq_f32(_Q0, _Q0);
  _S2 = _Q0.i32[2];
  __asm { FMLA            S1, S2, V0.S[2] }

  _Q1.f32[0] = sqrtf(_Q1.f32[0]);
  v99 = vdivq_f32(_Q0, vdupq_lane_s32(*_Q1.f32, 0));
  _Q0 = vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v99, v99, 0xCuLL), v99, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v130, v130), v130, 0xCuLL))), vextq_s8(vuzp1q_s32(v99, v99), v99, 0xCuLL), vextq_s8(vextq_s8(v130, v130, 0xCuLL), v130, 8uLL));
  _Q1 = vmulq_f32(_Q0, _Q0);
  _S2 = _Q0.i32[2];
  __asm { FMLA            S1, S2, V0.S[2] }

  _Q1.f32[0] = sqrtf(_Q1.f32[0]);
  v103 = vdivq_f32(_Q0, vdupq_lane_s32(*_Q1.f32, 0));
  _Q0.f32[0] = v81 * 0.75;
  v161 = v103;
  v104 = [[NUNIAnimation alloc] initWithAnimatable:v91 from:0 to:*v135.i64 key:*vmlsq_lane_f32(v135, v103, *_Q0.f32, 0).i64];

  [(NUNIAnimation *)v104 setFunction:0];
  [v8 addObject:v104];
  v105 = [[NUNIAnimation alloc] initWithAnimatable:v92 from:0 to:*vmlaq_n_f32(v135 key:v161, v81 * 0.75).i64, *v135.i64];

  [(NUNIAnimation *)v105 setFunction:0];
  [v36 addObject:v105];
  v66 = [[NUNIAnimation alloc] initWithAnimatable:v5 from:0 to:*v129.i64 ctrl1:*v128.i64 ctrl2:*v151.i64 key:v147];

  v8 = v36;
  [(NUNIAnimation *)v66 setFunction:2];
  [v36 addObject:v66];

  v7 = v122;
LABEL_72:
  v106 = [[NUNIAnimation alloc] initWithAnimatable:v5 from:1 to:*v135.i64 key:*&v124];

  [(NUNIAnimation *)v106 setFunction:0];
  [v8 addObject:v106];
  v107 = [NUNIAnimation alloc];
  __asm
  {
    FMOV            V3.4S, #0.25
    FMOV            V4.4S, #0.75
  }

  _Q2 = vmlaq_f32(vmulq_f32(v125, _Q3), _Q4, v130);
  _Q5 = vmulq_f32(_Q2, _Q2);
  _S6 = _Q2.i32[2];
  __asm { FMLA            S5, S6, V2.S[2] }

  _Q5.f32[0] = sqrtf(_Q5.f32[0]);
  _Q2.i64[0] = vdivq_f32(_Q2, vdupq_lane_s32(*_Q5.f32, 0)).u64[0];
  _Q4 = vmlaq_f32(vmulq_f32(v125, _Q4), _Q3, v130);
  _Q3 = vmulq_f32(_Q4, _Q4);
  _Q5.i32[0] = _Q4.i32[2];
  __asm { FMLA            S3, S5, V4.S[2] }

  _Q3.f32[0] = sqrtf(_Q3.f32[0]);
  v115 = [(NUNIAnimation *)v107 initWithAnimatable:v5 from:2 to:*v130.i64 ctrl1:*v125.i64 ctrl2:*_Q2.i64 key:*vdivq_f32(_Q4, vdupq_lane_s32(*_Q3.f32, 0)).i64];

  [(NUNIAnimation *)v115 setFunction:2];
  [v8 addObject:v115];
  v116 = [[NUNIAnimation alloc] initWithAnimatable:v5 from:3 to:*vdupq_lane_s32(v127 key:0).i64, *vdupq_lane_s32(v126, 0).i64];

  [(NUNIAnimation *)v116 setFunction:0];
  [v8 addObject:v116];
  v117 = vceq_f32(*&v132, *&v131);
  if ((vpmin_u32(v117, v117).u32[0] & 0x80000000) == 0)
  {
    v118 = [[NUNIAnimation alloc] initWithAnimatable:v5 from:6 to:v132 key:v131];

    [(NUNIAnimation *)v118 setFunction:0];
    [v8 addObject:v118];
    v116 = v118;
  }

  v119 = vceq_f32(*&v134, *&v133);
  if ((vpmin_u32(v119, v119).u32[0] & 0x80000000) == 0)
  {
    v120 = [[NUNIAnimation alloc] initWithAnimatable:v5 from:7 to:v134 key:v133];

    [(NUNIAnimation *)v120 setFunction:0];
    [v8 addObject:v120];
    v116 = v120;
  }

  return v8;
}

id NUNIAstronomyComplicationForegroundColor(uint64_t a1)
{
  if (NUNIAstronomyComplicationForegroundColor_onceToken != -1)
  {
    NUNIAstronomyComplicationForegroundColor_cold_1();
  }

  if (a1 >= 3)
  {
    v2 = 0;
  }

  else
  {
    v2 = a1;
  }

  v3 = NUNIAstronomyComplicationForegroundColor_complicationColors[v2];

  return v3;
}

void __NUNIAstronomyComplicationForegroundColor_block_invoke()
{
  v0 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF430]);
  v1 = 0;
  v2 = &_block_invoke_complicationColorComponents;
  do
  {
    v3 = CGColorCreate(v0, v2);
    v4 = [MEMORY[0x277D75348] colorWithCGColor:v3];
    v5 = NUNIAstronomyComplicationForegroundColor_complicationColors[v1];
    NUNIAstronomyComplicationForegroundColor_complicationColors[v1] = v4;

    CGColorRelease(v3);
    v2 += 4;
    ++v1;
  }

  while (v1 != 3);

  CGColorSpaceRelease(v0);
}

float _NUNISphereoidComputeRadius(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = 0.14894;
  }

  else
  {
    if (((1 << a1) & 0xFFC000) != 0)
    {
      v5 = a1 - 14;
    }

    else
    {
      v5 = a1;
    }

    if (v5)
    {
      if (v5 == 7)
      {
        v2 = 0.051282;
      }

      else if (v5 == 6)
      {
        v2 = 0.057692;
      }

      else
      {
        v2 = 0.044872;
      }
    }

    else
    {
      v2 = 0.070513;
    }
  }

  result = 0.5;
  if ((a1 - 10) >= 2)
  {
    v4 = v2 + v2;
    if ((a1 - 12) > 1)
    {
      v4 = v2;
    }

    return v4 * 0.5;
  }

  return result;
}

void NUNIComputeSpheroidTransformParameters(void *a1, void *a2, float *a3, float *a4, float32x2_t *a5, float *a6, float *a7, int a8)
{
  v15 = a2;
  v16 = a1;
  v17 = objc_msgSend_structure(v16);
  v18 = [v16 scene];

  *a6 = 0.0;
  *a4 = 0.0;
  v105 = a3;
  *a3 = 0.0;
  *a5 = 0;
  v19 = [v18 collectionType];
  v20 = *v17;
  *a7 = _NUNISphereoidComputeRadius(*v17, v19);
  if (((1 << v20) & 0xFBF3FE) != 0)
  {
    v21 = v20 - 14;
    if (((1 << v20) & 0xFFC000) == 0)
    {
      v21 = v20;
    }

    if (((1 << v20) & 0x3000) != 0)
    {
      v22 = 7;
    }

    else
    {
      v22 = v21;
    }

    v23 = 0.0;
    if (v22)
    {
      v24 = [objc_alloc(MEMORY[0x277D0ED48]) initWithDate:v15 body:v22];
      [v24 longitude];
      *&v25 = v25;
      *a4 = (*&v25 * 3.1416) / 180.0;

      if ((v22 & 0xFFFFFFFFFFFFFFFBLL) != 0)
      {
        v26 = s_distance[v22];
        if (v19)
        {
          v27 = (v26 * 10.0) + 3.0;
          v28 = 48.0;
        }

        else
        {
          v27 = (v26 * 18.0) + 4.0;
          v28 = 156.0;
        }

        v23 = (v27 / v28) * 0.5;
      }
    }

    *a6 = v23;
    if (v20 == 3)
    {
      v33 = objc_opt_new();
      v108 = 0.0;
      v109[0] = 0.0;
      v107 = 0.0;
      [v33 calculateGeocentricDirectionForSunX:v109 Y:&v108 Z:&v107 date:v15];
      v34 = v109[0];
      v35 = v108;
      v36 = v107;
      v37 = 1.5708 - atan2f(v35, v34);
      if (a8)
      {
        *&v38 = 3.14159265 - *a4;
        v39 = v37 - *&v38;
        *a5 = __PAIR64__(COERCE_UNSIGNED_INT(acosf(v36)), v38);
        *v105 = v39;
      }

      else
      {
        v106 = v37;
        *a5 = __PAIR64__(COERCE_UNSIGNED_INT(acosf(v36)), LODWORD(v106));
      }
    }

    else if (v20 == 4)
    {
      *v105 = *a4;
      v29 = [objc_alloc(MEMORY[0x277D0ED48]) initWithDate:v15 body:3];
      [v29 longitude];
      *&v30 = v30;
      v31 = &dword_25B719EF4;
      v32 = vld1_dup_f32(v31);
      v32.f32[0] = (*&v30 * 3.1416) / -180.0;
      *a5 = v32;
    }

    else if ((v20 - 1) <= 8)
    {
      v40 = (&NUNIComputeSpheroidTransformParameters_orientations + 40 * v20);
      v41 = *v40;
      v42 = v40[1];
      v43 = v40[2];
      v44 = v40[3];
      v45 = v40[4];
      [v15 timeIntervalSince1970];
      v47 = v46 / 86400.0 + 2440587.5 + -2451545.0;
      v48 = fmod(v43 + v44 * v47, 360.0);
      *v49.i64 = UMFloat4x4MakeRotateZ(v48 * -0.017453);
      v97 = v50;
      v101 = v49;
      v89 = v52;
      v93 = v51;
      v49.f32[0] = 90.0 - v42;
      *v53.i64 = UMFloat4x4MakeRotateX(v49.f32[0] * -0.017453);
      v114.columns[0] = v53;
      v114.columns[1] = v54;
      v114.columns[2] = v55;
      v114.columns[3] = v56;
      v110.columns[1] = v97;
      v110.columns[0] = v101;
      v110.columns[3] = v89;
      v110.columns[2] = v93;
      *v57.i64 = UMMul(v110, v114);
      v98 = v58;
      v102 = v57;
      v90 = v60;
      v94 = v59;
      v57.f32[0] = v41 + -90.0;
      *v61.i64 = UMFloat4x4MakeRotateZ(v57.f32[0] * -0.017453);
      v115.columns[0] = v61;
      v115.columns[1] = v62;
      v115.columns[2] = v63;
      v115.columns[3] = v64;
      v111.columns[1] = v98;
      v111.columns[0] = v102;
      v111.columns[3] = v90;
      v111.columns[2] = v94;
      *v65.i64 = UMMul(v111, v115);
      v99 = v66;
      v103 = v65;
      v91 = v68;
      v95 = v67;
      *v69.i64 = UMFloat4x4MakeRotateX(-0.40911);
      v116.columns[0] = v69;
      v116.columns[1] = v70;
      v116.columns[2] = v71;
      v116.columns[3] = v72;
      v112.columns[1] = v99;
      v112.columns[0] = v103;
      v112.columns[3] = v91;
      v112.columns[2] = v95;
      *v73.i64 = UMMul(v112, v116);
      v100 = v74;
      v104 = v73;
      v92 = v76;
      v96 = v75;
      v73.f32[0] = v45 * v47;
      *v77.i64 = UMFloat4x4MakeRotateZ(v73.f32[0] * -0.017453);
      v117.columns[0] = v77;
      v117.columns[1] = v78;
      v117.columns[2] = v79;
      v117.columns[3] = v80;
      v113.columns[1] = v100;
      v113.columns[0] = v104;
      v113.columns[3] = v92;
      v113.columns[2] = v96;
      *v81.i64 = UMMul(v113, v117);
      v85 = UMMul(v81, v82, v83, v84, xmmword_25B719EC0);
      v104.i32[2] = v86;
      v87 = atan2f(*(&v85 + 1), *&v85);
      v88 = 3.14159265 - *a4;
      v100.f32[0] = v88;
      *&v45 = v87 - v88;
      *a5 = __PAIR64__(COERCE_UNSIGNED_INT(acosf(v104.f32[2])), v100.u32[0]);
      *v105 = *&v45;
    }
  }
}

double NUNIComputeSpheroidParentPosition(void *a1, void *a2)
{
  if (!a1)
  {
    return 0.0000305175853;
  }

  v3 = a2;
  v4 = a1;
  v5 = [v4 parent];
  *v6.i64 = NUNIComputeSpheroidParentPosition(v5, v3);
  v14 = v6;

  v17 = 0.0;
  v18 = 0.0;
  NUNIComputeSpheroidTransformParameters(v4, v3, &v19, &v18, &v15, &v17, &v16, 1);

  v8 = v17;
  v7 = v18;
  [v4 distanceScale];
  v10 = v9;

  v11 = vmul_n_f32(__sincosf_stret(v7), v8 * v10);
  LODWORD(v12) = v11.i32[1];
  *(&v12 + 1) = -v11.f32[0];
  *&result = vaddq_f32(v14, v12).u64[0];
  return result;
}

__n128 NUNIComputeCameraView(uint64_t a1, uint64_t a2, float a3)
{
  v3 = -*&a2;
  if (a1 == 4)
  {
    v3 = 180.0 - *&a2;
  }

  if (a1 == 3)
  {
    v3 = -90.0 - *&a2;
  }

  v4 = COERCE_FLOAT(HIDWORD(a2) ^ 0x80000000) * 3.14159265 / 180.0;
  v5 = v3 * 3.14159265 / 180.0 - a3 + 0.0;
  v6 = __sincosf_stret(v4);
  v7 = __sincosf_stret(v5);
  result.n128_u64[0] = vmul_n_f32(__PAIR64__(LODWORD(v7.__sinval), LODWORD(v7.__cosval)), v6.__cosval);
  result.n128_u32[2] = LODWORD(v6.__sinval);
  return result;
}

uint64_t NUNIComputeSpheroidIdealHomeCoordinate(uint64_t a1, float a2, float a3)
{
  v3 = a2 + a3;
  if (a1 != 1 && (a1 || fabsf(a2) <= 1.5708))
  {
    v4 = 144.0;
  }

  else
  {
    v4 = 216.0;
  }

  return COERCE_UNSIGNED_INT((v4 + (v3 * -57.296)) + (floorf((v4 + (v3 * -57.296)) / 360.0) * -360.0)) | 0x41A0000000000000;
}

void sub_25B6E0444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id _NUNCalliopeCreateTexture(void *a1, int a2, int a3, unsigned int a4, uint64_t a5, int a6)
{
  v11 = a1;
  if (a5)
  {
    v12 = objc_opt_new();
    [v12 setTextureType:2];
    [v12 setWidth:a2];
    [v12 setHeight:a3];
    [v12 setDepth:1];
    [v12 setPixelFormat:a5];
    if (a6)
    {
      v13 = 7;
    }

    else
    {
      v13 = 5;
    }

    [v12 setUsage:v13];
    [v12 setResourceOptions:32];
    if (a4 >= 2)
    {
      [v12 setMipmapLevelCount:a4];
    }

    v14 = [v11 newTextureWithDescriptor:v12];
    v15 = v14;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v17 = NUNILoggingObjectForDomain(0);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        _NUNCalliopeCreateTexture_cold_1(v17);
      }
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

uint64_t _NUNICalliopeRenderCompareObject(float *a1, float *a2)
{
  if (*a1 < *a2)
  {
    return 1;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

void __destructor_8_s0_AB8s32n16_S_s8_AE(id *a1)
{
  v1 = a1 + 1;

  for (i = 0; i != 64; i += 4)
  {
  }
}

void __destructor_8_s0_s8_s16_s24(uint64_t a1)
{
  v2 = *(a1 + 24);
}

id NUNIImageNamed(void *a1)
{
  v1 = MEMORY[0x277CBBB68];
  v2 = a1;
  v3 = [v1 sharedRenderingContext];
  v4 = [v3 device];

  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = CLKUIImageNamedFromBundleForDevice();

  return v6;
}

id NUNILocalizedString(void *a1)
{
  v1 = MEMORY[0x277CCA8D8];
  v2 = a1;
  v3 = [v1 bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:v2 value:&stru_286CF8610 table:@"Localizable"];

  return v4;
}

id NUNIMoonImageForPhaseNumber(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 > 7 || ((0x9Fu >> a3) & 1) == 0)
  {
    if (*MEMORY[0x277CBB668] != a3)
    {
      v7 = 0;
      goto LABEL_11;
    }

    goto LABEL_6;
  }

  if (*MEMORY[0x277CBB668] == a3)
  {
LABEL_6:
    v4 = @"VictoryNTK";
    goto LABEL_7;
  }

  v4 = off_27995F9C8[a3];
LABEL_7:
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@Moon_%02d", v4, a1];
  v6 = NUNIImageNamed(v5);
  v7 = v6;
  if (a2 == 1)
  {
    v8 = ___SouthernHemisphereImage_block_invoke(v6, v6);

    v7 = v8;
  }

LABEL_11:

  return v7;
}

id NUNIRenderedMoonImage(unint64_t a1, void *a2, void *a3, uint64_t a4, CGFloat a5)
{
  v8 = a1 / 112.0;
  v9 = a5 * 0.5;
  v10 = MEMORY[0x277CD9ED0];
  v11 = a3;
  v12 = a2;
  v13 = [v10 layer];
  v14 = [MEMORY[0x277CD9F90] layer];
  [v13 setMasksToBounds:1];
  [v13 addSublayer:v14];
  [v13 setBounds:{0.0, 0.0, a5, a5}];
  [v13 setCornerRadius:v9];
  [v14 setFrame:{0.0, 0.0, a5, a5}];
  v15 = v8 + -0.5;
  if (v8 >= 0.5)
  {
    v16 = 0.0;
  }

  else
  {
    v15 = v8;
    v16 = a5;
  }

  v17 = cos((v15 + v15) * 3.14159265);
  Mutable = CGPathCreateMutable();
  memset(&m, 0, sizeof(m));
  CGAffineTransformMakeTranslation(&m, v9, v9);
  v24 = m;
  CGAffineTransformScale(&v25, &v24, v17, 1.0);
  m = v25;
  CGPathMoveToPoint(Mutable, 0, v16, 0.0);
  CGPathAddArc(Mutable, &m, 0.0, 0.0, v9, -1.57079633, 1.57079633, 0);
  CGPathAddLineToPoint(Mutable, 0, v16, a5);
  [v14 setPath:Mutable];
  v19 = [v12 CGColor];

  [v14 setFillColor:v19];
  v20 = [v11 CGColor];

  [v13 setBackgroundColor:v20];
  v28.width = a5;
  v28.height = a5;
  UIGraphicsBeginImageContextWithOptions(v28, 0, 0.0);
  [v13 renderInContext:UIGraphicsGetCurrentContext()];
  v21 = UIGraphicsGetImageFromCurrentImageContext();
  v22 = [v21 imageWithRenderingMode:a4];

  UIGraphicsEndImageContext();
  CGPathRelease(Mutable);

  return v22;
}

uint64_t NUNIMoonPhaseNumber(void *a1, double a2, double a3)
{
  v5 = MEMORY[0x277D0EAE0];
  v6 = a1;
  v7 = [[v5 alloc] initWithLocation:v6 date:4 body:{a2, a3}];

  NUNIMoonPhaseAngleFromEphemeris(v7);
  v9 = vcvtmd_u64_f64((v8 + 180.0) / 360.0 * 112.0 + 0.5);
  v10 = v9 - 112 * (((v9 >> 4) * 0x2492492492492493uLL) >> 64);

  return v10;
}

void NUNIMoonPhaseAngleFromEphemeris(void *a1)
{
  v1 = a1;
  [v1 parallacticAngle];
  [v1 phaseAngle];
}

uint64_t NUNIMoonPhaseFor(void *a1, void *a2, double a3, double a4)
{
  v7 = MEMORY[0x277CBEA80];
  v8 = a2;
  v9 = a1;
  v10 = [v7 currentCalendar];
  [v10 setTimeZone:v8];

  v11 = [v10 startOfDayForDate:v9];
  v12 = 1;
  v13 = [v10 dateByAddingUnit:16 value:1 toDate:v9 options:0];

  v14 = [v10 startOfDayForDate:v13];

  v15 = [objc_alloc(MEMORY[0x277D0EAE0]) initWithLocation:v11 date:4 body:{a3, a4}];
  v16 = [objc_alloc(MEMORY[0x277D0EAE0]) initWithLocation:v14 date:4 body:{a3, a4}];
  NUNIMoonPhaseAngleFromEphemeris(v15);
  v18 = v17;
  NUNIMoonPhaseAngleFromEphemeris(v16);
  if (v18 <= 0.0 || v19 >= 0.0)
  {
    if (v18 >= -90.0 || v19 <= -90.0)
    {
      if (v18 >= 0.0 || v19 <= 0.0)
      {
        v20 = 4;
        if (v18 < -90.0)
        {
          v20 = 2;
        }

        v21 = 8;
        if (v18 < 90.0)
        {
          v21 = 6;
        }

        v22 = 7;
        if (v18 >= 90.0 || v19 <= 90.0)
        {
          v22 = v20;
        }

        if (v18 < 0.0 || v18 < -90.0 || v18 < 90.0 && v19 > 90.0)
        {
          v12 = v22;
        }

        else
        {
          v12 = v21;
        }
      }

      else
      {
        v12 = 5;
      }
    }

    else
    {
      v12 = 3;
    }
  }

  return v12;
}

id NUNIMoonPhaseDescription(void *a1, void *a2, double a3, double a4)
{
  v7 = a1;
  v8 = a2;
  v9 = NUNIMoonPhaseFor(v7, v8, a3, a4);
  v10 = NUNILocalizedString(off_27995FA08[v9 - 1]);

  return v10;
}

void NUNIAstronomyVistaController_ApplyStyleDefinition(float32x2_t *a1, uint64_t a2, void *a3)
{
  v4 = *&a1[1];
  v5 = a3;
  [v5 setCameraOffset:v4];
  LODWORD(v6) = a1->i32[0];
  [v5 setCameraOrbit:v6];
  __asm { FMOV            V1.2D, #-15.0 }

  [v5 setOffsetCoordinate:{COERCE_DOUBLE(*&vmulq_f64(vcvtq_f64_f32(a1[16]), _Q1).f64[1])}];
  v14 = [v5 spheroidOfType:3];

  v13 = v14;
  if (v14)
  {
    LODWORD(v12) = a1[3].i32[0];
    [v14 setCloudOpacity:v12];
    v13 = v14;
  }
}

void sub_25B6E960C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void _simd_slerp_internal(float32x4_t a1, float32x4_t a2, float a3)
{
  v5 = 1.0 - a3;
  v6 = vsubq_f32(a1, a2);
  v7 = vmulq_f32(v6, v6);
  v8 = vaddq_f32(a1, a2);
  v9 = vmulq_f32(v8, v8);
  v10 = atan2f(sqrtf(vaddv_f32(vadd_f32(*v7.i8, *&vextq_s8(v7, v7, 8uLL)))), sqrtf(vaddv_f32(vadd_f32(*v9.i8, *&vextq_s8(v9, v9, 8uLL)))));
  v11 = v10 + v10;
  if ((v10 + v10) != 0.0)
  {
    sinf(v11);
  }

  if ((v5 * v11) != 0.0)
  {
    sinf(v5 * v11);
  }

  v12 = v11 * a3;
  if (v12 != 0.0)
  {
    sinf(v12);
  }
}

id NUNILoggingObjectForDomain(uint64_t a1)
{
  if (NUNILoggingObjectForDomain_onceToken != -1)
  {
    NUNILoggingObjectForDomain_cold_1();
  }

  v2 = NUNILoggingObjectForDomain___logObjects;
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:a1];
  v4 = [v2 objectForKey:v3];

  return v4;
}

void __NUNILoggingObjectForDomain_block_invoke()
{
  v0 = [MEMORY[0x277CBEB38] dictionary];
  v1 = os_log_create("com.apple.NanoUniverse", "nanouniverse");
  if (v1)
  {
    v2 = [MEMORY[0x277CCABB0] numberWithInteger:0];
    [v0 setObject:v1 forKey:v2];
  }

  v3 = NUNILoggingObjectForDomain___logObjects;
  NUNILoggingObjectForDomain___logObjects = v0;
}

uint64_t _NUNIClassicRenderCompareObject(float *a1, float *a2)
{
  if (*a1 < *a2)
  {
    return 1;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

id NUNILoadMtlTextureFromMemory(uint64_t a1, unsigned int a2, void *a3)
{
  v5 = a3;
  v6 = MEMORY[0x277CFA750];
  v7 = [v5 path];
  v8 = [v6 atlasBackingWithBytes:a1 length:a2 mmapFile:v5 uuid:v7];

  if (v8)
  {
    v9 = v8;
    kdebug_trace();
    objc_msgSend_structure(v9);
    [MEMORY[0x277CFA798] sharedDevice];
    objc_claimAutoreleasedReturnValue();
    NUNILoadMtlTextureFromMemory_cold_1();
  }

  v10 = NUNILoggingObjectForDomain(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    NUNILoadMtlTextureFromMemory_cold_2(v5, v10);
  }

  return 0;
}

void __destructor_8_AB0s8n4_s0_AE_s32_s40(uint64_t a1)
{
  for (i = 0; i != 32; i += 8)
  {
  }

  v3 = *(a1 + 40);
}

uint64_t _NTKCreateHalfOctahedron(void *a1, int8x16_t a2)
{
  v76 = a1;
  v2 = 10016;
  v3 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:10016];
  v4 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:3456];
  v75 = v3;
  v5 = [v3 mutableBytes];
  v74 = v4;
  v6 = [v4 mutableBytes];
  v7 = v6 + 6;
  v105 = fminf(fmaxf((atan2f(*a2.i32, 0.0) + 3.1416) / 6.2832, 0.0), 1.0);
  *v8.i32 = acosf(0.0);
  v9 = 1.0;
  _Q2 = a2;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  *&v14 = a2.u32[0];
  DWORD2(v14) = 0;
  HIDWORD(v14) = 1.0;
  *&v15 = v105;
  *(&v15 + 1) = *v8.i32 / 3.1416;
  *v5 = v14;
  v72 = v6;
  v77 = v6 - 6;
  v78 = v5;
  *(v5 + 16) = v15;
  *(v5 + 24) = 0;
  v16 = 1;
  v17 = 32;
  v18 = 2;
  v19 = 4294967264;
  v20 = v5;
  v21 = v5;
  v22 = v5;
  do
  {
    v84 = v16;
    v85 = v12;
    v86 = v11;
    v87 = v2;
    v23 = 0;
    v24 = 0;
    v80 = v17;
    v25 = v17 >> 5;
    v26 = v18 + -1.0;
    v92 = (v18 - 1) / 12.0;
    *v8.i32 = (v9 - v92) * *_Q2.i32;
    v81 = v22;
    v82 = v21;
    v91 = v22 + v17;
    v90 = v78 + v17;
    v89 = v21 + v17;
    v83 = v20;
    v88 = v20 + v17;
    v104 = v8;
    v103 = vextq_s8(v8, v8, 4uLL);
    do
    {
      v27 = (v90 + v23);
      v28.f32[0] = v9 - (v24 / v26);
      *(v90 + v23 + 24) = 0;
      v29 = (v89 + v23);
      *(v89 + v23 + 56) = 0;
      v30 = (v88 + v23);
      v28.f32[1] = v24 / v26;
      *_Q2.i8 = vmul_n_f32(v28, v92);
      v106 = _Q2;
      _D1 = vmul_f32(*_Q2.i8, *_Q2.i8);
      _S15 = *&_Q2.i32[1];
      __asm { FMLA            S1, S15, V2.S[1] }

      *_D1.i32 = sqrtf(*_D1.i32);
      v100 = vdupq_lane_s32(_D1, 0);
      v98 = vdivq_f32(vextq_s8(v103, _Q2, 0xCuLL), v100);
      v37 = v19;
      v96 = fminf(fmaxf((atan2f(v98.f32[0], v98.f32[1]) + 3.1416) / 6.2832, 0.0), 1.0);
      v38 = acosf(v98.f32[2]);
      v39 = v98;
      v39.i32[3] = 1.0;
      *&v40 = v96;
      *(&v40 + 1) = v38 / 3.1416;
      *v27 = v39;
      v27[1].i64[0] = v40;
      v41 = vnegq_f32(v106);
      v95 = v41;
      v42 = vuzp1q_s32(v104, v41);
      v42.i32[1] = v41.i32[1];
      v99 = v42;
      v42.i64[1] = v106.i64[0];
      *v41.i32 = sqrtf((vmuls_lane_f32(_S15, *v106.f32, 1) + (*v104.i32 * *v104.i32)) + (v42.f32[2] * v42.f32[2]));
      v97 = vdupq_lane_s32(*v41.i8, 0);
      v94 = vdivq_f32(v42, v97);
      v93 = fminf(fmaxf((atan2f(v94.f32[0], v94.f32[1]) + 3.1416) / 6.2832, 0.0), 1.0);
      v43 = acosf(v94.f32[2]);
      v44 = v94;
      v44.i32[3] = 1.0;
      *&v45 = v93;
      *(&v45 + 1) = v43 / 3.1416;
      v29[2] = v44;
      v29[3].i64[0] = v45;
      v101 = vdivq_f32(vextq_s8(v103, v95, 0xCuLL), v100);
      v95.i32[0] = fminf(fmaxf((atan2f(v101.f32[0], v101.f32[1]) + 3.1416) / 6.2832, 0.0), 1.0);
      v46 = acosf(v101.f32[2]);
      v47 = v101;
      v47.i32[3] = 1.0;
      LODWORD(v48) = v95.i32[0];
      *(&v48 + 1) = v46 / 3.1416;
      v30[4] = v47;
      v30[5].i64[0] = v48;
      v30[5].i64[1] = 0;
      v49 = (v91 + v23);
      v50 = v99;
      v50.i32[1] = v106.i32[1];
      v107 = vdivq_f32(v50, v97);
      *v51.i32 = fminf(fmaxf((atan2f(v107.f32[0], v107.f32[1]) + 3.1416) / 6.2832, 0.0), 1.0);
      v102 = v51;
      *v8.i32 = acosf(v107.f32[2]);
      v19 = v37;
      v9 = 1.0;
      v52 = v107;
      v52.i32[3] = 1.0;
      _Q2 = v102;
      *&_Q2.i32[1] = *v8.i32 / 3.1416;
      v49[6] = v52;
      v49[7].i64[0] = _Q2.i64[0];
      v49[7].i64[1] = 0;
      ++v24;
      v23 += 32;
    }

    while (v37 + v23);
    v53 = 0;
    v54 = 0;
    v55 = 0;
    v56 = 4 * v18 - 8;
    v57 = v25 - v56;
    v58 = v25;
    _Q2 = a2;
    do
    {
      v59 = 0;
      v60 = v77 + 12 * (v18 - 1) + v13;
      for (i = v13; ; i += 12)
      {
        if (v18 == 2)
        {
          LOWORD(v62) = 0;
          LOWORD(v63) = 0;
        }

        else
        {
          v62 = v57 + (v54 + v59) % v56;
          v63 = v57 + (v54 + v59 + 1) % v56;
        }

        v64 = v7 + i;
        v65 = (v53 + v59 + 1) % (4 * (v18 - 1)) + v25;
        *(v7 + i - 6) = v58 + v59;
        if (*a2.i32 >= 0.0)
        {
          break;
        }

        *(v64 - 4) = v65;
        *(v64 - 2) = v62;
        if (v64 >= v60)
        {
          goto LABEL_15;
        }

LABEL_14:
        v66 = (v7 + i);
        *v66 = v62;
        v66[1] = v65;
        v66[2] = v63;
        ++v59;
      }

      *(v64 - 4) = v62;
      *(v64 - 2) = v65;
      if (v64 < v60)
      {
        LOWORD(v65) = v63;
        LOWORD(v63) = (v53 + v59 + 1) % (4 * (v18 - 1)) + v25;
        goto LABEL_14;
      }

LABEL_15:
      ++v55;
      v54 += v86;
      v53 += v84;
      v58 += v84;
      v13 = i + 6;
    }

    while (v55 != 4);
    v17 = v80 + v85 + v23 + 96;
    ++v18;
    v16 = v84 + 1;
    v2 = v87 - 96;
    v12 = v85 + 96;
    v22 = v81 + 96;
    v21 = v82 + 32;
    v20 = v83 + 64;
    v19 -= 32;
    v11 = v86 + 1;
  }

  while (v18 != 14);
  if (v2 - v80 != v23)
  {
    v67 = NUNILoggingObjectForDomain(0);
    if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25B6D4000, v67, OS_LOG_TYPE_DEFAULT, "v not at right position", buf, 2u);
    }
  }

  if (i != 3450)
  {
    v68 = NUNILoggingObjectForDomain(0);
    if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
    {
      *v108 = 0;
      _os_log_impl(&dword_25B6D4000, v68, OS_LOG_TYPE_DEFAULT, "t not at right position", v108, 2u);
    }
  }

  v69 = [v76 addVertices:v78 count:{313, v72}];
  v70 = [v76 addIndices:v73 count:1728 vbase:v69];

  return v70 | 0x6C000000000;
}

id NUNIBundle(uint64_t a1)
{
  if (NUNIBundle_onceToken != -1)
  {
    NUNIBundle_cold_1();
  }

  v2 = NUNIBundle___bundle;

  return v2;
}

uint64_t __NUNIBundle_block_invoke()
{
  NUNIBundle___bundle = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];

  return MEMORY[0x2821F96F8]();
}

__n64 UMFloat4x4Make(float a1, float a2, float a3, float a4)
{
  v4 = (a1 * (a2 + a2)) + (a4 * (a3 + a3));
  result.n64_f32[0] = 1.0 - ((a2 * (a2 + a2)) + (a3 * (a3 + a3)));
  result.n64_f32[1] = v4;
  return result;
}

float UMFloat4x4MakeOrtho(float32x2_t a1, float32x2_t a2, float32_t a3, float32_t a4, float a5, float a6)
{
  a2.f32[1] = a4;
  a1.f32[1] = a3;
  v6 = vsub_f32(a2, a1);
  __asm { FMOV            V1.2S, #1.0 }

  _D1.f32[0] = vdiv_f32(_D1, v6).f32[0];
  return _D1.f32[0] + _D1.f32[0];
}

BOOL UMFloat4x4Equal(simd_float4x4 a1, simd_float4x4 a2)
{
  v7 = a1;
  v6[0] = a2.columns[1];
  v6[1] = a2.columns[2];
  v6[2] = a2.columns[3];
  if ((vminvq_u32(vceqq_f32(a1.columns[0], a2.columns[0])) & 0x80000000) == 0)
  {
    return 0;
  }

  v3 = 0;
  do
  {
    v4 = v3;
    if (v3 == 3)
    {
      break;
    }

    v5 = vminvq_u32(vceqq_f32(v7.columns[v3 + 1], v6[v3]));
    ++v3;
  }

  while ((v5 & 0x80000000) != 0);
  return v4 > 2;
}

float UMQuaternionMake(float a1, float a2, float a3)
{
  v5 = __sincosf_stret(a1 * 0.5);
  v6 = __sincosf_stret(a2 * 0.5);
  v7 = __sincosf_stret(a3 * 0.5);
  return (v5.__sinval * (v6.__cosval * v7.__cosval)) - ((v6.__sinval * v7.__sinval) * v5.__cosval);
}

double UMFloat4x4MakeRotateZ(float a1)
{
  v1 = __sincosf_stret(a1);
  *&v2 = v1.__cosval;
  *(&v2 + 1) = -v1.__sinval;
  return v2;
}

float UMSlerp(float a1, float a2, float a3, float a4, float a5, float a6, float a7, float a8, float a9)
{
  v10 = a9;
  if (a9 <= 0.0)
  {
    return a1;
  }

  v11 = a5;
  if (a9 < 1.0)
  {
    v12 = (((a2 * a6) + (a1 * a5)) + (a3 * a7)) + (a4 * a8);
    if (v12 < 0.0)
    {
      v11 = -a5;
      v12 = -v12;
    }

    if (v12 <= 0.999)
    {
      v14 = sqrtf(1.0 - (v12 * v12));
      v17 = atan2f(v14, v12);
      v18 = 1.0 / v14;
      v15 = (1.0 - a9) * v17;
      v13 = (1.0 / v14) * sinf(v15);
      v10 = v18 * sinf(v17 * a9);
    }

    else
    {
      v13 = 1.0 - a9;
    }

    return (v11 * v10) + (v13 * a1);
  }

  return v11;
}

float32x2_t UMQuaternionMake(int8x16_t a1, int8x16_t a2, __n128 a3, double a4, double a5)
{
  v5 = ((*a1.i32 + *&a2.i32[1]) + a3.n128_f32[2]) + 1.0;
  if (v5 <= 0.0001)
  {
    if (*a1.i32 <= *&a2.i32[1] || *a1.i32 <= a3.n128_f32[2])
    {
      if (*&a2.i32[1] <= a3.n128_f32[2])
      {
        v18 = 0.5 / sqrtf(((a3.n128_f32[2] + 1.0) - *a1.i32) - *&a2.i32[1]);
        v6 = vmul_n_f32(vadd_f32(a3.n128_u64[0], vzip1_s32(*&vextq_s8(a1, a1, 8uLL), *&vextq_s8(a2, a2, 8uLL))), v18);
        _D2.f32[1] = (*&a1.i32[1] - *a2.i32) * v18;
        goto LABEL_12;
      }

      v14 = 0.5 / sqrtf(((*&a2.i32[1] + 1.0) - *a1.i32) - a3.n128_f32[2]);
      v6.f32[0] = (*&a1.i32[1] + *a2.i32) * v14;
      v16 = 0.25 / v14;
      _D2 = vmul_n_f32(vext_s8(vadd_f32(a3.n128_u64[0], vdup_laneq_s32(a2, 2)), vsub_f32(*&vextq_s8(a1, a1, 8uLL), a3.n128_u64[0]), 4uLL), v14);
    }

    else
    {
      v15 = 0.5 / sqrtf(((*a1.i32 + 1.0) - *&a2.i32[1]) - a3.n128_f32[2]);
      v6.f32[0] = 0.25 / v15;
      v16 = (*&a1.i32[1] + *a2.i32) * v15;
      v17.i32[0] = vadd_f32(a3.n128_u64[0], *&vextq_s8(a1, a1, 8uLL)).u32[0];
      v17.i32[1] = vsub_f32(vdup_laneq_s32(*&a2, 2), *&a3).i32[1];
      _D2 = vmul_n_f32(v17, v15);
    }

    v6.f32[1] = v16;
  }

  else
  {
    *&a5 = 0.5 / sqrtf(v5);
    v6 = vmul_n_f32(vsub_f32(vext_s8(a3.n128_u64[0], *&vextq_s8(a1, a1, 8uLL), 4uLL), vzip1_s32(*&vextq_s8(a2, a2, 8uLL), a3.n128_u64[0])), *&a5);
    __asm { FMOV            V1.2S, #0.25 }

    _D2.i32[1] = vdiv_f32(_D1, vdup_lane_s32(*&a5, 0)).i32[1];
  }

LABEL_12:
  _D0 = vmul_f32(v6, v6);
  _S1 = _D2.i32[1];
  __asm { FMLA            S0, S1, V2.S[1] }

  *_D0.i32 = sqrtf(*_D0.i32);
  return vdiv_f32(v6, vdup_lane_s32(_D0, 0));
}

id _NUNAegirCreateTexture(void *a1, int a2, int a3, unsigned int a4, uint64_t a5)
{
  v9 = a1;
  if (a5)
  {
    v10 = objc_opt_new();
    [v10 setTextureType:2];
    [v10 setWidth:a2];
    [v10 setHeight:a3];
    [v10 setDepth:1];
    [v10 setPixelFormat:a5];
    [v10 setUsage:5];
    [v10 setResourceOptions:32];
    if (a4 >= 2)
    {
      [v10 setMipmapLevelCount:a4];
    }

    v11 = [v9 newTextureWithDescriptor:v10];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v14 = NUNILoggingObjectForDomain(0);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        _NUNCalliopeCreateTexture_cold_1(v14);
      }
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

uint64_t _NUNIAegirRenderCompareObject(float *a1, float *a2)
{
  if (*a1 < *a2)
  {
    return 1;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

float NUNIAstronomyClampLatitude(float a1)
{
  result = 80.0;
  if (a1 <= 80.0)
  {
    result = a1;
    if (a1 < -80.0)
    {
      return -80.0;
    }
  }

  return result;
}

double _NTKAstronomyNormalizeCoordinateForRotationAroundCoordinate(double result, double a2, double a3, double a4)
{
    ;
  }

    ;
  }

    ;
  }

    ;
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_25B6F5678(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_25B716340();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_25B716330();
}

uint64_t sub_25B6F5714@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_25B716340();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_25B6F57AC()
{
  v0 = sub_25B7167D0();
  v1 = MEMORY[0x25F86AED0](v0);

  return v1;
}

uint64_t sub_25B6F57E8(uint64_t a1)
{
  sub_25B7167D0();
  sub_25B7167F0();
}

uint64_t sub_25B6F583C(uint64_t a1)
{
  sub_25B7167D0();
  sub_25B716B70();
  sub_25B7167F0();
  v1 = sub_25B716B90();

  return v1;
}

uint64_t sub_25B6F58B8(uint64_t a1, id *a2)
{
  result = sub_25B7167B0();
  *a2 = 0;
  return result;
}

uint64_t sub_25B6F5930(uint64_t a1, id *a2)
{
  v3 = sub_25B7167C0();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_25B6F59B0@<X0>(uint64_t *a2@<X8>)
{
  sub_25B7167D0();
  v3 = sub_25B7167A0();

  *a2 = v3;
  return result;
}

uint64_t sub_25B6F59F4(void *a1, uint64_t *a2)
{
  v2 = sub_25B7167D0();
  v4 = v3;
  if (v2 == sub_25B7167D0() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_25B716AF0();
  }

  return v7 & 1;
}

uint64_t sub_25B6F5A7C@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_25B7167A0();

  *a2 = v3;
  return result;
}

uint64_t sub_25B6F5AC4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25B7167D0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

void type metadata accessor for FileAttributeKey()
{
  if (!qword_27FA4A0D0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27FA4A0D0);
    }
  }
}

uint64_t sub_25B6F5BA4(uint64_t a1)
{
  v2 = sub_25B6F5CD8(&qword_27FA4A0F0, &unk_25B737D48);
  v3 = sub_25B6F5CD8(&qword_27FA4A0F8, &unk_25B737C9C);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_25B6F5CD8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FileAttributeKey();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_25B6F5D1C()
{
  result = [objc_opt_self() standardUserDefaults];
  qword_2810C3688 = result;
  return result;
}

void sub_25B6F5D58()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA4A1C0, &qword_25B737D90);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v20[-1] - v2;
  if (qword_2810C33E0 != -1)
  {
    swift_once();
  }

  v4 = qword_2810C3688;
  v5 = qword_2810C3688;
  v6 = sub_25B6F7540(&unk_286CF5F68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA4A1C8, &qword_25B737D98);
  swift_arrayDestroy();
  v7 = type metadata accessor for PreferencePane(0);
  v8 = objc_allocWithZone(v7);
  v9 = OBJC_IVAR____TtC12NanoUniverse14PreferencePane__panes;
  v20[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA4A1D0, &qword_25B737DA0);
  sub_25B716370();
  (*(v1 + 32))(&v8[v9], v3, v0);
  *&v8[OBJC_IVAR____TtC12NanoUniverse14PreferencePane_changeSequence] = 0;
  v10 = MEMORY[0x277D84F90];
  *&v8[OBJC_IVAR____TtC12NanoUniverse14PreferencePane_sliders] = MEMORY[0x277D84F90];
  *&v8[OBJC_IVAR____TtC12NanoUniverse14PreferencePane_toggles] = v10;
  *&v8[OBJC_IVAR____TtC12NanoUniverse14PreferencePane_pickersSelections] = v10;
  *&v8[OBJC_IVAR____TtC12NanoUniverse14PreferencePane_pickerOptions] = 0;
  swift_unknownObjectWeakInit();
  v11 = OBJC_IVAR____TtC12NanoUniverse14PreferencePane_userDefaults;
  *&v8[OBJC_IVAR____TtC12NanoUniverse14PreferencePane_userDefaults] = 0;
  swift_beginAccess();
  v22 = 0xD000000000000014;
  v23 = 0x800000025B73A010;
  sub_25B716370();
  swift_endAccess();
  swift_beginAccess();
  v12 = *&v8[v11];
  *&v8[v11] = v4;
  v13 = v5;

  *&v8[OBJC_IVAR____TtC12NanoUniverse14PreferencePane_defaultSliders] = v6;
  v14 = MEMORY[0x277D84F98];
  *&v8[OBJC_IVAR____TtC12NanoUniverse14PreferencePane_defaultToggles] = MEMORY[0x277D84F98];
  *&v8[OBJC_IVAR____TtC12NanoUniverse14PreferencePane_defaultPickersSelections] = v14;
  v21.receiver = v8;
  v21.super_class = v7;
  v15 = objc_msgSendSuper2(&v21, sel_init);
  sub_25B6FA948(0x704F72656B636970, 0xED0000736E6F6974, v20);
  if (!v20[3])
  {
    sub_25B6F6328(v20);
    goto LABEL_7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA4A1E0, &qword_25B737DB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v18 = OBJC_IVAR____TtC12NanoUniverse14PreferencePane_pickerOptions;
    swift_beginAccess();
    *&v15[v18] = v14;
    goto LABEL_8;
  }

  v16 = v19;
  v17 = OBJC_IVAR____TtC12NanoUniverse14PreferencePane_pickerOptions;
  swift_beginAccess();
  *&v15[v17] = v16;
LABEL_8:

  sub_25B6F9E8C(0);

  qword_2810C3410 = v15;
}

id static PreferencePane.aegirRenderingPreferencePane.getter()
{
  if (qword_2810C3408 != -1)
  {
    swift_once();
  }

  v1 = qword_2810C3410;

  return v1;
}

NSNumber_optional __swiftcall PreferencePane.fractionValue(forOption:)(Swift::String forOption)
{
  v1 = COERCE_DOUBLE(sub_25B6FA524(forOption._countAndFlagsBits, forOption._object));
  if (v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  }

  result.value.super.super.isa = v3;
  result.is_nil = v2;
  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_25B6F6328(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA4A1D8, &qword_25B737DA8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t AegirAuthentication.__allocating_init()()
{
  v0 = swift_allocObject();
  sub_25B7162E0();
  swift_allocObject();
  *(v0 + 16) = sub_25B7162D0();
  return v0;
}

uint64_t AegirAuthentication.init()()
{
  sub_25B7162E0();
  swift_allocObject();
  *(v0 + 16) = sub_25B7162D0();
  return v0;
}

uint64_t sub_25B6F6430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v31 = a6;
  v28 = a5;
  v29 = a7;
  v30 = a4;
  v26 = a2;
  v27 = a3;
  v25 = a1;
  v7 = sub_25B7162B0();
  v23 = *(v7 - 8);
  v24 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25B716250();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_25B716290();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_25B716300();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v23 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v17, v26, v14);
  (*(v11 + 16))(v13, v27, v10);

  sub_25B7162F0();
  sub_25B7162C0();
  sub_25B7162A0();
  (*(v23 + 8))(v9, v24);
  sub_25B716140();

  return (*(v19 + 8))(v21, v18);
}

uint64_t AegirAuthentication.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_25B6F6920(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_25B6F6994(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_25B6F69F0(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_25B6F69F0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_25B6F6ABC(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_25B6F7068(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_25B6F6ABC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_25B6F6BC8(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_25B716A50();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_25B6F6BC8(uint64_t a1, unint64_t a2)
{
  v3 = sub_25B6F6C14(a1, a2);
  sub_25B6F6D44(&unk_286CF62D0);
  return v3;
}

void *sub_25B6F6C14(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_25B6F6E30(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_25B716A50();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_25B716810();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_25B6F6E30(v10, 0);
        result = sub_25B716A30();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_25B6F6D44(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_25B6F6EA4(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_25B6F6E30(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA4A1E8, &qword_25B737E08);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_25B6F6EA4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA4A1E8, &qword_25B737E08);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

_BYTE **sub_25B6F6F98(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_25B6F7068(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_25B6F70C8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA4A1C0, &qword_25B737D90);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v20[-1] - v2;
  if (qword_2810C33E0 != -1)
  {
    swift_once();
  }

  v4 = qword_2810C3688;
  v5 = qword_2810C3688;
  v6 = sub_25B6F7540(&unk_286CF62F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA4A1C8, &qword_25B737D98);
  swift_arrayDestroy();
  v7 = type metadata accessor for PreferencePane(0);
  v8 = objc_allocWithZone(v7);
  v9 = OBJC_IVAR____TtC12NanoUniverse14PreferencePane__panes;
  v20[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA4A1D0, &qword_25B737DA0);
  sub_25B716370();
  (*(v1 + 32))(&v8[v9], v3, v0);
  *&v8[OBJC_IVAR____TtC12NanoUniverse14PreferencePane_changeSequence] = 0;
  v10 = MEMORY[0x277D84F90];
  *&v8[OBJC_IVAR____TtC12NanoUniverse14PreferencePane_sliders] = MEMORY[0x277D84F90];
  *&v8[OBJC_IVAR____TtC12NanoUniverse14PreferencePane_toggles] = v10;
  *&v8[OBJC_IVAR____TtC12NanoUniverse14PreferencePane_pickersSelections] = v10;
  *&v8[OBJC_IVAR____TtC12NanoUniverse14PreferencePane_pickerOptions] = 0;
  swift_unknownObjectWeakInit();
  v11 = OBJC_IVAR____TtC12NanoUniverse14PreferencePane_userDefaults;
  *&v8[OBJC_IVAR____TtC12NanoUniverse14PreferencePane_userDefaults] = 0;
  swift_beginAccess();
  v22 = 0xD000000000000014;
  v23 = 0x800000025B73A010;
  sub_25B716370();
  swift_endAccess();
  swift_beginAccess();
  v12 = *&v8[v11];
  *&v8[v11] = v4;
  v13 = v5;

  *&v8[OBJC_IVAR____TtC12NanoUniverse14PreferencePane_defaultSliders] = v6;
  v14 = MEMORY[0x277D84F98];
  *&v8[OBJC_IVAR____TtC12NanoUniverse14PreferencePane_defaultToggles] = MEMORY[0x277D84F98];
  *&v8[OBJC_IVAR____TtC12NanoUniverse14PreferencePane_defaultPickersSelections] = v14;
  v21.receiver = v8;
  v21.super_class = v7;
  v15 = objc_msgSendSuper2(&v21, sel_init);
  sub_25B6FA948(0x704F72656B636970, 0xED0000736E6F6974, v20);
  if (!v20[3])
  {
    sub_25B6F6328(v20);
    goto LABEL_7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA4A1E0, &qword_25B737DB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v18 = OBJC_IVAR____TtC12NanoUniverse14PreferencePane_pickerOptions;
    swift_beginAccess();
    *&v15[v18] = v14;
    goto LABEL_8;
  }

  v16 = v19;
  v17 = OBJC_IVAR____TtC12NanoUniverse14PreferencePane_pickerOptions;
  swift_beginAccess();
  *&v15[v17] = v16;
LABEL_8:

  sub_25B6F9E8C(0);

  qword_2810C33F8 = v15;
}

id static PreferencePane.calliopeRenderingPreferencePane.getter()
{
  if (qword_2810C33F0 != -1)
  {
    swift_once();
  }

  v1 = qword_2810C33F8;

  return v1;
}

unint64_t sub_25B6F7540(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA4A1F0, &qword_25B737E18);
    v3 = sub_25B716A90();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_25B6FB5BC(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

char *PreferencePane.__allocating_init(name:userDefaults:sliders:toggles:pickerOptions:pickerSelections:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v30 = a7;
  v31 = a6;
  v29 = a5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA4A1C0, &qword_25B737D90);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v28 - v14;
  v16 = objc_allocWithZone(v7);
  v17 = OBJC_IVAR____TtC12NanoUniverse14PreferencePane__panes;
  v33[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA4A1D0, &qword_25B737DA0);
  sub_25B716370();
  (*(v13 + 32))(&v16[v17], v15, v12);
  *&v16[OBJC_IVAR____TtC12NanoUniverse14PreferencePane_changeSequence] = 0;
  v18 = MEMORY[0x277D84F90];
  *&v16[OBJC_IVAR____TtC12NanoUniverse14PreferencePane_sliders] = MEMORY[0x277D84F90];
  *&v16[OBJC_IVAR____TtC12NanoUniverse14PreferencePane_toggles] = v18;
  *&v16[OBJC_IVAR____TtC12NanoUniverse14PreferencePane_pickersSelections] = v18;
  *&v16[OBJC_IVAR____TtC12NanoUniverse14PreferencePane_pickerOptions] = 0;
  swift_unknownObjectWeakInit();
  v19 = OBJC_IVAR____TtC12NanoUniverse14PreferencePane_userDefaults;
  *&v16[OBJC_IVAR____TtC12NanoUniverse14PreferencePane_userDefaults] = 0;
  swift_beginAccess();
  v35 = a1;
  v36 = a2;
  sub_25B716370();
  swift_endAccess();
  swift_beginAccess();
  v20 = *&v16[v19];
  *&v16[v19] = a3;
  v21 = a3;

  *&v16[OBJC_IVAR____TtC12NanoUniverse14PreferencePane_defaultSliders] = a4;
  v22 = v30;
  *&v16[OBJC_IVAR____TtC12NanoUniverse14PreferencePane_defaultToggles] = v29;
  *&v16[OBJC_IVAR____TtC12NanoUniverse14PreferencePane_defaultPickersSelections] = v22;
  v34.receiver = v16;
  v34.super_class = v7;
  v23 = objc_msgSendSuper2(&v34, sel_init);
  sub_25B6FA948(0x704F72656B636970, 0xED0000736E6F6974, v33);
  if (!v33[3])
  {
    sub_25B6F6328(v33);
    goto LABEL_5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA4A1E0, &qword_25B737DB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v26 = OBJC_IVAR____TtC12NanoUniverse14PreferencePane_pickerOptions;
    swift_beginAccess();
    *&v23[v26] = v31;
    goto LABEL_6;
  }

  v24 = v32;
  v25 = OBJC_IVAR____TtC12NanoUniverse14PreferencePane_pickerOptions;
  swift_beginAccess();
  *&v23[v25] = v24;
LABEL_6:

  sub_25B6F9E8C(0);

  return v23;
}

uint64_t sub_25B6F7A08(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25B7163B0();

  return v3;
}

uint64_t sub_25B6F7B00(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_25B7163C0();
}

uint64_t sub_25B6F7B78@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25B7163B0();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_25B6F7BF8(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return sub_25B7163C0();
}

uint64_t (*sub_25B6F7C78(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_25B7163A0();
  return sub_25B6F7D1C;
}

void sub_25B6F7D1C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_25B6F7D84(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA4A200, &qword_25B737E78);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA4A1F8, &qword_25B737E70);
  sub_25B716390();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_25B6F7F24(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA4A200, &qword_25B737E78);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA4A1F8, &qword_25B737E70);
  sub_25B716390();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*sub_25B6F805C(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA4A200, &qword_25B737E78);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC12NanoUniverse14PreferencePane__name;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA4A1F8, &qword_25B737E70);
  sub_25B716380();
  swift_endAccess();
  return sub_25B6F81CC;
}

void sub_25B6F81CC(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[13];
  v11 = v3[14];
  v7 = v3[11];
  v6 = v3[12];
  v8 = v3[10];
  if (a2)
  {
    v4(v3[12], v5, v3[10]);
    swift_beginAccess();
    sub_25B716390();
    swift_endAccess();
    v9 = *(v7 + 8);
    v9(v5, v8);
    v10 = v11;
    v9(v11, v8);
  }

  else
  {
    swift_beginAccess();
    sub_25B716390();
    swift_endAccess();
    v10 = v11;
    (*(v7 + 8))(v11, v8);
  }

  free(v10);
  free(v5);
  free(v6);

  free(v3);
}

uint64_t sub_25B6F83F4(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25B7163B0();

  return v3;
}

uint64_t sub_25B6F84F4@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25B7163B0();

  *a2 = v4;
  return result;
}

uint64_t sub_25B6F8574(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return sub_25B7163C0();
}

uint64_t sub_25B6F85EC(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  sub_25B716380();
  return swift_endAccess();
}

uint64_t sub_25B6F8668(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA4A220, &unk_25B737F70);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA4A1C0, &qword_25B737D90);
  sub_25B716390();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_25B6F8808(void *a1, uint64_t *a2, uint64_t *a3)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  sub_25B716380();
  return swift_endAccess();
}

uint64_t sub_25B6F88C8()
{
  v1 = OBJC_IVAR____TtC12NanoUniverse14PreferencePane_changeSequence;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_25B6F8960(int a1)
{
  v3 = OBJC_IVAR____TtC12NanoUniverse14PreferencePane_changeSequence;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id sub_25B6F8B3C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  swift_beginAccess();

  v3 = sub_25B716830();

  return v3;
}

uint64_t sub_25B6F8BCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = sub_25B716840();
  v7 = *a4;
  swift_beginAccess();
  *(a1 + v7) = v6;
}

id sub_25B6F8DF8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  swift_beginAccess();

  v4 = sub_25B716760();

  return v4;
}

uint64_t sub_25B6F8EEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v7 = sub_25B716770();
  v8 = *a5;
  swift_beginAccess();
  *(a1 + v8) = v7;
}

uint64_t sub_25B6F8F74(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  *(v2 + v4) = a1;
}

uint64_t sub_25B6F8FC8(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  *(v6 + v7) = v5;
}

uint64_t sub_25B6F9214(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12NanoUniverse14PreferencePane_pickerOptions;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_25B6F926C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC12NanoUniverse14PreferencePane_pickerOptions;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t sub_25B6F9434(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_25B6F9494(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC12NanoUniverse14PreferencePane_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_25B6F952C;
}

void sub_25B6F952C(void **a1, char a2)
{
  v3 = *a1;
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

void sub_25B6F95AC(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC12NanoUniverse14PreferencePane_userDefaults;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

void *sub_25B6F960C()
{
  v1 = OBJC_IVAR____TtC12NanoUniverse14PreferencePane_userDefaults;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_25B6F9658(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12NanoUniverse14PreferencePane_userDefaults;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void PreferencePane.init(name:panes:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v6 = sub_25B7167A0();

  v7 = sub_25B716760();
  v8 = sub_25B716760();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA4A208, &unk_25B7381A0);
  v9 = sub_25B716760();
  v10 = sub_25B716760();
  v11 = [v4 initWithName:v6 userDefaults:0 sliders:v7 toggles:v8 pickerOptions:v9 pickerSelections:v10];

  swift_getKeyPath();
  swift_getKeyPath();
  v16 = a3;
  v12 = v11;
  sub_25B7163C0();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25B7163B0();

  if (v16)
  {
    if (v16 >> 62)
    {
      v13 = sub_25B716A60();
      if (v13)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v13 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v13)
      {
LABEL_4:
        if (v13 < 1)
        {
          __break(1u);
          return;
        }

        if ((v16 & 0xC000000000000001) != 0)
        {
          v14 = 0;
          do
          {
            MEMORY[0x25F86B0F0](v14++, v16);
            swift_beginAccess();
            swift_unknownObjectWeakAssign();
            swift_unknownObjectRelease();
          }

          while (v13 != v14);
        }

        else
        {
          v15 = v16 + 32;
          do
          {
            v15 += 8;
            swift_beginAccess();
            swift_unknownObjectWeakAssign();
            --v13;
          }

          while (v13);
        }
      }
    }
  }
}

char *PreferencePane.init(name:userDefaults:sliders:toggles:pickerOptions:pickerSelections:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v28 = a7;
  v29 = a6;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA4A1C0, &qword_25B737D90);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v28 - v15;
  v17 = OBJC_IVAR____TtC12NanoUniverse14PreferencePane__panes;
  v31[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA4A1D0, &qword_25B737DA0);
  sub_25B716370();
  (*(v14 + 32))(&v7[v17], v16, v13);
  *&v7[OBJC_IVAR____TtC12NanoUniverse14PreferencePane_changeSequence] = 0;
  v18 = MEMORY[0x277D84F90];
  *&v7[OBJC_IVAR____TtC12NanoUniverse14PreferencePane_sliders] = MEMORY[0x277D84F90];
  *&v7[OBJC_IVAR____TtC12NanoUniverse14PreferencePane_toggles] = v18;
  *&v7[OBJC_IVAR____TtC12NanoUniverse14PreferencePane_pickersSelections] = v18;
  *&v7[OBJC_IVAR____TtC12NanoUniverse14PreferencePane_pickerOptions] = 0;
  swift_unknownObjectWeakInit();
  v19 = OBJC_IVAR____TtC12NanoUniverse14PreferencePane_userDefaults;
  *&v7[OBJC_IVAR____TtC12NanoUniverse14PreferencePane_userDefaults] = 0;
  swift_beginAccess();
  v33 = a1;
  v34 = a2;
  sub_25B716370();
  swift_endAccess();
  swift_beginAccess();
  v20 = *&v7[v19];
  *&v7[v19] = a3;
  v21 = a3;

  *&v7[OBJC_IVAR____TtC12NanoUniverse14PreferencePane_defaultSliders] = a4;
  *&v7[OBJC_IVAR____TtC12NanoUniverse14PreferencePane_defaultToggles] = a5;
  *&v7[OBJC_IVAR____TtC12NanoUniverse14PreferencePane_defaultPickersSelections] = v28;
  v22 = type metadata accessor for PreferencePane(0);
  v32.receiver = v7;
  v32.super_class = v22;
  v23 = objc_msgSendSuper2(&v32, sel_init);
  sub_25B6FA948(0x704F72656B636970, 0xED0000736E6F6974, v31);
  if (!v31[3])
  {
    sub_25B6F6328(v31);
    goto LABEL_5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA4A1E0, &qword_25B737DB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v26 = OBJC_IVAR____TtC12NanoUniverse14PreferencePane_pickerOptions;
    swift_beginAccess();
    *&v23[v26] = v29;
    goto LABEL_6;
  }

  v24 = v30;
  v25 = OBJC_IVAR____TtC12NanoUniverse14PreferencePane_pickerOptions;
  swift_beginAccess();
  *&v23[v25] = v24;
LABEL_6:

  sub_25B6F9E8C(0);

  return v23;
}

void sub_25B6F9E8C(char a1)
{
  v2 = OBJC_IVAR____TtC12NanoUniverse14PreferencePane_sliders;
  swift_beginAccess();
  *(v1 + v2) = MEMORY[0x277D84F90];

  v3 = OBJC_IVAR____TtC12NanoUniverse14PreferencePane_defaultSliders;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = v4 + 64;
  v6 = 1 << *(v4 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v4 + 64);
  v9 = OBJC_IVAR____TtC12NanoUniverse14PreferencePane_userDefaults;
  v73 = v4;

  v76 = v9;
  swift_beginAccess();
  v10 = 0;
  v11 = (v6 + 63) >> 6;
  v70 = v2;
  if (v8)
  {
    goto LABEL_6;
  }

  while (1)
  {
LABEL_7:
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      goto LABEL_54;
    }

    if (v12 >= v11)
    {
      break;
    }

    v8 = *(v5 + 8 * v12);
    ++v10;
    if (v8)
    {
      while (1)
      {
        v13 = (*(v73 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v8)))));
        v15 = *v13;
        v14 = v13[1];
        swift_beginAccess();
        v16 = *(v1 + v2);
        swift_bridgeObjectRetain_n();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v1 + v2) = v16;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v16 = sub_25B710044(0, *(v16 + 2) + 1, 1, v16);
          *(v1 + v2) = v16;
        }

        v19 = *(v16 + 2);
        v18 = *(v16 + 3);
        if (v19 >= v18 >> 1)
        {
          v16 = sub_25B710044((v18 > 1), v19 + 1, 1, v16);
        }

        v8 &= v8 - 1;
        *(v16 + 2) = v19 + 1;
        v20 = &v16[16 * v19];
        *(v20 + 4) = v15;
        *(v20 + 5) = v14;
        v2 = v70;
        *(v1 + v70) = v16;
        swift_endAccess();
        if ((a1 & 1) != 0 && (v21 = *(v1 + v76)) != 0)
        {
          v22 = v21;
          v23 = sub_25B7167A0();

          [v22 removeObjectForKey_];

          v10 = v12;
          if (!v8)
          {
            goto LABEL_7;
          }
        }

        else
        {

          v10 = v12;
          if (!v8)
          {
            goto LABEL_7;
          }
        }

LABEL_6:
        v12 = v10;
      }
    }
  }

  v24 = OBJC_IVAR____TtC12NanoUniverse14PreferencePane_toggles;
  swift_beginAccess();
  *(v1 + v24) = MEMORY[0x277D84F90];

  v25 = OBJC_IVAR____TtC12NanoUniverse14PreferencePane_defaultToggles;
  swift_beginAccess();
  v26 = *(v1 + v25);
  v29 = *(v26 + 64);
  v28 = v26 + 64;
  v27 = v29;
  v30 = 1 << *(*(v1 + v25) + 32);
  v31 = -1;
  if (v30 < 64)
  {
    v31 = ~(-1 << v30);
  }

  v32 = v31 & v27;
  v74 = *(v1 + v25);

  swift_beginAccess();
  v33 = 0;
  v34 = (v30 + 63) >> 6;
  v71 = v24;
  if (v32)
  {
    goto LABEL_23;
  }

LABEL_24:
  while (1)
  {
    v35 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      break;
    }

    if (v35 >= v34)
    {

      v47 = OBJC_IVAR____TtC12NanoUniverse14PreferencePane_pickersSelections;
      swift_beginAccess();
      *(v1 + v47) = MEMORY[0x277D84F90];

      v48 = OBJC_IVAR____TtC12NanoUniverse14PreferencePane_defaultPickersSelections;
      swift_beginAccess();
      v49 = *(v1 + v48);
      v52 = *(v49 + 64);
      v51 = v49 + 64;
      v50 = v52;
      v53 = 1 << *(*(v1 + v48) + 32);
      v54 = -1;
      if (v53 < 64)
      {
        v54 = ~(-1 << v53);
      }

      v55 = v54 & v50;
      v75 = *(v1 + v48);

      swift_beginAccess();
      v56 = 0;
      v57 = (v53 + 63) >> 6;
      v72 = v47;
      if (v55)
      {
        goto LABEL_40;
      }

LABEL_41:
      while (1)
      {
        v58 = v56 + 1;
        if (__OFADD__(v56, 1))
        {
          goto LABEL_55;
        }

        if (v58 >= v57)
        {

          return;
        }

        v55 = *(v51 + 8 * v58);
        ++v56;
        if (v55)
        {
          while (1)
          {
            v59 = (*(v75 + 48) + ((v58 << 10) | (16 * __clz(__rbit64(v55)))));
            v61 = *v59;
            v60 = v59[1];
            swift_beginAccess();
            v62 = *(v1 + v47);
            swift_bridgeObjectRetain_n();
            v63 = swift_isUniquelyReferenced_nonNull_native();
            *(v1 + v47) = v62;
            if ((v63 & 1) == 0)
            {
              v62 = sub_25B710044(0, *(v62 + 2) + 1, 1, v62);
              *(v1 + v47) = v62;
            }

            v65 = *(v62 + 2);
            v64 = *(v62 + 3);
            if (v65 >= v64 >> 1)
            {
              v62 = sub_25B710044((v64 > 1), v65 + 1, 1, v62);
            }

            v55 &= v55 - 1;
            *(v62 + 2) = v65 + 1;
            v66 = &v62[16 * v65];
            *(v66 + 4) = v61;
            *(v66 + 5) = v60;
            v47 = v72;
            *(v1 + v72) = v62;
            swift_endAccess();
            if ((a1 & 1) != 0 && (v67 = *(v1 + v76)) != 0)
            {
              v68 = v67;
              v69 = sub_25B7167A0();

              [v68 removeObjectForKey_];

              v56 = v58;
              if (!v55)
              {
                goto LABEL_41;
              }
            }

            else
            {

              v56 = v58;
              if (!v55)
              {
                goto LABEL_41;
              }
            }

LABEL_40:
            v58 = v56;
          }
        }
      }
    }

    v32 = *(v28 + 8 * v35);
    ++v33;
    if (v32)
    {
      while (1)
      {
        v36 = (*(v74 + 48) + ((v35 << 10) | (16 * __clz(__rbit64(v32)))));
        v38 = *v36;
        v37 = v36[1];
        swift_beginAccess();
        v39 = *(v1 + v24);
        swift_bridgeObjectRetain_n();
        v40 = swift_isUniquelyReferenced_nonNull_native();
        *(v1 + v24) = v39;
        if ((v40 & 1) == 0)
        {
          v39 = sub_25B710044(0, *(v39 + 2) + 1, 1, v39);
          *(v1 + v24) = v39;
        }

        v42 = *(v39 + 2);
        v41 = *(v39 + 3);
        if (v42 >= v41 >> 1)
        {
          v39 = sub_25B710044((v41 > 1), v42 + 1, 1, v39);
        }

        v32 &= v32 - 1;
        *(v39 + 2) = v42 + 1;
        v43 = &v39[16 * v42];
        *(v43 + 4) = v38;
        *(v43 + 5) = v37;
        v24 = v71;
        *(v1 + v71) = v39;
        swift_endAccess();
        if ((a1 & 1) != 0 && (v44 = *(v1 + v76)) != 0)
        {
          v45 = v44;
          v46 = sub_25B7167A0();

          [v45 removeObjectForKey_];

          v33 = v35;
          if (!v32)
          {
            goto LABEL_24;
          }
        }

        else
        {

          v33 = v35;
          if (!v32)
          {
            goto LABEL_24;
          }
        }

LABEL_23:
        v35 = v33;
      }
    }
  }

LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
}

uint64_t sub_25B6FA524(uint64_t a1, uint64_t a2)
{
  sub_25B6FA948(a1, a2, v10);
  if (v10[3])
  {
    if (swift_dynamicCast())
    {
      return v9;
    }
  }

  else
  {
    sub_25B6F6328(v10);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_25B7163B0();

  v5 = v10[0];
  if (!v10[0])
  {
    return 0;
  }

  if (v10[0] >> 62)
  {
    result = sub_25B716A60();
    if (result)
    {
      goto LABEL_8;
    }

    goto LABEL_13;
  }

  result = *((v10[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_13:

    return 0;
  }

LABEL_8:
  if ((v5 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x25F86B0F0](0, v5);
    goto LABEL_11;
  }

  if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = *(v5 + 32);
LABEL_11:
    v7 = v6;

    v8 = sub_25B6FA524(a1, a2);

    return v8;
  }

  __break(1u);
  return result;
}

uint64_t sub_25B6FA68C(uint64_t a1, uint64_t a2)
{
  sub_25B6FA948(a1, a2, v10);
  if (v10[3])
  {
    if (swift_dynamicCast())
    {
      return v9;
    }
  }

  else
  {
    sub_25B6F6328(v10);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_25B7163B0();

  v5 = v10[0];
  if (!v10[0])
  {
    return 2;
  }

  if (v10[0] >> 62)
  {
    result = sub_25B716A60();
    if (result)
    {
      goto LABEL_8;
    }

    goto LABEL_13;
  }

  result = *((v10[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_13:

    return 2;
  }

LABEL_8:
  if ((v5 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x25F86B0F0](0, v5);
    goto LABEL_11;
  }

  if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = *(v5 + 32);
LABEL_11:
    v7 = v6;

    v8 = sub_25B6FA68C(a1, a2);

    return v8;
  }

  __break(1u);
  return result;
}

uint64_t sub_25B6FA7E4(uint64_t a1, uint64_t a2)
{
  sub_25B6FA948(a1, a2, v10);
  if (v10[3])
  {
    if (swift_dynamicCast())
    {
      return v9;
    }
  }

  else
  {
    sub_25B6F6328(v10);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_25B7163B0();

  v5 = v10[0];
  if (!v10[0])
  {
    return 0;
  }

  if (v10[0] >> 62)
  {
    result = sub_25B716A60();
    if (result)
    {
      goto LABEL_8;
    }

    goto LABEL_13;
  }

  result = *((v10[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_13:

    return 0;
  }

LABEL_8:
  if ((v5 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x25F86B0F0](0, v5);
    goto LABEL_11;
  }

  if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = *(v5 + 32);
LABEL_11:
    v7 = v6;

    v8 = sub_25B6FA7E4(a1, a2);

    return v8;
  }

  __break(1u);
  return result;
}

_OWORD *sub_25B6FA948@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = OBJC_IVAR____TtC12NanoUniverse14PreferencePane_userDefaults;
  swift_beginAccess();
  v9 = *(v4 + v8);
  if (v9)
  {
    v10 = v9;
    v11 = sub_25B7167A0();
    v12 = [v10 valueForKey_];

    if (v12)
    {
      sub_25B7169E0();
      swift_unknownObjectRelease();
    }

    else
    {
      v31 = 0u;
      v32 = 0u;
    }

    v33 = v31;
    v34 = v32;
    if (*(&v32 + 1))
    {
      sub_25B6FB634(&v33, v35);
      return sub_25B6FB634(v35, a3);
    }
  }

  else
  {
    v33 = 0u;
    v34 = 0u;
  }

  sub_25B6F6328(&v33);
  v14 = OBJC_IVAR____TtC12NanoUniverse14PreferencePane_defaultSliders;
  swift_beginAccess();
  v15 = *(v4 + v14);
  if (*(v15 + 16))
  {

    v16 = sub_25B6FB5BC(a1, a2);
    if (v17)
    {
      v18 = *(*(v15 + 56) + 8 * v16);

      *(a3 + 24) = MEMORY[0x277D839F8];
      *a3 = v18;
      return result;
    }
  }

  v19 = OBJC_IVAR____TtC12NanoUniverse14PreferencePane_defaultToggles;
  swift_beginAccess();
  v20 = *(v4 + v19);
  if (*(v20 + 16))
  {

    v21 = sub_25B6FB5BC(a1, a2);
    if (v22)
    {
      v23 = *(*(v20 + 56) + v21);

      *(a3 + 24) = MEMORY[0x277D839B0];
      *a3 = v23;
      return result;
    }
  }

  v24 = OBJC_IVAR____TtC12NanoUniverse14PreferencePane_defaultPickersSelections;
  result = swift_beginAccess();
  v25 = *(v4 + v24);
  if (*(v25 + 16))
  {

    v26 = sub_25B6FB5BC(a1, a2);
    if (v27)
    {
      v28 = (*(v25 + 56) + 16 * v26);
      v30 = *v28;
      v29 = v28[1];

      *(a3 + 24) = MEMORY[0x277D837D0];
      *a3 = v30;
      *(a3 + 8) = v29;
      return result;
    }
  }

  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

uint64_t type metadata accessor for PreferencePane(uint64_t a1)
{
  result = qword_2810C33C0;
  if (!qword_2810C33C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_25B6FAD6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = OBJC_IVAR____TtC12NanoUniverse14PreferencePane_userDefaults;
  swift_beginAccess();
  v7 = *(v3 + v6);
  if (v7)
  {
    sub_25B6FB644(a1, v18);
    v8 = v19;
    if (v19)
    {
      v9 = __swift_project_boxed_opaque_existential_0(v18, v19);
      v10 = *(v8 - 8);
      MEMORY[0x28223BE20](v9);
      v12 = &v18[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v10 + 16))(v12);
      v13 = v7;
      v14 = sub_25B716AE0();
      (*(v10 + 8))(v12, v8);
      __swift_destroy_boxed_opaque_existential_0(v18);
    }

    else
    {
      v13 = v7;
      v14 = 0;
    }

    v15 = sub_25B7167A0();
    [v13 setObject:v14 forKey:v15];

    swift_unknownObjectRelease();
  }

  type metadata accessor for PreferencePane(0);
  sub_25B6FB6B4();
  sub_25B716350();
  sub_25B716360();

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result preferencePaneDidChangeWithPreference_];
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_25B6FB034(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong preferencePaneDidChangeWithPreference_];
    swift_unknownObjectRelease();
  }

  v4 = OBJC_IVAR____TtC12NanoUniverse14PreferencePane_changeSequence;
  result = swift_beginAccess();
  ++*(v1 + v4);
  return result;
}

void *sub_25B6FB18C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25B7163B0();

  if (!v10)
  {
    sub_25B6F9E8C(1);
    goto LABEL_13;
  }

  if (v10 >> 62)
  {
    result = sub_25B716A60();
    v5 = result;
    if (result)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v5 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_4:
      if (v5 < 1)
      {
        __break(1u);
        return result;
      }

      for (i = 0; i != v5; ++i)
      {
        if ((v10 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x25F86B0F0](i);
        }

        else
        {
          v7 = *(v10 + 8 * i + 32);
        }

        v9 = v7;
        sub_25B6FB18C(v7, v8);
      }
    }
  }

LABEL_13:
  type metadata accessor for PreferencePane(0);
  sub_25B6FB6B4();
  sub_25B716350();
  sub_25B716360();

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result preferencePaneDidChangeWithPreference_];
    return swift_unknownObjectRelease();
  }

  return result;
}

id PreferencePane.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PreferencePane.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PreferencePane(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_25B6FB57C@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for PreferencePane(0);
  result = sub_25B716350();
  *a2 = result;
  return result;
}

unint64_t sub_25B6FB5BC(uint64_t a1, uint64_t a2)
{
  sub_25B716B70();
  sub_25B7167F0();
  v4 = sub_25B716B90();

  return sub_25B6FC5D4(a1, a2, v4);
}

_OWORD *sub_25B6FB634(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_25B6FB644(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA4A1D8, &qword_25B737DA8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_25B6FB6B4()
{
  result = qword_27FA4A210;
  if (!qword_27FA4A210)
  {
    type metadata accessor for PreferencePane(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA4A210);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t keypath_get_17Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  *a3 = *(v4 + v5);
}

void sub_25B6FB7BC(uint64_t a1)
{
  sub_25B6FC358();
  if (v1 <= 0x3F)
  {
    sub_25B6FC3A8(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_25B6FC358()
{
  if (!qword_2810C31C0)
  {
    v0 = sub_25B7163D0();
    if (!v1)
    {
      atomic_store(v0, &qword_2810C31C0);
    }
  }
}

void sub_25B6FC3A8(uint64_t a1)
{
  if (!qword_27FA4A218)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA4A1D0, &qword_25B737DA0);
    v1 = sub_25B7163D0();
    if (!v2)
    {
      atomic_store(v1, &qword_27FA4A218);
    }
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_25B6FC454(uint64_t a1)
{
  sub_25B7167D0();
  sub_25B716B70();
  sub_25B7167F0();
  v2 = sub_25B716B90();

  return sub_25B6FC68C(a1, v2);
}

unint64_t sub_25B6FC4E8(uint64_t a1)
{
  v1 = a1;
  sub_25B716B70();
  sub_25B7167F0();

  v2 = sub_25B716B90();

  return sub_25B6FC7B8(v1, v2);
}

unint64_t sub_25B6FC5D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_25B716AF0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_25B6FC68C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_25B7167D0();
      v8 = v7;
      if (v6 == sub_25B7167D0() && v8 == v9)
      {
        break;
      }

      v11 = sub_25B716AF0();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_25B6FC7B8(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v17 = ~v3;
    v5 = 1751607656;
    v6 = a1;
    while (1)
    {
      v7 = *(*(v2 + 48) + v4);
      if (v7 <= 1)
      {
        v8 = *(*(v2 + 48) + v4) ? 1751607656 : 0x6C61746F74;
        v9 = *(*(v2 + 48) + v4) ? 0xE400000000000000 : 0xE500000000000000;
      }

      else if (v7 == 2)
      {
        v9 = 0xE300000000000000;
        v8 = 6580589;
      }

      else
      {
        v8 = v7 == 3 ? 7827308 : 0x6F626D6F63;
        v9 = v7 == 3 ? 0xE300000000000000 : 0xE500000000000000;
      }

      if (v6 == 3)
      {
        v10 = 7827308;
      }

      else
      {
        v10 = 0x6F626D6F63;
      }

      if (v6 == 3)
      {
        v11 = 0xE300000000000000;
      }

      else
      {
        v11 = 0xE500000000000000;
      }

      if (v6 == 2)
      {
        v10 = 6580589;
        v11 = 0xE300000000000000;
      }

      if (v6)
      {
        v12 = 0xE400000000000000;
      }

      else
      {
        v5 = 0x6C61746F74;
        v12 = 0xE500000000000000;
      }

      v13 = v6 <= 1 ? v5 : v10;
      v14 = v6 <= 1 ? v12 : v11;
      if (v8 == v13 && v9 == v14)
      {
        break;
      }

      v15 = sub_25B716AF0();

      if ((v15 & 1) == 0)
      {
        v4 = (v4 + 1) & v17;
        v5 = 1751607656;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_25B6FC97C()
{
  result = sub_25B7167A0();
  qword_27FA4A228 = result;
  return result;
}

id PreferencePaneDoneButtonTappedNotificationName.getter()
{
  if (qword_27FA49FF8 != -1)
  {
    swift_once();
  }

  v1 = qword_27FA4A228;

  return v1;
}

uint64_t sub_25B6FCA10@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25B716470();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA4A230, &qword_25B737FD0);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for PreferencePaneView(0);
  sub_25B701984(v1 + *(v10 + 20), v9, &qword_27FA4A230, &qword_25B737FD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_25B70179C(v9, a1);
  }

  sub_25B7168D0();
  v12 = sub_25B716550();
  sub_25B716310();

  sub_25B716460();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t PreferencePaneView.init(pane:)@<X0>(uint64_t *a2@<X8>)
{
  v3 = *(type metadata accessor for PreferencePaneView(0) + 20);
  *(a2 + v3) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA4A230, &qword_25B737FD0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for PreferencePane(0);
  sub_25B6FB6B4();
  result = sub_25B716410();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t type metadata accessor for PreferencePaneView(uint64_t a1)
{
  result = qword_27FA4A280;
  if (!qword_27FA4A280)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PreferencePaneView.body.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA4A238, &qword_25B737FD8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA4A240, &qword_25B737FE0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA4A248, &qword_25B737FE8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA4A250, &qword_25B737FF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA4A258, &qword_25B737FF8);
  sub_25B701E14(&qword_27FA4A260, &qword_27FA4A258, &qword_25B737FF8, MEMORY[0x277CDE5A0]);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA4A268, &qword_25B738000);
  sub_25B701E14(&qword_27FA4A270, &qword_27FA4A268, &qword_25B738000, MEMORY[0x277CDD7A8]);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return sub_25B716400();
}

uint64_t sub_25B6FCEB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = sub_25B716480();
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x28223BE20](v3);
  v30 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_25B7164C0();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA4A258, &qword_25B737FF8);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v26 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA4A250, &qword_25B737FF0);
  v29 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v26 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA4A240, &qword_25B737FE0);
  v14 = *(v13 - 8);
  v33 = v13;
  v34 = v14;
  MEMORY[0x28223BE20](v13);
  v27 = a1;
  v28 = &v26 - v15;
  v37 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA4A360, &unk_25B7381E8);
  sub_25B701E14(&qword_27FA4A368, &qword_27FA4A360, &unk_25B7381E8, MEMORY[0x277CE14C0]);
  sub_25B716560();
  sub_25B7164B0();
  sub_25B7164A0();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25B7163B0();

  sub_25B716490();

  sub_25B7164A0();
  sub_25B7164E0();
  v16 = sub_25B701E14(&qword_27FA4A260, &qword_27FA4A258, &qword_25B737FF8, MEMORY[0x277CDE5A0]);
  sub_25B7165D0();

  (*(v7 + 8))(v9, v6);
  v18 = v30;
  v17 = v31;
  v19 = v32;
  (*(v31 + 104))(v30, *MEMORY[0x277CDDDC0], v32);
  v38 = v6;
  v39 = v16;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v21 = v28;
  sub_25B7165E0();
  (*(v17 + 8))(v18, v19);
  (*(v29 + 8))(v12, v10);
  v36 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA4A248, &qword_25B737FE8);
  v38 = v10;
  v39 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA4A268, &qword_25B738000);
  v23 = sub_25B701E14(&qword_27FA4A270, &qword_27FA4A268, &qword_25B738000, MEMORY[0x277CDD7A8]);
  v38 = v22;
  v39 = v23;
  swift_getOpaqueTypeConformance2();
  v24 = v33;
  sub_25B7165F0();
  return (*(v34 + 8))(v21, v24);
}

uint64_t sub_25B6FD488@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA4A380, &qword_25B738248);
  v41 = *(v3 - 8);
  v42 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v39 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v38 = &v34 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA4A388, &qword_25B738250);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v34 - v9;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA4A390, &qword_25B738258);
  MEMORY[0x28223BE20](v35);
  v12 = (&v34 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA4A398, &unk_25B738260);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v36 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v34 - v16;
  v37 = a1;
  v18 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25B7163B0();

  if (v43)
  {
    swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA4A3D8, &qword_25B7382D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA4A3B0, &qword_25B7382B8);
    sub_25B701E14(&qword_27FA4A3E0, &qword_27FA4A3D8, &qword_25B7382D0, MEMORY[0x277D83980]);
    sub_25B701890();
    sub_25B716690();
    (*(v8 + 16))(v12, v10, v7);
    swift_storeEnumTagMultiPayload();
    sub_25B70180C();
    sub_25B701928();
    sub_25B7164F0();
    v19 = (*(v8 + 8))(v10, v7);
  }

  else
  {
    type metadata accessor for PreferencePane(0);
    sub_25B6FB6B4();
    v20 = v18;
    *v12 = sub_25B716410();
    v12[1] = v21;
    swift_storeEnumTagMultiPayload();
    sub_25B70180C();
    sub_25B701928();
    v19 = sub_25B7164F0();
  }

  MEMORY[0x28223BE20](v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA4A3C0, &qword_25B7382C0);
  sub_25B701E14(&qword_27FA4A3C8, &qword_27FA4A3C0, &qword_25B7382C0, MEMORY[0x277CDF028]);
  v22 = v38;
  sub_25B7166B0();
  v23 = v17;
  v24 = v17;
  v25 = v36;
  sub_25B701984(v24, v36, &qword_27FA4A398, &unk_25B738260);
  v27 = v41;
  v26 = v42;
  v28 = *(v41 + 16);
  v29 = v39;
  v28(v39, v22, v42);
  v30 = v40;
  sub_25B701984(v25, v40, &qword_27FA4A398, &unk_25B738260);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA4A3D0, &qword_25B7382C8);
  v28((v30 + *(v31 + 48)), v29, v26);
  v32 = *(v27 + 8);
  v32(v22, v26);
  sub_25B7019EC(v23, &qword_27FA4A398, &unk_25B738260);
  v32(v29, v26);
  return sub_25B7019EC(v25, &qword_27FA4A398, &unk_25B738260);
}

uint64_t sub_25B6FDA50(uint64_t *a1)
{
  v1 = sub_25B7164C0();
  MEMORY[0x28223BE20](v1 - 8);
  sub_25B7164B0();
  sub_25B7164A0();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25B7163B0();

  sub_25B716490();

  sub_25B7164A0();
  sub_25B7164E0();
  sub_25B701928();
  return sub_25B7166A0();
}

uint64_t sub_25B6FDBB0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for PreferencePane(0);
  sub_25B6FB6B4();
  v4 = a1;
  result = sub_25B716410();
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_25B6FDC04(uint64_t a1)
{
  v2 = type metadata accessor for PreferencePaneView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_25B701674(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_25B7016D8(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA4A3E8, &qword_25B7382D8);
  sub_25B701E14(&qword_27FA4A3F0, &qword_27FA4A3E8, &qword_25B7382D8, MEMORY[0x277CDEFF0]);
  return sub_25B716610();
}

uint64_t sub_25B6FDD70()
{
  v0 = sub_25B7164D0();

  return MEMORY[0x282130010](v0);
}

uint64_t sub_25B6FDDCC(uint64_t a1)
{
  v2 = sub_25B716530();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA4A268, &qword_25B738000);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  sub_25B716520();
  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA4A370, &qword_25B738240);
  sub_25B701E14(&qword_27FA4A378, &qword_27FA4A370, &qword_25B738240, MEMORY[0x277CDF028]);
  sub_25B7163F0();
  v7 = sub_25B701E14(&qword_27FA4A270, &qword_27FA4A268, &qword_25B738000, MEMORY[0x277CDD7A8]);
  MEMORY[0x25F86ABF0](v6, v3, v7);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_25B6FDFB8(uint64_t a1)
{
  v2 = type metadata accessor for PreferencePaneView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_25B7164D0();
  sub_25B701674(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_25B7016D8(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  return sub_25B716620();
}

void sub_25B6FE0FC()
{
  v0 = sub_25B716440();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA4A2A0, &qword_25B738098);
  MEMORY[0x28223BE20](v1);
  v3 = &v5 - v2;
  sub_25B6FCA10(&v5 - v2);
  MEMORY[0x25F86AD10](v1);
  sub_25B716430();
  sub_25B716670();
  sub_25B7019EC(v3, &qword_27FA4A2A0, &qword_25B738098);
  v4 = [objc_opt_self() defaultCenter];
  if (qword_27FA49FF8 != -1)
  {
    swift_once();
  }

  [v4 postNotificationName:qword_27FA4A228 object:0];
}

uint64_t sub_25B6FE284()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA4A238, &qword_25B737FD8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA4A240, &qword_25B737FE0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA4A248, &qword_25B737FE8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA4A250, &qword_25B737FF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA4A258, &qword_25B737FF8);
  sub_25B701E14(&qword_27FA4A260, &qword_27FA4A258, &qword_25B737FF8, MEMORY[0x277CDE5A0]);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA4A268, &qword_25B738000);
  sub_25B701E14(&qword_27FA4A270, &qword_27FA4A268, &qword_25B738000, MEMORY[0x277CDD7A8]);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return sub_25B716400();
}

uint64_t sub_25B6FE478@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v47 = a3;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA4A2B8, &qword_25B738140);
  v51 = *(v46 - 8);
  v5 = MEMORY[0x28223BE20](v46);
  v48 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v50 = &v36 - v7;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA4A2C0, &qword_25B738148);
  v41 = *(v45 - 8);
  v8 = v41;
  v9 = MEMORY[0x28223BE20](v45);
  v49 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v36 - v11;
  v40 = &v36 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA4A2C8, &qword_25B738150);
  v44 = *(v13 - 8);
  v14 = v44;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v36 - v18;
  v56 = a1;
  v57 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA4A2D0, &qword_25B738158);
  sub_25B700534();
  v43 = v19;
  sub_25B7166B0();
  v54 = a1;
  v55 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA4A2F0, &qword_25B738168);
  sub_25B7005EC();
  sub_25B7166B0();
  v52 = a1;
  v53 = a2;
  sub_25B7006A4();
  v20 = v50;
  sub_25B7166B0();
  v21 = *(v14 + 16);
  v42 = v17;
  v39 = v13;
  v21(v17, v19, v13);
  v38 = *(v8 + 16);
  v22 = v49;
  v23 = v45;
  v38(v49, v12, v45);
  v37 = *(v51 + 16);
  v24 = v20;
  v25 = v46;
  v37(v48, v24, v46);
  v26 = v47;
  v21(v47, v17, v13);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA4A318, &unk_25B738178);
  v38(&v26[*(v27 + 48)], v22, v23);
  v28 = v48;
  v37(&v26[*(v27 + 64)], v48, v25);
  v29 = *(v51 + 8);
  v30 = v25;
  v29(v50, v25);
  v31 = *(v41 + 8);
  v32 = v23;
  v31(v40, v23);
  v33 = *(v44 + 8);
  v34 = v39;
  v33(v43, v39);
  v29(v28, v30);
  v31(v49, v32);
  return (v33)(v42, v34);
}

uint64_t sub_25B6FE974(uint64_t a1, char *a2)
{
  v4 = OBJC_IVAR____TtC12NanoUniverse14PreferencePane_sliders;
  swift_beginAccess();
  v8 = *&a2[v4];
  swift_bridgeObjectRetain_n();
  sub_25B7006F8(&v8);

  swift_getKeyPath();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA4A208, &unk_25B7381A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA4A2E8, &qword_25B738160);
  sub_25B701E14(&qword_27FA4A320, &qword_27FA4A208, &unk_25B7381A0, MEMORY[0x277D83980]);
  sub_25B701E14(&qword_27FA4A2E0, &qword_27FA4A2E8, &qword_25B738160, MEMORY[0x277CE14C0]);
  return sub_25B716690();
}

uint64_t sub_25B6FEB30@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v47 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA4A330, &qword_25B7381C0);
  v45 = *(v7 - 8);
  v46 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v44 = v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v48 = v43 - v10;
  v11 = sub_25B7164C0();
  MEMORY[0x28223BE20](v11 - 8);
  v13 = *a1;
  v12 = a1[1];
  sub_25B716880();
  v14 = a3;

  v15 = sub_25B716870();
  v16 = swift_allocObject();
  v17 = MEMORY[0x277D85700];
  v16[2] = v15;
  v16[3] = v17;
  v16[4] = a2;
  v16[5] = v14;
  v16[6] = v13;
  v16[7] = v12;
  v18 = v14;

  v19 = sub_25B716870();
  v20 = swift_allocObject();
  v20[2] = v19;
  v20[3] = v17;
  v20[4] = a2;
  v20[5] = v18;
  v20[6] = v13;
  v20[7] = v12;
  v21 = MEMORY[0x277D839F8];
  sub_25B716680();
  v22 = v50;
  v23 = v51;
  v24 = v52;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA4A338, &qword_25B7381C8);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_25B737F80;
  v50 = v22;
  v51 = v23;
  v52 = v24;
  v26 = MEMORY[0x277D83A80];
  *(v25 + 56) = v21;
  *(v25 + 64) = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA4A340, &qword_25B7381D0);
  MEMORY[0x25F86AD10](v27);
  sub_25B7167E0();
  sub_25B7164B0();
  sub_25B7164A0();
  sub_25B716490();
  sub_25B7164A0();
  sub_25B716490();

  sub_25B7164A0();
  sub_25B7164E0();
  v28 = sub_25B716570();
  v30 = v29;
  LOBYTE(v25) = v31;
  v33 = v32;
  v43[1] = v23;
  v43[2] = v22;
  v50 = v22;
  v51 = v23;
  v52 = v24;
  v49 = xmmword_25B737F90;
  sub_25B7015E8();

  v34 = v48;
  sub_25B716640();
  v36 = v44;
  v35 = v45;
  v37 = *(v45 + 16);
  v38 = v46;
  v37(v44, v34, v46);
  v39 = v47;
  *v47 = v28;
  v39[1] = v30;
  LOBYTE(v25) = v25 & 1;
  *(v39 + 16) = v25;
  v39[3] = v33;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA4A350, &qword_25B7381D8);
  v37(v39 + *(v40 + 48), v36, v38);
  sub_25B70163C(v28, v30, v25);

  v41 = *(v35 + 8);
  v41(v48, v38);
  v41(v36, v38);
  sub_25B70164C(v28, v30, v25);
}

double *sub_25B6FEFB0(double *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = *result;
  if ((*result & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v9 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v9 < 9.22337204e18)
  {
    v10[6] = v7;
    v10[7] = v8;
    v10[3] = MEMORY[0x277D83B88];
    v10[0] = v9;
    sub_25B6FAD6C(v10, a6, a7);
    return sub_25B7019EC(v10, &qword_27FA4A1D8, &qword_25B737DA8);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_25B6FF060(uint64_t a1, char *a2)
{
  v4 = OBJC_IVAR____TtC12NanoUniverse14PreferencePane_toggles;
  swift_beginAccess();
  v8 = *&a2[v4];
  swift_bridgeObjectRetain_n();
  sub_25B7006F8(&v8);

  swift_getKeyPath();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA4A208, &unk_25B7381A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA4A308, &qword_25B738170);
  sub_25B701E14(&qword_27FA4A320, &qword_27FA4A208, &unk_25B7381A0, MEMORY[0x277D83980]);
  sub_25B701E14(&qword_27FA4A300, &qword_27FA4A308, &qword_25B738170, MEMORY[0x277CDF068]);
  return sub_25B716690();
}

uint64_t sub_25B6FF21C(uint64_t *a1, uint64_t a2, void *a3)
{
  v6 = *a1;
  v5 = a1[1];
  sub_25B716880();
  v7 = a3;

  v8 = sub_25B716870();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = a2;
  v9[5] = v7;
  v9[6] = v6;
  v9[7] = v5;
  v11 = v7;

  v12 = sub_25B716870();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = v10;
  v13[4] = a2;
  v13[5] = v11;
  v13[6] = v6;
  v13[7] = v5;
  sub_25B716680();
  return sub_25B716650();
}

uint64_t sub_25B6FF374@<X0>(uint64_t a3@<X8>)
{
  v4 = sub_25B7164C0();
  MEMORY[0x28223BE20](v4 - 8);
  sub_25B7164B0();
  sub_25B7164A0();
  sub_25B716490();
  sub_25B7164A0();
  sub_25B7164E0();
  result = sub_25B716570();
  *a3 = result;
  *(a3 + 8) = v6;
  *(a3 + 16) = v7 & 1;
  *(a3 + 24) = v8;
  return result;
}

uint64_t sub_25B6FF468@<X0>(void *a1@<X1>, uint64_t *a2@<X8>)
{
  type metadata accessor for PreferencePane(0);
  sub_25B6FB6B4();
  v4 = a1;
  result = sub_25B716410();
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_25B6FF4C4(uint64_t a1, char *a2)
{
  v4 = OBJC_IVAR____TtC12NanoUniverse14PreferencePane_pickersSelections;
  swift_beginAccess();
  v8 = *&a2[v4];
  swift_bridgeObjectRetain_n();
  sub_25B7006F8(&v8);

  swift_getKeyPath();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA4A208, &unk_25B7381A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA4A408, &qword_25B738358);
  sub_25B701E14(&qword_27FA4A320, &qword_27FA4A208, &unk_25B7381A0, MEMORY[0x277D83980]);
  sub_25B701CAC();
  return sub_25B716690();
}

uint64_t sub_25B6FF64C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v88 = a4;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA4A440, &qword_25B738370);
  MEMORY[0x28223BE20](v84);
  v77 = (&v64 - v7);
  v73 = sub_25B716510();
  v72 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v71 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA4A448, &qword_25B738378);
  v75 = *(v76 - 8);
  v9 = MEMORY[0x28223BE20](v76);
  v74 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v80 = &v64 - v11;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA4A450, &qword_25B738380);
  MEMORY[0x28223BE20](v81);
  v83 = &v64 - v12;
  v13 = sub_25B7164C0();
  MEMORY[0x28223BE20](v13 - 8);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA4A430, &qword_25B738368);
  v79 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v78 = &v64 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA4A420, &qword_25B738360);
  v86 = *(v15 - 8);
  v87 = v15;
  MEMORY[0x28223BE20](v15);
  v82 = &v64 - v16;
  v17 = *a1;
  v18 = a1[1];
  sub_25B716880();
  v19 = a3;

  v20 = sub_25B716870();
  v21 = swift_allocObject();
  v22 = MEMORY[0x277D85700];
  v21[2] = v20;
  v21[3] = v22;
  v21[4] = a2;
  v21[5] = v19;
  v21[6] = v17;
  v21[7] = v18;
  v23 = v19;

  v24 = sub_25B716870();
  v25 = swift_allocObject();
  v25[2] = v24;
  v25[3] = v22;
  v25[4] = a2;
  v25[5] = v23;
  v25[6] = v17;
  v25[7] = v18;
  sub_25B716680();
  v27 = v89;
  v26 = v90;
  v28 = v91;
  v29 = v92;
  v30 = OBJC_IVAR____TtC12NanoUniverse14PreferencePane_pickerOptions;
  result = swift_beginAccess();
  v32 = *&v23[v30];
  if (v32)
  {
    if (*(v32 + 16))
    {

      v33 = sub_25B6FB5BC(v17, v18);
      if (v34)
      {
        v70 = v26;
        v35 = *(*(v32 + 56) + 8 * v33);

        v36 = *(v35 + 16);
        sub_25B7164B0();
        sub_25B7164A0();
        sub_25B716490();
        sub_25B7164A0();
        v37 = sub_25B7164E0();
        if (v36 <= 4)
        {
          v67 = sub_25B716570();
          v66 = v45;
          v68 = v46;
          v69 = v47;
          sub_25B7164B0();
          sub_25B7164A0();
          sub_25B716490();
          sub_25B7164A0();
          v65 = sub_25B7164E0();
          v89 = v27;
          v90 = v70;
          v91 = v28;
          v92 = v29;
          MEMORY[0x28223BE20](v65);

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA4A458, &qword_25B738388);
          sub_25B701F28();
          v48 = v78;
          sub_25B716630();

          v49 = v71;
          sub_25B716500();
          v65 = sub_25B701E14(&qword_27FA4A428, &qword_27FA4A430, &qword_25B738368, MEMORY[0x277CDF038]);
          v50 = v80;
          v51 = v85;
          v52 = v73;
          sub_25B7165B0();
          (*(v72 + 8))(v49, v52);
          (*(v79 + 8))(v48, v51);
          v53 = v75;
          v54 = *(v75 + 16);
          v55 = v74;
          v79 = v27;
          v56 = v76;
          v54(v74, v50, v76);
          v57 = v77;
          v58 = v67;
          v78 = v29;
          v59 = v66;
          *v77 = v67;
          *(v57 + 8) = v59;
          v60 = v68 & 1;
          *(v57 + 16) = v68 & 1;
          *(v57 + 24) = v69;
          v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA4A468, &qword_25B738390);
          v54((v57 + *(v61 + 48)), v55, v56);
          sub_25B70163C(v58, v59, v60);

          sub_25B70163C(v58, v59, v60);
          v62 = *(v53 + 8);

          v62(v55, v56);
          sub_25B70164C(v58, v59, v60);

          sub_25B6D65D8(v57, v83);
          swift_storeEnumTagMultiPayload();
          sub_25B701E14(&qword_27FA4A438, &qword_27FA4A440, &qword_25B738370, MEMORY[0x277CE14C0]);
          v42 = v82;
          sub_25B7164F0();
          sub_25B70164C(v58, v59, v60);

          sub_25B6D6648(v57);
          v62(v80, v56);
        }

        else
        {
          v89 = v27;
          v90 = v70;
          v91 = v28;
          v92 = v29;
          MEMORY[0x28223BE20](v37);
          v80 = v38;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA4A458, &qword_25B738388);
          sub_25B701F28();
          v39 = v78;
          sub_25B716630();

          v40 = v79;
          v41 = v85;
          (*(v79 + 16))(v83, v39, v85);
          swift_storeEnumTagMultiPayload();
          sub_25B701E14(&qword_27FA4A428, &qword_27FA4A430, &qword_25B738368, MEMORY[0x277CDF038]);
          sub_25B701E14(&qword_27FA4A438, &qword_27FA4A440, &qword_25B738370, MEMORY[0x277CE14C0]);
          v42 = v82;
          sub_25B7164F0();

          (*(v40 + 8))(v39, v41);
        }

        v63 = v88;
        sub_25B6D66B0(v42, v88);
        v44 = v63;
        v43 = 0;
        return (*(v86 + 56))(v44, v43, 1, v87);
      }
    }

    v43 = 1;
    v44 = v88;
    return (*(v86 + 56))(v44, v43, 1, v87);
  }

  __break(1u);
  return result;
}

uint64_t sub_25B70018C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *a1;
  v9 = a1[1];
  v12[3] = MEMORY[0x277D837D0];
  v12[0] = v10;
  v12[1] = v9;

  sub_25B6FAD6C(v12, a6, a7);
  return sub_25B7019EC(v12, &qword_27FA4A1D8, &qword_25B737DA8);
}

uint64_t sub_25B700208(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA4A208, &unk_25B7381A0);
  sub_25B701E14(&qword_27FA4A320, &qword_27FA4A208, &unk_25B7381A0, MEMORY[0x277D83980]);
  return sub_25B716690();
}

uint64_t sub_25B7002E8@<X0>(uint64_t a3@<X8>)
{
  sub_25B701FA4();

  result = sub_25B716580();
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6 & 1;
  *(a3 + 24) = v7;
  return result;
}

void sub_25B7003A8(uint64_t a1)
{
  sub_25B70042C(319);
  if (v1 <= 0x3F)
  {
    sub_25B700490(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_25B70042C(uint64_t a1)
{
  if (!qword_27FA4A290)
  {
    type metadata accessor for PreferencePane(255);
    sub_25B6FB6B4();
    v1 = sub_25B716420();
    if (!v2)
    {
      atomic_store(v1, &qword_27FA4A290);
    }
  }
}

void sub_25B700490(uint64_t a1)
{
  if (!qword_27FA4A298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA4A2A0, &qword_25B738098);
    v1 = sub_25B7163E0();
    if (!v2)
    {
      atomic_store(v1, &qword_27FA4A298);
    }
  }
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

unint64_t sub_25B700534()
{
  result = qword_27FA4A2D8;
  if (!qword_27FA4A2D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA4A2D0, &qword_25B738158);
    sub_25B701E14(&qword_27FA4A2E0, &qword_27FA4A2E8, &qword_25B738160, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA4A2D8);
  }

  return result;
}

unint64_t sub_25B7005EC()
{
  result = qword_27FA4A2F8;
  if (!qword_27FA4A2F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA4A2F0, &qword_25B738168);
    sub_25B701E14(&qword_27FA4A300, &qword_27FA4A308, &qword_25B738170, MEMORY[0x277CDF068]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA4A2F8);
  }

  return result;
}

unint64_t sub_25B7006A4()
{
  result = qword_27FA4A310;
  if (!qword_27FA4A310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA4A310);
  }

  return result;
}

uint64_t sub_25B7006F8(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_25B701580(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_25B700810(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_25B70076C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25B6FA68C(*(v1 + 48), *(v1 + 56));
  *a1 = result & 1;
  return result;
}

uint64_t sub_25B7007A4(char *a1)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  v4 = *a1;
  v7 = MEMORY[0x277D839B0];
  v6[0] = v4;
  sub_25B6FAD6C(v6, v2, v3);
  return sub_25B7019EC(v6, &qword_27FA4A1D8, &qword_25B737DA8);
}

uint64_t sub_25B700810(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_25B716AC0();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_25B716860();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_25B7009D8(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_25B700908(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_25B700908(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    v10 = *v9;
    v11 = v9[1];
    v12 = v8;
    v13 = v7;
    while (1)
    {
      result = *(v13 - 2);
      v14 = result == v10 && *(v13 - 1) == v11;
      if (v14 || (result = sub_25B716AF0(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v10 = *v13;
      v11 = v13[1];
      *v13 = *(v13 - 1);
      *(v13 - 1) = v11;
      *(v13 - 2) = v10;
      v13 -= 2;
      if (__CFADD__(v12++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_25B7009D8(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_25B701268(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_25B700FB4((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      v11 = (*a3 + 16 * v9);
      result = *v11;
      if (*v11 == *v10 && v11[1] == v10[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_25B716AF0();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          result = *(v14 - 1);
          if (result == v14[1] && *v14 == v16)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_25B716AF0();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_25B70127C(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_25B70127C((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_25B700FB4((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_25B701268(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_25B7011DC(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = v9 + a4;
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = *(v36 - 2) == v33 && *(v36 - 1) == v34;
    if (v37 || (result = sub_25B716AF0(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_25B700FB4(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v4 == *v6 && *(v4 + 1) == *(v6 + 1);
      if (!v16 && (sub_25B716AF0() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = *(v6 - 2) == v19 && *(v6 - 1) == v20;
      if (!v21 && (sub_25B716AF0() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_25B7011DC(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_25B701268(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_25B70127C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA4A4F0, &qword_25B7381B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_25B701380(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA4A328, &qword_25B7381B8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_25B70148C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA4A358, &qword_25B7381E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_25B70159C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25B6FA524(*(v1 + 48), *(v1 + 56));
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = result;
  }

  *a1 = v5;
  return result;
}

unint64_t sub_25B7015E8()
{
  result = qword_27FA4A348;
  if (!qword_27FA4A348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA4A348);
  }

  return result;
}

uint64_t sub_25B70163C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_25B70164C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_25B701674(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PreferencePaneView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25B7016D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PreferencePaneView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_25B70173C()
{
  type metadata accessor for PreferencePaneView(0);

  sub_25B6FE0FC();
}

uint64_t sub_25B70179C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA4A2A0, &qword_25B738098);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_25B70180C()
{
  result = qword_27FA4A3A0;
  if (!qword_27FA4A3A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA4A388, &qword_25B738250);
    sub_25B701890();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA4A3A0);
  }

  return result;
}

unint64_t sub_25B701890()
{
  result = qword_27FA4A3A8;
  if (!qword_27FA4A3A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA4A3B0, &qword_25B7382B8);
    sub_25B701928();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA4A3A8);
  }

  return result;
}

unint64_t sub_25B701928()
{
  result = qword_27FA4A3B8;
  if (!qword_27FA4A3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA4A3B8);
  }

  return result;
}

uint64_t sub_25B701984(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_25B7019EC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t objectdestroy_36Tm()
{
  v1 = (type metadata accessor for PreferencePaneView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v0 + v3 + v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA4A230, &qword_25B737FD0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA4A2A0, &qword_25B738098) + 32);
    v8 = sub_25B716440();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_25B701BF4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25B701C3C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_25B701CAC()
{
  result = qword_27FA4A410;
  if (!qword_27FA4A410)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA4A408, &qword_25B738358);
    sub_25B701D30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA4A410);
  }

  return result;
}

unint64_t sub_25B701D30()
{
  result = qword_27FA4A418;
  if (!qword_27FA4A418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA4A420, &qword_25B738360);
    sub_25B701E14(&qword_27FA4A428, &qword_27FA4A430, &qword_25B738368, MEMORY[0x277CDF038]);
    sub_25B701E14(&qword_27FA4A438, &qword_27FA4A440, &qword_25B738370, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA4A418);
  }

  return result;
}

uint64_t sub_25B701E14(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25B701E5C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25B6FA7E4(*(v1 + 48), *(v1 + 56));
  if (v4)
  {
    v5 = result;
  }

  else
  {
    v5 = 0;
  }

  v6 = 0xE000000000000000;
  if (v4)
  {
    v6 = v4;
  }

  *a1 = v5;
  a1[1] = v6;
  return result;
}

uint64_t objectdestroy_15Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

unint64_t sub_25B701F28()
{
  result = qword_27FA4A460;
  if (!qword_27FA4A460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA4A458, &qword_25B738388);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA4A460);
  }

  return result;
}

unint64_t sub_25B701FA4()
{
  result = qword_27FA4A470;
  if (!qword_27FA4A470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA4A470);
  }

  return result;
}

unint64_t sub_25B701FF8()
{
  result = qword_27FA4A478;
  if (!qword_27FA4A478)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27FA4A480, &qword_25B738398);
    sub_25B701CAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA4A478);
  }

  return result;
}

uint64_t sub_25B702098()
{
  result = sub_25B7167A0();
  qword_2810C3250 = result;
  return result;
}

id CloudCoverExpiredNotification.getter()
{
  if (qword_2810C3240 != -1)
  {
    swift_once();
  }

  v1 = qword_2810C3250;

  return v1;
}

uint64_t sub_25B702238(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12NanoUniverse22AegirCloudCoverService_fileConverter;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_25B702290(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC12NanoUniverse22AegirCloudCoverService_fileConverter;
  swift_beginAccess();
  *(v3 + v4) = v2;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t sub_25B7023A0()
{
  v1 = OBJC_IVAR____TtC12NanoUniverse22AegirCloudCoverService_disableFetch;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_25B702438(char a1)
{
  v3 = OBJC_IVAR____TtC12NanoUniverse22AegirCloudCoverService_disableFetch;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void sub_25B7024E8(uint64_t a1@<X8>)
{
  v5 = [objc_opt_self() defaultManager];
  v2 = [v5 URLsForDirectory:13 inDomains:1];
  v3 = sub_25B716250();
  v4 = sub_25B716840();

  if (*(v4 + 16))
  {
    (*(*(v3 - 8) + 16))(a1, v4 + ((*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80)), v3);

    sub_25B716200();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_25B702720@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12NanoUniverse22AegirCloudCoverService_directory;
  swift_beginAccess();
  v4 = sub_25B716250();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_25B702954(uint64_t a1)
{
  v3 = sub_25B716250();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = OBJC_IVAR____TtC12NanoUniverse22AegirCloudCoverService_directory;
  swift_beginAccess();
  (*(v4 + 16))(v6, v1 + v7, v3);
  swift_beginAccess();
  (*(v4 + 24))(v1 + v7, a1, v3);
  swift_endAccess();
  sub_25B702CE0(v6);
  v8 = *(v4 + 8);
  v8(a1, v3);
  return (v8)(v6, v3);
}

uint64_t sub_25B702AB0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12NanoUniverse22AegirCloudCoverService_directory;
  swift_beginAccess();
  v5 = sub_25B716250();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_25B702B3C(uint64_t a1, uint64_t *a2)
{
  v4 = sub_25B716250();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v16[-v9];
  v11 = *(v5 + 16);
  v11(&v16[-v9], a1, v4);
  v12 = *a2;
  v13 = OBJC_IVAR____TtC12NanoUniverse22AegirCloudCoverService_directory;
  swift_beginAccess();
  v11(v8, v12 + v13, v4);
  swift_beginAccess();
  (*(v5 + 24))(v12 + v13, v10, v4);
  swift_endAccess();
  sub_25B702CE0(v8);
  v14 = *(v5 + 8);
  v14(v8, v4);
  return (v14)(v10, v4);
}

uint64_t sub_25B702CE0(uint64_t a1)
{
  v2 = v1;
  v3 = sub_25B7166D0();
  v20 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_25B7166F0();
  v6 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25B716250();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC12NanoUniverse22AegirCloudCoverService_directory;
  swift_beginAccess();
  (*(v10 + 16))(v12, v1 + v13, v9);
  sub_25B715538(&unk_2810C3420, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
  v14 = sub_25B716790();
  result = (*(v10 + 8))(v12, v9);
  if ((v14 & 1) == 0)
  {
    v16 = swift_allocObject();
    *(v16 + 16) = v2;
    aBlock[4] = sub_25B715580;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_25B7157A8;
    aBlock[3] = &block_descriptor_197;
    v17 = _Block_copy(aBlock);
    v18 = v2;
    sub_25B7166E0();
    v21 = MEMORY[0x277D84F90];
    sub_25B715538(&qword_2810C31B8, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA4A4B0, &qword_25B7383D8);
    sub_25B701E14(&unk_2810C31A8, &unk_27FA4A4B0, &qword_25B7383D8, MEMORY[0x277D83970]);
    sub_25B7169F0();
    MEMORY[0x25F86B000](0, v8, v5, v17);
    _Block_release(v17);
    (*(v20 + 8))(v5, v3);
    (*(v6 + 8))(v8, v19);
  }

  return result;
}

void sub_25B7030D8()
{
  if (sub_25B7061B0())
  {
    if (qword_2810C3220 != -1)
    {
      swift_once();
    }

    v0 = sub_25B716340();
    __swift_project_value_buffer(v0, qword_2810C3228);
    v1 = sub_25B716320();
    v2 = sub_25B7168E0();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&dword_25B6D4000, v1, v2, "Directory changed and files are expired. It will post expirated Notification.", v3, 2u);
      MEMORY[0x25F86BDB0](v3, -1, -1);
    }

    v4 = [objc_opt_self() defaultCenter];
    v5 = v4;
    if (qword_2810C3240 != -1)
    {
      swift_once();
      v4 = v5;
    }

    [v4 postNotificationName:qword_2810C3250 object:0];
  }
}

void (*sub_25B70325C(uint64_t *a1))(char **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x90uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = sub_25B716250();
  v5[10] = v6;
  v7 = *(v6 - 8);
  v8 = v7;
  v5[11] = v7;
  v9 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v9);
    v10 = malloc(v9);
  }

  v11 = v10;
  v12 = OBJC_IVAR____TtC12NanoUniverse22AegirCloudCoverService_directory;
  v5[14] = v10;
  v5[15] = v12;
  swift_beginAccess();
  v13 = *(v8 + 16);
  v5[16] = v13;
  v5[17] = (v8 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v13(v11, v1 + v12, v6);
  return sub_25B7033D0;
}

void sub_25B7033D0(char **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 16);
  v4 = *(*a1 + 14);
  v5 = *(*a1 + 15);
  v6 = *(*a1 + 12);
  v7 = *(*a1 + 13);
  v8 = *(*a1 + 10);
  v9 = *(*a1 + 11);
  v10 = *(*a1 + 9);
  if (a2)
  {
    v3(*(*a1 + 13), v4, v8);
    v3(v6, (v10 + v5), v8);
    swift_beginAccess();
    (*(v9 + 24))(v10 + v5, v7, v8);
    swift_endAccess();
    sub_25B702CE0(v6);
    v11 = *(v9 + 8);
    v11(v6, v8);
  }

  else
  {
    v3(*(*a1 + 13), (v10 + v5), v8);
    swift_beginAccess();
    (*(v9 + 24))(v10 + v5, v4, v8);
    swift_endAccess();
    sub_25B702CE0(v7);
    v11 = *(v9 + 8);
  }

  v11(v7, v8);
  v11(v4, v8);
  free(v4);
  free(v7);
  free(v6);

  free(v2);
}

uint64_t static AegirCloudCoverService.Configuration.devEnvironment.getter@<X0>(uint64_t *a1@<X8>)
{
  static AegirCloudCoverService.Configuration.prodEnvironment.getter(a1);

  *a1 = 0xD00000000000002ALL;
  a1[1] = 0x800000025B73A360;
  return result;
}

void static AegirCloudCoverService.Configuration.prodEnvironment.getter(uint64_t *a1@<X8>)
{
  v2 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v3 = sub_25B7167A0();
  v4 = [v2 initWithSuiteName_];

  if (!v4)
  {
    v10 = 0x800000025B73A3B0;
    v11 = 0x800000025B73A3D0;
    v8 = 0xD00000000000001ELL;
    v12 = 0xD000000000000019;
LABEL_22:

    v24 = 0x800000025B73A3F0;
    v22 = 0xD000000000000020;
    goto LABEL_23;
  }

  v5 = v4;
  v6 = sub_25B7167A0();
  v7 = [v5 stringForKey_];

  if (v7)
  {
    v8 = sub_25B7167D0();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v13 = v5;
  v14 = sub_25B7167A0();
  v15 = [v13 stringForKey_];

  if (v15)
  {
    v16 = sub_25B7167D0();
    v18 = v17;
  }

  else
  {
    v16 = 0;
    v18 = 0;
  }

  v19 = v13;
  v20 = sub_25B7167A0();
  v21 = [v19 stringForKey_];

  if (v21)
  {
    v22 = sub_25B7167D0();
    v24 = v23;
  }

  else
  {
    v22 = 0;
    v24 = 0;
  }

  if (!v10)
  {
    v8 = 0xD00000000000001ELL;
    v10 = 0x800000025B73A3B0;
  }

  if (v18)
  {
    v12 = v16;
  }

  else
  {
    v12 = 0xD000000000000019;
  }

  if (v18)
  {
    v11 = v18;
  }

  else
  {
    v11 = 0x800000025B73A3D0;
  }

  if (!v24)
  {
    goto LABEL_22;
  }

LABEL_23:
  *a1 = v8;
  a1[1] = v10;
  a1[2] = v12;
  a1[3] = v11;
  a1[4] = v22;
  a1[5] = v24;
}

uint64_t AegirCloudCoverService.CloudLevel.description.getter()
{
  v1 = *v0;
  v2 = 0x6C61746F74;
  v3 = 6580589;
  v4 = 7827308;
  if (v1 != 3)
  {
    v4 = 0x6F626D6F63;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1751607656;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_25B7038C4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v4 = result;
  if (result == 0xD000000000000012 && 0x800000025B73A490 == a2 || (result = sub_25B716AF0(), (result & 1) != 0))
  {
    v6 = 3;
  }

  else if (v4 == 0xD000000000000012 && 0x800000025B73A4B0 == a2 || (result = sub_25B716AF0(), (result & 1) != 0))
  {
    v6 = 2;
  }

  else if (v4 == 0xD000000000000013 && 0x800000025B73A4D0 == a2 || (result = sub_25B716AF0(), (result & 1) != 0))
  {
    v6 = 1;
  }

  else
  {
    v6 = 4;
    if (v4 != 0xD000000000000014 || 0x800000025B73A7C0 != a2)
    {
      result = sub_25B716AF0();
      if (result)
      {
        v6 = 4;
      }

      else
      {
        v6 = 5;
      }
    }
  }

  *a3 = v6;
  return result;
}

uint64_t sub_25B703A08()
{
  result = sub_25B703A28();
  qword_2810C3638 = result;
  return result;
}

uint64_t sub_25B703A28()
{
  v0 = 0;
  v1 = MEMORY[0x277D84F90];
  do
  {
    v2 = byte_286CF6660[v0 + 32];
    if (v2 > 1u || byte_286CF6660[v0 + 32])
    {
      v3 = sub_25B716AF0();

      if ((v3 & 1) == 0)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_25B7104A4(0, *(v1 + 16) + 1, 1);
        }

        v5 = *(v1 + 16);
        v4 = *(v1 + 24);
        if (v5 >= v4 >> 1)
        {
          sub_25B7104A4((v4 > 1), v5 + 1, 1);
        }

        *(v1 + 16) = v5 + 1;
        *(v1 + v5 + 32) = v2;
      }
    }

    else
    {
    }

    ++v0;
  }

  while (v0 != 5);
  return v1;
}

NanoUniverse::AegirCloudCoverService::CloudLevel_optional __swiftcall AegirCloudCoverService.CloudLevel.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_25B716AB0();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_25B703C04()
{
  sub_25B716B70();
  sub_25B7167F0();

  return sub_25B716B90();
}

uint64_t sub_25B703CC8(uint64_t a1)
{
  sub_25B7167F0();
}

uint64_t sub_25B703D78(uint64_t a1)
{
  sub_25B716B70();
  sub_25B7167F0();

  return sub_25B716B90();
}

void sub_25B703E44(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x6C61746F74;
  v5 = 0xE300000000000000;
  v6 = 6580589;
  v7 = 0xE300000000000000;
  v8 = 7827308;
  if (v2 != 3)
  {
    v8 = 0x6F626D6F63;
    v7 = 0xE500000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 1751607656;
    v3 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_25B703ED4()
{
  v1 = *v0;
  v2 = 0x6C61746F74;
  v3 = 6580589;
  v4 = 7827308;
  if (v1 != 3)
  {
    v4 = 0x6F626D6F63;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1751607656;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_25B703F5C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 1751607656;
    }

    else
    {
      v4 = 0x6C61746F74;
    }

    if (v2)
    {
      v3 = 0xE400000000000000;
    }

    else
    {
      v3 = 0xE500000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE300000000000000;
    v4 = 6580589;
  }

  else if (a1 == 3)
  {
    v3 = 0xE300000000000000;
    v4 = 7827308;
  }

  else
  {
    v3 = 0xE500000000000000;
    v4 = 0x6F626D6F63;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 1751607656;
    }

    else
    {
      v9 = 0x6C61746F74;
    }

    if (a2)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = 0xE500000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE300000000000000;
    v6 = 7827308;
    if (a2 != 3)
    {
      v6 = 0x6F626D6F63;
      v5 = 0xE500000000000000;
    }

    if (a2 == 2)
    {
      v7 = 6580589;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE300000000000000;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = sub_25B716AF0();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_25B7040C4()
{
  v1 = *v0;
  sub_25B716B70();
  MEMORY[0x25F86B230](v1);
  return sub_25B716B90();
}

uint64_t sub_25B704138(uint64_t a1)
{
  v2 = *v1;
  sub_25B716B70();
  MEMORY[0x25F86B230](v2);
  return sub_25B716B90();
}

char *AegirCloudCoverService.__allocating_init(imageScale:)(float a1)
{
  objc_allocWithZone(v1);
  static AegirCloudCoverService.Configuration.prodEnvironment.getter(v9);
  v6[0] = v9[0];
  v6[1] = v9[1];
  v7 = v10;
  v8 = v11;
  v3 = objc_allocWithZone(type metadata accessor for AegirCloudCoverService(0));
  v4 = AegirCloudCoverService.init(configuration:imageScale:)(v6, a1);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v4;
}

char *AegirCloudCoverService.init(imageScale:)(float a1)
{
  static AegirCloudCoverService.Configuration.prodEnvironment.getter(v8);
  v5[0] = v8[0];
  v5[1] = v8[1];
  v6 = v9;
  v7 = v10;
  v2 = objc_allocWithZone(type metadata accessor for AegirCloudCoverService(0));
  v3 = AegirCloudCoverService.init(configuration:imageScale:)(v5, a1);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v3;
}

uint64_t type metadata accessor for AegirCloudCoverService(uint64_t a1)
{
  result = qword_2810C3260;
  if (!qword_2810C3260)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *AegirCloudCoverService.init(configuration:imageScale:)(uint64_t *a1, float a2)
{
  v3 = v2;
  v43 = sub_25B7166D0();
  v42 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v41 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25B716920();
  v46 = *(v7 - 8);
  v47 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25B716900();
  MEMORY[0x28223BE20](v10);
  v40 = sub_25B7166F0();
  v39 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v52 = a1[1];
  v53 = v13;
  v14 = a1[2];
  v50 = a1[3];
  v51 = v14;
  v15 = a1[4];
  v48 = a1[5];
  v49 = v15;
  *&v2[OBJC_IVAR____TtC12NanoUniverse22AegirCloudCoverService_fileConverter] = 0;
  v2[OBJC_IVAR____TtC12NanoUniverse22AegirCloudCoverService_disableFetch] = 0;
  sub_25B7024E8(&v2[OBJC_IVAR____TtC12NanoUniverse22AegirCloudCoverService_directory]);
  *&v2[OBJC_IVAR____TtC12NanoUniverse22AegirCloudCoverService_refreshTimeIntervalInSeconds] = 0x40AC200000000000;
  v45 = OBJC_IVAR____TtC12NanoUniverse22AegirCloudCoverService_privateQueue;
  v44 = sub_25B7151BC(0, &qword_2810C3180, 0x277D85C78);
  sub_25B7166E0();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_25B715538(&qword_2810C3188, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA4A4A0, &qword_25B7383D0);
  sub_25B701E14(&unk_2810C3198, &unk_27FA4A4A0, &qword_25B7383D0, MEMORY[0x277D83970]);
  sub_25B7169F0();
  (*(v46 + 104))(v9, *MEMORY[0x277D85260], v47);
  v16 = v12;
  *&v2[v45] = sub_25B716960();
  *&v2[OBJC_IVAR____TtC12NanoUniverse22AegirCloudCoverService_startBackoffInterval] = 0x4082C00000000000;
  *&v2[OBJC_IVAR____TtC12NanoUniverse22AegirCloudCoverService_maxBackoffInterval] = 0x40F5180000000000;
  *&v2[OBJC_IVAR____TtC12NanoUniverse22AegirCloudCoverService_dispatchSourceTimer] = 0;
  *&v2[OBJC_IVAR____TtC12NanoUniverse22AegirCloudCoverService_operationsInProgress] = MEMORY[0x277D84FA0];
  v17 = &v2[OBJC_IVAR____TtC12NanoUniverse22AegirCloudCoverService_backoffInterval];
  *v17 = 0;
  v17[8] = 1;
  *&v2[OBJC_IVAR____TtC12NanoUniverse22AegirCloudCoverService_session] = 0;
  v18 = OBJC_IVAR____TtC12NanoUniverse22AegirCloudCoverService_authenticator;
  type metadata accessor for AegirAuthentication();
  v19 = swift_allocObject();
  sub_25B7162E0();
  swift_allocObject();
  *(v19 + 16) = sub_25B7162D0();
  *&v2[v18] = v19;
  if (qword_2810C3220 != -1)
  {
    swift_once();
  }

  v20 = sub_25B716340();
  __swift_project_value_buffer(v20, qword_2810C3228);
  v21 = sub_25B716320();
  v22 = sub_25B7168E0();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_25B6D4000, v21, v22, "Initializing AegirCloudCoverService", v23, 2u);
    MEMORY[0x25F86BDB0](v23, -1, -1);
  }

  v24 = &v3[OBJC_IVAR____TtC12NanoUniverse22AegirCloudCoverService_configuration];
  v25 = v52;
  *v24 = v53;
  *(v24 + 1) = v25;
  v26 = v50;
  *(v24 + 2) = v51;
  *(v24 + 3) = v26;
  v27 = v48;
  *(v24 + 4) = v49;
  *(v24 + 5) = v27;
  *&v3[OBJC_IVAR____TtC12NanoUniverse22AegirCloudCoverService_imageScale] = a2;
  v28 = type metadata accessor for AegirCloudCoverService(0);
  v56.receiver = v3;
  v56.super_class = v28;
  v29 = objc_msgSendSuper2(&v56, sel_init);
  if (qword_2810C3288 != -1)
  {
    swift_once();
  }

  if (byte_2810C3298 == 1)
  {
    v30 = *(v29 + OBJC_IVAR____TtC12NanoUniverse22AegirCloudCoverService_privateQueue);
    v31 = swift_allocObject();
    *(v31 + 16) = v29;
    aBlock[4] = sub_25B70556C;
    aBlock[5] = v31;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_25B7157A8;
    aBlock[3] = &block_descriptor;
    v32 = _Block_copy(aBlock);
    v33 = v30;
    v34 = v29;
    sub_25B7166E0();
    v54 = MEMORY[0x277D84F90];
    sub_25B715538(&qword_2810C31B8, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA4A4B0, &qword_25B7383D8);
    sub_25B701E14(&unk_2810C31A8, &unk_27FA4A4B0, &qword_25B7383D8, MEMORY[0x277D83970]);
    v35 = v41;
    v36 = v43;
    sub_25B7169F0();
    MEMORY[0x25F86B000](0, v16, v35, v32);
    _Block_release(v32);

    (*(v42 + 8))(v35, v36);
    (*(v39 + 8))(v16, v40);
  }

  return v29;
}

uint64_t sub_25B704BD4(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_25B7166D0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_25B7166F0();
  v11 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[1] = *&v3[OBJC_IVAR____TtC12NanoUniverse22AegirCloudCoverService_privateQueue];
  v14 = swift_allocObject();
  v14[2] = v3;
  v14[3] = a1;
  v14[4] = a2;
  v14[5] = a3;
  aBlock[4] = sub_25B70FFE8;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25B7157A8;
  aBlock[3] = &block_descriptor_7;
  v15 = _Block_copy(aBlock);
  v16 = v3;
  v17 = a1;

  sub_25B7166E0();
  v21 = MEMORY[0x277D84F90];
  sub_25B715538(&qword_2810C31B8, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA4A4B0, &qword_25B7383D8);
  sub_25B701E14(&unk_2810C31A8, &unk_27FA4A4B0, &qword_25B7383D8, MEMORY[0x277D83970]);
  sub_25B7169F0();
  MEMORY[0x25F86B000](0, v13, v10, v15);
  _Block_release(v15);
  (*(v8 + 8))(v10, v7);
  (*(v11 + 8))(v13, v20);
}

void sub_25B704F60(uint64_t a1, uint64_t a2)
{
  sub_25B716250();
  v3 = sub_25B716830();
  (*(a2 + 16))(a2, v3);
}

void *sub_25B704FCC()
{
  v0 = sub_25B716250();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2810C3310 != -1)
  {
    swift_once();
  }

  v4 = qword_2810C3638;
  v5 = *(qword_2810C3638 + 16);
  if (v5)
  {
    v6 = OBJC_IVAR____TtC12NanoUniverse22AegirCloudCoverService_directory;

    v32 = v6;
    swift_beginAccess();
    v31 = *(v1 + 16);
    v7 = MEMORY[0x277D84F90];
    v30[1] = v1 + 32;
    v8 = 32;
    do
    {
      v9 = v4;
      v10 = *(v4 + v8);
      v31(v3, v33 + v32, v0);
      v34[0] = 0x61632D632D333070;
      v34[1] = 0xEF2D65706F696C6CLL;
      v11 = 7827308;
      if (v10 != 3)
      {
        v11 = 0x6F626D6F63;
      }

      v12 = 0xE500000000000000;
      if (v10 == 3)
      {
        v13 = 0xE300000000000000;
      }

      else
      {
        v13 = 0xE500000000000000;
      }

      if (v10 == 2)
      {
        v11 = 6580589;
        v13 = 0xE300000000000000;
      }

      v14 = 0x6C61746F74;
      if (v10)
      {
        v14 = 1751607656;
        v12 = 0xE400000000000000;
      }

      if (v10 <= 1)
      {
        v15 = v14;
      }

      else
      {
        v15 = v11;
      }

      if (v10 <= 1)
      {
        v16 = v12;
      }

      else
      {
        v16 = v13;
      }

      MEMORY[0x25F86AEB0](v15, v16);

      sub_25B716200();

      sub_25B716210();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_25B710150(0, v7[2] + 1, 1, v7);
      }

      v18 = v7[2];
      v17 = v7[3];
      if (v18 >= v17 >> 1)
      {
        v7 = sub_25B710150((v17 > 1), v18 + 1, 1, v7);
      }

      v7[2] = v18 + 1;
      (*(v1 + 32))(v7 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v18, v3, v0);
      ++v8;
      --v5;
      v4 = v9;
    }

    while (v5);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  if (qword_2810C3220 != -1)
  {
    swift_once();
  }

  v19 = sub_25B716340();
  __swift_project_value_buffer(v19, qword_2810C3228);
  v20 = sub_25B716320();
  v21 = sub_25B7168B0();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v34[0] = v23;
    *v22 = 136315138;

    v25 = MEMORY[0x25F86AF00](v24, v0);
    v27 = v26;

    v28 = sub_25B6F69F0(v25, v27, v34);

    *(v22 + 4) = v28;
    _os_log_impl(&dword_25B6D4000, v20, v21, "Cached cloudTextureURLs: %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v23);
    MEMORY[0x25F86BDB0](v23, -1, -1);
    MEMORY[0x25F86BDB0](v22, -1, -1);
  }

  return v7;
}

uint64_t sub_25B70545C()
{
  v0 = [objc_opt_self() processInfo];
  v1 = [v0 processName];

  v2 = sub_25B7167D0();
  v4 = v3;

  v5 = v2 == 0x656764697242 && v4 == 0xE600000000000000;
  if (v5 || (sub_25B716AF0() & 1) != 0 || (v2 == 0x736F507269676541 ? (v6 = v4 == 0xEB00000000726574) : (v6 = 0), v6))
  {

    v7 = 1;
  }

  else
  {
    v7 = sub_25B716AF0();
  }

  byte_2810C3298 = v7 & 1;
  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_25B7055DC(uint64_t a1)
{
  if (qword_2810C3288 != -1)
  {
    a1 = swift_once();
  }

  if (byte_2810C3298)
  {
    MEMORY[0x28223BE20](a1);
    sub_25B716940();
    return v13;
  }

  else
  {
    if (qword_2810C3220 != -1)
    {
      swift_once();
    }

    v2 = sub_25B716340();
    __swift_project_value_buffer(v2, qword_2810C3228);
    v3 = sub_25B716320();
    v4 = sub_25B7168E0();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v13 = v6;
      *v5 = 136315138;
      v7 = [objc_opt_self() processInfo];
      v8 = [v7 processName];

      v9 = sub_25B7167D0();
      v11 = v10;

      v12 = sub_25B6F69F0(v9, v11, &v13);

      *(v5 + 4) = v12;
      _os_log_impl(&dword_25B6D4000, v3, v4, "Will not fetch data: process %s is not permitted to perform downloads", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v6);
      MEMORY[0x25F86BDB0](v6, -1, -1);
      MEMORY[0x25F86BDB0](v5, -1, -1);
    }

    return 0;
  }
}

uint64_t sub_25B705820()
{
  v97 = *MEMORY[0x277D85DE8];
  v0 = sub_25B716250();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v75 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v75 - v6;
  MEMORY[0x28223BE20](v5);
  v9 = &v75 - v8;
  v85 = [objc_opt_self() defaultManager];
  if (qword_2810C3310 != -1)
  {
    swift_once();
  }

  v10 = qword_2810C3638;
  v11 = *(qword_2810C3638 + 16);
  if (v11)
  {
    v83 = v7;
    v76 = v4;
    v12 = OBJC_IVAR____TtC12NanoUniverse22AegirCloudCoverService_directory;

    swift_beginAccess();
    v87 = *(v1 + 16);
    v88 = v1 + 16;
    v86 = (v1 + 8);
    v13 = 32;
    v14 = renderOffscreenPipelineForSpheroid_config__spheroridFshs + 128;
    v15.n128_u64[0] = 136315394;
    v75 = v15;
    v84 = v10;
    v82 = v12;
    while (1)
    {
      v17 = *(v84 + v13);
      v87(v9, &v89[v12], v0);
      aBlock = 0x61632D632D333070;
      v91 = 0xEF2D65706F696C6CLL;
      v18 = 0x6F626D6F63;
      if (v17 == 3)
      {
        v18 = 7827308;
        v19 = 0xE300000000000000;
      }

      else
      {
        v19 = 0xE500000000000000;
      }

      if (v17 == 2)
      {
        v18 = 6580589;
        v19 = 0xE300000000000000;
      }

      v20 = 0x6C61746F74;
      if (v17)
      {
        v20 = 1751607656;
      }

      v21 = 0xE400000000000000;
      if (!v17)
      {
        v21 = 0xE500000000000000;
      }

      if (v17 <= 1)
      {
        v22 = v20;
      }

      else
      {
        v22 = v18;
      }

      if (v17 <= 1)
      {
        v23 = v21;
      }

      else
      {
        v23 = v19;
      }

      MEMORY[0x25F86AEB0](v22, v23);

      sub_25B716200();

      sub_25B716210();
      sub_25B716230();
      v24 = *v86;
      (*v86)(v9, v0);
      v25 = sub_25B7167A0();

      v26 = [v85 v14[176]];

      if (!v26)
      {
        goto LABEL_8;
      }

      v27 = &v89[v12];
      v28 = v83;
      v87(v83, v27, v0);
      aBlock = 0x61632D632D333070;
      v91 = 0xEF2D65706F696C6CLL;
      v29 = 0x6F626D6F63;
      if (v17 == 3)
      {
        v29 = 7827308;
        v30 = 0xE300000000000000;
      }

      else
      {
        v30 = 0xE500000000000000;
      }

      if (v17 == 2)
      {
        v29 = 6580589;
        v30 = 0xE300000000000000;
      }

      v31 = 0x6C61746F74;
      if (v17)
      {
        v31 = 1751607656;
      }

      v32 = 0xE400000000000000;
      if (!v17)
      {
        v32 = 0xE500000000000000;
      }

      if (v17 <= 1)
      {
        v33 = v31;
      }

      else
      {
        v33 = v29;
      }

      if (v17 <= 1)
      {
        v34 = v32;
      }

      else
      {
        v34 = v30;
      }

      MEMORY[0x25F86AEB0](v33, v34);

      sub_25B716200();

      sub_25B716210();
      v35 = sub_25B7161F0();
      v36 = v28;
      v37 = v0;
      v24(v36, v0);
      aBlock = 0;
      v38 = [v85 removeItemAtURL:v35 error:&aBlock];

      if (v38)
      {
        v16 = aBlock;
      }

      else
      {
        v39 = aBlock;
        v40 = sub_25B7161C0();

        swift_willThrow();
        if (qword_2810C3220 != -1)
        {
          swift_once();
        }

        v41 = sub_25B716340();
        __swift_project_value_buffer(v41, qword_2810C3228);
        v42 = v89;
        v43 = v40;
        v44 = sub_25B716320();
        v45 = sub_25B7168C0();

        v46 = v44;
        v81 = v45;
        v47 = os_log_type_enabled(v44, v45);
        v48 = v40;
        v0 = v37;
        if (v47)
        {
          v79 = v46;
          v80 = v48;
          v49 = swift_slowAlloc();
          v77 = swift_slowAlloc();
          v96 = v77;
          v78 = v49;
          *v49 = v75.n128_u32[0];
          v12 = v82;
          v50 = v76;
          v87(v76, &v89[v82], v0);
          aBlock = 0x61632D632D333070;
          v91 = 0xEF2D65706F696C6CLL;
          v51 = 0x6F626D6F63;
          if (v17 == 3)
          {
            v51 = 7827308;
            v52 = 0xE300000000000000;
          }

          else
          {
            v52 = 0xE500000000000000;
          }

          if (v17 == 2)
          {
            v51 = 6580589;
            v52 = 0xE300000000000000;
          }

          v53 = 0x6C61746F74;
          if (v17)
          {
            v53 = 1751607656;
          }

          v54 = 0xE400000000000000;
          if (!v17)
          {
            v54 = 0xE500000000000000;
          }

          if (v17 <= 1)
          {
            v55 = v53;
          }

          else
          {
            v55 = v51;
          }

          if (v17 <= 1)
          {
            v56 = v54;
          }

          else
          {
            v56 = v52;
          }

          MEMORY[0x25F86AEB0](v55, v56);

          sub_25B716200();

          sub_25B716210();
          sub_25B715538(&qword_27FA4A4C0, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
          v57 = sub_25B716AD0();
          v59 = v58;
          v24(v50, v0);
          v60 = sub_25B6F69F0(v57, v59, &v96);

          v61 = v78;
          *(v78 + 1) = v60;
          *(v61 + 6) = 2080;
          v62 = v80;
          swift_getErrorValue();
          v63 = sub_25B716B20();
          v65 = sub_25B6F69F0(v63, v64, &v96);

          *(v61 + 14) = v65;
          v66 = v79;
          _os_log_impl(&dword_25B6D4000, v79, v81, "Failed to delete cloud texture file at : %s. Error: %s", v61, 0x16u);
          v67 = v77;
          swift_arrayDestroy();
          MEMORY[0x25F86BDB0](v67, -1, -1);
          MEMORY[0x25F86BDB0](v61, -1, -1);

          goto LABEL_7;
        }
      }

      v12 = v82;
LABEL_7:
      v14 = &renderOffscreenPipelineForSpheroid_config__spheroridFshs[16];
LABEL_8:
      ++v13;
      if (!--v11)
      {

        break;
      }
    }
  }

  v68 = v89;
  v69 = *&v89[OBJC_IVAR____TtC12NanoUniverse22AegirCloudCoverService_privateQueue];
  v70 = swift_allocObject();
  *(v70 + 16) = v68;
  v71 = swift_allocObject();
  *(v71 + 16) = sub_25B710464;
  *(v71 + 24) = v70;
  v94 = sub_25B71047C;
  v95 = v71;
  aBlock = MEMORY[0x277D85DD0];
  v91 = 1107296256;
  v92 = sub_25B706188;
  v93 = &block_descriptor_16;
  v72 = _Block_copy(&aBlock);
  v73 = v68;

  dispatch_sync(v69, v72);

  _Block_release(v72);
  LOBYTE(v68) = swift_isEscapingClosureAtFileLocation();

  if (v68)
  {
    __break(1u);
  }

  return result;
}

BOOL sub_25B7061B0()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC12NanoUniverse22AegirCloudCoverService_disableFetch;
  swift_beginAccess();
  if ((v0[v2] & 1) == 0)
  {
    v3 = OBJC_IVAR____TtC12NanoUniverse22AegirCloudCoverService_operationsInProgress;
    swift_beginAccess();
    if (!*(*&v0[v3] + 16) && !*&v0[OBJC_IVAR____TtC12NanoUniverse22AegirCloudCoverService_dispatchSourceTimer])
    {
      if (qword_2810C3310 != -1)
      {
        swift_once();
      }

      v17 = qword_2810C3638;
      v18 = *(qword_2810C3638 + 16);

      v19 = 0;
      while (1)
      {
        v4 = v18 != v19;
        if (v18 == v19)
        {
LABEL_22:

          goto LABEL_5;
        }

        if (v19 >= *(v17 + 16))
        {
          break;
        }

        v20 = v19 + 1;
        v22[0] = *(v17 + v19 + 32);
        v21 = sub_25B7089B4(v22);
        v19 = v20;
        if (v21)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
      goto LABEL_24;
    }
  }

  v4 = 0;
LABEL_5:
  if (qword_2810C3220 != -1)
  {
LABEL_24:
    swift_once();
  }

  v5 = sub_25B716340();
  __swift_project_value_buffer(v5, qword_2810C3228);
  v6 = v0;
  v7 = sub_25B716320();
  v8 = sub_25B7168E0();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v23 = v10;
    *v9 = 67109890;
    *(v9 + 4) = v4;
    v11 = v1[v2];
    *(v9 + 8) = 1024;
    *(v9 + 10) = v11;
    *(v9 + 14) = 2048;
    v12 = OBJC_IVAR____TtC12NanoUniverse22AegirCloudCoverService_operationsInProgress;
    swift_beginAccess();
    *(v9 + 16) = *(*&v6[v12] + 16);

    *(v9 + 24) = 2080;
    if (*&v6[OBJC_IVAR____TtC12NanoUniverse22AegirCloudCoverService_dispatchSourceTimer])
    {
      v13 = 0x6C694E746F6ELL;
    }

    else
    {
      v13 = 7104878;
    }

    if (*&v6[OBJC_IVAR____TtC12NanoUniverse22AegirCloudCoverService_dispatchSourceTimer])
    {
      v14 = 0xE600000000000000;
    }

    else
    {
      v14 = 0xE300000000000000;
    }

    v15 = sub_25B6F69F0(v13, v14, &v23);

    *(v9 + 26) = v15;
    _os_log_impl(&dword_25B6D4000, v7, v8, "Should fetch data: %{BOOL}d, disabledFetch: %{BOOL}d, operationsInProgress.count: %ld, dispatchSourceTimer: %s", v9, 0x22u);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x25F86BDB0](v10, -1, -1);
    MEMORY[0x25F86BDB0](v9, -1, -1);
  }

  else
  {
  }

  return v4;
}

void sub_25B706484(uint64_t a1, void *a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, NSObject *a7)
{
  v79 = a7;
  v77 = a6;
  LODWORD(v78) = a4;
  v82 = *MEMORY[0x277D85DE8];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA4A4C8, &qword_25B7383E0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v69 - v15;
  v17 = sub_25B716250();
  v18 = MEMORY[0x28223BE20](v17);
  v76 = &v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v69 - v20;
  v22 = a1;
  v24 = v23;
  v26 = v25;
  sub_25B701984(v22, v16, &unk_27FA4A4C8, &qword_25B7383E0);
  if ((*(v26 + 48))(v16, 1, v24) == 1)
  {
    sub_25B7019EC(v16, &unk_27FA4A4C8, &qword_25B7383E0);
    [a2 lock];
    swift_beginAccess();
    *(a5 + 16) = 1;
    [a2 unlock];
  }

  else
  {
    (*(v26 + 32))(v21, v16, v24);
    [a2 lock];
    (*(v26 + 16))(v14, v21, v24);
    (*(v26 + 56))(v14, 0, 1, v24);
    swift_beginAccess();
    sub_25B706D74(v14, v78);
    swift_endAccess();
    [a2 unlock];
    (*(v26 + 8))(v21, v24);
  }

  v27 = a3;
  swift_beginAccess();
  if (*(a5 + 16))
  {
    goto LABEL_25;
  }

  swift_beginAccess();
  if (*(*(a3 + 16) + 16) != 3)
  {
    goto LABEL_25;
  }

  v28 = OBJC_IVAR____TtC12NanoUniverse22AegirCloudCoverService_fileConverter;
  v29 = v77;
  swift_beginAccess();
  v30 = *(v29 + v28);
  if (!v30)
  {
    goto LABEL_25;
  }

  v31 = OBJC_IVAR____TtC12NanoUniverse22AegirCloudCoverService_directory;
  v32 = v77;
  swift_beginAccess();
  v33 = v76;
  (*(v26 + 16))(v76, v32 + v31, v24);
  swift_unknownObjectRetain();
  sub_25B716200();
  sub_25B716210();
  if (qword_2810C3220 != -1)
  {
    swift_once();
  }

  v34 = sub_25B716340();
  v35 = __swift_project_value_buffer(v34, qword_2810C3228);

  v77 = v35;
  v36 = sub_25B716320();
  v37 = sub_25B7168E0();

  v38 = os_log_type_enabled(v36, v37);
  v74 = v24;
  v75 = v26;
  v78 = v30;
  if (v38)
  {
    v72 = v37;
    v39 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v81[0] = v71;
    *v39 = 136315394;
    *(v39 + 4) = sub_25B6F69F0(0x6F626D6F63, 0xE500000000000000, v81);
    *(v39 + 12) = 2080;
    swift_beginAccess();
    v73 = v27;
    v40 = *(v27 + 16);
    v41 = *(v40 + 16);
    if (v41)
    {
      v69 = v36;
      v42 = sub_25B710328(v41, 0);
      v70 = sub_25B7120A8(&v80, &v42[(*(v75 + 80) + 32) & ~*(v75 + 80)], v41, v40);
      v43 = v80;

      sub_25B715530(v43);
      if (v70 != v41)
      {
        goto LABEL_27;
      }

      v24 = v74;
      v26 = v75;
      v33 = v76;
      v30 = v78;
      v36 = v69;
    }

    else
    {
      v42 = MEMORY[0x277D84F90];
      v26 = v75;
    }

    v44 = MEMORY[0x25F86AF00](v42, v24);
    v46 = v45;

    v47 = sub_25B6F69F0(v44, v46, v81);

    *(v39 + 14) = v47;
    _os_log_impl(&dword_25B6D4000, v36, v72, "Combining cloud textures for level: %s %s", v39, 0x16u);
    v48 = v71;
    swift_arrayDestroy();
    MEMORY[0x25F86BDB0](v48, -1, -1);
    MEMORY[0x25F86BDB0](v39, -1, -1);

    v27 = v73;
  }

  else
  {
  }

  swift_beginAccess();
  v49 = *(v27 + 16);
  v50 = *(v49 + 16);
  if (v50)
  {
    v51 = sub_25B710328(*(v49 + 16), 0);
    v52 = sub_25B7120A8(&v80, &v51[(*(v26 + 80) + 32) & ~*(v26 + 80)], v50, v49);
    v53 = v80;

    sub_25B715530(v53);
    if (v52 == v50)
    {
      v24 = v74;
      v26 = v75;
      v33 = v76;
      v30 = v78;
      goto LABEL_19;
    }

    __break(1u);
LABEL_27:
    __break(1u);
  }

LABEL_19:
  v54 = sub_25B716830();

  v55 = sub_25B7161F0();
  v80 = 0;
  v56 = [v30 combineFilesAt:v54 to:v55 error:&v80];

  if (v56)
  {
    v57 = v80;
    swift_unknownObjectRelease();
LABEL_24:
    (*(v26 + 8))(v33, v24);
    goto LABEL_25;
  }

  v58 = v80;
  v59 = sub_25B7161C0();

  swift_willThrow();
  v60 = v59;
  v61 = sub_25B716320();
  v62 = sub_25B7168C0();

  if (!os_log_type_enabled(v61, v62))
  {
    swift_unknownObjectRelease();

    goto LABEL_24;
  }

  v63 = swift_slowAlloc();
  v64 = swift_slowAlloc();
  v80 = v64;
  *v63 = 136315394;
  *(v63 + 4) = sub_25B6F69F0(0x6F626D6F63, 0xE500000000000000, &v80);
  *(v63 + 12) = 2080;
  swift_getErrorValue();
  v65 = sub_25B716B20();
  v67 = v26;
  v68 = sub_25B6F69F0(v65, v66, &v80);

  *(v63 + 14) = v68;
  _os_log_impl(&dword_25B6D4000, v61, v62, "Failed to combine cloud textures for level: %s. Error: %s.", v63, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x25F86BDB0](v64, -1, -1);
  MEMORY[0x25F86BDB0](v63, -1, -1);
  swift_unknownObjectRelease();

  (*(v67 + 8))(v76, v74);
LABEL_25:
  dispatch_group_leave(v79);
}