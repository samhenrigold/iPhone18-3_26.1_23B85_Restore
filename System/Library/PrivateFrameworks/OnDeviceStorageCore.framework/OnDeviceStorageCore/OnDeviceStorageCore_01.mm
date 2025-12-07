unint64_t sub_1DB143DBC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26F18, &unk_1DB2BD500);
    v3 = sub_1DB2BB6C4();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1DB141B30(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1DB143ED0(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int128 *a6)
{
  v36 = a3;
  v30 = a3;
  v31 = a4;
  v27 = a5;
  v28 = a6;
  v32 = a5;
  v33 = a6;
  v9 = *a1;
  sub_1DB2BB4F4();

  v34 = 0x204E49474542;
  v35 = 0xE600000000000000;
  v10 = 0x54414944454D4D49;
  if (v9 != 1)
  {
    v10 = 0x564953554C435845;
  }

  if (v9)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0x4445525245464544;
  }

  if (v9)
  {
    v12 = 0xE900000000000045;
  }

  else
  {
    v12 = 0xE800000000000000;
  }

  MEMORY[0x1E1283490](v11, v12);

  v13 = MEMORY[0x1E1283490](0x4341534E41525420, 0xEC0000004E4F4954);
  v29 = &v23;
  v15 = v34;
  v14 = v35;
  MEMORY[0x1EEE9AC00](v13);
  sub_1DB143044();
  if (qword_1EE13F098 != -1)
  {
    swift_once();
  }

  sub_1DB2BB294();
  if ((v35 & 1) != 0 || v34 != a2)
  {
    sub_1DB2BB2C4(MEMORY[0x1E69E7CA8]);
  }

  else
  {
    v16 = type metadata accessor for Statement();
    swift_allocObject();

    sub_1DB253534(v17, v15, v14);
    if (!v6)
    {
      v26 = v16;
      v18 = MEMORY[0x1E69E7CC0];
      sub_1DB255E8C(MEMORY[0x1E69E7CC0]);

      Statement.run(_:)(v18);

      v20 = v36;
      v25 = sub_1DB146634();
      v24 = sub_1DB146634();
      sub_1DB1467B4(0xD000000000000012, 0x80000001DB2D1770, 1);
      sub_1DB1467B4(0x5F6E676965726F66, 0xEC0000007379656BLL, 0);
      sub_1DB2605C8(a4, v27, v20, v28);
      sub_1DB1467B4(0xD000000000000012, 0x80000001DB2D1770, v24);
      sub_1DB1467B4(0x5F6E676965726F66, 0xEC0000007379656BLL, v25);
      swift_allocObject();

      sub_1DB253534(v21, 0xD000000000000012, 0x80000001DB2D15B0);
      v22 = MEMORY[0x1E69E7CC0];
      sub_1DB255E8C(MEMORY[0x1E69E7CC0]);

      Statement.run(_:)(v22);
    }
  }
}

uint64_t sub_1DB1444CC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1DB144528(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    if (a3)
    {
      v3 = *(a1 + 16);

      return v3();
    }

    else
    {
      sub_1DB15B09C(0xD000000000000057, 0x80000001DB2D18A0);
      return 1;
    }
  }

  else if (a3)
  {
    sub_1DB15B09C(0xD000000000000056, 0x80000001DB2D1800);
    return 0xFFFFFFFFLL;
  }

  else
  {
    sub_1DB15B09C(0xD00000000000003ELL, 0x80000001DB2D1860);
    return 0;
  }
}

uint64_t sub_1DB1445E0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

_OWORD *sub_1DB144640(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1DB1446A4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1DB14470C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = sub_1DB2BAF14();
  v2(v3);
}

uint64_t sub_1DB144778(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void Connection.createAggregation<A>(_:argumentCount:deterministic:step:final:state:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = v12;
  if (a4)
  {
    a3 = -1;
  }

  else if (a3 < 0)
  {
    __break(1u);
    return;
  }

  v39 = a3;
  v18 = swift_allocObject();
  v18[2] = a12;
  v18[3] = a10;
  v18[4] = a11;
  v18[5] = a6;
  v18[6] = a7;
  v18[7] = a8;
  v18[8] = a9;
  v47 = sub_1DB144D18;
  v48 = v18;
  aBlock = MEMORY[0x1E69E9820];
  v44 = 1107296256;
  v45 = sub_1DB144D50;
  v46 = &block_descriptor_0;
  v19 = _Block_copy(&aBlock);
  v20 = a1;

  v22 = *(v13 + 16);
  MEMORY[0x1EEE9AC00](v21);
  os_unfair_lock_lock((v22 + 24));
  sub_1DB144EB8((v22 + 16), &aBlock);
  os_unfair_lock_unlock((v22 + 24));
  LODWORD(a1) = aBlock;

  v23 = sub_1DB252CB8(a1, v13, 0);
  if (v25 <= 0xFFFFFFFEFFFFFFFFLL)
  {
    aBlock = 0;
    v44 = 0xE000000000000000;
    v34 = v23;
    v35 = v24;
    v36 = v26;
    v37 = v25;
    sub_1DB2BB4F4();

    aBlock = 0xD000000000000019;
    v44 = 0x80000001DB2D1630;
    v38 = sub_1DB1409BC(v34, v35, v37, v36);
    MEMORY[0x1E1283490](v38);

    sub_1DB15B09C(aBlock, v44);

    sub_1DB136670(v34, v35, v37, v36);
    _Block_release(v19);
  }

  else
  {
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26F60, &qword_1DB2BD588);
    aBlock = v19;
    v27 = *(v13 + 104);
    os_unfair_lock_lock((v27 + 24));
    v28 = (v27 + 16);
    if (!*(*(v27 + 16) + 16) || (sub_1DB141B30(v20, a2), (v29 & 1) == 0))
    {
      v30 = sub_1DB143668(MEMORY[0x1E69E7CC0]);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v42[0] = *v28;
      *v28 = 0x8000000000000000;
      sub_1DB1427E0(v30, v20, a2, isUniquelyReferenced_nonNull_native);

      *v28 = v42[0];
    }

    v32 = sub_1DB13FED4(v42, v20, a2);
    if (*v33)
    {
      sub_1DB1444CC(&aBlock, v41);
      sub_1DB13FDD0(v41, v39);
    }

    (v32)(v42, 0);
    os_unfair_lock_unlock((v27 + 24));
    __swift_destroy_boxed_opaque_existential_1(&aBlock);
  }
}

uint64_t sub_1DB144BB4(uint64_t a1, sqlite3_context *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), int a6, void (*a7)(uint64_t), int a8, void (*a9)(void *__return_ptr, void), uint64_t a10)
{
  v15 = sqlite3_aggregate_context(a2, 8);
  if (v15)
  {
    v16 = v15;
    if (a1 <= 0)
    {
      a9(v21, *v15);
      sub_1DB13F97C(v21, a2);
      return sub_1DB145A68(v21);
    }

    else
    {
      sub_1DB13F87C(a3, a4);
      v18 = v17;
      if (!*v16)
      {
        *v16 = a5();
      }

      a7(v18);
    }
  }

  else
  {

    return sub_1DB15B09C(0xD00000000000001FLL, 0x80000001DB2D19A0);
  }
}

uint64_t sub_1DB144D50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);

  v9(a2, a3, a4, a5);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

sqlite3 **sub_1DB144DE0@<X0>(sqlite3 **result@<X0>, uint64_t a4@<X3>, int a5@<W4>, void *a6@<X5>, _DWORD *a7@<X8>)
{
  if (a4 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else
  {
    v8 = a4;
    if (a4 <= 0x7FFFFFFF)
    {
      v11 = *result;
      v12 = sub_1DB2BAE24();
      LODWORD(a6) = sqlite3_create_function_v2(v11, (v12 + 32), v8, a5, a6, 0, sub_1DB144ED0, sub_1DB144F2C, 0);

      *a7 = a6;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DB144ED0(sqlite3_context *a1)
{
  v1 = *(sqlite3_user_data(a1) + 2);

  return v1();
}

uint64_t sub_1DB144F2C(sqlite3_context *a1)
{
  v1 = *(sqlite3_user_data(a1) + 2);

  return v1();
}

void Connection.createAggregation<A>(_:argumentCount:deterministic:initialValue:reduce:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = v11;
  v17 = swift_allocObject();
  v17[2] = a11;
  v17[3] = a7;
  v17[4] = a8;
  v18 = swift_allocObject();
  v18[2] = a11;
  v18[3] = a9;
  v18[4] = a10;
  v19 = swift_allocObject();
  *(v19 + 16) = a11;
  *(v19 + 24) = a6;
  v20 = swift_allocObject();
  v20[2] = sub_1DB14597C;
  v20[3] = v19;
  v20[4] = sub_1DB1458C4;
  v20[5] = v17;
  v20[6] = sub_1DB14591C;
  v20[7] = v18;
  v46 = sub_1DB1459BC;
  v47 = v20;
  aBlock = MEMORY[0x1E69E9820];
  v43 = 1107296256;
  v44 = sub_1DB144D50;
  v45 = &block_descriptor_15;
  v21 = _Block_copy(&aBlock);
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();

  swift_unknownObjectRetain();

  v22 = *(v12 + 16);
  os_unfair_lock_lock((v22 + 24));
  sub_1DB145AD4((v22 + 16), &aBlock);
  os_unfair_lock_unlock((v22 + 24));
  LODWORD(a6) = aBlock;

  v23 = sub_1DB252CB8(a6, v12, 0);
  if (v25 <= 0xFFFFFFFEFFFFFFFFLL)
  {
    aBlock = 0;
    v43 = 0xE000000000000000;
    v34 = v23;
    v35 = v24;
    v36 = v26;
    v37 = v25;
    sub_1DB2BB4F4();

    aBlock = 0xD000000000000019;
    v43 = 0x80000001DB2D1630;
    v38 = sub_1DB1409BC(v34, v35, v37, v36);
    MEMORY[0x1E1283490](v38);

    sub_1DB15B09C(aBlock, v43);

    sub_1DB136670(v34, v35, v37, v36);
    _Block_release(v21);
  }

  else
  {
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26F60, &qword_1DB2BD588);
    aBlock = v21;
    v27 = *(v12 + 104);
    os_unfair_lock_lock((v27 + 24));
    v28 = (v27 + 16);
    if (!*(*(v27 + 16) + 16) || (sub_1DB141B30(a1, a2), (v29 & 1) == 0))
    {
      v30 = sub_1DB143668(MEMORY[0x1E69E7CC0]);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v41[0] = *v28;
      *v28 = 0x8000000000000000;
      sub_1DB1427E0(v30, a1, a2, isUniquelyReferenced_nonNull_native);

      *v28 = v41[0];
    }

    v32 = sub_1DB13FED4(v41, a1, a2);
    if (*v33)
    {
      sub_1DB1444CC(&aBlock, v40);
      sub_1DB13FDD0(v40, -1);
    }

    (v32)(v41, 0);
    os_unfair_lock_unlock((v27 + 24));

    __swift_destroy_boxed_opaque_existential_1(&aBlock);
  }
}

uint64_t Connection.createAggregation<A>(_:argumentCount:deterministic:initialValue:reduce:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v24 = a2;
  v23 = a1;
  v14 = *(a11 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  v17[2] = a11;
  v17[3] = a7;
  v17[4] = a8;
  v18 = swift_allocObject();
  v18[2] = a11;
  v18[3] = a9;
  v18[4] = a10;
  (*(v14 + 16))(v16, a6, a11);
  v19 = (*(v14 + 80) + 24) & ~*(v14 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = a11;
  (*(v14 + 32))(v20 + v19, v16, a11);

  Connection.createAggregation<A>(_:argumentCount:deterministic:step:final:state:)(v23, v24, 0, 1, 0, sub_1DB145A14, v17, sub_1DB145A20, v18, sub_1DB145A2C, v20, a11);
}

uint64_t sub_1DB145588(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t), uint64_t a4, uint64_t a5)
{
  v9 = *(a5 - 8);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v16 - v13;
  (*(v9 + 16))(&v16 - v13);
  a3(v14, a1);
  (*(v9 + 40))(a2, v12, a5);
  return (*(v9 + 8))(v14, a5);
}

uint64_t sub_1DB1456C8(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4)
{
  v7 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, a1, v10);
  a2(v9);
  (*(v7 + 8))(v9, a4);
  return sub_1DB2BB334();
}

uint64_t sub_1DB1457D4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DB2BB344();
  (*(v4 + 16))(v6, a1, a2);
  (*(v4 + 32))(v7, v6, a2);
  return v7;
}

uint64_t sub_1DB1458C4(uint64_t a1, void *a2)
{
  *a2 = (*(v2 + 24))(*a2, a1);

  return swift_unknownObjectRelease();
}

uint64_t sub_1DB14591C(void *a1)
{
  (*(v1 + 24))(*a1);
  MEMORY[0x1E1284BF0](a1, -1, -1);

  return swift_unknownObjectRelease();
}

void *sub_1DB14597C()
{
  v1 = *(v0 + 24);
  v2 = swift_slowAlloc();
  *v2 = v1;
  swift_unknownObjectRetain();
  return v2;
}

uint64_t sub_1DB145A68(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E28, &unk_1DB2C2D70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Connection.attach(_:as:key:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E20, &unk_1DB2BCF80);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DB2BD590;

    *(inited + 32) = Connection.Location.fullPath.getter();
    v10 = MEMORY[0x1E69E6158];
    *(inited + 56) = MEMORY[0x1E69E6158];
    *(inited + 64) = &protocol witness table for String;
    *(inited + 40) = v11;
    *(inited + 96) = v10;
    *(inited + 104) = &protocol witness table for String;
    *(inited + 72) = a2;
    *(inited + 80) = a3;
    *(inited + 136) = v10;
    *(inited + 144) = &protocol witness table for String;
    *(inited + 112) = a4;
    *(inited + 120) = a5;
    type metadata accessor for Statement();
    swift_allocObject();

    sub_1DB253534(v12, 0xD00000000000001CLL, 0x80000001DB2D19E0);
    if (!v17)
    {
      goto LABEL_6;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E20, &unk_1DB2BCF80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  *(inited + 32) = Connection.Location.fullPath.getter();
  v13 = MEMORY[0x1E69E6158];
  *(inited + 56) = MEMORY[0x1E69E6158];
  *(inited + 64) = &protocol witness table for String;
  *(inited + 40) = v14;
  *(inited + 96) = v13;
  *(inited + 104) = &protocol witness table for String;
  *(inited + 72) = a2;
  *(inited + 80) = a3;
  type metadata accessor for Statement();
  swift_allocObject();

  sub_1DB253534(v15, 0xD000000000000016, 0x80000001DB2D19C0);
  if (v17)
  {
  }

LABEL_6:
  sub_1DB255E8C(inited);

  Statement.run(_:)(MEMORY[0x1E69E7CC0]);

  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E28, &unk_1DB2C2D70);
  return swift_arrayDestroy();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Connection.detach(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E20, &unk_1DB2BCF80);
  inited = swift_initStackObject();
  *(inited + 32) = countAndFlagsBits;
  v5 = MEMORY[0x1E69E6158];
  *(inited + 16) = xmmword_1DB2BCC40;
  *(inited + 56) = v5;
  *(inited + 64) = &protocol witness table for String;
  *(inited + 40) = object;
  type metadata accessor for Statement();
  swift_allocObject();

  sub_1DB253534(v6, 0xD000000000000011, 0x80000001DB2D1A00);
  if (v1)
  {
  }

  else
  {
    sub_1DB255E8C(inited);

    Statement.run(_:)(MEMORY[0x1E69E7CC0]);

    swift_setDeallocating();
    sub_1DB145A68(inited + 32);
  }
}

unint64_t Connection.userVersion.getter()
{
  type metadata accessor for Statement();
  swift_allocObject();

  sub_1DB253534(v0, 0xD000000000000013, 0x80000001DB2D1A20);
  v1 = MEMORY[0x1E69E7CC0];
  sub_1DB255E8C(MEMORY[0x1E69E7CC0]);

  Statement.scalar(_:)(v1, v6);

  if (!v7)
  {
    sub_1DB145A68(v6);
    goto LABEL_2;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26F28, &unk_1DB2BD520);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_2:
    v2 = 0;
    v3 = 1;
LABEL_3:
    v6[0] = v3;
    return v2 | (v3 << 32);
  }

  if (v5 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v5 <= 0x7FFFFFFF)
  {
    v3 = 0;
    v2 = v5;
    goto LABEL_3;
  }

  __break(1u);
  return result;
}

uint64_t Connection.userVersion.setter()
{
  sub_1DB2BB4F4();

  v0 = sub_1DB2BB8F4();
  MEMORY[0x1E1283490](v0);

  type metadata accessor for Statement();
  swift_allocObject();

  sub_1DB253534(v1, 0xD000000000000016, 0x80000001DB2D1A40);
  v2 = MEMORY[0x1E69E7CC0];
  sub_1DB255E8C(MEMORY[0x1E69E7CC0]);

  Statement.run(_:)(v2);
}

uint64_t (*Connection.userVersion.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = Connection.userVersion.getter();
  *(a1 + 8) = v3;
  *(a1 + 12) = BYTE4(v3) & 1;
  return sub_1DB146250;
}

uint64_t Connection.sqliteVersion.getter@<X0>(unsigned __int8 **a1@<X8>)
{
  type metadata accessor for Statement();
  swift_allocObject();

  sub_1DB253534(v2, 0xD000000000000017, 0x80000001DB2D1A60);
  v3 = MEMORY[0x1E69E7CC0];
  sub_1DB255E8C(MEMORY[0x1E69E7CC0]);

  Statement.scalar(_:)(v3, v37);

  if (!v37[3])
  {
    result = sub_1DB145A68(v37);
LABEL_3:
    if (qword_1ECC26C00 != -1)
    {
      result = swift_once();
    }

    v5 = qword_1ECC41F38;
    v6 = unk_1ECC41F40;
    v7 = qword_1ECC41F48;
    goto LABEL_6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26F28, &unk_1DB2BD520);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    goto LABEL_3;
  }

  v37[0] = 46;
  v37[1] = 0xE100000000000000;
  MEMORY[0x1EEE9AC00](result);
  v35[2] = v37;
  v10 = sub_1DB146AB4(3, 1, sub_1DB1474D8, v35, v8, v9, &v36);
  v11 = v10;
  if (v10[2] != 3)
  {
    goto LABEL_30;
  }

  v12 = v10[4];
  v13 = v10[5];
  if (!((v13 ^ v12) >> 14))
  {
    goto LABEL_30;
  }

  v15 = v10[6];
  v14 = v10[7];
  v16 = sub_1DB14740C(v10[4], v10[5], v15, v14, 10);
  if ((v17 & 0x100) != 0)
  {

    v5 = sub_1DB146E74(v12, v13, v15, v14, 10);
    v19 = v18;

    if (v19)
    {
      goto LABEL_30;
    }
  }

  else
  {
    if (v17)
    {
      goto LABEL_30;
    }

    v5 = v16;
  }

  if (v11[2] < 2uLL)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v20 = v11[8];
  v21 = v11[9];
  if (!((v21 ^ v20) >> 14))
  {
    goto LABEL_30;
  }

  v23 = v11[10];
  v22 = v11[11];
  v24 = sub_1DB14740C(v11[8], v11[9], v23, v22, 10);
  if ((v25 & 0x100) != 0)
  {

    v6 = sub_1DB146E74(v20, v21, v23, v22, 10);
    v27 = v26;

    if (v27)
    {
      goto LABEL_30;
    }
  }

  else
  {
    if (v25)
    {
      goto LABEL_30;
    }

    v6 = v24;
  }

  if (v11[2] < 3uLL)
  {
    goto LABEL_29;
  }

  v28 = v11[12];
  v29 = v11[13];
  v31 = v11[14];
  v30 = v11[15];

  if (!((v29 ^ v28) >> 14))
  {
LABEL_30:

    goto LABEL_3;
  }

  v32 = sub_1DB14740C(v28, v29, v31, v30, 10);
  if ((v33 & 0x100) != 0)
  {
    v32 = sub_1DB146E74(v28, v29, v31, v30, 10);
  }

  v7 = v32;
  v34 = v33;

  if (v34)
  {
    goto LABEL_3;
  }

LABEL_6:
  *a1 = v5;
  a1[1] = v6;
  a1[2] = v7;
  return result;
}

BOOL sub_1DB146634()
{
  *&v6[0] = 0x20414D47415250;
  *(&v6[0] + 1) = 0xE700000000000000;
  MEMORY[0x1E1283490]();
  type metadata accessor for Statement();
  swift_allocObject();

  sub_1DB253534(v0, 0x20414D47415250, 0xE700000000000000);
  v1 = MEMORY[0x1E69E7CC0];
  sub_1DB255E8C(MEMORY[0x1E69E7CC0]);

  Statement.scalar(_:)(v1, &v4);

  if (*(&v5 + 1))
  {
    sub_1DB1355D0(&v4, v6);
    sub_1DB1355D0(v6, &v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26F28, &unk_1DB2BD520);
    if (swift_dynamicCast())
    {
      return v3 == 1;
    }
  }

  else
  {
    sub_1DB145A68(&v4);
  }

  return 0;
}

uint64_t sub_1DB1467B4(uint64_t a1, uint64_t a2, char a3)
{
  MEMORY[0x1E1283490](a1, a2);
  MEMORY[0x1E1283490](2112800, 0xE300000000000000);
  if (a3)
  {
    v4 = 49;
  }

  else
  {
    v4 = 48;
  }

  MEMORY[0x1E1283490](v4, 0xE100000000000000);

  type metadata accessor for Statement();
  swift_allocObject();

  sub_1DB253534(v5, 0x20414D47415250, 0xE700000000000000);
  v6 = MEMORY[0x1E69E7CC0];
  sub_1DB255E8C(MEMORY[0x1E69E7CC0]);

  Statement.run(_:)(v6);
}

uint64_t (*Connection.foreignKeys.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_1DB146634();
  return sub_1DB146990;
}

uint64_t (*Connection.deferForeignKeys.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_1DB146634();
  return sub_1DB146A74;
}

unint64_t sub_1DB146AB4@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x1E69E7CC0];
    }

    v7 = sub_1DB2BB004();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_1DB157568(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_1DB157568((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x1E69E7CC0];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_1DB2BAFD4();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_1DB2BAEA4();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_1DB2BAEA4();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_1DB2BB004();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_1DB157568(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_1DB2BB004();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_1DB157568(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_1DB157568((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_1DB2BAEA4();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

unsigned __int8 *sub_1DB146E74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v64 = a1;
  v65 = a2;
  v66 = a3;
  v67 = a4;
  sub_1DB147530();

  result = sub_1DB2BAFF4();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_1DB22D36C(result, v7);
    v37 = v36;

    v7 = v37;
    if ((v37 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1DB2BB5B4();
      v9 = v63;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v21 = v9 - 1;
        if (v21)
        {
          v22 = a5 + 48;
          v23 = a5 + 55;
          v24 = a5 + 87;
          if (a5 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v15 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v19 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_127;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              v28 = v15 * a5;
              if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
              {
                goto LABEL_126;
              }

              v15 = v28 + (v26 + v27);
              if (__OFADD__(v28, (v26 + v27)))
              {
                goto LABEL_126;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_46:
            v19 = v15;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v19 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v29 = a5 + 48;
        v30 = a5 + 55;
        v31 = a5 + 87;
        if (a5 > 10)
        {
          v29 = 58;
        }

        else
        {
          v31 = 97;
          v30 = 65;
        }

        if (result)
        {
          v32 = 0;
          do
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v29)
            {
              if (v33 < 0x41 || v33 >= v30)
              {
                v19 = 0;
                if (v33 < 0x61 || v33 >= v31)
                {
                  goto LABEL_127;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            v35 = v32 * a5;
            if ((v32 * a5) >> 64 != (v32 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v32 = v35 + (v33 + v34);
            if (__OFADD__(v35, (v33 + v34)))
            {
              goto LABEL_126;
            }

            ++result;
            --v9;
          }

          while (v9);
          v19 = v35 + (v33 + v34);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          v15 = 0;
          v16 = result + 1;
          while (1)
          {
            v17 = *v16;
            if (v17 < 0x30 || v17 >= v12)
            {
              if (v17 < 0x41 || v17 >= v13)
              {
                v19 = 0;
                if (v17 < 0x61 || v17 >= v14)
                {
                  goto LABEL_127;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            v20 = v15 * a5;
            if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v15 = v20 - (v17 + v18);
            if (__OFSUB__(v20, (v17 + v18)))
            {
              goto LABEL_126;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v19 = 0;
LABEL_127:

        return v19;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v38 = HIBYTE(v7) & 0xF;
  v64 = v8;
  v65 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v38)
      {
        v40 = 0;
        v56 = a5 + 48;
        v57 = a5 + 55;
        v58 = a5 + 87;
        if (a5 > 10)
        {
          v56 = 58;
        }

        else
        {
          v58 = 97;
          v57 = 65;
        }

        v59 = &v64;
        while (1)
        {
          v60 = *v59;
          if (v60 < 0x30 || v60 >= v56)
          {
            if (v60 < 0x41 || v60 >= v57)
            {
              v19 = 0;
              if (v60 < 0x61 || v60 >= v58)
              {
                goto LABEL_127;
              }

              v61 = -87;
            }

            else
            {
              v61 = -55;
            }
          }

          else
          {
            v61 = -48;
          }

          v62 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v62 + (v60 + v61);
          if (__OFADD__(v62, (v60 + v61)))
          {
            goto LABEL_126;
          }

          v59 = (v59 + 1);
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v38)
    {
      v39 = v38 - 1;
      if (v39)
      {
        v40 = 0;
        v41 = a5 + 48;
        v42 = a5 + 55;
        v43 = a5 + 87;
        if (a5 > 10)
        {
          v41 = 58;
        }

        else
        {
          v43 = 97;
          v42 = 65;
        }

        v44 = &v64 + 1;
        while (1)
        {
          v45 = *v44;
          if (v45 < 0x30 || v45 >= v41)
          {
            if (v45 < 0x41 || v45 >= v42)
            {
              v19 = 0;
              if (v45 < 0x61 || v45 >= v43)
              {
                goto LABEL_127;
              }

              v46 = -87;
            }

            else
            {
              v46 = -55;
            }
          }

          else
          {
            v46 = -48;
          }

          v47 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v47 - (v45 + v46);
          if (__OFSUB__(v47, (v45 + v46)))
          {
            goto LABEL_126;
          }

          ++v44;
          if (!--v39)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v38)
  {
    v48 = v38 - 1;
    if (v48)
    {
      v40 = 0;
      v49 = a5 + 48;
      v50 = a5 + 55;
      v51 = a5 + 87;
      if (a5 > 10)
      {
        v49 = 58;
      }

      else
      {
        v51 = 97;
        v50 = 65;
      }

      v52 = &v64 + 1;
      do
      {
        v53 = *v52;
        if (v53 < 0x30 || v53 >= v49)
        {
          if (v53 < 0x41 || v53 >= v50)
          {
            v19 = 0;
            if (v53 < 0x61 || v53 >= v51)
            {
              goto LABEL_127;
            }

            v54 = -87;
          }

          else
          {
            v54 = -55;
          }
        }

        else
        {
          v54 = -48;
        }

        v55 = v40 * a5;
        if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
        {
          goto LABEL_126;
        }

        v40 = v55 + (v53 + v54);
        if (__OFADD__(v55, (v53 + v54)))
        {
          goto LABEL_126;
        }

        ++v52;
        --v48;
      }

      while (v48);
LABEL_125:
      v19 = v40;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_1DB14740C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v14[0] = a3;
    v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v14;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v11 = sub_1DB2BB5B4();
  }

  result = sub_1DB147584(v11, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v15 = v13 & 1;
LABEL_8:
    v16 = (a4 & 0x1000000000000000) != 0;
  }

  return result;
}

uint64_t sub_1DB1474D8(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1DB2BB924() & 1;
  }
}

unint64_t sub_1DB147530()
{
  result = qword_1ECC26F68;
  if (!qword_1ECC26F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC26F68);
  }

  return result;
}

uint64_t sub_1DB147584(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_1DB23D3A8(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_95;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = sub_1DB2BAF64();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_1DB23D3A8(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_1DB23D3A8(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_91;
  }

  if (v25 < a3 >> 16)
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  result = sub_1DB2BAF64();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_90;
  }

  if (v26 < v13)
  {
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v39 = a6 + 48;
        v40 = a6 + 55;
        v41 = a6 + 87;
        if (a6 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        if (v27)
        {
          v32 = 0;
          v42 = v27 + 1;
          v43 = result - 1;
          do
          {
            v44 = *v42;
            if (v44 < 0x30 || v44 >= v39)
            {
              if (v44 < 0x41 || v44 >= v40)
              {
                v37 = 0;
                if (v44 < 0x61 || v44 >= v41)
                {
                  return v37;
                }

                v45 = -87;
              }

              else
              {
                v45 = -55;
              }
            }

            else
            {
              v45 = -48;
            }

            v46 = v32 * a6;
            if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
            {
              return 0;
            }

            v32 = v46 + (v44 + v45);
            if (__OFADD__(v46, (v44 + v45)))
            {
              return 0;
            }

            ++v42;
            --v43;
          }

          while (v43);
          return v32;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_94;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v47 = a6 + 48;
      v48 = a6 + 55;
      v49 = a6 + 87;
      if (a6 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v50 = *v27;
          if (v50 < 0x30 || v50 >= v47)
          {
            if (v50 < 0x41 || v50 >= v48)
            {
              v37 = 0;
              if (v50 < 0x61 || v50 >= v49)
              {
                return v37;
              }

              v51 = -87;
            }

            else
            {
              v51 = -55;
            }
          }

          else
          {
            v51 = -48;
          }

          v52 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v52 + (v50 + v51);
          if (__OFADD__(v52, (v50 + v51)))
          {
            return 0;
          }

          ++v27;
          if (!--result)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 48;
      v30 = a6 + 55;
      v31 = a6 + 87;
      if (a6 > 10)
      {
        v29 = 58;
      }

      else
      {
        v31 = 97;
        v30 = 65;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v29)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              if (v35 < 0x61 || v35 >= v31)
              {
                return v37;
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          v38 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v38 - (v35 + v36);
          if (__OFSUB__(v38, (v35 + v36)))
          {
            return 0;
          }

          ++v33;
          if (!--v34)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
  return result;
}

unint64_t QueryError.description.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  if (v4 <= 1)
  {
    if (*(v0 + 24))
    {
      sub_1DB2BB4F4();

      v11 = 0xD000000000000010;
      MEMORY[0x1E1283490](v2, v1);
      MEMORY[0x1E1283490](0x6C6F63206E692060, 0xED000020736E6D75);
      v10 = MEMORY[0x1E1283680](v3, MEMORY[0x1E69E6158]);
      MEMORY[0x1E1283490](v10);

      return v11;
    }

    sub_1DB2BB4F4();

    v11 = 0x2068637573206F4ELL;
    v6 = v2;
    v7 = v1;
  }

  else
  {
    if (v4 == 2)
    {
      sub_1DB2BB4F4();

      v11 = 0xD000000000000012;
      MEMORY[0x1E1283490](v2, v1);
      MEMORY[0x1E1283490](0xD000000000000018, 0x80000001DB2D1B00);
      v8 = MEMORY[0x1E1283680](v3, MEMORY[0x1E69E6158]);
      MEMORY[0x1E1283490](v8);

      v6 = 41;
    }

    else
    {
      if (v4 == 3)
      {
        sub_1DB2BB4F4();

        v5 = 0xD000000000000022;
      }

      else
      {
        sub_1DB2BB4F4();

        v5 = 0xD00000000000002ALL;
      }

      v11 = v5;
      MEMORY[0x1E1283490](v2, v1);
      v6 = 96;
    }

    v7 = 0xE100000000000000;
  }

  MEMORY[0x1E1283490](v6, v7);
  return v11;
}

uint64_t _s19OnDeviceStorageCore10QueryErrorO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  LODWORD(v5) = *(a1 + 24);
  v7 = *a2;
  v6 = a2[1];
  v8 = a2[2];
  v9 = *(a2 + 24);
  v25[0] = *a1;
  v25[1] = v3;
  v25[2] = v4;
  v26 = v5;
  v27 = v7;
  v28 = v6;
  v29 = v8;
  v30 = v9;
  if (v5 <= 1)
  {
    if (v5)
    {
      if (v9 == 1)
      {
        if (v2 == v7 && v3 == v6 || (v17 = v8, v18 = sub_1DB2BB924(), v8 = v17, (v18 & 1) != 0))
        {
          v19 = v8;
          v13 = sub_1DB1375FC(v4, v8);
          LOBYTE(v5) = 1;
          sub_1DB148048(v7, v6, v19, 1u);
          goto LABEL_30;
        }

        LOBYTE(v5) = 1;
        v20 = v7;
        v21 = v6;
        LOBYTE(v9) = 1;
LABEL_29:
        sub_1DB148048(v20, v21, v8, v9);
        v13 = 0;
        goto LABEL_30;
      }
    }

    else if (!v9)
    {
      if (v2 == v7 && v3 == v6)
      {
        sub_1DB148048(v2, v3, v8, 0);
        LOBYTE(v5) = 0;
        v13 = 1;
      }

      else
      {
        v5 = v8;
        v13 = sub_1DB2BB924();
        sub_1DB148048(v7, v6, v5, 0);
        LOBYTE(v5) = 0;
      }

      goto LABEL_30;
    }

LABEL_28:
    v20 = v7;
    v21 = v6;
    goto LABEL_29;
  }

  if (v5 != 2)
  {
    if (v5 == 3)
    {
      if (v9 == 3)
      {
        if (v2 != v7 || v3 != v6)
        {
          v23 = v8;
          v13 = sub_1DB2BB924();
          LOBYTE(v5) = 3;
          sub_1DB148048(v7, v6, v23, 3u);
          goto LABEL_30;
        }

        LOBYTE(v5) = 3;
        v10 = v2;
        v11 = v3;
        v12 = 3;
        goto LABEL_22;
      }
    }

    else if (v9 == 4)
    {
      if (v2 != v7 || v3 != v6)
      {
        v24 = v8;
        v13 = sub_1DB2BB924();
        LOBYTE(v5) = 4;
        sub_1DB148048(v7, v6, v24, 4u);
        goto LABEL_30;
      }

      LOBYTE(v5) = 4;
      v10 = v2;
      v11 = v3;
      v12 = 4;
LABEL_22:
      sub_1DB148048(v10, v11, v8, v12);
      v13 = 1;
      goto LABEL_30;
    }

    goto LABEL_28;
  }

  if (v9 != 2)
  {
    goto LABEL_28;
  }

  if (v2 != v7 || v3 != v6)
  {
    v14 = v8;
    v15 = sub_1DB2BB924();
    v8 = v14;
    if ((v15 & 1) == 0)
    {
      LOBYTE(v5) = 2;
      v20 = v7;
      v21 = v6;
      LOBYTE(v9) = 2;
      goto LABEL_29;
    }
  }

  v16 = v8;
  v13 = sub_1DB1375FC(v4, v8);
  LOBYTE(v5) = 2;
  sub_1DB148048(v7, v6, v16, 2u);
LABEL_30:
  sub_1DB148048(v2, v3, v4, v5);
  sub_1DB1480BC(v25);
  return v13 & 1;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1DB147FA0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 25))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 24);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1DB147FE8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

void sub_1DB148048(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 4u)
  {
    if (((1 << a4) & 0x19) != 0)
    {
    }

    else
    {
    }
  }
}

uint64_t sub_1DB1480BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26F70, &qword_1DB2BD748);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *ClientError.errorDescription.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 48);
  if (v5 > 3)
  {
    if (*(v0 + 48) <= 5u)
    {
      if (v5 == 4)
      {
        return 0xD00000000000002BLL;
      }

      v23 = 0;
      v24 = 0xE000000000000000;
      sub_1DB2BB4F4();
      MEMORY[0x1E1283490](0xD000000000000031, 0x80000001DB2D1BC0);
      MEMORY[0x1E1283490](v2, v1);
      v17 = 0x7365636976656420;
      v18 = 0xE800000000000000;
      goto LABEL_22;
    }

    if (v5 != 6)
    {
      if (v5 != 7)
      {
        return 0xD00000000000001CLL;
      }

      sub_1DB2BB4F4();

      v23 = 0xD00000000000001DLL;
      v24 = 0x80000001DB2D1B60;
      goto LABEL_19;
    }

    v11 = *(v0 + 32);
    v12 = *(v0 + 40);
    v23 = 0;
    v24 = 0xE000000000000000;
    sub_1DB2BB4F4();
    v25 = 0;
    v26 = 0xE000000000000000;
    MEMORY[0x1E1283490](0xD000000000000031, 0x80000001DB2D1B80);
    v13 = *(v2 + 16);
    if (v13)
    {
      v14 = sub_1DB1383EC(*(v2 + 16), 0);
      v15 = sub_1DB149DC0(&v23, v14 + 4, v13, v2);
      v16 = v23;
      v22 = v15;
      sub_1DB149F18(v2, v1, v3, v4, v11, v12, 6u);
      sub_1DB149FCC(v16);
      if (v22 != v13)
      {
        __break(1u);
        return 0xD00000000000001BLL;
      }
    }

    else
    {
      v14 = MEMORY[0x1E69E7CC0];
    }

    v23 = v14;
    sub_1DB148C3C(&v23);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26CE8, &qword_1DB2BCC60);
    sub_1DB138A00();
    v19 = sub_1DB2BAD24();
    v21 = v20;

    MEMORY[0x1E1283490](v19, v21);

    return v25;
  }

  if (*(v0 + 48) <= 1u)
  {
    if (*(v0 + 48))
    {
      return 0xD00000000000001BLL;
    }

    v23 = 0;
    v24 = 0xE000000000000000;
    sub_1DB2BB4F4();
    MEMORY[0x1E1283490](0xD000000000000012, 0x80000001DB2D1CC0);
    MEMORY[0x1E1283490](v3, v4);
    v6 = "Failed to perform ";
    v7 = 0xD00000000000002CLL;
LABEL_18:
    MEMORY[0x1E1283490](v7, v6 | 0x8000000000000000);
LABEL_19:
    v17 = v2;
    v18 = v1;
LABEL_22:
    MEMORY[0x1E1283490](v17, v18);
    return v23;
  }

  if (v5 != 2)
  {
    v23 = 0;
    v24 = 0xE000000000000000;
    sub_1DB2BB4F4();
    v6 = " for insert or upsert query";
    v7 = 0xD000000000000038;
    goto LABEL_18;
  }

  v23 = 0;
  v24 = 0xE000000000000000;
  sub_1DB2BB4F4();
  MEMORY[0x1E1283490](0xD00000000000002BLL, 0x80000001DB2D1C70);
  v8 = sub_1DB2BB8F4();
  MEMORY[0x1E1283490](v8);

  MEMORY[0x1E1283490](0x696C2078616D202CLL, 0xED0000203A74696DLL);
  v25 = v1;
  v9 = sub_1DB2BB8F4();
  MEMORY[0x1E1283490](v9);

  return v23;
}

uint64_t ClientError.failureReason.getter()
{
  result = 0;
  v3 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  v6 = *(v0 + 48);
  if (v6 > 6)
  {
    if (v6 == 7)
    {

      return v4;
    }

    if (v6 != 8)
    {
      return result;
    }

LABEL_7:

    return v3;
  }

  if (v6 == 1)
  {
    v8 = v0[4];
    v7 = v0[5];
    sub_1DB2BB4F4();

    MEMORY[0x1E1283490](v3, v2);
    MEMORY[0x1E1283490](0x746365707865202CLL, 0xEC000000203A6465);
    MEMORY[0x1E1283490](v4, v5);
    MEMORY[0x1E1283490](0x766965636572202CLL, 0xEC000000203A6465);
    MEMORY[0x1E1283490](v8, v7);
    return 0x203A697061;
  }

  if (v6 == 4)
  {
    goto LABEL_7;
  }

  return result;
}

unint64_t ClientError.recoverySuggestion.getter()
{
  if (*(v0 + 48) == 4)
  {
    return 0xD000000000000045;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1DB14873C()
{
  if (*(v0 + 48) == 4)
  {
    return 0xD000000000000045;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DB1487F4@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = 0;
  v3 = 0uLL;
  if (result <= 4)
  {
    if (result > 2)
    {
      v9 = 0;
      v10 = 0;
      if (result == 3)
      {
        v4 = 0x80000001DB2D2100;
        v6 = 0x80000001DB2D2120;
        v8 = 0x80000001DB2D2140;
        v2 = 0xD000000000000011;
        v3 = xmmword_1DB2BD750;
        v5 = 0xD000000000000014;
        v7 = 0xD00000000000004BLL;
      }

      else
      {
        v4 = 0x80000001DB2D2080;
        v6 = 0x80000001DB2D20A0;
        v8 = 0x80000001DB2D20C0;
        v2 = 0xD000000000000014;
        v3 = xmmword_1DB2BD750;
        v7 = 0xD000000000000036;
        v5 = 0xD000000000000016;
      }
    }

    else if (result == 1)
    {
      v9 = 0;
      v10 = 0;
      v4 = 0x80000001DB2D2230;
      v6 = 0x80000001DB2D2250;
      v8 = 0x80000001DB2D2270;
      v2 = 0xD000000000000016;
      v3 = xmmword_1DB2BD750;
      v7 = 0xD00000000000005ALL;
      v5 = 0xD000000000000018;
    }

    else
    {
      v4 = 0;
      v5 = 0;
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = 0;
      if (result == 2)
      {
        v9 = 0;
        v10 = 0;
        v2 = 0xD000000000000010;
        v4 = 0x80000001DB2D2190;
        v6 = 0x80000001DB2D21B0;
        v8 = 0x80000001DB2D21D0;
        v5 = 0xD000000000000012;
        v3 = xmmword_1DB2BD750;
        v7 = 0xD000000000000058;
      }
    }
  }

  else if (result <= 6)
  {
    v9 = 0;
    v10 = 0;
    if (result == 5)
    {
      v5 = 0xD000000000000010;
      v6 = 0x80000001DB2D1FF0;
      v8 = 0x80000001DB2D2010;
      v3 = xmmword_1DB2BD750;
      v7 = 0xD000000000000062;
      v4 = 0xEE00646570706F72;
      v2 = 0x4473776F526C6C61;
    }

    else
    {
      v6 = 0x80000001DB2D1F70;
      v8 = 0x80000001DB2D1F90;
      v5 = 0xD000000000000012;
      v7 = 0xD000000000000055;
      v3 = xmmword_1DB2BD750;
      v4 = 0xEE0064656C626173;
      v2 = 0x69446E6F6D656164;
    }
  }

  else if (result == 7)
  {
    v9 = 0;
    v10 = 0;
    v6 = 0x80000001DB2D1ED0;
    v8 = 0x80000001DB2D1EF0;
    v5 = 0xD000000000000015;
    v7 = 0xD000000000000077;
    v3 = xmmword_1DB2BD750;
    v4 = 0xEE007365756C6156;
    v2 = 0x657A69737265766FLL;
  }

  else if (result == 8)
  {
    v2 = 0xD000000000000010;
    v4 = 0x80000001DB2D1DE0;
    v6 = 0x80000001DB2D1E00;
    v8 = 0x80000001DB2D1E20;
    v10 = 0x80000001DB2D1E60;
    v5 = 0xD000000000000017;
    v7 = 0xD000000000000033;
    v3 = xmmword_1DB2BD750;
    v9 = 0xD000000000000063;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    if (result == 9)
    {
      v9 = 0;
      v10 = 0;
      v4 = 0x80000001DB2D1D80;
      v6 = 0x80000001DB2D1B40;
      v8 = 0x80000001DB2D1DA0;
      v2 = 0xD000000000000014;
      v3 = xmmword_1DB2BD750;
      v5 = 0xD00000000000001CLL;
      v7 = 0xD000000000000030;
    }
  }

  *a2 = v2;
  *(a2 + 8) = v4;
  *(a2 + 16) = v3;
  *(a2 + 32) = v5;
  *(a2 + 40) = v6;
  *(a2 + 48) = v7;
  *(a2 + 56) = v8;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 80) = v9;
  *(a2 + 88) = v10;
  return result;
}

uint64_t sub_1DB148C3C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1DB25C134(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1DB148CA8(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1DB148CA8(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1DB2BB8E4();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_1DB2BB104();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1DB148E70(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1DB148DA0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1DB148DA0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_1DB2BB924(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1DB148E70(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_1DB25C120(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_1DB14944C((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_1DB2BB924();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_1DB2BB924();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1DB1571EC(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_1DB1571EC((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
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
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_1DB14944C((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1DB25C120(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_1DB25C094(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = v9 + a4;
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_1DB2BB924(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_1DB14944C(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_1DB2BB924() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_1DB2BB924() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

void sub_1DB149674(void *a1, void *a2, uint64_t a3)
{
  v5 = v3;
  v9 = *(v5 + 16);
  os_unfair_lock_lock((v9 + 24));
  sqlite3_reset(*(v9 + 16));
  os_unfair_lock_unlock((v9 + 24));
  v46 = a1;
  if (!a2 || !a3)
  {
    goto LABEL_60;
  }

  if (a3 < 0)
  {
    goto LABEL_67;
  }

  v48 = v5;
  sub_1DB143044();
  v10 = 1;
  v47 = a3;
  while (1)
  {
    v49 = v10;
    v11 = *(v5 + 24);
    if (qword_1EE13F098 != -1)
    {
      swift_once();
    }

    sub_1DB2BB294();
    v50 = a2;
    if ((v57 & 1) != 0 || v56 != v11)
    {
      sub_1DB2BB2C4(&v54);
      if (v54 != 1)
      {
        goto LABEL_60;
      }
    }

    else
    {
      v12 = *(v5 + 16);
      os_unfair_lock_lock((v12 + 24));
      sub_1DB14A424((v12 + 16), &v56);
      os_unfair_lock_unlock((v12 + 24));
      if ((v56 & 1) == 0)
      {
        goto LABEL_60;
      }
    }

    Statement.row.getter(&v56);
    v14 = v56;
    v13 = v57;
    swift_retain_n();
    v52 = v13;
    if (v13 >= 1)
    {
      break;
    }

    v16 = 0;
    v53 = MEMORY[0x1E69E7CC0];
    v18 = v4;
LABEL_53:

    v42 = v53;
    v43 = v53[3];
    if (v43 >= 2)
    {
      v44 = v43 >> 1;
      v41 = __OFSUB__(v44, v16);
      v45 = v44 - v16;
      if (v41)
      {
        goto LABEL_66;
      }

      v42 = v53;
      v53[2] = v45;
    }

    *v50 = v42;
    if (v49 == v47)
    {
      v5 = v48;
LABEL_60:
      *v46 = v5;
      return;
    }

    v4 = v18;
    a2 = v50 + 1;
    v10 = v49 + 1;
    v5 = v48;
    if (__OFADD__(v49, 1))
    {
      goto LABEL_65;
    }
  }

  v15 = 0;
  v16 = 0;
  v17 = (MEMORY[0x1E69E7CC0] + 32);
  v53 = MEMORY[0x1E69E7CC0];
  v18 = v4;
  while (1)
  {
    os_unfair_lock_lock((v14 + 24));
    if (v15 == 0x80000000)
    {
      break;
    }

    v19 = sqlite3_column_type(*(v14 + 16), v15);
    os_unfair_lock_unlock((v14 + 24));
    if (v19 > 2)
    {
      if (v19 == 3)
      {
        os_unfair_lock_lock((v14 + 24));
        if (!sqlite3_column_text(*(v14 + 16), v15))
        {
          goto LABEL_68;
        }

        v27 = COERCE_DOUBLE(sub_1DB2BAF14());
        v18 = v31;
        os_unfair_lock_unlock((v14 + 24));
        v30 = MEMORY[0x1E69E6158];
        v21 = &protocol witness table for String;
        if (v16)
        {
          goto LABEL_49;
        }

        goto LABEL_39;
      }

      if (v19 != 5)
      {
        if (v19 == 4)
        {
          v20 = v18;
          v21 = sub_1DB138CA8();
          os_unfair_lock_lock((v14 + 24));
          v22 = *(v14 + 16);
          v23 = sqlite3_column_blob(v22, v15);
          if (v23 && (v24 = v23, (v25 = sqlite3_column_bytes(v22, v15)) != 0))
          {
            v26 = v25;
            if (v25 <= 0)
            {
              v27 = MEMORY[0x1E69E7CC0];
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26CD8, &unk_1DB2BCC50);
              v27 = COERCE_DOUBLE(swift_allocObject());
              v28 = _swift_stdlib_malloc_size(*&v27);
              *(*&v27 + 16) = v26;
              *(*&v27 + 24) = 2 * v28 - 64;
            }

            memcpy((*&v27 + 32), v24, v26);
          }

          else
          {
            v27 = MEMORY[0x1E69E7CC0];
          }

          v18 = v20;
          os_unfair_lock_unlock((v14 + 24));
          v30 = &type metadata for Blob;
          if (v16)
          {
            goto LABEL_49;
          }

          goto LABEL_39;
        }

LABEL_32:
        v54 = 0;
        v55 = 0xE000000000000000;
        sub_1DB2BB4F4();

        v54 = 0xD000000000000019;
        v55 = 0x80000001DB2D1D60;
        v32 = sub_1DB2BB8F4();
        MEMORY[0x1E1283490](v32);

        sub_1DB15B09C(v54, v55);
      }

      v18 = 0;
      v27 = 0.0;
      v30 = 0;
      v21 = 0;
      if (v16)
      {
        goto LABEL_49;
      }

      goto LABEL_39;
    }

    if (v19 == 1)
    {
      os_unfair_lock_lock((v14 + 24));
      v27 = COERCE_DOUBLE(sqlite3_column_int64(*(v14 + 16), v15));
      os_unfair_lock_unlock((v14 + 24));
      v30 = MEMORY[0x1E69E7360];
      v21 = &protocol witness table for Int64;
      if (v16)
      {
        goto LABEL_49;
      }
    }

    else
    {
      if (v19 != 2)
      {
        goto LABEL_32;
      }

      os_unfair_lock_lock((v14 + 24));
      v29 = sqlite3_column_double(*(v14 + 16), v15);
      os_unfair_lock_unlock((v14 + 24));
      v27 = v29;
      v30 = MEMORY[0x1E69E63B0];
      v21 = &protocol witness table for Double;
      if (v16)
      {
        goto LABEL_49;
      }
    }

LABEL_39:
    v33 = v53[3];
    if (((v33 >> 1) + 0x4000000000000000) < 0)
    {
      goto LABEL_64;
    }

    v51 = v18;
    v34 = v33 & 0xFFFFFFFFFFFFFFFELL;
    if (v34 <= 1)
    {
      v35 = 1;
    }

    else
    {
      v35 = v34;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E20, &unk_1DB2BCF80);
    v36 = swift_allocObject();
    v37 = (_swift_stdlib_malloc_size(v36) - 32) / 40;
    v36[2] = v35;
    v36[3] = 2 * v37;
    v38 = (v36 + 4);
    v39 = v53[3] >> 1;
    if (v53[2])
    {
      v40 = v53 + 4;
      if (v36 != v53 || v38 >= v40 + 40 * v39)
      {
        memmove(v36 + 4, v40, 40 * v39);
      }

      v53[2] = 0;
    }

    v17 = (v38 + 40 * v39);
    v16 = (v37 & 0x7FFFFFFFFFFFFFFFLL) - v39;

    v53 = v36;
    v18 = v51;
LABEL_49:
    v41 = __OFSUB__(v16--, 1);
    if (v41)
    {
      goto LABEL_63;
    }

    ++v15;
    *v17 = v27;
    *(v17 + 1) = v18;
    v17[2] = 0.0;
    *(v17 + 3) = v30;
    *(v17 + 4) = v21;
    v17 += 5;
    if (v52 == v15)
    {
      goto LABEL_53;
    }
  }

  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
}

uint64_t sub_1DB149C78(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = a4;
  v11[4] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26F98, &qword_1DB2CC400);
  result = swift_allocObject();
  v13 = result;
  *(result + 16) = sub_1DB14A23C;
  *(result + 24) = v11;
  if (!a2)
  {
LABEL_10:
    a3 = 0;
    goto LABEL_12;
  }

  if (!a3)
  {
LABEL_12:
    *a1 = v13;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v14 = 1;
    while (1)
    {
      (*(v13 + 16))(&v18);
      if (*(&v19 + 1) == 1)
      {
        break;
      }

      v15 = v19;
      v21 = v18;
      v22 = v19;
      v16 = v20;
      v23 = v20;
      *a2 = v18;
      *(a2 + 16) = v15;
      *(a2 + 32) = v16;
      if (a3 == v14)
      {
        goto LABEL_12;
      }

      a2 += 40;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_10;
      }
    }

    sub_1DB14A248(&v18);
    a3 = v14 - 1;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

void *sub_1DB149DC0(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1DB149F18(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  if (a7 <= 5u)
  {
    if (a7 - 3 < 3)
    {
      goto LABEL_12;
    }

    if (a7)
    {
      if (a7 != 1)
      {
        return v7;
      }

      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (a7 != 6)
  {
    if (a7 != 7)
    {
      v7 = a2;
      if (a7 != 8)
      {
        return v7;
      }

      goto LABEL_12;
    }

LABEL_11:
  }

LABEL_12:
}

unint64_t sub_1DB149FD4(void *a1)
{
  a1[1] = sub_1DB14A00C();
  a1[2] = sub_1DB14A060();
  result = sub_1DB14A0B4();
  a1[3] = result;
  return result;
}

unint64_t sub_1DB14A00C()
{
  result = qword_1ECC26F78;
  if (!qword_1ECC26F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC26F78);
  }

  return result;
}

unint64_t sub_1DB14A060()
{
  result = qword_1ECC26F80;
  if (!qword_1ECC26F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC26F80);
  }

  return result;
}

unint64_t sub_1DB14A0B4()
{
  result = qword_1ECC26F88;
  if (!qword_1ECC26F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC26F88);
  }

  return result;
}

unint64_t sub_1DB14A10C()
{
  result = qword_1ECC26F90;
  if (!qword_1ECC26F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC26F90);
  }

  return result;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1DB14A188(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF8 && *(a1 + 49))
  {
    return (*a1 + 248);
  }

  v3 = *(a1 + 48);
  if (v3 <= 8)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1DB14A1D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF7)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 248;
    if (a3 >= 0xF8)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF8)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_1DB14A248(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26FA0, &unk_1DB2BD9E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_1DB14A2CC(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1DB14A484@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000013 && 0x80000001DB2D2320 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1DB2BB924();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1DB14A518(uint64_t a1)
{
  v2 = sub_1DB14A7EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB14A554(uint64_t a1)
{
  v2 = sub_1DB14A7EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB14A59C(uint64_t a1)
{
  v2 = sub_1DB14A840();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB14A5D8(uint64_t a1)
{
  v2 = sub_1DB14A840();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CoreError.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26FA8, &qword_1DB2BD9F0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26FB0, &qword_1DB2BD9F8);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB14A7EC();
  sub_1DB2BBA94();
  sub_1DB14A840();
  sub_1DB2BB804();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_1DB14A7EC()
{
  result = qword_1ECC26FB8;
  if (!qword_1ECC26FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC26FB8);
  }

  return result;
}

unint64_t sub_1DB14A840()
{
  result = qword_1ECC26FC0;
  if (!qword_1ECC26FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC26FC0);
  }

  return result;
}

uint64_t CoreError.hashValue.getter()
{
  sub_1DB2BBA04();
  MEMORY[0x1E1283FC0](0);
  return sub_1DB2BBA54();
}

uint64_t CoreError.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26FC8, &qword_1DB2BDA00);
  v16 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v15 - v4;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26FD0, &qword_1DB2BDA08);
  v6 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB14A7EC();
  sub_1DB2BBA84();
  if (!v1)
  {
    v9 = v16;
    v15 = v6;
    if (*(sub_1DB2BB7D4() + 16) == 1)
    {
      sub_1DB14A840();
      sub_1DB2BB704();
      v10 = v15;
      (*(v9 + 8))(v5, v3);
    }

    else
    {
      v11 = sub_1DB2BB564();
      swift_allocError();
      v13 = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26FD8, &qword_1DB2BDA10);
      *v13 = &type metadata for CoreError;
      sub_1DB2BB714();
      sub_1DB2BB554();
      (*(*(v11 - 8) + 104))(v13, *MEMORY[0x1E69E6AF8], v11);
      swift_willThrow();
      v10 = v15;
    }

    (*(v10 + 8))(v8, v17);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1DB14ABF4()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 20;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DB14AC28()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 11;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DB14AC5C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 10;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DB14AC90()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DB14ACC4()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 6;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DB14ACF8()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1DB14AD30()
{
  result = qword_1ECC26FE0;
  if (!qword_1ECC26FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC26FE0);
  }

  return result;
}

unint64_t sub_1DB14AD88()
{
  result = qword_1ECC26FE8;
  if (!qword_1ECC26FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC26FE8);
  }

  return result;
}

uint64_t sub_1DB14AE18(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26FA8, &qword_1DB2BD9F0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26FB0, &qword_1DB2BD9F8);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB14A7EC();
  sub_1DB2BBA94();
  sub_1DB14A840();
  sub_1DB2BB804();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_1DB14B024()
{
  result = qword_1ECC26FF0;
  if (!qword_1ECC26FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC26FF0);
  }

  return result;
}

unint64_t sub_1DB14B07C()
{
  result = qword_1ECC26FF8;
  if (!qword_1ECC26FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC26FF8);
  }

  return result;
}

unint64_t sub_1DB14B0D4()
{
  result = qword_1ECC27000;
  if (!qword_1ECC27000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27000);
  }

  return result;
}

unint64_t sub_1DB14B12C()
{
  result = qword_1ECC27008;
  if (!qword_1ECC27008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27008);
  }

  return result;
}

unint64_t sub_1DB14B184()
{
  result = qword_1ECC27010;
  if (!qword_1ECC27010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27010);
  }

  return result;
}

uint64_t DaemonError.errorCode.getter()
{
  v1 = *v0;
  result = 403;
  switch(*(v0 + 32))
  {
    case 1:
      result = 404;
      break;
    case 2:
      result = 405;
      break;
    case 3:
      result = 406;
      break;
    case 4:
      result = 407;
      break;
    case 5:
      result = 408;
      break;
    case 6:
      result = 409;
      break;
    case 7:
      result = 410;
      break;
    case 8:
      result = 411;
      break;
    case 9:
      result = 412;
      break;
    case 0xA:
      result = 414;
      break;
    case 0xB:
      result = 417;
      break;
    case 0xC:
      v3 = v0[1];
      v4 = v0[2] | v0[3];
      if (v4 | v1 | v3)
      {
        v5 = v4 | v3;
        if (v1 == 1 && v5 == 0)
        {
          result = 402;
        }

        else if (v1 == 2 && v5 == 0)
        {
          result = 413;
        }

        else if (v1 != 3 || v5)
        {
          if (v1 != 4 || v5)
          {
            if (v1 != 5 || v5)
            {
              if (v5)
              {
                v8 = 0;
              }

              else
              {
                v8 = v1 == 6;
              }

              if (v8)
              {
                result = 419;
              }

              else
              {
                result = 420;
              }
            }

            else
            {
              result = 418;
            }
          }

          else
          {
            result = 416;
          }
        }

        else
        {
          result = 415;
        }
      }

      else
      {
        result = 401;
      }

      break;
    default:
      return result;
  }

  return result;
}

unint64_t DaemonError.errorDescription.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  switch(*(v0 + 32))
  {
    case 1:
      sub_1DB2BB4F4();

      v15 = 0xD00000000000002ALL;
      goto LABEL_26;
    case 2:
      v18 = 0;
      sub_1DB2BB4F4();
      MEMORY[0x1E1283490](0xD00000000000001ELL, 0x80000001DB2D26C0);
      goto LABEL_28;
    case 3:
      sub_1DB2BB4F4();

      v18 = 0x6C62617420656854;
      MEMORY[0x1E1283490](v1, v2);
      v5 = " schemas in the query statement";
      v6 = 0xD00000000000001ELL;
      goto LABEL_23;
    case 4:
      v18 = 0;
      sub_1DB2BB4F4();
      MEMORY[0x1E1283490](0xD00000000000002ALL, 0x80000001DB2D2650);
      v7 = sub_1DB2BB8F4();
      MEMORY[0x1E1283490](v7);

      v8 = " are not supported, found ";
      v9 = 0xD00000000000001FLL;
      goto LABEL_33;
    case 5:
      v18 = 0;
      sub_1DB2BB4F4();
      MEMORY[0x1E1283490](0xD000000000000018, 0x80000001DB2D2600);
      sub_1DB2BB674();
      MEMORY[0x1E1283490](0xD000000000000028, 0x80000001DB2D2620);
LABEL_28:
      sub_1DB2BB674();
      return v18;
    case 6:
      v18 = 0;
      sub_1DB2BB4F4();
      MEMORY[0x1E1283490](0xD00000000000004FLL, 0x80000001DB2D25B0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27018, &qword_1DB2BDD60);
      sub_1DB14B9F4();
      sub_1DB143508();
      v17 = sub_1DB2BB054();
      goto LABEL_31;
    case 7:
      v18 = 0;
      sub_1DB2BB4F4();
      MEMORY[0x1E1283490](0xD00000000000001BLL, 0x80000001DB2D2550);
      MEMORY[0x1E1283490](v1, v2);
      MEMORY[0x1E1283490](0xD000000000000015, 0x80000001DB2D2570);
      MEMORY[0x1E1283490](v4, v3);
      v8 = ", to existing table: ";
      v9 = 0xD000000000000010;
      goto LABEL_33;
    case 8:
      v18 = 0;
      sub_1DB2BB4F4();
      MEMORY[0x1E1283490](0x203A6E6D756C6F43, 0xE800000000000000);
      MEMORY[0x1E1283490](v1, v2);
      MEMORY[0x1E1283490](0xD00000000000001BLL, 0x80000001DB2D2510);
      MEMORY[0x1E1283490](v4, v3);
      v8 = ", added to existing table: ";
      v9 = 0xD000000000000012;
LABEL_33:
      v16 = v8 | 0x8000000000000000;
      goto LABEL_34;
    case 9:
    case 0xB:
      sub_1DB2BB4F4();

      v15 = 0xD00000000000001CLL;
LABEL_26:
      v18 = v15;
      v9 = v1;
      v16 = v2;
      goto LABEL_34;
    case 0xA:
      sub_1DB2BB4F4();

      v18 = 0xD000000000000027;
      v17 = sub_1DB2BB304();
LABEL_31:
      MEMORY[0x1E1283490](v17);

      return v18;
    case 0xC:
      if (!(v4 | v2 | v1 | v3))
      {
        return 0xD000000000000046;
      }

      v10 = v4 | v2 | v3;
      if (v1 == 1 && v10 == 0)
      {
        return 0xD00000000000005BLL;
      }

      if (v1 == 2 && v10 == 0)
      {
        return 0xD000000000000034;
      }

      if (v1 == 3 && v10 == 0)
      {
        return 0xD000000000000036;
      }

      if (v1 == 4 && !v10)
      {
        return 0xD000000000000055;
      }

      if (v1 == 5 && !v10)
      {
        return 0xD000000000000027;
      }

      if (v1 != 6 || v10)
      {
        return 0xD000000000000023;
      }

      return 0xD00000000000001ALL;
    default:
      v18 = 0;
      sub_1DB2BB4F4();
      MEMORY[0x1E1283490](0xD00000000000002ALL, 0x80000001DB2D2710);
      MEMORY[0x1E1283490](v1, v2);
      v5 = "ession for connection id: ";
      v6 = 0xD000000000000012;
LABEL_23:
      MEMORY[0x1E1283490](v6, v5 | 0x8000000000000000);
      v9 = v4;
      v16 = v3;
LABEL_34:
      MEMORY[0x1E1283490](v9, v16);
      return v18;
  }
}

unint64_t sub_1DB14B9F4()
{
  result = qword_1ECC27020;
  if (!qword_1ECC27020)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC27018, &qword_1DB2BDD60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27020);
  }

  return result;
}

uint64_t sub_1DB14BA5C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

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
  v22 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    sub_1DB2BBA04();

    sub_1DB2BAE84();
    v16 = sub_1DB2BBA54();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v19 = ~v17;
    while (1)
    {
      v20 = (*(a2 + 48) + 16 * v18);
      v21 = *v20 == v15 && v20[1] == v14;
      if (v21 || (sub_1DB2BB924() & 1) != 0)
      {
        break;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v22;
  }

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
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1DB14BC14(char a1)
{
  result = 0x6975716552756E64;
  switch(a1)
  {
    case 1:
      result = 0x7461706D6F636E69;
      break;
    case 2:
      result = 0x6F69737365536F6ELL;
      break;
    case 3:
    case 7:
    case 13:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 0xD00000000000001ALL;
      break;
    case 5:
      result = 0x656C6261546F6ELL;
      break;
    case 6:
      result = 0x656C7069746C756DLL;
      break;
    case 8:
    case 9:
      result = 0xD000000000000013;
      break;
    case 10:
      result = 0xD000000000000014;
      break;
    case 11:
      result = 0xD000000000000018;
      break;
    case 12:
      result = 0x656C646E75426F6ELL;
      break;
    case 14:
      result = 0xD000000000000018;
      break;
    case 15:
      result = 0xD000000000000019;
      break;
    case 16:
      result = 0xD000000000000018;
      break;
    case 17:
      result = 0x676E45534D416F6ELL;
      break;
    case 18:
      result = 0xD000000000000018;
      break;
    case 19:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DB14BE58@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DB1535FC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DB14BE8C(uint64_t a1)
{
  v2 = sub_1DB15137C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB14BEC8(uint64_t a1)
{
  v2 = sub_1DB15137C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB14BF04(uint64_t a1)
{
  v2 = sub_1DB151B20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB14BF40(uint64_t a1)
{
  v2 = sub_1DB151B20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB14BF7C(uint64_t a1)
{
  v2 = sub_1DB151ACC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB14BFB8(uint64_t a1)
{
  v2 = sub_1DB151ACC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB14BFF4(uint64_t a1)
{
  v2 = sub_1DB1513D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB14C030(uint64_t a1)
{
  v2 = sub_1DB1513D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB14C078(uint64_t a1)
{
  v2 = sub_1DB1515C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB14C0B4(uint64_t a1)
{
  v2 = sub_1DB1515C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB14C0F0(uint64_t a1)
{
  v2 = sub_1DB151868();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB14C12C(uint64_t a1)
{
  v2 = sub_1DB151868();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB14C168(uint64_t a1)
{
  v2 = sub_1DB1516C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB14C1A4(uint64_t a1)
{
  v2 = sub_1DB1516C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB14C1E0(uint64_t a1)
{
  v2 = sub_1DB151718();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB14C21C(uint64_t a1)
{
  v2 = sub_1DB151718();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB14C258(uint64_t a1)
{
  v2 = sub_1DB151478();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB14C294(uint64_t a1)
{
  v2 = sub_1DB151478();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB14C2D0(uint64_t a1)
{
  v2 = sub_1DB15161C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB14C30C(uint64_t a1)
{
  v2 = sub_1DB15161C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB14C348(uint64_t a1)
{
  v2 = sub_1DB151A24();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB14C384(uint64_t a1)
{
  v2 = sub_1DB151A24();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB14C3C0(uint64_t a1)
{
  v2 = sub_1DB151A78();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB14C3FC(uint64_t a1)
{
  v2 = sub_1DB151A78();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB14C438(uint64_t a1)
{
  v2 = sub_1DB151928();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB14C474(uint64_t a1)
{
  v2 = sub_1DB151928();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB14C4B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (sub_1DB2BB924() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 12639 && a2 == 0xE200000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DB2BB924();

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

uint64_t sub_1DB14C57C(uint64_t a1)
{
  v2 = sub_1DB1517C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB14C5B8(uint64_t a1)
{
  v2 = sub_1DB1517C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB14C5F4(uint64_t a1)
{
  v2 = sub_1DB15176C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB14C630(uint64_t a1)
{
  v2 = sub_1DB15176C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB14C66C(uint64_t a1)
{
  v2 = sub_1DB151574();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB14C6A8(uint64_t a1)
{
  v2 = sub_1DB151574();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB14C6E4(uint64_t a1)
{
  v2 = sub_1DB151520();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB14C720(uint64_t a1)
{
  v2 = sub_1DB151520();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB14C75C(uint64_t a1)
{
  v2 = sub_1DB151424();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB14C798(uint64_t a1)
{
  v2 = sub_1DB151424();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB14C7D4(uint64_t a1)
{
  v2 = sub_1DB151670();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB14C810(uint64_t a1)
{
  v2 = sub_1DB151670();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB14C84C(uint64_t a1)
{
  v2 = sub_1DB1514CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB14C888(uint64_t a1)
{
  v2 = sub_1DB1514CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB14C8C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DB2BB924();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DB14C944(uint64_t a1)
{
  v2 = sub_1DB15197C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB14C980(uint64_t a1)
{
  v2 = sub_1DB15197C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DaemonError.encode(to:)(void *a1)
{
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27028, &qword_1DB2BDD68);
  v68 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v67 = &v63 - v3;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27030, &qword_1DB2BDD70);
  v65 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v64 = &v63 - v4;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27038, &qword_1DB2BDD78);
  v71 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v70 = &v63 - v5;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27040, &qword_1DB2BDD80);
  v94 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119);
  v118 = &v63 - v6;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27048, &qword_1DB2BDD88);
  v74 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v73 = &v63 - v7;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27050, &qword_1DB2BDD90);
  v77 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v76 = &v63 - v8;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27058, &qword_1DB2BDD98);
  v93 = *(v117 - 8);
  MEMORY[0x1EEE9AC00](v117);
  v116 = &v63 - v9;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27060, &qword_1DB2BDDA0);
  v80 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v79 = &v63 - v10;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27068, &qword_1DB2BDDA8);
  v91 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114);
  v112 = &v63 - v11;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27070, &qword_1DB2BDDB0);
  v92 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115);
  v113 = &v63 - v12;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27078, &qword_1DB2BDDB8);
  v90 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111);
  v110 = &v63 - v13;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27080, &qword_1DB2BDDC0);
  v89 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v107 = &v63 - v14;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27088, &qword_1DB2BDDC8);
  v88 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108);
  v106 = &v63 - v15;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27090, &qword_1DB2BDDD0);
  v87 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v103 = &v63 - v16;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27098, &qword_1DB2BDDD8);
  v86 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v102 = &v63 - v17;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC270A0, &qword_1DB2BDDE0);
  v85 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101);
  v100 = &v63 - v18;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC270A8, &qword_1DB2BDDE8);
  v97 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v95 = &v63 - v19;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC270B0, &qword_1DB2BDDF0);
  v84 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v96 = &v63 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC270B8, &qword_1DB2BDDF8);
  v82 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v63 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC270C0, &qword_1DB2BDE00);
  v83 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v63 - v25;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC270C8, &unk_1DB2BDE08);
  v123 = *(v125 - 8);
  MEMORY[0x1EEE9AC00](v125);
  v28 = &v63 - v27;
  v29 = v1[1];
  v126 = *v1;
  v30 = v1[3];
  v120 = v1[2];
  v121 = v30;
  v122 = v29;
  v31 = *(v1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB15137C();
  v124 = v28;
  sub_1DB2BBA94();
  switch(v31)
  {
    case 1:
      LOBYTE(v128) = 3;
      sub_1DB151A24();
      v32 = v95;
      v34 = v124;
      v33 = v125;
      sub_1DB2BB804();
      v36 = v98;
      sub_1DB2BB864();
      v37 = &v129;
      goto LABEL_30;
    case 2:
      LOBYTE(v128) = 4;
      sub_1DB15197C();
      v32 = v100;
      v34 = v124;
      v33 = v125;
      sub_1DB2BB804();
      LOBYTE(v128) = v126;
      sub_1DB1519D0();
      v36 = v101;
      sub_1DB2BB8A4();
      v37 = &v117;
      goto LABEL_30;
    case 3:
      LOBYTE(v128) = 5;
      sub_1DB151928();
      v32 = v102;
      v34 = v124;
      v33 = v125;
      sub_1DB2BB804();
      LOBYTE(v128) = 0;
      v45 = v127;
      v36 = v104;
      sub_1DB2BB864();
      if (!v45)
      {
        LOBYTE(v128) = 1;
        sub_1DB2BB864();
      }

      v37 = &v118;
      goto LABEL_30;
    case 4:
      LOBYTE(v128) = 6;
      sub_1DB151868();
      v38 = v103;
      v40 = v124;
      v39 = v125;
      sub_1DB2BB804();
      v128 = v126;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26CE8, &qword_1DB2BCC60);
      sub_1DB1518BC(&qword_1EE13E618, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
      v41 = v105;
      sub_1DB2BB8A4();
      v42 = &v119;
      goto LABEL_25;
    case 5:
      LOBYTE(v128) = 7;
      sub_1DB1517C0();
      v47 = v106;
      v40 = v124;
      v39 = v125;
      sub_1DB2BB804();
      v48 = BYTE1(v126);
      LOBYTE(v128) = v126;
      v130 = 0;
      sub_1DB151814();
      v49 = v108;
      v50 = v127;
      sub_1DB2BB8A4();
      if (!v50)
      {
        LOBYTE(v128) = v48;
        v130 = 1;
        sub_1DB2BB8A4();
      }

      (*(v88 + 8))(v47, v49);
      return (*(v123 + 8))(v40, v39);
    case 6:
      LOBYTE(v128) = 8;
      sub_1DB15176C();
      v38 = v107;
      v40 = v124;
      v39 = v125;
      sub_1DB2BB804();
      v128 = v126;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27018, &qword_1DB2BDD60);
      sub_1DB151BB8(&qword_1ECC27140, MEMORY[0x1E69E6160], MEMORY[0x1E69E64F0]);
      v41 = v109;
      sub_1DB2BB8A4();
      v42 = &v121;
      goto LABEL_25;
    case 7:
      LOBYTE(v128) = 9;
      sub_1DB151718();
      v32 = v110;
      v34 = v124;
      v33 = v125;
      sub_1DB2BB804();
      LOBYTE(v128) = 0;
      v46 = v127;
      v36 = v111;
      sub_1DB2BB864();
      if (!v46)
      {
        LOBYTE(v128) = 1;
        sub_1DB2BB864();
      }

      v37 = &v122;
      goto LABEL_30;
    case 8:
      LOBYTE(v128) = 10;
      sub_1DB1516C4();
      v32 = v113;
      v34 = v124;
      v33 = v125;
      sub_1DB2BB804();
      LOBYTE(v128) = 0;
      v52 = v127;
      v36 = v115;
      sub_1DB2BB864();
      if (!v52)
      {
        LOBYTE(v128) = 1;
        sub_1DB2BB864();
      }

      v37 = &v124;
      goto LABEL_30;
    case 9:
      LOBYTE(v128) = 11;
      sub_1DB151670();
      v32 = v112;
      v34 = v124;
      v33 = v125;
      sub_1DB2BB804();
      v36 = v114;
      sub_1DB2BB864();
      v37 = &v123;
      goto LABEL_30;
    case 10:
      LOBYTE(v128) = 13;
      sub_1DB1515C8();
      v38 = v116;
      v40 = v124;
      v39 = v125;
      sub_1DB2BB804();
      v128 = v126;
      v129 = v122;
      type metadata accessor for _NSRange(0);
      sub_1DB151B74(&qword_1ECC27110, MEMORY[0x1E6969F98]);
      v41 = v117;
      sub_1DB2BB8A4();
      v42 = &v125;
LABEL_25:
      (*(*(v42 - 32) + 8))(v38, v41);
      return (*(v123 + 8))(v40, v39);
    case 11:
      LOBYTE(v128) = 16;
      sub_1DB1514CC();
      v32 = v118;
      v34 = v124;
      v33 = v125;
      sub_1DB2BB804();
      v36 = v119;
      sub_1DB2BB864();
      v37 = &v126;
      goto LABEL_30;
    case 12:
      if (!(v120 | v122 | v126 | v121))
      {
        LOBYTE(v128) = 0;
        sub_1DB151B20();
        v55 = v124;
        v56 = v125;
        sub_1DB2BB804();
        (*(v83 + 8))(v26, v24);
        return (*(v123 + 8))(v55, v56);
      }

      v43 = v120 | v122 | v121;
      if (v126 == 1 && !v43)
      {
        LOBYTE(v128) = 1;
        sub_1DB151ACC();
        v44 = v124;
        v33 = v125;
        sub_1DB2BB804();
        (*(v82 + 8))(v23, v21);
        return (*(v123 + 8))(v44, v33);
      }

      v44 = v124;
      v33 = v125;
      if (v126 == 2 && !v43)
      {
        LOBYTE(v128) = 12;
        sub_1DB15161C();
        v57 = v79;
        sub_1DB2BB804();
        (*(v80 + 8))(v57, v81);
        return (*(v123 + 8))(v44, v33);
      }

      if (v126 != 3 || v43)
      {
        if (v126 != 4 || v43)
        {
          if (v126 != 5 || v43)
          {
            if (v126 != 6 || v43)
            {
              LOBYTE(v128) = 19;
              sub_1DB1513D0();
              v62 = v67;
              sub_1DB2BB804();
              (*(v68 + 8))(v62, v69);
            }

            else
            {
              LOBYTE(v128) = 18;
              sub_1DB151424();
              v61 = v64;
              sub_1DB2BB804();
              (*(v65 + 8))(v61, v66);
            }
          }

          else
          {
            LOBYTE(v128) = 17;
            sub_1DB151478();
            v60 = v70;
            sub_1DB2BB804();
            (*(v71 + 8))(v60, v72);
          }
        }

        else
        {
          LOBYTE(v128) = 15;
          sub_1DB151520();
          v59 = v73;
          sub_1DB2BB804();
          (*(v74 + 8))(v59, v75);
        }
      }

      else
      {
        LOBYTE(v128) = 14;
        sub_1DB151574();
        v58 = v76;
        sub_1DB2BB804();
        (*(v77 + 8))(v58, v78);
      }

      v53 = *(v123 + 8);
      v54 = v44;
      return v53(v54, v33);
    default:
      LOBYTE(v128) = 2;
      sub_1DB151A78();
      v32 = v96;
      v34 = v124;
      v33 = v125;
      sub_1DB2BB804();
      LOBYTE(v128) = 0;
      v35 = v127;
      v36 = v99;
      sub_1DB2BB864();
      if (!v35)
      {
        LOBYTE(v128) = 1;
        sub_1DB2BB864();
      }

      v37 = &v116;
LABEL_30:
      (*(*(v37 - 32) + 8))(v32, v36);
      v53 = *(v123 + 8);
      v54 = v34;
      return v53(v54, v33);
  }
}

uint64_t DaemonError.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v221 = a2;
  v227 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27190, &qword_1DB2BDE18);
  v205 = *(v227 - 8);
  MEMORY[0x1EEE9AC00](v227);
  v220 = &v165 - v3;
  v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27198, &qword_1DB2BDE20);
  v203 = *(v204 - 8);
  MEMORY[0x1EEE9AC00](v204);
  v219 = &v165 - v4;
  v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC271A0, &qword_1DB2BDE28);
  v200 = *(v202 - 8);
  MEMORY[0x1EEE9AC00](v202);
  v218 = &v165 - v5;
  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC271A8, &qword_1DB2BDE30);
  v226 = *(v201 - 8);
  MEMORY[0x1EEE9AC00](v201);
  v217 = &v165 - v6;
  v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC271B0, &qword_1DB2BDE38);
  v198 = *(v199 - 8);
  MEMORY[0x1EEE9AC00](v199);
  v216 = &v165 - v7;
  v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC271B8, &qword_1DB2BDE40);
  v194 = *(v195 - 8);
  MEMORY[0x1EEE9AC00](v195);
  v214 = &v165 - v8;
  v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC271C0, &qword_1DB2BDE48);
  v196 = *(v197 - 8);
  MEMORY[0x1EEE9AC00](v197);
  v215 = &v165 - v9;
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC271C8, &qword_1DB2BDE50);
  v190 = *(v192 - 8);
  MEMORY[0x1EEE9AC00](v192);
  v212 = &v165 - v10;
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC271D0, &qword_1DB2BDE58);
  v222 = *(v191 - 8);
  MEMORY[0x1EEE9AC00](v191);
  v211 = &v165 - v11;
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC271D8, &qword_1DB2BDE60);
  v188 = *(v193 - 8);
  MEMORY[0x1EEE9AC00](v193);
  v213 = &v165 - v12;
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC271E0, &qword_1DB2BDE68);
  v187 = *(v189 - 8);
  MEMORY[0x1EEE9AC00](v189);
  v210 = &v165 - v13;
  v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC271E8, &qword_1DB2BDE70);
  v185 = *(v186 - 8);
  MEMORY[0x1EEE9AC00](v186);
  v209 = &v165 - v14;
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC271F0, &qword_1DB2BDE78);
  v184 = *(v183 - 8);
  MEMORY[0x1EEE9AC00](v183);
  v225 = &v165 - v15;
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC271F8, &qword_1DB2BDE80);
  v182 = *(v181 - 8);
  MEMORY[0x1EEE9AC00](v181);
  v208 = &v165 - v16;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27200, &qword_1DB2BDE88);
  v180 = *(v177 - 8);
  MEMORY[0x1EEE9AC00](v177);
  v224 = &v165 - v17;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27208, &qword_1DB2BDE90);
  v178 = *(v179 - 8);
  MEMORY[0x1EEE9AC00](v179);
  v223 = &v165 - v18;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27210, &qword_1DB2BDE98);
  v174 = *(v175 - 8);
  MEMORY[0x1EEE9AC00](v175);
  v206 = &v165 - v19;
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27218, &qword_1DB2BDEA0);
  v173 = *(v176 - 8);
  MEMORY[0x1EEE9AC00](v176);
  v207 = &v165 - v20;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27220, &qword_1DB2BDEA8);
  v171 = *(v172 - 8);
  MEMORY[0x1EEE9AC00](v172);
  v22 = &v165 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27228, &qword_1DB2BDEB0);
  v170 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v165 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27230, &unk_1DB2BDEB8);
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v165 - v28;
  v30 = a1[3];
  v229 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v30);
  sub_1DB15137C();
  v31 = v228;
  sub_1DB2BBA84();
  if (v31)
  {
LABEL_8:
    v53 = v229;
    return __swift_destroy_boxed_opaque_existential_1(v53);
  }

  v166 = v25;
  v165 = v23;
  v167 = v22;
  v32 = v223;
  v33 = v224;
  v34 = v225;
  v35 = v226;
  v168 = 0;
  v36 = v227;
  v228 = v27;
  v169 = v26;
  v37 = sub_1DB2BB7D4();
  v38 = (2 * *(v37 + 16)) | 1;
  v232 = v37;
  v233 = v37 + 32;
  v234 = 0;
  v235 = v38;
  v39 = sub_1DB14ABF4();
  if (v234 != v235 >> 1)
  {
LABEL_6:
    v49 = sub_1DB2BB564();
    swift_allocError();
    v51 = v50;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26FD8, &qword_1DB2BDA10);
    *v51 = &type metadata for DaemonError;
    v52 = v169;
    sub_1DB2BB714();
    sub_1DB2BB554();
    (*(*(v49 - 8) + 104))(v51, *MEMORY[0x1E69E6AF8], v49);
    swift_willThrow();
    (*(v228 + 8))(v29, v52);
LABEL_7:
    swift_unknownObjectRelease();
    goto LABEL_8;
  }

  v40 = v222;
  switch(v39)
  {
    case 0:
      LOBYTE(v230) = 0;
      sub_1DB151B20();
      v41 = v166;
      v42 = v169;
      v43 = v168;
      sub_1DB2BB704();
      if (v43)
      {
        goto LABEL_48;
      }

      (*(v170 + 8))(v41, v165);
      (*(v228 + 8))(v29, v42);
      swift_unknownObjectRelease();
      v44 = 0;
      v45 = 0;
      v46 = 0;
      v47 = 0;
      v48 = 12;
      goto LABEL_53;
    case 1:
      LOBYTE(v230) = 1;
      sub_1DB151ACC();
      v92 = v167;
      v42 = v169;
      v93 = v168;
      sub_1DB2BB704();
      if (v93)
      {
        goto LABEL_48;
      }

      (*(v171 + 8))(v92, v172);
      (*(v228 + 8))(v29, v42);
      swift_unknownObjectRelease();
      v45 = 0;
      v46 = 0;
      v47 = 0;
      v48 = 12;
      v44 = 1;
      goto LABEL_53;
    case 2:
      LOBYTE(v230) = 2;
      sub_1DB151A78();
      v77 = v207;
      v74 = v169;
      v78 = v168;
      sub_1DB2BB704();
      if (v78)
      {
        goto LABEL_44;
      }

      LOBYTE(v230) = 0;
      v79 = v176;
      v80 = sub_1DB2BB774();
      v81 = v221;
      v227 = v80;
      v45 = v136;
      LOBYTE(v230) = 1;
      v137 = sub_1DB2BB774();
      v138 = (v228 + 8);
      v154 = v77;
      v155 = v137;
      v156 = v154;
      v157 = v79;
      v159 = v158;
      (*(v173 + 8))(v156, v157);
      (*v138)(v29, v74);
      swift_unknownObjectRelease();
      v47 = v159;
      v46 = v155;
      v48 = 0;
      v44 = v227;
      v53 = v229;
      goto LABEL_54;
    case 3:
      LOBYTE(v230) = 3;
      sub_1DB151A24();
      v84 = v206;
      v56 = v169;
      v85 = v168;
      sub_1DB2BB704();
      if (v85)
      {
        goto LABEL_46;
      }

      v86 = v175;
      v87 = sub_1DB2BB774();
      v88 = v228;
      v139 = v87;
      v140 = v84;
      v45 = v141;
      (*(v174 + 8))(v140, v86);
      (*(v88 + 8))(v29, v56);
      swift_unknownObjectRelease();
      v44 = v139;
      v46 = 0;
      v47 = 0;
      v48 = 1;
      goto LABEL_53;
    case 4:
      LOBYTE(v230) = 4;
      sub_1DB15197C();
      v42 = v169;
      v68 = v168;
      sub_1DB2BB704();
      if (v68)
      {
        goto LABEL_48;
      }

      sub_1DB151C78();
      v69 = v179;
      sub_1DB2BB7B4();
      v70 = v228;
      (*(v178 + 8))(v32, v69);
      (*(v70 + 8))(v29, v42);
      swift_unknownObjectRelease();
      v45 = 0;
      v46 = 0;
      v47 = 0;
      v44 = v230;
      v48 = 2;
      goto LABEL_53;
    case 5:
      LOBYTE(v230) = 5;
      sub_1DB151928();
      v96 = v33;
      v74 = v169;
      v97 = v168;
      sub_1DB2BB704();
      if (v97)
      {
        goto LABEL_44;
      }

      LOBYTE(v230) = 0;
      v98 = v177;
      v127 = sub_1DB2BB774();
      v45 = v143;
      LOBYTE(v230) = 1;
      v144 = sub_1DB2BB774();
      v145 = (v228 + 8);
      v146 = v98;
      v147 = v144;
      v148 = v96;
      v150 = v149;
      (*(v180 + 8))(v148, v146);
      (*v145)(v29, v74);
      swift_unknownObjectRelease();
      v47 = v150;
      v46 = v147;
      v48 = 3;
      goto LABEL_52;
    case 6:
      LOBYTE(v230) = 6;
      sub_1DB151868();
      v103 = v208;
      v56 = v169;
      v104 = v168;
      sub_1DB2BB704();
      if (v104)
      {
        goto LABEL_46;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26CE8, &qword_1DB2BCC60);
      sub_1DB1518BC(&qword_1EE13F670, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
      v105 = v181;
      sub_1DB2BB7B4();
      v106 = v228;
      (*(v182 + 8))(v103, v105);
      (*(v106 + 8))(v29, v56);
      swift_unknownObjectRelease();
      v45 = 0;
      v46 = 0;
      v47 = 0;
      v44 = v230;
      v48 = 4;
      goto LABEL_53;
    case 7:
      LOBYTE(v230) = 7;
      sub_1DB1517C0();
      v89 = v29;
      v90 = v169;
      v91 = v168;
      sub_1DB2BB704();
      if (v91)
      {
        (*(v228 + 8))(v89, v90);
        goto LABEL_7;
      }

      v237 = 0;
      sub_1DB151C24();
      v116 = v183;
      sub_1DB2BB7B4();
      v117 = v228;
      v142 = v230;
      v236 = 1;
      sub_1DB2BB7B4();
      (*(v184 + 8))(v34, v116);
      (*(v117 + 8))(v89, v90);
      swift_unknownObjectRelease();
      v45 = 0;
      v46 = 0;
      v47 = 0;
      v44 = v142 | (v237 << 8);
      v48 = 5;
      goto LABEL_53;
    case 8:
      LOBYTE(v230) = 8;
      sub_1DB15176C();
      v112 = v209;
      v56 = v169;
      v113 = v168;
      sub_1DB2BB704();
      if (v113)
      {
        goto LABEL_46;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27018, &qword_1DB2BDD60);
      sub_1DB151BB8(&qword_1ECC27240, MEMORY[0x1E69E6190], MEMORY[0x1E69E6510]);
      v118 = v186;
      sub_1DB2BB7B4();
      v119 = v228;
      (*(v185 + 8))(v112, v118);
      (*(v119 + 8))(v29, v56);
      swift_unknownObjectRelease();
      v45 = 0;
      v46 = 0;
      v47 = 0;
      v44 = v230;
      v48 = 6;
      goto LABEL_53;
    case 9:
      LOBYTE(v230) = 9;
      sub_1DB151718();
      v73 = v210;
      v74 = v169;
      v75 = v168;
      sub_1DB2BB704();
      if (v75)
      {
        goto LABEL_44;
      }

      LOBYTE(v230) = 0;
      v76 = v189;
      v127 = sub_1DB2BB774();
      v45 = v128;
      LOBYTE(v230) = 1;
      v129 = sub_1DB2BB774();
      v130 = (v228 + 8);
      v131 = v76;
      v132 = v129;
      v133 = v73;
      v135 = v134;
      (*(v187 + 8))(v133, v131);
      (*v130)(v29, v74);
      swift_unknownObjectRelease();
      v47 = v135;
      v46 = v132;
      v48 = 7;
      goto LABEL_52;
    case 10:
      LOBYTE(v230) = 10;
      sub_1DB1516C4();
      v109 = v213;
      v74 = v169;
      v110 = v168;
      sub_1DB2BB704();
      if (v110)
      {
LABEL_44:
        (*(v228 + 8))(v29, v74);
        goto LABEL_7;
      }

      LOBYTE(v230) = 0;
      v111 = v193;
      v127 = sub_1DB2BB774();
      v45 = v151;
      LOBYTE(v230) = 1;
      v152 = sub_1DB2BB774();
      v153 = (v228 + 8);
      v160 = v111;
      v161 = v152;
      v162 = v109;
      v164 = v163;
      (*(v188 + 8))(v162, v160);
      (*v153)(v29, v74);
      swift_unknownObjectRelease();
      v47 = v164;
      v46 = v161;
      v48 = 8;
LABEL_52:
      v44 = v127;
      goto LABEL_53;
    case 11:
      LOBYTE(v230) = 11;
      sub_1DB151670();
      v63 = v211;
      v56 = v169;
      v64 = v168;
      sub_1DB2BB704();
      if (v64)
      {
        goto LABEL_46;
      }

      v65 = v191;
      v66 = sub_1DB2BB774();
      v67 = v228;
      v123 = *(v40 + 8);
      v124 = v66;
      v126 = v125;
      v123(v63, v65);
      (*(v67 + 8))(v29, v56);
      swift_unknownObjectRelease();
      v44 = v124;
      v45 = v126;
      v46 = 0;
      v47 = 0;
      v48 = 9;
      goto LABEL_53;
    case 12:
      LOBYTE(v230) = 12;
      sub_1DB15161C();
      v71 = v212;
      v42 = v169;
      v72 = v168;
      sub_1DB2BB704();
      if (v72)
      {
        goto LABEL_48;
      }

      (*(v190 + 8))(v71, v192);
      (*(v228 + 8))(v29, v42);
      swift_unknownObjectRelease();
      v45 = 0;
      v46 = 0;
      v47 = 0;
      v48 = 12;
      v44 = 2;
      goto LABEL_53;
    case 13:
      LOBYTE(v230) = 13;
      sub_1DB1515C8();
      v99 = v215;
      v56 = v169;
      v100 = v168;
      sub_1DB2BB704();
      if (v100)
      {
        goto LABEL_46;
      }

      type metadata accessor for _NSRange(0);
      sub_1DB151B74(&qword_1ECC27238, MEMORY[0x1E6969FA8]);
      v101 = v197;
      sub_1DB2BB7B4();
      v102 = v228;
      (*(v196 + 8))(v99, v101);
      (*(v102 + 8))(v29, v56);
      swift_unknownObjectRelease();
      v46 = 0;
      v47 = 0;
      v44 = v230;
      v45 = v231;
      v48 = 10;
      goto LABEL_53;
    case 14:
      LOBYTE(v230) = 14;
      sub_1DB151574();
      v61 = v214;
      v42 = v169;
      v62 = v168;
      sub_1DB2BB704();
      if (v62)
      {
        goto LABEL_48;
      }

      (*(v194 + 8))(v61, v195);
      (*(v228 + 8))(v29, v42);
      swift_unknownObjectRelease();
      v45 = 0;
      v46 = 0;
      v47 = 0;
      v48 = 12;
      v44 = 3;
      goto LABEL_53;
    case 15:
      LOBYTE(v230) = 15;
      sub_1DB151520();
      v82 = v216;
      v42 = v169;
      v83 = v168;
      sub_1DB2BB704();
      if (v83)
      {
        goto LABEL_48;
      }

      (*(v198 + 8))(v82, v199);
      (*(v228 + 8))(v29, v42);
      swift_unknownObjectRelease();
      v45 = 0;
      v46 = 0;
      v47 = 0;
      v48 = 12;
      v44 = 4;
      goto LABEL_53;
    case 16:
      LOBYTE(v230) = 16;
      sub_1DB1514CC();
      v55 = v217;
      v56 = v169;
      v57 = v168;
      sub_1DB2BB704();
      if (!v57)
      {
        v58 = v201;
        v59 = sub_1DB2BB774();
        v60 = v228;
        v120 = v59;
        v122 = v121;
        (*(v35 + 8))(v55, v58);
        (*(v60 + 8))(v29, v56);
        swift_unknownObjectRelease();
        v44 = v120;
        v45 = v122;
        v46 = 0;
        v47 = 0;
        v48 = 11;
        goto LABEL_53;
      }

LABEL_46:
      (*(v228 + 8))(v29, v56);
      goto LABEL_7;
    case 17:
      LOBYTE(v230) = 17;
      sub_1DB151478();
      v94 = v218;
      v42 = v169;
      v95 = v168;
      sub_1DB2BB704();
      if (v95)
      {
        goto LABEL_48;
      }

      (*(v200 + 8))(v94, v202);
      (*(v228 + 8))(v29, v42);
      swift_unknownObjectRelease();
      v45 = 0;
      v46 = 0;
      v47 = 0;
      v48 = 12;
      v44 = 5;
      goto LABEL_53;
    case 18:
      LOBYTE(v230) = 18;
      sub_1DB151424();
      v107 = v219;
      v42 = v169;
      v108 = v168;
      sub_1DB2BB704();
      if (v108)
      {
        goto LABEL_48;
      }

      (*(v203 + 8))(v107, v204);
      (*(v228 + 8))(v29, v42);
      swift_unknownObjectRelease();
      v45 = 0;
      v46 = 0;
      v47 = 0;
      v48 = 12;
      v44 = 6;
      goto LABEL_53;
    case 19:
      LOBYTE(v230) = 19;
      sub_1DB1513D0();
      v114 = v220;
      v42 = v169;
      v115 = v168;
      sub_1DB2BB704();
      if (v115)
      {
LABEL_48:
        (*(v228 + 8))(v29, v42);
        goto LABEL_7;
      }

      (*(v205 + 8))(v114, v36);
      (*(v228 + 8))(v29, v42);
      swift_unknownObjectRelease();
      v45 = 0;
      v46 = 0;
      v47 = 0;
      v48 = 12;
      v44 = 7;
LABEL_53:
      v53 = v229;
      v81 = v221;
LABEL_54:
      *v81 = v44;
      *(v81 + 8) = v45;
      *(v81 + 16) = v46;
      *(v81 + 24) = v47;
      *(v81 + 32) = v48;
      break;
    default:
      goto LABEL_6;
  }

  return __swift_destroy_boxed_opaque_existential_1(v53);
}

uint64_t sub_1DB150180()
{
  v1 = *v0;
  result = 403;
  switch(*(v0 + 32))
  {
    case 1:
      result = 404;
      break;
    case 2:
      result = 405;
      break;
    case 3:
      result = 406;
      break;
    case 4:
      result = 407;
      break;
    case 5:
      result = 408;
      break;
    case 6:
      result = 409;
      break;
    case 7:
      result = 410;
      break;
    case 8:
      result = 411;
      break;
    case 9:
      result = 412;
      break;
    case 0xA:
      result = 414;
      break;
    case 0xB:
      result = 417;
      break;
    case 0xC:
      v3 = v0[1];
      v4 = v0[2] | v0[3];
      if (v4 | v1 | v3)
      {
        v5 = v4 | v3;
        if (v1 == 1 && v5 == 0)
        {
          result = 402;
        }

        else if (v1 == 2 && v5 == 0)
        {
          result = 413;
        }

        else if (v1 != 3 || v5)
        {
          if (v1 != 4 || v5)
          {
            if (v1 != 5 || v5)
            {
              if (v5)
              {
                v8 = 0;
              }

              else
              {
                v8 = v1 == 6;
              }

              if (v8)
              {
                result = 419;
              }

              else
              {
                result = 420;
              }
            }

            else
            {
              result = 418;
            }
          }

          else
          {
            result = 416;
          }
        }

        else
        {
          result = 415;
        }
      }

      else
      {
        result = 401;
      }

      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DB150350@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  switch(result)
  {
    case 1:
      v2 = 0;
      v3 = 0;
      v4 = 0x80000001DB2D2FD0;
      v5 = 0x80000001DB2D27C0;
      v6 = 0xD000000000000025;
      v7 = xmmword_1DB2BDD50;
      v8 = 0xD000000000000046;
      v9 = 0xEB00000000646572;
      v10 = 0x6975716552756E64;
      break;
    case 2:
      v2 = 0;
      v3 = 0;
      v4 = 0x80000001DB2D2FB0;
      v5 = 0x80000001DB2D2760;
      v6 = 0xD00000000000001DLL;
      v8 = 0xD00000000000005BLL;
      v7 = xmmword_1DB2BDD50;
      v9 = 0xEE00734F656C6269;
      v10 = 0x7461706D6F636E69;
      break;
    case 3:
      v2 = 0;
      v3 = 0;
      v4 = 0x80000001DB2D2F40;
      v5 = 0x80000001DB2D2F60;
      v6 = 0xD000000000000010;
      v7 = xmmword_1DB2BDD50;
      v8 = 0xD000000000000041;
      v9 = 0xE90000000000006ELL;
      v10 = 0x6F69737365536F6ELL;
      break;
    case 4:
      v2 = 0;
      v3 = 0;
      v9 = 0x80000001DB2D2810;
      v4 = 0x80000001DB2D2EE0;
      v5 = 0x80000001DB2D2F00;
      v10 = 0xD000000000000015;
      v7 = xmmword_1DB2BDD50;
      v6 = 0xD00000000000001ELL;
      v8 = 0xD000000000000038;
      break;
    case 5:
      v8 = 0;
      v5 = 0;
      v2 = 0;
      v3 = 0;
      v10 = 0xD00000000000001ALL;
      v9 = 0x80000001DB2D2830;
      v4 = 0x80000001DB2D2EC0;
      v7 = xmmword_1DB2BDD50;
      v6 = 0xD00000000000001CLL;
      break;
    case 6:
      v2 = 0;
      v3 = 0;
      v4 = 0x80000001DB2D2E60;
      v5 = 0x80000001DB2D2E80;
      v6 = 0xD000000000000014;
      v7 = xmmword_1DB2BDD50;
      v8 = 0xD000000000000038;
      v9 = 0xE700000000000000;
      v10 = 0x656C6261546F6ELL;
      break;
    case 7:
      v2 = 0;
      v3 = 0;
      v4 = 0x80000001DB2D2E10;
      v5 = 0x80000001DB2D2E30;
      v6 = 0xD000000000000010;
      v7 = xmmword_1DB2BDD50;
      v8 = 0xD00000000000002DLL;
      v9 = 0xEF73616D65686353;
      v10 = 0x656C7069746C756DLL;
      break;
    case 8:
      v2 = 0;
      v3 = 0;
      v9 = 0x80000001DB2D2850;
      v4 = 0x80000001DB2D2D70;
      v5 = 0x80000001DB2D2D90;
      v10 = 0xD000000000000015;
      v7 = xmmword_1DB2BDD50;
      v6 = 0xD000000000000017;
      v8 = 0xD000000000000075;
      break;
    case 9:
      v2 = 0;
      v3 = 0;
      v9 = 0x80000001DB2D2870;
      v4 = 0x80000001DB2D2D00;
      v5 = 0x80000001DB2D2D20;
      v10 = 0xD000000000000013;
      v7 = xmmword_1DB2BDD50;
      v6 = 0xD000000000000014;
      v8 = 0xD00000000000004DLL;
      break;
    case 10:
      v2 = 0;
      v3 = 0;
      v9 = 0x80000001DB2D2890;
      v4 = 0x80000001DB2D2CA0;
      v5 = 0x80000001DB2D2CC0;
      v10 = 0xD000000000000013;
      v7 = xmmword_1DB2BDD50;
      v6 = 0xD000000000000016;
      v8 = 0xD00000000000003ALL;
      break;
    case 11:
      v2 = 0;
      v3 = 0;
      v9 = 0x80000001DB2D28B0;
      v4 = 0x80000001DB2D2C40;
      v5 = 0x80000001DB2D2C60;
      v10 = 0xD000000000000014;
      v7 = xmmword_1DB2BDD50;
      v8 = 0xD00000000000003BLL;
      v6 = 0xD000000000000017;
      break;
    case 12:
      v2 = 0;
      v3 = 0;
      v6 = 0xD00000000000001ALL;
      v9 = 0x80000001DB2D28D0;
      v4 = 0x80000001DB2D2BF0;
      v5 = 0x80000001DB2D2C10;
      v10 = 0xD000000000000018;
      v7 = xmmword_1DB2BDD50;
      v8 = 0xD000000000000029;
      break;
    case 13:
      v2 = 0;
      v3 = 0;
      v5 = 0x80000001DB2D24B0;
      v7 = xmmword_1DB2BDD50;
      v8 = 0xD000000000000034;
      v4 = 0xEC00000044492065;
      v6 = 0x6C646E7562206F4ELL;
      v9 = 0xEA00000000006449;
      v10 = 0x656C646E75426F6ELL;
      break;
    case 14:
      v9 = 0x80000001DB2D28F0;
      v4 = 0x80000001DB2D2B90;
      v5 = 0x80000001DB2D2BB0;
      v3 = 0x80000001DB2D1E60;
      v10 = 0xD000000000000015;
      v6 = 0xD000000000000017;
      v8 = 0xD000000000000030;
      goto LABEL_23;
    case 15:
      v2 = 0;
      v3 = 0;
      v6 = 0xD00000000000001ALL;
      v9 = 0x80000001DB2D2910;
      v4 = 0x80000001DB2D2B70;
      v5 = 0x80000001DB2D2440;
      v10 = 0xD000000000000018;
      v7 = xmmword_1DB2BDD50;
      v8 = 0xD000000000000036;
      break;
    case 16:
      v2 = 0;
      v3 = 0;
      v9 = 0x80000001DB2D2930;
      v4 = 0x80000001DB2D2B50;
      v5 = 0x80000001DB2D23E0;
      v10 = 0xD000000000000019;
      v7 = xmmword_1DB2BDD50;
      v6 = 0xD00000000000001BLL;
      v8 = 0xD000000000000055;
      break;
    case 17:
      v2 = 0;
      v3 = 0;
      v6 = 0xD00000000000001ALL;
      v9 = 0x80000001DB2D2950;
      v4 = 0x80000001DB2D2AE0;
      v5 = 0x80000001DB2D2B00;
      v10 = 0xD000000000000018;
      v7 = xmmword_1DB2BDD50;
      v8 = 0xD000000000000042;
      break;
    case 18:
      v4 = 0x80000001DB2D2A50;
      v5 = 0x80000001DB2D2A70;
      v3 = 0x80000001DB2D1E60;
      v6 = 0xD00000000000001ELL;
      v2 = 0xD000000000000063;
      v7 = xmmword_1DB2BDD50;
      v8 = 0xD000000000000067;
      v9 = 0xEF746E656D656761;
      v10 = 0x676E45534D416F6ELL;
      break;
    case 19:
      v6 = 0xD00000000000001ALL;
      v9 = 0x80000001DB2D2970;
      v4 = 0x80000001DB2D2370;
      v5 = 0x80000001DB2D29F0;
      v3 = 0x80000001DB2D1E60;
      v10 = 0xD000000000000018;
      v8 = 0xD000000000000051;
      v7 = xmmword_1DB2BDD50;
      v2 = 0xD000000000000063;
      break;
    case 20:
      v9 = 0x80000001DB2D2990;
      v4 = 0x80000001DB2D2340;
      v5 = 0x80000001DB2D29B0;
      v3 = 0x80000001DB2D1E60;
      v10 = 0xD000000000000012;
      v6 = 0xD000000000000023;
      v8 = 0xD00000000000003DLL;
LABEL_23:
      v7 = xmmword_1DB2BDD50;
      v2 = 0xD000000000000063;
      break;
    default:
      v10 = 0;
      v9 = 0;
      v6 = 0;
      v4 = 0;
      v8 = 0;
      v5 = 0;
      v2 = 0;
      v3 = 0;
      v7 = 0uLL;
      break;
  }

  *a2 = v10;
  *(a2 + 8) = v9;
  *(a2 + 16) = v7;
  *(a2 + 32) = v6;
  *(a2 + 40) = v4;
  *(a2 + 48) = v8;
  *(a2 + 56) = v5;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 80) = v2;
  *(a2 + 88) = v3;
  return result;
}

BOOL _s19OnDeviceStorageCore11DaemonErrorO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *a2;
  v8 = *(a2 + 8);
  v10 = *(a2 + 16);
  v9 = *(a2 + 24);
  v11 = *(a2 + 32);
  v28[0] = *a1;
  v28[1] = v3;
  v28[2] = v5;
  v28[3] = v4;
  v29 = v6;
  v30 = v7;
  v31 = v8;
  v32 = v10;
  v33 = v9;
  v34 = v11;
  switch(v6)
  {
    case 1:
      if (v11 != 1)
      {
        goto LABEL_69;
      }

      if (v2 == v7 && v3 == v8)
      {
        sub_1DB153C80(v2, v3, v10, v9, 1u);
        sub_1DB153C80(v2, v3, v5, v4, 1u);
        goto LABEL_115;
      }

      v12 = sub_1DB2BB924();
      sub_1DB153C80(v7, v8, v10, v9, 1u);
      v13 = v2;
      v14 = v3;
      v15 = v5;
      v16 = v4;
      v17 = 1;
      goto LABEL_92;
    case 2:
      if (v11 != 2)
      {
        goto LABEL_70;
      }

      v19 = sub_1DB236A6C(v2, v7);
      goto LABEL_52;
    case 3:
      if (v11 != 3)
      {
        goto LABEL_68;
      }

      if ((v2 != v7 || v3 != v8) && (sub_1DB2BB924() & 1) == 0)
      {
        sub_1DB153C80(v7, v8, v10, v9, 3u);
        v23 = v2;
        v24 = v3;
        v25 = v5;
        v26 = v4;
        v27 = 3;
        goto LABEL_71;
      }

      if (v5 == v10 && v4 == v9)
      {
        sub_1DB153C80(v7, v8, v5, v4, 3u);
        sub_1DB153C80(v2, v3, v5, v4, 3u);
        goto LABEL_115;
      }

      v12 = sub_1DB2BB924();
      sub_1DB153C80(v7, v8, v10, v9, 3u);
      v13 = v2;
      v14 = v3;
      v15 = v5;
      v16 = v4;
      v17 = 3;
      goto LABEL_92;
    case 4:
      if (v11 != 4)
      {
        goto LABEL_69;
      }

      v12 = sub_1DB1375FC(v2, v7);
      sub_1DB153C80(v7, v8, v10, v9, 4u);
      v13 = v2;
      v14 = v3;
      v15 = v5;
      v16 = v4;
      v17 = 4;
      goto LABEL_92;
    case 5:
      if (v11 != 5)
      {
        goto LABEL_70;
      }

      sub_1DB153D3C(v28);
      return v7 == v2 && ((v7 ^ v2) & 0xFF00) == 0;
    case 6:
      if (v11 != 6)
      {
        goto LABEL_69;
      }

      sub_1DB153C80(v7, v8, v10, v9, 6u);
      sub_1DB153C80(v2, v3, v5, v4, 6u);
      v19 = sub_1DB14BA5C(v2, v7);
LABEL_52:
      v21 = v19;
      sub_1DB153D3C(v28);
      return v21 & 1;
    case 7:
      if (v11 != 7)
      {
        goto LABEL_68;
      }

      if ((v2 != v7 || v3 != v8) && (sub_1DB2BB924() & 1) == 0)
      {
        sub_1DB153C80(v7, v8, v10, v9, 7u);
        v23 = v2;
        v24 = v3;
        v25 = v5;
        v26 = v4;
        v27 = 7;
        goto LABEL_71;
      }

      if (v5 == v10 && v4 == v9)
      {
        sub_1DB153C80(v7, v8, v5, v4, 7u);
        sub_1DB153C80(v2, v3, v5, v4, 7u);
        goto LABEL_115;
      }

      v12 = sub_1DB2BB924();
      sub_1DB153C80(v7, v8, v10, v9, 7u);
      v13 = v2;
      v14 = v3;
      v15 = v5;
      v16 = v4;
      v17 = 7;
      goto LABEL_92;
    case 8:
      if (v11 != 8)
      {
        goto LABEL_68;
      }

      if ((v2 != v7 || v3 != v8) && (sub_1DB2BB924() & 1) == 0)
      {
        sub_1DB153C80(v7, v8, v10, v9, 8u);
        v23 = v2;
        v24 = v3;
        v25 = v5;
        v26 = v4;
        v27 = 8;
        goto LABEL_71;
      }

      if (v5 == v10 && v4 == v9)
      {
        sub_1DB153C80(v7, v8, v5, v4, 8u);
        sub_1DB153C80(v2, v3, v5, v4, 8u);
        goto LABEL_115;
      }

      v12 = sub_1DB2BB924();
      sub_1DB153C80(v7, v8, v10, v9, 8u);
      v13 = v2;
      v14 = v3;
      v15 = v5;
      v16 = v4;
      v17 = 8;
      goto LABEL_92;
    case 9:
      if (v11 != 9)
      {
        goto LABEL_69;
      }

      if (v2 == v7 && v3 == v8)
      {
        sub_1DB153C80(v2, v3, v10, v9, 9u);
        sub_1DB153C80(v2, v3, v5, v4, 9u);
        goto LABEL_115;
      }

      v12 = sub_1DB2BB924();
      sub_1DB153C80(v7, v8, v10, v9, 9u);
      v13 = v2;
      v14 = v3;
      v15 = v5;
      v16 = v4;
      v17 = 9;
      goto LABEL_92;
    case 10:
      if (v11 != 10)
      {
        goto LABEL_70;
      }

      sub_1DB153D3C(v28);
      return v2 == v7 && v3 == v8;
    case 11:
      if (v11 != 11)
      {
        goto LABEL_69;
      }

      if (v2 == v7 && v3 == v8)
      {
        sub_1DB153C80(v2, v3, v10, v9, 0xBu);
        sub_1DB153C80(v2, v3, v5, v4, 0xBu);
        goto LABEL_115;
      }

      v12 = sub_1DB2BB924();
      sub_1DB153C80(v7, v8, v10, v9, 0xBu);
      v13 = v2;
      v14 = v3;
      v15 = v5;
      v16 = v4;
      v17 = 11;
      goto LABEL_92;
    case 12:
      if (v5 | v3 | v2 | v4)
      {
        v18 = v5 | v3 | v4;
        if (v2 != 1 || v18)
        {
          if (v2 != 2 || v18)
          {
            if (v2 != 3 || v18)
            {
              if (v2 != 4 || v18)
              {
                if (v2 != 5 || v18)
                {
                  if (v2 != 6 || v18)
                  {
                    if (v11 != 12 || v7 != 7)
                    {
                      goto LABEL_70;
                    }
                  }

                  else if (v11 != 12 || v7 != 6)
                  {
                    goto LABEL_70;
                  }
                }

                else if (v11 != 12 || v7 != 5)
                {
                  goto LABEL_70;
                }
              }

              else if (v11 != 12 || v7 != 4)
              {
                goto LABEL_70;
              }
            }

            else if (v11 != 12 || v7 != 3)
            {
              goto LABEL_70;
            }
          }

          else if (v11 != 12 || v7 != 2)
          {
            goto LABEL_70;
          }
        }

        else if (v11 != 12 || v7 != 1)
        {
          goto LABEL_70;
        }

        if (v10 | v8 | v9)
        {
          goto LABEL_70;
        }
      }

      else if (v11 != 12 || v10 | v8 | v7 | v9)
      {
        goto LABEL_70;
      }

      goto LABEL_115;
    default:
      if (v11)
      {
LABEL_68:

LABEL_69:

LABEL_70:
        v23 = v7;
        v24 = v8;
        v25 = v10;
        v26 = v9;
        v27 = v11;
        goto LABEL_71;
      }

      if ((v2 != v7 || v3 != v8) && (sub_1DB2BB924() & 1) == 0)
      {
        sub_1DB153C80(v7, v8, v10, v9, 0);
        v23 = v2;
        v24 = v3;
        v25 = v5;
        v26 = v4;
        v27 = 0;
LABEL_71:
        sub_1DB153C80(v23, v24, v25, v26, v27);
        sub_1DB153D3C(v28);
        return 0;
      }

      if (v5 == v10 && v4 == v9)
      {
        sub_1DB153C80(v7, v8, v5, v4, 0);
        sub_1DB153C80(v2, v3, v5, v4, 0);
LABEL_115:
        sub_1DB153D3C(v28);
        return 1;
      }

      else
      {
        v12 = sub_1DB2BB924();
        sub_1DB153C80(v7, v8, v10, v9, 0);
        v13 = v2;
        v14 = v3;
        v15 = v5;
        v16 = v4;
        v17 = 0;
LABEL_92:
        sub_1DB153C80(v13, v14, v15, v16, v17);
        sub_1DB153D3C(v28);
        return v12 & 1;
      }
  }
}

unint64_t sub_1DB15137C()
{
  result = qword_1ECC270D0;
  if (!qword_1ECC270D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC270D0);
  }

  return result;
}

unint64_t sub_1DB1513D0()
{
  result = qword_1ECC270D8;
  if (!qword_1ECC270D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC270D8);
  }

  return result;
}

unint64_t sub_1DB151424()
{
  result = qword_1ECC270E0;
  if (!qword_1ECC270E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC270E0);
  }

  return result;
}

unint64_t sub_1DB151478()
{
  result = qword_1ECC270E8;
  if (!qword_1ECC270E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC270E8);
  }

  return result;
}

unint64_t sub_1DB1514CC()
{
  result = qword_1ECC270F0;
  if (!qword_1ECC270F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC270F0);
  }

  return result;
}

unint64_t sub_1DB151520()
{
  result = qword_1ECC270F8;
  if (!qword_1ECC270F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC270F8);
  }

  return result;
}

unint64_t sub_1DB151574()
{
  result = qword_1ECC27100;
  if (!qword_1ECC27100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27100);
  }

  return result;
}

unint64_t sub_1DB1515C8()
{
  result = qword_1ECC27108;
  if (!qword_1ECC27108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27108);
  }

  return result;
}

unint64_t sub_1DB15161C()
{
  result = qword_1ECC27118;
  if (!qword_1ECC27118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27118);
  }

  return result;
}

unint64_t sub_1DB151670()
{
  result = qword_1ECC27120;
  if (!qword_1ECC27120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27120);
  }

  return result;
}

unint64_t sub_1DB1516C4()
{
  result = qword_1ECC27128;
  if (!qword_1ECC27128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27128);
  }

  return result;
}

unint64_t sub_1DB151718()
{
  result = qword_1ECC27130;
  if (!qword_1ECC27130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27130);
  }

  return result;
}

unint64_t sub_1DB15176C()
{
  result = qword_1ECC27138;
  if (!qword_1ECC27138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27138);
  }

  return result;
}

unint64_t sub_1DB1517C0()
{
  result = qword_1ECC27148;
  if (!qword_1ECC27148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27148);
  }

  return result;
}

unint64_t sub_1DB151814()
{
  result = qword_1ECC27150;
  if (!qword_1ECC27150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27150);
  }

  return result;
}

unint64_t sub_1DB151868()
{
  result = qword_1ECC27158;
  if (!qword_1ECC27158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27158);
  }

  return result;
}

uint64_t sub_1DB1518BC(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC26CE8, &qword_1DB2BCC60);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DB151928()
{
  result = qword_1ECC27160;
  if (!qword_1ECC27160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27160);
  }

  return result;
}

unint64_t sub_1DB15197C()
{
  result = qword_1ECC27168;
  if (!qword_1ECC27168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27168);
  }

  return result;
}

unint64_t sub_1DB1519D0()
{
  result = qword_1EE13F1A8;
  if (!qword_1EE13F1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F1A8);
  }

  return result;
}

unint64_t sub_1DB151A24()
{
  result = qword_1ECC27170;
  if (!qword_1ECC27170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27170);
  }

  return result;
}

unint64_t sub_1DB151A78()
{
  result = qword_1ECC27178;
  if (!qword_1ECC27178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27178);
  }

  return result;
}

unint64_t sub_1DB151ACC()
{
  result = qword_1ECC27180;
  if (!qword_1ECC27180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27180);
  }

  return result;
}

unint64_t sub_1DB151B20()
{
  result = qword_1ECC27188;
  if (!qword_1ECC27188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27188);
  }

  return result;
}

uint64_t sub_1DB151B74(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for _NSRange(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DB151BB8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC27018, &qword_1DB2BDD60);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DB151C24()
{
  result = qword_1ECC27248;
  if (!qword_1ECC27248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27248);
  }

  return result;
}

unint64_t sub_1DB151C78()
{
  result = qword_1EE140210;
  if (!qword_1EE140210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE140210);
  }

  return result;
}

unint64_t sub_1DB151CCC(void *a1)
{
  a1[1] = sub_1DB151D04();
  a1[2] = sub_1DB151D58();
  result = sub_1DB151DAC();
  a1[3] = result;
  return result;
}

unint64_t sub_1DB151D04()
{
  result = qword_1ECC27250;
  if (!qword_1ECC27250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27250);
  }

  return result;
}

unint64_t sub_1DB151D58()
{
  result = qword_1ECC27258;
  if (!qword_1ECC27258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27258);
  }

  return result;
}

unint64_t sub_1DB151DAC()
{
  result = qword_1ECC27260;
  if (!qword_1ECC27260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27260);
  }

  return result;
}

unint64_t sub_1DB151E04()
{
  result = qword_1ECC27268;
  if (!qword_1ECC27268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27268);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_19OnDeviceStorageCore11DaemonErrorO(uint64_t a1)
{
  if ((*(a1 + 32) & 0xFu) <= 0xB)
  {
    return *(a1 + 32) & 0xF;
  }

  else
  {
    return (*a1 + 12);
  }
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1DB151E88(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF4 && *(a1 + 33))
  {
    return (*a1 + 244);
  }

  v3 = *(a1 + 32);
  if (v3 <= 0xC)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1DB151ED0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF3)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 244;
    *(result + 8) = 0;
    if (a3 >= 0xF4)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF4)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_1DB151F18(uint64_t result, unsigned int a2)
{
  if (a2 >= 0xC)
  {
    *result = a2 - 12;
    *(result + 8) = 0;
    LOBYTE(a2) = 12;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for DaemonError.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xED)
  {
    goto LABEL_17;
  }

  if (a2 + 19 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 19) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 19;
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

      return (*a1 | (v4 << 8)) - 19;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 19;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v8 = v6 - 20;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DaemonError.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xED)
  {
    v4 = 0;
  }

  if (a2 > 0xEC)
  {
    v5 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
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
    *result = a2 + 19;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for URIQueryParameter.CacheMode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for URIQueryParameter.CacheMode(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1DB152318()
{
  result = qword_1ECC27270;
  if (!qword_1ECC27270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27270);
  }

  return result;
}

unint64_t sub_1DB152370()
{
  result = qword_1ECC27278;
  if (!qword_1ECC27278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27278);
  }

  return result;
}

unint64_t sub_1DB1523C8()
{
  result = qword_1ECC27280;
  if (!qword_1ECC27280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27280);
  }

  return result;
}

unint64_t sub_1DB152420()
{
  result = qword_1ECC27288;
  if (!qword_1ECC27288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27288);
  }

  return result;
}

unint64_t sub_1DB152478()
{
  result = qword_1ECC27290;
  if (!qword_1ECC27290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27290);
  }

  return result;
}

unint64_t sub_1DB1524D0()
{
  result = qword_1ECC27298;
  if (!qword_1ECC27298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27298);
  }

  return result;
}

unint64_t sub_1DB152528()
{
  result = qword_1ECC272A0;
  if (!qword_1ECC272A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC272A0);
  }

  return result;
}

unint64_t sub_1DB152580()
{
  result = qword_1ECC272A8;
  if (!qword_1ECC272A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC272A8);
  }

  return result;
}

unint64_t sub_1DB1525D8()
{
  result = qword_1ECC272B0;
  if (!qword_1ECC272B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC272B0);
  }

  return result;
}

unint64_t sub_1DB152630()
{
  result = qword_1ECC272B8;
  if (!qword_1ECC272B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC272B8);
  }

  return result;
}

unint64_t sub_1DB152688()
{
  result = qword_1ECC272C0;
  if (!qword_1ECC272C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC272C0);
  }

  return result;
}

unint64_t sub_1DB1526E0()
{
  result = qword_1ECC272C8;
  if (!qword_1ECC272C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC272C8);
  }

  return result;
}

unint64_t sub_1DB152738()
{
  result = qword_1ECC272D0;
  if (!qword_1ECC272D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC272D0);
  }

  return result;
}

unint64_t sub_1DB152790()
{
  result = qword_1ECC272D8;
  if (!qword_1ECC272D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC272D8);
  }

  return result;
}

unint64_t sub_1DB1527E8()
{
  result = qword_1ECC272E0;
  if (!qword_1ECC272E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC272E0);
  }

  return result;
}

unint64_t sub_1DB152840()
{
  result = qword_1ECC272E8;
  if (!qword_1ECC272E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC272E8);
  }

  return result;
}

unint64_t sub_1DB152898()
{
  result = qword_1ECC272F0;
  if (!qword_1ECC272F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC272F0);
  }

  return result;
}

unint64_t sub_1DB1528F0()
{
  result = qword_1ECC272F8;
  if (!qword_1ECC272F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC272F8);
  }

  return result;
}

unint64_t sub_1DB152948()
{
  result = qword_1ECC27300;
  if (!qword_1ECC27300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27300);
  }

  return result;
}

unint64_t sub_1DB1529A0()
{
  result = qword_1ECC27308;
  if (!qword_1ECC27308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27308);
  }

  return result;
}

unint64_t sub_1DB1529F8()
{
  result = qword_1ECC27310;
  if (!qword_1ECC27310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27310);
  }

  return result;
}

unint64_t sub_1DB152A50()
{
  result = qword_1ECC27318;
  if (!qword_1ECC27318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27318);
  }

  return result;
}

unint64_t sub_1DB152AA8()
{
  result = qword_1ECC27320;
  if (!qword_1ECC27320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27320);
  }

  return result;
}

unint64_t sub_1DB152B00()
{
  result = qword_1ECC27328;
  if (!qword_1ECC27328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27328);
  }

  return result;
}

unint64_t sub_1DB152B58()
{
  result = qword_1ECC27330;
  if (!qword_1ECC27330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27330);
  }

  return result;
}

unint64_t sub_1DB152BB0()
{
  result = qword_1ECC27338;
  if (!qword_1ECC27338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27338);
  }

  return result;
}

unint64_t sub_1DB152C08()
{
  result = qword_1ECC27340;
  if (!qword_1ECC27340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27340);
  }

  return result;
}

unint64_t sub_1DB152C60()
{
  result = qword_1ECC27348;
  if (!qword_1ECC27348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27348);
  }

  return result;
}

unint64_t sub_1DB152CB8()
{
  result = qword_1ECC27350;
  if (!qword_1ECC27350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27350);
  }

  return result;
}

unint64_t sub_1DB152D10()
{
  result = qword_1ECC27358;
  if (!qword_1ECC27358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27358);
  }

  return result;
}

unint64_t sub_1DB152D68()
{
  result = qword_1ECC27360;
  if (!qword_1ECC27360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27360);
  }

  return result;
}

unint64_t sub_1DB152DC0()
{
  result = qword_1ECC27368;
  if (!qword_1ECC27368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27368);
  }

  return result;
}

unint64_t sub_1DB152E18()
{
  result = qword_1ECC27370;
  if (!qword_1ECC27370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27370);
  }

  return result;
}

unint64_t sub_1DB152E70()
{
  result = qword_1ECC27378;
  if (!qword_1ECC27378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27378);
  }

  return result;
}

unint64_t sub_1DB152EC8()
{
  result = qword_1ECC27380;
  if (!qword_1ECC27380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27380);
  }

  return result;
}

unint64_t sub_1DB152F20()
{
  result = qword_1ECC27388;
  if (!qword_1ECC27388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27388);
  }

  return result;
}

unint64_t sub_1DB152F78()
{
  result = qword_1ECC27390;
  if (!qword_1ECC27390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27390);
  }

  return result;
}

unint64_t sub_1DB152FD0()
{
  result = qword_1ECC27398;
  if (!qword_1ECC27398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27398);
  }

  return result;
}

unint64_t sub_1DB153028()
{
  result = qword_1ECC273A0;
  if (!qword_1ECC273A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC273A0);
  }

  return result;
}

unint64_t sub_1DB153080()
{
  result = qword_1ECC273A8;
  if (!qword_1ECC273A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC273A8);
  }

  return result;
}

unint64_t sub_1DB1530D8()
{
  result = qword_1ECC273B0;
  if (!qword_1ECC273B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC273B0);
  }

  return result;
}

unint64_t sub_1DB153130()
{
  result = qword_1ECC273B8;
  if (!qword_1ECC273B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC273B8);
  }

  return result;
}

unint64_t sub_1DB153188()
{
  result = qword_1ECC273C0;
  if (!qword_1ECC273C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC273C0);
  }

  return result;
}

unint64_t sub_1DB1531E0()
{
  result = qword_1ECC273C8;
  if (!qword_1ECC273C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC273C8);
  }

  return result;
}

unint64_t sub_1DB153238()
{
  result = qword_1ECC273D0;
  if (!qword_1ECC273D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC273D0);
  }

  return result;
}

unint64_t sub_1DB153290()
{
  result = qword_1ECC273D8;
  if (!qword_1ECC273D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC273D8);
  }

  return result;
}

unint64_t sub_1DB1532E8()
{
  result = qword_1ECC273E0;
  if (!qword_1ECC273E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC273E0);
  }

  return result;
}

unint64_t sub_1DB153340()
{
  result = qword_1ECC273E8;
  if (!qword_1ECC273E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC273E8);
  }

  return result;
}

unint64_t sub_1DB153398()
{
  result = qword_1ECC273F0;
  if (!qword_1ECC273F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC273F0);
  }

  return result;
}

unint64_t sub_1DB1533F0()
{
  result = qword_1ECC273F8;
  if (!qword_1ECC273F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC273F8);
  }

  return result;
}

unint64_t sub_1DB153448()
{
  result = qword_1ECC27400;
  if (!qword_1ECC27400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27400);
  }

  return result;
}

unint64_t sub_1DB1534A0()
{
  result = qword_1ECC27408;
  if (!qword_1ECC27408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27408);
  }

  return result;
}

unint64_t sub_1DB1534F8()
{
  result = qword_1ECC27410;
  if (!qword_1ECC27410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27410);
  }

  return result;
}

unint64_t sub_1DB153550()
{
  result = qword_1ECC27418;
  if (!qword_1ECC27418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27418);
  }

  return result;
}

unint64_t sub_1DB1535A8()
{
  result = qword_1ECC27420;
  if (!qword_1ECC27420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27420);
  }

  return result;
}

uint64_t sub_1DB1535FC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6975716552756E64 && a2 == 0xEB00000000646572;
  if (v4 || (sub_1DB2BB924() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7461706D6F636E69 && a2 == 0xEE00734F656C6269 || (sub_1DB2BB924() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F69737365536F6ELL && a2 == 0xE90000000000006ELL || (sub_1DB2BB924() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001DB2D2810 == a2 || (sub_1DB2BB924() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001DB2D2830 == a2 || (sub_1DB2BB924() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656C6261546F6ELL && a2 == 0xE700000000000000 || (sub_1DB2BB924() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x656C7069746C756DLL && a2 == 0xEF73616D65686353 || (sub_1DB2BB924() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001DB2D2850 == a2 || (sub_1DB2BB924() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001DB2D2870 == a2 || (sub_1DB2BB924() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001DB2D2890 == a2 || (sub_1DB2BB924() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001DB2D28B0 == a2 || (sub_1DB2BB924() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001DB2D28D0 == a2 || (sub_1DB2BB924() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x656C646E75426F6ELL && a2 == 0xEA00000000006449 || (sub_1DB2BB924() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001DB2D28F0 == a2 || (sub_1DB2BB924() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001DB2D2910 == a2 || (sub_1DB2BB924() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001DB2D2930 == a2 || (sub_1DB2BB924() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001DB2D2950 == a2 || (sub_1DB2BB924() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x676E45534D416F6ELL && a2 == 0xEF746E656D656761 || (sub_1DB2BB924() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001DB2D2970 == a2 || (sub_1DB2BB924() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001DB2D2990 == a2)
  {

    return 19;
  }

  else
  {
    v6 = sub_1DB2BB924();

    if (v6)
    {
      return 19;
    }

    else
    {
      return 20;
    }
  }
}

uint64_t sub_1DB153C80(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 <= 5u)
  {
    if (a5 > 2u)
    {
      if (a5 != 3)
      {
        if (a5 != 4)
        {
          return v5;
        }

        goto LABEL_17;
      }
    }

    else if (a5)
    {
      v5 = a2;
      if (a5 != 1)
      {
        return v5;
      }

      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (a5 > 7u)
  {
    if (a5 != 8)
    {
      v5 = a2;
      if (a5 != 9 && a5 != 11)
      {
        return v5;
      }

      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (a5 != 6)
  {
    if (a5 != 7)
    {
      return v5;
    }

LABEL_16:
  }

LABEL_17:
}

uint64_t sub_1DB153D3C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27428, &qword_1DB2BF768);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

OnDeviceStorageCore::ErrorCode::Daemon_optional __swiftcall ErrorCode.Daemon.init(rawValue:)(Swift::UInt rawValue)
{
  v2 = rawValue - 1;
  if (rawValue - 1 >= 0xA)
  {
    v2 = 10;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1DB153E40()
{
  v1 = *v0;
  sub_1DB2BBA04();
  MEMORY[0x1E1283FC0](v1 + 1);
  return sub_1DB2BBA54();
}

uint64_t sub_1DB153EB8(uint64_t a1)
{
  v2 = *v1;
  sub_1DB2BBA04();
  MEMORY[0x1E1283FC0](v2 + 1);
  return sub_1DB2BBA54();
}

uint64_t sub_1DB153F34()
{
  sub_1DB2BBA04();
  MEMORY[0x1E1283FC0](1);
  return sub_1DB2BBA54();
}

uint64_t sub_1DB153FA0(uint64_t a1)
{
  sub_1DB2BBA04();
  MEMORY[0x1E1283FC0](1);
  return sub_1DB2BBA54();
}

uint64_t ErrorCode.Other.errorCode.getter()
{
  if (*v0)
  {
    return 1002;
  }

  else
  {
    return 1001;
  }
}

uint64_t ErrorCode.Other.rawValue.getter()
{
  if (*v0)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

OnDeviceStorageCore::ErrorCode::Other_optional __swiftcall ErrorCode.Other.init(rawValue:)(Swift::UInt rawValue)
{
  if (rawValue == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (rawValue == 1)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1DB154044()
{
  v1 = *v0;
  sub_1DB2BBA04();
  if (v1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  MEMORY[0x1E1283FC0](v2);
  return sub_1DB2BBA54();
}

uint64_t sub_1DB154094()
{
  if (*v0)
  {
    v1 = 2;
  }

  else
  {
    v1 = 1;
  }

  return MEMORY[0x1E1283FC0](v1);
}

uint64_t sub_1DB1540CC(uint64_t a1)
{
  v2 = *v1;
  sub_1DB2BBA04();
  if (v2)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  MEMORY[0x1E1283FC0](v3);
  return sub_1DB2BBA54();
}

void *sub_1DB154118@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result == 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  *a2 = v3;
  return result;
}

void sub_1DB154138(uint64_t *a1@<X8>)
{
  v2 = 1;
  if (*v1)
  {
    v2 = 2;
  }

  *a1 = v2;
}

uint64_t ErrorCode.ErrorInfo.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ErrorCode.ErrorInfo.category.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ErrorCode.ErrorInfo.description.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t ErrorCode.ErrorInfo.details.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t ErrorCode.ErrorInfo.recovery.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t ErrorCode.ErrorInfo.feedback.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

double static ErrorCode.info(for:)@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (a1 <= 495)
  {
    if (a1 > 492)
    {
      if (a1 != 493)
      {
        if (a1 != 494)
        {
          *&v19 = 0;
          *(&v19 + 1) = 0xE000000000000000;
          sub_1DB2BB674();
          *&v20 = 0x6D694C2065746152;
          *(&v20 + 1) = 0xEA00000000007469;
          *&v21 = 0xD00000000000003CLL;
          *(&v21 + 1) = 0x80000001DB2D3460;
          v3 = 0x80000001DB2D34F0;
          *&v22 = 0xD000000000000042;
          *(&v22 + 1) = 0x80000001DB2D34A0;
          v4 = 0xD000000000000050;
          goto LABEL_18;
        }

        *&v19 = 0;
        *(&v19 + 1) = 0xE000000000000000;
        sub_1DB2BB674();
        *&v20 = 0xD000000000000012;
        *(&v20 + 1) = 0x80000001DB2D3000;
        *&v21 = 0xD000000000000033;
        *(&v21 + 1) = 0x80000001DB2D3300;
        *&v22 = 0xD0000000000000A4;
        *(&v22 + 1) = 0x80000001DB2D3340;
        v9 = 0x80000001DB2D33F0;
        v10 = 0xD00000000000006ALL;
LABEL_34:
        *&v23 = v10;
        *(&v23 + 1) = v9;
        goto LABEL_35;
      }

      *&v19 = 0;
      *(&v19 + 1) = 0xE000000000000000;
      sub_1DB2BB674();
      v11 = 0x80000001DB2D3270;
      v12 = "The query is attempting to access schemas which are not permitted in this access credential";
    }

    else
    {
      if (a1 == 490)
      {
        *&v19 = 0;
        *(&v19 + 1) = 0xE000000000000000;
        sub_1DB2BB674();
        *&v20 = 0xD000000000000012;
        *(&v20 + 1) = 0x80000001DB2D3000;
        *&v21 = 0xD000000000000030;
        *(&v21 + 1) = 0x80000001DB2D3020;
        *&v22 = 0xD00000000000003FLL;
        *(&v22 + 1) = 0x80000001DB2D3060;
        v9 = 0x80000001DB2D30A0;
        v10 = 0xD000000000000050;
        goto LABEL_34;
      }

      if (a1 != 491)
      {
        if (a1 != 492)
        {
          goto LABEL_37;
        }

        *&v19 = 0;
        *(&v19 + 1) = 0xE000000000000000;
        sub_1DB2BB674();
        *&v20 = 0xD000000000000012;
        *(&v20 + 1) = 0x80000001DB2D3000;
        *&v21 = 0xD000000000000023;
        *(&v21 + 1) = 0x80000001DB2D31E0;
        v5 = 0x80000001DB2D3210;
        v6 = 72;
LABEL_32:
        *&v22 = v6 | 0xD000000000000012;
        *(&v22 + 1) = v5;
        v9 = 0x80000001DB2D3190;
        v10 = 0xD000000000000046;
        goto LABEL_34;
      }

      *&v19 = 0;
      *(&v19 + 1) = 0xE000000000000000;
      sub_1DB2BB674();
      v11 = 0x80000001DB2D3100;
      v12 = "The query is attempting to access columns which are not permitted in this access credential";
    }

    *&v20 = 0xD000000000000012;
    *(&v20 + 1) = 0x80000001DB2D3000;
    *&v21 = 0xD000000000000024;
    *(&v21 + 1) = v11;
    v5 = (v12 - 32) | 0x8000000000000000;
    v6 = 73;
    goto LABEL_32;
  }

  if (a1 <= 498)
  {
    if (a1 == 496)
    {
      *&v19 = 0;
      *(&v19 + 1) = 0xE000000000000000;
      sub_1DB2BB674();
      *&v20 = 0x6D694C2065746152;
      *(&v20 + 1) = 0xEA00000000007469;
      *&v21 = 0xD00000000000003BLL;
      *(&v21 + 1) = 0x80000001DB2D3550;
      *&v22 = 0xD000000000000095;
      *(&v22 + 1) = 0x80000001DB2D3590;
    }

    else
    {
      if (a1 != 497)
      {
        *&v19 = 0;
        *(&v19 + 1) = 0xE000000000000000;
        sub_1DB2BB674();
        *&v20 = 0xD000000000000012;
        *(&v20 + 1) = 0x80000001DB2D3000;
        *&v21 = 0xD00000000000004BLL;
        *(&v21 + 1) = 0x80000001DB2D36B0;
        v7 = 0x80000001DB2D3700;
        v8 = 68;
LABEL_23:
        *&v22 = v8 | 0xD000000000000012;
        *(&v22 + 1) = v7;
        v9 = 0x80000001DB2D3760;
        v10 = 0xD00000000000002BLL;
        goto LABEL_34;
      }

      *&v19 = 0;
      *(&v19 + 1) = 0xE000000000000000;
      sub_1DB2BB674();
      *&v20 = 0x726F74532079654BLL;
      *(&v20 + 1) = 0xE900000000000065;
      *&v21 = 0xD000000000000016;
      *(&v21 + 1) = 0x80000001DB2D3630;
      *&v22 = 0xD00000000000005DLL;
      *(&v22 + 1) = 0x80000001DB2D3650;
    }

    v23 = 0u;
    v24 = 0u;
    goto LABEL_36;
  }

  if (a1 <= 1000)
  {
    if (a1 != 499)
    {
      if (a1 == 599)
      {
        *&v19 = 0;
        *(&v19 + 1) = 0xE000000000000000;
        sub_1DB2BB674();
        *&v20 = 5001555;
        *(&v20 + 1) = 0xE300000000000000;
        v3 = 0x80000001DB2D38C0;
        *&v21 = 0xD000000000000012;
        *(&v21 + 1) = 0x80000001DB2D3840;
        *&v22 = 0xD00000000000005DLL;
        *(&v22 + 1) = 0x80000001DB2D3860;
        v4 = 0xD000000000000043;
LABEL_18:
        *&v23 = v4;
        *(&v23 + 1) = v3;
LABEL_35:
        v24 = 0uLL;
        goto LABEL_36;
      }

      goto LABEL_37;
    }

    *&v19 = 0;
    *(&v19 + 1) = 0xE000000000000000;
    sub_1DB2BB674();
    *&v20 = 0xD000000000000012;
    *(&v20 + 1) = 0x80000001DB2D3000;
    *&v21 = 0xD000000000000041;
    *(&v21 + 1) = 0x80000001DB2D3790;
    v7 = 0x80000001DB2D37E0;
    v8 = 73;
    goto LABEL_23;
  }

  if (a1 == 1002)
  {
    *&v19 = 0;
    *(&v19 + 1) = 0xE000000000000000;
    sub_1DB2BB674();
    *&v20 = 0x726568744FLL;
    *(&v20 + 1) = 0xE500000000000000;
    *&v21 = 0xD000000000000013;
    *(&v21 + 1) = 0x80000001DB2D3910;
    *&v22 = 0xD00000000000003ALL;
    *(&v22 + 1) = 0x80000001DB2D3930;
    v23 = 0uLL;
    *&v24 = 0xD000000000000063;
    *(&v24 + 1) = 0x80000001DB2D1E60;
    goto LABEL_36;
  }

  if (a1 == 1001)
  {
    *&v19 = 0;
    *(&v19 + 1) = 0xE000000000000000;
    sub_1DB2BB674();
    *&v20 = 0x726568744FLL;
    *(&v20 + 1) = 0xE500000000000000;
    *&v21 = 0xD00000000000001CLL;
    *(&v21 + 1) = 0x80000001DB2D3970;
    *&v22 = 0xD000000000000060;
    *(&v22 + 1) = 0x80000001DB2D3990;
    v23 = 0uLL;
    *&v24 = 0xD000000000000063;
    *(&v24 + 1) = 0x80000001DB2D1E60;
    goto LABEL_36;
  }

LABEL_37:
  v17 = a1 - 400;
  if ((a1 - 400) > 0x63)
  {
    if ((a1 - 100) > 0x63)
    {
      if ((a1 - 500) > 0x63)
      {
        if ((a1 - 600) > 0x63)
        {
          v18 = a1 - 200;
          if (v18 > 0x63)
          {
            if (v17 >= 0xFFFFFFFFFFFFFF9CLL)
            {
              sub_1DB22FCD4(v18, &v19);
            }

            else
            {
              v23 = 0u;
              v24 = 0u;
              v21 = 0u;
              v22 = 0u;
              v19 = 0u;
              v20 = 0u;
            }
          }

          else
          {
            sub_1DB220078(v18, &v19);
          }
        }

        else
        {
          sub_1DB158D84(a1 - 600, &v19);
        }
      }

      else
      {
        sub_1DB21886C(a1 - 500, &v19);
      }
    }

    else
    {
      sub_1DB1487F4(a1 - 100, &v19);
    }
  }

  else
  {
    sub_1DB150350(a1 - 400, &v19);
  }

LABEL_36:
  v13 = v22;
  a2[2] = v21;
  a2[3] = v13;
  v14 = v24;
  a2[4] = v23;
  a2[5] = v14;
  result = *&v19;
  v16 = v20;
  *a2 = v19;
  a2[1] = v16;
  return result;
}

unint64_t sub_1DB154BC8()
{
  result = qword_1ECC27430;
  if (!qword_1ECC27430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27430);
  }

  return result;
}

unint64_t sub_1DB154C20()
{
  result = qword_1ECC27438;
  if (!qword_1ECC27438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27438);
  }

  return result;
}

unint64_t sub_1DB154C78()
{
  result = qword_1ECC27440;
  if (!qword_1ECC27440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC27440);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ErrorCode.Daemon(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ErrorCode.Daemon(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1DB154E78(uint64_t a1, int a2)
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

uint64_t sub_1DB154EC0(uint64_t result, int a2, int a3)
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

uint64_t RichError.description.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 32))();
  v2 = sub_1DB2BB8F4();
  MEMORY[0x1E1283490](v2);

  MEMORY[0x1E1283490](8285, 0xE200000000000000);
  v3 = sub_1DB2BA754();
  if (v4)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0xD000000000000014;
  }

  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x80000001DB2D1750;
  }

  MEMORY[0x1E1283490](v5, v6);

  return 91;
}

uint64_t RichError.debugDescription.getter(uint64_t a1, uint64_t a2)
{
  sub_1DB2BB4F4();

  (*(a2 + 32))(a1, a2);
  v4 = sub_1DB2BB8F4();
  MEMORY[0x1E1283490](v4);

  MEMORY[0x1E1283490](0x1000000000000012, 0x80000001DB2D3A00);
  v5 = sub_1DB2BA754();
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v5 = 0xD000000000000014;
    v7 = 0x80000001DB2D1750;
  }

  MEMORY[0x1E1283490](v5, v7);

  v8 = sub_1DB2BA744();
  if (v9)
  {
    v10 = v8;
    v11 = v9;
    sub_1DB2BB4F4();

    MEMORY[0x1E1283490](v10, v11);

    MEMORY[0x1E1283490](0x1000000000000010, 0x80000001DB2D3A40);
  }

  v12 = sub_1DB2BA764();
  if (v13)
  {
    v14 = v12;
    v15 = v13;
    sub_1DB2BB4F4();

    MEMORY[0x1E1283490](v14, v15);

    MEMORY[0x1E1283490](0x1000000000000010, 0x80000001DB2D3A20);
  }

  v16 = sub_1DB2BA734();
  if (v17)
  {
    MEMORY[0x1E1283490](v16);

    MEMORY[0x1E1283490](0x65482096939FF00ALL, 0xAC000000203A706CLL);
  }

  return 0x646F4320A2949FF0;
}