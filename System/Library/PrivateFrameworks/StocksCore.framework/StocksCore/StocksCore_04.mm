uint64_t sub_1DAAA0BF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_1DACB8FB4();
  v22 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1DACB9004();
  v12 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  v16 = swift_allocObject();
  v16[2] = a6;
  v16[3] = sub_1DAA73914;
  v16[4] = v15;
  aBlock[4] = sub_1DAC928D0;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DAA5796C;
  aBlock[3] = &block_descriptor_39;
  v17 = _Block_copy(aBlock);
  sub_1DACB71F4();
  sub_1DACB71E4();
  sub_1DACB8FD4();
  v23 = MEMORY[0x1E69E7CC0];
  sub_1DAA572FC(&qword_1EE124040, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  v18 = MEMORY[0x1E69E7F60];
  sub_1DAA581BC(0, &qword_1EE123EC0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1DAA57E98(&qword_1EE123EB0, &qword_1EE123EC0, v18);
  sub_1DACB9BB4();
  MEMORY[0x1E1277440](0, v14, v11, v17);
  _Block_release(v17);
  (*(v22 + 8))(v11, v9);
  (*(v12 + 8))(v14, v21);
}

uint64_t sub_1DAAA0F1C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DAAA0F54()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

id sub_1DAAA0F94()
{
  if (qword_1EE123758 != -1)
  {
    swift_once();
  }

  v17 = xmmword_1EE13E428;
  v18 = *&qword_1EE13E438;
  v19 = xmmword_1EE13E448;
  v13 = xmmword_1EE13E3E8;
  v14 = *&qword_1EE13E3F8;
  v15 = xmmword_1EE13E408;
  v16 = *&qword_1EE13E418;
  v9 = xmmword_1EE13E3A8;
  v10 = *&qword_1EE13E3B8;
  v11 = xmmword_1EE13E3C8;
  v12 = *&qword_1EE13E3D8;
  v0 = xmmword_1EE13E408;
  sub_1DAA9CBF4();
  sub_1DAA4E470(0, &qword_1EE123B50, MEMORY[0x1E69E6158]);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1DACC1D20;
  *(v1 + 32) = v0;
  v2 = objc_allocWithZone(MEMORY[0x1E69B5378]);
  sub_1DACB71E4();
  v3 = sub_1DACB92F4();
  v4 = sub_1DACB92F4();
  v5 = sub_1DACB9634();

  v6 = sub_1DACB9634();

  v7 = [v2 initWithRecordType:v3 recordIDPrefix:v4 keys:v5 localizableKeys:{v6, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19}];

  return v7;
}

void sub_1DAAA113C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(void))
{
  if (!*a2)
  {
    sub_1DAA7BD0C(255, a3, a4, MEMORY[0x1E69E6720]);
    a5();
    v7 = sub_1DACB6F64();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1DAAA11C4()
{
  result = qword_1EE11EF20;
  if (!qword_1EE11EF20)
  {
    sub_1DAAA1440(255, qword_1EE11EF28, type metadata accessor for SymbolEntity);
    sub_1DAAA14B8(&qword_1EE123548, type metadata accessor for SymbolEntity, &protocol conformance descriptor for SymbolEntity);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11EF20);
  }

  return result;
}

void sub_1DAAA129C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6158]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1DAAA12F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6158]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1DAAA13A0(uint64_t a1)
{
  sub_1DAAA167C();
  sub_1DACB8BB4();
  v1 = sub_1DACB89D4();
  v2 = sub_1DACB8A54();

  return v2;
}

void sub_1DAAA1440(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1DACB9AF4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1DAAA14B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DAAA1500(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DAAA1548(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DAAA1590(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DAAA15D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DAAA1620(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1DAAA167C()
{
  if (!qword_1EE11FCD8)
  {
    v0 = sub_1DACB91A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE11FCD8);
    }
  }
}

unint64_t sub_1DAAA16DC()
{
  result = qword_1EE11F178;
  if (!qword_1EE11F178)
  {
    sub_1DAA7BD0C(255, &qword_1EE11F180, MEMORY[0x1E695A360], MEMORY[0x1E69E6720]);
    sub_1DAAA15D8(&qword_1EE11F188, MEMORY[0x1E695A360], MEMORY[0x1E695A350]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11F178);
  }

  return result;
}

uint64_t sub_1DAAA17B4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA485B8(0, &unk_1EE11F890, &protocolRef_FCFeedPersonalizing);
  result = sub_1DACB8244();
  if (result)
  {
    v4 = result;
    v5 = type metadata accessor for FeedPersonalizerHeadlineScorer();
    result = swift_allocObject();
    *(result + 16) = v4;
    a2[3] = v5;
    a2[4] = &off_1F568D800;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1DAAA1870()
{
  result = qword_1EE11F100;
  if (!qword_1EE11F100)
  {
    sub_1DAA7BD0C(255, &qword_1EE125280, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    sub_1DAAA15D8(&qword_1EE11F108, MEMORY[0x1E6969530], MEMORY[0x1E695A750]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11F100);
  }

  return result;
}

uint64_t sub_1DAAA1948(uint64_t a1, uint64_t a2)
{
  sub_1DAAA1C0C(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjectType = swift_getObjectType();
  v7 = sub_1DACB81B4();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = sub_1DAAA2240(a2, v5, ObjectType);
  sub_1DAAA3F64(v5);
  return v8;
}

uint64_t sub_1DAAA1A5C(unint64_t *a1, unint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1DAA49218(255, a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1DAAA1AEC(uint64_t a1)
{
  if (!qword_1EE11F1C8)
  {
    v1 = MEMORY[0x1E69E63B0];
    sub_1DAA49218(255, &qword_1EE11F998, MEMORY[0x1E69E63B0]);
    sub_1DAAA1A5C(&qword_1EE11D110, &qword_1EE11F998, v1, sub_1DAAA1BB8);
    v2 = sub_1DACB6F64();
    if (!v3)
    {
      atomic_store(v2, &qword_1EE11F1C8);
    }
  }
}

unint64_t sub_1DAAA1BB8()
{
  result = qword_1EE11D248;
  if (!qword_1EE11D248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11D248);
  }

  return result;
}

void sub_1DAAA1C0C(uint64_t a1)
{
  if (!qword_1EE120028)
  {
    sub_1DACB81B4();
    v1 = sub_1DACB9AF4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE120028);
    }
  }
}

uint64_t sub_1DAAA1C64(uint64_t a1)
{
  v25 = a1;
  v24 = sub_1DACB81D4();
  v21 = *(v24 - 8);
  v22 = v21;
  MEMORY[0x1EEE9AC00](v24);
  v23 = v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1DACB9924();
  MEMORY[0x1EEE9AC00](v20);
  v19 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1DACB9944();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DACB9004();
  MEMORY[0x1EEE9AC00](v8 - 8);
  *(v1 + 16) = MEMORY[0x1E69E7CC8];
  v9 = sub_1DAA420F4(0, &qword_1EE123DE8, 0x1E69E9610);
  v17[1] = "gHistory";
  v17[2] = v9;
  sub_1DACB8FF4();
  (*(v5 + 104))(v7, *MEMORY[0x1E69E8098], v4);
  v26 = MEMORY[0x1E69E7CC0];
  sub_1DAA57344(&unk_1EE123DF0, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  v10 = MEMORY[0x1E69E8030];
  v11 = MEMORY[0x1E69E62F8];
  sub_1DAA5802C(0, &qword_1EE123E78, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
  sub_1DAA57424(&qword_1EE123E70, &qword_1EE123E78, v10);
  sub_1DACB9BB4();
  v12 = sub_1DACB9974();
  v13 = v18;
  *(v18 + 24) = v12;
  v14 = MEMORY[0x1E69D6420];
  sub_1DAA5802C(0, &qword_1EE1252D0, MEMORY[0x1E69D6420], MEMORY[0x1E69E6F90]);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1DACC1D20;
  sub_1DACB81C4();
  v26 = v15;
  sub_1DAA57344(&qword_1EE1255D0, MEMORY[0x1E69D6420], MEMORY[0x1E69D6428]);
  sub_1DAA5802C(0, &qword_1EE125540, v14, v11);
  sub_1DAA57424(&qword_1EE125530, &qword_1EE125540, v14);
  sub_1DACB9BB4();
  sub_1DAA5802C(0, &qword_1EE11D480, sub_1DAAA2108, MEMORY[0x1E69D6A80]);
  swift_allocObject();
  *(v13 + 32) = sub_1DACB8914();
  return v13;
}

void sub_1DAAA2108(uint64_t a1)
{
  if (!qword_1EE11D330)
  {
    sub_1DAAA27C8();
    sub_1DAAA2BCC();
    sub_1DAAA2C20();
    v1 = sub_1DACB8E44();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE11D330);
    }
  }
}

void sub_1DAAA2198(uint64_t a1)
{
  if (!qword_1EE11F1C0)
  {
    v1 = MEMORY[0x1E69E6530];
    sub_1DAA49218(255, &unk_1EE11F970, MEMORY[0x1E69E6530]);
    sub_1DAAA1A5C(&qword_1EE11D0E8, &unk_1EE11F970, v1, sub_1DAAA281C);
    v2 = sub_1DACB6F64();
    if (!v3)
    {
      atomic_store(v2, &qword_1EE11F1C0);
    }
  }
}

uint64_t sub_1DAAA2240(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x1E69E7CC8];
  if (!v3)
  {
LABEL_15:
    v27 = sub_1DACB71E4();
    v28 = sub_1DAAA2918(v27);

    v29 = sub_1DAAA2CE8();
    sub_1DAAA2E2C(v28, a2, a3, &type metadata for StockRecord, v29);

    *(swift_allocObject() + 16) = v4;
    v30 = sub_1DACB89D4();
    sub_1DAAA167C();
    sub_1DAAA3DA0();
    v31 = sub_1DACB8B64();

    return v31;
  }

  v5 = (a1 + 40);
  while (1)
  {
    v9 = *(v5 - 1);
    v8 = *v5;
    v10 = sub_1DACB93B4();
    v12 = v11;
    swift_bridgeObjectRetain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = sub_1DAA4BF3C(v10, v12);
    v16 = v4[2];
    v17 = (v15 & 1) == 0;
    v18 = __OFADD__(v16, v17);
    v19 = v16 + v17;
    if (v18)
    {
      break;
    }

    v20 = v15;
    if (v4[3] < v19)
    {
      sub_1DAAA2514(v19, isUniquelyReferenced_nonNull_native);
      v14 = sub_1DAA4BF3C(v10, v12);
      if ((v20 & 1) != (v21 & 1))
      {
        goto LABEL_18;
      }

LABEL_10:
      if (v20)
      {
        goto LABEL_3;
      }

      goto LABEL_11;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_10;
    }

    v26 = v14;
    sub_1DAB65314();
    v14 = v26;
    if (v20)
    {
LABEL_3:
      v6 = v14;

      v7 = (v4[7] + 16 * v6);
      *v7 = v9;
      v7[1] = v8;

      goto LABEL_4;
    }

LABEL_11:
    v4[(v14 >> 6) + 8] |= 1 << v14;
    v22 = (v4[6] + 16 * v14);
    *v22 = v10;
    v22[1] = v12;
    v23 = (v4[7] + 16 * v14);
    *v23 = v9;
    v23[1] = v8;

    v24 = v4[2];
    v18 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (v18)
    {
      goto LABEL_17;
    }

    v4[2] = v25;
LABEL_4:
    v5 += 2;
    if (!--v3)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = sub_1DACBA1F4();
  __break(1u);
  return result;
}

uint64_t sub_1DAAA24DC()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DAAA2514(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1DAA4BEE0();
  v37 = v4;
  result = sub_1DACB9E84();
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
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
        sub_1DACB71E4();
        sub_1DACB71E4();
      }

      sub_1DACBA284();
      sub_1DACB9404();
      result = sub_1DACBA2C4();
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
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
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

unint64_t sub_1DAAA27C8()
{
  result = qword_1EE11E630;
  if (!qword_1EE11E630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E630);
  }

  return result;
}

unint64_t sub_1DAAA281C()
{
  result = qword_1EE11D240;
  if (!qword_1EE11D240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11D240);
  }

  return result;
}

void sub_1DAAA2870(uint64_t a1)
{
  if (!qword_1EE11F1D0)
  {
    v1 = MEMORY[0x1E69E6158];
    sub_1DAA49218(255, &qword_1EE123FD0, MEMORY[0x1E69E6158]);
    sub_1DAAA1A5C(&qword_1EE11D1A0, &qword_1EE123FD0, v1, sub_1DAA8D9E8);
    v2 = sub_1DACB6F64();
    if (!v3)
    {
      atomic_store(v2, &qword_1EE11F1D0);
    }
  }
}

uint64_t sub_1DAAA2918(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v30 = MEMORY[0x1E69E7CC0];
    sub_1DAA5859C(0, v2, 0);
    v29 = v30;
    v4 = v1 + 64;
    result = sub_1DACB9BC4();
    v5 = result;
    v6 = 0;
    v24 = v1 + 72;
    v25 = v2;
    v26 = v1 + 64;
    v27 = v1;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v1 + 32))
    {
      v8 = v5 >> 6;
      if ((*(v4 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_24;
      }

      v28 = *(v1 + 36);
      v9 = (*(v1 + 48) + 16 * v5);
      v11 = *v9;
      v10 = v9[1];
      v12 = qword_1EE123758;
      sub_1DACB71E4();
      if (v12 != -1)
      {
        swift_once();
      }

      MEMORY[0x1E1276F20](qword_1EE13E3B8, unk_1EE13E3C0);
      sub_1DACB9204();
      MEMORY[0x1E1276F20](v11, v10);

      v13 = v29;
      v15 = *(v29 + 16);
      v14 = *(v29 + 24);
      if (v15 >= v14 >> 1)
      {
        result = sub_1DAA5859C((v14 > 1), v15 + 1, 1);
        v13 = v29;
      }

      *(v13 + 16) = v15 + 1;
      v16 = v13 + 16 * v15;
      *(v16 + 32) = 0;
      *(v16 + 40) = 0xE000000000000000;
      v1 = v27;
      v7 = 1 << *(v27 + 32);
      if (v5 >= v7)
      {
        goto LABEL_25;
      }

      v4 = v26;
      v17 = *(v26 + 8 * v8);
      if ((v17 & (1 << v5)) == 0)
      {
        goto LABEL_26;
      }

      v29 = v13;
      if (v28 != *(v27 + 36))
      {
        goto LABEL_27;
      }

      v18 = v17 & (-2 << (v5 & 0x3F));
      if (v18)
      {
        v7 = __clz(__rbit64(v18)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v19 = v8 << 6;
        v20 = v8 + 1;
        v21 = (v24 + 8 * v8);
        while (v20 < (v7 + 63) >> 6)
        {
          v23 = *v21++;
          v22 = v23;
          v19 += 64;
          ++v20;
          if (v23)
          {
            result = sub_1DAAA2C74(v5, v28, 0);
            v7 = __clz(__rbit64(v22)) + v19;
            goto LABEL_4;
          }
        }

        result = sub_1DAAA2C74(v5, v28, 0);
      }

LABEL_4:
      ++v6;
      v5 = v7;
      if (v6 == v25)
      {
        return v29;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  return result;
}

unint64_t sub_1DAAA2BCC()
{
  result = qword_1EE11E638;
  if (!qword_1EE11E638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E638);
  }

  return result;
}

unint64_t sub_1DAAA2C20()
{
  result = qword_1EE11E5A0;
  if (!qword_1EE11E5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E5A0);
  }

  return result;
}

uint64_t sub_1DAAA2C74(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_1DAAA2C80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SymbolEntity(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DAAA2CE8()
{
  result = qword_1EE123748;
  if (!qword_1EE123748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE123748);
  }

  return result;
}

uint64_t sub_1DAAA2D3C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1DAA7BD0C(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1DAAA2DBC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1DAA7BD0C(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1DAAA2E2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1DACB91A4();
  sub_1DACB8B74();
  return sub_1DACB8B34();
}

unint64_t sub_1DAAA2ECC()
{
  result = qword_1EE11E580;
  if (!qword_1EE11E580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E580);
  }

  return result;
}

uint64_t sub_1DAAA2F6C(uint64_t a1, uint64_t a2, int *a3)
{
  sub_1DAA49A38(0, &qword_1EE125280, MEMORY[0x1E6969530]);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[15];
LABEL_7:
    v12 = *(v8 + 48);

    return v12(a1 + v9, a2, v7);
  }

  sub_1DAA49A38(0, &qword_1EE1263D0, MEMORY[0x1E6968FB0]);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[18];
    goto LABEL_7;
  }

  sub_1DAA49A38(0, &qword_1EE1239E8, MEMORY[0x1E6969BC0]);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v7 = v11;
    v8 = *(v11 - 8);
    v9 = a3[20];
    goto LABEL_7;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v14 = *(a1 + a3[26]);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    return (v14 + 1);
  }

  else
  {
    v15 = sub_1DACB7CC4();
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[28];

    return v16(v17, a2, v15);
  }
}

void sub_1DAAA3188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v17 = swift_allocObject();
  v17[2] = a8;
  v17[3] = a9;
  v17[4] = a10;
  v17[5] = a1;
  v17[6] = a2;
  sub_1DACB71F4();
  v18 = sub_1DAAA33F4(a5);
  v19 = sub_1DACB9634();
  v20 = swift_allocObject();
  v20[2] = a8;
  v20[3] = a9;
  v20[4] = a10;
  v20[5] = sub_1DABAF454;
  v20[6] = v17;
  v20[7] = a3;
  v20[8] = a4;
  v20[9] = a7;
  aBlock[4] = sub_1DABAF48C;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DABAE648;
  aBlock[3] = &block_descriptor_13;
  v21 = _Block_copy(aBlock);
  sub_1DACB71F4();
  sub_1DACB71E4();

  [a6 fetchRecordsWithIDs:v19 cachePolicy:v18 completion:v21];
  _Block_release(v21);
}

uint64_t sub_1DAAA331C()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DAAA3354()
{

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

unint64_t sub_1DAAA339C()
{
  result = qword_1EE11E570;
  if (!qword_1EE11E570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E570);
  }

  return result;
}

id sub_1DAAA33F4(uint64_t a1)
{
  sub_1DAAA1C0C(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1DACB81B4();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = (&v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v18 - v10;
  sub_1DAAA3874(a1, v4, sub_1DAAA1C0C);
  if ((*(v6 + 48))(v4, 1, v5) != 1)
  {
    (*(v6 + 32))(v11, v4, v5);
    (*(v6 + 16))(v9, v11, v5);
    v14 = (*(v6 + 88))(v9, v5);
    if (v14 == *MEMORY[0x1E69D63D8])
    {
      (*(v6 + 96))(v9, v5);
      v15 = *v9;
      v16 = [objc_allocWithZone(MEMORY[0x1E69B51F8]) init];
      [v16 setCachePolicy_];
      [v16 setMaximumCachedAge_];
      goto LABEL_15;
    }

    if (v14 == *MEMORY[0x1E69D63E0])
    {
      (*(v6 + 96))(v9, v5);
      v17 = [objc_opt_self() cachePolicyWithSoftMaxAge_];
    }

    else if (v14 == *MEMORY[0x1E69D63C0])
    {
      v17 = [objc_opt_self() ignoreCacheCachePolicy];
    }

    else
    {
      if (v14 != *MEMORY[0x1E69D63D0])
      {
        if (v14 != *MEMORY[0x1E69D63C8])
        {
          result = sub_1DACB9E44();
          __break(1u);
          return result;
        }

        v16 = [objc_allocWithZone(MEMORY[0x1E69B51F8]) init];
        [v16 setCachePolicy_];
        [v16 setMaximumCachedAge_];
LABEL_15:
        (*(v6 + 8))(v11, v5);
        return v16;
      }

      v17 = [objc_opt_self() cachedOnlyCachePolicy];
    }

    v16 = v17;
    goto LABEL_15;
  }

  sub_1DAAA3938(v4, sub_1DAAA1C0C);
  v12 = [objc_opt_self() defaultCachePolicy];

  return v12;
}

unint64_t sub_1DAAA3820()
{
  result = qword_1EE11E578;
  if (!qword_1EE11E578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E578);
  }

  return result;
}

uint64_t sub_1DAAA3874(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1DAAA38DC()
{
  result = qword_1EE122608;
  if (!qword_1EE122608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE122608);
  }

  return result;
}

uint64_t sub_1DAAA3938(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1DAAA3998(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v25 = MEMORY[0x1E69E7CC0];
    sub_1DACB9D64();
    v4 = (a1 + 32);
    for (i = v2 - 1; ; --i)
    {
      v6 = v4[5];
      v7 = v4[7];
      v21 = v4[6];
      v22 = v7;
      v8 = v4[7];
      v23 = v4[8];
      v9 = v4[1];
      v10 = v4[3];
      v17 = v4[2];
      v18 = v10;
      v11 = v4[3];
      v12 = v4[5];
      v19 = v4[4];
      v20 = v12;
      v13 = v4[1];
      v15 = *v4;
      v16 = v13;
      v24[6] = v21;
      v24[7] = v8;
      v24[8] = v4[8];
      v24[2] = v17;
      v24[3] = v11;
      v24[4] = v19;
      v24[5] = v6;
      v24[0] = v15;
      v24[1] = v9;
      if (sub_1DAA9B6F0(v24) == 1)
      {
        sub_1DAA9B6E0(v24);
        v14[2] = v17;
        v14[3] = v18;
        v14[0] = v15;
        v14[1] = v16;
        v14[7] = v22;
        v14[8] = v23;
        v14[5] = v20;
        v14[6] = v21;
        v14[4] = v19;
        sub_1DAA9B6E0(v14);
      }

      else
      {
        sub_1DAA9B6E0(v24);
      }

      swift_unknownObjectRetain();
      sub_1DACB9D34();
      sub_1DACB9D74();
      sub_1DACB9D84();
      sub_1DACB9D44();
      if (!i)
      {
        break;
      }

      v4 += 9;
    }

    return v25;
  }

  return result;
}

unint64_t sub_1DAAA3AEC()
{
  result = qword_1EE11E590;
  if (!qword_1EE11E590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E590);
  }

  return result;
}

unint64_t sub_1DAAA3B40()
{
  result = qword_1EE1225F0;
  if (!qword_1EE1225F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1225F0);
  }

  return result;
}

unint64_t sub_1DAAA3BA0()
{
  result = qword_1EE1225E8;
  if (!qword_1EE1225E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1225E8);
  }

  return result;
}

unint64_t sub_1DAAA3BF4()
{
  result = qword_1EE11E598;
  if (!qword_1EE11E598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E598);
  }

  return result;
}

uint64_t sub_1DAAA3C4C(SEL *a1)
{
  v3 = v1[7];
  v10[6] = v1[6];
  v10[7] = v3;
  v10[8] = v1[8];
  v4 = v1[3];
  v10[2] = v1[2];
  v10[3] = v4;
  v5 = v1[5];
  v10[4] = v1[4];
  v10[5] = v5;
  v6 = v1[1];
  v10[0] = *v1;
  v10[1] = v6;
  sub_1DAA9B6F0(v10);
  v7 = [*sub_1DAA9B6E0(v10) *a1];
  v8 = sub_1DACB9324();

  return v8;
}

unint64_t sub_1DAAA3CF8()
{
  result = qword_1EE11E588;
  if (!qword_1EE11E588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E588);
  }

  return result;
}

unint64_t sub_1DAAA3D4C()
{
  result = qword_1EE122600;
  if (!qword_1EE122600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE122600);
  }

  return result;
}

unint64_t sub_1DAAA3DA0()
{
  result = qword_1EE11FCD0;
  if (!qword_1EE11FCD0)
  {
    sub_1DAAA167C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11FCD0);
  }

  return result;
}

void *sub_1DAAA3DF8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA485B8(0, &qword_1EE125488, &protocolRef_FCContentContext);
  result = sub_1DACB8244();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA44440(0, qword_1EE1207A0, &protocol descriptor for NewsHeadlineScorerFactoryType, 1);
  result = sub_1DACB8254();
  if (!v11)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA44440(0, &qword_1EE125910, &protocol descriptor for AppConfigurationManagerType, 1);
  result = sub_1DACB8254();
  if (v9)
  {
    v6 = type metadata accessor for NewsFeedService();
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    sub_1DAA4D460(&v10, v7 + 24);
    result = sub_1DAA4D460(&v8, v7 + 64);
    a2[3] = v6;
    a2[4] = &protocol witness table for NewsFeedService;
    *a2 = v7;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1DAAA3F64(uint64_t a1)
{
  sub_1DAAA1C0C(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1DAAA3FC0()
{
  result = qword_1EE1225F8;
  if (!qword_1EE1225F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1225F8);
  }

  return result;
}

unint64_t sub_1DAAA4074()
{
  result = qword_1EE1225E0;
  if (!qword_1EE1225E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1225E0);
  }

  return result;
}

uint64_t sub_1DAAA40EC()
{
  v10 = sub_1DACB9944();
  v0 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v2 = &v9 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1DACB9924();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1DACB9004();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v9 = sub_1DAA57C58();
  sub_1DACB8FE4();
  v12 = MEMORY[0x1E69E7CC0];
  sub_1DAA572FC(&unk_1EE123DF0, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  v5 = MEMORY[0x1E69E8030];
  sub_1DAA58158(0, &qword_1EE123E78, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
  sub_1DAA57E34(&qword_1EE123E70, &qword_1EE123E78, v5);
  sub_1DACB9BB4();
  (*(v0 + 104))(v2, *MEMORY[0x1E69E8090], v10);
  v6 = sub_1DACB9974();
  v7 = v11;
  *(v11 + 16) = v6;
  return v7;
}

unint64_t sub_1DAAA436C()
{
  result = qword_1EE1225D8;
  if (!qword_1EE1225D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1225D8);
  }

  return result;
}

unint64_t sub_1DAAA4420()
{
  result = qword_1EE1225D0;
  if (!qword_1EE1225D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1225D0);
  }

  return result;
}

uint64_t sub_1DAAA4474()
{
  v10 = sub_1DACB9944();
  v0 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v2 = &v9 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1DACB9924();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1DACB9004();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v9 = sub_1DAA57C58();
  sub_1DACB8FE4();
  v12 = MEMORY[0x1E69E7CC0];
  sub_1DAA572FC(&unk_1EE123DF0, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  v5 = MEMORY[0x1E69E8030];
  sub_1DAA581BC(0, &qword_1EE123E78, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
  sub_1DAA57E98(&qword_1EE123E70, &qword_1EE123E78, v5);
  sub_1DACB9BB4();
  (*(v0 + 104))(v2, *MEMORY[0x1E69E8090], v10);
  v6 = sub_1DACB9974();
  v7 = v11;
  *(v11 + 16) = v6;
  return v7;
}

uint64_t sub_1DAAA4700(uint64_t a1)
{
  sub_1DAAA474C();

  return sub_1DACB6D04();
}

unint64_t sub_1DAAA474C()
{
  result = qword_1EE11E9E0;
  if (!qword_1EE11E9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E9E0);
  }

  return result;
}

double sub_1DAAA47A0(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 136) = 0;
    result = 0.0;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 144) = 1;
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
      result = 0.0;
      *(a1 + 64) = 0u;
      *(a1 + 80) = 0u;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 96) = 0;
      *(a1 + 104) = 2 * -a2;
      *(a1 + 112) = 0u;
      *(a1 + 128) = 0u;
      return result;
    }

    *(a1 + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1DAAA4820()
{
  result = qword_1EE11E9D8;
  if (!qword_1EE11E9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E9D8);
  }

  return result;
}

uint64_t sub_1DAAA4874(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 104) >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_1DAAA48D0@<X0>(uint64_t a1@<X8>)
{
  v21 = a1;
  v1 = MEMORY[0x1E69E6720];
  sub_1DAA7BD0C(0, &qword_1EE11F170, MEMORY[0x1E695A3E8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v20 = &v18 - v3;
  sub_1DAA7BD0C(0, &qword_1EE123A80, MEMORY[0x1E6968E10], v1);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v18 - v5;
  v19 = sub_1DACB7904();
  v7 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v8 = type metadata accessor for SymbolEntity(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA7BD0C(0, qword_1EE11EF28, type metadata accessor for SymbolEntity, v1);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v18 - v13;
  v15 = sub_1DACB92C4();
  MEMORY[0x1EEE9AC00](v15 - 8);
  sub_1DACB92B4();
  sub_1DACB92A4();
  sub_1DACB6ED4();
  if ((*(v9 + 48))(v14, 1, v8))
  {
    sub_1DAAA2DBC(v14, qword_1EE11EF28, type metadata accessor for SymbolEntity);
  }

  else
  {
    sub_1DAAA2C80(v14, v11);
    sub_1DAAA2DBC(v14, qword_1EE11EF28, type metadata accessor for SymbolEntity);
    sub_1DACB6ED4();
    sub_1DAA88E38(v11, type metadata accessor for SymbolEntity);
  }

  sub_1DACB9294();

  sub_1DACB92A4();
  sub_1DACB78F4();
  sub_1DACB78D4();
  (*(v7 + 56))(v6, 0, 1, v19);
  v16 = sub_1DACB7164();
  (*(*(v16 - 8) + 56))(v20, 1, 1, v16);
  return sub_1DACB7174();
}

uint64_t sub_1DAAA4D1C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 176) = 1;
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

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DAAA4D88(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 176))
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

uint64_t sub_1DAAA4DD0(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    v2 = MEMORY[0x1E69E7CC0];
    if (result)
    {
      v23 = MEMORY[0x1E69E7CC0];
      sub_1DAAA50F8(0, result, 0);
      v2 = v23;
      do
      {
        v3 = sub_1DAAA525C(1);
        if (qword_1EE11EA20 != -1)
        {
          swift_once();
        }

        v20 = xmmword_1EE11EA88;
        v21 = xmmword_1EE11EA98;
        v22 = qword_1EE11EAA8;
        v16 = xmmword_1EE11EA48;
        v17 = xmmword_1EE11EA58;
        v18 = xmmword_1EE11EA68;
        v19 = xmmword_1EE11EA78;
        v14 = xmmword_1EE11EA28;
        v15 = xmmword_1EE11EA38;
        sub_1DAAA5860(&v14, v13);
        v23 = v2;
        v5 = *(v2 + 16);
        v4 = *(v2 + 24);
        if (v5 >= v4 >> 1)
        {
          sub_1DAAA50F8((v4 > 1), v5 + 1, 1);
          v2 = v23;
        }

        *&v13[88] = v19;
        *&v13[104] = v20;
        *&v13[120] = v21;
        *&v13[24] = v15;
        *&v13[40] = v16;
        *&v13[56] = v17;
        *&v13[72] = v18;
        *&v13[136] = v22;
        *&v13[8] = v14;
        *v13 = v3;
        sub_1DAAA58BC(v13);
        *(v2 + 16) = v5 + 1;
        v6 = (v2 + 144 * v5);
        v6[2] = *v13;
        v7 = *&v13[16];
        v8 = *&v13[32];
        v9 = *&v13[64];
        v6[5] = *&v13[48];
        v6[6] = v9;
        v6[3] = v7;
        v6[4] = v8;
        v10 = *&v13[80];
        v11 = *&v13[96];
        v12 = *&v13[128];
        v6[9] = *&v13[112];
        v6[10] = v12;
        v6[7] = v10;
        v6[8] = v11;
        --v1;
      }

      while (v1);
    }

    return v2;
  }

  return result;
}

__n128 __swift_memcpy176_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = result;
  *(a1 + 128) = v8;
  return result;
}

char *sub_1DAAA4FB8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1DAA495C0(0, &qword_1EE11F4E8, &type metadata for Headline, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 144);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[144 * v8])
    {
      memmove(v12, v13, 144 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1DAAA50F8(char *a1, int64_t a2, char a3)
{
  result = sub_1DAAA4FB8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1DAAA5118(_OWORD *a1, _OWORD *a2)
{
  v3 = a1[7];
  v22[6] = a1[6];
  v22[7] = v3;
  v22[8] = a1[8];
  v4 = a1[3];
  v22[2] = a1[2];
  v22[3] = v4;
  v5 = a1[5];
  v22[4] = a1[4];
  v22[5] = v5;
  v6 = a1[1];
  v22[0] = *a1;
  v22[1] = v6;
  sub_1DAA9B6F0(v22);
  v7 = [*sub_1DAA9B6E0(v22) identifier];
  v8 = sub_1DACB9324();
  v10 = v9;

  v11 = a2[7];
  v21[6] = a2[6];
  v21[7] = v11;
  v21[8] = a2[8];
  v12 = a2[3];
  v21[2] = a2[2];
  v21[3] = v12;
  v13 = a2[5];
  v21[4] = a2[4];
  v21[5] = v13;
  v14 = a2[1];
  v21[0] = *a2;
  v21[1] = v14;
  sub_1DAA9B6F0(v21);
  v15 = [*sub_1DAA9B6E0(v21) identifier];
  v16 = sub_1DACB9324();
  v18 = v17;

  if (v8 == v16 && v10 == v18)
  {
    v19 = 1;
  }

  else
  {
    v19 = sub_1DACBA174();
  }

  return v19 & 1;
}

id sub_1DAAA525C(char a1)
{
  v2 = sub_1DACB7CC4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DACB7D04();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_allocWithZone(MEMORY[0x1E69B5310]) init];
  sub_1DACB6D04();
  sub_1DACB7CE4();
  (*(v7 + 8))(v9, v6);
  v11 = sub_1DACB92F4();

  [v10 setArticleID_];

  sub_1DAAA55BC(0x140000000ALL);
  v12 = sub_1DACB92F4();

  [v10 setTitle_];

  sub_1DAAA55BC(0x140000000ALL);
  v13 = sub_1DACB92F4();

  [v10 setShortExcerpt_];

  sub_1DAAA55BC(0x140000000ALL);
  v14 = sub_1DACB92F4();

  [v10 setSourceName_];

  sub_1DAA82C34(1);
  v15 = sub_1DACB7C04();
  (*(v3 + 8))(v5, v2);
  [v10 setPublishDate_];

  sub_1DAAA55BC(0x300000001);
  v16 = sub_1DACB92F4();

  [v10 setAccessoryText_];

  if (a1)
  {
    [v10 setHasThumbnail_];
    v17 = [objc_allocWithZone(type metadata accessor for StubAssetHandle()) init];
    v18 = [objc_opt_self() headlineThumbnailWithAssetHandle:v17 thumbnailSize:{1000.0, 1000.0}];

    [v10 setThumbnail_];
  }

  return v10;
}

uint64_t sub_1DAAA55BC(uint64_t a1)
{
  v1 = a1;
  v2 = arc4random_uniform(HIDWORD(a1));
  if (v2 <= v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = v2;
  }

  if (v3)
  {
    v14 = MEMORY[0x1E69E7CC0];
    sub_1DAA5859C(0, v3, 0);
    v4 = v14;
    do
    {
      v5 = sub_1DAA58424(0x800000003);
      v15 = v4;
      v8 = *(v4 + 16);
      v7 = *(v4 + 24);
      if (v8 >= v7 >> 1)
      {
        v10 = v5;
        v11 = v6;
        sub_1DAA5859C((v7 > 1), v8 + 1, 1);
        v6 = v11;
        v5 = v10;
        v4 = v15;
      }

      *(v4 + 16) = v8 + 1;
      v9 = v4 + 16 * v8;
      *(v9 + 32) = v5;
      *(v9 + 40) = v6;
      --v3;
    }

    while (v3);
  }

  sub_1DAA613E8();
  sub_1DAA587CC();
  v12 = sub_1DACB9214();

  return v12;
}

double sub_1DAAA5824()
{
  *&xmmword_1EE11EA28 = MEMORY[0x1E69E7CC0];
  result = 0.0;
  *(&xmmword_1EE11EA28 + 8) = 0u;
  *(&xmmword_1EE11EA38 + 8) = 0u;
  *(&xmmword_1EE11EA48 + 8) = 0u;
  *(&xmmword_1EE11EA58 + 8) = 0u;
  *(&xmmword_1EE11EA68 + 8) = 0u;
  *(&xmmword_1EE11EA78 + 1) = 0u;
  *(&xmmword_1EE11EA88 + 8) = 0u;
  *(&xmmword_1EE11EA98 + 8) = 0u;
  return result;
}

uint64_t sub_1DAAA58CC()
{
  sub_1DACB82E4();
  sub_1DACB71F4();
  sub_1DACB82D4();

  sub_1DAA61630(0, &qword_1EE11FDF0, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1DACB8AE4();
}

uint64_t sub_1DAAA5970()
{
  v62 = sub_1DACB7CC4();
  v1 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v61 = &v52 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for EarningsCalendarEventModel(0);
  v56 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v55 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA5D42C(0, &qword_1EE11D1A8, sub_1DAA62C68, MEMORY[0x1E69E6720]);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = (&v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v63 = (&v52 - v8);
  if (qword_1EE11DF88 != -1)
  {
    goto LABEL_30;
  }

  while (1)
  {
    v9 = qword_1EE13E268;
    v10 = sub_1DACB9914();
    v53 = v9;
    v54 = MEMORY[0x1E69E7CC0];
    sub_1DACB8C64("EarningsCalendarEventManager Attempting to prune stale events", 61, 2, &dword_1DAA3F000, v9, v10);
    swift_beginAccess();
    v52 = v0;
    v11 = *(v0 + 24);
    v12 = v11 + 64;
    v13 = 1 << *(v11 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v11 + 64);
    v16 = (v13 + 63) >> 6;
    v58 = (v1 + 8);
    v59 = (v1 + 16);
    v57 = v11;
    sub_1DACB71E4();
    v17 = 0;
LABEL_5:
    v18 = v17;
    if (v15)
    {
      break;
    }

LABEL_7:
    if (v16 <= v18 + 1)
    {
      v20 = v18 + 1;
    }

    else
    {
      v20 = v16;
    }

    v21 = v20 - 1;
    while (1)
    {
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v19 >= v16)
      {
        sub_1DAA62C68(0);
        v29 = v39;
        (*(*(v39 - 8) + 56))(v7, 1, 1, v39);
        v15 = 0;
        goto LABEL_15;
      }

      v15 = *(v12 + 8 * v19);
      ++v18;
      if (v15)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_30:
    swift_once();
  }

  while (1)
  {
    v19 = v18;
LABEL_14:
    v22 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    v23 = v22 | (v19 << 6);
    v24 = (*(v57 + 48) + 16 * v23);
    v25 = *v24;
    v26 = v24[1];
    v27 = v55;
    sub_1DABB2464(*(v57 + 56) + *(v56 + 72) * v23, v55, type metadata accessor for EarningsCalendarEventModel);
    sub_1DAA62C68(0);
    v29 = v28;
    v30 = *(v28 + 48);
    *v7 = v25;
    v7[1] = v26;
    sub_1DAA7C5C4(v27, v7 + v30, type metadata accessor for EarningsCalendarEventModel);
    (*(*(v29 - 8) + 56))(v7, 0, 1, v29);
    sub_1DACB71E4();
    v21 = v19;
LABEL_15:
    v31 = v63;
    sub_1DAAA60D8(v7, v63);
    sub_1DAA62C68(0);
    if ((*(*(v29 - 8) + 48))(v31, 1, v29) == 1)
    {
      break;
    }

    v32 = v21;
    v33 = v31;
    v35 = *v31;
    v34 = v31[1];
    v1 = v33 + *(v29 + 48);
    v0 = v61;
    v36 = v62;
    (*v59)(v61, v1 + *(v60 + 24), v62);
    sub_1DABB24CC(v1, type metadata accessor for EarningsCalendarEventModel);
    sub_1DACB7C34();
    v38 = v37;
    (*v58)(v0, v36);
    if (v38 < 0.0)
    {
      v17 = v32;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v40 = v54;
      }

      else
      {
        v40 = sub_1DAA9A3B0(0, *(v54 + 2) + 1, 1, v54);
      }

      v0 = *(v40 + 2);
      v41 = *(v40 + 3);
      v1 = v0 + 1;
      if (v0 >= v41 >> 1)
      {
        v40 = sub_1DAA9A3B0((v41 > 1), v0 + 1, 1, v40);
      }

      *(v40 + 2) = v1;
      v54 = v40;
      v42 = &v40[16 * v0];
      *(v42 + 4) = v35;
      *(v42 + 5) = v34;
      goto LABEL_5;
    }

    v18 = v32;
    if (!v15)
    {
      goto LABEL_7;
    }
  }

  v43 = v54;
  if (*(v54 + 2))
  {
    sub_1DAA41D64(0);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_1DACC1D20;
    v64 = v43;
    v45 = MEMORY[0x1E69E6158];
    sub_1DAA61630(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1DAA587CC();
    sub_1DACB71E4();
    v46 = sub_1DACB9214();
    v48 = v47;
    *(v44 + 56) = v45;
    *(v44 + 64) = sub_1DAA443C8();
    *(v44 + 32) = v46;
    *(v44 + 40) = v48;
    v49 = sub_1DACB9914();
    sub_1DACB8C64("EarningsCalendarEventManager will prune stale events for symbols=%{public}@", 75, 2, &dword_1DAA3F000, v53, v49, v44, v52);

    sub_1DABB1988(v43);
  }

  else
  {

    v51 = sub_1DACB9914();
    return sub_1DACB8C64("EarningsCalendarEventManager has no events to prune", 51, 2, &dword_1DAA3F000, v53, v51, MEMORY[0x1E69E7CC0], v52);
  }
}

uint64_t sub_1DAAA6004()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_1DACB9324();
  }

  sub_1DAA41DCC();
  result = sub_1DACB9AE4();
  qword_1EE13E268 = result;
  return result;
}

uint64_t sub_1DAAA60D8(uint64_t a1, uint64_t a2)
{
  sub_1DAA5D42C(0, &qword_1EE11D1A8, sub_1DAA62C68, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAAA61B4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DACB9324();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DAAA61E0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DAAA6260()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DAAA62A0()
{
  v1 = (type metadata accessor for ForYouConfigRecord(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v0 + v3 + v1[7];

  v6 = *(type metadata accessor for ForYouConfigRecord.Configuration.TopStories(0) + 20);
  v7 = sub_1DACB7CC4();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1DAAA63D0()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DAAA6410()
{
  v1 = sub_1DACB7F54();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1DAAA6498()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DAAA64D0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DACB6FD4();
  *a1 = result;
  return result;
}

void *sub_1DAAA64FC@<X0>(void *a1@<X8>)
{
  result = sub_1DACB6FB4();
  *a1 = v3;
  return result;
}

uint64_t sub_1DAAA65B0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DAAA6684()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DAAA66C4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DAAA66FC()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DAAA6734()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DAAA6788(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1DACB7CC4();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for RawAttributionSource(0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1DAAA68AC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_1DACB7CC4();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for RawAttributionSource(0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1DAAA69FC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DACB6FD4();
  *a1 = result;
  return result;
}

double sub_1DAAA6A28@<D0>(uint64_t a1@<X8>)
{
  sub_1DACB6FB4();
  *a1 = v3;
  result = *&v4;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_1DAAA6B0C()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DAAA6B4C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DAAA6BA0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DAAA6BD8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DACB6EF4();
  *a1 = result;
  return result;
}

uint64_t sub_1DAAA6C04()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DAAA6C40()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DAAA6C78()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

double sub_1DAAA6CB8@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_1DACC57A0;
  return result;
}

void sub_1DAAA6CDC()
{
  if (MEMORY[0x1E69E7D58])
  {
    sub_1DAB0FE6C(0, &qword_1ECBE6F80, sub_1DAB0FE38, MEMORY[0x1E69E8300]);
  }
}

uint64_t sub_1DAAA6D48()
{
  if (*(v0 + 24))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 144, 7);
}

uint64_t sub_1DAAA6DBC()
{

  if (*(v0 + 72))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 144, 7);
}

uint64_t sub_1DAAA6E30()
{

  return MEMORY[0x1EEE6BDD0](v0, 128, 7);
}

uint64_t sub_1DAAA6E98()
{

  if (*(v0 + 160))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 368, 7);
}

uint64_t sub_1DAAA6F74()
{

  if (*(v0 + 208))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 368, 7);
}

uint64_t sub_1DAAA7054()
{

  return MEMORY[0x1EEE6BDD0](v0, 240, 7);
}

uint64_t sub_1DAAA70F4()
{

  return MEMORY[0x1EEE6BDD0](v0, 232, 7);
}

uint64_t sub_1DAAA718C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DAAA71C4()
{

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

uint64_t sub_1DAAA7224()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DAAA725C()
{

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

uint64_t sub_1DAAA72CC()
{

  return MEMORY[0x1EEE6BDD0](v0, 112, 7);
}

uint64_t sub_1DAAA732C()
{

  return MEMORY[0x1EEE6BDD0](v0, 106, 7);
}

uint64_t sub_1DAAA73F0()
{

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1DAAA74A0()
{

  if (*(v0 + 160))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 320, 7);
}

uint64_t sub_1DAAA7568()
{

  return MEMORY[0x1EEE6BDD0](v0, 192, 7);
}

uint64_t sub_1DAAA75F0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DAAA76CC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DAAA7704()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1DAAA774C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DAAA7784()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DAAA780C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DACB7CC4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1DAAA7878(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DACB7CC4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1DAAA78F4()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DAAA793C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DACB6FD4();
  *a1 = result;
  return result;
}

uint64_t sub_1DAAA7968@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DACB6FD4();
  *a1 = result;
  return result;
}

double sub_1DAAA79BC@<D0>(uint64_t a1@<X8>)
{
  sub_1DACB6FB4();
  *a1 = v3;
  result = *&v4;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_1DAAA7A80()
{

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DAAA7AC8()
{

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_1DAAA7B4C()
{
  swift_unknownObjectUnownedDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DAAA7B84()
{
  if (*(v0 + 24))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DAAA7BD4()
{
  if (*(v0 + 24))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DAAA7C1C()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DAAA7C5C()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DAAA7CB4()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DAAA7CEC()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DAAA7D2C()
{
  v1 = 1802658148;
  if (*v0 != 1)
  {
    v1 = 0x6574616C706D6574;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746867696CLL;
  }
}

uint64_t sub_1DAAA7D7C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DAB4C41C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DAAA7E80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_1DAAA7F38(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DAAA7FE8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DAAA8030()
{
  v1 = sub_1DACB7CC4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64) + v4;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 1, v3 | 7);
}

uint64_t sub_1DAAA80BC()
{

  return MEMORY[0x1EEE6BDD0](v0, 33, 7);
}

uint64_t sub_1DAAA8108()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DAAA8148()
{
  v1 = (type metadata accessor for NewsFeedRequest(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[8];
  v6 = sub_1DACB7CC4();
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v3 + v5, v6);
  v7(v0 + v3 + v1[9], v6);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1DAAA82A8()
{

  return MEMORY[0x1EEE6BDD0](v0, 81, 7);
}

uint64_t sub_1DAAA832C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DAAA8364(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1DACB7CC4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1DAAA8410(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1DACB7CC4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DAAA84B4()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DAAA84EC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DAAA852C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DAAA8564()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DAAA85A4()
{

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1DAAA85F4()
{
  v1 = *(v0 + 64);
  if (v1 <= 2)
  {
    if (*(v0 + 64))
    {
      if (v1 == 1)
      {
        swift_unknownObjectRelease();
      }

      else if (v1 == 2)
      {
        __swift_destroy_boxed_opaque_existential_1((v0 + 16));
      }
    }

    else
    {
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_1((v0 + 24));
    }
  }

  else
  {
    if (*(v0 + 64) <= 6u)
    {
      if (v1 != 3 && v1 != 6)
      {
        goto LABEL_13;
      }

LABEL_12:

      goto LABEL_13;
    }

    if (v1 == 7 || v1 == 8)
    {
      goto LABEL_12;
    }
  }

LABEL_13:

  return MEMORY[0x1EEE6BDD0](v0, 65, 7);
}

uint64_t sub_1DAAA86AC()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DAAA86E4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

void *sub_1DAAA871C@<X0>(void *a2@<X8>)
{
  result = sub_1DACB6ED4();
  *a2 = v4;
  a2[1] = v5;
  return result;
}

void *sub_1DAAA8794@<X0>(void *a2@<X8>)
{
  result = sub_1DACB6ED4();
  *a2 = v4;
  a2[1] = v5;
  return result;
}

void *sub_1DAAA880C@<X0>(void *a2@<X8>)
{
  result = sub_1DACB6ED4();
  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_1DAAA88CC()
{
  if (*(v0 + 24) >= 2uLL)
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 152, 7);
}

uint64_t sub_1DAAA8944()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DAAA897C()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DAAA89C4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DACB6EF4();
  *a1 = result;
  return result;
}

uint64_t sub_1DAAA89F0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DACB6EF4();
  *a1 = result;
  return result;
}

uint64_t sub_1DAAA8A1C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DACB6EF4();
  *a1 = result;
  return result;
}

uint64_t sub_1DAAA8A48()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DAAA8A94()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DAAA8AD4()
{
  v1 = sub_1DACB81A4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1DAAA8B9C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

double sub_1DAAA8C34@<D0>(_OWORD *a1@<X8>)
{
  sub_1DACB6FB4();
  *a1 = v3;
  a1[1] = v4;
  result = *&v5;
  a1[2] = v5;
  a1[3] = v6;
  return result;
}

void *sub_1DAAA8C7C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DACB6FB4();
  *a1 = v3;
  return result;
}

uint64_t sub_1DAAA8D4C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DACB6FD4();
  *a1 = result;
  return result;
}

uint64_t sub_1DAAA8D78@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DACB6FD4();
  *a1 = result;
  return result;
}

void *sub_1DAAA8DA8@<X0>(void *a2@<X8>)
{
  result = sub_1DACB6ED4();
  *a2 = v4;
  a2[1] = v5;
  return result;
}

void *sub_1DAAA8DE8@<X0>(void *a2@<X8>)
{
  result = sub_1DACB6ED4();
  *a2 = v4;
  a2[1] = v5;
  return result;
}

double sub_1DAAA8E2C@<D0>(_OWORD *a1@<X8>)
{
  sub_1DACB6FB4();
  result = *&v3;
  *a1 = v3;
  return result;
}

void *sub_1DAAA8E6C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DACB6FB4();
  *a1 = v3;
  return result;
}

void *sub_1DAAA8EAC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DACB6FB4();
  *a1 = v3;
  return result;
}

void *sub_1DAAA8EEC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DACB6FB4();
  *a1 = v3;
  return result;
}

uint64_t sub_1DAAA8FBC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DACB6FD4();
  *a1 = result;
  return result;
}

uint64_t sub_1DAAA8FE8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DACB6FD4();
  *a1 = result;
  return result;
}

uint64_t sub_1DAAA9014@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DACB6FD4();
  *a1 = result;
  return result;
}

uint64_t sub_1DAAA9040@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DACB6FD4();
  *a1 = result;
  return result;
}

void *sub_1DAAA9078@<X0>(void *a2@<X8>)
{
  result = sub_1DACB6ED4();
  *a2 = v4;
  a2[1] = v5;
  return result;
}

void *sub_1DAAA90B8@<X0>(void *a2@<X8>)
{
  result = sub_1DACB6ED4();
  *a2 = v4;
  a2[1] = v5;
  return result;
}

void *sub_1DAAA90F8@<X0>(void *a2@<X8>)
{
  result = sub_1DACB6ED4();
  *a2 = v4;
  a2[1] = v5;
  return result;
}

void *sub_1DAAA9138@<X0>(void *a2@<X8>)
{
  result = sub_1DACB6ED4();
  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_1DAAA9224(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1DACB7CC4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1DAAA92D0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1DACB7CC4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DAAA9384()
{

  return MEMORY[0x1EEE6BDD0](v0, 160, 7);
}

uint64_t sub_1DAAA93FC()
{
  v1 = (type metadata accessor for EarningsCalendarEventModel(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 160) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[8];
  v6 = sub_1DACB7CC4();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1DAAA9534()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

void sub_1DAAA9574()
{
  if (MEMORY[0x1E69E7D58])
  {
    sub_1DABB2914();
  }
}

void sub_1DAAA95B0()
{
  if (MEMORY[0x1E69E7D58])
  {
    sub_1DABB2998(0, &qword_1ECBE8580, sub_1DABB2964, MEMORY[0x1E69E8300]);
  }
}

uint64_t sub_1DAAA961C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1DAAA965C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DAAA9694()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DAAA96D4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DACB6FD4();
  *a1 = result;
  return result;
}

void *sub_1DAAA9700@<X0>(void *a1@<X8>)
{
  result = sub_1DACB6FB4();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

void *sub_1DAAA9740@<X0>(void *a1@<X8>)
{
  result = sub_1DACB6FB4();
  *a1 = v3;
  return result;
}

uint64_t sub_1DAAA983C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DACB6FD4();
  *a1 = result;
  return result;
}

uint64_t sub_1DAAA9868(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DACB7CC4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1DACB7AB4();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1DAAA9978(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1DACB7CC4();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_1DACB7AB4();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1DAAA9A84@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DACB6FD4();
  *a1 = result;
  return result;
}

uint64_t sub_1DAAA9B6C()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DAAA9BAC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DAAA9BE4()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DAAA9C24()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_1DACB8204();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x1EEE6BDD0](v0, v11 + 9, v10 | 7);
}

uint64_t sub_1DAAA9D78()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DAAA9DB8()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_1DACB8204();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x1EEE6BDD0](v0, v11 + 9, v10 | 7);
}

uint64_t sub_1DAAA9F64()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DAAA9F9C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DAAA9FD4()
{

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1DAAAA038()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DAAAA070(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 56);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    sub_1DAA492B4(0);
    v10 = v9;
    v11 = *(*(v9 - 8) + 48);
    v12 = a1 + *(a3 + 36);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1DAAAA128(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 56) = a2;
  }

  else
  {
    sub_1DAA492B4(0);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 36);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1DAAAA1EC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DACB6FD4();
  *a1 = result;
  return result;
}

uint64_t sub_1DAAAA218@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DACB6FD4();
  *a1 = result;
  return result;
}

double sub_1DAAAA26C@<D0>(uint64_t a1@<X8>)
{
  sub_1DACB6FB4();
  *a1 = v3;
  result = *&v4;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_1DAAAA308()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DAAAA344()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DAAAA384()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1DAAAA3E4()
{

  return MEMORY[0x1EEE6BDD0](v0, 169, 7);
}

uint64_t sub_1DAAAA45C()
{

  return MEMORY[0x1EEE6BDD0](v0, 208, 7);
}

uint64_t sub_1DAAAA504()
{

  return MEMORY[0x1EEE6BDD0](v0, 152, 7);
}

uint64_t sub_1DAAAA574()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DAAAA5BC()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DAAAA62C()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1DAAAA67C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DAAAA6B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DACB7AB4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_1DACB7CC4();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 32);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1DAAAA7DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1DACB7AB4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = sub_1DACB7CC4();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 32);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1DAAAA908()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1DAAAA958()
{
  sub_1DABF43C4(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t get_enum_tag_for_layout_string_10StocksCore24YahooQuoteDetailResponseV5ValueVy_SuGSg_0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1DAAAAAC8()
{
  if (*v0)
  {
    return 0x6465736F707865;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_1DAAAAAFC()
{

  sub_1DAC040B8(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128));

  return MEMORY[0x1EEE6BDD0](v0, 176, 7);
}

uint64_t sub_1DAAAAB80()
{
  sub_1DAC040B8(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120));

  return MEMORY[0x1EEE6BDD0](v0, 168, 7);
}

uint64_t sub_1DAAAABEC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DAAAAC28()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DAAAAC70()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

void *sub_1DAAAAEE8@<X0>(uint64_t a2@<X8>)
{
  result = sub_1DACB6ED4();
  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

void *sub_1DAAAAF30@<X0>(uint64_t a2@<X8>)
{
  result = sub_1DACB6ED4();
  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

void *sub_1DAAAAF78@<X0>(uint64_t a2@<X8>)
{
  result = sub_1DACB6ED4();
  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

void *sub_1DAAAAFC0@<X0>(uint64_t a2@<X8>)
{
  result = sub_1DACB6ED4();
  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

void *sub_1DAAAB008@<X0>(uint64_t a2@<X8>)
{
  result = sub_1DACB6ED4();
  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

double sub_1DAAAB0A0@<D0>(_OWORD *a2@<X8>)
{
  sub_1DACB6ED4();
  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1DAAAB0E0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DACB79C4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DAAAB11C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DAAAB154()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DAAAB18C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DAAAB1C4()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DAAAB218()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1DAAAB254()
{
  v1 = sub_1DACB7AB4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1DAAAB2DC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DAAAB314()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DAAAB34C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DAAAB384()
{
  MEMORY[0x1E1278D10](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DAAAB3BC()
{

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1DAAAB41C()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1DAAAB47C()
{

  return MEMORY[0x1EEE6BDD0](v0, 160, 7);
}

uint64_t sub_1DAAAB4F4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DAAAB530()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DAAAB568()
{
  MEMORY[0x1E1278D10](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DAAAB5A0()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DAAAB5E0()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1DAAAB630()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DAAAB668(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DAA49A8C(0, &qword_1EE125280, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 48) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

void sub_1DAAAB764(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1DAA49A8C(0, &qword_1EE125280, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 48) + 8) = a2;
  }
}

uint64_t sub_1DAAAB850()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DAAAB888()
{
  MEMORY[0x1E1278D10](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DAAAB8C0()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

BOOL sub_1DAAABA10(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_1DAC3C194(v5, v7);
}

uint64_t sub_1DAAABA74@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DACB6FD4();
  *a1 = result;
  return result;
}

uint64_t sub_1DAAABB3C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1DACB7CC4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1DAAABBE8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1DACB7CC4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DAAABC8C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DAAABCC4()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DAAABD04()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DAAABD40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for ForYouConfigRecord.Configuration(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1DAAABDEC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for ForYouConfigRecord.Configuration(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DAAABE90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ForYouConfigRecord.Configuration.TopStories(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1DAAABEFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ForYouConfigRecord.Configuration.TopStories(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1DAAABF6C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1DACB7CC4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1DAAAC018(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1DACB7CC4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DAAAC0BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_1DAC4E944(0, &qword_1EE125280, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1DAAAC19C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_1DAC4E944(0, &qword_1EE125280, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1DAAAC270()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DAAAC2AC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DACB6EF4();
  *a1 = result;
  return result;
}

uint64_t sub_1DAAAC2D8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DACB6EF4();
  *a1 = result;
  return result;
}

uint64_t sub_1DAAAC304@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DACB6EF4();
  *a1 = result;
  return result;
}

uint64_t sub_1DAAAC340()
{

  return MEMORY[0x1EEE6BDD0](v0, 152, 7);
}

uint64_t sub_1DAAAC3B8()
{
  v1 = sub_1DACB7CC4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 57) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_1DACB8204();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x1EEE6BDD0](v0, v11 + 16, v10 | 7);
}

uint64_t sub_1DAAAC530()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1DAAAC578()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DAAAC5B0()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DAAAC5F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DACB7AB4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1DAAAC6B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1DACB7AB4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1DAAAC778()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DAAAC7B0()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DAAAC7F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1DACB87B4();
  v6 = *(*(v5 - 8) + 48);

  return v6(a1, a2, v5);
}

uint64_t sub_1DAAAC860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1DACB87B4();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a2, v6);
}

uint64_t sub_1DAAAC8D4()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DAAAC90C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DAAAC944()
{
  MEMORY[0x1E1278D10](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DAAAC97C()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DAAAC9B4()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1DAAACA00()
{
  v1 = sub_1DACB7CC4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_1DACB8204();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x1EEE6BDD0](v0, v9 + v10, v11 | 7);
}

uint64_t sub_1DAAACB5C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DAAACB94()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DAAACBE0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DAAACC20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_1DAA5311C(0, &qword_1EE1263D0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1DAAACD00(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_1DAA5311C(0, &qword_1EE1263D0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1DAAAD030()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DAAAD068(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_1DAA4691C(0, &qword_1EE11FF70, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 68);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1DAAAD148(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_1DAA4691C(0, &qword_1EE11FF70, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 68);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1DAAAD21C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DAAAD25C()
{

  return MEMORY[0x1EEE6BDD0](v0, 90, 7);
}

uint64_t sub_1DAAAD2B4()
{

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1DAAAD304()
{

  return MEMORY[0x1EEE6BDD0](v0, 66, 7);
}

uint64_t sub_1DAAAD354()
{

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1DAAAD3A4()
{

  if (*(v0 + 160))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 330, 7);
}

uint64_t sub_1DAAAD470()
{

  if (*(v0 + 208))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 336, 7);
}

uint64_t sub_1DAAAD548()
{

  if (*(v0 + 72))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 106, 7);
}

uint64_t sub_1DAAAD5AC()
{
  if (*(v0 + 24))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 58, 7);
}

uint64_t sub_1DAAAD5F8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DAAAD638()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DAAAD670()
{

  return MEMORY[0x1EEE6BDD0](v0, 106, 7);
}

uint64_t sub_1DAAAD6D8()
{

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1DAAAD738()
{

  return MEMORY[0x1EEE6BDD0](v0, 114, 7);
}

uint64_t sub_1DAAAD820(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_1DAA53180(0, &qword_1EE1263D0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 72);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1DAAAD900(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    sub_1DAA53180(0, &qword_1EE1263D0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 72);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1DAAAD9D4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DAAADA0C()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1DAAADA68()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DAAADAA0()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DAAADAE0()
{
  v1 = type metadata accessor for RawAttributionSourceLogo.Unresolved(0);
  v17 = *(*(v1 - 8) + 80);
  v15 = *(*(v1 - 8) + 64);
  v18 = sub_1DACB8204();
  v2 = *(v18 - 8);
  v3 = *(v2 + 80);
  v14 = *(v2 + 64);

  v19 = v0;
  v16 = (v17 + 24) & ~v17;
  v4 = v0 + v16;
  v5 = sub_1DACB7AB4();
  v6 = (*(v5 - 8) + 8);
  v13 = *v6;
  (*v6)(v0 + v16, v5);
  v7 = *(v1 + 20);
  v8 = type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant(0);
  v9 = *(*(v8 - 8) + 48);
  if (!v9(v0 + v16 + v7, 1, v8))
  {
    v13(v4 + v7, v5);
  }

  v10 = *(v1 + 24);
  if (!v9(v4 + v10, 1, v8))
  {
    v13(v4 + v10, v5);
  }

  v11 = (((v15 + v16 + 7) & 0xFFFFFFFFFFFFFFF8) + v3 + 8) & ~v3;
  (*(v2 + 8))(v19 + v11, v18);

  return MEMORY[0x1EEE6BDD0](v19, v11 + v14, v17 | v3 | 7);
}

uint64_t sub_1DAAADD2C()
{
  v1 = sub_1DACB7AB4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_1DACB8204();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x1EEE6BDD0](v0, v9 + v10, v11 | 7);
}

uint64_t sub_1DAAADE8C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DAAADECC()
{
  v1 = sub_1DACB7AB4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_1DACB8204();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + v8 + 8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  (*(v2 + 8))(v0 + v4, v1);
  __swift_destroy_boxed_opaque_existential_1((v0 + v5));
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x1EEE6BDD0](v0, v9 + v10, v11 | 7);
}

void sub_1DAAB4874(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_1DAAB5BC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DAAB6FBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, ...)
{
  va_start(va, a27);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DAABB9B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, ...)
{
  va_start(va, a38);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v38 - 208), 8);
  _Block_object_dispose((v38 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_1DAABC7B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_1_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void sub_1DAACBDCC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v1 + 40));
  _Unwind_Resume(a1);
}

__CFString *OAuthURLEncodedString(CFStringRef originalString)
{
  v1 = CFURLCreateStringByAddingPercentEscapes(*MEMORY[0x1E695E480], originalString, 0, @":/?#[]@!$&’()*+,;='", 0x8000100u);

  return v1;
}

id ParameterString(void *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = [v1 allKeys];
  v3 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v17;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v16 + 1) + 8 * i);
        v8 = MEMORY[0x1E696AEC0];
        v9 = [v1 objectForKeyedSubscript:v7];
        v10 = OAuthURLEncodedString(v9);
        v11 = [v8 stringWithFormat:@"%@=%@", v7, v10];
        [v2 addObject:v11];
      }

      v4 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v4);
  }

  v12 = [v2 sortedArrayUsingSelector:sel_compare_];
  v13 = [v12 componentsJoinedByString:@"&"];

  return v13;
}

id ProductVersion(uint64_t a1)
{
  if (ProductVersion_onceToken != -1)
  {
    ProductVersion_cold_1();
  }

  v2 = ProductVersion_ProductVersion;

  return v2;
}

void __ProductVersion_block_invoke()
{
  v3 = [objc_alloc(MEMORY[0x1E695DF20]) initWithContentsOfFile:@"/System/Library/CoreServices/SystemVersion.plist"];
  v0 = [v3 objectForKey:@"ProductVersion"];
  v1 = [v0 copy];
  v2 = ProductVersion_ProductVersion;
  ProductVersion_ProductVersion = v1;
}

id ClientInfo(uint64_t a1)
{
  if (ClientInfo_onceToken != -1)
  {
    ClientInfo_cold_1();
  }

  v2 = ClientInfo_ClientInfo;

  return v2;
}

void __ClientInfo_block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E696AEC0];
  v4 = ProductVersion(a1);
  v2 = [v1 stringWithFormat:@"vendor=Apple model=Stocks; version=1.0.0.%@", v4];;
  v3 = ClientInfo_ClientInfo;
  ClientInfo_ClientInfo = v2;
}

id DeviceInfo(uint64_t a1)
{
  if (DeviceInfo_onceToken != -1)
  {
    DeviceInfo_cold_1();
  }

  v2 = DeviceInfo_DeviceInfo;

  return v2;
}

void __DeviceInfo_block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E696AEC0];
  v4 = ProductVersion(a1);
  v2 = [v1 stringWithFormat:@"make=Apple model=iPhone; os=iPhone; osver=%@", v4];;
  v3 = DeviceInfo_DeviceInfo;
  DeviceInfo_DeviceInfo = v2;
}

id _ConsumerSecret(uint64_t a1)
{
  if (_ConsumerSecret_onceToken != -1)
  {
    _ConsumerSecret_cold_1();
  }

  v2 = _ConsumerSecret_ConsumerSecretString;

  return v2;
}

id CreateCredential()
{
  v0 = objc_alloc_init(MEMORY[0x1E69B7B60]);
  v1 = _ConsumerSecret([v0 setConsumerKey:@"dj0yJmk9cU51ZlhUZ2ZneDBJJmQ9WVdrOU1rOVVlWE5vTkhNbWNHbzlNQS0tJnM9Y29uc3VtZXJzZWNyZXQmeD1hNw--"]);
  [v0 setConsumerSecret:v1];

  v2 = [v0 consumerKey];
  if (!v2)
  {
    CreateCredential_cold_2();
  }

  v3 = [v0 consumerSecret];
  if (!v3)
  {
    CreateCredential_cold_1();
  }

  return v0;
}

void *StocksLogForCategory(uint64_t a1)
{
  if (StocksLogForCategory_onceToken != -1)
  {
    StocksLogForCategory_cold_1();
  }

  v2 = StocksLogForCategory_loggingTypes;
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a1];
  v4 = [v2 objectForKey:v3];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = MEMORY[0x1E69E9C10];
  }

  v7 = v6;

  return v6;
}

void __StocksLogForCategory_block_invoke()
{
  v7 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:5];
  v0 = os_log_create("com.apple.stocks", "serviceLogging");
  [v7 scw_safelySetObjectAllowingNil:v0 forKey:&unk_1F56A9308];

  v1 = os_log_create("com.apple.stocks", "syncLogging");
  [v7 scw_safelySetObjectAllowingNil:v1 forKey:&unk_1F56A9320];

  v2 = os_log_create("com.apple.stocks", "duetLogging");
  [v7 scw_safelySetObjectAllowingNil:v2 forKey:&unk_1F56A9338];

  v3 = os_log_create("com.apple.stocks", "widgetLogging");
  [v7 scw_safelySetObjectAllowingNil:v3 forKey:&unk_1F56A9350];

  v4 = os_log_create("com.apple.stocks", "watchlistLogging");
  [v7 scw_safelySetObjectAllowingNil:v4 forKey:&unk_1F56A9368];

  v5 = [v7 copy];
  v6 = StocksLogForCategory_loggingTypes;
  StocksLogForCategory_loggingTypes = v5;
}

void *char_from_uchar(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (!ucnv_open())
  {
    return 0;
  }

  MaxCharSize = ucnv_getMaxCharSize();
  v4 = malloc_type_malloc((v2 + 10) * MaxCharSize, 0x100004077774924uLL);
  if (v4)
  {
    ucnv_fromUChars();
    ucnv_close();
  }

  return v4;
}

void *formattedCountWithLocale(uint64_t a1, uint64_t a2, int a3, int a4)
{
  unum_open();
  unum_setAttribute();
  if (a4)
  {
    unum_setAttribute();
  }

  else
  {
    unum_setAttribute();
    if (a3)
    {
      goto LABEL_5;
    }
  }

  unum_setAttribute();
LABEL_5:
  unum_formatInt64();
  v6 = char_from_uchar(0, 0);
  free(0);
  unum_close();
  return v6;
}

void OUTLINED_FUNCTION_3(void *a1, NSObject *a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0x26u);
}

void *sub_1DAAD1E24()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 14);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_1DAAD1E64()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 14);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1DAAD1EBC()
{
  v1 = v0;
  sub_1DAA41DCC();
  v2 = sub_1DACB9AD4();
  v3 = sub_1DACB9914();
  sub_1DACB8C64("Top Stories service will fetch For You Config record", 52, 2, &dword_1DAA3F000, v2, v3, MEMORY[0x1E69E7CC0]);

  type metadata accessor for ForYouConfigRecord(0);
  sub_1DACB8BB4();
  sub_1DACB71F4();
  v4 = sub_1DACB89D4();
  sub_1DAAD4674(0);
  sub_1DACB8A54();

  v5 = swift_allocObject();
  *(v5 + 16) = sub_1DAAD4708;
  *(v5 + 24) = v1;
  sub_1DACB71F4();
  v6 = sub_1DACB89D4();
  sub_1DAA48854(0, &qword_1EE11FAA0, &type metadata for Headline, MEMORY[0x1E69E62F8]);
  sub_1DACB8A64();

  sub_1DACB71F4();
  v7 = sub_1DACB89D4();
  sub_1DACB8A54();

  v8 = sub_1DACB89D4();
  sub_1DACB8A64();

  v9 = sub_1DACB89D4();
  v10 = sub_1DACB8AA4();

  return v10;
}

uint64_t sub_1DAAD2120(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ForYouConfigRecord(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1DAA41D64(0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1DACC1D20;
  v19 = 0;
  v20 = 0xE000000000000000;
  sub_1DACB9DD4();
  *(v7 + 56) = MEMORY[0x1E69E6158];
  *(v7 + 64) = sub_1DAA443C8();
  *(v7 + 32) = 0;
  *(v7 + 40) = 0xE000000000000000;
  sub_1DAA41DCC();
  v8 = sub_1DACB9AD4();
  v9 = sub_1DACB9914();
  sub_1DACB8C64("Top Stories service did fetch For You Config record: %{public}@", 63, 2, &dword_1DAA3F000, v8, v9, v7);

  v17 = a2;
  v18 = a1;
  sub_1DAAD4E00(0);
  sub_1DACB8BB4();
  v10 = sub_1DACB89D4();
  sub_1DAA48854(0, &qword_1EE11FAA0, &type metadata for Headline, MEMORY[0x1E69E62F8]);
  sub_1DACB8A64();

  sub_1DAA89A58(a1, &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for ForYouConfigRecord);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  sub_1DAAD4E90(&v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v12 + v11);
  v13 = sub_1DACB89D4();
  sub_1DAAD4674(0);
  v14 = sub_1DACB8A64();

  return v14;
}

uint64_t sub_1DAAD23DC(uint64_t a1, unint64_t a2)
{
  sub_1DAA41D64(0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1DACC1D20;
  v5 = sub_1DACBA114();
  v7 = v6;
  *(v4 + 56) = MEMORY[0x1E69E6158];
  *(v4 + 64) = sub_1DAA443C8();
  *(v4 + 32) = v5;
  *(v4 + 40) = v7;
  sub_1DAA41DCC();
  v8 = sub_1DACB9AD4();
  v9 = sub_1DACB9914();
  sub_1DACB8C64("Top Stories service will apply metadata to %{public}@ headlines", 63, 2, &dword_1DAA3F000, v8, v9, v4);

  return sub_1DAAD24DC(a1, a2);
}

uint64_t sub_1DAAD24DC(uint64_t a1, unint64_t a2)
{
  v3 = a2;
  v4 = *(a2 + 16);
  v77 = v4;
  if (v4)
  {
    *&v84[0] = MEMORY[0x1E69E7CC0];
    v5 = v4;
    sub_1DACB9D64();
    v6 = v3;
    v7 = (v3 + 32);
    for (i = v5 - 1; ; --i)
    {
      v9 = v7[5];
      v10 = v7[7];
      v101 = v7[6];
      v102 = v10;
      v11 = v7[1];
      v12 = v7[3];
      v97 = v7[2];
      v98 = v12;
      v13 = v7[3];
      v14 = v7[5];
      v99 = v7[4];
      v100 = v14;
      v15 = v7[1];
      v95 = *v7;
      v96 = v15;
      v109 = v9;
      v110 = v101;
      v16 = v7[8];
      v111 = v7[7];
      v112 = v16;
      v105 = v11;
      v106 = v97;
      v107 = v13;
      v108 = v99;
      v103 = v16;
      v104 = v95;
      if (sub_1DAA9B6F0(&v104) == 1)
      {
        sub_1DAA9B6E0(&v104);
        v88 = v97;
        v89 = v98;
        v86 = v95;
        v87 = v96;
        v93 = v102;
        v94 = v103;
        v91 = v100;
        v92 = v101;
        v90 = v99;
        sub_1DAA9B6E0(&v86);
      }

      else
      {
        sub_1DAA9B6E0(&v104);
      }

      swift_unknownObjectRetain();
      sub_1DACB9D34();
      sub_1DACB9D74();
      sub_1DACB9D84();
      sub_1DACB9D44();
      if (!i)
      {
        break;
      }

      v7 += 9;
    }

    v3 = v6;
  }

  [*(v2 + 152) configuration];
  sub_1DAA485B8(0, &qword_1EE11F880, &protocolRef_FCHeadlineProviding);
  v17 = sub_1DACB9634();
  sub_1DAAD3104();
  sub_1DAA485B8(0, &qword_1EE11D0A8, &protocolRef_FCHeadlineMetadata);
  v18 = sub_1DACB9114();

  v19 = FCAssignHeadlineMetadata();

  if (v19)
  {

    v20 = sub_1DACB9644();

    if (v20 >> 62)
    {
      goto LABEL_36;
    }

    v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    for (j = v3; v21; j = v3)
    {
      v3 = 0;
      v79 = v20 & 0xFFFFFFFFFFFFFF8;
      v80 = v20 & 0xC000000000000001;
      v22 = MEMORY[0x1E69E7CC8];
      v78 = v20;
      while (v80)
      {
        v23 = MEMORY[0x1E12777A0](v3, v20);
        v24 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          goto LABEL_32;
        }

LABEL_18:
        v81 = v24;
        v25 = [v23 identifier];
        v20 = sub_1DACB9324();
        v27 = v26;

        swift_unknownObjectRetain();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v104 = v22;
        v30 = sub_1DAA4BF3C(v20, v27);
        v31 = v22;
        v32 = v22[2];
        v33 = (v29 & 1) == 0;
        v34 = v32 + v33;
        if (__OFADD__(v32, v33))
        {
          goto LABEL_34;
        }

        v35 = v29;
        if (v31[3] >= v34)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            if (v29)
            {
              goto LABEL_13;
            }
          }

          else
          {
            sub_1DAB65174();
            if (v35)
            {
              goto LABEL_13;
            }
          }
        }

        else
        {
          sub_1DAB60384(v34, isUniquelyReferenced_nonNull_native);
          v36 = sub_1DAA4BF3C(v20, v27);
          if ((v35 & 1) != (v37 & 1))
          {
            goto LABEL_59;
          }

          v30 = v36;
          if (v35)
          {
LABEL_13:

            v22 = v104;
            *(*(v104 + 56) + 8 * v30) = v23;
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            goto LABEL_14;
          }
        }

        v22 = v104;
        *(v104 + 8 * (v30 >> 6) + 64) |= 1 << v30;
        v38 = (v22[6] + 16 * v30);
        *v38 = v20;
        v38[1] = v27;
        *(v22[7] + 8 * v30) = v23;
        swift_unknownObjectRelease();
        v39 = v22[2];
        v40 = __OFADD__(v39, 1);
        v41 = v39 + 1;
        if (v40)
        {
          goto LABEL_35;
        }

        v22[2] = v41;
LABEL_14:
        ++v3;
        v20 = v78;
        if (v81 == v21)
        {
          goto LABEL_38;
        }
      }

      if (v3 >= *(v79 + 16))
      {
        goto LABEL_33;
      }

      v23 = *(v20 + 8 * v3 + 32);
      swift_unknownObjectRetain();
      v24 = v3 + 1;
      if (!__OFADD__(v3, 1))
      {
        goto LABEL_18;
      }

LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      v21 = sub_1DACB9E14();
    }

    v22 = MEMORY[0x1E69E7CC8];
LABEL_38:

    if (v77)
    {
      v42 = v22;
      v85 = MEMORY[0x1E69E7CC0];
      sub_1DAAA50F8(0, v77, 0);
      v43 = v85;
      v44 = (j + 32);
      for (k = v77 - 1; ; --k)
      {
        v46 = v44[5];
        v47 = v44[7];
        v101 = v44[6];
        v102 = v47;
        v48 = v44[1];
        v49 = v44[3];
        v97 = v44[2];
        v98 = v49;
        v50 = v44[3];
        v51 = v44[5];
        v99 = v44[4];
        v100 = v51;
        v52 = v44[1];
        v95 = *v44;
        v96 = v52;
        v109 = v46;
        v110 = v101;
        v53 = v44[8];
        v111 = v44[7];
        v112 = v53;
        v105 = v48;
        v106 = v97;
        v107 = v50;
        v108 = v99;
        v103 = v53;
        v104 = v95;
        if (sub_1DAA9B6F0(&v104) == 1)
        {
          v54 = *sub_1DAA9B6E0(&v104);
          v88 = v97;
          v89 = v98;
          v86 = v95;
          v87 = v96;
          v93 = v102;
          v94 = v103;
          v91 = v100;
          v92 = v101;
          v90 = v99;
          sub_1DAA9B6E0(&v86);
        }

        else
        {
          v54 = *sub_1DAA9B6E0(&v104);
        }

        swift_unknownObjectRetain();
        sub_1DAAD4CCC(&v95, v84);
        v55 = [v54 identifier];
        swift_unknownObjectRelease();
        v56 = sub_1DACB9324();
        v58 = v57;

        if (!v42[2])
        {
          break;
        }

        v59 = sub_1DAA4BF3C(v56, v58);
        v61 = v60;

        if ((v61 & 1) == 0)
        {
          goto LABEL_48;
        }

        v62 = *(v42[7] + 8 * v59);
        v84[6] = v101;
        v84[7] = v102;
        v84[8] = v103;
        v84[2] = v97;
        v84[3] = v98;
        v84[4] = v99;
        v84[5] = v100;
        v84[0] = v95;
        v84[1] = v96;
        if (sub_1DAA9B6F0(v84) == 1)
        {
          sub_1DAA9B6E0(v84);
          swift_unknownObjectRetain();
          sub_1DAAD4D28(&v95);
          *&v83[0] = v62;
          sub_1DAAD4DD0(v83);
        }

        else
        {
          v65 = sub_1DAA9B6E0(v84);
          swift_unknownObjectRetain();
          sub_1DAAA5860(v65 + 8, v82);
          sub_1DAAD4D28(&v95);
          *&v83[0] = v62;
          memmove(v83 + 8, (v65 + 8), 0x88uLL);
          sub_1DAAA58BC(v83);
        }

        v92 = v83[6];
        v93 = v83[7];
        v94 = v83[8];
        v88 = v83[2];
        v89 = v83[3];
        v90 = v83[4];
        v91 = v83[5];
        v64 = v83[0];
        v63 = v83[1];
LABEL_51:
        v86 = v64;
        v87 = v63;
        v85 = v43;
        v67 = *(v43 + 16);
        v66 = *(v43 + 24);
        if (v67 >= v66 >> 1)
        {
          sub_1DAAA50F8((v66 > 1), v67 + 1, 1);
          v43 = v85;
        }

        *(v43 + 16) = v67 + 1;
        v68 = (v43 + 144 * v67);
        v68[2] = v86;
        v69 = v87;
        v70 = v88;
        v71 = v90;
        v68[5] = v89;
        v68[6] = v71;
        v68[3] = v69;
        v68[4] = v70;
        v72 = v91;
        v73 = v92;
        v74 = v94;
        v68[9] = v93;
        v68[10] = v74;
        v68[7] = v72;
        v68[8] = v73;
        if (!k)
        {
          swift_unknownObjectRelease();

          return v43;
        }

        v44 += 9;
      }

LABEL_48:
      v92 = v101;
      v93 = v102;
      v94 = v103;
      v88 = v97;
      v89 = v98;
      v90 = v99;
      v91 = v100;
      v64 = v95;
      v63 = v96;
      goto LABEL_51;
    }

    swift_unknownObjectRelease();

    return MEMORY[0x1E69E7CC0];
  }

  else
  {
    __break(1u);
LABEL_59:
    result = sub_1DACBA1F4();
    __break(1u);
  }

  return result;
}

uint64_t sub_1DAAD2C7C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  sub_1DAA41D64(0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1DACC1D20;
  v5 = sub_1DACBA114();
  v7 = v6;
  *(v4 + 56) = MEMORY[0x1E69E6158];
  *(v4 + 64) = sub_1DAA443C8();
  *(v4 + 32) = v5;
  *(v4 + 40) = v7;
  sub_1DAA41DCC();
  v8 = sub_1DACB9AD4();
  v9 = sub_1DACB9914();
  sub_1DACB8C64("Top Stories service will filter %{public}@ headlines", 52, 2, &dword_1DAA3F000, v8, v9, v4);

  v10 = *(a2 + 104);
  ObjectType = swift_getObjectType();
  (*(v10 + 24))(ObjectType, v10);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = v3;
  sub_1DACB71F4();
  sub_1DACB71E4();
  v13 = sub_1DACB89D4();
  sub_1DAA48854(0, &qword_1EE11FAA0, &type metadata for Headline, MEMORY[0x1E69E62F8]);
  v14 = sub_1DACB8A54();

  return v14;
}

uint64_t sub_1DAAD2E38@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  sub_1DAA41D64(0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1DACC1D20;
  v5 = sub_1DACBA114();
  v7 = v6;
  *(v4 + 56) = MEMORY[0x1E69E6158];
  *(v4 + 64) = sub_1DAA443C8();
  *(v4 + 32) = v5;
  *(v4 + 40) = v7;
  sub_1DAA41DCC();
  v8 = sub_1DACB9AD4();
  v9 = sub_1DACB9914();
  sub_1DACB8C64("Top Stories service will return %{public}@ headlines", 52, 2, &dword_1DAA3F000, v8, v9, v4);

  *a2 = v3;
  return sub_1DACB71E4();
}

void sub_1DAAD2F38(uint64_t a1)
{
  v1 = sub_1DACB9904();
  sub_1DAA41D64(0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1DACC1D20;
  sub_1DAA4436C(0, &qword_1EE123B10, MEMORY[0x1E69E7280]);
  sub_1DACB9DD4();
  *(v2 + 56) = MEMORY[0x1E69E6158];
  *(v2 + 64) = sub_1DAA443C8();
  *(v2 + 32) = 0;
  *(v2 + 40) = 0xE000000000000000;
  sub_1DAA41DCC();
  v3 = sub_1DACB9AD4();
  sub_1DACB8C64("Top Stories service encountered error fetching For You Config record: %{public}@", 80, 2, &dword_1DAA3F000, v3, v1, v2);
}

uint64_t sub_1DAAD303C(void *a1, uint64_t a2)
{
  v3 = a1[10];
  v4 = a1[11];
  __swift_project_boxed_opaque_existential_1(a1 + 7, v3);
  v5 = *(a2 + *(type metadata accessor for ForYouConfigRecord(0) + 24));
  sub_1DAAD4FA4(v9);
  v7[6] = v9[6];
  v7[7] = v9[7];
  v8 = v10;
  v7[2] = v9[2];
  v7[3] = v9[3];
  v7[4] = v9[4];
  v7[5] = v9[5];
  v7[0] = v9[0];
  v7[1] = v9[1];
  return (*(v4 + 8))(v5, v7, v3, v4);
}

void *sub_1DAAD3104()
{
  sub_1DAA492B4(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v48 = &v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for ForYouConfigRecord.Configuration.TopStories.Article(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for ForYouConfigRecord.Configuration(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = (&v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for ForYouConfigRecord(0);
  sub_1DAA89A58(v0 + *(v10 + 20), v9, type metadata accessor for ForYouConfigRecord.Configuration);
  v11 = *v9;
  sub_1DACB71E4();
  sub_1DAA89CD4(v9, type metadata accessor for ForYouConfigRecord.Configuration.TopStories);
  v47 = *(v11 + 16);
  if (!v47)
  {
    v15 = MEMORY[0x1E69E7CC8];
LABEL_17:

    return v15;
  }

  v12 = 0;
  v13 = *(v3 + 20);
  v45 = (v6 + *(v3 + 24));
  v46 = v13;
  v14 = *(v4 + 80);
  v15 = MEMORY[0x1E69E7CC8];
  v43 = v4;
  v44 = v11 + ((v14 + 32) & ~v14);
  v41 = v11;
  v42 = v6;
  while (v12 < *(v11 + 16))
  {
    sub_1DAA89A58(v44 + *(v4 + 72) * v12, v6, type metadata accessor for ForYouConfigRecord.Configuration.TopStories.Article);
    v17 = *v6;
    v16 = v6[1];
    v18 = v48;
    sub_1DAA89A58(v6 + v46, v48, sub_1DAA492B4);
    v19 = *v45;
    v20 = v45[1];
    v21 = _s16HeadlineMetadataCMa(0);
    v22 = objc_allocWithZone(v21);
    sub_1DAA89A58(v18, &v22[OBJC_IVAR____TtCV10StocksCore18ForYouConfigRecordP33_FB30AEA7B56282916E4430A3993C597516HeadlineMetadata_displayDate], sub_1DAA492B4);
    v23 = &v22[OBJC_IVAR____TtCV10StocksCore18ForYouConfigRecordP33_FB30AEA7B56282916E4430A3993C597516HeadlineMetadata_storyType];
    *v23 = v19;
    *(v23 + 1) = v20;
    v24 = &v22[OBJC_IVAR____TtCV10StocksCore18ForYouConfigRecordP33_FB30AEA7B56282916E4430A3993C597516HeadlineMetadata_title];
    *v24 = 0;
    *(v24 + 1) = 0;
    v50.receiver = v22;
    v50.super_class = v21;
    sub_1DACB71E4();
    v25 = objc_msgSendSuper2(&v50, sel_init);
    sub_1DAA89CD4(v18, sub_1DAA492B4);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v49 = v15;
    v27 = sub_1DAA4BF3C(v17, v16);
    v29 = v15[2];
    v30 = (v28 & 1) == 0;
    v31 = __OFADD__(v29, v30);
    v32 = v29 + v30;
    if (v31)
    {
      goto LABEL_19;
    }

    v33 = v28;
    if (v15[3] < v32)
    {
      sub_1DAB60368(v32, isUniquelyReferenced_nonNull_native);
      v27 = sub_1DAA4BF3C(v17, v16);
      if ((v33 & 1) != (v34 & 1))
      {
        goto LABEL_21;
      }

LABEL_11:
      v15 = v49;
      if (v33)
      {
        goto LABEL_3;
      }

      goto LABEL_12;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_11;
    }

    v38 = v27;
    sub_1DAB65158();
    v27 = v38;
    v15 = v49;
    if (v33)
    {
LABEL_3:
      *(v15[7] + 8 * v27) = v25;
      swift_unknownObjectRelease();
      goto LABEL_4;
    }

LABEL_12:
    v15[(v27 >> 6) + 8] |= 1 << v27;
    v35 = (v15[6] + 16 * v27);
    *v35 = v17;
    v35[1] = v16;
    *(v15[7] + 8 * v27) = v25;
    v36 = v15[2];
    v31 = __OFADD__(v36, 1);
    v37 = v36 + 1;
    if (v31)
    {
      goto LABEL_20;
    }

    v15[2] = v37;
    sub_1DACB71E4();
LABEL_4:
    ++v12;
    v6 = v42;
    sub_1DAA89CD4(v42, type metadata accessor for ForYouConfigRecord.Configuration.TopStories.Article);
    v4 = v43;
    v11 = v41;
    if (v47 == v12)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_1DACBA1F4();
  __break(1u);
  return result;
}

uint64_t sub_1DAAD353C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = a1[2];
  v8 = a1[3];
  v9 = a1[4];
  v10 = *(a2 + 152);
  v11 = type metadata accessor for NewsUserProfileShim();
  v12 = objc_allocWithZone(v11);
  v13 = &v12[OBJC_IVAR____TtC10StocksCoreP33_6F15235305946077A82EB95D8E9A724719NewsUserProfileShim_userProfile];
  *v13 = v6;
  *(v13 + 1) = v5;
  *(v13 + 2) = v7;
  *(v13 + 3) = v8;
  *(v13 + 4) = v9;
  v67.receiver = v12;
  v67.super_class = v11;
  sub_1DACB71E4();
  sub_1DACB71E4();
  sub_1DACB71E4();
  sub_1DACB71E4();
  v14 = v9;
  v15 = objc_msgSendSuper2(&v67, sel_init);
  v16 = [objc_allocWithZone(MEMORY[0x1E69B5420]) initWithPurchaseProvider:v15 bundleSubscriptionProvider:v15 configurationManager:v10];

  sub_1DAA48854(0, &qword_1EE11F518, &type metadata for HeadlineCondition, MEMORY[0x1E69E6F90]);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1DACC1D30;
  *(v17 + 32) = v16;
  sub_1DAA4D678(a2 + 112, v17 + 40);
  *(v17 + 80) = 0;
  *(v17 + 88) = v5;
  *(v17 + 136) = 3;
  *(v17 + 144) = 3;
  *(v17 + 152) = 0u;
  *(v17 + 168) = 0u;
  *(v17 + 184) = 0;
  *(v17 + 192) = 9;
  *(v17 + 200) = 0u;
  *(v17 + 216) = 0u;
  *(v17 + 232) = 0u;
  *(v17 + 248) = 9;
  v65[0] = v17;
  v66 = 6;
  sub_1DAAD4C70(v65, v64);
  v18 = *(a3 + 16);
  v19 = v16;
  result = sub_1DACB71E4();
  if (v18)
  {
    v21 = 0;
    v22 = MEMORY[0x1E69E7CC0];
    do
    {
      v23 = (a3 + 32 + 144 * v21);
      v24 = v21;
      while (1)
      {
        if (v24 >= v18)
        {
          __break(1u);
LABEL_18:
          __break(1u);
          return result;
        }

        v25 = v23[7];
        v61 = v23[6];
        v62 = v25;
        v63 = v23[8];
        v26 = v23[3];
        v57 = v23[2];
        v58 = v26;
        v27 = v23[5];
        v59 = v23[4];
        v60 = v27;
        v28 = v23[1];
        v55 = *v23;
        v56 = v28;
        v21 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          goto LABEL_18;
        }

        v29 = v23[7];
        v54[6] = v23[6];
        v54[7] = v29;
        v54[8] = v23[8];
        v30 = v23[3];
        v54[2] = v23[2];
        v54[3] = v30;
        v31 = v23[5];
        v54[4] = v23[4];
        v54[5] = v31;
        v32 = v23[1];
        v54[0] = *v23;
        v54[1] = v32;
        sub_1DAAD4CCC(&v55, v53);
        if ((sub_1DAC78658(v54) & 1) == 0)
        {
          break;
        }

        result = sub_1DAAD4D28(&v55);
        ++v24;
        v23 += 9;
        if (v21 == v18)
        {
          goto LABEL_16;
        }
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      v68 = v22;
      if ((result & 1) == 0)
      {
        result = sub_1DAAA50F8(0, *(v22 + 16) + 1, 1);
        v22 = v68;
      }

      v34 = *(v22 + 16);
      v33 = *(v22 + 24);
      if (v34 >= v33 >> 1)
      {
        result = sub_1DAAA50F8((v33 > 1), v34 + 1, 1);
        v22 = v68;
      }

      *(v22 + 16) = v34 + 1;
      v35 = (v22 + 144 * v34);
      v35[2] = v55;
      v36 = v56;
      v37 = v57;
      v38 = v59;
      v35[5] = v58;
      v35[6] = v38;
      v35[3] = v36;
      v35[4] = v37;
      v39 = v60;
      v40 = v61;
      v41 = v63;
      v35[9] = v62;
      v35[10] = v41;
      v35[7] = v39;
      v35[8] = v40;
    }

    while (v21 != v18);
  }

  else
  {
    v22 = MEMORY[0x1E69E7CC0];
  }

LABEL_16:
  sub_1DAAD4D7C(v64);
  sub_1DAA41D64(0);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_1DACC1D40;
  *&v55 = v18;
  v43 = sub_1DACBA114();
  v45 = v44;
  v46 = MEMORY[0x1E69E6158];
  *(v42 + 56) = MEMORY[0x1E69E6158];
  v47 = sub_1DAA443C8();
  *(v42 + 64) = v47;
  *(v42 + 32) = v43;
  *(v42 + 40) = v45;
  *&v55 = *(v22 + 16);
  v48 = sub_1DACBA114();
  *(v42 + 96) = v46;
  *(v42 + 104) = v47;
  *(v42 + 72) = v48;
  *(v42 + 80) = v49;
  sub_1DAA41DCC();
  v50 = sub_1DACB9AD4();
  v51 = sub_1DACB9914();
  sub_1DACB8C64("Top Stories service filtered %{public}@ headlines down to %{public}@", 68, 2, &dword_1DAA3F000, v50, v51, v42);

  *&v55 = v22;
  sub_1DAAD4BD8(0);
  swift_allocObject();
  v52 = sub_1DACB8AE4();

  sub_1DAAD4D7C(v65);
  return v52;
}

id sub_1DAAD3B08(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a1 + *a3 + 8))
  {
    sub_1DACB71E4();
    v3 = sub_1DACB92F4();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id sub_1DAAD3BA4()
{
  v2.receiver = v0;
  v2.super_class = _s16HeadlineMetadataCMa(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1DAAD3C64()
{
  sub_1DAAD4BD8(0);
  swift_allocObject();
  return sub_1DACB8AE4();
}

uint64_t sub_1DAAD3CBC(uint64_t a1, id *a2)
{
  result = sub_1DACB9304();
  *a2 = 0;
  return result;
}

uint64_t sub_1DAAD3D34(uint64_t a1, id *a2)
{
  v3 = sub_1DACB9314();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1DAAD3DB4@<X0>(uint64_t *a2@<X8>)
{
  sub_1DACB9324();
  v3 = sub_1DACB92F4();

  *a2 = v3;
  return result;
}

uint64_t sub_1DAAD3DF8()
{
  v0 = sub_1DACB9324();
  v1 = MEMORY[0x1E1276F90](v0);

  return v1;
}

uint64_t sub_1DAAD3E34(uint64_t a1)
{
  sub_1DACB9324();
  sub_1DACB9404();
}

uint64_t sub_1DAAD3E88(uint64_t a1)
{
  sub_1DACB9324();
  sub_1DACBA284();
  sub_1DACB9404();
  v1 = sub_1DACBA2C4();

  return v1;
}

uint64_t sub_1DAAD3F0C(uint64_t a1)
{
  v2 = sub_1DAA69AC4(&qword_1EE11D218, type metadata accessor for CKError, &unk_1DACC2000);

  return MEMORY[0x1EEDC3BE0](a1, v2);
}

uint64_t sub_1DAAD3F78(uint64_t a1)
{
  v2 = sub_1DAA69AC4(&qword_1EE11D218, type metadata accessor for CKError, &unk_1DACC2000);

  return MEMORY[0x1EEDC3B98](a1, v2);
}

uint64_t sub_1DAAD3FE4(void *a1, uint64_t a2)
{
  v4 = sub_1DAA69AC4(&qword_1EE11D218, type metadata accessor for CKError, &unk_1DACC2000);
  v5 = a1;

  return MEMORY[0x1EEDC3B88](v5, a2, v4);
}

uint64_t sub_1DAAD4098(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DAA69AC4(&qword_1EE11D218, type metadata accessor for CKError, &unk_1DACC2000);

  return MEMORY[0x1EEDC3BC8](a1, a2, v4);
}

uint64_t sub_1DAAD4114(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DACBA284();
  sub_1DACB91F4();
  return sub_1DACBA2C4();
}

void *sub_1DAAD4174@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1DAAD4184(void *a1, uint64_t *a2)
{
  v2 = sub_1DACB9324();
  v4 = v3;
  if (v2 == sub_1DACB9324() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1DACBA174();
  }

  return v7 & 1;
}

uint64_t sub_1DAAD420C(uint64_t a1)
{
  v2 = sub_1DAA69AC4(&qword_1EE11D070, type metadata accessor for CIImageRepresentationOption, &unk_1DACC2414);
  v3 = sub_1DAA69AC4(&unk_1ECBE6348, type metadata accessor for CIImageRepresentationOption, &unk_1DACC2368);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1DAAD42C8(uint64_t a1)
{
  v2 = sub_1DAA69AC4(&qword_1EE11D220, type metadata accessor for CKError, &unk_1DACC1FAC);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1DAAD4334(uint64_t a1)
{
  v2 = sub_1DAA69AC4(&qword_1EE11D220, type metadata accessor for CKError, &unk_1DACC1FAC);

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1DAAD43A4(uint64_t a1)
{
  v2 = sub_1DAA69AC4(&qword_1EE11D218, type metadata accessor for CKError, &unk_1DACC2000);

  return MEMORY[0x1EEDC3B70](a1, v2);
}

uint64_t sub_1DAAD4410(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DAA69AC4(&qword_1EE11D218, type metadata accessor for CKError, &unk_1DACC2000);

  return MEMORY[0x1EEDC3BA8](a1, a2, a3, v6);
}

uint64_t sub_1DAAD4494@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_1DACB92F4();

  *a2 = v3;
  return result;
}

uint64_t sub_1DAAD44DC(uint64_t a1)
{
  v2 = sub_1DAA69AC4(&qword_1EE11F8C0, type metadata accessor for FileAttributeKey, &unk_1DACC2458);
  v3 = sub_1DAA69AC4(&qword_1ECBE6358, type metadata accessor for FileAttributeKey, &unk_1DACC2248);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1DAAD4598(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    if (result)
    {
      sub_1DAA4436C(0, &qword_1EE123B00, MEMORY[0x1E69E7740]);
      result = sub_1DACB96C4();
      *(result + 16) = v1;
    }

    else
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return result;
}

uint64_t sub_1DAAD45FC()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  return (*(v2 + 8))(v1, v2);
}

void sub_1DAAD4674(uint64_t a1)
{
  if (!qword_1EE11E808)
  {
    type metadata accessor for ForYouConfigRecord(255);
    sub_1DAA48854(255, &qword_1EE11FAA0, &type metadata for Headline, MEMORY[0x1E69E62F8]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE11E808);
    }
  }
}

uint64_t sub_1DAAD4710@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(v2 + 16);
  sub_1DAAD4674(0);
  result = v5(a1, *(a1 + *(v6 + 48)));
  *a2 = result;
  return result;
}

uint64_t _s16HeadlineMetadataCMa(uint64_t a1)
{
  result = qword_1EE11E818;
  if (!qword_1EE11E818)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DAAD4830(uint64_t a1)
{
  sub_1DAA492B4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_1DAAD4AF4()
{
  result = qword_1EE11D238;
  if (!qword_1EE11D238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11D238);
  }

  return result;
}

void sub_1DAAD4BD8(uint64_t a1)
{
  if (!qword_1EE11D3E0)
  {
    sub_1DAA48854(255, &qword_1EE11FAA0, &type metadata for Headline, MEMORY[0x1E69E62F8]);
    v1 = sub_1DACB8B74();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE11D3E0);
    }
  }
}

void sub_1DAAD4E00(uint64_t a1)
{
  if (!qword_1EE11FAB0)
  {
    sub_1DAA48854(255, &qword_1EE11FAA0, &type metadata for Headline, MEMORY[0x1E69E62F8]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE11FAB0);
    }
  }
}

uint64_t sub_1DAAD4E90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ForYouConfigRecord(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAAD4EF4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ForYouConfigRecord(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *a1;
  sub_1DAAD4674(0);
  v9 = *(v8 + 48);
  sub_1DAA89A58(v2 + v6, a2, type metadata accessor for ForYouConfigRecord);
  *(a2 + v9) = v7;
  return sub_1DACB71E4();
}

double sub_1DAAD4FA4(uint64_t a1)
{
  *(a1 + 128) = 0;
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

unint64_t StocksIntentType.debugDescription.getter()
{
  v1 = type metadata accessor for SymbolEntity(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = (v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = *(v0 + 16) >> 61;
  if (v4 <= 1)
  {
    v13 = 0;
    v14 = 0xE000000000000000;
    if (v4)
    {
      sub_1DACB9C94();

      v5 = 0x80000001DACE3420;
      v6 = 0xD000000000000021;
    }

    else
    {
      sub_1DACB9C94();

      v5 = 0x80000001DACE3450;
      v6 = 0xD00000000000001CLL;
    }

    v15 = v6;
    v16 = v5;
    sub_1DACB6FB4();
    v10 = *v3;
    v11 = v3[1];
    sub_1DACB71E4();
    sub_1DAAD5434(v3);
    MEMORY[0x1E1276F20](v10, v11);

    MEMORY[0x1E1276F20](0x6C6863746177202CLL, 0xEC0000003D747369);
  }

  else
  {
    if (v4 == 2)
    {
      v13 = 0;
      v14 = 0xE000000000000000;
      sub_1DACB9C94();

      v13 = 0xD000000000000018;
      v14 = 0x80000001DACE33E0;
      sub_1DACB6FB4();
      v7 = *v3;
      v8 = v3[1];
      sub_1DACB71E4();
      sub_1DAAD5434(v3);
      MEMORY[0x1E1276F20](v7, v8);

      MEMORY[0x1E1276F20](41, 0xE100000000000000);
      return v13;
    }

    if (v4 != 3)
    {
      return 0xD000000000000010;
    }

    v13 = 0;
    v14 = 0xE000000000000000;
    sub_1DACB9C94();

    v15 = 0xD00000000000001ELL;
    v16 = 0x80000001DACE33C0;
  }

  sub_1DACB6FB4();
  sub_1DACB6ED4();

  MEMORY[0x1E1276F20](v12[1], v12[2]);

  MEMORY[0x1E1276F20](41, 0xE100000000000000);
  return v15;
}

uint64_t sub_1DAAD5434(uint64_t a1)
{
  v2 = type metadata accessor for SymbolEntity(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t get_enum_tag_for_layout_string_10StocksCore0A10IntentTypeO(void *a1)
{
  v1 = a1[2];
  if (v1 >= 0)
  {
    return v1 >> 61;
  }

  else
  {
    return (*a1 >> 3) + 4;
  }
}

uint64_t sub_1DAAD54B4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x1FFFFB && *(a1 + 24))
  {
    return (*a1 + 2097148);
  }

  if (((((*(a1 + 16) >> 43) >> 18) | (8 * ((*a1 >> 57) & 0x78 | *a1 & 7 | (*(a1 + 8) >> 50) & 0x3C00 | ((*(a1 + 8) & 7) << 7) | (*(a1 + 16) >> 43) & 0x20000 | ((*(a1 + 16) & 7) << 14)))) ^ 0x1FFFFF) >= 0x1FFFFB)
  {
    v3 = -1;
  }

  else
  {
    v3 = (((*(a1 + 16) >> 43) >> 18) | (8 * ((*a1 >> 57) & 0x78 | *a1 & 7 | (*(a1 + 8) >> 50) & 0x3C00 | ((*(a1 + 8) & 7) << 7) | (*(a1 + 16) >> 43) & 0x20000 | ((*(a1 + 16) & 7) << 14)))) ^ 0x1FFFFF;
  }

  return (v3 + 1);
}

uint64_t sub_1DAAD553C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x1FFFFB)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2097148;
    if (a3 >= 0x1FFFFC)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x1FFFFC)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      v3 = ((-a2 >> 3) & 0x3FFFF) - (a2 << 18);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
      v4 = vdupq_n_s64(v3);
      *(result + 8) = vorrq_s8(vandq_s8(vshlq_u64(v4, xmmword_1DACC24A0), vdupq_n_s64(7uLL)), vandq_s8(vshlq_u64(v4, xmmword_1DACC24B0), vdupq_n_s64(0xF000000000000000)));
    }
  }

  return result;
}

int8x16_t sub_1DAAD55F4(uint64_t a1, uint64_t a2)
{
  if (a2 < 4)
  {
    v3 = *(a1 + 16) & 0xFFFFFFFFFFFFFF8 | (a2 << 61);
    result = vandq_s8(*a1, vdupq_n_s64(0xFFFFFFFFFFFFFF8uLL));
    *a1 = result;
    *(a1 + 16) = v3;
  }

  else
  {
    *a1 = 8 * (a2 - 4);
    result.i64[0] = 0;
    *(a1 + 8) = xmmword_1DACC24C0;
  }

  return result;
}

uint64_t type metadata accessor for SDSChartOperation(uint64_t a1)
{
  result = qword_1EE11E9E8;
  if (!qword_1EE11E9E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DAAD5698(uint64_t a1)
{
  result = sub_1DACB7CC4();
  if (v2 <= 0x3F)
  {
    result = sub_1DACB8204();
    if (v3 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_1DAAD57B0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  __swift_project_boxed_opaque_existential_1(&v2[qword_1EE11EA18], *&v2[qword_1EE11EA18 + 24]);
  sub_1DAA7BCA8(0, &qword_1EE123B40, sub_1DAA4BD7C, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  v7 = inited;
  *(inited + 16) = xmmword_1DACC2610;
  *(inited + 32) = 0x6C6F626D7973;
  *(inited + 40) = 0xE600000000000000;
  v8 = *&v2[qword_1EE11E9F8 + 8];
  *(inited + 48) = *&v2[qword_1EE11E9F8];
  *(inited + 56) = v8;
  *(inited + 64) = 0x65676E6172;
  *(inited + 72) = 0xE500000000000000;
  v9 = v2[qword_1EE11EA00];
  if (v9 <= 4)
  {
    if (v2[qword_1EE11EA00] <= 1u)
    {
      v10 = 0xE200000000000000;
      if (v2[qword_1EE11EA00])
      {
        v11 = 25653;
      }

      else
      {
        v11 = 25649;
      }
    }

    else if (v9 == 2)
    {
      v10 = 0xE200000000000000;
      v11 = 27953;
    }

    else if (v9 == 3)
    {
      v10 = 0xE200000000000000;
      v11 = 27955;
    }

    else
    {
      v10 = 0xE200000000000000;
      v11 = 27958;
    }
  }

  else if (v2[qword_1EE11EA00] > 7u)
  {
    if (v9 == 8)
    {
      v10 = 0xE200000000000000;
      v11 = 31029;
    }

    else if (v9 == 9)
    {
      v10 = 0xE300000000000000;
      v11 = 7942193;
    }

    else
    {
      v10 = 0xE300000000000000;
      v11 = 7889261;
    }
  }

  else if (v9 == 5)
  {
    v10 = 0xE300000000000000;
    v11 = 6583417;
  }

  else if (v9 == 6)
  {
    v10 = 0xE200000000000000;
    v11 = 31025;
  }

  else
  {
    v10 = 0xE200000000000000;
    v11 = 31026;
  }

  *(inited + 80) = v11;
  *(inited + 88) = v10;
  *(inited + 96) = 0x74655361746164;
  *(inited + 104) = 0xE700000000000000;
  *(inited + 112) = 0x7472616863;
  *(inited + 120) = 0xE500000000000000;
  sub_1DACB71E4();
  v12 = sub_1DAA4BDD8(v7);
  swift_setDeallocating();
  sub_1DAA4BD7C();
  swift_arrayDestroy();
  v13 = sub_1DABF30CC(2, v12, &v2[qword_1EE11EA08], &v2[qword_1EE11EA10]);

  v14 = (v13 + *((*MEMORY[0x1E69E7D40] & *v13) + qword_1EE13E480 + 16));
  v15 = *v14;
  v16 = v14[1];
  *v14 = sub_1DAAD5AF0;
  v14[1] = 0;
  sub_1DAA4F910(v15, v16);
  v17 = swift_allocObject();
  v17[2] = a1;
  v17[3] = a2;
  v17[4] = v3;
  v18 = v13;
  sub_1DACB71F4();
  v19 = v3;
  sub_1DACB8304();

  [v18 start];
}

uint64_t sub_1DAAD5B3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1DAAD8184(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1E69D6AF8];
  sub_1DAA7BCA8(0, &qword_1EE11FEE0, sub_1DAAD8184, MEMORY[0x1E69D6AF8]);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v26 - v11;
  sub_1DAAD8348(a2, &v26 - v11, &qword_1EE11FEE0, sub_1DAAD8184, v9, sub_1DAA7BCA8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1DAAD8234(v12, &qword_1EE11FEE0, sub_1DAAD8184, MEMORY[0x1E69D6AF8], sub_1DAA7BCA8);
    sub_1DAA8C2EC(0);
    v14 = a3 + *(v13 + 48);
    v15 = sub_1DACB8754();
    (*(*(v15 - 8) + 16))(a3, a1, v15);
    *v14 = xmmword_1DACC2620;
    v16 = MEMORY[0x1E69E7CC0];
    *(v14 + 16) = MEMORY[0x1E69E7CC0];
    *(v14 + 24) = v16;
    type metadata accessor for NetworkEvent(0);
    *(v14 + 32) = 0;
    *(v14 + 40) = 0;
  }

  else
  {
    sub_1DAAD87CC(v12, v8, sub_1DAAD8184);
    v17 = sub_1DACB8754();
    (*(*(v17 - 8) + 16))(a3, a1, v17);
    sub_1DAAD83BC(0, &qword_1EE11FF88, &type metadata for SDSQuoteResponse, MEMORY[0x1E69D68E0]);
    sub_1DACB8794();
    v18 = v26;
    sub_1DAA75E60(v27, v28, v29, v30, v31);
    v19 = *(v18 + 16);

    sub_1DACB8794();

    v20 = v28;
    if (v28)
    {
      v21 = v27;
    }

    else
    {
      v21 = 0;
    }

    sub_1DAA8C2EC(0);
    v23 = (a3 + *(v22 + 48));
    sub_1DAAD8294(v8, sub_1DAAD8184);
    *v23 = 1;
    v23[1] = v19;
    v24 = MEMORY[0x1E69E7CC0];
    v23[2] = MEMORY[0x1E69E7CC0];
    v23[3] = v24;
    v23[4] = v21;
    v23[5] = v20;
    type metadata accessor for NetworkEvent(0);
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1DAAD5EA8(uint64_t a1, void (*a2)(void **), uint64_t a3, uint64_t a4)
{
  v23[1] = a4;
  v25 = a2;
  v5 = type metadata accessor for Chart(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v24 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAAD8184(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1E69D6AF8];
  sub_1DAA7BCA8(0, &qword_1EE11D458, type metadata accessor for Chart, MEMORY[0x1E69D6AF8]);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (v23 - v12);
  sub_1DAA7BCA8(0, &qword_1EE11FEE0, sub_1DAAD8184, v10);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (v23 - v15);
  sub_1DAAD8348(a1, v23 - v15, &qword_1EE11FEE0, sub_1DAAD8184, v10, sub_1DAA7BCA8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = *v16;
    *v13 = *v16;
    swift_storeEnumTagMultiPayload();
    v18 = v17;
    v25(v13);

    return sub_1DAAD8234(v13, &qword_1EE11D458, type metadata accessor for Chart, MEMORY[0x1E69D6AF8], sub_1DAA7BCA8);
  }

  else
  {
    v20 = v25;
    v21 = v9;
    sub_1DAAD87CC(v16, v9, sub_1DAAD8184);
    sub_1DAAD83BC(0, &qword_1EE11FF88, &type metadata for SDSQuoteResponse, MEMORY[0x1E69D68E0]);
    sub_1DACB8794();
    v22 = v24;
    sub_1DAAD6420(&v26, v24);
    v30 = v26;
    sub_1DAAD8234(&v30, &unk_1EE11FB38, &type metadata for SDSQuoteResponse.SDSQuoteResponseItem, MEMORY[0x1E69E62F8], sub_1DAAD83BC);
    v31[0] = v27;
    v31[1] = v28;
    v32 = v29;
    sub_1DAAD8234(v31, &qword_1EE125140, &type metadata for SDSMetadata, MEMORY[0x1E69E6720], sub_1DAAD83BC);
    sub_1DAA83594(v22, v13, type metadata accessor for Chart);
    swift_storeEnumTagMultiPayload();
    v20(v13);
    sub_1DAAD8234(v13, &qword_1EE11D458, type metadata accessor for Chart, MEMORY[0x1E69D6AF8], sub_1DAA7BCA8);
    sub_1DAAD8294(v22, type metadata accessor for Chart);
    return sub_1DAAD8294(v21, sub_1DAAD8184);
  }
}

uint64_t sub_1DAAD6420@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for Chart.Entry(0);
  v98 = *(v5 - 8);
  v99 = v5;
  v6 = MEMORY[0x1EEE9AC00](v5);
  v97 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v93 = &v78 - v8;
  v9 = type metadata accessor for Chart(0);
  MEMORY[0x1EEE9AC00](v9);
  v91 = (&v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v90 = sub_1DACB7CC4();
  v89 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v88 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA49610(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v92 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA7BCA8(0, &qword_1EE1239E8, MEMORY[0x1E6969BC0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v78 - v15;
  v106 = sub_1DACB7F54();
  v95 = *(v106 - 8);
  v17 = *(v95 + 64);
  v18 = MEMORY[0x1EEE9AC00](v106);
  v87 = &v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v78 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v94 = &v78 - v22;
  v23 = *a1;
  v24 = *(*a1 + 16);
  if (!v24)
  {
LABEL_7:
    sub_1DAAD82F4();
    swift_allocError();
    *v29 = 0;
    *(v29 + 8) = 0;
LABEL_15:
    *(v29 + 16) = 3;
    return swift_willThrow();
  }

  v25 = &v2[qword_1EE11E9F8];
  while (1)
  {
    v101 = *(v23 + 32);
    v26 = *(v23 + 48);
    v27 = *(v23 + 64);
    v28 = *(v23 + 80);
    v105 = *(v23 + 96);
    v103 = v27;
    v104 = v28;
    v102 = v26;
    if (*(v23 + 752) == *v25 && *(v23 + 760) == v25[1])
    {
      break;
    }

    if (sub_1DACBA174())
    {
      break;
    }

    v23 += 776;
    if (!--v24)
    {
      goto LABEL_7;
    }
  }

  if (!v102)
  {
    sub_1DAAD82F4();
    swift_allocError();
    *v29 = xmmword_1DACC2620;
    goto LABEL_15;
  }

  v83 = v102;
  v80 = v9;
  v86 = a2;
  v81 = *(&v101 + 1);
  v82 = v101;
  v85 = v105;
  v30 = v103;
  v31 = *(&v102 + 1);
  v32 = v2[qword_1EE11EA00] == 0;
  v84 = v2[qword_1EE11EA00] != 0;
  if (v32)
  {
    v33 = *(&v104 + 1);
  }

  else
  {
    v33 = 0;
  }

  v34 = v104;
  sub_1DAAD8348(&v101, v100, &unk_1EE11EAF0, &type metadata for SDSQuoteResponse.SDSQuoteResponseChartItem, MEMORY[0x1E69E6720], sub_1DAAD83BC);
  v35 = v96;
  sub_1DAAD72E4(v31, v30, *(&v30 + 1), v34, v16);
  if (v35)
  {
    return sub_1DAAD8234(&v101, &unk_1EE11EAF0, &type metadata for SDSQuoteResponse.SDSQuoteResponseChartItem, MEMORY[0x1E69E6720], sub_1DAAD83BC);
  }

  v79 = v33;
  v37 = v95;
  v38 = v106;
  if ((*(v95 + 48))(v16, 1, v106) != 1)
  {
    (*(v37 + 32))(v94, v16, v38);
    v46 = swift_allocObject();
    *(v46 + 16) = v2;
    v48 = v2;
    v47 = sub_1DAAD87A0;
    goto LABEL_20;
  }

  sub_1DAAD8234(v16, &qword_1EE1239E8, MEMORY[0x1E6969BC0], MEMORY[0x1E69E6720], sub_1DAA7BCA8);
  if (qword_1EE123A08 != -1)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v39 = __swift_project_value_buffer(v38, qword_1EE13E458);
    v40 = v95;
    v41 = *(v95 + 16);
    v41(v94, v39, v106);
    v41(v21, v39, v106);
    v42 = (*(v40 + 80) + 16) & ~*(v40 + 80);
    v43 = swift_allocObject();
    v44 = v43 + v42;
    v38 = v106;
    v45 = v21;
    v46 = v43;
    (*(v40 + 32))(v44, v45, v106);
    v47 = sub_1DAAD840C;
LABEL_20:
    v49 = v47;
    v50 = sub_1DAAD8488(v83, v47, v46);
    v51 = v85;
    v52 = v84;
    v96 = v50;
    v53 = v92;
    sub_1DAAD6FEC(v82, v81, v49, v92);
    v83 = v46;
    v85 = v52 | v51;
    sub_1DAAD8234(&v101, &unk_1EE11EAF0, &type metadata for SDSQuoteResponse.SDSQuoteResponseChartItem, MEMORY[0x1E69E6720], sub_1DAAD83BC);
    v54 = v53;
    v55 = *(v95 + 16);
    v56 = v87;
    v55(v87, v94, v38);
    v57 = v88;
    sub_1DACB7CB4();
    v58 = v91;
    v59 = v96;
    *v91 = v96;
    v60 = v80;
    sub_1DAA83594(v54, &v58[v80[5]], sub_1DAA49610);
    v61 = &v58[v60[6]];
    *v61 = v79;
    v61[8] = v85 & 1;
    v55(&v58[v60[7]], v56, v106);
    (*(v89 + 16))(&v58[v60[8]], v57, v90);
    v21 = *(v59 + 16);
    sub_1DACB71E4();
    v62 = MEMORY[0x1E69E7CC0];
    if (!v21)
    {
      break;
    }

    v38 = 0;
    v63 = MEMORY[0x1E69E7CC0];
    v64 = v93;
    v65 = v86;
    v66 = v96;
    while (v38 < *(v66 + 16))
    {
      v67 = (*(v98 + 80) + 32) & ~*(v98 + 80);
      v68 = *(v98 + 72);
      sub_1DAA83594(v66 + v67 + v68 * v38, v64, type metadata accessor for Chart.Entry);
      v69 = v64 + *(v99 + 36);
      if ((*(v69 + 8) & 1) != 0 || *v69 <= 0.0)
      {
        sub_1DAAD8294(v64, type metadata accessor for Chart.Entry);
      }

      else
      {
        sub_1DAAD87CC(v64, v97, type metadata accessor for Chart.Entry);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v100[0] = v63;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1DAA83020(0, *(v63 + 16) + 1, 1);
          v63 = v100[0];
        }

        v72 = *(v63 + 16);
        v71 = *(v63 + 24);
        if (v72 >= v71 >> 1)
        {
          sub_1DAA83020((v71 > 1), v72 + 1, 1);
          v63 = v100[0];
        }

        *(v63 + 16) = v72 + 1;
        sub_1DAAD87CC(v97, v63 + v67 + v72 * v68, type metadata accessor for Chart.Entry);
        v65 = v86;
        v64 = v93;
      }

      ++v38;
      v66 = v96;
      if (v21 == v38)
      {
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_37:
    swift_once();
  }

  v63 = MEMORY[0x1E69E7CC0];
  v65 = v86;
LABEL_33:

  v73 = *(v63 + 16);

  (*(v89 + 8))(v88, v90);
  v74 = *(v95 + 8);
  v75 = v106;
  v74(v87, v106);
  sub_1DAAD8294(v92, sub_1DAA49610);
  v74(v94, v75);
  v76 = &unk_1F567C238;
  if (!v73)
  {
    v76 = v62;
  }

  v77 = v91;
  *(v91 + v80[9]) = v76;
  sub_1DAAD87CC(v77, v65, type metadata accessor for Chart);
}

uint64_t sub_1DAAD6FEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, char *a4@<X8>)
{
  v36 = a4;
  v37 = a1;
  sub_1DAA82998(0);
  v7 = v6;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v33 - v11;
  v13 = sub_1DACB7CC4();
  v38 = *(v13 - 8);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v33 - v17;
  v19 = v39;
  result = a3(a2);
  if (!v19)
  {
    v34 = v10;
    v35 = v12;
    v21 = v7;
    a3(v37);
    v39 = 0;
    sub_1DAA49674();
    v22 = v13;
    result = sub_1DACB9244();
    if (result)
    {
      v23 = v38;
      v24 = *(v38 + 32);
      v25 = v35;
      v24(v35, v18, v13);
      v26 = v21;
      v24((v25 + *(v21 + 48)), v16, v13);
      v27 = v34;
      sub_1DAA83594(v25, v34, sub_1DAA82998);
      v28 = *(v26 + 48);
      v24(v36, v27, v22);
      v29 = *(v23 + 8);
      v29(v27 + v28, v22);
      sub_1DAAD87CC(v25, v27, sub_1DAA82998);
      v30 = v22;
      v31 = *(v26 + 48);
      sub_1DAA49610(0);
      v24(&v36[*(v32 + 36)], (v27 + v31), v30);
      return (v29)(v27, v30);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1DAAD72E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v27 = a5;
  v5 = a4;
  v28 = a3;
  sub_1DAA7BCA8(0, &qword_1EE1239E8, MEMORY[0x1E6969BC0], MEMORY[0x1E69E6720]);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v27 - v12;
  v14 = sub_1DACB7F54();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v27 - v19;
  if (a2 == 1)
  {
    goto LABEL_2;
  }

  if (v5)
  {
    if (!a2)
    {
LABEL_2:
      (*(v15 + 56))(v27, 1, 1, v14);
      return sub_1DAAD8834(a1, a2);
    }

    sub_1DACB71E4();
    sub_1DACB7EF4();
    v22 = 1;
    if ((*(v15 + 48))(v11, 1, v14) == 1)
    {
      v13 = v11;
LABEL_9:
      sub_1DAAD8234(v13, &qword_1EE1239E8, MEMORY[0x1E6969BC0], MEMORY[0x1E69E6720], sub_1DAA7BCA8);
      sub_1DAAD82F4();
      swift_allocError();
      *v23 = a1;
      *(v23 + 8) = a2;
      *(v23 + 16) = v22;
      return swift_willThrow();
    }

    sub_1DAAD8848(a1, a2);
    v26 = *(v15 + 32);
    v26(v18, v11, v14);
    v25 = v27;
    v26(v27, v18, v14);
  }

  else
  {
    a1 = v28;
    sub_1DACB7F24();
    if ((*(v15 + 48))(v13, 1, v14) == 1)
    {
      a2 = 0;
      v22 = 2;
      goto LABEL_9;
    }

    v24 = *(v15 + 32);
    v24(v20, v13, v14);
    v25 = v27;
    v24(v27, v20, v14);
  }

  return (*(v15 + 56))(v25, 0, 1, v14);
}

uint64_t sub_1DAAD7674@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a2;
  v28 = a3;
  v3 = MEMORY[0x1E69E6720];
  sub_1DAA7BCA8(0, &qword_1EE1239E8, MEMORY[0x1E6969BC0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v26 = &v23 - v5;
  v24 = sub_1DACB7F54();
  v6 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1DACB77D4();
  v23 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA7BCA8(0, &qword_1EE125280, MEMORY[0x1E6969530], v3);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v23 - v12;
  v14 = sub_1DACB7CC4();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DACB7C44();
  if (qword_1EE11F0E0 != -1)
  {
    swift_once();
  }

  v18 = sub_1DACB7EE4();
  __swift_project_value_buffer(v18, qword_1EE11F0E8);
  sub_1DACB7EB4();
  sub_1DACB7E74();
  v19 = v8;
  v20 = v24;
  (*(v6 + 8))(v19, v24);
  v21 = v26;
  (*(v6 + 16))(v26, v27, v20);
  (*(v6 + 56))(v21, 0, 1, v20);
  sub_1DACB77C4();
  sub_1DACB7E94();
  (*(v23 + 8))(v10, v25);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1DAAD8234(v13, &qword_1EE125280, MEMORY[0x1E6969530], MEMORY[0x1E69E6720], sub_1DAA7BCA8);
  }

  else
  {
    (*(v15 + 8))(v17, v14);
    v17 = v13;
  }

  return (*(v15 + 32))(v28, v17, v14);
}

uint64_t sub_1DAAD7AF8()
{

  v1 = qword_1EE11EA08;
  v2 = sub_1DACB7CC4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = qword_1EE11EA10;
  v4 = sub_1DACB8204();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = (v0 + qword_1EE11EA18);

  return __swift_destroy_boxed_opaque_existential_1(v5);
}

id sub_1DAAD7BC4(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_1DAAD7BFC(uint64_t a1)
{

  v2 = qword_1EE11EA08;
  v3 = sub_1DACB7CC4();
  (*(*(v3 - 8) + 8))(a1 + v2, v3);
  v4 = qword_1EE11EA10;
  v5 = sub_1DACB8204();
  (*(*(v5 - 8) + 8))(a1 + v4, v5);
  v6 = (a1 + qword_1EE11EA18);

  return __swift_destroy_boxed_opaque_existential_1(v6);
}

uint64_t sub_1DAAD7CD8()
{
  sub_1DAA7BCA8(0, &qword_1EE1239E8, MEMORY[0x1E6969BC0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_1DACB7F54();
  __swift_allocate_value_buffer(v3, qword_1EE13E2A0);
  v4 = __swift_project_value_buffer(v3, qword_1EE13E2A0);
  sub_1DACB7F24();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DAAD7E18()
{
  v0 = sub_1DACB7F54();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v15 - v5;
  v7 = sub_1DACB7E54();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1DACB7EE4();
  __swift_allocate_value_buffer(v11, qword_1EE11F0E8);
  __swift_project_value_buffer(v11, qword_1EE11F0E8);
  (*(v8 + 104))(v10, *MEMORY[0x1E6969868], v7);
  if (qword_1EE11F0D0 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v0, qword_1EE13E2A0);
  v13 = *(v1 + 16);
  v13(v6, v12, v0);
  sub_1DACB7E64();
  v13(v4, v6, v0);
  sub_1DACB7EC4();
  (*(v1 + 8))(v6, v0);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1DAAD807C(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3 > 1u)
  {
    if (a3 == 2)
    {
      if (a6 == 2)
      {
        return a1 == a4;
      }
    }

    else if (a1 | a2)
    {
      if (a1 ^ 1 | a2)
      {
        if (a6 == 3 && a4 == 2 && !a5)
        {
          return 1;
        }
      }

      else if (a6 == 3 && a4 == 1 && !a5)
      {
        return 1;
      }
    }

    else if (a6 == 3 && !(a5 | a4))
    {
      return 1;
    }
  }

  else if (a3)
  {
    if (a6 == 1)
    {
      if (a1 == a4 && a2 == a5)
      {
        return 1;
      }

      return sub_1DACBA174();
    }
  }

  else if (!a6)
  {
    if (a1 == a4 && a2 == a5)
    {
      return 1;
    }

    return sub_1DACBA174();
  }

  return 0;
}

void sub_1DAAD8184(uint64_t a1)
{
  if (!qword_1EE120B40)
  {
    v2 = sub_1DAAD81E0();
    v4 = type metadata accessor for SDSBaseOperationResponse(a1, &type metadata for SDSQuoteResponse, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &qword_1EE120B40);
    }
  }
}

unint64_t sub_1DAAD81E0()
{
  result = qword_1EE1229A8;
  if (!qword_1EE1229A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1229A8);
  }

  return result;
}

uint64_t sub_1DAAD8234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1DAAD8294(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1DAAD82F4()
{
  result = qword_1ECBE6960;
  if (!qword_1ECBE6960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE6960);
  }

  return result;
}

uint64_t sub_1DAAD8348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

void sub_1DAAD83BC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1DAAD8488(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  v37 = a2;
  v38 = a3;
  v36 = sub_1DACB7CC4();
  v5 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Chart.Entry(0);
  v34 = *(v8 - 8);
  v35 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  if (v11)
  {
    v46 = v3;
    v47 = MEMORY[0x1E69E7CC0];
    v32 = v7;
    sub_1DAA83020(0, v11, 0);
    v13 = v32;
    v12 = v47;
    v33 = (v5 + 32);
    v14 = (a1 + 112);
    while (1)
    {
      v44 = v11;
      v45 = v12;
      v15 = *(v14 - 10);
      v16 = *(v14 - 72);
      v17 = *(v14 - 8);
      v18 = *(v14 - 56);
      v43 = *(v14 - 6);
      v42 = *(v14 - 40);
      v12 = *(v14 - 4);
      v19 = *(v14 - 24);
      v20 = *(v14 - 2);
      v41 = *(v14 - 1);
      v21 = *v14;
      v39 = v18;
      v40 = v21;
      v22 = v46;
      v37(v20);
      if (v22)
      {
        break;
      }

      v46 = 0;
      (*v33)(v10, v13, v36);
      v23 = v35;
      v24 = &v10[v35[5]];
      *v24 = v12;
      v24[8] = v19;
      v25 = &v10[v23[6]];
      *v25 = v15;
      v25[8] = v16;
      v26 = &v10[v23[7]];
      *v26 = v17;
      v26[8] = v39;
      v27 = &v10[v23[8]];
      *v27 = v43;
      v27[8] = v42;
      v28 = &v10[v23[9]];
      *v28 = v41;
      v28[8] = v40;
      v12 = v45;
      v47 = v45;
      v30 = *(v45 + 16);
      v29 = *(v45 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_1DAA83020((v29 > 1), v30 + 1, 1);
        v13 = v32;
        v12 = v47;
      }

      v14 += 88;
      *(v12 + 16) = v30 + 1;
      sub_1DAAD87CC(v10, v12 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v30, type metadata accessor for Chart.Entry);
      v11 = v44 - 1;
      if (v44 == 1)
      {
        return v12;
      }
    }
  }

  return v12;
}

uint64_t sub_1DAAD87CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DAAD8834(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
    return sub_1DACB71E4();
  }

  return result;
}

uint64_t sub_1DAAD8848(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10StocksCore22SDSChartOperationErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1DAAD88AC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1DAAD88F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t sub_1DAAD8938(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

__n128 ScoredArticle.score.getter@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2 + *(a1 + 36);
  v4 = *(v3 + 80);
  *(a2 + 64) = *(v3 + 64);
  *(a2 + 80) = v4;
  *(a2 + 96) = *(v3 + 96);
  *(a2 + 112) = *(v3 + 112);
  v5 = *(v3 + 16);
  *a2 = *v3;
  *(a2 + 16) = v5;
  result = *(v3 + 32);
  v7 = *(v3 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v7;
  return result;
}

uint64_t sub_1DAAD89C8(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1DAAD8A40(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_27;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 120;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (v14)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (v14)
      {
        goto LABEL_20;
      }
    }

    goto LABEL_27;
  }

  if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_27:
    if (v5 >= 0xFE)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *(((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 56);
    if (v17 >= 2)
    {
      return ((v17 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    return 0;
  }

LABEL_20:
  v15 = v14 - 1;
  if (v10)
  {
    v15 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v15) + 1;
}

double sub_1DAAD8B80(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 120;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFF88)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFF88)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFF88)
    {
      v15 = ~v7 + a2;
      v16 = a1;
      bzero(a1, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 120);
      a1 = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(a1 + v9) = v14;
      }

      else
      {
        *(a1 + v9) = v14;
      }
    }

    else if (v13)
    {
      *(a1 + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(a1 + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(a1 + v9) = 0;
  }

  else if (v13)
  {
    *(a1 + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0xFE)
  {
    v19 = (a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (a2 > 0xFE)
    {
      result = 0.0;
      *(v19 + 104) = 0u;
      *(v19 + 88) = 0u;
      *(v19 + 72) = 0u;
      *(v19 + 56) = 0u;
      *(v19 + 40) = 0u;
      *(v19 + 24) = 0u;
      *(v19 + 8) = 0u;
      *v19 = a2 - 255;
    }

    else
    {
      *(v19 + 56) = a2 + 1;
    }
  }

  else
  {
    v18 = *(v5 + 56);

    v18();
  }

  return result;
}

__n128 sub_1DAAD8D70@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  v10 = a5 + *(type metadata accessor for ScoredArticle(0, a3, a4, v9) + 36);
  v11 = *(a2 + 80);
  *(v10 + 64) = *(a2 + 64);
  *(v10 + 80) = v11;
  *(v10 + 96) = *(a2 + 96);
  *(v10 + 112) = *(a2 + 112);
  v12 = *(a2 + 16);
  *v10 = *a2;
  *(v10 + 16) = v12;
  result = *(a2 + 32);
  v14 = *(a2 + 48);
  *(v10 + 32) = result;
  *(v10 + 48) = v14;
  return result;
}

uint64_t sub_1DAAD8E44()
{
  v0 = sub_1DACB78E4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1DACB7E44();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1DACB92E4();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1DACB92C4();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1DACB92B4();
  sub_1DACB92A4();
  sub_1DACB6ED4();
  sub_1DACB9294();

  sub_1DACB92A4();
  sub_1DACB92D4();
  sub_1DACB7DF4();
  (*(v1 + 104))(v3, *MEMORY[0x1E6968DF0], v0);
  return sub_1DACB7914();
}

uint64_t sub_1DAAD90A8()
{
  v0 = sub_1DACB78E4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1DACB7E44();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1DACB92E4();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1DACB7904();
  __swift_allocate_value_buffer(v6, qword_1ECBE6968);
  __swift_project_value_buffer(v6, qword_1ECBE6968);
  sub_1DACB9284();
  sub_1DACB7DF4();
  (*(v1 + 104))(v3, *MEMORY[0x1E6968DF0], v0);
  return sub_1DACB7914();
}

uint64_t sub_1DAAD92C0()
{
  sub_1DAA6A9E0(0, &qword_1EE123A80, MEMORY[0x1E6968E10], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_1DACB78E4();
  v3 = *(v12[0] - 8);
  MEMORY[0x1EEE9AC00](v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DACB7E44();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = sub_1DACB92E4();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_1DACB7904();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = sub_1DACB7084();
  __swift_allocate_value_buffer(v10, qword_1ECBE6980);
  __swift_project_value_buffer(v10, qword_1ECBE6980);
  sub_1DACB9284();
  sub_1DACB7DF4();
  (*(v3 + 104))(v5, *MEMORY[0x1E6968DF0], v12[0]);
  sub_1DACB7914();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_1DACB7094();
}

uint64_t sub_1DAAD9600@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  if (*a1 == -1)
  {
    v7 = a2(0);
  }

  else
  {
    swift_once();
    v7 = a2(0);
  }

  v8 = v7;
  v9 = __swift_project_value_buffer(v7, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

uint64_t sub_1DAAD96A4@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E695A590];
  v3 = sub_1DACB7374();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1DAAD9718()
{
  sub_1DAADD1F4(0, &qword_1ECBE6998, sub_1DAAD98EC, &type metadata for DeleteWatchlistsIntent, MEMORY[0x1E695A4A8]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1DAADD1F4(0, &qword_1ECBE69A8, sub_1DAAD98EC, &type metadata for DeleteWatchlistsIntent, MEMORY[0x1E695A4A0]);
  MEMORY[0x1EEE9AC00](v1);
  sub_1DAAD98EC();
  sub_1DACB7254();
  sub_1DACB7244();
  swift_getKeyPath();
  sub_1DAAD9964(0);
  sub_1DACB7234();

  sub_1DACB7244();
  sub_1DACB7264();
  return sub_1DACB7204();
}

unint64_t sub_1DAAD98EC()
{
  result = qword_1ECBE69A0;
  if (!qword_1ECBE69A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE69A0);
  }

  return result;
}

void sub_1DAAD9964(uint64_t a1)
{
  if (!qword_1ECBE69B0)
  {
    sub_1DAAD99C4(255);
    v1 = sub_1DACBA314();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECBE69B0);
    }
  }
}

void sub_1DAAD99C4(uint64_t a1)
{
  if (!qword_1ECBE69B8)
  {
    sub_1DAA58C60(255, &qword_1ECBE69C0, &type metadata for WatchlistEntity, MEMORY[0x1E69E62F8]);
    sub_1DAAD9A4C();
    v1 = sub_1DACB7044();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECBE69B8);
    }
  }
}

unint64_t sub_1DAAD9A4C()
{
  result = qword_1ECBE69C8;
  if (!qword_1ECBE69C8)
  {
    sub_1DAA58C60(255, &qword_1ECBE69C0, &type metadata for WatchlistEntity, MEMORY[0x1E69E62F8]);
    sub_1DAA8E020();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE69C8);
  }

  return result;
}

uint64_t sub_1DAAD9B1C(uint64_t *a1, uint64_t *a2)
{
  sub_1DACB71E4();
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB6FC4();
}

uint64_t (*sub_1DAAD9BAC(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1DACB6FA4();
  return sub_1DAADD2B0;
}

uint64_t sub_1DAAD9C44(uint64_t a1, uint64_t *a2)
{
  sub_1DAA4D678(a1, v4);
  sub_1DAA4D678(v4, &v3);
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB6D34();
  __swift_destroy_boxed_opaque_existential_1(v4);
}

uint64_t sub_1DAAD9CBC(void *a1)
{
  sub_1DAA4D678(a1, v3);
  sub_1DACB6D34();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t (*sub_1DAAD9D00(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1DACB6D14();
  return sub_1DAAD9D74;
}

void sub_1DAAD9D78(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_1DAAD9DE8@<X0>(uint64_t *a1@<X8>)
{
  v33 = a1;
  v1 = sub_1DACB7274();
  v31 = *(v1 - 8);
  v32 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v30 = v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = MEMORY[0x1E69E6720];
  sub_1DAA6A9E0(0, &qword_1EE123AA0, MEMORY[0x1E6959F70], MEMORY[0x1E69E6720]);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v29 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v28 = v27 - v7;
  sub_1DAA6A9E0(0, &qword_1EE123A80, MEMORY[0x1E6968E10], v3);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v27[0] = v27 - v9;
  v10 = sub_1DACB78E4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1DACB7E44();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v15 = sub_1DACB92E4();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v16 = sub_1DACB7904();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  sub_1DAAD99C4(0);
  v27[1] = v18;
  sub_1DACB9284();
  sub_1DACB7DF4();
  v19 = *MEMORY[0x1E6968DF0];
  v20 = *(v11 + 104);
  v20(v13, v19, v10);
  sub_1DACB7914();
  sub_1DACB9284();
  sub_1DACB7DF4();
  v20(v13, v19, v10);
  v21 = v27[0];
  sub_1DACB7914();
  (*(v17 + 56))(v21, 0, 1, v16);
  v37 = 0;
  v22 = sub_1DACB6E84();
  v23 = *(*(v22 - 8) + 56);
  v23(v28, 1, 1, v22);
  v23(v29, 1, 1, v22);
  sub_1DAA6A9E0(0, &qword_1EE123AB0, sub_1DAADA3B0, MEMORY[0x1E6959D18]);
  sub_1DACB6D94();
  v34 = 0u;
  v35 = 0u;
  v36 = 0;
  sub_1DACB6D84();
  *&v34 = sub_1DACB6D54();
  (*(v31 + 104))(v30, *MEMORY[0x1E695A500], v32);
  sub_1DAADA414();
  sub_1DAADA468();
  v24 = sub_1DACB6FF4();
  v25 = v33;
  *v33 = v24;
  v36 = 0;
  v34 = 0u;
  v35 = 0u;
  sub_1DACB6D84();
  result = sub_1DACB6D54();
  v25[1] = result;
  return result;
}

unint64_t sub_1DAADA3B0()
{
  result = qword_1EE125E40;
  if (!qword_1EE125E40)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE125E40);
  }

  return result;
}

unint64_t sub_1DAADA414()
{
  result = qword_1ECBE69D0;
  if (!qword_1ECBE69D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE69D0);
  }

  return result;
}

unint64_t sub_1DAADA468()
{
  result = qword_1EE11EC00;
  if (!qword_1EE11EC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11EC00);
  }

  return result;
}

uint64_t sub_1DAADA4BC(uint64_t a1)
{
  *(v2 + 216) = a1;
  *(v2 + 224) = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1DAADA4E4, 0, 0);
}

uint64_t sub_1DAADA4E4()
{
  v32 = v0;
  if (qword_1EE11D388 != -1)
  {
    swift_once();
  }

  v1 = sub_1DACB8C94();
  v0[30] = __swift_project_value_buffer(v1, qword_1EE11D390);
  sub_1DACB71F4();
  sub_1DACB71F4();
  v2 = sub_1DACB8C74();
  v3 = sub_1DACB9914();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v30 = v5;
    *v4 = 136315138;
    sub_1DACB6FB4();
    v6 = v0[25];
    v7 = *(v6 + 16);
    if (v7)
    {
      v25 = v5;
      v26 = v4;
      v27 = v3;
      v28 = v2;
      v29 = v0;
      v31 = MEMORY[0x1E69E7CC0];
      sub_1DAA5859C(0, v7, 0);
      v8 = 0;
      v9 = v31;
      v10 = *(v31 + 16);
      v11 = 16 * v10;
      do
      {
        v12 = *(v6 + v8 + 32);
        v13 = *(v6 + v8 + 40);
        v31 = v9;
        v14 = *(v9 + 24);
        v15 = v10 + 1;
        sub_1DACB71E4();
        if (v10 >= v14 >> 1)
        {
          sub_1DAA5859C((v14 > 1), v15, 1);
          v9 = v31;
        }

        *(v9 + 16) = v15;
        v16 = v9 + v11;
        *(v16 + 32) = v12;
        *(v16 + 40) = v13;
        v11 += 16;
        v8 += 24;
        ++v10;
        --v7;
      }

      while (v7);

      v2 = v28;
      v0 = v29;
      v3 = v27;
      v5 = v25;
      v4 = v26;
    }

    else
    {

      v9 = MEMORY[0x1E69E7CC0];
    }

    v0[26] = v9;
    sub_1DAA58C60(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1DAA587CC();
    v17 = sub_1DACB9214();
    v19 = v18;

    v20 = sub_1DAA7ABE4(v17, v19, &v30);

    *(v4 + 4) = v20;
    _os_log_impl(&dword_1DAA3F000, v2, v3, "Deleting watchlists, ids=[%s]", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x1E1278C00](v5, -1, -1);
    MEMORY[0x1E1278C00](v4, -1, -1);
  }

  sub_1DACB6D24();
  v22 = v0[17];
  v21 = v0[18];
  __swift_project_boxed_opaque_existential_1(v0 + 14, v22);
  v23 = swift_task_alloc();
  v0[31] = v23;
  *v23 = v0;
  v23[1] = sub_1DAADA834;

  return sub_1DAC95D1C(v22, v21);
}

uint64_t sub_1DAADA834(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 256) = a1;
  *(v3 + 264) = v1;

  if (v1)
  {
    v4 = sub_1DAADB310;
  }

  else
  {
    v4 = sub_1DAADA948;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DAADA948()
{
  v54 = v0;
  __swift_destroy_boxed_opaque_existential_1((v0 + 112));
  sub_1DACB6FB4();
  v1 = *(v0 + 192);
  v2 = *(v0 + 256);
  v41 = *(v1 + 16);
  if (v41)
  {
    v3 = 0;
    v45 = v1 + 32;
    v46 = *(v2 + 16);
    v50 = *(v0 + 256);
    v44 = (v2 + 73);
    v4 = MEMORY[0x1E69E7CC0];
    v42 = *(v0 + 192);
    v43 = v0;
    while (v3 < *(v1 + 16))
    {
      v5 = v46;
      v6 = (v45 + 24 * v3);
      v7 = *v6;
      v52 = v6[1];
      v48 = v4;
      v49 = v6[2];
      v47 = v3 + 1;
      v8 = -1;
      v9 = v44;
      while (1)
      {
        if (!v5)
        {
          v21 = v7;
          swift_bridgeObjectRetain_n();
          v22 = v49;
          swift_retain_n();

          v23 = sub_1DACB8C74();
          v24 = sub_1DACB9904();

          if (os_log_type_enabled(v23, v24))
          {
            v25 = swift_slowAlloc();
            v26 = swift_slowAlloc();
            v53 = v26;
            *v25 = 136315138;
            sub_1DACB71E4();
            v27 = sub_1DAA7ABE4(v21, v52, &v53);

            *(v25 + 4) = v27;
            _os_log_impl(&dword_1DAA3F000, v23, v24, "No watchlist found matching id=%s", v25, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v26);
            v22 = v49;
            MEMORY[0x1E1278C00](v26, -1, -1);
            MEMORY[0x1E1278C00](v25, -1, -1);
          }

          sub_1DAADCB1C();
          swift_allocError();
          *v28 = v21;
          v28[1] = v52;
          v28[2] = v22;
          swift_willThrow();
          v29 = *(v43 + 8);
          goto LABEL_30;
        }

        if (++v8 >= *(v50 + 16))
        {
          __break(1u);
          goto LABEL_34;
        }

        v51 = *(v9 - 41);
        v10 = *(v9 - 33);
        v11 = *(v9 - 25);
        v12 = *(v9 - 17);
        v13 = *(v9 - 9);
        v14 = *(v9 - 1);
        v15 = *v9;
        if (v12 == v7 && v13 == v52)
        {
          break;
        }

        v9 += 48;
        --v5;
        v2 = sub_1DACBA174();
        if (v2)
        {
          goto LABEL_14;
        }
      }

      v12 = v7;
LABEL_14:
      sub_1DACB71E4();
      sub_1DACB71F4();
      sub_1DACB71E4();
      sub_1DACB71E4();
      sub_1DACB71E4();
      v17 = v48;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = sub_1DAA929C8(0, *(v48 + 2) + 1, 1, v48);
      }

      v19 = *(v17 + 2);
      v18 = *(v17 + 3);
      v4 = v17;
      if (v19 >= v18 >> 1)
      {
        v4 = sub_1DAA929C8((v18 > 1), v19 + 1, 1, v17);
      }

      *(v4 + 2) = v19 + 1;
      v20 = &v4[48 * v19];
      *(v20 + 4) = v51;
      *(v20 + 5) = v10;
      *(v20 + 6) = v11;
      *(v20 + 7) = v12;
      *(v20 + 8) = v13;
      v20[72] = v14;
      v20[73] = v15;
      v1 = v42;
      v3 = v47;
      v0 = v43;
      if (v47 == v41)
      {

        v2 = v4;
        goto LABEL_24;
      }
    }

LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v2 = MEMORY[0x1E69E7CC0];
LABEL_24:
  *(v0 + 272) = v2;
  v30 = *(v2 + 16);
  *(v0 + 280) = v30;
  if (v30)
  {
    *(v0 + 288) = 0;
    if (*(v2 + 16))
    {
      v31 = *(v2 + 40);
      *(v0 + 296) = v31;
      v32 = *(v2 + 48);
      *(v0 + 304) = v32;
      v33 = *(v2 + 56);
      *(v0 + 312) = v33;
      v34 = *(v2 + 64);
      *(v0 + 320) = v34;
      v35 = *(v2 + 72);
      v36 = *(v2 + 32);
      sub_1DACB71E4();
      sub_1DACB71E4();
      sub_1DACB71E4();
      sub_1DACB6D24();
      v37 = *(v0 + 176);
      v38 = *(v0 + 184);
      __swift_project_boxed_opaque_existential_1((v0 + 152), v37);
      *(v0 + 64) = v36;
      *(v0 + 72) = v31;
      *(v0 + 80) = v32;
      *(v0 + 88) = v33;
      *(v0 + 96) = v34;
      *(v0 + 104) = v35;
      *(v0 + 328) = (*(v38 + 80))(v0 + 64, v37, v38);
      v39 = swift_task_alloc();
      *(v0 + 336) = v39;
      *v39 = v0;
      v39[1] = sub_1DAADAE78;
      v2 = v0 + 16;

      return MEMORY[0x1EEE44EE0](v2);
    }

LABEL_35:
    __break(1u);
    return MEMORY[0x1EEE44EE0](v2);
  }

  sub_1DACB6EB4();
  v29 = *(v0 + 8);
LABEL_30:

  return v29();
}

uint64_t sub_1DAADAE78()
{
  v2 = *v1;
  *(*v1 + 344) = v0;

  if (v0)
  {

    v3 = sub_1DAADB374;
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1((v2 + 152));
    v3 = sub_1DAADAFFC;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DAADAFFC()
{
  v25 = v0;
  sub_1DACB71E4();
  sub_1DACB71E4();
  sub_1DACB71E4();
  v1 = sub_1DACB8C74();
  v2 = sub_1DACB9914();

  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 320);
  if (v3)
  {
    v5 = *(v0 + 312);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v24 = v7;
    *v6 = 136315138;

    v8 = sub_1DAA7ABE4(v5, v4, &v24);

    *(v6 + 4) = v8;
    _os_log_impl(&dword_1DAA3F000, v1, v2, "Successfully deleted watchlist id=%s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1E1278C00](v7, -1, -1);
    MEMORY[0x1E1278C00](v6, -1, -1);
  }

  else
  {
  }

  v10 = *(v0 + 288) + 1;
  if (v10 == *(v0 + 280))
  {

    sub_1DACB6EB4();
    v11 = *(v0 + 8);

    return v11();
  }

  else
  {
    *(v0 + 288) = v10;
    v13 = *(v0 + 272);
    if (v10 >= *(v13 + 16))
    {
      __break(1u);
    }

    else
    {
      v14 = v13 + 48 * v10;
      v15 = *(v14 + 40);
      *(v0 + 296) = v15;
      v16 = *(v14 + 48);
      *(v0 + 304) = v16;
      v17 = *(v14 + 56);
      *(v0 + 312) = v17;
      v18 = *(v14 + 64);
      *(v0 + 320) = v18;
      v19 = *(v14 + 72);
      v20 = *(v14 + 32);
      sub_1DACB71E4();
      sub_1DACB71E4();
      sub_1DACB71E4();
      sub_1DACB6D24();
      v21 = *(v0 + 176);
      v22 = *(v0 + 184);
      __swift_project_boxed_opaque_existential_1((v0 + 152), v21);
      *(v0 + 64) = v20;
      *(v0 + 72) = v15;
      *(v0 + 80) = v16;
      *(v0 + 88) = v17;
      *(v0 + 96) = v18;
      *(v0 + 104) = v19;
      *(v0 + 328) = (*(v22 + 80))(v0 + 64, v21, v22);
      v23 = swift_task_alloc();
      *(v0 + 336) = v23;
      *v23 = v0;
      v23[1] = sub_1DAADAE78;
      v9 = v0 + 16;
    }

    return MEMORY[0x1EEE44EE0](v9);
  }
}

uint64_t sub_1DAADB310()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 112));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DAADB374()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 152));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DAADB40C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECBE59B8 != -1)
  {
    swift_once();
  }

  v2 = sub_1DACB7904();
  v3 = __swift_project_value_buffer(v2, qword_1ECBE6968);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1DAADB4BC@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E695A590];
  v3 = sub_1DACB7374();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1DAADB534(uint64_t a1, uint64_t a2)
{
  sub_1DAADD1F4(0, &qword_1ECBE6998, sub_1DAAD98EC, &type metadata for DeleteWatchlistsIntent, MEMORY[0x1E695A4A8]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1DAADD1F4(0, &qword_1ECBE69A8, sub_1DAAD98EC, &type metadata for DeleteWatchlistsIntent, MEMORY[0x1E695A4A0]);
  MEMORY[0x1EEE9AC00](v3);
  sub_1DACB7254();
  sub_1DACB7244();
  swift_getKeyPath();
  sub_1DAAD9964(0);
  sub_1DACB7234();

  sub_1DACB7244();
  sub_1DACB7264();
  return sub_1DACB7204();
}

uint64_t sub_1DAADB70C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DAA94754;

  return sub_1DAADA4BC(a1);
}

uint64_t sub_1DAADB7A8(uint64_t a1)
{
  v2 = sub_1DAAD98EC();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

char *sub_1DAADB818(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1DAADCE90(0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_1DAADB910(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1DAA58C60(0, &qword_1EE11CF00, &type metadata for WatchlistEntity, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1DAADBA48(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1DAADCFEC(0);
  sub_1DAADD1F4(0, &qword_1EE11FFF0, sub_1DAADD07C, &type metadata for Stock, MEMORY[0x1E69D65A0]);
  v11 = *(*(v10 - 8) + 72);
  v12 = (*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  sub_1DAADD1F4(0, &qword_1EE11FFF0, sub_1DAADD07C, &type metadata for Stock, MEMORY[0x1E69D65A0]);
  v16 = *(v15 - 8);
  if (v5)
  {
    if (v13 < a4 || (v17 = (*(v16 + 80) + 32) & ~*(v16 + 80), v13 + v17 >= a4 + v17 + *(v16 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_1DAADBC84(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1DAADCF14(0);
  sub_1DAADCF98(0, &qword_1EE11FFE0, MEMORY[0x1E69E6158], MEMORY[0x1E69D6C20], MEMORY[0x1E69D65A0]);
  v11 = *(*(v10 - 8) + 72);
  v12 = (*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  sub_1DAADCF98(0, &qword_1EE11FFE0, MEMORY[0x1E69E6158], MEMORY[0x1E69D6C20], MEMORY[0x1E69D65A0]);
  v16 = *(v15 - 8);
  if (v5)
  {
    if (v13 < a4 || (v17 = (*(v16 + 80) + 32) & ~*(v16 + 80), v13 + v17 >= a4 + v17 + *(v16 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_1DAADBEDC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1DAA58C60(0, &qword_1EE11F528, &type metadata for StockNewsFeed, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 160);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[160 * v8])
    {
      memmove(v12, v13, 160 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1DAADC048(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1DAA58C60(0, &qword_1EE11CEF0, &type metadata for SymbolWidgetEntity, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1DAADC16C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1DAADD164(0);
  sub_1DAADD1F4(0, &qword_1ECBE6A50, sub_1DAADD25C, &type metadata for SymbolWidgetEntity, MEMORY[0x1E695A208]);
  v11 = *(*(v10 - 8) + 72);
  v12 = (*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  sub_1DAADD1F4(0, &qword_1ECBE6A50, sub_1DAADD25C, &type metadata for SymbolWidgetEntity, MEMORY[0x1E695A208]);
  v16 = *(v15 - 8);
  if (v5)
  {
    if (v13 < a4 || (v17 = (*(v16 + 80) + 32) & ~*(v16 + 80), v13 + v17 >= a4 + v17 + *(v16 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_1DAADC3A8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1DAA58C60(0, &qword_1EE11CEE0, &type metadata for WatchlistWidgetEntity, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1DAADC4CC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1DAA58C60(0, &qword_1EE11F538, &type metadata for StockRecord, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 104);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[104 * v8])
    {
      memmove(v12, v13, 104 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1DAADC60C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1DAA58C60(0, &qword_1EE11F4E8, &type metadata for Headline, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 144);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[144 * v8])
    {
      memmove(v12, v13, 144 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}