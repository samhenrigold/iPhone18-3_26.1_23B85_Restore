char *sub_1AC377984(char *result, size_t a2, char *a3)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    result = sub_1AC3B84B4();
    __break(1u);
  }

  else if (a3 < result || a3 >= &result[a2] || a3 != result)
  {
    return memmove(a3, result, a2);
  }

  return result;
}

_BYTE **sub_1AC377AAC(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

unint64_t sub_1AC377AE0(uint64_t a1, uint64_t a2)
{
  v4 = qword_1EB5549B8;
  if (!qword_1EB5549B8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB5549B8);
    return ObjCClassMetadata;
  }

  return v4;
}

unint64_t sub_1AC377B44(uint64_t a1, uint64_t a2)
{
  v4 = qword_1EB5549C0;
  if (!qword_1EB5549C0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB5549C0);
    return ObjCClassMetadata;
  }

  return v4;
}

unint64_t sub_1AC377BD0(uint64_t a1, uint64_t a2)
{
  v4 = qword_1EB5549D0;
  if (!qword_1EB5549D0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB5549D0);
    return ObjCClassMetadata;
  }

  return v4;
}

unint64_t sub_1AC377C34()
{
  v2 = qword_1EB5549E0;
  if (!qword_1EB5549E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB5549D8, &qword_1AC3BAF70);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB5549E0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC377CBC(uint64_t a1, uint64_t a2)
{
  v4 = qword_1EB554F80;
  if (!qword_1EB554F80)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB554F80);
    return ObjCClassMetadata;
  }

  return v4;
}

__n128 sub_1AC377D20(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  result = *(a1 + 16);
  *(a2 + 16) = result;
  return result;
}

unint64_t sub_1AC377D3C(uint64_t a1, uint64_t a2)
{
  v4 = qword_1EB5549F0;
  if (!qword_1EB5549F0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB5549F0);
    return ObjCClassMetadata;
  }

  return v4;
}

unint64_t sub_1AC377DA0(uint64_t a1, uint64_t a2)
{
  v4 = qword_1EB5549F8;
  if (!qword_1EB5549F8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB5549F8);
    return ObjCClassMetadata;
  }

  return v4;
}

uint64_t sub_1AC377E18(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v25 = a7;
  v24 = a6;
  v26 = a1;
  v20 = 0;
  v30 = a6;
  v21 = *(a6 - 8);
  v22 = v21;
  v7 = MEMORY[0x1EEE9AC00](0);
  v23 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9(v7);
  v27 = sub_1AC3B8484() >> 3;
  v28 = *v26;
  v29 = v28;
  if (v27 < 0)
  {
    result = sub_1AC3B84B4();
    __break(1u);
  }

  else
  {
    v19 = v28 + v27;
    v18 = &v18;
    MEMORY[0x1EEE9AC00](v23);
    v16 = v29;
    v17 = v10;
    sub_1AC378054(v11, sub_1AC379120, &v15, v12, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, v13, MEMORY[0x1E69E7CA8]);
    (*(v22 + 8))(v23, v24);
    result = v18;
    *v26 = v19;
  }

  return result;
}

uint64_t sub_1AC378054@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v12[2] = a8;
  v13 = a1;
  v14 = a2;
  v15 = a3;
  v16 = a5;
  v18 = a7;
  v19 = "Fatal error";
  v20 = "UnsafeRawBufferPointer with negative count";
  v21 = "Swift/UnsafeRawBufferPointer.swift";
  v29 = a4;
  v28 = a5;
  v27 = a6;
  v22 = *(a5 - 8);
  v23 = a5 - 8;
  v24 = (*(v22 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00](a1);
  v25 = v12 - v24;
  v26 = *(*(v9 - 8) + 64);
  if (v26 < 0)
  {
    result = sub_1AC3B84B4();
    __break(1u);
  }

  else
  {
    v10 = v17;
    result = (v14)(v13, v13 + v26, v25, v8);
    v12[1] = v10;
    if (v10)
    {
      return (*(v22 + 32))(v18, v25, v16);
    }
  }

  return result;
}

void *sub_1AC378288(void *a1, uint64_t a2, uint64_t a3, double (*a4)(void))
{
  (a4)(a1, a2, a3);
  v5 = *a1;
  sub_1AC3B8354();
  result = a1;
  *a1 = v5 + 8;
  return result;
}

uint64_t sub_1AC378394@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_1AC3783DC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = sub_1AC378450();
  v5 = MEMORY[0x1E69E72F0];

  return sub_1AC377E18(a1, a2, a3, v9, v10, v5, v4);
}

unint64_t sub_1AC378450()
{
  v2 = qword_1EB554A00;
  if (!qword_1EB554A00)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB554A00);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC3784C8()
{
  v2 = qword_1EB554A08;
  if (!qword_1EB554A08)
  {
    type metadata accessor for UIUserInterfaceStyle(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB554A08);
    return WitnessTable;
  }

  return v2;
}

uint64_t __swift_memcpy6_4(uint64_t result, uint64_t a2)
{
  *result = *a2;
  *(result + 4) = *(a2 + 4);
  return result;
}

uint64_t getEnumTagSinglePayload for BatteryIconStyle(unsigned int *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0xFFD && *(a1 + 6))
    {
      v5 = *a1 + 4093;
    }

    else
    {
      v2 = *a1 | (*(a1 + 2) << 32);
      LODWORD(v2) = ((v2 & 0xFFFFFFFFFFFFLL) >> 33) & 0x7F | ((v2 & 0xFFFFFFFFFFFFLL) >> 34) & 0xF80;
      v3 = 4095 - (((4 * v2) | (v2 >> 10)) & 0xFFF);
      if (v3 >= 0xFFD)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return v5 + 1;
}

uint64_t storeEnumTagSinglePayload for BatteryIconStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFFD)
  {
    *result = a2 - 4094;
    *(result + 4) = 0;
    if (a3 > 0xFFD)
    {
      *(result + 6) = 1;
    }
  }

  else
  {
    if (a3 > 0xFFD)
    {
      *(result + 6) = 0;
    }

    if (a2)
    {
      v3 = ((~(a2 - 1) & 0xFFF) >> 2) | ((~(a2 - 1) & 0xFFF) << 10);
      v4 = (v3 << 33) & 0xFE00000000 | (v3 << 34) & 0x3E0000000000;
      *result = v4;
      *(result + 4) = WORD2(v4);
    }
  }

  return result;
}

unint64_t sub_1AC3788DC(unsigned int *a1)
{
  if (((((*a1 | (*(a1 + 2) << 32)) & 0xFFFFFFFFFFFFLL) >> 44) & 3) < 2)
  {
    return (((*a1 | (*(a1 + 2) << 32)) & 0xFFFFFFFFFFFFLL) >> 44) & 3;
  }

  else
  {
    return *a1 + 2;
  }
}

unsigned int *sub_1AC378908(unsigned int *result)
{
  v1 = (*result | (*(result + 2) << 32)) & 0xFFFFCFFFFFFFFFFFLL;
  *result = *result;
  *(result + 2) = WORD2(v1);
  return result;
}

unsigned int *sub_1AC37892C(unsigned int *result, unsigned int a2)
{
  if (a2 < 2)
  {
    v2 = ((a2 & 3) << 44) & 0x300000000000 | (*result | (*(result + 2) << 32)) & 0xFFFFC101FFFFFFFFLL;
    *result = *result;
    *(result + 2) = WORD2(v2);
  }

  else
  {
    *result = a2 - 2;
    *(result + 2) = 0x2000;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BatteryIconStyle.BatteryChargeType(unsigned int *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x3FFD && *(a1 + 6))
    {
      v5 = *a1 + 16381;
    }

    else
    {
      v2 = *a1 | (*(a1 + 2) << 32);
      LODWORD(v2) = ((v2 & 0xFFFFFFFFFFFFLL) >> 33) & 0x7F | ((v2 & 0xFFFFFFFFFFFFLL) >> 34) & 0x3F80;
      v3 = 0x3FFF - (((4 * v2) | (v2 >> 12)) & 0x3FFF);
      if (v3 >= 0x3FFD)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return v5 + 1;
}

uint64_t storeEnumTagSinglePayload for BatteryIconStyle.BatteryChargeType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FFD)
  {
    *result = a2 - 16382;
    *(result + 4) = 0;
    if (a3 > 0x3FFD)
    {
      *(result + 6) = 1;
    }
  }

  else
  {
    if (a3 > 0x3FFD)
    {
      *(result + 6) = 0;
    }

    if (a2)
    {
      v3 = ((~(a2 - 1) & 0x3FFF) >> 2) | ((~(a2 - 1) & 0x3FFF) << 12);
      v4 = (v3 << 33) & 0xFE00000000 | (v3 << 34) & 0xFFFFFE0000000000;
      *result = v4;
      *(result + 4) = WORD2(v4);
    }
  }

  return result;
}

unsigned int *sub_1AC378D50(unsigned int *result)
{
  v1 = (*result | (*(result + 2) << 32)) & 0x3FFFFFFFFFFFLL;
  *result = *result;
  *(result + 2) = WORD2(v1);
  return result;
}

unsigned int *sub_1AC378D74(unsigned int *result, char a2)
{
  v2 = ((a2 & 3) << 46) | (*result | (*(result + 2) << 32)) & 0x101FFFFFFFFLL;
  *result = *result;
  *(result + 2) = WORD2(v2);
  return result;
}

unint64_t sub_1AC378FF4(uint64_t a1, uint64_t a2)
{
  v4 = qword_1EB554A18;
  if (!qword_1EB554A18)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB554A18);
    return ObjCClassMetadata;
  }

  return v4;
}

unint64_t sub_1AC379058(uint64_t a1, uint64_t a2)
{
  v4 = qword_1EB554A20;
  if (!qword_1EB554A20)
  {
    sub_1AC378FF4(255, a2);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB554A20);
    return WitnessTable;
  }

  return v4;
}

uint64_t sub_1AC379150(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  (**(v2 - 8))(a2);
  return a2;
}

unint64_t sub_1AC3791E8(uint64_t a1, uint64_t a2)
{
  v4 = qword_1EB554A30;
  if (!qword_1EB554A30)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB554A30);
    return ObjCClassMetadata;
  }

  return v4;
}

id sub_1AC37924C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  type metadata accessor for PillBadgeTextAttachment(0, a2);

  v18 = sub_1AC3793AC(v5, v6);
  v20 = sub_1AC3793FC(v18, v7);
  v21 = sub_1AC37943C(v20, v8);
  v24 = sub_1AC37947C();
  v25 = sub_1AC379484();
  v22 = sub_1AC37948C(v9, v10);
  v23 = sub_1AC3794D4(v22, v11);
  v26 = sub_1AC379528();
  v29 = sub_1AC37953C(a3, a4, v18, a5 & 1, v20, v21, v22, v23, v24, v25, v26, v12, v13, v14);
  v30 = sub_1AC3795E4(a1, a2, v29);
  MEMORY[0x1E69E5920](v29);
  return v30;
}

id sub_1AC3793AC(uint64_t a1, uint64_t a2)
{
  v2 = [objc_opt_self() systemFontOfSize:11.0 weight:*MEMORY[0x1E69DB980]];

  return v2;
}

id sub_1AC3793FC(uint64_t a1, uint64_t a2)
{
  v2 = [objc_opt_self() whiteColor];

  return v2;
}

id sub_1AC37943C(uint64_t a1, uint64_t a2)
{
  v2 = [objc_opt_self() blackColor];

  return v2;
}

id sub_1AC3795E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29 = a1;
  v30 = a2;
  v39 = a3;
  v61 = 0;
  v62 = 0;
  v60 = 0;
  v59 = 0;
  v58 = 0;
  v57 = 0;
  v47 = 0;
  v37 = 0;
  v31 = sub_1AC3B7294();
  v32 = *(v31 - 8);
  v33 = v31 - 8;
  v34 = (*(v32 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v35 = &v15 - v34;
  v61 = v3;
  v62 = v4;
  v60 = v5;
  sub_1AC37A108(v6, v4);
  v36 = sub_1AC3692C0();
  v59 = v36;
  MEMORY[0x1E69E5928](v39);
  v58 = v39;
  v38 = sub_1AC37A16C(v37, v7);
  MEMORY[0x1E69E5928](v39);
  v40 = sub_1AC379B10(v39);
  v57 = v40;
  v42 = sub_1AC3B7254();
  v54 = v42;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB554AA8, &qword_1AC3BB040);
  sub_1AC37A1D0();
  sub_1AC3B8214();
  v43 = v52;
  v44 = v53;

  v50 = v43;
  v51 = v44;
  if (v44)
  {
    v55 = v50;
    v56 = v51;
  }

  else
  {
    v55 = sub_1AC3B7F54();
    v56 = v8;
    if (v51)
    {
      sub_1AC360750(&v50);
    }
  }

  sub_1AC3B7274();
  v25 = sub_1AC3B7284();
  (*(v32 + 8))(v35, v31);
  v28 = &v49;
  v49 = v25;
  v26 = &v48;
  v48 = 2;
  v27 = type metadata accessor for LanguageDirection(0);
  sub_1AC37A258();
  v24 = (sub_1AC3B8594() & 1) != 0;
  v47 = v24;
  v23 = &v46;
  v46 = v24;
  v21 = &v45;
  v45 = 0;
  v22 = type metadata accessor for UITraitEnvironmentLayoutDirection(0);
  sub_1AC37A2D8();
  if (sub_1AC3B8594())
  {
    v19 = 0x1FB92B000uLL;
    [v36 0x1FB92B19BLL];
    v9 = sub_1AC3B7F54();
    v18 = sub_1AC379B6C(v9, v10);
    [v36 (v19 + 411)];
    MEMORY[0x1E69E5920](v18);

    v20 = sub_1AC379B6C(v29, v30);
    [v36 (v19 + 411)];
    MEMORY[0x1E69E5920](v20);
  }

  else
  {

    v15 = sub_1AC379B6C(v29, v30);
    v17 = 0x1FB92B000uLL;
    [v36 0x1FB92B19BLL];
    MEMORY[0x1E69E5920](v15);
    v11 = sub_1AC3B7F54();
    v16 = sub_1AC379B6C(v11, v12);
    [v36 (v17 + 411)];
    *&v13 = MEMORY[0x1E69E5920](v16).n128_u64[0];
    [v36 (v17 + 411)];
  }

  MEMORY[0x1E69E5920](v40);
  MEMORY[0x1E69E5920](v39);
  return v36;
}

id sub_1AC379B10(uint64_t a1)
{
  v3 = [swift_getObjCClassFromMetadata() attributedStringWithAttachment_];
  MEMORY[0x1E69E5920](a1);
  return v3;
}

uint64_t sub_1AC379BB4()
{
  v2 = *(v0 + OBJC_IVAR____TtC20HeadphoneCommonUIKit23PillBadgeTextAttachment_badgeText);

  return v2;
}

uint64_t sub_1AC379C00()
{
  v2 = *(v0 + OBJC_IVAR____TtC20HeadphoneCommonUIKit23PillBadgeTextAttachment_badgeFont);
  MEMORY[0x1E69E5928](v2);
  return v2;
}

uint64_t sub_1AC379C48()
{
  v2 = *(v0 + OBJC_IVAR____TtC20HeadphoneCommonUIKit23PillBadgeTextAttachment_badgeColor);
  MEMORY[0x1E69E5928](v2);
  return v2;
}

uint64_t sub_1AC379C90()
{
  v2 = *(v0 + OBJC_IVAR____TtC20HeadphoneCommonUIKit23PillBadgeTextAttachment_backgroundColor);
  MEMORY[0x1E69E5928](v2);
  return v2;
}

char *sub_1AC379DA8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, double a14)
{
  v51 = 0;
  v49 = a1;
  v50 = a2;
  v48 = a3;
  v47 = a4 & 1;
  v46 = a5;
  v45 = a6;
  v44 = a9;
  v43 = a10;
  v42 = a7;
  v41 = a8;
  v37 = a11;
  v38 = a12;
  v39 = a13;
  v40 = a14;

  v14 = OBJC_IVAR____TtC20HeadphoneCommonUIKit23PillBadgeTextAttachment_badgeText;
  *OBJC_IVAR____TtC20HeadphoneCommonUIKit23PillBadgeTextAttachment_badgeText = a1;
  *(v14 + 8) = a2;
  MEMORY[0x1E69E5928](a3);
  *&v51[OBJC_IVAR____TtC20HeadphoneCommonUIKit23PillBadgeTextAttachment_badgeFont] = a3;
  if (a4)
  {
    MEMORY[0x1E69E5928](a6);
    v21 = a6;
  }

  else
  {
    MEMORY[0x1E69E5928](a5);
    v21 = a5;
  }

  *&v51[OBJC_IVAR____TtC20HeadphoneCommonUIKit23PillBadgeTextAttachment_badgeColor] = v21;
  if (a4)
  {
    MEMORY[0x1E69E5928](a8);
    v20 = a8;
  }

  else
  {
    MEMORY[0x1E69E5928](a7);
    v20 = a7;
  }

  *&v51[OBJC_IVAR____TtC20HeadphoneCommonUIKit23PillBadgeTextAttachment_backgroundColor] = v20;
  v16 = &v51[OBJC_IVAR____TtC20HeadphoneCommonUIKit23PillBadgeTextAttachment_padding];
  *v16 = a11;
  v16[1] = a12;
  v16[2] = a13;
  v16[3] = a14;
  *&v51[OBJC_IVAR____TtC20HeadphoneCommonUIKit23PillBadgeTextAttachment_hightDelta] = a10;
  *&v51[OBJC_IVAR____TtC20HeadphoneCommonUIKit23PillBadgeTextAttachment_yAdjust] = a9;
  v36.receiver = v51;
  v36.super_class = type metadata accessor for PillBadgeTextAttachment(0, v15);
  v19 = objc_msgSendSuper2(&v36, sel_initWithData_ofType_, 0);
  MEMORY[0x1E69E5928](v19);
  v51 = v19;
  MEMORY[0x1E69E5928](v19);
  v18 = sub_1AC37A434();
  [v19 setImage_];
  MEMORY[0x1E69E5920](v18);
  MEMORY[0x1E69E5920](v19);
  MEMORY[0x1E69E5920](a8);
  MEMORY[0x1E69E5920](a7);
  MEMORY[0x1E69E5920](a6);
  MEMORY[0x1E69E5920](a5);
  MEMORY[0x1E69E5920](a3);

  MEMORY[0x1E69E5920](v51);
  return v19;
}

unint64_t sub_1AC37A108(uint64_t a1, uint64_t a2)
{
  v4 = qword_1EB554F10;
  if (!qword_1EB554F10)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB554F10);
    return ObjCClassMetadata;
  }

  return v4;
}

unint64_t sub_1AC37A16C(uint64_t a1, uint64_t a2)
{
  v4 = qword_1EB554AA0;
  if (!qword_1EB554AA0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB554AA0);
    return ObjCClassMetadata;
  }

  return v4;
}

unint64_t sub_1AC37A1D0()
{
  v2 = qword_1EB554AB0;
  if (!qword_1EB554AB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB554AA8, &qword_1AC3BB040);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB554AB0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC37A258()
{
  v2 = qword_1EB554AB8;
  if (!qword_1EB554AB8)
  {
    type metadata accessor for LanguageDirection(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB554AB8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC37A2D8()
{
  v2 = qword_1EB554AC0;
  if (!qword_1EB554AC0)
  {
    type metadata accessor for UITraitEnvironmentLayoutDirection(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB554AC0);
    return WitnessTable;
  }

  return v2;
}

void sub_1AC37A358()
{
  sub_1AC3B7F54();
  sub_1AC3B84A4();
  __break(1u);
}

unint64_t sub_1AC37A434()
{
  v34 = 0.0;
  v35 = 0.0;
  v32 = 0.0;
  v33 = 0.0;
  v31 = 0;
  v38 = v0;

  v12 = sub_1AC3B7EE4();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB554B00, qword_1AC3BB048);
  v10 = sub_1AC3B8574();
  v7 = v1;
  sub_1AC37A840(MEMORY[0x1E69DB648], v1);
  v8 = *(v0 + OBJC_IVAR____TtC20HeadphoneCommonUIKit23PillBadgeTextAttachment_badgeFont);
  MEMORY[0x1E69E5928](v8);
  v7[4] = sub_1AC37A880(0, v2);
  v7[1] = v8;
  sub_1AC36EE1C(v10, v9);
  type metadata accessor for Key(0);
  sub_1AC35D214();
  sub_1AC3B7E74();
  v11 = sub_1AC3B7E64();

  [v12 sizeWithAttributes_];
  v36 = v3;
  v37 = v4;
  v14 = v3;
  v15 = v4;
  MEMORY[0x1E69E5920](v11);
  MEMORY[0x1E69E5920](v12);

  v34 = v14;
  v35 = v15;
  v17 = v15 + *(v0 + OBJC_IVAR____TtC20HeadphoneCommonUIKit23PillBadgeTextAttachment_padding) + *(v0 + OBJC_IVAR____TtC20HeadphoneCommonUIKit23PillBadgeTextAttachment_padding + 16) + *(v0 + OBJC_IVAR____TtC20HeadphoneCommonUIKit23PillBadgeTextAttachment_hightDelta);
  v32 = v14 + *(v0 + OBJC_IVAR____TtC20HeadphoneCommonUIKit23PillBadgeTextAttachment_padding + 8) + *(v0 + OBJC_IVAR____TtC20HeadphoneCommonUIKit23PillBadgeTextAttachment_padding + 24);
  v16 = v32;
  v33 = v17;
  sub_1AC37A8E4(0, v5);
  v19 = sub_1AC37A948(v32, v17);
  v31 = v19;
  (MEMORY[0x1E69E5928])();
  v18 = swift_allocObject();
  *(v18 + 16) = v13;
  *(v18 + 24) = v14;
  *(v18 + 32) = v15;
  *(v18 + 40) = v16;
  *(v18 + 48) = v17;

  v22 = swift_allocObject();
  *(v22 + 16) = sub_1AC37AD4C;
  *(v22 + 24) = v18;

  v29 = sub_1AC37AE1C;
  v30 = v22;
  aBlock = MEMORY[0x1E69E9820];
  v25 = 1107296256;
  v26 = 0;
  v27 = sub_1AC37AE28;
  v28 = &block_descriptor;
  v20 = _Block_copy(&aBlock);

  v21 = [v19 imageWithActions_];
  _Block_release(v20);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  result = isEscapingClosureAtFileLocation;
  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    MEMORY[0x1E69E5920](v19);

    return v21;
  }

  return result;
}

void *sub_1AC37A840(void *a1, void *a2)
{
  v3 = *a1;
  MEMORY[0x1E69E5928](*a1);
  result = a2;
  *a2 = v3;
  return result;
}

unint64_t sub_1AC37A880(uint64_t a1, uint64_t a2)
{
  v4 = qword_1EB554B08;
  if (!qword_1EB554B08)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB554B08);
    return ObjCClassMetadata;
  }

  return v4;
}

unint64_t sub_1AC37A8E4(uint64_t a1, uint64_t a2)
{
  v4 = qword_1EB554B10;
  if (!qword_1EB554B10)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB554B10);
    return ObjCClassMetadata;
  }

  return v4;
}

double sub_1AC37A990(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a6 + OBJC_IVAR____TtC20HeadphoneCommonUIKit23PillBadgeTextAttachment_yAdjust);
  v12 = a1 + *(a6 + OBJC_IVAR____TtC20HeadphoneCommonUIKit23PillBadgeTextAttachment_padding + 8) + *(a6 + OBJC_IVAR____TtC20HeadphoneCommonUIKit23PillBadgeTextAttachment_padding + 24);
  v13 = a2 + *(a6 + OBJC_IVAR____TtC20HeadphoneCommonUIKit23PillBadgeTextAttachment_padding) + *(a6 + OBJC_IVAR____TtC20HeadphoneCommonUIKit23PillBadgeTextAttachment_padding + 16);
  sub_1AC37B1F0(0, a6);
  v27 = sub_1AC3A34EC(0.0, v11, v12, v13, a4 / 2.0);
  v14 = *(a6 + OBJC_IVAR____TtC20HeadphoneCommonUIKit23PillBadgeTextAttachment_backgroundColor);
  [v14 setFill];
  [v27 fill];
  v21 = *(a6 + OBJC_IVAR____TtC20HeadphoneCommonUIKit23PillBadgeTextAttachment_padding + 8);
  v22 = *(a6 + OBJC_IVAR____TtC20HeadphoneCommonUIKit23PillBadgeTextAttachment_padding) + *(a6 + OBJC_IVAR____TtC20HeadphoneCommonUIKit23PillBadgeTextAttachment_yAdjust);

  v26 = sub_1AC3B7EE4();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB554B00, qword_1AC3BB048);
  v20 = sub_1AC3B8574();
  v17 = v6;
  sub_1AC37A840(MEMORY[0x1E69DB648], v6);
  v15 = *(a6 + OBJC_IVAR____TtC20HeadphoneCommonUIKit23PillBadgeTextAttachment_badgeFont);
  MEMORY[0x1E69E5928](v15);
  v17[4] = sub_1AC37A880(0, v7);
  v17[1] = v15;
  sub_1AC37A840(MEMORY[0x1E69DB650], v17 + 5);
  v18 = *(a6 + OBJC_IVAR____TtC20HeadphoneCommonUIKit23PillBadgeTextAttachment_badgeColor);
  MEMORY[0x1E69E5928](v18);
  v17[9] = sub_1AC37B254(0, v8);
  v17[6] = v18;
  sub_1AC36EE1C(v20, v19);
  type metadata accessor for Key(0);
  sub_1AC35D214();
  sub_1AC3B7E74();
  v25 = sub_1AC3B7E64();

  [v26 drawInRect:v25 withAttributes:{v21, v22, a1, a2}];
  MEMORY[0x1E69E5920](v25);
  MEMORY[0x1E69E5920](v26);

  *&result = MEMORY[0x1E69E5920](v27).n128_u64[0];
  return result;
}

double sub_1AC37AE28(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v2 = MEMORY[0x1E69E5928](a2);
  v4(a2, v2);
  *&result = MEMORY[0x1E69E5920](a2).n128_u64[0];
  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

id sub_1AC37B03C(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  v4.receiver = v2;
  v4.super_class = type metadata accessor for PillBadgeTextAttachment(0, a2);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id sub_1AC37B12C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AC3B7EE4();
  v5 = [v3 initWithString_];
  MEMORY[0x1E69E5920](v4);

  return v5;
}

unint64_t sub_1AC37B1F0(uint64_t a1, uint64_t a2)
{
  v4 = qword_1EB554B18;
  if (!qword_1EB554B18)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB554B18);
    return ObjCClassMetadata;
  }

  return v4;
}

unint64_t sub_1AC37B254(uint64_t a1, uint64_t a2)
{
  v4 = qword_1EB554B20;
  if (!qword_1EB554B20)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB554B20);
    return ObjCClassMetadata;
  }

  return v4;
}

uint64_t sub_1AC37B2B8()
{
  result = sub_1AC3B7F54();
  qword_1EB554B28 = result;
  qword_1EB554B30 = v1;
  return result;
}

uint64_t *sub_1AC37B2FC()
{
  if (qword_1EB554328 != -1)
  {
    swift_once();
  }

  return &qword_1EB554B28;
}

uint64_t HeadphoneSwiftUIHostingControllerKey.getter()
{
  v1 = *sub_1AC37B2FC();

  return v1;
}

uint64_t sub_1AC37B398()
{
  v2 = (v0 + *((*v0 & *MEMORY[0x1E69E7D40]) + 0x60));
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x1E69E5928](*v2);
  swift_endAccess();
  return v3;
}

double sub_1AC37B450(uint64_t a1)
{
  v4 = MEMORY[0x1E69E7D40];
  MEMORY[0x1E69E5928](a1);
  v5 = (v1 + *((*v1 & *v4) + 0x60));
  swift_beginAccess();
  v2 = *v5;
  *v5 = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

char *HeadphoneSwiftUIHostingController.init(withRootView:)(uint64_t a1)
{
  v23 = a1;
  v27 = 0;
  v26 = 0;
  v2 = *v1;
  v14 = MEMORY[0x1E69E7D40];
  v17 = v2 & *MEMORY[0x1E69E7D40];
  v22 = *(v17 + 80);
  v28 = v22;
  v20 = *(v22 - 8);
  v21 = v22 - 8;
  v3 = MEMORY[0x1EEE9AC00](a1);
  v16 = &v12 - v4;
  v26 = v5;
  v27 = v13;
  v6 = *((*v13 & *v14) + 0x60);
  v7 = v20;
  v18 = 0;
  *&v13[v6] = 0;
  v15 = v27;
  (*(v7 + 16))(v3);
  (*(v20 + 32))(&v15[*((*v15 & *v14) + 0x68)], v16, v22);
  v19 = v27;
  v9 = type metadata accessor for HeadphoneSwiftUIHostingController(v18, v22, *(v17 + 88), v8);
  v25.receiver = v19;
  v25.super_class = v9;
  v24 = objc_msgSendSuper2(&v25, sel_initWithNibName_bundle_, 0);
  v10 = MEMORY[0x1E69E5928](v24);
  v27 = v24;
  (*(v20 + 8))(v23, v22, v10);
  MEMORY[0x1E69E5920](v27);
  return v24;
}

void sub_1AC37B934()
{
  **((MEMORY[0] & *MEMORY[0x1E69E7D40]) + 0x60) = 0;
  sub_1AC3B7F54();
  sub_1AC3B84A4();
  __break(1u);
}

double sub_1AC37BA68(uint64_t a1)
{
  v106 = "Fatal error";
  v107 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v108 = "HeadphoneCommonUIKit/SwiftUIHostingController.swift";
  v132 = 0;
  v130 = 0;
  v2 = *v1;
  v114 = MEMORY[0x1E69E7D40];
  v3 = v2 & *MEMORY[0x1E69E7D40];
  v111 = v1;
  v110 = v3;
  v116 = *(v3 + 80);
  v133 = v116;
  v117 = *(v116 - 8);
  v115 = v116 - 8;
  v109 = (*(v117 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](a1);
  v118 = &v49 - v109;
  v132 = v1;
  MEMORY[0x1E69E5928](v1);
  v113 = *(v110 + 88);
  v112 = 0;
  v5 = type metadata accessor for HeadphoneSwiftUIHostingController(0, v116, v113, v4);
  v131.receiver = v1;
  v131.super_class = v5;
  objc_msgSendSuper2(&v131, sel_viewDidLoad);
  MEMORY[0x1E69E5920](v119);
  sub_1AC3B78A4();
  (*(v117 + 16))(v118, &v119[*((*v119 & *v114) + 0x68)], v116);
  v120 = sub_1AC3B7884();
  v130 = v120;
  MEMORY[0x1E69E5928](v120);
  v6 = sub_1AC37B450(v120);
  [v119 addChildViewController_];
  *&v7 = MEMORY[0x1E69E5928](v120).n128_u64[0];
  v121 = [v120 view];
  *&v8 = MEMORY[0x1E69E5920](v120).n128_u64[0];
  if (v121)
  {
    v105 = v121;
  }

  else
  {
    sub_1AC3B8494();
    __break(1u);
  }

  v103 = v105;
  [v105 setTranslatesAutoresizingMaskIntoConstraints_];
  MEMORY[0x1E69E5920](v103);
  *&v9 = MEMORY[0x1E69E5928](v120).n128_u64[0];
  v104 = [v120 view];
  MEMORY[0x1E69E5920](v120);
  if (v104)
  {
    v102 = v104;
  }

  else
  {
    sub_1AC3B8494();
    __break(1u);
  }

  v100 = v102;
  *&v10 = MEMORY[0x1E69E5928](v119).n128_u64[0];
  v101 = [v119 view];
  *&v11 = MEMORY[0x1E69E5920](v119).n128_u64[0];
  if (v101)
  {
    v99 = v101;
  }

  else
  {
    sub_1AC3B8494();
    __break(1u);
  }

  v97 = v99;
  [v99 bounds];
  v126 = v12;
  v127 = v13;
  v128 = v14;
  v129 = v15;
  v122 = v12;
  v123 = v13;
  v124 = v14;
  v125 = v15;
  [v100 setFrame_];
  MEMORY[0x1E69E5920](v97);
  MEMORY[0x1E69E5920](v100);
  *&v16 = MEMORY[0x1E69E5928](v119).n128_u64[0];
  v98 = [v119 view];
  MEMORY[0x1E69E5920](v119);
  if (v98)
  {
    v96 = v98;
  }

  else
  {
    sub_1AC3B8494();
    __break(1u);
  }

  v94 = v96;
  *&v17 = MEMORY[0x1E69E5928](v120).n128_u64[0];
  v95 = [v120 view];
  *&v18 = MEMORY[0x1E69E5920](v120).n128_u64[0];
  if (v95)
  {
    v93 = v95;
  }

  else
  {
    sub_1AC3B8494();
    __break(1u);
  }

  v87 = v93;
  [v94 addSubview_];
  MEMORY[0x1E69E5920](v87);
  MEMORY[0x1E69E5920](v94);
  v88 = objc_opt_self();
  v89 = sub_1AC377CBC(0, v19);
  v90 = sub_1AC3B8574();
  v91 = v20;
  *&v21 = MEMORY[0x1E69E5928](v119).n128_u64[0];
  v92 = [v119 view];
  *&v22 = MEMORY[0x1E69E5920](v119).n128_u64[0];
  if (v92)
  {
    v86 = v92;
  }

  else
  {
    sub_1AC3B8494();
    __break(1u);
  }

  v83 = v86;
  v84 = [v86 leadingAnchor];
  MEMORY[0x1E69E5920](v83);
  *&v23 = MEMORY[0x1E69E5928](v120).n128_u64[0];
  v85 = [v120 view];
  *&v24 = MEMORY[0x1E69E5920](v120).n128_u64[0];
  if (v85)
  {
    v82 = v85;
  }

  else
  {
    sub_1AC3B8494();
    __break(1u);
  }

  v78 = v82;
  v79 = [v82 leadingAnchor];
  *&v25 = MEMORY[0x1E69E5920](v78).n128_u64[0];
  v80 = [v84 constraintEqualToAnchor_];
  MEMORY[0x1E69E5920](v79);
  MEMORY[0x1E69E5920](v84);
  v26 = v119;
  *v91 = v80;
  *&v27 = MEMORY[0x1E69E5928](v26).n128_u64[0];
  v81 = [v119 view];
  *&v28 = MEMORY[0x1E69E5920](v119).n128_u64[0];
  if (v81)
  {
    v77 = v81;
  }

  else
  {
    sub_1AC3B8494();
    __break(1u);
  }

  v74 = v77;
  v75 = [v77 trailingAnchor];
  MEMORY[0x1E69E5920](v74);
  *&v29 = MEMORY[0x1E69E5928](v120).n128_u64[0];
  v76 = [v120 view];
  *&v30 = MEMORY[0x1E69E5920](v120).n128_u64[0];
  if (v76)
  {
    v73 = v76;
  }

  else
  {
    sub_1AC3B8494();
    __break(1u);
  }

  v69 = v73;
  v70 = [v73 trailingAnchor];
  *&v31 = MEMORY[0x1E69E5920](v69).n128_u64[0];
  v71 = [v75 constraintEqualToAnchor_];
  MEMORY[0x1E69E5920](v70);
  MEMORY[0x1E69E5920](v75);
  v32 = v119;
  v91[1] = v71;
  *&v33 = MEMORY[0x1E69E5928](v32).n128_u64[0];
  v72 = [v119 view];
  *&v34 = MEMORY[0x1E69E5920](v119).n128_u64[0];
  if (v72)
  {
    v68 = v72;
  }

  else
  {
    sub_1AC3B8494();
    __break(1u);
  }

  v65 = v68;
  v66 = [v68 topAnchor];
  MEMORY[0x1E69E5920](v65);
  *&v35 = MEMORY[0x1E69E5928](v120).n128_u64[0];
  v67 = [v120 view];
  *&v36 = MEMORY[0x1E69E5920](v120).n128_u64[0];
  if (v67)
  {
    v64 = v67;
  }

  else
  {
    sub_1AC3B8494();
    __break(1u);
  }

  v60 = v64;
  v61 = [v64 topAnchor];
  *&v37 = MEMORY[0x1E69E5920](v60).n128_u64[0];
  v62 = [v66 constraintEqualToAnchor_];
  MEMORY[0x1E69E5920](v61);
  MEMORY[0x1E69E5920](v66);
  v38 = v119;
  v91[2] = v62;
  *&v39 = MEMORY[0x1E69E5928](v38).n128_u64[0];
  v63 = [v119 view];
  *&v40 = MEMORY[0x1E69E5920](v119).n128_u64[0];
  if (v63)
  {
    v59 = v63;
  }

  else
  {
    sub_1AC3B8494();
    __break(1u);
  }

  v56 = v59;
  v57 = [v59 bottomAnchor];
  MEMORY[0x1E69E5920](v56);
  *&v41 = MEMORY[0x1E69E5928](v120).n128_u64[0];
  v58 = [v120 view];
  *&v42 = MEMORY[0x1E69E5920](v120).n128_u64[0];
  if (v58)
  {
    v55 = v58;
  }

  else
  {
    sub_1AC3B8494();
    __break(1u);
  }

  v50 = [v55 bottomAnchor];
  *&v43 = MEMORY[0x1E69E5920](v49).n128_u64[0];
  v51 = [v57 constraintEqualToAnchor_];
  MEMORY[0x1E69E5920](v50);
  MEMORY[0x1E69E5920](v57);
  v44 = v90;
  v45 = v89;
  v91[3] = v51;
  sub_1AC36EE1C(v44, v45);
  v52 = v46;
  v53 = sub_1AC3B8074();

  [v88 activateConstraints_];
  MEMORY[0x1E69E5920](v53);
  *&v47 = MEMORY[0x1E69E5928](v119).n128_u64[0];
  v54 = v119;
  [v120 didMoveToParentViewController_];
  MEMORY[0x1E69E5920](v54);
  *&result = MEMORY[0x1E69E5920](v120).n128_u64[0];
  return result;
}

double sub_1AC37CBFC(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  sub_1AC37BA68(v1);
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

id HeadphoneSwiftUIHostingController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = objc_allocWithZone(v3);
  if (a2)
  {
    v6 = sub_1AC3B7EE4();

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v5 = [v10 initWithNibName_bundle_];
  MEMORY[0x1E69E5920](a3);
  MEMORY[0x1E69E5920](v7);
  return v5;
}

void sub_1AC37CDDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](a4);
  if (a3)
  {
    sub_1AC3B7EF4();
    v6 = v4;
    MEMORY[0x1E69E5920](a3);
    v5 = v6;
  }

  else
  {
    v5 = 0;
  }

  HeadphoneSwiftUIHostingController.init(nibName:bundle:)(v5);
}

id HeadphoneSwiftUIHostingController.__deallocating_deinit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = 0;
  v7 = *v4 & *MEMORY[0x1E69E7D40];
  v10 = v4;
  v9 = *(v7 + 80);
  v5 = type metadata accessor for HeadphoneSwiftUIHostingController(0, v9, *(v7 + 88), a4);
  v8.receiver = v4;
  v8.super_class = v5;
  return objc_msgSendSuper2(&v8, sel_dealloc);
}

uint64_t sub_1AC37CF3C(char *a1)
{
  v2 = MEMORY[0x1E69E7D40];
  v3 = *((*a1 & *MEMORY[0x1E69E7D40]) + 0x50);
  sub_1AC35E758(&a1[*((*a1 & *MEMORY[0x1E69E7D40]) + 0x60)]);
  return (*(*(v3 - 8) + 8))(&a1[*((*a1 & *v2) + 0x68)]);
}

uint64_t sub_1AC37D020(uint64_t a1)
{
  inited = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    inited = swift_initClassMetadata2();
    if (!inited)
    {
      return 0;
    }
  }

  return inited;
}

__int128 *SplitContainerPair.init(leadingContent:trailingContent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v13 = 0u;
  v14 = 0u;
  v16 = a5;
  v15 = a6;

  *&v13 = a1;
  *(&v13 + 1) = a2;

  *&v14 = a3;
  *(&v14 + 1) = a4;
  sub_1AC37D224(&v13, a7);

  result = &v13;
  sub_1AC366A10(&v13);
  return result;
}

void *sub_1AC37D224(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v5 = a1[1];

  *a2 = v4;
  a2[1] = v5;
  v7 = a1[2];
  v8 = a1[3];

  result = a2;
  a2[2] = v7;
  a2[3] = v8;
  return result;
}

uint64_t sub_1AC37D29C()
{
  v2 = *v0;

  return v2;
}

uint64_t sub_1AC37D2F0()
{
  v2 = *(v0 + 16);

  return v2;
}

uint64_t SplitContainerPair.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v8 = a1;
  v5[2] = MEMORY[0x1E6981F48];
  v11 = sub_1AC37DBF0;
  v16 = MEMORY[0x1E69817F8];
  v39 = 0;
  v37 = 0u;
  v38 = 0u;
  v21 = *(a1 + 16);
  v41 = v21;
  v22 = *(a1 + 24);
  v40 = v22;
  v5[1] = 255;
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v24 = sub_1AC3B7E24();
  WitnessTable = swift_getWitnessTable();
  v17 = 0;
  v26 = sub_1AC3B7D54();
  v6 = (*(*(v26 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v26);
  v20 = v5 - v6;
  v7 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5 - v6);
  v27 = v5 - v7;
  v39 = v5 - v7;
  v9 = *v2;
  v14 = v2[1];
  v10 = v2[2];
  v15 = v2[3];
  *&v37 = v9;
  *(&v37 + 1) = v14;
  *&v38 = v10;
  *(&v38 + 1) = v15;

  v12 = &v28;
  v29 = v21;
  v30 = v22;
  v31 = *(v8 + 32);
  v32 = *(v8 + 40);
  v33 = v9;
  v34 = v14;
  v35 = v10;
  v36 = v15;
  sub_1AC3647AC();
  sub_1AC3B7D44();

  v19 = swift_getWitnessTable();
  sub_1AC35745C(v20, v26, v27);
  v25 = sub_1AC3B7724();
  sub_1AC37DC24(v20, v21, v22, TupleTypeMetadata3, v24, v25);
  sub_1AC37DCCC(v27, v20, v21, v22, TupleTypeMetadata3, v24, v25);
  sub_1AC35745C(v20, v26, v18);
  sub_1AC37DC24(v20, v21, v22, TupleTypeMetadata3, v24, v25);
  return sub_1AC37DC24(v27, v21, v22, TupleTypeMetadata3, v24, v25);
}

uint64_t sub_1AC37D6D4@<X0>(void (*a1)(void)@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v39 = a9;
  v26 = a1;
  v27 = a2;
  v29 = a3;
  v30 = a4;
  v48 = a5;
  v44 = a6;
  v36 = a7;
  v38 = a8;
  v65 = 0;
  v64 = 0;
  v62 = 0u;
  v63 = 0u;
  v28 = &v60;
  v60 = 0;
  v61 = 0;
  v67 = a5;
  v66 = a6;
  v33 = *(a6 - 8);
  v34 = a6 - 8;
  v22 = (*(v33 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](a1);
  v41 = &v22 - v22;
  v23 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v11);
  v43 = &v22 - v23;
  v65 = &v22 - v23;
  v31 = *(v12 - 8);
  v32 = v12 - 8;
  v24 = (*(v31 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v13);
  v42 = &v22 - v24;
  v25 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v15);
  v47 = &v22 - v25;
  v64 = &v22 - v25;
  *&v62 = v16;
  *(&v62 + 1) = a2;
  *&v63 = v17;
  *(&v63 + 1) = v18;

  v26();
  sub_1AC35745C(v42, v48, v47);
  v50 = *(v31 + 8);
  v49 = v31 + 8;
  v50(v42, v48);

  v58 = sub_1AC3B7D64();
  v59 = v19 & 1;
  v35 = MEMORY[0x1E6981840];
  v37 = MEMORY[0x1E6981838];
  sub_1AC35745C(&v58, MEMORY[0x1E6981840], v28);

  v29(v20);
  sub_1AC35745C(v41, v44, v43);
  v46 = *(v33 + 8);
  v45 = v33 + 8;
  v46(v41, v44);

  (*(v31 + 16))(v42, v47, v48);
  v40 = v57;
  v57[0] = v42;
  v55 = v60;
  v56 = v61;
  v57[1] = &v55;
  (*(v33 + 16))(v41, v43, v44);
  v57[2] = v41;
  v54[0] = v48;
  v54[1] = v35;
  v54[2] = v44;
  v51 = v36;
  v52 = v37;
  v53 = v38;
  sub_1AC394250(v40, 3uLL, v54, v39);
  v46(v41, v44);
  v50(v42, v48);
  v46(v43, v44);
  return (v50)(v47, v48);
}

uint64_t sub_1AC37DC24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a1 + *(a6 + 44);
  (*(*(a2 - 8) + 8))();
  (*(*(a3 - 8) + 8))(v8 + *(a4 + 64));
  return a1;
}

uint64_t sub_1AC37DCCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v11 = a2 + *(a7 + 44);
  v12 = a1 + *(a7 + 44);
  (*(*(a3 - 8) + 16))();
  v7 = v12 + *(a5 + 48);
  v8 = v11 + *(a5 + 48);
  *v8 = *v7;
  *(v8 + 8) = *(v7 + 8);
  (*(*(a4 - 8) + 16))(v11 + *(a5 + 64), v12 + *(a5 + 64));
  return a2;
}

uint64_t sub_1AC37DDD8()
{
  v2 = *v0;

  return v2;
}

uint64_t sub_1AC37DE24()
{
  v2 = *(v0 + 16);

  return v2;
}

__int128 *sub_1AC37DE70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v12 = 0u;
  v13 = 0u;
  v14 = a5;

  *&v12 = a1;
  *(&v12 + 1) = a2;

  *&v13 = a3;
  *(&v13 + 1) = a4;
  sub_1AC37D224(&v12, a6);

  result = &v12;
  sub_1AC366A10(&v12);
  return result;
}

uint64_t SplitContainer.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v8 = a1;
  v5[1] = MEMORY[0x1E6981F48];
  v11 = sub_1AC37E6DC;
  v16 = MEMORY[0x1E69817F8];
  v36 = 0;
  v34 = 0u;
  v35 = 0u;
  v21 = *(a1 + 16);
  v37 = v21;
  v5[0] = 255;
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v23 = sub_1AC3B7E24();
  WitnessTable = swift_getWitnessTable();
  v17 = 0;
  v25 = sub_1AC3B7D54();
  v6 = (*(*(v25 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v25);
  v20 = v5 - v6;
  v7 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5 - v6);
  v26 = v5 - v7;
  v36 = v5 - v7;
  v9 = *v2;
  v14 = v2[1];
  v10 = v2[2];
  v15 = v2[3];
  *&v34 = v9;
  *(&v34 + 1) = v14;
  *&v35 = v10;
  *(&v35 + 1) = v15;

  v12 = &v27;
  v28 = v21;
  v29 = *(v8 + 24);
  v30 = v9;
  v31 = v14;
  v32 = v10;
  v33 = v15;
  sub_1AC3647AC();
  sub_1AC3B7D44();

  v19 = swift_getWitnessTable();
  sub_1AC35745C(v20, v25, v26);
  v24 = sub_1AC3B7724();
  sub_1AC37E704(v20, v21, TupleTypeMetadata3, v23, v24);
  sub_1AC37E79C(v26, v20, v21, TupleTypeMetadata3, v23, v24);
  sub_1AC35745C(v20, v25, v18);
  sub_1AC37E704(v20, v21, TupleTypeMetadata3, v23, v24);
  return sub_1AC37E704(v26, v21, TupleTypeMetadata3, v23, v24);
}

uint64_t sub_1AC37E264@<X0>(void (*a1)(void)@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v23 = a7;
  v32 = a1;
  v40 = a2;
  v24 = a3;
  v25 = a4;
  v37 = a5;
  v34 = a6;
  v57 = 0;
  v55 = 0u;
  v56 = 0u;
  v41 = &v53;
  v53 = 0;
  v54 = 0;
  v50 = 0;
  v58 = a5;
  v35 = *(a5 - 8);
  v36 = a5 - 8;
  v26 = (v35[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](a1);
  v27 = v20 - v26;
  v28 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v29 = v20 - v28;
  v30 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v11);
  v42 = v20 - v30;
  v31 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v13);
  v33 = v20 - v31;
  v57 = v20 - v31;
  *&v55 = v14;
  *(&v55 + 1) = a2;
  *&v56 = v15;
  *(&v56 + 1) = v16;

  v32();
  sub_1AC35745C(v42, v37, v33);
  v38 = v35[1];
  v39 = v35 + 1;
  v38(v42, v37);

  v51 = sub_1AC3B7D64();
  v52 = v17 & 1;
  sub_1AC35745C(&v51, MEMORY[0x1E6981840], v41);
  v50 = v42;

  v24(v18);
  sub_1AC35745C(v29, v37, v42);
  v38(v29, v37);

  v21 = v35[2];
  v20[1] = v35 + 2;
  v21(v29, v33, v37);
  v22 = v49;
  v49[0] = v29;
  v47 = v53;
  v48 = v54;
  v49[1] = &v47;
  v21(v27, v42, v37);
  v49[2] = v27;
  v46[0] = v37;
  v46[1] = MEMORY[0x1E6981840];
  v46[2] = v37;
  v43 = v34;
  v44 = MEMORY[0x1E6981838];
  v45 = v34;
  sub_1AC394250(v22, 3uLL, v46, v23);
  v38(v27, v37);
  v38(v29, v37);
  v38(v42, v37);
  return (v38)(v33, v37);
}

uint64_t sub_1AC37E704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(*(a2 - 8) + 8);
  v7 = a1 + *(a5 + 44);
  v9();
  (v9)(v7 + *(a3 + 64), a2);
  return a1;
}

uint64_t sub_1AC37E79C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v13 = *(*(a3 - 8) + 16);
  v10 = a2 + *(a6 + 44);
  v11 = a1 + *(a6 + 44);
  v13();
  v6 = v11 + *(a4 + 48);
  v7 = v10 + *(a4 + 48);
  *v7 = *v6;
  *(v7 + 8) = *(v6 + 8);
  (v13)(v10 + *(a4 + 64), v11 + *(a4 + 64), a3);
  return a2;
}

__int128 *SplitContainer<>.init(leadingContent:trailing:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unsigned __int8 a5@<W4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v24 = 0u;
  v25 = 0u;
  v22 = a1;
  v23 = a2;
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;

  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = a3;
  *(v7 + 24) = a4;
  *(v7 + 32) = a5;
  *(v7 + 40) = a6;
  sub_1AC37DE70(sub_1AC37EA90, v14, sub_1AC37ED2C, v7, MEMORY[0x1E6981148], v17);
  v24 = v17[0];
  v25 = v17[1];
  sub_1AC37D224(&v24, a7);

  result = &v24;
  sub_1AC366A10(&v24);
  return result;
}

uint64_t sub_1AC37EA20@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  result = a1();
  *a2 = result;
  *(a2 + 8) = v3;
  *(a2 + 16) = v4 & 1;
  *(a2 + 24) = v5;
  return result;
}

uint64_t sub_1AC37EA9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v44 = 0u;
  v45 = 0u;
  v46 = a1;
  v47 = a2;
  v48 = a3;
  v49 = a4;

  v41 = 0;
  v42 = 0;
  v43 = 256;
  v37 = sub_1AC3B7A54();
  v38 = v5;
  v39 = v6;
  v40 = v7;
  v12 = v5;
  v13 = v6;
  v14 = v7;
  sub_1AC3B7C54();
  v33 = v37;
  v34 = v12;
  v35 = v13 & 1;
  v36 = v14;
  v29 = sub_1AC3B7A24();
  v30 = v8;
  v31 = v9;
  v32 = v10;
  v15 = v8;
  v16 = v9;
  v17 = v10;

  sub_1AC364A88(v37, v12, v13 & 1);

  v26[0] = v29;
  v26[1] = v15;
  v27 = v16 & 1;
  v28 = v17;
  v22 = MEMORY[0x1E6981148];
  sub_1AC35745C(v26, MEMORY[0x1E6981148], &v44);
  sub_1AC367A04(v26);
  v18 = v44;
  v19 = v45;
  v20 = *(&v45 + 1);
  sub_1AC367800(v44, *(&v44 + 1), v45 & 1);

  v23 = v18;
  v24 = v19 & 1;
  v25 = v20;
  sub_1AC35745C(&v23, v22, a5);
  sub_1AC367A04(&v23);
  return sub_1AC367A04(&v44);
}

__int128 *SplitContainer<>.init(leading:trailingContent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v24 = 0u;
  v25 = 0u;
  v20 = a1;
  v21 = a2;
  v22 = a3;
  v23 = a4;
  v18 = a5;
  v19 = a6;
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  *(v14 + 32) = a3;
  *(v14 + 40) = a4;

  v7 = swift_allocObject();
  *(v7 + 16) = a5;
  *(v7 + 24) = a6;
  sub_1AC37DE70(sub_1AC37F098, v14, sub_1AC37EA90, v7, MEMORY[0x1E6981148], v17);
  v24 = v17[0];
  v25 = v17[1];
  sub_1AC37D224(&v24, a7);

  result = &v24;
  sub_1AC366A10(&v24);
  return result;
}

uint64_t sub_1AC37EEC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v27 = 0u;
  v28 = 0u;
  v29 = a1;
  v30 = a2;
  v31 = a3;
  v32 = a4;

  v24 = 0;
  v25 = 0;
  v26 = 256;
  v20 = sub_1AC3B7A54();
  v21 = v5;
  v22 = v6;
  v23 = v7;
  v17[0] = v20;
  v17[1] = v5;
  v18 = v6 & 1;
  v19 = v7;
  v13 = MEMORY[0x1E6981148];
  sub_1AC35745C(v17, MEMORY[0x1E6981148], &v27);
  sub_1AC367A04(v17);
  v9 = v27;
  v10 = v28;
  v11 = *(&v28 + 1);
  sub_1AC367800(v27, *(&v27 + 1), v28 & 1);

  v14 = v9;
  v15 = v10 & 1;
  v16 = v11;
  sub_1AC35745C(&v14, v13, a5);
  sub_1AC367A04(&v14);
  return sub_1AC367A04(&v27);
}

__int128 *SplitContainer<>.init(leading:trailing:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unsigned __int8 a7@<W6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  v30 = 0u;
  v31 = 0u;
  v26 = a1;
  v27 = a2;
  v28 = a3;
  v29 = a4;
  v22 = a5;
  v23 = a6;
  v24 = a7;
  v25 = a8;
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;
  *(v19 + 32) = a3;
  *(v19 + 40) = a4;
  v9 = swift_allocObject();
  *(v9 + 16) = a5;
  *(v9 + 24) = a6;
  *(v9 + 32) = a7;
  *(v9 + 40) = a8;
  sub_1AC37DE70(sub_1AC37F098, v19, sub_1AC37ED2C, v9, MEMORY[0x1E6981148], v21);
  v30 = v21[0];
  v31 = v21[1];
  sub_1AC37D224(&v30, a9);
  result = &v30;
  sub_1AC366A10(&v30);
  return result;
}

uint64_t sub_1AC37F24C@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v7 = v1[3];

  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v7;
  return result;
}

uint64_t sub_1AC37F2D0()
{
  v2 = *(v0 + 32);

  return v2;
}

uint64_t *sub_1AC37F31C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  memset(__b, 0, 0x30uLL);
  __b[6] = a4;
  v8 = *a1;
  v13 = a1[1];
  v9 = a1[2];
  v14 = a1[3];

  __b[0] = v8;
  __b[1] = v13;
  __b[2] = v9;
  __b[3] = v14;

  __b[4] = a2;
  __b[5] = a3;
  sub_1AC37F434(__b, a5);

  result = __b;
  sub_1AC37F4D8(__b);
  return result;
}

void *sub_1AC37F434(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];

  *a2 = v3;
  a2[1] = v4;
  v6 = a1[2];
  v7 = a1[3];

  a2[2] = v6;
  a2[3] = v7;
  v9 = a1[4];
  v10 = a1[5];

  result = a2;
  a2[4] = v9;
  a2[5] = v10;
  return result;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_1AC37F4D8(void *a1)
{
}

uint64_t SplitTopFullBottom.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X3>)
{
  v16 = a2;
  v6[1] = 0;
  v6[4] = MEMORY[0x1E6981F48];
  v10 = sub_1AC37FF38;
  v14 = MEMORY[0x1E6981870];
  v35 = 0;
  v22 = *(a1 + 16);
  v36 = v22;
  v9 = *(a1 + 24);
  v6[3] = 255;
  v6[2] = type metadata accessor for SplitContainer(255, v22, v9, a3);
  v23 = sub_1AC3B7734();
  v6[0] = MEMORY[0x1E6981840];
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v25 = sub_1AC3B7E24();
  swift_getWitnessTable();
  v27 = sub_1AC3B7D54();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v19 = sub_1AC3B7E24();
  WitnessTable = swift_getWitnessTable();
  v15 = 0;
  v21 = sub_1AC3B7D94();
  v7 = (*(*(v21 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v21);
  v18 = v6 - v7;
  v8 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6 - v7);
  v29 = v6 - v8;
  v35 = v6 - v8;
  v13 = __dst;
  memcpy(__dst, v4, sizeof(__dst));
  sub_1AC37F434(__dst, &v34);
  v11 = &v30;
  v31 = v22;
  v32 = v9;
  v33 = v13;
  sub_1AC3802C0();
  sub_1AC3B7D84();
  sub_1AC37F4D8(v13);
  v17 = swift_getWitnessTable();
  sub_1AC35745C(v18, v21, v29);
  v26 = sub_1AC3B7724();
  v20 = sub_1AC3B7724();
  sub_1AC3802E4(v18, v22, v23, TupleTypeMetadata2, v25, v26, v27, TupleTypeMetadata3, v19, v20);
  sub_1AC380384(v29, v18, v22, v23, TupleTypeMetadata2, v25, v26, v27, TupleTypeMetadata3, v19, v20);
  sub_1AC35745C(v18, v21, v16);
  sub_1AC3802E4(v18, v22, v23, TupleTypeMetadata2, v25, v26, v27, TupleTypeMetadata3, v19, v20);
  return sub_1AC3802E4(v29, v22, v23, TupleTypeMetadata2, v25, v26, v27, TupleTypeMetadata3, v19, v20);
}

uint64_t *sub_1AC37FA5C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v34 = a4;
  __src = a1;
  v38 = a2;
  v21 = a3;
  __n[1] = 0;
  __n[3] = MEMORY[0x1E6981F48];
  v18 = &protocol conformance descriptor for SplitContainer<A>;
  v23 = sub_1AC381BA8;
  v27 = MEMORY[0x1E69817F8];
  v60 = 0;
  __n[0] = 48;
  memset(&v59[5], 0, 0x30uLL);
  v45 = v59;
  memset(v59, 0, 32);
  v20 = &v55;
  v55 = 0;
  v56 = 0;
  v64 = v38;
  memcpy(__dst, __src, sizeof(__dst));
  __n[4] = __dst[0];
  __n[5] = __dst[1];
  __n[6] = __dst[2];
  v14 = __dst[3];
  v15 = __dst[4];
  v16 = __dst[5];
  __n[2] = 255;
  v39 = sub_1AC3B7734();
  v30 = MEMORY[0x1E6981840];
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v41 = sub_1AC3B7E24();
  WitnessTable = swift_getWitnessTable();
  v28 = 0;
  v43 = sub_1AC3B7D54();
  v13 = *(*(v43 - 8) + 64);
  v12 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v43);
  v36 = __n - v12;
  v17 = v12;
  MEMORY[0x1EEE9AC00](__n - v12);
  v44 = __n - v17;
  v60 = __n - v17;
  v59[5] = v4;
  v59[6] = v5;
  v59[7] = v6;
  v59[8] = v14;
  v59[9] = v15;
  v59[10] = v16;
  v62 = *v7;
  v63 = v7[1];
  sub_1AC37D224(&v62, v58);
  v19 = v57;
  v57[0] = v62;
  v57[1] = v63;
  v29 = type metadata accessor for SplitContainer(v28, v38, v21, v8);
  v31 = swift_getWitnessTable();
  sub_1AC35745C(v19, v29, v45);
  sub_1AC366A10(v19);
  v22 = 1;
  v53 = sub_1AC3B7D64();
  v54 = v9 & 1;
  v32 = MEMORY[0x1E6981838];
  sub_1AC35745C(&v53, v30, v20);
  sub_1AC37F434(__src, v52);
  v24 = v46;
  v46[2] = v38;
  v46[3] = v21;
  v46[4] = __src;
  sub_1AC3647AC();
  sub_1AC3B7D44();
  sub_1AC37F4D8(__src);
  v33 = swift_getWitnessTable();
  sub_1AC35745C(v36, v43, v44);
  v42 = sub_1AC3B7724();
  sub_1AC381BC4(v36, v38, v39, TupleTypeMetadata2, v41, v42);
  v37 = v50;
  sub_1AC37D224(v45, v50);
  v35 = v51;
  v51[0] = v37;
  v48 = v55;
  v49 = v56;
  v51[1] = &v48;
  sub_1AC381C20(v44, v36, v38, v39, TupleTypeMetadata2, v41, v42);
  v51[2] = v36;
  v47[0] = v29;
  v47[1] = v30;
  v47[2] = v43;
  v46[5] = v31;
  v46[6] = v32;
  v46[7] = v33;
  sub_1AC394250(v35, 3uLL, v47, v34);
  sub_1AC381BC4(v36, v38, v39, TupleTypeMetadata2, v41, v42);
  sub_1AC366A10(v37);
  sub_1AC381BC4(v44, v38, v39, TupleTypeMetadata2, v41, v42);
  result = v45;
  sub_1AC366A10(v45);
  return result;
}

void sub_1AC37FF54(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v27 = a4;
  v11 = a1;
  v29 = a2;
  v19 = a3;
  v20 = MEMORY[0x1E697E858];
  v45 = 0;
  v44 = 0;
  v23 = &v40;
  v40 = 0;
  v41 = 0;
  v46 = a2;
  v15 = *(a2 - 8);
  v16 = a2 - 8;
  v10 = (*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](a1);
  v17 = &v9 - v10;
  v22 = 0;
  v30 = sub_1AC3B7734();
  v12 = (*(*(v30 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v11);
  v28 = &v9 - v12;
  v13 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v31 = &v9 - v13;
  v45 = &v9 - v13;
  v44 = v6;
  v14 = *(v6 + 32);
  v18 = *(v6 + 40);

  v14(v7);
  sub_1AC3B7E14();
  v21 = 0;
  sub_1AC3B7BB4();
  (*(v15 + 8))(v17, v29);

  v42 = v19;
  v43 = MEMORY[0x1E697E040];
  WitnessTable = swift_getWitnessTable();
  sub_1AC35745C(v28, v30, v31);
  sub_1AC381CFC(v28, v29);
  v38 = sub_1AC3B7D64();
  v39 = v8 & 1;
  v24 = MEMORY[0x1E6981840];
  v26 = MEMORY[0x1E6981838];
  sub_1AC35745C(&v38, MEMORY[0x1E6981840], v23);
  sub_1AC381D50(v31, v28, v29, v30);
  v37[0] = v28;
  v35 = v40;
  v36 = v41;
  v37[1] = &v35;
  v34[0] = v30;
  v34[1] = v24;
  v32 = WitnessTable;
  v33 = v26;
  sub_1AC394250(v37, 2uLL, v34, v27);
  sub_1AC381CFC(v28, v29);
  sub_1AC381CFC(v31, v29);
}

uint64_t sub_1AC3802E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v13 = a1 + *(a10 + 44);

  (*(*(a2 - 8) + 8))(v13 + *(a8 + 64) + *(a6 + 44));
  return a1;
}

uint64_t sub_1AC380384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v16 = *(a11 + 44);
  v21 = a1 + v16;
  v17 = *(a1 + v16);
  v18 = *(a1 + v16 + 8);

  v22 = a2 + v16;
  *v22 = v17;
  *(v22 + 8) = v18;
  v19 = *(v21 + 16);
  v20 = *(v21 + 24);

  *(v22 + 16) = v19;
  *(v22 + 24) = v20;
  *(v22 + 32) = *(v21 + 32);
  *(v22 + 40) = *(v21 + 40);
  v11 = v21 + *(a9 + 64);
  v12 = a2 + v16 + *(a9 + 64);
  *v12 = *v11;
  *(v12 + 16) = *(v11 + 16);
  v29 = v12 + *(a7 + 44);
  v28 = v11 + *(a7 + 44);
  (*(*(a3 - 8) + 16))();
  memcpy((v29 + *(a4 + 36)), (v28 + *(a4 + 36)), 0x30uLL);
  result = a2;
  v14 = *(a5 + 48);
  v15 = v29 + v14;
  *v15 = *(v28 + v14);
  *(v15 + 8) = *(v28 + v14 + 8);
  return result;
}

uint64_t *SplitTopFullBottom<>.init(leading:trailing:bottom:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unsigned __int8 a7@<W6>, uint64_t a8@<X7>, void *a9@<X8>, __int128 a10, unsigned __int8 a11, uint64_t a12)
{
  *&v14 = a1;
  *(&v14 + 1) = a2;
  *&v17 = a5;
  *(&v17 + 1) = a6;
  memset(__b, 0, sizeof(__b));
  v30 = v14;
  v31 = a3;
  v32 = a4;
  v27 = v17;
  v28 = a7;
  v29 = a8;
  v24 = a10;
  v25 = a11;
  v26 = a12;
  SplitContainer<>.init(leading:trailing:)(v14, *(&v14 + 1), a3 & 1, a4, v17, *(&v17 + 1), a7 & 1, a8, v22);
  v21[0] = v22[0];
  v21[1] = v22[1];
  v21[2] = v22[2];
  v21[3] = v22[3];
  v12 = swift_allocObject();
  *(v12 + 16) = a10;
  *(v12 + 32) = a11;
  *(v12 + 40) = a12;
  sub_1AC37F31C(v21, sub_1AC380A70, v12, MEMORY[0x1E6981148], v23);
  __b[0] = v23[0];
  __b[1] = v23[1];
  __b[2] = v23[2];
  __b[3] = v23[3];
  __b[4] = v23[4];
  __b[5] = v23[5];
  sub_1AC37F434(__b, a9);
  result = __b;
  sub_1AC37F4D8(__b);
  return result;
}

uint64_t sub_1AC380740@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v58 = 0u;
  v59 = 0u;
  v60 = a1;
  v61 = a2;
  v62 = a3;
  v63 = a4;

  v55 = 0;
  v56 = 0;
  v57 = 256;
  v51 = sub_1AC3B7A54();
  v52 = v5;
  v53 = v6;
  v54 = v7;
  v15 = v5;
  v16 = v6;
  v17 = v7;
  sub_1AC3B79E4();
  v47 = v51;
  v48 = v15;
  v49 = v16 & 1;
  v50 = v17;
  v43 = sub_1AC3B7A44();
  v44 = v8;
  v45 = v9;
  v46 = v10;
  v18 = v8;
  v19 = v9;
  v20 = v10;

  sub_1AC364A88(v51, v15, v16 & 1);

  sub_1AC3B7C54();
  v39 = v43;
  v40 = v18;
  v41 = v19 & 1;
  v42 = v20;
  v35 = sub_1AC3B7A24();
  v36 = v11;
  v37 = v12;
  v38 = v13;
  v21 = v11;
  v22 = v12;
  v23 = v13;

  sub_1AC364A88(v43, v18, v19 & 1);

  v32[0] = v35;
  v32[1] = v21;
  v33 = v22 & 1;
  v34 = v23;
  v28 = MEMORY[0x1E6981148];
  sub_1AC35745C(v32, MEMORY[0x1E6981148], &v58);
  sub_1AC367A04(v32);
  v24 = v58;
  v25 = v59;
  v26 = *(&v59 + 1);
  sub_1AC367800(v58, *(&v58 + 1), v59 & 1);

  v29 = v24;
  v30 = v25 & 1;
  v31 = v26;
  sub_1AC35745C(&v29, v28, a5);
  sub_1AC367A04(&v29);
  return sub_1AC367A04(&v58);
}

uint64_t Toggle<>.init(name:binding:bundle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v30 = a9;
  v23 = a1;
  v32 = a2;
  v24 = a3;
  v33 = a4;
  v28 = a5;
  v25 = a6;
  v26 = a7;
  v31 = a8;
  v27 = sub_1AC380F6C;
  v49 = 0;
  v47 = 0u;
  v48 = 0u;
  v44 = 0;
  v45 = 0;
  v46 = 0;
  v43 = 0;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB554BB8, &qword_1AC3BB150);
  v34 = *(v37 - 8);
  v35 = v37 - 8;
  v21 = *(v34 + 64);
  v20 = (v21 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v32);
  v29 = &v20 - v20;
  v22 = v20;
  MEMORY[0x1EEE9AC00](v9);
  v36 = &v20 - v22;
  v49 = &v20 - v22;
  *&v47 = v10;
  *(&v47 + 1) = v11;
  LOBYTE(v48) = v12;
  *(&v48 + 1) = v13;
  v44 = v14;
  v45 = v15;
  v46 = v16;
  v43 = v17;

  MEMORY[0x1E69E5928](v31);
  v38 = v23;
  v39 = v32;
  v40 = v24;
  v41 = v33;
  v42 = v31;
  sub_1AC3B7D74();

  v18 = MEMORY[0x1E69E5920](v31);
  (*(v34 + 32))(v36, v29, v37, v18);
  (*(v34 + 16))(v30, v36, v37);
  MEMORY[0x1E69E5920](v31);

  return (*(v34 + 8))(v36, v37);
}

uint64_t sub_1AC380D80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v29 = 0u;
  v30 = 0u;
  v32 = a1;
  v33 = a2;
  v34 = a3;
  v35 = a4;
  v31 = a5;

  MEMORY[0x1E69E5928](a5);
  v26 = 0;
  v27 = 0;
  v28 = 256;
  v22 = sub_1AC3B7A54();
  v23 = v6;
  v24 = v7;
  v25 = v8;
  v19[0] = v22;
  v19[1] = v6;
  v20 = v7 & 1;
  v21 = v8;
  v15 = MEMORY[0x1E6981148];
  sub_1AC35745C(v19, MEMORY[0x1E6981148], &v29);
  sub_1AC367A04(v19);
  v11 = v29;
  v12 = v30;
  v13 = *(&v30 + 1);
  sub_1AC367800(v29, *(&v29 + 1), v30 & 1);

  v16 = v11;
  v17 = v12 & 1;
  v18 = v13;
  sub_1AC35745C(&v16, v15, a6);
  sub_1AC367A04(&v16);
  return sub_1AC367A04(&v29);
}

uint64_t Button<>.init(key:bundle:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v31 = a8;
  v25 = a1;
  v34 = a2;
  v26 = a3;
  v35 = a4;
  v33 = a5;
  v24 = a6;
  v32 = a7;
  v29 = sub_1AC381318;
  v28 = sub_1AC380F6C;
  v50 = 0;
  v48 = 0u;
  v49 = 0u;
  v47 = 0;
  v45 = 0;
  v46 = 0;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB554BC0, &qword_1AC3BB158);
  v36 = *(v39 - 8);
  v37 = v39 - 8;
  v22 = *(v36 + 64);
  v21 = (v22 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v32);
  v30 = &v20 - v21;
  v23 = v21;
  MEMORY[0x1EEE9AC00](v8);
  v38 = &v20 - v23;
  v50 = &v20 - v23;
  *&v48 = v9;
  *(&v48 + 1) = v10;
  LOBYTE(v49) = v11;
  *(&v49 + 1) = v12;
  v47 = v13;
  v45 = v14;
  v46 = v15;

  v16 = swift_allocObject();
  v17 = v32;
  v27 = v16;
  *(v16 + 16) = v24;
  *(v16 + 24) = v17;

  MEMORY[0x1E69E5928](v33);
  v40 = v25;
  v41 = v34;
  v42 = v26;
  v43 = v35;
  v44 = v33;
  sub_1AC3B7D24();

  v18 = MEMORY[0x1E69E5920](v33);
  (*(v36 + 32))(v38, v30, v39, v18);
  (*(v36 + 16))(v31, v38, v39);

  MEMORY[0x1E69E5920](v33);

  return (*(v36 + 8))(v38, v39);
}

uint64_t sub_1AC3812B8(void (*a1)(void), uint64_t a2)
{

  a1();
}

uint64_t sub_1AC381440()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1AC381490(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFF && *(a1 + 32))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (*a1 < 0x100000000uLL)
      {
        v3 = *a1;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1AC3815D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2 - 1;
    }
  }

  return result;
}

uint64_t sub_1AC3817CC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1AC381814()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1AC38188C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*a1))
      {
        v3 = *a1;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1AC3819A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = a2 - 1;
    }
  }

  return result;
}

uint64_t sub_1AC381C20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v14 = a2 + *(a7 + 44);
  v13 = a1 + *(a7 + 44);
  (*(*(a3 - 8) + 16))();
  memcpy((v14 + *(a4 + 36)), (v13 + *(a4 + 36)), 0x30uLL);
  result = a2;
  v8 = v13 + *(a5 + 48);
  v9 = v14 + *(a5 + 48);
  *v9 = *v8;
  *(v9 + 8) = *(v8 + 8);
  return result;
}

uint64_t sub_1AC381D50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(*(a3 - 8) + 16))();
  memcpy((a2 + *(a4 + 36)), (a1 + *(a4 + 36)), 0x30uLL);
  return a2;
}

BOOL sub_1AC381E28(uint64_t a1, uint64_t a2)
{
  v5 = MEMORY[0x1E69E6A70];
  v2 = sub_1AC3B8574();
  *v3 = "ChargingReminders";
  *(v3 + 8) = 17;
  *(v3 + 16) = 2;
  sub_1AC36EE1C(v2, v5);
  v6 = sub_1AC3B8544();

  return v6 != 0;
}

unint64_t sub_1AC381F80()
{
  v2 = qword_1EB554D60;
  if (!qword_1EB554D60)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB554D60);
    return WitnessTable;
  }

  return v2;
}

BOOL sub_1AC3820CC@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AC381E28(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1AC38210C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1AC381F00();
  *a1 = result;
  a1[1] = v2;
  return result;
}

uint64_t sub_1AC38216C()
{
  v1 = sub_1AC3B7524();
  __swift_allocate_value_buffer(v1, qword_1EB554D48);
  __swift_project_value_buffer(v1, qword_1EB554D48);
  sub_1AC3B7F54();
  sub_1AC3B7F54();
  return sub_1AC3B7514();
}

uint64_t sub_1AC382210()
{
  if (qword_1EB554330 != -1)
  {
    swift_once();
  }

  v0 = sub_1AC3B7524();
  return __swift_project_value_buffer(v0, qword_1EB554D48);
}

uint64_t static Logger.battery.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AC382210();
  v1 = sub_1AC3B7524();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

Swift::Bool __swiftcall HPCUIBatteryStatusView.engravingIsSupported(_:)(Swift::UInt32 a1)
{
  sub_1AC3823DC(0, v1);
  v7 = sub_1AC382440(a1);
  if (v7)
  {
    v4 = [v7 supportsDigitalEngraving];
    MEMORY[0x1E69E5920](v7);
    v5 = v4;
  }

  else
  {
    v5 = 2;
  }

  if (v5 == 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = v5;
  }

  return v3 & 1;
}

unint64_t sub_1AC3823DC(uint64_t a1, uint64_t a2)
{
  v4 = qword_1EB554D68;
  if (!qword_1EB554D68)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB554D68);
    return ObjCClassMetadata;
  }

  return v4;
}

uint64_t HPCUIBatteryStatusView.getEngravedCaseImage(_:productID:)(uint64_t a1, uint64_t a2, int a3)
{
  *(v4 + 516) = a3;
  *(v4 + 304) = a2;
  *(v4 + 296) = a1;
  *(v4 + 224) = v4;
  *(v4 + 112) = 0;
  *(v4 + 120) = 0;
  *(v4 + 512) = 0;
  *(v4 + 232) = 0;
  *(v4 + 128) = 0;
  *(v4 + 136) = 0;
  *(v4 + 240) = 0;
  *(v4 + 248) = 0;
  *(v4 + 208) = 0;
  *(v4 + 216) = 0;
  *(v4 + 288) = 0;
  v5 = sub_1AC3B7304();
  *(v4 + 312) = v5;
  *(v4 + 320) = *(v5 - 8);
  *(v4 + 328) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB554D70, &qword_1AC3BB468);
  *(v4 + 336) = swift_task_alloc();
  v6 = sub_1AC3B7334();
  *(v4 + 344) = v6;
  *(v4 + 352) = *(v6 - 8);
  *(v4 + 360) = swift_task_alloc();
  *(v4 + 368) = swift_task_alloc();
  v7 = sub_1AC3B7524();
  *(v4 + 376) = v7;
  *(v4 + 384) = *(v7 - 8);
  *(v4 + 392) = swift_task_alloc();
  *(v4 + 400) = swift_task_alloc();
  v8 = sub_1AC3B7374();
  *(v4 + 408) = v8;
  *(v4 + 416) = *(v8 - 8);
  *(v4 + 424) = swift_task_alloc();
  *(v4 + 432) = swift_task_alloc();
  *(v4 + 112) = a1;
  *(v4 + 120) = a2;
  *(v4 + 512) = a3;
  *(v4 + 232) = v3;
  sub_1AC3B8134();
  *(v4 + 440) = sub_1AC3B8124();
  *(v4 + 448) = sub_1AC3B8114();
  *(v4 + 456) = v9;

  return MEMORY[0x1EEE6DFA0](sub_1AC38285C);
}

uint64_t sub_1AC38285C()
{
  v58 = v0;
  v0[28] = v0;
  v51 = sub_1AC3B7F54();
  v0[58] = v1;
  v0[16] = v51;
  v0[17] = v1;
  sub_1AC3845BC(0, v1);

  sub_1AC3B7F54();
  v52 = sub_1AC3B8304();
  v0[59] = v52;
  v0[30] = v52;
  sub_1AC3B7364();
  v29 = *(v50 + 400);
  v31 = *(v50 + 376);
  v34 = *(v50 + 516);
  v30 = *(v50 + 384);
  *(v50 + 160) = sub_1AC3B7F24();
  *(v50 + 168) = v2;
  *(v50 + 176) = sub_1AC3B7F54();
  *(v50 + 184) = v3;
  *(v50 + 192) = sub_1AC3B7F54();
  *(v50 + 200) = v4;
  sub_1AC385AA4();
  sub_1AC385B1C();
  sub_1AC384620();
  sub_1AC3B8234();
  sub_1AC360750(v50 + 192);
  sub_1AC360750(v50 + 176);
  sub_1AC360750(v50 + 160);
  v32 = *(v50 + 144);
  v33 = *(v50 + 152);
  *(v50 + 480) = v33;
  *(v50 + 208) = v32;
  *(v50 + 216) = v33;
  v5 = sub_1AC382210();
  (*(v30 + 16))(v29, v5, v31);

  v35 = swift_allocObject();
  *(v35 + 16) = v32;
  *(v35 + 24) = v33;
  v37 = swift_allocObject();
  *(v37 + 16) = v34;
  oslog = sub_1AC3B7504();
  v49 = sub_1AC3B8264();
  v39 = swift_allocObject();
  *(v39 + 16) = 32;
  v40 = swift_allocObject();
  *(v40 + 16) = 8;
  v36 = swift_allocObject();
  *(v36 + 16) = sub_1AC385B94;
  *(v36 + 24) = v35;
  v41 = swift_allocObject();
  *(v41 + 16) = sub_1AC377AC8;
  *(v41 + 24) = v36;
  v42 = swift_allocObject();
  *(v42 + 16) = 0;
  v43 = swift_allocObject();
  *(v43 + 16) = 4;
  v38 = swift_allocObject();
  *(v38 + 16) = sub_1AC385BA0;
  *(v38 + 24) = v37;
  v45 = swift_allocObject();
  *(v45 + 16) = sub_1AC386784;
  *(v45 + 24) = v38;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5549B0, &unk_1AC3BAF60);
  v44 = sub_1AC3B8574();
  v46 = v6;

  *v46 = sub_1AC377AC0;
  v46[1] = v39;

  v46[2] = sub_1AC377AC0;
  v46[3] = v40;

  v46[4] = sub_1AC377AD4;
  v46[5] = v41;

  v46[6] = sub_1AC377AC0;
  v46[7] = v42;

  v46[8] = sub_1AC377AC0;
  v46[9] = v43;

  v46[10] = sub_1AC386790;
  v46[11] = v45;
  sub_1AC36EE1C(v44, v47);

  if (os_log_type_enabled(oslog, v49))
  {
    buf = sub_1AC3B8334();
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB554F90, &qword_1AC3BB7E0);
    v27 = sub_1AC374C60(0, v25, v25);
    v28 = sub_1AC374C60(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v53 = buf;
    v54 = v27;
    v55 = v28;
    sub_1AC374CB4(2, &v53);
    sub_1AC374CB4(2, &v53);
    v56 = sub_1AC377AC0;
    v57 = v39;
    sub_1AC374CC8(&v56, &v53, &v54, &v55);
    v56 = sub_1AC377AC0;
    v57 = v40;
    sub_1AC374CC8(&v56, &v53, &v54, &v55);
    v56 = sub_1AC377AD4;
    v57 = v41;
    sub_1AC374CC8(&v56, &v53, &v54, &v55);
    v56 = sub_1AC377AC0;
    v57 = v42;
    sub_1AC374CC8(&v56, &v53, &v54, &v55);
    v56 = sub_1AC377AC0;
    v57 = v43;
    sub_1AC374CC8(&v56, &v53, &v54, &v55);
    v56 = sub_1AC386790;
    v57 = v45;
    sub_1AC374CC8(&v56, &v53, &v54, &v55);
    _os_log_impl(&dword_1AC345000, oslog, v49, "Headphone Engraving: BluetoothAddress: %s %u", buf, 0x12u);
    sub_1AC374D14(v27, 0, v25);
    sub_1AC374D14(v28, 1, MEMORY[0x1E69E7CA0] + 8);
    sub_1AC3B8314();
  }

  else
  {
  }

  v14 = *(v50 + 432);
  v16 = *(v50 + 424);
  v15 = *(v50 + 408);
  v11 = *(v50 + 400);
  v12 = *(v50 + 376);
  v22 = *(v50 + 368);
  v24 = *(v50 + 360);
  v23 = *(v50 + 344);
  v20 = *(v50 + 336);
  v13 = *(v50 + 416);
  v10 = *(v50 + 384);
  v21 = *(v50 + 352);
  v7 = MEMORY[0x1E69E5920](oslog);
  (*(v10 + 8))(v11, v12, v7);
  (*(v13 + 16))(v16, v14, v15);
  sub_1AC384670();
  sub_1AC3B7314();

  sub_1AC3B7394();
  v17 = *MEMORY[0x1E69C5DF0];
  v19 = sub_1AC3B73A4();
  v18 = *(v19 - 8);
  (*(v18 + 104))(v20, v17);
  (*(v18 + 56))(v20, 0, 1, v19);
  MEMORY[0x1AC5B1680](v20);
  (*(v21 + 16))(v24, v22, v23);
  sub_1AC3B72E4();
  v8 = swift_task_alloc();
  *(v50 + 488) = v8;
  *v8 = *(v50 + 224);
  v8[1] = sub_1AC383B24;

  return MEMORY[0x1EEE2F0E8]();
}

uint64_t sub_1AC383B24(uint64_t a1)
{
  v5 = *v2;
  v5[28] = *v2;
  v5[62] = a1;
  v5[63] = v1;

  if (v1)
  {
    v3 = sub_1AC383F7C;
  }

  else
  {
    v3 = sub_1AC383CA4;
  }

  return MEMORY[0x1EEE6DFA0](v3);
}

uint64_t sub_1AC383CA4()
{
  v3 = *(v0 + 496);
  v13 = *(v0 + 472);
  v11 = *(v0 + 432);
  v10 = *(v0 + 416);
  v12 = *(v0 + 408);
  v8 = *(v0 + 368);
  v7 = *(v0 + 352);
  v9 = *(v0 + 344);
  v5 = *(v0 + 328);
  v4 = *(v0 + 320);
  v6 = *(v0 + 312);
  *(v0 + 224) = v0;
  *(v0 + 288) = v3;

  *(v0 + 96) = sub_1AC38687C;
  *(v0 + 104) = v3;
  *(v0 + 64) = MEMORY[0x1E69E9820];
  *(v0 + 72) = 1107296256;
  *(v0 + 76) = 0;
  *(v0 + 80) = sub_1AC384794;
  *(v0 + 88) = &block_descriptor_34;
  v14 = _Block_copy((v0 + 64));

  (*(v4 + 8))(v5, v6);
  (*(v7 + 8))(v8, v9);

  (*(v10 + 8))(v11, v12);
  MEMORY[0x1E69E5920](v13);

  v1 = *(*(v0 + 224) + 8);

  return v1(v14);
}

uint64_t sub_1AC383F7C()
{
  v26 = v0[59];
  v24 = v0[54];
  v23 = v0[52];
  v25 = v0[51];
  v21 = v0[46];
  v20 = v0[44];
  v22 = v0[43];
  v1 = v0[41];
  v2 = v0[40];
  v3 = v0[39];
  v0[28] = v0;
  (*(v2 + 8))(v1, v3);
  (*(v20 + 8))(v21, v22);

  (*(v23 + 8))(v24, v25);
  MEMORY[0x1E69E5920](v26);

  v27 = v0[63];
  v4 = v0[49];
  v28 = v0[48];
  v29 = v0[47];
  v5 = v27;
  v0[31] = v27;
  v6 = sub_1AC382210();
  (*(v28 + 16))(v4, v6, v29);
  v31 = sub_1AC3B7504();
  v30 = sub_1AC3B8264();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5549B0, &unk_1AC3BAF60);
  v32 = sub_1AC3B8574();
  if (os_log_type_enabled(v31, v30))
  {
    buf = sub_1AC3B8334();
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB554F90, &qword_1AC3BB7E0);
    v16 = sub_1AC374C60(0, v14, v14);
    v17 = sub_1AC374C60(0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    *(v19 + 256) = buf;
    *(v19 + 264) = v16;
    *(v19 + 272) = v17;
    sub_1AC374CB4(0, (v19 + 256));
    sub_1AC374CB4(0, (v19 + 256));
    *(v19 + 280) = v32;
    v18 = swift_task_alloc();
    v18[2] = v19 + 256;
    v18[3] = v19 + 264;
    v18[4] = v19 + 272;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB554D80, &qword_1AC3BB470);
    sub_1AC385A1C();
    sub_1AC3B8014();

    _os_log_impl(&dword_1AC345000, v31, v30, "Headphone Engraving: Could not fetch assets:", buf, 2u);
    sub_1AC374D14(v16, 0, v14);
    sub_1AC374D14(v17, 0, MEMORY[0x1E69E7CA0] + 8);
    sub_1AC3B8314();
  }

  v11 = *(v19 + 392);
  v12 = *(v19 + 376);
  v10 = *(v19 + 384);
  v7 = MEMORY[0x1E69E5920](v31);
  (*(v10 + 8))(v11, v12, v7);
  *(v19 + 48) = sub_1AC384800;
  *(v19 + 56) = 0;
  *(v19 + 16) = MEMORY[0x1E69E9820];
  *(v19 + 24) = 1107296256;
  *(v19 + 28) = 0;
  *(v19 + 32) = sub_1AC384794;
  *(v19 + 40) = &block_descriptor_0;
  v13 = _Block_copy((v19 + 16));

  v8 = *(*(v19 + 224) + 8);

  return v8(v13);
}

unint64_t sub_1AC3845BC(uint64_t a1, uint64_t a2)
{
  v4 = qword_1EB554D78;
  if (!qword_1EB554D78)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB554D78);
    return ObjCClassMetadata;
  }

  return v4;
}

uint64_t sub_1AC384688(uint64_t a1)
{
  v11 = 0;
  v8 = sub_1AC3B7344();
  v6 = *(v8 - 8);
  v7 = v8 - 8;
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v8);
  v9 = &v4 - v5;
  v11 = a1;
  (*(v6 + 104))(v2);
  v10 = sub_1AC3B7354();
  (*(v6 + 8))(v9, v8);
  return v10;
}

id sub_1AC384794(uint64_t a1)
{
  v3 = *(a1 + 32);

  v4 = v3(v1);

  return v4;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_1AC38492C(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  *(v4 + 32) = a3;
  *(v4 + 80) = a2;
  *(v4 + 24) = a1;
  *(v4 + 16) = v4;
  sub_1AC3B8134();
  *(v4 + 48) = sub_1AC3B8124();
  sub_1AC3B8114();

  return MEMORY[0x1EEE6DFA0](sub_1AC3849DC);
}

uint64_t sub_1AC3849DC()
{
  v7 = v0[5];
  aBlock = v0[4];
  v1 = v0[3];
  v0[2] = v0;
  MEMORY[0x1E69E5928](v1);
  v0[7] = _Block_copy(aBlock);
  MEMORY[0x1E69E5928](v7);
  v10 = sub_1AC3B7EF4();
  v9 = v2;
  v0[8] = v2;
  v3 = swift_task_alloc();
  *(v8 + 72) = v3;
  *v3 = *(v8 + 16);
  v3[1] = sub_1AC384AEC;
  v4 = *(v8 + 80);

  return HPCUIBatteryStatusView.getEngravedCaseImage(_:productID:)(v10, v9, v4);
}

uint64_t sub_1AC384AEC(const void *a1)
{
  v8 = *v1;
  aBlock = *(*v1 + 56);
  v5 = *(*v1 + 40);
  v4 = *(*v1 + 24);
  *(v8 + 16) = *v1;

  aBlock[2](aBlock, a1);
  _Block_release(aBlock);
  _Block_release(a1);

  v2 = *(*(v8 + 16) + 8);

  return v2();
}

uint64_t sub_1AC384CD4(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v18 = a2;
  v24 = &unk_1AC3BB590;
  v27 = &unk_1AC3BB5A0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB554DC8, &qword_1AC3BB580);
  v17 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v26 = &v17 - v17;
  v25 = 0;
  v3 = sub_1AC3B8154();
  (*(*(v3 - 8) + 56))(v26, 1);
  v20 = 48;
  v21 = 7;
  v4 = swift_allocObject();
  v5 = v18;
  v6 = v4;
  v7 = v19;
  v28 = v6;
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v7;
  v6[5] = v5;
  v22 = v6[2];
  v23 = v6[3];
  swift_unknownObjectRetain();
  v8 = swift_allocObject();
  v9 = v23;
  v10 = v24;
  v11 = v25;
  v12 = v26;
  v13 = v27;
  v14 = v8;
  v15 = v28;
  v14[2] = v22;
  v14[3] = v9;
  v14[4] = v10;
  v14[5] = v15;
  sub_1AC385EE8(v11, v11, v12, v13, v14);
}

NSNumber_optional __swiftcall HPCUIBatteryStatusView.combinedBatteryValue(_:)(HPCUIDevice a1)
{
  isa = a1.super.isa;
  v101 = 0;
  v100 = 0;
  v74 = 0;
  v89 = 0;
  v88 = 0;
  v85 = 0.0;
  v76 = sub_1AC3B7524();
  v77 = *(v76 - 8);
  v78 = v77;
  v79 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](isa);
  v81 = (v79 + 15) & 0xFFFFFFFFFFFFFFF0;
  v80 = &v18 - v81;
  MEMORY[0x1EEE9AC00](v2);
  v82 = &v18 - v81;
  v101 = v3;
  v100 = v1;
  v98 = &unk_1F2109450;
  v99 = sub_1AC3869E0();
  v83 = &v97;
  v84 = sub_1AC3B7414();
  __swift_destroy_boxed_opaque_existential_1(v83);
  if (v84)
  {
    v73 = [(objc_class *)isa headphoneDevice];
    if (v73)
    {
      v72 = v73;
      v66 = v73;
      v89 = v73;
      v67 = sub_1AC3B7424();
      v4 = sub_1AC3B7484();
      v68 = v4;

      v88 = v4;
      v69 = sub_1AC3B7474();
      v70 = [v69 type];

      v87 = v70;
      v86 = 0;
      v71 = type metadata accessor for AABatteryType(0);
      sub_1AC386A5C();
      v5 = sub_1AC3B7EB4();
      if ((v5 & 1) == 0)
      {
        v61 = sub_1AC3B7474();
        [v61 level];
        v62 = v6;
        v85 = v6;

        sub_1AC386ADC(0, v7);
        v63 = sub_1AC3858C4();

        v64 = v63;
        v65 = v74;
        goto LABEL_20;
      }
    }

    v8 = v82;
    v9 = sub_1AC382210();
    (*(v78 + 16))(v8, v9, v76);
    v59 = sub_1AC3B7504();
    v56 = v59;
    v58 = sub_1AC3B8244();
    v57 = v58;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5549B0, &unk_1AC3BAF60);
    v60 = sub_1AC3B8574();
    if (os_log_type_enabled(v59, v58))
    {
      v10 = v74;
      v47 = sub_1AC3B8334();
      v43 = v47;
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB554F90, &qword_1AC3BB7E0);
      v45 = 0;
      v48 = sub_1AC374C60(0, v44, v44);
      v46 = v48;
      v49 = sub_1AC374C60(v45, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v93[0] = v47;
      v92 = v48;
      v91 = v49;
      v50 = 0;
      v51 = v93;
      sub_1AC374CB4(0, v93);
      sub_1AC374CB4(v50, v51);
      v90 = v60;
      v52 = &v18;
      MEMORY[0x1EEE9AC00](&v18);
      v53 = &v18 - 6;
      *(&v18 - 4) = v11;
      *(&v18 - 3) = &v92;
      *(&v18 - 2) = &v91;
      v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB554D80, &qword_1AC3BB470);
      sub_1AC385A1C();
      sub_1AC3B8014();
      v55 = v10;
      if (v10)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_1AC345000, v56, v57, "Headphone Battery: no combined value", v43, 2u);
        v41 = 0;
        sub_1AC374D14(v46, 0, v44);
        sub_1AC374D14(v49, v41, MEMORY[0x1E69E7CA0] + 8);
        sub_1AC3B8314();

        v42 = v55;
      }
    }

    else
    {

      v42 = v74;
    }

    v40 = v42;

    (*(v78 + 8))(v82, v76);
    v64 = 0;
    v65 = v40;
  }

  else
  {
    v12 = v80;
    v13 = sub_1AC382210();
    (*(v78 + 16))(v12, v13, v76);
    v38 = sub_1AC3B7504();
    v35 = v38;
    v37 = sub_1AC3B8254();
    v36 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5549B0, &unk_1AC3BAF60);
    v39 = sub_1AC3B8574();
    if (os_log_type_enabled(v38, v37))
    {
      v14 = v74;
      v26 = sub_1AC3B8334();
      v22 = v26;
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB554F90, &qword_1AC3BB7E0);
      v24 = 0;
      v27 = sub_1AC374C60(0, v23, v23);
      v25 = v27;
      v28 = sub_1AC374C60(v24, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v96 = v26;
      v95 = v27;
      v94 = v28;
      v29 = 0;
      v30 = &v96;
      sub_1AC374CB4(0, &v96);
      sub_1AC374CB4(v29, v30);
      v93[2] = v39;
      v31 = &v18;
      MEMORY[0x1EEE9AC00](&v18);
      v32 = &v18 - 6;
      *(&v18 - 4) = v15;
      *(&v18 - 3) = &v95;
      *(&v18 - 2) = &v94;
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB554D80, &qword_1AC3BB470);
      sub_1AC385A1C();
      sub_1AC3B8014();
      v34 = v14;
      if (v14)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_1AC345000, v35, v36, "Headphone Battery: Feature not enabled", v22, 2u);
        v20 = 0;
        sub_1AC374D14(v25, 0, v23);
        sub_1AC374D14(v28, v20, MEMORY[0x1E69E7CA0] + 8);
        sub_1AC3B8314();

        v21 = v34;
      }
    }

    else
    {

      v21 = v74;
    }

    v19 = v21;

    (*(v78 + 8))(v80, v76);
    v64 = 0;
    v65 = v19;
  }

LABEL_20:
  v16 = v64;
  v17 = v65;
  result.value.super.super.isa = v16;
  result.is_nil = v17;
  return result;
}

unint64_t sub_1AC385A1C()
{
  v2 = qword_1EB554D88;
  if (!qword_1EB554D88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB554D80, &qword_1AC3BB470);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB554D88);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC385AA4()
{
  v2 = qword_1EB554D90;
  if (!qword_1EB554D90)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB554D90);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC385B1C()
{
  v2 = qword_1EB554D98;
  if (!qword_1EB554D98)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB554D98);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC385BA8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v7 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_1AC385CB4;

  return v7();
}

uint64_t sub_1AC385CB4()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_1AC385DDC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = v4;
  *(v4 + 16) = v4;
  v8 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = sub_1AC385CB4;

  return v8();
}

uint64_t sub_1AC385EE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v45 = a1;
  v46 = a2;
  v54 = a3;
  v47 = a4;
  v48 = a5;
  v49 = &unk_1AC3BB5B8;
  v50 = "Fatal error";
  v51 = "Unexpectedly found nil while unwrapping an Optional value";
  v52 = "_Concurrency/arm64e-apple-ios.private.swiftinterface";
  v53 = &unk_1AC3BB5B0;
  v55 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB554DC8, &qword_1AC3BB580) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v54);
  v56 = v16 - v55;
  sub_1AC387104(v5, v16 - v55);
  v57 = sub_1AC3B8154();
  v58 = *(v57 - 8);
  v59 = v57 - 8;
  if ((*(v58 + 48))(v56, 1) == 1)
  {
    sub_1AC38722C(v56);
    v44 = 0;
  }

  else
  {
    v43 = sub_1AC3B8144();
    (*(v58 + 8))(v56, v57);
    v44 = v43;
  }

  v40 = v44 | 0x1C00;
  v42 = *(v48 + 16);
  v41 = *(v48 + 24);
  swift_unknownObjectRetain();
  if (v42)
  {
    v38 = v42;
    v39 = v41;
    v32 = v41;
    v33 = v42;
    swift_getObjectType();
    v34 = sub_1AC3B8114();
    v35 = v6;
    swift_unknownObjectRelease();
    v36 = v34;
    v37 = v35;
  }

  else
  {
    v36 = 0;
    v37 = 0;
  }

  v30 = v37;
  v31 = v36;

  if (v46)
  {
    v28 = v45;
    v29 = v46;
    v22 = v46;
    v23 = sub_1AC3B7F34();

    v24 = v23 + 32;

    v7 = swift_allocObject();
    v8 = v48;
    v9 = v31;
    v10 = v30;
    v25 = v7;
    *(v7 + 16) = v47;
    *(v7 + 24) = v8;
    v26 = 0;
    if (v9 != 0 || v10 != 0)
    {
      v63[0] = 0;
      v63[1] = 0;
      v63[2] = v31;
      v63[3] = v30;
      v26 = v63;
    }

    v60 = 7;
    v61 = v26;
    v62 = v24;
    v21 = swift_task_create();

    v27 = v21;
  }

  else
  {
    v27 = 0;
  }

  v20 = v27;
  if (v27)
  {
    v16[1] = v20;
    v16[0] = v20;
    sub_1AC38722C(v54);

    return v16[0];
  }

  else
  {

    sub_1AC38722C(v54);
    v11 = swift_allocObject();
    v12 = v48;
    v13 = v31;
    v14 = v30;
    v18 = v11;
    *(v11 + 16) = v47;
    *(v11 + 24) = v12;
    v19 = 0;
    if (v13 != 0 || v14 != 0)
    {
      v64[0] = 0;
      v64[1] = 0;
      v64[2] = v31;
      v64[3] = v30;
      v19 = v64;
    }

    return swift_task_create();
  }
}

uint64_t sub_1AC386508(uint64_t a1, int *a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_1AC38661C;

  return v6(a1);
}

uint64_t sub_1AC38661C()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_1AC386748@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_1AC386790(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = sub_1AC386804();
  v5 = MEMORY[0x1E69E7668];

  return sub_1AC377E18(a1, a2, a3, v9, v10, v5, v4);
}

unint64_t sub_1AC386804()
{
  v2 = qword_1EB554DA0;
  if (!qword_1EB554DA0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB554DA0);
    return WitnessTable;
  }

  return v2;
}

uint64_t block_copy_helper_32(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_1AC3868E8()
{
  v4 = v1;
  *(v1 + 16) = v1;
  v8 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = *(v0 + 32);
  v7 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = sub_1AC385CB4;

  return sub_1AC38492C(v8, v5, v6, v7);
}

unint64_t sub_1AC3869E0()
{
  v2 = qword_1EB554DA8;
  if (!qword_1EB554DA8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB554DA8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC386A5C()
{
  v2 = qword_1EB554DB0;
  if (!qword_1EB554DB0)
  {
    type metadata accessor for AABatteryType(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB554DB0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC386ADC(uint64_t a1, uint64_t a2)
{
  v4 = qword_1EB554DB8;
  if (!qword_1EB554DB8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB554DB8);
    return ObjCClassMetadata;
  }

  return v4;
}

uint64_t sub_1AC386B44(unsigned __int8 *a1, int a2)
{
  if (a2)
  {
    v6 = 1;
    if ((a2 + 1) >= 0x100)
    {
      if ((a2 + 1) >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v6 = v2;
    }

    if (v6 == 1)
    {
      v5 = *a1;
    }

    else if (v6 == 2)
    {
      v5 = *a1;
    }

    else
    {
      v5 = *a1;
    }

    if (v5)
    {
      v4 = v5 - 1;
    }

    else
    {
      v4 = -1;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

_BYTE *sub_1AC386C94(_BYTE *result, int a2, int a3)
{
  v5 = 0;
  if (a3)
  {
    v4 = 1;
    if ((a3 + 1) >= 0x100)
    {
      if ((a3 + 1) >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v4 = v3;
    }

    v5 = v4;
  }

  if (a2)
  {
    if (v5)
    {
      if (v5 == 1)
      {
        *result = a2;
      }

      else if (v5 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }
  }

  else if (v5)
  {
    if (v5 == 1)
    {
      *result = 0;
    }

    else if (v5 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  return result;
}

unint64_t sub_1AC386E90()
{
  v2 = qword_1EB554DC0;
  if (!qword_1EB554DC0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB554DC0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC386F0C()
{
  v4 = v1;
  *(v1 + 16) = v1;
  v7 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = sub_1AC385CB4;

  return sub_1AC385BA8(v7, v5, v6);
}

uint64_t sub_1AC387004(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_1AC385CB4;

  return sub_1AC385DDC(a1, v6, v7, v8);
}

void *sub_1AC387104(const void *a1, void *a2)
{
  v6 = sub_1AC3B8154();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB554DC8, &qword_1AC3BB580);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_1AC38722C(uint64_t a1)
{
  v3 = sub_1AC3B8154();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_1AC3872D4(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 16);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_1AC385CB4;

  return sub_1AC386508(a1, v6);
}

uint64_t sub_1AC3873BC(uint64_t a1, uint64_t a2)
{
  v9[1] = a1;
  v20 = 0;
  v19 = 0;
  v21 = a2;
  v13 = 0;
  v9[0] = (*(*(sub_1AC3B72A4() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v15 = v9 - v9[0];
  v3 = sub_1AC3B7ED4();
  v11 = *(v3 - 8);
  v10 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v12 = v9 - v10;
  v20 = v5;
  v19 = v2;
  (*(v11 + 16))(v4);
  sub_1AC377B44(v13, v6);
  type metadata accessor for HeadphoneSpecifier(v13, v7);
  v14 = sub_1AC36A3A8();
  sub_1AC387540();
  v16 = 0;
  v17 = 0;
  v18 = 256;
  return sub_1AC3B7F04();
}

uint64_t sub_1AC387558(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v16 = a1;
  v18 = a2;
  v19 = a3;
  v20 = a4;
  v32 = 0;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v28 = 0;
  v33 = a5;
  v22 = 0;
  v15 = (*(*(sub_1AC3B72A4() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v24 = &v14 - v15;
  v6 = sub_1AC3B7ED4();
  v17 = *(v6 - 8);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v21 = &v14 - v8;
  v32 = v9;
  v29 = v18;
  v30 = v19;
  v31 = v10;
  v28 = v5;
  (*(v17 + 16))(v7);
  sub_1AC377B44(v22, v11);
  type metadata accessor for HeadphoneSpecifier(v22, v12);
  v23 = sub_1AC36A3A8();
  sub_1AC387540();
  v25 = v18;
  v26 = v19;
  v27 = v20;
  return sub_1AC3B7F04();
}

uint64_t sub_1AC387714()
{
  v2 = *v0;

  return v2;
}

HeadphoneCommonUIKit::BulletPointRow __swiftcall BulletPointRow.init(bulletSymbol:text:)(Swift::String bulletSymbol, Swift::String text)
{
  v9 = v2;
  countAndFlagsBits = bulletSymbol._countAndFlagsBits;
  object = bulletSymbol._object;
  v8 = text._countAndFlagsBits;
  v10 = text._object;
  v12 = 0u;
  v13 = 0u;

  *&v12 = countAndFlagsBits;
  *(&v12 + 1) = object;

  *&v13 = v8;
  *(&v13 + 1) = v10;
  sub_1AC387814(&v12, v9);

  v3 = &v12;
  sub_1AC38787C(&v12);
  result.text._object = v6;
  result.text._countAndFlagsBits = v5;
  result.bulletSymbol._object = v4;
  result.bulletSymbol._countAndFlagsBits = v3;
  return result;
}

void *sub_1AC387814(void *a1, void *a2)
{
  *a2 = *a1;
  v4 = a1[1];

  a2[1] = v4;
  a2[2] = a1[2];
  v6 = a1[3];

  result = a2;
  a2[3] = v6;
  return result;
}

uint64_t BulletPointRow.body.getter@<X0>(uint64_t a1@<X8>)
{
  v13 = 0u;
  v14 = 0u;
  memset(__b, 0, 0x69uLL);
  v4 = v1[1];
  v3 = v1[2];
  v5 = v1[3];
  *&v13 = *v1;
  *(&v13 + 1) = v4;
  *&v14 = v3;
  *(&v14 + 1) = v5;
  sub_1AC3B77C4();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB554DD0, "\\M");
  sub_1AC3880C0();
  sub_1AC3B7D44();

  memcpy(__dst, v11, sizeof(__dst));
  memcpy(v10, __dst, 0x69uLL);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB554DE0, &qword_1AC3BB608);
  sub_1AC388148();
  sub_1AC35745C(v10, v7, __b);
  sub_1AC3881D0(v10);
  memcpy(v16, __b, 0x69uLL);
  sub_1AC38825C(v16, v9);
  memcpy(v8, v16, 0x69uLL);
  sub_1AC35745C(v8, v7, a1);
  sub_1AC3881D0(v8);
  return sub_1AC3881D0(__b);
}

void *sub_1AC387AA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v23[1] = &v106;
  v61 = a5;
  v26 = a1;
  v27 = a2;
  v41 = a3;
  v42 = a4;
  v106 = 0u;
  v107 = 0u;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB554958, &unk_1AC3BAF30);
  v24 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v33 = v23 - v24;
  v25 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB554DF0, "\nM") - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v27);
  v28 = v23 - v25;
  *&v106 = v6;
  *(&v106 + 1) = v7;
  *&v107 = v8;
  *(&v107 + 1) = v9;

  v29 = sub_1AC3B7C84();
  sub_1AC3B7864();
  v31 = 0;
  v10 = *(*(sub_1AC3B7874() - 8) + 56);
  v53 = 0;
  v55 = 1;
  v10(v28);
  v30 = sub_1AC3B7CB4();
  sub_1AC388744(v28);

  v35 = v103;
  v103[0] = v30;
  sub_1AC3B7994();
  v32 = v11;
  v12 = sub_1AC3B7974();
  (*(*(v12 - 8) + 56))(v33, v55);
  v34 = sub_1AC3B79B4();
  sub_1AC367A4C(v33);
  sub_1AC3B7B84();

  sub_1AC367428(v35);
  v39 = v102;
  v102[0] = v103[1];
  v102[1] = v103[2];
  v102[2] = v103[3];
  v13 = sub_1AC3883A4();
  v38 = &v101;
  v101 = v13;
  v14 = sub_1AC3883BC();
  v37 = &v100;
  v100 = v14;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB554DF8, "\nM");
  v15 = sub_1AC3887EC();
  MEMORY[0x1AC5B1E90](v104, v38, v37, v36, MEMORY[0x1E69815C0], MEMORY[0x1E69815C0], v15, MEMORY[0x1E6981568]);
  sub_1AC367428(v37);
  sub_1AC367428(v38);
  sub_1AC361CB4(v39);
  v40 = v99;
  v99[0] = v104[0];
  v99[1] = v104[1];
  v99[2] = v104[2];
  v99[3] = v104[3];
  v99[4] = v104[4];
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB554E08, &unk_1AC3BBC50);
  v59 = sub_1AC388890();
  v66 = v105;
  sub_1AC35745C(v40, v57, v105);
  sub_1AC368278(v40);

  v43 = v93;
  v93[0] = v41;
  v93[1] = v42;
  sub_1AC35FEAC();
  v89 = sub_1AC3B7A64();
  v90 = v16;
  v91 = v17;
  v92 = v18;
  v45 = v89;
  v46 = v16;
  v47 = v17;
  v48 = v18;
  v44 = sub_1AC3B7964();
  v85 = v45;
  v86 = v46;
  v87 = v47 & 1 & v55;
  v88 = v48;
  v81 = sub_1AC3B7A44();
  v82 = v19;
  v83 = v20;
  v84 = v21;
  v49 = v81;
  v50 = v19;
  v51 = v20;
  v52 = v21;

  sub_1AC364A88(v45, v46, v47 & 1);

  v54 = v78;
  v78[0] = v49;
  v78[1] = v50;
  v79 = v51 & 1 & v55;
  v80 = v52;
  sub_1AC3B7B74();
  sub_1AC367A04(v54);
  v56 = v73;
  v73[0] = v93[2];
  v73[1] = v93[3];
  v74 = v94 & 1 & v55;
  v75 = v95;
  v76 = v96;
  v77 = v97;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB555020, &unk_1AC3BB830);
  v60 = sub_1AC3889C0();
  v65 = v98;
  sub_1AC35745C(v56, v58, v98);
  sub_1AC388AEC(v56);
  v64 = v71;
  sub_1AC388B40(v66, v71);
  v62 = v72;
  v72[0] = v64;
  v63 = v70;
  sub_1AC388BEC(v65, v70);
  v72[1] = v63;
  v69[0] = v57;
  v69[1] = v58;
  v67 = v59;
  v68 = v60;
  sub_1AC394250(v62, 2uLL, v69, v61);
  sub_1AC388AEC(v63);
  sub_1AC368278(v64);
  sub_1AC388AEC(v65);
  result = v66;
  sub_1AC368278(v66);
  return result;
}

unint64_t sub_1AC3880C0()
{
  v2 = qword_1EB554DD8;
  if (!qword_1EB554DD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB554DD0, "\\M");
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB554DD8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC388148()
{
  v2 = qword_1EB554DE8;
  if (!qword_1EB554DE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB554DE0, &qword_1AC3BB608);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB554DE8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC3881D0(uint64_t a1)
{

  sub_1AC364A88(*(a1 + 64), *(a1 + 72), *(a1 + 80) & 1);

  return a1;
}

uint64_t sub_1AC38825C(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v3 = *(a1 + 24);

  *(a2 + 24) = v3;
  v4 = *(a1 + 32);

  *(a2 + 32) = v4;
  v5 = *(a1 + 40);

  *(a2 + 40) = v5;
  v6 = *(a1 + 48);

  *(a2 + 48) = v6;
  v7 = *(a1 + 56);

  *(a2 + 56) = v7;
  v8 = *(a1 + 64);
  v9 = *(a1 + 72);
  v10 = *(a1 + 80);
  sub_1AC367800(v8, v9, v10 & 1);
  *(a2 + 64) = v8;
  *(a2 + 72) = v9;
  *(a2 + 80) = v10 & 1;
  v11 = *(a1 + 88);

  *(a2 + 88) = v11;
  v13 = *(a1 + 96);

  result = a2;
  *(a2 + 96) = v13;
  *(a2 + 104) = *(a1 + 104);
  return result;
}

uint64_t sub_1AC388420(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFF && *(a1 + 32))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (*(a1 + 8) < 0x100000000uLL)
      {
        v3 = *(a1 + 8);
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1AC388560(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 - 1;
    }
  }

  return result;
}

uint64_t sub_1AC388744(uint64_t a1)
{
  v3 = sub_1AC3B7874();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

unint64_t sub_1AC3887EC()
{
  v2 = qword_1EB554E00;
  if (!qword_1EB554E00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB554DF8, "\nM");
    sub_1AC367AF4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB554E00);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC388890()
{
  v2 = qword_1EB554E10;
  if (!qword_1EB554E10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB554E08, &unk_1AC3BBC50);
    sub_1AC3887EC();
    sub_1AC388938();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB554E10);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC388938()
{
  v2 = qword_1EB554E18;
  if (!qword_1EB554E18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB554E20, &unk_1AC3BB720);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB554E18);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC3889C0()
{
  v2 = qword_1EB554E28;
  if (!qword_1EB554E28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB555020, &unk_1AC3BB830);
    sub_1AC388A64();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB554E28);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC388A64()
{
  v2 = qword_1EB555030;
  if (!qword_1EB555030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB554E30, qword_1AC3BB730);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB555030);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC388AEC(uint64_t a1)
{
  sub_1AC364A88(*a1, *(a1 + 8), *(a1 + 16) & 1);

  return a1;
}

void *sub_1AC388B40(void *a1, void *a2)
{
  v3 = *a1;

  *a2 = v3;
  v4 = a1[1];

  a2[1] = v4;
  v5 = a1[2];

  a2[2] = v5;
  v7 = a1[3];

  a2[3] = v7;
  v9 = a1[4];

  result = a2;
  a2[4] = v9;
  return result;
}

uint64_t sub_1AC388BEC(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  sub_1AC367800(*a1, v4, v5 & 1);
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  v6 = *(a1 + 24);

  *(a2 + 24) = v6;
  v8 = *(a1 + 32);

  result = a2;
  *(a2 + 32) = v8;
  *(a2 + 40) = *(a1 + 40);
  return result;
}

uint64_t sub_1AC388CDC()
{
  v2 = *(v0 + OBJC_IVAR____TtC20HeadphoneCommonUIKit20HPCUIMovieLoopPlayer_player);
  MEMORY[0x1E69E5928](v2);
  return v2;
}

uint64_t sub_1AC388D24@<X0>(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR____TtC20HeadphoneCommonUIKit20HPCUIMovieLoopPlayer_url;
  v2 = sub_1AC3B7204();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

double sub_1AC388D98@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *a1;
  MEMORY[0x1E69E5928](*a1);
  *a2 = sub_1AC388E98();
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *&result = MEMORY[0x1E69E5920](v6).n128_u64[0];
  return result;
}

double sub_1AC388E0C(double *a1, void *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v3 = *a2;
  MEMORY[0x1E69E5928](*a2);
  sub_1AC388F20(v4, v5, v6, v7);
  *&result = MEMORY[0x1E69E5920](v3).n128_u64[0];
  return result;
}

double sub_1AC388E98()
{
  v2 = (v0 + OBJC_IVAR____TtC20HeadphoneCommonUIKit20HPCUIMovieLoopPlayer_desiredBounds);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t sub_1AC388F20(double a1, double a2, double a3, double a4)
{
  v9 = (v4 + OBJC_IVAR____TtC20HeadphoneCommonUIKit20HPCUIMovieLoopPlayer_desiredBounds);
  swift_beginAccess();
  *v9 = a1;
  v9[1] = a2;
  v9[2] = a3;
  v9[3] = a4;
  return swift_endAccess();
}

double sub_1AC389030@<D0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x1E69E5928](*a1);
  *a2 = sub_1AC389128();
  *&result = MEMORY[0x1E69E5920](v3).n128_u64[0];
  return result;
}

double sub_1AC38909C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  MEMORY[0x1E69E5928](*a1);
  v5 = *a2;
  MEMORY[0x1E69E5928](*a2);
  sub_1AC389198(v3);
  *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  return result;
}

uint64_t sub_1AC389128()
{
  v2 = (v0 + OBJC_IVAR____TtC20HeadphoneCommonUIKit20HPCUIMovieLoopPlayer_playerLooper);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x1E69E5928](*v2);
  swift_endAccess();
  return v3;
}

double sub_1AC389198(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v4 = (v1 + OBJC_IVAR____TtC20HeadphoneCommonUIKit20HPCUIMovieLoopPlayer_playerLooper);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

id sub_1AC3892A0(uint64_t a1, uint64_t a2)
{
  sub_1AC38A8B8(0, a2);
  v3 = sub_1AC389320(0);
  MEMORY[0x1E69E5928](v3);
  [v3 setOpacity_];
  MEMORY[0x1E69E5920](v3);
  return v3;
}

id sub_1AC389320(uint64_t a1)
{
  v3 = [swift_getObjCClassFromMetadata() playerLayerWithPlayer_];
  MEMORY[0x1E69E5920](a1);
  return v3;
}

uint64_t sub_1AC38937C()
{
  v2 = (v0 + OBJC_IVAR____TtC20HeadphoneCommonUIKit20HPCUIMovieLoopPlayer_playerLayer);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x1E69E5928](*v2);
  swift_endAccess();
  return v3;
}

double sub_1AC3893EC(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v4 = (v1 + OBJC_IVAR____TtC20HeadphoneCommonUIKit20HPCUIMovieLoopPlayer_playerLayer);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

id sub_1AC3894F4(uint64_t a1, uint64_t a2)
{
  sub_1AC38B310(0, a2);
  v3 = sub_1AC3692C0();
  [v3 setMuted_];
  MEMORY[0x1E69E5920](v3);
  [v3 setAllowsExternalPlayback_];
  MEMORY[0x1E69E5920](v3);
  return v3;
}

double sub_1AC3895A8@<D0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x1E69E5928](*a1);
  *a2 = sub_1AC3896A0();
  *&result = MEMORY[0x1E69E5920](v3).n128_u64[0];
  return result;
}

double sub_1AC389614(uint64_t *a1, void *a2)
{
  v3 = *a1;
  MEMORY[0x1E69E5928](*a1);
  v5 = *a2;
  MEMORY[0x1E69E5928](*a2);
  sub_1AC389710(v3);
  *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  return result;
}

uint64_t sub_1AC3896A0()
{
  v2 = (v0 + OBJC_IVAR____TtC20HeadphoneCommonUIKit20HPCUIMovieLoopPlayer_videoPlayer);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x1E69E5928](*v2);
  swift_endAccess();
  return v3;
}

double sub_1AC389710(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v4 = (v1 + OBJC_IVAR____TtC20HeadphoneCommonUIKit20HPCUIMovieLoopPlayer_videoPlayer);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

char *HPCUIMovieLoopPlayer.init(frame:urlForResource:bounds:)(uint64_t a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v79 = a2;
  v80 = a3;
  v81 = a4;
  v82 = a5;
  v91 = a1;
  v99 = a6;
  v100 = a7;
  v101 = a8;
  v102 = a9;
  v131 = *MEMORY[0x1E69E9840];
  v123 = 0;
  v121 = 0u;
  v122 = 0u;
  v120 = 0;
  v118 = 0u;
  v119 = 0u;
  v116 = 0;
  v84 = 0;
  v98 = sub_1AC3B7204();
  v94 = *(v98 - 8);
  v95 = v98 - 8;
  v83 = (*(v94 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v97 = &v49 - v83;
  *&v121 = MEMORY[0x1EEE9AC00](0);
  *(&v121 + 1) = v10;
  *&v122 = v11;
  *(&v122 + 1) = v12;
  v120 = v13;
  *&v118 = v14;
  *(&v118 + 1) = v15;
  *&v119 = v16;
  *(&v119 + 1) = v17;
  v123 = v9;
  v86 = v9;
  v85 = OBJC_IVAR____TtC20HeadphoneCommonUIKit20HPCUIMovieLoopPlayer_player;
  sub_1AC38A080(v18, &v49 - v83);
  v19 = sub_1AC388C9C(v84);
  *(v86 + v85) = v19;
  v88 = v123;
  v87 = OBJC_IVAR____TtC20HeadphoneCommonUIKit20HPCUIMovieLoopPlayer_playerLayer;
  v21 = sub_1AC3892A0(v19, v20);
  *(v88 + v87) = v21;
  v90 = v123;
  v89 = OBJC_IVAR____TtC20HeadphoneCommonUIKit20HPCUIMovieLoopPlayer_videoPlayer;
  v23 = sub_1AC3894F4(v21, v22);
  v24 = v91;
  v25 = v94;
  v26 = v98;
  v27 = v23;
  v28 = v97;
  *(v90 + v89) = v27;
  v96 = v123;
  v92 = *(v25 + 16);
  v93 = v25 + 16;
  v92(v28, v24, v26);
  (*(v94 + 32))(v96 + OBJC_IVAR____TtC20HeadphoneCommonUIKit20HPCUIMovieLoopPlayer_url, v97, v98);
  v29 = v100;
  v30 = v101;
  v31 = v102;
  v32 = (v123 + OBJC_IVAR____TtC20HeadphoneCommonUIKit20HPCUIMovieLoopPlayer_desiredBounds);
  *v32 = v99;
  v32[1] = v29;
  v32[2] = v30;
  v32[3] = v31;
  v130 = 0;
  v105 = [objc_opt_self() sharedInstance];
  v104 = *MEMORY[0x1E6958038];
  *&v33 = MEMORY[0x1E69E5928](v104).n128_u64[0];
  v117 = v130;
  v106 = [v105 setCategory:v104 withOptions:1 error:{&v117, v33}];
  v103 = v117;
  MEMORY[0x1E69E5928](v117);
  v34 = v130;
  v130 = v103;
  MEMORY[0x1E69E5920](v34);
  MEMORY[0x1E69E5920](v104);
  MEMORY[0x1E69E5920](v105);
  if (v106)
  {
    v78 = 0;
  }

  else
  {
    v50 = v130;
    v51 = sub_1AC3B71D4();
    MEMORY[0x1E69E5920](v50);
    swift_willThrow();

    v78 = 1;
  }

  v116 = v78;
  v124 = v78 & 1;
  v77 = (v78 & 1) == 0;
  v70 = 0x1EB554000uLL;
  v52 = (v123 + OBJC_IVAR____TtC20HeadphoneCommonUIKit20HPCUIMovieLoopPlayer_playerLayer);
  v53 = &v129;
  v71 = 32;
  v72 = 0;
  swift_beginAccess();
  v57 = *v52;
  MEMORY[0x1E69E5928](v57);
  swift_endAccess();
  v65 = &qword_1EB555000;
  v54 = (v123 + OBJC_IVAR____TtC20HeadphoneCommonUIKit20HPCUIMovieLoopPlayer_videoPlayer);
  v55 = &v128;
  swift_beginAccess();
  v56 = *v54;
  MEMORY[0x1E69E5928](v56);
  swift_endAccess();
  [v57 setPlayer_];
  MEMORY[0x1E69E5920](v56);
  MEMORY[0x1E69E5920](v57);
  v62 = v123;
  v63 = 0;
  v60 = sub_1AC38A0E4(0, v35);
  v58 = (v123 + v65[260]);
  v59 = &v127;
  swift_beginAccess();
  v61 = *v58;
  MEMORY[0x1E69E5928](v61);
  swift_endAccess();
  sub_1AC38A148(v63, v36);
  v92(v97, v123 + OBJC_IVAR____TtC20HeadphoneCommonUIKit20HPCUIMovieLoopPlayer_url, v98);
  v37 = sub_1AC38A1AC(v97);
  v38 = sub_1AC38A1EC(v61, v37);
  v39 = v63;
  *(v62 + OBJC_IVAR____TtC20HeadphoneCommonUIKit20HPCUIMovieLoopPlayer_playerLooper) = v38;
  v64 = v123;
  v40 = type metadata accessor for HPCUIMovieLoopPlayer(v39);
  v115.receiver = v64;
  v115.super_class = v40;
  v107 = v79;
  v108 = v80;
  v109 = v81;
  v110 = v82;
  v69 = objc_msgSendSuper2(&v115, sel_initWithFrame_, v79, v80, v81, v82);
  MEMORY[0x1E69E5928](v69);
  v123 = v69;
  v66 = &v69[v65[260]];
  v67 = &v126;
  swift_beginAccess();
  v68 = *v66;
  MEMORY[0x1E69E5928](v68);
  swift_endAccess();
  v41 = *(MEMORY[0x1E6960CC0] + 8);
  v42 = *(MEMORY[0x1E6960CC0] + 12);
  v43 = *(MEMORY[0x1E6960CC0] + 16);
  v111 = *MEMORY[0x1E6960CC0];
  v112 = v41;
  v113 = v42;
  v114 = v43;
  [v68 seekToTime_];
  MEMORY[0x1E69E5920](v68);
  *&v44 = MEMORY[0x1E69E5928](v69).n128_u64[0];
  v76 = [v69 layer];
  MEMORY[0x1E69E5920](v69);
  v73 = (v123 + *(v70 + 3656));
  v74 = &v125;
  swift_beginAccess();
  v75 = *v73;
  MEMORY[0x1E69E5928](v75);
  swift_endAccess();
  [v76 addSublayer_];
  MEMORY[0x1E69E5920](v75);
  v45 = MEMORY[0x1E69E5920](v76);
  v46 = (*((*v123 & *MEMORY[0x1E69E7D40]) + 0xE8))(v45);
  sub_1AC38A7A4(v46, v47);
  (*(v94 + 8))(v91, v98);
  MEMORY[0x1E69E5920](v123);
  return v69;
}

unint64_t sub_1AC38A080(uint64_t a1, uint64_t a2)
{
  v4 = qword_1EB554E50;
  if (!qword_1EB554E50)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB554E50);
    return ObjCClassMetadata;
  }

  return v4;
}

unint64_t sub_1AC38A0E4(uint64_t a1, uint64_t a2)
{
  v4 = qword_1EB554E58;
  if (!qword_1EB554E58)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB554E58);
    return ObjCClassMetadata;
  }

  return v4;
}

unint64_t sub_1AC38A148(uint64_t a1, uint64_t a2)
{
  v4 = qword_1EB554E60;
  if (!qword_1EB554E60)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB554E60);
    return ObjCClassMetadata;
  }

  return v4;
}

id sub_1AC38A1EC(uint64_t a1, uint64_t a2)
{
  v5 = [swift_getObjCClassFromMetadata() playerLooperWithPlayer:a1 templateItem:a2];
  MEMORY[0x1E69E5920](a2);
  MEMORY[0x1E69E5920](a1);
  return v5;
}

uint64_t type metadata accessor for HPCUIMovieLoopPlayer(uint64_t a1)
{
  v2 = qword_1EB554E70;
  if (!qword_1EB554E70)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

double sub_1AC38A354()
{
  v12 = v0;
  v6 = sub_1AC3896A0();
  v1 = *(MEMORY[0x1E6960CC0] + 8);
  v2 = *(MEMORY[0x1E6960CC0] + 12);
  v3 = *(MEMORY[0x1E6960CC0] + 16);
  v8 = *MEMORY[0x1E6960CC0];
  v9 = v1;
  v10 = v2;
  v11 = v3;
  [v6 seekToTime_];
  MEMORY[0x1E69E5920](v6);
  v7 = sub_1AC3896A0();
  LODWORD(v4) = 1.0;
  [v7 playImmediatelyAtRate_];
  *&result = MEMORY[0x1E69E5920](v7).n128_u64[0];
  return result;
}

double sub_1AC38A404()
{
  v18 = v0;
  MEMORY[0x1E69E5928](v0);
  v17.receiver = v0;
  v17.super_class = type metadata accessor for HPCUIMovieLoopPlayer(0);
  objc_msgSendSuper2(&v17, sel_layoutSubviews);
  MEMORY[0x1E69E5920](v0);
  v7 = sub_1AC38937C();
  v16 = sub_1AC388E98();
  [v7 setBounds_];
  MEMORY[0x1E69E5920](v7);
  v8 = [v10 0x1FADAE878];
  [v8 setMasksToBounds_];
  MEMORY[0x1E69E5920](v8);
  v9 = [v10 0x1FADAE878];
  (MEMORY[0x1E69E5920])();
  [v9 setCornerRadius_];
  MEMORY[0x1E69E5920](v9);
  v13 = sub_1AC38937C();
  v11 = [v10 0x1FADAE878];
  [v11 0x1FAA53EF8];
  MEMORY[0x1E69E5920](v11);
  v12 = [v10 0x1FADAE878];
  [v12 0x1FAA53EF8];
  MEMORY[0x1E69E5920](v12);
  CGPointMake();
  [v13 setPosition_];
  MEMORY[0x1E69E5920](v13);
  v15 = sub_1AC38937C();
  v14 = *MEMORY[0x1E69874F0];
  [v15 setVideoGravity_];
  MEMORY[0x1E69E5920](v14);
  *&result = MEMORY[0x1E69E5920](v15).n128_u64[0];
  return result;
}

void sub_1AC38A7A4(uint64_t a1, uint64_t a2)
{
  v13 = v2;
  v4 = objc_opt_self();
  MEMORY[0x1E69E5928](v2);
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  v11 = sub_1AC38A9AC;
  v12 = v3;
  aBlock = MEMORY[0x1E69E9820];
  v7 = 1107296256;
  v8 = 0;
  v9 = sub_1AC38A9B4;
  v10 = &block_descriptor_1;
  v5 = _Block_copy(&aBlock);

  [v4 animateWithDuration:v5 animations:0.15];
  _Block_release(v5);
}

unint64_t sub_1AC38A8B8(uint64_t a1, uint64_t a2)
{
  v4 = qword_1EB554E68;
  if (!qword_1EB554E68)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB554E68);
    return ObjCClassMetadata;
  }

  return v4;
}

double sub_1AC38A950()
{
  v2 = sub_1AC38937C();
  LODWORD(v0) = 1.0;
  [v2 setOpacity_];
  *&result = MEMORY[0x1E69E5920](v2).n128_u64[0];
  return result;
}

uint64_t sub_1AC38A9B4(uint64_t a1)
{
  v3 = *(a1 + 32);

  v3(v1);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

id HPCUIMovieLoopPlayer.__allocating_init(coder:)(uint64_t a1)
{
  v4 = [objc_allocWithZone(v1) initWithCoder_];
  MEMORY[0x1E69E5920](a1);
  return v4;
}

void HPCUIMovieLoopPlayer.init(coder:)(uint64_t a1, uint64_t a2)
{
  v6 = OBJC_IVAR____TtC20HeadphoneCommonUIKit20HPCUIMovieLoopPlayer_player;
  sub_1AC38A080(0, a2);
  v2 = sub_1AC388C9C(0);
  *v6 = v2;
  v7 = OBJC_IVAR____TtC20HeadphoneCommonUIKit20HPCUIMovieLoopPlayer_playerLayer;
  v4 = sub_1AC3892A0(v2, v3);
  *v7 = v4;
  v8 = OBJC_IVAR____TtC20HeadphoneCommonUIKit20HPCUIMovieLoopPlayer_videoPlayer;
  *v8 = sub_1AC3894F4(v4, v5);
  sub_1AC3B7F54();
  sub_1AC3B84A4();
  __break(1u);
}

id HPCUIMovieLoopPlayer.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HPCUIMovieLoopPlayer(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1AC38AE88(uint64_t a1)
{
  v4 = [v1 initWithPlayerItem_];
  MEMORY[0x1E69E5920](a1);
  return v4;
}

id sub_1AC38AED8(uint64_t a1)
{
  v4 = sub_1AC3B71E4();
  v6 = [v1 initWithURL_];
  MEMORY[0x1E69E5920](v4);
  v2 = sub_1AC3B7204();
  (*(*(v2 - 8) + 8))(a1);
  return v6;
}

uint64_t sub_1AC38AF98(uint64_t a1)
{
  updated = sub_1AC3B7204();
  if (v1 <= 0x3F)
  {
    updated = swift_updateClassMetadata2();
    if (!updated)
    {
      return 0;
    }
  }

  return updated;
}

unint64_t sub_1AC38B310(uint64_t a1, uint64_t a2)
{
  v4 = qword_1EB554E80;
  if (!qword_1EB554E80)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB554E80);
    return ObjCClassMetadata;
  }

  return v4;
}

uint64_t sub_1AC38B374()
{
  v1 = sub_1AC3B7524();
  __swift_allocate_value_buffer(v1, qword_1EB555828);
  __swift_project_value_buffer(v1, qword_1EB555828);
  sub_1AC3B7F54();
  sub_1AC3B7F54();
  return sub_1AC3B7514();
}

uint64_t sub_1AC38B418()
{
  if (qword_1EB554338 != -1)
  {
    swift_once();
  }

  v0 = sub_1AC3B7524();
  return __swift_project_value_buffer(v0, qword_1EB555828);
}

uint64_t sub_1AC38B484@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AC38B418();
  v1 = sub_1AC3B7524();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1AC38B4E8()
{
  v2 = *(v0 + OBJC_IVAR____TtC20HeadphoneCommonUIKitP33_E6FC377A5713DD217D758A59A06D181F21MultiLinkableTextView_specifier);
  MEMORY[0x1E69E5928](v2);
  return v2;
}

char *sub_1AC38B56C(uint64_t a1)
{
  v11 = 0;
  v10 = a1;
  v1 = OBJC_IVAR____TtC20HeadphoneCommonUIKitP33_E6FC377A5713DD217D758A59A06D181F21MultiLinkableTextView_linkRange;
  *OBJC_IVAR____TtC20HeadphoneCommonUIKitP33_E6FC377A5713DD217D758A59A06D181F21MultiLinkableTextView_linkRange = 0;
  *(v1 + 8) = 0;
  MEMORY[0x1E69E5928](a1);
  *&v11[OBJC_IVAR____TtC20HeadphoneCommonUIKitP33_E6FC377A5713DD217D758A59A06D181F21MultiLinkableTextView_specifier] = a1;
  v9.receiver = v11;
  v9.super_class = type metadata accessor for MultiLinkableTextView(0, v2);
  v8 = objc_msgSendSuper2(&v9, sel_initWithFrame_textContainer_, 0, 0.0, 0.0, 0.0, 0.0);
  MEMORY[0x1E69E5928](v8);
  v11 = v8;
  MEMORY[0x1E69E5928](v8);
  [v8 setDelegate_];
  swift_unknownObjectRelease();
  MEMORY[0x1E69E5920](v8);
  [v8 setTranslatesAutoresizingMaskIntoConstraints_];
  MEMORY[0x1E69E5920](v8);
  MEMORY[0x1E69E5928](v8);
  v5 = [objc_opt_self() clearColor];
  [v8 setBackgroundColor_];
  MEMORY[0x1E69E5920](v5);
  MEMORY[0x1E69E5920](v8);
  [v8 setShowsVerticalScrollIndicator_];
  MEMORY[0x1E69E5920](v8);
  [v8 setSelectable_];
  MEMORY[0x1E69E5920](v8);
  [v8 setEditable_];
  MEMORY[0x1E69E5920](v8);
  v6 = [v8 textContainer];
  MEMORY[0x1E69E5920](v8);
  [v6 setLineFragmentPadding_];
  MEMORY[0x1E69E5920](v6);
  MEMORY[0x1E69E5928](v8);
  [v8 setTextContainerInset_];
  MEMORY[0x1E69E5920](v8);
  [v8 setScrollEnabled_];
  v3 = MEMORY[0x1E69E5920](v8);
  v3.n128_u32[0] = 1148846080;
  [v11 setContentCompressionResistancePriority:1 forAxis:v3.n128_f64[0]];
  [v8 _setInteractiveTextSelectionDisabled_];
  MEMORY[0x1E69E5920](v8);
  MEMORY[0x1E69E5928](a1);
  sub_1AC38D358();
  MEMORY[0x1E69E5920](a1);
  MEMORY[0x1E69E5920](a1);
  MEMORY[0x1E69E5920](v11);
  return v8;
}

double sub_1AC38B9D0()
{
  v57 = 0;
  v61 = v0;
  v54 = [v0 text];
  if (v54)
  {
    v50 = sub_1AC3B7EF4();
    v51 = v1;
    MEMORY[0x1E69E5920](v54);
    v52 = v50;
    v53 = v51;
  }

  else
  {
    v52 = 0;
    v53 = 0;
  }

  MEMORY[0x1E69E5920](v0);
  v60[0] = v52;
  v60[1] = v53;
  sub_1AC360750(v60);
  MEMORY[0x1E69E5928](v0);
  if (v53)
  {
    v47 = &v0[OBJC_IVAR____TtC20HeadphoneCommonUIKitP33_E6FC377A5713DD217D758A59A06D181F21MultiLinkableTextView_linkRange];
    swift_beginAccess();
    v48 = *(v47 + 1);
    swift_endAccess();
    v49 = v48 != 0;
  }

  else
  {
    v49 = 0;
  }

  *&result = MEMORY[0x1E69E5920](v0).n128_u64[0];
  if (v49)
  {
    v45 = [objc_opt_self() appearance];
    v46 = [v45 altTextColor];
    MEMORY[0x1E69E5920](v45);
    v58 = v46;
    if (v46)
    {
      v59 = v58;
    }

    else
    {
      v59 = PreferencesTableViewFooterColor();
    }

    v42 = v59;
    v57 = v59;
    v43 = [objc_opt_self() appearance];
    v44 = [v43 footerHyperlinkColor];
    MEMORY[0x1E69E5920](v43);
    v55 = v44;
    if (v44)
    {
      v56 = v55;
    }

    else
    {
      v56 = [objc_opt_self() systemBlueColor];
    }

    v41 = v56;
    sub_1AC38C4EC();
    v15 = sub_1AC3B7EE4();
    v16 = [v15 length];
    MEMORY[0x1E69E5920](v15);
    v63 = 0;
    v62 = v16;
    v64 = 0;
    v65 = v16;

    sub_1AC37A108(0, v3);
    v4 = sub_1AC38C4EC();
    v40 = sub_1AC379B6C(v4, v5);
    MEMORY[0x1E69E5928](v40);
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB554B00, qword_1AC3BB048);
    v20 = sub_1AC3B8574();
    v18 = v6;
    v33 = MEMORY[0x1E69DB650];
    sub_1AC37A840(MEMORY[0x1E69DB650], v6);
    v17 = [v0 0x1FBA859C1];
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB554F20, &qword_1AC3BB7B0);
    v18[4] = v34;
    v18[1] = v17;
    v23 = MEMORY[0x1E69DB648];
    sub_1AC37A840(MEMORY[0x1E69DB648], v18 + 5);
    v19 = PreferencesTableViewFooterFont();
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB554F28, &qword_1AC3BB7B8);
    v18[9] = v24;
    v18[6] = v19;
    sub_1AC36EE1C(v20, v38);
    type metadata accessor for Key(0);
    sub_1AC35D214();
    sub_1AC3B7E74();
    v21 = sub_1AC3B7E64();

    [v40 0x1FAB01985];
    MEMORY[0x1E69E5920](v21);
    v28 = sub_1AC3B8574();
    v27 = v7;
    sub_1AC37A840(v33, v7);
    v22 = [v0 0x1FBA859C1];
    MEMORY[0x1E69E5920](v41);
    v27[4] = v34;
    v27[1] = v22;
    sub_1AC37A840(v23, v27 + 5);
    v8 = PreferencesTableViewFooterFont();
    v27[9] = v24;
    v27[6] = v8;
    sub_1AC37A840(MEMORY[0x1E69DB670], v27 + 10);
    sub_1AC38D458(0, v9);
    v10 = sub_1AC3B7F54();
    v25 = sub_1AC38C2F0(v10, v11);
    v27[14] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB554F40, &qword_1AC3BB7C0);
    v27[11] = v25;
    sub_1AC37A840(MEMORY[0x1E69DB758], v27 + 15);
    v26 = sub_1AC386ADC(0, v12);
    v13 = sub_1AC3B82A4();
    v27[19] = v26;
    v27[16] = v13;
    sub_1AC36EE1C(v28, v38);
    sub_1AC3B7E74();
    v32 = sub_1AC3B7E64();

    v29 = &v0[OBJC_IVAR____TtC20HeadphoneCommonUIKitP33_E6FC377A5713DD217D758A59A06D181F21MultiLinkableTextView_linkRange];
    swift_beginAccess();
    v30 = *v29;
    v31 = *(v29 + 1);
    swift_endAccess();
    [v40 0x1FAB01985];
    MEMORY[0x1E69E5920](v32);
    MEMORY[0x1E69E5928](v0);
    v37 = sub_1AC3B8574();
    v35 = v14;
    sub_1AC37A840(v33, v14);
    v36 = [v0 0x1FBA859C1];
    MEMORY[0x1E69E5920](v41);
    v35[4] = v34;
    v35[1] = v36;
    sub_1AC36EE1C(v37, v38);
    sub_1AC3B7E74();
    v39 = sub_1AC3B7E64();

    [v0 setLinkTextAttributes_];
    MEMORY[0x1E69E5920](v39);
    MEMORY[0x1E69E5920](v0);
    [v0 setAttributedText_];
    MEMORY[0x1E69E5920](v40);
    MEMORY[0x1E69E5920](v0);
    MEMORY[0x1E69E5920](v40);
    MEMORY[0x1E69E5920](v41);
    *&result = MEMORY[0x1E69E5920](v42).n128_u64[0];
  }

  return result;
}

uint64_t sub_1AC38C338()
{
  v2 = (v0 + OBJC_IVAR____TtC20HeadphoneCommonUIKitP33_E6FC377A5713DD217D758A59A06D181F21MultiLinkableTextView_linkRange);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

double sub_1AC38C3A8(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC20HeadphoneCommonUIKitP33_E6FC377A5713DD217D758A59A06D181F21MultiLinkableTextView_linkRange);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  swift_endAccess();
  return sub_1AC38B9D0();
}

void (*sub_1AC38C42C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1AC38C49C;
}

void sub_1AC38C49C(uint64_t a1, char a2)
{
  if (a2)
  {
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    sub_1AC38B9D0();
  }
}

uint64_t sub_1AC38C4EC()
{
  v11 = v0;
  v4 = *(v0 + OBJC_IVAR____TtC20HeadphoneCommonUIKitP33_E6FC377A5713DD217D758A59A06D181F21MultiLinkableTextView_specifier);
  MEMORY[0x1E69E5928](v4);
  v2 = *MEMORY[0x1E69C58F8];
  MEMORY[0x1E69E5928](*MEMORY[0x1E69C58F8]);
  sub_1AC3B7EF4();
  v3 = sub_1AC3B7EE4();

  v5 = [v4 propertyForKey_];
  MEMORY[0x1E69E5920](v3);
  MEMORY[0x1E69E5920](v4);
  if (v5)
  {
    sub_1AC3B8384();
    sub_1AC377D20(v6, v8);
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v9 = 0;
  }

  if (!v9)
  {
    sub_1AC3B8494();
    __break(1u);
  }

  sub_1AC377D20(v8, v10);
  swift_dynamicCast();
  return v7;
}

uint64_t sub_1AC38C6DC()
{
  v17 = v0;
  v7 = *(v0 + OBJC_IVAR____TtC20HeadphoneCommonUIKitP33_E6FC377A5713DD217D758A59A06D181F21MultiLinkableTextView_specifier);
  MEMORY[0x1E69E5928](v7);
  v5 = *MEMORY[0x1E69C58F0];
  MEMORY[0x1E69E5928](*MEMORY[0x1E69C58F0]);
  sub_1AC3B7EF4();
  v6 = sub_1AC3B7EE4();

  v8 = [v7 propertyForKey_];
  MEMORY[0x1E69E5920](v6);
  MEMORY[0x1E69E5920](v7);
  if (v8)
  {
    sub_1AC3B8384();
    sub_1AC377D20(v9, v14);
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v14, 0, sizeof(v14));
    v15 = 0;
  }

  if (!v15)
  {
    sub_1AC3B8494();
    __break(1u);
  }

  sub_1AC377D20(v14, v16);
  sub_1AC38D4BC(0, v1);
  swift_dynamicCast();
  v4 = v13;
  if ([v13 nonretainedObjectValue])
  {
    sub_1AC3B8384();
    sub_1AC377D20(v10, v12);
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v12, 0, sizeof(v12));
  }

  MEMORY[0x1E69E5920](v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB554F58, &qword_1AC3BB7C8);
  if (swift_dynamicCast())
  {
    return v11;
  }

  else
  {
    return 0;
  }
}

uint64_t (*sub_1AC38CABC())(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = v0;
  v7 = *(v0 + OBJC_IVAR____TtC20HeadphoneCommonUIKitP33_E6FC377A5713DD217D758A59A06D181F21MultiLinkableTextView_specifier);
  MEMORY[0x1E69E5928](v7);
  v5 = *MEMORY[0x1E69C58E0];
  MEMORY[0x1E69E5928](*MEMORY[0x1E69C58E0]);
  sub_1AC3B7EF4();
  v6 = sub_1AC3B7EE4();

  v8 = [v7 propertyForKey_];
  MEMORY[0x1E69E5920](v6);
  MEMORY[0x1E69E5920](v7);
  if (v8)
  {
    sub_1AC3B8384();
    sub_1AC377D20(v9, v12);
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v12, 0, sizeof(v12));
    v13 = 0;
  }

  if (!v13)
  {
    sub_1AC3B8494();
    __break(1u);
  }

  sub_1AC377D20(v12, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB554F60, &unk_1AC3BB7D0);
  swift_dynamicCast();
  v3 = v10;
  v4 = v11;
  v1 = swift_allocObject();
  result = sub_1AC38D584;
  *(v1 + 16) = v3;
  *(v1 + 24) = v4;
  return result;
}

uint64_t sub_1AC38CD10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a1;
  v17 = a2;
  v16 = a3;
  v19 = a4;
  v20 = a5;
  v9 = a4;
  v10 = a5;
  v15 = sub_1AC3B7204();
  v12 = *(v15 - 8);
  v13 = v15 - 8;
  v8 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v14 = &v7 - v8;
  v11 = *(v5 + 32);
  v18 = *(v5 + 40);

  MEMORY[0x1E69E5928](v17);
  MEMORY[0x1E69E5928](v16);
  sub_1AC3B71F4();
  v11(v17, v14, v9, v10);
  (*(v12 + 8))(v14, v15);
  MEMORY[0x1E69E5920](v16);
  MEMORY[0x1E69E5920](v17);
}

uint64_t sub_1AC38CE78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t *, uint64_t, void *))
{
  v7 = a1;
  v6[0] = a3;
  v6[1] = a4;
  return a5(&v7, a2, v6);
}

uint64_t sub_1AC38CEC4()
{
  v11 = v0;
  v4 = *(v0 + OBJC_IVAR____TtC20HeadphoneCommonUIKitP33_E6FC377A5713DD217D758A59A06D181F21MultiLinkableTextView_specifier);
  MEMORY[0x1E69E5928](v4);
  v2 = *MEMORY[0x1E69C58E8];
  MEMORY[0x1E69E5928](*MEMORY[0x1E69C58E8]);
  sub_1AC3B7EF4();
  v3 = sub_1AC3B7EE4();

  v5 = [v4 propertyForKey_];
  MEMORY[0x1E69E5920](v3);
  MEMORY[0x1E69E5920](v4);
  if (v5)
  {
    sub_1AC3B8384();
    sub_1AC377D20(v6, v8);
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v9 = 0;
  }

  if (!v9)
  {
    sub_1AC3B8494();
    __break(1u);
  }

  sub_1AC377D20(v8, v10);
  swift_dynamicCast();
  return v7;
}

uint64_t sub_1AC38D0B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = sub_1AC38CABC();
  if (v10)
  {
    v5 = v10;
  }

  else
  {
    sub_1AC3B8494();
    __break(1u);
  }

  v5(a1, a2, a3, a4);

  return 0;
}

double sub_1AC38D358()
{
  MEMORY[0x1E69E5928](v0);
  sub_1AC38C4EC();
  v3 = sub_1AC3B7EE4();

  [v4 setText_];
  MEMORY[0x1E69E5920](v3);
  (MEMORY[0x1E69E5920])();
  sub_1AC38CEC4();
  aString = sub_1AC3B7EE4();

  v1 = NSRangeFromString(aString);
  MEMORY[0x1E69E5920](aString);
  return sub_1AC38C3A8(v1.location, v1.length);
}

unint64_t sub_1AC38D458(uint64_t a1, uint64_t a2)
{
  v4 = qword_1EB554F38;
  if (!qword_1EB554F38)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB554F38);
    return ObjCClassMetadata;
  }

  return v4;
}

unint64_t sub_1AC38D4BC(uint64_t a1, uint64_t a2)
{
  v4 = qword_1EB554F50;
  if (!qword_1EB554F50)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB554F50);
    return ObjCClassMetadata;
  }

  return v4;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

void sub_1AC38D608()
{
  v0 = OBJC_IVAR____TtC20HeadphoneCommonUIKitP33_E6FC377A5713DD217D758A59A06D181F21MultiLinkableTextView_linkRange;
  *OBJC_IVAR____TtC20HeadphoneCommonUIKitP33_E6FC377A5713DD217D758A59A06D181F21MultiLinkableTextView_linkRange = 0;
  *(v0 + 8) = 0;
  sub_1AC3B7F54();
  sub_1AC3B84A4();
  __break(1u);
}

id sub_1AC38D80C(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  v4.receiver = v2;
  v4.super_class = type metadata accessor for MultiLinkableTextView(0, a2);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_1AC38D898()
{
  result = sub_1AC3B7F54();
  qword_1EB554E90 = result;
  qword_1EB554E98 = v1;
  return result;
}

uint64_t *sub_1AC38D8DC()
{
  if (qword_1EB554340 != -1)
  {
    swift_once();
  }

  return &qword_1EB554E90;
}

uint64_t static MultiLinkableFooterView.footerLinkStringsKey.getter()
{
  v1 = *sub_1AC38D8DC();

  return v1;
}

uint64_t sub_1AC38D9E8()
{
  result = sub_1AC3B7F54();
  qword_1EB554EA0 = result;
  qword_1EB554EA8 = v1;
  return result;
}

uint64_t *sub_1AC38DA2C()
{
  if (qword_1EB554348 != -1)
  {
    swift_once();
  }

  return &qword_1EB554EA0;
}

uint64_t static MultiLinkableFooterView.footerLinkTargetsKey.getter()
{
  v1 = *sub_1AC38DA2C();

  return v1;
}

uint64_t sub_1AC38DB38()
{
  result = sub_1AC3B7F54();
  qword_1EB554EB0 = result;
  qword_1EB554EB8 = v1;
  return result;
}

uint64_t *sub_1AC38DB7C()
{
  if (qword_1EB554350 != -1)
  {
    swift_once();
  }

  return &qword_1EB554EB0;
}

uint64_t static MultiLinkableFooterView.footerLinkActionsKey.getter()
{
  v1 = *sub_1AC38DB7C();

  return v1;
}

uint64_t sub_1AC38DC88()
{
  result = sub_1AC3B7F54();
  qword_1EB554EC0 = result;
  qword_1EB554EC8 = v1;
  return result;
}

uint64_t *sub_1AC38DCCC()
{
  if (qword_1EB554358 != -1)
  {
    swift_once();
  }

  return &qword_1EB554EC0;
}

uint64_t static MultiLinkableFooterView.footerLinkRangesKey.getter()
{
  v1 = *sub_1AC38DCCC();

  return v1;
}

uint64_t sub_1AC38DDD8()
{
  result = sub_1AC3B7F54();
  qword_1EB554ED0 = result;
  qword_1EB554ED8 = v1;
  return result;
}

uint64_t *sub_1AC38DE1C()
{
  if (qword_1EB554360 != -1)
  {
    swift_once();
  }

  return &qword_1EB554ED0;
}

uint64_t static MultiLinkableFooterView.footerLinkReuseIDKey.getter()
{
  v1 = *sub_1AC38DE1C();

  return v1;
}

uint64_t sub_1AC38DF28()
{
  v2 = *(v0 + OBJC_IVAR____TtC20HeadphoneCommonUIKit23MultiLinkableFooterView_backingStore);

  return v2;
}

uint64_t sub_1AC38DF68()
{
  v2 = (v0 + OBJC_IVAR____TtC20HeadphoneCommonUIKit23MultiLinkableFooterView_heightConstraints);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

double sub_1AC38DFD0(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR____TtC20HeadphoneCommonUIKit23MultiLinkableFooterView_heightConstraints);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();

  return result;
}

id sub_1AC38E0C0()
{
  v8 = (v0 + OBJC_IVAR____TtC20HeadphoneCommonUIKit23MultiLinkableFooterView____lazy_storage___container);
  swift_beginAccess();
  v9 = *v8;
  MEMORY[0x1E69E5928](*v8);
  swift_endAccess();
  if (v9)
  {
    return v9;
  }

  v5 = sub_1AC38E1CC(v7, v1);
  MEMORY[0x1E69E5928](v5);
  v4 = (v7 + OBJC_IVAR____TtC20HeadphoneCommonUIKit23MultiLinkableFooterView____lazy_storage___container);
  swift_beginAccess();
  v2 = *v4;
  *v4 = v5;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  return v5;
}

id sub_1AC38E1CC(uint64_t a1, uint64_t a2)
{
  v6[2] = a1;
  sub_1AC39413C(0, a2);
  v5 = sub_1AC3692C0();
  v6[1] = v5;
  [v5 setAlignment_];
  [v5 setAxis_];
  [v5 0x1FAECA5BALL];
  MEMORY[0x1E69E5920](v5);
  [v5 0x1FAECA5BALL];
  MEMORY[0x1E69E5920](v5);
  v4 = *(a1 + OBJC_IVAR____TtC20HeadphoneCommonUIKit23MultiLinkableFooterView_backingStore);

  v6[0] = v4;
  MEMORY[0x1E69E5928](v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB555160, &qword_1AC3BBC60);
  sub_1AC3941C8();
  sub_1AC3B8014();
  MEMORY[0x1E69E5920](v5);
  sub_1AC358148(v6);
  [v5 setSpacing_];
  return v5;
}

double sub_1AC38E3A0(uint64_t *a1, void *a2)
{
  v4 = *a1;
  type metadata accessor for MultiLinkableTextView(0, a2);
  MEMORY[0x1E69E5928](v4);
  v17 = sub_1AC38B530(v4);
  [v17 setTranslatesAutoresizingMaskIntoConstraints_];
  [a2 addArrangedSubview_];
  v15 = objc_opt_self();
  v14 = sub_1AC377CBC(0, v15);
  v13 = sub_1AC3B8574();
  v12 = v2;
  v6 = [a2 0x1FBB5C529];
  MEMORY[0x1E69E5920](a2);
  v5 = [v17 0x1FBB5C529];
  v7 = [v6 0x1FBB28F65];
  MEMORY[0x1E69E5920](v5);
  MEMORY[0x1E69E5920](v6);
  *v12 = v7;
  v10 = [a2 0x1FBBB59CCLL];
  MEMORY[0x1E69E5920](a2);
  v9 = [v17 0x1FBBB59CCLL];
  v11 = [v10 0x1FBB28F65];
  MEMORY[0x1E69E5920](v9);
  MEMORY[0x1E69E5920](v10);
  v12[1] = v11;
  sub_1AC36EE1C(v13, v14);
  v16 = sub_1AC3B8074();

  [v15 activateConstraints_];
  MEMORY[0x1E69E5920](v16);
  *&result = MEMORY[0x1E69E5920](v17).n128_u64[0];
  return result;
}

double sub_1AC38E6AC(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v4 = (v1 + OBJC_IVAR____TtC20HeadphoneCommonUIKit23MultiLinkableFooterView____lazy_storage___container);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

double (*sub_1AC38E744(id *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1AC38E0C0();
  return sub_1AC38E7A0;
}

double sub_1AC38E7A0(uint64_t *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_1AC38E6AC(*a1);
  }

  v3 = *a1;
  MEMORY[0x1E69E5928](*a1);
  sub_1AC38E6AC(v3);
  *&result = MEMORY[0x1E69E5920](*a1).n128_u64[0];
  return result;
}

id MultiLinkableFooterView.init(specifier:)(void *a1)
{
  v219 = v254;
  v230 = a1;
  v229 = 0;
  v257 = 0;
  v256 = 0;
  v220 = 0;
  v248 = 0;
  v245 = 0;
  v242 = 0;
  v239 = 0;
  v236 = 0;
  v221 = sub_1AC3B7524();
  v222 = *(v221 - 8);
  v223 = v222;
  v224 = *(v222 + 64);
  MEMORY[0x1EEE9AC00](0);
  v225 = v59 - ((v224 + 15) & 0xFFFFFFFFFFFFFFF0);
  v256 = v2;
  v257 = v1;
  v228 = v1;
  v227 = OBJC_IVAR____TtC20HeadphoneCommonUIKit23MultiLinkableFooterView_heightConstraints;
  v226 = sub_1AC377CBC(v3, v225);
  v4 = sub_1AC3B7E44();
  v5 = v229;
  v6 = v4;
  v7 = v230;
  *&v228[v227] = v6;
  *&v257[OBJC_IVAR____TtC20HeadphoneCommonUIKit23MultiLinkableFooterView____lazy_storage___container] = v5;
  v8 = v7;
  if (v230)
  {
    v218 = v230;
  }

  else
  {
    LODWORD(v57) = 0;
    v56 = 131;
    LOBYTE(v55) = 2;
    sub_1AC3B8494();
    __break(1u);
  }

  v216 = v218;
  v217 = [v218 userInfo];
  if (v217)
  {
    v215 = v217;
    v214 = v217;
    v213 = v231;
    sub_1AC3B8384();
    sub_1AC377D20(v213, v254);
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v254, 0, sizeof(v254));
  }

  v9 = v216;
  v10 = v219;
  v11 = *v219;
  v219[3] = v219[1];
  v10[2] = v11;

  if (v255[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB555018, &qword_1AC3BB828);
    if (swift_dynamicCast())
    {
      v211 = v231[4];
    }

    else
    {
      v211 = 0;
    }

    v212 = v211;
  }

  else
  {
    sub_1AC38FF40(v255);
    v212 = 0;
  }

  v210 = v212;
  if (!v212)
  {
    goto LABEL_66;
  }

  v209 = v210;
  v206 = v210;
  v248 = v210;
  v12 = sub_1AC38D8DC();
  v204 = *v12;
  v205 = v12[1];

  v246[0] = v204;
  v246[1] = v205;
  v207 = v246;
  sub_1AC3B7E94();
  sub_1AC360750(v207);
  v208 = v247;
  if (v247)
  {
    v203 = v208;
    v231[6] = v208;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB554AA8, &qword_1AC3BB040);
    if (swift_dynamicCast())
    {
      v201 = v231[5];
    }

    else
    {
      v201 = 0;
    }

    v202 = v201;
  }

  else
  {
    v202 = 0;
  }

  v200 = v202;
  if (!v202)
  {

LABEL_66:
    v37 = v225;
    v38 = sub_1AC38B418();
    (*(v223 + 16))(v37, v38, v221);
    v39 = v230;
    v82 = 7;
    v84 = swift_allocObject();
    *(v84 + 16) = v230;
    sub_1AC38FFE4();

    v93 = sub_1AC3B7504();
    v78 = v93;
    v92 = sub_1AC3B8254();
    v79 = v92;
    v80 = 17;
    v86 = swift_allocObject();
    v81 = v86;
    *(v86 + 16) = 64;
    v87 = swift_allocObject();
    v83 = v87;
    *(v87 + 16) = 8;
    v40 = swift_allocObject();
    v41 = v84;
    v90 = v40;
    v85 = v40;
    *(v40 + 16) = sub_1AC38FFDC;
    *(v40 + 24) = v41;
    v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5549B0, &unk_1AC3BAF60);
    v88 = sub_1AC3B8574();
    v89 = v42;

    v43 = v86;
    v44 = v89;
    *v89 = sub_1AC377AC0;
    v44[1] = v43;

    v45 = v87;
    v46 = v89;
    v89[2] = sub_1AC377AC0;
    v46[3] = v45;

    v47 = v88;
    v48 = v89;
    v49 = v90;
    v50 = v91;
    v89[4] = sub_1AC3936DC;
    v48[5] = v49;
    sub_1AC36EE1C(v47, v50);

    if (os_log_type_enabled(v93, v92))
    {
      v51 = v220;
      v71 = sub_1AC3B8334();
      v68 = v71;
      v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB554F90, &qword_1AC3BB7E0);
      v74 = 1;
      v72 = sub_1AC374C60(1, v69, v69);
      v70 = v72;
      v73 = sub_1AC374C60(0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v253 = v71;
      v252 = v72;
      v251 = v73;
      v75 = &v253;
      sub_1AC374CB4(2, &v253);
      sub_1AC374CB4(v74, v75);
      v249 = sub_1AC377AC0;
      v250 = v81;
      sub_1AC374CC8(&v249, v75, &v252, &v251);
      v76 = v51;
      v77 = v51;
      if (v51)
      {
        v66 = 0;

        __break(1u);
      }

      else
      {
        v249 = sub_1AC377AC0;
        v250 = v83;
        sub_1AC374CC8(&v249, &v253, &v252, &v251);
        v64 = 0;
        v65 = 0;
        v249 = sub_1AC3936DC;
        v250 = v85;
        sub_1AC374CC8(&v249, &v253, &v252, &v251);
        v62 = 0;
        v63 = 0;
        _os_log_impl(&dword_1AC345000, v78, v79, "Depedencies not met %@", v68, 0xCu);
        sub_1AC374D14(v70, 1, v69);
        sub_1AC374D14(v73, 0, MEMORY[0x1E69E7CA0] + 8);
        sub_1AC3B8314();

        v67 = v62;
      }
    }

    else
    {
      v52 = v220;

      v67 = v52;
    }

    v61 = v67;

    (*(v223 + 8))(v225, v221);
    sub_1AC358148(&v257[OBJC_IVAR____TtC20HeadphoneCommonUIKit23MultiLinkableFooterView_heightConstraints]);
    sub_1AC35E758(&v257[OBJC_IVAR____TtC20HeadphoneCommonUIKit23MultiLinkableFooterView____lazy_storage___container]);
    v59[1] = v257;
    v60 = 0;
    v59[2] = type metadata accessor for MultiLinkableFooterView(0, v53);
    swift_deallocPartialClassInstance();
    v138 = v60;
    v139 = v61;
    return v138;
  }

  v199 = v200;
  v194 = v200;
  v245 = v200;
  v14 = sub_1AC38DA2C();
  v195 = *v14;
  v196 = v14[1];

  v243[0] = v195;
  v243[1] = v196;
  v197 = v243;
  sub_1AC3B7E94();
  sub_1AC360750(v197);
  v198 = v244;
  if (v244)
  {
    v193 = v198;
    v231[8] = v198;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB554FA0, &qword_1AC3BB7F0);
    if (swift_dynamicCast())
    {
      v191 = v231[7];
    }

    else
    {
      v191 = 0;
    }

    v192 = v191;
  }

  else
  {
    v192 = 0;
  }

  v190 = v192;
  if (!v192)
  {

    goto LABEL_66;
  }

  v189 = v190;
  v184 = v190;
  v242 = v190;
  v16 = sub_1AC38DB7C();
  v185 = *v16;
  v186 = v16[1];

  v240[0] = v185;
  v240[1] = v186;
  v187 = v240;
  sub_1AC3B7E94();
  sub_1AC360750(v187);
  v188 = v241;
  if (v241)
  {
    v183 = v188;
    v231[10] = v188;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB554F98, &qword_1AC3BB7E8);
    if (swift_dynamicCast())
    {
      v181 = v231[9];
    }

    else
    {
      v181 = 0;
    }

    v182 = v181;
  }

  else
  {
    v182 = 0;
  }

  v180 = v182;
  if (!v182)
  {

    goto LABEL_66;
  }

  v179 = v180;
  v174 = v180;
  v239 = v180;
  v18 = sub_1AC38DCCC();
  v175 = *v18;
  v176 = v18[1];

  v237[0] = v175;
  v237[1] = v176;
  v177 = v237;
  sub_1AC3B7E94();
  sub_1AC360750(v177);
  v178 = v238;
  if (v238)
  {
    v173 = v178;
    v231[12] = v178;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB554FA0, &qword_1AC3BB7F0);
    if (swift_dynamicCast())
    {
      v171 = v231[11];
    }

    else
    {
      v171 = 0;
    }

    v172 = v171;
  }

  else
  {
    v172 = 0;
  }

  v170 = v172;
  if (!v172)
  {

    goto LABEL_66;
  }

  v169 = v170;
  v166 = v170;
  v236 = v170;
  v167 = sub_1AC3B80B4();
  v168 = sub_1AC3B80B4();

  if (v167 == v168)
  {
    v164 = sub_1AC3B80B4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB554F60, &unk_1AC3BB7D0);
    v165 = v164 == sub_1AC3B80B4();
  }

  else
  {
    v165 = 0;
  }

  v163 = v165;

  if (v163)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB554F60, &unk_1AC3BB7D0);
    v161 = sub_1AC3B80B4();
    v162 = v161 == sub_1AC3B80B4();
  }

  else
  {
    v162 = 0;
  }

  v160 = v162;

  if (!v160)
  {

    goto LABEL_66;
  }

  v20 = v220;
  v140 = v257;
  v235[10] = v194;
  v235[6] = v184;
  v235[3] = v174;
  v235[2] = v166;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB554F98, &qword_1AC3BB7E8);
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB554FA0, &qword_1AC3BB7F0);
  v142 = sub_1AC393710();
  v145 = sub_1AC393798();
  sub_1AC3B85E4();
  v235[0] = v235[4];
  v235[1] = v235[5];
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB554FB8, &unk_1AC3BB7F8);
  sub_1AC393820();
  v146 = v235;
  sub_1AC3B85E4();
  sub_1AC3938A8(v146);
  v234[0] = v235[7];
  v234[1] = v235[8];
  v234[2] = v235[9];
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB554AA8, &qword_1AC3BB040);
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB554FD0, &qword_1AC3BB808);
  v149 = sub_1AC3938E0();
  sub_1AC393968();
  v150 = v234;
  sub_1AC3B85E4();
  sub_1AC3939F0(v150);
  v233[1] = v235[11];
  v233[2] = v235[12];
  v233[3] = v235[13];
  v233[4] = v235[14];
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB554FE8, &qword_1AC3BB810);
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB554FF0, &qword_1AC3BB818);
  sub_1AC393A34();
  v233[0] = sub_1AC3B80E4();
  v153 = v59;
  MEMORY[0x1EEE9AC00](v59);
  v155 = &v55;
  v57 = sub_1AC390010;
  v154 = 0;
  v58 = 0;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB555000, &qword_1AC3BB820);
  v157 = sub_1AC393AEC(v154, v156);
  v21 = sub_1AC393B50();
  v23 = sub_1AC3904D8(sub_1AC393ABC, v155, v156, v157, MEMORY[0x1E69E73E0], v21, MEMORY[0x1E69E7410], v22);
  v158 = v20;
  v159 = v23;
  if (!v20)
  {
    v94 = v159;
    sub_1AC358148(v233);
    *&v140[OBJC_IVAR____TtC20HeadphoneCommonUIKit23MultiLinkableFooterView_backingStore] = v94;
    v96 = v257;
    sub_1AC3B7F54();
    v95 = v24;
    v97 = sub_1AC3B7EE4();

    v26 = type metadata accessor for MultiLinkableFooterView(0, v25);
    v232.receiver = v96;
    v232.super_class = v26;
    v136 = objc_msgSendSuper2(&v232, sel_initWithReuseIdentifier_, v97);

    v27 = v136;
    v257 = v136;
    v28 = v136;
    v122 = 0x1FB774000uLL;
    v99 = [v136 0x1FB774AF8];

    v98 = sub_1AC38E0C0();
    [v99 addSubview_];

    v134 = objc_opt_self();
    v132 = sub_1AC3B8574();
    v130 = v29;
    v100 = sub_1AC38E0C0();
    v102 = 0x1FBB5C000uLL;
    v105 = [v100 0x1FBB5C529];

    v30 = v136;
    v101 = [v136 (v122 + 2808)];

    v123 = 0x1FBB5C000uLL;
    v103 = [v101 0x1FBB5C2A9];

    v104 = [v103 (v102 + 1321)];
    v127 = 0x1FBB28000uLL;
    v106 = [v105 0x1FBB28F65];

    *v130 = v106;
    v107 = sub_1AC38E0C0();
    v109 = 0x1FBBB5000uLL;
    v112 = [v107 0x1FBBB59CCLL];

    v31 = v136;
    v108 = [v136 (v122 + 2808)];

    v110 = [v108 (v123 + 681)];
    v111 = [v110 (v109 + 2508)];

    v113 = [v112 (v127 + 3941)];
    v130[1] = v113;
    v114 = sub_1AC38E0C0();
    v116 = 0x1FBBB4000uLL;
    v119 = [v114 0x1FBBB4950];

    v32 = v136;
    v115 = [v136 (v122 + 2808)];

    v117 = [v115 (v123 + 681)];
    v118 = [v117 (v116 + 2384)];

    v120 = [v119 (v127 + 3941)];
    v130[2] = v120;
    v121 = sub_1AC38E0C0();
    v125 = 0x1FBB20000uLL;
    v129 = [v121 0x1FBB20D25];

    v33 = v136;
    v124 = [v136 (v122 + 2808)];

    v126 = [v124 (v123 + 681)];
    v128 = [v126 (v125 + 3365)];

    v131 = [v129 (v127 + 3941)];
    v34 = v132;
    v35 = v226;
    v130[3] = v131;
    sub_1AC36EE1C(v34, v35);
    v133 = v36;
    v135 = sub_1AC3B8074();

    [v134 activateConstraints_];

    v137 = v136;

    v138 = v137;
    v139 = v158;
    return v138;
  }

  result = 0;
  __break(1u);
  return result;
}

void *sub_1AC38FF40(void *a1)
{
  if (a1[3])
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return a1;
}

uint64_t sub_1AC38FF7C(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  if (a1)
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

id sub_1AC390010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1AC393AEC(0, a2);
  v22 = sub_1AC3692C0();

  v10 = sub_1AC3B7EE4();

  v8 = *MEMORY[0x1E69C58F8];
  MEMORY[0x1E69E5928](*MEMORY[0x1E69C58F8]);
  sub_1AC3B7EF4();
  v9 = sub_1AC3B7EE4();

  [v22 0x1FB10D778];
  MEMORY[0x1E69E5920](v9);
  swift_unknownObjectRelease();
  swift_unknownObjectRetain();

  swift_unknownObjectRetain();
  swift_unknownObjectRelease();

  v11 = *MEMORY[0x1E69C58F0];
  MEMORY[0x1E69E5928](*MEMORY[0x1E69C58F0]);
  sub_1AC3B7EF4();
  v12 = sub_1AC3B7EE4();

  [v22 0x1FB10D778];
  MEMORY[0x1E69E5920](v12);
  swift_unknownObjectRelease();
  swift_unknownObjectRetain();

  swift_unknownObjectRetain();
  v6 = swift_allocObject();
  *(v6 + 16) = a4;
  *(v6 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB554F60, &unk_1AC3BB7D0);
  v16 = sub_1AC3B8584();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v14 = *MEMORY[0x1E69C58E0];
  MEMORY[0x1E69E5928](*MEMORY[0x1E69C58E0]);
  sub_1AC3B7EF4();
  v15 = sub_1AC3B7EE4();

  [v22 0x1FB10D778];
  MEMORY[0x1E69E5920](v15);
  swift_unknownObjectRelease();
  swift_unknownObjectRetain();

  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
  v19 = *MEMORY[0x1E69C58E8];
  MEMORY[0x1E69E5928](*MEMORY[0x1E69C58E8]);
  sub_1AC3B7EF4();
  v20 = sub_1AC3B7EE4();

  [v22 0x1FB10D778];
  MEMORY[0x1E69E5920](v20);
  swift_unknownObjectRelease();
  return v22;
}

uint64_t sub_1AC3903EC@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, void)@<X1>, void *a3@<X8>)
{
  v9 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v4 = a1[3];
  v5 = a1[4];

  v11 = swift_allocObject();
  *(v11 + 16) = v4;
  *(v11 + 24) = v5;
  *a3 = a2(v9, v6, v7, sub_1AC38D584);
}

uint64_t sub_1AC3904D8(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v34 = a1;
  v35 = a2;
  v59 = a3;
  v49 = a4;
  v36 = a5;
  v58 = a6;
  v38 = a8;
  v39 = "Fatal error";
  v40 = "Range requires lowerBound <= upperBound";
  v41 = "Swift/Range.swift";
  v42 = "Index out of range";
  v43 = "invalid Collection: count differed in successive traversals";
  v44 = "Swift/ArrayShared.swift";
  v69[3] = a3;
  v69[2] = a4;
  v69[1] = a5;
  v45 = *(a5 - 8);
  v46 = a5 - 8;
  v47 = (*(v45 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](a1);
  v48 = &v15 - v47;
  v50 = 0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v52 = *(AssociatedTypeWitness - 8);
  v53 = AssociatedTypeWitness - 8;
  v54 = (*(v52 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v50);
  v55 = &v15 - v54;
  v56 = (*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v57 = &v15 - v56;
  v60 = swift_getAssociatedTypeWitness();
  v61 = *(v60 - 8);
  v62 = v60 - 8;
  v63 = (*(v61 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v59);
  v64 = &v15 - v63;
  v65 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v11);
  v66 = &v15 - v65;
  v67 = sub_1AC3B81E4();
  if (!v67)
  {
    goto LABEL_24;
  }

  v69[0] = sub_1AC3B8454();
  v33 = sub_1AC3B8464();
  sub_1AC3B8434();
  result = sub_1AC3B81D4();
  if (v67 < 0)
  {
    sub_1AC3B8494();
    __break(1u);
LABEL_24:
    v17 = sub_1AC3B8094();
    v18 = v37;
    return v17;
  }

  if (!v67)
  {
LABEL_19:
    v23 = v37;
LABEL_20:
    v19 = v23;
    sub_1AC3B81F4();
    swift_getAssociatedConformanceWitness();
    v22 = sub_1AC3B7EB4();
    v20 = *(v61 + 8);
    v21 = v61 + 8;
    v20(v64, v60);
    if ((v22 & 1) == 0)
    {
      sub_1AC3B84B4();
      __break(1u);
    }

    v20(v66, v60);
    v16 = v69[0];

    v17 = v16;
    v18 = v19;
    return v17;
  }

  v31 = 0;
  for (i = v37; ; i = v27)
  {
    v29 = i;
    v30 = v31;
    if (v31 < 0 || v30 >= v67)
    {
      goto LABEL_18;
    }

    if (v67 < 0)
    {
      sub_1AC3B8494();
      __break(1u);
LABEL_18:
      sub_1AC3B84B4();
      __break(1u);
      goto LABEL_19;
    }

    v28 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    v26 = &v68;
    v25 = sub_1AC3B8224();
    (*(v52 + 16))(v55);
    v25();
    v14 = v29;
    v34(v55, v48);
    v27 = v14;
    if (v14)
    {
      (*(v52 + 8))(v55, AssociatedTypeWitness);
      (*(v61 + 8))(v66, v60);
      sub_1AC367428(v69);
      (*(v45 + 32))(v38, v48, v36);
      return v24;
    }

    (*(v52 + 8))(v55, AssociatedTypeWitness);
    sub_1AC3B8444();
    sub_1AC3B8204();
    if (v28 == v67)
    {
      v23 = v27;
      goto LABEL_20;
    }

    result = v27;
    v31 = v28;
  }

  __break(1u);
  return result;
}

double sub_1AC390ED8()
{
  v2 = sub_1AC38E0C0();
  [v2 intrinsicContentSize];
  v3 = v0;
  MEMORY[0x1E69E5920](v2);
  return v3;
}

double sub_1AC390FA0()
{
  v2 = sub_1AC38E0C0();
  [v2 intrinsicContentSize];
  v3 = v0;
  MEMORY[0x1E69E5920](v2);
  return v3;
}

void sub_1AC391098(uint64_t a1, uint64_t a2)
{
  v2 = OBJC_IVAR____TtC20HeadphoneCommonUIKit23MultiLinkableFooterView_heightConstraints;
  sub_1AC377CBC(0, a2);
  *v2 = sub_1AC3B7E44();
  *OBJC_IVAR____TtC20HeadphoneCommonUIKit23MultiLinkableFooterView____lazy_storage___container = 0;
  sub_1AC3B7F54();
  sub_1AC3B84A4();
  __break(1u);
}

id MultiLinkableFooterView.__allocating_init(reuseIdentifier:)(uint64_t a1, uint64_t a2)
{
  v9 = objc_allocWithZone(v2);
  if (a2)
  {
    v7 = sub_1AC3B7EE4();

    v3 = [v9 initWithReuseIdentifier_];
  }

  else
  {
    v3 = [v9 initWithReuseIdentifier_];
  }

  v6 = v3;
  MEMORY[0x1E69E5920](v5);
  return v6;
}

id MultiLinkableFooterView.__deallocating_deinit(__n128 a1, uint64_t a2, uint64_t a3)
{
  v6 = v3;
  v5.receiver = v3;
  v5.super_class = type metadata accessor for MultiLinkableFooterView(0, a3);
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

uint64_t sub_1AC391450()
{
  result = sub_1AC3B7F54();
  qword_1EB554EE0 = result;
  qword_1EB554EE8 = v1;
  return result;
}

uint64_t *sub_1AC391494()
{
  if (qword_1EB554368 != -1)
  {
    swift_once();
  }

  return &qword_1EB554EE0;
}

uint64_t static HPCUIVisionOSSubtitleOnOffIndicatorCell.onOffKey.getter()
{
  v1 = *sub_1AC391494();

  return v1;
}

uint64_t sub_1AC3915A0()
{
  result = sub_1AC3B7F54();
  qword_1EB554EF0 = result;
  qword_1EB554EF8 = v1;
  return result;
}

uint64_t *sub_1AC3915E4()
{
  if (qword_1EB554370 != -1)
  {
    swift_once();
  }

  return &qword_1EB554EF0;
}

uint64_t static HPCUIVisionOSSubtitleOnOffIndicatorCell.cellDisabledKey.getter()
{
  v1 = *sub_1AC3915E4();

  return v1;
}

id sub_1AC3916F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = objc_allocWithZone(v4);
  if (a3)
  {
    v9 = sub_1AC3B7EE4();

    v5 = [v13 initWithStyle:a1 reuseIdentifier:v9 specifier:?];
  }

  else
  {
    v5 = [v13 initWithStyle:a1 reuseIdentifier:0 specifier:?];
  }

  v8 = v5;
  MEMORY[0x1E69E5920](a4);
  MEMORY[0x1E69E5920](v7);
  return v8;
}

id sub_1AC3917CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = 0;
  v17 = a1;
  v15 = a2;
  v16 = a3;
  v14 = a4;

  if (a3)
  {
    v8 = sub_1AC3B7EE4();

    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v13.receiver = 0;
  v13.super_class = type metadata accessor for HPCUIVisionOSSubtitleOnOffIndicatorCell(0, v4);
  v7 = objc_msgSendSuper2(&v13, sel_initWithStyle_reuseIdentifier_specifier_, a1, v9, a4);
  MEMORY[0x1E69E5920](v9);
  if (v7)
  {
    MEMORY[0x1E69E5928](v7);
    v18 = v7;
    [v7 setAccessoryType_];
    MEMORY[0x1E69E5920](v7);
    MEMORY[0x1E69E5920](a4);

    MEMORY[0x1E69E5920](v18);
    return v7;
  }

  else
  {
    MEMORY[0x1E69E5920](0);
    MEMORY[0x1E69E5920](a4);

    return 0;
  }
}

id sub_1AC391A74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = objc_allocWithZone(v3);
  if (a3)
  {
    v6 = sub_1AC3B7EE4();

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v5 = [v10 initWithStyle:a1 reuseIdentifier:?];
  MEMORY[0x1E69E5920](v7);
  return v5;
}

id sub_1AC391B38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = 0;
  v13 = a1;
  v11 = a2;
  v12 = a3;

  if (a3)
  {
    v6 = sub_1AC3B7EE4();

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = 0;
  v10.super_class = type metadata accessor for HPCUIVisionOSSubtitleOnOffIndicatorCell(0, v3);
  v5 = objc_msgSendSuper2(&v10, sel_initWithStyle_reuseIdentifier_, a1, v7);
  MEMORY[0x1E69E5920](v7);
  MEMORY[0x1E69E5928](v5);
  v14 = v5;
  [v5 setAccessoryType_];
  MEMORY[0x1E69E5920](v5);
  [v5 setHoverStyle_];
  MEMORY[0x1E69E5920](v5);

  MEMORY[0x1E69E5920](v14);
  return v5;
}

void sub_1AC391D98()
{
  sub_1AC3B7F54();
  sub_1AC3B84A4();
  __break(1u);
}

double sub_1AC391E74(void *a1)
{
  v117 = a1;
  v103 = "Fatal error";
  v104 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v105 = "HeadphoneCommonUIKit/MultiLinkableFooterView.swift";
  v156 = 0;
  v155 = 0;
  v154 = 0;
  v152 = 0;
  v153 = 0;
  v143 = 0;
  v144 = 0;
  v134 = 0;
  v135 = 0;
  v128 = 0;
  v106 = 0;
  v107 = sub_1AC3B7584();
  v108 = *(v107 - 8);
  v109 = v107 - 8;
  v110 = (*(v108 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v111 = &v18 - v110;
  v112 = sub_1AC3B75E4();
  v113 = *(v112 - 8);
  v114 = v112 - 8;
  v115 = (*(v113 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v117);
  v116 = &v18 - v115;
  v156 = &v18 - v115;
  v155 = v2;
  v154 = v1;
  *&v3 = MEMORY[0x1E69E5928](v2).n128_u64[0];
  if (v117)
  {
    v101 = v117;
  }

  else
  {
    sub_1AC3B8494();
    __break(1u);
  }

  v99 = v101;
  v100 = [v101 name];
  if (v100)
  {
    v98 = v100;
    v93 = v100;
    v94 = sub_1AC3B7EF4();
    v95 = v4;
    MEMORY[0x1E69E5920](v93);
    v96 = v94;
    v97 = v95;
  }

  else
  {
    v96 = 0;
    v97 = 0;
  }

  v91 = v97;
  v92 = v96;
  v152 = v96;
  v153 = v97;
  MEMORY[0x1E69E5920](v99);
  MEMORY[0x1E69E5928](v117);
  if (v117)
  {
    v90 = v117;
  }

  else
  {
    sub_1AC3B8494();
    __break(1u);
  }

  v88 = v90;
  v86 = *MEMORY[0x1E69C59A0];
  MEMORY[0x1E69E5928](v86);
  sub_1AC3B7EF4();
  v85 = v5;
  v87 = sub_1AC3B7EE4();

  *&v6 = MEMORY[0x1E69E5920](v86).n128_u64[0];
  v89 = [v88 propertyForKey_];
  MEMORY[0x1E69E5920](v87);
  MEMORY[0x1E69E5920](v88);
  if (v89)
  {
    v84 = v89;
    v83 = v89;
    v82 = v118;
    sub_1AC3B8384();
    sub_1AC377D20(v82, &v147);
    swift_unknownObjectRelease();
  }

  else
  {
    v147 = 0uLL;
    v148 = 0uLL;
  }

  v149[0] = v147;
  v149[1] = v148;
  if (*(&v148 + 1))
  {
    if (swift_dynamicCast())
    {
      v80 = v118[4];
      v81 = v118[5];
    }

    else
    {
      v80 = 0;
      v81 = 0;
    }

    v78 = v80;
    v79 = v81;
  }

  else
  {
    sub_1AC38FF40(v149);
    v78 = 0;
    v79 = 0;
  }

  v145 = v78;
  v146 = v79;
  if (v79)
  {
    v150 = v145;
    v151 = v146;
  }

  else
  {
    v150 = sub_1AC3B7F54();
    v151 = v7;
    if (v146)
    {
      sub_1AC360750(&v145);
    }
  }

  v76 = v150;
  v77 = v151;
  v143 = v150;
  v144 = v151;
  MEMORY[0x1E69E5928](v117);
  if (v117)
  {
    v75 = v117;
  }

  else
  {
    sub_1AC3B8494();
    __break(1u);
  }

  v73 = v75;
  v8 = sub_1AC391494();
  v70 = *v8;
  v71 = v8[1];

  v72 = sub_1AC3B7EE4();

  v74 = [v73 propertyForKey_];
  MEMORY[0x1E69E5920](v72);
  MEMORY[0x1E69E5920](v73);
  if (v74)
  {
    v69 = v74;
    v68 = v74;
    v67 = v119;
    sub_1AC3B8384();
    sub_1AC377D20(v67, &v138);
    swift_unknownObjectRelease();
  }

  else
  {
    v138 = 0uLL;
    v139 = 0uLL;
  }

  v140[0] = v138;
  v140[1] = v139;
  if (*(&v139 + 1))
  {
    if (swift_dynamicCast())
    {
      v65 = v119[4];
      v66 = v119[5];
    }

    else
    {
      v65 = 0;
      v66 = 0;
    }

    v63 = v65;
    v64 = v66;
  }

  else
  {
    sub_1AC38FF40(v140);
    v63 = 0;
    v64 = 0;
  }

  v136 = v63;
  v137 = v64;
  if (v64)
  {
    v141 = v136;
    v142 = v137;
  }

  else
  {
    v141 = sub_1AC3B7F54();
    v142 = v9;
    if (v137)
    {
      sub_1AC360750(&v136);
    }
  }

  v61 = v141;
  v62 = v142;
  v134 = v141;
  v135 = v142;
  MEMORY[0x1E69E5928](v117);
  if (v117)
  {
    v60 = v117;
  }

  else
  {
    sub_1AC3B8494();
    __break(1u);
  }

  v58 = v60;
  v10 = sub_1AC3915E4();
  v55 = *v10;
  v56 = v10[1];

  v57 = sub_1AC3B7EE4();

  v59 = [v58 propertyForKey_];
  MEMORY[0x1E69E5920](v57);
  MEMORY[0x1E69E5920](v58);
  if (v59)
  {
    v54 = v59;
    v53 = v59;
    v52 = v120;
    sub_1AC3B8384();
    sub_1AC377D20(v52, &v130);
    swift_unknownObjectRelease();
  }

  else
  {
    v130 = 0uLL;
    v131 = 0uLL;
  }

  v132[0] = v130;
  v132[1] = v131;
  if (*(&v131 + 1))
  {
    sub_1AC386ADC(0, v11);
    if (swift_dynamicCast())
    {
      v51 = v120[4];
    }

    else
    {
      v51 = 0;
    }

    v50 = v51;
  }

  else
  {
    sub_1AC38FF40(v132);
    v50 = 0;
  }

  v129 = v50;
  if (v50)
  {
    v133 = v129;
  }

  else
  {
    sub_1AC386ADC(0, v12);
    v133 = sub_1AC3B82A4();
    if (v129)
    {
      sub_1AC35E758(&v129);
    }
  }

  v46 = v133;
  v128 = v133;
  sub_1AC3B7534();

  sub_1AC3B75D4();
  v47 = objc_opt_self();
  v48 = *MEMORY[0x1E69DDCF8];
  MEMORY[0x1E69E5928](v48);
  v49 = [v47 _preferredFontForTextStyle_weight_];
  MEMORY[0x1E69E5920](v48);
  if (v49)
  {
    v45 = v49;
  }

  else
  {
    sub_1AC3B8494();
    __break(1u);
  }

  v42 = v45;
  v43 = &v127;
  v44 = sub_1AC3B7594();
  sub_1AC3B7554();
  v44();
  if ([v46 BOOLValue])
  {
    v41 = [objc_opt_self() tertiaryLabelColor];
  }

  else
  {
    sub_1AC3B75A4();
    v40 = sub_1AC3B7564();
    (*(v108 + 8))(v111, v107);
    v41 = v40;
  }

  v34 = v41;
  v35 = &v126;
  v36 = sub_1AC3B7594();
  sub_1AC3B7574();
  v36();

  sub_1AC3B7544();
  v37 = objc_opt_self();
  v38 = *MEMORY[0x1E69DDD28];
  MEMORY[0x1E69E5928](v38);
  v39 = [v37 _preferredFontForTextStyle_weight_];
  MEMORY[0x1E69E5920](v38);
  if (v39)
  {
    v33 = v39;
  }

  else
  {
    sub_1AC3B8494();
    __break(1u);
  }

  v30 = v33;
  v31 = &v125;
  v32 = sub_1AC3B75B4();
  sub_1AC3B7554();
  v32();
  if ([v46 BOOLValue])
  {
    v29 = [objc_opt_self() tertiaryLabelColor];
  }

  else
  {
    v29 = [objc_opt_self() secondaryLabelColor];
  }

  v22 = v29;
  v23 = &v124;
  v24 = sub_1AC3B75B4();
  sub_1AC3B7574();
  v26 = 0;
  v24();
  sub_1AC3B75C4();
  MEMORY[0x1E69E5928](v102);
  v25 = v123;
  v123[3] = v112;
  v123[4] = MEMORY[0x1E69DC110];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v123);
  (*(v113 + 16))(boxed_opaque_existential_1, v116, v112);
  MEMORY[0x1AC5B25D0](v25);
  MEMORY[0x1E69E5920](v102);
  v27 = sub_1AC386ADC(0, v14);
  v122 = v46;
  v121 = sub_1AC3B82A4();
  v28 = sub_1AC3B82B4();
  v15 = MEMORY[0x1E69E5920](v121);
  if (v28)
  {
    MEMORY[0x1E69E5928](v102);
    v18 = objc_opt_self();
    v19 = *MEMORY[0x1E69DDCF8];
    MEMORY[0x1E69E5928](v19);
    v20 = [v18 _preferredFontForTextStyle_weight_];
    *&v16 = MEMORY[0x1E69E5920](v19).n128_u64[0];
    [v102 _setBadgeFont_];
    MEMORY[0x1E69E5920](v20);
    MEMORY[0x1E69E5920](v102);
    MEMORY[0x1E69E5928](v102);

    v21 = sub_1AC3B7EE4();

    [v102 _setBadgeText_];
    MEMORY[0x1E69E5920](v21);
    v15 = MEMORY[0x1E69E5920](v102);
  }

  (*(v113 + 8))(v116, v112, v15);
  MEMORY[0x1E69E5920](v46);

  return result;
}

id HPCUIVisionOSSubtitleOnOffIndicatorCell.__deallocating_deinit(__n128 a1, uint64_t a2, uint64_t a3)
{
  v6 = v3;
  v5.receiver = v3;
  v5.super_class = type metadata accessor for HPCUIVisionOSSubtitleOnOffIndicatorCell(0, a3);
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

uint64_t View.linkableFooter(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v60 = 0;
  v69 = a5;
  v61 = a1;
  v62 = a2;
  v63 = a3;
  v64 = a4;

  v47 = "Section footer";
  v48 = 14;
  v49 = 2;
  v43 = sub_1AC3B7A54();
  v44 = v6;
  v45 = v7;
  v46 = v8;
  v14 = v6;
  v13 = v7;
  v15 = v8;
  v42 = sub_1AC3934DC();
  v38 = v43;
  v39 = v14;
  v40 = v13 & 1;
  v41 = v15;
  v34 = sub_1AC3B7A34();
  v35 = v9;
  v36 = v10;
  v37 = v11;
  v16 = v9;
  v17 = v10;
  v18 = v11;
  sub_1AC364A88(v43, v14, v13 & 1);

  v31[0] = v34;
  v31[1] = v16;
  v32 = v17 & 1;
  v33 = v18;
  sub_1AC3B7B74();
  sub_1AC367A04(v31);
  v26[0] = v50;
  v26[1] = v51;
  v27 = v52 & 1;
  v28 = v53;
  v29 = v54;
  v30 = v55;
  sub_1AC3B79D4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB555020, &unk_1AC3BB830);
  sub_1AC3889C0();
  sub_1AC3B7B84();

  sub_1AC388AEC(v26);
  memcpy(__dst, v56, sizeof(__dst));
  memcpy(v25, __dst, sizeof(v25));
  sub_1AC3B7E14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB555040, &unk_1AC3BB840);
  sub_1AC393C80();
  sub_1AC3B7BC4();
  sub_1AC393D28(v25);
  memcpy(v66, v57, sizeof(v66));
  memcpy(v24, v66, sizeof(v24));
  sub_1AC3B7944();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB555060, &qword_1AC3BB850);
  sub_1AC393D94();
  sub_1AC3B7BE4();
  sub_1AC393D28(v24);
  memcpy(v67, v58, sizeof(v67));
  memcpy(v23, v67, 0xD9uLL);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB555070, &qword_1AC3BB858);
  sub_1AC393E38();
  sub_1AC35745C(v23, v20, v59);
  sub_1AC393D28(v23);
  memcpy(v68, v59, 0xD9uLL);
  sub_1AC393EDC(v68, v22);
  memcpy(v21, v68, 0xD9uLL);
  sub_1AC35745C(v21, v20, a6);
  sub_1AC393D28(v21);
  return sub_1AC393D28(v59);
}

id sub_1AC3934F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AC3B7EE4();
  v5 = [v3 initWithString_];
  MEMORY[0x1E69E5920](v4);

  return v5;
}

void sub_1AC393558(uint64_t *a1, uint64_t **a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t **, uint64_t))
{
  v8 = a4(a1, a2, a3);
  v7 = *a1;
  MEMORY[0x1E69E5928](v8);
  sub_1AC3B8354();
  if (v8)
  {
    MEMORY[0x1E69E5920](v8);
  }

  *a1 = v7 + 8;
  v4 = *a2;
  if (*a2)
  {
    MEMORY[0x1E69E5928](v8);
    *v4 = v8;
    MEMORY[0x1E69E5920](v8);
    *a2 = v4 + 1;
  }

  else
  {
    MEMORY[0x1E69E5920](v8);
  }
}

unint64_t sub_1AC393710()
{
  v2 = qword_1EB554FA8;
  if (!qword_1EB554FA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB554F98, &qword_1AC3BB7E8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB554FA8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC393798()
{
  v2 = qword_1EB554FB0;
  if (!qword_1EB554FB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB554FA0, &qword_1AC3BB7F0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB554FB0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC393820()
{
  v2 = qword_1EB554FC0;
  if (!qword_1EB554FC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB554FB8, &unk_1AC3BB7F8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB554FC0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC3938E0()
{
  v2 = qword_1EB554FD8;
  if (!qword_1EB554FD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB554AA8, &qword_1AC3BB040);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB554FD8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC393968()
{
  v2 = qword_1EB554FE0;
  if (!qword_1EB554FE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB554FD0, &qword_1AC3BB808);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB554FE0);
    return WitnessTable;
  }

  return v2;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_1AC3939F0(void *a1)
{
}

unint64_t sub_1AC393A34()
{
  v2 = qword_1EB554FF8;
  if (!qword_1EB554FF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB554FF0, &qword_1AC3BB818);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB554FF8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC393AEC(uint64_t a1, uint64_t a2)
{
  v4 = qword_1EB555008;
  if (!qword_1EB555008)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB555008);
    return ObjCClassMetadata;
  }

  return v4;
}

unint64_t sub_1AC393B50()
{
  v2 = qword_1EB555010;
  if (!qword_1EB555010)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB555000, &qword_1AC3BB820);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB555010);
    return WitnessTable;
  }

  return v2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  v3 = result;
  if ((*(*(result[3] - 8) + 80) & 0x20000) != 0)
  {
    v1 = swift_allocBox();
    result = v2;
    *v3 = v1;
  }

  return result;
}

unint64_t sub_1AC393C80()
{
  v2 = qword_1EB555048;
  if (!qword_1EB555048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB555040, &unk_1AC3BB840);
    sub_1AC3889C0();
    sub_1AC367AF4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB555048);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC393D28(uint64_t a1)
{
  sub_1AC364A88(*a1, *(a1 + 8), *(a1 + 16) & 1);

  return a1;
}

unint64_t sub_1AC393D94()
{
  v2 = qword_1EB555068;
  if (!qword_1EB555068)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB555060, &qword_1AC3BB850);
    sub_1AC393C80();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB555068);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC393E38()
{
  v2 = qword_1EB555078;
  if (!qword_1EB555078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB555070, &qword_1AC3BB858);
    sub_1AC393D94();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB555078);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC393EDC(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  sub_1AC367800(*a1, v4, v5 & 1);
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  v6 = *(a1 + 24);

  *(a2 + 24) = v6;
  v7 = *(a1 + 32);

  *(a2 + 32) = v7;
  *(a2 + 40) = *(a1 + 40);
  v8 = *(a1 + 48);

  *(a2 + 48) = v8;
  v9 = *(a1 + 56);

  *(a2 + 56) = v9;
  memcpy((a2 + 64), (a1 + 64), 0x70uLL);
  memcpy((a2 + 176), (a1 + 176), 0x29uLL);
  return a2;
}

unint64_t sub_1AC39413C(uint64_t a1, uint64_t a2)
{
  v4 = qword_1EB555158;
  if (!qword_1EB555158)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB555158);
    return ObjCClassMetadata;
  }

  return v4;
}

unint64_t sub_1AC3941C8()
{
  v2 = qword_1EB555168;
  if (!qword_1EB555168)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB555160, &qword_1AC3BBC60);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB555168);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_1AC394250@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v25 = a3;
  v26 = a2;
  v27 = a1;
  v28 = a4;
  v29 = a3 & 0xFFFFFFFFFFFFFFFELL;
  if (a2 == 1)
  {
    TupleTypeMetadata = *(v25 & 0xFFFFFFFFFFFFFFFELL);
    v24 = 0;
  }

  else
  {
    v20 = &v10;
    MEMORY[0x1EEE9AC00](&v10);
    v21 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    for (i = 0; ; i = v5 + 1)
    {
      v19 = i;
      if (i >= v26)
      {
        break;
      }

      v5 = v19;
      *&v21[8 * v19] = *((v25 & 0xFFFFFFFFFFFFFFFELL) + 8 * v19);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v24 = v6;
  }

  v15 = TupleTypeMetadata;
  v17 = *(*(TupleTypeMetadata - 8) + 64);
  v16 = &v10;
  v7.n128_f64[0] = MEMORY[0x1EEE9AC00](&v10);
  v18 = &v10 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v8)
  {
    for (j = 0; ; j = v10)
    {
      v12 = j;
      v13 = *((v25 & 0xFFFFFFFFFFFFFFFELL) + 8 * j);
      v11 = v26 == 1 ? 0 : *(v15 + 16 * v12 + 32);
      (*(*(v13 - 8) + 16))(&v18[v11], *(v27 + 8 * v12), v7);
      v10 = v12 + 1;
      if (v12 + 1 == v26)
      {
        break;
      }
    }
  }

  sub_1AC3B7E34();
  return v16;
}

uint64_t sub_1AC3944AC()
{
  v1 = sub_1AC3B7524();
  __swift_allocate_value_buffer(v1, qword_1EB5551D0);
  __swift_project_value_buffer(v1, qword_1EB5551D0);
  sub_1AC3B7F54();
  sub_1AC3B7F54();
  return sub_1AC3B7514();
}

uint64_t sub_1AC394550()
{
  if (qword_1EB554378 != -1)
  {
    swift_once();
  }

  v0 = sub_1AC3B7524();
  return __swift_project_value_buffer(v0, qword_1EB5551D0);
}

uint64_t static Logger.placeCardUI.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AC394550();
  v1 = sub_1AC3B7524();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1AC394620()
{
  result = sub_1AC3B7F54();
  qword_1EB5551E8 = result;
  qword_1EB5551F0 = v1;
  return result;
}

uint64_t *sub_1AC394664()
{
  if (qword_1EB554380 != -1)
  {
    swift_once();
  }

  return &qword_1EB5551E8;
}

uint64_t static PlaceCardTypeCell.useCaseKey.getter()
{
  v1 = *sub_1AC394664();

  return v1;
}

uint64_t sub_1AC394770()
{
  result = sub_1AC3B7F54();
  qword_1EB5551F8 = result;
  qword_1EB555200 = v1;
  return result;
}

uint64_t *sub_1AC3947B4()
{
  if (qword_1EB554388 != -1)
  {
    swift_once();
  }

  return &qword_1EB5551F8;
}

uint64_t static PlaceCardTypeCell.deviceKey.getter()
{
  v1 = *sub_1AC3947B4();

  return v1;
}

uint64_t sub_1AC3948C0()
{
  result = sub_1AC3B7F54();
  qword_1EB555208 = result;
  qword_1EB555210 = v1;
  return result;
}

uint64_t *sub_1AC394904()
{
  if (qword_1EB554390 != -1)
  {
    swift_once();
  }

  return &qword_1EB555208;
}

uint64_t static PlaceCardTypeCell.hideDisclosureKey.getter()
{
  v1 = *sub_1AC394904();

  return v1;
}

id sub_1AC394A10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = 0;
  v17 = a1;
  v15 = a2;
  v16 = a3;
  v14 = a4;

  if (a3)
  {
    v8 = sub_1AC3B7EE4();

    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v13.receiver = 0;
  v13.super_class = type metadata accessor for PlaceCardTypeCell(0, v4);
  v7 = objc_msgSendSuper2(&v13, sel_initWithStyle_reuseIdentifier_specifier_, a1, v9, a4);
  MEMORY[0x1E69E5920](v9);
  if (v7)
  {
    MEMORY[0x1E69E5928](v7);
    v18 = v7;
    [v7 setAccessoryType_];
    MEMORY[0x1E69E5920](v7);
    MEMORY[0x1E69E5920](a4);

    MEMORY[0x1E69E5920](v18);
    return v7;
  }

  else
  {
    MEMORY[0x1E69E5920](0);
    MEMORY[0x1E69E5920](a4);

    return 0;
  }
}

id sub_1AC394CE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = 0;
  v13 = a1;
  v11 = a2;
  v12 = a3;

  if (a3)
  {
    v6 = sub_1AC3B7EE4();

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = 0;
  v10.super_class = type metadata accessor for PlaceCardTypeCell(0, v3);
  v5 = objc_msgSendSuper2(&v10, sel_initWithStyle_reuseIdentifier_, a1, v7);
  MEMORY[0x1E69E5920](v7);
  MEMORY[0x1E69E5928](v5);
  v14 = v5;
  [v5 setAccessoryType_];
  MEMORY[0x1E69E5920](v5);

  MEMORY[0x1E69E5920](v14);
  return v5;
}

id PlaceCardTypeCell.__allocating_init(coder:)(uint64_t a1)
{
  v4 = [objc_allocWithZone(v1) initWithCoder_];
  MEMORY[0x1E69E5920](a1);
  return v4;
}

void PlaceCardTypeCell.init(coder:)()
{
  sub_1AC3B7F54();
  sub_1AC3B84A4();
  __break(1u);
}

uint64_t sub_1AC395040(void *a1)
{
  v234 = v265;
  v250 = a1;
  v241 = 0;
  v306 = 0;
  v305 = 0;
  v304 = 0;
  v236 = 0;
  v296 = 0;
  v281 = 0;
  v271 = 0;
  v270 = 0;
  v269 = 0;
  v268 = 0;
  v263 = 0;
  v262 = 0;
  v237 = sub_1AC3B7524();
  v238 = *(v237 - 8);
  v239 = v238;
  MEMORY[0x1EEE9AC00](0);
  v240 = &v70 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v242 = sub_1AC3B7584();
  v243 = *(v242 - 8);
  v244 = v243;
  MEMORY[0x1EEE9AC00](v241);
  v245 = &v70 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v246 = sub_1AC3B75E4();
  v247 = *(v246 - 8);
  v248 = v247;
  MEMORY[0x1EEE9AC00](v250);
  v249 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v306 = v249;
  v305 = v5;
  v304 = v1;
  v6 = v5;
  if (v250)
  {
    v233 = v250;
  }

  else
  {
    sub_1AC3B8494();
    __break(1u);
  }

  v231 = v233;
  v232 = [v233 userInfo];
  if (v232)
  {
    v230 = v232;
    v229 = v232;
    v228 = v251;
    sub_1AC3B8384();
    sub_1AC377D20(v228, v302);
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v302, 0, sizeof(v302));
  }

  v7 = v231;
  v8 = v234;
  v9 = v234[43];
  v234[46] = v234[44];
  v8[45] = v9;

  if (v303[3])
  {
    sub_1AC39B678(0, v10);
    if (swift_dynamicCast())
    {
      v227 = v251[4];
    }

    else
    {
      v227 = 0;
    }

    v226 = v227;
  }

  else
  {
    sub_1AC38FF40(v303);
    v226 = 0;
  }

  v225 = v226;
  if (!v226)
  {
    goto LABEL_95;
  }

  v224 = v225;
  v220 = v225;
  v296 = v225;
  v11 = sub_1AC394664();
  v213 = *v11;
  v214 = v11[1];

  v286[3] = MEMORY[0x1E69E6158];
  v286[0] = v213;
  v286[1] = v214;
  v217 = MEMORY[0x1E69E6158];
  __swift_project_boxed_opaque_existential_0(v286, MEMORY[0x1E69E6158]);
  v215 = *(v217 - 8);
  v216 = v215;
  v219 = &v70;
  v12 = MEMORY[0x1EEE9AC00](&v70);
  v218 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v216 + 16))(v12);
  v221 = sub_1AC3B8584();
  (*(v216 + 8))(v218, v217);
  v223 = [v220 __swift_objectForKeyedSubscript_];
  v222 = v223;
  swift_unknownObjectRelease();
  if (v223)
  {
    v212 = v222;
    v211 = v222;
    v210 = &v252;
    sub_1AC3B8384();
    sub_1AC377D20(v210, v285);
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v285, 0, sizeof(v285));
  }

  v14 = v234;
  v15 = v234[28];
  v234[33] = v234[29];
  v14[32] = v15;
  if (v287[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB555228, &qword_1AC3BB9E0);
    if (!swift_dynamicCast())
    {
      v288 = 0;
      v289 = 0;
      v290 = 0;
      v291 = 0;
      v292 = 0;
    }

    __swift_destroy_boxed_opaque_existential_1(v286);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v286);
    sub_1AC38FF40(v287);
    v288 = 0;
    v289 = 0;
    v290 = 0;
    v291 = 0;
    v292 = 0;
  }

  if (!v291)
  {
    sub_1AC38FF40(&v288);

LABEL_95:
    v53 = v240;
    v54 = sub_1AC394550();
    (*(v239 + 16))(v53, v54, v237);
    v55 = v250;
    v92 = 7;
    v94 = swift_allocObject();
    *(v94 + 16) = v250;
    sub_1AC38FFE4();

    v103 = sub_1AC3B7504();
    v88 = v103;
    v102 = sub_1AC3B8254();
    v89 = v102;
    v90 = 17;
    v96 = swift_allocObject();
    v91 = v96;
    *(v96 + 16) = 64;
    v97 = swift_allocObject();
    v93 = v97;
    *(v97 + 16) = 8;
    v56 = swift_allocObject();
    v57 = v94;
    v100 = v56;
    v95 = v56;
    *(v56 + 16) = sub_1AC38FFDC;
    *(v56 + 24) = v57;
    v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5549B0, &unk_1AC3BAF60);
    v98 = sub_1AC3B8574();
    v99 = v58;

    v59 = v96;
    v60 = v99;
    *v99 = sub_1AC377AC0;
    v60[1] = v59;

    v61 = v97;
    v62 = v99;
    v99[2] = sub_1AC377AC0;
    v62[3] = v61;

    v63 = v98;
    v64 = v99;
    v65 = v100;
    v66 = v101;
    v99[4] = sub_1AC3936DC;
    v64[5] = v65;
    sub_1AC36EE1C(v63, v66);

    if (os_log_type_enabled(v103, v102))
    {
      v67 = v236;
      v81 = sub_1AC3B8334();
      v78 = v81;
      v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB554F90, &qword_1AC3BB7E0);
      v84 = 1;
      v82 = sub_1AC374C60(1, v79, v79);
      v80 = v82;
      v83 = sub_1AC374C60(0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v301 = v81;
      v300 = v82;
      v299 = v83;
      v85 = &v301;
      sub_1AC374CB4(2, &v301);
      sub_1AC374CB4(v84, v85);
      v297 = sub_1AC377AC0;
      v298 = v91;
      sub_1AC374CC8(&v297, v85, &v300, &v299);
      v86 = v67;
      v87 = v67;
      if (v67)
      {
        v76 = 0;

        __break(1u);
      }

      else
      {
        v297 = sub_1AC377AC0;
        v298 = v93;
        sub_1AC374CC8(&v297, &v301, &v300, &v299);
        v74 = 0;
        v75 = 0;
        v297 = sub_1AC3936DC;
        v298 = v95;
        sub_1AC374CC8(&v297, &v301, &v300, &v299);
        v72 = 0;
        v73 = 0;
        _os_log_impl(&dword_1AC345000, v88, v89, "HearingTopLevelCell refreshCellContents dependencies not meet %@", v78, 0xCu);
        sub_1AC374D14(v80, 1, v79);
        sub_1AC374D14(v83, 0, MEMORY[0x1E69E7CA0] + 8);
        sub_1AC3B8314();

        v77 = v72;
      }
    }

    else
    {
      v68 = v236;

      v77 = v68;
    }

    v71 = v77;

    (*(v239 + 8))(v240, v237);
    return v71;
  }

  sub_1AC39B63C(&v288, __dst);
  v16 = sub_1AC3947B4();
  v200 = *v16;
  v201 = v16[1];

  v283[3] = MEMORY[0x1E69E6158];
  v283[0] = v200;
  v283[1] = v201;
  v204 = MEMORY[0x1E69E6158];
  __swift_project_boxed_opaque_existential_0(v283, MEMORY[0x1E69E6158]);
  v202 = *(v204 - 8);
  v203 = v202;
  v206 = &v70;
  v17 = MEMORY[0x1EEE9AC00](&v70);
  v205 = &v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v203 + 16))(v17);
  v207 = sub_1AC3B8584();
  (*(v203 + 8))(v205, v204);
  v209 = [v220 __swift_objectForKeyedSubscript_];
  v208 = v209;
  swift_unknownObjectRelease();
  if (v209)
  {
    v199 = v208;
    v198 = v208;
    v197 = v253;
    sub_1AC3B8384();
    sub_1AC377D20(v197, v282);
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v282, 0, sizeof(v282));
  }

  v19 = v234;
  v20 = v234[22];
  v234[27] = v234[23];
  v19[26] = v20;
  if (v284[3])
  {
    sub_1AC3B7434();
    if (swift_dynamicCast())
    {
      v196 = v253[4];
    }

    else
    {
      v196 = 0;
    }

    v194 = v196;
    __swift_destroy_boxed_opaque_existential_1(v283);
    v195 = v194;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v283);
    sub_1AC38FF40(v284);
    v195 = 0;
  }

  v193 = v195;
  if (!v195)
  {
    __swift_destroy_boxed_opaque_existential_1(__dst);

    goto LABEL_95;
  }

  v192 = v193;
  v181 = v193;
  v281 = v193;
  v21 = v235;
  v22 = sub_1AC394904();
  v182 = *v22;
  v183 = v22[1];

  v279[3] = MEMORY[0x1E69E6158];
  v279[0] = v182;
  v279[1] = v183;
  v186 = MEMORY[0x1E69E6158];
  __swift_project_boxed_opaque_existential_0(v279, MEMORY[0x1E69E6158]);
  v184 = *(v186 - 8);
  v185 = v184;
  v188 = &v70;
  v23 = MEMORY[0x1EEE9AC00](&v70);
  v187 = &v70 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v185 + 16))(v23);
  v189 = sub_1AC3B8584();
  (*(v185 + 8))(v187, v186);
  v191 = [v220 __swift_objectForKeyedSubscript_];
  v190 = v191;
  swift_unknownObjectRelease();
  if (v191)
  {
    v180 = v190;
    v179 = v190;
    v178 = v254;
    sub_1AC3B8384();
    sub_1AC377D20(v178, v278);
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v278, 0, sizeof(v278));
  }

  v25 = v234;
  v26 = v234[15];
  v234[20] = v234[16];
  v25[19] = v26;
  if (v280[3])
  {
    if (swift_dynamicCast())
    {
      v177 = v254[39];
    }

    else
    {
      v177 = 2;
    }

    v175 = v177;
    __swift_destroy_boxed_opaque_existential_1(v279);
    v176 = v175;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v279);
    sub_1AC38FF40(v280);
    v176 = 2;
  }

  v277 = v176;
  if (v176 == 2)
  {
    v174 = 0;
  }

  else
  {
    v174 = v277;
  }

  v173 = (v174 & 1) == 0;
  [v235 setAccessoryType_];

  v27 = v235;
  v28 = sub_1AC394904();
  v163 = *v28;
  v164 = v28[1];

  v275[3] = MEMORY[0x1E69E6158];
  v275[0] = v163;
  v275[1] = v164;
  v167 = MEMORY[0x1E69E6158];
  __swift_project_boxed_opaque_existential_0(v275, MEMORY[0x1E69E6158]);
  v165 = *(v167 - 8);
  v166 = v165;
  v169 = &v70;
  v29 = MEMORY[0x1EEE9AC00](&v70);
  v168 = &v70 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v166 + 16))(v29);
  v170 = sub_1AC3B8584();
  (*(v166 + 8))(v168, v167);
  v172 = [v220 __swift_objectForKeyedSubscript_];
  v171 = v172;
  swift_unknownObjectRelease();
  if (v172)
  {
    v162 = v171;
    v161 = v171;
    v160 = v255;
    sub_1AC3B8384();
    sub_1AC377D20(v160, v274);
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v274, 0, sizeof(v274));
  }

  v31 = v234;
  v32 = v234[8];
  v234[13] = v234[9];
  v31[12] = v32;
  if (v276[3])
  {
    if (swift_dynamicCast())
    {
      v159 = v255[39];
    }

    else
    {
      v159 = 2;
    }

    v157 = v159;
    __swift_destroy_boxed_opaque_existential_1(v275);
    v158 = v157;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v275);
    sub_1AC38FF40(v276);
    v158 = 2;
  }

  v273 = v158;
  if (v158 == 2)
  {
    v156 = 0;
  }

  else
  {
    v156 = v273;
  }

  if (v156)
  {
    v155 = 0;
  }

  else
  {
    v33 = v235;
    v35 = type metadata accessor for PlaceCardTypeCell(0, v34);
    v272.receiver = v235;
    v272.super_class = v35;
    v154 = objc_msgSendSuper2(&v272, sel_selectionStyle);

    v155 = v154;
  }

  [v235 setSelectionStyle_];

  v145 = v294;
  v146 = v295;
  v149 = __dst;
  __swift_project_boxed_opaque_existential_0(__dst, v294);
  v147 = (*(v146 + 8))(v181, v145);
  v148 = v36;
  v270 = v147;
  v271 = v36;

  v150 = v294;
  v151 = v295;
  __swift_project_boxed_opaque_existential_0(v149, v294);
  (*(v151 + 8))(v181, v150);
  v152 = v37;
  v153 = v38;
  v268 = v37;
  v269 = v38;

  v39 = v250;
  if (v250)
  {
    v144 = v250;
  }

  else
  {
    sub_1AC3B8494();
    __break(1u);
  }

  v142 = v144;
  v139 = *MEMORY[0x1E69C58C8];
  v40 = v139;
  sub_1AC3B7EF4();
  v138 = v41;
  v140 = sub_1AC3B7EE4();

  v143 = [v142 propertyForKey_];
  v141 = v143;

  if (v143)
  {
    v137 = v141;
    v136 = v141;
    v135 = v256;
    sub_1AC3B8384();
    sub_1AC377D20(v135, v265);
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v265, 0, sizeof(v265));
  }

  v43 = v234;
  v44 = *v234;
  v234[3] = v234[1];
  v43[2] = v44;
  if (v266[3])
  {
    sub_1AC386ADC(0, v42);
    if (swift_dynamicCast())
    {
      v134 = v256[4];
    }

    else
    {
      v134 = 0;
    }

    v133 = v134;
  }

  else
  {
    sub_1AC38FF40(v266);
    v133 = 0;
  }

  v264 = v133;
  if (v133)
  {
    v267 = v264;
  }

  else
  {
    sub_1AC386ADC(0, v45);
    v267 = sub_1AC396B90(1);
    if (v264)
    {
      sub_1AC35E758(&v264);
    }
  }

  v127 = v267;
  v263 = v267;
  v46 = [v267 BOOLValue];
  v128 = v46 ^ 1;
  v262 = v46 ^ 1;
  sub_1AC3B7534();

  sub_1AC3B75D4();
  v129 = objc_opt_self();
  v130 = *MEMORY[0x1E69DDCF8];
  v47 = v130;
  v132 = [v129 _preferredFontForTextStyle_weight_];
  v131 = v132;

  if (v132)
  {
    v126 = v131;
  }

  else
  {
    sub_1AC3B8494();
    __break(1u);
  }

  v123 = v126;
  v124 = &v261;
  v125 = sub_1AC3B7594();
  sub_1AC3B7554();
  v125(v124, 0);
  if (v128)
  {
    v122 = [objc_opt_self() tertiaryLabelColor];
  }

  else
  {
    sub_1AC3B75A4();
    v121 = sub_1AC3B7564();
    (*(v244 + 8))(v245, v242);
    v122 = v121;
  }

  v114 = v122;
  v115 = &v260;
  v116 = sub_1AC3B7594();
  sub_1AC3B7574();
  v116(v115, 0);

  sub_1AC3B7544();
  v117 = objc_opt_self();
  v118 = *MEMORY[0x1E69DDD00];
  v48 = v118;
  v120 = [v117 _preferredFontForTextStyle_weight_];
  v119 = v120;

  if (v120)
  {
    v113 = v119;
  }

  else
  {
    sub_1AC3B8494();
    __break(1u);
  }

  v110 = v113;
  v111 = &v259;
  v112 = sub_1AC3B75B4();
  sub_1AC3B7554();
  v112(v111, 0);
  if (v128)
  {
    v109 = [objc_opt_self() tertiaryLabelColor];
  }

  else
  {
    v109 = [objc_opt_self() secondaryLabelColor];
  }

  v104 = v109;
  v105 = &v258;
  v106 = sub_1AC3B75B4();
  sub_1AC3B7574();
  v106(v105, 0);
  sub_1AC3B75C4();
  v49 = v235;
  v50 = v235;
  [v49 setUserInteractionEnabled_];

  v51 = v49;
  v257[3] = v246;
  v257[4] = MEMORY[0x1E69DC110];
  v107 = v257;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v257);
  (*(v248 + 16))(boxed_opaque_existential_1, v249, v246);
  MEMORY[0x1AC5B25D0](v107);

  (*(v248 + 8))(v249, v246);

  __swift_destroy_boxed_opaque_existential_1(__dst);
  return v236;
}

id PlaceCardTypeCell.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  v4.receiver = v2;
  v4.super_class = type metadata accessor for PlaceCardTypeCell(0, a2);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void *sub_1AC396CAC@<X0>(uint64_t a1@<X8>)
{
  v5 = a1;
  v8 = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB555238, &qword_1AC3BB9E8);
  v4 = (*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v7 = (&v3 - v4);
  v8 = v1;
  sub_1AC39B6DC(v1, (&v3 - v4));
  sub_1AC3B76C4();
  return sub_1AC39B7B0(v7);
}

void *sub_1AC396DA8(void *a1)
{
  v6 = a1;
  v8 = 0;
  v7 = 0;
  v4[0] = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB555238, &qword_1AC3BB9E8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v5 = (v4 - v4[0]);
  v8 = v2;
  v7 = v1;
  sub_1AC39B6DC(v2, (v4 - v4[0]));
  sub_1AC39B84C(v5, v4[1]);
  return sub_1AC39B7B0(v6);
}

uint64_t sub_1AC396E60()
{
  v2 = *(v0 + *(type metadata accessor for ModernPlaceCard(0) + 20));

  return v2;
}

uint64_t sub_1AC396EA4(uint64_t a1)
{

  *(v1 + *(type metadata accessor for ModernPlaceCard(0) + 20)) = a1;
}

uint64_t sub_1AC396F04()
{
  v2 = *(v0 + *(type metadata accessor for ModernPlaceCard(0) + 24));

  return v2;
}

double sub_1AC396F54(uint64_t a1, uint64_t a2)
{

  v3 = (v2 + *(type metadata accessor for ModernPlaceCard(0) + 24));
  *v3 = a1;
  v3[1] = a2;

  return result;
}

uint64_t sub_1AC396FD0()
{
  v2 = *(v0 + *(type metadata accessor for ModernPlaceCard(0) + 28));

  return v2;
}

double sub_1AC397020(uint64_t a1, uint64_t a2)
{

  v3 = (v2 + *(type metadata accessor for ModernPlaceCard(0) + 28));
  *v3 = a1;
  v3[1] = a2;

  return result;
}

uint64_t sub_1AC39709C()
{
  v2 = *(v0 + *(type metadata accessor for ModernPlaceCard(0) + 32));

  return v2;
}

double sub_1AC3970EC(uint64_t a1, uint64_t a2)
{

  v3 = (v2 + *(type metadata accessor for ModernPlaceCard(0) + 32));
  *v3 = a1;
  v3[1] = a2;

  return result;
}

uint64_t sub_1AC397168()
{
  v2 = *(v0 + *(type metadata accessor for ModernPlaceCard(0) + 36));

  return v2;
}

uint64_t sub_1AC3971B8(uint64_t a1, uint64_t a2)
{

  v3 = (v2 + *(type metadata accessor for ModernPlaceCard(0) + 36));
  *v3 = a1;
  v3[1] = a2;
}

uint64_t sub_1AC397234()
{
  v2 = *(v0 + *(type metadata accessor for ModernPlaceCard(0) + 40));

  return v2;
}

uint64_t sub_1AC397284(uint64_t a1, uint64_t a2)
{

  v3 = (v2 + *(type metadata accessor for ModernPlaceCard(0) + 40));
  *v3 = a1;
  v3[1] = a2;
}

void *ModernPlaceCard.init(image:title:subtitle:buttonTitle:buttonAction:xButtonAction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v41 = a9;
  v47 = a1;
  v35 = a2;
  v46 = a3;
  v36 = a4;
  v45 = a5;
  v37 = a6;
  v44 = a7;
  v38 = a8;
  v43 = a10;
  v40 = a11;
  v42 = a12;
  v39 = type metadata accessor for ModernPlaceCard(0);
  MEMORY[0x1EEE9AC00](v47);
  v48 = (&v34 - v12);
  v60 = &v34 - v12;
  v59 = v13;
  v57 = v35;
  v58 = v14;
  v55 = v15;
  v56 = v16;
  v53 = v17;
  v54 = v18;
  v51 = v19;
  v52 = a10;
  v49 = a11;
  v50 = v20;
  swift_getKeyPath();
  sub_1AC3B76E4();

  *(v48 + v39[5]) = v47;

  v21 = v46;
  v22 = (v48 + v39[6]);
  *v22 = v35;
  v22[1] = v21;

  v23 = v45;
  v24 = (v48 + v39[7]);
  *v24 = v36;
  v24[1] = v23;

  v25 = v44;
  v26 = (v48 + v39[8]);
  *v26 = v37;
  v26[1] = v25;

  v27 = v43;
  v28 = (v48 + v39[9]);
  *v28 = v38;
  v28[1] = v27;

  v29 = v48;
  v30 = v41;
  v31 = v42;
  v32 = (v48 + v39[10]);
  *v32 = v40;
  v32[1] = v31;
  sub_1AC39B9AC(v29, v30);

  return sub_1AC39BC04(v48);
}

uint64_t ModernPlaceCard.body.getter@<X0>(uint64_t a1@<X8>)
{
  v15 = a1;
  v37 = sub_1AC39BD34;
  v55 = 0;
  v54 = 0;
  v36 = 0;
  v16 = (*(*(sub_1AC3B77E4() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v17 = v9 - v16;
  v18 = sub_1AC3B7754();
  v19 = (*(*(v18 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v36);
  v20 = v9 - v19;
  v45 = sub_1AC3B76A4();
  v41 = *(v45 - 8);
  v42 = v45 - 8;
  v21 = (*(v41 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v45);
  v43 = v9 - v21;
  v22 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9 - v21);
  v44 = v9 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB555248, &qword_1AC3BBA28);
  v24 = (*(*(v23 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v23);
  v35 = v9 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB555250, &qword_1AC3BBA30);
  v26 = (*(*(v25 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v25);
  v27 = v9 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB555258, &qword_1AC3BBA38);
  v29 = (*(*(v28 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v28);
  v30 = v9 - v29;
  v31 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9 - v29);
  v32 = v9 - v31;
  v33 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9 - v31);
  v34 = v9 - v33;
  v55 = v9 - v33;
  v54 = v1;
  v38 = &v49;
  v50 = v1;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB555260, &qword_1AC3BBA40);
  v40 = sub_1AC39BD3C();
  sub_1AC3802C0();
  sub_1AC3B7D84();
  sub_1AC396CAC(v44);
  (*(v41 + 104))(v43, *MEMORY[0x1E697DBA8], v45);
  v48 = sub_1AC3B7694();
  v47 = *(v41 + 8);
  v46 = v41 + 8;
  v47(v43, v45);
  v47(v44, v45);
  if (v48)
  {
    v14 = [objc_opt_self() secondarySystemBackgroundColor];
  }

  else
  {
    v14 = [objc_opt_self() systemBackgroundColor];
  }

  v5 = sub_1AC3B7C14();
  v10 = &v53;
  v53 = v5;
  v9[1] = sub_1AC39BDC4();
  v9[0] = MEMORY[0x1E69815C0];
  v9[2] = MEMORY[0x1E6981568];
  sub_1AC399DD8(v23, MEMORY[0x1E69815C0]);
  sub_1AC3B7AA4();
  sub_1AC367428(v10);
  sub_1AC34B2BC(v35);
  sub_1AC399E00(v17);
  sub_1AC3B7744();
  v11 = sub_1AC39BE4C();
  v12 = sub_1AC39BF7C(v6);
  v52 = sub_1AC399E6C();
  v51 = v52;
  sub_1AC3B7C04();
  sub_1AC39BFFC(v20, v7);
  sub_1AC34B4EC(v27);
  v13 = sub_1AC39C078();
  sub_1AC35745C(v32, v28, v34);
  sub_1AC34B744(v32);
  sub_1AC34BA18(v34, v30);
  sub_1AC35745C(v30, v28, v15);
  sub_1AC34B744(v30);
  return sub_1AC34B744(v34);
}

uint64_t sub_1AC397C2C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v32 = a1;
  v21 = sub_1AC39C524;
  v39 = sub_1AC39C850;
  v66 = 0;
  v65 = 0;
  v64 = 0;
  v31 = type metadata accessor for ModernPlaceCard(0);
  v13 = *(v31 - 8);
  v35 = v13;
  v36 = *(v13 + 64);
  v14 = (v36 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v31);
  v38 = &v13 - v14;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB554BC0, &qword_1AC3BB158);
  v43 = *(v46 - 8);
  v44 = v46 - 8;
  v15 = (*(v43 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v46);
  v45 = &v13 - v15;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5552B8, &qword_1AC3BBA90);
  v16 = (*(*(v48 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v48);
  v53 = &v13 - v16;
  v17 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v13 - v16);
  v55 = &v13 - v17;
  v66 = &v13 - v17;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB555350, &qword_1AC3BBC08);
  v18 = (*(*(v29 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v29);
  v30 = &v13 - v18;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB555310, &qword_1AC3BBAC0);
  v19 = (*(*(v47 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v32);
  v54 = &v13 - v19;
  v20 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v56 = &v13 - v20;
  v65 = &v13 - v20;
  v64 = v5;
  v22 = &v57;
  v58 = v5;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB555358, &qword_1AC3BBC10);
  v24 = sub_1AC39C52C();
  sub_1AC3647AC();
  sub_1AC3B7D44();
  sub_1AC3B7684();
  v25 = v6;
  v26 = v7;
  v27 = v8;
  v28 = v9;
  sub_1AC39C5B4();
  sub_1AC3B7BD4();
  sub_1AC34C25C(v30);
  v49 = sub_1AC39C63C();
  sub_1AC35745C(v54, v47, v56);
  sub_1AC34C25C(v54);
  v10 = (v32 + *(v31 + 32));
  v33 = *v10;
  v34 = v10[1];

  v41 = v63;
  v63[0] = v33;
  v63[1] = v34;
  sub_1AC39B9AC(v32, v38);
  v37 = (*(v35 + 80) + 16) & ~*(v35 + 80);
  v40 = swift_allocObject();
  sub_1AC39C6E0(v38, (v40 + v37));
  sub_1AC35FEAC();
  sub_1AC3B7D34();
  v11 = [objc_opt_self() systemBlueColor];
  v42 = sub_1AC3B7C14();
  sub_1AC39C8B4();
  View.solariumOvalTintedButton(_:)(v42, v46);

  (*(v43 + 8))(v45, v46);
  v50 = sub_1AC39C93C();
  sub_1AC35745C(v53, v48, v55);
  sub_1AC39CA5C(v53);
  sub_1AC34C59C(v56, v54);
  v52 = v62;
  v62[0] = v54;
  sub_1AC39CAEC(v55, v53);
  v62[1] = v53;
  v61[0] = v47;
  v61[1] = v48;
  v59 = v49;
  v60 = v50;
  sub_1AC394250(v52, 2uLL, v61, v51);
  sub_1AC39CA5C(v53);
  sub_1AC34C25C(v54);
  sub_1AC39CA5C(v55);
  return sub_1AC34C25C(v56);
}

uint64_t sub_1AC3982D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v92 = a2;
  v66 = a1;
  v64 = MEMORY[0x1E697CEC0];
  v41 = sub_1AC39CCB4;
  v67 = sub_1AC39CEDC;
  v131 = 0;
  v130 = 0;
  v129 = 0;
  v128 = 0;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB555390, &qword_1AC3BBC18);
  v22 = (*(*(v73 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v73);
  v77 = &v22 - v22;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB555300, &qword_1AC3BBAB0);
  v23 = (*(*(v82 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v82);
  v83 = &v22 - v23;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB555308, &qword_1AC3BBAB8);
  v24 = (*(*(v88 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v88);
  v94 = &v22 - v24;
  v25 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v22 - v24);
  v97 = &v22 - v25;
  v131 = &v22 - v25;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB555298, &qword_1AC3BBA68);
  v86 = *(v98 - 8);
  v87 = v98 - 8;
  v26 = (*(v86 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v98);
  v95 = &v22 - v26;
  v27 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v22 - v26);
  v101 = &v22 - v27;
  v130 = &v22 - v27;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB555288, &qword_1AC3BBA58);
  v84 = *(v103 - 8);
  v85 = v103 - 8;
  v28 = (*(v84 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v66);
  v96 = &v22 - v28;
  v29 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v102 = &v22 - v29;
  v129 = &v22 - v29;
  v128 = v6;
  v74 = 0;
  v30 = *(v66 + *(type metadata accessor for ModernPlaceCard(0) + 20));

  v33 = v122;
  v122[0] = v30;
  v31 = MEMORY[0x1E6981910];
  v32 = MEMORY[0x1E6981900];
  sub_1AC364ACC();
  v51 = 0;
  sub_1AC3B7BB4();
  sub_1AC367428(v33);
  v38 = v116;
  v116[0] = v122[1];
  v116[1] = v122[2];
  v71 = 1;
  v75 = 1;
  v117 = v123 & 1;
  v118 = v124;
  v119 = v125 & 1;
  v120 = v126;
  v121 = v127;
  v65 = 1;
  v7 = MEMORY[0x1E6980D50];
  v52 = MEMORY[0x1E6980D50];
  v35 = sub_1AC3B8574();
  v34 = v8;
  v9 = sub_1AC3B7924();
  v10 = v35;
  *v34 = v9;
  sub_1AC36EE1C(v10, v7);
  v36 = v11;
  v59 = sub_1AC39CB9C();
  sub_1AC3B8394();
  v37 = v115;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5553A0, &qword_1AC3BBC20);
  v40 = sub_1AC39CC14();
  sub_1AC3B7B04();
  sub_1AC367428(v38);
  v114[25] = v39;
  v114[26] = v40;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1AC35745C(v96, v103, v102);
  v105 = *(v84 + 8);
  v104 = v84 + 8;
  v105(v96, v103);
  v44 = sub_1AC3B7844();
  v42 = v107;
  v107[2] = v66;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5553B0, &qword_1AC3BBC28);
  sub_1AC39CCBC();
  v45 = &v113;
  sub_1AC3B7D84();
  v46 = v132;
  v47 = 88;
  memcpy(v132, v45, sizeof(v132));
  v53 = v112;
  memcpy(v112, v132, sizeof(v112));
  v48 = sub_1AC3B7E14();
  v49 = v12;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5553C0, &qword_1AC3BBC30);
  sub_1AC39CD44();
  v54 = v114;
  v72 = 0x7FF0000000000000;
  sub_1AC3B7BC4();
  v13 = v52;
  sub_1AC39CDCC(v53);
  v55 = __dst;
  v56 = 200;
  memcpy(__dst, v54, sizeof(__dst));
  v61 = v111;
  memcpy(v111, __dst, sizeof(v111));
  v58 = sub_1AC3B8574();
  v57 = v14;
  v15 = sub_1AC3B7924();
  v16 = v58;
  *v57 = v15;
  sub_1AC36EE1C(v16, v13);
  sub_1AC3B8394();
  v60 = v110;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5553D0, &qword_1AC3BBC38);
  v63 = sub_1AC39CE38();
  sub_1AC3B7B04();
  sub_1AC39CDCC(v61);
  v109[3] = v62;
  v109[4] = v63;
  v90 = swift_getOpaqueTypeConformance2();
  sub_1AC35745C(v95, v98, v101);
  v100 = *(v86 + 8);
  v99 = v86 + 8;
  v100(v95, v98);
  v70 = sub_1AC3B7854();
  v68 = v106;
  v106[2] = v66;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5553E0, &qword_1AC3BBC40);
  sub_1AC39CEE4();
  sub_1AC3B7D84();
  v76 = sub_1AC39CF6C();
  sub_1AC364ACC();
  sub_1AC3B7BC4();
  sub_1AC39CFF4(v77);
  sub_1AC3B7684();
  v78 = v17;
  v79 = v18;
  v80 = v19;
  v81 = v20;
  sub_1AC39D080();
  sub_1AC3B7BD4();
  sub_1AC39CFF4(v83);
  v91 = sub_1AC39D124();
  sub_1AC35745C(v94, v88, v97);
  sub_1AC39CFF4(v94);
  (*(v84 + 16))(v96, v102, v103);
  v93 = v109;
  v109[0] = v96;
  (*(v86 + 16))(v95, v101, v98);
  v109[1] = v95;
  sub_1AC39D1C8(v97, v94);
  v109[2] = v94;
  v108[0] = v103;
  v108[1] = v98;
  v108[2] = v88;
  v107[4] = OpaqueTypeConformance2;
  v107[5] = v90;
  v107[6] = v91;
  sub_1AC394250(v93, 3uLL, v108, v92);
  sub_1AC39CFF4(v94);
  v100(v95, v98);
  v105(v96, v103);
  sub_1AC39CFF4(v97);
  v100(v101, v98);
  return (v105)(v102, v103);
}

uint64_t sub_1AC398D24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  memset(v111, 0, 32);
  memset(v84, 0, 32);
  v112 = a1;
  v39 = type metadata accessor for ModernPlaceCard(0);
  v2 = (a1 + *(v39 + 24));
  v25 = *v2;
  v26 = v2[1];

  v109 = v25;
  v110 = v26;
  sub_1AC35FEAC();
  v105 = sub_1AC3B7A64();
  v106 = v3;
  v107 = v4;
  v108 = v5;
  v27 = v105;
  v28 = v3;
  v29 = v4;
  v30 = v5;
  sub_1AC3B7964();
  sub_1AC3B79A4();
  sub_1AC3B79C4();

  v101 = v27;
  v102 = v28;
  v103 = v29 & 1;
  v104 = v30;
  v97 = sub_1AC3B7A44();
  v98 = v6;
  v99 = v7;
  v100 = v8;
  v33 = v97;
  v31 = v6;
  v32 = v7;
  v34 = v8;

  sub_1AC364A88(v27, v28, v29 & 1);

  v9 = [objc_opt_self() labelColor];
  v96 = sub_1AC3B7C14();
  v92 = v33;
  v93 = v31;
  v94 = v32 & 1;
  v95 = v34;
  v88 = sub_1AC3B7A34();
  v89 = v10;
  v90 = v11;
  v91 = v12;
  v35 = v88;
  v36 = v10;
  v37 = v11;
  v38 = v12;
  sub_1AC367428(&v96);
  sub_1AC364A88(v33, v31, v32 & 1);

  v85[0] = v35;
  v85[1] = v36;
  v86 = v37 & 1;
  v87 = v38;
  v52 = MEMORY[0x1E6981148];
  sub_1AC35745C(v85, MEMORY[0x1E6981148], v111);
  sub_1AC367A04(v85);
  v13 = (a1 + *(v39 + 28));
  v41 = *v13;
  v42 = v13[1];

  v82 = v41;
  v83 = v42;
  v78 = sub_1AC3B7A64();
  v79 = v14;
  v80 = v15;
  v81 = v16;
  v43 = v14;
  v44 = v15;
  v45 = v16;
  sub_1AC3B79D4();
  sub_1AC3B7994();
  sub_1AC3B79C4();

  v74 = v78;
  v75 = v43;
  v76 = v44 & 1;
  v77 = v45;
  v70 = sub_1AC3B7A44();
  v71 = v17;
  v72 = v18;
  v73 = v19;
  v46 = v17;
  v47 = v18;
  v48 = v19;

  sub_1AC364A88(v78, v43, v44 & 1);

  v20 = [objc_opt_self() secondaryLabelColor];
  v69 = sub_1AC3B7C14();
  v65 = v70;
  v66 = v46;
  v67 = v47 & 1;
  v68 = v48;
  v61 = sub_1AC3B7A34();
  v62 = v21;
  v63 = v22;
  v64 = v23;
  v49 = v21;
  v50 = v22;
  v51 = v23;
  sub_1AC367428(&v69);
  sub_1AC364A88(v65, v46, v47 & 1);

  v58[0] = v61;
  v58[1] = v49;
  v59 = v50 & 1;
  v60 = v51;
  sub_1AC35745C(v58, v52, v84);
  sub_1AC367A04(v58);
  sub_1AC3682D4(v111, v56);
  v57[0] = v56;
  sub_1AC3682D4(v84, v55);
  v57[1] = v55;
  v54[0] = v52;
  v54[1] = v52;
  sub_1AC394250(v57, 2uLL, v54, a2);
  sub_1AC367A04(v55);
  sub_1AC367A04(v56);
  sub_1AC367A04(v84);
  return sub_1AC367A04(v111);
}

uint64_t sub_1AC399318@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v12 = a1;
  v21 = 0;
  v23 = sub_1AC39D338;
  v20 = sub_1AC399790;
  v48 = 0;
  v47 = 0;
  v25 = &v45;
  v45 = 0;
  v46 = 0;
  v24 = 0;
  v2 = type metadata accessor for ModernPlaceCard(0);
  v10 = *(v2 - 8);
  v15 = v10;
  v16 = *(v10 + 64);
  v11 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v18 = &v9 - v11;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5552A8, &qword_1AC3BBA78);
  v26 = *(v34 - 8);
  v27 = v34 - 8;
  v13 = (*(v26 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v32 = &v9 - v13;
  v14 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v33 = &v9 - v14;
  v48 = &v9 - v14;
  v47 = v5;
  sub_1AC39B9AC(v5, v6);
  v17 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v19 = swift_allocObject();
  sub_1AC39C6E0(v18, (v19 + v17));
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB555408, &qword_1AC3BBC48);
  sub_1AC39D39C();
  sub_1AC3B7D24();
  v29 = sub_1AC39D440();
  sub_1AC35745C(v32, v34, v33);
  v36 = *(v26 + 8);
  v35 = v26 + 8;
  v36(v32, v34);
  v43 = sub_1AC3B7D64();
  v44 = v7 & 1;
  v28 = MEMORY[0x1E6981840];
  v30 = MEMORY[0x1E6981838];
  sub_1AC35745C(&v43, MEMORY[0x1E6981840], v25);
  (*(v26 + 16))(v32, v33, v34);
  v42[0] = v32;
  v40 = v45;
  v41 = v46;
  v42[1] = &v40;
  v39[0] = v34;
  v39[1] = v28;
  v37 = v29;
  v38 = v30;
  sub_1AC394250(v42, 2uLL, v39, v31);
  v36(v32, v34);
  return (v36)(v33, v34);
}

uint64_t sub_1AC39971C(uint64_t a1)
{
  v3 = *(a1 + *(type metadata accessor for ModernPlaceCard(0) + 40));

  v3(v1);
}

void *sub_1AC399790@<X0>(uint64_t a1@<X8>)
{
  v50 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB554958, &unk_1AC3BAF30);
  v15 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v33 = &v15 - v15;
  v30 = 0;
  v26 = sub_1AC3B7C94();
  v24 = *(v26 - 8);
  v25 = v26 - 8;
  v16 = (*(v24 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v26);
  v27 = &v15 - v16;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB554DF0, "\nM");
  v17 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v18 = &v15 - v17;
  v31 = 1;
  sub_1AC3B7F54();
  v19 = sub_1AC3B7C84();
  sub_1AC3B7864();
  v3 = *(*(sub_1AC3B7874() - 8) + 56);
  v41 = 0;
  v3(v18);
  v28 = sub_1AC3B7CB4();
  sub_1AC388744(v18);

  v20 = sub_1AC399CE4();
  v21 = v4;
  v22 = v5;
  v23 = v6;
  sub_1AC399CF8(v27);
  v29 = sub_1AC3B7CC4();
  (*(v24 + 8))(v27, v26);

  v35 = v62;
  v62[0] = v29;
  sub_1AC3B7984();
  v32 = v7;
  v8 = sub_1AC3B7974();
  (*(*(v8 - 8) + 56))(v33, v31);
  v34 = sub_1AC3B79B4();
  sub_1AC367A4C(v33);
  sub_1AC3B7B84();

  sub_1AC367428(v35);
  v40 = v61;
  v61[0] = v62[1];
  v61[1] = v62[2];
  v61[2] = v62[3];
  v36 = 0x1E69DC000uLL;
  v9 = [objc_opt_self() tertiaryLabelColor];
  v10 = sub_1AC3B7C14();
  v39 = &v60;
  v60 = v10;
  v11 = [objc_opt_self() quaternaryLabelColor];
  v12 = sub_1AC3B7C14();
  v38 = &v59;
  v59 = v12;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB554DF8, "\nM");
  v13 = sub_1AC3887EC();
  MEMORY[0x1AC5B1E90](v63, v39, v38, v37, MEMORY[0x1E69815C0], MEMORY[0x1E69815C0], v13, MEMORY[0x1E6981568]);
  sub_1AC367428(v38);
  sub_1AC367428(v39);
  sub_1AC361CB4(v40);
  v44 = v58;
  v58[0] = v63[0];
  v58[1] = v63[1];
  v58[2] = v63[2];
  v58[3] = v63[3];
  v58[4] = v63[4];
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB554E08, &unk_1AC3BBC50);
  v43 = sub_1AC388890();
  sub_1AC364ACC();
  v45 = &v64;
  sub_1AC3B7BB4();
  sub_1AC368278(v44);
  v46 = __dst;
  v49 = 88;
  memcpy(__dst, v45, sizeof(__dst));
  v47 = v57;
  memcpy(v57, __dst, sizeof(v57));
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB555408, &qword_1AC3BBC48);
  v52 = sub_1AC39D39C();
  v54 = v65;
  sub_1AC35745C(v47, v51, v65);
  sub_1AC368278(v47);
  v48 = v67;
  memcpy(v67, v54, v49);
  sub_1AC39D4C8(v48, v56);
  v53 = v55;
  memcpy(v55, v48, v49);
  sub_1AC35745C(v53, v51, v50);
  sub_1AC368278(v53);
  result = v54;
  sub_1AC368278(v54);
  return result;
}