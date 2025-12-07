uint64_t *sub_1D626F824(uint64_t *result, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = result;
    for (i = (a2 + 32); ; i += 10)
    {
      v6 = i[7];
      v26 = i[6];
      v27 = v6;
      *v28 = i[8];
      *&v28[9] = *(i + 137);
      v7 = i[3];
      v23 = i[2];
      v24[0] = v7;
      v8 = i[5];
      v24[1] = i[4];
      v25 = v8;
      v9 = i[1];
      v21 = *i;
      v22 = v9;
      v20 = v21;
      sub_1D5D044D4(&v21, v19);

      sub_1D6EE4610(v4);
      if (v2)
      {
        break;
      }

      v10 = v22;

      if ((~v10 & 0xF000000000000007) != 0)
      {
        v19[0] = v10;

        sub_1D62891F0(v4, v11, v12, v13, v14, v15, v16, v17, v18);
      }

      if (*(&v22 + 1))
      {
        sub_1D626FA1C(v4, *(&v22 + 1));
      }

      if (v28[8] != 254)
      {
        v19[0] = *(&v25 + 1);
        swift_retain_n();
        sub_1D62895DC(v4);

        sub_1D5D0ABCC(v24 + 8, &qword_1EDF33718, &type metadata for FormatShadow);
      }

      if (*&v28[16])
      {
        sub_1D6273544(v4, *&v28[16]);
      }

      result = sub_1D5D04BEC(&v21);
      if (!--v3)
      {
        return result;
      }
    }

    return sub_1D5D04BEC(&v21);
  }

  return result;
}

void sub_1D626FA1C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    for (i = a2 + 64; ; i += 40)
    {

      swift_retain_n();

      sub_1D62895DC(a1);
      if (v2)
      {
        break;
      }

      sub_1D6012F58();

      if (!--v3)
      {
        return;
      }
    }
  }
}

uint64_t sub_1D626FB44(uint64_t result, uint64_t a2)
{
  v3 = v2;
  v22 = *(a2 + 16);
  if (v22)
  {
    v4 = result;
    v5 = 0;
    v23 = a2 + 32;
    while (1)
    {
      v6 = v23 + (v5 << 6);
      v7 = *(v6 + 8);
      v32 = *v6;
      v8 = *(v6 + 16);
      v9 = *(v6 + 24);
      v10 = *(v6 + 32);
      v12 = *(v6 + 40);
      v11 = *(v6 + 48);
      v13 = *(v6 + 56);

      v24 = v8;
      v25 = v9;
      v26 = v10;
      sub_1D5ED34B0(v8, v9, v10);
      v27 = v12;
      v28 = v11;
      sub_1D5ED34B0(v12, v11, v13);
      v14 = qword_1EDF2AB18;

      if (v14 != -1)
      {
        swift_once();
      }

      v29[0] = v32;
      v29[1] = v7;
      result = sub_1D6844380(v29);
      v15 = result;
      v16 = *(result + 16);
      if (v16)
      {
        break;
      }

LABEL_3:
      ++v5;
      swift_bridgeObjectRelease_n();

      sub_1D5ED348C(v24, v25, v26);
      result = sub_1D5ED348C(v27, v28, v13);
      if (v5 == v22)
      {
        return result;
      }
    }

    v17 = 0;
    v18 = 32;
    while (v17 < *(v15 + 16))
    {
      v19 = *(v15 + v18);
      v20 = *(v15 + v18 + 16);
      v21 = *(v15 + v18 + 32);
      v31 = *(v15 + v18 + 48);
      v30[1] = v20;
      v30[2] = v21;
      v30[0] = v19;
      sub_1D5E3B610(v30, v29);
      sub_1D6844F60(v4);
      if (v3)
      {

        sub_1D5E3B66C(v30);
        swift_bridgeObjectRelease_n();
        sub_1D5ED348C(v24, v25, v26);
        return sub_1D5ED348C(v27, v28, v13);
      }

      ++v17;
      result = sub_1D5E3B66C(v30);
      v18 += 56;
      if (v16 == v17)
      {
        goto LABEL_3;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1D626FD48(uint64_t *a1, uint64_t a2)
{
  v20 = *(a2 + 16);
  if (v20)
  {
    v4 = 0;
    v5 = a2 + 32;
    p_superclass = &OBJC_METACLASS____TtC8NewsFeed20SavingCommandHandler.superclass;
    v19 = a2 + 32;
    while (1)
    {
      v7 = (v5 + 32 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = v7[3];
      v11 = p_superclass[355];
      swift_bridgeObjectRetain_n();
      v24 = v10;

      if (v11 != -1)
      {
        swift_once();
      }

      v21[0] = v9;
      v21[1] = v8;
      v12 = sub_1D6844380(v21);
      v13 = *(v12 + 16);
      if (v13)
      {
        break;
      }

LABEL_10:

      if (v24)
      {
        sub_1D626DA28(a1, v24);

        if (v2)
        {
LABEL_17:

          return;
        }
      }

      else
      {
      }

      ++v4;

      v5 = v19;
      p_superclass = (&OBJC_METACLASS____TtC8NewsFeed20SavingCommandHandler + 8);
      if (v4 == v20)
      {
        return;
      }
    }

    v14 = 0;
    v15 = 32;
    while (v14 < *(v12 + 16))
    {
      v16 = *(v12 + v15);
      v17 = *(v12 + v15 + 16);
      v18 = *(v12 + v15 + 32);
      v23 = *(v12 + v15 + 48);
      v22[1] = v17;
      v22[2] = v18;
      v22[0] = v16;
      sub_1D5E3B610(v22, v21);
      sub_1D6844F60(a1);
      if (v2)
      {

        sub_1D5E3B66C(v22);

        goto LABEL_17;
      }

      ++v14;
      sub_1D5E3B66C(v22);
      v15 += 56;
      if (v13 == v14)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1D626FF20(uint64_t result, uint64_t a2)
{
  v3 = v2;
  v23 = *(a2 + 16);
  if (v23)
  {
    v4 = result;
    v5 = 0;
    v6 = a2 + 32;
    p_superclass = &OBJC_METACLASS____TtC8NewsFeed20SavingCommandHandler.superclass;
    v22 = a2 + 32;
    while (1)
    {
      v8 = v6 + 40 * v5;
      v9 = *v8;
      v10 = *(v8 + 8);
      v11 = *(v8 + 24);
      v12 = *(v8 + 32) | (*(v8 + 34) << 16);

      v29 = v11;
      sub_1D62B7DCC(v11, v12);
      v13 = p_superclass[355];

      if (v13 != -1)
      {
        swift_once();
      }

      v24 = v12;
      v25 = v9;
      v26 = v10;
      result = sub_1D6844380(&v25);
      v14 = result;
      v15 = *(result + 16);
      if (v15)
      {
        break;
      }

LABEL_10:

      if (BYTE2(v24) == 255)
      {

        result = sub_1D62B6F70(v29, v24);
      }

      else
      {
        v21 = v29;
        v25 = v29;
        LOWORD(v26) = v24;
        BYTE2(v26) = BYTE2(v24);
        sub_1D610CA74(v29, v24, SBYTE2(v24), sub_1D610CA28, sub_1D610CA5C);
        sub_1D628F694(v4);
        sub_1D610CA74(v21, v24, SBYTE2(v24), sub_1D60CF6A8, sub_1D60CF6DC);

        result = sub_1D62B6F70(v21, v24);
        if (v3)
        {
          return result;
        }
      }

      ++v5;
      v6 = v22;
      p_superclass = (&OBJC_METACLASS____TtC8NewsFeed20SavingCommandHandler + 8);
      if (v5 == v23)
      {
        return result;
      }
    }

    v16 = 0;
    v17 = 32;
    while (v16 < *(v14 + 16))
    {
      v18 = *(v14 + v17);
      v19 = *(v14 + v17 + 16);
      v20 = *(v14 + v17 + 32);
      v28 = *(v14 + v17 + 48);
      v27[1] = v19;
      v27[2] = v20;
      v27[0] = v18;
      sub_1D5E3B610(v27, &v25);
      sub_1D6844F60(v4);
      if (v3)
      {

        sub_1D5E3B66C(v27);
        swift_bridgeObjectRelease_n();
        return sub_1D62B6F70(v29, v24);
      }

      ++v16;
      result = sub_1D5E3B66C(v27);
      v17 += 56;
      if (v15 == v16)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D62701B4(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = result;
    for (i = (a2 + 32); ; i += 9)
    {
      v6 = i[7];
      v18 = i[6];
      *v19 = v6;
      *&v19[10] = *(i + 122);
      v7 = i[1];
      v13 = *i;
      v14 = v7;
      v8 = i[3];
      v15 = i[2];
      v16[0] = v8;
      v9 = i[5];
      v16[1] = i[4];
      v17 = v9;
      v12 = v13;
      sub_1D62B7998(&v13, v11);

      sub_1D6EE4610(v4);
      if (v2)
      {
        break;
      }

      v10 = v14;

      if (v10)
      {
        sub_1D6273544(v4, v10);
      }

      if (*(&v14 + 1))
      {
        sub_1D626FA1C(v4, *(&v14 + 1));
      }

      if (v19[24] != 254)
      {
        v11[0] = *(&v17 + 1);
        swift_retain_n();
        sub_1D62895DC(v4);

        sub_1D5D0ABCC(v16 + 8, &qword_1EDF33718, &type metadata for FormatShadow);
      }

      result = sub_1D62B79F4(&v13);
      if (!--v3)
      {
        return result;
      }
    }

    return sub_1D62B79F4(&v13);
  }

  return result;
}

uint64_t sub_1D6270360(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = result;
    for (i = (a2 + 32); ; i = (i + 152))
    {
      v6 = i[7];
      v18 = i[6];
      v19 = v6;
      v20 = i[8];
      v21 = *(i + 18);
      v7 = i[3];
      v15 = i[2];
      v16[0] = v7;
      v8 = i[5];
      v16[1] = i[4];
      v17 = v8;
      v9 = i[1];
      v13 = *i;
      v14 = v9;
      v12 = v13;
      sub_1D615EAA0(&v13, v11);

      sub_1D6EE4610(v4);
      if (v2)
      {
        break;
      }

      v10 = v14;

      if (v10)
      {
        sub_1D6273544(v4, v10);
      }

      if (*(&v14 + 1))
      {
        sub_1D626FA1C(v4, *(&v14 + 1));
      }

      if (BYTE8(v20) != 254)
      {
        v11[0] = *(&v17 + 1);
        swift_retain_n();
        sub_1D62895DC(v4);

        sub_1D5D0ABCC(v16 + 8, &qword_1EDF33718, &type metadata for FormatShadow);
      }

      result = sub_1D615EAD8(&v13);
      if (!--v3)
      {
        return result;
      }
    }

    return sub_1D615EAD8(&v13);
  }

  return result;
}

void *sub_1D6270510(void *result, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = result;
    for (i = (a2 + 32); ; i += 320)
    {
      memcpy(__dst, i, 0x13AuLL);
      v28[0] = __dst[0];
      sub_1D60101A0(__dst, &v30);

      sub_1D6EE4610(v4);
      if (v2)
      {

        return sub_1D60101D8(__dst);
      }

      v6 = *&__dst[1];

      if (v6)
      {
        sub_1D626FA1C(v4, v6);
      }

      if (LOBYTE(__dst[8]) != 254)
      {
        *&v30 = *&__dst[5];
        swift_retain_n();
        sub_1D62895DC(v4);

        sub_1D5D0ABCC(&__dst[3], &qword_1EDF33718, &type metadata for FormatShadow);
      }

      if (*(&__dst[8] + 1))
      {
        sub_1D6273544(v4, *(&__dst[8] + 1));
      }

      v38 = *(&__dst[17] + 8);
      v39 = *(&__dst[18] + 8);
      v40 = WORD4(__dst[19]);
      v34 = *(&__dst[13] + 8);
      v35 = *(&__dst[14] + 8);
      v36 = *(&__dst[15] + 8);
      v37 = *(&__dst[16] + 8);
      v30 = *(&__dst[9] + 8);
      v31 = *(&__dst[10] + 8);
      v32 = *(&__dst[11] + 8);
      v33 = *(&__dst[12] + 8);
      if (sub_1D60081E0(&v30) == 1)
      {
        goto LABEL_15;
      }

      v28[8] = v38;
      v28[9] = v39;
      v29 = v40;
      v28[4] = v34;
      v28[5] = v35;
      v28[6] = v36;
      v28[7] = v37;
      v28[0] = v30;
      v28[1] = v31;
      v28[2] = v32;
      v28[3] = v33;
      v7 = sub_1D62B4E2C(v28);
      if (v7 <= 1)
      {
        break;
      }

      if (v7 != 2)
      {
        goto LABEL_15;
      }

      v8 = sub_1D5D04BC4(v28);
      v9 = *(v8 + 144);
      v23 = *(v8 + 128);
      v24 = v9;
      v25 = *(v8 + 160);
      v10 = *(v8 + 80);
      v19 = *(v8 + 64);
      v20 = v10;
      v11 = *(v8 + 112);
      v21 = *(v8 + 96);
      v22 = v11;
      v12 = *(v8 + 16);
      v15 = *v8;
      v16 = v12;
      v13 = *(v8 + 48);
      v17 = *(v8 + 32);
      v18 = v13;
      v26[0] = *(&__dst[9] + 8);
      v26[1] = *(&__dst[10] + 8);
      v26[4] = *(&__dst[13] + 8);
      v26[5] = *(&__dst[14] + 8);
      v26[2] = *(&__dst[11] + 8);
      v26[3] = *(&__dst[12] + 8);
      v27 = WORD4(__dst[19]);
      v26[8] = *(&__dst[17] + 8);
      v26[9] = *(&__dst[18] + 8);
      v26[6] = *(&__dst[15] + 8);
      v26[7] = *(&__dst[16] + 8);
      sub_1D60864C0(v26, v14);
      sub_1D62914C8(v4);
      sub_1D5D0ABCC(&__dst[9] + 8, &qword_1EDF2D860, &type metadata for FormatVisualEffect);
      result = sub_1D60101D8(__dst);
LABEL_16:
      if (!--v3)
      {
        return result;
      }
    }

    sub_1D5D04BC4(v28);
LABEL_15:
    result = sub_1D60101D8(__dst);
    goto LABEL_16;
  }

  return result;
}

void sub_1D62707E8(uint64_t *a1, uint64_t a2, __n128 a3)
{
  v4 = v3;
  v7 = type metadata accessor for FormatDerivedDataOption(0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v208 = &v205 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v207 = &v205 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v213 = &v205 - v15;
  v16 = *(a2 + 16);
  if (!v16)
  {
    return;
  }

  v17 = (a2 + 32);
  v209 = 0x80000001D73CEF10;
  v216 = a1;
  v214 = v7;
  while (1)
  {
    v18 = *v17;
    v247 = v17 + 1;
    if (!(v18 >> 62))
    {
      break;
    }

    if (v18 >> 62 == 1)
    {
      v19 = *((v18 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v20 = *(v7 + 28);
      v21 = qword_1EDF31ED0;

      v215 = v19;

      if (v21 != -1)
      {
        swift_once();
      }

      v22 = sub_1D725BD1C();
      v23 = __swift_project_value_buffer(v22, qword_1EDFFCD50);
      v24 = v213;
      (*(*(v22 - 8) + 16))(v213 + v20, v23, v22);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v25 = type metadata accessor for FormatVersionRequirement(0);
      (*(*(v25 - 8) + 56))(v24 + v20, 0, 1, v25);
      *v24 = 0xD000000000000010;
      v26 = v209;
      *(v24 + 24) = 0;
      *(v24 + 32) = 0;
      *(v24 + 8) = v26;
      *(v24 + 16) = 3;
      *(v24 + 40) = 0;
      *(v24 + 48) = MEMORY[0x1E69E7CC0];
      v27 = swift_allocBox();
      v29 = v28;
      sub_1D62B50EC(v24, v28, type metadata accessor for FormatDerivedDataOption);
      v30 = *v216;
      swift_beginAccess();
      v31 = *(v30 + 16);
      v32 = *(v31 + 16);
      if (v32 && *(v31 + 8 * v32 + 24) >> 60 == 1 && (v33 = swift_projectBox(), v34 = v207, sub_1D62B50EC(v33, v207, type metadata accessor for FormatDerivedDataOption), v212 = v18 & 0x3FFFFFFFFFFFFFFFLL, v35 = v27, v36 = v4, v37 = v16, v38 = v208, sub_1D62B50EC(v29, v208, type metadata accessor for FormatDerivedDataOption), , v39 = sub_1D69E18D4(v34, v38), v40 = v38, v16 = v37, v4 = v36, v27 = v35, sub_1D62B51D0(v40, type metadata accessor for FormatDerivedDataOption), sub_1D62B51D0(v34, type metadata accessor for FormatDerivedDataOption), , v39))
      {

        v7 = v214;
      }

      else
      {
        v61 = v216;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v63 = *v61;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D5B4B554(0, &qword_1EC880338, &type metadata for FormatDerivedData._$CopyOnWriteStorage, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E6B60]);
          v189 = swift_allocObject();
          swift_beginAccess();
          v190 = v63[2];
          __dst = v63[1];
          v235 = v190;
          *v236 = v63[3];
          *&v236[14] = *(v63 + 62);
          memmove((v189 + 16), v63 + 1, 0x3EuLL);
          sub_1D5EB9AB0(&__dst, &v226);

          *v216 = v189;
          v63 = v189;
        }

        swift_beginAccess();
        v64 = *(v63 + 2);
        v65 = swift_isUniquelyReferenced_nonNull_native();
        *(v63 + 2) = v64;
        v66 = v16;
        if ((v65 & 1) == 0)
        {
          v64 = sub_1D698F848(0, *(v64 + 2) + 1, 1, v64);
          *(v63 + 2) = v64;
        }

        v68 = *(v64 + 2);
        v67 = *(v64 + 3);
        if (v68 >= v67 >> 1)
        {
          v64 = sub_1D698F848((v67 > 1), v68 + 1, 1, v64);
        }

        *(v64 + 2) = v68 + 1;
        *&v64[8 * v68 + 32] = v27 | 0x1000000000000000;
        *(v63 + 2) = v64;
        swift_endAccess();
        v7 = v214;
        v16 = v66;
      }

      sub_1D62B51D0(v213, type metadata accessor for FormatDerivedDataOption);
      a1 = v216;
      sub_1D62873B8(v216, v69);
      if (v4)
      {
LABEL_250:

        goto LABEL_305;
      }

LABEL_3:

      goto LABEL_4;
    }

    v53 = *((v18 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v54 = *(v53 + 16);

    sub_1D62707E8(a1, v54, v55);
    if (v4)
    {
      goto LABEL_250;
    }

    v56 = *(v53 + 120);
    v231 = *(v53 + 104);
    v232 = v56;
    v233[0] = *(v53 + 136);
    *(v233 + 9) = *(v53 + 145);
    v57 = *(v53 + 56);
    v227 = *(v53 + 40);
    v228 = v57;
    v58 = *(v53 + 88);
    v229 = *(v53 + 72);
    v230 = v58;
    v226 = *(v53 + 24);
    memmove(&__dst, (v53 + 24), 0x89uLL);
    if (sub_1D60486AC(&__dst) == 1)
    {
      goto LABEL_3;
    }

    v59 = __dst;
    if (__dst)
    {
      v224 = v232;
      v225[0] = v233[0];
      *(v225 + 9) = *(v233 + 9);
      v220 = v228;
      v221 = v229;
      v222 = v230;
      v223 = v231;
      v218 = v226;
      v219 = v227;
      sub_1D62B4994(&v218, v217);
      sub_1D6273544(a1, v59);
      v60 = *(&__dst + 1);
      if (!*(&__dst + 1))
      {
        goto LABEL_69;
      }

LABEL_68:
      sub_1D6273544(a1, v60);
      goto LABEL_69;
    }

    v224 = v232;
    v225[0] = v233[0];
    *(v225 + 9) = *(v233 + 9);
    v220 = v228;
    v221 = v229;
    v222 = v230;
    v223 = v231;
    v218 = v226;
    v219 = v227;
    sub_1D62B4994(&v218, v217);
    v60 = *(&__dst + 1);
    if (*(&__dst + 1))
    {
      goto LABEL_68;
    }

LABEL_69:
    if (v235)
    {
      sub_1D6273544(a1, v235);
    }

    if (*(&v235 + 1))
    {
      sub_1D6273544(a1, *(&v235 + 1));
    }

    if (*&v236[8])
    {
      sub_1D6273544(a1, *&v236[8]);
    }

    if (*&v236[16])
    {
      sub_1D6273544(a1, *&v236[16]);
    }

    v84 = v238;
    if (v238 != 255 && (v238 & 1) != 0)
    {
      v85 = *&v236[24];
      v86 = v237;
      sub_1D6189668(*&v236[24], v237, v238);
      sub_1D6189668(v85, v86, v84);
      v87 = sub_1D5E26E28(&unk_1F5112A28);
      v88 = swift_allocObject();
      v215 = 0;
      *(v88 + 16) = v85;
      *(v88 + 24) = v86;
      *(v88 + 32) = v87;
      *(v88 + 40) = 0;
      sub_1D6C4D24C(v88 | 0x3000000000000000);
      sub_1D60107F0(v85, v86, v84);
      v7 = v214;
      v4 = v215;
    }

    v89 = v243;
    if (v243 != 255 && (v243 & 1) != 0)
    {
      v212 = v16;
      v90 = v239;
      v91 = v240;
      v92 = v241;
      v215 = v242;
      sub_1D618903C(v239, v240, v241, v242, 1);
      v93 = v216;
      sub_1D6273544(v216, v90);
      if (v4)
      {
        sub_1D62B4B50(v90, v91, v92, v215, v89);
LABEL_254:

        sub_1D5D0ABCC(&v226, &qword_1EDF10BF0, &type metadata for FormatMediaTiming);
        goto LABEL_305;
      }

      sub_1D6273544(v93, v91);
      sub_1D6273544(v93, v92);
      v94 = v93;
      v95 = v215;
      sub_1D6273544(v94, v215);
      v4 = 0;
      sub_1D62B4B50(v90, v91, v92, v95, v89);
      v7 = v214;
      v16 = v212;
    }

    v96 = v246;
    if (v246 == 255 || (v246 & 1) == 0)
    {

      sub_1D5D0ABCC(&v226, &qword_1EDF10BF0, &type metadata for FormatMediaTiming);

      a1 = v216;
      goto LABEL_5;
    }

    v97 = v244;
    v98 = v245;
    sub_1D6189668(v244, v245, v246);
    sub_1D6189668(v97, v98, v96);
    v99 = sub_1D5E26E28(&unk_1F5112A50);
    v100 = swift_allocObject();
    v212 = v16;
    *(v100 + 16) = v97;
    *(v100 + 24) = v98;
    *(v100 + 32) = v99;
    *(v100 + 40) = 0;
    v101 = v216;
    sub_1D6C4D24C(v100 | 0x3000000000000000);
    v102 = v96;
    a1 = v101;
    sub_1D60107F0(v97, v98, v102);

    v16 = v212;
    v7 = v214;

    sub_1D5D0ABCC(&v226, &qword_1EDF10BF0, &type metadata for FormatMediaTiming);
LABEL_4:

LABEL_5:
    --v16;
    v17 = v247;
    if (!v16)
    {
      return;
    }
  }

  v212 = v16;
  v41 = *(v18 + 16);
  v43 = *(v41 + 16);
  v42 = *(v41 + 24);
  v44 = *(v41 + 40);
  v215 = *(v41 + 32);
  v46 = *(v41 + 48);
  v45 = *(v41 + 56);
  v47 = *(v41 + 64);
  v210 = v45;
  v211 = v46;
  if (v47 > 5)
  {
    if (v47 <= 8)
    {
      if (v47 != 6)
      {
        if (v47 == 7)
        {
          if (v43)
          {

            sub_1D62B753C(v43, v42, v215, v44, v46, v45, 7u);

            sub_1D6273544(a1, v43);
            if (v4)
            {
              goto LABEL_276;
            }

            if (v42)
            {
LABEL_45:

              sub_1D6273544(a1, v42);
              if (v4)
              {
LABEL_276:

                v197 = v43;
                v198 = v42;
                v199 = v215;
                v200 = v44;
                goto LABEL_301;
              }

              v70 = v44;

              v71 = v215;
              if (v215)
              {
LABEL_47:

                sub_1D6273544(a1, v71);
                if (!v4)
                {

                  v50 = v43;
                  v51 = v42;
                  v52 = v71;
LABEL_167:
                  v80 = v70;
                  v119 = v210;
                  v81 = v211;
                  v120 = 7;
                  goto LABEL_192;
                }

                v197 = v43;
                v198 = v42;
                v199 = v71;
                v200 = v70;
LABEL_301:
                v203 = v210;
                v201 = v211;
                v204 = 7;
                goto LABEL_304;
              }

LABEL_166:
              v50 = v43;
              v51 = v42;
              v52 = 0;
              goto LABEL_167;
            }
          }

          else
          {

            sub_1D62B753C(0, v42, v215, v44, v46, v45, 7u);
            if (v42)
            {
              goto LABEL_45;
            }
          }

          v70 = v44;
          v71 = v215;
          if (v215)
          {
            goto LABEL_47;
          }

          goto LABEL_166;
        }

        if (v43)
        {

          sub_1D62B753C(v43, v42, v215, v44, v46, v45, 8u);

          sub_1D6273544(a1, v43);
          if (v4)
          {
            goto LABEL_278;
          }

          if (v42)
          {
LABEL_126:

            sub_1D6273544(a1, v42);
            if (v4)
            {
LABEL_278:

              v197 = v43;
              v198 = v42;
              v199 = v215;
              v200 = v44;
              goto LABEL_293;
            }

            v113 = v44;

            v114 = v215;
            if (v215)
            {
LABEL_128:

              sub_1D6273544(a1, v114);
              if (!v4)
              {

                v50 = v43;
                v51 = v42;
                v52 = v114;
LABEL_183:
                v80 = v113;
                v119 = v210;
                v81 = v211;
                v120 = 8;
                goto LABEL_192;
              }

              v197 = v43;
              v198 = v42;
              v199 = v114;
              v200 = v113;
LABEL_293:
              v203 = v210;
              v201 = v211;
              v204 = 8;
              goto LABEL_304;
            }

LABEL_182:
            v50 = v43;
            v51 = v42;
            v52 = 0;
            goto LABEL_183;
          }
        }

        else
        {

          sub_1D62B753C(0, v42, v215, v44, v46, v45, 8u);
          if (v42)
          {
            goto LABEL_126;
          }
        }

        v113 = v44;
        v114 = v215;
        if (v215)
        {
          goto LABEL_128;
        }

        goto LABEL_182;
      }

      if (v43)
      {

        sub_1D62B753C(v43, v42, v215, v44, v46, v45, 6u);

        sub_1D6273544(a1, v43);
        if (v4)
        {
          goto LABEL_273;
        }

        if (v42)
        {
LABEL_98:

          sub_1D6273544(a1, v42);
          if (v4)
          {
LABEL_273:

            v197 = v43;
            v198 = v42;
            v199 = v215;
            v200 = v44;
            goto LABEL_299;
          }

          v105 = v44;

          v106 = v215;
          if (v215)
          {
LABEL_100:

            sub_1D6273544(a1, v106);
            if (!v4)
            {

              v50 = v43;
              v51 = v42;
              v52 = v106;
LABEL_151:
              v80 = v105;
              v119 = v210;
              v81 = v211;
              v120 = 6;
              goto LABEL_192;
            }

            v197 = v43;
            v198 = v42;
            v199 = v106;
            v200 = v105;
LABEL_299:
            v203 = v210;
            v201 = v211;
            v204 = 6;
            goto LABEL_304;
          }

LABEL_150:
          v50 = v43;
          v51 = v42;
          v52 = 0;
          goto LABEL_151;
        }
      }

      else
      {

        sub_1D62B753C(0, v42, v215, v44, v46, v45, 6u);
        if (v42)
        {
          goto LABEL_98;
        }
      }

      v105 = v44;
      v106 = v215;
      if (v215)
      {
        goto LABEL_100;
      }

      goto LABEL_150;
    }

    if (v47 != 9)
    {
      if (v47 == 10)
      {
        if (v43)
        {

          sub_1D62B753C(v43, v42, v215, v44, v46, v45, 0xAu);

          sub_1D6273544(a1, v43);
          if (v4)
          {
            goto LABEL_269;
          }

          if (v42)
          {
LABEL_63:

            sub_1D6273544(a1, v42);
            if (v4)
            {
LABEL_269:

              v197 = v43;
              v198 = v42;
              v199 = v215;
              v200 = v44;
              goto LABEL_285;
            }

            v82 = v44;

            v83 = v215;
            if (v215)
            {
LABEL_65:

              sub_1D6273544(a1, v83);
              if (!v4)
              {

                v50 = v43;
                v51 = v42;
                v52 = v83;
LABEL_175:
                v80 = v82;
                v119 = v210;
                v81 = v211;
                v120 = 10;
                goto LABEL_192;
              }

              v197 = v43;
              v198 = v42;
              v199 = v83;
              v200 = v82;
LABEL_285:
              v203 = v210;
              v201 = v211;
              v204 = 10;
              goto LABEL_304;
            }

LABEL_174:
            v50 = v43;
            v51 = v42;
            v52 = 0;
            goto LABEL_175;
          }
        }

        else
        {

          sub_1D62B753C(0, v42, v215, v44, v46, v45, 0xAu);
          if (v42)
          {
            goto LABEL_63;
          }
        }

        v82 = v44;
        v83 = v215;
        if (v215)
        {
          goto LABEL_65;
        }

        goto LABEL_174;
      }

      if (v43)
      {

        sub_1D62B753C(v43, v42, v215, v44, v46, v45, 0xBu);

        sub_1D6273544(a1, v43);
        if (v4)
        {
          goto LABEL_272;
        }

        if (v42)
        {
LABEL_140:

          sub_1D6273544(a1, v42);
          if (v4)
          {
LABEL_272:

            v197 = v43;
            v198 = v42;
            v199 = v215;
            v200 = v44;
LABEL_281:
            v203 = v210;
            v201 = v211;
            v204 = 11;
            goto LABEL_304;
          }

          v117 = v44;

          v118 = v215;
          if (v215)
          {
            goto LABEL_142;
          }

          goto LABEL_190;
        }
      }

      else
      {

        sub_1D62B753C(0, v42, v215, v44, v46, v45, 0xBu);
        if (v42)
        {
          goto LABEL_140;
        }
      }

      v117 = v44;
      v118 = v215;
      if (v215)
      {
LABEL_142:

        sub_1D6273544(a1, v118);
        if (v4)
        {

          v197 = v43;
          v198 = v42;
          v199 = v118;
          v200 = v117;
          goto LABEL_281;
        }

        v50 = v43;
        v51 = v42;
        v52 = v118;
        goto LABEL_191;
      }

LABEL_190:
      v50 = v43;
      v51 = v42;
      v52 = 0;
LABEL_191:
      v80 = v117;
      v119 = v210;
      v81 = v211;
      v120 = 11;
      goto LABEL_192;
    }

    if (v43)
    {

      sub_1D62B753C(v43, v42, v215, v44, v46, v45, 9u);

      sub_1D6273544(a1, v43);
      if (v4)
      {
        goto LABEL_277;
      }

      if (v42)
      {
LABEL_112:

        sub_1D6273544(a1, v42);
        if (v4)
        {
LABEL_277:

          v197 = v43;
          v198 = v42;
          v199 = v215;
          v200 = v44;
          goto LABEL_297;
        }

        v109 = v44;

        v110 = v215;
        if (v215)
        {
LABEL_114:

          sub_1D6273544(a1, v110);
          if (!v4)
          {

            v50 = v43;
            v51 = v42;
            v52 = v110;
LABEL_159:
            v80 = v109;
            v119 = v210;
            v81 = v211;
            v120 = 9;
            goto LABEL_192;
          }

          v197 = v43;
          v198 = v42;
          v199 = v110;
          v200 = v109;
LABEL_297:
          v203 = v210;
          v201 = v211;
          v204 = 9;
          goto LABEL_304;
        }

LABEL_158:
        v50 = v43;
        v51 = v42;
        v52 = 0;
        goto LABEL_159;
      }
    }

    else
    {

      sub_1D62B753C(0, v42, v215, v44, v46, v45, 9u);
      if (v42)
      {
        goto LABEL_112;
      }
    }

    v109 = v44;
    v110 = v215;
    if (v215)
    {
      goto LABEL_114;
    }

    goto LABEL_158;
  }

  if (v47 <= 2)
  {
    if (v47)
    {
      if (v47 == 1)
      {
        if (v43)
        {

          sub_1D62B753C(v43, v42, v215, v44, v46, v45, 1u);

          sub_1D6273544(a1, v43);
          if (v4)
          {
            goto LABEL_268;
          }

          if (v42)
          {
LABEL_21:

            sub_1D6273544(a1, v42);
            if (!v4)
            {
              v48 = v44;

              v49 = v215;
              if (v215)
              {
                goto LABEL_23;
              }

LABEL_162:
              v50 = v43;
              v51 = v42;
              v52 = 0;
LABEL_163:
              v80 = v48;
              v119 = v210;
              v81 = v211;
              v120 = 1;
LABEL_192:
              sub_1D62B4A44(v50, v51, v52, v80, v81, v119, v120);
              v123 = *(v41 + 88);
              if (v123 != 255 && (v123 & 1) != 0)
              {
                v215 = v18;
                v124 = *(v41 + 72);
                v125 = *(v41 + 80);
                sub_1D6189668(v124, v125, v123);
                sub_1D6189668(v124, v125, v123);
                v126 = sub_1D5E26E28(&unk_1F51129D8);
                v127 = swift_allocObject();
                v210 = v125;
                v211 = v124;
                *(v127 + 16) = v124;
                *(v127 + 24) = v125;
                *(v127 + 32) = v126;
                *(v127 + 40) = 0;
                v128 = v127 | 0x3000000000000000;
                v129 = *a1;
                swift_beginAccess();
                v130 = *(v129 + 16);
                v131 = *(v130 + 16);
                if (v131 && (v132 = *(v130 + 8 * v131 + 24), , v134 = sub_1D60E14A8(v132, v128, v133), , (v134 & 1) != 0))
                {

                  v135 = v210;
                }

                else
                {
                  v136 = v216;
                  v137 = swift_isUniquelyReferenced_nonNull_native();
                  v138 = *v136;
                  if ((v137 & 1) == 0)
                  {
                    sub_1D5B4B554(0, &qword_1EC880338, &type metadata for FormatDerivedData._$CopyOnWriteStorage, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E6B60]);
                    v191 = swift_allocObject();
                    swift_beginAccess();
                    v192 = v138[2];
                    __dst = v138[1];
                    v235 = v192;
                    *v236 = v138[3];
                    *&v236[14] = *(v138 + 62);
                    memmove((v191 + 16), v138 + 1, 0x3EuLL);
                    sub_1D5EB9AB0(&__dst, &v226);

                    *v216 = v191;
                    v138 = v191;
                  }

                  swift_beginAccess();
                  v139 = *(v138 + 2);
                  v140 = swift_isUniquelyReferenced_nonNull_native();
                  *(v138 + 2) = v139;
                  if ((v140 & 1) == 0)
                  {
                    v139 = sub_1D698F848(0, *(v139 + 2) + 1, 1, v139);
                    *(v138 + 2) = v139;
                  }

                  v142 = *(v139 + 2);
                  v141 = *(v139 + 3);
                  if (v142 >= v141 >> 1)
                  {
                    v193 = sub_1D698F848((v141 > 1), v142 + 1, 1, v139);
                    v143 = v128;
                    v139 = v193;
                  }

                  else
                  {
                    v143 = v128;
                  }

                  v135 = v210;
                  *(v139 + 2) = v142 + 1;
                  *&v139[8 * v142 + 32] = v143;
                  *(v138 + 2) = v139;
                  swift_endAccess();
                }

                sub_1D60107F0(v211, v135, v123);
                v18 = v215;
                a1 = v216;
              }

              v144 = *(v41 + 112);
              if (v144 != 255 && (v144 & 1) != 0)
              {
                v215 = v18;
                v145 = *(v41 + 96);
                v146 = *(v41 + 104);
                sub_1D6189668(v145, v146, v144);
                sub_1D6189668(v145, v146, v144);
                v147 = sub_1D5E26E28(&unk_1F5112A00);
                v148 = swift_allocObject();
                v210 = v146;
                v211 = v145;
                *(v148 + 16) = v145;
                *(v148 + 24) = v146;
                *(v148 + 32) = v147;
                *(v148 + 40) = 0;
                v149 = v148 | 0x3000000000000000;
                v150 = *a1;
                swift_beginAccess();
                v151 = *(v150 + 16);
                v152 = *(v151 + 16);
                if (v152 && (v153 = *(v151 + 8 * v152 + 24), , v155 = sub_1D60E14A8(v153, v149, v154), , (v155 & 1) != 0))
                {

                  v156 = v210;
                }

                else
                {
                  v157 = v216;
                  v158 = swift_isUniquelyReferenced_nonNull_native();
                  v159 = *v157;
                  if ((v158 & 1) == 0)
                  {
                    sub_1D5B4B554(0, &qword_1EC880338, &type metadata for FormatDerivedData._$CopyOnWriteStorage, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E6B60]);
                    v194 = swift_allocObject();
                    swift_beginAccess();
                    v195 = v159[2];
                    __dst = v159[1];
                    v235 = v195;
                    *v236 = v159[3];
                    *&v236[14] = *(v159 + 62);
                    memmove((v194 + 16), v159 + 1, 0x3EuLL);
                    sub_1D5EB9AB0(&__dst, &v226);

                    *v216 = v194;
                    v159 = v194;
                  }

                  swift_beginAccess();
                  v160 = *(v159 + 2);
                  v161 = swift_isUniquelyReferenced_nonNull_native();
                  *(v159 + 2) = v160;
                  if ((v161 & 1) == 0)
                  {
                    v160 = sub_1D698F848(0, *(v160 + 2) + 1, 1, v160);
                    *(v159 + 2) = v160;
                  }

                  v163 = *(v160 + 2);
                  v162 = *(v160 + 3);
                  if (v163 >= v162 >> 1)
                  {
                    v196 = sub_1D698F848((v162 > 1), v163 + 1, 1, v160);
                    v164 = v149;
                    v160 = v196;
                  }

                  else
                  {
                    v164 = v149;
                  }

                  v156 = v210;
                  *(v160 + 2) = v163 + 1;
                  *&v160[8 * v163 + 32] = v164;
                  *(v159 + 2) = v160;
                  swift_endAccess();
                }

                sub_1D60107F0(v211, v156, v144);
                v18 = v215;
                a1 = v216;
              }

              v165 = *(v41 + 200);
              v166 = *(v41 + 232);
              v232 = *(v41 + 216);
              v233[0] = v166;
              *(v233 + 9) = *(v41 + 241);
              v167 = *(v41 + 136);
              v168 = *(v41 + 168);
              v228 = *(v41 + 152);
              v229 = v168;
              v230 = *(v41 + 184);
              v231 = v165;
              v226 = *(v41 + 120);
              v227 = v167;
              memmove(&__dst, (v41 + 120), 0x89uLL);
              if (sub_1D60486AC(&__dst) == 1)
              {

                goto LABEL_244;
              }

              v169 = __dst;
              if (__dst)
              {
                sub_1D62B5354(&v226, &v218, &qword_1EDF10BF0, &type metadata for FormatMediaTiming);
                sub_1D6273544(a1, v169);
                if (v4)
                {
                  goto LABEL_254;
                }

                v170 = *(&__dst + 1);
                if (!*(&__dst + 1))
                {
                  goto LABEL_226;
                }
              }

              else
              {
                sub_1D62B5354(&v226, &v218, &qword_1EDF10BF0, &type metadata for FormatMediaTiming);
                v170 = *(&__dst + 1);
                if (!*(&__dst + 1))
                {
                  goto LABEL_226;
                }
              }

              sub_1D6273544(a1, v170);
              if (v4)
              {
                goto LABEL_254;
              }

LABEL_226:
              if (v235)
              {
                sub_1D6273544(a1, v235);
                if (v4)
                {
                  goto LABEL_254;
                }
              }

              if (*(&v235 + 1))
              {
                sub_1D6273544(a1, *(&v235 + 1));
                if (v4)
                {
                  goto LABEL_254;
                }
              }

              if (*&v236[8])
              {
                sub_1D6273544(a1, *&v236[8]);
                if (v4)
                {
                  goto LABEL_254;
                }
              }

              if (*&v236[16])
              {
                sub_1D6273544(a1, *&v236[16]);
                if (v4)
                {
                  goto LABEL_254;
                }
              }

              v171 = v238;
              if (v238 != 255 && (v238 & 1) != 0)
              {
                v172 = *&v236[24];
                v173 = v237;
                sub_1D6189668(*&v236[24], v237, v238);
                sub_1D5C75A4C(v172, v173, 1);
                v174 = sub_1D5E26E28(&unk_1F50F4730);
                v175 = swift_allocObject();
                *(v175 + 16) = v172;
                *(v175 + 24) = v173;
                *(v175 + 32) = v174;
                *(v175 + 40) = 0;
                sub_1D6C4D24C(v175 | 0x3000000000000000);
                sub_1D60107F0(v172, v173, v171);
              }

              v176 = v243;
              if (v243 != 255 && (v243 & 1) != 0)
              {
                v215 = v18;
                v178 = v239;
                v177 = v240;
                v180 = v241;
                v179 = v242;
                sub_1D618903C(v239, v240, v241, v242, 1);
                v181 = v216;
                sub_1D6273544(v216, v178);
                if (v4)
                {
                  sub_1D62B4B50(v178, v177, v180, v179, v176);

                  sub_1D5D0ABCC(&v226, &qword_1EDF10BF0, &type metadata for FormatMediaTiming);
                  goto LABEL_305;
                }

                sub_1D6273544(v181, v177);
                sub_1D6273544(v181, v180);
                sub_1D6273544(v181, v179);
                v4 = 0;
                sub_1D62B4B50(v178, v177, v180, v179, v176);
              }

              v182 = v246;
              if (v246 == 255 || (v246 & 1) == 0)
              {

                sub_1D5D0ABCC(&v226, &qword_1EDF10BF0, &type metadata for FormatMediaTiming);

                a1 = v216;
              }

              else
              {
                v183 = v244;
                v184 = v245;
                sub_1D6189668(v244, v245, v246);
                sub_1D5C75A4C(v183, v184, 1);
                v185 = sub_1D5E26E28(&unk_1F50F4758);
                v186 = swift_allocObject();
                *(v186 + 16) = v183;
                *(v186 + 24) = v184;
                *(v186 + 32) = v185;
                *(v186 + 40) = 0;
                v187 = v216;
                sub_1D6C4D24C(v186 | 0x3000000000000000);
                v188 = v182;
                a1 = v187;
                sub_1D60107F0(v183, v184, v188);

                sub_1D5D0ABCC(&v226, &qword_1EDF10BF0, &type metadata for FormatMediaTiming);
LABEL_244:
              }

              v7 = v214;
              v16 = v212;
              goto LABEL_5;
            }

LABEL_268:

            v197 = v43;
            v198 = v42;
            v199 = v215;
            v200 = v44;
LABEL_289:
            v203 = v210;
            v201 = v211;
            v204 = 1;
            goto LABEL_304;
          }
        }

        else
        {

          sub_1D62B753C(0, v42, v215, v44, v46, v45, 1u);
          if (v42)
          {
            goto LABEL_21;
          }
        }

        v48 = v44;
        v49 = v215;
        if (!v215)
        {
          goto LABEL_162;
        }

LABEL_23:

        sub_1D6273544(a1, v49);
        if (!v4)
        {

          v50 = v43;
          v51 = v42;
          v52 = v49;
          goto LABEL_163;
        }

        v197 = v43;
        v198 = v42;
        v199 = v49;
        v200 = v48;
        goto LABEL_289;
      }

      if (v43)
      {

        sub_1D62B753C(v43, v42, v215, v44, v46, v45, 2u);

        sub_1D6273544(a1, v43);
        if (v4)
        {
          goto LABEL_270;
        }

        if (v42)
        {
LABEL_119:

          sub_1D6273544(a1, v42);
          if (!v4)
          {
            v111 = v44;

            v112 = v215;
            if (v215)
            {
              goto LABEL_121;
            }

LABEL_178:
            v50 = v43;
            v51 = v42;
            v52 = 0;
LABEL_179:
            v80 = v111;
            v119 = v210;
            v81 = v211;
            v120 = 2;
            goto LABEL_192;
          }

LABEL_270:

          v197 = v43;
          v198 = v42;
          v199 = v215;
          v200 = v44;
          goto LABEL_287;
        }
      }

      else
      {

        sub_1D62B753C(0, v42, v215, v44, v46, v45, 2u);
        if (v42)
        {
          goto LABEL_119;
        }
      }

      v111 = v44;
      v112 = v215;
      if (!v215)
      {
        goto LABEL_178;
      }

LABEL_121:

      sub_1D6273544(a1, v112);
      if (!v4)
      {

        v50 = v43;
        v51 = v42;
        v52 = v112;
        goto LABEL_179;
      }

      v197 = v43;
      v198 = v42;
      v199 = v112;
      v200 = v111;
LABEL_287:
      v203 = v210;
      v201 = v211;
      v204 = 2;
      goto LABEL_304;
    }

    if (v43)
    {

      sub_1D62B753C(v43, v42, v215, v44, v46, v45, 0);

      sub_1D6273544(a1, v43);
      if (v4)
      {
        goto LABEL_274;
      }

      if (v42)
      {
LABEL_91:

        sub_1D6273544(a1, v42);
        if (!v4)
        {
          v103 = v44;

          v104 = v215;
          if (v215)
          {
            goto LABEL_93;
          }

LABEL_146:
          v50 = v43;
          v51 = v42;
          v52 = 0;
LABEL_147:
          v80 = v103;
          v119 = v210;
          v81 = v211;
          v120 = 0;
          goto LABEL_192;
        }

LABEL_274:

        v197 = v43;
        v198 = v42;
        v199 = v215;
        v200 = v44;
        goto LABEL_291;
      }
    }

    else
    {

      sub_1D62B753C(0, v42, v215, v44, v46, v45, 0);
      if (v42)
      {
        goto LABEL_91;
      }
    }

    v103 = v44;
    v104 = v215;
    if (!v215)
    {
      goto LABEL_146;
    }

LABEL_93:

    sub_1D6273544(a1, v104);
    if (!v4)
    {

      v50 = v43;
      v51 = v42;
      v52 = v104;
      goto LABEL_147;
    }

    v197 = v43;
    v198 = v42;
    v199 = v104;
    v200 = v103;
LABEL_291:
    v203 = v210;
    v201 = v211;
    v204 = 0;
    goto LABEL_304;
  }

  if (v47 == 3)
  {
    if (v43)
    {

      sub_1D62B753C(v43, v42, v215, v44, v46, v45, 3u);

      sub_1D6273544(a1, v43);
      if (v4)
      {
        goto LABEL_271;
      }

      if (v42)
      {
LABEL_105:

        sub_1D6273544(a1, v42);
        if (v4)
        {
LABEL_271:

          v197 = v43;
          v198 = v42;
          v199 = v215;
          v200 = v44;
          goto LABEL_283;
        }

        v107 = v44;

        v108 = v215;
        if (v215)
        {
LABEL_107:

          sub_1D6273544(a1, v108);
          if (!v4)
          {

            v50 = v43;
            v51 = v42;
            v52 = v108;
LABEL_155:
            v80 = v107;
            v119 = v210;
            v81 = v211;
            v120 = 3;
            goto LABEL_192;
          }

          v197 = v43;
          v198 = v42;
          v199 = v108;
          v200 = v107;
LABEL_283:
          v203 = v210;
          v201 = v211;
          v204 = 3;
          goto LABEL_304;
        }

LABEL_154:
        v50 = v43;
        v51 = v42;
        v52 = 0;
        goto LABEL_155;
      }
    }

    else
    {

      sub_1D62B753C(0, v42, v215, v44, v46, v45, 3u);
      if (v42)
      {
        goto LABEL_105;
      }
    }

    v107 = v44;
    v108 = v215;
    if (v215)
    {
      goto LABEL_107;
    }

    goto LABEL_154;
  }

  if (v47 == 4)
  {
    v206 = v43;
    if (v43)
    {

      v72 = v46;
      v73 = v45;
      sub_1D62B753C(v43, v42, v215, v44, v72, v45, 4u);
      sub_1D5D615EC(v43, v42);
      sub_1D6273544(a1, v43);
      if (!v4)
      {
        sub_1D6273544(a1, v42);
        v4 = 0;
        v74 = v43;
        v75 = v44;
        sub_1D5CDE22C(v74, v42);
        v76 = v215;
        if (v215)
        {
          goto LABEL_54;
        }

LABEL_169:
        v44 = v75;
        v78 = v206;
        v79 = v211;
        if (!v211)
        {
LABEL_170:
          v50 = v78;
          v51 = v42;
          v52 = v215;
          v80 = v44;
          v81 = 0;
          goto LABEL_171;
        }

LABEL_56:
        v205 = v44;

        sub_1D6273544(a1, v79);
        if (!v4)
        {
          sub_1D6273544(a1, v73);
          v4 = 0;
          sub_1D5CDE22C(v79, v73);
          v50 = v78;
          v51 = v42;
          v52 = v215;
          v80 = v205;
          v81 = v79;
LABEL_171:
          v119 = v73;
          v120 = 4;
          goto LABEL_192;
        }

        sub_1D5CDE22C(v79, v73);

        v197 = v78;
        v198 = v42;
        v199 = v215;
        v200 = v205;
        v201 = v79;
LABEL_303:
        v203 = v73;
        v204 = 4;
        goto LABEL_304;
      }

      sub_1D5CDE22C(v43, v42);

      v197 = v43;
      v198 = v42;
      v199 = v215;
    }

    else
    {

      v121 = v44;
      v76 = v215;
      v75 = v121;
      v122 = v46;
      v73 = v45;
      sub_1D62B753C(0, v42, v215, v121, v122, v45, 4u);
      if (!v76)
      {
        goto LABEL_169;
      }

LABEL_54:
      v77 = v76;

      v44 = v75;

      sub_1D6273544(a1, v77);
      if (!v4)
      {
        sub_1D6273544(a1, v75);
        v4 = 0;
        v78 = v206;
        sub_1D5CDE22C(v215, v44);
        v79 = v211;
        if (!v211)
        {
          goto LABEL_170;
        }

        goto LABEL_56;
      }

      v202 = v215;
      sub_1D5CDE22C(v215, v75);

      v197 = v206;
      v198 = v42;
      v199 = v202;
    }

    v200 = v44;
    v201 = v211;
    goto LABEL_303;
  }

  if (!v43)
  {

    sub_1D62B753C(0, v42, v215, v44, v46, v45, 5u);
    if (v42)
    {
      goto LABEL_133;
    }

LABEL_185:
    v115 = v44;
    v116 = v215;
    if (v215)
    {
      goto LABEL_135;
    }

    goto LABEL_186;
  }

  sub_1D62B753C(v43, v42, v215, v44, v46, v45, 5u);

  sub_1D6273544(a1, v43);
  if (v4)
  {
    goto LABEL_275;
  }

  if (!v42)
  {
    goto LABEL_185;
  }

LABEL_133:

  sub_1D6273544(a1, v42);
  if (v4)
  {
LABEL_275:

    v197 = v43;
    v198 = v42;
    v199 = v215;
    v200 = v44;
    goto LABEL_295;
  }

  v115 = v44;

  v116 = v215;
  if (!v215)
  {
LABEL_186:
    v50 = v43;
    v51 = v42;
    v52 = 0;
    goto LABEL_187;
  }

LABEL_135:

  sub_1D6273544(a1, v116);
  if (!v4)
  {

    v50 = v43;
    v51 = v42;
    v52 = v116;
LABEL_187:
    v80 = v115;
    v119 = v210;
    v81 = v211;
    v120 = 5;
    goto LABEL_192;
  }

  v197 = v43;
  v198 = v42;
  v199 = v116;
  v200 = v115;
LABEL_295:
  v203 = v210;
  v201 = v211;
  v204 = 5;
LABEL_304:
  sub_1D62B4A44(v197, v198, v199, v200, v201, v203, v204);
LABEL_305:
}

void sub_1D6272D88(uint64_t *a1, uint64_t a2)
{
  v21 = *(a2 + 16);
  if (v21)
  {
    v4 = 0;
    v5 = a2 + 32;
    p_superclass = &OBJC_METACLASS____TtC8NewsFeed20SavingCommandHandler.superclass;
    v20 = a2 + 32;
    while (1)
    {
      v7 = (v5 + 56 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = v7[5];
      v11 = p_superclass[355];
      swift_bridgeObjectRetain_n();
      v25 = v10;

      if (v11 != -1)
      {
        swift_once();
      }

      v22[0] = v9;
      v22[1] = v8;
      v12 = sub_1D6844380(v22);
      v13 = *(v12 + 16);
      if (v13)
      {
        break;
      }

LABEL_10:

      if (v25)
      {
        sub_1D62707E8(a1, v25, v19);

        if (v2)
        {
LABEL_17:

          return;
        }
      }

      else
      {
      }

      ++v4;

      v5 = v20;
      p_superclass = (&OBJC_METACLASS____TtC8NewsFeed20SavingCommandHandler + 8);
      if (v4 == v21)
      {
        return;
      }
    }

    v14 = 0;
    v15 = 32;
    while (v14 < *(v12 + 16))
    {
      v16 = *(v12 + v15);
      v17 = *(v12 + v15 + 16);
      v18 = *(v12 + v15 + 32);
      v24 = *(v12 + v15 + 48);
      v23[1] = v17;
      v23[2] = v18;
      v23[0] = v16;
      sub_1D5E3B610(v23, v22);
      sub_1D6844F60(a1);
      if (v2)
      {

        sub_1D5E3B66C(v23);

        goto LABEL_17;
      }

      ++v14;
      sub_1D5E3B66C(v23);
      v15 += 56;
      if (v13 == v14)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1D6272F68(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = result;
    for (i = (a2 + 64); ; i += 6)
    {
      v7 = *(i - 2);
      v6 = *(i - 1);
      v8 = *i;

      sub_1D5CFCFAC(v6);
      sub_1D5CFCFAC(v8);

      sub_1D6EE4610(v4);
      if (v2)
      {
        break;
      }

      if (v7)
      {
        sub_1D6273544(v4, v7);
      }

      if ((~v6 & 0xF000000000000007) != 0)
      {

        sub_1D62895DC(v4);
      }

      if ((~v8 & 0xF000000000000007) != 0)
      {

        sub_1D62895DC(v4);
      }

      else
      {
      }

      sub_1D5C84FF4(v6);
      result = sub_1D5C84FF4(v8);
      if (!--v3)
      {
        return result;
      }
    }

    sub_1D5C84FF4(v6);
    return sub_1D5C84FF4(v8);
  }

  return result;
}

uint64_t sub_1D6273154(uint64_t result, uint64_t a2)
{
  v3 = v2;
  v20 = *(a2 + 16);
  if (v20)
  {
    v4 = result;
    v5 = 0;
    v21 = a2 + 32;
    while (1)
    {
      v6 = v21 + 40 * v5;
      v7 = *v6;
      v8 = *(v6 + 8);
      v10 = *(v6 + 16);
      v9 = *(v6 + 24);
      v11 = *(v6 + 32);

      v22 = v10;
      v26 = v11;
      sub_1D5ED34B0(v10, v9, v11);
      v12 = qword_1EDF2AB18;

      if (v12 != -1)
      {
        swift_once();
      }

      v23[0] = v7;
      v23[1] = v8;
      result = sub_1D6844380(v23);
      v13 = result;
      v14 = *(result + 16);
      if (v14)
      {
        break;
      }

LABEL_3:
      ++v5;
      swift_bridgeObjectRelease_n();

      result = sub_1D5ED348C(v22, v9, v26);
      if (v5 == v20)
      {
        return result;
      }
    }

    v15 = 0;
    v16 = 32;
    while (v15 < *(v13 + 16))
    {
      v17 = *(v13 + v16);
      v18 = *(v13 + v16 + 16);
      v19 = *(v13 + v16 + 32);
      v25 = *(v13 + v16 + 48);
      v24[1] = v18;
      v24[2] = v19;
      v24[0] = v17;
      sub_1D5E3B610(v24, v23);
      sub_1D6844F60(v4);
      if (v3)
      {

        sub_1D5E3B66C(v24);
        swift_bridgeObjectRelease_n();
        return sub_1D5ED348C(v22, v9, v26);
      }

      ++v15;
      result = sub_1D5E3B66C(v24);
      v16 += 56;
      if (v14 == v15)
      {
        goto LABEL_3;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_1D627331C(unint64_t result, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = result;
    v5 = (a2 + 40);
    v11 = result;
    do
    {
      v7 = v5[1];
      v6 = v5[2];
      v8 = v5[4];

      sub_1D5CFCFAC(v7);
      sub_1D5CFCFAC(v6);
      sub_1D5D0A59C(v8);

      sub_1D6EE4610(v4);
      if (v2)
      {

        sub_1D5C84FF4(v7);
        sub_1D5C84FF4(v6);
        return sub_1D5D0A5AC(v8);
      }

      if ((~v7 & 0xF000000000000007) != 0)
      {

        sub_1D62895DC(v4);
      }

      if ((~v6 & 0xF000000000000007) != 0)
      {

        sub_1D62895DC(v4);
      }

      if (v8 >= 2)
      {
        if (v8 == 2)
        {
          goto LABEL_4;
        }

        v9 = *(v8 + 16);
        v10 = *(v8 + 24);
        sub_1D5D0A59C(v8);
        sub_1D5D0A57C(v9);
        sub_1D5D0A57C(v10);
        sub_1D62886C0(v11, v9, v10);
        sub_1D5D0A58C(v9);
        sub_1D5D0A58C(v10);
        v4 = v11;
      }

      sub_1D5D0A5AC(v8);
LABEL_4:
      v5 += 6;

      sub_1D5C84FF4(v7);
      sub_1D5C84FF4(v6);
      result = sub_1D5D0A5AC(v8);
      --v3;
    }

    while (v3);
  }

  return result;
}

void sub_1D6273544(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = v3 - 1;
    v5 = (a2 + 40);
    if (*(a2 + 40))
    {
      goto LABEL_4;
    }

LABEL_3:
    v6 = *(v5 - 1);
    sub_1D62B72CC(v6, 0);

    sub_1D6012F58();
    sub_1D62B72BC(v6, 0);

    if (!v2)
    {
LABEL_4:
      while (v4)
      {
        --v4;
        v5 += 16;
        if ((*v5 & 1) == 0)
        {
          goto LABEL_3;
        }
      }
    }
  }
}

void sub_1D6273600(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (!v3)
  {
    return;
  }

  v5 = (a2 + 32);
  while (1)
  {
    v7 = *v5++;
    v6 = v7;
    v8 = v7 >> 61;
    v9 = (v7 >> 61) >= 2;
    if ((v7 >> 61) <= 2)
    {
      break;
    }

    if (v8 == 3)
    {
      sub_1D5ECF0E0(v6);

      sub_1D62895DC(a1);
      if (v2)
      {
        goto LABEL_33;
      }

      goto LABEL_18;
    }

    if (v8 == 4)
    {

      sub_1D5ECF0E0(v6);

      sub_1D62895DC(a1);
      if (v2)
      {

        goto LABEL_34;
      }

LABEL_18:
      sub_1D5ECF11C(v6);
    }

LABEL_4:
    if (!--v3)
    {
      return;
    }
  }

  if (!v9)
  {
    goto LABEL_4;
  }

  v11 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v10 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
  v12 = v11 >> 61;
  if ((v11 >> 61) <= 1 || v12 == 2 || v12 == 3)
  {
    sub_1D5ECF0E0(v6);

    goto LABEL_14;
  }

  v13 = a1;
  v14 = *((v11 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
  sub_1D5ECF0E0(v6);

  v22 = a1;
  sub_1D62895DC(a1);
  if (!v2)
  {

    if ((v14 & 0x8000000000000000) == 0)
    {
LABEL_21:
      a1 = v13;
      goto LABEL_14;
    }

    v15 = *((v14 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);

    sub_1D62895DC(v13);

    if (v15 < 0 && (v16 = *((v15 & 0x1FFFFFFFFFFFFFFFLL) + 0x18), , sub_1D62895DC(v13), , v16 < 0) && (v17 = *((v16 & 0x1FFFFFFFFFFFFFFFLL) + 0x18), , sub_1D62895DC(v13), , v17 < 0) && (v18 = *((v17 & 0x1FFFFFFFFFFFFFFFLL) + 0x18), , sub_1D62895DC(v13), , v18 < 0) && (v19 = *((v18 & 0x1FFFFFFFFFFFFFFFLL) + 0x18), , sub_1D62895DC(v13), , v19 < 0) && (v20 = *((v19 & 0x1FFFFFFFFFFFFFFFLL) + 0x18), , sub_1D62895DC(v13), , v20 < 0))
    {
      v21 = *((v20 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);

      sub_1D62895DC(v13);

      if ((v21 & 0x8000000000000000) == 0)
      {
        goto LABEL_21;
      }

      a1 = v22;
      sub_1D62895DC(v22);

      sub_1D628DB94(v22);
    }

    else
    {
      a1 = v13;
    }

LABEL_14:
    sub_1D6273600(a1, v10);

    sub_1D5ECF11C(v6);
    if (v2)
    {
      return;
    }

    goto LABEL_4;
  }

LABEL_33:

LABEL_34:
  sub_1D5ECF11C(v6);
}

void sub_1D6273A6C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t))
{
  v23 = *(a2 + 16);
  if (v23)
  {
    v5 = 0;
    v6 = a2 + 32;
    p_superclass = &OBJC_METACLASS____TtC8NewsFeed20SavingCommandHandler.superclass;
    v22 = a2 + 32;
    while (1)
    {
      v8 = (v6 + 24 * v5);
      v9 = *v8;
      v10 = v8[1];
      v24 = v8[2];
      v11 = p_superclass[355];
      swift_bridgeObjectRetain_n();
      v28 = v24 & 0x7FFFFFFFFFFFFFFFLL;

      if (v11 != -1)
      {
        swift_once();
      }

      v25[0] = v9;
      v25[1] = v10;
      v12 = sub_1D6844380(v25);
      v13 = *(v12 + 16);
      if (v13)
      {
        break;
      }

LABEL_10:

      if (v24 < 0)
      {
        v19 = *(v28 + 16);
        v20 = *(v28 + 24);

        a3(a1, v19, v20);

        if (v3)
        {
          return;
        }
      }

      else
      {
      }

      ++v5;
      v6 = v22;
      p_superclass = (&OBJC_METACLASS____TtC8NewsFeed20SavingCommandHandler + 8);
      if (v5 == v23)
      {
        return;
      }
    }

    v14 = 0;
    v15 = 32;
    while (v14 < *(v12 + 16))
    {
      v16 = *(v12 + v15);
      v17 = *(v12 + v15 + 16);
      v18 = *(v12 + v15 + 32);
      v27 = *(v12 + v15 + 48);
      v26[1] = v17;
      v26[2] = v18;
      v26[0] = v16;
      sub_1D5E3B610(v26, v25);
      sub_1D6844F60(a1);
      if (v3)
      {

        sub_1D5E3B66C(v26);

        swift_bridgeObjectRelease_n();
        return;
      }

      ++v14;
      sub_1D5E3B66C(v26);
      v15 += 56;
      if (v13 == v14)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1D6273C90(uint64_t result, uint64_t a2)
{
  v3 = v2;
  v24 = *(a2 + 16);
  if (v24)
  {
    v4 = result;
    v5 = 0;
    v6 = a2 + 32;
    p_superclass = &OBJC_METACLASS____TtC8NewsFeed20SavingCommandHandler.superclass;
    v23 = a2 + 32;
    while (1)
    {
      v8 = (v6 + 24 * v5);
      v9 = *v8;
      v10 = v8[1];
      v11 = v8[2];

      v28 = v11;
      sub_1D5D0A57C(v11);
      v12 = p_superclass[355];

      if (v12 != -1)
      {
        swift_once();
      }

      v25[0] = v9;
      v25[1] = v10;
      result = sub_1D6844380(v25);
      v13 = result;
      v14 = *(result + 16);
      if (v14)
      {
        break;
      }

LABEL_10:

      v20 = v28;
      if (v28 >= 2)
      {
        v22 = *(v28 + 16);
        v21 = *(v28 + 24);
        sub_1D5D0A57C(v22);

        sub_1D6288CD4(v4, v22, v21);
        sub_1D5D0A58C(v22);
        if (v3)
        {
LABEL_16:

          return sub_1D5D0A58C(v20);
        }
      }

      ++v5;

      result = sub_1D5D0A58C(v20);
      v6 = v23;
      p_superclass = (&OBJC_METACLASS____TtC8NewsFeed20SavingCommandHandler + 8);
      if (v5 == v24)
      {
        return result;
      }
    }

    v15 = 0;
    v16 = 32;
    while (v15 < *(v13 + 16))
    {
      v17 = *(v13 + v16);
      v18 = *(v13 + v16 + 16);
      v19 = *(v13 + v16 + 32);
      v27 = *(v13 + v16 + 48);
      v26[1] = v18;
      v26[2] = v19;
      v26[0] = v17;
      sub_1D5E3B610(v26, v25);
      sub_1D6844F60(v4);
      if (v3)
      {

        sub_1D5E3B66C(v26);
        v20 = v28;
        goto LABEL_16;
      }

      ++v15;
      result = sub_1D5E3B66C(v26);
      v16 += 56;
      if (v14 == v15)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D6273EA4(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (!v3)
  {
    return result;
  }

  v4 = result;
  for (i = (a2 + 48); ; i += 3)
  {
    v7 = *(i - 2);
    v6 = *(i - 1);
    v8 = *i;
    if ((~v7 & 0xF000000000000007) == 0)
    {
      sub_1D5CFCFAC(*(i - 2));
      sub_1D5D04BD4(v6);
      sub_1D5D04BD4(v8);
      if ((~v6 & 0xF000000000000007) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    sub_1D5CFCFAC(v7);
    sub_1D5D04BD4(v6);
    sub_1D5D04BD4(v8);
    sub_1D5CFCFAC(v7);
    sub_1D62895DC(v4);
    if (v2)
    {
      break;
    }

    if ((~v6 & 0xF000000000000007) == 0)
    {
      goto LABEL_11;
    }

LABEL_10:

    sub_1D6012F58();

    if (v2)
    {
      goto LABEL_15;
    }

LABEL_11:
    if ((~v8 & 0xF000000000000007) != 0)
    {

      sub_1D6012F58();

      sub_1D5C84FF4(v7);
      sub_1D5C8500C(v6);
      result = sub_1D5C8500C(v8);
      if (v2)
      {
        return result;
      }
    }

    else
    {
      sub_1D5C84FF4(v7);
      sub_1D5C8500C(v6);
      result = sub_1D5C8500C(v8);
    }

    if (!--v3)
    {
      return result;
    }
  }

LABEL_15:
  sub_1D5C84FF4(v7);
  sub_1D5C8500C(v6);
  return sub_1D5C8500C(v8);
}

uint64_t *sub_1D6274044(uint64_t *result, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = result;
    v5 = (a2 + 32);
    while (1)
    {
      v6 = *v5++;
      sub_1D5CFEC98(v6);
      sub_1D6285678(v4);
      v7 = v6;
      if (v2)
      {
        break;
      }

      result = sub_1D5CFED88(v7);
      if (!--v3)
      {
        return result;
      }
    }

    return sub_1D5CFED88(v7);
  }

  return result;
}

void sub_1D62740D0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v24 = *(a2 + 16);
  if (!v24)
  {
    return;
  }

  v5 = 0;
  v6 = a2 + 32;
  p_superclass = &OBJC_METACLASS____TtC8NewsFeed20SavingCommandHandler.superclass;
  v23 = a2 + 32;
  while (1)
  {
    v8 = (v6 + 24 * v5);
    v9 = *v8;
    v10 = v8[1];
    v11 = v8[2];

    v28 = v11;
    sub_1D5EB1500(v11);
    v12 = p_superclass[355];

    if (v12 != -1)
    {
      swift_once();
    }

    v25[0] = v9;
    v25[1] = v10;
    v13 = sub_1D6844380(v25);
    v14 = *(v13 + 16);
    if (v14)
    {
      break;
    }

LABEL_10:

    v20 = v28;
    if (v28 >> 62)
    {
      if (v28 >> 62 != 1)
      {
        v6 = v23;
        p_superclass = (&OBJC_METACLASS____TtC8NewsFeed20SavingCommandHandler + 8);

        if (v20 != 0x8000000000000000)
        {
          v20 = 0x8000000000000008;
        }

        goto LABEL_17;
      }

      v22 = *((v28 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v21 = *((v28 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      sub_1D5EB1500(v22);

      sub_1D6288D68(a1, v22, v21);
      sub_1D5EB15C4(v22);
      if (v3)
      {
LABEL_20:

        sub_1D5EB15C4(v20);
        return;
      }
    }

    v6 = v23;
    p_superclass = (&OBJC_METACLASS____TtC8NewsFeed20SavingCommandHandler + 8);
LABEL_17:
    ++v5;
    sub_1D5EB15C4(v20);
    if (v5 == v24)
    {
      return;
    }
  }

  v15 = 0;
  v16 = 32;
  while (v15 < *(v13 + 16))
  {
    v17 = *(v13 + v16);
    v18 = *(v13 + v16 + 16);
    v19 = *(v13 + v16 + 32);
    v27 = *(v13 + v16 + 48);
    v26[1] = v18;
    v26[2] = v19;
    v26[0] = v17;
    sub_1D5E3B610(v26, v25);
    sub_1D6844F60(a1);
    if (v3)
    {

      sub_1D5E3B66C(v26);
      v20 = v28;
      goto LABEL_20;
    }

    ++v15;
    sub_1D5E3B66C(v26);
    v16 += 56;
    if (v14 == v15)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
}

void sub_1D6274320(uint64_t *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    for (i = (a2 + 32); ; i += 4)
    {
      v6 = i[1];
      *v19 = *i;
      *&v19[16] = v6;
      *&v19[32] = i[2];
      *&v19[43] = *(i + 43);
      *&v14[0] = *v19;
      sub_1D62B6438(v19, &v16, qword_1EDF2F000, type metadata accessor for FormatSwitchValue.CaseValue);

      sub_1D6285C00(a1, v7, v8, v9, v10, v11, v12, v13);
      if (v2)
      {
        break;
      }

      v16 = *&v19[8];
      v17 = *&v19[24];
      v18[0] = *&v19[40];
      *(v18 + 15) = *&v19[55];
      sub_1D5CF5DBC(&v19[8], v14);
      sub_1D629D254(a1);
      sub_1D62B7904(v19);
      v14[0] = v16;
      v14[1] = v17;
      v15[0] = v18[0];
      *(v15 + 15) = *(v18 + 15);
      sub_1D5CF603C(v14);
      if (!--v3)
      {
        return;
      }
    }

    sub_1D62B7904(v19);
  }
}

void *sub_1D62744A4(void *result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = result;
    v4 = (a2 + 49);
    v27 = result;
    do
    {
      if ((*v4 & 1) == 0)
      {
        v5 = *(v4 - 17);
        v6 = *(v4 - 9);
        v7 = *(v4 - 1);
        if (v7)
        {
          sub_1D5E04C58(*(v4 - 17), *(v4 - 9), *(v4 - 1), 0);
          sub_1D5E04C58(v5, v6, v7, 0);
          v8 = sub_1D5E26E28(&unk_1F50F4538);
          v9 = swift_allocObject();
          v9[2] = v5;
          v9[3] = v6;
          v9[4] = v8;
          v9[5] = 0;
          v31 = v9;
          v10 = *v3;
          swift_beginAccess();
          v11 = *(v10 + 2);
          v12 = *(v11 + 16);
          if (v12 && (v13 = *(v11 + 8 * v12 + 24), v13 >> 60 == 3) && ((v14 = *((v13 & 0xFFFFFFFFFFFFFFFLL) + 0x20), v26 = *((v13 & 0xFFFFFFFFFFFFFFFLL) + 0x28), *((v13 & 0xFFFFFFFFFFFFFFFLL) + 0x10) == v5) ? (v15 = v6 == *((v13 & 0xFFFFFFFFFFFFFFFLL) + 0x18)) : (v15 = 0), (v15 || (sub_1D72646CC() & 1) != 0) && (sub_1D5E04C58(v5, v6, v7, 0), , , v16 = sub_1D5E1E5A4(v14, v8), sub_1D5E04C68(v5, v6, v7, 0), , , (v16 & 1) != 0) && !v26))
          {
          }

          else
          {
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v18 = *v3;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1D5B4B554(0, &qword_1EC880338, &type metadata for FormatDerivedData._$CopyOnWriteStorage, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E6B60]);
              v24 = swift_allocObject();
              swift_beginAccess();
              v25 = v18[2];
              v29[0] = v18[1];
              v29[1] = v25;
              v30[0] = v18[3];
              *(v30 + 14) = *(v18 + 62);
              memmove((v24 + 16), v18 + 1, 0x3EuLL);
              sub_1D5EB9AB0(v29, v28);

              *v3 = v24;
              v18 = v24;
            }

            swift_beginAccess();
            v19 = *(v18 + 2);
            v20 = swift_isUniquelyReferenced_nonNull_native();
            *(v18 + 2) = v19;
            if ((v20 & 1) == 0)
            {
              v19 = sub_1D698F848(0, *(v19 + 2) + 1, 1, v19);
              *(v18 + 2) = v19;
            }

            v22 = *(v19 + 2);
            v21 = *(v19 + 3);
            if (v22 >= v21 >> 1)
            {
              v19 = sub_1D698F848((v21 > 1), v22 + 1, 1, v19);
            }

            v23 = v31 | 0x3000000000000000;
            *(v19 + 2) = v22 + 1;
            *&v19[8 * v22 + 32] = v23;
            *(v18 + 2) = v19;
            swift_endAccess();
            v3 = v27;
          }
        }

        result = sub_1D5E04C68(v5, v6, v7, 0);
      }

      v4 += 24;
      --v2;
    }

    while (v2);
  }

  return result;
}

void sub_1D62747C4(uint64_t a1, uint64_t a2)
{
  v17 = *(a2 + 16);
  if (v17)
  {
    v4 = 0;
    v18 = a2 + 32;
    while (1)
    {
      v5 = (v18 + 32 * v4);
      v6 = *v5;
      v7 = v5[1];
      v8 = v5[3];
      v9 = qword_1EDF2AB18;
      swift_bridgeObjectRetain_n();
      v22 = v8;

      if (v9 != -1)
      {
        swift_once();
      }

      v19[0] = v6;
      v19[1] = v7;
      v10 = sub_1D6844380(v19);
      v11 = *(v10 + 16);
      if (v11)
      {
        break;
      }

LABEL_3:
      ++v4;

      swift_bridgeObjectRelease_n();

      if (v4 == v17)
      {
        return;
      }
    }

    v12 = 0;
    v13 = 32;
    while (v12 < *(v10 + 16))
    {
      v14 = *(v10 + v13);
      v15 = *(v10 + v13 + 16);
      v16 = *(v10 + v13 + 32);
      v21 = *(v10 + v13 + 48);
      v20[1] = v15;
      v20[2] = v16;
      v20[0] = v14;
      sub_1D5E3B610(v20, v19);
      sub_1D6844F60(a1);
      if (v2)
      {

        sub_1D5E3B66C(v20);

        swift_bridgeObjectRelease_n();
        return;
      }

      ++v12;
      sub_1D5E3B66C(v20);
      v13 += 56;
      if (v11 == v12)
      {
        goto LABEL_3;
      }
    }

    __break(1u);
  }
}

uint64_t *sub_1D627496C(uint64_t *result, uint64_t a2)
{
  v3 = v2;
  v4 = *(a2 + 16);
  if (!v4)
  {
    return result;
  }

  v5 = (a2 + 32);
  v243 = result;
  while (1)
  {
    v6 = v5[1];
    v237 = *v5;
    v238 = v6;
    v7 = v5[3];
    v239 = v5[2];
    v240 = v7;
    v8 = v5[5];
    v241 = v5[4];
    *v242 = v8;
    *&v242[10] = *(v5 + 90);
    v9 = *(&v237 + 1);
    v10 = v237;
    v12 = *(&v238 + 1);
    v11 = v238;
    v14 = *(&v239 + 1);
    v13 = v239;
    v15 = (*&v242[24] >> 12) & 3;
    v16 = v240;
    if (v15)
    {
      v219 = v241;
      v220 = *(&v240 + 1);
      v17 = *(&v241 + 1);
      v19 = *&v242[8];
      v18 = *&v242[16];
      v20 = v15 == 1;
      v222 = *&v242[24];
      v213 = *v242;
      v21 = v240 >> 14;
      if (v20)
      {
        if (v240 >> 14)
        {
          v205 = *&v242[8];
          if (v21 != 1)
          {
            v198 = *(&v241 + 1);
            v67 = v240;
            switch((v240 >> 7) & 0x7E | (v240 >> 3) & 1)
            {
              case 2u:
                v200 = *(&v238 + 1);
                v173 = v239;
                v174 = v238;
                v175 = v3;
                v176 = *(&v237 + 1);
                *&v236[10] = *(v5 + 90);
                v177 = v5[5];
                v235 = v5[4];
                *v236 = v177;
                v178 = v5[1];
                v232 = *v5;
                v233 = v178;
                v179 = v5[3];
                *v234 = v5[2];
                *&v234[16] = v179;
                *&v236[24] &= 0xCFFFu;
                sub_1D62B7260(&v232, &v226);
                if ((v67 & 0xF0) == 0x30)
                {
                  v232 = __PAIR128__(v176, v10);
                  LOWORD(v233) = v174;
                  sub_1D62921EC(v243);
                  if (v175)
                  {
                    return sub_1D60B2A74(&v237);
                  }
                }

                v63 = v220;
                *&v232 = v10;
                *(&v232 + 1) = v176;
                *&v233 = v174;
                *(&v233 + 1) = v200;
                *v234 = v173;
                v234[16] = v67 & 0xF7;
                v62 = v243;
                sub_1D6292190(v243);
                v3 = v175;
                if (v175)
                {
                  return sub_1D60B2A74(&v237);
                }

                v37 = v219;
                goto LABEL_30;
              case 3u:
              case 4u:
                v226 = v237;
                v227 = v238;
                v225 = 5;
                v218 = v3;
                v193 = *(&v237 + 1);
                v134 = v239;
                v135 = v238;
                v136 = *(&v239 + 1);
                sub_1D60B2AC8(&v237, &v232);
                v204 = v134;
                v212 = v136;
                sub_1D5E1DA6C(v10, v193, v135, v12, v134, v136, v16);

                v137 = sub_1D703E0C8(&v226, &v225);
                if (v218)
                {
                  goto LABEL_125;
                }

                v138 = v137;
                v208 = v18;
                v195 = v135;

                v139 = swift_allocObject();
                *(v139 + 16) = v10;
                *(v139 + 24) = v193;
                *(v139 + 32) = v138;
                *(v139 + 40) = 0;
                v140 = v139 | 0x3000000000000000;
                v141 = *v243;
                swift_beginAccess();
                v142 = *(v141 + 16);
                v143 = *(v142 + 16);
                if (v143 && (v144 = *(v142 + 8 * v143 + 24), , v146 = sub_1D60E14A8(v144, v140, v145), , (v146 & 1) != 0))
                {
                }

                else
                {
                  v163 = v243;
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  v165 = *v163;
                  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                  {
                    sub_1D5B4B554(0, &qword_1EC880338, &type metadata for FormatDerivedData._$CopyOnWriteStorage, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E6B60]);
                    v189 = swift_allocObject();
                    swift_beginAccess();
                    v190 = v165[2];
                    v232 = v165[1];
                    v233 = v190;
                    *v234 = v165[3];
                    *&v234[14] = *(v165 + 62);
                    memmove((v189 + 16), v165 + 1, 0x3EuLL);
                    sub_1D5EB9AB0(&v232, &v226);

                    *v163 = v189;
                    v165 = v189;
                  }

                  swift_beginAccess();
                  v166 = *(v165 + 2);
                  v167 = swift_isUniquelyReferenced_nonNull_native();
                  *(v165 + 2) = v166;
                  if ((v167 & 1) == 0)
                  {
                    v166 = sub_1D698F848(0, *(v166 + 2) + 1, 1, v166);
                    *(v165 + 2) = v166;
                  }

                  v169 = *(v166 + 2);
                  v168 = *(v166 + 3);
                  v170 = v169 + 1;
                  if (v169 >= v168 >> 1)
                  {
                    v191 = sub_1D698F848((v168 > 1), v169 + 1, 1, v166);
                    v170 = v169 + 1;
                    v166 = v191;
                  }

                  *(v166 + 2) = v170;
                  *&v166[8 * v169 + 32] = v140;
                  *(v165 + 2) = v166;
                  swift_endAccess();
                }

                *&v232 = v10;
                *(&v232 + 1) = v193;
                *&v233 = v195;
                LOBYTE(v226) = 5;
                sub_1D5E1DA6C(v10, v193, v195, v12, v204, v212, v16);

                v171 = sub_1D703E0C8(&v232, &v226);

                v172 = swift_allocObject();
                *(v172 + 16) = v10;
                *(v172 + 24) = v193;
                *(v172 + 32) = v171;
                *(v172 + 40) = 0;
                v62 = v243;
                sub_1D6C4D24C(v172 | 0x3000000000000000);

                v37 = v219;
                v63 = v220;
                v19 = v205;
                v18 = v208;
                v17 = v198;
                v3 = 0;
                break;
              default:
                *&v236[10] = *(v5 + 90);
                v68 = v5[5];
                v235 = v5[4];
                *v236 = v68;
                v69 = v5[1];
                v232 = *v5;
                v233 = v69;
                v70 = v5[3];
                *v234 = v5[2];
                *&v234[16] = v70;
                *&v236[24] &= 0xCFFFu;
                sub_1D62B7260(&v232, &v226);
                v62 = v243;
                v37 = v219;
                v63 = v220;
LABEL_30:
                v17 = v198;
                v19 = v205;
                break;
            }

            goto LABEL_60;
          }

          v207 = *&v242[16];
          v209 = v4;
          v226 = v237;
          v227 = v238;
          v225 = 5;
          v214 = v3;
          v22 = *(&v237 + 1);
          v23 = v238;
          v24 = v239;
          sub_1D60B2AC8(&v237, &v232);
          sub_1D5E1DA6C(v10, v22, v23, v12, v24, *(&v24 + 1), v16);
          v25 = sub_1D703E0C8(&v226, &v225);
          if (v214)
          {
            return sub_1D60B2A74(&v237);
          }

          v26 = v25;
          v27 = v17;
          v28 = swift_allocObject();
          *(v28 + 16) = v10;
          *(v28 + 24) = v22;
          *(v28 + 32) = v26;
          *(v28 + 40) = 0;
          v29 = v28 | 0x3000000000000000;
          v30 = *v243;
          swift_beginAccess();
          v31 = *(v30 + 16);
          v32 = *(v31 + 16);
          if (v32)
          {
            v33 = *(v31 + 8 * v32 + 24);

            v35 = sub_1D60E14A8(v33, v29, v34);

            v37 = v219;
            v36 = v220;
            if (v35)
            {
LABEL_26:

              v62 = v243;
              v19 = v205;
              v18 = v207;
              v17 = v27;
              v4 = v209;
              v63 = v36;
              v3 = 0;
LABEL_60:
              v103 = v222;
              if (!(v222 >> 14))
              {
                goto LABEL_4;
              }

              if (v222 >> 14 == 1)
              {
                *&v232 = v63;
                *(&v232 + 1) = v37;
                *&v233 = v17;
                LOBYTE(v226) = 5;
                sub_1D5E1DA6C(v63, v37, v17, v213, v19, v18, v222 & 0xFFFFCFFF);
                v104 = sub_1D703E0C8(&v232, &v226);
                if (v3)
                {
                  return sub_1D60B2A74(&v237);
                }

                v105 = v104;
                v106 = swift_allocObject();
                *(v106 + 16) = v63;
                *(v106 + 24) = v37;
                *(v106 + 32) = v105;
                *(v106 + 40) = 0;

                sub_1D6C4D24C(v106 | 0x3000000000000000);

                goto LABEL_4;
              }

              v211 = v4;
              if ((((v222 & 0xF00) >> 7) & 0xFFFFFFFE | (v222 >> 3) & 1) - 3 >= 2)
              {
                v216 = v3;
                v107 = v19;
              }

              else
              {
                *&v232 = v63;
                *(&v232 + 1) = v37;
                *&v233 = v17;
                LOBYTE(v226) = 5;
                v107 = v19;
                v108 = v19;
                v109 = v3;
                v110 = v18;
                sub_1D5E1DA6C(v63, v37, v17, v213, v108, v18, v222 & 0xFFFFCFFF);

                v111 = sub_1D703E0C8(&v232, &v226);
                if (v109)
                {
LABEL_121:

                  return sub_1D60B2A74(&v237);
                }

                v112 = v111;
                v216 = 0;

                v113 = swift_allocObject();
                *(v113 + 16) = v63;
                *(v113 + 24) = v37;
                *(v113 + 32) = v112;
                *(v113 + 40) = 0;
                sub_1D6C4D24C(v113 | 0x3000000000000000);

                v18 = v110;
                v103 = v222;
              }

              v114 = v103 & 0xFFF;
              *&v232 = v63;
              *(&v232 + 1) = v37;
              *&v233 = v17;
              *(&v233 + 1) = v213;
              *v234 = v107;
              *&v234[8] = v18;
              *&v234[16] = v103 & 0xFFF;
              sub_1D62099A8(v62);
              if (v216)
              {
                return sub_1D60B2A74(&v237);
              }

              *&v226 = v63;
              *(&v226 + 1) = v37;
              v227 = v17;
              v228 = v213;
              v229 = v107;
              v230 = v18;
              v231 = v114;
              sub_1D5FD697C(v62);
              v3 = 0;
              result = sub_1D60B2A74(&v237);
              v4 = v211;
              goto LABEL_5;
            }
          }

          else
          {
          }

          v87 = v243;
          v88 = swift_isUniquelyReferenced_nonNull_native();
          v89 = *v87;
          v3 = 0;
          if (v88)
          {
LABEL_55:
            v4 = v209;
            swift_beginAccess();
            v99 = *(v89 + 16);
            v100 = swift_isUniquelyReferenced_nonNull_native();
            *(v89 + 16) = v99;
            if ((v100 & 1) == 0)
            {
              v99 = sub_1D698F848(0, *(v99 + 2) + 1, 1, v99);
              *(v89 + 16) = v99;
            }

            v102 = *(v99 + 2);
            v101 = *(v99 + 3);
            if (v102 >= v101 >> 1)
            {
              v99 = sub_1D698F848((v101 > 1), v102 + 1, 1, v99);
            }

            *(v99 + 2) = v102 + 1;
            *&v99[8 * v102 + 32] = v29;
            *(v89 + 16) = v99;
            swift_endAccess();
            v62 = v243;
            v37 = v219;
            v19 = v205;
            v18 = v207;
            v17 = v27;
            v63 = v220;
            goto LABEL_60;
          }

LABEL_117:
          sub_1D5B4B554(0, &qword_1EC880338, &type metadata for FormatDerivedData._$CopyOnWriteStorage, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E6B60]);
          v185 = swift_allocObject();
          swift_beginAccess();
          v186 = *(v89 + 32);
          v232 = *(v89 + 16);
          v233 = v186;
          *v234 = *(v89 + 48);
          *&v234[14] = *(v89 + 62);
          memmove((v185 + 16), (v89 + 16), 0x3EuLL);
          sub_1D5EB9AB0(&v232, &v226);

          *v243 = v185;
          v89 = v185;
          goto LABEL_55;
        }
      }

      else if (v240 >> 14)
      {
        v203 = v239;
        v215 = v3;
        v207 = *&v242[16];
        if (v21 != 1)
        {
          v199 = *(&v238 + 1);
          v201 = v237;
          v80 = v240 & 0x3FFF;
          v210 = *(&v239 + 1);
          switch((v240 >> 7) & 0x7E | (v240 >> 3) & 1)
          {
            case 2u:
              v197 = v238;
              v84 = *(&v237 + 1);
              *&v236[10] = *(v5 + 90);
              v180 = v5[5];
              v235 = v5[4];
              *v236 = v180;
              v181 = v5[1];
              v232 = *v5;
              v233 = v181;
              v182 = v5[3];
              *v234 = v5[2];
              *&v234[16] = v182;
              *&v236[24] &= 0xCFFFu;
              sub_1D62B7260(&v232, &v226);
              if ((v16 & 0xF0) == 0x30)
              {
                v232 = __PAIR128__(v84, v201);
                LOWORD(v233) = v197;
                v62 = v243;
                sub_1D62921EC(v243);
                v63 = v220;
                if (v215)
                {
                  return sub_1D60B2A74(&v237);
                }

                v86 = v197;
              }

              else
              {
                v63 = v220;
                v62 = v243;
                v86 = v197;
              }

              break;
            case 3u:
            case 4u:
              v206 = *&v242[8];
              v226 = v237;
              v227 = v238;
              v225 = 5;
              v84 = *(&v237 + 1);
              v147 = v238;
              sub_1D60B2AC8(&v237, &v232);
              sub_1D5E1DA6C(v201, v84, v147, v12, v203, v210, v16);

              v148 = sub_1D703E0C8(&v226, &v225);
              if (v215)
              {
                goto LABEL_121;
              }

              v149 = v148;
              v196 = v147;

              v150 = swift_allocObject();
              v151 = v243;
              *(v150 + 16) = v201;
              *(v150 + 24) = v84;
              *(v150 + 32) = v149;
              *(v150 + 40) = 0;
              v152 = v151;
              sub_1D6C4D24C(v150 | 0x3000000000000000);

              v232 = __PAIR128__(v84, v201);
              *&v233 = v196;
              LOBYTE(v226) = 5;
              sub_1D5E1DA6C(v201, v84, v196, v199, v203, v210, v16);

              v153 = sub_1D703E0C8(&v232, &v226);
              v215 = 0;

              v154 = swift_allocObject();
              *(v154 + 16) = v201;
              *(v154 + 24) = 0;
              *(v154 + 32) = v153;
              *(v154 + 40) = 0;
              v62 = v152;
              sub_1D6C4D24C(v154 | 0x3000000000000000);

              v86 = v196;
              v63 = v220;
              v19 = v206;
              break;
            default:
              *&v236[10] = *(v5 + 90);
              v81 = v5[5];
              v235 = v5[4];
              *v236 = v81;
              v82 = v5[1];
              v232 = *v5;
              v233 = v82;
              v83 = v5[3];
              *v234 = v5[2];
              *&v234[16] = v83;
              *&v236[24] &= 0xCFFFu;
              v84 = *(&v237 + 1);
              v85 = v238;
              sub_1D62B7260(&v232, &v226);
              v86 = v85;
              v63 = v220;
              v62 = v243;
              break;
          }

          *&v232 = v201;
          *(&v232 + 1) = v84;
          *&v233 = v86;
          *(&v233 + 1) = v199;
          *v234 = v203;
          *&v234[8] = v210;
          *&v234[16] = v80;
          sub_1D62099A8(v62);
          v3 = v215;
          if (v215)
          {
            return sub_1D60B2A74(&v237);
          }

          v37 = v219;
          v18 = v207;
          goto LABEL_60;
        }

        v209 = v4;
        v226 = v237;
        v227 = v238;
        v225 = 5;
        v50 = *(&v237 + 1);
        v51 = v238;
        v52 = *(&v239 + 1);
        sub_1D60B2AC8(&v237, &v232);
        sub_1D5E1DA6C(v10, v50, v51, v12, v203, v52, v16);
        v53 = sub_1D703E0C8(&v226, &v225);
        if (v215)
        {
          return sub_1D60B2A74(&v237);
        }

        v54 = v53;
        v205 = v19;
        v27 = v17;
        v55 = swift_allocObject();
        *(v55 + 16) = v10;
        *(v55 + 24) = v50;
        *(v55 + 32) = v54;
        *(v55 + 40) = 0;
        v29 = v55 | 0x3000000000000000;
        v56 = *v243;
        swift_beginAccess();
        v57 = *(v56 + 16);
        v58 = *(v57 + 16);
        if (v58)
        {
          v59 = *(v57 + 8 * v58 + 24);

          v61 = sub_1D60E14A8(v59, v29, v60);

          v37 = v219;
          v36 = v220;
          if (v61)
          {
            goto LABEL_26;
          }
        }

        else
        {
        }

        v97 = v243;
        v98 = swift_isUniquelyReferenced_nonNull_native();
        v89 = *v97;
        v3 = 0;
        if (v98)
        {
          goto LABEL_55;
        }

        goto LABEL_117;
      }

      *&v236[10] = *(v5 + 90);
      v64 = v5[5];
      v235 = v5[4];
      *v236 = v64;
      v65 = v5[1];
      v232 = *v5;
      v233 = v65;
      v66 = v5[3];
      *v234 = v5[2];
      *&v234[16] = v66;
      *&v236[24] &= 0xCFFFu;
      sub_1D62B7260(&v232, &v226);
      v37 = v219;
      v63 = v220;
      v62 = v243;
      goto LABEL_60;
    }

    if (!(v240 >> 14))
    {
      goto LABEL_5;
    }

    if (v240 >> 14 == 1)
    {
      v226 = v237;
      v227 = v238;
      v225 = 5;
      v38 = v3;
      v39 = *(&v237 + 1);
      sub_1D60B2AC8(&v237, &v232);
      sub_1D60B2AC8(&v237, &v232);
      v40 = sub_1D703E0C8(&v226, &v225);
      if (v38)
      {
        return sub_1D60B2A74(&v237);
      }

      v41 = v40;
      v42 = swift_allocObject();
      *(v42 + 16) = v10;
      *(v42 + 24) = v39;
      *(v42 + 32) = v41;
      *(v42 + 40) = 0;
      v43 = v42 | 0x3000000000000000;
      v44 = *v243;
      swift_beginAccess();
      v45 = *(v44 + 16);
      v46 = *(v45 + 16);
      if (v46)
      {
        v47 = *(v45 + 8 * v46 + 24);

        v49 = sub_1D60E14A8(v47, v43, v48);

        if (v49)
        {

          result = sub_1D60B2A74(&v237);
          v3 = 0;
          goto LABEL_5;
        }
      }

      else
      {
      }

      v90 = v243;
      v91 = swift_isUniquelyReferenced_nonNull_native();
      v92 = *v90;
      v3 = 0;
      if ((v91 & 1) == 0)
      {
        sub_1D5B4B554(0, &qword_1EC880338, &type metadata for FormatDerivedData._$CopyOnWriteStorage, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E6B60]);
        v183 = swift_allocObject();
        swift_beginAccess();
        v184 = v92[2];
        v232 = v92[1];
        v233 = v184;
        *v234 = v92[3];
        *&v234[14] = *(v92 + 62);
        memmove((v183 + 16), v92 + 1, 0x3EuLL);
        sub_1D5EB9AB0(&v232, &v226);

        *v243 = v183;
        v92 = v183;
      }

      swift_beginAccess();
      v93 = *(v92 + 2);
      v94 = swift_isUniquelyReferenced_nonNull_native();
      *(v92 + 2) = v93;
      if ((v94 & 1) == 0)
      {
        v93 = sub_1D698F848(0, *(v93 + 2) + 1, 1, v93);
        *(v92 + 2) = v93;
      }

      v96 = *(v93 + 2);
      v95 = *(v93 + 3);
      if (v96 >= v95 >> 1)
      {
        v93 = sub_1D698F848((v95 > 1), v96 + 1, 1, v93);
      }

      *(v93 + 2) = v96 + 1;
      *&v93[8 * v96 + 32] = v43;
      *(v92 + 2) = v93;
      swift_endAccess();
      goto LABEL_4;
    }

    v71 = *(&v238 + 1);
    v72 = v240;
    v73 = (v240 >> 7) & 0x7E | (v240 >> 3) & 1;
    if (v73 > 4)
    {
      if (((1 << v73) & 0x3EE0) == 0)
      {
        goto LABEL_3;
      }

LABEL_33:
      v74 = v243;
      if (v73 > 7)
      {
        goto LABEL_4;
      }

      goto LABEL_34;
    }

    if (v73 <= 2)
    {
      if (!v73)
      {
LABEL_3:
        sub_1D5E1DA6C(v237, *(&v237 + 1), v238, *(&v238 + 1), v239, *(&v239 + 1), v240);
LABEL_4:
        result = sub_1D60B2A74(&v237);
        goto LABEL_5;
      }

      if (v73 != 1)
      {
        v217 = v3;
        v115 = *(&v237 + 1);
        v117 = *(&v238 + 1);
        v116 = v238;
        v118 = v239;
        v223 = v240;
        sub_1D5E1DA6C(v237, *(&v237 + 1), v238, *(&v238 + 1), v239, *(&v239 + 1), v240);
        v72 = v223;
        if ((v223 & 0xF0) == 0x30)
        {
          v232 = __PAIR128__(v115, v10);
          v119 = v115;
          LOWORD(v233) = v116;
          v74 = v243;
          sub_1D62921EC(v243);
          v3 = v217;
          if (v217)
          {
            return sub_1D60B2A74(&v237);
          }

          v9 = v119;
          v11 = v116;
          v14 = *(&v118 + 1);
          v13 = v118;
          v117 = v71;
          v72 = v223;
        }

        else
        {
          v74 = v243;
          v9 = v115;
          v3 = v217;
          v11 = v116;
          v14 = *(&v118 + 1);
          v13 = v118;
        }

LABEL_114:
        *&v232 = v10;
        *(&v232 + 1) = v9;
        *&v233 = v11;
        *(&v233 + 1) = v117;
        *v234 = v13;
        *&v234[8] = v14;
        v234[16] = v72 & 0xF7;
        sub_1D6292190(v74);
        result = sub_1D60B2A74(&v237);
        if (v3)
        {
          return result;
        }

        goto LABEL_5;
      }

      goto LABEL_33;
    }

    v224 = v240;
    v120 = v239;
    v226 = v237;
    v227 = v238;
    v225 = 5;
    v121 = v3;
    v122 = *(&v237 + 1);
    v123 = v238;
    sub_1D60B2AC8(&v237, &v232);
    sub_1D60B2AC8(&v237, &v232);

    v124 = sub_1D703E0C8(&v226, &v225);
    if (v121)
    {
      break;
    }

    v125 = v124;
    v194 = v123;

    v126 = swift_allocObject();
    v202 = v10;
    *(v126 + 16) = v10;
    *(v126 + 24) = v122;
    v192 = v122;
    *(v126 + 32) = v125;
    *(v126 + 40) = 0;
    v127 = v126 | 0x3000000000000000;
    v128 = *v243;
    swift_beginAccess();
    v129 = *(v128 + 16);
    v130 = *(v129 + 16);
    if (v130 && (v131 = *(v129 + 8 * v130 + 24), , v133 = sub_1D60E14A8(v131, v127, v132), , (v133 & 1) != 0))
    {

      v74 = v243;
      v9 = v192;
      v3 = 0;
    }

    else
    {
      v221 = v127;
      v155 = v243;
      v156 = swift_isUniquelyReferenced_nonNull_native();
      v157 = *v155;
      v3 = 0;
      if ((v156 & 1) == 0)
      {
        sub_1D5B4B554(0, &qword_1EC880338, &type metadata for FormatDerivedData._$CopyOnWriteStorage, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E6B60]);
        v187 = swift_allocObject();
        swift_beginAccess();
        v188 = v157[2];
        v232 = v157[1];
        v233 = v188;
        *v234 = v157[3];
        *&v234[14] = *(v157 + 62);
        memmove((v187 + 16), v157 + 1, 0x3EuLL);
        sub_1D5EB9AB0(&v232, &v226);

        *v155 = v187;
        v157 = v187;
      }

      swift_beginAccess();
      v158 = *(v157 + 2);
      v159 = swift_isUniquelyReferenced_nonNull_native();
      *(v157 + 2) = v158;
      if (v159)
      {
        v160 = v157;
      }

      else
      {
        v158 = sub_1D698F848(0, *(v158 + 2) + 1, 1, v158);
        v160 = v157;
        *(v157 + 2) = v158;
      }

      v162 = *(v158 + 2);
      v161 = *(v158 + 3);
      if (v162 >= v161 >> 1)
      {
        v158 = sub_1D698F848((v161 > 1), v162 + 1, 1, v158);
      }

      *(v158 + 2) = v162 + 1;
      *&v158[8 * v162 + 32] = v221;
      *(v160 + 2) = v158;
      swift_endAccess();
      v74 = v243;
      v9 = v192;
    }

    v11 = v194;
    v14 = *(&v120 + 1);
    v10 = v202;
    v13 = v120;
    v72 = v224;
LABEL_34:
    if (v73 > 4)
    {
      goto LABEL_4;
    }

    if ((v73 - 3) >= 2)
    {
      if (v73 == 1)
      {
        goto LABEL_4;
      }

      v117 = v71;
      goto LABEL_114;
    }

    *&v226 = v10;
    *(&v226 + 1) = v9;
    v227 = v11;
    v225 = 5;
    v75 = v3;
    v76 = v9;
    sub_1D60B2AC8(&v237, &v232);

    v77 = v75;
    v78 = sub_1D703E0C8(&v226, &v225);

    if (v77)
    {

      return sub_1D60B2A74(&v237);
    }

    v79 = swift_allocObject();
    *(v79 + 16) = v10;
    *(v79 + 24) = v76;
    *(v79 + 32) = v78;
    *(v79 + 40) = 0;
    sub_1D6C4D24C(v79 | 0x3000000000000000);

    result = sub_1D60B2A74(&v237);
    v3 = 0;
LABEL_5:
    v5 += 7;
    if (!--v4)
    {
      return result;
    }
  }

LABEL_125:

  return sub_1D60B2A74(&v237);
}

uint64_t sub_1D6276054(uint64_t result, uint64_t a2)
{
  v3 = v2;
  v50 = *(a2 + 16);
  if (!v50)
  {
    return result;
  }

  v4 = result;
  v5 = 0;
  v51 = a2 + 32;
  while (2)
  {
    v6 = v51 + 40 * v5;
    v8 = *v6;
    v7 = *(v6 + 8);
    v10 = *(v6 + 16);
    v9 = *(v6 + 24);
    ++v5;
    v11 = *(v6 + 32);
    v53 = v10;
    v52 = v7;
    switch(v11)
    {
      case 1u:
        v24 = *(v8 + 16);

        if (!v24)
        {
          goto LABEL_80;
        }

        v25 = (v8 + 40);
        while (1)
        {
          if ((*v25 & 1) == 0)
          {
            v26 = *(v25 - 1);
            swift_retain_n();
            sub_1D6012F58();
            sub_1D62B72BC(v26, 0);

            if (v3)
            {
              break;
            }
          }

          v25 += 16;
          if (!--v24)
          {
            goto LABEL_80;
          }
        }

        v45 = v8;
        v46 = v52;
        v47 = v53;
        v48 = v9;
        v49 = 1;
        return sub_1D5ECEF00(v45, v46, v47, v48, v49);
      case 2u:
        v27 = *(v8 + 16);

        if (!v27)
        {
          goto LABEL_80;
        }

        v28 = (v8 + 40);
        while (2)
        {
          if (*v28)
          {
            goto LABEL_42;
          }

          v29 = *(v28 - 1);
          swift_retain_n();
          sub_1D6012F58();
          if (!v3)
          {
            sub_1D62B72BC(v29, 0);

LABEL_42:
            v28 += 16;
            if (!--v27)
            {
              goto LABEL_80;
            }

            continue;
          }

          break;
        }

        sub_1D62B72BC(v29, 0);

        v45 = v8;
        v46 = v52;
        v47 = v53;
        v48 = v9;
        v49 = 2;
        return sub_1D5ECEF00(v45, v46, v47, v48, v49);
      case 3u:
        v15 = *(v8 + 16);

        if (!v15)
        {
          goto LABEL_80;
        }

        v16 = (v8 + 40);
        while (2)
        {
          if (*v16)
          {
            goto LABEL_16;
          }

          v17 = *(v16 - 1);
          swift_retain_n();
          sub_1D6012F58();
          if (!v3)
          {
            sub_1D62B72BC(v17, 0);

LABEL_16:
            v16 += 16;
            if (!--v15)
            {
              goto LABEL_80;
            }

            continue;
          }

          break;
        }

        sub_1D62B72BC(v17, 0);

        v45 = v8;
        v46 = v52;
        v47 = v53;
        v48 = v9;
        v49 = 3;
        return sub_1D5ECEF00(v45, v46, v47, v48, v49);
      case 4u:
        v33 = *(v8 + 16);

        if (!v33)
        {
          goto LABEL_80;
        }

        v34 = (v8 + 40);
        while (2)
        {
          if (*v34)
          {
            goto LABEL_55;
          }

          v35 = *(v34 - 1);
          swift_retain_n();
          sub_1D6012F58();
          if (!v3)
          {
            sub_1D62B72BC(v35, 0);

LABEL_55:
            v34 += 16;
            if (!--v33)
            {
              goto LABEL_80;
            }

            continue;
          }

          break;
        }

        sub_1D62B72BC(v35, 0);

        v45 = v8;
        v46 = v52;
        v47 = v53;
        v48 = v9;
        v49 = 4;
        return sub_1D5ECEF00(v45, v46, v47, v48, v49);
      case 5u:
        v36 = *(v8 + 16);

        if (!v36)
        {
          goto LABEL_80;
        }

        v37 = (v8 + 40);
        while (2)
        {
          if (*v37)
          {
            goto LABEL_62;
          }

          v38 = *(v37 - 1);
          swift_retain_n();
          sub_1D6012F58();
          if (!v3)
          {
            sub_1D62B72BC(v38, 0);

LABEL_62:
            v37 += 16;
            if (!--v36)
            {
              goto LABEL_80;
            }

            continue;
          }

          break;
        }

        sub_1D62B72BC(v38, 0);

        v45 = v8;
        v46 = v52;
        v47 = v53;
        v48 = v9;
        v49 = 5;
        return sub_1D5ECEF00(v45, v46, v47, v48, v49);
      case 6u:
        v30 = *(v8 + 16);

        if (!v30)
        {
          goto LABEL_80;
        }

        v31 = (v8 + 40);
        while (2)
        {
          if (*v31)
          {
            goto LABEL_49;
          }

          v32 = *(v31 - 1);
          swift_retain_n();
          sub_1D6012F58();
          if (!v3)
          {
            sub_1D62B72BC(v32, 0);

LABEL_49:
            v31 += 16;
            if (!--v30)
            {
              goto LABEL_80;
            }

            continue;
          }

          break;
        }

        sub_1D62B72BC(v32, 0);

        v45 = v8;
        v46 = v52;
        v47 = v53;
        v48 = v9;
        v49 = 6;
        return sub_1D5ECEF00(v45, v46, v47, v48, v49);
      case 7u:
        v42 = *(v8 + 16);

        if (!v42)
        {
          goto LABEL_80;
        }

        v43 = (v8 + 40);
        while (2)
        {
          if (*v43)
          {
            goto LABEL_76;
          }

          v44 = *(v43 - 1);
          swift_retain_n();
          sub_1D6012F58();
          if (!v3)
          {
            sub_1D62B72BC(v44, 0);

LABEL_76:
            v43 += 16;
            if (!--v42)
            {
              goto LABEL_80;
            }

            continue;
          }

          break;
        }

        sub_1D62B72BC(v44, 0);

        v45 = v8;
        v46 = v52;
        v47 = v53;
        v48 = v9;
        v49 = 7;
        return sub_1D5ECEF00(v45, v46, v47, v48, v49);
      case 8u:
        v21 = *(v8 + 16);

        if (!v21)
        {
          goto LABEL_80;
        }

        v22 = (v8 + 40);
        while (2)
        {
          if (*v22)
          {
            goto LABEL_29;
          }

          v23 = *(v22 - 1);
          swift_retain_n();
          sub_1D6012F58();
          if (!v3)
          {
            sub_1D62B72BC(v23, 0);

LABEL_29:
            v22 += 16;
            if (!--v21)
            {
              goto LABEL_80;
            }

            continue;
          }

          break;
        }

        sub_1D62B72BC(v23, 0);

        v45 = v8;
        v46 = v52;
        v47 = v53;
        v48 = v9;
        v49 = 8;
        return sub_1D5ECEF00(v45, v46, v47, v48, v49);
      case 9u:
        v39 = *(v8 + 16);

        if (!v39)
        {
          goto LABEL_80;
        }

        v40 = (v8 + 40);
        while (2)
        {
          if (*v40)
          {
            goto LABEL_69;
          }

          v41 = *(v40 - 1);
          swift_retain_n();
          sub_1D6012F58();
          if (!v3)
          {
            sub_1D62B72BC(v41, 0);

LABEL_69:
            v40 += 16;
            if (!--v39)
            {
              goto LABEL_80;
            }

            continue;
          }

          break;
        }

        sub_1D62B72BC(v41, 0);

        v45 = v8;
        v46 = v52;
        v47 = v53;
        v48 = v9;
        v49 = 9;
        return sub_1D5ECEF00(v45, v46, v47, v48, v49);
      case 0xAu:
        v12 = *(v8 + 16);

        if (!v12)
        {
          goto LABEL_80;
        }

        v13 = (v8 + 40);
        while (2)
        {
          if (*v13)
          {
            goto LABEL_9;
          }

          v14 = *(v13 - 1);
          swift_retain_n();
          sub_1D6012F58();
          if (!v3)
          {
            sub_1D62B72BC(v14, 0);

LABEL_9:
            v13 += 16;
            if (!--v12)
            {
              goto LABEL_80;
            }

            continue;
          }

          break;
        }

        sub_1D62B72BC(v14, 0);

        v45 = v8;
        v46 = v52;
        v47 = v53;
        v48 = v9;
        v49 = 10;
        return sub_1D5ECEF00(v45, v46, v47, v48, v49);
      case 0xBu:
        v18 = *(v8 + 16);

        if (!v18)
        {
          goto LABEL_80;
        }

        v19 = (v8 + 40);
        while (2)
        {
          if (*v19)
          {
            goto LABEL_23;
          }

          v20 = *(v19 - 1);
          swift_retain_n();
          sub_1D6012F58();
          if (!v3)
          {
            sub_1D62B72BC(v20, 0);

LABEL_23:
            v19 += 16;
            if (!--v18)
            {
              goto LABEL_80;
            }

            continue;
          }

          break;
        }

        sub_1D62B72BC(v20, 0);

        v45 = v8;
        v46 = v52;
        v47 = v53;
        v48 = v9;
        v49 = 11;
        return sub_1D5ECEF00(v45, v46, v47, v48, v49);
      case 0xCu:
        goto LABEL_81;
      default:

        sub_1D6273544(v4, v8);
        if (!v3)
        {
          sub_1D6273544(v4, v7);
          sub_1D6273544(v4, v10);
          sub_1D6273544(v4, v9);
          v3 = 0;
LABEL_80:
          result = sub_1D5ECEF00(v8, v52, v53, v9, v11);
LABEL_81:
          if (v5 == v50)
          {
            return result;
          }

          continue;
        }

        v45 = v8;
        v46 = v7;
        v47 = v10;
        v48 = v9;
        v49 = 0;
        return sub_1D5ECEF00(v45, v46, v47, v48, v49);
    }
  }
}

void sub_1D627683C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    v5 = a2 + 32;
    while (1)
    {
      v5 += 8;

      sub_1D62895DC(a1);
      if (v2)
      {
        break;
      }

      if (!--v3)
      {
        return;
      }
    }
  }
}

void sub_1D62768C8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    for (i = (a2 + 48); ; i += 3)
    {
      v6 = *(i - 1);
      v5 = *i;
      *&v11 = *(i - 2);
      *(&v11 + 1) = v6;
      swift_bridgeObjectRetain_n();

      sub_1D6EE4610(a1);
      if (v2)
      {
        break;
      }

      v14 = v5;
      sub_1D5D0ACAC(0, &qword_1EDF1B018, &type metadata for FormatSourceItemTipTrait, MEMORY[0x1E69E62F8]);
      sub_1D5B49474(0, &qword_1EC8854D0, &protocol descriptor for FormatDerivable);

      if (swift_dynamicCast())
      {
        v9 = v3;
        v7 = *(&v12 + 1);
        v8 = v13;
        __swift_project_boxed_opaque_existential_1(&v11, *(&v12 + 1));
        (*(v8 + 8))(a1, v7, v8);

        __swift_destroy_boxed_opaque_existential_1(&v11);
        v3 = v9;
      }

      else
      {

        v13 = 0;
        v11 = 0u;
        v12 = 0u;
        sub_1D5BFB774(&v11, &qword_1EC8854D8, &qword_1EC8854D0, &protocol descriptor for FormatDerivable);
      }

      if (!--v3)
      {
        return;
      }
    }
  }
}

double sub_1D6276AB0(uint64_t result, uint64_t a2)
{
  v37 = *(a2 + 16);
  if (!v37)
  {
    return v28;
  }

  v4 = 0;
  v38 = a2 + 32;
  while (1)
  {
    v5 = v38 + 56 * v4;
    v7 = *v5;
    v6 = *(v5 + 8);
    v8 = *(v5 + 24);
    v40 = *(v5 + 16);
    v9 = *(v5 + 32);
    v10 = *(v5 + 40);
    v11 = *(v5 + 48);
    if (v11 <= 2)
    {
      break;
    }

    if (v11 == 3)
    {
      sub_1D62B7654(v7, v6, v40, v8, *(v5 + 32), *(v5 + 40), 3u);

      sub_1D6273544(result, v7);
      if (v2)
      {

        v29 = v7;
        v30 = v6;
        v31 = v40;
        v32 = v8;
        v33 = v9;
        v34 = v10;
        v35 = 3;
        return sub_1D62B772C(v29, v30, v31, v32, v33, v34, v35);
      }

      sub_1D6273544(result, v6);

      sub_1D6273544(result, v40);
      sub_1D6273544(result, v8);
      v20 = v8;
      v13 = v9;
      v16 = 0;
      v39 = v20;
LABEL_26:

LABEL_42:
      v28 = sub_1D62B772C(v7, v6, v40, v39, v13, v10, v11);
      v2 = v16;
      goto LABEL_43;
    }

    if (v11 == 4)
    {
      sub_1D62B7654(v7, v6, v40, v8, *(v5 + 32), *(v5 + 40), 4u);

      sub_1D6273544(result, v7);
      if (v2)
      {

        v29 = v7;
        v30 = v6;
        v31 = v40;
        v32 = v8;
        v33 = v9;
        v34 = v10;
        v35 = 4;
        return sub_1D62B772C(v29, v30, v31, v32, v33, v34, v35);
      }

      sub_1D6273544(result, v6);

      sub_1D6273544(result, v40);
      sub_1D6273544(result, v8);
      v39 = v8;
      v13 = v9;
      sub_1D6273544(result, v9);
      v16 = 0;
      LOBYTE(v11) = 4;
      goto LABEL_42;
    }

LABEL_43:
    if (++v4 == v37)
    {
      return v28;
    }
  }

  v39 = *(v5 + 24);
  if (!*(v5 + 48))
  {
    v17 = *(v7 + 16);
    v13 = *(v5 + 32);
    v36 = *(v5 + 40);
    sub_1D62B7654(v7, v6, v40, *(v5 + 24), v13, v10, 0);
    if (v17)
    {
      v18 = (v7 + 40);
      while (1)
      {
        if ((*v18 & 1) == 0)
        {
          v19 = *(v18 - 1);
          swift_retain_n();
          sub_1D6012F58();
          sub_1D62B72BC(v19, 0);

          if (v2)
          {
            break;
          }
        }

        v18 += 16;
        if (!--v17)
        {
          goto LABEL_27;
        }
      }
    }

    else
    {
LABEL_27:
      v22 = *(v6 + 16);
      if (!v22)
      {
LABEL_33:
        v16 = v2;
        LOBYTE(v11) = 0;
LABEL_41:
        v10 = v36;
        goto LABEL_42;
      }

      v23 = (v6 + 40);
      while (1)
      {
        if ((*v23 & 1) == 0)
        {
          v24 = *(v23 - 1);
          swift_retain_n();
          sub_1D6012F58();
          sub_1D62B72BC(v24, 0);

          if (v2)
          {
            break;
          }
        }

        v23 += 16;
        if (!--v22)
        {
          goto LABEL_33;
        }
      }
    }

    v29 = v7;
    v30 = v6;
    v32 = v39;
    v31 = v40;
    v33 = v13;
    v34 = v36;
    v35 = 0;
    return sub_1D62B772C(v29, v30, v31, v32, v33, v34, v35);
  }

  if (v11 != 1)
  {
    sub_1D62B7654(v7, v6, v40, v8, v9, v10, 2u);

    sub_1D6273544(result, v7);
    if (v2)
    {

      v29 = v7;
      v30 = v6;
      v31 = v40;
      v32 = v8;
      v33 = v9;
      v34 = v10;
      v35 = 2;
      return sub_1D62B772C(v29, v30, v31, v32, v33, v34, v35);
    }

    sub_1D6273544(result, v6);

    sub_1D6273544(result, v40);
    sub_1D6273544(result, v8);

    sub_1D6273544(result, v9);
    sub_1D6273544(result, v10);
    v21 = v9;
    v16 = 0;
    v13 = v21;
    goto LABEL_26;
  }

  v12 = *(v7 + 16);
  v13 = *(v5 + 32);
  v36 = *(v5 + 40);
  sub_1D62B7654(v7, v6, v40, *(v5 + 24), v13, v10, 1u);
  if (v12)
  {
    v14 = (v7 + 40);
    do
    {
      if ((*v14 & 1) == 0)
      {
        v15 = *(v14 - 1);
        swift_retain_n();
        sub_1D6012F58();
        if (v2)
        {
          sub_1D62B72BC(v15, 0);

          return sub_1D62B772C(v7, v6, v40, v39, v13, v36, 1u);
        }

        sub_1D62B72BC(v15, 0);
      }

      v14 += 16;
      --v12;
    }

    while (v12);
  }

  v25 = *(v6 + 16);
  if (!v25)
  {
LABEL_40:
    v16 = v2;
    LOBYTE(v11) = 1;
    goto LABEL_41;
  }

  v26 = (v6 + 40);
  while (1)
  {
    if ((*v26 & 1) == 0)
    {
      v27 = *(v26 - 1);
      swift_retain_n();
      sub_1D6012F58();
      sub_1D62B72BC(v27, 0);

      if (v2)
      {
        break;
      }
    }

    v26 += 16;
    if (!--v25)
    {
      goto LABEL_40;
    }
  }

  v29 = v7;
  v30 = v6;
  v32 = v39;
  v31 = v40;
  v33 = v13;
  v34 = v36;
  v35 = 1;
  return sub_1D62B772C(v29, v30, v31, v32, v33, v34, v35);
}

void sub_1D6277298(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = (a2 + 56);
    do
    {
      v5 = *v4;
      v6 = *v4 >> 61;
      if (v6 <= 2)
      {
        v7 = *(v4 - 3);
        v8 = *(v4 - 2);
        v9 = *(v4 - 8);
        if (v6)
        {
          v41 = *(v4 - 8);
          if (v6 == 1)
          {
            v38 = *(v4 - 2);
            v40 = v2;
            v10 = *((v5 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
            v11 = *((v5 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
            v12 = *((v5 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
            v13 = *((v5 & 0x1FFFFFFFFFFFFFFFLL) + 0x28);
            v14 = *((v5 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
            v15 = *((v5 & 0x1FFFFFFFFFFFFFFFLL) + 0x48);
            v35 = *(v4 - 3);
            v32 = v11;
            if (v14 == 255)
            {
              sub_1D5D03180(v7, v8, v9);

              sub_1D62B7ECC(v10, v11, v12);
              sub_1D62B7EE4(v13, 255);

              v16 = v13;
            }

            else if (v14)
            {
              v16 = v13;
              v31 = *(v13 + 24);
              sub_1D5D03180(v7, v8, v9);

              sub_1D62B7ECC(v10, v32, v12);
              sub_1D62B7EE4(v13, v14);

              sub_1D62B7EE4(v13, v14);
              sub_1D6277824(a1, v31);
              if (v2)
              {
                sub_1D62B5FD4(v13, v14);
                sub_1D62B5FEC(v10, v32, v12);
                sub_1D62B5FD4(v13, v14);

                sub_1D5D07BA8(v35, v38, v41);

                return;
              }

              sub_1D628E4DC(a1, *(v13 + 32));
              v40 = 0;
              sub_1D62B5FD4(v13, v14);
            }

            else
            {
              sub_1D5D03180(v7, v8, v9);

              sub_1D62B7ECC(v10, v11, v12);
              v16 = v13;
              sub_1D62B7EE4(v13, v14);
            }

            v2 = v40;
            sub_1D62779BC(a1, v15);
            if (v40)
            {
              sub_1D62B5FEC(v10, v32, v12);
              sub_1D62B5FD4(v16, v14);

              sub_1D5D07BA8(v35, v38, v41);

              return;
            }

            sub_1D62B5FEC(v10, v32, v12);
            sub_1D62B5FD4(v16, v14);

            sub_1D5D07BA8(v35, v38, v41);
          }

          else
          {
            v27 = *((v5 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
            v28 = *(v27 + 24);
            v29 = *(v4 - 3);
            v30 = *(v4 - 2);
            sub_1D5D03180(v7, v8, v9);

            sub_1D6277298(a1, v28);
            if (v2)
            {

              sub_1D5D07BA8(v29, v30, v41);

              return;
            }

            sub_1D628E374(a1, *(v27 + 32));

            sub_1D5D07BA8(v29, v30, v41);
          }
        }

        else if (*(v5 + 48))
        {
          v17 = *(v5 + 16);
          v18 = *(v5 + 24);
          v19 = *(v5 + 32);
          v20 = *(v5 + 40);
          v36 = *(v4 - 3);
          v39 = v20[3];
          v21 = *(v4 - 2);
          v22 = *(v4 - 8);
          sub_1D5D03180(v7, v8, v9);

          v33 = v18;
          v34 = v19;
          sub_1D5F26358(v17, v18, v19);
          sub_1D62B5FC8(v20, 1);

          sub_1D6277824(a1, v39);
          if (v2)
          {
            sub_1D5F26348(v17, v18, v19);
            sub_1D5FC4E9C(v20, 1);

            sub_1D5D07BA8(v36, v21, v22);

            return;
          }

          v45 = v20[4];
          v23 = v45;
          sub_1D62B7E2C();
          sub_1D5B49474(0, &qword_1EC8854D0, &protocol descriptor for FormatDerivable);
          v24 = v23;
          if (swift_dynamicCast())
          {
            v25 = *(&v43 + 1);
            v26 = v44;
            __swift_project_boxed_opaque_existential_1(&v42, *(&v43 + 1));
            v2 = 0;
            (*(v26 + 8))(a1, v25, v26);
            __swift_destroy_boxed_opaque_existential_1(&v42);
            sub_1D5F26348(v17, v33, v34);
            sub_1D5FC4E9C(v20, 1);

            sub_1D5D07BA8(v36, v21, v22);
          }

          else
          {
            v44 = 0;
            v42 = 0u;
            v43 = 0u;
            sub_1D5BFB774(&v42, &qword_1EC8854D8, &qword_1EC8854D0, &protocol descriptor for FormatDerivable);
            sub_1D5F26348(v17, v33, v19);
            sub_1D5FC4E9C(v20, 1);

            sub_1D5D07BA8(v36, v21, v22);

            v2 = 0;
          }
        }
      }

      v4 += 4;
      --v3;
    }

    while (v3);
  }
}

uint64_t sub_1D6277824(uint64_t result, uint64_t a2)
{
  v13 = result;
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = &qword_1EC8854D0;
    v4 = (a2 + 56);
    do
    {
      v5 = *(v4 - 3);
      v6 = *(v4 - 2);
      v7 = *(v4 - 8);
      v19 = *v4;
      v8 = v19;
      sub_1D5D03180(v5, v6, v7);
      sub_1D62B7E2C();
      sub_1D5B49474(0, v3, &protocol descriptor for FormatDerivable);
      v9 = v3;
      v10 = v8;
      if (swift_dynamicCast())
      {
        v14 = v10;
        v11 = *(&v17 + 1);
        v12 = v18;
        __swift_project_boxed_opaque_existential_1(&v16, *(&v17 + 1));
        (*(v12 + 8))(v13, v11, v12);
        sub_1D5D07BA8(v5, v6, v7);

        result = __swift_destroy_boxed_opaque_existential_1(&v16);
        if (v15)
        {
          return result;
        }
      }

      else
      {
        sub_1D5D07BA8(v5, v6, v7);

        v18 = 0;
        v16 = 0u;
        v17 = 0u;
        result = sub_1D5BFB774(&v16, &qword_1EC8854D8, v3, &protocol descriptor for FormatDerivable);
      }

      v3 = v9;
      v4 += 4;
      --v2;
    }

    while (v2);
  }

  return result;
}

void sub_1D62779BC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *(a2 + 16);
  if (v4)
  {
    v5 = a2 + 40;
    do
    {
      if (*(v5 + 24) == 1)
      {
        v6 = *(v5 - 8);
        v7 = *v5;
        v8 = *(v5 + 16);
        v9 = v8[3];
        v15 = *(v5 + 8);
        sub_1D5F26358(v6, *v5, v15);
        sub_1D62B5FC8(v8, 1);

        sub_1D6277824(a1, v9);
        if (v3)
        {
          sub_1D5F26348(v6, v7, v15);
          sub_1D5FC4E9C(v8, 1);

          return;
        }

        v19 = v8[4];
        v10 = v19;
        sub_1D62B7E2C();
        sub_1D5B49474(0, &qword_1EC8854D0, &protocol descriptor for FormatDerivable);
        v11 = v10;
        if (swift_dynamicCast())
        {
          v13 = *(&v17 + 1);
          v12 = v18;
          __swift_project_boxed_opaque_existential_1(&v16, *(&v17 + 1));
          (*(v12 + 8))(a1, v13, v12);
          v3 = 0;
          __swift_destroy_boxed_opaque_existential_1(&v16);
          sub_1D5F26348(v6, v7, v15);
          sub_1D5FC4E9C(v8, 1);
        }

        else
        {
          v18 = 0;
          v16 = 0u;
          v17 = 0u;
          sub_1D5BFB774(&v16, &qword_1EC8854D8, &qword_1EC8854D0, &protocol descriptor for FormatDerivable);
          sub_1D5F26348(v6, v7, v15);
          sub_1D5FC4E9C(v8, 1);

          v3 = 0;
        }
      }

      v5 += 48;
      --v4;
    }

    while (v4);
  }
}

void sub_1D6277BD0(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v4 = *(a2 + 16);
  if (!v4)
  {
    return;
  }

  v5 = a1;
  for (i = (a2 + 56); ; i += 4)
  {
    v7 = *(i - 3);
    v8 = *(i - 2);
    v9 = *(i - 8);
    v10 = *i;
    v11 = *i >> 62;
    if (v11)
    {
      break;
    }

    v139 = *(i - 2);
    v25 = *(v10 + 32);
    v143 = *(v10 + 16);
    v144 = v25;
    v26 = *(v10 + 48);
    v146 = *(v10 + 64);
    v145 = v26;
    v27 = *(&v143 + 1);
    v28 = v143;
    v29 = v25;
    v30 = v146;
    switch((2 * HIBYTE(v146)) | ((v146 & 8) != 0))
    {
      case 2:
        v155 = i;
        v142 = v4;
        v131 = v3;

        sub_1D5FD78CC(&v143, &v152);
        v134 = v9;
        sub_1D5D03180(v7, v139, v9);

LABEL_76:
        if (v30 >> 4 != 3)
        {
          goto LABEL_77;
        }

        if (HIBYTE(v29) <= 1u)
        {
          if (v29 > 0xFDu)
          {
            goto LABEL_77;
          }

          *&v152 = v28;
          *(&v152 + 1) = v27;
          LOBYTE(v153) = v29;
          sub_1D5E1E0D4(v143, *(&v143 + 1), v144, *(&v144 + 1), v145, *(&v145 + 1), v146 & 0xF7, sub_1D5E1DC48, sub_1D5E1DCA8, sub_1D5E1DCD8, sub_1D5E1DCE8);
          sub_1D62A1A50();
          v3 = v131;
          sub_1D5D07BA8(v7, v139, v134);

          sub_1D5E1E15C(v28, v27, v29);
          sub_1D5FD7B18(&v143);

          if (v131)
          {
            return;
          }
        }

        else
        {
          if (HIBYTE(v29) != 2 && HIBYTE(v29) != 3 || v29 > 0xFDu)
          {
LABEL_77:
            sub_1D5D07BA8(v7, v139, v134);

            sub_1D5FD7B18(&v143);
            goto LABEL_4;
          }

          *&v152 = v28;
          *(&v152 + 1) = v27;
          LOBYTE(v153) = v29;
          sub_1D5E1E0D4(v143, *(&v143 + 1), v144, *(&v144 + 1), v145, *(&v145 + 1), v146 & 0xF7, sub_1D5E1DC48, sub_1D5E1DCA8, sub_1D5E1DCD8, sub_1D5E1DCE8);
          sub_1D62A1A50();
          if (v131)
          {
            sub_1D5D07BA8(v7, v139, v134);

            sub_1D5E1E15C(v28, v27, v29);
            sub_1D5FD7B18(&v143);

            return;
          }

          sub_1D5D07BA8(v7, v139, v134);

          sub_1D5E1E15C(v28, v27, v29);
          sub_1D5FD7B18(&v143);

          v3 = 0;
        }

        break;
      case 3:
      case 4:
        v155 = i;
        v142 = v4;
        v148 = v143;
        *&v149 = v25;
        v147 = 5;
        sub_1D5FD78CC(&v143, &v152);

        sub_1D5FD78CC(&v143, &v152);
        v134 = v9;
        sub_1D5D03180(v7, v139, v9);

        v31 = sub_1D703E0C8(&v148, &v147);
        if (!v3)
        {
          v32 = v31;

          v33 = swift_allocObject();
          *(v33 + 16) = v28;
          *(v33 + 24) = v27;
          *(v33 + 32) = v32;
          *(v33 + 40) = 0;
          v34 = v33 | 0x3000000000000000;
          v35 = *v5;
          swift_beginAccess();
          v36 = *(v35 + 16);
          v37 = *(v36 + 16);
          if (v37 && (v38 = *(v36 + 8 * v37 + 24), , v40 = sub_1D60E14A8(v38, v34, v39), , (v40 & 1) != 0))
          {
          }

          else
          {
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v63 = *v5;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1D5B4B554(0, &qword_1EC880338, &type metadata for FormatDerivedData._$CopyOnWriteStorage, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E6B60]);
              v121 = swift_allocObject();
              swift_beginAccess();
              v122 = v63[2];
              v152 = v63[1];
              v153 = v122;
              *v154 = v63[3];
              *&v154[14] = *(v63 + 62);
              memmove((v121 + 16), v63 + 1, 0x3EuLL);
              sub_1D5EB9AB0(&v152, &v148);

              *v5 = v121;
              v63 = v121;
            }

            swift_beginAccess();
            v64 = *(v63 + 2);
            v65 = swift_isUniquelyReferenced_nonNull_native();
            *(v63 + 2) = v64;
            if ((v65 & 1) == 0)
            {
              v64 = sub_1D698F848(0, *(v64 + 2) + 1, 1, v64);
              *(v63 + 2) = v64;
            }

            v67 = *(v64 + 2);
            v66 = *(v64 + 3);
            if (v67 >= v66 >> 1)
            {
              v64 = sub_1D698F848((v66 > 1), v67 + 1, 1, v64);
            }

            *(v64 + 2) = v67 + 1;
            *&v64[8 * v67 + 32] = v34;
            *(v63 + 2) = v64;
            swift_endAccess();
            v5 = a1;
          }

          v30 = v146;
          switch((2 * HIBYTE(v146)) | ((v146 & 8) != 0))
          {
            case 1:
            case 5:
            case 6:
            case 7:
            case 9:
            case 10:
            case 11:
            case 13:
              sub_1D5D07BA8(v7, v139, v9);
LABEL_147:

              goto LABEL_6;
            case 2:
              v131 = 0;
              v27 = *(&v143 + 1);
              v29 = v144;
              v28 = v143;
              goto LABEL_76;
            case 12:
              sub_1D5D07BA8(v7, v139, v9);

              goto LABEL_140;
            default:
              sub_1D5D07BA8(v7, v139, v9);

              sub_1D5FD7B18(&v143);
              goto LABEL_140;
          }
        }

        sub_1D5D07BA8(v7, v139, v9);

        sub_1D5FD7B18(&v143);
        goto LABEL_172;
      case 12:
        v155 = i;
        v142 = v4;

        goto LABEL_140;
      default:
        goto LABEL_7;
    }

LABEL_6:
    v4 = v142;
    i = v155;
LABEL_7:
    if (!--v4)
    {
      return;
    }
  }

  v155 = i;
  v142 = v4;
  if (v11 != 1)
  {
    v131 = v3;
    v42 = *((v10 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v41 = *((v10 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    v43 = swift_allocObject();
    *(v43 + 16) = v42;
    *(v43 + 24) = v41;
    v44 = *v5;
    swift_beginAccess();
    v45 = *(v44 + 16);
    v46 = *(v45 + 16);
    if (v46 && (v47 = *(v45 + 8 * v46 + 24), v47 >> 60 == 4) && ((v48 = v47 & 0xFFFFFFFFFFFFFFFLL, *(v48 + 16) == v42) ? (v49 = *(v48 + 24) == v41) : (v49 = 0), v49 || (sub_1D72646CC() & 1) != 0))
    {

LABEL_4:
    }

    else
    {

      sub_1D5D03180(v7, v8, v9);

      v50 = swift_isUniquelyReferenced_nonNull_native();
      v51 = *v5;
      if ((v50 & 1) == 0)
      {
        sub_1D5B4B554(0, &qword_1EC880338, &type metadata for FormatDerivedData._$CopyOnWriteStorage, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E6B60]);
        v117 = swift_allocObject();
        swift_beginAccess();
        v118 = v51[2];
        v152 = v51[1];
        v153 = v118;
        *v154 = v51[3];
        *&v154[14] = *(v51 + 62);
        memmove((v117 + 16), v51 + 1, 0x3EuLL);
        sub_1D5EB9AB0(&v152, &v148);

        *v5 = v117;
        v51 = v117;
      }

      swift_beginAccess();
      v52 = *(v51 + 2);
      v53 = swift_isUniquelyReferenced_nonNull_native();
      *(v51 + 2) = v52;
      if ((v53 & 1) == 0)
      {
        v52 = sub_1D698F848(0, *(v52 + 2) + 1, 1, v52);
        *(v51 + 2) = v52;
      }

      v55 = *(v52 + 2);
      v54 = *(v52 + 3);
      if (v55 >= v54 >> 1)
      {
        v52 = sub_1D698F848((v54 > 1), v55 + 1, 1, v52);
      }

      *(v52 + 2) = v55 + 1;
      *&v52[8 * v55 + 32] = v43 | 0x4000000000000000;
      *(v51 + 2) = v52;
      swift_endAccess();
      sub_1D5D07BA8(v7, v8, v9);

      v5 = a1;
    }

    v3 = v131;
    goto LABEL_6;
  }

  v138 = v8;
  v12 = v3;
  v13 = *((v10 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  v135 = *((v10 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
  v130 = *((v10 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
  v15 = *(v13 + 16);
  v14 = *(v13 + 24);
  v16 = *(v13 + 32);
  v17 = *(v13 + 40);
  v18 = *(v13 + 64);
  v19 = *(v13 + 66);
  if (v19)
  {
    v20 = 8;
  }

  else
  {
    v20 = 0;
  }

  v21 = v20 & 0xFFFFFFF8 | (v18 >> 11) & 7;
  v133 = v9;
  if (v21 > 4)
  {
    if (v21 <= 6)
    {
      if (v21 != 5)
      {
        v3 = v12;
        v22 = v135;
        if (v17 >> 6)
        {
          if (v17 >> 6 != 1)
          {
            v58 = v17 & 0x3F;
            if (v58 > 1)
            {
              goto LABEL_49;
            }

LABEL_131:
            v5 = a1;
            if (!v58)
            {
              goto LABEL_83;
            }

            v24 = v130;
            if ((~v14 & 0xF000000000000007) != 0)
            {
              *&v152 = *(v13 + 24);

              sub_1D5D03180(v7, v138, v9);

              sub_1D5CFCFAC(v14);
              sub_1D6E5C118(a1);
              if (v3)
              {
                goto LABEL_177;
              }

              v56 = v138;
              goto LABEL_86;
            }

            goto LABEL_80;
          }

LABEL_54:
          v23 = *(v13 + 32);
          v5 = a1;
          if (v23 > 1)
          {
LABEL_55:
            v24 = v130;
            goto LABEL_80;
          }

          goto LABEL_18;
        }

LABEL_70:
        if (*(v13 + 32) > 1u)
        {
          v5 = a1;
          v24 = v130;
          goto LABEL_80;
        }

        v5 = a1;
        v24 = v130;
        if (!*(v13 + 32))
        {
LABEL_80:

          v68 = v7;
          v56 = v138;
          goto LABEL_81;
        }

LABEL_72:
        v56 = v138;
        if ((~v15 & 0xF000000000000007) != 0)
        {
          *&v152 = *(v13 + 16);

          sub_1D5D03180(v7, v138, v9);

          sub_1D5CFCFAC(v15);
          sub_1D6E5C118(v5);
          if (v3)
          {
LABEL_177:
            sub_1D5D07BA8(v7, v138, v9);

            return;
          }

          goto LABEL_86;
        }

        v68 = v7;
LABEL_81:
        sub_1D5D03180(v68, v56, v9);
        goto LABEL_84;
      }
    }

    else
    {
      if (v21 != 7)
      {
        v3 = v12;
        v5 = a1;

        v56 = v138;
        sub_1D5D03180(v7, v138, v9);
        v24 = v130;

        v22 = v135;
        goto LABEL_85;
      }

      if (v18 >> 14)
      {
        v127 = v7;
        v128 = *(v13 + 56);
        v129 = *(v13 + 48);
        if (v18 >> 14 == 1)
        {
          *&v152 = *(v13 + 16);
          *(&v152 + 1) = v14;
          *&v153 = v16;
          LOBYTE(v148) = 5;

          sub_1D5D03180(v7, v138, v9);

          sub_1D5E1DCFC(v15, v14, v16, v17, v129, v128, v18, v19, sub_1D5E1DA1C, sub_1D5E1DA1C, sub_1D5E1DA6C);
          v59 = sub_1D703E0C8(&v152, &v148);
          v3 = v12;
          if (v12)
          {
            sub_1D5D07BA8(v7, v138, v9);

LABEL_175:

            return;
          }

          v60 = v59;
          v61 = swift_allocObject();
          *(v61 + 16) = v15;
          *(v61 + 24) = v14;
          *(v61 + 32) = v60;
          *(v61 + 40) = 0;

          v5 = a1;
          sub_1D6C4D24C(v61 | 0x3000000000000000);

          v22 = v135;
          v24 = v130;
          v56 = v138;
        }

        else
        {
          v123 = v18 & 0x7FF;
          v124 = *(v13 + 24);
          v125 = *(v13 + 16);
          switch((v18 >> 7) & 0xE | (v18 >> 3) & 1)
          {
            case 2u:

              sub_1D5D03180(v7, v138, v9);
              v116 = v18 & 0xF7;

              v22 = v135;

              *&v152 = v15;
              *(&v152 + 1) = v14;
              *&v153 = v16;
              *(&v153 + 1) = v17;
              v105 = v128;
              v106 = v129;
              *v154 = v129;
              *&v154[8] = v128;
              v154[16] = v116;
              sub_1D6292190(a1);
              v3 = v12;
              if (!v12)
              {
                v56 = v138;
                goto LABEL_128;
              }

              sub_1D5D07BA8(v127, v138, v133);

              goto LABEL_175;
            case 3u:
            case 4u:
              *&v152 = *(v13 + 16);
              *(&v152 + 1) = v14;
              *&v153 = v16;
              LOBYTE(v148) = 5;
              v126 = v16;
              v110 = v14;

              sub_1D5D03180(v7, v138, v9);

              sub_1D5E1DCFC(v15, v14, v126, v17, v129, v128, v18, v19, sub_1D5E1DA1C, sub_1D5E1DA1C, sub_1D5E1DA6C);

              v111 = sub_1D703E0C8(&v152, &v148);
              if (v12)
              {
                sub_1D5D07BA8(v7, v138, v9);

                return;
              }

              v112 = v111;

              v113 = swift_allocObject();
              *(v113 + 16) = v125;
              *(v113 + 24) = v14;
              *(v113 + 32) = v112;
              *(v113 + 40) = 0;
              sub_1D6C4D24C(v113 | 0x3000000000000000);

              *&v152 = v125;
              *(&v152 + 1) = v14;
              *&v153 = v126;
              LOBYTE(v148) = 5;
              sub_1D5E1DCFC(v125, v14, v126, v17, v129, v128, v18, v19, sub_1D5E1DA1C, sub_1D5E1DA1C, sub_1D5E1DA6C);

              v3 = 0;
              v114 = sub_1D703E0C8(&v152, &v148);

              v115 = swift_allocObject();
              *(v115 + 16) = v125;
              *(v115 + 24) = v110;
              *(v115 + 32) = v114;
              *(v115 + 40) = 0;
              sub_1D6C4D24C(v115 | 0x3000000000000000);

              v56 = v138;
              v22 = v135;
              v16 = v126;
LABEL_127:
              v105 = v128;
              v106 = v129;
LABEL_128:
              *&v152 = v125;
              *(&v152 + 1) = v124;
              *&v153 = v16;
              *(&v153 + 1) = v17;
              *v154 = v106;
              *&v154[8] = v105;
              *&v154[16] = v123;
              v5 = a1;
              sub_1D62099A8(a1);
              if (v3)
              {
                sub_1D5D07BA8(v127, v56, v133);

                return;
              }

              v24 = v130;
              v7 = v127;
              break;
            default:

              v56 = v138;
              sub_1D5D03180(v7, v138, v9);

              v22 = v135;

              v3 = v12;
              goto LABEL_127;
          }
        }

        goto LABEL_86;
      }
    }

    v56 = v138;
    sub_1D5D03180(v7, v138, v9);
    v24 = v130;

    v22 = v135;

    v3 = v12;
    v5 = a1;
    goto LABEL_86;
  }

  v3 = v12;
  if (v21 <= 1)
  {
    v22 = v135;
    if (v21)
    {
      goto LABEL_50;
    }

    v57 = (v17 >> 3) & 7;
    if (v57 <= 1)
    {
      v5 = a1;
      if (v57)
      {
        goto LABEL_83;
      }

LABEL_17:
      v23 = *(v13 + 32);
      if (v23 > 1)
      {
        goto LABEL_55;
      }

LABEL_18:
      v24 = v130;
      if (!v23)
      {
        goto LABEL_80;
      }

      goto LABEL_72;
    }

    if (v57 != 2 && v57 != 3 && v17 >> 6)
    {
      if (v17 >> 6 != 1)
      {
        v58 = v17 & 7;
        if (v58 > 1)
        {
LABEL_49:
          v5 = a1;
          goto LABEL_83;
        }

        goto LABEL_131;
      }

      goto LABEL_54;
    }

    goto LABEL_70;
  }

  v22 = v135;
  if (v21 == 2)
  {
LABEL_50:

    v56 = v138;
    sub_1D5D03180(v7, v138, v9);
    v24 = v130;

    v5 = a1;
    goto LABEL_86;
  }

  v5 = a1;
  if (v21 == 3)
  {
    goto LABEL_17;
  }

LABEL_83:

  v56 = v138;
  sub_1D5D03180(v7, v138, v9);
  v24 = v130;
LABEL_84:

LABEL_85:

LABEL_86:
  sub_1D6277BD0(v5, v22);
  if (!v3)
  {
    if (!(v24 >> 62))
    {
      v82 = *(v24 + 32);
      v152 = *(v24 + 16);
      v153 = v82;
      v83 = *(v24 + 48);
      *&v154[16] = *(v24 + 64);
      *v154 = v83;
      v84 = v154[16];
      switch((2 * v154[17]) | ((v154[16] & 8) != 0))
      {
        case 2:
          v136 = *v154;
          *(&v82 + 1) = *(&v153 + 1);
          v132 = v82;
          v141 = v152;

          v107 = v132;
          v108 = v136;
          v109 = v141;
LABEL_146:
          v148 = v109;
          v149 = v107;
          v150 = v108;
          v151 = v84 & 0xF7;
          sub_1D6292190(v5);
          sub_1D5D07BA8(v7, v56, v133);

          goto LABEL_147;
        case 3:
        case 4:
          v102 = *(&v152 + 1);
          v143 = v152;
          *&v144 = v82;
          v147 = 5;
          v140 = v152;

          sub_1D5FD78CC(&v152, &v148);

          v103 = sub_1D703E0C8(&v143, &v147);

          v104 = swift_allocObject();
          *(v104 + 16) = v140;
          *(v104 + 24) = v102;
          *(v104 + 32) = v103;
          *(v104 + 40) = 0;
          sub_1D6C4D24C(v104 | 0x3000000000000000);

          v84 = v154[16];
          switch((2 * v154[17]) | ((v154[16] & 8) != 0))
          {
            case 2:
              v107 = v153;
              v108 = *v154;
              v109 = v152;
              v5 = a1;
              goto LABEL_146;
            case 12:
              sub_1D5D07BA8(v7, v56, v133);

              v5 = a1;
              goto LABEL_144;
            default:
              sub_1D5D07BA8(v7, v56, v133);

              goto LABEL_123;
          }

        case 12:

          sub_1D5D07BA8(v7, v56, v133);

LABEL_144:

          goto LABEL_147;
        default:
          sub_1D5D07BA8(v7, v56, v133);

          goto LABEL_140;
      }
    }

    if (v24 >> 62 == 1)
    {
      v69 = v24 & 0x3FFFFFFFFFFFFFFFLL;
      v70 = *((v24 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v71 = *((v24 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v72 = *(v69 + 32);
      v74 = *(v70 + 16);
      v73 = *(v70 + 24);
      v75 = *(v70 + 32);
      v76 = *(v70 + 40);
      v77 = *(v70 + 64);
      if (*(v70 + 66))
      {
        v78 = 8;
      }

      else
      {
        v78 = 0;
      }

      v79 = v78 & 0xFFFFFFF8 | (v77 >> 11) & 7;
      if (v79 > 4)
      {
        v80 = v7;
        if (v79 <= 6)
        {
          v81 = v56;
          if (v79 == 5)
          {
            goto LABEL_138;
          }

          *&v152 = *(v70 + 16);
          *(&v152 + 1) = v73;
          *&v153 = v75;
          BYTE8(v153) = v76;

          sub_1D628E970(a1);
          goto LABEL_139;
        }

        if (v79 != 7)
        {
          v81 = v56;
          goto LABEL_138;
        }

        *&v152 = *(v70 + 16);
        *(&v152 + 1) = v73;
        *&v153 = v75;
        *(&v153 + 1) = v76;
        *v154 = *(v70 + 48);
        *&v154[16] = v77 & 0xC7FF;

        sub_1D690A374(a1);
      }

      else
      {
        if (v79 > 1)
        {
          v80 = v7;
          if (v79 != 2)
          {
            v81 = v56;
            if (v79 == 3)
            {
              goto LABEL_96;
            }

LABEL_138:

            goto LABEL_139;
          }

LABEL_137:
          v81 = v56;
          goto LABEL_138;
        }

        if (v79)
        {
          v80 = v7;
          goto LABEL_137;
        }

        v101 = (v76 >> 3) & 7;
        if (v101 <= 1)
        {
          v80 = v7;
          v81 = v56;
          if (v101)
          {
            goto LABEL_138;
          }

LABEL_96:
          *&v152 = v74;
          *(&v152 + 1) = v73;
          LOBYTE(v153) = v75;

          sub_1D628E900(a1);
LABEL_139:
          sub_1D6277BD0(a1, v71);
          *&v152 = v72;

          sub_1D6EFC7A4(a1);
          v5 = a1;
          sub_1D5D07BA8(v80, v81, v133);

LABEL_140:

          goto LABEL_6;
        }

        if (v101 == 2 || v101 == 3)
        {
          *&v152 = v74;
          *(&v152 + 1) = v73;
          LOBYTE(v153) = v75;

          sub_1D628E900(a1);
        }

        else
        {
          *&v152 = v74;
          *(&v152 + 1) = v73;
          *&v153 = v75;
          BYTE8(v153) = v76 & 0xC7;

          sub_1D628E970(a1);
        }

        v80 = v7;
      }

      v81 = v56;
      goto LABEL_139;
    }

    v85 = *((v24 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v86 = *((v24 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    v87 = swift_allocObject();
    *(v87 + 16) = v85;
    *(v87 + 24) = v86;
    v88 = v87 | 0x4000000000000000;
    v89 = *a1;
    swift_beginAccess();
    v90 = *(v89 + 16);
    v91 = *(v90 + 16);
    if (v91)
    {
      v92 = *(v90 + 8 * v91 + 24);

      v94 = sub_1D60E14A8(v92, v88, v93);
      v3 = 0;

      if (v94)
      {

        sub_1D5D07BA8(v7, v56, v133);

LABEL_123:

        goto LABEL_124;
      }
    }

    else
    {
    }

    v95 = swift_isUniquelyReferenced_nonNull_native();
    v96 = *a1;
    if ((v95 & 1) == 0)
    {
      sub_1D5B4B554(0, &qword_1EC880338, &type metadata for FormatDerivedData._$CopyOnWriteStorage, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E6B60]);
      v119 = swift_allocObject();
      swift_beginAccess();
      v120 = v96[2];
      v152 = v96[1];
      v153 = v120;
      *v154 = v96[3];
      *&v154[14] = *(v96 + 62);
      memmove((v119 + 16), v96 + 1, 0x3EuLL);
      sub_1D5EB9AB0(&v152, &v148);

      *a1 = v119;
      v96 = v119;
    }

    swift_beginAccess();
    v97 = *(v96 + 2);
    v98 = swift_isUniquelyReferenced_nonNull_native();
    *(v96 + 2) = v97;
    if ((v98 & 1) == 0)
    {
      v97 = sub_1D698F848(0, *(v97 + 2) + 1, 1, v97);
      *(v96 + 2) = v97;
    }

    v100 = *(v97 + 2);
    v99 = *(v97 + 3);
    if (v100 >= v99 >> 1)
    {
      v97 = sub_1D698F848((v99 > 1), v100 + 1, 1, v97);
    }

    *(v97 + 2) = v100 + 1;
    *&v97[8 * v100 + 32] = v88;
    *(v96 + 2) = v97;
    swift_endAccess();
    sub_1D5D07BA8(v7, v56, v133);

LABEL_124:
    v5 = a1;
    goto LABEL_6;
  }

  sub_1D5D07BA8(v7, v56, v133);

LABEL_172:
}

void sub_1D627981C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *(a2 + 16);
  if (v4)
  {
    v6 = (a2 + 56);
    do
    {
      if ((*v6 & 0x8000000000000000) != 0)
      {
        v7 = *(v6 - 3);
        v8 = *(v6 - 2);
        v9 = *(v6 - 8);
        v10 = *((*v6 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
        v11 = *(v10 + 24);
        sub_1D5D03180(v7, v8, v9);

        sub_1D627981C(a1, v11);
        if (v3)
        {

          sub_1D5D07BA8(v7, v8, v9);

          return;
        }

        sub_1D628E5E4(a1, *(v10 + 32));
        v3 = 0;

        sub_1D5D07BA8(v7, v8, v9);
      }

      v6 += 4;
      --v4;
    }

    while (v4);
  }
}

void sub_1D6279934(uint64_t *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = a1;
    v5 = (a2 + 40);
    v98 = a1;
    while (1)
    {
      v6 = *v5;
      *&v95 = *(v5 - 1);

      swift_retain_n();
      sub_1D6285C00(v4, v7, v8, v9, v10, v11, v12, v13);
      v14 = v2;
      if (v2)
      {

        return;
      }

      if (v6 < 0)
      {
        break;
      }

      v15 = *(v6 + 16);
      v16 = *(v6 + 24);

      sub_1D6279934(v4, v15);
      if (v16 < 0)
      {
        if (!*((v16 & 0x7FFFFFFFFFFFFFFFLL) + 0x28) || *((v16 & 0x7FFFFFFFFFFFFFFFLL) + 0x28) == 1)
        {
        }

        else
        {
          v32 = *((v16 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
          v33 = *((v16 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
          *&v95 = *((v16 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
          v34 = v95;
          *(&v95 + 1) = v32;
          *&v96 = v33;
          v94[0] = 6;

          sub_1D62B6240(v34, v32, v33, 2);
          v35 = sub_1D703E0C8(&v95, v94);
          v36 = swift_allocObject();
          *(v36 + 16) = v34;
          *(v36 + 24) = v32;
          *(v36 + 32) = v35;
          *(v36 + 40) = 0;

          v4 = v98;
          sub_1D6C4D24C(v36 | 0x3000000000000000);
        }

        goto LABEL_7;
      }

      v93 = v3;
      v17 = *(v16 + 16);
      v18 = *(v16 + 24);

      sub_1D6279934(v4, v17);
      if (v18 < 0)
      {
        if (!*((v18 & 0x7FFFFFFFFFFFFFFFLL) + 0x28) || *((v18 & 0x7FFFFFFFFFFFFFFFLL) + 0x28) == 1)
        {
        }

        else
        {
          v37 = *((v18 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
          v38 = *((v18 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
          *&v95 = *((v18 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
          v39 = v95;
          *(&v95 + 1) = v37;
          *&v96 = v38;
          v94[0] = 6;

          sub_1D62B6240(v39, v37, v38, 2);
          v40 = sub_1D703E0C8(&v95, v94);
          v41 = swift_allocObject();
          *(v41 + 16) = v39;
          *(v41 + 24) = v37;
          *(v41 + 32) = v40;
          *(v41 + 40) = 0;

          v4 = v98;
          sub_1D6C4D24C(v41 | 0x3000000000000000);
        }

        goto LABEL_6;
      }

      v19 = v4;
      v20 = *(v18 + 16);
      v21 = *(v18 + 24);

      sub_1D6279934(v19, v20);
      if (v21 < 0)
      {
        v54 = v21 & 0x7FFFFFFFFFFFFFFFLL;
        if (*((v21 & 0x7FFFFFFFFFFFFFFFLL) + 0x28) && *((v21 & 0x7FFFFFFFFFFFFFFFLL) + 0x28) != 1)
        {
          v55 = *((v21 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
          v56 = *((v21 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
          v57 = *((v21 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
          *&v95 = *(v54 + 16);
          *(&v95 + 1) = v55;
          *&v96 = v56;
          v94[0] = 6;

          sub_1D62B6240(v57, v55, v56, 2);
          v88 = sub_1D703E0C8(&v95, v94);
          v58 = swift_allocObject();
          *(v58 + 16) = v57;
          *(v58 + 24) = v55;
          *(v58 + 32) = v88;
          *(v58 + 40) = 0;

          v4 = v98;
          sub_1D6C4D24C(v58 | 0x3000000000000000);

          goto LABEL_37;
        }
      }

      else
      {
        v22 = *(v21 + 16);
        v23 = *(v21 + 24);

        sub_1D6279934(v98, v22);
        if (v23 < 0)
        {
          v59 = v23 & 0x7FFFFFFFFFFFFFFFLL;
          if (*(v59 + 40) && *(v59 + 40) != 1)
          {
            v60 = *(v59 + 24);
            v90 = *(v59 + 32);
            *&v95 = *(v59 + 16);
            v61 = v95;
            *(&v95 + 1) = v60;
            *&v96 = v90;
            v94[0] = 6;

            sub_1D62B6240(v61, v60, v90, 2);
            v87 = sub_1D703E0C8(&v95, v94);
            v62 = swift_allocObject();
            *(v62 + 16) = v61;
            *(v62 + 24) = v60;
            *(v62 + 32) = v87;
            *(v62 + 40) = 0;

            v63 = v98;
            sub_1D6C4D24C(v62 | 0x3000000000000000);

            v4 = v63;
LABEL_37:

LABEL_38:

            goto LABEL_6;
          }
        }

        else
        {
          v24 = *(v23 + 16);
          v25 = *(v23 + 24);

          sub_1D6279934(v98, v24);
          if ((v25 & 0x8000000000000000) == 0)
          {
            v26 = *(v25 + 16);
            v27 = *(v25 + 24);

            sub_1D6279934(v98, v26);
            if ((v27 & 0x8000000000000000) == 0)
            {
              v28 = *(v27 + 16);
              v29 = *(v27 + 24);

              v30 = v98;
              sub_1D6279934(v98, v28);
              *&v95 = v29;

              sub_1D629D0A0(v30, v31);
              v14 = 0;

              goto LABEL_17;
            }

            v77 = v27 & 0x7FFFFFFFFFFFFFFFLL;
            v14 = 0;
            if (*((v27 & 0x7FFFFFFFFFFFFFFFLL) + 0x28) && *((v27 & 0x7FFFFFFFFFFFFFFFLL) + 0x28) != 1)
            {
              v78 = *((v27 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
              v79 = *((v27 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
              v80 = *((v27 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
              *&v95 = *(v77 + 16);
              *(&v95 + 1) = v78;
              *&v96 = v79;
              v94[0] = 6;

              sub_1D62B6240(v80, v78, v79, 2);
              v86 = sub_1D703E0C8(&v95, v94);
              v81 = swift_allocObject();
              v81[2] = v80;
              v81[3] = v78;
              v81[4] = v86;
              v81[5] = 0;
              v82 = v81;

              sub_1D6C4D24C(v82 | 0x3000000000000000);

LABEL_17:
            }

            else
            {
            }

            goto LABEL_5;
          }

          v71 = (v25 & 0x7FFFFFFFFFFFFFFFLL);
          v72 = *((v25 & 0x7FFFFFFFFFFFFFFFLL) + 0x28);
          if (*((v25 & 0x7FFFFFFFFFFFFFFFLL) + 0x28))
          {
            v14 = 0;
            if (v72 != 1)
            {
              v73 = v71[3];
              v91 = v71[4];
              *&v95 = v71[2];
              v74 = v95;
              *(&v95 + 1) = v73;
              *&v96 = v91;
              v94[0] = 6;

              sub_1D62B6240(v74, v73, v91, 2);
              v85 = sub_1D703E0C8(&v95, v94);
              v75 = swift_allocObject();
              *(v75 + 16) = v74;
              *(v75 + 24) = v73;
              *(v75 + 32) = v85;
              *(v75 + 40) = 0;

              v76 = v98;
              sub_1D6C4D24C(v75 | 0x3000000000000000);

              v4 = v76;

              goto LABEL_38;
            }
          }

          else
          {
            v14 = 0;
          }
        }
      }

LABEL_5:
      v4 = v98;
LABEL_6:
      v3 = v93;
LABEL_7:
      v5 += 2;

      --v3;
      v2 = v14;
      if (!v3)
      {
        return;
      }
    }

    if (!*((v6 & 0x7FFFFFFFFFFFFFFFLL) + 0x28) || *((v6 & 0x7FFFFFFFFFFFFFFFLL) + 0x28) == 1)
    {

      goto LABEL_7;
    }

    v93 = v3;
    v43 = *((v6 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
    v42 = *((v6 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
    v44 = *((v6 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
    *&v95 = v43;
    *(&v95 + 1) = v42;
    *&v96 = v44;
    v94[0] = 6;
    sub_1D62B6240(v43, v42, v44, 2);

    sub_1D62B6240(v43, v42, v44, 2);
    v45 = sub_1D703E0C8(&v95, v94);
    v46 = swift_allocObject();
    *(v46 + 16) = v43;
    *(v46 + 24) = v42;
    *(v46 + 32) = v45;
    *(v46 + 40) = 0;
    v47 = v46 | 0x3000000000000000;
    v48 = *v98;
    swift_beginAccess();
    v49 = *(v48 + 16);
    v50 = *(v49 + 16);
    v92 = v47;
    if (v50)
    {
      v51 = *(v49 + 8 * v50 + 24);

      v53 = sub_1D60E14A8(v51, v47, v52);

      if (v53)
      {

LABEL_49:
        sub_1D62B628C(v43, v42, v44, 2);

        goto LABEL_5;
      }
    }

    else
    {
    }

    v64 = v98;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v66 = *v64;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1D5B4B554(0, &qword_1EC880338, &type metadata for FormatDerivedData._$CopyOnWriteStorage, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E6B60]);
      v83 = swift_allocObject();
      swift_beginAccess();
      v84 = v66[2];
      v95 = v66[1];
      v96 = v84;
      v97[0] = v66[3];
      *(v97 + 14) = *(v66 + 62);
      memmove((v83 + 16), v66 + 1, 0x3EuLL);
      sub_1D5EB9AB0(&v95, v94);

      *v98 = v83;
      v66 = v83;
    }

    swift_beginAccess();
    v67 = *(v66 + 2);
    v68 = swift_isUniquelyReferenced_nonNull_native();
    *(v66 + 2) = v67;
    v89 = v66;
    if ((v68 & 1) == 0)
    {
      v67 = sub_1D698F848(0, *(v67 + 2) + 1, 1, v67);
      *(v66 + 2) = v67;
    }

    v70 = *(v67 + 2);
    v69 = *(v67 + 3);
    if (v70 >= v69 >> 1)
    {
      v67 = sub_1D698F848((v69 > 1), v70 + 1, 1, v67);
    }

    *(v67 + 2) = v70 + 1;
    *&v67[8 * v70 + 32] = v92;
    *(v89 + 2) = v67;
    swift_endAccess();
    goto LABEL_49;
  }
}

void sub_1D627A76C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *(a2 + 16);
  if (v4)
  {
    v6 = 0;
    v7 = a2 + 32;
    v92 = a2 + 32;
    v60 = v4;
    do
    {
      v8 = (v7 + 136 * v6);
      v9 = v8[5];
      v10 = v8[7];
      v87 = v8[6];
      v88 = v10;
      v11 = v8[1];
      v12 = v8[3];
      v83 = v8[2];
      v84 = v12;
      v13 = v8[3];
      v14 = v8[5];
      v85 = v8[4];
      v86 = v14;
      v15 = v8[1];
      v81 = *v8;
      v82 = v15;
      v16 = v8[7];
      v90[6] = v87;
      v90[7] = v16;
      v90[2] = v83;
      v90[3] = v13;
      v90[4] = v85;
      v90[5] = v9;
      v89 = *(v8 + 128);
      v91 = *(v8 + 128);
      v90[0] = v81;
      v90[1] = v11;
      v17 = sub_1D5F78DC4(v90);
      if (v17)
      {
        if (v17 == 1)
        {
          v18 = sub_1D5DEA32C(v90);
          v72 = *v18;
          v19 = *(v18 + 64);
          v21 = *(v18 + 16);
          v20 = *(v18 + 32);
          v75 = *(v18 + 48);
          v76 = v19;
          v73 = v21;
          v74 = v20;
          v23 = *(v18 + 96);
          v22 = *(v18 + 112);
          v24 = *(v18 + 80);
          v80 = *(v18 + 128);
          v78 = v23;
          v79 = v22;
          v77 = v24;
          if (sub_1D6011234(&v72) == 1)
          {
            *&v61[0] = *sub_1D5D756B8(&v72);
            v65 = v83;
            v66 = v84;
            v63 = v81;
            v64 = v82;
            v71 = v89;
            v69 = v87;
            v70 = v88;
            v67 = v85;
            v68 = v86;
            v25 = sub_1D5DEA32C(&v63);
            sub_1D5ECEF80(&v81, v62);
            sub_1D5F78E88(v25, v62);
            sub_1D62895DC(a1);
            if (v3)
            {
              sub_1D5ECEFDC(&v81);

              return;
            }

            sub_1D5ECEFDC(&v81);
          }

          else
          {
            v32 = sub_1D5D756B8(&v72);
            v33 = v32[3];
            v35 = *v32;
            v34 = v32[1];
            v61[2] = v32[2];
            v61[3] = v33;
            v61[0] = v35;
            v61[1] = v34;
            v36 = v32[7];
            v38 = v32[4];
            v37 = v32[5];
            v61[6] = v32[6];
            v61[7] = v36;
            v61[4] = v38;
            v61[5] = v37;
            if (sub_1D6011280(v61) != 1)
            {
              v52 = sub_1D5D756C8(v61);
              v53 = *v52;
              v54 = v52[6];
              v55 = v52[7];
              v56 = *(*v52 + 16);
              v69 = v87;
              v70 = v88;
              v71 = v89;
              v67 = v85;
              v68 = v86;
              v65 = v83;
              v66 = v84;
              v63 = v81;
              v64 = v82;
              v57 = sub_1D5DEA32C(&v63);
              sub_1D5F78E88(v57, v62);
              if (v56)
              {
                v58 = (v53 + 32);
                do
                {
                  v59 = *v58++;
                  *&v62[0] = v59;

                  sub_1D62895DC(a1);
                  if (v3)
                  {
                    goto LABEL_39;
                  }
                }

                while (--v56);
              }

              if (!v54)
              {
                sub_1D5ECEFDC(&v81);
                v4 = v60;
                v7 = v92;
                goto LABEL_4;
              }

              sub_1D6273544(a1, v54);
              v4 = v60;
              v7 = v92;
              if (v3)
              {
                sub_1D5CDE22C(v54, v55);
                goto LABEL_40;
              }

              sub_1D6273544(a1, v55);
              v3 = 0;
              sub_1D5CDE22C(v54, v55);
              goto LABEL_36;
            }

            v39 = *(sub_1D5D756C8(v61) + 112);
            v40 = *(v39 + 16);
            v71 = v89;
            v63 = v81;
            v64 = v82;
            v65 = v83;
            v66 = v84;
            v67 = v85;
            v68 = v86;
            v69 = v87;
            v70 = v88;
            v41 = sub_1D5DEA32C(&v63);
            sub_1D5F78E88(v41, v62);
            if (v40)
            {
              v42 = (v39 + 32);
              do
              {
                v43 = *v42++;
                *&v62[0] = v43;

                sub_1D62895DC(a1);
                if (v3)
                {
                  goto LABEL_39;
                }
              }

              while (--v40);
            }

            sub_1D5ECEFDC(&v81);
            v7 = v92;
          }
        }

        else
        {
          sub_1D5DEA32C(v90);
        }
      }

      else
      {
        v26 = sub_1D5DEA32C(v90);
        sub_1D5F78F40(v26, v62);
        v67 = v62[4];
        v68 = v62[5];
        v69 = v62[6];
        v70 = v62[7];
        v63 = v62[0];
        v64 = v62[1];
        v65 = v62[2];
        v66 = v62[3];
        if (sub_1D6011280(&v63) == 1)
        {
          v27 = *(sub_1D5D756C8(&v63) + 112);
          v28 = *(v27 + 16);
          v80 = v89;
          v72 = v81;
          v73 = v82;
          v74 = v83;
          v75 = v84;
          v76 = v85;
          v77 = v86;
          v78 = v87;
          v79 = v88;
          v29 = sub_1D5DEA32C(&v72);
          sub_1D5F78EE4(v29, v61);
          if (v28)
          {
            v30 = (v27 + 32);
            while (1)
            {
              v31 = *v30++;
              *&v61[0] = v31;

              sub_1D62895DC(a1);
              if (v3)
              {
                break;
              }

              if (!--v28)
              {
                goto LABEL_36;
              }
            }

LABEL_39:

LABEL_40:
            sub_1D5ECEFDC(&v81);
            return;
          }

LABEL_36:
          sub_1D5ECEFDC(&v81);
          goto LABEL_4;
        }

        v44 = sub_1D5D756C8(&v63);
        v45 = *v44;
        v47 = v44[6];
        v46 = v44[7];
        v48 = *(*v44 + 16);
        v78 = v87;
        v79 = v88;
        v80 = v89;
        v76 = v85;
        v77 = v86;
        v74 = v83;
        v75 = v84;
        v72 = v81;
        v73 = v82;
        v49 = sub_1D5DEA32C(&v72);
        sub_1D5F78EE4(v49, v61);
        if (v48)
        {
          v50 = (v45 + 32);
          do
          {
            v51 = *v50++;
            *&v61[0] = v51;

            sub_1D62895DC(a1);
            if (v3)
            {
              goto LABEL_39;
            }
          }

          while (--v48);
        }

        v7 = v92;
        if (v47)
        {

          sub_1D6273544(a1, v47);
          v4 = v60;
          if (v3)
          {
            sub_1D5CDE22C(v47, v46);
            goto LABEL_40;
          }

          sub_1D6273544(a1, v46);
          v3 = 0;
          sub_1D5CDE22C(v47, v46);
          sub_1D5ECEFDC(&v81);
        }

        else
        {
          sub_1D5ECEFDC(&v81);
          v4 = v60;
        }
      }

LABEL_4:
      ++v6;
    }

    while (v6 != v4);
  }
}

void sub_1D627AD20(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v66 = a1;
  v5 = type metadata accessor for FormatPropertyDefinition(0);
  v53 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a2 + 16);
  if (!v9)
  {
    return;
  }

  v10 = 0;
  v11 = a2 + 32;
  v44 = v8;
  v46 = v9;
  v45 = a2 + 32;
  while (1)
  {
    v14 = v11 + 88 * v10;
    v15 = *(v14 + 48);
    v62 = *(v14 + 32);
    v63 = v15;
    v64 = *(v14 + 64);
    v65 = *(v14 + 80);
    LOBYTE(v16) = v65;
    v17 = *(v14 + 16);
    v61[0] = *v14;
    v61[1] = v17;
    v18 = v65 >> 6;
    if (!v18)
    {
      goto LABEL_6;
    }

    v19 = v62;
    v20 = v63;
    v21 = *(&v64 + 1);
    v12 = v64;
    if (v18 != 1)
    {
      v51 = v10;
      v50 = v3;
      v31 = v65;
      v16 = *(v62 + 16);
      sub_1D62B7D1C(v61, v60);
      v47 = v20;
      v48 = v12;
      v52 = v21;
      v49 = v31;
      sub_1D618EC0C(v19, *(&v19 + 1), v20, *(&v20 + 1), v12, v21, v31);
      if (v16)
      {
        v22 = 0;
        v3 = v50;
        v32 = v44;
        v12 = *(&v19 + 1);
        v13 = v19;
        v11 = v45;
        while (v22 < *(v19 + 16))
        {
          sub_1D62B50EC(v19 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v22, v32, type metadata accessor for FormatPropertyDefinition);
          sub_1D629E924(v66);
          if (v3)
          {
            sub_1D62B51D0(v32, type metadata accessor for FormatPropertyDefinition);
            sub_1D62B7D78(v61);
            sub_1D60CF6F4(v19, *(&v19 + 1), v47, *(&v47 + 1), v48, v52, v49);
            return;
          }

          ++v22;
          sub_1D62B51D0(v32, type metadata accessor for FormatPropertyDefinition);
          if (v16 == v22)
          {
            goto LABEL_4;
          }
        }

        __break(1u);
LABEL_67:

LABEL_68:
        v42 = v52;
        sub_1D60CF6F4(v50, v13, v22, *(&v20 + 1), v12, v52, v16);
        sub_1D62B7D78(v61);
        goto LABEL_69;
      }

      v3 = v50;
      v12 = *(&v19 + 1);
      v13 = v19;
      v11 = v45;
LABEL_4:
      sub_1D62B7D78(v61);
      sub_1D60CF6F4(v13, v12, v47, *(&v47 + 1), v48, v52, v49);
      goto LABEL_5;
    }

    if (v65)
    {
      goto LABEL_6;
    }

    v13 = *(&v62 + 1);
    v50 = v62;
    v52 = *(&v64 + 1);
    v22 = v63;
    v23 = *(v63 + 16);
    v25 = *(v63 + 24);
    v24 = *(v63 + 32);
    v26 = *(v63 + 40);
    v27 = *(v63 + 64);
    if (*(v63 + 66))
    {
      v28 = 8;
    }

    else
    {
      v28 = 0;
    }

    v29 = v28 & 0xFFFFFFF8 | (v27 >> 11) & 7;
    v51 = v10;
    if (v29 > 4)
    {
      if (v29 > 6)
      {
        if (v29 == 7)
        {
          v54 = v63;
          v55 = v25;
          v56 = v24;
          v57 = v26;
          v58 = *(v63 + 48);
          v59 = v27 & 0xC7FF;
          sub_1D62B7D1C(v61, v60);
          v35 = v52;
          sub_1D618EC0C(v50, v13, v22, *(&v20 + 1), v12, v52, v16);
          sub_1D618ECBC(v22, *(&v20 + 1), v12, v35, 0);
          sub_1D690A374(v66);
          if (v3)
          {
            goto LABEL_68;
          }

          goto LABEL_63;
        }

        goto LABEL_53;
      }

      if (v29 == 5)
      {
        goto LABEL_53;
      }

      if (v26 >> 6 && v26 >> 6 != 1)
      {
        v34 = v26 & 0x3F;
        if (v34 <= 1)
        {
LABEL_57:
          if (v34 && (~v25 & 0xF000000000000007) != 0)
          {
            v54 = v25;
            sub_1D62B7D1C(v61, v60);
            v41 = v52;
            sub_1D618EC0C(v50, v13, v22, *(&v20 + 1), v12, v52, v16);
            sub_1D618ECBC(v22, *(&v20 + 1), v12, v41, 0);
            sub_1D5CFCFAC(v25);
            sub_1D6E5C118(v66);
            if (v3)
            {
              goto LABEL_67;
            }

            v30 = v52;
            v11 = v45;
            goto LABEL_55;
          }
        }

LABEL_53:
        sub_1D62B7D1C(v61, v60);
        v36 = v50;
        v37 = v13;
        v38 = v22;
        v39 = *(&v20 + 1);
        v40 = v12;
        v30 = v52;
        goto LABEL_54;
      }

      goto LABEL_41;
    }

    if (v29 > 1)
    {
      if (v29 != 3 || v24 > 1u || !v24)
      {
        goto LABEL_53;
      }

      v30 = v52;
      if ((~v23 & 0xF000000000000007) != 0)
      {
        v54 = v63;
        sub_1D62B7D1C(v61, v60);
        sub_1D618EC0C(v50, v13, v22, *(&v20 + 1), v12, v30, v16);
        sub_1D618ECBC(v22, *(&v20 + 1), v12, v30, 0);
        sub_1D5CFCFAC(v20);
        sub_1D6E5C118(v66);
        if (v3)
        {
          sub_1D62B7D78(v61);
          v42 = v52;
          sub_1D60CF6F4(v50, v13, v22, *(&v20 + 1), v12, v52, v16);
          goto LABEL_71;
        }

        goto LABEL_62;
      }

      goto LABEL_52;
    }

    if (v29)
    {
      goto LABEL_53;
    }

    v33 = (v26 >> 3) & 7;
    if (v33 <= 1)
    {
      if (v33)
      {
        goto LABEL_53;
      }
    }

    else if (v33 != 2 && v33 != 3)
    {
      if (v26 >> 6 && v26 >> 6 != 1)
      {
        v34 = v26 & 7;
        if (v34 <= 1)
        {
          goto LABEL_57;
        }

        goto LABEL_53;
      }

LABEL_41:
      if (v24 > 1u || !v24)
      {
        goto LABEL_53;
      }

      v30 = v52;
      if ((~v23 & 0xF000000000000007) != 0)
      {
        v54 = v63;
        sub_1D62B7D1C(v61, v60);
        sub_1D618EC0C(v50, v13, v22, *(&v20 + 1), v12, v30, v16);
        sub_1D618ECBC(v22, *(&v20 + 1), v12, v30, 0);
        sub_1D5CFCFAC(v20);
        sub_1D6E5C118(v66);
        if (v3)
        {
          goto LABEL_67;
        }

LABEL_62:

LABEL_63:
        v30 = v52;
        goto LABEL_55;
      }

      goto LABEL_52;
    }

    if (v24 > 1u || !v24)
    {
      goto LABEL_53;
    }

    v30 = v52;
    if ((~v23 & 0xF000000000000007) != 0)
    {
      break;
    }

LABEL_52:
    sub_1D62B7D1C(v61, v60);
    v36 = v50;
    v37 = v13;
    v38 = v22;
    v39 = *(&v20 + 1);
    v40 = v12;
LABEL_54:
    sub_1D618EC0C(v36, v37, v38, v39, v40, v30, v16);
    sub_1D618ECBC(v22, *(&v20 + 1), v12, v30, 0);
LABEL_55:
    sub_1D60CF6F4(v20, v13, v22, *(&v20 + 1), v12, v30, v16);
    sub_1D62B7D78(v61);
    sub_1D5E32940(v22, *(&v20 + 1), v12, v30, 0);
LABEL_5:
    v9 = v46;
    v10 = v51;
LABEL_6:
    if (++v10 == v9)
    {
      return;
    }
  }

  v54 = v63;
  sub_1D62B7D1C(v61, v60);
  sub_1D618EC0C(v50, v13, v22, *(&v20 + 1), v12, v30, v16);
  sub_1D618ECBC(v22, *(&v20 + 1), v12, v30, 0);
  sub_1D5CFCFAC(v20);
  sub_1D6E5C118(v66);
  if (!v3)
  {
    goto LABEL_62;
  }

  v42 = v52;
  sub_1D60CF6F4(v50, v13, v22, *(&v20 + 1), v12, v52, v16);
  sub_1D62B7D78(v61);
LABEL_71:

LABEL_69:
  sub_1D5E32940(v22, *(&v20 + 1), v12, v42, 0);
}

void sub_1D627B648(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    for (i = (a2 + 64); ; i += 5)
    {
      v6 = *i;

      swift_bridgeObjectRetain_n();
      sub_1D626DB9C(a1, v6);
      if (v2)
      {
        break;
      }

      swift_bridgeObjectRelease_n();

      if (!--v3)
      {
        return;
      }
    }

    swift_bridgeObjectRelease_n();
  }
}

void sub_1D627B710(uint64_t *a1, uint64_t a2)
{
  v5 = type metadata accessor for FormatCommandOpenURL(0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v281 = (&v275 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8, v9);
  v280 = (&v275 - v11);
  v12 = *(a2 + 16);
  if (!v12)
  {
    return;
  }

  v279 = v10;
  v13 = (a2 + 56);
  v286 = a1;
  while (1)
  {
    v15 = *(v13 - 3);
    v16 = *(v13 - 2);
    LODWORD(v17) = *(v13 - 8);
    v18 = *v13;
    v19 = *v13 >> 61;
    if (v19 <= 1)
    {
      break;
    }

    if (v19 == 2)
    {
      v287 = v13;
      v42 = v16;
      v43 = v18 & 0x1FFFFFFFFFFFFFFFLL;
      v44 = v17;
      v46 = *((v18 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v45 = *((v18 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v289 = v15;
      v47 = v42;
      v305 = v44;
      sub_1D5D03180(v15, v42, v44);
      v48 = (v45 & 0x1FFFFFFFFFFFFFFFLL);

      v285 = v43;

      sub_1D627EC58(a1, v46);
      if (v2)
      {

        v267 = v289;
        v268 = v47;
        v269 = v305;
        goto LABEL_257;
      }

      v49 = v45 >> 61;
      if ((v45 >> 61) > 1)
      {
        v50 = v47;
        if (v49 != 2)
        {
          if (v49 != 3)
          {

            v130 = v289;
            v131 = v47;
            v132 = v305;
            goto LABEL_228;
          }

          v52 = *((v45 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          v51 = *((v45 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
          v53 = *((v45 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
          v54 = *(v52 + 16);
          v55 = *(v52 + 24);
          v56 = *(v52 + 32);
          v57 = *(v52 + 40);
          v58 = *(v52 + 64);
          if (*(v52 + 66))
          {
            v59 = 8;
          }

          else
          {
            v59 = 0;
          }

          v60 = v59 & 0xFFFFFFF8 | (v58 >> 11) & 7;
          v61 = v305;
          if (v60 <= 3)
          {
            if ((v60 - 1) < 2)
            {
              goto LABEL_227;
            }

            v63 = v50;
            if (v60)
            {
              if (*(v52 + 32) != 1 || (v54 & 0xF000000000000007) == 0xF000000000000007)
              {
                v61 = v305;
                goto LABEL_227;
              }

              *(&v283 + 1) = v51;
LABEL_225:
              *&v290 = v54;
              goto LABEL_226;
            }

            *(&v283 + 1) = v48[4];
            v159 = v51;
            *&v290 = v54;
            *(&v290 + 1) = v55;
            *&v291 = v56;
            BYTE8(v291) = v57;
            sub_1D628E820(a1);
          }

          else
          {
            if (((1 << v60) & 0x330) != 0)
            {
              goto LABEL_227;
            }

            if (v60 == 6)
            {
              if (!(v57 >> 6) || v57 >> 6 == 1)
              {
                if (*(v52 + 32) == 1 && (v54 & 0xF000000000000007) != 0xF000000000000007)
                {
                  *(&v283 + 1) = v51;
                  v63 = v50;
                  goto LABEL_225;
                }

LABEL_227:
                sub_1D627B710(a1, v51);
                sub_1D6297730(a1, v53);

                v130 = v289;
                v131 = v50;
                v132 = v61;
LABEL_228:
                sub_1D5D07BA8(v130, v131, v132);

                v13 = v287;
                v2 = 0;
                goto LABEL_6;
              }

              if ((v57 & 0x3F) != 1 || (v55 & 0xF000000000000007) == 0xF000000000000007)
              {
                goto LABEL_227;
              }

              *(&v283 + 1) = v51;
              v63 = v50;
              *&v290 = v55;
LABEL_226:

              sub_1D6E5C118(a1);

              v50 = v63;
              v61 = v305;
              v51 = *(&v283 + 1);
              goto LABEL_227;
            }

            *(&v283 + 1) = v48[4];
            v159 = v51;
            v63 = v50;
            *&v290 = v54;
            *(&v290 + 1) = v55;
            *&v291 = v56;
            *(&v291 + 1) = v57;
            v292[0] = *(v52 + 48);
            LOWORD(v292[1]) = v58 & 0xC7FF;
            sub_1D690A374(a1);
          }

          v50 = v63;
          v61 = v305;
          v51 = v159;
          v53 = *(&v283 + 1);
          goto LABEL_227;
        }

        v129 = *((v45 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
        sub_1D627EC58(a1, *((v45 & 0x1FFFFFFFFFFFFFFFLL) + 0x10));
        sub_1D6297730(a1, v129);

        sub_1D5D07BA8(v289, v47, v305);

LABEL_154:
        v13 = v287;
        v2 = 0;
        goto LABEL_6;
      }

      v288 = v47;
      if (v49)
      {
        v133 = *((v45 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
        v135 = *((v45 & 0x1FFFFFFFFFFFFFFFLL) + 0x28);
        v134 = v48[6];
        v137 = v48[7];
        v136 = v48[8];
        v138 = v48[10];
        v139 = (~v133 & 0xF000000000000007) == 0 && (v135 & 7) == 7;
        v284 = v46;
        if (!v139)
        {
          v277 = v137;
          v278 = v138;
          *&v283 = v134;
          *(&v283 + 1) = v136;
          v140 = v48[2];
          v141 = v48[4];
          if ((v135 & 4) != 0)
          {
            *&v290 = v48[2];
            v282 = v141;
            sub_1D62B7098(v140, v133, v141, v135);
            sub_1D6E5C118(v286);
            sub_1D62B7110(v140, v133, v282, v135);
          }

          else
          {
            v282 = v12;
            v142 = v141;
            sub_1D62B7098(v140, v133, v141, v135);
            v143 = v286;
            v276 = v140;
            sub_1D6282658(v286, v140);
            sub_1D626CB38(v143, v133, v142, v135, v144, v145, v146);
            sub_1D62B7110(v276, v133, v142, v135);
            v12 = v282;
          }

          v136 = *(&v283 + 1);
          v134 = v283;
          v137 = v277;
          v138 = v278;
        }

        v191 = v305;
        if ((v134 & 0x3000000000000007 & v136) == 0x3000000000000007)
        {
          v192 = v288;
        }

        else
        {
          *&v290 = v134;
          *(&v290 + 1) = v137;
          *&v291 = v136;
          v193 = v134;
          v194 = v136;
          v195.n128_f64[0] = sub_1D62B6FC0(v134, v137, v136);
          sub_1D62975F8(v286, v195, v196, v197, v198, v199, v200, v201);
          sub_1D62B703C(v193, v137, v194);
          v192 = v288;
          v191 = v305;
        }

        sub_1D627DA04(v286, v138);

        sub_1D5D07BA8(v289, v192, v191);
LABEL_153:

        a1 = v286;
        goto LABEL_154;
      }

      v98 = *(v45 + 16);
      v100 = *(v45 + 40);
      v99 = *(v45 + 48);
      v101 = *(v45 + 64);
      *&v283 = *(v45 + 56);
      *(&v283 + 1) = v99;
      v102 = *(v45 + 72);
      if ((v100 & 4) != 0)
      {
        *&v290 = v98;
        sub_1D6E5C118(v286);
        if ((v101 & 0x2000000000000000) == 0)
        {
          goto LABEL_104;
        }

LABEL_62:
        *&v290 = *(&v283 + 1);
        a1 = v286;
        sub_1D6297BE8(v286);
        v112 = v305;
      }

      else
      {
        v282 = v101;
        v284 = v46;
        v103 = v102;
        v104 = v12;
        v107 = (v45 + 24);
        v105 = *(v45 + 24);
        v106 = v107[1];
        v108 = v286;
        sub_1D6282658(v286, v98);
        sub_1D626CB38(v108, v105, v106, v100, v109, v110, v111);
        v12 = v104;
        v102 = v103;
        v101 = v282;
        if ((v282 & 0x2000000000000000) != 0)
        {
          goto LABEL_62;
        }

LABEL_104:
        v157 = v101;
        v158 = *(*(&v283 + 1) + 32);
        v290 = *(*(&v283 + 1) + 16);
        v291 = v158;
        v292[0] = *(*(&v283 + 1) + 48);
        *(v292 + 15) = *(*(&v283 + 1) + 63);
        a1 = v286;
        sub_1D628DEA4(v286, *v292);
        sub_1D6281C84(a1, v283);
        v112 = v305;
        *&v290 = v157;

        sub_1D6297BE8(a1);
      }

      v2 = 0;
      sub_1D6297F18(a1, v102);

      sub_1D5D07BA8(v289, v288, v112);

      v13 = v287;
      goto LABEL_6;
    }

    if (v19 == 3)
    {
      v20 = *((v18 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      *&v283 = *((v18 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      *(&v283 + 1) = v18 & 0x1FFFFFFFFFFFFFFFLL;
      v21 = *((v18 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      v22 = *(v20 + 32);
      v290 = *(v20 + 16);
      v291 = v22;
      v292[0] = *(v20 + 48);
      v284 = v20;
      *(v292 + 15) = *(v20 + 63);
      v23 = *(&v22 + 1);
      v24 = v292[1];
      if (BYTE2(v292[1]))
      {
        v25 = 8;
      }

      else
      {
        v25 = 0;
      }

      v26 = v25 & 0xFFFFFFF8 | (LOWORD(v292[1]) >> 11) & 7;
      v289 = v15;
      v287 = v13;
      if (v26 > 4)
      {
        if (v26 > 6)
        {
          if (v26 == 7)
          {
            if (!(LOWORD(v292[1]) >> 14))
            {
              goto LABEL_168;
            }

            v305 = v17;
            if (LOWORD(v292[1]) >> 14 == 1)
            {
              v296 = v290;
              v297 = v22;
              v306 = 5;
              v151 = *(&v290 + 1);
              v152 = v17;
              v17 = v16;
              v153 = v290;
              sub_1D5D03180(v15, v16, v152);

              sub_1D62B5248(&v290, &v302);
              v154 = sub_1D703E0C8(&v296, &v306);
              v285 = v2;
              if (v2)
              {

                sub_1D5D07BA8(v289, v16, v305);
                goto LABEL_255;
              }

              v155 = v154;
              v156 = swift_allocObject();
              *(v156 + 16) = v153;
              *(v156 + 24) = v151;
              *(v156 + 32) = v155;
              *(v156 + 40) = 0;

              sub_1D6C4D24C(v156 | 0x3000000000000000);

              v16 = v17;
              LODWORD(v17) = v305;
              v2 = v285;
              v27 = v283;
              goto LABEL_200;
            }

            v277 = v22;
            v278 = v21;
            v285 = v2;
            v203 = *&v292[0];
            v204 = v292[1] & 0x7FF;
            v282 = v12;
            v288 = v16;
            v276 = *(&v292[0] + 1);
            switch(((v292[1] & 0x700) >> 7) & 0xFFFFFFFE | (LOWORD(v292[1]) >> 3) & 1)
            {
              case 3u:
              case 4u:
                v275 = *&v292[0];
                v296 = v290;
                v297 = v22;
                v306 = 5;
                v260 = v290;
                sub_1D5D03180(v15, v16, v305);

                sub_1D62B5248(&v290, &v302);

                v261 = v285;
                v262 = sub_1D703E0C8(&v296, &v306);
                v285 = v261;
                if (!v261)
                {
                  v263 = v262;

                  v264 = swift_allocObject();
                  v206 = v260;
                  *(v264 + 16) = v260;
                  v205 = *(&v260 + 1);
                  *(v264 + 32) = v263;
                  *(v264 + 40) = 0;
                  sub_1D6C4D24C(v264 | 0x3000000000000000);

                  v203 = v275;
                  goto LABEL_176;
                }

                sub_1D5D07BA8(v289, v288, v305);
                goto LABEL_255;
              default:
                v205 = *(&v290 + 1);
                v206 = v290;
                sub_1D5D03180(v15, v16, v305);

LABEL_176:
                v207 = v204 >> 8;
                *&v302 = v206;
                *(&v302 + 1) = v205;
                v208 = v277;
                *&v303 = v277;
                *(&v303 + 1) = v23;
                LODWORD(v275) = v204;
                v209 = v276;
                *v304 = v203;
                *&v304[8] = v276;
                v304[16] = v24;
                v304[17] = v207;
                v210 = v203;
                v2 = v285;
                v17 = v286;
                sub_1D62099A8(v286);
                if (!v2)
                {
                  *&v296 = v206;
                  *(&v296 + 1) = v205;
                  v297 = v208;
                  v298 = v23;
                  v299 = v210;
                  v300 = v209;
                  v301 = v275;
                  sub_1D5FD697C(v17);
                  a1 = v17;
                  LODWORD(v17) = v305;
                  v16 = v288;
                  v12 = v282;
                  v27 = v283;
                  v21 = v278;
                  goto LABEL_200;
                }

                v271 = v288;
                v270 = v289;
                v272 = v305;
                break;
            }

LABEL_254:
            sub_1D5D07BA8(v270, v271, v272);
            goto LABEL_255;
          }

          v75 = v2;
          sub_1D5D03180(v15, v16, v17);

LABEL_50:

          v27 = v283;
LABEL_173:

          v2 = v75;
LABEL_200:
          sub_1D627B710(a1, v27);
          if (v2)
          {

            v267 = v289;
            v268 = v16;
            v269 = v17;
            goto LABEL_257;
          }

          v212 = v21 >> 61;
          if ((v21 >> 61) > 1)
          {
            if (v212 == 2)
            {
              v231 = *((v21 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
              sub_1D627EC58(a1, *((v21 & 0x1FFFFFFFFFFFFFFFLL) + 0x10));
              sub_1D6297730(a1, v231);
              v217 = 0;
            }

            else
            {
              if (v212 == 3)
              {
                v305 = v17;
                v213 = *((v21 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                v214 = *((v21 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
                v215 = *((v21 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
                v216 = *(v213 + 32);
                v302 = *(v213 + 16);
                v303 = v216;
                *v304 = *(v213 + 48);
                *&v304[15] = *(v213 + 63);
                sub_1D628DEA4(a1, *v304);
                sub_1D627B710(a1, v214);
                sub_1D6297730(a1, v215);
                v217 = 0;

LABEL_217:

                LOBYTE(v17) = v305;
                goto LABEL_224;
              }

              v217 = 0;
            }

LABEL_224:
            sub_1D5D07BA8(v289, v16, v17);

            v13 = v287;
            v2 = v217;
            goto LABEL_6;
          }

          v305 = v17;
          v288 = v16;
          if (!v212)
          {
            v218 = v21;
            v219 = a1;
            v220 = v218[2];
            v221 = v218[5];
            v222 = v218[6];
            v224 = v218[7];
            v223 = v218[8];
            v285 = v218[9];
            v278 = v218;
            if ((v221 & 4) != 0)
            {
              *&v302 = v220;
              sub_1D6E5C118(v219);
              v217 = 0;
            }

            else
            {
              v225 = v12;
              v226 = v218[3];
              v227 = v218[4];
              sub_1D6282658(v219, v220);
              sub_1D626CB38(v219, v226, v227, v221, v228, v229, v230);
              v217 = 0;
              v219 = v286;
              v12 = v225;
            }

            *&v302 = v222;
            *(&v302 + 1) = v224;
            *&v303 = v223;
            v243.n128_f64[0] = sub_1D62B6FC0(v222, v224, v223);
            sub_1D62975F8(v219, v243, v244, v245, v246, v247, v248, v249);
            sub_1D62B703C(v222, v224, v223);
            sub_1D6297F18(v219, v285);
            v16 = v288;
            a1 = v219;

            goto LABEL_217;
          }

          v282 = v12;
          v232 = (v21 & 0x1FFFFFFFFFFFFFFFLL);
          v17 = *((v21 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
          v234 = *((v21 & 0x1FFFFFFFFFFFFFFFLL) + 0x28);
          v233 = v232[6];
          v236 = v232[7];
          v235 = v232[8];
          v237 = v232[10];
          if ((~v17 & 0xF000000000000007) == 0 && (v234 & 7) == 7)
          {
            LOBYTE(v17) = v305;
          }

          else
          {
            v277 = v232[6];
            v278 = v236;
            v285 = v235;
            v239 = v237;
            v240 = v232[4];
            v241 = v232[2];
            *&v302 = v241;
            *(&v302 + 1) = v17;
            *&v303 = v240;
            *(&v303 + 1) = v234;
            v242.n128_f64[0] = sub_1D62B7098(v241, v17, v240, v234);
            sub_1D629758C(v286, v242);
            sub_1D62B7130(v241, v17, v240, v234);
            LOBYTE(v17) = v305;
            v237 = v239;
            v235 = v285;
            v233 = v277;
            v236 = v278;
          }

          a1 = v286;
          if ((v233 & 0x3000000000000007 & v235) == 0x3000000000000007)
          {
            v16 = v288;
            v12 = v282;
          }

          else
          {
            *&v302 = v233;
            *(&v302 + 1) = v236;
            *&v303 = v235;
            v17 = v236;
            v250 = v235;
            v251.n128_f64[0] = sub_1D62B6FC0(v233, v236, v235);
            sub_1D62975F8(a1, v251, v252, v253, v254, v255, v256, v257);
            v16 = v288;
            v12 = v282;
            v285 = 0;
            sub_1D62B703C(v233, v17, v250);
            v2 = v285;
            LOBYTE(v17) = v305;
          }

          sub_1D627DA04(a1, v237);
          v217 = v2;
          if (!v2)
          {

            goto LABEL_224;
          }

          sub_1D5D07BA8(v289, v16, v17);
LABEL_255:

          return;
        }

        if (v26 == 5)
        {
          goto LABEL_168;
        }

        if (!(BYTE8(v22) >> 6))
        {
          goto LABEL_109;
        }

        if (BYTE8(v22) >> 6 != 1)
        {
          if ((BYTE8(v22) & 0x3Fu) > 1)
          {
            v27 = v283;
            if ((BYTE8(v22) & 0x3F) == 2 || !(*(&v290 + 1) | v22))
            {
              goto LABEL_198;
            }

            v75 = v2;
          }

          else
          {
            v27 = v283;
            if ((BYTE8(v22) & 0x3F) == 0)
            {
              goto LABEL_198;
            }

            v75 = v2;
            if ((~*(&v290 + 1) & 0xF000000000000007) != 0)
            {
              *&v302 = *(&v290 + 1);
              v126 = v16;
              v127 = v16;
              v128 = *(&v290 + 1);
              sub_1D5D03180(v15, v127, v17);

              sub_1D5CFCFAC(v128);
              sub_1D6E5C118(a1);
              if (!v2)
              {

                v16 = v126;
LABEL_180:
                v2 = 0;
                goto LABEL_200;
              }

              v273 = v289;
              v274 = v126;
LABEL_262:
              sub_1D5D07BA8(v273, v274, v17);
              goto LABEL_258;
            }
          }

          goto LABEL_172;
        }
      }

      else
      {
        if (v26 > 1)
        {
          if (v26 != 2)
          {
            v27 = v283;
            if (v26 != 3)
            {
              goto LABEL_198;
            }

            if (v22 <= 1u)
            {
              if (!v22)
              {
                goto LABEL_198;
              }

LABEL_111:
              v75 = v2;
              if ((~v290 & 0xF000000000000007) != 0)
              {
                goto LABEL_178;
              }

              goto LABEL_172;
            }

            if (v22 == 2)
            {
              goto LABEL_198;
            }

LABEL_170:
            if (v290 != 0)
            {
LABEL_171:
              v75 = v2;
LABEL_172:
              sub_1D5D03180(v15, v16, v17);

              goto LABEL_173;
            }

LABEL_198:
            sub_1D5D03180(v15, v16, v17);

            goto LABEL_199;
          }

LABEL_168:
          sub_1D5D03180(v15, v16, v17);

          v27 = v283;
LABEL_199:

          goto LABEL_200;
        }

        if (v26)
        {
          goto LABEL_168;
        }

        v121 = (DWORD2(v22) >> 3) & 7;
        if (v121 > 1)
        {
          if (v121 != 2 && v121 != 3)
          {
            if (BYTE8(v22) >> 6)
            {
              v122 = v2;
              if (BYTE8(v22) >> 6 != 1)
              {
                v285 = *(&v290 + 1);
                v258 = v290;
                v277 = v22;
                sub_1D5D03180(v15, v16, v17);

                sub_1D6287888(a1, v258, v285, v277, v23 & 7);
                if (!v2)
                {
                  v27 = v283;
                  goto LABEL_200;
                }

                v273 = v289;
                v274 = v16;
                goto LABEL_262;
              }

              v302 = v290;
              LOBYTE(v303) = v22;
              v123 = v16;
              v124 = v16;
              v125 = v17;
            }

            else
            {
              v302 = v290;
              LOBYTE(v303) = v22;
              v123 = v16;
              v124 = v16;
              v125 = v17;
              v122 = v2;
            }

            sub_1D5D03180(v15, v124, v125);

            v27 = v283;

            v2 = v122;
            sub_1D628E900(a1);
            if (!v122)
            {
              v16 = v123;
              goto LABEL_200;
            }

            v270 = v289;
            v271 = v123;
            v272 = v17;
            goto LABEL_254;
          }

LABEL_109:
          if (v22 <= 1u)
          {
            v27 = v283;
            if (v22)
            {
              goto LABEL_111;
            }

            goto LABEL_198;
          }

          v27 = v283;
          if (v22 == 2)
          {
            goto LABEL_198;
          }

          goto LABEL_170;
        }

        if (v121)
        {
          goto LABEL_168;
        }
      }

      if (v22 > 1u)
      {
        if (v22 != 2)
        {
          v27 = v283;
          if (v290 != 0)
          {
            goto LABEL_171;
          }

          goto LABEL_198;
        }

        goto LABEL_168;
      }

      if (!v22)
      {
        goto LABEL_168;
      }

      v75 = v2;
      if ((~v290 & 0xF000000000000007) != 0)
      {
LABEL_178:
        *&v302 = v290;
        v288 = v16;
        v285 = v290;
        sub_1D5D03180(v15, v16, v17);

        v27 = v283;

        sub_1D5CFCFAC(v285);
        sub_1D6E5C118(a1);
        if (!v75)
        {

          v16 = v288;
          goto LABEL_180;
        }

        v274 = v288;
        v273 = v289;
        goto LABEL_262;
      }

      sub_1D5D03180(v15, v16, v17);

      goto LABEL_50;
    }

LABEL_6:
    v13 += 4;
    if (!--v12)
    {
      return;
    }
  }

  v288 = *(v13 - 2);
  v289 = v15;
  v287 = v13;
  if (!v19)
  {
    v28 = *(v18 + 32);
    v302 = *(v18 + 16);
    v303 = v28;
    v29 = *(v18 + 64);
    *v304 = *(v18 + 48);
    *&v304[16] = v29;
    v30 = v302;
    v31 = *(&v303 + 1);
    v305 = v17;
    if ((BYTE8(v303) & 4) != 0)
    {
      *&v296 = v302;
      sub_1D5D03180(v15, v288, v17);

      sub_1D5CFBAA8(&v302, &v290);
      sub_1D6E5C118(v286);
      if (v2)
      {
        sub_1D5D08954(&v302);
        v271 = v288;
        v270 = v289;
        v272 = v17;
        goto LABEL_254;
      }
    }

    else
    {
      v285 = v2;
      v32 = v18;
      v33 = v12;
      v34 = v17;
      v36 = *(&v302 + 1);
      v35 = v303;
      sub_1D5D03180(v15, v288, v34);

      sub_1D5CFBAA8(&v302, &v290);
      v37 = v285;
      v38 = v286;
      sub_1D6282658(v286, v30);
      if (v37)
      {
        sub_1D5D08954(&v302);
        sub_1D5D07BA8(v289, v288, v305);
        goto LABEL_255;
      }

      sub_1D626CB38(v38, v36, v35, v31, v39, v40, v41);
      v12 = v33;
      v2 = 0;
      v18 = v32;
    }

    v76 = *&v304[16];
    v284 = v18;
    if ((*&v304[16] & 0x2000000000000000) == 0)
    {
      v77 = *&v304[8];
      v78 = *(*v304 + 32);
      v290 = *(*v304 + 16);
      v291 = v78;
      v292[0] = *(*v304 + 48);
      *(v292 + 15) = *(*v304 + 63);
      v79 = v286;
      sub_1D628DEA4(v286, *v292);
      sub_1D6281C84(v79, v77);
      *&v290 = v76;

      sub_1D6297BE8(v79);
      v285 = 0;

      v80 = v288;
      v81 = v305;
      goto LABEL_125;
    }

    if (!(*v304 >> 62))
    {
      v147 = *(*v304 + 80);
      v292[1] = *(*v304 + 64);
      v293 = v147;
      v294 = *(*v304 + 96);
      v295 = *(*v304 + 112);
      v148 = *(*v304 + 32);
      v290 = *(*v304 + 16);
      v291 = v148;
      v292[0] = *(*v304 + 48);
      sub_1D6287E20(v286);
      v81 = v305;
      v285 = 0;
      goto LABEL_124;
    }

    if (*v304 >> 62 != 1)
    {
      v149 = *((*v304 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      *&v290 = *((*v304 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);

      v150 = v286;
      sub_1D6297BE8(v286);

      sub_1D62844E8(v150, v149, sub_1D6297BE8);
      v80 = v288;
      v285 = 0;
      v81 = v305;
      goto LABEL_125;
    }

    v285 = v2;
    v83 = *((*v304 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v82 = *((*v304 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    v85 = *((*v304 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
    v84 = *((*v304 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
    v86 = *((*v304 & 0x3FFFFFFFFFFFFFFFLL) + 0x38);
    *&v283 = *((*v304 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
    *(&v283 + 1) = v86;
    v87 = *((*v304 & 0x3FFFFFFFFFFFFFFFLL) + 0x40);
    v88 = swift_allocObject();
    *(v88 + 16) = v83;
    *(v88 + 24) = v82;
    *(v88 + 32) = v85;
    *(v88 + 40) = v84;
    v89 = v88 | 0x9000000000000000;
    v90 = v286;
    v91 = *v286;
    swift_beginAccess();
    v92 = *(v91 + 16);
    v93 = *(v92 + 16);
    v282 = v89;
    if (v93)
    {
      v94 = *(v92 + 8 * v93 + 24);

      v96 = sub_1D60E14A8(v94, v89, v95);
      v90 = v286;

      if (v96)
      {

        v81 = v305;
        v97 = v87;
        goto LABEL_121;
      }
    }

    else
    {
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v161 = *v90;
    v97 = v87;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1D5B4B554(0, &qword_1EC880338, &type metadata for FormatDerivedData._$CopyOnWriteStorage, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E6B60]);
      v265 = swift_allocObject();
      swift_beginAccess();
      v266 = v161[2];
      v290 = v161[1];
      v291 = v266;
      v292[0] = v161[3];
      *(v292 + 14) = *(v161 + 62);
      memmove((v265 + 16), v161 + 1, 0x3EuLL);
      sub_1D5EB9AB0(&v290, &v296);

      *v90 = v265;
      v161 = v265;
    }

    v162 = v282;
    swift_beginAccess();
    v163 = *(v161 + 2);
    v164 = swift_isUniquelyReferenced_nonNull_native();
    *(v161 + 2) = v163;
    if ((v164 & 1) == 0)
    {
      v163 = sub_1D698F848(0, *(v163 + 2) + 1, 1, v163);
      *(v161 + 2) = v163;
    }

    v166 = *(v163 + 2);
    v165 = *(v163 + 3);
    if (v166 >= v165 >> 1)
    {
      v163 = sub_1D698F848((v165 > 1), v166 + 1, 1, v163);
    }

    *(v163 + 2) = v166 + 1;
    *&v163[8 * v166 + 32] = v162;
    *(v161 + 2) = v163;
    swift_endAccess();
    v81 = v305;
    v90 = v286;
LABEL_121:
    v167 = v285;
    v168 = v283;
    if (v97 != 255)
    {
      v290 = v283;
      LOBYTE(v291) = v97;
      sub_1D5E433E0(v283, *(&v283 + 1), v97);
      sub_1D628BAB8(v90);
      v80 = v288;
      v285 = v167;
      if (v167)
      {
        sub_1D5E43440(v168, *(&v168 + 1), v97);
        sub_1D5D08954(&v302);
        v270 = v289;
        v271 = v80;
        v272 = v81;
        goto LABEL_254;
      }

      sub_1D5E43440(v168, *(&v168 + 1), v97);
LABEL_125:
      v169 = *&v304[24] >> 62;
      if ((*&v304[24] >> 62) > 1)
      {
        if (v169 == 2)
        {
          v180 = *((*&v304[24] & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
          v181 = v285;
          v182 = v286;
          sub_1D62809AC(v286, *((*&v304[24] & 0x3FFFFFFFFFFFFFFFLL) + 0x10));
          if (v181)
          {
            goto LABEL_249;
          }

          sub_1D62A10B8(v182, v180);
          goto LABEL_133;
        }
      }

      else
      {
        if (!v169)
        {
          v170 = swift_projectBox();
          v171 = v280;
          sub_1D62B50EC(v170, v280, type metadata accessor for FormatCommandOpenURL);
          sub_1D62B50EC(v171, v281, type metadata accessor for FormatCommandOpenURL);
          if (swift_getEnumCaseMultiPayload() < 2)
          {
            sub_1D62B51D0(v280, type metadata accessor for FormatCommandOpenURL);
            v14 = v281;
          }

          else
          {
            v172 = v81;
            v174 = *v281;
            v173 = v281[1];
            v175 = v281[2];
            *&v290 = *v281;
            *(&v290 + 1) = v173;
            *&v291 = v175;
            LOBYTE(v296) = 6;

            v176 = v285;
            v177 = sub_1D703E0C8(&v290, &v296);
            v285 = v176;
            if (v176)
            {
              sub_1D62B51D0(v280, type metadata accessor for FormatCommandOpenURL);

              sub_1D5D08954(&v302);
              v270 = v289;
              v271 = v80;
              v272 = v81;
              goto LABEL_254;
            }

            v178 = v177;

            v179 = swift_allocObject();
            *(v179 + 16) = v174;
            *(v179 + 24) = v173;
            *(v179 + 32) = v178;
            *(v179 + 40) = 0;
            sub_1D6C4D24C(v179 | 0x3000000000000000);

            v14 = v280;
            v81 = v172;
          }

          sub_1D62B51D0(v14, type metadata accessor for FormatCommandOpenURL);
          goto LABEL_5;
        }

        v183 = *((*&v304[24] & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v185 = *(v183 + 16);
        v184 = *(v183 + 24);
        v186 = *(v183 + 32);
        v187 = *(v183 + 40);
        v188 = *(v183 + 64);
        if (*(v183 + 66))
        {
          v189 = 8;
        }

        else
        {
          v189 = 0;
        }

        v190 = v189 & 0xFFFFFFF8 | (v188 >> 11) & 7;
        if (v190 > 4)
        {
          if (v190 <= 6)
          {
            if (v190 != 5)
            {
              *&v290 = *(v183 + 16);
              *(&v290 + 1) = v184;
              *&v291 = v186;
              BYTE8(v291) = v187;
              goto LABEL_162;
            }
          }

          else if (v190 == 7)
          {
            *&v290 = *(v183 + 16);
            *(&v290 + 1) = v184;
            *&v291 = v186;
            *(&v291 + 1) = v187;
            v292[0] = *(v183 + 48);
            LOWORD(v292[1]) = v188 & 0xC7FF;
            v181 = v285;
            sub_1D690A374(v286);
            goto LABEL_133;
          }
        }

        else
        {
          if (v190 > 1)
          {
            if (v190 == 3)
            {
              goto LABEL_141;
            }

            goto LABEL_5;
          }

          if (!v190)
          {
            v202 = (v187 >> 3) & 7;
            if (v202 <= 1)
            {
              if (!v202)
              {
                goto LABEL_141;
              }

              goto LABEL_5;
            }

            if (v202 == 2 || v202 == 3)
            {
LABEL_141:
              *&v290 = v185;
              *(&v290 + 1) = v184;
              LOBYTE(v291) = v186;
              v181 = v285;
              sub_1D628E900(v286);
LABEL_133:
              if (v181)
              {
LABEL_249:
                sub_1D5D08954(&v302);
                sub_1D5D07BA8(v289, v80, v81);
                goto LABEL_255;
              }

              sub_1D5D08954(&v302);
              sub_1D5D07BA8(v289, v80, v81);
              goto LABEL_153;
            }

            *&v290 = v185;
            *(&v290 + 1) = v184;
            *&v291 = v186;
            BYTE8(v291) = v187 & 0xC7;
LABEL_162:
            v181 = v285;
            sub_1D628E970(v286);
            goto LABEL_133;
          }
        }
      }

LABEL_5:
      sub_1D5D08954(&v302);
      sub_1D5D07BA8(v289, v80, v81);

      a1 = v286;
      v13 = v287;
      v2 = v285;
      goto LABEL_6;
    }

LABEL_124:
    v80 = v288;
    goto LABEL_125;
  }

  v282 = v12;
  v64 = v2;
  v65 = v17;
  v66 = *((v18 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
  v290 = *((v18 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v291 = v66;
  v67 = *((v18 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
  v292[0] = *((v18 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
  v292[1] = v67;
  *&v293 = *((v18 & 0x1FFFFFFFFFFFFFFFLL) + 0x50);
  v68 = v290;
  v69 = *(&v291 + 1);
  v70 = v291;
  if ((~*(&v290 + 1) & 0xF000000000000007) == 0 && (BYTE8(v291) & 7) == 7)
  {
    sub_1D5D03180(v15, v288, v65);

    sub_1D62B72DC(&v290, &v302);
LABEL_66:
    a1 = v286;
    v113 = *&v292[0];
    v114 = *&v292[1];
    if ((*&v292[0] & 0x3000000000000007 & *&v292[1]) != 0x3000000000000007)
    {
      v115 = v286;
      v116 = *(&v292[0] + 1);
      if ((*&v292[1] & 0x2000000000000000) != 0)
      {
        *&v302 = *&v292[0];
        sub_1D62B6FC0(*&v292[0], *(&v292[0] + 1), *&v292[1]);
        v117 = v64;
        sub_1D6297BE8(v115);
      }

      else
      {
        sub_1D62B6FC0(*&v292[0], *(&v292[0] + 1), *&v292[1]);
        v117 = v64;
        sub_1D626CAA4(v115, v113, v116, v114, v118, v119, v120);
      }

      v64 = v117;
      if (v117)
      {
        sub_1D62B7020(v113, v116, v114);
        goto LABEL_248;
      }

      sub_1D62B7020(v113, v116, v114);
      a1 = v115;
    }

    v2 = v64;
    sub_1D627DA04(a1, v293);
    if (v64)
    {
      goto LABEL_248;
    }

    sub_1D62B7338(&v290);
    sub_1D5D07BA8(v289, v288, v65);

    v12 = v282;
    v13 = v287;
    goto LABEL_6;
  }

  if ((BYTE8(v291) & 4) != 0)
  {
    *&v296 = v290;
    sub_1D5D03180(v15, v288, v65);

    sub_1D62B72DC(&v290, &v302);
    sub_1D62B738C(v68, *(&v68 + 1), v70, v69);
    sub_1D6E5C118(v286);
  }

  else
  {
    sub_1D5D03180(v15, v288, v65);

    sub_1D62B72DC(&v290, &v302);
    sub_1D62B738C(v68, *(&v68 + 1), v70, v69);
    v71 = v286;
    sub_1D6282658(v286, v68);
    if (v2)
    {
      goto LABEL_247;
    }

    sub_1D626CB38(v71, *(&v68 + 1), v70, v69, v72, v73, v74);
  }

  v64 = v2;
  if (!v2)
  {
    sub_1D62B7110(v68, *(&v68 + 1), v70, v69);
    goto LABEL_66;
  }

LABEL_247:
  sub_1D62B7110(v68, *(&v68 + 1), v70, v69);
LABEL_248:
  sub_1D62B7338(&v290);
  v268 = v288;
  v267 = v289;
  v269 = v65;
LABEL_257:
  sub_1D5D07BA8(v267, v268, v269);
LABEL_258:
}

void sub_1D627DA04(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v125 = type metadata accessor for FormatCommandOpenURL(0);
  MEMORY[0x1EEE9AC00](v125, v6);
  v129 = (v123 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8, v9);
  v128 = (v123 - v10);
  v11 = *(a2 + 16);
  if (!v11)
  {
    return;
  }

  v12 = (a2 + 32);
  v126 = a1;
  while (1)
  {
    v13 = v12[1];
    v145 = *v12;
    v146 = v13;
    v14 = v12[3];
    v147 = v12[2];
    v148 = v14;
    v15 = v145;
    v16 = *(&v146 + 1);
    if ((BYTE8(v146) & 4) != 0)
    {
      *&v133 = v145;
      sub_1D5CFBAA8(&v145, &v140);
      v19 = v3;
      sub_1D6E5C118(a1);
      if (v3)
      {
        goto LABEL_175;
      }
    }

    else
    {
      v18 = *(&v145 + 1);
      v17 = v146;
      sub_1D5CFBAA8(&v145, &v140);
      v19 = v3;
      sub_1D6282658(a1, v15);
      if (v3)
      {
        goto LABEL_175;
      }

      sub_1D626CB38(a1, v18, v17, v16, v20, v21, v22);
    }

    v23 = v148;
    if ((v148 & 0x2000000000000000) != 0)
    {
      v149 = v11;
      v130 = v19;
      if (!(v147 >> 62))
      {
        v45 = *(v147 + 80);
        v142[1] = *(v147 + 64);
        v142[2] = v45;
        v142[3] = *(v147 + 96);
        v143 = *(v147 + 112);
        v46 = *(v147 + 32);
        v140 = *(v147 + 16);
        v141 = v46;
        v47 = *(v147 + 64);
        v142[0] = *(v147 + 48);
        v48 = *(v147 + 80);
        v49 = *(v147 + 96);
        v136 = v47;
        v137 = v48;
        v138 = v49;
        v139 = *(v147 + 112);
        v50 = *(v147 + 32);
        v133 = *(v147 + 16);
        v134 = v50;
        v135 = *(v147 + 48);
        sub_1D5D0322C(&v140, &v131);
        v51 = v130;
        sub_1D6287E20(a1);
        v3 = v51;
        if (v51)
        {
          sub_1D5D07BBC(&v140);
          goto LABEL_175;
        }

        sub_1D5D07BBC(&v140);
        goto LABEL_52;
      }

      if (v147 >> 62 != 1)
      {
        v52 = *((v147 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
        *&v140 = *((v147 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        swift_retain_n();

        v53 = v130;
        sub_1D6297BE8(a1);
        v3 = v53;
        if (v53)
        {

          goto LABEL_175;
        }

        sub_1D62844E8(a1, v52, sub_1D6297BE8);

        goto LABEL_52;
      }

      v26 = *((v147 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v27 = *((v147 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v28 = a1;
      v29 = *((v147 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
      v30 = *((v147 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
      v31 = *((v147 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
      v127 = *((v147 & 0x3FFFFFFFFFFFFFFFLL) + 0x38);
      v124 = *((v147 & 0x3FFFFFFFFFFFFFFFLL) + 0x40);
      v32 = swift_allocObject();
      *(v32 + 16) = v26;
      *(v32 + 24) = v27;
      *(v32 + 32) = v29;
      *(v32 + 40) = v30;
      v33 = *v28;
      swift_beginAccess();
      v34 = *(v33 + 16);
      v35 = *(v34 + 16);
      if (v35)
      {
        v36 = *(v34 + 8 * v35 + 24);
        if (v36 >> 60 == 9)
        {
          v37 = (v36 & 0xFFFFFFFFFFFFFFFLL);
          v38 = v37[4];
          v39 = v37[5];
          v40 = v37[2] == v26 && v37[3] == v27;
          if (v40 || (v41 = v37[4], v42 = sub_1D72646CC(), v38 = v41, (v42 & 1) != 0))
          {
            if (v39)
            {
              if (v30)
              {
                v43 = v38 == v29 && v39 == v30;
                if (v43 || (sub_1D72646CC() & 1) != 0)
                {

                  v44 = v124;
                  sub_1D5E433CC(v31, v127, v124);

                  goto LABEL_45;
                }
              }
            }

            else if (!v30)
            {

              v44 = v124;
              sub_1D5E433CC(v31, v127, v124);
LABEL_45:

              if (v44 > 1)
              {
LABEL_46:
                if (v44 != 2)
                {

                  sub_1D5E4342C(v31, v127, 0xFFu);
                  v3 = v130;
                  goto LABEL_51;
                }

                sub_1D5E433E0(v31, v127, 2u);
                v71 = v126;
                v72 = v31;
                v73 = v130;
                sub_1D6273544(v126, v31);
                if (v73)
                {

                  v122 = v127;
                  sub_1D5E4342C(v31, v127, 2u);
                  sub_1D5E4342C(v31, v122, 2u);
                  goto LABEL_175;
                }

                sub_1D6273544(v71, v127);
                v3 = 0;

                v74 = v127;
                sub_1D5E4342C(v72, v127, 2u);
                v65 = v72;
                v66 = v74;
                v67 = 2;
LABEL_49:
                sub_1D5E4342C(v65, v66, v67);
LABEL_51:
                a1 = v126;
LABEL_52:
                v11 = v149;
                goto LABEL_53;
              }

LABEL_39:
              if (v44)
              {
                sub_1D5E433E0(v31, v127, 1u);
                v68 = v130;
                sub_1D6273544(v126, v31);
                v69 = v31;
                v3 = v68;
                if (v68)
                {

                  v121 = v127;
                  sub_1D5E4342C(v69, v127, 1u);
                  sub_1D5E4342C(v69, v121, 1u);
                  goto LABEL_175;
                }

                v70 = v127;
                sub_1D5E4342C(v69, v127, 1u);
                v65 = v69;
                v66 = v70;
                v67 = 1;
              }

              else
              {
                sub_1D5E433E0(v31, v127, 0);
                v62 = v130;
                sub_1D6273544(v126, v31);
                v63 = v31;
                v3 = v62;
                if (v62)
                {

                  v120 = v127;
                  sub_1D5E4342C(v63, v127, 0);
                  sub_1D5E4342C(v63, v120, 0);
                  goto LABEL_175;
                }

                v64 = v127;
                sub_1D5E4342C(v63, v127, 0);
                v65 = v63;
                v66 = v64;
                v67 = 0;
              }

              goto LABEL_49;
            }
          }
        }
      }

      sub_1D5E433CC(v31, v127, v124);

      v54 = v126;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v56 = *v54;
      v123[1] = v27;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D5B4B554(0, &qword_1EC880338, &type metadata for FormatDerivedData._$CopyOnWriteStorage, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E6B60]);
        v114 = swift_allocObject();
        swift_beginAccess();
        v115 = v56[2];
        v140 = v56[1];
        v141 = v115;
        v142[0] = v56[3];
        *(v142 + 14) = *(v56 + 62);
        memmove((v114 + 16), v56 + 1, 0x3EuLL);
        sub_1D5EB9AB0(&v140, &v133);

        *v126 = v114;
        v56 = v114;
      }

      swift_beginAccess();
      v57 = *(v56 + 2);
      v58 = swift_isUniquelyReferenced_nonNull_native();
      *(v56 + 2) = v57;
      v59 = v31;
      if ((v58 & 1) == 0)
      {
        v57 = sub_1D698F848(0, *(v57 + 2) + 1, 1, v57);
        *(v56 + 2) = v57;
      }

      v61 = *(v57 + 2);
      v60 = *(v57 + 3);
      if (v61 >= v60 >> 1)
      {
        v57 = sub_1D698F848((v60 > 1), v61 + 1, 1, v57);
      }

      *(v57 + 2) = v61 + 1;
      *&v57[8 * v61 + 32] = v32 | 0x9000000000000000;
      *(v56 + 2) = v57;
      swift_endAccess();
      v31 = v59;
      v44 = v124;
      if (v124 > 1)
      {
        goto LABEL_46;
      }

      goto LABEL_39;
    }

    v24 = *(&v147 + 1);
    v25 = *(v147 + 32);
    v140 = *(v147 + 16);
    v141 = v25;
    v142[0] = *(v147 + 48);
    *(v142 + 15) = *(v147 + 63);
    sub_1D628DEA4(a1, *v142);
    if (v19)
    {
      goto LABEL_175;
    }

    sub_1D6281C84(a1, v24);
    *&v140 = v23;

    sub_1D6297BE8(a1);
    v3 = 0;

LABEL_53:
    v75 = *(&v148 + 1) >> 62;
    if ((*(&v148 + 1) >> 62) > 1)
    {
      if (v75 == 2)
      {
        v79 = *((*(&v148 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v80 = *((*(&v148 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x18);

        sub_1D62809AC(a1, v79);
        if (v3)
        {

LABEL_178:

          goto LABEL_175;
        }

        sub_1D62A10B8(a1, v80);
      }

      goto LABEL_73;
    }

    if (!v75)
    {
      v76 = swift_projectBox();
      v77 = v128;
      sub_1D62B50EC(v76, v128, type metadata accessor for FormatCommandOpenURL);
      sub_1D62B50EC(v77, v129, type metadata accessor for FormatCommandOpenURL);
      if (swift_getEnumCaseMultiPayload() > 1)
      {
        v90 = *v129;
        v89 = v129[1];
        v91 = v129[2];
        *&v140 = *v129;
        *(&v140 + 1) = v89;
        *&v141 = v91;
        LOBYTE(v133) = 6;

        v92 = sub_1D703E0C8(&v140, &v133);
        if (v3)
        {
          sub_1D62B51D0(v128, type metadata accessor for FormatCommandOpenURL);

          goto LABEL_178;
        }

        v93 = v92;

        v94 = swift_allocObject();
        *(v94 + 16) = v90;
        *(v94 + 24) = v89;
        *(v94 + 32) = v93;
        *(v94 + 40) = 0;
        sub_1D6C4D24C(v94 | 0x3000000000000000);

        v78 = v128;
      }

      else
      {
        sub_1D62B51D0(v128, type metadata accessor for FormatCommandOpenURL);
        v78 = v129;
      }

      sub_1D62B51D0(v78, type metadata accessor for FormatCommandOpenURL);
      goto LABEL_73;
    }

    v149 = v11;
    v81 = *((*(&v148 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v82 = *(v81 + 32);
    v140 = *(v81 + 16);
    v141 = v82;
    v83 = *(v81 + 48);
    *(v142 + 15) = *(v81 + 63);
    v142[0] = v83;
    v85 = *(&v140 + 1);
    v84 = v140;
    v86 = v82;
    v87 = (BYTE2(v142[1]) & 1) != 0 ? 8 : 0;
    v88 = v87 & 0xFFFFFFF8 | (LOWORD(v142[1]) >> 11) & 7;
    if (v88 > 4)
    {
      break;
    }

    if (v88 <= 1)
    {
      if (v88)
      {
        goto LABEL_108;
      }

      v95 = (DWORD2(v82) >> 3) & 7;
      if (v95 <= 1)
      {
        if (v95)
        {
          goto LABEL_100;
        }
      }

      else if (v95 != 2 && v95 != 3 && BYTE8(v82) >> 6 && BYTE8(v82) >> 6 != 1)
      {
        v96 = BYTE8(v82) & 7;
        if (v96 <= 1)
        {
          if ((BYTE8(v82) & 7) == 0)
          {
LABEL_100:
            sub_1D5D085FC(&v140);
            goto LABEL_108;
          }

LABEL_90:
          if ((~*(&v140 + 1) & 0xF000000000000007) == 0)
          {
            goto LABEL_108;
          }

          *&v131 = *(&v140 + 1);

          sub_1D62B5248(&v140, &v133);
          v97 = v85;
LABEL_105:
          sub_1D5CFCFAC(v97);
          sub_1D6E5C118(a1);
          if (v3)
          {

            goto LABEL_187;
          }

LABEL_106:

LABEL_107:
          sub_1D5D085FC(&v140);

          goto LABEL_108;
        }

LABEL_111:
        v11 = v149;
        if (v96 == 2)
        {
          goto LABEL_73;
        }

LABEL_102:
        sub_1D5D085FC(&v140);
        goto LABEL_73;
      }
    }

    else if (v88 != 3)
    {
      goto LABEL_108;
    }

LABEL_98:
    if (v82 <= 1u)
    {
      if (!v82)
      {
        goto LABEL_100;
      }

      if ((~v140 & 0xF000000000000007) != 0)
      {
        *&v131 = v140;

        sub_1D62B5248(&v140, &v133);
        v97 = v84;
        goto LABEL_105;
      }

LABEL_108:
      sub_1D5D08954(&v145);
      v11 = v149;
      goto LABEL_74;
    }

    v11 = v149;
    if (v82 != 2)
    {
      goto LABEL_102;
    }

LABEL_73:
    sub_1D5D08954(&v145);
LABEL_74:
    v12 += 4;
    if (!--v11)
    {
      return;
    }
  }

  if (v88 <= 6)
  {
    if (v88 == 5)
    {
      goto LABEL_108;
    }

    if (BYTE8(v82) >> 6 && BYTE8(v82) >> 6 != 1)
    {
      v96 = BYTE8(v82) & 0x3F;
      if (v96 <= 1)
      {
        if ((BYTE8(v82) & 0x3F) == 0)
        {
          goto LABEL_100;
        }

        goto LABEL_90;
      }

      goto LABEL_111;
    }

    goto LABEL_98;
  }

  if (v88 != 7)
  {
    v11 = v149;
    goto LABEL_73;
  }

  if (!(LOWORD(v142[1]) >> 14))
  {
    goto LABEL_108;
  }

  if (LOWORD(v142[1]) >> 14 == 1)
  {
    v131 = v140;
    v132 = v82;
    v144 = 5;
    v98 = v140;
    sub_1D62B5248(&v140, &v133);

    sub_1D62B5248(&v140, &v133);
    v99 = sub_1D703E0C8(&v131, &v144);
    if (v3)
    {
      goto LABEL_187;
    }

    v100 = v99;
    v101 = swift_allocObject();
    *(v101 + 16) = v98;
    *(v101 + 24) = v85;
    *(v101 + 32) = v100;
    *(v101 + 40) = 0;

    v102 = v101 | 0x3000000000000000;
    goto LABEL_96;
  }

  v103 = LOBYTE(v142[1]);
  switch((LOWORD(v142[1]) >> 7) & 0xE | (LOWORD(v142[1]) >> 3) & 1)
  {
    case 1:
    case 5:
    case 6:
    case 7:
    case 9:
    case 0xA:
    case 0xB:
    case 0xC:
    case 0xD:

      goto LABEL_114;
    case 2:

      sub_1D62B5248(&v140, &v133);
      v110 = v3;
      if ((v103 & 0xF0) != 0x30)
      {
        goto LABEL_172;
      }

      if (BYTE1(v86) <= 1u)
      {
        if (BYTE1(v86))
        {
          if (v86 > 0xFDu)
          {
            goto LABEL_172;
          }

          v117 = v86 >> 6;
          if (v117 > 1)
          {
            if (v117 == 2)
            {
              if ((v86 & 1) == 0)
              {
                goto LABEL_171;
              }

              sub_1D62B5248(&v140, &v133);
              sub_1D62B5248(&v140, &v133);
              v112 = &unk_1F5112FC8;
            }

            else
            {
              if ((v86 & 1) == 0)
              {
                goto LABEL_171;
              }

              sub_1D62B5248(&v140, &v133);
              sub_1D62B5248(&v140, &v133);
              v112 = &unk_1F5112FF0;
            }
          }

          else if (v117)
          {
            if ((v86 & 1) == 0)
            {
              goto LABEL_171;
            }

            sub_1D62B5248(&v140, &v133);
            sub_1D62B5248(&v140, &v133);
            v112 = &unk_1F5112FA0;
          }

          else
          {
            if ((v86 & 1) == 0)
            {
              goto LABEL_171;
            }

            sub_1D62B5248(&v140, &v133);
            sub_1D62B5248(&v140, &v133);
            v112 = &unk_1F5112F78;
          }
        }

        else
        {
          if (v86 > 0xFDu)
          {
            goto LABEL_172;
          }

          v113 = v86 >> 6;
          if (v113 > 1)
          {
            if (v113 == 2)
            {
              if ((v86 & 1) == 0)
              {
                goto LABEL_171;
              }

              sub_1D62B5248(&v140, &v133);
              sub_1D62B5248(&v140, &v133);
              v112 = &unk_1F5112F28;
            }

            else
            {
              if ((v86 & 1) == 0)
              {
                goto LABEL_171;
              }

              sub_1D62B5248(&v140, &v133);
              sub_1D62B5248(&v140, &v133);
              v112 = &unk_1F5112F50;
            }
          }

          else
          {
            if (!v113)
            {
              if (v86)
              {
                sub_1D62B5248(&v140, &v133);
                sub_1D62B5248(&v140, &v133);
                v112 = &unk_1F5112ED8;
                goto LABEL_170;
              }

LABEL_171:
              sub_1D5D085FC(&v140);
              v110 = v3;
              goto LABEL_172;
            }

            if ((v86 & 1) == 0)
            {
              goto LABEL_171;
            }

            sub_1D62B5248(&v140, &v133);
            sub_1D62B5248(&v140, &v133);
            v112 = &unk_1F5112F00;
          }
        }

LABEL_170:
        v127 = sub_1D5E26E28(v112);
        v118 = swift_allocObject();
        v130 = v84;
        *(v118 + 16) = v84;
        *(v118 + 24) = v85;
        *(v118 + 32) = v127;
        *(v118 + 40) = 0;
        sub_1D6C4D24C(v118 | 0x3000000000000000);
        v84 = v130;

        goto LABEL_171;
      }

      if (BYTE1(v86) == 2)
      {
        if (v86 > 0xFDu)
        {
          goto LABEL_172;
        }

        v116 = v86 >> 6;
        if (v116 > 1)
        {
          if (v116 == 2)
          {
            if ((v86 & 1) == 0)
            {
              goto LABEL_171;
            }

            sub_1D62B5248(&v140, &v133);
            sub_1D62B5248(&v140, &v133);
            v112 = &unk_1F5113068;
          }

          else
          {
            if ((v86 & 1) == 0)
            {
              goto LABEL_171;
            }

            sub_1D62B5248(&v140, &v133);
            sub_1D62B5248(&v140, &v133);
            v112 = &unk_1F5113090;
          }
        }

        else if (v116)
        {
          if ((v86 & 1) == 0)
          {
            goto LABEL_171;
          }

          sub_1D62B5248(&v140, &v133);
          sub_1D62B5248(&v140, &v133);
          v112 = &unk_1F5113040;
        }

        else
        {
          if ((v86 & 1) == 0)
          {
            goto LABEL_171;
          }

          sub_1D62B5248(&v140, &v133);
          sub_1D62B5248(&v140, &v133);
          v112 = &unk_1F5113018;
        }

        goto LABEL_170;
      }

      if (BYTE1(v86) == 3 && v86 <= 0xFDu)
      {
        v111 = v86 >> 6;
        if (v111 > 1)
        {
          if (v111 == 2)
          {
            if ((v86 & 1) == 0)
            {
              goto LABEL_171;
            }

            sub_1D62B5248(&v140, &v133);
            sub_1D62B5248(&v140, &v133);
            v112 = &unk_1F5113108;
          }

          else
          {
            if ((v86 & 1) == 0)
            {
              goto LABEL_171;
            }

            sub_1D62B5248(&v140, &v133);
            sub_1D62B5248(&v140, &v133);
            v112 = &unk_1F5113130;
          }
        }

        else
        {
          if (!v111)
          {
            if (v86)
            {
              sub_1D62B5248(&v140, &v133);
              sub_1D62B5248(&v140, &v133);
              v112 = &unk_1F51130B8;
              goto LABEL_170;
            }

            goto LABEL_171;
          }

          if ((v86 & 1) == 0)
          {
            goto LABEL_171;
          }

          sub_1D62B5248(&v140, &v133);
          sub_1D62B5248(&v140, &v133);
          v112 = &unk_1F51130E0;
        }

        goto LABEL_170;
      }

LABEL_172:
      v119 = v103 >> 4;
      a1 = v126;
      if (v119 == 3)
      {
        *&v133 = v84;
        *(&v133 + 1) = v85;
        LOWORD(v134) = v86;
        sub_1D62921EC(v126);
        v3 = v110;
        if (v110)
        {
          goto LABEL_187;
        }
      }

      goto LABEL_107;
    case 3:
    case 4:
      v131 = v140;
      v132 = v82;
      v144 = 5;
      sub_1D62B5248(&v140, &v133);

      sub_1D62B5248(&v140, &v133);

      v104 = sub_1D703E0C8(&v131, &v144);
      if (!v3)
      {
        v105 = v84;
        v106 = v104;

        v107 = swift_allocObject();
        *(v107 + 16) = v105;
        *(v107 + 24) = v85;
        *(v107 + 32) = v106;
        *(v107 + 40) = 0;
        v130 = v105;
        a1 = v126;
        sub_1D6C4D24C(v107 | 0x3000000000000000);

        *&v131 = v130;
        *(&v131 + 1) = v85;
        v132 = v86;
        v144 = 5;
        sub_1D62B5248(&v140, &v133);

        v108 = sub_1D703E0C8(&v131, &v144);

        v109 = swift_allocObject();
        *(v109 + 16) = v130;
        *(v109 + 24) = v85;
        *(v109 + 32) = v108;
        *(v109 + 40) = 0;
        v102 = v109 | 0x3000000000000000;
LABEL_96:
        sub_1D6C4D24C(v102);
        goto LABEL_106;
      }

LABEL_187:
      sub_1D5D085FC(&v140);

LABEL_175:
      sub_1D5D08954(&v145);
      return;
    default:

      sub_1D62B5248(&v140, &v133);
LABEL_114:
      sub_1D5D085FC(&v140);

      sub_1D5D08954(&v145);
      a1 = v126;
      v11 = v149;
      goto LABEL_74;
  }
}