void sub_1D61F9150(char a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    type metadata accessor for FormatLayoutError(0);
    sub_1D5B4CD14(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
    v3 = swift_allocError();
    *v4 = 0xD000000000000021;
    v4[1] = 0x80000001D73CED60;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  else
  {
    v5 = sub_1D726490C();
    v6 = sub_1D726203C();
    [v2 setValue:v5 forKey:v6];
    swift_unknownObjectRelease();
  }
}

void sub_1D61F9290(uint64_t a1, double a2)
{
  if (*(a1 + 16))
  {
    type metadata accessor for FormatLayoutError(0);
    sub_1D5B4CD14(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
    v3 = swift_allocError();
    *v4 = 0xD000000000000021;
    v4[1] = 0x80000001D73CED60;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  else
  {
    v5 = sub_1D726490C();
    v6 = sub_1D726203C();
    [v2 setValue:v5 forKey:{v6, *&a2}];
    swift_unknownObjectRelease();
  }
}

void sub_1D61F93CC(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    type metadata accessor for FormatLayoutError(0);
    sub_1D5B4CD14(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
    v3 = swift_allocError();
    *v4 = 0xD000000000000021;
    v4[1] = 0x80000001D73CED60;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  else
  {
    v5 = sub_1D726490C();
    v6 = sub_1D726203C();
    [v2 setValue:v5 forKey:{v6, a1}];
    swift_unknownObjectRelease();
  }
}

void sub_1D61F9508(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    type metadata accessor for FormatLayoutError(0);
    sub_1D5B4CD14(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
    v4 = swift_allocError();
    *v5 = 0xD000000000000021;
    v5[1] = 0x80000001D73CED60;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  else
  {
    swift_bridgeObjectRetain_n();
    v6 = sub_1D726490C();
    v7 = sub_1D726203C();
    [v3 setValue:v6 forKey:v7];

    swift_unknownObjectRelease();
  }
}

void sub_1D61F9668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void, __n128))
{
  v8 = a4(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = v27 - v15;
  v19 = MEMORY[0x1EEE9AC00](v17, v18);
  v21 = v27 - v20;
  if (*(*(a1 + *(a5(0, v19) + 36)) + 16))
  {
    type metadata accessor for FormatLayoutError(0);
    sub_1D5B4CD14(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
    v22 = swift_allocError();
    *v23 = 0xD000000000000021;
    v23[1] = 0x80000001D73CED60;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  else
  {
    v27[0] = v5;
    v24 = *(v9 + 16);
    v24(v16, a1, v8);
    (*(v9 + 32))(v21, v16, v8);
    v24(v12, v21, v8);
    v25 = sub_1D726490C();
    v26 = sub_1D726203C();
    [v27[0] setValue:v25 forKey:v26];
    swift_unknownObjectRelease();

    (*(v9 + 8))(v21, v8);
  }
}

void sub_1D61F9958(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for FormatOption(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = (&v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  sub_1D726344C();
  [a3 setUserInteractionEnabled_];
  v10 = *(a2 + 128);
  if (v10)
  {
    [a3 setAccessibilityIgnoresInvertColors_];
    v11 = *(v10 + 56);
    if (v11)
    {
      v12 = *(v11 + 16);
      if (v12)
      {
        v13 = v11 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
        v14 = *(v6 + 72);

        do
        {
          sub_1D5D25254(v13, v9, type metadata accessor for FormatOption);
          v15 = v9[1];
          v17 = v9[2];
          v16 = *v9;

          sub_1D5D28924(v9, type metadata accessor for FormatOption);
          sub_1D61F8D70(&v17, v16, v15, a3);

          v13 += v14;
          --v12;
        }

        while (v12);
      }
    }
  }

  else
  {
    [a3 setAccessibilityIgnoresInvertColors_];
  }
}

uint64_t _s8NewsFeed32FormatRadialGradientCircleRadiusO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32))
  {
    if (*(a2 + 32))
    {
      return vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*a1, *a2), vceqq_f64(*(a1 + 16), *(a2 + 16))))) & 1;
    }
  }

  else if ((*(a2 + 32) & 1) == 0 && *a1 == *a2)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_1D61F9C2C(uint64_t a1)
{
  result = sub_1D61F9C54();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D61F9C54()
{
  result = qword_1EC885288;
  if (!qword_1EC885288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885288);
  }

  return result;
}

unint64_t sub_1D61F9CA8(void *a1)
{
  a1[1] = sub_1D61F9CE0();
  a1[2] = sub_1D61F9D34();
  result = sub_1D61F9D88();
  a1[3] = result;
  return result;
}

unint64_t sub_1D61F9CE0()
{
  result = qword_1EDF1EED0;
  if (!qword_1EDF1EED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1EED0);
  }

  return result;
}

unint64_t sub_1D61F9D34()
{
  result = qword_1EDF081A0;
  if (!qword_1EDF081A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF081A0);
  }

  return result;
}

unint64_t sub_1D61F9D88()
{
  result = qword_1EC885290;
  if (!qword_1EC885290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885290);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for FormatRadialGradientCircleRadius(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

void *sub_1D61F9E24(uint64_t a1, void **a2)
{
  v2 = *(a2 + 32);
  if (v2 == 255)
  {
    v15 = MEMORY[0x1E69E6F90];
    sub_1D5B56088(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D7273AE0;
    v14 = inited + 32;
    sub_1D5B56088(0, &qword_1EC880490, sub_1D5EA74B8, v15);
    sub_1D5EA74B8(0);
    v17 = (*(*(v16 - 8) + 80) + 32) & ~*(*(v16 - 8) + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1D7273AE0;
    sub_1D711F844(1701869908, 0xE400000000000000, 1701736270, 0xE400000000000000, (v18 + v17));
    v19 = type metadata accessor for FormatInspectionItem(0);
    (*(*(v19 - 8) + 56))(v18 + v17, 0, 1, v19);
    sub_1D6795150(0x5220656C63726943, 0xED00007375696461, 0, 0, v18, v33);
    swift_setDeallocating();
    sub_1D5EF5F0C(v18 + v17, sub_1D5EA74B8);
  }

  else
  {
    v3 = a2[1];
    v32 = *a2;
    v5 = a2[2];
    v4 = a2[3];
    sub_1D5B56088(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
    if (v2)
    {
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D7273AE0;
      sub_1D5B56088(0, &qword_1EC880490, sub_1D5EA74B8, MEMORY[0x1E69E6F90]);
      v31 = v3;
      sub_1D5EA74B8(0);
      v8 = *(*(v7 - 8) + 72);
      v9 = (*(*(v7 - 8) + 80) + 32) & ~*(*(v7 - 8) + 80);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_1D7279970;
      v11 = v10 + v9;
      sub_1D711F844(1701869908, 0xE400000000000000, 0x6F69746365726944, 0xE90000000000006ELL, (v10 + v9));
      v12 = type metadata accessor for FormatInspectionItem(0);
      v13 = *(*(v12 - 8) + 56);
      v13(v11, 0, 1, v12);
      sub_1D712555C(0x6F50207472617453, 0xEB00000000746E69, v32, v31, 0, v11 + v8);
      v13(v11 + v8, 0, 1, v12);
      sub_1D712555C(0x6E696F5020646E45, 0xE900000000000074, v5, v4, 0, v11 + 2 * v8);
      v13(v11 + 2 * v8, 0, 1, v12);
      sub_1D6795150(0x5220656C63726943, 0xED00007375696461, 0, 0, v10, v33);
      swift_setDeallocating();
      v14 = inited + 32;
    }

    else
    {
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D7273AE0;
      v14 = inited + 32;
      sub_1D5B56088(0, &qword_1EC880490, sub_1D5EA74B8, MEMORY[0x1E69E6F90]);
      sub_1D5EA74B8(0);
      v21 = *(*(v20 - 8) + 72);
      v22 = (*(*(v20 - 8) + 80) + 32) & ~*(*(v20 - 8) + 80);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_1D7270C10;
      v24 = v23 + v22;
      sub_1D711F844(1701869908, 0xE400000000000000, 0x737569646152, 0xE600000000000000, (v23 + v22));
      v25 = type metadata accessor for FormatInspectionItem(0);
      v26 = *(*(v25 - 8) + 56);
      v26(v24, 0, 1, v25);
      sub_1D711A80C(0x737569646152, 0xE600000000000000, v32, 0, (v24 + v21));
      v26(v24 + v21, 0, 1, v25);
      sub_1D6795150(0x5220656C63726943, 0xED00007375696461, 0, 0, v23, v33);
      swift_setDeallocating();
    }

    swift_arrayDestroy();
  }

  swift_deallocClassInstance();
  *(inited + 56) = &type metadata for FormatInspectionGroup;
  *(inited + 64) = &off_1F518B2C0;
  v27 = swift_allocObject();
  *(inited + 32) = v27;
  *(v27 + 48) = v34;
  v28 = v33[1];
  *(v27 + 16) = v33[0];
  *(v27 + 32) = v28;
  v29 = sub_1D7073500(inited);
  swift_setDeallocating();
  sub_1D5EF5F0C(v14, sub_1D5E4F358);
  return v29;
}

uint64_t type metadata accessor for DebugNewsroomLayoutData(uint64_t a1)
{
  result = qword_1EC885298;
  if (!qword_1EC885298)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D61FA580(uint64_t a1)
{
  sub_1D5B49CBC(319, &qword_1EDF43BE0, MEMORY[0x1E69E6158]);
  if (v1 <= 0x3F)
  {
    sub_1D5B49CBC(319, &qword_1EC8852A8, &type metadata for DebugNewsroomLayoutRole);
    if (v2 <= 0x3F)
    {
      sub_1D5B49CBC(319, &qword_1EDF1ADE0, MEMORY[0x1E69E6370]);
      if (v3 <= 0x3F)
      {
        sub_1D5B5BF24(319, &qword_1EC884400, sub_1D614A45C);
        if (v4 <= 0x3F)
        {
          sub_1D5B5BF24(319, &qword_1EC884408, sub_1D614A4B8);
          if (v5 <= 0x3F)
          {
            sub_1D5B5BF24(319, &qword_1EDF45AC0, MEMORY[0x1E69D6B38]);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1D61FA708()
{
  sub_1D5B5BF24(0, &qword_1EDF45AC0, MEMORY[0x1E69D6B38]);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v25 - v3;
  v5 = sub_1D725BD1C();
  MEMORY[0x1EEE9AC00](v5, v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + 104);
  if (v10)
  {
    v29 = v9;
    v11 = 1 << *(v10 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v10 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = (v7 + 48);
    v27 = v7;
    v28 = (v7 + 32);
    swift_bridgeObjectRetain_n();
    v16 = 0;
    v30 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v17 = v16;
      if (!v13)
      {
        break;
      }

LABEL_9:
      v13 &= v13 - 1;

      sub_1D725BD4C();
      if ((*v15)(v4, 1, v5) == 1)
      {
        sub_1D5F40BCC(v4);
      }

      else
      {
        v18 = *v28;
        (*v28)(v29, v4, v5);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v30 = sub_1D69903D0(0, *(v30 + 2) + 1, 1, v30);
        }

        v20 = *(v30 + 2);
        v19 = *(v30 + 3);
        v21 = v20 + 1;
        if (v20 >= v19 >> 1)
        {
          v26 = v20 + 1;
          v24 = sub_1D69903D0((v19 > 1), v20 + 1, 1, v30);
          v21 = v26;
          v30 = v24;
        }

        v22 = v29;
        v23 = v30;
        *(v30 + 2) = v21;
        v18(&v23[((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v20], v22, v5);
      }
    }

    while (1)
    {
      v16 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v16 >= v14)
      {

        v31 = v30;

        sub_1D61FBD38(&v31);

        return;
      }

      v13 = *(v10 + 64 + 8 * v16);
      ++v17;
      if (v13)
      {
        goto LABEL_9;
      }
    }

    __break(1u);

    __break(1u);
  }
}

unint64_t sub_1D61FAA3C(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v4 = 0xD000000000000011;
    v5 = 0x655674736574616CLL;
    if (a1 == 8)
    {
      v5 = 0xD000000000000012;
    }

    if (a1 != 7)
    {
      v4 = v5;
    }

    v6 = 0x4A6567616B636170;
    if (a1 != 5)
    {
      v6 = 0x6465766968637261;
    }

    if (a1 <= 6u)
    {
      return v6;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    v1 = 25705;
    v2 = 1701605234;
    if (a1 != 2)
    {
      v2 = 0x4A6567616B636170;
    }

    if (a1)
    {
      v1 = 1701667182;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1D61FAB90@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D61FD3EC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D61FABB8(uint64_t a1)
{
  v2 = sub_1D61FBB18();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D61FABF4(uint64_t a1)
{
  v2 = sub_1D61FBB18();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D61FAC30(void *a1)
{
  v3 = v1;
  sub_1D61FBC80(0, &qword_1EC8852D8, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D61FBB18();
  sub_1D7264B5C();
  LOBYTE(v12) = 0;
  sub_1D72643FC();
  if (!v2)
  {
    LOBYTE(v12) = 1;
    sub_1D726437C();
    LOBYTE(v12) = *(v3 + 32);
    v13 = 2;
    sub_1D61FBCE4();
    sub_1D72643BC();
    LOBYTE(v12) = 3;
    sub_1D726437C();
    LOBYTE(v12) = 4;
    sub_1D726437C();
    LOBYTE(v12) = 5;
    sub_1D726437C();
    LOBYTE(v12) = 6;
    sub_1D726438C();
    v12 = *(v3 + 96);
    v13 = 7;
    sub_1D614A45C();
    sub_1D614B6C0(&qword_1EC884448, MEMORY[0x1E69E6160], MEMORY[0x1E69E5E38]);
    sub_1D72643BC();
    v12 = *(v3 + 104);
    v13 = 8;
    sub_1D614A4B8(0);
    sub_1D614B720();
    sub_1D72643BC();
    type metadata accessor for DebugNewsroomLayoutData(0);
    LOBYTE(v12) = 9;
    sub_1D725BD1C();
    sub_1D61FD28C(&qword_1EDF178C0, MEMORY[0x1E69D6B38], MEMORY[0x1E69D6B40]);
    sub_1D72643BC();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D61FAF94@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  sub_1D5B5BF24(0, &qword_1EDF45AC0, MEMORY[0x1E69D6B38]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = v39 - v6;
  sub_1D61FBC80(0, &qword_1EC8852C0, MEMORY[0x1E69E6F48]);
  v44 = v8;
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = v39 - v11;
  v13 = type metadata accessor for DebugNewsroomLayoutData(0);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = (v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(v17 + 60);
  v19 = sub_1D725BD1C();
  v20 = *(*(v19 - 8) + 56);
  v46 = v18;
  v47 = v16;
  v20(v16 + v18, 1, 1, v19);
  v21 = a1[3];
  v45 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_1D61FBB18();
  sub_1D7264B0C();
  if (v2)
  {
    v48 = v2;
    v25 = v47;
    __swift_destroy_boxed_opaque_existential_1(v45);
    swift_bridgeObjectRelease_n();
LABEL_4:

    return sub_1D5F40BCC(v25 + v46);
  }

  v42 = v7;
  v22 = v9;
  LOBYTE(v49) = 0;
  v23 = v44;
  v24 = sub_1D72642BC();
  v25 = v47;
  *v47 = v24;
  v25[1] = v27;
  LOBYTE(v49) = 1;
  v28 = sub_1D726422C();
  v48 = 0;
  v25[2] = v28;
  v25[3] = v29;
  v41 = v29;
  v50 = 2;
  sub_1D61FBB6C();
  v30 = v48;
  sub_1D726427C();
  if (v30)
  {
    v48 = v30;
    (*(v22 + 8))(v12, v23);
    __swift_destroy_boxed_opaque_existential_1(v45);
LABEL_8:

    goto LABEL_4;
  }

  *(v25 + 32) = v49;
  LOBYTE(v49) = 3;
  v25[5] = sub_1D726422C();
  v25[6] = v31;
  LOBYTE(v49) = 4;
  v40 = v12;
  v25[7] = sub_1D726422C();
  v25[8] = v32;
  LOBYTE(v49) = 5;
  v25[9] = sub_1D726422C();
  v25[10] = v33;
  v39[1] = v33;
  LOBYTE(v49) = 6;
  v34 = sub_1D726423C();
  v48 = 0;
  *(v25 + 88) = v34;
  sub_1D614A45C();
  v50 = 7;
  sub_1D614B6C0(&qword_1EC884430, MEMORY[0x1E69E6190], MEMORY[0x1E69E5E58]);
  v35 = v48;
  sub_1D726427C();
  v48 = v35;
  if (v35 || (v25[12] = v49, sub_1D614A4B8(0), v50 = 8, sub_1D614B46C(), v36 = v48, sub_1D726427C(), (v48 = v36) != 0))
  {
    (*(v22 + 8))(v40, v23);
    __swift_destroy_boxed_opaque_existential_1(v45);
    goto LABEL_8;
  }

  v25[13] = v49;
  LOBYTE(v49) = 9;
  sub_1D61FD28C(&qword_1EDF43A48, MEMORY[0x1E69D6B38], MEMORY[0x1E69D6B58]);
  v37 = v48;
  sub_1D726427C();
  v48 = v37;
  if (v37)
  {
    (*(v22 + 8))(v40, v44);
    __swift_destroy_boxed_opaque_existential_1(v45);
    v25 = v47;
    goto LABEL_8;
  }

  (*(v22 + 8))(v40, v44);
  v38 = v47;
  sub_1D614B51C(v42, v47 + v46);
  sub_1D61FBBC0(v38, v43);
  __swift_destroy_boxed_opaque_existential_1(v45);
  return sub_1D61FBC24(v38);
}

uint64_t sub_1D61FB658()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D61FB730(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D61FB7F4(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

unint64_t sub_1D61FB8C8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D61FD1EC(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D61FB8F8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x524544414548;
  v5 = 0xE600000000000000;
  v6 = 0x5245544F4F46;
  v7 = 0xE700000000000000;
  v8 = 0x4C4C4157594150;
  if (v2 != 3)
  {
    v8 = 0x554F52474B434142;
    v7 = 0xEA0000000000444ELL;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 1497648962;
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

unint64_t sub_1D61FBA40()
{
  result = qword_1EC8852B0;
  if (!qword_1EC8852B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8852B0);
  }

  return result;
}

uint64_t sub_1D61FBA94(uint64_t a1)
{
  *(a1 + 8) = sub_1D61FD28C(&qword_1EC8852B8, type metadata accessor for DebugNewsroomLayoutData, &unk_1D72B0390);
  result = sub_1D61FD28C(&qword_1EC882C68, type metadata accessor for DebugNewsroomLayoutData, &unk_1D72B0368);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D61FBB18()
{
  result = qword_1EC8852C8;
  if (!qword_1EC8852C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8852C8);
  }

  return result;
}

unint64_t sub_1D61FBB6C()
{
  result = qword_1EC8852D0;
  if (!qword_1EC8852D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8852D0);
  }

  return result;
}

uint64_t sub_1D61FBBC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DebugNewsroomLayoutData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D61FBC24(uint64_t a1)
{
  v2 = type metadata accessor for DebugNewsroomLayoutData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D61FBC80(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D61FBB18();
    v7 = a3(a1, &type metadata for DebugNewsroomLayoutData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D61FBCE4()
{
  result = qword_1EC8852E0;
  if (!qword_1EC8852E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8852E0);
  }

  return result;
}

void sub_1D61FBD38(void *a1)
{
  v2 = *(sub_1D725BD1C() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1D5D5A9C0(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_1D61FBDE0(v5);
  *a1 = v3;
}

void sub_1D61FBDE0(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1D726449C();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1D725BD1C();
        v6 = sub_1D726276C();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_1D725BD1C() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1D61FC1D0(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1D61FBF0C(0, v2, 1, a1);
  }
}

void sub_1D61FBF0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_1D725BD1C();
  MEMORY[0x1EEE9AC00](v8, v9);
  v44 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v48 = &v34 - v13;
  v17 = MEMORY[0x1EEE9AC00](v14, v15);
  v47 = &v34 - v18;
  v36 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v45 = *(v16 + 16);
    v46 = v16 + 16;
    v20 = *(v16 + 72);
    v21 = (v16 + 8);
    v42 = (v16 + 32);
    v43 = v19;
    v22 = (v19 + v20 * (a3 - 1));
    v41 = -v20;
    v23 = a1 - a3;
    v35 = v20;
    v24 = v19 + v20 * a3;
LABEL_5:
    v39 = v22;
    v40 = a3;
    v37 = v24;
    v38 = v23;
    v25 = v22;
    while (1)
    {
      v26 = v47;
      v27 = v45;
      (v45)(v47, v24, v8, v17);
      v28 = v48;
      v27(v48, v25, v8);
      sub_1D61FD28C(&qword_1EDF43A50, MEMORY[0x1E69D6B38], MEMORY[0x1E69D6B48]);
      v29 = sub_1D7261F5C();
      v30 = *v21;
      (*v21)(v28, v8);
      v30(v26, v8);
      if ((v29 & 1) == 0)
      {
LABEL_4:
        a3 = v40 + 1;
        v22 = &v39[v35];
        v23 = v38 - 1;
        v24 = v37 + v35;
        if (v40 + 1 == v36)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v43)
      {
        break;
      }

      v31 = *v42;
      v32 = v44;
      (*v42)(v44, v24, v8);
      swift_arrayInitWithTakeFrontToBack();
      v31(v25, v32, v8);
      v25 += v41;
      v24 += v41;
      if (__CFADD__(v23++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1D61FC1D0(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v126 = a1;
  v8 = sub_1D725BD1C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v131 = &v123 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v138 = &v123 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v144 = &v123 - v17;
  v20 = MEMORY[0x1EEE9AC00](v18, v19);
  v143 = &v123 - v21;
  v22 = a3[1];
  if (v22 < 1)
  {
    v24 = MEMORY[0x1E69E7CC0];
LABEL_94:
    v25 = *v126;
    if (!*v126)
    {
      goto LABEL_132;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_126:
      v24 = sub_1D62FF50C(v24);
    }

    v146 = v24;
    v119 = *(v24 + 2);
    if (v119 >= 2)
    {
      while (*a3)
      {
        v120 = *&v24[16 * v119];
        v121 = *&v24[16 * v119 + 24];
        sub_1D61FCBF8(*a3 + v9[9] * v120, *a3 + v9[9] * *&v24[16 * v119 + 16], *a3 + v9[9] * v121, v25);
        if (v5)
        {
          goto LABEL_104;
        }

        if (v121 < v120)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_1D62FF50C(v24);
        }

        if (v119 - 2 >= *(v24 + 2))
        {
          goto LABEL_120;
        }

        v122 = &v24[16 * v119];
        *v122 = v120;
        *(v122 + 1) = v121;
        v146 = v24;
        sub_1D62FF480(v119 - 1);
        v24 = v146;
        v119 = *(v146 + 2);
        if (v119 <= 1)
        {
          goto LABEL_104;
        }
      }

      goto LABEL_130;
    }

LABEL_104:

    return;
  }

  v123 = a4;
  v23 = 0;
  v141 = (v9 + 1);
  v142 = v9 + 2;
  v140 = (v9 + 4);
  v24 = MEMORY[0x1E69E7CC0];
  v128 = v9;
  v145 = v8;
  v124 = a3;
  while (1)
  {
    v25 = v23;
    v129 = v24;
    if (v23 + 1 >= v22)
    {
      v38 = v23 + 1;
    }

    else
    {
      v136 = v22;
      v125 = v5;
      v26 = *a3;
      v27 = v9[9];
      v28 = v23;
      v127 = v23;
      v29 = &v26[v27 * (v23 + 1)];
      v30 = v8;
      v31 = v9[2];
      v32 = v143;
      v31(v143, v29, v30, v20);
      v33 = &v26[v27 * v28];
      v34 = v144;
      v135 = v31;
      (v31)(v144, v33, v30);
      v134 = sub_1D61FD28C(&qword_1EDF43A50, MEMORY[0x1E69D6B38], MEMORY[0x1E69D6B48]);
      LODWORD(v137) = sub_1D7261F5C();
      v35 = v9[1];
      v35(v34, v30);
      v133 = v35;
      v35(v32, v30);
      v36 = v127 + 2;
      v139 = v27;
      v37 = &v26[v27 * (v127 + 2)];
      while (1)
      {
        v38 = v136;
        if (v136 == v36)
        {
          break;
        }

        v39 = v143;
        v40 = v9;
        v41 = v145;
        v42 = v135;
        (v135)(v143, v37, v145);
        v43 = v144;
        v42(v144, v29, v41);
        v44 = sub_1D7261F5C() & 1;
        v45 = v133;
        (v133)(v43, v41);
        v46 = v41;
        v9 = v40;
        v45(v39, v46);
        ++v36;
        v37 += v139;
        v29 += v139;
        if ((v137 & 1) != v44)
        {
          v38 = v36 - 1;
          break;
        }
      }

      v5 = v125;
      v24 = v129;
      v8 = v145;
      a3 = v124;
      v25 = v127;
      if (v137)
      {
        if (v38 < v127)
        {
          goto LABEL_123;
        }

        if (v127 < v38)
        {
          v47 = v38;
          v48 = v139 * (v38 - 1);
          v49 = v38 * v139;
          v136 = v38;
          v50 = v127;
          v51 = v127 * v139;
          do
          {
            if (v50 != --v47)
            {
              v53 = *a3;
              if (!*a3)
              {
                goto LABEL_129;
              }

              v137 = *v140;
              v137(v131, &v53[v51], v145);
              if (v51 < v48 || &v53[v51] >= &v53[v49])
              {
                v52 = v145;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v52 = v145;
                if (v51 != v48)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v137(&v53[v48], v131, v52);
              v9 = v128;
              v24 = v129;
            }

            ++v50;
            v48 -= v139;
            v49 -= v139;
            v51 += v139;
          }

          while (v50 < v47);
          v5 = v125;
          v8 = v145;
          v25 = v127;
          v38 = v136;
        }
      }
    }

    v54 = a3[1];
    if (v38 < v54)
    {
      if (__OFSUB__(v38, v25))
      {
        goto LABEL_122;
      }

      if (v38 - v25 < v123)
      {
        if (__OFADD__(v25, v123))
        {
          goto LABEL_124;
        }

        if (v25 + v123 >= v54)
        {
          v55 = a3[1];
        }

        else
        {
          v55 = v25 + v123;
        }

        if (v55 < v25)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v38 != v55)
        {
          break;
        }
      }
    }

    v56 = v38;
    if (v38 < v25)
    {
      goto LABEL_121;
    }

LABEL_33:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v24 = sub_1D698BA94(0, *(v24 + 2) + 1, 1, v24);
    }

    v58 = *(v24 + 2);
    v57 = *(v24 + 3);
    v59 = v58 + 1;
    if (v58 >= v57 >> 1)
    {
      v24 = sub_1D698BA94((v57 > 1), v58 + 1, 1, v24);
    }

    *(v24 + 2) = v59;
    v60 = &v24[16 * v58];
    *(v60 + 4) = v25;
    *(v60 + 5) = v56;
    v25 = *v126;
    if (!*v126)
    {
      goto LABEL_131;
    }

    v132 = v56;
    if (v58)
    {
      while (1)
      {
        v61 = v59 - 1;
        if (v59 >= 4)
        {
          break;
        }

        if (v59 == 3)
        {
          v62 = *(v24 + 4);
          v63 = *(v24 + 5);
          v72 = __OFSUB__(v63, v62);
          v64 = v63 - v62;
          v65 = v72;
LABEL_52:
          if (v65)
          {
            goto LABEL_110;
          }

          v78 = &v24[16 * v59];
          v80 = *v78;
          v79 = *(v78 + 1);
          v81 = __OFSUB__(v79, v80);
          v82 = v79 - v80;
          v83 = v81;
          if (v81)
          {
            goto LABEL_113;
          }

          v84 = &v24[16 * v61 + 32];
          v86 = *v84;
          v85 = *(v84 + 1);
          v72 = __OFSUB__(v85, v86);
          v87 = v85 - v86;
          if (v72)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v82, v87))
          {
            goto LABEL_117;
          }

          if (v82 + v87 >= v64)
          {
            if (v64 < v87)
            {
              v61 = v59 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v88 = &v24[16 * v59];
        v90 = *v88;
        v89 = *(v88 + 1);
        v72 = __OFSUB__(v89, v90);
        v82 = v89 - v90;
        v83 = v72;
LABEL_66:
        if (v83)
        {
          goto LABEL_112;
        }

        v91 = &v24[16 * v61];
        v93 = *(v91 + 4);
        v92 = *(v91 + 5);
        v72 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v72)
        {
          goto LABEL_115;
        }

        if (v94 < v82)
        {
          goto LABEL_3;
        }

LABEL_73:
        v99 = v61 - 1;
        if (v61 - 1 >= v59)
        {
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
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
          goto LABEL_125;
        }

        if (!*a3)
        {
          goto LABEL_128;
        }

        v100 = *&v24[16 * v99 + 32];
        v101 = *&v24[16 * v61 + 40];
        sub_1D61FCBF8(*a3 + v9[9] * v100, *a3 + v9[9] * *&v24[16 * v61 + 32], *a3 + v9[9] * v101, v25);
        if (v5)
        {
          goto LABEL_104;
        }

        if (v101 < v100)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_1D62FF50C(v24);
        }

        if (v99 >= *(v24 + 2))
        {
          goto LABEL_107;
        }

        v102 = &v24[16 * v99];
        *(v102 + 4) = v100;
        *(v102 + 5) = v101;
        v146 = v24;
        sub_1D62FF480(v61);
        v24 = v146;
        v59 = *(v146 + 2);
        v8 = v145;
        if (v59 <= 1)
        {
          goto LABEL_3;
        }
      }

      v66 = &v24[16 * v59 + 32];
      v67 = *(v66 - 64);
      v68 = *(v66 - 56);
      v72 = __OFSUB__(v68, v67);
      v69 = v68 - v67;
      if (v72)
      {
        goto LABEL_108;
      }

      v71 = *(v66 - 48);
      v70 = *(v66 - 40);
      v72 = __OFSUB__(v70, v71);
      v64 = v70 - v71;
      v65 = v72;
      if (v72)
      {
        goto LABEL_109;
      }

      v73 = &v24[16 * v59];
      v75 = *v73;
      v74 = *(v73 + 1);
      v72 = __OFSUB__(v74, v75);
      v76 = v74 - v75;
      if (v72)
      {
        goto LABEL_111;
      }

      v72 = __OFADD__(v64, v76);
      v77 = v64 + v76;
      if (v72)
      {
        goto LABEL_114;
      }

      if (v77 >= v69)
      {
        v95 = &v24[16 * v61 + 32];
        v97 = *v95;
        v96 = *(v95 + 1);
        v72 = __OFSUB__(v96, v97);
        v98 = v96 - v97;
        if (v72)
        {
          goto LABEL_118;
        }

        if (v64 < v98)
        {
          v61 = v59 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v22 = a3[1];
    v23 = v132;
    if (v132 >= v22)
    {
      goto LABEL_94;
    }
  }

  v125 = v5;
  v103 = *a3;
  v104 = v9[9];
  v139 = v9[2];
  v105 = v103 + v104 * (v38 - 1);
  v106 = -v104;
  v127 = v25;
  v107 = v25 - v38;
  v137 = v103;
  v130 = v104;
  v108 = v103 + v38 * v104;
  v132 = v55;
LABEL_85:
  v135 = v105;
  v136 = v38;
  v133 = v108;
  v134 = v107;
  v109 = v105;
  while (1)
  {
    v110 = v143;
    v111 = v139;
    (v139)(v143, v108, v8);
    v112 = v144;
    v111(v144, v109, v145);
    sub_1D61FD28C(&qword_1EDF43A50, MEMORY[0x1E69D6B38], MEMORY[0x1E69D6B48]);
    v113 = sub_1D7261F5C();
    v114 = *v141;
    v115 = v112;
    v8 = v145;
    (*v141)(v115, v145);
    v114(v110, v8);
    if ((v113 & 1) == 0)
    {
LABEL_84:
      v38 = v136 + 1;
      v105 = &v135[v130];
      v107 = v134 - 1;
      v108 = &v133[v130];
      v56 = v132;
      if (v136 + 1 != v132)
      {
        goto LABEL_85;
      }

      v5 = v125;
      a3 = v124;
      v9 = v128;
      v24 = v129;
      v25 = v127;
      if (v132 < v127)
      {
        goto LABEL_121;
      }

      goto LABEL_33;
    }

    if (!v137)
    {
      break;
    }

    v116 = *v140;
    v117 = v138;
    (*v140)(v138, v108, v8);
    swift_arrayInitWithTakeFrontToBack();
    v116(v109, v117, v8);
    v109 += v106;
    v108 += v106;
    if (__CFADD__(v107++, 1))
    {
      goto LABEL_84;
    }
  }

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
}

void sub_1D61FCBF8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v53 = sub_1D725BD1C();
  v8 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53, v9);
  v51 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v50 = &v41 - v13;
  v15 = *(v14 + 72);
  if (!v15)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_62;
  }

  v16 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_63;
  }

  v52 = a3;
  v17 = (a2 - a1) / v15;
  v56 = a1;
  v55 = a4;
  if (v17 >= v16 / v15)
  {
    v19 = v16 / v15 * v15;
    if (a4 < a2 || a2 + v19 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v28 = a4 + v19;
    if (v19 >= 1)
    {
      v29 = -v15;
      v44 = a4;
      v45 = (v8 + 16);
      v42 = (v8 + 8);
      v43 = a1;
      v30 = a4 + v19;
      v31 = v52;
      v46 = v29;
      do
      {
        v41 = v28;
        v32 = a2 + v29;
        v48 = a2 + v29;
        v49 = v28;
        v47 = a2;
        while (1)
        {
          if (a2 <= a1)
          {
            v56 = a2;
            v28 = v41;
            goto LABEL_59;
          }

          v34 = v31;
          v52 = v31 + v29;
          v35 = v30 + v29;
          v36 = *v45;
          v37 = v50;
          v38 = v53;
          (*v45)(v50, v30 + v29, v53);
          v39 = v51;
          v36(v51, v32, v38);
          sub_1D61FD28C(&qword_1EDF43A50, MEMORY[0x1E69D6B38], MEMORY[0x1E69D6B48]);
          LOBYTE(v36) = sub_1D7261F5C();
          v40 = *v42;
          (*v42)(v39, v38);
          v40(v37, v38);
          if (v36)
          {
            break;
          }

          v31 = v52;
          if (v34 < v30 || v52 >= v30)
          {
            swift_arrayInitWithTakeFrontToBack();
            v32 = v48;
            a1 = v43;
          }

          else
          {
            v32 = v48;
            a1 = v43;
            if (v34 != v30)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v49 = v35;
          v30 = v35;
          v33 = v35 > v44;
          v29 = v46;
          a2 = v47;
          if (!v33)
          {
            v28 = v49;
            goto LABEL_58;
          }
        }

        v31 = v52;
        if (v34 < v47 || v52 >= v47)
        {
          a2 = v48;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v43;
        }

        else
        {
          a2 = v48;
          a1 = v43;
          if (v34 != v47)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v28 = v49;
        v29 = v46;
      }

      while (v30 > v44);
    }

LABEL_58:
    v56 = a2;
LABEL_59:
    v54 = v28;
  }

  else
  {
    v18 = v17 * v15;
    if (a4 < a1 || a1 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v49 = a4 + v18;
    v54 = a4 + v18;
    if (v18 >= 1 && a2 < v52)
    {
      v47 = *(v8 + 16);
      v48 = v8 + 16;
      v45 = v15;
      v46 = (v8 + 8);
      do
      {
        v21 = v50;
        v22 = v53;
        v23 = v47;
        (v47)(v50, a2, v53);
        v24 = v51;
        v23(v51, a4, v22);
        sub_1D61FD28C(&qword_1EDF43A50, MEMORY[0x1E69D6B38], MEMORY[0x1E69D6B48]);
        LOBYTE(v23) = sub_1D7261F5C();
        v25 = *v46;
        (*v46)(v24, v22);
        v25(v21, v22);
        if (v23)
        {
          v26 = v45;
          if (a1 < a2 || a1 >= &v45[a2])
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v26;
        }

        else
        {
          v26 = v45;
          v27 = &v45[a4];
          if (a1 < a4 || a1 >= v27)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v55 = v27;
          a4 += v26;
        }

        a1 += v26;
        v56 = a1;
      }

      while (a4 < v49 && a2 < v52);
    }
  }

  sub_1D62FF5C8(&v56, &v55, &v54);
}

unint64_t sub_1D61FD1EC(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D72641CC();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1D61FD238()
{
  result = qword_1EC8852E8;
  if (!qword_1EC8852E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8852E8);
  }

  return result;
}

uint64_t sub_1D61FD28C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D61FD2E8()
{
  result = qword_1EC8852F0;
  if (!qword_1EC8852F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8852F0);
  }

  return result;
}

unint64_t sub_1D61FD340()
{
  result = qword_1EC8852F8;
  if (!qword_1EC8852F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8852F8);
  }

  return result;
}

unint64_t sub_1D61FD398()
{
  result = qword_1EC885300;
  if (!qword_1EC885300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885300);
  }

  return result;
}

uint64_t sub_1D61FD3EC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701605234 && a2 == 0xE400000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4A6567616B636170 && a2 == 0xEE006C72556E6F73 || (sub_1D72646CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4A6567616B636170 && a2 == 0xEB000000006E6F73 || (sub_1D72646CC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x4A6567616B636170 && a2 == 0xED000064496E6F73 || (sub_1D72646CC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6465766968637261 && a2 == 0xE800000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D73CB7C0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D73CB7E0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x655674736574616CLL && a2 == 0xED00006E6F697372)
  {

    return 9;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t FormatSlotItemFilter.identifier.getter()
{
  v1 = *v0;
  if (!*v0)
  {
    return 0x746174536E656573;
  }

  v2 = *(v1 + 16);
  v3 = *(v1 + 24);

  MEMORY[0x1DA6F9910](v2, v3);

  return 0x726F7463656C6573;
}

uint64_t sub_1D61FD7EC()
{
  v1 = *v0;
  if (!*v0)
  {
    return 0x746174536E656573;
  }

  v2 = *(v1 + 16);
  v3 = *(v1 + 24);

  MEMORY[0x1DA6F9910](v2, v3);

  return 0x726F7463656C6573;
}

uint64_t sub_1D61FD87C(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for FormatContentSlotItemResolution(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v12 = &v22 - v11;
  v13 = *(a1 + 16);
  if (!v13)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v14 = a2[1];
  v26 = *a2;
  v15 = *(v10 + 72);
  v23 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v16 = a1 + v23;
  v17 = MEMORY[0x1E69E7CC0];
  v24 = v7;
  v25 = v4;
  do
  {
    sub_1D61FE26C(v16, v12, type metadata accessor for FormatContentSlotItemResolution);
    v27 = v26;
    v28 = v14;
    if (FormatSelector.matches(_:)(*&v12[*(v4 + 24)]))
    {
      sub_1D61FE208(v12, v7);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v29 = v17;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D6997C80(0, *(v17 + 16) + 1, 1);
        v17 = v29;
      }

      v20 = *(v17 + 16);
      v19 = *(v17 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_1D6997C80((v19 > 1), v20 + 1, 1);
        v17 = v29;
      }

      *(v17 + 16) = v20 + 1;
      v7 = v24;
      sub_1D61FE208(v24, v17 + v23 + v20 * v15);
      v4 = v25;
    }

    else
    {
      sub_1D61FE2D4(v12, type metadata accessor for FormatContentSlotItemResolution);
    }

    v16 += v15;
    --v13;
  }

  while (v13);
  return v17;
}

uint64_t sub_1D61FDA98(uint64_t a1, void *a2)
{
  v66 = a2;
  sub_1D5B5B2A0(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v61 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v60 = &v58 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v59 = &v58 - v11;
  v12 = type metadata accessor for FormatContentSlotItemObject.Resolved(0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = (&v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for FormatContentSlotItemResolution(0) - 8;
  MEMORY[0x1EEE9AC00](v16, v17);
  v67 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v23 = &v58 - v22;
  v24 = *(a1 + 16);
  if (v24)
  {
    v68 = (*(v21 + 80) + 32) & ~*(v21 + 80);
    v25 = a1 + v68;
    v26 = MEMORY[0x1E69E7CC0];
    v69 = *(v21 + 72);
    v65 = v12;
    v27 = v67;
    while (1)
    {
      sub_1D61FE26C(v25, v23, type metadata accessor for FormatContentSlotItemResolution);
      sub_1D61FE26C(v23, v15, type metadata accessor for FormatContentSlotItemObject.Resolved);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 9)
      {
        if (((1 << EnumCaseMultiPayload) & 0x37C) != 0)
        {
          sub_1D61FE2D4(v15, type metadata accessor for FormatContentSlotItemObject.Resolved);
LABEL_8:
          sub_1D61FE208(v23, v27);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v73 = v26;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1D6997C80(0, *(v26 + 16) + 1, 1);
            v27 = v67;
            v26 = v73;
          }

          v31 = *(v26 + 16);
          v30 = *(v26 + 24);
          if (v31 >= v30 >> 1)
          {
            sub_1D6997C80((v30 > 1), v31 + 1, 1);
            v27 = v67;
            v26 = v73;
          }

          *(v26 + 16) = v31 + 1;
          v32 = v26 + v68 + v31 * v69;
          v33 = v69;
          sub_1D61FE208(v27, v32);
          goto LABEL_4;
        }

        if (EnumCaseMultiPayload == 1)
        {
          v64 = *v15;
          v34 = v64;
          v35 = v66[5];
          v62 = v66[6];
          v63 = __swift_project_boxed_opaque_existential_1(v66 + 2, v35);
          v36 = [v34 identifier];
          v37 = sub_1D726207C();
          v39 = v38;

          v70 = v37;
          v71 = v39;
          v72 = 1;
          v40 = v60;
          (*(v62 + 8))(&v70, v35);
LABEL_17:

          sub_1D5DEA520(v70, v71, v72);
          v47 = v40;
          goto LABEL_19;
        }

        if (EnumCaseMultiPayload == 7)
        {
          v64 = *v15;
          v41 = v64;
          v42 = v66[5];
          v62 = v66[6];
          v63 = __swift_project_boxed_opaque_existential_1(v66 + 2, v42);
          v43 = [v41 identifier];
          v44 = sub_1D726207C();
          v46 = v45;

          v70 = v44;
          v71 = v46;
          v72 = 2;
          v40 = v61;
          (*(v62 + 8))(&v70, v42);
          goto LABEL_17;
        }
      }

      v64 = *v15;
      v48 = v64;
      v49 = v66[5];
      v62 = v66[6];
      v63 = __swift_project_boxed_opaque_existential_1(v66 + 2, v49);
      v50 = [v48 articleID];
      v51 = sub_1D726207C();
      v53 = v52;

      v70 = v51;
      v71 = v53;
      v72 = 0;
      v47 = v59;
      (*(v62 + 8))(&v70, v49);
      swift_unknownObjectRelease();
      sub_1D5DEA520(v70, v71, v72);
LABEL_19:
      v54 = sub_1D725891C();
      v55 = (*(*(v54 - 8) + 48))(v47, 1, v54);
      sub_1D61FE2D4(v47, sub_1D5B5B2A0);
      v56 = v55 == 1;
      v27 = v67;
      v33 = v69;
      if (!v56)
      {
        goto LABEL_8;
      }

      sub_1D61FE2D4(v23, type metadata accessor for FormatContentSlotItemResolution);
LABEL_4:
      v25 += v33;
      if (!--v24)
      {
        return v26;
      }
    }
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t _s8NewsFeed20FormatSlotItemFilterO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1)
  {
    if (v3)
    {
      if (*(v2 + 16) != *(v3 + 16) || *(v2 + 24) != *(v3 + 24))
      {
        return sub_1D72646CC();
      }

      return 1;
    }

    return 0;
  }

  return !v3;
}

unint64_t sub_1D61FE048(uint64_t a1)
{
  result = sub_1D61FE070();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D61FE070()
{
  result = qword_1EC885308;
  if (!qword_1EC885308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885308);
  }

  return result;
}

unint64_t sub_1D61FE0C4(void *a1)
{
  a1[1] = sub_1D61FE0FC();
  a1[2] = sub_1D61FE150();
  result = sub_1D61FE1A4();
  a1[3] = result;
  return result;
}

unint64_t sub_1D61FE0FC()
{
  result = qword_1EC885310;
  if (!qword_1EC885310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885310);
  }

  return result;
}

unint64_t sub_1D61FE150()
{
  result = qword_1EC885318;
  if (!qword_1EC885318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885318);
  }

  return result;
}

unint64_t sub_1D61FE1A4()
{
  result = qword_1EC885320;
  if (!qword_1EC885320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885320);
  }

  return result;
}

uint64_t sub_1D61FE208(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatContentSlotItemResolution(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D61FE26C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D61FE2D4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t SportsEmbedConfigResourceTag.config.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v7 = v1[5];
  v6 = v1[6];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v7;
  a1[5] = v6;

  return sub_1D60531A0(v4, v5);
}

uint64_t SportsEmbedConfigResourceTag.childrenConfig.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[7];
  v3 = v1[8];
  v4 = v1[9];
  v5 = v1[10];
  v6 = v1[11];
  v7 = v1[12];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return sub_1D61FE3C8(v2, v3, v4, v5);
}

uint64_t sub_1D61FE3C8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {

    return sub_1D60531A0(a3, a4);
  }

  return result;
}

uint64_t sub_1D61FE43C()
{
  v1 = 0x6769666E6F63;
  if (*v0 != 1)
  {
    v1 = 0x6E6572646C696863;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x736449676174;
  }
}

uint64_t sub_1D61FE49C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D61FEEE8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D61FE4C4(uint64_t a1)
{
  v2 = sub_1D61FE870();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D61FE500(uint64_t a1)
{
  v2 = sub_1D61FE870();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SportsEmbedConfigResourceTag.encode(to:)(void *a1)
{
  sub_1D61FECC0(0, &qword_1EC885328, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v24 - v8;
  v10 = *v1;
  v11 = v1[2];
  v12 = v1[3];
  v32 = v1[1];
  v33 = v11;
  v13 = v1[5];
  v36 = v1[4];
  v37 = v12;
  v14 = v1[7];
  v34 = v1[6];
  v35 = v13;
  v15 = v1[9];
  v30 = v1[8];
  v31 = v14;
  v16 = v1[11];
  v28 = v1[10];
  v29 = v15;
  v26 = v1[12];
  v27 = v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D61FE870();

  sub_1D7264B5C();
  v38 = v10;
  v44 = 0;
  sub_1D5B81B04();
  sub_1D5CB5D1C(&qword_1EDF047E0, MEMORY[0x1E69E6160], MEMORY[0x1E69E64F0]);
  sub_1D726443C();
  if (v2)
  {

    return (*(v6 + 8))(v9, v5);
  }

  else
  {
    v25 = v6;

    v38 = v32;
    v39 = v33;
    v18 = v36;
    v19 = v37;
    v40 = v37;
    v41 = v36;
    v42 = v35;
    v43 = v34;
    v44 = 1;

    sub_1D60531A0(v19, v18);
    sub_1D61FE8C4();
    sub_1D726443C();
    v20 = v40;
    v21 = v41;
    v22 = v42;
    v23 = v43;

    sub_1D5D559EC(v20, v21, v22, v23);
    v38 = v31;
    v39 = v30;
    v40 = v29;
    v41 = v28;
    v42 = v27;
    v43 = v26;
    v44 = 2;
    sub_1D61FE3C8(v31, v30, v29, v28);
    sub_1D72643BC();
    sub_1D60531E4(v38, v39, v40, v41, v42, v43);
    return (*(v25 + 8))(v9, v5);
  }
}

unint64_t sub_1D61FE870()
{
  result = qword_1EDF0A7F0;
  if (!qword_1EDF0A7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0A7F0);
  }

  return result;
}

unint64_t sub_1D61FE8C4()
{
  result = qword_1EC885330;
  if (!qword_1EC885330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885330);
  }

  return result;
}

void SportsEmbedConfigResourceTag.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D61FECC0(0, &qword_1EDF03990, MEMORY[0x1E69E6F48]);
  v33 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v21 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D61FE870();
  sub_1D7264B0C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v10 = v6;
    v32 = a2;
    sub_1D5B81B04();
    LOBYTE(v34) = 0;
    sub_1D5CB5D1C(&qword_1EDF3C7D0, MEMORY[0x1E69E6190], MEMORY[0x1E69E6510]);
    v11 = v33;
    sub_1D726431C();
    v31 = v41;
    LOBYTE(v34) = 1;
    sub_1D61FED24();
    sub_1D726431C();
    v29 = v44;
    v30 = v42;
    v27 = v41;
    v28 = v45;
    v25 = v43;
    v26 = v46;
    v58 = 2;
    sub_1D726427C();
    (*(v10 + 8))(v9, v11);
    v23 = *(&v55 + 1);
    v24 = v55;
    v12 = v57;
    v21 = *(&v56 + 1);
    v22 = v56;
    v13 = v31;
    v33 = v54;
    *&v34 = v31;
    v15 = v26;
    v14 = v27;
    *(&v34 + 1) = v27;
    *&v35 = v30;
    v16 = v25;
    *(&v35 + 1) = v25;
    *&v36 = v29;
    *(&v36 + 1) = v28;
    *&v37 = v26;
    *(&v37 + 1) = v54;
    v38 = v55;
    v39 = v56;
    v40 = v57;
    v17 = v32;
    *(v32 + 96) = v57;
    v18 = v35;
    *v17 = v34;
    v17[1] = v18;
    v19 = v39;
    v17[4] = v38;
    v17[5] = v19;
    v20 = v37;
    v17[2] = v36;
    v17[3] = v20;
    sub_1D6053088(&v34, &v41);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v41 = v13;
    v42 = v14;
    v43 = v30;
    v44 = v16;
    v45 = v29;
    v46 = v28;
    v47 = v15;
    v48 = v33;
    v49 = v24;
    v50 = v23;
    v51 = v22;
    v52 = v21;
    v53 = v12;
    sub_1D60530E4(&v41);
  }
}

void sub_1D61FECC0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D61FE870();
    v7 = a3(a1, &type metadata for SportsEmbedConfigResourceTag.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D61FED24()
{
  result = qword_1EDF162E8;
  if (!qword_1EDF162E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF162E8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed025SportsEmbedConfigResourceE0VSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_1D61FEDE4()
{
  result = qword_1EC885338;
  if (!qword_1EC885338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885338);
  }

  return result;
}

unint64_t sub_1D61FEE3C()
{
  result = qword_1EDF0A7E0;
  if (!qword_1EDF0A7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0A7E0);
  }

  return result;
}

unint64_t sub_1D61FEE94()
{
  result = qword_1EDF0A7E8;
  if (!qword_1EDF0A7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0A7E8);
  }

  return result;
}

uint64_t sub_1D61FEEE8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x736449676174 && a2 == 0xE600000000000000;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6769666E6F63 && a2 == 0xE600000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6572646C696863 && a2 == 0xEE006769666E6F43)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

double FormatTextNodeFormat.format.getter@<D0>(void *a1@<X8>)
{
  *a1 = *v1;

  return result;
}

void sub_1D61FF018(void (**a1)(char *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = v4[1];
  v59 = *v4;

  v11 = sub_1D6E5B35C(a1, a2, a3, a4);
  if (v5)
  {
  }

  else
  {
    v12 = v11;

    if (a3)
    {
      v54 = v10;

      v13 = [v12 string];
      v14 = sub_1D726207C();
      v16 = v15;

      v17 = sub_1D62DD564(a3, a1);

      sub_1D62DF2F4(v17, a3, a1, 18, v61);
      type metadata accessor for FormatAttributedString(0);
      swift_allocObject();
      sub_1D61FFF18(v61, &v59);
      sub_1D6BB8DF0(v14, v16, v61);
      sub_1D6BB92D8(a1);
      v47 = v46;

      sub_1D61FFF74(v61);
      v57 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithAttributedString_];

      v10 = v54;
    }

    else
    {
      v57 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithAttributedString_];
    }

    v53 = *(v10 + 16);
    if (v53)
    {
      v49 = a4;
      v18 = 0;
      v50 = OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_inventory;
      v51 = a3;
      v19 = (v10 + 64);
      v55 = v10;
      v56 = a1;
      v48 = a2;
      while (v18 < *(v10 + 16))
      {
        v20 = *(v19 - 2);
        v21 = *v19;
        v22 = *(v19 - 4);
        v23 = *(v19 - 3);
        v59 = 31611;
        v60 = 0xE200000000000000;

        v63 = v21;

        v58 = v20;

        MEMORY[0x1DA6F9910](v22, v23);
        MEMORY[0x1DA6F9910](32125, 0xE200000000000000);
        v25 = v59;
        v24 = v60;
        if (a3)
        {

          v27 = sub_1D62DD564(v26, a1);

          sub_1D62DF2F4(v27, a3, a1, 18, v62);
          type metadata accessor for FormatAttributedString(0);
          swift_allocObject();
          sub_1D61FFF18(v62, &v59);
          sub_1D6BB8DF0(v25, v24, v62);
          sub_1D6BB92D8(a1);
          v29 = v28;

          sub_1D61FFF74(v62);
          v30 = [v29 string];
          sub_1D726207C();
        }

        v31 = [v57 mutableString];
        v32 = sub_1D726203C();

        v33 = [v31 rangeOfString_];
        v35 = v34;

        if (v33 != sub_1D725773C())
        {
          v52 = v35;

          v37 = sub_1D6B0ACE8(v36, 0);

          v38 = (*(v56 + v50) + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__styles);
          swift_beginAccess();
          v39 = *v38;
          v40 = v38[1];

          sub_1D6FBAAA4(v41, v37, v39, v40);
          v43 = v42;

          v59 = v58;
          v44 = v43;
          if (!v43)
          {
            v44 = v51;
          }

          v45 = sub_1D6E5B35C(v37, v48, v44, v49);

          [v57 replaceCharactersInRange:v33 withAttributedString:{v52, v45}];

          a3 = v51;
        }

        ++v18;

        v19 += 5;
        v10 = v55;
        a1 = v56;
        if (v53 == v18)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_16:
      if (a3)
      {

        _s8NewsFeed19FormatTextNodeStyleC18reapplyLineSpacing010attributedD07contextSo18NSAttributedStringCAH_AA0cE7ContextCtF_0(v57);
      }
    }
  }
}

uint64_t FormatTextNodeFormat.Token.identifier.getter()
{
  v1 = *v0;

  return v1;
}

double FormatTextNodeFormat.Token.content.getter@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 16);

  return result;
}

uint64_t sub_1D61FF818(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 8);
  sub_1D61FFFC8();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7273AE0;

  v26 = a1;
  v27 = a2;
  v28 = a3;
  v9 = sub_1D6E5B0C8(a1, a2, a3);
  v11 = v10;
  LOBYTE(a1) = v12;

  *(inited + 32) = v9;
  *(inited + 40) = v11;
  *(inited + 48) = a1 & 1;
  v13 = *(v7 + 16);
  v14 = MEMORY[0x1E69E7CC0];
  if (v13)
  {
    v29 = MEMORY[0x1E69E7CC0];
    sub_1D6997920(0, v13, 0);
    v14 = v29;
    v15 = v7 + 64;
    do
    {

      swift_retain_n();

      v16 = sub_1D6E5B0C8(v26, v27, v28);
      v18 = v17;
      v20 = v19;

      v22 = *(v29 + 16);
      v21 = *(v29 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_1D6997920((v21 > 1), v22 + 1, 1);
      }

      *(v29 + 16) = v22 + 1;
      v23 = v29 + 24 * v22;
      *(v23 + 32) = v16;
      *(v23 + 40) = v18;
      *(v23 + 48) = v20 & 1;
      v15 += 40;
      --v13;
    }

    while (v13);
  }

  sub_1D6985C08(v14);
  v24 = sub_1D60ED798();

  return v24;
}

void _s8NewsFeed014FormatTextNodeC0V2eeoiySbAC_ACtFZ_0(unint64_t *a1, unint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a2[1];
  v5 = *a2;
  v6 = v3;

  LOBYTE(v3) = static FormatTextContent.== infix(_:_:)(&v6, &v5);

  if (v3)
  {

    sub_1D6360ADC(v2, v4);
  }
}

uint64_t _s8NewsFeed014FormatTextNodeC0V5TokenV2eeoiySbAE_AEtFZ_0(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v6 = a2[2];
  v5 = a2[3];
  v7 = a2[4];
  v8 = *a1 == *a2 && a1[1] == a2[1];
  if (!v8 && (sub_1D72646CC() & 1) == 0)
  {
    return 0;
  }

  v12 = v6;
  v13 = v2;

  v9 = static FormatTextContent.== infix(_:_:)(&v13, &v12);

  if ((v9 & 1) == 0)
  {
    return 0;
  }

  if (!v4)
  {
    if (!v5)
    {
      goto LABEL_10;
    }

    return 0;
  }

  if (!v5)
  {
    return 0;
  }

  v10 = _s8NewsFeed19FormatTextNodeStyleC2eeoiySbAC_ACtFZ_0(v4, v5);

  if ((v10 & 1) == 0)
  {
    return 0;
  }

LABEL_10:

  return sub_1D5BFC390(v3, v7);
}

unint64_t sub_1D61FFBDC(uint64_t a1)
{
  result = sub_1D61FFC04();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D61FFC04()
{
  result = qword_1EC885340;
  if (!qword_1EC885340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885340);
  }

  return result;
}

unint64_t sub_1D61FFC98()
{
  result = qword_1EDF165C0;
  if (!qword_1EDF165C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF165C0);
  }

  return result;
}

unint64_t sub_1D61FFCEC()
{
  result = qword_1EC885348;
  if (!qword_1EC885348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885348);
  }

  return result;
}

unint64_t sub_1D61FFD40(uint64_t a1)
{
  result = sub_1D61FFD68();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D61FFD68()
{
  result = qword_1EC885350;
  if (!qword_1EC885350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885350);
  }

  return result;
}

uint64_t sub_1D61FFDFC(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = (a4)(a1, a2, a3);
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t sub_1D61FFE50()
{
  result = qword_1EDF165B8;
  if (!qword_1EDF165B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF165B8);
  }

  return result;
}

unint64_t sub_1D61FFEA4()
{
  result = qword_1EC885358;
  if (!qword_1EC885358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885358);
  }

  return result;
}

void sub_1D61FFFC8()
{
  if (!qword_1EDF19878)
  {
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF19878);
    }
  }
}

void sub_1D620002C(uint64_t a1)
{
  if (!qword_1EDF17C20)
  {
    type metadata accessor for SportsEventStatusResponseData(255);
    sub_1D620083C(&unk_1EDF0A110, type metadata accessor for SportsEventStatusResponseData, &unk_1D7383238);
    sub_1D620083C(&qword_1EDF0A120, type metadata accessor for SportsEventStatusResponseData, &unk_1D7383210);
    v1 = sub_1D725AEBC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF17C20);
    }
  }
}

uint64_t type metadata accessor for SportsEventStatusResponse(uint64_t a1)
{
  result = qword_1EDF0BC20;
  if (!qword_1EDF0BC20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D6200158(uint64_t a1)
{
  sub_1D620002C(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1D62001C4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  sub_1D620002C(0);
  v5 = v4;
  v23 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v24 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D62007D8(0, &qword_1EDF039C8, MEMORY[0x1E69E6F48]);
  v9 = v8;
  v22 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v20 - v11;
  v13 = type metadata accessor for SportsEventStatusResponse(0);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6200720();
  sub_1D7264B0C();
  if (!v2)
  {
    v17 = v22;
    v18 = v23;
    sub_1D620083C(&qword_1EDF17C28, sub_1D620002C, MEMORY[0x1E69D6560]);
    sub_1D726431C();
    (*(v17 + 8))(v12, v9);
    (*(v18 + 32))(v16, v24, v5);
    sub_1D6200774(v16, v21);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D6200480(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_1D72646CC();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_1D6200508(uint64_t a1)
{
  v2 = sub_1D6200720();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6200544(uint64_t a1)
{
  v2 = sub_1D6200720();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D6200598(void *a1, __n128 a2)
{
  sub_1D62007D8(0, &qword_1EC885360, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6200720();
  sub_1D7264B5C();
  sub_1D620002C(0);
  sub_1D620083C(&qword_1EC885368, sub_1D620002C, MEMORY[0x1E69D6558]);
  sub_1D726443C();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1D6200720()
{
  result = qword_1EDF0BC78;
  if (!qword_1EDF0BC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0BC78);
  }

  return result;
}

uint64_t sub_1D6200774(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsEventStatusResponse(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1D62007D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D6200720();
    v7 = a3(a1, &type metadata for SportsEventStatusResponse.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D620083C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D6200898()
{
  result = qword_1EC885370;
  if (!qword_1EC885370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885370);
  }

  return result;
}

unint64_t sub_1D62008F0()
{
  result = qword_1EDF0BC68;
  if (!qword_1EDF0BC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0BC68);
  }

  return result;
}

unint64_t sub_1D6200948()
{
  result = qword_1EDF0BC70;
  if (!qword_1EDF0BC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0BC70);
  }

  return result;
}

uint64_t FeedGroupConfigError.hashValue.getter()
{
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](0);
  return sub_1D7264A5C();
}

unint64_t sub_1D6200A14()
{
  result = qword_1EC885378;
  if (!qword_1EC885378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885378);
  }

  return result;
}

uint64_t static LayeredMediaViewVisibilityTracking.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 >> 6)
  {
    if (v2 >> 6 == 1)
    {
      if ((v3 & 0xC0) != 0x40)
      {
        return 0;
      }

      return (v3 ^ v2 ^ 1) & 1;
    }

    if (v3 == 128)
    {
      return 1;
    }
  }

  else if (v3 < 0x40)
  {
    return (v3 ^ v2 ^ 1) & 1;
  }

  return 0;
}

uint64_t sub_1D6200AD4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 >> 6)
  {
    if (v2 >> 6 == 1)
    {
      if ((v3 & 0xC0) != 0x40)
      {
        return 0;
      }

      return (v3 ^ v2 ^ 1) & 1;
    }

    if (v3 == 128)
    {
      return 1;
    }
  }

  else if (v3 < 0x40)
  {
    return (v3 ^ v2 ^ 1) & 1;
  }

  return 0;
}

uint64_t getEnumTagSinglePayload for LayeredMediaViewVisibilityTracking(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x7E)
  {
    goto LABEL_17;
  }

  if (a2 + 130 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 130) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 130;
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

      return (*a1 | (v4 << 8)) - 130;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 130;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 6) & 0xFFFFFF83 | (4 * ((*a1 >> 1) & 0x1F))) ^ 0x7F;
  if (v6 >= 0x7D)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for LayeredMediaViewVisibilityTracking(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 130 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 130) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x7E)
  {
    v4 = 0;
  }

  if (a2 > 0x7D)
  {
    v5 = ((a2 - 126) >> 8) + 1;
    *result = a2 - 126;
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
    *result = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1D6200C8C(_BYTE *a1)
{
  v1 = *a1;
  if (v1 >= 0)
  {
    return *a1 >> 6;
  }

  else
  {
    return v1 & 1 | 2u;
  }
}

_BYTE *sub_1D6200CA8(_BYTE *result, unsigned int a2)
{
  if (a2 < 2)
  {
    *result = *result & 1 | (a2 << 6);
  }

  else
  {
    *result = a2 & 1 | 0x80;
  }

  return result;
}

uint64_t sub_1D6200CE4(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x6572616873;
    v7 = 0x6B6E694C79706F63;
    if (a1 != 3)
    {
      v7 = 0x64616F6C6E776F64;
    }

    if (a1 != 2)
    {
      v6 = v7;
    }

    if (a1 <= 1u)
    {
      return 0x654E6E496E65706FLL;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x6B636F6C62;
    v2 = 0x617461436B636162;
    if (a1 != 9)
    {
      v2 = 0xD000000000000013;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x65766F6D6572;
    v4 = 0x6E6168436E65706FLL;
    if (a1 != 6)
    {
      v4 = 0x776F6C6C6F66;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1D6200E44(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_1D6200CE4(*a1);
  v5 = v4;
  if (v3 == sub_1D6200CE4(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();
  }

  return v8 & 1;
}

uint64_t sub_1D6200ECC()
{
  v1 = *v0;
  sub_1D7264A0C();
  sub_1D6200CE4(v1);
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D6200F30(uint64_t a1)
{
  sub_1D6200CE4(*v1);
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D6200F84(uint64_t a1)
{
  v2 = *v1;
  sub_1D7264A0C();
  sub_1D6200CE4(v2);
  sub_1D72621EC();

  return sub_1D7264A5C();
}

unint64_t sub_1D6200FE4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D6202014(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1D6201014@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D6200CE4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t FormatIssueBinding.Command.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

unint64_t sub_1D620118C()
{
  result = qword_1EC885380;
  if (!qword_1EC885380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885380);
  }

  return result;
}

unint64_t sub_1D62011E0(uint64_t a1)
{
  result = sub_1D6201208();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6201208()
{
  result = qword_1EC885388;
  if (!qword_1EC885388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885388);
  }

  return result;
}

unint64_t sub_1D620125C(void *a1)
{
  a1[1] = sub_1D6201294();
  a1[2] = sub_1D62012E8();
  result = sub_1D620118C();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6201294()
{
  result = qword_1EC885390;
  if (!qword_1EC885390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885390);
  }

  return result;
}

unint64_t sub_1D62012E8()
{
  result = qword_1EC885398;
  if (!qword_1EC885398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885398);
  }

  return result;
}

unint64_t sub_1D6201390()
{
  result = qword_1EC8853A0;
  if (!qword_1EC8853A0)
  {
    sub_1D5B58150(255, &qword_1EC8853A8, &_s7CommandO10CodingTypeON, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8853A0);
  }

  return result;
}

unint64_t sub_1D6201410()
{
  result = qword_1EC8853B0;
  if (!qword_1EC8853B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8853B0);
  }

  return result;
}

unint64_t sub_1D6201464()
{
  result = qword_1EC8853B8;
  if (!qword_1EC8853B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8853B8);
  }

  return result;
}

uint64_t sub_1D62014B8@<X0>(unsigned __int8 a1@<W0>, __int128 *a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v6 = a2[6];
  v7 = a2[7];
  v8 = a2[4];
  v84[5] = a2[5];
  v84[6] = v6;
  v85[0] = v7;
  *(v85 + 9) = *(a2 + 121);
  v9 = a2[2];
  v84[3] = a2[3];
  v84[4] = v8;
  v10 = *a2;
  v84[1] = a2[1];
  v84[2] = v9;
  v84[0] = v10;
  v11 = *(a3 + 112);
  v86[6] = *(a3 + 96);
  v86[7] = v11;
  v86[8] = *(a3 + 128);
  v87 = *(a3 + 144);
  v12 = *(a3 + 48);
  v86[2] = *(a3 + 32);
  v86[3] = v12;
  v13 = *(a3 + 80);
  v86[4] = *(a3 + 64);
  v86[5] = v13;
  v14 = *(a3 + 16);
  v86[0] = *a3;
  v86[1] = v14;
  sub_1D6202060(v86);
  v15 = sub_1D6200CE4(a1);
  v17 = v16;
  v18 = sub_1D5C73AB0(v15, v16);
  if (v19)
  {
    *&v81 = v18;
    *(&v81 + 1) = v19;
    sub_1D5BF4D9C();
    v20 = sub_1D7263A0C();
    v22 = v21;

    v23 = sub_1D5FD24A4(1uLL, v15, v17);
    v25 = v24;
    v27 = v26;
    v29 = v28;

    v30 = MEMORY[0x1DA6F97E0](v23, v25, v27, v29);
    v32 = v31;

    MEMORY[0x1DA6F9910](v30, v32);

    v15 = v20;
    v17 = v22;
  }

  if (a1 <= 4u)
  {
    if (a1 > 1u)
    {
      if (a1 == 2)
      {
        v48 = qword_1EDF3ACA8;
        v49 = *&v84[0];
        if (v48 != -1)
        {
          v80 = v49;
          swift_once();
          v49 = v80;
        }

        v81 = v49;
        v83 = 0x80;
        v82 = 0;
        type metadata accessor for FormatCommandAction();
        swift_allocObject();

        v43 = sub_1D62037BC(v50, &v81, v51);
      }

      else if (a1 == 3)
      {
        v39 = qword_1EDF3AAD8;
        v40 = *&v84[0];
        if (v39 != -1)
        {
          swift_once();
        }

        type metadata accessor for FormatCommandAction();
        swift_allocObject();

        v43 = sub_1D6204178(v41, v40, v42);
      }

      else
      {
        v62 = qword_1EDF16C38;
        v63 = *&v84[0];
        if (v62 != -1)
        {
          swift_once();
        }

        sub_1D5B58150(0, &qword_1EDF194C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
        v64 = swift_allocObject();
        *(v64 + 16) = xmmword_1D72816C0;
        *(v64 + 32) = v63;
        type metadata accessor for FormatCommandAction();
        swift_allocObject();

        v43 = sub_1D6203FC0(v65, v64, v66);
      }

      goto LABEL_39;
    }

    if (a1)
    {
      v67 = qword_1EDF3AFB0;
      v47 = *&v84[0];
      if (v67 == -1)
      {
LABEL_38:
        type metadata accessor for FormatCommandAction();
        swift_allocObject();

        v43 = sub_1D6203B70(v68, v47, 0, 0, v69);
        goto LABEL_39;
      }
    }

    else
    {
      v46 = qword_1EDF3AFE8;
      v47 = *&v84[0];
      if (v46 == -1)
      {
        goto LABEL_38;
      }
    }

    swift_once();
    goto LABEL_38;
  }

  if (a1 <= 7u)
  {
    if (a1 == 5)
    {
      v52 = *&v84[0];
      sub_1D5B58150(0, &qword_1EDF194C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
      v53 = swift_allocObject();
      *(v53 + 16) = xmmword_1D72816C0;
      *(v53 + 32) = v52;
      type metadata accessor for Commands.RemoveIssues.Prompt();
      v54 = swift_allocObject();
      v54[2] = v53;
      v54[3] = &unk_1F50F72B0;
      v54[4] = 0;
      v54[5] = 0;
      v55 = qword_1EDF16C58;
      v56 = v52;
      if (v55 != -1)
      {
        swift_once();
      }

      type metadata accessor for FormatCommandAction();
      swift_allocObject();

      v43 = sub_1D6203E08(v57, v54, v58);
      goto LABEL_39;
    }

    if (a1 == 6)
    {
      if (qword_1EDF3B010 != -1)
      {
        swift_once();
      }

      v33 = qword_1EDF3B020;

      v34 = [*&v84[0] sourceChannel];
      type metadata accessor for FormatCommandAction();
      swift_allocObject();
      v36 = v33;
      v37 = v34;
      v38 = 0;
LABEL_21:
      v43 = sub_1D620338C(v36, v37, v38, 0, v35);
LABEL_39:
      v70 = v43;
LABEL_40:
      sub_1D5ECF320(v84);
      goto LABEL_41;
    }

    if (qword_1EDF3AB00 != -1)
    {
      swift_once();
    }

    v76 = qword_1EDF3AB10;

    v77 = [*&v84[0] sourceChannel];
    type metadata accessor for FormatCommandAction();
    swift_allocObject();
    v61 = sub_1D68A926C(v76, v77, 256);
LABEL_45:
    v70 = v61;

    goto LABEL_40;
  }

  if (a1 == 8)
  {
    if (qword_1EDF3AB68 != -1)
    {
      swift_once();
    }

    v59 = qword_1EDF3AB70;

    v60 = [*&v84[0] sourceChannel];
    type metadata accessor for FormatCommandAction();
    swift_allocObject();
    v61 = sub_1D68A8EEC(v59, v60);
    goto LABEL_45;
  }

  if (a1 == 9)
  {
    if (qword_1EDF3B010 != -1)
    {
      swift_once();
    }

    v44 = qword_1EDF3B020;

    v45 = [*&v84[0] sourceChannel];
    type metadata accessor for FormatCommandAction();
    swift_allocObject();
    v36 = v44;
    v37 = v45;
    v38 = 1;
    goto LABEL_21;
  }

  sub_1D5ECF320(v84);
  if (qword_1EDF16A20 != -1)
  {
    swift_once();
  }

  type metadata accessor for FormatCommandAction();
  swift_allocObject();

  v70 = sub_1D6202F80(v78, 1, v79);
LABEL_41:
  v71 = type metadata accessor for FormatInspectionItem(0);
  v72 = *(v71 + 24);
  *&a4[v72] = v70;
  v73 = type metadata accessor for FormatInspectionItem.Value(0);
  swift_storeEnumTagMultiPayload();
  result = (*(*(v73 - 8) + 56))(&a4[v72], 0, 1, v73);
  *a4 = v15;
  *(a4 + 1) = v17;
  *(a4 + 2) = 0;
  *(a4 + 3) = 0;
  v75 = &a4[*(v71 + 28)];
  *v75 = 0;
  *(v75 + 1) = 0;
  v75[16] = -1;
  return result;
}

double sub_1D6201D30@<D0>(__int128 *a1@<X0>, __int128 *a2@<X1>, _OWORD *a3@<X8>)
{
  v28 = a3;
  sub_1D5EA74B8(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = &v29[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v10 = 0;
  v51 = *(a1 + 18);
  v11 = a1[7];
  v48 = a1[6];
  v49 = v11;
  v50 = a1[8];
  v12 = a1[3];
  v44 = a1[2];
  v45 = v12;
  v13 = a1[5];
  v46 = a1[4];
  v47 = v13;
  v14 = a1[1];
  v42 = *a1;
  v43 = v14;
  v15 = a2[6];
  v16 = a2[7];
  v17 = a2[4];
  v57 = a2[5];
  v58 = v15;
  v59[0] = v16;
  *(v59 + 9) = *(a2 + 121);
  v18 = a2[3];
  v54 = a2[2];
  v55 = v18;
  v56 = v17;
  v19 = a2[1];
  v52 = *a2;
  v53 = v19;
  v20 = MEMORY[0x1E69E7CC0];
  do
  {
    v21 = byte_1F50F7280[v10 + 32];
    v40[5] = v57;
    v40[6] = v58;
    v41[0] = v59[0];
    *(v41 + 9) = *(v59 + 9);
    v40[2] = v54;
    v40[3] = v55;
    v40[4] = v56;
    v40[0] = v52;
    v40[1] = v53;
    v36 = v48;
    v37 = v49;
    v38 = v50;
    v39 = v51;
    v32 = v44;
    v33 = v45;
    v34 = v46;
    v35 = v47;
    v30 = v42;
    v31 = v43;
    sub_1D5ECF2C4(&v52, v29);
    sub_1D5FBAE1C(&v42, v29);
    sub_1D62014B8(v21, v40, &v30, v9);
    v22 = type metadata accessor for FormatInspectionItem(0);
    (*(*(v22 - 8) + 56))(v9, 0, 1, v22);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v20 = sub_1D698C0A8(0, v20[2] + 1, 1, v20);
    }

    v24 = v20[2];
    v23 = v20[3];
    if (v24 >= v23 >> 1)
    {
      v20 = sub_1D698C0A8((v23 > 1), v24 + 1, 1, v20);
    }

    ++v10;
    v20[2] = v24 + 1;
    sub_1D5E4F52C(v9, v20 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v24);
  }

  while (v10 != 11);
  sub_1D6795150(0x646E616D6D6F43, 0xE700000000000000, 0, 0, v20, &v30);

  result = *&v30;
  v26 = v31;
  v27 = v28;
  *v28 = v30;
  v27[1] = v26;
  *(v27 + 4) = v32;
  return result;
}

unint64_t sub_1D6202014(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D72641CC();

  if (v2 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v2;
  }
}

id sub_1D62020BC(void *a1, uint64_t a2)
{
  v38[1] = *MEMORY[0x1E69E9840];
  v6 = sub_1D72585BC();
  v7 = *(v6 - 8);
  *&v9 = MEMORY[0x1EEE9AC00](v6, v8).n128_u64[0];
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a1 dataProvider];
  if (v12)
  {
    v13 = v12;
    v37 = a2;
    if ([v12 isRawFileConsumable])
    {
      v14 = [v13 filePath];
      if (v14)
      {
        v35 = v3;
        v36 = a1;
        v15 = v14;
        sub_1D726207C();

        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        sub_1D725840C();

        v17 = sub_1D725844C();
        (*(v7 + 8))(v11, v6);
        v18 = sub_1D726203C();

        v38[0] = 0;
        v2 = [ObjCClassFromMetadata packageWithContentsOfURL:v17 type:v18 options:0 error:v38];

        if (v2)
        {
          v19 = v38[0];
        }

        else
        {
          v32 = v38[0];
          sub_1D725829C();

          swift_willThrow();
        }

LABEL_15:
        swift_unknownObjectRelease();

        return v2;
      }
    }

    v20 = [v13 data];
    if (v20)
    {
      v35 = v3;
      v36 = a1;
      v21 = v20;
      v22 = sub_1D725867C();
      v24 = v23;

      v25 = swift_getObjCClassFromMetadata();
      v26 = sub_1D725865C();
      v27 = sub_1D726203C();

      v38[0] = 0;
      v2 = [v25 packageWithData:v26 type:v27 options:0 error:v38];

      if (v2)
      {
        v28 = v38[0];
      }

      else
      {
        v31 = v38[0];
        sub_1D725829C();

        swift_willThrow();
      }

      sub_1D5B952F8(v22, v24);
      goto LABEL_15;
    }

    sub_1D620247C();
    swift_allocError();
    *v30 = 1;
    swift_willThrow();
    swift_unknownObjectRelease();
  }

  else
  {

    sub_1D620247C();
    swift_allocError();
    *v29 = 0;
    swift_willThrow();
  }

  return v2;
}

unint64_t sub_1D620247C()
{
  result = qword_1EC8853C0;
  if (!qword_1EC8853C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8853C0);
  }

  return result;
}

unint64_t sub_1D62024E4()
{
  result = qword_1EC8853C8;
  if (!qword_1EC8853C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8853C8);
  }

  return result;
}

uint64_t sub_1D6202538(uint64_t a1)
{
  sub_1D5B54630(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v32 - v6;
  v8 = type metadata accessor for FeedWeather(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = (&v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *v1;
  v12 = *(v1 + 8);
  v14 = *(v1 + 16);
  v15 = *(v1 + 24);
  v16 = (v15 >> 3) & 7;
  if (v16 <= 1)
  {
    if (v16)
    {
      sub_1D67507D8(*(a1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack + 8), v11);
      if (!v2)
      {
        if (qword_1EDF3AF88 != -1)
        {
          swift_once();
        }

        v26 = qword_1EDF3AF90;
        sub_1D5B5A498(0, &qword_1EDF043B0, 0x1E695DFF8);
        v27 = *v11;
        v28 = v11[1];
        v29 = objc_allocWithZone(MEMORY[0x1E6985C40]);

        v30 = [v29 initWithLatitude:v27 longitude:v28];
        sub_1D726324C();

        type metadata accessor for FormatCommandAction();
        swift_allocObject();
        a1 = sub_1D62029B4(v26, v7);
        sub_1D60B12DC(v11);
      }
    }

    else
    {
      sub_1D6750B04(*(a1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack + 8), v33);
      if (!v2)
      {
        v21 = v33[0].n128_u64[1];
        a1 = sub_1D6896CAC(v33[0].n128_u64[0], a1, v13, v12, v14, v20);
        swift_unknownObjectRelease();
      }
    }
  }

  else if (v16 == 2)
  {
    sub_1D67505CC(*(a1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack + 8), v33);
    if (!v2)
    {
      v22 = v33[0].n128_u64[0];
      v23 = FCFeedDescriptor.feedTag.getter();
      a1 = sub_1D6896CAC(v23, a1, v13, v12, v14, v24);
      swift_unknownObjectRelease();
    }
  }

  else if (v16 == 3)
  {
    sub_1D67505CC(*(a1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack + 8), v33);
    if (!v2)
    {
      v17 = v33[0].n128_u64[0];
      v18 = [objc_msgSend(v33[0].n128_u64[0] backingTag)];
      swift_unknownObjectRelease();
      if (v18)
      {
        a1 = sub_1D6896CAC(v18, a1, v13, v12, v14, v19);

        swift_unknownObjectRelease();
      }

      else
      {
        a1 = type metadata accessor for FormatLayoutError(0);
        sub_1D5D285FC();
        swift_allocError();
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
      }
    }
  }

  else
  {
    sub_1D6750380(*(a1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack + 8), v33);
    if (!v2)
    {
      v35[0] = v33[0];
      v35[1] = v33[1];
      v36 = v34;
      sub_1D6896A54(v35, a1, v13, v12, v14, v15 & 0xC7, v33[0]);
      a1 = v31;
      sub_1D62058A0(v35);
    }
  }

  return a1;
}

uint64_t sub_1D62029B4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = MEMORY[0x1E6968FB0];
  sub_1D5B54630(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8, v10);
  v12 = v31 - v11;
  *(v3 + 16) = sub_1D725F7AC();
  *(v3 + 24) = v13;
  *(v3 + 32) = 0;
  v31[0] = v6;
  sub_1D62058F4(a2, v12, &qword_1EDF45B40, v6, sub_1D5B54630);
  v14 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  sub_1D5EB8540(v12, v15 + v14);
  *(v3 + 40) = sub_1D6205964;
  *(v3 + 48) = v15;
  sub_1D62058F4(a2, v12, &qword_1EDF45B40, v6, sub_1D5B54630);
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  sub_1D5EB8540(v12, v16 + v14);
  *(v3 + 56) = sub_1D6205A0C;
  *(v3 + 64) = v16;
  v17 = a2;
  v18 = a2;
  v19 = v31[0];
  v33 = sub_1D5B54630;
  sub_1D62058F4(v17, v12, &qword_1EDF45B40, v31[0], sub_1D5B54630);
  v31[1] = v9;
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  sub_1D5EB8540(v12, v20 + v14);
  *(v3 + 72) = sub_1D6205AB0;
  *(v3 + 80) = v20;
  v32 = v18;
  sub_1D62058F4(v18, v12, &qword_1EDF45B40, v19, sub_1D5B54630);
  v21 = swift_allocObject();
  *(v21 + 16) = a1;
  sub_1D5EB8540(v12, v21 + v14);
  *(v3 + 88) = sub_1D6206C90;
  *(v3 + 96) = v21;

  v22 = v19;
  v23 = v33;
  sub_1D62058F4(v18, v12, &qword_1EDF45B40, v19, v33);
  v24 = swift_allocObject();
  *(v24 + 16) = a1;
  sub_1D5EB8540(v12, v24 + v14);
  *(v3 + 104) = sub_1D6205B78;
  *(v3 + 112) = v24;

  v25 = v32;
  sub_1D62058F4(v32, v12, &qword_1EDF45B40, v22, v23);
  v26 = swift_allocObject();
  *(v26 + 16) = a1;
  sub_1D5EB8540(v12, v26 + v14);
  *(v3 + 120) = sub_1D6205BB4;
  *(v3 + 128) = v26;

  v27 = v25;
  sub_1D62058F4(v25, v12, &qword_1EDF45B40, v22, v23);
  v28 = swift_allocObject();
  *(v28 + 16) = a1;
  sub_1D5EB8540(v12, v28 + v14);
  *(v3 + 136) = sub_1D6205C44;
  *(v3 + 144) = v28;
  sub_1D5EB8540(v27, v12);
  v29 = swift_allocObject();
  *(v29 + 16) = a1;
  sub_1D5EB8540(v12, v29 + v14);
  *(v3 + 152) = sub_1D6205C94;
  *(v3 + 160) = v29;
  swift_retain_n();
  return v3;
}

uint64_t sub_1D6202DC8(uint64_t a1, uint64_t a2, __n128 a3)
{
  v4 = v3;
  *(v4 + 16) = sub_1D725F7AC();
  *(v4 + 24) = v7;
  *(v4 + 32) = 0;
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v4 + 40) = sub_1D62067B4;
  *(v4 + 48) = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  *(v4 + 56) = sub_1D6206828;
  *(v4 + 64) = v9;
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v4 + 72) = sub_1D6206430;
  *(v4 + 80) = v10;
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  *(v4 + 88) = sub_1D6206C94;
  *(v4 + 96) = v11;
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  *(v4 + 104) = sub_1D5C00104;
  *(v4 + 112) = v12;
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  *(v4 + 120) = sub_1D6206C8C;
  *(v4 + 128) = v13;
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  *(v4 + 136) = sub_1D6206C94;
  *(v4 + 144) = v14;
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  *(v4 + 152) = sub_1D62068A0;
  *(v4 + 160) = v15;
  swift_retain_n();
  swift_unknownObjectRetain_n();
  return v4;
}

uint64_t sub_1D6202F80(uint64_t a1, char a2, __n128 a3)
{
  v4 = v3;
  *(v4 + 16) = sub_1D725F7AC();
  *(v4 + 24) = v7;
  *(v4 + 32) = 0;
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2 & 1;
  *(v4 + 40) = sub_1D6206640;
  *(v4 + 48) = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2 & 1;
  *(v4 + 56) = sub_1D62066BC;
  *(v4 + 64) = v9;
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2 & 1;
  *(v4 + 72) = sub_1D620673C;
  *(v4 + 80) = v10;
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2 & 1;
  *(v4 + 88) = sub_1D6206C94;
  *(v4 + 96) = v11;

  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2 & 1;
  *(v4 + 104) = sub_1D5C00104;
  *(v4 + 112) = v12;

  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2 & 1;
  *(v4 + 120) = sub_1D6206C8C;
  *(v4 + 128) = v13;

  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2 & 1;
  *(v4 + 136) = sub_1D6206C94;
  *(v4 + 144) = v14;
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2 & 1;
  *(v4 + 152) = sub_1D62067A8;
  *(v4 + 160) = v15;
  swift_retain_n();
  return v4;
}

uint64_t sub_1D62031B0(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v5 = v4;
  *(v5 + 16) = sub_1D725F7AC();
  *(v5 + 24) = v9;
  *(v5 + 32) = 0;
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = a3;
  *(v5 + 40) = sub_1D6206494;
  *(v5 + 48) = v10;
  v11 = swift_allocObject();
  v11[2] = a1;
  v11[3] = a2;
  v11[4] = a3;
  *(v5 + 56) = sub_1D620650C;
  *(v5 + 64) = v11;
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = a3;
  *(v5 + 72) = sub_1D6206588;
  *(v5 + 80) = v12;
  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = a3;
  *(v5 + 88) = sub_1D6206C94;
  *(v5 + 96) = v13;
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = a3;
  *(v5 + 104) = sub_1D5C00104;
  *(v5 + 112) = v14;
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = a2;
  v15[4] = a3;
  *(v5 + 120) = sub_1D6206C8C;
  *(v5 + 128) = v15;
  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = a2;
  v16[4] = a3;
  *(v5 + 136) = sub_1D6206C94;
  *(v5 + 144) = v16;
  v17 = swift_allocObject();
  v17[2] = a1;
  v17[3] = a2;
  v17[4] = a3;
  *(v5 + 152) = sub_1D6206634;
  *(v5 + 160) = v17;
  swift_retain_n();
  swift_bridgeObjectRetain_n();
  return v5;
}

uint64_t sub_1D620338C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  v6 = v5;
  *(v6 + 16) = sub_1D725F7AC();
  *(v6 + 24) = v11;
  *(v6 + 32) = 0;
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = a3;
  v12[5] = a4;
  *(v6 + 40) = sub_1D620626C;
  *(v6 + 48) = v12;
  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = a3;
  v13[5] = a4;
  *(v6 + 56) = sub_1D6206278;
  *(v6 + 64) = v13;
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = a3;
  v14[5] = a4;
  *(v6 + 72) = sub_1D6206298;
  *(v6 + 80) = v14;
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = a2;
  v15[4] = a3;
  v15[5] = a4;
  *(v6 + 88) = sub_1D6206C94;
  *(v6 + 96) = v15;

  sub_1D620630C(a2, a3, a4);
  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = a2;
  v16[4] = a3;
  v16[5] = a4;
  *(v6 + 104) = sub_1D5C00104;
  *(v6 + 112) = v16;

  sub_1D620630C(a2, a3, a4);
  v17 = swift_allocObject();
  v17[2] = a1;
  v17[3] = a2;
  v17[4] = a3;
  v17[5] = a4;
  *(v6 + 120) = sub_1D6206354;
  *(v6 + 128) = v17;

  sub_1D620630C(a2, a3, a4);
  v18 = swift_allocObject();
  v18[2] = a1;
  v18[3] = a2;
  v18[4] = a3;
  v18[5] = a4;
  *(v6 + 136) = sub_1D6206358;
  *(v6 + 144) = v18;
  v19 = swift_allocObject();
  v19[2] = a1;
  v19[3] = a2;
  v19[4] = a3;
  v19[5] = a4;
  *(v6 + 152) = sub_1D62063B8;
  *(v6 + 160) = v19;

  sub_1D620630C(a2, a3, a4);

  sub_1D620630C(a2, a3, a4);

  sub_1D620630C(a2, a3, a4);

  sub_1D620630C(a2, a3, a4);
  return v6;
}

uint64_t sub_1D6203604(uint64_t a1, uint64_t a2, __n128 a3)
{
  v4 = v3;
  *(v4 + 16) = sub_1D725F7AC();
  *(v4 + 24) = v7;
  *(v4 + 32) = 0;
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v4 + 40) = sub_1D62063C4;
  *(v4 + 48) = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  *(v4 + 56) = sub_1D62063FC;
  *(v4 + 64) = v9;
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v4 + 72) = sub_1D6206430;
  *(v4 + 80) = v10;
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  *(v4 + 88) = sub_1D6206C94;
  *(v4 + 96) = v11;
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  *(v4 + 104) = sub_1D5C00104;
  *(v4 + 112) = v12;
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  *(v4 + 120) = sub_1D6206C8C;
  *(v4 + 128) = v13;
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  *(v4 + 136) = sub_1D6206C94;
  *(v4 + 144) = v14;
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  *(v4 + 152) = sub_1D6206448;
  *(v4 + 160) = v15;
  swift_retain_n();
  swift_unknownObjectRetain_n();
  return v4;
}

uint64_t sub_1D62037BC(uint64_t a1, __int128 *a2, __n128 a3)
{
  v4 = v3;
  *(v4 + 16) = sub_1D725F7AC();
  *(v4 + 24) = v7;
  *(v4 + 32) = 0;
  v8 = swift_allocObject();
  v9 = *a2;
  *(v8 + 40) = a2[1];
  v10 = a2[3];
  *(v8 + 56) = a2[2];
  *(v8 + 72) = v10;
  *(v8 + 16) = a1;
  *(v8 + 87) = *(a2 + 63);
  *(v8 + 24) = v9;
  *(v4 + 40) = sub_1D620600C;
  *(v4 + 48) = v8;
  v11 = swift_allocObject();
  v12 = *a2;
  *(v11 + 40) = a2[1];
  v13 = a2[3];
  *(v11 + 56) = a2[2];
  *(v11 + 72) = v13;
  *(v11 + 16) = a1;
  *(v11 + 87) = *(a2 + 63);
  *(v11 + 24) = v12;
  *(v4 + 56) = sub_1D620609C;
  *(v4 + 64) = v11;
  v14 = swift_allocObject();
  v15 = *a2;
  *(v14 + 40) = a2[1];
  v16 = a2[3];
  *(v14 + 56) = a2[2];
  *(v14 + 72) = v16;
  *(v14 + 16) = a1;
  *(v14 + 87) = *(a2 + 63);
  *(v14 + 24) = v15;
  *(v4 + 72) = sub_1D6206130;
  *(v4 + 80) = v14;
  v17 = swift_allocObject();
  v18 = *a2;
  *(v17 + 40) = a2[1];
  v19 = a2[3];
  *(v17 + 56) = a2[2];
  *(v17 + 72) = v19;
  *(v17 + 16) = a1;
  *(v17 + 87) = *(a2 + 63);
  *(v17 + 24) = v18;
  *(v4 + 88) = sub_1D6206C94;
  *(v4 + 96) = v17;

  sub_1D62058F4(a2, v33, &qword_1EDF0FCC0, &type metadata for CommandShareContent, sub_1D5B49CBC);
  v20 = swift_allocObject();
  v21 = *a2;
  *(v20 + 40) = a2[1];
  v22 = a2[3];
  *(v20 + 56) = a2[2];
  *(v20 + 72) = v22;
  *(v20 + 16) = a1;
  *(v20 + 87) = *(a2 + 63);
  *(v20 + 24) = v21;
  *(v4 + 104) = sub_1D5C00104;
  *(v4 + 112) = v20;

  sub_1D62058F4(a2, v33, &qword_1EDF0FCC0, &type metadata for CommandShareContent, sub_1D5B49CBC);
  v23 = swift_allocObject();
  v24 = *a2;
  *(v23 + 40) = a2[1];
  v25 = a2[3];
  *(v23 + 56) = a2[2];
  *(v23 + 72) = v25;
  *(v23 + 16) = a1;
  *(v23 + 87) = *(a2 + 63);
  *(v23 + 24) = v24;
  *(v4 + 120) = sub_1D6206C8C;
  *(v4 + 128) = v23;

  sub_1D62058F4(a2, v33, &qword_1EDF0FCC0, &type metadata for CommandShareContent, sub_1D5B49CBC);
  v26 = swift_allocObject();
  v27 = *a2;
  *(v26 + 40) = a2[1];
  v28 = a2[3];
  *(v26 + 56) = a2[2];
  *(v26 + 72) = v28;
  *(v26 + 16) = a1;
  *(v26 + 87) = *(a2 + 63);
  *(v26 + 24) = v27;
  *(v4 + 136) = sub_1D6206C94;
  *(v4 + 144) = v26;
  v29 = swift_allocObject();
  v30 = *a2;
  *(v29 + 40) = a2[1];
  v31 = a2[3];
  *(v29 + 56) = a2[2];
  *(v29 + 72) = v31;
  *(v29 + 16) = a1;
  *(v29 + 87) = *(a2 + 63);
  *(v29 + 24) = v30;
  *(v4 + 152) = sub_1D6206224;
  *(v4 + 160) = v29;

  sub_1D62058F4(a2, v33, &qword_1EDF0FCC0, &type metadata for CommandShareContent, sub_1D5B49CBC);

  sub_1D62058F4(a2, v33, &qword_1EDF0FCC0, &type metadata for CommandShareContent, sub_1D5B49CBC);

  sub_1D62058F4(a2, v33, &qword_1EDF0FCC0, &type metadata for CommandShareContent, sub_1D5B49CBC);

  sub_1D62058F4(a2, v33, &qword_1EDF0FCC0, &type metadata for CommandShareContent, sub_1D5B49CBC);
  return v4;
}

uint64_t sub_1D6203B70(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  v6 = v5;
  v7 = a4;
  *(v6 + 16) = sub_1D725F7AC();
  *(v6 + 24) = v11;
  *(v6 + 32) = 0;
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  *(v12 + 32) = a3;
  *(v12 + 40) = v7;
  *(v6 + 40) = sub_1D6205D4C;
  *(v6 + 48) = v12;
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  *(v13 + 32) = a3;
  *(v13 + 40) = v7;
  *(v6 + 56) = sub_1D6205D58;
  *(v6 + 64) = v13;
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  *(v14 + 32) = a3;
  *(v14 + 40) = v7;
  *(v6 + 72) = sub_1D6205D78;
  *(v6 + 80) = v14;
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  *(v15 + 32) = a3;
  *(v15 + 40) = v7;
  *(v6 + 88) = sub_1D6206C94;
  *(v6 + 96) = v15;

  sub_1D6205DEC(a2, a3, v7);
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  *(v16 + 32) = a3;
  *(v16 + 40) = v7;
  *(v6 + 104) = sub_1D5C00104;
  *(v6 + 112) = v16;

  sub_1D6205DEC(a2, a3, v7);
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  *(v17 + 32) = a3;
  *(v17 + 40) = v7;
  *(v6 + 120) = sub_1D6206C8C;
  *(v6 + 128) = v17;

  sub_1D6205DEC(a2, a3, v7);
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  *(v18 + 32) = a3;
  *(v18 + 40) = v7;
  *(v6 + 136) = sub_1D6206C94;
  *(v6 + 144) = v18;
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;
  *(v19 + 32) = a3;
  *(v19 + 40) = v7;
  *(v6 + 152) = sub_1D6205E84;
  *(v6 + 160) = v19;

  sub_1D6205DEC(a2, a3, v7);

  sub_1D6205DEC(a2, a3, v7);

  sub_1D6205DEC(a2, a3, v7);

  sub_1D6205DEC(a2, a3, v7);
  return v6;
}

uint64_t sub_1D6203E08(uint64_t a1, uint64_t a2, __n128 a3)
{
  v4 = v3;
  *(v4 + 16) = sub_1D725F7AC();
  *(v4 + 24) = v7;
  *(v4 + 32) = 0;
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v4 + 40) = sub_1D6206B04;
  *(v4 + 48) = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  *(v4 + 56) = sub_1D6206B3C;
  *(v4 + 64) = v9;
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v4 + 72) = sub_1D6206430;
  *(v4 + 80) = v10;
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  *(v4 + 88) = sub_1D6206C94;
  *(v4 + 96) = v11;
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  *(v4 + 104) = sub_1D5C00104;
  *(v4 + 112) = v12;
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  *(v4 + 120) = sub_1D6206C8C;
  *(v4 + 128) = v13;
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  *(v4 + 136) = sub_1D6206C94;
  *(v4 + 144) = v14;
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  *(v4 + 152) = sub_1D6206C84;
  *(v4 + 160) = v15;
  swift_retain_n();
  swift_retain_n();
  return v4;
}

uint64_t sub_1D6203FC0(uint64_t a1, uint64_t a2, __n128 a3)
{
  v4 = v3;
  *(v4 + 16) = sub_1D725F7AC();
  *(v4 + 24) = v7;
  *(v4 + 32) = 0;
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v4 + 40) = sub_1D62069E4;
  *(v4 + 48) = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  *(v4 + 56) = sub_1D6206A38;
  *(v4 + 64) = v9;
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v4 + 72) = sub_1D6206430;
  *(v4 + 80) = v10;
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  *(v4 + 88) = sub_1D6206C94;
  *(v4 + 96) = v11;
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  *(v4 + 104) = sub_1D5C00104;
  *(v4 + 112) = v12;
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  *(v4 + 120) = sub_1D6206C8C;
  *(v4 + 128) = v13;
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  *(v4 + 136) = sub_1D6206C94;
  *(v4 + 144) = v14;
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  *(v4 + 152) = sub_1D6206A88;
  *(v4 + 160) = v15;
  swift_retain_n();
  swift_bridgeObjectRetain_n();
  return v4;
}

uint64_t sub_1D6204178(uint64_t a1, void *a2, __n128 a3)
{
  v4 = v3;
  *(v4 + 16) = sub_1D725F7AC();
  *(v4 + 24) = v7;
  *(v4 + 32) = 0;
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v4 + 40) = sub_1D62068E0;
  *(v4 + 48) = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  *(v4 + 56) = sub_1D6206928;
  *(v4 + 64) = v9;
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v4 + 72) = sub_1D6206430;
  *(v4 + 80) = v10;
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  *(v4 + 88) = sub_1D6206C94;
  *(v4 + 96) = v11;
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  *(v4 + 104) = sub_1D5C00104;
  *(v4 + 112) = v12;
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  *(v4 + 120) = sub_1D6206C8C;
  *(v4 + 128) = v13;
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  *(v4 + 136) = sub_1D6206C94;
  *(v4 + 144) = v14;
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  *(v4 + 152) = sub_1D620696C;
  *(v4 + 160) = v15;
  swift_retain_n();
  v16 = a2;
  return v4;
}

uint64_t sub_1D6204340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getObjectType();
  sub_1D72585BC();
  return sub_1D725D92C() & 1;
}

uint64_t sub_1D62043B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getObjectType();
  sub_1D72585BC();
  return sub_1D725D97C();
}

uint64_t sub_1D6204434(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x1E6968FB0];
  sub_1D5B54630(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v11 - v6;
  v11 = 0;
  v12 = 0xE000000000000000;
  sub_1D7263D4C();

  v11 = 0x28646E616D6D6F43;
  v12 = 0xE800000000000000;
  v8 = sub_1D725F7AC();
  MEMORY[0x1DA6F9910](v8);

  MEMORY[0x1DA6F9910](0x7865746E6F63202CLL, 0xEA00000000003D74);
  sub_1D62058F4(a2, v7, &qword_1EDF45B40, v3, sub_1D5B54630);
  v9 = sub_1D72620FC();
  MEMORY[0x1DA6F9910](v9);

  MEMORY[0x1DA6F9910](41, 0xE100000000000000);
  return v11;
}

uint64_t sub_1D62045A4(uint64_t a1, char a2)
{
  sub_1D7263D4C();

  v2 = sub_1D725F7AC();
  MEMORY[0x1DA6F9910](v2);

  MEMORY[0x1DA6F9910](0x7865746E6F63202CLL, 0xEA00000000003D74);
  sub_1D5B49CBC(0, &unk_1EC88D670, MEMORY[0x1E69E7CA8] + 8);
  v3 = sub_1D72620FC();
  MEMORY[0x1DA6F9910](v3);

  MEMORY[0x1DA6F9910](41, 0xE100000000000000);
  return 0x28646E616D6D6F43;
}

uint64_t sub_1D62046A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D7263D4C();

  v3 = sub_1D725F7AC();
  MEMORY[0x1DA6F9910](v3);

  MEMORY[0x1DA6F9910](0x7865746E6F63202CLL, 0xEA00000000003D74);
  sub_1D5B49CBC(0, &qword_1EDF43BE0, MEMORY[0x1E69E6158]);

  v4 = sub_1D72620FC();
  MEMORY[0x1DA6F9910](v4);

  MEMORY[0x1DA6F9910](41, 0xE100000000000000);
  return 0x28646E616D6D6F43;
}

uint64_t sub_1D62047A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D7263D4C();

  v7 = sub_1D725F7AC();
  MEMORY[0x1DA6F9910](v7);

  MEMORY[0x1DA6F9910](0x7865746E6F63202CLL, 0xEA00000000003D74);
  sub_1D620630C(a2, a3, a4);
  sub_1D5B49CBC(0, &qword_1EDF0BE48, &type metadata for OpenChannelCommandContext);
  v8 = sub_1D72620FC();
  MEMORY[0x1DA6F9910](v8);

  MEMORY[0x1DA6F9910](41, 0xE100000000000000);
  return 0x28646E616D6D6F43;
}

uint64_t sub_1D62048BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  sub_1D7263D4C();

  v8 = sub_1D725F7AC();
  MEMORY[0x1DA6F9910](v8);

  MEMORY[0x1DA6F9910](0x7865746E6F63202CLL, 0xEA00000000003D74);
  a5(0, a3, a4);
  swift_unknownObjectRetain();
  v9 = sub_1D72620FC();
  MEMORY[0x1DA6F9910](v9);

  MEMORY[0x1DA6F9910](41, 0xE100000000000000);
  return 0x28646E616D6D6F43;
}

uint64_t sub_1D62049CC(uint64_t a1, __int128 *a2)
{
  *&v9 = 0;
  *(&v9 + 1) = 0xE000000000000000;
  sub_1D7263D4C();

  v13 = 0x28646E616D6D6F43;
  v14 = 0xE800000000000000;
  v3 = sub_1D725F7AC();
  MEMORY[0x1DA6F9910](v3);

  MEMORY[0x1DA6F9910](0x7865746E6F63202CLL, 0xEA00000000003D74);
  v4 = a2[3];
  v11 = a2[2];
  v12[0] = v4;
  *(v12 + 15) = *(a2 + 63);
  v5 = a2[1];
  v9 = *a2;
  v10 = v5;
  sub_1D62058F4(a2, v8, &qword_1EDF0FCC0, &type metadata for CommandShareContent, sub_1D5B49CBC);
  sub_1D5B49CBC(0, &qword_1EDF0FCC0, &type metadata for CommandShareContent);
  v6 = sub_1D72620FC();
  MEMORY[0x1DA6F9910](v6);

  MEMORY[0x1DA6F9910](41, 0xE100000000000000);
  return v13;
}

uint64_t sub_1D6204AFC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  sub_1D7263D4C();

  v7 = sub_1D725F7AC();
  MEMORY[0x1DA6F9910](v7);

  MEMORY[0x1DA6F9910](0x7865746E6F63202CLL, 0xEA00000000003D74);
  sub_1D6205DEC(a2, a3, v4);
  sub_1D5B49CBC(0, qword_1EDF0FF38, &type metadata for OpenCommandContext);
  v8 = sub_1D72620FC();
  MEMORY[0x1DA6F9910](v8);

  MEMORY[0x1DA6F9910](41, 0xE100000000000000);
  return 0x28646E616D6D6F43;
}

uint64_t sub_1D6204C14(uint64_t a1, uint64_t a2)
{
  sub_1D7263D4C();

  v2 = sub_1D725F7AC();
  MEMORY[0x1DA6F9910](v2);

  MEMORY[0x1DA6F9910](0x7865746E6F63202CLL, 0xEA00000000003D74);
  sub_1D5B54630(0, &qword_1EC8853F8, type metadata accessor for Commands.RemoveIssues.Prompt);

  v3 = sub_1D72620FC();
  MEMORY[0x1DA6F9910](v3);

  MEMORY[0x1DA6F9910](41, 0xE100000000000000);
  return 0x28646E616D6D6F43;
}

uint64_t sub_1D6204D20(uint64_t a1, uint64_t a2)
{
  sub_1D7263D4C();

  v2 = sub_1D725F7AC();
  MEMORY[0x1DA6F9910](v2);

  MEMORY[0x1DA6F9910](0x7865746E6F63202CLL, 0xEA00000000003D74);
  sub_1D6206A90(0);

  v3 = sub_1D72620FC();
  MEMORY[0x1DA6F9910](v3);

  MEMORY[0x1DA6F9910](41, 0xE100000000000000);
  return 0x28646E616D6D6F43;
}

uint64_t sub_1D6204E10(uint64_t a1, void *a2)
{
  sub_1D7263D4C();

  v3 = sub_1D725F7AC();
  MEMORY[0x1DA6F9910](v3);

  MEMORY[0x1DA6F9910](0x7865746E6F63202CLL, 0xEA00000000003D74);
  sub_1D6206974(0, &qword_1EDF3C6B8, MEMORY[0x1E69E6720]);
  v4 = a2;
  v5 = sub_1D72620FC();
  MEMORY[0x1DA6F9910](v5);

  MEMORY[0x1DA6F9910](41, 0xE100000000000000);
  return 0x28646E616D6D6F43;
}

uint64_t sub_1D6205110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t (*a6)(void))
{
  swift_getObjectType();
  a6(0);
  return sub_1D725D92C() & 1;
}

uint64_t sub_1D6205198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t (*a6)(void))
{
  swift_getObjectType();
  a6(0);
  return sub_1D725D97C();
}

uint64_t sub_1D6205224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(void, uint64_t, uint64_t))
{
  swift_getObjectType();
  a8(0, a6, a7);
  return sub_1D725D92C() & 1;
}

uint64_t sub_1D62052C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(void, uint64_t, uint64_t))
{
  swift_getObjectType();
  a8(0, a6, a7);
  return sub_1D725D97C();
}

uint64_t _s8NewsFeed18FormatGroupBindingV7CommandO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = *a2;
  v6 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v10 = (v5 >> 3) & 7;
  if (v10 > 1)
  {
    if (v10 != 2)
    {
      if (v10 == 3)
      {
        if ((v9 & 0x38) == 0x18)
        {
          goto LABEL_10;
        }

        goto LABEL_8;
      }

      if ((v9 & 0x38) == 0x20)
      {
        v18 = *a1;
        v19 = v2;
        v20 = v4;
        v21 = v5 & 0xC7;
        v14 = v7;
        v15 = v6;
        v16 = v8;
        v17 = v9 & 0xC7;
        sub_1D5E1DDA8(v7, v6, v8, v9, sub_1D5E1DA1C, sub_1D5E1DA1C);
        sub_1D5E1DDA8(v3, v2, v4, v5, sub_1D5E1DA1C, sub_1D5E1DA1C);
        sub_1D5E1DDA8(v3, v2, v4, v5, sub_1D5E1DA1C, sub_1D5E1DA1C);
        sub_1D5E1DDA8(v7, v6, v8, v9, sub_1D5E1DA1C, sub_1D5E1DA1C);
        v11 = _s8NewsFeed24FormatSportsEventBindingV7CommandO2eeoiySbAE_AEtFZ_0(&v18, &v14);
        goto LABEL_13;
      }

      sub_1D5E1DE60(*a1, v2, v4, v5 & 0xC7, sub_1D5E1DA1C);
LABEL_17:
      sub_1D5E1DDA8(v7, v6, v8, v9, sub_1D5E1DA1C, sub_1D5E1DA1C);
      sub_1D5E1DDA8(v3, v2, v4, v5, sub_1D5E1DE10, sub_1D5E1DE10);
      sub_1D5E1DDA8(v7, v6, v8, v9, sub_1D5E1DE10, sub_1D5E1DE10);
      v12 = 0;
      return v12 & 1;
    }

    if ((v9 & 0x38) == 0x10)
    {
      goto LABEL_10;
    }

LABEL_8:
    sub_1D5E1DA1C(*a1, v2, v4);
    goto LABEL_17;
  }

  if (v10)
  {
    if ((v9 & 0x38) == 8)
    {
      sub_1D5E1DDA8(*a1, v2, v4, v5, sub_1D5E1DE10, sub_1D5E1DE10);
      sub_1D5E1DDA8(v7, v6, v8, v9, sub_1D5E1DE10, sub_1D5E1DE10);
      v12 = 1;
      return v12 & 1;
    }

    goto LABEL_17;
  }

  if ((v9 & 0x38) != 0)
  {
    goto LABEL_8;
  }

LABEL_10:
  v18 = *a1;
  v19 = v2;
  LOBYTE(v20) = v4;
  v14 = v7;
  v15 = v6;
  LOBYTE(v16) = v8;
  sub_1D5E1DDA8(v7, v6, v8, v9, sub_1D5E1DA1C, sub_1D5E1DA1C);
  sub_1D5E1DDA8(v3, v2, v4, v5, sub_1D5E1DA1C, sub_1D5E1DA1C);
  sub_1D5E1DDA8(v3, v2, v4, v5, sub_1D5E1DA1C, sub_1D5E1DA1C);
  sub_1D5E1DDA8(v7, v6, v8, v9, sub_1D5E1DA1C, sub_1D5E1DA1C);
  v11 = _s8NewsFeed16FormatTagBindingV7CommandO2eeoiySbAE_AEtFZ_0(&v18, &v14);
LABEL_13:
  v12 = v11;
  sub_1D5E1DDA8(v3, v2, v4, v5, sub_1D5E1DE10, sub_1D5E1DE10);
  sub_1D5E1DDA8(v7, v6, v8, v9, sub_1D5E1DE10, sub_1D5E1DE10);
  sub_1D5E1DDA8(v7, v6, v8, v9, sub_1D5E1DE10, sub_1D5E1DE10);
  sub_1D5E1DDA8(v3, v2, v4, v5, sub_1D5E1DE10, sub_1D5E1DE10);
  return v12 & 1;
}

unint64_t sub_1D620570C(uint64_t a1)
{
  result = sub_1D6205734();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6205734()
{
  result = qword_1EC8853D0;
  if (!qword_1EC8853D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8853D0);
  }

  return result;
}

unint64_t sub_1D6205788(void *a1)
{
  a1[1] = sub_1D5C6D9D4();
  a1[2] = sub_1D62057C0();
  result = sub_1D6205814();
  a1[3] = result;
  return result;
}

unint64_t sub_1D62057C0()
{
  result = qword_1EDF104C0;
  if (!qword_1EDF104C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF104C0);
  }

  return result;
}

unint64_t sub_1D6205814()
{
  result = qword_1EC8853D8;
  if (!qword_1EC8853D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8853D8);
  }

  return result;
}

uint64_t sub_1D62058F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  v7 = a5(0, a3, a4);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_1D6205964(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D5B54630(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  v8 = *(v3 + 16);
  v9 = v3 + ((*(*(v7 - 8) + 80) + 24) & ~*(*(v7 - 8) + 80));

  return sub_1D6204340(a1, a2, a3, v8, v9);
}

double sub_1D6205AB0@<D0>(void (*a1)(uint64_t (*)(), void *)@<X2>, uint64_t a2@<X8>)
{
  sub_1D5B54630(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  v6 = v2 + ((*(*(v5 - 8) + 80) + 24) & ~*(*(v5 - 8) + 80));
  v8[2] = *(v2 + 16);
  v8[3] = v6;
  a1(sub_1D5C00104, v8);
  *(a2 + 32) = 0;
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

uint64_t sub_1D6205BB4@<X0>(uint64_t a1@<X8>)
{
  sub_1D5B54630(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  v2 = sub_1D725D38C();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

double sub_1D6205C44@<D0>(uint64_t a1@<X8>)
{
  sub_1D5B54630(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  return result;
}

uint64_t sub_1D6205C94()
{
  sub_1D5B54630(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  v2 = *(v1 - 8);
  v3 = *(v0 + 16);
  v4 = v0 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return sub_1D6204434(v3, v4);
}

void sub_1D6205D14(void *a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
    if (a3)
    {
      if (a3 != 1)
      {
        return;
      }

      goto LABEL_4;
    }

    goto LABEL_8;
  }

  if (a3 == 2)
  {
LABEL_8:

    return;
  }

  if (a3 == 3)
  {
LABEL_4:
    swift_unknownObjectRelease();
  }
}

double sub_1D6205D78@<D0>(void (*a1)(uint64_t (*)(), void *)@<X2>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 40);
  v8 = *(v2 + 24);
  v9 = v5;
  v7[2] = v4;
  v7[3] = &v8;
  a1(sub_1D5C00104, v7);
  *(a2 + 32) = 0;
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

id sub_1D6205DEC(id a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_1D6205E00(a1, a2, a3);
  }

  return a1;
}

id sub_1D6205E00(id result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
    if (a3)
    {
      if (a3 != 1)
      {
        return result;
      }

      return swift_unknownObjectRetain();
    }

    return result;
  }

  if (a3 == 2)
  {
    return result;
  }

  if (a3 == 3)
  {
    return swift_unknownObjectRetain();
  }

  return result;
}

uint64_t objectdestroy_25Tm()
{

  v1 = *(v0 + 40);
  if (v1 != 255)
  {
    sub_1D6205D14(*(v0 + 24), *(v0 + 32), v1);
  }

  return swift_deallocObject();
}

void sub_1D6205E94(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9)
{
  v9 = (a9 >> 21) & 7;
  if (v9 > 3)
  {
    if (((a9 >> 21) & 7) > 5)
    {
      if (v9 != 6)
      {
        return;
      }
    }

    else if (v9 != 4)
    {
LABEL_11:

      swift_unknownObjectRelease();
      return;
    }
  }

  else
  {
    if (((a9 >> 21) & 7) <= 1)
    {
      if (v9)
      {
        swift_unknownObjectRelease();

        sub_1D6205FF8(a2, a3, a4, a5, a6);
      }

      else
      {
        swift_unknownObjectRelease();
      }

      return;
    }

    if (v9 == 2)
    {
      goto LABEL_11;
    }
  }
}

double sub_1D6205FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5 != 1)
  {
  }

  return result;
}

double sub_1D6206130@<D0>(void (*a1)(uint64_t (*)(), void *)@<X2>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 40);
  v6 = *(v2 + 72);
  v9[2] = *(v2 + 56);
  v10[0] = v6;
  *(v10 + 15) = *(v2 + 87);
  v9[0] = *(v2 + 24);
  v9[1] = v5;
  v8[2] = v4;
  v8[3] = v9;
  a1(sub_1D5C00104, v8);
  *(a2 + 32) = 0;
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

uint64_t objectdestroy_49Tm()
{

  if ((*(v0 + 90) >> 3) <= 0x1Eu)
  {
    sub_1D6205E94(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88) | (*(v0 + 90) << 16));
  }

  return swift_deallocObject();
}

uint64_t sub_1D6206224()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  v3 = *(v0 + 72);
  v5[2] = *(v0 + 56);
  v6[0] = v3;
  *(v6 + 15) = *(v0 + 87);
  v5[0] = *(v0 + 24);
  v5[1] = v2;
  return sub_1D62049CC(v1, v5);
}

double sub_1D6206298@<D0>(void (*a1)(uint64_t (*)(), void *)@<X2>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 40);
  v8 = *(v2 + 24);
  v9 = v5;
  v7[2] = v4;
  v7[3] = &v8;
  a1(sub_1D5C00104, v7);
  *(a2 + 32) = 0;
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

uint64_t sub_1D620630C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result != 1)
  {
    swift_unknownObjectRetain();

    return swift_unknownObjectRetain();
  }

  return result;
}

double sub_1D6206358@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t objectdestroy_73Tm()
{

  if (*(v0 + 24) != 1)
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  return swift_deallocObject();
}

double sub_1D6206588@<D0>(void (*a1)(uint64_t (*)(), void *)@<X2>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v7 = *(v2 + 24);
  v6[2] = v4;
  v6[3] = &v7;
  a1(sub_1D5C00104, v6);
  *(a2 + 32) = 0;
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

uint64_t objectdestroy_121Tm()
{

  return swift_deallocObject();
}

double sub_1D620673C@<D0>(void (*a1)(uint64_t (*)(), void *)@<X2>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v7 = *(v2 + 24);
  v6[2] = v4;
  v6[3] = &v7;
  a1(sub_1D5C00104, v6);
  *(a2 + 32) = 0;
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

void sub_1D6206974(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D5B5A498(255, &qword_1EDF3C6C0, 0x1E69B5348);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1D6206A90(uint64_t a1)
{
  if (!qword_1EC8853E8)
  {
    sub_1D6206974(255, &qword_1EDF1AE40, MEMORY[0x1E69E62F8]);
    v1 = sub_1D726393C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC8853E8);
    }
  }
}

double sub_1D6206B70@<D0>(void (*a1)(uint64_t, void *)@<X2>, uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  v5 = *(v3 + 16);
  v8 = *(v3 + 24);
  v7[2] = v5;
  v7[3] = &v8;
  a1(a2, v7);
  *(a3 + 32) = 0;
  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

uint64_t sub_1D6206BC8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1D725D38C();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t objectdestroy_97Tm(void (*a1)(void, __n128))
{

  (a1)(*(v1 + 24));

  return swift_deallocObject();
}

uint64_t sub_1D6206CAC(void *a1)
{
  v3 = [objc_msgSend(*(v1 + 16) appConfiguration)];
  swift_unknownObjectRelease();
  v4 = [v3 difficultyDescriptions];
  sub_1D5BAFAD8();
  sub_1D5F750EC();
  v5 = sub_1D7261D3C();

  v6 = [a1 difficulty];
  v7 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLongLong_];
  v8 = v7;
  if (*(v5 + 16) && (v9 = sub_1D6D62E90(v7), (v10 & 1) != 0))
  {
    v11 = *(*(v5 + 56) + 16 * v9);

    return v11;
  }

  else
  {

    return 0;
  }
}

double FormatBindingDateTimeExpressionLogicCompare.dateTime.getter@<D0>(unint64_t *a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = v2;
  return sub_1D5F33D5C(v2);
}

uint64_t _s8NewsFeed43FormatBindingDateTimeExpressionLogicCompareV2eeoiySbAC_ACtFZ_0(uint64_t a1, char *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  v4 = *(a2 + 1);
  LOBYTE(v14) = *a1;
  LOBYTE(v13) = v3;
  v5 = FormatOperator.rawValue.getter();
  v7 = v6;
  if (v5 == FormatOperator.rawValue.getter() && v7 == v8)
  {
  }

  else
  {
    v10 = sub_1D72646CC();

    v11 = 0;
    if ((v10 & 1) == 0)
    {
      return v11 & 1;
    }
  }

  v13 = v4;
  v14 = v2;
  sub_1D5F33D5C(v2);
  sub_1D5F33D5C(v4);
  v11 = static FormatDateTime.== infix(_:_:)(&v14, &v13);
  sub_1D5F33D8C(v13);
  sub_1D5F33D8C(v14);
  return v11 & 1;
}

uint64_t _s8NewsFeed36FormatBindingDateTimeExpressionLogicO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v6 = *a2;
  v5 = a2[1];
  v7 = *a1;
  if (v7 == 12)
  {
    if (v6 != 12)
    {
      goto LABEL_8;
    }
  }

  else
  {
    if (v7 != 13)
    {
      if ((v6 & 0xFE) != 0xC)
      {
        v15[0] = *a1;
        v16 = v3;
        v13[0] = v6;
        v14 = v5;
        v10 = v4;
        v11 = v3;
        sub_1D620757C(v6, v5);
        sub_1D620757C(v4, v11);
        sub_1D620757C(v4, v11);
        sub_1D620757C(v6, v5);
        v8 = _s8NewsFeed43FormatBindingDateTimeExpressionLogicCompareV2eeoiySbAC_ACtFZ_0(v15, v13);
        sub_1D6207594(v10, v11);
        sub_1D6207594(v6, v5);
        sub_1D6207594(v6, v5);
        sub_1D6207594(v10, v11);
        return v8 & 1;
      }

      goto LABEL_8;
    }

    if (v6 != 13)
    {
LABEL_8:
      v9 = a1[1];
      sub_1D620757C(*a1, v3);
      sub_1D620757C(v6, v5);
      sub_1D6207594(v4, v9);
      sub_1D6207594(v6, v5);
      v8 = 0;
      return v8 & 1;
    }
  }

  sub_1D6207594(*a1, v3);
  sub_1D6207594(v6, v5);
  v8 = 1;
  return v8 & 1;
}

unint64_t sub_1D62070F8(uint64_t a1)
{
  result = sub_1D6207120();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6207120()
{
  result = qword_1EC885400;
  if (!qword_1EC885400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885400);
  }

  return result;
}

unint64_t sub_1D62071B4()
{
  result = qword_1EC885408;
  if (!qword_1EC885408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885408);
  }

  return result;
}

unint64_t sub_1D6207208(uint64_t a1)
{
  result = sub_1D6207230();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6207230()
{
  result = qword_1EC885410;
  if (!qword_1EC885410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885410);
  }

  return result;
}

uint64_t sub_1D62072C4(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = (a4)(a1, a2, a3);
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6207318()
{
  result = qword_1EDF1C0E8;
  if (!qword_1EDF1C0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1C0E8);
  }

  return result;
}

unint64_t sub_1D620736C()
{
  result = qword_1EDF06158;
  if (!qword_1EDF06158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF06158);
  }

  return result;
}

unint64_t sub_1D62073C0()
{
  result = qword_1EC885418;
  if (!qword_1EC885418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885418);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed36FormatBindingDateTimeExpressionLogicO(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 0xC)
  {
    return v1 - 11;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D6207428(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF3 && a1[16])
  {
    return (*a1 + 243);
  }

  v3 = *a1;
  if (v3 >= 0xC)
  {
    v4 = v3 - 11;
  }

  else
  {
    v4 = 0;
  }

  if (v4 >= 3)
  {
    return v4 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D6207470(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 243;
    if (a3 >= 0xF3)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF3)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 13;
    }
  }

  return result;
}

void *sub_1D62074B4(void *result, unsigned int a2)
{
  if (a2 > 0xF4)
  {
    *result = a2 - 245;
    result[1] = 0;
  }

  else if (a2)
  {
    *result = a2 + 11;
  }

  return result;
}

uint64_t sub_1D62074E8(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF5 && a1[16])
  {
    return (*a1 + 245);
  }

  v3 = *a1;
  v4 = v3 >= 0xC;
  v5 = v3 - 12;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1D620752C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF4)
  {
    *result = a2 - 245;
    *(result + 8) = 0;
    if (a3 >= 0xF5)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF5)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 11;
    }
  }

  return result;
}

double sub_1D620757C(char a1, unint64_t a2)
{
  if ((a1 & 0xFE) != 0xCLL)
  {
    return sub_1D5F33D5C(a2);
  }

  return result;
}

double sub_1D6207594(char a1, unint64_t a2)
{
  if ((a1 & 0xFE) != 0xCLL)
  {
    return sub_1D5F33D8C(a2);
  }

  return result;
}

uint64_t sub_1D62075AC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  type metadata accessor for FeedCursorGroup(0, a1, a2, a3);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = sub_1D725AA4C();
  *a4 = result;
  a4[1] = v6;
  return result;
}

uint64_t sub_1D62076A8(uint64_t *a1)
{
  v1 = *a1;
  v12 = sub_1D6F73BA4();
  v10 = *(v1 + 80);
  v11 = *(v1 + 88);
  type metadata accessor for FeedCursorGroup(255, v10, v11, v2);
  v3 = sub_1D72627FC();
  WitnessTable = swift_getWitnessTable();
  v6 = sub_1D5B874E4(sub_1D62077B4, &v9, v3, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v5);

  v7 = sub_1D5B86020(v6);

  return v7;
}

uint64_t _s8NewsFeed24FormatAccessibilityValueO2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 > 0x14)
  {
    switch(v2)
    {
      case 0x15u:
        if (v3 != 21)
        {
          goto LABEL_23;
        }

        break;
      case 0x16u:
        if (v3 != 22)
        {
          goto LABEL_23;
        }

        break;
      case 0x17u:
        if (v3 != 23)
        {
          goto LABEL_23;
        }

        break;
      default:
        goto LABEL_16;
    }

LABEL_21:
    v8 = 1;
    return v8 & 1;
  }

  switch(v2)
  {
    case 0x12u:
      if (v3 != 18)
      {
        goto LABEL_23;
      }

      goto LABEL_21;
    case 0x13u:
      if (v3 != 19)
      {
        goto LABEL_23;
      }

      goto LABEL_21;
    case 0x14u:
      if (v3 == 20)
      {
        goto LABEL_21;
      }

LABEL_23:
      v8 = 0;
      return v8 & 1;
  }

LABEL_16:
  if ((v3 - 18) < 6)
  {
    goto LABEL_23;
  }

  v4 = FormatAccessibilityTrait.rawValue.getter();
  v6 = v5;
  if (v4 == FormatAccessibilityTrait.rawValue.getter() && v6 == v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();
  }

  return v8 & 1;
}

unint64_t sub_1D6207940(uint64_t a1)
{
  result = sub_1D6207968();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6207968()
{
  result = qword_1EC885420;
  if (!qword_1EC885420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885420);
  }

  return result;
}

unint64_t sub_1D62079BC(void *a1)
{
  a1[1] = sub_1D62079F4();
  a1[2] = sub_1D6207A48();
  result = sub_1D6207A9C();
  a1[3] = result;
  return result;
}

unint64_t sub_1D62079F4()
{
  result = qword_1EC885428;
  if (!qword_1EC885428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885428);
  }

  return result;
}

unint64_t sub_1D6207A48()
{
  result = qword_1EC885430;
  if (!qword_1EC885430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885430);
  }

  return result;
}

unint64_t sub_1D6207A9C()
{
  result = qword_1EC885438;
  if (!qword_1EC885438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885438);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FormatAccessibilityValue(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE9)
  {
    goto LABEL_20;
  }

  v2 = a2 + 23;
  if (a2 + 23 >= 0xFFFF00)
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

    return (*a1 | (v5 << 8)) - 23;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 23;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 0x12)
  {
    v8 = v7 - 17;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 7)
  {
    return v8 - 6;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for FormatAccessibilityValue(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 23;
  if (a3 + 23 >= 0xFFFF00)
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

  if (a3 < 0xE9)
  {
    v5 = 0;
  }

  if (a2 > 0xE8)
  {
    v6 = ((a2 - 233) >> 8) + 1;
    *result = a2 + 23;
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
    *result = a2 + 23;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1D6207C48(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 0x12)
  {
    return v1 - 17;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1D6207C5C(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 17;
  }

  return result;
}

char *sub_1D6207C7C(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_scale] = 0x3FF0000000000000;
  *&v1[OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_edge] = 0x3FF0000000000000;
  v5 = &v1[OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_contentBounds];
  *v5 = 0u;
  v5[1] = 0u;
  v6 = &v1[OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_canvasOffset];
  *v6 = 0;
  v6[1] = 0;
  v7 = &v1[OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_selectionFrame];
  *v7 = 0u;
  v7[1] = 0u;
  v8 = &v1[OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_metricSelectionFrame];
  *v8 = 0u;
  v8[1] = 0u;
  v9 = OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_markerLayer;
  *&v2[v9] = [objc_allocWithZone(MEMORY[0x1E69794A0]) init];
  v54 = MEMORY[0x1E69E7CC0];
  v10 = 21;
  result = sub_1D7263ECC();
  v12 = 0;
  v13 = 0;
  while (1)
  {
    if (v13)
    {
      goto LABEL_22;
    }

    [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
    sub_1D7263E9C();
    sub_1D7263EDC();
    sub_1D7263EEC();
    result = sub_1D7263EAC();
    v13 = v12 == 20;
    if (v12 != 20)
    {
      break;
    }

    v12 = 0;
LABEL_3:
    if (!--v10)
    {
      goto LABEL_9;
    }
  }

  if (!__OFADD__(v12++, 1))
  {
    goto LABEL_3;
  }

  __break(1u);
LABEL_9:
  *&v2[OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_markerLabels] = v54;
  v15 = OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_contentView;
  *&v2[v15] = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  v16 = OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_selectionView;
  *&v2[v16] = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  v17 = OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_metricSelectionView;
  *&v2[v17] = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  v2[OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_direction] = a1 & 1;
  v18 = objc_allocWithZone(type metadata accessor for DebugFormatRulerIndicatorView());
  *&v2[OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_indicatorView] = sub_1D675882C(a1 & 1);
  v53.receiver = v2;
  v53.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v53, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v19 setUserInteractionEnabled_];
  v20 = objc_opt_self();
  v21 = [v20 secondarySystemBackgroundColor];
  [v19 setBackgroundColor_];

  v22 = OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_contentView;
  [*&v19[OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_contentView] setClipsToBounds_];
  [v19 addSubview_];
  v23 = OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_selectionView;
  v24 = *&v19[OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_selectionView];
  v25 = [v20 systemBlueColor];
  v26 = [v25 colorWithAlphaComponent_];

  [v24 setBackgroundColor_];
  [*&v19[v22] addSubview_];
  v27 = OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_metricSelectionView;
  v28 = *&v19[OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_metricSelectionView];
  v51 = v20;
  v29 = [v20 systemYellowColor];
  v30 = [v29 colorWithAlphaComponent_];

  [v28 setBackgroundColor_];
  v52 = v22;
  [*&v19[v22] addSubview_];
  v31 = *&v19[OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_markerLabels];
  if (!(v31 >> 62))
  {
    v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v33 = &unk_1EC885000;
    if (v32)
    {
      goto LABEL_11;
    }

LABEL_18:
    v39 = OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_markerLayer;
    v40 = *&v19[OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_markerLayer];
    v41 = objc_opt_self();
    v42 = v40;
    v43 = [v41 mainScreen];
    [v43 scale];
    v45 = v44;

    [v42 setLineWidth_];
    v46 = *&v19[v39];
    v47 = [v51 separatorColor];
    v48 = [v47 CGColor];

    [v46 setStrokeColor_];
    v49 = [*&v19[v52] layer];
    [v49 addSublayer_];

    [v19 addSubview_];
    v50 = [objc_allocWithZone(MEMORY[0x1E69DCD28]) initWithTarget:v19 action:sel_didUpdatePan_];
    [v50 setMinimumNumberOfTouches_];
    [v50 setMaximumNumberOfTouches_];
    [v19 addGestureRecognizer_];

    return v19;
  }

  v32 = sub_1D7263BFC();
  v33 = &unk_1EC885000;
  if (!v32)
  {
    goto LABEL_18;
  }

LABEL_11:
  result = objc_opt_self();
  if (v32 >= 1)
  {
    v34 = result;

    v35 = 0;
    do
    {
      if ((v31 & 0xC000000000000001) != 0)
      {
        v36 = MEMORY[0x1DA6FB460](v35, v31);
      }

      else
      {
        v36 = *(v31 + 8 * v35 + 32);
      }

      v37 = v36;
      ++v35;
      v38 = [v34 systemFontOfSize_];
      [v37 setFont_];

      [v19 addSubview_];
    }

    while (v32 != v35);

    v33 = &unk_1EC885000;
    goto LABEL_18;
  }

  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

id sub_1D6208348()
{
  v82.receiver = v0;
  v82.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v82, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_contentView];
  [v0 bounds];
  [v1 setFrame_];
  v2 = objc_opt_self();
  [v2 begin];
  result = [v2 setDisableActions_];
  v4 = *&v0[OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_markerLabels];
  v80 = v2;
  if (v4 >> 62)
  {
    result = sub_1D7263BFC();
    v5 = result;
    if (!result)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
    return result;
  }

  v6 = 0;
  do
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1DA6FB460](v6, v4);
    }

    else
    {
      v7 = *(v4 + 8 * v6 + 32);
    }

    v8 = v7;
    ++v6;
    [v7 setText_];
    v9 = v8;
    v81[1] = 0;
    v81[2] = 0;
    v81[0] = 0x3FF0000000000000;
    v81[3] = 0x3FF0000000000000;
    v81[4] = 0;
    v81[5] = 0;
    [v9 setTransform_];
    [v9 setFrame_];
  }

  while (v5 != v6);
LABEL_10:
  v10 = *&v0[OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_markerLayer];
  sub_1D6208930();
  v12 = v11;
  [v10 setPath_];

  v13 = *&v0[OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_selectionView];
  v14 = &v0[OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_selectionFrame];
  v15 = *&v0[OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_selectionFrame];
  v16 = *&v0[OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_selectionFrame + 8];
  v17 = *&v0[OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_selectionFrame + 16];
  v18 = *&v0[OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_selectionFrame + 24];
  if (v0[OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_direction])
  {
    MinY = CGRectGetMinY(*&v15);
    v20 = &v0[OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_contentBounds];
    v21 = MinY - CGRectGetMinY(*&v0[OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_contentBounds]);
    [v0 frame];
    v22 = v21 - CGRectGetMinY(v83);
    Height = CGRectGetHeight(*v14);
    [v0 bounds];
    v24 = 0.0;
    [v13 setFrame_];
    v25 = *&v0[OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_metricSelectionView];
    v26 = &v0[OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_metricSelectionFrame];
    v27 = CGRectGetMinY(*&v0[OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_metricSelectionFrame]);
    v28 = v27 - CGRectGetMinY(*v20);
    [v0 frame];
    v29 = v28 - CGRectGetMinY(v85);
    v30 = CGRectGetHeight(*v26);
    [v0 bounds];
    [v25 setFrame_];
    v31 = *&v0[OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_indicatorView];
    v32 = [v0 superview];
    Width = 0.0;
    if (v32)
    {
      v34 = v32;
      [v32 bounds];
      v36 = v35;
      v38 = v37;
      v40 = v39;
      v42 = v41;

      v87.origin.x = v36;
      v87.origin.y = v38;
      v87.size.width = v40;
      v87.size.height = v42;
      Width = CGRectGetWidth(v87);
    }

    [v0 bounds];
    v43 = CGRectGetHeight(v88);
    [v0 bounds];
    v44 = CGRectGetWidth(v89);
    v45 = [v0 superview];
    v46 = v80;
    if (v45)
    {
      v47 = v45;
      [v45 bounds];
      v49 = v48;
      v51 = v50;
      v53 = v52;
      v55 = v54;

      v90.origin.x = v49;
      v90.origin.y = v51;
      v90.size.width = v53;
      v90.size.height = v55;
      v24 = CGRectGetWidth(v90);
    }

    [v31 setFrame_];
  }

  else
  {
    MinX = CGRectGetMinX(*&v15);
    v57 = &v0[OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_contentBounds];
    v58 = MinX - CGRectGetMinX(*&v0[OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_contentBounds]);
    [v0 frame];
    v59 = v58 - CGRectGetMinX(v91);
    v60 = CGRectGetWidth(*v14);
    [v0 bounds];
    v61 = 0.0;
    [v13 setFrame_];
    v62 = *&v0[OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_metricSelectionView];
    v63 = &v0[OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_metricSelectionFrame];
    v64 = CGRectGetMinX(*&v0[OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_metricSelectionFrame]);
    v65 = v64 - CGRectGetMinX(*v57);
    [v0 frame];
    v66 = v65 - CGRectGetMinX(v93);
    v67 = CGRectGetWidth(*v63);
    [v0 bounds];
    [v62 setFrame_];
    v68 = *&v0[OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_indicatorView];
    [v0 bounds];
    v69 = CGRectGetWidth(v95);
    v70 = [v0 superview];
    if (v70)
    {
      v71 = v70;
      [v70 bounds];
      v73 = v72;
      v75 = v74;
      v77 = v76;
      v79 = v78;

      v96.origin.x = v73;
      v96.origin.y = v75;
      v96.size.width = v77;
      v96.size.height = v79;
      v61 = CGRectGetHeight(v96);
    }

    [v68 setFrame_];
    v46 = v80;
  }

  return [v46 commit];
}

void sub_1D6208930()
{
  v1 = OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_scale;
  v2 = *&v0[OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_edge] / *&v0[OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_scale];
  if (COERCE__INT64(fabs(v2)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if (v2 <= -9.22337204e18)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  if (v2 >= 9.22337204e18)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v3 = v0;
  v4 = v2;
  if (v2 < 2)
  {
    return;
  }

  CGPathCreateMutable();
  v56 = *&v3[OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_markerLabels];
  if (v4 + 0x4000000000000000 >= 0)
  {
    v5 = -v4;
    v6 = 2 * v4;
    if (v6 >= v5)
    {
      v7 = &v3[OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_contentBounds];
      v8 = v3[OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_direction];

      v52 = v6;
      while (1)
      {
        v9 = *&v3[v1] * v5;
        v10 = *v7;
        v11 = *(v7 + 1);
        v12 = *(v7 + 2);
        v13 = *(v7 + 3);
        if (v8)
        {
          MinY = CGRectGetMinY(*&v10);
          [v3 frame];
          if (MinY + CGRectGetMinY(v63) < v9)
          {
            v15 = CGRectGetMinY(*v7);
            [v3 frame];
            MaxY = CGRectGetMaxY(v64);
            goto LABEL_13;
          }
        }

        else
        {
          MinX = CGRectGetMinX(*&v10);
          [v3 frame];
          if (MinX + CGRectGetMinX(v65) < v9)
          {
            v15 = CGRectGetMinX(*v7);
            [v3 frame];
            MaxY = CGRectGetMaxX(v66);
LABEL_13:
            if (v9 < v15 + MaxY)
            {
              v18 = MEMORY[0x1E69E7CC0];
              if (*&v3[v1] > 0.0)
              {
                [v3 bounds];
                v19 = CGRectGetWidth(v67) / *&v3[v1];
                v18 = &unk_1F5112780;
                if (v19 > 100.0)
                {
                  v18 = &unk_1F51127D0;
                  if (v19 > 200.0)
                  {
                    v18 = &unk_1F5112820;
                    if (v19 > 500.0)
                    {
                      if (v19 > 1000.0)
                      {
                        v18 = &unk_1F51128C0;
                      }

                      else
                      {
                        v18 = &unk_1F5112870;
                      }
                    }
                  }
                }
              }

              v20 = *(v18 + 2);
              if (v20)
              {
                v21 = (v18 + 48);
                while (1)
                {
                  v22 = *(v21 - 2);
                  if (!v22)
                  {
                    __break(1u);
LABEL_47:
                    __break(1u);
                    goto LABEL_48;
                  }

                  if (v5 == 0x8000000000000000 && v22 == -1)
                  {
                    goto LABEL_47;
                  }

                  if (!(v5 % v22))
                  {
                    break;
                  }

                  v21 += 24;
                  if (!--v20)
                  {
                    goto LABEL_28;
                  }
                }

                v24 = *(v21 - 1);
                v25 = *v21;

                v26 = *v7;
                v27 = *(v7 + 1);
                v28 = *(v7 + 2);
                v29 = *(v7 + 3);
                if (v8)
                {
                  v30 = v9 - CGRectGetMinY(*&v26);
                  [v3 frame];
                  v31 = v30 - CGRectGetMinY(v68);
                  [v3 bounds];
                  Height = v24 * CGRectGetHeight(v69);
                  v33 = 0.0;
                }

                else
                {
                  v34 = v9 - CGRectGetMinX(*&v26);
                  [v3 frame];
                  v31 = v34 - CGRectGetMinX(v70);
                  [v3 bounds];
                  v33 = (1.0 - v24) * CGRectGetHeight(v71);
                  [v3 bounds];
                  Height = CGRectGetHeight(v72);
                }

                sub_1D620967C(0);
                v35 = swift_allocObject();
                *(v35 + 16) = xmmword_1D7270C10;
                *(v35 + 32) = v31;
                *(v35 + 40) = v33;
                *(v35 + 48) = v31;
                *(v35 + 56) = Height;
                v58 = 0;
                v59 = 0;
                v57 = 0x3FF0000000000000;
                v60 = 0x3FF0000000000000;
                v61 = 0;
                v62 = 0;
                sub_1D7262F3C();

                v6 = v52;
                if (v25)
                {
                  v36 = sub_1D62090B0(sub_1D5EC4BFC, sub_1D5EC4C00);
                  v6 = v52;
                  if (v36)
                  {
                    *&t1.a = 32;
                    t1.b = -1.7573882e159;
                    v37 = v9 / *&v3[v1];
                    if (COERCE__INT64(fabs(v37)) > 0x7FEFFFFFFFFFFFFFLL)
                    {
                      goto LABEL_54;
                    }

                    if (v37 <= -9.22337204e18)
                    {
                      goto LABEL_55;
                    }

                    if (v37 >= 9.22337204e18)
                    {
                      goto LABEL_56;
                    }

                    v38 = v36;
                    *&t2.a = v37;
                    v39 = sub_1D72644BC();
                    MEMORY[0x1DA6F9910](v39);

                    v40 = sub_1D726203C();

                    [v38 setText_];

                    v41 = *&v3[v1] * v22;
                    v42 = v38;
                    [v3 bounds];
                    [v42 setFrame_];
                    if (v8)
                    {
                      v43 = [v42 layer];
                      [v43 setAnchorPoint_];

                      CGAffineTransformMakeRotation(&t1, -3.14159265);
                      tx = t1.tx;
                      ty = t1.ty;
                      v50 = *&t1.c;
                      v51 = *&t1.a;
                      [v42 bounds];
                      v46 = CGRectGetHeight(v74);
                      CGAffineTransformMakeTranslation(&t1, 0.0, v46);
                      v47 = *&t1.a;
                      v48 = *&t1.c;
                      v49 = *&t1.tx;
                      *&t1.a = v51;
                      *&t1.c = v50;
                      t1.tx = tx;
                      t1.ty = ty;
                      *&t2.a = v47;
                      *&t2.c = v48;
                      *&t2.tx = v49;
                      CGAffineTransformConcat(&v53, &t1, &t2);
                      t1 = v53;
                      [v42 setTransform_];
                    }

                    v6 = v52;
                  }
                }
              }

              else
              {
LABEL_28:
              }
            }
          }
        }

        if (v5 == v6)
        {

          return;
        }

        if (__OFADD__(v5++, 1))
        {
LABEL_48:
          __break(1u);
          goto LABEL_49;
        }
      }
    }

    goto LABEL_53;
  }

LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
}

uint64_t sub_1D62090B0(uint64_t (*a1)(uint64_t), uint64_t (*a2)(void))
{
  if (!(*v2 >> 62))
  {
    if (*((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

    return 0;
  }

  v7 = a1;
  v8 = sub_1D7263BFC();
  a1 = v7;
  if (!v8)
  {
    return 0;
  }

LABEL_3:
  result = sub_1D62096EC(a1);
  if (!result)
  {
    if (*v2 >> 62)
    {
      v9 = sub_1D7263BFC();
      v6 = __OFSUB__(v9, 1);
      result = v9 - 1;
      if (!v6)
      {
        return a2();
      }
    }

    else
    {
      v5 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v6 = __OFSUB__(v5, 1);
      result = v5 - 1;
      if (!v6)
      {
        return a2();
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1D6209164(void *a1)
{
  v2 = v1;
  v4 = [a1 state];
  if (v4 > 5)
  {
    return;
  }

  if (((1 << v4) & 0x39) != 0)
  {
    v5 = *&v1[OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_indicatorView];
    v6 = MEMORY[0x1E69E7CC0];
LABEL_25:
    *&v5[OBJC_IVAR____TtC8NewsFeed29DebugFormatRulerIndicatorView_selections] = v6;

    [v5 setNeedsLayout];
    return;
  }

  v5 = *&v1[OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_indicatorView];
  v7 = [a1 numberOfTouches];
  if (v7 < 0)
  {
    goto LABEL_32;
  }

  v8 = v7;
  v6 = MEMORY[0x1E69E7CC0];
  if (!v7)
  {
    goto LABEL_25;
  }

  v36 = v5;
  v39 = MEMORY[0x1E69E7CC0];
  sub_1D69990C4(0, v7, 0);
  v9 = 0;
  v10 = *&v2[OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_contentView];
  v6 = v39;
  v11 = &v2[OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_contentBounds];
  v38 = OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_scale;
  v37 = v2[OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_direction];
  while (1)
  {
    [a1 locationOfTouch:v9 inView:{v10, v36}];
    v13 = v12;
    [v10 frame];
    MaxX = CGRectGetMaxX(v41);
    if (v13 >= 0.0)
    {
      if (v13 < MaxX)
      {
        goto LABEL_12;
      }

LABEL_11:
      v13 = MaxX;
      goto LABEL_12;
    }

    v13 = 0.0;
    if (MaxX <= 0.0)
    {
      goto LABEL_11;
    }

LABEL_12:
    v15 = *v11;
    v16 = *(v11 + 1);
    v17 = *(v11 + 2);
    v18 = *(v11 + 3);
    if (v37)
    {
      MinY = CGRectGetMinY(*&v15);
      [v2 frame];
      v20 = CGRectGetMinY(v42);
      v21 = *&v2[v38];
      v22 = ceil((v13 + MinY + v20) / v21);
      v23 = v21 * v22;
      v24 = CGRectGetMinY(*v11);
      [v2 frame];
      v25 = CGRectGetMinY(v43);
    }

    else
    {
      MinX = CGRectGetMinX(*&v15);
      [v2 frame];
      v27 = CGRectGetMinX(v44);
      v28 = *&v2[v38];
      v22 = ceil((v13 + MinX + v27) / v28);
      v23 = v28 * v22;
      v24 = CGRectGetMinX(*v11);
      [v2 frame];
      v25 = CGRectGetMinX(v45);
    }

    v29 = v23 - (v24 + v25);
    v30 = v29 > 0.0 ? v29 : 0.0;
    if ((*&v22 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      break;
    }

    if (v22 <= -9.22337204e18)
    {
      goto LABEL_30;
    }

    if (v22 >= 9.22337204e18)
    {
      goto LABEL_31;
    }

    [v2 bounds];
    Height = CGRectGetHeight(v46);
    v33 = *(v39 + 16);
    v32 = *(v39 + 24);
    if (v33 >= v32 >> 1)
    {
      v35 = Height;
      sub_1D69990C4((v32 > 1), v33 + 1, 1);
      Height = v35;
    }

    ++v9;
    *(v39 + 16) = v33 + 1;
    v34 = v39 + 24 * v33;
    *(v34 + 32) = v22;
    *(v34 + 40) = v30;
    *(v34 + 48) = Height;
    if (v8 == v9)
    {
      v5 = v36;
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
}

unint64_t sub_1D6209628()
{
  result = qword_1EC8854A8;
  if (!qword_1EC8854A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8854A8);
  }

  return result;
}

void sub_1D620967C(uint64_t a1)
{
  if (!qword_1EDF01D08)
  {
    type metadata accessor for CGPoint(255);
    v1 = sub_1D72644CC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF01D08);
    }
  }
}

uint64_t sub_1D62096EC(uint64_t (*a1)(uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = a1(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5)
  {
    v6 = v5 - 1;
    result = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v6 + 0x20);
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D6209760()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_scale) = 0x3FF0000000000000;
  *(v0 + OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_edge) = 0x3FF0000000000000;
  v2 = (v0 + OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_contentBounds);
  *v2 = 0u;
  v2[1] = 0u;
  v3 = (v0 + OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_canvasOffset);
  *v3 = 0;
  v3[1] = 0;
  v4 = (v0 + OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_selectionFrame);
  *v4 = 0u;
  v4[1] = 0u;
  v5 = (v0 + OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_metricSelectionFrame);
  *v5 = 0u;
  v5[1] = 0u;
  v6 = OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_markerLayer;
  *(v1 + v6) = [objc_allocWithZone(MEMORY[0x1E69794A0]) init];
  v15 = MEMORY[0x1E69E7CC0];
  v7 = 21;
  sub_1D7263ECC();
  v8 = 0;
  v9 = 0;
  while (!v9)
  {
    [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
    sub_1D7263E9C();
    sub_1D7263EDC();
    sub_1D7263EEC();
    sub_1D7263EAC();
    v9 = v8 == 20;
    if (v8 == 20)
    {
      v8 = 0;
    }

    else if (__OFADD__(v8++, 1))
    {
      __break(1u);
      break;
    }

    if (!--v7)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_10:
  *(v1 + OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_markerLabels) = v15;
  v11 = OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_contentView;
  *(v1 + v11) = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  v12 = OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_selectionView;
  *(v1 + v12) = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  v13 = OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_metricSelectionView;
  *(v1 + v13) = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  result = sub_1D726402C();
  __break(1u);
  return result;
}

uint64_t sub_1D62099A8(uint64_t result)
{
  v2 = *(v1 + 48);
  v4 = (v2 & 0xF0) == 48;
  v3 = ((2 * *(v1 + 49)) | ((v2 & 8) != 0));
  v4 = v4 && v3 == 2;
  if (v4)
  {
    return sub_1D62921EC(result);
  }

  return result;
}

uint64_t FormatTextNodeBinding.bindChildren(binder:context:)(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 8);
  v4 = *(v2 + 16);
  v5 = *(v2 + 48);
  if (((1 << ((2 * (*(v2 + 49) & 0x7F)) | ((v5 & 8) != 0))) & 0x6FFB) == 0)
  {
    if (((2 * (*(v2 + 49) & 0x7F)) | (v5 >> 3) & 1) == 2)
    {
      v6 = v5 >> 4;
      if (((1 << v6) & 0x1EF7) != 0)
      {
        return result;
      }

      if (v6 == 3)
      {
        *&v11 = *v2;
        *(&v11 + 1) = v3;
        LOWORD(v12) = v4;
        return sub_1D62B416C(a2);
      }
    }

    if ((v3 & 0x80) != 0)
    {
      v7 = result;
      v14 = v3 & 0x3F;
      sub_1D5B49474(0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
      if (swift_dynamicCast())
      {
        v9 = *(&v12 + 1);
        v10 = v13;
        __swift_project_boxed_opaque_existential_1(&v11, *(&v12 + 1));
        (*(v10 + 8))(v7, a2, v9, v10);
        return __swift_destroy_boxed_opaque_existential_1(&v11);
      }

      else
      {
        v13 = 0;
        v11 = 0u;
        v12 = 0u;
        return sub_1D5BFB774(&v11, &qword_1EDF329A0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
      }
    }
  }

  return result;
}

double FormatFloat.bindChildren(binder:context:)(uint64_t a1, uint64_t a2)
{
  v3 = *v2 >> 61;
  if (v3 > 2)
  {
    if (v3 != 3)
    {
      return result;
    }
  }

  else if (v3 < 2)
  {
    return result;
  }

  FormatFloat.bind(binder:context:)(a1, a2);

  return result;
}

void FormatAccessibilityContent.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *v2 >> 62;
  if (v6)
  {
    if (v6 == 1)
    {
      v7 = (v5 & 0x3FFFFFFFFFFFFFFFLL);
      v8 = v7[2];
      v9 = v7[3];
      v10 = v7[4];

      sub_1D6209D40(a1, a2, v8, v9, v10);
    }
  }

  else
  {
    v11 = *(v5 + 32);
    v19[0] = *(v5 + 16);
    v12 = *(v5 + 48);
    v19[1] = v11;
    v19[2] = v12;
    v20 = *(v5 + 64);
    v13 = *(v5 + 32);
    v15 = *(v5 + 16);
    v16 = v13;
    v17 = *(v5 + 48);
    v18 = *(v5 + 64);
    sub_1D5FD78CC(v19, v14);
    FormatTextNodeBinding.bind(binder:context:)(a1, a2);
    sub_1D5FD7B18(v19);
  }
}

void sub_1D6209D40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (*(a3 + 66))
  {
    v9 = 8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9 & 0xFFFFFFF8 | (*(a3 + 64) >> 11) & 7;
  if (v10 <= 3)
  {
    if ((v10 - 1) < 2)
    {
      goto LABEL_21;
    }

    if (v10)
    {
      if (*(a3 + 32) != 1 || (*(a3 + 16) & 0xF000000000000007) == 0xF000000000000007)
      {
        goto LABEL_21;
      }

      v11 = a4;

      FormatTextContent.bind(binder:context:)(a1, a2);

      if (v5)
      {
        return;
      }
    }

    else
    {
      v11 = a4;
      FormatGroupBinding.Command.bind(binder:context:)(a1, a2);
      if (v5)
      {
        return;
      }
    }
  }

  else
  {
    if (((1 << v10) & 0x330) != 0)
    {
      goto LABEL_21;
    }

    v11 = a4;
    if (v10 == 6)
    {
      FormatSportsEventBinding.Command.bind(binder:context:)(a1, a2);
      if (v5)
      {
        return;
      }
    }

    else
    {
      FormatString.bind(binder:context:)(a1, a2);
      if (v5)
      {
        return;
      }
    }
  }

  a4 = v11;
LABEL_21:
  sub_1D621E8B0(a1, a2, a4);
  if (!v5)
  {
    if (a5 >> 62)
    {
      if (a5 >> 62 == 1)
      {
        sub_1D6209D40(a1, a2, *((a5 & 0x3FFFFFFFFFFFFFFFLL) + 0x10), *((a5 & 0x3FFFFFFFFFFFFFFFLL) + 0x18), *((a5 & 0x3FFFFFFFFFFFFFFFLL) + 0x20));
      }
    }

    else
    {
      FormatTextNodeBinding.bind(binder:context:)(a1, a2);
    }
  }
}

double sub_1D6209F10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  FormatCommandBinding.bind(binder:context:)(a1, a2);
  if (!v7)
  {
    sub_1D6226080(a1, a2, a4);

    FormatSyncImageContent.bind(binder:context:)(a1, a2);
  }

  return result;
}

double sub_1D6209FB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t), void (*a7)(uint64_t, uint64_t))
{
  FormatCommandBinding.bind(binder:context:)(a1, a2);
  if (!v7)
  {
    sub_1D623C390(a1, a2, a4, a6);

    a7(a1, a2);
  }

  return result;
}

void FormatCommandValue.bind(binder:context:)(uint64_t a1, uint64_t a2, void *a3)
{

  FormatCommand.bind(binder:context:)(a1, a2);

  if (!v4)
  {
    v8 = *(v3 + 8);
    v9 = a3[2];
    v10 = a3[3];
    v11 = a3[4];
    v12 = type metadata accessor for FormatCommandValue.CaseValue(0, v9, v10, v11);
    Array<A>.bind(binder:context:)(a1, a2, v8, v12, &off_1F5142238);
    v13 = type metadata accessor for FormatCommandValue.DefaultValue(0, v9, v10, v11);
    sub_1D623DAD4(a1, a2, v13);
  }
}

double FormatAccessibilityData.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  if ((*v2 & 0x8000000000000000) != 0)
  {
    v6 = *((*v2 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
    v7 = *(v6 + 24);

    sub_1D6220CF8(a1, a2, v7);
    if (!v3)
    {
      sub_1D6251CF0(a1, a2, *(v6 + 32));
    }
  }

  return result;
}

uint64_t FormatCommandActionValue.bind(binder:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = v4[3];
  v9 = *(*v4 + 80);
  v10 = type metadata accessor for FormatCommandActionValue.CaseValue(0, v9, a3, a4);
  result = Array<A>.bind(binder:context:)(a1, a2, v8, v10, &off_1F5142228);
  if (!v5)
  {
    v14 = type metadata accessor for FormatCommandActionValue.DefaultValue(0, v9, v12, v13);
    return sub_1D623DAD4(a1, a2, v14);
  }

  return result;
}

double sub_1D620A2DC(uint64_t a1, uint64_t a2)
{
  if ((*v2 & 0x8000000000000000) != 0)
  {
    v6 = *((*v2 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
    v7 = *(v6 + 24);

    sub_1D6220CF8(a1, a2, v7);
    if (!v3)
    {
      sub_1D6251CF0(a1, a2, *(v6 + 32));
    }
  }

  return result;
}

void FormatAccessibilityNode.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  swift_beginAccess();
  v18 = *(v2 + 32);
  v19 = *(v2 + 40);
  sub_1D5D07778(v18, v19);
  FormatAccessibilityProperty.bind(binder:context:)(a1, a2);
  sub_1D5D06D9C(v18, v19);
  if (!v3)
  {
    swift_beginAccess();
    v7 = *(v2 + 98);
    if ((v7 >> 1) <= 0x7Eu)
    {
      v8 = *(v2 + 96) | (*(v2 + 98) << 16);
      v10 = *(v2 + 48);
      v9 = *(v2 + 56);
      v11 = *(v2 + 64);
      v12 = v4[9];
      v14 = v4[10];
      v13 = v4[11];
      v16 = v13;
      v17 = v4[7];
      if (((v7 << 16) & 0x800000) != 0)
      {
        sub_1D5D0A5BC(v10, v9, v11, v12, v14, v13, v8);
        FormatCommandBinding.bind(binder:context:)(a1, a2);
      }

      else
      {
        sub_1D5D0A5BC(v10, v9, v11, v12, v14, v13, v8);
        sub_1D620B270(a1, a2, v10);
      }

      sub_1D5C67600(v10, v17, v11, v12, v14, v16, v8);
    }

    if (v4[13])
    {
      v15 = v4[17];

      sub_1D5DEA234(v15);

      FormatFlexBoxNodeItem.bind(binder:context:)(a1, a2);

      sub_1D5CBF568(v15);
    }
  }
}

void FormatAccessibilityProperty.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  if (*(v2 + 8))
  {
    v6 = 4;
  }

  else
  {
    v6 = 0;
  }

  v7 = (*v2 >> 60) & 3 | v6;
  if (v7 <= 2)
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    goto LABEL_13;
  }

  if (v7 <= 4)
  {
    if (v7 != 3)
    {
LABEL_9:
      if (v5 >> 62)
      {
        if (v5 >> 62 != 1)
        {
          return;
        }

        v8 = (v5 & 0x3FFFFFFFFFFFFFFFLL);
LABEL_16:
        v9 = v8[2];
        v10 = v8[3];
        v11 = v8[4];

        sub_1D6209D40(a1, a2, v9, v10, v11);

        return;
      }

LABEL_18:
      v12 = *(v5 + 32);
      v22 = *(v5 + 16);
      v13 = *(v5 + 48);
      v23 = v12;
      v24 = v13;
      v25 = *(v5 + 64);
      v14 = *(v5 + 32);
      v18 = *(v5 + 16);
      v19 = v14;
      v20 = *(v5 + 48);
      v21 = *(v5 + 64);
      sub_1D5FD78CC(&v22, v17);
      FormatTextNodeBinding.bind(binder:context:)(a1, a2);
      sub_1D5FD7B18(&v22);
      return;
    }

LABEL_13:
    if (v5 >> 62)
    {
      if (v5 >> 62 != 1)
      {
        return;
      }

      v8 = (v5 & 0xFFFFFFFFFFFFFFFLL);
      goto LABEL_16;
    }

    v5 &= 0xCFFFFFFFFFFFFFFFLL;
    goto LABEL_18;
  }

  if (v7 == 5)
  {
    goto LABEL_13;
  }

  LOBYTE(v18) = *v2;
  sub_1D5B49474(0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
  if (swift_dynamicCast())
  {
    v15 = *(&v23 + 1);
    v16 = v24;
    __swift_project_boxed_opaque_existential_1(&v22, *(&v23 + 1));
    (*(v16 + 8))(a1, a2, v15, v16);
    __swift_destroy_boxed_opaque_existential_1(&v22);
  }

  else
  {
    *&v24 = 0;
    v23 = 0u;
    v22 = 0u;
    sub_1D5BFB774(&v22, &qword_1EDF329A0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
  }
}

double FormatComputedInvalidation.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(v2 + 48) | (*(v2 + 50) << 16);
  if ((v4 & 0x80000000) == 0)
  {
    sub_1D620B270(a1, a2, v3);
    return *&v5;
  }

  v5 = *(v2 + 24);
  v6 = (v4 >> 13) & 8 | (v4 >> 11) & 7;
  if (v6 <= 3)
  {
    if ((v6 - 1) < 2)
    {
      return *&v5;
    }

    if (!v6)
    {
      v10 = (v5 >> 3) & 7;
      if (v10 <= 1)
      {
        if (v10)
        {
          v11 = 0;
        }

        else
        {
          v11 = *(v2 + 16) == 1;
        }

        if (!v11 || (v3 & 0xF000000000000007) == 0xF000000000000007)
        {
          return *&v5;
        }
      }

      else
      {
        if (v10 != 2 && v10 != 3 && v5 >> 6 && v5 >> 6 != 1)
        {
          v7 = v5 & 7;
LABEL_10:
          if (v7 == 1 && (*(v2 + 8) & 0xF000000000000007) != 0xF000000000000007)
          {
            v9 = a1;
LABEL_37:

            FormatTextContent.bind(binder:context:)(v9, a2);

            return *&v5;
          }

          return *&v5;
        }

        if (*(v2 + 16) != 1 || (v3 & 0xF000000000000007) == 0xF000000000000007)
        {
          return *&v5;
        }
      }

      v9 = a1;
      goto LABEL_37;
    }
  }

  else
  {
    if (((1 << v6) & 0x330) != 0)
    {
      return *&v5;
    }

    if (v6 != 6)
    {
      FormatString.bind(binder:context:)(a1, a2);
      return *&v5;
    }

    if (v5 >> 6 && v5 >> 6 != 1)
    {
      v7 = v5 & 0x3F;
      goto LABEL_10;
    }
  }

  if (*(v2 + 16) == 1 && (v3 & 0xF000000000000007) != 0xF000000000000007)
  {
    v9 = a1;
    goto LABEL_37;
  }

  return *&v5;
}

double FormatFlexBoxNodeItem.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = v2[1];
  v8 = v2[2];
  v9 = v2[3];
  v11 = v2[4];
  v10 = v2[5];

  sub_1D62B41FC(a2, v6);
  if (v3)
  {
  }

  else
  {
    sub_1D62B4820(a2, v7);

    sub_1D62B41FC(a2, v8);
    sub_1D62B4820(a2, v9);

    sub_1D5DEA234(v11);

    if (v11 >= 3)
    {
      sub_1D620B270(a1, a2, v11);
    }

    sub_1D623A698(a1, a2, v10);
    sub_1D5CBF568(v11);
  }

  return result;
}

void FormatAdMetricsNode.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v12 = *(v2 + 48);
  sub_1D5C82CD8(v12);
  FormatSize.bind(binder:context:)(a1, a2);
  sub_1D5C92A8C(v12);
  if (!v3)
  {
    swift_beginAccess();
    v7 = *(v2 + 64);

    sub_1D620EA64(a1, a2, v7);

    swift_beginAccess();
    v8 = v4[10];
    if (v8 >> 62 == 1)
    {
      v9 = *((v8 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v10 = *((v8 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      sub_1D5EB1500(v4[10]);
      sub_1D5EB1500(v9);

      sub_1D624919C(a1, a2, v9, v10);
      sub_1D5EB15C4(v9);

      sub_1D5EB15C4(v8);
    }

    if (v4[12])
    {
      v11 = v4[16];

      sub_1D5DEA234(v11);

      FormatFlexBoxNodeItem.bind(binder:context:)(a1, a2);

      sub_1D5CBF568(v11);
    }
  }
}

void FormatSize.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  switch((*v2 >> 59) & 0x1E | (*v2 >> 2) & 1)
  {
    case 1uLL:
      v11 = v4 & 0xFFFFFFFFFFFFFFBLL;
      v12 = *(v11 + 16);
      v13 = *(v11 + 24);

      sub_1D5C07390(v13);
      sub_1D620B270(a1, a2, v12);
      if (v3)
      {
        goto LABEL_10;
      }

      if (v13)
      {
        if (v13 == 1)
        {

          v14 = 1;
        }

        else
        {
          sub_1D620B270(a1, a2, v13);
LABEL_10:

          v14 = v13;
        }
      }

      else
      {

        v14 = 0;
      }

      sub_1D5C08648(v14);
      return;
    case 2uLL:
      v8 = v4 & 0xFFFFFFFFFFFFFFBLL;
      v10 = *(v8 + 16);
      v9 = *(v8 + 24);
      *&v31 = v10;
      sub_1D5D0A048(v10);
      sub_1D5D0A048(v9);
      sub_1D5D0A048(v10);
      FormatDimensionSizingValue.bind(binder:context:)(a1, a2);
      sub_1D5D09FB0(v10);
      if (!v3)
      {
        *&v31 = v9;
        sub_1D5D0A048(v9);
        FormatDimensionSizingValue.bind(binder:context:)(a1, a2);
        sub_1D5D09FB0(v9);
      }

      sub_1D5D09FB0(v10);
      sub_1D5D09FB0(v9);
      return;
    case 3uLL:
    case 4uLL:
    case 5uLL:
    case 6uLL:
    case 7uLL:
    case 8uLL:
    case 0xCuLL:
    case 0x11uLL:
    case 0x12uLL:
    case 0x13uLL:
      v4 &= 0xFFFFFFFFFFFFFFBuLL;
      goto LABEL_3;
    case 9uLL:
      v15 = v4 & 0xFFFFFFFFFFFFFFBLL;
      v16 = *(v15 + 24);
      if (*(v15 + 16))
      {

        FormatTextNodeStyle.bind(binder:context:)(a1, a2);
        if (v3)
        {
          goto LABEL_35;
        }
      }

      else
      {
      }

      sub_1D62B41FC(a2, v16);
LABEL_35:

      return;
    case 0xAuLL:
      v24 = *((v4 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      goto LABEL_28;
    case 0xBuLL:
      sub_1D5B49474(0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
      if (swift_dynamicCast())
      {
        v17 = *(&v32 + 1);
        v18 = v33;
        __swift_project_boxed_opaque_existential_1(&v31, *(&v32 + 1));
        (*(v18 + 8))(a1, a2, v17, v18);
        __swift_destroy_boxed_opaque_existential_1(&v31);
      }

      else
      {
        v33 = 0;
        v31 = 0u;
        v32 = 0u;
        sub_1D5BFB774(&v31, &qword_1EDF329A0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
      }

      return;
    case 0xDuLL:
      v24 = *((v4 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
LABEL_28:

      sub_1D620B270(a1, a2, v24);
      goto LABEL_4;
    case 0xEuLL:
      v28 = v4 & 0xFFFFFFFFFFFFFFBLL;
      v29 = *(v28 + 24);
      if (v29)
      {
        if (v29 == 1)
        {
          v30 = 1;
        }

        else
        {
          if (v29 == 2)
          {
            sub_1D5CBF568(2uLL);
            return;
          }

          sub_1D5DEA234(*(v28 + 24));
          sub_1D620B270(a1, a2, v29);
          v30 = v29;
        }
      }

      else
      {
        v30 = 0;
      }

      sub_1D5CBF568(v30);
      return;
    case 0xFuLL:
      v19 = v4 & 0xFFFFFFFFFFFFFFBLL;
      v20 = *(v19 + 24);
      *&v31 = *(v19 + 16);
      *(&v31 + 1) = v20;
      sub_1D5C82CD8(v31);
      sub_1D62B48BC(v20);
      FormatSponsoredBannerSizing.bind(binder:context:)(a1, a2);
      sub_1D5C92A8C(v31);
      sub_1D62B48D0(v20);
      return;
    case 0x10uLL:
      v21 = v4 & 0xFFFFFFFFFFFFFFBLL;
      v23 = *(v21 + 16);
      v22 = *(v21 + 24);

      sub_1D5C82CD8(v22);
      sub_1D62484AC(a1, a2, v23, v22);

      sub_1D5C92A8C(v22);
      return;
    case 0x14uLL:
      v25 = v4 & 0xFFFFFFFFFFFFFFBLL;
      v26 = *(v25 + 16);
      v27 = *(v25 + 24);

      sub_1D620B270(a1, a2, v26);
      if (!v3)
      {
        sub_1D620B270(a1, a2, v27);
      }

      goto LABEL_4;
    case 0x15uLL:
    case 0x16uLL:
      return;
    default:
LABEL_3:
      v7 = *(v4 + 16);

      sub_1D620B270(a1, a2, v7);
LABEL_4:

      return;
  }
}

void sub_1D620B270(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v7 = v4 - 1;
    v8 = (a3 + 40);
    if (*(a3 + 40))
    {
      goto LABEL_4;
    }

LABEL_3:
    v9 = *(v8 - 1);
    sub_1D62B72CC(v9, 0);

    FormatFloat.bind(binder:context:)(a1, a2);
    sub_1D62B72BC(v9, 0);

    if (!v3)
    {
LABEL_4:
      while (v7)
      {
        --v7;
        v8 += 16;
        if ((*v8 & 1) == 0)
        {
          goto LABEL_3;
        }
      }
    }
  }
}

void sub_1D620B334(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  if (!v5)
  {
    return;
  }

  v19 = (a3 + 32);
  while (1)
  {
    v8 = *v19++;
    v9 = v8 >> 61;
    if ((v8 >> 61) <= 2)
    {
      break;
    }

    if (v9 == 3)
    {
      sub_1D5ECF0E0(v8);

      FormatColor.bind(binder:context:)(a1, a2);
      if (v4)
      {
        goto LABEL_65;
      }

      goto LABEL_16;
    }

    if (v9 == 4)
    {

      sub_1D5ECF0E0(v8);

      FormatColor.bind(binder:context:)(a1, a2);
      if (v4)
      {
        goto LABEL_70;
      }

LABEL_16:
      sub_1D5ECF11C(v8);
    }

LABEL_4:
    if (!--v5)
    {
      return;
    }
  }

  if ((v8 >> 61) < 2)
  {
    goto LABEL_4;
  }

  v11 = *((v8 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v10 = *((v8 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
  v12 = v11 >> 61;
  if ((v11 >> 61) <= 1)
  {
    if (v12)
    {
      sub_1D5ECF0E0(v8);

      FormatColorExpression.bindChildren(binder:context:)(a1, a2);
      if (v4)
      {
LABEL_57:

        goto LABEL_65;
      }
    }

    else
    {
      sub_1D5ECF0E0(v8);

      FormatColorExpression.bindChildren(binder:context:)(a1, a2);
      if (v4)
      {
        goto LABEL_57;
      }
    }

    FormatColorExpression.bindChildren(binder:context:)(a1, a2);
    v4 = 0;
    goto LABEL_48;
  }

  if (v12 != 2)
  {
    if (v12 != 3)
    {
      v15 = *((v11 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      sub_1D5ECF0E0(v8);

      FormatColor.bind(binder:context:)(a1, a2);
      if (v4)
      {

        goto LABEL_64;
      }

      v16 = v15 >> 61;
      if ((v15 >> 61) <= 1)
      {
        FormatColorExpression.bindChildren(binder:context:)(a1, a2);
        FormatColorExpression.bindChildren(binder:context:)(a1, a2);
        v4 = 0;
      }

      else if (v16 == 2)
      {

        FormatColorExpression.bindChildren(binder:context:)(a1, a2);
      }

      else if (v16 != 3)
      {

        FormatColor.bind(binder:context:)(a1, a2);

        FormatColorExpression.bindChildren(binder:context:)(a1, a2);
      }

      goto LABEL_48;
    }

    goto LABEL_13;
  }

  v13 = *((v11 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v14 = v13 >> 61;
  if ((v13 >> 61) <= 1)
  {
    v18 = *((v8 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    if (!v14)
    {
      sub_1D5ECF0E0(v8);

      FormatColorExpression.bindChildren(binder:context:)(a1, a2);
      if (v4)
      {
        goto LABEL_63;
      }

      FormatColorExpression.bindChildren(binder:context:)(a1, a2);
      v4 = 0;
      goto LABEL_44;
    }

    sub_1D5ECF0E0(v8);

    FormatColorExpression.bindChildren(binder:context:)(a1, a2);
    if (v4)
    {
LABEL_63:

      goto LABEL_65;
    }

    goto LABEL_43;
  }

  if (v14 != 2)
  {
    if (v14 == 3)
    {
LABEL_13:
      sub_1D5ECF0E0(v8);

      goto LABEL_48;
    }

    sub_1D5ECF0E0(v8);

    v18 = v10;

    FormatColor.bind(binder:context:)(a1, a2);
    if (v4)
    {

      goto LABEL_64;
    }

LABEL_43:
    FormatColorExpression.bindChildren(binder:context:)(a1, a2);
    goto LABEL_44;
  }

  v17 = *((v13 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) >> 61;
  if (v17 <= 1)
  {
    v18 = *((v8 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    if (v17)
    {
      sub_1D5ECF0E0(v8);

      FormatColorExpression.bindChildren(binder:context:)(a1, a2);
      if (v4)
      {
LABEL_66:

LABEL_64:

LABEL_65:

        goto LABEL_71;
      }
    }

    else
    {
      sub_1D5ECF0E0(v8);

      FormatColorExpression.bindChildren(binder:context:)(a1, a2);
      if (v4)
      {
        goto LABEL_66;
      }
    }

    FormatColorExpression.bindChildren(binder:context:)(a1, a2);
    v4 = 0;

    goto LABEL_44;
  }

  if (v17 == 2)
  {

    sub_1D5ECF0E0(v8);

    v18 = v10;

    FormatColorExpression.bindChildren(binder:context:)(a1, a2);
    if (v4)
    {

      goto LABEL_70;
    }

    goto LABEL_45;
  }

  if (v17 == 3)
  {
    goto LABEL_13;
  }

  sub_1D5ECF0E0(v8);

  swift_retain_n();

  v18 = v10;

  FormatColor.bind(binder:context:)(a1, a2);
  if (!v4)
  {

    FormatColorExpression.bindChildren(binder:context:)(a1, a2);

LABEL_44:

LABEL_45:
    v10 = v18;
LABEL_48:
    sub_1D620B334(a1, a2, v10);

    sub_1D5ECF11C(v8);
    if (v4)
    {
      return;
    }

    goto LABEL_4;
  }

LABEL_70:

LABEL_71:
  sub_1D5ECF11C(v8);
}

uint64_t sub_1D620BE38(uint64_t result, uint64_t a2, uint64_t a3)
{
  v11 = result;
  v3 = *(a3 + 16);
  if (v3)
  {
    v4 = a3 + 64;
    do
    {
      v6 = *(v4 - 32);
      v5 = *(v4 - 24);
      v7 = *(v4 - 16);
      sub_1D5D03180(v6, v5, v7);
      sub_1D5B49474(0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
      swift_bridgeObjectRetain_n();
      if (swift_dynamicCast())
      {
        v8 = *(&v14 + 1);
        v9 = v15;
        __swift_project_boxed_opaque_existential_1(&v13, *(&v14 + 1));
        v10 = v16;
        (*(v9 + 8))(v11, a2, v8, v9);
        sub_1D5D07BA8(v6, v5, v7);

        result = __swift_destroy_boxed_opaque_existential_1(&v13);
        v16 = v10;
        if (v10)
        {
          return result;
        }
      }

      else
      {
        sub_1D5D07BA8(v6, v5, v7);

        v15 = 0;
        v13 = 0u;
        v14 = 0u;
        result = sub_1D5BFB774(&v13, &qword_1EDF329A0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
      }

      v4 += 40;
      --v3;
    }

    while (v3);
  }

  return result;
}

void sub_1D620C008(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(a3 + 16);
  if (!v6)
  {
    return;
  }

  for (i = (a3 + 48); ; i += 3)
  {
    v8 = *i;
    if (*i < 0)
    {
      break;
    }

LABEL_5:
    if (!--v6)
    {
      return;
    }
  }

  v9 = *((v8 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
  v10 = *((v8 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
  if ((v9 & 0x8000000000000000) == 0)
  {

LABEL_4:

    a5(a1, a2, v10);

    swift_bridgeObjectRelease_n();

    if (v5)
    {
      return;
    }

    goto LABEL_5;
  }

  v11 = *((v9 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
  v12 = *((v9 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
  if ((v11 & 0x8000000000000000) == 0)
  {

    swift_retain_n();

LABEL_44:

    a5(a1, a2, v12);
    if (v5)
    {

      swift_bridgeObjectRelease_n();

      return;
    }

    swift_bridgeObjectRelease_n();

    goto LABEL_4;
  }

  v40 = *((v9 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
  v13 = *((v11 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
  v14 = *((v11 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
  if ((v13 & 0x8000000000000000) == 0)
  {

    v15 = v14;
    swift_retain_n();

    swift_retain_n();

LABEL_42:

    a5(a1, a2, v15);
    if (v5)
    {

      swift_bridgeObjectRelease_n();
LABEL_49:

      return;
    }

    swift_bridgeObjectRelease_n();

    goto LABEL_44;
  }

  v39 = *((v11 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
  v16 = *((v13 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
  v17 = *((v13 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
  if ((v16 & 0x8000000000000000) == 0)
  {

    swift_retain_n();

    swift_retain_n();

    swift_retain_n();

LABEL_40:

    a5(a1, a2, v17);
    if (v5)
    {

      swift_bridgeObjectRelease_n();
      goto LABEL_49;
    }

    swift_bridgeObjectRelease_n();

    v12 = v40;
    v15 = v39;
    goto LABEL_42;
  }

  v37 = *((v13 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
  v18 = v16 & 0x7FFFFFFFFFFFFFFFLL;
  v19 = *((v16 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
  v20 = *(v18 + 24);
  if ((v19 & 0x8000000000000000) == 0)
  {

    swift_retain_n();

    swift_retain_n();

    swift_retain_n();

    swift_retain_n();

LABEL_38:

    a5(a1, a2, v20);
    if (v5)
    {

      swift_bridgeObjectRelease_n();
      goto LABEL_49;
    }

    swift_bridgeObjectRelease_n();

    v17 = v37;
    v5 = 0;
    goto LABEL_40;
  }

  v35 = *(v18 + 24);
  v21 = *((v19 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
  v36 = *((v19 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
  if ((v21 & 0x8000000000000000) == 0)
  {

    swift_retain_n();

    swift_retain_n();

    swift_retain_n();

    swift_retain_n();

    swift_retain_n();

LABEL_36:

    a5(a1, a2, v36);
    if (v5)
    {

      swift_bridgeObjectRelease_n();
      goto LABEL_49;
    }

    swift_bridgeObjectRelease_n();

    v5 = 0;
    v20 = v35;
    goto LABEL_38;
  }

  v22 = *((v21 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
  v23 = *((v21 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
  if ((v22 & 0x8000000000000000) == 0)
  {

    swift_retain_n();

    swift_retain_n();

    swift_retain_n();

    swift_retain_n();

    swift_retain_n();

    swift_retain_n();

    v24 = v23;
LABEL_34:

    a5(a1, a2, v24);
    if (v5)
    {

      swift_bridgeObjectRelease_n();
      goto LABEL_60;
    }

    swift_bridgeObjectRelease_n();

    v5 = 0;
    goto LABEL_36;
  }

  v25 = v22 & 0x7FFFFFFFFFFFFFFFLL;
  v26 = *(v25 + 16);
  v34 = *(v25 + 24);
  v33 = *((v21 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
  if ((v26 & 0x8000000000000000) == 0)
  {

    swift_retain_n();

    swift_retain_n();

    swift_retain_n();

    swift_retain_n();

    swift_retain_n();

    swift_retain_n();

    swift_retain_n();
    v24 = v23;

LABEL_32:

    a5(a1, a2, v34);
    if (v5)
    {

      swift_bridgeObjectRelease_n();
      goto LABEL_59;
    }

    swift_bridgeObjectRelease_n();

    v5 = 0;
    goto LABEL_34;
  }

  v27 = *((v26 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
  v32 = *((v26 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
  if ((v27 & 0x8000000000000000) == 0)
  {

    swift_retain_n();

    swift_retain_n();

    swift_retain_n();

    swift_retain_n();

    swift_retain_n();

    swift_retain_n();

    swift_retain_n();
    v24 = v23;

    swift_retain_n();

LABEL_30:

    a5(a1, a2, v32);
    if (v5)
    {

      swift_bridgeObjectRelease_n();
      goto LABEL_58;
    }

    swift_bridgeObjectRelease_n();

    v5 = 0;
    goto LABEL_32;
  }

  v28 = *((v27 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
  v29 = *((v27 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
  if ((v28 & 0x8000000000000000) == 0)
  {

    swift_retain_n();

    swift_retain_n();

    swift_retain_n();

    swift_retain_n();

    swift_retain_n();

    swift_retain_n();

    swift_retain_n();
    v30 = v29;
    v24 = v33;

    swift_retain_n();

    swift_retain_n();

LABEL_28:

    a5(a1, a2, v30);
    if (v5)
    {

      swift_bridgeObjectRelease_n();

      goto LABEL_58;
    }

    swift_bridgeObjectRelease_n();

    v5 = 0;
    goto LABEL_30;
  }

  v31 = *((v28 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);

  swift_retain_n();

  swift_retain_n();

  swift_retain_n();

  swift_retain_n();

  swift_retain_n();

  swift_retain_n();

  swift_retain_n();
  v30 = v29;
  v24 = v33;

  swift_retain_n();

  swift_retain_n();

  swift_retain_n();

  a4(a1, a2, v31);
  if (!v5)
  {

    v5 = 0;
    goto LABEL_28;
  }

LABEL_58:

LABEL_59:

LABEL_60:
}

unint64_t sub_1D620D084(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return result;
  }

  v5 = a2;
  v6 = result;
  v7 = (a3 + 48);
  v65 = result;
  while (1)
  {
    v8 = *v7;
    if (*v7 < 2)
    {
      goto LABEL_3;
    }

    v9 = *(v8 + 16);
    v10 = *(v8 + 24);
    if (!v9)
    {

      sub_1D5D0A57C(v8);
      v11 = 0;
      goto LABEL_9;
    }

    if (v9 != 1)
    {
      break;
    }

    sub_1D5D0A57C(v8);
    v11 = 1;
LABEL_9:
    sub_1D5D0A57C(v11);

LABEL_75:

    sub_1D620D084(v6, v5, v10);
    if (v3)
    {
      sub_1D5D0A58C(v9);

      goto LABEL_88;
    }

    sub_1D5D0A58C(v9);

    result = sub_1D5D0A58C(v8);
LABEL_3:
    v7 += 3;
    if (!--v4)
    {
      return result;
    }
  }

  v13 = *(v9 + 16);
  v12 = *(v9 + 24);
  v64 = v13;
  if (!v13)
  {

    sub_1D5D0A57C(v8);
    sub_1D5D0A57C(v9);

    sub_1D5D0A57C(v9);
    v14 = 0;
LABEL_14:
    sub_1D5D0A57C(v14);

LABEL_73:

    v5 = a2;
    sub_1D620D084(v65, a2, v12);
    if (v3)
    {
      sub_1D5D0A58C(v64);

      sub_1D5D0A58C(v9);

      goto LABEL_87;
    }

    sub_1D5D0A58C(v64);

    sub_1D5D0A58C(v9);
    v6 = v65;
    goto LABEL_75;
  }

  if (v13 == 1)
  {

    sub_1D5D0A57C(v8);
    sub_1D5D0A57C(v9);

    sub_1D5D0A57C(v9);
    v14 = 1;
    goto LABEL_14;
  }

  v15 = *(v13 + 16);
  v61 = *(v13 + 24);
  v62 = v15;
  if (!v15)
  {

    sub_1D5D0A57C(v8);
    sub_1D5D0A57C(v9);

    sub_1D5D0A57C(v9);
    sub_1D5D0A57C(v13);

    sub_1D5D0A57C(v13);
    v16 = 0;
LABEL_19:
    sub_1D5D0A57C(v16);
    v17 = v61;

    goto LABEL_71;
  }

  if (v15 == 1)
  {

    sub_1D5D0A57C(v8);
    sub_1D5D0A57C(v9);

    sub_1D5D0A57C(v9);
    sub_1D5D0A57C(v13);

    sub_1D5D0A57C(v13);
    v16 = 1;
    goto LABEL_19;
  }

  v18 = *(v15 + 16);
  v59 = *(v15 + 24);
  v60 = v18;
  if (!v18)
  {

    sub_1D5D0A57C(v8);
    sub_1D5D0A57C(v9);

    sub_1D5D0A57C(v9);
    sub_1D5D0A57C(v13);

    sub_1D5D0A57C(v13);
    sub_1D5D0A57C(v62);

    sub_1D5D0A57C(v62);
    v19 = 0;
LABEL_24:
    sub_1D5D0A57C(v19);
    v20 = v59;

LABEL_69:

    sub_1D620D084(v65, a2, v20);
    if (v3)
    {
      sub_1D5D0A58C(v60);

      v40 = v62;
      sub_1D5D0A58C(v62);

      v39 = v64;
      sub_1D5D0A58C(v64);

      sub_1D5D0A58C(v9);

      goto LABEL_85;
    }

    sub_1D5D0A58C(v60);

    sub_1D5D0A58C(v62);
    v17 = v61;
LABEL_71:

    sub_1D620D084(v65, a2, v17);
    if (v3)
    {
      sub_1D5D0A58C(v62);

      v39 = v64;
      sub_1D5D0A58C(v64);

      sub_1D5D0A58C(v9);

      goto LABEL_86;
    }

    sub_1D5D0A58C(v62);

    sub_1D5D0A58C(v64);
    goto LABEL_73;
  }

  if (v18 == 1)
  {

    sub_1D5D0A57C(v8);
    sub_1D5D0A57C(v9);

    sub_1D5D0A57C(v9);
    sub_1D5D0A57C(v13);

    sub_1D5D0A57C(v13);
    sub_1D5D0A57C(v62);

    sub_1D5D0A57C(v62);
    v19 = 1;
    goto LABEL_24;
  }

  v21 = *(v18 + 16);
  v57 = *(v18 + 24);
  v58 = v21;
  if (!v21)
  {

    sub_1D5D0A57C(v8);
    sub_1D5D0A57C(v9);

    sub_1D5D0A57C(v9);
    sub_1D5D0A57C(v13);

    sub_1D5D0A57C(v13);
    sub_1D5D0A57C(v62);

    sub_1D5D0A57C(v62);
    sub_1D5D0A57C(v60);

    sub_1D5D0A57C(v60);
    v22 = 0;
LABEL_29:
    sub_1D5D0A57C(v22);
    v23 = v57;

LABEL_67:

    sub_1D620D084(v65, a2, v23);
    if (v3)
    {
      sub_1D5D0A58C(v58);

      v41 = v60;
      sub_1D5D0A58C(v60);

      v40 = v62;
      sub_1D5D0A58C(v62);

      v39 = v64;
      sub_1D5D0A58C(v64);

      sub_1D5D0A58C(v9);

LABEL_82:
      v42 = v41;
      goto LABEL_84;
    }

    sub_1D5D0A58C(v58);

    sub_1D5D0A58C(v60);
    v20 = v59;
    goto LABEL_69;
  }

  if (v21 == 1)
  {

    sub_1D5D0A57C(v8);
    sub_1D5D0A57C(v9);

    sub_1D5D0A57C(v9);
    sub_1D5D0A57C(v13);

    sub_1D5D0A57C(v13);
    sub_1D5D0A57C(v62);

    sub_1D5D0A57C(v62);
    sub_1D5D0A57C(v60);

    sub_1D5D0A57C(v60);
    v22 = 1;
    goto LABEL_29;
  }

  v24 = *(v21 + 16);
  v55 = *(v21 + 24);
  v56 = v24;
  if (v24)
  {
    if (v24 == 1)
    {

      sub_1D5D0A57C(v8);
      sub_1D5D0A57C(v9);

      sub_1D5D0A57C(v9);
      sub_1D5D0A57C(v13);

      sub_1D5D0A57C(v13);
      sub_1D5D0A57C(v62);

      sub_1D5D0A57C(v62);
      sub_1D5D0A57C(v60);

      sub_1D5D0A57C(v60);
      sub_1D5D0A57C(v58);

      sub_1D5D0A57C(v58);
      v25 = 1;
      goto LABEL_34;
    }

    v27 = *(v24 + 16);
    v53 = *(v24 + 24);
    v54 = v27;
    if (v27)
    {
      if (v27 == 1)
      {

        sub_1D5D0A57C(v8);
        sub_1D5D0A57C(v9);

        sub_1D5D0A57C(v9);
        sub_1D5D0A57C(v13);

        sub_1D5D0A57C(v13);
        sub_1D5D0A57C(v62);

        sub_1D5D0A57C(v62);
        sub_1D5D0A57C(v60);

        sub_1D5D0A57C(v60);
        sub_1D5D0A57C(v58);

        sub_1D5D0A57C(v58);
        sub_1D5D0A57C(v56);

        sub_1D5D0A57C(v56);
        v28 = 1;
        goto LABEL_39;
      }

      v30 = *(v27 + 16);
      v51 = *(v27 + 24);
      v52 = v30;
      if (v30)
      {
        if (v30 == 1)
        {

          sub_1D5D0A57C(v8);
          sub_1D5D0A57C(v9);

          sub_1D5D0A57C(v9);
          sub_1D5D0A57C(v13);

          sub_1D5D0A57C(v13);
          sub_1D5D0A57C(v62);

          sub_1D5D0A57C(v62);
          sub_1D5D0A57C(v60);

          sub_1D5D0A57C(v60);
          sub_1D5D0A57C(v58);

          sub_1D5D0A57C(v58);
          sub_1D5D0A57C(v56);

          sub_1D5D0A57C(v56);
          sub_1D5D0A57C(v54);

          sub_1D5D0A57C(v54);
          v31 = 1;
          goto LABEL_44;
        }

        v33 = *(v30 + 16);
        v49 = *(v30 + 24);
        v50 = v33;
        if (v33)
        {
          if (v33 == 1)
          {

            sub_1D5D0A57C(v8);
            sub_1D5D0A57C(v9);

            sub_1D5D0A57C(v9);
            sub_1D5D0A57C(v13);

            sub_1D5D0A57C(v13);
            sub_1D5D0A57C(v62);

            sub_1D5D0A57C(v62);
            sub_1D5D0A57C(v60);

            sub_1D5D0A57C(v60);
            sub_1D5D0A57C(v58);

            sub_1D5D0A57C(v58);
            sub_1D5D0A57C(v56);

            sub_1D5D0A57C(v56);
            sub_1D5D0A57C(v54);

            sub_1D5D0A57C(v54);
            sub_1D5D0A57C(v52);

            sub_1D5D0A57C(v52);
            v34 = 1;
            goto LABEL_49;
          }

          v36 = *(v33 + 16);
          v47 = *(v33 + 24);
          v48 = v36;
          if (v36)
          {
            if (v36 == 1)
            {

              sub_1D5D0A57C(v8);
              sub_1D5D0A57C(v9);

              sub_1D5D0A57C(v9);
              sub_1D5D0A57C(v13);

              sub_1D5D0A57C(v13);
              sub_1D5D0A57C(v62);

              sub_1D5D0A57C(v62);
              sub_1D5D0A57C(v60);

              sub_1D5D0A57C(v60);
              sub_1D5D0A57C(v58);

              sub_1D5D0A57C(v58);
              sub_1D5D0A57C(v56);

              sub_1D5D0A57C(v56);
              sub_1D5D0A57C(v54);

              sub_1D5D0A57C(v54);
              sub_1D5D0A57C(v52);

              sub_1D5D0A57C(v52);
              sub_1D5D0A57C(v50);

              sub_1D5D0A57C(v50);
              v37 = 1;
              goto LABEL_54;
            }

            v45 = *(v36 + 16);
            v46 = *(v36 + 24);

            sub_1D5D0A57C(v8);
            sub_1D5D0A57C(v9);

            sub_1D5D0A57C(v9);
            sub_1D5D0A57C(v13);

            sub_1D5D0A57C(v13);
            sub_1D5D0A57C(v62);

            sub_1D5D0A57C(v62);
            sub_1D5D0A57C(v60);

            sub_1D5D0A57C(v60);
            sub_1D5D0A57C(v58);

            sub_1D5D0A57C(v58);
            sub_1D5D0A57C(v56);

            sub_1D5D0A57C(v56);
            sub_1D5D0A57C(v54);

            sub_1D5D0A57C(v54);
            sub_1D5D0A57C(v52);

            sub_1D5D0A57C(v52);
            sub_1D5D0A57C(v50);

            sub_1D5D0A57C(v50);
            sub_1D5D0A57C(v48);

            sub_1D5D0A57C(v48);
            sub_1D5D0A57C(v45);

            sub_1D62490FC(v65, a2, v45, v46);
            if (!v3)
            {
              sub_1D5D0A58C(v45);

              sub_1D5D0A58C(v48);
              v38 = v47;
              goto LABEL_57;
            }

            sub_1D5D0A58C(v48);

            sub_1D5D0A58C(v50);

            sub_1D5D0A58C(v52);

            sub_1D5D0A58C(v54);

            sub_1D5D0A58C(v56);

            sub_1D5D0A58C(v58);

            sub_1D5D0A58C(v60);

            sub_1D5D0A58C(v62);

            sub_1D5D0A58C(v13);

            sub_1D5D0A58C(v9);

            sub_1D5D0A58C(v45);

            sub_1D5D0A58C(v48);
LABEL_95:
            sub_1D5D0A58C(v50);
LABEL_96:
            sub_1D5D0A58C(v52);
            v44 = v54;
LABEL_97:
            sub_1D5D0A58C(v44);
            v39 = v64;
            v40 = v62;
            v41 = v60;
            v43 = v58;
LABEL_98:
            sub_1D5D0A58C(v56);
            sub_1D5D0A58C(v43);
            goto LABEL_82;
          }

          sub_1D5D0A57C(v8);
          sub_1D5D0A57C(v9);

          sub_1D5D0A57C(v9);
          sub_1D5D0A57C(v13);

          sub_1D5D0A57C(v13);
          sub_1D5D0A57C(v62);

          sub_1D5D0A57C(v62);
          sub_1D5D0A57C(v60);

          sub_1D5D0A57C(v60);
          sub_1D5D0A57C(v58);

          sub_1D5D0A57C(v58);
          sub_1D5D0A57C(v56);

          sub_1D5D0A57C(v56);
          sub_1D5D0A57C(v54);

          sub_1D5D0A57C(v54);
          sub_1D5D0A57C(v52);

          sub_1D5D0A57C(v52);
          sub_1D5D0A57C(v50);

          sub_1D5D0A57C(v50);
          v37 = 0;
LABEL_54:
          sub_1D5D0A57C(v37);
          v38 = v47;

LABEL_57:

          sub_1D620D084(v65, a2, v38);
          if (v3)
          {
            sub_1D5D0A58C(v48);

            sub_1D5D0A58C(v50);

            sub_1D5D0A58C(v52);

            sub_1D5D0A58C(v54);

            sub_1D5D0A58C(v56);

            sub_1D5D0A58C(v58);

            sub_1D5D0A58C(v60);

            sub_1D5D0A58C(v62);

            sub_1D5D0A58C(v64);

            sub_1D5D0A58C(v9);

            goto LABEL_95;
          }

          sub_1D5D0A58C(v48);

          sub_1D5D0A58C(v50);
          v35 = v49;
        }

        else
        {

          sub_1D5D0A57C(v8);
          sub_1D5D0A57C(v9);

          sub_1D5D0A57C(v9);
          sub_1D5D0A57C(v13);

          sub_1D5D0A57C(v13);
          sub_1D5D0A57C(v62);

          sub_1D5D0A57C(v62);
          sub_1D5D0A57C(v60);

          sub_1D5D0A57C(v60);
          sub_1D5D0A57C(v58);

          sub_1D5D0A57C(v58);
          sub_1D5D0A57C(v56);

          sub_1D5D0A57C(v56);
          sub_1D5D0A57C(v54);

          sub_1D5D0A57C(v54);
          sub_1D5D0A57C(v52);

          sub_1D5D0A57C(v52);
          v34 = 0;
LABEL_49:
          sub_1D5D0A57C(v34);
          v35 = v49;
        }

        sub_1D620D084(v65, a2, v35);
        if (v3)
        {
          sub_1D5D0A58C(v50);

          sub_1D5D0A58C(v52);

          sub_1D5D0A58C(v54);

          sub_1D5D0A58C(v56);

          sub_1D5D0A58C(v58);

          sub_1D5D0A58C(v60);

          sub_1D5D0A58C(v62);

          sub_1D5D0A58C(v64);

          sub_1D5D0A58C(v9);

          goto LABEL_96;
        }

        sub_1D5D0A58C(v50);

        sub_1D5D0A58C(v52);
        v32 = v51;
      }

      else
      {

        sub_1D5D0A57C(v8);
        sub_1D5D0A57C(v9);

        sub_1D5D0A57C(v9);
        sub_1D5D0A57C(v13);

        sub_1D5D0A57C(v13);
        sub_1D5D0A57C(v62);

        sub_1D5D0A57C(v62);
        sub_1D5D0A57C(v60);

        sub_1D5D0A57C(v60);
        sub_1D5D0A57C(v58);

        sub_1D5D0A57C(v58);
        sub_1D5D0A57C(v56);

        sub_1D5D0A57C(v56);
        sub_1D5D0A57C(v54);

        sub_1D5D0A57C(v54);
        v31 = 0;
LABEL_44:
        sub_1D5D0A57C(v31);
        v32 = v51;
      }

      sub_1D620D084(v65, a2, v32);
      if (v3)
      {
        sub_1D5D0A58C(v52);

        v44 = v54;
        sub_1D5D0A58C(v54);

        sub_1D5D0A58C(v56);

        sub_1D5D0A58C(v58);

        sub_1D5D0A58C(v60);

        sub_1D5D0A58C(v62);

        sub_1D5D0A58C(v64);

        sub_1D5D0A58C(v9);

        goto LABEL_97;
      }

      sub_1D5D0A58C(v52);

      sub_1D5D0A58C(v54);
      v29 = v53;
    }

    else
    {

      sub_1D5D0A57C(v8);
      sub_1D5D0A57C(v9);

      sub_1D5D0A57C(v9);
      sub_1D5D0A57C(v13);

      sub_1D5D0A57C(v13);
      sub_1D5D0A57C(v62);

      sub_1D5D0A57C(v62);
      sub_1D5D0A57C(v60);

      sub_1D5D0A57C(v60);
      sub_1D5D0A57C(v58);

      sub_1D5D0A57C(v58);
      sub_1D5D0A57C(v56);

      sub_1D5D0A57C(v56);
      v28 = 0;
LABEL_39:
      sub_1D5D0A57C(v28);
      v29 = v53;
    }

    sub_1D620D084(v65, a2, v29);
    if (v3)
    {
      sub_1D5D0A58C(v54);

      sub_1D5D0A58C(v56);

      sub_1D5D0A58C(v58);

      v41 = v60;
      sub_1D5D0A58C(v60);

      v40 = v62;
      sub_1D5D0A58C(v62);

      v39 = v64;
      sub_1D5D0A58C(v64);

      sub_1D5D0A58C(v9);

      v43 = v58;

      goto LABEL_98;
    }

    sub_1D5D0A58C(v54);

    sub_1D5D0A58C(v56);
    v26 = v55;
  }

  else
  {

    sub_1D5D0A57C(v8);
    sub_1D5D0A57C(v9);

    sub_1D5D0A57C(v9);
    sub_1D5D0A57C(v13);

    sub_1D5D0A57C(v13);
    sub_1D5D0A57C(v62);

    sub_1D5D0A57C(v62);
    sub_1D5D0A57C(v60);

    sub_1D5D0A57C(v60);
    sub_1D5D0A57C(v58);

    sub_1D5D0A57C(v58);
    v25 = 0;
LABEL_34:
    sub_1D5D0A57C(v25);
    v26 = v55;
  }

  sub_1D620D084(v65, a2, v26);
  if (!v3)
  {

    sub_1D5D0A58C(v56);

    sub_1D5D0A58C(v58);
    v23 = v57;
    goto LABEL_67;
  }

  sub_1D5D0A58C(v56);

  sub_1D5D0A58C(v58);

  sub_1D5D0A58C(v60);

  v40 = v62;
  sub_1D5D0A58C(v62);

  v39 = v64;
  sub_1D5D0A58C(v64);

  sub_1D5D0A58C(v9);

  sub_1D5D0A58C(v58);
  v42 = v60;
LABEL_84:
  sub_1D5D0A58C(v42);
LABEL_85:
  sub_1D5D0A58C(v40);
LABEL_86:
  sub_1D5D0A58C(v39);
LABEL_87:
  sub_1D5D0A58C(v9);
LABEL_88:

  return sub_1D5D0A58C(v8);
}