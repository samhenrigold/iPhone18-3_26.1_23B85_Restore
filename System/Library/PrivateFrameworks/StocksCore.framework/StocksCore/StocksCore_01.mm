char *sub_1DAA57678(char *result, int64_t a2, char a3, char *a4)
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
    sub_1DAA495C0(0, &qword_1EE11F4F0, &type metadata for Stock, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 136);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[136 * v8])
    {
      memmove(v12, v13, 136 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1DAA577B0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA44440(0, &unk_1EE125A00, &protocol descriptor for StockMetadataServiceType, 1);
  sub_1DACB8254();
  if (v8[3])
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1DAA46854(0, &qword_1EE125588, MEMORY[0x1E69D62B0], MEMORY[0x1E69D6A80]);
    v4 = sub_1DACB8224();
    if (v4)
    {
      v5 = v4;
      v6 = type metadata accessor for StockMetadataManager();
      swift_allocObject();
      result = sub_1DAA58848(v8, v5);
      a2[3] = v6;
      a2[4] = &off_1F5687428;
      *a2 = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

char *sub_1DAA57914(char *a1, int64_t a2, char a3)
{
  result = sub_1DAA57678(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1DAA5796C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_1DACB71F4();
  v1(v2);
}

uint64_t sub_1DAA579D4()
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
  sub_1DAA572B4(&unk_1EE123DF0, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  v5 = MEMORY[0x1E69E8030];
  sub_1DAA57F64(0, &qword_1EE123E78, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
  sub_1DAA57CA4(&qword_1EE123E70, &qword_1EE123E78, v5);
  sub_1DACB9BB4();
  (*(v0 + 104))(v2, *MEMORY[0x1E69E8090], v10);
  v6 = sub_1DACB9974();
  v7 = v11;
  *(v11 + 16) = v6;
  return v7;
}

unint64_t sub_1DAA57C58()
{
  result = qword_1EE123DE8;
  if (!qword_1EE123DE8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE123DE8);
  }

  return result;
}

uint64_t sub_1DAA57CA4(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1DAA57F64(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DAA57D08(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1DAA57FC8(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DAA57D6C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1DAA58090(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DAA57DD0(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1DAA580F4(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DAA57E34(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1DAA58158(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DAA57E98(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1DAA581BC(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DAA57EFC(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1DAA58220(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1DAA57F64(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1DAA57FC8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1DAA5802C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1DAA58090(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1DAA580F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1DAA58158(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1DAA581BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1DAA58220(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

double sub_1DAA58284@<D0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (!a2)
  {
    a1 = sub_1DAA58424(0x500000001);
  }

  v5 = a2;
  sub_1DACB71E4();
  v6 = sub_1DAA58424(0xF00000005);
  v8 = v7;
  MEMORY[0x1E1276F20](58, 0xE100000000000000);
  MEMORY[0x1E1276F20](a1, v5);
  *a3 = 0x51414453414ELL;
  *(a3 + 8) = 0xE600000000000000;
  *(a3 + 16) = a1;
  *(a3 + 24) = v5;
  *(a3 + 32) = v6;
  *(a3 + 40) = v8;
  *(a3 + 48) = 0x51414453414ELL;
  *(a3 + 56) = 0xE600000000000000;
  *(a3 + 64) = 0;
  v9 = qword_1EE122610;
  sub_1DACB71E4();
  if (v9 != -1)
  {
    swift_once();
  }

  v10 = qword_1EE13E388;
  v11 = a1;
  if (*(qword_1EE13E388 + 16))
  {
    v12 = sub_1DAA4BF3C(a1, v5);
    v11 = a1;
    if (v13)
    {
      v11 = *(*(v10 + 56) + 16 * v12);
    }
  }

  v14 = sub_1DACB71E4();
  *(a3 + 72) = v11;
  *(a3 + 80) = v14;
  v15 = qword_1EE13E390;
  if (*(qword_1EE13E390 + 16))
  {
    v16 = sub_1DAA4BF3C(a1, v5);
    if (v17)
    {
      v18 = v16;

      v19 = (*(v15 + 56) + 16 * v18);
      a1 = *v19;
      v5 = v19[1];
      sub_1DACB71E4();
    }
  }

  *(a3 + 88) = a1;
  *(a3 + 96) = v5;
  result = 0.0;
  *(a3 + 104) = 0u;
  *(a3 + 120) = 0u;
  return result;
}

unint64_t sub_1DAA58424(uint64_t a1)
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
    while (1)
    {
      result = sub_1DACB9414();
      if ((result & 0x8000000000000000) != 0)
      {
        break;
      }

      if (HIDWORD(result))
      {
        goto LABEL_13;
      }

      arc4random_uniform(result);
      sub_1DACB9434();
      v6 = sub_1DACB94C4();
      v15 = v4;
      v9 = *(v4 + 16);
      v8 = *(v4 + 24);
      if (v9 >= v8 >> 1)
      {
        v11 = v6;
        v12 = v7;
        sub_1DAA5859C((v8 > 1), v9 + 1, 1);
        v7 = v12;
        v6 = v11;
        v4 = v15;
      }

      *(v4 + 16) = v9 + 1;
      v10 = v4 + 16 * v9;
      *(v10 + 32) = v6;
      *(v10 + 40) = v7;
      if (!--v3)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
  }

  else
  {
LABEL_11:
    sub_1DAA613E8();
    sub_1DAA587CC();
    v13 = sub_1DACB9214();

    return v13;
  }

  return result;
}

char *sub_1DAA5859C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DAA586A8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1DAA585BC(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1DAA46854(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DAA58620(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1DAA5FE8C(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

char *sub_1DAA586A8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1DAA495C0(0, &qword_1EE123B50, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
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

unint64_t sub_1DAA587CC()
{
  result = qword_1EE123E90;
  if (!qword_1EE123E90)
  {
    sub_1DAA58C60(255, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE123E90);
  }

  return result;
}

uint64_t sub_1DAA58848(void *a1, uint64_t a2)
{
  v18 = a2;
  v3 = v2;
  v14 = a1;
  v17 = sub_1DACB81D4();
  v15 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v16 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1DACB86E4();
  MEMORY[0x1EEE9AC00](v5);
  v19 = MEMORY[0x1E69E7CC0];
  sub_1DAA4CCDC(&qword_1EE1255A8, MEMORY[0x1E69D67A0], MEMORY[0x1E69D67A8]);
  v6 = MEMORY[0x1E69D67A0];
  v13 = MEMORY[0x1E69E62F8];
  sub_1DAA58BFC(0, &qword_1EE125510, MEMORY[0x1E69D67A0], MEMORY[0x1E69E62F8]);
  sub_1DAA4F5E8(&qword_1EE125508, &qword_1EE125510, v6);
  sub_1DACB9BB4();
  sub_1DAA58CB0(0);
  swift_allocObject();
  *(v2 + 56) = sub_1DACB8354();
  *(v2 + 64) = 0;
  *(v2 + 72) = MEMORY[0x1E69E7CD0];
  v7 = v14;
  sub_1DAA4D678(v14, v2 + 16);
  v8 = MEMORY[0x1E69D6420];
  sub_1DAA58BFC(0, &qword_1EE1252D0, MEMORY[0x1E69D6420], MEMORY[0x1E69E6F90]);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1DACC1D20;
  sub_1DACB81C4();
  v19 = v9;
  sub_1DAA4CCDC(&qword_1EE1255D0, MEMORY[0x1E69D6420], MEMORY[0x1E69D6428]);
  sub_1DAA58BFC(0, &qword_1EE125540, v8, v13);
  sub_1DAA4F5E8(&qword_1EE125530, &qword_1EE125540, v8);
  sub_1DACB9BB4();
  sub_1DAA58EA0(0, &qword_1EE11FF48, &qword_1EE11FD30, MEMORY[0x1E69D61B8], MEMORY[0x1E69D6A80]);
  swift_allocObject();
  v10 = sub_1DACB8914();
  __swift_destroy_boxed_opaque_existential_1(v7);
  *(v3 + 80) = v10;
  return v3;
}

void sub_1DAA58BFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1DAA58C60(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1DAA58CB0(uint64_t a1)
{
  if (!qword_1EE120008)
  {
    sub_1DAA58DCC(255, &qword_1EE123E28, MEMORY[0x1E69E64E8]);
    sub_1DAA58D6C(255, &qword_1EE11FCB0, &type metadata for StockMetadataManager.CacheEntry, MEMORY[0x1E69E5E28]);
    sub_1DAA58E2C();
    v1 = sub_1DACB8374();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE120008);
    }
  }
}

void sub_1DAA58D6C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, void, uint64_t, void))
{
  if (!*a2)
  {
    v5 = a4(0, MEMORY[0x1E69E6158], a3, MEMORY[0x1E69E6168]);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1DAA58DCC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1DAA58E2C()
{
  result = qword_1EE11F990;
  if (!qword_1EE11F990)
  {
    sub_1DAA58DCC(255, &qword_1EE123E28, MEMORY[0x1E69E64E8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11F990);
  }

  return result;
}

void sub_1DAA58EA0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t, void *), uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1DAA58F08(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1DAA58F08(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for StockMetadataManager.StoreDescriptor;
    v8[1] = &type metadata for StockMetadataManager.CacheEntry;
    v8[2] = sub_1DAA58FA0();
    v8[3] = sub_1DAA58FF4();
    v8[4] = sub_1DAA59048();
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_1DAA58FA0()
{
  result = qword_1EE121708;
  if (!qword_1EE121708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE121708);
  }

  return result;
}

unint64_t sub_1DAA58FF4()
{
  result = qword_1EE121710;
  if (!qword_1EE121710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE121710);
  }

  return result;
}

unint64_t sub_1DAA59048()
{
  result = qword_1EE121718;
  if (!qword_1EE121718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE121718);
  }

  return result;
}

uint64_t sub_1DAA590C0()
{
  v0 = sub_1DAA4BDD8(&unk_1F567C528);
  sub_1DAA4BD7C();
  swift_arrayDestroy();
  v1 = sub_1DAA4BDD8(&unk_1F567C5C8);
  result = swift_arrayDestroy();
  qword_1EE13E388 = v0;
  qword_1EE13E390 = v1;
  return result;
}

void *sub_1DAA59144(void *a1, void *a2)
{
  v3 = v2;
  v75 = a2;
  v64 = a1;
  v72 = sub_1DACB81D4();
  MEMORY[0x1EEE9AC00](v72);
  v73 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA59C7C(0, &qword_1EE11FD10, MEMORY[0x1E695BD30]);
  v70 = *(v5 - 8);
  v71 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v69 = &v59 - v6;
  v62 = sub_1DACB7D04();
  v61 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v60 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DACB7E44();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v68 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1DACB92E4();
  v66 = *(v10 - 8);
  v67 = v10;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v65 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v74 = &v59 - v13;
  v63 = sub_1DACB9944();
  v14 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v16 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1DACB9924();
  MEMORY[0x1EEE9AC00](v17);
  v18 = sub_1DACB9004();
  MEMORY[0x1EEE9AC00](v18 - 8);
  *(v2 + 24) = 0;
  *(v2 + 32) = [objc_opt_self() standardUserDefaults];
  sub_1DAA420F4(0, &qword_1EE123DE8, 0x1E69E9610);
  sub_1DACB8FE4();
  v76 = MEMORY[0x1E69E7CC0];
  sub_1DAA59D78(&unk_1EE123DF0, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  sub_1DAA59DC0(0, &qword_1EE123E78, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
  sub_1DAA59E74();
  sub_1DACB9BB4();
  (*(v14 + 104))(v16, *MEMORY[0x1E69E8090], v63);
  v19 = v64;
  v20 = MEMORY[0x1E69E7CC0];
  *(v2 + 40) = sub_1DACB9974();
  *(v2 + 48) = 0;
  v21 = MEMORY[0x1E69E7CC8];
  *(v2 + 56) = v20;
  *(v2 + 64) = v21;
  *(v2 + 152) = 0;
  *(v2 + 160) = v20;
  *(v2 + 168) = 0;
  *(v2 + 176) = 0;
  sub_1DAA4D678(v19, v2 + 72);
  sub_1DAA4D678(v75, v2 + 112);
  v82 = MEMORY[0x1E69E7CD0];
  v22 = *(v2 + 32);
  v23 = sub_1DACB92F4();
  v24 = [v22 stringForKey_];

  if (v24)
  {
    v25 = sub_1DACB9324();
    v27 = v26;

    v28 = v74;
    sub_1DACB9284();
    v29 = v66;
    v30 = v67;
    (*(v66 + 16))(v65, v28, v67);
    if (qword_1EE123DD8 != -1)
    {
      swift_once();
    }

    v31 = qword_1EE13E470;
    sub_1DACB7DF4();
    v32 = sub_1DACB9384();
    v34 = v33;
    (*(v29 + 8))(v28, v30);
    v76 = v32;
    v77 = v34;
    v78 = MEMORY[0x1E69E7CC0];
    v79 = v25;
    v80 = v27;
  }

  else
  {
    v35 = v60;
    v36 = v61;
    v37 = v62;
    v38 = v74;
    sub_1DACB9284();
    v39 = v66;
    v40 = v67;
    (*(v66 + 16))(v65, v38, v67);
    if (qword_1EE123DD8 != -1)
    {
      swift_once();
    }

    v41 = qword_1EE13E470;
    sub_1DACB7DF4();
    v42 = sub_1DACB9384();
    v44 = v43;
    (*(v39 + 8))(v74, v40);
    sub_1DACB6D04();
    v45 = sub_1DACB7CE4();
    v47 = v46;
    (*(v36 + 8))(v35, v37);
    v76 = v42;
    v77 = v44;
    v78 = MEMORY[0x1E69E7CC0];
    v79 = v45;
    v80 = v47;
  }

  v81 = 160;
  sub_1DAA59D18();
  swift_allocObject();
  v48 = sub_1DACB8F54();
  v3[2] = v48;
  v76 = v48;
  sub_1DAA59D18();
  sub_1DAA59D78(&qword_1EE11FD08, sub_1DAA59D18, MEMORY[0x1E695BFB0]);
  sub_1DACB71F4();
  v49 = v69;
  sub_1DACB8F64();

  v50 = v3[4];
  *(swift_allocObject() + 16) = v50;
  sub_1DAA5A460(&qword_1EE11FD18, &qword_1EE11FD10, MEMORY[0x1E695BD30], MEMORY[0x1E695BD38]);
  v51 = v50;
  v52 = v71;
  sub_1DACB8F94();

  (*(v70 + 8))(v49, v52);
  sub_1DACB8EE4();

  v3[23] = v82;
  v53 = v19[3];
  v54 = v19[4];
  __swift_project_boxed_opaque_existential_1(v19, v53);
  v55 = *(v54 + 56);
  v56 = sub_1DACB71F4();
  v55(v56, &off_1F5692AB0, v53, v54);

  swift_allocObject();
  swift_weakInit();
  v76 = MEMORY[0x1E69E7CC0];
  sub_1DAA59D78(&qword_1EE1255D0, MEMORY[0x1E69D6420], MEMORY[0x1E69D6428]);
  sub_1DAA59DC0(0, &qword_1EE125540, MEMORY[0x1E69D6420], MEMORY[0x1E69E62F8]);
  sub_1DAA5A834();
  sub_1DACB9BB4();
  sub_1DAA5A90C(0);
  swift_allocObject();
  v57 = sub_1DACB8914();
  __swift_destroy_boxed_opaque_existential_1(v75);
  v3[3] = v57;

  __swift_destroy_boxed_opaque_existential_1(v19);
  return v3;
}

uint64_t sub_1DAA59C0C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DAA59C44()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void sub_1DAA59C7C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1DAA59D18();
    v7 = v6;
    v8 = sub_1DAA59D78(&qword_1EE11FD08, sub_1DAA59D18, MEMORY[0x1E695BFB0]);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1DAA59D18()
{
  if (!qword_1EE11FD00)
  {
    v0 = sub_1DACB8F44();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE11FD00);
    }
  }
}

uint64_t sub_1DAA59D78(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1DAA59DC0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1DAA59E24(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1DAA59E74()
{
  result = qword_1EE123E70;
  if (!qword_1EE123E70)
  {
    sub_1DAA59DC0(255, &qword_1EE123E78, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE123E70);
  }

  return result;
}

id sub_1DAA59EFC()
{
  type metadata accessor for DummyClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_1EE13E470 = result;
  return result;
}

unint64_t sub_1DAA59F54()
{
  result = qword_1EE11FAB8;
  if (!qword_1EE11FAB8)
  {
    sub_1DAA59E24(255, &qword_1EE11FAC0, &type metadata for Stock, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11FAB8);
  }

  return result;
}

uint64_t sub_1DAA59FF4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
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

__n128 __swift_memcpy136_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_1DAA5A088@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  *a2 = v3;
  a2[1] = v2;
  return sub_1DACB71E4();
}

char *sub_1DAA5A0A8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1DAA58C60(0, &qword_1EE11F4F0, &type metadata for Stock, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 136);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[136 * v8])
    {
      memmove(v12, v13, 136 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1DAA5A1E0(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1DAA5A0A8(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 2);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 2) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

__n128 __swift_memcpy42_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1DAA5A460(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1DAA59C7C(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DAA5A4A4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 42) = 1;
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

    *(result + 42) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DAA5A4F0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 42))
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

void sub_1DAA5A540(uint64_t a1, void *a2)
{
  v3 = sub_1DACB92F4();
  v4 = sub_1DACB92F4();
  [a2 setValue:v3 forKey:v4];
}

uint64_t sub_1DAA5A5C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  type metadata accessor for WatchlistServiceObserverProxy();
  v5 = swift_allocObject();
  *(v5 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + 24) = a2;
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  v6 = sub_1DACB71F4();
  MEMORY[0x1E12770F0](v6);
  if (*((*(v3 + 40) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + 40) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_20:
    sub_1DACB9694();
  }

  sub_1DACB96F4();
  v7 = *(v3 + 40);
  swift_endAccess();
  v13 = MEMORY[0x1E69E7CC0];
  if (v7 >> 62)
  {
    v8 = sub_1DACB9E14();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_1DACB71E4();
  if (v8)
  {
    v12 = v3;
    v3 = 0;
    while (1)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1E12777A0](v3, v7);
        v9 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
LABEL_15:
          __break(1u);
LABEL_16:
          v3 = v12;
          v10 = v13;
          goto LABEL_18;
        }
      }

      else
      {
        if (v3 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_20;
        }

        sub_1DACB71F4();
        v9 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          goto LABEL_15;
        }
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_unknownObjectRelease();
        sub_1DACB9D34();
        sub_1DACB9D74();
        sub_1DACB9D84();
        sub_1DACB9D44();
      }

      else
      {
      }

      ++v3;
      if (v9 == v8)
      {
        goto LABEL_16;
      }
    }
  }

  v10 = MEMORY[0x1E69E7CC0];
LABEL_18:

  *(v3 + 40) = v10;
}

unint64_t sub_1DAA5A834()
{
  result = qword_1EE125530;
  if (!qword_1EE125530)
  {
    sub_1DAB5FC04(255, &qword_1EE125540, MEMORY[0x1E69D6420], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE125530);
  }

  return result;
}

void sub_1DAA5A8BC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1DAA5A90C(uint64_t a1)
{
  if (!qword_1EE11FF38)
  {
    sub_1DAA5A8BC(255, &qword_1EE11FDF0, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D6B18]);
    v1 = sub_1DACB8924();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE11FF38);
    }
  }
}

void sub_1DAA5A9C4(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  os_unfair_lock_lock((v2 + 152));
  v5 = (v2 + 160);
  v6 = *(v2 + 160);
  v15 = MEMORY[0x1E69E7CC0];
  if (v6 >> 62)
  {
LABEL_16:
    v7 = sub_1DACB9E14();
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
LABEL_3:
      v13 = a2;
      v14 = v3;
      v8 = 0;
      v3 = (v6 & 0xC000000000000001);
      a2 = v6 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v3)
        {
          MEMORY[0x1E12777A0](v8, v6);
          v9 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:
            v3 = v14;
            v10 = v15;
            a2 = v13;
            goto LABEL_18;
          }
        }

        else
        {
          if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_16;
          }

          sub_1DACB71F4();
          v9 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            goto LABEL_13;
          }
        }

        if (swift_unknownObjectWeakLoadStrong())
        {
          swift_unknownObjectRelease();
          sub_1DACB9D34();
          sub_1DACB9D74();
          sub_1DACB9D84();
          sub_1DACB9D44();
        }

        else
        {
        }

        ++v8;
        if (v9 == v7)
        {
          goto LABEL_14;
        }
      }
    }
  }

  v10 = MEMORY[0x1E69E7CC0];
LABEL_18:

  *v5 = v10;
  type metadata accessor for WatchlistManagerObserverProxy();
  v11 = swift_allocObject();
  *(v11 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v11 + 24) = a2;
  v12 = swift_unknownObjectWeakAssign();
  MEMORY[0x1E12770F0](v12);
  if (*((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1DACB9694();
  }

  sub_1DACB96F4();

  os_unfair_lock_unlock(v3 + 38);
}

uint64_t sub_1DAA5AC38(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x1E695BD70];
  sub_1DAA59C7C(0, &qword_1EE11D298, MEMORY[0x1E695BD70]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v11 - v8;
  v11[1] = (*(a2 + 16))(a1, a2);
  sub_1DAA59D18();
  sub_1DAA59D78(&qword_1EE11FD08, sub_1DAA59D18, MEMORY[0x1E695BFB0]);
  sub_1DACB8F74();

  sub_1DAA5A460(&qword_1EE11D2A0, &qword_1EE11D298, v4, MEMORY[0x1E695BD78]);
  sub_1DAA5AE10();
  sub_1DACB8F84();
  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_1DAA5AE10()
{
  result = qword_1EE120138;
  if (!qword_1EE120138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE120138);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for CurrencyConversion.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1DAA5AF38(void *a1, uint64_t *a2, uint64_t a3)
{
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
  }

  return sub_1DACB71F4();
}

void sub_1DAA5AF98()
{
  type metadata accessor for AppGroup(0);
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtC10StocksCore8AppGroup____lazy_storage___containerURL;
  v2 = sub_1DACB7AB4();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + 16) = 0xD000000000000016;
  *(v0 + 24) = 0x80000001DACECEE0;
  v3 = (v0 + OBJC_IVAR____TtC10StocksCore8AppGroup_settingsDomain);
  *v3 = 0xD000000000000016;
  v3[1] = 0x80000001DACECEE0;
  v4 = *MEMORY[0x1E69D6E98];
  v5 = sub_1DACB8034();
  (*(*(v5 - 8) + 104))(v3, v4, v5);
  v6 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v7 = sub_1DACB92F4();
  v8 = [v6 initWithSuiteName_];

  if (v8)
  {
    *(v0 + OBJC_IVAR____TtC10StocksCore8AppGroup_userDefaults) = v8;
    qword_1EE125758 = v0;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1DAA5B0EC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC10StocksCore8AppGroup_settingsDomain;
  v4 = sub_1DACB8034();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1DAA5B188()
{
  v0 = sub_1DACB8024();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1DACB8034();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DACB7FA4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA5B418(0);
  (*(v9 + 104))(v11, *MEMORY[0x1E69D6D00], v8);
  if (qword_1EE125750 != -1)
  {
    swift_once();
  }

  (*(v5 + 16))(v7, qword_1EE125758 + OBJC_IVAR____TtC10StocksCore8AppGroup_settingsDomain, v4);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E90], v0);
  result = sub_1DACB8084();
  qword_1EE120060 = result;
  return result;
}

void sub_1DAA5B418(uint64_t a1)
{
  if (!qword_1EE124128)
  {
    sub_1DACB7FA4();
    sub_1DAA5B47C();
    v1 = sub_1DACB80A4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE124128);
    }
  }
}

unint64_t sub_1DAA5B47C()
{
  result = qword_1EE124150;
  if (!qword_1EE124150)
  {
    sub_1DACB7FA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124150);
  }

  return result;
}

uint64_t sub_1DAA5B4F8()
{
  v0 = sub_1DACB8024();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1DACB8034();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1DAA4A8CC(0, &qword_1EE120038, sub_1DAA5B83C, &type metadata for NewsProvider);
  v10[15] = 0;
  *v7 = sub_1DACB9324();
  v7[1] = v8;
  (*(v5 + 104))(v7, *MEMORY[0x1E69D6E98], v4);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E90], v0);
  sub_1DAA4A9E8(0, &qword_1EE11F4D0, &qword_1EE120048, &type metadata for NewsProvider);
  sub_1DAA4AA40(0, &qword_1EE120048, &type metadata for NewsProvider);
  *(swift_allocObject() + 16) = xmmword_1DACC2610;
  v10[14] = 0;
  sub_1DACB8044();
  v10[13] = 1;
  sub_1DACB8044();
  v10[12] = 2;
  sub_1DACB8044();
  sub_1DAA5B8EC();
  result = sub_1DACB8064();
  qword_1EE1200C0 = result;
  return result;
}

unint64_t sub_1DAA5B83C()
{
  result = qword_1EE123670;
  if (!qword_1EE123670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE123670);
  }

  return result;
}

unint64_t sub_1DAA5B898()
{
  result = qword_1EE123668;
  if (!qword_1EE123668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE123668);
  }

  return result;
}

unint64_t sub_1DAA5B8EC()
{
  result = qword_1EE123678[0];
  if (!qword_1EE123678[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE123678);
  }

  return result;
}

uint64_t sub_1DAA5B940(uint64_t a1)
{
  v2 = sub_1DAA5B994();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45770](a1, v2, v3);
}

unint64_t sub_1DAA5B994()
{
  result = qword_1EE123660;
  if (!qword_1EE123660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE123660);
  }

  return result;
}

void sub_1DAA5B9E8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEF6E6F696765526DLL;
  v4 = 0x656C707061;
  if (v2 != 1)
  {
    v4 = 0x6F6F686179;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x6F72467265666E69;
  }

  if (!v5)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t getEnumTagSinglePayload for CurrencyConversion.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_1DAA5BB10@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for StubIdentificationService(0);
  swift_allocObject();
  result = sub_1DAA5BD18();
  a1[3] = v2;
  a1[4] = &off_1F5690888;
  *a1 = result;
  return result;
}

void sub_1DAA5BB68()
{
  if (MEMORY[0x1E69E7D58])
  {
    sub_1DAA5BCB8(0, &qword_1ECBE9708, MEMORY[0x1E69E8300]);
  }
}

uint64_t type metadata accessor for StubIdentificationService(uint64_t a1)
{
  result = qword_1ECBE96F8;
  if (!qword_1ECBE96F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DAA5BC0C(uint64_t a1)
{
  sub_1DAA5BCB8(319, &qword_1ECBE9708, MEMORY[0x1E69E8300]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1DAA5BCB8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1DACB7D04();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1DAA5BD18()
{
  v1 = sub_1DACB7D04();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + OBJC_IVAR____TtC10StocksCore25StubIdentificationService_lockedUserID);
  sub_1DACB6D04();
  *v5 = 0;
  sub_1DAA5BCB8(0, &qword_1ECBE9708, MEMORY[0x1E69E8300]);
  v7 = v6;
  v8 = *(v6 + 28);
  sub_1DAA5BCB8(0, &qword_1ECBE9710, MEMORY[0x1E69E8318]);
  v10 = *(*(v9 - 8) + 64);
  bzero(&v5[v8], v10);
  v11 = *(v2 + 32);
  v11(&v5[v8], v4, v1);
  v12 = (v0 + OBJC_IVAR____TtC10StocksCore25StubIdentificationService_lockedAdsUserID);
  sub_1DACB6D04();
  *v12 = 0;
  v13 = *(v7 + 28);
  bzero(&v12[v13], v10);
  v11(&v12[v13], v4, v1);
  return v0;
}

uint64_t sub_1DAA5BEB8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA4F6B0(0, &qword_1EE125580, &qword_1EE1254C8, off_1E85E2088);
  result = sub_1DACB8244();
  if (result)
  {
    v4 = result;
    v5 = type metadata accessor for UserInfo();
    v6 = swift_allocObject();
    v7 = MEMORY[0x1E69E7CC0];
    *(v6 + 16) = v4;
    *(v6 + 24) = v7;
    sub_1DACB71F4();
    sub_1DACB71F4();
    sub_1DACB8904();

    a2[3] = v5;
    a2[4] = &off_1F5685960;
    *a2 = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DAA5BFBC(void *a1, uint64_t a2)
{
  v4 = sub_1DACB81D4();
  MEMORY[0x1EEE9AC00](v4 - 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_1DACB8234();
  v6 = v10[0];
  if (LOBYTE(v10[0]) == 2)
  {
    __break(1u);
  }

  else
  {
    sub_1DACB81C4();
    v7 = swift_allocObject();
    *(v7 + 16) = a2;
    *(v7 + 24) = v6 & 1;
    sub_1DAA4208C(0, &qword_1EE125580, &qword_1EE1254C8, off_1E85E2088, MEMORY[0x1E69D6A80]);
    swift_allocObject();
    sub_1DACB71F4();
    sub_1DACB8914();
    sub_1DAA4D678(a1, v10);
    v8 = swift_allocObject();
    *(v8 + 16) = v6 & 1;
    sub_1DAA4D460(v10, v8 + 24);
    v9 = sub_1DACB8904();

    return v9;
  }

  return result;
}

uint64_t sub_1DAA5C19C()
{

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_1DAA5C1D4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t type metadata accessor for UserLaunchHistory(uint64_t a1)
{
  result = qword_1EE11E998;
  if (!qword_1EE11E998)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DAA5C288(uint64_t a1)
{
  result = sub_1DACB7CC4();
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

uint64_t sub_1DAA5C338(void *a1)
{
  v2 = v1;
  sub_1DAA499D4(0, &qword_1EE125280, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v30 - v5;
  v7 = sub_1DACB7CC4();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v30 - v12;
  if (qword_1EE123E10 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v14 = qword_1EE123E18;
  *(v2 + 56) = qword_1EE123E18;
  sub_1DAA4D678(a1, v2 + 16);
  v15 = v14;
  v16 = sub_1DACB92F4();
  v17 = [v15 objectForKey_];

  if (v17)
  {
    sub_1DACB9B74();
    swift_unknownObjectRelease();
  }

  else
  {
    v30 = 0u;
    v31 = 0u;
  }

  v32[0] = v30;
  v32[1] = v31;
  if (!*(&v31 + 1))
  {
    sub_1DAADFA60(v32);
    (*(v8 + 56))(v6, 1, 1, v7);
    goto LABEL_10;
  }

  v18 = swift_dynamicCast();
  (*(v8 + 56))(v6, v18 ^ 1u, 1, v7);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
LABEL_10:
    sub_1DAA776C4(v6);
    sub_1DAA41DCC();
    v27 = sub_1DACB9AD4();
    v28 = sub_1DACB9914();
    sub_1DACB8C64("launched without a prior user start date, so falling back to the current date", 77, 2, &dword_1DAA3F000, v27, v28, MEMORY[0x1E69E7CC0]);

    sub_1DACB7CB4();
    __swift_destroy_boxed_opaque_existential_1(a1);
    (*(v8 + 32))(v2 + OBJC_IVAR____TtC10StocksCore17UserLaunchHistory_startDate, v11, v7);
    v26 = 1;
    goto LABEL_11;
  }

  v19 = *(v8 + 32);
  v19(v13, v6, v7);
  sub_1DAA499D4(0, &qword_1EE123B20, sub_1DAADF88C, MEMORY[0x1E69E6F90]);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1DACC1D20;
  sub_1DAA5C878(&qword_1EE123A30, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
  v21 = sub_1DACBA114();
  v23 = v22;
  *(v20 + 56) = MEMORY[0x1E69E6158];
  *(v20 + 64) = sub_1DAA443C8();
  *(v20 + 32) = v21;
  *(v20 + 40) = v23;
  sub_1DAA41DCC();
  v24 = sub_1DACB9AD4();
  v25 = sub_1DACB9914();
  sub_1DACB8C64("launched with a prior user start date: %{public}@", 49, 2, &dword_1DAA3F000, v24, v25, v20);

  __swift_destroy_boxed_opaque_existential_1(a1);
  v19((v2 + OBJC_IVAR____TtC10StocksCore17UserLaunchHistory_startDate), v13, v7);
  v26 = 0;
LABEL_11:
  *(v2 + OBJC_IVAR____TtC10StocksCore17UserLaunchHistory_isFirstLaunch) = v26;
  return v2;
}

void sub_1DAA5C7FC()
{
  v0 = objc_opt_self();
  v1 = sub_1DACB92F4();
  v2 = [v0 sc:v1 userDefaultsWithSuiteName:1 backupDisabled:?];

  qword_1EE123E18 = v2;
}

uint64_t sub_1DAA5C878(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DAA5C8C0(uint64_t a1)
{
  result = sub_1DAA5C878(&qword_1EE11E9B0, type metadata accessor for UserLaunchHistory, &unk_1DACC2BC8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1DAA5C950(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = (*v3 + *a3);
  os_unfair_lock_lock(v4);
  sub_1DAA5BCB8(0, &qword_1ECBE9708, MEMORY[0x1E69E8300]);
  v5 = sub_1DACB7CE4();
  os_unfair_lock_unlock(v4);
  return v5;
}

void *sub_1DAA5C9D0(void *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1DAA44440(0, &unk_1EE1258E8, &protocol descriptor for NewsUserProfileProviderType, 0);
  result = sub_1DACB8254();
  if (v4)
  {
    sub_1DACB8784();
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DAA5CA98@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA485B8(0, &qword_1EE125430, &protocolRef_FCPrivateDataContext);
  result = sub_1DACB8244();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA420F4(0, &unk_1EE125420, 0x1E69B54D8);
  result = sub_1DACB8244();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA485B8(0, &qword_1EE1252E8, &protocolRef_FCBundleSubscriptionManagerType);
  result = sub_1DACB8244();
  if (result)
  {
    v7 = result;
    type metadata accessor for NewsUserProfileProvider();
    v8 = swift_allocObject();
    v8[2] = v5;
    v8[3] = v6;
    v8[4] = v7;
    result = sub_1DAA5CC28(&qword_1EE1211E0, 255, type metadata accessor for NewsUserProfileProvider, &unk_1DACD3D78);
    *a2 = v8;
    a2[1] = result;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1DAA5CC28(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DAA5CC70(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DAA5CCB8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DAA5CD00(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DAA5CD48(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DAA5CD90(unint64_t *a1, uint64_t (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DAA5CDD4(uint64_t a1)
{
  *(a1 + 8) = sub_1DAA5CD90(&qword_1EE1211E8, type metadata accessor for NewsUserProfileProvider, &unk_1DACD3CE8);
  result = sub_1DAA5CD90(&qword_1EE1211F0, type metadata accessor for NewsUserProfileProvider, &unk_1DACD3D10);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1DAA5CE78@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v5 = a1(0);
  result = swift_allocObject();
  a3[3] = v5;
  a3[4] = a2;
  *a3 = result;
  return result;
}

void sub_1DAA5CEEC()
{
  if (!qword_1EE11D4D0)
  {
    v0 = sub_1DACB8374();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE11D4D0);
    }
  }
}

uint64_t sub_1DAA5CF50@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA46854(0, &qword_1EE125588, MEMORY[0x1E69D62B0], MEMORY[0x1E69D6A80]);
  v3 = sub_1DACB8224();
  if (v3)
  {
    v4 = v3;
    type metadata accessor for EarningsCalendarEventManager();
    swift_allocObject();
    v5 = sub_1DAA5D0A8(v4);

    result = sub_1DAA4F53C(&qword_1EE11DC48, type metadata accessor for EarningsCalendarEventManager, &unk_1DACCF028);
    *a2 = v5;
    a2[1] = result;
  }

  else
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_1DAA5D0A8(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1DACB81D4();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1DACB8174();
  MEMORY[0x1EEE9AC00](v4 - 8);
  *(v1 + 24) = MEMORY[0x1E69E7CC8];
  sub_1DACB8164();
  sub_1DACB8194();
  swift_allocObject();
  *(v1 + 32) = sub_1DACB8184();
  *(v1 + 40) = 1;
  v5 = MEMORY[0x1E69D6420];
  sub_1DAA5D42C(0, &qword_1EE1252D0, MEMORY[0x1E69D6420], MEMORY[0x1E69E6F90]);
  *(swift_allocObject() + 16) = xmmword_1DACC1D20;
  sub_1DACB81C4();
  sub_1DAA5D564(&qword_1EE1255D0, 255, MEMORY[0x1E69D6420], MEMORY[0x1E69D6428]);
  sub_1DAA5D42C(0, &qword_1EE125540, v5, MEMORY[0x1E69E62F8]);
  sub_1DAA4F64C(&qword_1EE125530, &qword_1EE125540, v5);
  sub_1DACB9BB4();
  sub_1DAA5D42C(0, &qword_1EE11D488, sub_1DAA5D6F4, MEMORY[0x1E69D6A80]);
  swift_allocObject();
  sub_1DACB71F4();
  *(v2 + 16) = sub_1DACB8914();
  sub_1DACB82E4();
  swift_allocObject();
  swift_weakInit();
  sub_1DACB71F4();
  sub_1DACB82D4();

  return v2;
}

uint64_t sub_1DAA5D3F4()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void sub_1DAA5D42C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1DAA5D490(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DAA5D4D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DAA5D520(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1DACB7CC4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DAA5D564(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DAA5D5AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1DAA5D5F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for EarningsCalendarEventManager.StoreDescriptor;
    v8[1] = type metadata accessor for EarningsCalendarEventModel(255);
    v8[2] = sub_1DAA5D7DC();
    v8[3] = sub_1DAA5D564(&qword_1EE11DD18, 255, type metadata accessor for EarningsCalendarEventModel, &unk_1DACCED90);
    v8[4] = sub_1DAA5D564(&qword_1EE11DD20, 255, type metadata accessor for EarningsCalendarEventModel, &unk_1DACCEDB8);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t type metadata accessor for EarningsCalendarEventModel(uint64_t a1)
{
  result = qword_1EE11DD08;
  if (!qword_1EE11DD08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DAA5D760(uint64_t a1)
{
  result = sub_1DACB7CC4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1DAA5D7DC()
{
  result = qword_1EE11DC60;
  if (!qword_1EE11DC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11DC60);
  }

  return result;
}

uint64_t sub_1DAA5D830(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = sub_1DAA5D564(&qword_1EE11DC50, a2, type metadata accessor for EarningsCalendarEventManager, &unk_1DACCEFC0);
  result = sub_1DAA5D564(&qword_1EE11DC58, v3, type metadata accessor for EarningsCalendarEventManager, &unk_1DACCEF80);
  *(a1 + 16) = result;
  return result;
}

void sub_1DAA5D8B4(uint64_t a1)
{
  sub_1DAA5D42C(0, &qword_1EE11D340, sub_1DAA5DB88, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v11 - v2;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1DACB88F4();
    sub_1DACB8D84();

    sub_1DAA5DB88(0);
    v5 = v4;
    v6 = *(v4 - 8);
    if ((*(v6 + 48))(v3, 1, v4) == 1)
    {
      __break(1u);
    }

    else
    {
      sub_1DACB8D64();
      (*(v6 + 8))(v3, v5);
      v7 = sub_1DACB89D4();
      sub_1DAA61630(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
      sub_1DACB8A54();

      sub_1DACB71F4();
      v8 = sub_1DACB89D4();
      sub_1DAA61B4C(0);
      sub_1DACB8A54();

      sub_1DACB71F4();
      v9 = sub_1DACB89D4();
      sub_1DACB8A64();

      v10 = sub_1DACB89D4();
      sub_1DACB8AA4();
    }
  }
}

uint64_t sub_1DAA5DBB0@<X0>(uint64_t *a1@<X8>)
{
  sub_1DACB88F4();
  sub_1DAA5D6F4(0);
  swift_allocObject();
  result = sub_1DACB8D74();
  *a1 = result;
  return result;
}

void *sub_1DAA5DC40@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1DACB8174();
  MEMORY[0x1EEE9AC00](v4 - 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA44440(0, &qword_1EE125FE0, &protocol descriptor for QuoteManagerType, 1);
  result = sub_1DACB8254();
  if (!v14)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA44440(0, &qword_1EE125E58, &protocol descriptor for SparklineManagerType, 1);
  result = sub_1DACB8254();
  if (!v12)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA44440(0, &qword_1EE125910, &protocol descriptor for AppConfigurationManagerType, 1);
  result = sub_1DACB8254();
  if (v10)
  {
    v6 = type metadata accessor for StockPriceDataManager();
    v7 = swift_allocObject();
    v8 = MEMORY[0x1E69E7CC0];
    v7[17] = MEMORY[0x1E69E7CC0];
    v7[18] = v8;
    sub_1DACB8164();
    sub_1DACB8194();
    swift_allocObject();
    v7[19] = sub_1DACB8184();
    sub_1DAA4D460(&v13, (v7 + 2));
    sub_1DAA4D460(&v11, (v7 + 7));
    result = sub_1DAA4D460(&v9, (v7 + 12));
    a2[3] = v6;
    a2[4] = &off_1F568B128;
    *a2 = v7;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1DAA5DE38@<X0>(uint64_t *a1@<X8>)
{
  v24 = a1;
  v1 = sub_1DACB8E64();
  v22 = *(v1 - 8);
  v23 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v21 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1DACB8EC4();
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v18 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1DACB8E84();
  v5 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DACB8E74();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1DACB8DF4();
  MEMORY[0x1EEE9AC00](v12);
  v13 = sub_1DACB8EA4();
  MEMORY[0x1EEE9AC00](v13);
  (*(v15 + 104))(&v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69D6288]);
  v25 = MEMORY[0x1E69E7CC0];
  sub_1DAA5E2DC(&qword_1EE125560, MEMORY[0x1E69D61E0]);
  sub_1DAA5EF58(0, &qword_1EE125500, MEMORY[0x1E69D61D0], MEMORY[0x1E69E62F8]);
  sub_1DAA5F13C();
  sub_1DACB9BB4();
  (*(v9 + 104))(v11, *MEMORY[0x1E69D6268], v8);
  (*(v5 + 104))(v7, *MEMORY[0x1E69D6270], v17);
  (*(v19 + 104))(v18, *MEMORY[0x1E69D62A0], v20);
  (*(v22 + 104))(v21, *MEMORY[0x1E69D6258], v23);
  sub_1DACB8ED4();
  swift_allocObject();
  LOBYTE(v25) = 1;
  result = sub_1DACB8EB4();
  *v24 = result;
  return result;
}

uint64_t sub_1DAA5E2DC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1DACB8DF4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DAA5E320@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA44440(0, &qword_1EE125FD8, &protocol descriptor for QuoteServiceType, 1);
  sub_1DACB8254();
  if (v8[3])
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1DAA46854(0, &qword_1EE125588, MEMORY[0x1E69D62B0], MEMORY[0x1E69D6A80]);
    v4 = sub_1DACB8224();
    if (v4)
    {
      v5 = v4;
      v6 = type metadata accessor for QuoteManager();
      swift_allocObject();
      result = sub_1DAA5E780(v8, v5);
      a2[3] = v6;
      a2[4] = &off_1F56819B0;
      *a2 = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1DAA5E4E0()
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
  sub_1DAA580F4(0, &qword_1EE123E78, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
  sub_1DAA57DD0(&qword_1EE123E70, &qword_1EE123E78, v5);
  sub_1DACB9BB4();
  (*(v0 + 104))(v2, *MEMORY[0x1E69E8090], v10);
  v6 = sub_1DACB9974();
  v7 = v11;
  *(v11 + 16) = v6;
  return v7;
}

uint64_t sub_1DAA5E780(void *a1, uint64_t a2)
{
  v18 = a2;
  v13 = a1;
  v17 = sub_1DACB81D4();
  v14 = *(v17 - 8);
  v15 = v14;
  MEMORY[0x1EEE9AC00](v17);
  v16 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1DACB86E4();
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_1DACB8174();
  MEMORY[0x1EEE9AC00](v5);
  sub_1DAA5EC5C(0, &unk_1EE11FEF0, MEMORY[0x1E69D6AA8]);
  swift_allocObject();
  *(v2 + 56) = sub_1DACB8964();
  v19 = MEMORY[0x1E69E7CC0];
  sub_1DAA5ED30(&qword_1EE120030, 255, MEMORY[0x1E69D6388], MEMORY[0x1E69D6390]);
  sub_1DAA5EE24(0);
  v6 = MEMORY[0x1E69E6328];
  sub_1DAA5ED30(&qword_1EE11FA80, 255, sub_1DAA5EE24, MEMORY[0x1E69E6328]);
  sub_1DACB9BB4();
  sub_1DACB8194();
  swift_allocObject();
  *(v2 + 64) = sub_1DACB8184();
  v7 = MEMORY[0x1E69E7CC0];
  v19 = MEMORY[0x1E69E7CC0];
  sub_1DAA5ED30(&qword_1EE1255A8, 255, MEMORY[0x1E69D67A0], MEMORY[0x1E69D67A8]);
  sub_1DAA5EE58(0);
  sub_1DAA5ED30(&qword_1EE125508, 255, sub_1DAA5EE58, v6);
  sub_1DACB9BB4();
  sub_1DAA5EE8C(0);
  swift_allocObject();
  *(v2 + 72) = sub_1DACB8354();
  *(v2 + 80) = 0;
  *(v2 + 88) = v7;
  v8 = v13;
  sub_1DAA4D678(v13, v2 + 16);
  sub_1DAA5EDC0(0, &qword_1EE1252D0, MEMORY[0x1E69D6420], MEMORY[0x1E69E6F90]);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1DACC1D20;
  sub_1DACB81C4();
  v19 = v9;
  sub_1DAA5ED30(&qword_1EE1255D0, 255, MEMORY[0x1E69D6420], MEMORY[0x1E69D6428]);
  sub_1DAA5EFBC(0);
  sub_1DAA5ED30(&qword_1EE125530, 255, sub_1DAA5EFBC, v6);
  sub_1DACB9BB4();
  sub_1DAA5EDC0(0, &qword_1EE11FF60, sub_1DAA5EFF0, MEMORY[0x1E69D6A80]);
  swift_allocObject();
  v10 = sub_1DACB8914();
  __swift_destroy_boxed_opaque_existential_1(v8);
  *(v2 + 96) = v10;
  return v2;
}

void sub_1DAA5EC5C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void, uint64_t, void))
{
  if (!*a2)
  {
    v6 = type metadata accessor for Quote(255);
    v7 = a3(a1, MEMORY[0x1E69E6158], v6, MEMORY[0x1E69E6168]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1DAA5ECCC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1DACB91A4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1DAA5ED30(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DAA5ED78(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1DAA5EDC0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1DAA5EE8C(uint64_t a1)
{
  if (!qword_1EE11FFF8)
  {
    sub_1DAA46720();
    sub_1DAA5EC5C(255, &qword_1EE11FC98, MEMORY[0x1E69E5E28]);
    sub_1DAA5ED30(&qword_1EE11F990, 255, sub_1DAA46720, MEMORY[0x1E69E64F8]);
    v1 = sub_1DACB8374();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE11FFF8);
    }
  }
}

void sub_1DAA5EF58(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1DAA5EFF0(uint64_t a1)
{
  if (!qword_1EE11FD48)
  {
    type metadata accessor for Quote(255);
    sub_1DAA5F0E8();
    sub_1DAA5ED30(&qword_1EE1202E0, 255, type metadata accessor for Quote, &unk_1DACCFF84);
    sub_1DAA5ED30(&qword_1EE1202E8, 255, type metadata accessor for Quote, &unk_1DACCFFAC);
    v1 = sub_1DACB8D94();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE11FD48);
    }
  }
}

unint64_t sub_1DAA5F0E8()
{
  result = qword_1EE123658;
  if (!qword_1EE123658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE123658);
  }

  return result;
}

unint64_t sub_1DAA5F13C()
{
  result = qword_1EE1254F8;
  if (!qword_1EE1254F8)
  {
    sub_1DAA5EF58(255, &qword_1EE125500, MEMORY[0x1E69D61D0], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1254F8);
  }

  return result;
}

uint64_t sub_1DAA5F1C4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA44440(0, &qword_1EE125E50, &protocol descriptor for SparklineServiceType, 1);
  sub_1DACB8254();
  if (v8[3])
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1DAA46854(0, &qword_1EE125588, MEMORY[0x1E69D62B0], MEMORY[0x1E69D6A80]);
    v4 = sub_1DACB8224();
    if (v4)
    {
      v5 = v4;
      v6 = type metadata accessor for SparklineManager();
      swift_allocObject();
      result = sub_1DAA5F8EC(v8, v5);
      a2[3] = v6;
      a2[4] = &off_1F568E0A0;
      *a2 = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1DAA5F384()
{
  v12 = sub_1DACB9944();
  v1 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1DACB9924();
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_1DACB9004();
  MEMORY[0x1EEE9AC00](v5 - 8);
  type metadata accessor for StubChartService();
  swift_allocObject();
  *(v0 + 16) = sub_1DAA5F64C();
  v10 = sub_1DAA57C58();
  sub_1DACB8FE4();
  v13 = MEMORY[0x1E69E7CC0];
  sub_1DAA572FC(&unk_1EE123DF0, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  v6 = MEMORY[0x1E69E8030];
  sub_1DAA57FC8(0, &qword_1EE123E78, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
  sub_1DAA57D08(&qword_1EE123E70, &qword_1EE123E78, v6);
  sub_1DACB9BB4();
  (*(v1 + 104))(v3, *MEMORY[0x1E69E8090], v12);
  v7 = sub_1DACB9974();
  v8 = v11;
  *(v11 + 24) = v7;
  return v8;
}

uint64_t sub_1DAA5F64C()
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
  sub_1DAA5738C(&unk_1EE123DF0, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  v5 = MEMORY[0x1E69E8030];
  sub_1DAA58220(0, &qword_1EE123E78, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
  sub_1DAA57EFC(&qword_1EE123E70, &qword_1EE123E78, v5);
  sub_1DACB9BB4();
  (*(v0 + 104))(v2, *MEMORY[0x1E69E8090], v10);
  v6 = sub_1DACB9974();
  v7 = v11;
  *(v11 + 16) = v6;
  return v7;
}

uint64_t sub_1DAA5F8EC(void *a1, uint64_t a2)
{
  v16 = a2;
  v3 = v2;
  v13 = a1;
  v4 = sub_1DACB81D4();
  v14 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v15 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DACB86E4();
  MEMORY[0x1EEE9AC00](v6);
  v17 = MEMORY[0x1E69E7CC0];
  sub_1DAA5CCB8(&qword_1EE1255A8, 255, MEMORY[0x1E69D67A0], MEMORY[0x1E69D67A8]);
  sub_1DAA5EE58(0);
  v7 = MEMORY[0x1E69E6328];
  sub_1DAA5CCB8(&qword_1EE125508, 255, sub_1DAA5EE58, MEMORY[0x1E69E6328]);
  sub_1DACB9BB4();
  sub_1DAA5FDC0(0);
  swift_allocObject();
  *(v2 + 56) = sub_1DACB8354();
  v8 = v13;
  sub_1DAA4D678(v13, v2 + 16);
  sub_1DAA5FEF0(0, &qword_1EE1252D0, MEMORY[0x1E69D6420], MEMORY[0x1E69E6F90]);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1DACC1D20;
  sub_1DACB81C4();
  v17 = v9;
  sub_1DAA5CCB8(&qword_1EE1255D0, 255, MEMORY[0x1E69D6420], MEMORY[0x1E69D6428]);
  sub_1DAA5EFBC(0);
  sub_1DAA5CCB8(&qword_1EE125530, 255, sub_1DAA5EFBC, v7);
  sub_1DACB9BB4();
  sub_1DAA5FEF0(0, &qword_1EE11FF58, sub_1DAA600B8, MEMORY[0x1E69D6A80]);
  swift_allocObject();
  v10 = sub_1DACB8914();
  __swift_destroy_boxed_opaque_existential_1(v8);
  *(v3 + 64) = v10;
  return v3;
}

void sub_1DAA5FC7C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1DACB91A4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1DAA5FCE0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void, uint64_t, void))
{
  if (!*a2)
  {
    v6 = type metadata accessor for Chart(255);
    v7 = a3(a1, MEMORY[0x1E69E6158], v6, MEMORY[0x1E69E6168]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1DAA5FD50(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void, uint64_t, void))
{
  if (!*a2)
  {
    v6 = type metadata accessor for Chart(255);
    v7 = a3(a1, MEMORY[0x1E69E6158], v6, MEMORY[0x1E69E6168]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1DAA5FDC0(uint64_t a1)
{
  if (!qword_1EE120000)
  {
    sub_1DAA46720();
    sub_1DAA5FCE0(255, &qword_1EE11FCA0, MEMORY[0x1E69E5E28]);
    sub_1DAA5CCB8(&qword_1EE11F990, 255, sub_1DAA46720, MEMORY[0x1E69E64F8]);
    v1 = sub_1DACB8374();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE120000);
    }
  }
}

void sub_1DAA5FE8C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1DAA5FEF0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1DAA5FF54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1DAA5FFB8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for SparklineManager.StoreDescriptor;
    v8[1] = type metadata accessor for Chart(255);
    v8[2] = sub_1DAA600D8();
    v8[3] = sub_1DAA5CCB8(&qword_1EE1203B0, 255, type metadata accessor for Chart, &unk_1DACC6834);
    v8[4] = sub_1DAA5CCB8(&qword_1EE1203B8, 255, type metadata accessor for Chart, &unk_1DACC685C);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_1DAA600D8()
{
  result = qword_1EE122900;
  if (!qword_1EE122900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE122900);
  }

  return result;
}

uint64_t sub_1DAA60188(uint64_t a1, unint64_t a2)
{
  sub_1DACB8144();
  swift_beginAccess();
  v4 = *(v2 + 144);
  v12 = MEMORY[0x1E69E7CC0];
  if (v4 >> 62)
  {
LABEL_21:
    v5 = sub_1DACB9E14();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_1DACB71E4();
  if (v5)
  {
    v11 = a2;
    a2 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1E12777A0](a2, v4);
        v6 = a2 + 1;
        if (__OFADD__(a2, 1))
        {
LABEL_14:
          __break(1u);
LABEL_15:
          v7 = v12;
          a2 = v11;
          goto LABEL_17;
        }
      }

      else
      {
        if (a2 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_21;
        }

        sub_1DACB71F4();
        v6 = a2 + 1;
        if (__OFADD__(a2, 1))
        {
          goto LABEL_14;
        }
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_unknownObjectRelease();
        sub_1DACB9D34();
        sub_1DACB9D74();
        sub_1DACB9D84();
        sub_1DACB9D44();
      }

      else
      {
      }

      ++a2;
      if (v6 == v5)
      {
        goto LABEL_15;
      }
    }
  }

  v7 = MEMORY[0x1E69E7CC0];
LABEL_17:

  *(v2 + 144) = v7;

  type metadata accessor for StockPriceDataManagerObserverProxy();
  v8 = swift_allocObject();
  *(v8 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v8 + 24) = a2;
  swift_unknownObjectWeakAssign();
  v9 = swift_beginAccess();
  MEMORY[0x1E12770F0](v9);
  if (*((*(v2 + 144) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + 144) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1DACB9694();
  }

  sub_1DACB96F4();
  swift_endAccess();
  return sub_1DACB8154();
}

void *sub_1DAA60450@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA44440(0, &qword_1EE125BD0, &protocol descriptor for FeatureAvailabilityType, 1);
  result = sub_1DACB8254();
  if (v5[3])
  {
    v4 = type metadata accessor for LanguageSettings();
    swift_allocObject();
    result = sub_1DAA60738(v5);
    a2[3] = v4;
    a2[4] = &off_1F5684240;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DAA60524()
{
  v0 = sub_1DACB8024();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1DACB8034();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1EE125750 != -1)
  {
    swift_once();
  }

  (*(v5 + 16))(v7, qword_1EE125758 + OBJC_IVAR____TtC10StocksCore8AppGroup_settingsDomain, v4);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E88], v0);
  v9[15] = 0;
  sub_1DAA60950(0, qword_1EE1255D8, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0]);
  swift_allocObject();
  result = sub_1DACB80B4();
  qword_1EE1200A0 = result;
  return result;
}

void *sub_1DAA60738(void *a1)
{
  v2 = v1;
  *(v1 + 16) = 0;
  *(v1 + 64) = MEMORY[0x1E69E7CC0];
  sub_1DAA4D678(a1, v1 + 24);
  if (qword_1EE120098 != -1)
  {
    swift_once();
  }

  swift_allocObject();
  swift_weakInit();
  sub_1DAA609A0(&qword_1EE122B38, v4, type metadata accessor for LanguageSettings, &unk_1DACC72B0);
  sub_1DACB7F94();

  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  *(v1 + 16) = (*(v6 + 24))(v5, v6) & v9 & 1;
  v7 = [objc_opt_self() defaultCenter];
  [v7 addObserver:v2 selector:sel_localeDidChange name:*MEMORY[0x1E695D8F0] object:0];

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

uint64_t sub_1DAA60918()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void sub_1DAA60950(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!*a2)
  {
    v5 = sub_1DACB80A4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1DAA609A0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

BOOL sub_1DAA60A7C()
{
  v0 = sub_1DACB7E24();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1DACB7E44();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA60E20(0, &qword_1EE123A20, MEMORY[0x1E6969610]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v20 - v9;
  if (qword_1EE1242B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v12 = qword_1EE1242C0;
  v11 = qword_1EE1242C8;
  sub_1DACB71E4();
  sub_1DACB7DF4();
  sub_1DACB7E34();
  (*(v5 + 8))(v7, v4);
  sub_1DACB7E04();
  (*(v1 + 8))(v3, v0);
  v13 = sub_1DACB7D44();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v10, 1, v13) == 1)
  {
    sub_1DAA6CA10(v10, &qword_1EE123A20, MEMORY[0x1E6969610]);
    v15 = 0;
    v16 = 0;
  }

  else
  {
    v15 = sub_1DACB7D34();
    v16 = v17;
    (*(v14 + 8))(v10, v13);
  }

  if ((v12 != 0x353534333431 || v11 != 0xE600000000000000) && (sub_1DACBA174() & 1) == 0)
  {

    goto LABEL_14;
  }

  if (!v16)
  {
LABEL_14:

    return 0;
  }

  if (v15 == 29286 && v16 == 0xE200000000000000)
  {

    return 1;
  }

  v19 = sub_1DACBA174();

  return (v19 & 1) != 0;
}

void sub_1DAA60E20(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t sub_1DAA60E74(uint64_t result, int a2, int a3)
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
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DAA60EEC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 408);
  type metadata accessor for EndpointConfiguration.Defaults();
  swift_initStaticObject();
  v4 = sub_1DAA619A0();
  sub_1DAA61D24(v3, v4, v5, a1);
}

id sub_1DAA6105C(void *a1, SEL *a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA420F4(0, &unk_1EE125490, 0x1E69B5210);
  result = sub_1DACB8244();
  if (result)
  {
    v4 = result;
    v5 = [result *a2];

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1DAA61100()
{
  if (!qword_1EE11FC58)
  {
    v0 = sub_1DACB91A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE11FC58);
    }
  }
}

double sub_1DAA6119C(char a1)
{
  v2 = v1;
  v4 = sub_1DACB7E44();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v9 = [objc_opt_self() currentLocale];
    sub_1DACB7D94();

    v10 = sub_1DACB7D54();
    v12 = v11;
    (*(v5 + 8))(v8, v4);
    if (v12)
    {
      v13 = *(v2 + 48);
      v14 = *(v2 + 56);
      __swift_project_boxed_opaque_existential_1((v2 + 24), v13);
      if ((*(v14 + 24))(v13, v14))
      {
        v15 = *(v2 + 16);
        sub_1DAA571EC(0, &qword_1EE11F4A8, sub_1DAB33850, MEMORY[0x1E69E6F90]);
        v16 = swift_allocObject();
        if (v15 == 1)
        {
          *&result = 2;
          *(v16 + 16) = xmmword_1DACC1D40;
          *(v16 + 32) = v10;
          *(v16 + 40) = v12;
          *(v16 + 48) = 0;
          *(v16 + 56) = 0;
        }

        else
        {
          *&result = 1;
          *(v16 + 16) = xmmword_1DACC1D20;
          *(v16 + 32) = v10;
          *(v16 + 40) = v12;
        }
      }

      else
      {
      }
    }

    else
    {
      sub_1DAA571EC(0, &qword_1EE11F4A8, sub_1DAB33850, MEMORY[0x1E69E6F90]);
      v17 = swift_allocObject();
      *&result = 1;
      *(v17 + 16) = xmmword_1DACC1D20;
      *(v17 + 32) = v10;
      *(v17 + 40) = 0;
    }
  }

  return result;
}

void sub_1DAA613E8()
{
  if (!qword_1EE123EA0)
  {
    v0 = sub_1DACB9724();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE123EA0);
    }
  }
}

void sub_1DAA6144C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1DAA6149C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1DAA614EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
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

void sub_1DAA61540(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1DAA61590(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1DAA615E0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1DAA61630(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1DAA61680(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
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

void sub_1DAA616D4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1DAA61724(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1DAA61774(uint64_t a1)
{
  if (!qword_1EE11FE28)
  {
    sub_1DAA61950(255, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    v1 = sub_1DACB8B74();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE11FE28);
    }
  }
}

uint64_t sub_1DAA617F0(uint64_t *a1)
{
  sub_1DAA61774(0);
  swift_allocObject();
  sub_1DACB71E4();
  return sub_1DACB8AE4();
}

uint64_t sub_1DAA61850(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1DAA61900(255, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DAA618B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1DAA61900(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1DAA61950(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1DAA619A0()
{
  if (qword_1EE124160 != -1)
  {
    swift_once();
  }

  sub_1DAA618B8(&qword_1EE1249B8, type metadata accessor for EndpointConfiguration.Defaults, &unk_1DACC663C);
  sub_1DACB7F84();
  v0 = 0x49544355444F5250;
  v1 = 0x314F4D4544;
  if (v5 != 6)
  {
    v1 = 0x324F4D4544;
  }

  v2 = 0x4C45564544;
  if (v5 != 4)
  {
    v2 = 0x584F42444E4153;
  }

  if (v5 <= 5u)
  {
    v1 = v2;
  }

  v3 = 16721;
  if (v5 != 2)
  {
    v3 = 1414743380;
  }

  if (v5)
  {
    v0 = 0x474E4947415453;
  }

  if (v5 > 1u)
  {
    v0 = v3;
  }

  if (v5 <= 3u)
  {
    return v0;
  }

  else
  {
    return v1;
  }
}

void sub_1DAA61B4C(uint64_t a1)
{
  if (!qword_1EE11D1B8)
  {
    type metadata accessor for EarningsCalendarEventModel(255);
    v1 = sub_1DACB91A4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE11D1B8);
    }
  }
}

uint64_t sub_1DAA61BB4(uint64_t *a1)
{
  sub_1DAA5D42C(0, &qword_1EE11D340, sub_1DAA5DB88, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v9 - v2;
  sub_1DACB88F4();
  sub_1DACB8D84();

  sub_1DAA5DB88(0);
  v5 = v4;
  v6 = *(v4 - 8);
  result = (*(v6 + 48))(v3, 1, v4);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v8 = sub_1DACB8D34();
    (*(v6 + 8))(v3, v5);
    return v8;
  }

  return result;
}

unint64_t sub_1DAA61D24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    v8 = (a1 + 32);
    while (1)
    {
      memcpy(__dst, v8, 0x110uLL);
      v9 = __dst[0] == a2 && __dst[1] == a3;
      if (v9 || (sub_1DACBA174() & 1) != 0)
      {
        break;
      }

      v8 += 272;
      if (!--v5)
      {
        goto LABEL_9;
      }
    }

    memcpy(a4, __dst, 0x110uLL);
    return sub_1DAB244EC(__dst, v52);
  }

  else
  {
LABEL_9:
    type metadata accessor for EndpointConfiguration.Defaults();
    swift_initStaticObject();
    v10 = sub_1DAA619A0();
    v50 = v11;
    v51 = v10;
    v12 = sub_1DAA61EDC();
    v48 = v13;
    v49 = v12;
    v14 = sub_1DAA625DC();
    v46 = v15;
    v47 = v14;
    v16 = sub_1DAA62758();
    v44 = v17;
    v45 = v16;
    v18 = sub_1DAA62758();
    v42 = v19;
    v43 = v18;
    v20 = sub_1DAA62914();
    v40 = v21;
    v41 = v20;
    v22 = sub_1DAA62A88();
    v38 = v23;
    v39 = v22;
    v24 = sub_1DAA62C98();
    v26 = v25;
    v27 = sub_1DAA62E08();
    v29 = v28;
    v30 = sub_1DAA63458();
    v32 = v31;
    v33 = sub_1DAA635C8();
    v35 = v34;
    result = sub_1DAA61EDC();
    *a4 = v51;
    a4[1] = v50;
    a4[2] = v49;
    a4[3] = v48;
    a4[4] = v47;
    a4[5] = v46;
    a4[6] = v45;
    a4[7] = v44;
    a4[8] = v43;
    a4[9] = v42;
    a4[10] = v41;
    a4[11] = v40;
    a4[12] = v39;
    a4[13] = v38;
    a4[14] = v24;
    a4[15] = v26;
    a4[16] = v27;
    a4[17] = v29;
    a4[18] = v30;
    a4[19] = v32;
    a4[20] = v33;
    a4[21] = v35;
    a4[22] = result;
    a4[23] = v37;
    *(a4 + 15) = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 13) = 0u;
    *(a4 + 14) = 0u;
    *(a4 + 12) = 0u;
  }

  return result;
}

unint64_t sub_1DAA61EDC()
{
  if (qword_1EE124160 != -1)
  {
    swift_once();
  }

  sub_1DAA618B8(&qword_1EE1249B8, type metadata accessor for EndpointConfiguration.Defaults, &unk_1DACC663C);
  sub_1DACB7F84();
  if (v1 <= 2u)
  {
    if (v1)
    {
      if (v1 == 1)
      {
        return 0xD00000000000004ELL;
      }

      else
      {
        return 0xD000000000000049;
      }
    }

    return 0xD000000000000041;
  }

  if (v1 - 5 < 3)
  {
    return 0xD000000000000041;
  }

  if (v1 == 3)
  {
    return 0xD00000000000004BLL;
  }

  else
  {
    return 0xD00000000000004CLL;
  }
}

uint64_t sub_1DAA62058(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for EarningsCalendarEventModel(0);
  v69 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA628E4(0);
  v8 = v7;
  v9 = *(v7 - 8);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v71 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v70 = &v62 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v15 = (&v62 - v14);
  sub_1DAA5D42C(0, &qword_1EE11D0F0, sub_1DAA628E4, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = (&v62 - v17);
  v19 = *a1;
  sub_1DACB71F4();
  sub_1DACB8144();

  v20 = -1 << *(v19 + 32);
  v21 = *(v19 + 64);
  v22 = ~v20;
  v23 = -v20;
  v72 = v19;
  v73 = v19 + 64;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  else
  {
    v24 = -1;
  }

  v74 = v22;
  v75 = 0;
  v76 = v24 & v21;
  v77 = 0;
  sub_1DACB71E4();
  sub_1DAA62F1C(v18);
  v67 = *(v9 + 48);
  v68 = v9 + 48;
  if (v67(v18, 1, v8) == 1)
  {
LABEL_5:
    sub_1DAA54B38(v72);
    sub_1DACB71F4();
    sub_1DACB8154();
  }

  sub_1DAA62C68(0);
  v65 = v8;
  v66 = v26;
  v63 = v18;
  v64 = v15;
  while (1)
  {
    v29 = *v18;
    v30 = *(v8 + 48);
    v31 = v18 + v30;
    v32 = *(v18 + v30);
    v33 = *(v18 + v30 + 8);
    v34 = v66;
    v35 = *(v66 + 48);
    v36 = (v15 + v30);
    *v15 = v29;
    *v36 = v32;
    v36[1] = v33;
    sub_1DAA7C5C4(&v31[v35], v36 + v35, type metadata accessor for EarningsCalendarEventModel);
    v37 = v70;
    sub_1DABB2464(v15, v70, sub_1DAA628E4);
    v38 = v37 + *(v8 + 48);

    v39 = (v38 + *(v34 + 48));
    v41 = *v39;
    v40 = v39[1];
    sub_1DACB71E4();
    sub_1DABB24CC(v39, type metadata accessor for EarningsCalendarEventModel);
    v42 = v15;
    v43 = v71;
    sub_1DABB2464(v42, v71, sub_1DAA628E4);
    v44 = v43 + *(v8 + 48);

    v45 = *(v34 + 48);
    swift_beginAccess();
    v46 = v6;
    sub_1DAA7C5C4(v44 + v45, v6, type metadata accessor for EarningsCalendarEventModel);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v78 = *(a2 + 24);
    v48 = v78;
    *(a2 + 24) = 0x8000000000000000;
    v50 = sub_1DAA4BF3C(v41, v40);
    v51 = v48[2];
    v52 = (v49 & 1) == 0;
    v53 = v51 + v52;
    if (__OFADD__(v51, v52))
    {
      break;
    }

    v54 = v49;
    if (v48[3] >= v53)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v49)
        {
          goto LABEL_7;
        }
      }

      else
      {
        sub_1DAB664AC();
        if (v54)
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
      sub_1DAB619FC(v53, isUniquelyReferenced_nonNull_native);
      v55 = sub_1DAA4BF3C(v41, v40);
      if ((v54 & 1) != (v56 & 1))
      {
        goto LABEL_22;
      }

      v50 = v55;
      if (v54)
      {
LABEL_7:

        v27 = v78;
        v28 = v78[7] + *(v69 + 72) * v50;
        v6 = v46;
        sub_1DABB252C(v46, v28);
        goto LABEL_8;
      }
    }

    v27 = v78;
    v78[(v50 >> 6) + 8] |= 1 << v50;
    v57 = (v27[6] + 16 * v50);
    *v57 = v41;
    v57[1] = v40;
    v58 = v27[7] + *(v69 + 72) * v50;
    v6 = v46;
    sub_1DAA7C5C4(v46, v58, type metadata accessor for EarningsCalendarEventModel);
    v59 = v27[2];
    v60 = __OFADD__(v59, 1);
    v61 = v59 + 1;
    if (v60)
    {
      goto LABEL_21;
    }

    v27[2] = v61;
LABEL_8:
    *(a2 + 24) = v27;

    swift_endAccess();
    v15 = v64;
    sub_1DABB24CC(v64, sub_1DAA628E4);
    v18 = v63;
    sub_1DAA62F1C(v63);
    v8 = v65;
    if (v67(v18, 1, v65) == 1)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = sub_1DACBA1F4();
  __break(1u);
  return result;
}

unint64_t sub_1DAA625DC()
{
  if (qword_1EE124160 != -1)
  {
    swift_once();
  }

  sub_1DAA618B8(&qword_1EE1249B8, type metadata accessor for EndpointConfiguration.Defaults, &unk_1DACC663C);
  sub_1DACB7F84();
  if (v1 <= 2u)
  {
    if (v1)
    {
      if (v1 == 1)
      {
        return 0xD000000000000038;
      }

      else
      {
        return 0xD00000000000003CLL;
      }
    }

    return 0xD000000000000030;
  }

  if (v1 - 5 < 3)
  {
    return 0xD000000000000030;
  }

  if (v1 == 3)
  {
    return 0xD000000000000039;
  }

  else
  {
    return 0xD00000000000003FLL;
  }
}

unint64_t sub_1DAA62758()
{
  if (qword_1EE124160 != -1)
  {
    swift_once();
  }

  sub_1DAA618B8(&qword_1EE1249B8, type metadata accessor for EndpointConfiguration.Defaults, &unk_1DACC663C);
  sub_1DACB7F84();
  if (v4 <= 2u)
  {
    if (v4)
    {
      v0 = 0xD000000000000038;
      v1 = 0xD00000000000003BLL;
      v2 = v4 == 1;
      goto LABEL_9;
    }

    return 0xD00000000000001DLL;
  }

  if (v4 - 5 < 3)
  {
    return 0xD00000000000001DLL;
  }

  v0 = 0xD00000000000002BLL;
  v1 = 0xD00000000000002CLL;
  v2 = v4 == 3;
LABEL_9:
  if (v2)
  {
    return v0;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_1DAA62914()
{
  if (qword_1EE124160 != -1)
  {
    swift_once();
  }

  sub_1DAA618B8(&qword_1EE1249B8, type metadata accessor for EndpointConfiguration.Defaults, &unk_1DACC663C);
  sub_1DACB7F84();
  if (v1 <= 2u)
  {
    if (v1)
    {
      if (v1 == 1)
      {
        return 0xD00000000000002BLL;
      }

      else
      {
        return 0xD000000000000026;
      }
    }

    return 0xD000000000000028;
  }

  if (v1 - 5 < 3)
  {
    return 0xD000000000000028;
  }

  if (v1 == 3)
  {
    return 0xD000000000000028;
  }

  else
  {
    return 0xD00000000000002FLL;
  }
}

unint64_t sub_1DAA62A88()
{
  if (qword_1EE124160 != -1)
  {
    swift_once();
  }

  sub_1DAA618B8(&qword_1EE1249B8, type metadata accessor for EndpointConfiguration.Defaults, &unk_1DACC663C);
  sub_1DACB7F84();
  if (v1 <= 2u)
  {
    if (v1)
    {
      if (v1 == 1)
      {
        return 0xD000000000000032;
      }

      else
      {
        return 0xD00000000000002DLL;
      }
    }

    return 0xD00000000000002FLL;
  }

  if (v1 - 5 < 3)
  {
    return 0xD00000000000002FLL;
  }

  if (v1 == 3)
  {
    return 0xD00000000000002FLL;
  }

  else
  {
    return 0xD000000000000030;
  }
}

void sub_1DAA62BF8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

unint64_t sub_1DAA62C98()
{
  if (qword_1EE124160 != -1)
  {
    swift_once();
  }

  sub_1DAA618B8(&qword_1EE1249B8, type metadata accessor for EndpointConfiguration.Defaults, &unk_1DACC663C);
  sub_1DACB7F84();
  if (v4 <= 2u)
  {
    if (v4)
    {
      v0 = 0xD000000000000108;
      v1 = 0xD0000000000000F9;
      v2 = v4 == 1;
      goto LABEL_9;
    }

    return 0xD0000000000000B7;
  }

  if (v4 - 5 < 3)
  {
    return 0xD0000000000000B7;
  }

  v0 = 0xD0000000000000DBLL;
  v1 = 0xD0000000000000DELL;
  v2 = v4 == 3;
LABEL_9:
  if (v2)
  {
    return v0;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_1DAA62E08()
{
  if (qword_1EE124160 != -1)
  {
    swift_once();
  }

  sub_1DAA618B8(&qword_1EE1249B8, type metadata accessor for EndpointConfiguration.Defaults, &unk_1DACC663C);
  sub_1DACB7F84();
  return 0xD0000000000001F8;
}

uint64_t sub_1DAA62F1C@<X0>(uint64_t a1@<X8>)
{
  sub_1DAA628E4(0);
  v4 = v3;
  v47 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v42 = (&v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for EarningsCalendarEventModel(0);
  v45 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v46 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA5D42C(0, &qword_1EE11D1A8, sub_1DAA62C68, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (&v40 - v9);
  sub_1DAA62C68(0);
  v12 = v11;
  v13 = *(v11 - 8);
  result = MEMORY[0x1EEE9AC00](v11);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *v1;
  v17 = v1[1];
  v20 = v1[2];
  v19 = v1[3];
  v21 = v1[4];
  v48 = a1;
  v49 = v20;
  v41 = v16;
  if (!v21)
  {
    v23 = (v20 + 64) >> 6;
    if (v23 <= v19 + 1)
    {
      v24 = v19 + 1;
    }

    else
    {
      v24 = (v20 + 64) >> 6;
    }

    v25 = v24 - 1;
    while (1)
    {
      v22 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v22 >= v23)
      {
        (*(v13 + 56))(v10, 1, 1, v12);
        v32 = 0;
        goto LABEL_12;
      }

      v21 = *(v17 + 8 * v22);
      ++v19;
      if (v21)
      {
        v44 = v4;
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
    return result;
  }

  v44 = v4;
  v22 = v19;
LABEL_11:
  v43 = (v21 - 1) & v21;
  v26 = __clz(__rbit64(v21)) | (v22 << 6);
  v27 = (*(v18 + 48) + 16 * v26);
  v28 = *v27;
  v29 = v27[1];
  v30 = v46;
  sub_1DABB2464(*(v18 + 56) + *(v45 + 72) * v26, v46, type metadata accessor for EarningsCalendarEventModel);
  v31 = *(v12 + 48);
  *v10 = v28;
  v10[1] = v29;
  sub_1DAA7C5C4(v30, v10 + v31, type metadata accessor for EarningsCalendarEventModel);
  (*(v13 + 56))(v10, 0, 1, v12);
  sub_1DACB71E4();
  v32 = v43;
  v4 = v44;
  v25 = v22;
LABEL_12:
  *v1 = v18;
  v1[1] = v17;
  v1[2] = v49;
  v1[3] = v25;
  v1[4] = v32;
  if ((*(v13 + 48))(v10, 1, v12) == 1)
  {
    sub_1DAA633E8(v10, &qword_1EE11D1A8, sub_1DAA62C68);
    return (*(v47 + 56))(v48, 1, 1, v4);
  }

  v33 = v41;
  sub_1DAA7C5C4(v10, v41, sub_1DAA62C68);
  v34 = *(v4 + 48);
  v35 = v1[5];
  v36 = v42;
  *v42 = v35;
  result = sub_1DAA7C5C4(v33, v36 + v34, sub_1DAA62C68);
  v37 = __OFADD__(v35, 1);
  v38 = v35 + 1;
  v39 = v48;
  if (v37)
  {
    goto LABEL_19;
  }

  v1[5] = v38;
  sub_1DAA7C5C4(v36, v39, sub_1DAA628E4);
  return (*(v47 + 56))(v39, 0, 1, v4);
}

uint64_t sub_1DAA63378(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1DAB5FC04(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1DAA633E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1DAA5D42C(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1DAA63458()
{
  if (qword_1EE124160 != -1)
  {
    swift_once();
  }

  sub_1DAA618B8(&qword_1EE1249B8, type metadata accessor for EndpointConfiguration.Defaults, &unk_1DACC663C);
  sub_1DACB7F84();
  if (v4 <= 2u)
  {
    if (v4)
    {
      v0 = 0xD000000000000034;
      v1 = 0xD000000000000038;
      v2 = v4 == 1;
      goto LABEL_9;
    }

    return 0xD00000000000002CLL;
  }

  if (v4 - 5 < 3)
  {
    return 0xD00000000000002CLL;
  }

  v0 = 0xD00000000000003ALL;
  v1 = 0xD00000000000003BLL;
  v2 = v4 == 3;
LABEL_9:
  if (v2)
  {
    return v0;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_1DAA635C8()
{
  if (qword_1EE124160 != -1)
  {
    swift_once();
  }

  sub_1DAA618B8(&qword_1EE1249B8, type metadata accessor for EndpointConfiguration.Defaults, &unk_1DACC663C);
  sub_1DACB7F84();
  if (v4 <= 2u)
  {
    if (v4)
    {
      v0 = 0xD000000000000032;
      v1 = 0xD000000000000036;
      v2 = v4 == 1;
      goto LABEL_9;
    }

    return 0xD00000000000002ALL;
  }

  if (v4 - 5 < 3)
  {
    return 0xD00000000000002ALL;
  }

  v0 = 0xD000000000000038;
  v1 = 0xD000000000000039;
  v2 = v4 == 3;
LABEL_9:
  if (v2)
  {
    return v0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1DAA63738(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1DACB8FB4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1DACB9004();
  v12 = *(v11 - 8);
  result = MEMORY[0x1EEE9AC00](v11);
  v15 = v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v22 = result;
    v16 = swift_allocObject();
    v16[2] = a2;
    v16[3] = a3;
    v16[4] = v3;
    aBlock[4] = sub_1DAA4F974;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1DAA5796C;
    aBlock[3] = &block_descriptor_6;
    v17 = _Block_copy(aBlock);
    v21[1] = a1;
    v18 = v17;
    sub_1DAA4F924(a2, a3);
    v19 = v3;
    sub_1DACB8FD4();
    v23 = MEMORY[0x1E69E7CC0];
    sub_1DAA4F4AC(&qword_1EE124040, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    v20 = MEMORY[0x1E69E7F60];
    sub_1DAA4D520(0, &qword_1EE123EC0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    sub_1DAA4F584(&qword_1EE123EB0, &qword_1EE123EC0, v20);
    sub_1DACB9BB4();
    MEMORY[0x1E1277440](0, v15, v10, v18);
    _Block_release(v18);
    (*(v8 + 8))(v10, v7);
    (*(v12 + 8))(v15, v22);
  }

  return result;
}

void sub_1DAA63A44(uint64_t a1)
{
  if (!qword_1EE125580)
  {
    sub_1DAA420F4(255, &qword_1EE1254C8, off_1E85E2088);
    v1 = sub_1DACB8924();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE125580);
    }
  }
}

uint64_t type metadata accessor for KVSCleanupStartupTask(uint64_t a1)
{
  result = qword_1EE11E530;
  if (!qword_1EE11E530)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DAA63AF8(uint64_t a1)
{
  result = sub_1DACB8574();
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

uint64_t sub_1DAA63BA0()
{
  v0 = sub_1DACB8574();
  __swift_allocate_value_buffer(v0, qword_1EE11D4A8);
  __swift_project_value_buffer(v0, qword_1EE11D4A8);
  return sub_1DACB8564();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1DAA63CA4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC10StocksCore21KVSCleanupStartupTask_group;
  v5 = sub_1DACB8574();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_1DAA63D24@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69D6920];
  v3 = sub_1DACB8884();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1DAA63D9C()
{
  v1 = type metadata accessor for AppConfiguration(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  sub_1DACB8014();
  sub_1DACB7FF4();
  if (qword_1EE11D518 != -1)
  {
    swift_once();
  }

  v5 = objc_opt_self();
  v6 = v4[11];
  v7 = v4[12];
  __swift_project_boxed_opaque_existential_1(v4 + 8, v6);
  (*(v7 + 8))(v6, v7);
  v8 = *(v3 + 177);
  sub_1DAA640AC(v3);
  [v5 enabledForCurrentLevel_];
  LOBYTE(v8) = sub_1DACB8004();

  return v8 & 1;
}

uint64_t sub_1DAA63F00()
{
  v0 = sub_1DACB8024();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1DACB7FA4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA5B418(0);
  (*(v5 + 104))(v7, *MEMORY[0x1E69D6D00], v4);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E90], v0);
  result = sub_1DACB8074();
  qword_1EE11D520 = result;
  return result;
}

uint64_t sub_1DAA640AC(uint64_t a1)
{
  v2 = type metadata accessor for AppConfiguration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DAA64108()
{
  v0 = sub_1DACB79B4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1DACB7AB4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DACB79F4();
  v9[0] = 0xD000000000000018;
  v9[1] = 0x80000001DACF2550;
  (*(v1 + 104))(v3, *MEMORY[0x1E6968F58], v0);
  sub_1DAA642D8();
  sub_1DACB7AA4();
  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1DAA642D8()
{
  result = qword_1EE124030;
  if (!qword_1EE124030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124030);
  }

  return result;
}

uint64_t sub_1DAA6432C(void *a1)
{
  sub_1DAA646CC(0, &qword_1EE11FD80, MEMORY[0x1E69E9420]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v19 - v3;
  sub_1DAA646CC(0, &qword_1EE1263D0, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v19 - v6;
  v20 = sub_1DACB90B4();
  v8 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DACB9094();
  sub_1DACB90A4();
  v11 = sub_1DACB8224();

  if (v11)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v13 = sub_1DACB7AB4();
    sub_1DACB8234();
    v14 = *(v13 - 8);
    result = (*(v14 + 48))(v7, 1, v13);
    if (result != 1)
    {
      (*(v14 + 32))(v10, v7, v13);
      (*(v8 + 104))(v10, *MEMORY[0x1E69B4F38], v20);
      sub_1DACB8C84();
      v15 = sub_1DACB8C94();
      v16 = *(*(v15 - 8) + 56);
      v16(v4, 0, 1, v15);
      sub_1DAA64B5C(0);
      swift_allocObject();
      sub_1DACB9044();
      v16(v4, 1, 1, v15);
      sub_1DAA64C90(0);
      v18 = objc_allocWithZone(v17);
      return sub_1DACB90C4();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1DAA646CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t sub_1DAA64720@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v1 = sub_1DACB79B4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v26[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v32 = sub_1DACB7AB4();
  v5 = *(v32 - 8);
  v6 = MEMORY[0x1EEE9AC00](v32);
  v8 = &v26[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v26[-v10];
  v12 = MEMORY[0x1EEE9AC00](v9);
  v30 = &v26[-v13];
  MEMORY[0x1EEE9AC00](v12);
  v31 = &v26[-v14];
  if (qword_1EE125750 != -1)
  {
    swift_once();
  }

  sub_1DAA4DA94(v8);
  v37 = 0x7972617262694CLL;
  v38 = 0xE700000000000000;
  v15 = *MEMORY[0x1E6968F58];
  v16 = *(v2 + 104);
  v34 = v2 + 104;
  v27 = v15;
  v16(v4, v15, v1);
  v36 = v16;
  v29 = sub_1DAA642D8();
  sub_1DACB7AA4();
  v28 = *(v2 + 8);
  v28(v4, v1);
  v35 = *(v5 + 8);
  v17 = v32;
  v35(v8, v32);
  v37 = 0x746E656D75636F44;
  v38 = 0xE900000000000073;
  v16(v4, v15, v1);
  v18 = v30;
  sub_1DACB7AA4();
  v19 = v1;
  v20 = v1;
  v21 = v28;
  v28(v4, v19);
  v35(v11, v17);
  v37 = 0x4465746176697250;
  v38 = 0xEB00000000617461;
  v36(v4, v27, v20);
  v22 = v31;
  sub_1DACB7AA4();
  v21(v4, v20);
  v23 = v18;
  v24 = v35;
  v35(v23, v17);
  v37 = 0xD000000000000019;
  v38 = 0x80000001DACF2570;
  v36(v4, *MEMORY[0x1E6968F68], v20);
  sub_1DACB7AA4();
  v21(v4, v20);
  return v24(v22, v17);
}

void sub_1DAA64B5C(uint64_t a1)
{
  if (!qword_1EE11D280)
  {
    sub_1DACB90E4();
    sub_1DAA64BE4();
    sub_1DAA64C38();
    v1 = sub_1DACB9054();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE11D280);
    }
  }
}

unint64_t sub_1DAA64BE4()
{
  result = qword_1EE11E5E8;
  if (!qword_1EE11E5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E5E8);
  }

  return result;
}

unint64_t sub_1DAA64C38()
{
  result = qword_1EE11D270;
  if (!qword_1EE11D270)
  {
    sub_1DACB90E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11D270);
  }

  return result;
}

void sub_1DAA64C90(uint64_t a1)
{
  if (!qword_1EE11D278)
  {
    sub_1DAA64BE4();
    v1 = sub_1DACB90D4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE11D278);
    }
  }
}

void *sub_1DAA64CEC(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  result = sub_1DACB8254();
  if (v6[40] == 255)
  {
    __break(1u);
  }

  else
  {
    (*(v4 + 8))(v6, v3, v4);
    return sub_1DAA65C58(v6);
  }

  return result;
}

uint64_t sub_1DAA64DA0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_1DAA64DEC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 41))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 40);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

void *sub_1DAA64E28@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA44440(0, &qword_1EE125BD0, &protocol descriptor for FeatureAvailabilityType, 1);
  result = sub_1DACB8254();
  if (!v10)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_1DAA4D460(&v9, v11);
  v5 = v12;
  v6 = v13;
  __swift_project_boxed_opaque_existential_1(v11, v12);
  v7 = (*(v6 + 16))(v5, v6);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (v7)
  {
    sub_1DAA485B8(0, &qword_1EE125430, &protocolRef_FCPrivateDataContext);
    result = sub_1DACB8244();
    if (result)
    {
      v8 = [result userInfo];
      swift_unknownObjectRelease();
      *a2 = v8;
      *(a2 + 40) = 0;
      return __swift_destroy_boxed_opaque_existential_1(v11);
    }

    goto LABEL_9;
  }

  sub_1DAA44440(0, qword_1EE1261E0, &protocol descriptor for UserInfoType, 1);
  result = sub_1DACB8254();
  if (v10)
  {
    sub_1DAA4D460(&v9, a2);
    *(a2 + 40) = 1;
    return __swift_destroy_boxed_opaque_existential_1(v11);
  }

LABEL_10:
  __break(1u);
  return result;
}

id sub_1DAA64FC0()
{
  v1 = v0;
  v2 = type metadata accessor for AppConfiguration(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v35[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1EE1200B8 != -1)
  {
    swift_once();
  }

  sub_1DAA655A8();
  sub_1DACB7F84();
  if (v37)
  {
    if (v37 == 1)
    {
      sub_1DAA41DCC();
      v5 = sub_1DACB9AD4();
      v6 = sub_1DACB9914();
      sub_1DACB8C64("allowing Apple News content because it's force-enabled via internal settings", 76, 2, &dword_1DAA3F000, v5, v6, MEMORY[0x1E69E7CC0]);
LABEL_6:
      v7 = 1;
LABEL_46:

      return v7;
    }

    sub_1DAA41DCC();
    v5 = sub_1DACB9AD4();
    v19 = sub_1DACB9914();
    sub_1DACB8C64("disallowing Apple News content because it's force-disabled via internal settings", 80, 2, &dword_1DAA3F000, v5, v19, MEMORY[0x1E69E7CC0]);
    goto LABEL_45;
  }

  v8 = v0[11];
  v9 = v0[12];
  __swift_project_boxed_opaque_existential_1(v0 + 8, v8);
  (*(v9 + 8))(v8, v9);
  v10 = v4[104];
  sub_1DAA640AC(v4);
  if (v10 != 1)
  {
    sub_1DAA41DCC();
    v5 = sub_1DACB9AD4();
    v20 = sub_1DACB9914();
    sub_1DACB8C64("disallowing Apple News content because it's disabled in the app configuration", 77, 2, &dword_1DAA3F000, v5, v20, MEMORY[0x1E69E7CC0]);
    goto LABEL_45;
  }

  if (qword_1EE1242B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v11 = qword_1EE1242C0;
  v12 = qword_1EE1242C8;
  if (qword_1EE1242C0 != 0x313434333431 || qword_1EE1242C8 != 0xE600000000000000)
  {
    v21 = sub_1DACBA174();
    v22 = v11 == 0x343434333431 && v12 == 0xE600000000000000;
    v23 = v22;
    if ((v21 & 1) == 0 && !v23)
    {
      v24 = sub_1DACBA174();
      v25 = v11 == 0x303634333431 && v12 == 0xE600000000000000;
      v26 = v25;
      if ((v24 & 1) == 0 && !v26)
      {
        v27 = sub_1DACBA174();
        v28 = v11 == 0x353534333431 && v12 == 0xE600000000000000;
        v29 = v28;
        if ((v27 & 1) == 0 && !v29 && (sub_1DACBA174() & 1) == 0)
        {
          sub_1DAA41DCC();
          v5 = sub_1DACB9AD4();
          v30 = sub_1DACB9914();
          sub_1DACB8C64("disallowing Apple News content because the current storefront is not supported", 78, 2, &dword_1DAA3F000, v5, v30, MEMORY[0x1E69E7CC0]);
          goto LABEL_45;
        }
      }
    }
  }

  sub_1DAA4D678((v1 + 8), v36);
  type metadata accessor for NewsRegionCheck();
  inited = swift_initStackObject();
  sub_1DAA4E4E0(v36, inited + 16);
  v14 = sub_1DAA655FC();
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1((inited + 16));
  if ((v14 & 1) == 0)
  {
    sub_1DAA41DCC();
    v5 = sub_1DACB9AD4();
    v31 = sub_1DACB9914();
    sub_1DACB8C64("disallowing Apple News content because the current region code is not supported", 79, 2, &dword_1DAA3F000, v5, v31, MEMORY[0x1E69E7CC0]);
    goto LABEL_45;
  }

  result = [objc_opt_self() sharedNetworkReachability];
  if (result)
  {
    v16 = result;
    v17 = [result offlineReason];

    if (v17 == 3)
    {
      sub_1DAA41DCC();
      v5 = sub_1DACB9AD4();
      v18 = sub_1DACB9914();
      sub_1DACB8C64("disallowing Apple News content because access is restricted in the current country", 82, 2, &dword_1DAA3F000, v5, v18, MEMORY[0x1E69E7CC0]);
    }

    else
    {
      v32 = v1[16];
      v33 = v1[17];
      __swift_project_boxed_opaque_existential_1(v1 + 13, v32);
      LOBYTE(v32) = (*(v33 + 8))(v32, v33);
      sub_1DAA41DCC();
      v5 = sub_1DACB9AD4();
      v34 = sub_1DACB9914();
      if (v32)
      {
        sub_1DACB8C64("allowing Apple News content", 27, 2, &dword_1DAA3F000, v5, v34, MEMORY[0x1E69E7CC0]);
        goto LABEL_6;
      }

      sub_1DACB8C64("disallowing Apple News content because the News app is restricted", 65, 2, &dword_1DAA3F000, v5, v34, MEMORY[0x1E69E7CC0]);
    }

LABEL_45:
    v7 = 0;
    goto LABEL_46;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DAA654F4(uint64_t a1)
{
  v2 = *v1;
  if ((sub_1DAA64FC0() & 1) == 0)
  {
    return 0;
  }

  if ([*(v2 + 56) isPrivateDataSyncingAllowed])
  {
    return 1;
  }

  if (qword_1EE11D680 != -1)
  {
    swift_once();
  }

  sub_1DAA655A8();
  sub_1DACB7F84();
  return v4;
}

unint64_t sub_1DAA655A8()
{
  result = qword_1EE121B08;
  if (!qword_1EE121B08)
  {
    type metadata accessor for FeatureAvailability();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE121B08);
  }

  return result;
}

uint64_t sub_1DAA655FC()
{
  v1 = v0;
  v2 = type metadata accessor for AppConfiguration(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1DACB7E24();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DACB7E44();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA60E20(0, &qword_1EE125260, MEMORY[0x1E6969680]);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v27 - v14;
  v16 = [objc_opt_self() currentLocale];
  sub_1DACB7D94();

  sub_1DACB7E34();
  (*(v10 + 8))(v12, v9);
  sub_1DACB7E14();
  (*(v6 + 8))(v8, v5);
  v17 = sub_1DACB7DC4();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v15, 1, v17) == 1)
  {
    sub_1DAA6CA10(v15, &qword_1EE125260, MEMORY[0x1E6969680]);
    v19 = 0;
  }

  else
  {
    v20 = sub_1DACB7D34();
    v22 = v21;
    (*(v18 + 8))(v15, v17);
    v23 = v1[5];
    v24 = v1[6];
    __swift_project_boxed_opaque_existential_1(v1 + 2, v23);
    (*(v24 + 8))(v23, v24);
    v25 = *(v4 + 170);
    sub_1DACB71E4();
    sub_1DAA640AC(v4);
    v19 = sub_1DAA65964(v20, v22, v25);
  }

  return v19 & 1;
}

uint64_t sub_1DAA65964(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1DACBA284();
  sub_1DACB9404();
  v6 = sub_1DACBA2C4();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_1DACBA174() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1DAA65A5C()
{
  v0 = sub_1DACB8034();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1DACB8024();
  MEMORY[0x1EEE9AC00](v4);
  (*(v6 + 104))(&v8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6E90]);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6EA0], v0);
  v8[15] = 0;
  sub_1DAA60950(0, qword_1EE1255D8, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0]);
  swift_allocObject();
  result = sub_1DACB80B4();
  qword_1EE11D688 = result;
  return result;
}

uint64_t get_enum_tag_for_layout_string_10StocksCore18UserIdentitySourceO(uint64_t a1)
{
  if ((*(a1 + 40) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 40) & 3;
  }
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1DAA65CB4(void **a1, void *a2)
{
  v2 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1DAA485B8(0, &unk_1EE11F7D8, &protocolRef_FCEntitlementsOverrideProviderType);
  [v2 setEntitlementsOverrideProvider_];

  return swift_unknownObjectRelease();
}

uint64_t sub_1DAA65D94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DAA4CF18(0, &qword_1EE1240B0, type metadata accessor for AppConfiguration, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1DACB8B44();
}

uint64_t sub_1DAA65E40()
{
  sub_1DAA65E94();
  swift_allocObject();
  return sub_1DACB8B44();
}

void sub_1DAA65E94()
{
  if (!qword_1EE11FDF0)
  {
    v0 = sub_1DACB8B74();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE11FDF0);
    }
  }
}

void sub_1DAA65EFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  sub_1DACB71F4();
  sub_1DACB8BB4();
  sub_1DACB71F4();
  v10 = sub_1DACB89D4();
  sub_1DACB8A54();

  sub_1DACB71F4();
  v11 = sub_1DACB89D4();
  sub_1DACB8A54();

  sub_1DACB71F4();
  v12 = sub_1DACB89D4();
  sub_1DACB8A54();

  sub_1DACB71F4();
  v13 = sub_1DACB89D4();
  sub_1DACB8A54();

  sub_1DACB71F4();
  v14 = sub_1DACB89D4();
  sub_1DACB8A54();

  sub_1DACB71F4();
  v15 = sub_1DACB89D4();
  sub_1DACB8A64();

  v16 = swift_allocObject();
  *(v16 + 16) = sub_1DAA98788;
  *(v16 + 24) = v9;
  v17 = sub_1DACB89D4();
  sub_1DACB8A64();

  v18 = swift_allocObject();
  *(v18 + 16) = a3;
  *(v18 + 24) = a4;
  sub_1DACB71F4();
  v19 = sub_1DACB89D4();
  sub_1DACB8AA4();
}

uint64_t sub_1DAA66238()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DAA66278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, os_unfair_lock_s *a5)
{
  v27 = a3;
  v28 = a1;
  v29 = a2;
  v7 = sub_1DACB8FB4();
  v35 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1DACB9004();
  v33 = *(v10 - 8);
  v34 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1DACB9024();
  v32 = v13;
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v26 - v18;
  sub_1DAA57C58();
  v30 = sub_1DACB9954();
  sub_1DACB9014();
  os_unfair_lock_lock(a5 + 12);
  os_unfair_lock_unlock(a5 + 12);
  sub_1DACB9034();
  v31 = *(v14 + 8);
  v31(v17, v13);
  v20 = swift_allocObject();
  v22 = v27;
  v21 = v28;
  v20[2] = a5;
  v20[3] = v22;
  v20[4] = a4;
  v20[5] = v21;
  v20[6] = v29;
  aBlock[4] = sub_1DAA90DA8;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DAA5796C;
  aBlock[3] = &block_descriptor_7;
  v23 = _Block_copy(aBlock);
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB71F4();

  sub_1DACB8FD4();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1DAA669C0(&qword_1EE124040, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1DAA667F4(0);
  sub_1DAA669C0(&qword_1EE123EB0, sub_1DAA667F4, MEMORY[0x1E69E6328]);
  sub_1DACB9BB4();
  v24 = v30;
  MEMORY[0x1E1277410](v19, v12, v9, v23);
  _Block_release(v23);

  (*(v35 + 8))(v9, v7);
  (*(v33 + 8))(v12, v34);
  return (v31)(v19, v32);
}

void sub_1DAA66680()
{
  if (MEMORY[0x1E69E7D58])
  {
    sub_1DAB4DA9C(0, &qword_1ECBE7C70, MEMORY[0x1E69E6370]);
  }
}

void sub_1DAA666CC()
{
  if (MEMORY[0x1E69E7D58])
  {
    sub_1DAB4DA9C(0, &qword_1ECBE7C78, MEMORY[0x1E69E63B0]);
  }
}

void sub_1DAA66718()
{
  if (MEMORY[0x1E69E7D58])
  {
    sub_1DAA4CF18(0, &qword_1ECBE7C80, sub_1DAB4DAE8, MEMORY[0x1E69E8300]);
  }
}

uint64_t sub_1DAA66784()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DAA66828()
{
  if (qword_1EE11EDC0 != -1)
  {
    swift_once();
  }

  v0 = qword_1EE13E298;
  v1 = sub_1DACB9914();
  sub_1DACB8C64("checking whether cleanup is unfinished", 38, 2, &dword_1DAA3F000, v0, v1, MEMORY[0x1E69E7CC0]);
  if (qword_1EE11D6C8 != -1)
  {
    swift_once();
  }

  sub_1DAA66DC0(&qword_1EE11E548, &unk_1DACD297C);
  sub_1DACB7F84();
  if (v4 == 1)
  {
    sub_1DAA6ABE8();
    swift_allocError();
    *v2 = 0;
    sub_1DAA65E94();
    swift_allocObject();
    return sub_1DACB8AD4();
  }

  else
  {
    sub_1DAA65E94();
    swift_allocObject();
    return sub_1DACB8AE4();
  }
}

uint64_t sub_1DAA669C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DAA66A08(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DAA66A50(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DAA66A98(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DAA66AE0()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_1DACB9324();
  }

  sub_1DAA41DCC();
  result = sub_1DACB9AE4();
  qword_1EE13E298 = result;
  return result;
}

uint64_t sub_1DAA66BB4()
{
  v0 = sub_1DACB8024();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1DACB8034();
  MEMORY[0x1EEE9AC00](v4);
  (*(v6 + 104))(&v8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6EA0]);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E88], v0);
  v8[15] = 0;
  sub_1DAA66D68();
  swift_allocObject();
  result = sub_1DACB80B4();
  qword_1EE11D6D0 = result;
  return result;
}

void sub_1DAA66D68()
{
  if (!qword_1EE1255D8[0])
  {
    v0 = sub_1DACB80A4();
    if (!v1)
    {
      atomic_store(v0, qword_1EE1255D8);
    }
  }
}

uint64_t sub_1DAA66DC0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for KVSCleanupStartupTask(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DAA66E40(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5)
{
  if (qword_1EE11EDC0 != -1)
  {
    swift_once();
  }

  v7 = qword_1EE13E298;
  v8 = sub_1DACB9914();
  sub_1DACB8C64(a3, a4, 2, &dword_1DAA3F000, v7, v8, MEMORY[0x1E69E7CC0]);
  sub_1DAA65E94();
  swift_allocObject();
  return sub_1DACB8B44();
}

uint64_t sub_1DAA66F0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  sub_1DACB82E4();
  v9 = swift_allocObject();
  v9[2] = sub_1DABE6448;
  v9[3] = v8;
  v9[4] = a3;
  v9[5] = a4;
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB82D4();
}

void sub_1DAA66FFC(void (*a1)(uint64_t), uint64_t a2, void (*a3)(void))
{
  v5 = [objc_opt_self() defaultStore];
  v6 = sub_1DACB92F4();
  v7 = [v5 arrayForKey_];

  if (v7 && (v8 = sub_1DACB9644(), v7, v9 = *(v8 + 16), v10 = , v9))
  {
    a1(v10);
  }

  else
  {
    sub_1DAA6ABE8();
    v11 = swift_allocError();
    *v12 = 1;
    a3();
  }
}

uint64_t AppDependencyManager.addStocksDependencies(using:)(uint64_t a1, uint64_t a2)
{
  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  v5 = swift_allocObject();
  v5[2] = v2;
  v5[3] = a1;
  v5[4] = a2;
  v6 = sub_1DAA4436C(0, qword_1EE125F28, &protocol descriptor for SearchServiceType);
  sub_1DACB71F4();
  sub_1DACB71F4();
  MEMORY[0x1E1274850](&v18, &unk_1DACD3A80, v5, v6);

  sub_1DAA674D8(&v18);
  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  v7 = swift_allocObject();
  v7[2] = v2;
  v7[3] = a1;
  v7[4] = a2;
  v8 = sub_1DAA4436C(0, &unk_1EE125A10, &protocol descriptor for StockMetadataManagerType);
  sub_1DACB71F4();
  sub_1DACB71F4();
  MEMORY[0x1E1274850](&v18, &unk_1DACD3A90, v7, v8);

  sub_1DAA674D8(&v18);
  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  v9 = swift_allocObject();
  v9[2] = v2;
  v9[3] = a1;
  v9[4] = a2;
  v10 = sub_1DAA4436C(0, &qword_1EE125E40, &protocol descriptor for WatchlistManagerType);
  sub_1DACB71F4();
  sub_1DACB71F4();
  MEMORY[0x1E1274850](&v18, &unk_1DACD3AA0, v9, v10);

  sub_1DAA674D8(&v18);
  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  v11 = swift_allocObject();
  v11[2] = v2;
  v11[3] = a1;
  v11[4] = a2;
  v12 = sub_1DAA4436C(0, &qword_1EE123948, &protocol descriptor for StocksIntentHandlerType);
  sub_1DACB71F4();
  sub_1DACB71F4();
  MEMORY[0x1E1274850](&v18, &unk_1DACD3AB0, v11, v12);

  sub_1DAA674D8(&v18);
  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  v13 = swift_allocObject();
  v13[2] = v2;
  v13[3] = a1;
  v13[4] = a2;
  v14 = sub_1DAA4436C(0, &qword_1EE125FE0, &protocol descriptor for QuoteManagerType);
  sub_1DACB71F4();
  sub_1DACB71F4();
  MEMORY[0x1E1274850](&v18, &unk_1DACD3AC0, v13, v14);

  sub_1DAA674D8(&v18);
  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  v15 = swift_allocObject();
  v15[2] = v2;
  v15[3] = a1;
  v15[4] = a2;
  v16 = sub_1DAA4436C(0, &qword_1EE125CC8, &protocol descriptor for QuoteDetailManagerType);
  sub_1DACB71F4();
  sub_1DACB71F4();
  MEMORY[0x1E1274850](&v18, &unk_1DACD3AD0, v15, v16);

  return sub_1DAA674D8(&v18);
}

uint64_t sub_1DAA674D8(uint64_t a1)
{
  sub_1DAA67534();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1DAA67534()
{
  if (!qword_1EE11F778)
  {
    v0 = sub_1DACB9AF4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE11F778);
    }
  }
}

uint64_t sub_1DAA67584()
{
  sub_1DACB8864();
  swift_allocObject();
  return sub_1DACB8854();
}

void *sub_1DAA675BC(uint64_t a1, void *a2)
{
  v3 = sub_1DACB8874();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1DAA44440(0, &unk_1EE1258E8, &protocol descriptor for NewsUserProfileProviderType, 0);
  result = sub_1DACB8254();
  if (v8[1])
  {
    (*(v4 + 104))(v6, *MEMORY[0x1E69D6918], v3);
    sub_1DACB8844();
    swift_unknownObjectRelease();
    (*(v4 + 8))(v6, v3);
    return __swift_destroy_boxed_opaque_existential_1(v9);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1DAA67750@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA44440(0, &qword_1EE125918, &protocol descriptor for UnnecessaryWordRemoverType, 1);
  result = sub_1DACB8254();
  if (v7)
  {
    v4 = type metadata accessor for WatchlistSortingService();
    v5 = swift_allocObject();
    result = sub_1DAA4D460(&v6, v5 + 16);
    a2[3] = v4;
    a2[4] = &off_1F568D958;
    *a2 = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DAA67828()
{
  v1 = v0;
  v17 = sub_1DACB8FB4();
  v2 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1DACB9004();
  v5 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DACB99C4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA67BB8();
  swift_allocObject();
  *(v0 + 16) = sub_1DACB8964();
  swift_allocObject();
  *(v0 + 24) = sub_1DACB8964();
  sub_1DAA67C14();
  sub_1DACB99B4();
  v12 = sub_1DACB99D4();
  (*(v9 + 8))(v11, v8);
  *(v1 + 32) = v12;
  swift_getObjectType();
  v13 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_1DAC4A88C;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DAA5796C;
  aBlock[3] = &block_descriptor_35;
  v14 = _Block_copy(aBlock);

  sub_1DACB8FD4();
  sub_1DAA67C60();
  sub_1DACB99E4();
  _Block_release(v14);
  (*(v2 + 8))(v4, v17);
  (*(v5 + 8))(v7, v16);
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_1DACB9A14();
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_1DAA67B80()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void sub_1DAA67BB8()
{
  if (!qword_1EE11FF00)
  {
    v0 = sub_1DACB8974();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE11FF00);
    }
  }
}

unint64_t sub_1DAA67C14()
{
  result = qword_1EE11F8A0;
  if (!qword_1EE11F8A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE11F8A0);
  }

  return result;
}

uint64_t sub_1DAA67C60()
{
  sub_1DACB8FB4();
  sub_1DAA66A98(&qword_1EE124040, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1DAA667F4(0);
  sub_1DAA66A98(&qword_1EE123EB0, sub_1DAA667F4, MEMORY[0x1E69E6328]);
  return sub_1DACB9BB4();
}

id sub_1DAA67D6C()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69B5570]);

  return [v0 init];
}

id sub_1DAA67DA4()
{
  result = [objc_opt_self() sharedNetworkReachability];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DAA67DE0()
{
  v1 = sub_1DACB7CC4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - v6;
  sub_1DACB7CB4();
  v8 = v0[5];
  v9 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v8);
  (*(v9 + 40))(v8, v9);
  (*(v2 + 16))(v5, v7, v1);
  v10 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = v0;
  (*(v2 + 32))(v11 + v10, v5, v1);
  sub_1DACB71F4();
  v12 = sub_1DACB89D4();
  sub_1DACB8A64();

  return (*(v2 + 8))(v7, v1);
}

uint64_t sub_1DAA67FC8()
{
  v1 = sub_1DACB7CC4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

void sub_1DAA68090(uint64_t a1)
{
  if (!qword_1EE11D040)
  {
    sub_1DAA420F4(255, &qword_1EE11F7C0, 0x1E695BA60);
    v1 = sub_1DACB9AF4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE11D040);
    }
  }
}

uint64_t sub_1DAA680F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1DAA68090(0);
  sub_1DACB8BB4();
  v4 = sub_1DACB89D4();
  sub_1DAA492B4(0);
  v5 = sub_1DACB8A54();

  return v5;
}

uint64_t sub_1DAA681A8(uint64_t a1, uint64_t a2)
{
  sub_1DAA68234(0, &unk_1EE11D3B8, sub_1DAA68090, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1DACB8B44();
}

void sub_1DAA68234(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1DAA682D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = sub_1DAA73914;
  v9[5] = v8;
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB88E4();
}

uint64_t sub_1DAA683AC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DAA683F4@<X0>(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v74 = a2;
  v80 = a3;
  v82[3] = *MEMORY[0x1E69E9840];
  v4 = sub_1DACB7AB4();
  v78 = *(v4 - 8);
  v79 = v4;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v73[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v73[-v9];
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v73[-v12];
  v75 = a1;
  v15 = sub_1DAA68F5C(v11, v14);
  if (qword_1EE125750 != -1)
  {
    swift_once();
  }

  sub_1DAA4DA94(v13);
  v77 = v13;
  sub_1DACB7A14();
  v16 = objc_opt_self();
  v17 = sub_1DACB7A04();
  v18 = [v16 preferredFileURLForSchema:v15 parentDirectoryURL:v17];

  sub_1DACB7A44();
  v19 = objc_opt_self();
  v20 = [v19 defaultManager];
  v76 = v10;
  v21 = sub_1DACB7A04();
  sub_1DAA6993C(MEMORY[0x1E69E7CC0]);
  type metadata accessor for FileAttributeKey(0);
  sub_1DAA69168(&qword_1EE11F8C0, 255, type metadata accessor for FileAttributeKey, &unk_1DACC2458);
  v22 = sub_1DACB9114();

  v82[0] = 0;
  v23 = [v20 createDirectoryAtURL:v21 withIntermediateDirectories:1 attributes:v22 error:v82];

  if (v23)
  {
    v24 = v82[0];
  }

  else
  {
    v25 = v82[0];
    v26 = sub_1DACB78C4();

    swift_willThrow();
  }

  sub_1DAA69B54(v7, v15);
  if (qword_1EE11F8E8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v27 = qword_1EE11F8F0;
  v28 = sub_1DACB92F4();
  v29 = [v27 BOOLForKey_];

  if (v29)
  {
    sub_1DAA420F4(0, &qword_1EE123DB0, 0x1E69E9BF8);
    v30 = sub_1DACB9AD4();
    v31 = sub_1DACB9914();
    sub_1DACB8C64("deleting Stocks private data as requested during iCloud sign-out", 64, 2, &dword_1DAA3F000, v30, v31, MEMORY[0x1E69E7CC0]);

    v32 = qword_1EE11F8F0;
    v33 = sub_1DACB92F4();
    [v32 setBool:0 forKey:v33];

    v34 = [v19 &selRef_personalizationData + 3];
    v35 = sub_1DACB7A04();
    v81[0] = 0;
    v36 = [v34 removeItemAtURL:v35 error:v81];

    if (v36)
    {
      v37 = v81[0];
    }

    else
    {
      v38 = v81[0];
      v39 = sub_1DACB78C4();

      swift_willThrow();
    }
  }

  v40 = qword_1EE11F8F0;
  v41 = sub_1DACB92F4();
  [v40 setBool:1 forKey:v41];

  sub_1DAA6A214(0, &qword_1EE11F488, sub_1DAA6A268);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_1DACD7AD0;
  type metadata accessor for UpdateUserIDCommand();
  [swift_getObjCClassFromMetadata() classForKeyedUnarchiver];
  *(v42 + 32) = swift_getObjCClassMetadata();
  type metadata accessor for UpdateAdsUserIDCommand(0);
  [swift_getObjCClassFromMetadata() classForKeyedUnarchiver];
  *(v42 + 40) = swift_getObjCClassMetadata();
  sub_1DAA420F4(0, &qword_1EE11F788, 0x1E696AEC0);
  [swift_getObjCClassFromMetadata() classForKeyedUnarchiver];
  *(v42 + 48) = swift_getObjCClassMetadata();
  type metadata accessor for UpdateUserStartDateCommand(0);
  [swift_getObjCClassFromMetadata() classForKeyedUnarchiver];
  *(v42 + 56) = swift_getObjCClassMetadata();
  sub_1DAA420F4(0, &qword_1EE11F7D0, 0x1E695DF00);
  [swift_getObjCClassFromMetadata() classForKeyedUnarchiver];
  *(v42 + 64) = swift_getObjCClassMetadata();
  type metadata accessor for UpdateUpsellAppLaunchCountCommand();
  [swift_getObjCClassFromMetadata() classForKeyedUnarchiver];
  *(v42 + 72) = swift_getObjCClassMetadata();
  type metadata accessor for UpdateLastAppLaunchUpsellInstanceIDCommand();
  [swift_getObjCClassFromMetadata() classForKeyedUnarchiver];
  *(v42 + 80) = swift_getObjCClassMetadata();
  type metadata accessor for UpdateAppLaunchUpsellLastSeenDateCommand(0);
  [swift_getObjCClassFromMetadata() classForKeyedUnarchiver];
  *(v42 + 88) = swift_getObjCClassMetadata();
  type metadata accessor for UpdateAppReviewRequestLastSeenDateCommand(0);
  [swift_getObjCClassFromMetadata() classForKeyedUnarchiver];
  *(v42 + 96) = swift_getObjCClassMetadata();
  v43 = objc_opt_self();
  v44 = [v43 supportedCommands];
  sub_1DAA6A268();
  v45 = sub_1DACB9644();

  v81[0] = v42;
  v46 = v15;
  sub_1DAA6A7CC(v45);
  v47 = objc_allocWithZone(SCWDatabaseJSONStore);
  v48 = sub_1DACB7A04();
  v49 = sub_1DACB9634();

  v50 = [v47 initWithSchema:v46 fileURL:v48 allowedCommandClasses:v49];

  v51 = [objc_allocWithZone(MEMORY[0x1E6959A48]) init];
  v52 = [v51 aa_primaryAppleAccount];

  if (v52)
  {
    if ([v52 sc_isEnabledForStocksDataclass])
    {
      if (v74)
      {
        v53 = 3;
        goto LABEL_20;
      }

      sub_1DAA420F4(0, &qword_1EE123DB0, 0x1E69E9BF8);
      v55 = sub_1DACB9AD4();
      v57 = sub_1DACB9914();
      sub_1DACB8C64("configuring database without pushes because notifications are disabled", 70, 2, &dword_1DAA3F000, v55, v57, MEMORY[0x1E69E7CC0]);

      v53 = 1;
    }

    else
    {
      sub_1DAA420F4(0, &qword_1EE123DB0, 0x1E69E9BF8);
      v55 = sub_1DACB9AD4();
      v56 = sub_1DACB9914();
      sub_1DACB8C64("configuring database without syncing because the stocks dataclass is disabled", 77, 2, &dword_1DAA3F000, v55, v56, MEMORY[0x1E69E7CC0]);

      v53 = 0;
    }

    v52 = v55;
  }

  else
  {
    sub_1DAA420F4(0, &qword_1EE123DB0, 0x1E69E9BF8);
    v52 = sub_1DACB9AD4();
    v54 = sub_1DACB9914();
    sub_1DACB8C64("configuring database without syncing because there is no primary account", 72, 2, &dword_1DAA3F000, v52, v54, MEMORY[0x1E69E7CC0]);
    v53 = 0;
  }

LABEL_20:

  v58 = qword_1EE11F8F0;
  v59 = sub_1DACB92F4();
  v60 = [v58 BOOLForKey_];

  if (v60)
  {
    sub_1DAA420F4(0, &qword_1EE123DB0, 0x1E69E9BF8);
    v61 = sub_1DACB9AD4();
    v62 = sub_1DACB9914();
    sub_1DACB8C64("merging Stocks private data as requested during iCloud sign-in", 62, 2, &dword_1DAA3F000, v61, v62, MEMORY[0x1E69E7CC0]);

    v53 |= 4uLL;
    v63 = qword_1EE11F8F0;
    v64 = sub_1DACB92F4();
    [v63 setBool:0 forKey:v64];

    if (qword_1EE11D6C8 != -1)
    {
      swift_once();
    }

    LOBYTE(v81[0]) = 0;
    type metadata accessor for LegacyStocksAssembly();
    sub_1DAA69168(&qword_1ECBE92B8, v65, type metadata accessor for LegacyStocksAssembly, &unk_1DACD7B48);
    sub_1DACB80C4();
  }

  sub_1DAA691B0();
  v66 = swift_allocObject();
  *(v66 + 16) = xmmword_1DACCB1F0;
  *(v66 + 32) = [v43 zoneMergeHandler];
  type metadata accessor for UserInfoMergeHandler();
  *(v66 + 40) = swift_allocObject();
  v67 = objc_allocWithZone(SCWDatabase);
  sub_1DAA6AE1C();
  v68 = sub_1DACB9634();

  v69 = [v67 initWithSchema:v46 store:v50 features:v53 mergeHandlers:v68 containerProxy:0];

  v70 = v79;
  v71 = *(v78 + 8);
  v71(v7, v79);
  v71(v76, v70);
  result = (v71)(v77, v70);
  *v80 = v69;
  return result;
}

id sub_1DAA68F5C(uint64_t a1, uint64_t a2)
{
  if (qword_1EE124160 != -1)
  {
    swift_once();
  }

  sub_1DAA69168(&qword_1EE123950, a2, type metadata accessor for LegacyStocksAssembly, &unk_1DACD7B08);
  sub_1DACB7F84();
  v2 = v9 - 2 >= 6 && v9 == 0;
  sub_1DAA691B0();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1DACCB1F0;
  *(v3 + 32) = [objc_opt_self() zoneSchema];
  *(v3 + 40) = sub_1DAA694E8();
  v4 = objc_allocWithZone(SCWDatabaseSchema);
  v5 = sub_1DACB92F4();
  sub_1DAA420F4(0, &unk_1EE11F910, off_1E85E21A8);
  v6 = sub_1DACB9634();

  v7 = [v4 initWithName:v5 environment:v2 security:1 zoneSchemas:v6];

  return v7;
}

uint64_t sub_1DAA69168(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1DAA691B0()
{
  if (!qword_1EE11F490)
  {
    v0 = sub_1DACBA124();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE11F490);
    }
  }
}

id sub_1DAA694E8()
{
  sub_1DAA4E420(0, &qword_1EE11F490, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1DACC4A10;
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1DACC91B0;
  sub_1DAA420F4(0, &qword_1EE11F788, 0x1E696AEC0);
  v2 = objc_allocWithZone(SCWRecordFieldSchema);
  v3 = sub_1DACB92F4();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [v2 initWithName:v3 valueClass:ObjCClassFromMetadata required:0 encrypted:1];

  *(v1 + 32) = v5;
  sub_1DAA420F4(0, &qword_1EE11F7D0, 0x1E695DF00);
  v6 = objc_allocWithZone(SCWRecordFieldSchema);
  v7 = sub_1DACB92F4();
  v8 = swift_getObjCClassFromMetadata();
  v9 = [v6 initWithName:v7 valueClass:v8 required:0 encrypted:1];

  *(v1 + 40) = v9;
  sub_1DAA420F4(0, qword_1EE123DC0, 0x1E696AD98);
  v10 = objc_allocWithZone(SCWRecordFieldSchema);
  v11 = sub_1DACB92F4();
  v12 = [v10 initWithName:v11 valueClass:swift_getObjCClassFromMetadata() required:0 encrypted:0];

  *(v1 + 48) = v12;
  v13 = objc_allocWithZone(SCWRecordFieldSchema);
  v14 = sub_1DACB92F4();
  v15 = [v13 initWithName:v14 valueClass:ObjCClassFromMetadata required:0 encrypted:0];

  *(v1 + 56) = v15;
  v16 = objc_allocWithZone(SCWRecordFieldSchema);
  v17 = sub_1DACB92F4();
  v18 = [v16 initWithName:v17 valueClass:v8 required:0 encrypted:1];

  *(v1 + 64) = v18;
  v19 = objc_allocWithZone(SCWRecordFieldSchema);
  v20 = sub_1DACB92F4();
  v21 = [v19 initWithName:v20 valueClass:v8 required:0 encrypted:1];

  *(v1 + 72) = v21;
  v22 = objc_allocWithZone(SCWRecordSchema);
  v23 = sub_1DACB92F4();
  sub_1DAA420F4(0, &qword_1EE11F850, off_1E85E20C0);
  v24 = sub_1DACB9634();

  v25 = [v22 initWithRecordType:v23 fieldSchemas:v24];

  *(v0 + 32) = v25;
  v26 = objc_allocWithZone(SCWZoneSchema);
  v27 = sub_1DACB92F4();
  sub_1DAA420F4(0, &qword_1EE11F8D8, off_1E85E20C8);
  v28 = sub_1DACB9634();

  v29 = [v26 initWithName:v27 atomic:1 recordSchemas:v28];

  return v29;
}

unint64_t sub_1DAA69984(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v5 = *(a1 + 16);
  if (v5)
  {
    a2(0);
    v10 = sub_1DACB9EA4();
    v11 = a1 + 32;
    sub_1DACB71F4();
    v12 = MEMORY[0x1E69E7CA0];
    while (1)
    {
      sub_1DAB6972C(v11, &v19, a3, a4, v12 + 8, sub_1DAB69F80);
      v13 = v19;
      result = a5(v19);
      if (v15)
      {
        break;
      }

      *(v10 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v10[6] + 8 * result) = v13;
      result = sub_1DAA5616C(&v20, (v10[7] + 32 * result));
      v16 = v10[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v10[2] = v18;
      v11 += 40;
      if (!--v5)
      {

        return v10;
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

uint64_t sub_1DAA69AC4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1DAA69B54(uint64_t a1, uint64_t a2)
{
  v66 = *MEMORY[0x1E69E9840];
  v4 = sub_1DACB7AB4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v62 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v51 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v51 - v11;
  v60 = objc_opt_self();
  v13 = [v60 defaultManager];
  v61 = a1;
  sub_1DACB7A74();
  v14 = sub_1DACB92F4();

  LOBYTE(a1) = [v13 fileExistsAtPath_];

  if ((a1 & 1) == 0)
  {
    v58 = a2;
    sub_1DAA6A214(0, &qword_1EE1252D8, MEMORY[0x1E6968FB0]);
    v15 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v59 = *(v5 + 72);
    v16 = swift_allocObject();
    v53 = xmmword_1DACC1D40;
    *(v16 + 16) = xmmword_1DACC1D40;
    v51 = v16;
    v52 = v16 + v15;
    v17 = objc_opt_self();
    if (qword_1EE125750 != -1)
    {
      swift_once();
    }

    sub_1DAA4DA94(v10);
    sub_1DACB7A14();
    v18 = *(v5 + 8);
    v18(v10, v4);
    v19 = sub_1DACB7A04();
    v18(v12, v4);
    v20 = v17;
    v57 = v17;
    v21 = v58;
    v22 = v4;
    v23 = [v20 preferredFileURLForSchema:v58 parentDirectoryURL:v19];

    sub_1DACB7A44();
    sub_1DAA4DA94(v10);
    sub_1DACB7A14();
    v18(v10, v22);
    v24 = sub_1DACB7A04();
    v54 = v18;
    v55 = v5 + 8;
    v18(v12, v22);
    v25 = [v57 preferredFileURLForSchema:v21 parentDirectoryURL:v24];

    v26 = v52;
    sub_1DACB7A44();

    v57 = *(v5 + 16);
    v58 = v5 + 16;
    v27 = 2;
    v56 = xmmword_1DACC1D20;
    v28 = MEMORY[0x1E69E6158];
    v29 = v62;
    while (1)
    {
      v62 = v27;
      (v57)(v29, v26, v22);
      sub_1DAA41D64(0);
      v30 = swift_allocObject();
      *(v30 + 16) = v56;
      v31 = sub_1DACB7A74();
      v33 = v32;
      *(v30 + 56) = v28;
      v34 = sub_1DAA443C8();
      *(v30 + 64) = v34;
      *(v30 + 32) = v31;
      *(v30 + 40) = v33;
      sub_1DAA420F4(0, &qword_1EE123DB0, 0x1E69E9BF8);
      v35 = sub_1DACB9AD4();
      v36 = sub_1DACB9914();
      sub_1DACB8C64("migrating database JSON store from %{public}@", 45, 2, &dword_1DAA3F000, v35, v36, v30);

      v37 = [v60 defaultManager];
      v38 = sub_1DACB7A04();
      v39 = sub_1DACB7A04();
      v64 = 0;
      v40 = [v37 copyItemAtURL:v38 toURL:v39 error:&v64];

      if (v40)
      {
        break;
      }

      v41 = v64;
      v42 = sub_1DACB78C4();

      swift_willThrow();
      v43 = swift_allocObject();
      *(v43 + 16) = v53;
      v44 = sub_1DACB7A74();
      v28 = MEMORY[0x1E69E6158];
      *(v43 + 56) = MEMORY[0x1E69E6158];
      *(v43 + 64) = v34;
      *(v43 + 32) = v44;
      *(v43 + 40) = v45;
      v64 = 0;
      v65 = 0xE000000000000000;
      v63 = v42;
      sub_1DAA4436C(0, &qword_1EE123B10, MEMORY[0x1E69E7280]);
      sub_1DACB9DD4();
      v46 = v64;
      v47 = v65;
      *(v43 + 96) = v28;
      *(v43 + 104) = v34;
      *(v43 + 72) = v46;
      *(v43 + 80) = v47;
      v48 = sub_1DACB9AD4();
      v49 = sub_1DACB9914();
      sub_1DACB8C64("failed to database JSON store from %{public}@ with error: %{public}@", 68, 2, &dword_1DAA3F000, v48, v49, v43);

      v54(v29, v22);
      v26 += v59;
      v27 = (v62 - 1);
      if (v62 == 1)
      {
        goto LABEL_9;
      }
    }

    v50 = v64;
    v54(v29, v22);
LABEL_9:
  }
}

void sub_1DAA6A19C()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v1 = sub_1DACB92F4();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    qword_1EE11F8F0 = v2;
  }

  else
  {
    __break(1u);
  }
}

void sub_1DAA6A214(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1DACBA124();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1DAA6A268()
{
  result = qword_1EE11F470;
  if (!qword_1EE11F470)
  {
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_1EE11F470);
  }

  return result;
}

uint64_t type metadata accessor for UpdateAdsUserIDCommand(uint64_t a1)
{
  result = qword_1EE121210;
  if (!qword_1EE121210)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DAA6A324(uint64_t a1)
{
  result = sub_1DACB7CC4();
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

uint64_t type metadata accessor for UpdateUserStartDateCommand(uint64_t a1)
{
  result = qword_1EE1209B8;
  if (!qword_1EE1209B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DAA6A414(uint64_t a1)
{
  result = sub_1DACB7CC4();
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

uint64_t type metadata accessor for UpdateAppLaunchUpsellLastSeenDateCommand(uint64_t a1)
{
  result = qword_1EE1204F0;
  if (!qword_1EE1204F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DAA6A540(uint64_t a1)
{
  result = sub_1DACB7CC4();
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

uint64_t type metadata accessor for UpdateAppReviewRequestLastSeenDateCommand(uint64_t a1)
{
  result = qword_1EE1204D0;
  if (!qword_1EE1204D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DAA6A7CC(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1DAA6A8B8(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 8 * v7 + 32), (v6 + 32), 8 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_1DAA6A8B8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1DAA6A9E0(0, &qword_1EE11F488, sub_1DAA6A268, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void sub_1DAA6A9E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1DAA6AA44(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void sub_1DAA6AA98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1DAA6AAFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void sub_1DAA6AB50(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_1DAA6ABE8()
{
  result = qword_1EE11E550;
  if (!qword_1EE11E550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E550);
  }

  return result;
}

uint64_t sub_1DAA6AC44(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  if (qword_1EE11EDC0 != -1)
  {
    swift_once();
  }

  v4 = qword_1EE13E298;
  sub_1DAA41D64(0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1DACC1D20;
  sub_1DAA4436C(0, &qword_1EE123B10, MEMORY[0x1E69E7280]);
  sub_1DACB9DD4();
  *(v5 + 56) = MEMORY[0x1E69E6158];
  *(v5 + 64) = sub_1DAA443C8();
  *(v5 + 32) = 0;
  *(v5 + 40) = 0xE000000000000000;
  v6 = sub_1DACB9914();
  sub_1DACB8C64("skipping KVS cleanup because %{public}@", 39, 2, &dword_1DAA3F000, v4, v6, v5);

  return a2(a1);
}

uint64_t objectdestroy_38Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

unint64_t sub_1DAA6AE1C()
{
  result = qword_1EE11F8E0;
  if (!qword_1EE11F8E0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE11F8E0);
  }

  return result;
}

uint64_t sub_1DAA6AF50@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA44440(0, &qword_1EE125CC0, &protocol descriptor for QuoteDetailServiceType, 1);
  sub_1DACB8254();
  if (v8[3])
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1DAA46854(0, &qword_1EE125588, MEMORY[0x1E69D62B0], MEMORY[0x1E69D6A80]);
    v4 = sub_1DACB8224();
    if (v4)
    {
      v5 = v4;
      v6 = type metadata accessor for QuoteDetailManager();
      swift_allocObject();
      result = sub_1DAA6B3B0(v8, v5);
      a2[3] = v6;
      a2[4] = &off_1F56916D0;
      *a2 = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1DAA6B110()
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
  sub_1DAA58090(0, &qword_1EE123E78, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
  sub_1DAA57D6C(&qword_1EE123E70, &qword_1EE123E78, v5);
  sub_1DACB9BB4();
  (*(v0 + 104))(v2, *MEMORY[0x1E69E8090], v10);
  v6 = sub_1DACB9974();
  v7 = v11;
  *(v11 + 16) = v6;
  return v7;
}

uint64_t sub_1DAA6B3B0(void *a1, uint64_t a2)
{
  v16 = a2;
  v3 = v2;
  v13 = a1;
  v4 = sub_1DACB81D4();
  v14 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v15 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DACB86E4();
  MEMORY[0x1EEE9AC00](v6);
  v17 = MEMORY[0x1E69E7CC0];
  sub_1DAA5CD48(&qword_1EE1255A8, 255, MEMORY[0x1E69D67A0], MEMORY[0x1E69D67A8]);
  sub_1DAA5EE58(0);
  v7 = MEMORY[0x1E69E6328];
  sub_1DAA5CD48(&qword_1EE125508, 255, sub_1DAA5EE58, MEMORY[0x1E69E6328]);
  sub_1DACB9BB4();
  sub_1DAA6B740(0);
  swift_allocObject();
  *(v2 + 56) = sub_1DACB8354();
  v8 = v13;
  sub_1DAA4D678(v13, v2 + 16);
  sub_1DAA6B87C(0, &qword_1EE1252D0, MEMORY[0x1E69D6420], MEMORY[0x1E69E6F90]);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1DACC1D20;
  sub_1DACB81C4();
  v17 = v9;
  sub_1DAA5CD48(&qword_1EE1255D0, 255, MEMORY[0x1E69D6420], MEMORY[0x1E69D6428]);
  sub_1DAA5EFBC(0);
  sub_1DAA5CD48(&qword_1EE125530, 255, sub_1DAA5EFBC, v7);
  sub_1DACB9BB4();
  sub_1DAA6B87C(0, &qword_1EE11FF50, sub_1DAA6B9F0, MEMORY[0x1E69D6A80]);
  swift_allocObject();
  v10 = sub_1DACB8914();
  __swift_destroy_boxed_opaque_existential_1(v8);
  *(v3 + 64) = v10;
  return v3;
}

void sub_1DAA6B740(uint64_t a1)
{
  if (!qword_1EE120010)
  {
    sub_1DAA46720();
    sub_1DAA6B80C(255, &qword_1EE11FCE0, MEMORY[0x1E69E5E28]);
    sub_1DAA5CD48(&qword_1EE11F990, 255, sub_1DAA46720, MEMORY[0x1E69E64F8]);
    v1 = sub_1DACB8374();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE120010);
    }
  }
}

void sub_1DAA6B80C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void, uint64_t, void))
{
  if (!*a2)
  {
    v6 = type metadata accessor for QuoteDetail(255);
    v7 = a3(a1, MEMORY[0x1E69E6158], v6, MEMORY[0x1E69E6168]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1DAA6B87C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1DAA6B8E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for QuoteDetailManager.StoreDescriptor;
    v8[1] = type metadata accessor for QuoteDetail(255);
    v8[2] = sub_1DAA6BA10();
    v8[3] = sub_1DAA5CD48(&qword_1EE1238E0, 255, type metadata accessor for QuoteDetail, &protocol conformance descriptor for QuoteDetail);
    v8[4] = sub_1DAA5CD48(&qword_1EE1238E8, 255, type metadata accessor for QuoteDetail, &protocol conformance descriptor for QuoteDetail);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_1DAA6BA10()
{
  result = qword_1EE121E90[0];
  if (!qword_1EE121E90[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE121E90);
  }

  return result;
}

uint64_t sub_1DAA6BA64()
{
  v1 = sub_1DACB7E44();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v17[0] = sub_1DACB92E4();
  v2 = *(v17[0] - 8);
  v3 = MEMORY[0x1EEE9AC00](v17[0]);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v17 - v6;
  v8 = *v0;
  v9 = v0[3];
  v10 = v0[4];
  if (v9 == sub_1DACB9324() && v10 == v11)
  {
  }

  else
  {
    v13 = sub_1DACBA174();

    if ((v13 & 1) == 0)
    {
      sub_1DACB71E4();
      return v8;
    }
  }

  sub_1DACB9284();
  v14 = v17[0];
  (*(v2 + 16))(v5, v7, v17[0]);
  if (qword_1EE123DD8 != -1)
  {
    swift_once();
  }

  v15 = qword_1EE13E470;
  sub_1DACB7DF4();
  v8 = sub_1DACB9384();
  (*(v2 + 8))(v7, v14);
  return v8;
}

uint64_t sub_1DAA6BCC8()
{
  v1 = *v0;
  os_unfair_lock_lock(*v0 + 12);
  v2 = sub_1DACB71E4();
  v3 = sub_1DAA6BD48(v2, &v1[14]);

  os_unfair_lock_unlock(v1 + 12);
  return v3;
}

uint64_t sub_1DAA6BD48(uint64_t result, uint64_t a2)
{
  v3 = v2;
  v4 = *(result + 16);
  if (v4)
  {
    v6 = 0;
    v7 = result + 40;
    v8 = MEMORY[0x1E69E7CC0];
    v28 = result + 40;
    while (1)
    {
      v9 = (v7 + 16 * v6);
      for (i = v6; ; ++i)
      {
        if (i >= v4)
        {
          __break(1u);
LABEL_19:
          __break(1u);
          return result;
        }

        v6 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_19;
        }

        v11 = *(a2 + 8);
        if (*(v11 + 16))
        {
          break;
        }

LABEL_4:
        v9 += 2;
        if (v6 == v4)
        {
          return v8;
        }
      }

      v12 = *(v9 - 1);
      v13 = *v9;
      sub_1DACB71E4();
      v14 = sub_1DAA4BF3C(v12, v13);
      if ((v15 & 1) == 0)
      {
        break;
      }

      v16 = *(v11 + 56) + 48 * v14;
      v17 = *(v16 + 8);
      v18 = *(v16 + 16);
      v25 = *(v16 + 24);
      v26 = *v16;
      v19 = *(v16 + 32);
      v23 = *(v16 + 41);
      v24 = *(v16 + 40);
      sub_1DACB71E4();
      sub_1DACB71E4();
      sub_1DACB71E4();

      result = swift_isUniquelyReferenced_nonNull_native();
      v27 = v3;
      if ((result & 1) == 0)
      {
        result = sub_1DAA929C8(0, *(v8 + 16) + 1, 1, v8);
        v8 = result;
      }

      v21 = *(v8 + 16);
      v20 = *(v8 + 24);
      if (v21 >= v20 >> 1)
      {
        result = sub_1DAA929C8((v20 > 1), v21 + 1, 1, v8);
        v8 = result;
      }

      *(v8 + 16) = v21 + 1;
      v22 = v8 + 48 * v21;
      *(v22 + 32) = v26;
      *(v22 + 40) = v17;
      *(v22 + 48) = v18;
      *(v22 + 56) = v25;
      *(v22 + 64) = v19;
      *(v22 + 72) = v24;
      *(v22 + 73) = v23;
      v3 = v27;
      v7 = v28;
      if (v6 == v4)
      {
        return v8;
      }
    }

    goto LABEL_4;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1DAA6BF0C()
{
  v1 = v0;
  sub_1DAA60E20(0, &qword_1EE125260, MEMORY[0x1E6969680]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v20 - v3;
  v5 = type metadata accessor for AppConfiguration(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DACB7FA4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE120068 != -1)
  {
    swift_once();
  }

  sub_1DAA655A8();
  sub_1DACB7F84();
  v12 = (*(v9 + 88))(v11, v8);
  if (v12 == *MEMORY[0x1E69D6D00])
  {
    v13 = objc_opt_self();
    v14 = v0[11];
    v15 = v0[12];
    __swift_project_boxed_opaque_existential_1(v0 + 8, v14);
    (*(v15 + 8))(v14, v15);
    v16 = *(v7 + 532);
    sub_1DAA640AC(v7);
    if ([v13 enabledForCurrentLevel_])
    {
      v17 = __swift_project_boxed_opaque_existential_1(v1 + 18, v1[21]);
      sub_1DAA6C50C(*v17 + OBJC_IVAR____TtC10StocksCore18UserRegionProvider_currentRegion, v4);
      v18 = sub_1DAA6C58C(v4);
      sub_1DAA6CA10(v4, &qword_1EE125260, MEMORY[0x1E6969680]);
      return v18 & 1;
    }

    goto LABEL_9;
  }

  if (v12 == *MEMORY[0x1E69D6D08])
  {
    v18 = 1;
    return v18 & 1;
  }

  if (v12 == *MEMORY[0x1E69D6D10])
  {
LABEL_9:
    v18 = 0;
    return v18 & 1;
  }

  result = sub_1DACB9E44();
  __break(1u);
  return result;
}

uint64_t sub_1DAA6C2A0()
{
  v14 = sub_1DACB8024();
  v0 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v2 = &v13 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1DACB8034();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_1DACB7FA4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA5B418(0);
  (*(v8 + 104))(v10, *MEMORY[0x1E69D6D00], v7);
  *v6 = sub_1DACB9324();
  v6[1] = v11;
  (*(v4 + 104))(v6, *MEMORY[0x1E69D6E98], v3);
  (*(v0 + 104))(v2, *MEMORY[0x1E69D6E90], v14);
  result = sub_1DACB8084();
  qword_1EE120070 = result;
  return result;
}

uint64_t sub_1DAA6C50C(uint64_t a1, uint64_t a2)
{
  sub_1DAA60E20(0, &qword_1EE125260, MEMORY[0x1E6969680]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAA6C58C(uint64_t a1)
{
  v3 = type metadata accessor for AppConfiguration(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA60E20(0, &qword_1EE125260, MEMORY[0x1E6969680]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v18 - v7;
  v9 = sub_1DACB7DC4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA6C50C(a1, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1DAA6CA10(v8, &qword_1EE125260, MEMORY[0x1E6969680]);
    v13 = 0;
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    v14 = v1[11];
    v15 = v1[12];
    __swift_project_boxed_opaque_existential_1(v1 + 8, v14);
    (*(v15 + 8))(v14, v15);
    v16 = *(v5 + 533);
    sub_1DACB71E4();
    sub_1DAA640AC(v5);
    v13 = sub_1DAA6C7DC(v12, v16);

    (*(v10 + 8))(v12, v9);
  }

  return v13 & 1;
}

uint64_t sub_1DAA6C7DC(uint64_t a1, uint64_t a2)
{
  v3 = sub_1DACB7DC4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_1DAA6C9CC(&qword_1EE125270, MEMORY[0x1E6969690]), v7 = sub_1DACB91E4(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_1DAA6C9CC(&qword_1EE125268, MEMORY[0x1E6969698]);
      v15 = sub_1DACB9264();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_1DAA6C9CC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1DACB7DC4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DAA6CA10(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1DAA60E20(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void *sub_1DAA6CBB4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA44440(0, &qword_1EE125BD0, &protocol descriptor for FeatureAvailabilityType, 1);
  result = sub_1DACB8254();
  if (v7)
  {
    sub_1DAA4D460(&v6, v8);
    v3 = v9;
    v4 = v10;
    __swift_project_boxed_opaque_existential_1(v8, v9);
    v5 = (*(v4 + 32))(v3, v4);
    __swift_destroy_boxed_opaque_existential_1(v8);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return (v5 & 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1DAA6CC84()
{
  v1 = v0;
  v2 = type metadata accessor for AppConfiguration(0);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v25[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v25[-v6];
  if (qword_1EE120118 != -1)
  {
    swift_once();
  }

  sub_1DAA655A8();
  sub_1DACB7F84();
  if (v26)
  {
    return (v26 == 1);
  }

  v9 = [objc_opt_self() mainBundle];
  v10 = [v9 bundleIdentifier];

  if (v10)
  {
    v11 = sub_1DACB9324();
    v13 = v12;

    v14 = v1[11];
    v15 = v1[12];
    __swift_project_boxed_opaque_existential_1(v1 + 8, v14);
    (*(v15 + 8))(v14, v15);
    v16 = *(v7 + 149);
    sub_1DACB71E4();
    sub_1DAA640AC(v7);
    v17 = (v16 + 48);
    v18 = *(v16 + 16) + 1;
    while (--v18)
    {
      v8 = *v17;
      if (*(v17 - 2) != v11 || *(v17 - 1) != v13)
      {
        v17 += 40;
        if ((sub_1DACBA174() & 1) == 0)
        {
          continue;
        }
      }

      sub_1DACB71E4();

      return v8;
    }
  }

  v20 = objc_opt_self();
  v21 = v1[11];
  v22 = v1[12];
  __swift_project_boxed_opaque_existential_1(v1 + 8, v21);
  (*(v22 + 8))(v21, v22);
  v23 = *(v5 + 148);
  sub_1DAA640AC(v5);
  return [v20 enabledForCurrentLevel_];
}

uint64_t sub_1DAA6CF7C()
{
  v10 = sub_1DACB8024();
  v0 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v2 = v8 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DACB8034();
  v3 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v5 = v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA4A8CC(0, &qword_1EE120040, sub_1DAA6D2B8, &type metadata for StocksDataServiceEnablement);
  v8[1] = "e_auth_token_cache";
  v8[2] = v6;
  v14 = 0;
  sub_1DAA4A9E8(0, &qword_1EE11F4D8, &qword_1EE120050, &type metadata for StocksDataServiceEnablement);
  sub_1DAA4AA40(0, &qword_1EE120050, &type metadata for StocksDataServiceEnablement);
  *(swift_allocObject() + 16) = xmmword_1DACC2610;
  v13 = 0;
  sub_1DACB8044();
  v12 = 1;
  sub_1DACB8044();
  v11 = 2;
  sub_1DACB8044();
  (*(v3 + 104))(v5, *MEMORY[0x1E69D6EA0], v9);
  (*(v0 + 104))(v2, *MEMORY[0x1E69D6E88], v10);
  sub_1DAA6D378();
  result = sub_1DACB8064();
  qword_1EE120120 = result;
  return result;
}

unint64_t sub_1DAA6D2B8()
{
  result = qword_1EE123938;
  if (!qword_1EE123938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE123938);
  }

  return result;
}

unint64_t sub_1DAA6D324()
{
  result = qword_1EE123930;
  if (!qword_1EE123930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE123930);
  }

  return result;
}

unint64_t sub_1DAA6D378()
{
  result = qword_1EE123940;
  if (!qword_1EE123940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE123940);
  }

  return result;
}

uint64_t sub_1DAA6D3CC(uint64_t a1)
{
  v2 = sub_1DAA6D4B0();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45770](a1, v2, v3);
}

unint64_t sub_1DAA6D4B0()
{
  result = qword_1EE123928;
  if (!qword_1EE123928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE123928);
  }

  return result;
}

void sub_1DAA6D504(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x64656C62616E65;
  if (v2 != 1)
  {
    v5 = 0x64656C6261736964;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x746C7561666564;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1DAA6D598(void *a1)
{
  v3 = type metadata accessor for AppConfiguration(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v16[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for RawAttributionSource(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v16[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  (*(v10 + 8))(v9, v10);
  sub_1DAA6DD6C(v8);
  sub_1DAA4D09C(v5, type metadata accessor for AppConfiguration);
  sub_1DAA6E174(0, &qword_1EE1240F0, type metadata accessor for RawAttributionSource, MEMORY[0x1E69D6550]);
  swift_allocObject();
  *(v1 + 16) = sub_1DACB8424();
  v11 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  (*(v12 + 24))(v11, v12);
  swift_allocObject();
  swift_weakInit();
  v13 = sub_1DACB89D4();
  sub_1DACB8444();

  __swift_destroy_boxed_opaque_existential_1(v16);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

uint64_t sub_1DAA6D7C0()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DAA6D7F8(void **a1, char a2, uint64_t a3)
{
  v4 = *a1;
  sub_1DAA4D678(a3, v8);
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  sub_1DAA4D460(v8, v5 + 24);
  *(v5 + 64) = v4;
  v6 = v4;
  sub_1DACB8C14();
}

uint64_t sub_1DAA6D88C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

void sub_1DAA6D8F8(uint64_t a1)
{
  sub_1DAA52FAC(319, &qword_1EE1263D0, MEMORY[0x1E6968FB0]);
  if (v1 <= 0x3F)
  {
    sub_1DAA52FAC(319, &qword_1EE124698, type metadata accessor for RawAttributionSourceLogo);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1DAA6DA04(uint64_t a1)
{
  result = type metadata accessor for RawAttributionSourceLogo.Unresolved(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for RawAttributionSourceLogo.Resolved(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1DAA6DAA0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t), unint64_t *a5, uint64_t (*a6)(uint64_t))
{
  a4(319, a2, a3);
  if (v8 <= 0x3F)
  {
    sub_1DAA52FAC(319, a5, a6);
    if (v9 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1DAA6DB7C(uint64_t a1)
{
  result = sub_1DACB7AB4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1DAA6DC10(void **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = sub_1DACB92F4();
  [v3 addObserver:a2 forZone:v4];
}

uint64_t sub_1DAA6DCD8(uint64_t a1)
{
  result = type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1DAA6DD6C@<X0>(char *a1@<X8>)
{
  v2 = MEMORY[0x1E69E6720];
  sub_1DAA6E174(0, &qword_1EE124698, type metadata accessor for RawAttributionSourceLogo, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v28[-v4];
  sub_1DAA6E174(0, &qword_1EE1263D0, MEMORY[0x1E6968FB0], v2);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v28[-v7];
  v9 = sub_1DACB7E44();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v10 = sub_1DACB92E4();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v28[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v28[-v15];
  sub_1DACB9284();
  (*(v11 + 16))(v14, v16, v10);
  if (qword_1EE123DD8 != -1)
  {
    swift_once();
  }

  v17 = qword_1EE13E470;
  sub_1DACB7DF4();
  v18 = sub_1DACB9384();
  v20 = v19;
  (*(v11 + 8))(v16, v10);
  sub_1DAA6E1D8();
  sub_1DACB7A94();

  sub_1DAA6E428(v5);
  v21 = type metadata accessor for RawAttributionSourceLogo(0);
  swift_storeEnumTagMultiPayload();
  v22 = *(*(v21 - 8) + 56);
  v22(v5, 0, 1, v21);
  v23 = type metadata accessor for RawAttributionSource(0);
  v24 = *(v23 + 20);
  v25 = sub_1DACB7AB4();
  (*(*(v25 - 8) + 56))(&a1[v24], 1, 1, v25);
  v26 = *(v23 + 24);
  v22(&a1[v26], 1, 1, v21);
  *a1 = v18;
  *(a1 + 1) = v20;
  sub_1DAA6EBDC(v8, &a1[v24], &qword_1EE1263D0, MEMORY[0x1E6968FB0]);
  return sub_1DAA6EBDC(v5, &a1[v26], &qword_1EE124698, type metadata accessor for RawAttributionSourceLogo);
}

void sub_1DAA6E174(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1DAA6E1D8()
{
  v0 = sub_1DACB7E44();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v19 - v5;
  sub_1DACB7DF4();
  v7 = sub_1DACB7D24();
  v9 = v8;
  v10 = *(v1 + 8);
  v10(v6, v0);
  if (v9)
  {
    v11 = v7;
  }

  else
  {
    v11 = 21333;
  }

  if (v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = 0xE200000000000000;
  }

  sub_1DACB7DF4();
  v13 = sub_1DACB7D54();
  v15 = v14;
  v10(v4, v0);
  if (v15)
  {
    v16 = v13;
  }

  else
  {
    v16 = 28261;
  }

  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = 0xE200000000000000;
  }

  v19[0] = 0;
  v19[1] = 0xE000000000000000;
  sub_1DACB9C94();
  MEMORY[0x1E1276F20](0xD000000000000023, 0x80000001DACF1070);
  MEMORY[0x1E1276F20](v11, v12);
  MEMORY[0x1E1276F20](0x3D676E616C2E26, 0xE700000000000000);
  MEMORY[0x1E1276F20](v16, v17);

  MEMORY[0x1E1276F20](45, 0xE100000000000000);
  MEMORY[0x1E1276F20](v11, v12);

  MEMORY[0x1E1276F20](0x613D637273742E26, 0xEC000000656C7070);
  return v19[0];
}

id SCWDatabaseLog(uint64_t a1)
{
  if (SCWDatabaseLog_onceToken != -1)
  {
    SCWDatabaseLog_cold_1();
  }

  v2 = SCWDatabaseLog_databaseLog;

  return v2;
}

uint64_t sub_1DAA6E428@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  sub_1DAA52FAC(0, qword_1EE120CD0, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v30 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v34 = &v28 - v4;
  sub_1DAA52FAC(0, &qword_1EE1263D0, MEMORY[0x1E6968FB0]);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v33 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v28 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant(0);
  v32 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DACB7A94();
  v16 = sub_1DACB7AB4();
  v17 = *(v16 - 8);
  v18 = v17[6];
  result = v18(v12, 1, v16);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_6;
  }

  v35 = v17[2];
  v35(v15, v12, v16);
  v20 = *(v13 + 20);
  v28 = v15;
  *&v15[v20] = 0x4016000000000000;
  v21 = v17[1];
  v21(v12, v16);
  sub_1DACB7A94();
  v29 = v18;
  result = v18(v10, 1, v16);
  if (result == 1)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v22 = v34;
  v35(v34, v10, v16);
  *(v22 + *(v13 + 20)) = 0x4016000000000000;
  v21(v10, v16);
  v23 = *(v32 + 56);
  v23(v22, 0, 1, v13);
  v24 = v33;
  sub_1DACB7A94();
  result = v29(v24, 1, v16);
  if (result != 1)
  {
    v25 = v30;
    v35(v30, v24, v16);
    *(v25 + *(v13 + 20)) = 0x4016000000000000;
    v21(v24, v16);
    v23(v25, 0, 1, v13);
    v26 = v31;
    sub_1DAA6E94C(v28, v31, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
    v27 = type metadata accessor for RawAttributionSourceLogo.Unresolved(0);
    sub_1DAA6EA04(v22, v26 + *(v27 + 20), qword_1EE120CD0, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
    return sub_1DAA6EA04(v25, v26 + *(v27 + 24), qword_1EE120CD0, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1DAA6E8C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DACB7AB4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1DAA6E94C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t __SCWDatabaseLog_block_invoke()
{
  SCWDatabaseLog_databaseLog = os_log_create("com.apple.stocks", "SCWDatabase");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1DAA6EA04(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1DAA52FAC(0, a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1DAA6EA70(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1DAA52FAC(0, a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_1DAA6EADC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1DAA6F818(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_1DAA6EB5C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1DAA46854(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_1DAA6EBDC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1DAA6E174(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

void sub_1DAA6EC5C(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *a1;
  v10 = sub_1DACB92F4();
  v11 = swift_allocObject();
  v11[2] = a2;
  v11[3] = a3;
  v11[4] = a4;
  v11[5] = a5;
  v13[4] = sub_1DAA77048;
  v13[5] = v11;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1DAA76FC8;
  v13[3] = &block_descriptor_8;
  v12 = _Block_copy(v13);
  sub_1DACB71F4();
  sub_1DACB71F4();

  [v9 readContentsOfZone:v10 withBlock:v12];
  _Block_release(v12);
}

void sub_1DAA6EDC4(uint64_t a1)
{
  if (!qword_1EE124070)
  {
    sub_1DAA6EE5C();
    sub_1DAA6EEB0();
    sub_1DAA6EF04();
    v1 = sub_1DACB8D94();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE124070);
    }
  }
}

unint64_t sub_1DAA6EE5C()
{
  result = qword_1EE124D70[0];
  if (!qword_1EE124D70[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE124D70);
  }

  return result;
}

unint64_t sub_1DAA6EEB0()
{
  result = qword_1EE125148;
  if (!qword_1EE125148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE125148);
  }

  return result;
}

unint64_t sub_1DAA6EF04()
{
  result = qword_1EE125150;
  if (!qword_1EE125150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE125150);
  }

  return result;
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1DAA6EF68(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v43 = a2;
  v39 = a1;
  v42 = type metadata accessor for RawAttributionSourceLogo;
  v6 = MEMORY[0x1E69E6720];
  sub_1DAA46854(0, &qword_1EE124698, type metadata accessor for RawAttributionSourceLogo, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v40 = v33 - v8;
  v41 = MEMORY[0x1E6968FB0];
  sub_1DAA46854(0, &qword_1EE1263D0, MEMORY[0x1E6968FB0], v6);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v33 - v10;
  v33[0] = v33 - v10;
  v38 = type metadata accessor for RawAttributionSource(0) - 8;
  MEMORY[0x1EEE9AC00](v38);
  v37 = v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1DACB9944();
  v35 = *(v13 - 8);
  v36 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1DACB9924();
  MEMORY[0x1EEE9AC00](v16);
  v17 = sub_1DACB9004();
  MEMORY[0x1EEE9AC00](v17 - 8);
  v45[3] = type metadata accessor for SDSMetadataCache();
  v45[4] = &off_1F568E330;
  v45[0] = a3;
  *(a4 + 80) = 0;
  v18 = sub_1DAA420F4(0, &qword_1EE123DE8, 0x1E69E9610);
  *(a4 + 88) = 0u;
  v33[1] = "https://www.apple.com";
  v33[2] = v18;
  *(a4 + 104) = 0u;
  *(a4 + 120) = 0;
  sub_1DACB8FD4();
  v44 = MEMORY[0x1E69E7CC0];
  sub_1DAA4F53C(&unk_1EE123DF0, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  v19 = MEMORY[0x1E69E8030];
  sub_1DAA46854(0, &qword_1EE123E78, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
  sub_1DAA585BC(&qword_1EE123E70, &qword_1EE123E78, v19);
  sub_1DACB9BB4();
  (*(v35 + 104))(v15, *MEMORY[0x1E69E8090], v36);
  v20 = sub_1DACB9974();
  v34 = a4;
  *(a4 + 128) = v20;
  *(a4 + 24) = v39;
  *(a4 + 32) = v43;
  sub_1DAA4D678(v45, a4 + 40);
  v21 = sub_1DACB7AB4();
  v22 = *(*(v21 - 8) + 56);
  v22(v11, 1, 1, v21);
  v23 = type metadata accessor for RawAttributionSourceLogo(0);
  v24 = *(*(v23 - 8) + 56);
  v25 = v40;
  v24(v40, 1, 1, v23);
  v26 = v37;
  v27 = v38;
  v28 = *(v38 + 28);
  v22(&v37[v28], 1, 1, v21);
  v29 = *(v27 + 32);
  v24(&v26[v29], 1, 1, v23);
  *v26 = 0;
  *(v26 + 1) = 0xE000000000000000;
  sub_1DACB71F4();
  sub_1DAA6EB5C(v33[0], &v26[v28], &qword_1EE1263D0, v41);
  sub_1DAA6EB5C(v25, &v26[v29], &qword_1EE124698, v42);
  sub_1DAA46854(0, &qword_1EE1240F0, type metadata accessor for RawAttributionSource, MEMORY[0x1E69D6550]);
  swift_allocObject();
  v30 = sub_1DACB8424();
  v31 = v34;
  *(v34 + 16) = v30;
  sub_1DAA6F4E8();
  __swift_destroy_boxed_opaque_existential_1(v45);
  return v31;
}

uint64_t sub_1DAA6F4E8()
{
  v1 = sub_1DACB8FB4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1DACB9004();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  aBlock[4] = sub_1DAA702F8;
  v13 = v0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DAA5796C;
  aBlock[3] = &block_descriptor_9;
  v9 = _Block_copy(aBlock);
  sub_1DACB71F4();
  sub_1DACB8FD4();
  v11[1] = MEMORY[0x1E69E7CC0];
  sub_1DAA66A08(&qword_1EE124040, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1DAA6F818(0, &qword_1EE123EC0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1DAA6F790();
  sub_1DACB9BB4();
  MEMORY[0x1E1277440](0, v8, v4, v9);
  _Block_release(v9);
  (*(v2 + 8))(v4, v1);
  (*(v6 + 8))(v8, v5);
}

unint64_t sub_1DAA6F790()
{
  result = qword_1EE123EB0;
  if (!qword_1EE123EB0)
  {
    sub_1DAA571EC(255, &qword_1EE123EC0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE123EB0);
  }

  return result;
}

void sub_1DAA6F818(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1DAA6F880@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v5 = a1(0);
  result = swift_allocObject();
  a3[3] = v5;
  a3[4] = a2;
  *a3 = result;
  return result;
}

uint64_t sub_1DAA6FA5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = a1;
  v13 = sub_1DACB81D4();
  v12[0] = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v12[1] = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DACB86E4();
  MEMORY[0x1EEE9AC00](v6);
  v17 = type metadata accessor for AttributionSourceAssetService();
  v18 = &off_1F5682040;
  *&v16 = a2;
  v15 = MEMORY[0x1E69E7CC0];
  sub_1DAA4F53C(&qword_1EE1255A8, MEMORY[0x1E69D67A0], MEMORY[0x1E69D67A8]);
  v7 = MEMORY[0x1E69D67A0];
  v8 = MEMORY[0x1E69E62F8];
  sub_1DAA46854(0, &qword_1EE125510, MEMORY[0x1E69D67A0], MEMORY[0x1E69E62F8]);
  sub_1DAA585BC(&qword_1EE125508, &qword_1EE125510, v7);
  sub_1DACB9BB4();
  sub_1DAA6FEDC(0, &qword_1EE120018, sub_1DAA6FE48, sub_1DAA6FF74, sub_1DAA70010);
  swift_allocObject();
  *(a3 + 64) = sub_1DACB8354();
  v9 = MEMORY[0x1E69D6420];
  sub_1DAA46854(0, &qword_1EE1252D0, MEMORY[0x1E69D6420], MEMORY[0x1E69E6F90]);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1DACC1D20;
  sub_1DACB81C4();
  v15 = v10;
  sub_1DAA4F53C(&qword_1EE1255D0, MEMORY[0x1E69D6420], MEMORY[0x1E69D6428]);
  sub_1DAA46854(0, &qword_1EE125540, v9, v8);
  sub_1DAA585BC(&qword_1EE125530, &qword_1EE125540, v9);
  sub_1DACB9BB4();
  sub_1DAA46854(0, &qword_1EE11FF40, sub_1DAA70044, MEMORY[0x1E69D6A80]);
  swift_allocObject();
  *(a3 + 16) = sub_1DACB8914();
  sub_1DAA4D460(&v16, a3 + 24);
  return a3;
}

void sub_1DAA6FE48(uint64_t a1)
{
  if (!qword_1EE1254E0)
  {
    sub_1DACB7AB4();
    sub_1DAA4F53C(&qword_1EE1263D8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
    v1 = sub_1DACB9834();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE1254E0);
    }
  }
}

void sub_1DAA6FEDC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(void))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    a5();
    v8 = sub_1DACB8374();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1DAA6FF74(uint64_t a1)
{
  if (!qword_1EE11FCE8)
  {
    sub_1DACB7AB4();
    sub_1DAA4F53C(&qword_1EE1263D8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
    v1 = sub_1DACB91A4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE11FCE8);
    }
  }
}

void sub_1DAA70078(uint64_t a1)
{
  if (!qword_1EE11FD28)
  {
    sub_1DAA70108();
    sub_1DAA70300();
    sub_1DAA70450();
    v1 = sub_1DACB8D94();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE11FD28);
    }
  }
}

unint64_t sub_1DAA70108()
{
  result = qword_1EE1208F0;
  if (!qword_1EE1208F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1208F0);
  }

  return result;
}

uint64_t sub_1DAA7015C(uint64_t a1)
{
  v2 = type metadata accessor for RawAttributionSource(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((a1 + 40), *(a1 + 64));
  sub_1DAA70354(v7);
  if (*(&v7[0] + 1))
  {
    v9 = v7[0];
    *v10 = v7[1];
    *&v10[16] = v8;
    sub_1DAB51504(&v9);
    v13 = v9;
    v5 = *v10;
    sub_1DAB53908(&v13);
    v12 = v5;
    sub_1DAA7139C(&v12, sub_1DAB5395C);
    v11 = *&v10[8];
    return sub_1DAB539D8(&v11, &qword_1EE123FD0, MEMORY[0x1E69E6158]);
  }

  else
  {
    sub_1DACB71F4();
    sub_1DACB8434();

    sub_1DAA66A08(&qword_1EE124AD8, type metadata accessor for RawAttributionSource, &unk_1DACC82E0);
    sub_1DACB8454();
    return sub_1DAA7139C(v4, type metadata accessor for RawAttributionSource);
  }
}

unint64_t sub_1DAA70300()
{
  result = qword_1EE123210;
  if (!qword_1EE123210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE123210);
  }

  return result;
}

void *sub_1DAA70354@<X0>(uint64_t a2@<X8>)
{
  result = sub_1DACB88F4();
  if (v7)
  {
    sub_1DACB8DB4();

    v4 = v7;
    v5 = v8;
    v6 = v9;
  }

  else
  {
    v6 = 0;
    v4 = 0uLL;
    v5 = 0uLL;
  }

  *a2 = v4;
  *(a2 + 16) = v5;
  *(a2 + 32) = v6;
  return result;
}

unint64_t sub_1DAA70450()
{
  result = qword_1EE123218;
  if (!qword_1EE123218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE123218);
  }

  return result;
}

uint64_t sub_1DAA704AC@<X0>(uint64_t *a1@<X8>)
{
  sub_1DACB88F4();
  sub_1DAA6EDC4(0);
  swift_allocObject();
  result = sub_1DACB8D74();
  *a1 = result;
  return result;
}

uint64_t sub_1DAA70564(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_1DAA52FAC(0, &qword_1EE1263D0, MEMORY[0x1E6968FB0]);
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
      sub_1DAA52FAC(0, &qword_1EE124698, type metadata accessor for RawAttributionSourceLogo);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 24);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_1DAA706E8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    sub_1DAA52FAC(0, &qword_1EE1263D0, MEMORY[0x1E6968FB0]);
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
      sub_1DAA52FAC(0, &qword_1EE124698, type metadata accessor for RawAttributionSourceLogo);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 24);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_1DAA70878(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1DAA52FAC(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1DAA709D8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1DAA4D678(a1, v8);
  v4 = sub_1DAA6CBB4(v8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (v4)
  {
    v5 = type metadata accessor for SDSAttributionProvider();
    result = sub_1DACB8224();
    if (result)
    {
      v7 = &off_1F5685C28;
LABEL_6:
      a2[3] = v5;
      a2[4] = v7;
      *a2 = result;
      return result;
    }

    __break(1u);
  }

  else
  {
    v5 = type metadata accessor for YahooAttributionProvider();
    result = sub_1DACB8244();
    if (result)
    {
      v7 = &off_1F568EB98;
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DAA70AC0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DAA70B98(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

BOOL sub_1DAA70BE0(void *a1, void *a2)
{
  v4 = type metadata accessor for RawAttributionSourceLogo(0);
  v52 = *(v4 - 8);
  v53 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA52FAC(0, &qword_1EE124698, type metadata accessor for RawAttributionSourceLogo);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v49 = &v45 - v8;
  sub_1DAA712D8(0, &qword_1EE124690, &qword_1EE124698, type metadata accessor for RawAttributionSourceLogo);
  v51 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v45 - v10;
  v12 = sub_1DACB7AB4();
  v54 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v50 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1E6968FB0];
  sub_1DAA52FAC(0, &qword_1EE1263D0, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v45 - v16;
  sub_1DAA712D8(0, &qword_1EE1252A0, &qword_1EE1263D0, v14);
  v19 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v45 - v20;
  v22 = a1;
  if (*a1 != *a2 && (sub_1DACBA174() & 1) == 0)
  {
    return 0;
  }

  v46 = v6;
  v48 = v11;
  v47 = type metadata accessor for RawAttributionSource(0);
  v23 = *(v47 + 20);
  v24 = *(v19 + 48);
  v25 = MEMORY[0x1E6968FB0];
  sub_1DAA70878(a1 + v23, v21, &qword_1EE1263D0, MEMORY[0x1E6968FB0]);
  sub_1DAA70878(a2 + v23, &v21[v24], &qword_1EE1263D0, v25);
  v26 = v54;
  v27 = *(v54 + 48);
  if (v27(v21, 1, v12) == 1)
  {
    if (v27(&v21[v24], 1, v12) == 1)
    {
      sub_1DAA92844(v21, &qword_1EE1263D0, MEMORY[0x1E6968FB0]);
      goto LABEL_10;
    }

LABEL_8:
    v28 = &qword_1EE1252A0;
    v29 = &qword_1EE1263D0;
    v30 = MEMORY[0x1E6968FB0];
    v31 = v21;
LABEL_16:
    sub_1DAB4C530(v31, v28, v29, v30);
    return 0;
  }

  sub_1DAA70878(v21, v17, &qword_1EE1263D0, MEMORY[0x1E6968FB0]);
  if (v27(&v21[v24], 1, v12) == 1)
  {
    (*(v26 + 8))(v17, v12);
    goto LABEL_8;
  }

  v32 = v50;
  (*(v26 + 32))(v50, &v21[v24], v12);
  sub_1DAB4B0C0(&qword_1EE1252B0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
  v33 = sub_1DACB9264();
  v34 = *(v26 + 8);
  v34(v32, v12);
  v34(v17, v12);
  sub_1DAA92844(v21, &qword_1EE1263D0, MEMORY[0x1E6968FB0]);
  if ((v33 & 1) == 0)
  {
    return 0;
  }

LABEL_10:
  v35 = v48;
  v36 = *(v47 + 24);
  v37 = *(v51 + 48);
  sub_1DAA70878(v22 + v36, v48, &qword_1EE124698, type metadata accessor for RawAttributionSourceLogo);
  sub_1DAA70878(a2 + v36, v35 + v37, &qword_1EE124698, type metadata accessor for RawAttributionSourceLogo);
  v38 = v53;
  v39 = *(v52 + 48);
  if (v39(v35, 1, v53) != 1)
  {
    v40 = v49;
    sub_1DAA70878(v35, v49, &qword_1EE124698, type metadata accessor for RawAttributionSourceLogo);
    if (v39(v35 + v37, 1, v38) == 1)
    {
      sub_1DAA7133C(v40, type metadata accessor for RawAttributionSourceLogo);
      goto LABEL_15;
    }

    v42 = v35 + v37;
    v43 = v46;
    sub_1DAA6E94C(v42, v46, type metadata accessor for RawAttributionSourceLogo);
    v44 = sub_1DAA91AB0(v40, v43);
    sub_1DAA7133C(v43, type metadata accessor for RawAttributionSourceLogo);
    sub_1DAA7133C(v40, type metadata accessor for RawAttributionSourceLogo);
    sub_1DAA92844(v35, &qword_1EE124698, type metadata accessor for RawAttributionSourceLogo);
    return v44;
  }

  if (v39(v35 + v37, 1, v38) != 1)
  {
LABEL_15:
    v28 = &qword_1EE124690;
    v29 = &qword_1EE124698;
    v30 = type metadata accessor for RawAttributionSourceLogo;
    v31 = v35;
    goto LABEL_16;
  }

  sub_1DAA92844(v35, &qword_1EE124698, type metadata accessor for RawAttributionSourceLogo);
  return 1;
}

void sub_1DAA712D8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1DAA52FAC(255, a3, a4);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1DAA7133C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1DAA7139C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_1DAA714D4(void *a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  sub_1DAA492B4(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DACB7CC4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1DACB92F4();
  v13 = [a1 decodeObjectForKey_];

  if (v13)
  {
    sub_1DACB9B74();
    swift_unknownObjectRelease();
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
  }

  v25 = v23;
  v26 = v24;
  if (!*(&v24 + 1))
  {

    sub_1DAA89D90(&v25, sub_1DAADFABC);
    (*(v9 + 56))(v7, 1, 1, v8);
    goto LABEL_8;
  }

  v14 = swift_dynamicCast();
  (*(v9 + 56))(v7, v14 ^ 1u, 1, v8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {

LABEL_8:
    sub_1DAA89D90(v7, sub_1DAA492B4);
    swift_deallocPartialClassInstance();
    return 0;
  }

  (*(v9 + 32))(v11, v7, v8);
  (*(v9 + 16))(&v2[OBJC_IVAR___SCUpdateUserStartDateCommand_startDate], v11, v8);
  v16 = sub_1DACB92F4();
  v17 = [a1 decodeObjectForKey_];

  if (v17)
  {
    sub_1DACB9B74();
    swift_unknownObjectRelease();
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
  }

  v25 = v23;
  v26 = v24;
  if (*(&v24 + 1))
  {
    if (swift_dynamicCast())
    {
      v18 = sub_1DACB9F04();

      if (v18 == 2)
      {
        v19 = 2;
      }

      else
      {
        v19 = v18 == 1;
      }

      goto LABEL_19;
    }
  }

  else
  {
    sub_1DAA89D90(&v25, sub_1DAADFABC);
  }

  v19 = 0;
LABEL_19:
  (*(v9 + 8))(v11, v8);
  v2[OBJC_IVAR___SCUpdateUserStartDateCommand_mergePolicy] = v19;
  v22.receiver = v2;
  v22.super_class = ObjectType;
  v20 = objc_msgSendSuper2(&v22, sel_init);

  return v20;
}

uint64_t sub_1DAA71C04()
{
  v0 = sub_1DACB8024();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1DACB8034();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1EE125750 != -1)
  {
    swift_once();
  }

  (*(v5 + 16))(v7, qword_1EE125758 + OBJC_IVAR____TtC10StocksCore8AppGroup_settingsDomain, v4);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E88], v0);
  v9[15] = 0;
  sub_1DAA60950(0, qword_1EE1255D8, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0]);
  swift_allocObject();
  result = sub_1DACB80B4();
  qword_1EE11D678 = result;
  return result;
}

void sub_1DAA71EE0()
{
  if (*(v0 + 40) == 1)
  {
    *(v0 + 40) = 0;
  }

  else
  {
    sub_1DACB82E4();
    sub_1DACB71F4();
    sub_1DACB82D4();
  }
}

uint64_t sub_1DAA71F74(uint64_t a1)
{
  sub_1DACB8BB4();
  v1 = sub_1DACB89D4();
  sub_1DAA5A8BC(0, &qword_1EE11FAC0, &type metadata for Stock, MEMORY[0x1E69E62F8]);
  v2 = sub_1DACB8A74();

  return v2;
}

uint64_t sub_1DAA720E0(uint64_t result)
{
  if (*(result + 24))
  {
    sub_1DACB71F4();
    sub_1DACB88F4();

    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DAA7214C@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1DAA722EC(0);
    v3 = sub_1DACB89D4();
    v4 = sub_1DACB8A64();
  }

  else
  {
    v6 = sub_1DACB8214();
    sub_1DAA59D78(&qword_1ECBE7058, MEMORY[0x1E69D64B0], MEMORY[0x1E69D64B8]);
    swift_allocError();
    (*(*(v6 - 8) + 104))(v7, *MEMORY[0x1E69D64A0], v6);
    sub_1DAA5A8BC(0, &qword_1EE11FDF0, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    result = sub_1DACB8AD4();
    v4 = result;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_1DAA722EC(char a1)
{
  sub_1DACB8BB4();
  *(swift_allocObject() + 16) = a1;
  v2 = sub_1DACB89D4();
  sub_1DACB8A74();

  v3 = sub_1DACB89D4();
  sub_1DAA72DB0(0);
  sub_1DACB8A74();

  v4 = sub_1DACB89D4();
  sub_1DAA5A8BC(0, &qword_1EE11FA98, &type metadata for Watchlist, MEMORY[0x1E69E62F8]);
  sub_1DACB8A74();

  v5 = sub_1DACB89D4();
  v6 = sub_1DACB8AA4();

  return v6;
}

uint64_t sub_1DAA724F0(void *a1)
{
  v1 = a1[12];
  v2 = a1[13];
  __swift_project_boxed_opaque_existential_1(a1 + 9, v1);
  (*(v2 + 176))(v1, v2);
  v3 = sub_1DACB89D4();
  sub_1DACB8A54();

  sub_1DACB71F4();
  v4 = sub_1DACB89D4();
  v5 = sub_1DACB8A54();

  return v5;
}

uint64_t sub_1DAA7260C()
{
  v0 = MEMORY[0x1E69E6158];
  sub_1DAA59E24(0, &qword_1EE123B50, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1DACC1D20;
  *(v1 + 32) = sub_1DACB9324();
  *(v1 + 40) = v2;
  sub_1DAA726DC(0, &qword_1EE11FE28, &qword_1EE123EA0, v0, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1DACB8AE4();
}

void sub_1DAA726DC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1DAA59E24(255, a3, a4, MEMORY[0x1E69E62F8]);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1DAA7279C(uint64_t a1)
{
  if (*(*a1 + 16))
  {
    if (qword_1EE121840 != -1)
    {
      swift_once();
    }

    v1 = qword_1EE13E318;
    v2 = sub_1DACB9914();
    sub_1DACB8C64("WatchlistManager migration to default watchlist not required as active watchlist is setup already", 97, 2, &dword_1DAA3F000, v1, v2, MEMORY[0x1E69E7CC0]);
  }

  else
  {
    if (qword_1EE121840 != -1)
    {
      swift_once();
    }

    v3 = qword_1EE13E318;
    v4 = sub_1DACB9914();
    sub_1DACB8C64("WatchlistManager migration required as watchlistOrder doesn't have any watchlists", 81, 2, &dword_1DAA3F000, v3, v4, MEMORY[0x1E69E7CC0]);
  }

  sub_1DAA5A8BC(0, &unk_1EE11FE08, MEMORY[0x1E69E6370], MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1DACB8AE4();
}

uint64_t sub_1DAA728E0()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_1DACB9324();
  }

  sub_1DAA41DCC();
  result = sub_1DACB9AE4();
  qword_1EE13E318 = result;
  return result;
}

uint64_t sub_1DAA729B8(_BYTE *a1, void *a2)
{
  v4 = sub_1DACB7E44();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1DACB92E4();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v21 - v10;
  if (*a1 == 1)
  {
    v12 = a2[12];
    v13 = a2[13];
    v21 = __swift_project_boxed_opaque_existential_1(a2 + 9, v12);
    sub_1DACB9284();
    (*(v6 + 16))(v9, v11, v5);
    if (qword_1EE123DD8 != -1)
    {
      swift_once();
    }

    v14 = qword_1EE13E470;
    sub_1DACB7DF4();
    v15 = sub_1DACB9384();
    v17 = v16;
    (*(v6 + 8))(v11, v5);
    (*(v13 + 72))(v15, v17, v12, v13);

    sub_1DAA420F4(0, &qword_1EE123DE8, 0x1E69E9610);
    v18 = sub_1DACB9954();
    sub_1DACB71F4();
    v19 = sub_1DACB8A54();

    return v19;
  }

  else
  {
    sub_1DAA5A8BC(0, &qword_1EE11FDF0, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    return sub_1DACB8AE4();
  }
}