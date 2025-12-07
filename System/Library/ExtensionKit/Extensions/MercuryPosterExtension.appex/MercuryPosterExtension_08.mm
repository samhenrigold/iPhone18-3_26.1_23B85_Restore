Swift::Int sub_1000AFF44(uint64_t a1)
{
  sub_1000EA024();
  sub_1000E9974();

  return sub_1000EA064();
}

unint64_t sub_1000AFF9C@<X0>(Swift::String *a1@<X0>, MercuryPosterExtension::FloconLook_optional *a2@<X8>)
{
  result = _s22MercuryPosterExtension10FloconLookO8rawValueACSgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

uint64_t sub_1000AFFF8()
{
  v0 = MobileGestalt_get_current_device();
  v1 = MobileGestalt_copy_deviceEnclosureColor();

  if (!v1)
  {
    return 1;
  }

  v3 = sub_1000E99B4();
  v4 = v2;
  if (v3 == 57 && v2 == 0xE100000000000000 || (sub_1000E9F74() & 1) != 0)
  {

    return 0;
  }

  if (v3 == 50 && v4 == 0xE100000000000000 || (sub_1000E9F74() & 1) != 0)
  {

    return 1;
  }

  if (v3 == 56 && v4 == 0xE100000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1000E9F74();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 1;
    }
  }
}

unint64_t _s22MercuryPosterExtension10FloconLookO8rawValueACSgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10011F660;
  v6._object = a2;
  v4 = sub_1000E9EC4(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_1000B0168()
{
  result = qword_100132C90;
  if (!qword_100132C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100132C90);
  }

  return result;
}

unint64_t sub_1000B01C0()
{
  result = qword_100132C98;
  if (!qword_100132C98)
  {
    sub_100019048(&unk_100132CA0, &qword_1000F4030);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100132C98);
  }

  return result;
}

uint64_t sub_1000B0234()
{
  sub_1000125FC(&unk_100130390, &unk_1000EF090);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000EDAA0;
  v1 = MTKTextureLoaderOptionGenerateMipmaps;
  *(inited + 32) = MTKTextureLoaderOptionGenerateMipmaps;
  *(inited + 40) = 0;
  v2 = MTKTextureLoaderOptionSRGB;
  *(inited + 64) = &type metadata for Bool;
  *(inited + 72) = v2;
  *(inited + 80) = 0;
  v3 = MTKTextureLoaderOptionTextureUsage;
  *(inited + 104) = &type metadata for Bool;
  *(inited + 112) = v3;
  *(inited + 120) = 1;
  v4 = MTKTextureLoaderOptionTextureStorageMode;
  *(inited + 144) = &type metadata for UInt;
  *(inited + 152) = v4;
  *(inited + 184) = &type metadata for UInt;
  *(inited + 160) = 2;
  v5 = v1;
  v6 = v2;
  v7 = v3;
  v8 = v4;
  v9 = sub_1000A0EDC(inited);
  swift_setDeallocating();
  sub_1000125FC(&unk_100130CE0, &qword_1000ED5E0);
  result = swift_arrayDestroy();
  qword_100132CB0 = v9;
  return result;
}

id sub_1000B0354(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5, uint64_t a6)
{
  v40 = a6;
  v41 = a5;
  v10 = sub_1000E93B4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v37 - v15;
  v17 = [objc_opt_self() mainBundle];
  v38 = a2;
  v18 = sub_1000E98E4();
  v39._countAndFlagsBits = a3;
  v39._object = a4;
  v19 = sub_1000E98E4();
  v20 = [v17 URLForResource:v18 withExtension:v19];

  if (v20)
  {
    sub_1000E9364();

    (*(v11 + 32))(v16, v13, v10);
    sub_1000E9344(v21);
    v23 = v22;
    type metadata accessor for Option(0);
    sub_1000A1E1C(&qword_10012F9E0, type metadata accessor for Option, &unk_1000ECD38);
    isa = sub_1000E9894().super.isa;
    v42 = 0;
    v25 = [v41 newTextureWithContentsOfURL:v23 options:isa error:&v42];

    if (v25)
    {
      v26 = *(v11 + 8);
      v27 = v42;
      v26(v16, v10);
    }

    else
    {
      v35 = v42;
      sub_1000E92E4();

      swift_willThrow();
      (*(v11 + 8))(v16, v10);
    }
  }

  else
  {
    sub_1000125FC(&unk_100131D60, &unk_1000F43A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000EC870;
    *(inited + 32) = sub_1000E9914();
    *(inited + 40) = v29;
    v42 = 0;
    v43 = 0xE000000000000000;
    sub_1000E9D64(24);

    v42 = 0xD000000000000013;
    v43 = 0x80000001000F94D0;
    v44._countAndFlagsBits = a1;
    v44._object = v38;
    sub_1000E99A4(v44);
    v45._countAndFlagsBits = 46;
    v45._object = 0xE100000000000000;
    sub_1000E99A4(v45);
    sub_1000E99A4(v39);
    v30 = v42;
    v31 = v43;
    *(inited + 72) = &type metadata for String;
    *(inited + 48) = v30;
    *(inited + 56) = v31;
    v25 = sub_1000A12F0(inited);
    swift_setDeallocating();
    sub_1000B8900(inited + 32);
    v32 = objc_allocWithZone(NSError);
    v33 = sub_1000E98E4();
    v34 = sub_1000E9894().super.isa;

    [v32 initWithDomain:v33 code:404 userInfo:v34];

    swift_willThrow();
  }

  return v25;
}

Swift::Int sub_1000B07B0()
{
  v1 = *v0;
  sub_1000EA024();
  sub_1000EA054(dword_1000F40F0[v1]);
  return sub_1000EA064();
}

Swift::Int sub_1000B0838(uint64_t a1)
{
  v2 = *v1;
  sub_1000EA024();
  sub_1000EA054(dword_1000F40F0[v2]);
  return sub_1000EA064();
}

uint64_t sub_1000B0884@<X0>(unsigned int *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000B8A74(*a1);
  *a2 = result;
  return result;
}

float32x2_t sub_1000B08C8(double a1, double a2, double a3, int32x2_t a4, int32x2_t a5)
{
  if (*&a1 <= 0.7854)
  {
    if (*&a1 > -0.7854)
    {
      v10 = *&a1;
    }

    else
    {
      v10 = -0.7854;
    }

    v11 = *(&a1 + 1);
    a4.i32[0] = 1061752795;
    v9 = COERCE_DOUBLE(vdup_lane_s32(a4, 0));
    *&v9 = v10;
    if (v11 <= 0.7854)
    {
      if (v11 <= -0.7854)
      {
        v11 = -0.7854;
      }

      *(&v9 + 1) = v11;
    }
  }

  else
  {
    v6 = COERCE_DOUBLE(vdup_n_s32(0x3F490FDBu));
    v7 = -0.7854;
    if (*(&a1 + 1) > -0.7854)
    {
      v7 = *(&a1 + 1);
    }

    a5.i32[0] = 1061752795;
    LODWORD(v8) = vdup_lane_s32(a5, 0).u32[0];
    *(&v8 + 1) = v7;
    if (*(&a1 + 1) <= 0.7854)
    {
      v9 = v8;
    }

    else
    {
      v9 = v6;
    }
  }

  v12 = vmla_f32(*v5, vdup_n_s32(0x3EB33333u), vsub_f32(vdiv_f32(vmul_f32(*&v9, vdup_n_s32(0x40278D36u)), vdup_n_s32(0x3F490FDBu)), *v5));
  v13 = vmla_f32(v5[1], vdup_n_s32(0x3D23D70Au), vsub_f32(v12, v5[1]));
  v5[1] = v13;
  result = vsub_f32(v12, v13);
  *v5 = result;
  return result;
}

uint64_t sub_1000B09C4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = v7;
  v9 = v6;
  *(v6 + 16) = 1065353216;
  *(v6 + 24) = 0;
  v12 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v13) = 1050253722;
  LODWORD(v14) = 1.0;
  LODWORD(v15) = 1050253722;
  *(v6 + 32) = [v12 initWithControlPoints:v13 :v15 :0.0 :v14];
  v16 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v17) = 1058642330;
  LODWORD(v18) = 1036831949;
  LODWORD(v19) = 1.0;
  *(v6 + 40) = [v16 initWithControlPoints:v17 :0.0 :v18 :v19];
  v20 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v21) = 1060320051;
  LODWORD(v22) = 1.0;
  LODWORD(v23) = 1045220557;
  *(v6 + 48) = [v20 initWithControlPoints:v23 :0.0 :v21 :v22];
  v24 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v25) = 0.5;
  LODWORD(v26) = 1.0;
  LODWORD(v27) = 1045220557;
  *(v6 + 56) = [v24 initWithControlPoints:v27 :0.0 :v25 :v26];
  *(v6 + 64) = *"";
  __asm { FMOV            V0.2S, #1.0 }

  *(v6 + 80) = _D0;
  *(v6 + 88) = _D0;
  *(v6 + 96) = _D0;
  *(v6 + 104) = &_swiftEmptyDictionarySingleton;
  v76 = (v6 + 104);
  *(v6 + 272) = 0;
  *(v6 + 280) = 0;
  *(v6 + 304) = 0;
  *(v6 + 312) = 0;
  *(v6 + 296) = 8;
  *(v6 + 320) = 0u;
  *(v6 + 336) = 0u;
  *(v6 + 352) = 0u;
  *(v6 + 368) = 0u;
  *(v6 + 384) = 1;
  *(v6 + 120) = a1;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v34 = objc_opt_self();
  swift_unknownObjectRetain();
  v35 = [v34 bundleForClass:ObjCClassFromMetadata];
  v79[0] = 0;
  v36 = [a1 newDefaultLibraryWithBundle:v35 error:v79];

  v37 = v79[0];
  if (!v36)
  {
    v58 = 1982857215;
    v59 = v79[0];

    sub_1000E92E4();

    swift_willThrow();
LABEL_21:
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    if ((v58 & 0x400000) != 0)
    {
      swift_unknownObjectRelease();
    }

    type metadata accessor for FloconRenderer();
    swift_deallocPartialClassInstance();
    return v9;
  }

  v70 = a5;
  *(v9 + 128) = v36;
  v38 = v37;
  v39 = 0;
  v40 = v8;
  v75 = a1;
  do
  {
    v41 = *(&off_1001215D8 + v39 + 32);
    v42 = *(v9 + 128);
    swift_unknownObjectRetain();
    v43 = sub_1000B7EA4(a1, v42, v41);
    if (v40)
    {
      swift_unknownObjectRelease();

      v58 = 1987051519;
      goto LABEL_21;
    }

    v44 = v43;
    v45 = v9;
    swift_unknownObjectRelease();
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v47 = *v76;
    *v76 = 0x8000000000000000;
    v49 = sub_10009F428(v41);
    v50 = v47[2];
    v51 = (v48 & 1) == 0;
    v52 = v50 + v51;
    if (__OFADD__(v50, v51))
    {
      __break(1u);
LABEL_26:
      __break(1u);
    }

    v53 = v48;
    if (v47[3] >= v52)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v48)
        {
          goto LABEL_3;
        }
      }

      else
      {
        sub_1000B640C(&qword_100133138, &unk_1000F43B0);
        if (v53)
        {
          goto LABEL_3;
        }
      }
    }

    else
    {
      sub_1000B34C8(v52, isUniquelyReferenced_nonNull_native);
      v54 = sub_10009F428(v41);
      if ((v53 & 1) != (v55 & 1))
      {
        goto LABEL_28;
      }

      v49 = v54;
      if (v53)
      {
LABEL_3:
        *(v47[7] + 8 * v49) = v44;
        swift_unknownObjectRelease();
        goto LABEL_4;
      }
    }

    v47[(v49 >> 6) + 8] |= 1 << v49;
    *(v47[6] + v49) = v41;
    *(v47[7] + 8 * v49) = v44;
    v56 = v47[2];
    _VF = __OFADD__(v56, 1);
    v57 = v56 + 1;
    if (_VF)
    {
      goto LABEL_26;
    }

    v47[2] = v57;
LABEL_4:
    ++v39;
    *v76 = v47;
    swift_endAccess();
    v9 = v45;
    v40 = 0;
    a1 = v75;
  }

  while (v39 != 3);
  sub_1000125FC(&qword_100132540, &unk_1000F3E20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000EC880;
  *(inited + 32) = a4;
  *(inited + 36) = v70;
  sub_1000AB4A4(inited);
  v62 = v61;
  swift_setDeallocating();
  *(v45 + 112) = v62;
  *(v45 + 288) = 256;
  v63 = [v75 newBufferWithLength:2048 options:0];
  if (v63)
  {
    v64 = v63;

    *(v45 + 264) = v64;
    v65 = swift_unknownObjectRetain();
    sub_1000B8174(v65, v78);
    v67 = v78[3];
    *(v45 + 424) = v78[2];
    *(v45 + 440) = v67;
    v68 = v78[5];
    *(v45 + 456) = v78[4];
    *(v45 + 472) = v68;
    v69 = v78[1];
    *(v45 + 392) = v78[0];
    *(v45 + 408) = v69;
    v77 = matrix_identity_float4x4.columns[0];
    v74 = matrix_identity_float4x4.columns[1];
    v71 = matrix_identity_float4x4.columns[3];
    v72 = matrix_identity_float4x4.columns[2];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    *(v45 + 144) = 0;
    *(v45 + 148) = xmmword_1000F40C0;
    *(v45 + 164) = 0x3F80000000000000;
    *(v45 + 176) = 0;
    *(v45 + 172) = 0;
    *(v45 + 192) = v77;
    *(v45 + 208) = v74;
    *(v45 + 224) = v72;
    *(v45 + 240) = v71;
    *(v45 + 256) = 0;
    return v9;
  }

  __break(1u);
LABEL_28:
  result = sub_1000E9FA4();
  __break(1u);
  return result;
}

int32x2_t sub_1000B0FEC(uint64_t a1, int32x2_t a2, double a3)
{
  a2.i32[0] = *a1;
  *&a3 = 1.0 - *(a1 + 4);
  v3[8].i32[0] = *a1;
  v3[8].i32[1] = LODWORD(a3);
  v3[9].i32[0] = LODWORD(a3);
  v3[9].i32[1] = a2.i32[0];
  v3[10].i32[0] = LODWORD(a3);
  v3[10].i32[1] = LODWORD(a3);
  result = vdup_lane_s32(a2, 0);
  v3[11] = vdup_lane_s32(*&a3, 0);
  v3[12] = result;
  return result;
}

id *sub_1000B1014()
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
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_1000B110C()
{
  sub_1000B1014();

  return swift_deallocClassInstance();
}

__n128 sub_1000B1164(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_1000B1180(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_1000B11C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000B1254()
{
  result = qword_100133118;
  if (!qword_100133118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133118);
  }

  return result;
}

uint64_t sub_1000B12A8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for FloconRenderer();
  v11 = swift_allocObject();
  sub_1000B09C4(a1, v12, a3, a4, a5, a6);
  return v11;
}

uint64_t sub_1000B1348(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1000125FC(&qword_1001320F0, &unk_1000F3440);
  v34 = v4;
  result = sub_1000E9E84();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {

        swift_unknownObjectRetain();
      }

      sub_1000EA024();
      sub_1000E9974();
      result = sub_1000EA064();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1000B1618(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  sub_1000125FC(a3, a4);
  v36 = v6;
  result = sub_1000E9E84();
  v9 = result;
  if (*(v7 + 16))
  {
    v35 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v36 & 1) == 0)
      {
      }

      sub_1000EA024();
      sub_1000E9974();
      result = sub_1000EA064();
      v27 = -1 << *(v9 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v16 + 8 * v29);
          if (v33 != -1)
          {
            v17 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v35;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v34 = 1 << *(v7 + 32);
    v5 = v4;
    if (v34 >= 64)
    {
      bzero(v11, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

void *sub_1000B18B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1000125FC(&qword_100131E48, &qword_1000F2AA8);
  v51 = v4;
  v6 = sub_1000E9E84();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v47 = v2;
    v48 = (v5 + 64);
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 64);
    v12 = (v9 + 63) >> 6;
    v13 = v6 + 64;
    v49 = v5;
    v50 = v6;
    while (v11)
    {
      v20 = __clz(__rbit64(v11));
      v52 = (v11 - 1) & v11;
LABEL_15:
      v23 = v20 | (v8 << 6);
      v24 = (*(v5 + 48) + 16 * v23);
      v25 = v24[1];
      v55 = *v24;
      v26 = *(v5 + 56) + 56 * v23;
      v27 = *v26;
      v28 = *(v26 + 8);
      v30 = *(v26 + 16);
      v29 = *(v26 + 24);
      v32 = *(v26 + 32);
      v31 = *(v26 + 40);
      v53 = *(v26 + 48);
      if ((v51 & 1) == 0)
      {
        v33 = v31;

        v34 = v27;
        v35 = v28;
        v36 = v30;

        v37 = v32;
      }

      v54 = v32;
      v7 = v50;
      sub_1000EA024();
      sub_1000E9974();
      v38 = sub_1000EA064();
      v39 = -1 << *(v50 + 32);
      v40 = v38 & ~v39;
      v41 = v40 >> 6;
      if (((-1 << v40) & ~*(v13 + 8 * (v40 >> 6))) == 0)
      {
        v42 = 0;
        v43 = (63 - v39) >> 6;
        v16 = v28;
        v15 = v54;
        result = v30;
        while (++v41 != v43 || (v42 & 1) == 0)
        {
          v44 = v41 == v43;
          if (v41 == v43)
          {
            v41 = 0;
          }

          v42 |= v44;
          v45 = *(v13 + 8 * v41);
          if (v45 != -1)
          {
            v14 = __clz(__rbit64(~v45)) + (v41 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v40) & ~*(v13 + 8 * (v40 >> 6)))) | v40 & 0x7FFFFFFFFFFFFFC0;
      v16 = v28;
      v15 = v54;
      result = v30;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v18 = (*(v50 + 48) + 16 * v14);
      *v18 = v55;
      v18[1] = v25;
      v19 = *(v50 + 56) + 56 * v14;
      *v19 = v27;
      *(v19 + 8) = v16;
      *(v19 + 16) = result;
      *(v19 + 24) = v29;
      *(v19 + 32) = v15;
      *(v19 + 40) = v31;
      *(v19 + 48) = v53;
      ++*(v50 + 16);
      v5 = v49;
      v11 = v52;
    }

    v21 = v8;
    result = v48;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v12)
      {
        break;
      }

      v22 = v48[v8];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v52 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v51 & 1) == 0)
    {

      v3 = v47;
      goto LABEL_33;
    }

    v46 = 1 << *(v5 + 32);
    v3 = v47;
    if (v46 >= 64)
    {
      bzero(v48, ((v46 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v48 = -1 << v46;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1000B1BE0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1000125FC(&qword_100132120, &qword_1000F3478);
  v37 = v4;
  result = sub_1000E9E84();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v2;
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(v5 + 56) + 32 * v20;
      v23 = *v22;
      v24 = *(v22 + 8);
      v38 = *(v22 + 16);
      v25 = *(v22 + 24);
      if ((v37 & 1) == 0)
      {
        v26 = v21;
      }

      result = sub_1000E9C74(*(v7 + 40));
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = *(v7 + 56) + 32 * v15;
      *v16 = v23;
      *(v16 + 8) = v24;
      *(v16 + 16) = v38;
      *(v16 + 24) = v25;
      ++*(v7 + 16);
      v5 = v36;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1000B1E88(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1000125FC(&unk_1001320A0, &unk_1000F3400);
  v49 = v4;
  result = sub_1000E9E84();
  v7 = result;
  if (*(v5 + 16))
  {
    v48 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = *(v5 + 56);
      v23 = *(v5 + 48) + 24 * v21;
      v24 = *v23;
      v25 = *(v23 + 8);
      v26 = *(v23 + 16);
      v27 = (v22 + 192 * v21);
      if (v49)
      {
        v56 = *v27;
        v51 = *(v27 + 12);
        v52 = *(v27 + 2);
        v58 = *(v27 + 1);
        v54 = *(v27 + 3);
        v55 = *(v27 + 2);
        v53 = *(v27 + 4);
        v59 = v27[11];
        v57 = *(v27 + 96);
        v28 = *(v27 + 25);
        v60 = *(v27 + 104);
        v29 = *(v27 + 27);
        v66 = v27[14];
        v63 = v27[15];
        v61 = v27[10];
        v62 = v27[16];
        v50 = *(v27 + 136);
        v64 = *(v27 + 137);
        v65 = *(v27 + 138);
        v68 = *(v27 + 139);
        v69 = *(v27 + 10);
        v67 = *(v27 + 9);
        v30 = v27[22];
      }

      else
      {
        v32 = *(v27 + 2);
        v31 = *(v27 + 3);
        v33 = *v27;
        v72 = *(v27 + 1);
        v73 = v32;
        v71 = v33;
        v34 = *(v27 + 7);
        v36 = *(v27 + 4);
        v35 = *(v27 + 5);
        v77 = *(v27 + 6);
        v78 = v34;
        v75 = v36;
        v76 = v35;
        v38 = *(v27 + 9);
        v37 = *(v27 + 10);
        v39 = *(v27 + 8);
        v82 = v27[22];
        v80 = v38;
        v81 = v37;
        v79 = v39;
        v74 = v31;
        v30 = v82;
        v69 = v37;
        v67 = v38;
        v68 = BYTE11(v39);
        v64 = BYTE9(v39);
        v65 = BYTE10(v39);
        v66 = v78;
        v62 = v39;
        v63 = *(&v78 + 1);
        v50 = BYTE8(v39);
        v29 = HIDWORD(v77);
        v60 = BYTE8(v77);
        v28 = DWORD1(v77);
        v59 = *(&v76 + 1);
        v61 = v76;
        v57 = v77;
        v58 = v72;
        v54 = v31;
        v55 = v73;
        v53 = v36;
        v56 = v71;
        v51 = BYTE12(v71);
        v52 = DWORD2(v71);
        sub_1000A1DD4(v24, v25, v26);
        sub_1000B89BC(&v71, v70);
      }

      sub_1000EA024();
      sub_1000BB81C(&v71, v24, v25, v26);
      result = sub_1000EA064();
      v40 = -1 << *(v7 + 32);
      v41 = result & ~v40;
      v42 = v41 >> 6;
      if (((-1 << v41) & ~*(v14 + 8 * (v41 >> 6))) == 0)
      {
        v43 = 0;
        v44 = (63 - v40) >> 6;
        while (++v42 != v44 || (v43 & 1) == 0)
        {
          v45 = v42 == v44;
          if (v42 == v44)
          {
            v42 = 0;
          }

          v43 |= v45;
          v46 = *(v14 + 8 * v42);
          if (v46 != -1)
          {
            v15 = __clz(__rbit64(~v46)) + (v42 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v41) & ~*(v14 + 8 * (v41 >> 6)))) | v41 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      LOBYTE(v71) = v50;
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 24 * v15;
      *v16 = v24;
      *(v16 + 8) = v25;
      *(v16 + 16) = v26;
      v17 = *(v7 + 56) + 192 * v15;
      *v17 = v56;
      *(v17 + 8) = v52;
      *(v17 + 12) = v51;
      *(v17 + 16) = v58;
      *(v17 + 32) = v55;
      *(v17 + 48) = v54;
      *(v17 + 64) = v53;
      *(v17 + 80) = v61;
      *(v17 + 88) = v59;
      *(v17 + 96) = v57;
      *(v17 + 100) = v28;
      *(v17 + 104) = v60;
      *(v17 + 108) = v29;
      *(v17 + 112) = v66;
      *(v17 + 120) = v63;
      *(v17 + 128) = v62;
      *(v17 + 136) = v71;
      *(v17 + 137) = v64;
      *(v17 + 138) = v65;
      *(v17 + 139) = v68;
      *(v17 + 144) = v67;
      *(v17 + 160) = v69;
      *(v17 + 176) = v30;
      ++*(v7 + 16);
      v5 = v48;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v49 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v47 = 1 << *(v5 + 32);
    v3 = v2;
    if (v47 >= 64)
    {
      bzero(v9, ((v47 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v47;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1000B2368(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1000125FC(&qword_1001320B0, &qword_1000F3410);
  v37 = v4;
  result = sub_1000E9E84();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = *(v5 + 56);
      v23 = *(v5 + 48) + 24 * v21;
      v24 = *v23;
      v25 = *(v23 + 8);
      v26 = *(v23 + 16);
      v27 = (v22 + 16 * v21);
      v40 = *v27;
      v38 = *(v27 + 12);
      v39 = *(v27 + 2);
      if ((v37 & 1) == 0)
      {
        sub_1000A1DD4(v24, v25, v26);
      }

      sub_1000EA024();
      sub_1000BB81C(v41, v24, v25, v26);
      result = sub_1000EA064();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 24 * v15;
      *v16 = v24;
      *(v16 + 8) = v25;
      *(v16 + 16) = v26;
      v17 = *(v7 + 56) + 16 * v15;
      *v17 = v40;
      *(v17 + 8) = v39;
      *(v17 + 12) = v38;
      ++*(v7 + 16);
      v5 = v36;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1000B264C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1000125FC(&qword_1001320B8, &qword_1000F3418);
  v38 = v4;
  result = sub_1000E9E84();
  v7 = result;
  if (*(v5 + 16))
  {
    v37 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 24 * (v19 | (v8 << 6));
      v23 = *(v5 + 56);
      v24 = *(v5 + 48) + v22;
      v25 = *v24;
      v26 = *(v24 + 8);
      v27 = *(v24 + 16);
      v28 = (v23 + v22);
      v43 = *(v28 + 4);
      v44 = *v28;
      v41 = *(v28 + 12);
      v42 = v28[2];
      v39 = *(v28 + 20);
      v40 = v28[4];
      if ((v38 & 1) == 0)
      {
        sub_1000A1DD4(v25, v26, v27);
      }

      sub_1000EA024();
      sub_1000BB81C(v45, v25, v26, v27);
      result = sub_1000EA064();
      v29 = -1 << *(v7 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v14 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v14 + 8 * v31);
          if (v35 != -1)
          {
            v15 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 24 * v15;
      v17 = *(v7 + 48) + v16;
      *v17 = v25;
      *(v17 + 8) = v26;
      *(v17 + 16) = v27;
      v18 = *(v7 + 56) + v16;
      *v18 = v44;
      *(v18 + 4) = v43;
      *(v18 + 8) = v42;
      *(v18 + 12) = v41;
      *(v18 + 16) = v40;
      *(v18 + 20) = v39;
      ++*(v7 + 16);
      v5 = v37;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v2;
    if (v36 >= 64)
    {
      bzero(v9, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1000B2958(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1000125FC(&qword_100132090, &qword_1000F33F0);
  v30 = v4;
  result = sub_1000E9E84();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
      }

      sub_1000EA024();
      sub_1000EA034(v20);
      result = sub_1000EA064();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1000B2BE8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1000125FC(&qword_1001320D0, &qword_1000F3428);
  v30 = v4;
  result = sub_1000E9E84();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
        swift_unknownObjectRetain();
      }

      sub_1000EA024();
      sub_1000EA034(v20);
      result = sub_1000EA064();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1000B2E78(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1000125FC(&unk_100133150, &unk_1000F43C0);
  result = sub_1000E9E84();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v4;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 2 * v20);
      v22 = v21[1];
      v23 = *v21;
      v24 = *(*(v5 + 56) + 4 * v20);
      sub_1000EA024();
      sub_1000E9974();

      sub_1000EA044(v22);
      result = sub_1000EA064();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 2 * v15);
      *v16 = v23;
      v16[1] = v22;
      *(*(v7 + 56) + 4 * v15) = v24;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_31:
  *v3 = v7;
  return result;
}

uint64_t sub_1000B3220(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1000125FC(&unk_100133128, &qword_1000F4398);
  v30 = v4;
  result = sub_1000E9E84();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
        swift_unknownObjectRetain();
      }

      sub_1000EA024();
      sub_1000E9974();

      result = sub_1000EA064();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1000B34C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1000125FC(&qword_100133138, &unk_1000F43B0);
  v30 = v4;
  result = sub_1000E9E84();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
        swift_unknownObjectRetain();
      }

      sub_1000EA024();
      sub_1000E9974();

      result = sub_1000EA064();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1000B3770(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1000125FC(&unk_100132100, &unk_1000F3460);
  result = sub_1000E9E84();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (v4)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v38 = *(v23 + 32);
        v36 = v24;
        v37 = v25;
        sub_100032864((*(v5 + 56) + 32 * v22), v35);
      }

      else
      {
        sub_100032808(v23, &v36);
        sub_100012898(*(v5 + 56) + 32 * v22, v35);
      }

      result = sub_1000E9CF4(*(v7 + 40));
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v36;
      v18 = v37;
      *(v16 + 32) = v38;
      *v16 = v17;
      *(v16 + 16) = v18;
      result = sub_100032864(v35, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1000B3A28(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1000125FC(&qword_100132060, &unk_1000F5E60);
  v32 = v4;
  result = sub_1000E9E84();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v20 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_16:
      v23 = v20 | (v8 << 6);
      v24 = *(*(v5 + 48) + v23);
      v25 = (*(v5 + 56) + 16 * v23);
      v26 = v25[1];
      v33 = *v25;
      if ((v32 & 1) == 0)
      {
      }

      sub_1000EA024();
      sub_1000E9974();

      result = sub_1000EA064();
      v15 = -1 << *(v7 + 32);
      v16 = result & ~v15;
      v17 = v16 >> 6;
      if (((-1 << v16) & ~*(v14 + 8 * (v16 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v15) >> 6;
        while (++v17 != v28 || (v27 & 1) == 0)
        {
          v29 = v17 == v28;
          if (v17 == v28)
          {
            v17 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v17);
          if (v30 != -1)
          {
            v18 = __clz(__rbit64(~v30)) + (v17 << 6);
            goto LABEL_8;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v16) & ~*(v14 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v14 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v7 + 48) + v18) = v24;
      v19 = (*(v7 + 56) + 16 * v18);
      *v19 = v33;
      v19[1] = v26;
      ++*(v7 + 16);
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v22 = v9[v8];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v12 = (v22 - 1) & v22;
        goto LABEL_16;
      }
    }

    if ((v32 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v2;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1000B3DCC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1000125FC(&qword_100130E90, &qword_1000F3450);
  result = sub_1000E9E84();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
        v22 = v20;
      }

      result = sub_1000E9C74(*(v7 + 40));
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v31;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v31;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1000B403C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1000125FC(&unk_1001320E0, &unk_1000F3430);
  result = sub_1000E9E84();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = (*(v5 + 56) + 32 * v19);
      if (v4)
      {
        sub_100032864(v21, v31);
      }

      else
      {
        sub_100012898(v21, v31);
        v22 = v20;
      }

      sub_1000EA024();
      type metadata accessor for CFString(0);
      sub_1000A1E1C(&qword_1001320D8, type metadata accessor for CFString, &unk_1000ED13C);
      sub_1000E95F4();
      result = sub_1000EA064();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      result = sub_100032864(v31, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1000B431C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1000125FC(&qword_100133180, &unk_1000F43D0);
  v39 = v4;
  result = sub_1000E9E84();
  v7 = result;
  if (*(v5 + 16))
  {
    v37 = v2;
    v38 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(v5 + 56) + 24 * v20;
      v24 = *v22;
      v23 = *(v22 + 8);
      v25 = *(v22 + 16);
      if ((v39 & 1) == 0)
      {

        v26 = v21;
        v27 = v24;
        v28 = v23;
      }

      result = sub_1000E9C74(*(v7 + 40));
      v29 = -1 << *(v7 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v14 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v14 + 8 * v31);
          if (v35 != -1)
          {
            v15 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = (*(v7 + 56) + 24 * v15);
      *v16 = v24;
      v16[1] = v23;
      v16[2] = v25;
      ++*(v7 + 16);
      v5 = v38;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_33;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v9, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1000B45BC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1000125FC(&unk_100133160, &qword_1000F3470);
  v36 = v4;
  result = sub_1000E9E84();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
    v35 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v38 = *(*(v5 + 48) + 8 * v20);
      v21 = *(v5 + 56) + 32 * v20;
      v22 = *v21;
      v37 = *(v21 + 8);
      v23 = *(v21 + 16);
      v24 = *(v21 + 24);
      if ((v36 & 1) == 0)
      {
        v25 = v22;
        sub_10009870C(v23, v24);
      }

      sub_1000EA024();
      sub_1000EA034(v38);
      result = sub_1000EA064();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v38;
      v16 = *(v7 + 56) + 32 * v15;
      *v16 = v22;
      *(v16 + 8) = v37;
      *(v16 + 16) = v23;
      *(v16 + 24) = v24;
      ++*(v7 + 16);
      v5 = v35;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1000B488C(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v13 = *v6;
  v14 = sub_10009F1B8(a5);
  v16 = *(v13 + 16);
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v20 = v15;
  v21 = *(v13 + 24);
  if (v21 < v19 || (a6 & 1) == 0)
  {
    if (v21 < v19 || (a6 & 1) != 0)
    {
      sub_1000B1BE0(v19, a6 & 1);
      v14 = sub_10009F1B8(a5);
      if ((v20 & 1) != (v23 & 1))
      {
LABEL_18:
        sub_100012904(0, &unk_100132110, PREditor_ptr);
        sub_1000E9FA4();
        __break(1u);
        return _objc_retain_x1();
      }
    }

    else
    {
      v22 = v14;
      sub_1000B5A90();
      v14 = v22;
    }
  }

  v24 = *v7;
  if ((v20 & 1) == 0)
  {
    v24[(v14 >> 6) + 8] |= 1 << v14;
    *(v24[6] + 8 * v14) = a5;
    v27 = v24[7] + 32 * v14;
    *v27 = a1;
    *(v27 + 8) = a2;
    *(v27 + 16) = a3;
    *(v27 + 24) = a4;
    v28 = v24[2];
    v18 = __OFADD__(v28, 1);
    v29 = v28 + 1;
    if (!v18)
    {
      v24[2] = v29;

      return _objc_retain_x1();
    }

    goto LABEL_17;
  }

  v25 = v24[7] + 32 * v14;
  *v25 = a1;
  *(v25 + 8) = a2;
  *(v25 + 16) = a3;
  *(v25 + 24) = a4;
}

void sub_1000B4A40(__int128 *a1, Swift::UInt a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_10009F2C8(a2, a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_1000B1E88(v18, a5 & 1);
      v13 = sub_10009F2C8(a2, a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        sub_1000E9FA4();
        __break(1u);
        return;
      }
    }

    else
    {
      v21 = v13;
      sub_1000B5C20();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = v23[7] + 192 * v13;

    sub_1000B8A18(a1, v24);
    return;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v25 = v23[6] + 24 * v13;
  *v25 = a2;
  *(v25 + 8) = a3;
  *(v25 + 16) = a4;
  v26 = v23[7] + 192 * v13;
  v27 = *a1;
  v28 = a1[1];
  v29 = a1[3];
  *(v26 + 32) = a1[2];
  *(v26 + 48) = v29;
  *v26 = v27;
  *(v26 + 16) = v28;
  v30 = a1[4];
  v31 = a1[5];
  v32 = a1[7];
  *(v26 + 96) = a1[6];
  *(v26 + 112) = v32;
  *(v26 + 64) = v30;
  *(v26 + 80) = v31;
  v33 = a1[8];
  v34 = a1[9];
  v35 = a1[10];
  *(v26 + 176) = *(a1 + 22);
  *(v26 + 144) = v34;
  *(v26 + 160) = v35;
  *(v26 + 128) = v33;
  v36 = v23[2];
  v17 = __OFADD__(v36, 1);
  v37 = v36 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v37;

  sub_1000A1DD4(a2, a3, a4);
}

unint64_t sub_1000B4C14(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1000A1E74();
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_1000B2BE8(v14, a3 & 1);
      result = sub_1000A1E74();
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_1000E9FA4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_1000B640C(&qword_1001320D0, &qword_1000F3428);
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * result) = a1;

  return swift_unknownObjectRelease();
}

unint64_t sub_1000B4D74(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_10009F428(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_1000B3220(v14, a3 & 1);
      result = sub_10009F428(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_1000E9FA4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_1000B640C(&unk_100133128, &qword_1000F4398);
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * result) = a1;

  return swift_unknownObjectRelease();
}

uint64_t sub_1000B4ED4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_100002324(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_1000B3DCC(v13, a3 & 1);
      v8 = sub_100002324(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        sub_100012904(0, &qword_100130E98, PRRenderer_ptr);
        sub_1000E9FA4();
        __break(1u);
        return _objc_retain_x1();
      }
    }

    else
    {
      v16 = v8;
      sub_1000B6864();
      v8 = v16;
    }
  }

  v18 = *v4;
  if ((v14 & 1) == 0)
  {
    v18[(v8 >> 6) + 8] |= 1 << v8;
    *(v18[6] + 8 * v8) = a2;
    *(v18[7] + 8 * v8) = a1;
    v20 = v18[2];
    v12 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v12)
    {
      v18[2] = v21;

      return _objc_retain_x1();
    }

    goto LABEL_17;
  }

  *(v18[7] + 8 * v8) = a1;
}

_OWORD *sub_1000B5050(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_10009F630(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_1000B69C8();
      v8 = v16;
      goto LABEL_8;
    }

    sub_1000B403C(v13, a3 & 1);
    v8 = sub_10009F630(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      type metadata accessor for CFString(0);
      result = sub_1000E9FA4();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = (v18[7] + 32 * v8);
    sub_100012710(v19);

    return sub_100032864(a1, v19);
  }

  else
  {
    sub_1000B54F8(v8, a2, a1, v18);

    return a2;
  }
}

uint64_t sub_1000B5190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v11 = *v5;
  v12 = sub_100002324(a4);
  v14 = *(v11 + 16);
  v15 = (v13 & 1) == 0;
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18 = v13;
  v19 = *(v11 + 24);
  if (v19 < v17 || (a5 & 1) == 0)
  {
    if (v19 < v17 || (a5 & 1) != 0)
    {
      sub_1000B431C(v17, a5 & 1);
      v12 = sub_100002324(a4);
      if ((v18 & 1) != (v21 & 1))
      {
LABEL_18:
        sub_100012904(0, &qword_100130E98, PRRenderer_ptr);
        sub_1000E9FA4();
        __break(1u);
        return _objc_retain_x1();
      }
    }

    else
    {
      v20 = v12;
      sub_1000B6B48();
      v12 = v20;
    }
  }

  v22 = *v6;
  if ((v18 & 1) == 0)
  {
    v22[(v12 >> 6) + 8] |= 1 << v12;
    *(v22[6] + 8 * v12) = a4;
    v27 = (v22[7] + 24 * v12);
    *v27 = a1;
    v27[1] = a2;
    v27[2] = a3;
    v28 = v22[2];
    v16 = __OFADD__(v28, 1);
    v29 = v28 + 1;
    if (!v16)
    {
      v22[2] = v29;

      return _objc_retain_x1();
    }

    goto LABEL_17;
  }

  v23 = v22[7] + 24 * v12;
  v25 = *v23;
  v24 = *(v23 + 8);
  *v23 = a1;
  *(v23 + 8) = a2;
  *(v23 + 16) = a3;
}

void sub_1000B5344(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v15 = sub_10009F280(a5);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 < v20 || (a6 & 1) != 0)
    {
      sub_1000B45BC(v20, a6 & 1);
      v15 = sub_10009F280(a5);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_16:
        type metadata accessor for UIInterfaceOrientation(0);
        sub_1000E9FA4();
        __break(1u);
        return;
      }
    }

    else
    {
      v23 = v15;
      sub_1000B6CD0();
      v15 = v23;
    }
  }

  v25 = *v7;
  if ((v21 & 1) == 0)
  {
    v25[(v15 >> 6) + 8] |= 1 << v15;
    *(v25[6] + 8 * v15) = a5;
    v30 = v25[7] + 32 * v15;
    *v30 = a1;
    *(v30 + 8) = a2 & 1;
    *(v30 + 16) = a3;
    *(v30 + 24) = a4;
    v31 = v25[2];
    v19 = __OFADD__(v31, 1);
    v32 = v31 + 1;
    if (!v19)
    {
      v25[2] = v32;
      return;
    }

    goto LABEL_15;
  }

  v26 = v25[7] + 32 * v15;
  v27 = *v26;
  v28 = *(v26 + 16);
  *v26 = a1;
  *(v26 + 8) = a2 & 1;
  *(v26 + 16) = a3;
  v29 = *(v26 + 24);
  *(v26 + 24) = a4;

  sub_100098720(v28, v29);
}

_OWORD *sub_1000B54F8(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_100032864(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

unint64_t sub_1000B5560(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = a5[7] + 56 * result;
  v7 = *(a4 + 16);
  *v6 = *a4;
  *(v6 + 16) = v7;
  *(v6 + 32) = *(a4 + 32);
  *(v6 + 48) = *(a4 + 48);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

void sub_1000B55C4()
{
  v1 = v0;
  sub_1000125FC(&qword_1001320F0, &unk_1000F3440);
  v2 = *v0;
  v3 = sub_1000E9E74();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        swift_unknownObjectRetain();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_1000B575C(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_1000125FC(a1, a2);
  v4 = *v2;
  v5 = sub_1000E9E74();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 64 + 8 * v8)
    {
      memmove(v7, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }
}

id sub_1000B58BC()
{
  sub_1000125FC(&qword_100131E48, &qword_1000F2AA8);
  v33 = v0;
  v1 = *v0;
  v34 = sub_1000E9E74();
  v35 = v1;
  if (*(v1 + 16))
  {
    result = (v34 + 64);
    v3 = v1 + 64;
    v4 = ((1 << *(v34 + 32)) + 63) >> 6;
    if (v34 != v1 || result >= v1 + 64 + 8 * v4)
    {
      result = memmove(result, (v1 + 64), 8 * v4);
    }

    v6 = 0;
    *(v34 + 16) = *(v1 + 16);
    v7 = 1 << *(v1 + 32);
    v8 = *(v1 + 64);
    v9 = -1;
    if (v7 < 64)
    {
      v9 = ~(-1 << v7);
    }

    v10 = v9 & v8;
    v11 = (v7 + 63) >> 6;
    if ((v9 & v8) != 0)
    {
      do
      {
        v12 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_17:
        v15 = v12 | (v6 << 6);
        v16 = 16 * v15;
        v17 = (*(v35 + 48) + 16 * v15);
        v18 = *v17;
        v19 = v17[1];
        v15 *= 56;
        v20 = *(v35 + 56) + v15;
        v22 = *v20;
        v21 = *(v20 + 8);
        v23 = *(v20 + 16);
        v24 = *(v20 + 24);
        v26 = *(v20 + 32);
        v25 = *(v20 + 40);
        LOBYTE(v20) = *(v20 + 48);
        v27 = (*(v34 + 48) + v16);
        *v27 = v18;
        v27[1] = v19;
        v28 = *(v34 + 56) + v15;
        *v28 = v22;
        *(v28 + 8) = v21;
        *(v28 + 16) = v23;
        *(v28 + 24) = v24;
        *(v28 + 32) = v26;
        *(v28 + 40) = v25;
        *(v28 + 48) = v20;
        v29 = v25;

        v30 = v22;
        v31 = v21;
        v32 = v23;

        result = v26;
      }

      while (v10);
    }

    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
        goto LABEL_19;
      }

      v14 = *(v3 + 8 * v6);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v33 = v34;
  }

  return result;
}

void sub_1000B5A90()
{
  v1 = v0;
  sub_1000125FC(&qword_100132120, &qword_1000F3478);
  v2 = *v0;
  v3 = sub_1000E9E74();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(v2 + 56) + 32 * v17;
        v20 = *v19;
        v22 = *(v19 + 8);
        v21 = *(v19 + 16);
        v23 = *(v19 + 24);
        *(*(v4 + 48) + 8 * v17) = v18;
        v24 = *(v4 + 56) + 32 * v17;
        *v24 = v20;
        *(v24 + 8) = v22;
        *(v24 + 16) = v21;
        *(v24 + 24) = v23;
        v25 = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void *sub_1000B5C20()
{
  v1 = v0;
  sub_1000125FC(&unk_1001320A0, &unk_1000F3400);
  v2 = *v0;
  v3 = sub_1000E9E74();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 3 * (v14 | (v8 << 6));
        v18 = 8 * v17;
        v19 = *(v2 + 48) + 8 * v17;
        v20 = *v19;
        v21 = *(v19 + 8);
        v17 <<= 6;
        v22 = *(v2 + 56) + v17;
        v23 = *(v22 + 112);
        v25 = *(v22 + 64);
        v24 = *(v22 + 80);
        v26 = *(v19 + 16);
        v51 = *(v22 + 96);
        v52 = v23;
        v49 = v25;
        v50 = v24;
        v28 = *(v22 + 144);
        v27 = *(v22 + 160);
        v29 = *(v22 + 128);
        v56 = *(v22 + 176);
        v54 = v28;
        v55 = v27;
        v53 = v29;
        v31 = *v22;
        v30 = *(v22 + 16);
        v32 = *(v22 + 48);
        v47 = *(v22 + 32);
        v48 = v32;
        v45 = v31;
        v46 = v30;
        v33 = *(v4 + 48) + v18;
        *v33 = v20;
        *(v33 + 8) = v21;
        *(v33 + 16) = v26;
        v34 = *(v4 + 56) + v17;
        v35 = v45;
        v36 = v46;
        v37 = v48;
        *(v34 + 32) = v47;
        *(v34 + 48) = v37;
        *v34 = v35;
        *(v34 + 16) = v36;
        v38 = v49;
        v39 = v50;
        v40 = v52;
        *(v34 + 96) = v51;
        *(v34 + 112) = v40;
        *(v34 + 64) = v38;
        *(v34 + 80) = v39;
        v41 = v53;
        v42 = v54;
        v43 = v55;
        *(v34 + 176) = v56;
        *(v34 + 144) = v42;
        *(v34 + 160) = v43;
        *(v34 + 128) = v41;
        sub_1000A1DD4(v20, v21, v26);
        result = sub_1000B89BC(&v45, &v44);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void sub_1000B5E1C()
{
  v1 = v0;
  sub_1000125FC(&qword_1001320B0, &qword_1000F3410);
  v2 = *v0;
  v3 = sub_1000E9E74();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 24 * v17;
        v19 = *(v2 + 48) + 24 * v17;
        v20 = *v19;
        v21 = *(v19 + 8);
        v17 *= 16;
        v22 = *(v2 + 56) + v17;
        v23 = *v22;
        v24 = *(v22 + 8);
        LOBYTE(v22) = *(v22 + 12);
        v25 = *(v4 + 48) + v18;
        v26 = *(v19 + 16);
        *v25 = *v19;
        *(v25 + 8) = v21;
        *(v25 + 16) = v26;
        v27 = *(v4 + 56) + v17;
        *v27 = v23;
        *(v27 + 8) = v24;
        *(v27 + 12) = v22;
        sub_1000A1DD4(v20, v21, v26);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_1000B5FAC()
{
  v1 = v0;
  sub_1000125FC(&qword_1001320B8, &qword_1000F3418);
  v2 = *v0;
  v3 = sub_1000E9E74();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 24 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v2 + 56) + v17;
        v22 = *v21;
        v23 = *(v21 + 4);
        v24 = *(v21 + 8);
        v25 = *(v21 + 12);
        v26 = *(v21 + 16);
        LOBYTE(v21) = *(v21 + 20);
        v27 = *(v4 + 48) + v17;
        v28 = *(v18 + 16);
        *v27 = *v18;
        *(v27 + 8) = v20;
        *(v27 + 16) = v28;
        v29 = *(v4 + 56) + v17;
        *v29 = v22;
        *(v29 + 4) = v23;
        *(v29 + 8) = v24;
        *(v29 + 12) = v25;
        *(v29 + 16) = v26;
        *(v29 + 20) = v21;
        sub_1000A1DD4(v19, v20, v28);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_1000B6150()
{
  v1 = v0;
  sub_1000125FC(&qword_100132090, &qword_1000F33F0);
  v2 = *v0;
  v3 = sub_1000E9E74();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void *sub_1000B62AC()
{
  v1 = v0;
  sub_1000125FC(&unk_100133150, &unk_1000F43C0);
  v2 = *v0;
  v3 = sub_1000E9E74();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 4 * v14) = v19)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = (*(v2 + 48) + 2 * v14);
      v18 = *v17;
      LOBYTE(v17) = v17[1];
      v19 = *(*(v2 + 56) + 4 * v14);
      v20 = (*(v4 + 48) + 2 * v14);
      *v20 = v18;
      v20[1] = v17;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void sub_1000B640C(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_1000125FC(a1, a2);
  v4 = *v2;
  v5 = sub_1000E9E74();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 64 + 8 * v8)
    {
      memmove(v7, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + v19) = *(*(v4 + 48) + v19);
        *(*(v6 + 56) + 8 * v19) = v20;
        swift_unknownObjectRetain();
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }
}

void *sub_1000B6558()
{
  v1 = v0;
  sub_1000125FC(&unk_100132100, &unk_1000F3460);
  v2 = *v0;
  v3 = sub_1000E9E74();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 40 * v17;
        sub_100032808(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_100012898(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_100032864(v22, (*(v4 + 56) + v17));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void sub_1000B66FC()
{
  v1 = v0;
  sub_1000125FC(&qword_100132060, &unk_1000F5E60);
  v2 = *v0;
  v3 = sub_1000E9E74();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 56) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        v21 = (*(v4 + 56) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void *sub_1000B6864()
{
  v1 = v0;
  sub_1000125FC(&qword_100130E90, &qword_1000F3450);
  v2 = *v0;
  v3 = sub_1000E9E74();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_1000B69C8()
{
  v1 = v0;
  sub_1000125FC(&unk_1001320E0, &unk_1000F3430);
  v2 = *v0;
  v3 = sub_1000E9E74();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_100012898(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_100032864(v19, (*(v4 + 56) + 32 * v17));
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_1000B6B48()
{
  v1 = v0;
  sub_1000125FC(&qword_100133180, &unk_1000F43D0);
  v2 = *v0;
  v3 = sub_1000E9E74();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(v2 + 56) + 24 * v17;
        v20 = *v19;
        v21 = *(v19 + 8);
        v22 = *(v19 + 16);
        *(*(v4 + 48) + 8 * v17) = v18;
        v23 = (*(v4 + 56) + 24 * v17);
        *v23 = v20;
        v23[1] = v21;
        v23[2] = v22;

        v24 = v18;
        v25 = v20;
        result = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1000B6CD0()
{
  v1 = v0;
  sub_1000125FC(&unk_100133160, &qword_1000F3470);
  v2 = *v0;
  v3 = sub_1000E9E74();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(v2 + 56) + 32 * v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(v18 + 24);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v23 = *(v4 + 56) + 32 * v17;
        *v23 = v19;
        *(v23 + 8) = v20;
        *(v23 + 16) = v21;
        *(v23 + 24) = v22;
        v24 = v19;
        result = sub_10009870C(v21, v22);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

__n64 sub_1000B6E64(float32x4_t a1, float32x4_t a2, float32x4_t a3)
{
  v3 = vsubq_f32(a1, a2);
  v4 = vmulq_f32(v3, v3);
  v5 = vaddv_f32(*v4.f32);
  *v4.f32 = vrsqrte_f32(COERCE_UNSIGNED_INT(v4.f32[2] + v5));
  *v4.f32 = vmul_f32(*v4.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v4.f32[2] + v5), vmul_f32(*v4.f32, *v4.f32)));
  v6 = vmulq_n_f32(v3, vmul_f32(*v4.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v4.f32[2] + v5), vmul_f32(*v4.f32, *v4.f32))).f32[0]);
  v7 = vextq_s8(vuzp1q_s32(v6, v6), v6, 0xCuLL);
  v8 = vmlaq_f32(vmulq_f32(v7, vnegq_f32(a3)), v6, vextq_s8(vuzp1q_s32(a3, a3), a3, 0xCuLL));
  v9 = vextq_s8(vuzp1q_s32(v8, v8), v8, 0xCuLL);
  v10 = vmulq_f32(v8, v8);
  *&v11 = v10.f32[1] + (v10.f32[2] + v10.f32[0]);
  *v10.f32 = vrsqrte_f32(v11);
  *v10.f32 = vmul_f32(*v10.f32, vrsqrts_f32(v11, vmul_f32(*v10.f32, *v10.f32)));
  v12 = vmulq_n_f32(v9, vmul_f32(*v10.f32, vrsqrts_f32(v11, vmul_f32(*v10.f32, *v10.f32))).f32[0]);
  result.n64_u32[0] = v12.i32[0];
  result.n64_u32[1] = vdupq_laneq_s32(vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v12, v12), v12, 0xCuLL), vnegq_f32(v6)), v12, v7), 2).u32[0];
  return result;
}

double sub_1000B6FA0(void *a1)
{
  v17 = matrix_identity_float4x4.columns[0];
  *v2.f32 = sub_1000B6E64(xmmword_1000EC920, 0, xmmword_1000EC910);
  v13 = v2;
  v14 = v3;
  v15 = v4;
  v16 = v5;
  v6 = [a1 width];
  v7 = v6 / [a1 height];
  v8 = ((36.0 / v7) * 0.5) / 36.0;
  if (v7 <= 1.0)
  {
    v8 = 0.5;
  }

  v9 = atanf(v8);
  v10 = tanf((v9 + v9) * 0.5);
  LODWORD(v11) = 0;
  *(&v11 + 1) = 1.0 / v10;
  *&result = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(COERCE_UNSIGNED_INT((1.0 / v10) / v7), v13.f32[0]), v11, *v13.f32, 1), xmmword_1000F40D0, v13, 2), xmmword_1000F40E0, v13, 3), v17.f32[0]), vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(COERCE_UNSIGNED_INT((1.0 / v10) / v7), v14.f32[0]), v11, *v14.f32, 1), xmmword_1000F40D0, v14, 2), xmmword_1000F40E0, v14, 3), *v17.f32, 1), vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(COERCE_UNSIGNED_INT((1.0 / v10) / v7), v15.f32[0]), v11, *v15.f32, 1), xmmword_1000F40D0, v15, 2), xmmword_1000F40E0, v15, 3), v17, 2), vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(COERCE_UNSIGNED_INT((1.0 / v10) / v7), v16.f32[0]), v11, *v16.f32, 1), xmmword_1000F40D0, v16, 2), xmmword_1000F40E0, v16, 3), v17, 3).u64[0];
  return result;
}

int32x2_t sub_1000B7130(int32x4_t a1, float32x4_t a2, double a3, double a4, double a5, int32x2_t a6, double a7)
{
  a6.i32[0] = a1.i32[0];
  *&a7 = 1.0 - a2.f32[0];
  *(v7 + 84) = 1.0 - a2.f32[0];
  v8 = *(v7 + 22);
  if (v8 != 1 || (*&a7 > 0.0 ? (_NF = *&a7 < 1.0) : (_NF = 0), _NF))
  {
    if (*a1.i32 > 0.0)
    {
      v10 = 0;
      goto LABEL_12;
    }
  }

  else
  {
    LOBYTE(v8) = 0;
    v10 = 0;
    *(v7 + 22) = 0;
    if (*a1.i32 > 0.0)
    {
      goto LABEL_12;
    }
  }

  v11 = *(v7 + 88);
  v12 = vdup_lane_s32(v11, 0);
  v12.f32[0] = 1.0 - a2.f32[0];
  v13 = vsub_f32(v12, v11);
  __asm { FMOV            V3.2S, #1.0 }

  v17 = vand_s8(vbsl_s8(0x8000000080000000, _D3, v13), vorr_s8(vcltz_f32(v13), vcgtz_f32(v13)));
  v10 = 1;
  if ((vceq_f32(v17, vdup_lane_s32(v17, 1)).u8[0] & 1) == 0)
  {
    *(v7 + 22) = 1;
    LOBYTE(v8) = 1;
  }

LABEL_12:
  if (*(v7 + 20))
  {
    if (a2.f32[0] >= 1.0 || a2.f32[0] <= 0.0)
    {
      if (*a6.i32 >= 1.0)
      {
        LOBYTE(v10) = 1;
      }

      if (v10)
      {
        goto LABEL_23;
      }
    }

    else if (v10)
    {
LABEL_23:
      *(v7 + 20) = 0;
      goto LABEL_25;
    }
  }

  else
  {
    __asm { FMOV            V0.4S, #1.0 }

    _Q0.i64[0] = __PAIR64__(a6.u32[0], a2.u32[0]);
    a2.i64[0] = 0;
    a2.i64[1] = _Q0.i64[0];
    a1 = vcgtq_f32(_Q0, a2);
    if ((vminv_u16(vmovn_s32(a1)) & 1) == 0)
    {
      goto LABEL_25;
    }

    *(v7 + 20) = 1;
    if (COERCE_FLOAT(*(v7 + 96)) == 0.0)
    {
      *(v7 + 21) = 1;
    }
  }

  LOBYTE(v8) = 3;
LABEL_25:
  if (*(v7 + 21))
  {
    LOBYTE(v8) = 2;
  }

  *(v7 + 23) = v8;
  a1.i64[0] = *(v7 + 88);
  v45 = a1.i64[0];
  *a1.i32 = *&a7 - *a1.i32;
  a2.i32[0] = 1.0;
  v19.i64[0] = 0x8000000080000000;
  v19.i64[1] = 0x8000000080000000;
  LODWORD(v20) = vbslq_s8(v19, a2, a1).u32[0];
  if (*a1.i32 == 0.0)
  {
    v21 = 0.0;
  }

  else
  {
    v21 = v20;
  }

  if (*a1.i32 != 0.0)
  {
    *(v7 + 16) = v20;
  }

  v22 = *(v7 + 72);
  if (fabsf(*a1.i32) > 0.1)
  {
    *a1.i32 = (*&a7 - v22) * 0.0;
    *(v7 + 16) = 0;
  }

  v23 = fminf(v22 + *a1.i32, 1.0);
  v24 = 0.0;
  if (v23 < 0.0)
  {
    v25 = 0.0;
  }

  else
  {
    v25 = v23;
  }

  if (v21 > 0.0 && *(v7 + 16) > 0.0 && v25 < *&a7)
  {
    v24 = *&a7;
  }

  v46 = a6;
  v44 = a7;
  if (v21 < 0.0 && *&a7 < v25 && *(v7 + 16) < 0.0)
  {
    v24 = 1.0 - *&a7;
  }

  v27 = powf(v24, 5.0);
  v29 = *&v44 == *(&v45 + 1) && *&v44 == *&v45;
  if (v29 && v27 == 0.0)
  {
    v27 = 0.3;
  }

  *(v7 + 72) = (*&v44 * v27) + (v25 * (1.0 - v27));
  v30 = fminf(powf(fabsf((*v46.i32 + -0.5) + (*v46.i32 + -0.5)), 5.0) + 0.2, 1.0);
  *(v7 + 64) = (v30 * *v46.i32) + (*(v7 + 64) * (1.0 - v30));
  v31 = *(v7 + 48);
  [v31 _solveForInput:?];
  *(v7 + 76) = v32;
  v33 = *(v7 + 72);
  *&v34 = powf(fabsf((v33 + -0.5) + (v33 + -0.5)), 5.0);
  v35 = *(v7 + 23);
  if (v35 == 2)
  {
    LODWORD(v34) = *(v7 + 64);
    [v31 _solveForInput:v34];
    *(v7 + 76) = v36.i32[0];
    *(v7 + 80) = 1065353216;
  }

  else
  {
    if (v35 == 3)
    {
      LODWORD(v34) = *(v7 + 64);
      [*(v7 + 56) _solveForInput:v34];
      *(v7 + 76) = v36.i32[0];
    }

    else
    {
      v37 = fminf(*&v34 + 0.2, 1.0);
      if (*(v7 + 16) == 1.0)
      {
        v38 = 0.5;
        if (v33 <= 0.5)
        {
          v38 = v33;
        }

        *&v34 = (v38 + v38) + 0.0;
        if (v33 <= 0.0)
        {
          *&v34 = 0.0;
        }

        v39 = *(v7 + 80);
        v40 = *(v7 + 32);
      }

      else
      {
        if (v33 <= 1.0)
        {
          v41 = v33;
        }

        else
        {
          v41 = 1.0;
        }

        *&v34 = ((v41 + -0.5) + (v41 + -0.5)) + 0.0;
        if (v33 <= 0.5)
        {
          *&v34 = 0.0;
        }

        v39 = *(v7 + 80);
        v40 = *(v7 + 40);
      }

      [v40 _solveForInput:{v34, *&v44}];
      *v36.i32 = ((1.0 - v37) * v39) + (v37 * *v36.i32);
    }

    *(v7 + 80) = v36.i32[0];
  }

  v36.i32[0] = *(v7 + 84);
  result = vzip1_s32(v36, *(v7 + 88));
  v43 = vzip1_s32(v46, *(v7 + 96));
  *(v7 + 88) = result;
  *(v7 + 96) = v43;
  return result;
}

void sub_1000B7518(uint64_t a1, int32x4_t a2, float32x4_t a3, double a4, double a5, double a6, int32x2_t a7, double a8)
{
  if (*(v8 + 25) == 1)
  {
    *(v8 + 23) = 0;
    v35 = *a1;
    v37 = *(a1 + 4);
    *(v8 + 68) = 1.0 - v37;
    *(v8 + 72) = 1.0 - v37;
    *(v8 + 64) = v35;
  }

  else
  {
    LODWORD(a4) = *(a1 + 4);
    v35 = *a1;
    v37 = *&a4;
    *a2.i32 = fminf(*a1, 1.0);
    a3.f32[0] = fminf(*&a4, 1.0);
    sub_1000B7130(a2, a3, a4, a5, a6, a7, a8);
  }

  v34 = COERCE_DOUBLE(vcvt_f32_f64(*(a1 + 144)));
  swift_beginAccess();
  sub_1000B08C8(v34, v10, v11, v12, v13);
  swift_endAccess();
  v14.i32[0] = *(v8 + 76);
  v15 = *(v8 + 72);
  *&v14.i32[1] = 1.0 - *(v8 + 80);
  v14.i64[1] = __PAIR64__(LODWORD(v37), LODWORD(v35));
  *(v8 + 144) = dword_1000F40F0[*(v8 + 23)];
  v16 = vandq_s8(v14, vcgezq_f32(v14));
  __asm { FMOV            V1.4S, #1.0 }

  *(v8 + 148) = vminnmq_f32(v16, _Q1);
  v21 = *(v8 + 64);
  _Q1.f32[0] = v21;
  _Q1.f32[1] = 1.0 - v15;
  *v16.f32 = vand_s8(*_Q1.f32, vcgez_f32(*_Q1.f32));
  __asm { FMOV            V1.2S, #1.0 }

  *(v8 + 164) = vminnm_f32(*v16.f32, *_Q1.f32);
  if (*(v8 + 25) == 1)
  {
    v22 = sub_1000AB4A4(&off_10011F718);
  }

  else
  {
    v36 = v21;
    v22 = swift_beginAccess();
    if ((1.0 - v36) >= 0.0)
    {
      v24 = 1.0;
      v26 = 1.0 - v37;
      v25 = 0.0;
      if ((1.0 - v36) >= 1.0)
      {
        if (v26 >= 0.0)
        {
          v24 = 1.0;
          v25 = fminf(v26, 1.0);
        }
      }

      else
      {
        if (v26 >= 0.0)
        {
          v25 = fminf(v26, 1.0);
        }

        v24 = 1.0 - v36;
      }
    }

    else
    {
      v24 = 0.0;
      if ((1.0 - v37) >= 0.0)
      {
        v25 = fminf(1.0 - v37, 1.0);
      }

      else
      {
        v25 = 0.0;
      }
    }

    v23 = vmul_n_f32(vmul_n_f32(*(v8 + 304), v24), v25);
  }

  *(v8 + 176) = v23;
  if (*(v8 + 384))
  {
    __break(1u);
  }

  else
  {
    v28 = *(v8 + 336);
    v27 = *(v8 + 352);
    v29 = *(v8 + 368);
    v30 = *(v8 + 376);
    *(v8 + 192) = *(v8 + 320);
    *(v8 + 208) = v28;
    *(v8 + 224) = v27;
    *(v8 + 240) = v29;
    *(v8 + 248) = v30;
    v31 = sub_100084B30(v22);
    v33 = (v31 & 1) == 0 && v31 != 2;
    *(v8 + 256) = v33;
  }
}

id sub_1000B7744(void *a1, void *a2, uint64_t a3)
{
  [a1 setFragmentTexture:a2[1] atIndex:0];
  [a1 setFragmentTexture:a2[2] atIndex:1];
  [a1 setFragmentTexture:a2[3] atIndex:2];
  [a1 setFragmentTexture:a2[4] atIndex:3];
  [a1 setFragmentTexture:a2[5] atIndex:4];
  [a1 setFragmentTexture:a2[6] atIndex:5];
  [a1 setFragmentTexture:a2[7] atIndex:6];
  v6 = a2[8];
  if (*(v6 + 16) && (v7 = sub_10009F428(a3), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 8 * v7);
    swift_unknownObjectRetain();
  }

  else
  {
    v9 = 0;
  }

  [a1 setFragmentTexture:v9 atIndex:7];
  swift_unknownObjectRelease();
  [a1 setFragmentTexture:a2[9] atIndex:8];
  [a1 setFragmentTexture:a2[10] atIndex:9];
  v10 = a2[11];

  return [a1 setFragmentTexture:v10 atIndex:10];
}

void sub_1000B789C(uint64_t a1, void *a2, void *a3, int32x2_t a4, double a5)
{
  if (*(v5 + 64) == -1.0)
  {
    a4.i32[0] = *a1;
    *&a5 = 1.0 - *(a1 + 4);
    *(v5 + 64) = *a1;
    *(v5 + 68) = LODWORD(a5);
    *(v5 + 72) = LODWORD(a5);
    *(v5 + 76) = a4.i32[0];
    *(v5 + 80) = LODWORD(a5);
    *(v5 + 84) = LODWORD(a5);
    *(v5 + 88) = vdup_lane_s32(*&a5, 0);
    *(v5 + 96) = vdup_lane_s32(a4, 0);
  }

  v9 = sub_1000AFFF8();
  if (*(a1 + 52))
  {
    if (qword_10012F788 != -1)
    {
      swift_once();
    }

    v10 = sub_1000E96A4();
    sub_100007488(v10, qword_10013DE60);
    v11 = sub_1000E9684();
    v12 = sub_1000E9BA4();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "No look identifier provided", v13, 2u);
    }

    return;
  }

  v14 = v9;
  v67 = a3;
  v68 = a2;
  v15 = *(a1 + 48);
  v17 = *(a1 + 32);
  v16 = *(a1 + 40);
  v19 = *(a1 + 16);
  v18 = *(a1 + 24);

  v20._rawValue = &off_10011F660;
  v72._countAndFlagsBits = v19;
  v72._object = v18;
  v21 = sub_1000E9EC4(v20, v72);
  sub_1000127B0(v19, v18, v17, v16, v15, 0);
  if (v21 >= 3)
  {
    v21 = v14;
  }

  else
  {
    v21 = v21;
  }

  swift_beginAccess();
  v22 = *(v5 + 104);
  if (*(v22 + 16))
  {
    v23 = v5;

    v24 = sub_10009F428(v21);
    if (v25)
    {
      v66 = *(*(v22 + 56) + 8 * v24);
      swift_unknownObjectRetain();

      if (*(v5 + 384))
      {
        *&v26 = sub_1000B6FA0(v68);
        LOBYTE(v71[0]) = 0;
        *(v5 + 320) = v26;
        *(v5 + 336) = v27;
        *(v5 + 352) = v28;
        *(v5 + 368) = v29;
        *(v5 + 384) = 0;
      }

      v30 = [objc_allocWithZone(MTLRenderPassDescriptor) init];
      v31 = [v30 colorAttachments];
      v32 = [v31 objectAtIndexedSubscript:0];

      if (v32)
      {
        v33 = v32;
        [v33 setTexture:v68];
        [v33 setLoadAction:0];
        [v33 setStoreAction:1];

        v34 = [v67 renderCommandEncoderWithDescriptor:v30];
        if (!v34)
        {
          swift_unknownObjectRelease();

          return;
        }

        v69 = v21;
        v35 = *(v23 + 272);
        if ((v35 - 0x80000000000000) >> 56 == 255)
        {
          v36 = v34;
          *(v23 + 280) = v35 << 8;
          v37 = *(v23 + 264);
          v38 = [swift_unknownObjectRetain() contents];
          v39 = v37;
          v40 = *(v23 + 280);
          sub_1000B7518(a1, v41, v42, v43, v44, v45, v46, v47);
          memmove(&v38[v40], (v23 + 144), 0x71uLL);
          [v36 setRenderPipelineState:v66];
          [v36 setCullMode:2];
          [v36 setVertexBuffer:*(v23 + 264) offset:*(v23 + 280) atIndex:0];
          [v36 setFragmentBuffer:*(v23 + 264) offset:*(v23 + 280) atIndex:0];
          v48 = *(v23 + 424);
          v49 = *(v23 + 456);
          v50 = *(v23 + 472);
          v71[3] = *(v23 + 440);
          v71[4] = v49;
          v71[5] = v50;
          v51 = *(v23 + 408);
          v71[0] = *(v23 + 392);
          v71[1] = v51;
          v71[2] = v48;
          sub_1000B7E3C(v71, v70);
          sub_1000B7744(v36, v71, v69);
          sub_1000B7E74(v71);
          [v36 drawPrimitives:3 vertexStart:0 vertexCount:6];
          [v36 endEncoding];
          swift_unknownObjectRelease();

          swift_unknownObjectRelease();
          v52 = *(v23 + 272);
          v53 = __OFADD__(v52, 1);
          v54 = v52 + 1;
          if (!v53)
          {
            v55 = -v54 < 0;
            v56 = -v54 & 7;
            v57 = v54 & 7;
            if (!v55)
            {
              v57 = -v56;
            }

            *(v23 + 272) = v57;
            return;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
      }

      __break(1u);
      return;
    }
  }

  if (qword_10012F788 != -1)
  {
    swift_once();
  }

  v58 = sub_1000E96A4();
  sub_100007488(v58, qword_10013DE60);
  v59 = sub_1000E9684();
  v60 = sub_1000E9BA4();
  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    *&v71[0] = v62;
    *v61 = 136315138;
    v63 = sub_1000AFC98(v21);
    v65 = sub_100093A3C(v63, v64, v71);

    *(v61 + 4) = v65;
    _os_log_impl(&_mh_execute_header, v59, v60, "No render pipeline for look %s", v61, 0xCu);
    sub_100012710(v62);
  }
}

id sub_1000B7EA4(id a1, void *a2, char a3)
{
  v5 = sub_1000E98E4();
  v6 = [a2 newFunctionWithName:v5];

  if (!v6)
  {
    goto LABEL_10;
  }

  v7 = sub_1000E98E4();

  v8 = [a2 newFunctionWithName:v7];

  if (!v8)
  {
    swift_unknownObjectRelease();
LABEL_10:
    sub_1000B8968();
    swift_allocError();
    swift_willThrow();
    return a1;
  }

  v9 = [objc_allocWithZone(MTLRenderPipelineDescriptor) init];
  [v9 setVertexFunction:v6];
  [v9 setFragmentFunction:v8];
  v10 = [v9 colorAttachments];
  v11 = [v10 objectAtIndexedSubscript:0];

  if (v11)
  {
    [v11 setPixelFormat:81];
  }

  v12 = [v9 colorAttachments];
  v13 = [v12 objectAtIndexedSubscript:0];

  if (v13)
  {
    [v13 setBlendingEnabled:0];
  }

  v17 = 0;
  v14 = [a1 newRenderPipelineStateWithDescriptor:v9 error:&v17];
  if (v14)
  {
    a1 = v14;
    v15 = v17;
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {
    a1 = v17;
    sub_1000E92E4();

    swift_willThrow();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  return a1;
}

uint64_t sub_1000B8174@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = [objc_allocWithZone(MTKTextureLoader) initWithDevice:a1];
  if (qword_10012F6A8 != -1)
  {
    swift_once();
  }

  v5 = qword_100132CB0;
  v6 = sub_1000B0354(0x35562D4C5F595655, 0xED00003435562D33, 7501925, 0xE300000000000000, v4, qword_100132CB0);
  if (v2)
  {

    return swift_unknownObjectRelease();
  }

  else
  {
    v7 = v6;
    v34 = sub_1000B0354(0xD000000000000016, 0x80000001000F93F0, 7501925, 0xE300000000000000, v4, v5);
    v25 = sub_1000B0354(0xD000000000000019, 0x80000001000F9410, 7501925, 0xE300000000000000, v4, v5);
    v24 = sub_1000B0354(0xD00000000000001DLL, 0x80000001000F9430, 7501925, 0xE300000000000000, v4, v5);
    v23 = sub_1000B0354(0xD000000000000011, 0x80000001000F9450, 7501925, 0xE300000000000000, v4, v5);
    v22 = sub_1000B0354(0x562D315F6B73616DLL, 0xEE003435562D3335, 7501925, 0xE300000000000000, v4, v5);
    v21 = sub_1000B0354(0x562D325F6B73616DLL, 0xEE003435562D3335, 7501925, 0xE300000000000000, v4, v5);
    v20 = sub_1000B0354(0x562D335F6B73616DLL, 0xEE003435562D3335, 7501925, 0xE300000000000000, v4, v5);
    v19 = sub_1000B0354(0x562D345F6B73616DLL, 0xEE003435562D3335, 7501925, 0xE300000000000000, v4, v5);
    v8 = sub_1000B0354(0x562D6C6165766572, 0xEE003435562D3335, 7501925, 0xE300000000000000, v4, v5);
    v18 = sub_1000B0354(0xD00000000000001ELL, 0x80000001000F9470, 7501925, 0xE300000000000000, v4, v5);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33[0] = &_swiftEmptyDictionarySingleton;
    sub_1000B4D74(v18, 0, isUniquelyReferenced_nonNull_native);
    v10 = sub_1000B0354(0xD00000000000001ELL, 0x80000001000F94B0, 7501925, 0xE300000000000000, v4, v5);

    v11 = swift_isUniquelyReferenced_nonNull_native();
    sub_1000B4D74(v10, 1, v11);
    v12 = sub_1000B0354(0xD00000000000001ELL, 0x80000001000F9490, 7501925, 0xE300000000000000, v4, v5);

    v13 = swift_isUniquelyReferenced_nonNull_native();
    sub_1000B4D74(v12, 2, v13);
    swift_unknownObjectRelease();

    LOBYTE(v27) = 3;
    *(&v27 + 1) = v34;
    *&v28 = v25;
    *(&v28 + 1) = v24;
    *&v29 = v22;
    *(&v29 + 1) = v21;
    *&v30 = v20;
    *(&v30 + 1) = v19;
    *&v31 = &_swiftEmptyDictionarySingleton;
    *(&v31 + 1) = v23;
    *&v32 = v7;
    *(&v32 + 1) = v8;
    LOBYTE(v33[0]) = 3;
    v33[1] = v34;
    v33[2] = v25;
    v33[3] = v24;
    v33[4] = v22;
    v33[5] = v21;
    v33[6] = v20;
    v33[7] = v19;
    v33[8] = &_swiftEmptyDictionarySingleton;
    v33[9] = v23;
    v33[10] = v7;
    v33[11] = v8;
    sub_1000B7E3C(&v27, v26);
    result = sub_1000B7E74(v33);
    v15 = v30;
    a2[2] = v29;
    a2[3] = v15;
    v16 = v32;
    a2[4] = v31;
    a2[5] = v16;
    v17 = v28;
    *a2 = v27;
    a2[1] = v17;
  }

  return result;
}

uint64_t sub_1000B8900(uint64_t a1)
{
  v2 = sub_1000125FC(&qword_100132080, &qword_1000F2A20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000B8968()
{
  result = qword_100133140;
  if (!qword_100133140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133140);
  }

  return result;
}

uint64_t sub_1000B8A74(unsigned int a1)
{
  if (a1 >= 4)
  {
    return 4;
  }

  else
  {
    return 0x1020300u >> (8 * a1);
  }
}

unint64_t sub_1000B8AA8()
{
  result = qword_100133188[0];
  if (!qword_100133188[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100133188);
  }

  return result;
}

__n128 sub_1000B8AFC(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_1000B8B28(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 113))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 112);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1000B8B7C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 113) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 113) = 0;
    }

    if (a2)
    {
      *(result + 112) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1000B8C48()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1000B8C98(uint64_t result, uint64_t a2, id a3, uint64_t a4)
{
  *(a2 + 32) = 0;
  *(a2 + 16) = result;
  if ((result & 0x8000000000000000) == 0)
  {
    v4 = a2;
    v5 = result;
    if (result)
    {
      v8 = [a3 newBufferWithLength:a4 options:0];
      if (!v8)
      {
LABEL_11:
        sub_10001B6F8();
        swift_allocError();
        *v12 = 3;
        swift_willThrow();

        sub_1000125FC(&qword_100133DD0, &qword_1000F5F50);
        v4 = a2;
        swift_deallocPartialClassInstance();
        return v4;
      }

      v9 = v8;
      v10 = 0;
      while (1)
      {
        v14._countAndFlagsBits = sub_1000E9F54();
        sub_1000E99A4(v14);

        v11 = sub_1000E98E4();

        [v9 setLabel:v11];

        sub_1000E9A64();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1000E9AB4();
        }

        sub_1000E9AD4();
        if (v5 == ++v10)
        {
          break;
        }

        v9 = [a3 newBufferWithLength:a4 options:0];
        if (!v9)
        {
          goto LABEL_11;
        }
      }

      v4 = a2;
    }

    *(v4 + 24) = _swiftEmptyArrayStorage;
    return v4;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000B8ECC(uint64_t result, uint64_t a2, id a3, uint64_t a4)
{
  *(a2 + 32) = 0;
  *(a2 + 16) = result;
  if ((result & 0x8000000000000000) == 0)
  {
    v4 = a2;
    v5 = result;
    if (result)
    {
      v8 = [a3 newBufferWithLength:a4 options:0];
      if (!v8)
      {
LABEL_11:
        sub_10001B6F8();
        swift_allocError();
        *v12 = 3;
        swift_willThrow();

        sub_1000125FC(&qword_100133DD0, &qword_1000F5F50);
        v4 = a2;
        swift_deallocPartialClassInstance();
        return v4;
      }

      v9 = v8;
      v10 = 0;
      while (1)
      {
        sub_1000E9D64(16);

        v14._countAndFlagsBits = sub_1000E9F54();
        sub_1000E99A4(v14);

        v11 = sub_1000E98E4();

        [v9 setLabel:v11];

        sub_1000E9A64();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1000E9AB4();
        }

        sub_1000E9AD4();
        if (v5 == ++v10)
        {
          break;
        }

        v9 = [a3 newBufferWithLength:a4 options:0];
        if (!v9)
        {
          goto LABEL_11;
        }
      }

      v4 = a2;
    }

    *(v4 + 24) = _swiftEmptyArrayStorage;
    return v4;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000B911C(uint64_t result, void *a2, id a3, uint64_t a4)
{
  a2[4] = 0;
  a2[2] = result;
  if ((result & 0x8000000000000000) == 0)
  {
    v5 = result;
    if (result)
    {
      v8 = [a3 newBufferWithLength:a4 options:32];
      if (!v8)
      {
LABEL_11:
        sub_10001B6F8();
        swift_allocError();
        *v11 = 3;
        swift_willThrow();

        sub_1000125FC(&qword_100133DD0, &qword_1000F5F50);
        swift_deallocPartialClassInstance();
        return a2;
      }

      v9 = v8;
      while (1)
      {
        v10 = sub_1000E98E4();
        [v9 setLabel:v10];

        sub_1000E9A64();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1000E9AB4();
        }

        sub_1000E9AD4();
        if (!--v5)
        {
          break;
        }

        v9 = [a3 newBufferWithLength:a4 options:32];
        if (!v9)
        {
          goto LABEL_11;
        }
      }
    }

    a2[3] = _swiftEmptyArrayStorage;
    return a2;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000B92F4(uint64_t result, void *a2, id a3, uint64_t a4)
{
  a2[4] = 0;
  a2[2] = result;
  if ((result & 0x8000000000000000) == 0)
  {
    v5 = result;
    if (result)
    {
      v8 = [a3 newBufferWithLength:a4 options:32];
      if (!v8)
      {
LABEL_11:
        sub_10001B6F8();
        swift_allocError();
        *v11 = 3;
        swift_willThrow();

        sub_1000125FC(&qword_100133DD0, &qword_1000F5F50);
        swift_deallocPartialClassInstance();
        return a2;
      }

      v9 = v8;
      while (1)
      {
        v10 = sub_1000E98E4();
        [v9 setLabel:v10];

        sub_1000E9A64();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1000E9AB4();
        }

        sub_1000E9AD4();
        if (!--v5)
        {
          break;
        }

        v9 = [a3 newBufferWithLength:a4 options:32];
        if (!v9)
        {
          goto LABEL_11;
        }
      }
    }

    a2[3] = _swiftEmptyArrayStorage;
    return a2;
  }

  __break(1u);
  return result;
}

__n128 Lens.__allocating_init(translation:aodTranslation:radii:aodRadii:ior:mask:)(unsigned __int8 a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5, float a6)
{
  v8 = swift_allocObject();
  v8[1] = a2;
  v8[2] = a4;
  result = a3;
  v8[3] = a5;
  v8[4] = a3;
  v8[5].n128_f32[0] = a6;
  v8[5].n128_u8[4] = a1;
  return result;
}

__n128 Lens.translation.setter(__n128 a1)
{
  swift_beginAccess();
  result = a1;
  v1[1] = a1;
  return result;
}

__n128 ToriLight.scale.setter(__n128 a1)
{
  swift_beginAccess();
  result = a1;
  v1[2] = a1;
  return result;
}

__n128 Lens.aodRadii.setter(__n128 a1)
{
  swift_beginAccess();
  result = a1;
  v1[3] = a1;
  return result;
}

__n128 Lens.aodTranslation.setter(__n128 a1)
{
  swift_beginAccess();
  result = a1;
  v1[4] = a1;
  return result;
}

__n128 *Lens.init(translation:aodTranslation:radii:aodRadii:ior:mask:)(unsigned __int8 a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5, float a6)
{
  v6[1] = a2;
  v6[2] = a4;
  v6[3] = a5;
  v6[4] = a3;
  v6[5].n128_f32[0] = a6;
  v6[5].n128_u8[4] = a1;
  return v6;
}

__n128 Lens.getEllipsoid(progress:scaleBy:)(float a1)
{
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  v5 = v1[4];
  swift_beginAccess();
  v2 = vsubq_f32(v1[1], v5);
  *&v3 = vaddq_f32(v5, vmulq_n_f32(v2, a1)).u64[0];
  *(&v3 + 2) = v5.f32[2] + vmuls_lane_f32(a1, v2, 2);
  HIDWORD(v3) = 0;
  v7 = v3;
  swift_beginAccess();
  return v7;
}

__n128 sub_1000B9A28(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1000B9A3C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 33))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000B9A5C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 33) = v3;
  return result;
}

void *sub_1000B9AA8(void *result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 6) = *(a2 + 6);
  *result = v2;
  return result;
}

uint64_t sub_1000B9ABC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFFF && *(a1 + 14))
  {
    return (*a1 + 4095);
  }

  v3 = ((*(a1 + 12) >> 15) | (2 * ((*(a1 + 12) >> 4) & 0x7E0 | (*(a1 + 12) >> 3)))) ^ 0xFFF;
  if (v3 >= 0xFFE)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1000B9B18(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFFE)
  {
    *(result + 12) = 0;
    *(result + 8) = 0;
    *result = a2 - 4095;
    if (a3 >= 0xFFF)
    {
      *(result + 14) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFFF)
    {
      *(result + 14) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x7FF | ((-a2 & 0xFFF) << 11);
      *result = 0;
      *(result + 8) = 0;
      *(result + 12) = ((v3 << 36) & 0xFE0000000000 | ((v3 & 0x1F) << 35)) >> 32;
    }
  }

  return result;
}

uint64_t sub_1000B9B84(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = a1 + 8;
  v3 = v2 | (*(result + 4) << 32);
  *result = v2;
  *(result + 4) = WORD2(v3) & 0x7FFF;
  return result;
}

uint64_t sub_1000B9BA0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  result = a1 + 8;
  v4 = (v3 | (*(result + 4) << 32)) & 0x107FFFFFFFFLL | (a2 << 47);
  *result = v3;
  *(result + 4) = WORD2(v4);
  return result;
}

uint64_t getEnumTagSinglePayload for SpaceScene.BackgroundGradient.LookupKey(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SpaceScene.BackgroundGradient.LookupKey(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 2) = v5;
      }

      else
      {
        *(result + 2) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *(result + 1) = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1000B9D5C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 520))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 176);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000B9DA4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *(result + 504) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 520) = 1;
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
      *(result + 176) = (a2 - 1);
      return result;
    }

    *(result + 520) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1000B9E78(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 176) = *(a2 + 22);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_1000B9EB4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 184))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 144);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1000B9F10(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 184) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 184) = 0;
    }

    if (a2)
    {
      *(result + 144) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SpaceScene.Light.Gobo(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_20;
  }

  v2 = a2 + 12;
  if (a2 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 12;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 12;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 9)
  {
    v8 = v7 - 8;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 5)
  {
    return v8 - 4;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SpaceScene.Light.Gobo(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 12;
  if (a3 + 12 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xF4)
  {
    v5 = 0;
  }

  if (a2 > 0xF3)
  {
    v6 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1000BA0F8(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 9)
  {
    return v1 - 8;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1000BA10C(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 8;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SpaceScene.Light.Gobo.Texture(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SpaceScene.Light.Gobo.Texture(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_1000BA27C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
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

  v3 = sub_1000A36B4(isUniquelyReferenced_nonNull_native, v11, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_1000BA374(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_1000E9E64();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    v6 = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_1000E9E64();
  v5 = __OFADD__(v13, v3);
  v6 = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_1000C1888(v6, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1000C4DB8(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
}

__n64 sub_1000BA464(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6, float a7)
{
  v7.i32[0] = a4;
  if (a6)
  {
    if (a6 == 1)
    {
      v8.i32[0] = a1;
      if (a3)
      {
        if (a3 == 1)
        {
          result.n64_u32[1] = 0;
          result.n64_f32[0] = ((*&a1 - *&a4) * a7) + *&a4;
          return result;
        }

        v27 = *(&a2 + 1);
        v25 = a2;
        v26.f32[0] = *(&a1 + 1) + -1.0;
      }

      else
      {
        v25 = a2;
        v26.f32[0] = *(&a1 + 1) + -1.0;
        v27 = 6500.0;
      }

      v8.i32[1] = v25;
      __asm { FMOV            V4.2S, #-1.0 }

      v29 = vmul_n_f32(vadd_f32(v8, _D4), a7);
      __asm { FMOV            V4.2S, #1.0 }

      v31 = vadd_f32(v29, _D4);
      v26.f32[1] = v27 - *&a4;
      _D4.i32[1] = a4;
      v18 = vadd_f32(vmul_n_f32(v26, a7), _D4);
      v32.i64[0] = v31.u32[0];
      v32.i64[1] = v31.u32[1];
      v33 = v32;
      return vorrq_s8(vshll_n_s32(v18, 0x20uLL), v33).u64[0];
    }

    v19.i64[0] = a4;
    v19.i64[1] = a5;
    v20 = vshrn_n_s64(v19, 0x20uLL);
    v21.i32[0] = a1;
    if (a3)
    {
      if (a3 == 1)
      {
        v7.i32[1] = a5;
        __asm { FMOV            V4.2S, #1.0 }

        v23 = vsub_f32(_D4, v7);
        _D4.i32[1] = a1;
        v24 = vsub_f32(_D4, v20);
        v17 = vadd_f32(vmul_n_f32(v23, a7), v7);
      }

      else
      {
        v38.i64[0] = a1;
        v38.i64[1] = a2;
        v21.i32[1] = a2;
        v7.i32[1] = a5;
        v17 = vadd_f32(vmul_n_f32(vsub_f32(v21, v7), a7), v7);
        v24 = vsub_f32(vshrn_n_s64(v38, 0x20uLL), v20);
      }
    }

    else
    {
      v21.i32[1] = a2;
      v7.i32[1] = a5;
      v36 = vmul_n_f32(vsub_f32(v21, v7), a7);
      v17 = vadd_f32(v36, v7);
      v36.i32[0] = 1170939904;
      v37 = vdup_lane_s32(v36, 0);
      v37.i32[0] = HIDWORD(a1);
      v24 = vsub_f32(v37, v20);
    }

    v18 = vadd_f32(vmul_n_f32(v24, a7), v20);
  }

  else
  {
    v10.i32[0] = HIDWORD(a4);
    if (!a3)
    {
      return (COERCE_UNSIGNED_INT(((*&a1 - *&a4) * a7) + *&a4) | (COERCE_UNSIGNED_INT(((*(&a1 + 1) - *(&a4 + 1)) * a7) + *(&a4 + 1)) << 32));
    }

    if (a3 == 1)
    {
      v7.i32[1] = a5;
      __asm { FMOV            V3.2S, #1.0 }

      v16 = vsub_f32(_D3, v7);
      _D3.i32[0] = vsub_f32(_D3, __PAIR64__(a1, HIDWORD(a4))).u32[0];
      _D3.i32[1] = vadd_f32(__PAIR64__(a1, *(&a4 + 4)), vdup_n_s32(0xC5CB2000)).i32[1];
      v17 = vadd_f32(vmul_n_f32(v16, a7), v7);
      v10.i32[1] = 1170939904;
      v18 = vadd_f32(vmul_n_f32(_D3, a7), v10);
    }

    else
    {
      v34.f32[0] = *(&a1 + 1) - *(&a4 + 1);
      v35.i32[0] = vdup_lane_s32(__PAIR64__(a1, HIDWORD(a4)), 1).u32[0];
      v35.i32[1] = a2;
      v7.i32[1] = a5;
      v17 = vadd_f32(vmul_n_f32(vsub_f32(v35, v7), a7), v7);
      v34.f32[1] = *(&a2 + 1) + -6500.0;
      v10.i32[1] = 1170939904;
      v18 = vadd_f32(vmul_n_f32(v34, a7), v10);
    }
  }

  v39.i64[0] = v17.u32[0];
  v39.i64[1] = v17.u32[1];
  v33 = v39;
  return vorrq_s8(vshll_n_s32(v18, 0x20uLL), v33).u64[0];
}

uint64_t sub_1000BA704@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *&v72 = a3;
  *(&v72 + 1) = a4;
  v97 = *v5;
  v7 = *(v5 + 16);
  v86 = *(v5 + 24);
  v71 = *(v5 + 48);
  v8 = a1 + 64;
  v9 = 1 << *(a1 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a1 + 64);
  sub_1000C6180(v5, &v92);
  v12 = (v9 + 63) >> 6;
  v75 = a1;

  v13 = 0;
  v74 = v8;
  while (v11)
  {
    v15 = v13;
LABEL_11:
    v16 = 24 * (__clz(__rbit64(v11)) | (v15 << 6));
    v17 = *(v75 + 48) + v16;
    v19 = *v17;
    v18 = *(v17 + 8);
    v20 = *(v17 + 16);
    v21 = *(v75 + 56) + v16;
    v77 = *v21;
    v78 = *(v21 + 4);
    v79 = *(v21 + 8);
    v81 = *(v21 + 12);
    v83 = *(v21 + 16);
    v84 = *(v21 + 20);
    sub_1000A1DD4(*v17, v18, *(v17 + 16));
    v22 = v7;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v92 = v22;
    v25 = sub_10009F2C8(v19, v18, v20);
    v26 = v22[2];
    v27 = (v24 & 1) == 0;
    v28 = v26 + v27;
    if (__OFADD__(v26, v27))
    {
      goto LABEL_42;
    }

    v29 = v24;
    if (v22[3] >= v28)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1000B5FAC();
      }
    }

    else
    {
      sub_1000B264C(v28, isUniquelyReferenced_nonNull_native);
      v30 = sub_10009F2C8(v19, v18, v20);
      if ((v29 & 1) != (v31 & 1))
      {
        goto LABEL_46;
      }

      v25 = v30;
    }

    v11 &= v11 - 1;
    v7 = v92;
    if (v29)
    {
      v14 = *(v92 + 56) + 24 * v25;
      *v14 = v77;
      *(v14 + 4) = v78;
      *(v14 + 8) = v79;
      *(v14 + 12) = v81;
      *(v14 + 16) = v83;
      *(v14 + 20) = v84;
      sub_1000A1DF8(v19, v18, v20);
    }

    else
    {
      *(v92 + 8 * (v25 >> 6) + 64) |= 1 << v25;
      v32 = v7[6] + 24 * v25;
      *v32 = v19;
      *(v32 + 8) = v18;
      *(v32 + 16) = v20;
      v33 = v7[7] + 24 * v25;
      *v33 = v77;
      *(v33 + 4) = v78;
      *(v33 + 8) = v79;
      *(v33 + 12) = v81;
      *(v33 + 16) = v83;
      *(v33 + 20) = v84;
      v34 = v7[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        goto LABEL_44;
      }

      v7[2] = v36;
    }

    v13 = v15;
    v8 = v74;
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      goto LABEL_41;
    }

    if (v15 >= v12)
    {
      break;
    }

    v11 = *(v8 + 8 * v15);
    ++v13;
    if (v11)
    {
      goto LABEL_11;
    }
  }

  v80 = v7;

  v37 = a2 + 64;
  v38 = 1 << *(a2 + 32);
  v39 = -1;
  if (v38 < 64)
  {
    v39 = ~(-1 << v38);
  }

  v40 = v39 & *(a2 + 64);
  v41 = (v38 + 63) >> 6;

  v42 = 0;
  v82 = v41;
  while (v40)
  {
    v44 = v42;
LABEL_30:
    v45 = __clz(__rbit64(v40)) | (v44 << 6);
    v46 = *(a2 + 48) + 24 * v45;
    v48 = *v46;
    v47 = *(v46 + 8);
    v49 = *(v46 + 16);
    v50 = *(a2 + 56) + 16 * v45;
    v85 = *v50;
    v51 = *(v50 + 8);
    v52 = *(v50 + 12);
    sub_1000A1DD4(*v46, v47, *(v46 + 16));
    v53 = swift_isUniquelyReferenced_nonNull_native();
    *&v92 = v86;
    v54 = sub_10009F2C8(v48, v47, v49);
    v56 = *(v86 + 16);
    v57 = (v55 & 1) == 0;
    v35 = __OFADD__(v56, v57);
    v58 = v56 + v57;
    if (v35)
    {
      goto LABEL_43;
    }

    v59 = v55;
    if (*(v86 + 24) >= v58)
    {
      if ((v53 & 1) == 0)
      {
        v66 = v54;
        sub_1000B5E1C();
        v54 = v66;
      }
    }

    else
    {
      sub_1000B2368(v58, v53);
      v54 = sub_10009F2C8(v48, v47, v49);
      if ((v59 & 1) != (v60 & 1))
      {
        goto LABEL_46;
      }
    }

    v40 &= v40 - 1;
    v61 = v92;
    v86 = v92;
    if (v59)
    {
      v43 = *(v92 + 56) + 16 * v54;
      *v43 = v85;
      *(v43 + 8) = v51;
      *(v43 + 12) = v52;
      sub_1000A1DF8(v48, v47, v49);
    }

    else
    {
      *(v92 + 8 * (v54 >> 6) + 64) |= 1 << v54;
      v62 = v61[6] + 24 * v54;
      *v62 = v48;
      *(v62 + 8) = v47;
      *(v62 + 16) = v49;
      v63 = v61[7] + 16 * v54;
      *v63 = v85;
      *(v63 + 8) = v51;
      *(v63 + 12) = v52;
      v64 = v61[2];
      v35 = __OFADD__(v64, 1);
      v65 = v64 + 1;
      if (v35)
      {
        goto LABEL_45;
      }

      v61[2] = v65;
    }

    v42 = v44;
    v41 = v82;
    v37 = a2 + 64;
  }

  while (1)
  {
    v44 = v42 + 1;
    if (__OFADD__(v42, 1))
    {
      break;
    }

    if (v44 >= v41)
    {

      v67 = *(v70 + 40);
      v98 = *(v70 + 32);
      v99[0] = v67;

      sub_1000C6220(&v98);

      sub_1000C6220(v99);
      v88 = v97;
      *&v89 = v80;
      *(&v89 + 1) = v86;
      v90 = v72;
      v91 = v71;
      v92 = v97;
      v93 = v80;
      v94 = v86;
      v95 = v72;
      v96 = v71;
      sub_1000C6180(&v88, v87);
      result = sub_100081544(&v92);
      v69 = v89;
      *a5 = v88;
      *(a5 + 16) = v69;
      *(a5 + 32) = v90;
      *(a5 + 48) = v91;
      return result;
    }

    v40 = *(v37 + 8 * v44);
    ++v42;
    if (v40)
    {
      goto LABEL_30;
    }
  }

LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  result = sub_1000E9FA4();
  __break(1u);
  return result;
}

float sub_1000BAC84@<S0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, float *a5@<X8>, float a6@<S0>)
{
  v7 = v6[1];
  if (a4)
  {
    v8 = v6[3];
    v9 = v6[5];
    v10 = 1.0;
    v11 = 1.0;
    v12 = 1.0;
  }

  else
  {
    v11 = *&a1;
    v7 = v7 + ((*(&a1 + 1) - v7) * a6);
    v10 = *&a2;
    v8 = v6[3] + ((*(&a2 + 1) - v6[3]) * a6);
    v12 = *&a3;
    v9 = v6[5] + ((*(&a3 + 1) - v6[5]) * a6);
  }

  v13 = v6[4];
  v14 = v6[2] + ((v10 - v6[2]) * a6);
  *a5 = *v6 + ((v11 - *v6) * a6);
  a5[1] = v7;
  a5[2] = v14;
  result = v13 + ((v12 - v13) * a6);
  a5[3] = v8;
  a5[4] = result;
  a5[5] = v9;
  return result;
}

double sub_1000BAD3C()
{
  if ((*(v0 + 24) & 0x8000000000000000) != 0)
  {
    *&v1 = 0x3F8000003F800000;
  }

  else
  {
    v1 = *(v0 + 32);
  }

  return *&v1;
}

void sub_1000BAD58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((*(v6 + 24) & 0x8000000000000000) != 0)
  {
    sub_1000BAD58(a1, a2, a3, a4, a5, a6);
    sub_1000BAD58(v7, v8, v9, v10, v11, v12);
  }
}

void sub_1000BADD8(uint64_t a1@<X0>, uint64_t a2@<X8>, float a3@<S1>)
{
  if (qword_10012F4E8 != -1)
  {
    swift_once();
  }

  v21 = xmmword_10013A9A0;
  v22 = *algn_10013A9B0;
  v23 = xmmword_10013A9C0;
  v6 = sub_100013568(&v21);
  if (qword_10012F4E0 == -1)
  {
    if (a1 >= -32768)
    {
      goto LABEL_5;
    }

LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v19 = v7;
  v20 = v6;
  v17 = v9;
  v18 = v8;
  swift_once();
  v9 = v17;
  v8 = v18;
  v7 = v19;
  v6 = v20;
  if (a1 < -32768)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (a1 < 0x8000)
  {
    v10 = xmmword_10013A960;
    v11 = *algn_10013A970;
    v12 = xmmword_10013A980;
    v13 = unk_10013A990;
    v14 = v21;
    v15 = v22;
    v24 = v21;
    v25 = v22;
    v16 = v23;
    v26 = v23;
    *a2 = v6;
    *(a2 + 16) = v7;
    *(a2 + 32) = v8;
    *(a2 + 48) = v9;
    *(a2 + 64) = v10;
    *(a2 + 80) = v11;
    *(a2 + 96) = v12;
    *(a2 + 112) = v13;
    *(a2 + 128) = v14;
    *(a2 + 144) = v15;
    *(a2 + 160) = v16;
    *(a2 + 176) = 0;
    *(a2 + 184) = 0.5 / a3;
    *(a2 + 188) = a1;
    *(a2 + 190) = 0;
    return;
  }

LABEL_9:
  __break(1u);
}

void sub_1000BAF14(uint64_t a1@<X0>, uint64_t a2@<X8>, unsigned int a3@<S1>, float a4@<S2>)
{
  LODWORD(v6) = 0;
  *(&v6 + 1) = a4;
  v30[0] = a3;
  v30[1] = v6;
  v30[2] = xmmword_1000EC920;
  v7 = sub_100013568(v30);
  if (qword_10012F4E0 != -1)
  {
    v28 = v7;
    v24 = v9;
    v26 = v8;
    v22 = v10;
    swift_once();
    v10 = v22;
    v9 = v24;
    v8 = v26;
    v7 = v28;
  }

  v11 = xmmword_10013A960;
  v12 = *algn_10013A970;
  v13 = xmmword_10013A980;
  v14 = unk_10013A990;
  if (qword_10012F4E8 == -1)
  {
    if (a1 >= -32768)
    {
      goto LABEL_5;
    }

LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v29 = v7;
  v25 = v9;
  v27 = v8;
  v21 = xmmword_10013A960;
  v23 = v10;
  v19 = xmmword_10013A980;
  v20 = *algn_10013A970;
  v18 = unk_10013A990;
  swift_once();
  v14 = v18;
  v13 = v19;
  v12 = v20;
  v11 = v21;
  v10 = v23;
  v9 = v25;
  v8 = v27;
  v7 = v29;
  if (a1 < -32768)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (a1 < 0x8000)
  {
    v16 = xmmword_10013A9A0;
    v15 = *algn_10013A9B0;
    v17 = xmmword_10013A9C0;
    *a2 = v7;
    *(a2 + 16) = v8;
    *(a2 + 32) = v9;
    *(a2 + 48) = v10;
    *(a2 + 64) = v11;
    *(a2 + 80) = v12;
    *(a2 + 96) = v13;
    *(a2 + 112) = v14;
    *(a2 + 128) = v16;
    *(a2 + 144) = v15;
    *(a2 + 160) = v17;
    *(a2 + 176) = 0;
    *(a2 + 184) = 0;
    *(a2 + 188) = a1;
    *(a2 + 190) = 0;
    return;
  }

LABEL_9:
  __break(1u);
}

double sub_1000BB094(uint64_t a1, uint64_t a2, char a3, double a4, float32x4_t a5, double a6, float32x4_t a7)
{
  a5.i32[0] = a1;
  if (a3)
  {
    if (a3 == 1)
    {
      v7 = 0uLL;
      if (*&a1 != 0.0)
      {
        v7.i32[0] = 1170939904;
        v11 = vdupq_lane_s32(*&vcgeq_f32(v7, a5), 0);
        v11.i64[0] = vaddq_f32(vbslq_s8(v11, xmmword_1000F45D0, xmmword_1000F45C0), vdivq_f32(vbslq_s8(v11, xmmword_1000F45F0, xmmword_1000F45E0), vaddq_f32(vbslq_s8(v11, xmmword_1000F4610, xmmword_1000F4600), vdupq_lane_s32(*a5.f32, 0)))).u64[0];
        v11.i64[1] = COERCE_UNSIGNED_INT((-8257.8 / (*&a1 + 2575.3)) + 1.9099);
        v7 = vmaxnmq_f32(v11, 0);
        v7.i32[3] = 0;
        v7.i64[0] = vminnmq_f32(v7, xmmword_1000EC900).u64[0];
      }
    }

    else
    {
      a7.i32[0] = HIDWORD(a2);
      v8 = 0uLL;
      if (*(&a2 + 1) != 0.0)
      {
        v8.i32[0] = 1170939904;
        v8 = vdupq_lane_s32(*&vcgeq_f32(v8, a7), 0);
        v9.i64[0] = vaddq_f32(vbslq_s8(v8, xmmword_1000F45D0, xmmword_1000F45C0), vdivq_f32(vbslq_s8(v8, xmmword_1000F45F0, xmmword_1000F45E0), vaddq_f32(vbslq_s8(v8, xmmword_1000F4610, xmmword_1000F4600), vdupq_lane_s32(*a7.f32, 0)))).u64[0];
        v9.i64[1] = COERCE_UNSIGNED_INT((-8257.8 / (*(&a2 + 1) + 2575.3)) + 1.9099);
        v10 = vmaxnmq_f32(v9, 0);
        v10.i32[3] = 0;
        v8.i64[0] = vminnmq_f32(v10, xmmword_1000EC900).u64[0];
      }

      a5.i32[1] = HIDWORD(a1);
      *v7.f32 = vmul_f32(*v8.f32, *a5.f32);
    }
  }

  else
  {
    v7.i64[0] = a1;
  }

  return *v7.i64;
}

uint64_t sub_1000BB290(unint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 4u)
  {
    if (a3 <= 1u)
    {
      if (a3)
      {
        v3 = 0x41206C6C6966;
        goto LABEL_28;
      }

      v7 = 0x20412074736F6F62;
    }

    else if (a3 == 2)
    {
      v7 = 0x2041206D6972;
    }

    else
    {
      if (a3 == 3)
      {
        v3 = 0x42206C6C6966;
LABEL_28:
        v7 = v3 & 0xFFFFFFFFFFFFLL | 0x20000000000000;
        goto LABEL_30;
      }

      v7 = 0x2042206D6972;
    }

LABEL_30:
    v11 = v7;
    goto LABEL_31;
  }

  if (a3 <= 6u)
  {
    if (a3 == 5)
    {
      sub_1000E9D64(18);

      v11 = 0xD000000000000010;
LABEL_31:
      v14._countAndFlagsBits = sub_1000E9F54();
      sub_1000E99A4(v14);

      return v11;
    }

    v7 = 0x6972207373616C67;
    goto LABEL_30;
  }

  if (a3 == 7)
  {

    return a1;
  }

  if (a3 == 8)
  {
    v4 = *(a1 + 33);
    v11 = sub_1000BB290(*(a1 + 16), *(a1 + 24), *(a1 + 32));
    v12._countAndFlagsBits = 10272;
    v12._object = 0xE200000000000000;
    sub_1000E99A4(v12);
    if (v4)
    {
      v5._countAndFlagsBits = 28265;
    }

    else
    {
      v5._countAndFlagsBits = 7632239;
    }

    if (v4)
    {
      v6 = 0xE200000000000000;
    }

    else
    {
      v6 = 0xE300000000000000;
    }

    v5._object = v6;
    sub_1000E99A4(v5);

    v13._countAndFlagsBits = 41;
    v13._object = 0xE100000000000000;
    sub_1000E99A4(v13);
    return v11;
  }

  if (a1 <= 2)
  {
    if (a1 ^ 1 | a2)
    {
      v10 = 0x42206F626F67;
    }

    else
    {
      v10 = 0x412079656BLL;
    }

    if (a1 | a2)
    {
      return v10;
    }

    else
    {
      return 0x41206F626F67;
    }
  }

  else if (a1 > 4)
  {
    if (a1 ^ 5 | a2)
    {
      return 0x6966207373616C67;
    }

    else
    {
      return 0x636162206F626F67;
    }
  }

  else if (a1 ^ 3 | a2)
  {
    return 0x422079656BLL;
  }

  else
  {
    return 0x422074736F6F62;
  }
}

uint64_t sub_1000BB58C(unint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3 <= 4u)
  {
    if (a3 > 1u)
    {
      if (a3 == 2)
      {
        if (a6 != 2)
        {
          return 0;
        }
      }

      else if (a3 == 3)
      {
        if (a6 != 3)
        {
          return 0;
        }
      }

      else if (a6 != 4)
      {
        return 0;
      }

      return a1 == a4;
    }

    if (a3)
    {
      if (a6 != 1)
      {
        return 0;
      }

      return a1 == a4;
    }

    if (!a6)
    {
      return a1 == a4;
    }

    return 0;
  }

  if (a3 <= 6u)
  {
    if (a3 == 5)
    {
      if (a6 != 5)
      {
        return 0;
      }

      return a1 == a4;
    }

    if (a6 == 6)
    {
      return a1 == a4;
    }

    return 0;
  }

  if (a3 == 7)
  {
    if (a6 != 7)
    {
      return 0;
    }

    if (a1 == a4 && a2 == a5)
    {
      return 1;
    }

    else
    {

      return sub_1000E9F74();
    }
  }

  else
  {
    if (a3 != 8)
    {
      if (a1 <= 2)
      {
        if (a1 | a2)
        {
          if (a1 ^ 1 | a2)
          {
            if (a6 == 9 && a4 == 2 && !a5)
            {
              return 1;
            }
          }

          else if (a6 == 9 && a4 == 1 && !a5)
          {
            return 1;
          }
        }

        else if (a6 == 9 && !(a5 | a4))
        {
          return 1;
        }
      }

      else if (a1 > 4)
      {
        if (a1 ^ 5 | a2)
        {
          if (a6 == 9 && a4 == 6 && !a5)
          {
            return 1;
          }
        }

        else if (a6 == 9 && a4 == 5 && !a5)
        {
          return 1;
        }
      }

      else if (a1 ^ 3 | a2)
      {
        if (a6 == 9 && a4 == 4 && !a5)
        {
          return 1;
        }
      }

      else if (a6 == 9 && a4 == 3 && !a5)
      {
        return 1;
      }

      return 0;
    }

    if (a6 != 8)
    {
      return 0;
    }

    v7 = *(a1 + 33);
    v8 = *(a4 + 33);
    if (sub_1000BB58C(*(a1 + 16), *(a1 + 24), *(a1 + 32), *(a4 + 16), *(a4 + 24), *(a4 + 32)))
    {
      return v7 ^ v8 ^ 1u;
    }

    else
    {
      return 0;
    }
  }
}

void sub_1000BB81C(uint64_t a1, Swift::UInt a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 4u)
  {
    if (a4 <= 1u)
    {
      if (a4)
      {
        v6 = 3;
      }

      else
      {
        v6 = 1;
      }
    }

    else if (a4 == 2)
    {
      v6 = 4;
    }

    else if (a4 == 3)
    {
      v6 = 8;
    }

    else
    {
      v6 = 9;
    }

LABEL_25:
    sub_1000EA034(v6);
    v11 = a2;
LABEL_26:
    sub_1000EA034(v11);
    return;
  }

  if (a4 <= 6u)
  {
    if (a4 == 5)
    {
      v6 = 11;
    }

    else
    {
      v6 = 12;
    }

    goto LABEL_25;
  }

  if (a4 != 7)
  {
    if (a4 == 8)
    {
      v7 = *(a2 + 16);
      v8 = *(a2 + 24);
      v9 = *(a2 + 33);
      v10 = *(a2 + 32);
      sub_1000EA034(0xFuLL);
      sub_1000BB81C(a1, v7, v8, v10);
      sub_1000EA044(v9);
      return;
    }

    if (a2 <= 2)
    {
      if (a2 | a3)
      {
        if (a2 ^ 1 | a3)
        {
          v11 = 5;
        }

        else
        {
          v11 = 2;
        }
      }

      else
      {
        v11 = 0;
      }
    }

    else if (a2 > 4)
    {
      if (a2 ^ 5 | a3)
      {
        v11 = 13;
      }

      else
      {
        v11 = 10;
      }
    }

    else if (a2 ^ 3 | a3)
    {
      v11 = 7;
    }

    else
    {
      v11 = 6;
    }

    goto LABEL_26;
  }

  sub_1000EA034(0xEuLL);

  sub_1000E9974();
}

Swift::Int sub_1000BB9EC()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_1000EA024();
  sub_1000BB81C(v5, v1, v2, v3);
  return sub_1000EA064();
}

Swift::Int sub_1000BBA54(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  sub_1000EA024();
  sub_1000BB81C(v6, v2, v3, v4);
  return sub_1000EA064();
}

unint64_t sub_1000BBABC()
{
  result = qword_100133378;
  if (!qword_100133378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133378);
  }

  return result;
}

BOOL sub_1000BBB3C(float32x4_t *a1, float32x4_t *a2)
{
  if ((vminv_u16(vmovn_s32(vceqq_f32(*a1, *a2))) & 1) == 0)
  {
    return 0;
  }

  return a1[1].f32[1] == a2[1].f32[1] && a1[1].f32[0] == a2[1].f32[0];
}

void sub_1000BBB7C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16) == 3)
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 48);

    *a2 = v4;
    *(a2 + 16) = v3;
  }

  else
  {
    sub_1000E9E44();
    __break(1u);
  }
}

BOOL sub_1000BBC20(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 > 0xA)
  {
    if (v2 == 11)
    {
      return v3 == 11;
    }

    if (v2 == 12)
    {
      return v3 == 12;
    }
  }

  else
  {
    if (v2 == 9)
    {
      return v3 == 9;
    }

    if (v2 == 10)
    {
      return v3 == 10;
    }
  }

  return v2 == v3 && (v3 - 13) < 0xFFFFFFFC;
}

void sub_1000BBC94(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D2>, float32x4_t a8@<Q3>)
{
  v9 = v8;
  v12 = *(v8 + 104);
  if ((v12 - 9) < 5)
  {
    LOWORD(v13) = word_100111060[(v12 - 9)];
LABEL_3:
    v14 = 1.0;
    goto LABEL_13;
  }

  if (a4)
  {
    LOWORD(v13) = 1;
    goto LABEL_9;
  }

  if (a3 < -32768)
  {
    __break(1u);
    goto LABEL_29;
  }

  if (a3 >= 0x8000)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v13 = a3 + 1;
  if ((a3 + 1) == v13)
  {
LABEL_9:
    if ((v12 - 1) >= 2)
    {
      if (*(v8 + 104))
      {
        goto LABEL_3;
      }

      v14 = 1.22;
    }

    else
    {
      v14 = 1.125;
    }

LABEL_13:
    v15 = *v8;
    v16 = *(v8 + 8);
    if (*(v8 + 12))
    {
      if (*(v8 + 12) == 1)
      {
        v15 = v14 * v15;
        v17 = 1;
        if (*(v8 + 136))
        {
LABEL_16:
          v18 = 0x3F0000003F800000;
          v19 = 1065353216;
          __asm { FMOV            V12.2S, #1.0 }

          goto LABEL_19;
        }
      }

      else
      {
        v17 = 2;
        v16 = 0;
        if (*(v8 + 136))
        {
          goto LABEL_16;
        }
      }
    }

    else
    {
      v17 = 0;
      v15 = v14 * v15;
      if (*(v8 + 136))
      {
        goto LABEL_16;
      }
    }

    v18 = *(v8 + 120);
    _D12 = *(v8 + 128);
    v19 = *(v8 + 112);
LABEL_19:
    v25 = *(v8 + 4);
    v26 = *(v8 + 144);
    v27 = *(v9 + 152);
    if (v26)
    {
      v28 = swift_allocObject();
      *(v28 + 16) = v26;
      *(v28 + 24) = v27;
      v29 = sub_1000C6C10;
    }

    else
    {
      if (!a1)
      {
        v43 = *(v9 + 32);
        v44 = *(v9 + 16);
        v37 = *(v9 + 48);
        v36 = *(v9 + 64);
        goto LABEL_24;
      }

      v32 = swift_allocObject();
      *(v32 + 16) = a1;
      *(v32 + 24) = a2;

      v29 = sub_1000C5398;
    }

    v33 = v29;
    v34 = *(v9 + 32);
    v47[0] = *(v9 + 16);
    v47[1] = v34;
    v35 = *(v9 + 64);
    v47[2] = *(v9 + 48);
    v47[3] = v35;
    v46 = a6;
    sub_10000D58C(v26, v27);
    (v33)(v45, v47, &v46);

    v43 = v45[1];
    v44 = v45[0];
    v37 = v45[2];
    v36 = v45[3];
LABEL_24:
    v42 = v37;
    v41 = v36;
    *&v38 = sub_1000BB094(*(v9 + 80), *(v9 + 88), *(v9 + 96), *&v36, v37, a7, a8);
    HIDWORD(v38) = *(v9 + 100);
    v39 = *(v9 + 108);
    v40 = *(v9 + 138);
    *a5 = v44;
    *(a5 + 16) = v43;
    *(a5 + 32) = v42;
    *(a5 + 48) = v41;
    *(a5 + 64) = v38;
    *(a5 + 80) = v19;
    *(a5 + 88) = v18;
    *(a5 + 96) = _D12;
    *(a5 + 104) = v17;
    *(a5 + 106) = v13;
    *(a5 + 108) = v15;
    *(a5 + 112) = v25;
    *(a5 + 116) = v16;
    *(a5 + 120) = v39;
    *(a5 + 124) = v40;
    return;
  }

LABEL_30:
  __break(1u);
}

BOOL sub_1000BBF2C(float32x4_t *a1, float32x4_t *a2)
{
  v2 = a1[9];
  v13[8] = a1[8];
  v13[9] = v2;
  v13[10] = a1[10];
  v14 = a1[11].i64[0];
  v3 = a1[5];
  v13[4] = a1[4];
  v13[5] = v3;
  v4 = a1[7];
  v13[6] = a1[6];
  v13[7] = v4;
  v5 = a1[1];
  v13[0] = *a1;
  v13[1] = v5;
  v6 = a1[3];
  v13[2] = a1[2];
  v13[3] = v6;
  v7 = a2[9];
  v15[8] = a2[8];
  v15[9] = v7;
  v15[10] = a2[10];
  v16 = a2[11].i64[0];
  v8 = a2[5];
  v15[4] = a2[4];
  v15[5] = v8;
  v9 = a2[7];
  v15[6] = a2[6];
  v15[7] = v9;
  v10 = a2[1];
  v15[0] = *a2;
  v15[1] = v10;
  v11 = a2[3];
  v15[2] = a2[2];
  v15[3] = v11;
  return sub_1000C5130(v13, v15);
}

unint64_t sub_1000BBFD4()
{
  result = qword_100133380;
  if (!qword_100133380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133380);
  }

  return result;
}

unint64_t sub_1000BC028@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000C5334(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1000BC058(uint64_t a1, __int16 a2)
{
  v2 = HIBYTE(a2);
  sub_1000E9974();

  sub_1000EA044(v2 & 1);
}

uint64_t sub_1000BC1A0(float32x4_t *a1, float32x4_t *a2)
{
  v2 = 0;
  v3 = vmovn_s32(vceqq_f32(*a1, *a2));
  if (v3.i8[0] & 1) != 0 && (v3.i8[2] & 1) != 0 && (v3.i8[4])
  {
    v2 = v3.i8[6];
  }

  return v2 & 1;
}

uint64_t sub_1000BC1D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 1);
  v3 = *(a2 + 1);
  return sub_1000A1E68() & ~(v2 ^ v3) & 1;
}

Swift::Int sub_1000BC214()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1000EA024();
  if (v2)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  sub_1000BC058(v5, v3 | v1);
  return sub_1000EA064();
}

void sub_1000BC26C(uint64_t a1)
{
  if (v1[1])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  sub_1000BC058(a1, v2 | *v1);
}

Swift::Int sub_1000BC288(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_1000EA024();
  if (v3)
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  sub_1000BC058(v6, v4 | v2);
  return sub_1000EA064();
}

uint64_t sub_1000BC2DC(float32x4_t *a1, uint64_t a2, float32x4_t *a3, uint64_t a4)
{
  v4 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x800000000000) != 0)
  {
    if ((a4 & 0x800000000000) != 0)
    {
      v9 = a1[2].i64[0];
      v10 = a1[2].u16[6];
      v11 = a1[2].u32[2];
      v12 = a1[3].f32[0];
      v13 = a3[2].i64[0];
      v14 = a3[2].u16[6];
      v15 = a3[2].u32[2];
      v16 = a3[3].f32[0];
      if (sub_1000BC2DC(a1[1].i64[0], a1[1].u32[2] | (a1[1].u16[6] << 32), a3[1].i64[0], a3[1].u32[2] | (a3[1].u16[6] << 32)))
      {
        v8 = sub_1000BC2DC(v9, (v11 | (v10 << 32)) & 0xFFFFFFFFFFFFLL, v13, (v15 | (v14 << 32)) & 0xFFFFFFFFFFFFLL) & (v12 == v16);
        return v8 & 1;
      }
    }

LABEL_9:
    v8 = 0;
    return v8 & 1;
  }

  if ((a4 & 0x800000000000) != 0)
  {
    goto LABEL_9;
  }

  v6 = *&a4;
  v7 = sub_1000C1814(a1, a3);
  v8 = 0;
  if ((v7 & 1) != 0 && *&a2 == v6)
  {
    v8 = sub_1000A1E68() & ((((a2 & 0xFFFFFFFFFFFFuLL) >> 32) >> 8) & 1 ^ ((v4 & 0x10000000000) == 0));
  }

  return v8 & 1;
}

void sub_1000BC428(float a1)
{
  v2 = v1;
  v3 = v1[2];
  v4 = v1[3];
  if (v4 < 0)
  {
    v7 = *v1;
    v14 = v1[1];
    v8 = *(*v1 + 72);
    v10 = *(*v1 + 80);
    v9 = *(*v1 + 88);
    v11 = *(*v1 + 112);
    v18 = *(*v1 + 16);
    v19 = *(*v1 + 32);
    v20 = *(*v1 + 48);
    *&v15 = *(*v1 + 64);
    *(&v15 + 1) = v8;
    *&v16 = v10;
    *(&v16 + 1) = v9;
    v17 = *(*v1 + 96);
    sub_1000C5380(v18, *(&v18 + 1), v19, *(&v19 + 1));
    sub_1000C5380(v15, v8, v10, v9);
    sub_1000BC428(a1);
    sub_1000BC428(a1);
    v13 = swift_allocObject();
    *(v13 + 16) = v18;
    *(v13 + 32) = v19;
    *(v13 + 48) = v20;
    *(v13 + 64) = v15;
    *(v13 + 80) = v16;
    *(v13 + 96) = v17;
    *(v13 + 112) = v11;
    sub_1000C538C(v7, v14, v3, v4);
    v6 = 0;
    *v2 = v13;
    v2[1] = 0;
    v5 = 0x8000000000000000;
    v2[4] = 0;
    v2[5] = 0;
  }

  else
  {
    v5 = 0;
    v6 = COERCE_UNSIGNED_INT(*&v3 * a1);
  }

  v2[2] = v6;
  v2[3] = v5;
}

void sub_1000BC578(uint64_t a1@<X8>)
{
  v3 = *v1;
  if ((*(v1 + 24) & 0x8000000000000000) != 0)
  {
    v16 = v3[1].i64[0];
    v17 = v3[1].i64[1];
    v19 = v3[2].i64[0];
    v18 = v3[2].i64[1];
    v20 = v3[3].i64[0];
    v22 = v3[4].i64[0];
    v21 = v3[4].i64[1];
    v23 = v3[5].i64[0];
    v25 = v3[6].i64[0];
    v24 = v3[6].i64[1];
    v56 = v18;
    if (v18 < 0)
    {
      v45 = v3[1].i64[1];
      v47 = v3[1].i64[0];
      v31 = v3[5].i64[1];
      sub_1000C5380(v16, v45, v19, v18);
      sub_1000C5380(v22, v21, v23, v31);
      sub_1000C538C(v22, v21, v23, v31);
      v32 = v47;
      v33 = v45;
      v34 = v19;
      v35 = v56;
    }

    else
    {
      v26 = v3[5].i64[1];
      v46 = v3[3].i64[1];
      if (v26 < 0)
      {
        v48 = v3[1].i64[0];
        sub_1000C5380(v16, v17, v19, v18);
        sub_1000C5380(v22, v21, v23, v26);
        sub_1000C538C(v22, v21, v23, v26);
        v32 = v48;
        v33 = v17;
        v34 = v19;
        v35 = v56;
      }

      else
      {
        v44 = v3[5].i64[1];
        v43 = v3[7].f32[0];
        v27 = v3[1].i64[1];
        v28 = v3[1].i64[0];
        sub_1000BCA8C(v16, v58, *(&v27 + 1));
        if ((v59 & 1) == 0)
        {
          v50 = v58[0];
          v52 = v58[1];
          v54 = v58[2];
          sub_1000BCA8C(v22, &v60, *(&v21 + 1));
          if ((v63 & 1) == 0)
          {
            v36.i64[0] = v20;
            v36.i64[1] = v46;
            v41 = v36;
            v36.i64[0] = v25;
            v36.i64[1] = v24;
            v40 = v36;
            v38 = v61;
            v39 = v62;
            v42 = v60;
            sub_1000C5380(v28, v27, v19, v56);
            sub_1000C5380(v22, v21, v23, v44);
            sub_1000C538C(v28, v27, v19, v56);
            sub_1000C538C(v22, v21, v23, v44);
            v57 = __sincosf_stret(*&v27);
            v37 = __sincosf_stret(*&v21);
            v12 = v38;
            v13 = v39;
            v15 = v57;
            v7 = v37;
            v8 = v43;
            v4 = ((*&v23 - *&v19) * v43) + *&v19;
            v30 = vadd_f32(vmul_n_f32(vsub_f32(__PAIR64__(v40.u32[1], v25), __PAIR64__(v41.u32[1], v20)), v43), __PAIR64__(v41.u32[1], v20));
            v14 = v41.f32[2] + vmuls_lane_f32(v43, vsubq_f32(v40, v41), 2);
            v6 = v42;
            v10 = v52;
            v9 = v54;
            v11 = v50;
            goto LABEL_13;
          }
        }

        sub_1000C5380(v28, v27, v19, v56);
        sub_1000C5380(v22, v21, v23, v44);
        sub_1000C538C(v22, v21, v23, v44);
        v32 = v28;
        v33 = v27;
        v34 = v19;
        v35 = v56;
      }
    }

    sub_1000C538C(v32, v33, v34, v35);
    v6 = 0uLL;
    v9 = xmmword_1000F4620;
    v10 = xmmword_1000F4630;
    v15 = 0;
    v14 = 0.0;
    v11 = xmmword_1000F4640;
    v12 = 0uLL;
    v13 = 0uLL;
    v8 = 0.0;
    v4 = 0.0;
    v7 = 0;
    goto LABEL_12;
  }

  v55 = *(v1 + 32);
  v4 = *(v1 + 16);
  v5 = *(v1 + 8);
  sub_1000BCA8C(v3, &v60, *(v1 + 12));
  v6 = 0uLL;
  v7 = 0;
  v8 = 0.0;
  if (v63)
  {
    v9 = xmmword_1000F4620;
    v10 = xmmword_1000F4630;
    v11 = xmmword_1000F4640;
    v12 = 0uLL;
    v13 = 0uLL;
    v14 = 0.0;
    v15 = 0;
    v4 = 0.0;
LABEL_12:
    v30 = 0;
    goto LABEL_13;
  }

  v51 = v61;
  v53 = v62;
  v49 = v60;
  v29 = __sincosf_stret(v5);
  v7 = 0;
  v11 = v49;
  v10 = v51;
  v8 = 0.0;
  v6 = 0uLL;
  v15 = v29;
  v9 = v53;
  v30 = v55;
  v14 = *(&v55 + 2);
  v12 = 0uLL;
  v13 = 0uLL;
LABEL_13:
  *a1 = v11;
  *(a1 + 16) = v10;
  *(a1 + 32) = v9;
  *(a1 + 48) = v6;
  *(a1 + 64) = v12;
  *(a1 + 80) = v13;
  *(a1 + 96) = v30;
  *(a1 + 104) = v14;
  *(a1 + 108) = 0;
  *(a1 + 112) = v15;
  *(a1 + 120) = v8;
  *(a1 + 124) = v4;
  *(a1 + 128) = v7;
  *(a1 + 136) = 0;
}

float32x4_t *sub_1000BCA8C@<X0>(float32x4_t *result@<X0>, float32x4_t *a2@<X8>, float32_t a3@<S0>)
{
  v3 = result[1].u64[0];
  if (v3)
  {
    v4 = result[2];
    if (v3 == 1)
    {
      v5 = result[2];
      v5.f32[3] = v4.f32[3] + 1.0;
      v6 = v4.f32[3] + 2.0;
      v7 = result[2];
    }

    else
    {
      v5 = result[3];
      if (v3 >= 3)
      {
        v7 = result[4];
LABEL_9:
        v11.i64[0] = 0;
        v11.i32[2] = 0;
        v11.f32[3] = a3;
        v8 = vaddq_f32(v4, v11);
        v9 = vaddq_f32(v5, v11);
        v10 = vaddq_f32(v7, v11);
        goto LABEL_10;
      }

      v6 = v5.f32[3] + 1.0;
      v7 = result[3];
    }

    v7.f32[3] = v6;
    goto LABEL_9;
  }

  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 0uLL;
LABEL_10:
  *a2 = v8;
  a2[1] = v9;
  a2[2] = v10;
  a2[3].i8[0] = v3 == 0;
  return result;
}

uint64_t sub_1000BCB28(uint64_t *a1, void *a2)
{
  v3 = *a1;
  if (a1[3] < 0)
  {
    v11 = *(v3 + 32);
    v29[0] = *(v3 + 16);
    v29[1] = v11;
    v12 = *(v3 + 64);
    v29[2] = *(v3 + 48);
    v13 = *(v3 + 80);
    v14 = *(v3 + 96);
    v27[0] = v12;
    v27[1] = v13;
    v27[2] = v14;
    if ((a2[3] & 0x8000000000000000) != 0)
    {
      v15 = *a2;
      v16 = *(*a2 + 32);
      v30[0] = *(*a2 + 16);
      v30[1] = v16;
      v17 = *(v15 + 64);
      v30[2] = *(v15 + 48);
      v18 = *(v15 + 80);
      v19 = *(v15 + 96);
      v28[0] = v17;
      v28[1] = v18;
      v20 = *(v3 + 112);
      v28[2] = v19;
      v21 = *(v15 + 112);
      if (sub_1000BCB28(v29, v30))
      {
        v7 = sub_1000BCB28(v27, v28) & (v20 == v21);
        return v7 & 1;
      }
    }

LABEL_13:
    v7 = 0;
    return v7 & 1;
  }

  if ((a2[3] & 0x8000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v25 = *(a2 + 2);
  v26 = *(a1 + 2);
  v4 = *(a2 + 2);
  v23 = *(a1 + 12);
  v24 = *(a2 + 12);
  v5 = *(a1 + 2);
  v6 = sub_1000C1814(v3, *a2);
  v7 = 0;
  if (v6)
  {
    v9.i64[0] = v23;
    v8.i64[0] = v24;
    v9.i64[1] = v26.i64[0];
    v8.i64[1] = vdupq_lane_s64(*&v25, 0).i64[1];
    if ((~vaddvq_s32(vandq_s8(vceqq_f32(v9, v8), xmmword_1000F1F70)) & 0xF) == 0 && v5 == v4)
    {
      v7 = vmovn_s32(vceqq_f32(v26, v25)).i8[4];
    }
  }

  return v7 & 1;
}

uint64_t sub_1000BCC80(uint64_t a1, float a2)
{
  v3 = v2;
  v6 = *(*v2 + 16);
  if (v6)
  {
    v7 = (*v2 + 60);
    do
    {
      v8 = *(v7 - 5);
      v9 = *(v7 - 16);
      v10 = *(v7 - 3);
      v11 = *(v7 - 8);
      v12 = *(v7 - 1);
      v14 = *v7;
      v7 += 8;
      v13 = v14;

      v15 = swift_readAtKeyPath();
      v150 = *v16;
      v15(v186, 0);
      v17 = v8 - *&v150;
      if (v9)
      {
        v17 = v8;
      }

      v18 = *&v150 + (v17 * a2);
      v19 = v10 - *(&v150 + 1);
      if (v11)
      {
        v19 = v10;
      }

      v20 = v12 - *(&v150 + 2);
      if (v13)
      {
        v20 = v12;
      }

      HIDWORD(v21) = 0;
      *&v21 = v18;
      *(&v21 + 1) = *(&v150 + 1) + (v19 * a2);
      *(&v21 + 2) = *(&v150 + 2) + (v20 * a2);
      v186[0] = v21;

      swift_setAtWritableKeyPath();

      --v6;
    }

    while (v6);
  }

  v22 = *(a1 + 176);
  v25 = *(v22 + 64);
  v24 = v22 + 64;
  v23 = v25;
  v26 = 1 << *(*(a1 + 176) + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & v23;
  v29 = (v26 + 63) >> 6;
  v146 = *(a1 + 176);
  v144 = (&v157 | 0xD);

  v30 = 0;
  v145 = v3;
  v143 = v29;
  while (v28)
  {
    v52 = v30;
LABEL_20:
    v53 = __clz(__rbit64(v28)) | (v52 << 6);
    v54 = *(v146 + 48) + 24 * v53;
    v56 = *v54;
    v55 = *(v54 + 8);
    v57 = *(v54 + 16);
    v58 = *(v146 + 56) + 192 * v53;
    v60 = *(v58 + 32);
    v59 = *(v58 + 48);
    v61 = *v58;
    v186[1] = *(v58 + 16);
    v186[2] = v60;
    v186[0] = v61;
    v62 = *(v58 + 112);
    v64 = *(v58 + 64);
    v63 = *(v58 + 80);
    v187 = *(v58 + 96);
    v188 = v62;
    v186[4] = v64;
    v186[5] = v63;
    v66 = *(v58 + 144);
    v65 = *(v58 + 160);
    v67 = *(v58 + 128);
    v192 = *(v58 + 176);
    v190 = v66;
    v191 = v65;
    v189 = v67;
    v186[3] = v59;
    v151 = v64;
    v147 = *&v186[0];
    v68 = *(v186 + 2);
    v148 = BYTE12(v186[0]);
    v69 = *(v58 + 29);
    v183 = *(v58 + 13);
    v184 = v69;
    v185[0] = *(v58 + 45);
    *(v185 + 15) = *(v58 + 60);
    v70 = *(v58 + 80);
    v182 = *(v58 + 96);
    v71 = *(v58 + 104);
    v72 = *(v58 + 120);
    v73 = *(v58 + 136);
    v180 = *(v58 + 168);
    v181 = v70;
    v74 = *(v58 + 152);
    v178 = v73;
    v179 = v74;
    v176 = v71;
    v177 = v72;
    v75 = *(v3 + 16);
    v76 = *(v75 + 16);
    sub_1000A1DD4(v56, v55, v57);
    if (v76)
    {
      sub_1000B89BC(v186, &v169);
      v77 = sub_10009F2C8(v56, v55, v57);
      if (v78)
      {
        v79 = *(v75 + 56) + 24 * v77;
        v80 = *v79;
        v81 = *(v79 + 4);
        v82 = *(v79 + 8);
        v83 = *(v79 + 12);
        v84 = *(v79 + 16);
        v85 = *(v79 + 20);
        HIDWORD(v86) = HIDWORD(v151);
        if (!v81)
        {
          v80 = v80 - *&v151;
        }

        v87 = *&v151 + (v80 * a2);
        if (!v83)
        {
          v82 = v82 - *(&v151 + 1);
        }

        v88 = *(&v151 + 1) + (v82 * a2);
        if (!v85)
        {
          v84 = v84 - *(&v151 + 2);
        }

        *&v86 = __PAIR64__(LODWORD(v88), LODWORD(v87));
        *(&v86 + 2) = *(&v151 + 2) + (v84 * a2);
        goto LABEL_32;
      }
    }

    else
    {
      sub_1000B89BC(v186, &v169);
    }

    v86 = v151;
    if (BYTE9(v189) <= 1u)
    {
      *(&v86 + 2) = (a2 * 0.1) + *(&v151 + 2);
    }

LABEL_32:
    v89 = *(&v192 + 1);
    v90 = *(&v187 + 1);
    v91 = *&v192;
    v92 = *(v3 + 24);
    if (*(v92 + 16))
    {
      v152 = v86;
      v93 = sub_10009F2C8(v56, v55, v57);
      if (v94)
      {
        v95 = *(v92 + 56) + 16 * v93;
        v96 = *v95;
        v97 = *(v95 + 8);
        v98 = *(v95 + 12);
        v86 = v152;
        if (BYTE12(v186[0]))
        {
          if (BYTE12(v186[0]) == 1)
          {
            if (v98 == 1)
            {
              v68 = ((v97 - *(v186 + 2)) * a2) + *(v186 + 2);
              v147 = COERCE_UNSIGNED_INT(((*&v96 - *v186) * a2) + *v186) | (COERCE_UNSIGNED_INT(((*(&v96 + 1) - *(v186 + 1)) * a2) + *(v186 + 1)) << 32);
              v148 = 1;
            }
          }

          else if (v98 == 2)
          {
            v147 = COERCE_UNSIGNED_INT(((*&v96 - *v186) * a2) + *v186) | (COERCE_UNSIGNED_INT(((*(&v96 + 1) - *(v186 + 1)) * a2) + *(v186 + 1)) << 32);
            v148 = 2;
            v68 = 0.0;
          }
        }

        else if (!v98)
        {
          v148 = 0;
          v68 = ((v97 - *(v186 + 2)) * a2) + *(v186 + 2);
          v147 = COERCE_UNSIGNED_INT(((*&v96 - *v186) * a2) + *v186) | (COERCE_UNSIGNED_INT(((*(&v96 + 1) - *(v186 + 1)) * a2) + *(v186 + 1)) << 32);
        }
      }

      else
      {
        v86 = v152;
      }
    }

    *(&v86 + 2) = *(&v86 + 2) + (v91 * a2);
    *&v169 = v147;
    *(&v169 + 2) = v68;
    BYTE12(v169) = v148;
    v99 = v90 * (((v89 + -1.0) * a2) + 1.0);
    v100 = v184;
    *(&v169 | 0xD) = v183;
    *((&v169 | 0xD) + 0x10) = v100;
    *((&v169 | 0xD) + 0x20) = v185[0];
    *((&v169 | 0xD) + 0x2F) = *(v185 + 15);
    v153 = v86;
    v173 = v86;
    v174 = v181;
    *v175 = v182;
    *&v175[4] = v99;
    *&v175[24] = v177;
    *&v175[40] = v178;
    *&v175[56] = v179;
    *&v175[72] = v180;
    *&v175[8] = v176;
    sub_1000B89BC(&v169, &v157);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v156 = *(a1 + 176);
    v102 = v156;
    v103 = sub_10009F2C8(v56, v55, v57);
    v105 = v102[2];
    v106 = (v104 & 1) == 0;
    v107 = __OFADD__(v105, v106);
    v108 = v105 + v106;
    if (v107)
    {
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      result = sub_1000E9FA4();
      __break(1u);
      return result;
    }

    v109 = v104;
    if (v102[3] >= v108)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v125 = v103;
        sub_1000B5C20();
        v103 = v125;
      }
    }

    else
    {
      sub_1000B1E88(v108, isUniquelyReferenced_nonNull_native);
      v103 = sub_10009F2C8(v56, v55, v57);
      if ((v109 & 1) != (v110 & 1))
      {
        goto LABEL_65;
      }
    }

    v3 = v145;
    v28 &= v28 - 1;
    if (v109)
    {
      v31 = v156;
      v32 = v156[7] + 192 * v103;
      v33 = *(v32 + 48);
      v35 = *v32;
      v34 = *(v32 + 16);
      v154[2] = *(v32 + 32);
      v154[3] = v33;
      v154[0] = v35;
      v154[1] = v34;
      v36 = *(v32 + 112);
      v38 = *(v32 + 64);
      v37 = *(v32 + 80);
      v154[6] = *(v32 + 96);
      v154[7] = v36;
      v154[4] = v38;
      v154[5] = v37;
      v40 = *(v32 + 144);
      v39 = *(v32 + 160);
      v41 = *(v32 + 128);
      v155 = *(v32 + 176);
      v154[9] = v40;
      v154[10] = v39;
      v154[8] = v41;
      v42 = v169;
      v43 = v170;
      v44 = v172;
      *(v32 + 32) = v171;
      *(v32 + 48) = v44;
      *v32 = v42;
      *(v32 + 16) = v43;
      v45 = v173;
      v46 = v174;
      v47 = *&v175[16];
      *(v32 + 96) = *v175;
      *(v32 + 112) = v47;
      *(v32 + 64) = v45;
      *(v32 + 80) = v46;
      v48 = *&v175[32];
      v49 = *&v175[48];
      v50 = *&v175[64];
      *(v32 + 176) = *&v175[80];
      *(v32 + 144) = v49;
      *(v32 + 160) = v50;
      *(v32 + 128) = v48;
      sub_1000C5E5C(v154);
      sub_1000A1DF8(v56, v55, v57);
      v157 = v147;
      v158 = v68;
      v159 = v148;
      v51 = v184;
      *v144 = v183;
      *((&v157 | 0xD) + 0x10) = v51;
      *((&v157 | 0xD) + 0x20) = v185[0];
      *((&v157 | 0xD) + 0x2F) = *(v185 + 15);
      v160 = v153;
      v161 = v181;
      v162 = v182;
      v163 = v99;
      v168 = v180;
      v167 = v179;
      v166 = v178;
      v165 = v177;
      v164 = v176;
      sub_1000C5E5C(&v157);
    }

    else
    {
      v31 = v156;
      v156[(v103 >> 6) + 8] |= 1 << v103;
      v111 = v31[6] + 24 * v103;
      *v111 = v56;
      *(v111 + 8) = v55;
      *(v111 + 16) = v57;
      v112 = v31[7] + 192 * v103;
      v113 = v172;
      v115 = v169;
      v114 = v170;
      *(v112 + 32) = v171;
      *(v112 + 48) = v113;
      *v112 = v115;
      *(v112 + 16) = v114;
      v116 = *&v175[16];
      v118 = v173;
      v117 = v174;
      *(v112 + 96) = *v175;
      *(v112 + 112) = v116;
      *(v112 + 64) = v118;
      *(v112 + 80) = v117;
      v119 = *&v175[32];
      v120 = *&v175[48];
      v121 = *&v175[64];
      *(v112 + 176) = *&v175[80];
      *(v112 + 144) = v120;
      *(v112 + 160) = v121;
      *(v112 + 128) = v119;
      v157 = v147;
      v158 = v68;
      v159 = v148;
      v122 = v184;
      *v144 = v183;
      *((&v157 | 0xD) + 0x10) = v122;
      *((&v157 | 0xD) + 0x20) = v185[0];
      *((&v157 | 0xD) + 0x2F) = *(v185 + 15);
      v160 = v153;
      v161 = v181;
      v162 = v182;
      v163 = v99;
      v165 = v177;
      v166 = v178;
      v167 = v179;
      v168 = v180;
      v164 = v176;
      sub_1000C5E5C(&v157);
      v123 = v31[2];
      v107 = __OFADD__(v123, 1);
      v124 = v123 + 1;
      if (v107)
      {
        goto LABEL_64;
      }

      v31[2] = v124;
    }

    *(a1 + 176) = v31;
    v30 = v52;
    v29 = v143;
  }

  while (1)
  {
    v52 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      __break(1u);
      goto LABEL_63;
    }

    if (v52 >= v29)
    {
      break;
    }

    v28 = *(v24 + 8 * v52);
    ++v30;
    if (v28)
    {
      goto LABEL_20;
    }
  }

  v127 = *(v3 + 8);
  v128 = v127[1].i64[0];
  if (v128)
  {
    v129 = v127 + 3;
    do
    {
      v130 = *v129;
      v129 += 2;

      v131 = swift_readAtKeyPath();
      v149 = *v132;
      v131(v186, 0);
      sub_1000C604C(v149, v130, a2);
      v186[0] = v133;
      swift_setAtWritableKeyPath();

      --v128;
    }

    while (v128);
  }

  v134 = *(v3 + 48);
  *(a1 + 156) = *(a1 + 156) + ((*(v3 + 52) - *(a1 + 156)) * a2);
  *(a1 + 344) = *(a1 + 344) + ((v134 - *(a1 + 344)) * a2);
  v135 = *(v3 + 32);
  v136 = *(v135 + 16);
  if (v136)
  {
    v137 = (v135 + 40);
    do
    {
      v138 = *v137;
      v137 += 4;
      LODWORD(v186[0]) = v138;

      swift_setAtWritableKeyPath();

      --v136;
    }

    while (v136);
  }

  v139 = *(v3 + 40);
  v140 = *(v139 + 16);
  if (v140)
  {
    v141 = (v139 + 40);
    do
    {
      v142 = *v141;
      v141 += 4;
      LODWORD(v186[0]) = v142;

      swift_setAtWritableKeyPath();

      --v140;
    }

    while (v140);
  }

  return result;
}