uint64_t sub_1000CC3F8()
{
  v1 = v0;
  v2 = sub_1000E9784();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s22MercuryPosterExtension9ToriSceneC9startTimeSdvpfi_0();
  v7 = *(v1 + 184);
  if (v7 <= 0.0 || (v8 = v6 - v7, v9 = *(v1 + 176) * 0.16 * 2.8, v6 - v7 >= v9 + 2.8 - v9))
  {
    result = 0;
    *(v1 + 224) = 0u;
    *(v1 + 240) = 0u;
    *(v1 + 208) = 0u;
    *(v1 + 272) = v6;
  }

  else
  {
    v24 = *(v1 + 224);
    sub_1000E9774();
    if (v8 >= v9)
    {
      v14 = v1;
      v23 = vaddq_f32(*(v1 + 192), *(v1 + 208));
      v18 = v23.f32[2];
      v25 = 0;
      v26 = 1065353216;
      sub_1000E9764();
      (*(v3 + 8))(v5, v2);
      *v16.f32 = vsub_f32(*v23.f32, vmul_n_f32(*v23.f32, v27));
      v16.f32[2] = v18 - vmuls_lane_f32(v27, v23, 2);
    }

    else
    {
      v23 = *(v1 + 192);
      sub_1000125FC(&qword_100132540, &unk_1000F3E20);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1000ED250;
      v11 = *(v1 + 208);
      v26 = 1065353216;
      v25 = *(v1 + 256);
      sub_1000E9764();
      *(inited + 32) = v11 * v27;
      v12 = *(v1 + 212);
      v26 = 1065353216;
      v25 = *(v1 + 260);
      sub_1000E9764();
      *(inited + 36) = v12 * v27;
      v13 = *(v1 + 216);
      v26 = 1065353216;
      v14 = v1;
      v25 = *(v1 + 264);
      sub_1000E9764();
      *(inited + 40) = v13 * v27;
      sub_1000AB384(inited);
      v22 = v15;
      swift_setDeallocating();
      (*(v3 + 8))(v5, v2);
      v16 = vaddq_f32(v23, v22);
    }

    v16.i32[3] = 0;
    v19 = vsubq_f32(v16, v24);
    v20 = 1.0 / v8;
    *&v21 = vmulq_n_f32(v19, v20).u64[0];
    *(&v21 + 1) = COERCE_UNSIGNED_INT(vmuls_lane_f32(v20, v19, 2));
    *(v14 + 224) = v16;
    *(v14 + 240) = v21;
    return 1;
  }

  return result;
}

void ToriScene.tap(at:)(double a1, double a2, double a3, int8x16_t a4, int8x16_t a5)
{
  a4.i32[0] = HIDWORD(a1);
  v23 = LODWORD(a1);
  a5.i32[0] = 1.0;
  v6.i64[0] = 0x8000000080000000;
  v6.i64[1] = 0x8000000080000000;
  LODWORD(v7) = vbslq_s8(v6, a5, a4).u32[0];
  if (*(&a1 + 1) == 0.0)
  {
    v7 = 0.0;
  }

  v8 = v7 * (1.0 - powf(1.0 - fabsf(*(&a1 + 1)), 60.0));
  v9 = *(v5 + 224);
  *(v5 + 256) = *(v5 + 240);
  *(v5 + 192) = v9;
  sub_1000125FC(&qword_100132540, &unk_1000F3E20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000ED250;
  *(inited + 32) = v23;
  *(inited + 36) = v8;
  *(inited + 40) = 0;
  sub_1000AB384(inited);
  v24 = v11;
  swift_setDeallocating();
  v12 = fabsf(*(v5 + 196));
  if (v12 <= 1.5)
  {
    v13 = 1.0;
    v14 = 1.2;
  }

  else
  {
    v13 = 1.0 - fmin((v12 + -1.5) + (v12 + -1.5), 0.9);
    v14 = 0.16;
  }

  *(v5 + 176) = v13;
  v15.i64[0] = vmulq_n_f32(v24, v14).u64[0];
  v15.i64[1] = COERCE_UNSIGNED_INT(vmuls_lane_f32(v14, v24, 2));
  v25 = v15;
  *(v5 + 208) = v15;
  sub_1000AB384(&off_100121EC8);
  v22 = v16;
  sub_1000AB384(&off_100121EF8);
  v18 = v22;
  v17 = v25;
  v17.i32[3] = 0;
  v18.i32[3] = 0;
  v19 = vmaxnmq_f32(v17, v18);
  v19.i32[3] = 0;
  v20.i32[3] = 0;
  *(v5 + 208) = vminnmq_f32(v19, v20);
  _s22MercuryPosterExtension9ToriSceneC9startTimeSdvpfi_0();
  *(v5 + 184) = v21;
}

uint64_t ToriScene.deinit()
{

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v0;
}

uint64_t ToriScene.__deallocating_deinit()
{
  ToriScene.deinit();

  return swift_deallocClassInstance();
}

unint64_t sub_1000CC920()
{
  result = qword_100133AD8;
  if (!qword_100133AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133AD8);
  }

  return result;
}

unint64_t SyncTextureLoaderError.errorDescription.getter(uint64_t a1, void *a2, unsigned __int8 a3)
{
  if (a3 > 1u)
  {
    if (a3 == 2)
    {
      sub_1000E9D64(26);

      v5 = 0xD000000000000018;
    }

    else
    {
      sub_1000E9D64(33);

      v5 = 0xD00000000000001FLL;
    }
  }

  else if (a3)
  {
    sub_1000E9D64(20);

    v5 = 0xD000000000000012;
  }

  else
  {
    sub_1000E9D64(18);

    v5 = 0xD000000000000010;
  }

  v7 = v5;
  v8._countAndFlagsBits = a1;
  v8._object = a2;
  sub_1000E99A4(v8);
  return v7;
}

uint64_t sub_1000CCAC0()
{
  sub_1000190E4(*(v0 + 16), *(v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_1000CCAF8()
{
  v0 = sub_1000E96A4();
  sub_100011C54(v0, qword_100133AE0);
  sub_100007488(v0, qword_100133AE0);
  return sub_1000E9694();
}

uint64_t sub_1000CCB98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v5(a2, a3);
}

void *static SyncTextureLoader.debugCompareWithMTKTextureLoader(from:on:options:commandBuffer:)(uint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{
  v9 = [objc_allocWithZone(MTKTextureLoader) initWithDevice:a2];
  Current = CFAbsoluteTimeGetCurrent();
  sub_1000E9344(v11);
  v13 = v12;
  type metadata accessor for Option(0);
  sub_1000A1E1C(&qword_10012F9E0, type metadata accessor for Option, &unk_1000ECD38);
  isa = sub_1000E9894().super.isa;
  v63 = 0;
  v15 = [v9 newTextureWithContentsOfURL:v13 options:isa error:&v63];

  if (v15)
  {
    v16 = v63;
    v17 = CFAbsoluteTimeGetCurrent();
    v18 = CFAbsoluteTimeGetCurrent();
    v19 = sub_1000CF4A0(a1, a2, a3, a4);
    if (v4)
    {
      if (qword_10012F700 != -1)
      {
        swift_once();
      }

      v20 = sub_1000E96A4();
      sub_100007488(v20, qword_100133AE0);
      swift_errorRetain();
      v21 = sub_1000E9684();
      v22 = sub_1000E9BA4();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = v15;
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        *v24 = 138412290;
        swift_errorRetain();
        v26 = _swift_stdlib_bridgeErrorToNSError();
        *(v24 + 4) = v26;
        *v25 = v26;
        _os_log_impl(&_mh_execute_header, v21, v22, "❌ SyncTextureLoader failed: %@", v24, 0xCu);
        sub_100012644(v25);

        return v23;
      }

      else
      {

        return v15;
      }
    }

    else
    {
      a4 = v19;
      v61 = v9;
      v62 = v15;
      v33 = CFAbsoluteTimeGetCurrent() - v18;
      sub_1000125FC(&unk_100131D80, &unk_1000ECDA0);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_1000EC870;
      *(v34 + 56) = &type metadata for Double;
      *(v34 + 64) = &protocol witness table for Double;
      *(v34 + 32) = (v17 - Current) * 1000.0;
      v59 = sub_1000E9924();
      v36 = v35;
      v37 = swift_allocObject();
      *(v37 + 16) = xmmword_1000EC870;
      *(v37 + 56) = &type metadata for Double;
      *(v37 + 64) = &protocol witness table for Double;
      *(v37 + 32) = v33 * 1000.0;
      v38 = sub_1000E9924();
      v40 = v39;
      if (qword_10012F700 != -1)
      {
        swift_once();
      }

      v41 = sub_1000E96A4();
      sub_100007488(v41, qword_100133AE0);

      v42 = sub_1000E9684();
      v43 = sub_1000E9B84();

      if (os_log_type_enabled(v42, v43))
      {
        v58 = v38;
        v44 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        *v44 = 136315394;
        v45 = sub_100093A3C(v59, v36, &v63);
        v60 = a4;
        v46 = v45;

        *(v44 + 4) = v46;
        *(v44 + 12) = 2080;
        v47 = sub_100093A3C(v58, v40, &v63);

        *(v44 + 14) = v47;
        a4 = v60;
        _os_log_impl(&_mh_execute_header, v42, v43, "⏱️ Timing - MTK: %sms, Sync: %sms", v44, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
      }

      v48 = [a4 pixelFormat];
      if ((v48 - 70) <= 0xB && ((1 << (v48 - 70)) & 0xC03) != 0)
      {
        sub_1000D101C(v62, a4);
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRetain();
        v49 = sub_1000E9684();
        v50 = sub_1000E9B84();
        swift_unknownObjectRelease();
        if (os_log_type_enabled(v49, v50))
        {
          v51 = swift_slowAlloc();
          v52 = a4;
          v53 = swift_slowAlloc();
          v63 = v53;
          *v51 = 136315138;
          [v52 pixelFormat];
          type metadata accessor for MTLPixelFormat(0);
          v54 = sub_1000E9944();
          v56 = sub_100093A3C(v54, v55, &v63);

          *(v51 + 4) = v56;
          _os_log_impl(&_mh_execute_header, v49, v50, "🔍 Skipping pixel comparison for format %s - not yet verified safe", v51, 0xCu);
          sub_100012710(v53);
          a4 = v52;
        }

        swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    v27 = v63;
    sub_1000E92E4();

    swift_willThrow();
    if (qword_10012F700 != -1)
    {
      swift_once();
    }

    v28 = sub_1000E96A4();
    sub_100007488(v28, qword_100133AE0);
    swift_errorRetain();
    v29 = sub_1000E9684();
    v30 = sub_1000E9BA4();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      a4 = swift_slowAlloc();
      *v31 = 138412290;
      swift_errorRetain();
      v32 = _swift_stdlib_bridgeErrorToNSError();
      *(v31 + 4) = v32;
      *a4 = v32;
      _os_log_impl(&_mh_execute_header, v29, v30, "❌ MTKTextureLoader failed: %@", v31, 0xCu);
      sub_100012644(a4);
    }

    swift_willThrow();
  }

  return a4;
}

uint64_t sub_1000CD548(uint64_t a1)
{
  if (*(a1 + 16) && (v2 = sub_10009F59C(MTKTextureLoaderOptionTextureUsage), (v3 & 1) != 0) && (sub_100012898(*(a1 + 56) + 32 * v2, v21), sub_1000D1748(), (swift_dynamicCast() & 1) != 0))
  {
    v4 = [v19 unsignedIntegerValue];

    if (!*(a1 + 16))
    {
      goto LABEL_11;
    }
  }

  else
  {
    v4 = 1;
    if (!*(a1 + 16))
    {
      goto LABEL_11;
    }
  }

  v5 = sub_10009F59C(MTKTextureLoaderOptionTextureStorageMode);
  if ((v6 & 1) == 0 || (sub_100012898(*(a1 + 56) + 32 * v5, v21), sub_1000D1748(), (swift_dynamicCast() & 1) == 0))
  {
LABEL_11:
    if (!*(a1 + 16))
    {
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  [v19 unsignedIntegerValue];

  if (!*(a1 + 16))
  {
    goto LABEL_16;
  }

LABEL_12:
  v7 = sub_10009F59C(MTKTextureLoaderOptionGenerateMipmaps);
  if ((v8 & 1) == 0 || (sub_100012898(*(a1 + 56) + 32 * v7, v21), sub_1000D1748(), (swift_dynamicCast() & 1) == 0))
  {
LABEL_16:
    if (!*(a1 + 16))
    {
      goto LABEL_21;
    }

    goto LABEL_17;
  }

  [v19 BOOLValue];

  if (!*(a1 + 16))
  {
    goto LABEL_21;
  }

LABEL_17:
  v9 = sub_10009F59C(MTKTextureLoaderOptionSRGB);
  if ((v10 & 1) == 0 || (sub_100012898(*(a1 + 56) + 32 * v9, v21), sub_1000D1748(), (swift_dynamicCast() & 1) == 0))
  {
LABEL_21:
    if (!*(a1 + 16))
    {
      goto LABEL_29;
    }

    goto LABEL_22;
  }

  [v19 BOOLValue];

  if (!*(a1 + 16))
  {
    goto LABEL_29;
  }

LABEL_22:
  v11 = sub_10009F59C(MTKTextureLoaderOptionOrigin);
  if ((v12 & 1) == 0 || (sub_100012898(*(a1 + 56) + 32 * v11, v21), (swift_dynamicCast() & 1) == 0))
  {
LABEL_29:
    if (!*(a1 + 16))
    {
      return v4;
    }

    goto LABEL_30;
  }

  if (v19 == sub_1000E9914() && v20 == v13)
  {
  }

  else
  {
    v15 = sub_1000E9F74();

    if ((v15 & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  if (!*(a1 + 16))
  {
    return v4;
  }

LABEL_30:
  v16 = sub_10009F59C(MTKTextureLoaderOptionAllocateMipmaps);
  if (v17)
  {
    sub_100012898(*(a1 + 56) + 32 * v16, v21);
    sub_1000D1748();
    if (swift_dynamicCast())
    {
      [v19 BOOLValue];
    }
  }

  return v4;
}

void sub_1000CD910(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, unsigned int a6, void *a7)
{
  isa = sub_1000E93F4().super.isa;
  v13 = CGImageSourceCreateWithData(isa, 0);

  if (!v13)
  {
    sub_1000D16D4();
    swift_allocError();
    *v24 = 0xD00000000000001DLL;
    *(v24 + 8) = 0x80000001000F9E00;
    *(v24 + 16) = 1;
    swift_willThrow();
    return;
  }

  ImageAtIndex = CGImageSourceCreateImageAtIndex(v13, 0, 0);
  if (!ImageAtIndex)
  {
    sub_1000D16D4();
    swift_allocError();
    *v25 = 0xD00000000000002CLL;
    *(v25 + 8) = 0x80000001000F9E20;
    *(v25 + 16) = 1;
    swift_willThrow();

    return;
  }

  v15 = ImageAtIndex;
  v94 = a7;
  Width = CGImageGetWidth(ImageAtIndex);
  Height = CGImageGetHeight(v15);
  if (CGImageGetBitsPerComponent(v15) != 16 && CGImageGetBitsPerComponent(v15) != 8)
  {
    sub_1000E9D64(30);

    v103 = 0xD00000000000001BLL;
    v104 = 0x80000001000F9E50;
    v102[0] = CGImageGetBitsPerComponent(v15);
    v109._countAndFlagsBits = sub_1000E9F54();
    sub_1000E99A4(v109);

    v110._countAndFlagsBits = 41;
    v110._object = 0xE100000000000000;
    sub_1000E99A4(v110);
    sub_1000D16D4();
    swift_allocError();
    *v29 = 0xD00000000000001BLL;
    *(v29 + 8) = 0x80000001000F9E50;
    *(v29 + 16) = 1;
    swift_willThrow();

LABEL_71:
    return;
  }

  v98 = a3;
  BitsPerComponent = CGImageGetBitsPerComponent(v15);
  BitsPerPixel = CGImageGetBitsPerPixel(v15);
  v19 = CGImageGetBitsPerComponent(v15);
  if (v19)
  {
    v97 = v13;
    if (BitsPerPixel == 0x8000000000000000 && v19 == -1)
    {
      goto LABEL_96;
    }

    v20 = BitsPerPixel / v19;
    v21 = Width;
    if (BitsPerPixel / v19 == 1)
    {
      v22 = a5;
      v91 = 1;
      if (BitsPerComponent == 16)
      {
        v23 = 25;
      }

      else
      {
        v23 = 11;
      }

      if (BitsPerComponent != 16 && (a6 & 0x100) == 0)
      {
        v23 = 10;
      }
    }

    else
    {
      v91 = v20 == 2;
      v22 = a5;
      if (BitsPerComponent == 16)
      {
        v26 = v20 == 2;
        v27 = 115;
        v28 = 25;
      }

      else
      {
        v26 = v20 == 2;
        if ((a6 & 0x100) != 0)
        {
          v27 = 71;
          v28 = 11;
        }

        else
        {
          v27 = 70;
          v28 = 10;
        }
      }

      if (v26)
      {
        v23 = v28;
      }

      else
      {
        v23 = v27;
      }
    }

    v99 = a6;
    v30 = [objc_opt_self() texture2DDescriptorWithPixelFormat:v23 width:v21 height:Height mipmapped:(a6 | HIBYTE(a6)) & 1];
    [v30 setUsage:a4];
    [v30 setStorageMode:v22];
    v31 = [v98 newTextureWithDescriptor:v30];
    if (!v31)
    {
      sub_1000D16D4();
      swift_allocError();
      *v48 = 0xD000000000000024;
      *(v48 + 8) = 0x80000001000F9E70;
      *(v48 + 16) = 3;
      swift_willThrow();

LABEL_70:
      goto LABEL_71;
    }

    v32 = v31;
    v86 = v23;
    v33 = sub_1000130C0(v23);
    v34 = v21 * v33;
    if ((v21 * v33) >> 64 == (v21 * v33) >> 63)
    {
      v89 = v21 * v33;
      if ((Height * v34) >> 64 == (Height * v34) >> 63)
      {
        v35 = v22;
        v96 = v32;
        __n = Height * v34;
        v36 = malloc(Height * v34);
        if (!v36)
        {
          sub_1000D16D4();
          swift_allocError();
          *v50 = 0xD000000000000028;
          *(v50 + 8) = 0x80000001000F9EA0;
          *(v50 + 16) = 3;
          swift_willThrow();

          goto LABEL_69;
        }

        v37 = v21;
        __src = v36;
        v88 = v30;
        v38 = CGImageGetColorSpace(v15);
        v84 = v35;
        if (!v38 || (v39 = v38, v40 = CGColorSpaceCopyName(v38), v39, !v40))
        {
          v43 = Height;
          if (v91)
          {
            v46 = v88;
            if ((a6 & 0x100) != 0)
            {
              v49 = &kCGColorSpaceGenericGrayGamma2_2;
            }

            else
            {
              v49 = &kCGColorSpaceLinearGray;
            }
          }

          else
          {
            v46 = v88;
            if ((a6 & 0x100) != 0)
            {
              v49 = &kCGColorSpaceSRGB;
            }

            else
            {
              v49 = &kCGColorSpaceLinearSRGB;
            }
          }

          v51 = *v49;
          v41 = 0;
          goto LABEL_59;
        }

        v82 = v21;
        type metadata accessor for CFString(0);
        sub_1000A1E1C(&qword_1001320D8, type metadata accessor for CFString, &unk_1000ED13C);
        v41 = v40;
        v42 = sub_1000E95E4();

        v43 = Height;
        if (v42 & 1) != 0 || (v44 = v41, v45 = sub_1000E95E4(), v44, (v45))
        {
          v46 = v88;
          if ((a6 & 0x100) != 0)
          {
            v47 = kCGColorSpaceDisplayP3;
          }

          else
          {
            v47 = kCGColorSpaceLinearDisplayP3;
          }

          v51 = v47;

          v37 = v82;
          goto LABEL_59;
        }

        v41 = v44;
        v52 = sub_1000E95E4();

        v46 = v88;
        if (v52 & 1) != 0 || (v53 = v41, v54 = sub_1000E95E4(), v53, (v54))
        {
          v55 = kCGColorSpaceGenericGrayGamma2_2;
          v37 = v82;
          a6 = v99;
          if ((v99 & 0x100) == 0)
          {
            v56 = &kCGColorSpaceLinearGray;
LABEL_57:
            v55 = *v56;
          }
        }

        else
        {
          v41 = v53;
          v57 = sub_1000E95E4();

          v37 = v82;
          a6 = v99;
          if ((v57 & 1) == 0)
          {
            v92 = v41;
            v58 = v41;
            sub_1000E95E4();

            v41 = v92;
            v46 = v88;
          }

          if ((v99 & 0x100) == 0)
          {
            v56 = &kCGColorSpaceLinearSRGB;
            goto LABEL_57;
          }

          v55 = kCGColorSpaceSRGB;
        }

        v51 = v55;

LABEL_59:
        v59 = CGColorSpaceCreateWithName(v51);
        if (v59)
        {
          v60 = v59;
          v83 = v51;
          v93 = v41;
          if (BitsPerComponent == 16)
          {
            v61 = 16;
          }

          else
          {
            v61 = 8;
          }

          v62 = sub_1000131E4(v86);
          v63 = CGBitmapContextCreate(__src, v37, v43, v61, v89, v60, v62);
          if (v63)
          {
            v64 = v63;
            if ((a6 & 0x10000) != 0)
            {
              CGContextScaleCTM(v63, 1.0, -1.0);
              CGContextTranslateCTM(v64, 0.0, -v43);
            }

            sub_1000E9B74();
            sub_100098A34(v37, v43, &v103);
            v87 = v103;
            v101 = v104;
            v69 = v105;
            v68 = v106;
            v70 = v107;
            v81 = v108;
            if (v84 != 2 && ((v99 & 1) == 0 || [v96 mipmapLevelCount] < 2))
            {
              v95 = v60;
              v72 = 0;
              v73 = v97;
              goto LABEL_81;
            }

            v71 = [v94 blitCommandEncoder];
            if (v71)
            {
              v72 = v71;
              v95 = v60;
              v73 = v97;
              if (v84 != 2)
              {
LABEL_81:
                v103 = v87;
                v104 = v101;
                v105 = v69;
                v106 = v68;
                v107 = v70;
                v108 = v81;
                [v96 replaceRegion:&v103 mipmapLevel:0 withBytes:__src bytesPerRow:v89];
                goto LABEL_82;
              }

              v74 = [v98 newBufferWithLength:__n options:0];
              if (v74)
              {
                v75 = v74;
                v76 = sub_1000E98E4();
                [v75 setLabel:v76];

                v77 = [swift_unknownObjectRetain() contents];
                v78 = v75;
                memcpy(v77, __src, __n);
                v103 = v68;
                v104 = v70;
                v105 = v81;
                v102[0] = v87;
                v102[1] = v101;
                v102[2] = v69;
                [v72 copyFromBuffer:v75 sourceOffset:0 sourceBytesPerRow:v89 sourceBytesPerImage:0 sourceSize:&v103 toTexture:v96 destinationSlice:0 destinationLevel:0 destinationOrigin:v102];
                swift_unknownObjectRelease();
                v73 = v97;
LABEL_82:
                if ((v99 & 1) != 0 && [v96 mipmapLevelCount] >= 2)
                {
                  if (v72)
                  {
                    [v72 generateMipmapsForTexture:v96];
LABEL_87:
                    [v72 endEncoding];

                    swift_unknownObjectRelease();
LABEL_89:

                    free(__src);
                    return;
                  }
                }

                else if (v72)
                {
                  goto LABEL_87;
                }

                goto LABEL_89;
              }

              sub_1000D16D4();
              swift_allocError();
              *v80 = 0xD000000000000028;
              *(v80 + 8) = 0x80000001000F9F70;
              *(v80 + 16) = 3;
              swift_willThrow();
              [v72 endEncoding];

              swift_unknownObjectRelease();
            }

            else
            {
              sub_1000D16D4();
              swift_allocError();
              *v79 = 0xD000000000000026;
              *(v79 + 8) = 0x80000001000F9F40;
              *(v79 + 16) = 3;
              swift_willThrow();
            }

            free(__src);

            goto LABEL_69;
          }

          sub_1000D16D4();
          swift_allocError();
          *v67 = 0xD000000000000023;
          *(v67 + 8) = 0x80000001000F9F10;
          *(v67 + 16) = 3;
          swift_willThrow();

          v66 = __src;
        }

        else
        {
          sub_1000D16D4();
          swift_allocError();
          *v65 = 0x1000000000000035;
          *(v65 + 8) = 0x80000001000F9ED0;
          *(v65 + 16) = 3;
          swift_willThrow();

          v66 = __src;
        }

        free(v66);

LABEL_69:
        swift_unknownObjectRelease();
        goto LABEL_70;
      }

      goto LABEL_95;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
}

uint64_t sub_1000CE548(int a1)
{
  if (a1 <= 36283)
  {
    if (a1 <= 33775)
    {
      if (a1 > 32858)
      {
        v1 = a1 - 33189;
        v2 = a1;
        result = 10;
        switch(v1)
        {
          case 0:
            result = 250;
            break;
          case 1:
            return 252;
          case 2:
          case 3:
          case 4:
          case 5:
          case 6:
          case 7:
          case 8:
          case 9:
          case 10:
          case 11:
          case 12:
          case 13:
          case 14:
          case 15:
          case 16:
          case 17:
          case 18:
          case 19:
          case 20:
          case 21:
          case 22:
          case 23:
          case 24:
          case 25:
          case 26:
          case 27:
          case 28:
          case 29:
          case 30:
          case 31:
          case 32:
          case 33:
          case 34:
          case 35:
          case 36:
          case 37:
          case 38:
          case 39:
          case 40:
          case 41:
          case 42:
          case 43:
          case 44:
          case 45:
          case 46:
          case 47:
          case 48:
          case 49:
          case 50:
          case 51:
          case 52:
          case 53:
          case 54:
          case 55:
          case 56:
          case 57:
          case 58:
          case 59:
          case 60:
          case 61:
          case 62:
          case 63:
          case 64:
          case 65:
          case 66:
          case 67:
          case 68:
          case 69:
          case 70:
          case 71:
          case 72:
          case 73:
          case 74:
          case 75:
          case 76:
          case 77:
          case 78:
          case 79:
          case 80:
          case 81:
          case 82:
          case 83:
          case 84:
          case 85:
          case 86:
          case 87:
          case 88:
          case 89:
          case 90:
          case 91:
          case 92:
          case 93:
          case 94:
          case 95:
          case 96:
          case 97:
          case 98:
          case 99:
          case 100:
          case 101:
          case 102:
          case 103:
          case 104:
          case 105:
          case 106:
          case 107:
          case 108:
          case 109:
          case 110:
          case 111:
          case 112:
          case 113:
          case 114:
          case 115:
          case 116:
          case 117:
          case 118:
          case 119:
          case 120:
          case 121:
          case 122:
          case 123:
          case 124:
          case 125:
          case 126:
          case 127:
          case 128:
          case 129:
          case 130:
          case 131:
            goto LABEL_90;
          case 132:
            return result;
          case 133:
            result = 20;
            break;
          case 134:
            result = 30;
            break;
          case 135:
            result = 60;
            break;
          case 136:
            result = 25;
            break;
          case 137:
            result = 55;
            break;
          case 138:
            result = 65;
            break;
          case 139:
            result = 105;
            break;
          case 140:
            result = 14;
            break;
          case 141:
            result = 13;
            break;
          case 142:
            result = 24;
            break;
          case 143:
            result = 23;
            break;
          case 144:
            result = 53;
            break;
          case 145:
            result = 54;
            break;
          case 146:
            result = 34;
            break;
          case 147:
            result = 33;
            break;
          case 148:
            result = 64;
            break;
          case 149:
            result = 63;
            break;
          case 150:
            result = 103;
            break;
          case 151:
            result = 104;
            break;
          default:
            v2 = 10;
            goto LABEL_90;
        }

        return result;
      }

      if (a1 <= 32855)
      {
        if (a1 == 32847)
        {
          return 110;
        }

        v2 = a1;
        if (a1 != 32849)
        {
          goto LABEL_90;
        }

        return 70;
      }

      if (a1 == 32856)
      {
        return 70;
      }

      v2 = a1;
      if (a1 == 32857)
      {
        return 90;
      }

LABEL_90:
      sub_1000125FC(&unk_100131D80, &unk_1000ECDA0);
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_1000EC870;
      *(v4 + 56) = &type metadata for UInt32;
      *(v4 + 64) = &protocol witness table for UInt32;
      *(v4 + 32) = v2;
      v5 = sub_1000E9924();
      v7 = v6;
      if (qword_10012F700 != -1)
      {
        swift_once();
      }

      v8 = sub_1000E96A4();
      sub_100007488(v8, qword_100133AE0);

      v9 = sub_1000E9684();
      v10 = sub_1000E9BA4();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v16 = v12;
        *v11 = 136315138;
        *(v11 + 4) = sub_100093A3C(v5, v7, &v16);
        _os_log_impl(&_mh_execute_header, v9, v10, "Unsupported GL internal format: %s", v11, 0xCu);
        sub_100012710(v12);
      }

      v16 = 0;
      v17 = 0xE000000000000000;
      sub_1000E9D64(39);

      v16 = 0xD000000000000013;
      v17 = 0x80000001000F9DC0;
      v18._countAndFlagsBits = v5;
      v18._object = v7;
      sub_1000E99A4(v18);

      v19._object = 0x80000001000F9DE0;
      v19._countAndFlagsBits = 0xD000000000000012;
      sub_1000E99A4(v19);
      v13 = v16;
      v14 = v17;
      sub_1000D16D4();
      swift_allocError();
      *v15 = v13;
      *(v15 + 8) = v14;
      *(v15 + 16) = 2;
      swift_willThrow();
      return 0;
    }

    if (a1 > 35916)
    {
      if (a1 > 36219)
      {
        if (a1 > 36229)
        {
          if (a1 == 36230)
          {
            return 114;
          }

          if (a1 == 36232)
          {
            return 113;
          }

          v2 = a1;
          if (a1 == 36283)
          {
            return 140;
          }
        }

        else
        {
          if (a1 == 36220)
          {
            return 73;
          }

          if (a1 == 36223)
          {
            return 74;
          }

          v2 = a1;
          if (a1 == 36226)
          {
            return 124;
          }
        }

        goto LABEL_90;
      }

      if (a1 > 36011)
      {
        if (a1 == 36012)
        {
          return 252;
        }

        if (a1 != 36013)
        {
          v2 = a1;
          if (a1 == 36208)
          {
            return 123;
          }

          goto LABEL_90;
        }

        return 260;
      }

      if (a1 != 35917)
      {
        if (a1 == 35918)
        {
          return 133;
        }

        v2 = a1;
        if (a1 == 35919)
        {
          return 135;
        }

        goto LABEL_90;
      }
    }

    else
    {
      if (a1 <= 34841)
      {
        if (a1 <= 33778)
        {
          if (a1 == 33776 || a1 == 33777)
          {
            return 130;
          }

          else
          {
            return 132;
          }
        }

        if (a1 == 33779)
        {
          return 134;
        }

        if (a1 != 34041)
        {
          v2 = a1;
          if (a1 == 34836)
          {
            return 125;
          }

          goto LABEL_90;
        }

        return 260;
      }

      if (a1 <= 35904)
      {
        if (a1 == 34842)
        {
          return 115;
        }

        if (a1 == 35898)
        {
          return 92;
        }

        v2 = a1;
        if (a1 == 35901)
        {
          return 93;
        }

        goto LABEL_90;
      }

      if (a1 == 35905 || a1 == 35907)
      {
        return 71;
      }

      v2 = a1;
      if (a1 != 35916)
      {
        goto LABEL_90;
      }
    }

    return 131;
  }

  if (a1 <= 36762)
  {
    if (a1 > 36494)
    {
      if (a1 > 36758)
      {
        if (a1 == 36759)
        {
          return 72;
        }

        if (a1 == 36760)
        {
          return 22;
        }

        v2 = a1;
        if (a1 == 36761)
        {
          return 62;
        }
      }

      else
      {
        if (a1 == 36495)
        {
          return 151;
        }

        if (a1 == 36756)
        {
          return 12;
        }

        v2 = a1;
        if (a1 == 36757)
        {
          return 32;
        }
      }
    }

    else
    {
      if (a1 > 36491)
      {
        if (a1 == 36492)
        {
          return 152;
        }

        if (a1 == 36493)
        {
          return 153;
        }

        return 150;
      }

      if (a1 == 36284)
      {
        return 141;
      }

      if (a1 == 36285)
      {
        return 142;
      }

      v2 = a1;
      if (a1 == 36286)
      {
        return 143;
      }
    }

    goto LABEL_90;
  }

  v2 = a1;
  switch(a1)
  {
    case 37488:
      return 170;
    case 37489:
      return 172;
    case 37490:
      return 174;
    case 37491:
      return 176;
    case 37492:
      return 180;
    case 37493:
      return 181;
    case 37494:
      return 182;
    case 37495:
      return 183;
    case 37496:
      return 178;
    case 37497:
      return 179;
    case 37498:
    case 37499:
    case 37500:
    case 37501:
    case 37502:
    case 37503:
    case 37504:
    case 37505:
    case 37506:
    case 37507:
    case 37508:
    case 37509:
    case 37510:
    case 37511:
    case 37512:
    case 37513:
    case 37514:
    case 37515:
    case 37516:
    case 37517:
    case 37518:
    case 37519:
    case 37520:
    case 37521:
    case 37522:
    case 37523:
    case 37524:
    case 37525:
    case 37526:
    case 37527:
    case 37528:
    case 37529:
    case 37530:
    case 37531:
    case 37532:
    case 37533:
    case 37534:
    case 37535:
    case 37536:
    case 37537:
    case 37538:
    case 37539:
    case 37540:
    case 37541:
    case 37542:
    case 37543:
    case 37544:
    case 37545:
    case 37546:
    case 37547:
    case 37548:
    case 37549:
    case 37550:
    case 37551:
    case 37552:
    case 37553:
    case 37554:
    case 37555:
    case 37556:
    case 37557:
    case 37558:
    case 37559:
    case 37560:
    case 37561:
    case 37562:
    case 37563:
    case 37564:
    case 37565:
    case 37566:
    case 37567:
    case 37568:
    case 37569:
    case 37570:
    case 37571:
    case 37572:
    case 37573:
    case 37574:
    case 37575:
    case 37576:
    case 37577:
    case 37578:
    case 37579:
    case 37580:
    case 37581:
    case 37582:
    case 37583:
    case 37584:
    case 37585:
    case 37586:
    case 37587:
    case 37588:
    case 37589:
    case 37590:
    case 37591:
    case 37592:
    case 37593:
    case 37594:
    case 37595:
    case 37596:
    case 37597:
    case 37598:
    case 37599:
    case 37600:
    case 37601:
    case 37602:
    case 37603:
    case 37604:
    case 37605:
    case 37606:
    case 37607:
    case 37608:
    case 37609:
    case 37610:
    case 37611:
    case 37612:
    case 37613:
    case 37614:
    case 37615:
    case 37616:
    case 37617:
    case 37618:
    case 37619:
    case 37620:
    case 37621:
    case 37622:
    case 37623:
    case 37624:
    case 37625:
    case 37626:
    case 37627:
    case 37628:
    case 37629:
    case 37630:
    case 37631:
    case 37632:
    case 37633:
    case 37634:
    case 37635:
    case 37636:
    case 37637:
    case 37638:
    case 37639:
    case 37640:
    case 37641:
    case 37642:
    case 37643:
    case 37644:
    case 37645:
    case 37646:
    case 37647:
    case 37648:
    case 37649:
    case 37650:
    case 37651:
    case 37652:
    case 37653:
    case 37654:
    case 37655:
    case 37656:
    case 37657:
    case 37658:
    case 37659:
    case 37660:
    case 37661:
    case 37662:
    case 37663:
    case 37664:
    case 37665:
    case 37666:
    case 37667:
    case 37668:
    case 37669:
    case 37670:
    case 37671:
    case 37672:
    case 37673:
    case 37674:
    case 37675:
    case 37676:
    case 37677:
    case 37678:
    case 37679:
    case 37680:
    case 37681:
    case 37682:
    case 37683:
    case 37684:
    case 37685:
    case 37686:
    case 37687:
    case 37688:
    case 37689:
    case 37690:
    case 37691:
    case 37692:
    case 37693:
    case 37694:
    case 37695:
    case 37696:
    case 37697:
    case 37698:
    case 37699:
    case 37700:
    case 37701:
    case 37702:
    case 37703:
    case 37704:
    case 37705:
    case 37706:
    case 37707:
    case 37708:
    case 37709:
    case 37710:
    case 37711:
    case 37712:
    case 37713:
    case 37714:
    case 37715:
    case 37716:
    case 37717:
    case 37718:
    case 37719:
    case 37720:
    case 37721:
    case 37722:
    case 37723:
    case 37724:
    case 37725:
    case 37726:
    case 37727:
    case 37728:
    case 37729:
    case 37730:
    case 37731:
    case 37732:
    case 37733:
    case 37734:
    case 37735:
    case 37736:
    case 37737:
    case 37738:
    case 37739:
    case 37740:
    case 37741:
    case 37742:
    case 37743:
    case 37744:
    case 37745:
    case 37746:
    case 37747:
    case 37748:
    case 37749:
    case 37750:
    case 37751:
    case 37752:
    case 37753:
    case 37754:
    case 37755:
    case 37756:
    case 37757:
    case 37758:
    case 37759:
    case 37760:
    case 37761:
    case 37762:
    case 37763:
    case 37764:
    case 37765:
    case 37766:
    case 37767:
    case 37768:
    case 37769:
    case 37770:
    case 37771:
    case 37772:
    case 37773:
    case 37774:
    case 37775:
    case 37776:
    case 37777:
    case 37778:
    case 37779:
    case 37780:
    case 37781:
    case 37782:
    case 37783:
    case 37784:
    case 37785:
    case 37786:
    case 37787:
    case 37788:
    case 37789:
    case 37790:
    case 37791:
    case 37792:
    case 37793:
    case 37794:
    case 37795:
    case 37796:
    case 37797:
    case 37798:
    case 37799:
    case 37800:
    case 37801:
    case 37802:
    case 37803:
    case 37804:
    case 37805:
    case 37806:
    case 37807:
    case 37822:
    case 37823:
    case 37824:
    case 37825:
    case 37826:
    case 37827:
    case 37828:
    case 37829:
    case 37830:
    case 37831:
    case 37832:
    case 37833:
    case 37834:
    case 37835:
    case 37836:
    case 37837:
    case 37838:
    case 37839:
      goto LABEL_90;
    case 37808:
      return 204;
    case 37809:
      return 205;
    case 37810:
      return 206;
    case 37811:
      return 207;
    case 37812:
      return 208;
    case 37813:
      return 210;
    case 37814:
      return 211;
    case 37815:
      return 212;
    case 37816:
      return 213;
    case 37817:
      return 214;
    case 37818:
      return 215;
    case 37819:
      return 216;
    case 37820:
      return 217;
    case 37821:
      return 218;
    case 37840:
      return 186;
    case 37841:
      return 187;
    case 37842:
      return 188;
    case 37843:
      return 189;
    case 37844:
      return 190;
    case 37845:
      return 192;
    case 37846:
      return 193;
    case 37847:
      return 194;
    case 37848:
      return 195;
    case 37849:
      return 196;
    case 37850:
      return 197;
    case 37851:
      return 198;
    case 37852:
      return 199;
    case 37853:
      return 200;
    default:
      if (a1 == 36763)
      {
        result = 112;
      }

      else
      {
        v2 = a1;
        if (a1 != 36975)
        {
          goto LABEL_90;
        }

        result = 91;
      }

      break;
  }

  return result;
}

uint64_t sub_1000CEE10(uint64_t a1)
{
  v2 = a1 - 70;
  result = 71;
  switch(v2)
  {
    case 0:
      return result;
    case 10:
      result = 81;
      break;
    case 60:
      result = 131;
      break;
    case 62:
      result = 133;
      break;
    case 64:
      result = 135;
      break;
    case 82:
      result = 153;
      break;
    case 108:
      result = 179;
      break;
    case 110:
      result = 181;
      break;
    case 112:
      result = 183;
      break;
    case 134:
      result = 186;
      break;
    case 135:
      result = 187;
      break;
    case 136:
      result = 188;
      break;
    case 137:
      result = 189;
      break;
    case 138:
      result = 190;
      break;
    case 140:
      result = 192;
      break;
    case 141:
      result = 193;
      break;
    case 142:
      result = 194;
      break;
    case 143:
      result = 195;
      break;
    case 144:
      result = 196;
      break;
    case 145:
      result = 197;
      break;
    case 146:
      result = 198;
      break;
    case 147:
      result = 199;
      break;
    case 148:
      result = 200;
      break;
    default:
      result = a1;
      break;
  }

  return result;
}

id sub_1000CEEFC(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v11 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v11 != 2)
    {
      v26 = a5 >> 62;
      memset(v41, 0, 14);
      if ((a5 >> 62) <= 1)
      {
        if (v26)
        {
          if (__OFSUB__(HIDWORD(a4), a4))
          {
LABEL_61:
            __break(1u);
            goto LABEL_62;
          }

          v13 = HIDWORD(a4) - a4;
        }

        else
        {
          v13 = BYTE6(a5);
        }

LABEL_43:
        v32 = swift_allocObject();
        *(v32 + 16) = a6;
        v46 = sub_1000D17A0;
        v47 = v32;
        aBlock = _NSConcreteStackBlock;
        v43 = 1107296256;
        v33 = &unk_100127848;
LABEL_46:
        v44 = sub_1000CCB98;
        v45 = v33;
        v35 = _Block_copy(&aBlock);
        swift_unknownObjectRetain();
        sub_100031E2C(a4, a5);
        swift_unknownObjectRetain();
        sub_100031E2C(a4, a5);

        v36 = [a3 newBufferWithBytesNoCopy:v41 length:v13 options:0 deallocator:v35];
LABEL_56:
        v40 = v36;
        _Block_release(v35);
        swift_unknownObjectRelease();
        sub_1000190E4(a4, a5);
        swift_unknownObjectRelease();
        sub_1000190E4(a4, a5);
        return v40;
      }

      goto LABEL_27;
    }

    v14 = *(a1 + 16);
    swift_unknownObjectRetain();
    sub_100031E2C(a4, a5);
    swift_unknownObjectRetain();
    sub_100031E2C(a4, a5);
    v15 = sub_1000E9214();
    if (v15)
    {
      v16 = v15;
      v17 = sub_1000E9244();
      if (__OFSUB__(v14, v17))
      {
LABEL_58:
        __break(1u);
        goto LABEL_59;
      }

      v6 = v14 - v17 + v16;
      sub_1000E9234();
      if (v6)
      {
        v18 = a5 >> 62;
        if ((a5 >> 62) <= 1)
        {
          if (v18)
          {
            if (__OFSUB__(HIDWORD(a4), a4))
            {
LABEL_62:
              __break(1u);
LABEL_63:
              __break(1u);
            }

            v19 = HIDWORD(a4) - a4;
          }

          else
          {
            v19 = BYTE6(a5);
          }

          goto LABEL_50;
        }

        goto LABEL_31;
      }
    }

    else
    {
      sub_1000E9234();
    }

    __break(1u);
    goto LABEL_66;
  }

  if (!v11)
  {
    v41[0] = a1;
    LOWORD(v41[1]) = a2;
    BYTE2(v41[1]) = BYTE2(a2);
    BYTE3(v41[1]) = BYTE3(a2);
    BYTE4(v41[1]) = BYTE4(a2);
    v12 = a5 >> 62;
    BYTE5(v41[1]) = BYTE5(a2);
    if ((a5 >> 62) <= 1)
    {
      if (!v12)
      {
        v13 = BYTE6(a5);
LABEL_45:
        v34 = swift_allocObject();
        *(v34 + 16) = a6;
        v46 = sub_1000D17A0;
        v47 = v34;
        aBlock = _NSConcreteStackBlock;
        v43 = 1107296256;
        v33 = &unk_1001277F8;
        goto LABEL_46;
      }

      goto LABEL_39;
    }

    if (v12 != 2)
    {
      v13 = 0;
      goto LABEL_45;
    }

    v27 = *(a4 + 16);
    v26 = *(a4 + 24);
    v13 = v26 - v27;
    if (!__OFSUB__(v26, v27))
    {
      goto LABEL_45;
    }

    __break(1u);
LABEL_27:
    v13 = 0;
    if (v26 != 2)
    {
      goto LABEL_43;
    }

    v28 = *(a4 + 16);
    v18 = *(a4 + 24);
    v13 = v18 - v28;
    if (!__OFSUB__(v18, v28))
    {
      goto LABEL_43;
    }

    __break(1u);
LABEL_31:
    if (v18 != 2)
    {
      v19 = 0;
LABEL_50:
      v37 = swift_allocObject();
      *(v37 + 16) = a6;
      v46 = sub_1000D1728;
      v47 = v37;
      aBlock = _NSConcreteStackBlock;
      v43 = 1107296256;
      v38 = &unk_100127758;
LABEL_55:
      v44 = sub_1000CCB98;
      v45 = v38;
      v35 = _Block_copy(&aBlock);

      v36 = [a3 newBufferWithBytesNoCopy:v6 length:v19 options:0 deallocator:v35];
      goto LABEL_56;
    }

    v29 = *(a4 + 16);
    v25 = *(a4 + 24);
    v19 = v25 - v29;
    if (!__OFSUB__(v25, v29))
    {
      goto LABEL_50;
    }

    __break(1u);
    goto LABEL_35;
  }

  v20 = a1;
  if (a1 > a1 >> 32)
  {
    __break(1u);
    goto LABEL_58;
  }

  swift_unknownObjectRetain();
  sub_100031E2C(a4, a5);
  swift_unknownObjectRetain();
  sub_100031E2C(a4, a5);
  v21 = sub_1000E9214();
  if (!v21)
  {
LABEL_66:
    result = sub_1000E9234();
    goto LABEL_67;
  }

  v22 = v21;
  v23 = sub_1000E9244();
  if (__OFSUB__(v20, v23))
  {
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v6 = v20 - v23 + v22;
  result = sub_1000E9234();
  if (v6)
  {
    v25 = a5 >> 62;
    if ((a5 >> 62) <= 1)
    {
      if (v25)
      {
        if (__OFSUB__(HIDWORD(a4), a4))
        {
          goto LABEL_63;
        }

        v19 = HIDWORD(a4) - a4;
      }

      else
      {
        v19 = BYTE6(a5);
      }

LABEL_54:
      v39 = swift_allocObject();
      *(v39 + 16) = a6;
      v46 = sub_1000D17A0;
      v47 = v39;
      aBlock = _NSConcreteStackBlock;
      v43 = 1107296256;
      v38 = &unk_1001277A8;
      goto LABEL_55;
    }

LABEL_35:
    if (v25 == 2)
    {
      v31 = *(a4 + 16);
      v30 = *(a4 + 24);
      v19 = v30 - v31;
      if (__OFSUB__(v30, v31))
      {
        __break(1u);
LABEL_39:
        if (!__OFSUB__(HIDWORD(a4), a4))
        {
          v13 = HIDWORD(a4) - a4;
          goto LABEL_45;
        }

        goto LABEL_60;
      }
    }

    else
    {
      v19 = 0;
    }

    goto LABEL_54;
  }

LABEL_67:
  __break(1u);
  return result;
}

id sub_1000CF4A0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v215 = a4;
  v8 = sub_1000E93B4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v185 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000CD548(a3);
  p_name = v13;
  v16 = v15;
  v17 = sub_1000E93D4();
  v216 = v4;
  if (v4)
  {
    if (qword_10012F700 != -1)
    {
      swift_once();
    }

    v20 = sub_1000E96A4();
    sub_100007488(v20, qword_100133AE0);
    (*(v9 + 16))(v11, a1, v8);
    swift_errorRetain();
    v21 = sub_1000E9684();
    v22 = sub_1000E9BA4();

    if (os_log_type_enabled(v21, v22))
    {
      p_name = swift_slowAlloc();
      v219 = swift_slowAlloc();
      *p_name = 136315394;
      v23 = sub_1000E9384();
      v25 = v24;
      (*(v9 + 8))(v11, v8);
      v26 = sub_100093A3C(v23, v25, &v219);

      *(p_name + 4) = v26;
      *(p_name + 12) = 2080;
      swift_getErrorValue();
      v27 = sub_1000E9FB4();
      v29 = sub_100093A3C(v27, v28, &v219);

      *(p_name + 14) = v29;
      _os_log_impl(&_mh_execute_header, v21, v22, "Failed to read file at URL %s: %s", p_name, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v9 + 8))(v11, v8);
    }

    v219 = 0;
    v220 = 0xE000000000000000;
    sub_1000E9D64(32);

    v219 = 0xD00000000000001ELL;
    v220 = 0x80000001000F9B70;
    swift_getErrorValue();
    v225._countAndFlagsBits = sub_1000E9FB4();
    sub_1000E99A4(v225);

    v32 = v219;
    v33 = v220;
    sub_1000D16D4();
    swift_allocError();
    *v34 = v32;
    *(v34 + 8) = v33;
    *(v34 + 16) = 0;
    swift_willThrow();

    return p_name;
  }

  v30 = v18;
  LODWORD(v212) = v16;
  v213 = v12;
  v214 = a2;
  v31 = v18 >> 62;
  if ((v18 >> 62) > 1)
  {
    if (v31 != 2)
    {
      goto LABEL_15;
    }

    v36 = *(v17 + 16);
    v35 = *(v17 + 24);
    v37 = __OFSUB__(v35, v36);
    v38 = v35 - v36;
    if (v37)
    {
      goto LABEL_293;
    }

    if (v38 < 64)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if (!v31)
    {
      if (BYTE6(v18) >= 0x40uLL)
      {
        goto LABEL_22;
      }

LABEL_15:
      p_name = 0x80000001000F9D80;
      v39 = v17;
      sub_1000D16D4();
      swift_allocError();
      v41 = 0xD000000000000027;
LABEL_16:
      *v40 = v41;
      *(v40 + 8) = p_name;
      v42 = 1;
LABEL_17:
      *(v40 + 16) = v42;
      swift_willThrow();
      v43 = v39;
      goto LABEL_18;
    }

    if (__OFSUB__(HIDWORD(v17), v17))
    {
      goto LABEL_294;
    }

    if (HIDWORD(v17) - v17 < 64)
    {
      goto LABEL_15;
    }
  }

LABEL_22:
  v210 = v18 >> 62;
  v211 = p_name;
  if (v31 != 2)
  {
    if (v31 != 1)
    {
      v69 = 0;
      v56 = BYTE1(v17);
      v57 = BYTE2(v17);
      v55 = v17;
      v58 = BYTE3(v17);
      v59 = BYTE4(v17);
      v60 = BYTE5(v17);
      v61 = BYTE6(v17);
      v62 = HIBYTE(v17);
      v64 = v18 >> 8;
      v65 = v18 >> 16;
      v66 = v18 >> 24;
      v67 = HIDWORD(v30);
      v63 = v30;
      v68 = v30 >> 40;
      goto LABEL_34;
    }

    v45 = v17;
    if (v17 > v17 >> 32)
    {
      goto LABEL_299;
    }

    v46 = v17;
    v47 = sub_1000E9214();
    if (!v47)
    {
LABEL_327:
      sub_1000E9234();
      __break(1u);
LABEL_328:
      sub_1000E9234();
LABEL_329:
      __break(1u);
LABEL_330:
      sub_1000E9234();
LABEL_331:
      __break(1u);
LABEL_332:
      result = sub_1000E9E44();
      __break(1u);
      return result;
    }

    v48 = v47;
    v49 = sub_1000E9244();
    if (__OFSUB__(v45, v49))
    {
      goto LABEL_301;
    }

    v50 = (v45 - v49 + v48);
    v17 = sub_1000E9234();
    if (v50)
    {
      goto LABEL_32;
    }

    __break(1u);
  }

  v46 = v17;
  v51 = *(v17 + 16);
  v52 = sub_1000E9214();
  if (!v52)
  {
    sub_1000E9234();
LABEL_326:
    __break(1u);
    goto LABEL_327;
  }

  v53 = v52;
  v54 = sub_1000E9244();
  if (__OFSUB__(v51, v54))
  {
    goto LABEL_300;
  }

  v50 = (v51 - v54 + v53);
  sub_1000E9234();
  if (!v50)
  {
    goto LABEL_326;
  }

LABEL_32:
  v55 = *v50;
  v56 = v50[1];
  v57 = v50[2];
  v58 = v50[3];
  v59 = v50[4];
  v60 = v50[5];
  v61 = v50[6];
  LODWORD(v62) = v50[7];
  v63 = v50[8];
  LOBYTE(v64) = v50[9];
  LOBYTE(v65) = v50[10];
  LOBYTE(v66) = v50[11];
  LODWORD(v67) = *(v50 + 3);
  LODWORD(v208) = *(v50 + 7);
  v19 = *(v50 + 10);
  LODWORD(v207) = *(v50 + 9);
  p_name = *(v50 + 11);
  LODWORD(v12) = *(v50 + 12);
  LODWORD(v11) = *(v50 + 13);
  LODWORD(a2) = *(v50 + 14);
  LODWORD(v68) = v67 >> 8;
  v69 = v67 & 0xFFFF0000;
  LODWORD(v206) = *(v50 + 15);
  v17 = v46;
LABEL_34:
  for (i = 0; i != 12; ++i)
  {
    LOBYTE(v219) = v55;
    BYTE1(v219) = v56;
    BYTE2(v219) = v57;
    BYTE3(v219) = v58;
    BYTE4(v219) = v59;
    BYTE5(v219) = v60;
    BYTE6(v219) = v61;
    HIBYTE(v219) = v62;
    LOBYTE(v220) = v63;
    BYTE1(v220) = v64;
    BYTE2(v220) = v65;
    BYTE3(v220) = v66;
    v71 = *(&v219 + i);
    *&v217 = 0xBB31312058544BABLL;
    DWORD2(v217) = 169478669;
    if (v71 != *(&v217 + i))
    {
      if (v55 == 137 && v56 == 80 && v57 == 78 && v58 == 71 && v59 == 13 && v60 == 10 && v61 == 26 && v62 == 10)
      {
        v75 = v17;
        sub_1000CD910(v17, v30, v214, v213, v211, v212 & 0x1010101, v215);
        p_name = v76;
        sub_1000190E4(v75, v30);
        return p_name;
      }

      p_name = 0x80000001000F9B90;
      v39 = v17;
      sub_1000D16D4();
      swift_allocError();
      v41 = 0xD000000000000028;
      goto LABEL_16;
    }
  }

  if ((v69 | v67 | (v68 << 8)) != 0x4030201)
  {
    p_name = 0x80000001000F9BC0;
    v39 = v17;
    sub_1000D16D4();
    swift_allocError();
    *v40 = 0xD000000000000045;
    *(v40 + 8) = 0x80000001000F9BC0;
    v42 = 2;
    goto LABEL_17;
  }

  v205 = v17;
  if (v19)
  {
    v209 = v19;
    v72 = v211;
    v73 = v213;
    LOWORD(v74) = v212;
    if (p_name)
    {
      if (v12 <= 1)
      {
        LODWORD(v12) = 1;
      }

      if (a2 <= 1)
      {
        LODWORD(a2) = 1;
      }

LABEL_61:
      v77 = v216;
      goto LABEL_62;
    }

    v77 = v216;
    v79 = v208;
    if (a2)
    {
      if (v12 <= 1)
      {
        LODWORD(v12) = 1;
      }

      goto LABEL_75;
    }

    if (!v12)
    {
      LODWORD(v12) = 1;
    }
  }

  else
  {
    v72 = v211;
    v73 = v213;
    LOWORD(v74) = v212;
    if (p_name)
    {
      if (v12 <= 1)
      {
        LODWORD(v12) = 1;
      }

      if (a2 <= 1)
      {
        LODWORD(a2) = 1;
      }

      v209 = 1;
      goto LABEL_61;
    }

    v77 = v216;
    if (a2)
    {
      if (v12 <= 1)
      {
        LODWORD(v12) = 1;
      }

      p_name = 1;
      v209 = 1;
      goto LABEL_62;
    }

    v209 = 1;
    if (!v12)
    {
      goto LABEL_273;
    }

    v79 = v208;
  }

  LODWORD(a2) = 1;
LABEL_75:
  p_name = 1;
  v78 = v79;
LABEL_76:
  v80 = sub_1000CE548(v78);
  if (v77)
  {
    goto LABEL_77;
  }

  v212 = v207;
  v216 = a2;
  v207 = v12;
  if ((v74 & 0x100) != 0)
  {
    v80 = sub_1000CEE10(v80);
  }

  v81 = v80;
  v82 = [objc_allocWithZone(MTLTextureDescriptor) init];
  [v82 setPixelFormat:v81];
  [v82 setWidth:v212];
  [v82 setHeight:v209];
  [v82 setDepth:p_name];
  [v82 setMipmapLevelCount:v216];
  [v82 setUsage:v73];
  [v82 setStorageMode:v72];
  v83 = v214;
  v213 = v82;
  v203 = p_name;
  if (v11 == 6)
  {
    v84 = v207;
    if (v207 <= 1)
    {
      v85 = 5;
    }

    else
    {
      v85 = 6;
    }

    [v82 setTextureType:v85];
    v86 = 6 * v84;
    v87 = &selRef_setArrayLength_;
  }

  else if (p_name <= 1)
  {
    if (v209 < 2)
    {
      v88 = v207;
      v89 = v207 > 1;
    }

    else
    {
      v88 = v207;
      if (v207 <= 1)
      {
        v89 = 2;
      }

      else
      {
        v89 = 3;
      }
    }

    v82 = v213;
    [v213 setTextureType:v89];
    v87 = &selRef_setArrayLength_;
    v86 = v88;
  }

  else
  {
    v87 = &selRef_setTextureType_;
    v86 = 7;
    v82 = v213;
  }

  [v82 *v87];
  v90 = [v83 newTextureWithDescriptor:v82];
  a2 = v81;
  if (!v90)
  {
    if (qword_10012F700 != -1)
    {
      goto LABEL_310;
    }

    goto LABEL_136;
  }

  v201 = v90;
  v91 = 0;
  v74 = _swiftEmptyArrayStorage;
  while (2)
  {
    if (v91 < -64)
    {
      v92 = 1;
      v93 = 1;
      goto LABEL_107;
    }

    if (v91 < 64)
    {
      v93 = v212 >> v91;
      if (v212 >> v91)
      {
        goto LABEL_103;
      }
    }

    if (v91 <= 64)
    {
      v93 = 1;
      v92 = 1;
      if (v91 == 64)
      {
        goto LABEL_107;
      }

LABEL_103:
      v94 = v209 >> (v91 & 0x3F);
      goto LABEL_104;
    }

    v94 = 0;
    v93 = 1;
LABEL_104:
    if (v94 <= 1)
    {
      v92 = 1;
    }

    else
    {
      v92 = v94;
    }

LABEL_107:
    MTLPixelFormatGetInfoForDevice();
    if ((v220 & 0x400) == 0)
    {
      v95 = v93 * v222;
      if ((v93 * v222) >> 64 != (v93 * v222) >> 63)
      {
        goto LABEL_282;
      }

      if (__OFADD__(v95, 3))
      {
        goto LABEL_285;
      }

      v96 = (v95 + 3) & 0xFFFFFFFFFFFFFFFCLL;
      v97 = v96 * v92;
      if ((v96 * v92) >> 64 != (v96 * v92) >> 63)
      {
        goto LABEL_287;
      }

      goto LABEL_124;
    }

    v98 = v93 + v223;
    if (__OFADD__(v93, v223))
    {
      goto LABEL_283;
    }

    v37 = __OFSUB__(v98, 1);
    v99 = v98 - 1;
    if (!v37)
    {
      if (!v223)
      {
        goto LABEL_286;
      }

      if (v99 == 0x8000000000000000 && v223 == -1)
      {
        goto LABEL_297;
      }

      v100 = v92 + v224;
      if (__OFADD__(v92, v224))
      {
        goto LABEL_288;
      }

      v37 = __OFSUB__(v100, 1);
      v101 = v100 - 1;
      if (v37)
      {
        goto LABEL_289;
      }

      if (!v224)
      {
        goto LABEL_290;
      }

      if (v101 == 0x8000000000000000 && v224 == -1)
      {
        goto LABEL_298;
      }

      v102 = v99 / v223;
      v103 = v102 * v222;
      if ((v102 * v222) >> 64 != (v102 * v222) >> 63)
      {
        goto LABEL_291;
      }

      v97 = v103 * (v101 / v224);
      if ((v103 * (v101 / v224)) >> 64 != v97 >> 63)
      {
        goto LABEL_292;
      }

LABEL_124:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v74 = sub_1000A39E8(0, *(v74 + 2) + 1, 1, v74);
      }

      v105 = *(v74 + 2);
      v104 = *(v74 + 3);
      if (v105 >= v104 >> 1)
      {
        v74 = sub_1000A39E8((v104 > 1), v105 + 1, 1, v74);
      }

      *(v74 + 2) = v105 + 1;
      *&v74[8 * v105 + 32] = v97;
      v106 = v74 + 32;
      if (v11 != 6)
      {
        [v213 textureType];
      }

      if (v216 != ++v91)
      {
        continue;
      }

      v202 = a2;
      if (v211 == 2)
      {
        v188 = v74 + 32;
        type metadata accessor for SyncTextureLoader.SyncLoadingContext();
        v107 = swift_allocObject();
        v108 = v205;
        *(v107 + 16) = v205;
        *(v107 + 24) = v30;
        sub_100031E2C(v108, v30);
        sub_100031E2C(v108, v30);
        v109 = v214;
        swift_unknownObjectRetain();

        v208 = v107;
        v110 = sub_1000CEEFC(v108, v30, v109, v108, v30, v107);
        sub_1000190E4(v108, v30);
        swift_unknownObjectRelease();
        a2 = v203;
        if (v110)
        {
          v111 = sub_1000E98E4();
          p_name = &stru_10012CFF8.name;
          [v110 setLabel:v111];

          v112 = [v215 blitCommandEncoder];
          if (v112)
          {
            v113 = v112;
            v114 = sub_1000E98E4();
            [v113 setLabel:v114];

            v106 = v188;
            v115 = v110;
            v72 = v113;
            v128 = v115;
            goto LABEL_139;
          }

          sub_1000D16D4();
          swift_allocError();
          *v184 = 0xD000000000000038;
          *(v184 + 8) = 0x80000001000F9D10;
          *(v184 + 16) = 3;
          swift_willThrow();

          swift_unknownObjectRelease();
        }

        else
        {
LABEL_269:

          p_name = 0x80000001000F9CC0;
          sub_1000D16D4();
          swift_allocError();
          *v183 = 0xD00000000000001FLL;
          *(v183 + 8) = 0x80000001000F9CC0;
          *(v183 + 16) = 3;
          swift_willThrow();
        }

        swift_unknownObjectRelease();
        sub_1000190E4(v205, v30);

        return p_name;
      }

      v72 = 0;
      v128 = 0;
      a2 = v203;
LABEL_139:
      v129 = 0;
      v199 = v206 + 64;
      v190 = 6 * v207;
      if (v11 == 6)
      {
        v130 = 6 * v207;
      }

      else
      {
        v130 = v207;
      }

      v200 = v130;
      v189 = v205;
      v186 = v205 >> 32;
      if (v128)
      {
        v131 = v72 == 0;
      }

      else
      {
        v131 = 1;
      }

      v132 = v131;
      v191 = v132;
      v133 = v216;
      while (1)
      {
        if (v129 == v133)
        {
          goto LABEL_309;
        }

        v134 = v212 >> v129;
        if ((v212 >> v129) <= 1)
        {
          v134 = 1;
        }

        v135 = v209 >> v129;
        if ((v209 >> v129) <= 1)
        {
          v135 = 1;
        }

        v136 = a2 >> v129;
        if ((a2 >> v129) <= 1)
        {
          v136 = 1;
        }

        v215 = v129;
        v137 = v129 > 0x3F ? 1 : v134;
        v138 = v129 > 0x3F ? 1 : v135;
        v208 = v138;
        v139 = v129 > 0x3F ? 1 : v136;
        v204 = v139;
        MTLPixelFormatGetInfoForDevice();
        if ((v220 & 0x400) != 0)
        {
          v141 = v137 + v223;
          if (__OFADD__(v137, v223))
          {
            goto LABEL_315;
          }

          v37 = __OFSUB__(v141, 1);
          v142 = v141 - 1;
          if (v37)
          {
            goto LABEL_317;
          }

          if (!v223)
          {
            goto LABEL_319;
          }

          if (v142 == 0x8000000000000000 && v223 == -1)
          {
            goto LABEL_324;
          }

          v198 = v142 / v223 * v222;
          if ((v142 / v223 * v222) >> 64 != v198 >> 63)
          {
            goto LABEL_320;
          }
        }

        else
        {
          v140 = v137 * v222;
          if ((v137 * v222) >> 64 != (v137 * v222) >> 63)
          {
            goto LABEL_316;
          }

          if (__OFADD__(v140, 3))
          {
            goto LABEL_318;
          }

          v198 = (v140 + 3) & 0xFFFFFFFFFFFFFFFCLL;
        }

        sub_100098A34(v137, v208, &v219);
        v197 = v219;
        v196 = v220;
        v195 = v221;
        v194 = v222;
        v143 = v190;
        v193 = v223;
        v192 = v224;
        if (v11 != 6)
        {
          v144 = [v213 textureType];
          v143 = v207;
          if (v144 == 7)
          {
            break;
          }
        }

        v204 = v143;
        if (v143)
        {
          break;
        }

        v146 = v215;
LABEL_263:
        v129 = v146 + 1;
        v133 = v216;
        if (v129 == v216)
        {
          if (v72)
          {
            [v72 endEncoding];
            swift_unknownObjectRelease();
          }

          swift_unknownObjectRelease();
          sub_1000190E4(v205, v30);

          return v201;
        }
      }

      v73 = 0;
LABEL_181:
      v208 = v73;
      if (v11 == 6)
      {
        v147 = v73;
        v73 /= 6uLL;
        v206 = (v147 - 6 * v73);
      }

      else
      {
        v206 = 0;
      }

      if ([v213 textureType] == 7)
      {
        v148 = v215;
        v149 = v200;
        if (v215 >= *(v74 + 2))
        {
          goto LABEL_302;
        }

        v150 = *&v106[8 * v215];
        v151 = v205;
      }

      else
      {
        v150 = 0;
        v151 = v205;
        v148 = v215;
        v149 = v200;
      }

      if (v211 == 2)
      {
        if (v191)
        {
          goto LABEL_332;
        }

        if (v148)
        {
          v152 = 0;
          v153 = v199;
          while (1)
          {
            v37 = __OFADD__(v153, 4);
            v154 = v153 + 4;
            if (v37)
            {
              goto LABEL_276;
            }

            if (v152 == *(v74 + 2))
            {
              goto LABEL_279;
            }

            if (v149)
            {
              v155 = *&v106[8 * v152];
              v156 = v149;
              while (1)
              {
                v37 = __OFADD__(v154, v155);
                v154 += v155;
                if (v37)
                {
                  break;
                }

                if (v11 == 6)
                {
                  v37 = __OFADD__(v154, 3);
                  v157 = v154 + 3;
                  if (v37)
                  {
                    goto LABEL_272;
                  }

                  v154 = v157 & 0xFFFFFFFFFFFFFFFCLL;
                }

                if (!--v156)
                {
                  goto LABEL_201;
                }
              }

              __break(1u);
              goto LABEL_268;
            }

LABEL_201:
            v37 = __OFADD__(v154, 3);
            v158 = v154 + 3;
            if (v37)
            {
              goto LABEL_281;
            }

            ++v152;
            v153 = v158 & 0xFFFFFFFFFFFFFFFCLL;
            if (v152 == v148)
            {
              goto LABEL_241;
            }
          }
        }

        v153 = v199;
LABEL_241:
        v175 = v153 + 4;
        if (__OFADD__(v153, 4))
        {
          goto LABEL_303;
        }

        if (v148 >= *(v74 + 2))
        {
          goto LABEL_305;
        }

        v176 = *&v106[8 * v148];
        if (v11 == 6)
        {
          v177 = 6 * v73;
          if ((v73 * 6) >> 64 != (6 * v73) >> 63)
          {
            goto LABEL_312;
          }

          v73 = v206 + v177;
          if (__OFADD__(v177, v206))
          {
            goto LABEL_314;
          }

          if (v73 < 0)
          {
            goto LABEL_308;
          }
        }

        if (v73)
        {
          while (1)
          {
            v37 = __OFADD__(v175, v176);
            v175 += v176;
            if (v37)
            {
              break;
            }

            if (v11 == 6)
            {
              if (__OFADD__(v175, 3))
              {
                goto LABEL_296;
              }

              v175 = (v175 + 3) & 0xFFFFFFFFFFFFFFFCLL;
            }

            if (!--v73)
            {
              goto LABEL_179;
            }
          }

          __break(1u);
          goto LABEL_275;
        }

LABEL_179:
        v219 = v194;
        v220 = v193;
        v221 = v192;
        *&v217 = v197;
        *(&v217 + 1) = v196;
        v218 = v195;
        v145 = v208;
        [v72 copyFromBuffer:v128 sourceOffset:v208 sourceBytesPerRow:v148 sourceBytesPerImage:&v217 sourceSize:? toTexture:? destinationSlice:? destinationLevel:? destinationOrigin:?];
        goto LABEL_180;
      }

      if (v148)
      {
        v159 = 0;
        v160 = v199;
        while (1)
        {
          v37 = __OFADD__(v160, 4);
          v161 = v160 + 4;
          if (v37)
          {
            goto LABEL_277;
          }

          if (v159 == *(v74 + 2))
          {
            goto LABEL_278;
          }

          if (v149)
          {
            break;
          }

LABEL_216:
          v37 = __OFADD__(v161, 3);
          v165 = v161 + 3;
          if (v37)
          {
            goto LABEL_280;
          }

          ++v159;
          v160 = v165 & 0xFFFFFFFFFFFFFFFCLL;
          if (v159 == v148)
          {
            goto LABEL_220;
          }
        }

        v162 = *&v106[8 * v159];
        v163 = v149;
        while (2)
        {
          v37 = __OFADD__(v161, v162);
          v161 += v162;
          if (v37)
          {
LABEL_268:
            __break(1u);
            goto LABEL_269;
          }

          if (v11 != 6)
          {
LABEL_210:
            if (!--v163)
            {
              goto LABEL_216;
            }

            continue;
          }

          break;
        }

        v37 = __OFADD__(v161, 3);
        v164 = v161 + 3;
        if (!v37)
        {
          v161 = v164 & 0xFFFFFFFFFFFFFFFCLL;
          goto LABEL_210;
        }

        __break(1u);
LABEL_272:
        __break(1u);
LABEL_273:
        LODWORD(v12) = 1;
        LODWORD(a2) = 1;
        p_name = 1;
LABEL_62:
        v78 = v208;
        goto LABEL_76;
      }

      v160 = v199;
LABEL_220:
      a2 = v160 + 4;
      if (__OFADD__(v160, 4))
      {
        goto LABEL_304;
      }

      v166 = v210;
      if (v148 >= *(v74 + 2))
      {
        goto LABEL_306;
      }

      v167 = *&v106[8 * v148];
      if (v11 == 6)
      {
        v168 = 6 * v73;
        if ((v73 * 6) >> 64 != (6 * v73) >> 63)
        {
          __break(1u);
LABEL_312:
          __break(1u);
LABEL_313:
          __break(1u);
LABEL_314:
          __break(1u);
LABEL_315:
          __break(1u);
LABEL_316:
          __break(1u);
LABEL_317:
          __break(1u);
LABEL_318:
          __break(1u);
LABEL_319:
          __break(1u);
LABEL_320:
          __break(1u);
LABEL_321:
          __break(1u);
LABEL_322:
          __break(1u);
LABEL_323:
          __break(1u);
LABEL_324:
          __break(1u);
        }

        v73 = v206 + v168;
        v166 = v210;
        if (__OFADD__(v168, v206))
        {
          goto LABEL_313;
        }

        if (v73 < 0)
        {
          goto LABEL_307;
        }
      }

      if (v73)
      {
        while (1)
        {
          v37 = __OFADD__(a2, v167);
          a2 += v167;
          if (v37)
          {
            break;
          }

          if (v11 == 6)
          {
            if (__OFADD__(a2, 3))
            {
              goto LABEL_295;
            }

            a2 = (a2 + 3) & 0xFFFFFFFFFFFFFFFCLL;
          }

          if (!--v73)
          {
            goto LABEL_227;
          }
        }

LABEL_275:
        __break(1u);
LABEL_276:
        __break(1u);
LABEL_277:
        __break(1u);
LABEL_278:
        __break(1u);
LABEL_279:
        __break(1u);
LABEL_280:
        __break(1u);
LABEL_281:
        __break(1u);
LABEL_282:
        __break(1u);
LABEL_283:
        __break(1u);
        break;
      }

LABEL_227:
      if (v166 > 1)
      {
        if (v166 == 2)
        {
          v206 = v72;
          v169 = v150;
          v187 = v128;
          v188 = v106;
          v170 = *(v151 + 16);
          v171 = sub_1000E9214();
          if (!v171)
          {
            goto LABEL_330;
          }

          v172 = v171;
          v173 = sub_1000E9244();
          if (__OFSUB__(v170, v173))
          {
            goto LABEL_322;
          }

          v174 = v170 - v173 + v172;
          sub_1000E9234();
          if (!v174)
          {
            goto LABEL_331;
          }

          v219 = v197;
          v220 = v196;
          v221 = v195;
          v222 = v194;
          v223 = v193;
          v224 = v192;
          v145 = v208;
          [v201 replaceRegion:&v219 mipmapLevel:v215 slice:v208 withBytes:v174 + a2 bytesPerRow:v198 bytesPerImage:v169];
          a2 = v203;
          v106 = v188;
          goto LABEL_259;
        }

        *(&v217 + 6) = 0;
        *&v217 = 0;
        v219 = v197;
        v220 = v196;
        v221 = v195;
        v222 = v194;
        v223 = v193;
        v224 = v192;
        v145 = v208;
        [v201 replaceRegion:&v219 mipmapLevel:v148 slice:v208 withBytes:&v217 + a2 bytesPerRow:v198 bytesPerImage:v150];
LABEL_261:
        a2 = v203;
      }

      else
      {
        v145 = v208;
        if (!v166)
        {
          *&v217 = v151;
          WORD4(v217) = v30;
          BYTE10(v217) = BYTE2(v30);
          BYTE11(v217) = BYTE3(v30);
          BYTE12(v217) = BYTE4(v30);
          BYTE13(v217) = BYTE5(v30);
          v219 = v197;
          v220 = v196;
          v221 = v195;
          v222 = v194;
          v223 = v193;
          v224 = v192;
          [v201 replaceRegion:&v219 mipmapLevel:v148 slice:v208 withBytes:&v217 + a2 bytesPerRow:v198 bytesPerImage:v150];
          goto LABEL_261;
        }

        v188 = v150;
        v206 = v72;
        if (v186 < v189)
        {
          goto LABEL_321;
        }

        v187 = v128;
        v178 = sub_1000E9214();
        if (!v178)
        {
          goto LABEL_328;
        }

        v179 = v178;
        v180 = v106;
        v181 = sub_1000E9244();
        if (__OFSUB__(v189, v181))
        {
          goto LABEL_323;
        }

        v182 = v189 - v181 + v179;
        sub_1000E9234();
        if (!v182)
        {
          goto LABEL_329;
        }

        v219 = v197;
        v220 = v196;
        v221 = v195;
        v222 = v194;
        v223 = v193;
        v224 = v192;
        v145 = v208;
        [v201 replaceRegion:&v219 mipmapLevel:v215 slice:v208 withBytes:v182 + a2 bytesPerRow:v198 bytesPerImage:v188];
        a2 = v203;
        v106 = v180;
LABEL_259:
        v128 = v187;
        v72 = v206;
      }

LABEL_180:
      v73 = v145 + 1;
      v146 = v215;
      if (v73 == v204)
      {
        goto LABEL_263;
      }

      goto LABEL_181;
    }

    break;
  }

  __break(1u);
LABEL_285:
  __break(1u);
LABEL_286:
  __break(1u);
LABEL_287:
  __break(1u);
LABEL_288:
  __break(1u);
LABEL_289:
  __break(1u);
LABEL_290:
  __break(1u);
LABEL_291:
  __break(1u);
LABEL_292:
  __break(1u);
LABEL_293:
  __break(1u);
LABEL_294:
  __break(1u);
LABEL_295:
  __break(1u);
LABEL_296:
  __break(1u);
LABEL_297:
  __break(1u);
LABEL_298:
  __break(1u);
LABEL_299:
  __break(1u);
LABEL_300:
  __break(1u);
LABEL_301:
  __break(1u);
LABEL_302:
  __break(1u);
LABEL_303:
  __break(1u);
LABEL_304:
  __break(1u);
LABEL_305:
  __break(1u);
LABEL_306:
  __break(1u);
LABEL_307:
  __break(1u);
LABEL_308:
  __break(1u);
LABEL_309:
  __break(1u);
LABEL_310:
  swift_once();
LABEL_136:
  v116 = sub_1000E96A4();
  sub_100007488(v116, qword_100133AE0);
  v117 = sub_1000E9684();
  v118 = sub_1000E9BA4();
  v119 = os_log_type_enabled(v117, v118);
  v120 = v213;
  if (v119)
  {
    v121 = swift_slowAlloc();
    v122 = swift_slowAlloc();
    v219 = v122;
    *v121 = 136315138;
    *&v217 = a2;
    type metadata accessor for MTLPixelFormat(0);
    v123 = sub_1000E9944();
    v125 = sub_100093A3C(v123, v124, &v219);

    *(v121 + 4) = v125;
    _os_log_impl(&_mh_execute_header, v117, v118, "Failed to create MTLTexture with pixel format %s", v121, 0xCu);
    sub_100012710(v122);
  }

  v219 = 0;
  v220 = 0xE000000000000000;
  sub_1000E9D64(43);
  v226._object = 0x80000001000F9C10;
  v226._countAndFlagsBits = 0xD000000000000028;
  sub_1000E99A4(v226);
  *&v217 = a2;
  type metadata accessor for MTLPixelFormat(0);
  sub_1000E9DF4();
  v227._countAndFlagsBits = 46;
  v227._object = 0xE100000000000000;
  sub_1000E99A4(v227);
  v126 = v219;
  p_name = v220;
  sub_1000D16D4();
  swift_allocError();
  *v127 = v126;
  *(v127 + 8) = p_name;
  *(v127 + 16) = 3;
  swift_willThrow();

LABEL_77:
  v43 = v205;
LABEL_18:
  sub_1000190E4(v43, v30);
  return p_name;
}

void sub_1000D101C(void *a1, unsigned __int8 *a2)
{
  sub_1000E9334();

  p_name = &stru_10012CFF8.name;
  v6 = [a1 pixelFormat];
  if (v6 == [a2 pixelFormat] && (v7 = objc_msgSend(a1, "width"), v7 == objc_msgSend(a2, "width")) && (v8 = objc_msgSend(a1, "height"), v8 == objc_msgSend(a2, "height")))
  {
    [a1 pixelFormat];
    MTLPixelFormatGetInfo();
    if ((v63 & 0x400) == 0)
    {
      v9 = v65;
      v10 = [a1 width];
      v11 = [a1 height];
      v12 = v10 * v11;
      if ((v10 * v11) >> 64 == (v10 * v11) >> 63)
      {
        if (v12 >= 16)
        {
          v2 = 16;
        }

        else
        {
          v2 = v10 * v11;
        }

        if ((v2 * v65) >> 64 == (v2 * v65) >> 63)
        {
          v59 = v2 * v65;
          v60 = swift_slowAlloc();
          v61 = swift_slowAlloc();
          v13 = [a1 width];
          p_name = 16;
          if (v13 >= 16)
          {
            v14 = 16;
          }

          else
          {
            v14 = v13;
          }

          v15 = [a1 width];
          if (v15 >= 16)
          {
            v16 = 16;
          }

          else
          {
            v16 = v15;
          }

          if (v15)
          {
            if (v12 == 0x8000000000000000 && v15 == -1)
            {
              goto LABEL_64;
            }

            v17 = v2 / v16;
            if (v17 <= 1)
            {
              v18 = 1;
            }

            else
            {
              v18 = v17;
            }

            sub_100098A34(v14, v18, &v62);
            v19 = v62;
            v2 = v63;
            p_name = v64;
            v20 = v65;
            v57 = v67;
            v58 = v66;
            v21 = [a1 width];
            v22 = 16;
            if (v21 < 16)
            {
              v22 = v21;
            }

            v23 = v22 * v9;
            if ((v22 * v9) >> 64 == (v22 * v9) >> 63)
            {
              v62 = v19;
              v63 = v2;
              v64 = p_name;
              v65 = v20;
              v9 = p_name;
              v66 = v58;
              v67 = v57;
              [a1 getBytes:v60 bytesPerRow:v23 fromRegion:&v62 mipmapLevel:0];
              v62 = v19;
              v63 = v2;
              v64 = p_name;
              v65 = v20;
              v66 = v58;
              v67 = v57;
              [a2 getBytes:v61 bytesPerRow:v23 fromRegion:&v62 mipmapLevel:0];
              p_name = v59;
              if ((v59 & 0x8000000000000000) == 0)
              {
                a2 = v60;
                if (!v59)
                {
LABEL_57:

                  return;
                }

                v24 = 0;
                v9 = 0;
                v25 = v60;
                v26 = v61;
                v27 = v59;
                do
                {
                  v29 = *v25++;
                  v28 = v29;
                  v31 = *v26++;
                  v30 = v31;
                  if (v28 != v31)
                  {
                    v32 = __OFADD__(v9++, 1);
                    if (v32)
                    {
                      __break(1u);
                      goto LABEL_59;
                    }

                    v33 = v28 - v30;
                    if (v33 < 0)
                    {
                      v33 = -v33;
                    }

                    v32 = __OFADD__(v24, v33);
                    v24 += v33;
                    if (v32)
                    {
                      __break(1u);
                      goto LABEL_36;
                    }
                  }

                  --v27;
                }

                while (v27);
                if (!v9)
                {
                  goto LABEL_57;
                }

                v38 = v24 / v9;
                sub_1000125FC(&unk_100131D80, &unk_1000ECDA0);
                v39 = swift_allocObject();
                *(v39 + 16) = xmmword_1000EC870;
                *(v39 + 56) = &type metadata for Float;
                *(v39 + 64) = &protocol witness table for Float;
                *(v39 + 32) = v38;
                v2 = sub_1000E9924();
                a2 = v40;
                if (qword_10012F700 == -1)
                {
LABEL_44:
                  v41 = sub_1000E96A4();
                  sub_100007488(v41, qword_100133AE0);

                  v42 = sub_1000E9684();
                  v43 = sub_1000E9BA4();

                  if (os_log_type_enabled(v42, v43))
                  {
                    v44 = swift_slowAlloc();
                    v45 = swift_slowAlloc();
                    v62 = v45;
                    *v44 = 134218498;
                    *(v44 + 4) = v9;
                    *(v44 + 12) = 2048;
                    *(v44 + 14) = p_name;
                    *(v44 + 22) = 2080;
                    v46 = sub_100093A3C(v2, a2, &v62);
                    v47 = v43;
                    v48 = v46;

                    *(v44 + 24) = v48;
                    _os_log_impl(&_mh_execute_header, v42, v47, "  ❌ %ld/%ld bytes differ (avg diff: %s)", v44, 0x20u);
                    sub_100012710(v45);
                  }

                  else
                  {
                  }

                  v49 = 0;
                  v50 = 0;
                  if (v9 >= 8)
                  {
                    v51 = 8;
                  }

                  else
                  {
                    v51 = v9;
                  }

                  v52 = v60;
                  do
                  {
                    if (v49 < v51 && v52[v50] != *(v61 + v50))
                    {
                      v53 = sub_1000E9684();
                      v54 = sub_1000E9BA4();
                      if (os_log_type_enabled(v53, v54))
                      {
                        v55 = swift_slowAlloc();
                        *v55 = 134218496;
                        *(v55 + 4) = v50;
                        v56 = v60[v50];
                        *(v55 + 12) = 256;
                        *(v55 + 14) = v56;
                        *(v55 + 15) = 256;
                        *(v55 + 17) = *(v61 + v50);
                        _os_log_impl(&_mh_execute_header, v53, v54, "    Byte %ld: MTK=%hhu, Sync=%hhu", v55, 0x12u);
                        v52 = v60;
                      }

                      ++v49;
                    }

                    ++v50;
                  }

                  while (p_name != v50);
                  goto LABEL_57;
                }

LABEL_65:
                swift_once();
                goto LABEL_44;
              }

              goto LABEL_63;
            }

LABEL_62:
            __break(1u);
LABEL_63:
            __break(1u);
LABEL_64:
            __break(1u);
            goto LABEL_65;
          }

LABEL_61:
          __break(1u);
          goto LABEL_62;
        }
      }

      else
      {
LABEL_59:
        __break(1u);
      }

      __break(1u);
      goto LABEL_61;
    }
  }

  else
  {
LABEL_36:
    if (qword_10012F700 != -1)
    {
      swift_once();
    }

    v34 = sub_1000E96A4();
    sub_100007488(v34, qword_100133AE0);
    v35 = sub_1000E9684();
    v36 = sub_1000E9BA4();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v35, v36, "⚠️ Cannot compare pixel data - textures have different properties", v37, 2u);
    }
  }
}

unint64_t sub_1000D16D4()
{
  result = qword_100133B98;
  if (!qword_100133B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133B98);
  }

  return result;
}

uint64_t sub_1000D1730(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1000D1748()
{
  result = qword_100133BA0;
  if (!qword_100133BA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100133BA0);
  }

  return result;
}

void sub_1000D17B0()
{
  sub_1000AB384(&off_10011A440);
  v353 = v0;
  type metadata accessor for ToriLight();
  v1 = swift_allocObject();
  *(v1 + 48) = 0;
  *(v1 + 52) = 0;
  *(v1 + 56) = 257;
  *(v1 + 64) = _swiftEmptyArrayStorage;
  *(v1 + 16) = 2;
  *(v1 + 32) = v353;
  swift_beginAccess();
  *(v1 + 48) = 1;
  swift_beginAccess();
  *(v1 + 52) = 1065353216;
  swift_beginAccess();
  *(v1 + 56) = 0;
  swift_beginAccess();
  *(v1 + 57) = 1;
  sub_1000AB384(&off_10011A470);
  v354 = v2;
  v3 = swift_allocObject();
  *(v3 + 48) = 0;
  *(v3 + 52) = 0;
  *(v3 + 56) = 257;
  *(v3 + 64) = _swiftEmptyArrayStorage;
  v288 = (v3 + 64);
  *(v3 + 16) = 2;
  *(v3 + 32) = v354;
  swift_beginAccess();
  *(v3 + 48) = 1;
  swift_beginAccess();
  *(v3 + 52) = 1065353216;
  swift_beginAccess();
  *(v3 + 56) = 1;
  swift_beginAccess();
  v297 = v3;
  *(v3 + 57) = 0;
  sub_1000AB384(&off_10011A4A0);
  v355 = v4;
  v5 = swift_allocObject();
  *(v5 + 48) = 0;
  *(v5 + 52) = 0;
  *(v5 + 56) = 257;
  *(v5 + 64) = _swiftEmptyArrayStorage;
  v294 = (v5 + 64);
  *(v5 + 16) = 2;
  *(v5 + 32) = v355;
  swift_beginAccess();
  *(v5 + 48) = 1;
  swift_beginAccess();
  *(v5 + 52) = 1065353216;
  swift_beginAccess();
  *(v5 + 56) = 1;
  swift_beginAccess();
  *(v5 + 57) = 1;
  sub_1000AB384(&off_10011A4D0);
  v356 = v6;
  v7 = swift_allocObject();
  *(v7 + 48) = 0;
  *(v7 + 52) = 0;
  *(v7 + 56) = 257;
  *(v7 + 64) = _swiftEmptyArrayStorage;
  v287 = (v7 + 64);
  *(v7 + 16) = 2;
  *(v7 + 32) = v356;
  swift_beginAccess();
  *(v7 + 48) = 0;
  swift_beginAccess();
  *(v7 + 52) = 1065353216;
  swift_beginAccess();
  *(v7 + 56) = 1;
  swift_beginAccess();
  *(v7 + 57) = 1;
  sub_1000AB384(&off_10011A500);
  v357 = v8;
  v9 = swift_allocObject();
  *(v9 + 48) = 0;
  *(v9 + 52) = 0;
  *(v9 + 56) = 257;
  *(v9 + 64) = _swiftEmptyArrayStorage;
  v289 = (v9 + 64);
  *(v9 + 16) = 2;
  *(v9 + 32) = v357;
  swift_beginAccess();
  *(v9 + 48) = 1;
  swift_beginAccess();
  *(v9 + 52) = 1065353216;
  swift_beginAccess();
  *(v9 + 56) = 1;
  swift_beginAccess();
  v296 = v9;
  *(v9 + 57) = 1;
  sub_1000AB384(&off_10011A530);
  v358 = v10;
  v11 = swift_allocObject();
  *(v11 + 48) = 0;
  *(v11 + 52) = 0;
  *(v11 + 56) = 257;
  *(v11 + 64) = _swiftEmptyArrayStorage;
  v290 = (v11 + 64);
  *(v11 + 16) = 2;
  *(v11 + 32) = v358;
  swift_beginAccess();
  *(v11 + 48) = 1;
  swift_beginAccess();
  *(v11 + 52) = 1065353216;
  swift_beginAccess();
  *(v11 + 56) = 1;
  swift_beginAccess();
  *(v11 + 57) = 1;
  sub_1000AB384(&off_10011A560);
  v359 = v12;
  v13 = swift_allocObject();
  *(v13 + 48) = 0;
  *(v13 + 52) = 0;
  *(v13 + 56) = 257;
  *(v13 + 64) = _swiftEmptyArrayStorage;
  v342 = (v13 + 64);
  *(v13 + 16) = 2;
  *(v13 + 32) = v359;
  swift_beginAccess();
  *(v13 + 48) = 1;
  swift_beginAccess();
  *(v13 + 52) = 1065353216;
  swift_beginAccess();
  *(v13 + 56) = 1;
  swift_beginAccess();
  v295 = v13;
  *(v13 + 57) = 1;
  sub_1000AB384(&off_10011A590);
  v360 = v14;
  v15 = swift_allocObject();
  *(v15 + 48) = 0;
  *(v15 + 52) = 0;
  *(v15 + 56) = 257;
  *(v15 + 64) = _swiftEmptyArrayStorage;
  v346 = (v15 + 64);
  *(v15 + 16) = 2;
  *(v15 + 32) = v360;
  swift_beginAccess();
  *(v15 + 48) = 1;
  swift_beginAccess();
  *(v15 + 52) = 1065353216;
  swift_beginAccess();
  *(v15 + 56) = 0;
  swift_beginAccess();
  v293 = v15;
  *(v15 + 57) = 1;
  sub_1000AB384(&off_10011A5C0);
  v361 = v16;
  v17 = swift_allocObject();
  *(v17 + 48) = 0;
  *(v17 + 52) = 0;
  *(v17 + 56) = 257;
  *(v17 + 64) = _swiftEmptyArrayStorage;
  v350 = (v17 + 64);
  *(v17 + 16) = 2;
  *(v17 + 32) = v361;
  swift_beginAccess();
  *(v17 + 48) = 1;
  swift_beginAccess();
  *(v17 + 52) = 1065353216;
  swift_beginAccess();
  *(v17 + 56) = 1;
  swift_beginAccess();
  *(v17 + 57) = 1;
  sub_1000AB384(&off_10011A5F0);
  v333 = v18;
  v19 = swift_allocObject();
  *(v19 + 48) = 0;
  *(v19 + 52) = 0;
  *(v19 + 56) = 257;
  *(v19 + 64) = _swiftEmptyArrayStorage;
  v362 = (v19 + 64);
  *(v19 + 16) = 2;
  *(v19 + 32) = v333;
  swift_beginAccess();
  *(v19 + 48) = 1;
  swift_beginAccess();
  *(v19 + 52) = 1065353216;
  swift_beginAccess();
  *(v19 + 56) = 1;
  swift_beginAccess();
  v292 = v19;
  *(v19 + 57) = 1;
  sub_1000AB384(&off_10011A620);
  v334 = v20;
  v291 = swift_allocObject();
  *(v291 + 48) = 0;
  *(v291 + 52) = 0;
  *(v291 + 56) = 257;
  *(v291 + 64) = _swiftEmptyArrayStorage;
  v21 = (v291 + 64);
  *(v291 + 16) = 2;
  *(v291 + 32) = v334;
  swift_beginAccess();
  *(v291 + 48) = 1;
  swift_beginAccess();
  *(v291 + 52) = 1065353216;
  swift_beginAccess();
  *(v291 + 56) = 1;
  swift_beginAccess();
  *(v291 + 57) = 1;
  sub_1000AB384(&off_10011A650);
  v335 = v22;
  sub_1000AB384(&off_10011A680);
  v327 = v23;
  swift_beginAccess();
  v24 = *(v1 + 64);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v26 = (v1 + 64);
  *(v1 + 64) = v24;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v24 = sub_1000A35A4(0, *(v24 + 2) + 1, 1, v24);
    *(v1 + 64) = v24;
  }

  v28 = *(v24 + 2);
  v27 = *(v24 + 3);
  if (v28 >= v27 >> 1)
  {
    v24 = sub_1000A35A4((v27 > 1), v28 + 1, 1, v24);
  }

  *(v24 + 2) = v28 + 1;
  v29 = &v24[80 * v28];
  *(v29 + 4) = 0x4041E9BF00000000;
  *(v29 + 3) = v335;
  *(v29 + 16) = 1082501756;
  *(v29 + 5) = v327;
  *(v29 + 12) = 0x401E147B00000000;
  *v26 = v24;
  swift_endAccess();
  sub_1000AB384(&off_10011A6B0);
  v328 = v30;
  sub_1000AB384(&off_10011A6E0);
  v325 = v31;
  swift_beginAccess();
  v32 = *v288;
  v33 = swift_isUniquelyReferenced_nonNull_native();
  *v288 = v32;
  if ((v33 & 1) == 0)
  {
    v32 = sub_1000A35A4(0, *(v32 + 2) + 1, 1, v32);
    *v288 = v32;
  }

  v35 = *(v32 + 2);
  v34 = *(v32 + 3);
  if (v35 >= v34 >> 1)
  {
    v32 = sub_1000A35A4((v34 > 1), v35 + 1, 1, v32);
  }

  *(v32 + 2) = v35 + 1;
  v36 = &v32[80 * v35];
  *(v36 + 4) = 0x40490FDA00000000;
  *(v36 + 3) = v328;
  *(v36 + 16) = 1078649407;
  *(v36 + 5) = v325;
  *(v36 + 12) = 0x3F3AE14800000000;
  *v288 = v32;
  swift_endAccess();
  sub_1000AB384(&off_10011A710);
  v326 = v37;
  sub_1000AB384(&off_10011A740);
  v299 = v38;
  swift_beginAccess();
  v39 = *v287;
  v40 = swift_isUniquelyReferenced_nonNull_native();
  *v287 = v39;
  if ((v40 & 1) == 0)
  {
    v39 = sub_1000A35A4(0, *(v39 + 2) + 1, 1, v39);
    *v287 = v39;
  }

  v42 = *(v39 + 2);
  v41 = *(v39 + 3);
  if (v42 >= v41 >> 1)
  {
    v39 = sub_1000A35A4((v41 > 1), v42 + 1, 1, v39);
  }

  *(v39 + 2) = v42 + 1;
  v43 = &v39[80 * v42];
  *(v43 + 4) = 0x3C8EFA3500000000;
  *(v43 + 3) = v326;
  *(v43 + 16) = 1078234704;
  *(v43 + 5) = v299;
  *(v43 + 12) = 0x41DCE14800000000;
  *v287 = v39;
  swift_endAccess();
  sub_1000AB384(&off_10011A770);
  v300 = v44;
  sub_1000AB384(&off_10011A7A0);
  v267 = v45;
  swift_beginAccess();
  v46 = *v289;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  *v289 = v46;
  if ((v47 & 1) == 0)
  {
    v46 = sub_1000A35A4(0, *(v46 + 2) + 1, 1, v46);
    *v289 = v46;
  }

  v49 = *(v46 + 2);
  v48 = *(v46 + 3);
  if (v49 >= v48 >> 1)
  {
    v46 = sub_1000A35A4((v48 > 1), v49 + 1, 1, v46);
  }

  *(v46 + 2) = v49 + 1;
  v50 = &v46[80 * v49];
  *(v50 + 4) = 0x40197A2E00000000;
  *(v50 + 3) = v300;
  *(v50 + 16) = 1078027389;
  *(v50 + 5) = v267;
  *(v50 + 12) = 0x3F4A3D713EBB645ALL;
  *v289 = v46;
  swift_endAccess();
  sub_1000AB384(&off_10011A7D0);
  v301 = v51;
  sub_1000AB384(&off_10011A800);
  v268 = v52;
  swift_beginAccess();
  v53 = *v290;
  v54 = swift_isUniquelyReferenced_nonNull_native();
  *v290 = v53;
  if ((v54 & 1) == 0)
  {
    v53 = sub_1000A35A4(0, *(v53 + 2) + 1, 1, v53);
    *v290 = v53;
  }

  v56 = *(v53 + 2);
  v55 = *(v53 + 3);
  if (v56 >= v55 >> 1)
  {
    v53 = sub_1000A35A4((v55 > 1), v56 + 1, 1, v53);
  }

  *(v53 + 2) = v56 + 1;
  v57 = &v53[80 * v56];
  *(v57 + 4) = 0x40197A2E00000000;
  *(v57 + 3) = v301;
  *(v57 + 16) = 1075112755;
  *(v57 + 5) = v268;
  *(v57 + 12) = 0x3F4A3D713EBB645ALL;
  *v290 = v53;
  swift_endAccess();
  sub_1000AB384(&off_10011A830);
  v302 = v58;
  sub_1000AB384(&off_10011A860);
  v269 = v59;
  swift_beginAccess();
  v60 = *v342;
  v61 = swift_isUniquelyReferenced_nonNull_native();
  *v342 = v60;
  if ((v61 & 1) == 0)
  {
    v60 = sub_1000A35A4(0, *(v60 + 2) + 1, 1, v60);
    *v342 = v60;
  }

  v63 = *(v60 + 2);
  v62 = *(v60 + 3);
  if (v63 >= v62 >> 1)
  {
    v60 = sub_1000A35A4((v62 > 1), v63 + 1, 1, v60);
  }

  *(v60 + 2) = v63 + 1;
  v64 = &v60[80 * v63];
  *(v64 + 4) = 0x4004EC9D00000000;
  *(v64 + 3) = v302;
  *(v64 + 16) = 1084793530;
  *(v64 + 5) = v269;
  *(v64 + 12) = 0x3FECCCCD3EC28F5CLL;
  *v342 = v60;
  swift_endAccess();
  sub_1000AB384(&off_10011A890);
  v303 = v65;
  sub_1000AB384(&off_10011A8C0);
  v270 = v66;
  swift_beginAccess();
  v67 = *v346;
  v68 = swift_isUniquelyReferenced_nonNull_native();
  *v346 = v67;
  if ((v68 & 1) == 0)
  {
    v67 = sub_1000A35A4(0, *(v67 + 2) + 1, 1, v67);
    *v346 = v67;
  }

  v70 = *(v67 + 2);
  v69 = *(v67 + 3);
  if (v70 >= v69 >> 1)
  {
    v67 = sub_1000A35A4((v69 > 1), v70 + 1, 1, v67);
  }

  *(v67 + 2) = v70 + 1;
  v71 = &v67[80 * v70];
  *(v71 + 4) = 0x4021BE3F00000000;
  *(v71 + 3) = v303;
  *(v71 + 16) = 1072563590;
  *(v71 + 5) = v270;
  *(v71 + 12) = 0x3FECCCCD3EC28F5CLL;
  *v346 = v67;
  swift_endAccess();
  sub_1000AB384(&off_10011A8F0);
  v304 = v72;
  sub_1000AB384(&off_10011A920);
  v271 = v73;
  swift_beginAccess();
  v74 = *v294;
  v75 = swift_isUniquelyReferenced_nonNull_native();
  *v294 = v74;
  if ((v75 & 1) == 0)
  {
    v74 = sub_1000A35A4(0, *(v74 + 2) + 1, 1, v74);
    *v294 = v74;
  }

  v77 = *(v74 + 2);
  v76 = *(v74 + 3);
  if (v77 >= v76 >> 1)
  {
    v74 = sub_1000A35A4((v76 > 1), v77 + 1, 1, v74);
  }

  *(v74 + 2) = v77 + 1;
  v78 = &v74[80 * v77];
  *(v78 + 4) = 0x40490FDA00000000;
  *(v78 + 3) = v304;
  *(v78 + 16) = 1071898308;
  *(v78 + 5) = v271;
  *(v78 + 12) = 0x3F63D70A3E4CCCCDLL;
  *v294 = v74;
  swift_endAccess();
  sub_1000AB384(&off_10011A950);
  v305 = v79;
  sub_1000AB384(&off_10011A980);
  v272 = v80;
  swift_beginAccess();
  v81 = *v350;
  v82 = swift_isUniquelyReferenced_nonNull_native();
  *v350 = v81;
  if ((v82 & 1) == 0)
  {
    v81 = sub_1000A35A4(0, *(v81 + 2) + 1, 1, v81);
    *v350 = v81;
  }

  v84 = *(v81 + 2);
  v83 = *(v81 + 3);
  if (v84 >= v83 >> 1)
  {
    v81 = sub_1000A35A4((v83 > 1), v84 + 1, 1, v81);
  }

  *(v81 + 2) = v84 + 1;
  v85 = &v81[80 * v84];
  *(v85 + 4) = 0x4042CE8100000000;
  *(v85 + 3) = v305;
  *(v85 + 16) = -1078339876;
  *(v85 + 5) = v272;
  *(v85 + 12) = 0x3FA7AE143F84BC6ALL;
  *v350 = v81;
  swift_endAccess();
  sub_1000AB384(&off_10011A9B0);
  v306 = v86;
  sub_1000AB384(&off_10011A9E0);
  v273 = v87;
  swift_beginAccess();
  v88 = *v362;
  v89 = swift_isUniquelyReferenced_nonNull_native();
  *v362 = v88;
  if ((v89 & 1) == 0)
  {
    v88 = sub_1000A35A4(0, *(v88 + 2) + 1, 1, v88);
    *v362 = v88;
  }

  v91 = *(v88 + 2);
  v90 = *(v88 + 3);
  if (v91 >= v90 >> 1)
  {
    v88 = sub_1000A35A4((v90 > 1), v91 + 1, 1, v88);
  }

  *(v88 + 2) = v91 + 1;
  v92 = &v88[80 * v91];
  *(v92 + 4) = 0x4031D3FE467C204DLL;
  *(v92 + 3) = v306;
  *(v92 + 16) = 1087650662;
  *(v92 + 5) = v273;
  *(v92 + 12) = 0x3F828F5C3F800000;
  *v362 = v88;
  swift_endAccess();
  sub_1000AB384(&off_10011AA10);
  v307 = v93;
  sub_1000AB384(&off_10011AA40);
  v274 = v94;
  swift_beginAccess();
  v95 = *v21;
  v96 = swift_isUniquelyReferenced_nonNull_native();
  *v21 = v95;
  if (v96)
  {
    v97 = (v291 + 64);
  }

  else
  {
    v261 = sub_1000A35A4(0, *(v95 + 2) + 1, 1, v95);
    v97 = (v291 + 64);
    v95 = v261;
    *v21 = v261;
  }

  v99 = *(v95 + 2);
  v98 = *(v95 + 3);
  if (v99 >= v98 >> 1)
  {
    v262 = sub_1000A35A4((v98 > 1), v99 + 1, 1, v95);
    v97 = (v291 + 64);
    v95 = v262;
  }

  *(v95 + 2) = v99 + 1;
  v100 = &v95[80 * v99];
  *(v100 + 4) = 0x3C8EFA3500000000;
  *(v100 + 3) = v307;
  *(v100 + 16) = 1077963482;
  *(v100 + 5) = v274;
  *(v100 + 12) = 0x3F65E35400000000;
  *v97 = v95;
  swift_endAccess();
  sub_1000AB384(&off_10011AA70);
  v308 = v101;
  sub_1000AB384(&off_10011AAA0);
  v275 = v102;
  swift_beginAccess();
  v103 = *v289;
  v104 = swift_isUniquelyReferenced_nonNull_native();
  *v289 = v103;
  if ((v104 & 1) == 0)
  {
    v103 = sub_1000A35A4(0, *(v103 + 2) + 1, 1, v103);
    *v289 = v103;
  }

  v106 = *(v103 + 2);
  v105 = *(v103 + 3);
  if (v106 >= v105 >> 1)
  {
    v103 = sub_1000A35A4((v105 > 1), v106 + 1, 1, v103);
  }

  *(v103 + 2) = v106 + 1;
  v107 = &v103[80 * v106];
  *(v107 + 4) = 0x40197A2E43FA0000;
  *(v107 + 3) = v308;
  *(v107 + 16) = 1073781533;
  *(v107 + 5) = v275;
  *(v107 + 12) = 0x3F4A3D713EBB645ALL;
  *v289 = v103;
  swift_endAccess();
  sub_1000AB384(&off_10011AAD0);
  v309 = v108;
  sub_1000AB384(&off_10011AB00);
  v276 = v109;
  swift_beginAccess();
  v110 = *v21;
  v111 = swift_isUniquelyReferenced_nonNull_native();
  *v21 = v110;
  if (v111)
  {
    v112 = (v291 + 64);
  }

  else
  {
    v263 = sub_1000A35A4(0, *(v110 + 2) + 1, 1, v110);
    v112 = (v291 + 64);
    v110 = v263;
    *v21 = v263;
  }

  v114 = *(v110 + 2);
  v113 = *(v110 + 3);
  if (v114 >= v113 >> 1)
  {
    v264 = sub_1000A35A4((v113 > 1), v114 + 1, 1, v110);
    v112 = (v291 + 64);
    v110 = v264;
  }

  *(v110 + 2) = v114 + 1;
  v115 = &v110[80 * v114];
  *(v115 + 4) = 0x40490FDA452F0000;
  *(v115 + 3) = v309;
  *(v115 + 16) = 1075738653;
  *(v115 + 5) = v276;
  *(v115 + 12) = 0x3F65E35400000000;
  *v112 = v110;
  swift_endAccess();
  sub_1000AB384(&off_10011AB30);
  v310 = v116;
  sub_1000AB384(&off_10011AB60);
  v277 = v117;
  swift_beginAccess();
  v118 = *v287;
  v119 = swift_isUniquelyReferenced_nonNull_native();
  *v287 = v118;
  if ((v119 & 1) == 0)
  {
    v118 = sub_1000A35A4(0, *(v118 + 2) + 1, 1, v118);
    *v287 = v118;
  }

  v121 = *(v118 + 2);
  v120 = *(v118 + 3);
  if (v121 >= v120 >> 1)
  {
    v118 = sub_1000A35A4((v120 > 1), v121 + 1, 1, v118);
  }

  *(v118 + 2) = v121 + 1;
  v122 = &v118[80 * v121];
  *(v122 + 4) = 0x3FF86C54C422599ALL;
  *(v122 + 3) = v310;
  *(v122 + 16) = 1077207353;
  *(v122 + 5) = v277;
  *(v122 + 12) = 0x41DCE14800000000;
  *v287 = v118;
  swift_endAccess();
  sub_1000AB384(&off_10011AB90);
  v311 = v123;
  sub_1000AB384(&off_10011ABC0);
  v278 = v124;
  swift_beginAccess();
  v125 = *v26;
  v126 = swift_isUniquelyReferenced_nonNull_native();
  *v26 = v125;
  if ((v126 & 1) == 0)
  {
    v125 = sub_1000A35A4(0, *(v125 + 2) + 1, 1, v125);
    *v26 = v125;
  }

  v128 = *(v125 + 2);
  v127 = *(v125 + 3);
  if (v128 >= v127 >> 1)
  {
    v125 = sub_1000A35A4((v127 > 1), v128 + 1, 1, v125);
  }

  *(v125 + 2) = v128 + 1;
  v129 = &v125[80 * v128];
  *(v129 + 4) = 0x4041E9BF459C3C3DLL;
  *(v129 + 3) = v311;
  *(v129 + 16) = 1083673028;
  *(v129 + 5) = v278;
  *(v129 + 12) = 0x401E147B00000000;
  *v26 = v125;
  swift_endAccess();
  sub_1000AB384(&off_10011ABF0);
  v312 = v130;
  sub_1000AB384(&off_10011AC20);
  v279 = v131;
  swift_beginAccess();
  v132 = *v288;
  v133 = swift_isUniquelyReferenced_nonNull_native();
  *v288 = v132;
  if ((v133 & 1) == 0)
  {
    v132 = sub_1000A35A4(0, *(v132 + 2) + 1, 1, v132);
    *v288 = v132;
  }

  v135 = *(v132 + 2);
  v134 = *(v132 + 3);
  if (v135 >= v134 >> 1)
  {
    v132 = sub_1000A35A4((v134 > 1), v135 + 1, 1, v132);
  }

  *(v132 + 2) = v135 + 1;
  v136 = &v132[80 * v135];
  *(v136 + 4) = 0x40490FDA455AC000;
  *(v136 + 3) = v312;
  *(v136 + 16) = 1079841540;
  *(v136 + 5) = v279;
  *(v136 + 12) = 0x3F3AE14800000000;
  *v288 = v132;
  swift_endAccess();
  sub_1000AB384(&off_10011AC50);
  v313 = v137;
  sub_1000AB384(&off_10011AC80);
  v314 = vaddq_f32(v313, v138);
  sub_1000AB384(&off_10011ACB0);
  v280 = v139;
  swift_beginAccess();
  v140 = *v342;
  v141 = swift_isUniquelyReferenced_nonNull_native();
  *v342 = v140;
  if ((v141 & 1) == 0)
  {
    v140 = sub_1000A35A4(0, *(v140 + 2) + 1, 1, v140);
    *v342 = v140;
  }

  v142 = v314;
  v142.i32[3] = 0;
  v144 = *(v140 + 2);
  v143 = *(v140 + 3);
  if (v144 >= v143 >> 1)
  {
    v323 = v142;
    v265 = sub_1000A35A4((v143 > 1), v144 + 1, 1, v140);
    v142 = v323;
    v140 = v265;
  }

  *(v140 + 2) = v144 + 1;
  v145 = &v140[80 * v144];
  *(v145 + 4) = 0x4004EC9D44898000;
  *(v145 + 3) = v142;
  *(v145 + 16) = 1082377785;
  *(v145 + 5) = v280;
  *(v145 + 12) = 0x3FECCCCD3EC28F5CLL;
  *v342 = v140;
  swift_endAccess();
  sub_1000AB384(&off_10011ACE0);
  v315 = v146;
  sub_1000AB384(&off_10011AD10);
  v316 = vaddq_f32(v315, v147);
  sub_1000AB384(&off_10011AD40);
  v281 = v148;
  swift_beginAccess();
  v149 = *v294;
  v150 = swift_isUniquelyReferenced_nonNull_native();
  *v294 = v149;
  if ((v150 & 1) == 0)
  {
    v149 = sub_1000A35A4(0, *(v149 + 2) + 1, 1, v149);
    *v294 = v149;
  }

  v151 = v316;
  v151.i32[3] = 0;
  v153 = *(v149 + 2);
  v152 = *(v149 + 3);
  if (v153 >= v152 >> 1)
  {
    v324 = v151;
    v266 = sub_1000A35A4((v152 > 1), v153 + 1, 1, v149);
    v151 = v324;
    v149 = v266;
  }

  *(v149 + 2) = v153 + 1;
  v154 = &v149[80 * v153];
  *(v154 + 4) = 0x40490FDA45834000;
  *(v154 + 3) = v151;
  *(v154 + 16) = 1070141402;
  *(v154 + 5) = v281;
  *(v154 + 12) = 0x3F63D70A3E4CCCCDLL;
  *v294 = v149;
  swift_endAccess();
  sub_1000AB384(&off_10011AD70);
  v317 = v155;
  sub_1000AB384(&off_10011ADA0);
  v282 = v156;
  swift_beginAccess();
  v157 = *v350;
  v158 = swift_isUniquelyReferenced_nonNull_native();
  *v350 = v157;
  if ((v158 & 1) == 0)
  {
    v157 = sub_1000A35A4(0, *(v157 + 2) + 1, 1, v157);
    *v350 = v157;
  }

  v160 = *(v157 + 2);
  v159 = *(v157 + 3);
  if (v160 >= v159 >> 1)
  {
    v157 = sub_1000A35A4((v159 > 1), v160 + 1, 1, v157);
  }

  *(v157 + 2) = v160 + 1;
  v161 = &v157[80 * v160];
  *(v161 + 4) = 0x4042CE8145A8C000;
  *(v161 + 3) = v317;
  *(v161 + 16) = -1078339876;
  *(v161 + 5) = v282;
  *(v161 + 12) = 0x3FA7AE143F84BC6ALL;
  *v350 = v157;
  swift_endAccess();
  sub_1000AB384(&off_10011ADD0);
  v318 = v162;
  sub_1000AB384(&off_10011AE00);
  v283 = v163;
  swift_beginAccess();
  v164 = *v290;
  v165 = swift_isUniquelyReferenced_nonNull_native();
  *v290 = v164;
  if ((v165 & 1) == 0)
  {
    v164 = sub_1000A35A4(0, *(v164 + 2) + 1, 1, v164);
    *v290 = v164;
  }

  v167 = *(v164 + 2);
  v166 = *(v164 + 3);
  if (v167 >= v166 >> 1)
  {
    v164 = sub_1000A35A4((v166 > 1), v167 + 1, 1, v164);
  }

  *(v164 + 2) = v167 + 1;
  v168 = &v164[80 * v167];
  *(v168 + 4) = 0x40197A2E00000000;
  *(v168 + 3) = v318;
  *(v168 + 16) = 1075112755;
  *(v168 + 5) = v283;
  *(v168 + 12) = 0x3F4A3D713EBB645ALL;
  *v290 = v164;
  swift_endAccess();
  sub_1000AB384(&off_10011AE30);
  v319 = v169;
  sub_1000AB384(&off_10011AE60);
  v284 = v170;
  swift_beginAccess();
  v171 = *v346;
  v172 = swift_isUniquelyReferenced_nonNull_native();
  *v346 = v171;
  if ((v172 & 1) == 0)
  {
    v171 = sub_1000A35A4(0, *(v171 + 2) + 1, 1, v171);
    *v346 = v171;
  }

  v174 = *(v171 + 2);
  v173 = *(v171 + 3);
  if (v174 >= v173 >> 1)
  {
    v171 = sub_1000A35A4((v173 > 1), v174 + 1, 1, v171);
  }

  *(v171 + 2) = v174 + 1;
  v175 = &v171[80 * v174];
  *(v175 + 4) = 0x4021BE3F00000000;
  *(v175 + 3) = v319;
  *(v175 + 16) = 1084229967;
  *(v175 + 5) = v284;
  *(v175 + 12) = 0x3FECCCCD3EC28F5CLL;
  *v346 = v171;
  swift_endAccess();
  sub_1000AB384(&off_10011AE90);
  v320 = v176;
  sub_1000AB384(&off_10011AEC0);
  v285 = v177;
  swift_beginAccess();
  v178 = *v362;
  v179 = swift_isUniquelyReferenced_nonNull_native();
  *v362 = v178;
  if ((v179 & 1) == 0)
  {
    v178 = sub_1000A35A4(0, *(v178 + 2) + 1, 1, v178);
    *v362 = v178;
  }

  v181 = *(v178 + 2);
  v180 = *(v178 + 3);
  if (v181 >= v180 >> 1)
  {
    v178 = sub_1000A35A4((v180 > 1), v181 + 1, 1, v178);
  }

  *(v178 + 2) = v181 + 1;
  v182 = &v178[80 * v181];
  *(v182 + 4) = 0x40490FDA46CA7734;
  *(v182 + 3) = v320;
  *(v182 + 16) = 1076037070;
  *(v182 + 5) = v285;
  *(v182 + 12) = 0x3F828F5C3F800000;
  *v362 = v178;
  swift_endAccess();
  sub_1000AB384(&off_10011AEF0);
  v321 = v183;
  sub_1000AB384(&off_10011AF20);
  v286 = v184;
  swift_beginAccess();
  v185 = *v26;
  v186 = swift_isUniquelyReferenced_nonNull_native();
  *v26 = v185;
  if ((v186 & 1) == 0)
  {
    v185 = sub_1000A35A4(0, *(v185 + 2) + 1, 1, v185);
    *v26 = v185;
  }

  v188 = *(v185 + 2);
  v187 = *(v185 + 3);
  if (v188 >= v187 >> 1)
  {
    v185 = sub_1000A35A4((v187 > 1), v188 + 1, 1, v185);
  }

  *(v185 + 2) = v188 + 1;
  v189 = &v185[80 * v188];
  *(v189 + 4) = 0x4041E9BF454E4000;
  *(v189 + 3) = v321;
  *(v189 + 16) = 1083673028;
  *(v189 + 5) = v286;
  *(v189 + 12) = 0x401E147B00000000;
  *v26 = v185;
  swift_endAccess();
  sub_1000AB384(&off_10011AF50);
  v336 = v190;
  sub_1000AB384(&off_10011AF80);
  v322 = v191;
  swift_beginAccess();
  v192 = *v288;
  v193 = swift_isUniquelyReferenced_nonNull_native();
  *v288 = v192;
  if ((v193 & 1) == 0)
  {
    v192 = sub_1000A35A4(0, *(v192 + 2) + 1, 1, v192);
    *v288 = v192;
  }

  v195 = *(v192 + 2);
  v194 = *(v192 + 3);
  if (v195 >= v194 >> 1)
  {
    v192 = sub_1000A35A4((v194 > 1), v195 + 1, 1, v192);
  }

  *(v192 + 2) = v195 + 1;
  v196 = &v192[80 * v195];
  *(v196 + 4) = 0x40490FDA43960000;
  *(v196 + 3) = v336;
  *(v196 + 16) = 1079841540;
  *(v196 + 5) = v322;
  *(v196 + 12) = 0x3F3AE14800000000;
  *v288 = v192;
  swift_endAccess();
  sub_1000AB384(&off_10011AFB0);
  v337 = v197;
  sub_1000AB384(&off_10011AFE0);
  v329 = v198;
  swift_beginAccess();
  v199 = *v287;
  v200 = swift_isUniquelyReferenced_nonNull_native();
  *v287 = v199;
  if ((v200 & 1) == 0)
  {
    v199 = sub_1000A35A4(0, *(v199 + 2) + 1, 1, v199);
    *v287 = v199;
  }

  v202 = *(v199 + 2);
  v201 = *(v199 + 3);
  if (v202 >= v201 >> 1)
  {
    v199 = sub_1000A35A4((v201 > 1), v202 + 1, 1, v199);
  }

  *(v199 + 2) = v202 + 1;
  v203 = &v199[80 * v202];
  *(v203 + 4) = 0x3FF86C54C3160000;
  *(v203 + 3) = v337;
  *(v203 + 16) = 1077207353;
  *(v203 + 5) = v329;
  *(v203 + 12) = 0x41DCE14800000000;
  *v287 = v199;
  swift_endAccess();
  sub_1000AB384(&off_10011B010);
  v338 = v204;
  sub_1000AB384(&off_10011B040);
  v330 = v205;
  swift_beginAccess();
  v206 = *v289;
  v207 = swift_isUniquelyReferenced_nonNull_native();
  *v289 = v206;
  if ((v207 & 1) == 0)
  {
    v206 = sub_1000A35A4(0, *(v206 + 2) + 1, 1, v206);
    *v289 = v206;
  }

  v209 = *(v206 + 2);
  v208 = *(v206 + 3);
  if (v209 >= v208 >> 1)
  {
    v206 = sub_1000A35A4((v208 > 1), v209 + 1, 1, v206);
  }

  *(v206 + 2) = v209 + 1;
  v210 = &v206[80 * v209];
  *(v210 + 4) = 0x40490FDA00000000;
  *(v210 + 3) = v338;
  *(v210 + 16) = 1050858253;
  *(v210 + 5) = v330;
  *(v210 + 12) = 0x3F4A3D713EBB645ALL;
  *v289 = v206;
  swift_endAccess();
  sub_1000AB384(&off_10011B070);
  v339 = v211;
  sub_1000AB384(&off_10011B0A0);
  v331 = v212;
  swift_beginAccess();
  v213 = *v290;
  v214 = swift_isUniquelyReferenced_nonNull_native();
  *v290 = v213;
  if ((v214 & 1) == 0)
  {
    v213 = sub_1000A35A4(0, *(v213 + 2) + 1, 1, v213);
    *v290 = v213;
  }

  v216 = *(v213 + 2);
  v215 = *(v213 + 3);
  if (v216 >= v215 >> 1)
  {
    v213 = sub_1000A35A4((v215 > 1), v216 + 1, 1, v213);
  }

  *(v213 + 2) = v216 + 1;
  v217 = &v213[80 * v216];
  *(v217 + 4) = 0x40197A2E43E10000;
  *(v217 + 3) = v339;
  *(v217 + 16) = 1073781533;
  *(v217 + 5) = v331;
  *(v217 + 12) = 0x3F4A3D713EBB645ALL;
  *v290 = v213;
  swift_endAccess();
  sub_1000AB384(&off_10011B0D0);
  v340 = v218;
  sub_1000AB384(&off_10011B100);
  v332 = v219;
  swift_beginAccess();
  v220 = *v342;
  v221 = swift_isUniquelyReferenced_nonNull_native();
  *v342 = v220;
  if ((v221 & 1) == 0)
  {
    v220 = sub_1000A35A4(0, *(v220 + 2) + 1, 1, v220);
    *v342 = v220;
  }

  v223 = *(v220 + 2);
  v222 = *(v220 + 3);
  if (v223 >= v222 >> 1)
  {
    v220 = sub_1000A35A4((v222 > 1), v223 + 1, 1, v220);
  }

  *(v220 + 2) = v223 + 1;
  v224 = &v220[80 * v223];
  *(v224 + 4) = 0x3FFCCC2100000000;
  *(v224 + 3) = v340;
  *(v224 + 16) = 1079550919;
  *(v224 + 5) = v332;
  *(v224 + 12) = 0x3FECCCCD3EC28F5CLL;
  *v342 = v220;
  swift_endAccess();
  sub_1000AB384(&off_10011B130);
  v343 = v225;
  sub_1000AB384(&off_10011B160);
  v341 = v226;
  swift_beginAccess();
  v227 = *v346;
  v228 = swift_isUniquelyReferenced_nonNull_native();
  *v346 = v227;
  if ((v228 & 1) == 0)
  {
    v227 = sub_1000A35A4(0, *(v227 + 2) + 1, 1, v227);
    *v346 = v227;
  }

  v230 = *(v227 + 2);
  v229 = *(v227 + 3);
  if (v230 >= v229 >> 1)
  {
    v227 = sub_1000A35A4((v229 > 1), v230 + 1, 1, v227);
  }

  *(v227 + 2) = v230 + 1;
  v231 = &v227[80 * v230];
  *(v231 + 4) = 0x4004EC9D43480000;
  *(v231 + 3) = v343;
  *(v231 + 16) = 1082377785;
  *(v231 + 5) = v341;
  *(v231 + 12) = 0x3FECCCCD3EC28F5CLL;
  *v346 = v227;
  swift_endAccess();
  sub_1000AB384(&off_10011B190);
  v347 = v232;
  sub_1000AB384(&off_10011B1C0);
  v344 = v233;
  swift_beginAccess();
  v234 = *v294;
  v235 = swift_isUniquelyReferenced_nonNull_native();
  *v294 = v234;
  if ((v235 & 1) == 0)
  {
    v234 = sub_1000A35A4(0, *(v234 + 2) + 1, 1, v234);
    *v294 = v234;
  }

  v237 = *(v234 + 2);
  v236 = *(v234 + 3);
  if (v237 >= v236 >> 1)
  {
    v234 = sub_1000A35A4((v236 > 1), v237 + 1, 1, v234);
  }

  *(v234 + 2) = v237 + 1;
  v238 = &v234[80 * v237];
  *(v238 + 4) = 0x40490FDA450A2000;
  *(v238 + 3) = v347;
  *(v238 + 16) = 1070141402;
  *(v238 + 5) = v344;
  *(v238 + 12) = 0x3F63D70A3E4CCCCDLL;
  *v294 = v234;
  swift_endAccess();
  sub_1000AB384(&off_10011B1F0);
  v348 = v239;
  sub_1000AB384(&off_10011B220);
  v345 = v240;
  swift_beginAccess();
  v241 = *v350;
  v242 = swift_isUniquelyReferenced_nonNull_native();
  *v350 = v241;
  if ((v242 & 1) == 0)
  {
    v241 = sub_1000A35A4(0, *(v241 + 2) + 1, 1, v241);
    *v350 = v241;
  }

  v244 = *(v241 + 2);
  v243 = *(v241 + 3);
  if (v244 >= v243 >> 1)
  {
    v241 = sub_1000A35A4((v243 > 1), v244 + 1, 1, v241);
  }

  *(v241 + 2) = v244 + 1;
  v245 = &v241[80 * v244];
  *(v245 + 4) = 0x4042CE8144228000;
  *(v245 + 3) = v348;
  *(v245 + 16) = -1078339876;
  *(v245 + 5) = v345;
  *(v245 + 12) = 0x3FA7AE143F84BC6ALL;
  *v350 = v241;
  swift_endAccess();
  sub_1000AB384(&off_10011B250);
  v351 = v246;
  sub_1000AB384(&off_10011B280);
  v349 = v247;
  swift_beginAccess();
  v248 = *v362;
  v249 = swift_isUniquelyReferenced_nonNull_native();
  *v362 = v248;
  if ((v249 & 1) == 0)
  {
    v248 = sub_1000A35A4(0, *(v248 + 2) + 1, 1, v248);
    *v362 = v248;
  }

  v251 = *(v248 + 2);
  v250 = *(v248 + 3);
  if (v251 >= v250 >> 1)
  {
    v248 = sub_1000A35A4((v250 > 1), v251 + 1, 1, v248);
  }

  *(v248 + 2) = v251 + 1;
  v252 = &v248[80 * v251];
  *(v252 + 4) = 0x40490FDA45FA0000;
  *(v252 + 3) = v351;
  *(v252 + 16) = 1076037070;
  *(v252 + 5) = v349;
  *(v252 + 12) = 0x3F828F5C3F800000;
  *v362 = v248;
  swift_endAccess();
  sub_1000AB384(&off_10011B2B0);
  v363 = v253;
  sub_1000AB384(&off_10011B2E0);
  v352 = v254;
  swift_beginAccess();
  v255 = *v21;
  v256 = swift_isUniquelyReferenced_nonNull_native();
  *v21 = v255;
  if ((v256 & 1) == 0)
  {
    v255 = sub_1000A35A4(0, *(v255 + 2) + 1, 1, v255);
    *v21 = v255;
  }

  v258 = *(v255 + 2);
  v257 = *(v255 + 3);
  if (v258 >= v257 >> 1)
  {
    v255 = sub_1000A35A4((v257 > 1), v258 + 1, 1, v255);
  }

  *(v255 + 2) = v258 + 1;
  v259 = &v255[80 * v258];
  *(v259 + 4) = 0x40490FDA44480000;
  *(v259 + 3) = v363;
  *(v259 + 16) = 1075738667;
  *(v259 + 5) = v352;
  *(v259 + 12) = 0x3F65E35400000000;
  *(v291 + 64) = v255;
  swift_endAccess();
  sub_1000125FC(&qword_1001303F0, &unk_1000F20F0);
  v260 = swift_allocObject();
  *(v260 + 16) = xmmword_1000F3150;
  *(v260 + 32) = v1;
  *(v260 + 40) = v297;
  *(v260 + 48) = v291;
  *(v260 + 56) = v292;
  *(v260 + 64) = v296;
  *(v260 + 72) = v11;
  *(v260 + 80) = v17;
  *(v260 + 88) = v7;
  *(v260 + 96) = v295;
  *(v260 + 104) = v293;
  *(v260 + 112) = v5;
  swift_beginAccess();
  *(v298 + 144) = v260;
}

uint64_t getEnumTagSinglePayload for CommonError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CommonError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

Swift::Int sub_1000D4018(unsigned __int8 a1)
{
  sub_1000EA024();
  sub_1000E9974();

  return sub_1000EA064();
}

double sub_1000D4150(uint64_t a1)
{
  sub_1000E9974();

  return result;
}

unint64_t sub_1000D4264@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000D44A0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1000D4294(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB0000000064656CLL;
  v4 = 0x6961467075746573;
  v5 = 0x80000001000F6680;
  v6 = 0xD000000000000016;
  v7 = 0xEC00000064656C69;
  v8 = 0x6146657461647075;
  if (v2 != 4)
  {
    v8 = 0x6C69614677617264;
    v7 = 0xEA00000000006465;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE800000000000000;
  v10 = 0x7465737341646162;
  if (v2 != 1)
  {
    v10 = 0xD000000000000016;
    v9 = 0x80000001000F6660;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

unint64_t sub_1000D4370()
{
  v1 = *v0;
  v2 = 0x6961467075746573;
  v3 = 0xD000000000000016;
  v4 = 0x6146657461647075;
  if (v1 != 4)
  {
    v4 = 0x6C69614677617264;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x7465737341646162;
  if (v1 != 1)
  {
    v5 = 0xD000000000000016;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1000D444C()
{
  result = qword_100133BA8;
  if (!qword_100133BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133BA8);
  }

  return result;
}

unint64_t sub_1000D44A0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100122188;
  v6._object = a2;
  v4 = sub_1000E9EC4(v3, v6);

  if (v4 >= 6)
  {
    return 6;
  }

  else
  {
    return v4;
  }
}

void sub_1000D44EC()
{
  v0 = kCGColorSpaceSRGB;
  v1 = CGColorSpaceCreateWithName(v0);

  qword_10013DD18 = v1;
}

void sub_1000D4530()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  if (v1 == 1)
  {
    v2 = 3;
  }

  else
  {
    v2 = 2;
  }

  byte_10013DD20 = v2;
}

uint64_t sub_1000D4598()
{
  v0 = sub_1000E96A4();
  sub_100011C54(v0, qword_100133BB0);
  v1 = sub_100007488(v0, qword_100133BB0);
  if (qword_10012F780 != -1)
  {
    swift_once();
  }

  v2 = sub_100007488(v0, qword_10013DE48);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void *sub_1000D4660(uint64_t a1)
{
  __chkstk_darwin(a1);
  v3 = v1;
  v468 = v4;
  v6 = v5;
  v464 = *v3;
  v7 = sub_1000E93B4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v6);
  v463 = &v458 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3[3] = 0;
  *(v3 + 32) = 0;
  *(v3 + 7) = 0u;
  *(v3 + 5) = 0u;
  *(v3 + 9) = 0u;
  *(v3 + 11) = 0u;
  *(v3 + 13) = 0u;
  v3[15] = 0;
  v3[40] = 1;
  v535 = v3;
  v467 = v3 + 7;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = MTLCreateSystemDefaultDevice();
    v9 = 0;
    if (!v11)
    {
LABEL_8:
      sub_10001B6F8();
      v17 = swift_allocError();
      *v18 = 0;
      v469 = v17;
      swift_willThrow();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v19 = 0;
      v20 = 0;
      v21 = 0;
      LODWORD(v534) = 0;
      v22 = 0;
      LODWORD(v533) = 0;
      v23 = 0;
      LODWORD(v24) = 0;
      LODWORD(isa) = 0;
      LODWORD(v530) = 0;
      LODWORD(v532) = 0;
      LODWORD(v531) = 0;
      v466 = 0;
      goto LABEL_142;
    }
  }

  v465 = v9;
  swift_unknownObjectRetain();
  v12 = [v11 newDefaultLibrary];
  if (!v12)
  {
    swift_unknownObjectRelease();
    goto LABEL_8;
  }

  v13 = v12;
  v14 = [objc_opt_self() currentDevice];
  v15 = [v14 userInterfaceIdiom];

  v3[2] = v11;
  *(v3 + 312) = v15 == 1;
  type metadata accessor for VariableBlurrer();
  swift_allocObject();
  swift_unknownObjectRetain_n();
  swift_unknownObjectRetain();
  v16 = sub_10001A5E0(v11, v13);
  v466 = v2 == 0;
  v469 = v2;
  if (v2)
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
LABEL_140:
    swift_unknownObjectRelease();
    v19 = 0;
    v20 = 0;
    v21 = 0;
    LODWORD(v534) = 0;
    v22 = 0;
    LODWORD(v533) = 0;
    v23 = 0;
    LODWORD(v24) = 0;
    LODWORD(isa) = 0;
    LODWORD(v530) = 0;
    LODWORD(v532) = 0;
    LODWORD(v531) = 0;
    goto LABEL_141;
  }

  v26 = v3;
  v459 = v8;
  v460 = v7;
  v461 = v13;
  v462 = v11;
  v27 = 0;
  v26[38] = v16;
  *&v533 = &v567[20] + 8;
  v532 = &v566[20] + 4;
  v24 = _swiftEmptyArrayStorage;
  v534 = v15;
  do
  {
    v42 = *(&off_100121588 + v27 + 32);
    if (v15 == 1)
    {
      if (*(&off_100121588 + v27 + 32) > 3u)
      {
        if (*(&off_100121588 + v27 + 32) > 5u)
        {
          if (v42 == 6)
          {
            if (qword_10012F5E8 != -1)
            {
              swift_once();
            }

            memcpy(v566, &xmmword_10013C730, 0x208uLL);
            sub_1000C6110(v566, v565);
            if (qword_10012F5F0 != -1)
            {
              swift_once();
            }

            v43 = &xmmword_10013C940;
          }

          else
          {
            if (qword_10012F5F8 != -1)
            {
              swift_once();
            }

            memcpy(v566, &xmmword_10013CB50, 0x208uLL);
            sub_1000C6110(v566, v565);
            if (qword_10012F600 != -1)
            {
              swift_once();
            }

            v43 = &xmmword_10013CD60;
          }
        }

        else if (v42 == 4)
        {
          if (qword_10012F618 != -1)
          {
            swift_once();
          }

          memcpy(v566, &xmmword_10013D390, 0x208uLL);
          sub_1000C6110(v566, v565);
          if (qword_10012F620 != -1)
          {
            swift_once();
          }

          v43 = &xmmword_10013D5A0;
        }

        else
        {
          if (qword_10012F608 != -1)
          {
            swift_once();
          }

          memcpy(v566, &xmmword_10013CF70, 0x208uLL);
          sub_1000C6110(v566, v565);
          if (qword_10012F610 != -1)
          {
            swift_once();
          }

          v43 = &xmmword_10013D180;
        }
      }

      else if (*(&off_100121588 + v27 + 32) > 1u)
      {
        if (v42 == 2)
        {
          if (qword_10012F628 != -1)
          {
            swift_once();
          }

          memcpy(v566, &xmmword_10013D7B0, 0x208uLL);
          sub_1000C6110(v566, v565);
          if (qword_10012F630 != -1)
          {
            swift_once();
          }

          v43 = &xmmword_10013D9C0;
        }

        else
        {
          if (qword_10012F5B8 != -1)
          {
            swift_once();
          }

          memcpy(v566, &xmmword_10013BAD0, 0x208uLL);
          sub_1000C6110(v566, v565);
          if (qword_10012F5C8 != -1)
          {
            swift_once();
          }

          v43 = &xmmword_10013BEF0;
        }
      }

      else if (*(&off_100121588 + v27 + 32))
      {
        if (qword_10012F5C0 != -1)
        {
          swift_once();
        }

        memcpy(v566, &xmmword_10013BCE0, 0x208uLL);
        sub_1000C6110(v566, v565);
        if (qword_10012F5D0 != -1)
        {
          swift_once();
        }

        v43 = &xmmword_10013C100;
      }

      else
      {
        if (qword_10012F5D8 != -1)
        {
          swift_once();
        }

        memcpy(v566, &xmmword_10013C310, 0x208uLL);
        sub_1000C6110(v566, v565);
        if (qword_10012F5E0 != -1)
        {
          swift_once();
        }

        v43 = &xmmword_10013C520;
      }

      memcpy(v567, v43, 0x208uLL);
      v531 = v566[28];
      v529 = v566[26];
      v530 = v566[27];
      v527 = v566[23];
      v528 = v566[25];
      v525 = v566[22];
      v526 = v566[24];
      v523 = v566[21];
      *&v524 = *&v566[20];
      v45 = *v532 | (v532[2] << 32);
      v520 = v566[19];
      v521 = v566[18];
      *&v522 = *&v566[17];
      v518 = v566[16];
      v519 = v566[15];
      v516 = v566[13];
      v517 = v566[14];
      v514 = v566[11];
      v515 = v566[12];
      *&v513 = *(&v566[10] + 1);
      LODWORD(v512) = v566[10];
      v510 = v566[9];
      v511 = v566[8];
      v509 = v566[6];
      *&v508 = *&v566[7];
      v506 = v566[4];
      v507 = v566[3];
      v505 = *&v566[5];
      v504 = DWORD2(v566[5]);
      v500 = v566[1];
      v501 = v566[0];
      v499 = *&v566[2];
      v498 = DWORD2(v566[2]);
      v503 = *&v566[32];
      v502 = v566[31];
      v46 = *&v567[20];
      v47 = *v533 | (*(v533 + 4) << 32);
      v48 = *&v567[17];
      v496 = v566[29];
      v497 = v566[30];
      v494 = v567[27];
      v495 = v567[28];
      v492 = v567[25];
      v493 = v567[26];
      v490 = v567[24];
      v491 = v567[23];
      v488 = v567[21];
      v489 = v567[22];
      v486 = v567[19];
      v487 = v567[18];
      v484 = v567[16];
      v485 = v567[15];
      v482 = v567[13];
      v483 = v567[14];
      v480 = v567[11];
      v481 = v567[12];
      v49 = *(&v567[10] + 1);
      v50 = v567[10];
      v478 = v567[9];
      v479 = v567[8];
      v51 = *&v567[7];
      v476 = v567[3];
      v477 = v567[6];
      v52 = *&v567[5];
      v53 = DWORD2(v567[5]);
      v474 = v567[0];
      v475 = v567[4];
      v54 = *&v567[2];
      v55 = DWORD2(v567[2]);
      v56 = *&v567[32];
      v472 = v567[1];
      v473 = v567[31];
      v470 = v567[29];
      v471 = v567[30];
      sub_1000C6110(v567, v565);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = sub_1000A3B08(0, *(v24 + 16) + 1, 1, v24);
      }

      v59 = *(v24 + 16);
      v58 = *(v24 + 24);
      if (v59 >= v58 >> 1)
      {
        v24 = sub_1000A3B08((v58 > 1), v59 + 1, 1, v24);
      }

      v566[0] = v474;
      v566[1] = v472;
      *&v566[2] = v54;
      DWORD2(v566[2]) = v55;
      v566[3] = v476;
      v566[4] = v475;
      *&v566[5] = v52;
      DWORD2(v566[5]) = v53;
      v566[6] = v477;
      *&v566[7] = v51;
      v566[8] = v479;
      v566[9] = v478;
      LODWORD(v566[10]) = v50;
      *(&v566[10] + 1) = v49;
      v566[11] = v480;
      v566[12] = v481;
      v566[13] = v482;
      v566[14] = v483;
      v566[15] = v485;
      v566[16] = v484;
      *&v566[17] = v48;
      v566[18] = v487;
      v566[19] = v486;
      *&v566[20] = v46;
      v28 = v532;
      v532[2] = WORD2(v47);
      *v28 = v47;
      v566[21] = v488;
      v566[22] = v489;
      v566[23] = v491;
      v566[24] = v490;
      v566[25] = v492;
      v566[26] = v493;
      v566[27] = v494;
      v566[28] = v495;
      v566[29] = v470;
      v566[30] = v471;
      v566[31] = v473;
      *&v566[32] = v56;
      _MTLPackedFloat3.init(_:_:_:)(*&v473, *&v470, v57);
      memcpy(v567 + 8, v566, 0x208uLL);
      v29 = (v24 + 1056 * v59);
      v30 = v500;
      *(v29 + 2) = v501;
      *(v29 + 3) = v30;
      v29[8] = v499;
      *(v29 + 18) = v498;
      v31 = v506;
      *(v29 + 5) = v507;
      *(v29 + 6) = v31;
      v29[14] = v505;
      *(v29 + 30) = v504;
      *(v29 + 8) = v509;
      v29[18] = v508;
      v32 = v510;
      *(v29 + 10) = v511;
      *(v29 + 11) = v32;
      *(v29 + 48) = v512;
      v29[25] = v513;
      v33 = v515;
      *(v29 + 13) = v514;
      *(v29 + 14) = v33;
      v34 = v517;
      *(v29 + 15) = v516;
      *(v29 + 16) = v34;
      v35 = v518;
      *(v29 + 17) = v519;
      *(v29 + 18) = v35;
      v36 = v520;
      *(v29 + 20) = v521;
      *(v29 + 21) = v36;
      v37 = v525;
      *(v29 + 23) = v523;
      *(v29 + 24) = v37;
      v38 = v526;
      *(v29 + 25) = v527;
      *(v29 + 26) = v38;
      v39 = v529;
      *(v29 + 27) = v528;
      *(v29 + 28) = v39;
      v40 = v531;
      *(v29 + 29) = v530;
      *(v29 + 30) = v40;
      v41 = v497;
      *(v29 + 31) = v496;
      *(v29 + 32) = v41;
      *(v29 + 33) = v502;
      v29[68] = v503;
      *(v24 + 16) = v59 + 1;
      v29[38] = v522;
      v29[44] = v524;
      *(v29 + 182) = WORD2(v45);
      *(v29 + 90) = v45;
    }

    else
    {
      if (*(&off_100121588 + v27 + 32) > 3u)
      {
        if (*(&off_100121588 + v27 + 32) > 5u)
        {
          if (v42 == 6)
          {
            if (qword_10012F590 != -1)
            {
              swift_once();
            }

            v44 = &xmmword_10013B080;
          }

          else
          {
            if (qword_10012F598 != -1)
            {
              swift_once();
            }

            v44 = &xmmword_10013B290;
          }
        }

        else if (v42 == 4)
        {
          if (qword_10012F5A0 != -1)
          {
            swift_once();
          }

          v44 = &xmmword_10013B4A0;
        }

        else
        {
          if (qword_10012F588 != -1)
          {
            swift_once();
          }

          v44 = &xmmword_10013AE70;
        }
      }

      else if (*(&off_100121588 + v27 + 32) > 1u)
      {
        if (v42 == 2)
        {
          if (qword_10012F5A8 != -1)
          {
            swift_once();
          }

          v44 = &xmmword_10013B6B0;
        }

        else
        {
          if (qword_10012F578 != -1)
          {
            swift_once();
          }

          v44 = &xmmword_10013AA50;
        }
      }

      else if (*(&off_100121588 + v27 + 32))
      {
        if (qword_10012F580 != -1)
        {
          swift_once();
        }

        v44 = &xmmword_10013AC60;
      }

      else
      {
        if (qword_10012F5B0 != -1)
        {
          swift_once();
        }

        v44 = &xmmword_10013B8C0;
      }

      memcpy(v567, v44, 0x208uLL);
      v531 = v567[28];
      v529 = v567[26];
      v530 = v567[27];
      v527 = v567[23];
      v528 = v567[25];
      v525 = v567[22];
      v526 = v567[24];
      v60 = *&v567[20];
      v61 = *v533 | (*(v533 + 4) << 32);
      v523 = v567[18];
      v524 = v567[21];
      v62 = *&v567[17];
      v521 = v567[15];
      v522 = v567[19];
      v519 = v567[14];
      v520 = v567[16];
      v517 = v567[12];
      v518 = v567[13];
      v63 = *(&v567[10] + 1);
      v64 = v567[10];
      v515 = v567[8];
      v516 = v567[11];
      v513 = v567[6];
      v514 = v567[9];
      v65 = *&v567[7];
      v511 = v567[4];
      v512 = v567[3];
      v66 = *&v567[5];
      v67 = DWORD2(v567[5]);
      v508 = v567[1];
      v509 = v567[0];
      v68 = *&v567[2];
      v69 = DWORD2(v567[2]);
      v70 = *&v567[32];
      v510 = v567[31];
      v506 = v567[29];
      v507 = v567[30];
      sub_1000C6110(v567, v566);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = sub_1000A3B08(0, *(v24 + 16) + 1, 1, v24);
      }

      v72 = *(v24 + 16);
      v71 = *(v24 + 24);
      v73 = v24;
      if (v72 >= v71 >> 1)
      {
        v73 = sub_1000A3B08((v71 > 1), v72 + 1, 1, v24);
      }

      sub_1000E29EC(v566);
      memcpy(v567 + 8, v566, 0x208uLL);
      v29 = &v73[132 * v72];
      v24 = v73;
      v74 = v508;
      *(v29 + 2) = v509;
      *(v29 + 3) = v74;
      v29[8] = v68;
      *(v29 + 18) = v69;
      v75 = v511;
      *(v29 + 5) = v512;
      *(v29 + 6) = v75;
      v29[14] = v66;
      *(v29 + 30) = v67;
      *(v29 + 8) = v513;
      v29[18] = v65;
      v76 = v514;
      *(v29 + 10) = v515;
      *(v29 + 11) = v76;
      *(v29 + 48) = v64;
      v29[25] = v63;
      v77 = v517;
      *(v29 + 13) = v516;
      *(v29 + 14) = v77;
      v78 = v519;
      *(v29 + 15) = v518;
      *(v29 + 16) = v78;
      v79 = v520;
      *(v29 + 17) = v521;
      *(v29 + 18) = v79;
      v80 = v522;
      *(v29 + 20) = v523;
      *(v29 + 21) = v80;
      v81 = v525;
      *(v29 + 23) = v524;
      *(v29 + 24) = v81;
      v82 = v526;
      *(v29 + 25) = v527;
      *(v29 + 26) = v82;
      v83 = v529;
      *(v29 + 27) = v528;
      *(v29 + 28) = v83;
      v84 = v531;
      *(v29 + 29) = v530;
      *(v29 + 30) = v84;
      v85 = v507;
      *(v29 + 31) = v506;
      *(v29 + 32) = v85;
      *(v29 + 33) = v510;
      v29[68] = v70;
      v73[2] = v72 + 1;
      v29[38] = v62;
      v29[44] = v60;
      *(v29 + 182) = WORD2(v61);
      *(v29 + 90) = v61;
    }

    memcpy(v29 + 69, v567, 0x210uLL);
    ++v27;
    v15 = v534;
  }

  while (v27 != 8);
  v86 = *(v24 + 16);
  if (v86)
  {
    *&v531 = v24;
    v87 = (v24 + 32);
    v88 = _swiftEmptyArrayStorage;
    p_name = &unk_1000F5E90;
    v533 = xmmword_1000EC870;
    while (1)
    {
      memcpy(v567, v87, 0x418uLL);
      sub_1000125FC(&qword_1001322E8, &qword_1000F36B8);
      v90 = swift_allocObject();
      *(v90 + 1) = v533;
      memcpy(v569, v567, 0x208uLL);
      sub_1000299EC(v567, v566, &qword_100132300, &unk_1000F5E90);
      sub_1000D9D20(v569, v90 + 4);
      memcpy(v566, &v567[33], 0x208uLL);
      if (sub_1000DFDF0(v566) != 1)
      {
        memcpy(v568, v566, 0x208uLL);
        memcpy(v565, &v567[33], 0x208uLL);
        sub_1000C6110(v565, v564);
        sub_1000D9D20(v568, v564);
        v91 = v564[0];
        v90 = sub_1000A3C54(1, 2, 1, v90);
        sub_1000047C4(&v567[33], &unk_100133DB0, &unk_1000F5E80);
        v90[2] = 2;
        v90[5] = v91;
      }

      sub_1000047C4(v567, &qword_100132300, &unk_1000F5E90);
      v92 = v90[2];
      isa = v88[2].isa;
      v93 = (isa + v92);
      if (__OFADD__(isa, v92))
      {
        __break(1u);
LABEL_247:
        __break(1u);
        goto LABEL_248;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || (v95 = v88[3].isa >> 1, v95 < v93))
      {
        if (isa <= v93)
        {
          v96 = isa + v92;
        }

        else
        {
          v96 = isa;
        }

        v88 = sub_1000A3C54(isUniquelyReferenced_nonNull_native, v96, 1, v88);
        v95 = v88[3].isa >> 1;
      }

      v24 = v567;
      if (v90[2])
      {
        if ((v95 - v88[2].isa) < v92)
        {
          __break(1u);
LABEL_304:
          __break(1u);
          goto LABEL_305;
        }

        sub_1000125FC(&qword_1001322F0, &qword_1000F36C0);
        swift_arrayInitWithCopy();

        if (v92)
        {
          v97 = v88[2].isa;
          v98 = __OFADD__(v97, v92);
          v99 = (v97 + v92);
          if (v98)
          {
            __break(1u);
LABEL_309:
            __break(1u);
LABEL_310:
            __break(1u);
LABEL_311:
            __break(1u);
LABEL_312:
            __break(1u);
LABEL_318:
            v320 = v86;
            v321 = sub_1000E92E4();

            v469 = v321;
            swift_willThrow();
            swift_unknownObjectRelease();

            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            sub_1000047C4(&v563, &unk_100133DC0, &unk_1000F5EA0);

            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            LODWORD(v534) = 0;
            LODWORD(v533) = 0;
            LODWORD(v24) = 0;
            LODWORD(isa) = 0;
            LODWORD(v530) = 0;
            LODWORD(v532) = 0;
            LODWORD(v531) = 0;
            v19 = 1;
            v20 = 1;
            v21 = 1;
            v22 = 1;
            v23 = 1;
            goto LABEL_141;
          }

          v88[2].isa = v99;
        }
      }

      else
      {

        if (v92)
        {
          goto LABEL_247;
        }
      }

      v87 += 1056;
      v86 = (v86 - 1);
      if (!v86)
      {
        goto LABEL_119;
      }
    }
  }

  *&v531 = v24;
  v88 = _swiftEmptyArrayStorage;
LABEL_119:
  v86 = v88[2].isa;
  if (v86)
  {
    v100 = 0;
    *&v533 = v88 + 4;
    p_name = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v100 >= v88[2].isa)
      {
        __break(1u);
LABEL_300:
        __break(1u);
LABEL_301:
        __break(1u);
LABEL_302:
        v316 = v86;
        v317 = sub_1000E92E4();

        v469 = v317;
        swift_willThrow();
        swift_unknownObjectRelease();

LABEL_306:
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        sub_1000047C4(&v563, &unk_100133DC0, &unk_1000F5EA0);

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
LABEL_307:
        swift_unknownObjectRelease();
        LODWORD(v534) = 0;
        LODWORD(v533) = 0;
        v23 = 0;
        LODWORD(v24) = 0;
        LODWORD(isa) = 0;
        LODWORD(v530) = 0;
        LODWORD(v532) = 0;
        LODWORD(v531) = 0;
        v19 = 1;
        v20 = 1;
        v21 = 1;
        v22 = 1;
        goto LABEL_141;
      }

      v102 = *(v533 + 8 * v100);
      v103 = *(v102 + 16);
      v104 = *(p_name + 16);
      v24 = v104 + v103;
      if (__OFADD__(v104, v103))
      {
        goto LABEL_300;
      }

      v105 = swift_isUniquelyReferenced_nonNull_native();
      if (v105 && v24 <= *(p_name + 24) >> 1)
      {
        if (!*(v102 + 16))
        {
          goto LABEL_121;
        }
      }

      else
      {
        if (v104 <= v24)
        {
          v106 = v104 + v103;
        }

        else
        {
          v106 = v104;
        }

        p_name = sub_1000A37D0(v105, v106, 1, p_name);
        if (!*(v102 + 16))
        {
LABEL_121:

          v101 = v535;
          if (v103)
          {
            goto LABEL_301;
          }

          goto LABEL_122;
        }
      }

      v107 = *(p_name + 16);
      if ((*(p_name + 24) >> 1) - v107 < v103)
      {
        goto LABEL_304;
      }

      memcpy((p_name + v107 + 32), (v102 + 32), v103);

      v101 = v535;
      if (v103)
      {
        v108 = *(p_name + 16);
        v98 = __OFADD__(v108, v103);
        v109 = v108 + v103;
        if (v98)
        {
          goto LABEL_309;
        }

        *(p_name + 16) = v109;
      }

LABEL_122:
      v100 = (v100 + 1);
      if (v86 == v100)
      {
        goto LABEL_138;
      }
    }
  }

  p_name = _swiftEmptyArrayStorage;
  v101 = v535;
LABEL_138:

  v110 = v468;
  swift_unknownObjectRetain();
  v111 = v462;
  swift_unknownObjectRetain();

  v112 = v469;
  sub_1000DFE08(v111, p_name, v110, v536);
  v469 = v112;
  if (v112)
  {

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    goto LABEL_140;
  }

  *&v525 = p_name;
  v117 = v537;
  v118 = v538;
  v101[34] = v537;
  v563 = v118;
  v101[16] = v118;
  v24 = v531;
  v119 = *(v531 + 16);
  *&v524 = v117;
  swift_unknownObjectRetain();
  v86 = v567;
  sub_1000299EC(&v563, v567, &unk_100133DC0, &unk_1000F5EA0);
  if (v119)
  {
    v120 = (v24 + 32);
    *&v530 = &v567[20] + 8;
    v121 = _swiftEmptyArrayStorage;
    *&v528 = &v565[41];
    v529 = xmmword_1000EC870;
    while (1)
    {
      v532 = v119;
      *&v533 = v121;
      *&v531 = v24;
      memcpy(v567, v120, 0x418uLL);
      sub_1000125FC(&qword_1001322E0, &qword_1000F36B0);
      v122 = swift_allocObject();
      *(v122 + 16) = v529;
      v123 = *&v567[20];
      v124 = *(v530 + 4);
      v125 = *v530;
      v126 = v125 | (v124 << 32);
      *(v122 + 32) = *&v567[20];
      *(v122 + 44) = v124;
      *(v122 + 40) = v125;
      memcpy(v565, &v567[33], 0x208uLL);
      if (sub_1000DFDF0(v565) == 1)
      {
        sub_1000815EC(v123, v126);
      }

      else
      {
        v127 = v565[40];
        v128 = *(v528 + 4);
        v129 = *v528;
        sub_1000815EC(v123, v126);
        sub_1000299EC(v567, v566, &qword_100132300, &unk_1000F5E90);
        sub_1000299EC(&v567[33], v566, &unk_100133DB0, &unk_1000F5E80);
        sub_1000815EC(v127, v129 | (v128 << 32));
        v122 = sub_1000A3AEC(1, 2, 1, v122);
        sub_1000047C4(&v567[33], &unk_100133DB0, &unk_1000F5E80);
        *(v122 + 16) = 2;
        *(v122 + 48) = v127;
        *(v122 + 60) = v128;
        *(v122 + 56) = v129;
        v101 = v535;
        sub_1000047C4(v567, &qword_100132300, &unk_1000F5E90);
      }

      v130 = *(v122 + 16);
      v121 = v533;
      v131 = *(v533 + 16);
      v86 = (v131 + v130);
      v24 = v531;
      if (__OFADD__(v131, v130))
      {
        goto LABEL_311;
      }

      v132 = swift_isUniquelyReferenced_nonNull_native();
      if (v132 && (v133 = *(v121 + 3) >> 1, v133 >= v86))
      {
        if (!*(v122 + 16))
        {
          goto LABEL_175;
        }
      }

      else
      {
        if (v131 <= v86)
        {
          v134 = v131 + v130;
        }

        else
        {
          v134 = v131;
        }

        v121 = sub_1000A3AEC(v132, v134, 1, v121);
        v133 = *(v121 + 3) >> 1;
        if (!*(v122 + 16))
        {
LABEL_175:

          if (v130)
          {
            goto LABEL_312;
          }

          goto LABEL_176;
        }
      }

      if (v133 - *(v121 + 2) < v130)
      {
        __break(1u);
        goto LABEL_318;
      }

      swift_arrayInitWithCopy();

      if (v130)
      {
        v135 = *(v121 + 2);
        v98 = __OFADD__(v135, v130);
        v136 = v135 + v130;
        if (v98)
        {
          __break(1u);
LABEL_317:
          __break(1u);
          goto LABEL_318;
        }

        *(v121 + 2) = v136;
      }

LABEL_176:
      v120 += 1056;
      v119 = v532 - 1;
      if (v532 == 1)
      {
        goto LABEL_194;
      }
    }
  }

  v121 = _swiftEmptyArrayStorage;
LABEL_194:
  v137 = v24;
  v24 = *(v121 + 2);
  v138 = _swiftEmptyArrayStorage;
  *&v531 = v137;
  if (!v24)
  {
    goto LABEL_202;
  }

  *&v567[0] = _swiftEmptyArrayStorage;
  v139 = sub_1000AA4C8(0, v24, 0);
  v140 = 0;
  v138 = *&v567[0];
  v141 = v121;
  p_name = (v121 + 40);
  do
  {
    if (v140 >= *(v141 + 2))
    {
      goto LABEL_310;
    }

    if (((*p_name | (*(p_name + 4) << 32)) & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_348;
    }

    v86 = *(p_name - 8);
    *&v567[0] = v138;
    v137 = v138[2];
    v142 = v138[3];

    if (v137 >= v142 >> 1)
    {
      v139 = sub_1000AA4C8((v142 > 1), v137 + 1, 1);
      v138 = *&v567[0];
    }

    v140 = (v140 + 1);
    v138[2] = v137 + 1;
    v138[v137 + 4] = v86;
    p_name += 16;
  }

  while (v24 != v140);
  v101 = v535;
  v121 = v141;
LABEL_202:
  v143 = v469;
  sub_1000AF920(v138, 0x40uLL, v462);
  v469 = v143;
  if (v143)
  {

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_1000047C4(&v563, &unk_100133DC0, &unk_1000F5EA0);

    v20 = 0;
    v21 = 0;
    LODWORD(v534) = 0;
    v22 = 0;
    LODWORD(v533) = 0;
    v23 = 0;
    LODWORD(v24) = 0;
    LODWORD(isa) = 0;
    LODWORD(v530) = 0;
    LODWORD(v532) = 0;
    LODWORD(v531) = 0;
    v19 = 1;
    goto LABEL_141;
  }

  v145 = v144;

  v101[17] = v145;
  v146 = sub_1000A11E4(_swiftEmptyArrayStorage);
  v148 = *(v121 + 2);
  if (!v148)
  {
    v152 = v146;
    goto LABEL_238;
  }

  v149 = 0;
  v150 = v24;
  v151 = v121 + 40;
  *&v522 = v148 - 1;
  *&v147 = 136446210;
  v526 = v147;
  v86 = v468;
  v152 = v146;
  *&v533 = v121;
  *&v523 = v121 + 40;
  while (2)
  {
    v153 = &v151[16 * v149];
    v24 = v149;
    *&v528 = v152;
    while (2)
    {
      if (v24 >= *(v533 + 16))
      {
        goto LABEL_317;
      }

      v154 = *(v153 - 1);
      v155 = *v153 | (*(v153 + 2) << 32);
      v532 = v155;
      *&v530 = v154;
      if ((v155 & 0x8000000000000000) != 0)
      {
        v169 = qword_10012F718;

        if (v169 != -1)
        {
          swift_once();
        }

        v170 = sub_1000E96A4();
        sub_100007488(v170, qword_100133BB0);
        v171 = sub_1000E9684();
        v172 = sub_1000E9BA4();
        if (os_log_type_enabled(v171, v172))
        {
          v173 = swift_slowAlloc();
          *v173 = 0;
          v86 = v468;
        }

        sub_1000C6078(v530, v532);

LABEL_208:
        ++v24;
        v153 += 16;
        v152 = v528;
        if (v148 == v24)
        {
          goto LABEL_238;
        }

        continue;
      }

      break;
    }

    *&v529 = v24;
    v24 = v148;
    v140 = WORD2(v155);
    v156 = v152[2];
    v137 = (v155 >> 40) & 1;
    v157 = ((v155 & 0xFFFF00000000) >> 32) | (((v155 >> 40) & 1) << 8);

    if (v156)
    {
      sub_10009F3BC(((v155 & 0xFFFF00000000) >> 32) | (((HIDWORD(v155) >> 8) & 1) << 8));
      if (v158)
      {
        if (qword_10012F718 != -1)
        {
          swift_once();
        }

        v159 = sub_1000E96A4();
        sub_100007488(v159, qword_100133BB0);
        v160 = sub_1000E9684();
        LOBYTE(v155) = sub_1000E9BA4();
        if (os_log_type_enabled(v160, v155))
        {
          v161 = swift_slowAlloc();
          v162 = swift_slowAlloc();
          *&v527 = v160;
          v163 = v162;
          *&v567[0] = v162;
          *v161 = v526;
          LOBYTE(v566[0]) = BYTE4(v155);
          BYTE1(v566[0]) = v137;
          v164 = sub_1000E9944();
          v166 = sub_100093A3C(v164, v165, v567);

          *(v161 + 4) = v166;
          v86 = v468;
          v167 = v155;
          v168 = v527;
          _os_log_impl(&_mh_execute_header, v527, v167, "duplicate gradient lookup key for %{public}s", v161, 0xCu);
          sub_100012710(v163);

          sub_1000C6078(v530, v532);
        }

        else
        {
          sub_1000C6078(v530, v532);
        }

        v101 = v535;
        v148 = v24;
        v24 = v529;
        goto LABEL_208;
      }
    }

    v174 = swift_isUniquelyReferenced_nonNull_native();
    *&v567[0] = v152;
    v175 = sub_10009F3BC(((v155 & 0xFFFF00000000) >> 32) | (((HIDWORD(v155) >> 8) & 1) << 8));
    v178 = v152[2];
    v179 = (v176 & 1) == 0;
    v98 = __OFADD__(v178, v179);
    v180 = v178 + v179;
    if (v98)
    {
      __break(1u);
      goto LABEL_324;
    }

    KeyPath = v176;
    if (v152[3] < v180)
    {
      sub_1000B2E78(v180, v174);
      v175 = sub_10009F3BC(v157);
      if ((KeyPath & 1) == (v182 & 1))
      {
        v86 = v468;
        v148 = v24;
        goto LABEL_230;
      }

LABEL_461:
      result = sub_1000E9FA4();
      __break(1u);
LABEL_462:
      __break(1u);
      goto LABEL_463;
    }

    v148 = v24;
    if ((v174 & 1) == 0)
    {
      v190 = v175;
      sub_1000B62AC();
      v175 = v190;
    }

    v86 = v468;
LABEL_230:
    v183 = (v529 + 0.5) / v150;
    v152 = *&v567[0];
    if (KeyPath)
    {
      *(*(*&v567[0] + 56) + 4 * v175) = v183;
      sub_1000C6078(v530, v532);
    }

    else
    {
      *(*&v567[0] + 8 * (v175 >> 6) + 64) |= 1 << v175;
      v184 = (v152[6] + 2 * v175);
      *v184 = v140;
      v184[1] = v137;
      *(v152[7] + 4 * v175) = v183;
      sub_1000C6078(v530, v532);
      v188 = v152[2];
      v98 = __OFADD__(v188, 1);
      v189 = v188 + 1;
      if (v98)
      {
        __break(1u);
        goto LABEL_328;
      }

      v152[2] = v189;
    }

    v101 = v535;
    v149 = v529 + 1;
    v151 = v523;
    if (v522 != v529)
    {
      continue;
    }

    break;
  }

LABEL_238:

  v101[18] = v152;

  v191 = sub_1000E98E4();
  isa = [v461 newFunctionWithName:v191];

  if (!isa)
  {

    sub_10001B6F8();
    v201 = swift_allocError();
    *v202 = 0;
    v469 = v201;
    swift_willThrow();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_1000047C4(&v563, &unk_100133DC0, &unk_1000F5EA0);

    swift_unknownObjectRelease();
    v21 = 0;
    LODWORD(v534) = 0;
    v22 = 0;
    LODWORD(v533) = 0;
    v23 = 0;
    LODWORD(v24) = 0;
LABEL_296:
    LODWORD(v530) = 0;
    LODWORD(v532) = 0;
    LODWORD(v531) = 0;
    v19 = 1;
    v20 = 1;
    goto LABEL_141;
  }

  *&v528 = v152;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v193 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v194 = sub_1000E98E4();
  v195 = sub_1000E98E4();
  v196 = [v193 URLForResource:v194 withExtension:v195];

  p_name = &stru_10012CFF8.name;
  if (v196)
  {
    v86 = v463;
    sub_1000E9364();

    v90 = [objc_allocWithZone(MTLBinaryArchiveDescriptor) init];
    sub_1000E9344(v197);
    v199 = v198;
    [v90 setUrl:v198];

    *&v567[0] = 0;
    v196 = [v462 newBinaryArchiveWithDescriptor:v90 error:v567];
    v200 = *&v567[0];
    if (!v196)
    {
      v203 = v200;
      sub_1000E92E4();

      swift_willThrow();
      if (qword_10012F718 != -1)
      {
        goto LABEL_346;
      }

      goto LABEL_244;
    }

    (*(v459 + 8))(v86, v460);
  }

  while (2)
  {
    v213 = [objc_allocWithZone(MTLComputePipelineDescriptor) *(p_name + 1624)];
    [v213 setComputeFunction:isa];
    if (v196)
    {
      sub_1000125FC(&qword_1001303F0, &unk_1000F20F0);
      v214 = swift_allocObject();
      *(v214 + 16) = xmmword_1000EC860;
      *(v214 + 32) = v196;
      swift_unknownObjectRetain_n();
      sub_1000125FC(&qword_100133DE8, &qword_1000F5FB0);
      v215 = sub_1000E9A74().super.isa;

      [v213 setBinaryArchives:v215];
      swift_unknownObjectRelease();
    }

    *&v567[0] = 0;
    v216 = v462;
    v217 = [v462 newComputePipelineStateWithDescriptor:v213 options:0 reflection:0 error:v567];
    v218 = *&v567[0];
    if (!v217)
    {
      v310 = *&v567[0];

      v311 = sub_1000E92E4();

      v469 = v311;
      swift_willThrow();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      sub_1000047C4(&v563, &unk_100133DC0, &unk_1000F5EA0);

      swift_unknownObjectRelease();
      v21 = 0;
      LODWORD(v534) = 0;
      v22 = 0;
      LODWORD(v533) = 0;
      v23 = 0;
      LODWORD(v24) = 0;
      LODWORD(isa) = 0;
      goto LABEL_296;
    }

    *&v533 = v213;
    v219 = v535;
    v535[25] = v217;
    v220 = objc_allocWithZone(MTLDepthStencilDescriptor);
    v221 = v218;
    v222 = [v220 init];
    [v222 setDepthWriteEnabled:1];
    [v222 setDepthCompareFunction:4];
    v223 = [v216 newDepthStencilStateWithDescriptor:v222];
    v24 = v223;
    if (!v223)
    {

      sub_10001B6F8();
      v312 = swift_allocError();
      *v313 = 2;
      v469 = v312;
      swift_willThrow();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      sub_1000047C4(&v563, &unk_100133DC0, &unk_1000F5EA0);

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v21 = 0;
      LODWORD(v534) = 0;
      LODWORD(v533) = 0;
      v23 = 0;
      LODWORD(isa) = 0;
      LODWORD(v530) = 0;
      LODWORD(v532) = 0;
      LODWORD(v531) = 0;
      v19 = 1;
      v20 = 1;
      v22 = 1;
      goto LABEL_141;
    }

    *&v529 = v222;
    v219[19] = v223;
    v224 = objc_allocWithZone(MTLRenderPipelineDescriptor);
    swift_unknownObjectRetain();
    v225 = [v224 init];
    [v225 setRasterSampleCount:4];
    v226 = [v225 colorAttachments];
    v227 = [v226 objectAtIndexedSubscript:0];

    if (!v227)
    {
      __break(1u);
      goto LABEL_423;
    }

    *&v527 = v24;

    [v227 setPixelFormat:81];

    [v225 setDepthAttachmentPixelFormat:250];
    v228 = v531;
    if (v196)
    {
      sub_1000125FC(&qword_1001303F0, &unk_1000F20F0);
      v229 = swift_allocObject();
      *(v229 + 16) = xmmword_1000EC860;
      *(v229 + 32) = v196;
      swift_unknownObjectRetain_n();
      sub_1000125FC(&qword_100133DE8, &qword_1000F5FB0);
      v230 = sub_1000E9A74().super.isa;

      [v225 setBinaryArchives:v230];
      swift_unknownObjectRelease();
    }

    v532 = v225;
    swift_getKeyPath();
    sub_1000E1A24(v228);

    *&v526 = v539;
    v24 = [objc_allocWithZone(MTLFunctionDescriptor) init];
    if (v196)
    {
      sub_1000125FC(&qword_1001303F0, &unk_1000F20F0);
      v231 = swift_allocObject();
      *(v231 + 16) = xmmword_1000EC860;
      *(v231 + 32) = v196;
      swift_unknownObjectRetain_n();
      sub_1000125FC(&qword_100133DE8, &qword_1000F5FB0);
      v232 = sub_1000E9A74().super.isa;

      [v24 setBinaryArchives:v232];
      swift_unknownObjectRelease();
    }

    *&v530 = v196;
    *&v523 = "inderVertexPositions";
    v233 = sub_1000E98E4();
    [v24 setName:v233];

    v234 = [objc_allocWithZone(MTLFunctionConstantValues) init];
    LOWORD(v567[0]) = 0;
    [v234 setConstantValue:v567 type:37 atIndex:1];
    [v24 setConstantValues:v234];

    *&v567[0] = 0;
    v235 = [v461 newFunctionWithDescriptor:v24 error:v567];
    v86 = *&v567[0];
    p_name = 0xD00000000000001ALL;
    if (!v235)
    {
      v314 = *&v567[0];
      v315 = sub_1000E92E4();

      v469 = v315;
      swift_willThrow();
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      sub_1000047C4(&v563, &unk_100133DC0, &unk_1000F5EA0);

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      goto LABEL_307;
    }

    v236 = v235;
    v237 = *&v567[0];
    [v532 setVertexFunction:v236];
    swift_unknownObjectRelease();
    v238 = "space::rasterizeMeshVertex";
    v90 = sub_1000E98E4();
    [v24 setName:v90];

    v239 = [objc_allocWithZone(MTLFunctionConstantValues) init];
    if (v526 < -32768)
    {
      __break(1u);
      goto LABEL_345;
    }

    *&v525 = isa;
    v140 = &stru_10012CFF8.name;
    if (v526 >= 0x8000)
    {
LABEL_345:
      __break(1u);
LABEL_346:
      swift_once();
LABEL_244:
      v204 = sub_1000E96A4();
      sub_100007488(v204, qword_100133BB0);
      swift_errorRetain();
      v88 = sub_1000E9684();
      v205 = sub_1000E9BA4();

      if (os_log_type_enabled(v88, v205))
      {
        v206 = swift_slowAlloc();
        v207 = swift_slowAlloc();
        *&v567[0] = v207;
        *v206 = 136315138;
        swift_getErrorValue();
        *&v533 = v88;
        v208 = sub_1000E9FB4();
        v210 = isa;
        v211 = sub_100093A3C(v208, v209, v567);

        *(v206 + 4) = v211;
        isa = v210;
        v212 = v533;
        _os_log_impl(&_mh_execute_header, v533, v205, "Unable to create MTLBinaryArchive. Error: %s", v206, 0xCu);
        sub_100012710(v207);

        p_name = 0x10012D000;

        (*(v459 + 8))(v463, v460);
      }

      else
      {
LABEL_248:

        (*(v459 + 8))(v86, v460);
      }

      v196 = 0;
      v469 = 0;
      continue;
    }

    break;
  }

  v240 = v239;
  LOWORD(v567[0]) = v526;
  [v239 setConstantValue:v567 type:37 atIndex:0];
  LOBYTE(v567[0]) = 0;
  [v240 setConstantValue:v567 type:53 atIndex:2];
  LOBYTE(v567[0]) = 0;
  [v240 setConstantValue:v567 type:53 atIndex:3];
  [v24 setConstantValues:v240];

  *&v567[0] = 0;
  v137 = v461;
  v241 = [v461 newFunctionWithDescriptor:v24 error:v567];
  v86 = *&v567[0];
  if (!v241)
  {
    goto LABEL_302;
  }

  v242 = v241;
  v243 = *&v567[0];
  p_name = v532;
  [v532 setFragmentFunction:v242];
  swift_unknownObjectRelease();
  v244 = sub_1000E98E4();
  [p_name setLabel:v244];

  v245 = [v137 device];
  *&v567[0] = 0;
  v246 = [v245 newRenderPipelineStateWithDescriptor:p_name error:v567];
  swift_unknownObjectRelease();
  v86 = *&v567[0];
  if (!v246)
  {
LABEL_305:
    v318 = v86;
    v319 = sub_1000E92E4();

    v469 = v319;
    swift_willThrow();
    swift_unknownObjectRelease();

    goto LABEL_306;
  }

  v247 = *&v567[0];

  v535[30] = v246;
  if (__OFADD__(v541, v542))
  {
    __break(1u);
LABEL_366:
    __break(1u);
    goto LABEL_367;
  }

  *&v522 = v541 + v542;
  v24 = [objc_allocWithZone(MTLFunctionDescriptor) init];
  v249 = v530;
  if (v530)
  {
    sub_1000125FC(&qword_1001303F0, &unk_1000F20F0);
    v250 = swift_allocObject();
    *(v250 + 16) = xmmword_1000EC860;
    *(v250 + 32) = v249;
    swift_unknownObjectRetain_n();
    sub_1000125FC(&qword_100133DE8, &qword_1000F5FB0);
    v251 = sub_1000E9A74().super.isa;

    [v24 setBinaryArchives:v251];
    swift_unknownObjectRelease();
  }

  v252 = sub_1000E98E4();
  [v24 setName:v252];

  v140 = &kCGColorSpaceSRGB_ptr;
  p_name = &stru_10012CFF8.name;
  v253 = [objc_allocWithZone(MTLFunctionConstantValues) init];
  LOWORD(v567[0]) = 0;
  [v253 setConstantValue:v567 type:37 atIndex:1];
  [v24 setConstantValues:v253];

  *&v567[0] = 0;
  v137 = v461;
  v254 = [v461 newFunctionWithDescriptor:v24 error:v567];
  v86 = *&v567[0];
  if (!v254)
  {
    goto LABEL_318;
  }

  v255 = v254;
  v256 = *&v567[0];
  [v532 setVertexFunction:v255];
  swift_unknownObjectRelease();
  v257 = sub_1000E98E4();
  [v24 setName:v257];

  v248 = [objc_allocWithZone(MTLFunctionConstantValues) init];
  if (v522 < -32768)
  {
    goto LABEL_366;
  }

  v137 = v525;
  v140 = &stru_10012CFF8.name;
  if (v522 >= 0x8000)
  {
LABEL_367:
    __break(1u);
    goto LABEL_368;
  }

  v258 = v248;
  LOWORD(v567[0]) = v522;
  [v248 setConstantValue:v567 type:37 atIndex:0];
  LOBYTE(v567[0]) = 0;
  [v258 setConstantValue:v567 type:53 atIndex:2];
  LOBYTE(v567[0]) = 1;
  [v258 setConstantValue:v567 type:53 atIndex:3];
  [v24 setConstantValues:v258];

  *&v567[0] = 0;
  v259 = v461;
  v260 = [v461 newFunctionWithDescriptor:v24 error:v567];
  v86 = *&v567[0];
  v261 = v530;
  if (!v260)
  {
    goto LABEL_318;
  }

  v262 = v260;
  v263 = *&v567[0];
  v264 = v532;
  [v532 setFragmentFunction:v262];
  swift_unknownObjectRelease();
  v265 = sub_1000E98E4();
  [v264 setLabel:v265];

  v266 = [v259 device];
  *&v567[0] = 0;
  v267 = [v266 newRenderPipelineStateWithDescriptor:v264 error:v567];
  swift_unknownObjectRelease();
  v86 = *&v567[0];
  if (!v267)
  {
    goto LABEL_318;
  }

  v268 = *&v567[0];

  v535[31] = v267;
  swift_getKeyPath();
  sub_1000E1A24(v531);

  *&v521 = v545;
  v24 = [objc_allocWithZone(MTLFunctionDescriptor) init];
  if (v261)
  {
    sub_1000125FC(&qword_1001303F0, &unk_1000F20F0);
    v269 = swift_allocObject();
    *(v269 + 16) = xmmword_1000EC860;
    *(v269 + 32) = v261;
    swift_unknownObjectRetain_n();
    sub_1000125FC(&qword_100133DE8, &qword_1000F5FB0);
    v270 = sub_1000E9A74().super.isa;

    [v24 setBinaryArchives:v270];
    swift_unknownObjectRelease();
  }

  *&v520 = "space::rasterizeArcFragment";
  v271 = sub_1000E98E4();
  [v24 setName:v271];

  v272 = [objc_allocWithZone(MTLFunctionConstantValues) init];
  LOWORD(v567[0]) = 0;
  [v272 setConstantValue:v567 type:37 atIndex:1];
  [v24 setConstantValues:v272];

  *&v567[0] = 0;
  v273 = [v461 newFunctionWithDescriptor:v24 error:v567];
  if (!v273)
  {
LABEL_322:
    v324 = *&v567[0];
    v325 = sub_1000E92E4();

    v469 = v325;
    swift_willThrow();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_1000047C4(&v563, &unk_100133DC0, &unk_1000F5EA0);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    LODWORD(v534) = 0;
    LODWORD(v533) = 0;
    LODWORD(isa) = 0;
    LODWORD(v530) = 0;
    LODWORD(v532) = 0;
    LODWORD(v531) = 0;
    v19 = 1;
    v20 = 1;
    v21 = 1;
    v22 = 1;
    v23 = 1;
    LODWORD(v24) = 1;
    goto LABEL_141;
  }

  v274 = v273;
  v275 = *&v567[0];
  [v532 setVertexFunction:v274];
  swift_unknownObjectRelease();
  v276 = sub_1000E98E4();
  [v24 setName:v276];

  v277 = [objc_allocWithZone(MTLFunctionConstantValues) init];
  if (v521 < -32768)
  {
    __break(1u);
    goto LABEL_394;
  }

  *&v519 = "BackgroundVertex";
  if (v521 >= 0x8000)
  {
LABEL_394:
    __break(1u);
    goto LABEL_395;
  }

  v278 = v277;
  LOWORD(v567[0]) = v521;
  [v277 setConstantValue:v567 type:37 atIndex:0];
  LOBYTE(v567[0]) = 0;
  [v278 setConstantValue:v567 type:53 atIndex:2];
  LOBYTE(v567[0]) = 0;
  [v278 setConstantValue:v567 type:53 atIndex:3];
  [v24 setConstantValues:v278];

  *&v567[0] = 0;
  v279 = v461;
  v280 = [v461 newFunctionWithDescriptor:v24 error:v567];
  if (!v280)
  {
    goto LABEL_322;
  }

  v281 = v280;
  v282 = *&v567[0];
  v283 = v532;
  [v532 setFragmentFunction:v281];
  swift_unknownObjectRelease();
  v284 = sub_1000E98E4();
  [v283 setLabel:v284];

  v285 = [v279 device];
  *&v567[0] = 0;
  v286 = [v285 newRenderPipelineStateWithDescriptor:v283 error:v567];
  swift_unknownObjectRelease();
  v287 = *&v567[0];
  if (!v286)
  {
    goto LABEL_322;
  }

  v288 = *&v567[0];

  v535[32] = v286;
  *&v518 = v547 + v548;
  if (__OFADD__(v547, v548))
  {
    __break(1u);
LABEL_399:
    __break(1u);
    goto LABEL_400;
  }

  v24 = [objc_allocWithZone(MTLFunctionDescriptor) init];
  if (v530)
  {
    sub_1000125FC(&qword_1001303F0, &unk_1000F20F0);
    v289 = swift_allocObject();
    *(v289 + 16) = xmmword_1000EC860;
    *(v289 + 32) = v530;
    swift_unknownObjectRetain_n();
    sub_1000125FC(&qword_100133DE8, &qword_1000F5FB0);
    v290 = sub_1000E9A74().super.isa;

    [v24 setBinaryArchives:v290];
    swift_unknownObjectRelease();
  }

  v291 = sub_1000E98E4();
  [v24 setName:v291];

  v292 = [objc_allocWithZone(MTLFunctionConstantValues) init];
  LOWORD(v567[0]) = 0;
  [v292 setConstantValue:v567 type:37 atIndex:1];
  [v24 setConstantValues:v292];

  *&v567[0] = 0;
  v293 = [v461 newFunctionWithDescriptor:v24 error:v567];
  v287 = *&v567[0];
  if (!v293)
  {
    goto LABEL_321;
  }

  v294 = v293;
  v295 = *&v567[0];
  [v532 setVertexFunction:v294];
  swift_unknownObjectRelease();
  v137 = 0xD00000000000001ALL;
  v296 = sub_1000E98E4();
  [v24 setName:v296];

  v297 = [objc_allocWithZone(MTLFunctionConstantValues) init];
  if (v518 < -32768)
  {
    goto LABEL_399;
  }

  if (v518 >= 0x8000)
  {
LABEL_400:
    __break(1u);
LABEL_401:
    v406 = v287;
    swift_unknownObjectRelease();
    v407 = sub_1000E92E4();

    v469 = v407;
    goto LABEL_396;
  }

  v298 = v297;
  LOWORD(v567[0]) = v518;
  v140 = &stru_10012CFF8.name;
  [v297 setConstantValue:v567 type:37 atIndex:0];
  LOBYTE(v567[0]) = 0;
  [v298 setConstantValue:v567 type:53 atIndex:2];
  LOBYTE(v567[0]) = 1;
  [v298 setConstantValue:v567 type:53 atIndex:3];
  [v24 setConstantValues:v298];

  *&v567[0] = 0;
  v299 = [v461 newFunctionWithDescriptor:v24 error:v567];
  v287 = *&v567[0];
  if (!v299 || (v300 = v299, v301 = *&v567[0], v302 = v532, [v532 setFragmentFunction:v300], swift_unknownObjectRelease(), v303 = sub_1000E98E4(), objc_msgSend(v302, "setLabel:", v303), v303, v304 = objc_msgSend(v461, "device"), *&v567[0] = 0, v305 = objc_msgSend(v304, "newRenderPipelineStateWithDescriptor:error:", v302, v567), swift_unknownObjectRelease(), v287 = *&v567[0], !v305))
  {
LABEL_321:
    v322 = v287;
    v323 = sub_1000E92E4();

    v469 = v323;
    swift_willThrow();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_1000047C4(&v563, &unk_100133DC0, &unk_1000F5EA0);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    LODWORD(v534) = 0;
    LODWORD(v533) = 0;
    LODWORD(v530) = 0;
    LODWORD(v532) = 0;
    LODWORD(v531) = 0;
    v19 = 1;
    v20 = 1;
    v21 = 1;
    v22 = 1;
    v23 = 1;
    LODWORD(v24) = 1;
    LODWORD(isa) = 1;
    goto LABEL_141;
  }

  v306 = *&v567[0];

  v535[33] = v305;
  if (v534 == 1)
  {
    v307 = 12;
  }

  else
  {
    v307 = 8;
  }

  if (v534 == 1)
  {
    v308 = 180;
  }

  else
  {
    v308 = 120;
  }

  v309 = v469;
  v175 = sub_100032D44(1065353216, 7, 0, v308, 1, v307, v462, 50.0, 100.0);
  v469 = v309;
  if (v309)
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_1000047C4(&v563, &unk_100133DC0, &unk_1000F5EA0);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    LODWORD(v534) = 0;
    LODWORD(v533) = 0;
    LODWORD(v532) = 0;
    LODWORD(v531) = 0;
    v19 = 1;
    v20 = 1;
    v21 = 1;
    v22 = 1;
    v23 = 1;
    LODWORD(v24) = 1;
    LODWORD(isa) = 1;
    LODWORD(v530) = 1;
    goto LABEL_141;
  }

LABEL_324:
  v326 = v535;
  v535[20] = v175;
  v326[21] = v176;
  v326[22] = v177;
  KeyPath = &stru_10012CFF8.name;
  v326[23] = [v175 length] / 12;
  v326[24] = [v326[22] length] / 2;
  v534 = [v326[20] length];
  if (!*(v531 + 16))
  {
    __break(1u);
LABEL_426:
    __break(1u);
    goto LABEL_427;
  }

  v327 = v469;
  sub_100034308(160, 5uLL, v462, *(v531 + 176), *(v531 + 176) + 2.0, *(v531 + 180), *(v531 + 184), -1.8, 1.0);
  v469 = v327;
  if (v327)
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_1000047C4(&v563, &unk_100133DC0, &unk_1000F5EA0);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    LODWORD(v533) = 0;
    LODWORD(v532) = 0;
    LODWORD(v531) = 0;
    v19 = 1;
    v20 = 1;
    v21 = 1;
    LODWORD(v534) = 1;
    v22 = 1;
    goto LABEL_343;
  }

LABEL_328:
  v328 = v535;
  v535[26] = v185;
  v328[27] = v186;
  v328[28] = v187;
  v328[29] = [v187 *(KeyPath + 2080)] / 2;
  swift_getKeyPath();
  v329 = v531;
  sub_1000E1A24(v531);

  KeyPath = swift_getKeyPath();
  sub_1000E1A24(v329);

  v24 = v551;
  *&v520 = v557;
  v330 = v551 + v557;
  if (__OFADD__(v551, v557))
  {
    goto LABEL_426;
  }

  v98 = __OFADD__(v330, v526);
  v331 = v330 + v526;
  if (v98)
  {
LABEL_427:
    __break(1u);
    goto LABEL_428;
  }

  v98 = __OFADD__(v331, v521);
  v332 = v331 + v521;
  if (v98)
  {
LABEL_428:
    __break(1u);
    goto LABEL_429;
  }

  p_name = v553 + v554;
  if (__OFADD__(v553, v554))
  {
LABEL_429:
    __break(1u);
    goto LABEL_430;
  }

  *&v526 = v559 + v560;
  if (__OFADD__(v559, v560))
  {
LABEL_430:
    __break(1u);
    goto LABEL_431;
  }

  v333 = p_name + v526;
  if (__OFADD__(p_name, v526))
  {
LABEL_431:
    __break(1u);
    goto LABEL_432;
  }

  v98 = __OFADD__(v333, v522);
  v334 = v333 + v522;
  if (v98)
  {
LABEL_432:
    __break(1u);
    goto LABEL_433;
  }

  v98 = __OFADD__(v334, v518);
  v335 = v334 + v518;
  if (v98)
  {
LABEL_433:
    __break(1u);
LABEL_434:
    __break(1u);
    goto LABEL_435;
  }

  if (v335 > v332)
  {
    v332 = v335;
  }

  if (v332 > 0xFFFFFFFFFFFFFFLL)
  {
    goto LABEL_434;
  }

  if (v332 <= 1)
  {
    v332 = 1;
  }

  v336 = v332 << 7;
  *&v522 = sub_1000125FC(&qword_100133DD0, &qword_1000F5F50);
  v337 = swift_allocObject();
  v86 = v462;
  swift_unknownObjectRetain();
  v338 = v337;
  v339 = v469;
  v139 = sub_1000B8C98(10, v338, v86, v336);
  v469 = v339;
  if (!v339)
  {
LABEL_348:
    v340 = v139;
    swift_unknownObjectRelease();
    v535[35] = v340;
    v238 = v552;
    *&v517 = v558;
    v341 = v552 + v558;
    if (__OFADD__(v552, v558))
    {
      __break(1u);
    }

    else
    {
      v98 = __OFADD__(v341, v540);
      v342 = v341 + v540;
      if (!v98)
      {
        v98 = __OFADD__(v342, v546);
        v343 = v342 + v546;
        if (!v98)
        {
          *&v521 = v555 + v556;
          if (!__OFADD__(v555, v556))
          {
            *&v518 = v561 + v562;
            if (!__OFADD__(v561, v562))
            {
              v344 = v521 + v518;
              if (!__OFADD__(v521, v518))
              {
                v345 = v543 + v544;
                if (!__OFADD__(v543, v544))
                {
                  v98 = __OFADD__(v344, v345);
                  v346 = v344 + v345;
                  if (!v98)
                  {
                    v347 = v549 + v550;
                    if (!__OFADD__(v549, v550))
                    {
                      v98 = __OFADD__(v346, v347);
                      v348 = v346 + v347;
                      if (!v98)
                      {
                        if (v348 > v343)
                        {
                          v343 = v348;
                        }

                        if (v343 <= 0xFFFFFFFFFFFFFFLL)
                        {
                          if (v343 <= 1)
                          {
                            v343 = 1;
                          }

                          v349 = v343 << 7;
                          v350 = swift_allocObject();
                          v86 = v462;
                          swift_unknownObjectRetain();
                          v351 = v350;
                          v352 = v469;
                          v248 = sub_1000B8ECC(10, v351, v86, v349);
                          v469 = v352;
                          if (v352)
                          {
                            swift_unknownObjectRelease();
                            swift_unknownObjectRelease();
                            swift_unknownObjectRelease();

                            swift_unknownObjectRelease();
                            swift_unknownObjectRelease();
                            swift_unknownObjectRelease_n();
                            swift_unknownObjectRelease();
                            swift_unknownObjectRelease();
                            swift_unknownObjectRelease();
                            swift_unknownObjectRelease();
                            sub_1000047C4(&v563, &unk_100133DC0, &unk_1000F5EA0);

                            swift_unknownObjectRelease();
                            LODWORD(v531) = 0;
                            v19 = 1;
                            v20 = 1;
                            v21 = 1;
                            LODWORD(v534) = 1;
                            v22 = 1;
                            LODWORD(v533) = 1;
                            v23 = 1;
                            LODWORD(v24) = 1;
                            LODWORD(isa) = 1;
                            LODWORD(v530) = 1;
                            LODWORD(v532) = 1;
                            goto LABEL_141;
                          }

LABEL_368:
                          v353 = v248;
                          swift_unknownObjectRelease();
                          v535[36] = v353;
                          sub_1000125FC(&unk_100133DD8, &qword_1000F5F58);
                          *&v516 = swift_allocObject();
                          *(v516 + 16) = xmmword_1000EC880;
                          *&v519 = [objc_allocWithZone(MTLFunctionDescriptor) init];
                          if (v530)
                          {
                            sub_1000125FC(&qword_1001303F0, &unk_1000F20F0);
                            v354 = swift_allocObject();
                            *(v354 + 16) = xmmword_1000EC860;
                            *(v354 + 32) = v530;
                            swift_unknownObjectRetain_n();
                            sub_1000125FC(&qword_100133DE8, &qword_1000F5FB0);
                            v86 = sub_1000E9A74().super.isa;

                            [v519 setBinaryArchives:v86];
                            swift_unknownObjectRelease();
                          }

                          v355 = sub_1000E98E4();
                          [v519 setName:v355];

                          v356 = [objc_allocWithZone(MTLFunctionConstantValues) init];
                          if (v238 < -32768)
                          {
                            __break(1u);
                          }

                          else if (v238 < 0x8000)
                          {
                            v357 = v356;
                            LOWORD(v567[0]) = v238;
                            [v356 setConstantValue:v567 type:37 atIndex:1];
                            v358 = v519;
                            [v519 setConstantValues:v357];

                            *&v567[0] = 0;
                            v359 = [v461 newFunctionWithDescriptor:v358 error:v567];
                            v360 = *&v567[0];
                            if (!v359)
                            {
                              goto LABEL_388;
                            }

                            v361 = v359;
                            v362 = *&v567[0];
                            [v532 setVertexFunction:v361];
                            swift_unknownObjectRelease();
                            *&v515 = "background fading";
                            v363 = sub_1000E98E4();
                            [v519 setName:v363];

                            v364 = [objc_allocWithZone(MTLFunctionConstantValues) init];
                            if (v24 < -32768)
                            {
                              __break(1u);
                            }

                            else if (v24 < 0x8000)
                            {
                              v365 = v364;
                              LOWORD(v567[0]) = v24;
                              [v364 v140[226]];
                              LOBYTE(v567[0]) = 1;
                              [v365 v140[226]];
                              LOBYTE(v567[0]) = 0;
                              [v365 v140[226]];
                              v366 = v519;
                              [v519 setConstantValues:v365];

                              *&v567[0] = 0;
                              v367 = [v461 newFunctionWithDescriptor:v366 error:v567];
                              v360 = *&v567[0];
                              if (v367)
                              {
                                v368 = v367;
                                v369 = *&v567[0];
                                v370 = v532;
                                [v532 setFragmentFunction:v368];
                                swift_unknownObjectRelease();
                                *&v513 = v137 - 10;
                                v371 = sub_1000E98E4();
                                [v370 setLabel:v371];

                                v372 = [v461 device];
                                *&v567[0] = 0;
                                v373 = [v372 newRenderPipelineStateWithDescriptor:v370 error:v567];
                                swift_unknownObjectRelease();
                                *&v514 = v373;
                                if (v373)
                                {
                                  v374 = *&v567[0];

                                  v24 = [objc_allocWithZone(MTLFunctionDescriptor) init];
                                  if (v530)
                                  {
                                    sub_1000125FC(&qword_1001303F0, &unk_1000F20F0);
                                    v375 = swift_allocObject();
                                    *(v375 + 16) = xmmword_1000EC860;
                                    *(v375 + 32) = v530;
                                    swift_unknownObjectRetain_n();
                                    sub_1000125FC(&qword_100133DE8, &qword_1000F5FB0);
                                    v376 = sub_1000E9A74().super.isa;

                                    [v24 setBinaryArchives:v376];
                                    swift_unknownObjectRelease();
                                  }

                                  v377 = sub_1000E98E4();
                                  [v24 setName:v377];

                                  v378 = [objc_allocWithZone(MTLFunctionConstantValues) init];
                                  if (v521 >= -32768)
                                  {
                                    if (v521 < 0x8000)
                                    {
                                      v379 = v378;
                                      LOWORD(v567[0]) = v521;
                                      [v378 setConstantValue:v567 type:37 atIndex:1];
                                      [v24 setConstantValues:v379];

                                      *&v567[0] = 0;
                                      v380 = [v461 newFunctionWithDescriptor:v24 error:v567];
                                      v276 = *&v567[0];
                                      if (!v380)
                                      {
                                        goto LABEL_395;
                                      }

                                      v381 = v380;
                                      v382 = *&v567[0];
                                      [v532 setVertexFunction:v381];
                                      swift_unknownObjectRelease();
                                      v383 = sub_1000E98E4();
                                      [v24 setName:v383];

                                      v384 = [objc_allocWithZone(MTLFunctionConstantValues) init];
                                      if (p_name >= -32768)
                                      {
                                        if (p_name < 0x8000)
                                        {
                                          v385 = v384;
                                          LOWORD(v567[0]) = p_name;
                                          [v384 v140[226]];
                                          LOBYTE(v567[0]) = 1;
                                          [v385 v140[226]];
                                          LOBYTE(v567[0]) = 1;
                                          [v385 v140[226]];
                                          [v24 setConstantValues:v385];

                                          *&v567[0] = 0;
                                          v386 = [v461 newFunctionWithDescriptor:v24 error:v567];
                                          v276 = *&v567[0];
                                          if (v386)
                                          {
                                            v387 = v386;
                                            v388 = *&v567[0];
                                            v389 = v532;
                                            [v532 setFragmentFunction:v387];
                                            swift_unknownObjectRelease();
                                            v390 = sub_1000E98E4();
                                            [v389 setLabel:v390];

                                            v391 = [v461 device];
                                            *&v567[0] = 0;
                                            v392 = [v391 newRenderPipelineStateWithDescriptor:v389 error:v567];
                                            swift_unknownObjectRelease();
                                            v287 = *&v567[0];
                                            if (v392)
                                            {
                                              v393 = *&v567[0];

                                              v394 = swift_getKeyPath();
                                              v395 = swift_allocObject();
                                              v396 = v462;
                                              swift_unknownObjectRetain();
                                              v397 = v395;
                                              v398 = v469;
                                              v399 = sub_1000B911C(10, v397, v396, v534);
                                              v469 = v398;
                                              if (v398)
                                              {

                                                swift_unknownObjectRelease();
                                                swift_unknownObjectRelease();
                                                swift_unknownObjectRelease();
                                                swift_unknownObjectRelease();
                                                swift_unknownObjectRelease();
                                                sub_1000047C4(&v563, &unk_100133DC0, &unk_1000F5EA0);
                                                swift_unknownObjectRelease();
                                                swift_unknownObjectRelease();

                                                swift_unknownObjectRelease();
                                                swift_unknownObjectRelease();
LABEL_391:
                                                swift_unknownObjectRelease();
                                                swift_unknownObjectRelease();
                                                swift_unknownObjectRelease();
                                                swift_unknownObjectRelease();
                                                swift_unknownObjectRelease();
                                                *(v516 + 16) = 0;

LABEL_392:

                                                v19 = 1;
                                                v20 = 1;
                                                v21 = 1;
                                                LODWORD(v534) = 1;
                                                v22 = 1;
                                                LODWORD(v533) = 1;
                                                v23 = 1;
                                                LODWORD(v24) = 1;
                                                LODWORD(isa) = 1;
                                                LODWORD(v530) = 1;
                                                LODWORD(v532) = 1;
                                                LODWORD(v531) = 1;
                                                goto LABEL_141;
                                              }

                                              v408 = v399;
                                              swift_unknownObjectRelease();
                                              v409 = v536[0];
                                              v410 = v536[1];
                                              v411 = v516;
                                              *(v516 + 32) = 0;
                                              v411[5] = v514;
                                              v411[6] = v392;
                                              v411[7] = v394;
                                              v411[8] = v408;
                                              v411[9] = v409;
                                              v411[10] = v410;
                                              v412 = objc_allocWithZone(MTLFunctionDescriptor);
                                              *&v521 = v409;
                                              swift_unknownObjectRetain();
                                              *&v519 = v410;
                                              swift_unknownObjectRetain();
                                              v24 = [v412 init];
                                              if (v530)
                                              {
                                                sub_1000125FC(&qword_1001303F0, &unk_1000F20F0);
                                                v413 = swift_allocObject();
                                                *(v413 + 16) = xmmword_1000EC860;
                                                *(v413 + 32) = v530;
                                                swift_unknownObjectRetain_n();
                                                sub_1000125FC(&qword_100133DE8, &qword_1000F5FB0);
                                                v414 = sub_1000E9A74().super.isa;

                                                [v24 setBinaryArchives:v414];
                                                swift_unknownObjectRelease();
                                              }

                                              v415 = sub_1000E98E4();
                                              [v24 setName:v415];

                                              result = [objc_allocWithZone(MTLFunctionConstantValues) init];
                                              if (v517 < -32768)
                                              {
                                                goto LABEL_462;
                                              }

                                              if (v517 >= 0x8000)
                                              {
LABEL_463:
                                                __break(1u);
                                              }

                                              else
                                              {
                                                v416 = result;
                                                LOWORD(v567[0]) = v517;
                                                [result setConstantValue:v567 type:37 atIndex:1];
                                                [v24 setConstantValues:v416];

                                                *&v567[0] = 0;
                                                v417 = [v461 newFunctionWithDescriptor:v24 error:v567];
                                                v226 = *&v567[0];
                                                if (!v417)
                                                {
                                                  goto LABEL_423;
                                                }

                                                v418 = v417;
                                                v419 = *&v567[0];
                                                [v532 setVertexFunction:v418];
                                                swift_unknownObjectRelease();
                                                v420 = sub_1000E98E4();
                                                [v24 setName:v420];

                                                result = [objc_allocWithZone(MTLFunctionConstantValues) init];
                                                if (v520 >= -32768)
                                                {
                                                  if (v520 < 0x8000)
                                                  {
                                                    v421 = result;
                                                    LOWORD(v567[0]) = v520;
                                                    [result setConstantValue:v567 type:37 atIndex:0];
                                                    LOBYTE(v567[0]) = 0;
                                                    [v421 setConstantValue:v567 type:53 atIndex:2];
                                                    LOBYTE(v567[0]) = 0;
                                                    [v421 setConstantValue:v567 type:53 atIndex:3];
                                                    [v24 setConstantValues:v421];

                                                    *&v567[0] = 0;
                                                    v422 = [v461 newFunctionWithDescriptor:v24 error:v567];
                                                    v226 = *&v567[0];
                                                    if (v422)
                                                    {
                                                      v423 = v422;
                                                      v424 = *&v567[0];
                                                      v425 = v532;
                                                      [v532 setFragmentFunction:v423];
                                                      swift_unknownObjectRelease();
                                                      v426 = sub_1000E98E4();
                                                      [v425 setLabel:v426];

                                                      v427 = [v461 device];
                                                      *&v567[0] = 0;
                                                      v428 = [v427 newRenderPipelineStateWithDescriptor:v425 error:v567];
                                                      swift_unknownObjectRelease();
                                                      *&v520 = v428;
                                                      if (!v428)
                                                      {
                                                        v452 = *&v567[0];
                                                        goto LABEL_437;
                                                      }

                                                      v429 = *&v567[0];

                                                      v24 = [objc_allocWithZone(MTLFunctionDescriptor) init];
                                                      if (v530)
                                                      {
                                                        sub_1000125FC(&qword_1001303F0, &unk_1000F20F0);
                                                        v430 = swift_allocObject();
                                                        *(v430 + 16) = xmmword_1000EC860;
                                                        *(v430 + 32) = v530;
                                                        swift_unknownObjectRetain_n();
                                                        sub_1000125FC(&qword_100133DE8, &qword_1000F5FB0);
                                                        v431 = sub_1000E9A74().super.isa;

                                                        [v24 setBinaryArchives:v431];
                                                        swift_unknownObjectRelease();
                                                      }

                                                      v432 = sub_1000E98E4();
                                                      [v24 setName:v432];

                                                      result = [objc_allocWithZone(MTLFunctionConstantValues) init];
                                                      if (v518 >= -32768)
                                                      {
                                                        if (v518 < 0x8000)
                                                        {
                                                          v433 = result;
                                                          LOWORD(v567[0]) = v518;
                                                          [result setConstantValue:v567 type:37 atIndex:1];
                                                          [v24 setConstantValues:v433];

                                                          *&v567[0] = 0;
                                                          v434 = [v461 newFunctionWithDescriptor:v24 error:v567];
                                                          KeyPath = *&v567[0];
                                                          if (v434)
                                                          {
                                                            v435 = v434;
                                                            v436 = *&v567[0];
                                                            [v532 setVertexFunction:v435];
                                                            swift_unknownObjectRelease();
                                                            v437 = sub_1000E98E4();
                                                            [v24 setName:v437];

                                                            result = [objc_allocWithZone(MTLFunctionConstantValues) init];
                                                            if (v526 >= -32768)
                                                            {
                                                              if (v526 < 0x8000)
                                                              {
                                                                v438 = result;
                                                                LOWORD(v567[0]) = v526;
                                                                [result setConstantValue:v567 type:37 atIndex:0];
                                                                LOBYTE(v567[0]) = 0;
                                                                [v438 setConstantValue:v567 type:53 atIndex:2];
                                                                LOBYTE(v567[0]) = 1;
                                                                [v438 setConstantValue:v567 type:53 atIndex:3];
                                                                [v24 setConstantValues:v438];

                                                                *&v567[0] = 0;
                                                                v439 = [v461 newFunctionWithDescriptor:v24 error:v567];
                                                                KeyPath = *&v567[0];
                                                                if (v439)
                                                                {
                                                                  v440 = v439;
                                                                  v441 = *&v567[0];
                                                                  v442 = v532;
                                                                  [v532 setFragmentFunction:v440];
                                                                  swift_unknownObjectRelease();
                                                                  v443 = sub_1000E98E4();
                                                                  [v442 setLabel:v443];

                                                                  v444 = [v461 device];
                                                                  *&v567[0] = 0;
                                                                  v355 = [v444 newRenderPipelineStateWithDescriptor:v442 error:v567];
                                                                  swift_unknownObjectRelease();
                                                                  v86 = *&v567[0];
                                                                  if (v355)
                                                                  {
                                                                    v445 = *&v567[0];

                                                                    v86 = swift_getKeyPath();
                                                                    v446 = swift_allocObject();
                                                                    v447 = v462;
                                                                    swift_unknownObjectRetain();
                                                                    v448 = v446;
                                                                    v449 = v469;
                                                                    v356 = sub_1000B92F4(10, v448, v447, v534);
                                                                    v469 = v449;
                                                                    if (v449)
                                                                    {
                                                                      swift_unknownObjectRelease();
                                                                      swift_unknownObjectRelease();
                                                                      swift_unknownObjectRelease();
                                                                      swift_unknownObjectRelease();
                                                                      swift_unknownObjectRelease();

                                                                      swift_unknownObjectRelease();
                                                                      swift_unknownObjectRelease();
                                                                      swift_unknownObjectRelease();
                                                                      swift_unknownObjectRelease();
                                                                      swift_unknownObjectRelease();
                                                                      swift_unknownObjectRelease();
                                                                      sub_1000047C4(&v563, &unk_100133DC0, &unk_1000F5EA0);
                                                                      swift_unknownObjectRelease();
                                                                      swift_unknownObjectRelease();

LABEL_439:
                                                                      swift_unknownObjectRelease();
                                                                      v454 = v516;

                                                                      swift_unknownObjectRelease();
                                                                      swift_unknownObjectRelease();
                                                                      swift_unknownObjectRelease();
                                                                      swift_unknownObjectRelease();
                                                                      *(v454 + 16) = 0;

                                                                      goto LABEL_392;
                                                                    }

LABEL_454:
                                                                    v455 = v356;
                                                                    swift_unknownObjectRelease();
                                                                    v456 = v536[2];
                                                                    v457 = v516;
                                                                    *(v516 + 88) = 1;
                                                                    v457[12] = v520;
                                                                    v457[13] = v355;
                                                                    v457[14] = v86;
                                                                    v457[15] = v455;
                                                                    v457[16] = 0;
                                                                    v457[17] = v456;
                                                                    swift_unknownObjectRelease();
                                                                    swift_unknownObjectRelease();
                                                                    swift_unknownObjectRelease();
                                                                    swift_unknownObjectRelease();
                                                                    swift_unknownObjectRelease();
                                                                    swift_unknownObjectRelease();

                                                                    swift_unknownObjectRelease();
                                                                    swift_unknownObjectRelease();
                                                                    sub_1000047C4(&v563, &unk_100133DC0, &unk_1000F5EA0);
                                                                    swift_unknownObjectRelease();
                                                                    swift_unknownObjectRelease();
                                                                    v115 = v535;
                                                                    v535[37] = v457;

                                                                    return v115;
                                                                  }

                                                                  goto LABEL_451;
                                                                }

                                                                goto LABEL_435;
                                                              }

LABEL_469:
                                                              __break(1u);
                                                              return result;
                                                            }

LABEL_468:
                                                            __break(1u);
                                                            goto LABEL_469;
                                                          }

LABEL_435:
                                                          v452 = KeyPath;
                                                          swift_unknownObjectRelease();
LABEL_437:
                                                          v453 = sub_1000E92E4();

                                                          v469 = v453;
                                                          goto LABEL_438;
                                                        }

LABEL_467:
                                                        __break(1u);
                                                        goto LABEL_468;
                                                      }

LABEL_466:
                                                      __break(1u);
                                                      goto LABEL_467;
                                                    }

LABEL_423:
                                                    v450 = v226;
LABEL_424:
                                                    v451 = sub_1000E92E4();

                                                    v469 = v451;
LABEL_438:
                                                    swift_willThrow();
                                                    swift_unknownObjectRelease();
                                                    swift_unknownObjectRelease();
                                                    swift_unknownObjectRelease();
                                                    swift_unknownObjectRelease();

                                                    swift_unknownObjectRelease();
                                                    swift_unknownObjectRelease();
                                                    swift_unknownObjectRelease();
                                                    swift_unknownObjectRelease();
                                                    swift_unknownObjectRelease();
                                                    sub_1000047C4(&v563, &unk_100133DC0, &unk_1000F5EA0);

                                                    swift_unknownObjectRelease();
                                                    goto LABEL_439;
                                                  }

LABEL_465:
                                                  __break(1u);
                                                  goto LABEL_466;
                                                }
                                              }

                                              __break(1u);
                                              goto LABEL_465;
                                            }

                                            goto LABEL_401;
                                          }

LABEL_395:
                                          v402 = v276;
                                          swift_unknownObjectRelease();
                                          v403 = sub_1000E92E4();

                                          v469 = v403;
LABEL_396:
                                          swift_willThrow();
                                          swift_unknownObjectRelease();

                                          swift_unknownObjectRelease();
                                          swift_unknownObjectRelease();
                                          swift_unknownObjectRelease();
                                          swift_unknownObjectRelease();
                                          sub_1000047C4(&v563, &unk_100133DC0, &unk_1000F5EA0);

                                          goto LABEL_390;
                                        }

LABEL_460:
                                        __break(1u);
                                        goto LABEL_461;
                                      }

LABEL_459:
                                      __break(1u);
                                      goto LABEL_460;
                                    }

LABEL_458:
                                    __break(1u);
                                    goto LABEL_459;
                                  }

LABEL_457:
                                  __break(1u);
                                  goto LABEL_458;
                                }

                                v404 = *&v567[0];
                                v405 = sub_1000E92E4();

                                v469 = v405;
LABEL_389:
                                swift_willThrow();
                                swift_unknownObjectRelease();

                                swift_unknownObjectRelease();
                                swift_unknownObjectRelease();
                                swift_unknownObjectRelease();
                                swift_unknownObjectRelease();
                                sub_1000047C4(&v563, &unk_100133DC0, &unk_1000F5EA0);

LABEL_390:
                                swift_unknownObjectRelease();
                                goto LABEL_391;
                              }

LABEL_388:
                              v400 = v360;
                              v401 = sub_1000E92E4();

                              v469 = v401;
                              goto LABEL_389;
                            }

                            __break(1u);
                            goto LABEL_457;
                          }

                          __break(1u);
                          goto LABEL_454;
                        }

LABEL_450:
                        __break(1u);
LABEL_451:
                        v450 = v86;
                        swift_unknownObjectRelease();
                        goto LABEL_424;
                      }

LABEL_449:
                      __break(1u);
                      goto LABEL_450;
                    }

LABEL_448:
                    __break(1u);
                    goto LABEL_449;
                  }

LABEL_447:
                  __break(1u);
                  goto LABEL_448;
                }

LABEL_446:
                __break(1u);
                goto LABEL_447;
              }

LABEL_445:
              __break(1u);
              goto LABEL_446;
            }

LABEL_444:
            __break(1u);
            goto LABEL_445;
          }

LABEL_443:
          __break(1u);
          goto LABEL_444;
        }

LABEL_442:
        __break(1u);
        goto LABEL_443;
      }
    }

    __break(1u);
    goto LABEL_442;
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease_n();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_1000047C4(&v563, &unk_100133DC0, &unk_1000F5EA0);

  swift_unknownObjectRelease();
  LODWORD(v532) = 0;
  LODWORD(v531) = 0;
  v19 = 1;
  v20 = 1;
  v21 = 1;
  LODWORD(v534) = 1;
  v22 = 1;
  LODWORD(v533) = 1;
LABEL_343:
  v23 = 1;
  LODWORD(v24) = 1;
  LODWORD(isa) = 1;
  LODWORD(v530) = 1;
LABEL_141:
  v3 = v535;
  swift_unknownObjectRelease();
LABEL_142:
  sub_1000056DC(v3[5], v3[6]);
  v113 = *(v467 + 3);
  v567[2] = *(v467 + 2);
  v567[3] = v113;
  *&v567[4] = v467[8];
  v114 = *v467;
  v567[1] = *(v467 + 1);
  v567[0] = v114;
  sub_1000047C4(v567, &qword_100133DA8, &qword_1000F5E78);
  if (v19)
  {

    if (!v20)
    {
      goto LABEL_144;
    }

LABEL_158:
    swift_unknownObjectRelease();

    if (!v21)
    {
      goto LABEL_159;
    }

LABEL_145:
    swift_unknownObjectRelease();
    if (!v534)
    {
      goto LABEL_146;
    }

LABEL_160:
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (!v22)
    {
      goto LABEL_161;
    }

LABEL_147:
    swift_unknownObjectRelease();
    if (!v533)
    {
      goto LABEL_148;
    }

LABEL_162:
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (!v23)
    {
      goto LABEL_163;
    }

LABEL_149:
    swift_unknownObjectRelease();
    v115 = v535;
    if (!v24)
    {
      goto LABEL_150;
    }

LABEL_164:
    swift_unknownObjectRelease();
    if (!isa)
    {
      goto LABEL_165;
    }

LABEL_151:
    swift_unknownObjectRelease();
    if (!v530)
    {
      goto LABEL_152;
    }

LABEL_166:
    swift_unknownObjectRelease();
    if (!v19)
    {
      goto LABEL_167;
    }

LABEL_153:
    swift_unknownObjectRelease();
    if (!v532)
    {
      goto LABEL_154;
    }

LABEL_168:

    if (!v531)
    {
      goto LABEL_169;
    }

LABEL_155:

    if (!v466)
    {
      goto LABEL_171;
    }

LABEL_170:

    goto LABEL_171;
  }

  if (v20)
  {
    goto LABEL_158;
  }

LABEL_144:
  if (v21)
  {
    goto LABEL_145;
  }

LABEL_159:
  if (v534)
  {
    goto LABEL_160;
  }

LABEL_146:
  if (v22)
  {
    goto LABEL_147;
  }

LABEL_161:
  if (v533)
  {
    goto LABEL_162;
  }

LABEL_148:
  if (v23)
  {
    goto LABEL_149;
  }

LABEL_163:
  v115 = v535;
  if (v24)
  {
    goto LABEL_164;
  }

LABEL_150:
  if (isa)
  {
    goto LABEL_151;
  }

LABEL_165:
  if (v530)
  {
    goto LABEL_166;
  }

LABEL_152:
  if (v19)
  {
    goto LABEL_153;
  }

LABEL_167:
  if (v532)
  {
    goto LABEL_168;
  }

LABEL_154:
  if (v531)
  {
    goto LABEL_155;
  }

LABEL_169:
  if (v466)
  {
    goto LABEL_170;
  }

LABEL_171:
  type metadata accessor for SpaceRenderer();
  swift_deallocPartialClassInstance();
  return v115;
}

void sub_1000D9D20(uint64_t a1@<X0>, char **a2@<X8>)
{
  v2 = *(a1 + 176);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v29 = _swiftEmptyArrayStorage;
  while (1)
  {
    v8 = v7;
    if (!v5)
    {
      break;
    }

LABEL_8:
    v9 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v10 = v9 | (v7 << 6);
    v11 = *(v2 + 48) + 24 * v10;
    v12 = *v11;
    v13 = *(v11 + 8);
    v14 = *(v2 + 56) + 192 * v10;
    v15 = *v14;
    v16 = *(v14 + 16);
    v17 = *(v14 + 48);
    v18 = *(v11 + 16);
    v33 = *(v14 + 32);
    v34 = v17;
    v31 = v15;
    v32 = v16;
    v19 = *(v14 + 64);
    v20 = *(v14 + 80);
    v21 = *(v14 + 112);
    v37 = *(v14 + 96);
    v38 = v21;
    v35 = v19;
    v36 = v20;
    v22 = *(v14 + 128);
    v23 = *(v14 + 144);
    v24 = *(v14 + 160);
    v42 = *(v14 + 176);
    v40 = v23;
    v41 = v24;
    v39 = v22;
    v43[0] = v12;
    v43[1] = v13;
    v44 = v18;
    v56 = v42;
    v54 = v23;
    v55 = v24;
    v52 = v21;
    v53 = v22;
    v50 = v36;
    v51 = v37;
    v48 = v34;
    v49 = v35;
    v46 = v32;
    v47 = v33;
    v45 = v31;
    sub_1000B89BC(&v31, v30);
    sub_1000A1DD4(v12, v13, v18);
    sub_1000047C4(v43, &unk_100133E00, &unk_1000F5FC8);
    v25 = BYTE8(v37);
    if (BYTE8(v37) - 9 > 4)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = sub_1000A37D0(0, *(v29 + 2) + 1, 1, v29);
      }

      v27 = *(v29 + 2);
      v26 = *(v29 + 3);
      if (v27 >= v26 >> 1)
      {
        v29 = sub_1000A37D0((v26 > 1), v27 + 1, 1, v29);
      }

      *(v29 + 2) = v27 + 1;
      v29[v27 + 32] = v25;
    }
  }

  while (1)
  {
    v7 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v7 >= v6)
    {

      *a2 = v29;
      return;
    }

    v5 = *(v2 + 64 + 8 * v7);
    ++v8;
    if (v5)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
}

void sub_1000D9F58(uint64_t a1)
{
  __chkstk_darwin(a1);
  LOBYTE(v3) = v2;
  LOBYTE(v5) = v4;
  isUniquelyReferenced_nonNull_native = v1;
  v7 = v8;
  LODWORD(v8) = v2;
  if (v2 <= 3u)
  {
    goto LABEL_28;
  }

  if (v2 <= 5u)
  {
    goto LABEL_44;
  }

  if (v2 == 6)
  {
    goto LABEL_30;
  }

  if (v2 == 7)
  {
    goto LABEL_5;
  }

  v10 = *(v1 + 12);
  v11 = *(v1 + 16);
  v12 = *(v1 + 24);
  if (*(v1 + 52))
  {
    v13 = *(v1 + 48);
    v15 = *(v1 + 32);
    v14 = *(v1 + 40);

    v16 = sub_1000C5334(v11, v12);
    if (v16 == 8)
    {

      goto LABEL_17;
    }

    v17 = v16;
    v1 = sub_1000C5334(v15, v14);
    if (v1 == 8)
    {
LABEL_17:
      i = 0;
      if (v10)
      {
        LOBYTE(v3) = 1;
      }

      else
      {
        LOBYTE(v3) = 3;
      }

      goto LABEL_47;
    }

    if (v10)
    {
      v3 = 0x707060101010000uLL >> (8 * v17);
      v1 = sub_1000A1E68();
      if (v1)
      {
        i = qword_1000F5FD8[(0x707060101010000uLL >> (8 * v17)) & 7];
        goto LABEL_47;
      }
    }

    sub_1000D9F58(isUniquelyReferenced_nonNull_native);
    sub_1000D9F58(isUniquelyReferenced_nonNull_native);
    v18 = v552;
    v19 = v553;
    memcpy(v609, __src, 0x208uLL);
    memcpy(v608, __dst, 0x208uLL);
    v20 = 1;
    v21.i32[0] = v13;
    sub_1000BEBB0(v608, 1, v597, v21);
    sub_1000047C4(__dst, &qword_100133DA0, &qword_1000F5E70);
    sub_1000047C4(__src, &qword_100133DA0, &qword_1000F5E70);
    if (v19)
    {
      i = 0;
    }

    else
    {
      i = v18;
    }

    v539 = v597[30];
    v545 = v597[29];
    v22 = v597[31];
    v23 = *&v597[32];
    v24 = v597[28];
    v25 = v597[27];
    v26 = v597[26];
    v27 = v597[25];
    v28 = v597[23];
    v29 = v597[24];
    v30 = v597[22];
    v31 = v597[21];
    v32 = *&v597[20];
    v33 = DWORD2(v597[20]) | (WORD6(v597[20]) << 32);
    v34 = v597[18];
    v35 = v597[19];
    v36 = *&v597[17];
    v37 = v597[15];
    v38 = v597[16];
    v39 = v597[14];
    v40 = v597[13];
    v41 = v597[12];
    v42 = v597[11];
    v43 = *(&v597[10] + 1);
    v44 = v597[10];
    v45 = v597[8];
    v46 = v597[9];
    v47 = v597[6];
    v48 = *&v597[7];
    v49 = v597[3];
    v50 = v597[4];
    v51 = *&v597[5];
    v52 = DWORD2(v597[5]);
    v53 = v597[0];
    v54 = v597[1];
    v55 = *&v597[2];
    v56 = DWORD2(v597[2]);
LABEL_151:
    *v7 = v53;
    *(v7 + 16) = v54;
    *(v7 + 32) = v55;
    *(v7 + 40) = v56;
    *(v7 + 48) = v49;
    *(v7 + 64) = v50;
    *(v7 + 80) = v51;
    *(v7 + 88) = v52;
    *(v7 + 96) = v47;
    *(v7 + 112) = v48;
    *(v7 + 128) = v45;
    *(v7 + 144) = v46;
    *(v7 + 160) = v44;
    *(v7 + 168) = v43;
    *(v7 + 176) = v42;
    *(v7 + 192) = v41;
    *(v7 + 208) = v40;
    *(v7 + 224) = v39;
    *(v7 + 240) = v37;
    *(v7 + 256) = v38;
    *(v7 + 272) = v36;
    *(v7 + 288) = v34;
    *(v7 + 304) = v35;
    *(v7 + 320) = v32;
    *(v7 + 332) = WORD2(v33);
    *(v7 + 328) = v33;
    *(v7 + 336) = v31;
    *(v7 + 352) = v30;
    *(v7 + 368) = v28;
    *(v7 + 384) = v29;
    *(v7 + 400) = v27;
    *(v7 + 416) = v26;
    *(v7 + 432) = v25;
    *(v7 + 448) = v24;
    *(v7 + 464) = v545;
    *(v7 + 480) = v539;
    *(v7 + 496) = v22;
    *(v7 + 512) = v23;
    *(v7 + 520) = v20;
    *(v7 + 528) = i;
    *(v7 + 536) = 0;
    return;
  }

  v1 = sub_1000C5334(v11, v12);
  if (v1 == 8)
  {
    if (v11 == 6647407 && v12 == 0xE300000000000000 || (v1 = sub_1000E9F74(), (v1 & 1) != 0))
    {
      i = 0;
      if (v10)
      {
        LOBYTE(v3) = 0;
      }

      else
      {
        LOBYTE(v3) = 2;
      }

      goto LABEL_47;
    }

    v1 = 0x6565726874;
    if (v11 == 0x6565726874 && v12 == 0xE500000000000000 || (v1 = sub_1000E9F74(), (v1 & 1) != 0))
    {
      i = 0;
      if (v10)
      {
        LOBYTE(v3) = 6;
      }

      else
      {
        LOBYTE(v3) = 4;
      }

      goto LABEL_47;
    }

    if (v11 == 1920298854 && v12 == 0xE400000000000000 || (v1 = sub_1000E9F74(), (v1 & 1) != 0))
    {
      i = 0;
      if (v10)
      {
        LOBYTE(v3) = 7;
      }

      else
      {
        LOBYTE(v3) = 5;
      }

      goto LABEL_47;
    }

    goto LABEL_17;
  }

  LOBYTE(v3) = v1;
  if ((v10 & 1) == 0)
  {
    LODWORD(v8) = v1;
    if (v1 <= 3u)
    {
LABEL_28:
      if (v8 <= 1)
      {
        if (!v8)
        {
          goto LABEL_30;
        }

        goto LABEL_46;
      }

      if (v8 != 2)
      {
        i = 0x3FC999999999999ALL;
        goto LABEL_47;
      }

      goto LABEL_45;
    }

    if (v1 > 5u)
    {
      goto LABEL_158;
    }

LABEL_44:
    if (v8 != 4)
    {
LABEL_46:
      i = 0x3FD851EB851EB852;
      goto LABEL_47;
    }

LABEL_45:
    i = 0x3FD3333333333333;
    goto LABEL_47;
  }

  if (v1 <= 4u)
  {
    if (v1 - 2 >= 3)
    {
      LOBYTE(v3) = 0;
      goto LABEL_30;
    }

    LOBYTE(v3) = 1;
    goto LABEL_46;
  }

  if (v1 - 6 >= 2)
  {
    LOBYTE(v3) = 6;
    goto LABEL_30;
  }

  LOBYTE(v3) = 7;
  for (i = 0x3FE0000000000000; ; i = 0x3FDC28F5C28F5C29)
  {
LABEL_47:
    v57 = *isUniquelyReferenced_nonNull_native;
    v58 = 0.0;
    if (*isUniquelyReferenced_nonNull_native > 0.0)
    {
      v58 = 1.0;
      if (v57 < 1.0)
      {
        v58 = ((v57 * (v57 * v57)) * 10.0) + (((v57 * (v57 * 6.0)) * (v57 * (v57 * v57))) + ((v57 * -15.0) * (v57 * (v57 * v57))));
      }
    }

    v59.n128_f32[0] = WallpaperState.rotationLandscapeAmount.getter(v1);
    v546 = v59;
    if (v5)
    {
      if (v59.n128_f32[0] < 0.0)
      {
        v60 = 0.0;
      }

      else
      {
        v60 = v59.n128_f32[0];
      }

      if (v59.n128_f32[0] >= 1.0)
      {
        v61 = 3.1416;
      }

      else
      {
        v61 = v60 * 3.1416;
      }

      v62 = ((0.5 - (cosf(v61) * 0.5)) * -0.15075) + 0.54439;
      v63 = 0.20938;
    }

    else
    {
      v63 = 0.34624;
      v62 = 0.56221;
    }

    v64 = *(isUniquelyReferenced_nonNull_native + 208);
    v65 = fminf((v64 - v63) / (v62 - v63), 1.0);
    if (v65 < 0.0)
    {
      v65 = 0.0;
    }

    *&v515 = v58;
    v514 = (1.0 - v58) * (v65 * v65);
    if ((v5 & 1) == 0)
    {
      sub_1000C57EC(0, 0, v3, __src);
      v433 = __src[1];
      v437 = __src[0];
      v105 = *&__src[2];
      v106 = DWORD2(__src[2]);
      v441 = __src[4];
      v446 = __src[3];
      v107 = *&__src[5];
      v108 = DWORD2(__src[5]);
      v109 = *&__src[7];
      v451 = __src[6];
      v456 = __src[9];
      v110 = __src[10];
      v111 = *(&__src[10] + 1);
      v461 = __src[8];
      v466 = __src[11];
      v471 = __src[12];
      v476 = __src[13];
      v481 = __src[14];
      v486 = __src[16];
      v112 = *&__src[17];
      v491 = __src[15];
      v496 = __src[19];
      v113 = *&__src[20];
      v114 = WORD6(__src[20]);
      v115 = DWORD2(__src[20]);
      v511 = __src[22];
      v501 = __src[18];
      v506 = __src[24];
      v518 = __src[21];
      v524 = __src[25];
      v530 = __src[23];
      v535 = __src[26];
      v541 = __src[27];
      v547 = __src[28];
      v416 = __src[29];
      v423 = __src[30];
      v428 = __src[31];
      v116 = *&__src[32];
      memcpy(__dst, __src, 0x208uLL);
      if (sub_1000DFDF0(__dst) == 1)
      {
        if (qword_10012F578 != -1)
        {
          swift_once();
        }

        memcpy(v609, &xmmword_10013AA50, 0x208uLL);
        v542 = v609[27];
        v548 = v609[28];
        v531 = v609[23];
        v536 = v609[26];
        v507 = v609[24];
        v512 = v609[22];
        v519 = v609[21];
        v525 = v609[25];
        v113 = *&v609[20];
        v117 = DWORD2(v609[20]) | (WORD6(v609[20]) << 32);
        v497 = v609[19];
        v502 = v609[18];
        v112 = *&v609[17];
        v487 = v609[16];
        v492 = v609[15];
        v477 = v609[13];
        v482 = v609[14];
        v467 = v609[11];
        v472 = v609[12];
        v111 = *(&v609[10] + 1);
        v110 = v609[10];
        v457 = v609[9];
        v462 = v609[8];
        v118 = *&v609[7];
        v447 = v609[3];
        v452 = v609[6];
        v107 = *&v609[5];
        v108 = DWORD2(v609[5]);
        v437 = v609[0];
        v442 = v609[4];
        v105 = *&v609[2];
        v106 = DWORD2(v609[2]);
        v412 = *&v609[32];
        v429 = v609[31];
        v433 = v609[1];
        v417 = v609[29];
        v424 = v609[30];
        sub_1000C6110(v609, v608);
        v120 = v442;
        v119 = v447;
        v122 = v452;
        v121 = v457;
        v124 = v462;
        v123 = v467;
        v126 = v417;
        v125 = v424;
        v128 = v472;
        v127 = v477;
        v129 = v429;
        v131 = v482;
        v130 = v487;
        v133 = v492;
        v132 = v497;
        v135 = v502;
        v134 = v507;
        v137 = v519;
        v136 = v525;
        v138 = v512;
        v140 = v531;
        v139 = v536;
        v142 = v542;
        v141 = v548;
      }

      else
      {
        v117 = v115 | (v114 << 32);
        v142 = v541;
        v141 = v547;
        v140 = v530;
        v139 = v535;
        v137 = v518;
        v136 = v524;
        v134 = v506;
        v138 = v511;
        v132 = v496;
        v135 = v501;
        v130 = v486;
        v133 = v491;
        v127 = v476;
        v131 = v481;
        v123 = v466;
        v128 = v471;
        v121 = v456;
        v124 = v461;
        v119 = v446;
        v122 = v451;
        v120 = v441;
        v125 = v423;
        v129 = v428;
        v126 = v416;
        v412 = v116;
        v118 = v109;
      }

      v594[0] = v437;
      v594[1] = v433;
      *&v594[2] = v105;
      DWORD2(v594[2]) = v106;
      v594[3] = v119;
      v594[4] = v120;
      *&v594[5] = v107;
      DWORD2(v594[5]) = v108;
      v594[6] = v122;
      *&v594[7] = v118;
      v594[8] = v124;
      v594[9] = v121;
      LODWORD(v594[10]) = v110;
      *(&v594[10] + 1) = v111;
      v594[11] = v123;
      v594[12] = v128;
      v594[13] = v127;
      v594[14] = v131;
      v594[15] = v133;
      v594[16] = v130;
      *&v594[17] = v112;
      v594[18] = v135;
      v594[19] = v132;
      *&v594[20] = v113;
      DWORD2(v594[20]) = v117;
      WORD6(v594[20]) = WORD2(v117);
      v594[21] = v137;
      v594[22] = v138;
      v594[23] = v140;
      v594[24] = v134;
      v594[25] = v136;
      v594[26] = v139;
      v594[27] = v142;
      v594[28] = v141;
      v594[29] = v126;
      v594[30] = v125;
      v594[31] = v129;
      *&v594[32] = v412;
      if (v514 <= 0.0)
      {
        sub_1000299EC(__src, v609, &unk_100133DB0, &unk_1000F5E80);
        v184 = *&v515;
        if (*&v515 <= 0.0)
        {
LABEL_86:
          if (qword_10012F6B0 != -1)
          {
            swift_once();
          }

          v190 = qword_10013DC30;
          v191 = qword_10013DC38;
          v549 = qword_10013DC40;

          goto LABEL_148;
        }
      }

      else
      {
        sub_1000299EC(__src, v609, &unk_100133DB0, &unk_1000F5E80);
        v184 = *&v515;
        if (qword_10012F6D0 != -1)
        {
          swift_once();
        }

        v183.n128_f32[0] = v514;
        sub_1000BE738(v594, qword_10013DC80, v183);
        if (*&v515 <= 0.0)
        {
          goto LABEL_86;
        }
      }

      v609[0] = v594[29];
      v609[1] = v594[30];
      v609[2] = v594[31];
      *&v609[3] = *&v594[32];
      sub_1000C6180(v609, v608);
      sub_1000BCC80(v594, v184);
      sub_100081544(v609);
      goto LABEL_86;
    }

    sub_1000C57EC(1, 0, v3, v595);
    v344 = v595[1];
    v345 = v595[0];
    v341 = *&v595[2];
    v66 = DWORD2(v595[2]);
    v67 = *&v595[5];
    v68 = DWORD2(v595[5]);
    v474 = v595[6];
    v479 = v595[3];
    v69 = *&v595[7];
    v347 = v595[8];
    v464 = *&v595[9];
    v469 = v595[4];
    v343 = *(&v595[9] + 1);
    v70 = v595[10];
    v346 = *(&v595[10] + 1);
    v444 = v595[12];
    v449 = v595[11];
    v454 = v595[14];
    v459 = v595[15];
    v435 = v595[16];
    v439 = v595[13];
    v71 = *&v595[17];
    v522 = v595[19];
    v528 = v595[18];
    v72 = *&v595[20];
    v73 = WORD6(v595[20]);
    v74 = DWORD2(v595[20]);
    v75 = v595[21];
    v504 = v595[22];
    v509 = v595[23];
    v494 = v595[25];
    v499 = v595[27];
    v484 = v595[24];
    v489 = v595[26];
    v516 = v595[28];
    v431 = v595[30];
    v421 = v595[29];
    v426 = v595[31];
    v76 = *&v595[32];
    memcpy(v609, v595, 0x208uLL);
    if (sub_1000DFDF0(v609) == 1)
    {
      if (qword_10012F5B8 != -1)
      {
LABEL_170:
        swift_once();
      }

      memcpy(__dst, &xmmword_10013BAD0, 0x208uLL);
      v510 = __dst[23];
      v500 = __dst[27];
      v505 = __dst[22];
      v490 = __dst[26];
      v495 = __dst[25];
      v485 = __dst[24];
      v540 = *(&__dst[21] + 1);
      v534 = *&__dst[21];
      v72 = *&__dst[20];
      v77 = DWORD2(__dst[20]) | (WORD6(__dst[20]) << 32);
      v523 = __dst[19];
      v529 = __dst[18];
      v71 = *&__dst[17];
      v455 = __dst[14];
      v460 = __dst[15];
      v436 = __dst[16];
      v440 = __dst[13];
      v445 = __dst[12];
      v450 = __dst[11];
      v346 = *(&__dst[10] + 1);
      v70 = __dst[10];
      v347 = __dst[8];
      v343 = *(&__dst[9] + 1);
      v465 = *&__dst[9];
      v69 = *&__dst[7];
      v475 = __dst[6];
      v480 = __dst[3];
      v470 = __dst[4];
      v67 = *&__dst[5];
      v68 = DWORD2(__dst[5]);
      v344 = __dst[1];
      v345 = __dst[0];
      v78 = *&__dst[2];
      v79 = DWORD2(__dst[2]);
      v80 = *&__dst[32];
      v427 = __dst[31];
      v432 = __dst[30];
      v517 = __dst[28];
      v422 = __dst[29];
      sub_1000C6110(__dst, __src);
      *&v81 = v465;
      v82 = v470;
      v83 = v475;
      v84 = v480;
      v86 = v422;
      v85 = v427;
      v88 = v517;
      v87 = v523;
      v89 = v445;
      v90 = v450;
      v92 = v432;
      v91 = v436;
      v93 = v440;
      v95 = v534;
      v94 = v540;
      v97 = v455;
      v96 = v460;
      v98 = v529;
      v100 = v485;
      v99 = v490;
      v102 = v495;
      v101 = v500;
      v104 = v505;
      v103 = v510;
    }

    else
    {
      v77 = v74 | (v73 << 32);
      v104 = v504;
      v103 = v509;
      v102 = v494;
      v101 = v499;
      v94 = *(&v75 + 1);
      v95 = v75;
      v87 = v522;
      v98 = v528;
      v100 = v484;
      v99 = v489;
      v83 = v474;
      v84 = v479;
      *&v81 = v464;
      v82 = v469;
      v97 = v454;
      v96 = v459;
      v78 = v341;
      v89 = v444;
      v90 = v449;
      v91 = v435;
      v93 = v439;
      v88 = v516;
      v80 = v76;
      v85 = v426;
      v92 = v431;
      v86 = v421;
      v79 = v66;
    }

    v468 = v81;
    *(&v81 + 1) = v343;
    v593[9] = v81;
    v537 = v95;
    v543 = v94;
    *&v143 = v95;
    *(&v143 + 1) = v94;
    v593[21] = v143;
    v593[8] = v347;
    v604 = v86;
    v605 = v92;
    v606 = v85;
    v607 = v80;
    v593[0] = v345;
    v593[1] = v344;
    v342 = v78;
    *&v593[2] = v78;
    v332 = v79;
    v333 = v68;
    DWORD2(v593[2]) = v79;
    v478 = v83;
    v483 = v84;
    v593[3] = v84;
    v473 = v82;
    v593[4] = v82;
    v330 = v67;
    v331 = v69;
    *&v593[5] = v67;
    DWORD2(v593[5]) = v68;
    v593[6] = v83;
    *&v593[7] = v69;
    v334 = v70;
    LODWORD(v593[10]) = v70;
    *(&v593[10] + 1) = v346;
    v448 = v89;
    v453 = v90;
    v593[11] = v90;
    v593[12] = v89;
    v438 = v91;
    v443 = v93;
    v593[13] = v93;
    v458 = v97;
    v463 = v96;
    v593[14] = v97;
    v593[15] = v96;
    v593[16] = v91;
    *&v593[17] = v71;
    v526 = v87;
    v532 = v98;
    v593[18] = v98;
    v593[19] = v87;
    *&v593[20] = v72;
    DWORD2(v593[20]) = v77;
    WORD6(v593[20]) = WORD2(v77);
    v508 = v104;
    v513 = v103;
    v593[22] = v104;
    v593[23] = v103;
    v488 = v100;
    v493 = v99;
    v593[24] = v100;
    v498 = v102;
    v503 = v101;
    v593[25] = v102;
    v593[26] = v99;
    v593[27] = v101;
    v520 = v88;
    v593[28] = v88;
    v425 = v86;
    v430 = v85;
    v593[29] = v86;
    v434 = v92;
    v593[30] = v92;
    v593[31] = v85;
    v335 = v80;
    *&v593[32] = v80;
    memcpy(__dst, v593, 0x208uLL);
    sub_1000299EC(v595, __src, &unk_100133DB0, &unk_1000F5E80);
    sub_1000C57EC(1, 1, v3, v596);
    v337 = v596[1];
    v338 = v596[0];
    v144 = *&v596[2];
    v145 = DWORD2(v596[2]);
    v360 = v596[4];
    v363 = v596[3];
    v146 = *&v596[5];
    v147 = DWORD2(v596[5]);
    v366 = v596[6];
    v148 = *&v596[7];
    v375 = *&v596[9];
    v339 = v596[8];
    v340 = *(&v596[9] + 1);
    v149 = v596[10];
    v150 = *(&v596[10] + 1);
    v382 = v596[11];
    v385 = v596[12];
    v391 = v596[13];
    v151 = *&v596[17];
    v369 = v596[19];
    v372 = v596[18];
    v152 = *&v596[20];
    v153 = WORD6(v596[20]);
    v154 = DWORD2(v596[20]);
    v155 = v596[21];
    v409 = v596[15];
    v413 = v596[23];
    v394 = v596[22];
    v397 = v596[14];
    v400 = v596[25];
    v403 = v596[16];
    v388 = v596[24];
    v418 = v596[27];
    v406 = v596[26];
    v348 = v596[28];
    v351 = v596[29];
    v354 = v596[30];
    v357 = v596[31];
    v156 = *&v596[32];
    memcpy(v608, v596, 0x208uLL);
    if (sub_1000DFDF0(v608) == 1)
    {
      if (qword_10012F5C8 != -1)
      {
        swift_once();
      }

      memcpy(__src, &xmmword_10013BEF0, 0x208uLL);
      v407 = __src[26];
      v414 = __src[23];
      v419 = __src[27];
      v395 = __src[22];
      v389 = __src[24];
      v380 = *(&__src[21] + 1);
      v378 = *&__src[21];
      v152 = *&__src[20];
      v157 = DWORD2(__src[20]) | (WORD6(__src[20]) << 32);
      v370 = __src[19];
      v373 = __src[18];
      v151 = *&__src[17];
      v410 = __src[15];
      v401 = __src[25];
      v404 = __src[16];
      v398 = __src[14];
      v392 = __src[13];
      v383 = __src[11];
      v386 = __src[12];
      v336 = *(&__src[10] + 1);
      v149 = __src[10];
      v376 = *&__src[9];
      v339 = __src[8];
      v340 = *(&__src[9] + 1);
      v148 = *&__src[7];
      v364 = __src[3];
      v367 = __src[6];
      v146 = *&__src[5];
      v147 = DWORD2(__src[5]);
      v337 = __src[1];
      v338 = __src[0];
      v144 = *&__src[2];
      v158 = DWORD2(__src[2]);
      v156 = *&__src[32];
      v358 = __src[31];
      v361 = __src[4];
      v349 = __src[28];
      v352 = __src[29];
      v355 = __src[30];
      sub_1000C6110(__src, v597);
      *&v159 = v376;
      v160 = v378;
      v162 = v361;
      v161 = v364;
      v164 = v367;
      v163 = v370;
      v166 = v349;
      v165 = v352;
      v167 = v380;
      v168 = v383;
      v170 = v386;
      v169 = v389;
      v172 = v355;
      v171 = v358;
      v174 = v392;
      v173 = v395;
      v176 = v398;
      v175 = v401;
      v178 = v410;
      v177 = v414;
      v180 = v404;
      v179 = v407;
      v181 = v373;
      v182 = v419;
    }

    else
    {
      v157 = v154 | (v153 << 32);
      v177 = v413;
      v182 = v418;
      v179 = v406;
      v178 = v409;
      v175 = v400;
      v180 = v403;
      v173 = v394;
      v176 = v397;
      v169 = v388;
      v174 = v391;
      v168 = v382;
      v170 = v385;
      v167 = *(&v155 + 1);
      v160 = v155;
      v181 = v372;
      *&v159 = v375;
      v164 = v366;
      v163 = v369;
      v162 = v360;
      v161 = v363;
      v172 = v354;
      v171 = v357;
      v166 = v348;
      v165 = v351;
      v336 = v150;
      v158 = v145;
    }

    v377 = v159;
    v379 = v160;
    *(&v159 + 1) = v340;
    v592[9] = v159;
    *&v185 = v160;
    v381 = v167;
    *(&v185 + 1) = v167;
    v592[21] = v185;
    v592[8] = v339;
    v600 = v165;
    v601 = v172;
    v602 = v171;
    v603 = v156;
    v592[0] = v338;
    v592[1] = v337;
    v329 = v144;
    *&v592[2] = v144;
    v328 = v158;
    DWORD2(v592[2]) = v158;
    v362 = v162;
    v365 = v161;
    v592[3] = v161;
    v592[4] = v162;
    *&v592[5] = v146;
    v186 = v147;
    DWORD2(v592[5]) = v147;
    v368 = v164;
    v592[6] = v164;
    *&v592[7] = v148;
    LODWORD(v592[10]) = v149;
    *(&v592[10] + 1) = v336;
    v384 = v168;
    v387 = v170;
    v592[11] = v168;
    v592[12] = v170;
    v393 = v174;
    v396 = v173;
    v592[13] = v174;
    v399 = v176;
    v402 = v175;
    v592[14] = v176;
    v411 = v178;
    v415 = v177;
    v592[15] = v178;
    v405 = v180;
    v408 = v179;
    v592[16] = v180;
    *&v592[17] = v151;
    v371 = v163;
    v374 = v181;
    v592[18] = v181;
    v592[19] = v163;
    *&v592[20] = v152;
    DWORD2(v592[20]) = v157;
    WORD6(v592[20]) = WORD2(v157);
    v592[22] = v173;
    v592[23] = v177;
    v390 = v169;
    v592[24] = v169;
    v592[25] = v175;
    v592[26] = v179;
    v420 = v182;
    v592[27] = v182;
    v350 = v166;
    v353 = v165;
    v592[28] = v166;
    v592[29] = v165;
    v356 = v172;
    v359 = v171;
    v592[30] = v172;
    v592[31] = v171;
    *&v592[32] = v156;
    memcpy(__src, v592, 0x208uLL);
    if (*(isUniquelyReferenced_nonNull_native + 96))
    {
      if (v546.n128_f32[0] == 0.0)
      {
        memcpy(v594, __dst, 0x208uLL);
        sub_1000299EC(v596, v597, &unk_100133DB0, &unk_1000F5E80);
        sub_1000C6110(v593, v597);
        v188 = *&v515;
        v189 = v514;
      }

      else
      {
        v188 = *&v515;
        v189 = v514;
        if (v546.n128_f32[0] == 1.0)
        {
          memcpy(v594, v592, 0x208uLL);
          sub_1000299EC(v596, v597, &unk_100133DB0, &unk_1000F5E80);
          sub_1000C6110(v592, v597);
        }

        else
        {
          sub_1000299EC(v596, v597, &unk_100133DB0, &unk_1000F5E80);
          sub_1000BEBB0(__src, 0, v597, v546.n128_u64[0]);
          memcpy(v594, v597, 0x208uLL);
        }
      }
    }

    else
    {
      v192 = v148;
      v193 = *(isUniquelyReferenced_nonNull_native + 56);
      sub_1000299EC(v596, v597, &unk_100133DB0, &unk_1000F5E80);
      if (sub_100019154(v193))
      {
        sub_1000C6110(v593, v597);
        v188 = *&v515;
        v189 = v514;
        v194 = v508;
        v187 = v513;
        v196 = v498;
        v195 = v503;
        v198 = v488;
        v197 = v493;
        v199 = v347;
        v186 = v333;
        v200 = v334;
        v201 = v346;
        v203 = v478;
        v202 = v483;
        v205 = v344;
        v204 = v345;
        v207 = v468;
        v206 = v473;
        v208 = v332;
        v209 = v330;
        v192 = v331;
        v210 = v343;
        v212 = v458;
        v211 = v463;
        v213 = v342;
        v215 = v448;
        v214 = v453;
        v216 = v438;
        v217 = v443;
        v218 = v430;
        v219 = v434;
        v220 = v425;
      }

      else
      {
        sub_1000C6110(v592, v597);
        v205 = v337;
        v204 = v338;
        v208 = v328;
        v206 = v362;
        v202 = v365;
        v199 = v339;
        v210 = v340;
        v200 = v149;
        v201 = v336;
        v71 = v151;
        v207 = v377;
        v203 = v368;
        v526 = v371;
        v532 = v374;
        v72 = v152;
        v77 = v157;
        v520 = v350;
        v209 = v146;
        v213 = v329;
        v537 = v379;
        v214 = v384;
        v543 = v381;
        v335 = v156;
        v217 = v393;
        v194 = v396;
        v187 = v415;
        v195 = v420;
        v215 = v387;
        v198 = v390;
        v212 = v399;
        v196 = v402;
        v197 = v408;
        v211 = v411;
        v216 = v405;
        v220 = v353;
        v219 = v356;
        v218 = v359;
        v188 = *&v515;
        v189 = v514;
      }

      v594[0] = v204;
      v594[1] = v205;
      *&v594[2] = v213;
      DWORD2(v594[2]) = v208;
      v594[3] = v202;
      v594[4] = v206;
      *&v594[5] = v209;
      DWORD2(v594[5]) = v186;
      v594[6] = v203;
      *&v594[7] = v192;
      v594[8] = v199;
      *&v594[9] = v207;
      *(&v594[9] + 1) = v210;
      LODWORD(v594[10]) = v200;
      *(&v594[10] + 1) = v201;
      v594[11] = v214;
      v594[12] = v215;
      v594[13] = v217;
      v594[14] = v212;
      v594[15] = v211;
      v594[16] = v216;
      *&v594[17] = v71;
      v594[18] = v532;
      v594[19] = v526;
      *&v594[20] = v72;
      DWORD2(v594[20]) = v77;
      WORD6(v594[20]) = WORD2(v77);
      *&v594[21] = v537;
      *(&v594[21] + 1) = v543;
      v594[22] = v194;
      v594[23] = v187;
      v594[24] = v198;
      v594[25] = v196;
      v594[26] = v197;
      v594[27] = v195;
      v187.n128_u64[1] = *(&v520 + 1);
      v594[28] = v520;
      v594[29] = v220;
      v594[30] = v219;
      v594[31] = v218;
      v187.n128_u32[1] = HIDWORD(v335);
      *&v594[32] = v335;
    }

    if (v189 > 0.0)
    {
      v221 = v546.n128_f32[0];
      if (qword_10012F6D8 != -1)
      {
        swift_once();
        v221 = v546.n128_f32[0];
      }

      v187.n128_f32[0] = (1.0 - v221) * v189;
      sub_1000BE738(v594, qword_10013DC88, v187);
      if (qword_10012F6E0 != -1)
      {
        swift_once();
      }

      v222 = v546;
      v222.n128_f32[0] = v546.n128_f32[0] * v189;
      sub_1000BE738(v594, qword_10013DC90, v222);
    }

    if (v188 > 0.0)
    {
      if (v546.n128_f32[0] == 0.0 || v546.n128_f32[0] == 1.0)
      {
        v598[0] = v594[29];
        v598[1] = v594[30];
        v598[2] = v594[31];
        v599 = *&v594[32];
        sub_1000C6180(v598, v590);
        sub_1000BCC80(v594, v188);
        sub_100081544(v598);
      }

      else
      {
        sub_1000BCC80(v594, v188 * (1.0 - v546.n128_f32[0]));
        sub_1000BCC80(v594, v188 * v546.n128_f32[0]);
      }
    }

    v223 = v546.n128_f32[0];
    if (v546.n128_f32[0] <= 0.0)
    {
LABEL_140:
      if (v223 <= 0.5)
      {
        if (qword_10012F6B8 != -1)
        {
          swift_once();
        }

        v326 = &qword_10013DC48;
      }

      else
      {
        if (qword_10012F6C0 != -1)
        {
          swift_once();
        }

        v326 = &qword_10013DC60;
      }

      v190 = *v326;
      v191 = v326[1];
      v549 = v326[2];

      sub_1000DFCB4(v592);
      sub_1000DFCB4(v593);
LABEL_148:
      v327 = *(isUniquelyReferenced_nonNull_native + 8);
      if (v327 < 1.0)
      {
        sub_1000BDE14(v594, v190, v191, v327, *&v549, *(&v549 + 1));
      }

      v20 = 0;
      v53 = v594[0];
      v54 = v594[1];
      v55 = *&v594[2];
      v56 = DWORD2(v594[2]);
      v49 = v594[3];
      v50 = v594[4];
      v51 = *&v594[5];
      v52 = DWORD2(v594[5]);
      v47 = v594[6];
      v48 = *&v594[7];
      v45 = v594[8];
      v46 = v594[9];
      v44 = v594[10];
      v43 = *(&v594[10] + 1);
      v42 = v594[11];
      v41 = v594[12];
      v40 = v594[13];
      v39 = v594[14];
      v37 = v594[15];
      v38 = v594[16];
      v36 = *&v594[17];
      v34 = v594[18];
      v35 = v594[19];
      v33 = DWORD2(v594[20]) | (WORD6(v594[20]) << 32);
      v32 = *&v594[20];
      v31 = v594[21];
      v30 = v594[22];
      v28 = v594[23];
      v29 = v594[24];
      v27 = v594[25];
      v26 = v594[26];
      v25 = v594[27];
      v24 = v594[28];
      v539 = v594[30];
      v545 = v594[29];
      v22 = v594[31];
      v23 = *&v594[32];
      goto LABEL_151;
    }

    v515 = i;
    v521 = isUniquelyReferenced_nonNull_native;
    v224 = vmul_n_f32(0xBCA3D70ABCBC6A7FLL, v546.n128_f32[0]);
    v225 = vmul_n_f32(0x3C03126F00000000, v546.n128_f32[0]);
    *&v226 = vadd_f32(v224, *&v594[0]);
    *(&v226 + 2) = v225.f32[0] + *(v594 + 2);
    *&v227 = vadd_f32(v225, *&v594[3]);
    v538 = v225;
    *(&v227 + 2) = v225.f32[0] + *(&v594[3] + 2);
    HIDWORD(v226) = 0;
    HIDWORD(v227) = 0;
    v594[0] = v226;
    v594[3] = v227;
    v228 = *&v594[11];
    v3 = *&v594[11] + 64;
    v229 = 1 << *(*&v594[11] + 32);
    v230 = -1;
    if (v229 < 64)
    {
      v230 = ~(-1 << v229);
    }

    v5 = v230 & *(*&v594[11] + 64);
    v231 = (v229 + 63) >> 6;

    i = 0;
    isUniquelyReferenced_nonNull_native = 24;
    v533 = v228;
    if (v5)
    {
      break;
    }

LABEL_108:
    while (1)
    {
      v8 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v8 >= v231)
      {

        isUniquelyReferenced_nonNull_native = v521;
        i = v515;
        v223 = v546.n128_f32[0];
        goto LABEL_140;
      }

      v5 = *(v3 + 8 * v8);
      ++i;
      if (v5)
      {
        i = v8;
        goto LABEL_112;
      }
    }

    __break(1u);
LABEL_158:
    if (v8 != 6)
    {
LABEL_5:
      i = 0x3FE0000000000000;
      goto LABEL_47;
    }

LABEL_30:
    ;
  }

  while (1)
  {
LABEL_112:
    while (1)
    {
      v232 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v233 = v232 | (i << 6);
      v234 = *(v228 + 48) + 24 * v233;
      v236 = *v234;
      v235 = *(v234 + 8);
      v237 = *(v234 + 16);
      v238 = *(v228 + 56) + 192 * v233;
      v239 = *(v238 + 48);
      v241 = *v238;
      v240 = *(v238 + 16);
      v590[2] = *(v238 + 32);
      v590[0] = v241;
      v590[1] = v240;
      v242 = *(v238 + 96);
      v244 = *(v238 + 64);
      v243 = *(v238 + 80);
      v590[7] = *(v238 + 112);
      v590[6] = v242;
      v590[4] = v244;
      v590[5] = v243;
      v246 = *(v238 + 144);
      v245 = *(v238 + 160);
      v247 = *(v238 + 128);
      v591 = *(v238 + 176);
      v590[10] = v245;
      v590[9] = v246;
      v590[8] = v247;
      v590[3] = v239;
      v248 = *(v238 + 16);
      v586 = *v238;
      v587 = v248;
      v249 = *(v238 + 48);
      v588 = *(v238 + 32);
      v589 = v249;
      v250 = *(v238 + 160);
      v583 = *(v238 + 144);
      v584 = v250;
      v585 = *(v238 + 176);
      v251 = *(v238 + 96);
      v579 = *(v238 + 80);
      v580 = v251;
      v252 = *(v238 + 112);
      v582 = *(v238 + 128);
      v581 = v252;
      if (BYTE9(v247) != 1)
      {
        break;
      }

      *v268.i8 = vadd_f32(v538, *v244.i8);
      v268.i32[3] = vextq_s8(v244, v244, 8uLL).i32[1];
      *&v268.i32[2] = v538.f32[0] + *&v244.i32[2];
      v567 = v586;
      v568 = v587;
      v569 = v588;
      v570 = v589;
      v527 = v268;
      v571 = v268;
      v576 = v583;
      v577 = v584;
      v578 = v585;
      v572 = v579;
      v573 = v580;
      v574 = v581;
      v575 = v582;
      v269 = v237;
      sub_1000A1DD4(v236, v235, v237);
      sub_1000B89BC(v590, &v555);
      sub_1000B89BC(&v567, &v555);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v270 = *&v594[11];
      v554 = *&v594[11];
      v544 = v236;
      v271 = v236;
      v257 = v235;
      v272 = v235;
      v259 = v269;
      v260 = sub_10009F2C8(v271, v272, v269);
      v274 = *(v270 + 16);
      v275 = (v273 & 1) == 0;
      v264 = __OFADD__(v274, v275);
      v276 = v274 + v275;
      if (v264)
      {
        goto LABEL_169;
      }

      v277 = v273;
      if (*(v270 + 24) < v276)
      {
        sub_1000B1E88(v276, isUniquelyReferenced_nonNull_native);
        v260 = sub_10009F2C8(v544, v257, v259);
        if ((v277 & 1) != (v278 & 1))
        {
          goto LABEL_172;
        }

LABEL_130:
        isUniquelyReferenced_nonNull_native = 24;
        if ((v277 & 1) == 0)
        {
          goto LABEL_135;
        }

        goto LABEL_131;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_130;
      }

      v313 = v260;
      sub_1000B5C20();
      v260 = v313;
      isUniquelyReferenced_nonNull_native = 24;
      if ((v277 & 1) == 0)
      {
LABEL_135:
        v279 = v554;
        v554[(v260 >> 6) + 8] |= 1 << v260;
        v314 = v279[6] + 24 * v260;
        *v314 = v544;
        *(v314 + 8) = v257;
        *(v314 + 16) = v259;
        v315 = v279[7] + 192 * v260;
        v316 = v570;
        v317 = v568;
        v318 = v567;
        *(v315 + 32) = v569;
        *(v315 + 48) = v316;
        *v315 = v318;
        *(v315 + 16) = v317;
        v319 = v574;
        v320 = v572;
        v321 = v571;
        *(v315 + 96) = v573;
        *(v315 + 112) = v319;
        *(v315 + 64) = v321;
        *(v315 + 80) = v320;
        v322 = v575;
        v323 = v576;
        v324 = v577;
        *(v315 + 176) = v578;
        *(v315 + 144) = v323;
        *(v315 + 160) = v324;
        *(v315 + 128) = v322;
        v325 = v279[2];
        v264 = __OFADD__(v325, 1);
        v292 = v325 + 1;
        if (v264)
        {
          goto LABEL_171;
        }

        goto LABEL_136;
      }

LABEL_131:
      v279 = v554;
      v293 = v554[7] + 192 * v260;
      v294 = *(v293 + 32);
      v296 = *v293;
      v295 = *(v293 + 16);
      v558 = *(v293 + 48);
      v557 = v294;
      v555 = v296;
      v556 = v295;
      v297 = *(v293 + 96);
      v299 = *(v293 + 64);
      v298 = *(v293 + 80);
      v562 = *(v293 + 112);
      v561 = v297;
      v559 = v299;
      v560 = v298;
      v301 = *(v293 + 144);
      v300 = *(v293 + 160);
      v302 = *(v293 + 128);
      v566 = *(v293 + 176);
      v565 = v300;
      v563 = v302;
      v564 = v301;
      v303 = v567;
      v304 = v568;
      v305 = v570;
      *(v293 + 32) = v569;
      *(v293 + 48) = v305;
      *v293 = v303;
      *(v293 + 16) = v304;
      v306 = v571;
      v307 = v572;
      v308 = v574;
      *(v293 + 96) = v573;
      *(v293 + 112) = v308;
      *(v293 + 64) = v306;
      *(v293 + 80) = v307;
      v309 = v575;
      v310 = v576;
      v311 = v577;
      *(v293 + 176) = v578;
      *(v293 + 144) = v310;
      *(v293 + 160) = v311;
      *(v293 + 128) = v309;
      sub_1000C5E5C(&v555);
      sub_1000A1DF8(v544, v257, v259);
LABEL_137:
      v228 = v533;
      v555 = v586;
      v556 = v587;
      v557 = v588;
      v558 = v589;
      v559 = v527;
      v564 = v583;
      v565 = v584;
      v566 = v585;
      v560 = v579;
      v561 = v580;
      v562 = v581;
      v563 = v582;
      v1 = sub_1000C5E5C(&v555);
      *&v594[11] = v279;
      if (!v5)
      {
        goto LABEL_108;
      }
    }

    if (!BYTE9(v247))
    {
      break;
    }

    v567 = v586;
    v568 = v587;
    v569 = v588;
    v570 = v589;
    v571 = v244;
    v576 = v583;
    v577 = v584;
    v578 = v585;
    v572 = v579;
    v573 = v580;
    v574 = v581;
    v575 = v582;
    sub_1000B89BC(v590, &v555);
    v1 = sub_1000C5E5C(&v567);
    if (!v5)
    {
      goto LABEL_108;
    }
  }

  *v253.i8 = vadd_f32(v224, *v244.i8);
  v253.i32[3] = vextq_s8(v244, v244, 8uLL).i32[1];
  *&v253.i32[2] = v538.f32[0] + *&v244.i32[2];
  v567 = v586;
  v568 = v587;
  v569 = v588;
  v570 = v589;
  v527 = v253;
  v571 = v253;
  v576 = v583;
  v577 = v584;
  v578 = v585;
  v572 = v579;
  v573 = v580;
  v574 = v581;
  v575 = v582;
  v254 = v237;
  sub_1000A1DD4(v236, v235, v237);
  sub_1000B89BC(v590, &v555);
  sub_1000B89BC(&v567, &v555);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v255 = *&v594[11];
  v554 = *&v594[11];
  v544 = v236;
  v256 = v236;
  v257 = v235;
  v258 = v235;
  v259 = v254;
  v260 = sub_10009F2C8(v256, v258, v254);
  v262 = *(v255 + 16);
  v263 = (v261 & 1) == 0;
  v264 = __OFADD__(v262, v263);
  v265 = v262 + v263;
  if (v264)
  {
    __break(1u);
LABEL_169:
    __break(1u);
    goto LABEL_170;
  }

  v266 = v261;
  if (*(v255 + 24) < v265)
  {
    sub_1000B1E88(v265, isUniquelyReferenced_nonNull_native);
    v260 = sub_10009F2C8(v544, v257, v259);
    if ((v266 & 1) != (v267 & 1))
    {
      goto LABEL_172;
    }

LABEL_125:
    isUniquelyReferenced_nonNull_native = 24;
    if ((v266 & 1) == 0)
    {
      goto LABEL_126;
    }

    goto LABEL_131;
  }

  if (isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_125;
  }

  v312 = v260;
  sub_1000B5C20();
  v260 = v312;
  isUniquelyReferenced_nonNull_native = 24;
  if (v266)
  {
    goto LABEL_131;
  }

LABEL_126:
  v279 = v554;
  v554[(v260 >> 6) + 8] |= 1 << v260;
  v280 = v279[6] + 24 * v260;
  *v280 = v544;
  *(v280 + 8) = v257;
  *(v280 + 16) = v259;
  v281 = v279[7] + 192 * v260;
  v282 = v570;
  v283 = v568;
  v284 = v567;
  *(v281 + 32) = v569;
  *(v281 + 48) = v282;
  *v281 = v284;
  *(v281 + 16) = v283;
  v285 = v574;
  v286 = v572;
  v287 = v571;
  *(v281 + 96) = v573;
  *(v281 + 112) = v285;
  *(v281 + 64) = v287;
  *(v281 + 80) = v286;
  v288 = v575;
  v289 = v576;
  v290 = v577;
  *(v281 + 176) = v578;
  *(v281 + 144) = v289;
  *(v281 + 160) = v290;
  *(v281 + 128) = v288;
  v291 = v279[2];
  v264 = __OFADD__(v291, 1);
  v292 = v291 + 1;
  if (!v264)
  {
LABEL_136:
    v279[2] = v292;
    goto LABEL_137;
  }

  __break(1u);
LABEL_171:
  __break(1u);
LABEL_172:
  sub_1000E9FA4();
  __break(1u);
}

uint64_t *sub_1000DBFC4()
{
  swift_unknownObjectRelease();
  sub_1000056DC(v0[5], v0[6]);
  sub_1000E29F4(v0[7], v0[8], v0[9], v0[10], v0[11], v0[12], v0[13], v0[14], v0[15]);

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_1000DC0C8()
{
  sub_1000DBFC4();

  return swift_deallocClassInstance();
}

uint64_t sub_1000DC120(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1000DC168(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1000DC1C4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1000DC1E8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000DC230(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000DC290()
{
  if (qword_10012F708 != -1)
  {
    swift_once();
  }

  v0 = qword_10013DD18;
  v1 = qword_10013DD18;
  return v0;
}

uint64_t sub_1000DC2EC()
{
  if (qword_10012F710 != -1)
  {
    swift_once();
  }

  return byte_10013DD20;
}

void sub_1000DC380(uint64_t a1, char a2, void *a3)
{
  v35 = *(a1 + 16);
  if (!v35)
  {
    goto LABEL_21;
  }

  LOBYTE(v5) = a2;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *a3;

  v10 = sub_10009F284(v6);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_1000B3A28(v15, v5 & 1);
    v10 = sub_10009F284(v6);
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v10 = sub_1000E9FA4();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v18 = v10;
  sub_1000B66FC();
  v10 = v18;
  if (v16)
  {
LABEL_8:
    swift_allocError();
    swift_willThrow();

    swift_errorRetain();
    sub_1000125FC(&unk_100131DD0, &qword_1000F2A60);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v19 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  *(v19[6] + v10) = v6;
  v20 = (v19[7] + 16 * v10);
  *v20 = v7;
  v20[1] = v8;
  v21 = v19[2];
  v14 = __OFADD__(v21, 1);
  v22 = v21 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_1000E9D64(30);
    v36._object = 0x80000001000F7820;
    v36._countAndFlagsBits = 0xD00000000000001BLL;
    sub_1000E99A4(v36);
    sub_1000E9DF4();
    v37._countAndFlagsBits = 39;
    v37._object = 0xE100000000000000;
    sub_1000E99A4(v37);
    sub_1000E9E44();
    __break(1u);
    return;
  }

  v19[2] = v22;
  if (v35 != 1)
  {
    v5 = (a1 + 72);
    v7 = 1;
    while (v7 < *(a1 + 16))
    {
      v6 = *(v5 - 16);
      v23 = *(v5 - 1);
      v8 = *v5;
      v24 = *a3;

      v25 = sub_10009F284(v6);
      v27 = v24[2];
      v28 = (v26 & 1) == 0;
      v14 = __OFADD__(v27, v28);
      v29 = v27 + v28;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v26;
      if (v24[3] < v29)
      {
        sub_1000B3A28(v29, 1);
        v25 = sub_10009F284(v6);
        if ((v16 & 1) != (v30 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v31 = *a3;
      *(*a3 + 8 * (v25 >> 6) + 64) |= 1 << v25;
      *(v31[6] + v25) = v6;
      v32 = (v31[7] + 16 * v25);
      *v32 = v23;
      v32[1] = v8;
      v33 = v31[2];
      v14 = __OFADD__(v33, 1);
      v34 = v33 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v7;
      v31[2] = v34;
      v5 += 3;
      if (v35 == v7)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

uint64_t sub_1000DC6EC(uint64_t result, unint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (v8)
    {
      goto LABEL_14;
    }

    *&v14 = result;
    WORD4(v14) = a2;
    BYTE10(v14) = BYTE2(a2);
    BYTE11(v14) = BYTE3(a2);
    BYTE12(v14) = BYTE4(a2);
    BYTE13(v14) = BYTE5(a2);
    result = sub_100098A34(a4, a5, &v15);
    if ((a4 - 0x2000000000000000) >> 62 != 3)
    {
      __break(1u);
      goto LABEL_27;
    }

    LODWORD(v8) = 0;
    if (4 * a4 + 0x4000000000000000 >= 0)
    {
LABEL_24:
      [a3 replaceRegion:&v15 mipmapLevel:0 withBytes:&v14 bytesPerRow:{8 * a4, v14}];
      return swift_unknownObjectRelease();
    }

    __break(1u);
  }

  if (v8 != 2)
  {
    *(&v14 + 6) = 0;
    *&v14 = 0;
    sub_100098A34(a4, a5, &v15);
    if ((a4 - 0x2000000000000000) >> 62 != 3)
    {
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    if (4 * a4 + 0x4000000000000000 < 0)
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    goto LABEL_24;
  }

  v9 = *(result + 16);
  v10 = sub_1000E9214();
  if (v10)
  {
    v11 = sub_1000E9244();
    if (__OFSUB__(v9, v11))
    {
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
    }

    v10 += v9 - v11;
  }

  sub_1000E9234();
  result = sub_100098A34(a4, a5, &v15);
  if (!v10)
  {
    __break(1u);
    goto LABEL_36;
  }

  if ((a4 - 0x2000000000000000) >> 62 != 3)
  {
    goto LABEL_29;
  }

  if (4 * a4 + 0x4000000000000000 >= 0)
  {
LABEL_21:
    [a3 replaceRegion:&v15 mipmapLevel:0 withBytes:v10 bytesPerRow:{8 * a4, v14}];
    return swift_unknownObjectRelease();
  }

  __break(1u);
LABEL_14:
  v12 = result;
  if (result > result >> 32)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v10 = sub_1000E9214();
  if (v10)
  {
    v13 = sub_1000E9244();
    if (__OFSUB__(v12, v13))
    {
      goto LABEL_34;
    }

    v10 += v12 - v13;
  }

  sub_1000E9234();
  result = sub_100098A34(a4, a5, &v15);
  if (v10)
  {
    if ((a4 - 0x2000000000000000) >> 62 == 3)
    {
      if (4 * a4 + 0x4000000000000000 >= 0)
      {
        goto LABEL_21;
      }

      goto LABEL_32;
    }

LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

LABEL_36:
  __break(1u);
  return result;
}

unint64_t sub_1000DC9C0(uint64_t a1, uint64_t a2)
{
  v2 = a1 == 0x63696D616E7964 && a2 == 0xE700000000000000;
  if (v2 || (sub_1000E9F74() & 1) != 0)
  {
    v3 = 0;
    v4 = _swiftEmptyArrayStorage;
    do
    {
      v5 = *(&off_100119FE8 + v3 + 32);
      v6 = 0x7465736E7573;
      if (v5 != 6)
      {
        v6 = 1802728804;
      }

      v7 = 0xE600000000000000;
      if (v5 != 6)
      {
        v7 = 0xE400000000000000;
      }

      v8 = 0x6F6F4E72616C6F73;
      if (v5 != 4)
      {
        v8 = 0x657466416574616CLL;
      }

      v9 = 0xE90000000000006ELL;
      if (v5 != 4)
      {
        v9 = 0xED00006E6F6F6E72;
      }

      if (*(&off_100119FE8 + v3 + 32) <= 5u)
      {
        v6 = v8;
        v7 = v9;
      }

      v10 = 0x657369726E7573;
      if (v5 != 2)
      {
        v10 = 0x696E726F4D64696DLL;
      }

      v11 = 0xE700000000000000;
      if (v5 != 2)
      {
        v11 = 0xEA0000000000676ELL;
      }

      v12 = 0x64694D72616C6F73;
      if (*(&off_100119FE8 + v3 + 32))
      {
        v12 = 1853317476;
      }

      v13 = 0xED0000746867696ELL;
      if (*(&off_100119FE8 + v3 + 32))
      {
        v13 = 0xE400000000000000;
      }

      if (*(&off_100119FE8 + v3 + 32) <= 1u)
      {
        v10 = v12;
        v11 = v13;
      }

      if (*(&off_100119FE8 + v3 + 32) <= 3u)
      {
        v14 = v10;
      }

      else
      {
        v14 = v6;
      }

      if (*(&off_100119FE8 + v3 + 32) <= 3u)
      {
        v15 = v11;
      }

      else
      {
        v15 = v7;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_1000A40B4(0, v4[2] + 1, 1, v4);
      }

      v17 = v4[2];
      v16 = v4[3];
      if (v17 >= v16 >> 1)
      {
        v4 = sub_1000A40B4((v16 > 1), v17 + 1, 1, v4);
      }

      v4[2] = v17 + 1;
      v18 = &v4[3 * v17];
      *(v18 + 32) = v5;
      ++v3;
      v18[5] = v14;
      v18[6] = v15;
    }

    while (v3 != 8);
    sub_1000125FC(&qword_100132060, &unk_1000F5E60);
    v20 = sub_1000E9EA4();
    sub_1000DC380(v4, 1, &v20);
    return v20;
  }

  else
  {

    return sub_1000A1858(_swiftEmptyArrayStorage);
  }
}

void sub_1000DCC68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_allocWithZone(MTLRenderPassDescriptor) init];
  v7 = [v6 colorAttachments];
  v8 = [v7 objectAtIndexedSubscript:0];

  if (!v8)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v9 = v8;
  [v9 setTexture:a1];
  [v9 setLoadAction:0];
  if (a2)
  {
    swift_unknownObjectRetain();
    [v9 setResolveTexture:a2];
    [v9 setStoreAction:2];
    swift_unknownObjectRelease();
  }

  v10 = [v6 depthAttachment];
  if (!v10)
  {
    goto LABEL_8;
  }

  v11 = v10;
  [v10 setTexture:a3];

  v12 = [v6 depthAttachment];
  if (v12)
  {
    v13 = v12;
    [v12 setClearDepth:0.0];

    return;
  }

LABEL_9:
  __break(1u);
}

id sub_1000DCDD8(uint64_t a1, char *a2, const void *a3, unint64_t a4, char a5)
{
  v6 = v5;
  v9 = a2;
  [a2 setDepthStencilState:*(v5 + 152)];
  v137 = *(v5 + 312);
  if (*(v5 + 312))
  {
    v10 = 2;
  }

  else
  {
    v10 = 1;
  }

  [v9 setCullMode:v10];
  memcpy(__dst, a3, sizeof(__dst));
  [v9 setVertexBytes:__dst length:496 atIndex:0];
  [v9 setFragmentBytes:__dst length:496 atIndex:0];
  v11 = *(v5 + 288);
  v12 = v11[4];
  v13 = v12 - 1;
  if (__OFSUB__(v12, 1))
  {
    goto LABEL_160;
  }

  v14 = v11[2];
  _VF = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (_VF)
  {
    goto LABEL_161;
  }

  if (!v14)
  {
    goto LABEL_162;
  }

  if (v14 == -1 && v16 == 0x8000000000000000)
  {
    goto LABEL_173;
  }

  v18 = v11[3];
  v19 = v16 % v14;
  if ((v18 & 0xC000000000000001) != 0)
  {
    goto LABEL_163;
  }

  if ((v19 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_165;
  }

  if (v19 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_166;
  }

  v20 = *(v18 + 8 * v19 + 32);
  swift_unknownObjectRetain();
  while (1)
  {
    [v9 setVertexBuffer:v20 offset:0 atIndex:1];
    swift_unknownObjectRelease();
    v21 = v6[35];
    v22 = v21[4];
    v23 = v22 - 1;
    if (__OFSUB__(v22, 1))
    {
LABEL_165:
      __break(1u);
LABEL_166:
      __break(1u);
LABEL_167:
      __break(1u);
LABEL_168:
      __break(1u);
LABEL_169:
      v28 = sub_1000E9D74();
      goto LABEL_24;
    }

    v24 = v21[2];
    _VF = __OFADD__(v23, v24);
    v25 = v23 + v24;
    if (_VF)
    {
      goto LABEL_167;
    }

    if (!v24)
    {
      goto LABEL_168;
    }

    v26 = v21[3];
    if (v24 == -1 && v25 == 0x8000000000000000)
    {
      goto LABEL_174;
    }

    v27 = v25 % v24;
    if ((v26 & 0xC000000000000001) != 0)
    {
      goto LABEL_169;
    }

    if ((v27 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_171:
      swift_once();
      goto LABEL_27;
    }

    if (v27 >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_173:
      __break(1u);
LABEL_174:
      __break(1u);
LABEL_175:
      swift_once();
LABEL_35:
      v38 = sub_1000E96A4();
      sub_100007488(v38, qword_100133BB0);
      v39 = sub_1000E9684();
      v40 = sub_1000E9BA4();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        v42 = "couldn’t look up gradient";
LABEL_48:
        _os_log_impl(&_mh_execute_header, v39, v40, v42, v41, 2u);

        goto LABEL_49;
      }

      goto LABEL_49;
    }

    v28 = *(v26 + 8 * v27 + 32);
    swift_unknownObjectRetain();
LABEL_24:
    [v9 setFragmentBuffer:v28 offset:0 atIndex:1];
    swift_unknownObjectRelease();
    [v9 setFragmentTexture:v6[34] atIndex:6];
    v29 = 32;
    if (a5)
    {
      v29 = 33;
    }

    [v9 setRenderPipelineState:v6[v29]];
    v20 = a1;
    v141 = *(a1 + 192);
    v135 = *(*(a1 + 184) + 16);
    v136 = *(a1 + 200);
    sub_1000BAF14(v135, v165, *(a1 + 112), *(a1 + 116));
    v164[8] = v165[8];
    v164[9] = v165[9];
    v164[10] = v165[10];
    v164[11] = v165[11];
    v164[4] = v165[4];
    v164[5] = v165[5];
    v164[6] = v165[6];
    v164[7] = v165[7];
    v164[0] = v165[0];
    v164[1] = v165[1];
    v164[2] = v165[2];
    v164[3] = v165[3];
    [v9 setVertexBytes:v164 length:192 atIndex:2];
    [v9 setFragmentBytes:v164 length:192 atIndex:2];
    v172 = 0;
    v171 = 0;
    if (qword_10012F4F0 != -1)
    {
      goto LABEL_171;
    }

LABEL_27:
    v167 = xmmword_10013A9D0;
    v168 = qword_10013A9E0;
    v169 = xmmword_10013A9D0;
    v170 = qword_10013A9E0;
    v30 = *(v20 + 333);
    if (v30 < 0)
    {
      v43 = *(v20 + 320);
      v44 = *(v43 + 24) | (*(v43 + 28) << 32);
      if ((v44 & 0x8000000000000000) == 0)
      {
        v45 = *(v43 + 40) | (*(v43 + 44) << 32);
        if ((v45 & 0x8000000000000000) == 0)
        {
          v46 = v6[18];
          if (*(v46 + 16))
          {
            v47 = *(v43 + 48);
            v48 = sub_10009F3BC(BYTE4(v44) | (((HIDWORD(v44) >> 8) & 1) << 8));
            if (v49)
            {
              if (*(v46 + 16))
              {
                v50 = *(*(v46 + 56) + 4 * v48);
                v51 = sub_10009F3BC(BYTE4(v45) | (((HIDWORD(v45) >> 8) & 1) << 8));
                if (v52)
                {
                  v53 = *(*(v46 + 56) + 4 * v51);
                  LODWORD(v171) = v50;
                  v54 = __sincosf_stret(*&v44);
                  *&v55 = -v54.__sinval;
                  HIDWORD(v55) = LODWORD(v54.__cosval);
                  *&v167 = __PAIR64__(LODWORD(v54.__sinval), LODWORD(v54.__cosval));
                  *(&v167 + 1) = v55;
                  v168 = 0;
                  HIDWORD(v171) = v53;
                  v56 = __sincosf_stret(*&v45);
                  *&v57 = -v56.__sinval;
                  HIDWORD(v57) = LODWORD(v56.__cosval);
                  *&v169 = __PAIR64__(LODWORD(v56.__sinval), LODWORD(v56.__cosval));
                  *(&v169 + 1) = v57;
                  v170 = 0;
                  LODWORD(v172) = v47;
                  goto LABEL_50;
                }
              }
            }
          }
        }
      }

      if (qword_10012F718 != -1)
      {
        swift_once();
      }

      v58 = sub_1000E96A4();
      sub_100007488(v58, qword_100133BB0);
      v39 = sub_1000E9684();
      v40 = sub_1000E9BA4();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        v42 = "couldn’t look up mixed gradients";
        goto LABEL_48;
      }

LABEL_49:

      goto LABEL_50;
    }

    v31 = v6[18];
    if (!*(v31 + 16) || ((v32 = *(v20 + 328), (v30 & 1) == 0) ? (v33 = 0) : (v33 = 256), v34 = sub_10009F3BC(v33 | *(v20 + 332)), (v35 & 1) == 0))
    {
      if (qword_10012F718 == -1)
      {
        goto LABEL_35;
      }

      goto LABEL_175;
    }

    LODWORD(v171) = *(*(v31 + 56) + 4 * v34);
    HIDWORD(v171) = v171;
    LODWORD(v172) = 0;
    v36 = __sincosf_stret(v32);
    *&v37 = -v36.__sinval;
    HIDWORD(v37) = LODWORD(v36.__cosval);
    *&v167 = __PAIR64__(LODWORD(v36.__sinval), LODWORD(v36.__cosval));
    *(&v167 + 1) = v37;
    v168 = 0;
LABEL_50:
    [v9 setFragmentBytes:&v167 length:64 atIndex:3];
    [v9 setFragmentTexture:v6[17] atIndex:8];
    if (*(a4 + 16) && (v59 = sub_1000A1E74(), (v60 & 1) != 0))
    {
      v61 = *(*(*(a4 + 56) + 8 * v59) + 16);
      if (v61)
      {
        v62 = v6[16];

        if (*(v62 + 16) && (v63 = sub_1000A1E74(), (v64 & 1) != 0))
        {
          v65 = *(*(v62 + 56) + 8 * v63);
          swift_unknownObjectRetain();
        }

        else
        {
          v65 = 0;
        }

        [v9 setFragmentTexture:v65 atIndex:2];
        swift_unknownObjectRelease();
        if (v61 != 1)
        {
          if (*(v62 + 16) && (v70 = sub_1000A1E74(), (v71 & 1) != 0))
          {
            v72 = *(*(v62 + 56) + 8 * v70);
            swift_unknownObjectRetain();
          }

          else
          {
            v72 = 0;
          }

          [v9 setFragmentTexture:v72 atIndex:3];
          swift_unknownObjectRelease();
          if (v61 != 2)
          {
            if (*(v62 + 16) && (v73 = sub_1000A1E74(), (v74 & 1) != 0))
            {
              v75 = *(*(v62 + 56) + 8 * v73);
              swift_unknownObjectRetain();
            }

            else
            {
              v75 = 0;
            }

            [v9 setFragmentTexture:v75 atIndex:4];
            swift_unknownObjectRelease();
            if (v61 != 3)
            {
              if (*(v62 + 16) && (v76 = sub_1000A1E74(), (v77 & 1) != 0))
              {
                v78 = *(*(v62 + 56) + 8 * v76);
                swift_unknownObjectRetain();
              }

              else
              {
                v78 = 0;
              }

              [v9 setFragmentTexture:v78 atIndex:5];
              swift_unknownObjectRelease();
            }
          }
        }
      }
    }

    else
    {
      v66 = v6[16];
      if (*(v66 + 16) && (v67 = sub_1000A1E74(), (v68 & 1) != 0))
      {
        v69 = *(*(v66 + 56) + 8 * v67);
        swift_unknownObjectRetain();
      }

      else
      {
        v69 = 0;
      }

      [v9 setFragmentTexture:v69 atIndex:2];
      swift_unknownObjectRelease();
    }

    [v9 drawPrimitives:3 vertexStart:0 vertexCount:6];
    result = [v9 setVertexBuffer:v6[21] offset:0 atIndex:3];
    v129 = v6;
    v138 = v6[37];
    v80 = *(v138 + 16);
    if (!v80)
    {
      return result;
    }

    v81 = 0;
    v131 = v6[24];
    v132 = v6[22];
    v82 = (v138 + 80);
    v130 = v80 - 1;
    __asm { FMOV            V0.2S, #1.0 }

    v134 = HIDWORD(_D0);
    v133 = a4;
    while (1)
    {
      v86 = *(v82 - 48);
      v6 = *(v82 - 3);
      v87 = *(v82 - 2);
      v88 = *(v82 - 1);
      a4 = (a5 & 1) != 0 ? *(v82 - 4) : *(v82 - 5);
      v150 = *v82;
      v151 = v81;
      swift_unknownObjectRetain();
      v89 = v9;
      v9 = "setRenderPipelineState:";
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();

      swift_unknownObjectRetain();
      v90 = v89;
      [v89 setRenderPipelineState:a4];
      v91 = v87[4];
      v92 = v91 - 1;
      if (__OFSUB__(v91, 1))
      {
        break;
      }

      v93 = v87[2];
      _VF = __OFADD__(v92, v93);
      v94 = v92 + v93;
      if (_VF)
      {
        goto LABEL_148;
      }

      if (!v93)
      {
        goto LABEL_149;
      }

      if (v93 == -1 && v94 == 0x8000000000000000)
      {
        goto LABEL_159;
      }

      v96 = v87[3];
      v97 = v94 % v93;
      if ((v96 & 0xC000000000000001) != 0)
      {
        v99 = sub_1000E9D74();
        v98 = a1;
      }

      else
      {
        v98 = a1;
        if ((v97 & 0x8000000000000000) != 0)
        {
          goto LABEL_150;
        }

        if (v97 >= *((v96 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_152;
        }

        v99 = *(v96 + 8 * v97 + 32);
        swift_unknownObjectRetain();
      }

      [v90 setVertexBuffer:v99 offset:0 atIndex:2];
      swift_unknownObjectRelease();
      memcpy(__src, v98, sizeof(__src));
      sub_1000C6110(v98, v174);
      swift_getAtKeyPath();
      memcpy(v174, __src, 0x208uLL);
      sub_1000DFCB4(v174);
      if (v86)
      {
        v100 = 0.7;
      }

      else
      {
        v100 = 0.85;
      }

      v101 = 30;
      if (!v86)
      {
        v101 = 29;
      }

      v102 = v141;
      if (v86)
      {
        v102 = v136;
      }

      a4 = *(v102 + 16);
      v9 = *(v98[v101] + 16);
      if (v86)
      {
        v103 = 0.5;
      }

      else
      {
        v103 = 0.65;
      }

      sub_1000E9BC4();
      v178.columns[0] = sub_100013568(v166);
      v152 = v178.columns[1];
      v154 = v178.columns[0];
      v156 = v178.columns[2];
      v149 = v178.columns[3];
      v148 = __invert_f4(v178);
      v176.columns[1] = v152;
      v176.columns[0] = v154;
      v176.columns[0].i32[3] = 0;
      v176.columns[1].i32[3] = 0;
      v176.columns[2] = v156;
      v176.columns[2].i32[3] = 0;
      v177 = __invert_f3(v176);
      if (v137)
      {
        v104 = v100;
      }

      else
      {
        v104 = v103;
      }

      if (a4 >> 15)
      {
        goto LABEL_151;
      }

      if (v9 >> 15)
      {
        goto LABEL_153;
      }

      LODWORD(v105) = 0;
      *(&v105 + 1) = 0.5 / v157;
      v106.i64[0] = 0;
      v106.i32[3] = 0;
      v106.f32[2] = 1.0 / v158;
      v107 = v177.columns[0];
      v107.i32[3] = v142;
      *&v108 = vzip2q_s32(v177.columns[0], v177.columns[1]).u64[0];
      v177.columns[1].i32[3] = v143;
      v177.columns[0] = v177.columns[2];
      v177.columns[0].i32[3] = v147;
      v177.columns[0] = vzip1q_s32(v107, v177.columns[0]);
      v109 = vzip1q_s32(v177.columns[1], 0);
      v177.columns[1].i64[0] = vzip1q_s32(v177.columns[0], v109).u64[0];
      *&v110 = vzip2q_s32(v177.columns[0], v109).u64[0];
      v177.columns[1].i64[1] = __PAIR64__(v144, vdupq_lane_s32(*(&v177 + 32), 0).u32[2]);
      v109.i32[1] = DWORD1(v145);
      *(&v110 + 1) = __PAIR64__(HIDWORD(v145), vdupq_lane_s32(*(&v177 + 32), 1).u32[2]);
      *(&v108 + 1) = __PAIR64__(v146, v177.columns[2].u32[2]);
      v111.i32[1] = v134;
      v111.f32[0] = v104 / v157;
      v109.i32[0] = 1078530010;
      v109.i32[0] = vdup_lane_s32(*v109.i8, 0).u32[0];
      *&v109.i32[1] = v157;
      v159[0] = v154;
      v159[1] = v152;
      v159[2] = v156;
      v159[3] = v149;
      v159[4] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(COERCE_UNSIGNED_INT(0.5 / v157), v148.columns[0].f32[0]), v105, *v148.columns[0].f32, 1), v106, v148.columns[0], 2), xmmword_1000ED260, v148.columns[0], 3);
      v159[5] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(COERCE_UNSIGNED_INT(0.5 / v157), v148.columns[1].f32[0]), v105, *v148.columns[1].f32, 1), v106, v148.columns[1], 2), xmmword_1000ED260, v148.columns[1], 3);
      v159[6] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(COERCE_UNSIGNED_INT(0.5 / v157), v148.columns[2].f32[0]), v105, *v148.columns[2].f32, 1), v106, v148.columns[2], 2), xmmword_1000ED260, v148.columns[2], 3);
      v159[7] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(COERCE_UNSIGNED_INT(0.5 / v157), v148.columns[3].f32[0]), v105, *v148.columns[3].f32, 1), v106, v148.columns[3], 2), xmmword_1000ED260, v148.columns[3], 3);
      v153 = v110;
      v155 = v177.columns[1].i32[3];
      v159[8] = v177.columns[1];
      v159[9] = v110;
      v159[10] = v108;
      v160 = v111.i32[0];
      v161 = vdiv_f32(v111, *v109.i8);
      v162 = a4;
      v163 = v9;
      v9 = v90;
      [v90 setVertexBytes:v159 length:192 atIndex:4];
      [v90 setFragmentBytes:v159 length:192 atIndex:2];
      if (v86)
      {
        v112 = *(v141 + 16);
        a4 = v135 + v112;
        if (__OFADD__(v135, v112))
        {
          goto LABEL_157;
        }

        v113 = *(v98[28] + 16);
        v114 = *(v98[29] + 16);
        _VF = __OFADD__(v113, v114);
        v115 = v113 + v114;
        if (_VF)
        {
          goto LABEL_158;
        }
      }

      else
      {
        v115 = *(v98[28] + 16);
        a4 = v135;
      }

      if ((v115 - 0x100000000000000) >> 57 != 127)
      {
        goto LABEL_154;
      }

      [v90 setVertexBufferOffset:v115 << 7 atIndex:1];
      if ((a4 - 0x100000000000000) >> 57 != 127)
      {
        goto LABEL_155;
      }

      [v90 setFragmentBufferOffset:a4 << 7 atIndex:1];
      a4 = v133;
      if (*(v133 + 16))
      {
        v116 = sub_1000A1E74();
        if (v117)
        {
          v118 = *(*(*(v133 + 56) + 8 * v116) + 16);
          if (v118)
          {
            v119 = v129[16];

            if (*(v119 + 16) && (v120 = sub_1000A1E74(), (v121 & 1) != 0))
            {
              a4 = *(*(v119 + 56) + 8 * v120);
              swift_unknownObjectRetain();
            }

            else
            {
              a4 = 0;
            }

            [v90 setFragmentTexture:a4 atIndex:2];
            swift_unknownObjectRelease();
            if (v118 != 1)
            {
              if (*(v119 + 16) && (v122 = sub_1000A1E74(), (v123 & 1) != 0))
              {
                a4 = *(*(v119 + 56) + 8 * v122);
                swift_unknownObjectRetain();
              }

              else
              {
                a4 = 0;
              }

              [v90 setFragmentTexture:a4 atIndex:3];
              swift_unknownObjectRelease();
              if (v118 != 2)
              {
                if (*(v119 + 16) && (v124 = sub_1000A1E74(), (v125 & 1) != 0))
                {
                  a4 = *(*(v119 + 56) + 8 * v124);
                  swift_unknownObjectRetain();
                }

                else
                {
                  a4 = 0;
                }

                [v90 setFragmentTexture:a4 atIndex:4];
                swift_unknownObjectRelease();
                if (v118 != 3)
                {
                  if (*(v119 + 16) && (v126 = sub_1000A1E74(), (v127 & 1) != 0))
                  {
                    v128 = *(*(v119 + 56) + 8 * v126);
                    swift_unknownObjectRetain();
                  }

                  else
                  {
                    v128 = 0;
                  }

                  [v90 setFragmentTexture:v128 atIndex:5];
                  swift_unknownObjectRelease();
                }
              }
            }
          }
        }
      }

      v9 = v90;
      [v90 setFragmentTexture:v88 atIndex:0];
      [v90 setFragmentTexture:v150 atIndex:1];
      [v90 drawIndexedPrimitives:3 indexCount:v131 indexType:0 indexBuffer:v132 indexBufferOffset:0];
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
      result = swift_unknownObjectRelease();
      if (v130 == v151)
      {
        return result;
      }

      v81 = v151 + 1;
      v82 += 7;
      v144 = v155;
      v145 = v153;
      if ((v151 + 1) >= *(v138 + 16))
      {
        goto LABEL_156;
      }
    }

    __break(1u);
LABEL_148:
    __break(1u);
LABEL_149:
    __break(1u);
LABEL_150:
    __break(1u);
LABEL_151:
    __break(1u);
LABEL_152:
    __break(1u);
LABEL_153:
    __break(1u);
LABEL_154:
    __break(1u);
LABEL_155:
    __break(1u);
LABEL_156:
    __break(1u);
LABEL_157:
    __break(1u);
LABEL_158:
    __break(1u);
LABEL_159:
    __break(1u);
LABEL_160:
    __break(1u);
LABEL_161:
    __break(1u);
LABEL_162:
    __break(1u);
LABEL_163:
    v20 = sub_1000E9D74();
  }
}

float sub_1000DDD50@<S0>(__int128 *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>, float32x4_t a5@<Q0>, float32x4_t a6@<Q1>, float32x4_t a7@<Q2>, float32x4_t a8@<Q3>)
{
  v14 = *a1;
  v15.i32[3] = 0;
  v15.f32[0] = COERCE_FLOAT(*a1) + 0.0;
  v16 = a1[3];
  *&v35 = *&v16 + 0.0;
  v37 = COERCE_UNSIGNED_INT(*&v16 + 0.0);
  LODWORD(v14) = *(a1 + 8);
  v40 = *(&v16 + 2) + (*(a1 + 21) * 0.5);
  v41 = vadd_f32(*&v14, v15.u32[0]);
  v15.i32[1] = v41.i32[1];
  v15.f32[2] = COERCE_FLOAT(*(a1 + 1)) + (*(a1 + 9) * 0.5);
  LODWORD(v16) = *(a1 + 20);
  v33 = v15.f32[2];
  v34 = v16;
  *v17.i64 = sub_100012EB4(v15, a5, a6, a7, a8);
  v39 = v17;
  *v18.f32 = v41;
  v18.f32[2] = v33 + 0.0;
  v18.i32[3] = 0;
  v42 = v18;
  v36 = vadd_f32(v34, v35);
  v19 = v37;
  v19.i32[1] = v36.i32[1];
  v19.f32[2] = v40;
  *v20.i64 = sub_100012EB4(v19, a5, a6, a7, a8);
  v38 = v20;
  v43 = sub_100012EB4(v42, a5, a6, a7, a8);
  *v21.f32 = v36;
  v21.f32[2] = v40 + 0.0;
  v21.i32[3] = 0;
  v22 = sub_100012EB4(v21, a5, a6, a7, a8);
  v23 = a2;
  v24 = 0.006;
  if (a3)
  {
    v24 = 0.008;
  }

  v25 = 0.012;
  if (a3)
  {
    v25 = 0.01;
  }

  v26 = v25 * v23;
  v27 = a1[19];
  v28 = v24 * v23;
  v29 = *(a1 + 86);
  *a4 = a1[18];
  *(a4 + 16) = v27;
  *(a4 + 32) = vzip1q_s64(v39, v38);
  v30 = vsub_f32(vzip1_s32(*v39.i8, *v38.i8), vzip1_s32(*&v43, *&v22));
  v31 = vsub_f32(vzip2_s32(*v39.i8, *v38.i8), vzip2_s32(*&v43, *&v22));
  *(a4 + 48) = vmul_f32(vsqrt_f32(vadd_f32(vmul_f32(v30, v30), vmul_f32(v31, v31))), 0x3F0000003F000000);
  result = v28 * v29;
  *(a4 + 56) = v26;
  *(a4 + 60) = v28 * v29;
  return result;
}

void sub_1000DDF78(uint64_t a1)
{
  __chkstk_darwin(a1);
  v8 = *(v1 + 72);
  v9 = *(v1 + 104);
  v429 = *(v1 + 88);
  v430 = v9;
  v431 = *(v1 + 120);
  v427 = *(v1 + 56);
  v428 = v8;
  if (!v427)
  {
    return;
  }

  v295 = v7;
  v292 = v6;
  v289 = v2;
  v10 = v5;
  v280 = v430;
  v281 = DWORD2(v429);
  v12 = *(&v430 + 1);
  v11 = v431;
  v13 = *(v1 + 312);
  v276 = v427;
  swift_unknownObjectRetain();
  v275 = *(&v427 + 1);
  swift_unknownObjectRetain();
  v284 = v428;
  swift_unknownObjectRetain();
  v286 = *(&v428 + 1);
  swift_unknownObjectRetain();
  v282 = v429;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v279 = v431;

  v297 = v10;
  v291 = v13;
  v299 = v1;
  sub_1000D9F58(v10);
  memcpy(__dst, __src, 0x219uLL);
  v14 = memcpy(v359, __dst, 0x208uLL);
  v15 = BYTE8(__dst[32]);
  v16 = *&__dst[33];
  if (BYTE8(__dst[33]))
  {
    v16 = 0.0;
  }

  v17 = *(v1 + 24);
  v18 = *(v1 + 32);
  *(v1 + 24) = v16;
  *(v1 + 32) = 0;
  if ((v18 & 1) != 0 || v16 != v17)
  {
    v19 = *(v1 + 40);
    if (v19)
    {
      v20 = *(v1 + 48);

      v19(v21);
      v14 = sub_1000056DC(v19, v20);
    }
  }

  v22 = *(v10 + 4);
  v277 = WallpaperState.rotationLandscapeAmount.getter(v14);
  v23 = [v295 computeCommandEncoder];
  if (!v23)
  {
    sub_10001B6F8();
    swift_allocError();
    *v179 = 5;
    swift_willThrow();
    sub_1000047C4(__dst, &qword_100133DA0, &qword_1000F5E70);
    sub_1000047C4(&v427, &qword_100133DA8, &qword_1000F5E78);
    return;
  }

  v24 = v23;
  v273 = v15;
  v274 = v12;
  v25 = sub_1000E98E4();
  [v24 setLabel:v25];

  [v24 setComputePipelineState:v299[25]];
  v309 = v24;
  [v24 setBuffer:v299[20] offset:0 atIndex:0];
  v26 = v299[37];
  v27 = *(v26 + 16);
  if (v27)
  {
    v28 = v26 + 80;
    v306.i64[0] = v299[23];
    do
    {
      p_name = *(v28 - 40);
      v11 = *(v28 - 24);
      v30 = *(v28 - 16);
      v15 = *v28;
      v31 = v30[3];
      v32 = v30[4];
      if ((v31 & 0xC000000000000001) != 0)
      {
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();

        swift_unknownObjectRetain();
        v33 = sub_1000E9D74();
        v40 = v30[4];
        v34 = v40 + 1;
        if (__OFADD__(v40, 1))
        {
LABEL_24:
          __break(1u);
          break;
        }
      }

      else
      {
        if ((v32 & 0x8000000000000000) != 0)
        {
          goto LABEL_145;
        }

        if (v32 >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_146;
        }

        v33 = *(v31 + 8 * v32 + 32);
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();

        swift_unknownObjectRetain();
        v34 = v32 + 1;
        if (__OFADD__(v32, 1))
        {
          goto LABEL_24;
        }
      }

      v35 = v30[2];
      if (!v35)
      {
        goto LABEL_147;
      }

      if (v34 == 0x8000000000000000 && v35 == -1)
      {
        goto LABEL_154;
      }

      v28 += 56;
      v30[4] = v34 % v35;
      v317.i64[0] = p_name;
      [v309 setBuffer:v33 offset:0 atIndex:1];
      memcpy(v355, v359, 0x208uLL);
      sub_1000299EC(__dst, __src, &qword_100133DA0, &qword_1000F5E70);
      swift_getAtKeyPath();
      memcpy(__src, v355, 0x208uLL);
      sub_1000DFCB4(__src);
      *&v37 = v348;
      *(&v37 + 1) = DWORD2(v348);
      v337 = v37;
      [v309 setBytes:&v337 length:16 atIndex:2];
      sub_1000DFCA0(v306.i64[0], v355);
      v310 = v355[0];
      v313.i64[0] = v15;
      v15 = *&v355[1];
      sub_1000DFCA0(32, v355);
      v38 = *&v355[1];
      v39 = v355[0];
      v355[0] = v310;
      *&v355[1] = v15;
      v346 = v39;
      *&v347 = v38;
      [v309 dispatchThreads:v355 threadsPerThreadgroup:&v346];

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      --v27;
    }

    while (v27);
  }

  v22 = 1.0 - v22;
  [v309 endEncoding];
  v293 = vcvt_f32_f64(v297[9]);
  v3 = COERCE_DOUBLE(vrev64_s32(v293));
  v41 = sub_1000A0CC4(_swiftEmptyArrayStorage);
  p_name = (*&__dst[11] + 64);
  v42 = 1 << *(*&__dst[11] + 32);
  v43 = -1;
  if (v42 < 64)
  {
    v43 = ~(-1 << v42);
  }

  v44 = v43 & *(*&__dst[11] + 64);
  v28 = (v42 + 63) >> 6;
  v317.i64[0] = *&__dst[11];

  v290 = 0;
  v45 = 0;
LABEL_28:
  LODWORD(v27) = 192;
  v46 = v45;
  v300 = v41;
  if (!v44)
  {
    goto LABEL_32;
  }

  do
  {
    while (1)
    {
      v45 = v46;
LABEL_35:
      v47 = __clz(__rbit64(v44));
      v44 &= v44 - 1;
      v48 = *(v317.i64[0] + 56) + 192 * (v47 | (v45 << 6));
      v50 = *(v48 + 32);
      v49 = *(v48 + 48);
      v51 = *(v48 + 16);
      __src[0] = *v48;
      __src[1] = v51;
      __src[2] = v50;
      __src[3] = v49;
      v52 = *(v48 + 64);
      v53 = *(v48 + 80);
      v54 = *(v48 + 96);
      __src[7] = *(v48 + 112);
      __src[6] = v54;
      __src[5] = v53;
      __src[4] = v52;
      v55 = *(v48 + 128);
      v56 = *(v48 + 144);
      v57 = *(v48 + 160);
      *&__src[11] = *(v48 + 176);
      __src[10] = v57;
      __src[9] = v56;
      __src[8] = v55;
      v58 = BYTE8(__src[6]);
      if (BYTE8(__src[6]) - 9 >= 4 && BYTE8(__src[6]) != 13)
      {
        break;
      }

      v46 = v45;
      if (!v44)
      {
        goto LABEL_32;
      }
    }

    v15 = BYTE9(__src[8]);
    if (!v41[2] || (v11 = v41, v59 = sub_1000A1E74(), (v60 & 1) == 0))
    {
LABEL_44:
      v314 = v15;
      sub_1000B89BC(__src, v355);
      sub_1000056DC(v290, 0);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v355[0] = v41;
      v11 = sub_1000A1E74();
      v67 = v41[2];
      v68 = (v66 & 1) == 0;
      v69 = v67 + v68;
      if (__OFADD__(v67, v68))
      {
        __break(1u);
LABEL_175:
        __break(1u);
        goto LABEL_176;
      }

      v70 = v66;
      if (v41[3] < v69)
      {
        sub_1000B2958(v69, isUniquelyReferenced_nonNull_native);
        v71 = *&v355[0];
        v72 = sub_1000A1E74();
        if ((v70 & 1) != (v73 & 1))
        {
          sub_1000E9FA4();
          __break(1u);
          return;
        }

        v11 = v72;
        v41 = v71;
        v74 = v314;
        if (v70)
        {
          goto LABEL_53;
        }

LABEL_51:
        v41[(v11 >> 6) + 8] |= 1 << v11;
        *(v41[6] + v11) = v74;
        *(v41[7] + 8 * v11) = _swiftEmptyArrayStorage;
        v75 = v41[2];
        v76 = __OFADD__(v75, 1);
        v77 = v75 + 1;
        if (v76)
        {
          goto LABEL_179;
        }

        v41[2] = v77;
        goto LABEL_53;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        v74 = v314;
        if ((v66 & 1) == 0)
        {
          goto LABEL_51;
        }
      }

      else
      {
        sub_1000B6150();
        v41 = *&v355[0];
        v74 = v314;
        if ((v70 & 1) == 0)
        {
          goto LABEL_51;
        }
      }

LABEL_53:
      v301 = v41;
      v15 = v41[7];
      v78 = *(v15 + 8 * v11);
      v79 = swift_isUniquelyReferenced_nonNull_native();
      *(v15 + 8 * v11) = v78;
      if ((v79 & 1) == 0)
      {
        v78 = sub_1000A37D0(0, *(v78 + 2) + 1, 1, v78);
        *(v15 + 8 * v11) = v78;
      }

      v81 = *(v78 + 2);
      v80 = *(v78 + 3);
      v313.i64[0] = v81 + 1;
      if (v81 >= v80 >> 1)
      {
        *(v15 + 8 * v11) = sub_1000A37D0((v80 > 1), v313.i64[0], 1, v78);
      }

      sub_1000C5E5C(__src);
      v82 = *(v15 + 8 * v11);
      *(v82 + 16) = v313.i64[0];
      *(v82 + v81 + 32) = v58;
      v290 = sub_1000DBFB4;
      v41 = v301;
      goto LABEL_28;
    }

    v61 = *(v41[7] + 8 * v59);
    v62 = *(v61 + 16);
    v63 = (v61 + 32);
    do
    {
      if (!v62)
      {
        goto LABEL_44;
      }

      v64 = *v63++;
      --v62;
    }

    while (v64 != v58);
    v46 = v45;
  }

  while (v44);
  while (1)
  {
LABEL_32:
    v45 = v46 + 1;
    if (__OFADD__(v46, 1))
    {
      __break(1u);
LABEL_145:
      __break(1u);
LABEL_146:
      __break(1u);
LABEL_147:
      __break(1u);
      goto LABEL_148;
    }

    if (v45 >= v28)
    {
      break;
    }

    v44 = p_name[v45];
    ++v46;
    if (v44)
    {
      goto LABEL_35;
    }
  }

  v28 = v299[35];
  v83 = *(v28 + 24);
  v84 = *(v28 + 32);
  if ((v83 & 0xC000000000000001) != 0)
  {
    goto LABEL_155;
  }

  if ((v84 & 0x8000000000000000) != 0)
  {
    goto LABEL_158;
  }

  if (v84 >= *((v83 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_159;
  }

  v294 = *(v83 + 8 * v84 + 32);
  swift_unknownObjectRetain();
  v85 = v84 + 1;
  if (__OFADD__(v84, 1))
  {
    goto LABEL_157;
  }

LABEL_64:
  v86 = *(v28 + 16);
  if (v86)
  {
    if (v85 == 0x8000000000000000 && v86 == -1)
    {
      goto LABEL_171;
    }

    *(v28 + 32) = v85 % v86;
    v28 = v294;
    v310.i64[0] = [swift_unknownObjectRetain() contents];
    v88 = v294;
    v251 = *&__dst[12];
    v252 = *(&__dst[11] + 1);
    v248 = *(&__dst[12] + 1);
    v250 = *&__dst[13];
    v89 = *(*(&__dst[13] + 1) + 16);

    v306.i64[0] = v89;
    if (v89)
    {
      v91 = 0;
      v305.n128_u64[0] = v90 + 32;
      v302 = v90;
      while (v91 < *(v90 + 16))
      {
        if (!*(v317.i64[0] + 16))
        {
          goto LABEL_149;
        }

        v97 = v305.n128_u64[0] + 24 * v91;
        v15 = *v97;
        v27 = *(v97 + 8);
        v98 = *(v97 + 16);
        sub_1000A1DD4(*v97, v27, *(v97 + 16));
        v99 = sub_10009F2C8(v15, v27, v98);
        if ((v100 & 1) == 0)
        {
          goto LABEL_150;
        }

        v101 = *(v317.i64[0] + 56) + 192 * v99;
        v103 = *(v101 + 32);
        v102 = *(v101 + 48);
        v104 = *(v101 + 16);
        v420[0] = *v101;
        v420[1] = v104;
        v420[2] = v103;
        v420[3] = v102;
        v105 = *(v101 + 64);
        v106 = *(v101 + 80);
        v107 = *(v101 + 96);
        v422 = *(v101 + 112);
        v421 = v107;
        v420[5] = v106;
        v420[4] = v105;
        v108 = *(v101 + 128);
        v109 = *(v101 + 144);
        v110 = *(v101 + 160);
        v426 = *(v101 + 176);
        v425 = v110;
        v424 = v109;
        v423 = v108;
        v111 = BYTE8(v421);
        if (BYTE8(v421) - 9 >= 5 && *(v300 + 16) && (v112 = sub_1000A1E74(), (v113 & 1) != 0) && (v114 = *(*(v300 + 56) + 8 * v112), (v115 = *(v114 + 16)) != 0))
        {
          v116 = 0;
          v117 = v114 + 32;
          while (1)
          {
            v118 = *(v117 + v116);
            v11 = v118 != v111;
            if (v118 == v111)
            {
              break;
            }

            if (v115 == ++v116)
            {
              v116 = 0;
              break;
            }
          }
        }

        else
        {
          v116 = 0;
          v11 = 1;
        }

        sub_1000B89BC(v420, __src);
        if (qword_10012F6C8 != -1)
        {
          swift_once();
        }

        v121 = qword_10013DC78;
        v313.i64[0] = v15;
        if (*(qword_10013DC78 + 16) && (v122 = sub_10009F2C8(v15, v27, v98), (v123 & 1) != 0))
        {
          v124 = v122;
          v125 = *(v121 + 56);
          v28 = swift_allocObject();
          *(v28 + 16) = *(v125 + 16 * v124);

          v15 = sub_1000DFD08;
        }

        else
        {
          v15 = 0;
          v28 = 0;
        }

        sub_1000BBC94(v15, v28, v116, v11, v324, v3, v119, v120);
        sub_1000056DC(v15, v28);
        v92 = v324[5];
        v93 = (v310.i64[0] + (v91 << 7));
        v93[4] = v324[4];
        v93[5] = v92;
        v94 = v324[7];
        v93[6] = v324[6];
        v93[7] = v94;
        v95 = v324[1];
        *v93 = v324[0];
        v93[1] = v95;
        v96 = v324[3];
        v93[2] = v324[2];
        v93[3] = v96;
        sub_1000A1DF8(v313.i64[0], v27, v98);
        sub_1000C5E5C(v420);
        p_name = ++v91;
        v90 = v302;
        if (v91 == v89)
        {
          goto LABEL_90;
        }
      }

LABEL_148:
      __break(1u);
LABEL_149:
      __break(1u);
LABEL_150:
      __break(1u);
      goto LABEL_151;
    }

LABEL_90:

    v28 = v299[36];
    v126 = *(v28 + 24);
    v127 = *(v28 + 32);
    if ((v126 & 0xC000000000000001) != 0)
    {
      goto LABEL_161;
    }

    if ((v127 & 0x8000000000000000) != 0)
    {
      goto LABEL_164;
    }

    if (v127 < *((v126 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v128 = *(v126 + 8 * v127 + 32);
      swift_unknownObjectRetain();
      v129 = v127 + 1;
      if (!__OFADD__(v127, 1))
      {
        goto LABEL_94;
      }

LABEL_163:
      __break(1u);
LABEL_164:
      __break(1u);
    }

    __break(1u);
LABEL_166:
    __break(1u);
    goto LABEL_167;
  }

  while (1)
  {
    __break(1u);
LABEL_161:
    v128 = sub_1000E9D74();
    v247 = *(v28 + 32);
    v129 = v247 + 1;
    if (__OFADD__(v247, 1))
    {
      goto LABEL_163;
    }

LABEL_94:
    v130 = *(v28 + 16);
    if (!v130)
    {
      goto LABEL_166;
    }

    if (v129 == 0x8000000000000000 && v130 == -1)
    {
      goto LABEL_172;
    }

    *(v28 + 32) = v129 % v130;
    v15 = [swift_unknownObjectRetain() contents];
    v131 = v128;
    v132 = *(*&__dst[16] + 16);

    v313.i64[0] = v132;
    if (!v132)
    {
      break;
    }

    v134 = 0;
    v27 = v133 + 48;
    v310.i64[0] = v133;
    while (v134 < *(v133 + 16))
    {
      if (!*(v317.i64[0] + 16))
      {
        goto LABEL_152;
      }

      v139 = *(v27 - 16);
      v11 = *(v27 - 8);
      v140 = *v27;
      sub_1000A1DD4(v139, v11, *v27);
      v141 = sub_10009F2C8(v139, v11, v140);
      if ((v142 & 1) == 0)
      {
        goto LABEL_153;
      }

      v143 = *(v317.i64[0] + 56) + 192 * v141;
      v145 = *(v143 + 32);
      v144 = *(v143 + 48);
      v146 = *(v143 + 16);
      v418[0] = *v143;
      v418[1] = v146;
      v418[2] = v145;
      v418[3] = v144;
      v147 = *(v143 + 64);
      v148 = *(v143 + 80);
      v149 = *(v143 + 96);
      v418[7] = *(v143 + 112);
      v418[6] = v149;
      v418[5] = v148;
      v418[4] = v147;
      v150 = *(v143 + 128);
      v151 = *(v143 + 144);
      v152 = *(v143 + 160);
      v419 = *(v143 + 176);
      v418[10] = v152;
      v418[9] = v151;
      v418[8] = v150;
      sub_1000B89BC(v418, __src);
      if (qword_10012F6C8 != -1)
      {
        swift_once();
      }

      v155 = qword_10013DC78;
      if (*(qword_10013DC78 + 16) && (v156 = sub_10009F2C8(v139, v11, v140), (v157 & 1) != 0))
      {
        v158 = v156;
        v159 = *(v155 + 56);
        v28 = swift_allocObject();
        *(v28 + 16) = *(v159 + 16 * v158);

        p_name = sub_1000E2A80;
      }

      else
      {
        p_name = 0;
        v28 = 0;
      }

      ++v134;
      sub_1000BBC94(p_name, v28, 0, 1, v325, v3, v153, v154);
      sub_1000C5E5C(v418);
      sub_1000056DC(p_name, v28);
      v135 = v325[5];
      *(v15 + 64) = v325[4];
      *(v15 + 80) = v135;
      v136 = v325[7];
      *(v15 + 96) = v325[6];
      *(v15 + 112) = v136;
      v137 = v325[1];
      *v15 = v325[0];
      *(v15 + 16) = v137;
      v138 = v325[3];
      *(v15 + 32) = v325[2];
      *(v15 + 48) = v138;
      sub_1000A1DF8(v139, v11, v140);
      v15 += 128;
      v27 += 24;
      v133 = v310.i64[0];
      if (v132 == v134)
      {
        goto LABEL_109;
      }
    }

LABEL_151:
    __break(1u);
LABEL_152:
    __break(1u);
LABEL_153:
    __break(1u);
LABEL_154:
    __break(1u);
LABEL_155:
    v294 = sub_1000E9D74();
    v246 = *(v28 + 32);
    v85 = v246 + 1;
    if (!__OFADD__(v246, 1))
    {
      goto LABEL_64;
    }

LABEL_157:
    __break(1u);
LABEL_158:
    __break(1u);
LABEL_159:
    __break(1u);
  }

LABEL_109:

  p_name = &stru_10012CFF8.name;
  v160 = [v292 width];
  v11 = &stru_10012CFF8.name;
  v161 = [v292 height];
  LODWORD(v27) = v291;
  v162 = 1.0;
  if (v291)
  {
    v162 = -0.5;
  }

  v163 = v162 * vmuls_lane_f32(0.15, v293, 1);
  if (v291)
  {
    v164 = 0.1;
  }

  else
  {
    v164 = 0.2;
  }

  v303 = xmmword_1000EC910;
  sub_10001358C(v321, v163, xmmword_1000EC910);
  v307 = sub_100013568(v321);
  v311 = v165;
  v315 = v166;
  v318 = v167;
  sub_10001358C(v322, v164 * v293.f32[0], xmmword_1000EC8E0);
  v168 = sub_100013568(v322);
  v169 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v307, v168.n128_f32[0]), v311, v168.n128_u64[0], 1), v315, v168, 2), v318, v168, 3);
  v171 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v307, v170.f32[0]), v311, *v170.f32, 1), v315, v170, 2), v318, v170, 3);
  v173 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v307, v172.f32[0]), v311, *v172.f32, 1), v315, v172, 2), v318, v172, 3);
  v175 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v307, v174.f32[0]), v311, *v174.f32, 1), v315, v174, 2), v318, v174, 3);
  v176 = vmulq_f32(v169, 0);
  v177 = vmlaq_f32(vmlaq_f32(vaddq_f32(v171, v176), 0, v173), 0, v175);
  v178 = vmlaq_f32(v176, 0, v171);
  v4 = v160 / v161;
  v293.i32[0] = HIDWORD(__dst[9]);
  v313 = v177;
  v317 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v169, 0, v171), 0, v173), 0, v175);
  v310 = vmlaq_f32(vaddq_f32(v173, v178), 0, v175);
  v305 = xmmword_1000EC920;
  v306 = vaddq_f32(v175, vmlaq_n_f32(v178, v173, *(&__dst[9] + 3)));
  if ((v291 & 1) == 0)
  {
    v15 = v286;
    v28 = v297;
    if (qword_10012F4E0 != -1)
    {
      goto LABEL_173;
    }

    goto LABEL_118;
  }

  v272 = xmmword_1000ED260;
  v270 = xmmword_1000F5C40;
  v271 = xmmword_1000EC920;
  v15 = v286;
  v28 = v297;
  while (2)
  {
    v180 = *(v28 + 72);
    __dst[34] = *(v28 + 56);
    v358[0] = v180;
    *(v358 + 9) = *(v28 + 81);
    v181 = sub_100009DE0();
    sub_10001358C(v323, v181, v305);
    v182 = sub_100013568(v323);
    v269 = v183;
    v287 = v184;
    v185 = *&__dst[10];
    v264 = v182;
    v266 = v186;
    v187 = __invert_f2(v182);
    v258 = *(&__dst[10] + 8);
    v188 = sub_1000DFD5C(v185);
    sub_1000DFD78(__src, v188, v4);
    v253 = __src[0];
    v254 = __src[1];
    v255 = __src[2];
    v256 = __src[3];
    v257 = __src[4];
    if (v27)
    {
      v189 = -1;
    }

    else
    {
      v189 = 0;
    }

    v261 = __src[7];
    v259 = __src[5];
    v260 = __src[6];
    v432.columns[1] = v313;
    v432.columns[0] = v317;
    v432.columns[2] = v310;
    v432.columns[3] = v306;
    v433 = __invert_f4(v432);
    v262 = v433.columns[0];
    v263 = v433.columns[1];
    v265 = v433.columns[2];
    v268 = v433.columns[3];
    v267 = tanf(((v185 * 3.1416) / 180.0) * 0.5);
    v415 = __dst[22];
    v416 = __dst[23];
    v417 = __dst[24];
    sub_1000BC578(&v346);
    v412 = __dst[25];
    v413 = __dst[26];
    v414 = __dst[27];
    sub_1000BC578(v355);
    v190.n128_f64[0] = (*(&__dst[16] + 1))(v22);
    v305 = v190;
    v22 = *&__dst[21];
    v298 = __dst[28];
    v191 = [v15 p_name[276]];
    if ((v191 & 0x8000000000000000) != 0)
    {
LABEL_167:
      __break(1u);
      goto LABEL_168;
    }

    v192 = v191;
    if (v191 >> 16)
    {
LABEL_168:
      __break(1u);
      goto LABEL_169;
    }

    v193 = [v15 *(v11 + 2216)];
    if ((v193 & 0x8000000000000000) != 0)
    {
LABEL_169:
      __break(1u);
      goto LABEL_170;
    }

    v194 = v193;
    if (v193 >> 16)
    {
LABEL_170:
      __break(1u);
LABEL_171:
      __break(1u);
LABEL_172:
      __break(1u);
LABEL_173:
      swift_once();
LABEL_118:
      v303 = *algn_10013A970;
      v270 = xmmword_10013A960;
      v271 = xmmword_10013A980;
      v272 = unk_10013A990;
      continue;
    }

    break;
  }

  v343 = v352;
  v344 = v353;
  v345 = v354;
  v339 = v348;
  v340 = v349;
  v342 = v351;
  v341 = v350;
  v338 = v347;
  v337 = v346;
  v334 = v355[6];
  v335 = v355[7];
  v336 = v355[8];
  v330 = v355[2];
  v331 = v355[3];
  v333 = v355[5];
  v332 = v355[4];
  v329 = v355[1];
  v328 = v355[0];
  swift_unknownObjectRetain();
  sub_1000DCC68(v284, v15, v282);
  v196 = v195;
  swift_unknownObjectRelease();
  v197 = [v295 renderCommandEncoderWithDescriptor:v196];

  if (!v197)
  {
    sub_10001B6F8();
    swift_allocError();
    *v228 = 5;
    swift_willThrow();
    sub_1000047C4(&v427, &qword_100133DA8, &qword_1000F5E78);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_1000047C4(__dst, &qword_100133DA0, &qword_1000F5E70);

    goto LABEL_130;
  }

  v198 = vmla_lane_f32(vmul_n_f32(v187.columns[0], v258.f32[0]), v187.columns[1], v258, 1);
  v199 = *&v253;
  v200 = *(&v253 + 1);
  v201 = *&v254;
  v202 = *(&v254 + 1);
  v203 = *&v255;
  v204 = *(&v255 + 1);
  v205 = *&v256;
  v206 = *(&v256 + 1);
  v207 = *&v257;
  v208 = *(&v257 + 1);
  v209 = *&v259;
  v210 = *(&v259 + 1);
  v211 = (v198.f32[0] + v198.f32[0]) + v207;
  v198.f32[0] = v208 - (v198.f32[1] + v198.f32[1]);
  v212 = v210 + 0.0;
  v213 = *&v260;
  v214 = *(&v260 + 1);
  v215 = *&v261;
  v216 = *(&v261 + 1);
  v217 = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v270, v199), v303, v200), v271, v201), v272, v202);
  v218 = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v270, v203), v303, v204), v271, v205), v272, v206);
  v219 = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v270, v211), v303, v198.f32[0]), v271, v209 + 0.0), v272, v212);
  v220 = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v270, v213), v303, v214), v271, v215), v272, v216);
  v221 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v217, v264.f32[0]), v218, *v264.f32, 1), v219, v264, 2), v220, v264, 3);
  v222 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v217, v266.f32[0]), v218, *v266.f32, 1), v219, v266, 2), v220, v266, 3);
  v223 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v217, v269.f32[0]), v218, *v269.f32, 1), v219, v269, 2), v220, v269, 3);
  v224 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v217, v287.f32[0]), v218, *v287.f32, 1), v219, v287, 2), v220, v287, 3);
  v225 = vbsl_s8(vdup_n_s32(v189), vadd_f32(vmul_n_f32(0x3F0000003E4CCCCCLL, v277), 0xBF19999A3E99999ALL), 0xBECCCCCD3D4CCCCDLL);
  v288 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v221, v262.f32[0]), v222, *v262.f32, 1), v223, v262, 2), v224, v262, 3);
  v285 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v221, v263.f32[0]), v222, *v263.f32, 1), v223, v263, 2), v224, v263, 3);
  v283 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v221, v265.f32[0]), v222, *v265.f32, 1), v223, v265, 2), v224, v265, 3);
  v278 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v221, v268.f32[0]), v222, *v268.f32, 1), v223, v268, 2), v224, v268, 3);
  v218.f32[0] = -(v4 * v267);
  v218.f32[1] = v4 * v267;
  v218.f32[2] = v267;
  v218.f32[3] = -v267;
  v304 = v218;
  v226 = v27 ^ 1;
  v227 = sub_1000E98E4();
  [v197 setLabel:v227];

  [v15 width];
  [v15 height];
  v400[14] = v351;
  v400[15] = v352;
  v400[16] = v353;
  v400[17] = v354;
  v400[10] = v347;
  v400[11] = v348;
  v400[0] = v288;
  v400[1] = v285;
  v400[2] = v283;
  v400[3] = v278;
  v400[4] = v317;
  v400[5] = v313;
  v400[6] = v310;
  v400[7] = v306;
  v400[12] = v349;
  v400[13] = v350;
  v400[8] = v304;
  v400[9] = v346;
  v400[24] = v355[6];
  v400[25] = v355[7];
  v400[26] = v355[8];
  v400[20] = v355[2];
  v400[21] = v355[3];
  v400[23] = v355[5];
  v400[22] = v355[4];
  v400[19] = v355[1];
  v400[18] = v355[0];
  v401 = v305.n128_u64[0];
  v402 = v305.n128_u32[2];
  v403 = v22;
  v404 = v225;
  v405 = v293.i32[0];
  v406 = v4;
  v407 = v298;
  v409 = v194;
  v408 = v192;
  v410 = 1;
  v411 = v226;
  sub_1000DCDD8(v359, v197, v400, v300, v273);
  [v197 endEncoding];
  sub_10001A890(v281, v280, v274, v279, v15, v295, 0);
  if (v289)
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_1000047C4(__dst, &qword_100133DA0, &qword_1000F5E70);
    swift_unknownObjectRelease();
    sub_1000047C4(&v427, &qword_100133DA8, &qword_1000F5E78);

    goto LABEL_130;
  }

  v229 = [v292 width];
  if ((v229 & 0x8000000000000000) != 0)
  {
    goto LABEL_175;
  }

  v230 = v229;
  if (v229 >> 16)
  {
LABEL_176:
    __break(1u);
    goto LABEL_177;
  }

  v231 = [v292 height];
  if ((v231 & 0x8000000000000000) != 0)
  {
LABEL_177:
    __break(1u);
    goto LABEL_178;
  }

  v232 = v231;
  if (v231 >> 16)
  {
LABEL_178:
    __break(1u);
LABEL_179:
    __break(1u);
    goto LABEL_180;
  }

  sub_1000DCC68(v276, v292, v275);
  v234 = v233;
  v235 = [v295 renderCommandEncoderWithDescriptor:v233];
  if (v235)
  {
    v236 = v235;
    v296 = v234;
    v237 = sub_1000E98E4();
    [v236 setLabel:v237];

    [v292 width];
    [v292 height];
    v360 = v288;
    v361 = v285;
    v362 = v283;
    v363 = v278;
    v364 = v317;
    v365 = v313;
    v366 = v310;
    v367 = v306;
    v374 = v342;
    v375 = v343;
    v376 = v344;
    v377 = v345;
    v370 = v338;
    v371 = v339;
    v372 = v340;
    v373 = v341;
    v368 = v304;
    v369 = v337;
    v384 = v334;
    v385 = v335;
    v386 = v336;
    v380 = v330;
    v381 = v331;
    v383 = v333;
    v382 = v332;
    v379 = v329;
    v378 = v328;
    v387 = v305.n128_u64[0];
    v388 = v305.n128_u32[2];
    v389 = v22;
    v390 = v225;
    v391 = v293.i32[0];
    v392 = v4;
    v393 = v298;
    v395 = v232;
    v394 = v230;
    v396 = 0;
    v397 = v226;
    v398 = v326;
    v399 = v327;
    sub_1000DCDD8(v359, v236, &v360, v300, v273);
    v238 = 30;
    if (v273)
    {
      v238 = 31;
    }

    v316 = v361;
    v319 = v360;
    v312 = v362;
    v308 = v363;
    [v236 setRenderPipelineState:{v299[v238], v248}];
    [v236 setVertexBuffer:v299[26] offset:0 atIndex:2];
    [v236 setVertexBuffer:v299[27] offset:0 atIndex:3];
    sub_1000BADD8(*(v250 + 16), __src, *&__dst[9]);
    [v236 setVertexBytes:__src length:192 atIndex:4];
    [v236 setFragmentBytes:__src length:192 atIndex:2];
    *&v239 = sub_1000DDD50(v359, [v292 height], v291, v320, v319, v316, v312, v308);
    [v236 setFragmentBytes:v320 length:64 atIndex:{3, v239}];
    [v236 setFragmentTexture:v274 atIndex:7];
    v240 = *(v252 + 16);
    v241 = *(v251 + 16);
    v76 = __OFADD__(v240, v241);
    v242 = v240 + v241;
    if (!v76)
    {
      v243 = *(v249 + 16);
      v76 = __OFADD__(v242, v243);
      v244 = v242 + v243;
      if (!v76)
      {
        if ((v244 - 0x100000000000000) >> 57 == 127)
        {
          [v236 setFragmentBufferOffset:v244 << 7 atIndex:1];
          [v236 drawIndexedPrimitives:3 indexCount:v299[29] indexType:0 indexBuffer:v299[28] indexBufferOffset:0];
          [v236 endEncoding];
          swift_unknownObjectRelease();

          sub_1000047C4(&v427, &qword_100133DA8, &qword_1000F5E78);
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          sub_1000047C4(__dst, &qword_100133DA0, &qword_1000F5E70);

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          sub_1000056DC(v290, 0);
          return;
        }

LABEL_182:
        __break(1u);
      }

LABEL_181:
      __break(1u);
      goto LABEL_182;
    }

LABEL_180:
    __break(1u);
    goto LABEL_181;
  }

  sub_10001B6F8();
  swift_allocError();
  *v245 = 5;
  swift_willThrow();
  sub_1000047C4(&v427, &qword_100133DA8, &qword_1000F5E78);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_1000047C4(__dst, &qword_100133DA0, &qword_1000F5E70);

  swift_unknownObjectRelease();

LABEL_130:
  swift_unknownObjectRelease();
  sub_1000056DC(v290, 0);
}

int64x2_t sub_1000DFCA0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  result = vdupq_n_s64(1uLL);
  *(a2 + 8) = result;
  return result;
}

double sub_1000DFD0C(__n128 a1, __n128 a2, __n128 a3, __n128 a4, double a5)
{
  v6 = *(v5 + 16);
  v10[0] = a1;
  v10[1] = a2;
  v10[2] = a3;
  v10[3] = a4;
  v9 = a5;
  v6(&v8, v10, &v9);
  return *&v8;
}

double sub_1000DFD78@<D0>(_OWORD *a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v5 = tan(a2 * 0.5);
  *&v6 = 0;
  *(&v6 + 1) = 1.0 / v5;
  *a1 = COERCE_UNSIGNED_INT64(1.0 / v5 / a3);
  a1[1] = 0u;
  a1[2] = v6;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[5] = xmmword_1000F5C50;
  result = 15.0;
  a1[6] = 0u;
  a1[7] = xmmword_1000F5C60;
  return result;
}

uint64_t sub_1000DFDF0(uint64_t a1)
{
  v1 = *(a1 + 176);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void sub_1000DFE08(void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v202 = a2;
  v203 = a3;
  v187 = a4;
  v5 = sub_1000E93B4();
  v201 = *(v5 - 8);
  __chkstk_darwin(v5);
  v190 = &v168 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v191 = &v168 - v8;
  __chkstk_darwin(v9);
  v188 = &v168 - v10;
  __chkstk_darwin(v11);
  v189 = &v168 - v12;
  __chkstk_darwin(v13);
  v192 = &v168 - v14;
  __chkstk_darwin(v15);
  v193 = &v168 - v16;
  __chkstk_darwin(v17);
  v194 = &v168 - v18;
  __chkstk_darwin(v19);
  v195 = &v168 - v20;
  __chkstk_darwin(v21);
  v23 = &v168 - v22;
  __chkstk_darwin(v24);
  v26 = &v168 - v25;
  v27 = [objc_allocWithZone(MTKTextureLoader) initWithDevice:a1];
  v196 = objc_opt_self();
  v28 = [v196 mainBundle];
  v29 = sub_1000E98E4();
  v30 = [v28 URLForResource:v29 withExtension:0];

  if (!v30)
  {

    sub_10001B6F8();
    swift_allocError();
    *v37 = 0;
    swift_willThrow();

    swift_unknownObjectRelease();
    goto LABEL_5;
  }

  v197 = v28;
  v198 = v27;
  v199 = a1;
  sub_1000E9364();

  v31 = v201;
  v32 = v201 + 32;
  v33 = *(v201 + 32);
  v33(v26, v23, v5);
  v34 = v200;
  v35 = sub_1000E93D4();
  if (v34)
  {
    (*(v31 + 8))(v26, v5);
    swift_unknownObjectRelease();

LABEL_5:
    swift_unknownObjectRelease();
    return;
  }

  v186 = v33;
  v200 = v32;
  v38 = v35;
  v39 = v36;
  v40 = [objc_opt_self() texture2DDescriptorWithPixelFormat:115 width:512 height:256 mipmapped:0];
  [v40 setUsage:1];
  [v40 setStorageMode:0];
  v41 = [v199 newTextureWithDescriptor:v40];
  if (!v41)
  {

    sub_10001B6F8();
    swift_allocError();
    *v62 = 3;
    swift_willThrow();

    swift_unknownObjectRelease();
    sub_1000190E4(v38, v39);
    swift_unknownObjectRelease();
    (*(v31 + 8))(v26, v5);
    return;
  }

  v180 = v40;
  v42 = v41;
  v43 = sub_1000E98E4();
  [v42 setLabel:v43];

  swift_unknownObjectRetain();
  v182 = v38;
  v183 = v39;
  v181 = v42;
  sub_1000DC6EC(v38, v39, v42, 512, 256);
  v179 = 0;
  v44 = sub_1000125FC(&unk_100130390, &unk_1000EF090);
  inited = swift_initStackObject();
  v46 = MTKTextureLoaderOptionTextureStorageMode;
  *(inited + 32) = MTKTextureLoaderOptionTextureStorageMode;
  v178 = xmmword_1000EC880;
  *(inited + 16) = xmmword_1000EC880;
  *(inited + 40) = 2;
  v47 = MTKTextureLoaderOptionSRGB;
  *(inited + 64) = &type metadata for UInt;
  *(inited + 72) = v47;
  *(inited + 104) = &type metadata for Bool;
  *(inited + 80) = 1;
  v177 = v46;
  v176 = v47;
  v185 = sub_1000A0EDC(inited);
  swift_setDeallocating();
  v48 = sub_1000125FC(&unk_100130CE0, &qword_1000ED5E0);
  swift_arrayDestroy();
  v49 = [v196 mainBundle];
  v50 = sub_1000E98E4();
  v51 = sub_1000E98E4();
  v184 = v49;
  v52 = [v49 URLForResource:v50 withExtension:v51];

  if (!v52)
  {
    sub_10001B6F8();
    v63 = swift_allocError();
    *v64 = 0;
    v200 = v63;
    swift_willThrow();
    v65 = v198;
    (*(v31 + 8))(v26, v5);
LABEL_19:

    sub_1000190E4(v182, v183);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    return;
  }

  v175 = v48;
  v53 = v194;
  sub_1000E9364();

  v54 = v195;
  v186(v195, v53, v5);
  v55 = v203;
  v56 = v198;
  if (!v203)
  {
    sub_10001B6F8();
    v61 = swift_allocError();
    *v66 = 0;
    swift_willThrow();
    goto LABEL_14;
  }

  swift_unknownObjectRetain();
  v57 = [v56 device];
  v58 = v179;
  v59 = sub_1000CF4A0(v54, v57, v185, v55);
  v60 = v54;
  v61 = v58;
  if (v58)
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
LABEL_14:
    if (qword_10012F780 != -1)
    {
      swift_once();
    }

    v67 = sub_1000E96A4();
    sub_100007488(v67, qword_10013DE48);
    swift_errorRetain();
    v68 = sub_1000E9684();
    v69 = sub_1000E9BA4();

    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v174 = v26;
      v204 = v72;
      *v70 = 136446722;
      *(v70 + 4) = sub_100093A3C(0x612D6F6465626C61, 0xE800000000000000, &v204);
      *(v70 + 12) = 2082;
      *(v70 + 14) = sub_100093A3C(7894123, 0xE300000000000000, &v204);
      *(v70 + 22) = 2114;
      swift_errorRetain();
      v73 = _swift_stdlib_bridgeErrorToNSError();
      *(v70 + 24) = v73;
      *v71 = v73;
      _os_log_impl(&_mh_execute_header, v68, v69, "failed to load texture “%{public}s.%{public}s”: %{public}@", v70, 0x20u);
      sub_1000047C4(v71, &qword_10012FA60, &unk_1000ECD90);

      swift_arrayDestroy();
      v26 = v174;
    }

    v200 = v61;
    swift_willThrow();
    v74 = *(v201 + 8);
    v74(v195, v5);
    v65 = v198;
    v74(v26, v5);
    goto LABEL_19;
  }

  v174 = v26;
  v75 = v44;
  v76 = v59;
  v77 = v60;
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v179 = v76;
  [v76 setLabel:0];
  v79 = *(v31 + 8);
  v78 = v31 + 8;
  v194 = v79;
  (v79)(v77, v5);

  v184 = v75;
  v80 = swift_initStackObject();
  *(v80 + 16) = v178;
  v195 = v5;
  v82 = v176;
  v81 = v177;
  *(v80 + 32) = v177;
  *(v80 + 40) = 2;
  *(v80 + 64) = &type metadata for UInt;
  *(v80 + 72) = v82;
  *(v80 + 104) = &type metadata for Bool;
  *(v80 + 80) = 0;
  v177 = v81;
  v176 = v82;
  v83 = sub_1000A0EDC(v80);
  swift_setDeallocating();
  swift_arrayDestroy();
  v84 = [v196 mainBundle];
  v85 = sub_1000E98E4();
  v86 = sub_1000E98E4();
  v185 = v84;
  v87 = [v84 URLForResource:v85 withExtension:v86];

  if (!v87)
  {
    v200 = v83;
    sub_10001B6F8();
    swift_allocError();
    *v102 = 0;
    swift_willThrow();
    v98 = v198;
    v99 = v174;
    v100 = v194;
    v101 = v195;
LABEL_26:
    v100(v99, v101);

    sub_1000190E4(v182, v183);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();

    return;
  }

  v88 = v192;
  sub_1000E9364();

  v89 = v193;
  v186(v193, v88, v195);
  swift_unknownObjectRetain();
  v90 = sub_1000CF4A0(v89, [v198 device], v83, v55);
  v91 = v55;
  v201 = v78;
  v103 = v90;
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRetain();
  v104 = sub_1000E98E4();
  [v103 setLabel:v104];
  v173 = v103;
  swift_unknownObjectRelease();

  v105 = v89;
  v106 = v195;
  (v194)(v105, v195);

  v107 = swift_initStackObject();
  *(v107 + 16) = v178;
  v109 = v176;
  v108 = v177;
  *(v107 + 32) = v177;
  *(v107 + 40) = 2;
  *(v107 + 64) = &type metadata for UInt;
  *(v107 + 72) = v109;
  *(v107 + 104) = &type metadata for Bool;
  *(v107 + 80) = 0;
  *&v178 = v108;
  v177 = v109;
  v110 = sub_1000A0EDC(v107);
  swift_setDeallocating();
  swift_arrayDestroy();
  v111 = [v196 mainBundle];
  v112 = sub_1000E98E4();
  v113 = sub_1000E98E4();
  v193 = v111;
  v114 = [v111 URLForResource:v112 withExtension:v113];

  if (!v114)
  {
    sub_10001B6F8();
    swift_allocError();
    *v119 = 0;
    swift_willThrow();
    v120 = v174;
    v121 = v194;
    swift_unknownObjectRelease();

    sub_1000190E4(v182, v183);
    swift_unknownObjectRelease();

    v121(v120, v106);
    swift_unknownObjectRelease();
LABEL_30:
    swift_unknownObjectRelease();
    goto LABEL_5;
  }

  v115 = v188;
  sub_1000E9364();

  v116 = v189;
  v186(v189, v115, v106);
  swift_unknownObjectRetain();
  v117 = sub_1000CF4A0(v116, [v198 device], v110, v91);
  v118 = v202;
  v122 = v106;
  v123 = v117;
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRetain();
  v124 = sub_1000E98E4();
  [v123 setLabel:v124];
  v169 = v123;
  swift_unknownObjectRelease();

  (v194)(v116, v122);

  v125 = sub_1000A10D4(_swiftEmptyArrayStorage);
  v176 = *(v118 + 16);
  if (v176)
  {
    v98 = 0;
    v172 = MTKTextureLoaderOptionOrigin;
    v171 = MTKTextureLoaderOriginTopLeft;
    v170 = xmmword_1000ED250;
    v126 = v195;
    while (v98 < *(v118 + 16))
    {
      v130 = v98[v118 + 32];
      if (!*(v125 + 2) || (sub_1000A1E74(), v131 = v179, (v132 & 1) == 0))
      {
        v185 = v98;
        v189 = v125;
        v133 = 0x6361622D6F626F67;
        if (v130 == 7)
        {
          v133 = 0x622D622D6F626F67;
        }

        v134 = 0xEF646E756F72676BLL;
        if (v130 == 7)
        {
          v134 = 0xEC00000074736F6FLL;
        }

        if (v130 == 6)
        {
          v133 = 0x692D622D6F626F67;
          v134 = 0xEB00000000646170;
        }

        v135 = 0x642D622D6F626F67;
        if (v130 == 4)
        {
          v135 = 0x622D6F626F67;
        }

        v136 = 0xEB000000006B7261;
        if (v130 == 4)
        {
          v136 = 0xE600000000000000;
        }

        if (v130 <= 5)
        {
          v133 = v135;
          v134 = v136;
        }

        v137 = 0x692D612D6F626F67;
        if (v130 == 2)
        {
          v137 = 0x612D612D6F626F67;
        }

        v138 = 0xEC000000322D746CLL;
        if (v130 != 2)
        {
          v138 = 0xEB00000000646170;
        }

        v139 = 0x612D6F626F67;
        if (v130)
        {
          v139 = 0x612D612D6F626F67;
        }

        v140 = 0xEC000000312D746CLL;
        if (!v130)
        {
          v140 = 0xE600000000000000;
        }

        if (v130 <= 1)
        {
          v137 = v139;
          v138 = v140;
        }

        if (v130 <= 3)
        {
          v133 = v137;
        }

        v192 = v133;
        if (v130 <= 3)
        {
          v141 = v138;
        }

        else
        {
          v141 = v134;
        }

        v142 = swift_initStackObject();
        *(v142 + 16) = v170;
        v144 = v177;
        v143 = v178;
        *(v142 + 32) = v178;
        *(v142 + 40) = 2;
        *(v142 + 64) = &type metadata for UInt;
        *(v142 + 72) = v144;
        *(v142 + 80) = 1;
        v145 = v172;
        *(v142 + 104) = &type metadata for Bool;
        *(v142 + 112) = v145;
        v146 = sub_1000E9914();
        *(v142 + 144) = &type metadata for String;
        *(v142 + 120) = v146;
        *(v142 + 128) = v147;
        v148 = v143;
        v149 = v144;
        v150 = v145;
        v151 = sub_1000A0EDC(v142);
        swift_setDeallocating();
        swift_arrayDestroy();
        v152 = [v196 mainBundle];
        v193 = v141;
        v153 = sub_1000E98E4();
        v154 = sub_1000E98E4();
        v188 = v152;
        v155 = [v152 URLForResource:v153 withExtension:v154];

        if (!v155)
        {
          v168 = v151;
          sub_10001B6F8();
          swift_allocError();
          *v164 = 0;
          swift_willThrow();
          v166 = v194;
          v165 = v195;
          v167 = v197;

          swift_unknownObjectRelease();
          sub_1000190E4(v182, v183);
          swift_unknownObjectRelease();
          v166(v174, v165);
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();

          goto LABEL_30;
        }

        v156 = v190;
        sub_1000E9364();

        v157 = v191;
        v158 = v195;
        v186(v191, v156, v195);
        v159 = v203;
        swift_unknownObjectRetain();
        v160 = sub_1000CF4A0(v157, [v198 device], v151, v159);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        [v160 setLabel:0];
        (v194)(v157, v158);

        v98 = v185;
        v126 = v195;
        v127 = sub_1000E98E4();

        [v160 setLabel:v127];

        v128 = v189;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v204 = v128;
        sub_1000B4C14(v160, v130, isUniquelyReferenced_nonNull_native);
        v125 = v204;
        v118 = v202;
        v131 = v179;
      }

      if (v176 == ++v98)
      {
        goto LABEL_67;
      }
    }

    __break(1u);
    swift_once();
    v92 = sub_1000E96A4();
    sub_100007488(v92, qword_10013DE48);
    swift_errorRetain();
    v93 = sub_1000E9684();
    v94 = sub_1000E9BA4();

    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      v204 = swift_slowAlloc();
      *v95 = 136446722;
      *(v95 + 4) = sub_100093A3C(0x2D736C616D726F6ELL, 0xE900000000000061, &v204);
      *(v95 + 12) = 2082;
      *(v95 + 14) = sub_100093A3C(7894123, 0xE300000000000000, &v204);
      *(v95 + 22) = 2114;
      swift_errorRetain();
      v97 = _swift_stdlib_bridgeErrorToNSError();
      *(v95 + 24) = v97;
      *v96 = v97;
      _os_log_impl(&_mh_execute_header, v93, v94, "failed to load texture “%{public}s.%{public}s”: %{public}@", v95, 0x20u);
      sub_1000047C4(v96, &qword_10012FA60, &unk_1000ECD90);
      v98 = v198;

      swift_arrayDestroy();
    }

    v99 = v174;
    v100 = v194;
    swift_willThrow();
    v101 = v195;
    v100(v193, v195);
    goto LABEL_26;
  }

  v126 = v195;
  v131 = v179;
LABEL_67:

  swift_unknownObjectRelease();

  sub_1000190E4(v182, v183);
  swift_unknownObjectRelease();
  (v194)(v174, v126);
  v161 = v187;
  v162 = v173;
  *v187 = v131;
  v161[1] = v162;
  v163 = v181;
  v161[2] = v169;
  v161[3] = v163;
  v161[4] = v125;
}

void sub_1000E1A24(uint64_t a1)
{
  __chkstk_darwin(a1);
  v30 = v2;
  v3 = *(v1 + 16);
  if (v3)
  {
    v40 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = (v1 + 32);
    v10 = &qword_100132300;
    do
    {
      v34 = v3;
      v35 = v8;
      v36 = v7;
      v37 = v6;
      v38 = v5;
      v39 = v4;
      memcpy(__dst, v9, 0x418uLL);
      v33 = v9;
      memcpy(v74, v9, sizeof(v74));
      v11 = __dst[23];
      v12 = __dst[24];
      v13 = __dst[25];
      v14 = __dst[26];
      v15 = __dst[27];
      sub_1000299EC(__dst, __src, v10, &unk_1000F5E90);
      sub_1000299EC(__dst, __src, v10, &unk_1000F5E90);
      sub_1000DFCB4(__dst);
      memcpy(v51, &__dst[66], 0x208uLL);
      if (sub_1000DFDF0(v51) == 1)
      {
        v31 = __dst[28];
        v32 = __dst[29];
        v16 = v10;
        v17 = __dst[30];
        v18 = __dst[31];
        v19 = __dst[32];
        sub_1000299EC(__dst, __src, v16, &unk_1000F5E90);

        sub_1000DFCB4(__dst);
        __src[0] = v11;
        __src[1] = v12;
        __src[2] = v13;
        __src[3] = v14;
        __src[4] = v15;
        swift_getAtKeyPath();

        v20 = v16;

        v21 = v44;
        sub_1000299EC(__dst, __src, v20, &unk_1000F5E90);

        sub_1000DFCB4(__dst);
        __src[0] = v31;
        __src[1] = v32;
        __src[2] = v17;
        __src[3] = v18;
        __src[4] = v19;
        swift_getAtKeyPath();

        v22 = v44;
      }

      else
      {
        sub_1000299EC(__dst, __src, v10, &unk_1000F5E90);
        sub_1000047C4(&__dst[66], &unk_100133DB0, &unk_1000F5E80);

        sub_1000DFCB4(__dst);
        __src[0] = v11;
        __src[1] = v12;
        __src[2] = v13;
        __src[3] = v14;
        __src[4] = v15;
        swift_getAtKeyPath();

        v23 = v42[0];
        v44 = v51[23];
        v45 = v51[24];
        v46 = v51[25];
        v47 = v51[26];
        v48 = v51[27];

        swift_getAtKeyPath();

        if (v43 <= v23)
        {
          v21 = v23;
        }

        else
        {
          v21 = v43;
        }

        sub_1000299EC(__dst, __src, &qword_100132300, &unk_1000F5E90);
        sub_1000047C4(&__dst[66], &unk_100133DB0, &unk_1000F5E80);

        sub_1000DFCB4(__dst);
        __src[0] = v11;
        __src[1] = v12;
        __src[2] = v13;
        __src[3] = v14;
        __src[4] = v15;
        swift_getAtKeyPath();

        v24 = v42[0];
        v44 = v51[28];
        v45 = v51[29];
        v46 = v51[30];
        v47 = v51[31];
        v48 = v51[32];

        swift_getAtKeyPath();
        sub_1000047C4(&__dst[66], &unk_100133DB0, &unk_1000F5E80);

        v20 = &qword_100132300;

        v22 = v43;
        if (v43 <= v24)
        {
          v22 = v24;
        }
      }

      v6 = v37;
      v5 = v38;
      if (v38 <= v21)
      {
        v25 = v21;
      }

      else
      {
        v25 = v38;
      }

      if (v37 >= v21)
      {
        v5 = v25;
      }

      if (v37 <= v21)
      {
        v6 = v21;
      }

      v26 = v40;
      if (v40 <= v22)
      {
        v27 = v22;
      }

      else
      {
        v27 = v40;
      }

      v4 = v39;
      if (v39 >= v22)
      {
        v26 = v27;
      }

      v40 = v26;
      if (v39 <= v22)
      {
        v4 = v22;
      }

      v8 = v35;
      if (v21 > v35)
      {
        v8 = v21;
      }

      v7 = v36;
      if (v22 > v36)
      {
        v7 = v22;
      }

      sub_1000299EC(__dst, __src, v20, &unk_1000F5E90);
      sub_1000DFCB4(__dst);
      memcpy(__src, &__dst[66], 0x208uLL);
      if (sub_1000DFDF0(__src) == 1)
      {
        v10 = v20;
        sub_1000047C4(__dst, v20, &unk_1000F5E90);
      }

      else
      {
        memcpy(v73, __src, 0x208uLL);
        v28.i32[0] = 0.5;
        sub_1000BEBB0(v73, 0, v52, v28);
        v72 = v53;
        v71 = v54;
        v70 = v55;
        v69 = v56;
        v68 = v57;
        v44 = v53;
        v45 = v54;
        v46 = v55;
        v47 = v56;
        v48 = v57;
        sub_1000299EC(&v72, v42, &unk_100133DF0, &unk_1000F5FB8);
        sub_1000299EC(&v71, v42, &unk_100133DF0, &unk_1000F5FB8);
        sub_1000299EC(&v70, v42, &unk_100133DF0, &unk_1000F5FB8);
        sub_1000299EC(&v69, v42, &unk_100133DF0, &unk_1000F5FB8);
        sub_1000299EC(&v68, v42, &unk_100133DF0, &unk_1000F5FB8);
        swift_getAtKeyPath();
        sub_1000047C4(&v72, &unk_100133DF0, &unk_1000F5FB8);
        sub_1000047C4(&v71, &unk_100133DF0, &unk_1000F5FB8);
        sub_1000047C4(&v70, &unk_100133DF0, &unk_1000F5FB8);
        sub_1000047C4(&v69, &unk_100133DF0, &unk_1000F5FB8);
        sub_1000047C4(&v68, &unk_100133DF0, &unk_1000F5FB8);
        v29 = v43;
        v67 = v58;
        v66 = v59;
        v65 = v60;
        v64 = v61;
        v63 = v62;
        v42[0] = v58;
        v42[1] = v59;
        v42[2] = v60;
        v42[3] = v61;
        v42[4] = v62;
        sub_1000299EC(&v67, &v41, &unk_100133DF0, &unk_1000F5FB8);
        sub_1000299EC(&v66, &v41, &unk_100133DF0, &unk_1000F5FB8);
        sub_1000299EC(&v65, &v41, &unk_100133DF0, &unk_1000F5FB8);
        sub_1000299EC(&v64, &v41, &unk_100133DF0, &unk_1000F5FB8);
        sub_1000299EC(&v63, &v41, &unk_100133DF0, &unk_1000F5FB8);
        v10 = &qword_100132300;
        swift_getAtKeyPath();
        sub_1000047C4(&__dst[66], &unk_100133DB0, &unk_1000F5E80);
        sub_1000DFCB4(v52);
        sub_1000047C4(__dst, &qword_100132300, &unk_1000F5E90);
        sub_1000047C4(&v67, &unk_100133DF0, &unk_1000F5FB8);
        sub_1000047C4(&v66, &unk_100133DF0, &unk_1000F5FB8);
        sub_1000047C4(&v65, &unk_100133DF0, &unk_1000F5FB8);
        sub_1000047C4(&v64, &unk_100133DF0, &unk_1000F5FB8);
        sub_1000047C4(&v63, &unk_100133DF0, &unk_1000F5FB8);
        if (v29 > v8)
        {
          v8 = v29;
        }

        if (v41 > v7)
        {
          v7 = v41;
        }
      }

      v9 = v33 + 1056;
      v3 = v34 - 1;
    }

    while (v34 != 1);
  }

  else
  {
    v40 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
  }

  *v30 = v8;
  v30[1] = v7;
  v30[2] = v6;
  v30[3] = v5;
  v30[4] = v4;
  v30[5] = v40;
}

uint64_t sub_1000E22C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t a7@<X8>)
{
  v13 = [objc_opt_self() texture2DDescriptorWithPixelFormat:a4 width:a1 height:a2 mipmapped:0];
  [v13 setTextureType:4];
  [v13 setSampleCount:a5];
  [v13 setStorageMode:3];
  [v13 setUsage:4];
  v14 = [a6 newTextureWithDescriptor:v13];
  if (!v14)
  {
    sub_10001B6F8();
    swift_allocError();
    *v35 = 3;
    swift_willThrow();
LABEL_17:

    return swift_unknownObjectRelease();
  }

  v15 = v14;
  v16 = sub_1000E98E4();
  [v15 setLabel:v16];

  [v13 setPixelFormat:a3];
  v17 = [a6 newTextureWithDescriptor:v13];
  if (!v17)
  {
    sub_10001B6F8();
    swift_allocError();
    *v38 = 3;
    swift_willThrow();
    swift_unknownObjectRelease();
    goto LABEL_17;
  }

  v18 = v17;
  v46 = a7;
  v19 = sub_1000E98E4();
  v48 = v18;
  [v18 setLabel:v19];

  [v13 setWidth:{objc_msgSend(v13, "width") / 2}];
  [v13 setHeight:{objc_msgSend(v13, "height") / 2}];
  v20 = [a6 newTextureWithDescriptor:v13];
  v56 = v20;
  if (v20 && (v21 = v20, v22 = sub_1000E98E4(), [v21 setLabel:v22], v22, objc_msgSend(v13, "setPixelFormat:", a4), (v23 = objc_msgSend(a6, "newTextureWithDescriptor:", v13)) != 0))
  {
    v24 = v23;
    swift_unknownObjectRetain();
    v25 = sub_1000E98E4();
    [v24 setLabel:v25];

    v47 = v24;
    swift_unknownObjectRelease();
    [v13 setTextureType:2];
    [v13 setSampleCount:1];
    [v13 setPixelFormat:a3];
    [v13 setStorageMode:2];
    [v13 setUsage:5];
    v26 = [a6 newTextureWithDescriptor:v13];
    if (v26)
    {
      v27 = v26;
      v28 = sub_1000E98E4();
      [v27 setLabel:v28];

      swift_unknownObjectRetain();
      [v13 setUsage:3];
      v29 = sub_10001B130(v27, 0, 1);
      if (!v7)
      {
        v40 = v29;
        v41 = v30;
        v42 = v31;
        v43 = v32;
        swift_unknownObjectRelease();

        *&v50 = v48;
        *(&v50 + 1) = v15;
        *&v51 = v56;
        *(&v51 + 1) = v27;
        *&v52 = v47;
        *(&v52 + 1) = v40;
        *&v53 = v41;
        *(&v53 + 1) = v42;
        v54 = v43;
        v55[0] = v48;
        v55[1] = v15;
        v55[2] = v56;
        v55[3] = v27;
        v55[4] = v47;
        v55[5] = v40;
        v55[6] = v41;
        v55[7] = v42;
        v55[8] = v43;
        sub_1000E2984(&v50, v49);
        result = sub_1000E29BC(v55);
        v44 = v53;
        *(v46 + 32) = v52;
        *(v46 + 48) = v44;
        *(v46 + 64) = v54;
        v45 = v51;
        *v46 = v50;
        *(v46 + 16) = v45;
        return result;
      }

      v33 = 1;
      v34 = 1;
    }

    else
    {
      sub_10001B6F8();
      swift_allocError();
      *v39 = 3;
      swift_willThrow();
      v33 = 0;
      v34 = 1;
    }
  }

  else
  {
    sub_10001B6F8();
    swift_allocError();
    *v36 = 3;
    swift_willThrow();
    v33 = 0;
    v34 = 0;
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (v56)
  {
    swift_unknownObjectRelease();
  }

  if (v33)
  {
    swift_unknownObjectRelease();
  }

  result = v47;
  if (v34)
  {
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1000E2830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  type metadata accessor for SpaceRenderer();
  v9 = swift_allocObject();
  swift_unknownObjectRetain();
  v10 = swift_unknownObjectRetain();
  sub_1000D4660(v10);
  if (v6)
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = *(v9 + 16);
    swift_unknownObjectRetain();
    sub_1000E22C0(a4, a5, 0x51, 250, 4, v11, v19);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v13 = *(v9 + 72);
    v14 = *(v9 + 104);
    v17[2] = *(v9 + 88);
    v17[3] = v14;
    v17[0] = *(v9 + 56);
    v17[1] = v13;
    v15 = v19[0];
    *(v9 + 72) = v19[1];
    v16 = v19[3];
    *(v9 + 88) = v19[2];
    *(v9 + 104) = v16;
    v18 = *(v9 + 120);
    *(v9 + 120) = v20;
    *(v9 + 56) = v15;
    sub_1000047C4(v17, &qword_100133DA8, &qword_1000F5E78);
  }

  return v9;
}

double sub_1000E29F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a1)
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  return result;
}

void sub_1000E2A84()
{
  sub_1000AB384(&off_10011DF80);
  v337 = v0;
  type metadata accessor for ToriLight();
  v1 = swift_allocObject();
  *(v1 + 48) = 0;
  *(v1 + 52) = 0;
  *(v1 + 56) = 257;
  *(v1 + 64) = _swiftEmptyArrayStorage;
  v322 = (v1 + 64);
  *(v1 + 16) = 2;
  *(v1 + 32) = v337;
  swift_beginAccess();
  *(v1 + 48) = 1;
  swift_beginAccess();
  *(v1 + 52) = 1065353216;
  swift_beginAccess();
  *(v1 + 56) = 0;
  swift_beginAccess();
  v304 = v1;
  *(v1 + 57) = 1;
  sub_1000AB384(&off_10011DFB0);
  v338 = v2;
  v3 = swift_allocObject();
  *(v3 + 48) = 0;
  *(v3 + 52) = 0;
  *(v3 + 56) = 257;
  *(v3 + 64) = _swiftEmptyArrayStorage;
  v286 = (v3 + 64);
  *(v3 + 16) = 2;
  *(v3 + 32) = v338;
  swift_beginAccess();
  *(v3 + 48) = 1;
  swift_beginAccess();
  *(v3 + 52) = 1065353216;
  swift_beginAccess();
  *(v3 + 56) = 1;
  swift_beginAccess();
  v303 = v3;
  *(v3 + 57) = 1;
  sub_1000AB384(&off_10011DFE0);
  v339 = v4;
  v5 = swift_allocObject();
  *(v5 + 48) = 0;
  *(v5 + 52) = 0;
  *(v5 + 56) = 257;
  *(v5 + 64) = _swiftEmptyArrayStorage;
  v320 = (v5 + 64);
  *(v5 + 16) = 2;
  *(v5 + 32) = v339;
  swift_beginAccess();
  *(v5 + 48) = 0;
  swift_beginAccess();
  *(v5 + 52) = 1065353216;
  swift_beginAccess();
  *(v5 + 56) = 1;
  swift_beginAccess();
  *(v5 + 57) = 1;
  sub_1000AB384(&off_10011E010);
  v340 = v6;
  v7 = swift_allocObject();
  *(v7 + 48) = 0;
  *(v7 + 52) = 0;
  *(v7 + 56) = 257;
  *(v7 + 64) = _swiftEmptyArrayStorage;
  v326 = (v7 + 64);
  *(v7 + 16) = 2;
  *(v7 + 32) = v340;
  swift_beginAccess();
  *(v7 + 48) = 1;
  swift_beginAccess();
  *(v7 + 52) = 1065353216;
  swift_beginAccess();
  *(v7 + 56) = 1;
  swift_beginAccess();
  v302 = v7;
  *(v7 + 57) = 1;
  sub_1000AB384(&off_10011E040);
  v341 = v8;
  v9 = swift_allocObject();
  *(v9 + 48) = 0;
  *(v9 + 52) = 0;
  *(v9 + 56) = 257;
  *(v9 + 64) = _swiftEmptyArrayStorage;
  v331 = (v9 + 64);
  *(v9 + 16) = 2;
  *(v9 + 32) = v341;
  swift_beginAccess();
  *(v9 + 48) = 0;
  swift_beginAccess();
  *(v9 + 52) = 1065353216;
  swift_beginAccess();
  *(v9 + 56) = 1;
  swift_beginAccess();
  v301 = v9;
  *(v9 + 57) = 1;
  sub_1000AB384(&off_10011E070);
  v342 = v10;
  v11 = swift_allocObject();
  *(v11 + 48) = 0;
  *(v11 + 52) = 0;
  *(v11 + 56) = 257;
  *(v11 + 64) = _swiftEmptyArrayStorage;
  v288 = (v11 + 64);
  *(v11 + 16) = 2;
  *(v11 + 32) = v342;
  swift_beginAccess();
  *(v11 + 48) = 1;
  swift_beginAccess();
  *(v11 + 52) = 1065353216;
  swift_beginAccess();
  *(v11 + 56) = 1;
  swift_beginAccess();
  v300 = v11;
  *(v11 + 57) = 1;
  sub_1000AB384(&off_10011E0A0);
  v343 = v12;
  v13 = swift_allocObject();
  *(v13 + 48) = 0;
  *(v13 + 52) = 0;
  *(v13 + 56) = 257;
  *(v13 + 64) = _swiftEmptyArrayStorage;
  v329 = (v13 + 64);
  *(v13 + 16) = 2;
  *(v13 + 32) = v343;
  swift_beginAccess();
  *(v13 + 48) = 1;
  swift_beginAccess();
  *(v13 + 52) = 1065353216;
  swift_beginAccess();
  *(v13 + 56) = 1;
  swift_beginAccess();
  *(v13 + 57) = 1;
  sub_1000AB384(&off_10011E0D0);
  v318 = v14;
  v15 = swift_allocObject();
  *(v15 + 48) = 0;
  *(v15 + 52) = 0;
  *(v15 + 56) = 257;
  *(v15 + 64) = _swiftEmptyArrayStorage;
  v344 = (v15 + 64);
  *(v15 + 16) = 2;
  *(v15 + 32) = v318;
  swift_beginAccess();
  *(v15 + 48) = 1;
  swift_beginAccess();
  *(v15 + 52) = 1065353216;
  swift_beginAccess();
  *(v15 + 56) = 1;
  swift_beginAccess();
  v299 = v15;
  *(v15 + 57) = 1;
  sub_1000AB384(&off_10011E100);
  v311 = v16;
  v17 = swift_allocObject();
  *(v17 + 48) = 0;
  *(v17 + 52) = 0;
  *(v17 + 56) = 257;
  *(v17 + 64) = _swiftEmptyArrayStorage;
  v319 = (v17 + 64);
  *(v17 + 16) = 2;
  *(v17 + 32) = v311;
  swift_beginAccess();
  *(v17 + 48) = 1;
  swift_beginAccess();
  *(v17 + 52) = 1065353216;
  swift_beginAccess();
  *(v17 + 56) = 1;
  swift_beginAccess();
  v298 = v17;
  *(v17 + 57) = 1;
  sub_1000AB384(&off_10011E130);
  v312 = v18;
  v19 = swift_allocObject();
  *(v19 + 48) = 0;
  *(v19 + 52) = 0;
  *(v19 + 56) = 257;
  *(v19 + 64) = _swiftEmptyArrayStorage;
  v285 = (v19 + 64);
  *(v19 + 16) = 2;
  *(v19 + 32) = v312;
  swift_beginAccess();
  *(v19 + 48) = 1;
  swift_beginAccess();
  *(v19 + 52) = 1065353216;
  swift_beginAccess();
  *(v19 + 56) = 0;
  swift_beginAccess();
  *(v19 + 57) = 1;
  sub_1000AB384(&off_10011E160);
  v313 = v20;
  v21 = swift_allocObject();
  *(v21 + 48) = 0;
  *(v21 + 52) = 0;
  *(v21 + 56) = 257;
  *(v21 + 64) = _swiftEmptyArrayStorage;
  v22 = (v21 + 64);
  *(v21 + 16) = 2;
  *(v21 + 32) = v313;
  swift_beginAccess();
  *(v21 + 48) = 0;
  swift_beginAccess();
  *(v21 + 52) = 1065353216;
  swift_beginAccess();
  *(v21 + 56) = 1;
  swift_beginAccess();
  *(v21 + 57) = 1;
  sub_1000AB384(&off_10011E190);
  v314 = v23;
  sub_1000AB384(&off_10011E1C0);
  v308 = v24;
  swift_beginAccess();
  v25 = *v286;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v286 = v25;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v25 = sub_1000A35A4(0, *(v25 + 2) + 1, 1, v25);
    *v286 = v25;
  }

  v28 = *(v25 + 2);
  v27 = *(v25 + 3);
  if (v28 >= v27 >> 1)
  {
    v25 = sub_1000A35A4((v27 > 1), v28 + 1, 1, v25);
  }

  *(v25 + 2) = v28 + 1;
  v29 = &v25[80 * v28];
  *(v29 + 4) = 0x40490FDA44960000;
  *(v29 + 3) = v314;
  *(v29 + 16) = 1071898308;
  *(v29 + 5) = v308;
  *(v29 + 12) = 0x3F63D72C3E4CCCCDLL;
  *v286 = v25;
  swift_endAccess();
  sub_1000AB384(&off_10011E1F0);
  v309 = v30;
  sub_1000AB384(&off_10011E220);
  v306 = v31;
  swift_beginAccess();
  v32 = *v288;
  v33 = swift_isUniquelyReferenced_nonNull_native();
  *v288 = v32;
  if ((v33 & 1) == 0)
  {
    v32 = sub_1000A35A4(0, *(v32 + 2) + 1, 1, v32);
    *v288 = v32;
  }

  v35 = *(v32 + 2);
  v34 = *(v32 + 3);
  if (v35 >= v34 >> 1)
  {
    v32 = sub_1000A35A4((v34 > 1), v35 + 1, 1, v32);
  }

  *(v32 + 2) = v35 + 1;
  v36 = &v32[80 * v35];
  *(v36 + 4) = 0x4042CE8100000000;
  *(v36 + 3) = v309;
  *(v36 + 16) = 1083873825;
  *(v36 + 5) = v306;
  *(v36 + 12) = 0x3FA7AE253E4CCCCDLL;
  *v288 = v32;
  swift_endAccess();
  sub_1000AB384(&off_10011E250);
  v307 = v37;
  sub_1000AB384(&off_10011E280);
  v289 = v38;
  swift_beginAccess();
  v39 = *v322;
  v40 = swift_isUniquelyReferenced_nonNull_native();
  *v322 = v39;
  if ((v40 & 1) == 0)
  {
    v39 = sub_1000A35A4(0, *(v39 + 2) + 1, 1, v39);
    *v322 = v39;
  }

  v42 = *(v39 + 2);
  v41 = *(v39 + 3);
  if (v42 >= v41 >> 1)
  {
    v39 = sub_1000A35A4((v41 > 1), v42 + 1, 1, v39);
  }

  *(v39 + 2) = v42 + 1;
  v43 = &v39[80 * v42];
  *(v43 + 4) = 0x401BEF4645098000;
  *(v43 + 3) = v307;
  *(v43 + 16) = 1083673012;
  *(v43 + 5) = v289;
  *(v43 + 12) = 0x401E148300000000;
  *v322 = v39;
  swift_endAccess();
  sub_1000AB384(&off_10011E2B0);
  v290 = v44;
  sub_1000AB384(&off_10011E2E0);
  v265 = v45;
  swift_beginAccess();
  v46 = *v320;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  *v320 = v46;
  if ((v47 & 1) == 0)
  {
    v46 = sub_1000A35A4(0, *(v46 + 2) + 1, 1, v46);
    *v320 = v46;
  }

  v49 = *(v46 + 2);
  v48 = *(v46 + 3);
  if (v49 >= v48 >> 1)
  {
    v46 = sub_1000A35A4((v48 > 1), v49 + 1, 1, v46);
  }

  *(v46 + 2) = v49 + 1;
  v50 = &v46[80 * v49];
  *(v50 + 4) = 0x40489D7944FA0000;
  *(v50 + 3) = v290;
  *(v50 + 16) = 1081021202;
  *(v50 + 5) = v265;
  *(v50 + 12) = 0x4220000000000000;
  *v320 = v46;
  swift_endAccess();
  sub_1000AB384(&off_10011E310);
  v291 = v51;
  sub_1000AB384(&off_10011E340);
  v266 = v52;
  swift_beginAccess();
  v53 = *v326;
  v54 = swift_isUniquelyReferenced_nonNull_native();
  *v326 = v53;
  if ((v54 & 1) == 0)
  {
    v53 = sub_1000A35A4(0, *(v53 + 2) + 1, 1, v53);
    *v326 = v53;
  }

  v56 = *(v53 + 2);
  v55 = *(v53 + 3);
  if (v56 >= v55 >> 1)
  {
    v53 = sub_1000A35A4((v55 > 1), v56 + 1, 1, v53);
  }

  *(v53 + 2) = v56 + 1;
  v57 = &v53[80 * v56];
  *(v57 + 4) = 0x40197A2F43E28000;
  *(v57 + 3) = v291;
  *(v57 + 16) = 1078027366;
  *(v57 + 5) = v266;
  *(v57 + 12) = 0x404F9DAE3E851EB8;
  *v326 = v53;
  swift_endAccess();
  sub_1000AB384(&off_10011E370);
  v292 = v58;
  sub_1000AB384(&off_10011E3A0);
  v267 = v59;
  swift_beginAccess();
  v60 = *v331;
  v61 = swift_isUniquelyReferenced_nonNull_native();
  *v331 = v60;
  if ((v61 & 1) == 0)
  {
    v60 = sub_1000A35A4(0, *(v60 + 2) + 1, 1, v60);
    *v331 = v60;
  }

  v63 = *(v60 + 2);
  v62 = *(v60 + 3);
  if (v63 >= v62 >> 1)
  {
    v60 = sub_1000A35A4((v62 > 1), v63 + 1, 1, v60);
  }

  *(v60 + 2) = v63 + 1;
  v64 = &v60[80 * v63];
  *(v64 + 4) = 0x4004EC9C00000000;
  *(v64 + 3) = v292;
  *(v64 + 16) = 1084793531;
  *(v64 + 5) = v267;
  *(v64 + 12) = 0x40D6B8563EC28F5CLL;
  *v331 = v60;
  swift_endAccess();
  sub_1000AB384(&off_10011E3D0);
  v293 = v65;
  sub_1000AB384(&off_10011E400);
  v268 = v66;
  swift_beginAccess();
  v67 = *v329;
  v68 = swift_isUniquelyReferenced_nonNull_native();
  *v329 = v67;
  if ((v68 & 1) == 0)
  {
    v67 = sub_1000A35A4(0, *(v67 + 2) + 1, 1, v67);
    *v329 = v67;
  }

  v70 = *(v67 + 2);
  v69 = *(v67 + 3);
  if (v70 >= v69 >> 1)
  {
    v67 = sub_1000A35A4((v69 > 1), v70 + 1, 1, v67);
  }

  *(v67 + 2) = v70 + 1;
  v71 = &v67[80 * v70];
  *(v71 + 4) = 0x40197A2F00000000;
  *(v71 + 3) = v293;
  *(v71 + 16) = 1075112759;
  *(v71 + 5) = v268;
  *(v71 + 12) = 0x3F4A3D603EBB5BD5;
  *v329 = v67;
  swift_endAccess();
  sub_1000AB384(&off_10011E430);
  v294 = v72;
  sub_1000AB384(&off_10011E460);
  v269 = v73;
  swift_beginAccess();
  v74 = *v344;
  v75 = swift_isUniquelyReferenced_nonNull_native();
  *v344 = v74;
  if ((v75 & 1) == 0)
  {
    v74 = sub_1000A35A4(0, *(v74 + 2) + 1, 1, v74);
    *v344 = v74;
  }

  v77 = *(v74 + 2);
  v76 = *(v74 + 3);
  if (v77 >= v76 >> 1)
  {
    v74 = sub_1000A35A4((v76 > 1), v77 + 1, 1, v74);
  }

  *(v74 + 2) = v77 + 1;
  v78 = &v74[80 * v77];
  *(v78 + 4) = 0x4021BE3F00000000;
  *(v78 + 3) = v294;
  *(v78 + 16) = 1084229951;
  *(v78 + 5) = v269;
  *(v78 + 12) = 0x3FECCCDE3EC28F5CLL;
  *v344 = v74;
  swift_endAccess();
  sub_1000AB384(&off_10011E490);
  v295 = v79;
  sub_1000AB384(&off_10011E4C0);
  v270 = v80;
  swift_beginAccess();
  v81 = *v319;
  v82 = swift_isUniquelyReferenced_nonNull_native();
  *v319 = v81;
  if ((v82 & 1) == 0)
  {
    v81 = sub_1000A35A4(0, *(v81 + 2) + 1, 1, v81);
    *v319 = v81;
  }

  v84 = *(v81 + 2);
  v83 = *(v81 + 3);
  if (v84 >= v83 >> 1)
  {
    v81 = sub_1000A35A4((v83 > 1), v84 + 1, 1, v81);
  }

  *(v81 + 2) = v84 + 1;
  v85 = &v81[80 * v84];
  *(v85 + 4) = 0x3C8EFA3500000000;
  *(v85 + 3) = v295;
  *(v85 + 16) = 1077963460;
  *(v85 + 5) = v270;
  *(v85 + 12) = 0x3F65E3763FC51EB8;
  *v319 = v81;
  swift_endAccess();
  sub_1000AB384(&off_10011E4F0);
  v296 = v86;
  sub_1000AB384(&off_10011E520);
  v271 = v87;
  swift_beginAccess();
  v88 = *v285;
  v89 = swift_isUniquelyReferenced_nonNull_native();
  *v285 = v88;
  if ((v89 & 1) == 0)
  {
    v88 = sub_1000A35A4(0, *(v88 + 2) + 1, 1, v88);
    *v285 = v88;
  }

  v91 = *(v88 + 2);
  v90 = *(v88 + 3);
  if (v91 >= v90 >> 1)
  {
    v88 = sub_1000A35A4((v90 > 1), v91 + 1, 1, v88);
  }

  *(v88 + 2) = v91 + 1;
  v92 = &v88[80 * v91];
  *(v92 + 4) = 0x40319ACE467C2066;
  *(v92 + 3) = v296;
  *(v92 + 16) = 1079994098;
  *(v92 + 5) = v271;
  *(v92 + 12) = 0x3F8000003F95C28FLL;
  *v285 = v88;
  swift_endAccess();
  sub_1000AB384(&off_10011E550);
  v297 = v93;
  sub_1000AB384(&off_10011E580);
  v272 = v94;
  swift_beginAccess();
  v95 = *v22;
  v96 = swift_isUniquelyReferenced_nonNull_native();
  *v22 = v95;
  if ((v96 & 1) == 0)
  {
    v95 = sub_1000A35A4(0, *(v95 + 2) + 1, 1, v95);
    *v22 = v95;
  }

  v98 = *(v95 + 2);
  v97 = *(v95 + 3);
  if (v98 >= v97 >> 1)
  {
    v95 = sub_1000A35A4((v97 > 1), v98 + 1, 1, v95);
  }

  *(v95 + 2) = v98 + 1;
  v99 = &v95[80 * v98];
  *(v99 + 4) = 0x3F3793CD4430356ELL;
  *(v99 + 3) = v297;
  *(v99 + 16) = 1083455794;
  *(v99 + 5) = v272;
  *(v99 + 12) = 0x41DCE14800000000;
  *v22 = v95;
  swift_endAccess();
  sub_1000AB384(&off_10011E5B0);
  v273 = v100;
  sub_1000AB384(&off_10011E5E0);
  v254 = v101;
  swift_beginAccess();
  v102 = *v286;
  v103 = swift_isUniquelyReferenced_nonNull_native();
  *v286 = v102;
  if ((v103 & 1) == 0)
  {
    v102 = sub_1000A35A4(0, *(v102 + 2) + 1, 1, v102);
    *v286 = v102;
  }

  v105 = *(v102 + 2);
  v104 = *(v102 + 3);
  if (v105 >= v104 >> 1)
  {
    v102 = sub_1000A35A4((v104 > 1), v105 + 1, 1, v102);
  }

  *(v102 + 2) = v105 + 1;
  v106 = &v102[80 * v105];
  *(v106 + 4) = 0x40490FDA44480000;
  *(v106 + 3) = v273;
  *(v106 + 16) = 1070141402;
  *(v106 + 5) = v254;
  *(v106 + 12) = 0x3F63D72C3E4CCCCDLL;
  *v286 = v102;
  swift_endAccess();
  sub_1000AB384(&off_10011E610);
  v274 = v107;
  sub_1000AB384(&off_10011E640);
  v255 = v108;
  swift_beginAccess();
  v109 = *v288;
  v110 = swift_isUniquelyReferenced_nonNull_native();
  *v288 = v109;
  if ((v110 & 1) == 0)
  {
    v109 = sub_1000A35A4(0, *(v109 + 2) + 1, 1, v109);
    *v288 = v109;
  }

  v112 = *(v109 + 2);
  v111 = *(v109 + 3);
  if (v112 >= v111 >> 1)
  {
    v109 = sub_1000A35A4((v111 > 1), v112 + 1, 1, v109);
  }

  *(v109 + 2) = v112 + 1;
  v113 = &v109[80 * v112];
  *(v113 + 4) = 0x4042CE81442F0000;
  *(v113 + 3) = v274;
  *(v113 + 16) = 1083873825;
  *(v113 + 5) = v255;
  *(v113 + 12) = 0x3FA7AE253E4CCCCDLL;
  *v288 = v109;
  swift_endAccess();
  sub_1000AB384(&off_10011E670);
  v275 = v114;
  sub_1000AB384(&off_10011E6A0);
  v256 = v115;
  swift_beginAccess();
  v116 = *v322;
  v117 = swift_isUniquelyReferenced_nonNull_native();
  *v322 = v116;
  if ((v117 & 1) == 0)
  {
    v116 = sub_1000A35A4(0, *(v116 + 2) + 1, 1, v116);
    *v322 = v116;
  }

  v119 = *(v116 + 2);
  v118 = *(v116 + 3);
  if (v119 >= v118 >> 1)
  {
    v116 = sub_1000A35A4((v118 > 1), v119 + 1, 1, v116);
  }

  *(v116 + 2) = v119 + 1;
  v120 = &v116[80 * v119];
  *(v120 + 4) = 0x401BEF4645098000;
  *(v120 + 3) = v275;
  *(v120 + 16) = 1083673012;
  *(v120 + 5) = v256;
  *(v120 + 12) = 0x401E148300000000;
  *v322 = v116;
  swift_endAccess();
  sub_1000AB384(&off_10011E6D0);
  v276 = v121;
  sub_1000AB384(&off_10011E700);
  v257 = v122;
  swift_beginAccess();
  v123 = *v320;
  v124 = swift_isUniquelyReferenced_nonNull_native();
  *v320 = v123;
  if ((v124 & 1) == 0)
  {
    v123 = sub_1000A35A4(0, *(v123 + 2) + 1, 1, v123);
    *v320 = v123;
  }

  v126 = *(v123 + 2);
  v125 = *(v123 + 3);
  if (v126 >= v125 >> 1)
  {
    v123 = sub_1000A35A4((v125 > 1), v126 + 1, 1, v123);
  }

  *(v123 + 2) = v126 + 1;
  v127 = &v123[80 * v126];
  *(v127 + 4) = 0x40489D79C4610000;
  *(v127 + 3) = v276;
  *(v127 + 16) = 1079674240;
  *(v127 + 5) = v257;
  *(v127 + 12) = 0x4220000000000000;
  *v320 = v123;
  swift_endAccess();
  sub_1000AB384(&off_10011E730);
  v277 = v128;
  swift_beginAccess();
  v129 = *v326;
  v130 = swift_isUniquelyReferenced_nonNull_native();
  *v326 = v129;
  if ((v130 & 1) == 0)
  {
    v129 = sub_1000A35A4(0, *(v129 + 2) + 1, 1, v129);
    *v326 = v129;
  }

  v132 = *(v129 + 2);
  v131 = *(v129 + 3);
  if (v132 >= v131 >> 1)
  {
    v129 = sub_1000A35A4((v131 > 1), v132 + 1, 1, v129);
  }

  *(v129 + 2) = v132 + 1;
  v133 = &v129[80 * v132];
  *(v133 + 4) = 0x40197A2F43050000;
  *(v133 + 3) = xmmword_1000EC900;
  *(v133 + 16) = 1073781512;
  *(v133 + 5) = v277;
  *(v133 + 12) = 0x404F9DAE3E851EB8;
  *v326 = v129;
  swift_endAccess();
  sub_1000AB384(&off_10011E760);
  v278 = v134;
  sub_1000AB384(&off_10011E790);
  v258 = v135;
  swift_beginAccess();
  v136 = *v331;
  v137 = swift_isUniquelyReferenced_nonNull_native();
  *v331 = v136;
  if ((v137 & 1) == 0)
  {
    v136 = sub_1000A35A4(0, *(v136 + 2) + 1, 1, v136);
    *v331 = v136;
  }

  v139 = *(v136 + 2);
  v138 = *(v136 + 3);
  if (v139 >= v138 >> 1)
  {
    v136 = sub_1000A35A4((v138 > 1), v139 + 1, 1, v136);
  }

  *(v136 + 2) = v139 + 1;
  v140 = &v136[80 * v139];
  *(v140 + 4) = 0x4004EC9C43E10000;
  *(v140 + 3) = v278;
  *(v140 + 16) = 1082377768;
  *(v140 + 5) = v258;
  *(v140 + 12) = 0x40D6B8563EC28F5CLL;
  *v331 = v136;
  swift_endAccess();
  sub_1000AB384(&off_10011E7C0);
  v279 = v141;
  sub_1000AB384(&off_10011E7F0);
  v259 = v142;
  swift_beginAccess();
  v143 = *v329;
  v144 = swift_isUniquelyReferenced_nonNull_native();
  *v329 = v143;
  if ((v144 & 1) == 0)
  {
    v143 = sub_1000A35A4(0, *(v143 + 2) + 1, 1, v143);
    *v329 = v143;
  }

  v146 = *(v143 + 2);
  v145 = *(v143 + 3);
  if (v146 >= v145 >> 1)
  {
    v143 = sub_1000A35A4((v145 > 1), v146 + 1, 1, v143);
  }

  *(v143 + 2) = v146 + 1;
  v147 = &v143[80 * v146];
  *(v147 + 4) = 0x40197A2F00000000;
  *(v147 + 3) = v279;
  *(v147 + 16) = 1075112759;
  *(v147 + 5) = v259;
  *(v147 + 12) = 0x3F4A3D603EBB5BD5;
  *v329 = v143;
  swift_endAccess();
  sub_1000AB384(&off_10011E820);
  v280 = v148;
  sub_1000AB384(&off_10011E850);
  v260 = v149;
  swift_beginAccess();
  v150 = *v344;
  v151 = swift_isUniquelyReferenced_nonNull_native();
  *v344 = v150;
  if ((v151 & 1) == 0)
  {
    v150 = sub_1000A35A4(0, *(v150 + 2) + 1, 1, v150);
    *v344 = v150;
  }

  v153 = *(v150 + 2);
  v152 = *(v150 + 3);
  if (v153 >= v152 >> 1)
  {
    v150 = sub_1000A35A4((v152 > 1), v153 + 1, 1, v150);
  }

  *(v150 + 2) = v153 + 1;
  v154 = &v150[80 * v153];
  *(v154 + 4) = 0x4021BE3F00000000;
  *(v154 + 3) = v280;
  *(v154 + 16) = 1084229951;
  *(v154 + 5) = v260;
  *(v154 + 12) = 0x3FECCCDE3EC28F5CLL;
  *v344 = v150;
  swift_endAccess();
  sub_1000AB384(&off_10011E880);
  v281 = v155;
  sub_1000AB384(&off_10011E8B0);
  v261 = v156;
  swift_beginAccess();
  v157 = *v319;
  v158 = swift_isUniquelyReferenced_nonNull_native();
  *v319 = v157;
  if ((v158 & 1) == 0)
  {
    v157 = sub_1000A35A4(0, *(v157 + 2) + 1, 1, v157);
    *v319 = v157;
  }

  v160 = *(v157 + 2);
  v159 = *(v157 + 3);
  if (v160 >= v159 >> 1)
  {
    v157 = sub_1000A35A4((v159 > 1), v160 + 1, 1, v157);
  }

  *(v157 + 2) = v160 + 1;
  v161 = &v157[80 * v160];
  *(v161 + 4) = 0x40490FDA451C4000;
  *(v161 + 3) = v281;
  *(v161 + 16) = 1074084247;
  *(v161 + 5) = v261;
  *(v161 + 12) = 0x3F65E3763EBD70A4;
  *v319 = v157;
  swift_endAccess();
  sub_1000AB384(&off_10011E8E0);
  v282 = v162;
  sub_1000AB384(&off_10011E910);
  v262 = v163;
  swift_beginAccess();
  v164 = *v285;
  v165 = swift_isUniquelyReferenced_nonNull_native();
  *v285 = v164;
  if ((v165 & 1) == 0)
  {
    v164 = sub_1000A35A4(0, *(v164 + 2) + 1, 1, v164);
    *v285 = v164;
  }

  v167 = *(v164 + 2);
  v166 = *(v164 + 3);
  if (v167 >= v166 >> 1)
  {
    v164 = sub_1000A35A4((v166 > 1), v167 + 1, 1, v164);
  }

  *(v164 + 2) = v167 + 1;
  v168 = &v164[80 * v167];
  *(v168 + 4) = 0x40490FDA46BAD600;
  *(v168 + 3) = v282;
  *(v168 + 16) = 1076037070;
  *(v168 + 5) = v262;
  *(v168 + 12) = 0x3F828F753F95C28FLL;
  *v285 = v164;
  swift_endAccess();
  sub_1000AB384(&off_10011E940);
  v283 = v169;
  sub_1000AB384(&off_10011E970);
  v263 = v170;
  swift_beginAccess();
  v171 = *v22;
  v172 = swift_isUniquelyReferenced_nonNull_native();
  *v22 = v171;
  if ((v172 & 1) == 0)
  {
    v171 = sub_1000A35A4(0, *(v171 + 2) + 1, 1, v171);
    *v22 = v171;
  }

  v174 = *(v171 + 2);
  v173 = *(v171 + 3);
  if (v174 >= v173 >> 1)
  {
    v171 = sub_1000A35A4((v173 > 1), v174 + 1, 1, v171);
  }

  *(v171 + 2) = v174 + 1;
  v175 = &v171[80 * v174];
  *(v175 + 4) = 0x400BA057C3FA0000;
  *(v175 + 3) = v283;
  *(v175 + 16) = 1077207371;
  *(v175 + 5) = v263;
  *(v175 + 12) = 0x3F8000003E4CCCCDLL;
  *v22 = v171;
  swift_endAccess();
  sub_1000AB384(&off_10011E9A0);
  v284 = v176;
  sub_1000AB384(&off_10011E9D0);
  v264 = v177;
  swift_beginAccess();
  v178 = *v286;
  v179 = swift_isUniquelyReferenced_nonNull_native();
  *v286 = v178;
  if ((v179 & 1) == 0)
  {
    v178 = sub_1000A35A4(0, *(v178 + 2) + 1, 1, v178);
    *v286 = v178;
  }

  v181 = *(v178 + 2);
  v180 = *(v178 + 3);
  if (v181 >= v180 >> 1)
  {
    v178 = sub_1000A35A4((v180 > 1), v181 + 1, 1, v178);
  }

  *(v178 + 2) = v181 + 1;
  v182 = &v178[80 * v181];
  *(v182 + 4) = 0x40490FDA43C80000;
  *(v182 + 3) = v284;
  *(v182 + 16) = 1070141402;
  *(v182 + 5) = v264;
  *(v182 + 12) = 0x3F63D72C3E4CCCCDLL;
  *v286 = v178;
  swift_endAccess();
  sub_1000AB384(&off_10011EA00);
  v315 = v183;
  sub_1000AB384(&off_10011EA30);
  v287 = v184;
  swift_beginAccess();
  v185 = *v288;
  v186 = swift_isUniquelyReferenced_nonNull_native();
  *v288 = v185;
  if ((v186 & 1) == 0)
  {
    v185 = sub_1000A35A4(0, *(v185 + 2) + 1, 1, v185);
    *v288 = v185;
  }

  v188 = *(v185 + 2);
  v187 = *(v185 + 3);
  if (v188 >= v187 >> 1)
  {
    v185 = sub_1000A35A4((v187 > 1), v188 + 1, 1, v185);
  }

  *(v185 + 2) = v188 + 1;
  v189 = &v185[80 * v188];
  *(v189 + 4) = 0x4042CE8142B40000;
  *(v189 + 3) = v315;
  *(v189 + 16) = 1083873825;
  *(v189 + 5) = v287;
  *(v189 + 12) = 0x3FA7AE253E4CCCCDLL;
  *v288 = v185;
  swift_endAccess();
  sub_1000AB384(&off_10011EA60);
  v316 = v190;
  sub_1000AB384(&off_10011EA90);
  v310 = v191;
  swift_beginAccess();
  v192 = *v322;
  v193 = swift_isUniquelyReferenced_nonNull_native();
  *v322 = v192;
  if ((v193 & 1) == 0)
  {
    v192 = sub_1000A35A4(0, *(v192 + 2) + 1, 1, v192);
    *v322 = v192;
  }

  v195 = *(v192 + 2);
  v194 = *(v192 + 3);
  if (v195 >= v194 >> 1)
  {
    v192 = sub_1000A35A4((v194 > 1), v195 + 1, 1, v192);
  }

  *(v192 + 2) = v195 + 1;
  v196 = &v192[80 * v195];
  *(v196 + 4) = 0x401BEF4644610000;
  *(v196 + 3) = v316;
  *(v196 + 16) = 1083673012;
  *(v196 + 5) = v310;
  *(v196 + 12) = 0x401E148300000000;
  *v322 = v192;
  swift_endAccess();
  sub_1000AB384(&off_10011EAC0);
  v323 = v197;
  sub_1000AB384(&off_10011EAF0);
  v317 = v198;
  swift_beginAccess();
  v199 = *v320;
  v200 = swift_isUniquelyReferenced_nonNull_native();
  *v320 = v199;
  if ((v200 & 1) == 0)
  {
    v199 = sub_1000A35A4(0, *(v199 + 2) + 1, 1, v199);
    *v320 = v199;
  }

  v202 = *(v199 + 2);
  v201 = *(v199 + 3);
  if (v202 >= v201 >> 1)
  {
    v199 = sub_1000A35A4((v201 > 1), v202 + 1, 1, v199);
  }

  *(v199 + 2) = v202 + 1;
  v203 = &v199[80 * v202];
  *(v203 + 4) = 0x40489D7943960000;
  *(v203 + 3) = v323;
  *(v203 + 16) = 1079674240;
  *(v203 + 5) = v317;
  *(v203 + 12) = 0x4220000000000000;
  *v320 = v199;
  swift_endAccess();
  sub_1000AB384(&off_10011EB20);
  v324 = v204;
  sub_1000AB384(&off_10011EB50);
  v321 = v205;
  swift_beginAccess();
  v206 = *v326;
  v207 = swift_isUniquelyReferenced_nonNull_native();
  *v326 = v206;
  if ((v207 & 1) == 0)
  {
    v206 = sub_1000A35A4(0, *(v206 + 2) + 1, 1, v206);
    *v326 = v206;
  }

  v209 = *(v206 + 2);
  v208 = *(v206 + 3);
  if (v209 >= v208 >> 1)
  {
    v206 = sub_1000A35A4((v208 > 1), v209 + 1, 1, v206);
  }

  *(v206 + 2) = v209 + 1;
  v210 = &v206[80 * v209];
  *(v210 + 4) = 0x40490FDA00000000;
  *(v210 + 3) = v324;
  *(v210 + 16) = 1050858016;
  *(v210 + 5) = v321;
  *(v210 + 12) = 0x404F9DAE3F8A3D71;
  *v326 = v206;
  swift_endAccess();
  sub_1000AB384(&off_10011EB80);
  v327 = v211;
  sub_1000AB384(&off_10011EBB0);
  v325 = v212;
  swift_beginAccess();
  v213 = *v331;
  v214 = swift_isUniquelyReferenced_nonNull_native();
  *v331 = v213;
  if ((v214 & 1) == 0)
  {
    v213 = sub_1000A35A4(0, *(v213 + 2) + 1, 1, v213);
    *v331 = v213;
  }

  v216 = *(v213 + 2);
  v215 = *(v213 + 3);
  if (v216 >= v215 >> 1)
  {
    v213 = sub_1000A35A4((v215 > 1), v216 + 1, 1, v213);
  }

  *(v213 + 2) = v216 + 1;
  v217 = &v213[80 * v216];
  *(v217 + 4) = 0x4039A5D100000000;
  *(v217 + 3) = v327;
  *(v217 + 16) = 1080635442;
  *(v217 + 5) = v325;
  *(v217 + 12) = 0x40D6B8563F6B851FLL;
  *v331 = v213;
  swift_endAccess();
  sub_1000AB384(&off_10011EBE0);
  v332 = v218;
  sub_1000AB384(&off_10011EC10);
  v328 = v219;
  swift_beginAccess();
  v220 = *v329;
  v221 = swift_isUniquelyReferenced_nonNull_native();
  *v329 = v220;
  if ((v221 & 1) == 0)
  {
    v220 = sub_1000A35A4(0, *(v220 + 2) + 1, 1, v220);
    *v329 = v220;
  }

  v223 = *(v220 + 2);
  v222 = *(v220 + 3);
  if (v223 >= v222 >> 1)
  {
    v220 = sub_1000A35A4((v222 > 1), v223 + 1, 1, v220);
  }

  *(v220 + 2) = v223 + 1;
  v224 = &v220[80 * v223];
  *(v224 + 4) = 0x40197A2F42480000;
  *(v224 + 3) = v332;
  *(v224 + 16) = 1073781512;
  *(v224 + 5) = v328;
  *(v224 + 12) = 0x3F4A3D603EBB5BD5;
  *v329 = v220;
  swift_endAccess();
  sub_1000AB384(&off_10011EC40);
  v333 = v225;
  sub_1000AB384(&off_10011EC70);
  v330 = v226;
  swift_beginAccess();
  v227 = *v344;
  v228 = swift_isUniquelyReferenced_nonNull_native();
  *v344 = v227;
  if ((v228 & 1) == 0)
  {
    v227 = sub_1000A35A4(0, *(v227 + 2) + 1, 1, v227);
    *v344 = v227;
  }

  v230 = *(v227 + 2);
  v229 = *(v227 + 3);
  if (v230 >= v229 >> 1)
  {
    v227 = sub_1000A35A4((v229 > 1), v230 + 1, 1, v227);
  }

  *(v227 + 2) = v230 + 1;
  v231 = &v227[80 * v230];
  *(v231 + 4) = 0x4004EC9C43160000;
  *(v231 + 3) = v333;
  *(v231 + 16) = 1082377768;
  *(v231 + 5) = v330;
  *(v231 + 12) = 0x3FECCCDE3EC28F5CLL;
  *v344 = v227;
  swift_endAccess();
  sub_1000AB384(&off_10011ECA0);
  v345 = v232;
  sub_1000AB384(&off_10011ECD0);
  v334 = v233;
  swift_beginAccess();
  v234 = *v319;
  v235 = swift_isUniquelyReferenced_nonNull_native();
  *v319 = v234;
  if ((v235 & 1) == 0)
  {
    v234 = sub_1000A35A4(0, *(v234 + 2) + 1, 1, v234);
    *v319 = v234;
  }

  v237 = *(v234 + 2);
  v236 = *(v234 + 3);
  if (v237 >= v236 >> 1)
  {
    v234 = sub_1000A35A4((v236 > 1), v237 + 1, 1, v234);
  }

  *(v234 + 2) = v237 + 1;
  v238 = &v234[80 * v237];
  *(v238 + 4) = 0x40490FDA44098000;
  *(v238 + 3) = v345;
  *(v238 + 16) = 1075738667;
  *(v238 + 5) = v334;
  *(v238 + 12) = 0x3F65E3763EBD70A4;
  *v319 = v234;
  swift_endAccess();
  sub_1000AB384(&off_10011ED00);
  v346 = v239;
  sub_1000AB384(&off_10011ED30);
  v335 = v240;
  swift_beginAccess();
  v241 = *v285;
  v242 = swift_isUniquelyReferenced_nonNull_native();
  *v285 = v241;
  if ((v242 & 1) == 0)
  {
    v241 = sub_1000A35A4(0, *(v241 + 2) + 1, 1, v241);
    *v285 = v241;
  }

  v244 = *(v241 + 2);
  v243 = *(v241 + 3);
  if (v244 >= v243 >> 1)
  {
    v241 = sub_1000A35A4((v243 > 1), v244 + 1, 1, v241);
  }

  *(v241 + 2) = v244 + 1;
  v245 = &v241[80 * v244];
  *(v245 + 4) = 0x40490FDA45FA0000;
  *(v245 + 3) = v346;
  *(v245 + 16) = 1076037070;
  *(v245 + 5) = v335;
  *(v245 + 12) = 0x3F828F753F95C28FLL;
  *v285 = v241;
  swift_endAccess();
  sub_1000AB384(&off_10011ED60);
  v347 = v246;
  sub_1000AB384(&off_10011ED90);
  v336 = v247;
  swift_beginAccess();
  v248 = *v22;
  v249 = swift_isUniquelyReferenced_nonNull_native();
  *v22 = v248;
  if ((v249 & 1) == 0)
  {
    v248 = sub_1000A35A4(0, *(v248 + 2) + 1, 1, v248);
    *v22 = v248;
  }

  v251 = *(v248 + 2);
  v250 = *(v248 + 3);
  if (v251 >= v250 >> 1)
  {
    v248 = sub_1000A35A4((v250 > 1), v251 + 1, 1, v248);
  }

  *(v248 + 2) = v251 + 1;
  v252 = &v248[80 * v251];
  *(v252 + 4) = 0x40060A91C1C80000;
  *(v252 + 3) = v347;
  *(v252 + 16) = 1077207371;
  *(v252 + 5) = v336;
  *(v252 + 12) = 0x41DCE14800000000;
  *(v21 + 64) = v248;
  swift_endAccess();
  sub_1000125FC(&qword_1001303F0, &unk_1000F20F0);
  v253 = swift_allocObject();
  *(v253 + 16) = xmmword_1000F3150;
  *(v253 + 32) = v302;
  *(v253 + 40) = v13;
  *(v253 + 48) = v298;
  *(v253 + 56) = v19;
  *(v253 + 64) = v300;
  *(v253 + 72) = v21;
  *(v253 + 80) = v301;
  *(v253 + 88) = v299;
  *(v253 + 96) = v304;
  *(v253 + 104) = v5;
  *(v253 + 112) = v303;
  swift_beginAccess();
  *(v305 + 144) = v253;
}

void sub_1000E51CC()
{
  sub_1000AB384(&off_10011D050);
  v362 = v0;
  type metadata accessor for ToriLight();
  v1 = swift_allocObject();
  *(v1 + 48) = 0;
  *(v1 + 52) = 0;
  *(v1 + 56) = 257;
  *(v1 + 64) = _swiftEmptyArrayStorage;
  v345 = (v1 + 64);
  *(v1 + 16) = 2;
  *(v1 + 32) = v362;
  swift_beginAccess();
  *(v1 + 48) = 1;
  swift_beginAccess();
  *(v1 + 52) = 1065353216;
  swift_beginAccess();
  *(v1 + 56) = 0;
  swift_beginAccess();
  *(v1 + 57) = 1;
  sub_1000AB384(&off_10011D080);
  v363 = v2;
  v3 = swift_allocObject();
  *(v3 + 48) = 0;
  *(v3 + 52) = 0;
  *(v3 + 56) = 257;
  *(v3 + 64) = _swiftEmptyArrayStorage;
  v279 = (v3 + 64);
  *(v3 + 16) = 2;
  *(v3 + 32) = v363;
  swift_beginAccess();
  *(v3 + 48) = 1;
  swift_beginAccess();
  *(v3 + 52) = 1065353216;
  swift_beginAccess();
  *(v3 + 56) = 0;
  swift_beginAccess();
  v299 = v3;
  *(v3 + 57) = 1;
  sub_1000AB384(&off_10011D0B0);
  v364 = v4;
  v5 = swift_allocObject();
  *(v5 + 48) = 0;
  *(v5 + 52) = 0;
  *(v5 + 56) = 257;
  *(v5 + 64) = _swiftEmptyArrayStorage;
  v281 = (v5 + 64);
  *(v5 + 16) = 2;
  *(v5 + 32) = v364;
  swift_beginAccess();
  *(v5 + 48) = 0;
  swift_beginAccess();
  *(v5 + 52) = 1065353216;
  swift_beginAccess();
  *(v5 + 56) = 1;
  swift_beginAccess();
  v298 = v5;
  *(v5 + 57) = 1;
  sub_1000AB384(&off_10011D0E0);
  v365 = v6;
  v7 = swift_allocObject();
  *(v7 + 48) = 0;
  *(v7 + 52) = 0;
  *(v7 + 56) = 257;
  *(v7 + 64) = _swiftEmptyArrayStorage;
  v352 = (v7 + 64);
  *(v7 + 16) = 2;
  *(v7 + 32) = v365;
  swift_beginAccess();
  *(v7 + 48) = 1;
  swift_beginAccess();
  *(v7 + 52) = 1065353216;
  swift_beginAccess();
  *(v7 + 56) = 1;
  swift_beginAccess();
  v297 = v7;
  *(v7 + 57) = 1;
  sub_1000AB384(&off_10011D110);
  v366 = v8;
  v9 = swift_allocObject();
  *(v9 + 48) = 0;
  *(v9 + 52) = 0;
  *(v9 + 56) = 257;
  *(v9 + 64) = _swiftEmptyArrayStorage;
  v280 = (v9 + 64);
  *(v9 + 16) = 2;
  *(v9 + 32) = v366;
  swift_beginAccess();
  *(v9 + 48) = 1;
  swift_beginAccess();
  *(v9 + 52) = 1065353216;
  swift_beginAccess();
  *(v9 + 56) = 1;
  swift_beginAccess();
  *(v9 + 57) = 1;
  sub_1000AB384(&off_10011D140);
  v367 = v10;
  v11 = swift_allocObject();
  *(v11 + 48) = 0;
  *(v11 + 52) = 0;
  *(v11 + 56) = 257;
  *(v11 + 64) = _swiftEmptyArrayStorage;
  v357 = (v11 + 64);
  *(v11 + 16) = 2;
  *(v11 + 32) = v367;
  swift_beginAccess();
  *(v11 + 48) = 1;
  swift_beginAccess();
  *(v11 + 52) = 1065353216;
  swift_beginAccess();
  *(v11 + 56) = 1;
  swift_beginAccess();
  v296 = v11;
  *(v11 + 57) = 1;
  sub_1000AB384(&off_10011D170);
  v343 = v12;
  v13 = swift_allocObject();
  *(v13 + 48) = 0;
  *(v13 + 52) = 0;
  *(v13 + 56) = 257;
  *(v13 + 64) = _swiftEmptyArrayStorage;
  v368 = (v13 + 64);
  *(v13 + 16) = 2;
  *(v13 + 32) = v343;
  swift_beginAccess();
  *(v13 + 48) = 1;
  swift_beginAccess();
  *(v13 + 52) = 1065353216;
  swift_beginAccess();
  *(v13 + 56) = 1;
  swift_beginAccess();
  v295 = v13;
  *(v13 + 57) = 1;
  sub_1000AB384(&off_10011D1A0);
  v341 = v14;
  v15 = swift_allocObject();
  *(v15 + 48) = 0;
  *(v15 + 52) = 0;
  *(v15 + 56) = 257;
  *(v15 + 64) = _swiftEmptyArrayStorage;
  v344 = (v15 + 64);
  *(v15 + 16) = 2;
  *(v15 + 32) = v341;
  swift_beginAccess();
  *(v15 + 48) = 1;
  swift_beginAccess();
  *(v15 + 52) = 1065353216;
  swift_beginAccess();
  *(v15 + 56) = 1;
  swift_beginAccess();
  v294 = v15;
  *(v15 + 57) = 1;
  sub_1000AB384(&off_10011D1D0);
  v334 = v16;
  v17 = swift_allocObject();
  *(v17 + 48) = 0;
  *(v17 + 52) = 0;
  *(v17 + 56) = 257;
  *(v17 + 64) = _swiftEmptyArrayStorage;
  v342 = (v17 + 64);
  *(v17 + 16) = 2;
  *(v17 + 32) = v334;
  swift_beginAccess();
  *(v17 + 48) = 0;
  swift_beginAccess();
  *(v17 + 52) = 1065353216;
  swift_beginAccess();
  *(v17 + 56) = 1;
  swift_beginAccess();
  v293 = v17;
  *(v17 + 57) = 1;
  sub_1000AB384(&off_10011D200);
  v335 = v18;
  v19 = swift_allocObject();
  *(v19 + 48) = 0;
  *(v19 + 52) = 0;
  *(v19 + 56) = 257;
  *(v19 + 64) = _swiftEmptyArrayStorage;
  v278 = (v19 + 64);
  *(v19 + 16) = 2;
  *(v19 + 32) = v335;
  swift_beginAccess();
  *(v19 + 48) = 1;
  swift_beginAccess();
  *(v19 + 52) = 1065353216;
  swift_beginAccess();
  *(v19 + 56) = 0;
  swift_beginAccess();
  *(v19 + 57) = 1;
  sub_1000AB384(&off_10011D230);
  v336 = v20;
  v21 = swift_allocObject();
  *(v21 + 48) = 0;
  *(v21 + 52) = 0;
  *(v21 + 56) = 257;
  *(v21 + 64) = _swiftEmptyArrayStorage;
  v22 = (v21 + 64);
  *(v21 + 16) = 2;
  *(v21 + 32) = v336;
  swift_beginAccess();
  *(v21 + 48) = 1;
  swift_beginAccess();
  *(v21 + 52) = 1065353216;
  swift_beginAccess();
  *(v21 + 56) = 0;
  swift_beginAccess();
  v292 = v21;
  *(v21 + 57) = 1;
  sub_1000AB384(&off_10011D260);
  v337 = v23;
  sub_1000AB384(&off_10011D290);
  v332 = v24;
  swift_beginAccess();
  v25 = *v279;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v279 = v25;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v25 = sub_1000A35A4(0, *(v25 + 2) + 1, 1, v25);
    *v279 = v25;
  }

  v28 = *(v25 + 2);
  v27 = *(v25 + 3);
  if (v28 >= v27 >> 1)
  {
    v25 = sub_1000A35A4((v27 > 1), v28 + 1, 1, v25);
  }

  *(v25 + 2) = v28 + 1;
  v29 = &v25[80 * v28];
  *(v29 + 4) = 0x40490FDA457A0000;
  *(v29 + 3) = v337;
  *(v29 + 16) = 1071898308;
  *(v29 + 5) = v332;
  *(v29 + 12) = 0x3F63D72C3E4CCCCDLL;
  *v279 = v25;
  swift_endAccess();
  sub_1000AB384(&off_10011D2C0);
  v333 = v30;
  sub_1000AB384(&off_10011D2F0);
  v301 = v31;
  swift_beginAccess();
  v32 = *v280;
  v33 = swift_isUniquelyReferenced_nonNull_native();
  *v280 = v32;
  if ((v33 & 1) == 0)
  {
    v32 = sub_1000A35A4(0, *(v32 + 2) + 1, 1, v32);
    *v280 = v32;
  }

  v35 = *(v32 + 2);
  v34 = *(v32 + 3);
  if (v35 >= v34 >> 1)
  {
    v32 = sub_1000A35A4((v34 > 1), v35 + 1, 1, v32);
  }

  *(v32 + 2) = v35 + 1;
  v36 = &v32[80 * v35];
  *(v36 + 4) = 0x4042CE8100000000;
  *(v36 + 3) = v333;
  *(v36 + 16) = 1083873825;
  *(v36 + 5) = v301;
  *(v36 + 12) = 0x3FA7AE253E4CCCCDLL;
  *v280 = v32;
  swift_endAccess();
  sub_1000AB384(&off_10011D320);
  v302 = v37;
  sub_1000AB384(&off_10011D350);
  v282 = v38;
  swift_beginAccess();
  v39 = *v345;
  v40 = swift_isUniquelyReferenced_nonNull_native();
  *v345 = v39;
  if ((v40 & 1) == 0)
  {
    v39 = sub_1000A35A4(0, *(v39 + 2) + 1, 1, v39);
    *v345 = v39;
  }

  v42 = *(v39 + 2);
  v41 = *(v39 + 3);
  if (v42 >= v41 >> 1)
  {
    v39 = sub_1000A35A4((v41 > 1), v42 + 1, 1, v39);
  }

  *(v39 + 2) = v42 + 1;
  v43 = &v39[80 * v42];
  *(v43 + 4) = 0x4041E9BA45DAC000;
  *(v43 + 3) = v302;
  *(v43 + 16) = 1083673012;
  *(v43 + 5) = v282;
  *(v43 + 12) = 0x401E148300000000;
  *v345 = v39;
  swift_endAccess();
  sub_1000AB384(&off_10011D380);
  v303 = v44;
  sub_1000AB384(&off_10011D3B0);
  v283 = v45;
  swift_beginAccess();
  v46 = *v281;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  *v281 = v46;
  if ((v47 & 1) == 0)
  {
    v46 = sub_1000A35A4(0, *(v46 + 2) + 1, 1, v46);
    *v281 = v46;
  }

  v49 = *(v46 + 2);
  v48 = *(v46 + 3);
  if (v49 >= v48 >> 1)
  {
    v46 = sub_1000A35A4((v48 > 1), v49 + 1, 1, v46);
  }

  *(v46 + 2) = v49 + 1;
  v50 = &v46[80 * v49];
  *(v50 + 4) = 0x40490FDA44960000;
  *(v50 + 3) = v303;
  *(v50 + 16) = 1081552091;
  *(v50 + 5) = v283;
  *(v50 + 12) = 0x4220000000000000;
  *v281 = v46;
  swift_endAccess();
  sub_1000AB384(&off_10011D3E0);
  v304 = v51;
  sub_1000AB384(&off_10011D410);
  v267 = v52;
  swift_beginAccess();
  v53 = *v352;
  v54 = swift_isUniquelyReferenced_nonNull_native();
  *v352 = v53;
  if ((v54 & 1) == 0)
  {
    v53 = sub_1000A35A4(0, *(v53 + 2) + 1, 1, v53);
    *v352 = v53;
  }

  v56 = *(v53 + 2);
  v55 = *(v53 + 3);
  if (v56 >= v55 >> 1)
  {
    v53 = sub_1000A35A4((v55 > 1), v56 + 1, 1, v53);
  }

  *(v53 + 2) = v56 + 1;
  v57 = &v53[80 * v56];
  *(v57 + 4) = 0x40197A2F00000000;
  *(v57 + 3) = v304;
  *(v57 + 16) = 1078027366;
  *(v57 + 5) = v267;
  *(v57 + 12) = 0x3F4A3D603E851EB8;
  *v352 = v53;
  swift_endAccess();
  sub_1000AB384(&off_10011D440);
  v305 = v58;
  sub_1000AB384(&off_10011D470);
  v268 = v59;
  swift_beginAccess();
  v60 = *v357;
  v61 = swift_isUniquelyReferenced_nonNull_native();
  *v357 = v60;
  if ((v61 & 1) == 0)
  {
    v60 = sub_1000A35A4(0, *(v60 + 2) + 1, 1, v60);
    *v357 = v60;
  }

  v63 = *(v60 + 2);
  v62 = *(v60 + 3);
  if (v63 >= v62 >> 1)
  {
    v60 = sub_1000A35A4((v62 > 1), v63 + 1, 1, v60);
  }

  *(v60 + 2) = v63 + 1;
  v64 = &v60[80 * v63];
  *(v64 + 4) = 0x4004EC9C00000000;
  *(v64 + 3) = v305;
  *(v64 + 16) = 1084793531;
  *(v64 + 5) = v268;
  *(v64 + 12) = 0x3FECCCDE3EC28F5CLL;
  *v357 = v60;
  swift_endAccess();
  sub_1000AB384(&off_10011D4A0);
  v306 = v65;
  sub_1000AB384(&off_10011D4D0);
  v269 = v66;
  swift_beginAccess();
  v67 = *v368;
  v68 = swift_isUniquelyReferenced_nonNull_native();
  *v368 = v67;
  if ((v68 & 1) == 0)
  {
    v67 = sub_1000A35A4(0, *(v67 + 2) + 1, 1, v67);
    *v368 = v67;
  }

  v70 = *(v67 + 2);
  v69 = *(v67 + 3);
  if (v70 >= v69 >> 1)
  {
    v67 = sub_1000A35A4((v69 > 1), v70 + 1, 1, v67);
  }

  *(v67 + 2) = v70 + 1;
  v71 = &v67[80 * v70];
  *(v71 + 4) = 0x3C8EFA3500000000;
  *(v71 + 3) = v306;
  *(v71 + 16) = 1077963460;
  *(v71 + 5) = v269;
  *(v71 + 12) = 0x3F65E3763FC51EB8;
  *v368 = v67;
  swift_endAccess();
  sub_1000AB384(&off_10011D500);
  v307 = v72;
  sub_1000AB384(&off_10011D530);
  v270 = v73;
  swift_beginAccess();
  v74 = *v344;
  v75 = swift_isUniquelyReferenced_nonNull_native();
  *v344 = v74;
  if ((v75 & 1) == 0)
  {
    v74 = sub_1000A35A4(0, *(v74 + 2) + 1, 1, v74);
    *v344 = v74;
  }

  v77 = *(v74 + 2);
  v76 = *(v74 + 3);
  if (v77 >= v76 >> 1)
  {
    v74 = sub_1000A35A4((v76 > 1), v77 + 1, 1, v74);
  }

  *(v74 + 2) = v77 + 1;
  v78 = &v74[80 * v77];
  *(v78 + 4) = 0x40319ACE467C2066;
  *(v78 + 3) = v307;
  *(v78 + 16) = 1079994098;
  *(v78 + 5) = v270;
  *(v78 + 12) = 0x3F8000003FA3126FLL;
  *v344 = v74;
  swift_endAccess();
  sub_1000AB384(&off_10011D560);
  v308 = v79;
  sub_1000AB384(&off_10011D590);
  v271 = v80;
  swift_beginAccess();
  v81 = *v342;
  v82 = swift_isUniquelyReferenced_nonNull_native();
  *v342 = v81;
  if ((v82 & 1) == 0)
  {
    v81 = sub_1000A35A4(0, *(v81 + 2) + 1, 1, v81);
    *v342 = v81;
  }

  v84 = *(v81 + 2);
  v83 = *(v81 + 3);
  if (v84 >= v83 >> 1)
  {
    v81 = sub_1000A35A4((v83 > 1), v84 + 1, 1, v81);
  }

  *(v81 + 2) = v84 + 1;
  v85 = &v81[80 * v84];
  *(v85 + 4) = 0x3C8EFA35447A0000;
  *(v85 + 3) = v308;
  *(v85 + 16) = 1079113166;
  *(v85 + 5) = v271;
  *(v85 + 12) = 0x41DCE14800000000;
  *v342 = v81;
  swift_endAccess();
  sub_1000AB384(&off_10011D5C0);
  v309 = v86;
  sub_1000AB384(&off_10011D5F0);
  v272 = v87;
  swift_beginAccess();
  v88 = *v278;
  v89 = swift_isUniquelyReferenced_nonNull_native();
  *v278 = v88;
  if ((v89 & 1) == 0)
  {
    v88 = sub_1000A35A4(0, *(v88 + 2) + 1, 1, v88);
    *v278 = v88;
  }

  v91 = *(v88 + 2);
  v90 = *(v88 + 3);
  if (v91 >= v90 >> 1)
  {
    v88 = sub_1000A35A4((v90 > 1), v91 + 1, 1, v88);
  }

  *(v88 + 2) = v91 + 1;
  v92 = &v88[80 * v91];
  *(v92 + 4) = 0x40197A2F00000000;
  *(v92 + 3) = v309;
  *(v92 + 16) = 1075112759;
  *(v92 + 5) = v272;
  *(v92 + 12) = 0x3F4A3D603EBB5BD5;
  *v278 = v88;
  swift_endAccess();
  sub_1000AB384(&off_10011D620);
  v310 = v93;
  sub_1000AB384(&off_10011D650);
  v273 = v94;
  swift_beginAccess();
  v95 = *v22;
  v96 = swift_isUniquelyReferenced_nonNull_native();
  *v22 = v95;
  if ((v96 & 1) == 0)
  {
    v95 = sub_1000A35A4(0, *(v95 + 2) + 1, 1, v95);
    *v22 = v95;
  }

  v98 = *(v95 + 2);
  v97 = *(v95 + 3);
  if (v98 >= v97 >> 1)
  {
    v95 = sub_1000A35A4((v97 > 1), v98 + 1, 1, v95);
  }

  *(v95 + 2) = v98 + 1;
  v99 = &v95[80 * v98];
  *(v99 + 4) = 0x4021BE3F00000000;
  *(v99 + 3) = v310;
  *(v99 + 16) = 1084229951;
  *(v99 + 5) = v273;
  *(v99 + 12) = 0x3FECCCDE3EC28F5CLL;
  *v22 = v95;
  swift_endAccess();
  sub_1000AB384(&off_10011D680);
  v311 = v100;
  sub_1000AB384(&off_10011D6B0);
  v274 = v101;
  swift_beginAccess();
  v102 = *v279;
  v103 = swift_isUniquelyReferenced_nonNull_native();
  *v279 = v102;
  if ((v103 & 1) == 0)
  {
    v102 = sub_1000A35A4(0, *(v102 + 2) + 1, 1, v102);
    *v279 = v102;
  }

  v105 = *(v102 + 2);
  v104 = *(v102 + 3);
  if (v105 >= v104 >> 1)
  {
    v102 = sub_1000A35A4((v104 > 1), v105 + 1, 1, v102);
  }

  *(v102 + 2) = v105 + 1;
  v106 = &v102[80 * v105];
  *(v106 + 4) = 0x40490FDA457A0000;
  *(v106 + 3) = v311;
  *(v106 + 16) = 1070141402;
  *(v106 + 5) = v274;
  *(v106 + 12) = 0x3F63D72C3E4CCCCDLL;
  *v279 = v102;
  swift_endAccess();
  sub_1000AB384(&off_10011D6E0);
  v312 = v107;
  sub_1000AB384(&off_10011D710);
  v275 = v108;
  swift_beginAccess();
  v109 = *v280;
  v110 = swift_isUniquelyReferenced_nonNull_native();
  *v280 = v109;
  if ((v110 & 1) == 0)
  {
    v109 = sub_1000A35A4(0, *(v109 + 2) + 1, 1, v109);
    *v280 = v109;
  }

  v112 = *(v109 + 2);
  v111 = *(v109 + 3);
  if (v112 >= v111 >> 1)
  {
    v109 = sub_1000A35A4((v111 > 1), v112 + 1, 1, v109);
  }

  *(v109 + 2) = v112 + 1;
  v113 = &v109[80 * v112];
  *(v113 + 4) = 0x4042CE81450FC000;
  *(v113 + 3) = v312;
  *(v113 + 16) = 1083873825;
  *(v113 + 5) = v275;
  *(v113 + 12) = 0x3FA7AE253E4CCCCDLL;
  *v280 = v109;
  swift_endAccess();
  sub_1000AB384(&off_10011D740);
  v313 = v114;
  sub_1000AB384(&off_10011D770);
  v276 = v115;
  swift_beginAccess();
  v116 = *v345;
  v117 = swift_isUniquelyReferenced_nonNull_native();
  *v345 = v116;
  if ((v117 & 1) == 0)
  {
    v116 = sub_1000A35A4(0, *(v116 + 2) + 1, 1, v116);
    *v345 = v116;
  }

  v119 = *(v116 + 2);
  v118 = *(v116 + 3);
  if (v119 >= v118 >> 1)
  {
    v116 = sub_1000A35A4((v118 > 1), v119 + 1, 1, v116);
  }

  *(v116 + 2) = v119 + 1;
  v120 = &v116[80 * v119];
  *(v120 + 4) = 0x4041E9BA45DAC000;
  *(v120 + 3) = v313;
  *(v120 + 16) = 1083673012;
  *(v120 + 5) = v276;
  *(v120 + 12) = 0x401E148300000000;
  *v345 = v116;
  swift_endAccess();
  sub_1000AB384(&off_10011D7A0);
  v314 = v121;
  sub_1000AB384(&off_10011D7D0);
  v315 = vaddq_f32(v314, v122);
  sub_1000AB384(&off_10011D800);
  v277 = v123;
  swift_beginAccess();
  v124 = *v281;
  v125 = swift_isUniquelyReferenced_nonNull_native();
  *v281 = v124;
  if ((v125 & 1) == 0)
  {
    v124 = sub_1000A35A4(0, *(v124 + 2) + 1, 1, v124);
    *v281 = v124;
  }

  v126 = v315;
  v126.i32[3] = 0;
  v128 = *(v124 + 2);
  v127 = *(v124 + 3);
  if (v128 >= v127 >> 1)
  {
    v328 = v126;
    v263 = sub_1000A35A4((v127 > 1), v128 + 1, 1, v124);
    v126 = v328;
    v124 = v263;
  }

  *(v124 + 2) = v128 + 1;
  v129 = &v124[80 * v128];
  *(v129 + 4) = 0x40490FDA447A0000;
  *(v129 + 3) = v126;
  *(v129 + 16) = 1081552091;
  *(v129 + 5) = v277;
  *(v129 + 12) = 0x4220000000000000;
  *v281 = v124;
  swift_endAccess();
  sub_1000AB384(&off_10011D830);
  v316 = v130;
  sub_1000AB384(&off_10011D860);
  v317 = vaddq_f32(v316, v131);
  sub_1000AB384(&off_10011D890);
  v284 = v132;
  swift_beginAccess();
  v133 = *v352;
  v134 = swift_isUniquelyReferenced_nonNull_native();
  *v352 = v133;
  if ((v134 & 1) == 0)
  {
    v133 = sub_1000A35A4(0, *(v133 + 2) + 1, 1, v133);
    *v352 = v133;
  }

  v135 = v317;
  v135.i32[3] = 0;
  v137 = *(v133 + 2);
  v136 = *(v133 + 3);
  if (v137 >= v136 >> 1)
  {
    v329 = v135;
    v264 = sub_1000A35A4((v136 > 1), v137 + 1, 1, v133);
    v135 = v329;
    v133 = v264;
  }

  *(v133 + 2) = v137 + 1;
  v138 = &v133[80 * v137];
  *(v138 + 4) = 0x40197A2E44098000;
  *(v138 + 3) = v135;
  *(v138 + 16) = 1073781512;
  *(v138 + 5) = v284;
  *(v138 + 12) = 0x3F63D6F93E851EB8;
  *v352 = v133;
  swift_endAccess();
  sub_1000AB384(&off_10011D8C0);
  v318 = v139;
  sub_1000AB384(&off_10011D8F0);
  v319 = vaddq_f32(v318, v140);
  sub_1000AB384(&off_10011D920);
  v285 = v141;
  swift_beginAccess();
  v142 = *v357;
  v143 = swift_isUniquelyReferenced_nonNull_native();
  *v357 = v142;
  if ((v143 & 1) == 0)
  {
    v142 = sub_1000A35A4(0, *(v142 + 2) + 1, 1, v142);
    *v357 = v142;
  }

  v144 = v319;
  v144.i32[3] = 0;
  v146 = *(v142 + 2);
  v145 = *(v142 + 3);
  if (v146 >= v145 >> 1)
  {
    v330 = v144;
    v265 = sub_1000A35A4((v145 > 1), v146 + 1, 1, v142);
    v144 = v330;
    v142 = v265;
  }

  *(v142 + 2) = v146 + 1;
  v147 = &v142[80 * v146];
  *(v147 + 4) = 0x4004EC9D44BB8000;
  *(v147 + 3) = v144;
  *(v147 + 16) = 1082377768;
  *(v147 + 5) = v285;
  *(v147 + 12) = 0x400333333EC28F5CLL;
  *v357 = v142;
  swift_endAccess();
  sub_1000AB384(&off_10011D950);
  v320 = v148;
  sub_1000AB384(&off_10011D980);
  v321 = vaddq_f32(v320, v149);
  sub_1000AB384(&off_10011D9B0);
  v286 = v150;
  swift_beginAccess();
  v151 = *v368;
  v152 = swift_isUniquelyReferenced_nonNull_native();
  *v368 = v151;
  if ((v152 & 1) == 0)
  {
    v151 = sub_1000A35A4(0, *(v151 + 2) + 1, 1, v151);
    *v368 = v151;
  }

  v153 = v321;
  v153.i32[3] = 0;
  v155 = *(v151 + 2);
  v154 = *(v151 + 3);
  if (v155 >= v154 >> 1)
  {
    v331 = v153;
    v266 = sub_1000A35A4((v154 > 1), v155 + 1, 1, v151);
    v153 = v331;
    v151 = v266;
  }

  *(v151 + 2) = v155 + 1;
  v156 = &v151[80 * v155];
  *(v156 + 4) = 0x40490FDA44E10000;
  *(v156 + 3) = v153;
  *(v156 + 16) = 1075738667;
  *(v156 + 5) = v286;
  *(v156 + 12) = 0x3F65E3763DCCCCCDLL;
  *v368 = v151;
  swift_endAccess();
  sub_1000AB384(&off_10011D9E0);
  v322 = v157;
  sub_1000AB384(&off_10011DA10);
  v287 = v158;
  swift_beginAccess();
  v159 = *v344;
  v160 = swift_isUniquelyReferenced_nonNull_native();
  *v344 = v159;
  if ((v160 & 1) == 0)
  {
    v159 = sub_1000A35A4(0, *(v159 + 2) + 1, 1, v159);
    *v344 = v159;
  }

  v162 = *(v159 + 2);
  v161 = *(v159 + 3);
  if (v162 >= v161 >> 1)
  {
    v159 = sub_1000A35A4((v161 > 1), v162 + 1, 1, v159);
  }

  *(v159 + 2) = v162 + 1;
  v163 = &v159[80 * v162];
  *(v163 + 4) = 0x40490FDA46596C00;
  *(v163 + 3) = v322;
  *(v163 + 16) = 1076037070;
  *(v163 + 5) = v287;
  *(v163 + 12) = 0x3F828F753FA3126FLL;
  *v344 = v159;
  swift_endAccess();
  sub_1000AB384(&off_10011DA40);
  v323 = v164;
  sub_1000AB384(&off_10011DA70);
  v288 = v165;
  swift_beginAccess();
  v166 = *v342;
  v167 = swift_isUniquelyReferenced_nonNull_native();
  *v342 = v166;
  if ((v167 & 1) == 0)
  {
    v166 = sub_1000A35A4(0, *(v166 + 2) + 1, 1, v166);
    *v342 = v166;
  }

  v169 = *(v166 + 2);
  v168 = *(v166 + 3);
  if (v169 >= v168 >> 1)
  {
    v166 = sub_1000A35A4((v168 > 1), v169 + 1, 1, v166);
  }

  *(v166 + 2) = v169 + 1;
  v170 = &v166[80 * v169];
  *(v170 + 4) = 0x3FF86C5700000000;
  *(v170 + 3) = v323;
  *(v170 + 16) = 1077207371;
  *(v170 + 5) = v288;
  *(v170 + 12) = 0x41DCE14800000000;
  *v342 = v166;
  swift_endAccess();
  sub_1000AB384(&off_10011DAA0);
  v324 = v171;
  sub_1000AB384(&off_10011DAD0);
  v289 = v172;
  swift_beginAccess();
  v173 = *v278;
  v174 = swift_isUniquelyReferenced_nonNull_native();
  *v278 = v173;
  if ((v174 & 1) == 0)
  {
    v173 = sub_1000A35A4(0, *(v173 + 2) + 1, 1, v173);
    *v278 = v173;
  }

  v176 = *(v173 + 2);
  v175 = *(v173 + 3);
  if (v176 >= v175 >> 1)
  {
    v173 = sub_1000A35A4((v175 > 1), v176 + 1, 1, v173);
  }

  *(v173 + 2) = v176 + 1;
  v177 = &v173[80 * v176];
  *(v177 + 4) = 0x40197A2F00000000;
  *(v177 + 3) = v324;
  *(v177 + 16) = 1075112759;
  *(v177 + 5) = v289;
  *(v177 + 12) = 0x3F4A3D603EBB5BD5;
  *v278 = v173;
  swift_endAccess();
  sub_1000AB384(&off_10011DB00);
  v325 = v178;
  sub_1000AB384(&off_10011DB30);
  v290 = v179;
  swift_beginAccess();
  v180 = *v22;
  v181 = swift_isUniquelyReferenced_nonNull_native();
  *v22 = v180;
  if ((v181 & 1) == 0)
  {
    v180 = sub_1000A35A4(0, *(v180 + 2) + 1, 1, v180);
    *v22 = v180;
  }

  v183 = *(v180 + 2);
  v182 = *(v180 + 3);
  if (v183 >= v182 >> 1)
  {
    v180 = sub_1000A35A4((v182 > 1), v183 + 1, 1, v180);
  }

  *(v180 + 2) = v183 + 1;
  v184 = &v180[80 * v183];
  *(v184 + 4) = 0x4021BE3F00000000;
  *(v184 + 3) = v325;
  *(v184 + 16) = 1084229951;
  *(v184 + 5) = v290;
  *(v184 + 12) = 0x3FECCCDE3EC28F5CLL;
  *v22 = v180;
  swift_endAccess();
  sub_1000AB384(&off_10011DB60);
  v326 = v185;
  sub_1000AB384(&off_10011DB90);
  v291 = v186;
  swift_beginAccess();
  v187 = *v345;
  v188 = swift_isUniquelyReferenced_nonNull_native();
  *v345 = v187;
  if ((v188 & 1) == 0)
  {
    v187 = sub_1000A35A4(0, *(v187 + 2) + 1, 1, v187);
    *v345 = v187;
  }

  v190 = *(v187 + 2);
  v189 = *(v187 + 3);
  if (v190 >= v189 >> 1)
  {
    v187 = sub_1000A35A4((v189 > 1), v190 + 1, 1, v187);
  }

  *(v187 + 2) = v190 + 1;
  v191 = &v187[80 * v190];
  *(v191 + 4) = 0x4041E9BA461C4000;
  *(v191 + 3) = v326;
  *(v191 + 16) = 1083673012;
  *(v191 + 5) = v291;
  *(v191 + 12) = 0x401E148300000000;
  *v345 = v187;
  swift_endAccess();
  sub_1000AB384(&off_10011DBC0);
  v346 = v192;
  sub_1000AB384(&off_10011DBF0);
  v327 = v193;
  swift_beginAccess();
  v194 = *v279;
  v195 = swift_isUniquelyReferenced_nonNull_native();
  *v279 = v194;
  if ((v195 & 1) == 0)
  {
    v194 = sub_1000A35A4(0, *(v194 + 2) + 1, 1, v194);
    *v279 = v194;
  }

  v197 = *(v194 + 2);
  v196 = *(v194 + 3);
  if (v197 >= v196 >> 1)
  {
    v194 = sub_1000A35A4((v196 > 1), v197 + 1, 1, v194);
  }

  *(v194 + 2) = v197 + 1;
  v198 = &v194[80 * v197];
  *(v198 + 4) = 0x40490FDA451C4000;
  *(v198 + 3) = v346;
  *(v198 + 16) = 1070141402;
  *(v198 + 5) = v327;
  *(v198 + 12) = 0x3F63D72C3E4CCCCDLL;
  *v279 = v194;
  swift_endAccess();
  sub_1000AB384(&off_10011DC20);
  v347 = v199;
  sub_1000AB384(&off_10011DC50);
  v338 = v200;
  swift_beginAccess();
  v201 = *v280;
  v202 = swift_isUniquelyReferenced_nonNull_native();
  *v280 = v201;
  if ((v202 & 1) == 0)
  {
    v201 = sub_1000A35A4(0, *(v201 + 2) + 1, 1, v201);
    *v280 = v201;
  }

  v204 = *(v201 + 2);
  v203 = *(v201 + 3);
  if (v204 >= v203 >> 1)
  {
    v201 = sub_1000A35A4((v203 > 1), v204 + 1, 1, v201);
  }

  *(v201 + 2) = v204 + 1;
  v205 = &v201[80 * v204];
  *(v205 + 4) = 0x4042CE81442F0000;
  *(v205 + 3) = v347;
  *(v205 + 16) = 1083873825;
  *(v205 + 5) = v338;
  *(v205 + 12) = 0x3FA7AE253E4CCCCDLL;
  *v280 = v201;
  swift_endAccess();
  sub_1000AB384(&off_10011DC80);
  v348 = v206;
  sub_1000AB384(&off_10011DCB0);
  v339 = v207;
  swift_beginAccess();
  v208 = *v281;
  v209 = swift_isUniquelyReferenced_nonNull_native();
  *v281 = v208;
  if ((v209 & 1) == 0)
  {
    v208 = sub_1000A35A4(0, *(v208 + 2) + 1, 1, v208);
    *v281 = v208;
  }

  v211 = *(v208 + 2);
  v210 = *(v208 + 3);
  if (v211 >= v210 >> 1)
  {
    v208 = sub_1000A35A4((v210 > 1), v211 + 1, 1, v208);
  }

  *(v208 + 2) = v211 + 1;
  v212 = &v208[80 * v211];
  *(v212 + 4) = 0x40490FDA43AF0000;
  *(v212 + 3) = v348;
  *(v212 + 16) = 1081552091;
  *(v212 + 5) = v339;
  *(v212 + 12) = 0x4220000000000000;
  *v281 = v208;
  swift_endAccess();
  sub_1000AB384(&off_10011DCE0);
  v349 = v213;
  sub_1000AB384(&off_10011DD10);
  v340 = v214;
  swift_beginAccess();
  v215 = *v352;
  v216 = swift_isUniquelyReferenced_nonNull_native();
  *v352 = v215;
  if ((v216 & 1) == 0)
  {
    v215 = sub_1000A35A4(0, *(v215 + 2) + 1, 1, v215);
    *v352 = v215;
  }

  v218 = *(v215 + 2);
  v217 = *(v215 + 3);
  if (v218 >= v217 >> 1)
  {
    v215 = sub_1000A35A4((v217 > 1), v218 + 1, 1, v215);
  }

  *(v215 + 2) = v218 + 1;
  v219 = &v215[80 * v218];
  *(v219 + 4) = 0x40490FDA00000000;
  *(v219 + 3) = v349;
  *(v219 + 16) = 1050858016;
  *(v219 + 5) = v340;
  *(v219 + 12) = 0x3F4A3D603F89FBE7;
  *v352 = v215;
  swift_endAccess();
  sub_1000AB384(&off_10011DD40);
  v353 = v220;
  sub_1000AB384(&off_10011DD70);
  v350 = v221;
  swift_beginAccess();
  v222 = *v278;
  v223 = swift_isUniquelyReferenced_nonNull_native();
  *v278 = v222;
  if ((v223 & 1) == 0)
  {
    v222 = sub_1000A35A4(0, *(v222 + 2) + 1, 1, v222);
    *v278 = v222;
  }

  v225 = *(v222 + 2);
  v224 = *(v222 + 3);
  if (v225 >= v224 >> 1)
  {
    v222 = sub_1000A35A4((v224 > 1), v225 + 1, 1, v222);
  }

  *(v222 + 2) = v225 + 1;
  v226 = &v222[80 * v225];
  *(v226 + 4) = 0x40197A2F437A0000;
  *(v226 + 3) = v353;
  *(v226 + 16) = 1073781512;
  *(v226 + 5) = v350;
  *(v226 + 12) = 0x3F4A3D603EBB5BD5;
  *v278 = v222;
  swift_endAccess();
  sub_1000AB384(&off_10011DDA0);
  v354 = v227;
  sub_1000AB384(&off_10011DDD0);
  v351 = v228;
  swift_beginAccess();
  v229 = *v357;
  v230 = swift_isUniquelyReferenced_nonNull_native();
  *v357 = v229;
  if ((v230 & 1) == 0)
  {
    v229 = sub_1000A35A4(0, *(v229 + 2) + 1, 1, v229);
    *v357 = v229;
  }

  v232 = *(v229 + 2);
  v231 = *(v229 + 3);
  if (v232 >= v231 >> 1)
  {
    v229 = sub_1000A35A4((v231 > 1), v232 + 1, 1, v229);
  }

  *(v229 + 2) = v232 + 1;
  v233 = &v229[80 * v232];
  *(v233 + 4) = 0x3FF6C88300000000;
  *(v233 + 3) = v354;
  *(v233 + 16) = 1080635406;
  *(v233 + 5) = v351;
  *(v233 + 12) = 0x3FECCCDE3EC28F5CLL;
  *v357 = v229;
  swift_endAccess();
  sub_1000AB384(&off_10011DE00);
  v358 = v234;
  sub_1000AB384(&off_10011DE30);
  v355 = v235;
  swift_beginAccess();
  v236 = *v22;
  v237 = swift_isUniquelyReferenced_nonNull_native();
  *v22 = v236;
  if ((v237 & 1) == 0)
  {
    v236 = sub_1000A35A4(0, *(v236 + 2) + 1, 1, v236);
    *v22 = v236;
  }

  v239 = *(v236 + 2);
  v238 = *(v236 + 3);
  if (v239 >= v238 >> 1)
  {
    v236 = sub_1000A35A4((v238 > 1), v239 + 1, 1, v236);
  }

  *(v236 + 2) = v239 + 1;
  v240 = &v236[80 * v239];
  *(v240 + 4) = 0x4004EC9C43480000;
  *(v240 + 3) = v358;
  *(v240 + 16) = 1082377768;
  *(v240 + 5) = v355;
  *(v240 + 12) = 0x3FECCCDE3EC28F5CLL;
  *v22 = v236;
  swift_endAccess();
  sub_1000AB384(&off_10011DE60);
  v359 = v241;
  sub_1000AB384(&off_10011DE90);
  v356 = v242;
  swift_beginAccess();
  v243 = *v368;
  v244 = swift_isUniquelyReferenced_nonNull_native();
  *v368 = v243;
  if ((v244 & 1) == 0)
  {
    v243 = sub_1000A35A4(0, *(v243 + 2) + 1, 1, v243);
    *v368 = v243;
  }

  v246 = *(v243 + 2);
  v245 = *(v243 + 3);
  if (v246 >= v245 >> 1)
  {
    v243 = sub_1000A35A4((v245 > 1), v246 + 1, 1, v243);
  }

  *(v243 + 2) = v246 + 1;
  v247 = &v243[80 * v246];
  *(v247 + 4) = 0x40490FDA44C80000;
  *(v247 + 3) = v359;
  *(v247 + 16) = 1075738667;
  *(v247 + 5) = v356;
  *(v247 + 12) = 0x3F65E37600000000;
  *v368 = v243;
  swift_endAccess();
  sub_1000AB384(&off_10011DEC0);
  v369 = v248;
  sub_1000AB384(&off_10011DEF0);
  v360 = v249;
  swift_beginAccess();
  v250 = *v344;
  v251 = swift_isUniquelyReferenced_nonNull_native();
  *v344 = v250;
  if ((v251 & 1) == 0)
  {
    v250 = sub_1000A35A4(0, *(v250 + 2) + 1, 1, v250);
    *v344 = v250;
  }

  v253 = *(v250 + 2);
  v252 = *(v250 + 3);
  if (v253 >= v252 >> 1)
  {
    v250 = sub_1000A35A4((v252 > 1), v253 + 1, 1, v250);
  }

  *(v250 + 2) = v253 + 1;
  v254 = &v250[80 * v253];
  *(v254 + 4) = 0x40490FDA45FA0000;
  *(v254 + 3) = v369;
  *(v254 + 16) = 1076037070;
  *(v254 + 5) = v360;
  *(v254 + 12) = 0x3F828F753FA3126FLL;
  *v344 = v250;
  swift_endAccess();
  sub_1000AB384(&off_10011DF20);
  v370 = v255;
  sub_1000AB384(&off_10011DF50);
  v361 = v256;
  swift_beginAccess();
  v257 = *v342;
  v258 = swift_isUniquelyReferenced_nonNull_native();
  *v342 = v257;
  if ((v258 & 1) == 0)
  {
    v257 = sub_1000A35A4(0, *(v257 + 2) + 1, 1, v257);
    *v342 = v257;
  }

  v260 = *(v257 + 2);
  v259 = *(v257 + 3);
  if (v260 >= v259 >> 1)
  {
    v257 = sub_1000A35A4((v259 > 1), v260 + 1, 1, v257);
  }

  *(v257 + 2) = v260 + 1;
  v261 = &v257[80 * v260];
  *(v261 + 4) = 0x3FF86C57C3160000;
  *(v261 + 3) = v370;
  *(v261 + 16) = 1077207371;
  *(v261 + 5) = v361;
  *(v261 + 12) = 0x41DCE14800000000;
  *(v293 + 64) = v257;
  swift_endAccess();
  sub_1000125FC(&qword_1001303F0, &unk_1000F20F0);
  v262 = swift_allocObject();
  *(v262 + 16) = xmmword_1000F3150;
  *(v262 + 32) = v297;
  *(v262 + 40) = v19;
  *(v262 + 48) = v295;
  *(v262 + 56) = v294;
  *(v262 + 64) = v293;
  *(v262 + 72) = v296;
  *(v262 + 80) = v292;
  *(v262 + 88) = v1;
  *(v262 + 96) = v298;
  *(v262 + 104) = v299;
  *(v262 + 112) = v9;
  swift_beginAccess();
  *(v300 + 144) = v262;
}

size_t sub_1000E7994(CGImage *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v67 = a6;
  v65 = a1;
  v7 = sub_1000E93B4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (&v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v11);
  v13 = (&v55 - v12);
  v14 = [objc_opt_self() mainBundle];
  v64 = a3;
  v15 = sub_1000E98E4();
  v16 = sub_1000E98E4();
  v17 = [v14 URLForResource:v15 withExtension:v16];

  if (!v17)
  {
    sub_1000AC378();
    swift_allocError();
    *v49 = 1;
    swift_willThrow();
    return v10;
  }

  sub_1000E9364();

  (*(v8 + 32))(v13, v10, v7);
  v10 = v13;
  sub_1000E9384();
  v18 = sub_1000E98E4();

  v19 = CFURLCreateWithFileSystemPath(kCFAllocatorDefault, v18, kCFURLPOSIXPathStyle, 0);
  v20 = v13;
  if (!v19)
  {
    goto LABEL_21;
  }

  v21 = v19;
  v22 = CGImageSourceCreateWithURL(v19, 0);
  if (!v22)
  {
    v10 = v21;
LABEL_20:

LABEL_21:
    sub_1000AC378();
    swift_allocError();
    *v50 = 1;
    swift_willThrow();

LABEL_22:
    (*(v8 + 8))(v20, v7);
    return v10;
  }

  v10 = v22;
  ImageAtIndex = CGImageSourceCreateImageAtIndex(v22, 0, 0);
  if (!ImageAtIndex)
  {

    goto LABEL_20;
  }

  v24 = ImageAtIndex;
  v25 = CGColorSpaceCreateWithName(kCGColorSpaceExtendedLinearSRGB);
  if (!v25)
  {
    sub_1000AC378();
    swift_allocError();
    *v51 = 1;
    swift_willThrow();

    goto LABEL_22;
  }

  v62 = v7;
  v63 = v25;
  v59 = v10;
  v60 = v8;
  v61 = v20;
  Width = CGImageGetWidth(v24);
  Height = CGImageGetHeight(v24);
  BitsPerComponent = CGImageGetBitsPerComponent(v24);
  result = CGImageGetWidth(v24);
  if ((result + 0x4000000000000000) < 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  v30 = v67;
  v31 = 2 * result * v67;
  if (((2 * result) * v67) >> 64 != v31 >> 63)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v32 = BitsPerComponent;
  v10 = v63;
  v33 = sub_1000E8700(Width, Height, v32, v31, v63, 0x1105u);
  if (!v33)
  {
    sub_1000AC378();
    swift_allocError();
    *v52 = 1;
    swift_willThrow();

LABEL_28:
    (*(v60 + 8))(v61, v62);
    return v10;
  }

  v34 = v33;
  CGImageGetWidth(v24);
  CGImageGetHeight(v24);
  v10 = v34;
  sub_1000E9B74();
  Data = CGBitmapContextGetData(v34);
  v36 = v62;
  if (!Data)
  {
    sub_1000AC378();
    swift_allocError();
    *v53 = 1;
    swift_willThrow();

    (*(v60 + 8))(v61, v36);
    return v10;
  }

  v37 = Data;
  v58 = v10;
  v38 = [objc_allocWithZone(MTLTextureDescriptor) init];
  [v38 setTextureType:2];
  [v38 setPixelFormat:115];
  [v38 setWidth:CGImageGetWidth(v24)];
  [v38 setHeight:CGImageGetHeight(v24)];
  [v38 setUsage:1];
  v39 = [(CGImage *)v65 newTextureWithDescriptor:v38];
  if (!v39)
  {
    sub_1000AC378();
    v10 = v24;
    swift_allocError();
    *v54 = 1;
    swift_willThrow();

    goto LABEL_28;
  }

  v10 = v39;
  v57 = v37;
  v65 = v24;
  v40 = sub_1000E98E4();
  [(CGColorSpace *)v10 setLabel:v40];

  v64 = [v38 width];
  v56 = [v38 height];
  v41 = v38;
  result = [v38 width];
  if ((result + 0x4000000000000000) < 0)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v42 = 2 * result * v30;
  if (((2 * result) * v30) >> 64 != v42 >> 63)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v43 = [v38 width];
  result = [v38 height];
  v44 = v43 * result;
  if ((v43 * result) >> 64 != (v43 * result) >> 63)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v46 = v61;
  v45 = v62;
  v47 = v60;
  v48 = v63;
  if (v44 + 0x4000000000000000 < 0)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if ((2 * v44 * v67) >> 64 == (2 * v44 * v67) >> 63)
  {
    memset(v66, 0, 24);
    v66[3] = v64;
    v66[4] = v56;
    v66[5] = 1;
    [(CGColorSpace *)v10 replaceRegion:v66 mipmapLevel:0 slice:0 withBytes:v57 bytesPerRow:v42 bytesPerImage:?];

    (*(v47 + 8))(v46, v45);
    return v10;
  }

LABEL_35:
  __break(1u);
  return result;
}

void sub_1000E809C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v59 = a7;
  v60 = a8;
  v61 = a1;
  v63 = a6;
  v8 = sub_1000E93B4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v51 - v13;
  v15 = [objc_opt_self() mainBundle];
  v16 = sub_1000E98E4();
  v17 = sub_1000E98E4();
  v18 = [v15 URLForResource:v16 withExtension:v17];

  if (!v18)
  {
    sub_1000AC378();
    swift_allocError();
    *v46 = 1;
    swift_willThrow();
    return;
  }

  sub_1000E9364();

  (*(v9 + 32))(v14, v11, v8);
  sub_1000E9384();
  v19 = sub_1000E98E4();

  v20 = CFURLCreateWithFileSystemPath(kCFAllocatorDefault, v19, kCFURLPOSIXPathStyle, 0);
  if (!v20)
  {
    goto LABEL_25;
  }

  v21 = v20;
  v22 = CGImageSourceCreateWithURL(v20, 0);
  if (!v22)
  {
LABEL_24:

LABEL_25:
    sub_1000AC378();
    swift_allocError();
    *v47 = 1;
    swift_willThrow();

    (*(v9 + 8))(v14, v8);
    return;
  }

  v23 = v22;
  ImageAtIndex = CGImageSourceCreateImageAtIndex(v22, 0, 0);
  if (!ImageAtIndex)
  {
    v25 = v23;
LABEL_23:

    v21 = v25;
    goto LABEL_24;
  }

  v25 = ImageAtIndex;
  v58 = CGColorSpaceCreateWithName(kCGColorSpaceExtendedLinearDisplayP3);
  if (!v58)
  {

    v21 = v23;
    goto LABEL_23;
  }

  v54 = v23;
  v55 = v14;
  v53 = v9;
  v56 = v8;
  v26 = CGImageGetBitsPerComponent(v25) / 8;
  if (CGImageGetBitsPerComponent(v25) == 16)
  {
    v27 = 4357;
  }

  else
  {
    v27 = 8453;
  }

  LODWORD(v57) = v27;
  Width = CGImageGetWidth(v25);
  Height = CGImageGetHeight(v25);
  BitsPerComponent = CGImageGetBitsPerComponent(v25);
  v31 = CGImageGetWidth(v25);
  v32 = v31 * v26;
  if ((v31 * v26) >> 64 != (v31 * v26) >> 63)
  {
    __break(1u);
    goto LABEL_31;
  }

  v33 = v26;
  v34 = v63;
  v35 = v58;
  if ((v32 - 0x2000000000000000) >> 62 != 3)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v36 = sub_1000E8700(Width, Height, BitsPerComponent, 4 * v32, v58, v57);
  if (!v36)
  {
    sub_1000AC378();
    swift_allocError();
    *v48 = 1;
    swift_willThrow();

LABEL_29:
    (*(v53 + 8))(v55, v56);
    return;
  }

  v37 = v36;
  CGImageGetWidth(v25);
  CGImageGetHeight(v25);
  sub_1000E9B74();
  Data = CGBitmapContextGetData(v37);
  if (!Data)
  {
    sub_1000AC378();
    swift_allocError();
    *v49 = 1;
    swift_willThrow();

    goto LABEL_29;
  }

  v52 = Data;
  v57 = v37;
  v39 = [objc_allocWithZone(MTLTextureDescriptor) init];
  [v39 setTextureType:7];
  [v39 setPixelFormat:115];
  [v39 setWidth:v34];
  [v39 setHeight:v34];
  [v39 setDepth:v34];
  [v39 setUsage:1];
  v40 = [v61 newTextureWithDescriptor:v39];
  if (!v40)
  {
    sub_1000AC378();
    swift_allocError();
    *v50 = 1;
    swift_willThrow();

    goto LABEL_29;
  }

  v41 = v40;
  v42 = sub_1000E98E4();
  [v41 setLabel:v42];

  v43 = v34 * v33;
  if ((v34 * v33) >> 64 != (v34 * v33) >> 63)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if ((v43 - 0x2000000000000000) >> 62 != 3)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v44 = v34 * v34;
  if ((v34 * v34) >> 64 != (v34 * v34) >> 63)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v45 = v44 * v33;
  if ((v44 * v33) >> 64 == (v44 * v33) >> 63)
  {
    if ((v45 - 0x2000000000000000) >> 62 == 3)
    {
      memset(v62, 0, 24);
      v62[3] = v34;
      v62[4] = v34;
      v62[5] = v34;
      [v41 replaceRegion:v62 mipmapLevel:0 slice:0 withBytes:v52 bytesPerRow:4 * v43 bytesPerImage:4 * v45];

      (*(v53 + 8))(v55, v56);
      return;
    }

    goto LABEL_36;
  }

LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
}

uint64_t sub_1000E8720()
{
  v0 = sub_1000E96A4();
  sub_100011C54(v0, qword_10013DD28);
  sub_100007488(v0, qword_10013DD28);
  return sub_1000E9694();
}

uint64_t sub_1000E87A8()
{
  v0 = sub_1000E96A4();
  sub_100011C54(v0, qword_10013DD40);
  sub_100007488(v0, qword_10013DD40);
  return sub_1000E9694();
}

uint64_t sub_1000E8830()
{
  v0 = sub_1000E96A4();
  sub_100011C54(v0, qword_10013DD58);
  sub_100007488(v0, qword_10013DD58);
  return sub_1000E9694();
}

uint64_t sub_1000E88E0()
{
  v0 = sub_1000E96A4();
  sub_100011C54(v0, qword_10013DD88);
  sub_100007488(v0, qword_10013DD88);
  return sub_1000E9694();
}

uint64_t sub_1000E8968()
{
  v0 = sub_1000E96A4();
  sub_100011C54(v0, qword_10013DDA0);
  sub_100007488(v0, qword_10013DDA0);
  return sub_1000E9694();
}

uint64_t sub_1000E89F0()
{
  v0 = sub_1000E96A4();
  sub_100011C54(v0, qword_10013DDB8);
  sub_100007488(v0, qword_10013DDB8);
  return sub_1000E9694();
}

uint64_t sub_1000E8B6C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1000E96A4();
  sub_100011C54(v5, a2);
  sub_100007488(v5, a2);
  return sub_1000E9694();
}

uint64_t sub_1000E8BF0@<X0>(uint64_t *a1@<X8>)
{
  sub_1000E9864();
  swift_allocObject();
  sub_1000E9874();
  sub_1000E9834();
  swift_allocObject();

  sub_1000E9844();
  sub_1000125FC(&qword_100133E30, &unk_1000F6200);
  sub_1000E95C4();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1000EC880;
  sub_1000E908C(&qword_100133E38, &type metadata accessor for PRRenderingConfiguration, &protocol conformance descriptor for PRRenderingConfiguration);

  sub_1000E95B4();
  sub_1000E908C(&qword_100133E40, &type metadata accessor for PREditingConfiguration, &protocol conformance descriptor for PREditingConfiguration);

  sub_1000E95B4();

  *a1 = v2;
  return result;
}

id sub_1000E8E4C(uint64_t (*a1)(void))
{
  v1 = objc_allocWithZone(a1(0));

  return [v1 init];
}

uint64_t sub_1000E8E8C()
{
  [objc_allocWithZone(type metadata accessor for MercuryPosterUpdater()) init];
  sub_1000125FC(&qword_100133E20, &unk_1000F6190);
  swift_allocObject();
  sub_1000E9854();
  sub_1000E90D4(&qword_100133E28, &protocol conformance descriptor for PRProviderConfiguration<A>);
  sub_1000E9634();
}

int main(int argc, const char **argv, const char **envp)
{
  sub_1000E8FF0();
  sub_1000E90D4(&qword_100133E18, &protocol conformance descriptor for PRProviderConfiguration<A>);
  sub_1000E9614();
  return 0;
}

unint64_t sub_1000E8FF0()
{
  result = qword_100133E10;
  if (!qword_100133E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133E10);
  }

  return result;
}

uint64_t sub_1000E908C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000E90D4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_100019048(&qword_100133E20, &unk_1000F6190);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

simd_float2x2 __invert_f2(simd_float2x2 a1)
{
  v3 = ___invert_f2(a1);
  v2 = v3.columns[1];
  v1 = v3.columns[0];
  result.columns[1] = v2;
  result.columns[0] = v1;
  return result;
}

__float2 __sincosf_stret(float a1)
{
  v3 = ___sincosf_stret(a1);
  cosval = v3.__cosval;
  sinval = v3.__sinval;
  result.__cosval = cosval;
  result.__sinval = sinval;
  return result;
}