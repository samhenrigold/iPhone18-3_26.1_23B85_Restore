uint64_t sub_23BF834E4(void *a1)
{
  v3 = v1;
  v5 = sub_23BF4A264(&qword_27E1E17B8, &qword_23C004988);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  sub_23BF4C484(a1, a1[3]);
  sub_23BF8399C();
  sub_23BFFAE40();
  LOBYTE(v15) = 0;

  sub_23BFFAC10();
  if (v2)
  {
    (*(v6 + 8))(v8, v5);
  }

  else
  {

    LOBYTE(v15) = 1;
    sub_23BFFAC30();
    v17 = 8;
    sub_23BFFAC40();
    [*(v3 + 40) CAColorMatrixValue];
    sub_23BFD997C();
    v15 = v10;
    v16 = 2;
    sub_23BF4A264(&qword_27E1E1798, &qword_23C004978);
    sub_23BF83D74(&qword_27E1E17C0, MEMORY[0x277D83AA0], MEMORY[0x277D83948]);
    sub_23BFFAC50();

    v11 = *(v3 + 48);
    if (v11)
    {
      [v11 CAColorMatrixValue];
      sub_23BFD997C();
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v15 = v13;
    v16 = 3;
    sub_23BF4A264(&qword_27E1E17A8, &qword_23C004980);
    sub_23BF83DE0();
    sub_23BFFAC50();

    [*(v3 + 56) isComplexBackground];
    LOBYTE(v15) = 4;
    sub_23BFFAC20();
    [*(v3 + 56) isBright];
    LOBYTE(v15) = 5;
    sub_23BFFAC20();
    [*(v3 + 56) isBrightForVibrant];
    LOBYTE(v15) = 6;
    sub_23BFFAC20();
    [*(v3 + 56) isBrightForGlass];
    LOBYTE(v15) = 7;
    sub_23BFFAC20();
    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_23BF838AC()
{

  return swift_deallocClassInstance();
}

id sub_23BF83920@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for ParmesanAssetCompositionDerived();
  v5 = swift_allocObject();
  result = sub_23BF82F6C(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

unint64_t sub_23BF8399C()
{
  result = qword_27E1E1790;
  if (!qword_27E1E1790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E1790);
  }

  return result;
}

uint64_t sub_23BF839F0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7955819 && a2 == 0xE300000000000000;
  if (v3 || (sub_23BFFACC0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E696D6D6964 && a2 == 0xE700000000000000 || (sub_23BFFACC0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x800000023C00E010 == a2 || (sub_23BFFACC0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000019 && 0x800000023C00EE30 == a2 || (sub_23BFFACC0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000021 && 0x800000023C00EE60 == a2 || (sub_23BFFACC0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000016 && 0x800000023C00EE90 == a2 || (sub_23BFFACC0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000020 && 0x800000023C00EEB0 == a2 || (sub_23BFFACC0() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD00000000000001ELL && 0x800000023C00EEE0 == a2 || (sub_23BFFACC0() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 7697004 && a2 == 0xE300000000000000)
  {

    return 8;
  }

  else
  {
    v6 = sub_23BFFACC0();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

unint64_t sub_23BF83CCC()
{
  result = qword_27E1E17B0;
  if (!qword_27E1E17B0)
  {
    sub_23BF4A2D0(&qword_27E1E17A8, &qword_23C004980);
    sub_23BF83D74(&qword_27E1E17A0, MEMORY[0x277D83AC8], MEMORY[0x277D83978]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E17B0);
  }

  return result;
}

uint64_t sub_23BF83D74(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_23BF4A2D0(&qword_27E1E1798, &qword_23C004978);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23BF83DE0()
{
  result = qword_27E1E17C8;
  if (!qword_27E1E17C8)
  {
    sub_23BF4A2D0(&qword_27E1E17A8, &qword_23C004980);
    sub_23BF83D74(&qword_27E1E17C0, MEMORY[0x277D83AA0], MEMORY[0x277D83948]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E17C8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ParmesanAssetCompositionDerived.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ParmesanAssetCompositionDerived.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23BF83FDC()
{
  result = qword_27E1E17D0;
  if (!qword_27E1E17D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E17D0);
  }

  return result;
}

unint64_t sub_23BF84034()
{
  result = qword_27E1E17D8;
  if (!qword_27E1E17D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E17D8);
  }

  return result;
}

unint64_t sub_23BF8408C()
{
  result = qword_27E1E17E0;
  if (!qword_27E1E17E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E17E0);
  }

  return result;
}

id sub_23BF840E0()
{
  result = [objc_allocWithZone(type metadata accessor for ParmesanAnalyticsReporter()) init];
  qword_27E1EB588 = result;
  return result;
}

id sub_23BF841B8()
{
  result = [v0 selectedOptionForCustomEditMode:10 slot:@"time-color"];
  if (result)
  {
    v2 = result;
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (v3)
    {
      v4 = v3;
      v5 = [v3 optionName];
      v6 = sub_23BFFA300();
      v8 = v7;

      v17 = sub_23BFFA300();
      v19 = v9;
      sub_23BF66440();
      LOBYTE(v5) = sub_23BFFA950();

      if (v5)
      {
        v10 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      }

      else
      {
        v11 = [v4 optionName];
        v12 = sub_23BFFA300();
        v14 = v13;

        v18 = sub_23BFFA300();
        v20 = v15;
        LOBYTE(v11) = sub_23BFFA950();

        v10 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      }

      v16 = v10;

      return v16;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

id sub_23BF8439C(uint64_t a1, uint64_t (*a2)(void))
{
  result = [v2 selectedOptionForCustomEditMode:a1 slot:0];
  if (result)
  {
    v5 = result;
    a2(0);
    v6 = swift_dynamicCastClass();
    if (v6)
    {
      v7 = [v6 _value];

      result = v7;
      if (v7 != 2 && v7 != 1)
      {
        return 0;
      }
    }

    else
    {

      return 0;
    }
  }

  return result;
}

id sub_23BF844F8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ParmesanAnalyticsReporter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_23BF84554(uint64_t a1)
{
  if (*(a1 + OBJC_IVAR___NTKParmesanShuffleSelection_isDaily))
  {
    v1 = 0;
    return [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  }

  if (*(a1 + OBJC_IVAR___NTKParmesanShuffleSelection_shuffleTypes))
  {
    v1 = 1;
    return [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  }

  if (*(a1 + OBJC_IVAR___NTKParmesanShuffleSelection_collectionIdentifier + 8))
  {
    v1 = 2;
    return [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  }

  return 0;
}

id sub_23BF845E8(uint64_t a1)
{
  if (!*(a1 + OBJC_IVAR___NTKParmesanShuffleSelection_shuffleTypes))
  {
    return 0;
  }

  v2 = sub_23BFBAE20(v1);

  v3 = sub_23BFB8550(1, v2);
  if (sub_23BFB8550(2, v2))
  {
    v4 = v3 | 2;
  }

  else
  {
    v4 = v3;
  }

  if (sub_23BFB8550(3, v2))
  {
    v5 = v4 | 4;
  }

  else
  {
    v5 = v4;
  }

  v6 = sub_23BFB8550(4, v2);

  if (v6)
  {
    v7 = v5 | 8;
  }

  else
  {
    v7 = v5;
  }

  return [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
}

double sub_23BF846C8(void *a1)
{
  v2 = [objc_opt_self() sharedApplication];
  v3 = [v2 isRunningTest];

  if (v3)
  {
    return result;
  }

  v5 = sub_23BF841B8();
  if (!v5)
  {
    return result;
  }

  v28 = v5;
  v6 = sub_23BF8439C(12, type metadata accessor for ParmesanContentEditOption);
  if (v7)
  {
    goto LABEL_13;
  }

  v8 = v6;
  v27 = [a1 selectedOptionForCustomEditMode:15 slot:0];
  if (!v27)
  {
    goto LABEL_13;
  }

  type metadata accessor for ParmesanStyleEditOption();
  if (!swift_dynamicCastClass())
  {
    goto LABEL_17;
  }

  sub_23BFC42E0();

  sub_23BF8439C(13, type metadata accessor for ParmesanTypefaceEditOption);
  if (v9)
  {
    goto LABEL_13;
  }

  v27 = [a1 selectedOptionForCustomEditMode:19 slot:0];
  if (!v27)
  {
    goto LABEL_13;
  }

  type metadata accessor for ParmesanNumeralsEditOption();
  v10 = swift_dynamicCastClass();
  if (!v10)
  {
LABEL_17:

    v15 = v27;
    goto LABEL_14;
  }

  [v10 numeralOption];

  v27 = [a1 selectedOptionForCustomEditMode:14 slot:0];
  if (!v27)
  {
LABEL_13:
    v15 = v28;
LABEL_14:

    return result;
  }

  type metadata accessor for ParmesanTimeEditOption();
  if (!swift_dynamicCastClass())
  {
    goto LABEL_17;
  }

  sub_23BFA41AC();

  sub_23BF4A264(&qword_27E1E17F0, &qword_23C004B00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23C004AB0;
  *(inited + 32) = 0x726F6C6F43;
  *(inited + 40) = 0xE500000000000000;
  *(inited + 48) = v28;
  *(inited + 56) = 0x7079546F746F6850;
  *(inited + 64) = 0xE900000000000065;
  v12 = v28;
  *(inited + 72) = sub_23BFFA5E0();
  *(inited + 80) = 0x656C797453;
  *(inited + 88) = 0xE500000000000000;
  *(inited + 96) = sub_23BFFA5E0();
  *(inited + 104) = 0x746E6F46656D6954;
  *(inited + 112) = 0xE800000000000000;
  *(inited + 120) = sub_23BFFA5E0();
  *(inited + 128) = 0x69726353656D6954;
  *(inited + 136) = 0xEA00000000007470;
  *(inited + 144) = sub_23BFFA930();
  *(inited + 152) = 0x657A6953656D6954;
  *(inited + 160) = 0xE800000000000000;
  *(inited + 168) = sub_23BFFA5E0();
  sub_23BFE473C(inited);
  swift_setDeallocating();
  sub_23BF4A264(&qword_27E1E17F8, qword_23C004B08);
  swift_arrayDestroy();
  if (v8 == 1)
  {
LABEL_12:
    v13 = sub_23BFFA2C0();
    sub_23BF4BDF0(0, &qword_27E1E1BE0, 0x277D82BB8);
    v14 = sub_23BFFA260();

    AnalyticsSendEvent();

    return result;
  }

  v16 = [a1 resourceDirectory];
  if (v16)
  {
    v17 = v16;
    sub_23BFFA300();

    v18 = sub_23BFFA2C0();
  }

  else
  {
    v18 = 0;
  }

  v19 = [objc_opt_self() readerForResourceDirectory_];

  v20 = [v19 shuffleSelection];
  if (!v20)
  {
    goto LABEL_27;
  }

  v21 = sub_23BF84554(v20);
  if (!v21)
  {

LABEL_27:

    return result;
  }

  v22 = v21;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_23BFE8340(v22, 0x5463696D616E7964, 0xEB00000000657079, isUniquelyReferenced_nonNull_native);
  if ([v22 integerValue] != 1)
  {

    goto LABEL_12;
  }

  v24 = sub_23BF845E8(v20);
  if (v24)
  {
    v25 = v24;
    v26 = swift_isUniquelyReferenced_nonNull_native();
    sub_23BFE8340(v25, 0x54656C6666756873, 0xEB00000000657079, v26);

    goto LABEL_12;
  }

  return result;
}

double sub_23BF84C44(void *a1)
{
  v2 = [objc_opt_self() sharedApplication];
  v3 = [v2 isRunningTest];

  if (v3)
  {
    return result;
  }

  v5 = sub_23BF841B8();
  if (!v5)
  {
    return result;
  }

  v27 = v5;
  v6 = sub_23BF8439C(12, type metadata accessor for ParmesanContentEditOption);
  if (v7)
  {
    goto LABEL_13;
  }

  v8 = v6;
  v26 = [a1 selectedOptionForCustomEditMode:15 slot:0];
  if (!v26)
  {
    goto LABEL_13;
  }

  type metadata accessor for ParmesanStyleEditOption();
  if (!swift_dynamicCastClass())
  {
    goto LABEL_17;
  }

  sub_23BFC42E0();

  sub_23BF8439C(13, type metadata accessor for ParmesanTypefaceEditOption);
  if (v9)
  {
    goto LABEL_13;
  }

  v26 = [a1 selectedOptionForCustomEditMode:19 slot:0];
  if (!v26)
  {
    goto LABEL_13;
  }

  type metadata accessor for ParmesanNumeralsEditOption();
  v10 = swift_dynamicCastClass();
  if (!v10)
  {
LABEL_17:

    v14 = v26;
    goto LABEL_14;
  }

  [v10 numeralOption];

  v26 = [a1 selectedOptionForCustomEditMode:14 slot:0];
  if (!v26)
  {
LABEL_13:
    v14 = v27;
LABEL_14:

    return result;
  }

  type metadata accessor for ParmesanTimeEditOption();
  if (!swift_dynamicCastClass())
  {
    goto LABEL_17;
  }

  sub_23BFA41AC();

  sub_23BF4A264(&qword_27E1E17F0, &qword_23C004B00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23C003D00;
  *(inited + 32) = 0x726F6C6F43;
  *(inited + 40) = 0xE500000000000000;
  *(inited + 48) = v27;
  *(inited + 56) = 0xD000000000000011;
  *(inited + 64) = 0x800000023C00EFB0;
  sub_23BF4BDF0(0, &qword_27E1E0C68, 0x277CCABB0);
  v28 = v27;
  *(inited + 72) = sub_23BFFA850();
  *(inited + 80) = 0x7079546F746F6870;
  *(inited + 88) = 0xE900000000000065;
  *(inited + 96) = sub_23BFFA5E0();
  *(inited + 104) = 0x656C797453;
  *(inited + 112) = 0xE500000000000000;
  *(inited + 120) = sub_23BFFA5E0();
  *(inited + 128) = 0x746E6F46656D6954;
  *(inited + 136) = 0xE800000000000000;
  *(inited + 144) = sub_23BFFA5E0();
  *(inited + 152) = 0x69726353656D6954;
  *(inited + 160) = 0xEA00000000007470;
  *(inited + 168) = sub_23BFFA930();
  *(inited + 176) = 0x657A6953656D6954;
  *(inited + 184) = 0xE800000000000000;
  *(inited + 192) = sub_23BFFA5E0();
  sub_23BFE473C(inited);
  swift_setDeallocating();
  sub_23BF4A264(&qword_27E1E17F8, qword_23C004B08);
  swift_arrayDestroy();
  if (v8 == 1)
  {
LABEL_12:
    v12 = sub_23BFFA2C0();
    sub_23BF4BDF0(0, &qword_27E1E1BE0, 0x277D82BB8);
    v13 = sub_23BFFA260();

    AnalyticsSendEvent();

    return result;
  }

  v15 = [a1 resourceDirectory];
  if (v15)
  {
    v16 = v15;
    sub_23BFFA300();

    v17 = sub_23BFFA2C0();
  }

  else
  {
    v17 = 0;
  }

  v18 = [objc_opt_self() readerForResourceDirectory_];

  v19 = [v18 shuffleSelection];
  if (!v19)
  {
    goto LABEL_27;
  }

  v20 = sub_23BF84554(v19);
  if (!v20)
  {

LABEL_27:

    return result;
  }

  v21 = v20;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_23BFE8340(v21, 0x5463696D616E7964, 0xEB00000000657079, isUniquelyReferenced_nonNull_native);
  if ([v21 integerValue] != 1)
  {

    goto LABEL_12;
  }

  v23 = sub_23BF845E8(v19);
  if (v23)
  {
    v24 = v23;
    v25 = swift_isUniquelyReferenced_nonNull_native();
    sub_23BFE8340(v24, 0x54656C6666756873, 0xEB00000000657079, v25);

    goto LABEL_12;
  }

  return result;
}

void *sub_23BF852AC()
{
  v1 = OBJC_IVAR___NTKParmesanGalleryComposition__cachedLayoutCompositeImage;
  v2 = *(v0 + OBJC_IVAR___NTKParmesanGalleryComposition__cachedLayoutCompositeImage);
  v3 = v2;
  if (v2)
  {
    goto LABEL_19;
  }

  if ((*(v0 + OBJC_IVAR___NTKParmesanGalleryComposition__alreadyLoadedLayoutComposite) & 1) != 0 || (*(v0 + OBJC_IVAR___NTKParmesanGalleryComposition__alreadyLoadedLayoutComposite) = 1, v4 = MEMORY[0x277D85000], (v5 = (*((*MEMORY[0x277D85000] & *v0) + 0xB8))()) == 0))
  {
    v3 = 0;
LABEL_19:
    v18 = v2;
    return v3;
  }

  v6 = v5;
  v7 = (*((*v4 & *v0) + 0xC8))();
  if (!v7)
  {
    v3 = 0;
LABEL_18:

    goto LABEL_19;
  }

  v8 = v7;
  v3 = (*((*v4 & *v0) + 0xD0))();
  if (!v3)
  {

    v6 = v8;
    goto LABEL_18;
  }

  v9 = *&v8[OBJC_IVAR___NTKParmesanAssetMask_style];
  if (!v9)
  {
    v10 = [v6 CGImage];
    if (v10)
    {
      v11 = v10;
      v12 = [v3 CGImage];
      if (v12)
      {
        v13 = v12;
        [v6 imageOrientation];
        v14 = NTKUIImageOrientationToCGImagePropertyOrientation();
        [v3 imageOrientation];
        v15 = NTKUIImageOrientationToCGImagePropertyOrientation();
        v16 = sub_23BF2AEF0(v11, v14, v13, v15);

        v3 = v16;
LABEL_17:
        v6 = *(v0 + v1);
        *(v0 + v1) = v3;
        v17 = v3;
        goto LABEL_18;
      }
    }

    v3 = 0;
    goto LABEL_17;
  }

  if (v9 == 1)
  {

    goto LABEL_17;
  }

  result = sub_23BFFACF0();
  __break(1u);
  return result;
}

CGImage *sub_23BF854F4()
{
  v1 = OBJC_IVAR___NTKParmesanGalleryComposition__cachedLayoutAlphaImage;
  v2 = *(v0 + OBJC_IVAR___NTKParmesanGalleryComposition__cachedLayoutAlphaImage);
  v3 = v2;
  if (!v2)
  {
    if ((*(v0 + OBJC_IVAR___NTKParmesanGalleryComposition__alreadyLoadedLayoutAlpha) & 1) == 0)
    {
      *(v0 + OBJC_IVAR___NTKParmesanGalleryComposition__alreadyLoadedLayoutAlpha) = 1;
      v4 = MEMORY[0x277D85000];
      v5 = (*((*MEMORY[0x277D85000] & *v0) + 0xC8))();
      if (v5)
      {
        v6 = v5;
        v7 = (*((*v4 & *v0) + 0xD0))();
        if (!v7)
        {
          v3 = 0;
          goto LABEL_11;
        }

        if (*&v6[OBJC_IVAR___NTKParmesanAssetMask_style])
        {
        }

        else
        {
          v11 = v7;
          v12 = [v11 CGImage];
          v3 = v12;
          if (!v12)
          {

            goto LABEL_8;
          }

          v13 = CGImageGetDataProvider(v12);
          if (v13)
          {
            v14 = v13;
            width = CGImageGetWidth(v3);
            Height = CGImageGetHeight(v3);
            BitsPerComponent = CGImageGetBitsPerComponent(v3);
            BitsPerPixel = CGImageGetBitsPerPixel(v3);
            BytesPerRow = CGImageGetBytesPerRow(v3);
            v19 = CGImageMaskCreate(width, Height, BitsPerComponent, BitsPerPixel, BytesPerRow, v14, 0, 0);

            if (v19)
            {
              [v11 scale];
              v21 = v20;
              v22 = [v11 imageOrientation];
              v3 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage:v19 scale:v22 orientation:v21];

              goto LABEL_8;
            }
          }

          else
          {
          }
        }

        v3 = 0;
LABEL_8:
        v6 = *(v0 + v1);
        *(v0 + v1) = v3;
        v8 = v3;
LABEL_11:

        goto LABEL_12;
      }
    }

    v3 = 0;
  }

LABEL_12:
  v9 = v2;
  return v3;
}

uint64_t sub_23BF8574C()
{
  type metadata accessor for ParmesanGalleryContentConfiguration();
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  *(v1 + 24) = 257;
  v2 = v0;
  return v1;
}

id sub_23BF85794(uint64_t a1, uint64_t a2)
{
  v2 = NTKDefaultMonochromeColorMatrix();

  return v2;
}

uint64_t sub_23BF85830()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR___NTKParmesanGalleryComposition_timeLayout);
  sub_23BF6D720();
  v3 = v2;
  v9 = sub_23BFFAC70();
  v11 = v4;
  MEMORY[0x23EEC3090](45, 0xE100000000000000);
  sub_23BF6D774();
  v5 = sub_23BFFAC70();
  MEMORY[0x23EEC3090](v5);

  v6 = v9;
  v7 = sub_23BFFAC70();
  MEMORY[0x23EEC3090](v7);

  v10 = *(v1 + OBJC_IVAR___NTKParmesanGalleryComposition_localIdentifier);

  MEMORY[0x23EEC3090](45, 0xE100000000000000);
  MEMORY[0x23EEC3090](v6, v11);

  MEMORY[0x23EEC3090](45, 0xE100000000000000);
  MEMORY[0x23EEC3090](0x736C6172656D756ELL, 0xE90000000000002DLL);

  return v10;
}

uint64_t sub_23BF85A04(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_23BFFAE00();
  sub_23BFFA3A0();
  v4 = *(v2 + OBJC_IVAR___NTKParmesanGalleryComposition_timeLayout);
  sub_23BFFA890();

  MEMORY[0x23EEC3A60](*(v3 + OBJC_IVAR___NTKParmesanGalleryComposition_numerals));
  return sub_23BFFADE0();
}

BOOL sub_23BF85A88(uint64_t a1)
{
  sub_23BF6D608(a1, v9);
  if (v10)
  {
    type metadata accessor for ParmesanGalleryComposition();
    if (swift_dynamicCast())
    {
      v2 = *(v1 + OBJC_IVAR___NTKParmesanGalleryComposition_localIdentifier) == *&v8[OBJC_IVAR___NTKParmesanGalleryComposition_localIdentifier] && *(v1 + OBJC_IVAR___NTKParmesanGalleryComposition_localIdentifier + 8) == *&v8[OBJC_IVAR___NTKParmesanGalleryComposition_localIdentifier + 8];
      if (v2 || (sub_23BFFACC0() & 1) != 0)
      {
        v3 = *(v1 + OBJC_IVAR___NTKParmesanGalleryComposition_timeLayout);
        v4 = *&v8[OBJC_IVAR___NTKParmesanGalleryComposition_timeLayout];
        if (*(v3 + OBJC_IVAR___NTKParmesanTimeLayout_alignment) == *(v4 + OBJC_IVAR___NTKParmesanTimeLayout_alignment) && *(v3 + OBJC_IVAR___NTKParmesanTimeLayout_scale) == *(v4 + OBJC_IVAR___NTKParmesanTimeLayout_scale))
        {
          v5 = *(v1 + OBJC_IVAR___NTKParmesanGalleryComposition_numerals);
          v6 = *&v8[OBJC_IVAR___NTKParmesanGalleryComposition_numerals];

          return v5 == v6;
        }
      }
    }
  }

  else
  {
    sub_23BF6D5A0(v9);
  }

  return 0;
}

id sub_23BF85C44(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ParmesanGalleryComposition();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t type metadata accessor for ParmesanFacePreviewDataSource(uint64_t a1)
{
  result = qword_27E1E1838;
  if (!qword_27E1E1838)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23BF85D9C()
{
  sub_23BFFAD90();
  MEMORY[0x23EEC3A60](0);
  return sub_23BFFADF0();
}

uint64_t sub_23BF85E08(uint64_t a1)
{
  sub_23BFFAD90();
  MEMORY[0x23EEC3A60](0);
  return sub_23BFFADF0();
}

uint64_t sub_23BF85E5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_23BFF8E50();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23BFF8E00();
  (*(v5 + 8))(v7, v4);
  return 1;
}

uint64_t sub_23BF85F34(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_23BFF8E50();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v18 - v12;
  sub_23BFF8E00();
  sub_23BFF8E00();
  v14 = a3;
  v15 = a1;
  sub_23BF86250(v13, v10);

  v16 = *(v8 + 8);
  v16(v10, v7);
  return (v16)(v13, v7);
}

id sub_23BF8607C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ParmesanFacePreviewDataSource(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t getEnumTagSinglePayload for ParmesanFacePreviewSection(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for ParmesanFacePreviewSection(_WORD *result, int a2, int a3)
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

unint64_t sub_23BF861FC()
{
  result = qword_27E1E1848;
  if (!qword_27E1E1848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E1848);
  }

  return result;
}

void *sub_23BF86250(uint64_t a1, uint64_t a2)
{
  v2 = sub_23BF4A264(&qword_27E1E0988, qword_23C004CA0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - v4;
  result = sub_23BFF9570();
  v7 = v21;
  if (v21)
  {
    v8 = v20;
    sub_23BFF8E50();
    sub_23BF86508();
    if (sub_23BFFA2B0())
    {
    }

    else
    {
      v19 = v3;
      sub_23BFF95E0();
      sub_23BF4A264(&unk_27E1E0990, qword_23C002190);
      v9 = swift_allocObject();
      v18 = xmmword_23C001BB0;
      *(v9 + 16) = xmmword_23C001BB0;
      *(v9 + 32) = v8;
      *(v9 + 40) = v7;

      sub_23BFF94B0();

      sub_23BFF9570();
      v10 = v21;
      if (v21)
      {
        v17 = v20;
        v11 = sub_23BFF8E10();
        v12 = sub_23BFF8E10();
        v13 = swift_allocObject();
        *(v13 + 16) = v18;
        *(v13 + 32) = v8;
        *(v13 + 40) = v7;
        v20 = v17;
        v21 = v10;
        if (v12 >= v11)
        {
          sub_23BFF94C0();
        }

        else
        {
          sub_23BFF94D0();
        }
      }

      else
      {
        v14 = swift_allocObject();
        *(v14 + 16) = v18;
        *(v14 + 32) = v8;
        *(v14 + 40) = v7;
        LOBYTE(v20) = sub_23BFF8E40() != 0;
        sub_23BFF94A0();
      }

      v15 = v19;
      sub_23BFF95C0();
      return (*(v15 + 8))(v5, v2);
    }
  }

  return result;
}

unint64_t sub_23BF86508()
{
  result = qword_27E1E1850;
  if (!qword_27E1E1850)
  {
    sub_23BFF8E50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E1850);
  }

  return result;
}

uint64_t sub_23BF865B8(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 == 2 || a1 == 3)
    {
      goto LABEL_9;
    }
  }

  else if (!a1 || a1 == 1)
  {
LABEL_9:
    sub_23BF700D8();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v2 = sub_23BFFA2C0();
    v3 = sub_23BFFA2C0();
    v4 = [ObjCClassFromMetadata localizedStringForKey:v2 comment:v3];

    v5 = sub_23BFFA300();
    return v5;
  }

  result = sub_23BFFACF0();
  __break(1u);
  return result;
}

uint64_t sub_23BF86794()
{
  v1 = *(v0 + OBJC_IVAR___NTKParmesanTimeLayout_scale);
  if (v1 >= 3)
  {
    if (v1 == 3 && *(v0 + OBJC_IVAR___NTKParmesanTimeLayout_alignment) <= 1uLL)
    {
      goto LABEL_6;
    }
  }

  else if (*(v0 + OBJC_IVAR___NTKParmesanTimeLayout_alignment) <= 1uLL)
  {
LABEL_6:
    sub_23BF700D8();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v3 = sub_23BFFA2C0();
    v4 = sub_23BFFA2C0();
    v5 = [ObjCClassFromMetadata localizedStringForKey:v3 comment:v4];

    v6 = sub_23BFFA300();
    return v6;
  }

  result = sub_23BFFACF0();
  __break(1u);
  return result;
}

id sub_23BF86924(double a1, double a2, double a3, double a4)
{
  v9 = type metadata accessor for ParmesanPoint();
  v10 = objc_allocWithZone(v9);
  *&v10[OBJC_IVAR___NTKParmesanPoint_x] = a1;
  *&v10[OBJC_IVAR___NTKParmesanPoint_y] = a2;
  v16.receiver = v10;
  v16.super_class = v9;
  *&v4[OBJC_IVAR___NTKParmesanCrop_origin] = objc_msgSendSuper2(&v16, sel_init);
  v11 = type metadata accessor for ParmesanSize();
  v12 = objc_allocWithZone(v11);
  *&v12[OBJC_IVAR___NTKParmesanSize_width] = a3;
  *&v12[OBJC_IVAR___NTKParmesanSize_height] = a4;
  v15.receiver = v12;
  v15.super_class = v11;
  *&v4[OBJC_IVAR___NTKParmesanCrop_size] = objc_msgSendSuper2(&v15, sel_init);
  v14.receiver = v4;
  v14.super_class = type metadata accessor for ParmesanCrop();
  return objc_msgSendSuper2(&v14, sel_init);
}

uint64_t sub_23BF86B70()
{
  if (*v0)
  {
    return 1702521203;
  }

  else
  {
    return 0x6E696769726FLL;
  }
}

uint64_t sub_23BF86BA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E696769726FLL && a2 == 0xE600000000000000;
  if (v6 || (sub_23BFFACC0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1702521203 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_23BFFACC0();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_23BF86C78(uint64_t a1)
{
  v2 = sub_23BF872E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23BF86CB4(uint64_t a1)
{
  v2 = sub_23BF872E4();

  return MEMORY[0x2821FE720](a1, v2);
}

id sub_23BF86CF0(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ParmesanCrop();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_23BF86D94(void *a1)
{
  v3 = v1;
  v5 = sub_23BF4A264(&qword_27E1E1888, &qword_23C004D38);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  sub_23BF4C484(a1, a1[3]);
  sub_23BF872E4();
  sub_23BFFAE40();
  v11 = *(v3 + OBJC_IVAR___NTKParmesanCrop_origin);
  HIBYTE(v10) = 0;
  type metadata accessor for ParmesanPoint();
  sub_23BF87338(&qword_27E1E1890, type metadata accessor for ParmesanPoint, &unk_23C007C30);
  sub_23BFFAC50();
  if (!v2)
  {
    v11 = *(v3 + OBJC_IVAR___NTKParmesanCrop_size);
    HIBYTE(v10) = 1;
    type metadata accessor for ParmesanSize();
    sub_23BF87338(&qword_27E1E1898, type metadata accessor for ParmesanSize, &unk_23C00424C);
    sub_23BFFAC50();
  }

  return (*(v6 + 8))(v8, v5);
}

char *sub_23BF86FA8(void *a1)
{
  v3 = v1;
  v5 = sub_23BF4A264(&qword_27E1E1868, &qword_23C004D30);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  sub_23BF4C484(a1, a1[3]);
  sub_23BF872E4();
  sub_23BFFAE20();
  if (v2)
  {
    sub_23BF4A9A4(a1);
    type metadata accessor for ParmesanCrop();
    swift_deallocPartialClassInstance();
  }

  else
  {
    type metadata accessor for ParmesanPoint();
    v13 = 0;
    sub_23BF87338(&qword_27E1E1878, type metadata accessor for ParmesanPoint, &unk_23C007C58);
    sub_23BFFABE0();
    *(v1 + OBJC_IVAR___NTKParmesanCrop_origin) = v14;
    type metadata accessor for ParmesanSize();
    v13 = 1;
    sub_23BF87338(&qword_27E1E1880, type metadata accessor for ParmesanSize, &unk_23C004274);
    sub_23BFFABE0();
    *(v1 + OBJC_IVAR___NTKParmesanCrop_size) = v14;
    v10 = type metadata accessor for ParmesanCrop();
    v12.receiver = v1;
    v12.super_class = v10;
    v3 = objc_msgSendSuper2(&v12, sel_init);
    (*(v6 + 8))(v8, v5);
    sub_23BF4A9A4(a1);
  }

  return v3;
}

char *sub_23BF8726C@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for ParmesanCrop());
  result = sub_23BF86FA8(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_23BF872E4()
{
  result = qword_27E1E1870;
  if (!qword_27E1E1870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E1870);
  }

  return result;
}

uint64_t sub_23BF87338(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_23BF87394()
{
  result = qword_27E1E18A0;
  if (!qword_27E1E18A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E18A0);
  }

  return result;
}

unint64_t sub_23BF873EC()
{
  result = qword_27E1E18A8;
  if (!qword_27E1E18A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E18A8);
  }

  return result;
}

unint64_t sub_23BF87444()
{
  result = qword_27E1E18B0;
  if (!qword_27E1E18B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E18B0);
  }

  return result;
}

unint64_t sub_23BF874AC()
{
  result = qword_27E1E18B8;
  if (!qword_27E1E18B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E18B8);
  }

  return result;
}

void sub_23BF87500(double a1)
{
  v2 = *v1;
  if (*(v2 + 32) == a1)
  {
    *(v2 + 32) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_23BF87D44();
    sub_23BFF91B0();
  }
}

uint64_t sub_23BF875EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_23BF4A264(&qword_27E1E18D0, &qword_23C004F68);
  MEMORY[0x28223BE20](v6);
  v8 = &v26 - v7;
  swift_getKeyPath();
  v27 = a2;
  sub_23BF87D44();
  sub_23BFF91C0();

  v9 = *(a2 + 32);
  swift_getKeyPath();
  v27 = a2;
  sub_23BFF91C0();

  CLKCompressFraction();
  v11 = 1.0 - v10;
  if (qword_27E1DFDF0 != -1)
  {
    swift_once();
  }

  *&v10 = v11;
  [qword_27E1EB5A0 _solveForInput_];
  v13 = v12;
  swift_getKeyPath();
  v27 = a2;
  sub_23BFF91C0();

  CLKCompressFraction();
  if (qword_27E1DFDF8 != -1)
  {
    v25 = v14;
    swift_once();
    v14 = v25;
  }

  *&v14 = v14;
  [qword_27E1EB5A8 _solveForInput_];
  v16 = v15;
  v17 = sub_23BF97C8C();
  v18 = sub_23BFF9C20();
  KeyPath = swift_getKeyPath();
  v20 = sub_23BF4A264(&qword_27E1E18E0, &qword_23C004FC8);
  (*(*(v20 - 8) + 16))(v8, a1, v20);
  v21 = &v8[*(v6 + 36)];
  *v21 = KeyPath;
  v21[1] = v18;
  if (v9 >= 0.5)
  {
    v22 = v16;
  }

  else
  {
    v22 = v13;
  }

  v23 = v22;
  sub_23BF87D9C(v8, a3);
  result = sub_23BF4A264(&qword_27E1E18E8, qword_23C004FD0);
  *(a3 + *(result + 36)) = v23;
  return result;
}

double sub_23BF878B8@<D0>(double *a1@<X8>)
{
  v3 = *v1;
  swift_getKeyPath();
  sub_23BF87D44();
  sub_23BFF91C0();

  result = *(v3 + 32);
  *a1 = result;
  return result;
}

void (*sub_23BF87938(uint64_t *a1))(double **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  *(v3 + 16) = *v1;
  swift_getKeyPath();
  v4[3] = OBJC_IVAR____TtCV30NTKParmesanFaceBundleCompanion9TimeLabel18TransitioningFonts___observationRegistrar;
  v4[1] = v5;
  v4[4] = sub_23BF87D44();
  sub_23BFF91C0();

  *v4 = *(v5 + 32);
  return sub_23BF87A04;
}

void sub_23BF87A04(double **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 2);
  v4 = **a1;
  v5 = *(v3 + 32);
  if ((a2 & 1) == 0)
  {
    if (v5 != v4)
    {
      goto LABEL_3;
    }

LABEL_5:
    *(v3 + 32) = v4;
    goto LABEL_6;
  }

  if (v5 == v4)
  {
    goto LABEL_5;
  }

LABEL_3:
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  *(v2 + 1) = v3;
  sub_23BFF91B0();

LABEL_6:
  free(v2);
}

unint64_t sub_23BF87B60()
{
  result = qword_27E1E18C0;
  if (!qword_27E1E18C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E18C0);
  }

  return result;
}

unint64_t sub_23BF87BB8()
{
  result = qword_27E1E18C8;
  if (!qword_27E1E18C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E18C8);
  }

  return result;
}

uint64_t sub_23BF87C28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_23BF87E0C();

  return MEMORY[0x28212DFC8](a1, a2, a3, a4, a5, v10);
}

uint64_t sub_23BF87CA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_23BF87E0C();

  return MEMORY[0x28212DFC0](a1, a2, a3, a4, a5, v10);
}

unint64_t sub_23BF87D44()
{
  result = qword_27E1E18D8;
  if (!qword_27E1E18D8)
  {
    _s18TransitioningFontsCMa(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E18D8);
  }

  return result;
}

uint64_t sub_23BF87D9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23BF4A264(&qword_27E1E18D0, &qword_23C004F68);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_23BF87E0C()
{
  result = qword_27E1E18F0;
  if (!qword_27E1E18F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E18F0);
  }

  return result;
}

unint64_t sub_23BF87E80()
{
  result = qword_27E1E18F8;
  if (!qword_27E1E18F8)
  {
    sub_23BF4A2D0(&qword_27E1E18E8, qword_23C004FD0);
    sub_23BF87F0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E18F8);
  }

  return result;
}

unint64_t sub_23BF87F0C()
{
  result = qword_27E1E1900;
  if (!qword_27E1E1900)
  {
    sub_23BF4A2D0(&qword_27E1E18D0, &qword_23C004F68);
    sub_23BF4BE40(&qword_27E1E1908, &qword_27E1E18E0, &qword_23C004FC8, MEMORY[0x277CE04B0]);
    sub_23BF4BE40(&qword_27E1E0FC8, &qword_27E1E0FD0, qword_23C005000, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E1900);
  }

  return result;
}

uint64_t sub_23BF885B0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_23BF4A264(&qword_27E1E0B80, &qword_23C002400);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v20 - v8;
  sub_23BF7D960(a1, &v20 - v8);
  v10 = sub_23BFF8D90();
  v11 = *(v10 - 8);
  v12 = 0;
  if ((*(v11 + 48))(v9, 1, v10) != 1)
  {
    v12 = sub_23BFF8D60();
    (*(v11 + 8))(v9, v10);
  }

  v13 = type metadata accessor for ParmesanMiniClockView();
  v20.receiver = v2;
  v20.super_class = v13;
  objc_msgSendSuper2(&v20, sel_setOverrideDate_, v12);

  v14 = *&v2[OBJC_IVAR___NTKParmesanMiniClockView_digitalTimeView];
  if (v14)
  {
    v15 = v14;
    v16 = [v2 overrideDate];
    if (v16)
    {
      v17 = v16;
      sub_23BFF8D80();

      v18 = 0;
    }

    else
    {
      v18 = 1;
    }

    (*(v11 + 56))(v6, v18, 1, v10);
    sub_23BFF08BC(v6);
  }

  return sub_23BF88F64(a1);
}

id sub_23BF88970(double a1)
{
  result = [v1 configuration];
  if (result)
  {
    v4 = result;
    type metadata accessor for ParmesanMiniClockViewConfiguration();
    v5 = swift_dynamicCastClassUnconditional();
    v6 = sub_23BF88C34(v5, a1);
    v7 = sub_23BF88B3C(v5);
    v9 = v8;
    v10 = *(v5 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion34ParmesanMiniClockViewConfiguration_scale);
    v11 = CLKLocaleNumberSystemFromNumeralOption();
    v12 = type metadata accessor for ParmesanMiniClockDigitalTimeViewConfiguration();
    v13 = objc_allocWithZone(v12);
    v14 = v13;
    *&v13[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion45ParmesanMiniClockDigitalTimeViewConfiguration_font] = v6;
    v15 = &v13[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion45ParmesanMiniClockDigitalTimeViewConfiguration_style];
    *v15 = v7;
    v15[8] = v9;
    if (v10 == 3)
    {
      v13[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion45ParmesanMiniClockDigitalTimeViewConfiguration_arrangement] = 3;
      v16 = v6;
      sub_23BF674B4(v7, v9);
      if (CLKLayoutIsRTL())
      {
        v17 = 2;
      }

      else
      {
        v17 = 0;
      }

      v14[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion45ParmesanMiniClockDigitalTimeViewConfiguration_alignment] = v17;
    }

    else
    {
      v13[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion45ParmesanMiniClockDigitalTimeViewConfiguration_arrangement] = 2;
      v13[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion45ParmesanMiniClockDigitalTimeViewConfiguration_alignment] = 1;
      v18 = v6;
      sub_23BF674B4(v7, v9);
    }

    *&v14[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion45ParmesanMiniClockDigitalTimeViewConfiguration_forcedNumberSystem] = v11;
    v20.receiver = v14;
    v20.super_class = v12;
    v19 = objc_msgSendSuper2(&v20, sel_init);

    sub_23BF674C8(v7, v9);
    return v19;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_23BF88B3C(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion34ParmesanMiniClockViewConfiguration_style);
  v2 = *(a1 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion34ParmesanMiniClockViewConfiguration_style + 8);
  sub_23BF674B4(v1, v2);
  if (qword_27E1DFE18 != -1)
  {
    swift_once();
  }

  if (byte_27E1E1D60 != 1 || v2 != 0)
  {
    sub_23BF674C8(v1, v2);
    if (v2 == 1)
    {
      return v1;
    }

    else
    {
      return [objc_opt_self() whiteColor];
    }
  }

  return v1;
}

id sub_23BF88C34(uint64_t a1, double a2)
{
  v5 = *(a1 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion34ParmesanMiniClockViewConfiguration_numerals);
  type metadata accessor for ParmesanNumeralsEditOption();
  if (([swift_getObjCClassFromMetadata() isPartiallySupported_] & 1) == 0)
  {
    v18 = *(v2 + OBJC_IVAR___NTKParmesanMiniClockView_layoutConstants + 48);
    v17 = *(v2 + OBJC_IVAR___NTKParmesanMiniClockView_layoutConstants);
    v8 = sub_23BFA370C(a1, a2);
    v9 = v8;
    v10 = *(a1 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion34ParmesanMiniClockViewConfiguration_typeface);
    v11 = *(a1 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion34ParmesanMiniClockViewConfiguration_style);
    v12 = *(a1 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion34ParmesanMiniClockViewConfiguration_style + 8);
    if (*(a1 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion34ParmesanMiniClockViewConfiguration_scale) == 3)
    {
      v13 = *(&v18 + 1);
    }

    else
    {
      v13 = *&v17;
      if (v10 == 2)
      {
        v13 = *&v17 * 0.85;
      }

      else if (v10 == 1)
      {
        v13 = *&v17 * 0.75;
      }

      else if (v10)
      {
        result = sub_23BFFACF0();
        __break(1u);
        return result;
      }
    }

    v14 = sub_23BF6B70C(v8, 0.0);
    v15 = sub_23BF67110(v11, v12, v14, v10);

    v16 = [objc_opt_self() fontWithDescriptor:v15 size:v13];

    return v16;
  }

  v6 = [objc_opt_self() numericSoftFontOfSize:*(v2 + OBJC_IVAR___NTKParmesanMiniClockView_layoutConstants) * 0.45 weight:*MEMORY[0x277D74410]];

  return v6;
}

id sub_23BF88E94(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ParmesanMiniClockView();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_23BF88F64(uint64_t a1)
{
  v2 = sub_23BF4A264(&qword_27E1E0B80, &qword_23C002400);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23BF88FCC(uint64_t a1, uint64_t a2)
{
  v4 = sub_23BF4A264(&qword_27E1E0B80, &qword_23C002400);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_23BF8903C()
{
  v1 = v0;
  v2 = sub_23BF88970(0.0);
  v3 = OBJC_IVAR___NTKParmesanMiniClockView_digitalTimeView;
  v4 = *&v0[OBJC_IVAR___NTKParmesanMiniClockView_digitalTimeView];
  if (v4)
  {
    v5 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion32ParmesanMiniClockDigitalTimeView_configuration;
    v6 = *&v4[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion32ParmesanMiniClockDigitalTimeView_configuration];
    v18 = v2;
    type metadata accessor for ParmesanMiniClockDigitalTimeViewConfiguration();
    v7 = v4;
    v8 = v6;
    v9 = sub_23BFFA880();

    if ((v9 & 1) == 0)
    {
      v10 = *&v4[v5];
      *&v4[v5] = v18;
      v18 = v18;

      sub_23BFF128C();
    }

    v11 = v18;
  }

  else
  {
    v12 = v2;
    v13 = [v0 clockTimer];
    v14 = objc_allocWithZone(type metadata accessor for ParmesanMiniClockDigitalTimeView(0));
    v15 = sub_23BFF0A7C(v12, v13);
    sub_23BFF07E4([v1 state]);
    v16 = *&v15[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion32ParmesanMiniClockDigitalTimeView_configuration];
    *&v15[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion32ParmesanMiniClockDigitalTimeView_configuration] = v12;
    v17 = v12;

    sub_23BFF128C();
    [v1 addSubview_];

    v11 = *&v1[v3];
    *&v1[v3] = v15;
  }
}

uint64_t sub_23BF8931C(uint64_t a1, uint64_t a2)
{
  sub_23BFFAE00();
  MEMORY[0x23EEC3A60]([*(v2 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_layout) hash]);
  MEMORY[0x23EEC3A60](*(v2 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_typeface));
  MEMORY[0x23EEC3A60](*(v2 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_numerals));
  v3 = *(v2 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_style);
  if (*(v2 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_style + 8))
  {
    if (*(v2 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_style + 8) == 1)
    {
      MEMORY[0x23EEC3A60](2);
      v4 = v3;
      sub_23BFFA890();
      sub_23BF674C8(v3, 1);
    }

    else
    {
      MEMORY[0x23EEC3A60](1);
    }
  }

  else
  {
    MEMORY[0x23EEC3A60](0);
    sub_23BFFADC0();
  }

  return sub_23BFFADE0();
}

id sub_23BF89468(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ParmesanTimeAppearance();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

BOOL sub_23BF89524(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_layout);
  v3 = *(a2 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_layout);
  if (*(v2 + OBJC_IVAR___NTKParmesanTimeLayout_alignment) != *(v3 + OBJC_IVAR___NTKParmesanTimeLayout_alignment) || *(v2 + OBJC_IVAR___NTKParmesanTimeLayout_scale) != *(v3 + OBJC_IVAR___NTKParmesanTimeLayout_scale) || *(a1 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_typeface) != *(a2 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_typeface) || *(a1 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_numerals) != *(a2 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_numerals))
  {
    return 0;
  }

  v4 = *(a1 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_style);
  v5 = *(a2 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_style);
  v6 = *(a2 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_style + 8);
  if (!*(a1 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_style + 8))
  {
    if (!*(a2 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_style + 8))
    {
      return *&v4 == *&v5;
    }

    return 0;
  }

  if (*(a1 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_style + 8) == 1)
  {
    if (v6 == 1)
    {
      sub_23BF4C8B4();
      sub_23BF674B4(v5, 1);
      sub_23BF674B4(v4, 1);
      v7 = sub_23BFFA880();
      sub_23BF674C8(v5, 1);
      sub_23BF674C8(v4, 1);
      return v7 & 1;
    }

    return 0;
  }

  return v6 == 2 && v5 == 0;
}

id sub_23BF89694(double a1, double a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x277D752C0]) init];
  [v4 setScrollDirection_];
  v5 = objc_opt_self();
  v6 = [v5 fractionalWidthDimension_];
  v7 = [v5 fractionalHeightDimension_];
  v8 = objc_opt_self();
  v9 = [v8 sizeWithWidthDimension:v6 heightDimension:v7];

  v10 = [objc_opt_self() itemWithLayoutSize_];
  v11 = [v5 absoluteDimension_];
  v12 = [v5 absoluteDimension_];
  v13 = [v8 sizeWithWidthDimension:v11 heightDimension:v12];

  v14 = objc_opt_self();
  sub_23BF4A264(&qword_27E1E05E0, &qword_23C002120);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_23C001BA0;
  *(v15 + 32) = v10;
  sub_23BF89924();
  v16 = v10;
  v17 = sub_23BFFA450();

  v18 = [v14 horizontalGroupWithLayoutSize:v13 subitems:v17];

  v19 = [objc_opt_self() sectionWithGroup_];
  [v19 setInterGroupSpacing_];
  v20 = [objc_allocWithZone(MEMORY[0x277D752B8]) initWithSection:v19 configuration:v4];

  return v20;
}

unint64_t sub_23BF89924()
{
  result = qword_27E1E05F8;
  if (!qword_27E1E05F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E1E05F8);
  }

  return result;
}

char *sub_23BF89970(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_23BFFA8F0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = sub_23BFFA8C0();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_23BF4A264(&qword_27E1E1990, &qword_23C005208);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v43 - v17;
  v19 = &v5[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion29ParmesanButtonTrayContentView_primaryAction];
  *v19 = 0;
  *(v19 + 1) = 0;
  v20 = &v5[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion29ParmesanButtonTrayContentView_secondaryAction];
  *v20 = 0;
  *(v20 + 1) = 0;
  *&v5[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion29ParmesanButtonTrayContentView_buttonSpacing] = 0x4020000000000000;
  v21 = &v5[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion29ParmesanButtonTrayContentView_configuration];
  *v21 = 0u;
  *(v21 + 1) = 0u;
  *(v21 + 2) = 0u;
  *(v21 + 3) = 0u;
  v22 = [objc_opt_self() boldButton];
  *&v5[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion29ParmesanButtonTrayContentView_primaryButton] = v22;
  v23 = v22;
  sub_23BFFA8E0();
  (*(v13 + 104))(v15, *MEMORY[0x277D75020], v12);
  sub_23BFFA8B0();
  (*(v11 + 56))(v18, 0, 1, v10);
  sub_23BFFA910();

  sub_23BF4BDF0(0, &qword_27E1E2E90, 0x277D37690);
  sub_23BFFA8D0();
  *&v5[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion29ParmesanButtonTrayContentView_secondaryButton] = sub_23BFFA900();
  v24 = type metadata accessor for ParmesanButtonTrayContentView();
  v43.receiver = v5;
  v43.super_class = v24;
  v25 = objc_msgSendSuper2(&v43, sel_initWithFrame_, a1, a2, a3, a4);
  v26 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion29ParmesanButtonTrayContentView_primaryButton;
  v27 = *&v25[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion29ParmesanButtonTrayContentView_primaryButton];
  v28 = v25;
  [v27 addTarget:v28 action:sel_handlePrimaryButtonTapped_ forControlEvents:64];
  v29 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion29ParmesanButtonTrayContentView_secondaryButton;
  [*&v28[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion29ParmesanButtonTrayContentView_secondaryButton] addTarget:v28 action:sel_handleSecondaryButtonTapped_ forControlEvents:64];
  v30 = [*&v25[v26] titleLabel];
  if (v30)
  {
    v31 = v30;
    [v30 setTextAlignment_];
  }

  v32 = [*&v28[v29] titleLabel];
  if (v32)
  {
    v33 = v32;
    [v32 setTextAlignment_];
  }

  sub_23BF4A264(&qword_27E1E05E0, &qword_23C002120);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_23C002030;
  v35 = *&v25[v26];
  *(v34 + 32) = v35;
  v36 = *&v28[v29];
  *(v34 + 40) = v36;
  v37 = objc_allocWithZone(MEMORY[0x277D75A68]);
  sub_23BF4BDF0(0, &qword_27E1E1998, 0x277D75D18);
  v38 = v35;
  v39 = v36;
  v40 = sub_23BFFA450();

  v41 = [v37 initWithArrangedSubviews_];

  [v41 setAxis_];
  [v41 setSpacing_];
  [v28 addSubview_];
  [v41 constrainToSuperviewWithEdges:15 insets:0 useLayoutMargins:{*MEMORY[0x277D75060], *(MEMORY[0x277D75060] + 8), *(MEMORY[0x277D75060] + 16), *(MEMORY[0x277D75060] + 24)}];

  return v28;
}

double sub_23BF89EF4(uint64_t *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion29ParmesanButtonTrayContentView_primaryButton);
  v4 = sub_23BFFA2C0();
  [v3 setTitle:v4 forState:0];

  v5 = a1[4];
  v6 = a1[5];
  v7 = (v1 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion29ParmesanButtonTrayContentView_primaryAction);
  v8 = *(v1 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion29ParmesanButtonTrayContentView_primaryAction);
  v9 = *(v1 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion29ParmesanButtonTrayContentView_primaryAction + 8);
  *v7 = v5;
  v7[1] = v6;
  sub_23BF4B270(v5, v6);
  v10 = sub_23BF4A21C(v8, v9);
  v11 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion29ParmesanButtonTrayContentView_secondaryButton;
  v12 = a1[3];
  [*(v1 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion29ParmesanButtonTrayContentView_secondaryButton) setHidden_];
  v13 = *(v1 + v11);
  v14 = v13;
  if (v12)
  {
    v15 = sub_23BFFA2C0();
  }

  else
  {
    v15 = 0;
  }

  [v13 setTitle:v15 forState:0];

  v16 = a1[6];
  v17 = a1[7];
  v18 = (v1 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion29ParmesanButtonTrayContentView_secondaryAction);
  v19 = *(v1 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion29ParmesanButtonTrayContentView_secondaryAction);
  v20 = *(v1 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion29ParmesanButtonTrayContentView_secondaryAction + 8);
  *v18 = v16;
  v18[1] = v17;
  sub_23BF4B270(v16, v17);

  return sub_23BF4A21C(v19, v20);
}

double sub_23BF8A048(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_unknownObjectRetain();
  v6 = a1;
  sub_23BFFA960();
  swift_unknownObjectRelease();
  v7 = &v6[*a4];
  v8 = *v7;
  if (*v7)
  {
    v9 = *(v7 + 1);

    v8(v10);
    sub_23BF4A21C(v8, v9);
  }

  return sub_23BF4A9A4(v12);
}

char *sub_23BF8A1B0(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion18ParmesanButtonTray_container] = [objc_allocWithZone(type metadata accessor for ParmesanButtonTrayContentView()) initWithFrame_];
  v9 = [objc_allocWithZone(MEMORY[0x277D756D0]) init];
  *&v4[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion18ParmesanButtonTray_buttonLayoutGuide] = v9;
  v25.receiver = v4;
  v25.super_class = type metadata accessor for ParmesanButtonTray();
  v10 = objc_msgSendSuper2(&v25, sel_initWithFrame_, a1, a2, a3, a4);
  v11 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion18ParmesanButtonTray_buttonLayoutGuide;
  v12 = *&v10[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion18ParmesanButtonTray_buttonLayoutGuide];
  v13 = v10;
  [v13 addLayoutGuide_];
  v14 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion18ParmesanButtonTray_container;
  [v13 addSubview_];
  [*&v13[v14] constrainToLayoutGuide:*&v10[v11] edges:15 insets:{*MEMORY[0x277D75060], *(MEMORY[0x277D75060] + 8), *(MEMORY[0x277D75060] + 16), *(MEMORY[0x277D75060] + 24)}];
  v15 = objc_opt_self();
  sub_23BF4A264(&qword_27E1E05E0, &qword_23C002120);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_23C002030;
  v17 = [*&v13[v14] topAnchor];
  v18 = [v13 topAnchor];
  v19 = [v17 constraintEqualToAnchor:v18 constant:12.0];

  *(v16 + 32) = v19;
  v20 = [*&v13[v14] bottomAnchor];
  v21 = [v13 bottomAnchor];

  v22 = [v20 constraintLessThanOrEqualToAnchor_];
  *(v16 + 40) = v22;
  sub_23BF4BDF0(0, &qword_27E1E0610, 0x277CCAAD0);
  v23 = sub_23BFFA450();

  [v15 activateConstraints_];

  return v13;
}

id sub_23BF8A6B8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_23BF8A724(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_23BF8A73C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_23BF8A750(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_23BF8A798(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_23BF8A834(char a1, SEL *a2, SEL *a3)
{
  objc_msgSendSuper2(&v6, *a2, a1 & 1);
  v5 = [v3 controller];
  [v5 *a3];
}

void sub_23BF8A8B8(void *a1, uint64_t a2, uint64_t a3, const char **a4, SEL *a5)
{
  v10.receiver = a1;
  v10.super_class = NTKParmesanFaceView;
  v7 = *a4;
  v8 = a1;
  objc_msgSendSuper2(&v10, v7, a3);
  v9 = [v8 controller];
  [v9 *a5];
}

uint64_t sub_23BF8A940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2;
  v7 = sub_23BF8AAC8(a1, a2, a5);
  v15 = a3;

  MEMORY[0x23EEC3090](45, 0xE100000000000000);
  if (v6)
  {
    if (v6 == 1)
    {
      v8 = 26466;
    }

    else
    {
      v8 = 26470;
    }

    v9 = 0xE200000000000000;
  }

  else
  {
    v9 = 0xE400000000000000;
    v8 = 1952541798;
  }

  MEMORY[0x23EEC3090](v8, v9);

  if (v7 == 1)
  {
    v10 = 0;
    v11 = 0xE000000000000000;
  }

  else
  {
    if (v7)
    {
      v12 = 1802658148;
    }

    else
    {
      v12 = 0x746867696CLL;
    }

    if (v7)
    {
      v13 = 0xE400000000000000;
    }

    else
    {
      v13 = 0xE500000000000000;
    }

    MEMORY[0x23EEC3090](v12, v13);

    v10 = 45;
    v11 = 0xE100000000000000;
  }

  MEMORY[0x23EEC3090](v10, v11);

  return v15;
}

id sub_23BF8AA64()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];

  return v1;
}

uint64_t sub_23BF8AAC8(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3 && *(a3 + 16))
  {
    v4 = result;
    v5 = sub_23BFE2E54(a2);
    if (v6)
    {
      v7 = *(*(a3 + 56) + 8 * v5);
      if (*(v7 + 16))
      {

        v8 = sub_23BFE2EFC(v4);
        if (v9)
        {
          v4 = *(*(v7 + 56) + v8);
        }
      }
    }

    return v4;
  }

  return result;
}

id sub_23BF8AB40(uint64_t a1, uint64_t a2)
{
  sub_23BF700D8();
  v4 = sub_23BF8AA64();
  v5 = sub_23BFFA2C0();
  v6 = sub_23BFFA2C0();
  v7 = [v4 pathForResource:v5 ofType:v6];

  if (!v7)
  {
    sub_23BF4A264(&qword_27E1E11E8, &unk_23C008920);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_23C001BB0;
    sub_23BFFA9F0();

    v18[0] = 0xD000000000000014;
    v18[1] = 0x800000023C00FA20;
    MEMORY[0x23EEC3090](a1, a2);
    v13 = 0x5D676E702ELL;
    v14 = 0xE500000000000000;
LABEL_6:
    MEMORY[0x23EEC3090](v13, v14);
    v15 = v18[0];
    v16 = v18[1];
    *(v12 + 56) = MEMORY[0x277D837D0];
    *(v12 + 32) = v15;
    *(v12 + 40) = v16;
    sub_23BFFAD80();

    return 0;
  }

  v8 = sub_23BFFA300();
  v10 = v9;
  v11 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithContentsOfFile_];

  if (!v11)
  {
    sub_23BF4A264(&qword_27E1E11E8, &unk_23C008920);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_23C001BB0;
    sub_23BFFA9F0();

    strcpy(v18, "no image at [");
    HIWORD(v18[1]) = -4864;
    MEMORY[0x23EEC3090](v8, v10);

    v13 = 93;
    v14 = 0xE100000000000000;
    goto LABEL_6;
  }

  return v11;
}

id sub_23BF8AD90(uint64_t a1, uint64_t a2)
{
  result = sub_23BF8AB40(a1, a2);
  if (result)
  {
    v3 = result;
    v4 = [result CGImage];
    if (v4)
    {
      v5 = v4;

      return v5;
    }

    else
    {
      sub_23BF4A264(&qword_27E1E11E8, &unk_23C008920);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_23C001BB0;
      sub_23BFFA9F0();

      v7 = [v3 description];
      v8 = sub_23BFFA300();
      v10 = v9;

      MEMORY[0x23EEC3090](v8, v10);

      *(v6 + 56) = MEMORY[0x277D837D0];
      *(v6 + 32) = 0xD00000000000001CLL;
      *(v6 + 40) = 0x800000023C00FA00;
      sub_23BFFAD80();

      return 0;
    }
  }

  return result;
}

uint64_t sub_23BF8AEE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_23BF8A940(a2, a1, a3, a4, a5);
  v7 = sub_23BF8AD90(v5, v6);
  if (v7)
  {
    v8 = v7;
    v9 = [objc_allocWithZone(MEMORY[0x277CD9EA0]) initWithType_];
    [v9 setValue:v8 forKeyPath:*MEMORY[0x277CDA438]];
    v10 = sub_23BFFA2C0();

    [v9 setName_];

    sub_23BF4A264(&qword_27E1E05E0, &qword_23C002120);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_23C001BA0;
    *(v11 + 32) = v9;
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v11;
}

unint64_t sub_23BF8AFF0()
{
  sub_23BF4A264(&qword_27E1E19A0, &qword_23C005220);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23C005210;
  *(inited + 32) = 2;
  *(inited + 40) = sub_23BFE4960(&unk_284EBE3D8);
  *(inited + 48) = 1;
  *(inited + 56) = sub_23BFE4960(&unk_284EBE400);
  *(inited + 64) = 0;
  *(inited + 72) = sub_23BFE4960(&unk_284EBE428);
  v1 = sub_23BFE4A4C(inited);
  swift_setDeallocating();
  sub_23BF4A264(&qword_27E1E19A8, qword_23C005228);
  swift_arrayDestroy();
  return v1;
}

__n128 sub_23BF8B0CC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_23BF8B0E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_23BF8B128(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

char *sub_23BF8B178(char *a1, unint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR___NTKParmesanAssetComposition__cachedAssetCompositionDerived] = 0;
  v3[OBJC_IVAR___NTKParmesanAssetComposition__alreadyLoadedLayoutImage] = 0;
  *&v3[OBJC_IVAR___NTKParmesanAssetComposition__cachedLayoutImage] = 0;
  v3[OBJC_IVAR___NTKParmesanAssetComposition__alreadyLoadedLayoutMask] = 0;
  *&v3[OBJC_IVAR___NTKParmesanAssetComposition__cachedLayoutMaskImage] = 0;
  *&v3[OBJC_IVAR___NTKParmesanAssetComposition_asset] = a1;
  v7 = *&a1[OBJC_IVAR___NTKParmesanAsset_localIdentifier];
  v6 = *&a1[OBJC_IVAR___NTKParmesanAsset_localIdentifier + 8];
  v8 = OBJC_IVAR___NTKParmesanGalleryComposition_timeLayout;
  v9 = qword_27E1DFD78;
  v10 = a1;

  if (v9 != -1)
  {
    swift_once();
  }

  v11 = qword_27E1EB458;
  *&v3[v8] = qword_27E1EB458;
  *&v3[OBJC_IVAR___NTKParmesanGalleryComposition_numerals] = 0;
  v3[OBJC_IVAR___NTKParmesanGalleryComposition__alreadyLoadedLayoutComposite] = 0;
  *&v3[OBJC_IVAR___NTKParmesanGalleryComposition__cachedLayoutCompositeImage] = 0;
  v3[OBJC_IVAR___NTKParmesanGalleryComposition__alreadyLoadedLayoutAlpha] = 0;
  *&v3[OBJC_IVAR___NTKParmesanGalleryComposition__cachedLayoutAlphaImage] = 0;
  v12 = &v3[OBJC_IVAR___NTKParmesanGalleryComposition_localIdentifier];
  *v12 = v7;
  v12[1] = v6;
  v22.receiver = v3;
  v22.super_class = type metadata accessor for ParmesanGalleryComposition();
  v13 = v11;
  v14 = objc_msgSendSuper2(&v22, sel_init);
  *&v14[OBJC_IVAR___NTKParmesanGalleryComposition_numerals] = a3;
  v15 = objc_opt_self();
  v16 = v14;
  if ([v15 isPartiallySupported_])
  {
    v17 = 3;
  }

  else
  {
    v17 = a2;
  }

  sub_23BF8C84C(v10, v17);
  v19 = v18;

  v20 = *&v16[OBJC_IVAR___NTKParmesanGalleryComposition_timeLayout];
  *&v16[OBJC_IVAR___NTKParmesanGalleryComposition_timeLayout] = v19;

  return v16;
}

void *sub_23BF8B35C()
{
  v1 = *(v0 + OBJC_IVAR___NTKParmesanAssetComposition_asset);
  v2 = *(v0 + OBJC_IVAR___NTKParmesanGalleryComposition_timeLayout);
  v3 = OBJC_IVAR___NTKParmesanAsset_layouts;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = v2;

  v6 = sub_23BFDD8E4(v5, v4);

  if (!v6)
  {
    return 0;
  }

  v7 = *&v6[OBJC_IVAR___NTKParmesanAssetLayout_mask];
  v8 = v7;

  return v7;
}

void *sub_23BF8B41C(uint64_t a1)
{
  v3 = v1;
  v4 = OBJC_IVAR___NTKParmesanAssetComposition__cachedAssetCompositionDerived;
  v5 = *(v1 + OBJC_IVAR___NTKParmesanAssetComposition__cachedAssetCompositionDerived);
  if (!v5)
  {
    v10 = sub_23BF8B938();
    if (!v10)
    {
      v33 = NTKDefaultMonochromeColorMatrix();
      v34 = NTKParmesanAnalyzeImage(0, *MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8), *MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24));
      type metadata accessor for ParmesanAssetCompositionDerived();
      v5 = swift_allocObject();
      v5[2] = 0;
      v5[3] = 0xE000000000000000;
      v5[4] = 0x3FF0000000000000;
      v5[5] = v33;
      v5[6] = 0;
      v5[7] = v34;
      v5[8] = 0;
LABEL_17:
      *(v3 + v4) = v5;

      return v5;
    }

    v2 = v10;
    if (qword_27E1DFDA8 == -1)
    {
LABEL_8:
      v11 = sub_23BFF92B0();
      sub_23BF4A22C(v11, qword_27E1EB4C8);
      v12 = v3;
      v13 = sub_23BFF9290();
      v14 = sub_23BFFA630();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v38[0] = v37;
        *v15 = 136315394;
        v17 = (*(v12 + OBJC_IVAR___NTKParmesanAssetComposition_asset) + OBJC_IVAR___NTKParmesanAsset_localIdentifier);
        v18 = v2;
        v19 = *v17;
        v20 = v17[1];

        v21 = sub_23BF62294(v19, v20, v38);

        *(v15 + 4) = v21;
        v2 = v18;
        *(v15 + 12) = 2112;
        v22 = *(v12 + OBJC_IVAR___NTKParmesanGalleryComposition_timeLayout);
        *(v15 + 14) = v22;
        *v16 = v22;
        v23 = v22;
        _os_log_impl(&dword_23BF0C000, v13, v14, "Loading UUID %s for %@", v15, 0x16u);
        sub_23BF4B2D4(v16, &qword_27E1E0B50, &unk_23C001DE0);
        MEMORY[0x23EEC4DF0](v16, -1, -1);
        v24 = sub_23BF4A9A4(v37);
        MEMORY[0x23EEC4DF0](v37, -1, -1, v24);
        MEMORY[0x23EEC4DF0](v15, -1, -1);
      }

      if (qword_27E1DFE10 != -1)
      {
        swift_once();
      }

      v25 = *(v12 + OBJC_IVAR___NTKParmesanAssetComposition_asset);
      v26 = *(v12 + OBJC_IVAR___NTKParmesanGalleryComposition_timeLayout);
      v27 = OBJC_IVAR___NTKParmesanAsset_layouts;
      swift_beginAccess();
      v28 = *(v25 + v27);
      v29 = v26;

      v30 = sub_23BFDD8E4(v29, v28);

      if (v30)
      {
        v31 = *&v30[OBJC_IVAR___NTKParmesanAssetLayout_mask];
        v32 = v31;
      }

      else
      {
        v31 = 0;
      }

      v35 = sub_23BF852AC();
      v5 = sub_23BF9EF64(v25, v29, v31, v2, v35);

      goto LABEL_17;
    }

LABEL_20:
    swift_once();
    goto LABEL_8;
  }

  v6 = qword_27E1DFE10;

  if (v6 != -1)
  {
    swift_once();
  }

  v3 = qword_27E1EB5C0;
  swift_beginAccess();
  v7 = v3[3];
  v8 = __CFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
    goto LABEL_20;
  }

  v3[3] = v9;
  v5[8] = v9;
  return v5;
}

id sub_23BF8B824(uint64_t a1)
{
  v1 = sub_23BF8B41C(a1)[5];

  return v1;
}

id sub_23BF8B860(uint64_t a1)
{
  v1 = sub_23BF8B41C(a1)[6];
  v2 = v1;

  if (v1)
  {
    return v2;
  }

  v4 = NTKDefaultMonochromeColorMatrix();

  return v4;
}

double sub_23BF8B8D0(uint64_t a1)
{
  v1 = *(sub_23BF8B41C(a1) + 4);

  return v1;
}

id sub_23BF8B8FC(uint64_t a1)
{
  v1 = sub_23BF8B41C(a1)[7];

  return v1;
}

id sub_23BF8B938()
{
  v1 = sub_23BFF8D10();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v7 = MEMORY[0x28223BE20](v5).n128_u64[0];
  v9 = &v47 - v8;
  v10 = OBJC_IVAR___NTKParmesanAssetComposition__cachedLayoutImage;
  v11 = *&v0[OBJC_IVAR___NTKParmesanAssetComposition__cachedLayoutImage];
  v12 = v11;
  if (!v11)
  {
    if ((v0[OBJC_IVAR___NTKParmesanAssetComposition__alreadyLoadedLayoutImage] & 1) == 0)
    {
      v13 = v6;
      v0[OBJC_IVAR___NTKParmesanAssetComposition__alreadyLoadedLayoutImage] = 1;
      v14 = OBJC_IVAR___NTKParmesanGalleryComposition_timeLayout;
      v15 = [*&v0[OBJC_IVAR___NTKParmesanAssetComposition_asset] imageURLForTimeLayout_];
      if (v15)
      {
        v16 = v0;
        v17 = v15;
        sub_23BFF8CA0();

        sub_23BFF8CC0();
        v18 = objc_allocWithZone(MEMORY[0x277D755B8]);
        v19 = sub_23BFFA2C0();

        v12 = [v18 initWithContentsOfFile_];

        if (v12)
        {
          (*(v2 + 8))(v9, v13);
          v20 = *&v16[v10];
          *&v16[v10] = v12;
          v21 = v12;

          goto LABEL_17;
        }

        if (qword_27E1DFDA8 != -1)
        {
          swift_once();
        }

        v32 = sub_23BFF92B0();
        sub_23BF4A22C(v32, qword_27E1EB4C8);
        (*(v2 + 16))(v4, v9, v13);
        v33 = sub_23BFF9290();
        v34 = sub_23BFFA640();
        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          v48 = v35;
          v49 = swift_slowAlloc();
          v50 = v49;
          *v35 = 136315138;
          sub_23BF8CA6C();
          v36 = sub_23BFFAC70();
          v38 = v37;
          v39 = *(v2 + 8);
          v39(v4, v13);
          v40 = sub_23BF62294(v36, v38, &v50);

          v41 = v48;
          *(v48 + 1) = v40;
          _os_log_impl(&dword_23BF0C000, v33, v34, "Unable to load image for url: [%s]", v41, 0xCu);
          v42 = v49;
          v43 = sub_23BF4A9A4(v49);
          MEMORY[0x23EEC4DF0](v42, -1, -1, v43);
          MEMORY[0x23EEC4DF0](v41, -1, -1);

          v39(v9, v13);
        }

        else
        {

          v44 = *(v2 + 8);
          v44(v4, v13);
          v44(v9, v13);
        }
      }

      else
      {
        if (qword_27E1DFDA8 != -1)
        {
          swift_once();
        }

        v22 = sub_23BFF92B0();
        sub_23BF4A22C(v22, qword_27E1EB4C8);
        v23 = v0;
        v24 = v0;
        v25 = sub_23BFF9290();
        v26 = sub_23BFFA640();

        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          v28 = swift_slowAlloc();
          *v27 = 138412546;
          v29 = *&v23[v14];
          *(v27 + 4) = v29;
          *(v27 + 12) = 2112;
          *(v27 + 14) = v24;
          *v28 = v29;
          v28[1] = v24;
          v30 = v24;
          v31 = v29;
          _os_log_impl(&dword_23BF0C000, v25, v26, "No imageURL found for timeLayout %@ on asset (%@)", v27, 0x16u);
          sub_23BF4A264(&qword_27E1E0B50, &unk_23C001DE0);
          swift_arrayDestroy();
          MEMORY[0x23EEC4DF0](v28, -1, -1);
          MEMORY[0x23EEC4DF0](v27, -1, -1);
        }
      }
    }

    v12 = 0;
  }

LABEL_17:
  v45 = v11;
  return v12;
}

id sub_23BF8BE04()
{
  v1 = sub_23BFF8D10();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v7 = MEMORY[0x28223BE20](v5).n128_u64[0];
  v9 = &v47 - v8;
  v10 = OBJC_IVAR___NTKParmesanAssetComposition__cachedLayoutMaskImage;
  v11 = *&v0[OBJC_IVAR___NTKParmesanAssetComposition__cachedLayoutMaskImage];
  v12 = v11;
  if (!v11)
  {
    if ((v0[OBJC_IVAR___NTKParmesanAssetComposition__alreadyLoadedLayoutMask] & 1) == 0)
    {
      v13 = v6;
      v0[OBJC_IVAR___NTKParmesanAssetComposition__alreadyLoadedLayoutMask] = 1;
      v14 = OBJC_IVAR___NTKParmesanGalleryComposition_timeLayout;
      v15 = [*&v0[OBJC_IVAR___NTKParmesanAssetComposition_asset] maskImageURLForTimeLayout_];
      if (v15)
      {
        v16 = v0;
        v17 = v15;
        sub_23BFF8CA0();

        sub_23BFF8CC0();
        v18 = objc_allocWithZone(MEMORY[0x277D755B8]);
        v19 = sub_23BFFA2C0();

        v12 = [v18 initWithContentsOfFile_];

        if (v12)
        {
          (*(v2 + 8))(v9, v13);
          v20 = *&v16[v10];
          *&v16[v10] = v12;
          v21 = v12;

          goto LABEL_17;
        }

        if (qword_27E1DFDA8 != -1)
        {
          swift_once();
        }

        v32 = sub_23BFF92B0();
        sub_23BF4A22C(v32, qword_27E1EB4C8);
        (*(v2 + 16))(v4, v9, v13);
        v33 = sub_23BFF9290();
        v34 = sub_23BFFA640();
        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          v48 = v35;
          v49 = swift_slowAlloc();
          v50 = v49;
          *v35 = 136315138;
          sub_23BF8CA6C();
          v36 = sub_23BFFAC70();
          v38 = v37;
          v39 = *(v2 + 8);
          v39(v4, v13);
          v40 = sub_23BF62294(v36, v38, &v50);

          v41 = v48;
          *(v48 + 1) = v40;
          _os_log_impl(&dword_23BF0C000, v33, v34, "Unable to load mask image for at url: [%s]", v41, 0xCu);
          v42 = v49;
          v43 = sub_23BF4A9A4(v49);
          MEMORY[0x23EEC4DF0](v42, -1, -1, v43);
          MEMORY[0x23EEC4DF0](v41, -1, -1);

          v39(v9, v13);
        }

        else
        {

          v44 = *(v2 + 8);
          v44(v4, v13);
          v44(v9, v13);
        }
      }

      else
      {
        if (qword_27E1DFDA8 != -1)
        {
          swift_once();
        }

        v22 = sub_23BFF92B0();
        sub_23BF4A22C(v22, qword_27E1EB4C8);
        v23 = v0;
        v24 = v0;
        v25 = sub_23BFF9290();
        v26 = sub_23BFFA640();

        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          v28 = swift_slowAlloc();
          *v27 = 138412546;
          v29 = *&v23[v14];
          *(v27 + 4) = v29;
          *(v27 + 12) = 2112;
          *(v27 + 14) = v24;
          *v28 = v29;
          v28[1] = v24;
          v30 = v24;
          v31 = v29;
          _os_log_impl(&dword_23BF0C000, v25, v26, "No maskImageURL found for timeLayout %@ on asset (%@)", v27, 0x16u);
          sub_23BF4A264(&qword_27E1E0B50, &unk_23C001DE0);
          swift_arrayDestroy();
          MEMORY[0x23EEC4DF0](v28, -1, -1);
          MEMORY[0x23EEC4DF0](v27, -1, -1);
        }
      }
    }

    v12 = 0;
  }

LABEL_17:
  v45 = v11;
  return v12;
}

uint64_t sub_23BF8C338()
{
  v1 = *(v0 + OBJC_IVAR___NTKParmesanAssetComposition_asset);
  v2 = *(v0 + OBJC_IVAR___NTKParmesanGalleryComposition_timeLayout);
  v3 = OBJC_IVAR___NTKParmesanAsset_layouts;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = v2;

  sub_23BFDD8E4(v5, v4);

  sub_23BF4A264(&qword_27E1E19E0, qword_23C0052F0);
  return sub_23BFFA360();
}

uint64_t sub_23BF8C428(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_23BFFAE00();
  sub_23BFFA3A0();
  sub_23BFFA890();
  v4 = *(v2 + OBJC_IVAR___NTKParmesanGalleryComposition_timeLayout);
  sub_23BFFA890();

  MEMORY[0x23EEC3A60](*(v3 + OBJC_IVAR___NTKParmesanGalleryComposition_numerals));
  return sub_23BFFADE0();
}

BOOL sub_23BF8C5C8()
{
  v1 = *(v0 + OBJC_IVAR___NTKParmesanAssetComposition_asset);
  v2 = *(v0 + OBJC_IVAR___NTKParmesanGalleryComposition_timeLayout);
  v3 = OBJC_IVAR___NTKParmesanAsset_layouts;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = v2;

  v6 = sub_23BFDD8E4(v5, v4);

  if (!v6)
  {
    return 0;
  }

  v7 = *&v6[OBJC_IVAR___NTKParmesanAssetLayout_mask];
  v8 = v7;

  if (!v7)
  {
    return 0;
  }

  return *(v1 + OBJC_IVAR___NTKParmesanAsset_videoInfo) == 0;
}

uint64_t sub_23BF8C6A8()
{
  if (*(*&v0[OBJC_IVAR___NTKParmesanAssetComposition_asset] + OBJC_IVAR___NTKParmesanAsset_videoInfo))
  {
    v1 = 2;
  }

  else
  {
    v1 = 1;
  }

  v2 = sub_23BF8C5C8();
  type metadata accessor for ParmesanGalleryContentConfiguration();
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  *(v3 + 24) = v1;
  *(v3 + 25) = v2;
  v4 = v0;
  return v3;
}

void sub_23BF8C728()
{

  v1 = *(v0 + OBJC_IVAR___NTKParmesanAssetComposition__cachedLayoutMaskImage);
}

id sub_23BF8C788(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ParmesanAssetComposition();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_23BF8C84C(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    v4 = sub_23BFA3D38(a2);
    v5 = *&v4[OBJC_IVAR___NTKParmesanTimeLayout_scale];

    sub_23BFDDC24(v5);
    if (v6)
    {
      return;
    }

    if (qword_27E1DFDA8 != -1)
    {
      swift_once();
    }

    v7 = sub_23BFF92B0();
    sub_23BF4A22C(v7, qword_27E1EB4C8);
    v8 = sub_23BFF9290();
    v9 = sub_23BFFA650();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v17 = v11;
      *v10 = 136315394;
      *(v10 + 4) = sub_23BF62294(0xD00000000000001CLL, 0x800000023C00FB10, &v17);
      *(v10 + 12) = 2080;

      sub_23BF6D720();
      v12 = sub_23BFFAC70();
      v14 = sub_23BF62294(v12, v13, &v17);

      *(v10 + 14) = v14;
      _os_log_impl(&dword_23BF0C000, v8, v9, "%s failed to find a layout for scale [%s] on asset; fallback to preferredTimeLayout", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EEC4DF0](v11, -1, -1);
      MEMORY[0x23EEC4DF0](v10, -1, -1);
    }
  }

  v15 = *(a1 + OBJC_IVAR___NTKParmesanAsset_preferredTimeLayout);

  v16 = v15;
}

unint64_t sub_23BF8CA6C()
{
  result = qword_27E1E0B98;
  if (!qword_27E1E0B98)
  {
    sub_23BFF8D10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E0B98);
  }

  return result;
}

BOOL sub_23BF8CAC4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + OBJC_IVAR___NTKParmesanGalleryComposition_localIdentifier) == *(a2 + OBJC_IVAR___NTKParmesanGalleryComposition_localIdentifier) && *(a1 + OBJC_IVAR___NTKParmesanGalleryComposition_localIdentifier + 8) == *(a2 + OBJC_IVAR___NTKParmesanGalleryComposition_localIdentifier + 8);
  if (v4 || (sub_23BFFACC0()) && (sub_23BFE4BC8(*(a1 + OBJC_IVAR___NTKParmesanAssetComposition_asset), *(a2 + OBJC_IVAR___NTKParmesanAssetComposition_asset)) & 1) != 0 && (v5 = *(a1 + OBJC_IVAR___NTKParmesanGalleryComposition_timeLayout), v6 = *(a2 + OBJC_IVAR___NTKParmesanGalleryComposition_timeLayout), *(v5 + OBJC_IVAR___NTKParmesanTimeLayout_alignment) == *(v6 + OBJC_IVAR___NTKParmesanTimeLayout_alignment)) && *(v5 + OBJC_IVAR___NTKParmesanTimeLayout_scale) == *(v6 + OBJC_IVAR___NTKParmesanTimeLayout_scale))
  {
    return *(a1 + OBJC_IVAR___NTKParmesanGalleryComposition_numerals) == *(a2 + OBJC_IVAR___NTKParmesanGalleryComposition_numerals);
  }

  else
  {
    return 0;
  }
}

void *sub_23BF8CBA4()
{
  v1 = *(v0 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion30ParmesanPlaceholderComposition__layoutMask);
  v2 = v1;
  return v1;
}

id sub_23BF8CBD4()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion30ParmesanPlaceholderComposition__layoutImage;
  v3 = *&v0[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion30ParmesanPlaceholderComposition__layoutImage];
  v4 = v3;
  if (!v3)
  {
    sub_23BFF8CC0();
    v5 = objc_allocWithZone(MEMORY[0x277D755B8]);
    v6 = sub_23BFFA2C0();

    v4 = [v5 initWithContentsOfFile_];

    if (v4)
    {
      v7 = *&v1[v2];
      *&v1[v2] = v4;
      v8 = v4;
    }

    else
    {
      if (qword_27E1DFDA8 != -1)
      {
        swift_once();
      }

      v9 = sub_23BFF92B0();
      sub_23BF4A22C(v9, qword_27E1EB4C8);
      v10 = v1;
      v11 = sub_23BFF9290();
      v12 = sub_23BFFA640();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v20 = v14;
        *v13 = 136315394;
        *(v13 + 4) = sub_23BF62294(*&v10[OBJC_IVAR___NTKParmesanGalleryComposition_localIdentifier], *&v10[OBJC_IVAR___NTKParmesanGalleryComposition_localIdentifier + 8], &v20);
        *(v13 + 12) = 2080;
        sub_23BFF8D10();
        sub_23BF8E004(&qword_27E1E0B98, MEMORY[0x277CC9290]);
        v15 = sub_23BFFAC70();
        v17 = sub_23BF62294(v15, v16, &v20);

        *(v13 + 14) = v17;
        _os_log_impl(&dword_23BF0C000, v11, v12, "Unable to load image for for placeholder asset [%s] at url [%s]", v13, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x23EEC4DF0](v14, -1, -1);
        MEMORY[0x23EEC4DF0](v13, -1, -1);
      }

      v4 = 0;
    }
  }

  v18 = v3;
  return v4;
}

NTKParmesanImageAnalysis *sub_23BF8CE34()
{
  v1 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion30ParmesanPlaceholderComposition__cachedImageAnalysis;
  v2 = *(v0 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion30ParmesanPlaceholderComposition__cachedImageAnalysis);
  v3 = v2;
  if (!v2)
  {
    v4 = [objc_opt_self() currentDevice];
    if (v4)
    {
      v5 = v4;
      [v4 screenBounds];
      v7 = v6;
      v9 = v8;
      [v5 screenScale];
      v11 = v10;

      v12 = v7 * v11;
      v13 = v9 * v11;
    }

    else
    {
      v13 = 0.0;
      v12 = 0.0;
    }

    [*(v0 + OBJC_IVAR___NTKParmesanGalleryComposition_timeLayout) normalizedTimeRectWithoutComplications];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    CGAffineTransformMakeScale(&v31, v12, v13);
    v32.origin.x = v15;
    v32.origin.y = v17;
    v32.size.width = v19;
    v32.size.height = v21;
    v33 = CGRectApplyAffineTransform(v32, &v31);
    x = v33.origin.x;
    y = v33.origin.y;
    width = v33.size.width;
    height = v33.size.height;
    v26 = sub_23BF8CBD4();
    v3 = NTKParmesanAnalyzeImage(v26, v12, v13, x, y, width, height);

    v27 = *(v0 + v1);
    *(v0 + v1) = v3;
    v28 = v3;
  }

  v29 = v2;
  return v3;
}

id sub_23BF8CFBC()
{
  v1 = sub_23BF4A264(&qword_27E1E0B78, &unk_23C0038E0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v40[-v2];
  v4 = sub_23BFF8D10();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v40[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v10 = &v40[-v9];
  v11 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion30ParmesanPlaceholderComposition__layoutMaskImage;
  v12 = *&v0[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion30ParmesanPlaceholderComposition__layoutMaskImage];
  v13 = v12;
  if (!v12)
  {
    sub_23BF4B33C(&v0[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion30ParmesanPlaceholderComposition_layoutMaskImageURL], v3, &qword_27E1E0B78, &unk_23C0038E0);
    if ((*(v5 + 48))(v3, 1, v4) == 1)
    {
      sub_23BF4B2D4(v3, &qword_27E1E0B78, &unk_23C0038E0);
      if (qword_27E1DFDA8 != -1)
      {
        swift_once();
      }

      v14 = sub_23BFF92B0();
      sub_23BF4A22C(v14, qword_27E1EB4C8);
      v15 = v0;
      v16 = sub_23BFF9290();
      v17 = sub_23BFFA640();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v43 = v19;
        *v18 = 136315138;
        *(v18 + 4) = sub_23BF62294(*&v15[OBJC_IVAR___NTKParmesanGalleryComposition_localIdentifier], *&v15[OBJC_IVAR___NTKParmesanGalleryComposition_localIdentifier + 8], &v43);
        _os_log_impl(&dword_23BF0C000, v16, v17, "No layoutMaskImageURL found for placeholder asset [%s]", v18, 0xCu);
        v20 = sub_23BF4A9A4(v19);
        MEMORY[0x23EEC4DF0](v19, -1, -1, v20);
        MEMORY[0x23EEC4DF0](v18, -1, -1);
      }
    }

    else
    {
      v21 = v0;
      (*(v5 + 32))(v10, v3, v4);
      sub_23BFF8CC0();
      v22 = objc_allocWithZone(MEMORY[0x277D755B8]);
      v23 = sub_23BFFA2C0();

      v13 = [v22 initWithContentsOfFile_];

      if (v13)
      {
        (*(v5 + 8))(v10, v4);
        v24 = *&v21[v11];
        *&v21[v11] = v13;
        v25 = v13;

        goto LABEL_11;
      }

      if (qword_27E1DFDA8 != -1)
      {
        swift_once();
      }

      v28 = sub_23BFF92B0();
      sub_23BF4A22C(v28, qword_27E1EB4C8);
      (*(v5 + 16))(v7, v10, v4);
      v29 = v21;
      v30 = sub_23BFF9290();
      v31 = sub_23BFFA640();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v43 = v42;
        *v32 = 136315394;
        *(v32 + 4) = sub_23BF62294(*&v29[OBJC_IVAR___NTKParmesanGalleryComposition_localIdentifier], *&v29[OBJC_IVAR___NTKParmesanGalleryComposition_localIdentifier + 8], &v43);
        *(v32 + 12) = 2080;
        sub_23BF8E004(&qword_27E1E0B98, MEMORY[0x277CC9290]);
        v41 = v31;
        v33 = sub_23BFFAC70();
        v35 = v34;
        v36 = *(v5 + 8);
        v36(v7, v4);
        v37 = sub_23BF62294(v33, v35, &v43);

        *(v32 + 14) = v37;
        _os_log_impl(&dword_23BF0C000, v30, v41, "Unable to load mask image for placeholder asset [%s] at url [%s]", v32, 0x16u);
        v38 = v42;
        swift_arrayDestroy();
        MEMORY[0x23EEC4DF0](v38, -1, -1);
        MEMORY[0x23EEC4DF0](v32, -1, -1);

        v36(v10, v4);
      }

      else
      {

        v39 = *(v5 + 8);
        v39(v7, v4);
        v39(v10, v4);
      }
    }

    v13 = 0;
  }

LABEL_11:
  v26 = v12;
  return v13;
}

uint64_t sub_23BF8D56C()
{
  v1 = v0;
  v2 = sub_23BFF8D10();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23BF4A264(&qword_27E1E0B78, &unk_23C0038E0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v12 - v7;
  sub_23BFFAE00();
  sub_23BFFA3A0();
  sub_23BF8E004(&qword_27E1E1A30, MEMORY[0x277CC9270]);
  sub_23BFFA280();
  v9 = *(v0 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion30ParmesanPlaceholderComposition__layoutMask);
  sub_23BFFADB0();
  if (v9)
  {
    v10 = v9;
    sub_23BFFA890();
  }

  sub_23BF4B33C(v1 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion30ParmesanPlaceholderComposition_layoutMaskImageURL, v8, &qword_27E1E0B78, &unk_23C0038E0);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    sub_23BFFADB0();
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    sub_23BFFADB0();
    sub_23BFFA280();
    (*(v3 + 8))(v5, v2);
  }

  return sub_23BFFADE0();
}

void sub_23BF8D8E0()
{
  v1 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion30ParmesanPlaceholderComposition_layoutImageURL;
  v2 = sub_23BFF8D10();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_23BF4B2D4(v0 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion30ParmesanPlaceholderComposition_layoutMaskImageURL, &qword_27E1E0B78, &unk_23C0038E0);

  v3 = *(v0 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion30ParmesanPlaceholderComposition__layoutMaskImage);
}

id sub_23BF8D9A8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ParmesanPlaceholderComposition(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for ParmesanPlaceholderComposition(uint64_t a1)
{
  result = qword_27E1E1A18;
  if (!qword_27E1E1A18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23BF8DB00(uint64_t a1)
{
  sub_23BFF8D10();
  if (v1 <= 0x3F)
  {
    sub_23BF8DBDC(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_23BF8DBDC(uint64_t a1)
{
  if (!qword_27E1E1A28)
  {
    sub_23BFF8D10();
    v1 = sub_23BFFA920();
    if (!v2)
    {
      atomic_store(v1, &qword_27E1E1A28);
    }
  }
}

uint64_t sub_23BF8DC34(uint64_t a1, uint64_t a2)
{
  v4 = sub_23BFF8D10();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23BF4A264(&qword_27E1E0B78, &unk_23C0038E0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v29 - v9;
  v11 = sub_23BF4A264(&qword_27E1E1160, &qword_23C0038D8);
  MEMORY[0x28223BE20](v11);
  v13 = &v29 - v12;
  v14 = *(a1 + OBJC_IVAR___NTKParmesanGalleryComposition_localIdentifier) == *(a2 + OBJC_IVAR___NTKParmesanGalleryComposition_localIdentifier) && *(a1 + OBJC_IVAR___NTKParmesanGalleryComposition_localIdentifier + 8) == *(a2 + OBJC_IVAR___NTKParmesanGalleryComposition_localIdentifier + 8);
  if (!v14 && (sub_23BFFACC0() & 1) == 0 || (sub_23BFF8C90() & 1) == 0)
  {
    goto LABEL_13;
  }

  v30 = v7;
  v15 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion30ParmesanPlaceholderComposition_layoutMaskImageURL;
  v16 = *(v11 + 48);
  sub_23BF4B33C(a1 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion30ParmesanPlaceholderComposition_layoutMaskImageURL, v13, &qword_27E1E0B78, &unk_23C0038E0);
  v17 = a2 + v15;
  v18 = v5;
  sub_23BF4B33C(v17, &v13[v16], &qword_27E1E0B78, &unk_23C0038E0);
  v19 = *(v5 + 48);
  if (v19(v13, 1, v4) != 1)
  {
    sub_23BF4B33C(v13, v10, &qword_27E1E0B78, &unk_23C0038E0);
    if (v19(&v13[v16], 1, v4) != 1)
    {
      v22 = v30;
      (*(v18 + 32))(v30, &v13[v16], v4);
      sub_23BF8E004(&qword_27E1E1168, MEMORY[0x277CC9278]);
      v23 = sub_23BFFA2B0();
      v24 = *(v18 + 8);
      v24(v22, v4);
      v24(v10, v4);
      sub_23BF4B2D4(v13, &qword_27E1E0B78, &unk_23C0038E0);
      if (v23)
      {
        goto LABEL_16;
      }

LABEL_13:
      v20 = 0;
      return v20 & 1;
    }

    (*(v18 + 8))(v10, v4);
LABEL_12:
    sub_23BF4B2D4(v13, &qword_27E1E1160, &qword_23C0038D8);
    goto LABEL_13;
  }

  if (v19(&v13[v16], 1, v4) != 1)
  {
    goto LABEL_12;
  }

  sub_23BF4B2D4(v13, &qword_27E1E0B78, &unk_23C0038E0);
LABEL_16:
  v25 = *(a1 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion30ParmesanPlaceholderComposition__layoutMask);
  v26 = *(a2 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion30ParmesanPlaceholderComposition__layoutMask);
  v20 = (v25 | v26) == 0;
  if (v25 && v26)
  {
    type metadata accessor for ParmesanAssetMask();
    v27 = v26;
    v28 = v25;
    v20 = sub_23BFFA880();
  }

  return v20 & 1;
}

uint64_t sub_23BF8E004(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_23BFF8D10();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_23BF8E144(void *a1)
{
  v3 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion38ParmesanGalleryTransitionContainerView_currentView;
  [*&v1[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion38ParmesanGalleryTransitionContainerView_currentView] removeFromSuperview];
  v4 = *&v1[v3];
  *&v1[v3] = 0;

  if (a1)
  {
    [v1 addSubview_];
    v5 = *&v1[v3];
    *&v1[v3] = a1;
  }
}

void sub_23BF8E1D4(void *a1)
{
  v3 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion38ParmesanGalleryTransitionContainerView_transitionView;
  [*&v1[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion38ParmesanGalleryTransitionContainerView_transitionView] removeFromSuperview];
  v4 = *&v1[v3];
  *&v1[v3] = 0;

  if (a1)
  {
    [v1 addSubview_];
    v5 = *&v1[v3];
    *&v1[v3] = a1;
  }

  if (*&v1[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion38ParmesanGalleryTransitionContainerView_currentView])
  {

    [v1 bringSubviewToFront_];
  }
}

void sub_23BF8E284()
{
  v1 = *(v0 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion38ParmesanGalleryTransitionContainerView_transitionView);
}

id sub_23BF8E2C4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ParmesanGalleryTransitionContainerView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_23BF8E390()
{
  sub_23BF674C8(*(v0 + 16), *(v0 + 24));

  return swift_deallocClassInstance();
}

unint64_t sub_23BF8E3FC()
{
  result = qword_27E1E1A48;
  if (!qword_27E1E1A48)
  {
    type metadata accessor for ParmesanTimeEffect();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E1A48);
  }

  return result;
}

void sub_23BF8E450(uint64_t a1)
{
  if (!*(v1 + 24))
  {
    MEMORY[0x23EEC3A60](0);
    sub_23BFFADC0();
    v2 = *(v1 + 32);
    if (v2)
    {
      goto LABEL_6;
    }

LABEL_10:
    sub_23BFFADB0();
    return;
  }

  if (*(v1 + 24) != 1)
  {
    MEMORY[0x23EEC3A60](1);
    v2 = *(v1 + 32);
    if (v2)
    {
      goto LABEL_6;
    }

    goto LABEL_10;
  }

  MEMORY[0x23EEC3A60](2);
  sub_23BFFA890();
  v2 = *(v1 + 32);
  if (!v2)
  {
    goto LABEL_10;
  }

LABEL_6:
  sub_23BFFADB0();
  v3 = v2;
  sub_23BFFA890();
}

uint64_t sub_23BF8E55C()
{
  sub_23BFFAD90();
  sub_23BF8E450(v1);
  return sub_23BFFADF0();
}

uint64_t sub_23BF8E5C4(uint64_t a1)
{
  sub_23BFFAD90();
  sub_23BF8E450(v2);
  return sub_23BFFADF0();
}

BOOL sub_23BF8E604(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (*(a1 + 24) == 1)
    {
      if (v3 == 1)
      {
        v4 = a1;
        v5 = a2;
        sub_23BF4BDF0(0, &qword_27E1E1BE0, 0x277D82BB8);
        v6 = sub_23BFFA880();
        a2 = v5;
        v7 = v6;
        a1 = v4;
        if (v7)
        {
          goto LABEL_8;
        }
      }
    }

    else if (v3 == 2 && v2 == 0)
    {
      goto LABEL_8;
    }

    return 0;
  }

  if (*(a2 + 24) || COERCE_FLOAT(*(a1 + 16)) != *&v2)
  {
    return 0;
  }

LABEL_8:
  v8 = *(a1 + 32);
  v9 = *(a2 + 32);
  result = (v8 | v9) == 0;
  if (v8)
  {
    if (v9)
    {
      sub_23BF4BDF0(0, &qword_27E1E1A50, off_278BA54B0);
      v11 = v9;
      v12 = v8;
      v13 = sub_23BFFA880();

      return v13 & 1;
    }
  }

  return result;
}

uint64_t sub_23BF8E76C@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_23BF8E7A8(uint64_t a1)
{
  v2 = sub_23BF8E9F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23BF8E7E4(uint64_t a1)
{
  v2 = sub_23BF8E9F8();

  return MEMORY[0x2821FE720](a1, v2);
}

id sub_23BF8E820(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for ParmesanColorAnalysis();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_23BF8E878(void *a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for ParmesanColorAnalysis();
  v6.receiver = objc_allocWithZone(v4);
  v6.super_class = v4;
  v5 = objc_msgSendSuper2(&v6, sel_init);
  sub_23BF4A9A4(a1);
  *a2 = v5;
}

uint64_t sub_23BF8E8E4(void *a1)
{
  v2 = sub_23BF4A264(&qword_27E1E1A58, &qword_23C005508);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  sub_23BF4C484(a1, a1[3]);
  sub_23BF8E9F8();
  sub_23BFFAE40();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_23BF8E9F8()
{
  result = qword_27E1E1A60;
  if (!qword_27E1E1A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E1A60);
  }

  return result;
}

unint64_t sub_23BF8EA60()
{
  result = qword_27E1E1A68;
  if (!qword_27E1E1A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E1A68);
  }

  return result;
}

unint64_t sub_23BF8EAB8()
{
  result = qword_27E1E1A70;
  if (!qword_27E1E1A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E1A70);
  }

  return result;
}

uint64_t sub_23BF8EB1C()
{
  if (*v0)
  {
    return 0x646573756170;
  }

  else
  {
    return 0x676E6979616C70;
  }
}

unint64_t sub_23BF8EB58()
{
  result = qword_27E1E1A78;
  if (!qword_27E1E1A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E1A78);
  }

  return result;
}

void sub_23BF8EBD4(uint64_t a1, void **a2, void *a3)
{
  v4 = *a2;
  v5 = objc_opt_self();
  v6 = v4;
  v7 = [v5 functionWithName_];

  *a3 = v7;
}

id sub_23BF8EC40()
{
  v0 = objc_allocWithZone(MEMORY[0x277CD9EF8]);
  LODWORD(v1) = 1058810102;
  LODWORD(v2) = 1063339950;
  LODWORD(v3) = 1.0;
  LODWORD(v4) = 1.0;
  result = [v0 initWithControlPoints__:v1 :{v3, v2, v4}];
  qword_27E1EB5B0 = result;
  return result;
}

id sub_23BF8EC94()
{
  v0 = objc_allocWithZone(MEMORY[0x277CD9EF8]);
  LODWORD(v1) = 1038174126;
  LODWORD(v2) = 0.5;
  result = [v0 initWithControlPoints__:v1 :{0.0, v2, 0.0}];
  qword_27E1EB5B8 = result;
  return result;
}

uint64_t sub_23BF8ECE0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x4C52556F65646976;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0xD000000000000010;
    }

    else
    {
      v4 = 0x6570416E61656C63;
    }

    if (v3 == 2)
    {
      v5 = 0x800000023C00B9F0;
    }

    else
    {
      v5 = 0xED00006572757472;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6E6F697461727564;
    }

    else
    {
      v4 = 0x4C52556F65646976;
    }

    v5 = 0xE800000000000000;
  }

  v6 = 0xD000000000000010;
  v7 = 0x800000023C00B9F0;
  if (a2 != 2)
  {
    v6 = 0x6570416E61656C63;
    v7 = 0xED00006572757472;
  }

  if (a2)
  {
    v2 = 0x6E6F697461727564;
  }

  if (a2 <= 1u)
  {
    v8 = v2;
  }

  else
  {
    v8 = v6;
  }

  if (a2 <= 1u)
  {
    v9 = 0xE800000000000000;
  }

  else
  {
    v9 = v7;
  }

  if (v4 == v8 && v5 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_23BFFACC0();
  }

  return v10 & 1;
}

uint64_t sub_23BF8EE3C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC000000706F7243;
  v3 = 0x6C616E696769726FLL;
  v4 = a1;
  v5 = 0xD000000000000012;
  v6 = 0x800000023C00BAF0;
  if (a1 != 5)
  {
    v5 = 0x7469644572657375;
    v6 = 0xEA00000000006465;
  }

  v7 = 0x6F79614C656D6974;
  v8 = 0xEA00000000007475;
  if (a1 != 3)
  {
    v7 = 0x616E41726F6C6F63;
    v8 = 0xED0000736973796CLL;
  }

  if (a1 <= 4u)
  {
    v5 = v7;
    v6 = v8;
  }

  v9 = 0x67616D4965736162;
  v10 = 0xED0000656D614E65;
  if (a1 != 1)
  {
    v9 = 1802723693;
    v10 = 0xE400000000000000;
  }

  if (!a1)
  {
    v9 = 0x6C616E696769726FLL;
    v10 = 0xEC000000706F7243;
  }

  if (a1 <= 2u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v5;
  }

  if (v4 <= 2)
  {
    v12 = v10;
  }

  else
  {
    v12 = v6;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xED0000656D614E65;
        if (v11 != 0x67616D4965736162)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v2 = 0xE400000000000000;
        if (v11 != 1802723693)
        {
          goto LABEL_37;
        }
      }

      goto LABEL_35;
    }

LABEL_31:
    if (v11 != v3)
    {
      goto LABEL_37;
    }

    goto LABEL_35;
  }

  if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v2 = 0x800000023C00BAF0;
      if (v11 != 0xD000000000000012)
      {
        goto LABEL_37;
      }

      goto LABEL_35;
    }

    v13 = 0x7469644572657375;
    v14 = 25701;
    goto LABEL_34;
  }

  if (a2 != 3)
  {
    v3 = 0x616E41726F6C6F63;
    v2 = 0xED0000736973796CLL;
    goto LABEL_31;
  }

  v13 = 0x6F79614C656D6974;
  v14 = 29813;
LABEL_34:
  v2 = v14 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
  if (v11 != v13)
  {
LABEL_37:
    v15 = sub_23BFFACC0();
    goto LABEL_38;
  }

LABEL_35:
  if (v12 != v2)
  {
    goto LABEL_37;
  }

  v15 = 1;
LABEL_38:

  return v15 & 1;
}

uint64_t sub_23BF8F084(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEF7265696669746ELL;
  v3 = 0x6564496C61636F6CLL;
  v4 = a1;
  if (a1 <= 2u)
  {
    v11 = 0x800000023C00BB40;
    if (a1 != 1)
    {
      v11 = 0x800000023C00BB60;
    }

    if (a1)
    {
      v9 = 0xD000000000000010;
    }

    else
    {
      v9 = 0x6564496C61636F6CLL;
    }

    if (v4)
    {
      v10 = v11;
    }

    else
    {
      v10 = 0xEF7265696669746ELL;
    }
  }

  else
  {
    v5 = 0xE700000000000000;
    v6 = 0x7374756F79616CLL;
    if (a1 != 5)
    {
      v6 = 0xD000000000000018;
      v5 = 0x800000023C00BBA0;
    }

    v7 = 0x666E496F65646976;
    v8 = 0xE90000000000006FLL;
    if (a1 != 3)
    {
      v7 = 0xD000000000000013;
      v8 = 0x800000023C00BB80;
    }

    if (a1 <= 4u)
    {
      v9 = v7;
    }

    else
    {
      v9 = v6;
    }

    if (v4 <= 4)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0x800000023C00BB40;
      }

      else
      {
        v2 = 0x800000023C00BB60;
      }

      if (v9 != 0xD000000000000010)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v2 = 0xE700000000000000;
        if (v9 != 0x7374756F79616CLL)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v2 = 0x800000023C00BBA0;
        if (v9 != 0xD000000000000018)
        {
          goto LABEL_39;
        }
      }

      goto LABEL_36;
    }

    if (a2 == 3)
    {
      v2 = 0xE90000000000006FLL;
      if (v9 != 0x666E496F65646976)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v2 = 0x800000023C00BB80;
    v3 = 0xD000000000000013;
  }

  if (v9 != v3)
  {
LABEL_39:
    v12 = sub_23BFFACC0();
    goto LABEL_40;
  }

LABEL_36:
  if (v10 != v2)
  {
    goto LABEL_39;
  }

  v12 = 1;
LABEL_40:

  return v12 & 1;
}

uint64_t sub_23BF8F2A4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000072;
  v3 = 0x61646152656C6966;
  if (a1 <= 3u)
  {
    v4 = 0x726F746365726964;
    v5 = 0xEF736F746F685079;
    if (a1 != 2)
    {
      v4 = 0x6573616261746164;
      v5 = 0xEE00736F746F6850;
    }

    v8 = 0x696669746E656469;
    v9 = 0xEA00000000007265;
    if (!a1)
    {
      v8 = 0x61646152656C6966;
      v9 = 0xE900000000000072;
    }

    v10 = a1 <= 1u;
  }

  else
  {
    v4 = 0x696C6961446C6C61;
    v5 = 0xEA00000000007365;
    v6 = 0x656C6C61476C6C61;
    v7 = 0xEC00000073656972;
    if (a1 != 7)
    {
      v6 = 0x73657461647075;
      v7 = 0xE700000000000000;
    }

    if (a1 != 6)
    {
      v4 = v6;
      v5 = v7;
    }

    v8 = 0x66667568536C6C61;
    v9 = 0xEB0000000073656CLL;
    if (a1 != 4)
    {
      v8 = 0x656C6C6F436C6C61;
      v9 = 0xEE00736E6F697463;
    }

    v10 = a1 <= 5u;
  }

  if (v10)
  {
    v11 = v8;
  }

  else
  {
    v11 = v4;
  }

  if (v10)
  {
    v12 = v9;
  }

  else
  {
    v12 = v5;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v2 = 0xEA00000000007365;
        if (v11 != 0x696C6961446C6C61)
        {
          goto LABEL_45;
        }

        goto LABEL_41;
      }

      if (a2 == 7)
      {
        v2 = 0xEC00000073656972;
        if (v11 != 0x656C6C61476C6C61)
        {
          goto LABEL_45;
        }

        goto LABEL_41;
      }

      v2 = 0xE700000000000000;
      v3 = 0x73657461647075;
      goto LABEL_40;
    }

    if (a2 == 4)
    {
      v2 = 0xEB0000000073656CLL;
      if (v11 != 0x66667568536C6C61)
      {
        goto LABEL_45;
      }

      goto LABEL_41;
    }

    v13 = 0x656C6C6F436C6C61;
    v14 = 0x736E6F697463;
LABEL_44:
    v2 = v14 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
    if (v11 != v13)
    {
      goto LABEL_45;
    }

    goto LABEL_41;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v2 = 0xEF736F746F685079;
      if (v11 != 0x726F746365726964)
      {
        goto LABEL_45;
      }

      goto LABEL_41;
    }

    v13 = 0x6573616261746164;
    v14 = 0x736F746F6850;
    goto LABEL_44;
  }

  if (a2)
  {
    v2 = 0xEA00000000007265;
    if (v11 != 0x696669746E656469)
    {
      goto LABEL_45;
    }

    goto LABEL_41;
  }

LABEL_40:
  if (v11 != v3)
  {
LABEL_45:
    v15 = sub_23BFFACC0();
    goto LABEL_46;
  }

LABEL_41:
  if (v12 != v2)
  {
    goto LABEL_45;
  }

  v15 = 1;
LABEL_46:

  return v15 & 1;
}

uint64_t sub_23BF8F5C0(uint64_t a1, unsigned __int8 a2)
{
  sub_23BFFA3A0();
}

uint64_t sub_23BF8F858(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x61646152656C6966;
    v6 = 0x726F746365726964;
    if (a1 != 2)
    {
      v6 = 0x6573616261746164;
    }

    if (a1)
    {
      v5 = 0x696669746E656469;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x696C6961446C6C61;
    v2 = 0x656C6C61476C6C61;
    if (a1 != 7)
    {
      v2 = 0x73657461647075;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x66667568536C6C61;
    if (a1 != 4)
    {
      v3 = 0x656C6C6F436C6C61;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_23BF8F9B8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6563614673696874;
  if (v2 != 1)
  {
    v3 = 0x73656361466C6C61;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x61646152656C6966;
  }

  if (v2)
  {
    v5 = 0xE800000000000000;
  }

  else
  {
    v5 = 0xE900000000000072;
  }

  v6 = 0x6563614673696874;
  if (*a2 != 1)
  {
    v6 = 0x73656361466C6C61;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x61646152656C6966;
  }

  if (*a2)
  {
    v8 = 0xE800000000000000;
  }

  else
  {
    v8 = 0xE900000000000072;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_23BFFACC0();
  }

  return v9 & 1;
}

uint64_t sub_23BF8FABC()
{
  sub_23BFFAD90();
  sub_23BFFA3A0();

  return sub_23BFFADF0();
}

uint64_t sub_23BF8FB64(uint64_t a1)
{
  sub_23BFFA3A0();
}

uint64_t sub_23BF8FBF8(uint64_t a1)
{
  sub_23BFFAD90();
  sub_23BFFA3A0();

  return sub_23BFFADF0();
}

unint64_t sub_23BF8FC9C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_23BF94A9C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_23BF8FCCC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000072;
  v4 = 0x6563614673696874;
  if (v2 != 1)
  {
    v4 = 0x73656361466C6C61;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x61646152656C6966;
  }

  if (!v5)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t sub_23BF8FD3C()
{
  v1 = *v0;
  sub_23BFFAD90();
  sub_23BF8F5C0(v3, v1);
  return sub_23BFFADF0();
}

uint64_t sub_23BF8FD8C(uint64_t a1)
{
  v2 = *v1;
  sub_23BFFAD90();
  sub_23BF8F5C0(v4, v2);
  return sub_23BFFADF0();
}

unint64_t sub_23BF8FDD0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_23BF94AE8(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_23BF8FE00@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23BF8F858(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

id sub_23BF8FE2C()
{
  v1 = qword_27E1E1AB0;
  v2 = *(v0 + qword_27E1E1AB0);
  v3 = v2;
  if (v2 == 1)
  {
    v4 = [*(v0 + qword_27E1E1A80) resourceDirectory];
    v3 = [objc_opt_self() readerForResourceDirectory_];

    v5 = *(v0 + v1);
    *(v0 + v1) = v3;
    v6 = v3;
    sub_23BF94B34(v5);
  }

  sub_23BF96D74(v2);
  return v3;
}

id sub_23BF8FEE0(uint64_t a1)
{
  v2 = MEMORY[0x277D84F90];
  *&v1[qword_27E1E1A88] = MEMORY[0x277D84F90];
  *&v1[qword_27E1E1A90] = v2;
  *&v1[qword_27E1E1A98] = v2;
  *&v1[qword_27E1E1AA0] = v2;
  *&v1[qword_27E1E1AA8] = v2;
  *&v1[qword_27E1E1AB0] = 1;
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    *&v1[qword_27E1E1A80] = v3;
    v5.receiver = v1;
    v5.super_class = type metadata accessor for ParmesanDebugViewController(0);
    return objc_msgSendSuper2(&v5, sel_initWithNibName_bundle_, 0, 0);
  }

  else
  {
    result = sub_23BFFAB00();
    __break(1u);
  }

  return result;
}

void sub_23BF90050(void *a1, uint64_t a2)
{
  v9.receiver = a1;
  v9.super_class = type metadata accessor for ParmesanDebugViewController(0);
  v2 = v9.receiver;
  objc_msgSendSuper2(&v9, sel_loadView);
  v3 = [v2 view];
  if (v3)
  {
    v4 = v3;
    objc_opt_self();
    v5 = swift_dynamicCastObjCClassUnconditional();
    sub_23BF7AC4C();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v7 = NSStringFromClass(ObjCClassFromMetadata);
    sub_23BFFA300();

    v8 = sub_23BFFA2C0();

    [v5 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v8];
  }

  else
  {
    __break(1u);
  }
}

id sub_23BF90170(unsigned __int8 a1)
{
  v2 = v1;
  v4 = sub_23BF4A264(&unk_27E1E0590, &qword_23C005890);
  MEMORY[0x28223BE20](v4 - 8);
  v45 = &v45 - v5;
  v6 = sub_23BFF9340();
  v47 = *(v6 - 8);
  v48 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23BFF92E0();
  v49 = *(v9 - 8);
  v50 = v9;
  MEMORY[0x28223BE20](v9);
  v46 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_23BFF9490();
  v51 = *(v11 - 8);
  v52 = v11;
  *&v12 = MEMORY[0x28223BE20](v11).n128_u64[0];
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v1 view];
  if (result)
  {
    v16 = result;
    objc_opt_self();
    v17 = swift_dynamicCastObjCClassUnconditional();
    sub_23BF7AC4C();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v19 = NSStringFromClass(ObjCClassFromMetadata);
    sub_23BFFA300();

    v20 = sub_23BFFA2C0();

    v21 = sub_23BFF8DF0();
    v22 = [v17 dequeueReusableCellWithReuseIdentifier:v20 forIndexPath:v21];

    objc_opt_self();
    v23 = swift_dynamicCastObjCClassUnconditional();

    sub_23BFF9480();
    if (a1 > 3u)
    {
      if (a1 < 8u)
      {
        sub_23BFF9450();
LABEL_19:
        sub_23BF4A264(&qword_27E1E05A0, &unk_23C001DF0);
        sub_23BFF9350();
        *(swift_allocObject() + 16) = xmmword_23C001BB0;
        v38 = v49;
        v37 = v50;
        v39 = v46;
        (*(v49 + 104))(v46, *MEMORY[0x277D74A98], v50);
        v40 = sub_23BFF92F0();
        (*(*(v40 - 8) + 56))(v45, 1, 1, v40);
        sub_23BFF9330();
        sub_23BFF9320();
        (*(v47 + 8))(v8, v48);
        (*(v38 + 8))(v39, v37);
        goto LABEL_20;
      }

      sub_23BFF9450();
      sub_23BFF93B0();
LABEL_20:
      sub_23BFFA7B0();
      v32 = v51;
      v41 = v52;
LABEL_21:
      v54[3] = v41;
      v54[4] = MEMORY[0x277D74C30];
      v42 = sub_23BF4AD24(v54);
      (*(v32 + 16))(v42, v14, v41);
      v43 = v22;
      MEMORY[0x23EEC3420](v54);

      (*(v32 + 8))(v14, v41);
      return v23;
    }

    if (a1 > 1u)
    {
      if (a1 == 2)
      {
        sub_23BFF9450();
        v54[0] = 0;
        v54[1] = 0xE000000000000000;
        v28 = sub_23BF8FE2C();
        if (v28)
        {
          v29 = v28;
          v30 = [v28 count];
        }

        else
        {
          v30 = 0;
        }

        v32 = v51;
        v41 = v52;
        v53 = v30;
        v44 = sub_23BFFAC70();
        MEMORY[0x23EEC3090](v44);

        sub_23BFF93B0();
        sub_23BFFA7B0();
        goto LABEL_21;
      }

      sub_23BFF9450();
      v54[0] = *(*&v2[qword_27E1E1A88] + 16);
      sub_23BFFAC70();
      sub_23BFF93B0();
      goto LABEL_19;
    }

    if (!a1)
    {
      sub_23BFF9450();
      v24 = sub_23BFFA2C0();
      v25 = [objc_opt_self() systemImageNamed_];

      sub_23BFF9460();
      v26 = [objc_opt_self() systemPurpleColor];
      v27 = sub_23BFF9420();
      sub_23BFF9410();
      v27(v54, 0);
      goto LABEL_20;
    }

    sub_23BFF9450();
    v31 = sub_23BF8FE2C();
    v32 = v51;
    if (!v31 || (v33 = v31, v34 = [v31 uuidString], v33, !v34))
    {
      v35 = *&v2[qword_27E1E1AB0];
      if (!v35)
      {
        goto LABEL_24;
      }

      v36 = [v35 assetCollectionIdentifier];
      if (!v36)
      {
        goto LABEL_24;
      }

      v34 = v36;
    }

    sub_23BFFA300();

LABEL_24:
    sub_23BFF93B0();
    sub_23BFFA7B0();
    v41 = v52;
    goto LABEL_21;
  }

  __break(1u);
  return result;
}

void sub_23BF909CC(char a1, uint64_t a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ParmesanDebugViewController(0);
  objc_msgSendSuper2(&v7, sel_viewWillAppear_, a1 & 1);
  sub_23BF90BEC();
  v4 = sub_23BFFA2C0();
  [v2 setTitle_];

  v5 = [v2 navigationItem];
  v6 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:24 target:v2 action:sel_didTapCancel];
  [v5 setLeftBarButtonItem_];
}

void sub_23BF90AB8(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_23BF909CC(a3, v4);
}

uint64_t sub_23BF90B20()
{
  sub_23BF94B44();
  sub_23BF94B98();
  sub_23BFF9500();
  sub_23BF4A264(&qword_27E1E1AE8, &qword_23C005888);
  sub_23BFF94E0();
  sub_23BFF94A0();
  sub_23BFF94A0();
  return sub_23BFF94A0();
}

void sub_23BF90BEC()
{
  v1 = sub_23BF4A264(&qword_27E1E0510, &qword_23C001D30);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v13 - v2;
  v4 = sub_23BF8FE2C();
  if (v4)
  {
    v14 = v4;
    v5 = [v4 contentType];
    if (v5 > 1)
    {
      v7 = v5;
      v8 = sub_23BFFA540();
      (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
      sub_23BFFA520();
      v9 = v0;
      v10 = sub_23BFFA510();
      v11 = swift_allocObject();
      v12 = MEMORY[0x277D85700];
      v11[2] = v10;
      v11[3] = v12;
      v11[4] = v7;
      v11[5] = v9;
      sub_23BF56D9C(0, 0, v3, &unk_23C005908, v11);
    }

    else
    {
      v6 = v14;
    }
  }
}

uint64_t sub_23BF90D78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_23BF4A264(&qword_27E1E1AE8, &qword_23C005888);
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v5[7] = sub_23BFFA520();
  v5[8] = sub_23BFFA510();
  v8 = sub_23BFFA4C0();
  v5[9] = v8;
  v5[10] = v7;

  return MEMORY[0x2822009F8](sub_23BF90E7C, v8, v7);
}

uint64_t sub_23BF90E7C()
{
  v1 = v0[2];
  switch(v1)
  {
    case 4:
      v5 = swift_task_alloc();
      v0[15] = v5;
      *v5 = v0;
      v5[1] = sub_23BF914D0;

      return sub_23BF92B10();
    case 3:
      v4 = swift_task_alloc();
      v0[13] = v4;
      *v4 = v0;
      v4[1] = sub_23BF912C8;

      return sub_23BF9255C();
    case 2:
      v2 = swift_task_alloc();
      v0[11] = v2;
      *v2 = v0;
      v2[1] = sub_23BF910C0;

      return sub_23BF92078();
    default:
      v0[17] = MEMORY[0x277D84F90];
      sub_23BFF8F70();
      swift_allocObject();
      v6 = sub_23BFF8F60();
      v0[18] = v6;

      v7 = swift_task_alloc();
      v0[19] = v7;
      *v7 = v0;
      v7[1] = sub_23BF916D8;

      return (sub_23BF9659C)(v6);
  }
}

uint64_t sub_23BF910C0(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 96) = a1;

  v3 = *(v2 + 80);
  v4 = *(v2 + 72);

  return MEMORY[0x2822009F8](sub_23BF911E8, v4, v3);
}

uint64_t sub_23BF911E8()
{
  v0[17] = v0[12];
  sub_23BFF8F70();
  swift_allocObject();
  v1 = sub_23BFF8F60();
  v0[18] = v1;

  v2 = swift_task_alloc();
  v0[19] = v2;
  *v2 = v0;
  v2[1] = sub_23BF916D8;

  return (sub_23BF9659C)(v1);
}

uint64_t sub_23BF912C8(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 112) = a1;

  v3 = *(v2 + 80);
  v4 = *(v2 + 72);

  return MEMORY[0x2822009F8](sub_23BF913F0, v4, v3);
}

uint64_t sub_23BF913F0()
{
  v0[17] = v0[14];
  sub_23BFF8F70();
  swift_allocObject();
  v1 = sub_23BFF8F60();
  v0[18] = v1;

  v2 = swift_task_alloc();
  v0[19] = v2;
  *v2 = v0;
  v2[1] = sub_23BF916D8;

  return (sub_23BF9659C)(v1);
}

uint64_t sub_23BF914D0(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 128) = a1;

  v3 = *(v2 + 80);
  v4 = *(v2 + 72);

  return MEMORY[0x2822009F8](sub_23BF915F8, v4, v3);
}

uint64_t sub_23BF915F8()
{
  v0[17] = v0[16];
  sub_23BFF8F70();
  swift_allocObject();
  v1 = sub_23BFF8F60();
  v0[18] = v1;

  v2 = swift_task_alloc();
  v0[19] = v2;
  *v2 = v0;
  v2[1] = sub_23BF916D8;

  return (sub_23BF9659C)(v1);
}

uint64_t sub_23BF916D8(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 160) = a1;

  v3 = *(v2 + 80);
  v4 = *(v2 + 72);

  return MEMORY[0x2822009F8](sub_23BF91824, v4, v3);
}

uint64_t sub_23BF91824()
{

  v1 = swift_task_alloc();
  *(v0 + 168) = v1;
  *v1 = v0;
  v1[1] = sub_23BF918D8;

  return sub_23BF969E4();
}

uint64_t sub_23BF918D8(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 176) = a1;

  v3 = *(v2 + 80);
  v4 = *(v2 + 72);

  return MEMORY[0x2822009F8](sub_23BF91A24, v4, v3);
}

uint64_t sub_23BF91A24()
{

  v1 = swift_task_alloc();
  *(v0 + 184) = v1;
  *v1 = v0;
  v1[1] = sub_23BF91AD8;

  return sub_23BF96C14();
}

uint64_t sub_23BF91AD8(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 192) = a1;

  v3 = *(v2 + 80);
  v4 = *(v2 + 72);

  return MEMORY[0x2822009F8](sub_23BF91C24, v4, v3);
}

uint64_t sub_23BF91C24()
{

  v1 = swift_task_alloc();
  *(v0 + 200) = v1;
  *v1 = v0;
  v1[1] = sub_23BF91CD8;

  return sub_23BF96CC4();
}

uint64_t sub_23BF91CD8(uint64_t a1)
{
  *(*v1 + 208) = a1;

  return MEMORY[0x2822009F8](sub_23BF91DF8, 0, 0);
}

uint64_t sub_23BF91DF8(uint64_t a1)
{
  *(v1 + 216) = sub_23BFFA510();
  v3 = sub_23BFFA4C0();

  return MEMORY[0x2822009F8](sub_23BF91E84, v3, v2);
}

uint64_t sub_23BF91E84()
{
  v1 = v0[26];
  v2 = v0[24];
  v3 = v0[22];
  v4 = v0[20];
  v5 = v0[17];
  v6 = v0[3];

  if (!v1)
  {
    v1 = MEMORY[0x277D84F90];
  }

  if (!v2)
  {
    v2 = MEMORY[0x277D84F90];
  }

  if (!v3)
  {
    v3 = MEMORY[0x277D84F90];
  }

  if (!v4)
  {
    v4 = MEMORY[0x277D84F90];
  }

  *(v6 + qword_27E1E1A88) = v5;

  *(v6 + qword_27E1E1A90) = v4;

  *(v6 + qword_27E1E1A98) = v3;

  *(v6 + qword_27E1E1AA0) = v2;

  *(v6 + qword_27E1E1AA8) = v1;

  v7 = sub_23BF90B20();
  v10 = *(v6 + qword_27E1E2F00);
  if (v10)
  {
    v12 = v0[5];
    v11 = v0[6];
    v13 = v0[4];
    v14 = v10;
    sub_23BFF9560();

    (*(v12 + 8))(v11, v13);
    v8 = v0[9];
    v9 = v0[10];
    v7 = sub_23BF92000;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_23BF92000()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23BF92078()
{
  v1[2] = v0;
  v2 = sub_23BF4A264(&qword_27E1E1B20, &qword_23C0058E0);
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  sub_23BF4A264(&qword_27E1E0BA8, &qword_23C002410);
  v1[6] = swift_task_alloc();
  v3 = sub_23BFF8DE0();
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();
  sub_23BFFA520();
  v1[10] = sub_23BFFA510();
  v5 = sub_23BFFA4C0();
  v1[11] = v5;
  v1[12] = v4;

  return MEMORY[0x2822009F8](sub_23BF9220C, v5, v4);
}

uint64_t sub_23BF9220C()
{
  v1 = sub_23BF8FE2C();
  if (!v1 || (v2 = v1, v3 = [v1 uuidString], v2, !v3))
  {

    goto LABEL_6;
  }

  v4 = v0[7];
  v5 = v0[8];
  v6 = v0[6];
  sub_23BFFA300();

  sub_23BFF8DA0();

  if ((*(v5 + 48))(v6, 1, v4) == 1)
  {
    v7 = v0[6];

    sub_23BF4B2D4(v7, &qword_27E1E0BA8, &qword_23C002410);
LABEL_6:

    v8 = v0[1];
    v9 = MEMORY[0x277D84F90];

    return v8(v9);
  }

  (*(v0[8] + 32))(v0[9], v0[6], v0[7]);
  sub_23BFF8F70();
  swift_allocObject();
  sub_23BFF8F60();
  sub_23BFF8F10();

  v11 = swift_task_alloc();
  v0[13] = v11;
  *v11 = v0;
  v11[1] = sub_23BF92434;
  v12 = v0[5];

  return sub_23BF94D5C(v12);
}

uint64_t sub_23BF92434(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 112) = a1;

  v3 = *(v2 + 96);
  v4 = *(v2 + 88);

  return MEMORY[0x2822009F8](sub_23BF96D84, v4, v3);
}

uint64_t sub_23BF9255C()
{
  v1[2] = v0;
  v2 = sub_23BF4A264(&qword_27E1E1B10, &qword_23C008980);
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  sub_23BF4A264(&qword_27E1E0BA8, &qword_23C002410);
  v1[6] = swift_task_alloc();
  v3 = sub_23BFF8DE0();
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();
  sub_23BFFA520();
  v1[10] = sub_23BFFA510();
  v5 = sub_23BFFA4C0();
  v1[11] = v5;
  v1[12] = v4;

  return MEMORY[0x2822009F8](sub_23BF926F0, v5, v4);
}

uint64_t sub_23BF926F0()
{
  v1 = sub_23BF8FE2C();
  if (!v1 || (v2 = v1, v3 = [v1 assetCollectionIdentifier], v2, !v3))
  {

    goto LABEL_6;
  }

  v4 = v0[7];
  v5 = v0[8];
  v6 = v0[6];
  sub_23BFFA300();

  sub_23BFF8DA0();

  if ((*(v5 + 48))(v6, 1, v4) == 1)
  {
    v7 = v0[6];

    sub_23BF4B2D4(v7, &qword_27E1E0BA8, &qword_23C002410);
LABEL_6:

    v8 = v0[1];
    v9 = MEMORY[0x277D84F90];

    return v8(v9);
  }

  (*(v0[8] + 32))(v0[9], v0[6], v0[7]);
  sub_23BFF8F70();
  swift_allocObject();
  sub_23BFF8F60();
  sub_23BFF8EE0();

  v11 = swift_task_alloc();
  v0[13] = v11;
  *v11 = v0;
  v11[1] = sub_23BF92918;
  v12 = v0[5];

  return sub_23BF95464(v12);
}

uint64_t sub_23BF92918(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 112) = a1;

  v3 = *(v2 + 96);
  v4 = *(v2 + 88);

  return MEMORY[0x2822009F8](sub_23BF92A40, v4, v3);
}

uint64_t sub_23BF92A40()
{
  v1 = v0[9];
  v2 = v0[7];
  v3 = v0[8];
  v5 = v0[4];
  v4 = v0[5];
  v6 = v0[3];

  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);
  v7 = v0[14];

  v8 = v0[1];

  return v8(v7);
}

uint64_t sub_23BF92B10()
{
  v1[2] = v0;
  v2 = sub_23BF4A264(&qword_27E1E1AF8, &unk_23C0058A0);
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  sub_23BF4A264(&qword_27E1E0BA8, &qword_23C002410);
  v1[6] = swift_task_alloc();
  v3 = sub_23BFF8DE0();
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();
  sub_23BFFA520();
  v1[10] = sub_23BFFA510();
  v5 = sub_23BFFA4C0();
  v1[11] = v5;
  v1[12] = v4;

  return MEMORY[0x2822009F8](sub_23BF92CA4, v5, v4);
}

uint64_t sub_23BF92CA4()
{
  v1 = sub_23BF8FE2C();
  if (!v1 || (v2 = v1, v3 = [v1 uuidString], v2, !v3))
  {

    goto LABEL_6;
  }

  v4 = v0[7];
  v5 = v0[8];
  v6 = v0[6];
  sub_23BFFA300();

  sub_23BFF8DA0();

  if ((*(v5 + 48))(v6, 1, v4) == 1)
  {
    v7 = v0[6];

    sub_23BF4B2D4(v7, &qword_27E1E0BA8, &qword_23C002410);
LABEL_6:

    v8 = v0[1];
    v9 = MEMORY[0x277D84F90];

    return v8(v9);
  }

  (*(v0[8] + 32))(v0[9], v0[6], v0[7]);
  sub_23BFF8F70();
  swift_allocObject();
  sub_23BFF8F60();
  sub_23BFF8EF0();

  v11 = swift_task_alloc();
  v0[13] = v11;
  *v11 = v0;
  v11[1] = sub_23BF92434;
  v12 = v0[5];

  return sub_23BF95DD4(v12);
}

void sub_23BF92ECC(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    switch(a1)
    {
      case 5u:
        v12 = *&v1[qword_27E1E1A90];
        v13 = type metadata accessor for ParmesanDebugFaceListViewController(0);
        v14 = objc_allocWithZone(v13);
        v15 = &v14[qword_27E1E13A0];
        *v15 = v12;
        v15[8] = 1;
        v14[qword_27E1E13A8] = 0;
        v26.receiver = v14;
        v26.super_class = v13;

        v6 = objc_msgSendSuper2(&v26, sel_initWithNibName_bundle_, 0, 0);
        v7 = [v1 navigationController];
        if (!v7)
        {
          goto LABEL_21;
        }

        break;
      case 6u:
        v19 = *&v1[qword_27E1E1AA0];
        v20 = type metadata accessor for ParmesanDebugFaceListViewController(0);
        v21 = objc_allocWithZone(v20);
        v22 = &v21[qword_27E1E13A0];
        *v22 = v19;
        v22[8] = 2;
        v21[qword_27E1E13A8] = 0;
        v27.receiver = v21;
        v27.super_class = v20;

        v6 = objc_msgSendSuper2(&v27, sel_initWithNibName_bundle_, 0, 0);
        v7 = [v1 navigationController];
        if (!v7)
        {
LABEL_21:

          return;
        }

        break;
      case 7u:
        v8 = *&v1[qword_27E1E1AA8];
        v9 = type metadata accessor for ParmesanDebugFaceListViewController(0);
        v10 = objc_allocWithZone(v9);
        v11 = &v10[qword_27E1E13A0];
        *v11 = v8;
        v11[8] = 0;
        v10[qword_27E1E13A8] = 1;
        v28.receiver = v10;
        v28.super_class = v9;

        v6 = objc_msgSendSuper2(&v28, sel_initWithNibName_bundle_, 0, 0);
        v7 = [v1 navigationController];
        if (!v7)
        {
          goto LABEL_21;
        }

        break;
      default:
        return;
    }

LABEL_20:
    v23 = v7;
    [v7 pushViewController:v6 animated:1];

    goto LABEL_21;
  }

  if (a1)
  {
    if (a1 == 3)
    {
      v16 = *&v1[qword_27E1E1A88];
      v17 = type metadata accessor for ParmesanDebugStoredPhotoListViewController(0);
      v18 = objc_allocWithZone(v17);
      *&v18[qword_27E1E26C0] = v16;
      v24.receiver = v18;
      v24.super_class = v17;

      v6 = objc_msgSendSuper2(&v24, sel_initWithNibName_bundle_, 0, 0);
      v7 = [v1 navigationController];
      if (!v7)
      {
        goto LABEL_21;
      }
    }

    else
    {
      if (a1 != 4)
      {
        return;
      }

      v2 = *&v1[qword_27E1E1A98];
      v3 = type metadata accessor for ParmesanDebugFaceListViewController(0);
      v4 = objc_allocWithZone(v3);
      v5 = &v4[qword_27E1E13A0];
      *v5 = v2;
      v5[8] = 0;
      v4[qword_27E1E13A8] = 0;
      v25.receiver = v4;
      v25.super_class = v3;

      v6 = objc_msgSendSuper2(&v25, sel_initWithNibName_bundle_, 0, 0);
      v7 = [v1 navigationController];
      if (!v7)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_20;
  }

  sub_23BF93234();
}

uint64_t sub_23BF93234()
{
  v0 = sub_23BFF8D10();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23BF4A264(&qword_27E1E0B78, &unk_23C0038E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v26 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v26 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v26 - v14;
  sub_23BFF8CE0();
  sub_23BF93854(v12);
  v16 = *(v1 + 48);
  if (!v16(v15, 1, v0))
  {
    v27 = v3;
    v29 = v1;
    sub_23BF4A264(&qword_27E1E1AF0, &qword_23C005898);
    sub_23BFF8B70();
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_23C005680;
    v26 = v17;
    v28 = v12;
    sub_23BF726CC(v12, v9);
    if (v16(v9, 1, v0) == 1)
    {
      sub_23BF4B2D4(v9, &qword_27E1E0B78, &unk_23C0038E0);
    }

    else
    {
      sub_23BFF8CB0();
      (*(v29 + 8))(v9, v0);
    }

    sub_23BFF8B60();

    sub_23BFF8B60();
    sub_23BFF8B60();
    sub_23BFF8B60();
    sub_23BFF8B60();
    sub_23BFF8CD0();

    v12 = v28;
    v1 = v29;
    v3 = v27;
  }

  sub_23BF726CC(v15, v6);
  if (v16(v6, 1, v0) == 1)
  {
    sub_23BF4B2D4(v6, &qword_27E1E0B78, &unk_23C0038E0);
    if (qword_27E1DFDE0 != -1)
    {
      swift_once();
    }

    v18 = sub_23BFF92B0();
    sub_23BF4A22C(v18, qword_27E1EB570);
    v19 = sub_23BFF9290();
    v20 = sub_23BFFA650();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_23BF0C000, v19, v20, "Failed to open TTR, invalid URL", v21, 2u);
      MEMORY[0x23EEC4DF0](v21, -1, -1);
    }
  }

  else
  {
    (*(v1 + 32))(v3, v6, v0);
    v22 = [objc_opt_self() sharedApplication];
    v23 = sub_23BFF8C40();
    sub_23BFE4600(MEMORY[0x277D84F90]);
    type metadata accessor for OpenExternalURLOptionsKey(0);
    sub_23BF94C54();
    v24 = sub_23BFFA260();

    [v22 openURL:v23 options:v24 completionHandler:0];

    (*(v1 + 8))(v3, v0);
  }

  sub_23BF4B2D4(v12, &qword_27E1E0B78, &unk_23C0038E0);
  return sub_23BF4B2D4(v15, &qword_27E1E0B78, &unk_23C0038E0);
}

id sub_23BF93854@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v130 = a1;
  v137 = sub_23BFF8FF0();
  v134 = *(v137 - 8);
  MEMORY[0x28223BE20](v137);
  v136 = v119 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23BFFA350();
  v127 = *(v4 - 8);
  v128 = v4;
  MEMORY[0x28223BE20](v4);
  v126 = v119 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23BFF8BF0();
  v124 = *(v6 - 8);
  v125 = v6;
  MEMORY[0x28223BE20](v6);
  v123 = v119 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23BFF8D10();
  v133 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v122 = v119 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v132 = v119 - v11;
  v12 = sub_23BFF8DE0();
  v13 = *(v12 - 8);
  v138 = v12;
  v139 = v13;
  MEMORY[0x28223BE20](v12);
  v120 = v119 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v121 = v119 - v16;
  v17 = sub_23BF8FE2C();
  v135 = v1;
  v129 = v8;
  if (v17)
  {
    v18 = v17;
    v19 = [v17 count];
    if (v19)
    {
      v20 = v19;
      v21 = 0;
      v22 = MEMORY[0x277D84F90];
      do
      {
        v24 = [v18 objectAtIndex_];
        if (v24)
        {
          v25 = v24;
          v27 = *&v24[OBJC_IVAR___NTKParmesanAsset_localIdentifier];
          v26 = *&v24[OBJC_IVAR___NTKParmesanAsset_localIdentifier + 8];

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v22 = sub_23BF61740(0, *(v22 + 2) + 1, 1, v22);
          }

          v29 = *(v22 + 2);
          v28 = *(v22 + 3);
          v30 = v22;
          if (v29 >= v28 >> 1)
          {
            v30 = sub_23BF61740((v28 > 1), v29 + 1, 1, v22);
          }

          *(v30 + 2) = v29 + 1;
          v22 = v30;
          v23 = &v30[16 * v29];
          *(v23 + 4) = v27;
          *(v23 + 5) = v26;
        }

        ++v21;
      }

      while (v20 != v21);
    }

    else
    {
      v22 = MEMORY[0x277D84F90];
    }

    v2 = v135;
  }

  else
  {
    v22 = MEMORY[0x277D84F90];
  }

  v141 = 0;
  v142 = 0xE000000000000000;
  sub_23BFFA9F0();
  MEMORY[0x23EEC3090](0xD00000000000003BLL, 0x800000023C00FE30);
  result = [*&v2[qword_27E1E1A80] selectedOptionForCustomEditMode:12 slot:0];
  if (result)
  {
    v32 = result;
    v33 = 7104878;
    v34 = [result localizedName];

    v131 = v22;
    if (v34)
    {
      v35 = sub_23BFFA300();
      v37 = v36;
    }

    else
    {
      v37 = 0xE300000000000000;
      v35 = 7104878;
    }

    MEMORY[0x23EEC3090](v35, v37);

    MEMORY[0x23EEC3090](0x746E65746E6F430ALL, 0xEF203A4449555520);
    v38 = qword_27E1E1AB0;
    v39 = v135;
    v40 = *&v135[qword_27E1E1AB0];
    if (v40 && (v41 = [v40 uuidString]) != 0)
    {
      v42 = v41;
      v33 = sub_23BFFA300();
      v44 = v43;
    }

    else
    {
      v44 = 0xE300000000000000;
    }

    MEMORY[0x23EEC3090](v33, v44);

    MEMORY[0x23EEC3090](0x3A656C706F65500ALL, 0xEA00000000002820);
    v45 = *&v39[v38];
    if (v45 && (v46 = [v45 peopleIdentifiers]) != 0)
    {
      v47 = v46;
      v48 = sub_23BFFA460();

      v49 = *(v48 + 16);
    }

    else
    {
      v49 = 0;
    }

    v140 = v49;
    v50 = sub_23BFFAC70();
    MEMORY[0x23EEC3090](v50);

    MEMORY[0x23EEC3090](8233, 0xE200000000000000);
    v51 = *&v39[v38];
    v52 = MEMORY[0x277D84F90];
    if (v51)
    {
      v53 = [v51 peopleIdentifiers];
      if (v53)
      {
        v54 = v53;
        v55 = sub_23BFFA460();
      }

      else
      {
        v55 = MEMORY[0x277D84F90];
      }
    }

    else
    {
      v55 = MEMORY[0x277D84F90];
    }

    v56 = 0x65736C6166;
    v57 = MEMORY[0x23EEC3130](v55, MEMORY[0x277D837D0]);
    v59 = v58;

    MEMORY[0x23EEC3090](v57, v59);

    MEMORY[0x23EEC3090](0x737465507361680ALL, 0xEA0000000000203ALL);
    v60 = v135;
    v61 = *&v135[v38];
    if (v61 && ([v61 hasPets] & 1) != 0)
    {
      v62 = 0xE400000000000000;
      v63 = 1702195828;
    }

    else
    {
      v62 = 0xE500000000000000;
      v63 = 0x65736C6166;
    }

    MEMORY[0x23EEC3090](v63, v62);

    MEMORY[0x23EEC3090](0x7574614E7361680ALL, 0xEC000000203A6572);
    v64 = *&v60[v38];
    if (v64 && ([v64 hasNature] & 1) != 0)
    {
      v65 = 0xE400000000000000;
      v66 = 1702195828;
    }

    else
    {
      v65 = 0xE500000000000000;
      v66 = 0x65736C6166;
    }

    MEMORY[0x23EEC3090](v66, v65);

    MEMORY[0x23EEC3090](0x797469437361680ALL, 0xEF203A6570616373);
    v67 = *&v60[v38];
    if (v67 && ([v67 hasCityscapes] & 1) != 0)
    {
      v68 = 0xE400000000000000;
      v56 = 1702195828;
    }

    else
    {
      v68 = 0xE500000000000000;
    }

    v69 = v120;
    MEMORY[0x23EEC3090](v56, v68);

    MEMORY[0x23EEC3090](0xD00000000000001DLL, 0x800000023C00FE70);
    v70 = v131;
    v140 = *(v131 + 2);
    v71 = sub_23BFFAC70();
    MEMORY[0x23EEC3090](v71);

    MEMORY[0x23EEC3090](8233, 0xE200000000000000);
    v72 = MEMORY[0x23EEC3130](v70, MEMORY[0x277D837D0]);
    MEMORY[0x23EEC3090](v72);

    MEMORY[0x23EEC3090](0xD000000000000013, 0x800000023C00FE90);
    v73 = qword_27E1E1A88;
    v74 = v135;
    v140 = *(*&v135[qword_27E1E1A88] + 16);
    v75 = sub_23BFFAC70();
    MEMORY[0x23EEC3090](v75);

    MEMORY[0x23EEC3090](8233, 0xE200000000000000);
    v76 = *&v74[v73];
    v77 = *(v76 + 16);
    if (v77)
    {
      v140 = v52;

      sub_23BFCE1FC(0, v77, 0);
      v78 = v134 + 16;
      v135 = *(v134 + 16);
      v79 = (*(v134 + 80) + 32) & ~*(v134 + 80);
      v119[1] = v76;
      v80 = v76 + v79;
      v134 = *(v134 + 72);
      v81 = (v78 - 8);
      v52 = v140;
      do
      {
        v82 = v136;
        v83 = v137;
        (v135)(v136, v80, v137);
        sub_23BFF8F90();
        (*v81)(v82, v83);
        v140 = v52;
        v85 = *(v52 + 16);
        v84 = *(v52 + 24);
        if (v85 >= v84 >> 1)
        {
          sub_23BFCE1FC((v84 > 1), v85 + 1, 1);
          v52 = v140;
        }

        *(v52 + 16) = v85 + 1;
        (*(v139 + 32))(v52 + ((*(v139 + 80) + 32) & ~*(v139 + 80)) + *(v139 + 72) * v85, v69, v138);
        v80 += v134;
        --v77;
      }

      while (v77);
    }

    else
    {
    }

    v86 = v138;
    v87 = MEMORY[0x23EEC3130](v52, v138);
    v89 = v88;

    MEMORY[0x23EEC3090](v87, v89);

    MEMORY[0x23EEC3090](0xD00000000000001ALL, 0x800000023C00FEB0);
    v90 = [objc_opt_self() defaultManager];
    v141 = 0;
    v142 = 0xE000000000000000;
    sub_23BFFA9F0();

    v141 = 0xD00000000000001ALL;
    v142 = 0x800000023C00FED0;
    v91 = v121;
    sub_23BFF8DD0();
    v92 = sub_23BFF8DB0();
    v94 = v93;
    (*(v139 + 8))(v91, v86);
    MEMORY[0x23EEC3090](v92, v94);

    MEMORY[0x23EEC3090](1954051118, 0xE400000000000000);
    v95 = v141;
    v96 = v142;
    v97 = [v90 temporaryDirectory];
    v98 = v122;
    sub_23BFF8CA0();

    v141 = v95;
    v142 = v96;
    v100 = v123;
    v99 = v124;
    v101 = v125;
    (*(v124 + 104))(v123, *MEMORY[0x277CC91D8], v125);
    sub_23BF66440();
    sub_23BFF8CF0();
    (*(v99 + 8))(v100, v101);
    v102 = *(v133 + 8);
    v103 = v129;
    v102(v98, v129);

    sub_23BFF8CB0();
    v104 = sub_23BFFA2C0();

    v105 = v126;
    sub_23BFFA340();
    v106 = sub_23BFFA310();
    v108 = v107;

    (*(v127 + 8))(v105, v128);
    v110 = 0;
    if (v108 >> 60 != 15)
    {
      v110 = sub_23BFF8D30();
      v109 = sub_23BF94BEC(v106, v108);
    }

    v111 = [v90 createFileAtPath:v104 contents:v110 attributes:{0, v109}];

    v112 = v130;
    if (v111)
    {

      v113 = v133;
      (*(v133 + 32))(v112, v132, v103);
      v114 = 0;
    }

    else
    {
      if (qword_27E1DFDE0 != -1)
      {
        swift_once();
      }

      v115 = sub_23BFF92B0();
      sub_23BF4A22C(v115, qword_27E1EB570);
      v116 = sub_23BFF9290();
      v117 = sub_23BFFA650();
      if (os_log_type_enabled(v116, v117))
      {
        v118 = swift_slowAlloc();
        *v118 = 0;
        _os_log_impl(&dword_23BF0C000, v116, v117, "Failed to write debug information file", v118, 2u);
        MEMORY[0x23EEC4DF0](v118, -1, -1);
      }

      v102(v132, v103);
      v114 = 1;
      v113 = v133;
    }

    return (*(v113 + 56))(v112, v114, 1, v103);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_23BF94640()
{

  v1 = *(v0 + qword_27E1E1AB0);

  sub_23BF94B34(v1);
}

id sub_23BF946EC(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_23BF94724(uint64_t a1)
{

  v2 = *(a1 + qword_27E1E1AB0);

  sub_23BF94B34(v2);
}

uint64_t type metadata accessor for ParmesanDebugViewController(uint64_t a1)
{
  result = qword_27E1E1AB8;
  if (!qword_27E1E1AB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ParmesanGalleryContentConfiguration.ViewStyle(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ParmesanGalleryContentConfiguration.ViewStyle(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23BF949F0()
{
  result = qword_27E1E1AC8;
  if (!qword_27E1E1AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E1AC8);
  }

  return result;
}

unint64_t sub_23BF94A48()
{
  result = qword_27E1E1AD0;
  if (!qword_27E1E1AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E1AD0);
  }

  return result;
}

unint64_t sub_23BF94A9C(uint64_t a1, uint64_t a2)
{
  v2 = sub_23BFFAB70();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_23BF94AE8(uint64_t a1, uint64_t a2)
{
  v2 = sub_23BFFAB70();

  if (v2 >= 9)
  {
    return 9;
  }

  else
  {
    return v2;
  }
}

void sub_23BF94B34(id a1)
{
  if (a1 != 1)
  {
  }
}

unint64_t sub_23BF94B44()
{
  result = qword_27E1E1AD8;
  if (!qword_27E1E1AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E1AD8);
  }

  return result;
}

unint64_t sub_23BF94B98()
{
  result = qword_27E1E1AE0;
  if (!qword_27E1E1AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E1AE0);
  }

  return result;
}

double sub_23BF94BEC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_23BF94C00(a1, a2);
  }

  return result;
}

double sub_23BF94C00(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }

  return result;
}

unint64_t sub_23BF94C54()
{
  result = qword_27E1E01E8;
  if (!qword_27E1E01E8)
  {
    type metadata accessor for OpenExternalURLOptionsKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E01E8);
  }

  return result;
}

void sub_23BF94CAC()
{
  v1 = MEMORY[0x277D84F90];
  *(v0 + qword_27E1E1A88) = MEMORY[0x277D84F90];
  *(v0 + qword_27E1E1A90) = v1;
  *(v0 + qword_27E1E1A98) = v1;
  *(v0 + qword_27E1E1AA0) = v1;
  *(v0 + qword_27E1E1AA8) = v1;
  *(v0 + qword_27E1E1AB0) = 1;
  sub_23BFFAB00();
  __break(1u);
}

uint64_t sub_23BF94D5C(uint64_t a1)
{
  v1[4] = a1;
  v2 = sub_23BFF8FF0();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  sub_23BF4A264(&qword_27E1E1B00, &qword_23C0088F0);
  v1[8] = swift_task_alloc();
  v3 = sub_23BF4A264(&qword_27E1E1B20, &qword_23C0058E0);
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v1[11] = swift_task_alloc();
  v4 = sub_23BF4A264(&qword_27E1E1B28, &unk_23C0058F0);
  v1[12] = v4;
  v1[13] = *(v4 - 8);
  v1[14] = swift_task_alloc();
  v1[15] = sub_23BFFA520();
  v1[16] = sub_23BFFA510();
  v6 = sub_23BFFA4C0();
  v1[17] = v6;
  v1[18] = v5;

  return MEMORY[0x2822009F8](sub_23BF94F5C, v6, v5);
}

uint64_t sub_23BF94F5C()
{
  (*(v0[10] + 16))(v0[11], v0[4], v0[9]);
  v0[19] = swift_getOpaqueTypeConformance2();
  sub_23BFFA560();
  v0[20] = MEMORY[0x277D84F90];
  v1 = sub_23BFFA510();
  v0[21] = v1;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v3 = swift_task_alloc();
  v0[22] = v3;
  *v3 = v0;
  v3[1] = sub_23BF950C8;
  v4 = v0[12];
  v5 = v0[8];
  v6 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v5, v1, v6, v0 + 2, v4, AssociatedConformanceWitness);
}

uint64_t sub_23BF950C8()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 136);
    v4 = *(v2 + 144);
    v5 = sub_23BF96D94;
  }

  else
  {

    v3 = *(v2 + 136);
    v4 = *(v2 + 144);
    v5 = sub_23BF951F0;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_23BF951F0()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[13] + 8))(v0[14], v0[12]);

    v4 = v0[20];

    v5 = v0[1];

    return v5(v4);
  }

  else
  {
    v7 = *(v3 + 32);
    v7(v0[7], v1, v2);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = v0[20];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = sub_23BF61B98(0, *(v9 + 2) + 1, 1, v0[20]);
    }

    v11 = *(v9 + 2);
    v10 = *(v9 + 3);
    if (v11 >= v10 >> 1)
    {
      v9 = sub_23BF61B98((v10 > 1), v11 + 1, 1, v9);
    }

    v13 = v0[6];
    v12 = v0[7];
    v14 = v0[5];
    *(v9 + 2) = v11 + 1;
    v7(&v9[((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v11], v12, v14);
    v0[20] = v9;
    v15 = sub_23BFFA510();
    v0[21] = v15;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v17 = swift_task_alloc();
    v0[22] = v17;
    *v17 = v0;
    v17[1] = sub_23BF950C8;
    v18 = v0[12];
    v19 = v0[8];
    v20 = MEMORY[0x277D85700];

    return MEMORY[0x282200310](v19, v15, v20, v0 + 2, v18, AssociatedConformanceWitness);
  }
}

uint64_t sub_23BF95464(uint64_t a1)
{
  v1[4] = a1;
  v2 = sub_23BFF8FF0();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  sub_23BF4A264(&qword_27E1E1B00, &qword_23C0088F0);
  v1[8] = swift_task_alloc();
  v3 = sub_23BF4A264(&qword_27E1E1B10, &qword_23C008980);
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v1[11] = swift_task_alloc();
  v4 = sub_23BF4A264(&qword_27E1E1B18, &qword_23C0058D8);
  v1[12] = v4;
  v1[13] = *(v4 - 8);
  v1[14] = swift_task_alloc();
  v1[15] = sub_23BFFA520();
  v1[16] = sub_23BFFA510();
  v6 = sub_23BFFA4C0();
  v1[17] = v6;
  v1[18] = v5;

  return MEMORY[0x2822009F8](sub_23BF95664, v6, v5);
}

uint64_t sub_23BF95664()
{
  (*(v0[10] + 16))(v0[11], v0[4], v0[9]);
  v0[19] = swift_getOpaqueTypeConformance2();
  sub_23BFFA560();
  v0[20] = MEMORY[0x277D84F90];
  v1 = sub_23BFFA510();
  v0[21] = v1;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v3 = swift_task_alloc();
  v0[22] = v3;
  *v3 = v0;
  v3[1] = sub_23BF957D0;
  v4 = v0[12];
  v5 = v0[8];
  v6 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v5, v1, v6, v0 + 2, v4, AssociatedConformanceWitness);
}

uint64_t sub_23BF957D0()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 136);
    v4 = *(v2 + 144);
    v5 = sub_23BF95B6C;
  }

  else
  {

    v3 = *(v2 + 136);
    v4 = *(v2 + 144);
    v5 = sub_23BF958F8;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_23BF958F8()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[13] + 8))(v0[14], v0[12]);

    v4 = v0[20];

    v5 = v0[1];

    return v5(v4);
  }

  else
  {
    v7 = *(v3 + 32);
    v7(v0[7], v1, v2);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = v0[20];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = sub_23BF61B98(0, *(v9 + 2) + 1, 1, v0[20]);
    }

    v11 = *(v9 + 2);
    v10 = *(v9 + 3);
    if (v11 >= v10 >> 1)
    {
      v9 = sub_23BF61B98((v10 > 1), v11 + 1, 1, v9);
    }

    v13 = v0[6];
    v12 = v0[7];
    v14 = v0[5];
    *(v9 + 2) = v11 + 1;
    v7(&v9[((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v11], v12, v14);
    v0[20] = v9;
    v15 = sub_23BFFA510();
    v0[21] = v15;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v17 = swift_task_alloc();
    v0[22] = v17;
    *v17 = v0;
    v17[1] = sub_23BF957D0;
    v18 = v0[12];
    v19 = v0[8];
    v20 = MEMORY[0x277D85700];

    return MEMORY[0x282200310](v19, v15, v20, v0 + 2, v18, AssociatedConformanceWitness);
  }
}

uint64_t sub_23BF95B6C()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];

  (*(v2 + 8))(v1, v3);
  v4 = v0[2];
  if (qword_27E1DFDE0 != -1)
  {
    swift_once();
  }

  v5 = sub_23BFF92B0();
  sub_23BF4A22C(v5, qword_27E1EB570);
  v6 = v4;
  v7 = v4;
  v8 = sub_23BFF9290();
  v9 = sub_23BFFA650();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v0[3] = v4;
    v12 = v4;
    sub_23BF4A264(&qword_27E1E0538, &qword_23C001D58);
    if (sub_23BFFAC90())
    {
    }

    else
    {
      swift_allocError();
      *v13 = v4;
    }

    v14 = _swift_stdlib_bridgeErrorToNSError();

    *(v10 + 4) = v14;
    *v11 = v14;
    _os_log_impl(&dword_23BF0C000, v8, v9, "Failed to get elements from sequence: %@", v10, 0xCu);
    sub_23BF4B2D4(v11, &qword_27E1E0B50, &unk_23C001DE0);
    MEMORY[0x23EEC4DF0](v11, -1, -1);
    MEMORY[0x23EEC4DF0](v10, -1, -1);
  }

  else
  {
  }

  v15 = v0[1];
  v16 = MEMORY[0x277D84F90];

  return v15(v16);
}

uint64_t sub_23BF95DD4(uint64_t a1)
{
  v1[4] = a1;
  v2 = sub_23BFF8FF0();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  sub_23BF4A264(&qword_27E1E1B00, &qword_23C0088F0);
  v1[8] = swift_task_alloc();
  v3 = sub_23BF4A264(&qword_27E1E1AF8, &unk_23C0058A0);
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v1[11] = swift_task_alloc();
  v4 = sub_23BF4A264(&qword_27E1E1B08, &unk_23C0058C0);
  v1[12] = v4;
  v1[13] = *(v4 - 8);
  v1[14] = swift_task_alloc();
  v1[15] = sub_23BFFA520();
  v1[16] = sub_23BFFA510();
  v6 = sub_23BFFA4C0();
  v1[17] = v6;
  v1[18] = v5;

  return MEMORY[0x2822009F8](sub_23BF95FD4, v6, v5);
}

uint64_t sub_23BF95FD4()
{
  (*(v0[10] + 16))(v0[11], v0[4], v0[9]);
  v0[19] = swift_getOpaqueTypeConformance2();
  sub_23BFFA560();
  v0[20] = MEMORY[0x277D84F90];
  v1 = sub_23BFFA510();
  v0[21] = v1;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v3 = swift_task_alloc();
  v0[22] = v3;
  *v3 = v0;
  v3[1] = sub_23BF96140;
  v4 = v0[12];
  v5 = v0[8];
  v6 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v5, v1, v6, v0 + 2, v4, AssociatedConformanceWitness);
}

uint64_t sub_23BF96140()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 136);
    v4 = *(v2 + 144);
    v5 = sub_23BF96D94;
  }

  else
  {

    v3 = *(v2 + 136);
    v4 = *(v2 + 144);
    v5 = sub_23BF96268;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_23BF96268()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[13] + 8))(v0[14], v0[12]);

    v4 = v0[20];

    v5 = v0[1];

    return v5(v4);
  }

  else
  {
    v7 = *(v3 + 32);
    v7(v0[7], v1, v2);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = v0[20];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = sub_23BF61B98(0, *(v9 + 2) + 1, 1, v0[20]);
    }

    v11 = *(v9 + 2);
    v10 = *(v9 + 3);
    if (v11 >= v10 >> 1)
    {
      v9 = sub_23BF61B98((v10 > 1), v11 + 1, 1, v9);
    }

    v13 = v0[6];
    v12 = v0[7];
    v14 = v0[5];
    *(v9 + 2) = v11 + 1;
    v7(&v9[((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v11], v12, v14);
    v0[20] = v9;
    v15 = sub_23BFFA510();
    v0[21] = v15;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v17 = swift_task_alloc();
    v0[22] = v17;
    *v17 = v0;
    v17[1] = sub_23BF96140;
    v18 = v0[12];
    v19 = v0[8];
    v20 = MEMORY[0x277D85700];

    return MEMORY[0x282200310](v19, v15, v20, v0 + 2, v18, AssociatedConformanceWitness);
  }
}

uint64_t sub_23BF964DC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_23BF4A414;

  return sub_23BF90D78(a1, v4, v5, v7, v6);
}

uint64_t sub_23BF9659C()
{
  v0[2] = sub_23BFFA520();
  v0[3] = sub_23BFFA510();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_23BF9664C;

  return MEMORY[0x28219B680]();
}

uint64_t sub_23BF9664C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {
    v5 = sub_23BFFA4C0();
    v7 = v6;
    v8 = sub_23BF96834;
  }

  else
  {
    *(v4 + 48) = a1;
    v5 = sub_23BFFA4C0();
    v7 = v9;
    v8 = sub_23BF967CC;
  }

  return MEMORY[0x2822009F8](v8, v5, v7);
}

uint64_t sub_23BF967CC()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_23BF96834()
{

  if (qword_27E1DFDE0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 40);
  v2 = sub_23BFF92B0();
  sub_23BF4A22C(v2, qword_27E1EB570);
  v3 = v1;
  v4 = sub_23BFF9290();
  v5 = sub_23BFFA650();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 40);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_23BF0C000, v4, v5, "Failed to fetch daemon data: %@", v8, 0xCu);
    sub_23BF4B2D4(v9, &qword_27E1E0B50, &unk_23C001DE0);
    MEMORY[0x23EEC4DF0](v9, -1, -1);
    MEMORY[0x23EEC4DF0](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12(0);
}

uint64_t sub_23BF969E4()
{
  v0[2] = sub_23BFFA520();
  v0[3] = sub_23BFFA510();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_23BF96A94;

  return MEMORY[0x28219B690]();
}

uint64_t sub_23BF96A94(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {
    v5 = sub_23BFFA4C0();
    v7 = v6;
    v8 = sub_23BF96D88;
  }

  else
  {
    *(v4 + 48) = a1;
    v5 = sub_23BFFA4C0();
    v7 = v9;
    v8 = sub_23BF96D8C;
  }

  return MEMORY[0x2822009F8](v8, v5, v7);
}

uint64_t sub_23BF96C14()
{
  v0[2] = sub_23BFFA520();
  v0[3] = sub_23BFFA510();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_23BF96A94;

  return MEMORY[0x28219B688]();
}

uint64_t sub_23BF96CC4()
{
  v0[2] = sub_23BFFA520();
  v0[3] = sub_23BFFA510();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_23BF96A94;

  return MEMORY[0x28219B6A0]();
}

id sub_23BF96D74(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

id sub_23BF96D9C()
{
  swift_getKeyPath();
  sub_23BF97DA0(&qword_27E1E18D8, &unk_23C005964);
  sub_23BFF91C0();

  v1 = *(v0 + 16);

  return v1;
}

id sub_23BF96E38@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_23BF97DA0(&qword_27E1E18D8, &unk_23C005964);
  sub_23BFF91C0();

  v4 = *(v3 + 16);
  *a2 = v4;

  return v4;
}

void sub_23BF96EDC(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  sub_23BF4BDF0(0, &qword_27E1E0EB8, 0x277D74300);
  v5 = v4;
  v6 = sub_23BFFA880();

  if (v6)
  {
    v7 = *(v2 + 16);
    *(v2 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_23BF97DA0(&qword_27E1E18D8, &unk_23C005964);
    sub_23BFF91B0();
  }
}

id sub_23BF97034()
{
  swift_getKeyPath();
  sub_23BF97DA0(&qword_27E1E18D8, &unk_23C005964);
  sub_23BFF91C0();

  v1 = *(v0 + 24);

  return v1;
}

id sub_23BF970D0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_23BF97DA0(&qword_27E1E18D8, &unk_23C005964);
  sub_23BFF91C0();

  v4 = *(v3 + 24);
  *a2 = v4;

  return v4;
}

void sub_23BF97174(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 24);
  sub_23BF4BDF0(0, &qword_27E1E0EB8, 0x277D74300);
  v5 = v4;
  v6 = sub_23BFFA880();

  if (v6)
  {
    v7 = *(v2 + 24);
    *(v2 + 24) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_23BF97DA0(&qword_27E1E18D8, &unk_23C005964);
    sub_23BFF91B0();
  }
}

double sub_23BF972CC()
{
  swift_getKeyPath();
  sub_23BF97DA0(&qword_27E1E18D8, &unk_23C005964);
  sub_23BFF91C0();

  return *(v0 + 32);
}

double sub_23BF97358@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_23BF97DA0(&qword_27E1E18D8, &unk_23C005964);
  sub_23BFF91C0();

  result = *(v3 + 32);
  *a2 = result;
  return result;
}

void sub_23BF97414(double a1)
{
  if (*(v1 + 32) == a1)
  {
    *(v1 + 32) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_23BF97DA0(&qword_27E1E18D8, &unk_23C005964);
    sub_23BFF91B0();
  }
}

uint64_t sub_23BF97520(uint64_t a1)
{
  v2 = v1;
  swift_getKeyPath();
  sub_23BF97DA0(&qword_27E1E18D8, &unk_23C005964);
  sub_23BFF91C0();

  v3 = [*(v1 + 16) fontName];
  sub_23BFFA300();

  sub_23BFFA3A0();

  swift_getKeyPath();
  sub_23BFF91C0();

  [*(v2 + 16) pointSize];
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x23EEC3A90](*&v4);
  swift_getKeyPath();
  sub_23BFF91C0();

  v5 = [*(v2 + 24) fontName];
  sub_23BFFA300();

  sub_23BFFA3A0();

  swift_getKeyPath();
  sub_23BFF91C0();

  [*(v2 + 24) pointSize];
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  MEMORY[0x23EEC3A90](*&v6);
  swift_getKeyPath();
  sub_23BFF91C0();

  v7 = *(v2 + 32);
  if (v7 == 0.0)
  {
    v7 = 0.0;
  }

  return MEMORY[0x23EEC3A90](*&v7);
}

uint64_t sub_23BF97774()
{
  v1 = OBJC_IVAR____TtCV30NTKParmesanFaceBundleCompanion9TimeLabel18TransitioningFonts___observationRegistrar;
  v2 = sub_23BFF91E0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t _s18TransitioningFontsCMa(uint64_t a1)
{
  result = qword_27E1E1B38;
  if (!qword_27E1E1B38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23BF97874(uint64_t a1)
{
  result = sub_23BFF91E0();
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

id sub_23BF97924(uint64_t a1)
{
  v1 = sub_23BF97C8C();

  return v1;
}

uint64_t sub_23BF9795C()
{
  sub_23BFFAD90();
  sub_23BF97520(v1);
  return sub_23BFFADF0();
}

uint64_t sub_23BF979C4(uint64_t a1)
{
  sub_23BFFAD90();
  sub_23BF97520(v2);
  return sub_23BFFADF0();
}

BOOL sub_23BF97A44(uint64_t a1, uint64_t a2)
{
  sub_23BF4BDF0(0, &qword_27E1E1BE0, 0x277D82BB8);
  swift_getKeyPath();
  sub_23BF97DA0(&qword_27E1E18D8, &unk_23C005964);
  sub_23BFF91C0();

  v4 = *(a1 + 16);
  swift_getKeyPath();
  v5 = v4;
  sub_23BFF91C0();

  v6 = *(a2 + 16);
  LOBYTE(v4) = sub_23BFFA880();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  swift_getKeyPath();
  sub_23BFF91C0();

  v7 = *(a1 + 24);
  swift_getKeyPath();
  v8 = v7;
  sub_23BFF91C0();

  v9 = *(a2 + 24);
  LOBYTE(v7) = sub_23BFFA880();

  if ((v7 & 1) == 0)
  {
    return 0;
  }

  swift_getKeyPath();
  sub_23BFF91C0();

  v10 = *(a1 + 32);
  swift_getKeyPath();
  sub_23BFF91C0();

  return v10 == *(a2 + 32);
}

uint64_t sub_23BF97C8C()
{
  swift_getKeyPath();
  sub_23BF97DA0(&qword_27E1E18D8, &unk_23C005964);
  sub_23BFF91C0();

  if (*(v0 + 32) >= 0.5)
  {
    swift_getKeyPath();
    sub_23BFF91C0();

    v1 = 24;
  }

  else
  {
    swift_getKeyPath();
    sub_23BFF91C0();

    v1 = 16;
  }

  return *(v0 + v1);
}

uint64_t sub_23BF97DA0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    _s18TransitioningFontsCMa(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double sub_23BF97DE4()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 32) = result;
  return result;
}

void sub_23BF97DF4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 24);
  *(v1 + 24) = v2;
  v4 = v2;
}

void sub_23BF97E2C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 16);
  *(v1 + 16) = v2;
  v4 = v2;
}

void sub_23BF97F5C()
{
  v1 = *&v0[OBJC_IVAR___NTKParmesanGalleryView_timeContainerView];
  if (v1)
  {
    v2 = v0;
    v3 = *&v0[OBJC_IVAR___NTKParmesanGalleryView_complicationVisibility];
    *&v1[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion25ParmesanTimeContainerView_complicationVisibility] = v3;
    v4 = *&v1[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion25ParmesanTimeContainerView_uikit_timeView];
    if (v4)
    {
      *&v4[OBJC_IVAR___NTKParmesanTimeView_complicationVisibility] = v3;
      v5 = v1;
      v6 = v4;
      sub_23BF7C4C8();
    }

    else
    {
      v7 = v1;
    }

    sub_23BFBD9D4();

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v9 = Strong;
      v10 = [v2 timeAppearance];
      v11 = *&v10[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_layout];

      [v9 didFinishTransitionFromParmesanTimeLayout:0 toParmesanTimeLayout:v11];

      swift_unknownObjectRelease();
    }
  }

  else
  {
    __break(1u);
  }
}

char *sub_23BF98198(void *a1, uint64_t a2, uint64_t a3, void *a4, double a5, double a6, double a7, double a8)
{
  if (qword_27E1DFD70 != -1)
  {
    swift_once();
  }

  v14 = qword_27E1EB448;
  v15 = byte_27E1EB450;
  v16 = type metadata accessor for ParmesanGalleryView();
  v17 = objc_allocWithZone(v16);
  *&v17[OBJC_IVAR___NTKParmesanGalleryView_currentItem] = 0;
  *&v17[OBJC_IVAR___NTKParmesanGalleryView_complicationVisibility] = 0;
  v18 = OBJC_IVAR___NTKParmesanGalleryView_complicationVibrantEffectView;
  v19 = objc_allocWithZone(type metadata accessor for ParmesanVibrantEffectView());
  sub_23BF674B4(v14, v15);
  *&v17[v18] = [v19 initWithFrame_];
  *&v17[OBJC_IVAR___NTKParmesanGalleryView_timeContainerView] = 0;
  v20 = OBJC_IVAR___NTKParmesanGalleryView_backgroundContainerView;
  v21 = type metadata accessor for ParmesanGalleryTransitionContainerView();
  *&v17[v20] = [objc_allocWithZone(v21) &selRef_cgRect];
  v22 = OBJC_IVAR___NTKParmesanGalleryView_foregroundContainerView;
  *&v17[v22] = [objc_allocWithZone(v21) &selRef_cgRect];
  v23 = OBJC_IVAR___NTKParmesanGalleryView_contentEffect;
  *&v17[OBJC_IVAR___NTKParmesanGalleryView_contentEffect] = 0;
  v17[OBJC_IVAR___NTKParmesanGalleryView_isGeneratingSwatch] = 0;
  v17[OBJC_IVAR___NTKParmesanGalleryView_pausedState] = 1;
  *&v17[OBJC_IVAR___NTKParmesanGalleryView_tritiumProgress] = 0;
  swift_unknownObjectWeakInit();
  v24 = OBJC_IVAR___NTKParmesanGalleryView_transitionCoordinator;
  *&v17[v24] = [objc_allocWithZone(type metadata accessor for ParmesanGalleryTransitionCoordinator()) init];
  v25 = &v17[OBJC_IVAR___NTKParmesanGalleryView_transitioningContentEffects];
  *v25 = 0;
  v25[1] = 0;
  v26 = &v17[OBJC_IVAR___NTKParmesanGalleryView_tritiumTransition];
  type metadata accessor for ParmesanGalleryTransitionTritiumOn();
  *v26 = swift_allocObject();
  v26[1] = &off_284EBFF38;
  v27 = *&v17[v23];
  *&v17[v23] = 0;

  v28 = objc_allocWithZone(type metadata accessor for ParmesanGalleryNoPhotosView());
  v29 = a1;
  *&v17[OBJC_IVAR___NTKParmesanGalleryView_noPhotosView] = sub_23BF7F7AC(v29, 0.0, 0.0, a7, a8);
  *&v17[OBJC_IVAR___NTKParmesanGalleryView_device] = v29;
  v63.receiver = v17;
  v63.super_class = v16;
  v30 = v29;
  v31 = objc_msgSendSuper2(&v63, &selRef_cgRect, a5, a6, a7, a8);
  [v31 setClipsToBounds_];
  v32 = [objc_opt_self() blackColor];
  [v31 setBackgroundColor_];

  v33 = [v31 layer];
  [v33 setAllowsGroupOpacity_];

  v34 = sub_23BFFA360();
  v61 = 0x6E6173656D726170;
  v62 = 0xEF2D73656269762DLL;
  MEMORY[0x23EEC3090](v34);

  v35 = OBJC_IVAR___NTKParmesanGalleryView_backgroundContainerView;
  [*&v31[OBJC_IVAR___NTKParmesanGalleryView_backgroundContainerView] setFrame_];
  [v31 addSubview_];
  v36 = type metadata accessor for ParmesanTimeAppearance();
  v37 = objc_allocWithZone(v36);
  *&v37[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_device] = v30;
  *&v37[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_layout] = a4;
  *&v37[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_typeface] = a2;
  *&v37[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_numerals] = a3;
  v38 = &v37[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_style];
  v56 = v14;
  *v38 = v14;
  v55 = v15;
  v38[8] = v15;
  sub_23BF674B4(v14, v15);
  v60.receiver = v37;
  v60.super_class = v36;
  v39 = v30;
  v40 = a4;
  v41 = objc_msgSendSuper2(&v60, sel_init);
  v42 = *&v31[OBJC_IVAR___NTKParmesanGalleryView_complicationVisibility];
  v43 = type metadata accessor for ParmesanTimeContainerView(0);
  v44 = objc_allocWithZone(v43);
  *&v44[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion25ParmesanTimeContainerView_tritiumProgress] = 0;
  v44[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion25ParmesanTimeContainerView_timeTransition] = 1;
  v44[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion25ParmesanTimeContainerView_isFrozen] = 0;
  v45 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion25ParmesanTimeContainerView_overrideDate;
  v46 = sub_23BFF8D90();
  (*(*(v46 - 8) + 56))(&v44[v45], 1, 1, v46);
  *&v44[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion25ParmesanTimeContainerView_uikit_timeView] = 0;
  *&v44[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion25ParmesanTimeContainerView_uikit_timeContainerView] = 0;
  *&v44[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion25ParmesanTimeContainerView_swiftui_timeContainerView] = 0;
  *&v44[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion25ParmesanTimeContainerView_appearance] = v41;
  *&v44[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion25ParmesanTimeContainerView_complicationVisibility] = v42;
  v47 = &v44[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion25ParmesanTimeContainerView_backdropGroupName];
  *v47 = 0x6E6173656D726170;
  v47[1] = 0xEF2D73656269762DLL;
  v59.receiver = v44;
  v59.super_class = v43;
  v48 = v41;

  v49 = objc_msgSendSuper2(&v59, sel_initWithFrame_, 0.0, 0.0, a7, a8);
  [v49 setUserInteractionEnabled_];
  sub_23BFBC958();
  sub_23BFBCAFC();

  v50 = *&v31[OBJC_IVAR___NTKParmesanGalleryView_timeContainerView];
  *&v31[OBJC_IVAR___NTKParmesanGalleryView_timeContainerView] = v49;

  [v31 addSubview_];
  v51 = OBJC_IVAR___NTKParmesanGalleryView_complicationVibrantEffectView;
  [*&v31[OBJC_IVAR___NTKParmesanGalleryView_complicationVibrantEffectView] setFrame_];
  v52 = *&v31[v51];
  sub_23BFEAD0C(0x6E6173656D726170, 0xEF2D73656269762DLL);

  sub_23BF98920();
  v53 = OBJC_IVAR___NTKParmesanGalleryView_foregroundContainerView;
  [*&v31[OBJC_IVAR___NTKParmesanGalleryView_foregroundContainerView] setFrame_];
  [v31 addSubview_];

  sub_23BF674C8(v56, v55);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v31;
}

void sub_23BF98920()
{
  v1 = v0;
  v2 = [v0 timeAppearance];
  v3 = *&v0[OBJC_IVAR___NTKParmesanGalleryView_currentItem];
  if (v3 && (v4 = *(v3 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion19ParmesanGalleryItem_composition)) != 0)
  {
    v5 = *((*MEMORY[0x277D85000] & *v4) + 0xC0);
    v6 = v4;
    v7 = v5();
  }

  else
  {
    v7 = 0;
  }

  v8 = *&v2[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_style];
  v9 = v2[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_style + 8];
  sub_23BF674B4(v8, v9);

  type metadata accessor for ParmesanTimeEffect();
  inited = swift_initStackObject();
  *(inited + 16) = v8;
  *(inited + 24) = v9;
  *(inited + 32) = v7;
  sub_23BF69088(inited);
  v11 = *&v1[OBJC_IVAR___NTKParmesanGalleryView_timeContainerView];
  if (v11)
  {
    v12 = v11;
    sub_23BFBB57C(inited);

    swift_setDeallocating();
    sub_23BF674C8(*(inited + 16), *(inited + 24));
  }

  else
  {
    __break(1u);
  }
}

void sub_23BF98A84(void *a1, char a2, void *a3, char a4, double a5)
{
  v6 = v5;
  if (a2)
  {
    if (a2 == 1)
    {
      if (a4 == 1)
      {
        sub_23BF4BDF0(0, &qword_27E1E1BE0, 0x277D82BB8);
        if (sub_23BFFA880())
        {
          return;
        }
      }
    }

    else if (a4 == 2 && !a3)
    {
      return;
    }
  }

  else if (!a4 && *&a1 == *&a3)
  {
    return;
  }

  v12 = OBJC_IVAR___NTKParmesanGalleryView_currentItem;
  v13 = *(v5 + OBJC_IVAR___NTKParmesanGalleryView_currentItem);
  if (v13 && (v14 = *(v13 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion19ParmesanGalleryItem_composition)) != 0)
  {
    v15 = *((*MEMORY[0x277D85000] & *v14) + 0xC0);
    v16 = v14;
    v17 = v15();
  }

  else
  {
    v17 = 0;
  }

  type metadata accessor for ParmesanTimeEffect();
  inited = swift_initStackObject();
  *(inited + 16) = a1;
  *(inited + 24) = a2;
  *(inited + 32) = v17;
  v19 = *(v6 + v12);
  if (v19)
  {
    v20 = *(v19 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion19ParmesanGalleryItem_composition);
    if (v20)
    {
      v21 = *((*MEMORY[0x277D85000] & *v20) + 0xC0);
      sub_23BF674B4(a1, a2);
      v22 = v20;
      v20 = v21();
    }

    else
    {
      sub_23BF674B4(a1, a2);
    }
  }

  else
  {
    sub_23BF674B4(a1, a2);
    v20 = 0;
  }

  v23 = swift_initStackObject();
  *(v23 + 16) = a3;
  *(v23 + 24) = a4;
  *(v23 + 32) = v20;
  sub_23BF674B4(a3, a4);
  sub_23BF69384(inited, v23, a5);
  v24 = *(v6 + OBJC_IVAR___NTKParmesanGalleryView_timeContainerView);
  if (v24)
  {
    v25 = v24;
    sub_23BFBB838(inited, v23, a5);
    swift_setDeallocating();
    sub_23BF674C8(*(inited + 16), *(inited + 24));
    v26 = *(inited + 32);

    swift_setDeallocating();
    sub_23BF674C8(*(v23 + 16), *(v23 + 24));
  }

  else
  {
    __break(1u);
  }
}

void sub_23BF98D38(uint64_t a1)
{
  v2 = v1;
  v3 = *&v1[OBJC_IVAR___NTKParmesanGalleryView_currentItem];
  if (v3)
  {
    v5 = *&v1[OBJC_IVAR___NTKParmesanGalleryView_complicationVisibility];
    v6 = v3;
    v7 = [v2 timeAppearance];
    v8 = *&v7[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_style];
    v9 = v7[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_style + 8];
    sub_23BF674B4(v8, v9);

    if (a1)
    {
      v10 = *(a1 + OBJC_IVAR___NTKParmesanGalleryContentEffect_style);
      v11 = *(a1 + OBJC_IVAR___NTKParmesanGalleryContentEffect_style + 8);
      v12 = *(a1 + OBJC_IVAR___NTKParmesanGalleryContentEffect_style + 16);
      v13 = *(a1 + OBJC_IVAR___NTKParmesanGalleryContentEffect_style + 24);

      sub_23BF75134(v10, v11, v12, v13);
      sub_23BF9C9E4(v10, v11, v12, v13);
      v14 = (a1 + OBJC_IVAR___NTKParmesanGalleryContentEffect_style);
      a1 = *(a1 + OBJC_IVAR___NTKParmesanGalleryContentEffect_style);
      v15 = v14[1];
      v16 = v14[2];
      v17 = v14[3];
    }

    else
    {
      sub_23BF75134(0, 0, 0, 0);
      sub_23BF9C9E4(0, 0, 0, 0);
      v15 = 0;
      v16 = 0;
      v17 = 0;
    }

    sub_23BF755A0(v5, v8, v9);
    sub_23BF9C9E4(a1, v15, v16, v17);
    sub_23BF674C8(v8, v9);
  }

  v18 = &v2[OBJC_IVAR___NTKParmesanGalleryView_transitioningContentEffects];
  v19 = *&v2[OBJC_IVAR___NTKParmesanGalleryView_transitioningContentEffects];
  v20 = *&v2[OBJC_IVAR___NTKParmesanGalleryView_transitioningContentEffects + 8];
  *v18 = 0;
  *(v18 + 1) = 0;

  sub_23BF10498(v19, v20);
}

void sub_23BF98F00(void *a1, char *a2, double a3)
{
  v4 = *&v3[OBJC_IVAR___NTKParmesanGalleryView_currentItem];
  if (!v4)
  {
    return;
  }

  v5 = *(v4 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion19ParmesanGalleryItem_composition);
  if (!v5)
  {
    return;
  }

  v6 = v3;
  v8 = OBJC_IVAR___NTKParmesanGalleryView_transitionCoordinator;
  v9 = *&v3[OBJC_IVAR___NTKParmesanGalleryView_transitionCoordinator] + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion36ParmesanGalleryTransitionCoordinator_context;
  v10 = *v9;
  v11 = *(v9 + 8);
  v12 = *(v9 + 16);
  v13 = *(v9 + 24);
  v15 = *(v9 + 32);
  v14 = *(v9 + 40);
  if (*v9)
  {
    v16 = v5;
    if (v13)
    {
      sub_23BF9C89C(v10, v11, v12, v13, v15, v14);
      v17 = v12;
      sub_23BF9C940(v10, v11, v12, v13, v15, v14);
      if (v12)
      {
        v66 = *&v17[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion19ParmesanGalleryItem_composition];
        v18 = v66;

        v19 = v66;
      }

      else
      {
        v19 = 0;
      }

      goto LABEL_12;
    }

    sub_23BF9C89C(v10, v11, v12, 0, v15, v14);
    v21 = v10;
    v22 = v11;
    v23 = v12;
    v24 = 0;
  }

  else
  {
    v20 = v5;
    sub_23BF9C89C(0, v11, v12, v13, v15, v14);
    v21 = 0;
    v22 = v11;
    v23 = v12;
    v24 = v13;
  }

  sub_23BF9C940(v21, v22, v23, v24, v15, v14);
  v19 = 0;
LABEL_12:
  v67 = v19;
  v25 = (*&v6[v8] + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion36ParmesanGalleryTransitionCoordinator_context);
  v26 = *v25;
  v27 = v25[1];
  v28 = v25[2];
  v29 = v25[3];
  v31 = v25[4];
  v30 = v25[5];
  v32 = *v25;
  if (*v25)
  {
    v33 = v29 == 0;
  }

  else
  {
    v33 = 1;
  }

  if (v33)
  {
    sub_23BF9C89C(v32, v27, v28, v29, v31, v30);
    sub_23BF9C940(v26, v27, v28, v29, v31, v30);
    v39 = 0;
    if (!v67)
    {
      goto LABEL_21;
    }
  }

  else
  {
    sub_23BF9C89C(v32, v27, v28, v29, v31, v30);
    v38 = v29;
    sub_23BF9C940(v26, v27, v28, v29, v31, v30);
    v39 = *&v38[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion19ParmesanGalleryItem_composition];
    v40 = v39;

    if (!v67)
    {
LABEL_21:
      v41 = v5;
      v37 = 1;
      if (!v39)
      {
        goto LABEL_25;
      }

      goto LABEL_22;
    }
  }

  type metadata accessor for ParmesanGalleryComposition();
  v34 = v5;
  v35 = v67;
  v36 = sub_23BFFA880();

  if (!v39)
  {
    goto LABEL_25;
  }

  v37 = v36 ^ 1;
LABEL_22:
  type metadata accessor for ParmesanGalleryComposition();
  v42 = v5;
  v43 = v39;
  v44 = sub_23BFFA880();

  if (!((v10 == 0) | v37 & 1) && (v44 & 1) != 0)
  {

    goto LABEL_26;
  }

LABEL_25:
  type metadata accessor for ParmesanGalleryTransitionFade();
  v45 = swift_allocObject();

  sub_23BFEE3AC(v5, v5, v45, v6);

LABEL_26:
  v46 = &v6[OBJC_IVAR___NTKParmesanGalleryView_transitioningContentEffects];
  v48 = *&v6[OBJC_IVAR___NTKParmesanGalleryView_transitioningContentEffects];
  v47 = *&v6[OBJC_IVAR___NTKParmesanGalleryView_transitioningContentEffects + 8];
  if (v48)
  {
    v49 = v48;
  }

  sub_23BF0FA40(v48, v47);
  sub_23BF10498(v48, v47);
  v50 = *v46;
  v51 = *(v46 + 1);
  if (*v46)
  {
    v52 = v51;
    v53 = v51;
  }

  else
  {
    v53 = 0;
  }

  sub_23BF0FA40(v50, v51);
  sub_23BF10498(v50, v51);
  if (v48)
  {
    type metadata accessor for ParmesanGalleryContentEffect();
    v54 = v48;
    v55 = a1;
    v56 = sub_23BFFA880();

    v57 = a2;
    if (!v53)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v56 = 0;
    v57 = a2;
    if (!v53)
    {
LABEL_36:
      v68[0] = a1;
      v68[1] = v57;
      v60 = a1;
      v61 = v57;
      sub_23BF9AAF4(v68);
      v62 = *v46;
      v63 = *(v46 + 1);
      *v46 = v60;
      *(v46 + 1) = v61;
      sub_23BF10498(v62, v63);
      goto LABEL_37;
    }
  }

  type metadata accessor for ParmesanGalleryContentEffect();
  v53 = v53;
  v58 = v57;
  v59 = sub_23BFFA880();

  if ((v56 & v59 & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_37:
  sub_23BF9A088(a3);
}

void sub_23BF99390(uint64_t a1, uint64_t a2, double a3)
{
  if (a1 != a2)
  {
    v6 = [v3 timeAppearance];
    v7 = *&v6[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_device];
    v8 = *&v6[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_layout];
    v39 = v3;
    v9 = *&v6[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_numerals];
    v10 = *&v6[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_style];
    v11 = v6[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_style + 8];
    v12 = type metadata accessor for ParmesanTimeAppearance();
    v13 = objc_allocWithZone(v12);
    *&v13[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_device] = v7;
    *&v13[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_layout] = v8;
    *&v13[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_typeface] = a1;
    *&v13[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_numerals] = v9;
    v14 = &v13[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_style];
    *v14 = v10;
    v14[8] = v11;
    v15 = v8;
    v16 = v7;
    sub_23BF674B4(v10, v11);
    v43.receiver = v13;
    v43.super_class = v12;
    v37 = objc_msgSendSuper2(&v43, sel_init);

    v17 = [v39 timeAppearance];
    v18 = *&v17[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_device];
    v19 = *&v17[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_layout];
    v20 = *&v17[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_numerals];
    v21 = *&v17[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_style];
    v22 = v17[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_style + 8];
    v23 = objc_allocWithZone(v12);
    *&v23[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_device] = v18;
    *&v23[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_layout] = v19;
    *&v23[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_typeface] = a2;
    *&v23[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_numerals] = v20;
    v24 = &v23[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_style];
    *v24 = v21;
    v24[8] = v22;
    v25 = v19;
    v26 = v18;
    sub_23BF674B4(v21, v22);
    v42.receiver = v23;
    v42.super_class = v12;
    v27 = objc_msgSendSuper2(&v42, sel_init);

    v44[0] = xmmword_23C004430;
    v44[1] = xmmword_23C004430;
    v44[2] = xmmword_23C004440;
    v28 = *&v39[OBJC_IVAR___NTKParmesanGalleryView_timeContainerView];
    if (!v28)
    {
      __break(1u);
      return;
    }

    v29 = v37;
    v30 = v27;
    v31 = v28;
    v32 = v29;
    v33 = v30;
    LOBYTE(v29) = sub_23BFFA880();

    if (v29)
    {
      sub_23BFBC5B8(v33);
    }

    else
    {
      sub_23BFBC5B8(v32);
      v34 = *&v31[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion25ParmesanTimeContainerView_uikit_timeView];
      if (v34)
      {
        v40 = v32;
        v41 = v33;
        v35 = v34;
        sub_23BF7CCE8(&v40);

LABEL_8:
        v40 = v32;
        v41 = v33;
        v36.n128_f64[0] = a3;
        sub_23BF9A524(&v40, v44, v36);

        return;
      }
    }

    goto LABEL_8;
  }
}

void sub_23BF996D0(unint64_t a1, void *a2, double a3)
{
  if (!a2)
  {
    return;
  }

  v4 = v3;
  if (!a1)
  {
    v10 = a2;
LABEL_7:
    v11 = OBJC_IVAR___NTKParmesanGalleryView_transitionCoordinator;
    v12 = *&v4[OBJC_IVAR___NTKParmesanGalleryView_transitionCoordinator] + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion36ParmesanGalleryTransitionCoordinator_context;
    v13 = *(v12 + 8);
    v14 = *(v12 + 16);
    v15 = *(v12 + 24);
    v17 = *(v12 + 32);
    v16 = *(v12 + 40);
    v42 = *v12;
    if (*v12)
    {
      if (v15)
      {
        sub_23BF9C89C(v42, v13, v14, v15, v17, v16);
        v18 = v14;
        sub_23BF9C940(v42, v13, v14, v15, v17, v16);
        if (v14)
        {
          v43 = *&v18[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion19ParmesanGalleryItem_composition];
          v19 = v43;
        }

        else
        {
          v43 = 0;
        }

        goto LABEL_15;
      }

      sub_23BF9C89C(v42, v13, v14, 0, v17, v16);
      v20 = v42;
      v21 = v13;
      v22 = v14;
      v23 = 0;
    }

    else
    {
      sub_23BF9C89C(0, v13, v14, v15, v17, v16);
      v20 = 0;
      v21 = v13;
      v22 = v14;
      v23 = v15;
    }

    sub_23BF9C940(v20, v21, v22, v23, v17, v16);
    v43 = 0;
LABEL_15:
    v24 = (*&v4[v11] + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion36ParmesanGalleryTransitionCoordinator_context);
    v25 = *v24;
    v26 = v24[1];
    v27 = v24[2];
    v28 = v24[3];
    v29 = v24[4];
    v30 = v24[5];
    v31 = *v24;
    if (*v24)
    {
      v32 = v28 == 0;
    }

    else
    {
      v32 = 1;
    }

    if (v32)
    {
      sub_23BF9C89C(v31, v26, v27, v28, v29, v30);
      sub_23BF9C940(v25, v26, v27, v28, v29, v30);
      v34 = 0;
    }

    else
    {
      sub_23BF9C89C(v31, v26, v27, v28, v29, v30);
      v33 = v28;
      sub_23BF9C940(v25, v26, v27, v28, v29, v30);
      v34 = *&v33[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion19ParmesanGalleryItem_composition];
      v35 = v34;
    }

    v36 = (v43 | a1) == 0;
    if (a1 && v43)
    {
      type metadata accessor for ParmesanGalleryComposition();
      v37 = a1;
      v38 = v43;
      v36 = sub_23BFFA880();
    }

    if (v34)
    {
      type metadata accessor for ParmesanGalleryComposition();
      v39 = v34;
      v40 = sub_23BFFA880();

      if (v42 && ((v36 ^ 1) & 1) == 0 && (v40 & 1) != 0)
      {
        goto LABEL_31;
      }
    }

    else
    {

      v39 = 0;
    }

    type metadata accessor for ParmesanGalleryTransitionFade();
    v41 = swift_allocObject();

    sub_23BFEE3AC(a1, a2, v41, v4);

LABEL_31:
    sub_23BF9A088(a3);

    goto LABEL_32;
  }

  type metadata accessor for ParmesanGalleryComposition();
  v43 = a2;
  v8 = a1;
  v9 = sub_23BFFA880();

  if ((v9 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_32:
}

void sub_23BF99A64(void *a1)
{
  if (a1)
  {
    v2 = *&v1[OBJC_IVAR___NTKParmesanGalleryView_noPhotosView];
    v3 = a1;
    [v2 removeFromSuperview];
    type metadata accessor for ParmesanGalleryTransitionNone();
    v4 = swift_allocObject();
    v5 = *&v1[OBJC_IVAR___NTKParmesanGalleryView_currentItem];
    if (v5)
    {
      v12 = *(v5 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion19ParmesanGalleryItem_composition);
      v6 = v12;
    }

    else
    {
      v12 = 0;
    }

    sub_23BFEEF10(v12, v3, v4, v1);
  }

  else
  {
    v7 = v1;
    if (qword_27E1DFD90 != -1)
    {
      swift_once();
    }

    v8 = sub_23BFF92B0();
    sub_23BF4A22C(v8, qword_27E1EB480);
    v9 = sub_23BFF9290();
    v10 = sub_23BFFA670();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_23BF0C000, v9, v10, "composition is nil; showing no content", v11, 2u);
      MEMORY[0x23EEC4DF0](v11, -1, -1);
    }

    if (v7[OBJC_IVAR___NTKParmesanGalleryView_isGeneratingSwatch] == 1)
    {
      sub_23BF9B4B0();

      sub_23BF9B984();
    }

    else
    {

      sub_23BF99CCC(1);
    }
  }
}

void sub_23BF99CCC(char a1)
{
  v2 = v1;
  if (a1)
  {
    sub_23BF9B4B0();
    sub_23BF9B984();
    v3 = *&v1[OBJC_IVAR___NTKParmesanGalleryView_device];
    v4 = type metadata accessor for ParmesanTimeLayout();
    v5 = objc_allocWithZone(v4);
    *&v5[OBJC_IVAR___NTKParmesanTimeLayout_alignment] = 0;
    *&v5[OBJC_IVAR___NTKParmesanTimeLayout_scale] = 1;
    v35.receiver = v5;
    v35.super_class = v4;
    v6 = objc_msgSendSuper2(&v35, sel_init);
    v7 = [v2 timeAppearance];
    v8 = *&v7[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_typeface];

    v9 = [v2 timeAppearance];
    v10 = *&v9[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_numerals];

    if (qword_27E1DFD70 != -1)
    {
      swift_once();
    }

    v11 = qword_27E1EB448;
    v12 = byte_27E1EB450;
    v13 = type metadata accessor for ParmesanTimeAppearance();
    v14 = objc_allocWithZone(v13);
    *&v14[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_device] = v3;
    *&v14[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_layout] = v6;
    *&v14[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_typeface] = v8;
    *&v14[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_numerals] = v10;
    v15 = &v14[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_style];
    *v15 = v11;
    v15[8] = v12;
    v16 = v3;
    sub_23BF674B4(v11, v12);
    v34.receiver = v14;
    v34.super_class = v13;
    v17 = objc_msgSendSuper2(&v34, sel_init);
    v18 = *&v2[OBJC_IVAR___NTKParmesanGalleryView_timeContainerView];
    if (v18)
    {
      v19 = v17;
      v20 = v18;
      sub_23BFBC5B8(v19);

      v21 = *&v2[OBJC_IVAR___NTKParmesanGalleryView_backgroundContainerView];
      v22 = *&v2[OBJC_IVAR___NTKParmesanGalleryView_noPhotosView];
      v23 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion38ParmesanGalleryTransitionContainerView_currentView;
      [*&v21[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion38ParmesanGalleryTransitionContainerView_currentView] removeFromSuperview];
      v24 = *&v21[v23];
      *&v21[v23] = 0;

      v25 = v22;
      [v21 addSubview_];
      v26 = *&v21[v23];
      *&v21[v23] = v22;

      [v25 constrainToSuperviewWithEdges:15 insets:0 useLayoutMargins:{*MEMORY[0x277D75060], *(MEMORY[0x277D75060] + 8), *(MEMORY[0x277D75060] + 16), *(MEMORY[0x277D75060] + 24)}];
      sub_23BF4BDF0(0, &qword_27E1E0930, off_278BA5488);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v28 = sub_23BFFA2C0();
      v29 = sub_23BFFA2C0();
      v30 = [ObjCClassFromMetadata localizedStringForKey:v28 comment:v29];

      sub_23BFFA300();
      v31 = *&v25[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion27ParmesanGalleryNoPhotosView_label];
      v32 = sub_23BFFA2C0();

      [v31 setText_];
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v33 = *&v1[OBJC_IVAR___NTKParmesanGalleryView_noPhotosView];

    [v33 removeFromSuperview];
  }
}

void sub_23BF9A088(double a1)
{
  v2 = (*(v1 + OBJC_IVAR___NTKParmesanGalleryView_transitionCoordinator) + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion36ParmesanGalleryTransitionCoordinator_context);
  v3 = *v2;
  if (*v2)
  {
    v5 = v2[1];
    v6 = v2[2];
    v8 = v2[3];
    v7 = v2[4];
    v9 = v2[5];
    v10 = objc_opt_self();
    swift_unknownObjectRetain();
    sub_23BF9C900(v6, v8);
    sub_23BF0FA40(v7, v9);
    [v10 begin];
    v44 = v10;
    [v10 setDisableActions_];
    if (v8)
    {
      v39 = v9;
      v40 = v7;
      ObjectType = swift_getObjectType();
      v47[0] = v6;
      v47[1] = v8;
      v12 = *(v5 + 32);
      v13 = v6;
      v43 = v8;
      v12(v47, ObjectType, v5, a1);
      v14 = v45;
      v15 = [v45 timeAppearance];
      v41 = v8;
      v42 = v6;
      if (v6 && (v16 = *&v13[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion19ParmesanGalleryItem_composition]) != 0)
      {
        v17 = *((*MEMORY[0x277D85000] & *v16) + 0xC0);
        v18 = v16;
        v14 = v45;
        v19 = v17();
      }

      else
      {
        v19 = 0;
      }

      v20 = *&v15[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_style];
      v21 = v15[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_style + 8];
      sub_23BF674B4(v20, v21);

      type metadata accessor for ParmesanTimeEffect();
      inited = swift_initStackObject();
      *(inited + 16) = v20;
      v38 = v21;
      *(inited + 24) = v21;
      *(inited + 32) = v19;
      v23 = [v14 timeAppearance];
      v24 = *&v43[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion19ParmesanGalleryItem_composition];
      if (v24)
      {
        v25 = *((*MEMORY[0x277D85000] & *v24) + 0xC0);
        v26 = v24;
        v27 = v25();
      }

      else
      {
        v27 = 0;
      }

      v28 = *&v23[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_style];
      v29 = v23[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_style + 8];
      sub_23BF674B4(v28, v29);

      v30 = swift_initStackObject();
      *(v30 + 16) = v28;
      *(v30 + 24) = v29;
      *(v30 + 32) = v27;
      if (sub_23BF8E604(inited, v30))
      {
        sub_23BF674C8(v20, v38);

        v8 = v41;
        v6 = v42;
        sub_23BF9C9A4(v42, v41);
        sub_23BF674C8(v28, v29);
      }

      else
      {
        sub_23BF69384(inited, v30, a1);
        v31 = *&v45[OBJC_IVAR___NTKParmesanGalleryView_timeContainerView];
        if (!v31)
        {
          __break(1u);
          return;
        }

        v32 = v31;
        sub_23BFBB838(inited, v30, a1);
        swift_setDeallocating();
        sub_23BF674C8(*(inited + 16), *(inited + 24));

        v8 = v41;
        v6 = v42;
        sub_23BF9C9A4(v42, v41);

        swift_setDeallocating();
        sub_23BF674C8(*(v30 + 16), *(v30 + 24));
        v27 = *(v30 + 32);
      }

      v7 = v40;

      v9 = v39;
    }

    if (v7)
    {
      v46[0] = v7;
      v46[1] = v9;
      v33 = swift_getObjectType();
      v34 = *(v5 + 24);
      v35 = v7;
      v36 = v9;
      v34(v47, v33, v5);
      v37.n128_f64[0] = a1;
      sub_23BF9A524(v46, v47, v37);
      sub_23BF9CA34(v47);
      sub_23BF10498(v7, v9);
    }

    [v44 commit];
    sub_23BF9C940(v3, v5, v6, v8, v7, v9);
  }

  else
  {

    sub_23BF9B4B0();
  }
}

void sub_23BF9A524(uint64_t a1, uint64_t a2, __n128 a3)
{
  v4 = v3;
  v6 = a3.n128_f64[0];
  v7 = *a1;
  v8 = *(a1 + 8);
  sub_23BF669FC(a3);
  v13 = *(v3 + OBJC_IVAR___NTKParmesanGalleryView_timeContainerView);
  if (!v13)
  {
    __break(1u);
    return;
  }

  v14 = v9;
  v15 = v10;
  v16 = v11;
  v17 = v12;
  type metadata accessor for ParmesanTimeAppearance();
  v18 = v13;
  v19 = v7;
  v20 = v8;
  v21 = sub_23BFFA880();

  if (v21)
  {
    sub_23BFBC5B8(v20);
  }

  else
  {
    v22 = *&v18[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion25ParmesanTimeContainerView_uikit_timeView];
    if (v22)
    {
      v31 = v19;
      v32 = v20;
      v23 = v22;
      sub_23BF7CDBC(&v31, v14, v15);
    }

    v31 = v19;
    v32 = v20;
    sub_23BFBD3A4(&v31, v14, v15, v16, v17);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v25 = Strong;
    v26 = *&v20[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_layout];
    v27 = *&v19[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_layout];
    v28 = v26;
    [v25 transitioningFromParmesanTimeLayout:v27 toParmesanTimeLayout:v28 withProgress:v6];

    swift_unknownObjectRelease();
  }

  v29 = *(a2 + 16);
  if (v29 != 1 && v29 != 2)
  {
    if ((*(a2 + 24) + *(a2 + 8)) * 0.5 > v6)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (v6 >= 0.5)
  {
LABEL_12:
    v14 = v15;
  }

LABEL_13:
  v30 = *(*(v4 + OBJC_IVAR___NTKParmesanGalleryView_complicationVibrantEffectView) + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion26ParmesanMaskedBackdropView_maskingView);

  [v30 setAlpha_];
}

void sub_23BF9A740()
{
  v1 = v0;
  sub_23BF9A088(1.0);
  if (qword_27E1DFD98 != -1)
  {
    swift_once();
  }

  v2 = sub_23BFF92B0();
  sub_23BF4A22C(v2, qword_27E1EB498);
  v3 = sub_23BFF9290();
  v4 = sub_23BFFA640();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v43 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_23BF62294(0xD000000000000012, 0x800000023C010520, &v43);
    _os_log_impl(&dword_23BF0C000, v3, v4, "%s", v5, 0xCu);
    v7 = sub_23BF4A9A4(v6);
    MEMORY[0x23EEC4DF0](v6, -1, -1, v7);
    MEMORY[0x23EEC4DF0](v5, -1, -1);
  }

  v8 = OBJC_IVAR___NTKParmesanGalleryView_transitionCoordinator;
  v9 = (*(v1 + OBJC_IVAR___NTKParmesanGalleryView_transitionCoordinator) + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion36ParmesanGalleryTransitionCoordinator_context);
  v10 = *v9;
  if (*v9)
  {
    v12 = v9[1];
    v11 = v9[2];
    v13 = v9[3];
    v14 = v9[4];
    v15 = v9[5];
    swift_unknownObjectRetain();
    v41 = v11;
    sub_23BF9C900(v11, v13);
    sub_23BF0FA40(v14, v15);
    sub_23BF9B4B0();
    if (v13)
    {
      v16 = v13;
      sub_23BF9B544(v13);
    }

    if (v14)
    {
      v40 = v12;
      v17 = *(v1 + OBJC_IVAR___NTKParmesanGalleryView_timeContainerView);
      if (!v17)
      {
        __break(1u);
        return;
      }

      v18 = *&v17[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion25ParmesanTimeContainerView_appearance];
      *&v17[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion25ParmesanTimeContainerView_appearance] = v15;
      v19 = v15;
      v39 = v14;
      v20 = v17;

      v21 = *&v20[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion25ParmesanTimeContainerView_uikit_timeView];
      if (v21)
      {
        v22 = v19;
        v23 = v21;
        sub_23BF7CF34(v22);
      }

      else
      {
        v24 = v19;
      }

      sub_23BFBD4D8(v19);

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v26 = Strong;
        v27 = *&v19[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_layout];
        v28 = *&v39[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_layout];
        v29 = v27;
        [v26 didFinishTransitionFromParmesanTimeLayout:v28 toParmesanTimeLayout:v29];

        v30 = v39;
        swift_unknownObjectRelease();
      }

      else
      {

        v30 = v39;
      }

      v12 = v40;
    }

    sub_23BF98920();
    sub_23BF9C940(v10, v12, v41, v13, v14, v15);
    v31 = *(v1 + v8);
    v32 = &v31[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion36ParmesanGalleryTransitionCoordinator_context];
    v33 = *&v31[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion36ParmesanGalleryTransitionCoordinator_context];
    v34 = *&v31[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion36ParmesanGalleryTransitionCoordinator_context + 8];
    v35 = *&v31[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion36ParmesanGalleryTransitionCoordinator_context + 16];
    v36 = *&v31[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion36ParmesanGalleryTransitionCoordinator_context + 24];
    v37 = *&v31[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion36ParmesanGalleryTransitionCoordinator_context + 32];
    v38 = *&v31[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion36ParmesanGalleryTransitionCoordinator_context + 40];
    *v32 = 0u;
    *(v32 + 1) = 0u;
    *(v32 + 2) = 0u;
    v42 = v31;
    sub_23BF9C940(v33, v34, v35, v36, v37, v38);
  }

  else
  {

    sub_23BF9B4B0();
  }
}

void sub_23BF9AAF4(char **a1)
{
  v2 = v1;
  v3 = OBJC_IVAR___NTKParmesanGalleryView_transitionCoordinator;
  v69 = a1[1];
  v70 = *a1;
  v4 = (*&v1[OBJC_IVAR___NTKParmesanGalleryView_transitionCoordinator] + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion36ParmesanGalleryTransitionCoordinator_context);
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[2];
  v8 = v4[3];
  v9 = v4[4];
  v10 = v4[5];
  if (*v4)
  {
    v11 = v9 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = *v4;
  v13 = v4[1];
  v14 = v4[2];
  v15 = v4[3];
  v16 = v4[4];
  v17 = v4[5];
  if (v11)
  {
    sub_23BF9C89C(v12, v13, v14, v15, v16, v17);
    sub_23BF9C940(v5, v6, v7, v8, v9, v10);
    v18 = [v2 timeAppearance];
  }

  else
  {
    sub_23BF9C89C(v12, v13, v14, v15, v16, v17);
    v18 = v9;
    sub_23BF9C940(v5, v6, v7, v8, v9, v10);
  }

  v19 = *&v18[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_style];
  v72 = v18[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_style + 8];
  sub_23BF674B4(v19, v18[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_style + 8]);

  v20 = *&v2[v3] + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion36ParmesanGalleryTransitionCoordinator_context;
  v22 = *v20;
  v21 = *(v20 + 8);
  v24 = *(v20 + 16);
  v23 = *(v20 + 24);
  v26 = *(v20 + 32);
  v25 = *(v20 + 40);
  if (!*v20)
  {
    sub_23BF9C89C(0, *(v20 + 8), *(v20 + 16), *(v20 + 24), *(v20 + 32), *(v20 + 40));
    v36 = 0;
    v37 = v21;
    v38 = v24;
    v39 = v23;
LABEL_13:
    sub_23BF9C940(v36, v37, v38, v39, v26, v25);
    goto LABEL_14;
  }

  v27 = *v20;
  v28 = *(v20 + 8);
  v29 = *(v20 + 16);
  if (!v23)
  {
    sub_23BF9C89C(v27, v28, v29, 0, *(v20 + 32), *(v20 + 40));
    v36 = v22;
    v37 = v21;
    v38 = v24;
    v39 = 0;
    goto LABEL_13;
  }

  sub_23BF9C89C(v27, v28, v29, *(v20 + 24), *(v20 + 32), *(v20 + 40));
  v30 = v24;
  sub_23BF9C940(v22, v21, v24, v23, v26, v25);
  if (v24)
  {
    v31 = *&v2[OBJC_IVAR___NTKParmesanGalleryView_complicationVisibility];
    v32 = *&v70[OBJC_IVAR___NTKParmesanGalleryContentEffect_style];
    v33 = *&v70[OBJC_IVAR___NTKParmesanGalleryContentEffect_style + 8];
    v34 = *&v70[OBJC_IVAR___NTKParmesanGalleryContentEffect_style + 16];
    v35 = *&v70[OBJC_IVAR___NTKParmesanGalleryContentEffect_style + 24];

    sub_23BF75134(v32, v33, v34, v35);

    sub_23BF755A0(v31, v19, v72);
  }

LABEL_14:
  v40 = *&v2[v3] + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion36ParmesanGalleryTransitionCoordinator_context;
  v41 = *v40;
  v42 = *(v40 + 8);
  v43 = *(v40 + 16);
  v44 = *(v40 + 24);
  v46 = *(v40 + 32);
  v45 = *(v40 + 40);
  if (*v40 && v46)
  {
    sub_23BF9C89C(*v40, *(v40 + 8), *(v40 + 16), *(v40 + 24), *(v40 + 32), *(v40 + 40));
    v47 = v45;
    sub_23BF9C940(v41, v42, v43, v44, v46, v45);
  }

  else
  {
    sub_23BF9C89C(*v40, *(v40 + 8), *(v40 + 16), *(v40 + 24), *(v40 + 32), *(v40 + 40));
    sub_23BF9C940(v41, v42, v43, v44, v46, v45);
    v47 = [v2 timeAppearance];
  }

  v48 = *&v47[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_style];
  v49 = v47[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_style + 8];
  sub_23BF674B4(v48, v47[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_style + 8]);

  v50 = *&v2[v3] + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion36ParmesanGalleryTransitionCoordinator_context;
  v51 = *v50;
  v52 = *(v50 + 8);
  v53 = *(v50 + 16);
  v54 = *(v50 + 24);
  v56 = *(v50 + 32);
  v55 = *(v50 + 40);
  if (*v50)
  {
    v57 = *v50;
    v58 = *(v50 + 8);
    v59 = *(v50 + 16);
    if (v54)
    {
      sub_23BF9C89C(v57, v58, v59, *(v50 + 24), *(v50 + 32), *(v50 + 40));
      v71 = v54;
      sub_23BF9C940(v51, v52, v53, v54, v56, v55);
      v60 = *&v2[OBJC_IVAR___NTKParmesanGalleryView_complicationVisibility];
      v61 = *&v69[OBJC_IVAR___NTKParmesanGalleryContentEffect_style];
      v62 = *&v69[OBJC_IVAR___NTKParmesanGalleryContentEffect_style + 8];
      v63 = *&v69[OBJC_IVAR___NTKParmesanGalleryContentEffect_style + 16];
      v64 = *&v69[OBJC_IVAR___NTKParmesanGalleryContentEffect_style + 24];

      sub_23BF75134(v61, v62, v63, v64);

      sub_23BF755A0(v60, v48, v49);

      sub_23BF674C8(v48, v49);
      sub_23BF674C8(v19, v72);

      return;
    }

    sub_23BF9C89C(v57, v58, v59, 0, *(v50 + 32), *(v50 + 40));
    sub_23BF674C8(v48, v49);
    sub_23BF674C8(v19, v72);
    v65 = v51;
    v66 = v52;
    v67 = v53;
    v68 = 0;
  }

  else
  {
    sub_23BF9C89C(0, *(v50 + 8), *(v50 + 16), *(v50 + 24), *(v50 + 32), *(v50 + 40));
    sub_23BF674C8(v48, v49);
    sub_23BF674C8(v19, v72);
    v65 = 0;
    v66 = v52;
    v67 = v53;
    v68 = v54;
  }

  sub_23BF9C940(v65, v66, v67, v68, v56, v55);
}

void sub_23BF9B094(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v5 = *a1;
  v4 = *(a1 + 8);
  v7 = *a2;
  v6 = a2[1];
  if (*a1)
  {
    v8 = *(v2 + OBJC_IVAR___NTKParmesanGalleryView_currentItem);
    if (v8)
    {
      type metadata accessor for ParmesanGalleryItem();
      v9 = v5;
      v10 = v8;
      v11 = sub_23BFFA880();

      if (v11)
      {

        goto LABEL_5;
      }
    }

    else
    {
      v16 = v5;
    }

    sub_23BF9B544(v5);

    goto LABEL_13;
  }

LABEL_5:
  v12 = *(v3 + OBJC_IVAR___NTKParmesanGalleryView_currentItem);
  if (v12)
  {
    v13 = *(v12 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion19ParmesanGalleryItem_views);
    if (v13)
    {
      v14 = *(v13 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion27ParmesanGalleryContentViews_backgroundView);
      if (v14)
      {
        swift_getObjectType();
        if (swift_conformsToProtocol2())
        {
          v15 = *(v14 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion35ParmesanGalleryLivePhotoContentView_mediaAssetView);
          if (v15)
          {
            [v15 pauseWithOperation_];
          }
        }
      }
    }
  }

LABEL_13:
  v17 = objc_opt_self();
  [v17 begin];
  [v17 setDisableActions_];
  v45 = v17;
  if (!v7)
  {
    v18 = *(v3 + OBJC_IVAR___NTKParmesanGalleryView_timeContainerView);
    if (!v18)
    {
      __break(1u);
      return;
    }

    v6 = *(v18 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion25ParmesanTimeContainerView_appearance);
  }

  v46 = *(v6 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_style);
  v47 = *(v6 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_style + 8);
  sub_23BF674B4(v46, v47);
  sub_23BF9B4B0();
  v19 = *(v3 + OBJC_IVAR___NTKParmesanGalleryView_contentEffect);
  v20 = *(v3 + OBJC_IVAR___NTKParmesanGalleryView_complicationVisibility);
  if (v19)
  {
    v21 = *&v19[OBJC_IVAR___NTKParmesanGalleryContentEffect_style];
    v22 = *&v19[OBJC_IVAR___NTKParmesanGalleryContentEffect_style + 8];
    v23 = *&v19[OBJC_IVAR___NTKParmesanGalleryContentEffect_style + 16];
    v24 = *&v19[OBJC_IVAR___NTKParmesanGalleryContentEffect_style + 24];

    v25 = v19;
    sub_23BF75134(v21, v22, v23, v24);
    sub_23BF9C9E4(v21, v22, v23, v24);
    v26 = *&v25[OBJC_IVAR___NTKParmesanGalleryContentEffect_style];
    v27 = *&v25[OBJC_IVAR___NTKParmesanGalleryContentEffect_style + 8];
    v29 = *&v25[OBJC_IVAR___NTKParmesanGalleryContentEffect_style + 16];
    v28 = *&v25[OBJC_IVAR___NTKParmesanGalleryContentEffect_style + 24];
  }

  else
  {
    v30 = 0;
    sub_23BF75134(0, 0, 0, 0);
    sub_23BF9C9E4(0, 0, 0, 0);
    v26 = 0;
    v27 = 0;
    v29 = 0;
    v28 = 0;
  }

  sub_23BF755A0(v20, v46, v47);
  sub_23BF9C9E4(v26, v27, v29, v28);

  v31 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion19ParmesanGalleryItem_views;
  v32 = *(v4 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion19ParmesanGalleryItem_views);
  if (v32)
  {
    v33 = *&v32[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion27ParmesanGalleryContentViews_backgroundView];
    v34 = v32;
    if (v33)
    {
      v35 = v33;
      sub_23BFDD640();
      [v35 setAlpha_];
    }

    v38 = *&v32[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion27ParmesanGalleryContentViews_foregroundView];
    if (v38)
    {
      v39 = v38;
      sub_23BFDD640();
      [v39 setAlpha_];
    }

    v36 = *(v4 + v31);
    if (v36)
    {
      v37 = *&v36[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion27ParmesanGalleryContentViews_backgroundView];
      if (v37)
      {
        v40 = v37;
      }

      v41 = 0;
      goto LABEL_31;
    }

    v37 = 0;
  }

  else
  {
    v36 = 0;
    v37 = 0;
  }

  v41 = 1;
LABEL_31:
  v42 = v36;
  sub_23BF8E1D4(v37);

  if (v41)
  {
    v43 = 0;
  }

  else
  {
    v43 = *&v42[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion27ParmesanGalleryContentViews_foregroundView];
    if (v43)
    {
      v44 = v43;
    }
  }

  sub_23BF8E1D4(v43);

  [v45 commit];

  sub_23BF674C8(v46, v47);
}

void sub_23BF9B4B0()
{
  v1 = *(v0 + OBJC_IVAR___NTKParmesanGalleryView_backgroundContainerView);
  v2 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion38ParmesanGalleryTransitionContainerView_transitionView;
  [*(v1 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion38ParmesanGalleryTransitionContainerView_transitionView) removeFromSuperview];
  v3 = *(v1 + v2);
  *(v1 + v2) = 0;

  v4 = *(v0 + OBJC_IVAR___NTKParmesanGalleryView_foregroundContainerView);
  v5 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion38ParmesanGalleryTransitionContainerView_transitionView;
  [*(v4 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion38ParmesanGalleryTransitionContainerView_transitionView) removeFromSuperview];
  v6 = *(v4 + v5);
  *(v4 + v5) = 0;
}

void sub_23BF9B544(char *a1)
{
  if (!a1)
  {
    return;
  }

  v2 = v1;
  v3 = OBJC_IVAR___NTKParmesanGalleryView_currentItem;
  v4 = *&v1[OBJC_IVAR___NTKParmesanGalleryView_currentItem];
  if (!v4)
  {
    v8 = a1;
LABEL_7:
    v9 = objc_opt_self();
    [v9 begin];
    v42 = v9;
    [v9 setDisableActions_];
    sub_23BF9B984();
    v41 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion19ParmesanGalleryItem_views;
    v10 = *&a1[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion19ParmesanGalleryItem_views];
    if (v10)
    {
      v11 = *(v10 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion27ParmesanGalleryContentViews_backgroundView);
      if (v11)
      {
        v12 = v2[OBJC_IVAR___NTKParmesanGalleryView_pausedState];
        swift_getObjectType();
        if (swift_conformsToProtocol2())
        {
          v13 = *(v11 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion35ParmesanGalleryLivePhotoContentView_mediaAssetView);
          if (v13)
          {
            if (v12)
            {
              v14 = 0;
            }

            else
            {
              v14 = 2;
            }

            v15 = &selRef_pauseWithOperation_;
            if (!v12)
            {
              v15 = &selRef_playWithOperation_;
            }

            [v13 *v15];
          }
        }
      }
    }

    v16 = *&v2[OBJC_IVAR___NTKParmesanGalleryView_contentEffect];
    v40 = *&v2[OBJC_IVAR___NTKParmesanGalleryView_complicationVisibility];
    v17 = v16;
    v18 = [v2 timeAppearance];
    v19 = *&v18[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_style];
    v20 = v18[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_style + 8];
    sub_23BF674B4(v19, v20);

    if (v16)
    {
      v21 = *&v17[OBJC_IVAR___NTKParmesanGalleryContentEffect_style];
      v22 = *&v17[OBJC_IVAR___NTKParmesanGalleryContentEffect_style + 8];
      v23 = *&v17[OBJC_IVAR___NTKParmesanGalleryContentEffect_style + 16];
      v24 = *&v17[OBJC_IVAR___NTKParmesanGalleryContentEffect_style + 24];

      sub_23BF75134(v21, v22, v23, v24);
      sub_23BF9C9E4(v21, v22, v23, v24);
      v25 = *&v17[OBJC_IVAR___NTKParmesanGalleryContentEffect_style];
      v26 = *&v17[OBJC_IVAR___NTKParmesanGalleryContentEffect_style + 8];
      v27 = *&v17[OBJC_IVAR___NTKParmesanGalleryContentEffect_style + 16];
      v16 = *&v17[OBJC_IVAR___NTKParmesanGalleryContentEffect_style + 24];
    }

    else
    {
      sub_23BF75134(0, 0, 0, 0);
      sub_23BF9C9E4(0, 0, 0, 0);
      v25 = 0;
      v26 = 0;
      v27 = 0;
    }

    sub_23BF755A0(v40, v19, v20);
    sub_23BF9C9E4(v25, v26, v27, v16);
    sub_23BF674C8(v19, v20);

    v28 = *&a1[v41];
    if (v28)
    {
      v29 = *(v28 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion27ParmesanGalleryContentViews_backgroundView);
      if (v29)
      {
        v30 = v29;
      }
    }

    else
    {
      v29 = 0;
    }

    sub_23BF8E144(v29);

    v31 = *&a1[v41];
    if (v31)
    {
      v32 = *(v31 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion27ParmesanGalleryContentViews_foregroundView);
      if (v32)
      {
        v33 = v32;
      }
    }

    else
    {
      v32 = 0;
    }

    sub_23BF8E144(v32);

    v34 = a1;
    v35 = *&a1[v41];
    if (v35)
    {
      v36 = *(v35 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion27ParmesanGalleryContentViews_backgroundView);
      if (v36)
      {
        swift_getObjectType();
        v37 = swift_conformsToProtocol2();
        v34 = a1;
        if (v37)
        {
          v38 = *(v36 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion35ParmesanGalleryLivePhotoContentView_mediaAssetView);
          if (v38)
          {
            [v38 prepareToPlayWithOperation_];
            v34 = a1;
          }
        }
      }
    }

    v39 = *&v2[v3];
    *&v2[v3] = v34;

    sub_23BF98920();
    [v42 commit];
    goto LABEL_34;
  }

  type metadata accessor for ParmesanGalleryItem();
  v5 = a1;
  v6 = v4;
  v7 = sub_23BFFA880();

  if ((v7 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_34:
}

void sub_23BF9B984()
{
  v1 = OBJC_IVAR___NTKParmesanGalleryView_currentItem;
  v2 = *(v0 + OBJC_IVAR___NTKParmesanGalleryView_currentItem);
  if (v2)
  {
    v3 = *(v2 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion19ParmesanGalleryItem_views);
    if (v3)
    {
      v4 = *(v3 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion27ParmesanGalleryContentViews_backgroundView);
      if (v4)
      {
        swift_getObjectType();
        if (swift_conformsToProtocol2())
        {
          v5 = *(v4 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion35ParmesanGalleryLivePhotoContentView_mediaAssetView);
          if (v5)
          {
            [v5 pauseWithOperation_];
          }
        }
      }
    }
  }

  v6 = *(v0 + OBJC_IVAR___NTKParmesanGalleryView_backgroundContainerView);
  v7 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion38ParmesanGalleryTransitionContainerView_currentView;
  [*(v6 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion38ParmesanGalleryTransitionContainerView_currentView) removeFromSuperview];
  v8 = *(v6 + v7);
  *(v6 + v7) = 0;

  v9 = *(v0 + OBJC_IVAR___NTKParmesanGalleryView_foregroundContainerView);
  v10 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion38ParmesanGalleryTransitionContainerView_currentView;
  [*(v9 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion38ParmesanGalleryTransitionContainerView_currentView) removeFromSuperview];
  v11 = *(v9 + v10);
  *(v9 + v10) = 0;

  v12 = *(v0 + v1);
  if (v12)
  {
    v13 = *&v12[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion19ParmesanGalleryItem_views];
    if (v13)
    {
      v14 = *(v13 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion27ParmesanGalleryContentViews_backgroundView);
      if (v14)
      {
        v16 = *(v0 + v1);
        swift_getObjectType();
        if (swift_conformsToProtocol2())
        {
          v15 = *(v14 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion35ParmesanGalleryLivePhotoContentView_mediaAssetView);
          v12 = v16;
          if (v15)
          {
            [v15 pauseWithOperation_];
            v12 = *(v0 + v1);
          }
        }

        else
        {
          v12 = v16;
        }
      }
    }
  }

  *(v0 + v1) = 0;
}