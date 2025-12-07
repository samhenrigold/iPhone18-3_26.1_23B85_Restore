uint64_t sub_63D94()
{
  v2 = CTFontCopyFamilyName(v0);
  v3 = sub_7CF14();

  return v3;
}

uint64_t sub_63DF8()
{
  v15 = 0;
  kCTFontStyleNameKey;
  v8 = CTFontCopyLocalizedName(font, kCTFontStyleNameKey, 0);

  if (v8)
  {
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (v6)
    {
      v6;
      sub_EF28();
      sub_7D774();

      if (v10)
      {
        v4 = v9;
        v5 = v10;
LABEL_7:
        v2 = v4;
        v3 = v5;
        goto LABEL_8;
      }
    }

    else
    {
    }

    v4 = 0;
    v5 = 0;
    goto LABEL_7;
  }

  v2 = 0;
  v3 = 0;
LABEL_8:
  v11 = v2;
  v12 = v3;
  if (v3)
  {
    v13 = v11;
    v14 = v12;
  }

  else
  {
    v13 = sub_7CF84("", 0, 1);
    v14 = v0;
  }

  return v13;
}

uint64_t sub_63FE8@<X0>(uint64_t a1@<X8>)
{
  kCTFontURLAttribute;
  v6 = CTFontCopyAttribute(font, kCTFontURLAttribute);

  if (v6)
  {
    v3 = sub_7BCD4();
    if (swift_dynamicCast())
    {
      return (*(*(v3 - 8) + 56))(a1, 0, 1);
    }

    else
    {
      return (*(*(v3 - 8) + 56))(a1, 1);
    }
  }

  else
  {
    v2 = sub_7BCD4();
    return (*(*(v2 - 8) + 56))(a1, 1);
  }
}

uint64_t sub_64174()
{
  v1 = CTFontCopySampleString();
  v2 = sub_7CF14();

  return v2;
}

uint64_t sub_6424C()
{
  v18 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v8 = v0;
  v3 = CTFontCopyCharacterSet(v0);
  v7[1] = v3;
  v7[0] = sub_7D714();
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v19 = 0;
  v3;
  CFCharacterSetInitInlineBuffer();

  sub_1A88(&qword_92248, &qword_80B38);
  sub_64D88();
  sub_7D354();
  while (1)
  {
    sub_1A88(&qword_92260, &unk_80B40);
    sub_7D5D4();
    if (v10)
    {
      break;
    }

    if (v9 < 0)
    {
      sub_7D5E4();
      __break(1u);
    }

    if (v9 > 0xFFFFFFFFLL)
    {
      sub_7D5E4();
      __break(1u);
      goto LABEL_28;
    }

    v5 = (v16 & 4) != 0;
    if (v9 < v17 || v9 >= v18)
    {
      goto LABEL_24;
    }

    if (v9 < 0x10000 && (v16 & 2) == 0)
    {
      if (v19)
      {
        if (v16)
        {
          v4 = *(v19 + (v9 >> 8));
          if (v4 == 255)
          {
            v5 = (v16 & 4) == 0;
          }

          else if (v4 && (*(v19 + 32 * (v4 - 1) + 256 + (v9 >> 3)) & (1 << (v9 % 8u))) != 0)
          {
            v5 = (v16 & 4) == 0;
          }
        }

        else if ((*(v19 + (v9 >> 3)) & (1 << (v9 & 7))) != 0)
        {
          v5 = (v16 & 4) == 0;
        }
      }

      else if ((v16 & 1) == 0)
      {
        v5 = (v16 & 4) == 0;
      }

LABEL_24:
      v6 = v5;
      goto LABEL_25;
    }

    v6 = CFCharacterSetIsLongCharacterMember(v15, v9) != 0;
LABEL_25:
    if (v6)
    {
LABEL_28:
      if ((sub_7D834() & 0x100000000) == 0)
      {
        sub_1A88(&qword_91D28, &qword_80618);
        sub_7D0F4();
      }
    }
  }

  v2 = v7[0];

  sub_B2C0(v7);

  return v2;
}

void sub_647CC(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  *a1;
  *a2 = sub_61948();
  a2[1] = v2;
}

uint64_t sub_64854(id *a1, uint64_t a2)
{
  v3 = *a1;
  *a1;

  swift_getAtKeyPath();
}

unint64_t sub_64900()
{
  v2 = qword_92208;
  if (!qword_92208)
  {
    sub_B24C(&qword_90CB8, &qword_80B00);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_92208);
    return WitnessTable;
  }

  return v2;
}

void sub_64988(void *a1@<X8>)
{
  sub_7BFE4();
  *a1 = v1;
  a1[1] = v2;
}

uint64_t sub_649D0(double *a1, void (*a2)(uint64_t, double, double), uint64_t a3)
{
  v6 = *a1;
  v7 = a1[1];
  sub_7D184();
  sub_7D174();
  sub_7D154();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  a2(v3, v6, v7);
}

void *sub_64B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v13[5] = a6;
  v13[4] = a7;

  v13[0] = sub_7C524();
  v13[1] = v9;
  v13[2] = v10;
  v13[3] = v11;
  sub_7C534();
  sub_7C994();
  result = v13;
  sub_6570C(v13);
  return result;
}

unint64_t sub_64BE4()
{
  v2 = qword_92210;
  if (!qword_92210)
  {
    type metadata accessor for CGSize(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_92210);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_64C64()
{
  v2 = qword_92240;
  if (!qword_92240)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_92240);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_64CE0(uint64_t a1)
{
  v3 = sub_7BCD4();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

unint64_t sub_64D88()
{
  v2 = qword_92250;
  if (!qword_92250)
  {
    sub_B24C(&qword_92248, &qword_80B38);
    sub_64E2C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_92250);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_64E2C()
{
  v2 = qword_92258;
  if (!qword_92258)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_92258);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_64EE0(uint64_t a1, int a2)
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
      if (!HIDWORD(*(a1 + 8)))
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

uint64_t sub_64FF8(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2 - 1;
    }
  }

  return result;
}

uint64_t sub_651E4(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFC)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 3) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 252;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 4;
      if (v3 < 0)
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

  return (v5 + 1);
}

_BYTE *sub_6534C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFC)
  {
    v5 = ((a3 + 3) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xFC)
  {
    v4 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

uint64_t sub_65580(uint64_t *a1)
{
  sub_B24C(&qword_91518, &qword_7F780);
  sub_7C124();
  sub_2C078();
  return swift_getWitnessTable();
}

unint64_t sub_6562C()
{
  v2 = qword_92268;
  if (!qword_92268)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_92268);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_656A8()
{
  v2 = qword_92270;
  if (!qword_92270)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_92270);
    return ObjCClassMetadata;
  }

  return v2;
}

void *sub_65744()
{
  v2 = *(v0 + 16);
  v2;
  return v2;
}

void *sub_65778()
{
  v2 = *(v0 + 24);
  v2;
  return v2;
}

uint64_t sub_657AC()
{
  v2 = *(v0 + 32);

  return v2;
}

uint64_t sub_657E4()
{
  v2 = *(v0 + 48);

  return v2;
}

void *sub_65870(uint64_t a1, uint64_t a2)
{
  *(v2 + 64) = 0;
  *(v2 + 72) = 0;
  *(v2 + 80) = 0;
  *(v2 + 88) = 0;
  *(v2 + 96) = 0;
  *(v2 + 104) = 0;
  *(v2 + 112) = 0;
  *(v2 + 120) = 0;
  *(v2 + 128) = 0;
  *(v2 + 136) = 0;
  *(v2 + 144) = 1;
  *(v2 + 152) = 0;
  *(v2 + 160) = 0;
  *(v2 + 168) = 2;
  sub_65AB0();

  v12 = sub_65B14(a1, a2, 24.0);
  if (v12)
  {
    v12;
    v9[2] = v12;
    v9[3] = [v12 fontDescriptor];

    v9[4] = a1;
    v9[5] = a2;
    v5 = v9[2];
    v5;
    v6 = sub_63D94();
    v7 = v3;

    v9[6] = v6;
    v9[7] = v7;

    return v9;
  }

  else
  {
    sub_1F58((v9 + 8));
    sub_B2C0(v9 + 10);
    sub_1F58((v9 + 11));
    sub_1F58((v9 + 13));
    sub_1F58((v9 + 15));
    sub_B2C0(v9 + 19);
    sub_B2C0(v9 + 20);
    type metadata accessor for Face();
    swift_deallocPartialClassInstance();

    return 0;
  }
}

unint64_t sub_65AB0()
{
  v2 = qword_92278;
  if (!qword_92278)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_92278);
    return ObjCClassMetadata;
  }

  return v2;
}

id sub_65B14(uint64_t a1, uint64_t a2, double a3)
{
  v5 = sub_7CF04();
  v6 = [swift_getObjCClassFromMetadata() fontWithName:v5 size:a3];

  return v6;
}

uint64_t sub_65BB8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  v3;

  v5 = *(a2 + 24);
  v5;

  CTFontManagerCompareFontDescriptors2();
  type metadata accessor for CFComparisonResult(0);
  sub_65CC0();
  return sub_7D724() & 1;
}

unint64_t sub_65CC0()
{
  v2 = qword_92280;
  if (!qword_92280)
  {
    type metadata accessor for CFComparisonResult(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_92280);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_65D40(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  v3;

  v5 = *(a2 + 24);
  v5;

  CTFontManagerCompareFontDescriptors2();
  type metadata accessor for CFComparisonResult(0);
  sub_65CC0();
  return sub_7D724() & 1;
}

uint64_t sub_65E4C()
{
  swift_beginAccess();
  v8 = *(v0 + 64);
  v9 = *(v0 + 72);

  swift_endAccess();
  if (v9)
  {
    return v8;
  }

  v3 = v7[2];
  v3;
  v4 = sub_63DF8();
  v5 = v1;

  swift_beginAccess();
  v7[8] = v4;
  v7[9] = v5;

  swift_endAccess();
  return v4;
}

uint64_t sub_65F90(uint64_t a1, uint64_t a2)
{

  swift_beginAccess();
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;

  swift_endAccess();
}

void (*sub_66020(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_65E4C();
  a1[1] = v2;
  return sub_66078;
}

void sub_66078(uint64_t *a1, char a2)
{
  if (a2)
  {
    v2 = *a1;
    v3 = a1[1];

    sub_65F90(v2, v3);
    sub_1F58(a1);
  }

  else
  {
    sub_65F90(*a1, a1[1]);
  }
}

uint64_t sub_660F4()
{
  v14 = v0;
  swift_beginAccess();
  v10 = *(v0 + 80);

  swift_endAccess();
  if (v10)
  {
    return v10;
  }

  font = *(v9 + 16);
  font;
  attribute = kCTFontDesignLanguagesAttribute;
  kCTFontDesignLanguagesAttribute;
  v7 = CTFontCopyAttribute(font, attribute);

  if (v7)
  {
    sub_1A88(&qword_90CB8, &qword_80B00);
    if (swift_dynamicCast())
    {
      v4 = v11;
    }

    else
    {
      v4 = 0;
    }

    v3 = v4;
  }

  else
  {
    v3 = 0;
  }

  v12 = v3;
  if (v3)
  {
    v13 = v12;
  }

  else
  {
    v13 = sub_7D714();
  }

  v2 = v13;

  swift_beginAccess();
  *(v9 + 80) = v2;

  swift_endAccess();
  return v2;
}

uint64_t sub_6631C(uint64_t a1)
{

  swift_beginAccess();
  *(v1 + 80) = a1;

  swift_endAccess();
}

void (*sub_66390(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_660F4();
  return sub_663E0;
}

void sub_663E0(uint64_t *a1, char a2)
{
  if (a2)
  {
    v2 = *a1;

    sub_6631C(v2);
    sub_B2C0(a1);
  }

  else
  {
    sub_6631C(*a1);
  }
}

uint64_t sub_6644C()
{
  v15 = v0;
  swift_beginAccess();
  v6 = *(v0 + 88);
  v7 = *(v0 + 96);

  swift_endAccess();
  if (v7)
  {
    return v6;
  }

  v13 = sub_660F4();
  sub_1A88(&qword_90CB8, &qword_80B00);
  sub_127A8();
  sub_7D334();

  v11 = v12;
  if (*(&v12 + 1))
  {
    v14 = v11;
  }

  else
  {
    v10 = sub_7BD14();
    sub_7D334();

    v8 = v9;
    if (*(&v9 + 1))
    {
      v14 = v8;
    }

    else
    {
      *&v14 = sub_7CF84("", 0, 1);
      *(&v14 + 1) = v1;
    }
  }

  v3 = v14;

  swift_beginAccess();
  *(v5 + 88) = v3;

  swift_endAccess();
  return v3;
}

uint64_t sub_666A8(uint64_t a1, uint64_t a2)
{

  swift_beginAccess();
  *(v2 + 88) = a1;
  *(v2 + 96) = a2;

  swift_endAccess();
}

void (*sub_66738(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_6644C();
  a1[1] = v2;
  return sub_66790;
}

void sub_66790(uint64_t *a1, char a2)
{
  if (a2)
  {
    v2 = *a1;
    v3 = a1[1];

    sub_666A8(v2, v3);
    sub_1F58(a1);
  }

  else
  {
    sub_666A8(*a1, a1[1]);
  }
}

uint64_t sub_6680C()
{
  swift_beginAccess();
  v7 = *(v0 + 104);
  v8 = *(v0 + 112);

  swift_endAccess();
  if (v8)
  {
    return v7;
  }

  v3 = sub_6691C(v6);
  v4 = v1;

  swift_beginAccess();
  *(v6 + 104) = v3;
  *(v6 + 112) = v4;

  swift_endAccess();
  return v3;
}

uint64_t sub_6691C(uint64_t a1)
{
  v54 = a1;
  v76 = 0;
  v74 = 0;
  v75 = 0;
  v69 = 0;
  v70 = 0;
  v67 = 0;
  v68 = 0;
  v63 = 0;
  v55 = sub_7CEF4();
  v56 = *(v55 - 8);
  v57 = v55 - 8;
  v58 = (*(v56 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v54);
  v59 = &v21 - v58;
  v76 = v1;
  v60 = *(v1 + 16);
  v60;
  v61 = sub_64174();
  v62 = v2;
  v74 = v61;
  v75 = v2;

  v73[2] = v61;
  v73[3] = v62;
  v3 = sub_7CF84("", v63, 1);
  v64 = v73;
  v73[0] = v3;
  v73[1] = v4;
  v65 = sub_7CF94();
  sub_1F58(v64);
  if (v65)
  {
    v30 = objc_opt_self();
    v24 = *sub_622EC();
    v24;
    v26 = [v24 localizations];
    v33 = &type metadata for String;
    v25 = sub_7D0A4();
    isa = sub_7D094().super.isa;

    v28 = sub_7D714();
    v27 = v5;
    v6 = sub_6644C();
    v7 = v27;
    v8 = v6;
    v9 = v28;
    v11 = v10;
    v12 = v33;
    *v27 = v8;
    v7[1] = v11;
    sub_71DDC(v9, v12);
    v29 = v13;
    v31 = sub_7D094().super.isa;

    v35 = [v30 preferredLocalizationsFromArray:isa forPreferences:v31];

    v34 = sub_7D0A4();
    sub_7D144();
    v38 = v71;
    v39 = v72;
    v69 = v71;
    v70 = v72;

    v43 = *sub_622EC();
    v43;
    v49 = 1;
    sub_7CF84("ALPHABET", 8uLL, 1);
    v36 = v14;
    v42 = sub_7CF04();

    v47 = "UNLOCALIZED";
    v48 = 11;
    sub_7CF84("UNLOCALIZED", 0xBuLL, v49 & 1);
    v37 = v15;
    v41 = sub_7CF04();

    v40 = sub_7CF04();

    v44 = [v43 localizedStringForKey:v42 value:v41 table:0 localization:v40];

    v45 = sub_7CF14();
    v46 = v16;
    v67 = v45;
    v68 = v16;

    v66[2] = v45;
    v66[3] = v46;
    v17 = sub_7CF84(v47, v48, v49 & 1);
    v50 = v66;
    v66[0] = v17;
    v66[1] = v18;
    v51 = sub_7CF94();
    sub_1F58(v50);
    if (v51)
    {

      sub_7CF84("ALPHABET", 8uLL, 1);
      sub_7CE94();
      v22 = sub_61F88(v59);
      v23 = v19;
      (*(v56 + 8))(v59, v55);

      v52 = v22;
      v53 = v23;
    }

    else
    {

      v52 = v45;
      v53 = v46;
    }
  }

  else
  {
    v52 = v61;
    v53 = v62;
  }

  return v52;
}

uint64_t sub_66FE4(uint64_t a1, uint64_t a2)
{

  swift_beginAccess();
  *(v2 + 104) = a1;
  *(v2 + 112) = a2;

  swift_endAccess();
}

void (*sub_67074(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_6680C();
  a1[1] = v2;
  return sub_670CC;
}

void sub_670CC(uint64_t *a1, char a2)
{
  if (a2)
  {
    v2 = *a1;
    v3 = a1[1];

    sub_66FE4(v2, v3);
    sub_1F58(a1);
  }

  else
  {
    sub_66FE4(*a1, a1[1]);
  }
}

uint64_t sub_67148()
{
  swift_beginAccess();
  v7 = *(v0 + 120);
  v8 = *(v0 + 128);

  swift_endAccess();
  if (v8)
  {
    return v7;
  }

  v3 = sub_67258(v6);
  v4 = v1;

  swift_beginAccess();
  *(v6 + 120) = v3;
  *(v6 + 128) = v4;

  swift_endAccess();
  return v3;
}

uint64_t sub_67258(uint64_t a1)
{
  v72 = a1;
  v96 = 0;
  v92 = 0;
  v93 = 0;
  v90 = 0;
  v91 = 0;
  v87 = 0;
  v88 = 0;
  v73 = sub_7CEF4();
  v74 = *(v73 - 8);
  v75 = v73 - 8;
  v76 = (*(v74 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v73);
  v77 = &v28 - v76;
  v96 = a1;
  v83 = *(a1 + 16);
  v83;
  v80 = &type metadata for String;
  v79 = sub_7D714();
  v78 = v2;
  v3 = sub_6644C();
  v4 = v78;
  v5 = v3;
  v6 = v79;
  v8 = v7;
  v9 = v80;
  *v78 = v5;
  v4[1] = v8;
  sub_71DDC(v6, v9);
  v82 = v10;
  isa = sub_7D094().super.isa;
  v84 = CTFontCopyLocalizedNameByIDWithLanguages();

  if (!v84)
  {
    v69 = 0;
    v70 = 0;
    goto LABEL_10;
  }

  v71 = v84;
  v67 = v84;
  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  v68 = v11;
  if (!v11)
  {

LABEL_8:
    v64 = 0;
    v65 = 0;
    goto LABEL_9;
  }

  v66 = v68;
  v68;
  sub_EF28();
  sub_7D774();

  if (!v86)
  {
    goto LABEL_8;
  }

  v64 = v85;
  v65 = v86;
LABEL_9:
  v69 = v64;
  v70 = v65;
LABEL_10:
  v62 = v70;
  v63 = v69;
  if (v70)
  {
    v60 = v63;
    v61 = v62;
    v87 = v63;
    v88 = v62;
    v30 = v63;
    v31 = v62;
  }

  else
  {
    v38 = objc_opt_self();
    v32 = *sub_622EC();
    v32;
    v34 = [v32 localizations];
    v41 = &type metadata for String;
    v33 = sub_7D0A4();
    v40 = sub_7D094().super.isa;

    v36 = sub_7D714();
    v35 = v12;
    v13 = sub_6644C();
    v14 = v35;
    v15 = v13;
    v16 = v36;
    v18 = v17;
    v19 = v41;
    *v35 = v15;
    v14[1] = v18;
    sub_71DDC(v16, v19);
    v37 = v20;
    v39 = sub_7D094().super.isa;

    v43 = [v38 preferredLocalizationsFromArray:v40 forPreferences:v39];

    v42 = sub_7D0A4();
    sub_7D144();
    v46 = v94;
    v47 = v95;
    v92 = v94;
    v93 = v95;

    v51 = *sub_622EC();
    v51;
    v56 = 11;
    v57 = 1;
    sub_7CF84("LOREM_IPSUM", 0xBuLL, 1);
    v44 = v21;
    v50 = sub_7CF04();

    v55 = "UNLOCALIZED";
    sub_7CF84("UNLOCALIZED", v56, v57 & 1);
    v45 = v22;
    v49 = sub_7CF04();

    v48 = sub_7CF04();

    v52 = [v51 localizedStringForKey:v50 value:v49 table:0 localization:v48];

    v53 = sub_7CF14();
    v54 = v23;
    v90 = v53;
    v91 = v23;

    v89[2] = v53;
    v89[3] = v54;
    v24 = sub_7CF84(v55, v56, v57 & 1);
    v58 = v89;
    v89[0] = v24;
    v89[1] = v25;
    v59 = sub_7CF94();
    sub_1F58(v58);
    if (v59)
    {

      sub_7CF84("LOREM_IPSUM", 0xBuLL, 1);
      sub_7CE94();
      v28 = sub_61F88(v77);
      v29 = v26;
      (*(v74 + 8))(v77, v73);
      v30 = v28;
      v31 = v29;
    }

    else
    {

      v30 = v53;
      v31 = v54;
    }
  }

  return v30;
}

uint64_t sub_67ACC(uint64_t a1, uint64_t a2)
{

  swift_beginAccess();
  *(v2 + 120) = a1;
  *(v2 + 128) = a2;

  swift_endAccess();
}

void (*sub_67B5C(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_67148();
  a1[1] = v2;
  return sub_67BB4;
}

void sub_67BB4(uint64_t *a1, char a2)
{
  if (a2)
  {
    v2 = *a1;
    v3 = a1[1];

    sub_67ACC(v2, v3);
    sub_1F58(a1);
  }

  else
  {
    sub_67ACC(*a1, a1[1]);
  }
}

CFIndex sub_67C30()
{
  swift_beginAccess();
  v6 = *(v0 + 136);
  v7 = *(v0 + 144);
  swift_endAccess();
  if ((v7 & 1) == 0)
  {
    return v6;
  }

  font = *(v5 + 16);
  font;
  GlyphCount = CTFontGetGlyphCount(font);

  swift_beginAccess();
  *(v5 + 136) = GlyphCount;
  *(v5 + 144) = 0;
  swift_endAccess();
  return GlyphCount;
}

uint64_t sub_67D44(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 136) = a1;
  *(v1 + 144) = 0;
  return swift_endAccess();
}

uint64_t (*sub_67DB4(CFIndex *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_67C30();
  return sub_67E04;
}

uint64_t sub_67E5C()
{
  swift_beginAccess();
  v5 = *(v0 + 152);

  swift_endAccess();
  if (v5)
  {
    return v5;
  }

  v2 = sub_67F38(v4);

  swift_beginAccess();
  *(v4 + 152) = v2;

  swift_endAccess();
  return v2;
}

uint64_t sub_67F38(uint64_t a1)
{
  v26 = 0;
  v24 = 0;
  v22 = 0;
  v21 = 0;
  v27[1] = a1;
  v14 = *(a1 + 16);
  v14;
  v15 = sub_6424C();

  v27[0] = v15;
  v16 = sub_1A88(&qword_91D28, &qword_80618);
  v17 = sub_1A88(&qword_924A8, &qword_80E38);
  v1 = sub_4B8F4();
  v11 = sub_7FFC(sub_68604, 0, v16, v17, &type metadata for Never, v1, &protocol witness table for Never, v18);
  sub_B2C0(v27);
  v26 = v11;
  v25 = v11;
  swift_getKeyPath();

  sub_1A88(&qword_924B0, &qword_80E60);
  sub_69EC4();
  sub_69F4C();
  v12 = sub_7D064();

  v24 = v12;
  v23 = v11;
  sub_69FC4();
  v22 = sub_7D064();
  v20 = 0;
  sub_7D0E4();
  v21 = sub_7D104();
  font = *(a1 + 16);
  font;

  count = sub_7D0E4();

  sub_1A88(&qword_91608, &qword_7FB38);
  sub_7D0B4(0);

  GlyphsForCharacters = CTFontGetGlyphsForCharacters(font, (v12 + 32), (v21 + 32), count);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  if (!GlyphsForCharacters || (, v19[3] = v21, sub_6A04C(), v7 = sub_7D344(), , (v7 & 1) != 0))
  {
    sub_1A88(&qword_924D0, &qword_80E68);
    sub_7D714();
    sub_1A88(&qword_92498, &qword_80DE8);
    v3 = sub_7CDB4();
    sub_B2C0(&v21);

    return v3;
  }

  else
  {
    v6 = v21;

    v19[0] = v6;
    sub_6A0D4();
    sub_7D764();
    sub_B2C0(v19);
    sub_1A88(&qword_924E8, &qword_80E70);
    sub_6A15C();
    sub_7D044();
    sub_1A88(&qword_924F8, &qword_80E78);
    sub_1A88(&qword_92500, &qword_80E80);
    sub_7D5C4();

    swift_getKeyPath();

    sub_1A88(&qword_92508, &qword_80EA8);
    sub_6A208();
    sub_7CDE4();

    sub_1A88(&qword_92498, &qword_80DE8);
    v5 = sub_7CDF4();

    sub_B2C0(&v21);

    return v5;
  }
}

uint64_t sub_68604@<X0>(_DWORD *a1@<X0>, _DWORD *a2@<X8>)
{
  *a2 = *a1;
  result = sub_7D814();
  a2[1] = result;
  return result;
}

uint64_t sub_68648(int *a1, uint64_t a2)
{

  swift_getAtKeyPath();
}

uint64_t sub_686B8@<X0>(uint64_t *a2@<X8>)
{
  sub_6A34C();
  sub_7D324();
  result = sub_7D104();
  *a2 = result;
  return result;
}

uint64_t sub_68768(__int16 *a1, uint64_t a2)
{

  swift_getAtKeyPath();
}

uint64_t sub_687D8@<X0>(uint64_t *a2@<X8>)
{
  KeyPath = swift_getKeyPath();

  v6 = sub_1A88(&qword_92508, &qword_80EA8);
  v2 = sub_6A2C4();
  sub_7FFC(sub_6A290, KeyPath, v6, &type metadata for Unicode.Scalar, &type metadata for Never, v2, &protocol witness table for Never, v8);
  if (v7)
  {

    __break(1u);
  }

  else
  {

    sub_1A88(&qword_91D28, &qword_80618);
    sub_69FC4();
    result = sub_7D2C4();
    *a2 = result;
  }

  return result;
}

uint64_t sub_6891C(uint64_t a1)
{

  swift_beginAccess();
  *(v1 + 152) = a1;

  swift_endAccess();
}

void (*sub_68990(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_67E5C();
  return sub_689E0;
}

void sub_689E0(uint64_t *a1, char a2)
{
  if (a2)
  {
    v2 = *a1;

    sub_6891C(v2);
    sub_B2C0(a1);
  }

  else
  {
    sub_6891C(*a1);
  }
}

uint64_t sub_68A4C()
{
  swift_beginAccess();
  v5 = *(v0 + 160);

  swift_endAccess();
  if (v5)
  {
    return v5;
  }

  v2 = sub_68B28(v4);

  swift_beginAccess();
  *(v4 + 160) = v2;

  swift_endAccess();
  return v2;
}

uint64_t sub_68B28(uint64_t a1)
{
  v40 = a1;
  v41 = 0;
  v51 = 0;
  v50 = 0;
  v49 = 0;
  v48 = 0;
  v52[3] = a1;
  v42 = sub_67C30();
  if (v42 < 0)
  {
    LODWORD(v11) = 0;
    v10 = 760;
    LOBYTE(v9) = 2;
    sub_7D5E4();
    __break(1u);
  }

  v36 = 0;
  v52[1] = 0;
  v52[2] = v42;
  v35 = sub_1A88(&qword_92468, &qword_80DD0);
  sub_69BDC();
  v52[0] = sub_7D134();
  v37 = sub_1A88(&qword_92478, &qword_80DD8);
  v1 = sub_69C80();
  v38 = v41;
  v39 = sub_7FFC(sub_68FC8, 0, v37, &type metadata for UInt16, &type metadata for Never, v1, &protocol witness table for Never, v2);
  v32 = v39;
  sub_B2C0(v52);
  v51 = v39;
  v33 = *(v40 + 16);
  v3 = v33;
  SymbolicTraits = CTFontGetSymbolicTraits(v33);

  v50 = SymbolicTraits;
  if (sub_69748())
  {
    v30 = v32;
    v31 = v38;
  }

  else
  {
    v4 = v38;
    v15 = *(v40 + 16);
    v5 = v15;
    v18 = 0;
    v19 = CTFontCopyGraphicsFont(v15, 0);
    v16 = v19;

    v49 = v19;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v17 = sub_67C30();
    type metadata accessor for CGRect(0);
    v48 = sub_7D104();

    v21 = sub_67C30();
    v20 = v32 + 32;

    sub_1A88(&qword_92488, &qword_80DE0);
    v25 = &v48;
    sub_7D0B4(0);
    v23 = v48;
    v22 = v48 + 1;

    CGFontGetGlyphBBoxes(v19, (v32 + 32), v21, v22);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    v43 = v32;

    v24 = &v13;
    __chkstk_darwin(&v13);
    v26 = &v9;
    v11 = v25;
    v12 = v6;
    v27 = sub_1A88(&qword_91608, &qword_7FB38);
    sub_69D38();
    v7 = sub_7D554();
    v28 = v4;
    v29 = v7;
    v14 = v7;

    sub_B2C0(&v48);

    v30 = v14;
    v31 = v28;
  }

  return v30;
}

uint64_t *sub_68FC8@<X0>(uint64_t *result@<X0>, _WORD *a2@<X8>)
{
  v3 = *result;
  if (*result < 0)
  {
    result = sub_7D5E4();
    __break(1u);
  }

  if (v3 > 0xFFFF)
  {
    result = sub_7D5E4();
    __break(1u);
  }

  else
  {
    *a2 = v3;
  }

  return result;
}

uint64_t sub_690F0(unsigned __int16 *a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for CGRect(0);
  sub_7D144();
  if (!sub_693A4(v9, v10, v11, v12))
  {
    v6 = 1;
    return v6 & 1;
  }

  sub_67E5C();
  sub_1A88(&qword_92498, &qword_80DE8);
  sub_7CE04();
  if (!v8)
  {
LABEL_9:

    v6 = 0;
    return v6 & 1;
  }

  swift_getKeyPath();

  sub_69E18();
  v3 = sub_7D074();
  v5 = v3;
  if (!v7)
  {

    if (v5)
    {

      v6 = 1;
      return v6 & 1;
    }

    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_693E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v8 = a2;
  v4 = a1;
  v10 = sub_7D7F4();
  v6 = *(v10 - 8);
  v7 = v10 - 8;
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v4);
  v9 = &v3 - v5;
  sub_7D804();
  return (*(v6 + 32))(v8, v9, v10);
}

uint64_t sub_694AC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v11 = a2;
  v9[1] = a1;
  v14 = sub_7D7F4();
  v12 = *(v14 - 8);
  v13 = v14 - 8;
  v10 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v14);
  v15 = v9 - v10;
  (*(v12 + 16))(v9 - v10, v2);
  v3 = sub_7D7D4();
  v4 = v12;
  v5 = v14;
  v6 = v3;
  v7 = v15;
  *v11 = v6 & 1;
  return (*(v4 + 8))(v7, v5);
}

uint64_t sub_695AC(int *a1, uint64_t a2)
{

  swift_getAtKeyPath();

  return v3 & 1;
}

uint64_t sub_69618(uint64_t a1)
{

  swift_beginAccess();
  *(v1 + 160) = a1;

  swift_endAccess();
}

void (*sub_6968C(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_68A4C();
  return sub_696DC;
}

void sub_696DC(uint64_t *a1, char a2)
{
  if (a2)
  {
    v2 = *a1;

    sub_69618(v2);
    sub_B2C0(a1);
  }

  else
  {
    sub_69618(*a1);
  }
}

uint64_t sub_69748()
{
  swift_beginAccess();
  v6 = *(v0 + 168);
  swift_endAccess();
  if (v6 == 2)
  {
    v2 = *(v5 + 16);
    v2;
    v3 = sub_62784();

    swift_beginAccess();
    *(v5 + 168) = v3 & 1;
    swift_endAccess();
    v4 = v3;
  }

  else
  {
    v4 = v6;
  }

  return v4 & 1;
}

uint64_t sub_6985C(char a1)
{
  swift_beginAccess();
  *(v1 + 168) = a1;
  return swift_endAccess();
}

uint64_t (*sub_698C4(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_69748() & 1;
  return sub_6991C;
}

uint64_t sub_6997C()
{
  sub_1F58(v0 + 32);
  sub_1F58(v0 + 48);
  sub_1F58(v0 + 64);
  sub_B2C0((v0 + 80));
  sub_1F58(v0 + 88);
  sub_1F58(v0 + 104);
  sub_1F58(v0 + 120);
  sub_B2C0((v0 + 152));
  sub_B2C0((v0 + 160));
  return v2;
}

uint64_t sub_69A54@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for Face();
  result = sub_7D534();
  *a2 = result;
  return result;
}

unint64_t sub_69B5C()
{
  v2 = qword_92460;
  if (!qword_92460)
  {
    type metadata accessor for Face();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_92460);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_69BDC()
{
  v2 = qword_92470;
  if (!qword_92470)
  {
    sub_B24C(&qword_92468, &qword_80DD0);
    sub_64E2C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_92470);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_69C80()
{
  v2 = qword_92480;
  if (!qword_92480)
  {
    sub_B24C(&qword_92478, &qword_80DD8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_92480);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_69D38()
{
  v2 = qword_92490;
  if (!qword_92490)
  {
    sub_B24C(&qword_91608, &qword_7FB38);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_92490);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_69E18()
{
  v2 = qword_924A0;
  if (!qword_924A0)
  {
    sub_B24C(&qword_92498, &qword_80DE8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_924A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_69EC4()
{
  v2 = qword_924B8;
  if (!qword_924B8)
  {
    sub_B24C(&qword_924B0, &qword_80E60);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_924B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_69F4C()
{
  v2 = qword_924C0;
  if (!qword_924C0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_924C0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_69FC4()
{
  v2 = qword_924C8;
  if (!qword_924C8)
  {
    sub_B24C(&qword_91D28, &qword_80618);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_924C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_6A04C()
{
  v2 = qword_924D8;
  if (!qword_924D8)
  {
    sub_B24C(&qword_91608, &qword_7FB38);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_924D8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_6A0D4()
{
  v2 = qword_924E0;
  if (!qword_924E0)
  {
    sub_B24C(&qword_91608, &qword_7FB38);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_924E0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_6A15C()
{
  v2 = qword_924F0;
  if (!qword_924F0)
  {
    sub_B24C(&qword_924E8, &qword_80E70);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_924F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_6A208()
{
  v2 = qword_92510;
  if (!qword_92510)
  {
    sub_B24C(&qword_92508, &qword_80EA8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_92510);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_6A2C4()
{
  v2 = qword_92518;
  if (!qword_92518)
  {
    sub_B24C(&qword_92508, &qword_80EA8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_92518);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_6A34C()
{
  v2 = qword_92520;
  if (!qword_92520)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_92520);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_6A514()
{
  v8 = (v0 + OBJC_IVAR____TtC12FontSettings18FontProviderFamily____lazy_storage___fileSizeString);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];

  swift_endAccess();
  if (v10)
  {
    return v9;
  }

  v4 = sub_6E638(v7);
  v5 = v1;

  v3 = (v7 + OBJC_IVAR____TtC12FontSettings18FontProviderFamily____lazy_storage___fileSizeString);
  swift_beginAccess();
  *v3 = v4;
  v3[1] = v5;

  swift_endAccess();
  return v4;
}

uint64_t sub_6A63C()
{
  swift_beginAccess();
  v2 = *(v0 + 16);

  swift_endAccess();
  return v2;
}

uint64_t sub_6A698(uint64_t a1, uint64_t a2)
{

  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;

  swift_endAccess();
}

uint64_t sub_6A7A4()
{
  swift_beginAccess();
  v2 = *(v0 + 32);

  swift_endAccess();
  return v2;
}

uint64_t sub_6A800(uint64_t a1, uint64_t a2)
{

  swift_beginAccess();
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;

  swift_endAccess();
}

uint64_t sub_6A8CC()
{
  swift_beginAccess();
  v2 = *(v0 + 48);
  swift_endAccess();
  return v2 & 1;
}

uint64_t sub_6A91C(char a1)
{
  swift_beginAccess();
  *(v1 + 48) = a1;
  return swift_endAccess();
}

uint64_t sub_6A9C4()
{
  swift_beginAccess();
  v2 = *(v0 + 56);

  swift_endAccess();
  return v2;
}

uint64_t sub_6AA20(uint64_t a1, uint64_t a2)
{

  swift_beginAccess();
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;

  swift_endAccess();
}

uint64_t sub_6AAEC()
{
  swift_beginAccess();
  v2 = *(v0 + 72);

  swift_endAccess();
  return v2;
}

uint64_t sub_6AB48(uint64_t a1, uint64_t a2)
{

  swift_beginAccess();
  *(v2 + 72) = a1;
  *(v2 + 80) = a2;

  swift_endAccess();
}

uint64_t sub_6AC14@<X0>(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR____TtC12FontSettings6Family_id;
  v2 = sub_7BD04();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

void *sub_6AC80()
{
  v2 = *(v0 + OBJC_IVAR____TtC12FontSettings6Family_descriptor);
  v2;
  return v2;
}

uint64_t sub_6ACBC@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3[1] = a1;
  v3[0] = a1;
  return sub_17330(v3, &unk_8F540, a2);
}

uint64_t sub_6ACF8()
{

  swift_getKeyPath();
  swift_getKeyPath();
  sub_7BE14();

  return v1;
}

uint64_t sub_6AD94@<X0>(_BYTE *a2@<X8>)
{

  *a2 = sub_6ACF8();
}

uint64_t sub_6ADF0(char *a1, uint64_t *a2)
{
  v3 = *a1;

  sub_6AE48(v3);
}

uint64_t sub_6AE48(char a1)
{

  swift_getKeyPath();
  swift_getKeyPath();
  return sub_7BE24();
}

void (*sub_6AED4(void *a1))(uint64_t *a1, char a2)
{
  v3 = sub_17EB8(0x40uLL, 33060);
  *a1 = v3;
  v3[4] = v2;

  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = sub_7BE04();
  return sub_14158;
}

uint64_t sub_6AFB4()
{
  swift_beginAccess();
  sub_1A88(&qword_92538, &qword_80F18);
  sub_7BDE4();
  return swift_endAccess();
}

uint64_t sub_6B030(uint64_t a1)
{
  v8 = a1;
  v12 = 0;
  v11 = 0;
  v9 = sub_1A88(&qword_92540, &qword_80F20);
  v6 = *(v9 - 8);
  v7 = v9 - 8;
  v5[0] = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v9);
  v5[1] = v5 - v5[0];
  v12 = v3;
  v11 = v1;
  (*(v6 + 16))(v2);
  v5[2] = &v10;
  swift_beginAccess();
  sub_1A88(&qword_92538, &qword_80F18);
  sub_7BDF4();
  swift_endAccess();
  return (*(v6 + 8))(v8, v9);
}

uint64_t (*sub_6B184(void *a1))()
{
  v6 = sub_17EB8(0x28uLL, 38264);
  *a1 = v6;
  *v6 = v1;
  v2 = sub_1A88(&qword_92540, &qword_80F20);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = sub_17EB8(v5, 38264);
  v6[4] = sub_17EB8(v5, 38264);
  sub_6AFB4();
  return sub_6B2A8;
}

void sub_6B2A8(void **a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v4 = v8[4];
    v5 = v8[3];
    v3 = v8[1];
    v2 = v8[2];
    (*(v2 + 16))();
    sub_6B030(v5);
    (*(v2 + 8))(v4, v3);
    free(v4);
    free(v5);
  }

  else
  {
    v6 = v8[4];
    v7 = v8[3];
    sub_6B030(v6);
    free(v6);
    free(v7);
  }

  free(v8);
}

uint64_t sub_6B3A4@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR____TtC12FontSettings6Family__state;
  swift_beginAccess();
  v2 = sub_1A88(&qword_92538, &qword_80F18);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t sub_6B43C(uint64_t a1)
{
  v11 = a1;
  v12 = sub_1A88(&qword_92538, &qword_80F18);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v12);
  v7 = &v4 - v5;
  (*(v9 + 16))(v2);
  v6 = v1 + OBJC_IVAR____TtC12FontSettings6Family__state;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t sub_6B588()
{
  v2 = (v0 + OBJC_IVAR____TtC12FontSettings6Family__postscriptNames);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_6B5E8(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR____TtC12FontSettings6Family__postscriptNames);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t sub_6B6BC()
{
  v12 = 0;
  v7 = (v0 + OBJC_IVAR____TtC12FontSettings6Family__postscriptNames);
  swift_beginAccess();
  v8 = *v7;

  swift_endAccess();
  v11 = v8;
  sub_B2C0(&v11);
  if (!v8)
  {
    v5 = sub_6B888();

    v4 = (v6 + OBJC_IVAR____TtC12FontSettings6Family__postscriptNames);
    swift_beginAccess();
    *v4 = v5;

    swift_endAccess();
  }

  v2 = (v6 + OBJC_IVAR____TtC12FontSettings6Family__postscriptNames);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  v9 = v3;
  if (v3)
  {
    return v9;
  }

  sub_7D714();
  return sub_7D214();
}

uint64_t sub_6B888()
{
  v13 = objc_opt_self();
  swift_beginAccess();

  swift_endAccess();
  v14 = sub_7CF04();

  v15 = [v13 fontNamesForFamilyName:v14];

  sub_7D0A4();
  sub_1A88(&qword_90CB8, &qword_80B00);
  sub_64900();
  sub_7D2C4();

  v20 = sub_1A88(&qword_90C30, &qword_7E880);
  v21 = sub_7D714();
  v19 = v1;
  kCTFontFamilyNameAttribute;
  *v19 = kCTFontFamilyNameAttribute;
  swift_beginAccess();
  v16 = *(v0 + 16);
  v17 = *(v0 + 24);

  swift_endAccess();
  *(v19 + 32) = &type metadata for String;
  *(v19 + 8) = v16;
  *(v19 + 16) = v17;
  kCTFontDownloadableAttribute;
  *(v19 + 40) = kCTFontDownloadableAttribute;
  swift_beginAccess();
  v18 = *(v0 + 48);
  swift_endAccess();
  *(v19 + 72) = &type metadata for Bool;
  *(v19 + 48) = v18;
  kCTFontDownloadedAttribute;
  *(v19 + 80) = kCTFontDownloadedAttribute;
  *(v19 + 112) = &type metadata for Bool;
  *(v19 + 88) = 1;
  sub_71DDC(v21, v20);
  type metadata accessor for CFString(0);
  sub_B438();
  sub_7CDB4();
  v22.super.isa = sub_7CD84().super.isa;

  v23 = CTFontDescriptorCreateWithAttributes(v22.super.isa);
  v23;
  MatchingFontDescriptors = CTFontDescriptorCreateMatchingFontDescriptors(v23, 0);

  if (MatchingFontDescriptors)
  {
    objc_opt_self();
    v12 = swift_dynamicCastObjCClass();
    if (v12)
    {
      sub_1A88(&qword_90CE8, &unk_80F50);
      v12;
      sub_13B80();
      sub_7D774();

      if (v25)
      {
        v11 = v25;
LABEL_7:
        v10 = v11;
        goto LABEL_8;
      }
    }

    else
    {
    }

    v11 = 0;
    goto LABEL_7;
  }

  v10 = 0;
LABEL_8:
  if (v10)
  {
    KeyPath = swift_getKeyPath();

    v8 = sub_1A88(&qword_90CE8, &unk_80F50);
    v2 = sub_12A7C();
    sub_7FFC(sub_648CC, KeyPath, v8, &type metadata for String, &type metadata for Never, v2, &protocol witness table for Never, v9);

    sub_7D2C4();

    sub_1A88(&qword_90B40, &qword_7E2A0);
    sub_70040();
    sub_7D244();
    v6 = sub_7D254();

    return v6;
  }

  else
  {

    v4 = sub_7D254();

    return v4;
  }
}

BOOL sub_6BF9C(uint64_t *a1)
{
  v1 = sub_6175C();
  v3 = *v1;
  v4 = v1[1];

  v6._countAndFlagsBits = v3;
  v6._object = v4;
  v5 = sub_7D014(v6);

  return !v5;
}

void sub_6C028(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  *a1;
  *a2 = sub_635E4();
  a2[1] = v2;
}

uint64_t sub_6C098()
{
  v2 = (v0 + OBJC_IVAR____TtC12FontSettings6Family__faces);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_6C0F8(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR____TtC12FontSettings6Family__faces);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t sub_6C1CC()
{
  v12 = 0;
  v7 = (v0 + OBJC_IVAR____TtC12FontSettings6Family__faces);
  swift_beginAccess();
  v8 = *v7;

  swift_endAccess();
  v11 = v8;
  sub_B2C0(&v11);
  if (!v8)
  {
    v5 = sub_6C38C();

    v4 = (v6 + OBJC_IVAR____TtC12FontSettings6Family__faces);
    swift_beginAccess();
    *v4 = v5;

    swift_endAccess();
  }

  v2 = (v6 + OBJC_IVAR____TtC12FontSettings6Family__faces);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  v9 = v3;
  if (v3)
  {
    return v9;
  }

  type metadata accessor for Face();
  return sub_7D714();
}

uint64_t sub_6C38C()
{
  v7 = 0;
  memset(__b, 0, sizeof(__b));
  v8 = v0;
  type metadata accessor for Face();
  v7 = sub_7D714();
  sub_6B6BC();
  sub_7D224();
  memcpy(__b, v9, sizeof(__b));
  while (1)
  {
    sub_1A88(&qword_90B98, &unk_80F60);
    sub_7D294();
    if (!v5)
    {
      break;
    }

    if (sub_6581C(v4[1], v5))
    {

      sub_1A88(&qword_91870, &qword_7FD00);
      sub_7D0F4();
    }
  }

  sub_B114(__b);
  v2 = v7;

  v4[0] = v2;
  sub_1A88(&qword_91870, &qword_7FD00);
  sub_700C8();
  sub_70150();
  v3 = sub_7D084();
  sub_B2C0(v4);
  sub_B2C0(&v7);
  return v3;
}

uint64_t sub_6C5A8()
{
  v2 = (v0 + OBJC_IVAR____TtC12FontSettings6Family__filePaths);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_6C608(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR____TtC12FontSettings6Family__filePaths);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t sub_6C6DC()
{
  v12 = 0;
  v7 = (v0 + OBJC_IVAR____TtC12FontSettings6Family__filePaths);
  swift_beginAccess();
  v8 = *v7;

  swift_endAccess();
  v11 = v8;
  sub_B2C0(&v11);
  if (!v8)
  {
    v5 = sub_6C8A8();

    v4 = (v6 + OBJC_IVAR____TtC12FontSettings6Family__filePaths);
    swift_beginAccess();
    *v4 = v5;

    swift_endAccess();
  }

  v2 = (v6 + OBJC_IVAR____TtC12FontSettings6Family__filePaths);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  v9 = v3;
  if (v3)
  {
    return v9;
  }

  sub_7D714();
  return sub_7D214();
}

uint64_t sub_6C8A8()
{
  v3 = v0;
  v2 = sub_6C1CC();
  sub_1A88(&qword_91870, &qword_7FD00);
  sub_700C8();
  sub_7D024();
  sub_B2C0(&v2);
  sub_1A88(&qword_90CB8, &qword_80B00);
  sub_64900();
  return sub_7D2C4();
}

uint64_t sub_6C9AC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v10 = a2;
  v11 = a1;
  v18 = 0;
  v12 = (*(*(sub_1A88(&qword_90B50, &qword_7E2D0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v11);
  v14 = &v8 - v12;
  v18 = *v2;
  v13 = *(v18 + 16);
  v13;
  sub_63FE8(v14);

  v15 = sub_7BCD4();
  v16 = *(v15 - 8);
  v17 = v15 - 8;
  if ((*(v16 + 48))(v14, 1) == 1)
  {
    result = sub_64CE0(v14);
    v4 = v10;
    *v10 = 0;
    v4[1] = 0;
  }

  else
  {
    v8 = sub_7BCA4();
    v9 = v5;
    (*(v16 + 8))(v14, v15);
    result = v8;
    v6 = v10;
    v7 = v9;
    *v10 = v8;
    v6[1] = v7;
  }

  return result;
}

uint64_t sub_6CB54()
{
  v2 = (v0 + OBJC_IVAR____TtC12FontSettings6Family__faces);
  swift_beginAccess();
  *v2 = 0;

  swift_endAccess();
  v3 = (v0 + OBJC_IVAR____TtC12FontSettings6Family__postscriptNames);
  swift_beginAccess();
  *v3 = 0;

  swift_endAccess();
  v4 = (v0 + OBJC_IVAR____TtC12FontSettings6Family__filePaths);
  swift_beginAccess();
  *v4 = 0;

  return swift_endAccess();
}

uint64_t sub_6CC38()
{
  v8 = (v0 + OBJC_IVAR____TtC12FontSettings6Family____lazy_storage___copyrightString);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];

  swift_endAccess();
  if (v10)
  {
    return v9;
  }

  kCTFontCopyrightNameKey;
  v4 = sub_6DCD0(kCTFontCopyrightNameKey);
  v5 = v1;

  v3 = (v7 + OBJC_IVAR____TtC12FontSettings6Family____lazy_storage___copyrightString);
  swift_beginAccess();
  *v3 = v4;
  v3[1] = v5;

  swift_endAccess();
  return v4;
}

uint64_t sub_6CD9C(uint64_t a1, uint64_t a2)
{

  v5 = (v2 + OBJC_IVAR____TtC12FontSettings6Family____lazy_storage___copyrightString);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

void (*sub_6CE38(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_6CC38();
  a1[1] = v2;
  return sub_6CE90;
}

void sub_6CE90(uint64_t *a1, char a2)
{
  if (a2)
  {
    v2 = *a1;
    v3 = a1[1];

    sub_6CD9C(v2, v3);
    sub_1F58(a1);
  }

  else
  {
    sub_6CD9C(*a1, a1[1]);
  }
}

uint64_t sub_6CF0C()
{
  v8 = (v0 + OBJC_IVAR____TtC12FontSettings6Family____lazy_storage___versionString);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];

  swift_endAccess();
  if (v10)
  {
    return v9;
  }

  kCTFontVersionNameKey;
  v4 = sub_6DCD0(kCTFontVersionNameKey);
  v5 = v1;

  v3 = (v7 + OBJC_IVAR____TtC12FontSettings6Family____lazy_storage___versionString);
  swift_beginAccess();
  *v3 = v4;
  v3[1] = v5;

  swift_endAccess();
  return v4;
}

uint64_t sub_6D070(uint64_t a1, uint64_t a2)
{

  v5 = (v2 + OBJC_IVAR____TtC12FontSettings6Family____lazy_storage___versionString);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

void (*sub_6D10C(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_6CF0C();
  a1[1] = v2;
  return sub_6D164;
}

void sub_6D164(uint64_t *a1, char a2)
{
  if (a2)
  {
    v2 = *a1;
    v3 = a1[1];

    sub_6D070(v2, v3);
    sub_1F58(a1);
  }

  else
  {
    sub_6D070(*a1, a1[1]);
  }
}

void *sub_6D1E0(void *a1)
{
  v67 = a1;
  v2 = v1;
  v68 = v2;
  v73 = 0;
  v72 = 0;
  v54 = sub_1A88(&qword_92538, &qword_80F18);
  v50 = *(v54 - 8);
  v51 = v54 - 8;
  v48 = (*(v50 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(v54);
  v53 = &v47 - v48;
  v73 = a1;
  v72 = v5;
  v49 = "";
  v55 = 0;
  v64 = 1;
  v6 = sub_7CF84("", 0, 1, v4);
  v7 = v64;
  v8 = v68;
  v9 = v6;
  v10 = v49;
  v12 = v11;
  v13 = v55;
  v68[2] = v9;
  v8[3] = v12;
  v14 = sub_7CF84(v10, v13, v7 & 1);
  v15 = v64;
  v16 = v68;
  v17 = v14;
  v18 = v49;
  v20 = v19;
  v21 = v55;
  v68[4] = v17;
  v16[5] = v20;
  *(v16 + 48) = 0;
  v22 = sub_7CF84(v18, v21, v15 & 1);
  v23 = v64;
  v24 = v68;
  v25 = v22;
  v26 = v49;
  v28 = v27;
  v29 = v55;
  v68[7] = v25;
  v24[8] = v28;
  v30 = sub_7CF84(v26, v29, v23 & 1);
  v31 = v68;
  v68[9] = v30;
  v31[10] = v32;
  sub_7BCF4();
  v52 = OBJC_IVAR____TtC12FontSettings6Family__state;
  sub_6ACBC(2, v53);
  (*(v50 + 32))(v68 + v52, v53, v54);
  v33 = v55;
  v34 = v68;
  *(v68 + OBJC_IVAR____TtC12FontSettings6Family__postscriptNames) = v55;
  *(v34 + OBJC_IVAR____TtC12FontSettings6Family__faces) = v33;
  *(v34 + OBJC_IVAR____TtC12FontSettings6Family__filePaths) = v33;
  v35 = (v34 + OBJC_IVAR____TtC12FontSettings6Family____lazy_storage___copyrightString);
  *v35 = 0;
  v35[1] = 0;
  v36 = (v34 + OBJC_IVAR____TtC12FontSettings6Family____lazy_storage___versionString);
  *v36 = 0;
  v36[1] = 0;
  v56 = sub_61948();
  v57 = v37;
  v58 = &v71;
  v62 = 33;
  v63 = 0;
  swift_beginAccess();
  v38 = v57;
  v39 = v68;
  v68[2] = v56;
  v39[3] = v38;

  swift_endAccess();
  v59 = sub_63760();
  v60 = v40;
  v61 = &v70;
  swift_beginAccess();
  v41 = v60;
  v42 = v68;
  v68[4] = v59;
  v42[5] = v41;

  swift_endAccess();
  v43 = sub_61E48();
  v44 = v68;
  v65 = v43;
  v66 = &v69;
  swift_beginAccess();
  *(v44 + 48) = v65 & v64;
  swift_endAccess();
  v67;
  v45 = v67;
  *(v44 + OBJC_IVAR____TtC12FontSettings6Family_descriptor) = v67;

  return v68;
}

uint64_t sub_6D580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a1;
  v55 = a2;
  v51 = a3;
  v54 = a4;
  v62 = 0;
  v63 = 0;
  v60 = 0;
  v61 = 0;
  v59 = 0;
  v46 = sub_1A88(&qword_92538, &qword_80F18);
  v42 = *(v46 - 8);
  v43 = v46 - 8;
  v39 = (*(v42 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v47);
  v45 = &v38 - v39;
  v62 = v6;
  v63 = v7;
  v60 = v8;
  v61 = v9;
  v59 = v4;
  v41 = "";
  v53 = 0;
  v40 = 1;
  v10 = sub_7CF84("", 0, 1, v5);
  v11 = v40;
  v12 = v10;
  v13 = v41;
  v15 = v14;
  v16 = v53;
  *(v4 + 16) = v12;
  *(v4 + 24) = v15;
  v17 = sub_7CF84(v13, v16, v11 & 1);
  v18 = v40;
  v19 = v17;
  v20 = v41;
  v22 = v21;
  v23 = v53;
  *(v4 + 32) = v19;
  *(v4 + 40) = v22;
  *(v4 + 48) = 0;
  v24 = sub_7CF84(v20, v23, v18 & 1);
  v25 = v40;
  v26 = v24;
  v27 = v41;
  v29 = v28;
  v30 = v53;
  *(v4 + 56) = v26;
  *(v4 + 64) = v29;
  *(v4 + 72) = sub_7CF84(v27, v30, v25 & 1);
  *(v4 + 80) = v31;
  sub_7BCF4();
  v44 = OBJC_IVAR____TtC12FontSettings6Family__state;
  sub_6ACBC(2, v45);
  (*(v42 + 32))(v4 + v44, v45, v46);
  v32 = v53;
  *(v4 + OBJC_IVAR____TtC12FontSettings6Family__postscriptNames) = v53;
  *(v4 + OBJC_IVAR____TtC12FontSettings6Family__faces) = v32;
  *(v4 + OBJC_IVAR____TtC12FontSettings6Family__filePaths) = v32;
  v33 = (v4 + OBJC_IVAR____TtC12FontSettings6Family____lazy_storage___copyrightString);
  *v33 = 0;
  v33[1] = 0;
  v34 = (v4 + OBJC_IVAR____TtC12FontSettings6Family____lazy_storage___versionString);
  *v34 = 0;
  v34[1] = 0;

  v48 = &v58;
  v49 = 33;
  v50 = 0;
  swift_beginAccess();
  v35 = v55;
  *(v4 + 16) = v47;
  *(v4 + 24) = v35;

  swift_endAccess();

  v52 = &v57;
  swift_beginAccess();
  v36 = v54;
  *(v4 + 32) = v51;
  *(v4 + 40) = v36;

  swift_endAccess();
  *(v4 + OBJC_IVAR____TtC12FontSettings6Family_descriptor) = v53;

  return v56;
}

uint64_t sub_6D870(uint64_t a1, uint64_t a2)
{
  v10[5] = 0;
  v10[7] = a1;
  v10[6] = a2;
  swift_beginAccess();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);

  swift_endAccess();
  v10[0] = v4;
  v10[1] = v5;
  swift_beginAccess();
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);

  swift_endAccess();
  v9[0] = v7;
  v9[1] = v8;
  sub_198A4();
  sub_7D454();
  sub_1F58(v9);
  sub_1F58(v10);
  type metadata accessor for ComparisonResult(0);
  sub_60EC4();
  return sub_7D724() & 1;
}

uint64_t sub_6D9F0(uint64_t a1, uint64_t a2)
{
  v10 = a1;
  v12 = a2;
  v25 = 0;
  v24 = 0;
  v23 = 0;
  v19 = sub_7BD04();
  v15 = *(v19 - 8);
  v16 = v19 - 8;
  v8 = v15[8];
  v7 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v19);
  v17 = &v6 - v7;
  v9 = v7;
  v3 = __chkstk_darwin(&v6 - v7);
  v18 = &v6 - v9;
  v25 = v10;
  v24 = v4;
  v23 = v2;
  v11 = &unk_94000;
  v14 = v15[2];
  v13 = v15 + 2;
  v14(v3);
  (v14)(v17, v12 + v11[474], v19);
  v22 = sub_7BCE4();
  v21 = v15[1];
  v20 = v15 + 1;
  v21(v17, v19);
  v21(v18, v19);
  return v22 & 1;
}

uint64_t sub_6DBAC(uint64_t a1)
{
  v6[1] = a1;
  v2 = v1;
  v8 = v2;
  v14 = 0;
  v13 = 0;
  v12 = sub_7BD04();
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v7 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(v12);
  v11 = v6 - v7;
  v14 = a1;
  v13 = v8;
  (*(v9 + 16))(v4);
  sub_B094();
  sub_7D7C4();
  return (*(v9 + 8))(v11, v12);
}

uint64_t sub_6DCD0(const __CFString *a1)
{
  v9[0] = 0;
  v9[1] = 0;
  v11 = a1;
  v10 = v1;
  sub_6C1CC();
  sub_1A88(&qword_91870, &qword_7FD00);
  sub_701D0();
  sub_7D354();
  while (1)
  {
    sub_1A88(&qword_92590, &unk_80F70);
    sub_7D5D4();
    if (!v8)
    {
      break;
    }

    font = *(v8 + 16);
    font;
    v6 = CTFontCopyLocalizedName(font, a1, 0);

    if (v6)
    {
      v6;
      v3 = sub_7CF14();

      sub_B2C0(v9);
      return v3;
    }
  }

  sub_B2C0(v9);
  return sub_7CF84("", 0, 1);
}

uint64_t sub_6DF84()
{
  sub_1F58(v0 + 16);
  sub_1F58(v0 + 32);
  sub_1F58(v0 + 56);
  sub_1F58(v0 + 72);
  v4 = OBJC_IVAR____TtC12FontSettings6Family_id;
  v1 = sub_7BD04();
  (*(*(v1 - 8) + 8))(v0 + v4);
  sub_BB0C((v0 + OBJC_IVAR____TtC12FontSettings6Family_descriptor));
  v5 = OBJC_IVAR____TtC12FontSettings6Family__state;
  v2 = sub_1A88(&qword_92538, &qword_80F18);
  (*(*(v2 - 8) + 8))(v0 + v5);
  sub_B2C0((v0 + OBJC_IVAR____TtC12FontSettings6Family__postscriptNames));
  sub_B2C0((v0 + OBJC_IVAR____TtC12FontSettings6Family__faces));
  sub_B2C0((v0 + OBJC_IVAR____TtC12FontSettings6Family__filePaths));
  sub_1F58(v0 + OBJC_IVAR____TtC12FontSettings6Family____lazy_storage___copyrightString);
  sub_1F58(v0 + OBJC_IVAR____TtC12FontSettings6Family____lazy_storage___versionString);
  return v6;
}

uint64_t sub_6E140()
{
  type metadata accessor for Family(0);
  sub_128FC();
  return sub_7D4F4();
}

uint64_t sub_6E194@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for Family(0);
  result = sub_7BDC4();
  *a1 = result;
  return result;
}

void *sub_6E284(void *a1)
{
  a1;
  v6 = sub_6D1E0(a1);

  if (sub_61C04())
  {

    sub_6C1CC();

    sub_1A88(&qword_91870, &qword_7FD00);
    sub_701D0();
    v3 = sub_7D344();

    v4 = v3 ^ 1;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  sub_6AE48(v2);

  return v6;
}

uint64_t sub_6E3D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{

  v11 = sub_6D580(a1, a2, a3, a4);

  sub_6AE48(a5);

  return v11;
}

uint64_t sub_6E638(uint64_t a1)
{
  v75 = a1;
  v96 = 0;
  v95 = 0;
  v94 = 0;
  v77 = __b;
  v79 = 40;
  memset(__b, 0, sizeof(__b));
  v89 = 0;
  v90 = 0;
  v80 = 0;
  v87 = 0;
  v81 = 0;
  v55 = sub_7BBF4();
  v56 = *(v55 - 8);
  v57 = v55 - 8;
  v58 = (*(v56 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v59 = &v7 - v58;
  v60 = sub_7BBD4();
  v61 = *(v60 - 8);
  v62 = v60 - 8;
  v63 = (*(v61 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v81);
  v64 = &v7 - v63;
  v65 = sub_71BF4(v2);
  v66 = *(v65 - 8);
  v67 = v65 - 8;
  v68 = (*(v66 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v65);
  v69 = &v7 - v68;
  v70 = sub_1A88(&qword_92D88, &qword_81180);
  v71 = *(v70 - 8);
  v72 = v70 - 8;
  v73 = (*(v71 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v70);
  v74 = &v7 - v73;
  v96 = &v7 - v73;
  v95 = a1;
  v94 = 0;

  v76 = sub_6C6DC();

  v78 = v104;
  sub_7D224();
  memcpy(v77, v78, v79);
  v82 = v81;
  v83 = v81;
  for (i = v80; ; i = v26)
  {
    v49 = i;
    v51 = v83;
    v50 = v82;
    sub_1A88(&qword_90B98, &unk_80F60);
    sub_7D294();
    v52 = v101;
    v53 = v102;
    v54 = v51;
    if (!v102)
    {
      v40 = v54;
      sub_B114(__b);
      v41 = &v93;
      v93 = v40;
      sub_71C80();
      sub_7D204();
      v42 = v3;
      v43 = [objc_opt_self() bytes];
      sub_71CF8();
      sub_7BB54();
      (*(v61 + 104))(v64, enum case for ByteCountFormatStyle.Style.memory(_:), v60);
      sub_6EEF0();
      v44 = sub_2DE80();
      sub_4754();
      sub_7BB44();
      (*(v56 + 8))(v59, v55);
      (*(v61 + 8))(v64, v60);
      sub_71D5C();
      sub_7BB74();
      (*(v66 + 8))(v69, v65);
      v45 = v91;
      v46 = v92;
      (*(v71 + 8))(v74, v70);
      return v45;
    }

    v47 = v52;
    v48 = v53;
    v35 = v53;
    v34 = v52;
    v89 = v52;
    v90 = v53;
    v100 = 0;
    v38 = [objc_opt_self() defaultManager];

    v37 = sub_7CF04();

    v88 = v100;
    v39 = [v38 attributesOfItemAtPath:v37 error:&v88];
    v36 = v88;
    v88;
    v5 = v100;
    v100 = v36;

    if (v39)
    {
      v33 = v39;
      v29 = v39;
      v28 = type metadata accessor for FileAttributeKey(0);
      sub_F020();
      v30 = sub_7CD94();

      v31 = v30;
      v32 = v49;
    }

    else
    {
      v8 = v100;
      v9 = sub_7BC04();

      swift_willThrow();
      v10 = 0;

      v31 = 0;
      v32 = v10;
    }

    v26 = v32;
    v27 = v31;
    if (!v31)
    {
      v23 = v50;
      v24 = v51;
      goto LABEL_24;
    }

    v25 = v27;
    v20 = v27;
    v87 = v27;
    v19 = NSFileSize;
    NSFileSize;
    v22 = &v86;
    v86 = v19;
    v21 = type metadata accessor for FileAttributeKey(0);
    sub_F020();
    sub_7CE04();
    sub_BB0C(v22);
    if (v99[3])
    {
      result = swift_dynamicCast();
      if (result)
      {
        v15 = v85;
        v16 = 0;
      }

      else
      {
        v15 = 0;
        v16 = 1;
      }

      v17 = v15;
      v18 = v16;
    }

    else
    {
      result = sub_B828(v99);
      v17 = 0;
      v18 = 1;
    }

    v97 = v17;
    v98 = v18 & 1;
    v14 = (v18 & 1) != 0 ? 0 : v97;
    v13 = v50 + v14;
    if (__CFADD__(v50, v14))
    {
      break;
    }

    v94 = v13;

    v23 = v13;
    v24 = v13;
LABEL_24:
    v12 = v24;
    v11 = v23;

    v82 = v11;
    v83 = v12;
  }

  __break(1u);
  return result;
}

uint64_t sub_6EF08(uint64_t a1, uint64_t a2)
{

  v5 = (v2 + OBJC_IVAR____TtC12FontSettings18FontProviderFamily____lazy_storage___fileSizeString);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

void *sub_6EFA4(const __CTFontDescriptor *a1)
{
  v95 = a1;
  v121 = 0;
  v120 = 0;
  v119 = 0;
  v117 = 0;
  v118 = 0;
  v115 = 0;
  v116 = 0;
  v111 = 0;
  v112 = 0;
  v110[0] = 0;
  v110[1] = 0;
  v103 = 0;
  v104 = 0;
  v78 = 0;
  v102 = 0;
  v101 = 0;
  v99 = 0;
  v100 = 0;
  v2 = sub_1A88(&qword_90B50, &qword_7E2D0);
  v79 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v2);
  v80 = &v21 - v79;
  v86 = 0;
  v81 = sub_7BCD4();
  v82 = *(v81 - 8);
  v83 = v81 - 8;
  v84 = (*(v82 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v86);
  v85 = &v21 - v84;
  v121 = &v21 - v84;
  v92 = sub_7CEF4();
  v89 = *(v92 - 8);
  v90 = v92 - 8;
  v87 = (*(v89 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v95);
  v91 = &v21 - v87;
  v119 = v4;
  v120 = v1;
  v5 = (v1 + OBJC_IVAR____TtC12FontSettings18FontProviderFamily____lazy_storage___fileSizeString);
  *v5 = 0;
  v5[1] = 0;
  v88 = 1;
  v117 = sub_7CF84("", v6, 1, v3);
  v118 = v7;
  sub_7CF84("No Provider Found", 0x11uLL, v88 & 1);
  sub_7CE94();
  v93 = sub_61F88(v91);
  v94 = v8;
  (*(v89 + 8))(v91, v92);
  v115 = v93;
  v116 = v94;
  v96 = kCTFontURLAttribute;
  kCTFontURLAttribute;
  v97 = CTFontDescriptorCopyAttribute(v95, v96);

  if (v97 && (v77 = v97, v98 = v97, v9 = swift_dynamicCast(), (v9 & 1) != 0))
  {
    (*(v82 + 56))(v80, 0, 1, v81);
  }

  else
  {
    (*(v82 + 56))(v80, 1, 1, v81);
  }

  if ((*(v82 + 48))(v80, 1, v81) == 1)
  {
    sub_64CE0(v80);
  }

  else
  {
    (*(v82 + 32))(v85, v80, v81);
    v73 = sub_7BCA4();
    v75 = v10;
    v11 = sub_612D8();
    v72 = *v11;
    v74 = v11[1];

    v122._countAndFlagsBits = v72;
    v122._object = v74;
    v76 = sub_7D014(v122);

    if (v76)
    {
      v111 = sub_7CF84("", 0, 1);
      v112 = v12;
      v108 = sub_7BC64();
      v70 = sub_1A88(&qword_90CB8, &qword_80B00);
      sub_702CC();
      sub_7CE34();
      v107 = v109;
      sub_1A88(&qword_925A0, &qword_80F80);
      sub_7D604();
      for (i = v78; ; i = v67)
      {
        v67 = i;
        sub_1A88(&qword_925A8, &qword_80F88);
        sub_7D614();
        v68 = v105;
        v69 = v106;
        if (!v106)
        {
          break;
        }

        v65 = v68;
        v66 = v69;
        v62 = v69;
        v59 = v68;
        v99 = v68;
        v100 = v69;
        v13 = sub_6313C();
        v60 = *v13;
        v61 = v13[1];

        v63 = sub_7CF94();

        v64 = v62;
        if (v63)
        {

          break;
        }

        v111 = v59;
        v112 = v62;
      }

      sub_B2C0(v110);
      v56 = objc_opt_self();
      v54 = v111;
      v55 = v112;

      v57 = sub_7CF04();

      v58 = [v56 identifierFromDirectoryName:v57];

      if (v58)
      {
        v53 = v58;
        v48 = v58;
        v49 = sub_7CF14();
        v50 = v14;

        v51 = v49;
        v52 = v50;
      }

      else
      {
        v51 = 0;
        v52 = 0;
      }

      v46 = v52;
      v47 = v51;
      if (v52)
      {
        v44 = v47;
        v45 = v46;
        v15 = v67;
        v40 = v46;
        v41 = v47;
        v103 = v47;
        v104 = v46;

        v117 = v41;
        v118 = v40;

        sub_70354();
        v42 = sub_6FE88(v41, v40, 0);
        v43 = v15;
        if (v15)
        {

          v39 = 0;
        }

        else
        {
          v39 = v42;
        }

        v38 = v39;
        v102 = v39;
        v39;
        if (v38)
        {
          v37 = v38;
          v36 = v38;
          v101 = v38;
          v38;
          v35 = [v36 localizedName];
          v33 = sub_7CF14();
          v34 = v16;

          v115 = v33;
          v116 = v34;
        }
      }

      sub_1F58(&v111);
      (*(v82 + 8))(v85, v81);
    }

    else
    {
      (*(v82 + 8))(v85, v81);
    }
  }

  v95;
  v17 = sub_6D1E0(v95);
  v32 = v17;

  v120 = v17;

  v31 = &v117;
  v22 = v117;
  v24 = v118;

  v23 = &v114;
  v25 = 33;
  v26 = 0;
  swift_beginAccess();
  v18 = v24;
  v17[7] = v22;
  v17[8] = v18;

  swift_endAccess();

  v30 = &v115;
  v27 = v115;
  v29 = v116;

  v28 = &v113;
  swift_beginAccess();
  v19 = v29;
  v17[9] = v27;
  v17[10] = v19;

  swift_endAccess();

  sub_6AE48(2);

  sub_1F58(v30);
  sub_1F58(v31);

  return v32;
}

id sub_6FE88(uint64_t a1, uint64_t a2, char a3)
{
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v10 = sub_708C0(a1, a2, a3 & 1);
  if (v8)
  {
    return v5;
  }

  else
  {
    return v10;
  }
}

uint64_t sub_6FF50()
{
  v1 = sub_6DF84();
  sub_1F58(v1 + OBJC_IVAR____TtC12FontSettings18FontProviderFamily____lazy_storage___fileSizeString);
  return v1;
}

unint64_t sub_70040()
{
  v2 = qword_92550;
  if (!qword_92550)
  {
    sub_B24C(&qword_90B40, &qword_7E2A0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_92550);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_700C8()
{
  v2 = qword_92560;
  if (!qword_92560)
  {
    sub_B24C(&qword_91870, &qword_7FD00);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_92560);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_70150()
{
  v2 = qword_92568;
  if (!qword_92568)
  {
    type metadata accessor for Face();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_92568);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_701D0()
{
  v2 = qword_92588;
  if (!qword_92588)
  {
    sub_B24C(&qword_91870, &qword_7FD00);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_92588);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for Family(uint64_t a1)
{
  v2 = qword_925E0;
  if (!qword_925E0)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

unint64_t sub_702CC()
{
  v2 = qword_92598;
  if (!qword_92598)
  {
    sub_B24C(&qword_90CB8, &qword_80B00);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_92598);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_70354()
{
  v2 = qword_925B0;
  if (!qword_925B0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_925B0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_703D4(uint64_t a1)
{
  updated = sub_7BD04();
  if (v1 <= 0x3F)
  {
    updated = sub_70574(319);
    if (v2 <= 0x3F)
    {
      updated = swift_updateClassMetadata2();
      if (!updated)
      {
        return 0;
      }
    }
  }

  return updated;
}

unint64_t sub_70574(uint64_t a1)
{
  v5 = qword_925F0;
  if (!qword_925F0)
  {
    v4 = sub_7BE34();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_925F0);
      return v2;
    }
  }

  return v5;
}

uint64_t type metadata accessor for FontAssetFamily(uint64_t a1)
{
  v2 = qword_92870;
  if (!qword_92870)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t sub_70698(uint64_t a1)
{
  updated = swift_updateClassMetadata2();
  if (!updated)
  {
    return 0;
  }

  return updated;
}

uint64_t type metadata accessor for FontProviderFamily(uint64_t a1)
{
  v2 = qword_92B00;
  if (!qword_92B00)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t sub_70794(uint64_t a1)
{
  updated = swift_updateClassMetadata2();
  if (!updated)
  {
    return 0;
  }

  return updated;
}

unint64_t sub_70828()
{
  v2 = qword_92D68;
  if (!qword_92D68)
  {
    type metadata accessor for Family(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_92D68);
    return WitnessTable;
  }

  return v2;
}

id sub_708C0(uint64_t a1, uint64_t a2, char a3)
{
  v6 = sub_7CF04();
  sub_1A88(&qword_92D70, &qword_81178);
  sub_71B6C();
  sub_7D734();
  v8 = [v5 initWithBundleIdentifier:v6 allowPlaceholder:a3 & 1 error:v9];
  0;

  if (v8)
  {

    return v8;
  }

  else
  {
    sub_7BC04();

    swift_willThrow();

    return v4;
  }
}

uint64_t sub_70AB4(uint64_t (*a1)(uint64_t *, uint64_t), uint64_t a2, unsigned int a3)
{
  if (a3 < 0x80uLL)
  {
    if (a3 > 0xFF)
    {
      goto LABEL_12;
    }

    v6 = (a3 + 1);
  }

  else
  {
    v8 = (a3 & 0x3F) << 8;
    if (a3 >> 6 < 0x20uLL)
    {
      v6 = (v8 | (a3 >> 6)) + 33217;
    }

    else
    {
      v7 = (v8 | (a3 >> 6) & 0x3F) << 8;
      if (a3 >> 12 < 0x10uLL)
      {
        v6 = (v7 | (a3 >> 12)) + 8487393;
      }

      else
      {
        v6 = ((a3 >> 18) | ((v7 | (a3 >> 12) & 0x3F) << 8)) - 2122219023;
      }
    }
  }

  v5 = 4 - (__clz(v6) >> 3);
  v3.value._rawValue = &v10;
  v10 = (v6 - 0x101010101010101) & ((1 << ((8 * v5) & 0x3F)) - 1);
  sub_7D2D4(v3);
  if ((v5 & 0x8000000000000000) == 0)
  {
    return a1(&v10, v5);
  }

  sub_7D624();
  __break(1u);
LABEL_12:
  result = sub_7D5E4();
  __break(1u);
  return result;
}

uint64_t sub_70DE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, unint64_t a10)
{
  v27 = a8;
  v28 = a7;
  v29 = a6;
  v30 = a4;
  v31 = a3;
  v32 = a2;
  v33 = a1;
  v34 = a9;
  v35 = a10;
  v36 = 0;
  v38 = a6;
  v39 = a7;
  v40 = a1;
  v41 = a2;
  v42 = a8;
  v43 = a10;
  if (a5)
  {
    if (!HIDWORD(v31))
    {
      v26 = v31;
      if ((v31 >> 11 < 0x1B || v26 >> 13 > 6) && HIWORD(v26) <= 0x10u)
      {
        v10 = v36;
        v24 = v17;
        __chkstk_darwin(v17);
        v15 = sub_71B24;
        v16 = &v37;
        sub_70AB4(sub_71B40, &v13, v11);
        return v10;
      }

      LODWORD(v15) = 0;
      v14 = 148;
      LOBYTE(v13) = 2;
      sub_7D5E4();
      __break(1u);
    }

    LODWORD(v15) = 0;
    v14 = 3053;
    LOBYTE(v13) = 2;
    sub_7D5E4();
    __break(1u);
  }

  if (v31)
  {
    v23 = v31;
    if ((v30 & 0x8000000000000000) == 0)
    {
      if (v29)
      {
        v22 = v29;
      }

      else
      {
        LODWORD(v15) = 0;
        v14 = 268;
        LOBYTE(v13) = 2;
        sub_7D5E4();
        __break(1u);
      }

      v21 = v22;
      if (v28 >= 0xFFFFFFFF80000000)
      {
        if (v28 <= 0x7FFFFFFF)
        {
          v20 = v28;
          if (v33)
          {
            v19 = v33;
          }

          else
          {
            LODWORD(v15) = 0;
            v14 = 269;
            LOBYTE(v13) = 2;
            sub_7D5E4();
            __break(1u);
          }

          v18 = v19;
          if (v32 >= 0xFFFFFFFF80000000)
          {
            if (v32 <= 0x7FFFFFFF)
            {
              v17[5] = v32;
              if (v30 >= 0xFFFFFFFF80000000)
              {
                if (v30 <= 0x7FFFFFFF)
                {
                  v17[4] = v30;
                  if (!HIDWORD(v27))
                  {
                    v17[3] = v27;
                    if (!HIDWORD(v35))
                    {
                      LODWORD(v15) = 0;
                      _swift_stdlib_reportUnimplementedInitializerInFile();
                      return v36;
                    }

                    LODWORD(v15) = 0;
                    v14 = 3053;
                    LOBYTE(v13) = 2;
                    sub_7D5E4();
                    __break(1u);
                  }

                  LODWORD(v15) = 0;
                  v14 = 3053;
                  LOBYTE(v13) = 2;
                  sub_7D5E4();
                  __break(1u);
                }

                LODWORD(v15) = 0;
                v14 = 3268;
                LOBYTE(v13) = 2;
                sub_7D5E4();
                __break(1u);
              }

              LODWORD(v15) = 0;
              v14 = 3262;
              LOBYTE(v13) = 2;
              sub_7D5E4();
              __break(1u);
            }

            LODWORD(v15) = 0;
            v14 = 3268;
            LOBYTE(v13) = 2;
            sub_7D5E4();
            __break(1u);
          }

          LODWORD(v15) = 0;
          v14 = 3262;
          LOBYTE(v13) = 2;
          sub_7D5E4();
          __break(1u);
        }

        LODWORD(v15) = 0;
        v14 = 3268;
        LOBYTE(v13) = 2;
        sub_7D5E4();
        __break(1u);
      }

      LODWORD(v15) = 0;
      v14 = 3262;
      LOBYTE(v13) = 2;
      sub_7D5E4();
      __break(1u);
    }

    LODWORD(v15) = 0;
    v14 = 1410;
    LOBYTE(v13) = 2;
    sub_7D624();
    __break(1u);
  }

  result = sub_7D5E4();
  __break(1u);
  return result;
}

uint64_t sub_71610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, unint64_t a8)
{
  if (!a3)
  {
    sub_7D5E4();
    __break(1u);
  }

  if (a4 >= 0xFFFFFFFF80000000)
  {
    if (a4 <= 0x7FFFFFFF)
    {
      if (!a5)
      {
        sub_7D5E4();
        __break(1u);
      }

      if (a6 >= 0xFFFFFFFF80000000)
      {
        if (a6 <= 0x7FFFFFFF)
        {
          if (!a1)
          {
            sub_7D5E4();
            __break(1u);
          }

          if (a2 >= 0xFFFFFFFF80000000)
          {
            if (a2 <= 0x7FFFFFFF)
            {
              if (a7 <= 0xFFFFFFFF)
              {
                if (a8 <= 0xFFFFFFFF)
                {
                  return _swift_stdlib_reportUnimplementedInitializerInFile();
                }

                sub_7D5E4();
                __break(1u);
              }

              sub_7D5E4();
              __break(1u);
            }

            sub_7D5E4();
            __break(1u);
          }

          sub_7D5E4();
          __break(1u);
        }

        sub_7D5E4();
        __break(1u);
      }

      sub_7D5E4();
      __break(1u);
    }

    sub_7D5E4();
    __break(1u);
  }

  result = sub_7D5E4();
  __break(1u);
  return result;
}

unint64_t sub_71B6C()
{
  v2 = qword_92D78;
  if (!qword_92D78)
  {
    sub_B24C(&qword_92D70, &qword_81178);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_92D78);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_71BF4(uint64_t a1)
{
  v5 = qword_92D80;
  if (!qword_92D80)
  {
    v4 = sub_7BB64();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_92D80);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_71C80()
{
  v2 = qword_92D90;
  if (!qword_92D90)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_92D90);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_71CF8()
{
  v2 = qword_92D98;
  if (!qword_92D98)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_92D98);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_71D5C()
{
  v2 = qword_92DA0;
  if (!qword_92DA0)
  {
    sub_71BF4(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_92DA0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_71E20(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8)
{
  v414 = a1;
  v413 = a2;
  v412 = a3;
  v407 = a4;
  v408 = a5;
  v409 = a6;
  v410 = a7;
  v411 = a8;
  v356 = sub_74B70;
  v357 = sub_76988;
  v358 = sub_77250;
  v359 = sub_76988;
  v360 = sub_76914;
  v361 = sub_76914;
  v362 = sub_769D4;
  v363 = sub_76914;
  v364 = sub_76914;
  v365 = sub_769D4;
  v366 = sub_74B70;
  v367 = sub_76988;
  v368 = sub_74B70;
  v369 = sub_76988;
  v370 = sub_76914;
  v371 = sub_76914;
  v372 = sub_769D4;
  v373 = sub_76914;
  v374 = sub_76914;
  v375 = sub_769D4;
  v376 = sub_74B70;
  v377 = sub_76988;
  v378 = sub_74B70;
  v379 = sub_76988;
  v380 = sub_76914;
  v381 = sub_76914;
  v382 = sub_769D4;
  v383 = sub_76914;
  v384 = sub_76914;
  v385 = sub_769D4;
  v386 = sub_74B70;
  v387 = sub_76988;
  v388 = sub_74B70;
  v389 = sub_76988;
  v390 = sub_76914;
  v391 = sub_76914;
  v392 = sub_769D4;
  v393 = sub_76914;
  v394 = sub_76914;
  v395 = sub_769D4;
  v396 = sub_74B70;
  v397 = sub_76988;
  v398 = sub_74B70;
  v399 = sub_76988;
  v400 = sub_76914;
  v401 = sub_76914;
  v402 = sub_769D4;
  v403 = sub_76914;
  v404 = sub_76914;
  v405 = sub_769D4;
  v471 = 0;
  v472 = 0;
  v470 = 0;
  v469 = 0;
  v467 = 0;
  v468 = 0;
  v466 = 0;
  v465 = 0;
  v463 = 0;
  v464 = 0;
  v460 = 0;
  v461 = 0;
  v406 = 0;
  v433 = 0;
  v415 = sub_7BDB4();
  v416 = *(v415 - 8);
  v417 = v415 - 8;
  v418 = (*(v416 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v414);
  v419 = v177 - v418;
  v420 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v9);
  v421 = v177 - v420;
  v422 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v11);
  v423 = v177 - v422;
  v424 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v13);
  v425 = v177 - v424;
  v426 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v15);
  v427 = v177 - v426;
  v471 = v16;
  v472 = v17;
  v470 = v18 & 1;
  v469 = v19 & 1;
  v467 = v20;
  v468 = v21;
  v466 = v22;
  v465 = v23;
  if (v18)
  {
    if (*sub_7495C())
    {
      v333 = [objc_opt_self() callStackSymbols];
      v433 = sub_7D0A4();

      v334 = sub_1A88(&qword_90CB8, &qword_80B00);
      sub_77148();
      sub_7D374();
      v24 = v427;

      v25 = sub_74860();
      (*(v416 + 16))(v24, v25, v415);

      v341 = 32;
      v342 = 7;
      v26 = swift_allocObject();
      v27 = v413;
      v336 = v26;
      *(v26 + 16) = v414;
      *(v26 + 24) = v27;
      v335 = v433;

      v343 = swift_allocObject();
      *(v343 + 16) = v335;
      v354 = sub_7BD94();
      v355 = sub_7D394();
      v339 = 17;
      v345 = swift_allocObject();
      v338 = 34;
      *(v345 + 16) = 34;
      v346 = swift_allocObject();
      v340 = 8;
      *(v346 + 16) = 8;
      v28 = swift_allocObject();
      v29 = v336;
      v337 = v28;
      *(v28 + 16) = v356;
      *(v28 + 24) = v29;
      v30 = swift_allocObject();
      v31 = v337;
      v347 = v30;
      *(v30 + 16) = v357;
      *(v30 + 24) = v31;
      v348 = swift_allocObject();
      *(v348 + 16) = v338;
      v349 = swift_allocObject();
      *(v349 + 16) = v340;
      v32 = swift_allocObject();
      v33 = v343;
      v344 = v32;
      *(v32 + 16) = v358;
      *(v32 + 24) = v33;
      v34 = swift_allocObject();
      v35 = v344;
      v351 = v34;
      *(v34 + 16) = v359;
      *(v34 + 24) = v35;
      v353 = sub_1A88(&qword_92DD0, &qword_81188);
      v350 = sub_7D714();
      v352 = v36;

      v37 = v345;
      v38 = v352;
      *v352 = v360;
      v38[1] = v37;

      v39 = v346;
      v40 = v352;
      v352[2] = v361;
      v40[3] = v39;

      v41 = v347;
      v42 = v352;
      v352[4] = v362;
      v42[5] = v41;

      v43 = v348;
      v44 = v352;
      v352[6] = v363;
      v44[7] = v43;

      v45 = v349;
      v46 = v352;
      v352[8] = v364;
      v46[9] = v45;

      v47 = v350;
      v48 = v351;
      v49 = v352;
      v50 = v353;
      v352[10] = v365;
      v49[11] = v48;
      sub_71DDC(v47, v50);

      if (os_log_type_enabled(v354, v355))
      {
        v51 = v406;
        v325 = sub_7D414();
        v324 = sub_1A88(&qword_92DD8, &qword_81190);
        v326 = sub_74BBC(0, v324, v324);
        v327 = sub_74BBC(2, &type metadata for Any + 8, &type metadata for Any + 8);
        v329 = v432;
        v432[0] = v325;
        v330 = &v431;
        v431 = v326;
        v331 = &v430;
        v430 = v327;
        v328 = 2;
        sub_74C10(2, v432);
        sub_74C10(v328, v329);
        v428 = v360;
        v429 = v345;
        sub_74C24(&v428, v329, v330, v331);
        v332 = v51;
        if (v51)
        {

          __break(1u);
        }

        else
        {
          v428 = v361;
          v429 = v346;
          sub_74C24(&v428, v432, &v431, &v430);
          v322 = 0;
          v428 = v362;
          v429 = v347;
          sub_74C24(&v428, v432, &v431, &v430);
          v321 = 0;
          v428 = v363;
          v429 = v348;
          sub_74C24(&v428, v432, &v431, &v430);
          v320 = 0;
          v428 = v364;
          v429 = v349;
          sub_74C24(&v428, v432, &v431, &v430);
          v319 = 0;
          v428 = v365;
          v429 = v351;
          sub_74C24(&v428, v432, &v431, &v430);
          v318 = 0;
          _os_log_impl(&dword_0, v354, v355, "[%{public}s] -- stack --\n%{public}s", v325, 0x16u);
          sub_74C70(v326, 0, v324);
          sub_74C70(v327, 2, &type metadata for Any + 8);
          sub_7D3F4();

          v323 = v318;
        }
      }

      else
      {
        v52 = v406;

        v323 = v52;
      }

      v316 = v323;

      (*(v416 + 8))(v427, v415);
      sub_B2C0(&v433);
      v317 = v316;
    }

    else
    {
      v317 = v406;
    }
  }

  else
  {
    v317 = v406;
  }

  v315 = v317;
  if (*sub_7495C())
  {

    v313 = v414;
    v314 = v413;
  }

  else
  {
    v313 = sub_7CF84("-", 1uLL, 1);
    v314 = v53;
  }

  v300 = v314;
  v301 = v313;
  v463 = v313;
  v464 = v314;

  v303 = &v462;
  v462 = v411;
  v302 = sub_1A88(&qword_90CB8, &qword_80B00);
  sub_64900();
  v304 = &type metadata for String;
  v306 = sub_7D134();
  sub_1A88(&qword_91DA8, &qword_80680);
  v305 = sub_7D5C4();
  v307 = sub_7CF24();
  v308 = v54;

  v460 = v307;
  v461 = v308;
  v55 = sub_7D3A4();
  v311 = &v459;
  v459 = v55;
  v309 = &v458;
  v458 = v410;
  v310 = type metadata accessor for OSLogType(0);
  v312 = sub_749BC();
  if (sub_7CE84())
  {
    v56 = v425;
    v57 = sub_74860();
    (*(v416 + 16))(v56, v57, v415);

    v285 = 32;
    v286 = 7;
    v58 = swift_allocObject();
    v59 = v300;
    v281 = v58;
    *(v58 + 16) = v301;
    *(v58 + 24) = v59;

    v60 = swift_allocObject();
    v61 = v308;
    v287 = v60;
    *(v60 + 16) = v307;
    *(v60 + 24) = v61;
    v298 = sub_7BD94();
    v299 = sub_7D3A4();
    v283 = 17;
    v289 = swift_allocObject();
    *(v289 + 16) = 34;
    v290 = swift_allocObject();
    v284 = 8;
    *(v290 + 16) = 8;
    v62 = swift_allocObject();
    v63 = v281;
    v282 = v62;
    *(v62 + 16) = v396;
    *(v62 + 24) = v63;
    v64 = swift_allocObject();
    v65 = v282;
    v291 = v64;
    *(v64 + 16) = v397;
    *(v64 + 24) = v65;
    v292 = swift_allocObject();
    *(v292 + 16) = 33;
    v293 = swift_allocObject();
    *(v293 + 16) = v284;
    v66 = swift_allocObject();
    v67 = v287;
    v288 = v66;
    *(v66 + 16) = v398;
    *(v66 + 24) = v67;
    v68 = swift_allocObject();
    v69 = v288;
    v295 = v68;
    *(v68 + 16) = v399;
    *(v68 + 24) = v69;
    v297 = sub_1A88(&qword_92DD0, &qword_81188);
    v294 = sub_7D714();
    v296 = v70;

    v71 = v289;
    v72 = v296;
    *v296 = v400;
    v72[1] = v71;

    v73 = v290;
    v74 = v296;
    v296[2] = v401;
    v74[3] = v73;

    v75 = v291;
    v76 = v296;
    v296[4] = v402;
    v76[5] = v75;

    v77 = v292;
    v78 = v296;
    v296[6] = v403;
    v78[7] = v77;

    v79 = v293;
    v80 = v296;
    v296[8] = v404;
    v80[9] = v79;

    v81 = v294;
    v82 = v295;
    v83 = v296;
    v84 = v297;
    v296[10] = v405;
    v83[11] = v82;
    sub_71DDC(v81, v84);

    if (os_log_type_enabled(v298, v299))
    {
      v85 = v315;
      v274 = sub_7D414();
      v273 = sub_1A88(&qword_92DD8, &qword_81190);
      v275 = sub_74BBC(0, v273, v273);
      v276 = sub_74BBC(2, &type metadata for Any + 8, &type metadata for Any + 8);
      v277 = &v438;
      v438 = v274;
      v278 = &v437;
      v437 = v275;
      v279 = &v436;
      v436 = v276;
      sub_74C10(3, &v438);
      sub_74C10(2, v277);
      v434 = v400;
      v435 = v289;
      sub_74C24(&v434, v277, v278, v279);
      v280 = v85;
      if (v85)
      {

        __break(1u);
      }

      else
      {
        v434 = v401;
        v435 = v290;
        sub_74C24(&v434, &v438, &v437, &v436);
        v272 = 0;
        v434 = v402;
        v435 = v291;
        sub_74C24(&v434, &v438, &v437, &v436);
        v271 = 0;
        v434 = v403;
        v435 = v292;
        sub_74C24(&v434, &v438, &v437, &v436);
        v270 = 0;
        v434 = v404;
        v435 = v293;
        sub_74C24(&v434, &v438, &v437, &v436);
        v269 = 0;
        v434 = v405;
        v435 = v295;
        sub_74C24(&v434, &v438, &v437, &v436);
        _os_log_impl(&dword_0, v298, v299, "[%{public}s] %{private}s", v274, 0x16u);
        sub_74C70(v275, 0, v273);
        sub_74C70(v276, 2, &type metadata for Any + 8);
        sub_7D3F4();
      }
    }

    else
    {
    }

    (*(v416 + 8))(v425, v415);
  }

  else
  {
    v457 = sub_7D3B4();
    v456 = v410;
    if (sub_7CE84())
    {
      v86 = v423;
      v87 = sub_74860();
      (*(v416 + 16))(v86, v87, v415);

      v254 = 32;
      v255 = 7;
      v88 = swift_allocObject();
      v89 = v300;
      v250 = v88;
      *(v88 + 16) = v301;
      *(v88 + 24) = v89;

      v90 = swift_allocObject();
      v91 = v308;
      v256 = v90;
      *(v90 + 16) = v307;
      *(v90 + 24) = v91;
      v267 = sub_7BD94();
      v268 = sub_7D3B4();
      v252 = 17;
      v258 = swift_allocObject();
      *(v258 + 16) = 34;
      v259 = swift_allocObject();
      v253 = 8;
      *(v259 + 16) = 8;
      v92 = swift_allocObject();
      v93 = v250;
      v251 = v92;
      *(v92 + 16) = v386;
      *(v92 + 24) = v93;
      v94 = swift_allocObject();
      v95 = v251;
      v260 = v94;
      *(v94 + 16) = v387;
      *(v94 + 24) = v95;
      v261 = swift_allocObject();
      *(v261 + 16) = 33;
      v262 = swift_allocObject();
      *(v262 + 16) = v253;
      v96 = swift_allocObject();
      v97 = v256;
      v257 = v96;
      *(v96 + 16) = v388;
      *(v96 + 24) = v97;
      v98 = swift_allocObject();
      v99 = v257;
      v264 = v98;
      *(v98 + 16) = v389;
      *(v98 + 24) = v99;
      v266 = sub_1A88(&qword_92DD0, &qword_81188);
      v263 = sub_7D714();
      v265 = v100;

      v101 = v258;
      v102 = v265;
      *v265 = v390;
      v102[1] = v101;

      v103 = v259;
      v104 = v265;
      v265[2] = v391;
      v104[3] = v103;

      v105 = v260;
      v106 = v265;
      v265[4] = v392;
      v106[5] = v105;

      v107 = v261;
      v108 = v265;
      v265[6] = v393;
      v108[7] = v107;

      v109 = v262;
      v110 = v265;
      v265[8] = v394;
      v110[9] = v109;

      v111 = v263;
      v112 = v264;
      v113 = v265;
      v114 = v266;
      v265[10] = v395;
      v113[11] = v112;
      sub_71DDC(v111, v114);

      if (os_log_type_enabled(v267, v268))
      {
        v115 = v315;
        v243 = sub_7D414();
        v242 = sub_1A88(&qword_92DD8, &qword_81190);
        v244 = sub_74BBC(0, v242, v242);
        v245 = sub_74BBC(2, &type metadata for Any + 8, &type metadata for Any + 8);
        v246 = &v443;
        v443 = v243;
        v247 = &v442;
        v442 = v244;
        v248 = &v441;
        v441 = v245;
        sub_74C10(3, &v443);
        sub_74C10(2, v246);
        v439 = v390;
        v440 = v258;
        sub_74C24(&v439, v246, v247, v248);
        v249 = v115;
        if (v115)
        {

          __break(1u);
        }

        else
        {
          v439 = v391;
          v440 = v259;
          sub_74C24(&v439, &v443, &v442, &v441);
          v241 = 0;
          v439 = v392;
          v440 = v260;
          sub_74C24(&v439, &v443, &v442, &v441);
          v240 = 0;
          v439 = v393;
          v440 = v261;
          sub_74C24(&v439, &v443, &v442, &v441);
          v239 = 0;
          v439 = v394;
          v440 = v262;
          sub_74C24(&v439, &v443, &v442, &v441);
          v238 = 0;
          v439 = v395;
          v440 = v264;
          sub_74C24(&v439, &v443, &v442, &v441);
          _os_log_impl(&dword_0, v267, v268, "[%{public}s] %{private}s", v243, 0x16u);
          sub_74C70(v244, 0, v242);
          sub_74C70(v245, 2, &type metadata for Any + 8);
          sub_7D3F4();
        }
      }

      else
      {
      }

      (*(v416 + 8))(v423, v415);
    }

    else
    {
      v455 = sub_7D384();
      v454 = v410;
      if (sub_7CE84())
      {
        if (*sub_7495C())
        {
          v237 = 1;
        }

        else
        {
          v237 = v407;
        }

        if (v237)
        {
          v116 = v421;
          v117 = sub_74860();
          (*(v416 + 16))(v116, v117, v415);

          v222 = 32;
          v223 = 7;
          v118 = swift_allocObject();
          v119 = v300;
          v218 = v118;
          *(v118 + 16) = v301;
          *(v118 + 24) = v119;

          v120 = swift_allocObject();
          v121 = v308;
          v224 = v120;
          *(v120 + 16) = v307;
          *(v120 + 24) = v121;
          v235 = sub_7BD94();
          v236 = sub_7D384();
          v220 = 17;
          v226 = swift_allocObject();
          *(v226 + 16) = 34;
          v227 = swift_allocObject();
          v221 = 8;
          *(v227 + 16) = 8;
          v122 = swift_allocObject();
          v123 = v218;
          v219 = v122;
          *(v122 + 16) = v376;
          *(v122 + 24) = v123;
          v124 = swift_allocObject();
          v125 = v219;
          v228 = v124;
          *(v124 + 16) = v377;
          *(v124 + 24) = v125;
          v229 = swift_allocObject();
          *(v229 + 16) = 33;
          v230 = swift_allocObject();
          *(v230 + 16) = v221;
          v126 = swift_allocObject();
          v127 = v224;
          v225 = v126;
          *(v126 + 16) = v378;
          *(v126 + 24) = v127;
          v128 = swift_allocObject();
          v129 = v225;
          v232 = v128;
          *(v128 + 16) = v379;
          *(v128 + 24) = v129;
          v234 = sub_1A88(&qword_92DD0, &qword_81188);
          v231 = sub_7D714();
          v233 = v130;

          v131 = v226;
          v132 = v233;
          *v233 = v380;
          v132[1] = v131;

          v133 = v227;
          v134 = v233;
          v233[2] = v381;
          v134[3] = v133;

          v135 = v228;
          v136 = v233;
          v233[4] = v382;
          v136[5] = v135;

          v137 = v229;
          v138 = v233;
          v233[6] = v383;
          v138[7] = v137;

          v139 = v230;
          v140 = v233;
          v233[8] = v384;
          v140[9] = v139;

          v141 = v231;
          v142 = v232;
          v143 = v233;
          v144 = v234;
          v233[10] = v385;
          v143[11] = v142;
          sub_71DDC(v141, v144);

          if (os_log_type_enabled(v235, v236))
          {
            v145 = v315;
            v211 = sub_7D414();
            v210 = sub_1A88(&qword_92DD8, &qword_81190);
            v212 = sub_74BBC(0, v210, v210);
            v213 = sub_74BBC(2, &type metadata for Any + 8, &type metadata for Any + 8);
            v214 = &v448;
            v448 = v211;
            v215 = &v447;
            v447 = v212;
            v216 = &v446;
            v446 = v213;
            sub_74C10(3, &v448);
            sub_74C10(2, v214);
            v444 = v380;
            v445 = v226;
            sub_74C24(&v444, v214, v215, v216);
            v217 = v145;
            if (v145)
            {

              __break(1u);
            }

            else
            {
              v444 = v381;
              v445 = v227;
              sub_74C24(&v444, &v448, &v447, &v446);
              v209 = 0;
              v444 = v382;
              v445 = v228;
              sub_74C24(&v444, &v448, &v447, &v446);
              v208 = 0;
              v444 = v383;
              v445 = v229;
              sub_74C24(&v444, &v448, &v447, &v446);
              v207 = 0;
              v444 = v384;
              v445 = v230;
              sub_74C24(&v444, &v448, &v447, &v446);
              v206 = 0;
              v444 = v385;
              v445 = v232;
              sub_74C24(&v444, &v448, &v447, &v446);
              _os_log_impl(&dword_0, v235, v236, "[%{public}s] %{private}s", v211, 0x16u);
              sub_74C70(v212, 0, v210);
              sub_74C70(v213, 2, &type metadata for Any + 8);
              sub_7D3F4();
            }
          }

          else
          {
          }

          (*(v416 + 8))(v421, v415);
        }
      }

      else
      {
        if (*sub_7495C())
        {
          v205 = 1;
        }

        else
        {
          v205 = v407;
        }

        if (v205)
        {
          v146 = v419;
          v147 = sub_74860();
          (*(v416 + 16))(v146, v147, v415);

          v190 = 32;
          v191 = 7;
          v148 = swift_allocObject();
          v149 = v300;
          v186 = v148;
          *(v148 + 16) = v301;
          *(v148 + 24) = v149;

          v150 = swift_allocObject();
          v151 = v308;
          v192 = v150;
          *(v150 + 16) = v307;
          *(v150 + 24) = v151;
          v203 = sub_7BD94();
          v204 = sub_7D394();
          v188 = 17;
          v194 = swift_allocObject();
          *(v194 + 16) = 34;
          v195 = swift_allocObject();
          v189 = 8;
          *(v195 + 16) = 8;
          v152 = swift_allocObject();
          v153 = v186;
          v187 = v152;
          *(v152 + 16) = v366;
          *(v152 + 24) = v153;
          v154 = swift_allocObject();
          v155 = v187;
          v196 = v154;
          *(v154 + 16) = v367;
          *(v154 + 24) = v155;
          v197 = swift_allocObject();
          *(v197 + 16) = 33;
          v198 = swift_allocObject();
          *(v198 + 16) = v189;
          v156 = swift_allocObject();
          v157 = v192;
          v193 = v156;
          *(v156 + 16) = v368;
          *(v156 + 24) = v157;
          v158 = swift_allocObject();
          v159 = v193;
          v200 = v158;
          *(v158 + 16) = v369;
          *(v158 + 24) = v159;
          v202 = sub_1A88(&qword_92DD0, &qword_81188);
          v199 = sub_7D714();
          v201 = v160;

          v161 = v194;
          v162 = v201;
          *v201 = v370;
          v162[1] = v161;

          v163 = v195;
          v164 = v201;
          v201[2] = v371;
          v164[3] = v163;

          v165 = v196;
          v166 = v201;
          v201[4] = v372;
          v166[5] = v165;

          v167 = v197;
          v168 = v201;
          v201[6] = v373;
          v168[7] = v167;

          v169 = v198;
          v170 = v201;
          v201[8] = v374;
          v170[9] = v169;

          v171 = v199;
          v172 = v200;
          v173 = v201;
          v174 = v202;
          v201[10] = v375;
          v173[11] = v172;
          sub_71DDC(v171, v174);

          if (os_log_type_enabled(v203, v204))
          {
            v175 = v315;
            v179 = sub_7D414();
            v178 = sub_1A88(&qword_92DD8, &qword_81190);
            v180 = sub_74BBC(0, v178, v178);
            v181 = sub_74BBC(2, &type metadata for Any + 8, &type metadata for Any + 8);
            v182 = &v453;
            v453 = v179;
            v183 = &v452;
            v452 = v180;
            v184 = &v451;
            v451 = v181;
            sub_74C10(3, &v453);
            sub_74C10(2, v182);
            v449 = v370;
            v450 = v194;
            sub_74C24(&v449, v182, v183, v184);
            v185 = v175;
            if (v175)
            {

              __break(1u);
            }

            else
            {
              v449 = v371;
              v450 = v195;
              sub_74C24(&v449, &v453, &v452, &v451);
              v177[4] = 0;
              v449 = v372;
              v450 = v196;
              sub_74C24(&v449, &v453, &v452, &v451);
              v177[3] = 0;
              v449 = v373;
              v450 = v197;
              sub_74C24(&v449, &v453, &v452, &v451);
              v177[2] = 0;
              v449 = v374;
              v450 = v198;
              sub_74C24(&v449, &v453, &v452, &v451);
              v177[1] = 0;
              v449 = v375;
              v450 = v200;
              sub_74C24(&v449, &v453, &v452, &v451);
              _os_log_impl(&dword_0, v203, v204, "[%{public}s] %{private}s", v179, 0x16u);
              sub_74C70(v180, 0, v178);
              sub_74C70(v181, 2, &type metadata for Any + 8);
              sub_7D3F4();
            }
          }

          else
          {
          }

          (*(v416 + 8))(v419, v415);
        }
      }
    }
  }
}

uint64_t sub_747CC()
{
  v1 = sub_7BDB4();
  sub_77460(v1, qword_92DA8);
  sub_77408(v1, qword_92DA8);
  sub_6305C();

  sub_7CF84("events", 6uLL, 1);
  return sub_7BDA4();
}

uint64_t sub_74860()
{
  if (qword_90A78 != -1)
  {
    swift_once();
  }

  v0 = sub_7BDB4();
  return sub_77408(v0, qword_92DA8);
}

uint64_t sub_748CC()
{
  sub_6305C();

  sub_7CF54();

  has_internal_content = os_variant_has_internal_content();
  swift_unknownObjectRelease();

  result = has_internal_content;
  byte_92DC0 = has_internal_content;
  return result;
}

char *sub_7495C()
{
  if (qword_90A80 != -1)
  {
    swift_once();
  }

  return &byte_92DC0;
}

unint64_t sub_749BC()
{
  v2 = qword_92DC8;
  if (!qword_92DC8)
  {
    type metadata accessor for OSLogType(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_92DC8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_74A70(uint64_t a1)
{
  v4[1] = a1;

  v4[0] = a1;
  sub_7CF84("\n", 1uLL, 1);
  sub_1A88(&qword_90CB8, &qword_80B00);
  sub_702CC();
  v3 = sub_7CE44();

  sub_B2C0(v4);
  return v3;
}

uint64_t sub_74BBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    return sub_7D414();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_74C10(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

void sub_74C70(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    sub_7D404();
    sub_7D3F4();
  }
}

void *sub_74D00(void *a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = (a4)(a1, a2);
  sub_74D9C(v4, v5, a3);
  v8 = *a1;

  sub_7D434();
  result = a1;
  *a1 = v8 + 8;
  return result;
}

uint64_t sub_74D9C(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  v14 = sub_74F40(&v17, 0, 0, 1, a1, a2);
  v15 = v3;
  v16 = v4;
  v11 = v17;
  swift_unknownObjectRetain();
  if (v14)
  {
    swift_unknownObjectRelease();

    v12[3] = swift_getObjectType();
    swift_unknownObjectRetain();
    v12[0] = v14;
    v6 = *a3;
    if (*a3)
    {
      sub_13E9C(v12, v6);
      swift_unknownObjectRelease();
      *a3 = v6 + 32;
    }

    else
    {
      swift_unknownObjectRelease();
    }

    sub_B864(v12);
  }

  else
  {
    v13[3] = &type metadata for _StringGuts;
    v13[0] = a1;
    v13[1] = a2;
    v7 = *a3;
    if (*a3)
    {
      sub_13E9C(v13, v7);
      swift_unknownObjectRelease();
      *a3 = v7 + 32;
    }

    else
    {
      swift_unknownObjectRelease();
    }

    sub_B864(v13);
  }

  return v11;
}

void *sub_74F40(void *result, char *a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v19 = result;
  v25 = a6;
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (a2)
      {
        if (!a3)
        {
          __break(1u);
        }

        v18 = a3 - a2;
      }

      else
      {
        v18 = 0;
      }

      v17 = (a6 & 0xF00000000000000uLL) >> 56;
      if (v17 < v18)
      {
        if (a2)
        {
          v16 = a2;
        }

        else
        {
          sub_7D5E4();
          __break(1u);
        }

        v22[0] = a5;
        v22[1] = a6 & (-bswap64(0xFFuLL) - 1);
        sub_752F8(v22, v17, v16);
        sub_7D444();
        *v19 = v16;
        v12 = 0;
        v13 = v17;
        v14 = 1;
        v15 = 0;
        goto LABEL_28;
      }
    }

    goto LABEL_14;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
LABEL_14:
    v6 = sub_75474(a5, a6);
    *v19 = v7;
    v12 = v6;
    v13 = v8;
    v14 = 0;
    v15 = 1;
LABEL_28:
    v22[2] = v12;
    v22[3] = v13;
    v23 = v14 & 1;
    v24 = v15 & 1;
    return v12;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    if ((a6 & 0xFFFFFFFFFFFFFFFLL) != 0xFFFFFFFFFFFFFFE0)
    {
      v11 = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
      goto LABEL_23;
    }

    __break(1u);
  }

  result = sub_7D544();
  if (result)
  {
    v10 = result;
  }

  else
  {
    result = sub_7D5E4();
    __break(1u);
  }

  v11 = v10;
LABEL_23:
  *v19 = v11;
  if (a6 < 0)
  {
    v9 = 0;
LABEL_27:
    v12 = v9;
    v13 = a5 & 0xFFFFFFFFFFFFLL;
    v14 = 0;
    v15 = 0;
    goto LABEL_28;
  }

  if ((a6 & 0xFFFFFFFFFFFFFFFLL) != 0)
  {
    swift_unknownObjectRetain();
    v9 = a6 & 0xFFFFFFFFFFFFFFFLL;
    goto LABEL_27;
  }

  __break(1u);
  return result;
}

char *sub_752F8(char *result, int64_t a2, char *a3)
{
  if (a2 < 0)
  {
LABEL_7:
    result = sub_7D624();
    __break(1u);
    goto LABEL_8;
  }

  if ((a2 * 1) >> 64 == a2 >> 63)
  {
    if (result >= &a3[a2] || a3 >= &result[a2])
    {
      memcpy(a3, result, a2);
      return a3;
    }

    sub_7D624();
    __break(1u);
    goto LABEL_7;
  }

LABEL_8:
  __break(1u);
  return result;
}

void *sub_75474(uint64_t a1, uint64_t a2)
{
  v7 = sub_75530(a1, a2);
  sub_1A88(&qword_92DE8, &qword_81198);
  inited = swift_initStackObject();
  sub_2DE00(inited, 1);
  *v3 = 0;
  sub_2DE4C();
  sub_75D40(v4);

  v8 = sub_760E8(v7);

  result = v8;
  if (!__OFSUB__(v8, 1))
  {
    return v7;
  }

  __break(1u);
  return result;
}

void *sub_75530(uint64_t a1, uint64_t a2)
{
  v17[2] = a2;
  if ((a2 & 0x1000000000000000) != 0)
  {
    v13 = sub_7CFC4();
  }

  else
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v12 = (a2 & 0xF00000000000000uLL) >> 56;
    }

    else
    {
      v12 = a1 & 0xFFFFFFFFFFFFLL;
    }

    v13 = v12;
  }

  if (!v13)
  {
    return sub_76608();
  }

  v10 = sub_76100(v13, 0);

  v11 = (v10 + 4);

  if (v13 < 0)
  {
LABEL_30:
    sub_7D624();
    __break(1u);
    return sub_76608();
  }

  v16[12] = a2;
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v16[0] = a1;
      v16[1] = a2 & (-bswap64(0xFFuLL) - 1);
      if (v13 >= ((a2 & 0xF00000000000000uLL) >> 56))
      {
        sub_76244(v16, (a2 & 0xF00000000000000uLL) >> 56, v11);
        v8 = (a2 & 0xF00000000000000uLL) >> 56;
        goto LABEL_26;
      }

      goto LABEL_29;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      if ((a2 & 0xFFFFFFFFFFFFFFFLL) != 0xFFFFFFFFFFFFFFE0)
      {
        v6 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v7 = a1 & 0xFFFFFFFFFFFFLL;
        goto LABEL_22;
      }

      __break(1u);
    }

    v6 = sub_7D544();
    v7 = v3;
LABEL_22:
    if (v13 >= v7)
    {
      if (!v6)
      {
        __break(1u);
      }

      sub_76244(v6, v7, v11);
      v8 = v7;
      goto LABEL_26;
    }

    goto LABEL_29;
  }

  v9 = sub_7D514();
  if (v2)
  {
LABEL_29:
    sub_7D5E4();
    __break(1u);
    goto LABEL_30;
  }

  v8 = v9;
LABEL_26:
  v16[11] = 0xE000000000000000;

  v17[0] = 0;
  v17[1] = 0xE000000000000000;
  v16[10] = 0xE000000000000000;
  if (v8 != v13)
  {
    sub_7D5E4();
    __break(1u);
  }

  sub_1F58(v17);
  return v10;
}

void sub_75D40(uint64_t a1)
{
  v18 = sub_760E8(a1);
  v2 = sub_760E8(*v1);
  v19 = v2 + v18;
  if (__OFADD__(v2, v18))
  {
    goto LABEL_31;
  }

  v14 = *v17;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v17 = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0 || v19 > *(*v17 + 24) >> 1)
  {
    if (*(*v17 + 16) < v19)
    {
      v13 = v19;
    }

    else
    {
      v13 = *(*v17 + 16);
    }

    v12 = *v17;

    *v17 = sub_76638(isUniquelyReferenced_nonNull_native, v13, 1, v12);
  }

  v4 = *(*v17 + 16);
  v10 = (*v17 + 32 + v4);
  v5 = *(*v17 + 24) >> 1;
  v11 = v5 - v4;
  if (__OFSUB__(v5, v4))
  {
    goto LABEL_32;
  }

  if (v11 < 0)
  {
LABEL_30:
    sub_7D624();
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!sub_767A4(a1))
  {
LABEL_21:

    if (v18 <= 0)
    {
      goto LABEL_28;
    }

    sub_7D5E4();
    __break(1u);
    goto LABEL_30;
  }

  if (v11 < v18)
  {
    sub_7D5E4();
    __break(1u);
    goto LABEL_21;
  }

  sub_76244((a1 + 32), v18, v10);

  swift_unknownObjectRelease();
  if (v18 <= 0)
  {
    goto LABEL_28;
  }

  v7 = *(*v17 + 16);
  v9 = v7 + v18;
  if (!__OFADD__(v7, v18))
  {
    *(*v17 + 16) = v9;
LABEL_28:
    sub_2DF1C();
    return;
  }

LABEL_33:
  __break(1u);
}

void *sub_76100(uint64_t a1, uint64_t a2)
{
  if (a2 < a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = a2;
  }

  if (v6)
  {
    sub_1A88(&qword_92DE8, &qword_81198);
    v5 = swift_allocObject();

    if (sub_2DE80())
    {
      v3 = sub_774FC(v5) - 32;
      v5[2] = a1;
      v5[3] = 2 * v3;
    }

    else
    {
      v5[2] = a1;
      v5[3] = 2 * v6;
    }

    return v5;
  }

  else
  {

    return &_swiftEmptyArrayStorage;
  }
}

void *sub_76244(char *a1, size_t a2, char *a3)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a1 >= &a3[a2] || a3 >= &a1[a2])
    {
      return memcpy(a3, a1, a2);
    }

    sub_7D624();
    __break(1u);
  }

  result = sub_7D624();
  __break(1u);
  return result;
}

unint64_t sub_76394(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = a1;
  if ((a3 & 0x1000000000000000) != 0 && (a2 & 0x800000000000000) == 0)
  {
    v10 = a1 >> 16;
    if ((a3 & 0x1000000000000000) != 0)
    {
      v9 = sub_7CFE4();
LABEL_11:
      if (v11 >> 14)
      {
        v7 = ((v9 >> 16) + (v11 >> 14)) << 16;
      }

      else
      {
        v7 = v9 & 0xFFFFFFFFFFFFFFFCLL | v11 & 3;
      }

      return v7 | 8;
    }

    if ((v10 & 0x8000000000000000) == 0)
    {
      v8 = (a3 & 0x2000000000000000) != 0 ? (a3 & 0xF00000000000000uLL) >> 56 : a2 & 0xFFFFFFFFFFFFLL;
      if (v8 >= v10)
      {
        v9 = (v10 << 16) | 4;
        goto LABEL_11;
      }
    }

    sub_7D5E4();
    __break(1u);
  }

  v5 = sub_7D004();
  if (v11 >> 14)
  {
    v4 = ((v5 >> 16) + (v11 >> 14)) << 16;
  }

  else
  {
    v4 = v5 & 0xFFFFFFFFFFFFFFFCLL | v11 & 3;
  }

  return v4 | 4;
}

char *sub_76638(char *result, uint64_t a2, char a3, uint64_t a4)
{
  v7 = result;
  v9 = *(a4 + 24) >> 1;
  if (a3)
  {
    if (v9 < a2)
    {
      if ((v9 * 2) >> 64 != (2 * v9) >> 63)
      {
        __break(1u);
        return result;
      }

      if (2 * v9 < a2)
      {
        v6 = a2;
      }

      else
      {
        v6 = 2 * v9;
      }
    }

    else
    {
      v6 = *(a4 + 24) >> 1;
    }
  }

  else
  {
    v6 = a2;
  }

  v4 = *(a4 + 16);
  v5 = sub_76100(v4, v6);
  if (v7)
  {
    sub_767AC((a4 + 32), v4, v5 + 32);

    *(a4 + 16) = 0;
  }

  else
  {

    sub_76244((a4 + 32), v4, v5 + 32);
    swift_unknownObjectRelease();
  }

  return v5;
}

char *sub_767AC(char *result, size_t a2, char *a3)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    result = sub_7D624();
    __break(1u);
  }

  else if (a3 < result || a3 >= &result[a2] || a3 != result)
  {
    return memmove(a3, result, a2);
  }

  return result;
}

_BYTE **sub_768D4(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

unint64_t sub_77148()
{
  v2 = qword_92DE0;
  if (!qword_92DE0)
  {
    sub_B24C(&qword_90CB8, &qword_80B00);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_92DE0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_77408(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    return *a2;
  }

  return v3;
}

uint64_t *sub_77460(uint64_t a1, uint64_t *a2)
{
  v5 = a2;
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v2 = swift_slowAlloc();
    *a2 = v2;
    return v2;
  }

  return v5;
}

uint64_t sub_775C4@<X0>(uint64_t a1@<X8>)
{
  v17 = a1;
  v7 = 0;
  v6 = sub_778A8;
  v8 = &unk_811B0;
  v14 = &opaque type descriptor for <<opaque return type of SettingsExperienceContent.onSettingsExperienceOpenURL(perform:)>>;
  v26 = 0;
  v12 = sub_1A88(&qword_92DF0, &qword_811A0);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v3 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v12);
  v11 = &v3 - v3;
  v21 = sub_1A88(&qword_92DF8, &qword_811A8);
  v15 = *(v21 - 8);
  v16 = v21 - 8;
  v4 = (*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v21);
  v19 = &v3 - v4;
  v5 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v3 - v4);
  v20 = &v3 - v5;
  v26 = &v3 - v5;
  sub_77A1C();
  sub_7CD74();
  v13 = sub_78AD4();
  sub_7CD34();
  (*(v9 + 8))(v11, v12);
  v24 = v12;
  v25 = v13;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1991C(v19, v21, v20);
  v23 = *(v15 + 8);
  v22 = v15 + 8;
  v23(v19, v21);
  (*(v15 + 16))(v19, v20, v21);
  sub_1991C(v19, v21, v17);
  v23(v19, v21);
  return (v23)(v20, v21);
}

uint64_t sub_778A8@<X0>(uint64_t a1@<X8>)
{
  v12 = 0;
  v13 = 0;
  v14 = 0;
  sub_7D184();
  sub_7D174();
  sub_7D154();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10[0] = sub_3F110();
  v10[1] = v1;
  v11 = v2 & 1;
  sub_77A1C();
  sub_1991C(v10, &unk_8EFB8, &v12);
  sub_3F570(v10);
  v4 = v12;
  v5 = v13;
  v6 = v14;
  sub_3AF28();
  v8[0] = v4;
  v8[1] = v5;
  v9 = v6 & 1;
  sub_1991C(v8, &unk_8EFB8, a1);
  sub_3F570(v8);
  sub_3F570(&v12);
}

unint64_t sub_77A1C()
{
  v2 = qword_92E00;
  if (!qword_92E00)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_92E00);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_77A94(uint64_t a1, uint64_t a2)
{
  v2[15] = a2;
  v2[14] = a1;
  v2[12] = v2;
  v2[13] = 0;
  v2[2] = 0;
  v2[3] = 0;
  sub_1A88(&qword_90B50, &qword_7E2D0);
  v2[16] = swift_task_alloc();
  v3 = sub_7C0C4();
  v2[17] = v3;
  v2[18] = *(v3 - 8);
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v4 = sub_7BCD4();
  v2[21] = v4;
  v2[22] = *(v4 - 8);
  v2[23] = swift_task_alloc();
  sub_1A88(&qword_92EB0, &qword_812B8);
  v2[24] = swift_task_alloc();
  v5 = sub_7BBC4();
  v2[25] = v5;
  v2[26] = *(v5 - 8);
  v2[27] = swift_task_alloc();
  v2[13] = a2;
  sub_7D184();
  v2[28] = sub_7D174();
  v6 = sub_7D154();

  return _swift_task_switch(sub_77D38, v6);
}

uint64_t sub_77D38()
{
  v113 = v0[26];
  v115 = v0[25];
  v114 = v0[24];
  v110 = v0[23];
  v109 = v0[22];
  v111 = v0[21];
  v0[12] = v0;
  sub_7CD54();
  sub_7BBA4();
  v112 = *(v109 + 8);
  v112(v110, v111);
  if ((*(v113 + 48))(v114, 1, v115) == 1)
  {
    v105 = *(v108 + 160);
    v106 = *(v108 + 136);
    v107 = *(v108 + 120);
    v104 = *(v108 + 144);
    sub_78F7C(*(v108 + 192));
    v100 = sub_7CF84("body", 4uLL, 1);
    v103 = v1;
    v98 = sub_7CF84("⛓️‍💥 Failed to retrieve URL components from URL.", 0x39uLL, 0);
    v102 = v2;
    v99 = sub_7D3A4();
    v101 = sub_7D714();
    v97 = sub_4754();
    v3 = sub_4754();
    sub_71E20(v100, v103, v97 & 1, v3 & 1, v98, v102, v99, v101);

    sub_7CD44();
    sub_7CD64();
    (*(v104 + 8))(v105, v106);
    sub_78B5C(v107);
  }

  else
  {
    v96 = *(v108 + 168);
    v95 = *(v108 + 128);
    v94 = *(v108 + 176);
    (*(*(v108 + 208) + 32))(*(v108 + 216), *(v108 + 192), *(v108 + 200));
    sub_7BBB4();
    if ((*(v94 + 48))(v95, 1, v96) == 1)
    {
      sub_64CE0(*(v108 + 128));
      v92 = 0;
      v93 = 0;
    }

    else
    {
      v89 = *(v108 + 168);
      v88 = *(v108 + 128);
      v90 = sub_7BC74();
      v91 = v4;
      v112(v88, v89);
      v92 = v90;
      v93 = v91;
    }

    if (v93)
    {
      *(v108 + 16) = v92;
      *(v108 + 24) = v93;
      sub_7CD44();
      v83 = sub_7CF84("body", 4uLL, 1);
      v86 = v5;
      *(v108 + 32) = sub_7D704();
      *(v108 + 40) = v6;
      v117._countAndFlagsBits = sub_7CF84("🔗 Handling ", 0xEuLL, 0);
      sub_7D6F4(v117);

      *(v108 + 48) = v92;
      *(v108 + 56) = v93;
      sub_7D6E4();
      v118._countAndFlagsBits = sub_7CF84("", 0, 1);
      sub_7D6F4(v118);

      sub_1F58(v108 + 32);
      v82 = sub_7CF74();
      v85 = v7;
      v84 = sub_7D714();
      v80 = sub_4754();
      v81 = sub_4754();
      v8 = sub_4760();
      sub_71E20(v83, v86, v80 & 1, v81 & 1, v82, v85, v8, v84);

      sub_79484(0);
      v87 = sub_7CF94();

      if (v87)
      {
        v62 = sub_7CF84("body", 4uLL, 1);
        v65 = v12;
        v61 = sub_7CF84("🔗 Redirecting to System Fonts)", 0x21uLL, 0);
        v64 = v13;
        v63 = sub_7D714();
        v59 = sub_4754();
        v60 = sub_4754();
        v14 = sub_4760();
        sub_71E20(v62, v65, v59 & 1, v60 & 1, v61, v64, v14, v63);

        *(v108 + 234) = 0;
        sub_19E54();
        sub_7C0B4();
      }

      else
      {
        sub_79484(1);
        v58 = sub_7CF94();

        if (v58)
        {
          v54 = sub_7CF84("body", 4uLL, 1);
          v57 = v15;
          v53 = sub_7CF84("🔗 Redirecting to User Fonts)", 0x1FuLL, 0);
          v56 = v16;
          v55 = sub_7D714();
          v51 = sub_4754();
          v52 = sub_4754();
          v17 = sub_4760();
          sub_71E20(v54, v57, v51 & 1, v52 & 1, v53, v56, v17, v55);

          *(v108 + 233) = 1;
          sub_19E54();
          sub_7C0B4();
        }

        else
        {
          sub_79484(2);
          v50 = sub_7CF94();

          if (v50)
          {
            v46 = sub_7CF84("body", 4uLL, 1);
            v49 = v18;
            v45 = sub_7CF84("🔗 Redirecting to More Fonts)", 0x1FuLL, 0);
            v48 = v19;
            v47 = sub_7D714();
            v43 = sub_4754();
            v44 = sub_4754();
            v20 = sub_4760();
            sub_71E20(v46, v49, v43 & 1, v44 & 1, v45, v48, v20, v47);

            *(v108 + 232) = 2;
            sub_19E54();
            sub_7C0B4();
          }

          else
          {
            v39 = sub_7CF84("body", 4uLL, 1);
            v42 = v21;
            *(v108 + 64) = sub_7D704();
            *(v108 + 72) = v22;
            v119._countAndFlagsBits = sub_7CF84("🔗 Last path component not recognized: ", 0x29uLL, 0);
            sub_7D6F4(v119);

            *(v108 + 80) = v92;
            *(v108 + 88) = v93;
            sub_7D6E4();
            v120._countAndFlagsBits = sub_7CF84("", 0, 1);
            sub_7D6F4(v120);

            sub_1F58(v108 + 64);
            v38 = sub_7CF74();
            v41 = v23;
            v40 = sub_7D714();
            v36 = sub_4754();
            v37 = sub_4754();
            v24 = sub_4760();
            sub_71E20(v39, v42, v36 & 1, v37 & 1, v38, v41, v24, v40);
          }
        }
      }

      v33 = *(v108 + 216);
      v34 = *(v108 + 200);
      v28 = *(v108 + 160);
      v29 = *(v108 + 152);
      v30 = *(v108 + 136);
      v35 = *(v108 + 120);
      v32 = *(v108 + 208);
      v27 = *(v108 + 144);
      (*(v27 + 16))();
      sub_7CD64();
      v31 = *(v27 + 8);
      v31(v28, v30);
      v31(v29, v30);

      (*(v32 + 8))(v33, v34);
      sub_78B5C(v35);
    }

    else
    {
      v77 = *(v108 + 216);
      v78 = *(v108 + 200);
      v74 = *(v108 + 160);
      v75 = *(v108 + 136);
      v79 = *(v108 + 120);
      v76 = *(v108 + 208);
      v73 = *(v108 + 144);
      v69 = sub_7CF84("body", 4uLL, 1);
      v72 = v9;
      v67 = sub_7CF84("⛓️‍💥 Failed to retrieve last path component from URL.", 0x3EuLL, 0);
      v71 = v10;
      v68 = sub_7D3A4();
      v70 = sub_7D714();
      v66 = sub_4754();
      v11 = sub_4754();
      sub_71E20(v69, v72, v66 & 1, v11 & 1, v67, v71, v68, v70);

      sub_7CD44();
      sub_7CD64();
      (*(v73 + 8))(v74, v75);
      (*(v76 + 8))(v77, v78);
      sub_78B5C(v79);
    }
  }

  v25 = *(*(v108 + 96) + 8);

  return v25();
}

unint64_t sub_78AD4()
{
  v2 = qword_92E08;
  if (!qword_92E08)
  {
    sub_B24C(&qword_92DF0, &qword_811A0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_92E08);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_78B5C(uint64_t a1)
{
  v13 = a1;
  v39 = 0;
  v27 = 0;
  v18 = sub_7BCD4();
  v15 = *(v18 - 8);
  v16 = v18 - 8;
  v11 = (*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = __chkstk_darwin(v13);
  v17 = &v10 - v11;
  v39 = v2;
  v22 = 1;
  v32 = sub_7CF84("body", 4uLL, 1, v1);
  v35 = v3;
  v12 = 23;
  v4 = sub_7D704();
  v24 = &v37;
  v37 = v4;
  v38 = v5;
  v40._countAndFlagsBits = sub_7CF84("🔗 Complete handling ", v12, 0);
  object = v40._object;
  sub_7D6F4(v40);

  sub_7CD54();
  v19 = sub_7BC54();
  v20 = v6;
  (*(v15 + 8))(v17, v18);
  v21 = v36;
  v36[0] = v19;
  v36[1] = v20;
  v28 = &type metadata for String;
  sub_7D6E4();
  sub_1F58(v21);
  v41._countAndFlagsBits = sub_7CF84("", v27, v22 & 1);
  v23 = v41._object;
  sub_7D6F4(v41);

  v26 = v37;
  v25 = v38;

  sub_1F58(v24);
  v31 = sub_7CF74();
  v34 = v7;
  v33 = sub_7D714();
  v29 = sub_4754();
  v30 = sub_4754();
  v8 = sub_4760();
  sub_71E20(v32, v35, v29 & 1, v30 & 1, v31, v34, v8, v33);
}

uint64_t sub_78E2C()
{
  sub_B24C(&qword_92DF0, &qword_811A0);
  sub_78AD4();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_78F00()
{
  v2 = qword_92EA8;
  if (!qword_92EA8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_92EA8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_78F7C(uint64_t a1)
{
  v3 = sub_7BBC4();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_79024@<X0>(unsigned int a1@<W0>, uint64_t a2@<X8>)
{
  v6 = a2;
  v7 = a1;
  v13 = 0;
  v8 = sub_7CEF4();
  v9 = *(v8 - 8);
  v10 = v8 - 8;
  v11 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v7);
  v12 = &v6 - v11;
  v13 = v2;
  if (v2)
  {
    if (v7 == 1)
    {
      v4 = sub_7979C();
    }

    else
    {
      v4 = sub_79808();
    }

    (*(v9 + 16))(v12, v4, v8);
  }

  else
  {
    v3 = sub_79730();
    (*(v9 + 16))(v12, v3, v8);
  }

  return (*(v9 + 32))(v6, v12, v8);
}

uint64_t *sub_791C4()
{
  if (qword_90A90 != -1)
  {
    swift_once();
  }

  return &qword_94EF8;
}

uint64_t sub_79224()
{
  if (qword_90A88 != -1)
  {
    swift_once();
  }

  v0 = sub_7BCD4();
  return sub_77408(v0, qword_94EE0);
}

uint64_t sub_79290@<X0>(unsigned int a1@<W0>, uint64_t a2@<X8>)
{
  v12 = a2;
  v11 = a1;
  v25 = 0;
  v8[1] = 0;
  v18 = sub_7BC44();
  v15 = *(v18 - 8);
  v16 = v18 - 8;
  v9 = (*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v17 = v8 - v9;
  v22 = sub_7BCD4();
  v20 = *(v22 - 8);
  v21 = v22 - 8;
  v10 = (*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v11);
  v2 = v8 - v10;
  v23 = v8 - v10;
  v25 = v3;
  v4 = sub_79224();
  (*(v20 + 16))(v2, v4, v22);
  v5 = sub_79484(v11);
  v19 = v24;
  v24[0] = v5;
  v24[1] = v6;
  v14 = sub_198A4();
  v13 = &type metadata for String;
  sub_79994(v17);
  sub_7BCC4();
  (*(v15 + 8))(v17, v18);
  sub_1F58(v19);
  return (*(v20 + 8))(v23, v22);
}

uint64_t sub_79484(char a1)
{
  v5 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = sub_798D4();
    }

    else
    {
      v2 = sub_79934();
    }

    sub_13F00(v2, &v4);
  }

  else
  {
    v1 = sub_79874();
    sub_13F00(v1, &v4);
  }

  return v4;
}

uint64_t sub_79508()
{
  v3[0] = "Fatal error";
  v3[1] = "Unexpectedly found nil while unwrapping an Optional value";
  v3[2] = "FontSettings/Shared.swift";
  v0 = sub_1A88(&qword_90B50, &qword_7E2D0);
  v4 = (*(*(v0 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v0);
  v9 = v3 - v4;
  v10 = sub_7BCD4();
  v5 = qword_94EE0;
  sub_77460(v10, qword_94EE0);
  v6 = sub_77408(v10, v5);
  v1 = sub_796D0();
  v7 = *v1;
  v8 = v1[1];

  sub_7BCB4();

  v11 = *(v10 - 8);
  v12 = v10 - 8;
  if ((*(v11 + 48))(v9, 1) == 1)
  {
    sub_7D5E4();
    __break(1u);
  }

  return (*(v11 + 32))(v6, v9, v10);
}

uint64_t *sub_796D0()
{
  if (qword_90A98 != -1)
  {
    swift_once();
  }

  return &qword_94F08;
}

uint64_t sub_79730()
{
  if (qword_90AA0 != -1)
  {
    swift_once();
  }

  v0 = sub_7CEF4();
  return sub_77408(v0, qword_94F18);
}

uint64_t sub_7979C()
{
  if (qword_90AA8 != -1)
  {
    swift_once();
  }

  v0 = sub_7CEF4();
  return sub_77408(v0, qword_94F30);
}

uint64_t sub_79808()
{
  if (qword_90AB0 != -1)
  {
    swift_once();
  }

  v0 = sub_7CEF4();
  return sub_77408(v0, qword_94F48);
}

uint64_t *sub_79874()
{
  if (qword_90AB8 != -1)
  {
    swift_once();
  }

  return &qword_94F60;
}

uint64_t *sub_798D4()
{
  if (qword_90AC0 != -1)
  {
    swift_once();
  }

  return &qword_94F70;
}

uint64_t *sub_79934()
{
  if (qword_90AC8 != -1)
  {
    swift_once();
  }

  return &qword_94F80;
}

uint64_t sub_79994@<X0>(uint64_t a1@<X8>)
{
  v3 = enum case for URL.DirectoryHint.inferFromPath(_:);
  v1 = sub_7BC44();
  return (*(*(v1 - 8) + 104))(a1, v3);
}

BOOL sub_79A04(char a1, char a2)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 1;
    }

    else
    {
      v4 = 2;
    }
  }

  else
  {
    v4 = 0;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 1;
    }

    else
    {
      v3 = 2;
    }
  }

  else
  {
    v3 = 0;
  }

  return v4 == v3;
}

void sub_79AEC()
{
  v0 = sub_7D714();
  *v1 = 0;
  v1[1] = 1;
  v1[2] = 2;
  sub_71DDC(v0, &unk_8FDE0);
}

uint64_t sub_79CCC()
{
  result = sub_7CF84("com.apple.graphic-icon.fonts", 0x1CuLL, 1);
  qword_94EF8 = result;
  qword_94F00 = v1;
  return result;
}

uint64_t sub_79D10()
{
  v1 = *sub_791C4();

  return v1;
}

uint64_t sub_79D4C()
{
  result = sub_7CF84("settings-navigation://com.apple.Settings.General/FONT_SETTING", 0x3DuLL, 1);
  qword_94F08 = result;
  qword_94F10 = v1;
  return result;
}

uint64_t sub_79D90()
{
  v1 = *sub_796D0();

  return v1;
}

uint64_t sub_79DCC()
{
  v1 = sub_7CEF4();
  sub_77460(v1, qword_94F18);
  sub_77408(v1, qword_94F18);
  sub_7CF84("System Fonts", 0xCuLL, 1);
  return sub_7CE94();
}

uint64_t sub_79E38@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_79730();
  v1 = sub_7CEF4();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_79E9C()
{
  v1 = sub_7CEF4();
  sub_77460(v1, qword_94F30);
  sub_77408(v1, qword_94F30);
  sub_7CF84("My Fonts", 8uLL, 1);
  return sub_7CE94();
}

uint64_t sub_79F08@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_7979C();
  v1 = sub_7CEF4();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_79F6C()
{
  v1 = sub_7CEF4();
  sub_77460(v1, qword_94F48);
  sub_77408(v1, qword_94F48);
  sub_7CF84("More Fonts", 0xAuLL, 1);
  return sub_7CE94();
}

uint64_t sub_79FD8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_79808();
  v1 = sub_7CEF4();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_7A03C()
{
  result = sub_7CF84("SYSTEM_FONTS", 0xCuLL, 1);
  qword_94F60 = result;
  qword_94F68 = v1;
  return result;
}

uint64_t sub_7A080()
{
  v1 = *sub_79874();

  return v1;
}

uint64_t sub_7A0BC()
{
  result = sub_7CF84("USER_FONTS", 0xAuLL, 1);
  qword_94F70 = result;
  qword_94F78 = v1;
  return result;
}

uint64_t sub_7A100()
{
  v1 = *sub_798D4();

  return v1;
}

uint64_t sub_7A13C()
{
  result = sub_7CF84("MORE_FONTS", 0xAuLL, 1);
  qword_94F80 = result;
  qword_94F88 = v1;
  return result;
}

uint64_t sub_7A180()
{
  v1 = *sub_79934();

  return v1;
}

unint64_t sub_7A224()
{
  v2 = qword_92EB8;
  if (!qword_92EB8)
  {
    sub_B24C(&qword_92EC0, qword_812F8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_92EB8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_7A2C4()
{
  v2 = qword_92EC8;
  if (!qword_92EC8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_92EC8);
    return WitnessTable;
  }

  return v2;
}

void sub_7A340(char a1)
{
  v6 = a1 & 1;
  v5 = v1;
  v1;
  v4.receiver = v1;
  v4.super_class = type metadata accessor for TopNavigationController();
  objc_msgSendSuper2(&v4, "viewDidAppear:", a1 & 1);
}

void sub_7A4B4()
{
  v74 = 0;
  v0;
  v73.receiver = v0;
  v73.super_class = type metadata accessor for TopNavigationController();
  objc_msgSendSuper2(&v73, "viewDidLoad");

  sub_1A88(&qword_92ED0, &unk_813A0);
  sub_3F110();
  v70 = sub_7C374();
  [v71 addChildViewController:?];
  v71;
  v72 = [v71 view];

  if (v72)
  {
    v69 = v72;
  }

  else
  {
    LOBYTE(v2) = 2;
    v12 = 23;
    LODWORD(v22) = 0;
    sub_7D5E4();
    __break(1u);
  }

  v70;
  v68 = [v70 view];

  if (v68)
  {
    v67 = v68;
  }

  else
  {
    LOBYTE(v2) = 2;
    v12 = 23;
    LODWORD(v22) = 0;
    sub_7D5E4();
    __break(1u);
  }

  [v69 addSubview:{v2, v12, v22}];

  v71;
  [v70 didMoveToParentViewController:v71];

  v70;
  v66 = [v70 view];

  if (v66)
  {
    v65 = v66;
  }

  else
  {
    LOBYTE(v3) = 2;
    v13 = 26;
    LODWORD(v23) = 0;
    sub_7D5E4();
    __break(1u);
  }

  [v65 setTranslatesAutoresizingMaskIntoConstraints:{0, v3, v13, v23}];

  v60 = objc_opt_self();
  v61 = sub_7B0CC();
  v62 = sub_7D714();
  v63 = v1;
  v70;
  v64 = [v70 view];

  if (v64)
  {
    v59 = v64;
  }

  else
  {
    LOBYTE(v4) = 2;
    v14 = 28;
    LODWORD(v24) = 0;
    sub_7D5E4();
    __break(1u);
  }

  v57 = [v59 topAnchor];

  v71;
  v58 = [v71 view];

  if (v58)
  {
    v56 = v58;
  }

  else
  {
    LOBYTE(v5) = 2;
    v15 = 28;
    LODWORD(v25) = 0;
    sub_7D5E4();
    __break(1u);
  }

  v53 = [v56 topAnchor];

  v54 = [v57 constraintEqualToAnchor:v53];
  *v63 = v54;
  v70;
  v55 = [v70 view];

  if (v55)
  {
    v52 = v55;
  }

  else
  {
    LOBYTE(v6) = 2;
    v16 = 29;
    LODWORD(v26) = 0;
    sub_7D5E4();
    __break(1u);
  }

  v50 = [v52 bottomAnchor];

  v71;
  v51 = [v71 view];

  if (v51)
  {
    v49 = v51;
  }

  else
  {
    LOBYTE(v7) = 2;
    v17 = 29;
    LODWORD(v27) = 0;
    sub_7D5E4();
    __break(1u);
  }

  v46 = [v49 bottomAnchor];

  v47 = [v50 constraintEqualToAnchor:v46];
  v63[1] = v47;
  v70;
  v48 = [v70 view];

  if (v48)
  {
    v45 = v48;
  }

  else
  {
    LOBYTE(v8) = 2;
    v18 = 30;
    LODWORD(v28) = 0;
    sub_7D5E4();
    __break(1u);
  }

  v43 = [v45 leadingAnchor];

  v71;
  v44 = [v71 view];

  if (v44)
  {
    v42 = v44;
  }

  else
  {
    LOBYTE(v9) = 2;
    v19 = 30;
    LODWORD(v29) = 0;
    sub_7D5E4();
    __break(1u);
  }

  v39 = [v42 leadingAnchor];

  v40 = [v43 constraintEqualToAnchor:v39];
  v63[2] = v40;
  v70;
  v41 = [v70 view];

  if (v41)
  {
    v38 = v41;
  }

  else
  {
    LOBYTE(v10) = 2;
    v20 = 31;
    LODWORD(v30) = 0;
    sub_7D5E4();
    __break(1u);
  }

  v36 = [v38 trailingAnchor];

  v71;
  v37 = [v71 view];

  if (v37)
  {
    v35 = v37;
  }

  else
  {
    LOBYTE(v11) = 2;
    v21 = 31;
    LODWORD(v31) = 0;
    sub_7D5E4();
    __break(1u);
  }

  v32 = [v35 trailingAnchor];

  v33 = [v36 constraintEqualToAnchor:v32];
  v63[3] = v33;
  sub_71DDC(v62, v61);
  isa = sub_7D094().super.isa;

  [v60 activateConstraints:isa];
}

unint64_t sub_7B0CC()
{
  v2 = qword_92ED8;
  if (!qword_92ED8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_92ED8);
    return ObjCClassMetadata;
  }

  return v2;
}

id sub_7B1E0(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = 0;
  v11 = a1;
  v12 = a2;
  v10 = a3;

  if (a2)
  {
    v5 = sub_7CF04();

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = 0;
  v9.super_class = type metadata accessor for TopNavigationController();
  v4 = objc_msgSendSuper2(&v9, "initWithNibName:bundle:", v6, a3);

  v4;
  v13 = v4;

  return v4;
}

id sub_7B460(void *a1)
{
  v7 = 0;
  v6 = a1;
  v5.receiver = 0;
  v5.super_class = type metadata accessor for TopNavigationController();
  v4 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);
  if (v4)
  {
    v4;
    v7 = v4;

    return v4;
  }

  else
  {

    return 0;
  }
}

id sub_7B5F8()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TopNavigationController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_7B64C(int a1, int a2, int a3, int a4)
{
  if (qword_94E28 == -1)
  {
    if (qword_94E30)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    sub_7BB14();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_94E30)
    {
      return _availability_version_check();
    }
  }

  if (qword_94E20 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    sub_7BB2C();
    a3 = v10;
    a4 = v9;
    v8 = dword_94E10 < v11;
    if (dword_94E10 > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_94E14 > a3)
      {
        return 1;
      }

      if (dword_94E14 >= a3)
      {
        return dword_94E18 >= a4;
      }
    }

    return 0;
  }

  v8 = dword_94E10 < a2;
  if (dword_94E10 <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_7B7E0(uint64_t result)
{
  v1 = qword_94E30;
  if (qword_94E30)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (&__availability_version_check)
    {
      v1 = &__availability_version_check;
      qword_94E30 = &__availability_version_check;
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = ftell(v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &dword_94E10, &dword_94E14, &dword_94E18);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}