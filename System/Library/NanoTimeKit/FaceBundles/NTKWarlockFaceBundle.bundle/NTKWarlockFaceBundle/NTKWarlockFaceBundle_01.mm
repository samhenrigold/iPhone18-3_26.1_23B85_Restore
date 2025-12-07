id sub_15CEC()
{
  v1 = *&v0[OBJC_IVAR____TtC20NTKWarlockFaceBundle20WarlockMiniClockView_digitalTimeView];
  if (v1)
  {
    [*(v1 + OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_timeFormatter) removeObserver:v0];
  }

  v3.receiver = v0;
  v3.super_class = type metadata accessor for WarlockMiniClockView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_15FA8()
{
  v1 = sub_815C(&qword_59158, &qword_42058);
  __chkstk_darwin(v1, v2);
  v4 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5, v6);
  v9 = &v51 - v8;
  v10 = *(v0 + OBJC_IVAR____TtC20NTKWarlockFaceBundle20WarlockMiniClockView_digitalTimeView);
  if (v10)
  {
    v11 = *(v7 + 80);
    v12 = *(v7 + 96);
    v13 = v7;
    v14 = v10;
    sub_156C4(&v9[v11], &v58);
    v15 = v60;
    v69[0] = v60;
    v69[1] = v61;
    v16 = v59;
    v67 = v58;
    v68 = v59;
    v17 = v62;
    v18 = v64;
    v19 = v65;
    v20 = v66;
    v21 = v63;
    *v9 = v58;
    *(v9 + 1) = v16;
    *(v9 + 2) = v15;
    *(v9 + 41) = *(v69 + 9);
    *(v9 + 8) = v17;
    *(v9 + 72) = v21;
    *(v9 + 22) = v18;
    v9[92] = v19;
    *&v9[v12] = v20;
    sub_16B9C(v9, v4, &qword_59158, &qword_42058);
    v22 = *(v4 + 8);
    sub_16A8C(*(v4 + 9), *(v4 + 10), *(v4 + 22), v4[92]);
    v23 = *(v13 + 80);
    sub_16AAC(*&v4[*(v13 + 96)]);
    v24 = v22;
    sub_1B4F4(v24, v14);

    sub_16ABC(&v4[v23]);
    v25 = memmove(&v14[OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_layout], v9, 0x39uLL);
    v26 = v14;
    sub_2A130(v25);
    sub_16B9C(v9, v4, &qword_59158, &qword_42058);

    v27 = *(v4 + 9);
    v52 = *(v4 + 10);
    v57 = *(v4 + 22);
    v56 = v13;
    v55 = *(v13 + 80);
    v28 = *&v4[*(v13 + 96)];
    LOBYTE(v13) = v4[92];
    sub_16AAC(v28);
    v29 = &v14[OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_foregroundStyle];
    v54 = v26;
    v31 = *v29;
    v30 = *(v29 + 1);
    v32 = *(v29 + 4);
    v53 = v27;
    v33 = v52;
    *v29 = v27;
    *(v29 + 1) = v33;
    v34 = v57;
    *(v29 + 4) = v57;
    LOBYTE(v26) = v29[20];
    v29[20] = v13;
    v35 = v27;
    v36 = v33;
    sub_16B18(v35, v33, v34, v13);
    sub_16A8C(v31, v30, v32, v26);
    sub_2A938(&v58);

    sub_16B38(&v58);
    v37 = *v29;
    v38 = *(v29 + 1);
    v39 = *(v29 + 4);
    v40 = v29[20];
    sub_16B18(v37, v38, v39, v40);
    sub_20CFC(v37, v38, v39 | (v40 << 32));

    sub_16A8C(v53, v36, v57, v13);
    sub_16ABC(&v4[v55]);
    sub_16B9C(v9, v4, &qword_59158, &qword_42058);

    sub_16A8C(*(v4 + 9), *(v4 + 10), *(v4 + 22), v4[92]);
    v41 = *(v56 + 80);
    v42 = v56;
    sub_16AAC(*&v4[*(v56 + 96)]);
    v43 = &v4[v41];
    v44 = v54;
    sub_2A290(v43);
    sub_16B9C(v9, v4, &qword_59158, &qword_42058);

    sub_16A8C(*(v4 + 9), *(v4 + 10), *(v4 + 22), v4[92]);
    v45 = *&v4[*(v42 + 96)];
    v46 = *(v42 + 80);
    v47 = OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_maskStyle;
    v48 = v44;
    v49 = *&v44[OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_maskStyle];
    *&v48[OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_maskStyle] = v45;
    sub_16B8C(v45);
    sub_16AAC(v49);
    v50 = *&v48[v47];

    sub_16B8C(v50);
    sub_21194(v50);

    sub_16AAC(v45);
    sub_16C04(v9, &qword_59158, &qword_42058);
    sub_16ABC(&v4[v46]);
  }
}

void sub_16800()
{
  v1 = sub_815C(qword_59170, &unk_42070);
  __chkstk_darwin(v1 - 8, v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5, v6);
  v8 = &v17 - v7;
  v9 = *&v0[OBJC_IVAR____TtC20NTKWarlockFaceBundle20WarlockMiniClockView_digitalTimeView];
  if (v9)
  {
    v10 = v9;
    v11 = [v0 overrideDate];
    if (v11)
    {
      v12 = v11;
      sub_36CA0();

      v13 = sub_36CB0();
      (*(*(v13 - 8) + 56))(v8, 0, 1, v13);
    }

    else
    {
      v13 = sub_36CB0();
      (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
    }

    v14 = *&v10[OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_timeFormatter];
    sub_16B9C(v8, v4, qword_59170, &unk_42070);
    sub_36CB0();
    v15 = *(v13 - 8);
    isa = 0;
    if ((*(v15 + 48))(v4, 1, v13) != 1)
    {
      isa = sub_36C90().super.isa;
      (*(v15 + 8))(v4, v13);
    }

    [v14 setOverrideDate:isa];

    sub_16C04(v8, qword_59170, &unk_42070);
  }
}

double sub_16A8C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 1)
  {
  }

  else if (!a4)
  {
  }

  return result;
}

double sub_16AAC(unint64_t a1)
{
  if (a1 >= 2)
  {
  }

  return result;
}

uint64_t sub_16ABC(uint64_t a1)
{
  v2 = _s10descr51419V15BackgroundStyleOMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_16B18(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 1)
  {
  }

  if (!a4)
  {
  }

  return v4;
}

unint64_t sub_16B8C(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

uint64_t sub_16B9C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_815C(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_16C04(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_815C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_16C64(uint64_t a1, uint64_t a2)
{
  v4 = sub_815C(qword_59170, &unk_42070);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_16CF4()
{
  result = qword_59380;
  if (!qword_59380)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_59380);
  }

  return result;
}

uint64_t sub_16D40(uint64_t a1, uint64_t a2)
{
  v4 = _s10descr51419V15BackgroundStyleOMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_16DA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (a6)
  {
  }

  return result;
}

uint64_t sub_16E0C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_16E98(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= v5)
  {
    v10 = *(v4 + 84);
  }

  else
  {
    v10 = *(v7 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(*(*(a3 + 16) - 8) + 64) + v9;
  v12 = a2 - v10;
  if (a2 <= v10)
  {
    goto LABEL_28;
  }

  v13 = (v11 & ~v9) + *(*(v6 - 8) + 64);
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v16 = ((v12 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v16))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 < 2)
    {
LABEL_27:
      if (v10)
      {
LABEL_28:
        if (v5 >= v8)
        {
          return (*(v4 + 48))();
        }

        else
        {
          return (*(v7 + 48))((a1 + v11) & ~v9, v8, v6);
        }
      }

      return 0;
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_27;
  }

LABEL_14:
  v17 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v17 = 0;
  }

  if (v13)
  {
    if (v13 <= 3)
    {
      v18 = v13;
    }

    else
    {
      v18 = 4;
    }

    if (v18 > 2)
    {
      if (v18 == 3)
      {
        v19 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v19 = *a1;
      }
    }

    else if (v18 == 1)
    {
      v19 = *a1;
    }

    else
    {
      v19 = *a1;
    }
  }

  else
  {
    v19 = 0;
  }

  return v10 + (v19 | v17) + 1;
}

char *sub_17074(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(a4 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v5 + 64);
  v11 = *(v8 + 80);
  if (v9 <= v6)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = *(v8 + 84);
  }

  v13 = ((v10 + v11) & ~v11) + *(*(v7 - 8) + 64);
  v14 = a3 >= v12;
  v15 = a3 - v12;
  if (v15 != 0 && v14)
  {
    if (v13 <= 3)
    {
      v20 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
      if (HIWORD(v20))
      {
        v16 = 4;
      }

      else
      {
        if (v20 < 0x100)
        {
          v21 = 1;
        }

        else
        {
          v21 = 2;
        }

        if (v20 >= 2)
        {
          v16 = v21;
        }

        else
        {
          v16 = 0;
        }
      }
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = 0;
  }

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
    if (v13 < 4)
    {
      v19 = (v17 >> (8 * v13)) + 1;
      if (v13)
      {
        v22 = v17 & ~(-1 << (8 * v13));
        v23 = result;
        bzero(result, v13);
        result = v23;
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *v23 = v22;
            if (v16 > 1)
            {
LABEL_46:
              if (v16 == 2)
              {
                *&result[v13] = v19;
              }

              else
              {
                *&result[v13] = v19;
              }

              return result;
            }
          }

          else
          {
            *v23 = v17;
            if (v16 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *v23 = v22;
        v23[2] = BYTE2(v22);
      }

      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v18 = result;
      bzero(result, v13);
      result = v18;
      *v18 = v17;
      v19 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v16)
    {
      result[v13] = v19;
    }

    return result;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&result[v13] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_31;
    }

    *&result[v13] = 0;
  }

  else if (v16)
  {
    result[v13] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return result;
  }

LABEL_31:
  if (v6 >= v9)
  {
    v26 = *(v5 + 56);

    return v26();
  }

  else
  {
    v24 = *(v8 + 56);
    v25 = &result[v10 + v11] & ~v11;

    return v24(v25);
  }
}

uint64_t getEnumTagSinglePayload for TritiumState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[16])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for TritiumState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_173DC(char a1, double a2)
{
  sub_37940(16);

  if (a1)
  {
    v4 = 1.0 - a2;
  }

  else
  {
    v4 = a2;
  }

  v5 = sub_37560();
  v7 = v6;

  v12._countAndFlagsBits = v5;
  v12._object = v7;
  sub_375D0(v12);

  v13._countAndFlagsBits = 2629725;
  v13._object = 0xE300000000000000;
  sub_375D0(v13);
  sub_815C(&qword_591F8, &qword_42148);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_41500;
  *(v8 + 56) = &type metadata for CGFloat;
  v9 = sub_17834();
  *(v8 + 64) = v9;
  *(v8 + 32) = a2;
  v14._countAndFlagsBits = sub_37540();
  sub_375D0(v14);

  v15._countAndFlagsBits = 0x209286E220;
  v15._object = 0xA500000000000000;
  sub_375D0(v15);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_41500;
  *(v10 + 56) = &type metadata for CGFloat;
  *(v10 + 64) = v9;
  *(v10 + 32) = v4;
  v16._countAndFlagsBits = sub_37540();
  sub_375D0(v16);

  v17._countAndFlagsBits = 41;
  v17._object = 0xE100000000000000;
  sub_375D0(v17);
  return 91;
}

uint64_t sub_175B4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 6710895;
  }

  else
  {
    v3 = 28271;
  }

  if (v2)
  {
    v4 = 0xE200000000000000;
  }

  else
  {
    v4 = 0xE300000000000000;
  }

  if (*a2)
  {
    v5 = 6710895;
  }

  else
  {
    v5 = 28271;
  }

  if (*a2)
  {
    v6 = 0xE300000000000000;
  }

  else
  {
    v6 = 0xE200000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_37AD0();
  }

  return v8 & 1;
}

Swift::Int sub_17648()
{
  sub_37B30();
  sub_375A0();

  return sub_37B80();
}

double sub_176B8(uint64_t a1)
{
  sub_375A0();

  return result;
}

Swift::Int sub_17714(uint64_t a1)
{
  sub_37B30();
  sub_375A0();

  return sub_37B80();
}

void sub_17780(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_52030;
  v7._object = v3;
  v5 = sub_37A90(v4, v7);

  if (v5 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v5)
  {
    v6 = 0;
  }

  *a2 = v6;
}

void sub_177E0(uint64_t *a1@<X8>)
{
  v2 = 28271;
  if (*v1)
  {
    v2 = 6710895;
  }

  v3 = 0xE200000000000000;
  if (*v1)
  {
    v3 = 0xE300000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1780C()
{
  if (*v0)
  {
    return 6710895;
  }

  else
  {
    return 28271;
  }
}

unint64_t sub_17834()
{
  result = qword_59200;
  if (!qword_59200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_59200);
  }

  return result;
}

unint64_t sub_1789C()
{
  result = qword_59208;
  if (!qword_59208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_59208);
  }

  return result;
}

uint64_t sub_17904(uint64_t a1, uint64_t a2)
{
  v4 = sub_37360();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_17984(uint64_t a1, uint64_t a2)
{
  v4 = sub_37360();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for ProgressSpring(uint64_t a1)
{
  result = qword_59268;
  if (!qword_59268)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_17A40(uint64_t a1)
{
  result = sub_37360();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void *sub_17ABC(double a1)
{
  type metadata accessor for ProgressSpring(0);
  sub_37350();
  return sub_37350();
}

void sub_17BB0(uint64_t a1, void **a2, void *a3)
{
  v4 = *a2;
  v5 = objc_opt_self();
  v6 = v4;
  v7 = [v5 functionWithName:v6];

  *a3 = v7;
}

id sub_17C1C()
{
  v0 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v1) = 1044549468;
  LODWORD(v2) = 1060991140;
  LODWORD(v3) = 1060991140;
  result = [v0 initWithControlPoints:0.0 :v2 :v1 :v3];
  qword_5CCC8 = result;
  return result;
}

id sub_17C70()
{
  v0 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v1) = 1062165545;
  LODWORD(v2) = 1038174126;
  LODWORD(v3) = 1062501089;
  result = [v0 initWithControlPoints:0.0 :v1 :v2 :v3];
  qword_5CCD0 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for WarlockFeatureFlags(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for WarlockFeatureFlags(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_17DB8()
{
  result = qword_592A8;
  if (!qword_592A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_592A8);
  }

  return result;
}

Swift::Int sub_17E14()
{
  sub_37B30();
  sub_37B40(0);
  return sub_37B80();
}

Swift::Int sub_17E80(uint64_t a1)
{
  sub_37B30();
  sub_37B40(0);
  return sub_37B80();
}

id sub_17F74(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for WarlockMiniClockViewConfiguration();
  return objc_msgSendSuper2(&v3, "dealloc");
}

BOOL sub_1802C(uint64_t a1)
{
  sub_AC28(a1, v6);
  if (!v7)
  {
    sub_AC98(v6);
    return 0;
  }

  type metadata accessor for WarlockMiniClockViewConfiguration();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  if (*(v1 + OBJC_IVAR____TtC20NTKWarlockFaceBundle33WarlockMiniClockViewConfiguration_typeface) != v5[OBJC_IVAR____TtC20NTKWarlockFaceBundle33WarlockMiniClockViewConfiguration_typeface])
  {

    return 0;
  }

  v3 = *(v1 + OBJC_IVAR____TtC20NTKWarlockFaceBundle33WarlockMiniClockViewConfiguration_backgroundVisibility);
  v4 = *&v5[OBJC_IVAR____TtC20NTKWarlockFaceBundle33WarlockMiniClockViewConfiguration_backgroundVisibility];

  return v3 == v4;
}

Swift::Int sub_18174()
{
  sub_37B90();
  sub_37B40(*(v0 + OBJC_IVAR____TtC20NTKWarlockFaceBundle33WarlockMiniClockViewConfiguration_typeface));
  v1 = *(v0 + OBJC_IVAR____TtC20NTKWarlockFaceBundle33WarlockMiniClockViewConfiguration_backgroundVisibility);
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  sub_37B60(*&v1);
  return sub_37B70();
}

void sub_181E4()
{
  v1 = *(v0 + OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_digitalTimeView);
  if (v1)
  {
    v2 = v1;
    sub_1A0B8(v28);
    v3 = *v29;
    *v27 = *v29;
    *&v27[16] = *&v29[16];
    v25 = v28[0];
    v26 = v28[1];
    v4 = v30;
    v5 = v31;
    v6 = v33;
    v7 = v34;
    v8 = v35;
    v9 = v36;
    *&v29[9] = *&v27[9];
    *v29 = v3;
    v32 &= 1u;
    v10 = v32;
    sub_16B9C(v28, v24, &qword_59378, &qword_42430);
    sub_16A8C(v6, v7, v8, v9);
    v11 = v4;
    sub_1B4F4(v11, v2);

    v12 = &v2[OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_fontTracking];
    *v12 = v5;
    v12[8] = v10;
    sub_2A938(v37);

    sub_16B38(v37);
    sub_20AFC(*v12, v12[8]);

    v14 = &v2[OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_layout];
    v15 = v26;
    *v14 = v25;
    *(v14 + 1) = v15;
    *(v14 + 2) = *v27;
    *(v14 + 41) = *&v27[9];
    sub_2A130(v13);
    sub_16B9C(v28, v24, &qword_59378, &qword_42430);

    v16 = &v2[OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_foregroundStyle];
    v17 = *&v2[OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_foregroundStyle];
    v18 = *&v2[OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_foregroundStyle + 8];
    v19 = *&v2[OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_foregroundStyle + 16];
    *v16 = v6;
    *(v16 + 1) = v7;
    *(v16 + 4) = v8;
    LOBYTE(v12) = v16[20];
    v16[20] = v9;
    sub_16B18(v6, v7, v8, v9);
    sub_16A8C(v17, v18, v19, v12);
    v20 = *v16;
    v21 = *(v16 + 1);
    v22 = *(v16 + 4);
    v23 = v16[20];

    sub_16B18(v20, v21, v22, v23);
    sub_20CFC(v20, v21, v22 | (v23 << 32));

    sub_16A8C(v6, v7, v8, v9);
    sub_16C04(v28, &qword_59378, &qword_42430);
  }
}

void sub_18448()
{
  v1 = *(v0 + OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_digitalTimeView);
  if (v1)
  {
    v2 = v0 + OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_linearBackgroundTritiumState;
    v3 = *(v0 + OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_linearBackgroundTritiumState);
    v4 = *(v2 + 8);
    v5 = qword_58520;
    v6 = v1;
    if (v5 != -1)
    {
      swift_once();
    }

    v7 = sub_815C(&qword_587B0, &qword_414D8);
    v8 = sub_9F2C(v7, qword_5CC80);
    sub_185F0(v8, v3, v4);
    CLKInterpolateBetweenFloatsUnclipped();
    if (v9 == 0.0)
    {
      v10 = 0;
    }

    else
    {
      sub_37220();
      v10 = sub_37250();
    }

    v11 = sub_36DF0();
    __chkstk_darwin(v11, v12);
    sub_36EE0();
    sub_16AAC(v10);
    sub_16AAC(v10);
  }
}

float sub_185F0(uint64_t a1, char a2, double a3)
{
  v5 = a1;
  if (a2)
  {
    v5 = a1 + *(sub_815C(&qword_587B0, &qword_414D8) + 52);
  }

  v13 = type metadata accessor for ProgressSpring(0);
  v14 = &off_52AC0;
  v6 = sub_1BE78(&v12);
  sub_1BEDC(v5, v6, type metadata accessor for ProgressSpring);
  sub_1BF44(&v12, v15);
  v7 = v16;
  v8 = v17;
  sub_AD00(v15, v16);
  v9 = (*(v8 + 8))(v7, v8, a3);
  sub_85EC(v15);
  v10 = 1.0 - v9;
  if ((a2 & 1) == 0)
  {
    return v9;
  }

  return v10;
}

id sub_186EC()
{
  v1 = OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView____lazy_storage___fontLoader;
  v2 = *(v0 + OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView____lazy_storage___fontLoader);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView____lazy_storage___fontLoader);
  }

  else
  {
    v4 = [objc_opt_self() sharedInstance];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_18768@<X0>(uint64_t a1@<X8>)
{
  v3 = &v1[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView____lazy_storage___metrics];
  v4 = *&v1[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView____lazy_storage___metrics + 48];
  v37 = *&v1[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView____lazy_storage___metrics + 32];
  v38 = v4;
  v5 = *&v1[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView____lazy_storage___metrics + 80];
  v39 = *&v1[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView____lazy_storage___metrics + 64];
  v40 = v5;
  v41 = *&v1[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView____lazy_storage___metrics + 96];
  v6 = *&v1[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView____lazy_storage___metrics + 16];
  v35 = *&v1[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView____lazy_storage___metrics];
  v36 = v6;
  v7 = *(&v37 + 1);
  if (*(&v37 + 1))
  {
    v8 = v41;
    v23 = v39;
    v24 = v40;
    v9 = v38;
    v10 = v37;
    v11 = v35;
    v12 = v36;
LABEL_5:
    v21 = v12;
    v22 = v9;
    v20 = v11;
    result = sub_16B9C(&v35, v26, &qword_59168, &qword_42068);
    *a1 = v20;
    *(a1 + 16) = v21;
    *(a1 + 32) = v10;
    *(a1 + 40) = v7;
    *(a1 + 48) = v22;
    *(a1 + 64) = v23;
    *(a1 + 80) = v24;
    *(a1 + 96) = v8;
    return result;
  }

  result = [v1 device];
  if (result)
  {
    sub_C9E4(result, &v28);
    v14 = *(v3 + 5);
    v26[4] = *(v3 + 4);
    v26[5] = v14;
    v27 = *(v3 + 12);
    v15 = *(v3 + 1);
    v26[0] = *v3;
    v26[1] = v15;
    v16 = *(v3 + 3);
    v26[2] = *(v3 + 2);
    v26[3] = v16;
    v17 = v29;
    *v3 = v28;
    *(v3 + 1) = v17;
    *(v3 + 12) = v34;
    v18 = v33;
    *(v3 + 4) = v32;
    *(v3 + 5) = v18;
    v19 = v31;
    *(v3 + 2) = v30;
    *(v3 + 3) = v19;
    sub_D2A0(&v28, v25);
    sub_16C04(v26, &qword_59168, &qword_42068);
    v23 = v32;
    v24 = v33;
    v9 = v31;
    v8 = v34;
    v7 = *(&v30 + 1);
    v10 = v30;
    v11 = v28;
    v12 = v29;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

id sub_188EC()
{
  v1 = *&v0[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_backgroundView];
  *&v0[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_backgroundView] = 0;

  v2 = *&v0[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_dimmingView];
  *&v0[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_dimmingView] = 0;

  v3 = *&v0[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_digitalTimeView];
  *&v0[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_digitalTimeView] = 0;

  v5.receiver = v0;
  v5.super_class = type metadata accessor for WarlockFaceView(0);
  return objc_msgSendSuper2(&v5, "dealloc");
}

uint64_t type metadata accessor for WarlockFaceView(uint64_t a1)
{
  result = qword_59360;
  if (!qword_59360)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_18BF8()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for WarlockFaceView(0);
  objc_msgSendSuper2(&v6, "_unloadSnapshotContentViews");
  v1 = OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_digitalTimeView;
  v2 = *&v0[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_digitalTimeView];
  if (v2)
  {
    [v2 removeFromSuperview];
    v3 = *&v0[v1];
  }

  else
  {
    v3 = 0;
  }

  *&v0[v1] = 0;

  [v0 setTimeView:0];
  v4 = OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_dimmingView;
  [*&v0[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_dimmingView] removeFromSuperview];
  v5 = *&v0[v4];
  *&v0[v4] = 0;

  sub_19724();
}

void sub_18CF0()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for WarlockFaceView(0);
  objc_msgSendSuper2(&v4, "_applyShowsCanonicalContent");
  [v0 setHidden:1];
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3[4] = sub_1BE3C;
  v3[5] = v1;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 1107296256;
  v3[2] = sub_2BBB4;
  v3[3] = &unk_52C28;
  v2 = _Block_copy(v3);

  [v0 _finalizeForSnapshotting:v2];
  _Block_release(v2);
}

void sub_18DF0(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong setHidden:0];
  }
}

void sub_18E98(uint64_t a1, uint64_t a2)
{
  v5 = sub_815C(&qword_593A0, &qword_42470);
  __chkstk_darwin(v5 - 8, v6);
  v8 = &v14 - v7;
  v9 = *(v2 + OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_backgroundView);
  if (v9)
  {
    v10 = sub_37750();
    (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
    sub_37730();
    v11 = v9;

    v12 = sub_37720();
    v13 = swift_allocObject();
    v13[2] = v12;
    v13[3] = &protocol witness table for MainActor;
    v13[4] = v11;
    v13[5] = 30;
    v13[6] = a1;
    v13[7] = a2;
    sub_1B004(0, 0, v8, &unk_42478, v13);
  }
}

void sub_19118()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for WarlockFaceView(0);
  objc_msgSendSuper2(&v5, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_dimmingView];
  if (v1)
  {
    v2 = v1;
    [v0 bounds];
    [v2 setFrame:?];
  }

  v3 = *&v0[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_digitalTimeView];
  if (v3)
  {
    v4 = v3;
    [v0 bounds];
    [v4 setFrame:?];
  }
}

void sub_19218()
{
  v1 = OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_backgroundView;
  if (*&v0[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_backgroundView])
  {
    return;
  }

  v2 = v0;
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for WarlockPatchworkState();
  v4 = swift_allocObject();
  *(v4 + 16) = _swiftEmptyArrayStorage;
  *(v4 + 40) = 0;
  *(v4 + 48) = 0;
  sub_815C(&qword_59398, &qword_42468);
  v5 = sub_376E0();
  *(v5 + 16) = 4;
  *(v5 + 32) = 0u;
  *(v5 + 48) = 0u;
  *(v4 + 56) = v5;
  *(v4 + 64) = 1;
  *(v4 + 72) = 0x3FF0000000000000;
  *(v4 + 80) = 0x3F80000000000000;
  *(v4 + 24) = sub_1BA3C;
  *(v4 + 32) = v3;
  *&v2[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_patchworkState] = v4;

  [v2 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = objc_allocWithZone(type metadata accessor for WarlockBackgroundView());

  v16 = sub_356A0(v15, v7, v9, v11, v13);
  [v16 setUserInteractionEnabled:0];
  v17 = [v2 contentView];
  if (!v17)
  {
    __break(1u);
    goto LABEL_8;
  }

  v18 = v17;
  [v17 addSubview:v16];

  v19 = [v2 contentView];
  if (!v19)
  {
LABEL_8:
    __break(1u);
    return;
  }

  v20 = v19;
  [v19 sendSubviewToBack:v16];

  v21 = *&v2[v1];
  *&v2[v1] = v16;
}

id sub_19440@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_815C(qword_59170, &unk_42070);
  __chkstk_darwin(v3 - 8, v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v8);
  v10 = &v25 - v9;
  v11 = sub_36CB0();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11, v13);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16, v17);
  v19 = &v25 - v18;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    sub_16B9C(Strong + OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_overrideDate, v10, qword_59170, &unk_42070);
    v22 = *(v12 + 48);
    if (v22(v10, 1, v11) != 1)
    {
LABEL_9:

      return (*(v12 + 32))(a2, v10, v11);
    }

    v25 = a2;
    sub_16C04(v10, qword_59170, &unk_42070);
    sub_16B9C(v21 + OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_specifierDate, v6, qword_59170, &unk_42070);
    if (v22(v6, 1, v11) != 1)
    {
      v10 = v6;
      a2 = v25;
      goto LABEL_9;
    }

    sub_16C04(v6, qword_59170, &unk_42070);
    result = [objc_opt_self() faceDate];
    a2 = v25;
    if (result)
    {
      v24 = result;
      sub_36CA0();

      v10 = v15;
      goto LABEL_9;
    }
  }

  else
  {
    result = [objc_opt_self() faceDate];
    if (result)
    {
      v21 = result;
      sub_36CA0();
      v10 = v19;
      goto LABEL_9;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_19724()
{
  v1 = OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_backgroundView;
  v2 = *(v0 + OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_backgroundView);
  if (v2)
  {
    v3 = *(v2 + OBJC_IVAR____TtC20NTKWarlockFaceBundle21WarlockBackgroundView_isPaused);
    *(v2 + OBJC_IVAR____TtC20NTKWarlockFaceBundle21WarlockBackgroundView_isPaused) = 1;
    if ((v3 & 1) == 0)
    {
      [*(v2 + OBJC_IVAR____TtC20NTKWarlockFaceBundle21WarlockBackgroundView_quadView) setPaused:1];
    }

    v4 = *(v0 + v1);
    if (v4)
    {
      [v4 removeFromSuperview];
      v4 = *(v0 + v1);
    }
  }

  else
  {
    v4 = 0;
  }

  *(v0 + v1) = 0;
}

void sub_197C0()
{
  v1 = v0;
  [v0 bounds];
  v6 = [objc_allocWithZone(UIView) initWithFrame:{v2, v3, v4, v5}];
  v7 = [v6 layer];
  v8 = [objc_opt_self() blackColor];
  v9 = [v8 CGColor];

  [v7 setBackgroundColor:v9];
  v10 = [objc_allocWithZone(CAFilter) initWithType:kCAFilterVibrantColorMatrix];
  v20[0] = xmmword_42340;
  v20[1] = xmmword_42350;
  v20[2] = xmmword_42360;
  v21 = 1065118335;
  v23 = 0;
  v22 = 0;
  v24 = 0;
  v25 = 1065353216;
  v11 = [objc_opt_self() valueWithCAColorMatrix:v20];
  [v10 setValue:v11 forKey:kCAFilterInputColorMatrix];

  sub_B2AC(0, &qword_58670, NSNumber_ptr);
  isa = sub_37840(1).super.super.isa;
  [v10 setValue:isa forKey:kCAFilterInputBackdropAware];

  v13 = [v6 layer];
  sub_815C(&qword_59388, &qword_42460);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_41500;
  *(v14 + 56) = sub_B2AC(0, &qword_59390, CAFilter_ptr);
  *(v14 + 32) = v10;
  v15 = v10;
  v16 = sub_376A0().super.isa;

  [v13 setFilters:v16];

  v17 = [v1 contentView];
  if (v17)
  {
    v18 = v17;
    [v17 addSubview:v6];

    v19 = *&v1[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_dimmingView];
    *&v1[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_dimmingView] = v6;
  }

  else
  {
    __break(1u);
  }
}

__CFString *sub_19ACC()
{
  v1 = _s10descr51419V15BackgroundStyleOMa(0);
  __chkstk_darwin(v1, v2);
  v4 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = v0;
  sub_1A0B8(v60);
  v59[0] = v61[0];
  v59[1] = v61[1];
  v57 = v60[0];
  v58 = v60[1];
  v5 = v62;
  v54 = v63;
  v6 = v65;
  v7 = v66;
  v8 = v67;
  v9 = v68;
  *(v61 + 9) = *(v59 + 9);
  v61[0] = v59[0];
  v53 = v64 & 1;
  v64 &= 1u;
  sub_16B9C(v60, v56, &qword_59378, &qword_42430);
  sub_16A8C(v6, v7, v8, v9);
  sub_16B9C(v60, v56, &qword_59378, &qword_42430);

  swift_storeEnumTagMultiPayload();
  v52 = type metadata accessor for DigitalTimeView(0);
  v10 = objc_allocWithZone(v52);
  v11 = &v10[OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_fontTracking];
  *v11 = 0;
  v11[8] = 1;
  *&v10[OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_tritiumProgress] = 0;
  v10[OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_isFrozen] = 0;
  v12 = &v10[OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_timeLabelHostingController];
  *v12 = 0;
  v12[1] = 0;
  v13 = &v10[OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView____lazy_storage___timeLabelView];
  *v13 = 0u;
  *(v13 + 1) = 0u;
  *(v13 + 2) = 0u;
  *(v13 + 6) = 0;
  v14 = &v10[OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_layout];
  *(v14 + 41) = *(v59 + 9);
  v15 = v59[0];
  v14[1] = v58;
  v14[2] = v15;
  *v14 = v57;
  v16 = &v10[OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_font];
  v16[3] = sub_B2AC(0, &qword_59380, UIFont_ptr);
  v16[4] = &off_52908;
  *v16 = v5;
  *v11 = v54;
  v11[8] = v53;
  v17 = &v10[OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_foregroundStyle];
  *v17 = v6;
  *(v17 + 1) = v7;
  *(v17 + 4) = v8;
  v17[20] = v9;
  v54 = v4;
  v18 = v4;
  v19 = v9;
  sub_1BEDC(v18, &v10[OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_backgroundStyle], _s10descr51419V15BackgroundStyleOMa);
  *&v10[OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_maskStyle] = 0;
  v10[OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_timeTransition] = 2;
  __asm { FMOV            V0.2D, #1.0 }

  *&v10[OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_scaleEffectSize] = _Q0;
  v25 = &v10[OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_backdropGroupName];
  *v25 = 0x6B636F6C726177;
  v25[1] = 0xE700000000000000;
  *&v10[OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_opacity] = 0x3FF0000000000000;
  v26 = objc_allocWithZone(CLKTimeFormatter);
  v27 = v5;
  sub_16B18(v6, v7, v8, v19);
  v28 = [v26 initWithForcedNumberSystem:0 clockTimer:0];
  if (!v28)
  {
    __break(1u);
    goto LABEL_11;
  }

  *&v10[OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_timeFormatter] = v28;
  v55.receiver = v10;
  v55.super_class = v52;
  v29 = objc_msgSendSuper2(&v55, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v29 setClipsToBounds:1];
  v30 = sub_2A850(0, 0, 0x100u);
  v31 = OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_timeFormatter;
  [*&v29[OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_timeFormatter] addObserver:{v29, v30}];
  sub_2B084();
  sub_16A8C(v6, v7, v8, v19);

  sub_16ABC(v54);
  v32 = v51;
  [*&v29[v31] addObserver:v51];
  [v32 bounds];
  [v29 setFrame:?];
  [v29 setUserInteractionEnabled:0];

  if (!NTKInternalBuild())
  {
LABEL_8:
    v47 = [v32 contentView];
    if (v47)
    {
      v48 = v47;
      [v47 addSubview:v29];

      v49 = *&v32[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_digitalTimeView];
      *&v32[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_digitalTimeView] = v29;
      v50 = v29;

      [v32 setTimeView:v50];
      return sub_16C04(v60, &qword_59378, &qword_42430);
    }

LABEL_11:
    __break(1u);
  }

  v56[0] = 0;
  result = sub_37500();
  if (NTKFacePreferencesDomain)
  {
    v34 = result;
    AppBooleanValue = CFPreferencesGetAppBooleanValue(result, NTKFacePreferencesDomain, v56);

    if (v56[0] && AppBooleanValue)
    {
      if (*&v32[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_patchworkState])
      {

        [v32 bounds];
        v37 = v36;
        v39 = v38;
        v41 = v40;
        v43 = v42;
        v44 = objc_allocWithZone(type metadata accessor for WarlockDebugView());

        v46 = sub_350B8(v45, v37, v39, v41, v43);

        [v29 addSubview:v46];
      }
    }

    goto LABEL_8;
  }

  __break(1u);
  return result;
}

void sub_1A0B8(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *&v1[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_digitalTimeView];
  if (!v4)
  {
LABEL_14:
    sub_18768(v71);
    v21 = OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_typeface;
    v22 = v2[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_typeface];
    v23 = v72;
    if (v22)
    {
      v24 = 0;
    }

    else
    {
      v24 = v74;
    }

    v25 = type metadata accessor for WarlockTypefaceAttributes();
    v26 = objc_allocWithZone(v25);
    *&v26[OBJC_IVAR___NTKWarlockTypefaceAttributes_fontSize] = v23;
    v27 = &v26[OBJC_IVAR___NTKWarlockTypefaceAttributes_fontWeight];
    *v27 = v24;
    v27[8] = v22;
    v28 = 1;
    v26[OBJC_IVAR___NTKWarlockTypefaceAttributes_enableStylisticSetOne] = 1;
    v26[OBJC_IVAR___NTKWarlockTypefaceAttributes_enableStylisticSetTwo] = 1;
    v26[OBJC_IVAR___NTKWarlockTypefaceAttributes_enableContextualAlternates] = v22 ^ 1;
    v26[OBJC_IVAR___NTKWarlockTypefaceAttributes_enableDiscretionaryLigatures] = 0;
    v69.receiver = v26;
    v69.super_class = v25;
    v29 = objc_msgSendSuper2(&v69, "init");
    sub_9C68(v71);
    v30 = v29;
    v31 = sub_186EC();
    v32 = v31;
    if (v2[v21])
    {
      v33 = &selRef_solidFontWithAttributes_;
    }

    else
    {
      v33 = &selRef_stencilFontWithAttributes_;
    }

    v67 = [v31 *v33];

    v34 = &v2[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView____lazy_storage___metrics];
    v66 = *&v2[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView____lazy_storage___metrics];
    v35 = v2[v21];
    v36 = *&v2[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView____lazy_storage___fontLoader];
    v37 = v36;
    v38 = &selRef_solidFontTypographicBoundsWithAttributes_;
    if (!v35)
    {
      v38 = &selRef_stencilFontTypographicBoundsWithAttributes_;
    }

    v39 = [v36 *v38];

    v40 = *&v39[OBJC_IVAR___NTKTimeFontTypographicBounds_width];
    v41 = v40 - CGRectGetMaxX(*&v39[OBJC_IVAR___NTKTimeFontTypographicBounds_glyphPathBounds]);
    [v2 bounds];
    Width = CGRectGetWidth(v78);
    v43 = v34[1];
    v44 = v41 / Width;
    [v2 bounds];
    v45 = v43 / CGRectGetWidth(v79);
    v80.origin.x = 0.0;
    v80.origin.y = 0.0;
    v80.size.width = 1.0;
    v80.size.height = 1.0;
    v46 = CGRectGetWidth(v80);

    v47 = 0;
    v48 = 0;
    v49 = v44 + v46 - v45;
    v13 = *(v34 + 2);
    v50 = *(v34 + 3);
    v51 = 3;
    goto LABEL_28;
  }

  v5 = OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_timeFormatter;
  v6 = *&v4[OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_timeFormatter];
  v7 = v4;
  if (![v6 isTopOfHour])
  {

    goto LABEL_14;
  }

  v8 = *&v4[v5];
  sub_F5F0();
  v10 = v9;

  sub_18768(v70);
  v11 = OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_typeface;
  sub_B428(v2[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_typeface], v10);
  sub_9C68(v70);
  nullsub_1();
  v13 = v12;
  v14 = *&v2[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView____lazy_storage___metrics + 16];
  v71[0] = *&v2[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView____lazy_storage___metrics];
  v71[1] = v14;
  v72 = *&v2[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView____lazy_storage___metrics + 32];
  v73 = *&v2[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView____lazy_storage___metrics + 48];
  v15 = *&v2[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView____lazy_storage___metrics + 56];
  v16 = *&v2[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView____lazy_storage___metrics + 64];
  v76 = *&v2[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView____lazy_storage___metrics + 72];
  v77 = *&v2[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView____lazy_storage___metrics + 88];
  v74 = v15;
  v75 = v16;
  LOBYTE(v8) = v2[v11];
  v17 = sub_B494(0, v71, v10, v8);
  if (v8)
  {
    v18 = *(v16 + 16);
    if (v18)
    {
      v19 = (v16 + 48);
      while (v10 < *(v19 - 2) || *(v19 - 1) < v10)
      {
        v19 += 3;
        if (!--v18)
        {
          goto LABEL_12;
        }
      }

      v52 = 0;
      v53 = *v19;
    }

    else
    {
LABEL_12:
      v53 = 0;
      v52 = 1;
    }
  }

  else
  {
    v52 = 0;
    v53 = v15;
  }

  v54 = type metadata accessor for WarlockTypefaceAttributes();
  v55 = objc_allocWithZone(v54);
  *&v55[OBJC_IVAR___NTKWarlockTypefaceAttributes_fontSize] = v17;
  v56 = &v55[OBJC_IVAR___NTKWarlockTypefaceAttributes_fontWeight];
  *v56 = v53;
  v56[8] = v52;
  v55[OBJC_IVAR___NTKWarlockTypefaceAttributes_enableStylisticSetOne] = 0;
  v55[OBJC_IVAR___NTKWarlockTypefaceAttributes_enableStylisticSetTwo] = 0;
  v55[OBJC_IVAR___NTKWarlockTypefaceAttributes_enableContextualAlternates] = 0;
  v55[OBJC_IVAR___NTKWarlockTypefaceAttributes_enableDiscretionaryLigatures] = 1;
  v68.receiver = v55;
  v68.super_class = v54;
  v30 = objc_msgSendSuper2(&v68, "init");
  v57 = sub_186EC();
  v58 = v57;
  if (v2[v11])
  {
    v59 = [v57 solidFontWithAttributes:v30];
  }

  else
  {
    v59 = [v57 stencilFontWithAttributes:v30];
  }

  v67 = v59;

  v66 = 0;
  v50 = 0;
  v28 = 0;
  v51 = 0;
  v49 = 1.0;
  v47 = 1;
  v48 = 1;
LABEL_28:
  if (v2[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_typeface])
  {
    v60 = 0xD000000000000012;
  }

  else
  {
    v60 = 0xD000000000000014;
  }

  if (v2[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_typeface])
  {
    v61 = ",&";
  }

  else
  {
    v61 = "watchFaceFlowSolid";
  }

  v62 = v61 | 0x8000000000000000;
  v63 = sub_37400();

  if (v63)
  {
    v64 = 1;
    v65 = 1056964608;
  }

  else
  {

    v60 = 0;
    v62 = 0;
    v65 = 0;
    v64 = 2;
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = v49;
  *(a1 + 24) = 0x3FF0000000000000;
  *(a1 + 32) = v51;
  *(a1 + 33) = v48;
  *(a1 + 40) = v13;
  *(a1 + 48) = v50;
  *(a1 + 56) = v28;
  *(a1 + 64) = v67;
  *(a1 + 72) = v66;
  *(a1 + 80) = v47;
  *(a1 + 88) = v60;
  *(a1 + 96) = v62;
  *(a1 + 104) = v65;
  *(a1 + 108) = v64;
}

void sub_1A648(void *a1, uint64_t a2, const char **a3)
{
  v6.receiver = a1;
  v6.super_class = type metadata accessor for WarlockFaceView(0);
  v4 = *a3;
  v5 = v6.receiver;
  objc_msgSendSuper2(&v6, v4);
  sub_1A6A0();
}

id sub_1A6A0()
{
  v1 = [v0 isFrozen];
  v2 = [v0 dataMode];
  result = [v0 editing];
  if (v2 == &dword_0 + 1)
  {
    v4 = v1 & (result ^ 1);
  }

  else
  {
    v4 = result ^ 1;
  }

  v5 = v0[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_isPaused];
  if (v5 == 2 || ((v4 ^ v5) & 1) != 0)
  {
    v0[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_isPaused] = v4;
    v6 = *&v0[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_backgroundView];
    if (v6)
    {
      v7 = *(v6 + OBJC_IVAR____TtC20NTKWarlockFaceBundle21WarlockBackgroundView_isPaused);
      *(v6 + OBJC_IVAR____TtC20NTKWarlockFaceBundle21WarlockBackgroundView_isPaused) = v4;
      if (v4 != v7)
      {
        v8 = *(v6 + OBJC_IVAR____TtC20NTKWarlockFaceBundle21WarlockBackgroundView_quadView);

        return [v8 setPaused:?];
      }
    }
  }

  return result;
}

id sub_1A858()
{
  v1 = OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView____lazy_storage___swatchRefreshHandlerManager;
  v2 = *(v0 + OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView____lazy_storage___swatchRefreshHandlerManager);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView____lazy_storage___swatchRefreshHandlerManager);
  }

  else
  {
    v4 = [objc_allocWithZone(NTKSwatchRefreshHandlerManager) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1A8CC(void *a1)
{
  *&v1[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_backgroundView] = 0;
  *&v1[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_dimmingView] = 0;
  *&v1[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_digitalTimeView] = 0;
  v3 = OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_overrideDate;
  v4 = sub_36CB0();
  v5 = *(*(v4 - 8) + 56);
  v5(&v1[v3], 1, 1, v4);
  v5(&v1[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_specifierDate], 1, 1, v4);
  *&v1[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_patchworkState] = 0;
  *&v1[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView____lazy_storage___fontLoader] = 0;
  v1[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_isPaused] = 2;
  *&v1[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_breathingFraction] = 0x3FF0000000000000;
  *&v1[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_rubberBandingFraction] = 0;
  v1[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_typeface] = 0;
  *&v1[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_backgroundVisibility] = 0x3FF0000000000000;
  v6 = &v1[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView____lazy_storage___metrics];
  *v6 = 0u;
  *(v6 + 1) = 0u;
  *(v6 + 2) = 0u;
  *(v6 + 3) = 0u;
  *(v6 + 4) = 0u;
  *(v6 + 5) = 0u;
  *(v6 + 12) = 0;
  v7 = &v1[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_linearBackgroundTritiumState];
  *v7 = 1;
  *(v7 + 1) = 0x3FF0000000000000;
  v8 = &v1[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_linearTimeTransformTritiumState];
  *v8 = 1;
  *(v8 + 1) = 0x3FF0000000000000;
  *&v1[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_transitioningTypefaces] = 2;
  v9 = &v1[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_dimmingColorMatrix];
  *v9 = xmmword_42340;
  *(v9 + 1) = xmmword_42350;
  *(v9 + 2) = xmmword_42360;
  *(v9 + 12) = 1065118335;
  *(v9 + 60) = 0;
  *(v9 + 52) = 0;
  *(v9 + 17) = 0;
  *(v9 + 9) = 1065353216;
  *&v1[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView____lazy_storage___swatchRefreshHandlerManager] = 0;
  *&v1[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView____lazy_storage___swatchTimeFormatter] = 0;
  v12.receiver = v1;
  v12.super_class = type metadata accessor for WarlockFaceView(0);
  v10 = objc_msgSendSuper2(&v12, "initWithCoder:", a1);

  if (v10)
  {
  }

  return v10;
}

id sub_1AB20(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  *&v4[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_backgroundView] = 0;
  *&v4[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_dimmingView] = 0;
  *&v4[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_digitalTimeView] = 0;
  v8 = OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_overrideDate;
  v9 = sub_36CB0();
  v10 = *(*(v9 - 8) + 56);
  v10(&v4[v8], 1, 1, v9);
  v10(&v4[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_specifierDate], 1, 1, v9);
  *&v4[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_patchworkState] = 0;
  *&v4[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView____lazy_storage___fontLoader] = 0;
  v4[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_isPaused] = 2;
  *&v4[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_breathingFraction] = 0x3FF0000000000000;
  *&v4[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_rubberBandingFraction] = 0;
  v4[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_typeface] = 0;
  *&v4[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_backgroundVisibility] = 0x3FF0000000000000;
  v11 = &v4[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView____lazy_storage___metrics];
  *v11 = 0u;
  *(v11 + 1) = 0u;
  *(v11 + 2) = 0u;
  *(v11 + 3) = 0u;
  *(v11 + 4) = 0u;
  *(v11 + 5) = 0u;
  *(v11 + 12) = 0;
  v12 = &v4[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_linearBackgroundTritiumState];
  *v12 = 1;
  *(v12 + 1) = 0x3FF0000000000000;
  v13 = &v4[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_linearTimeTransformTritiumState];
  *v13 = 1;
  *(v13 + 1) = 0x3FF0000000000000;
  *&v4[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_transitioningTypefaces] = 2;
  v14 = &v4[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_dimmingColorMatrix];
  *v14 = xmmword_42340;
  *(v14 + 1) = xmmword_42350;
  *(v14 + 2) = xmmword_42360;
  *(v14 + 12) = 1065118335;
  *(v14 + 60) = 0;
  *(v14 + 52) = 0;
  *(v14 + 17) = 0;
  *(v14 + 9) = 1065353216;
  *&v4[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView____lazy_storage___swatchRefreshHandlerManager] = 0;
  *&v4[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView____lazy_storage___swatchTimeFormatter] = 0;
  if (a4)
  {
    v15 = sub_37500();
  }

  else
  {
    v15 = 0;
  }

  v18.receiver = v4;
  v18.super_class = type metadata accessor for WarlockFaceView(0);
  v16 = objc_msgSendSuper2(&v18, "initWithFaceStyle:forDevice:clientIdentifier:", a1, a2, v15);

  if (v16)
  {
  }

  return v16;
}

void sub_1AE00(uint64_t a1)
{
  sub_1AEF4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1AEF4(uint64_t a1)
{
  if (!qword_59370)
  {
    sub_36CB0();
    v1 = sub_37870();
    if (!v2)
    {
      atomic_store(v1, &qword_59370);
    }
  }
}

double sub_1AF4C(uint64_t a1, unint64_t a2)
{
  sub_16B8C(a2);
  sub_2A938(v4);

  sub_16B38(v4);
  sub_21194(a2);

  return result;
}

uint64_t sub_1B004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_815C(&qword_593A0, &qword_42470);
  __chkstk_darwin(v9 - 8, v10);
  v12 = v26 - v11;
  sub_16B9C(a3, v26 - v11, &qword_593A0, &qword_42470);
  v13 = sub_37750();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_16C04(v12, &qword_593A0, &qword_42470);
  }

  else
  {
    sub_37740();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_37700();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_37570() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_16C04(a3, &qword_593A0, &qword_42470);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_16C04(a3, &qword_593A0, &qword_42470);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_1B304(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1B3FC;

  return v6(a1);
}

uint64_t sub_1B3FC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1B4F4(uint64_t a1, uint64_t a2)
{
  v8[3] = sub_B2AC(0, &qword_59380, UIFont_ptr);
  v8[4] = &off_52908;
  v8[0] = a1;
  v4 = OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_font;
  swift_beginAccess();
  sub_1B638((a2 + v4), v8, v5);
  swift_endAccess();
  sub_2A938(v9);

  sub_16B38(v9);
  sub_9B84(a2 + v4, v7);
  swift_getKeyPath();
  sub_1B878();
  sub_36CC0();

  sub_85EC(v8);

  return sub_85EC(v7);
}

double sub_1B638(uint64_t *a1, uint64_t *a2, __n128 result)
{
  if (a1 != a2)
  {
    v3 = a1[3];
    v4 = a2[3];
    if (v3 == v4)
    {
      v11 = *(v3 - 8);
      if ((*(v11 + 82) & 2) != 0)
      {
        v13 = *a2;

        *a1 = v13;
      }

      else
      {
        v12 = *(v11 + 24);

        v12(result);
      }
    }

    else
    {
      a1[3] = v4;
      a1[4] = a2[4];
      v5 = *(v3 - 8);
      v6 = *(v4 - 8);
      v7 = v6;
      v8 = *(v6 + 80);
      if ((*(v5 + 82) & 2) != 0)
      {
        if ((v8 & 0x20000) != 0)
        {
          *a1 = *a2;
        }

        else
        {
          (*(v6 + 16))(result);
        }
      }

      else
      {
        (*(v5 + 32))(v16, result);
        if ((v8 & 0x20000) != 0)
        {
          *a1 = *a2;
        }

        else
        {
          (*(v7 + 16))(a1, a2, v4);
        }

        (*(v5 + 8))(v16, v3);
      }
    }
  }

  return result.n128_f64[0];
}

unint64_t sub_1B878()
{
  result = qword_5A030;
  if (!qword_5A030)
  {
    _s10descr51419V5ModelCMa(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_5A030);
  }

  return result;
}

uint64_t sub_1B8D0(uint64_t a1, uint64_t a2)
{
  v8[3] = _s10descr51419V18TransitioningFontsCMa(0);
  v8[4] = &off_52918;
  v8[0] = a1;
  v4 = OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_font;
  swift_beginAccess();
  sub_1B638((a2 + v4), v8, v5);
  swift_endAccess();
  sub_2A938(v9);

  sub_16B38(v9);
  sub_9B84(a2 + v4, v7);
  swift_getKeyPath();
  sub_1B878();
  sub_36CC0();

  sub_85EC(v8);

  return sub_85EC(v7);
}

uint64_t sub_1BA04()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1BA44()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1BA84()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1BACC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1BBA0;

  return sub_35B1C(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1BBA0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1BC94()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1BCCC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1BF78;

  return sub_1B304(a1, v4);
}

uint64_t sub_1BD84(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1BBA0;

  return sub_1B304(a1, v4);
}

double sub_1BE44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t *sub_1BE78(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_1BEDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BF44(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1BF7C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v40 = sub_371E0();
  sub_36DE0();
  v4 = v54;
  v3 = v4 >> 64;
  v37 = v4;
  v5 = v55;
  v34 = sub_37420();
  v39 = v6;
  v7 = *(a1 + OBJC_IVAR___NTKTimeFontTypographicBounds_width);
  v8 = *(a1 + OBJC_IVAR___NTKTimeFontTypographicBounds_ascent);
  v9 = v8 + *(a1 + OBJC_IVAR___NTKTimeFontTypographicBounds_descent);
  sub_37420();
  sub_36E10();
  v38 = sub_371F0();
  sub_36DE0();
  v10 = v57;
  v32 = DWORD2(v57);
  v11 = sub_37420();
  v35 = v12;
  v36 = v11;
  v13 = *(a1 + OBJC_IVAR___NTKTimeFontTypographicBounds_glyphPathBounds);
  v14 = *(a1 + OBJC_IVAR___NTKTimeFontTypographicBounds_glyphPathBounds + 8);
  v15 = *(a1 + OBJC_IVAR___NTKTimeFontTypographicBounds_glyphPathBounds + 16);
  v16 = *(a1 + OBJC_IVAR___NTKTimeFontTypographicBounds_glyphPathBounds + 24);
  v113.origin.x = v13;
  v113.origin.y = v14;
  v113.size.width = v15;
  v113.size.height = v16;
  CGRectGetWidth(v113);
  v114.origin.x = v13;
  v114.origin.y = v14;
  v114.size.width = v15;
  v114.size.height = v16;
  CGRectGetHeight(v114);
  sub_37420();
  sub_36E10();
  v115.origin.x = v13;
  v115.origin.y = v14;
  v115.size.width = v15;
  v115.size.height = v16;
  v17 = v8 - CGRectGetMaxY(v115);
  sub_370C0();
  sub_37240();
  v18 = sub_37250();

  sub_36DE0();
  v19 = sub_37420();
  v31 = v20;
  v21 = v20;
  v22 = sub_37200();
  sub_37420();
  sub_36E10();
  *&v48[6] = v60;
  *&v48[22] = v61;
  *&v48[38] = v62;
  v23 = v7 * 0.5;
  v24 = v9 * 0.5;
  v63[0] = v54;
  v63[1] = v55;
  v25 = v56;
  *&v64 = v56;
  *(&v64 + 1) = v40;
  LOWORD(v65) = 256;
  *(&v65 + 1) = v34;
  *v66 = v39;
  *&v66[40] = v47;
  *&v66[24] = v46;
  *&v66[8] = v45;
  __src[2] = v64;
  __src[3] = v65;
  __src[0] = v54;
  __src[1] = v55;
  __src[4] = *v66;
  __src[5] = *&v66[16];
  __src[6] = *&v66[32];
  v67[0] = v57;
  v26 = HIDWORD(v57);
  v27 = v58;
  v67[1] = v58;
  v28 = *(&v58 + 1);
  v29 = v59;
  *&v68 = v59;
  *(&v68 + 1) = v38;
  LOWORD(v69) = 256;
  *(&v69 + 1) = v36;
  *v70 = v35;
  *&v70[24] = v43;
  *&v70[40] = v44;
  *&v70[8] = v42;
  *&v70[56] = v13;
  v71 = v17;
  *(&__src[7] + 8) = v57;
  *(&__src[11] + 8) = *v70;
  *(&__src[10] + 8) = v69;
  *(&__src[9] + 8) = v68;
  *(&__src[8] + 8) = v58;
  *&__src[7] = *(&v47 + 1);
  *(&__src[15] + 1) = v17;
  *(&__src[14] + 8) = *&v70[48];
  *(&__src[13] + 8) = *&v70[32];
  *(&__src[12] + 8) = *&v70[16];
  v72[2] = v51;
  v72[3] = v52;
  v72[4] = v53;
  v72[1] = v50;
  v72[0] = v49;
  *&v73 = v18;
  WORD4(v73) = 256;
  *&v74 = v19;
  *(&v74 + 1) = v21;
  __src[18] = v51;
  __src[19] = v52;
  __src[16] = v49;
  __src[17] = v50;
  __src[20] = v53;
  __src[21] = v73;
  *v75 = v22;
  *&v75[8] = 256;
  *&v75[10] = *v48;
  *&v75[26] = *&v48[16];
  *&v75[42] = *&v48[32];
  *&v75[56] = *(&v62 + 1);
  *&v76 = v23;
  *(&v76 + 1) = v24;
  __src[22] = v74;
  __src[23] = *v75;
  __src[26] = *&v75[48];
  __src[27] = v76;
  __src[24] = *&v75[16];
  __src[25] = *&v75[32];
  memcpy(a2, __src, 0x1C0uLL);
  v77 = v22;
  v78 = 256;
  v79 = *v48;
  v80 = *&v48[16];
  *v81 = *&v48[32];
  *&v81[14] = *&v48[46];
  v82 = v23;
  v83 = v24;
  sub_16B9C(v63, &v89, &qword_593A8, &qword_42498);
  sub_16B9C(v67, &v89, &qword_593B0, &qword_424A0);
  sub_16B9C(v72, &v89, &qword_593B8, &qword_424A8);
  sub_16B9C(v75, &v89, &qword_593C0, &unk_424B0);
  sub_16C04(&v77, &qword_593C0, &unk_424B0);
  v84[2] = v51;
  v84[3] = v52;
  v84[4] = v53;
  v84[1] = v50;
  v84[0] = v49;
  v85 = v18;
  v86 = 256;
  v87 = v19;
  v88 = v31;
  sub_16C04(v84, &qword_593B8, &qword_424A8);
  v89 = v10;
  v90 = v32;
  v91 = v26;
  v92 = v27;
  v93 = v28;
  v94 = v29;
  v95 = v38;
  v96 = 256;
  v97 = v36;
  v98 = v35;
  v99 = v42;
  v100 = v43;
  v101 = v44;
  v102 = v13;
  v103 = v17;
  sub_16C04(&v89, &qword_593B0, &qword_424A0);
  v104[0] = __PAIR128__(v3, v37);
  v104[1] = v5;
  v105 = v25;
  v106 = v40;
  v107 = 256;
  v108 = v34;
  v109 = v39;
  v110 = v45;
  v111 = v46;
  v112 = v47;
  return sub_16C04(v104, &qword_593A8, &qword_42498);
}

id sub_1C720()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TimeFontTypographicBounds();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1C78C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = &v3[OBJC_IVAR___NTKTimeFontTypographicBounds_text];
  *v5 = a1;
  *(v5 + 1) = a2;
  sub_815C(&qword_58968, &qword_424E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_414F0;
  *(inited + 32) = NSFontAttributeName;
  v7 = sub_16CF4();
  *(inited + 40) = a3;
  *(inited + 64) = v7;
  *(inited + 72) = NSTrackingAttributeName;
  *(inited + 104) = &type metadata for Int;
  *(inited + 80) = 0;

  v8 = NSFontAttributeName;
  v9 = a3;
  v10 = NSTrackingAttributeName;
  sub_34BFC(inited);
  swift_setDeallocating();
  sub_815C(&qword_58988, &qword_415F0);
  swift_arrayDestroy();
  v11 = objc_allocWithZone(NSAttributedString);
  v12 = sub_37500();

  type metadata accessor for Key(0);
  sub_B2F4();
  isa = sub_374C0().super.isa;

  v14 = [v11 initWithString:v12 attributes:isa];

  v15 = CTLineCreateWithAttributedString(v14);
  descent = 0.0;
  ascent = 0.0;
  leading = 0.0;
  TypographicBounds = CTLineGetTypographicBounds(v15, &ascent, &descent, &leading);
  ImageBounds = CTLineGetImageBounds(v15, 0);
  x = ImageBounds.origin.x;
  y = ImageBounds.origin.y;
  width = ImageBounds.size.width;
  height = ImageBounds.size.height;
  BoundsWithOptions = CTLineGetBoundsWithOptions(v15, 8uLL);
  v20 = BoundsWithOptions.origin.x;
  v21 = BoundsWithOptions.origin.y;
  v22 = BoundsWithOptions.size.width;
  v23 = BoundsWithOptions.size.height;

  *&v3[OBJC_IVAR___NTKTimeFontTypographicBounds_width] = TypographicBounds;
  v24 = descent;
  *&v3[OBJC_IVAR___NTKTimeFontTypographicBounds_ascent] = ascent;
  *&v3[OBJC_IVAR___NTKTimeFontTypographicBounds_descent] = v24;
  *&v3[OBJC_IVAR___NTKTimeFontTypographicBounds_leading] = leading;
  v25 = &v3[OBJC_IVAR___NTKTimeFontTypographicBounds_imageBounds];
  *v25 = x;
  v25[1] = y;
  v25[2] = width;
  v25[3] = height;
  v26 = &v3[OBJC_IVAR___NTKTimeFontTypographicBounds_glyphPathBounds];
  *v26 = v20;
  v26[1] = v21;
  v26[2] = v22;
  v26[3] = v23;
  v29.receiver = v3;
  v29.super_class = type metadata accessor for TimeFontTypographicBounds();
  return objc_msgSendSuper2(&v29, "init");
}

uint64_t sub_1CA50(uint64_t a1)
{
  v1 = *(a1 + 20);
  if (v1 > 2)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1CA64(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 93) = *(a2 + 93);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1CA90(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 109))
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

uint64_t sub_1CAD8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 108) = 0;
    *(result + 104) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 109) = 1;
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

    *(result + 109) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1CB48@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

__n128 sub_1CB54(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1CB70(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 57))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 33);
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1CBB4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 33) = a2 + 2;
    }
  }

  return result;
}

uint64_t _s10descr51419V6LayoutV4RectOwCP(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

BOOL sub_1CC58(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  v6[0] = a1[2];
  *(v6 + 9) = *(a1 + 41);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8[0] = a2[2];
  *(v8 + 9) = *(a2 + 41);
  return sub_1D1B8(v5, v7);
}

uint64_t sub_1CCDC()
{
  v1._countAndFlagsBits = 0x7A696C616D726F6ELL;
  v1._object = 0xEB00000000286465;
  sub_375D0(v1);
  type metadata accessor for CGRect(0);
  sub_37A20();
  v2._countAndFlagsBits = 41;
  v2._object = 0xE100000000000000;
  sub_375D0(v2);
  return 0;
}

uint64_t sub_1CD74(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6574756E696DLL;
  }

  else
  {
    v3 = 1920298856;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x6574756E696DLL;
  }

  else
  {
    v5 = 1920298856;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_37AD0();
  }

  return v8 & 1;
}

Swift::Int sub_1CE10()
{
  sub_37B30();
  sub_375A0();

  return sub_37B80();
}

double sub_1CE88(uint64_t a1)
{
  sub_375A0();

  return result;
}

Swift::Int sub_1CEEC(uint64_t a1)
{
  sub_37B30();
  sub_375A0();

  return sub_37B80();
}

void sub_1CF60(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_520D8;
  v7._object = v3;
  v5 = sub_37A90(v4, v7);

  if (v5 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v5)
  {
    v6 = 0;
  }

  *a2 = v6;
}

void sub_1CFC0(uint64_t *a1@<X8>)
{
  v2 = 1920298856;
  if (*v1)
  {
    v2 = 0x6574756E696DLL;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1D030(char a1)
{
  if (a1 == 2)
  {
    return 0x656E696C6E69;
  }

  if (a1 == 3)
  {
    return 0x64656B63617473;
  }

  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3._countAndFlagsBits = 0x6574756E696DLL;
  }

  else
  {
    v3._countAndFlagsBits = 1920298856;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  v3._object = v4;
  sub_375D0(v3);

  v5._countAndFlagsBits = 41;
  v5._object = 0xE100000000000000;
  sub_375D0(v5);
  return 0x287469676964;
}

BOOL sub_1D100(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3)
  {
    if (a3 == 1)
    {
      if (a6 == 1)
      {
        return *&a1 == *&a4 && *&a2 == *&a5;
      }
    }

    else if (a1 | a2)
    {
      if (a6 == 2 && a4 == 1 && *&a5 == 0.0)
      {
        return 1;
      }
    }

    else if (a6 == 2 && !(a5 | a4))
    {
      return 1;
    }

    return 0;
  }

  if (a6)
  {
    return 0;
  }

  return *&a2 == *&a5 && *&a1 == *&a4;
}

BOOL sub_1D1B8(uint64_t a1, uint64_t a2)
{
  if (!CGRectEqualToRect(*a1, *a2))
  {
    return 0;
  }

  v4 = *(a1 + 32);
  v5 = *(a2 + 32);
  if (v4 == 3)
  {
    if (v5 != 3)
    {
      return 0;
    }
  }

  else if (v4 == 2)
  {
    if (v5 != 2)
    {
      return 0;
    }
  }

  else
  {
    if ((v5 & 0xFE) == 2)
    {
      return 0;
    }

    if (v4)
    {
      v6 = 0x6574756E696DLL;
    }

    else
    {
      v6 = 1920298856;
    }

    if (v4)
    {
      v7 = 0xE600000000000000;
    }

    else
    {
      v7 = 0xE400000000000000;
    }

    if (v5)
    {
      v8 = 0x6574756E696DLL;
    }

    else
    {
      v8 = 1920298856;
    }

    if (v5)
    {
      v9 = 0xE600000000000000;
    }

    else
    {
      v9 = 0xE400000000000000;
    }

    if (v6 == v8 && v7 == v9)
    {

      goto LABEL_25;
    }

    v10 = sub_37AD0();

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

LABEL_25:
  if (*(a1 + 33) != *(a2 + 33))
  {
    return 0;
  }

  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  v13 = *(a2 + 40);
  v14 = *(a2 + 48);
  v15 = *(a2 + 56);
  v16 = *(a1 + 56);

  return sub_1D100(v11, v12, v16, v13, v14, v15);
}

__n128 _s10descr51419V6LayoutV11AdjustmentsOwCP(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t _s10descr51419V6LayoutV11AdjustmentsOwet(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t _s10descr51419V6LayoutV11AdjustmentsOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D3A8(uint64_t a1)
{
  if (*(a1 + 16) <= 1u)
  {
    return *(a1 + 16);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_1D3C0(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t _s10descr51419V6LayoutV9AlignmentOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s10descr51419V6LayoutV9AlignmentOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _s10descr51419V6LayoutV11ArrangementOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_20;
  }

  v2 = a2 + 3;
  if (a2 + 3 >= 0xFFFF00)
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

    return (*a1 | (v5 << 8)) - 3;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 3;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 2)
  {
    v8 = v7 - 1;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 3)
  {
    return v8 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t _s10descr51419V6LayoutV11ArrangementOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 3;
  if (a3 + 3 >= 0xFFFF00)
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

  if (a3 < 0xFD)
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1D690(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 2)
  {
    return v1 - 1;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1D6A4(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

unint64_t sub_1D6C8()
{
  result = qword_59428;
  if (!qword_59428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_59428);
  }

  return result;
}

BOOL sub_1D71C(char a1, char a2)
{
  if (a1 == 2)
  {
    return a2 == 2;
  }

  if (a1 == 3)
  {
    return a2 == 3;
  }

  if ((a2 & 0xFE) == 2)
  {
    return 0;
  }

  v3 = (a1 & 1) == 0;
  if (a1)
  {
    v4 = 0x6574756E696DLL;
  }

  else
  {
    v4 = 1920298856;
  }

  if (v3)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE600000000000000;
  }

  if (a2)
  {
    v6 = 0x6574756E696DLL;
  }

  else
  {
    v6 = 1920298856;
  }

  if (a2)
  {
    v7 = 0xE600000000000000;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {

    return 1;
  }

  else
  {
    v8 = sub_37AD0();

    return v8 & 1;
  }
}

unint64_t sub_1D824()
{
  result = qword_59430;
  if (!qword_59430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_59430);
  }

  return result;
}

uint64_t sub_1D878()
{
  if (qword_58580 != -1)
  {
    swift_once();
  }

  v0 = qword_5CDE0;
  type metadata accessor for WarlockRampColorState();
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  qword_5CD28 = v1;
}

uint64_t sub_1D900()
{

  return _swift_deallocClassInstance(v0, 36, 7);
}

__n128 sub_1D970(uint64_t a1, __int128 *a2)
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
  *(a1 + 111) = *(a2 + 111);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_1D99C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 127))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D9E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 126) = 0;
    *(result + 124) = 0;
    *(result + 120) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 127) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 127) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1DA78(int a1@<W0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v25 = a1;
  v29 = a3;
  v27 = sub_815C(&qword_59628, &qword_42AD8);
  __chkstk_darwin(v27, v4);
  v6 = &v24[-v5];
  v28 = sub_815C(&qword_59630, &qword_42AE0);
  __chkstk_darwin(v28, v7);
  v9 = &v24[-v8];
  v10 = a2[2];
  v11 = a2[3];
  v13 = a2[7];
  v12 = a2[8];
  sub_AD00(a2 + 4, v13);
  v14 = *(v12 + 8);

  v15 = v14(v13, v12);
  v16 = objc_allocWithZone(type metadata accessor for TimeFontTypographicBounds());
  v17 = sub_1C78C(v10, v11, v15);

  if (v25)
  {
    v18 = sub_37410();
    v20 = v19;
    sub_1BF7C(v17, v35);
    memcpy(v32, v35, sizeof(v32));
    memcpy(v33, v35, sizeof(v33));
    sub_16B9C(v32, v34, &qword_59688, &qword_42AF8);
    sub_16C04(v33, &qword_59688, &qword_42AF8);
    memcpy(v31, v32, sizeof(v31));
    v21 = sub_37420();
    v23 = v22;
    v34[0] = v18;
    v34[1] = v20;
    memcpy(&v34[2], v31, 0x1C0uLL);
    LOBYTE(v34[58]) = 0;
    v34[59] = v21;
    v34[60] = v23;
    sub_16B9C(v26, v9, &qword_59568, &qword_42A08);
    memcpy(&v9[*(v28 + 36)], v34, 0x1E8uLL);
    v35[0] = v18;
    v35[1] = v20;
    memcpy(&v35[2], v31, 0x1C0uLL);
    v36 = 0;
    v37 = v21;
    v38 = v23;
    sub_16B9C(v34, &v30, &qword_59680, &qword_42AF0);
    sub_16C04(v35, &qword_59680, &qword_42AF0);
    sub_16B9C(v9, v6, &qword_59630, &qword_42AE0);
    swift_storeEnumTagMultiPayload();
    sub_815C(&qword_59568, &qword_42A08);
    sub_1FCFC();
    sub_1FDB4();
    sub_37020();

    sub_16C04(v9, &qword_59630, &qword_42AE0);
  }

  else
  {
    sub_16B9C(v26, v6, &qword_59568, &qword_42A08);
    swift_storeEnumTagMultiPayload();
    sub_815C(&qword_59568, &qword_42A08);
    sub_1FCFC();
    sub_1FDB4();
    sub_37020();
  }
}

uint64_t sub_1DE20()
{
  v1 = sub_36FB0();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1, v3);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  v7 = *(v0 + 8);

  if ((v7 & 1) == 0)
  {
    sub_37800();
    v8 = sub_37070();
    sub_36D50();

    sub_36FA0();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v1);
    return v10[1];
  }

  return v6;
}

uint64_t sub_1DF60@<X0>(uint64_t a1@<X8>)
{
  v78 = a1;
  v70 = sub_815C(&qword_59530, &qword_429D0);
  __chkstk_darwin(v70, v2);
  v71 = &v61 - v3;
  v72 = sub_815C(&qword_59538, &qword_429D8);
  v63 = *(v72 - 8);
  __chkstk_darwin(v72, v4);
  v62 = &v61 - v5;
  v6 = sub_815C(&qword_59540, &qword_429E0);
  __chkstk_darwin(v6 - 8, v7);
  v66 = &v61 - v8;
  v67 = sub_815C(&qword_59548, &qword_429E8);
  __chkstk_darwin(v67, v9);
  v65 = &v61 - v10;
  v11 = sub_815C(&qword_59550, &qword_429F0);
  __chkstk_darwin(v11 - 8, v12);
  v69 = &v61 - v13;
  v68 = sub_815C(&qword_59558, &qword_429F8);
  __chkstk_darwin(v68, v14);
  v75 = &v61 - v15;
  v73 = sub_815C(&qword_59560, &qword_42A00);
  __chkstk_darwin(v73, v16);
  v77 = &v61 - v17;
  v74 = sub_815C(&qword_59568, &qword_42A08);
  __chkstk_darwin(v74, v18);
  v76 = &v61 - v19;
  v20 = *(v1 + 40);
  *&v79 = *(v1 + 32);
  *(&v79 + 1) = v20;
  sub_1F520();

  v21 = sub_370F0();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v64 = v1;
  v29 = *(v1 + 104);
  v28 = *(v1 + 112);
  v30 = *(v1 + 120) | (*(v1 + 124) << 32);
  v31 = *(v1 + 125);
  v32 = sub_1DE20();
  v33 = v66;
  v34 = v29;
  v35 = v65;
  sub_1E730(v34, v28, v30, v31, v32, v21, v23, v25 & 1, v66, v27);
  v36 = v64;

  sub_1F574(v21, v23, v25 & 1);

  sub_1F084((v36 + 48), v35);
  sub_16C04(v33, &qword_59540, &qword_429E0);
  if (*(v36 + 96))
  {
    sub_16B9C(v35, v71, &qword_59548, &qword_429E8);
    swift_storeEnumTagMultiPayload();
    v37 = sub_1F584();
    *&v79 = v67;
    *(&v79 + 1) = v37;
    swift_getOpaqueTypeConformance2();
    v38 = v69;
    sub_37020();
  }

  else
  {
    v39 = sub_1F584();
    v40 = v62;
    v41 = v67;
    sub_371A0();
    v42 = v63;
    v43 = v72;
    (*(v63 + 16))(v71, v40, v72);
    swift_storeEnumTagMultiPayload();
    *&v79 = v41;
    *(&v79 + 1) = v39;
    swift_getOpaqueTypeConformance2();
    v38 = v69;
    sub_37020();
    (*(v42 + 8))(v40, v43);
  }

  sub_16C04(v35, &qword_59548, &qword_429E8);
  v44 = *(v36 + 97);
  KeyPath = swift_getKeyPath();
  v46 = v75;
  sub_1FC94(v38, v75, &qword_59550, &qword_429F0);
  v47 = v46 + *(v68 + 36);
  *v47 = KeyPath;
  if (v44)
  {
    if (v44 == 1)
    {
      *(v47 + 8) = 1;
      sub_37420();
    }

    else
    {
      *(v47 + 8) = 0;
      sub_37430();
    }
  }

  else
  {
    *(v47 + 8) = 2;
    sub_37440();
  }

  v48 = v74;
  sub_36EF0();
  v49 = v77;
  sub_1FC94(v46, v77, &qword_59558, &qword_429F8);
  v50 = (v49 + *(v73 + 36));
  v51 = v84;
  v50[4] = v83;
  v50[5] = v51;
  v50[6] = v85;
  v52 = v80;
  *v50 = v79;
  v50[1] = v52;
  v53 = v82;
  v50[2] = v81;
  v50[3] = v53;
  v54 = swift_getKeyPath();
  v55 = v76;
  v56 = &v76[*(v48 + 36)];
  v57 = *(sub_815C(&qword_59620, &qword_42AD0) + 28);
  v58 = enum case for LayoutDirection.leftToRight(_:);
  v59 = sub_36EB0();
  (*(*(v59 - 8) + 104))(v56 + v57, v58, v59);
  *v56 = v54;
  sub_1FC94(v49, v55, &qword_59560, &qword_42A00);
  sub_1DA78(*(v36 + 126), (v36 + 16), v78);
  return sub_16C04(v55, &qword_59568, &qword_42A08);
}

void sub_1E730(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v87 = a5;
  v88 = a1;
  v85 = a4;
  v13 = BYTE4(a3);
  v89 = a2;
  v90 = a9;
  v14 = sub_815C(&qword_595D8, &qword_42A40);
  v80 = *(v14 - 8);
  __chkstk_darwin(v14, v15);
  v86 = v73 - v16;
  v17 = sub_815C(&qword_595D0, &qword_42A38);
  v81 = *(v17 - 8);
  __chkstk_darwin(v17, v18);
  v78 = v73 - v19;
  v20 = sub_815C(&qword_595C8, &qword_42A30);
  v82 = *(v20 - 8);
  __chkstk_darwin(v20, v21);
  v79 = v73 - v22;
  v23 = sub_815C(&qword_59698, &qword_42B70);
  v84 = *(v23 - 8);
  __chkstk_darwin(v23, v24);
  v83 = v73 - v25;
  v26 = sub_815C(&qword_596A0, &unk_42B78);
  __chkstk_darwin(v26, v27);
  v31 = v73 - v30;
  v32 = v13;
  if (v32 <= 0xFE)
  {
    v73[1] = a8;
    v73[2] = a7;
    v73[3] = v28;
    v74 = v14;
    v75 = v17;
    v76 = v20;
    v77 = v23;
    v73[0] = v29;
    if (v85 == 2)
    {
      v39 = v88;
      v38 = v89;
      v40 = v29;
      sub_16B18(v88, v89, v29, SBYTE4(v29));
      v41 = COERCE_DOUBLE(sub_36D10());
      if (v42)
      {
        v41 = 0.0;
      }

      *&v96 = sub_E880(v39, v38, v40 & 0xFFFFFFFFFFLL, v41);
      v43 = sub_370E0();
      v45 = v44;
      v47 = v46;
      v49 = v48;
      v87 = v48;

      v50 = v47 & 1;
      v86 = v43;
      v91 = v43;
      v92 = v45;
      v93 = v50;
      v94 = v49;
      v95 = 1;
      sub_2014C(v43, v45, v50);

      sub_37020();
      v51 = v96;
      v52 = v97;
      v53 = v98;
      *v31 = v96;
      *(v31 + 1) = v52;
      v31[32] = v53;
      swift_storeEnumTagMultiPayload();
      sub_2015C(v51, *(&v51 + 1), v52, *(&v52 + 1));
      sub_815C(&qword_595C0, &qword_42A28);
      sub_1F948();
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      *&v96 = v74;
      *(&v96 + 1) = OpaqueTypeConformance2;
      v55 = swift_getOpaqueTypeConformance2();
      *&v96 = v75;
      *(&v96 + 1) = v55;
      v56 = swift_getOpaqueTypeConformance2();
      *&v96 = v76;
      *(&v96 + 1) = v56;
      swift_getOpaqueTypeConformance2();
      sub_37020();
      sub_20138(v88, v89, v73[0]);
      sub_20198(v51, *(&v51 + 1), v52, *(&v52 + 1));
      sub_1F574(v86, v45, v50);
    }

    else
    {
      v58 = v88;
      v57 = v89;
      v59 = v29;
      sub_16B18(v88, v89, v29, SBYTE4(v29));
      sub_37010();
      sub_370D0();
      if (v32 == 1)
      {
        sub_16B18(v58, v57, v59, 1);
      }

      v60 = v77;
      v61 = swift_getOpaqueTypeConformance2();
      v62 = v78;
      v63 = v74;
      v64 = v86;
      sub_37100();

      (*(v80 + 8))(v64, v63);
      *&v96 = v63;
      *(&v96 + 1) = v61;
      v65 = swift_getOpaqueTypeConformance2();
      v66 = v79;
      v67 = v75;
      sub_37120();
      (*(v81 + 8))(v62, v67);
      *&v96 = v67;
      *(&v96 + 1) = v65;
      v68 = swift_getOpaqueTypeConformance2();
      v69 = v83;
      v70 = v76;
      sub_37110();
      (*(v82 + 8))(v66, v70);
      v71 = v84;
      (*(v84 + 16))(v31, v69, v60);
      swift_storeEnumTagMultiPayload();
      sub_815C(&qword_595C0, &qword_42A28);
      sub_1F948();
      *&v96 = v70;
      *(&v96 + 1) = v68;
      swift_getOpaqueTypeConformance2();
      sub_37020();
      v72 = sub_20138(v58, v89, v73[0]);
      (*(v71 + 8))(v69, v60, v72);
    }
  }

  else
  {
    v91 = a6;
    v92 = a7;
    v93 = a8 & 1;
    v94 = a10;
    v95 = 0;
    sub_2014C(a6, a7, a8 & 1);

    sub_37020();
    v33 = v98;
    v34 = v97;
    *v31 = v96;
    *(v31 + 1) = v34;
    v31[32] = v33;
    swift_storeEnumTagMultiPayload();
    sub_815C(&qword_595C0, &qword_42A28);
    sub_1F948();
    v35 = swift_getOpaqueTypeConformance2();
    *&v96 = v14;
    *(&v96 + 1) = v35;
    v36 = swift_getOpaqueTypeConformance2();
    *&v96 = v17;
    *(&v96 + 1) = v36;
    v37 = swift_getOpaqueTypeConformance2();
    *&v96 = v20;
    *(&v96 + 1) = v37;
    swift_getOpaqueTypeConformance2();
    sub_37020();
  }
}

uint64_t sub_1F084@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v31[1] = a2;
  v5 = sub_815C(&qword_595F8, &qword_42A50);
  __chkstk_darwin(v5, v6);
  v8 = v31 - v7;
  v9 = sub_815C(&qword_59690, &unk_42B00);
  __chkstk_darwin(v9, v10);
  v12 = v31 - v11;
  v13 = sub_815C(&qword_59588, &qword_42A10);
  __chkstk_darwin(v13, v14);
  v16 = v31 - v15;
  sub_9B84(a1, v32);
  sub_815C(&qword_587A0, &qword_414A8);
  _s10descr51419V18TransitioningFontsCMa(0);
  if (swift_dynamicCast())
  {
    v17 = v31[2];
    sub_16B9C(v3, v16, &qword_59540, &qword_429E0);
    *&v16[*(sub_815C(&qword_595A8, &qword_42A20) + 36)] = v17;
    *&v16[*(sub_815C(&qword_59598, &qword_42A18) + 36)] = 257;
    KeyPath = swift_getKeyPath();
    v19 = &v16[*(v13 + 36)];
    *v19 = KeyPath;
    *(v19 + 1) = 0;
    v19[16] = 1;
    sub_16B9C(v16, v12, &qword_59588, &qword_42A10);
    swift_storeEnumTagMultiPayload();
    sub_1F610();
    sub_1F9C4();
    sub_37020();
    v20 = v16;
    v21 = &qword_59588;
    v22 = &qword_42A10;
  }

  else
  {
    v24 = a1[3];
    v23 = a1[4];
    sub_AD00(a1, v24);
    (*(v23 + 8))(v24, v23);
    v25 = sub_37090();
    v26 = swift_getKeyPath();
    sub_16B9C(v3, v8, &qword_59540, &qword_429E0);
    v27 = &v8[*(sub_815C(&qword_59618, &unk_42A60) + 36)];
    *v27 = v26;
    v27[1] = v25;
    *&v8[*(sub_815C(&qword_59608, &qword_42A58) + 36)] = 257;
    v28 = swift_getKeyPath();
    v29 = &v8[*(v5 + 36)];
    *v29 = v28;
    *(v29 + 1) = 0;
    v29[16] = 1;
    sub_16B9C(v8, v12, &qword_595F8, &qword_42A50);
    swift_storeEnumTagMultiPayload();
    sub_1F610();
    sub_1F9C4();
    sub_37020();
    v20 = v8;
    v21 = &qword_595F8;
    v22 = &qword_42A50;
  }

  return sub_16C04(v20, v21, v22);
}

uint64_t sub_1F430(uint64_t a1)
{
  v2 = sub_36EB0();
  v4 = __chkstk_darwin(v2, v3);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  return sub_36F30();
}

unint64_t sub_1F520()
{
  result = qword_59570;
  if (!qword_59570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_59570);
  }

  return result;
}

double sub_1F574(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }

  return result;
}

unint64_t sub_1F584()
{
  result = qword_59578;
  if (!qword_59578)
  {
    sub_D5DC(&qword_59548, &qword_429E8);
    sub_1F610();
    sub_1F9C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_59578);
  }

  return result;
}

unint64_t sub_1F610()
{
  result = qword_59580;
  if (!qword_59580)
  {
    sub_D5DC(&qword_59588, &qword_42A10);
    sub_1F6C8();
    sub_12044(&qword_595E0, &qword_595E8, &qword_42A48, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_59580);
  }

  return result;
}

unint64_t sub_1F6C8()
{
  result = qword_59590;
  if (!qword_59590)
  {
    sub_D5DC(&qword_59598, &qword_42A18);
    sub_1F754();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_59590);
  }

  return result;
}

unint64_t sub_1F754()
{
  result = qword_595A0;
  if (!qword_595A0)
  {
    sub_D5DC(&qword_595A8, &qword_42A20);
    sub_1F7E0();
    sub_11C70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_595A0);
  }

  return result;
}

unint64_t sub_1F7E0()
{
  result = qword_595B0;
  if (!qword_595B0)
  {
    sub_D5DC(&qword_59540, &qword_429E0);
    sub_1F948();
    sub_D5DC(&qword_595C8, &qword_42A30);
    sub_D5DC(&qword_595D0, &qword_42A38);
    sub_D5DC(&qword_595D8, &qword_42A40);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_595B0);
  }

  return result;
}

unint64_t sub_1F948()
{
  result = qword_595B8;
  if (!qword_595B8)
  {
    sub_D5DC(&qword_595C0, &qword_42A28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_595B8);
  }

  return result;
}

unint64_t sub_1F9C4()
{
  result = qword_595F0;
  if (!qword_595F0)
  {
    sub_D5DC(&qword_595F8, &qword_42A50);
    sub_1FA7C();
    sub_12044(&qword_595E0, &qword_595E8, &qword_42A48, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_595F0);
  }

  return result;
}

unint64_t sub_1FA7C()
{
  result = qword_59600;
  if (!qword_59600)
  {
    sub_D5DC(&qword_59608, &qword_42A58);
    sub_1FB08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_59600);
  }

  return result;
}

unint64_t sub_1FB08()
{
  result = qword_59610;
  if (!qword_59610)
  {
    sub_D5DC(&qword_59618, &unk_42A60);
    sub_1F7E0();
    sub_12044(&qword_59018, &qword_59020, &qword_41F18, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_59610);
  }

  return result;
}

uint64_t sub_1FBC0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_36F60();
  *a1 = result;
  return result;
}

uint64_t sub_1FC18@<X0>(_BYTE *a1@<X8>)
{
  result = sub_36F40();
  *a1 = result;
  return result;
}

uint64_t sub_1FC94(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_815C(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_1FCFC()
{
  result = qword_59638;
  if (!qword_59638)
  {
    sub_D5DC(&qword_59630, &qword_42AE0);
    sub_1FDB4();
    sub_12044(&qword_59678, &qword_59680, &qword_42AF0, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_59638);
  }

  return result;
}

unint64_t sub_1FDB4()
{
  result = qword_59640;
  if (!qword_59640)
  {
    sub_D5DC(&qword_59568, &qword_42A08);
    sub_1FE6C();
    sub_12044(&qword_59670, &qword_59620, &qword_42AD0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_59640);
  }

  return result;
}

unint64_t sub_1FE6C()
{
  result = qword_59648;
  if (!qword_59648)
  {
    sub_D5DC(&qword_59560, &qword_42A00);
    sub_1FEF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_59648);
  }

  return result;
}

unint64_t sub_1FEF8()
{
  result = qword_59650;
  if (!qword_59650)
  {
    sub_D5DC(&qword_59558, &qword_429F8);
    sub_1FFB0();
    sub_12044(&qword_59660, &qword_59668, &qword_42AE8, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_59650);
  }

  return result;
}

unint64_t sub_1FFB0()
{
  result = qword_59658;
  if (!qword_59658)
  {
    sub_D5DC(&qword_59550, &qword_429F0);
    sub_D5DC(&qword_59548, &qword_429E8);
    sub_1F584();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_59658);
  }

  return result;
}

uint64_t sub_2007C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_36F60();
  *a1 = result;
  return result;
}

uint64_t sub_200D4@<X0>(uint64_t a1@<X8>)
{
  result = sub_36F80();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

double sub_20138(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (BYTE4(a3) != 255)
  {
    return sub_16A8C(a1, a2, a3, SBYTE4(a3));
  }

  return result;
}

void sub_2014C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_2015C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_2014C(a1, a2, a3 & 1);
}

double sub_20198(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_1F574(a1, a2, a3 & 1);

  return result;
}

unint64_t sub_201D8()
{
  result = qword_596A8;
  if (!qword_596A8)
  {
    sub_D5DC(&qword_596B0, &qword_42B88);
    sub_1FCFC();
    sub_1FDB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_596A8);
  }

  return result;
}

uint64_t sub_20264()
{
  result = sub_20288();
  byte_596B8 = result & 1;
  return result;
}

id sub_20288()
{
  v0 = sub_36D80();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0, v2);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_36D70();
  if ((sub_37400() & 1) == 0)
  {
    v9 = sub_36D60();
    v10 = sub_377F0();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      v12 = "Solarium disabled";
LABEL_9:
      _os_log_impl(&dword_0, v9, v10, v12, v11, 2u);
    }

LABEL_10:

    v8 = 0;
    goto LABEL_11;
  }

  result = [objc_opt_self() currentDevice];
  if (result)
  {
    v6 = result;
    v7 = [result isRunningNapiliGMOrLater];

    if (v7)
    {
      v8 = 1;
LABEL_11:
      (*(v1 + 8))(v4, v0);
      return v8;
    }

    v9 = sub_36D60();
    v10 = sub_377F0();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      v12 = "Current device is not running required OS.";
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  __break(1u);
  return result;
}

id sub_20524(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for DigitalTimeViewFeatures();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t _s10descr51419V14TimeTransitionOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_20;
  }

  v2 = a2 + 2;
  if (a2 + 2 >= 0xFFFF00)
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

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 2;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 2;
  v9 = (v7 + 2147483646) & 0x7FFFFFFF;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t _s10descr51419V14TimeTransitionOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 2;
  if (a3 + 2 >= 0xFFFF00)
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

  if (a3 < 0xFE)
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_206E0(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_206FC(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

__n128 sub_20724@<Q0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_21F14(&qword_5A030, _s10descr51419V5ModelCMa, &unk_42C88);
  sub_36CD0();

  v3 = *(v1 + 32);
  *a1 = *(v1 + 16);
  *(a1 + 16) = v3;
  *(a1 + 32) = *(v1 + 48);
  result = *(v1 + 57);
  *(a1 + 41) = result;
  return result;
}

__n128 sub_207DC(uint64_t a1)
{
  v3 = v1[2];
  v8[0] = v1[1];
  v8[1] = v3;
  v9[0] = v1[3];
  *(v9 + 9) = *(v1 + 57);
  if (sub_2202C(v8, a1))
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath, v5);
    sub_21F14(&qword_5A030, _s10descr51419V5ModelCMa, &unk_42C88);
    sub_36CC0();
  }

  else
  {
    v7 = *(a1 + 16);
    v1[1] = *a1;
    v1[2] = v7;
    v1[3] = *(a1 + 32);
    result = *(a1 + 41);
    *(v1 + 57) = result;
  }

  return result;
}

__n128 sub_20918(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *(a1 + 16) = *a2;
  *(a1 + 32) = v2;
  *(a1 + 48) = *(a2 + 32);
  result = *(a2 + 41);
  *(a1 + 57) = result;
  return result;
}

uint64_t sub_20934@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_21F14(&qword_5A030, _s10descr51419V5ModelCMa, &unk_42C88);
  sub_36CD0();

  swift_beginAccess();
  return sub_9B84(v1 + 80, a1);
}

uint64_t sub_209F4(uint64_t a1, uint64_t *a2)
{
  swift_beginAccess();
  sub_1B638((a1 + 80), a2, v4);
  return swift_endAccess();
}

uint64_t sub_20A58()
{
  swift_getKeyPath();
  sub_21F14(&qword_5A030, _s10descr51419V5ModelCMa, &unk_42C88);
  sub_36CD0();

  return *(v0 + 120);
}

double sub_20AFC(uint64_t a1, char a2)
{
  if ((*(v2 + 128) & 1) == 0)
  {
    if (a2)
    {
      goto LABEL_7;
    }

    result = *(v2 + 120);
    if (result != *&a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v2 + 120) = *&a1;
    *(v2 + 128) = a2 & 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath, v5);
  sub_21F14(&qword_5A030, _s10descr51419V5ModelCMa, &unk_42C88);
  sub_36CC0();

  return result;
}

uint64_t sub_20C34()
{
  swift_getKeyPath();
  v3 = v0;
  sub_21F14(&qword_5A030, _s10descr51419V5ModelCMa, &unk_42C88);
  sub_36CD0();

  v1 = *(v0 + 136);
  sub_16B18(v1, *(v3 + 144), *(v3 + 152), *(v3 + 156));
  return v1;
}

void sub_20CFC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v7 = HIDWORD(a3);
  v9 = *(v3 + 136);
  v8 = *(v3 + 144);
  v10 = *(v3 + 152);
  if (!*(v3 + 156))
  {
    if (!BYTE4(a3))
    {

      v12 = sub_371D0();
      sub_16A8C(v9, v8, v10, 0);
      if (v12)
      {
        goto LABEL_17;
      }
    }

LABEL_20:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath, v18);
    sub_21F14(&qword_5A030, _s10descr51419V5ModelCMa, &unk_42C88);
    sub_36CC0();
    sub_16A8C(a1, a2, a3, v7);

    return;
  }

  if (*(v3 + 156) != 1)
  {
    if (BYTE4(a3) == 2 && !(a2 | a1) && !a3)
    {
      goto LABEL_17;
    }

    goto LABEL_20;
  }

  if (BYTE4(a3) != 1)
  {
    goto LABEL_20;
  }

  v11 = v9 == a1 && v8 == a2;
  if (!v11 && (sub_37AD0() & 1) == 0 || *&v10 != *&a3)
  {
    goto LABEL_20;
  }

LABEL_17:
  v13 = *(v3 + 136);
  v14 = *(v3 + 144);
  v15 = *(v3 + 152);
  *(v3 + 136) = a1;
  *(v3 + 144) = a2;
  *(v3 + 152) = a3;
  v16 = *(v3 + 156);
  *(v3 + 156) = v7;

  sub_16A8C(v13, v14, v15, v16);
}

double sub_20F34(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = HIDWORD(a4);
  v6 = *(a1 + 136);
  v7 = *(a1 + 144);
  v8 = *(a1 + 152);
  *(a1 + 136) = a2;
  *(a1 + 144) = a3;
  *(a1 + 152) = a4;
  v9 = *(a1 + 156);
  *(a1 + 156) = v5;
  sub_16B18(a2, a3, a4, v5);
  return sub_16A8C(v6, v7, v8, v9);
}

uint64_t sub_20FAC@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_21F14(&qword_5A030, _s10descr51419V5ModelCMa, &unk_42C88);
  sub_36CD0();

  v3 = OBJC_IVAR____TtCV20NTKWarlockFaceBundle9TimeLabel5Model__backgroundStyle;
  swift_beginAccess();
  return sub_16D40(v5 + v3, a1);
}

uint64_t sub_21074(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtCV20NTKWarlockFaceBundle9TimeLabel5Model__backgroundStyle;
  swift_beginAccess();
  sub_21E68(a2, a1 + v4);
  return swift_endAccess();
}

unint64_t sub_210E0()
{
  swift_getKeyPath();
  sub_21F14(&qword_5A030, _s10descr51419V5ModelCMa, &unk_42C88);
  sub_36CD0();

  v1 = *(v0 + OBJC_IVAR____TtCV20NTKWarlockFaceBundle9TimeLabel5Model__maskStyle);
  sub_16B8C(v1);
  return v1;
}

double sub_21194(unint64_t a1)
{
  v3 = OBJC_IVAR____TtCV20NTKWarlockFaceBundle9TimeLabel5Model__maskStyle;
  v4 = *(v1 + OBJC_IVAR____TtCV20NTKWarlockFaceBundle9TimeLabel5Model__maskStyle);
  if (!v4)
  {
    if (!a1)
    {
      v5 = 0;
      goto LABEL_10;
    }

LABEL_13:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath, v9);
    sub_21F14(&qword_5A030, _s10descr51419V5ModelCMa, &unk_42C88);
    sub_36CC0();
    sub_16AAC(a1);

    return result;
  }

  if (v4 != 1)
  {
    if (a1 >= 2)
    {

      v6 = sub_371D0();
      sub_16AAC(v4);
      if (v6)
      {
        v5 = *(v1 + v3);
        goto LABEL_10;
      }
    }

    goto LABEL_13;
  }

  if (a1 != 1)
  {
    goto LABEL_13;
  }

  v5 = 1;
LABEL_10:
  *(v1 + v3) = a1;

  return sub_16AAC(v5);
}

uint64_t sub_21320@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  sub_21F14(&qword_5A030, _s10descr51419V5ModelCMa, &unk_42C88);
  sub_36CD0();

  v3 = OBJC_IVAR____TtCV20NTKWarlockFaceBundle9TimeLabel5Model__colorScheme;
  swift_beginAccess();
  v4 = sub_36DC0();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t sub_21418(uint64_t a1)
{
  v2 = v1;
  v4 = sub_36DC0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtCV20NTKWarlockFaceBundle9TimeLabel5Model__colorScheme;
  swift_beginAccess();
  v10 = *(v5 + 16);
  v10(v8, v2 + v9, v4);
  sub_21F14(&qword_59A30, &type metadata accessor for ColorScheme, &protocol conformance descriptor for ColorScheme);
  v16[0] = a1;
  LOBYTE(a1) = sub_374F0();
  v11 = *(v5 + 8);
  v11(v8, v4);
  if (a1)
  {
    v10(v8, v16[0], v4);
    swift_beginAccess();
    (*(v5 + 40))(v2 + v9, v8, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath, v13);
    v14 = v16[0];
    v16[-2] = v2;
    v16[-1] = v14;
    v16[1] = v2;
    sub_21F14(&qword_5A030, _s10descr51419V5ModelCMa, &unk_42C88);
    sub_36CC0();
  }

  return (v11)(v16[0], v4);
}

uint64_t sub_216B8(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtCV20NTKWarlockFaceBundle9TimeLabel5Model__colorScheme;
  swift_beginAccess();
  v5 = sub_36DC0();
  (*(*(v5 - 8) + 24))(a1 + v4, a2, v5);
  return swift_endAccess();
}

double sub_21754()
{
  swift_getKeyPath();
  sub_21F14(&qword_5A030, _s10descr51419V5ModelCMa, &unk_42C88);
  sub_36CD0();

  return *(v0 + OBJC_IVAR____TtCV20NTKWarlockFaceBundle9TimeLabel5Model__opacity);
}

void sub_217FC(double a1)
{
  if (*(v1 + OBJC_IVAR____TtCV20NTKWarlockFaceBundle9TimeLabel5Model__opacity) == a1)
  {
    *(v1 + OBJC_IVAR____TtCV20NTKWarlockFaceBundle9TimeLabel5Model__opacity) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath, v3);
    sub_21F14(&qword_5A030, _s10descr51419V5ModelCMa, &unk_42C88);
    sub_36CC0();
  }
}

uint64_t sub_2191C()
{
  swift_getKeyPath();
  sub_21F14(&qword_5A030, _s10descr51419V5ModelCMa, &unk_42C88);
  sub_36CD0();

  return *(v0 + OBJC_IVAR____TtCV20NTKWarlockFaceBundle9TimeLabel5Model__timeTransition);
}

double sub_219D4()
{
  swift_getKeyPath();
  sub_21F14(&qword_5A030, _s10descr51419V5ModelCMa, &unk_42C88);
  sub_36CD0();

  return *(v0 + OBJC_IVAR____TtCV20NTKWarlockFaceBundle9TimeLabel5Model__scaleEffectSize);
}

void sub_21A80(double a1, double a2)
{
  v3 = (v2 + OBJC_IVAR____TtCV20NTKWarlockFaceBundle9TimeLabel5Model__scaleEffectSize);
  if (*(v2 + OBJC_IVAR____TtCV20NTKWarlockFaceBundle9TimeLabel5Model__scaleEffectSize) == a1 && *(v2 + OBJC_IVAR____TtCV20NTKWarlockFaceBundle9TimeLabel5Model__scaleEffectSize + 8) == a2)
  {
    *v3 = a1;
    v3[1] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath, v6);
    sub_21F14(&qword_5A030, _s10descr51419V5ModelCMa, &unk_42C88);
    sub_36CC0();
  }
}

uint64_t sub_21BAC()
{
  sub_85EC((v0 + 80));
  sub_16A8C(*(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 156));
  sub_16ABC(v0 + OBJC_IVAR____TtCV20NTKWarlockFaceBundle9TimeLabel5Model__backgroundStyle);
  sub_16AAC(*(v0 + OBJC_IVAR____TtCV20NTKWarlockFaceBundle9TimeLabel5Model__maskStyle));
  v1 = OBJC_IVAR____TtCV20NTKWarlockFaceBundle9TimeLabel5Model__colorScheme;
  v2 = sub_36DC0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCV20NTKWarlockFaceBundle9TimeLabel5Model___observationRegistrar;
  v4 = sub_36CF0();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v5, v6);
}

uint64_t _s10descr51419V5ModelCMa(uint64_t a1)
{
  result = qword_59748;
  if (!qword_59748)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21D14(uint64_t a1)
{
  result = _s10descr51419V15BackgroundStyleOMa(319);
  if (v2 <= 0x3F)
  {
    result = sub_36DC0();
    if (v3 <= 0x3F)
    {
      result = sub_36CF0();
      if (v4 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_21E68(uint64_t a1, uint64_t a2)
{
  v4 = _s10descr51419V15BackgroundStyleOMa(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

__n128 sub_21ED4()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + OBJC_IVAR____TtCV20NTKWarlockFaceBundle9TimeLabel5Model__scaleEffectSize) = result;
  return result;
}

double sub_21EFC()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + OBJC_IVAR____TtCV20NTKWarlockFaceBundle9TimeLabel5Model__opacity) = result;
  return result;
}

uint64_t sub_21F14(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_21F88()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v2 + OBJC_IVAR____TtCV20NTKWarlockFaceBundle9TimeLabel5Model__maskStyle);
  *(v2 + OBJC_IVAR____TtCV20NTKWarlockFaceBundle9TimeLabel5Model__maskStyle) = v1;
  sub_16B8C(v1);
  return sub_16AAC(v3);
}

void sub_22010()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  *(v1 + 120) = *(v0 + 24);
  *(v1 + 128) = v2;
}

BOOL sub_2202C(uint64_t a1, uint64_t a2)
{
  if (!CGRectEqualToRect(*a1, *a2))
  {
    return 1;
  }

  v4 = *(a1 + 32);
  v5 = *(a2 + 32);
  if (v4 == 3)
  {
    if (v5 == 3)
    {
      goto LABEL_25;
    }

    return 1;
  }

  if (v4 == 2)
  {
    if (v5 != 2)
    {
      return 1;
    }

    goto LABEL_25;
  }

  if ((v5 & 0xFE) == 2)
  {
    return 1;
  }

  if (v4)
  {
    v6 = 0x6574756E696DLL;
  }

  else
  {
    v6 = 1920298856;
  }

  if (v4)
  {
    v7 = 0xE600000000000000;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  if (v5)
  {
    v8 = 0x6574756E696DLL;
  }

  else
  {
    v8 = 1920298856;
  }

  if (v5)
  {
    v9 = 0xE600000000000000;
  }

  else
  {
    v9 = 0xE400000000000000;
  }

  if (v6 == v8 && v7 == v9)
  {

    goto LABEL_25;
  }

  v10 = sub_37AD0();

  if ((v10 & 1) == 0)
  {
    return 1;
  }

LABEL_25:
  if (*(a1 + 33) != *(a2 + 33))
  {
    return 1;
  }

  return !sub_1D100(*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a2 + 40), *(a2 + 48), *(a2 + 56));
}

__n128 sub_22170()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = *v2;
  v4 = *(v2 + 16);
  v5 = *(v2 + 32);
  *(v1 + 57) = *(v2 + 41);
  *(v1 + 32) = v4;
  *(v1 + 48) = v5;
  *(v1 + 16) = result;
  return result;
}

uint64_t sub_22190()
{
  swift_getKeyPath();
  sub_23138();
  sub_36CD0();

  v1 = *(v0 + 16);

  return v1;
}

double sub_22210(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16) == a1 && *(v2 + 24) == a2;
  if (v5 || (sub_37AD0() & 1) != 0)
  {
    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath, v8);
    sub_23138();
    sub_36CC0();
  }

  return result;
}

uint64_t sub_22340()
{
  swift_getKeyPath();
  sub_23138();
  sub_36CD0();

  v1 = *(v0 + 32);

  return v1;
}

double sub_223C0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32) == a1 && *(v2 + 40) == a2;
  if (v5 || (sub_37AD0() & 1) != 0)
  {
    *(v2 + 32) = a1;
    *(v2 + 40) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath, v8);
    sub_23138();
    sub_36CC0();
  }

  return result;
}

uint64_t sub_224F0()
{
  swift_getKeyPath();
  sub_23138();
  sub_36CD0();

  v1 = *(v0 + 48);

  return v1;
}

uint64_t sub_22570@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_23138();
  sub_36CD0();

  v4 = *(v3 + 56);
  *a2 = *(v3 + 48);
  a2[1] = v4;
}

double sub_225EC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48) == a1 && *(v2 + 56) == a2;
  if (v5 || (sub_37AD0() & 1) != 0)
  {
    *(v2 + 48) = a1;
    *(v2 + 56) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath, v8);
    sub_23138();
    sub_36CC0();
  }

  return result;
}

uint64_t sub_2271C()
{
  swift_getKeyPath();
  sub_23138();
  sub_36CD0();

  v1 = *(v0 + 64);

  return v1;
}

double sub_2279C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 64) == a1 && *(v2 + 72) == a2;
  if (v5 || (sub_37AD0() & 1) != 0)
  {
    *(v2 + 64) = a1;
    *(v2 + 72) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath, v8);
    sub_23138();
    sub_36CC0();
  }

  return result;
}

uint64_t sub_228CC()
{
  swift_getKeyPath();
  sub_23138();
  sub_36CD0();

  v1 = *(v0 + 80);

  return v1;
}

double sub_2294C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 80) == a1 && *(v2 + 88) == a2;
  if (v5 || (sub_37AD0() & 1) != 0)
  {
    *(v2 + 80) = a1;
    *(v2 + 88) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath, v8);
    sub_23138();
    sub_36CC0();
  }

  return result;
}

uint64_t sub_22A7C()
{
  swift_getKeyPath();
  sub_23138();
  sub_36CD0();

  v1 = *(v0 + 96);

  return v1;
}

double sub_22AFC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 96) == a1 && *(v2 + 104) == a2;
  if (v5 || (sub_37AD0() & 1) != 0)
  {
    *(v2 + 96) = a1;
    *(v2 + 104) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath, v8);
    sub_23138();
    sub_36CC0();
  }

  return result;
}

void sub_22C2C(void *a1)
{
  v2 = v1;
  v4 = [a1 timeText];
  if (!v4)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v5 = v4;
  v6 = sub_37530();
  v8 = v7;

  v9 = [a1 timeSubstringToSeparatorText];
  if (!v9)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v10 = v9;
  v11 = sub_37530();
  v13 = v12;

  v14 = [a1 timeSubstringToSeparatorTextWithZeroPadding:{1, sub_223C0(v11, v13)}];
  if (!v14)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v15 = v14;
  v16 = sub_37530();
  v18 = v17;

  sub_225EC(v16, v18);
  swift_getKeyPath();
  sub_23138();
  sub_36CD0();

  v19 = *(v2 + 32);
  v20 = *(v2 + 40);
  v36 = v19;
  v37 = v20;

  if (sub_375B0() >= 2)
  {
    do
    {
      if (!((v20 & 0x2000000000000000) != 0 ? HIBYTE(v20) & 0xF : v19 & 0xFFFFFFFFFFFFLL))
      {
        break;
      }

      if (sub_37640() == 48 && v22 == 0xE100000000000000)
      {
      }

      else
      {
        v23 = sub_37AD0();

        if ((v23 & 1) == 0)
        {
          break;
        }
      }

      if ((v20 & 0x2000000000000000) != 0)
      {
        if ((v20 & 0xF00000000000000) == 0)
        {
          __break(1u);
LABEL_23:
          __break(1u);
LABEL_24:
          __break(1u);
          goto LABEL_25;
        }
      }

      else if ((v19 & 0xFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_23;
      }

      sub_37640();

      sub_375C0();
      if (v24)
      {
        goto LABEL_24;
      }

      sub_37580();
      v19 = v36;
      v20 = v37;
    }

    while (sub_375B0() > 1);
  }

  v25 = [a1 timeSubstringFromSeparatorText];
  if (!v25)
  {
    goto LABEL_28;
  }

  v26 = v25;
  v27 = sub_37530();
  v29 = v28;

  sub_2294C(v27, v29);
  v30 = AXClockTimeVoiceOverSpokenStringForWatchFaces();
  if (v30)
  {
    v31 = v30;
    v32 = [v30 string];

    v33 = sub_37530();
    v35 = v34;

    sub_22AFC(v33, v35);

    return;
  }

LABEL_29:
  __break(1u);
}

uint64_t sub_22F6C()
{

  v1 = OBJC_IVAR____TtCV20NTKWarlockFaceBundle9TimeLabel12TimeProvider___observationRegistrar;
  v2 = sub_36CF0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t _s10descr51419V12TimeProviderCMa(uint64_t a1)
{
  result = qword_59A68;
  if (!qword_59A68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2308C(uint64_t a1)
{
  result = sub_36CF0();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_23138()
{
  result = qword_59C78;
  if (!qword_59C78)
  {
    _s10descr51419V12TimeProviderCMa(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_59C78);
  }

  return result;
}

void sub_23198()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 96) = v0[3];
  *(v1 + 104) = v2;
}

void sub_231E0()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 80) = v0[3];
  *(v1 + 88) = v2;
}

void sub_23228()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 64) = v0[3];
  *(v1 + 72) = v2;
}

double sub_2326C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_225EC(v1, v2);
}

void sub_232AC()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 48) = v0[3];
  *(v1 + 56) = v2;
}

void sub_232EC()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 32) = v0[3];
  *(v1 + 40) = v2;
}

void sub_23334()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 16) = v0[3];
  *(v1 + 24) = v2;
}

uint64_t sub_23374(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_233BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2340C()
{
  if (qword_58580 != -1)
  {
    swift_once();
  }

  v0 = qword_5CDE0;
  swift_bridgeObjectRetain_n();
  result = sub_34794(v0);
  *&xmmword_5CD40 = v0;
  *(&xmmword_5CD40 + 1) = v0;
  qword_5CD50 = v0;
  unk_5CD58 = result;
  return result;
}

void sub_23484()
{
  if (qword_58588 != -1)
  {
    swift_once();
  }

  v0 = qword_5CDE8;
  if (*(qword_5CDE8 + 16))
  {

    v1 = sub_3392C(4);
    if (v2)
    {
      v3 = (*(v0 + 56) + 32 * v1);
      v4 = *v3;
      v5 = v3[1];

      xmmword_5CD60 = v4;
      *&qword_5CD70 = v5;
      return;
    }
  }

  if (qword_58568 != -1)
  {
    swift_once();
  }

  xmmword_5CD60 = xmmword_5CD40;
  qword_5CD70 = qword_5CD50;
  unk_5CD78 = unk_5CD58;
}

__n128 sub_235EC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_23608(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_23650(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

__n128 sub_236C8@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2A0E8(&qword_5A030, _s10descr51419V5ModelCMa, &unk_42C88);
  sub_36CD0();

  v4 = *(v3 + 32);
  *a2 = *(v3 + 16);
  *(a2 + 16) = v4;
  *(a2 + 32) = *(v3 + 48);
  result = *(v3 + 57);
  *(a2 + 41) = result;
  return result;
}

double sub_23780(_OWORD *a1)
{
  v1 = a1[1];
  v3[0] = *a1;
  v3[1] = v1;
  v4[0] = a1[2];
  *(v4 + 9) = *(a1 + 41);
  *&result = sub_207DC(v3).n128_u64[0];
  return result;
}

uint64_t sub_237C8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2A0E8(&qword_5A030, _s10descr51419V5ModelCMa, &unk_42C88);
  sub_36CD0();

  swift_beginAccess();
  return sub_9B84(v3 + 80, a2);
}

uint64_t sub_23888(uint64_t a1, uint64_t *a2)
{
  sub_9B84(a1, v3);
  swift_getKeyPath();
  sub_2A0E8(&qword_5A030, _s10descr51419V5ModelCMa, &unk_42C88);
  sub_36CC0();

  return sub_85EC(v3);
}

void sub_23968(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2A0E8(&qword_5A030, _s10descr51419V5ModelCMa, &unk_42C88);
  sub_36CD0();

  v4 = *(v3 + 128);
  *a2 = *(v3 + 120);
  *(a2 + 8) = v4;
}

uint64_t sub_23A4C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2A0E8(&qword_5A030, _s10descr51419V5ModelCMa, &unk_42C88);
  sub_36CD0();

  v4 = *(v3 + 136);
  v5 = *(v3 + 144);
  v6 = *(v3 + 152);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  v7 = *(v3 + 156);
  *(a2 + 20) = v7;
  return sub_16B18(v4, v5, v6, v7);
}

void sub_23B08(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 20);
  sub_16B18(*a1, v2, v3, v4);
  sub_20CFC(v1, v2, v3 | (v4 << 32));
}

uint64_t sub_23B68@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2A0E8(&qword_5A030, _s10descr51419V5ModelCMa, &unk_42C88);
  sub_36CD0();

  v4 = OBJC_IVAR____TtCV20NTKWarlockFaceBundle9TimeLabel5Model__backgroundStyle;
  swift_beginAccess();
  return sub_16D40(v3 + v4, a2);
}

uint64_t sub_23C30(uint64_t a1, uint64_t *a2)
{
  v4 = _s10descr51419V15BackgroundStyleOMa(0);
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_16D40(a1, v7);
  v8 = *a2;
  swift_getKeyPath();
  v11 = v8;
  v12 = v7;
  v13 = v8;
  sub_2A0E8(&qword_5A030, _s10descr51419V5ModelCMa, &unk_42C88);
  sub_36CC0();

  return sub_16ABC(v7);
}

unint64_t sub_23D58@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2A0E8(&qword_5A030, _s10descr51419V5ModelCMa, &unk_42C88);
  sub_36CD0();

  v4 = *(v3 + OBJC_IVAR____TtCV20NTKWarlockFaceBundle9TimeLabel5Model__maskStyle);
  *a2 = v4;
  return sub_16B8C(v4);
}

double sub_23E0C(unint64_t *a1)
{
  v1 = *a1;
  sub_16B8C(*a1);
  return sub_21194(v1);
}

uint64_t sub_23E40@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2A0E8(&qword_5A030, _s10descr51419V5ModelCMa, &unk_42C88);
  sub_36CD0();

  v4 = OBJC_IVAR____TtCV20NTKWarlockFaceBundle9TimeLabel5Model__colorScheme;
  swift_beginAccess();
  v5 = sub_36DC0();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_23F38(uint64_t a1)
{
  v2 = sub_36DC0();
  v4 = __chkstk_darwin(v2, v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, a1, v4);
  return sub_21418(v6);
}

double sub_24004@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2A0E8(&qword_5A030, _s10descr51419V5ModelCMa, &unk_42C88);
  sub_36CD0();

  result = *(v3 + OBJC_IVAR____TtCV20NTKWarlockFaceBundle9TimeLabel5Model__opacity);
  *a2 = result;
  return result;
}

void sub_240DC(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2A0E8(&qword_5A030, _s10descr51419V5ModelCMa, &unk_42C88);
  sub_36CD0();

  *a2 = *(v3 + OBJC_IVAR____TtCV20NTKWarlockFaceBundle9TimeLabel5Model__timeTransition);
}

double sub_2418C(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_2A0E8(&qword_5A030, _s10descr51419V5ModelCMa, &unk_42C88);
  sub_36CC0();

  return result;
}

__n128 sub_2425C@<Q0>(uint64_t *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2A0E8(&qword_5A030, _s10descr51419V5ModelCMa, &unk_42C88);
  sub_36CD0();

  result = *(v3 + OBJC_IVAR____TtCV20NTKWarlockFaceBundle9TimeLabel5Model__scaleEffectSize);
  *a2 = result;
  return result;
}

uint64_t sub_24334@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2A0E8(&qword_59C78, _s10descr51419V12TimeProviderCMa, &unk_42E90);
  sub_36CD0();

  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_243F8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2A0E8(&qword_59C78, _s10descr51419V12TimeProviderCMa, &unk_42E90);
  sub_36CD0();

  v4 = *(v3 + 40);
  *a2 = *(v3 + 32);
  a2[1] = v4;
}

uint64_t sub_244BC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2A0E8(&qword_59C78, _s10descr51419V12TimeProviderCMa, &unk_42E90);
  sub_36CD0();

  v4 = *(v3 + 72);
  *a2 = *(v3 + 64);
  a2[1] = v4;
}

uint64_t sub_24580@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2A0E8(&qword_59C78, _s10descr51419V12TimeProviderCMa, &unk_42E90);
  sub_36CD0();

  v4 = *(v3 + 88);
  *a2 = *(v3 + 80);
  a2[1] = v4;
}

uint64_t sub_24644@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2A0E8(&qword_59C78, _s10descr51419V12TimeProviderCMa, &unk_42E90);
  sub_36CD0();

  v4 = *(v3 + 104);
  *a2 = *(v3 + 96);
  a2[1] = v4;
}

uint64_t sub_24708(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

uint64_t sub_24750@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v42 = a1;
  v43 = sub_37000();
  v41 = *(v43 - 8);
  __chkstk_darwin(v43, v3);
  v40 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_37060();
  v5 = *(v37 - 8);
  __chkstk_darwin(v37, v6);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_815C(&qword_59C80, &qword_430A0);
  __chkstk_darwin(v9, v10);
  v12 = (&v36 - v11);
  v13 = sub_815C(&qword_59C88, &qword_430A8);
  __chkstk_darwin(v13, v14);
  v16 = &v36 - v15;
  v39 = sub_815C(&qword_59C90, &qword_430B0);
  v17 = *(v39 - 8);
  __chkstk_darwin(v39, v18);
  v20 = &v36 - v19;
  v38 = sub_815C(&qword_59C98, &qword_430B8);
  __chkstk_darwin(v38, v21);
  v23 = &v36 - v22;
  *v12 = sub_37420();
  v12[1] = v24;
  v25 = sub_815C(&qword_59CA0, &qword_430C0);
  sub_24C78(v12 + *(v25 + 44));
  sub_27BF8();
  sub_37150();
  sub_16C04(v12, &qword_59C80, &qword_430A0);
  v26 = sub_36ED0();
  v27 = sub_37080();
  v28 = &v16[*(sub_815C(&qword_59CC0, &unk_430D0) + 36)];
  *v28 = v26;
  v28[8] = v27;
  v16[*(v13 + 36)] = sub_37080();
  sub_37050();
  v29 = sub_27CB0();
  sub_37190();
  (*(v5 + 8))(v8, v37);
  sub_16C04(v16, &qword_59C88, &qword_430A8);
  v46 = *(v2 + 24);
  sub_815C(&qword_59CD8, &qword_43710);
  sub_37280();
  v30 = v44;
  swift_getKeyPath();
  *&v46 = v30;
  sub_2A0E8(&qword_59C78, _s10descr51419V12TimeProviderCMa, &unk_42E90);
  sub_36CD0();

  v31 = *(v30 + 96);
  v32 = *(v30 + 104);

  *&v46 = v31;
  *(&v46 + 1) = v32;
  v44 = v13;
  v45 = v29;
  swift_getOpaqueTypeConformance2();
  sub_1F520();
  v33 = v39;
  sub_37180();

  (*(v17 + 8))(v20, v33);
  v34 = v40;
  sub_36FF0();
  sub_36EC0();
  (*(v41 + 8))(v34, v43);
  return sub_16C04(v23, &qword_59C98, &qword_430B8);
}

uint64_t sub_24C78@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v1 = sub_815C(&qword_59CE0, &qword_43108);
  __chkstk_darwin(v1 - 8, v2);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5, v6);
  v8 = &v29 - v7;
  v9 = sub_815C(&qword_59CE8, &qword_43110);
  __chkstk_darwin(v9 - 8, v10);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13, v14);
  v16 = &v29 - v15;
  v17 = sub_815C(&qword_59CF0, &qword_43118);
  __chkstk_darwin(v17 - 8, v18);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21, v22);
  v24 = &v29 - v23;
  sub_24F7C(&v29 - v23);
  sub_254A8(v16);
  sub_259DC(v8);
  sub_16B9C(v24, v20, &qword_59CF0, &qword_43118);
  sub_16B9C(v16, v12, &qword_59CE8, &qword_43110);
  v25 = v4;
  sub_16B9C(v8, v4, &qword_59CE0, &qword_43108);
  v26 = v30;
  sub_16B9C(v20, v30, &qword_59CF0, &qword_43118);
  v27 = sub_815C(&qword_59CF8, &qword_43120);
  sub_16B9C(v12, v26 + *(v27 + 48), &qword_59CE8, &qword_43110);
  sub_16B9C(v25, v26 + *(v27 + 64), &qword_59CE0, &qword_43108);
  sub_16C04(v8, &qword_59CE0, &qword_43108);
  sub_16C04(v16, &qword_59CE8, &qword_43110);
  sub_16C04(v24, &qword_59CF0, &qword_43118);
  sub_16C04(v25, &qword_59CE0, &qword_43108);
  sub_16C04(v12, &qword_59CE8, &qword_43110);
  return sub_16C04(v20, &qword_59CF0, &qword_43118);
}

void sub_24F7C(uint64_t a1@<X8>)
{
  v23[1] = a1;
  v24 = sub_815C(&qword_59E88, &qword_43458);
  __chkstk_darwin(v24, v2);
  v4 = v23 - v3;
  v5 = sub_37330();
  v23[0] = *(v5 - 8);
  __chkstk_darwin(v5, v6);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_815C(&qword_59E90, &qword_43460);
  __chkstk_darwin(v9, v10);
  v12 = v23 - v11;
  v13 = _s10descr51419V15BackgroundStyleOMa(0);
  __chkstk_darwin(v13, v14);
  v16 = (v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *v1;
  swift_getKeyPath();
  v29 = v17;
  sub_2A0E8(&qword_5A030, _s10descr51419V5ModelCMa, &unk_42C88);
  sub_36CD0();

  v18 = OBJC_IVAR____TtCV20NTKWarlockFaceBundle9TimeLabel5Model__backgroundStyle;
  swift_beginAccess();
  sub_16D40(v17 + v18, v16);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v20 = v23[0];
      (*(v23[0] + 32))(v8, v16, v5);
      (*(v20 + 16))(v4, v8, v5);
      sub_16B9C(v4, v12, &qword_59E88, &qword_43458);
      swift_storeEnumTagMultiPayload();
      sub_815C(&qword_59E98, &qword_43490);
      sub_291E4(&qword_59EA0, &qword_59E98, &qword_43490, sub_29268);
      sub_29374();
      sub_37020();
      sub_16C04(v4, &qword_59E88, &qword_43458);
      (*(v20 + 8))(v8, v5);
    }

    else
    {
      v25 = 0;
      v26 = 0;
      sub_815C(&qword_59EB0, &qword_43498);
      sub_29268();
      sub_37020();
      v22 = v28;
      *v12 = v27;
      v12[8] = v22;
      swift_storeEnumTagMultiPayload();
      sub_815C(&qword_59E98, &qword_43490);
      sub_291E4(&qword_59EA0, &qword_59E98, &qword_43490, sub_29268);
      sub_29374();
      sub_37020();
    }
  }

  else
  {
    v25 = *v16;
    v26 = 1;

    sub_815C(&qword_59EB0, &qword_43498);
    sub_29268();
    sub_37020();
    v21 = v28;
    *v12 = v27;
    v12[8] = v21;
    swift_storeEnumTagMultiPayload();
    sub_815C(&qword_59E98, &qword_43490);
    sub_291E4(&qword_59EA0, &qword_59E98, &qword_43490, sub_29268);
    sub_29374();
    sub_37020();
  }
}

uint64_t sub_254A8@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v2 = sub_815C(&qword_59D90, &qword_431A8);
  v41 = *(v2 - 8);
  v42 = v2;
  __chkstk_darwin(v2, v3);
  v40 = v35 - v4;
  v43 = sub_815C(&qword_59E68, &qword_43390) - 8;
  __chkstk_darwin(v43, v5);
  v39 = v35 - v6;
  v7 = *v1;
  swift_getKeyPath();
  v38 = OBJC_IVAR____TtCV20NTKWarlockFaceBundle9TimeLabel5Model___observationRegistrar;
  v46 = v7;
  v37 = sub_2A0E8(&qword_5A030, _s10descr51419V5ModelCMa, &unk_42C88);
  sub_36CD0();

  v8 = *(v7 + 136);
  v9 = *(v7 + 144);
  v10 = *(v7 + 152);
  v11 = *(v7 + 156);
  v46 = v7;

  sub_16B18(v8, v9, v10, v11);
  v36 = v1;
  sub_26758(v1, v8, v9, v10 | (v11 << 32), v47);
  v35[1] = v1[1];
  v35[0] = sub_815C(&qword_59DA0, &qword_431B8);
  sub_36D40();
  sub_280E0();
  sub_2A0E8(&qword_59E18, &type metadata accessor for AODProgressProxy, &protocol conformance descriptor for AODProgressProxy);
  v12 = v40;
  sub_37160();
  sub_16C04(&v46, &qword_59DA0, &qword_431B8);
  v13 = v36;
  v14 = v39;
  sub_2788C(*(v36 + 16));
  v15 = sub_16A8C(v8, v9, v10, v11);
  (*(v41 + 8))(v12, v42, v15);
  swift_getKeyPath();
  v46 = v7;
  sub_36CD0();

  v16 = OBJC_IVAR____TtCV20NTKWarlockFaceBundle9TimeLabel5Model__colorScheme;
  swift_beginAccess();
  v17 = (v14 + *(sub_815C(&qword_59E70, &qword_433E8) + 36));
  v18 = *(sub_815C(&qword_59E78, &qword_433F0) + 28);
  v19 = sub_36DC0();
  (*(*(v19 - 8) + 16))(v17 + v18, v7 + v16, v19);
  *v17 = swift_getKeyPath();
  swift_getKeyPath();
  v45[0] = v7;
  sub_36CD0();

  v20 = *(v7 + OBJC_IVAR____TtCV20NTKWarlockFaceBundle9TimeLabel5Model__opacity);
  *(v14 + *(sub_815C(&qword_59E80, &qword_43450) + 36)) = v20;
  swift_getKeyPath();
  v45[0] = v7;
  sub_36CD0();

  v21 = v7 + OBJC_IVAR____TtCV20NTKWarlockFaceBundle9TimeLabel5Model__scaleEffectSize;
  v22 = *(v7 + OBJC_IVAR____TtCV20NTKWarlockFaceBundle9TimeLabel5Model__scaleEffectSize);
  swift_getKeyPath();
  v45[0] = v7;
  sub_36CD0();

  v23 = *(v21 + 8);
  sub_37460();
  v24 = (v14 + *(v43 + 44));
  *v24 = v22;
  v24[1] = v23;
  v24[2] = v25;
  v24[3] = v26;
  v27 = 0xE000000000000000;
  v45[0] = 0;
  v45[1] = 0xE000000000000000;
  sub_37940(16);

  strcpy(v45, "ntk-timelabel-");
  HIBYTE(v45[1]) = -18;
  v28 = v13[6];
  if (v28)
  {
    v29 = v13[5];
  }

  else
  {
    v29 = 0;
  }

  if (v28)
  {
    v27 = v13[6];
  }

  v48._countAndFlagsBits = v29;
  v48._object = v27;
  sub_375D0(v48);

  v30 = v45[0];
  v31 = v45[1];
  v32 = v44;
  sub_2916C(v14, v44);
  result = sub_815C(&qword_59CE8, &qword_43110);
  v34 = v32 + *(result + 36);
  *v34 = 1;
  *(v34 + 8) = v30;
  *(v34 + 16) = v31;
  return result;
}

uint64_t sub_259DC@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v37 = sub_815C(&qword_59D00, &qword_43128);
  __chkstk_darwin(v37, v2);
  v4 = (&v33 - v3);
  v33 = sub_815C(&qword_59D08, &qword_43130);
  __chkstk_darwin(v33, v5);
  v7 = (&v33 - v6);
  v34 = sub_815C(&qword_59D10, &qword_43138);
  __chkstk_darwin(v34, v8);
  v10 = &v33 - v9;
  v11 = sub_815C(&qword_59D18, &qword_43140);
  __chkstk_darwin(v11, v12);
  v14 = &v33 - v13;
  v35 = sub_815C(&qword_59D20, &qword_43148);
  __chkstk_darwin(v35, v15);
  v17 = &v33 - v16;
  v18 = v1;
  v19 = *v1;
  swift_getKeyPath();
  v38 = v19;
  sub_2A0E8(&qword_5A030, _s10descr51419V5ModelCMa, &unk_42C88);
  sub_36CD0();

  v20 = *(v19 + OBJC_IVAR____TtCV20NTKWarlockFaceBundle9TimeLabel5Model__maskStyle);
  if (v20)
  {
    if (v20 == 1)
    {
      *v7 = sub_37420();
      v7[1] = v21;
      v22 = sub_815C(&qword_59D88, &qword_431A0);
      sub_25F5C(v18, (v7 + *(v22 + 44)));
      v23 = *(v33 + 36);
      v24 = enum case for BlendMode.destinationOut(_:);
      v25 = sub_37450();
      (*(*(v25 - 8) + 104))(v7 + v23, v24, v25);
      v26 = &qword_43130;
      sub_16B9C(v7, v14, &qword_59D08, &qword_43130);
      swift_storeEnumTagMultiPayload();
      sub_27E58();
      sub_37020();
      sub_16B9C(v17, v10, &qword_59D20, &qword_43148);
      swift_storeEnumTagMultiPayload();
      sub_291E4(&qword_59D30, &qword_59D20, &qword_43148, sub_27E58);
      sub_28028();
      sub_37020();
      sub_16C04(v17, &qword_59D20, &qword_43148);
      v27 = v7;
      v28 = &qword_59D08;
    }

    else
    {

      *v4 = sub_37420();
      v4[1] = v30;
      v31 = sub_815C(&qword_59D28, &qword_43178);
      sub_2631C(v20, v18, (v4 + *(v31 + 44)));
      v26 = &qword_43128;
      sub_16B9C(v4, v10, &qword_59D00, &qword_43128);
      swift_storeEnumTagMultiPayload();
      sub_291E4(&qword_59D30, &qword_59D20, &qword_43148, sub_27E58);
      sub_28028();
      sub_37020();
      sub_16AAC(v20);
      v27 = v4;
      v28 = &qword_59D00;
    }

    v29 = v26;
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_27E58();
    sub_37020();
    sub_16B9C(v17, v10, &qword_59D20, &qword_43148);
    swift_storeEnumTagMultiPayload();
    sub_291E4(&qword_59D30, &qword_59D20, &qword_43148, sub_27E58);
    sub_28028();
    sub_37020();
    v27 = v17;
    v28 = &qword_59D20;
    v29 = &qword_43148;
  }

  return sub_16C04(v27, v28, v29);
}

void sub_25F5C(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v31 = a2;
  v3 = sub_815C(&qword_59D90, &qword_431A8);
  v26 = *(v3 - 8);
  v27 = v3;
  __chkstk_darwin(v3, v4);
  v6 = &v25 - v5;
  v30 = sub_815C(&qword_59D98, &qword_431B0) - 8;
  __chkstk_darwin(v30, v7);
  v29 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v10);
  v25 = &v25 - v11;
  v28 = sub_37240();
  v12 = sub_37220();
  v32 = *a1;
  v13 = v32;

  sub_26758(a1, v12, 0, 0, v33);
  sub_815C(&qword_59DA0, &qword_431B8);
  sub_36D40();
  sub_280E0();
  sub_2A0E8(&qword_59E18, &type metadata accessor for AODProgressProxy, &protocol conformance descriptor for AODProgressProxy);
  sub_37160();
  sub_16C04(&v32, &qword_59DA0, &qword_431B8);
  v14 = v25;
  sub_2788C(*(a1 + 16));

  (*(v26 + 8))(v6, v27);
  swift_getKeyPath();
  v32 = v13;
  sub_2A0E8(&qword_5A030, _s10descr51419V5ModelCMa, &unk_42C88);
  sub_36CD0();

  v15 = v13 + OBJC_IVAR____TtCV20NTKWarlockFaceBundle9TimeLabel5Model__scaleEffectSize;
  v16 = *(v13 + OBJC_IVAR____TtCV20NTKWarlockFaceBundle9TimeLabel5Model__scaleEffectSize);
  swift_getKeyPath();
  v32 = v13;
  sub_36CD0();

  v17 = *(v15 + 8);
  sub_37460();
  v18 = v29;
  v19 = (v14 + *(v30 + 44));
  *v19 = v16;
  v19[1] = v17;
  v19[2] = v20;
  v19[3] = v21;
  sub_16B9C(v14, v18, &qword_59D98, &qword_431B0);
  v22 = v31;
  *v31 = v28;
  *(v22 + 4) = 256;
  v23 = v22;
  v24 = sub_815C(&qword_59E20, &qword_43218);
  sub_16B9C(v18, v23 + *(v24 + 48), &qword_59D98, &qword_431B0);

  sub_16C04(v14, &qword_59D98, &qword_431B0);
  sub_16C04(v18, &qword_59D98, &qword_431B0);
}

void sub_2631C(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v35 = a1;
  v37 = a3;
  v4 = sub_815C(&qword_59D90, &qword_431A8);
  v32 = *(v4 - 8);
  v33 = v4;
  __chkstk_darwin(v4, v5);
  v7 = &v31 - v6;
  v34 = sub_815C(&qword_59E58, &qword_43380) - 8;
  __chkstk_darwin(v34, v8);
  v36 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v11);
  v31 = &v31 - v12;

  v13 = sub_37240();
  v38 = *a2;
  v14 = v38;

  sub_26758(a2, v13, 0, 0, v39);
  sub_815C(&qword_59DA0, &qword_431B8);
  sub_36D40();
  sub_280E0();
  sub_2A0E8(&qword_59E18, &type metadata accessor for AODProgressProxy, &protocol conformance descriptor for AODProgressProxy);
  sub_37160();
  sub_16C04(&v38, &qword_59DA0, &qword_431B8);
  v15 = v31;
  sub_2788C(*(a2 + 16));

  (*(v32 + 8))(v7, v33);
  swift_getKeyPath();
  v38 = v14;
  sub_2A0E8(&qword_5A030, _s10descr51419V5ModelCMa, &unk_42C88);
  sub_36CD0();

  v16 = v14 + OBJC_IVAR____TtCV20NTKWarlockFaceBundle9TimeLabel5Model__scaleEffectSize;
  v17 = *(v14 + OBJC_IVAR____TtCV20NTKWarlockFaceBundle9TimeLabel5Model__scaleEffectSize);
  swift_getKeyPath();
  v38 = v14;
  sub_36CD0();

  v18 = *(v16 + 8);
  sub_37460();
  v20 = v19;
  v22 = v21;
  v23 = (v15 + *(sub_815C(&qword_59D98, &qword_431B0) + 36));
  *v23 = v17;
  v23[1] = v18;
  v23[2] = v20;
  v23[3] = v22;
  v24 = *(v34 + 44);
  v25 = enum case for BlendMode.destinationOut(_:);
  v26 = sub_37450();
  (*(*(v26 - 8) + 104))(v15 + v24, v25, v26);
  v27 = v36;
  sub_16B9C(v15, v36, &qword_59E58, &qword_43380);
  v28 = v37;
  *v37 = v35;
  *(v28 + 4) = 256;
  v29 = v28;
  v30 = sub_815C(&qword_59E60, &qword_43388);
  sub_16B9C(v27, v29 + *(v30 + 48), &qword_59E58, &qword_43380);

  sub_16C04(v15, &qword_59E58, &qword_43380);
  sub_16C04(v27, &qword_59E58, &qword_43380);
}

void sub_26758(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a1;
  swift_getKeyPath();
  *&v107[0] = v9;
  sub_2A0E8(&qword_5A030, _s10descr51419V5ModelCMa, &unk_42C88);
  sub_36CD0();

  v55 = a4;
  if (*(v9 + 48) != 3)
  {
    swift_getKeyPath();
    *&v107[0] = v9;
    sub_36CD0();

    if (*(v9 + 48) == 2)
    {
      v107[0] = *(a1 + 3);
      sub_815C(&qword_59CD8, &qword_43710);
      sub_37280();
      swift_getKeyPath();
      *&v107[0] = v106[0];
      sub_2A0E8(&qword_59C78, _s10descr51419V12TimeProviderCMa, &unk_42E90);
      sub_36CD0();

      v26 = *(v106[0] + 24);
      v50 = *(v106[0] + 16);

      swift_getKeyPath();
      *&v107[0] = v9;
      sub_36CD0();

      swift_beginAccess();
      sub_9B84(v9 + 80, v65);
      swift_getKeyPath();
      *&v107[0] = v9;
      sub_36CD0();

      v27 = *(v9 + 120);
      v28 = *(v9 + 128);
      swift_getKeyPath();
      *&v107[0] = v9;
      sub_36CD0();

      v29 = *(v9 + 49);
      v61 = 0x656E696C6E69;
      v62 = 0xE600000000000000;
      v63 = v50;
      v64 = v26;
      v66 = v27;
      v67 = v28;
      v68 = v29;
      v69 = a2;
      v70 = a3;
      v72 = BYTE4(a4);
      v71 = a4;
      swift_getKeyPath();
      *&v107[0] = v9;
      sub_28864(a2, a3, a4);
      sub_36CD0();

      v30 = *(v9 + OBJC_IVAR____TtCV20NTKWarlockFaceBundle9TimeLabel5Model__timeTransition);
      sub_36D40();
      sub_2A0E8(&qword_59E18, &type metadata accessor for AODProgressProxy, &protocol conformance descriptor for AODProgressProxy);
      v59 = sub_36DD0();
      v60 = v31 & 1;
      v73 = v30;
      v74 = 0;
      sub_28878(&v59, v107);
      v109 = 1;
      sub_815C(&qword_59DF8, &qword_431E0);
      sub_12044(&qword_59DF0, &qword_59DF8, &qword_431E0, &protocol conformance descriptor for TupleView<A>);
      sub_28360();
      sub_37020();
      v32 = &qword_59DE8;
      v33 = &qword_431D8;
      sub_16B9C(v106, v107, &qword_59DE8, &qword_431D8);
      v110 = 0;
      sub_815C(&qword_59DE8, &qword_431D8);
LABEL_18:
      sub_815C(&qword_59E10, &qword_431E8);
      sub_282A8();
      sub_283B4();
      sub_37020();
      sub_16C04(v106, v32, v33);
      v25 = &v59;
      goto LABEL_19;
    }

    swift_getKeyPath();
    *&v107[0] = v9;
    sub_36CD0();

    if ((*(v9 + 48) & 0xFE) == 2)
    {
      goto LABEL_6;
    }

    if (*(v9 + 48))
    {
      v34 = sub_37AD0();

      if ((v34 & 1) == 0)
      {
LABEL_6:
        swift_getKeyPath();
        *&v107[0] = v9;
        sub_36CD0();

        if ((*(v9 + 48) & 0xFE) == 2)
        {
LABEL_7:
          *(a5 + 224) = 0u;
          *(a5 + 240) = 0u;
          *(a5 + 192) = 0u;
          *(a5 + 208) = 0u;
          *(a5 + 160) = 0u;
          *(a5 + 176) = 0u;
          *(a5 + 128) = 0u;
          *(a5 + 144) = 0u;
          *(a5 + 96) = 0u;
          *(a5 + 112) = 0u;
          *(a5 + 64) = 0u;
          *(a5 + 80) = 0u;
          *(a5 + 32) = 0u;
          *(a5 + 48) = 0u;
          *a5 = 0u;
          *(a5 + 16) = 0u;
          *(a5 + 256) = -1;
          return;
        }

        if (*(v9 + 48))
        {
        }

        else
        {
          v41 = sub_37AD0();

          if ((v41 & 1) == 0)
          {
            goto LABEL_7;
          }
        }

        v107[0] = *(a1 + 3);
        sub_815C(&qword_59CD8, &qword_43710);
        sub_37280();
        swift_getKeyPath();
        *&v107[0] = v106[0];
        sub_2A0E8(&qword_59C78, _s10descr51419V12TimeProviderCMa, &unk_42E90);
        sub_36CD0();

        v42 = *(v106[0] + 88);
        v52 = *(v106[0] + 80);

        swift_getKeyPath();
        *&v107[0] = v9;
        sub_36CD0();

        swift_beginAccess();
        sub_9B84(v9 + 80, v65);
        swift_getKeyPath();
        *&v107[0] = v9;
        sub_36CD0();

        v43 = *(v9 + 120);
        v44 = *(v9 + 128);
        swift_getKeyPath();
        *&v107[0] = v9;
        sub_36CD0();

        v45 = *(v9 + 49);
        v61 = 0x6574756E696DLL;
        v62 = 0xE600000000000000;
        v63 = v52;
        v64 = v42;
        v66 = v43;
        v67 = v44;
        v68 = v45;
        v69 = a2;
        v70 = a3;
        v72 = BYTE4(a4);
        v71 = a4;
        swift_getKeyPath();
        *&v107[0] = v9;
        sub_28864(a2, a3, a4);
        sub_36CD0();

        v46 = *(v9 + OBJC_IVAR____TtCV20NTKWarlockFaceBundle9TimeLabel5Model__timeTransition);
        sub_36D40();
        sub_2A0E8(&qword_59E18, &type metadata accessor for AODProgressProxy, &protocol conformance descriptor for AODProgressProxy);
        v59 = sub_36DD0();
        v60 = v47 & 1;
        v73 = v46;
        v74 = 0;
        sub_28878(&v59, v107);
        v108 = 1;
        sub_28360();
        sub_37020();
        v32 = &qword_59E10;
        v33 = &qword_431E8;
        sub_16B9C(v106, v107, &qword_59E10, &qword_431E8);
        v110 = 1;
LABEL_17:
        sub_815C(&qword_59DE8, &qword_431D8);
        goto LABEL_18;
      }
    }

    else
    {
    }

    v107[0] = *(a1 + 3);
    sub_815C(&qword_59CD8, &qword_43710);
    sub_37280();
    swift_getKeyPath();
    *&v107[0] = v106[0];
    sub_2A0E8(&qword_59C78, _s10descr51419V12TimeProviderCMa, &unk_42E90);
    sub_36CD0();

    v35 = *(v106[0] + 72);
    v51 = *(v106[0] + 64);

    swift_getKeyPath();
    *&v107[0] = v9;
    sub_36CD0();

    swift_beginAccess();
    sub_9B84(v9 + 80, v65);
    swift_getKeyPath();
    *&v107[0] = v9;
    sub_36CD0();

    v36 = *(v9 + 120);
    v37 = *(v9 + 128);
    swift_getKeyPath();
    *&v107[0] = v9;
    sub_36CD0();

    v38 = *(v9 + 49);
    v61 = 1920298856;
    v62 = 0xE400000000000000;
    v63 = v51;
    v64 = v35;
    v66 = v36;
    v67 = v37;
    v68 = v38;
    v69 = a2;
    v70 = a3;
    v72 = BYTE4(a4);
    v71 = a4;
    swift_getKeyPath();
    *&v107[0] = v9;
    sub_28864(a2, a3, a4);
    sub_36CD0();

    v39 = *(v9 + OBJC_IVAR____TtCV20NTKWarlockFaceBundle9TimeLabel5Model__timeTransition);
    sub_36D40();
    sub_2A0E8(&qword_59E18, &type metadata accessor for AODProgressProxy, &protocol conformance descriptor for AODProgressProxy);
    v59 = sub_36DD0();
    v60 = v40 & 1;
    v73 = v39;
    v74 = 0;
    sub_28878(&v59, v107);
    v108 = 0;
    sub_28360();
    sub_37020();
    v32 = &qword_59E10;
    v33 = &qword_431E8;
    sub_16B9C(v106, v107, &qword_59E10, &qword_431E8);
    v110 = 1;
    goto LABEL_17;
  }

  v111 = *(a1 + 3);
  v107[0] = *(a1 + 3);
  sub_815C(&qword_59CD8, &qword_43710);
  sub_37280();
  v54 = a2;
  swift_getKeyPath();
  *&v107[0] = v106[0];
  sub_2A0E8(&qword_59C78, _s10descr51419V12TimeProviderCMa, &unk_42E90);
  sub_36CD0();

  v53 = a3;
  v11 = *(v106[0] + 32);
  v10 = *(v106[0] + 40);

  swift_getKeyPath();
  *&v107[0] = v9;
  sub_36CD0();

  swift_beginAccess();
  sub_9B84(v9 + 80, v97);
  swift_getKeyPath();
  *&v107[0] = v9;
  sub_36CD0();

  v12 = *(v9 + 120);
  v13 = a4;
  v14 = *(v9 + 128);
  swift_getKeyPath();
  *&v107[0] = v9;
  sub_36CD0();

  v15 = *(v9 + 49);
  v93 = 1920298856;
  v94 = 0xE400000000000000;
  v95 = v11;
  v96 = v10;
  v97[5] = v12;
  v98 = v14;
  v99 = v15;
  v100 = a2;
  v101 = v53;
  v49 = HIDWORD(v13);
  v103 = BYTE4(v13);
  v102 = v13;
  swift_getKeyPath();
  *&v107[0] = v9;
  sub_28864(a2, v53, v13);
  sub_36CD0();

  v48 = OBJC_IVAR____TtCV20NTKWarlockFaceBundle9TimeLabel5Model__timeTransition;
  v16 = *(v9 + OBJC_IVAR____TtCV20NTKWarlockFaceBundle9TimeLabel5Model__timeTransition);
  sub_36D40();
  sub_2A0E8(&qword_59E18, &type metadata accessor for AODProgressProxy, &protocol conformance descriptor for AODProgressProxy);
  v91 = sub_36DD0();
  v92 = v17 & 1;
  v104 = v16;
  v105 = 0;
  v107[0] = v111;
  sub_37280();
  v18 = v106[0];
  swift_getKeyPath();
  *&v107[0] = v18;
  sub_36CD0();

  v20 = *(v18 + 80);
  v19 = *(v18 + 88);

  swift_getKeyPath();
  *&v107[0] = v9;
  sub_36CD0();

  sub_9B84(v9 + 80, v82);
  swift_getKeyPath();
  *&v107[0] = v9;
  sub_36CD0();

  v21 = *(v9 + 120);
  LOBYTE(v10) = *(v9 + 128);
  swift_getKeyPath();
  *&v107[0] = v9;
  sub_36CD0();

  v22 = *(v9 + 49);
  v78 = 0x6574756E696DLL;
  v79 = 0xE600000000000000;
  v80 = v20;
  v81 = v19;
  v82[5] = v21;
  v83 = v10;
  v84 = v22;
  v85 = v54;
  v86 = v53;
  v88 = v49;
  v87 = v55;
  swift_getKeyPath();
  *&v107[0] = v9;
  sub_28864(v54, v53, v55);
  sub_36CD0();

  v23 = *(v9 + v48);
  v76 = sub_36DD0();
  v77 = v24 & 1;
  v89 = v23;
  v90 = 0;
  sub_28878(&v91, v58);
  sub_28878(&v76, v57);
  sub_28878(v58, &v59);
  sub_28878(v57, &v75);
  sub_288D4(v57);
  sub_288D4(v58);
  sub_16B9C(&v59, v107, &qword_59DF8, &qword_431E0);
  v109 = 0;
  sub_815C(&qword_59DF8, &qword_431E0);
  sub_12044(&qword_59DF0, &qword_59DF8, &qword_431E0, &protocol conformance descriptor for TupleView<A>);
  sub_28360();
  sub_37020();
  sub_16B9C(v106, v107, &qword_59DE8, &qword_431D8);
  v110 = 0;
  sub_815C(&qword_59DE8, &qword_431D8);
  sub_815C(&qword_59E10, &qword_431E8);
  sub_282A8();
  sub_283B4();
  sub_37020();
  sub_16C04(v106, &qword_59DE8, &qword_431D8);
  sub_16C04(&v59, &qword_59DF8, &qword_431E0);
  sub_288D4(&v76);
  v25 = &v91;
LABEL_19:
  sub_288D4(v25);
}

uint64_t sub_2788C(char a1)
{
  v3 = sub_815C(&qword_59E28, &qword_43220);
  __chkstk_darwin(v3, v4);
  v6 = &v22 - v5;
  v7 = sub_815C(&qword_59E30, &qword_43228);
  __chkstk_darwin(v7, v8);
  v10 = &v22 - v9;
  if (a1)
  {
    v11 = sub_37230();
    sub_285A8(v11, v10);

    sub_16B9C(v10, v6, &qword_59E30, &qword_43228);
    swift_storeEnumTagMultiPayload();
    sub_815C(&qword_59D90, &qword_431A8);
    sub_28464();
    v12 = sub_D5DC(&qword_59DA0, &qword_431B8);
    v13 = sub_36D40();
    v14 = sub_280E0();
    v15 = sub_2A0E8(&qword_59E18, &type metadata accessor for AODProgressProxy, &protocol conformance descriptor for AODProgressProxy);
    v22 = v12;
    v23 = v13;
    v24 = v14;
    v25 = v15;
    swift_getOpaqueTypeConformance2();
    sub_37020();
    return sub_16C04(v10, &qword_59E30, &qword_43228);
  }

  else
  {
    v17 = sub_815C(&qword_59D90, &qword_431A8);
    (*(*(v17 - 8) + 16))(v6, v1, v17);
    swift_storeEnumTagMultiPayload();
    sub_28464();
    v18 = sub_D5DC(&qword_59DA0, &qword_431B8);
    v19 = sub_36D40();
    v20 = sub_280E0();
    v21 = sub_2A0E8(&qword_59E18, &type metadata accessor for AODProgressProxy, &protocol conformance descriptor for AODProgressProxy);
    v22 = v18;
    v23 = v19;
    v24 = v20;
    v25 = v21;
    swift_getOpaqueTypeConformance2();
    return sub_37020();
  }
}

unint64_t sub_27BF8()
{
  result = qword_59CA8;
  if (!qword_59CA8)
  {
    sub_D5DC(&qword_59C80, &qword_430A0);
    sub_12044(&qword_59CB0, &qword_59CB8, &qword_430C8, &protocol conformance descriptor for ZStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_59CA8);
  }

  return result;
}

unint64_t sub_27CB0()
{
  result = qword_59CC8;
  if (!qword_59CC8)
  {
    sub_D5DC(&qword_59C88, &qword_430A8);
    sub_27D3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_59CC8);
  }

  return result;
}

unint64_t sub_27D3C()
{
  result = qword_59CD0;
  if (!qword_59CD0)
  {
    sub_D5DC(&qword_59CC0, &unk_430D0);
    sub_D5DC(&qword_59C80, &qword_430A0);
    sub_27BF8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_59CD0);
  }

  return result;
}

double sub_27E24(unint64_t *a1)
{
  v1 = *a1;
  sub_16B8C(*a1);
  return sub_21194(v1);
}

unint64_t sub_27E58()
{
  result = qword_59D38;
  if (!qword_59D38)
  {
    sub_D5DC(&qword_59D08, &qword_43130);
    sub_27EE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_59D38);
  }

  return result;
}

unint64_t sub_27EE4()
{
  result = qword_59D40;
  if (!qword_59D40)
  {
    sub_D5DC(&qword_59D48, &qword_43180);
    sub_27F70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_59D40);
  }

  return result;
}

unint64_t sub_27F70()
{
  result = qword_59D50;
  if (!qword_59D50)
  {
    sub_D5DC(&qword_59D58, &qword_43188);
    sub_12044(&qword_59D60, &qword_59D68, &qword_43190, &protocol conformance descriptor for ZStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_59D50);
  }

  return result;
}

unint64_t sub_28028()
{
  result = qword_59D70;
  if (!qword_59D70)
  {
    sub_D5DC(&qword_59D00, &qword_43128);
    sub_12044(&qword_59D78, &qword_59D80, &qword_43198, &protocol conformance descriptor for ZStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_59D70);
  }

  return result;
}

unint64_t sub_280E0()
{
  result = qword_59DA8;
  if (!qword_59DA8)
  {
    sub_D5DC(&qword_59DA0, &qword_431B8);
    sub_12044(&qword_59DB0, &qword_59DB8, &qword_431C0, &protocol conformance descriptor for _LayoutRoot<A>);
    sub_28198();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_59DA8);
  }

  return result;
}

unint64_t sub_28198()
{
  result = qword_59DC0;
  if (!qword_59DC0)
  {
    sub_D5DC(&qword_59DC8, &qword_431C8);
    sub_2821C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_59DC0);
  }

  return result;
}

unint64_t sub_2821C()
{
  result = qword_59DD0;
  if (!qword_59DD0)
  {
    sub_D5DC(&qword_59DD8, &qword_431D0);
    sub_282A8();
    sub_283B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_59DD0);
  }

  return result;
}

unint64_t sub_282A8()
{
  result = qword_59DE0;
  if (!qword_59DE0)
  {
    sub_D5DC(&qword_59DE8, &qword_431D8);
    sub_12044(&qword_59DF0, &qword_59DF8, &qword_431E0, &protocol conformance descriptor for TupleView<A>);
    sub_28360();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_59DE0);
  }

  return result;
}

unint64_t sub_28360()
{
  result = qword_59E00;
  if (!qword_59E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_59E00);
  }

  return result;
}

unint64_t sub_283B4()
{
  result = qword_59E08;
  if (!qword_59E08)
  {
    sub_D5DC(&qword_59E10, &qword_431E8);
    sub_28360();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_59E08);
  }

  return result;
}

unint64_t sub_28464()
{
  result = qword_59E38;
  if (!qword_59E38)
  {
    sub_D5DC(&qword_59E30, &qword_43228);
    sub_D5DC(&qword_59DA0, &qword_431B8);
    sub_36D40();
    sub_280E0();
    sub_2A0E8(&qword_59E18, &type metadata accessor for AODProgressProxy, &protocol conformance descriptor for AODProgressProxy);
    swift_getOpaqueTypeConformance2();
    sub_12044(&qword_59E40, &qword_59E48, &qword_43230, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_59E38);
  }

  return result;
}

uint64_t sub_285A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v3;
  sub_36DE0();
  v7 = v31;
  v8 = v31 * 0.5;
  v9 = v32;
  v10 = DWORD1(v32);
  v11 = *(&v32 + 1);
  v12 = v33;

  v13 = sub_37420();
  v15 = v14;
  *v34 = v31 * 0.5;
  *(v34 + 1) = v31;
  v34[1] = v32;
  *v35 = v33;
  *&v35[16] = a1;
  *&v35[24] = 256;
  v29 = v32;
  *v30 = v33;
  *&v30[10] = *&v35[10];
  v28 = v34[0];
  v38 = *v30;
  v39 = *&v30[16];
  v36 = v34[0];
  v37 = v32;
  *&v40 = v13;
  *(&v40 + 1) = v14;
  v16 = sub_815C(&qword_59D90, &qword_431A8);
  (*(*(v16 - 8) + 16))(a2, v4, v16);
  v17 = (a2 + *(sub_815C(&qword_59E30, &qword_43228) + 36));
  v18 = *&v30[16];
  v17[2] = *v30;
  v17[3] = v18;
  v17[4] = v40;
  v19 = v37;
  *v17 = v36;
  v17[1] = v19;
  v41[2] = *v30;
  v41[3] = *&v30[16];
  v41[0] = v28;
  v41[1] = v29;
  v42 = v13;
  v43 = v15;
  sub_16B9C(v34, v21, &qword_59E50, &qword_43238);
  sub_16B9C(&v36, v21, &qword_59E48, &qword_43230);
  sub_16C04(v41, &qword_59E48, &qword_43230);
  *v21 = v8;
  *&v21[1] = v7;
  v22 = v9;
  v23 = v10;
  v24 = v11;
  v25 = v12;
  v26 = a1;
  v27 = 256;
  return sub_16C04(v21, &qword_59E50, &qword_43238);
}

double sub_287B8(_OWORD *a1)
{
  v1 = a1[1];
  v3[0] = *a1;
  v3[1] = v1;
  v4[0] = a1[2];
  *(v4 + 9) = *(a1 + 41);
  *&result = sub_207DC(v3).n128_u64[0];
  return result;
}

uint64_t sub_28864(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (BYTE4(a3) != 255)
  {
    return sub_16B18(result, a2, a3, SBYTE4(a3));
  }

  return result;
}

uint64_t sub_2897C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

uint64_t sub_289F4(double a1, double a2, double a3, double a4)
{
  swift_getKeyPath();
  slice.origin.x = v4;
  sub_2A0E8(&qword_5A030, _s10descr51419V5ModelCMa, &unk_42C88);
  sub_36CD0();

  v9 = *(*&v4 + 16) * a3 + a1;
  v10 = *(*&v4 + 24) * a4 + a2;
  v11 = *(*&v4 + 32) * a3;
  v12 = *(*&v4 + 40) * a4;
  swift_getKeyPath();
  sub_36CD0();

  if (*(*&v4 + 48) == 3)
  {
    v37.origin.x = v9;
    v37.origin.y = v10;
    v37.size.width = v11;
    v37.size.height = v12;
    memset(&slice, 0, sizeof(slice));
    v13 = CGRectGetHeight(v37) * 0.5;
    memset(&remainder, 0, sizeof(remainder));
    v38.origin.x = v9;
    v38.origin.y = v10;
    v38.size.width = v11;
    v38.size.height = v12;
    CGRectDivide(v38, &slice, &remainder, v13, CGRectMinYEdge);
    y = slice.origin.y;
    height = slice.size.height;
    width = slice.size.width;
    x = slice.origin.x;
    memset(&slice, 0, sizeof(slice));
    memset(&remainder, 0, sizeof(remainder));
    v39.origin.x = v9;
    v39.origin.y = v10;
    v39.size.width = v11;
    v39.size.height = v12;
    CGRectDivide(v39, &slice, &remainder, v13, CGRectMaxYEdge);
    v16 = slice.origin.x;
    v17 = slice.origin.y;
    v19 = slice.size.width;
    v18 = slice.size.height;
    swift_getKeyPath();
    slice.origin.x = v4;
    sub_36CD0();

    if (*(*&v4 + 72) >= 2u && *(*&v4 + 56) != 0)
    {
      swift_getKeyPath();
      slice.origin.x = v4;
      sub_36CD0();

      swift_beginAccess();
      sub_9B84(*&v4 + 80, &slice);
      v20 = slice.size.height;
      v21 = v35;
      sub_AD00(&slice, *&slice.size.height);
      v22 = (*(v21 + 8))(COERCE_CGFLOAT(*&v20), v21);
      sub_85EC(&slice);
      [v22 descender];
      UIRoundToScale();
      v23 = v16;
      v25 = v24;
      [v22 ascender];
      UIRoundToScale();
      v27 = v26;
      [v22 capHeight];
      UIRoundToScale();
      v29 = v28;

      y = y - (v27 - v29) + -4.0;
      v30 = v27 - v25;
      v16 = v23;
      height = v30 + 8.0;
      v17 = v17 + v18 - v27 + -4.0;
      v18 = v30 + 8.0;
    }

    sub_815C(&qword_59F48, qword_435D8);
    result = swift_allocObject();
    *(result + 16) = xmmword_414F0;
    *(result + 32) = x;
    *(result + 40) = y;
    *(result + 48) = width;
    *(result + 56) = height;
    *(result + 64) = v16;
    *(result + 72) = v17;
    *(result + 80) = v19;
    *(result + 88) = v18;
  }

  else
  {
    sub_815C(&qword_59F48, qword_435D8);
    result = swift_allocObject();
    *(result + 16) = xmmword_41500;
    *(result + 32) = v9;
    *(result + 40) = v10;
    *(result + 48) = v11;
    *(result + 56) = v12;
  }

  return result;
}

void sub_28DCC(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v6 = [objc_opt_self() currentDevice];
  if (!v6)
  {
    __break(1u);
    return;
  }

  v7 = v6;
  [v6 screenBounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  if (a2)
  {
    v16.origin.x = v9;
    v16.origin.y = v11;
    v16.size.width = v13;
    v16.size.height = v15;
    CGRectGetWidth(v16);
    if ((a4 & 1) == 0)
    {
      return;
    }

LABEL_6:
    v17.origin.x = v9;
    v17.origin.y = v11;
    v17.size.width = v13;
    v17.size.height = v15;
    CGRectGetHeight(v17);
    return;
  }

  if (a4)
  {
    goto LABEL_6;
  }
}

uint64_t (*sub_28F7C(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_36D90();
  return sub_29004;
}

void sub_29004(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_29074(uint64_t a1)
{
  v2 = sub_36DC0();
  v4 = __chkstk_darwin(v2, v3);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  return sub_36F10();
}

uint64_t sub_2916C(uint64_t a1, uint64_t a2)
{
  v4 = sub_815C(&qword_59E68, &qword_43390);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_291E4(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_D5DC(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_29268()
{
  result = qword_59EA8;
  if (!qword_59EA8)
  {
    sub_D5DC(&qword_59EB0, &qword_43498);
    sub_29320();
    sub_12044(&qword_59EC0, &qword_59EC8, &qword_434A0, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_59EA8);
  }

  return result;
}

unint64_t sub_29320()
{
  result = qword_59EB8;
  if (!qword_59EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_59EB8);
  }

  return result;
}

unint64_t sub_29374()
{
  result = qword_59ED0;
  if (!qword_59ED0)
  {
    sub_D5DC(&qword_59E88, &qword_43458);
    sub_29320();
    sub_12044(&qword_59ED8, &qword_59EE0, &qword_434A8, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_59ED0);
  }

  return result;
}

unint64_t sub_2945C()
{
  result = qword_59EE8;
  if (!qword_59EE8)
  {
    sub_D5DC(&qword_59C98, &qword_430B8);
    sub_D5DC(&qword_59C88, &qword_430A8);
    sub_27CB0();
    swift_getOpaqueTypeConformance2();
    sub_2A0E8(&qword_59EF0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_59EE8);
  }

  return result;
}

unint64_t sub_29558()
{
  result = qword_59EF8;
  if (!qword_59EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_59EF8);
  }

  return result;
}

unint64_t sub_295B0()
{
  result = qword_59F00;
  if (!qword_59F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_59F00);
  }

  return result;
}

void sub_29604(void (**a1)(uint64_t, char *, uint64_t), CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, uint64_t a6, uint64_t a7)
{
  v100 = a1;
  v12 = sub_815C(&qword_59F08, &qword_435A8);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12, v14);
  v16 = (&v78 - v15);
  v104 = sub_36E40();
  v17 = *(v104 - 8);
  __chkstk_darwin(v104, v18);
  v20 = &v78 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21, v22);
  v87 = &v78 - v23;
  v24 = sub_815C(&qword_59F10, &qword_435B0);
  __chkstk_darwin(v24 - 8, v25);
  v27 = &v78 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28, v29);
  v31 = &v78 - v30;
  v88 = sub_36E80();
  v32 = *(v88 - 8);
  __chkstk_darwin(v88, v33);
  v99 = &v78 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_815C(&qword_59F18, &qword_435B8);
  __chkstk_darwin(v35 - 8, v36);
  v97 = &v78 - v37;
  v98 = sub_815C(&qword_59F20, &qword_435C0);
  __chkstk_darwin(v98, v38);
  v40 = &v78 - v39;
  v107.origin.x = a2;
  v107.origin.y = a3;
  v107.size.width = a4;
  v107.size.height = a5;
  if (!CGRectIsEmpty(v107))
  {
    v93 = v17;
    v103 = v12;
    v86 = v20;
    v85 = v16;
    v90 = sub_289F4(a2, a3, a4, a5);
    swift_getKeyPath();
    v41 = OBJC_IVAR____TtCV20NTKWarlockFaceBundle9TimeLabel5Model___observationRegistrar;
    v106 = a7;
    v42 = sub_2A0E8(&qword_5A030, _s10descr51419V5ModelCMa, &unk_42C88);
    v101 = v41;
    v102 = v42;
    sub_36CD0();

    v43 = *(a7 + 72) == 1;
    v89.size.height = a5;
    v89.size.width = a4;
    v95 = v13;
    if (v43)
    {
      v45 = *(a7 + 56);
      v44 = *(a7 + 64);
      sub_815C(&qword_59F40, &qword_435D0);
      v46 = swift_allocObject();
      *(v46 + 1) = xmmword_414F0;
      v46[4] = v45;
      v46[5] = v44;
    }

    else
    {
      v46 = _swiftEmptyArrayStorage;
    }

    swift_getKeyPath();
    v106 = a7;
    sub_36CD0();

    v47 = *(a7 + 56);
    if (*(a7 + 72))
    {
      v48 = 0.0;
    }

    else
    {
      v48 = *(a7 + 64);
    }

    if (*(a7 + 72))
    {
      v47 = 0.0;
    }

    v94 = v47;
    v49 = v97;
    v50 = v88;
    (*(v32 + 16))(v97, v100, v88);
    (*(v32 + 32))(v99, v49, v50);
    sub_2A0E8(&qword_59F28, &type metadata accessor for LayoutSubviews, &protocol conformance descriptor for LayoutSubviews);
    sub_37670();
    v83 = *(v98 + 36);
    *(v40 + v83) = 0;
    v99 = *(sub_815C(&qword_59F30, &qword_435C8) + 36);
    v51 = sub_2A0E8(&qword_59F38, &type metadata accessor for LayoutSubviews, &protocol conformance descriptor for LayoutSubviews);
    v97 = 0;
    v84 = (v93 + 16);
    v100 = (v93 + 32);
    v96 = (v95 + 7);
    v95 += 6;
    v80 = v90 + 32;
    v98 = v46;
    v79 = v46 + 4;
    v92 = (v93 + 8);
    v89.origin.y = a3;
    v89.origin.x = a2;
    v52 = v103;
    v53 = v86;
    v93 = v51;
    v81 = v48;
    v82 = v31;
    while (1)
    {
      sub_377B0();
      if (*&v99[v40] == v106)
      {
        v54 = 1;
      }

      else
      {
        v55 = v27;
        v56 = sub_377D0();
        v57 = v87;
        v58 = v104;
        (*v84)(v87);
        v56(&v106, 0);
        sub_377C0();
        v59 = *(v52 + 48);
        v60 = v85;
        v61 = v97;
        *v85 = v97;
        (*v100)(v60 + v59, v57, v58);
        v62 = __OFADD__(v61, 1);
        v63 = v61 + 1;
        if (v62)
        {
          __break(1u);
          return;
        }

        v97 = v63;
        *(v40 + v83) = v63;
        v27 = v55;
        sub_1FC94(v60, v55, &qword_59F08, &qword_435A8);
        v54 = 0;
        v53 = v86;
        v31 = v82;
      }

      (*v96)(v27, v54, 1, v52);
      sub_1FC94(v27, v31, &qword_59F10, &qword_435B0);
      if ((*v95)(v31, 1, v52) == 1)
      {
        sub_16C04(v40, &qword_59F20, &qword_435C0);

        return;
      }

      v64 = *v31;
      (*v100)(v53, &v31[*(v52 + 48)], v104);
      v65 = 0.0;
      if (v64 < 0)
      {
        v66 = 0.0;
        v67 = 0.0;
        v68 = 0.0;
      }

      else
      {
        v66 = 0.0;
        v67 = 0.0;
        v68 = 0.0;
        if (v64 < *(v90 + 16))
        {
          v69 = (v80 + 32 * v64);
          v65 = *v69;
          v66 = v69[1];
          v67 = v69[2];
          v68 = v69[3];
        }

        if ((v64 & 0x8000000000000000) == 0 && v64 < *(v98 + 16))
        {
          MidY = *&v79[v64];
          goto LABEL_26;
        }
      }

      v109.origin.x = v65;
      v109.origin.y = v66;
      v109.size.width = v67;
      v109.size.height = v68;
      MidY = CGRectGetMidY(v109);
LABEL_26:
      swift_getKeyPath();
      v106 = a7;
      sub_36CD0();

      if (*(a7 + 49))
      {
        v71 = v65;
        v72 = v66;
        v73 = v67;
        v74 = v68;
        if (*(a7 + 49) == 1)
        {
          MidX = CGRectGetMidX(*&v71);
          sub_37460();
        }

        else
        {
          MidX = CGRectGetMinX(*&v71);
          sub_37470();
        }
      }

      else
      {
        v110.origin.x = v65;
        v110.origin.y = v66;
        v110.size.width = v67;
        v110.size.height = v68;
        MidX = CGRectGetMaxX(v110);
        sub_37480();
      }

      v52 = v103;
      v77 = COERCE_UNSIGNED_INT64(fabs(v48 + MidY)) > 0x7FEFFFFFFFFFFFFFLL;
      if (COERCE_UNSIGNED_INT64(fabs(v94 + MidX)) <= 0x7FEFFFFFFFFFFFFFLL && !v77)
      {
        v91 = v76;
        swift_getKeyPath();
        v106 = a7;
        sub_36CD0();

        if (*(a7 + 49) - 1 >= 2)
        {
          CGRectGetWidth(v89);
          v111.origin.x = v65;
          v111.origin.y = v66;
          v111.size.width = v67;
          v111.size.height = v68;
          CGRectGetMaxX(v111);
        }

        CGRectGetWidth(v89);
        v108.origin.x = v65;
        v108.origin.y = v66;
        v108.size.width = v67;
        v108.size.height = v68;
        CGRectGetHeight(v108);
        LOBYTE(v106) = 0;
        v105 = 0;
        sub_36E30();
        v52 = v103;
        v48 = v81;
      }

      (*v92)(v53, v104);
    }
  }
}

uint64_t sub_2A0E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_2A130(uint64_t a1)
{
  sub_2A938(v11);
  v2 = v11[0];

  sub_16B38(v11);
  *&v14[9] = *(v1 + OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_layout + 41);
  v3 = *(v1 + OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_layout + 32);
  v13 = *(v1 + OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_layout + 16);
  *v14 = v3;
  v12 = *(v1 + OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_layout);
  *(v16 + 9) = *(v2 + 57);
  v4 = v2[2];
  v15[0] = v2[1];
  v15[1] = v4;
  v16[0] = v2[3];
  if (sub_2202C(v15, &v12))
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath, v6);
    sub_1B878();
    sub_36CC0();
  }

  else
  {
    v8 = *&v14[9];
    v10 = v13;
    v9 = *v14;
    v2[1] = v12;
    v2[2] = v10;
    v2[3] = v9;
    *(v2 + 57) = v8;
  }

  return result;
}

uint64_t sub_2A290(uint64_t a1)
{
  v3 = _s10descr51419V15BackgroundStyleOMa(0);
  __chkstk_darwin(v3 - 8, v4);
  v6 = &v10[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_backgroundStyle;
  swift_beginAccess();
  sub_21E68(a1, v1 + v7);
  swift_endAccess();
  sub_2A938(v14);
  v8 = v14[0];

  sub_16B38(v14);
  sub_16D40(v1 + v7, v6);
  swift_getKeyPath();
  v11 = v8;
  v12 = v6;
  v13 = v8;
  sub_1B878();
  sub_36CC0();

  sub_16ABC(a1);

  return sub_16ABC(v6);
}

void sub_2A47C(char a1)
{
  v7.receiver = v1;
  v7.super_class = type metadata accessor for DigitalTimeView(0);
  objc_msgSendSuper2(&v7, "setHidden:", a1 & 1);
  v3 = *&v1[OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_timeLabelHostingController];
  if (v3)
  {
    v4 = v3;
    [v1 isHidden];
    swift_getObjectType();
    v5 = sub_36FE0();
    sub_37030();
    v5(&v6, 0);
  }
}

double sub_2A850(char a1, uint64_t a2, unsigned int a3)
{
  v4 = a3;
  v6 = (a3 >> 8) & 1;
  v7 = *(v3 + OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_timeFormatter);
  [v7 setShowSeconds:a1 & 1];
  [v7 setIncludeSeparatorInTimeSubstringFromSeparatorText:v4 & 1];
  [v7 setZeroPadTimeSubstringToSeparatorText:v6];
  [v7 setForcedNumberSystem:a2];
  sub_2A938(v9);
  sub_815C(&qword_59CD8, &qword_43710);
  sub_37280();
  sub_16B38(v9);
  sub_22C2C(v7);

  return result;
}

void sub_2A938(uint64_t a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView____lazy_storage___timeLabelView);
  v5 = *(v1 + OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView____lazy_storage___timeLabelView);
  v4 = *(v1 + OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView____lazy_storage___timeLabelView + 8);
  v6 = *(v1 + OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView____lazy_storage___timeLabelView + 16);
  v7 = *(v1 + OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView____lazy_storage___timeLabelView + 24);
  v8 = *(v1 + OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView____lazy_storage___timeLabelView + 32);
  v9 = *(v1 + OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView____lazy_storage___timeLabelView + 40);
  v10 = *(v1 + OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView____lazy_storage___timeLabelView + 48);
  if (v5)
  {
    v11 = *(v1 + OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView____lazy_storage___timeLabelView);
    v12 = v4;
    v13 = v6;
    v14 = v9;
    v15 = v10;
    v16 = v7;
    v17 = v8;
  }

  else
  {
    v18 = v1;
    v19 = *(v1 + OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView____lazy_storage___timeLabelView + 8);
    v20 = v6;
    v21 = v7;
    v22 = v8;
    v23 = v9;
    sub_2AA98(v18, &v35);
    v24 = v36;
    v25 = v37;
    v26 = v39;
    v27 = v3[1];
    v33 = *v3;
    v32 = v3[2];
    v31 = v3[3];
    v30 = v3[4];
    v29 = v3[5];
    v28 = v3[6];
    *v3 = v35;
    v3[2] = v24;
    v3[3] = v25;
    *(v3 + 2) = v38;
    v3[6] = v26;
    sub_2B840(&v35, v34);
    sub_2B89C(v33, v27, v32, v31, v30, v29, v28);
    v9 = v23;
    v8 = v22;
    v7 = v21;
    v6 = v20;
    v4 = v19;
    v14 = *(&v38 + 1);
    v15 = v39;
    v16 = v37;
    v17 = v38;
    v13 = v36;
    v12 = *(&v35 + 1);
    v11 = v35;
  }

  sub_2B908(v5, v4, v6, v7, v8, v9, v10);
  *a1 = v11;
  *(a1 + 8) = v12;
  *(a1 + 16) = v13 & 1;
  *(a1 + 24) = v16;
  *(a1 + 32) = v17;
  *(a1 + 40) = v14;
  *(a1 + 48) = v15;
}

uint64_t sub_2AA98@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v63 = a2;
  v67 = sub_36DC0();
  v66 = *(v67 - 8);
  __chkstk_darwin(v67, v3);
  v55 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5, v6);
  v8 = &v53 - v7;
  v60 = _s10descr51419V15BackgroundStyleOMa(0);
  __chkstk_darwin(v60, v9);
  v68 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v12);
  v14 = &v53 - v13;
  v15 = *(a1 + OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_layout + 16);
  v73 = *(a1 + OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_layout);
  v74 = v15;
  *v75 = *(a1 + OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_layout + 32);
  *&v75[9] = *(a1 + OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_layout + 41);
  v16 = OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_font;
  swift_beginAccess();
  sub_9B84(a1 + v16, v72);
  v57 = *(a1 + OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_fontTracking);
  v56 = *(a1 + OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_fontTracking + 8);
  v17 = *(a1 + OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_foregroundStyle);
  v18 = *(a1 + OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_foregroundStyle + 8);
  v65 = *(a1 + OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_foregroundStyle + 16);
  v19 = OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_backgroundStyle;
  v20 = *(a1 + OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_foregroundStyle + 20);
  swift_beginAccess();
  v21 = v14;
  v61 = v14;
  sub_16D40(a1 + v19, v14);
  v53 = *(a1 + OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_maskStyle);
  v22 = v53;
  v23 = *(a1 + OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_opacity);
  v58 = *(a1 + OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_timeTransition);
  v24 = *(a1 + OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_scaleEffectSize);
  v25 = *(a1 + OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_scaleEffectSize + 8);
  v26 = *(a1 + OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_backdropGroupName + 8);
  v64 = *(a1 + OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_backdropGroupName);
  v62 = v26;
  v27 = v66;
  v28 = *(v66 + 104);
  v59 = v8;
  v29 = v67;
  v28(v8, enum case for ColorScheme.dark(_:), v67);
  sub_36D40();
  swift_allocObject();
  sub_16B18(v17, v18, v65, v20);
  sub_16B8C(v22);

  v30 = sub_36D30();
  v71 = 0;
  sub_9B84(v72, v70);
  sub_16D40(v21, v68);
  v31 = *(v27 + 16);
  v32 = v55;
  v31(v55, v8, v29);
  _s10descr51419V5ModelCMa(0);
  v33 = swift_allocObject();
  v34 = OBJC_IVAR____TtCV20NTKWarlockFaceBundle9TimeLabel5Model__backgroundStyle;
  swift_storeEnumTagMultiPayload();
  v35 = v17;
  v36 = v17;
  v37 = v18;
  v38 = v18;
  v39 = v65;
  LOBYTE(v22) = v20;
  v54 = v20;
  sub_16B18(v36, v38, v65, v20);
  v40 = v53;
  sub_16B8C(v53);

  sub_36CE0();
  v41 = v74;
  *(v33 + 16) = v73;
  *(v33 + 32) = v41;
  *(v33 + 48) = *v75;
  *(v33 + 57) = *&v75[9];
  sub_1BF44(v70, v33 + 80);
  *(v33 + 120) = v57;
  *(v33 + 128) = v56;
  *(v33 + 136) = v35;
  *(v33 + 144) = v37;
  *(v33 + 152) = v39;
  *(v33 + 156) = v22;
  sub_16ABC(v33 + v34);
  sub_2B978(v68, v33 + v34);
  *(v33 + OBJC_IVAR____TtCV20NTKWarlockFaceBundle9TimeLabel5Model__maskStyle) = v40;
  v42 = v66;
  v43 = v32;
  v44 = v67;
  (*(v66 + 32))(v33 + OBJC_IVAR____TtCV20NTKWarlockFaceBundle9TimeLabel5Model__colorScheme, v43, v67);
  *(v33 + OBJC_IVAR____TtCV20NTKWarlockFaceBundle9TimeLabel5Model__opacity) = v23;
  *(v33 + OBJC_IVAR____TtCV20NTKWarlockFaceBundle9TimeLabel5Model__timeTransition) = v58;
  v45 = (v33 + OBJC_IVAR____TtCV20NTKWarlockFaceBundle9TimeLabel5Model__scaleEffectSize);
  *v45 = v24;
  v45[1] = v25;
  _s10descr51419V12TimeProviderCMa(0);
  v46 = swift_allocObject();
  v46[2] = 0;
  v46[3] = 0xE000000000000000;
  v46[4] = 0;
  v46[5] = 0xE000000000000000;
  v46[6] = 0;
  v46[7] = 0xE000000000000000;
  v46[8] = 0;
  v46[9] = 0xE000000000000000;
  v46[10] = 0;
  v46[11] = 0xE000000000000000;
  v46[12] = 0;
  v46[13] = 0xE000000000000000;
  sub_36CE0();
  v69 = v46;
  sub_37270();
  v47 = v70[0];
  sub_36D20();

  sub_16AAC(v40);
  v48 = sub_16A8C(v35, v37, v39, v54);
  (*(v42 + 8))(v59, v44, v48);
  sub_16ABC(v61);
  result = sub_85EC(v72);
  v50 = v71;
  v51 = v63;
  *v63 = v33;
  v51[1] = v30;
  *(v51 + 16) = v50;
  *(v51 + 3) = v47;
  v52 = v62;
  v51[5] = v64;
  v51[6] = v52;
  return result;
}

void sub_2B084()
{
  v1 = &v0[OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_timeLabelHostingController];
  if (!*&v0[OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_timeLabelHostingController])
  {
    v2 = v0;
    sub_2A938(v23);
    sub_2B738();
    sub_37370();
    v3 = sub_37040();

    ObjectType = swift_getObjectType();
    v5 = sub_2B7F4();
    v6 = sub_2B78C(v3, ObjectType, v5, &protocol descriptor for _UIHostingViewable);
    v8 = v7;
    swift_getObjectType();
    v9 = [v6 view];
    if (v9)
    {
      v10 = v9;
      v11 = [objc_opt_self() clearColor];
      [v10 setBackgroundColor:v11];

      v12 = [v6 view];
      if (v12)
      {
        v13 = v12;
        [v2 bounds];
        [v13 setFrame:?];

        v14 = [v6 view];
        if (v14)
        {
          v15 = v14;
          [v14 setClipsToBounds:1];

          v16 = [v6 view];
          if (v16)
          {
            v17 = v16;
            [v16 setUserInteractionEnabled:0];

            [v2 isHidden];
            v18 = sub_36FE0();
            sub_37030();
            v18(v23, 0);
            v19 = [v6 view];
            if (v19)
            {
              v20 = v19;
              [v2 addSubview:v19];

              v21 = *v1;
              *v1 = v6;
              *(v1 + 1) = v8;
              v22 = v3;

              [v2 setUserInteractionEnabled:0];
              return;
            }

LABEL_13:
            __break(1u);
            return;
          }

LABEL_12:
          __break(1u);
          goto LABEL_13;
        }

LABEL_11:
        __break(1u);
        goto LABEL_12;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_2B328()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for DigitalTimeView(0);
  objc_msgSendSuper2(&v4, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_timeLabelHostingController];
  if (v1)
  {
    v2 = [v1 view];
    if (v2)
    {
      v3 = v2;
      [v0 bounds];
      [v3 setFrame:?];
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_2B434()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DigitalTimeView(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for DigitalTimeView(uint64_t a1)
{
  result = qword_5A008;
  if (!qword_5A008)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2B58C(uint64_t a1)
{
  result = _s10descr51419V15BackgroundStyleOMa(319);
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

unint64_t sub_2B738()
{
  result = qword_5A020;
  if (!qword_5A020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_5A020);
  }

  return result;
}

uint64_t sub_2B78C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_dynamicCastMetatype();
  if (result)
  {
    result = swift_conformsToProtocol2();
    if (result)
    {
      return a1;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_2B7F4()
{
  result = qword_5A028;
  if (!qword_5A028)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_5A028);
  }

  return result;
}

double sub_2B89C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a1)
  {
  }

  return result;
}

double sub_2B908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a1)
  {
  }

  return result;
}

uint64_t sub_2B978(uint64_t a1, uint64_t a2)
{
  v4 = _s10descr51419V15BackgroundStyleOMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2B9E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_815C(qword_59170, &unk_42070);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2BA54(uint64_t a1)
{
  v2 = sub_815C(qword_59170, &unk_42070);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_2BAE0(double a1)
{
  *&a1 = a1;
  [*v1 _solveForInput:a1];
  return v2;
}

void *sub_2BB0C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    sub_379C0();
    v4 = a1 + 32;
    do
    {
      v4 += 8;
      sub_37780();
      sub_37990();
      sub_379D0();
      sub_379E0();
      sub_379A0();
      --v2;
    }

    while (v2);
    return _swiftEmptyArrayStorage;
  }

  return result;
}

double sub_2BBB4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);

  return result;
}

id sub_2BC7C(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(), void *a5)
{
  v110 = a5;
  v111 = a1;
  v9 = sub_37490();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = &v96 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_374B0();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14, v16);
  v18 = &v96 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_36CB0();
  __chkstk_darwin(v19, v20);
  if (((a2 - 13) & 0xFFFFFFFFFFFFFFFBLL) != 0)
  {
    if (a3)
    {
      sub_B2AC(0, &qword_58670, NSNumber_ptr);
      sub_B2AC(0, &qword_5A038, NTKEditOption_ptr);
      sub_13794();
      v24.super.isa = sub_374C0().super.isa;
    }

    else
    {
      v24.super.isa = 0;
    }

    v60 = type metadata accessor for WarlockFaceView(0);
    v120.receiver = v5;
    v120.super_class = v60;
    v61 = objc_msgSendSuper2(&v120, "_swatchImageForEditOption:mode:withSelectedOptions:", v111, a2, v24.super.isa);

    return v61;
  }

  v99 = &v96 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = v23;
  v109 = a4;
  v102 = v15;
  v103 = v13;
  v104 = v14;
  v105 = v10;
  v106 = v9;
  v101 = v21;
  LODWORD(v107) = v5[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_typeface];
  v119 = v107;
  LODWORD(v108) = *&v5[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_backgroundVisibility] == 0.0;
  v118 = v108;
  v25 = swift_allocObject();
  v26 = objc_opt_self();
  [v26 sizeForSwatchStyle:3];
  *(v25 + 16) = v27;
  *(v25 + 24) = v28;
  v29 = v5;
  if (v111)
  {
    type metadata accessor for WarlockBackgroundEditOption(0);
    v30 = swift_dynamicCastClass();
    if (v30)
    {
      v31 = v30;
      v32 = v111;
      LODWORD(v108) = [v31 _value] == &dword_0 + 1;
      v118 = v108;
      [v26 sizeForSwatchStyle:{objc_msgSend(v31, "swatchStyle")}];
      v34 = v33;
      v36 = v35;

      *(v25 + 16) = v34;
      *(v25 + 24) = v36;
    }

    type metadata accessor for WarlockTypefaceEditOption(0);
    v37 = swift_dynamicCastClass();
    if (v37)
    {
      v38 = v37;
      v39 = v111;
      LODWORD(v107) = [v38 _value] == &dword_0 + 1;
      v119 = v107;
      [v26 sizeForSwatchStyle:{objc_msgSend(v38, "swatchStyle")}];
      v41 = v40;
      v43 = v42;

      *(v25 + 16) = v41;
      *(v25 + 24) = v43;
    }
  }

  result = [v29 faceColorPalette];
  if (result)
  {
    v45 = result;
    v46 = v18;
    v111 = type metadata accessor for WarlockColorPalette();
    v47 = [swift_dynamicCastClassUnconditional() configuration];

    v48 = [v47 uniqueId];
    v49 = sub_37530();
    v51 = v50;

    v52 = sub_2C6CC(&v119, &v118, v49, v51);
    v54 = v53;

    v55 = v29;
    v56 = sub_1A858();
    v58 = v109;
    v57 = v110;
    if (v109)
    {
      v116 = v109;
      v117 = v110;
      aBlock = _NSConcreteStackBlock;
      v113 = 1107296256;
      v114 = sub_2BBB4;
      v115 = &unk_53340;
      v59 = _Block_copy(&aBlock);
    }

    else
    {
      v59 = 0;
    }

    v62 = sub_37500();
    [v56 setHandler:v59 forKey:v62];

    _Block_release(v59);
    v63 = objc_opt_self();
    v64 = sub_37500();
    v61 = [v63 cachedSwatchForKey:v64];

    if (v61)
    {

      return v61;
    }

    v65 = [v55 device];
    if (!v65)
    {

      return 0;
    }

    v66 = v65;
    v67 = [objc_allocWithZone(type metadata accessor for WarlockFaceView(0)) initWithFaceStyle:44 forDevice:v65 clientIdentifier:0];
    if (!v67)
    {

      return 0;
    }

    v68 = v67;
    v98 = v46;
    v69 = v68;
    v97 = v55;
    [v55 bounds];
    [v69 setFrame:?];

    [v69 _loadSnapshotContentViews];
    type metadata accessor for WarlockTypefaceEditOption(0);
    v70 = sub_A838(v107, v66);
    [v69 setOption:v70 forCustomEditMode:13 slot:0];

    type metadata accessor for WarlockBackgroundEditOption(0);
    v71 = v108;
    v108 = v66;
    v72 = sub_A838(v71, v66);
    [v69 setOption:v72 forCustomEditMode:17 slot:0];

    v107 = v69;
    v73 = *&v69[OBJC_IVAR____TtC20NTKWarlockFaceBundle15WarlockFaceView_backgroundView];
    v74 = v98;
    if (!v73)
    {
LABEL_23:
      v82 = NTKIdealizedDate();
      if (v82)
      {
        v83 = v99;
        v84 = v82;
        sub_36CA0();

        v85.super.isa = sub_36C90().super.isa;
        (*(v100 + 8))(v83, v101);
      }

      else
      {
        v85.super.isa = 0;
      }

      v86 = v107;
      [v107 setOverrideDate:v85.super.isa duration:0.0];

      [v86 layoutIfNeeded];
      [v86 setNeedsDisplay];
      sub_B2AC(0, &qword_5A040, OS_dispatch_queue_ptr);
      v87 = sub_37820();
      v88 = swift_allocObject();
      v88[2] = v86;
      v88[3] = v25;
      v89 = v108;
      v88[4] = v108;
      v88[5] = v52;
      v88[6] = v54;
      v88[7] = v58;
      v88[8] = v57;
      v116 = sub_2CCA4;
      v117 = v88;
      aBlock = _NSConcreteStackBlock;
      v113 = 1107296256;
      v114 = sub_2BBB4;
      v115 = &unk_53318;
      v90 = _Block_copy(&aBlock);
      sub_2CCD4(v58, v57);
      v91 = v86;

      v92 = v89;

      v93 = v74;
      sub_374A0();
      aBlock = _swiftEmptyArrayStorage;
      sub_2CCE4();
      sub_815C(&qword_5A050, &qword_43798);
      sub_2CD3C();
      v94 = v103;
      v95 = v106;
      sub_378F0();
      sub_37830();
      _Block_release(v90);

      (*(v105 + 8))(v94, v95);
      (*(v102 + 8))(v93, v104);

      return 0;
    }

    v75 = v73;
    result = [v97 faceColorPalette];
    if (result)
    {
      v76 = result;
      swift_dynamicCastClassUnconditional();
      v77 = sub_30574();
      v79 = v78;
      v111 = v80;
      v97 = v81;

      LOBYTE(aBlock) = 0;
      sub_359C0(v77, v79, 0);

      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      v74 = v98;
      goto LABEL_23;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2C6CC(_BYTE *a1, _BYTE *a2, uint64_t a3, void *a4)
{
  sub_37940(16);

  if (*a1)
  {
    v8._countAndFlagsBits = 0x64696C6F73;
  }

  else
  {
    v8._countAndFlagsBits = 0x6C69636E657473;
  }

  if (*a1)
  {
    v9 = 0xE500000000000000;
  }

  else
  {
    v9 = 0xE700000000000000;
  }

  v8._object = v9;
  sub_375D0(v8);

  v13._countAndFlagsBits = 761750061;
  v13._object = 0xE400000000000000;
  sub_375D0(v13);
  if (*a2)
  {
    v10._countAndFlagsBits = 6710895;
  }

  else
  {
    v10._countAndFlagsBits = 28271;
  }

  if (*a2)
  {
    v11 = 0xE300000000000000;
  }

  else
  {
    v11 = 0xE200000000000000;
  }

  v10._object = v11;
  sub_375D0(v10);

  v14._countAndFlagsBits = 2974509;
  v14._object = 0xE300000000000000;
  sub_375D0(v14);
  v15._countAndFlagsBits = a3;
  v15._object = a4;
  sub_375D0(v15);
  return 2975348;
}

void sub_2C7F8(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = a3;
  v14[5] = a4;
  v14[6] = a5;
  v14[7] = a6;
  v14[8] = a7;
  v18[4] = sub_2CE04;
  v18[5] = v14;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 1107296256;
  v18[2] = sub_2BBB4;
  v18[3] = &unk_53390;
  v15 = _Block_copy(v18);
  v16 = a1;

  v17 = a3;

  sub_2CCD4(a6, a7);

  [v16 _finalizeForSnapshotting:v15];
  _Block_release(v15);
}

void sub_2C928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void))
{
  v10 = objc_opt_self();
  swift_beginAccess();
  v11 = *(a2 + 16);
  v12 = *(a2 + 24);
  v13 = sub_37500();

  if (a6)
  {
    a6();
  }

  else
  {
    __break(1u);
  }
}

void *sub_2CB4C(uint64_t a1)
{
  if (a1 != 17 && a1 != 13)
  {
    return 0;
  }

  sub_379C0();
  sub_37780();
  sub_37990();
  sub_379D0();
  sub_379E0();
  sub_379A0();
  sub_37780();
  sub_37990();
  sub_379D0();
  sub_379E0();
  sub_379A0();
  return _swiftEmptyArrayStorage;
}

uint64_t sub_2CC4C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

double sub_2CCBC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

double sub_2CCD4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
  }

  return result;
}

unint64_t sub_2CCE4()
{
  result = qword_5A048;
  if (!qword_5A048)
  {
    sub_37490();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_5A048);
  }

  return result;
}

unint64_t sub_2CD3C()
{
  result = qword_5A058;
  if (!qword_5A058)
  {
    sub_D5DC(&qword_5A050, &qword_43798);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_5A058);
  }

  return result;
}

uint64_t sub_2CDA4()
{

  if (*(v0 + 56))
  {
  }

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_2CE4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  v6 = __chkstk_darwin(a1, a1);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v6);
  v9 = sub_2D018(v8, a2, a3);
  v11 = v10;
  type metadata accessor for WarlockFaceBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = sub_37500();
  v18 = 0;
  v19 = 0xE000000000000000;
  sub_37940(38);

  v18 = 0xD000000000000024;
  v19 = 0x800000000003B480;
  v20._countAndFlagsBits = v9;
  v20._object = v11;
  sub_375D0(v20);

  v14 = sub_37500();

  v15 = [ObjCClassFromMetadata localizedStringForKey:v13 comment:v14];

  v16 = sub_37530();
  (*(v5 + 8))(v8, a2);
  return v16;
}

unint64_t sub_2D018(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = a2;
  v17 = a3;
  v5 = sub_1BE78(v15);
  (*(*(a2 - 8) + 16))(v5, a1, a2);
  sub_AD00(v15, v16);
  swift_getDynamicType();
  (*(v17 + 40))();
  v6 = sub_37560();
  v8 = v7;

  v18._countAndFlagsBits = v6;
  v18._object = v8;
  sub_375D0(v18);

  v19._countAndFlagsBits = 95;
  v19._object = 0xE100000000000000;
  sub_375D0(v19);

  v9 = v16;
  v10 = v17;
  sub_AD00(v15, v16);
  (*(v10 + 32))(v9, v10);
  v11 = sub_37560();
  v13 = v12;

  v20._countAndFlagsBits = v11;
  v20._object = v13;
  sub_375D0(v20);

  v21._countAndFlagsBits = 95;
  v21._object = 0xE100000000000000;
  sub_375D0(v21);

  sub_85EC(v15);
  return 0xD000000000000013;
}

__n128 sub_2D1EC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 12) = *(a2 + 12);
  *a1 = result;
  return result;
}

uint64_t sub_2D200(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 28))
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

uint64_t sub_2D248(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 28) = 1;
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

    *(result + 28) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_2D29C()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  sub_37B50(LODWORD(v1));
  v2 = v0[4];
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  sub_37B50(LODWORD(v2));
  v3 = v0[5];
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  sub_37B50(LODWORD(v3));
  v4 = v0[6];
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  sub_37B50(LODWORD(v4));
}

Swift::Int sub_2D31C()
{
  sub_37B30();
  sub_2D29C();
  return sub_37B80();
}

Swift::Int sub_2D360(uint64_t a1)
{
  sub_37B30();
  sub_2D29C();
  return sub_37B80();
}

unint64_t sub_2D3DC()
{
  result = qword_5A060;
  if (!qword_5A060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_5A060);
  }

  return result;
}

id sub_2D430(uint64_t a1, uint64_t a2)
{
  v2 = [swift_getObjCClassFromMetadata() _optionWithValue:a1 forDevice:a2];

  return v2;
}

id sub_2D498(uint64_t a1, void *a2)
{
  sub_AC28(a1, v17);
  v5 = v18;
  if (v18)
  {
    v6 = sub_AD00(v17, v18);
    v7 = *(v5 - 8);
    v8 = __chkstk_darwin(v6, v6);
    v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10, v8);
    v11 = sub_37AC0();
    (*(v7 + 8))(v10, v5);
    sub_85EC(v17);
  }

  else
  {
    v11 = 0;
  }

  v12 = type metadata accessor for WarlockBackgroundEditOption(0);
  v16.receiver = v2;
  v16.super_class = v12;
  v13 = objc_msgSendSuper2(&v16, "initWithJSONObjectRepresentation:forDevice:", v11, a2);

  swift_unknownObjectRelease();
  v14 = v13;
  sub_AC98(a1);
  if (v14)
  {
  }

  return v14;
}