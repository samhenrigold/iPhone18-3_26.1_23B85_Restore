uint64_t sub_1C46DF8E4(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1C46DF908, 0, 0);
}

uint64_t sub_1C46DF908()
{
  sub_1C43FCF70();
  **(v0 + 16) = *(v0 + 24);
  sub_1C43FBCF0();
  v3 = v1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  return v3();
}

uint64_t sub_1C46DF96C(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 56) = a6;
  *(v7 + 64) = v6;
  *(v7 + 40) = a4;
  *(v7 + 48) = a5;
  *(v7 + 32) = a2;
  *(v7 + 72) = *a3;
  return MEMORY[0x1EEE6DFA0](sub_1C46DF99C, 0, 0);
}

uint64_t sub_1C46DF99C()
{
  v1 = *(v0 + 48);
  v2 = swift_task_alloc();
  v9 = *(v0 + 72);
  *(v2 + 16) = v1;
  v3 = sub_1C49BFB70();
  *(v0 + 88) = v3;

  *(v0 + 16) = v9;
  v4 = swift_task_alloc();
  *(v0 + 96) = v4;
  *v4 = v0;
  v4[1] = sub_1C46DFAA4;
  v5 = sub_1C440F4D4(*(v0 + 32));

  return sub_1C46113D0(v5, (v0 + 16), v6, v7, v3);
}

uint64_t sub_1C46DFAA4()
{
  sub_1C43FCF70();
  v3 = v2;
  sub_1C43FBDE4();
  v5 = v4;
  v6 = *v1;
  sub_1C43FBDAC();
  *v7 = v6;
  *(v5 + 104) = v0;

  if (!v0)
  {
    *(v5 + 112) = v3;
  }

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C46DFBB8()
{
  v33 = v0;
  v1 = v0[14];
  v2 = v0[11];
  v3 = *(v2 + 16);
  if (v3)
  {
    v27 = v0[14];
    v4 = v0[13];
    v29 = v0[6];
    v5 = (v2 + 40);
    while (1)
    {
      v31 = v3;
      v6 = v0[6];
      v7 = *v5;
      v8 = *(v29 + 24);
      v9 = *(v29 + 32);
      sub_1C4409678(v6, v8);
      sub_1C4408758();
      ObjectType = swift_getObjectType();
      v11 = *(v9 + 16);
      v12 = swift_unknownObjectRetain();
      v11(v12, ObjectType, v7, v8, v9);
      if (v4)
      {
        if (qword_1EDDFA668 != -1)
        {
          sub_1C4406758();
          swift_once();
        }

        v13 = sub_1C4F00978();
        sub_1C442B738(v13, qword_1EDE2DDE0);
        sub_1C4408758();
        swift_unknownObjectRetain();
        v14 = v4;
        v15 = sub_1C4F00968();
        v16 = sub_1C4F01CE8();
        swift_unknownObjectRelease();

        if (!os_log_type_enabled(v15, v16))
        {

          swift_unknownObjectRelease();
          goto LABEL_10;
        }

        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v28 = sub_1C43FFD34();
        v32 = v28;
        *v17 = 136315394;
        swift_getObjectType();
        v19 = (*(v7 + 24))();
        v20 = sub_1C460AEA8(v19);
        v22 = sub_1C441D828(v20, v21, &v32);

        *(v17 + 4) = v22;
        *(v17 + 12) = 2112;
        v23 = v4;
        v24 = _swift_stdlib_bridgeErrorToNSError();
        *(v17 + 14) = v24;
        *v18 = v24;
        _os_log_impl(&dword_1C43F8000, v15, v16, "EntityInteractionHistogramViewGenerator: Error updating %s - %@", v17, 0x16u);
        sub_1C446F170(v18, &qword_1EC0BDA00, &qword_1C4F10D30);
        sub_1C43FBE2C();
        sub_1C440962C(v28);
        sub_1C43FBE2C();
        sub_1C43FFD18();
      }

      swift_unknownObjectRelease();
LABEL_10:
      v4 = 0;
      v5 += 2;
      v0 = v30;
      v3 = v31 - 1;
      if (v31 == 1)
      {
        v1 = v27;
        break;
      }
    }
  }

  sub_1C43FBCF0();

  return v25(v1);
}

uint64_t sub_1C46DFE78()
{
  if (qword_1EDDFA668 != -1)
  {
    sub_1C4406758();
    swift_once();
  }

  v1 = v0[13];
  v22 = sub_1C4F00978();
  sub_1C442B738(v22, qword_1EDE2DDE0);
  v2 = v1;
  v3 = sub_1C4F00968();
  v4 = sub_1C4F01CE8();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[13];
  if (v5)
  {
    v7 = sub_1C43FD084();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1C43F8000, v3, v4, "EntityInteractionHistogramViewGenerator: Error updating histograms - %@", v7, 0xCu);
    sub_1C446F170(v8, &qword_1EC0BDA00, &qword_1C4F10D30);
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }

  else
  {
  }

  v11 = v0[11];
  v12 = *(v11 + 16);
  if (v12)
  {
    v23 = v0[6];
    v13 = (v11 + 40);
    v24 = v0;
    do
    {
      v25 = v12;
      v14 = *v13;
      v15 = *(v23 + 24);
      v16 = *(v23 + 32);
      sub_1C4409678(v0[6], v15);
      sub_1C4408758();
      ObjectType = swift_getObjectType();
      v18 = *(v16 + 16);
      v19 = swift_unknownObjectRetain();
      v18(v19, ObjectType, v14, v15, v16);
      swift_unknownObjectRelease();
      v13 += 2;
      v0 = v24;
      v12 = v25 - 1;
    }

    while (v25 != 1);
  }

  sub_1C43FBCF0();

  return v20(0);
}

void sub_1C46E0240(char *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v33 = a3;
  v5 = sub_1C4EFDAB8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = a2[3];
  v11 = a2[4];
  sub_1C4409678(a2, v10);
  v12 = sub_1C4609954(v9);
  v14 = v13;
  (*(v6 + 104))(v8, *MEMORY[0x1E69A9418], v5);
  v15 = v32;
  v16 = (*(v11 + 8))(v12, v8, v12, v14, v10, v11);
  if (v15)
  {
    (*(v6 + 8))(v8, v5);
    if (qword_1EDDFA668 != -1)
    {
      swift_once();
    }

    v17 = sub_1C4F00978();
    sub_1C442B738(v17, qword_1EDE2DDE0);
    v18 = v15;
    v19 = sub_1C4F00968();
    v20 = sub_1C4F01CE8();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v34 = v23;
      *v21 = 136315394;
      v24 = sub_1C460AEA8(v9);
      v26 = sub_1C441D828(v24, v25, &v34);

      *(v21 + 4) = v26;
      *(v21 + 12) = 2112;
      v27 = v15;
      v28 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 14) = v28;
      *v22 = v28;
      _os_log_impl(&dword_1C43F8000, v19, v20, "EntityInteractionHistogramViewGenerator: Error updating %s - %@", v21, 0x16u);
      sub_1C446F170(v22, &qword_1EC0BDA00, &qword_1C4F10D30);
      MEMORY[0x1C6942830](v22, -1, -1);
      sub_1C440962C(v23);
      MEMORY[0x1C6942830](v23, -1, -1);
      MEMORY[0x1C6942830](v21, -1, -1);
    }

    else
    {
    }

    v31 = v33;
    *v33 = 0;
    v31[1] = 0;
  }

  else
  {
    v29 = v16;
    (*(v6 + 8))(v8, v5);
    v30 = v33;
    *v33 = v29;
    v30[1] = v14;
  }
}

void *sub_1C46E056C()
{
  sub_1C46E07D0((v0 + 2));

  sub_1C440962C(v0 + 12);
  sub_1C440962C(v0 + 17);
  sub_1C440962C(v0 + 22);

  return v0;
}

uint64_t sub_1C46E05CC()
{
  sub_1C46E056C();

  return swift_deallocClassInstance();
}

uint64_t sub_1C46E0624(uint64_t a1, void *a2)
{
  v6 = sub_1C4EF9CD8();
  sub_1C43FCF7C(v6);
  v8 = v7;
  v10 = v9;
  v11 = *(v8 + 80);
  v12 = (v11 + 56) & ~v11;
  v13 = (*(v10 + 64) + v11 + v12) & ~v11;
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_1C442E8C4;

  return sub_1C46DF51C(a1, a2, v2 + 16, v2 + v12, v2 + v13);
}

uint64_t sub_1C46E0738@<X0>(void *a1@<X8>)
{
  sub_1C456902C(&qword_1EC0BB4D0, &unk_1C4F20380);

  return sub_1C46F92F4(a1);
}

uint64_t sub_1C46E0824(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, __int128 *a5, _OWORD *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v28 = a7;
  v29 = a8;
  v27 = a6;
  v15 = *(a10 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v26 - v20;
  (*(v15 + 32))(&v26 - v20, v22, a10, v19);
  v23 = swift_allocObject();
  (*(v15 + 16))(v17, v21, a10);
  v24 = sub_1C46E09B8(a1, a2, a3, v17, a5, v27, v28, v29, v23, a10, a11);
  (*(v15 + 8))(v21, a10);
  return v24;
}

uint64_t sub_1C46E09B8(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, __int128 *a5, _OWORD *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *(a9 + 160) = a10;
  *(a9 + 168) = a11;
  v19 = sub_1C4422F90((a9 + 136));
  (*(*(a10 - 8) + 32))(v19, a4, a10);
  *(a9 + 80) = a1;
  *(a9 + 88) = a2;
  sub_1C441D670(a3, a9 + 96);
  sub_1C441D670(a5, a9 + 176);
  v20 = a6[1];
  *(a9 + 16) = *a6;
  *(a9 + 32) = v20;
  v21 = a6[3];
  *(a9 + 48) = a6[2];
  *(a9 + 64) = v21;
  *(a9 + 216) = a7;
  *(a9 + 224) = a8;
  return a9;
}

uint64_t OrderByDirection.hashValue.getter()
{
  v1 = *v0;
  sub_1C4F02AF8();
  MEMORY[0x1C69417F0](v1);
  return sub_1C4F02B68();
}

uint64_t Condition.condition.getter()
{
  v1 = *v0;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v1;
}

uint64_t sub_1C46E0B60(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0B9438, &unk_1C4F203C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 Condition.init(_:bindingValue:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = a1;
  *(a4 + 8) = a2;
  result = *a3;
  v5 = *(a3 + 16);
  *(a4 + 16) = *a3;
  *(a4 + 32) = v5;
  *(a4 + 48) = *(a3 + 32);
  return result;
}

uint64_t sub_1C46E0BE8()
{
  v25[0] = 0;
  v25[1] = 0xE000000000000000;
  sub_1C4F02248();
  v26 = 0;
  v27 = 0xE000000000000000;
  MEMORY[0x1C6940010](0xD000000000000014, 0x80000001C4F92810);
  MEMORY[0x1C6940010](v0[11], v0[12]);
  MEMORY[0x1C6940010](0xD000000000000011, 0x80000001C4F92830);
  sub_1C440D164((v0 + 6), v25);
  v1 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v2 = MEMORY[0x1E69E6158];
  v3 = MEMORY[0x1C6940380](v1, MEMORY[0x1E69E6158]);
  v5 = v4;

  MEMORY[0x1C6940010](v3, v5);

  MEMORY[0x1C6940010](0x3A6863726165530ALL, 0xE900000000000020);
  v6 = v0[3];
  v24[0] = v0[2];
  v24[1] = v6;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C456902C(&qword_1EC0C2BD0, &qword_1C4F0FF50);
  v7 = sub_1C4F01198();
  MEMORY[0x1C6940010](v7);

  MEMORY[0x1C6940010](0x737265746C69460ALL, 0xEA0000000000203ALL);
  sub_1C440D164((v0 + 5), v24);
  v8 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v9 = MEMORY[0x1C6940380](v8, &type metadata for Condition);
  v11 = v10;

  MEMORY[0x1C6940010](v9, v11);

  MEMORY[0x1C6940010](0x794270756F72670ALL, 0xEA0000000000203ALL);
  sub_1C440D164((v0 + 7), v23);
  v12 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v13 = MEMORY[0x1C6940380](v12, v2);
  v15 = v14;

  MEMORY[0x1C6940010](v13, v15);

  MEMORY[0x1C6940010](0x3A676E697661680ALL, 0xE900000000000020);
  sub_1C440D164((v0 + 8), v22);
  v16 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v17 = MEMORY[0x1C6940380](v16, &type metadata for Condition);
  v19 = v18;

  MEMORY[0x1C6940010](v17, v19);

  MEMORY[0x1C6940010](0x203A74696D696C0ALL, 0xE800000000000000);
  sub_1C456902C(&qword_1EC0BB4E8, &qword_1C4F203D0);
  v20 = sub_1C4F01198();
  MEMORY[0x1C6940010](v20);

  MEMORY[0x1C6940010](10506, 0xE200000000000000);
  return v26;
}

uint64_t sub_1C46E0EC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v4 = MEMORY[0x1E69E7CC0];
  *(v3 + 32) = MEMORY[0x1E69E7CC0];
  *(v3 + 40) = v4;
  *(v3 + 48) = v4;
  *(v3 + 56) = v4;
  *(v3 + 64) = v4;
  *(v3 + 72) = 0;
  *(v3 + 80) = 1;
  *(v3 + 88) = a1;
  *(v3 + 96) = a2;
  *(v3 + 104) = a3;
  return v3;
}

uint64_t static EntityQuery.read(table:useCase:)(uint64_t a1, uint64_t a2, void *a3)
{
  type metadata accessor for EntityQuery();
  swift_allocObject();
  v6 = sub_1C46E0EC8(a1, a2, a3);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v7 = a3;
  return v6;
}

uint64_t sub_1C46E0F64(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 24))
  {
    sub_1C46E198C();
    swift_allocError();
    *v3 = 0xD00000000000005ALL;
    *(v3 + 8) = 0x80000001C4F92850;
    *(v3 + 16) = 0;
    swift_willThrow();
  }

  else
  {
    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  return v2;
}

uint64_t sub_1C46E0FF4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1C4409B14(v2 + 40, a2);
  sub_1C458911C();
  v4 = *(*(v2 + 40) + 16);
  sub_1C4589CD4();
  v5 = *(v2 + 40);
  sub_1C442C838(v4 + 1);
  *(v3 + 40) = v5;
  swift_endAccess();
}

uint64_t sub_1C46E106C(uint64_t a1, uint64_t a2)
{
  sub_1C4409B14(v2 + 48, a2);
  v3 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C449ADBC(v3);
  swift_endAccess();
}

uint64_t sub_1C46E10C8(uint64_t a1, uint64_t a2, char *a3)
{
  v6 = *a3;
  sub_1C4409B14(v3 + 32, a2);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4589174();
  v7 = *(*(v3 + 32) + 16);
  sub_1C4589D24();
  v8 = *(v3 + 32);
  *(v8 + 16) = v7 + 1;
  v9 = v8 + 24 * v7;
  *(v9 + 32) = a1;
  *(v9 + 40) = a2;
  *(v9 + 48) = v6;
  *(v3 + 32) = v8;
  swift_endAccess();
}

uint64_t sub_1C46E1168(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1C4409B14(v2 + 64, a2);
  sub_1C458911C();
  v4 = *(*(v2 + 64) + 16);
  sub_1C4589CD4();
  v5 = *(v2 + 64);
  sub_1C442C838(v4 + 1);
  *(v3 + 64) = v5;
  swift_endAccess();
}

uint64_t sub_1C46E11E0(uint64_t a1)
{
  *(v1 + 72) = a1;
  *(v1 + 80) = 0;
}

uint64_t sub_1C46E11F0(uint64_t a1, uint64_t a2)
{
  sub_1C4409B14(v2 + 56, a2);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4588BAC();
  v5 = *(*(v2 + 56) + 16);
  sub_1C45897E8();
  v6 = *(v2 + 56);
  *(v6 + 16) = v5 + 1;
  v7 = v6 + 16 * v5;
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;
  *(v2 + 56) = v6;
  swift_endAccess();
}

uint64_t sub_1C46E1284(char a1, uint64_t a2, uint64_t a3)
{
  v8 = type metadata accessor for Configuration(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) != 0 || a2)
  {
    sub_1C4F00688();
    v13 = *(v3 + 104);
    static Configuration.intelligenceplatformd.getter();
    v14 = static SQLConnection.createConnection(for:config:)(v13);
    if (v4)
    {
      return sub_1C4467948(v10);
    }

    else
    {
      v15 = v14;
      sub_1C4467948(v10);
      v16 = sub_1C4F005A8();
      swift_allocObject();

      v17 = sub_1C4F00598();
      *(&v47 + 1) = v16;
      v48 = MEMORY[0x1E69AA790];
      *&v46 = v17;

      sub_1C4F00678();
      sub_1C440962C(&v46);
      v49 = MEMORY[0x1E69E7CC0];
      result = sub_1C4ADB014(v3);
      v18 = result;
      v19 = *(result + 16);
      if (v19)
      {
        v33[1] = v17;
        v38 = result;
        v39 = a2;
        v20 = 0;
        v43 = result + 32;
        v37 = a1 & 1;
        v34 = a3;
        v35 = v15;
        v36 = v19;
        while (v20 < *(v18 + 16))
        {
          v21 = (v43 + 32 * v20);
          v22 = v21[1];
          if (*(v21 + 24) == 1)
          {
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            sub_1C4F005F8();
          }

          else
          {
            v23 = v21[2];
            v24 = *(v23 + 16);
            if (v24)
            {
              v41 = *v21;
              v45 = MEMORY[0x1E69E7CC0];
              v42 = v22;
              _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
              _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
              sub_1C459DF48();
              v25 = v23;
              v26 = v45;
              v40 = v25;
              v27 = v25 + 32;
              do
              {
                sub_1C442E860(v27, v44);
                sub_1C456902C(&qword_1EC0B8CB0, &qword_1C4F0E0E8);
                sub_1C456902C(&qword_1EC0B9438, &unk_1C4F203C0);
                swift_dynamicCast();
                v45 = v26;
                v28 = *(v26 + 16);
                if (v28 >= *(v26 + 24) >> 1)
                {
                  sub_1C459DF48();
                  v26 = v45;
                }

                *(v26 + 16) = v28 + 1;
                v29 = v26 + 40 * v28;
                v30 = v46;
                v31 = v47;
                *(v29 + 64) = v48;
                *(v29 + 32) = v30;
                *(v29 + 48) = v31;
                v27 += 40;
                --v24;
              }

              while (v24);

              a3 = v34;
            }

            else
            {
              v32 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            }

            MEMORY[0x1EEE9AC00](v32);
            LOBYTE(v33[-4]) = v37;
            v33[-3] = &v49;
            v33[-2] = v39;
            v33[-1] = a3;
            sub_1C4F00658();

            v19 = v36;
            v18 = v38;
          }

          if (++v20 == v19)
          {
            goto LABEL_20;
          }
        }

        __break(1u);
      }

      else
      {
LABEL_20:

        return v49;
      }
    }
  }

  else
  {
    sub_1C46E198C();
    swift_allocError();
    *v11 = 0xD000000000000047;
    *(v11 + 8) = 0x80000001C4F92930;
    *(v11 + 16) = 1;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1C46E1738(uint64_t result, char a2, uint64_t *a3, void (*a4)(uint64_t), uint64_t a5)
{
  v8 = result;
  if (a2)
  {
    while (1)
    {
      result = sub_1C4F006A8();
      if (v5)
      {
        break;
      }

      if ((result & 1) == 0)
      {
        goto LABEL_9;
      }

      v10 = sub_1C4F00698();
      v11 = *a3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a3 = v11;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1C458D244();
        v11 = v14;
        *a3 = v14;
      }

      v13 = *(v11 + 16);
      if (v13 >= *(v11 + 24) >> 1)
      {
        sub_1C458D244();
        v11 = v15;
        *a3 = v15;
      }

      *(v11 + 16) = v13 + 1;
      *(v11 + 8 * v13 + 32) = v10;
    }
  }

  else
  {
LABEL_9:
    if (a4)
    {

      a4(v8);
      return sub_1C44239FC(a4, a5);
    }
  }

  return result;
}

uint64_t sub_1C46E1858(uint64_t a1, uint64_t a2)
{
  result = sub_1C46E1284(0, a1, a2);
  if (!v2)
  {
  }

  return result;
}

uint64_t EntityQuery.deinit()
{

  return v0;
}

uint64_t EntityQuery.__deallocating_deinit()
{
  EntityQuery.deinit();

  return swift_deallocClassInstance();
}

unint64_t sub_1C46E198C()
{
  result = qword_1EC0BB4F0;
  if (!qword_1EC0BB4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BB4F0);
  }

  return result;
}

unint64_t sub_1C46E1A1C()
{
  result = qword_1EC0BB4F8;
  if (!qword_1EC0BB4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BB4F8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for OrderByDirection(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C46E1B48(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1C46E1D84(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C46E1DC4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t sub_1C46E1E44@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C456902C(&qword_1EC0BB690, &qword_1C4F20BF0);
  sub_1C43FBD18(v3);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_1C4402FE0();
  v6 = type metadata accessor for EntityRelevanceDataCollection(v5);
  sub_1C4405A7C(*(v6 + 28));
  type metadata accessor for EntityRelevanceEntityInformation(0);
  sub_1C440A6F0(v1);
  if (!v7)
  {
    return sub_1C46ECFD4(v1, a1);
  }

  sub_1C46E1F30(a1);
  result = sub_1C440A6F0(v1);
  if (!v7)
  {
    return sub_1C4420C3C(v1, &qword_1EC0BB690, &qword_1C4F20BF0);
  }

  return result;
}

void sub_1C46E1F30(uint64_t a2@<X8>)
{
  sub_1C4F00318();
  v3 = type metadata accessor for EntityRelevanceEntityInformation(0);
  v4 = a2 + *(v3 + 20);
  *v4 = 0;
  *(v4 + 8) = 1;
  sub_1C4401738(*(v3 + 24));
  sub_1C441C954(*(v5 + 28));
  sub_1C441C954(*(v6 + 32));
  sub_1C441C954(*(v7 + 36));
  sub_1C4401738(*(v8 + 40));
  sub_1C4401738(*(v9 + 44));
}

uint64_t sub_1C46E1FA0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C456902C(&qword_1EC0BB688, &unk_1C4F20AB0);
  sub_1C43FBD18(v3);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_1C4402FE0();
  v6 = type metadata accessor for EntityRelevanceDataCollection(v5);
  sub_1C4405A7C(*(v6 + 32));
  v7 = type metadata accessor for EntityRelevanceEntityRelevanceFeatures(0);
  sub_1C440A6F0(v1);
  if (v8)
  {
    sub_1C4F00318();
    v9 = *(v7 + 20);
    if (qword_1EC0B6928 != -1)
    {
      sub_1C44332C4(&qword_1EC0B6928);
    }

    *(a1 + v9) = qword_1EC0BB500;
    v10 = sub_1C44157D4(v1, 1, v7);

    if (v10 != 1)
    {
      return sub_1C4420C3C(v1, &qword_1EC0BB688, &unk_1C4F20AB0);
    }
  }

  else
  {
    sub_1C4411B58();
    return sub_1C46ECFD4(v1, a1);
  }

  return result;
}

uint64_t sub_1C46E20C4@<X0>(uint64_t a2@<X8>)
{
  sub_1C4F00318();
  v3 = *(type metadata accessor for EntityRelevanceEntityRelevanceFeatures(0) + 20);
  if (qword_1EC0B6928 != -1)
  {
    sub_1C44332C4(&qword_1EC0B6928);
  }

  *(a2 + v3) = qword_1EC0BB500;
}

uint64_t sub_1C46E2130()
{
  v2 = sub_1C4403FC0();
  v3 = *(type metadata accessor for EntityRelevanceDataCollection(v2) + 32);
  sub_1C4420C3C(v1 + v3, &qword_1EC0BB688, &unk_1C4F20AB0);
  sub_1C4411B58();
  sub_1C46ECFD4(v0, v1 + v3);
  v4 = type metadata accessor for EntityRelevanceEntityRelevanceFeatures(0);

  return sub_1C440BAA8(v1 + v3, 0, 1, v4);
}

uint64_t sub_1C46E21B0@<X0>(uint64_t a2@<X8>)
{
  sub_1C4F00318();
  v3 = type metadata accessor for EntityRelevanceDataCollection(0);
  sub_1C4401738(v3[5]);
  sub_1C4401738(*(v4 + 24));
  v6 = *(v5 + 28);
  v7 = type metadata accessor for EntityRelevanceEntityInformation(0);
  sub_1C440BAA8(a2 + v6, 1, 1, v7);
  v8 = v3[8];
  v9 = type metadata accessor for EntityRelevanceEntityRelevanceFeatures(0);
  result = sub_1C440BAA8(a2 + v8, 1, 1, v9);
  v11 = a2 + v3[9];
  *v11 = 0;
  *(v11 + 8) = 1;
  return result;
}

uint64_t sub_1C46E2558@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v5);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - v7;
  v9 = *(v2 + *(type metadata accessor for EntityRelevanceEntityRelevanceFeatures(0) + 20));
  v10 = *a1;
  swift_beginAccess();
  sub_1C446C964(v9 + v10, v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v11 = type metadata accessor for FeatureValue(0);
  sub_1C440A6F0(v8);
  if (!v12)
  {
    return sub_1C46ECFD4(v8, a2);
  }

  v13 = MEMORY[0x1E69E7CC0];
  *a2 = MEMORY[0x1E69E7CC0];
  a2[1] = v13;
  a2[2] = v13;
  sub_1C4F00318();
  v14 = *(v11 + 32);
  v15 = type metadata accessor for FeatureValue.BasicValue(0);
  sub_1C440BAA8(a2 + v14, 1, 1, v15);
  result = sub_1C440A6F0(v8);
  if (!v12)
  {
    return sub_1C4420C3C(v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  return result;
}

uint64_t sub_1C46E26C4(uint64_t a1, uint64_t *a2)
{
  v4 = v2;
  v6 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v6);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v17 - v8;
  v10 = *(type metadata accessor for EntityRelevanceEntityRelevanceFeatures(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v2 + v10);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for EntityRelevanceEntityRelevanceFeatures._StorageClass(0);
    swift_allocObject();
    v13 = sub_1C4425064();
    v12 = sub_1C46E55D0(v13);
    *(v4 + v10) = v12;
  }

  sub_1C46ECFD4(a1, v9);
  v14 = type metadata accessor for FeatureValue(0);
  sub_1C440BAA8(v9, 0, 1, v14);
  v15 = *a2;
  swift_beginAccess();
  sub_1C46ED080(v9, v12 + v15);
  return swift_endAccess();
}

uint64_t sub_1C46E27F4()
{
  v0 = sub_1C4F004E8();
  sub_1C44F9918(v0, qword_1EC151BC8);
  sub_1C442B738(v0, qword_1EC151BC8);
  sub_1C456902C(&qword_1EC0BB698, &unk_1C4F20AC0);
  v1 = (sub_1C456902C(&qword_1EC0BB6A0, &qword_1C4F24070) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C4F13950;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "deviceID";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C4F004C8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "collectionID";
  *(v10 + 8) = 12;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "entityInformation";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "entityRelevanceFeatures";
  *(v14 + 1) = 23;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "protoVersion";
  *(v16 + 1) = 12;
  v16[16] = 2;
  v9();
  return sub_1C4F004D8();
}

uint64_t sub_1C46E2A74()
{
  sub_1C4411B70();
  while (1)
  {
    sub_1C43FE99C();
    result = sub_1C4F00378();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v3 = sub_1C4406AC8();
        sub_1C46E2B34(v3, v4, v5, v6);
        break;
      case 2:
        sub_1C4419408();
        sub_1C4417018();
        sub_1C46E3E74();
        break;
      case 3:
        v7 = sub_1C4406AC8();
        sub_1C46E2B98(v7, v8, v9, v10);
        break;
      case 4:
        v11 = sub_1C4406AC8();
        sub_1C46E2C4C(v11, v12, v13, v14);
        break;
      case 6:
        sub_1C4419408();
        sub_1C4417018();
        sub_1C46E3F84();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C46E2B98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for EntityRelevanceDataCollection(0);
  type metadata accessor for EntityRelevanceEntityInformation(0);
  sub_1C46ECC80(&qword_1EC0BB648, type metadata accessor for EntityRelevanceEntityInformation);
  return sub_1C4F003F8();
}

uint64_t sub_1C46E2C4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for EntityRelevanceDataCollection(0);
  type metadata accessor for EntityRelevanceEntityRelevanceFeatures(0);
  sub_1C46ECC80(&qword_1EC0BB628, type metadata accessor for EntityRelevanceEntityRelevanceFeatures);
  return sub_1C4F003F8();
}

uint64_t sub_1C46E2D00()
{
  sub_1C4405A6C();
  v1 = sub_1C43FEE60();
  result = sub_1C46E2D7C(v1, v2, v3, v4);
  if (!v0)
  {
    sub_1C4419408();
    sub_1C43FEE74();
    sub_1C46E41C0();
    v6 = sub_1C43FEE60();
    sub_1C46E2DF4(v6, v7, v8, v9);
    v10 = sub_1C43FEE60();
    sub_1C46E2FC8(v10, v11, v12, v13);
    sub_1C4419408();
    sub_1C43FEE74();
    sub_1C46E431C(v14, v15, v16, v17, v18);
    sub_1C43FE99C();
    return sub_1C4F00308();
  }

  return result;
}

uint64_t sub_1C46E2D7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for EntityRelevanceDataCollection(0);
  if (*(a1 + *(result + 20) + 8))
  {
    return sub_1C4F00498();
  }

  return result;
}

uint64_t sub_1C46E2DF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = sub_1C456902C(&qword_1EC0BB690, &qword_1C4F20BF0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for EntityRelevanceEntityInformation(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for EntityRelevanceDataCollection(0);
  sub_1C446C964(a1 + *(v11 + 28), v7, &qword_1EC0BB690, &qword_1C4F20BF0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BB690, &qword_1C4F20BF0);
  }

  sub_1C46ECFD4(v7, v10);
  sub_1C46ECC80(&qword_1EC0BB648, type metadata accessor for EntityRelevanceEntityInformation);
  sub_1C4F004B8();
  return sub_1C46ED02C();
}

uint64_t sub_1C46E2FC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = sub_1C456902C(&qword_1EC0BB688, &unk_1C4F20AB0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for EntityRelevanceEntityRelevanceFeatures(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for EntityRelevanceDataCollection(0);
  sub_1C446C964(a1 + *(v11 + 32), v7, &qword_1EC0BB688, &unk_1C4F20AB0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BB688, &unk_1C4F20AB0);
  }

  sub_1C46ECFD4(v7, v10);
  sub_1C46ECC80(&qword_1EC0BB628, type metadata accessor for EntityRelevanceEntityRelevanceFeatures);
  sub_1C4F004B8();
  return sub_1C46ED02C();
}

uint64_t sub_1C46E319C(uint64_t a1, uint64_t a2)
{
  v73 = type metadata accessor for EntityRelevanceEntityRelevanceFeatures(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBCC4();
  v71 = v7 - v6;
  v8 = sub_1C456902C(&qword_1EC0BB688, &unk_1C4F20AB0);
  sub_1C43FBD18(v8);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v9);
  v72 = &v68 - v10;
  v11 = sub_1C456902C(&qword_1EC0BB6A8, &qword_1C4F20AD0);
  sub_1C43FBCE0();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v12);
  v13 = sub_1C4402FE0();
  type metadata accessor for EntityRelevanceEntityInformation(v13);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBCC4();
  v17 = v16 - v15;
  v18 = sub_1C456902C(&qword_1EC0BB690, &qword_1C4F20BF0);
  sub_1C43FBD18(v18);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v68 - v20;
  v22 = sub_1C456902C(&qword_1EC0BB6B0, &qword_1C4F20AD8);
  sub_1C43FBCE0();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v68 - v24;
  v26 = type metadata accessor for EntityRelevanceDataCollection(0);
  sub_1C4409BE8();
  if (v29)
  {
    if (!v27)
    {
      goto LABEL_37;
    }

    sub_1C4402FD0(v28);
    v32 = v32 && v30 == v31;
    if (!v32 && (sub_1C4F02938() & 1) == 0)
    {
      goto LABEL_37;
    }
  }

  else if (v27)
  {
    goto LABEL_37;
  }

  sub_1C4409BE8();
  if (v35)
  {
    if (!v33)
    {
      goto LABEL_37;
    }

    sub_1C4402FD0(v34);
    v38 = v32 && v36 == v37;
    if (!v38 && (sub_1C4F02938() & 1) == 0)
    {
      goto LABEL_37;
    }
  }

  else if (v33)
  {
    goto LABEL_37;
  }

  v68 = v2;
  v70 = a2;
  v39 = v26[7];
  v40 = *(v22 + 48);
  v69 = a1;
  sub_1C4426AB8(a1 + v39, v25);
  sub_1C4426AB8(v70 + v39, &v25[v40]);
  sub_1C4414160(v25);
  if (v32)
  {
    sub_1C4414160(&v25[v40]);
    if (v32)
    {
      sub_1C4420C3C(v25, &qword_1EC0BB690, &qword_1C4F20BF0);
      goto LABEL_29;
    }

LABEL_27:
    v42 = &qword_1EC0BB6B0;
    v43 = &qword_1C4F20AD8;
    v44 = v25;
LABEL_36:
    sub_1C4420C3C(v44, v42, v43);
    goto LABEL_37;
  }

  sub_1C446C964(v25, v21, &qword_1EC0BB690, &qword_1C4F20BF0);
  sub_1C4414160(&v25[v40]);
  if (v41)
  {
    sub_1C46ED02C();
    goto LABEL_27;
  }

  sub_1C46ECFD4(&v25[v40], v17);
  v45 = sub_1C46E448C(v21, v17);
  sub_1C46ED02C();
  sub_1C46ED02C();
  sub_1C4420C3C(v25, &qword_1EC0BB690, &qword_1C4F20BF0);
  if ((v45 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_29:
  v46 = v26[8];
  v47 = *(v11 + 48);
  v48 = v68;
  sub_1C4426AB8(v69 + v46, v68);
  v49 = v70 + v46;
  v50 = v70;
  sub_1C4426AB8(v49, v48 + v47);
  v51 = v73;
  if (sub_1C44157D4(v48, 1, v73) != 1)
  {
    v52 = v72;
    sub_1C446C964(v48, v72, &qword_1EC0BB688, &unk_1C4F20AB0);
    if (sub_1C44157D4(v48 + v47, 1, v51) != 1)
    {
      sub_1C4411B58();
      v55 = v71;
      sub_1C46ECFD4(v48 + v47, v71);
      if (*(v52 + *(v51 + 20)) == *(v55 + *(v51 + 20)) || (, , v56 = sub_1C43FBC98(), v58 = sub_1C46E7638(v56, v57), , , v58))
      {
        sub_1C4F00328();
        sub_1C441F7E8();
        sub_1C46ECC80(v59, v60);
        v61 = sub_1C4F010B8();
        sub_1C46ED02C();
        sub_1C46ED02C();
        sub_1C4420C3C(v48, &qword_1EC0BB688, &unk_1C4F20AB0);
        v50 = v70;
        if ((v61 & 1) == 0)
        {
          goto LABEL_37;
        }

        goto LABEL_42;
      }

      sub_1C46ED02C();
      sub_1C46ED02C();
      v42 = &qword_1EC0BB688;
      v43 = &unk_1C4F20AB0;
      goto LABEL_35;
    }

    sub_1C46ED02C();
LABEL_34:
    v42 = &qword_1EC0BB6A8;
    v43 = &qword_1C4F20AD0;
LABEL_35:
    v44 = v48;
    goto LABEL_36;
  }

  if (sub_1C44157D4(v48 + v47, 1, v51) != 1)
  {
    goto LABEL_34;
  }

  sub_1C4420C3C(v48, &qword_1EC0BB688, &unk_1C4F20AB0);
LABEL_42:
  v62 = v26[9];
  v63 = *(v69 + v62 + 8);
  v64 = *(v50 + v62 + 8);
  if (v63)
  {
    if (v64)
    {
      goto LABEL_46;
    }
  }

  else
  {
    sub_1C43FD5A0();
    if ((v65 & 1) == 0)
    {
LABEL_46:
      sub_1C4F00328();
      sub_1C441F7E8();
      sub_1C46ECC80(v66, v67);
      v53 = sub_1C4F010B8();
      return v53 & 1;
    }
  }

LABEL_37:
  v53 = 0;
  return v53 & 1;
}

uint64_t sub_1C46E3830(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C46ECC80(&qword_1EC0BB680, type metadata accessor for EntityRelevanceDataCollection);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C46E38D0(uint64_t a1)
{
  sub_1C46ECC80(&qword_1EC0BB668, type metadata accessor for EntityRelevanceDataCollection);

  return sub_1C4F00428();
}

uint64_t sub_1C46E3998(uint64_t a1, uint64_t a2)
{
  sub_1C46ECC80(&qword_1EC0BB668, type metadata accessor for EntityRelevanceDataCollection);

  return sub_1C4F00438();
}

uint64_t sub_1C46E3A18()
{
  v0 = sub_1C4F004E8();
  sub_1C44F9918(v0, qword_1EC151BE0);
  sub_1C442B738(v0, qword_1EC151BE0);
  sub_1C456902C(&qword_1EC0BB698, &unk_1C4F20AC0);
  v1 = (sub_1C456902C(&qword_1EC0BB6A0, &qword_1C4F24070) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C4F0F830;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "entityType";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C4F004C8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "entityIdentifier";
  *(v10 + 8) = 16;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "featurizationDate";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "isRelevant";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "numberOfInteractions";
  *(v16 + 1) = 20;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "queryName";
  *(v18 + 1) = 9;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "metadata";
  *(v20 + 1) = 8;
  v20[16] = 2;
  v9();
  return sub_1C4F004D8();
}

uint64_t sub_1C46E3D18()
{
  sub_1C4411B70();
  while (1)
  {
    sub_1C43FE99C();
    result = sub_1C4F00378();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v3 = sub_1C4406AC8();
        sub_1C46E3E10(v3, v4, v5, v6);
        break;
      case 2:
        sub_1C4406AC8();
        sub_1C46E3E74();
        break;
      case 3:
        v7 = sub_1C4406AC8();
        sub_1C46E3EBC(v7, v8, v9, v10);
        break;
      case 4:
        v11 = sub_1C4406AC8();
        sub_1C46E3F20(v11, v12, v13, v14);
        break;
      case 5:
        sub_1C4406AC8();
        sub_1C46E3F84();
        break;
      case 6:
        v15 = sub_1C4406AC8();
        sub_1C46E3FCC(v15, v16, v17, v18);
        break;
      case 7:
        v19 = sub_1C4406AC8();
        sub_1C46E4030(v19, v20, v21, v22);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C46E3E74()
{
  sub_1C4412FE0();
  v1 = v0(0);
  sub_1C4404E24(*(v1 + 24));
  return sub_1C4F003D8();
}

uint64_t sub_1C46E3F84()
{
  sub_1C4412FE0();
  v1 = v0(0);
  sub_1C4404E24(*(v1 + 36));
  return sub_1C4F003B8();
}

uint64_t sub_1C46E4094()
{
  sub_1C4405A6C();
  v1 = sub_1C43FEE60();
  result = sub_1C46E4148(v1, v2, v3, v4);
  if (!v0)
  {
    sub_1C43FEE60();
    sub_1C46E41C0();
    v6 = sub_1C43FEE60();
    sub_1C46E422C(v6, v7, v8, v9);
    v10 = sub_1C43FEE60();
    sub_1C46E42A4(v10, v11, v12, v13);
    v14 = sub_1C43FEE60();
    sub_1C46E431C(v14, v15, v16, v17, v18);
    v19 = sub_1C43FEE60();
    sub_1C46E439C(v19, v20, v21, v22);
    v23 = sub_1C43FEE60();
    sub_1C46E4414(v23, v24, v25, v26);
    sub_1C43FE99C();
    return sub_1C4F00308();
  }

  return result;
}

uint64_t sub_1C46E4148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for EntityRelevanceEntityInformation(0);
  if ((*(a1 + *(result + 20) + 8) & 1) == 0)
  {
    return sub_1C4F00478();
  }

  return result;
}

uint64_t sub_1C46E41C0()
{
  sub_1C4412FE0();
  result = v1(0);
  if (*(v0 + *(result + 24) + 8))
  {
    return sub_1C4F00498();
  }

  return result;
}

uint64_t sub_1C46E422C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for EntityRelevanceEntityInformation(0);
  if ((*(a1 + *(result + 28) + 8) & 1) == 0)
  {
    return sub_1C4F00488();
  }

  return result;
}

uint64_t sub_1C46E42A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for EntityRelevanceEntityInformation(0);
  if ((*(a1 + *(result + 32) + 8) & 1) == 0)
  {
    return sub_1C4F00478();
  }

  return result;
}

uint64_t sub_1C46E431C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if ((*(a1 + *(result + 36) + 8) & 1) == 0)
  {
    sub_1C4417018();
    return sub_1C4F00478();
  }

  return result;
}

uint64_t sub_1C46E439C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for EntityRelevanceEntityInformation(0);
  if (*(a1 + *(result + 40) + 8))
  {
    return sub_1C4F00498();
  }

  return result;
}

uint64_t sub_1C46E4414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for EntityRelevanceEntityInformation(0);
  if (*(a1 + *(result + 44) + 8))
  {
    return sub_1C4F00498();
  }

  return result;
}

uint64_t sub_1C46E448C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C43FBE94();
  type metadata accessor for EntityRelevanceEntityInformation(v2);
  sub_1C4408908();
  if (v4)
  {
    if (!v3)
    {
      return 0;
    }
  }

  else
  {
    sub_1C43FD5A0();
    if (v5)
    {
      return 0;
    }
  }

  sub_1C440891C();
  if (v8)
  {
    if (!v6)
    {
      return 0;
    }

    sub_1C4402FD0(v7);
    v11 = v11 && v9 == v10;
    if (!v11 && (sub_1C4F02938() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  sub_1C4408908();
  if (v15)
  {
    if (!v12)
    {
      return 0;
    }
  }

  else
  {
    if (*v13 != *v14)
    {
      LOBYTE(v12) = 1;
    }

    if (v12)
    {
      return 0;
    }
  }

  sub_1C4408908();
  if (v17)
  {
    if (!v16)
    {
      return 0;
    }
  }

  else
  {
    sub_1C43FD5A0();
    if (v18)
    {
      return 0;
    }
  }

  sub_1C4408908();
  if (v20)
  {
    if (!v19)
    {
      return 0;
    }
  }

  else
  {
    sub_1C43FD5A0();
    if (v21)
    {
      return 0;
    }
  }

  sub_1C440891C();
  if (v24)
  {
    if (!v22)
    {
      return 0;
    }

    sub_1C4402FD0(v23);
    v27 = v11 && v25 == v26;
    if (!v27 && (sub_1C4F02938() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v22)
  {
    return 0;
  }

  sub_1C440891C();
  if (v30)
  {
    if (!v28)
    {
      return 0;
    }

    sub_1C4402FD0(v29);
    v33 = v11 && v31 == v32;
    if (!v33 && (sub_1C4F02938() & 1) == 0)
    {
      return 0;
    }

LABEL_44:
    sub_1C4F00328();
    sub_1C441F7E8();
    sub_1C46ECC80(v34, v35);
    sub_1C43FD5B4();
    return sub_1C4F010B8() & 1;
  }

  if (!v28)
  {
    goto LABEL_44;
  }

  return 0;
}

uint64_t sub_1C46E4668(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C46ECC80(&qword_1EC0BB6D0, type metadata accessor for EntityRelevanceEntityInformation);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C46E4708(uint64_t a1)
{
  sub_1C46ECC80(&qword_1EC0BB648, type metadata accessor for EntityRelevanceEntityInformation);

  return sub_1C4F00428();
}

uint64_t sub_1C46E47D0(uint64_t a1, uint64_t a2)
{
  sub_1C46ECC80(&qword_1EC0BB648, type metadata accessor for EntityRelevanceEntityInformation);

  return sub_1C4F00438();
}

uint64_t sub_1C46E4850()
{
  v0 = sub_1C4F004E8();
  sub_1C44F9918(v0, qword_1EC151BF8);
  sub_1C442B738(v0, qword_1EC151BF8);
  sub_1C456902C(&qword_1EC0BB698, &unk_1C4F20AC0);
  v1 = (sub_1C456902C(&qword_1EC0BB6A0, &qword_1C4F24070) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v72 = swift_allocObject();
  *(v72 + 16) = xmmword_1C4F20630;
  v4 = v72 + v3 + v1[14];
  *(v72 + v3) = 1;
  *v4 = "behaviorPopularityGivenContext_coarseGeoHash";
  *(v4 + 8) = 44;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADE8];
  v6 = sub_1C4F004C8();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v72 + v3 + v2 + v1[14];
  *(v72 + v3 + v2) = 2;
  *v8 = "behaviorPopularityGivenContext_coarseTimeOfDay";
  *(v8 + 8) = 46;
  *(v8 + 16) = 2;
  v7();
  v9 = (v72 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "behaviorPopularityGivenContext_dayOfWeek";
  *(v10 + 1) = 40;
  v10[16] = 2;
  v7();
  v11 = (v72 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "behaviorPopularityGivenContext_loi";
  *(v12 + 1) = 34;
  v12[16] = 2;
  v7();
  v13 = (v72 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "behaviorPopularityGivenContext_specificGeoHash";
  *(v14 + 1) = 46;
  v14[16] = 2;
  v7();
  v15 = (v72 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "behaviorPopularityGivenContext_wifi";
  *(v16 + 1) = 35;
  v16[16] = 2;
  v7();
  v17 = (v72 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "behaviorPopularityGivenSequence";
  *(v18 + 1) = 31;
  v18[16] = 2;
  v7();
  v19 = (v72 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "contextPopularityGivenBehavior_coarseGeoHash";
  *(v20 + 1) = 44;
  v20[16] = 2;
  v7();
  v21 = (v72 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "contextPopularityGivenBehavior_coarseTimeOfDay";
  *(v22 + 1) = 46;
  v22[16] = 2;
  v7();
  v23 = (v72 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "contextPopularityGivenBehavior_dayOfWeek";
  *(v24 + 1) = 40;
  v24[16] = 2;
  v7();
  v25 = (v72 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "contextPopularityGivenBehavior_loi";
  *(v26 + 1) = 34;
  v26[16] = 2;
  v7();
  v27 = (v72 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "contextPopularityGivenBehavior_specificGeoHash";
  *(v28 + 1) = 46;
  v28[16] = 2;
  v7();
  v29 = (v72 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "contextPopularityGivenBehavior_wifi";
  *(v30 + 1) = 35;
  v30[16] = 2;
  v7();
  v31 = (v72 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "dailyDoseL1Error";
  *(v32 + 1) = 16;
  v32[16] = 2;
  v7();
  v33 = (v72 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "dailyDoseL2Error";
  *(v34 + 1) = 16;
  v34[16] = 2;
  v7();
  v35 = (v72 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "lastExecutionAge";
  *(v36 + 1) = 16;
  v36[16] = 2;
  v7();
  v37 = (v72 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 17;
  *v38 = "longTermTrendingPopularity";
  *(v38 + 1) = 26;
  v38[16] = 2;
  v7();
  v39 = (v72 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 18;
  *v40 = "medianTimeIntervalBetweenExecution";
  *(v40 + 1) = 34;
  v40[16] = 2;
  v7();
  v41 = (v72 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 19;
  *v42 = "posteriorProbabilityGivenContext_coarseGeoHash";
  *(v42 + 1) = 46;
  v42[16] = 2;
  v7();
  v43 = (v72 + v3 + 19 * v2);
  v44 = v43 + v1[14];
  *v43 = 20;
  *v44 = "posteriorProbabilityGivenContext_coarseGeoHash_coarseTimeOfDay";
  *(v44 + 1) = 62;
  v44[16] = 2;
  v7();
  v45 = (v72 + v3 + 20 * v2);
  v46 = v45 + v1[14];
  *v45 = 21;
  *v46 = "posteriorProbabilityGivenContext_coarseTimeOfDay";
  *(v46 + 1) = 48;
  v46[16] = 2;
  v7();
  v47 = (v72 + v3 + 21 * v2);
  v48 = v47 + v1[14];
  *v47 = 22;
  *v48 = "posteriorProbabilityGivenContext_coarseTimeOfDay_dayOfWeek";
  *(v48 + 1) = 58;
  v48[16] = 2;
  v7();
  v49 = (v72 + v3 + 22 * v2);
  v50 = v49 + v1[14];
  *v49 = 23;
  *v50 = "posteriorProbabilityGivenContext_coarseTimeOfDay_specificGeoHash";
  *(v50 + 1) = 64;
  v50[16] = 2;
  v7();
  v51 = (v72 + v3 + 23 * v2);
  v52 = v51 + v1[14];
  *v51 = 24;
  *v52 = "posteriorProbabilityGivenContext_coarseTimeOfDay_wifi";
  *(v52 + 1) = 53;
  v52[16] = 2;
  v7();
  v53 = (v72 + v3 + 24 * v2);
  v54 = v53 + v1[14];
  *v53 = 25;
  *v54 = "posteriorProbabilityGivenContext_dayOfWeek";
  *(v54 + 1) = 42;
  v54[16] = 2;
  v7();
  v55 = (v72 + v3 + 25 * v2);
  v56 = v55 + v1[14];
  *v55 = 26;
  *v56 = "posteriorProbabilityGivenContext_dayOfWeekSpecificGeoHash";
  *(v56 + 1) = 57;
  v56[16] = 2;
  v7();
  v57 = (v72 + v3 + 26 * v2);
  v58 = v57 + v1[14];
  *v57 = 27;
  *v58 = "posteriorProbabilityGivenContext_dayOfWeek_wifi";
  *(v58 + 1) = 47;
  v58[16] = 2;
  v7();
  v59 = (v72 + v3 + 27 * v2);
  v60 = v59 + v1[14];
  *v59 = 28;
  *v60 = "posteriorProbabilityGivenContext_loi";
  *(v60 + 1) = 36;
  v60[16] = 2;
  v7();
  v61 = (v72 + v3 + 28 * v2);
  v62 = v61 + v1[14];
  *v61 = 29;
  *v62 = "posteriorProbabilityGivenContext_specificGeoHash";
  *(v62 + 1) = 48;
  v62[16] = 2;
  v7();
  v63 = (v72 + v3 + 29 * v2);
  v64 = v63 + v1[14];
  *v63 = 30;
  *v64 = "posteriorProbabilityGivenContext_wifi";
  *(v64 + 1) = 37;
  v64[16] = 2;
  v7();
  v65 = (v72 + v3 + 30 * v2);
  v66 = v65 + v1[14];
  *v65 = 31;
  *v66 = "sequencePopularityGivenBehavior";
  *(v66 + 1) = 31;
  v66[16] = 2;
  v7();
  v67 = (v72 + v3 + 31 * v2);
  v68 = v67 + v1[14];
  *v67 = 32;
  *v68 = "shortTermTrendingPopularity";
  *(v68 + 1) = 27;
  v68[16] = 2;
  v7();
  v69 = (v72 + v3 + 32 * v2);
  v70 = v69 + v1[14];
  *v69 = 33;
  *v70 = "trendingPopularity";
  *(v70 + 1) = 18;
  v70[16] = 2;
  v7();
  return sub_1C4F004D8();
}

uint64_t sub_1C46E51C0()
{
  type metadata accessor for EntityRelevanceEntityRelevanceFeatures._StorageClass(0);
  swift_allocObject();
  result = sub_1C46E5200();
  qword_1EC0BB500 = result;
  return result;
}

uint64_t sub_1C46E5200()
{
  v1 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__behaviorPopularityGivenContextCoarseGeoHash;
  v2 = type metadata accessor for FeatureValue(0);
  sub_1C440BAA8(v0 + v1, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__behaviorPopularityGivenContextCoarseTimeOfDay, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__behaviorPopularityGivenContextDayOfWeek, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__behaviorPopularityGivenContextLoi, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__behaviorPopularityGivenContextSpecificGeoHash, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__behaviorPopularityGivenContextWifi, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__behaviorPopularityGivenSequence, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__contextPopularityGivenBehaviorCoarseGeoHash, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__contextPopularityGivenBehaviorCoarseTimeOfDay, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__contextPopularityGivenBehaviorDayOfWeek, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__contextPopularityGivenBehaviorLoi, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__contextPopularityGivenBehaviorSpecificGeoHash, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__contextPopularityGivenBehaviorWifi, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__dailyDoseL1Error, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__dailyDoseL2Error, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__lastExecutionAge, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__longTermTrendingPopularity, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__medianTimeIntervalBetweenExecution, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextCoarseGeoHash, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextCoarseGeoHashCoarseTimeOfDay, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextCoarseTimeOfDay, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextCoarseTimeOfDayDayOfWeek, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextCoarseTimeOfDaySpecificGeoHash, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextCoarseTimeOfDayWifi, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextDayOfWeek, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextDayOfWeekSpecificGeoHash, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextDayOfWeekWifi, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextLoi, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextSpecificGeoHash, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextWifi, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__sequencePopularityGivenBehavior, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__shortTermTrendingPopularity, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__trendingPopularity, 1, 1, v2);
  return v0;
}

uint64_t sub_1C46E55D0(uint64_t a1)
{
  v3 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v74 - v4;
  v6 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__behaviorPopularityGivenContextCoarseGeoHash;
  v7 = type metadata accessor for FeatureValue(0);
  sub_1C440BAA8(v1 + v6, 1, 1, v7);
  v8 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__behaviorPopularityGivenContextCoarseTimeOfDay;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__behaviorPopularityGivenContextCoarseTimeOfDay, 1, 1, v7);
  v9 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__behaviorPopularityGivenContextDayOfWeek;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__behaviorPopularityGivenContextDayOfWeek, 1, 1, v7);
  v75 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__behaviorPopularityGivenContextLoi;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__behaviorPopularityGivenContextLoi, 1, 1, v7);
  v76 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__behaviorPopularityGivenContextSpecificGeoHash;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__behaviorPopularityGivenContextSpecificGeoHash, 1, 1, v7);
  v77 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__behaviorPopularityGivenContextWifi;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__behaviorPopularityGivenContextWifi, 1, 1, v7);
  v78 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__behaviorPopularityGivenSequence;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__behaviorPopularityGivenSequence, 1, 1, v7);
  v79 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__contextPopularityGivenBehaviorCoarseGeoHash;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__contextPopularityGivenBehaviorCoarseGeoHash, 1, 1, v7);
  v80 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__contextPopularityGivenBehaviorCoarseTimeOfDay;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__contextPopularityGivenBehaviorCoarseTimeOfDay, 1, 1, v7);
  v81 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__contextPopularityGivenBehaviorDayOfWeek;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__contextPopularityGivenBehaviorDayOfWeek, 1, 1, v7);
  v82 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__contextPopularityGivenBehaviorLoi;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__contextPopularityGivenBehaviorLoi, 1, 1, v7);
  v83 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__contextPopularityGivenBehaviorSpecificGeoHash;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__contextPopularityGivenBehaviorSpecificGeoHash, 1, 1, v7);
  v84 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__contextPopularityGivenBehaviorWifi;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__contextPopularityGivenBehaviorWifi, 1, 1, v7);
  v85 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__dailyDoseL1Error;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__dailyDoseL1Error, 1, 1, v7);
  v86 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__dailyDoseL2Error;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__dailyDoseL2Error, 1, 1, v7);
  v87 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__lastExecutionAge;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__lastExecutionAge, 1, 1, v7);
  v88 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__longTermTrendingPopularity;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__longTermTrendingPopularity, 1, 1, v7);
  v89 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__medianTimeIntervalBetweenExecution;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__medianTimeIntervalBetweenExecution, 1, 1, v7);
  v90 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextCoarseGeoHash;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextCoarseGeoHash, 1, 1, v7);
  v91 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextCoarseGeoHashCoarseTimeOfDay;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextCoarseGeoHashCoarseTimeOfDay, 1, 1, v7);
  v92 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextCoarseTimeOfDay;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextCoarseTimeOfDay, 1, 1, v7);
  v93 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextCoarseTimeOfDayDayOfWeek;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextCoarseTimeOfDayDayOfWeek, 1, 1, v7);
  v94 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextCoarseTimeOfDaySpecificGeoHash;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextCoarseTimeOfDaySpecificGeoHash, 1, 1, v7);
  v95 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextCoarseTimeOfDayWifi;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextCoarseTimeOfDayWifi, 1, 1, v7);
  v96 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextDayOfWeek;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextDayOfWeek, 1, 1, v7);
  v97 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextDayOfWeekSpecificGeoHash;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextDayOfWeekSpecificGeoHash, 1, 1, v7);
  v98 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextDayOfWeekWifi;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextDayOfWeekWifi, 1, 1, v7);
  v99 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextLoi;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextLoi, 1, 1, v7);
  v100 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextSpecificGeoHash;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextSpecificGeoHash, 1, 1, v7);
  v101 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextWifi;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextWifi, 1, 1, v7);
  v102 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__sequencePopularityGivenBehavior;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__sequencePopularityGivenBehavior, 1, 1, v7);
  v103 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__shortTermTrendingPopularity;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__shortTermTrendingPopularity, 1, 1, v7);
  v104 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__trendingPopularity;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__trendingPopularity, 1, 1, v7);
  v10 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__behaviorPopularityGivenContextCoarseGeoHash;
  swift_beginAccess();
  sub_1C446C964(a1 + v10, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v6);
  swift_endAccess();
  v11 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__behaviorPopularityGivenContextCoarseTimeOfDay;
  swift_beginAccess();
  sub_1C446C964(a1 + v11, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v8);
  swift_endAccess();
  v12 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__behaviorPopularityGivenContextDayOfWeek;
  swift_beginAccess();
  sub_1C446C964(a1 + v12, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v9);
  swift_endAccess();
  v13 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__behaviorPopularityGivenContextLoi;
  swift_beginAccess();
  sub_1C446C964(a1 + v13, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v14 = v75;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v14);
  swift_endAccess();
  v15 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__behaviorPopularityGivenContextSpecificGeoHash;
  swift_beginAccess();
  sub_1C446C964(a1 + v15, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v16 = v76;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v16);
  swift_endAccess();
  v17 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__behaviorPopularityGivenContextWifi;
  swift_beginAccess();
  sub_1C446C964(a1 + v17, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v18 = v77;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v18);
  swift_endAccess();
  v19 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__behaviorPopularityGivenSequence;
  swift_beginAccess();
  sub_1C446C964(a1 + v19, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v20 = v78;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v20);
  swift_endAccess();
  v21 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__contextPopularityGivenBehaviorCoarseGeoHash;
  swift_beginAccess();
  sub_1C446C964(a1 + v21, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v22 = v79;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v22);
  swift_endAccess();
  v23 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__contextPopularityGivenBehaviorCoarseTimeOfDay;
  swift_beginAccess();
  sub_1C446C964(a1 + v23, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v24 = v80;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v24);
  swift_endAccess();
  v25 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__contextPopularityGivenBehaviorDayOfWeek;
  swift_beginAccess();
  sub_1C446C964(a1 + v25, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v26 = v81;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v26);
  swift_endAccess();
  v27 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__contextPopularityGivenBehaviorLoi;
  swift_beginAccess();
  sub_1C446C964(a1 + v27, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v28 = v82;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v28);
  swift_endAccess();
  v29 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__contextPopularityGivenBehaviorSpecificGeoHash;
  swift_beginAccess();
  sub_1C446C964(a1 + v29, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v30 = v83;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v30);
  swift_endAccess();
  v31 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__contextPopularityGivenBehaviorWifi;
  swift_beginAccess();
  sub_1C446C964(a1 + v31, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v32 = v84;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v32);
  swift_endAccess();
  v33 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__dailyDoseL1Error;
  swift_beginAccess();
  sub_1C446C964(a1 + v33, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v34 = v85;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v34);
  swift_endAccess();
  v35 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__dailyDoseL2Error;
  swift_beginAccess();
  sub_1C446C964(a1 + v35, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v36 = v86;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v36);
  swift_endAccess();
  v37 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__lastExecutionAge;
  swift_beginAccess();
  sub_1C446C964(a1 + v37, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v38 = v87;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v38);
  swift_endAccess();
  v39 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__longTermTrendingPopularity;
  swift_beginAccess();
  sub_1C446C964(a1 + v39, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v40 = v88;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v40);
  swift_endAccess();
  v41 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__medianTimeIntervalBetweenExecution;
  swift_beginAccess();
  sub_1C446C964(a1 + v41, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v42 = v89;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v42);
  swift_endAccess();
  v43 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextCoarseGeoHash;
  swift_beginAccess();
  sub_1C446C964(a1 + v43, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v44 = v90;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v44);
  swift_endAccess();
  v45 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextCoarseGeoHashCoarseTimeOfDay;
  swift_beginAccess();
  sub_1C446C964(a1 + v45, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v46 = v91;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v46);
  swift_endAccess();
  v47 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextCoarseTimeOfDay;
  swift_beginAccess();
  sub_1C446C964(a1 + v47, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v48 = v92;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v48);
  swift_endAccess();
  v49 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextCoarseTimeOfDayDayOfWeek;
  swift_beginAccess();
  sub_1C446C964(a1 + v49, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v50 = v93;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v50);
  swift_endAccess();
  v51 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextCoarseTimeOfDaySpecificGeoHash;
  swift_beginAccess();
  sub_1C446C964(a1 + v51, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v52 = v94;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v52);
  swift_endAccess();
  v53 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextCoarseTimeOfDayWifi;
  swift_beginAccess();
  sub_1C446C964(a1 + v53, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v54 = v95;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v54);
  swift_endAccess();
  v55 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextDayOfWeek;
  swift_beginAccess();
  sub_1C446C964(a1 + v55, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v56 = v96;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v56);
  swift_endAccess();
  v57 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextDayOfWeekSpecificGeoHash;
  swift_beginAccess();
  sub_1C446C964(a1 + v57, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v58 = v97;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v58);
  swift_endAccess();
  v59 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextDayOfWeekWifi;
  swift_beginAccess();
  sub_1C446C964(a1 + v59, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v60 = v98;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v60);
  swift_endAccess();
  v61 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextLoi;
  swift_beginAccess();
  sub_1C446C964(a1 + v61, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v62 = v99;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v62);
  swift_endAccess();
  v63 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextSpecificGeoHash;
  swift_beginAccess();
  sub_1C446C964(a1 + v63, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v64 = v100;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v64);
  swift_endAccess();
  v65 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextWifi;
  swift_beginAccess();
  sub_1C446C964(a1 + v65, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v66 = v101;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v66);
  swift_endAccess();
  v67 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__sequencePopularityGivenBehavior;
  swift_beginAccess();
  sub_1C446C964(a1 + v67, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v68 = v102;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v68);
  swift_endAccess();
  v69 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__shortTermTrendingPopularity;
  swift_beginAccess();
  sub_1C446C964(a1 + v69, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v70 = v103;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v70);
  swift_endAccess();
  v71 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__trendingPopularity;
  swift_beginAccess();
  sub_1C446C964(a1 + v71, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);

  v72 = v104;
  swift_beginAccess();
  sub_1C46ED080(v5, v1 + v72);
  swift_endAccess();
  return v1;
}

uint64_t sub_1C46E666C()
{
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__behaviorPopularityGivenContextCoarseGeoHash, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__behaviorPopularityGivenContextCoarseTimeOfDay, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__behaviorPopularityGivenContextDayOfWeek, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__behaviorPopularityGivenContextLoi, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__behaviorPopularityGivenContextSpecificGeoHash, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__behaviorPopularityGivenContextWifi, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__behaviorPopularityGivenSequence, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__contextPopularityGivenBehaviorCoarseGeoHash, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__contextPopularityGivenBehaviorCoarseTimeOfDay, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__contextPopularityGivenBehaviorDayOfWeek, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__contextPopularityGivenBehaviorLoi, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__contextPopularityGivenBehaviorSpecificGeoHash, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__contextPopularityGivenBehaviorWifi, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__dailyDoseL1Error, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__dailyDoseL2Error, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__lastExecutionAge, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__longTermTrendingPopularity, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__medianTimeIntervalBetweenExecution, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextCoarseGeoHash, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextCoarseGeoHashCoarseTimeOfDay, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextCoarseTimeOfDay, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextCoarseTimeOfDayDayOfWeek, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextCoarseTimeOfDaySpecificGeoHash, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextCoarseTimeOfDayWifi, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextDayOfWeek, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextDayOfWeekSpecificGeoHash, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextDayOfWeekWifi, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextLoi, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextSpecificGeoHash, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextWifi, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__sequencePopularityGivenBehavior, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__shortTermTrendingPopularity, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__trendingPopularity, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  return v0;
}

uint64_t sub_1C46E69BC()
{
  sub_1C46E666C();

  return swift_deallocClassInstance();
}

void sub_1C46E6A38(uint64_t a1)
{
  sub_1C46ED23C(319, &qword_1EDDF8B70, type metadata accessor for FeatureValue);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1C46E6B20()
{
  v1 = *(type metadata accessor for EntityRelevanceEntityRelevanceFeatures(0) + 20);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    type metadata accessor for EntityRelevanceEntityRelevanceFeatures._StorageClass(0);
    swift_allocObject();
    v2 = sub_1C4425064();
    *(v0 + v1) = sub_1C46E55D0(v2);
  }

  sub_1C4417018();
  return sub_1C46E6BC0(v3, v4, v5, v6);
}

uint64_t sub_1C46E6BC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_1C4F00378();
    if (v4 || (v6 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
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
        sub_1C46E6DD4();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C46E6DD4()
{
  sub_1C4412FE0();
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C440E120();
  sub_1C46ECC80(v0, v1);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C46E6E8C()
{
  sub_1C4405A6C();
  type metadata accessor for EntityRelevanceEntityRelevanceFeatures(0);
  sub_1C43FEE74();
  result = sub_1C46E6EE4(v1, v2, v3, v4);
  if (!v0)
  {
    sub_1C43FE99C();
    return sub_1C4F00308();
  }

  return result;
}

uint64_t sub_1C46E6EE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1C46E73A8(a1, a2, a3, a4, &OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__behaviorPopularityGivenContextCoarseGeoHash, 1);
  if (!v4)
  {
    sub_1C46E73A8(a1, a2, a3, a4, &OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__behaviorPopularityGivenContextCoarseTimeOfDay, 2);
    sub_1C46E73A8(a1, a2, a3, a4, &OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__behaviorPopularityGivenContextDayOfWeek, 3);
    sub_1C46E73A8(a1, a2, a3, a4, &OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__behaviorPopularityGivenContextLoi, 4);
    sub_1C46E73A8(a1, a2, a3, a4, &OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__behaviorPopularityGivenContextSpecificGeoHash, 5);
    sub_1C46E73A8(a1, a2, a3, a4, &OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__behaviorPopularityGivenContextWifi, 6);
    sub_1C46E73A8(a1, a2, a3, a4, &OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__behaviorPopularityGivenSequence, 7);
    sub_1C46E73A8(a1, a2, a3, a4, &OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__contextPopularityGivenBehaviorCoarseGeoHash, 8);
    sub_1C46E73A8(a1, a2, a3, a4, &OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__contextPopularityGivenBehaviorCoarseTimeOfDay, 9);
    sub_1C46E73A8(a1, a2, a3, a4, &OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__contextPopularityGivenBehaviorDayOfWeek, 10);
    sub_1C46E73A8(a1, a2, a3, a4, &OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__contextPopularityGivenBehaviorLoi, 11);
    sub_1C46E73A8(a1, a2, a3, a4, &OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__contextPopularityGivenBehaviorSpecificGeoHash, 12);
    sub_1C46E73A8(a1, a2, a3, a4, &OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__contextPopularityGivenBehaviorWifi, 13);
    sub_1C46E73A8(a1, a2, a3, a4, &OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__dailyDoseL1Error, 14);
    sub_1C46E73A8(a1, a2, a3, a4, &OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__dailyDoseL2Error, 15);
    sub_1C46E73A8(a1, a2, a3, a4, &OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__lastExecutionAge, 16);
    sub_1C46E73A8(a1, a2, a3, a4, &OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__longTermTrendingPopularity, 17);
    sub_1C46E73A8(a1, a2, a3, a4, &OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__medianTimeIntervalBetweenExecution, 18);
    sub_1C46E73A8(a1, a2, a3, a4, &OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextCoarseGeoHash, 19);
    sub_1C46E73A8(a1, a2, a3, a4, &OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextCoarseGeoHashCoarseTimeOfDay, 20);
    sub_1C46E73A8(a1, a2, a3, a4, &OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextCoarseTimeOfDay, 21);
    sub_1C46E73A8(a1, a2, a3, a4, &OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextCoarseTimeOfDayDayOfWeek, 22);
    sub_1C46E73A8(a1, a2, a3, a4, &OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextCoarseTimeOfDaySpecificGeoHash, 23);
    sub_1C46E73A8(a1, a2, a3, a4, &OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextCoarseTimeOfDayWifi, 24);
    sub_1C46E73A8(a1, a2, a3, a4, &OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextDayOfWeek, 25);
    sub_1C46E73A8(a1, a2, a3, a4, &OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextDayOfWeekSpecificGeoHash, 26);
    sub_1C46E73A8(a1, a2, a3, a4, &OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextDayOfWeekWifi, 27);
    sub_1C46E73A8(a1, a2, a3, a4, &OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextLoi, 28);
    sub_1C46E73A8(a1, a2, a3, a4, &OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextSpecificGeoHash, 29);
    sub_1C46E73A8(a1, a2, a3, a4, &OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextWifi, 30);
    sub_1C46E73A8(a1, a2, a3, a4, &OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__sequencePopularityGivenBehavior, 31);
    sub_1C46E73A8(a1, a2, a3, a4, &OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__shortTermTrendingPopularity, 32);
    return sub_1C46E73A8(a1, a2, a3, a4, &OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__trendingPopularity, 33);
  }

  return result;
}

uint64_t sub_1C46E73A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v21[1] = a6;
  v21[2] = a3;
  v21[7] = a4;
  v8 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v8);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v21 - v10;
  v12 = type metadata accessor for FeatureValue(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBCC4();
  v16 = v15 - v14;
  v17 = *a5;
  swift_beginAccess();
  sub_1C446C964(a1 + v17, v11, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v11, 1, v12) == 1)
  {
    return sub_1C4420C3C(v11, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C46ECFD4(v11, v16);
  sub_1C440E120();
  sub_1C46ECC80(v19, v20);
  sub_1C4F004B8();
  return sub_1C46ED02C();
}

uint64_t sub_1C46E7568(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C43FBE94();
  v5 = *(type metadata accessor for EntityRelevanceEntityRelevanceFeatures(v4) + 20);
  v6 = *(v2 + v5);
  v7 = *(a2 + v5);
  if (v6 != v7)
  {

    v8 = sub_1C46E7638(v6, v7);

    if (!v8)
    {
      return 0;
    }
  }

  sub_1C4F00328();
  sub_1C441F7E8();
  sub_1C46ECC80(v9, v10);
  sub_1C43FD5B4();
  return sub_1C4F010B8() & 1;
}

BOOL sub_1C46E7638(uint64_t a1, uint64_t a2)
{
  v648 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v648);
  v645 = (&v550 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v647 = sub_1C456902C(&qword_1EC0BB6C0, &unk_1C4F20AE0);
  MEMORY[0x1EEE9AC00](v647);
  v597 = &v550 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v596 = &v550 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v593 = &v550 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v590 = &v550 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v588 = &v550 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v585 = &v550 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v582 = &v550 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v580 = &v550 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v577 = &v550 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v574 = &v550 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v571 = &v550 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v568 = &v550 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v565 = &v550 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v562 = &v550 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v559 = &v550 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v556 = &v550 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v601 = &v550 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v604 = &v550 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v607 = &v550 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v610 = &v550 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v613 = &v550 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v616 = &v550 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v620 = &v550 - v49;
  MEMORY[0x1EEE9AC00](v50);
  v619 = &v550 - v51;
  MEMORY[0x1EEE9AC00](v52);
  v623 = &v550 - v53;
  MEMORY[0x1EEE9AC00](v54);
  v626 = &v550 - v55;
  MEMORY[0x1EEE9AC00](v56);
  v629 = &v550 - v57;
  MEMORY[0x1EEE9AC00](v58);
  v632 = &v550 - v59;
  MEMORY[0x1EEE9AC00](v60);
  v635 = &v550 - v61;
  MEMORY[0x1EEE9AC00](v62);
  v638 = &v550 - v63;
  MEMORY[0x1EEE9AC00](v64);
  v641 = &v550 - v65;
  MEMORY[0x1EEE9AC00](v66);
  v644 = &v550 - v67;
  MEMORY[0x1EEE9AC00](v68);
  v70 = &v550 - v69;
  v71 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v71 - 8);
  v595 = &v550 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v73);
  v594 = &v550 - v74;
  MEMORY[0x1EEE9AC00](v75);
  v592 = &v550 - v76;
  MEMORY[0x1EEE9AC00](v77);
  v591 = &v550 - v78;
  MEMORY[0x1EEE9AC00](v79);
  v589 = &v550 - v80;
  MEMORY[0x1EEE9AC00](v81);
  v587 = &v550 - v82;
  MEMORY[0x1EEE9AC00](v83);
  v586 = &v550 - v84;
  MEMORY[0x1EEE9AC00](v85);
  v584 = &v550 - v86;
  MEMORY[0x1EEE9AC00](v87);
  v583 = &v550 - v88;
  MEMORY[0x1EEE9AC00](v89);
  v581 = &v550 - v90;
  MEMORY[0x1EEE9AC00](v91);
  v579 = &v550 - v92;
  MEMORY[0x1EEE9AC00](v93);
  v578 = &v550 - v94;
  MEMORY[0x1EEE9AC00](v95);
  v576 = &v550 - v96;
  MEMORY[0x1EEE9AC00](v97);
  v575 = &v550 - v98;
  MEMORY[0x1EEE9AC00](v99);
  v573 = &v550 - v100;
  MEMORY[0x1EEE9AC00](v101);
  v572 = &v550 - v102;
  MEMORY[0x1EEE9AC00](v103);
  v570 = &v550 - v104;
  MEMORY[0x1EEE9AC00](v105);
  v569 = &v550 - v106;
  MEMORY[0x1EEE9AC00](v107);
  v567 = &v550 - v108;
  MEMORY[0x1EEE9AC00](v109);
  v566 = &v550 - v110;
  MEMORY[0x1EEE9AC00](v111);
  v564 = &v550 - v112;
  MEMORY[0x1EEE9AC00](v113);
  v563 = &v550 - v114;
  MEMORY[0x1EEE9AC00](v115);
  v561 = &v550 - v116;
  MEMORY[0x1EEE9AC00](v117);
  v560 = &v550 - v118;
  MEMORY[0x1EEE9AC00](v119);
  v558 = &v550 - v120;
  MEMORY[0x1EEE9AC00](v121);
  v557 = &v550 - v122;
  MEMORY[0x1EEE9AC00](v123);
  v555 = &v550 - v124;
  MEMORY[0x1EEE9AC00](v125);
  v554 = &v550 - v126;
  MEMORY[0x1EEE9AC00](v127);
  v553 = &v550 - v128;
  MEMORY[0x1EEE9AC00](v129);
  v552 = &v550 - v130;
  MEMORY[0x1EEE9AC00](v131);
  v551 = &v550 - v132;
  MEMORY[0x1EEE9AC00](v133);
  v550 = &v550 - v134;
  MEMORY[0x1EEE9AC00](v135);
  v598 = &v550 - v136;
  MEMORY[0x1EEE9AC00](v137);
  v599 = &v550 - v138;
  MEMORY[0x1EEE9AC00](v139);
  v600 = &v550 - v140;
  MEMORY[0x1EEE9AC00](v141);
  v602 = &v550 - v142;
  MEMORY[0x1EEE9AC00](v143);
  v603 = &v550 - v144;
  MEMORY[0x1EEE9AC00](v145);
  v605 = &v550 - v146;
  MEMORY[0x1EEE9AC00](v147);
  v606 = &v550 - v148;
  MEMORY[0x1EEE9AC00](v149);
  v608 = &v550 - v150;
  MEMORY[0x1EEE9AC00](v151);
  v609 = &v550 - v152;
  MEMORY[0x1EEE9AC00](v153);
  v611 = &v550 - v154;
  MEMORY[0x1EEE9AC00](v155);
  v612 = &v550 - v156;
  MEMORY[0x1EEE9AC00](v157);
  v614 = &v550 - v158;
  MEMORY[0x1EEE9AC00](v159);
  v615 = &v550 - v160;
  MEMORY[0x1EEE9AC00](v161);
  v618 = &v550 - v162;
  MEMORY[0x1EEE9AC00](v163);
  v617 = &v550 - v164;
  MEMORY[0x1EEE9AC00](v165);
  v622 = &v550 - v166;
  MEMORY[0x1EEE9AC00](v167);
  v621 = &v550 - v168;
  MEMORY[0x1EEE9AC00](v169);
  v625 = &v550 - v170;
  MEMORY[0x1EEE9AC00](v171);
  v624 = &v550 - v172;
  MEMORY[0x1EEE9AC00](v173);
  v628 = &v550 - v174;
  MEMORY[0x1EEE9AC00](v175);
  v627 = &v550 - v176;
  MEMORY[0x1EEE9AC00](v177);
  v631 = &v550 - v178;
  MEMORY[0x1EEE9AC00](v179);
  v630 = &v550 - v180;
  MEMORY[0x1EEE9AC00](v181);
  v634 = &v550 - v182;
  MEMORY[0x1EEE9AC00](v183);
  v633 = &v550 - v184;
  MEMORY[0x1EEE9AC00](v185);
  v637 = &v550 - v186;
  MEMORY[0x1EEE9AC00](v187);
  v636 = &v550 - v188;
  MEMORY[0x1EEE9AC00](v189);
  v640 = &v550 - v190;
  MEMORY[0x1EEE9AC00](v191);
  v639 = &v550 - v192;
  MEMORY[0x1EEE9AC00](v193);
  v643 = &v550 - v194;
  MEMORY[0x1EEE9AC00](v195);
  v642 = &v550 - v196;
  MEMORY[0x1EEE9AC00](v197);
  v646 = &v550 - v198;
  MEMORY[0x1EEE9AC00](v199);
  v201 = &v550 - v200;
  MEMORY[0x1EEE9AC00](v202);
  v204 = &v550 - v203;
  v205 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__behaviorPopularityGivenContextCoarseGeoHash;
  swift_beginAccess();
  sub_1C446C964(a1 + v205, v204, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v206 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__behaviorPopularityGivenContextCoarseGeoHash;
  swift_beginAccess();
  v207 = *(v647 + 48);
  sub_1C446C964(v204, v70, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v208 = &v70[v207];
  v209 = v70;
  v210 = v648;
  sub_1C446C964(a2 + v206, v208, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v209, 1, v210) == 1)
  {

    sub_1C4420C3C(v204, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    v211 = a2;
    v212 = a1;
    if (sub_1C44157D4(v209 + v207, 1, v210) == 1)
    {
      sub_1C4420C3C(v209, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      v213 = v647;
      goto LABEL_8;
    }

LABEL_6:
    v214 = v209;
LABEL_58:
    sub_1C4420C3C(v214, &qword_1EC0BB6C0, &unk_1C4F20AE0);
    goto LABEL_59;
  }

  sub_1C446C964(v209, v201, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v209 + v207, 1, v210) == 1)
  {

    sub_1C4420C3C(v204, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C46ED02C();
    goto LABEL_6;
  }

  v215 = v209 + v207;
  v216 = v209;
  v217 = v645;
  sub_1C46ECFD4(v215, v645);

  v218 = sub_1C47E3504(v201, v217);
  v213 = v647;
  sub_1C46ED02C();
  sub_1C4420C3C(v204, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v211 = a2;
  v212 = a1;
  sub_1C46ED02C();
  sub_1C4420C3C(v216, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v218 & 1) == 0)
  {
    goto LABEL_59;
  }

LABEL_8:
  v219 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__behaviorPopularityGivenContextCoarseTimeOfDay;
  swift_beginAccess();
  v220 = v646;
  sub_1C446C964(v212 + v219, v646, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v221 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__behaviorPopularityGivenContextCoarseTimeOfDay;
  swift_beginAccess();
  v222 = *(v213 + 48);
  v223 = v644;
  sub_1C446C964(v220, v644, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C446C964(v211 + v221, v223 + v222, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v223, 1, v648) == 1)
  {
    sub_1C4420C3C(v220, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v223 + v222, 1, v648) != 1)
    {
      goto LABEL_57;
    }

    sub_1C4420C3C(v223, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  else
  {
    v224 = v642;
    sub_1C446C964(v223, v642, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v223 + v222, 1, v648) == 1)
    {
      sub_1C4420C3C(v646, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
LABEL_56:
      sub_1C46ED02C();
      goto LABEL_57;
    }

    v225 = v223 + v222;
    v226 = v645;
    sub_1C46ECFD4(v225, v645);
    v227 = sub_1C47E3504(v224, v226);
    sub_1C46ED02C();
    sub_1C4420C3C(v646, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C46ED02C();
    sub_1C4420C3C(v223, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if ((v227 & 1) == 0)
    {
      goto LABEL_59;
    }
  }

  v228 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__behaviorPopularityGivenContextDayOfWeek;
  swift_beginAccess();
  v229 = v643;
  sub_1C446C964(v212 + v228, v643, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v230 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__behaviorPopularityGivenContextDayOfWeek;
  swift_beginAccess();
  v231 = *(v213 + 48);
  v223 = v641;
  sub_1C446C964(v229, v641, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C446C964(v211 + v230, v223 + v231, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v223, 1, v648) == 1)
  {
    sub_1C4420C3C(v229, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v223 + v231, 1, v648) != 1)
    {
      goto LABEL_57;
    }

    sub_1C4420C3C(v223, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  else
  {
    v232 = v639;
    sub_1C446C964(v223, v639, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v223 + v231, 1, v648) == 1)
    {
      v233 = v643;
      goto LABEL_55;
    }

    v234 = v223 + v231;
    v235 = v645;
    sub_1C46ECFD4(v234, v645);
    v236 = sub_1C47E3504(v232, v235);
    sub_1C46ED02C();
    sub_1C4420C3C(v643, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C46ED02C();
    sub_1C4420C3C(v223, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if ((v236 & 1) == 0)
    {
      goto LABEL_59;
    }
  }

  v237 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__behaviorPopularityGivenContextLoi;
  swift_beginAccess();
  v238 = v213;
  v239 = v640;
  sub_1C446C964(v212 + v237, v640, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v240 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__behaviorPopularityGivenContextLoi;
  swift_beginAccess();
  v241 = *(v238 + 48);
  v223 = v638;
  sub_1C446C964(v239, v638, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C446C964(v211 + v240, v223 + v241, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v223, 1, v648) == 1)
  {
    sub_1C4420C3C(v239, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v223 + v241, 1, v648) != 1)
    {
      goto LABEL_57;
    }

    sub_1C4420C3C(v223, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  else
  {
    v242 = v636;
    sub_1C446C964(v223, v636, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v223 + v241, 1, v648) == 1)
    {
      v233 = v640;
      goto LABEL_55;
    }

    v243 = v223 + v241;
    v244 = v645;
    sub_1C46ECFD4(v243, v645);
    v245 = sub_1C47E3504(v242, v244);
    sub_1C46ED02C();
    sub_1C4420C3C(v640, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C46ED02C();
    sub_1C4420C3C(v223, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if ((v245 & 1) == 0)
    {
      goto LABEL_59;
    }
  }

  v246 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__behaviorPopularityGivenContextSpecificGeoHash;
  swift_beginAccess();
  v247 = v637;
  sub_1C446C964(v212 + v246, v637, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v248 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__behaviorPopularityGivenContextSpecificGeoHash;
  swift_beginAccess();
  v249 = v647;
  v250 = *(v647 + 48);
  v223 = v635;
  sub_1C446C964(v247, v635, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C446C964(v211 + v248, v223 + v250, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v223, 1, v648) == 1)
  {
    sub_1C4420C3C(v247, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v223 + v250, 1, v648) != 1)
    {
      goto LABEL_57;
    }

    sub_1C4420C3C(v223, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  else
  {
    v251 = v633;
    sub_1C446C964(v223, v633, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v223 + v250, 1, v648) == 1)
    {
      v233 = v637;
      goto LABEL_55;
    }

    v252 = v645;
    sub_1C46ECFD4(v223 + v250, v645);
    v253 = sub_1C47E3504(v251, v252);
    sub_1C46ED02C();
    sub_1C4420C3C(v637, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C46ED02C();
    sub_1C4420C3C(v223, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if ((v253 & 1) == 0)
    {
      goto LABEL_59;
    }
  }

  v254 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__behaviorPopularityGivenContextWifi;
  swift_beginAccess();
  v255 = v634;
  sub_1C446C964(v212 + v254, v634, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v256 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__behaviorPopularityGivenContextWifi;
  swift_beginAccess();
  v257 = *(v249 + 48);
  v223 = v632;
  sub_1C446C964(v255, v632, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C446C964(v211 + v256, v223 + v257, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v223, 1, v648) == 1)
  {
    sub_1C4420C3C(v255, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v223 + v257, 1, v648) != 1)
    {
      goto LABEL_57;
    }

    sub_1C4420C3C(v223, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  else
  {
    v258 = v630;
    sub_1C446C964(v223, v630, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v223 + v257, 1, v648) == 1)
    {
      v233 = v634;
      goto LABEL_55;
    }

    v259 = v645;
    sub_1C46ECFD4(v223 + v257, v645);
    v260 = sub_1C47E3504(v258, v259);
    sub_1C46ED02C();
    sub_1C4420C3C(v634, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C46ED02C();
    sub_1C4420C3C(v223, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if ((v260 & 1) == 0)
    {
      goto LABEL_59;
    }
  }

  v261 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__behaviorPopularityGivenSequence;
  swift_beginAccess();
  v262 = v631;
  sub_1C446C964(v212 + v261, v631, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v263 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__behaviorPopularityGivenSequence;
  swift_beginAccess();
  v264 = *(v249 + 48);
  v223 = v629;
  sub_1C446C964(v262, v629, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C446C964(v211 + v263, v223 + v264, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v223, 1, v648) != 1)
  {
    v265 = v627;
    sub_1C446C964(v223, v627, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v223 + v264, 1, v648) != 1)
    {
      v266 = v645;
      sub_1C46ECFD4(v223 + v264, v645);
      v267 = sub_1C47E3504(v265, v266);
      sub_1C46ED02C();
      sub_1C4420C3C(v631, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      sub_1C46ED02C();
      sub_1C4420C3C(v223, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      if ((v267 & 1) == 0)
      {
        goto LABEL_59;
      }

      goto LABEL_44;
    }

    v233 = v631;
LABEL_55:
    sub_1C4420C3C(v233, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    goto LABEL_56;
  }

  sub_1C4420C3C(v262, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v223 + v264, 1, v648) != 1)
  {
    goto LABEL_57;
  }

  sub_1C4420C3C(v223, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
LABEL_44:
  v268 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__contextPopularityGivenBehaviorCoarseGeoHash;
  swift_beginAccess();
  v269 = v628;
  sub_1C446C964(v212 + v268, v628, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v270 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__contextPopularityGivenBehaviorCoarseGeoHash;
  swift_beginAccess();
  v271 = *(v249 + 48);
  v223 = v626;
  sub_1C446C964(v269, v626, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C446C964(v211 + v270, v223 + v271, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v223, 1, v648) == 1)
  {
    sub_1C4420C3C(v269, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v223 + v271, 1, v648) == 1)
    {
      sub_1C4420C3C(v223, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_50;
    }

LABEL_57:
    v214 = v223;
    goto LABEL_58;
  }

  v272 = v624;
  sub_1C446C964(v223, v624, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v223 + v271, 1, v648) == 1)
  {
    v233 = v628;
    goto LABEL_55;
  }

  v273 = v645;
  sub_1C46ECFD4(v223 + v271, v645);
  v274 = sub_1C47E3504(v272, v273);
  sub_1C46ED02C();
  sub_1C4420C3C(v628, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C46ED02C();
  sub_1C4420C3C(v223, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v274 & 1) == 0)
  {
    goto LABEL_59;
  }

LABEL_50:
  v275 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__contextPopularityGivenBehaviorCoarseTimeOfDay;
  swift_beginAccess();
  v276 = v625;
  sub_1C446C964(v212 + v275, v625, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v277 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__contextPopularityGivenBehaviorCoarseTimeOfDay;
  swift_beginAccess();
  v278 = *(v249 + 48);
  v223 = v623;
  sub_1C446C964(v276, v623, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C446C964(v211 + v277, v223 + v278, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v223, 1, v648) == 1)
  {
    sub_1C4420C3C(v276, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v223 + v278, 1, v648) == 1)
    {
      sub_1C4420C3C(v223, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_62;
    }

    goto LABEL_57;
  }

  v279 = v621;
  sub_1C446C964(v223, v621, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v223 + v278, 1, v648) == 1)
  {
    v233 = v625;
    goto LABEL_55;
  }

  v281 = v645;
  sub_1C46ECFD4(v223 + v278, v645);
  v282 = sub_1C47E3504(v279, v281);
  sub_1C46ED02C();
  sub_1C4420C3C(v625, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C46ED02C();
  sub_1C4420C3C(v223, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v282 & 1) == 0)
  {
    goto LABEL_59;
  }

LABEL_62:
  v283 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__contextPopularityGivenBehaviorDayOfWeek;
  swift_beginAccess();
  v284 = v622;
  sub_1C446C964(v212 + v283, v622, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v285 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__contextPopularityGivenBehaviorDayOfWeek;
  swift_beginAccess();
  v286 = *(v249 + 48);
  v287 = v619;
  sub_1C446C964(v284, v619, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C446C964(v211 + v285, v287 + v286, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v287, 1, v648) == 1)
  {
    sub_1C4420C3C(v622, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    v288 = v648;
    if (sub_1C44157D4(v287 + v286, 1, v648) == 1)
    {
      sub_1C4420C3C(v287, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_69;
    }

    goto LABEL_67;
  }

  v289 = v617;
  sub_1C446C964(v287, v617, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v288 = v648;
  if (sub_1C44157D4(v287 + v286, 1, v648) == 1)
  {
    sub_1C4420C3C(v622, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C46ED02C();
LABEL_67:
    v214 = v287;
    goto LABEL_58;
  }

  v290 = v287 + v286;
  v291 = v645;
  sub_1C46ECFD4(v290, v645);
  v292 = sub_1C47E3504(v289, v291);
  sub_1C46ED02C();
  sub_1C4420C3C(v622, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C46ED02C();
  sub_1C4420C3C(v287, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v292 & 1) == 0)
  {
    goto LABEL_59;
  }

LABEL_69:
  v293 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__contextPopularityGivenBehaviorLoi;
  swift_beginAccess();
  v294 = v212;
  v295 = v212 + v293;
  v296 = v618;
  sub_1C446C964(v295, v618, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v297 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__contextPopularityGivenBehaviorLoi;
  swift_beginAccess();
  v298 = *(v647 + 48);
  v299 = v296;
  v300 = v620;
  sub_1C446C964(v299, v620, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v646 = v211;
  sub_1C446C964(v211 + v297, v300 + v298, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v300, 1, v288) == 1)
  {
    sub_1C4420C3C(v618, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v620 + v298, 1, v288) == 1)
    {
      sub_1C4420C3C(v620, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_76;
    }

LABEL_74:
    v302 = v620;
LABEL_222:
    sub_1C4420C3C(v302, &qword_1EC0BB6C0, &unk_1C4F20AE0);
    goto LABEL_59;
  }

  v301 = v620;
  sub_1C446C964(v620, v615, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v301 + v298, 1, v288) == 1)
  {
    sub_1C4420C3C(v618, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C46ED02C();
    goto LABEL_74;
  }

  v303 = v620;
  v304 = v620 + v298;
  v305 = v645;
  sub_1C46ECFD4(v304, v645);
  v306 = sub_1C47E3504(v615, v305);
  sub_1C46ED02C();
  sub_1C4420C3C(v618, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C46ED02C();
  sub_1C4420C3C(v303, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v306 & 1) == 0)
  {
    goto LABEL_59;
  }

LABEL_76:
  v307 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__contextPopularityGivenBehaviorSpecificGeoHash;
  swift_beginAccess();
  v308 = v614;
  sub_1C446C964(v294 + v307, v614, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v309 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__contextPopularityGivenBehaviorSpecificGeoHash;
  v310 = v646;
  swift_beginAccess();
  v311 = *(v647 + 48);
  v312 = v308;
  v313 = v616;
  sub_1C446C964(v312, v616, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C446C964(v310 + v309, v313 + v311, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v313, 1, v288) == 1)
  {
    sub_1C4420C3C(v614, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v616 + v311, 1, v288) == 1)
    {
      sub_1C4420C3C(v616, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_83;
    }

    goto LABEL_81;
  }

  v314 = v616;
  sub_1C446C964(v616, v612, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v314 + v311, 1, v288) == 1)
  {
    sub_1C4420C3C(v614, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C46ED02C();
LABEL_81:
    v302 = v616;
    goto LABEL_222;
  }

  v315 = v616;
  v316 = v616 + v311;
  v317 = v645;
  sub_1C46ECFD4(v316, v645);
  v318 = sub_1C47E3504(v612, v317);
  sub_1C46ED02C();
  sub_1C4420C3C(v614, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C46ED02C();
  sub_1C4420C3C(v315, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v318 & 1) == 0)
  {
    goto LABEL_59;
  }

LABEL_83:
  v319 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__contextPopularityGivenBehaviorWifi;
  swift_beginAccess();
  v320 = v611;
  sub_1C446C964(v294 + v319, v611, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v321 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__contextPopularityGivenBehaviorWifi;
  v322 = v646;
  swift_beginAccess();
  v323 = *(v647 + 48);
  v324 = v320;
  v325 = v613;
  sub_1C446C964(v324, v613, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C446C964(v322 + v321, v325 + v323, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v325, 1, v288) == 1)
  {
    sub_1C4420C3C(v611, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v613 + v323, 1, v288) == 1)
    {
      sub_1C4420C3C(v613, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_90;
    }

    goto LABEL_88;
  }

  v326 = v613;
  sub_1C446C964(v613, v609, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v326 + v323, 1, v288) == 1)
  {
    sub_1C4420C3C(v611, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C46ED02C();
LABEL_88:
    v302 = v613;
    goto LABEL_222;
  }

  v327 = v613;
  v328 = v613 + v323;
  v329 = v645;
  sub_1C46ECFD4(v328, v645);
  v330 = sub_1C47E3504(v609, v329);
  sub_1C46ED02C();
  sub_1C4420C3C(v611, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C46ED02C();
  sub_1C4420C3C(v327, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v330 & 1) == 0)
  {
    goto LABEL_59;
  }

LABEL_90:
  v331 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__dailyDoseL1Error;
  swift_beginAccess();
  v332 = v608;
  sub_1C446C964(v294 + v331, v608, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v333 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__dailyDoseL1Error;
  v334 = v646;
  swift_beginAccess();
  v335 = *(v647 + 48);
  v336 = v332;
  v337 = v610;
  sub_1C446C964(v336, v610, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C446C964(v334 + v333, v337 + v335, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v337, 1, v288) == 1)
  {
    sub_1C4420C3C(v608, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v610 + v335, 1, v288) == 1)
    {
      sub_1C4420C3C(v610, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_97;
    }

    goto LABEL_95;
  }

  v338 = v610;
  sub_1C446C964(v610, v606, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v338 + v335, 1, v288) == 1)
  {
    sub_1C4420C3C(v608, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C46ED02C();
LABEL_95:
    v302 = v610;
    goto LABEL_222;
  }

  v339 = v610;
  v340 = v610 + v335;
  v341 = v645;
  sub_1C46ECFD4(v340, v645);
  v342 = sub_1C47E3504(v606, v341);
  sub_1C46ED02C();
  sub_1C4420C3C(v608, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C46ED02C();
  sub_1C4420C3C(v339, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v342 & 1) == 0)
  {
    goto LABEL_59;
  }

LABEL_97:
  v343 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__dailyDoseL2Error;
  swift_beginAccess();
  v344 = v605;
  sub_1C446C964(v294 + v343, v605, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v345 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__dailyDoseL2Error;
  v346 = v646;
  swift_beginAccess();
  v347 = *(v647 + 48);
  v348 = v344;
  v349 = v607;
  sub_1C446C964(v348, v607, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C446C964(v346 + v345, v349 + v347, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v349, 1, v288) == 1)
  {
    sub_1C4420C3C(v605, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v607 + v347, 1, v288) == 1)
    {
      sub_1C4420C3C(v607, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_104;
    }

    goto LABEL_102;
  }

  v350 = v607;
  sub_1C446C964(v607, v603, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v350 + v347, 1, v288) == 1)
  {
    sub_1C4420C3C(v605, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C46ED02C();
LABEL_102:
    v302 = v607;
    goto LABEL_222;
  }

  v351 = v607;
  v352 = v607 + v347;
  v353 = v645;
  sub_1C46ECFD4(v352, v645);
  v354 = sub_1C47E3504(v603, v353);
  sub_1C46ED02C();
  sub_1C4420C3C(v605, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C46ED02C();
  sub_1C4420C3C(v351, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v354 & 1) == 0)
  {
    goto LABEL_59;
  }

LABEL_104:
  v355 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__lastExecutionAge;
  swift_beginAccess();
  v356 = v602;
  sub_1C446C964(v294 + v355, v602, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v357 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__lastExecutionAge;
  v358 = v646;
  swift_beginAccess();
  v359 = *(v647 + 48);
  v360 = v604;
  sub_1C446C964(v356, v604, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C446C964(v358 + v357, v360 + v359, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v360, 1, v288) == 1)
  {
    sub_1C4420C3C(v602, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v604 + v359, 1, v288) == 1)
    {
      sub_1C4420C3C(v604, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_111;
    }

    goto LABEL_109;
  }

  v361 = v604;
  sub_1C446C964(v604, v600, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v361 + v359, 1, v288) == 1)
  {
    sub_1C4420C3C(v602, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C46ED02C();
LABEL_109:
    v302 = v604;
    goto LABEL_222;
  }

  v362 = v604;
  v363 = v645;
  sub_1C46ECFD4(v604 + v359, v645);
  v364 = sub_1C47E3504(v600, v363);
  sub_1C46ED02C();
  sub_1C4420C3C(v602, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C46ED02C();
  sub_1C4420C3C(v362, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v364 & 1) == 0)
  {
    goto LABEL_59;
  }

LABEL_111:
  v365 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__longTermTrendingPopularity;
  swift_beginAccess();
  v366 = v599;
  sub_1C446C964(v294 + v365, v599, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v367 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__longTermTrendingPopularity;
  v368 = v646;
  swift_beginAccess();
  v369 = *(v647 + 48);
  v370 = v601;
  sub_1C446C964(v366, v601, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C446C964(v368 + v367, v370 + v369, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v370, 1, v288) == 1)
  {
    sub_1C4420C3C(v599, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v601 + v369, 1, v288) == 1)
    {
      sub_1C4420C3C(v601, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_118;
    }

    goto LABEL_116;
  }

  v371 = v601;
  sub_1C446C964(v601, v598, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v371 + v369, 1, v288) == 1)
  {
    sub_1C4420C3C(v599, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C46ED02C();
LABEL_116:
    v302 = v601;
    goto LABEL_222;
  }

  v372 = v601;
  v373 = v645;
  sub_1C46ECFD4(v601 + v369, v645);
  v374 = sub_1C47E3504(v598, v373);
  sub_1C46ED02C();
  sub_1C4420C3C(v599, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C46ED02C();
  sub_1C4420C3C(v372, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v374 & 1) == 0)
  {
    goto LABEL_59;
  }

LABEL_118:
  v375 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__medianTimeIntervalBetweenExecution;
  swift_beginAccess();
  v376 = v550;
  sub_1C446C964(v294 + v375, v550, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v377 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__medianTimeIntervalBetweenExecution;
  v378 = v646;
  swift_beginAccess();
  v379 = *(v647 + 48);
  v380 = v376;
  v381 = v556;
  sub_1C446C964(v380, v556, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C446C964(v378 + v377, v381 + v379, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v381, 1, v288) == 1)
  {
    sub_1C4420C3C(v550, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v556 + v379, 1, v288) == 1)
    {
      sub_1C4420C3C(v556, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_125;
    }

    goto LABEL_123;
  }

  v382 = v556;
  sub_1C446C964(v556, v551, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v382 + v379, 1, v288) == 1)
  {
    sub_1C4420C3C(v550, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C46ED02C();
LABEL_123:
    v302 = v556;
    goto LABEL_222;
  }

  v383 = v556;
  v384 = v645;
  sub_1C46ECFD4(v556 + v379, v645);
  v385 = sub_1C47E3504(v551, v384);
  sub_1C46ED02C();
  sub_1C4420C3C(v550, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C46ED02C();
  sub_1C4420C3C(v383, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v385 & 1) == 0)
  {
    goto LABEL_59;
  }

LABEL_125:
  v386 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextCoarseGeoHash;
  swift_beginAccess();
  v387 = v552;
  sub_1C446C964(v294 + v386, v552, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v388 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextCoarseGeoHash;
  v389 = v646;
  swift_beginAccess();
  v390 = *(v647 + 48);
  v391 = v387;
  v392 = v559;
  sub_1C446C964(v391, v559, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C446C964(v389 + v388, v392 + v390, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v392, 1, v288) == 1)
  {
    sub_1C4420C3C(v552, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v559 + v390, 1, v288) == 1)
    {
      sub_1C4420C3C(v559, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_132;
    }

    goto LABEL_130;
  }

  v393 = v559;
  sub_1C446C964(v559, v553, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v393 + v390, 1, v288) == 1)
  {
    sub_1C4420C3C(v552, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C46ED02C();
LABEL_130:
    v302 = v559;
    goto LABEL_222;
  }

  v394 = v559;
  v395 = v645;
  sub_1C46ECFD4(v559 + v390, v645);
  v396 = sub_1C47E3504(v553, v395);
  sub_1C46ED02C();
  sub_1C4420C3C(v552, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C46ED02C();
  sub_1C4420C3C(v394, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v396 & 1) == 0)
  {
    goto LABEL_59;
  }

LABEL_132:
  v397 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextCoarseGeoHashCoarseTimeOfDay;
  swift_beginAccess();
  v398 = v554;
  sub_1C446C964(v294 + v397, v554, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v399 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextCoarseGeoHashCoarseTimeOfDay;
  v400 = v646;
  swift_beginAccess();
  v401 = *(v647 + 48);
  v402 = v398;
  v403 = v562;
  sub_1C446C964(v402, v562, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C446C964(v400 + v399, v403 + v401, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v403, 1, v288) == 1)
  {
    sub_1C4420C3C(v554, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v562 + v401, 1, v288) == 1)
    {
      sub_1C4420C3C(v562, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_139;
    }

    goto LABEL_137;
  }

  v404 = v562;
  sub_1C446C964(v562, v555, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v404 + v401, 1, v288) == 1)
  {
    sub_1C4420C3C(v554, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C46ED02C();
LABEL_137:
    v302 = v562;
    goto LABEL_222;
  }

  v405 = v562;
  v406 = v645;
  sub_1C46ECFD4(v562 + v401, v645);
  v407 = sub_1C47E3504(v555, v406);
  sub_1C46ED02C();
  sub_1C4420C3C(v554, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C46ED02C();
  sub_1C4420C3C(v405, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v407 & 1) == 0)
  {
    goto LABEL_59;
  }

LABEL_139:
  v408 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextCoarseTimeOfDay;
  swift_beginAccess();
  v409 = v557;
  sub_1C446C964(v294 + v408, v557, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v410 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextCoarseTimeOfDay;
  v411 = v646;
  swift_beginAccess();
  v412 = *(v647 + 48);
  v413 = v409;
  v414 = v565;
  sub_1C446C964(v413, v565, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C446C964(v411 + v410, v414 + v412, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v414, 1, v288) == 1)
  {
    sub_1C4420C3C(v557, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v565 + v412, 1, v288) == 1)
    {
      sub_1C4420C3C(v565, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_146;
    }

    goto LABEL_144;
  }

  v415 = v565;
  sub_1C446C964(v565, v558, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v415 + v412, 1, v288) == 1)
  {
    sub_1C4420C3C(v557, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C46ED02C();
LABEL_144:
    v302 = v565;
    goto LABEL_222;
  }

  v416 = v565;
  v417 = v645;
  sub_1C46ECFD4(v565 + v412, v645);
  v418 = sub_1C47E3504(v558, v417);
  sub_1C46ED02C();
  sub_1C4420C3C(v557, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C46ED02C();
  sub_1C4420C3C(v416, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v418 & 1) == 0)
  {
    goto LABEL_59;
  }

LABEL_146:
  v419 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextCoarseTimeOfDayDayOfWeek;
  swift_beginAccess();
  v420 = v560;
  sub_1C446C964(v294 + v419, v560, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v421 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextCoarseTimeOfDayDayOfWeek;
  v422 = v646;
  swift_beginAccess();
  v423 = *(v647 + 48);
  v424 = v420;
  v425 = v568;
  sub_1C446C964(v424, v568, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C446C964(v422 + v421, v425 + v423, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v425, 1, v288) == 1)
  {
    sub_1C4420C3C(v560, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v568 + v423, 1, v288) == 1)
    {
      sub_1C4420C3C(v568, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_153;
    }

    goto LABEL_151;
  }

  v426 = v568;
  sub_1C446C964(v568, v561, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v426 + v423, 1, v288) == 1)
  {
    sub_1C4420C3C(v560, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C46ED02C();
LABEL_151:
    v302 = v568;
    goto LABEL_222;
  }

  v427 = v568;
  v428 = v645;
  sub_1C46ECFD4(v568 + v423, v645);
  v429 = sub_1C47E3504(v561, v428);
  sub_1C46ED02C();
  sub_1C4420C3C(v560, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C46ED02C();
  sub_1C4420C3C(v427, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v429 & 1) == 0)
  {
    goto LABEL_59;
  }

LABEL_153:
  v430 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextCoarseTimeOfDaySpecificGeoHash;
  swift_beginAccess();
  v431 = v563;
  sub_1C446C964(v294 + v430, v563, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v432 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextCoarseTimeOfDaySpecificGeoHash;
  v433 = v646;
  swift_beginAccess();
  v434 = *(v647 + 48);
  v435 = v431;
  v436 = v571;
  sub_1C446C964(v435, v571, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C446C964(v433 + v432, v436 + v434, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v436, 1, v288) == 1)
  {
    sub_1C4420C3C(v563, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v571 + v434, 1, v288) == 1)
    {
      sub_1C4420C3C(v571, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_160;
    }

    goto LABEL_158;
  }

  v437 = v571;
  sub_1C446C964(v571, v564, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v437 + v434, 1, v288) == 1)
  {
    sub_1C4420C3C(v563, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C46ED02C();
LABEL_158:
    v302 = v571;
    goto LABEL_222;
  }

  v438 = v571;
  v439 = v645;
  sub_1C46ECFD4(v571 + v434, v645);
  v440 = sub_1C47E3504(v564, v439);
  sub_1C46ED02C();
  sub_1C4420C3C(v563, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C46ED02C();
  sub_1C4420C3C(v438, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v440 & 1) == 0)
  {
    goto LABEL_59;
  }

LABEL_160:
  v441 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextCoarseTimeOfDayWifi;
  swift_beginAccess();
  v442 = v566;
  sub_1C446C964(v294 + v441, v566, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v443 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextCoarseTimeOfDayWifi;
  v444 = v646;
  swift_beginAccess();
  v445 = *(v647 + 48);
  v446 = v442;
  v447 = v574;
  sub_1C446C964(v446, v574, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C446C964(v444 + v443, v447 + v445, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v447, 1, v288) == 1)
  {
    sub_1C4420C3C(v566, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v574 + v445, 1, v288) == 1)
    {
      sub_1C4420C3C(v574, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_167;
    }

    goto LABEL_165;
  }

  v448 = v574;
  sub_1C446C964(v574, v567, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v448 + v445, 1, v288) == 1)
  {
    sub_1C4420C3C(v566, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C46ED02C();
LABEL_165:
    v302 = v574;
    goto LABEL_222;
  }

  v449 = v574;
  v450 = v645;
  sub_1C46ECFD4(v574 + v445, v645);
  v451 = sub_1C47E3504(v567, v450);
  sub_1C46ED02C();
  sub_1C4420C3C(v566, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C46ED02C();
  sub_1C4420C3C(v449, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v451 & 1) == 0)
  {
    goto LABEL_59;
  }

LABEL_167:
  v452 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextDayOfWeek;
  swift_beginAccess();
  v453 = v569;
  sub_1C446C964(v294 + v452, v569, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v454 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextDayOfWeek;
  v455 = v646;
  swift_beginAccess();
  v456 = *(v647 + 48);
  v457 = v453;
  v458 = v577;
  sub_1C446C964(v457, v577, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C446C964(v455 + v454, v458 + v456, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v458, 1, v288) == 1)
  {
    sub_1C4420C3C(v569, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v577 + v456, 1, v288) == 1)
    {
      sub_1C4420C3C(v577, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_174;
    }

    goto LABEL_172;
  }

  v459 = v577;
  sub_1C446C964(v577, v570, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v459 + v456, 1, v288) == 1)
  {
    sub_1C4420C3C(v569, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C46ED02C();
LABEL_172:
    v302 = v577;
    goto LABEL_222;
  }

  v460 = v577;
  v461 = v645;
  sub_1C46ECFD4(v577 + v456, v645);
  v462 = sub_1C47E3504(v570, v461);
  sub_1C46ED02C();
  sub_1C4420C3C(v569, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C46ED02C();
  sub_1C4420C3C(v460, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v462 & 1) == 0)
  {
    goto LABEL_59;
  }

LABEL_174:
  v463 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextDayOfWeekSpecificGeoHash;
  swift_beginAccess();
  v464 = v572;
  sub_1C446C964(v294 + v463, v572, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v465 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextDayOfWeekSpecificGeoHash;
  v466 = v646;
  swift_beginAccess();
  v467 = *(v647 + 48);
  v468 = v464;
  v469 = v580;
  sub_1C446C964(v468, v580, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C446C964(v466 + v465, v469 + v467, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v469, 1, v288) == 1)
  {
    sub_1C4420C3C(v572, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v580 + v467, 1, v288) == 1)
    {
      sub_1C4420C3C(v580, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_181;
    }

    goto LABEL_179;
  }

  v470 = v580;
  sub_1C446C964(v580, v573, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v470 + v467, 1, v288) == 1)
  {
    sub_1C4420C3C(v572, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C46ED02C();
LABEL_179:
    v302 = v580;
    goto LABEL_222;
  }

  v471 = v580;
  v472 = v645;
  sub_1C46ECFD4(v580 + v467, v645);
  v473 = sub_1C47E3504(v573, v472);
  sub_1C46ED02C();
  sub_1C4420C3C(v572, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C46ED02C();
  sub_1C4420C3C(v471, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v473 & 1) == 0)
  {
    goto LABEL_59;
  }

LABEL_181:
  v474 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextDayOfWeekWifi;
  swift_beginAccess();
  v475 = v575;
  sub_1C446C964(v294 + v474, v575, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v476 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextDayOfWeekWifi;
  v477 = v646;
  swift_beginAccess();
  v478 = *(v647 + 48);
  v479 = v475;
  v480 = v582;
  sub_1C446C964(v479, v582, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C446C964(v477 + v476, v480 + v478, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v480, 1, v288) == 1)
  {
    sub_1C4420C3C(v575, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v582 + v478, 1, v288) == 1)
    {
      sub_1C4420C3C(v582, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_188;
    }

    goto LABEL_186;
  }

  v481 = v582;
  sub_1C446C964(v582, v576, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v481 + v478, 1, v288) == 1)
  {
    sub_1C4420C3C(v575, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C46ED02C();
LABEL_186:
    v302 = v582;
    goto LABEL_222;
  }

  v482 = v582;
  v483 = v645;
  sub_1C46ECFD4(v582 + v478, v645);
  v484 = sub_1C47E3504(v576, v483);
  sub_1C46ED02C();
  sub_1C4420C3C(v575, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C46ED02C();
  sub_1C4420C3C(v482, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v484 & 1) == 0)
  {
    goto LABEL_59;
  }

LABEL_188:
  v485 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextLoi;
  swift_beginAccess();
  v486 = v578;
  sub_1C446C964(v294 + v485, v578, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v487 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextLoi;
  v488 = v646;
  swift_beginAccess();
  v489 = *(v647 + 48);
  v490 = v486;
  v491 = v585;
  sub_1C446C964(v490, v585, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C446C964(v488 + v487, v491 + v489, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v491, 1, v288) == 1)
  {
    sub_1C4420C3C(v578, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v585 + v489, 1, v288) == 1)
    {
      sub_1C4420C3C(v585, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_195;
    }

    goto LABEL_193;
  }

  v492 = v585;
  sub_1C446C964(v585, v579, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v492 + v489, 1, v288) == 1)
  {
    sub_1C4420C3C(v578, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C46ED02C();
LABEL_193:
    v302 = v585;
    goto LABEL_222;
  }

  v493 = v585;
  v494 = v645;
  sub_1C46ECFD4(v585 + v489, v645);
  v495 = sub_1C47E3504(v579, v494);
  sub_1C46ED02C();
  sub_1C4420C3C(v578, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C46ED02C();
  sub_1C4420C3C(v493, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v495 & 1) == 0)
  {
    goto LABEL_59;
  }

LABEL_195:
  v496 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextSpecificGeoHash;
  swift_beginAccess();
  v497 = v581;
  sub_1C446C964(v294 + v496, v581, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v498 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextSpecificGeoHash;
  v499 = v646;
  swift_beginAccess();
  v500 = *(v647 + 48);
  v501 = v497;
  v502 = v588;
  sub_1C446C964(v501, v588, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C446C964(v499 + v498, v502 + v500, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v502, 1, v288) == 1)
  {
    sub_1C4420C3C(v581, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v588 + v500, 1, v288) == 1)
    {
      sub_1C4420C3C(v588, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_202;
    }

    goto LABEL_200;
  }

  v503 = v588;
  sub_1C446C964(v588, v583, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v503 + v500, 1, v288) == 1)
  {
    sub_1C4420C3C(v581, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C46ED02C();
LABEL_200:
    v302 = v588;
    goto LABEL_222;
  }

  v504 = v588;
  v505 = v645;
  sub_1C46ECFD4(v588 + v500, v645);
  v506 = sub_1C47E3504(v583, v505);
  sub_1C46ED02C();
  sub_1C4420C3C(v581, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C46ED02C();
  sub_1C4420C3C(v504, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v506 & 1) == 0)
  {
    goto LABEL_59;
  }

LABEL_202:
  v507 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextWifi;
  swift_beginAccess();
  v508 = v584;
  sub_1C446C964(v294 + v507, v584, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v509 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__posteriorProbabilityGivenContextWifi;
  v510 = v646;
  swift_beginAccess();
  v511 = *(v647 + 48);
  v512 = v508;
  v513 = v590;
  sub_1C446C964(v512, v590, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C446C964(v510 + v509, v513 + v511, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v513, 1, v288) == 1)
  {
    sub_1C4420C3C(v584, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v590 + v511, 1, v288) == 1)
    {
      sub_1C4420C3C(v590, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_209;
    }

    goto LABEL_207;
  }

  v514 = v590;
  sub_1C446C964(v590, v586, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v514 + v511, 1, v288) == 1)
  {
    sub_1C4420C3C(v584, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C46ED02C();
LABEL_207:
    v302 = v590;
    goto LABEL_222;
  }

  v515 = v590;
  v516 = v645;
  sub_1C46ECFD4(v590 + v511, v645);
  v517 = sub_1C47E3504(v586, v516);
  sub_1C46ED02C();
  sub_1C4420C3C(v584, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C46ED02C();
  sub_1C4420C3C(v515, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v517 & 1) == 0)
  {
    goto LABEL_59;
  }

LABEL_209:
  v518 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__sequencePopularityGivenBehavior;
  swift_beginAccess();
  v519 = v587;
  sub_1C446C964(v294 + v518, v587, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v520 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__sequencePopularityGivenBehavior;
  v521 = v646;
  swift_beginAccess();
  v522 = *(v647 + 48);
  v523 = v519;
  v524 = v593;
  sub_1C446C964(v523, v593, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C446C964(v521 + v520, v524 + v522, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v524, 1, v288) == 1)
  {
    sub_1C4420C3C(v587, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v593 + v522, 1, v288) == 1)
    {
      sub_1C4420C3C(v593, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_216;
    }

    goto LABEL_214;
  }

  v525 = v593;
  sub_1C446C964(v593, v589, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v525 + v522, 1, v288) == 1)
  {
    sub_1C4420C3C(v587, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C46ED02C();
LABEL_214:
    v302 = v593;
    goto LABEL_222;
  }

  v526 = v593;
  v527 = v645;
  sub_1C46ECFD4(v593 + v522, v645);
  v528 = sub_1C47E3504(v589, v527);
  sub_1C46ED02C();
  sub_1C4420C3C(v587, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C46ED02C();
  sub_1C4420C3C(v526, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v528 & 1) == 0)
  {
LABEL_59:

    return 0;
  }

LABEL_216:
  v529 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__shortTermTrendingPopularity;
  swift_beginAccess();
  v530 = v591;
  sub_1C446C964(v294 + v529, v591, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v531 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__shortTermTrendingPopularity;
  v532 = v646;
  swift_beginAccess();
  v533 = *(v647 + 48);
  v534 = v530;
  v535 = v596;
  sub_1C446C964(v534, v596, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C446C964(v532 + v531, v535 + v533, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v535, 1, v288) == 1)
  {
    sub_1C4420C3C(v591, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v596 + v533, 1, v288) == 1)
    {
      sub_1C4420C3C(v596, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_225;
    }

    goto LABEL_221;
  }

  v536 = v596;
  sub_1C446C964(v596, v592, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v536 + v533, 1, v288) == 1)
  {
    sub_1C4420C3C(v591, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C46ED02C();
LABEL_221:
    v302 = v596;
    goto LABEL_222;
  }

  v537 = v596;
  v538 = v645;
  sub_1C46ECFD4(v596 + v533, v645);
  v539 = sub_1C47E3504(v592, v538);
  sub_1C46ED02C();
  sub_1C4420C3C(v591, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C46ED02C();
  sub_1C4420C3C(v537, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v539 & 1) == 0)
  {
    goto LABEL_59;
  }

LABEL_225:
  v540 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__trendingPopularity;
  swift_beginAccess();
  v541 = v594;
  sub_1C446C964(v294 + v540, v594, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v542 = OBJC_IVAR____TtCV24IntelligencePlatformCore38EntityRelevanceEntityRelevanceFeaturesP33_1772DF20CAD99C453A3113A83A9C8C6313_StorageClass__trendingPopularity;
  v543 = v646;
  swift_beginAccess();
  v544 = *(v647 + 48);
  v545 = v597;
  sub_1C446C964(v541, v597, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C446C964(v543 + v542, v545 + v544, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v545, 1, v288) != 1)
  {
    v546 = v597;
    sub_1C446C964(v597, v595, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v546 + v544, 1, v288) == 1)
    {

      sub_1C4420C3C(v594, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      sub_1C46ED02C();
      goto LABEL_230;
    }

    v547 = v597;
    v548 = v645;
    sub_1C46ECFD4(v597 + v544, v645);
    v549 = sub_1C47E3504(v595, v548);

    sub_1C46ED02C();
    sub_1C4420C3C(v594, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C46ED02C();
    sub_1C4420C3C(v547, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    return (v549 & 1) != 0;
  }

  sub_1C4420C3C(v594, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v597 + v544, 1, v288) != 1)
  {
LABEL_230:
    sub_1C4420C3C(v597, &qword_1EC0BB6C0, &unk_1C4F20AE0);
    return 0;
  }

  sub_1C4420C3C(v597, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  return 1;
}

uint64_t sub_1C46EC768(uint64_t (*a1)(void), unint64_t *a2, void (*a3)(uint64_t), uint64_t a4)
{
  sub_1C4F02AF8();
  a1(0);
  sub_1C46ECC80(a2, a3);
  sub_1C4F00FE8();
  return sub_1C4F02B68();
}

uint64_t sub_1C46EC810()
{
  sub_1C4F00328();
  sub_1C43FBCE0();
  v0 = sub_1C43FBC98();

  return v1(v0);
}

uint64_t sub_1C46EC86C()
{
  sub_1C4403FC0();
  sub_1C4F00328();
  sub_1C43FBCE0();
  v4 = *(v3 + 40);

  return v4(v1, v0, v2);
}

uint64_t sub_1C46EC8F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C46ECC80(&qword_1EC0BB6D8, type metadata accessor for EntityRelevanceEntityRelevanceFeatures);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C46EC998@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_1C4F004E8();
  v7 = sub_1C442B738(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_1C46ECA34(uint64_t a1)
{
  sub_1C46ECC80(&qword_1EC0BB628, type metadata accessor for EntityRelevanceEntityRelevanceFeatures);

  return sub_1C4F00428();
}

uint64_t sub_1C46ECAFC(uint64_t a1, uint64_t a2)
{
  sub_1C46ECC80(&qword_1EC0BB628, type metadata accessor for EntityRelevanceEntityRelevanceFeatures);

  return sub_1C4F00438();
}

uint64_t sub_1C46ECB78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C4F02AF8();
  sub_1C4F00FE8();
  return sub_1C4F02B68();
}

uint64_t sub_1C46ECC80(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    sub_1C4425064();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C46ECFD4(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C43FBE94();
  v4(v3);
  sub_1C43FBCE0();
  v5 = sub_1C43FBC98();
  v6(v5);
  return a2;
}

uint64_t sub_1C46ED02C()
{
  v1 = sub_1C4403FC0();
  v2(v1);
  sub_1C43FBCE0();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_1C46ED080(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1C46ED118(uint64_t a1)
{
  sub_1C4F00328();
  if (v1 <= 0x3F)
  {
    sub_1C44FCC6C(319, &qword_1EDDFEAB0, MEMORY[0x1E69E6158]);
    if (v2 <= 0x3F)
    {
      sub_1C46ED23C(319, &qword_1EC0BB6F0, type metadata accessor for EntityRelevanceEntityInformation);
      if (v3 <= 0x3F)
      {
        sub_1C46ED23C(319, &qword_1EC0BB6F8, type metadata accessor for EntityRelevanceEntityRelevanceFeatures);
        if (v4 <= 0x3F)
        {
          sub_1C44FCC6C(319, &qword_1EDDFCDC0, MEMORY[0x1E69E7360]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1C46ED23C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1C4425064();
    v4 = sub_1C4F01F48();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1C46ED2B4(uint64_t a1)
{
  v1 = sub_1C4F00328();
  if (v2 <= 0x3F)
  {
    sub_1C44FCC6C(319, &qword_1EDDFCDC0, MEMORY[0x1E69E7360]);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_1C44FCC6C(319, &qword_1EDDFEAB0, MEMORY[0x1E69E6158]);
      if (v6 > 0x3F)
      {
        return v5;
      }

      else
      {
        sub_1C44FCC6C(319, &qword_1EDDF05D8, MEMORY[0x1E69E63B0]);
        if (v8 > 0x3F)
        {
          return v7;
        }

        else
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v1;
}

uint64_t sub_1C46ED3FC(uint64_t a1)
{
  result = sub_1C4F00328();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for EntityRelevanceEntityRelevanceFeatures._StorageClass(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C46ED494(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *a1;
  v12 = *(a1 + 2);
  *(v6 + 16) = xmmword_1C4F20B40;
  *(v6 + 32) = 0x80000001C4F93790;
  *(v6 + 40) = 3;
  *(v6 + 48) = 0;
  *(v6 + 56) = v11;
  *(v6 + 72) = v12;
  *(v6 + 80) = *(a1 + 24);
  sub_1C46EF150(a2, v6 + OBJC_IVAR____TtC24IntelligencePlatformCore33EntityRelevanceDataCollectionTask_viewConfig, _s10ViewConfigVMa);
  v13 = (v6 + OBJC_IVAR____TtC24IntelligencePlatformCore33EntityRelevanceDataCollectionTask_name);
  *v13 = a3;
  v13[1] = a4;
  v14 = (v6 + OBJC_IVAR____TtC24IntelligencePlatformCore33EntityRelevanceDataCollectionTask_sessionID);
  *v14 = a5;
  v14[1] = a6;
  return v6;
}

uint64_t sub_1C46ED560()
{
  v1[15] = v0;
  v2 = type metadata accessor for EntityRelevanceDataCollection(0);
  v1[16] = v2;
  sub_1C43FBD18(v2);
  v1[17] = swift_task_alloc();
  v3 = _s6ConfigVMa(0);
  v1[18] = v3;
  sub_1C43FBD18(v3);
  v1[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C46ED61C, 0, 0);
}

uint64_t sub_1C46ED61C()
{
  v40 = v0;
  if (qword_1EDDFECB0 != -1)
  {
    swift_once();
  }

  v1 = sub_1C4F00978();
  sub_1C442B738(v1, qword_1EDDFECB8);

  v2 = sub_1C4F00968();
  v3 = sub_1C4F01CF8();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[15];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v39 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_1C441D828(*(v4 + OBJC_IVAR____TtC24IntelligencePlatformCore33EntityRelevanceDataCollectionTask_name), *(v4 + OBJC_IVAR____TtC24IntelligencePlatformCore33EntityRelevanceDataCollectionTask_name + 8), &v39);
    _os_log_impl(&dword_1C43F8000, v2, v3, "%s: Running Entity Relevance data collection.", v5, 0xCu);
    sub_1C440962C(v6);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  v8 = v0[18];
  v7 = v0[19];
  sub_1C4438D00(v7);
  v9 = (v7 + *(v8 + 72));
  v10 = *v9;
  v11 = v9[1];
  v12 = v9[2];
  v0[20] = v12;
  sub_1C46EEF1C(v10, v11);
  sub_1C46EF1B0(v7, _s6ConfigVMa);
  if (v11)
  {
    v13 = *(v0[15] + 88);
    v0[21] = v13;
    swift_retain_n();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v14 = sub_1C4F00F28();
    sub_1C470336C(v13, v10, v11, v12, v14, v0 + 2);
    sub_1C4703650();

    sub_1C456902C(&qword_1EC0B8EA8, &qword_1C4F111D0);
    v18 = sub_1C4EFDAB8();
    v19 = *(v18 - 8);
    v20 = *(v19 + 72);
    v21 = (*(v19 + 80) + 32) & ~*(v19 + 80);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1C4F0D480;
    v23 = *(v19 + 104);
    v23(v22 + v21, *MEMORY[0x1E69A9468], v18);
    v23(v22 + v21 + v20, *MEMORY[0x1E69A9460], v18);
    v23(v22 + v21 + 2 * v20, *MEMORY[0x1E69A9418], v18);
    v23(v22 + v21 + 3 * v20, *MEMORY[0x1E69A9458], v18);
    v24 = swift_task_alloc();
    *(v24 + 16) = v0 + 2;
    *(v24 + 24) = v22;
    v25 = sub_1C49A52FC(sub_1C46EEFC0, v24);
    v0[22] = v25;
    swift_setDeallocating();
    sub_1C49E1558();

    if (qword_1EDDFA668 != -1)
    {
      sub_1C4406758();
      swift_once();
    }

    v0[23] = sub_1C442B738(v1, qword_1EDE2DDE0);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v26 = sub_1C4F00968();
    v27 = sub_1C4F01CC8();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 134217984;
      *(v28 + 4) = sub_1C4428DA0(v25);

      _os_log_impl(&dword_1C43F8000, v26, v27, "EntityRelevanceDataCollection Fetched: %ld rows", v28, 0xCu);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    else
    {
    }

    v29 = sub_1C4428DA0(v0[22]);
    v30 = v0[22];
    if (v29)
    {
      v31 = v30 & 0xC000000000000001;
      sub_1C4431590(0, (v30 & 0xC000000000000001) == 0, v30);
      v32 = v0[22];
      if (v31)
      {
        v33 = MEMORY[0x1C6940F90](0, v32);
      }

      else
      {
        v33 = *(v32 + 32);
      }

      v0[24] = v33;
      v0[25] = 1;
      sub_1C46EE0B4(v33, v0[20], v0[17]);
      v0[26] = 0;
      v34 = v0[16];
      sub_1C4F00518();
      v0[27] = sub_1C4F00508();
      v0[13] = v34;
      v0[14] = sub_1C46EF030();
      v35 = sub_1C4422F90(v0 + 10);
      sub_1C441301C(v35);
      v38 = (*MEMORY[0x1E69C5B28] + MEMORY[0x1E69C5B28]);
      v36 = swift_task_alloc();
      v0[28] = v36;
      *v36 = v0;
      v37 = sub_1C440019C(v36);

      return v38(v37);
    }

    sub_1C46EEFDC((v0 + 2));

    sub_1C43FBDA0();
  }

  else
  {
    sub_1C46EEF6C();
    swift_allocError();
    *v15 = 0xD00000000000002ALL;
    v15[1] = 0x80000001C4F936F0;
    v15[2] = 0;
    v15[3] = 0xE000000000000000;
    swift_willThrow();

    sub_1C43FBDA0();
  }

  return v16();
}

uint64_t sub_1C46EDD00()
{
  v1 = *v0;

  sub_1C440962C((v1 + 80));

  return MEMORY[0x1EEE6DFA0](sub_1C46EDE20, 0, 0);
}

uint64_t sub_1C46EDE20(uint64_t a1)
{
  v2 = sub_1C4F00968();
  v3 = sub_1C4F01CF8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1C43F8000, v2, v3, "EntityRelevanceDataCollection: message logged to PET2", v4, 2u);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  v5 = v1[17];

  sub_1C4411B84();
  sub_1C46EF1B0(v5, v6);
  v7 = v1[25];
  v8 = v1[26];
  v9 = sub_1C4428DA0(v1[22]);
  v10 = v1[22];
  if (v7 == v9)
  {

    sub_1C46EEFDC((v1 + 2));

    sub_1C43FBDA0();
LABEL_10:

    return v11();
  }

  v12 = v10 & 0xC000000000000001;
  sub_1C4431590(v7, (v10 & 0xC000000000000001) == 0, v10);
  v13 = v1[22];
  if (v12)
  {
    result = MEMORY[0x1C6940F90](v7, v13);
    v14 = result;
  }

  else
  {
    v14 = *(v13 + 8 * v7 + 32);
  }

  v1[24] = v14;
  v1[25] = v7 + 1;
  if (__OFADD__(v7, 1))
  {
    __break(1u);
    return result;
  }

  sub_1C46EE0B4(v14, v1[20], v1[17]);
  v1[26] = v8;
  if (v8)
  {

    sub_1C46EEFDC((v1 + 2));

    sub_1C43FBDA0();
    goto LABEL_10;
  }

  v16 = v1[16];
  sub_1C4F00518();
  v1[27] = sub_1C4F00508();
  v1[13] = v16;
  v1[14] = sub_1C46EF030();
  v17 = sub_1C4422F90(v1 + 10);
  sub_1C441301C(v17);
  v20 = (*MEMORY[0x1E69C5B28] + MEMORY[0x1E69C5B28]);
  v18 = swift_task_alloc();
  v1[28] = v18;
  *v18 = v1;
  v19 = sub_1C440019C(v18);

  return v20(v19);
}

void sub_1C46EE0B4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v67 = a1;
  v4 = v3;
  v68 = a2;
  v6 = type metadata accessor for FeatureValue(0);
  v7 = sub_1C43FBD18(v6);
  MEMORY[0x1EEE9AC00](v7);
  v65 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for EntityRelevanceEntityInformation(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4F00318();
  v13 = type metadata accessor for EntityRelevanceDataCollection(0);
  v14 = (a3 + v13[5]);
  *v14 = 0;
  v14[1] = 0;
  v15 = (a3 + v13[6]);
  *v15 = 0;
  v15[1] = 0;
  v16 = v13[7];
  sub_1C440BAA8(a3 + v16, 1, 1, v9);
  v17 = v13[8];
  v18 = type metadata accessor for EntityRelevanceEntityRelevanceFeatures(0);
  sub_1C440BAA8(a3 + v17, 1, 1, v18);
  v19 = a3 + v13[9];
  *v19 = 1;
  *(v19 + 8) = 0;
  v63 = v4;
  v20 = *(v4 + OBJC_IVAR____TtC24IntelligencePlatformCore33EntityRelevanceDataCollectionTask_sessionID + 8);
  *v15 = *(v4 + OBJC_IVAR____TtC24IntelligencePlatformCore33EntityRelevanceDataCollectionTask_sessionID);
  v15[1] = v20;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C493CBD4();
  if ((v21 & 1) == 0)
  {
    sub_1C4417024();
    sub_1C44321A4(v9[5]);
    sub_1C4406ADC();
    sub_1C442C85C();
  }

  sub_1C493CA4C();
  if (v22)
  {
    sub_1C4402FF4();
    v23 = &v12[v9[6]];

    *v23 = 1;
    *(v23 + 1) = a3;
    sub_1C46EF088(a3 + v16);
    sub_1C4406ADC();
    sub_1C442C85C();
  }

  sub_1C493CC98();
  if ((v24 & 1) == 0)
  {
    sub_1C4417024();
    sub_1C44321A4(v9[7]);
    sub_1C4406ADC();
    sub_1C442C85C();
  }

  sub_1C493CBD4();
  if ((v25 & 1) == 0)
  {
    sub_1C4417024();
    sub_1C44321A4(v9[8]);
    sub_1C4406ADC();
    sub_1C442C85C();
  }

  sub_1C493CBD4();
  if ((v26 & 1) == 0)
  {
    sub_1C4417024();
    sub_1C44321A4(v9[9]);
    sub_1C4406ADC();
    sub_1C442C85C();
  }

  sub_1C493CA4C();
  if (v27)
  {
    sub_1C4402FF4();
    v28 = &v12[v9[10]];

    *v28 = 1;
    *(v28 + 1) = a3;
    sub_1C46EF088(a3 + v16);
    sub_1C4406ADC();
    sub_1C442C85C();
  }

  sub_1C493CA4C();
  if (v29)
  {
    sub_1C4402FF4();
    v30 = &v12[v9[11]];

    *v30 = 1;
    *(v30 + 1) = a3;
    sub_1C46EF088(a3 + v16);
    sub_1C4406ADC();
    sub_1C442C85C();
  }

  v64 = a3;
  v31 = v68 + 56;
  v32 = 1 << *(v68 + 32);
  v33 = -1;
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  v34 = v33 & *(v68 + 56);
  v35 = (v32 + 63) >> 6;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v36 = 0;
  *&v37 = 136315138;
  v61 = v37;
  v38 = v66;
  while (v34)
  {
LABEL_23:
    v40 = __clz(__rbit64(v34));
    v34 &= v34 - 1;
    v41 = (*(v68 + 48) + ((v36 << 10) | (16 * v40)));
    v42 = *v41;
    v43 = v41[1];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v44 = COERCE_DOUBLE(sub_1C493CC98());
    if (v45)
    {
      v46 = NAN;
    }

    else
    {
      v46 = v44;
    }

    sub_1C46EE6D0();
    v47 = sub_1C4663248();

    if (v47 == 1)
    {
      if (qword_1EDDFA668 != -1)
      {
        sub_1C4406758();
        swift_once();
      }

      v48 = sub_1C4F00978();
      sub_1C442B738(v48, qword_1EDE2DDE0);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v49 = sub_1C4F00968();
      v50 = sub_1C4F01CD8();

      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v66 = v38;
        v52 = v51;
        v53 = swift_slowAlloc();
        v62 = v49;
        v54 = v53;
        v69 = v53;
        *v52 = v61;
        v55 = sub_1C441D828(v42, v43, &v69);

        *(v52 + 4) = v55;
        v56 = v50;
        v57 = v62;
        _os_log_impl(&dword_1C43F8000, v62, v56, "EntityRelevanceDataCollection: %s does not have keypath defined", v52, 0xCu);
        sub_1C440962C(v54);
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
        v38 = v66;
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
      }

      else
      {
      }
    }

    else
    {

      v58 = v65;
      if (v47)
      {
        if (v46 == INFINITY)
        {
          v46 = 0.0;
        }

        v59 = [objc_opt_self() featureValueWithDouble_];
        sub_1C46D43EC(*(v63 + 40), *(v63 + 48), v58);
        if (v38)
        {

          sub_1C4634004(v47);

          sub_1C4411B84();
          sub_1C46EF1B0(v64, v60);
          return;
        }

        swift_setAtWritableKeyPath();
        sub_1C4634004(v47);
      }
    }
  }

  while (1)
  {
    v39 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      break;
    }

    if (v39 >= v35)
    {

      return;
    }

    v34 = *(v31 + 8 * v39);
    ++v36;
    if (v34)
    {
      v36 = v39;
      goto LABEL_23;
    }
  }

  __break(1u);
}

uint64_t sub_1C46EE6D0()
{
  sub_1C456902C(&qword_1EC0BB738, &qword_1C4F20BF8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F20630;
  sub_1C43FBDF0();
  *(v1 + 32) = 0xD00000000000002CLL;
  *(v1 + 40) = v2;
  swift_getKeyPath();
  sub_1C43FBDF0();
  *(inited + 48) = v3;
  *(inited + 56) = 0xD00000000000002ELL;
  *(inited + 64) = v4;
  swift_getKeyPath();
  sub_1C43FBDF0();
  *(inited + 72) = v5;
  *(inited + 80) = 0xD000000000000028;
  *(inited + 88) = v6;
  swift_getKeyPath();
  sub_1C43FBDF0();
  *(inited + 96) = v7;
  *(inited + 104) = 0xD000000000000022;
  *(inited + 112) = v8;
  swift_getKeyPath();
  sub_1C43FBDF0();
  *(inited + 120) = v9;
  *(inited + 128) = 0xD00000000000002ELL;
  *(inited + 136) = v10;
  swift_getKeyPath();
  sub_1C43FBDF0();
  *(inited + 144) = v11;
  *(inited + 152) = 0xD000000000000023;
  *(inited + 160) = v12;
  swift_getKeyPath();
  sub_1C43FBDF0();
  *(inited + 168) = v13;
  *(inited + 176) = 0xD00000000000001FLL;
  *(inited + 184) = v14;
  swift_getKeyPath();
  sub_1C43FBDF0();
  *(inited + 192) = v15;
  *(inited + 200) = 0xD00000000000002CLL;
  *(inited + 208) = v16;
  swift_getKeyPath();
  sub_1C43FBDF0();
  *(inited + 216) = v17;
  *(inited + 224) = 0xD00000000000002ELL;
  *(inited + 232) = v18;
  swift_getKeyPath();
  sub_1C43FBDF0();
  *(inited + 240) = v19;
  *(inited + 248) = 0xD000000000000028;
  *(inited + 256) = v20;
  swift_getKeyPath();
  sub_1C43FBDF0();
  *(inited + 264) = v21;
  *(inited + 272) = 0xD000000000000022;
  *(inited + 280) = v22;
  swift_getKeyPath();
  sub_1C43FBDF0();
  *(inited + 288) = v23;
  *(inited + 296) = 0xD00000000000002ELL;
  *(inited + 304) = v24;
  swift_getKeyPath();
  sub_1C43FBDF0();
  *(inited + 312) = v25;
  *(inited + 320) = 0xD000000000000023;
  *(inited + 328) = v26;
  swift_getKeyPath();
  sub_1C43FBDF0();
  *(inited + 336) = v27;
  *(inited + 344) = 0xD000000000000010;
  *(inited + 352) = v28;
  swift_getKeyPath();
  sub_1C43FBDF0();
  *(inited + 360) = v29;
  *(inited + 368) = 0xD000000000000010;
  *(inited + 376) = v30;
  swift_getKeyPath();
  sub_1C43FBDF0();
  *(inited + 384) = v31;
  *(inited + 392) = 0xD000000000000010;
  *(inited + 400) = v32;
  swift_getKeyPath();
  sub_1C43FBDF0();
  *(inited + 408) = v33;
  *(inited + 416) = 0xD00000000000001ALL;
  *(inited + 424) = v34;
  swift_getKeyPath();
  sub_1C43FBDF0();
  *(inited + 432) = v35;
  *(inited + 440) = 0xD000000000000022;
  *(inited + 448) = v36;
  swift_getKeyPath();
  sub_1C43FBDF0();
  *(inited + 456) = v37;
  *(inited + 464) = 0xD00000000000002ELL;
  *(inited + 472) = v38;
  swift_getKeyPath();
  sub_1C43FBDF0();
  *(inited + 480) = v39;
  *(inited + 488) = 0xD00000000000003ELL;
  *(inited + 496) = v40;
  swift_getKeyPath();
  sub_1C43FBDF0();
  *(inited + 504) = v41;
  *(inited + 512) = 0xD000000000000030;
  *(inited + 520) = v42;
  *(inited + 528) = swift_getKeyPath();
  sub_1C43FBDF0();
  *(inited + 536) = 0xD00000000000003ALL;
  *(inited + 544) = v43;
  *(inited + 552) = swift_getKeyPath();
  sub_1C43FBDF0();
  *(inited + 560) = 0xD000000000000040;
  *(inited + 568) = v44;
  *(inited + 576) = swift_getKeyPath();
  sub_1C43FBDF0();
  *(inited + 584) = 0xD000000000000035;
  *(inited + 592) = v45;
  *(inited + 600) = swift_getKeyPath();
  sub_1C43FBDF0();
  *(inited + 608) = 0xD00000000000002ALL;
  *(inited + 616) = v46;
  *(inited + 624) = swift_getKeyPath();
  sub_1C43FBDF0();
  *(inited + 632) = 0xD00000000000003ALL;
  *(inited + 640) = v47;
  *(inited + 648) = swift_getKeyPath();
  sub_1C43FBDF0();
  *(inited + 656) = 0xD00000000000002FLL;
  *(inited + 664) = v48;
  *(inited + 672) = swift_getKeyPath();
  sub_1C43FBDF0();
  *(inited + 680) = 0xD000000000000024;
  *(inited + 688) = v49;
  *(inited + 696) = swift_getKeyPath();
  sub_1C43FBDF0();
  *(inited + 704) = 0xD000000000000030;
  *(inited + 712) = v50;
  *(inited + 720) = swift_getKeyPath();
  sub_1C43FBDF0();
  *(inited + 728) = 0xD000000000000025;
  *(inited + 736) = v51;
  *(inited + 744) = swift_getKeyPath();
  sub_1C43FBDF0();
  *(inited + 752) = 0xD00000000000001FLL;
  *(inited + 760) = v52;
  *(inited + 768) = swift_getKeyPath();
  sub_1C43FBDF0();
  *(inited + 776) = 0xD00000000000001BLL;
  *(inited + 784) = v53;
  *(inited + 792) = swift_getKeyPath();
  sub_1C43FBDF0();
  *(inited + 800) = 0xD000000000000012;
  *(inited + 808) = v54;
  *(inited + 816) = swift_getKeyPath();
  sub_1C456902C(&qword_1EC0BB740, qword_1C4F21440);
  return sub_1C4F00F28();
}

uint64_t sub_1C46EEC6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), void (*a6)(void), uint64_t (*a7)(char *))
{
  v10 = (a5)(0, a2, a3, a4);
  v11 = sub_1C43FBD18(v10);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v15 - v12;
  sub_1C46EF0F0(a1, &v15 - v12, a6);
  return a7(v13);
}

uint64_t sub_1C46EED0C()
{

  sub_1C46B6868(*(v0 + 40), *(v0 + 48));

  sub_1C46EF1B0(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore33EntityRelevanceDataCollectionTask_viewConfig, _s10ViewConfigVMa);

  return v0;
}

uint64_t sub_1C46EEDB0()
{
  sub_1C46EED0C();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for EntityRelevanceDataCollectionTask(uint64_t a1)
{
  result = qword_1EC0BB720;
  if (!qword_1EC0BB720)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C46EEE5C(uint64_t a1)
{
  result = _s10ViewConfigVMa(319);
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

uint64_t sub_1C46EEF1C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  return result;
}

unint64_t sub_1C46EEF6C()
{
  result = qword_1EC0BB730;
  if (!qword_1EC0BB730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BB730);
  }

  return result;
}

unint64_t sub_1C46EF030()
{
  result = qword_1EC0BB668;
  if (!qword_1EC0BB668)
  {
    type metadata accessor for EntityRelevanceDataCollection(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BB668);
  }

  return result;
}

uint64_t sub_1C46EF088(uint64_t a1)
{
  v2 = sub_1C456902C(&qword_1EC0BB690, &qword_1C4F20BF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C46EF0F0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FBCE0();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C46EF150(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FBCE0();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1C46EF1B0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C43FBCE0();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_1C46EF218(uint64_t *a1)
{
  v2 = *(sub_1C456902C(&qword_1EC0B89E0, &qword_1C4F0DE00) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C461B004();
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v5;
  sub_1C46F36AC(v6);
  *a1 = v3;
}

uint64_t sub_1C46EF2CC(uint64_t a1, void *a2)
{
  v4 = sub_1C4EF9CD8();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = 0;
  v8 = *(a1 + 16);
  v21 = a1;
  v22 = v8;
  v25 = a2;
  v24 = a2 + 7;
  v10 = (v9 + 16);
  v20 = v9;
  v11 = (v9 + 8);
  while (v7 != v22)
  {
    v23 = v7;
    if (v25[2])
    {
      v12 = *(v20 + 72);
      v13 = v25;
      sub_1C46F4CA0(&qword_1EC0B90D0, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
      v14 = sub_1C4F00FD8();
      v15 = ~(-1 << *(v13 + 32));
      while (1)
      {
        v16 = v14 & v15;
        if (((*(v24 + (((v14 & v15) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v14 & v15)) & 1) == 0)
        {
          break;
        }

        (*v10)(v6, v25[6] + v16 * v12, v4);
        sub_1C46F4CA0(&qword_1EC0B9D00, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
        v17 = sub_1C4F010B8();
        (*v11)(v6, v4);
        v14 = v16 + 1;
        if (v17)
        {

          return v23;
        }
      }
    }

    v7 = v23 + 1;
  }

  return 0;
}

uint64_t sub_1C46EF548@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v13[1] = *a1;
  v14[0] = v4;
  *(v14 + 9) = *(a1 + 25);
  sub_1C45D5A24(a2);
  v5 = sub_1C45D2400();
  v7 = v6;
  v8 = *(a1 + 48);
  v13[0] = *(a1 + 56);
  v9 = type metadata accessor for EntityRelevanceInteractionGroundTruth(0);
  v10 = (a2 + v9[5]);
  *v10 = v5;
  v10[1] = v7;
  *(a2 + v9[6]) = v8;
  *(a2 + v9[7]) = *(a1 + 56);
  return sub_1C4460108(v13, &v12, &qword_1EC0C2BD0, &qword_1C4F0FF50);
}

void sub_1C46EF6D8()
{
  sub_1C4F02248();
  sub_1C440BC44();
  MEMORY[0x1C6940010](0xD00000000000001CLL);
  sub_1C4F02858();
  sub_1C4434FA0();

  sub_1C440BC44();
  MEMORY[0x1C6940010]();
  sub_1C441F800();
  sub_1C4434FA0();

  sub_1C44001D4();
  sub_1C441601C();
  sub_1C441F800();
  sub_1C4434FA0();

  sub_1C44001D4();
  sub_1C441601C();
  sub_1C441F800();
  sub_1C4434FA0();

  sub_1C44001D4();
  sub_1C441601C();
  sub_1C441F800();
  sub_1C4434FA0();

  sub_1C44001D4();
  sub_1C441601C();
  sub_1C441F800();
  sub_1C4434FA0();

  sub_1C44001D4();
  MEMORY[0x1C6940010](0xD00000000000001CLL);
  v0 = sub_1C441F800();
  MEMORY[0x1C6940010](v0);

  sub_1C440BC44();
  MEMORY[0x1C6940010](0xD000000000000018);
  sub_1C441F800();
  sub_1C4434FA0();

  sub_1C440BC44();
  MEMORY[0x1C6940010]();
  v1 = sub_1C441F800();
  MEMORY[0x1C6940010](v1);

  sub_1C44001D4();
  MEMORY[0x1C6940010](0xD000000000000018);
  sub_1C4F01A28();
  sub_1C440BC44();
  MEMORY[0x1C6940010]();
  sub_1C4F01A28();
  sub_1C441E1E0();
}

uint64_t sub_1C46EF970(uint64_t a1)
{
  result = sub_1C4EFDAB8();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1C46EFAB8(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  v5 = v4;
  v10 = *(*v4 + 128);
  type metadata accessor for EntityRelevanceEvaluationIntermediateResults();
  swift_allocObject();
  *(v4 + v10) = sub_1C46F5D48(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
  *(v4 + *(*v4 + 136)) = MEMORY[0x1E69E7CC0];
  v11 = qword_1EC0BB748;
  v12 = sub_1C4EFDAB8();
  (*(*(v12 - 8) + 32))(v5 + v11, a1, v12);
  *(v5 + *(*v5 + 104)) = a2;
  sub_1C441D670(a3, v5 + *(*v5 + 112));
  *(v5 + *(*v5 + 120)) = a4;
  return v5;
}

uint64_t sub_1C46EFC24()
{
  sub_1C43FBCD4();
  v1[18] = v2;
  v1[19] = v0;
  v1[20] = *v0;
  v3 = type metadata accessor for EntityRelevanceInteractionGroundTruth(0);
  v1[21] = v3;
  sub_1C43FBD18(v3);
  v1[22] = swift_task_alloc();
  v4 = sub_1C456902C(&qword_1EC0BB838, &qword_1C4F216D0);
  v1[23] = v4;
  sub_1C43FBD18(v4);
  v1[24] = swift_task_alloc();
  v5 = sub_1C456902C(&qword_1EC0BB840, &qword_1C4F216D8);
  sub_1C43FBD18(v5);
  v1[25] = sub_1C43FE604();
  v1[26] = swift_task_alloc();
  v6 = sub_1C456902C(&qword_1EC0B84B0, qword_1C4F0CDE0);
  v1[27] = v6;
  sub_1C43FBD18(v6);
  v1[28] = sub_1C43FE604();
  v1[29] = swift_task_alloc();
  v7 = sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  v1[30] = v7;
  sub_1C43FBD18(v7);
  v1[31] = sub_1C43FE604();
  v1[32] = swift_task_alloc();
  v1[33] = sub_1C4EF9CD8();
  sub_1C4404280();
  v1[34] = v8;
  v1[35] = sub_1C43FE604();
  v1[36] = swift_task_alloc();
  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C46EFE18()
{
  v52 = v0;
  v1 = v0[33];
  v2 = v0[34];
  v3 = v0[18];
  v4 = v0[19];
  v49 = v0[30];
  v5 = *(v49 + 36);
  v6 = *(*v4 + 136);
  sub_1C4588DCC();
  v7 = *(*(v4 + v6) + 16);
  sub_1C45899BC();
  v8 = *(v4 + v6);
  *(v8 + 16) = v7 + 1;
  v9 = *(v2 + 16);
  v9(v8 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v7, v3 + v5, v1);
  *(v4 + v6) = v8;
  type metadata accessor for EntityRelevanceAggregatedEvaluation();
  inited = swift_initStackObject();
  v0[37] = inited;
  *(inited + 16) = 0u;
  *(inited + 32) = 0u;
  *(inited + 48) = 0u;
  *(inited + 64) = 0u;
  *(inited + 80) = 0u;
  *(inited + 96) = 0;
  sub_1C4EF9B78();
  if (v11 > 0.0)
  {
    sub_1C4EF9BE8();
    sub_1C4EF9BE8();
    sub_1C46F4CA0(&qword_1EDDFCD70, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
    if (sub_1C4F01088())
    {
      v12 = v0[35];
      v13 = v0[33];
      v14 = v0[34];
      v15 = v9;
      v16 = v0[32];
      v17 = v0[28];
      v18 = v0[29];
      v19 = v0[27];
      v48 = v0[20];
      v15(v18, v0[36], v13);
      v15(v18 + *(v19 + 48), v12, v13);
      sub_1C4460108(v18, v17, &qword_1EC0B84B0, qword_1C4F0CDE0);
      v47 = *(v19 + 48);
      v20 = *(v14 + 32);
      v20(v16, v17, v13);
      v21 = *(v14 + 8);
      v0[38] = v21;
      v0[39] = (v14 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v21(v17 + v47, v13);
      sub_1C44CDA30(v18, v17, &qword_1EC0B84B0, qword_1C4F0CDE0);
      v20(v16 + *(v49 + 36), v17 + *(v19 + 48), v13);
      v22 = sub_1C43FBC98();
      (v21)(v22);
      v24 = *(v48 + 80);
      v23 = *(v48 + 88);
      sub_1C4404280();
      v50 = (v25 + *v25);
      v26 = swift_task_alloc();
      v0[40] = v26;
      v27 = sub_1C456902C(&qword_1EC0BB848, &unk_1C4F216F0);
      *v26 = v0;
      v26[1] = sub_1C46F04C0;
      v28 = v0[32];
      v29 = v0[19];

      return (v50)(v0 + 17, v28, &unk_1C4F216E8, v29, v27, v24, v23);
    }

    __break(1u);
    goto LABEL_14;
  }

  if (qword_1EDDFA668 != -1)
  {
LABEL_14:
    sub_1C4406758();
    swift_once();
  }

  v31 = v0[31];
  v32 = v0[18];
  v33 = sub_1C4F00978();
  sub_1C442B738(v33, qword_1EDE2DDE0);
  sub_1C4460108(v32, v31, &qword_1EC0B84B8, &unk_1C4F0D4F0);
  v34 = sub_1C4F00968();
  v35 = sub_1C4F01CE8();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = v0[31];
    v37 = sub_1C43FD084();
    sub_1C43FEC60();
    v38 = swift_slowAlloc();
    v51 = v38;
    *v37 = 136315138;
    v0[15] = 0;
    v0[16] = 0xE000000000000000;
    sub_1C4F02438();
    MEMORY[0x1C6940010](3026478, 0xE300000000000000);
    sub_1C4F02438();
    v39 = v0[15];
    v40 = v0[16];
    sub_1C4420C3C(v36, &qword_1EC0B84B8, &unk_1C4F0D4F0);
    v41 = sub_1C441D828(v39, v40, &v51);

    *(v37 + 4) = v41;
    _os_log_impl(&dword_1C43F8000, v34, v35, "EntityRelevanceEvaluationDigestTask - unexpected date range with lower and upper bound the same: %s", v37, 0xCu);
    sub_1C440962C(v38);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  else
  {
    v43 = v0[31];

    sub_1C4420C3C(v43, &qword_1EC0B84B8, &unk_1C4F0D4F0);
  }

  v44 = v0[18];
  type metadata accessor for EntityRelevanceEvaluationDigestTask.EntityRelevanceEvaluationDigestTaskError(0, *(v0[20] + 80), *(v0[20] + 88), v42);
  swift_getWitnessTable();
  swift_allocError();
  sub_1C4460108(v44, v45, &qword_1EC0B84B8, &unk_1C4F0D4F0);
  swift_willThrow();

  sub_1C43FEEA8();

  sub_1C43FBDA0();

  return v46();
}

uint64_t sub_1C46F04C0()
{
  v2 = *v1;
  sub_1C43FBE64();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 328) = v0;

  sub_1C4420C3C(*(v2 + 256), &qword_1EC0B84B8, &unk_1C4F0D4F0);
  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C46F05FC()
{
  v74 = v1;
  v3 = v1[19];
  v73[0] = v1[17];
  v4 = v73;
  sub_1C4BCFBCC();
  v5 = sub_1C4C527AC(*(v3 + *(*v3 + 120)), v73[0]);
  v9 = (v8 >> 1) - v7;
  if (__OFSUB__(v8 >> 1, v7))
  {
LABEL_51:
    __break(1u);
LABEL_52:
    swift_unknownObjectRelease();
    goto LABEL_3;
  }

  v2 = v5;
  v3 = v6;
  v0 = v7;
  v4 = v8;
  *(v1[37] + 96) = v9;
  if (v8)
  {
    sub_1C4F02998();
    swift_unknownObjectRetain_n();
    v11 = swift_dynamicCastClass();
    if (!v11)
    {
      swift_unknownObjectRelease();
      v11 = MEMORY[0x1E69E7CC0];
    }

    v12 = *(v11 + 16);

    if (v12 == v9)
    {
      v10 = swift_dynamicCastClass();
      if (!v10)
      {
        swift_unknownObjectRelease();
        v10 = MEMORY[0x1E69E7CC0];
      }

      goto LABEL_9;
    }

    goto LABEL_52;
  }

LABEL_3:
  sub_1C461871C(v2, v3, v0, v4);
LABEL_9:
  v0 = v1[41];
  v73[0] = v10;
  sub_1C46EF218(v73);
  if (v0)
  {
    sub_1C443FBAC();
  }

  v3 = 0;
  v15 = v1[23];
  v71 = v73[0];
  v72 = v1[21];
  v16 = *(v73[0] + 16);
  v17 = (v1[19] + *(*v1[19] + 112));
  for (i = 0.0; ; i = i + v46 / (v31 + 1))
  {
    do
    {
      if (v3 == v16)
      {
        v19 = 1;
        v2 = v16;
      }

      else
      {
        if (v3 >= *(v71 + 16))
        {
          goto LABEL_49;
        }

        v20 = v1[24];
        v21 = v1[25];
        sub_1C456902C(&qword_1EC0B89E0, &qword_1C4F0DE00);
        sub_1C4404280();
        sub_1C4404280();
        v25 = v23 + *(v22 + 72) * v24;
        v26 = *(v15 + 48);
        *v20 = v24;
        sub_1C4460108(v25, v20 + v26, &qword_1EC0B89E0, &qword_1C4F0DE00);
        sub_1C44CDA30(v20, v21, &qword_1EC0BB838, &qword_1C4F216D0);
        v19 = 0;
        v2 = v3 + 1;
      }

      v28 = v1[25];
      v27 = v1[26];
      v29 = v1[23];
      sub_1C440BAA8(v28, v19, 1, v29);
      sub_1C44CDA30(v28, v27, &qword_1EC0BB840, &qword_1C4F216D8);
      if (sub_1C44157D4(v27, 1, v29) == 1)
      {
        v62 = v1[38];
        v64 = v1[36];
        v63 = v1[37];
        v65 = v1[35];
        v66 = v1[33];

        *(v63 + 72) = i / *(v63 + 80);
        sub_1C43FC20C();

        sub_1C46F50BC(v63, v67, v68);

        swift_unknownObjectRelease();

        v62(v65, v66);
        v62(v64, v66);

        sub_1C43FBDA0();
        sub_1C443FBAC();

        __asm { BRAA            X1, X16 }
      }

      v30 = v1[26];
      v3 = v1[22];
      v31 = *v30;
      v0 = (v30 + *(v15 + 48));
      v4 = &qword_1C4F0DE00;
      v32 = sub_1C456902C(&qword_1EC0B89E0, &qword_1C4F0DE00);
      sub_1C46F4D94(v0 + *(v32 + 28), v3);
      v33 = *(sub_1C4409678(v17, v17[3]) + 1);
      v34 = *v0;
      sub_1C4420C3C(v0, &qword_1EC0B89E0, &qword_1C4F0DE00);
      if (v33 < v34)
      {
        v35 = v1[37];
        v36 = *(v35 + 24);
        v37 = __OFADD__(v36, 1);
        v38 = v36 + 1;
        if (v37)
        {
          goto LABEL_50;
        }

        *(v35 + 24) = v38;
      }

      v39 = v1[37];
      v40 = v1[22];
      v3 = *(v40 + *(v72 + 24));
      v41 = *(v39 + 88);
      v37 = __OFADD__(v41, v3);
      v42 = v41 + v3;
      if (v37)
      {
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
        goto LABEL_51;
      }

      *(v39 + 88) = v42;
      result = sub_1C46F4DF8(v40, type metadata accessor for EntityRelevanceInteractionGroundTruth);
      v43 = v3 < 1;
      v3 = v2;
    }

    while (v43);
    v44 = v1[37];
    v45 = *(v44 + 80);
    v37 = __OFADD__(v45, 1);
    v46 = v45 + 1;
    if (v37)
    {
      break;
    }

    *(v44 + 80) = v46;
    if (v33 < v34)
    {
      v47 = v1[37];
      v48 = *(v47 + 16);
      v37 = __OFADD__(v48, 1);
      v49 = v48 + 1;
      if (v37)
      {
        goto LABEL_58;
      }

      *(v47 + 16) = v49;
    }

    if (v31 <= 0)
    {
      v50 = v1[37];
      v51 = *(v50 + 32);
      v37 = __OFADD__(v51, 1);
      v52 = v51 + 1;
      if (v37)
      {
        goto LABEL_59;
      }

      *(v50 + 32) = v52;
LABEL_35:
      v53 = v1[37];
      v54 = *(v53 + 40);
      v37 = __OFADD__(v54, 1);
      v55 = v54 + 1;
      if (v37)
      {
        goto LABEL_57;
      }

      *(v53 + 40) = v55;
      goto LABEL_37;
    }

    if (v31 == 1)
    {
      goto LABEL_35;
    }

    if (v31 > 3)
    {
      if (v31 > 7)
      {
        goto LABEL_41;
      }

      goto LABEL_39;
    }

LABEL_37:
    v56 = v1[37];
    v57 = *(v56 + 48);
    v37 = __OFADD__(v57, 1);
    v58 = v57 + 1;
    if (v37)
    {
      goto LABEL_56;
    }

    *(v56 + 48) = v58;
LABEL_39:
    v59 = v1[37];
    v60 = *(v59 + 56);
    v37 = __OFADD__(v60, 1);
    v61 = v60 + 1;
    if (v37)
    {
      goto LABEL_55;
    }

    *(v59 + 56) = v61;
LABEL_41:
    if (v46 == 1)
    {
      *(v1[37] + 64) = 1.0 / (v31 + 1.0) + *(v1[37] + 64);
    }

    if (__OFADD__(v31, 1))
    {
      goto LABEL_54;
    }
  }

  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
  return result;
}

uint64_t sub_1C46F0BBC()
{
  v1 = v0[38];
  v2 = v0[36];
  v3 = v0[35];
  v4 = v0[33];

  v1(v3, v4);
  v1(v2, v4);
  sub_1C43FEEA8();

  sub_1C43FBDA0();

  return v5();
}

uint64_t sub_1C46F0CB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C46F0CD8, 0, 0);
}

uint64_t sub_1C46F0CD8()
{
  v1 = v0[4];
  sub_1C456902C(&qword_1EC0BB850, &qword_1C4F21700);
  sub_1C456902C(&qword_1EC0BB858, &qword_1C4F21708);
  sub_1C4401CBC(&qword_1EC0BB860, &qword_1EC0BB850, &qword_1C4F21700, MEMORY[0x1E69A00F0]);
  v0[5] = sub_1C4EFBD88();
  v2 = sub_1C4409678((v1 + *(*v1 + 112)), *(v1 + *(*v1 + 112) + 24))[1];
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = sub_1C46F0E5C;
  v4 = sub_1C4402120();
  v5.n128_u64[0] = v2;

  return (sub_1C46F27FC)(v4, v5);
}

uint64_t sub_1C46F0E5C()
{
  sub_1C43FBCD4();
  sub_1C43FBE64();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 56) = v3;

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C46F0F50()
{
  sub_1C43FBCD4();
  v1 = *(v0 + 56);
  v2 = *(v0 + 16);

  *v2 = v1;
  sub_1C43FBDA0();

  return v3();
}

uint64_t sub_1C46F0FB8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1C456902C(&qword_1EC0BB888, &qword_1C4F21730);
  v5 = *(v4 + 32);
  v6 = *(a1 + *(v4 + 28));
  v7 = sub_1C456902C(&qword_1EC0BB858, &qword_1C4F21708);
  sub_1C46F4D94(a1 + v5, a2 + *(v7 + 28));
  *a2 = v6;
  return swift_unknownObjectRetain();
}

char *sub_1C46F1040()
{
  v1 = *v0;
  v2 = qword_1EC0BB748;
  sub_1C4EFDAB8();
  sub_1C43FBCE0();
  (*(v3 + 8))(&v0[v2]);
  sub_1C43FC20C();
  (*(*(*(v1 + 80) - 8) + 8))(&v0[*(v4 + 104)]);
  sub_1C43FC20C();
  sub_1C440962C(&v0[*(v5 + 112)]);
  sub_1C43FC20C();

  sub_1C43FC20C();

  return v0;
}

uint64_t sub_1C46F116C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C46F1200;

  return sub_1C46EFC24();
}

uint64_t sub_1C46F1200()
{
  sub_1C43FBCD4();
  v1 = *v0;
  sub_1C43FBE64();
  *v2 = v1;

  sub_1C43FBDA0();

  return v3();
}

uint64_t sub_1C46F12E8()
{
  v1 = (v0 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager____lazy_storage___savedStateKey);
  if (!*(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager____lazy_storage___savedStateKey + 8))
  {
    sub_1C4F02248();
    MEMORY[0x1C6940010](0xD000000000000025, 0x80000001C4F93C70);
    v2 = sub_1C4409678((v0 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager_model), *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager_model + 24));
    v3 = v2[2];
    v4 = v2[3];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    MEMORY[0x1C6940010](v3, v4);

    MEMORY[0x1C6940010](95, 0xE100000000000000);
    sub_1C4EFDAB8();
    sub_1C44321C4();
    sub_1C46F4CA0(v5, v6, MEMORY[0x1E69A94A8]);
    v7 = sub_1C4F02858();
    MEMORY[0x1C6940010](v7);

    MEMORY[0x1C6940010](95, 0xE100000000000000);
    if (*(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager_queryName + 8))
    {
      v8 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager_queryName);
      v9 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager_queryName + 8);
    }

    else
    {
      v9 = 0xE300000000000000;
      v8 = 7104878;
    }

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    MEMORY[0x1C6940010](v8, v9);

    MEMORY[0x1C6940010](0x745364657661535FLL, 0xEB00000000657461);
    *v1 = 0;
    v1[1] = 0xE000000000000000;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C43FBC98();
}

uint64_t sub_1C46F14C4(uint64_t a1)
{
  v2 = v1;
  v64 = a1;
  v3 = sub_1C4EF9CD8();
  v4 = sub_1C43FFAE0(v3, &v71);
  v62 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_1C4EFDAB8();
  v9 = sub_1C43FFAE0(v8, &v72);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDDFA668 != -1)
  {
    sub_1C4406758();
    swift_once();
  }

  v14 = sub_1C4F00978();
  sub_1C442B738(v14, qword_1EDE2DDE0);
  sub_1C4425070();
  v61 = v1;
  v15 = sub_1C4F00968();
  v16 = sub_1C4F01CB8();

  v17 = os_log_type_enabled(v15, v16);
  v67 = v7;
  if (v17)
  {
    v60 = v16;
    sub_1C43FEC60();
    v18 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v68[0] = v59;
    *v18 = 136315650;
    v19 = sub_1C4409678((v1 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager_model), *(v1 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager_model + 24));
    v21 = v19[2];
    v20 = v19[3];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v22 = sub_1C441D828(v21, v20, v68);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2080;
    sub_1C44321C4();
    sub_1C46F4CA0(v23, v24, MEMORY[0x1E69A94A8]);
    v25 = v65;
    v26 = sub_1C4F02858();
    v28 = sub_1C441D828(v26, v27, v68);

    *(v18 + 14) = v28;
    *(v18 + 22) = 2080;
    v29 = &qword_1EC0BB000;
    if (*(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager_queryName + 8))
    {
      v30 = *(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager_queryName);
      v31 = *(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager_queryName + 8);
    }

    else
    {
      v31 = 0xE300000000000000;
      v30 = 7104878;
    }

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v32 = sub_1C441D828(v30, v31, v68);

    *(v18 + 24) = v32;
    _os_log_impl(&dword_1C43F8000, v15, v60, "Running model %s for %s and %s", v18, 0x20u);
    swift_arrayDestroy();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  else
  {
    v29 = &qword_1EC0BB000;

    v25 = v65;
  }

  v33 = *(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager_databaseTable + 16);
  v70[0] = *(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager_databaseTable);
  v70[1] = v33;
  v34 = *(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager_databaseTable + 48);
  v70[2] = *(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager_databaseTable + 32);
  v70[3] = v34;
  v35 = (v2 + v29[257]);
  v36 = *v35;
  v37 = v35[1];
  v38 = OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager_entityType;
  v39 = *(v11 + 16);
  v39(v13, v2 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager_entityType, v25);
  type metadata accessor for HistoricalFeatureDatabaseTrainingSetProvider(0);
  swift_allocObject();
  v40 = sub_1C470740C(v70, v36, v37, v13);
  v39(v13, v2 + v38, v25);
  sub_1C442E860(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager_model, v69);
  sub_1C456902C(qword_1EC0BB890, &qword_1C4F21738);
  swift_allocObject();
  sub_1C46F4E90(v70, v68);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  v41 = sub_1C46EFAB8(v13, v40, v69, 10);
  sub_1C46F12E8();
  v42 = v66;
  v43 = sub_1C4598E54();
  if (v42)
  {

    v44 = v67;
  }

  else
  {
    v49 = v43;

    v44 = v67;
    if (v49)
    {
      if (*(v49 + 16))
      {

        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v52 = sub_1C4F00968();
        v53 = sub_1C4F01CB8();

        if (os_log_type_enabled(v52, v53))
        {
          v54 = swift_slowAlloc();
          sub_1C43FEC60();
          v67 = swift_slowAlloc();
          v68[0] = v67;
          *v54 = 136315394;
          *(v54 + 4) = sub_1C441D828(*(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager_name), *(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager_name + 8), v68);
          *(v54 + 12) = 2048;
          *(v54 + 14) = *(v49 + 16);

          _os_log_impl(&dword_1C43F8000, v52, v53, "%s: Found saved state with %ld points. Will resume.", v54, 0x16u);
          sub_1C440962C(v67);
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
        }

        else
        {
        }

        v55 = *(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager____lazy_storage___savedStateKey);
        v56 = *(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager____lazy_storage___savedStateKey + 8);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v57._countAndFlagsBits = v55;
        v57._object = v56;
        KeyValueStore.delete(key:)(v57);
        if (v58)
        {

          return v41;
        }

LABEL_16:
        v50 = (v2 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager_currentInvocation);
        v51 = *(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager_currentInvocation);
        *v50 = v41;
        v50[1] = v49;

        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C46F4E50(v51);
        return v41;
      }
    }
  }

  v45 = *(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager_duration);
  result = sub_1C4EF9BE8();
  v47 = v45 / 300.0;
  if (COERCE__INT64(fabs(v45 / 300.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_28;
  }

  if (v47 <= -9.22337204e18)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v47 >= 9.22337204e18)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((v47 & 0x8000000000000000) == 0)
  {
    MEMORY[0x1EEE9AC00](result);
    *(&v59 - 2) = v44;
    *(&v59 - 1) = v2;
    sub_1C45DA250();
    v49 = v48;

    (*(v62 + 8))(v44, v63);
    goto LABEL_16;
  }

LABEL_30:
  __break(1u);
  return result;
}

char *sub_1C46F1C64()
{
  v1 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager_currentInvocation);
  if (!v1)
  {
    return 0;
  }

  v5 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager_currentInvocation + 8);
  sub_1C46F366C(v1);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4598054();
  v3 = v2;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  result = sub_1C46F47D8(&v5, v3);
  if (*(v5 + 16) < result)
  {
    __break(1u);
  }

  else
  {
    sub_1C4C075A0();

    return v5;
  }

  return result;
}

void sub_1C46F1D44()
{
  v0 = sub_1C46F1C64();
  if (v0)
  {
    v1 = v0;
    sub_1C46F12E8();
    sub_1C495C28C();

    if (qword_1EDDFA668 != -1)
    {
      sub_1C4406758();
      swift_once();
    }

    v5 = sub_1C4F00978();
    sub_1C442B738(v5, qword_1EDE2DDE0);
    sub_1C4425070();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v6 = sub_1C4F00968();
    v7 = sub_1C4F01CB8();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      sub_1C43FEC60();
      v18 = swift_slowAlloc();
      *v8 = 136315394;
      *(v8 + 4) = sub_1C4405AB8(OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager_name, v12, oslog, v16);
      *(v8 + 12) = 2048;
      v9 = *(v1 + 2);

      *(v8 + 14) = v9;

      _os_log_impl(&dword_1C43F8000, v6, v7, "%s: Saved data collection state with %ld remaining points.", v8, 0x16u);
      sub_1C440962C(v18);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    goto LABEL_15;
  }

  if (qword_1EDDFA668 != -1)
  {
    sub_1C4406758();
    swift_once();
  }

  v2 = sub_1C4F00978();
  sub_1C442B738(v2, qword_1EDE2DDE0);
  sub_1C4425070();
  osloga = sub_1C4F00968();
  v3 = sub_1C4F01CB8();

  if (os_log_type_enabled(osloga, v3))
  {
    v4 = sub_1C43FD084();
    sub_1C43FEC60();
    v17 = swift_slowAlloc();
    *v4 = 136315138;
    *(v4 + 4) = sub_1C4405AB8(OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager_name, v12, osloga, v16);
    _os_log_impl(&dword_1C43F8000, oslogb, v3, "%s: Skipping persisting state for deferral since no sample task has been created.", v4, 0xCu);
    sub_1C440962C(v17);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();

LABEL_15:
    sub_1C441E1E0();
    return;
  }

  sub_1C441E1E0();
}

void sub_1C46F2180()
{
  v1 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager_currentInvocation);
  if (v1)
  {
    v2 = *(v1 + *(*v1 + 128));
    swift_retain_n();
    sub_1C46F366C(v1);
    sub_1C46F52FC(v2, v3);
    sub_1C46F54F8();
    sub_1C4409678((v0 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager_model), *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager_model + 24));
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4F01108();

    swift_isUniquelyReferenced_nonNull_native();
    sub_1C44684D4();
    sub_1C4EFDAA8();
    sub_1C4F01B58();
    swift_isUniquelyReferenced_nonNull_native();
    sub_1C44684D4();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4F01108();

    swift_isUniquelyReferenced_nonNull_native();
    sub_1C44684D4();
    sub_1C4F00288();
    sub_1C4F00268();
  }
}

uint64_t sub_1C46F23E8()
{
  v0._countAndFlagsBits = sub_1C46F12E8();
  KeyValueStore.delete(key:)(v0);
}

uint64_t sub_1C46F2440()
{
  sub_1C46F4DF8(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager_config, type metadata accessor for Configuration);
  sub_1C440962C((v0 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager_model));

  v1 = OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager_entityType;
  sub_1C4EFDAB8();
  sub_1C43FBCE0();
  (*(v2 + 8))(v0 + v1);

  sub_1C46F4E50(*(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore36EntityRelevanceEvaluationTaskManager_currentInvocation));
  return v0;
}

uint64_t sub_1C46F259C(void (*a1)(void))
{
  a1();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for EntityRelevanceEvaluationTaskManager(uint64_t a1)
{
  result = qword_1EC0BB828;
  if (!qword_1EC0BB828)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C46F264C(uint64_t a1)
{
  result = type metadata accessor for Configuration(319);
  if (v2 <= 0x3F)
  {
    result = sub_1C4EFDAB8();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1C46F275C(uint64_t a1)
{
  result = sub_1C46F14C4(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_1C46F27FC(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_1C456902C(&qword_1EC0B89E0, &qword_1C4F0DE00);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v4 = sub_1C4EFFF78();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v5 = sub_1C4EFFF58();
  v2[11] = v5;
  v2[12] = *(v5 - 8);
  v2[13] = swift_task_alloc();
  v6 = sub_1C456902C(&qword_1EC0BB868, &unk_1C4F22980);
  v2[14] = v6;
  v2[15] = *(v6 - 8);
  v2[16] = swift_task_alloc();
  sub_1C456902C(&qword_1EC0BB870, &qword_1C4F21720);
  v2[17] = swift_task_alloc();
  v2[18] = sub_1C456902C(&qword_1EC0BB858, &qword_1C4F21708);
  v2[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C46F2A68, 0, 0);
}

uint64_t sub_1C46F2A68()
{
  *(v0 + 160) = MEMORY[0x1E69E7CC0];
  v1 = *(v0 + 16);
  sub_1C456902C(&dword_1EC0BB878, &dword_1C4F21728);
  sub_1C442C87C();
  sub_1C4401CBC(v2, &dword_1EC0BB878, &dword_1C4F21728, v3);
  sub_1C4EFBD68();
  sub_1C4410B38();
  if (v4)
  {
    sub_1C4420C3C(v1, &qword_1EC0BB870, &qword_1C4F21720);
    sub_1C43FD5C0();

    v5 = sub_1C440F530();

    return v6(v5);
  }

  else
  {
    v8 = sub_1C4402120();
    sub_1C44CDA30(v8, v9, v10, v11);
    swift_unknownObjectRetain();
    sub_1C4EFFF48();
    v12 = swift_task_alloc();
    v13 = sub_1C4408930(v12);
    *v13 = v14;
    v15 = sub_1C4406B08(v13);

    return MEMORY[0x1EEE13C40](v15);
  }
}

uint64_t sub_1C46F2D08()
{
  v2 = *v1;
  sub_1C43FBE64();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 176) = v0;

  (*(v2[12] + 8))(v2[13], v2[11]);
  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C46F2E68()
{
  v43 = v0[18];
  v44 = v0[19];
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  v5 = v0[9];
  v4 = v0[10];
  v7 = v0[7];
  v6 = v0[8];
  v45 = v0[6];
  v8 = v0[4];
  sub_1C4EFEF58();
  sub_1C4EFFF68();
  v10 = v9;
  (*(v5 + 8))(v4, v6);
  v11 = sub_1C4EFEF68();
  (*(v2 + 8))(v1, v3);
  sub_1C46F4D94(v44 + *(v43 + 28), v7 + *(v8 + 28));
  *v7 = v10;
  *(v7 + *(v8 + 32)) = v11;
  sub_1C4460108(v7, v45, &qword_1EC0B89E0, &qword_1C4F0DE00);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = v0[20];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1C458D2F8();
    v13 = v41;
  }

  v14 = *(v13 + 16);
  if (v14 >= *(v13 + 24) >> 1)
  {
    sub_1C458D2F8();
    v13 = v42;
  }

  v15 = v0[19];
  v16 = v0[6];
  v17 = v0[5];
  sub_1C4420C3C(v0[7], &qword_1EC0B89E0, &qword_1C4F0DE00);
  sub_1C4420C3C(v15, &qword_1EC0BB858, &qword_1C4F21708);
  *(v13 + 16) = v14 + 1;
  sub_1C44CDA30(v16, v13 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v14, &qword_1EC0B89E0, &qword_1C4F0DE00);
  v18 = v0[22];
  v0[20] = v13;
  v19 = v0[2];
  sub_1C456902C(&dword_1EC0BB878, &dword_1C4F21728);
  sub_1C442C87C();
  sub_1C4401CBC(v20, &dword_1EC0BB878, &dword_1C4F21728, v21);
  sub_1C4EFBD68();
  if (v18)
  {

    if (qword_1EDDFA668 != -1)
    {
      sub_1C4406758();
      swift_once();
    }

    v22 = sub_1C4F00978();
    sub_1C442DE98(v22, qword_1EDE2DDE0);
    v23 = sub_1C4F00968();
    v24 = sub_1C4F01CD8();

    if (os_log_type_enabled(v23, v24))
    {
      sub_1C43FD084();
      v25 = sub_1C4405A9C();
      dword_1EC0BB878 = 138412290;
      v26 = v18;
      *algn_1EC0BB87C = _swift_stdlib_bridgeErrorToNSError();
      *v25 = *algn_1EC0BB87C;
      sub_1C4403014(&dword_1C43F8000, v27, v28, "EntityRelevanceMLModel: Unable to read feature vectors from database: %@");
      sub_1C4420C3C(v25, &qword_1EC0BDA00, &qword_1C4F10D30);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    goto LABEL_14;
  }

  sub_1C4410B38();
  if (v29)
  {
    sub_1C4420C3C(v19, &qword_1EC0BB870, &qword_1C4F21720);
LABEL_14:
    sub_1C43FD5C0();

    v30 = sub_1C440F530();

    return v31(v30);
  }

  v33 = sub_1C4402120();
  sub_1C44CDA30(v33, v34, v35, v36);
  swift_unknownObjectRetain();
  sub_1C4EFFF48();
  v37 = swift_task_alloc();
  v38 = sub_1C4408930(v37);
  *v38 = v39;
  v40 = sub_1C4406B08(v38);

  return MEMORY[0x1EEE13C40](v40);
}

uint64_t sub_1C46F32A8()
{
  if (qword_1EDDFA668 != -1)
  {
    sub_1C4406758();
    swift_once();
  }

  v1 = v0[22];
  v2 = sub_1C4F00978();
  sub_1C442DE98(v2, qword_1EDE2DDE0);
  v3 = sub_1C4F00968();
  v4 = sub_1C4F01CD8();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[22];
  if (v5)
  {
    v7 = sub_1C43FD084();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1C43F8000, v3, v4, "EntityRelevanceMLModel: Unable to generate prediction for entity: %@", v7, 0xCu);
    sub_1C4420C3C(v8, &qword_1EC0BDA00, &qword_1C4F10D30);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  else
  {
  }

  sub_1C4420C3C(v0[19], &qword_1EC0BB858, &qword_1C4F21708);
  v11 = v0[2];
  sub_1C456902C(&dword_1EC0BB878, &dword_1C4F21728);
  sub_1C442C87C();
  sub_1C4401CBC(v12, &dword_1EC0BB878, &dword_1C4F21728, v13);
  sub_1C4EFBD68();
  sub_1C4410B38();
  if (v14)
  {
    sub_1C4420C3C(v11, &qword_1EC0BB870, &qword_1C4F21720);
    sub_1C43FD5C0();

    v15 = sub_1C440F530();

    return v16(v15);
  }

  else
  {
    v18 = sub_1C4402120();
    sub_1C44CDA30(v18, v19, v20, v21);
    swift_unknownObjectRetain();
    sub_1C4EFFF48();
    v22 = swift_task_alloc();
    v23 = sub_1C4408930(v22);
    *v23 = v24;
    v25 = sub_1C4406B08(v23);

    return MEMORY[0x1EEE13C40](v25);
  }
}

uint64_t sub_1C46F366C(uint64_t result)
{
  if (result)
  {

    return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  return result;
}

void sub_1C46F36AC(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1C4F02828();
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
        sub_1C456902C(&qword_1EC0B89E0, &qword_1C4F0DE00);
        v6 = sub_1C4F01728();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_1C456902C(&qword_1EC0B89E0, &qword_1C4F0DE00) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1C46F3A3C(v8, v9, a1, v4);
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
    sub_1C46F37F4(0, v2, 1, a1);
  }
}

void sub_1C46F37F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v35 = sub_1C456902C(&qword_1EC0B89E0, &qword_1C4F0DE00);
  MEMORY[0x1EEE9AC00](v35);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v27 - v11);
  MEMORY[0x1EEE9AC00](v13);
  v16 = (&v27 - v15);
  v29 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v14 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v20 = -v18;
    v21 = a1 - a3;
    v34 = v17;
    v28 = v18;
    v22 = v17 + v18 * a3;
    while (2)
    {
      v32 = v19;
      v33 = a3;
      v30 = v22;
      v31 = v21;
      v23 = v21;
      do
      {
        sub_1C4460108(v22, v16, &qword_1EC0B89E0, &qword_1C4F0DE00);
        sub_1C4460108(v19, v12, &qword_1EC0B89E0, &qword_1C4F0DE00);
        v24 = *v16;
        v25 = *v12;
        sub_1C4420C3C(v12, &qword_1EC0B89E0, &qword_1C4F0DE00);
        sub_1C4420C3C(v16, &qword_1EC0B89E0, &qword_1C4F0DE00);
        if (v25 >= v24)
        {
          break;
        }

        if (!v34)
        {
          __break(1u);
          return;
        }

        sub_1C44CDA30(v22, v9, &qword_1EC0B89E0, &qword_1C4F0DE00);
        swift_arrayInitWithTakeFrontToBack();
        sub_1C44CDA30(v9, v19, &qword_1EC0B89E0, &qword_1C4F0DE00);
        v19 += v20;
        v22 += v20;
      }

      while (!__CFADD__(v23++, 1));
      a3 = v33 + 1;
      v19 = v32 + v28;
      v21 = v31 - 1;
      v22 = v30 + v28;
      if (v33 + 1 != v29)
      {
        continue;
      }

      break;
    }
  }
}

void sub_1C46F3A3C(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v112 = a1;
  v125 = sub_1C456902C(&qword_1EC0B89E0, &qword_1C4F0DE00);
  v120 = *(v125 - 8);
  MEMORY[0x1EEE9AC00](v125);
  v115 = &v109 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v124 = &v109 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v126 = (&v109 - v10);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v109 - v12);
  v122 = a3;
  v14 = a3[1];
  if (v14 < 1)
  {
    v16 = MEMORY[0x1E69E7CC0];
LABEL_101:
    v18 = *v112;
    if (!*v112)
    {
      goto LABEL_142;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_103:
      v100 = v16 + 16;
      v101 = *(v16 + 2);
      while (v101 >= 2)
      {
        if (!*v122)
        {
          goto LABEL_139;
        }

        v102 = v16;
        v103 = &v16[16 * v101];
        v104 = *v103;
        v105 = &v100[2 * v101];
        v106 = *(v105 + 1);
        v107 = v123;
        sub_1C46F4358(*v122 + *(v120 + 72) * *v103, *v122 + *(v120 + 72) * *v105, *v122 + *(v120 + 72) * v106, v18);
        v123 = v107;
        if (v107)
        {
          break;
        }

        if (v106 < v104)
        {
          goto LABEL_127;
        }

        if (v101 - 2 >= *v100)
        {
          goto LABEL_128;
        }

        *v103 = v104;
        *(v103 + 1) = v106;
        v108 = *v100 - v101;
        if (*v100 < v101)
        {
          goto LABEL_129;
        }

        v101 = *v100 - 1;
        sub_1C461950C(v105 + 16, v108, v105);
        *v100 = v101;
        v16 = v102;
      }

LABEL_111:

      return;
    }

LABEL_136:
    v16 = sub_1C46194F4();
    goto LABEL_103;
  }

  v109 = a4;
  v15 = 0;
  v16 = MEMORY[0x1E69E7CC0];
  v116 = (&v109 - v12);
  while (1)
  {
    v17 = v15;
    v18 = v15 + 1;
    if (v15 + 1 < v14)
    {
      v111 = v16;
      v19 = *v122;
      v20 = *(v120 + 72);
      v21 = v15 + 1;
      v18 = *v122 + v20 * v18;
      v119 = v14;
      sub_1C4460108(v18, v13, &qword_1EC0B89E0, &qword_1C4F0DE00);
      v22 = v126;
      sub_1C4460108(v19 + v20 * v17, v126, &qword_1EC0B89E0, &qword_1C4F0DE00);
      v23 = *v13;
      v24 = *v22;
      sub_1C4420C3C(v22, &qword_1EC0B89E0, &qword_1C4F0DE00);
      sub_1C4420C3C(v13, &qword_1EC0B89E0, &qword_1C4F0DE00);
      v25 = v119;
      v110 = v17;
      v26 = v17 + 2;
      v121 = v20;
      v27 = v19 + v20 * (v17 + 2);
      while (1)
      {
        v28 = v26;
        if (v21 + 1 >= v25)
        {
          break;
        }

        ++v21;
        sub_1C4460108(v27, v13, &qword_1EC0B89E0, &qword_1C4F0DE00);
        v29 = v126;
        sub_1C4460108(v18, v126, &qword_1EC0B89E0, &qword_1C4F0DE00);
        v30 = *v13;
        v31 = *v29;
        sub_1C4420C3C(v29, &qword_1EC0B89E0, &qword_1C4F0DE00);
        sub_1C4420C3C(v13, &qword_1EC0B89E0, &qword_1C4F0DE00);
        v25 = v119;
        v27 += v121;
        v18 += v121;
        v26 = v28 + 1;
        if (v24 < v23 == v31 >= v30)
        {
          goto LABEL_9;
        }
      }

      v21 = v25;
LABEL_9:
      v16 = v111;
      if (v24 >= v23)
      {
        v18 = v21;
LABEL_30:
        v17 = v110;
        goto LABEL_31;
      }

      v17 = v110;
      if (v21 < v110)
      {
        goto LABEL_133;
      }

      v18 = v21;
      if (v110 < v21)
      {
        if (v25 >= v28)
        {
          v32 = v28;
        }

        else
        {
          v32 = v25;
        }

        v33 = v121 * (v32 - 1);
        v34 = v21;
        v35 = v121 * v32;
        v36 = v110 * v121;
        v37 = v110;
        do
        {
          if (v37 != --v34)
          {
            v38 = *v122;
            if (!*v122)
            {
              goto LABEL_140;
            }

            sub_1C44CDA30(v38 + v36, v115, &qword_1EC0B89E0, &qword_1C4F0DE00);
            v39 = v36 < v33 || v38 + v36 >= (v38 + v35);
            if (v39)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v36 != v33)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_1C44CDA30(v115, v38 + v33, &qword_1EC0B89E0, &qword_1C4F0DE00);
          }

          ++v37;
          v33 -= v121;
          v35 -= v121;
          v36 += v121;
        }

        while (v37 < v34);
        v16 = v111;
        v18 = v21;
        goto LABEL_30;
      }
    }

LABEL_31:
    v40 = v122[1];
    if (v18 < v40)
    {
      if (__OFSUB__(v18, v17))
      {
        goto LABEL_132;
      }

      if (v18 - v17 < v109)
      {
        break;
      }
    }

LABEL_47:
    if (v18 < v17)
    {
      goto LABEL_131;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v121 = v18;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1C458A358();
      v16 = v98;
    }

    v54 = *(v16 + 2);
    v55 = v54 + 1;
    if (v54 >= *(v16 + 3) >> 1)
    {
      sub_1C458A358();
      v16 = v99;
    }

    *(v16 + 2) = v55;
    v56 = &v16[16 * v54 + 32];
    v57 = v121;
    *v56 = v17;
    *(v56 + 1) = v57;
    v119 = *v112;
    if (!v119)
    {
      goto LABEL_141;
    }

    if (v54)
    {
      v58 = v16 + 32;
      while (1)
      {
        v59 = v55 - 1;
        v60 = &v58[16 * v55 - 16];
        v61 = &v16[16 * v55];
        if (v55 >= 4)
        {
          break;
        }

        if (v55 == 3)
        {
          v62 = *(v16 + 4);
          v63 = *(v16 + 5);
          v72 = __OFSUB__(v63, v62);
          v64 = v63 - v62;
          v65 = v72;
LABEL_68:
          if (v65)
          {
            goto LABEL_118;
          }

          v77 = *v61;
          v76 = *(v61 + 1);
          v78 = __OFSUB__(v76, v77);
          v79 = v76 - v77;
          v80 = v78;
          if (v78)
          {
            goto LABEL_121;
          }

          v81 = *(v60 + 1);
          v82 = v81 - *v60;
          if (__OFSUB__(v81, *v60))
          {
            goto LABEL_124;
          }

          if (__OFADD__(v79, v82))
          {
            goto LABEL_126;
          }

          if (v79 + v82 >= v64)
          {
            if (v64 < v82)
            {
              v59 = v55 - 2;
            }

            goto LABEL_90;
          }

          goto LABEL_83;
        }

        if (v55 < 2)
        {
          goto LABEL_120;
        }

        v84 = *v61;
        v83 = *(v61 + 1);
        v72 = __OFSUB__(v83, v84);
        v79 = v83 - v84;
        v80 = v72;
LABEL_83:
        if (v80)
        {
          goto LABEL_123;
        }

        v86 = *v60;
        v85 = *(v60 + 1);
        v72 = __OFSUB__(v85, v86);
        v87 = v85 - v86;
        if (v72)
        {
          goto LABEL_125;
        }

        if (v87 < v79)
        {
          goto LABEL_97;
        }

LABEL_90:
        if (v59 - 1 >= v55)
        {
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
          goto LABEL_135;
        }

        if (!*v122)
        {
          goto LABEL_138;
        }

        v91 = v16;
        v92 = &v58[16 * v59 - 16];
        v93 = *v92;
        v94 = v59;
        v18 = &v58[16 * v59];
        v95 = *(v18 + 8);
        v96 = v123;
        sub_1C46F4358(*v122 + *(v120 + 72) * *v92, *v122 + *(v120 + 72) * *v18, *v122 + *(v120 + 72) * v95, v119);
        v123 = v96;
        if (v96)
        {
          goto LABEL_111;
        }

        if (v95 < v93)
        {
          goto LABEL_113;
        }

        v97 = *(v91 + 2);
        if (v94 > v97)
        {
          goto LABEL_114;
        }

        *v92 = v93;
        *(v92 + 1) = v95;
        if (v94 >= v97)
        {
          goto LABEL_115;
        }

        v55 = v97 - 1;
        sub_1C461950C((v18 + 16), v97 - 1 - v94, v18);
        v16 = v91;
        *(v91 + 2) = v97 - 1;
        v13 = v116;
        if (v97 <= 2)
        {
          goto LABEL_97;
        }
      }

      v66 = &v58[16 * v55];
      v67 = *(v66 - 8);
      v68 = *(v66 - 7);
      v72 = __OFSUB__(v68, v67);
      v69 = v68 - v67;
      if (v72)
      {
        goto LABEL_116;
      }

      v71 = *(v66 - 6);
      v70 = *(v66 - 5);
      v72 = __OFSUB__(v70, v71);
      v64 = v70 - v71;
      v65 = v72;
      if (v72)
      {
        goto LABEL_117;
      }

      v73 = *(v61 + 1);
      v74 = v73 - *v61;
      if (__OFSUB__(v73, *v61))
      {
        goto LABEL_119;
      }

      v72 = __OFADD__(v64, v74);
      v75 = v64 + v74;
      if (v72)
      {
        goto LABEL_122;
      }

      if (v75 >= v69)
      {
        v89 = *v60;
        v88 = *(v60 + 1);
        v72 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v72)
        {
          goto LABEL_130;
        }

        if (v64 < v90)
        {
          v59 = v55 - 2;
        }

        goto LABEL_90;
      }

      goto LABEL_68;
    }

LABEL_97:
    v15 = v121;
    v14 = v122[1];
    if (v121 >= v14)
    {
      goto LABEL_101;
    }
  }

  v41 = v17 + v109;
  if (__OFADD__(v17, v109))
  {
    goto LABEL_134;
  }

  if (v41 >= v40)
  {
    v41 = v122[1];
  }

  if (v41 < v17)
  {
LABEL_135:
    __break(1u);
    goto LABEL_136;
  }

  if (v18 == v41)
  {
    goto LABEL_47;
  }

  v110 = v17;
  v111 = v16;
  v42 = *v122;
  v43 = *(v120 + 72);
  v44 = *v122 + v43 * (v18 - 1);
  v45 = -v43;
  v46 = v17 - v18;
  v113 = v43;
  v114 = v41;
  v47 = v42 + v18 * v43;
LABEL_40:
  v121 = v18;
  v117 = v47;
  v118 = v46;
  v48 = v47;
  v119 = v44;
  while (1)
  {
    sub_1C4460108(v48, v13, &qword_1EC0B89E0, &qword_1C4F0DE00);
    v49 = v126;
    sub_1C4460108(v44, v126, &qword_1EC0B89E0, &qword_1C4F0DE00);
    v50 = *v13;
    v51 = *v49;
    sub_1C4420C3C(v49, &qword_1EC0B89E0, &qword_1C4F0DE00);
    sub_1C4420C3C(v13, &qword_1EC0B89E0, &qword_1C4F0DE00);
    if (v51 >= v50)
    {
LABEL_45:
      v18 = v121 + 1;
      v44 = v119 + v113;
      v46 = v118 - 1;
      v47 = v117 + v113;
      if (v121 + 1 == v114)
      {
        v18 = v114;
        v17 = v110;
        v16 = v111;
        goto LABEL_47;
      }

      goto LABEL_40;
    }

    if (!v42)
    {
      break;
    }

    v52 = v124;
    sub_1C44CDA30(v48, v124, &qword_1EC0B89E0, &qword_1C4F0DE00);
    swift_arrayInitWithTakeFrontToBack();
    sub_1C44CDA30(v52, v44, &qword_1EC0B89E0, &qword_1C4F0DE00);
    v44 += v45;
    v48 += v45;
    v39 = __CFADD__(v46++, 1);
    if (v39)
    {
      goto LABEL_45;
    }
  }

  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
}

void sub_1C46F4358(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v48 = a3;
  v49 = sub_1C456902C(&qword_1EC0B89E0, &qword_1C4F0DE00);
  MEMORY[0x1EEE9AC00](v49);
  v50 = (&v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v42 - v9);
  v12 = *(v11 + 72);
  if (!v12)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  v13 = a2 - a1;
  v14 = a2 - a1 == 0x8000000000000000 && v12 == -1;
  if (v14)
  {
    goto LABEL_61;
  }

  v15 = v48 - a2;
  if (v48 - a2 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_62;
  }

  v17 = v13 / v12;
  v53 = a1;
  v52 = a4;
  v18 = v15 / v12;
  if (v13 / v12 >= v15 / v12)
  {
    sub_1C459C4E8(a2, v15 / v12, a4);
    v25 = a4 + v18 * v12;
    v26 = -v12;
    v27 = v25;
    v28 = v48;
    v47 = -v12;
    v45 = a1;
LABEL_37:
    v48 = a2 + v26;
    v29 = v28;
    v43 = v27;
    v46 = a2;
    while (1)
    {
      if (v25 <= a4)
      {
        v53 = a2;
        v51 = v27;
        goto LABEL_59;
      }

      if (a2 <= a1)
      {
        break;
      }

      v44 = v27;
      v30 = a4;
      v31 = v29 + v47;
      v32 = v25 + v47;
      sub_1C4460108(v25 + v47, v10, &qword_1EC0B89E0, &qword_1C4F0DE00);
      v33 = v10;
      v34 = v50;
      sub_1C4460108(v48, v50, &qword_1EC0B89E0, &qword_1C4F0DE00);
      v35 = *v33;
      v36 = *v34;
      v37 = v34;
      v10 = v33;
      sub_1C4420C3C(v37, &qword_1EC0B89E0, &qword_1C4F0DE00);
      sub_1C4420C3C(v33, &qword_1EC0B89E0, &qword_1C4F0DE00);
      if (v36 < v35)
      {
        v39 = v29 < v46 || v31 >= v46;
        v28 = v31;
        a4 = v30;
        if (v39)
        {
          a2 = v48;
          swift_arrayInitWithTakeFrontToBack();
          v26 = v47;
          v27 = v44;
          a1 = v45;
        }

        else
        {
          v27 = v44;
          v14 = v29 == v46;
          v26 = v47;
          v40 = v48;
          a2 = v48;
          a1 = v45;
          if (!v14)
          {
            v41 = v44;
            swift_arrayInitWithTakeBackToFront();
            a2 = v40;
            v27 = v41;
          }
        }

        goto LABEL_37;
      }

      v38 = v29 < v25 || v31 >= v25;
      a4 = v30;
      if (v38)
      {
        v29 = v31;
        swift_arrayInitWithTakeFrontToBack();
        v25 = v32;
        v27 = v32;
        a1 = v45;
        a2 = v46;
      }

      else
      {
        v27 = v32;
        v14 = v25 == v29;
        v29 = v31;
        v25 = v32;
        a1 = v45;
        a2 = v46;
        if (!v14)
        {
          v29 = v31;
          swift_arrayInitWithTakeBackToFront();
          v25 = v32;
          v27 = v32;
        }
      }
    }

    v53 = a2;
    v51 = v43;
  }

  else
  {
    sub_1C459C4E8(a1, v13 / v12, a4);
    v47 = a4 + v17 * v12;
    v51 = v47;
    while (a4 < v47 && a2 < v48)
    {
      sub_1C4460108(a2, v10, &qword_1EC0B89E0, &qword_1C4F0DE00);
      v20 = v50;
      sub_1C4460108(a4, v50, &qword_1EC0B89E0, &qword_1C4F0DE00);
      v21 = *v10;
      v22 = *v20;
      sub_1C4420C3C(v20, &qword_1EC0B89E0, &qword_1C4F0DE00);
      sub_1C4420C3C(v10, &qword_1EC0B89E0, &qword_1C4F0DE00);
      if (v22 >= v21)
      {
        if (a1 < a4 || a1 >= a4 + v12)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a4)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v52 = a4 + v12;
        a4 += v12;
      }

      else
      {
        if (a1 < a2 || a1 >= a2 + v12)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a2)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        a2 += v12;
      }

      a1 += v12;
      v53 = a1;
    }
  }

LABEL_59:
  sub_1C4BEB3D4(&v53, &v52, &v51);
}

char *sub_1C46F47D8(uint64_t *a1, uint64_t a2)
{
  v5 = sub_1C4EF9CD8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v43 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v43 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v43 - v16;
  v45 = a1;
  v18 = *a1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  result = sub_1C46EF2CC(v18, a2);
  if (v2)
  {
LABEL_26:

    return v8;
  }

  v58 = v17;
  if (v20)
  {
    v8 = *(v18 + 16);

    return v8;
  }

  v47 = v8;
  v48 = v11;
  v43 = 0;
  v21 = result + 1;
  if (!__OFADD__(result, 1))
  {
    v8 = result;
    v59 = v6 + 16;
    v56 = a2 + 56;
    v57 = (v6 + 8);
    v44 = (v6 + 40);
    v22 = v58;
    v23 = v18;
    v49 = v6;
    while (1)
    {
      v24 = *(v23 + 16);
      if (v21 == v24)
      {
        goto LABEL_26;
      }

      if (v21 >= v24)
      {
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
        break;
      }

      v53 = v23;
      v54 = v8;
      v50 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v25 = *(v6 + 72);
      v55 = v21;
      v26 = *(v6 + 16);
      v51 = v23 + v50;
      v52 = v25 * v21;
      v27 = v26;
      v26(v22, v23 + v50 + v25 * v21, v5);
      if (*(a2 + 16))
      {
        sub_1C46F4CA0(&qword_1EC0B90D0, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
        v28 = sub_1C4F00FD8();
        v29 = a2;
        v30 = ~(-1 << *(a2 + 32));
        while (1)
        {
          v31 = v28 & v30;
          a2 = v29;
          v22 = v58;
          if (((*(v56 + (((v28 & v30) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v28 & v30)) & 1) == 0)
          {
            break;
          }

          v27(v14, *(v29 + 48) + v31 * v25, v5);
          sub_1C46F4CA0(&qword_1EC0B9D00, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
          v32 = sub_1C4F010B8();
          v33 = *v57;
          (*v57)(v14, v5);
          v28 = v31 + 1;
          if (v32)
          {
            v22 = v58;
            result = v33(v58, v5);
            a2 = v29;
            v23 = v53;
            v8 = v54;
            v34 = v55;
            goto LABEL_23;
          }
        }
      }

      result = (*v57)(v22, v5);
      v35 = v54;
      v34 = v55;
      if (v54 == v55)
      {
        v23 = v53;
      }

      else
      {
        v23 = v53;
        if ((v54 & 0x8000000000000000) != 0)
        {
          goto LABEL_31;
        }

        v36 = *(v53 + 16);
        if (v54 >= v36)
        {
          goto LABEL_32;
        }

        v37 = v25 * v54;
        v38 = v51;
        v46 = v37;
        result = (v27)(v48, v51 + v37, v5);
        if (v55 >= v36)
        {
          goto LABEL_33;
        }

        v27(v47, v38 + v52, v5);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C48348C0();
          v23 = v42;
        }

        v39 = v23 + v50;
        v40 = *v44;
        result = (*v44)(v23 + v50 + v46, v47, v5);
        if (v55 >= *(v23 + 16))
        {
          goto LABEL_34;
        }

        result = v40(v39 + v52, v48, v5);
        v34 = v55;
        *v45 = v23;
        v22 = v58;
      }

      v41 = __OFADD__(v35, 1);
      v8 = (v35 + 1);
      if (v41)
      {
        goto LABEL_30;
      }

LABEL_23:
      v41 = __OFADD__(v34, 1);
      v21 = v34 + 1;
      v6 = v49;
      if (v41)
      {
        goto LABEL_29;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C46F4CA0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C46F4CE8(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1C46F1200;

  return sub_1C46F0CB4(a1, a2, v2);
}

uint64_t sub_1C46F4D94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EntityRelevanceInteractionGroundTruth(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C46F4DF8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C43FBCE0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C46F4E50(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1C46F4F2C(uint64_t a1)
{
  sub_1C45F6D88(319);
  v3 = v2;
  if (v4 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v3 - 8) + 84);
    return 0;
  }

  return v3;
}

uint64_t sub_1C46F4FD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);

  return MEMORY[0x1EEE6BEB8](a1, a2, v4, sub_1C451FE80);
}

uint64_t sub_1C46F5038(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);

  return MEMORY[0x1EEE6C118](a1, a2, a3, v6, sub_1C451FE88);
}

uint64_t *sub_1C46F50BC(uint64_t *result, __n128 a2, __n128 a3)
{
  v4 = *(v3 + 136);
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
    goto LABEL_18;
  }

  v7 = result;
  *(v3 + 136) = v6;
  v8 = result[10];
  v9 = *(v3 + 152);
  v5 = __OFADD__(v9, v8);
  v10 = v9 + v8;
  if (v5)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  *(v3 + 152) = v10;
  *(v3 + 16) = sub_1C46F64FC(*(v3 + 16), result[2], result[3]);

  v11.n128_u64[0] = v7[2];
  *(v3 + 56) = sub_1C441F820(v11, v12);

  if (v7[10] >= 1)
  {
    v15 = *(v3 + 144);
    v5 = __OFADD__(v15, 1);
    v16 = v15 + 1;
    if (!v5)
    {
      *(v3 + 144) = v16;
      v17 = v7[12];
      if (v17 >= 1)
      {
        v17 = 1;
      }

      v13.n128_u64[0] = v7[4];
      *(v3 + 24) = sub_1C4411B9C(v17, v13);

      v19 = v7[12];
      if (v19 >= 2)
      {
        v19 = 2;
      }

      v18.n128_u64[0] = v7[5];
      *(v3 + 32) = sub_1C4411B9C(v19, v18);

      v21 = v7[12];
      if (v21 >= 4)
      {
        v21 = 4;
      }

      v20.n128_u64[0] = v7[6];
      *(v3 + 40) = sub_1C4411B9C(v21, v20);

      v23 = v7[12];
      if (v23 >= 8)
      {
        v23 = 8;
      }

      v22.n128_u64[0] = v7[7];
      *(v3 + 48) = sub_1C4411B9C(v23, v22);

      v24.n128_u64[0] = v7[4];
      *(v3 + 64) = sub_1C441F820(v24, v25);

      v26.n128_u64[0] = v7[5];
      *(v3 + 72) = sub_1C441F820(v26, v27);

      v28.n128_u64[0] = v7[6];
      *(v3 + 80) = sub_1C441F820(v28, v29);

      v30.n128_u64[0] = v7[7];
      *(v3 + 88) = sub_1C441F820(v30, v31);

      *(v3 + 96) = sub_1C46F64FC(*(v3 + 96), *(v7 + 8), 1.0);

      *(v3 + 104) = sub_1C46F64FC(*(v3 + 104), *(v7 + 9), 1.0);

      goto LABEL_14;
    }

LABEL_19:
    __break(1u);
    return result;
  }

LABEL_14:
  v13.n128_u64[0] = v7[12];
  *(v3 + 112) = sub_1C4417040(v13, v14);

  v32.n128_u64[0] = v7[11];
  *(v3 + 120) = sub_1C4417040(v32, v33);

  v34.n128_u64[0] = v7[3];
  *(v3 + 128) = sub_1C4417040(v34, v35);
}

double sub_1C46F52FC@<D0>(void *a1@<X0>, double *a2@<X8>)
{
  v4 = sub_1C46F5B58();
  v91 = v5;
  v92 = v4;
  v90 = v6;
  v7 = sub_1C46F6594(a1[3]);
  v88 = v8;
  v89 = v7;
  v87 = v9;
  v10 = sub_1C46F6594(a1[4]);
  v85 = v11;
  v86 = v10;
  v84 = v12;
  v13 = sub_1C46F6594(a1[5]);
  v82 = v14;
  v83 = v13;
  v81 = v15;
  v16 = sub_1C46F6594(a1[6]);
  v79 = v17;
  v80 = v16;
  v78 = v18;
  v19 = sub_1C46F65C8(a1[7]);
  v76 = v20;
  v77 = v19;
  v75 = v21;
  v22 = sub_1C46F65C8(a1[8]);
  v73 = v23;
  v74 = v22;
  v72 = v24;
  v25 = sub_1C46F65C8(a1[9]);
  v70 = v26;
  v71 = v25;
  v69 = v27;
  v28 = sub_1C46F65C8(a1[10]);
  v67 = v29;
  v68 = v28;
  v66 = v30;
  v31 = sub_1C46F65C8(a1[11]);
  v64 = v32;
  v65 = v31;
  v63 = v33;
  v34 = sub_1C46F5BA4();
  v61 = v35;
  v62 = v34;
  v60 = v36;
  v37 = sub_1C46F5BE0();
  v58 = v38;
  v59 = v37;
  v57 = v39;
  v40 = sub_1C46F6600(a1[14]);
  v42 = v41;
  v56 = v43;
  v44 = sub_1C46F6600(a1[15]);
  v46 = v45;
  v48 = v47;
  v49 = sub_1C46F6600(a1[16]);
  v51 = v50;
  v53 = v52;
  v54 = a1[17];

  *a2 = v92;
  *(a2 + 1) = v91;
  *(a2 + 2) = v90;
  a2[3] = v89;
  *(a2 + 4) = v88;
  *(a2 + 5) = v87;
  a2[6] = v86;
  *(a2 + 7) = v85;
  *(a2 + 8) = v84;
  a2[9] = v83;
  *(a2 + 10) = v82;
  *(a2 + 11) = v81;
  a2[12] = v80;
  *(a2 + 13) = v79;
  *(a2 + 14) = v78;
  a2[15] = v77;
  *(a2 + 16) = v76;
  *(a2 + 17) = v75;
  a2[18] = v74;
  *(a2 + 19) = v73;
  *(a2 + 20) = v72;
  a2[21] = v71;
  *(a2 + 22) = v70;
  *(a2 + 23) = v69;
  a2[24] = v68;
  *(a2 + 25) = v67;
  *(a2 + 26) = v66;
  a2[27] = v65;
  *(a2 + 28) = v64;
  *(a2 + 29) = v63;
  a2[30] = v62;
  *(a2 + 31) = v61;
  *(a2 + 32) = v60;
  a2[33] = v59;
  *(a2 + 34) = v58;
  *(a2 + 35) = v57;
  a2[36] = v40;
  *(a2 + 37) = v42;
  result = v56;
  a2[38] = v56;
  a2[39] = v44;
  *(a2 + 40) = v46;
  *(a2 + 41) = v48;
  a2[42] = v49;
  *(a2 + 43) = v51;
  *(a2 + 44) = v53;
  *(a2 + 45) = v54;
  return result;
}

void *sub_1C46F54F8()
{
  sub_1C456902C(&qword_1EC0B8850, &unk_1C4F0DC40);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1C4F21800;
  v2 = v0[1];
  *(v1 + 48) = *v0;
  v3 = v0[3];
  *(v1 + 72) = v0[2];
  *(v1 + 96) = v2;
  v4 = v0[16];
  v5 = v0[17];
  *(v1 + 120) = v0[15];
  *(v1 + 144) = v5;
  *(v1 + 168) = v4;
  v6 = v0[4];
  v7 = v0[5];
  *(v1 + 192) = v3;
  *(v1 + 216) = v7;
  *(v1 + 240) = v6;
  v8 = v0[19];
  *(v1 + 264) = v0[18];
  v9 = v0[21];
  *(v1 + 288) = v0[20];
  *(v1 + 312) = v8;
  v10 = v0[7];
  *(v1 + 336) = v0[6];
  v11 = v0[9];
  *(v1 + 360) = v0[8];
  *(v1 + 384) = v10;
  *(v1 + 408) = v9;
  v12 = v0[22];
  *(v1 + 432) = v0[23];
  *(v1 + 456) = v12;
  v13 = v0[10];
  v14 = v0[11];
  *(v1 + 480) = v11;
  *(v1 + 504) = v14;
  *(v1 + 528) = v13;
  v15 = v0[25];
  *(v1 + 552) = v0[24];
  *(v1 + 576) = v0[26];
  *(v1 + 600) = v15;
  *(v1 + 624) = v0[12];
  *(v1 + 32) = 0xD000000000000010;
  *(v1 + 40) = 0x80000001C4F941D0;
  *(v1 + 56) = 0x696365725078616DLL;
  *(v1 + 64) = 0xEF6C6C416E6F6973;
  *(v1 + 80) = 0x69636572506E696DLL;
  *(v1 + 88) = 0xEF6C6C416E6F6973;
  strcpy((v1 + 104), "meanRecallAll");
  *(v1 + 118) = -4864;
  strcpy((v1 + 128), "maxRecallAll");
  *(v1 + 141) = 0;
  *(v1 + 142) = -5120;
  strcpy((v1 + 152), "minRecallAll");
  *(v1 + 165) = 0;
  *(v1 + 166) = -5120;
  sub_1C440F540();
  *(v16 + 176) = v17;
  *(v16 + 184) = v18;
  sub_1C44321DC();
  v20 = v19 & 0xFFFFFFFFFFFFLL | 0xEF31000000000000;
  v21[25] = v22;
  v21[26] = v20;
  v21[28] = v23;
  v21[29] = v20;
  v21[31] = v24;
  v21[32] = 0xED00003174416C6CLL;
  v21[34] = v25;
  v21[35] = 0xEC0000003174416CLL;
  v21[37] = v26;
  v21[38] = 0xEC0000003174416CLL;
  sub_1C440F540();
  *(v27 + 320) = v28;
  *(v27 + 328) = v29;
  sub_1C44321DC();
  v31 = v30 & 0xFFFFFFFFFFFFLL | 0xEF32000000000000;
  v32[43] = v33;
  v32[44] = v31;
  v32[46] = v34;
  v32[47] = v31;
  v32[49] = v35;
  v32[50] = 0xED00003274416C6CLL;
  v32[52] = v36;
  v32[53] = 0xEC0000003274416CLL;
  v32[55] = v37;
  v32[56] = 0xEC0000003274416CLL;
  sub_1C440F540();
  *(v38 + 464) = v39;
  *(v38 + 472) = v40;
  sub_1C44321DC();
  v42 = v41 & 0xFFFFFFFFFFFFLL | 0xEF34000000000000;
  v43[61] = v44;
  v43[62] = v42;
  v43[64] = v45;
  v43[65] = v42;
  v43[67] = v46;
  v43[68] = 0xED00003474416C6CLL;
  v43[70] = v47;
  v43[71] = 0xEC0000003474416CLL;
  v43[73] = v48;
  v43[74] = 0xEC0000003474416CLL;
  sub_1C440F540();
  v49[76] = v50;
  v49[77] = v51;
  v49[79] = v52;
  v49[80] = 0xEF3874416E6F6973;
  v49[81] = v53;
  v49[82] = v54;
  v49[83] = 0xEF3874416E6F6973;
  v49[84] = v55;
  v49[85] = v56;
  v49[86] = 0xED00003874416C6CLL;
  v57 = v0[28];
  v58 = v0[29];
  v49[87] = v59;
  v49[88] = v60;
  v49[89] = 0xEC0000003874416CLL;
  v49[90] = v58;
  v49[91] = v61;
  v49[92] = 0xEC0000003874416CLL;
  v49[93] = v57;
  v49[94] = v50 | 2;
  v49[95] = 0x80000001C4F94270;
  v62 = v0[31];
  v49[96] = v0[30];
  v49[97] = v50 | 5;
  v49[98] = 0x80000001C4F94290;
  v49[99] = v62;
  sub_1C43FD5E4();
  v63[100] = v64;
  v63[101] = v65;
  v63[102] = v0[32];
  sub_1C43FD5E4();
  v67[103] = v66 | 4;
  v67[104] = v68;
  v69 = v0[34];
  v67[105] = v70;
  v67[106] = v66 | 7;
  v67[107] = 0x80000001C4F942F0;
  v67[108] = v69;
  sub_1C4413048();
  v71[109] = v72;
  v71[110] = v73;
  v71[111] = v74;
  sub_1C4413048();
  v76[112] = v75 | 6;
  v76[113] = v77;
  v76[114] = v0[36];
  sub_1C4413048();
  v78[115] = v79;
  v78[116] = v80;
  v78[117] = v0[38];
  sub_1C4413048();
  v81[118] = v82;
  v81[119] = v83;
  v81[120] = v84;
  v81[121] = v85 | 8;
  v81[122] = 0x80000001C4F94390;
  v81[123] = v86;
  sub_1C4413048();
  v87[124] = v88;
  v87[125] = v89;
  v87[126] = v90;
  sub_1C4413048();
  v91[127] = v92;
  v91[128] = v93;
  v91[129] = v94;
  sub_1C43FD5E4();
  v96[130] = v95 | 0xD;
  v96[131] = v97;
  v96[132] = v0[42];
  sub_1C43FD5E4();
  v99[133] = v98 | 0xC;
  v99[134] = v100;
  v99[135] = v0[44];
  sub_1C43FD5E4();
  *(v101 + 1088) = v102;
  *(v101 + 1096) = v103;
  *(v101 + 1104) = v104;
  *(v101 + 1112) = v105;
  *(v101 + 1120) = 0x80000001C4F93E60;
  *(v101 + 1128) = v106;
  v107 = sub_1C4F00F28();
  v108 = sub_1C46F66B0(v107);

  sub_1C456902C(&qword_1EC0BA880, &unk_1C4F21960);
  result = sub_1C4F02538();
  v110 = result;
  v111 = 0;
  v112 = 1 << v108[32];
  v113 = -1;
  if (v112 < 64)
  {
    v113 = ~(-1 << v112);
  }

  v114 = v113 & *(v108 + 8);
  v115 = (v112 + 63) >> 6;
  v116 = result + 8;
  if (v114)
  {
    while (1)
    {
      v117 = __clz(__rbit64(v114));
      v114 &= v114 - 1;
LABEL_10:
      v120 = v117 | (v111 << 6);
      v121 = (*(v108 + 6) + 16 * v120);
      v123 = *v121;
      v122 = v121[1];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      result = sub_1C4F019C8();
      *(v116 + ((v120 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v120;
      v124 = (v110[6] + 16 * v120);
      *v124 = v123;
      v124[1] = v122;
      *(v110[7] + 8 * v120) = result;
      v125 = v110[2];
      v126 = __OFADD__(v125, 1);
      v127 = v125 + 1;
      if (v126)
      {
        break;
      }

      v110[2] = v127;
      if (!v114)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v118 = v111;
    while (1)
    {
      v111 = v118 + 1;
      if (__OFADD__(v118, 1))
      {
        break;
      }

      if (v111 >= v115)
      {

        return v110;
      }

      v119 = *&v108[8 * v111 + 64];
      ++v118;
      if (v119)
      {
        v117 = __clz(__rbit64(v119));
        v114 = (v119 - 1) & v119;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

double sub_1C46F5B58()
{
  v1 = *(v0 + 16);
  if (!v1)
  {
    return NAN;
  }

  v2 = *(v0 + 128);
  if (!v2)
  {
    return NAN;
  }

  v3 = *(v2 + 32);
  if (v3 <= 0.0)
  {
    return NAN;
  }

  else
  {
    return *(v1 + 32) / v3;
  }
}

double sub_1C46F5BA4()
{
  v1 = *(v0 + 96);
  if (v1 && (v2 = *(v0 + 144), v2 >= 1))
  {
    return *(v1 + 32) / v2;
  }

  else
  {
    return NAN;
  }
}

double sub_1C46F5BE0()
{
  v1 = *(v0 + 104);
  if (v1 && (v2 = *(v0 + 144), v2 >= 1))
  {
    return *(v1 + 32) / v2;
  }

  else
  {
    return NAN;
  }
}

uint64_t sub_1C46F5C1C()
{
  sub_1C4F02248();
  v0 = MEMORY[0x1C6940010](0x203A6E696DLL, 0xE500000000000000);
  sub_1C440A9D0(v0, v1, v2, v3, v4, v5, v6, v7, 0);
  v8 = MEMORY[0x1C6940010](0x203A78616D202CLL, 0xE700000000000000);
  sub_1C440A9D0(v8, v9, v10, v11, v12, v13, v14, v15, v33);
  sub_1C440E138();
  sub_1C440A9D0(v16, v17, v18, v19, v20, v21, v22, v23, v34);
  v24 = MEMORY[0x1C6940010](0xD000000000000015, 0x80000001C4F941B0);
  sub_1C440A9D0(v24, v25, v26, v27, v28, v29, v30, v31, v35);
  return v36;
}

uint64_t sub_1C46F5D48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  *(v18 + 40) = 0u;
  *(v18 + 152) = 0;
  *(v18 + 136) = 0u;
  *(v18 + 120) = 0u;
  *(v18 + 104) = 0u;
  *(v18 + 88) = 0u;
  *(v18 + 72) = 0u;
  *(v18 + 56) = 0u;
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  *(v18 + 32) = a3;
  *(v18 + 40) = a4;

  *(v18 + 48) = a5;

  *(v18 + 56) = a6;

  *(v18 + 64) = a7;

  *(v18 + 72) = a8;

  *(v18 + 80) = a9;

  *(v18 + 88) = a10;

  *(v18 + 96) = a11;

  *(v18 + 104) = a12;

  *(v18 + 112) = a13;

  *(v18 + 120) = a14;

  *(v18 + 128) = a15;

  *(v18 + 136) = a16;
  *(v18 + 144) = a18;
  *(v18 + 152) = a17;
  return v18;
}

uint64_t sub_1C46F5EA4()
{
  v1 = 0x3E6C696E3CLL;
  sub_1C4F02248();
  sub_1C440BC44();
  MEMORY[0x1C6940010]();
  if (v0[2])
  {

    sub_1C46F5C1C();
    sub_1C441943C();
  }

  else
  {
    sub_1C44001E4();
  }

  sub_1C4406B40();

  sub_1C440BC44();
  MEMORY[0x1C6940010]();
  if (v0[3])
  {

    sub_1C46F5C1C();
    sub_1C441943C();
  }

  else
  {
    sub_1C44001E4();
  }

  sub_1C4406B40();

  sub_1C440BC44();
  MEMORY[0x1C6940010]();
  if (v0[4])
  {

    sub_1C46F5C1C();
    sub_1C441943C();
  }

  else
  {
    sub_1C44001E4();
  }

  sub_1C4406B40();

  sub_1C440BC44();
  MEMORY[0x1C6940010]();
  if (v0[5])
  {

    sub_1C46F5C1C();
    sub_1C441943C();
  }

  else
  {
    sub_1C44001E4();
  }

  sub_1C4406B40();

  sub_1C440BC44();
  MEMORY[0x1C6940010]();
  if (v0[6])
  {

    sub_1C46F5C1C();
    sub_1C441943C();
  }

  else
  {
    sub_1C44001E4();
  }

  sub_1C4406B40();

  sub_1C440BC44();
  MEMORY[0x1C6940010]();
  if (v0[7])
  {

    sub_1C46F5C1C();
    sub_1C441943C();
  }

  else
  {
    sub_1C44001E4();
  }

  sub_1C4406B40();

  sub_1C440BC44();
  sub_1C440E138();
  if (v0[8])
  {

    sub_1C46F5C1C();
    sub_1C441943C();
  }

  else
  {
    sub_1C44001E4();
  }

  sub_1C4406B40();

  sub_1C440BC44();
  sub_1C440E138();
  if (v0[9])
  {

    sub_1C46F5C1C();
    sub_1C441943C();
  }

  else
  {
    sub_1C44001E4();
  }

  sub_1C4406B40();

  sub_1C440BC44();
  sub_1C440E138();
  if (v0[10])
  {

    sub_1C46F5C1C();
    sub_1C441943C();
  }

  else
  {
    sub_1C44001E4();
  }

  sub_1C4406B40();

  sub_1C440BC44();
  sub_1C440E138();
  if (v0[11])
  {

    sub_1C46F5C1C();
    sub_1C441943C();
  }

  else
  {
    sub_1C44001E4();
  }

  sub_1C4406B40();

  sub_1C440BC44();
  MEMORY[0x1C6940010]();
  if (v0[12])
  {

    sub_1C46F5C1C();
    sub_1C441943C();
  }

  else
  {
    sub_1C44001E4();
  }

  sub_1C4406B40();

  sub_1C440BC44();
  MEMORY[0x1C6940010]();
  if (v0[13])
  {

    sub_1C46F5C1C();
    sub_1C441943C();
  }

  else
  {
    sub_1C44001E4();
  }

  sub_1C4406B40();

  sub_1C440BC44();
  MEMORY[0x1C6940010]();
  if (v0[14])
  {

    sub_1C46F5C1C();
    sub_1C441943C();
  }

  else
  {
    sub_1C44001E4();
  }

  sub_1C4406B40();

  sub_1C440BC44();
  MEMORY[0x1C6940010]();
  if (v0[15])
  {

    sub_1C46F5C1C();
    sub_1C441943C();
  }

  else
  {
    sub_1C44001E4();
  }

  sub_1C4406B40();

  sub_1C440BC44();
  MEMORY[0x1C6940010]();
  if (v0[16])
  {

    v1 = sub_1C46F5C1C();
    v3 = v2;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  MEMORY[0x1C6940010](v1, v3);

  sub_1C440BC44();
  MEMORY[0x1C6940010]();
  v4 = sub_1C4403034();
  MEMORY[0x1C6940010](v4);

  sub_1C440BC44();
  MEMORY[0x1C6940010]();
  v5 = sub_1C4403034();
  MEMORY[0x1C6940010](v5);

  sub_1C440BC44();
  MEMORY[0x1C6940010]();
  v6 = sub_1C4403034();
  MEMORY[0x1C6940010](v6);

  return 0;
}

uint64_t sub_1C46F63CC()
{

  return v0;
}

uint64_t sub_1C46F645C()
{
  sub_1C46F63CC();

  return swift_deallocClassInstance();
}

double *sub_1C46F64FC(double *a1, double a2, double a3)
{
  if (a3 <= 0.0)
  {
  }

  v3 = a2 / a3;
  if (a1)
  {
    if (v3 >= a1[2])
    {
      v4 = a1[2];
    }

    else
    {
      v4 = a2 / a3;
    }

    if (a1[3] > v3)
    {
      v5 = a1[3];
    }

    else
    {
      v5 = a2 / a3;
    }

    v6 = a1[5];
    v7 = a1[4] + a2;
  }

  else
  {
    v4 = fmin(v3, INFINITY);
    v5 = fmax(v3, -INFINITY);
    v6 = 0.0;
    v7 = a2 + 0.0;
  }

  v9 = v6 + a3;
  type metadata accessor for EntityRelevanceEvaluationIntermediateResults.IntermediateResult();
  result = swift_allocObject();
  result[2] = v4;
  result[3] = v5;
  result[4] = v7;
  result[5] = v9;
  return result;
}

double sub_1C46F6594(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 40), v1 > 0.0))
  {
    return *(a1 + 32) / v1;
  }

  else
  {
    return NAN;
  }
}

double sub_1C46F65C8(uint64_t a1)
{
  if (a1 && (v2 = *(v1 + 152), v2 >= 1))
  {
    return *(a1 + 32) / v2;
  }

  else
  {
    return NAN;
  }
}

double sub_1C46F6600(uint64_t a1)
{
  if (a1 && (v2 = *(v1 + 136), v2 >= 1))
  {
    return *(a1 + 32) / v2;
  }

  else
  {
    return NAN;
  }
}

void *sub_1C46F6638(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_1C46F6814(v5, a2, a3);
    v7 = v6;

    return v7;
  }

  return result;
}

void *sub_1C46F66B0(_BYTE *a1)
{
  v2 = a1;
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = a1[32];
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v8 = swift_slowAlloc();
      v2 = sub_1C46F6638(v8, v4, v2);
      MEMORY[0x1C6942830](v8, -1, -1);
      return v2;
    }
  }

  MEMORY[0x1EEE9AC00](a1);
  v5 = v9 - ((8 * v4 + 15) & 0x3FFFFFFFFFFFFFF0);
  sub_1C4501018(0, v4, v5);
  sub_1C46F6814(v5, v4, v2);
  if (!v1)
  {
    return v6;
  }

  swift_willThrow();
  return v2;
}

void sub_1C46F6814(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  while (v8)
  {
    v9 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v10 = v9 | (v5 << 6);
LABEL_11:
    v13 = *(*(a3 + 56) + 8 * v10);
    if ((~v13 & 0x7FF0000000000000) != 0 || (v13 & 0xFFFFFFFFFFFFFLL) == 0)
    {
      *(a1 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
LABEL_16:
        sub_1C45873AC(a1, a2, v4, a3);
        return;
      }
    }
  }

  v11 = v5;
  while (1)
  {
    v5 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v5 >= ((v6 + 63) >> 6))
    {
      goto LABEL_16;
    }

    v12 = *(a3 + 64 + 8 * v5);
    ++v11;
    if (v12)
    {
      v8 = (v12 - 1) & v12;
      v10 = __clz(__rbit64(v12)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_1C46F690C(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C461B060();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1C46F8034(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_1C46F6978(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7265566C65646F6DLL && a2 == 0xEC0000006E6F6973;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000015 && 0x80000001C4F944E0 == a2;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000012 && 0x80000001C4F94500 == a2;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x4D65727574616566 && a2 == 0xEC000000736E6165;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x5365727574616566 && a2 == 0xEB00000000736474)
        {

          return 4;
        }

        else
        {
          v10 = sub_1C4F02938();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_1C46F6B30(char a1)
{
  result = 0x7265566C65646F6DLL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000015;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0x4D65727574616566;
      break;
    case 4:
      result = 0x5365727574616566;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C46F6BF0(void *a1)
{
  v3 = v1;
  v5 = sub_1C456902C(&qword_1EC0BB920, &qword_1C4F21A68);
  sub_1C43FCDF8();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - v9;
  sub_1C4409678(a1, a1[3]);
  sub_1C46F7D38();
  sub_1C4F02BF8();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v17) = 0;
  sub_1C441705C(v11, v12);
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    LOBYTE(v17) = 1;
    sub_1C441705C(v13, v14);
    v17 = v3[4];
    HIBYTE(v16) = 2;
    sub_1C456902C(&qword_1EC0C6370, &qword_1C4F0E1A0);
    sub_1C46F7D8C(&qword_1EDDF06E0, MEMORY[0x1E69E6160], MEMORY[0x1E69E63C0], MEMORY[0x1E69E5E38]);
    sub_1C4406B5C();
    v17 = v3[5];
    HIBYTE(v16) = 3;
    sub_1C4406B5C();
    v17 = v3[6];
    HIBYTE(v16) = 4;
    sub_1C4406B5C();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_1C46F6DC8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1C456902C(&qword_1EC0BB918, &unk_1C4F21A58);
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C4409678(a1, a1[3]);
  sub_1C46F7D38();
  sub_1C4F02BC8();
  if (v2)
  {
    return sub_1C440962C(a1);
  }

  sub_1C43FE664();
  v6 = sub_1C4F02678();
  v15 = v7;
  LOBYTE(v16) = 1;
  sub_1C43FE664();
  v8 = sub_1C4F02678();
  v14 = v9;
  v13 = v8;
  sub_1C456902C(&qword_1EC0C6370, &qword_1C4F0E1A0);
  sub_1C46F7D8C(&qword_1EDDDBD80, MEMORY[0x1E69E6190], MEMORY[0x1E69E63E8], MEMORY[0x1E69E5E58]);
  sub_1C442C894();
  sub_1C4F026C8();
  sub_1C442C894();
  sub_1C43FE664();
  sub_1C4F026C8();
  sub_1C442C894();
  sub_1C43FE664();
  sub_1C4F026C8();
  v10 = sub_1C43FEED0();
  v11(v10);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C440962C(a1);

  *a2 = v6;
  a2[1] = v15;
  a2[2] = v13;
  a2[3] = v14;
  a2[4] = v16;
  a2[5] = v16;
  a2[6] = v16;
  return result;
}

uint64_t sub_1C46F7150@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C46F6978(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C46F7178(uint64_t a1)
{
  v2 = sub_1C46F7D38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C46F71B4(uint64_t a1)
{
  v2 = sub_1C46F7D38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1C46F71F0@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C46F6DC8(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

uint64_t sub_1C46F7258(uint64_t a1, double a2)
{
  v3 = v2;
  v4 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v4;
  *(v2 + 48) = *(a1 + 32);
  *(v2 + 64) = *(a1 + 48);
  *(v2 + 72) = a2;
  v5 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v16 = sub_1C4618904(v5);
  sub_1C46F690C(&v16);

  v6 = v16;
  v7 = *(v16 + 16);
  if (v7)
  {
    v16 = MEMORY[0x1E69E7CC0];
    sub_1C44CD9C0(0, v7, 0);
    v8 = v16;
    v9 = (v6 + 40);
    do
    {
      v11 = *(v9 - 1);
      v10 = *v9;
      v16 = v8;
      v12 = *(v8 + 16);
      v13 = *(v8 + 24);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if (v12 >= v13 >> 1)
      {
        sub_1C44CD9C0(v13 > 1, v12 + 1, 1);
        v8 = v16;
      }

      *(v8 + 16) = v12 + 1;
      v14 = v8 + 16 * v12;
      *(v14 + 32) = v11;
      *(v14 + 40) = v10;
      v9 += 3;
      --v7;
    }

    while (v7);
  }

  else
  {

    v8 = MEMORY[0x1E69E7CC0];
  }

  *(v3 + 80) = v8;
  return v3;
}

uint64_t sub_1C46F741C(uint64_t a1, double a2)
{
  v5 = objc_autoreleasePoolPush();
  sub_1C4EF9348();
  sub_1C43FD23C();
  swift_allocObject();
  v6 = sub_1C4EF9338();
  v7 = sub_1C4EF9938();
  if (v2)
  {

    objc_autoreleasePoolPop(v5);
    sub_1C4EF98F8();
    sub_1C43FD3F8();
    (*(v11 + 8))(a1);
  }

  else
  {
    v9 = v7;
    v10 = v8;
    sub_1C46F7FE0();
    sub_1C4EF9328();
    sub_1C4434000(v9, v10);

    objc_autoreleasePoolPop(v5);
    v18[0] = v14;
    v18[1] = v15;
    v18[2] = v16;
    v19 = v17;
    v6 = swift_allocObject();
    sub_1C46F7258(v18, a2);
    sub_1C4EF98F8();
    sub_1C43FD3F8();
    (*(v13 + 8))(a1);
  }

  return v6;
}

uint64_t sub_1C46F75B4(uint64_t a1, uint64_t a2, double a3)
{
  v4 = v3;
  v5 = *(v3 + 56);
  if (*(v5 + 16) && (v9 = sub_1C445FAA8(a1, a2), (v10 & 1) != 0) && (v11 = *(*(v5 + 56) + 8 * v9), v12 = COERCE_DOUBLE(sub_1C465C024(a1, a2, *(v4 + 64))), (v13 & 1) == 0) && v12 > 0.0)
  {
    *&result = (a3 - v11) / v12;
  }

  else
  {
    *&result = 0.0;
  }

  return result;
}

void sub_1C46F7648(_DWORD *a1, uint64_t a2, uint64_t a3)
{
  v41 = a2;
  v4 = MEMORY[0x1E69E7CC0];
  v49 = MEMORY[0x1E69E7CC0];
  v50 = MEMORY[0x1E69E7CC0];
  v5 = *(v3 + 80);
  v46 = *(v5 + 16);
  if (!v46)
  {
LABEL_62:
    sub_1C4EFFDB8();
    sub_1C43FD23C();
    swift_allocObject();
    sub_1C4EFFD88();
    return;
  }

  v6 = v3;
  v8 = 0;
  v9 = v5 + 40;
  v44 = MEMORY[0x1E69E7CC0];
  v45 = *(v3 + 80);
  while (v8 < *(v5 + 16))
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C44000C4();
    v10 = sub_1C4F01108();
    v11 = [a1 featureValueForName_];

    if (!v11)
    {
      if (qword_1EDDFA668 != -1)
      {
        sub_1C4406758();
        swift_once();
      }

      v24 = sub_1C4F00978();
      sub_1C442B738(v24, qword_1EDE2DDE0);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v25 = sub_1C4F00968();
      v26 = sub_1C4F01CB8();

      if (os_log_type_enabled(v25, v26))
      {
        a1 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        *a1 = 136315138;
        v27 = sub_1C44000C4();
        v30 = sub_1C441D828(v27, v28, v29);

        *(a1 + 1) = v30;
        _os_log_impl(&dword_1C43F8000, v25, v26, "Feature %s not found in feature vector, skipping.", a1, 0xCu);
        sub_1C440962C(v48);
        MEMORY[0x1C6942830](v48, -1, -1);
        sub_1C4403050();
      }

      else
      {
      }

      goto LABEL_40;
    }

    [v11 doubleValue];
    v12 = sub_1C44000C4();
    v15 = sub_1C46F75B4(v12, v13, v14);
    if (v16)
    {
      if (qword_1EDDFA668 != -1)
      {
        sub_1C4406758();
        swift_once();
      }

      v17 = sub_1C4F00978();
      sub_1C442B738(v17, qword_1EDE2DDE0);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v18 = sub_1C4F00968();
      v19 = sub_1C4F01CB8();

      if (os_log_type_enabled(v18, v19))
      {
        a1 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        *a1 = 136315138;
        v20 = sub_1C44000C4();
        v23 = sub_1C441D828(v20, v21, v22);

        *(a1 + 1) = v23;
        _os_log_impl(&dword_1C43F8000, v18, v19, "Invalid z-score for %s, skipping.", a1, 0xCu);
        sub_1C440962C(v47);
        v6 = v42;
        MEMORY[0x1C6942830](v47, -1, -1);
        sub_1C4403050();
      }

      else
      {
      }

LABEL_39:
LABEL_40:
      v5 = v45;
      goto LABEL_41;
    }

    if (!*(*(v6 + 48) + 16) || (v31 = *&v15, v32 = sub_1C44000C4(), sub_1C445FAA8(v32, v33), (v34 & 1) == 0))
    {

      goto LABEL_39;
    }

    if (v4 >> 62)
    {
      sub_1C4F02128();
      sub_1C440A9EC();
      if (v36 == v37 || v31 <= 0.0)
      {
        v35 = sub_1C4F02128();
LABEL_20:
        if (v35 >= a3 || *(v6 + 72) >= v31)
        {
          goto LABEL_25;
        }
      }
    }

    else
    {
      sub_1C440A9EC();
      if (v36 == v37 || v31 <= 0.0)
      {
        goto LABEL_20;
      }
    }

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    [v11 doubleValue];
    sub_1C4EFFDA8();
    sub_1C43FD23C();
    swift_allocObject();
    sub_1C44000C4();
    sub_1C4EFFD98();
    MEMORY[0x1C6940330]();
    if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1C4F016D8();
    }

    sub_1C4F01748();
    v4 = v50;
    v6 = v42;
LABEL_25:
    if (v44 >> 62)
    {
      sub_1C4F02128();
      sub_1C440A9EC();
      if (v36 != v37 && v31 < 0.0)
      {
        goto LABEL_31;
      }

      v38 = sub_1C4F02128();
    }

    else
    {
      sub_1C440A9EC();
      if (v36 != v37 && v31 < 0.0)
      {
        goto LABEL_31;
      }
    }

    if (v38 >= a3 || v31 >= -*(v6 + 72))
    {

      goto LABEL_44;
    }

LABEL_31:
    [v11 doubleValue];
    sub_1C4EFFDA8();
    sub_1C43FD23C();
    swift_allocObject();
    sub_1C44000C4();
    sub_1C4EFFD98();
    MEMORY[0x1C6940330]();
    if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1C4F016D8();
    }

    sub_1C4F01748();
    v44 = v49;
LABEL_44:
    v5 = v45;
    if (v4 >> 62)
    {
      v39 = sub_1C4F02128();
    }

    else
    {
      v39 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v39 >= a3)
    {
      if (v44 >> 62)
      {
        v40 = sub_1C4F02128();
      }

      else
      {
        v40 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v40 >= a3)
      {
        goto LABEL_62;
      }
    }

    else
    {
    }

LABEL_41:
    ++v8;
    v9 += 16;
    if (v46 == v8)
    {
      goto LABEL_62;
    }
  }

  __break(1u);
}