uint64_t sub_18E2799A0()
{
  sub_18E1C6170();
  v3 = v2;
  sub_18E1C64F4();
  v5 = v4;
  sub_18E1C6684();
  *v6 = v5;
  v7 = *v1;
  sub_18E1C52E0();
  *v8 = v7;
  *(v5 + 40) = v0;

  if (!v0)
  {

    *(v5 + 48) = v3;
  }

  sub_18E1E6BA0();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

void sub_18E279AE0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, SEL *a5)
{
  v9[4] = a1;
  v9[5] = a2;
  sub_18E1CACD0();
  v9[1] = 1107296256;
  v9[2] = sub_18E2891B0;
  v9[3] = v7;
  v8 = _Block_copy(v9);

  [a3 *a5];
  _Block_release(v8);
}

uint64_t sub_18E279B80(uint64_t a1)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = v1;
  return sub_18E1C62C4();
}

void sub_18E279B94()
{
  v1 = *(v0[7] + 16);
  v0[8] = v1;
  if (v1)
  {
    sub_18E1CF270();
    v7 = v2;
    sub_18E1CAF5C();
    v3 = v0[6];
    sub_18E1CC494();
    v4 = swift_allocObject();
    v0[9] = v4;
    *(v4 + 16) = v3;
    sub_18E1C8DC0();

    v5 = swift_task_alloc();
    v0[10] = v5;
    *v5 = v0;
    v5[1] = sub_18E279C84;
    sub_18E2218E0();

    v6();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_18E279C84()
{
  sub_18E1C52F0();
  sub_18E1C64F4();
  v3 = v2;
  sub_18E1C6684();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 88) = v5;
  *(v3 + 96) = v0;

  if (!v0)
  {
  }

  sub_18E1CEA7C();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

void sub_18E279D94()
{
  v1 = v0[11];
  type metadata accessor for UseCaseAvailabilityInfo();
  sub_18E2871E8();
  v2 = sub_18E44E9AC();
  v42 = v0;
  v3 = v0[11];
  if ((v1 & 0xC000000000000001) != 0)
  {
    v4 = sub_18E44F11C();
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v1 = v4 | 0x8000000000000000;
  }

  else
  {
    v9 = *(v3 + 64);
    v5 = v3 + 64;
    v8 = v9;
    v10 = -1 << *(v5 - 32);
    v6 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v7 = v12 & v8;
  }

  v13 = 0;
  v14 = (v6 + 64) >> 6;
  v43 = v5;
  v44 = v14;
  if ((v1 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v15 = v13;
  v16 = v7;
  v17 = v13;
  if (v7)
  {
LABEL_12:
    v18 = (v16 - 1) & v16;
    v19 = (v17 << 9) | (8 * __clz(__rbit64(v16)));
    v20 = *(*(v1 + 56) + v19);
    v21 = *(*(v1 + 48) + v19);
    v22 = v20;
    if (!v21)
    {
LABEL_26:
      sub_18E246F7C();
      sub_18E1C6500();

      v41(v2);
      return;
    }

    while (1)
    {
      v45 = v18;
      v26 = v1;
      v27 = v21;
      v28 = v21[OBJC_IVAR____TtC12ModelCatalog24UseCaseIdentifierWrapper_useCaseIdentifier];
      v29 = v22;
      swift_isUniquelyReferenced_nonNull_native();
      v30 = sub_18E26DBE8(v28);
      if (__OFADD__(v2[2], (v31 & 1) == 0))
      {
        break;
      }

      v32 = v30;
      v33 = v31;
      sub_18E2706EC(&qword_1EABE0E78, &qword_18E49D220);
      if (sub_18E44F0EC())
      {
        v34 = sub_18E26DBE8(v28);
        if ((v33 & 1) != (v35 & 1))
        {

          sub_18E44F41C();
          return;
        }

        v32 = v34;
      }

      if (v33)
      {
        v36 = v2[7];
        v37 = *(v36 + 8 * v32);
        *(v36 + 8 * v32) = v29;
      }

      else
      {
        sub_18E1D7F8C(&v2[v32 >> 6]);
        *(v2[6] + v32) = v28;
        *(v2[7] + 8 * v32) = v29;

        v38 = v2[2];
        v39 = __OFADD__(v38, 1);
        v40 = v38 + 1;
        if (v39)
        {
          goto LABEL_34;
        }

        v2[2] = v40;
      }

      v13 = v17;
      v14 = v44;
      v7 = v45;
      v1 = v26;
      v5 = v43;
      if ((v1 & 0x8000000000000000) == 0)
      {
        goto LABEL_8;
      }

LABEL_14:
      v23 = sub_18E44F13C();
      if (v23)
      {
        v25 = v24;
        v42[3] = v23;
        type metadata accessor for UseCaseIdentifierWrapper();
        swift_dynamicCast();
        v21 = v42[2];
        v42[5] = v25;
        swift_dynamicCast();
        v22 = v42[4];
        v17 = v13;
        v18 = v7;
        if (v21)
        {
          continue;
        }
      }

      goto LABEL_26;
    }
  }

  else
  {
    while (1)
    {
      v17 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v17 >= v14)
      {
        goto LABEL_26;
      }

      v16 = *(v5 + 8 * v17);
      ++v15;
      if (v16)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

uint64_t sub_18E27A10C()
{
  sub_18E1C52F0();

  sub_18E1D008C();

  return v0();
}

uint64_t sub_18E27A170(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v9 = qword_1ED6A8B58;

  if (v9 != -1)
  {
    swift_once();
  }

  v10 = sub_18E44E83C();
  sub_18E1C95EC(v10, qword_1ED6A9888);

  v11 = sub_18E44E80C();
  v12 = sub_18E44EE2C();

  if (os_log_type_enabled(v11, v12))
  {
    v39 = v8;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = v14;
    v42 = v14;
    *v13 = 136315138;
    v16 = *(a4 + 16);
    if (v16)
    {
      v36 = v14;
      v37 = v13;
      v38 = a1;
      v40 = MEMORY[0x1E69E7CC0];
      sub_18E26F1E0(0, v16, 0);
      v17 = (a4 + 32);
      do
      {
        v18 = *v17++;
        v19 = sub_18E1C6DAC(v18);
        v21 = v20;
        v23 = *(v40 + 16);
        v22 = *(v40 + 24);
        if (v23 >= v22 >> 1)
        {
          sub_18E26F1E0(v22 > 1, v23 + 1, 1);
        }

        *(v40 + 16) = v23 + 1;
        v24 = v40 + 16 * v23;
        *(v24 + 32) = v19;
        *(v24 + 40) = v21;
        --v16;
      }

      while (v16);
      a1 = v38;
      v15 = v36;
      v13 = v37;
    }

    sub_18E2706EC(&unk_1EABE1160, &qword_18E49DDA0);
    sub_18E1CDB50();
    v25 = sub_18E44EA0C();
    v27 = v26;

    v28 = sub_18E1C9624(v25, v27, &v42);

    *(v13 + 4) = v28;
    _os_log_impl(&dword_18E1C1000, v11, v12, "calling useCaseResourceAvailability() with use case identifiers: %s", v13, 0xCu);
    sub_18E1C9934(v15);
    MEMORY[0x193ACD400](v15, -1, -1);
    MEMORY[0x193ACD400](v13, -1, -1);

    v8 = v39;
  }

  else
  {
  }

  v29 = *(a4 + 16);
  v30 = MEMORY[0x1E69E7CC0];
  if (v29)
  {
    v42 = MEMORY[0x1E69E7CC0];
    sub_18E44F0AC();
    v31 = (a4 + 32);
    v32 = type metadata accessor for UseCaseIdentifierWrapper();
    do
    {
      v33 = *v31++;
      v34 = objc_allocWithZone(v32);
      v34[OBJC_IVAR____TtC12ModelCatalog24UseCaseIdentifierWrapper_useCaseIdentifier] = v33;
      v41.receiver = v34;
      v41.super_class = v32;
      objc_msgSendSuper2(&v41, sel_init);
      sub_18E44F08C();
      sub_18E44F0BC();
      sub_18E44F0CC();
      sub_18E44F09C();
      --v29;
    }

    while (v29);
    v30 = v42;
  }

  sub_18E27A4D4(v30, sub_18E1E0F7C, v8, a1);
}

void sub_18E27A4D4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  type metadata accessor for UseCaseIdentifierWrapper();
  v7 = sub_18E44EC8C();
  v9[4] = a2;
  v9[5] = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_18E27A5BC;
  v9[3] = &unk_1F0140458;
  v8 = _Block_copy(v9);

  [a4 useCaseResourceAvailabilityBy:v7 with:v8];
  _Block_release(v8);
}

uint64_t sub_18E27A5BC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    type metadata accessor for UseCaseIdentifierWrapper();
    type metadata accessor for UseCaseAvailabilityInfo();
    sub_18E288D58(&qword_1EABDF950, type metadata accessor for UseCaseIdentifierWrapper, MEMORY[0x1E69E81B8]);
    v4 = sub_18E44E98C();
  }

  v6 = a3;
  v5(v4, a3);
}

void sub_18E27A704(uint64_t a1, uint64_t a2, void *a3)
{
  v5[4] = a1;
  v5[5] = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1107296256;
  v5[2] = sub_18E2891B0;
  v5[3] = &unk_1F0140318;
  v4 = _Block_copy(v5);

  [a3 siriResourceAvailabilityWith_];
  _Block_release(v4);
}

uint64_t sub_18E27A7BC()
{
  sub_18E1C6170();
  v3 = v2;
  sub_18E1C64F4();
  v5 = v4;
  sub_18E1C6684();
  *v6 = v5;
  v7 = *v1;
  sub_18E1C52E0();
  *v8 = v7;
  *(v5 + 56) = v0;

  if (v0)
  {
    sub_18E1CEA7C();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {

    sub_18E1C6500();

    return v12(v3);
  }
}

uint64_t sub_18E27A8F8()
{
  sub_18E1C52F0();
  v3 = v2;
  *(v1 + 16) = v0;
  v4 = sub_18E44E54C();
  *(v1 + 24) = v4;
  sub_18E1CF260(v4);
  *(v1 + 32) = v5;
  *(v1 + 40) = swift_task_alloc();
  *(v1 + 48) = *v3;
  *(v1 + 64) = *(v3 + 16);
  sub_18E1CEA7C();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

void sub_18E27A9BC()
{
  ResourceBundleQuery.toURI()();
  type metadata accessor for CatalogIndex(0);
  static CatalogIndex.resolveResourceBundleQueryURI(uri:)();
  v3 = *(v0[2] + 16);
  v0[9] = v3;
  if (v3)
  {
    v4 = v1;
    v5 = v2;
    v7 = v0[7];
    v6 = v0[8];
    v8 = v0[6];
    v9 = swift_allocObject();
    v0[10] = v9;
    v9[2] = v8;
    v9[3] = v7;
    v9[4] = v6;
    v9[5] = v4;
    v9[6] = v5;
    sub_18E1FF278(&dword_18E49DCD8);

    v10 = swift_task_alloc();
    v0[11] = v10;
    *v10 = v0;
    v10[1] = sub_18E27AB8C;

    v11(sub_18E288C40, v9);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_18E27AB8C()
{
  sub_18E1CAF5C();
  v3 = v2;
  sub_18E1C64F4();
  v5 = v4;
  sub_18E1C6684();
  *v6 = v5;
  v7 = *v1;
  sub_18E1C52E0();
  *v8 = v7;
  *(v5 + 96) = v0;

  if (!v0)
  {
    *(v5 + 104) = v3;
  }

  sub_18E1E6BA0();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_18E27ACD4()
{
  sub_18E1C52F0();
  (*(v0[4] + 8))(v0[5], v0[3]);

  sub_18E1C6500();
  v2 = v0[13];

  return v1(v2);
}

uint64_t sub_18E27AD50()
{
  sub_18E1C52F0();
  (*(v0[4] + 8))(v0[5], v0[3]);

  sub_18E1D008C();

  return v1();
}

uint64_t sub_18E27ADC4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  v16 = qword_1ED6A8B58;

  if (v16 != -1)
  {
    swift_once();
  }

  v17 = sub_18E44E83C();
  sub_18E1C95EC(v17, qword_1ED6A9888);

  v18 = sub_18E44E80C();
  v19 = sub_18E44EE2C();

  if (os_log_type_enabled(v18, v19))
  {
    v27 = a8;
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v28 = v21;
    *v20 = 136315394;
    *(v20 + 4) = sub_18E1C9624(a4, a5, &v28);
    *(v20 + 12) = 2080;

    sub_18E2706EC(&qword_1EABE0DA8, &unk_18E49CE10);
    v22 = sub_18E44EB0C();
    v24 = sub_18E1C9624(v22, v23, &v28);

    *(v20 + 14) = v24;
    _os_log_impl(&dword_18E1C1000, v18, v19, "calling supportedArguments for resourceBundleQuery %s and %s", v20, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193ACD400](v21, -1, -1);
    v25 = v20;
    a8 = v27;
    MEMORY[0x193ACD400](v25, -1, -1);
  }

  sub_18E27B000(a7, a8, sub_18E1E0F7C, v15, a1);
}

void sub_18E27B000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = sub_18E44EA8C();
  v10[4] = a3;
  v10[5] = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_18E27B0D4;
  v10[3] = &unk_1F0140188;
  v9 = _Block_copy(v10);

  [a5 supportedArgumentsFor:v8 with:v9];
  _Block_release(v9);
}

uint64_t sub_18E27B0D4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_18E2706EC(&unk_1EABE1150, &qword_18E49CE38);
    v4 = sub_18E44EC9C();
  }

  v6 = a3;
  v5(v4, a3);
}

void sub_18E27B174()
{
  sub_18E1C62A0();
  v2 = v1;
  v65 = v3;
  v4 = type metadata accessor for SupportedLanguagesAndRegions.SupportedLanguageAndRegion(0);
  v5 = sub_18E1CF260(v4);
  v67 = v6;
  MEMORY[0x1EEE9AC00](v5);
  sub_18E1C4EDC();
  v9 = v8 - v7;
  v10 = sub_18E2706EC(&qword_1EABE11B0, &qword_18E49EF20);
  v11 = sub_18E1C5B08(v10);
  MEMORY[0x1EEE9AC00](v11);
  sub_18E1C86C0();
  v64 = v12 - v13;
  sub_18E1C6668();
  MEMORY[0x1EEE9AC00](v14);
  v66 = *(v2 + 16);
  if (v66)
  {
    v16 = 0;
    v17 = MEMORY[0x1E69E7CC0];
    v18 = v2 + 32;
    v62 = v9;
    v63 = v0;
    v60 = v2 + 32;
    v61 = &v59 - v15;
    while (1)
    {
      v69 = v17;
      v19 = *(v18 + 8 * v16);
      v68 = v16 + 1;
      v20 = v19 + 64;
      v21 = 1 << *(v19 + 32);
      v22 = v21 < 64 ? ~(-1 << v21) : -1;
      v23 = v22 & *(v19 + 64);
      v24 = (v21 + 63) >> 6;
      swift_bridgeObjectRetain_n();
      v25 = 0;
      v73 = v19;
      v70 = v24;
      if (v23)
      {
        break;
      }

      while (1)
      {
LABEL_7:
        v26 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          __break(1u);
          return;
        }

        if (v26 >= v24)
        {
          break;
        }

        v23 = *(v20 + 8 * v26);
        ++v25;
        if (v23)
        {
          v25 = v26;
          goto LABEL_11;
        }
      }

      sub_18E1D0174();
      v40 = v39;

      if (v40)
      {
        v41 = v64;
        sub_18E1C5BFC();
        sub_18E44E70C();
        v42 = sub_18E44E6FC();
        sub_18E201DC8(v41, 0, 1, v42);
        v43 = v61;
        sub_18E288B30();
      }

      else
      {
        sub_18E44E6FC();
        v43 = v61;
        sub_18E1E1480();
        sub_18E201DC8(v44, v45, v46, v47);
      }

      v16 = v68;
      v17 = v69;
      v18 = v60;
      sub_18E1CF9A0();
      sub_18E288AE0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_18E1C6868();
        sub_18E3EFC60();
        v17 = v50;
      }

      v49 = *(v17 + 16);
      v48 = *(v17 + 24);
      if (v49 >= v48 >> 1)
      {
        sub_18E216828(v48);
        sub_18E3EFC60();
        v17 = v51;
      }

      sub_18E1CC340(v43, &qword_1EABE11B0, &qword_18E49EF20);
      *(v17 + 16) = v49 + 1;
      sub_18E1E2FF4();
      sub_18E288BE8();
      if (v16 == v66)
      {
        goto LABEL_34;
      }
    }

LABEL_11:
    v27 = (*(v19 + 48) + ((v25 << 10) | (16 * __clz(__rbit64(v23)))));
    v29 = *v27;
    v28 = v27[1];
    v30 = qword_1ED6A8340;

    if (v30 != -1)
    {
      sub_18E1C663C();
      swift_once();
    }

    v31 = qword_1ED6A9848;
    if (*(qword_1ED6A9848 + 16))
    {
      v23 &= v23 - 1;
      sub_18E44F48C();
      sub_18E44EB4C();
      v32 = sub_18E44F4CC();
      v33 = ~(-1 << *(v31 + 32));
      while (1)
      {
        v34 = v32 & v33;
        sub_18E1E2EEC();
        if ((v35 & 1) == 0)
        {
          break;
        }

        v36 = (*(v31 + 48) + 16 * v34);
        if (*v36 != v29 || v36[1] != v28)
        {
          v38 = sub_18E44F3CC();
          v32 = v34 + 1;
          if ((v38 & 1) == 0)
          {
            continue;
          }
        }

        v19 = v73;
        v24 = v70;
        if (v23)
        {
          goto LABEL_11;
        }

        goto LABEL_7;
      }
    }

    type metadata accessor for CatalogErrors.QueryError(0);
    sub_18E1E6618();
    sub_18E288D58(v52, v53, &protocol conformance descriptor for CatalogErrors.QueryError);
    sub_18E1D0098();
    swift_allocError();
    v55 = v54;
    sub_18E1D43E0();

    sub_18E2005C4("not a supported argument: ");
    v56 = sub_18E44EDBC();
    MEMORY[0x193ACC300](v56);

    v57 = v71;
    v58 = v72;
    *v55 = v29;
    v55[1] = v28;
    v55[2] = v57;
    v55[3] = v58;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  else
  {
    v17 = MEMORY[0x1E69E7CC0];
LABEL_34:
    *v65 = v17;
  }

  sub_18E1C6650();
}

uint64_t sub_18E27B668()
{
  sub_18E1C52F0();
  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  v4 = *(v3 + 16);
  *(v1 + 16) = *v3;
  *(v1 + 32) = v4;
  v5 = swift_task_alloc();
  *(v1 + 56) = v5;
  *v5 = v1;
  sub_18E1C5950(v5);

  return sub_18E27A8F8();
}

uint64_t sub_18E27B708()
{
  sub_18E1C52F0();
  sub_18E1C64F4();
  *(v2 + 64) = v1;
  *(v2 + 72) = v0;

  sub_18E1CEA7C();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_18E27B810()
{
  sub_18E1C6170();
  sub_18E27B174();

  sub_18E1D008C();

  return v0();
}

uint64_t sub_18E27B8B0(uint64_t a1, char a2)
{
  *(v3 + 72) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  return sub_18E1C62C4();
}

void sub_18E27B8C8()
{
  v1 = *(*(v0 + 24) + 16);
  *(v0 + 32) = v1;
  if (v1)
  {
    sub_18E1CF270();
    v8 = v2;
    sub_18E1CAF5C();
    v3 = *(v0 + 72);
    v4 = *(v0 + 16);
    v5 = swift_allocObject();
    *(v0 + 40) = v5;
    *(v5 + 16) = v4;
    *(v5 + 24) = v3;
    sub_18E1C8DC0();

    v6 = swift_task_alloc();
    *(v0 + 48) = v6;
    *v6 = v0;
    v6[1] = sub_18E27B9C4;
    sub_18E2218E0();

    v7();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_18E27B9C4()
{
  sub_18E1C6170();
  v3 = v2;
  sub_18E1C64F4();
  v5 = v4;
  sub_18E1C6684();
  *v6 = v5;
  v7 = *v1;
  sub_18E1C52E0();
  *v8 = v7;
  *(v5 + 56) = v0;

  if (!v0)
  {

    *(v5 + 64) = v3;
  }

  sub_18E1E6BA0();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_18E27BADC()
{
  sub_18E1CF270();
  v7 = v1;
  sub_18E1CAF5C();
  v2 = *(v0 + 64);

  v4 = sub_18E275578(v3);

  sub_18E1C6500();

  return v5(v4);
}

uint64_t sub_18E27BB70()
{
  sub_18E1C52F0();

  sub_18E1D008C();

  return v0();
}

uint64_t sub_18E27BBD4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  v11 = qword_1ED6A8B58;

  if (v11 != -1)
  {
    swift_once();
  }

  v12 = sub_18E44E83C();
  sub_18E1C95EC(v12, qword_1ED6A9888);
  v13 = sub_18E44E80C();
  v14 = sub_18E44EE2C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_18E1C1000, v13, v14, "calling availableUseCases", v15, 2u);
    MEMORY[0x193ACD400](v15, -1, -1);
  }

  sub_18E27BD30(a4, a5 & 1, sub_18E1E0F7C, v10, a1);
}

void sub_18E27BD30(uint64_t a1, char a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = sub_18E44EC8C();
  v11[4] = a3;
  v11[5] = a4;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_18E2891B0;
  v11[3] = &unk_1F0140020;
  v10 = _Block_copy(v11);

  [a5 availableUseCasesWithUseCaseIdentifiers:v9 includeAssetsInformation:a2 & 1 with:v10];
  _Block_release(v10);
}

void sub_18E27BE14()
{
  sub_18E1C62A0();
  v3 = v2;
  v70 = v4;
  type metadata accessor for AvailableUseCases.AvailableUseCase(0);
  sub_18E1C4EAC();
  v72 = v6;
  v73 = v5;
  MEMORY[0x1EEE9AC00](v5);
  sub_18E1C4EDC();
  sub_18E1E2C60();
  v7 = sub_18E2706EC(&qword_1EABE11B0, &qword_18E49EF20);
  v8 = sub_18E1C5B08(v7);
  MEMORY[0x1EEE9AC00](v8);
  sub_18E1C86C0();
  v69 = v9 - v10;
  sub_18E1C6668();
  MEMORY[0x1EEE9AC00](v11);
  v71 = *(v3 + 16);
  if (v71)
  {
    v13 = 0;
    v14 = v3 + 32;
    v15 = MEMORY[0x1E69E7CC0];
    v68 = v0;
    v67 = v1;
    v66 = &v64 - v12;
    v65 = v3 + 32;
    while (1)
    {
      v79 = v15;
      v16 = (v14 + 40 * v13);
      v17 = *v16;
      v19 = *(v16 + 1);
      v18 = *(v16 + 2);
      v20 = *(v16 + 3);
      v74 = v16[32];
      v75 = v17;
      v76 = v13 + 1;
      v21 = v19 + 64;
      v22 = 1 << *(v19 + 32);
      v23 = v22 < 64 ? ~(-1 << v22) : -1;
      v24 = v23 & *(v19 + 64);
      v25 = (v22 + 63) >> 6;
      swift_bridgeObjectRetain_n();
      v78 = v18;

      v77 = v20;

      v26 = 0;
      v80 = v25;
      v83 = v19;
      if (v24)
      {
        break;
      }

      while (1)
      {
LABEL_7:
        v27 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          __break(1u);
          return;
        }

        if (v27 >= v25)
        {
          break;
        }

        v24 = *(v21 + 8 * v27);
        ++v26;
        if (v24)
        {
          v26 = v27;
          goto LABEL_11;
        }
      }

      sub_18E1D0174();
      v41 = v40;

      if (v41)
      {
        v42 = v69;
        sub_18E44E70C();
        v43 = sub_18E44E6FC();
        sub_18E201DC8(v42, 0, 1, v43);
        v44 = v66;
        sub_18E288B30();
      }

      else
      {
        sub_18E44E6FC();
        v44 = v66;
        sub_18E1E1480();
        sub_18E201DC8(v46, v47, v48, v49);
      }

      v45 = v67;
      v50 = v73;
      sub_18E288AE0();
      *v45 = v75;
      v51 = v77;
      *&v45[v50[6]] = v78;
      *&v45[v50[7]] = v51;
      v45[v50[8]] = v74;
      v52 = v79;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_18E1C6868();
        sub_18E3EFD28();
        v52 = v55;
      }

      v54 = *(v52 + 16);
      v53 = *(v52 + 24);
      v15 = v52;
      if (v54 >= v53 >> 1)
      {
        sub_18E216828(v53);
        sub_18E3EFD28();
        v15 = v56;
      }

      sub_18E1CC340(v44, &qword_1EABE11B0, &qword_18E49EF20);
      *(v15 + 16) = v54 + 1;
      sub_18E1E2FF4();
      sub_18E288BE8();
      v13 = v76;
      v14 = v65;
      if (v76 == v71)
      {
        goto LABEL_34;
      }
    }

LABEL_11:
    v28 = (*(v19 + 48) + ((v26 << 10) | (16 * __clz(__rbit64(v24)))));
    v30 = *v28;
    v29 = v28[1];
    v31 = qword_1ED6A8340;

    if (v31 != -1)
    {
      sub_18E1C663C();
      swift_once();
    }

    v32 = qword_1ED6A9848;
    if (*(qword_1ED6A9848 + 16))
    {
      v24 &= v24 - 1;
      sub_18E44F48C();
      sub_18E44EB4C();
      v33 = sub_18E44F4CC();
      v34 = ~(-1 << *(v32 + 32));
      while (1)
      {
        v35 = v33 & v34;
        sub_18E1E2EEC();
        if ((v36 & 1) == 0)
        {
          break;
        }

        v37 = (*(v32 + 48) + 16 * v35);
        if (*v37 != v30 || v37[1] != v29)
        {
          v39 = sub_18E44F3CC();
          v33 = v35 + 1;
          if ((v39 & 1) == 0)
          {
            continue;
          }
        }

        v19 = v83;
        v25 = v80;
        if (v24)
        {
          goto LABEL_11;
        }

        goto LABEL_7;
      }
    }

    type metadata accessor for CatalogErrors.QueryError(0);
    sub_18E1E6618();
    sub_18E288D58(v57, v58, &protocol conformance descriptor for CatalogErrors.QueryError);
    sub_18E1D0098();
    swift_allocError();
    v60 = v59;
    sub_18E1D43E0();

    sub_18E2005C4("not a supported argument: ");
    v61 = sub_18E44EDBC();
    MEMORY[0x193ACC300](v61);

    v62 = v81;
    v63 = v82;
    *v60 = v30;
    v60[1] = v29;
    v60[2] = v62;
    v60[3] = v63;
    sub_18E1E11B4();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
LABEL_34:
    *v70 = v15;
  }

  sub_18E1C6650();
}

uint64_t sub_18E27C3A8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_18E1C62C4();
}

uint64_t sub_18E27C3BC()
{
  sub_18E1C52F0();
  if (qword_1EABE0990 != -1)
  {
    swift_once();
  }

  v1 = qword_1EABE0858;
  swift_task_alloc();
  sub_18E2016A8();
  *(v0 + 32) = v2;
  *v2 = v3;
  v2[1] = sub_18E27C488;
  v4 = *(v0 + 16);

  return sub_18E27C568(v4, v1, 0);
}

uint64_t sub_18E27C488()
{
  sub_18E1C52F0();
  sub_18E1C64F4();
  v1 = *v0;
  sub_18E1C52E0();
  *v2 = v1;

  sub_18E1D008C();

  return v3();
}

uint64_t sub_18E27C568(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 72) = a3;
  *(v4 + 16) = a1;
  return sub_18E1C62C4();
}

uint64_t sub_18E27C584()
{
  v1 = *(v0 + 24);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v15 = MEMORY[0x1E69E7CC0];
    sub_18E26F1E0(0, v2, 0);
    v3 = v15;
    v4 = (v1 + 32);
    do
    {
      v5 = *v4++;
      v6 = sub_18E1C6DAC(v5);
      v8 = v7;
      v10 = *(v15 + 16);
      v9 = *(v15 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_18E26F1E0(v9 > 1, v10 + 1, 1);
      }

      *(v15 + 16) = v10 + 1;
      v11 = v15 + 16 * v10;
      *(v11 + 32) = v6;
      *(v11 + 40) = v8;
      --v2;
    }

    while (v2);
  }

  *(v0 + 40) = v3;
  v12 = swift_task_alloc();
  *(v0 + 48) = v12;
  *v12 = v0;
  v12[1] = sub_18E27C6D0;
  v13 = *(v0 + 72);

  return sub_18E27B8B0(v3, v13);
}

uint64_t sub_18E27C6D0()
{
  sub_18E1CAF5C();
  v3 = v2;
  sub_18E1C64F4();
  v5 = v4;
  sub_18E1C6684();
  *v6 = v5;
  v7 = *v1;
  sub_18E1C52E0();
  *v8 = v7;
  *(v5 + 56) = v0;

  if (v0)
  {
    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    *(v5 + 64) = v3;
    sub_18E1CEA7C();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }
}

uint64_t sub_18E27C82C()
{
  sub_18E1C6170();
  sub_18E27BE14();

  sub_18E1D008C();

  return v0();
}

uint64_t sub_18E27C8AC(uint64_t a1, void *a2)
{
  v3[2] = a1;
  v3[3] = v2;
  v3[4] = *a2;
  return sub_18E1C62C4();
}

void sub_18E27C978(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_18E1CD8AC();
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v8 = qword_1ED6A8B58;

  if (v8 != -1)
  {
    sub_18E1C593C();
    swift_once();
  }

  v9 = sub_18E44E83C();
  sub_18E1CE8B4(v9, qword_1ED6A9888);
  v10 = sub_18E44E80C();
  sub_18E44EE2C();
  v11 = sub_18E223CA0();
  if (os_log_type_enabled(v11, v12))
  {
    sub_18E1CAE28();
    *swift_slowAlloc() = 0;
    sub_18E224DE8();
    _os_log_impl(v13, v14, v15, v16, v17, v18);
    sub_18E1C6164();
    MEMORY[0x193ACD400]();
  }

  sub_18E1D121C(0, &qword_1EABE05F0, 0x1E696AD98);
  v19 = sub_18E44EEDC();
  sub_18E27CACC(v19, sub_18E288AA8, v7, a1);
}

void sub_18E27CACC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7[4] = a2;
  v7[5] = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_18E2891B0;
  v7[3] = &unk_1F013FEB8;
  v6 = _Block_copy(v7);

  [a4 debugInformationWithOptions:a1 with:v6];
  _Block_release(v6);
}

void sub_18E27CB94(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);

  v9 = a2;
  v7 = a3;
  v8 = sub_18E1E1F80();
  v6(v8, a3);
}

uint64_t sub_18E27CC1C()
{
  sub_18E2706EC(&qword_1EABE1028, &unk_18E4E2B80);
  sub_18E1C4EAC();
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v1);
  sub_18E1E2C60();
  (*(v2 + 104))(v0, *MEMORY[0x1E69E8650]);
  return sub_18E44ED8C();
}

uint64_t sub_18E27CD0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_18E2706EC(&qword_1EABE1070, &qword_18E4E2CD0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - v6;
  v8 = sub_18E2706EC(&qword_1EABE1060, &qword_18E4E3890);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v15 - v9;
  v11 = sub_18E44ED4C();
  sub_18E201DC8(v10, 1, 1, v11);
  (*(v5 + 16))(v7, a1, v4);
  v12 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = 0;
  *(v13 + 3) = 0;
  *(v13 + 4) = a2;
  (*(v5 + 32))(&v13[v12], v7, v4);

  sub_18E3FE1D0();
}

uint64_t sub_18E27CED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[19] = a4;
  v5[20] = a5;
  v6 = sub_18E2706EC(&qword_1EABE1078, &qword_18E49DCB8);
  v5[21] = v6;
  v5[22] = *(v6 - 8);
  v5[23] = swift_task_alloc();
  v7 = sub_18E2706EC(&qword_1EABE1070, &qword_18E4E2CD0);
  v5[24] = v7;
  v8 = *(v7 - 8);
  v5[25] = v8;
  v5[26] = *(v8 + 64);
  v5[27] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18E27D010, 0, 0);
}

uint64_t sub_18E27D010()
{
  v33 = v0;
  v1 = 0;
  *(v0 + 136) = MEMORY[0x1E69E7CD0];
  v2 = *(v0 + 152);
  do
  {
    v3 = byte_1F01393D0[v1 + 32];
    sub_18E1C6DAC(v3);
    v4 = *(v2 + 64);
    if (*(v4 + 16) && (, v5 = sub_18E1CBD4C(), v7 = v6, , (v7 & 1) != 0) && (v8 = *(*(v4 + 56) + 8 * v5), , , (v9 = *(v8 + 16)) != 0))
    {
      v10 = (v8 + 40);
      do
      {
        v11 = *(v10 - 1);
        v12 = *v10;
        v31 = sub_18E1C6DAC(v3);
        v32 = v13;

        MEMORY[0x193ACC300](95, 0xE100000000000000);

        MEMORY[0x193ACC300](v11, v12);

        sub_18E207D3C(&v31, v31, v32);

        v10 += 2;
        --v9;
      }

      while (v9);

      v2 = v29;
    }

    else
    {
    }

    ++v1;
  }

  while (v1 != 3);
  v14 = v28[27];
  v15 = v28[24];
  v16 = v28[25];
  v17 = v28[19];
  v18 = v28[20];
  sub_18E2706EC(&qword_1EABE1080, &qword_18E49DCC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18E49DA90;
  strcpy((inited + 32), "model-catalog");
  *(inited + 46) = -4864;
  *(inited + 48) = sub_18E292FCC(v28[17]);
  *(inited + 56) = 0xD000000000000021;
  *(inited + 64) = 0x800000018E463C10;
  *(inited + 72) = &unk_1F01393F8;
  sub_18E2706EC(&unk_1EABE1160, &qword_18E49DDA0);
  v20 = sub_18E44E9AC();
  v28[28] = v20;
  sub_18E1E4398(v17 + 24, (v28 + 12));
  v21 = v28[15];
  v22 = v28[16];
  sub_18E1E15F4(v28 + 12, v21);
  (*(v16 + 16))(v14, v18, v15);
  v23 = (*(v16 + 80) + 16) & ~*(v16 + 80);
  v24 = swift_allocObject();
  v28[29] = v24;
  (*(v16 + 32))(v24 + v23, v14, v15);
  sub_18E1CD500(v22);
  v30 = (v25 + *v25);
  v26 = swift_task_alloc();
  v28[30] = v26;
  *v26 = v28;
  v26[1] = sub_18E27D3FC;

  return v30(v20, sub_18E288A08, v24, v21, v22);
}

uint64_t sub_18E27D3FC()
{
  sub_18E1C52F0();
  sub_18E1C64F4();
  v1 = *v0;
  sub_18E1C52E0();
  *v2 = v1;

  sub_18E1CEA7C();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_18E27D51C()
{
  sub_18E1CAF5C();
  v1 = v0[23];
  v2 = v0[21];
  v3 = v0[22];
  sub_18E1C9934(v0 + 12);
  v0[18] = 0x3FF0000000000000;
  sub_18E44ED6C();
  (*(v3 + 8))(v1, v2);
  sub_18E44ED7C();

  sub_18E1D008C();

  return v4();
}

uint64_t sub_18E27D5DC(uint64_t a1)
{
  v2 = sub_18E2706EC(&qword_1EABE1078, &qword_18E49DCB8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - v4;
  v6 = *(a1 + 8);
  if (v6)
  {
    v9 = v6 / *(a1 + 16);
  }

  else
  {
    v9 = 0.0;
  }

  sub_18E2706EC(&qword_1EABE1070, &qword_18E4E2CD0);
  sub_18E44ED6C();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_18E27D6F8(uint64_t *a1)
{
  sub_18E2706EC(&qword_1EABE1030, &qword_18E49DB18);
  sub_18E1C4EAC();
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v3);
  v8 = *a1;
  v9 = v1;
  (*(v5 + 104))(&v7[-v4], *MEMORY[0x1E69E8650]);
  return sub_18E44ED8C();
}

uint64_t sub_18E27D7F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_18E2706EC(&qword_1EABE1058, &qword_18E49DC88);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - v8;
  v10 = sub_18E2706EC(&qword_1EABE1060, &qword_18E4E3890);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v17 - v11;
  v13 = sub_18E44ED4C();
  sub_18E201DC8(v12, 1, 1, v13);
  (*(v7 + 16))(v9, a1, v6);
  v14 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = 0;
  *(v15 + 3) = 0;
  *(v15 + 4) = a2;
  *(v15 + 5) = a3;
  (*(v7 + 32))(&v15[v14], v9, v6);

  sub_18E3FE1D0();
}

uint64_t sub_18E27D9D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a5;
  v6[9] = a6;
  v6[7] = a4;
  v7 = sub_18E2706EC(&qword_1EABE1058, &qword_18E49DC88);
  v6[10] = v7;
  v8 = *(v7 - 8);
  v6[11] = v8;
  v6[12] = *(v8 + 64);
  v6[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18E27DAA8, 0, 0);
}

void sub_18E27DAA8()
{
  v61 = v0;
  v1 = *(v0 + 56);
  v2 = *(v1 + 16);
  if (v2)
  {
    v58 = MEMORY[0x1E69E7CC0];
    sub_18E26F2F8(0, v2, 0);
    v3 = (v1 + 40);
    do
    {
      v4 = *v3;
      if (*v3)
      {
        v60 = *(v3 - 1);

        static AssetManagerShared.usageAliasSubscription(useCaseIdentifier:arguments:)(&v60, v4, v59);
        v5 = v59[2];
        v6 = v59[3];

        MEMORY[0x193ACC300](95, 0xE100000000000000);

        MEMORY[0x193ACC300](v5, v6);

        v8 = v59[0];
        v7 = v59[1];
        v9 = 0x61632D6C65646F6DLL;
        v10 = 0xED0000676F6C6174;
      }

      else
      {

        v7 = 0xE800000000000000;
        v9 = 0xD000000000000021;
        v10 = 0x800000018E463C10;
        v8 = 0x65676175676E616CLL;
      }

      v12 = *(v58 + 16);
      v11 = *(v58 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_18E26F2F8((v11 > 1), v12 + 1, 1);
      }

      *(v58 + 16) = v12 + 1;
      v13 = (v58 + 32 * v12);
      v13[4] = v9;
      v13[5] = v10;
      v13[6] = v8;
      v13[7] = v7;
      v3 += 2;
      --v2;
    }

    while (v2);
    v14 = v58;
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  sub_18E2706EC(&unk_1EABE1160, &qword_18E49DDA0);
  v15 = sub_18E44E9AC();
  v16 = 0;
  v53 = *(v14 + 16);
  v54 = v14;
  for (i = (v14 + 56); ; i += 4)
  {
    v56[14] = v15;
    if (v53 == v16)
    {
      break;
    }

    if (v16 >= *(v54 + 16))
    {
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
      return;
    }

    v57 = v16;
    v19 = *(i - 3);
    v18 = *(i - 2);
    v20 = *(i - 1);
    v21 = *i;
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_isUniquelyReferenced_nonNull_native();
    v59[0] = v15;
    v22 = sub_18E1CBD4C();
    if (__OFADD__(v15[2], (v23 & 1) == 0))
    {
      goto LABEL_34;
    }

    v24 = v22;
    v25 = v23;
    sub_18E2706EC(&qword_1EABE0E18, &unk_18E49D1C0);
    v26 = sub_18E44F0EC();
    v15 = v59[0];
    if (v26)
    {
      v27 = sub_18E1CBD4C();
      if ((v25 & 1) != (v28 & 1))
      {

        sub_18E44F41C();
        return;
      }

      v24 = v27;
    }

    if (v25)
    {
    }

    else
    {
      sub_18E1D7F8C(&v15[v24 >> 6]);
      v29 = (v15[6] + 16 * v24);
      *v29 = v19;
      v29[1] = v18;
      *(v15[7] + 8 * v24) = MEMORY[0x1E69E7CC0];
      v30 = v15[2];
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (v31)
      {
        goto LABEL_35;
      }

      v15[2] = v32;
    }

    v33 = v15[7];
    v34 = *(v33 + 8 * v24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v33 + 8 * v24) = v34;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_18E1C6868();
      sub_18E264698();
      v34 = v39;
      *(v33 + 8 * v24) = v39;
    }

    v36 = *(v34 + 16);
    if (v36 >= *(v34 + 24) >> 1)
    {
      sub_18E264698();
      *(v33 + 8 * v24) = v40;
    }

    v37 = *(v33 + 8 * v24);
    *(v37 + 16) = v36 + 1;
    v38 = v37 + 16 * v36;
    *(v38 + 32) = v20;
    *(v38 + 40) = v21;
    v16 = v57 + 1;
  }

  v41 = v56[13];
  v42 = v56[10];
  v43 = v56[11];
  v44 = v56[8];
  v45 = v56[9];

  sub_18E1E4398(v44 + 24, (v56 + 2));
  v46 = v56[6];
  sub_18E1E15F4(v56 + 2, v56[5]);
  sub_18E2244D0();
  v47(v41, v45, v42);
  v48 = (*(v43 + 80) + 16) & ~*(v43 + 80);
  v49 = swift_allocObject();
  v56[15] = v49;
  (*(v43 + 32))(v49 + v48, v41, v42);
  sub_18E1CD500(v46);
  v55 = (v50 + *v50);
  v51 = swift_task_alloc();
  v56[16] = v51;
  *v51 = v56;
  v51[1] = sub_18E27E03C;
  v52 = sub_18E1E1F80();

  v55(v52);
}

uint64_t sub_18E27E03C()
{
  sub_18E1C52F0();
  sub_18E1C64F4();
  v1 = *v0;
  sub_18E1C52E0();
  *v2 = v1;

  sub_18E1CEA7C();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_18E27E15C()
{
  sub_18E1C6170();
  sub_18E1C9934((v0 + 16));
  sub_18E44ED7C();

  sub_18E1D008C();

  return v1();
}

uint64_t sub_18E27E1D4(uint64_t *a1)
{
  v2 = sub_18E2706EC(&qword_1EABE1068, &qword_18E49DCA0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - v4;
  v6 = 0x807030502010004uLL >> (8 * *(a1 + 24));
  v8 = *a1;
  v9 = *(a1 + 1);
  v10 = v6;
  sub_18E2706EC(&qword_1EABE1058, &qword_18E49DC88);
  sub_18E44ED6C();
  return (*(v3 + 8))(v5, v2);
}

void sub_18E27E2FC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = sub_18E44EC9C();

  v6 = a3;
  v4(v5, a3);
}

uint64_t sub_18E27E38C(_BYTE *a1, int a2)
{
  *(v3 + 16) = v2;
  *(v3 + 56) = a2;
  *(v3 + 60) = *a1;
  return sub_18E1C62C4();
}

void sub_18E27E3AC()
{
  v1 = *(*(v0 + 16) + 16);
  *(v0 + 24) = v1;
  if (v1)
  {
    sub_18E1CF270();
    v8 = v2;
    sub_18E1CAF5C();
    v3 = *(v0 + 60);
    v4 = *(v0 + 56);
    sub_18E1CC494();
    v5 = swift_allocObject();
    *(v0 + 32) = v5;
    *(v5 + 16) = v3;
    *(v5 + 20) = v4;
    sub_18E1C8DC0();
    v6 = swift_task_alloc();
    *(v0 + 40) = v6;
    *v6 = v0;
    v6[1] = sub_18E27E4A0;

    v7(sub_18E28724C, v5);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_18E27E4A0()
{
  sub_18E1C6170();
  sub_18E1C64F4();
  v3 = v2;
  sub_18E1C6684();
  *v4 = v3;
  v5 = *v1;
  sub_18E1C52E0();
  *v6 = v5;
  *(v3 + 48) = v0;

  if (v0)
  {
    sub_18E1CEA7C();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    sub_18E1D008C();

    return v10();
  }
}

uint64_t sub_18E27E5E4()
{
  sub_18E1C52F0();

  sub_18E1D008C();

  return v0();
}

void sub_18E27E648(void *a1, uint64_t a2, uint64_t a3, char a4, int a5)
{
  v10 = type metadata accessor for SafetyFailure(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  v14 = qword_1ED6A8B58;

  if (v14 != -1)
  {
    swift_once();
  }

  v15 = sub_18E44E83C();
  sub_18E1C95EC(v15, qword_1ED6A9888);
  v16 = sub_18E44E80C();
  v17 = sub_18E44EE2C();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_18E1C1000, v16, v17, "calling donateSafetyFailure", v18, 2u);
    MEMORY[0x193ACD400](v18, -1, -1);
  }

  sub_18E44E69C();
  *v12 = a4;
  *(v12 + 1) = a5;
  v19 = type metadata accessor for SafetyFailureWrapper(0);
  v20 = objc_allocWithZone(v19);
  sub_18E287284();
  v22.receiver = v20;
  v22.super_class = v19;
  v21 = objc_msgSendSuper2(&v22, sel_init);
  sub_18E2886E4(v12, type metadata accessor for SafetyFailure);
  sub_18E25AC64(v21, sub_18E25D6A4, v13, a1, &unk_1F013FD50, &selRef_donateSafetyFailureWithSafetyFailure_with_);
}

uint64_t sub_18E27E88C()
{
  sub_18E1C52F0();
  v1[2] = v2;
  v1[3] = v0;
  v3 = type metadata accessor for SafetyFailure(0);
  sub_18E1CF260(v3);
  v1[4] = v4;
  v1[5] = *(v5 + 64);
  v1[6] = swift_task_alloc();
  sub_18E1CEA7C();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

void sub_18E27E940()
{
  v1 = *(v0[3] + 16);
  v0[7] = v1;
  if (v1)
  {
    sub_18E1CF270();
    v5 = v2;
    sub_18E1CAF5C();
    sub_18E287284();
    v0[8] = swift_allocObject();
    sub_18E288BE8();
    sub_18E1C8DC0();
    v3 = swift_task_alloc();
    v0[9] = v3;
    *v3 = v0;
    v3[1] = sub_18E27EA78;
    sub_18E2218E0();

    v4();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_18E27EA78()
{
  sub_18E1C6170();
  sub_18E1C64F4();
  v3 = v2;
  sub_18E1C6684();
  *v4 = v3;
  v5 = *v1;
  sub_18E1C52E0();
  *v6 = v5;
  *(v3 + 80) = v0;

  if (v0)
  {
    sub_18E1CEA7C();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    sub_18E1D008C();

    return v10();
  }
}

uint64_t sub_18E27EBC8()
{
  sub_18E1C52F0();

  sub_18E1D008C();

  return v0();
}

void sub_18E27EC38(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for SafetyFailure(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  v11 = qword_1ED6A8B58;

  if (v11 != -1)
  {
    swift_once();
  }

  v12 = sub_18E44E83C();
  sub_18E1C95EC(v12, qword_1ED6A9888);
  v13 = sub_18E44E80C();
  v14 = sub_18E44EE2C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_18E1C1000, v13, v14, "calling donateSafetyFailure", v15, 2u);
    MEMORY[0x193ACD400](v15, -1, -1);
  }

  sub_18E287284();
  v16 = type metadata accessor for SafetyFailureWrapper(0);
  v17 = objc_allocWithZone(v16);
  sub_18E287284();
  v19.receiver = v17;
  v19.super_class = v16;
  v18 = objc_msgSendSuper2(&v19, sel_init);
  sub_18E2886E4(v9, type metadata accessor for SafetyFailure);
  sub_18E25AC64(v18, sub_18E25D6A4, v10, a1, &unk_1F013FC10, &selRef_donateSafetyFailureWithSafetyFailure_with_);
}

uint64_t sub_18E27EE68()
{
  sub_18E1C52F0();
  sub_18E1CA578();

  sub_18E1D008C();

  return v0();
}

uint64_t sub_18E27EED0()
{
  sub_18E1C52F0();
  sub_18E1CA578();

  sub_18E1D008C();

  return v0();
}

uint64_t sub_18E27EF38(int a1)
{
  *(v2 + 32) = v1;
  *(v2 + 72) = a1;
  return sub_18E1C62C4();
}

void sub_18E27EF50()
{
  v1 = *(*(v0 + 32) + 16);
  *(v0 + 40) = v1;
  if (v1)
  {
    sub_18E1C6170();
    v2 = *(v0 + 72);
    v3 = swift_allocObject();
    *(v0 + 48) = v3;
    *(v3 + 16) = v2;
    sub_18E1FF278(&dword_18E49DB48);

    swift_task_alloc();
    sub_18E2016A8();
    *(v0 + 56) = v4;
    *v4 = v5;
    v4[1] = sub_18E27F04C;

    v6(v0 + 16, sub_18E287378, v3);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_18E27F04C()
{
  sub_18E1C52F0();
  sub_18E1C64F4();
  v3 = v2;
  sub_18E1C6684();
  *v4 = v3;
  v5 = *v1;
  sub_18E1C52E0();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (!v0)
  {
  }

  sub_18E1CEA7C();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18E27F170()
{
  sub_18E1C52F0();

  sub_18E1D008C();

  return v0();
}

uint64_t sub_18E27F1D4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v9 = qword_1ED6A8B58;

  if (v9 != -1)
  {
    swift_once();
  }

  v10 = sub_18E44E83C();
  sub_18E1C95EC(v10, qword_1ED6A9888);
  v11 = sub_18E44E80C();
  v12 = sub_18E44EE2C();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_18E1C1000, v11, v12, "calling safetyFailures", v13, 2u);
    MEMORY[0x193ACD400](v13, -1, -1);
  }

  sub_18E27F320(a4, sub_18E25D6D0, v8, a1);
}

void sub_18E27F320(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7[4] = a2;
  v7[5] = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_18E27F3E8;
  v7[3] = &unk_1F013FB70;
  v6 = _Block_copy(v7);

  [a4 safetyFailuresWithUserIdentifier:a1 with:v6];
  _Block_release(v6);
}

uint64_t sub_18E27F3E8(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {

    v6 = v4;
    v4 = sub_18E44E61C();
    v8 = v7;
  }

  else
  {

    v8 = 0xF000000000000000;
  }

  v9 = a3;
  v5(v4, v8, a3);

  sub_18E2886D0(v4, v8);
}

uint64_t sub_18E27F5F4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_18E27F684;

  return sub_18E278790();
}

uint64_t sub_18E27F684()
{
  sub_18E1C52F0();
  v3 = v2;
  sub_18E1C64F4();
  v4 = *v1;
  sub_18E1C52E0();
  *v5 = v4;

  sub_18E1C6500();
  if (v0)
  {
    v7 = 0;
  }

  else
  {
    v7 = v3 & 1;
  }

  return v6(v7);
}

uint64_t sub_18E27F7A0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_18E2891D0;

  return sub_18E2798C4();
}

uint64_t sub_18E27F830(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_18E2891D4;

  return sub_18E279B80(a1);
}

uint64_t sub_18E27F8EC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_18E27F984;

  return sub_18E25E7A8(a1);
}

uint64_t sub_18E27F984()
{
  sub_18E1C52F0();
  v3 = v2;
  sub_18E1C64F4();
  v4 = *v1;
  sub_18E1C52E0();
  *v5 = v4;

  sub_18E1C6500();
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_18E27FA70()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_18E25E61C;

  return sub_18E27B668();
}

uint64_t sub_18E27FB1C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_18E25E674;

  return sub_18E27C3A8(a1);
}

uint64_t sub_18E27FC00()
{
  v1 = sub_18E253814();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_18E27FC7C(_BYTE *a1, int a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_18E25E61C;

  return sub_18E27E38C(a1, a2);
}

uint64_t sub_18E27FD24()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_18E25E61C;

  return sub_18E27E88C();
}

uint64_t sub_18E27FDBC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_18E25E61C;

  return sub_18E259E40();
}

uint64_t sub_18E27FE54()
{
  v1 = sub_18E44E83C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED6A9020 != -1)
  {
    swift_once();
  }

  v5 = sub_18E1C95EC(v1, qword_1ED6A9028);
  swift_beginAccess();
  (*(v2 + 16))(v4, v5, v1);
  v6 = sub_18E44E80C();
  v7 = sub_18E44EE0C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v15[1] = v0;
    v9 = v8;
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136315138;
    swift_beginAccess();
    v11 = qword_1EABE9328;
    v12 = off_1EABE9330;

    v13 = sub_18E1C9624(v11, v12, &v16);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_18E1C1000, v6, v7, "%s: Connection to XPC Server interrupted.", v9, 0xCu);
    sub_18E1C9934(v10);
    MEMORY[0x193ACD400](v10, -1, -1);
    MEMORY[0x193ACD400](v9, -1, -1);
  }

  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_18E280094(id *a1)
{
  v2 = sub_18E44E83C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);

  if (qword_1ED6A9020 != -1)
  {
    swift_once();
  }

  v6 = sub_18E1C95EC(v2, qword_1ED6A9028);
  swift_beginAccess();
  (*(v3 + 16))(v5, v6, v2);
  v7 = sub_18E44E80C();
  v8 = sub_18E44EE2C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v18 = v3;
    v10 = v9;
    v11 = swift_slowAlloc();
    v19 = v11;
    *v10 = 136315138;
    swift_beginAccess();
    v12 = qword_1EABE9328;
    v13 = off_1EABE9330;

    v14 = sub_18E1C9624(v12, v13, &v19);
    v17 = v2;
    v15 = v14;

    *(v10 + 4) = v15;
    _os_log_impl(&dword_18E1C1000, v7, v8, "%s: Connection to XPC Server invalidated.", v10, 0xCu);
    sub_18E1C9934(v11);
    MEMORY[0x193ACD400](v11, -1, -1);
    MEMORY[0x193ACD400](v10, -1, -1);

    result = (*(v18 + 8))(v5, v17);
  }

  else
  {

    result = (*(v3 + 8))(v5, v2);
  }

  *a1 = 0;
  return result;
}

BOOL sub_18E280314(void *a1, unint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v3 = a1;
  sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
  sub_18E1D121C(0, &qword_1EABE08A0, 0x1E696ABC0);
  if (!swift_dynamicCast())
  {
    return 0;
  }

  v4 = [v14 domain];
  v5 = sub_18E44EAAC();
  v7 = v6;

  if (v5 == sub_18E44EAAC() && v7 == v8)
  {
  }

  else
  {
    v10 = sub_18E44F3CC();

    if ((v10 & 1) == 0)
    {

      return 0;
    }
  }

  v11 = [v14 code];

  return v11 == 4097 && a2 < 2;
}

uint64_t sub_18E280470(uint64_t a1, void *a2, uint64_t a3, void (*a4)(uint64_t, uint64_t (*)(), uint64_t), void (*a5)(uint64_t, uint64_t (*)(), uint64_t))
{
  v33 = a5;
  v39 = a4;
  v30 = a3;
  v31 = a2;
  v37 = a1;
  v6 = sub_18E2706EC(&qword_1EABE10B8, &qword_18E49DD00);
  v7 = *(v6 - 8);
  v38 = *(v7 + 64);
  v8 = v38;
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v28 - v9;
  v11 = swift_allocObject();
  v29 = v11;
  *(v11 + 16) = 0;
  swift_beginAccess();
  *(v11 + 16) = 1;
  v12 = *(v7 + 16);
  v35 = v7 + 16;
  v36 = v12;
  v12(v10, a1, v6);
  v13 = *(v7 + 80);
  v14 = (v13 + 40) & ~v13;
  v15 = swift_allocObject();
  v15[2] = v30;
  v15[3] = v11;
  v16 = v31;
  v15[4] = v31;
  v17 = *(v7 + 32);
  v32 = v7 + 32;
  v34 = v17;
  v17(v15 + v14, v10, v6);
  v18 = (v15 + ((v8 + v14 + 7) & 0xFFFFFFFFFFFFFFF8));
  v19 = v33;
  *v18 = v39;
  v18[1] = v19;
  aBlock[4] = sub_18E288DAC;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_18E448558;
  aBlock[3] = &unk_1F0140548;
  v20 = _Block_copy(aBlock);

  v21 = v29;

  v22 = v16;

  v23 = [v22 remoteObjectProxyWithErrorHandler_];
  _Block_release(v20);
  v36(v10, v37, v6);
  v24 = (v13 + 24) & ~v13;
  v25 = swift_allocObject();
  *(v25 + 16) = v21;
  v34(v25 + v24, v10, v6);

  v26 = swift_unknownObjectRetain();
  v39(v26, sub_18E288DD4, v25);

  return swift_unknownObjectRelease_n();
}

uint64_t sub_18E28079C(uint64_t a1, void *a2, uint64_t a3, void (*a4)(uint64_t, uint64_t (*)(), uint64_t), void (*a5)(uint64_t, uint64_t (*)(), uint64_t))
{
  v33 = a5;
  v39 = a4;
  v30 = a3;
  v31 = a2;
  v37 = a1;
  v6 = sub_18E2706EC(&qword_1EABE10B0, &qword_18E49DCF8);
  v7 = *(v6 - 8);
  v38 = *(v7 + 64);
  v8 = v38;
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v28 - v9;
  v11 = swift_allocObject();
  v29 = v11;
  *(v11 + 16) = 0;
  swift_beginAccess();
  *(v11 + 16) = 1;
  v12 = *(v7 + 16);
  v35 = v7 + 16;
  v36 = v12;
  v12(v10, a1, v6);
  v13 = *(v7 + 80);
  v14 = (v13 + 40) & ~v13;
  v15 = swift_allocObject();
  v15[2] = v30;
  v15[3] = v11;
  v16 = v31;
  v15[4] = v31;
  v17 = *(v7 + 32);
  v32 = v7 + 32;
  v34 = v17;
  v17(v15 + v14, v10, v6);
  v18 = (v15 + ((v8 + v14 + 7) & 0xFFFFFFFFFFFFFFF8));
  v19 = v33;
  *v18 = v39;
  v18[1] = v19;
  aBlock[4] = sub_18E288D08;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_18E448558;
  aBlock[3] = &unk_1F0140368;
  v20 = _Block_copy(aBlock);

  v21 = v29;

  v22 = v16;

  v23 = [v22 remoteObjectProxyWithErrorHandler_];
  _Block_release(v20);
  v36(v10, v37, v6);
  v24 = (v13 + 24) & ~v13;
  v25 = swift_allocObject();
  *(v25 + 16) = v21;
  v34(v25 + v24, v10, v6);

  v26 = swift_unknownObjectRetain();
  v39(v26, sub_18E288D30, v25);

  return swift_unknownObjectRelease_n();
}

uint64_t sub_18E280AC8(uint64_t a1, void *a2, uint64_t a3, void (*a4)(uint64_t, uint64_t (*)(), uint64_t), void (*a5)(uint64_t, uint64_t (*)(), uint64_t))
{
  v33 = a5;
  v39 = a4;
  v30 = a3;
  v31 = a2;
  v37 = a1;
  v6 = sub_18E2706EC(&qword_1EABE1098, &qword_18E49DCE0);
  v7 = *(v6 - 8);
  v38 = *(v7 + 64);
  v8 = v38;
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v28 - v9;
  v11 = swift_allocObject();
  v29 = v11;
  *(v11 + 16) = 0;
  swift_beginAccess();
  *(v11 + 16) = 1;
  v12 = *(v7 + 16);
  v35 = v7 + 16;
  v36 = v12;
  v12(v10, a1, v6);
  v13 = *(v7 + 80);
  v14 = (v13 + 40) & ~v13;
  v15 = swift_allocObject();
  v15[2] = v30;
  v15[3] = v11;
  v16 = v31;
  v15[4] = v31;
  v17 = *(v7 + 32);
  v32 = v7 + 32;
  v34 = v17;
  v17(v15 + v14, v10, v6);
  v18 = (v15 + ((v8 + v14 + 7) & 0xFFFFFFFFFFFFFFF8));
  v19 = v33;
  *v18 = v39;
  v18[1] = v19;
  aBlock[4] = sub_18E288C5C;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_18E448558;
  aBlock[3] = &unk_1F0140098;
  v20 = _Block_copy(aBlock);

  v21 = v29;

  v22 = v16;

  v23 = [v22 remoteObjectProxyWithErrorHandler_];
  _Block_release(v20);
  v36(v10, v37, v6);
  v24 = (v13 + 24) & ~v13;
  v25 = swift_allocObject();
  *(v25 + 16) = v21;
  v34(v25 + v24, v10, v6);

  v26 = swift_unknownObjectRetain();
  v39(v26, sub_18E288C84, v25);

  return swift_unknownObjectRelease_n();
}

uint64_t sub_18E280DF4(uint64_t a1, void *a2, uint64_t a3, void (*a4)(uint64_t, uint64_t (*)(), uint64_t), void (*a5)(uint64_t, uint64_t (*)(), uint64_t))
{
  v33 = a5;
  v39 = a4;
  v30 = a3;
  v31 = a2;
  v37 = a1;
  v6 = sub_18E2706EC(&qword_1EABE1088, &qword_18E49DCD0);
  v7 = *(v6 - 8);
  v38 = *(v7 + 64);
  v8 = v38;
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v28 - v9;
  v11 = swift_allocObject();
  v29 = v11;
  *(v11 + 16) = 0;
  swift_beginAccess();
  *(v11 + 16) = 1;
  v12 = *(v7 + 16);
  v35 = v7 + 16;
  v36 = v12;
  v12(v10, a1, v6);
  v13 = *(v7 + 80);
  v14 = (v13 + 40) & ~v13;
  v15 = swift_allocObject();
  v15[2] = v30;
  v15[3] = v11;
  v16 = v31;
  v15[4] = v31;
  v17 = *(v7 + 32);
  v32 = v7 + 32;
  v34 = v17;
  v17(v15 + v14, v10, v6);
  v18 = (v15 + ((v8 + v14 + 7) & 0xFFFFFFFFFFFFFFF8));
  v19 = v33;
  *v18 = v39;
  v18[1] = v19;
  aBlock[4] = sub_18E288B98;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_18E448558;
  aBlock[3] = &unk_1F013FF30;
  v20 = _Block_copy(aBlock);

  v21 = v29;

  v22 = v16;

  v23 = [v22 remoteObjectProxyWithErrorHandler_];
  _Block_release(v20);
  v36(v10, v37, v6);
  v24 = (v13 + 24) & ~v13;
  v25 = swift_allocObject();
  *(v25 + 16) = v21;
  v34(v25 + v24, v10, v6);

  v26 = swift_unknownObjectRetain();
  v39(v26, sub_18E288BC0, v25);

  return swift_unknownObjectRelease_n();
}

uint64_t sub_18E281120(uint64_t a1, void *a2, uint64_t a3, void (*a4)(uint64_t, uint64_t (*)(), uint64_t), void (*a5)(uint64_t, uint64_t (*)(), uint64_t))
{
  v33 = a5;
  v39 = a4;
  v30 = a3;
  v31 = a2;
  v37 = a1;
  v6 = sub_18E2706EC(&qword_1EABE1040, &unk_18E49DC70);
  v7 = *(v6 - 8);
  v38 = *(v7 + 64);
  v8 = v38;
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v28 - v9;
  v11 = swift_allocObject();
  v29 = v11;
  *(v11 + 16) = 0;
  swift_beginAccess();
  *(v11 + 16) = 1;
  v12 = *(v7 + 16);
  v35 = v7 + 16;
  v36 = v12;
  v12(v10, a1, v6);
  v13 = *(v7 + 80);
  v14 = (v13 + 40) & ~v13;
  v15 = swift_allocObject();
  v15[2] = v30;
  v15[3] = v11;
  v16 = v31;
  v15[4] = v31;
  v17 = *(v7 + 32);
  v32 = v7 + 32;
  v34 = v17;
  v17(v15 + v14, v10, v6);
  v18 = (v15 + ((v8 + v14 + 7) & 0xFFFFFFFFFFFFFFF8));
  v19 = v33;
  *v18 = v39;
  v18[1] = v19;
  aBlock[4] = sub_18E288650;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_18E448558;
  aBlock[3] = &unk_1F013FA08;
  v20 = _Block_copy(aBlock);

  v21 = v29;

  v22 = v16;

  v23 = [v22 remoteObjectProxyWithErrorHandler_];
  _Block_release(v20);
  v36(v10, v37, v6);
  v24 = (v13 + 24) & ~v13;
  v25 = swift_allocObject();
  *(v25 + 16) = v21;
  v34(v25 + v24, v10, v6);

  v26 = swift_unknownObjectRetain();
  v39(v26, sub_18E288678, v25);

  return swift_unknownObjectRelease_n();
}

uint64_t sub_18E28144C(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void (*a6)(uint64_t, uint64_t (*)(), uint64_t), void (*a7)(uint64_t, uint64_t (*)(), uint64_t))
{
  v85 = a7;
  v87 = a5;
  v83 = a4;
  v11 = sub_18E2706EC(&qword_1EABE10B8, &qword_18E49DD00);
  v84 = *(v11 - 8);
  v86 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v76 - v12;
  v14 = sub_18E44E83C();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v76 - v19;
  swift_beginAccess();
  v21 = a3[2];
  v82 = a2;
  if (sub_18E280314(a1, v21))
  {
    v80 = a6;
    if (qword_1ED6A9020 != -1)
    {
      swift_once();
    }

    v22 = sub_18E1C95EC(v14, qword_1ED6A9028);
    swift_beginAccess();
    (*(v15 + 16))(v20, v22, v14);
    swift_retain_n();
    v23 = a1;
    v24 = sub_18E44E80C();
    v25 = sub_18E44EE0C();

    v26 = os_log_type_enabled(v24, v25);
    v79 = v13;
    if (v26)
    {
      LODWORD(v77) = v25;
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      aBlock[0] = v76;
      *v27 = 136315650;
      v78 = v14;
      swift_beginAccess();
      v29 = v11;
      v31 = qword_1EABE9328;
      v30 = off_1EABE9330;

      v32 = sub_18E1C9624(v31, v30, aBlock);

      *(v27 + 4) = v32;
      v11 = v29;
      *(v27 + 12) = 2112;
      v33 = a1;
      v34 = _swift_stdlib_bridgeErrorToNSError();
      *(v27 + 14) = v34;
      *v28 = v34;
      *(v27 + 22) = 2048;
      swift_beginAccess();
      v35 = a3[2];

      *(v27 + 24) = v35;

      _os_log_impl(&dword_18E1C1000, v24, v77, "%s async: connection error during call: %@, num connection attempts: %lu", v27, 0x20u);
      sub_18E1CC340(v28, &unk_1EABE9120, &qword_18E4E3A90);
      MEMORY[0x193ACD400](v28, -1, -1);
      v36 = v76;
      sub_18E1C9934(v76);
      MEMORY[0x193ACD400](v36, -1, -1);
      MEMORY[0x193ACD400](v27, -1, -1);

      (*(v15 + 8))(v20, v78);
    }

    else
    {

      (*(v15 + 8))(v20, v14);
    }

    result = swift_beginAccess();
    v53 = a3[2];
    v54 = __CFADD__(v53, 1);
    v55 = v53 + 1;
    if (v54)
    {
      __break(1u);
    }

    else
    {
      a3[2] = v55;
      v56 = v84;
      v57 = *(v84 + 16);
      v77 = v84 + 16;
      v78 = v57;
      v58 = v79;
      v81 = v11;
      v57(v79, v87, v11);
      v59 = *(v56 + 80);
      v60 = (v59 + 40) & ~v59;
      v61 = (v86 + v60 + 7) & 0xFFFFFFFFFFFFFFF8;
      v62 = swift_allocObject();
      *(v62 + 2) = v82;
      *(v62 + 3) = a3;
      v76 = a3;
      v63 = v83;
      *(v62 + 4) = v83;
      v64 = *(v56 + 32);
      v64(&v62[v60], v58, v11);
      v65 = &v62[v61];
      v66 = v85;
      *v65 = v80;
      v65[1] = v66;
      aBlock[4] = sub_18E2891AC;
      aBlock[5] = v62;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_18E448558;
      aBlock[3] = &unk_1F01405C0;
      v67 = _Block_copy(aBlock);
      v68 = v76;

      v69 = v63;

      v70 = [v69 remoteObjectProxyWithErrorHandler_];
      _Block_release(v67);
      v71 = v79;
      v72 = v81;
      v78(v79, v87, v81);
      v73 = swift_allocObject();
      *(v73 + 16) = v68;
      v64((v73 + ((v59 + 24) & ~v59)), v71, v72);

      v74 = swift_unknownObjectRetain();
      v80(v74, sub_18E2891CC, v73);

      return swift_unknownObjectRelease_n();
    }
  }

  else
  {
    if (qword_1ED6A9020 != -1)
    {
      swift_once();
    }

    v37 = sub_18E1C95EC(v14, qword_1ED6A9028);
    swift_beginAccess();
    (*(v15 + 16))(v18, v37, v14);
    swift_retain_n();
    v38 = a1;
    v39 = sub_18E44E80C();
    v40 = sub_18E44EE0C();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v78 = v14;
      v42 = v41;
      v43 = swift_slowAlloc();
      v81 = v11;
      v44 = v43;
      v86 = swift_slowAlloc();
      v88[0] = v86;
      *v42 = 136315650;
      swift_beginAccess();
      v45 = qword_1EABE9328;
      v46 = off_1EABE9330;

      v47 = sub_18E1C9624(v45, v46, v88);

      *(v42 + 4) = v47;
      *(v42 + 12) = 2112;
      v48 = a1;
      v49 = _swift_stdlib_bridgeErrorToNSError();
      *(v42 + 14) = v49;
      *v44 = v49;
      *(v42 + 22) = 2048;
      swift_beginAccess();
      v50 = a3[2];

      *(v42 + 24) = v50;

      _os_log_impl(&dword_18E1C1000, v39, v40, "%s async: connection error during call: %@ reached max num connection attempts: %lu", v42, 0x20u);
      sub_18E1CC340(v44, &unk_1EABE9120, &qword_18E4E3A90);
      MEMORY[0x193ACD400](v44, -1, -1);
      v51 = v86;
      sub_18E1C9934(v86);
      MEMORY[0x193ACD400](v51, -1, -1);
      MEMORY[0x193ACD400](v42, -1, -1);

      (*(v15 + 8))(v18, v78);
    }

    else
    {

      (*(v15 + 8))(v18, v14);
    }

    v88[0] = a1;
    v75 = a1;
    return sub_18E44ED0C();
  }

  return result;
}

uint64_t sub_18E281DA4(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void (*a6)(uint64_t, uint64_t (*)(), uint64_t), void (*a7)(uint64_t, uint64_t (*)(), uint64_t))
{
  v85 = a7;
  v87 = a5;
  v83 = a4;
  v11 = sub_18E2706EC(&qword_1EABE10B0, &qword_18E49DCF8);
  v84 = *(v11 - 8);
  v86 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v76 - v12;
  v14 = sub_18E44E83C();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v76 - v19;
  swift_beginAccess();
  v21 = a3[2];
  v82 = a2;
  if (sub_18E280314(a1, v21))
  {
    v80 = a6;
    if (qword_1ED6A9020 != -1)
    {
      swift_once();
    }

    v22 = sub_18E1C95EC(v14, qword_1ED6A9028);
    swift_beginAccess();
    (*(v15 + 16))(v20, v22, v14);
    swift_retain_n();
    v23 = a1;
    v24 = sub_18E44E80C();
    v25 = sub_18E44EE0C();

    v26 = os_log_type_enabled(v24, v25);
    v79 = v13;
    if (v26)
    {
      LODWORD(v77) = v25;
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      aBlock[0] = v76;
      *v27 = 136315650;
      v78 = v14;
      swift_beginAccess();
      v29 = v11;
      v31 = qword_1EABE9328;
      v30 = off_1EABE9330;

      v32 = sub_18E1C9624(v31, v30, aBlock);

      *(v27 + 4) = v32;
      v11 = v29;
      *(v27 + 12) = 2112;
      v33 = a1;
      v34 = _swift_stdlib_bridgeErrorToNSError();
      *(v27 + 14) = v34;
      *v28 = v34;
      *(v27 + 22) = 2048;
      swift_beginAccess();
      v35 = a3[2];

      *(v27 + 24) = v35;

      _os_log_impl(&dword_18E1C1000, v24, v77, "%s async: connection error during call: %@, num connection attempts: %lu", v27, 0x20u);
      sub_18E1CC340(v28, &unk_1EABE9120, &qword_18E4E3A90);
      MEMORY[0x193ACD400](v28, -1, -1);
      v36 = v76;
      sub_18E1C9934(v76);
      MEMORY[0x193ACD400](v36, -1, -1);
      MEMORY[0x193ACD400](v27, -1, -1);

      (*(v15 + 8))(v20, v78);
    }

    else
    {

      (*(v15 + 8))(v20, v14);
    }

    result = swift_beginAccess();
    v53 = a3[2];
    v54 = __CFADD__(v53, 1);
    v55 = v53 + 1;
    if (v54)
    {
      __break(1u);
    }

    else
    {
      a3[2] = v55;
      v56 = v84;
      v57 = *(v84 + 16);
      v77 = v84 + 16;
      v78 = v57;
      v58 = v79;
      v81 = v11;
      v57(v79, v87, v11);
      v59 = *(v56 + 80);
      v60 = (v59 + 40) & ~v59;
      v61 = (v86 + v60 + 7) & 0xFFFFFFFFFFFFFFF8;
      v62 = swift_allocObject();
      *(v62 + 2) = v82;
      *(v62 + 3) = a3;
      v76 = a3;
      v63 = v83;
      *(v62 + 4) = v83;
      v64 = *(v56 + 32);
      v64(&v62[v60], v58, v11);
      v65 = &v62[v61];
      v66 = v85;
      *v65 = v80;
      v65[1] = v66;
      aBlock[4] = sub_18E2891A8;
      aBlock[5] = v62;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_18E448558;
      aBlock[3] = &unk_1F01403E0;
      v67 = _Block_copy(aBlock);
      v68 = v76;

      v69 = v63;

      v70 = [v69 remoteObjectProxyWithErrorHandler_];
      _Block_release(v67);
      v71 = v79;
      v72 = v81;
      v78(v79, v87, v81);
      v73 = swift_allocObject();
      *(v73 + 16) = v68;
      v64((v73 + ((v59 + 24) & ~v59)), v71, v72);

      v74 = swift_unknownObjectRetain();
      v80(v74, sub_18E2891C8, v73);

      return swift_unknownObjectRelease_n();
    }
  }

  else
  {
    if (qword_1ED6A9020 != -1)
    {
      swift_once();
    }

    v37 = sub_18E1C95EC(v14, qword_1ED6A9028);
    swift_beginAccess();
    (*(v15 + 16))(v18, v37, v14);
    swift_retain_n();
    v38 = a1;
    v39 = sub_18E44E80C();
    v40 = sub_18E44EE0C();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v78 = v14;
      v42 = v41;
      v43 = swift_slowAlloc();
      v81 = v11;
      v44 = v43;
      v86 = swift_slowAlloc();
      v88[0] = v86;
      *v42 = 136315650;
      swift_beginAccess();
      v45 = qword_1EABE9328;
      v46 = off_1EABE9330;

      v47 = sub_18E1C9624(v45, v46, v88);

      *(v42 + 4) = v47;
      *(v42 + 12) = 2112;
      v48 = a1;
      v49 = _swift_stdlib_bridgeErrorToNSError();
      *(v42 + 14) = v49;
      *v44 = v49;
      *(v42 + 22) = 2048;
      swift_beginAccess();
      v50 = a3[2];

      *(v42 + 24) = v50;

      _os_log_impl(&dword_18E1C1000, v39, v40, "%s async: connection error during call: %@ reached max num connection attempts: %lu", v42, 0x20u);
      sub_18E1CC340(v44, &unk_1EABE9120, &qword_18E4E3A90);
      MEMORY[0x193ACD400](v44, -1, -1);
      v51 = v86;
      sub_18E1C9934(v86);
      MEMORY[0x193ACD400](v51, -1, -1);
      MEMORY[0x193ACD400](v42, -1, -1);

      (*(v15 + 8))(v18, v78);
    }

    else
    {

      (*(v15 + 8))(v18, v14);
    }

    v88[0] = a1;
    v75 = a1;
    return sub_18E44ED0C();
  }

  return result;
}

uint64_t sub_18E2826FC(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void (*a6)(uint64_t, uint64_t (*)(), uint64_t), void (*a7)(uint64_t, uint64_t (*)(), uint64_t))
{
  v85 = a7;
  v87 = a5;
  v83 = a4;
  v11 = sub_18E2706EC(&qword_1EABE10A0, &qword_18E49DCE8);
  v84 = *(v11 - 8);
  v86 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v76 - v12;
  v14 = sub_18E44E83C();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v76 - v19;
  swift_beginAccess();
  v21 = a3[2];
  v82 = a2;
  if (sub_18E280314(a1, v21))
  {
    v80 = a6;
    if (qword_1ED6A9020 != -1)
    {
      swift_once();
    }

    v22 = sub_18E1C95EC(v14, qword_1ED6A9028);
    swift_beginAccess();
    (*(v15 + 16))(v20, v22, v14);
    swift_retain_n();
    v23 = a1;
    v24 = sub_18E44E80C();
    v25 = sub_18E44EE0C();

    v26 = os_log_type_enabled(v24, v25);
    v79 = v13;
    if (v26)
    {
      LODWORD(v77) = v25;
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      aBlock[0] = v76;
      *v27 = 136315650;
      v78 = v14;
      swift_beginAccess();
      v29 = v11;
      v31 = qword_1EABE9328;
      v30 = off_1EABE9330;

      v32 = sub_18E1C9624(v31, v30, aBlock);

      *(v27 + 4) = v32;
      v11 = v29;
      *(v27 + 12) = 2112;
      v33 = a1;
      v34 = _swift_stdlib_bridgeErrorToNSError();
      *(v27 + 14) = v34;
      *v28 = v34;
      *(v27 + 22) = 2048;
      swift_beginAccess();
      v35 = a3[2];

      *(v27 + 24) = v35;

      _os_log_impl(&dword_18E1C1000, v24, v77, "%s async: connection error during call: %@, num connection attempts: %lu", v27, 0x20u);
      sub_18E1CC340(v28, &unk_1EABE9120, &qword_18E4E3A90);
      MEMORY[0x193ACD400](v28, -1, -1);
      v36 = v76;
      sub_18E1C9934(v76);
      MEMORY[0x193ACD400](v36, -1, -1);
      MEMORY[0x193ACD400](v27, -1, -1);

      (*(v15 + 8))(v20, v78);
    }

    else
    {

      (*(v15 + 8))(v20, v14);
    }

    result = swift_beginAccess();
    v53 = a3[2];
    v54 = __CFADD__(v53, 1);
    v55 = v53 + 1;
    if (v54)
    {
      __break(1u);
    }

    else
    {
      a3[2] = v55;
      v56 = v84;
      v57 = *(v84 + 16);
      v77 = v84 + 16;
      v78 = v57;
      v58 = v79;
      v81 = v11;
      v57(v79, v87, v11);
      v59 = *(v56 + 80);
      v60 = (v59 + 40) & ~v59;
      v61 = (v86 + v60 + 7) & 0xFFFFFFFFFFFFFFF8;
      v62 = swift_allocObject();
      *(v62 + 2) = v82;
      *(v62 + 3) = a3;
      v76 = a3;
      v63 = v83;
      *(v62 + 4) = v83;
      v64 = *(v56 + 32);
      v64(&v62[v60], v58, v11);
      v65 = &v62[v61];
      v66 = v85;
      *v65 = v80;
      v65[1] = v66;
      aBlock[4] = sub_18E2891A4;
      aBlock[5] = v62;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_18E448558;
      aBlock[3] = &unk_1F0140250;
      v67 = _Block_copy(aBlock);
      v68 = v76;

      v69 = v63;

      v70 = [v69 remoteObjectProxyWithErrorHandler_];
      _Block_release(v67);
      v71 = v79;
      v72 = v81;
      v78(v79, v87, v81);
      v73 = swift_allocObject();
      *(v73 + 16) = v68;
      v64((v73 + ((v59 + 24) & ~v59)), v71, v72);

      v74 = swift_unknownObjectRetain();
      v80(v74, sub_18E2891C4, v73);

      return swift_unknownObjectRelease_n();
    }
  }

  else
  {
    if (qword_1ED6A9020 != -1)
    {
      swift_once();
    }

    v37 = sub_18E1C95EC(v14, qword_1ED6A9028);
    swift_beginAccess();
    (*(v15 + 16))(v18, v37, v14);
    swift_retain_n();
    v38 = a1;
    v39 = sub_18E44E80C();
    v40 = sub_18E44EE0C();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v78 = v14;
      v42 = v41;
      v43 = swift_slowAlloc();
      v81 = v11;
      v44 = v43;
      v86 = swift_slowAlloc();
      v88[0] = v86;
      *v42 = 136315650;
      swift_beginAccess();
      v45 = qword_1EABE9328;
      v46 = off_1EABE9330;

      v47 = sub_18E1C9624(v45, v46, v88);

      *(v42 + 4) = v47;
      *(v42 + 12) = 2112;
      v48 = a1;
      v49 = _swift_stdlib_bridgeErrorToNSError();
      *(v42 + 14) = v49;
      *v44 = v49;
      *(v42 + 22) = 2048;
      swift_beginAccess();
      v50 = a3[2];

      *(v42 + 24) = v50;

      _os_log_impl(&dword_18E1C1000, v39, v40, "%s async: connection error during call: %@ reached max num connection attempts: %lu", v42, 0x20u);
      sub_18E1CC340(v44, &unk_1EABE9120, &qword_18E4E3A90);
      MEMORY[0x193ACD400](v44, -1, -1);
      v51 = v86;
      sub_18E1C9934(v86);
      MEMORY[0x193ACD400](v51, -1, -1);
      MEMORY[0x193ACD400](v42, -1, -1);

      (*(v15 + 8))(v18, v78);
    }

    else
    {

      (*(v15 + 8))(v18, v14);
    }

    v88[0] = a1;
    v75 = a1;
    return sub_18E44ED0C();
  }

  return result;
}

uint64_t sub_18E283054(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void (*a6)(uint64_t, uint64_t (*)(), uint64_t), void (*a7)(uint64_t, uint64_t (*)(), uint64_t))
{
  v85 = a7;
  v87 = a5;
  v83 = a4;
  v11 = sub_18E2706EC(&qword_1EABE1098, &qword_18E49DCE0);
  v84 = *(v11 - 8);
  v86 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v76 - v12;
  v14 = sub_18E44E83C();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v76 - v19;
  swift_beginAccess();
  v21 = a3[2];
  v82 = a2;
  if (sub_18E280314(a1, v21))
  {
    v80 = a6;
    if (qword_1ED6A9020 != -1)
    {
      swift_once();
    }

    v22 = sub_18E1C95EC(v14, qword_1ED6A9028);
    swift_beginAccess();
    (*(v15 + 16))(v20, v22, v14);
    swift_retain_n();
    v23 = a1;
    v24 = sub_18E44E80C();
    v25 = sub_18E44EE0C();

    v26 = os_log_type_enabled(v24, v25);
    v79 = v13;
    if (v26)
    {
      LODWORD(v77) = v25;
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      aBlock[0] = v76;
      *v27 = 136315650;
      v78 = v14;
      swift_beginAccess();
      v29 = v11;
      v31 = qword_1EABE9328;
      v30 = off_1EABE9330;

      v32 = sub_18E1C9624(v31, v30, aBlock);

      *(v27 + 4) = v32;
      v11 = v29;
      *(v27 + 12) = 2112;
      v33 = a1;
      v34 = _swift_stdlib_bridgeErrorToNSError();
      *(v27 + 14) = v34;
      *v28 = v34;
      *(v27 + 22) = 2048;
      swift_beginAccess();
      v35 = a3[2];

      *(v27 + 24) = v35;

      _os_log_impl(&dword_18E1C1000, v24, v77, "%s async: connection error during call: %@, num connection attempts: %lu", v27, 0x20u);
      sub_18E1CC340(v28, &unk_1EABE9120, &qword_18E4E3A90);
      MEMORY[0x193ACD400](v28, -1, -1);
      v36 = v76;
      sub_18E1C9934(v76);
      MEMORY[0x193ACD400](v36, -1, -1);
      MEMORY[0x193ACD400](v27, -1, -1);

      (*(v15 + 8))(v20, v78);
    }

    else
    {

      (*(v15 + 8))(v20, v14);
    }

    result = swift_beginAccess();
    v53 = a3[2];
    v54 = __CFADD__(v53, 1);
    v55 = v53 + 1;
    if (v54)
    {
      __break(1u);
    }

    else
    {
      a3[2] = v55;
      v56 = v84;
      v57 = *(v84 + 16);
      v77 = v84 + 16;
      v78 = v57;
      v58 = v79;
      v81 = v11;
      v57(v79, v87, v11);
      v59 = *(v56 + 80);
      v60 = (v59 + 40) & ~v59;
      v61 = (v86 + v60 + 7) & 0xFFFFFFFFFFFFFFF8;
      v62 = swift_allocObject();
      *(v62 + 2) = v82;
      *(v62 + 3) = a3;
      v76 = a3;
      v63 = v83;
      *(v62 + 4) = v83;
      v64 = *(v56 + 32);
      v64(&v62[v60], v58, v11);
      v65 = &v62[v61];
      v66 = v85;
      *v65 = v80;
      v65[1] = v66;
      aBlock[4] = sub_18E2891A0;
      aBlock[5] = v62;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_18E448558;
      aBlock[3] = &unk_1F0140110;
      v67 = _Block_copy(aBlock);
      v68 = v76;

      v69 = v63;

      v70 = [v69 remoteObjectProxyWithErrorHandler_];
      _Block_release(v67);
      v71 = v79;
      v72 = v81;
      v78(v79, v87, v81);
      v73 = swift_allocObject();
      *(v73 + 16) = v68;
      v64((v73 + ((v59 + 24) & ~v59)), v71, v72);

      v74 = swift_unknownObjectRetain();
      v80(v74, sub_18E2891C0, v73);

      return swift_unknownObjectRelease_n();
    }
  }

  else
  {
    if (qword_1ED6A9020 != -1)
    {
      swift_once();
    }

    v37 = sub_18E1C95EC(v14, qword_1ED6A9028);
    swift_beginAccess();
    (*(v15 + 16))(v18, v37, v14);
    swift_retain_n();
    v38 = a1;
    v39 = sub_18E44E80C();
    v40 = sub_18E44EE0C();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v78 = v14;
      v42 = v41;
      v43 = swift_slowAlloc();
      v81 = v11;
      v44 = v43;
      v86 = swift_slowAlloc();
      v88[0] = v86;
      *v42 = 136315650;
      swift_beginAccess();
      v45 = qword_1EABE9328;
      v46 = off_1EABE9330;

      v47 = sub_18E1C9624(v45, v46, v88);

      *(v42 + 4) = v47;
      *(v42 + 12) = 2112;
      v48 = a1;
      v49 = _swift_stdlib_bridgeErrorToNSError();
      *(v42 + 14) = v49;
      *v44 = v49;
      *(v42 + 22) = 2048;
      swift_beginAccess();
      v50 = a3[2];

      *(v42 + 24) = v50;

      _os_log_impl(&dword_18E1C1000, v39, v40, "%s async: connection error during call: %@ reached max num connection attempts: %lu", v42, 0x20u);
      sub_18E1CC340(v44, &unk_1EABE9120, &qword_18E4E3A90);
      MEMORY[0x193ACD400](v44, -1, -1);
      v51 = v86;
      sub_18E1C9934(v86);
      MEMORY[0x193ACD400](v51, -1, -1);
      MEMORY[0x193ACD400](v42, -1, -1);

      (*(v15 + 8))(v18, v78);
    }

    else
    {

      (*(v15 + 8))(v18, v14);
    }

    v88[0] = a1;
    v75 = a1;
    return sub_18E44ED0C();
  }

  return result;
}

uint64_t sub_18E2839AC(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void (*a6)(uint64_t, uint64_t (*)(), uint64_t), void (*a7)(uint64_t, uint64_t (*)(), uint64_t))
{
  v85 = a7;
  v87 = a5;
  v83 = a4;
  v11 = sub_18E2706EC(&qword_1EABE1088, &qword_18E49DCD0);
  v84 = *(v11 - 8);
  v86 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v76 - v12;
  v14 = sub_18E44E83C();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v76 - v19;
  swift_beginAccess();
  v21 = a3[2];
  v82 = a2;
  if (sub_18E280314(a1, v21))
  {
    v80 = a6;
    if (qword_1ED6A9020 != -1)
    {
      swift_once();
    }

    v22 = sub_18E1C95EC(v14, qword_1ED6A9028);
    swift_beginAccess();
    (*(v15 + 16))(v20, v22, v14);
    swift_retain_n();
    v23 = a1;
    v24 = sub_18E44E80C();
    v25 = sub_18E44EE0C();

    v26 = os_log_type_enabled(v24, v25);
    v79 = v13;
    if (v26)
    {
      LODWORD(v77) = v25;
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      aBlock[0] = v76;
      *v27 = 136315650;
      v78 = v14;
      swift_beginAccess();
      v29 = v11;
      v31 = qword_1EABE9328;
      v30 = off_1EABE9330;

      v32 = sub_18E1C9624(v31, v30, aBlock);

      *(v27 + 4) = v32;
      v11 = v29;
      *(v27 + 12) = 2112;
      v33 = a1;
      v34 = _swift_stdlib_bridgeErrorToNSError();
      *(v27 + 14) = v34;
      *v28 = v34;
      *(v27 + 22) = 2048;
      swift_beginAccess();
      v35 = a3[2];

      *(v27 + 24) = v35;

      _os_log_impl(&dword_18E1C1000, v24, v77, "%s async: connection error during call: %@, num connection attempts: %lu", v27, 0x20u);
      sub_18E1CC340(v28, &unk_1EABE9120, &qword_18E4E3A90);
      MEMORY[0x193ACD400](v28, -1, -1);
      v36 = v76;
      sub_18E1C9934(v76);
      MEMORY[0x193ACD400](v36, -1, -1);
      MEMORY[0x193ACD400](v27, -1, -1);

      (*(v15 + 8))(v20, v78);
    }

    else
    {

      (*(v15 + 8))(v20, v14);
    }

    result = swift_beginAccess();
    v53 = a3[2];
    v54 = __CFADD__(v53, 1);
    v55 = v53 + 1;
    if (v54)
    {
      __break(1u);
    }

    else
    {
      a3[2] = v55;
      v56 = v84;
      v57 = *(v84 + 16);
      v77 = v84 + 16;
      v78 = v57;
      v58 = v79;
      v81 = v11;
      v57(v79, v87, v11);
      v59 = *(v56 + 80);
      v60 = (v59 + 40) & ~v59;
      v61 = (v86 + v60 + 7) & 0xFFFFFFFFFFFFFFF8;
      v62 = swift_allocObject();
      *(v62 + 2) = v82;
      *(v62 + 3) = a3;
      v76 = a3;
      v63 = v83;
      *(v62 + 4) = v83;
      v64 = *(v56 + 32);
      v64(&v62[v60], v58, v11);
      v65 = &v62[v61];
      v66 = v85;
      *v65 = v80;
      v65[1] = v66;
      aBlock[4] = sub_18E28919C;
      aBlock[5] = v62;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_18E448558;
      aBlock[3] = &unk_1F013FFA8;
      v67 = _Block_copy(aBlock);
      v68 = v76;

      v69 = v63;

      v70 = [v69 remoteObjectProxyWithErrorHandler_];
      _Block_release(v67);
      v71 = v79;
      v72 = v81;
      v78(v79, v87, v81);
      v73 = swift_allocObject();
      *(v73 + 16) = v68;
      v64((v73 + ((v59 + 24) & ~v59)), v71, v72);

      v74 = swift_unknownObjectRetain();
      v80(v74, sub_18E2891BC, v73);

      return swift_unknownObjectRelease_n();
    }
  }

  else
  {
    if (qword_1ED6A9020 != -1)
    {
      swift_once();
    }

    v37 = sub_18E1C95EC(v14, qword_1ED6A9028);
    swift_beginAccess();
    (*(v15 + 16))(v18, v37, v14);
    swift_retain_n();
    v38 = a1;
    v39 = sub_18E44E80C();
    v40 = sub_18E44EE0C();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v78 = v14;
      v42 = v41;
      v43 = swift_slowAlloc();
      v81 = v11;
      v44 = v43;
      v86 = swift_slowAlloc();
      v88[0] = v86;
      *v42 = 136315650;
      swift_beginAccess();
      v45 = qword_1EABE9328;
      v46 = off_1EABE9330;

      v47 = sub_18E1C9624(v45, v46, v88);

      *(v42 + 4) = v47;
      *(v42 + 12) = 2112;
      v48 = a1;
      v49 = _swift_stdlib_bridgeErrorToNSError();
      *(v42 + 14) = v49;
      *v44 = v49;
      *(v42 + 22) = 2048;
      swift_beginAccess();
      v50 = a3[2];

      *(v42 + 24) = v50;

      _os_log_impl(&dword_18E1C1000, v39, v40, "%s async: connection error during call: %@ reached max num connection attempts: %lu", v42, 0x20u);
      sub_18E1CC340(v44, &unk_1EABE9120, &qword_18E4E3A90);
      MEMORY[0x193ACD400](v44, -1, -1);
      v51 = v86;
      sub_18E1C9934(v86);
      MEMORY[0x193ACD400](v51, -1, -1);
      MEMORY[0x193ACD400](v42, -1, -1);

      (*(v15 + 8))(v18, v78);
    }

    else
    {

      (*(v15 + 8))(v18, v14);
    }

    v88[0] = a1;
    v75 = a1;
    return sub_18E44ED0C();
  }

  return result;
}

uint64_t sub_18E284304(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void (*a6)(uint64_t, uint64_t (*)(uint64_t, uint64_t), uint64_t), void (*a7)(uint64_t, uint64_t (*)(uint64_t, uint64_t), uint64_t))
{
  v85 = a7;
  v87 = a5;
  v83 = a4;
  v11 = sub_18E2706EC(&qword_1EABE1050, &qword_18E49DC80);
  v84 = *(v11 - 8);
  v86 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v76 - v12;
  v14 = sub_18E44E83C();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v76 - v19;
  swift_beginAccess();
  v21 = a3[2];
  v82 = a2;
  if (sub_18E280314(a1, v21))
  {
    v80 = a6;
    if (qword_1ED6A9020 != -1)
    {
      swift_once();
    }

    v22 = sub_18E1C95EC(v14, qword_1ED6A9028);
    swift_beginAccess();
    (*(v15 + 16))(v20, v22, v14);
    swift_retain_n();
    v23 = a1;
    v24 = sub_18E44E80C();
    v25 = sub_18E44EE0C();

    v26 = os_log_type_enabled(v24, v25);
    v79 = v13;
    if (v26)
    {
      LODWORD(v77) = v25;
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      aBlock[0] = v76;
      *v27 = 136315650;
      v78 = v14;
      swift_beginAccess();
      v29 = v11;
      v31 = qword_1EABE9328;
      v30 = off_1EABE9330;

      v32 = sub_18E1C9624(v31, v30, aBlock);

      *(v27 + 4) = v32;
      v11 = v29;
      *(v27 + 12) = 2112;
      v33 = a1;
      v34 = _swift_stdlib_bridgeErrorToNSError();
      *(v27 + 14) = v34;
      *v28 = v34;
      *(v27 + 22) = 2048;
      swift_beginAccess();
      v35 = a3[2];

      *(v27 + 24) = v35;

      _os_log_impl(&dword_18E1C1000, v24, v77, "%s async: connection error during call: %@, num connection attempts: %lu", v27, 0x20u);
      sub_18E1CC340(v28, &unk_1EABE9120, &qword_18E4E3A90);
      MEMORY[0x193ACD400](v28, -1, -1);
      v36 = v76;
      sub_18E1C9934(v76);
      MEMORY[0x193ACD400](v36, -1, -1);
      MEMORY[0x193ACD400](v27, -1, -1);

      (*(v15 + 8))(v20, v78);
    }

    else
    {

      (*(v15 + 8))(v20, v14);
    }

    result = swift_beginAccess();
    v53 = a3[2];
    v54 = __CFADD__(v53, 1);
    v55 = v53 + 1;
    if (v54)
    {
      __break(1u);
    }

    else
    {
      a3[2] = v55;
      v56 = v84;
      v57 = *(v84 + 16);
      v77 = v84 + 16;
      v78 = v57;
      v58 = v79;
      v81 = v11;
      v57(v79, v87, v11);
      v59 = *(v56 + 80);
      v60 = (v59 + 40) & ~v59;
      v61 = (v86 + v60 + 7) & 0xFFFFFFFFFFFFFFF8;
      v62 = swift_allocObject();
      *(v62 + 2) = v82;
      *(v62 + 3) = a3;
      v76 = a3;
      v63 = v83;
      *(v62 + 4) = v83;
      v64 = *(v56 + 32);
      v64(&v62[v60], v58, v11);
      v65 = &v62[v61];
      v66 = v85;
      *v65 = v80;
      v65[1] = v66;
      aBlock[4] = sub_18E289198;
      aBlock[5] = v62;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_18E448558;
      aBlock[3] = &unk_1F013FCD8;
      v67 = _Block_copy(aBlock);
      v68 = v76;

      v69 = v63;

      v70 = [v69 remoteObjectProxyWithErrorHandler_];
      _Block_release(v67);
      v71 = v79;
      v72 = v81;
      v78(v79, v87, v81);
      v73 = swift_allocObject();
      *(v73 + 16) = v68;
      v64((v73 + ((v59 + 24) & ~v59)), v71, v72);

      v74 = swift_unknownObjectRetain();
      v80(v74, sub_18E2891B8, v73);

      return swift_unknownObjectRelease_n();
    }
  }

  else
  {
    if (qword_1ED6A9020 != -1)
    {
      swift_once();
    }

    v37 = sub_18E1C95EC(v14, qword_1ED6A9028);
    swift_beginAccess();
    (*(v15 + 16))(v18, v37, v14);
    swift_retain_n();
    v38 = a1;
    v39 = sub_18E44E80C();
    v40 = sub_18E44EE0C();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v78 = v14;
      v42 = v41;
      v43 = swift_slowAlloc();
      v81 = v11;
      v44 = v43;
      v86 = swift_slowAlloc();
      v88[0] = v86;
      *v42 = 136315650;
      swift_beginAccess();
      v45 = qword_1EABE9328;
      v46 = off_1EABE9330;

      v47 = sub_18E1C9624(v45, v46, v88);

      *(v42 + 4) = v47;
      *(v42 + 12) = 2112;
      v48 = a1;
      v49 = _swift_stdlib_bridgeErrorToNSError();
      *(v42 + 14) = v49;
      *v44 = v49;
      *(v42 + 22) = 2048;
      swift_beginAccess();
      v50 = a3[2];

      *(v42 + 24) = v50;

      _os_log_impl(&dword_18E1C1000, v39, v40, "%s async: connection error during call: %@ reached max num connection attempts: %lu", v42, 0x20u);
      sub_18E1CC340(v44, &unk_1EABE9120, &qword_18E4E3A90);
      MEMORY[0x193ACD400](v44, -1, -1);
      v51 = v86;
      sub_18E1C9934(v86);
      MEMORY[0x193ACD400](v51, -1, -1);
      MEMORY[0x193ACD400](v42, -1, -1);

      (*(v15 + 8))(v18, v78);
    }

    else
    {

      (*(v15 + 8))(v18, v14);
    }

    v88[0] = a1;
    v75 = a1;
    return sub_18E44ED0C();
  }

  return result;
}

uint64_t sub_18E284C5C(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void (*a6)(uint64_t, uint64_t (*)(), uint64_t), void (*a7)(uint64_t, uint64_t (*)(), uint64_t))
{
  v85 = a7;
  v87 = a5;
  v83 = a4;
  v11 = sub_18E2706EC(&qword_1EABE1040, &unk_18E49DC70);
  v84 = *(v11 - 8);
  v86 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v76 - v12;
  v14 = sub_18E44E83C();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v76 - v19;
  swift_beginAccess();
  v21 = a3[2];
  v82 = a2;
  if (sub_18E280314(a1, v21))
  {
    v80 = a6;
    if (qword_1ED6A9020 != -1)
    {
      swift_once();
    }

    v22 = sub_18E1C95EC(v14, qword_1ED6A9028);
    swift_beginAccess();
    (*(v15 + 16))(v20, v22, v14);
    swift_retain_n();
    v23 = a1;
    v24 = sub_18E44E80C();
    v25 = sub_18E44EE0C();

    v26 = os_log_type_enabled(v24, v25);
    v79 = v13;
    if (v26)
    {
      LODWORD(v77) = v25;
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      aBlock[0] = v76;
      *v27 = 136315650;
      v78 = v14;
      swift_beginAccess();
      v29 = v11;
      v31 = qword_1EABE9328;
      v30 = off_1EABE9330;

      v32 = sub_18E1C9624(v31, v30, aBlock);

      *(v27 + 4) = v32;
      v11 = v29;
      *(v27 + 12) = 2112;
      v33 = a1;
      v34 = _swift_stdlib_bridgeErrorToNSError();
      *(v27 + 14) = v34;
      *v28 = v34;
      *(v27 + 22) = 2048;
      swift_beginAccess();
      v35 = a3[2];

      *(v27 + 24) = v35;

      _os_log_impl(&dword_18E1C1000, v24, v77, "%s async: connection error during call: %@, num connection attempts: %lu", v27, 0x20u);
      sub_18E1CC340(v28, &unk_1EABE9120, &qword_18E4E3A90);
      MEMORY[0x193ACD400](v28, -1, -1);
      v36 = v76;
      sub_18E1C9934(v76);
      MEMORY[0x193ACD400](v36, -1, -1);
      MEMORY[0x193ACD400](v27, -1, -1);

      (*(v15 + 8))(v20, v78);
    }

    else
    {

      (*(v15 + 8))(v20, v14);
    }

    result = swift_beginAccess();
    v53 = a3[2];
    v54 = __CFADD__(v53, 1);
    v55 = v53 + 1;
    if (v54)
    {
      __break(1u);
    }

    else
    {
      a3[2] = v55;
      v56 = v84;
      v57 = *(v84 + 16);
      v77 = v84 + 16;
      v78 = v57;
      v58 = v79;
      v81 = v11;
      v57(v79, v87, v11);
      v59 = *(v56 + 80);
      v60 = (v59 + 40) & ~v59;
      v61 = (v86 + v60 + 7) & 0xFFFFFFFFFFFFFFF8;
      v62 = swift_allocObject();
      *(v62 + 2) = v82;
      *(v62 + 3) = a3;
      v76 = a3;
      v63 = v83;
      *(v62 + 4) = v83;
      v64 = *(v56 + 32);
      v64(&v62[v60], v58, v11);
      v65 = &v62[v61];
      v66 = v85;
      *v65 = v80;
      v65[1] = v66;
      aBlock[4] = sub_18E289194;
      aBlock[5] = v62;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_18E448558;
      aBlock[3] = &unk_1F013FA80;
      v67 = _Block_copy(aBlock);
      v68 = v76;

      v69 = v63;

      v70 = [v69 remoteObjectProxyWithErrorHandler_];
      _Block_release(v67);
      v71 = v79;
      v72 = v81;
      v78(v79, v87, v81);
      v73 = swift_allocObject();
      *(v73 + 16) = v68;
      v64((v73 + ((v59 + 24) & ~v59)), v71, v72);

      v74 = swift_unknownObjectRetain();
      v80(v74, sub_18E2891B4, v73);

      return swift_unknownObjectRelease_n();
    }
  }

  else
  {
    if (qword_1ED6A9020 != -1)
    {
      swift_once();
    }

    v37 = sub_18E1C95EC(v14, qword_1ED6A9028);
    swift_beginAccess();
    (*(v15 + 16))(v18, v37, v14);
    swift_retain_n();
    v38 = a1;
    v39 = sub_18E44E80C();
    v40 = sub_18E44EE0C();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v78 = v14;
      v42 = v41;
      v43 = swift_slowAlloc();
      v81 = v11;
      v44 = v43;
      v86 = swift_slowAlloc();
      v88[0] = v86;
      *v42 = 136315650;
      swift_beginAccess();
      v45 = qword_1EABE9328;
      v46 = off_1EABE9330;

      v47 = sub_18E1C9624(v45, v46, v88);

      *(v42 + 4) = v47;
      *(v42 + 12) = 2112;
      v48 = a1;
      v49 = _swift_stdlib_bridgeErrorToNSError();
      *(v42 + 14) = v49;
      *v44 = v49;
      *(v42 + 22) = 2048;
      swift_beginAccess();
      v50 = a3[2];

      *(v42 + 24) = v50;

      _os_log_impl(&dword_18E1C1000, v39, v40, "%s async: connection error during call: %@ reached max num connection attempts: %lu", v42, 0x20u);
      sub_18E1CC340(v44, &unk_1EABE9120, &qword_18E4E3A90);
      MEMORY[0x193ACD400](v44, -1, -1);
      v51 = v86;
      sub_18E1C9934(v86);
      MEMORY[0x193ACD400](v51, -1, -1);
      MEMORY[0x193ACD400](v42, -1, -1);

      (*(v15 + 8))(v18, v78);
    }

    else
    {

      (*(v15 + 8))(v18, v14);
    }

    v88[0] = a1;
    v75 = a1;
    return sub_18E44ED0C();
  }

  return result;
}

uint64_t sub_18E2855B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = sub_18E207FCC(a1, a2, a3, a4, a5, a6);
  sub_18E1C4EAC();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  sub_18E1C86C0();
  sub_18E1DD308();
  MEMORY[0x1EEE9AC00](v17);
  sub_18E1CA6A8();
  MEMORY[0x1EEE9AC00](v18);
  sub_18E1D7DC0();
  if (v10)
  {
    v20 = v10;
    if (qword_1ED6A9020 != -1)
    {
      sub_18E1C6A1C();
      v20 = swift_once();
    }

    sub_18E1D6004(v20, qword_1ED6A9028);
    sub_18E2244D0();
    sub_18E1D44B4();
    v21();

    v22 = v10;

    v23 = sub_18E44E80C();
    v24 = sub_18E44EE0C();

    if (os_log_type_enabled(v23, v24))
    {
      sub_18E1CA69C();
      swift_slowAlloc();
      v25 = sub_18E2239F0();
      sub_18E1CA69C();
      v69 = swift_slowAlloc();
      *v15 = 136315650;
      sub_18E1C8F88();
      sub_18E1D5E2C();
      v26 = sub_18E1CF9A0();
      sub_18E1C9624(v26, v27, v28);
      sub_18E1D4D08();

      sub_18E1E3770();
      v29 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 14) = v29;
      *v25 = v29;
      *(v15 + 22) = 2048;
      sub_18E1D4CFC();
      swift_beginAccess();
      v30 = *(v6 + 16);

      *(v15 + 24) = v30;

      sub_18E1E16C0(&dword_18E1C1000, v31, v32, "%s async: method error during call: %@, num connection attempts: %lu");
      sub_18E1CC340(v25, &unk_1EABE9120, &qword_18E4E3A90);
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
      sub_18E1C9934(v69);
      v33 = sub_18E1C86D0();
      MEMORY[0x193ACD400](v33);
      sub_18E1C6164();
      MEMORY[0x193ACD400]();

      sub_18E200E40();
      v34(v7);
    }

    else
    {

      (*(v15 + 8))(v7, v13);
    }

LABEL_12:
    sub_18E223308();
    sub_18E1CE998();
    return sub_18E44ED0C();
  }

  if (!v11)
  {
    if (qword_1ED6A9020 != -1)
    {
      sub_18E1C6A1C();
      v19 = swift_once();
    }

    sub_18E1D6004(v19, qword_1ED6A9028);
    v50 = v15;
    sub_18E2244D0();
    sub_18E1D44B4();
    v51();
    v52 = v6;

    v53 = sub_18E44E80C();
    sub_18E44EE0C();
    v54 = sub_18E223CA0();
    if (os_log_type_enabled(v54, v55))
    {
      sub_18E1C9700();
      v56 = swift_slowAlloc();
      sub_18E1CA69C();
      v57 = swift_slowAlloc();
      sub_18E1CFC60(v57);
      sub_18E221814(4.8151e-34);
      sub_18E1C8F88();
      sub_18E1D5E2C();
      v58 = sub_18E1CF9A0();
      sub_18E1C9624(v58, v59, v60);
      sub_18E1D4D08();

      *(v56 + 4) = v8;
      sub_18E1D4268();
      sub_18E1D4CFC();
      swift_beginAccess();
      *(v56 + 14) = *(v52 + 16);

      sub_18E1C94FC(&dword_18E1C1000, v61, v62, "%s async: throwing neither result or error returned, num connection attempts: %lu");
      sub_18E1C9934(0);
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
      v63 = sub_18E1C86D0();
      MEMORY[0x193ACD400](v63);

      (*(v50 + 8))(v9, v13);
    }

    else
    {

      v65 = sub_18E1E11B4();
      v67(v65, v66);
    }

    sub_18E2885F0();
    sub_18E1D0098();
    swift_allocError();
    *v68 = 2;
    goto LABEL_12;
  }

  v35 = v6;
  if (qword_1ED6A9020 != -1)
  {
    sub_18E1C6A1C();
    v19 = swift_once();
  }

  sub_18E1D6004(v19, qword_1ED6A9028);
  sub_18E2244D0();
  sub_18E1D44B4();
  v36();

  v37 = sub_18E44E80C();
  sub_18E44EDFC();
  v38 = sub_18E223CA0();
  if (os_log_type_enabled(v38, v39))
  {
    sub_18E1C9700();
    v40 = swift_slowAlloc();
    sub_18E1CA69C();
    v41 = swift_slowAlloc();
    sub_18E1CFC60(v41);
    sub_18E221814(4.8151e-34);
    sub_18E1C8F88();
    sub_18E1D5E2C();
    v42 = sub_18E1CF9A0();
    sub_18E1C9624(v42, v43, v44);
    sub_18E1D4D08();

    *(v40 + 4) = v8;
    sub_18E1D4268();
    sub_18E1D4CFC();
    swift_beginAccess();
    *(v40 + 14) = *(v35 + 16);

    sub_18E1C94FC(&dword_18E1C1000, v45, v46, "%s async: method returned non-nil result, num connection attempts: %lu");
    sub_18E1C9934(0);
    sub_18E1C6164();
    MEMORY[0x193ACD400]();
    v47 = sub_18E1C86D0();
    MEMORY[0x193ACD400](v47);

    sub_18E200E40();
    v48(v12);
  }

  else
  {

    (*(v15 + 8))(v12, v13);
  }

  v64 = v11;
  sub_18E223308();
  sub_18E1CE998();
  return sub_18E44ED1C();
}

uint64_t sub_18E285B80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = sub_18E207FCC(a1, a2, a3, a4, a5, a6);
  sub_18E1C4EAC();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  sub_18E1C86C0();
  sub_18E1DD308();
  MEMORY[0x1EEE9AC00](v17);
  sub_18E1CA6A8();
  MEMORY[0x1EEE9AC00](v18);
  sub_18E1D7DC0();
  if (v10)
  {
    v20 = v10;
    if (qword_1ED6A9020 != -1)
    {
      sub_18E1C6A1C();
      v20 = swift_once();
    }

    sub_18E1D6004(v20, qword_1ED6A9028);
    sub_18E2244D0();
    sub_18E1D44B4();
    v21();

    v22 = v10;

    v23 = sub_18E44E80C();
    v24 = sub_18E44EE0C();

    if (os_log_type_enabled(v23, v24))
    {
      sub_18E1CA69C();
      swift_slowAlloc();
      v25 = sub_18E2239F0();
      sub_18E1CA69C();
      v68 = swift_slowAlloc();
      *v15 = 136315650;
      sub_18E1C8F88();
      sub_18E1D5E2C();
      v26 = sub_18E1CF9A0();
      sub_18E1C9624(v26, v27, v28);
      sub_18E1D4D08();

      sub_18E1E3770();
      v29 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 14) = v29;
      *v25 = v29;
      *(v15 + 22) = 2048;
      sub_18E1D4CFC();
      swift_beginAccess();
      v30 = *(v6 + 16);

      *(v15 + 24) = v30;

      sub_18E1E16C0(&dword_18E1C1000, v31, v32, "%s async: method error during call: %@, num connection attempts: %lu");
      sub_18E1CC340(v25, &unk_1EABE9120, &qword_18E4E3A90);
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
      sub_18E1C9934(v68);
      v33 = sub_18E1C86D0();
      MEMORY[0x193ACD400](v33);
      sub_18E1C6164();
      MEMORY[0x193ACD400]();

      sub_18E200E40();
      v34(v7);
    }

    else
    {

      (*(v15 + 8))(v7, v13);
    }

LABEL_12:
    sub_18E223308();
    sub_18E1CE998();
    return sub_18E44ED0C();
  }

  if (!v11)
  {
    if (qword_1ED6A9020 != -1)
    {
      sub_18E1C6A1C();
      v19 = swift_once();
    }

    sub_18E1D6004(v19, qword_1ED6A9028);
    v50 = v15;
    sub_18E2244D0();
    sub_18E1D44B4();
    v51();
    v52 = v6;

    v53 = sub_18E44E80C();
    sub_18E44EE0C();
    v54 = sub_18E223CA0();
    if (os_log_type_enabled(v54, v55))
    {
      sub_18E1C9700();
      v56 = swift_slowAlloc();
      sub_18E1CA69C();
      v57 = swift_slowAlloc();
      sub_18E1CFC60(v57);
      sub_18E221814(4.8151e-34);
      sub_18E1C8F88();
      sub_18E1D5E2C();
      v58 = sub_18E1CF9A0();
      sub_18E1C9624(v58, v59, v60);
      sub_18E1D4D08();

      *(v56 + 4) = v8;
      sub_18E1D4268();
      sub_18E1D4CFC();
      swift_beginAccess();
      *(v56 + 14) = *(v52 + 16);

      sub_18E1C94FC(&dword_18E1C1000, v61, v62, "%s async: throwing neither result or error returned, num connection attempts: %lu");
      sub_18E1C9934(0);
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
      v63 = sub_18E1C86D0();
      MEMORY[0x193ACD400](v63);

      (*(v50 + 8))(v9, v13);
    }

    else
    {

      v64 = sub_18E1E11B4();
      v66(v64, v65);
    }

    sub_18E2885F0();
    sub_18E1D0098();
    swift_allocError();
    *v67 = 2;
    goto LABEL_12;
  }

  v35 = v6;
  if (qword_1ED6A9020 != -1)
  {
    sub_18E1C6A1C();
    v19 = swift_once();
  }

  sub_18E1D6004(v19, qword_1ED6A9028);
  sub_18E2244D0();
  sub_18E1D44B4();
  v36();

  v37 = sub_18E44E80C();
  sub_18E44EDFC();
  v38 = sub_18E223CA0();
  if (os_log_type_enabled(v38, v39))
  {
    sub_18E1C9700();
    v40 = swift_slowAlloc();
    sub_18E1CA69C();
    v41 = swift_slowAlloc();
    sub_18E1CFC60(v41);
    sub_18E221814(4.8151e-34);
    sub_18E1C8F88();
    sub_18E1D5E2C();
    v42 = sub_18E1CF9A0();
    sub_18E1C9624(v42, v43, v44);
    sub_18E1D4D08();

    *(v40 + 4) = v8;
    sub_18E1D4268();
    sub_18E1D4CFC();
    swift_beginAccess();
    *(v40 + 14) = *(v35 + 16);

    sub_18E1C94FC(&dword_18E1C1000, v45, v46, "%s async: method returned non-nil result, num connection attempts: %lu");
    sub_18E1C9934(0);
    sub_18E1C6164();
    MEMORY[0x193ACD400]();
    v47 = sub_18E1C86D0();
    MEMORY[0x193ACD400](v47);

    sub_18E200E40();
    v48(v12);
  }

  else
  {

    (*(v15 + 8))(v12, v13);
  }

  sub_18E223308();
  sub_18E1CE998();
  return sub_18E44ED1C();
}

uint64_t sub_18E286150(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_18E44E83C();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v57 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v57 - v18;
  if (a3)
  {
    v20 = a3;
    if (qword_1ED6A9020 != -1)
    {
      swift_once();
    }

    v21 = sub_18E1C95EC(v10, qword_1ED6A9028);
    swift_beginAccess();
    (*(v11 + 16))(v19, v21, v10);

    v22 = a3;

    v23 = sub_18E44E80C();
    v24 = sub_18E44EE0C();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v58 = a5;
      v27 = v26;
      v28 = swift_slowAlloc();
      v60[0] = v28;
      *v25 = 136315650;
      v57 = v11;
      swift_beginAccess();
      v59 = v10;
      v30 = qword_1EABE9328;
      v29 = off_1EABE9330;

      v31 = sub_18E1C9624(v30, v29, v60);

      *(v25 + 4) = v31;
      *(v25 + 12) = 2112;
      v32 = a3;
      v33 = _swift_stdlib_bridgeErrorToNSError();
      *(v25 + 14) = v33;
      *v27 = v33;
      *(v25 + 22) = 2048;
      swift_beginAccess();
      v34 = *(a4 + 16);

      *(v25 + 24) = v34;

      _os_log_impl(&dword_18E1C1000, v23, v24, "%s async: method error during call: %@, num connection attempts: %lu", v25, 0x20u);
      sub_18E1CC340(v27, &unk_1EABE9120, &qword_18E4E3A90);
      MEMORY[0x193ACD400](v27, -1, -1);
      sub_18E1C9934(v28);
      MEMORY[0x193ACD400](v28, -1, -1);
      MEMORY[0x193ACD400](v25, -1, -1);

      (*(v57 + 8))(v19, v59);
    }

    else
    {

      (*(v11 + 8))(v19, v10);
    }

    v60[0] = a3;
LABEL_19:
    sub_18E2706EC(&qword_1EABE1040, &unk_18E49DC70);
    return sub_18E44ED0C();
  }

  if (a2 >> 60 == 15)
  {
    v35 = v11;
    if (qword_1ED6A9020 != -1)
    {
      swift_once();
    }

    v36 = sub_18E1C95EC(v10, qword_1ED6A9028);
    swift_beginAccess();
    (*(v35 + 16))(v14, v36, v10);

    v37 = sub_18E44E80C();
    v38 = sub_18E44EE0C();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v60[0] = v40;
      *v39 = 136315394;
      swift_beginAccess();
      v59 = v10;
      v42 = qword_1EABE9328;
      v41 = off_1EABE9330;

      v43 = sub_18E1C9624(v42, v41, v60);

      *(v39 + 4) = v43;
      *(v39 + 12) = 2048;
      swift_beginAccess();
      *(v39 + 14) = *(a4 + 16);

      _os_log_impl(&dword_18E1C1000, v37, v38, "%s async: throwing neither result or error returned, num connection attempts: %lu", v39, 0x16u);
      sub_18E1C9934(v40);
      MEMORY[0x193ACD400](v40, -1, -1);
      MEMORY[0x193ACD400](v39, -1, -1);

      (*(v35 + 8))(v14, v59);
    }

    else
    {

      (*(v35 + 8))(v14, v10);
    }

    sub_18E2885F0();
    v54 = swift_allocError();
    *v55 = 2;
    v60[0] = v54;
    goto LABEL_19;
  }

  v44 = v11;
  if (qword_1ED6A9020 != -1)
  {
    swift_once();
  }

  v45 = sub_18E1C95EC(v10, qword_1ED6A9028);
  swift_beginAccess();
  (*(v44 + 16))(v17, v45, v10);

  v46 = sub_18E44E80C();
  v47 = sub_18E44EDFC();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v58 = a5;
    v50 = v49;
    v60[0] = v49;
    *v48 = 136315394;
    LODWORD(v57) = v47;
    swift_beginAccess();
    v59 = v10;
    v52 = qword_1EABE9328;
    v51 = off_1EABE9330;

    v53 = sub_18E1C9624(v52, v51, v60);

    *(v48 + 4) = v53;
    *(v48 + 12) = 2048;
    swift_beginAccess();
    *(v48 + 14) = *(a4 + 16);

    _os_log_impl(&dword_18E1C1000, v46, v57, "%s async: method returned non-nil result, num connection attempts: %lu", v48, 0x16u);
    sub_18E1C9934(v50);
    MEMORY[0x193ACD400](v50, -1, -1);
    MEMORY[0x193ACD400](v48, -1, -1);

    (*(v44 + 8))(v17, v59);
  }

  else
  {

    (*(v44 + 8))(v17, v10);
  }

  v60[0] = a1;
  v60[1] = a2;
  sub_18E2523A0(a1, a2);
  sub_18E2706EC(&qword_1EABE1040, &unk_18E49DC70);
  return sub_18E44ED1C();
}

uint64_t sub_18E286914(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_18E44EF8C();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t sub_18E2869C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_18E2706EC(&qword_1EABE10C0, &qword_18E49DD50);
  v36 = v4;
  result = sub_18E44F16C();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_31:

LABEL_32:
    *v3 = v7;
    return result;
  }

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
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_32;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      sub_18E3F1C90(0, (v34 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = (*(v5 + 48) + 16 * v18);
    v20 = *v19;
    v21 = v19[1];
    v22 = (*(v5 + 56) + 16 * v18);
    v23 = v22[1];
    v37 = *v22;
    if ((v36 & 1) == 0)
    {
    }

    sub_18E44F48C();
    sub_18E44EB4C();
    result = sub_18E44F4CC();
    v24 = -1 << *(v7 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
    {
      break;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v14 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    v32 = (*(v7 + 48) + 16 * v27);
    *v32 = v20;
    v32[1] = v21;
    v33 = (*(v7 + 56) + 16 * v27);
    *v33 = v37;
    v33[1] = v23;
    ++*(v7 + 16);
    v5 = v35;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v28 = 0;
  v29 = (63 - v24) >> 6;
  while (++v26 != v29 || (v28 & 1) == 0)
  {
    v30 = v26 == v29;
    if (v26 == v29)
    {
      v26 = 0;
    }

    v28 |= v30;
    v31 = *(v14 + 8 * v26);
    if (v31 != -1)
    {
      v27 = __clz(__rbit64(~v31)) + (v26 << 6);
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_18E286C7C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = a4;
  a1[1] = a5;

  return a2;
}

uint64_t sub_18E286CC8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v48 = a5;
  sub_18E286FC8(a1, a2, a3, v47);
  v6 = v47[1];
  v7 = v47[3];
  v8 = v47[4];
  v42 = v47[5];
  v43 = v47[0];
  v9 = (v47[2] + 64) >> 6;

  v40 = v9;
  v41 = v6;
  if (v8)
  {
    while (1)
    {
      v44 = a4;
      v10 = v7;
LABEL_8:
      v12 = (v10 << 10) | (16 * __clz(__rbit64(v8)));
      v13 = (*(v43 + 48) + v12);
      v14 = *v13;
      v15 = v13[1];
      v16 = (*(v43 + 56) + v12);
      v17 = *v16;
      v18 = v16[1];
      v46[0] = v14;
      v46[1] = v15;
      v46[2] = v17;
      v46[3] = v18;

      v42(v45, v46);

      v19 = v45[0];
      v20 = v45[1];
      v21 = v45[2];
      v22 = v45[3];
      v23 = *v48;
      v25 = sub_18E1CBD4C();
      v26 = v23[2];
      v27 = (v24 & 1) == 0;
      v28 = v26 + v27;
      if (__OFADD__(v26, v27))
      {
        break;
      }

      v29 = v24;
      if (v23[3] >= v28)
      {
        if ((v44 & 1) == 0)
        {
          sub_18E2706EC(&qword_1EABE0DB8, &qword_18E49CE20);
          sub_18E44F0FC();
        }
      }

      else
      {
        sub_18E2869C8(v28, v44 & 1);
        v30 = sub_18E1CBD4C();
        if ((v29 & 1) != (v31 & 1))
        {
          goto LABEL_24;
        }

        v25 = v30;
      }

      v8 &= v8 - 1;
      v32 = *v48;
      if (v29)
      {

        v33 = (v32[7] + 16 * v25);
        *v33 = v21;
        v33[1] = v22;
      }

      else
      {
        v32[(v25 >> 6) + 8] |= 1 << v25;
        v34 = (v32[6] + 16 * v25);
        *v34 = v19;
        v34[1] = v20;
        v35 = (v32[7] + 16 * v25);
        *v35 = v21;
        v35[1] = v22;
        v36 = v32[2];
        v37 = __OFADD__(v36, 1);
        v38 = v36 + 1;
        if (v37)
        {
          goto LABEL_23;
        }

        v32[2] = v38;
      }

      a4 = 1;
      v7 = v10;
      v9 = v40;
      v6 = v41;
      if (!v8)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v11 = v7;
    while (1)
    {
      v10 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v10 >= v9)
      {
        sub_18E246F7C();
      }

      v8 = *(v6 + 8 * v10);
      ++v11;
      if (v8)
      {
        v44 = a4;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_18E44F41C();
  __break(1u);
  return result;
}

uint64_t sub_18E286F84@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_18E286C7C(v7, *a1, a1[1], a1[2], a1[3]);
  v4 = v7[0];
  v5 = v7[1];
  *a2 = result;
  a2[1] = v6;
  a2[2] = v4;
  a2[3] = v5;
  return result;
}

uint64_t sub_18E286FC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = -1 << *(a1 + 32);
  *a4 = a1;
  v7 = *(a1 + 64);
  result = a1 + 64;
  v6 = v7;
  v8 = ~v4;
  v9 = -v4;
  a4[1] = result;
  a4[2] = v8;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  a4[3] = 0;
  a4[4] = v10 & v6;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

uint64_t sub_18E2870F8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  v9 = sub_18E1E1774(&v12);
  (*(*(a4 - 8) + 32))(v9, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_18E1C551C(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_18E287190(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x193ACD400);
  }

  return result;
}

unint64_t sub_18E2871E8()
{
  result = qword_1EABE0510;
  if (!qword_1EABE0510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0510);
  }

  return result;
}

uint64_t sub_18E287284()
{
  sub_18E228770();
  v1(0);
  sub_18E1C4EEC();
  v2 = sub_18E1C5BFC();
  v3(v2);
  return v0;
}

uint64_t sub_18E2872DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = a4(0);
  sub_18E1C5B08(v9);
  v11 = v5 + ((*(v10 + 80) + 16) & ~*(v10 + 80));

  return a5(a1, a2, a3, v11);
}

uint64_t dispatch thunk of CatalogClient.generativeExperiencesEssentialResourcesReady()()
{
  sub_18E1C6170();
  sub_18E1C6A30();
  v5 = (*(v0 + 400) + **(v0 + 400));
  v1 = swift_task_alloc();
  v2 = sub_18E1C5EA8(v1);
  *v2 = v3;
  sub_18E1C5950(v2);

  return v5();
}

uint64_t sub_18E287814()
{
  sub_18E1C52F0();
  v2 = v1;
  sub_18E1C64F4();
  v3 = *v0;
  sub_18E1C52E0();
  *v4 = v3;

  sub_18E1C6500();

  return v5(v2);
}

uint64_t dispatch thunk of CatalogClient.enoughStorageForGenerativeExperiencesEssentialResources()()
{
  sub_18E1C6170();
  sub_18E1C6A30();
  v5 = (*(v0 + 416) + **(v0 + 416));
  v1 = swift_task_alloc();
  v2 = sub_18E1C5EA8(v1);
  *v2 = v3;
  sub_18E1C5950(v2);

  return v5();
}

uint64_t dispatch thunk of CatalogClient.useCaseResourceAvailability(by:)()
{
  sub_18E1C6170();
  sub_18E1C6A30();
  v0 = swift_task_alloc();
  v1 = sub_18E1C5EA8(v0);
  *v1 = v2;
  v3 = sub_18E1CFB58(v1);

  return v4(v3);
}

uint64_t dispatch thunk of CatalogClient.acquireCoherenceToken(identifiers:)()
{
  sub_18E1C6170();
  sub_18E1C6A30();
  v0 = swift_task_alloc();
  v1 = sub_18E1C5EA8(v0);
  *v1 = v2;
  v3 = sub_18E1CFB58(v1);

  return v4(v3);
}

{
  sub_18E1C6A30();
  return (*(v0 + 448))();
}

uint64_t dispatch thunk of CatalogClient.supportedLanguagesAndRegions(resourceBundleQuery:)()
{
  sub_18E1CAF5C();
  sub_18E1CD8B8();
  sub_18E1C6A30();
  v0 = swift_task_alloc();
  v1 = sub_18E1C2960(v0);
  *v1 = v2;
  v3 = sub_18E1E83FC(v1);

  return v4(v3);
}

uint64_t dispatch thunk of CatalogClient.availableUseCases()()
{
  sub_18E1C6170();
  v1 = v0;
  sub_18E1C6A30();
  v7 = (*(v2 + 496) + **(v2 + 496));
  v3 = swift_task_alloc();
  v4 = sub_18E1C2960(v3);
  *v4 = v5;
  v4[1] = sub_18E25E61C;

  return v7(v1);
}

uint64_t dispatch thunk of CatalogClient.availableUseCases(useCaseIdentifiers:includeAssetsInformation:)()
{
  sub_18E1CF270();
  v13 = v0;
  sub_18E1CAF5C();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  sub_18E1C6A30();
  v12 = (*(v7 + 504) + **(v7 + 504));
  v8 = swift_task_alloc();
  v9 = sub_18E1C2960(v8);
  *v9 = v10;
  v9[1] = sub_18E25E61C;

  return v12(v6, v4, v2);
}

uint64_t dispatch thunk of CatalogClient.debugInformation(options:)()
{
  sub_18E1CAF5C();
  sub_18E1CD8B8();
  sub_18E1C6A30();
  v0 = swift_task_alloc();
  v1 = sub_18E1C2960(v0);
  *v1 = v2;
  v3 = sub_18E1E83FC(v1);

  return v4(v3);
}

uint64_t dispatch thunk of CatalogClient.donateSafetyFailure(useCaseIdentifier:userIdentifier:)()
{
  sub_18E1CAF5C();
  v1 = v0;
  v3 = v2;
  sub_18E1C6A30();
  v9 = (*(v4 + 544) + **(v4 + 544));
  v5 = swift_task_alloc();
  v6 = sub_18E1C5EA8(v5);
  *v6 = v7;
  sub_18E1C5950(v6);

  return v9(v3, v1);
}

uint64_t dispatch thunk of CatalogClient.donateSafetyFailure(safetyFailure:)()
{
  sub_18E1C6170();
  sub_18E1C6A30();
  v0 = swift_task_alloc();
  v1 = sub_18E1C5EA8(v0);
  *v1 = v2;
  v3 = sub_18E1CFB58(v1);

  return v4(v3);
}

uint64_t dispatch thunk of CatalogClient.safetyFailures(userIdentifier:)()
{
  sub_18E1C6170();
  v1 = v0;
  sub_18E1C6A30();
  v7 = (*(v2 + 568) + **(v2 + 568));
  v3 = swift_task_alloc();
  v4 = sub_18E1C5EA8(v3);
  *v4 = v5;
  sub_18E1C5950(v4);

  return v7(v1);
}

uint64_t sub_18E2884F8()
{
  sub_18E1C6170();
  sub_18E1CD8B8();
  sub_18E1C64F4();
  v3 = *v2;
  sub_18E1C52E0();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v1, v0);
}

unint64_t sub_18E2885F0()
{
  result = qword_1EABE1038;
  if (!qword_1EABE1038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE1038);
  }

  return result;
}

uint64_t sub_18E2886D0(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_18E1FDFE0(result, a2);
  }

  return result;
}

uint64_t sub_18E2886E4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_18E1C4EEC();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_18E28878C()
{
  v1 = sub_18E2706EC(&qword_1EABE1058, &qword_18E49DC88);
  sub_18E1C5B08(v1);
  v2 = *(v0 + 40);
  v3 = swift_task_alloc();
  v4 = sub_18E1C2960(v3);
  *v4 = v5;
  v4[1] = sub_18E25E61C;
  v6 = sub_18E211FD0();

  return sub_18E27D9D0(v6, v7, v8, v9, v2, v10);
}

uint64_t sub_18E2888A8()
{
  sub_18E1CAF5C();
  v0 = sub_18E2706EC(&qword_1EABE1070, &qword_18E4E2CD0);
  sub_18E1C5B08(v0);
  v1 = swift_task_alloc();
  v2 = sub_18E1C2960(v1);
  *v2 = v3;
  v2[1] = sub_18E25E674;
  v4 = sub_18E211FD0();

  return sub_18E27CED4(v4, v5, v6, v7, v8);
}

uint64_t sub_18E28898C(uint64_t *a1, uint64_t *a2)
{
  sub_18E2706EC(a1, a2);
  sub_18E1C4EEC();
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v2 + v5);

  return MEMORY[0x1EEE6BDD0](v2, v5 + v6, v4 | 7);
}

uint64_t sub_18E288A30(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = sub_18E1D5BCC(a1, a2, a3);
  sub_18E1C5B08(v6);
  v8 = v5 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return a4(v4, v8);
}

uint64_t sub_18E288AA8(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_18E288AE0()
{
  sub_18E228770();
  sub_18E1E1A4C(v1, v2, v3, v4);
  sub_18E1C4EEC();
  v5 = sub_18E1C5BFC();
  v6(v5);
  return v0;
}

uint64_t sub_18E288B30()
{
  sub_18E228770();
  sub_18E1E1A4C(v1, v2, v3, v4);
  sub_18E1C4EEC();
  v5 = sub_18E1C5BFC();
  v6(v5);
  return v0;
}

uint64_t sub_18E288BE8()
{
  sub_18E228770();
  v1(0);
  sub_18E1C4EEC();
  v2 = sub_18E1C5BFC();
  v3(v2);
  return v0;
}

uint64_t sub_18E288D58(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_18E288DFC(uint64_t *a1, uint64_t *a2)
{
  sub_18E2706EC(a1, a2);
  sub_18E1C4EAC();
  v4 = *(v3 + 80);
  v6 = (*(v5 + 64) + ((v4 + 40) & ~v4) + 7) & 0xFFFFFFFFFFFFFFF8;

  v7 = sub_18E1CA27C();
  v8(v7);

  return MEMORY[0x1EEE6BDD0](v2, v6 + 16, v4 | 7);
}

uint64_t sub_18E288ED0(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, char *, uint64_t, uint64_t))
{
  v6 = sub_18E1D5BCC(a1, a2, a3);
  sub_18E1CF260(v6);
  v8 = v7;
  v10 = v9;
  v11 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v12 = *(v5 + 2);
  v13 = *(v5 + 3);
  v14 = *(v5 + 4);
  v15 = &v5[(*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8];
  v16 = *v15;
  v17 = v15[1];

  return a4(v4, v12, v13, v14, &v5[v11], v16, v17);
}

uint64_t sub_18E288F7C(uint64_t *a1, uint64_t *a2)
{
  sub_18E2706EC(a1, a2);
  sub_18E1C4EAC();

  v2 = sub_18E1CA27C();
  v3(v2);
  v4 = sub_18E1DD52C();

  return MEMORY[0x1EEE6BDD0](v4, v5, v6);
}

uint64_t sub_18E289020()
{
  sub_18E1CD8B8();
  v4 = sub_18E1E1A4C(v0, v1, v2, v3);
  sub_18E1C5B08(v4);
  v5 = sub_18E1CF658();

  return v6(v5);
}

uint64_t static AcquireCoherenceTokenResponse.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_1EABE10D0 = a1;
  return result;
}

uint64_t sub_18E289294@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EABE10D0;
  return result;
}

uint64_t sub_18E2892E0(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1EABE10D0 = v1;
  return result;
}

uint64_t sub_18E289374(unint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (sub_18E44EF8C())
    {
      goto LABEL_3;
    }

LABEL_6:
    v3 = MEMORY[0x1E69E7CC8];
    if (v2)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_18E2706EC(&qword_1EABE10C0, &qword_18E49DD50);
  v3 = sub_18E44F17C();
  if (v2)
  {
LABEL_4:
    v4 = sub_18E44F11C();
    v19 = 0;
    v5 = 0;
    v6 = 0;
    v7 = v4 | 0x8000000000000000;
    goto LABEL_11;
  }

LABEL_7:
  v8 = -1 << *(a1 + 32);
  v5 = ~v8;
  v19 = a1 + 64;
  v9 = -v8;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v6 = v10 & *(a1 + 64);
  v7 = a1;
LABEL_11:
  v11 = (v5 + 64) >> 6;

  if ((v7 & 0x8000000000000000) != 0)
  {
    if (!sub_18E44F13C())
    {
      goto LABEL_22;
    }

    sub_18E1D121C(0, &unk_1ED6A87A0, 0x1E696AEC0);
    swift_dynamicCast();
    swift_dynamicCast();
    if (!v20)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v13 = v6;
    v14 = 0;
    if (!v6)
    {
      v15 = 0;
      while (1)
      {
        v14 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v14 >= v11)
        {
          goto LABEL_22;
        }

        v13 = *(v19 + 8 * v14);
        ++v15;
        if (v13)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
      __break(1u);
      __break(1u);
      goto LABEL_24;
    }

LABEL_17:
    v16 = (v14 << 9) | (8 * __clz(__rbit64(v13)));
    v17 = *(*(v7 + 56) + v16);
    v18 = *(*(v7 + 48) + v16);
    v17;
    if (!v18)
    {
LABEL_22:
      sub_18E246F7C();

      return v3;
    }
  }

  result = sub_18E44EA9C();
LABEL_24:
  __break(1u);
  __break(1u);
  return result;
}

id AcquireCoherenceTokenResponse.__allocating_init(tokens:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC12ModelCatalog29AcquireCoherenceTokenResponse_tokens] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id AcquireCoherenceTokenResponse.init(tokens:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC12ModelCatalog29AcquireCoherenceTokenResponse_tokens] = a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

id AcquireCoherenceTokenResponse.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AcquireCoherenceTokenResponse.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void static TestCatalog.Resource.LLM.Model.TestAsset1()()
{
  sub_18E1C52FC();
  static TestCatalog.Resource.LLM.Model.TestAsset1(variant:)();
  if (v0)
  {
    sub_18E1C5EB4();
    sub_18E1C8A14();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E44F0DC();
    sub_18E1C62EC("Fatal error", v1, v2, v3, v4, "ModelCatalog/TestResources.swift");
    __break(1u);
  }
}

void static TestCatalog.Resource.LLM.Model.TestAsset1(variant:)()
{
  sub_18E1C6878();
  sub_18E1C595C();
  sub_18E2706EC(&qword_1EABE1118, &qword_18E49DD60);
  *(swift_allocObject() + 16) = xmmword_18E49D9B0;
  if (qword_1ED6A89E8 != -1)
  {
    sub_18E1C5C40(&qword_1ED6A89E8);
  }

  v1 = qword_1ED6A8958;

  if (v1 != -1)
  {
    sub_18E1C7780(&qword_1ED6A8958);
  }

  sub_18E1C7EA4(&qword_1ED6A8960);
  sub_18E1C5588();
  sub_18E1CAF68();
  sub_18E1C5790();
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v2 = swift_allocObject();
  sub_18E1C6A44(v2, xmmword_18E49D9C0);
  sub_18E1C8194();
  sub_18E1C4F68();
  *(v0 + 24) = &type metadata for AssetBackedLLMModelBase;
  *(v0 + 32) = sub_18E1E3358();
  sub_18E1C86E0();
  v3 = swift_allocObject();
  sub_18E1D603C(v3);

  sub_18E1C6694(v4, v5, v6, v7);
  if (v1)
  {
    sub_18E287190(v0);
  }

  sub_18E1CA12C();
}

void static TestCatalog.Resource.LLM.Model.TestAsset2()()
{
  sub_18E1C52FC();
  static TestCatalog.Resource.LLM.Model.TestAsset2(variant:)();
  if (v0)
  {
    sub_18E1C5EB4();
    sub_18E1C8A14();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E44F0DC();
    sub_18E1C62EC("Fatal error", v1, v2, v3, v4, "ModelCatalog/TestResources.swift");
    __break(1u);
  }
}

void static TestCatalog.Resource.LLM.Model.TestAsset2(variant:)()
{
  sub_18E1C6878();
  sub_18E1C595C();
  sub_18E2706EC(&qword_1EABE1118, &qword_18E49DD60);
  *(swift_allocObject() + 16) = xmmword_18E49D9B0;
  if (qword_1ED6A89E8 != -1)
  {
    sub_18E1C5C40(&qword_1ED6A89E8);
  }

  v1 = qword_1ED6A8958;

  if (v1 != -1)
  {
    sub_18E1C7780(&qword_1ED6A8958);
  }

  sub_18E1C7EA4(&qword_1ED6A8960);
  sub_18E1C5588();
  sub_18E1CAF68();
  sub_18E1C5790();
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v2 = swift_allocObject();
  sub_18E1C6A44(v2, xmmword_18E49D9C0);
  sub_18E1C8194();
  sub_18E1C4F68();
  *(v0 + 24) = &type metadata for AssetBackedLLMModelBase;
  *(v0 + 32) = sub_18E1E3358();
  sub_18E1C86E0();
  v3 = swift_allocObject();
  sub_18E1D603C(v3);

  sub_18E1C6694(v4, v5, v6, v7);
  if (v1)
  {
    sub_18E287190(v0);
  }

  sub_18E1CA12C();
}

void static TestCatalog.Resource.LLM.Model.TestAsset3()()
{
  sub_18E1C52FC();
  static TestCatalog.Resource.LLM.Model.TestAsset3(variant:)();
  if (v0)
  {
    sub_18E1C5EB4();
    sub_18E1C8A14();
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E44F0DC();
    sub_18E1C62EC("Fatal error", v1, v2, v3, v4, "ModelCatalog/TestResources.swift");
    __break(1u);
  }
}

void static TestCatalog.Resource.LLM.Model.TestAsset3(variant:)()
{
  sub_18E1C6878();
  sub_18E1C595C();
  sub_18E2706EC(&qword_1EABE1118, &qword_18E49DD60);
  *(swift_allocObject() + 16) = xmmword_18E49D9B0;
  if (qword_1ED6A89E8 != -1)
  {
    sub_18E1C5C40(&qword_1ED6A89E8);
  }

  v1 = qword_1ED6A8958;

  if (v1 != -1)
  {
    sub_18E1C7780(&qword_1ED6A8958);
  }

  sub_18E1C7EA4(&qword_1ED6A8960);
  sub_18E1C5588();
  sub_18E1CAF68();
  sub_18E1C5790();
  sub_18E2706EC(&unk_1EABE3AD0, &unk_18E4B7C10);
  v2 = swift_allocObject();
  sub_18E1C6A44(v2, xmmword_18E49D9C0);
  sub_18E1C8194();
  sub_18E1C4F68();
  *(v0 + 24) = &type metadata for AssetBackedLLMModelBase;
  *(v0 + 32) = sub_18E1E3358();
  sub_18E1C86E0();
  v3 = swift_allocObject();
  sub_18E1D603C(v3);

  sub_18E1C6694(v4, v5, v6, v7);
  if (v1)
  {
    sub_18E287190(v0);
  }

  sub_18E1CA12C();
}

uint64_t static TestCatalog.Resource.fetchAllResources()()
{
  sub_18E2706EC(&qword_1EABE0E98, &unk_18E4E2640);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_18E49D9C0;
  static TestCatalog.Resource.LLM.Model.TestAsset1(variant:)();
  v1 = v21;
  v2 = v22;
  v3 = sub_18E1E15F4(v20, v21);
  *(v0 + 56) = v1;
  *(v0 + 64) = *(*(v2 + 8) + 8);
  v4 = sub_18E1E1774((v0 + 32));
  (*(*(v1 - 8) + 16))(v4, v3, v1);
  static TestCatalog.Resource.LLM.Model.TestAsset2(variant:)();
  v5 = v18;
  v6 = v19;
  v7 = sub_18E1E15F4(v17, v18);
  *(v0 + 96) = v5;
  *(v0 + 104) = *(*(v6 + 8) + 8);
  v8 = sub_18E1E1774((v0 + 72));
  (*(*(v5 - 8) + 16))(v8, v7, v5);
  static TestCatalog.Resource.LLM.Model.TestAsset3(variant:)();
  v9 = v15;
  v10 = v16;
  v11 = sub_18E1E15F4(v14, v15);
  *(v0 + 136) = v9;
  *(v0 + 144) = *(*(v10 + 8) + 8);
  v12 = sub_18E1E1774((v0 + 112));
  (*(*(v9 - 8) + 16))(v12, v11, v9);
  sub_18E1C9934(v14);
  sub_18E1C9934(v17);
  sub_18E1C9934(v20);
  return v0;
}

uint64_t sub_18E28A110()
{
  result = sub_18E207C7C(&unk_1F0139578);
  qword_1EABE10F0 = result;
  return result;
}

uint64_t sub_18E28A15C()
{
  sub_18E2706EC(&unk_1EABE1160, &qword_18E49DDA0);
  result = sub_18E44E9AC();
  qword_1EABE10F8 = result;
  return result;
}

uint64_t sub_18E28A1D0()
{
  sub_18E2706EC(&unk_1EABE1160, &qword_18E49DDA0);
  result = sub_18E44E9AC();
  qword_1EABE1100 = result;
  return result;
}

uint64_t sub_18E28A244()
{
  sub_18E2706EC(&unk_1EABE1160, &qword_18E49DDA0);
  result = sub_18E44E9AC();
  qword_1EABE1108 = result;
  return result;
}

uint64_t sub_18E28A2B8()
{
  result = sub_18E28A2D8();
  qword_1EABE1110 = result;
  return result;
}

uint64_t sub_18E28A2D8()
{
  sub_18E2706EC(&qword_1EABE1120, &qword_18E49DD70);
  v0 = sub_18E44E9AC();
  sub_18E2706EC(&qword_1EABE1128, &qword_18E49DD78);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18E49D9B0;
  *(inited + 32) = 0x636972656E6567;
  *(inited + 40) = 0xE700000000000000;
  sub_18E2706EC(&qword_1EABE1130, &qword_18E49DD80);
  v2 = swift_initStackObject();
  *(v2 + 16) = xmmword_18E49D9B0;
  *(v2 + 32) = 0x65676175676E616CLL;
  *(v2 + 40) = 0xE800000000000000;
  *(v2 + 48) = 0;
  *(v2 + 56) = 0;
  *(v2 + 64) = sub_18E26C2F8;
  *(v2 + 72) = 0;
  *(v2 + 80) = &unk_1F0139780;
  sub_18E2706EC(&unk_1EABE1160, &qword_18E49DDA0);
  sub_18E28A708();
  *(inited + 48) = sub_18E44E9AC();
  sub_18E2706EC(&qword_1EABE1138, &qword_18E49DD88);
  v3 = sub_18E44E9AC();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_18E26FB04(v3, 0xD000000000000024, 0x800000018E459100, isUniquelyReferenced_nonNull_native);
  v5 = v0;
  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_18E49D9B0;
  *(v6 + 32) = 0x636972656E6567;
  *(v6 + 40) = 0xE700000000000000;
  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_18E49D9B0;
  *(v7 + 32) = 0x65676175676E616CLL;
  *(v7 + 40) = 0xE800000000000000;
  *(v7 + 48) = 0;
  *(v7 + 56) = 0;
  *(v7 + 64) = sub_18E26C2F8;
  *(v7 + 72) = 0;
  *(v7 + 80) = &unk_1F0139830;
  *(v6 + 48) = sub_18E44E9AC();
  v8 = sub_18E44E9AC();
  v9 = swift_isUniquelyReferenced_nonNull_native();
  sub_18E26FB04(v8, 0xD000000000000024, 0x800000018E459130, v9);
  v10 = swift_initStackObject();
  *(v10 + 16) = xmmword_18E49D9B0;
  *(v10 + 32) = 0x636972656E6567;
  *(v10 + 40) = 0xE700000000000000;
  v11 = swift_initStackObject();
  *(v11 + 16) = xmmword_18E49D9B0;
  *(v11 + 32) = 0x65676175676E616CLL;
  *(v11 + 40) = 0xE800000000000000;
  *(v11 + 48) = 0;
  *(v11 + 56) = 0;
  *(v11 + 64) = sub_18E26C2F8;
  *(v11 + 72) = 0;
  *(v11 + 80) = &unk_1F01398E0;
  *(v10 + 48) = sub_18E44E9AC();
  v12 = sub_18E44E9AC();
  v13 = swift_isUniquelyReferenced_nonNull_native();
  sub_18E26FB04(v12, 0xD000000000000024, 0x800000018E459160, v13);
  return v5;
}

uint64_t sub_18E28A6A0(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = a2;
  *(a1 + 24) = 2 * a2;
  type metadata accessor for UseCaseIdentifier.Metadata.Enablement.Criteria(0);
  return a1;
}

unint64_t sub_18E28A708()
{
  result = qword_1ED6A8100;
  if (!qword_1ED6A8100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8100);
  }

  return result;
}

uint64_t sub_18E28A75C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v4 = *(a1 + 16);
  if (!v4)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v43 = MEMORY[0x1E69E7CC0];
  sub_18E26F318(0, v4, 0);
  v8 = v43;
  for (i = (a1 + 40); ; i += 2)
  {
    v11 = *(i - 1);
    v10 = *i;
    v12 = *a3;
    v13 = *(*a3 + 16);

    if (v13)
    {
      v14 = sub_18E1CBD4C();
      if (v15)
      {
        v41 = *(*(v12 + 56) + 8 * v14);
        goto LABEL_21;
      }

      v38 = v8;
      v39 = v4;
    }

    else
    {
      v38 = v8;
      v39 = v4;
    }

    v16 = a4;
    v41 = *(*a4 + 16);
    swift_isUniquelyReferenced_nonNull_native();
    v17 = a3;
    v18 = *a3;
    v42 = *a3;
    v40 = v11;
    v19 = sub_18E1CBD4C();
    if (__OFADD__(*(v18 + 16), (v20 & 1) == 0))
    {
      break;
    }

    v21 = v19;
    v22 = v20;
    sub_18E2706EC(&qword_1EABE11F0, &qword_18E49E148);
    if (sub_18E44F0EC())
    {
      v23 = sub_18E1CBD4C();
      if ((v22 & 1) != (v24 & 1))
      {
        goto LABEL_29;
      }

      v21 = v23;
    }

    if (v22)
    {
      *(v42[7] + 8 * v21) = v41;
    }

    else
    {
      v42[(v21 >> 6) + 8] |= 1 << v21;
      v25 = (v42[6] + 16 * v21);
      *v25 = v11;
      v25[1] = v10;
      *(v42[7] + 8 * v21) = v41;
      v26 = v42[2];
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        goto LABEL_28;
      }

      v42[2] = v28;
    }

    a3 = v17;
    *v17 = v42;
    a4 = v16;
    v29 = *v16;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v16 = v29;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_18E264698();
      v29 = v35;
      *v16 = v35;
    }

    v8 = v38;
    v4 = v39;
    v31 = *(v29 + 16);
    if (v31 >= *(v29 + 24) >> 1)
    {
      sub_18E264698();
      v29 = v36;
    }

    *(v29 + 16) = v31 + 1;
    v32 = v29 + 16 * v31;
    *(v32 + 32) = v40;
    *(v32 + 40) = v10;
    *a4 = v29;
LABEL_21:

    v34 = *(v8 + 16);
    v33 = *(v8 + 24);
    if (v34 >= v33 >> 1)
    {
      sub_18E26F318((v33 > 1), v34 + 1, 1);
    }

    *(v8 + 16) = v34 + 1;
    *(v8 + 8 * v34 + 32) = v41;
    if (!--v4)
    {

      return v8;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  result = sub_18E44F41C();
  __break(1u);
  return result;
}

_BYTE *RawAvailableUseCases.RawAvailableUseCase.init(useCaseIdentifier:arguments:presentAssets:missingAssets:assetsReady:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  *a6 = *result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return result;
}

uint64_t static RawAvailableUseCases.RawAvailableUseCase.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v18 = *(a1 + 32);
  v6 = *(a2 + 8);
  v5 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *a2;
  v10 = sub_18E1C6DAC(*a1);
  v12 = v11;
  if (v10 == sub_18E1C6DAC(v9) && v12 == v13)
  {
  }

  else
  {
    v15 = sub_18E44F3CC();

    if ((v15 & 1) == 0)
    {
      return 0;
    }
  }

  sub_18E26D86C(v3, v6);
  if (v16)
  {
    if (v2)
    {
      if (!v5 || (sub_18E290008(v2, v5) & 1) == 0)
      {
        return 0;
      }
    }

    else if (v5)
    {
      return 0;
    }

    if (v4)
    {
      if (!v7 || (sub_18E290008(v4, v7) & 1) == 0)
      {
        return 0;
      }

      return v18 ^ v8 ^ 1u;
    }

    if (!v7)
    {
      return v18 ^ v8 ^ 1u;
    }
  }

  return 0;
}

uint64_t sub_18E28ABB8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x800000018E464040 == a2;
  if (v3 || (sub_18E44F3CC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x746E656D75677261 && a2 == 0xE900000000000073;
    if (v6 || (sub_18E44F3CC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x41746E6573657270 && a2 == 0xED00007374657373;
      if (v7 || (sub_18E44F3CC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x41676E697373696DLL && a2 == 0xED00007374657373;
        if (v8 || (sub_18E44F3CC() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x6552737465737361 && a2 == 0xEB00000000796461)
        {

          return 4;
        }

        else
        {
          v10 = sub_18E44F3CC();

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

unint64_t sub_18E28AD84(char a1)
{
  result = 0x746E656D75677261;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x41746E6573657270;
      break;
    case 3:
      result = 0x41676E697373696DLL;
      break;
    case 4:
      result = 0x6552737465737361;
      break;
    default:
      result = 0xD000000000000011;
      break;
  }

  return result;
}

uint64_t sub_18E28AE58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18E28ABB8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18E28AE80@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18E28AD7C();
  *a1 = result;
  return result;
}

uint64_t sub_18E28AEA8(uint64_t a1)
{
  v2 = sub_18E290094();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E28AEE4(uint64_t a1)
{
  v2 = sub_18E290094();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RawAvailableUseCases.RawAvailableUseCase.encode(to:)(void *a1)
{
  sub_18E2706EC(&qword_1EABE1148, &unk_18E49DD90);
  sub_18E1C4EAC();
  v5 = v4;
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v6);
  sub_18E1C57AC();
  v7 = a1[3];
  v8 = a1;
  v10 = v9;
  sub_18E1E15F4(v8, v7);
  sub_18E290094();
  sub_18E44F4EC();
  sub_18E233620();
  sub_18E1E2D10();
  sub_18E1CFB6C();
  sub_18E44F35C();
  if (!v1)
  {
    sub_18E2706EC(&unk_1EABE1150, &qword_18E49CE38);
    sub_18E291C98(&qword_1ED6A7948);
    sub_18E1E2D10();
    sub_18E1CFB6C();
    sub_18E44F35C();
    sub_18E2706EC(&unk_1EABE1160, &qword_18E49DDA0);
    sub_18E1D5C80(&unk_1EABE0088);
    sub_18E1E2D10();
    sub_18E1CFB6C();
    sub_18E44F2FC();
    sub_18E1E2D10();
    sub_18E1CFB6C();
    sub_18E44F2FC();
    sub_18E1CFB6C();
    sub_18E44F32C();
  }

  return (*(v5 + 8))(v2, v10);
}

uint64_t RawAvailableUseCases.RawAvailableUseCase.hash(into:)(const void *a1)
{
  v4 = *(v1 + 8);
  v3 = *(v1 + 16);
  v5 = *(v1 + 24);
  sub_18E1C6DAC(*v1);
  sub_18E44EB4C();

  sub_18E2704B4(a1, v4);
  if (!v3)
  {
    sub_18E44F4AC();
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_18E44F4AC();
    return sub_18E44F4AC();
  }

  sub_18E44F4AC();
  sub_18E2917A4();
  if (!v5)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_18E44F4AC();
  sub_18E2917A4();
  return sub_18E44F4AC();
}

uint64_t RawAvailableUseCases.RawAvailableUseCase.hashValue.getter()
{
  sub_18E1C630C();
  sub_18E44F48C();
  RawAvailableUseCases.RawAvailableUseCase.hash(into:)(&v1);
  return sub_18E44F4CC();
}

uint64_t RawAvailableUseCases.RawAvailableUseCase.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_18E2706EC(&unk_1EABE1170, &qword_18E49DDA8);
  sub_18E1C4EAC();
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v5);
  sub_18E1E15F4(a1, a1[3]);
  sub_18E290094();
  sub_18E44F4DC();
  if (v2)
  {
    return sub_18E1C9934(a1);
  }

  sub_18E200894();
  sub_18E1C8C54();
  sub_18E44F26C();
  sub_18E2706EC(&unk_1EABE1150, &qword_18E49CE38);
  sub_18E291C98(&qword_1ED6A7940);
  sub_18E1C8C54();
  sub_18E44F26C();
  sub_18E2706EC(&unk_1EABE1160, &qword_18E49DDA0);
  sub_18E1D5C80(&unk_1ED6A8378);
  sub_18E1C650C();
  sub_18E1C8C54();
  sub_18E44F20C();
  sub_18E1C650C();
  sub_18E1C8C54();
  sub_18E44F20C();
  sub_18E1C8C54();
  v7 = sub_18E44F23C();
  v8 = sub_18E1C5C60();
  v9(v8);
  *a2 = v10;
  *(a2 + 8) = v10;
  *(a2 + 16) = v10;
  *(a2 + 24) = v10;
  *(a2 + 32) = v7 & 1;

  sub_18E1C9934(a1);
}

uint64_t sub_18E28B66C()
{
  sub_18E1C630C();
  sub_18E44F48C();
  RawAvailableUseCases.RawAvailableUseCase.hash(into:)(&v1);
  return sub_18E44F4CC();
}

void sub_18E28B6F4(uint64_t a1, uint64_t a2)
{
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v3 = 0;
    v4 = a1 + 56;
    v5 = 1 << *(a1 + 32);
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    else
    {
      v6 = -1;
    }

    v7 = v6 & *(a1 + 56);
    v8 = (v5 + 63) >> 6;
    v52 = a2 + 56;
    if (v7)
    {
LABEL_7:
      v42 = v8;
      v43 = v4;
      v9 = __clz(__rbit64(v7));
      v41 = (v7 - 1) & v7;
LABEL_13:
      v44 = a1;
      v12 = *(a1 + 48) + 40 * (v9 | (v3 << 6));
      v13 = *v12;
      v14 = *(v12 + 8);
      v15 = *(v12 + 16);
      v16 = *(v12 + 24);
      LODWORD(v12) = *(v12 + 32);
      v51 = v13;
      v54 = v13;
      v55 = v14;
      v56 = v15;
      v57 = v16;
      v46 = v12;
      v58 = v12;
      sub_18E44F48C();
      v47 = v16;

      v49 = v14;

      v48 = v15;

      RawAvailableUseCases.RawAvailableUseCase.hash(into:)(v53);
      v17 = sub_18E44F4CC();
      v18 = -1 << *(a2 + 32);
      v19 = v17 & ~v18;
      if ((*(v52 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19))
      {
        v50 = ~v18;
        v45 = (v16 + 40);
        do
        {
          v20 = *(a2 + 48) + 40 * v19;
          v22 = *(v20 + 8);
          v21 = *(v20 + 16);
          v23 = *(v20 + 24);
          v24 = *(v20 + 32);
          v25 = sub_18E1C6DAC(*v20);
          v27 = v26;
          if (v25 == sub_18E1C6DAC(v51) && v27 == v28)
          {
          }

          else
          {
            v30 = sub_18E44F3CC();

            if ((v30 & 1) == 0)
            {
              goto LABEL_54;
            }
          }

          sub_18E26D86C(v22, v49);
          if ((v31 & 1) == 0)
          {
            goto LABEL_54;
          }

          if (v21)
          {
            if (!v48)
            {
              goto LABEL_54;
            }

            v32 = *(v21 + 16);
            if (v32 != *(v48 + 16))
            {
              goto LABEL_54;
            }

            if (v32)
            {
              v33 = v21 == v48;
            }

            else
            {
              v33 = 1;
            }

            if (!v33)
            {
              v34 = (v21 + 40);
              v35 = (v48 + 40);
              while (v32)
              {
                v36 = *(v34 - 1) == *(v35 - 1) && *v34 == *v35;
                if (!v36 && (sub_18E44F3CC() & 1) == 0)
                {
                  goto LABEL_54;
                }

                v34 += 2;
                v35 += 2;
                if (!--v32)
                {
                  goto LABEL_40;
                }
              }

              __break(1u);
              goto LABEL_67;
            }
          }

          else if (v48)
          {
            goto LABEL_54;
          }

LABEL_40:
          if (v23)
          {
            if (!v47)
            {
              goto LABEL_54;
            }

            v37 = *(v23 + 16);
            if (v37 != *(v47 + 16))
            {
              goto LABEL_54;
            }

            if (v37 && v23 != v47)
            {
              v38 = (v23 + 40);
              v39 = v45;
              while (1)
              {
                v40 = *(v38 - 1) == *(v39 - 1) && *v38 == *v39;
                if (!v40 && (sub_18E44F3CC() & 1) == 0)
                {
                  break;
                }

                v38 += 2;
                v39 += 2;
                if (!--v37)
                {
                  goto LABEL_52;
                }
              }

LABEL_54:

              goto LABEL_55;
            }

LABEL_52:

            if (v46 == v24)
            {
              goto LABEL_61;
            }
          }

          else
          {

            if (!v47 && ((v46 ^ v24) & 1) == 0)
            {
LABEL_61:

              v4 = v43;
              a1 = v44;
              v7 = v41;
              v8 = v42;
              if (v41)
              {
                goto LABEL_7;
              }

              goto LABEL_8;
            }
          }

LABEL_55:
          v19 = (v19 + 1) & v50;
        }

        while (((*(v52 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) != 0);
      }
    }

    else
    {
LABEL_8:
      v10 = v3;
      while (1)
      {
        v3 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        if (v3 >= v8)
        {
          return;
        }

        v11 = *(v4 + 8 * v3);
        ++v10;
        if (v11)
        {
          v42 = v8;
          v43 = v4;
          v9 = __clz(__rbit64(v11));
          v41 = (v11 - 1) & v11;
          goto LABEL_13;
        }
      }

LABEL_67:
      __break(1u);
      __break(1u);
    }
  }
}

uint64_t sub_18E28BB7C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = a2;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v26 = result + 56;
  v27 = result;
  v25 = v8;
  if (!v7)
  {
    goto LABEL_8;
  }

  do
  {
    v10 = __clz(__rbit64(v7));
    v28 = (v7 - 1) & v7;
LABEL_13:
    v13 = *(result + 48) + 24 * (v10 | (v3 << 6));
    v15 = *v13;
    v14 = *(v13 + 8);
    v16 = *(v13 + 16);
    sub_18E44F48C();

    sub_18E44EB4C();
    if (v16 != 2)
    {
      sub_18E44F4AC();
    }

    sub_18E44F4AC();
    v17 = sub_18E44F4CC();
    v18 = -1 << *(v2 + 32);
    v19 = v17 & ~v18;
    if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
    {
LABEL_32:

      return 0;
    }

    v20 = ~v18;
    v21 = *(a2 + 48);
    while (1)
    {
      v22 = v21 + 24 * v19;
      v23 = *(v22 + 16);
      v24 = *v22 == v15 && *(v22 + 8) == v14;
      if (!v24 && (sub_18E44F3CC() & 1) == 0)
      {
        goto LABEL_27;
      }

      if (v23 != 2)
      {
        break;
      }

      if (v16 == 2)
      {
        goto LABEL_29;
      }

LABEL_27:
      v19 = (v19 + 1) & v20;
      if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        goto LABEL_32;
      }
    }

    if (v16 == 2 || ((v23 ^ v16) & 1) != 0)
    {
      goto LABEL_27;
    }

LABEL_29:

    v7 = v28;
    v2 = a2;
    v4 = v26;
    result = v27;
    v8 = v25;
  }

  while (v28);
LABEL_8:
  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v28 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void sub_18E28BDB0()
{
  sub_18E1C575C();
  if (v0 == v1)
  {
    goto LABEL_61;
  }

  v2 = v1;
  v3 = v0;
  if (*(v0 + 16) != *(v1 + 16))
  {
    goto LABEL_61;
  }

  v4 = 0;
  v5 = v0 + 56;
  v6 = 1 << *(v0 + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(v0 + 56);
  v9 = (v6 + 63) >> 6;
  v10 = v1 + 56;
  if (!v8)
  {
    goto LABEL_8;
  }

  do
  {
    v11 = __clz(__rbit64(v8));
    v12 = (v8 - 1) & v8;
LABEL_13:
    v15 = (*(v3 + 48) + ((v11 | (v4 << 6)) << 6));
    v17 = v15[1];
    v16 = v15[2];
    v18 = *v15;
    *(v122 + 10) = *(v15 + 42);
    v121 = v17;
    v122[0] = v16;
    v120 = v18;
    v117 = *v15;
    v118 = v15[1];
    v119[0] = v15[2];
    *(v119 + 10) = *(v15 + 42);
    sub_18E44F48C();
    sub_18E27418C(&v120, &v106);
    ExecutionContext.hash(into:)();
    v19 = sub_18E44F4CC();
    v26 = -1 << *(v2 + 32);
    v27 = v19 & ~v26;
    if (((*(v10 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
    {
LABEL_60:
      sub_18E2741E8(&v120);
LABEL_61:
      sub_18E1C5544();
      return;
    }

    v69 = v12;
    v71 = v9;
    v73 = v5;
    v75 = v3;
    v28 = ~v26;
    HIDWORD(v77) = BYTE9(v122[1]);
    v29 = v120;
    v30 = v121;
    v79 = *(&v121 + 1);
    v81 = ~v26;
    v83 = v10;
    v85 = *&v122[0];
    v67 = *&v122[1];
    HIDWORD(v65) = BYTE8(v122[1]);
    v105 = *(&v122[0] + 1);
    v63 = *(&v122[0] + 1) + 40;
    while (1)
    {
      v31 = (*(v2 + 48) + (v27 << 6));
      v33 = v31[1];
      v32 = v31[2];
      v34 = *(v31 + 42);
      v114 = *v31;
      v115 = v33;
      *&v116[10] = v34;
      *v116 = v32;
      v36 = *(&v114 + 1);
      v35 = v114;
      v37 = v33;
      if (v114 != v29 || *(&v114 + 1) != *(&v29 + 1))
      {
        v35 = sub_18E44F3CC();
        if ((v35 & 1) == 0)
        {
          goto LABEL_55;
        }
      }

      if (v37 == 2)
      {
        if (v30 != 2)
        {
          goto LABEL_55;
        }
      }

      else if (v30 == 2 || ((v37 ^ v30) & 1) != 0)
      {
        goto LABEL_55;
      }

      v39 = *&v116[8];
      if (!*&v116[8])
      {
        break;
      }

      v40 = *(&v115 + 1);
      if (!v105)
      {
        LOBYTE(v110) = v116[24];
        sub_18E211288(v35, v36, v20, v21, v22, v23, v24, v25, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v91, v95, v99, v102, v103, 0, *(&v115 + 1), *v116, *&v116[8], *&v116[16], v110, v111, v112, v113);
        swift_bridgeObjectRetain_n();
        sub_18E292124(&v106);
        v28 = v81;
        v10 = v83;
        goto LABEL_52;
      }

      HIDWORD(v102) = v116[24];
      v104 = *&v116[16];
      v96 = *v116 >> 24;
      v100 = HIDWORD(*v116);
      v88 = *v116 >> 8;
      v92 = *v116 >> 16;
      if (*(&v115 + 1) != v79)
      {
        goto LABEL_46;
      }

      if ((*v116 ^ v85))
      {
        goto LABEL_46;
      }

      if (((v85 >> 8) & 1 ^ (*v116 >> 8)))
      {
        goto LABEL_46;
      }

      if (((v85 >> 16) & 1 ^ HIWORD(*v116)))
      {
        goto LABEL_46;
      }

      if (((v85 >> 24) & 1 ^ HIBYTE(*v116)))
      {
        goto LABEL_46;
      }

      if ((BYTE4(v85) & 1 ^ *&v116[4]))
      {
        goto LABEL_46;
      }

      v41 = *(*&v116[8] + 16);
      if (v41 != *(v105 + 16))
      {
        goto LABEL_46;
      }

      if (v41 && *&v116[8] != v105)
      {
        v42 = (*&v116[8] + 40);
        v43 = v63;
        while (1)
        {
          v35 = *(v42 - 1);
          v36 = *v42;
          v20 = *(v43 - 1);
          v21 = *v43;
          if (v35 != v20 || v36 != v21)
          {
            v59 = v42;
            v61 = v41;
            v57 = v43;
            v35 = sub_18E44F3CC();
            v43 = v57;
            v42 = v59;
            v41 = v61;
            if ((v35 & 1) == 0)
            {
              break;
            }
          }

          v42 += 2;
          v43 += 2;
          if (!--v41)
          {
            goto LABEL_43;
          }
        }

LABEL_46:
        sub_18E211288(v35, v36, v20, v21, v22, v23, v24, v25, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v88, v92, v96, v100, v102, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113);
        v45 = swift_bridgeObjectRetain_n();
        goto LABEL_47;
      }

LABEL_43:
      sub_18E211288(v35, v36, v20, v21, v22, v23, v24, v25, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v88, v92, v96, v100, v102, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113);
      v45 = swift_bridgeObjectRetain_n();
      if (v103 == v68)
      {
        v53 = BYTE4(v102) ^ BYTE4(v66);
        *&v117 = v80;
        sub_18E1C66B4(v45, v46, v47, v48, v49, v50, v51, v52, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v89, v90, v93, v94, v97, v98, v101);
        *&v118 = v39;
        *(&v118 + 1) = v67;
        LOBYTE(v119[0]) = v54;
        sub_18E292124(&v117);

        if ((v53 & 1) == 0)
        {
          v28 = v81;
          v10 = v83;
          goto LABEL_54;
        }

        goto LABEL_48;
      }

LABEL_47:
      *&v117 = v40;
      sub_18E1C66B4(v45, v46, v47, v48, v49, v50, v51, v52, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v89, v90, v93, v94, v97, v98, v101);
      *&v118 = v39;
      *(&v118 + 1) = v55;
      LOBYTE(v119[0]) = BYTE4(v102);
      sub_18E292124(&v117);

LABEL_48:
      sub_18E2741E8(&v114);
      v28 = v81;
      v10 = v83;
LABEL_55:
      v27 = (v27 + 1) & v28;
      if (((*(v10 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
      {
        goto LABEL_60;
      }
    }

    if (v105)
    {
      sub_18E211288(v35, v36, v20, v21, v22, v23, v24, v25, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v91, v95, v99, v102, v103, v105, v106, v107, v108, v109, v110, v111, v112, v113);

LABEL_52:

      sub_18E2741E8(&v114);
      goto LABEL_55;
    }

    sub_18E211288(v35, v36, v20, v21, v22, v23, v24, v25, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v91, v95, v99, v102, v103, 0, v106, v107, v108, v109, v110, v111, v112, v113);

LABEL_54:
    v56 = v116[25];
    sub_18E2741E8(&v114);
    if (v56 != HIDWORD(v77))
    {
      goto LABEL_55;
    }

    sub_18E2741E8(&v120);
    v5 = v73;
    v3 = v75;
    v8 = v69;
    v9 = v71;
  }

  while (v69);
LABEL_8:
  v13 = v4;
  while (1)
  {
    v4 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      goto LABEL_61;
    }

    v14 = *(v5 + 8 * v4);
    ++v13;
    if (v14)
    {
      v11 = __clz(__rbit64(v14));
      v12 = (v14 - 1) & v14;
      goto LABEL_13;
    }
  }

  __break(1u);
  __break(1u);
}

uint64_t RawAvailableUseCases.hashValue.getter()
{
  v1 = *v0;
  sub_18E44F48C();
  sub_18E291068(__src, v1);
  return sub_18E44F4CC();
}

uint64_t sub_18E28C2C4(uint64_t a1)
{
  v2 = *v1;
  sub_18E44F48C();
  sub_18E291068(__src, v2);
  return sub_18E44F4CC();
}

void RawAvailableUseCases.init(from:)(void *a1@<X0>, void *a2@<X8>)
{
  v3 = a1;
  sub_18E1E4398(a1, &v45);
  v5 = sub_18E28D9C8(&v45);
  if (v2)
  {
    sub_18E1C9934(v3);
    return;
  }

  v9 = v5;
  v10 = v6;
  v11 = v8;
  v43 = v7;
  v50 = MEMORY[0x1E69E7CD0];
  v40 = *(v8 + 16);
  if (!v40)
  {

LABEL_35:

    sub_18E1C9934(v3);
    *a2 = v50;
    return;
  }

  v35 = v3;
  v36 = a2;
  v38 = v5 + 32;
  v39 = v8 + 32;
  v37 = v6 + 32;
  v12 = v7 + 32;

  v13 = 0;
  while (v13 < *(v11 + 16))
  {
    v14 = (v39 + 40 * v13);
    v15 = *v14;
    if ((*v14 & 0x8000000000000000) != 0)
    {
      goto LABEL_41;
    }

    if (v15 >= *(v9 + 16))
    {
      goto LABEL_42;
    }

    v16 = v14[1];
    if ((v16 & 0x8000000000000000) != 0)
    {
      goto LABEL_43;
    }

    if (v16 >= *(v10 + 16))
    {
      goto LABEL_44;
    }

    v17 = v14[2];
    LOBYTE(v18) = *(v14 + 32);
    v42 = *(v38 + v15);
    v44 = v14[3];
    v41 = *(v37 + 8 * v16);
    if (v17)
    {
      v19 = *(v17 + 16);
      if (v19)
      {
        v45 = MEMORY[0x1E69E7CC0];

        v20 = v17;
        sub_18E1E2B44();
        v21 = v43;
        v22 = v45;
        v18 = v20 + 32;
        while (1)
        {
          v24 = *v18;
          v18 += 8;
          v23 = v24;
          if ((v24 & 0x8000000000000000) != 0)
          {
            break;
          }

          if (v23 >= *(v21 + 16))
          {
            goto LABEL_37;
          }

          v25 = (v12 + 16 * v23);
          v11 = *v25;
          v9 = v25[1];
          v45 = v22;
          v13 = *(v22 + 16);
          v26 = *(v22 + 24);
          v10 = v13 + 1;

          if (v13 >= v26 >> 1)
          {
            sub_18E1E1CB4();
            v21 = v43;
            v22 = v45;
          }

          *(v22 + 16) = v10;
          v27 = v22 + 16 * v13;
          *(v27 + 32) = v11;
          *(v27 + 40) = v9;
          if (!--v19)
          {
            sub_18E1E6630();
            goto LABEL_22;
          }
        }

        __break(1u);
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      v22 = MEMORY[0x1E69E7CC0];
LABEL_22:
      v28 = v44;
      if (!v44)
      {
LABEL_20:

        v29 = 0;
        goto LABEL_32;
      }
    }

    else
    {

      v28 = v44;
      v22 = 0;
      if (!v44)
      {
        goto LABEL_20;
      }
    }

    v30 = *(v28 + 16);
    if (v30)
    {
      v45 = MEMORY[0x1E69E7CC0];
      sub_18E1E2B44();
      v29 = v45;
      v18 = 32;
      while (1)
      {
        v31 = *(v44 + v18);
        if ((v31 & 0x8000000000000000) != 0)
        {
          break;
        }

        if (v31 >= *(v43 + 16))
        {
          goto LABEL_39;
        }

        v32 = (v12 + 16 * v31);
        v11 = *v32;
        v9 = v32[1];
        v45 = v29;
        v13 = *(v29 + 16);
        v33 = *(v29 + 24);
        v10 = v13 + 1;

        if (v13 >= v33 >> 1)
        {
          sub_18E1E1CB4();
          v29 = v45;
        }

        *(v29 + 16) = v10;
        v34 = v29 + 16 * v13;
        *(v34 + 32) = v11;
        *(v34 + 40) = v9;
        v18 += 8;
        if (!--v30)
        {

          sub_18E1E6630();
          goto LABEL_32;
        }
      }

LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
      break;
    }

    v29 = MEMORY[0x1E69E7CC0];
LABEL_32:
    ++v13;
    LOBYTE(v46) = v42;
    *(&v46 + 1) = v41;
    v47 = v22;
    v48 = v29;
    v49 = v18;
    sub_18E274878(&v45, &v46);

    if (v13 == v40)
    {
      swift_bridgeObjectRelease_n();
      v3 = v35;
      a2 = v36;
      goto LABEL_35;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
}

uint64_t RawAvailableUseCases.encode(to:)(void *a1)
{
  v2 = *v1;
  sub_18E2871E8();
  v3 = MEMORY[0x1E69E7CC0];
  v4 = sub_18E44E9AC();
  sub_18E2706EC(&unk_1EABE1150, &qword_18E49CE38);
  sub_18E291CFC();
  v74 = sub_18E44E9AC();
  v82 = sub_18E44E9AC();
  v81 = v3;
  v5 = v2 + 56;
  sub_18E1C7734();
  v8 = v7 & v6;
  v10 = (v9 + 63) >> 6;
  v76 = v2;

  v11 = 0;
  v12 = v3;
  v13 = v3;
  v68 = v10;
  v69 = v2 + 56;
  if (!v8)
  {
    goto LABEL_2;
  }

  do
  {
LABEL_6:
    v15 = (*(v76 + 48) + 40 * (__clz(__rbit64(v8)) | (v11 << 6)));
    v16 = *v15;
    v18 = *(v15 + 1);
    v17 = *(v15 + 2);
    v73 = v15[32];
    v19 = *(v4 + 16);
    v72 = *(v15 + 3);

    v71 = v17;

    v77 = v16;
    if (v19 && (v20 = sub_18E26DBE8(v16), v16 = v16, (v21 & 1) != 0))
    {
      v75 = *(*(v4 + 56) + 8 * v20);
    }

    else
    {
      v75 = *(v3 + 16);
      swift_isUniquelyReferenced_nonNull_native();
      v80 = v4;
      v22 = sub_18E26DBE8(v16);
      if (__OFADD__(*(v4 + 16), (v23 & 1) == 0))
      {
        goto LABEL_50;
      }

      v24 = v22;
      v25 = v23;
      sub_18E2706EC(&qword_1EABE1180, &qword_18E49DDB0);
      if (sub_18E44F0EC())
      {
        v26 = sub_18E26DBE8(v16);
        if ((v25 & 1) != (v27 & 1))
        {
          goto LABEL_54;
        }

        v24 = v26;
      }

      if (v25)
      {
        *(*(v80 + 56) + 8 * v24) = v75;
        v4 = v80;
      }

      else
      {
        sub_18E1CF284(v80 + 8 * (v24 >> 6));
        *(v28[6] + v24) = v29;
        *(v28[7] + 8 * v24) = v75;
        v30 = v28[2];
        v31 = __OFADD__(v30, 1);
        v32 = v30 + 1;
        if (v31)
        {
          goto LABEL_52;
        }

        v4 = v28;
        v28[2] = v32;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v56 = sub_18E1C6868();
        sub_18E3EFDF0(v56, v57, v58, v3);
        v3 = v59;
      }

      v34 = *(v3 + 16);
      v33 = *(v3 + 24);
      if (v34 >= v33 >> 1)
      {
        v60 = sub_18E1C84F8(v33);
        sub_18E3EFDF0(v60, v61, v62, v3);
        v3 = v63;
      }

      *(v3 + 16) = v34 + 1;
      *(v3 + v34 + 32) = v77;
    }

    v79 = v3;
    if (v74[2] && (v35 = sub_18E26DC70(v18), (v36 & 1) != 0))
    {
      v37 = v35;

      v78 = *(v74[7] + 8 * v37);
    }

    else
    {
      v78 = *(v12 + 16);
      swift_isUniquelyReferenced_nonNull_native();
      v70 = v18;
      v38 = sub_18E26DC70(v18);
      if (__OFADD__(v74[2], (v39 & 1) == 0))
      {
        goto LABEL_51;
      }

      v40 = v38;
      v41 = v39;
      sub_18E2706EC(&qword_1EABE1188, &qword_18E49DDB8);
      if (sub_18E44F0EC())
      {
        v42 = sub_18E26DC70(v70);
        if ((v41 & 1) != (v43 & 1))
        {
          goto LABEL_54;
        }

        v40 = v42;
      }

      if (v41)
      {
        *(v74[7] + 8 * v40) = v78;
        v44 = v70;
      }

      else
      {
        sub_18E1CF284(&v74[v40 >> 6]);
        v44 = v70;
        *(v74[6] + 8 * v40) = v70;
        *(v74[7] + 8 * v40) = v78;
        v45 = v74[2];
        v31 = __OFADD__(v45, 1);
        v46 = v45 + 1;
        if (v31)
        {
          goto LABEL_53;
        }

        v74[2] = v46;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_18E1C6868();
        sub_18E3EFEC8();
        v12 = v64;
      }

      v48 = *(v12 + 16);
      v47 = *(v12 + 24);
      if (v48 >= v47 >> 1)
      {
        sub_18E1C84F8(v47);
        sub_18E3EFEC8();
        v12 = v65;
      }

      *(v12 + 16) = v48 + 1;
      *(v12 + 8 * v48 + 32) = v44;
    }

    v49 = v71;
    if (v71)
    {

      v49 = sub_18E28A75C(v71, v76, &v82, &v81);
    }

    v50 = v72;
    if (v72)
    {

      v50 = sub_18E28A75C(v72, v76, &v82, &v81);
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_18E1C6868();
      sub_18E3EFE18();
      v13 = v54;
    }

    v52 = *(v13 + 16);
    v51 = *(v13 + 24);
    if (v52 >= v51 >> 1)
    {
      sub_18E1C84F8(v51);
      sub_18E3EFE18();
      v13 = v55;
    }

    v8 &= v8 - 1;
    *(v13 + 16) = v52 + 1;
    v53 = v13 + 40 * v52;
    *(v53 + 32) = v75;
    *(v53 + 40) = v78;
    *(v53 + 48) = v49;
    *(v53 + 56) = v50;
    *(v53 + 64) = v73;
    v3 = v79;
    v10 = v68;
    v5 = v69;
  }

  while (v8);
LABEL_2:
  while (1)
  {
    v14 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v14 >= v10)
    {

      sub_18E28D6DC(a1, v3, v12, v81, v13);
    }

    v8 = *(v5 + 8 * v14);
    ++v11;
    if (v8)
    {
      v11 = v14;
      goto LABEL_6;
    }
  }

  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  result = sub_18E44F41C();
  __break(1u);
  return result;
}

uint64_t sub_18E28CD50(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000016 && 0x800000018E464080 == a2;
  if (v4 || (sub_18E44F3CC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x746E656D75677261 && a2 == 0xEE007865646E4973;
    if (v6 || (sub_18E44F3CC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000013 && 0x800000018E4640A0 == a2;
      if (v7 || (sub_18E44F3CC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000013 && 0x800000018E4640C0 == a2;
        if (v8 || (sub_18E44F3CC() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x6552737465737361 && a2 == 0xEB00000000796461)
        {

          return 4;
        }

        else
        {
          v10 = sub_18E44F3CC();

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

unint64_t sub_18E28CF08(char a1)
{
  result = 0x746E656D75677261;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0xD000000000000013;
      break;
    case 4:
      result = 0x6552737465737361;
      break;
    default:
      result = 0xD000000000000016;
      break;
  }

  return result;
}

uint64_t sub_18E28CFC0(void *a1)
{
  v3 = v1;
  v5 = sub_18E2706EC(&unk_1EABE1208, &qword_18E49E390);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  sub_18E1E15F4(a1, a1[3]);
  sub_18E292890();
  sub_18E44F4EC();
  LOBYTE(v11) = 0;
  sub_18E44F34C();
  if (!v2)
  {
    LOBYTE(v11) = 1;
    sub_18E44F34C();
    v11 = *(v3 + 16);
    HIBYTE(v10) = 2;
    sub_18E2706EC(&unk_1EABE1218, &qword_18E49E398);
    sub_18E2928E4();
    sub_18E44F2FC();
    v11 = *(v3 + 24);
    HIBYTE(v10) = 3;
    sub_18E44F2FC();
    LOBYTE(v11) = 4;
    sub_18E44F32C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_18E28D1DC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_18E2706EC(&unk_1EABE1228, &qword_18E49E3A0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - v7;
  sub_18E1E15F4(a1, a1[3]);
  sub_18E292890();
  sub_18E44F4DC();
  if (v2)
  {
    return sub_18E1C9934(a1);
  }

  LOBYTE(v21) = 0;
  v9 = sub_18E44F25C();
  LOBYTE(v21) = 1;
  v10 = sub_18E44F25C();
  v18 = a2;
  sub_18E2706EC(&unk_1EABE1218, &qword_18E49E398);
  v20 = 2;
  v19 = sub_18E292960();
  sub_18E44F20C();
  v17 = v10;
  v11 = v21;
  v20 = 3;
  sub_18E44F20C();
  v12 = v21;
  LOBYTE(v21) = 4;
  v13 = sub_18E44F23C();
  (*(v6 + 8))(v8, v5);
  result = sub_18E1C9934(a1);
  v15 = v17;
  v16 = v18;
  *v18 = v9;
  v16[1] = v15;
  v16[2] = v11;
  v16[3] = v12;
  *(v16 + 32) = v13 & 1;
  return result;
}

uint64_t sub_18E28D4A8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000012 && 0x800000018E464060 == a2;
  if (v3 || (sub_18E44F3CC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x746E656D75677261 && a2 == 0xE900000000000073;
    if (v6 || (sub_18E44F3CC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x737465737361 && a2 == 0xE600000000000000;
      if (v7 || (sub_18E44F3CC() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x7365736143657375 && a2 == 0xE800000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_18E44F3CC();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_18E28D60C(unsigned __int8 a1)
{
  sub_18E44F48C();
  MEMORY[0x193ACCC20](a1);
  return sub_18E44F4CC();
}

unint64_t sub_18E28D654(char a1)
{
  result = 0x746E656D75677261;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x737465737361;
      break;
    case 3:
      result = 0x7365736143657375;
      break;
    default:
      result = 0xD000000000000012;
      break;
  }

  return result;
}

uint64_t sub_18E28D6DC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = a3;
  v17 = a5;
  v9 = sub_18E2706EC(&unk_1EABE11C8, &qword_18E49E128);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v15 - v11;
  sub_18E1E15F4(a1, a1[3]);
  sub_18E292230();
  sub_18E44F4EC();
  v19 = a2;
  v18 = 0;
  sub_18E2706EC(&unk_1EABE11D8, &unk_18E49E130);
  sub_18E292380(&unk_1EABDF730);
  sub_18E44F35C();
  if (!v5)
  {
    v13 = v17;
    v19 = v16;
    v18 = 1;
    sub_18E2706EC(&qword_1EABE1090, &qword_18E4E3AA0);
    sub_18E292284();
    sub_18E44F35C();
    v19 = a4;
    v18 = 2;
    sub_18E2706EC(&unk_1EABE1160, &qword_18E49DDA0);
    sub_18E1D5C80(&unk_1EABE0088);
    sub_18E44F35C();
    v19 = v13;
    v18 = 3;
    sub_18E2706EC(&qword_1EABE11E8, &qword_18E49E140);
    sub_18E292494(&unk_1EABDF710);
    sub_18E44F35C();
  }

  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_18E28D9C8(void *a1)
{
  v3 = sub_18E2706EC(&qword_1EABE11F8, qword_18E49E150);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - v5;
  v7 = a1[3];
  sub_18E1E15F4(a1, v7);
  sub_18E292230();
  sub_18E44F4DC();
  if (!v1)
  {
    sub_18E2706EC(&unk_1EABE11D8, &unk_18E49E130);
    v10 = 0;
    sub_18E292380(&unk_1EABDF720);
    sub_18E44F26C();
    v7 = v11;
    sub_18E2706EC(&qword_1EABE1090, &qword_18E4E3AA0);
    v10 = 1;
    sub_18E2923EC();
    sub_18E44F26C();
    sub_18E2706EC(&unk_1EABE1160, &qword_18E49DDA0);
    v10 = 2;
    sub_18E1D5C80(&unk_1ED6A8378);
    v9 = 0;
    sub_18E44F26C();
    sub_18E2706EC(&qword_1EABE11E8, &qword_18E49E140);
    v10 = 3;
    sub_18E292494(&unk_1EABDF700);
    sub_18E44F26C();
    (*(v4 + 8))(v6, v3);
  }

  sub_18E1C9934(a1);
  return v7;
}

uint64_t sub_18E28DD9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18E28CD50(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18E28DDC4(uint64_t a1)
{
  v2 = sub_18E292890();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E28DE00(uint64_t a1)
{
  v2 = sub_18E292890();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_18E28DE3C@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_18E28D1DC(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_18E28DEC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  v6 = *v4;
  sub_18E44F48C();
  a4(v8, v6);
  return sub_18E44F4CC();
}

uint64_t sub_18E28DF14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18E28D4A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18E28DF3C(uint64_t a1)
{
  v2 = sub_18E292230();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E28DF78(uint64_t a1)
{
  v2 = sub_18E292230();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18E28DFB4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_18E28D9C8(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

id AvailableUseCasesWrapper.__allocating_init(rawAvailableUseCases:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC12ModelCatalog24AvailableUseCasesWrapper_rawAvailableUseCases] = *a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id AvailableUseCasesWrapper.init(rawAvailableUseCases:)(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC12ModelCatalog24AvailableUseCasesWrapper_rawAvailableUseCases] = *a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t static AvailableUseCasesWrapper.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_1EABE1140 = a1;
  return result;
}

uint64_t sub_18E28E1C8@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EABE1140;
  return result;
}

uint64_t sub_18E28E214(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1EABE1140 = v1;
  return result;
}

Swift::Void __swiftcall AvailableUseCasesWrapper.encode(with:)(NSCoder with)
{
  sub_18E44E27C();
  swift_allocObject();
  sub_18E44E26C();
  sub_18E291D78();

  v2 = sub_18E44E25C();
  v4 = v3;

  sub_18E25BD94();
  sub_18E2523A0(v2, v4);
  v5 = sub_18E25BDDC(v2, v4);
  v6 = sub_18E44EA8C();
  [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];

  sub_18E1FDFE0(v2, v4);
}

id AvailableUseCasesWrapper.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  sub_18E25BD94();
  v3 = sub_18E44EEBC();
  if (v3)
  {
    v4 = v3;
    sub_18E44E24C();
    swift_allocObject();
    sub_18E44E23C();
    v5 = MEMORY[0x193ACBD40](v4);
    v7 = v6;
    sub_18E291DCC();
    sub_18E44E22C();
    sub_18E1FDFE0(v5, v7);

    v9 = objc_allocWithZone(ObjectType);
    *&v9[OBJC_IVAR____TtC12ModelCatalog24AvailableUseCasesWrapper_rawAvailableUseCases] = v14;
    v13.receiver = v9;
    v13.super_class = ObjectType;
    v10 = objc_msgSendSuper2(&v13, sel_init);

    v11 = swift_getObjectType();
    sub_18E1D4C00(v11);
  }

  else
  {

    v8 = swift_getObjectType();
    sub_18E1D4C00(v8);
    return 0;
  }

  return v10;
}

void *AvailableUseCasesWrapper.copy(with:)@<X0>(void *a1@<X8>)
{
  ObjectType = swift_getObjectType();
  v4 = *(v1 + OBJC_IVAR____TtC12ModelCatalog24AvailableUseCasesWrapper_rawAvailableUseCases);
  v5 = objc_allocWithZone(ObjectType);
  *&v5[OBJC_IVAR____TtC12ModelCatalog24AvailableUseCasesWrapper_rawAvailableUseCases] = v4;
  v7.receiver = v5;
  v7.super_class = ObjectType;

  result = objc_msgSendSuper2(&v7, sel_init);
  a1[3] = ObjectType;
  *a1 = result;
  return result;
}

uint64_t AvailableUseCasesWrapper.description.getter()
{
  sub_18E44EFFC();
  MEMORY[0x193ACC300](0xD000000000000018, 0x800000018E463FC0);
  sub_18E44F0DC();
  MEMORY[0x193ACC300](32032, 0xE200000000000000);
  return 0;
}

uint64_t AvailableUseCasesWrapper.hash.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12ModelCatalog24AvailableUseCasesWrapper_rawAvailableUseCases);
  sub_18E44F48C();
  sub_18E291068(__src, v1);
  return sub_18E44F4CC();
}

id AvailableUseCasesWrapper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AvailableUseCasesWrapper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_18E28E92C(uint64_t a1, char a2)
{
  sub_18E44EB4C();
}

uint64_t sub_18E28EA30(uint64_t a1, char a2)
{
  sub_18E44EB4C();
}

uint64_t sub_18E28EAE0(uint64_t a1, char a2)
{
  sub_18E44EB4C();
}

uint64_t sub_18E28EBB8(uint64_t a1, char a2)
{
  sub_18E44EB4C();
}

uint64_t sub_18E28EC1C(uint64_t a1, char a2)
{
  sub_18E44EB4C();
}

uint64_t sub_18E28EC5C(uint64_t a1, char a2)
{
  sub_18E44EB4C();
}

uint64_t sub_18E28ED24(uint64_t a1, unsigned __int8 a2)
{
  sub_18E44EB4C();
}

uint64_t sub_18E28ED78()
{
  sub_18E1CACF0();
  switch(v0)
  {
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
      sub_18E1C6AB4();
      break;
    default:
      break;
  }

  sub_18E44EB4C();
}

uint64_t sub_18E28EE80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v3 = a3();
  sub_18E1C88A0(v3, v4);
}

uint64_t sub_18E28EED0(uint64_t a1, char a2)
{
  sub_18E44EB4C();
}

uint64_t sub_18E28EF54(uint64_t a1, char a2)
{
  sub_18E44EB4C();
}

uint64_t sub_18E28EFF0()
{
  sub_18E1C57A0();
  switch(v0)
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
      sub_18E1C57A0();
      break;
    default:
      break;
  }

  sub_18E44EB4C();
}

uint64_t sub_18E28F0CC(uint64_t a1, char a2)
{
  sub_18E44EB4C();
}

uint64_t sub_18E28F16C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v3 = a3(a2);
  sub_18E1C88A0(v3, v4);
}

uint64_t sub_18E28F1B0(uint64_t a1, char a2)
{
  sub_18E44EB4C();
}

uint64_t sub_18E28F254()
{
  sub_18E1CC3A4();
  v2 = 0xE700000000000000;
  v4 = v3;
  v5 = v1;
  switch(v4)
  {
    case 1:
      v2 = 0xE300000000000000;
      v5 = 7565161;
      break;
    case 2:
      v2 = 0xE500000000000000;
      v5 = 0x736F63616DLL;
      break;
    case 3:
      v5 = sub_18E223CAC();
      break;
    case 4:
      v2 = 0xE400000000000000;
      v5 = 1936684660;
      break;
    case 5:
      v2 = 0xE800000000000000;
      v5 = sub_18E1D00A4();
      break;
    default:
      break;
  }

  v6 = 0xE700000000000000;
  switch(v0)
  {
    case 1:
      v6 = 0xE300000000000000;
      v1 = 7565161;
      break;
    case 2:
      v6 = 0xE500000000000000;
      v1 = 0x736F63616DLL;
      break;
    case 3:
      sub_18E234598();
      break;
    case 4:
      v6 = 0xE400000000000000;
      v1 = 1936684660;
      break;
    case 5:
      v6 = 0xE800000000000000;
      sub_18E221C24();
      break;
    default:
      break;
  }

  if (v5 == v1 && v2 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_18E1C4F90(v5, v0, v1);
  }

  return v8 & 1;
}

uint64_t sub_18E28F3A0(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0xEB000000006E656CLL;
  v3 = 0x5F747865746E6F63;
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0xD00000000000001ALL;
    }

    else
    {
      v5 = 0xD00000000000001BLL;
    }

    if (v4 == 1)
    {
      v6 = 0x800000018E45B220;
    }

    else
    {
      v6 = 0x800000018E45B240;
    }
  }

  else
  {
    v5 = 0x5F747865746E6F63;
    v6 = 0xEB000000006E656CLL;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 0xD00000000000001ALL;
    }

    else
    {
      v3 = 0xD00000000000001BLL;
    }

    if (a2 == 1)
    {
      v2 = 0x800000018E45B220;
    }

    else
    {
      v2 = 0x800000018E45B240;
    }
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_18E1C6188(v5, a2, v3);
  }

  return v8 & 1;
}

uint64_t sub_18E28F494(char a1, uint64_t a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x617A696C61636F6CLL;
  }

  else
  {
    v3 = 0x666E6F635F6D6C6DLL;
  }

  if (v2)
  {
    v4 = 0xEA00000000006769;
  }

  else
  {
    v4 = 0xEC0000006E6F6974;
  }

  if (a2)
  {
    v5 = 0x617A696C61636F6CLL;
  }

  else
  {
    v5 = 0x666E6F635F6D6C6DLL;
  }

  if (a2)
  {
    v6 = 0xEC0000006E6F6974;
  }

  else
  {
    v6 = 0xEA00000000006769;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_18E1C4F90(v3, a2, v5);
  }

  return v8 & 1;
}

uint64_t sub_18E28F594(char a1, uint64_t a2)
{
  v2 = "t_for_input_token_text";
  v3 = (a1 & 1) == 0;
  if (a1)
  {
    v4 = 0xD000000000000027;
  }

  else
  {
    v4 = 0xD000000000000026;
  }

  if (v3)
  {
    v5 = "token_count";
  }

  else
  {
    v5 = "t_for_input_token_text";
  }

  if (a2)
  {
    v6 = 0xD000000000000027;
  }

  else
  {
    v6 = 0xD000000000000026;
  }

  if ((a2 & 1) == 0)
  {
    v2 = "token_count";
  }

  if (v4 == v6 && (v5 | 0x8000000000000000) == (v2 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_18E1C4F90(v4, a2, v6);
  }

  return v8 & 1;
}

uint64_t sub_18E28F628(char a1, char a2)
{
  if (a1)
  {
    v2 = 13942;
  }

  else
  {
    v2 = 13686;
  }

  if (a2)
  {
    v3 = 13942;
  }

  else
  {
    v3 = 13686;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_18E44F3CC();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_18E28F690(unsigned __int8 a1, uint64_t a2)
{
  v2 = 1701869940;
  v3 = 0xE400000000000000;
  v4 = a1;
  v5 = 1701869940;
  switch(v4)
  {
    case 1:
      v5 = 0x5F72657470616461;
      v3 = 0xEC00000065707974;
      break;
    case 2:
      v3 = 0xE700000000000000;
      v6 = 1601729635;
      goto LABEL_5;
    case 3:
      v3 = 0xE700000000000000;
      v6 = 1601267059;
LABEL_5:
      v5 = v6 | 0x6E656C00000000;
      break;
    default:
      break;
  }

  v7 = 0xE400000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x5F72657470616461;
      v7 = 0xEC00000065707974;
      break;
    case 2:
      v7 = 0xE700000000000000;
      v8 = 1601729635;
      goto LABEL_10;
    case 3:
      v7 = 0xE700000000000000;
      v8 = 1601267059;
LABEL_10:
      v2 = v8 | 0x6E656C00000000;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_18E1C4F90(v5, a2, v2);
  }

  return v10 & 1;
}

uint64_t sub_18E28F7E4(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 << 8 == a2 << 8)
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_18E44F3CC();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_18E28F850()
{
  sub_18E1CACF0();
  v2 = 0x642E737961776C61;
  v4 = v3;
  v5 = 0x642E737961776C61;
  v6 = v0;
  switch(v4)
  {
    case 1:
      v6 = 0x800000018E45A8B0;
      v5 = 0xD000000000000019;
      break;
    case 2:
      v6 = 0x800000018E45A8D0;
      v5 = 0xD00000000000001DLL;
      break;
    case 3:
      v6 = 0x800000018E45A8F0;
      v5 = 0xD00000000000001ALL;
      break;
    case 4:
      v6 = 0x800000018E45A910;
      v5 = 0xD000000000000021;
      break;
    case 5:
      v6 = 0x800000018E45A940;
      v5 = 0xD000000000000033;
      break;
    case 6:
      v6 = 0x800000018E45A980;
      v5 = 0xD00000000000001CLL;
      break;
    default:
      break;
  }

  switch(v1)
  {
    case 1:
      v0 = 0x800000018E45A8B0;
      v2 = 0xD000000000000019;
      break;
    case 2:
      v0 = 0x800000018E45A8D0;
      v2 = 0xD00000000000001DLL;
      break;
    case 3:
      v0 = 0x800000018E45A8F0;
      v2 = 0xD00000000000001ALL;
      break;
    case 4:
      v0 = 0x800000018E45A910;
      v2 = 0xD000000000000021;
      break;
    case 5:
      v0 = 0x800000018E45A940;
      v2 = 0xD000000000000033;
      break;
    case 6:
      v0 = 0x800000018E45A980;
      v2 = 0xD00000000000001CLL;
      break;
    default:
      break;
  }

  if (v5 == v2 && v6 == v0)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_18E1C6188(v5, v1, v2);
  }

  return v8 & 1;
}

uint64_t sub_18E28FA18(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0xD00000000000002CLL;
  v3 = "sid-inference-provider";
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0xD000000000000025;
    }

    else
    {
      v5 = 0xD000000000000013;
    }

    if (v4 == 1)
    {
      v6 = "encesOperatingSystemEligible";
    }

    else
    {
      v6 = "encesHardwareEligible";
    }
  }

  else
  {
    v5 = 0xD00000000000002CLL;
    v6 = "sid-inference-provider";
  }

  if (a2)
  {
    v3 = "encesOperatingSystemEligible";
    v2 = a2 == 1 ? 0xD000000000000025 : 0xD000000000000013;
    if (a2 != 1)
    {
      v3 = "encesHardwareEligible";
    }
  }

  if (v5 == v2 && (v6 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_18E1C4F90(v5, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_18E28FAE8(char a1, uint64_t a2)
{
  v2 = 1701869940;
  if (a1)
  {
    if (a1 == 1)
    {
      v3 = 0x6E656C5F787463;
    }

    else
    {
      v3 = 0x6E656C5F716573;
    }

    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
    v3 = 1701869940;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x6E656C5F787463;
    }

    else
    {
      v2 = 0x6E656C5F716573;
    }

    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  if (v3 == v2 && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_18E1C4F90(v3, a2, v2);
  }

  return v7 & 1;
}

uint64_t sub_18E28FBEC()
{
  sub_18E1CAF78();
  v2 = v1 & 0xFFFF0000FFFFFFFFLL | 0x345F00000000;
  v3 = 0xE600000000000000;
  v5 = v4;
  v6 = v2;
  switch(v5)
  {
    case 1:
      v6 = 0x385F61726F6CLL;
      break;
    case 2:
      v6 = sub_18E1CA148() | 0x36315F00000000;
      break;
    case 3:
      v6 = sub_18E1CA148() | 0x32335F00000000;
      break;
    case 4:
      v6 = sub_18E1CA148() | 0x34365F00000000;
      break;
    case 5:
      v3 = 0xE800000000000000;
      v6 = 0x3832315F61726F6CLL;
      break;
    default:
      break;
  }

  v7 = 0xE600000000000000;
  switch(v0)
  {
    case 1:
      sub_18E1CAF78();
      v2 = v8 & 0xFFFF0000FFFFFFFFLL | 0x385F00000000;
      break;
    case 2:
      v7 = 0xE700000000000000;
      sub_18E1CAF78();
      v2 = v10 | 0x36315F00000000;
      break;
    case 3:
      v7 = 0xE700000000000000;
      sub_18E1CAF78();
      v2 = v11 | 0x32335F00000000;
      break;
    case 4:
      v7 = 0xE700000000000000;
      sub_18E1CAF78();
      v2 = v9 | 0x34365F00000000;
      break;
    case 5:
      v7 = 0xE800000000000000;
      sub_18E1CAF78();
      v2 = v12 | 0x3832315F00000000;
      break;
    default:
      break;
  }

  if (v6 == v2 && v3 == v7)
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_18E1C4F90(v6, v0, v2);
  }

  return v14 & 1;
}

uint64_t sub_18E28FD60(char a1, uint64_t a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0xD00000000000001BLL;
  }

  else
  {
    v3 = 0x64695F6E656B6F74;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0x800000018E45AA00;
  }

  if (a2)
  {
    v5 = 0xD00000000000001BLL;
  }

  else
  {
    v5 = 0x64695F6E656B6F74;
  }

  if (a2)
  {
    v6 = 0x800000018E45AA00;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_18E1C4F90(v3, a2, v5);
  }

  return v8 & 1;
}

uint64_t sub_18E28FE10(char a1, char a2)
{
  if (a1)
  {
    v2 = 7696487;
  }

  else
  {
    v2 = 6647393;
  }

  if (a2)
  {
    v3 = 7696487;
  }

  else
  {
    v3 = 6647393;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_18E44F3CC();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_18E28FE98(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = a3(a1);
  v7 = v6;
  v8 = a3(a2);
  if (v5 == v8 && v7 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_18E1C4F90(v5, v9, v8);
  }

  return v11 & 1;
}

uint64_t sub_18E28FF1C(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0xD000000000000014;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x635F74757074756FLL;
    }

    else
    {
      v4 = 0xD00000000000001CLL;
    }

    if (v3 == 1)
    {
      v5 = 0xEE0073657373616CLL;
    }

    else
    {
      v5 = 0x800000018E45A9E0;
    }
  }

  else
  {
    v5 = 0x800000018E45A9B0;
    v4 = 0xD000000000000014;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x635F74757074756FLL;
    }

    else
    {
      v2 = 0xD00000000000001CLL;
    }

    if (a2 == 1)
    {
      v6 = 0xEE0073657373616CLL;
    }

    else
    {
      v6 = 0x800000018E45A9E0;
    }
  }

  else
  {
    v6 = 0x800000018E45A9B0;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_18E1C4F90(v4, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_18E290008(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_18E44F3CC() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

unint64_t sub_18E290094()
{
  result = qword_1EABE07B0;
  if (!qword_1EABE07B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE07B0);
  }

  return result;
}

void sub_18E2900E8()
{
  sub_18E1C575C();
  v2 = v1;
  v4 = v3;
  v5 = sub_18E44E6FC();
  sub_18E1C4EAC();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v37 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18E2706EC(&qword_1EABE11B0, &qword_18E49EF20);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v10);
  v40 = &v34 - v11;
  v12 = sub_18E2706EC(&unk_1EABE11B8, &qword_18E49E120);
  sub_18E1C4EEC();
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v13);
  sub_18E1C57AC();
  v14 = type metadata accessor for SupportedLanguagesAndRegions.SupportedLanguageAndRegion(0) - 8;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v41 = &v34 - v19;
  v20 = *(v4 + 16);
  if (v20 != *(v2 + 16) || !v20 || v4 == v2)
  {
    goto LABEL_17;
  }

  v21 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v22 = v4 + v21;
  v23 = v2 + v21;
  v34 = (v7 + 32);
  v35 = v12;
  v36 = (v7 + 8);
  v39 = *(v18 + 72);
  while (1)
  {
    v24 = v41;
    sub_18E292178(v22, v41, type metadata accessor for SupportedLanguagesAndRegions.SupportedLanguageAndRegion);
    sub_18E292178(v23, v17, type metadata accessor for SupportedLanguagesAndRegions.SupportedLanguageAndRegion);
    v25 = *(v12 + 48);
    sub_18E29205C(v24, v0);
    sub_18E29205C(v17, v0 + v25);
    sub_18E1C6AC8(v0);
    if (v26)
    {
      sub_18E2921D8(v17, type metadata accessor for SupportedLanguagesAndRegions.SupportedLanguageAndRegion);
      sub_18E2921D8(v24, type metadata accessor for SupportedLanguagesAndRegions.SupportedLanguageAndRegion);
      sub_18E1C6AC8(v0 + v25);
      if (!v26)
      {
        goto LABEL_14;
      }

      goto LABEL_11;
    }

    sub_18E29205C(v0, v40);
    sub_18E1C6AC8(v0 + v25);
    if (v26)
    {
      sub_18E2921D8(v17, type metadata accessor for SupportedLanguagesAndRegions.SupportedLanguageAndRegion);
      sub_18E2921D8(v24, type metadata accessor for SupportedLanguagesAndRegions.SupportedLanguageAndRegion);
      (*v36)(v40, v5);
LABEL_14:
      v32 = &unk_1EABE11B8;
      v33 = &qword_18E49E120;
      goto LABEL_16;
    }

    v27 = v0 + v25;
    v28 = v37;
    (*v34)(v37, v27, v5);
    sub_18E2920CC();
    v29 = v40;
    v38 = sub_18E44EA1C();
    v30 = v29;
    v31 = *v36;
    (*v36)(v28, v5);
    sub_18E2921D8(v17, type metadata accessor for SupportedLanguagesAndRegions.SupportedLanguageAndRegion);
    sub_18E2921D8(v41, type metadata accessor for SupportedLanguagesAndRegions.SupportedLanguageAndRegion);
    v31(v30, v5);
    v12 = v35;
    if ((v38 & 1) == 0)
    {
      break;
    }

LABEL_11:
    sub_18E1E8EEC(v0, &qword_1EABE11B0, &qword_18E49EF20);
    v23 += v39;
    v22 += v39;
    if (!--v20)
    {
      goto LABEL_17;
    }
  }

  v32 = &qword_1EABE11B0;
  v33 = &qword_18E49EF20;
LABEL_16:
  sub_18E1E8EEC(v0, v32, v33);
LABEL_17:
  sub_18E1C5544();
}

void sub_18E290524()
{
  sub_18E1C575C();
  v2 = v1;
  v4 = v3;
  v5 = sub_18E44E6FC();
  sub_18E1C4EAC();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18E2706EC(&qword_1EABE11B0, &qword_18E49EF20);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v11);
  v75 = &v66 - v12;
  v13 = sub_18E2706EC(&unk_1EABE11B8, &qword_18E49E120);
  sub_18E1C4EEC();
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v14);
  sub_18E1C57AC();
  v15 = type metadata accessor for AvailableUseCases.AvailableUseCase(0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v21 = &v66 - v20;
  v22 = *(v4 + 16);
  if (v22 != *(v2 + 16) || !v22 || v4 == v2)
  {
LABEL_59:
    sub_18E1C5544();
    return;
  }

  v67 = v10;
  v23 = v22;
  v24 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v25 = v4 + v24;
  v26 = 0;
  v70 = v23;
  v71 = v2 + v24;
  v66 = (v7 + 32);
  v68 = (v7 + 8);
  v72 = *(v19 + 72);
  v73 = v25;
  while (1)
  {
    v27 = v72 * v26;
    sub_18E1C5ED4();
    sub_18E292178(v28 + v27, v21, v29);
    if (v26 == v23)
    {
      goto LABEL_61;
    }

    v74 = v26;
    sub_18E1C5ED4();
    sub_18E292178(v71 + v27, v18, v30);
    v31 = *v18;
    v32 = sub_18E1C6DAC(*v21);
    v34 = v33;
    v36 = v32 == sub_18E1C6DAC(v31) && v34 == v35;
    if (v36)
    {
    }

    else
    {
      v37 = sub_18E44F3CC();

      if ((v37 & 1) == 0)
      {
        goto LABEL_58;
      }
    }

    v38 = v15[5];
    v39 = *(v13 + 48);
    sub_18E29205C(&v21[v38], v0);
    sub_18E29205C(&v18[v38], v0 + v39);
    sub_18E1C6AC8(v0);
    if (!v36)
    {
      v40 = v75;
      sub_18E29205C(v0, v75);
      sub_18E1C6AC8(v0 + v39);
      if (v41)
      {
        (*v68)(v40, v5);
LABEL_55:
        v64 = &unk_1EABE11B8;
        v65 = &qword_18E49E120;
      }

      else
      {
        v42 = v67;
        (*v66)(v67, v0 + v39, v5);
        sub_18E2920CC();
        v69 = sub_18E44EA1C();
        v43 = v15;
        v44 = v13;
        v45 = v40;
        v46 = *v68;
        (*v68)(v42, v5);
        v47 = v45;
        v13 = v44;
        v15 = v43;
        v46(v47, v5);
        if (v69)
        {
          goto LABEL_19;
        }

        v64 = &qword_1EABE11B0;
        v65 = &qword_18E49EF20;
      }

      sub_18E1E8EEC(v0, v64, v65);
LABEL_58:
      sub_18E2921D8(v18, type metadata accessor for AvailableUseCases.AvailableUseCase);
      sub_18E2921D8(v21, type metadata accessor for AvailableUseCases.AvailableUseCase);
      goto LABEL_59;
    }

    sub_18E1C6AC8(v0 + v39);
    if (!v36)
    {
      goto LABEL_55;
    }

LABEL_19:
    sub_18E1E8EEC(v0, &qword_1EABE11B0, &qword_18E49EF20);
    v48 = v15[6];
    v49 = *&v21[v48];
    v50 = *&v18[v48];
    if (v49)
    {
      if (!v50)
      {
        goto LABEL_58;
      }

      v51 = *(v49 + 16);
      if (v51 != *(v50 + 16))
      {
        goto LABEL_58;
      }

      if (v51 && v49 != v50)
      {
        v52 = (v49 + 40);
        v53 = (v50 + 40);
        do
        {
          v54 = *(v52 - 1) == *(v53 - 1) && *v52 == *v53;
          if (!v54 && (sub_18E44F3CC() & 1) == 0)
          {
            goto LABEL_58;
          }

          v52 += 2;
          v53 += 2;
        }

        while (--v51);
      }
    }

    else if (v50)
    {
      goto LABEL_58;
    }

    v55 = v15[7];
    v56 = *&v21[v55];
    v57 = *&v18[v55];
    if (!v56)
    {
      if (v57)
      {
        goto LABEL_58;
      }

      goto LABEL_50;
    }

    if (!v57)
    {
      goto LABEL_58;
    }

    v58 = *(v56 + 16);
    if (v58 != *(v57 + 16))
    {
      goto LABEL_58;
    }

    if (v58 && v56 != v57)
    {
      break;
    }

LABEL_50:
    v63 = v21[v15[8]] ^ v18[v15[8]];
    sub_18E2921D8(v18, type metadata accessor for AvailableUseCases.AvailableUseCase);
    sub_18E2921D8(v21, type metadata accessor for AvailableUseCases.AvailableUseCase);
    v23 = v70;
    if ((v63 & 1) == 0)
    {
      v26 = v74 + 1;
      if (v74 + 1 != v70)
      {
        continue;
      }
    }

    goto LABEL_59;
  }

  v60 = (v56 + 40);
  v61 = (v57 + 40);
  while (v58)
  {
    v62 = *(v60 - 1) == *(v61 - 1) && *v60 == *v61;
    if (!v62 && (sub_18E44F3CC() & 1) == 0)
    {
      goto LABEL_58;
    }

    v60 += 2;
    v61 += 2;
    if (!--v58)
    {
      goto LABEL_50;
    }
  }

  __break(1u);
LABEL_61:
  __break(1u);
}

void sub_18E290AD4()
{
  sub_18E1C575C();
  sub_18E1C8DE0();
  if (v15 && v0 && v1 != v2)
  {
    v3 = (v1 + 32);
    v4 = (v2 + 32);
    do
    {
      v5 = *v3;
      v6 = 0xD000000000000025;
      if (v5 == 1)
      {
        v7 = 0xD000000000000025;
      }

      else
      {
        v7 = 0xD000000000000013;
      }

      if (v5 == 1)
      {
        v8 = "encesOperatingSystemEligible";
      }

      else
      {
        v8 = "encesHardwareEligible";
      }

      if (*v3)
      {
        v9 = v7;
      }

      else
      {
        v9 = 0xD00000000000002CLL;
      }

      if (*v3)
      {
        v10 = v8;
      }

      else
      {
        v10 = "sid-inference-provider";
      }

      v11 = v10 | 0x8000000000000000;
      if (*v4 == 1)
      {
        v12 = "encesOperatingSystemEligible";
      }

      else
      {
        v6 = 0xD000000000000013;
        v12 = "encesHardwareEligible";
      }

      if (*v4)
      {
        v13 = v6;
      }

      else
      {
        v13 = 0xD00000000000002CLL;
      }

      if (*v4)
      {
        v14 = v12;
      }

      else
      {
        v14 = "sid-inference-provider";
      }

      v15 = v9 == v13 && v11 == (v14 | 0x8000000000000000);
      if (v15)
      {
      }

      else
      {
        v16 = sub_18E1C4F90(v9, v2, v13);

        if ((v16 & 1) == 0)
        {
          break;
        }
      }

      ++v3;
      ++v4;
      --v0;
    }

    while (v0);
  }

  sub_18E1C5544();
}