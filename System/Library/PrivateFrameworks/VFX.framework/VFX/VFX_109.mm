uint64_t sub_1AF9669C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_1EB633230 != -1)
  {
    swift_once();
  }

  v2 = qword_1EB6C29D0;
  sub_1AF967124(0, &qword_1EB633AA0, &type metadata for ScriptKeyPath, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE4C630;
  KeyPath = swift_getKeyPath();
  *(inited + 32) = 0x656C6269736956;
  *(inited + 40) = 0xE700000000000000;
  v5 = MEMORY[0x1E69E6370];
  *(inited + 48) = KeyPath;
  *(inited + 56) = v5;
  *(inited + 64) = 0;
  *(inited + 72) = 1;
  *(inited + 74) = 0;
  v6 = swift_getKeyPath();
  v7 = MEMORY[0x1E69E6448];
  *(inited + 80) = 0x7974696361704FLL;
  *(inited + 88) = 0xE700000000000000;
  *(inited + 96) = v6;
  *(inited + 104) = v7;
  *(inited + 112) = 0;
  *(inited + 120) = 1;
  *(inited + 122) = 0;
  v8 = swift_getKeyPath();
  v9 = MEMORY[0x1E69E6530];
  *(inited + 128) = 0x726564724FLL;
  *(inited + 136) = 0xE500000000000000;
  *(inited + 144) = v8;
  *(inited + 152) = v9;
  *(inited + 160) = 0;
  *(inited + 168) = 1;
  *(inited + 170) = 0;
  v10 = swift_getKeyPath();
  strcpy((inited + 176), "Casts Shadow");
  *(inited + 189) = 0;
  *(inited + 190) = -5120;
  *(inited + 192) = v10;
  *(inited + 200) = v5;
  *(inited + 208) = 0;
  *(inited + 216) = 1;
  *(inited + 218) = 0;
  v11 = swift_getKeyPath();
  v12 = MEMORY[0x1E69E76D8];
  *(inited + 224) = 0x70756F7247;
  *(inited + 232) = 0xE500000000000000;
  *(inited + 240) = v11;
  *(inited + 248) = v12;
  *(inited + 256) = 0;
  *(inited + 264) = 1;
  *(inited + 266) = 0;
  v13 = swift_getKeyPath();
  v14 = MEMORY[0x1E69E6720];
  sub_1AF967174(0, &qword_1EB6332D8, sub_1AF44D084, MEMORY[0x1E69E6720]);
  *(inited + 272) = 0x736574617453;
  *(inited + 280) = 0xE600000000000000;
  *(inited + 288) = v13;
  *(inited + 296) = v15;
  *(inited + 304) = 0;
  *(inited + 312) = 1;
  *(inited + 314) = 0;
  v16 = swift_getKeyPath();
  sub_1AF967174(0, &qword_1EB633220, sub_1AF44D11C, v14);
  *(inited + 320) = 0x6574617453;
  *(inited + 328) = 0xE500000000000000;
  *(inited + 336) = v16;
  *(inited + 344) = v17;
  *(inited + 352) = 0;
  *(inited + 360) = 1;
  *(inited + 362) = 0;

  sub_1AF48FF94(inited);
  v18 = *(v2 + 16);
  if (v18)
  {
    sub_1AFDFE008();
    v19 = 0;
    while (1)
    {
      v21 = *(v2 + v19 + 32);
      v20 = *(v2 + v19 + 40);
      v31 = *(v2 + v19 + 48);
      v22 = *(v2 + v19 + 64);
      v23 = *(v2 + v19 + 72);
      v24 = *(v2 + v19 + 74);

      if (MEMORY[0x1B2719A10](v25, a1))
      {
        break;
      }

      v19 += 48;
      if (!--v18)
      {
        goto LABEL_7;
      }
    }

    v27 = v23 | (v24 << 16);
    v28 = v31;
  }

  else
  {
LABEL_7:

    v21 = 0;
    v20 = 0;
    v22 = 0;
    v27 = 0;
    v28 = 0uLL;
  }

  *a2 = v21;
  *(a2 + 8) = v20;
  *(a2 + 16) = v28;
  *(a2 + 32) = v22;
  *(a2 + 40) = v27;
  return result;
}

void *sub_1AF966D44(char *a1, _OWORD *a2, void *a3)
{
  swift_unknownObjectWeakInit();
  v12[1] = &off_1F256B790;
  swift_unknownObjectWeakAssign();
  v7 = *&a1[OBJC_IVAR____TtC3VFX23VFXReferencePlaceholder_identifier];
  v6 = *&a1[OBJC_IVAR____TtC3VFX23VFXReferencePlaceholder_identifier + 8];

  v12[2] = v7;
  v12[3] = v6;
  sub_1AF640200(v12, a3 + OBJC_IVAR____TtC3VFX21_StaticWorldValueNode_target);
  v8 = (a3 + OBJC_IVAR____TtC3VFX21_StaticWorldValueNode_scriptKeyPath);
  *(v8 + 28) = *(a2 + 28);
  v9 = a2[1];
  *v8 = *a2;
  v8[1] = v9;
  v10 = MEMORY[0x1E69E7CC0];
  a3[3] = 0;
  a3[4] = 0;
  a3[2] = v10;
  sub_1AFDFC308();
  return a3;
}

uint64_t sub_1AF966E30(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + 24);
  if (*(v6 + 16))
  {

    v7 = sub_1AF419914(a1, a2);
    if (v8)
    {
      v9 = *(*(v6 + 56) + 8 * v7);

      if (*(*(v3 + 16) + 16))
      {
        sub_1AF0D3F10(v9);
        if (v10)
        {

          v11 = sub_1AF96FB80(1);

          return v11;
        }
      }
    }

    else
    {
    }
  }

  if (*(*(v3 + 32) + 16))
  {

    sub_1AF419914(a1, a2);
    if (v13)
    {

      v14 = sub_1AF96FB80(1);

      return v14;
    }
  }

  return 0;
}

unint64_t sub_1AF966F50(uint64_t a1, uint64_t a2)
{
  v2 = sub_1AFDFE638();

  if (v2 >= 0xF)
  {
    return 15;
  }

  else
  {
    return v2;
  }
}

void sub_1AF966F9C()
{
  if (!qword_1EB6407C8)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB6407C8);
    }
  }
}

uint64_t sub_1AF966FFC(uint64_t a1)
{
  sub_1AF967058();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1AF967058()
{
  if (!qword_1ED72F980)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ED72F980);
    }
  }
}

void sub_1AF9670BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1AF967124(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1AF967174(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1AF9671D8()
{
  result = qword_1EB630F38;
  if (!qword_1EB630F38)
  {
    result = swift_getWitnessTable(byte_1AFE567D8, &type metadata for BlendMode, v0, v1);
    atomic_store(result, &qword_1EB630F38);
  }

  return result;
}

unint64_t sub_1AF967240()
{
  result = qword_1EB6407D0;
  if (!qword_1EB6407D0)
  {
    result = swift_getWitnessTable(aY_68, &type metadata for GraphNodeLibrary.Flags, v0, v1);
    atomic_store(result, &qword_1EB6407D0);
  }

  return result;
}

unint64_t sub_1AF967298()
{
  result = qword_1EB6407D8;
  if (!qword_1EB6407D8)
  {
    result = swift_getWitnessTable(aI_46, &type metadata for GraphNodeLibrary.Flags, v0, v1);
    atomic_store(result, &qword_1EB6407D8);
  }

  return result;
}

unint64_t sub_1AF9672F0()
{
  result = qword_1EB6407E0;
  if (!qword_1EB6407E0)
  {
    result = swift_getWitnessTable(aI_47, &type metadata for GraphNodeLibrary.Flags, v0, v1);
    atomic_store(result, &qword_1EB6407E0);
  }

  return result;
}

unint64_t sub_1AF967348()
{
  result = qword_1EB6407E8;
  if (!qword_1EB6407E8)
  {
    result = swift_getWitnessTable(aA_57, &type metadata for GraphNodeLibrary.Flags, v0, v1);
    atomic_store(result, &qword_1EB6407E8);
  }

  return result;
}

uint64_t sub_1AF9673CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a5 - 8);
  v12 = MEMORY[0x1EEE9AC00](a1);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v15(v12);
  if (v8)
  {
    return (*(v11 + 32))(a8, v14, a5);
  }

  return result;
}

uint64_t sub_1AF9674A8(char a1, uint64_t a2, uint64_t a3, void (*a4)(char *, uint64_t, uint64_t, uint64_t), void (*a5)(char *, uint64_t, uint64_t, uint64_t), void (*a6)(char *, uint64_t, uint64_t, uint64_t), void (*a7)(char *, uint64_t, uint64_t, uint64_t))
{
  v9[5] = a5;
  v9[2] = a6;
  v9[3] = a7;
  v9[4] = a4;
  result = sub_1AF967AF8(a1 & 1, a2, a3, sub_1AF96E3AC, v9, a6, MEMORY[0x1E69E7CA8] + 8, a7);
  if (!v7)
  {
  }

  return result;
}

uint64_t sub_1AF967514(char a1, unint64_t a2, uint64_t a3, void (**a4)(char *, char *, uint64_t), void (**a5)(char *, uint64_t, uint64_t, uint64_t), void (**a6)(char *, uint64_t, __n128), uint64_t a7)
{
  sub_1AF4410E4(a2, sub_1AF4410A8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = sub_1AF9697BC(a4, a5, a1 & 1, a2, 1, MEMORY[0x1E69E7CC0], a6, AssociatedTypeWitness, a7);
  if (!v8)
  {
    sub_1AF75B2D4(v16, v17, MEMORY[0x1E69E5FE0], AssociatedTypeWitness, MEMORY[0x1E69E5FE8]);

    v18 = type metadata accessor for OrderedDictionary(255, MEMORY[0x1E69E5FE0], AssociatedTypeWitness, MEMORY[0x1E69E5FE8]);
    swift_getWitnessTable(byte_1AFE75B14, v18);
    v19 = sub_1AFDFE438();
    swift_getWitnessTable(MEMORY[0x1E69E6CC8], v19);
    v20 = sub_1AFDFD578();
    v7 = (*(a7 + 40))(v20, a6, a7);
  }

  sub_1AF4410E4(a2, sub_1AF441114);
  return v7;
}

uint64_t sub_1AF967760(void *a1, uint64_t (*a2)(uint64_t), void (*a3)(uint64_t, void, void, uint64_t, unint64_t, uint64_t, uint64_t, uint64_t, int, uint64_t))
{
  v4 = sub_1AFDFF4B8();
  MEMORY[0x1B2718AE0](v4);

  v34 = MEMORY[0x1E69E7CD0];
  v6 = a2(v5);
  if (v6 >> 62)
  {
    v24 = v6;
    v7 = sub_1AFDFE108();
    v6 = v24;
    if (!v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      goto LABEL_17;
    }
  }

  v8 = 0;
  v33 = v6 & 0xC000000000000001;
  v30 = v6 + 32;
  v31 = v6;
  do
  {
    if (v33)
    {
      v19 = MEMORY[0x1B2719C70](v8, v31);
    }

    else
    {
      v19 = *(v30 + 8 * v8);
    }

    if (*(v34 + 16) && (v20 = sub_1AFDFF278(), v21 = -1 << *(v34 + 32), v22 = v20 & ~v21, ((*(v34 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) != 0))
    {
      v23 = ~v21;
      while (*(*(v34 + 48) + 8 * v22) != v19)
      {
        v22 = (v22 + 1) & v23;
        if (((*(v34 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
LABEL_4:
      v9 = swift_allocObject();
      *(v9 + 16) = 0;
      *(v9 + 24) = 0xE000000000000000;
      v10 = swift_allocObject();
      *(v10 + 16) = 0;
      v11 = swift_allocObject();
      v12 = MEMORY[0x1E69E7CC0];
      *(v11 + 16) = sub_1AF4403AC(MEMORY[0x1E69E7CC0]);
      v13 = swift_allocObject();
      *(v13 + 16) = sub_1AF42B2DC(v12);

      LOBYTE(v29) = 0;
      a3(v14, 0, 0, 8224, 0xE200000000000000, v9, v13, v11, v29, v10);

      v15 = *(v9 + 16);
      v16 = *(v9 + 24);

      v18 = sub_1AF755BBC(v17);

      MEMORY[0x1B2718AE0](v15, v16);

      MEMORY[0x1B2718AE0](10, 0xE100000000000000);

      sub_1AF967C6C(v18);
    }

    ++v8;
  }

  while (v8 != v7);
LABEL_17:

  v25 = sub_1AFAF888C(2);
  v27 = v26;

  MEMORY[0x1B2718AE0](v25, v27);

  MEMORY[0x1B2718AE0](62, 0xE100000000000000);
  return 60;
}

uint64_t sub_1AF967AF8(char a1, uint64_t a2, uint64_t a3, void (**a4)(char *, char *, uint64_t), void (**a5)(char *, uint64_t, uint64_t, uint64_t), void (**a6)(char *, uint64_t, __n128), uint64_t a7, void (**a8)(char *, char *, uint64_t))
{
  result = sub_1AF9697BC(a4, a5, a1 & 1, a2, a3, MEMORY[0x1E69E7CC0], a6, a7, a8);
  if (!v8)
  {
    v10 = result;

    return v10;
  }

  return result;
}

uint64_t sub_1AF967B70(uint64_t a1)
{
  v2 = 0;
  v3 = 1 << *(a1 + 32);
  v4 = *(a1 + 56);
  v5 = -1;
  if (v3 < 64)
  {
    v5 = ~(-1 << v3);
  }

  v6 = v5 & v4;
  v7 = (v3 + 63) >> 6;
  if ((v5 & v4) != 0)
  {
    do
    {
      v8 = v2;
LABEL_8:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];

      sub_1AF0D2164(&v14, v11, v12);
    }

    while (v6);
  }

  while (1)
  {
    v8 = v2 + 1;
    if (v2 + 1 >= v7)
    {
      break;
    }

    v6 = *(a1 + 8 * v2++ + 64);
    if (v6)
    {
      v2 = v8;
      goto LABEL_8;
    }
  }
}

uint64_t sub_1AF967C6C(uint64_t a1)
{
  v2 = 0;
  v3 = 1 << *(a1 + 32);
  v4 = *(a1 + 56);
  v5 = -1;
  if (v3 < 64)
  {
    v5 = ~(-1 << v3);
  }

  v6 = v5 & v4;
  v7 = (v3 + 63) >> 6;
  if ((v5 & v4) != 0)
  {
    do
    {
      v8 = v2;
LABEL_8:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      sub_1AF70E5AC(&v11, *(*(a1 + 48) + ((v8 << 9) | (8 * v9))));
    }

    while (v6);
  }

  while (1)
  {
    v8 = v2 + 1;
    if (v2 + 1 >= v7)
    {
      break;
    }

    v6 = *(a1 + 8 * v2++ + 64);
    if (v6)
    {
      v2 = v8;
      goto LABEL_8;
    }
  }
}

BOOL sub_1AF967D44(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = (v2 >> 59) & 2 | (v2 >> 2) & 1;
  v5 = (v3 >> 59) & 2 | (v3 >> 2) & 1;
  if (!v4)
  {
    if (!v5)
    {
      return sub_1AF9C5694(v2, v3);
    }

    return 0;
  }

  if (v4 == 1)
  {
    if (v5 == 1)
    {
      v2 &= 0xEFFFFFFFFFFFFFFBLL;
      v3 &= 0xEFFFFFFFFFFFFFFBLL;
      return sub_1AF9C5694(v2, v3);
    }

    return 0;
  }

  return v5 == 2 && v3 == 0x1000000000000000;
}

uint64_t sub_1AF967DB4()
{
  result = swift_allocObject();
  *(result + 16) = 0xC000000000000008;
  byte_1EB6C28A0 = 1;
  qword_1EB6C28A8 = result | 0x8000000000000004;
  byte_1EB6C28B0 = 0;
  return result;
}

uint64_t sub_1AF967E0C()
{
  result = swift_allocObject();
  *(result + 16) = 0xC000000000000008;
  byte_1EB6C2888 = 1;
  qword_1EB6C2890 = result | 0x8000000000000000;
  byte_1EB6C2898 = 0;
  return result;
}

void sub_1AF967E5C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10)
{
  *a9 = a1;
  v15 = type metadata accessor for GraphCursor(0, a7, a8, a10);
  v16 = v15[11];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(&a9[v16], a2, AssociatedTypeWitness);
  swift_unknownObjectRelease();
  *&a9[v15[12]] = a3;
  v18 = &a9[v15[13]];
  *v18 = a4;
  *(v18 + 1) = a5;
  *&a9[v15[14]] = a6;
}

void sub_1AF967F60(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, void (**a6)(char *, char *, uint64_t)@<X5>, void (**a7)(char *, uint64_t, uint64_t, uint64_t)@<X6>, void *a8@<X7>, char *a9@<X8>, uint64_t *a10, uint64_t a11, void (**a12)(char *, uint64_t, __n128), uint64_t a13, uint64_t a14)
{
  v107 = a1;
  v103 = a8;
  v92 = a5;
  v93 = a7;
  v91 = a6;
  v95 = a4;
  v94 = a3;
  v99 = a2;
  v105 = a9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v97 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v88 = &v80 - v15;
  v16 = sub_1AFDFDD58();
  v101 = *(v16 - 8);
  v102 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v87 = &v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v80 - v19;
  v21 = *(a13 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v86 = &v80 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v89 = &v80 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v100 = &v80 - v27;
  v90 = a14;
  v96 = a12;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v29 = *(AssociatedConformanceWitness + 24);
  v104 = AssociatedTypeWitness;
  v109 = v29(AssociatedTypeWitness, AssociatedConformanceWitness);
  sub_1AF75B824();
  if ((*(v21 + 48))(v20, 1, a13) != 1)
  {
    v50 = *(v21 + 32);
    v51 = v100;
    v50(v100, v20, a13);
    v50(v105, v51, a13);
    return;
  }

  v85 = a10;
  v100 = a13;
  (*(v101 + 8))(v20, v102);
  v30 = v107;
  v31 = v104;
  v32 = v29(v104, AssociatedConformanceWitness);
  v33 = v103;
  v109 = v32;
  sub_1AFDFCCC8();
  if (v108 == 2)
  {
    v101 = v21;
    v84 = AssociatedConformanceWitness + 24;
    v83 = v29;
    v34 = v29(v31, AssociatedConformanceWitness);
    LOBYTE(v108) = 1;
    v109 = v34;
    sub_1AF96E5C0(0, qword_1EB640818, MEMORY[0x1E69E5E28]);
    v82 = v35;
    sub_1AFDFCCD8();
    v102 = swift_allocBox();
    v37 = v36;
    (*(v97 + 16))(v36, v30, v31);
    v38 = v106;
    v39 = v95;
    if ((v95 & 1) != 0 && v31 == v100)
    {
      v40 = v88;
      (*(AssociatedConformanceWitness + 72))(v31, AssociatedConformanceWitness);
      (*(v97 + 40))(v37, v40, v31);
    }

    v88 = AssociatedConformanceWitness;
    v41 = a11;
    v42 = v90;
    v43 = v93;
    if (v99)
    {
      v80 = v37;
      v81 = a11;
      v44 = v100;
      v45 = v39 & 1;
      v46 = v91;
      v47 = v94;
      v48 = v98;
      v49 = v92;
      sub_1AF969254(v98, v102, v91, v93, 1, v94, v45, v92, v104 == v100, v96, v100, v90);
      if (v38)
      {
LABEL_21:

        return;
      }

      v52 = v85;
      v53 = v49;
      v43 = v93;
      sub_1AF9689CC(1, v47, v95 & 1, v107, v48, v53, v46, v93, v33, v85, v81, v96, v44, v42);
      v38 = 0;
      sub_1AF969FEC(v102, v33, v52, v96, v44, v42);
      v39 = v95;
      v41 = v81;
      v37 = v80;
    }

    v54 = swift_allocObject();
    v55 = v96;
    v56 = v100;
    v54[2] = v96;
    v54[3] = v56;
    v57 = v91;
    v54[4] = v42;
    v54[5] = v57;
    v54[6] = v43;
    v79 = v42;
    *&v77 = v57;
    *(&v77 + 1) = v43;
    v58 = v89;
    sub_1AF96AE08(sub_1AF96E2F4, v54, v98, v99 & 1, v94, v39 & 1, v85, v92, v89, v77, v33, v41, v37, v55, v56, v79);
    if (v38)
    {
      swift_isEscapingClosureAtFileLocation();
    }

    else
    {
      v80 = v37;
      v81 = v41;
      swift_isEscapingClosureAtFileLocation();

      v59 = v104;
      v60 = v83(v104, v88);
      v61 = v101;
      v62 = v87;
      v106 = *(v101 + 16);
      v106(v87, v58, v56);
      (*(v61 + 56))(v62, 0, 1, v56);
      v109 = v60;
      v63 = type metadata accessor for OrderedDictionary(0, MEMORY[0x1E69E5FE0], v56, MEMORY[0x1E69E5FE8]);
      sub_1AF75AF78(v62, &v109, v63);
      v64 = v56;
      if (v59 == v56)
      {
        v106(v86, v89, v56);
        (*(v97 + 8))(v80, v59);
        swift_dynamicCast();
      }

      v65 = v107;
      v66 = v83(v59, v88);
      LOBYTE(v108) = 0;
      v109 = v66;
      v67 = v103;
      sub_1AFDFCCD8();
      if (v99)
      {
        v68 = v105;
      }

      else
      {
        v78 = v64;
        v69 = v64;
        v70 = v95;
        v71 = v98;
        v73 = v91;
        v72 = v92;
        sub_1AF9689CC(v99 & 1, v94, v95 & 1, v65, v98, v92, v91, v43, v67, v85, v81, v96, v78, v90);
        v74 = v43;
        v75 = v102;
        sub_1AF969254(v71, v102, v73, v74, v99 & 1, v94, v70 & 1, v72, v104 == v69, v96, v69, v90);
        v76 = v105;
        v64 = v69;
        sub_1AF969FEC(v75, v67, v85, v96, v69, v90);
        v68 = v76;
      }

      (*(v101 + 32))(v68, v89, v64);
    }

    goto LABEL_21;
  }

  if (v100 == MEMORY[0x1E69E7CA8] + 8)
  {
    swift_dynamicCast();
  }

  else
  {
    sub_1AFDFE518();
    __break(1u);
  }
}

uint64_t sub_1AF9689CC(uint64_t a1, unint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v70 = a8;
  v69 = a7;
  v68 = a6;
  v67 = a5;
  v82 = a4;
  v66 = a3;
  v65 = a1;
  v63 = a13;
  v72 = *(a13 - 8);
  v61 = a9;
  MEMORY[0x1EEE9AC00](a1);
  v60 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v18 = sub_1AFDFDD58();
  v49 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v49 - v19;
  v74 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v52 = &v49 - v22;
  v71 = swift_getTupleTypeMetadata2();
  v84 = sub_1AFDFDD58();
  v80 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v83 = &v49 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v49 - v25;
  v27 = a2 >> 59;
  v77 = a2;
  v75 = (a2 >> 59) & 2 | (a2 >> 2) & 1;
  v64 = a14;
  v62 = a12;
  v81 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v29 = AssociatedConformanceWitness;
  v30 = 0;
  v76 = 0;
  v31 = 0;
  v55 = 0;
  v54 = 0;
  v53 = 0;
  if ((v27 & 2) == 0)
  {
    v32 = (*(AssociatedConformanceWitness + 40))(v81, AssociatedConformanceWitness);
    (*(*v32 + 152))(v86);
    v30 = v86[1];
    v76 = v86[0];
    v31 = v86[2];
    v55 = v86[3];
    v54 = v86[4];
    v53 = v86[5];
  }

  v50 = v31;
  v51 = v30;
  v59 = a11;
  v58 = a10;
  v85 = (*(v29 + 48))(v81, v29);
  v33 = sub_1AFDFD538();
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E69E6328], v33);
  MEMORY[0x1B2718C40](&v87, v33, WitnessTable);

  v85 = v87;
  sub_1AFDFE568();
  sub_1AFDFE538();
  v82 = sub_1AFDFE558();
  v35 = v80 + 4;
  v36 = v71;
  v81 = v71 - 8;
  v79 = (v74 + 6);
  v80 = (v49 + 32);
  v73 = (v74 + 4);
  v56 = v76 + 32;
  ++v74;
  v57 = v72 + 1;
  v72 = (v49 + 8);
  v37 = v52;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v38 = v83;
        sub_1AFDFE548();
        (*v35)(v26, v38, v84);
        if ((*(*(v36 - 8) + 48))(v26, 1, v36) == 1)
        {

          return sub_1AF441284(v76, v51, v50, v55, v54, v53);
        }

        v39 = *v26;
        (*v80)(v20, &v26[*(v36 + 48)], v18);
        if ((*v79)(v20, 1, TupleTypeMetadata2) != 1)
        {
          break;
        }

        (*v72)(v20, v18);
      }

      (*v73)(v37, v20, TupleTypeMetadata2);
      if (v76)
      {
        v40 = 0xA000000000000000;
        if ((v39 & 0x8000000000000000) == 0 && v39 < *(v76 + 16))
        {
          v40 = *(v56 + 8 * v39);
          sub_1AF4410A8(v40);
        }

        v41 = v75;
        if (!v75)
        {
LABEL_16:
          v43 = sub_1AF9C5694(v40, v77);
          sub_1AF441114(v40);
          if (v43)
          {
            break;
          }

          goto LABEL_17;
        }
      }

      else
      {
        v40 = 0xA000000000000000;
        v41 = v75;
        if (!v75)
        {
          goto LABEL_16;
        }
      }

      if (v41 != 1)
      {
        sub_1AF441114(v40);
        break;
      }

      v42 = sub_1AF9C5694(v40, v77 & 0xEFFFFFFFFFFFFFFBLL);
      sub_1AF441114(v40);
      if (!v42)
      {
        break;
      }

LABEL_17:
      (*v74)(v37, TupleTypeMetadata2);
    }

    v44 = TupleTypeMetadata2;
    v45 = v63;
    v46 = v60;
    v47 = v78;
    sub_1AF967F60(v37, v65 & 1, v77, v66 & 1, v68, v69, v70, v61, v60, v58, v59, v62, v63, v64);
    if (v47)
    {
      break;
    }

    v78 = 0;
    (*v57)(v46, v45);
    TupleTypeMetadata2 = v44;
    (*v74)(v37, v44);
    v36 = v71;
  }

  (*v74)(v37, v44);

  return sub_1AF441284(v76, v51, v50, v55, v54, v53);
}

double sub_1AF969254(uint64_t a1, uint64_t a2, void (**a3)(char *, char *, uint64_t), void (**a4)(char *, uint64_t, uint64_t, uint64_t), int a5, uint64_t a6, int a7, uint64_t a8, char a9, void (**a10)(char *, uint64_t, __n128), uint64_t a11, uint64_t a12)
{
  v66 = a6;
  v61 = a8;
  v65 = a7;
  v62 = a5;
  v63 = a3;
  v64 = a4;
  v60 = sub_1AFDFC318();
  v13 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v68 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v52 - v16;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v19 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v57 = &v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v52 - v22;
  v24 = swift_projectBox();
  v25 = *(a12 + 72);
  v58 = a1;
  v71 = a10;
  v26 = v25(v24, a10, a12);
  if (v26)
  {
    v28 = v26;
    v29 = *(v19 + 16);
    v55 = v19 + 16;
    v56 = v24;
    v54 = v29;
    v29(v23, v24, AssociatedTypeWitness);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 32))(AssociatedTypeWitness, AssociatedConformanceWitness);
    v31 = *(v19 + 8);
    v52 = v19 + 8;
    v53 = v31;
    v31(v23, AssociatedTypeWitness);
    v32 = *(v13 + 16);
    v59 = v17;
    v33 = v60;
    v32(v68, v17, v60);
    v34 = v61;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v34 = sub_1AF41FB34(0, v34[2] + 1, 1, v34);
    }

    v36 = v34[2];
    v35 = v34[3];
    if (v36 >= v35 >> 1)
    {
      v34 = sub_1AF41FB34(v35 > 1, v36 + 1, 1, v34);
    }

    (*(v13 + 8))();
    v34[2] = v36 + 1;
    (*(v13 + 32))(v34 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v36, v68, v33);
    v37 = v67;
    v38 = sub_1AF9697BC(v63, v64, v62 & 1, v66, v65 & 1, v34, v71, a11, a12);
    if (v37)
    {
    }

    else
    {
      v40 = v39;
      v68 = v28;
      v41 = v38;

      if (a9)
      {
        v67 = &v52;
        v69 = v41;
        v70 = v40;
        MEMORY[0x1EEE9AC00](v42);
        v43 = v71;
        *(&v52 - 4) = v71;
        *(&v52 - 3) = a11;
        v51 = a12;
        v45 = type metadata accessor for OrderedDictionary(0, MEMORY[0x1E69E5FE0], a11, MEMORY[0x1E69E5FE8]);
        WitnessTable = swift_getWitnessTable(aE5, v45);
        v48 = sub_1AF628B24(sub_1AF96D6D0, (&v52 - 6), v45, AssociatedTypeWitness, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v47);

        v49 = v57;
        v54(v57, v56, AssociatedTypeWitness);
        v50 = (*(a12 + 40))(v48, v43, a12);
        (*(a12 + 80))(v49, v50, v43, a12);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v53(v49, AssociatedTypeWitness);
        return result;
      }
    }

    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1AF9697BC(void (**a1)(char *, char *, uint64_t), void (**a2)(char *, uint64_t, uint64_t, uint64_t), int a3, uint64_t a4, int a5, uint64_t a6, void (**a7)(char *, uint64_t, __n128), void **a8, void (**a9)(char *, char *, uint64_t))
{
  v70 = a6;
  LODWORD(v69) = a5;
  v67 = a2;
  v68 = a4;
  LODWORD(v65) = a3;
  v66 = a1;
  v60 = a7;
  v61 = a9;
  v10 = sub_1AFDFDD58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v64 = v55 - v11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v59 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v75 = v55 - v12;
  v58 = *(a8 - 1);
  MEMORY[0x1EEE9AC00](v13);
  v72 = v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1E69E5FE0];
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v57 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v73 = v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v55 - v19;
  v21 = sub_1AFDFDD58();
  v56 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = v55 - v25;
  swift_getTupleTypeMetadata2();
  v27 = sub_1AFDFD478();
  v28 = sub_1AF75C690(v27, v15, a8, MEMORY[0x1E69E5FE8]);
  v30 = v29;

  v77 = v28;
  v78 = v30;
  v31 = v74;
  sub_1AF96B538(v66, v67, v65 & 1, v68, v69, v70, &v77, v60, a8, v61);
  if (v31)
  {
  }

  else
  {
    v70 = TupleTypeMetadata2;
    v71 = v23;
    v62 = v20;
    v63 = v21;
    if (swift_getAssociatedTypeWitness() == a8)
    {
      v55[1] = 0;
      v74 = (v58 + 32);
      v61 = (v57 + 32);
      v67 = (v57 + 56);
      v34 = v77;
      v33 = v78;
      v65 = (v57 + 48);
      v66 = (v56 + 32);
      v35 = (v59 + 1);
      v59 = (v58 + 56);
      v60 = v35;

      v69 = v33;

      v36 = 0;
      v37 = MEMORY[0x1E69E5FE0];
      v38 = MEMORY[0x1E69E5FE8];
      v39 = v63;
      v68 = v34;
      while (1)
      {
        v40 = v69;
        v41 = sub_1AF75BD24(v34, v69, v37);
        v42 = v34;
        v43 = v73;
        if (v36 == v41)
        {
          v44 = 1;
          v46 = v70;
          v45 = v71;
        }

        else
        {
          v47 = *(v70 + 48);
          v48 = v62;
          v49 = v40;
          v46 = v70;
          sub_1AF75BB44(v62, v62 + v47, v36, v42, v49, v37, a8, v38);
          *v43 = *v48;
          v50 = v48 + v47;
          v39 = v63;
          (*v74)(&v43[*(v46 + 48)], v50, a8);
          v45 = v71;
          (*v61)(v71, v43, v46);
          v44 = 0;
          ++v36;
        }

        (*v67)(v45, v44, 1, v46);
        (*v66)(v26, v45, v39);
        if ((*v65)(v26, 1, v46) == 1)
        {
          break;
        }

        v51 = *v26;
        (*v74)(v72, &v26[*(v46 + 48)], a8);
        v52 = swift_dynamicCast();
        v34 = v68;
        if (v52)
        {
          (*v60)(v75, AssociatedTypeWitness);
          v53 = v64;
          (*v59)(v64, 1, 1, a8);
          v79 = v51;
          v54 = type metadata accessor for OrderedDictionary(0, v37, a8, v38);
          sub_1AF75AF78(v53, &v79, v54);
        }
      }
    }

    return v77;
  }
}

double sub_1AF969E28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v9 = &v17 - v8;
  v10 = *(a3 - 8);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v9, a1, TupleTypeMetadata2, v12);
  (*(v10 + 32))(v14, &v9[*(TupleTypeMetadata2 + 48)], a3);
  swift_getAssociatedTypeWitness();
  swift_dynamicCast();
  return result;
}

uint64_t sub_1AF969FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v26 - v13;
  v15 = swift_projectBox();
  type metadata accessor for Node(0);
  if (swift_dynamicCastMetatype())
  {
    (*(v12 + 16))(v14, v15, AssociatedTypeWitness);
    v16 = swift_dynamicCast();
    v17 = v27;
    v18 = *(v27 + 16);
    MEMORY[0x1EEE9AC00](v16);
    *(&v26 - 6) = a4;
    *(&v26 - 5) = a5;
    *(&v26 - 4) = a6;
    *(&v26 - 3) = a2;
    *(&v26 - 2) = a3;

    v19 = sub_1AFBFBCA0(sub_1AF96E2CC, (&v26 - 8), v18);

    *(v17 + 16) = v19;
  }

  else
  {
    type metadata accessor for AuthoringNode(0);
    result = swift_dynamicCastMetatype();
    if (!result)
    {
      return result;
    }

    (*(v12 + 16))(v14, v15, AssociatedTypeWitness);
    v21 = swift_dynamicCast();
    v22 = v27;
    v23 = OBJC_IVAR____TtC3VFX13AuthoringNode_inputs;
    v24 = *(v27 + OBJC_IVAR____TtC3VFX13AuthoringNode_inputs);
    MEMORY[0x1EEE9AC00](v21);
    *(&v26 - 6) = a4;
    *(&v26 - 5) = a5;
    *(&v26 - 4) = a6;
    *(&v26 - 3) = a2;
    *(&v26 - 2) = a3;

    v25 = sub_1AFBFBB68(sub_1AF96E2A4, (&v26 - 8), v24);

    *(v22 + v23) = v25;
  }
}

void sub_1AF96A294(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a5@<X4>, void *a7@<X8>)
{
  v34 = a7;
  v29 = a3;
  v32 = a2;
  v9 = sub_1AFDFDD58();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v31 = &v27 - v10;
  v30 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v28 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v16 = &v27 - v15;
  v17 = *a1;
  v33 = a1[1];
  v35[0] = v17;
  v18 = type metadata accessor for Node(0);

  swift_dynamicCast();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v20 = (*(AssociatedConformanceWitness + 24))(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v14 + 8))(v16, AssociatedTypeWitness);
  v35[0] = v20;
  sub_1AFDFCCC8();
  if (v36 == 2 || (v36 & 1) != 0)
  {
    type metadata accessor for _PlaceholderNode(0);
    v23 = swift_allocObject();
    v35[3] = v18;
    v35[4] = &off_1EE8015B0;
    v35[0] = v17;
    sub_1AF441194(v35, v23 + OBJC_IVAR____TtC3VFX16_PlaceholderNode_oldNode);
    v24 = MEMORY[0x1E69E7CC0];
    v23[3] = 0;
    v23[4] = 0;
    v23[2] = v24;

    sub_1AFDFC308();
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v35);
  }

  else
  {
    v35[0] = v20;
    v21 = v31;
    sub_1AF75B824();
    v22 = v30;
    (*(v30 + 48))(v21, 1, a5);
    (*(v22 + 32))(v28, v21, a5);
    swift_dynamicCast();
    v23 = v35[0];
  }

  v26 = v33;
  v25 = v34;
  *v34 = v23;
  v25[1] = v26;
}

void sub_1AF96A618(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a5@<X4>, uint64_t *a7@<X8>)
{
  v61 = a3;
  v70 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v64 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v71 = &v59 - v10;
  v11 = sub_1AFDFC318();
  v68 = *(v11 - 8);
  v69 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v67 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF483618(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v66 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v65 = &v59 - v16;
  v17 = sub_1AFDFDD58();
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v59 - v18;
  v62 = a5;
  v60 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = swift_getAssociatedTypeWitness();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v59 - v25;
  v28 = *a1;
  v27 = a1[1];
  if (*a1)
  {
    v59 = a1[1];
    v63 = a7;
    v74[0] = v28;
    v29 = v28;
    v30 = type metadata accessor for AuthoringNode(0);
    v73 = v29;
    swift_retain_n();
    swift_dynamicCast();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v32 = (*(AssociatedConformanceWitness + 24))(v23, AssociatedConformanceWitness);
    (*(v24 + 8))(v26, v23);
    v74[0] = v32;
    sub_1AFDFCCC8();
    if (v75 == 2 || (v75 & 1) != 0)
    {
      type metadata accessor for _PlaceholderNode(0);
      v36 = swift_allocObject();
      v74[3] = v30;
      v74[4] = &off_1EE801558;
      v74[0] = v73;
      sub_1AF441194(v74, &v36[OBJC_IVAR____TtC3VFX16_PlaceholderNode_oldNode]);
      v37 = MEMORY[0x1E69E7CC0];
      *(v36 + 3) = 0;
      *(v36 + 4) = 0;
      *(v36 + 2) = v37;
      v38 = OBJC_IVAR____TtC3VFX4Node_authoringID;

      v62 = v38;
      sub_1AFDFC308();
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v74);
      v40 = v68;
      v39 = v69;
      v41 = v65;
      (*(v68 + 56))(v65, 1, 1, v69);
      v70 = v30;
      v35 = swift_allocObject();
      v42 = v35 + OBJC_IVAR____TtC3VFX13AuthoringNode_position;
      *v42 = 0;
      *(v42 + 8) = 0;
      *(v42 + 16) = 1;
      v43 = v35 + OBJC_IVAR____TtC3VFX13AuthoringNode_size;
      *v43 = 0;
      *(v43 + 8) = 0;
      *(v43 + 16) = 1;
      v44 = v35 + OBJC_IVAR____TtC3VFX13AuthoringNode_zIndex;
      *v44 = 0;
      *(v44 + 8) = 1;
      v45 = (v35 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringName);
      *v45 = 0;
      v45[1] = 0;
      *(v35 + OBJC_IVAR____TtC3VFX13AuthoringNode_raw) = v36;
      *(v35 + OBJC_IVAR____TtC3VFX13AuthoringNode_inputs) = v37;
      v46 = v66;
      sub_1AF487314(v41, v66);
      v47 = *(v40 + 48);
      LODWORD(v38) = v47(v46, 1, v39);

      if (v38 == 1)
      {
        v48 = v67;
        sub_1AFDFC308();
        sub_1AF9199D8(v41, sub_1AF483618);
        v49 = v48;
        if (v47(v46, 1, v39) != 1)
        {
          sub_1AF9199D8(v46, sub_1AF483618);
        }
      }

      else
      {
        sub_1AF9199D8(v41, sub_1AF483618);
        v49 = v67;
        (*(v40 + 32))(v67, v46, v39);
      }

      (*(v40 + 32))(v35 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v49, v39);
      (*(v40 + 24))(&v36[v62], v35 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v39);

      v50 = v35 + OBJC_IVAR____TtC3VFX13AuthoringNode_position;
      *v50 = 0;
      *(v50 + 8) = 0;
      *(v50 + 16) = 1;
      v51 = v35 + OBJC_IVAR____TtC3VFX13AuthoringNode_size;
      *v51 = 0;
      *(v51 + 8) = 0;
      *(v51 + 16) = 1;
      v52 = v35 + OBJC_IVAR____TtC3VFX13AuthoringNode_zIndex;
      *v52 = 0;
      *(v52 + 8) = 1;
      v53 = (v35 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringName);
      *v53 = 0;
      v53[1] = 0;
    }

    else
    {
      v33 = v62;
      v74[0] = v32;
      sub_1AF75B824();
      v34 = v60;
      (*(v60 + 48))(v19, 1, v33);
      (*(v34 + 32))(v22, v19, v33);
      swift_dynamicCast();
      v35 = v74[0];
    }

    v74[0] = v35;

    v55 = v71;
    v54 = AssociatedTypeWitness;
    v56 = swift_dynamicCast();

    v57 = v63;
    if (v56)
    {

      (*(v64 + 8))(v55, v54);
      *v57 = 0;
      v57[1] = 0;
    }

    else
    {
      v58 = v59;
      *v63 = v35;
      v57[1] = v58;
    }
  }

  else
  {
    *a7 = 0;
    a7[1] = v27;
  }
}

uint64_t sub_1AF96AE08@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, unint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t x8_0@<X8>, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  swift_unknownObjectRetain();
  sub_1AF4410E4(a5, sub_1AF4410A8);
  swift_unknownObjectRelease();
  v20 = swift_allocObject();
  *(v20 + 16) = a13;
  *(v20 + 24) = a14;
  *(v20 + 32) = a15;
  *(v20 + 40) = a4 & 1;
  *(v20 + 48) = a5;
  *(v20 + 56) = a6;
  *(v20 + 64) = a7;
  *(v20 + 72) = a3;
  *(v20 + 80) = a8;
  *(v20 + 88) = a9;
  *(v20 + 104) = a10;
  *(v20 + 112) = a11;
  v21 = swift_allocObject();
  v21[2] = a13;
  v21[3] = a14;
  v21[4] = a15;
  v21[5] = sub_1AF96E31C;
  v21[6] = v20;

  sub_1AF96B320(sub_1AF96E36C, v21, a3, a12, a8, a11, a1, a2, x8_0, a13, a14, a15);
  swift_isEscapingClosureAtFileLocation();
}

void sub_1AF96AFDC(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v33 = a7;
  v34 = a8;
  v35 = a6;
  v36 = a9;
  v37 = a5;
  v31 = a4;
  v32 = a3;
  v17 = sub_1AFDFDD58();
  v29 = *(v17 - 8);
  v30 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v28 - v18;
  v20 = *(a14 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v28 = &v28 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v24 = *(AssociatedConformanceWitness + 24);
    v25 = swift_checkMetadataState();
    v38 = v24(v25, AssociatedConformanceWitness);
    sub_1AF75B824();
    if ((*(v20 + 48))(v19, 1, a14) == 1)
    {
      (*(v29 + 8))(v19, v30);
      swift_unknownObjectRetain();
      sub_1AF967F60(a1, 1, v32, v31 & 1, v33, v34, a10, a11, v36, v37, a12, a13, a14, a15);
      swift_unknownObjectRelease();
    }

    else
    {
      v26 = *(v20 + 32);
      v27 = v28;
      v26(v28, v19, a14);
      v26(v36, v27, a14);
    }
  }

  else
  {
    sub_1AFDFE518();
    __break(1u);
  }
}

uint64_t sub_1AF96B320@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void (*a7)(char *)@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v33 = a8;
  v34 = a7;
  v30 = a1;
  v31 = a6;
  v27 = a4;
  v28 = a5;
  v29 = a2;
  v32 = a9;
  v26 = a11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v16 = &v25 - v15;
  v17 = type metadata accessor for GraphCursor(0, a10, a11, a12);
  v18 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v25 - v20;
  (*(v14 + 16))(v16, v27, AssociatedTypeWitness, v19);
  swift_unknownObjectRetain();
  v22 = v28;

  v23 = v29;

  sub_1AF967E5C(a3, v16, v22, v30, v23, v31, a10, v26, v21, a12);
  v34(v21);
  return (*(v18 + 8))(v21, v17);
}

uint64_t sub_1AF96B538(uint64_t a1, uint64_t a2, char a3, uint64_t a4, int a5, uint64_t a6, uint64_t *a7, void (*a8)(char *, uint64_t, uint64_t, uint64_t), void **a9, uint64_t a10)
{
  v57 = a2;
  v60 = a7;
  v56 = a6;
  v55 = a5;
  v65[4] = *MEMORY[0x1E69E9840];
  v14 = (*(a10 + 48))(a8, a10);
  v64 = v14;
  if ((a4 & 0x1000000000000000) == 0 && a9 != (MEMORY[0x1E69E7CA8] + 8))
  {
    v15 = sub_1AF96E3D4(v14, 0, a8, a10);

    v64 = v15;
  }

  v63 = sub_1AF96D5F4(MEMORY[0x1E69E7CC0]);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v62 = sub_1AFDFD478();
  MEMORY[0x1EEE9AC00](v62);
  v41[0] = a8;
  v41[1] = a9;
  v42 = a10;
  v43 = &v64;
  v44 = v59;
  LOBYTE(v45) = a3 & 1;
  v46 = a4;
  v47 = v55 & 1;
  v48 = v56;
  v49 = a1;
  v50 = v57;
  v51 = &v63;
  v17 = v60;
  v52 = v60;
  v18 = sub_1AFDFD538();
  v19 = sub_1AF5C5358(0, &qword_1ED7268D0, MEMORY[0x1E69E7280]);
  v20 = v58;
  sub_1AF9673CC(&v62, sub_1AF96E4C0, &v40, v18, v19, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7288], v65);
  if (v20)
  {
    goto LABEL_8;
  }

  v21 = v62;
  v65[0] = v62;
  swift_getWitnessTable(MEMORY[0x1E69E6340], v18);
  v22 = sub_1AFDFD908();
  if ((v22 & 1) == 0)
  {
    v61 = v21;
    v23 = *(a10 + 64);

    v24 = v23(v65, a8, a10);
    swift_getWitnessTable(MEMORY[0x1E69E6328], v18);
    sub_1AFDFD4D8();
    v22 = v24(v65, 0);
    v17 = v60;
  }

  if (AssociatedTypeWitness == a9)
  {
    v26 = v17[1];
    v65[0] = *v17;
    v65[1] = v26;
    v59 = v65[0];
    v60 = &v54;
    MEMORY[0x1EEE9AC00](v22);
    v50 = a8;
    v51 = a9;
    v52 = a10;
    v53 = v17;
    MEMORY[0x1EEE9AC00](v27);
    v28 = v17;
    v42 = a8;
    v43 = a9;
    v44 = a10;
    v45 = sub_1AF96E518;
    v46 = v29;
    v30 = type metadata accessor for OrderedDictionary(0, MEMORY[0x1E69E5FE0], a9, MEMORY[0x1E69E5FE8]);

    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    WitnessTable = swift_getWitnessTable(aE5, v30);
    v34 = sub_1AF628B24(sub_1AF96E524, v41, v30, TupleTypeMetadata2, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v33);

    v65[0] = v34;
    v35 = sub_1AFDFD538();
    v36 = swift_getWitnessTable(MEMORY[0x1E69E6328], v35);
    v37 = sub_1AF75CA54(v65, MEMORY[0x1E69E5FE0], a9, v35, MEMORY[0x1E69E5FE8], v36);
    v39 = v38;

    *v28 = v37;
    v28[1] = v39;
  }

  else
  {
LABEL_8:
  }
}

uint64_t sub_1AF96BA0C(uint64_t a1, uint64_t *a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  swift_getAssociatedTypeWitness();
  v15 = sub_1AFDFD538();

  swift_getWitnessTable(MEMORY[0x1E69E6328], v15);
  sub_1AFDFD268();

  if (v14)
  {
    *a14 = v14;
  }

  return result;
}

void sub_1AF96BB14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v14 = *(a13 - 8);
  v15 = MEMORY[0x1EEE9AC00](a1);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF967F60(v19, v18 & 1, v20, v21, v22, v23, v25, v24, v17, *&v15, v28, v26, a13, v27);
  if (!v13)
  {
    (*(v14 + 8))(v17, a13);
  }
}

uint64_t sub_1AF96BC18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v28 = a4;
  v30 = a1;
  v31 = a2;
  v11 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v29 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v28 - v19;
  (*(v11 + 16))(v13, a3, a6, v18);
  swift_dynamicCast();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v37 = (*(AssociatedConformanceWitness + 48))(AssociatedTypeWitness, AssociatedConformanceWitness);
  v33 = a5;
  v34 = a6;
  v35 = a7;
  v36 = v28;
  swift_getTupleTypeMetadata2();
  v22 = sub_1AFDFDD58();
  v23 = sub_1AFDFD538();
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E69E6340], v23);
  v26 = sub_1AF628B24(sub_1AF96E54C, v32, v23, v22, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v25);

  (*(AssociatedConformanceWitness + 56))(v26, AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v15 + 16))(v29, v20, AssociatedTypeWitness);
  swift_dynamicCast();
  (*(v15 + 8))(v20, AssociatedTypeWitness);
  return v31;
}

uint64_t sub_1AF96BF40@<X0>(__objc2_class **a1@<X0>, uint64_t *a2@<X1>, uint64_t a4@<X3>, char *a6@<X8>)
{
  v57 = a2;
  v62 = a1;
  v63 = a6;
  v7 = sub_1AFDFDD58();
  v55 = *(v7 - 8);
  v56 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v59 = &v49 - v8;
  v61 = a4;
  v58 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v54 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v53 = &v49 - v12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v15 = sub_1AFDFDD58();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v49 - v17;
  v19 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v60 = &v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v49 - v24;
  (*(v16 + 16))(v18, v62, v15, v23);
  if ((*(v19 + 48))(v18, 1, TupleTypeMetadata2) == 1)
  {
    (*(v16 + 8))(v18, v15);
    return (*(v19 + 56))(v63, 1, 1, TupleTypeMetadata2);
  }

  else
  {
    v27 = *(v19 + 32);
    v27(v25, v18, TupleTypeMetadata2);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v29 = (*(AssociatedConformanceWitness + 40))(AssociatedTypeWitness, AssociatedConformanceWitness);
    if (*v29 == _TtC3VFX16_PlaceholderNode)
    {
      v50 = v27;
      v51 = v19 + 32;
      v52 = AssociatedTypeWitness;
      v62 = v29;
      v30 = v29 + OBJC_IVAR____TtC3VFX16_PlaceholderNode_oldNode;
      v31 = *(v29 + OBJC_IVAR____TtC3VFX16_PlaceholderNode_oldNode + 24);
      v32 = *(v29 + OBJC_IVAR____TtC3VFX16_PlaceholderNode_oldNode + 32);
      v33 = sub_1AF441150((v29 + OBJC_IVAR____TtC3VFX16_PlaceholderNode_oldNode), v31);
      v34 = *(v31 - 8);
      v35 = MEMORY[0x1EEE9AC00](v33);
      v37 = &v49 - v36;
      (*(v34 + 16))(&v49 - v36, v35);
      v38 = (*(v32 + 24))(v31, v32);
      (*(v34 + 8))(v37, v31);
      v64[0] = v38;
      v39 = v59;
      v40 = v61;
      sub_1AF75B824();
      v41 = v58;
      if ((*(v58 + 48))(v39, 1, v40) == 1)
      {
        (*(v55 + 8))(v39, v56);
        v42 = *(TupleTypeMetadata2 + 48);
        sub_1AF441194(v30, v64);

        sub_1AF5C5358(0, &qword_1EB638380, &protocol descriptor for _NodeProtocol);
      }

      else
      {

        v45 = *(v41 + 32);
        v46 = v53;
        v45(v53, v39, v40);
        v42 = *(TupleTypeMetadata2 + 48);
        v45(v54, v46, v40);
      }

      v43 = v63;
      v47 = v52;
      swift_dynamicCast();
      v48 = v60;
      v50(v60, v25, TupleTypeMetadata2);
      *&v43[v42] = *&v48[*(TupleTypeMetadata2 + 48)];
      (*(v19 + 56))(v43, 0, 1, TupleTypeMetadata2);
      return (*(*(v47 - 8) + 8))(v48, v47);
    }

    else
    {

      v44 = v63;
      v27(v63, v25, TupleTypeMetadata2);
      return (*(v19 + 56))(v44, 0, 1, TupleTypeMetadata2);
    }
  }
}

uint64_t sub_1AF96C5D8@<X0>(char *a1@<X0>, uint64_t (*a2)(char *, uint64_t, char *)@<X1>, char *a4@<X8>)
{
  v7 = *a1;
  v8 = *(swift_getTupleTypeMetadata2() + 48);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  result = a2(&a4[*(TupleTypeMetadata2 + 48)], v7, &a1[v8]);
  *a4 = result;
  return result;
}

uint64_t sub_1AF96C694(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = &v14 - v11;
  result = type metadata accessor for GraphCursor(0, a4, MEMORY[0x1E69E7CA8] + 8, a5);
  if ((a2 & 1) != 0 || !*(*(a1 + *(result + 48)) + 16))
  {
    (*(v10 + 16))(v12, a1 + *(result + 44), AssociatedTypeWitness);
    sub_1AFDFD538();
    return sub_1AFDFD4E8();
  }

  return result;
}

uint64_t sub_1AF96C7E4()
{
  if (qword_1EB6325F0 != -1)
  {
    swift_once();
  }

  v1 = sub_1AF3FC458(sub_1AF96D55C, 0, byte_1EB6C28A0, qword_1EB6C28A8, byte_1EB6C28B0, MEMORY[0x1E69E7CC0]);

  v2 = *(v0 + 24);
  if (v2 >> 62)
  {
    v5 = sub_1AFDFE108();
    if (v5)
    {
      v6 = v5;
      v3 = sub_1AFC892CC();
      swift_bridgeObjectRetain_n();

      sub_1AF56DE9C(v3 + 32, v6, v2);
    }

    else
    {

      v3 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v3 = v2 & 0xFFFFFFFFFFFFFF8;
    swift_bridgeObjectRetain_n();
  }

  v7 = v3;
  sub_1AF96E1E0(&v7, v1, sub_1AF6270E4, type metadata accessor for AuthoringNode);

  swift_bridgeObjectRelease_n();
  return v7;
}

uint64_t sub_1AF96C990()
{
  if (qword_1EB6325F0 != -1)
  {
    swift_once();
  }

  v1 = sub_1AF3FC4B4(sub_1AF96D588, 0, byte_1EB6C28A0, qword_1EB6C28A8, byte_1EB6C28B0, MEMORY[0x1E69E7CC0]);

  v2 = *(v0 + 16);
  if (v2 >> 62)
  {
    v5 = sub_1AFDFE108();
    if (v5)
    {
      v6 = v5;
      v3 = sub_1AFC892CC();
      swift_bridgeObjectRetain_n();

      sub_1AF56E010(v3 + 32, v6, v2);
    }

    else
    {

      v3 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v3 = v2 & 0xFFFFFFFFFFFFFF8;
    swift_bridgeObjectRetain_n();
  }

  v7 = v3;
  sub_1AF96E1E0(&v7, v1, sub_1AF6270E4, type metadata accessor for Node);

  swift_bridgeObjectRelease_n();
  return v7;
}

void sub_1AF96CB3C(void *a1@<X8>)
{
  v1 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = v1;
  a1[2] = &unk_1F24F2AC8;
  a1[3] = v1;
  a1[4] = v1;
  a1[5] = v1;
}

void *sub_1AF96CB78()
{
  v0 = swift_allocObject();
  v1 = MEMORY[0x1E69E7CC0];
  v0[3] = 0;
  v0[4] = 0;
  v0[2] = v1;
  sub_1AFDFC308();
  return v0;
}

uint64_t sub_1AF96CC0C()
{

  sub_1AF919DAC(*(v0 + 24), *(v0 + 32));
  v1 = OBJC_IVAR____TtC3VFX4Node_authoringID;
  v2 = sub_1AFDFC318();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1AF96CD1C(__objc2_class **a1)
{
  if (*a1 != _TtC3VFX12SubGraphNode || !*(a1 + OBJC_IVAR____TtC3VFX12SubGraphNode_graph))
  {
    return 0;
  }

  result = swift_dynamicCastClass();
  if (result)
  {
    v2 = result;

    return v2;
  }

  return result;
}

uint64_t sub_1AF96CDCC(__objc2_class ***a1)
{
  if (**a1 != _TtC3VFX12SubGraphNode || !*(*a1 + OBJC_IVAR____TtC3VFX12SubGraphNode_graph))
  {
    return 0;
  }

  result = swift_dynamicCastClass();
  if (result)
  {
    v2 = result;

    return v2;
  }

  return result;
}

uint64_t sub_1AF96CE80(void *a1, uint64_t a2)
{
  *(*a1 + OBJC_IVAR____TtC3VFX12SubGraphNode_graph) = a2;
}

uint64_t sub_1AF96CED0()
{
  v1 = OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID;
  v2 = sub_1AFDFC318();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1AF96D010(__objc2_class **a1)
{
  if (*a1 != _TtC3VFX21AuthoringSubGraphNode)
  {
    return 0;
  }

  result = swift_dynamicCastClass();
  if (result)
  {
    v2 = result;

    return v2;
  }

  return result;
}

uint64_t sub_1AF96D0BC(__objc2_class ***a1)
{
  if (**a1 != _TtC3VFX21AuthoringSubGraphNode)
  {
    return 0;
  }

  result = swift_dynamicCastClass();
  if (result)
  {
    v2 = result;

    return v2;
  }

  return result;
}

uint64_t sub_1AF96D16C(void *a1, uint64_t a2)
{
  *(*a1 + OBJC_IVAR____TtC3VFX21AuthoringSubGraphNode_graph) = a2;
}

void sub_1AF96D1BC(void *a1@<X8>)
{
  v1 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = v1;
  a1[2] = &unk_1F24F0150;
  a1[3] = v1;
  a1[4] = v1;
  a1[5] = v1;
}

uint64_t sub_1AF96D1DC()
{
  v8[0] = 0;
  v8[1] = 0xE000000000000000;
  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0x6F686563616C703CLL, 0xED00003A7265646CLL);
  v1 = *(v0 + OBJC_IVAR____TtC3VFX16_PlaceholderNode_oldNode + 24);
  v2 = sub_1AF441150((v0 + OBJC_IVAR____TtC3VFX16_PlaceholderNode_oldNode), v1);
  v3 = *(v1 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = v8 - v5;
  (*(v3 + 16))(v8 - v5, v4);
  sub_1AFDFEDD8();
  (*(v3 + 8))(v6, v1);
  MEMORY[0x1B2718AE0](62, 0xE100000000000000);
  return v8[0];
}

char *sub_1AF96D320(char *a1)
{
  v2 = swift_allocObject();
  sub_1AF441194(&a1[OBJC_IVAR____TtC3VFX16_PlaceholderNode_oldNode], v2 + OBJC_IVAR____TtC3VFX16_PlaceholderNode_oldNode);
  return sub_1AF96FD00(a1);
}

uint64_t sub_1AF96D3B0()
{

  sub_1AF919DAC(*(v0 + 24), *(v0 + 32));
  v1 = OBJC_IVAR____TtC3VFX4Node_authoringID;
  v2 = sub_1AFDFC318();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0((v0 + OBJC_IVAR____TtC3VFX16_PlaceholderNode_oldNode));

  return swift_deallocClassInstance();
}

unint64_t sub_1AF96D4F0()
{
  result = qword_1EB640810;
  if (!qword_1EB640810)
  {
    result = swift_getWitnessTable(aY_69, &type metadata for TraversalTag, v0, v1);
    atomic_store(result, &qword_1EB640810);
  }

  return result;
}

uint64_t sub_1AF96D5B4@<X0>(void *a1@<X0>, uint64_t (*a2)(void, void, void)@<X1>, uint64_t *a3@<X8>)
{
  result = a2(a1[1], a1[3], a1[4]);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

void *sub_1AF96D5F4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF96E5C0(0, &qword_1EB630BF8, MEMORY[0x1E69E6EC8]);
  v3 = sub_1AFDFE5C8();
  v4 = (a1 + 40);
  do
  {
    v5 = *(v4 - 1);
    v6 = *v4;
    v4 += 16;
    v7 = sub_1AF0D3F10(v5);
    *(v3 + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v7;
    *(v3[6] + 8 * v7) = v5;
    *(v3[7] + v7) = v6;
    ++v3[2];
    --v1;
  }

  while (v1);
  return v3;
}

uint64_t sub_1AF96D6F4(char *__dst, char *__src, char *a3, uint64_t *a4, uint64_t a5)
{
  v7 = a3;
  v8 = __src;
  v9 = __dst;
  v10 = __src - __dst;
  v11 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v11 = __src - __dst;
  }

  v12 = v11 >> 3;
  v13 = a3 - __src;
  v14 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v14 = a3 - __src;
  }

  v15 = v14 >> 3;
  if (v12 < v14 >> 3)
  {
    v16 = a4;
    if (a4 != __dst || &__dst[8 * v12] <= a4)
    {
      memmove(a4, __dst, 8 * v12);
    }

    v17 = &a4[v12];
    if (v10 < 8)
    {
LABEL_10:
      v8 = v9;
      goto LABEL_51;
    }

    while (1)
    {
      if (v8 >= v7)
      {
        goto LABEL_10;
      }

      if (*(a5 + 16))
      {
        v20 = v17;
        v21 = *v16;
        v22 = sub_1AF0D3F10(*v8);
        v24 = (v23 & 1) != 0 ? *(*(a5 + 56) + 8 * v22) : 0;
        v25 = sub_1AF0D3F10(v21);
        v27 = (v26 & 1) != 0 ? *(*(a5 + 56) + 8 * v25) : 0;
        v17 = v20;
        if (v24 < v27)
        {
          break;
        }
      }

      v18 = v8;
      v19 = v9 == v8++;
      if (!v19)
      {
        goto LABEL_12;
      }

LABEL_13:
      v9 += 8;
      if (v16 >= v17)
      {
        goto LABEL_10;
      }
    }

    v18 = v16;
    v19 = v9 == v16++;
    if (v19)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v9 = *v18;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v15] <= a4)
  {
    memmove(a4, __src, 8 * v15);
  }

  v43 = a4;
  v17 = &a4[v15];
  if (v13 < 8)
  {
    v16 = a4;
  }

  else
  {
    v16 = a4;
    if (v8 > v9)
    {
LABEL_31:
      v28 = v8 - 1;
      v7 -= 8;
      v42 = v8;
      do
      {
        v29 = (v7 + 8);
        if (!*(a5 + 16) || ((v30 = v17, v31 = v17 - 1, v32 = v28, v33 = *v28, v34 = sub_1AF0D3F10(*(v17 - 1)), (v35 & 1) == 0) ? (v36 = 0) : (v36 = *(*(a5 + 56) + 8 * v34)), (v37 = sub_1AF0D3F10(v33), (v38 & 1) == 0) ? (v39 = 0) : (v39 = *(*(a5 + 56) + 8 * v37)), v28 = v32, v17 = v30, v40 = v36 < v39, v16 = v43, v8 = v42, !v40))
        {
          if (v29 != v8)
          {
            *v7 = *v28;
          }

          if (v17 <= v16 || (v8 = v28, v28 <= v9))
          {
            v8 = v28;
            goto LABEL_51;
          }

          goto LABEL_31;
        }

        if (v29 != v30)
        {
          *v7 = *v31;
        }

        v7 -= 8;
        v17 = v31;
      }

      while (v31 > v43);
      v17 = v31;
    }
  }

LABEL_51:
  if (v8 != v16 || v8 >= (v16 + ((v17 - v16 + (v17 - v16 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v8, v16, 8 * (v17 - v16));
  }

  return 1;
}

uint64_t sub_1AF96D9C4(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = a3[1];
  if (v6 >= 1)
  {
    v86 = *a1;
    swift_bridgeObjectRetain_n();
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v20 = v7++;
      v83 = v20;
      if (v7 < v6)
      {
        v21 = *a3;
        v22 = *(a5 + 16);
        v89 = v8;
        if (v22)
        {
          v23 = *(v21 + 8 * v20);
          v24 = sub_1AF0D3F10(*(v21 + 8 * v7));
          if (v25)
          {
            v26 = *(*(a5 + 56) + 8 * v24);
          }

          else
          {
            v26 = 0;
          }

          v28 = sub_1AF0D3F10(v23);
          if (v29)
          {
            v27 = *(*(a5 + 56) + 8 * v28);
          }

          else
          {
            v27 = 0;
          }
        }

        else
        {
          v27 = 0;
          v26 = 0;
        }

        v7 = v83 + 2;
        if (v83 + 2 >= v6)
        {
LABEL_33:
          if (v26 >= v27)
          {
            goto LABEL_34;
          }
        }

        else
        {
          v30 = (v21 + 8 * v83 + 16);
          do
          {
            if (v22)
            {
              v31 = *(v30 - 1);
              v32 = sub_1AF0D3F10(*v30);
              if (v33)
              {
                v34 = *(*(a5 + 56) + 8 * v32);
              }

              else
              {
                v34 = 0;
              }

              v35 = sub_1AF0D3F10(v31);
              if (v36)
              {
                v37 = *(*(a5 + 56) + 8 * v35);
              }

              else
              {
                v37 = 0;
              }

              if (v26 >= v27 == v34 < v37)
              {
                goto LABEL_33;
              }
            }

            else if (v26 < v27)
            {
              goto LABEL_40;
            }

            ++v7;
            ++v30;
          }

          while (v6 != v7);
          v7 = v6;
          if (v26 >= v27)
          {
LABEL_34:
            v20 = v83;
            v8 = v89;
            if (v83 < v7)
            {
              v38 = 8 * v7 - 8;
              v39 = 8 * v83;
              v40 = v7;
              v41 = v83;
              do
              {
                if (v41 != --v40)
                {
                  v42 = *a3;
                  v43 = *(*a3 + v39);
                  *(v42 + v39) = *(*a3 + v38);
                  *(v42 + v38) = v43;
                }

                ++v41;
                v38 -= 8;
                v39 += 8;
              }

              while (v41 < v40);
            }

            goto LABEL_41;
          }
        }

LABEL_40:
        v8 = v89;
        v20 = v83;
      }

LABEL_41:
      v44 = a3[1];
      v45 = v7 < v44 && v7 - v20 < a4;
      if (!v45)
      {
        goto LABEL_65;
      }

      if (v20 + a4 >= v44)
      {
        v46 = a3[1];
      }

      else
      {
        v46 = v20 + a4;
      }

      if (v20 + a4 == v7)
      {
        v7 = v46;
        goto LABEL_65;
      }

      v90 = v8;
      v84 = *a3;
      v85 = v46;
      v47 = *a3 + 8 * v7 - 8;
      v48 = v20 - v7;
      while (2)
      {
        v49 = *(v84 + 8 * v7);
        v50 = v48;
        v51 = v47;
        while (1)
        {
          v53 = *v51;
          if (*(a5 + 16))
          {
            break;
          }

LABEL_54:
          *v51 = v49;
          v51[1] = v53;
          --v51;
          if (__CFADD__(v50++, 1))
          {
            goto LABEL_52;
          }
        }

        v54 = sub_1AF0D3F10(v49);
        if (v55)
        {
          v56 = *(*(a5 + 56) + 8 * v54);
        }

        else
        {
          v56 = 0;
        }

        v57 = sub_1AF0D3F10(v53);
        if (v58)
        {
          if (v56 < *(*(a5 + 56) + 8 * v57))
          {
            goto LABEL_52;
          }

LABEL_63:
          v53 = *v51;
          goto LABEL_54;
        }

        if (v56 >= 0)
        {
          goto LABEL_63;
        }

LABEL_52:
        ++v7;
        v47 += 8;
        --v48;
        if (v7 != v85)
        {
          continue;
        }

        break;
      }

      v7 = v85;
      v8 = v90;
      v20 = v83;
LABEL_65:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_1AF4209A4(0, *(v8 + 2) + 1, 1, v8);
      }

      v60 = *(v8 + 2);
      v59 = *(v8 + 3);
      v61 = v60 + 1;
      if (v60 >= v59 >> 1)
      {
        v8 = sub_1AF4209A4(v59 > 1, v60 + 1, 1, v8);
      }

      *(v8 + 2) = v61;
      v62 = v8 + 32;
      v63 = &v8[16 * v60 + 32];
      *v63 = v20;
      *(v63 + 1) = v7;
      if (v60)
      {
        v91 = v8;
        do
        {
          v64 = v61 - 1;
          if (v61 >= 4)
          {
            v68 = &v62[16 * v61];
            v69 = *(v68 - 7) - *(v68 - 8);
            v67 = *(v68 - 5) - *(v68 - 6);
            v70 = &v8[16 * v61];
            v65 = *v70;
            v66 = *(v70 + 1);
            if (v67 - v65 + v66 >= v69)
            {
              v73 = v61 - 2;
              v72 = *&v62[16 * v64 + 8] - *&v62[16 * v64];
LABEL_81:
              if (v67 < v72)
              {
                v64 = v73;
              }

              goto LABEL_83;
            }
          }

          else
          {
            if (v61 != 3)
            {
              v71 = *&v8[16 * v61 + 8] - *&v8[16 * v61];
              v72 = *&v62[16 * v64 + 8] - *&v62[16 * v64];
              goto LABEL_78;
            }

            v65 = *(v8 + 6);
            v66 = *(v8 + 7);
            v67 = *(v8 + 5) - *(v8 + 4);
          }

          v71 = v66 - v65;
          v72 = *&v62[16 * v64 + 8] - *&v62[16 * v64];
          if (v71 + v72 >= v67)
          {
            v73 = v61 - 2;
            goto LABEL_81;
          }

LABEL_78:
          if (v72 < v71)
          {
            v8 = v91;
            break;
          }

LABEL_83:
          v74 = &v62[16 * v64];
          v75 = *(v74 - 2);
          v76 = *(v74 + 1);
          v77 = (*a3 + 8 * v75);
          v78 = (*a3 + 8 * *v74);
          v79 = (*a3 + 8 * v76);

          sub_1AF96D6F4(v77, v78, v79, v86, a5);
          if (v93)
          {
            goto LABEL_86;
          }

          *(v74 - 2) = v75;
          *(v74 - 1) = v76;
          v8 = v91;
          v80 = *(v91 + 2);
          v61 = v80 - 1;
          memmove(&v62[16 * v64], v74 + 16, 16 * (v80 - 1 - v64));
          *(v91 + 2) = v80 - 1;
        }

        while (v80 > 2);
      }

      v6 = a3[1];
      if (v7 >= v6)
      {
        goto LABEL_4;
      }
    }
  }

  swift_bridgeObjectRetain_n();
  v8 = MEMORY[0x1E69E7CC0];
LABEL_4:
  v87 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = sub_1AF650C88(v8);
  }

  v9 = v8 + 16;
  v10 = *(v8 + 2);
  if (v10 < 2)
  {
LABEL_10:
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v88 = v8;
    while (1)
    {
      v11 = &v8[16 * v10];
      v12 = *v11;
      v13 = &v9[2 * v10];
      v14 = (*a3 + 8 * *v11);
      v15 = v13[1];
      v16 = (*a3 + 8 * *v13);
      v17 = (*a3 + 8 * v15);

      sub_1AF96D6F4(v14, v16, v17, v87, a5);
      if (v93)
      {
        break;
      }

      *v11 = v12;
      *(v11 + 1) = v15;
      v18 = *v9 - 1;
      memmove(&v9[2 * v10], v13 + 2, 16 * (*v9 - v10));
      *v9 = v18;
      v10 = v18;
      v45 = v18 > 1;
      v8 = v88;
      if (!v45)
      {
        goto LABEL_10;
      }
    }

LABEL_86:

    return swift_bridgeObjectRelease_n();
  }
}

unint64_t sub_1AF96DF88(unint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 != a2)
  {
    v6 = a3;
    v18 = *a4;
    v7 = *a4 + 8 * a3 - 8;
    for (i = result - a3; ; --i)
    {
      v9 = *(v18 + 8 * v6);
      v10 = i;
      v11 = v7;
      while (1)
      {
        v13 = *v11;
        if (*(a5 + 16))
        {
          break;
        }

LABEL_6:
        *v11 = v9;
        v11[1] = v13;
        --v11;
        if (__CFADD__(v10++, 1))
        {
          goto LABEL_4;
        }
      }

      v14 = sub_1AF0D3F10(v9);
      v16 = (v15 & 1) != 0 ? *(*(a5 + 56) + 8 * v14) : 0;
      result = sub_1AF0D3F10(v13);
      if (v17)
      {
        break;
      }

      if (v16 >= 0)
      {
        goto LABEL_15;
      }

LABEL_4:
      ++v6;
      v7 += 8;
      if (v6 == a2)
      {
        return result;
      }
    }

    if (v16 < *(*(a5 + 56) + 8 * result))
    {
      goto LABEL_4;
    }

LABEL_15:
    v13 = *v11;
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_1AF96E090(uint64_t *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = a1[1];
  swift_bridgeObjectRetain_n();
  v7 = sub_1AFDFE9D8();
  if (v7 >= v6)
  {
    if (v6)
    {

      sub_1AF96DF88(0, v6, 1, a1, a2);
    }

    return swift_bridgeObjectRelease_n();
  }

  else
  {
    v8 = v7;
    v9 = v6 / 2;
    if (v6 <= 1)
    {
      v10 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      a3(0);
      v10 = sub_1AFDFD488();
      *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) = v9;
    }

    v12[0] = ((v10 & 0xFFFFFFFFFFFFFF8) + 32);
    v12[1] = v9;

    sub_1AF96D9C4(v12, v13, a1, v8, a2);

    *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
    swift_bridgeObjectRelease_n();
  }
}

uint64_t sub_1AF96E1E0(uint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void))
{
  v8 = *a1;
  swift_bridgeObjectRetain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = a3(v8);
    *a1 = v8;
  }

  v10 = *(v8 + 16);
  v12[0] = v8 + 32;
  v12[1] = v10;

  sub_1AF96E090(v12, a2, a4);

  sub_1AFDFE348();
  return swift_bridgeObjectRelease_n();
}

uint64_t sub_1AF96E3D4(uint64_t a1, char a2, void (*a3)(char *, uint64_t, uint64_t, uint64_t), uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  v13 = sub_1AFDFD478();
  v7 = *(a4 + 40);

  v7(v8, a3, a4);
  v10[2] = a3;
  v10[3] = a4;
  v11 = a2;
  v12 = &v13;
  sub_1AF9674A8(1, 0x1000000000000000, 0, sub_1AF96E628, v10, a3, a4);
  swift_unknownObjectRelease();
  return v13;
}

void sub_1AF96E5C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void, ValueMetadata *, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E5FE0], &type metadata for TraversalTag, MEMORY[0x1E69E5FE8]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1AF96E64C(uint64_t a1, void (*a2)(uint64_t *__return_ptr, __int128 *), __n128 a3)
{
  v3 = sub_1AF97228C();
  v4 = *(v3 + 16);
  if (!v4)
  {
    v7 = MEMORY[0x1E69E7CC0];
    goto LABEL_16;
  }

  v5 = 0;
  v27 = OBJC_IVAR____TtC3VFX13AuthoringNode_raw;
  v6 = v3 + 40;
  v7 = MEMORY[0x1E69E7CC0];
  v25 = v3 + 40;
  do
  {
    v8 = (v6 + 16 * v5);
    v9 = v5;
    while (1)
    {
      v10 = *(v8 - 1);
      if (v10)
      {
        break;
      }

LABEL_4:
      ++v9;
      v8 += 2;
      if (v4 == v9)
      {
        goto LABEL_16;
      }
    }

    v11 = *v8;
    v12 = *(**(a1 + v27) + 152);

    v12(v31, v13);

    v14 = v31[0];
    v37 = v31[0];
    v36 = v31[1];
    sub_1AF9121F8(&v36, &qword_1EB638968, &type metadata for TypeConstraint);
    v35 = v31[2];
    sub_1AF9121F8(&v35, &qword_1EB638968, &type metadata for TypeConstraint);
    v34 = v31[3];
    sub_1AF9199D8(&v34, sub_1AF445C2C);
    v33 = v31[4];
    sub_1AF9199D8(&v33, sub_1AF445C2C);
    v32 = v31[5];
    sub_1AF9121F8(&v32, &qword_1EB638978, &type metadata for AnyValue);
    v15 = *(v14 + 8 * v9 + 32);
    sub_1AF4410A8(v15);
    sub_1AF9121F8(&v37, &qword_1EB638968, &type metadata for TypeConstraint);
    v16 = swift_allocObject();
    *(v16 + 16) = 0xC000000000000008;
    LOBYTE(v14) = sub_1AF9C5694(v15, v16 | 0x8000000000000000);

    sub_1AF441114(v15);
    if (v14)
    {

      goto LABEL_4;
    }

    *&v29 = v7;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1AFC0782C(0, *(v7 + 16) + 1, 1);
      v7 = v29;
    }

    v18 = *(v7 + 16);
    v17 = *(v7 + 24);
    if (v18 >= v17 >> 1)
    {
      sub_1AFC0782C(v17 > 1, v18 + 1, 1);
      v7 = v29;
    }

    v5 = v9 + 1;
    *(v7 + 16) = v18 + 1;
    v19 = (v7 + 24 * v18);
    v19[4] = v9;
    v19[5] = v10;
    v19[6] = v11;
    v6 = v25;
  }

  while (v4 - 1 != v9);
LABEL_16:

  v20 = *(v7 + 16);
  if (v20)
  {
    v21 = (v7 + 40);
    v22 = 1;
    do
    {
      v23 = *v21;
      v21 = (v21 + 24);
      v29 = v23;

      a2(&v30, &v29);

      v22 += v30;
      --v20;
    }

    while (v20);
  }

  else
  {
    v22 = 1;
  }

  return v22;
}

uint64_t sub_1AF96E968(uint64_t a1, void (*a2)(uint64_t *__return_ptr, __int128 *), __n128 a3)
{
  v3 = sub_1AF971F68();
  v4 = *(v3 + 16);
  if (!v4)
  {
    v7 = MEMORY[0x1E69E7CC0];
    goto LABEL_16;
  }

  v5 = 0;
  v6 = v3 + 40;
  v7 = MEMORY[0x1E69E7CC0];
  v25 = v3 + 40;
  do
  {
    v8 = (v6 + 16 * v5);
    v9 = v5;
    while (1)
    {
      v10 = *(v8 - 1);
      if (v10)
      {
        break;
      }

LABEL_4:
      ++v9;
      v8 += 2;
      if (v4 == v9)
      {
        goto LABEL_16;
      }
    }

    v11 = *v8;
    v12 = *(*a1 + 152);

    v12(v30, v13);
    v14 = v30[0];
    v36 = v30[0];
    v35 = v30[1];
    sub_1AF9121F8(&v35, &qword_1EB638968, &type metadata for TypeConstraint);
    v34 = v30[2];
    sub_1AF9121F8(&v34, &qword_1EB638968, &type metadata for TypeConstraint);
    v33 = v30[3];
    sub_1AF9199D8(&v33, sub_1AF445C2C);
    v32 = v30[4];
    sub_1AF9199D8(&v32, sub_1AF445C2C);
    v31 = v30[5];
    sub_1AF9121F8(&v31, &qword_1EB638978, &type metadata for AnyValue);
    v15 = *(v14 + 8 * v9 + 32);
    sub_1AF4410A8(v15);
    sub_1AF9121F8(&v36, &qword_1EB638968, &type metadata for TypeConstraint);
    v16 = swift_allocObject();
    *(v16 + 16) = 0xC000000000000008;
    LOBYTE(v14) = sub_1AF9C5694(v15, v16 | 0x8000000000000000);

    sub_1AF441114(v15);
    if (v14)
    {

      goto LABEL_4;
    }

    *&v28 = v7;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1AFC0793C(0, *(v7 + 16) + 1, 1);
      v7 = v28;
    }

    v18 = *(v7 + 16);
    v17 = *(v7 + 24);
    if (v18 >= v17 >> 1)
    {
      sub_1AFC0793C(v17 > 1, v18 + 1, 1);
      v7 = v28;
    }

    v5 = v9 + 1;
    *(v7 + 16) = v18 + 1;
    v19 = (v7 + 24 * v18);
    v19[4] = v9;
    v19[5] = v10;
    v19[6] = v11;
    v6 = v25;
  }

  while (v4 - 1 != v9);
LABEL_16:

  v20 = *(v7 + 16);
  if (v20)
  {
    v21 = (v7 + 40);
    v22 = 1;
    do
    {
      v23 = *v21;
      v21 = (v21 + 24);
      v28 = v23;

      a2(&v29, &v28);

      v22 += v29;
      --v20;
    }

    while (v20);
  }

  else
  {
    v22 = 1;
  }

  return v22;
}

uint64_t sub_1AF96EC68(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *sub_1AF96ED40(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64) + 7;
  v9 = *(v6 + 80) & 0x100000;
  v10 = *a2;
  *a1 = *a2;
  if (v7 > 7 || v9 != 0 || ((((((v8 + ((v7 + 8) & ~v7)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8 > 0x18)
  {
    a1 = (v10 + ((v7 & 0xF8 ^ 0x1F8) & (v7 + 16)));
  }

  else
  {
    v13 = ~v7;
    v14 = a1 + v7;
    v15 = a2 + v7;
    v16 = (v14 + 8) & v13;
    v17 = (v15 + 8) & v13;
    (*(v6 + 16))(v16, v17, AssociatedTypeWitness);
    v18 = ((v8 + v16) & 0xFFFFFFFFFFFFFFF8);
    v19 = ((v8 + v17) & 0xFFFFFFFFFFFFFFF8);
    *v18 = *v19;
    v20 = ((v18 + 15) & 0xFFFFFFFFFFFFFFF8);
    v21 = ((v19 + 15) & 0xFFFFFFFFFFFFFFF8);
    v22 = v21[1];
    *v20 = *v21;
    v20[1] = v22;
    *((v20 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v21 + 23) & 0xFFFFFFFFFFFFFFF8);
  }

  return a1;
}

uint64_t sub_1AF96EEBC(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))((a1 + *(*(AssociatedTypeWitness - 8) + 80) + 8) & ~*(*(AssociatedTypeWitness - 8) + 80), AssociatedTypeWitness);
}

void *sub_1AF96EF70(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = v6 + 16;
  v8 = *(v6 + 80);
  v9 = (a1 + v8 + 8) & ~v8;
  v10 = (a2 + v8 + 8) & ~v8;
  (*(v6 + 16))(v9, v10, AssociatedTypeWitness);
  v11 = *(v7 + 48) + 7;
  v12 = ((v11 + v9) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v11 + v10) & 0xFFFFFFFFFFFFFFF8);
  *v12 = *v13;
  v14 = ((v12 + 15) & 0xFFFFFFFFFFFFFFF8);
  v15 = ((v13 + 15) & 0xFFFFFFFFFFFFFFF8);
  v16 = v15[1];
  *v14 = *v15;
  v14[1] = v16;
  *((v14 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v15 + 23) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

void *sub_1AF96F068(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = v6 + 24;
  v8 = *(v6 + 80);
  v9 = (a1 + v8 + 8) & ~v8;
  v10 = (a2 + v8 + 8) & ~v8;
  (*(v6 + 24))(v9, v10, AssociatedTypeWitness);
  v11 = *(v7 + 40) + 7;
  v12 = ((v11 + v9) & 0xFFFFFFFFFFFFFFF8);
  v13 = v11 + v10;
  v14 = (v13 & 0xFFFFFFFFFFFFFFF8) + 15;
  *v12 = *(v13 & 0xFFFFFFFFFFFFFFF8);

  v15 = ((v12 + 15) & 0xFFFFFFFFFFFFFFF8);
  v14 &= 0xFFFFFFFFFFFFFFF8;
  v16 = *(v14 + 8);
  *v15 = *v14;
  v15[1] = v16;

  *((v15 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v14 + 23) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

void *sub_1AF96F174(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = v6 + 32;
  v8 = *(v6 + 80);
  v9 = (a1 + v8 + 8) & ~v8;
  v10 = (a2 + v8 + 8) & ~v8;
  (*(v6 + 32))(v9, v10, AssociatedTypeWitness);
  v11 = *(v7 + 32) + 7;
  v12 = ((v11 + v9) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v11 + v10) & 0xFFFFFFFFFFFFFFF8);
  *v12 = *v13;
  v14 = ((v12 + 15) & 0xFFFFFFFFFFFFFFF8);
  v15 = ((v13 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v14 = *v15;
  *((v14 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v15 + 23) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

void *sub_1AF96F258(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = v6 + 40;
  v8 = *(v6 + 80);
  v9 = (a1 + v8 + 8) & ~v8;
  v10 = (a2 + v8 + 8) & ~v8;
  (*(v6 + 40))(v9, v10, AssociatedTypeWitness);
  v11 = *(v7 + 24) + 7;
  v12 = ((v11 + v9) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v11 + v10) & 0xFFFFFFFFFFFFFFF8);
  *v12 = *v13;

  v14 = ((v12 + 15) & 0xFFFFFFFFFFFFFFF8);
  v15 = ((v13 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v14 = *v15;

  *((v14 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v15 + 23) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t sub_1AF96F350(unint64_t *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = v5;
  v7 = *(v5 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  v9 = *(v5 + 80);
  v10 = *(v5 + 64);
  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
    goto LABEL_28;
  }

  v11 = ((((((v10 + ((v9 + 8) & ~v9) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  v12 = v11 & 0xFFFFFFF8;
  if ((v11 & 0xFFFFFFF8) != 0)
  {
    v13 = 2;
  }

  else
  {
    v13 = a2 - v8 + 1;
  }

  if (v13 >= 0x10000)
  {
    v14 = 4;
  }

  else
  {
    v14 = 2;
  }

  if (v13 < 0x100)
  {
    v14 = 1;
  }

  if (v13 >= 2)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (v15 > 1)
  {
    if (v15 == 2)
    {
      v16 = *(a1 + v11);
      if (!v16)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v16 = *(a1 + v11);
      if (!v16)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v15 || (v16 = *(a1 + v11)) == 0)
  {
LABEL_28:
    if ((v7 & 0x80000000) != 0)
    {
      v20 = *(v6 + 48);

      return v20((a1 + v9 + 8) & ~v9);
    }

    else
    {
      v19 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }
  }

  v18 = v16 - 1;
  if (v12)
  {
    v18 = 0;
    LODWORD(v12) = *a1;
  }

  return v8 + (v12 | v18) + 1;
}

void sub_1AF96F4FC(uint64_t *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v7 + 84);
  }

  v11 = ((((((*(v7 + 64) + ((v9 + 8) & ~v9) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v10 >= a3)
  {
    v14 = 0;
    v15 = a2 - v10;
    if (a2 <= v10)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (((((((*(v7 + 64) + ((v9 + 8) & ~v9) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v12 = a3 - v10 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = a2 - v10;
    if (a2 <= v10)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *(a1 + v11) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_33;
        }

        *(a1 + v11) = 0;
      }

      else if (v14)
      {
        *(a1 + v11) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return;
      }

LABEL_33:
      if ((v8 & 0x80000000) != 0)
      {
        v19 = *(v7 + 56);

        v19((a1 + v9 + 8) & ~v9, a2);
      }

      else
      {
        if ((a2 & 0x80000000) != 0)
        {
          v18 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v18 = (a2 - 1);
        }

        *a1 = v18;
      }

      return;
    }
  }

  if (((((((*(v7 + 64) + ((v9 + 8) & ~v9) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v16 = v15;
  }

  else
  {
    v16 = 1;
  }

  if (((((((*(v7 + 64) + ((v9 + 8) & ~v9) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v17 = ~v10 + a2;
    bzero(a1, v11);
    *a1 = v17;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      *(a1 + v11) = v16;
    }

    else
    {
      *(a1 + v11) = v16;
    }
  }

  else if (v14)
  {
    *(a1 + v11) = v16;
  }
}

unint64_t *assignWithCopy for MappingMode.InputFilter(unint64_t *a1, unint64_t *a2)
{
  v3 = *a2;
  sub_1AF4410E4(*a2, sub_1AF4410A8);
  v4 = *a1;
  *a1 = v3;
  sub_1AF4410E4(v4, sub_1AF441114);
  return a1;
}

unint64_t *assignWithTake for MappingMode.InputFilter(unint64_t *a1, unint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;
  sub_1AF4410E4(v3, sub_1AF441114);
  return a1;
}

uint64_t getEnumTagSinglePayload for MappingMode.InputFilter(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xE && *(a1 + 8))
  {
    return (*a1 + 14);
  }

  v3 = ((((*a1 >> 57) & 8 | *a1 & 7) >> 2) & 0xFFFFFFF3 | (4 * (*a1 & 3))) ^ 0xF;
  if (v3 >= 0xD)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for MappingMode.InputFilter(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xD)
  {
    *result = a2 - 14;
    if (a3 >= 0xE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0xE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 3 | (4 * (-a2 & 0xF));
      *result = (v3 | (v3 << 57)) & 0x1000000000000007;
    }
  }

  return result;
}

uint64_t sub_1AF96F88C(void *a1)
{
  if ((*a1 & 0x1000000000000000) != 0)
  {
    return (*a1 >> 3) + 2;
  }

  else
  {
    return (*a1 >> 2) & 1;
  }
}

void *sub_1AF96F8C0(void *result, unsigned int a2)
{
  if (a2 < 2)
  {
    *result = *result & 0xEFFFFFFFFFFFFFF8 | (4 * a2);
  }

  else
  {
    *result = (8 * (a2 - 2)) | 0x1000000000000000;
  }

  return result;
}

uint64_t sub_1AF96F934(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  sub_1AF4410E4(v4, sub_1AF4410A8);
  *(a1 + 8) = v4;
  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t assignWithCopy for MappingMode(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  sub_1AF4410E4(v4, sub_1AF4410A8);
  v5 = *(a1 + 8);
  *(a1 + 8) = v4;
  sub_1AF4410E4(v5, sub_1AF441114);
  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t assignWithTake for MappingMode(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);
  sub_1AF4410E4(v4, sub_1AF441114);
  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t getEnumTagSinglePayload for MappingMode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[17])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for MappingMode(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1AF96FB20()
{
  result = qword_1EB6408A0;
  if (!qword_1EB6408A0)
  {
    result = swift_getWitnessTable(byte_1AFE86E98, &type metadata for MappingMode.TraversalOrder, v0, v1);
    atomic_store(result, &qword_1EB6408A0);
  }

  return result;
}

uint64_t sub_1AF96FB80(char a1)
{
  v3 = *v1;
  v4 = sub_1AFDFC318();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v3 + 112);

  v10 = v8(v9);
  if ((a1 & 1) == 0)
  {
    sub_1AFDFC308();
    (*(v5 + 40))(v10 + OBJC_IVAR____TtC3VFX4Node_authoringID, v7, v4);
  }

  return v10;
}

char *sub_1AF96FD00(char *a1)
{
  v3 = sub_1AFDFC318();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1E69E7CC0];
  *(v1 + 3) = 0;
  *(v1 + 4) = 0;
  *(v1 + 2) = v7;
  v8 = OBJC_IVAR____TtC3VFX4Node_authoringID;
  sub_1AFDFC308();
  *(v1 + 2) = *(a1 + 2);

  v9 = *(a1 + 3);
  v10 = *(a1 + 4);
  v11 = *(v1 + 3);
  v12 = *(v1 + 4);
  *(v1 + 3) = v9;
  *(v1 + 4) = v10;
  sub_1AF448650(v9, v10);
  sub_1AF919DAC(v11, v12);
  (*(v4 + 16))(v6, &a1[OBJC_IVAR____TtC3VFX4Node_authoringID], v3);

  (*(v4 + 40))(&v1[v8], v6, v3);
  return v1;
}

uint64_t sub_1AF96FE5C(void (*a1)(void))
{
  v4 = *(*v1 + 112);

  v6 = v4(v5);
  a1();
  if (v2)
  {
  }

  return v6;
}

void *sub_1AF96FF1C()
{
  v0 = swift_allocObject();
  v1 = MEMORY[0x1E69E7CC0];
  v0[3] = 0;
  v0[4] = 0;
  v0[2] = v1;
  sub_1AFDFC308();
  return v0;
}

uint64_t sub_1AF96FF70(char *a1)
{
  v2 = swift_allocObject();
  sub_1AF96FD00(a1);
  return v2;
}

uint64_t sub_1AF96FFFC()
{

  sub_1AF919DAC(*(v0 + 24), *(v0 + 32));
  v1 = OBJC_IVAR____TtC3VFX4Node_authoringID;
  v2 = sub_1AFDFC318();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for Node(uint64_t a1)
{
  result = qword_1EB631388;
  if (!qword_1EB631388)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1AF9700FC(uint64_t a1)
{
  result = sub_1AFDFC318();
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

uint64_t destroy for Signature(void *a1)
{
}

uint64_t *initializeWithCopy for Signature(uint64_t *a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;
  v5 = a2[5];
  a1[4] = a2[4];
  a1[5] = v5;

  return a1;
}

uint64_t *assignWithCopy for Signature(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  a1[2] = a2[2];

  a1[3] = a2[3];

  a1[4] = a2[4];

  a1[5] = a2[5];

  return a1;
}

void *assignWithTake for Signature(void *a1, _OWORD *a2)
{

  *a1 = *a2;

  *(a1 + 1) = a2[1];

  *(a1 + 2) = a2[2];

  return a1;
}

uint64_t sub_1AF9703D8()
{
  v1 = (*(*v0 + 144))();
  if (v2)
  {
    v3 = v1;
    v4 = v2;
    v5 = sub_1AFDFF4B8();
    MEMORY[0x1B2718AE0](v5);

    v6 = MEMORY[0x1B2718AE0](8250, 0xE200000000000000);
    v7 = (*(*v0 + 128))(v6);
    MEMORY[0x1B2718AE0](v7);

    MEMORY[0x1B2718AE0](91, 0xE100000000000000);
    MEMORY[0x1B2718AE0](v3, v4);

    v8 = 15965;
    v9 = 0xE200000000000000;
  }

  else
  {
    v10 = sub_1AFDFF4B8();
    MEMORY[0x1B2718AE0](v10);

    v11 = MEMORY[0x1B2718AE0](8250, 0xE200000000000000);
    v12 = (*(*v0 + 128))(v11);
    MEMORY[0x1B2718AE0](v12);

    v8 = 62;
    v9 = 0xE100000000000000;
  }

  MEMORY[0x1B2718AE0](v8, v9);
  return 60;
}

uint64_t sub_1AF970608(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (!v3)
  {
    v17 = *(a2 + 16);
    if (!v17)
    {
      return 0;
    }

    goto LABEL_9;
  }

  v31 = MEMORY[0x1E69E7CC0];
  sub_1AFC05CE4(0, v3, 0);
  v6 = (a1 + 32);
  do
  {
    v7 = *v6++;
    sub_1AF442064(v7);
    v8 = sub_1AF90D394(v7);
    v10 = v9;
    sub_1AF445BE4(v7);
    v12 = *(v31 + 16);
    v11 = *(v31 + 24);
    if (v12 >= v11 >> 1)
    {
      sub_1AFC05CE4(v11 > 1, v12 + 1, 1);
    }

    *(v31 + 16) = v12 + 1;
    v13 = v31 + 16 * v12;
    *(v13 + 32) = v8;
    *(v13 + 40) = v10;
    --v3;
  }

  while (v3);
  sub_1AF629AE4();
  sub_1AF488088();
  v14 = sub_1AFDFCD98();
  v16 = v15;

  MEMORY[0x1B2718AE0](v14, v16);

  MEMORY[0x1B2718AE0](41, 0xE100000000000000);

  MEMORY[0x1B2718AE0](40, 0xE100000000000000);

  v17 = *(a2 + 16);
  if (v17)
  {
    MEMORY[0x1B2718AE0](0x209286E220, 0xA500000000000000);
LABEL_9:
    sub_1AFC05CE4(0, v17, 0);
    v18 = v4;
    v19 = (a2 + 32);
    do
    {
      v20 = *v19++;
      sub_1AF442064(v20);
      v21 = sub_1AF90D394(v20);
      v23 = v22;
      sub_1AF445BE4(v20);
      v25 = *(v18 + 16);
      v24 = *(v18 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_1AFC05CE4(v24 > 1, v25 + 1, 1);
      }

      *(v18 + 16) = v25 + 1;
      v26 = v18 + 16 * v25;
      *(v26 + 32) = v21;
      *(v26 + 40) = v23;
      --v17;
    }

    while (v17);
    sub_1AF629AE4();
    sub_1AF488088();
    v27 = sub_1AFDFCD98();
    v29 = v28;

    MEMORY[0x1B2718AE0](v27, v29);
  }

  return 0;
}

uint64_t sub_1AF9708B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  swift_unknownObjectWeakInit();
  v12 = 0;
  swift_unknownObjectWeakAssign();
  v13 = 0x3E6C6C756E3CLL;
  v14 = 0xE600000000000000;
  type metadata accessor for ImplicitWorldObjectNode(0);
  v6 = swift_allocObject();
  sub_1AF44596C(v11, v10);
  sub_1AF44596C(v10, v6 + OBJC_IVAR____TtC3VFX15WorldObjectNode_reference);
  v7 = (v6 + OBJC_IVAR____TtC3VFX15WorldObjectNode_semantic);
  v8 = MEMORY[0x1E69E7CC0];
  *v7 = a1;
  v7[1] = a2;
  v6[2] = v8;
  v6[3] = 0;
  v6[4] = 0;
  sub_1AFDFC308();
  sub_1AF4459C8(v10);
  sub_1AF4459C8(v11);
  result = type metadata accessor for Node(0);
  a3[4] = result;
  *a3 = 0xC000000000000000;
  a3[1] = v6;
  return result;
}

BOOL sub_1AF9709B8(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (!a2)
  {
    if (!a4)
    {
      return a1 == a3;
    }

    return 0;
  }

  if (a2 == 1)
  {
    if (a4 == 1)
    {
      return a1 == a3;
    }

    return 0;
  }

  if (a1 > 1)
  {
    if (a1 == 2)
    {
      return a4 == 2 && a3 == 2;
    }

    else
    {
      return a4 == 2 && a3 == 3;
    }
  }

  else
  {
    if (!a1)
    {
      return a4 == 2 && !a3;
    }

    return a4 == 2 && a3 == 1;
  }
}

uint64_t sub_1AF970A64(uint64_t a1, uint64_t a2)
{
  if (a1 < 0 || *(a2 + 16) <= a1 || !*(a2 + 16 * a1 + 40))
  {
    return sub_1AFDFEA08();
  }

  sub_1AF4486E4();
  v2 = sub_1AFDFDE98();
  v3 = *(v2 + 32);
  v4 = *(v2 + 40);

  MEMORY[0x1B2718AE0](v3, v4);

  MEMORY[0x1B2718AE0](39, 0xE100000000000000);
  return 39;
}

uint64_t sub_1AF970B5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    MEMORY[0x1B2718AE0](40, 0xE100000000000000);
    sub_1AFC05CE4(0, v5, 0);
    v8 = (a1 + 32);
    do
    {
      v9 = *v8++;
      sub_1AF4410A8(v9);
      v10 = sub_1AF9C50D4(v9);
      v12 = v11;
      sub_1AF441114(v9);
      v14 = *(v6 + 16);
      v13 = *(v6 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_1AFC05CE4(v13 > 1, v14 + 1, 1);
      }

      *(v6 + 16) = v14 + 1;
      v15 = v6 + 16 * v14;
      *(v15 + 32) = v10;
      *(v15 + 40) = v12;
      --v5;
    }

    while (v5);
    sub_1AF629AE4();
    sub_1AF488088();
    v16 = sub_1AFDFCD98();
    v18 = v17;

    MEMORY[0x1B2718AE0](v16, v18);

    MEMORY[0x1B2718AE0](0x9286E22029, 0xA500000000000000);
    v19 = *(a2 + 16);
    v6 = MEMORY[0x1E69E7CC0];
    if (v19)
    {
      MEMORY[0x1B2718AE0](32, 0xE100000000000000);
      goto LABEL_9;
    }

LABEL_17:
    v32 = 2697248;
    v33 = 0xE300000000000000;
    goto LABEL_18;
  }

  v19 = *(a2 + 16);
  if (!v19)
  {
    goto LABEL_17;
  }

LABEL_9:
  if (v19 != 1)
  {
    MEMORY[0x1B2718AE0](40, 0xE100000000000000);
  }

  sub_1AFC05CE4(0, v19, 0);
  v20 = (a2 + 32);
  v21 = v19;
  do
  {
    v22 = *v20++;
    sub_1AF4410A8(v22);
    v23 = sub_1AF9C50D4(v22);
    v25 = v24;
    sub_1AF441114(v22);
    v27 = *(v6 + 16);
    v26 = *(v6 + 24);
    if (v27 >= v26 >> 1)
    {
      sub_1AFC05CE4(v26 > 1, v27 + 1, 1);
    }

    *(v6 + 16) = v27 + 1;
    v28 = v6 + 16 * v27;
    *(v28 + 32) = v23;
    *(v28 + 40) = v25;
    --v21;
  }

  while (v21);
  sub_1AF629AE4();
  sub_1AF488088();
  v29 = sub_1AFDFCD98();
  v31 = v30;

  MEMORY[0x1B2718AE0](v29, v31);

  if (v19 != 1)
  {
    v32 = 41;
    v33 = 0xE100000000000000;
LABEL_18:
    MEMORY[0x1B2718AE0](v32, v33);
  }

  v34 = *(a3 + 16);
  v35 = MEMORY[0x1E69E7CC0];
  if (v34)
  {
    v36 = 0;
    v37 = a3 + 32;
    v38 = MEMORY[0x1E69E7CC0];
    do
    {
      v39 = v36;
      while (1)
      {
        v40 = *(v37 + 8 * v39);
        v36 = v39 + 1;
        sub_1AF4410A8(v40);
        if (!sub_1AF9C5694(v40, 0xA000000000000000))
        {
          break;
        }

        sub_1AF441114(v40);
        ++v39;
        if (v34 == v36)
        {
          goto LABEL_32;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1AFC06EE8(0, v38[2] + 1, 1);
      }

      v42 = v38[2];
      v41 = v38[3];
      if (v42 >= v41 >> 1)
      {
        sub_1AFC06EE8(v41 > 1, v42 + 1, 1);
      }

      v38[2] = v42 + 1;
      v43 = &v38[2 * v42];
      v43[4] = v39;
      v43[5] = v40;
    }

    while (v34 - 1 != v39);
  }

  else
  {
    v38 = MEMORY[0x1E69E7CC0];
  }

LABEL_32:
  v44 = v38[2];
  if (v44)
  {
    sub_1AFC05CE4(0, v44, 0);
    v45 = v35;
    sub_1AF43A4E0();
    v46 = v38 + 5;
    do
    {
      v47 = *v46;
      v76 = *(v46 - 1);
      v48 = sub_1AFDFE5C8();
      v49 = v48 + 8;
      v51 = qword_1F24F38B8;
      v50 = unk_1F24F38C0;
      v52 = qword_1F24F38C8;
      v53 = sub_1AF449CB8(qword_1F24F38B8);
      *(v49 + ((v53 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v53;
      *(v48[6] + 8 * v53) = v51;
      v54 = (v48[7] + 16 * v53);
      *v54 = v50;
      v54[1] = v52;
      ++v48[2];

      v56 = qword_1F24F38D0;
      v55 = unk_1F24F38D8;
      v57 = qword_1F24F38E0;
      v58 = sub_1AF449CB8(qword_1F24F38D0);
      *(v49 + ((v58 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v58;
      *(v48[6] + 8 * v58) = v56;
      v59 = (v48[7] + 16 * v58);
      *v59 = v55;
      v59[1] = v57;
      ++v48[2];
      sub_1AF4410A8(v47);
      sub_1AF881148();

      swift_arrayDestroy();
      if (v48[2] && (v60 = sub_1AF449CB8(v76), (v61 & 1) != 0))
      {
        v62 = (v48[7] + 16 * v60);
        v64 = *v62;
        v63 = v62[1];
      }

      else
      {
        v63 = 0xE100000000000000;
        v64 = 63;
      }

      MEMORY[0x1B2718AE0](8250, 0xE200000000000000);

      v65 = v64;
      v66 = sub_1AF9C50D4(v47);
      v68 = v67;

      MEMORY[0x1B2718AE0](v66, v68);

      sub_1AF441114(v47);
      v70 = *(v45 + 16);
      v69 = *(v45 + 24);
      if (v70 >= v69 >> 1)
      {
        sub_1AFC05CE4(v69 > 1, v70 + 1, 1);
      }

      v46 += 2;
      *(v45 + 16) = v70 + 1;
      v71 = v45 + 16 * v70;
      *(v71 + 32) = v65;
      *(v71 + 40) = v63;
      --v44;
    }

    while (v44);

    sub_1AF629AE4();
    sub_1AF488088();
    v72 = sub_1AFDFCD98();
    v74 = v73;

    MEMORY[0x1B2718AE0](v72, v74);

    MEMORY[0x1B2718AE0](0x20657265687720, 0xE700000000000000);
  }

  else
  {
  }

  return 0;
}

uint64_t sub_1AF9711C0(uint64_t a1, uint64_t a2)
{
  result = 0;
  if ((a1 & 0x8000000000000000) == 0 && *(a2 + 16) > a1)
  {
    if (*(a2 + 16 * a1 + 40))
    {
      sub_1AF4486E4();
      v4 = *(sub_1AFDFDE98() + 32);

      return v4;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FlowScope(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for FlowScope(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1AF971314(uint64_t a1)
{
  if (*(a1 + 8) <= 1u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_1AF97132C(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_1AF971360(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 2;
  }

  v3 = sub_1AF0D3F10(a1);
  if (v4)
  {
    return *(*(a2 + 56) + v3);
  }

  else
  {
    return 2;
  }
}

uint64_t sub_1AF9713DC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  a3(a1);
  if (v3)
  {
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AF971430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10)
{

  v47 = a3;
  v48 = a4;
  v17 = sub_1AFDFD1A8();
  v19 = v18;
  MEMORY[0x1B2718AE0]();
  if (!a1)
  {

    MEMORY[0x1B2718AE0](0x3E656E6F6E3CLL, 0xE600000000000000);
    return MEMORY[0x1B2718AE0](10, 0xE100000000000000);
  }

  v20 = *(a7 + 16);
  if (*(v20 + 16) && (v21 = sub_1AF0D3F10(a1), (v22 & 1) != 0) && *(*(v20 + 56) + v21) == 1)
  {

    if (*(*(a8 + 16) + 16))
    {
      sub_1AF0D3F10(a1);
    }
  }

  else
  {
    if (!*(*(a8 + 16) + 16) || (sub_1AF0D3F10(a1), (v23 & 1) == 0) || (a9 & 1) == 0)
    {
      v43 = v17;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v49 = *(a7 + 16);
      v26 = a1;
      v27 = a6;
      *(a7 + 16) = 0x8000000000000000;
      sub_1AF850FDC(1, v26, isUniquelyReferenced_nonNull_native);
      *(a7 + 16) = v49;

      v28 = *(a10 + 16);
      v29 = swift_isUniquelyReferenced_nonNull_native();
      v50 = *(a8 + 16);
      *(a8 + 16) = 0x8000000000000000;
      sub_1AF858584(v28, v26, v29);
      *(a8 + 16) = v50;

      ++*(a10 + 16);
      v46 = v26;
      v45 = sub_1AF97228C();
      v30 = *(v45 + 16);
      if (v30)
      {
        MEMORY[0x1B2718AE0](40, 0xE100000000000000);
      }

      if (a9)
      {
        v31 = sub_1AFDFEA08();
        MEMORY[0x1B2718AE0](v31);

        MEMORY[0x1B2718AE0](93, 0xE100000000000000);
        MEMORY[0x1B2718AE0](91, 0xE100000000000000);
      }

      v44 = sub_1AF9703D8();
      v33 = v32;

      MEMORY[0x1B2718AE0](v44, v33);

      v34 = sub_1AFDFCF88();
      v36 = HIBYTE(v35) & 0xF;
      if ((v35 & 0x2000000000000000) == 0)
      {
        v36 = v34 & 0xFFFFFFFFFFFFLL;
      }

      if (v36)
      {
        MEMORY[0x1B2718AE0]();

        MEMORY[0x1B2718AE0](32, 0xE100000000000000);
      }

      if (v30)
      {
        MEMORY[0x1B2718AE0](10, 0xE100000000000000);
        v37 = (v45 + 40);
        do
        {
          v39 = *(v37 - 1);
          if (v39)
          {
            v38 = *v37;
            swift_retain_n();
          }

          else
          {
            v38 = 0;
          }

          sub_1AF971430(v39, v38, v47 + 1, v48, a5, v27, a7, a8, a9 & 1, a10);

          v37 += 2;
          --v30;
        }

        while (v30);

        MEMORY[0x1B2718AE0](41, 0xE100000000000000);
        MEMORY[0x1B2718AE0](v43, v19);
      }

      else
      {
      }

      v40 = swift_isUniquelyReferenced_nonNull_native();
      v51 = *(a7 + 16);
      *(a7 + 16) = 0x8000000000000000;
      sub_1AF850FDC(0, v46, v40);
      *(a7 + 16) = v51;

      goto LABEL_30;
    }
  }

  v41 = sub_1AFDFEA08();
  MEMORY[0x1B2718AE0](v41);

  MEMORY[0x1B2718AE0](93, 0xE100000000000000);
  MEMORY[0x1B2718AE0](91, 0xE100000000000000);

LABEL_30:
  v42 = sub_1AFDFEA08();
  MEMORY[0x1B2718AE0](v42);

  MEMORY[0x1B2718AE0](10, 0xE100000000000000);
  MEMORY[0x1B2718AE0](46, 0xE100000000000000);
}

uint64_t sub_1AF9719BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10)
{

  v45 = a3;
  v46 = a4;
  v17 = sub_1AFDFD1A8();
  v19 = v18;
  MEMORY[0x1B2718AE0]();
  if (!a1)
  {

    MEMORY[0x1B2718AE0](0x3E656E6F6E3CLL, 0xE600000000000000);
    return MEMORY[0x1B2718AE0](10, 0xE100000000000000);
  }

  v20 = *(a7 + 16);
  v44 = a1;
  if (*(v20 + 16) && (v21 = sub_1AF0D3F10(a1), (v22 & 1) != 0) && *(*(v20 + 56) + v21) == 1)
  {

    if (*(*(a8 + 16) + 16))
    {
      sub_1AF0D3F10(a1);
    }

    v40 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v40);

    MEMORY[0x1B2718AE0](93, 0xE100000000000000);
    MEMORY[0x1B2718AE0](91, 0xE100000000000000);
  }

  else
  {
    if (!*(*(a8 + 16) + 16) || (sub_1AF0D3F10(a1), (v23 & 1) == 0) || (a9 & 1) == 0)
    {
      v42 = v19;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v47 = *(a7 + 16);
      *(a7 + 16) = 0x8000000000000000;
      sub_1AF850FDC(1, a1, isUniquelyReferenced_nonNull_native);
      *(a7 + 16) = v47;

      v27 = *(a10 + 16);
      v28 = swift_isUniquelyReferenced_nonNull_native();
      v48 = *(a8 + 16);
      *(a8 + 16) = 0x8000000000000000;
      sub_1AF858584(v27, v44, v28);
      *(a8 + 16) = v48;

      ++*(a10 + 16);
      v43 = sub_1AF971F68();
      v29 = *(v43 + 16);
      if (v29)
      {
        MEMORY[0x1B2718AE0](40, 0xE100000000000000);
      }

      if (a9)
      {
        v30 = sub_1AFDFEA08();
        MEMORY[0x1B2718AE0](v30);

        MEMORY[0x1B2718AE0](93, 0xE100000000000000);
        MEMORY[0x1B2718AE0](91, 0xE100000000000000);
      }

      v31 = sub_1AF9703D8();
      MEMORY[0x1B2718AE0](v31);

      v32 = sub_1AFDFCF88();
      v34 = HIBYTE(v33) & 0xF;
      if ((v33 & 0x2000000000000000) == 0)
      {
        v34 = v32 & 0xFFFFFFFFFFFFLL;
      }

      if (v34)
      {
        MEMORY[0x1B2718AE0]();

        MEMORY[0x1B2718AE0](32, 0xE100000000000000);
      }

      if (v29)
      {
        v35 = a6;
        MEMORY[0x1B2718AE0](10, 0xE100000000000000);
        v36 = (v43 + 40);
        do
        {
          v38 = *(v36 - 1);
          if (v38)
          {
            v37 = *v36;
            swift_retain_n();
          }

          else
          {
            v37 = 0;
          }

          sub_1AF9719BC(v38, v37, v45 + 1, v46, a5, v35, a7, a8, a9 & 1, a10);

          v36 += 2;
          --v29;
        }

        while (v29);

        MEMORY[0x1B2718AE0](41, 0xE100000000000000);
        MEMORY[0x1B2718AE0](v17, v42);
      }

      else
      {
      }

      v39 = swift_isUniquelyReferenced_nonNull_native();
      v49 = *(a7 + 16);
      *(a7 + 16) = 0x8000000000000000;
      sub_1AF850FDC(0, v44, v39);
      *(a7 + 16) = v49;

      goto LABEL_31;
    }

    v24 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v24);

    MEMORY[0x1B2718AE0](93, 0xE100000000000000);
    MEMORY[0x1B2718AE0](91, 0xE100000000000000);
  }

LABEL_31:
  v41 = sub_1AFDFEA08();
  MEMORY[0x1B2718AE0](v41);

  MEMORY[0x1B2718AE0](10, 0xE100000000000000);
  MEMORY[0x1B2718AE0](46, 0xE100000000000000);
}

uint64_t sub_1AF971F68()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v12 = MEMORY[0x1E69E7CC0];

    sub_1AFC05E2C(0, v2, 0);
    v4 = 0;
    v3 = v12;
    v5 = *(v12 + 16);
    v6 = 16 * v5;
    do
    {
      v7 = *(v1 + v4 + 32);
      v8 = *(v1 + v4 + 40);
      v9 = *(v12 + 24);

      if (v5 >= v9 >> 1)
      {
        sub_1AFC05E2C(v9 > 1, v5 + 1, 1);
      }

      *(v12 + 16) = v5 + 1;
      v10 = v12 + v6 + v4;
      *(v10 + 32) = v7;
      *(v10 + 40) = v8;
      v4 += 16;
      ++v5;
      --v2;
    }

    while (v2);
  }

  return v3;
}

uint64_t sub_1AF972064(uint64_t a1)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v14 = MEMORY[0x1E69E7CC0];
    sub_1AFC05E7C(0, v3, 0);
    v4 = v14;
    v5 = *(v14 + 16);
    v6 = 16 * v5;
    v7 = (a1 + 40);
    do
    {
      v8 = *(v7 - 1);
      v9 = *v7;
      v10 = *(v14 + 24);

      if (v5 >= v10 >> 1)
      {
        sub_1AFC05E7C(v10 > 1, v5 + 1, 1);
      }

      v7 += 2;
      *(v14 + 16) = v5 + 1;
      v11 = v14 + v6;
      *(v11 + 32) = v8;
      *(v11 + 40) = v9;
      v6 += 16;
      ++v5;
      --v3;
    }

    while (v3);

    v1 = v13;
  }

  else
  {

    v4 = MEMORY[0x1E69E7CC0];
  }

  *(v1 + 16) = v4;
}

uint64_t sub_1AF972188()
{
  v1 = *(*v0 + 112);

  return v1(v2);
}

uint64_t sub_1AF972260@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1AF972188();
  *a1 = result;
  return result;
}

uint64_t sub_1AF97228C()
{
  v1 = v0;
  (*(**(v0 + OBJC_IVAR____TtC3VFX13AuthoringNode_raw) + 152))(v18);
  v2 = v18[0];
  v24 = v18[0];
  v23 = v18[1];
  sub_1AF9121F8(&v23, &qword_1EB638968, &type metadata for TypeConstraint);
  v22 = v18[2];
  sub_1AF9121F8(&v22, &qword_1EB638968, &type metadata for TypeConstraint);
  v21 = v18[3];
  sub_1AF91219C(&v21);
  v20 = v18[4];
  sub_1AF91219C(&v20);
  v19 = v18[5];
  sub_1AF9121F8(&v19, &qword_1EB638978, &type metadata for AnyValue);
  v3 = *(v2 + 16);
  sub_1AF9121F8(&v24, &qword_1EB638968, &type metadata for TypeConstraint);
  v4 = OBJC_IVAR____TtC3VFX13AuthoringNode_inputs;
  if (*(*(v0 + OBJC_IVAR____TtC3VFX13AuthoringNode_inputs) + 16) <= v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = *(*(v0 + OBJC_IVAR____TtC3VFX13AuthoringNode_inputs) + 16);
  }

  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v17 = MEMORY[0x1E69E7CC0];
    sub_1AFC05D98(0, v5, 0);
    v7 = 0;
    v8 = 0;
    v6 = v17;
    while (1)
    {
      v9 = *(v1 + v4);
      if (v8 >= *(v9 + 16))
      {
        break;
      }

      v10 = v9 + v7;
      v11 = *(v10 + 32);
      if (!v11)
      {
        goto LABEL_10;
      }

      v12 = *(v10 + 40);

LABEL_11:
      v14 = *(v17 + 16);
      v13 = *(v17 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_1AFC05D98(v13 > 1, v14 + 1, 1);
      }

      ++v8;
      *(v17 + 16) = v14 + 1;
      v15 = v17 + 16 * v14;
      *(v15 + 32) = v11;
      *(v15 + 40) = v12;
      v7 += 16;
      if (v5 == v8)
      {
        return v6;
      }
    }

    v11 = 0;
LABEL_10:
    v12 = 0;
    goto LABEL_11;
  }

  return v6;
}

uint64_t sub_1AF97247C(uint64_t a1)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v14 = MEMORY[0x1E69E7CC0];
    sub_1AFC05D04(0, v3, 0);
    v4 = v14;
    v5 = *(v14 + 16);
    v6 = 16 * v5;
    v7 = (a1 + 40);
    do
    {
      v8 = *(v7 - 1);
      if (v8)
      {
        v9 = *v7;
      }

      else
      {
        v9 = 0;
      }

      v10 = *(v14 + 24);

      if (v5 >= v10 >> 1)
      {
        sub_1AFC05D04(v10 > 1, v5 + 1, 1);
      }

      v7 += 2;
      *(v14 + 16) = v5 + 1;
      v11 = v14 + v6;
      *(v11 + 32) = v8;
      *(v11 + 40) = v9;
      v6 += 16;
      ++v5;
      --v3;
    }

    while (v3);

    v1 = v13;
  }

  else
  {

    v4 = MEMORY[0x1E69E7CC0];
  }

  *(v1 + OBJC_IVAR____TtC3VFX13AuthoringNode_inputs) = v4;
}

uint64_t sub_1AF9725C0@<X0>(uint64_t *a1@<X2>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *a1;
  v6 = sub_1AFDFC318();
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, v4 + v5, v6);
}

uint64_t sub_1AF972698@<X0>(uint64_t *a1@<X8>)
{
  result = (*(**v1 + 296))(1);
  *a1 = result;
  return result;
}

uint64_t sub_1AF9727BC@<X0>(uint64_t *a1@<X8>)
{
  v3 = swift_allocObject();
  v4 = v3;
  *(v3 + 16) = 0;
  v5 = OBJC_IVAR____TtC3VFX10_ArrayNode_count;
  v6 = *(v1 + OBJC_IVAR____TtC3VFX10_ArrayNode_count);
  v7 = MEMORY[0x1E69E7CC0];
  if (v6 > 0)
  {
    v8 = sub_1AFDFD488();
    *(v8 + 16) = v6;
    v9 = v4 | 0x4000000000000000;
    *(v8 + 32) = v4 | 0x4000000000000000;
    v10 = v8 + 32;
    if (v6 == 1)
    {
LABEL_8:

      goto LABEL_9;
    }

LABEL_6:
    v11 = v6 - 1;
    v12 = (v10 + 8);
    do
    {
      *v12++ = v9;

      --v11;
    }

    while (v11);
    goto LABEL_8;
  }

  v8 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v9 = v3 | 0x4000000000000000;
    *(MEMORY[0x1E69E7CC0] + 32) = v3 | 0x4000000000000000;
    v10 = v8 + 32;
    goto LABEL_6;
  }

LABEL_9:

  sub_1AF974834(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1AFE431C0;
  v14 = swift_allocObject();
  *(v14 + 16) = *(v1 + v5);
  result = swift_allocObject();
  *(result + 16) = 0;
  *(v14 + 24) = result | 0x4000000000000000;
  *(v13 + 32) = v14;
  *a1 = v8;
  a1[1] = v13;
  a1[2] = &unk_1F24EFC70;
  a1[3] = v7;
  a1[4] = v7;
  a1[5] = v7;
  return result;
}

uint64_t sub_1AF9729F4(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  sub_1AF441150(a1, v2);
  v5 = *(v1 + OBJC_IVAR____TtC3VFX10_ArrayNode_count);
  return sub_1AF974C50(&v5, v2, MEMORY[0x1E69E6530], v3, MEMORY[0x1E69E6538]);
}

void *sub_1AF972A6C(void *a1)
{
  sub_1AF441150(a1, a1[3]);
  result = sub_1AF974940();
  if (!v2)
  {
    *(v1 + OBJC_IVAR____TtC3VFX10_ArrayNode_count) = v4;
  }

  return result;
}

uint64_t sub_1AF972AF0()
{
  v1 = *(v0 + OBJC_IVAR____TtC3VFX14TypedArrayNode_elementType);
  sub_1AF442064(v1);
  v2 = sub_1AF90D394(v1);
  v4 = v3;
  sub_1AF445BE4(v1);

  sub_1AF9A0BAC(1, v2, v4);

  v5 = sub_1AFDFDDB8();

  sub_1AF701628(1, v2, v4);

  sub_1AF725990();
  sub_1AFDFD0A8();

  MEMORY[0x1B2718AE0](0x7961727241, 0xE500000000000000);
  return v5;
}

unint64_t sub_1AF972C28@<X0>(uint64_t *a1@<X8>)
{
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtC3VFX14TypedArrayNode_elementType;
  v5 = *(v1 + OBJC_IVAR____TtC3VFX14TypedArrayNode_elementType);
  *(v3 + 16) = v5;
  v6 = OBJC_IVAR____TtC3VFX10_ArrayNode_count;
  v7 = *(v1 + OBJC_IVAR____TtC3VFX10_ArrayNode_count);
  sub_1AF442064(v5);
  v8 = MEMORY[0x1E69E7CC0];
  if (v7 > 0)
  {
    v9 = sub_1AFDFD488();
    *(v9 + 16) = v7;
    v10 = v3 | 0x8000000000000000;
    *(v9 + 32) = v3 | 0x8000000000000000;
    v11 = v9 + 32;
    if (v7 == 1)
    {
LABEL_8:

      goto LABEL_9;
    }

LABEL_6:
    v12 = v7 - 1;
    v13 = (v11 + 8);
    do
    {
      *v13++ = v10;

      --v12;
    }

    while (v12);
    goto LABEL_8;
  }

  v9 = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v10 = v3 | 0x8000000000000000;
    *(MEMORY[0x1E69E7CC0] + 32) = v3 | 0x8000000000000000;
    v11 = v9 + 32;
    goto LABEL_6;
  }

LABEL_9:

  sub_1AF974834(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1AFE431C0;
  v15 = swift_allocObject();
  *(v15 + 16) = *(v1 + v6);
  v16 = swift_allocObject();
  v17 = *(v1 + v4);
  *(v16 + 16) = v17;
  *(v15 + 24) = v16 | 0x8000000000000000;
  *(v14 + 32) = v15;
  result = sub_1AF442064(v17);
  *a1 = v9;
  a1[1] = v14;
  a1[2] = &unk_1F24EF290;
  a1[3] = v8;
  a1[4] = v8;
  a1[5] = v8;
  return result;
}

char *sub_1AF972DD0(char *a1)
{
  v2 = swift_allocObject();
  v3 = *&a1[OBJC_IVAR____TtC3VFX14TypedArrayNode_elementType];
  *(v2 + OBJC_IVAR____TtC3VFX14TypedArrayNode_elementType) = v3;
  *(v2 + OBJC_IVAR____TtC3VFX10_ArrayNode_count) = *&a1[OBJC_IVAR____TtC3VFX10_ArrayNode_count];
  sub_1AF442064(v3);
  return sub_1AF96FD00(a1);
}

uint64_t sub_1AF972E30(void *a1)
{
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF3C8();
  v6 = *(v1 + OBJC_IVAR____TtC3VFX14TypedArrayNode_elementType);
  sub_1AF448018(v4, v5);
  sub_1AF9748D8();
  sub_1AFDFEC38();
  if (!v2)
  {
    sub_1AF448018(v4, v5);
    sub_1AFDFEC28();
  }

  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v4);
}

void *sub_1AF972F20(void *a1)
{
  sub_1AF441150(a1, a1[3]);
  result = sub_1AFDFF388();
  if (!v2)
  {
    sub_1AF448018(v5, v6);
    sub_1AF974884();
    sub_1AFDFEAD8();
    v4 = *(v1 + OBJC_IVAR____TtC3VFX14TypedArrayNode_elementType);
    *(v1 + OBJC_IVAR____TtC3VFX14TypedArrayNode_elementType) = v7;
    sub_1AF445BE4(v4);
    sub_1AF448018(v5, v6);
    *(v1 + OBJC_IVAR____TtC3VFX10_ArrayNode_count) = sub_1AFDFEAB8();
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v5);
  }

  return result;
}

uint64_t sub_1AF973040()
{

  sub_1AF919DAC(*(v0 + 24), *(v0 + 32));
  v1 = OBJC_IVAR____TtC3VFX4Node_authoringID;
  v2 = sub_1AFDFC318();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1AF445BE4(*(v0 + OBJC_IVAR____TtC3VFX14TypedArrayNode_elementType));

  return swift_deallocClassInstance();
}

uint64_t sub_1AF9731B4@<X0>(uint64_t *a1@<X8>)
{
  sub_1AF974834(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1AFE431C0;
  v3 = swift_allocObject();
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v3 + 16) = v4 | 0x4000000000000000;
  *(v2 + 32) = v3 | 0x2000000000000000;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1AFE431C0;
  result = swift_allocObject();
  *(result + 16) = 0xC000000000000030;
  *(v5 + 32) = result | 0x8000000000000000;
  *a1 = v2;
  a1[1] = v5;
  v7 = MEMORY[0x1E69E7CC0];
  a1[2] = &unk_1F24F15C8;
  a1[3] = v7;
  a1[4] = v7;
  a1[5] = v7;
  return result;
}

uint64_t sub_1AF97331C@<X0>(uint64_t *a1@<X8>)
{
  sub_1AF974834(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1AFE4C620;
  v3 = swift_allocObject();
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v3 + 16) = v4 | 0x4000000000000000;
  *(v2 + 32) = v3 | 0x2000000000000000;
  v5 = swift_allocObject();
  *(v5 + 16) = 0xC000000000000038;
  *(v2 + 40) = v5 | 0x8000000000000000;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1AFE431C0;
  result = swift_allocObject();
  *(result + 16) = 0;
  *(v6 + 32) = result | 0x4000000000000000;
  *a1 = v2;
  a1[1] = v6;
  a1[2] = &unk_1F24F1FB0;
  a1[3] = &unk_1F24F1F70;
  v8 = MEMORY[0x1E69E7CC0];
  a1[4] = MEMORY[0x1E69E7CC0];
  a1[5] = v8;
  return result;
}

uint64_t sub_1AF97348C(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  if (a4 == 3)
  {
    v7 = a1;

    v4 = 0x6874676E656C2ELL;
LABEL_7:
    v5 = 0xE700000000000000;
    goto LABEL_8;
  }

  if (a3 >> 61 == 3)
  {
    v7 = a1;

    v4 = 0x746E756F632ELL;
    v5 = 0xE600000000000000;
LABEL_8:
    MEMORY[0x1B2718AE0](v4, v5);
    return v7;
  }

  if (a3 >> 61 == 2)
  {
    v7 = a1;

    v4 = 0x2928657A69732ELL;
    goto LABEL_7;
  }

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AF97358C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  if (a6 == 3)
  {
    v21 = a1;

    v8 = 91;
    v9 = 0xE100000000000000;
LABEL_5:
    MEMORY[0x1B2718AE0](v8, v9);
    MEMORY[0x1B2718AE0](a3, a4);
    MEMORY[0x1B2718AE0](93, 0xE100000000000000);
    return v21;
  }

  if (a5 >> 61 == 2)
  {
    v21 = a1;

    v8 = 0x5B79617272612ELL;
    v9 = 0xE700000000000000;
    goto LABEL_5;
  }

  if (a5 >> 61 == 3)
  {
    v13 = *((a5 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v14 = 0xE000000000000000;
    sub_1AF442064(v13);
    sub_1AFDFE218();

    v21 = 10280;
    if (a6 == 2)
    {
      v15 = 0x20646165726874;
    }

    else
    {
      v15 = 0;
    }

    if (a6 == 2)
    {
      v14 = 0xE700000000000000;
    }

    MEMORY[0x1B2718AE0](v15, v14);

    v16 = sub_1AF937FF8(a6, v13);
    if ((~v16 & 0xF000000000000007) == 0)
    {
      sub_1AF442064(v13);
      v16 = v13;
    }

    v17 = sub_1AF94B594(a6, v16);
    v19 = v18;
    sub_1AF445BE4(v16);
    MEMORY[0x1B2718AE0](v17, v19);

    MEMORY[0x1B2718AE0](10538, 0xE200000000000000);
    MEMORY[0x1B2718AE0](a1, a2);
    MEMORY[0x1B2718AE0](0x7265746E696F702ELL, 0xEA00000000005B29);
    MEMORY[0x1B2718AE0](a3, a4);
    MEMORY[0x1B2718AE0](93, 0xE100000000000000);
    sub_1AF445BE4(v13);
    return v21;
  }

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AF9737E8()
{
  type metadata accessor for TypedArrayNode(0);
  v0 = swift_dynamicCastClass();
  if (!v0)
  {
    return 15;
  }

  v1 = *(v0 + OBJC_IVAR____TtC3VFX14TypedArrayNode_elementType);
  sub_1AF442064(v1);
  if (sub_1AF90DD74(2, v1))
  {
    v2 = 4;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2 & 0xFFFFFFFE | sub_1AF90DD74(0, v1);
  if (sub_1AF90DD74(1, v1))
  {
    v4 = v3 | 2;
  }

  else
  {
    v4 = v3;
  }

  v5 = sub_1AF90DD74(3, v1);
  sub_1AF445BE4(v1);
  if (v5)
  {
    return v4 | 8;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_1AF9738A4(uint64_t a1)
{
  v1 = *(*(a1 + 16) + 16);
  if (v1)
  {
    v2 = 0;
    v3 = MEMORY[0x1E69E7CC0];
    do
    {
      v4 = sub_1AFDFEA08();
      MEMORY[0x1B2718AE0](v4);

      MEMORY[0x1B2718AE0](44, 0xE100000000000000);
      sub_1AF974834(0, &qword_1EB638390, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E6F90]);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1AFE431C0;
      *(inited + 32) = 37;
      *(inited + 40) = 0xE100000000000000;
      sub_1AF441DD8(0);
      *(inited + 48) = 0;
      *(inited + 56) = 0;
      v6 = swift_initStackObject();
      *(v6 + 16) = xmmword_1AFE431C0;
      *(v6 + 32) = inited;
      v7 = v6 + 32;
      v8 = sub_1AFA56CA0();
      swift_setDeallocating();
      sub_1AF974118(v7);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_1AF426BC8(0, v3[2] + 1, 1, v3);
      }

      v10 = v3[2];
      v9 = v3[3];
      if (v10 >= v9 >> 1)
      {
        v3 = sub_1AF426BC8(v9 > 1, v10 + 1, 1, v3);
      }

      ++v2;
      v3[2] = v10 + 1;
      v3[v10 + 4] = v8;
    }

    while (v1 != v2);
  }

  v11 = sub_1AFA56CA0();

  sub_1AF441DD8(0);
  v12 = swift_initStackObject();
  *(v12 + 16) = xmmword_1AFE431C0;
  *(v12 + 32) = v11;
  v13 = v12 + 32;
  v14 = sub_1AFA56CA0();
  swift_setDeallocating();
  sub_1AF974118(v13);
  return v14;
}

uint64_t sub_1AF973AC4(unsigned __int8 *a1)
{
  v2 = sub_1AF973D1C(*a1, v1);
  v3 = sub_1AFA5413C(v2);

  return v3;
}

uint64_t sub_1AF973B1C(uint64_t a1, unint64_t a2)
{
  v2 = sub_1AF97358C(12325, 0xE200000000000000, 12581, 0xE200000000000000, a2, a1);
  MEMORY[0x1B2718AE0](v2);

  MEMORY[0x1B2718AE0](59, 0xE100000000000000);
  sub_1AF974834(0, &qword_1EB638390, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 32) = 0x203D20307225;
  *(inited + 40) = 0xE600000000000000;
  sub_1AF441DD8(0);
  *(inited + 48) = 0;
  *(inited + 56) = 0;
  v4 = swift_initStackObject();
  *(v4 + 16) = xmmword_1AFE431C0;
  *(v4 + 32) = inited;
  v5 = v4 + 32;
  v6 = sub_1AFA56CA0();
  swift_setDeallocating();
  sub_1AF974118(v5);
  return v6;
}

uint64_t sub_1AF973C2C()
{
  MEMORY[0x1B2718AE0]();
  MEMORY[0x1B2718AE0](59, 0xE100000000000000);
  sub_1AF974834(0, &qword_1EB638390, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 32) = 0x203D20307225;
  *(inited + 40) = 0xE600000000000000;
  sub_1AF441DD8(0);
  *(inited + 48) = 0;
  *(inited + 56) = 0;
  v1 = swift_initStackObject();
  *(v1 + 16) = xmmword_1AFE431C0;
  *(v1 + 32) = inited;
  v2 = v1 + 32;
  v3 = sub_1AFA56CA0();
  swift_setDeallocating();
  sub_1AF974118(v2);
  return v3;
}

uint64_t sub_1AF973D1C(uint64_t a1, uint64_t a2)
{
  if (a1 == 3)
  {
    v3 = sub_1AF9738A4(a2);
    sub_1AF441DD8(0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1AFE431C0;
    *(inited + 32) = v3;
    v5 = inited + 32;
    v6 = sub_1AFA56CA0();
    swift_setDeallocating();
    sub_1AF974118(v5);
    sub_1AFA5413C(v6);

    v7 = sub_1AFAF888C(4);
    v9 = v8;

    sub_1AF974834(0, &qword_1EB638390, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E6F90]);
    v10 = swift_initStackObject();
    *(v10 + 16) = xmmword_1AFE431C0;
    *(v10 + 32) = v7;
    *(v10 + 40) = v9;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    v11 = swift_initStackObject();
    *(v11 + 16) = xmmword_1AFE4C680;
    *(v11 + 32) = &unk_1F2504FE0;
    v12 = &unk_1F2505020;
  }

  else
  {
    sub_1AFDFE218();

    v14 = *(*(a2 + 24) + 32);
    sub_1AF448650(*(a2 + 24), *(a2 + 32));
    sub_1AF442064(v14);

    v15 = sub_1AF937FF8(a1, v14);
    if ((~v15 & 0xF000000000000007) == 0)
    {
      sub_1AF442064(v14);
      v15 = v14;
    }

    v16 = sub_1AF94B594(a1, v15);
    v18 = v17;
    sub_1AF445BE4(v15);
    sub_1AF445BE4(v14);
    MEMORY[0x1B2718AE0](v16, v18);

    MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
    v19 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v19);

    MEMORY[0x1B2718AE0](8069182, 0xE300000000000000);
    sub_1AF974834(0, &qword_1EB638390, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E6F90]);
    v20 = swift_initStackObject();
    *(v20 + 16) = xmmword_1AFE431C0;
    *(v20 + 32) = 0xD00000000000001CLL;
    *(v20 + 40) = 0x80000001AFF3C1D0;
    *(v20 + 48) = 0;
    *(v20 + 56) = 0;
    v21 = sub_1AF9738A4(a2);
    sub_1AFA5413C(v21);

    v22 = sub_1AFAF888C(4);
    v24 = v23;

    v10 = swift_initStackObject();
    *(v10 + 16) = xmmword_1AFE431C0;
    *(v10 + 32) = v22;
    *(v10 + 40) = v24;
    sub_1AF441DD8(0);
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    v11 = swift_initStackObject();
    *(v11 + 16) = xmmword_1AFE4C680;
    *(v11 + 32) = v20;
    v12 = &unk_1F2505060;
  }

  *(v11 + 40) = v10;
  *(v11 + 48) = v12;
  v25 = sub_1AFA56CA0();
  swift_setDeallocating();
  sub_1AF974834(0, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
  swift_arrayDestroy();
  sub_1AF441DD8(0);
  v26 = swift_initStackObject();
  *(v26 + 16) = xmmword_1AFE431C0;
  *(v26 + 32) = v25;
  v27 = v26 + 32;
  v28 = sub_1AFA56CA0();
  swift_setDeallocating();
  sub_1AF974118(v27);
  return v28;
}

uint64_t sub_1AF974118(uint64_t a1)
{
  sub_1AF974834(0, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AF974198(char a1)
{
  if (a1 == 3)
  {
    return 0x74676E656C2E3025;
  }

  v3 = *(v1 + 24);
  v4 = *(v3 + 32);
  sub_1AF448650(v3, *(v1 + 32));
  sub_1AF442064(v4);

  sub_1AF445BE4(v4);
  if ((v4 & 0xE000000000000000) == 0x4000000000000000)
  {
    return 0x28657A69732E3025;
  }

  else
  {
    return 0x746E756F632E3025;
  }
}

uint64_t sub_1AF974254(uint64_t a1)
{
  v3 = *(*(v1 + 32) + 32);
  sub_1AF448650(*(v1 + 24), *(v1 + 32));
  sub_1AF442064(v3);

  v4 = sub_1AF937FF8(a1, v3);
  if ((~v4 & 0xF000000000000007) != 0)
  {
    v5 = v4;
    sub_1AF445BE4(v3);
    v3 = v5;
  }

  v6 = *(v1 + 24);
  v7 = *(v6 + 32);
  sub_1AF448650(v6, *(v1 + 32));
  sub_1AF442064(v7);

  sub_1AF90EDE8(v3, &v53, 0.0);
  sub_1AF92F69C(v3, &v53, a1);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v53);
  v8 = sub_1AF937FF8(a1, v3);
  if ((~v8 & 0xF000000000000007) == 0)
  {
    sub_1AF442064(v3);
    v8 = v3;
  }

  if (a1 == 3)
  {
    sub_1AF445BE4(v8);
    v9 = 0xE800000000000000;
    v10 = 0x3B3072252074656CLL;
  }

  else
  {
    v53 = 0;
    v54 = 0xE000000000000000;
    v11 = sub_1AF937FF8(a1, v8);
    if ((~v11 & 0xF000000000000007) == 0)
    {
      sub_1AF442064(v8);
      v11 = v8;
    }

    v12 = sub_1AF94B594(a1, v11);
    v14 = v13;
    sub_1AF445BE4(v11);
    MEMORY[0x1B2718AE0](v12, v14);

    MEMORY[0x1B2718AE0](32, 0xE100000000000000);
    MEMORY[0x1B2718AE0](3174949, 0xE300000000000000);
    MEMORY[0x1B2718AE0](59, 0xE100000000000000);
    sub_1AF445BE4(v8);
    v10 = v53;
    v9 = v54;
  }

  sub_1AF974834(0, &qword_1EB638390, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 32) = v10;
  *(inited + 40) = v9;
  *(inited + 48) = 0;
  *(inited + 56) = 0;
  v16 = sub_1AF97348C(12325, 0xE200000000000000, v7, a1);
  v18 = v17;
  if (a1 == 3)
  {
    v19 = 0;
    v20 = 0xE000000000000000;
  }

  else
  {
    v53 = 40;
    v54 = 0xE100000000000000;
    v21 = sub_1AF937FF8(a1, 0xC000000000000038);
    v22 = v21;
    if ((~v21 & 0xF000000000000007) != 0)
    {
      v23 = v21;
    }

    else
    {
      v23 = 0xC000000000000038;
    }

    v24 = sub_1AF94B594(a1, v23);
    v26 = v25;
    sub_1AF914F8C(v22);
    MEMORY[0x1B2718AE0](v24, v26);

    MEMORY[0x1B2718AE0](41, 0xE100000000000000);
    v19 = v53;
    v20 = v54;
  }

  v53 = 0;
  v54 = 0xE000000000000000;
  sub_1AFDFE218();

  v53 = 0xD000000000000010;
  v54 = 0x80000001AFF3C1F0;
  MEMORY[0x1B2718AE0](v19, v20);

  MEMORY[0x1B2718AE0](v16, v18);

  v27 = v53;
  v28 = v54;
  v53 = 673212009;
  v54 = 0xE400000000000000;
  MEMORY[0x1B2718AE0](v27, v28);

  MEMORY[0x1B2718AE0](175841321, 0xE400000000000000);
  v29 = sub_1AF973B1C(a1, v7);
  sub_1AF441DD8(0);
  v30 = swift_initStackObject();
  *(v30 + 16) = xmmword_1AFE431C0;
  *(v30 + 32) = v29;
  v31 = v30 + 32;
  v32 = sub_1AFA56CA0();
  swift_setDeallocating();
  sub_1AF974118(v31);
  sub_1AFA5413C(v32);

  v33 = sub_1AFAF888C(4);
  v35 = v34;

  MEMORY[0x1B2718AE0](v33, v35);

  MEMORY[0x1B2718AE0](125, 0xE100000000000000);
  v36 = sub_1AF973C2C();

  v37 = swift_initStackObject();
  *(v37 + 16) = xmmword_1AFE431C0;
  *(v37 + 32) = v36;
  v38 = v37 + 32;

  v39 = sub_1AFA56CA0();
  swift_setDeallocating();
  sub_1AF974118(v38);
  sub_1AFA5413C(v39);

  v40 = sub_1AFAF888C(4);
  v42 = v41;

  v43 = *(v36 + 16);

  if (v43)
  {
    MEMORY[0x1B2718AE0](0xA7B2065736C6520, 0xE800000000000000);
    MEMORY[0x1B2718AE0](v40, v42);

    v44 = 2685;
    v45 = 0xE200000000000000;
  }

  else
  {

    v44 = 10;
    v45 = 0xE100000000000000;
  }

  MEMORY[0x1B2718AE0](v44, v45);
  v46 = v53;
  v47 = v54;
  v48 = swift_initStackObject();
  *(v48 + 16) = xmmword_1AFE431C0;
  *(v48 + 32) = v46;
  *(v48 + 40) = v47;
  *(v48 + 48) = 0;
  *(v48 + 56) = 0;
  v49 = swift_initStackObject();
  *(v49 + 16) = xmmword_1AFE4C620;
  *(v49 + 32) = inited;
  *(v49 + 40) = v48;
  v50 = sub_1AFA56CA0();
  swift_setDeallocating();
  sub_1AF974834(0, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
  swift_arrayDestroy();
  v51 = sub_1AFA5413C(v50);

  sub_1AF445BE4(v7);
  sub_1AF445BE4(v3);
  return v51;
}

void sub_1AF974834(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1AF974884()
{
  result = qword_1EB631258;
  if (!qword_1EB631258)
  {
    result = swift_getWitnessTable(byte_1AFE85208, &type metadata for AnyType, v0, v1);
    atomic_store(result, &qword_1EB631258);
  }

  return result;
}

unint64_t sub_1AF9748D8()
{
  result = qword_1EB6408F8;
  if (!qword_1EB6408F8)
  {
    result = swift_getWitnessTable(aY9, &type metadata for AnyType, v0, v1);
    atomic_store(result, &qword_1EB6408F8);
  }

  return result;
}

void *sub_1AF974940()
{
  result = sub_1AFDFF398();
  if (!v5)
  {
    sub_1AF441150(v7, v7[3]);
    sub_1AFDFEE88();
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v7);
  }

  return result;
}

BOOL sub_1AF9749E4()
{
  (*(*v0 + 152))(v7);
  v1 = v7[0];
  v12 = v7[1];
  v13 = v7[0];
  v2 = MEMORY[0x1E69E62F8];
  sub_1AF97FA74(&v12, &qword_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8]);
  v11 = v7[2];
  sub_1AF97FA74(&v11, &qword_1EB638968, &type metadata for TypeConstraint, v2);
  v10 = v7[3];
  sub_1AF91219C(&v10);
  v9 = v7[4];
  sub_1AF91219C(&v9);
  v8 = v7[5];
  sub_1AF97FA74(&v8, &qword_1EB638978, &type metadata for AnyValue, v2);
  if (*(v1 + 16))
  {
    v3 = *(v1 + 32);
    sub_1AF4410A8(v3);
    sub_1AF97FA74(&v13, &qword_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8]);
    v4 = swift_allocObject();
    *(v4 + 16) = 0xC000000000000008;
    v5 = sub_1AF9C5694(v3, v4 | 0x8000000000000000);

    sub_1AF441114(v3);
  }

  else
  {
    sub_1AF97FA74(&v13, &qword_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8]);
    return 0;
  }

  return v5;
}

void *sub_1AF974B94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  sub_1AF914FF0(a1, v9);
  v7 = (v6 + OBJC_IVAR____TtC3VFX12ConstantNode_semantic);
  sub_1AF914FF0(v9, v6 + OBJC_IVAR____TtC3VFX12ConstantNode_holder);
  *v7 = a2;
  v7[1] = a3;
  v6[2] = MEMORY[0x1E69E7CC0];
  v6[3] = 0;
  v6[4] = 0;
  sub_1AFDFC308();
  sub_1AF9151B0(a1);
  sub_1AF9151B0(v9);
  return v6;
}

uint64_t sub_1AF974C50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1AFDFF3D8();
  sub_1AF448018(v6, v6[3]);
  sub_1AFDFEF28();
  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v6);
}

BOOL sub_1AF974CEC()
{
  v1 = *(*v0 + 152);
  (v1)(v16);
  v2 = v16[0];
  v33 = v16[1];
  v34 = v16[0];
  v3 = MEMORY[0x1E69E62F8];
  sub_1AF97FA74(&v33, &qword_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8]);
  v32 = v16[2];
  sub_1AF97FA74(&v32, &qword_1EB638968, &type metadata for TypeConstraint, v3);
  v31 = v16[3];
  sub_1AF91219C(&v31);
  v30 = v16[4];
  sub_1AF91219C(&v30);
  v29 = v16[5];
  sub_1AF97FA74(&v29, &qword_1EB638978, &type metadata for AnyValue, v3);
  if (!*(v2 + 16))
  {
    v13 = MEMORY[0x1E69E62F8];
    v14 = &v34;
LABEL_7:
    sub_1AF97FA74(v14, &qword_1EB638968, &type metadata for TypeConstraint, v13);
    return 0;
  }

  v4 = *(v2 + 32);
  sub_1AF4410A8(v4);
  sub_1AF97FA74(&v34, &qword_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8]);
  v5 = swift_allocObject();
  *(v5 + 16) = 0xC000000000000008;
  v6 = sub_1AF9C5694(v4, v5 | 0x8000000000000000);

  v7 = sub_1AF441114(v4);
  if (!v6)
  {
    return 0;
  }

  v1(&v17, v7);
  v8 = v18;
  v27 = v17;
  v28 = v18;
  v9 = MEMORY[0x1E69E62F8];
  sub_1AF97FA74(&v27, &qword_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8]);
  v26 = v19;
  sub_1AF97FA74(&v26, &qword_1EB638968, &type metadata for TypeConstraint, v9);
  v25 = v20;
  sub_1AF91219C(&v25);
  v24 = v21;
  sub_1AF91219C(&v24);
  v23 = v22;
  sub_1AF97FA74(&v23, &qword_1EB638978, &type metadata for AnyValue, v9);
  if (!*(v8 + 16))
  {
    v13 = MEMORY[0x1E69E62F8];
    v14 = &v28;
    goto LABEL_7;
  }

  v10 = *(v8 + 32);
  sub_1AF4410A8(v10);
  sub_1AF97FA74(&v28, &qword_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8]);
  v11 = swift_allocObject();
  *(v11 + 16) = 0xC000000000000008;
  v12 = sub_1AF9C5694(v10, v11 | 0x8000000000000000);

  sub_1AF441114(v10);
  return v12;
}

uint64_t sub_1AF975010()
{
  v1 = *(*v0 + 152);
  (v1)(v15);
  v2 = v15[0];
  v32 = v15[1];
  v33 = v15[0];
  v3 = MEMORY[0x1E69E62F8];
  sub_1AF97FA74(&v32, &qword_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8]);
  v31 = v15[2];
  sub_1AF97FA74(&v31, &qword_1EB638968, &type metadata for TypeConstraint, v3);
  v30 = v15[3];
  sub_1AF91219C(&v30);
  v29 = v15[4];
  sub_1AF91219C(&v29);
  v28 = v15[5];
  sub_1AF97FA74(&v28, &qword_1EB638978, &type metadata for AnyValue, v3);
  if (!*(v2 + 16))
  {
    sub_1AF97FA74(&v33, &qword_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8]);
    goto LABEL_6;
  }

  v4 = *(v2 + 32);
  sub_1AF4410A8(v4);
  sub_1AF97FA74(&v33, &qword_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8]);
  v5 = swift_allocObject();
  *(v5 + 16) = 0xC000000000000008;
  v6 = sub_1AF9C5694(v4, v5 | 0x8000000000000000);

  v7 = sub_1AF441114(v4);
  if (!v6)
  {
LABEL_6:
    v13 = 0;
    return v13 & 1;
  }

  v1(&v16, v7);
  v8 = v17;
  v26 = v16;
  v27 = v17;
  v9 = MEMORY[0x1E69E62F8];
  sub_1AF97FA74(&v26, &qword_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8]);
  v25 = v18;
  sub_1AF97FA74(&v25, &qword_1EB638968, &type metadata for TypeConstraint, v9);
  v24 = v19;
  sub_1AF91219C(&v24);
  v23 = v20;
  sub_1AF91219C(&v23);
  v22 = v21;
  sub_1AF97FA74(&v22, &qword_1EB638978, &type metadata for AnyValue, v9);
  if (*(v8 + 16))
  {
    v10 = *(v8 + 32);
    sub_1AF4410A8(v10);
    sub_1AF97FA74(&v27, &qword_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8]);
    v11 = swift_allocObject();
    *(v11 + 16) = 0xC000000000000008;
    v12 = sub_1AF9C5694(v10, v11 | 0x8000000000000000);

    sub_1AF441114(v10);
    v13 = !v12;
  }

  else
  {
    sub_1AF97FA74(&v27, &qword_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8]);
    v13 = 1;
  }

  return v13 & 1;
}

BOOL sub_1AF975340()
{
  v1 = *(*v0 + 152);
  (v1)(v14);
  v2 = v14[0];
  v31 = v14[1];
  v32 = v14[0];
  v3 = MEMORY[0x1E69E62F8];
  sub_1AF97FA74(&v31, &qword_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8]);
  v30 = v14[2];
  sub_1AF97FA74(&v30, &qword_1EB638968, &type metadata for TypeConstraint, v3);
  v29 = v14[3];
  sub_1AF91219C(&v29);
  v28 = v14[4];
  sub_1AF91219C(&v28);
  v27 = v14[5];
  sub_1AF97FA74(&v27, &qword_1EB638978, &type metadata for AnyValue, v3);
  if (*(v2 + 16))
  {
    v4 = *(v2 + 32);
    sub_1AF4410A8(v4);
    sub_1AF97FA74(&v32, &qword_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8]);
    v5 = swift_allocObject();
    *(v5 + 16) = 0xC000000000000008;
    v6 = sub_1AF9C5694(v4, v5 | 0x8000000000000000);

    v7 = sub_1AF441114(v4);
    if (v6)
    {
      return 0;
    }
  }

  else
  {
    v7 = sub_1AF97FA74(&v32, &qword_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8]);
  }

  v1(&v15, v7);
  v8 = v16;
  v25 = v15;
  v26 = v16;
  v9 = MEMORY[0x1E69E62F8];
  sub_1AF97FA74(&v25, &qword_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8]);
  v24 = v17;
  sub_1AF97FA74(&v24, &qword_1EB638968, &type metadata for TypeConstraint, v9);
  v23 = v18;
  sub_1AF91219C(&v23);
  v22 = v19;
  sub_1AF91219C(&v22);
  v21 = v20;
  sub_1AF97FA74(&v21, &qword_1EB638978, &type metadata for AnyValue, v9);
  if (!*(v8 + 16))
  {
    sub_1AF97FA74(&v26, &qword_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8]);
    sub_1AF445BE4(0xC000000000000008);
    return 0;
  }

  v10 = *(v8 + 32);
  sub_1AF4410A8(v10);
  sub_1AF97FA74(&v26, &qword_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8]);
  v11 = swift_allocObject();
  *(v11 + 16) = 0xC000000000000008;
  v12 = sub_1AF9C5694(v10, v11 | 0x8000000000000000);

  sub_1AF441114(v10);
  return v12;
}

uint64_t sub_1AF975674@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  sub_1AF0D5A54(a1, v14);
  sub_1AF5C5358(0, &qword_1EB641060, &protocol descriptor for EnumMeta);
  if (swift_dynamicCast())
  {
    sub_1AF0FBA54(v12, &v15);
    v4 = v17;
    v5 = sub_1AF441150(&v15, v17);
    a2[4] = v4;
    v6 = sub_1AF585714(a2 + 1);
    (*(*(v4 - 8) + 16))(v6, v5, v4);
    *a2 = 0xC000000000000020;
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v15);
  }

  else
  {
    v13 = 0;
    memset(v12, 0, sizeof(v12));
    sub_1AF97F8A4(v12);
    sub_1AF441150(a1, a1[3]);
    DynamicType = swift_getDynamicType();
    v9 = sub_1AF90DEFC(DynamicType);
    if ((~v9 & 0xF000000000000007) != 0)
    {
      v10 = v9;
      result = sub_1AF0D5A54(a1, (a2 + 1));
      *a2 = v10;
    }

    else
    {
      v15 = 0;
      v16 = 0xE000000000000000;
      sub_1AFDFE218();

      v15 = 0xD000000000000011;
      v16 = 0x80000001AFF2E910;
      v11 = sub_1AFDFF4B8();
      MEMORY[0x1B2718AE0](v11);

      result = sub_1AFDFE518();
      __break(1u);
    }
  }

  return result;
}

void *sub_1AF975844(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v7 = (v6 + OBJC_IVAR____TtC3VFX12ConstantNode_semantic);
  sub_1AF914FF0(a1, v6 + OBJC_IVAR____TtC3VFX12ConstantNode_holder);
  *v7 = a2;
  v7[1] = a3;
  v6[2] = MEMORY[0x1E69E7CC0];
  v6[3] = 0;
  v6[4] = 0;
  sub_1AFDFC308();
  sub_1AF9151B0(a1);
  return v6;
}

uint64_t sub_1AF9759FC()
{
  v1 = *(v0 + OBJC_IVAR____TtC3VFX14NoopReturnNode_type);
  sub_1AF442064(v1);
  v2 = sub_1AF90D394(v1);
  v4 = v3;
  sub_1AF445BE4(v1);
  MEMORY[0x1B2718AE0](v2, v4);

  return 0x75746552706F6F4ELL;
}

unint64_t sub_1AF975A90@<X0>(uint64_t *a1@<X8>)
{
  sub_1AF97FB54(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1AFE431C0;
  v4 = swift_allocObject();
  v5 = *(v1 + OBJC_IVAR____TtC3VFX14NoopReturnNode_type);
  *(v4 + 16) = v5;
  *(v3 + 32) = v4 | 0x8000000000000000;
  result = sub_1AF442064(v5);
  v7 = MEMORY[0x1E69E7CC0];
  *a1 = v3;
  a1[1] = v7;
  a1[2] = &unk_1F24EF0C0;
  a1[3] = v7;
  a1[4] = v7;
  a1[5] = v7;
  return result;
}

uint64_t sub_1AF975C2C@<X0>(uint64_t *a1@<X8>)
{
  sub_1AF97FB54(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1AFE431C0;
  result = swift_allocObject();
  *(result + 16) = 0;
  *(v2 + 32) = result | 0x4000000000000000;
  v4 = MEMORY[0x1E69E7CC0];
  *a1 = v2;
  a1[1] = v4;
  a1[2] = &unk_1F24F04F0;
  a1[3] = v4;
  a1[4] = v4;
  a1[5] = v4;
  return result;
}

uint64_t sub_1AF975D14@<X0>(uint64_t *a1@<X8>)
{
  sub_1AF97FB54(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1AFE4C620;
  v3 = swift_allocObject();
  *(v3 + 16) = 0xC000000000000008;
  *(v2 + 32) = v3 | 0x8000000000000000;
  v4 = swift_allocObject();
  *(v4 + 16) = 0xC000000000000058;
  *(v2 + 40) = v4 | 0x8000000000000000;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1AFE431C0;
  result = swift_allocObject();
  *(result + 16) = 0xC000000000000008;
  *(v5 + 32) = result | 0x8000000000000000;
  *a1 = v2;
  a1[1] = v5;
  v7 = MEMORY[0x1E69E7CC0];
  a1[2] = &unk_1F24EF090;
  a1[3] = v7;
  a1[4] = v7;
  a1[5] = v7;
  return result;
}

uint64_t sub_1AF975EE0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1AF97FB54(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AFE4C620;
  v5 = swift_allocObject();
  *(v5 + 16) = 0xC000000000000008;
  *(v4 + 32) = v5 | 0x8000000000000000;
  *(v4 + 40) = 0xA000000000000000;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1AFE431C0;
  result = swift_allocObject();
  *(result + 16) = 0xC000000000000008;
  *(v6 + 32) = result | 0x8000000000000000;
  *a2 = v4;
  a2[1] = v6;
  v8 = MEMORY[0x1E69E7CC0];
  a2[2] = a1;
  a2[3] = v8;
  a2[4] = v8;
  a2[5] = v8;
  return result;
}

uint64_t sub_1AF976008()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR____TtC3VFX12ConstantNode_semantic);
  v3 = *(v0 + OBJC_IVAR____TtC3VFX12ConstantNode_semantic);
  sub_1AFDFF288();
  v4 = sub_1AF6ADC50(v3);
  MEMORY[0x1B271ACB0](v4);
  v5 = sub_1AFDFF2F8();
  sub_1AFDFF288();
  MEMORY[0x1B271ACB0](0);
  if (v5 == sub_1AFDFF2F8())
  {
    v6 = *(v1 + OBJC_IVAR____TtC3VFX12ConstantNode_holder);
    sub_1AF442064(v6);
    v7 = sub_1AF90D394(v6);
    v9 = v8;
    sub_1AF445BE4(v6);

    sub_1AF9A0BAC(1, v7, v9);

    v10 = sub_1AFDFDDB8();

    sub_1AF701628(1, v7, v9);

    v16 = v10;
  }

  else
  {
    v11 = sub_1AF6ADC74(*v2);
    v13 = v12;
    sub_1AF9A0BAC(1, v11, v12);
    v14 = sub_1AFDFDDB8();

    sub_1AF701628(1, v11, v13);

    v16 = v14;
  }

  sub_1AF725990();
  sub_1AFDFD0A8();

  return v16;
}

unint64_t sub_1AF9761F4@<X0>(void *a1@<X8>)
{
  sub_1AF97FB54(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1AFE431C0;
  v4 = swift_allocObject();
  v5 = *(v1 + OBJC_IVAR____TtC3VFX12ConstantNode_holder);
  *(v4 + 16) = v5;
  *(v3 + 32) = v4 | 0x8000000000000000;
  result = sub_1AF442064(v5);
  v7 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = v3;
  a1[2] = &unk_1F24EE660;
  a1[3] = v7;
  a1[4] = v7;
  a1[5] = v7;
  return result;
}

uint64_t sub_1AF9762B8()
{
  v13[0] = 0;
  v13[1] = 0xE000000000000000;
  v1 = v0 + OBJC_IVAR____TtC3VFX12ConstantNode_holder;
  v2 = *(v0 + OBJC_IVAR____TtC3VFX12ConstantNode_holder);
  sub_1AF442064(v2);
  v3 = sub_1AF90D394(v2);
  v5 = v4;
  sub_1AF445BE4(v2);
  MEMORY[0x1B2718AE0](v3, v5);

  MEMORY[0x1B2718AE0](58, 0xE100000000000000);
  v6 = *(v1 + 32);
  v7 = sub_1AF441150((v1 + 8), v6);
  v8 = *(v6 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = v13 - v10;
  (*(v8 + 16))(v13 - v10, v9);
  sub_1AFDFEDD8();
  (*(v8 + 8))(v11, v6);
  return v13[0];
}

uint64_t sub_1AF9764C0(void *a1)
{
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF3C8();
  sub_1AF914FF0(v1 + OBJC_IVAR____TtC3VFX12ConstantNode_holder, v8);
  sub_1AF448018(v9, v10);
  sub_1AF97DE20();
  sub_1AFDFEC38();
  sub_1AF9151B0(v8);
  if (!v2)
  {
    v3 = (v1 + OBJC_IVAR____TtC3VFX12ConstantNode_semantic);
    v4 = *(v1 + OBJC_IVAR____TtC3VFX12ConstantNode_semantic);
    sub_1AFDFF288();
    v5 = sub_1AF6ADC50(v4);
    MEMORY[0x1B271ACB0](v5);
    v6 = sub_1AFDFF2F8();
    sub_1AFDFF288();
    MEMORY[0x1B271ACB0](0);
    if (v6 != sub_1AFDFF2F8())
    {
      v8[0] = *v3;
      sub_1AF448018(v9, v10);
      sub_1AF487468();
      sub_1AFDFEC38();
    }
  }

  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v9);
}

void *sub_1AF97662C(void *a1)
{
  sub_1AF441150(a1, a1[3]);
  result = sub_1AFDFF388();
  if (!v2)
  {
    sub_1AF448018(v7, v8);
    sub_1AF97DD7C();
    sub_1AFDFEAD8();
    sub_1AF97DDD0(v6[0].i64, v1 + OBJC_IVAR____TtC3VFX12ConstantNode_holder);
    sub_1AF448018(v7, v8);
    sub_1AF487170();
    sub_1AFDFEA58();
    v4 = vdup_n_s32(v6[0].i64[0] == 35);
    v5.i64[0] = v4.u32[0];
    v5.i64[1] = v4.u32[1];
    *(v1 + OBJC_IVAR____TtC3VFX12ConstantNode_semantic) = vbslq_s8(vcltzq_s64(vshlq_n_s64(v5, 0x3FuLL)), xmmword_1AFE22A20, v6[0]);
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v7);
  }

  return result;
}

double sub_1AF9767B0@<D0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a2 && a2 != 1 && (v5 = a1, sub_1AF90E730(a1), v7 = v6, a1 = v5, v7))
  {
    *(a3 + 32) = v7;
    v8 = sub_1AF585714((a3 + 8));
    (*(*(v7 - 8) + 16))(v8, a2, v7);
    *a3 = v5;
    sub_1AF442064(v5);

    sub_1AF445BE4(v5);
  }

  else
  {
    sub_1AF445BE4(a1);
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

unint64_t sub_1AF97687C@<X0>(unint64_t a1@<X1>, uint64_t a2@<X2>, unint64_t a3@<X3>, unint64_t *a4@<X8>)
{
  a4[4] = a3;
  v8 = sub_1AF585714(a4 + 1);
  (*(*(a3 - 8) + 16))(v8, a2, a3);
  *a4 = a1;

  return sub_1AF442064(a1);
}

unint64_t sub_1AF976904@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF388();
  if (v2)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  sub_1AF448018(v55, v56);
  sub_1AF974884();
  sub_1AFDFEAD8();
  v6 = v49;
  v57 = v49;
  sub_1AF442064(v49);
  sub_1AF90E730(v49);
  v8 = v7;
  sub_1AF445BE4(v49);
  if (!v8)
  {
    *&v49 = 0;
    *(&v49 + 1) = 0xE000000000000000;
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0xD00000000000001DLL, 0x80000001AFF3C8C0);
    *&v53 = v6;
    sub_1AFDFE458();
    sub_1AF4567E0();
    swift_allocError();
    *v11 = v49;
    *(v11 + 16) = 0;
    swift_willThrow();
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v55);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
    return sub_1AF445BE4(v6);
  }

  type metadata accessor for simd_quatf(0);
  v10 = v9;
  if (swift_dynamicCastMetatype())
  {
    sub_1AF448018(v55, v56);
    sub_1AF5E122C();
    sub_1AFDFEAD8();
    *(&v50 + 1) = v10;
    *&v49 = swift_allocObject();
    *(v49 + 16) = v53;
LABEL_15:
    v18 = &v49;
LABEL_16:
    sub_1AF449D40(v18, &v58);
LABEL_17:
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v55);
    sub_1AF914FF0(&v57, a2);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
    return sub_1AF9151B0(&v57);
  }

  type metadata accessor for simd_float2x2(0);
  v13 = v12;
  if (swift_dynamicCastMetatype())
  {
    sub_1AF448018(v55, v56);
    sub_1AF6086A4();
    sub_1AFDFEAD8();
    *(&v50 + 1) = v13;
    v49 = v53;
    goto LABEL_15;
  }

  type metadata accessor for simd_float2x3(0);
  v15 = v14;
  if (swift_dynamicCastMetatype())
  {
    sub_1AF448018(v55, v56);
    sub_1AF608650();
LABEL_14:
    sub_1AFDFEAD8();
    v45 = v54;
    *(&v50 + 1) = v15;
    v17 = swift_allocObject();
    *&v49 = v17;
    *(v17 + 16) = v53;
    *(v17 + 32) = v45;
    goto LABEL_15;
  }

  type metadata accessor for simd_float2x4(0);
  v15 = v16;
  if (swift_dynamicCastMetatype())
  {
    sub_1AF448018(v55, v56);
    sub_1AF6085FC();
    goto LABEL_14;
  }

  type metadata accessor for simd_float3x2(0);
  v20 = v19;
  if (swift_dynamicCastMetatype())
  {
    sub_1AF448018(v55, v56);
    sub_1AF6085A8();
    sub_1AFDFEAD8();
    *(&v50 + 1) = v20;
    v49 = v53;
    *&v50 = v54;
    goto LABEL_15;
  }

  type metadata accessor for simd_float3x3(0);
  v22 = v21;
  if (swift_dynamicCastMetatype())
  {
    sub_1AF448018(v55, v56);
    sub_1AF608554();
LABEL_24:
    sub_1AFDFEAD8();
    v46 = v50;
    v44 = v51;
    *(&v54 + 1) = v22;
    v24 = swift_allocObject();
    *&v53 = v24;
    v24[1] = v49;
    v24[2] = v46;
    v24[3] = v44;
LABEL_25:
    v18 = &v53;
    goto LABEL_16;
  }

  type metadata accessor for simd_float3x4(0);
  v22 = v23;
  if (swift_dynamicCastMetatype())
  {
    sub_1AF448018(v55, v56);
    sub_1AF608500();
    goto LABEL_24;
  }

  type metadata accessor for simd_float4x2(0);
  v26 = v25;
  if (swift_dynamicCastMetatype())
  {
    sub_1AF448018(v55, v56);
    sub_1AF6084AC();
    sub_1AFDFEAD8();
    v27 = v54;
    *(&v50 + 1) = v26;
    v28 = swift_allocObject();
    *&v49 = v28;
    *(v28 + 16) = v53;
    *(v28 + 32) = v27;
    goto LABEL_15;
  }

  type metadata accessor for simd_float4x3(0);
  v30 = v29;
  if (swift_dynamicCastMetatype())
  {
    sub_1AF448018(v55, v56);
    sub_1AF608458();
    sub_1AFDFEAD8();
    *(&v54 + 1) = v30;
    v31 = swift_allocObject();
    *&v53 = v31;
    v32 = v50;
    v31[1] = v49;
    v31[2] = v32;
    v33 = v52;
    v31[3] = v51;
    v31[4] = v33;
    goto LABEL_25;
  }

  type metadata accessor for simd_float4x4(0);
  v35 = v34;
  if (swift_dynamicCastMetatype())
  {
    sub_1AF448018(v55, v56);
    sub_1AF48D6F8();
    sub_1AFDFEAD8();
    v43 = v50;
    v47 = v52;
    v48 = v51;
    *(&v54 + 1) = v35;
    v36 = swift_allocObject();
    *&v53 = v36;
    v36[1] = v49;
    v36[2] = v43;
    v36[3] = v48;
    v36[4] = v47;
    goto LABEL_25;
  }

  sub_1AF90E730(v49);
  if (v37)
  {
    v38 = v37;
    v39 = swift_conformsToProtocol2();
    if (v39)
    {
      *(&v50 + 1) = v38;
      *&v51 = v39;
      sub_1AF585714(&v49);
      sub_1AF75869C(v55);
      v40 = *(&v50 + 1);
      v41 = sub_1AF441150(&v49, *(&v50 + 1));
      v59 = v40;
      v42 = sub_1AF585714(&v58);
      (*(*(v40 - 8) + 16))(v42, v41, v40);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v49);
      goto LABEL_17;
    }

    *&v49 = 0;
    *(&v49 + 1) = 0xE000000000000000;
    sub_1AFDFE218();
    *&v53 = v6;
    sub_1AFDFE458();
    MEMORY[0x1B2718AE0](0xD000000000000011, 0x80000001AFF3C900);
  }

  else
  {
    *&v49 = 0;
    *(&v49 + 1) = 0xE000000000000000;
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0x20676E697373696DLL, 0xEE00203A65736163);
    *&v53 = v6;
    sub_1AFDFE458();
  }

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AF9771D4(void *a1)
{
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF3C8();
  *&v24 = *v1;
  sub_1AF448018(v33, v33[3]);
  sub_1AF9748D8();
  sub_1AFDFEC38();
  if (!v2)
  {
    sub_1AF0D5A54((v1 + 1), v28);
    type metadata accessor for simd_quatf(0);
    if (swift_dynamicCast())
    {
      v31 = &type metadata for QuaternionFCoder;
      v32 = sub_1AF5E1280();
      *&v29 = swift_allocObject();
      *(v29 + 16) = v24;
      goto LABEL_11;
    }

    type metadata accessor for simd_float2x2(0);
    if (swift_dynamicCast())
    {
      v31 = &type metadata for Float2x2Coder;
      v32 = sub_1AF608A04();
      v29 = v24;
      goto LABEL_11;
    }

    type metadata accessor for simd_float2x3(0);
    if (swift_dynamicCast())
    {
      v19 = v25;
      v22 = v24;
      v31 = &type metadata for Float2x3Coder;
      v3 = sub_1AF6089B0();
    }

    else
    {
      type metadata accessor for simd_float2x4(0);
      if (!swift_dynamicCast())
      {
        type metadata accessor for simd_float3x2(0);
        if (swift_dynamicCast())
        {
          v31 = &type metadata for Float3x2Coder;
          v32 = sub_1AF608908();
          v29 = v24;
          v30 = v25;
        }

        else
        {
          type metadata accessor for simd_float3x3(0);
          if (swift_dynamicCast())
          {
            v20 = v25;
            v23 = v24;
            v17 = v26;
            v31 = &type metadata for Float3x3Coder;
            v8 = sub_1AF6088B4();
          }

          else
          {
            type metadata accessor for simd_float3x4(0);
            if (!swift_dynamicCast())
            {
              type metadata accessor for simd_float4x2(0);
              if (swift_dynamicCast())
              {
                v10 = v25;
                v31 = &type metadata for Float4x2Coder;
                v32 = sub_1AF60880C();
                v11 = swift_allocObject();
                *&v29 = v11;
                *(v11 + 16) = v24;
                *(v11 + 32) = v10;
              }

              else
              {
                type metadata accessor for simd_float4x3(0);
                if (swift_dynamicCast())
                {
                  v31 = &type metadata for Float4x3Coder;
                  v32 = sub_1AF6087B8();
                  v12 = swift_allocObject();
                  *&v29 = v12;
                  v13 = v25;
                  v12[1] = v24;
                  v12[2] = v13;
                  v14 = v27;
                  v12[3] = v26;
                  v12[4] = v14;
                }

                else
                {
                  type metadata accessor for simd_float4x4(0);
                  if (swift_dynamicCast())
                  {
                    v21 = v25;
                    v16 = v27;
                    v18 = v26;
                    v31 = &type metadata for Float4x4Coder;
                    v32 = sub_1AF48D74C();
                    v15 = swift_allocObject();
                    *&v29 = v15;
                    v15[1] = v24;
                    v15[2] = v21;
                    v15[3] = v18;
                    v15[4] = v16;
                  }

                  else
                  {
                    sub_1AF0D5A54((v1 + 1), &v24);
                    sub_1AF5C5358(0, &qword_1EB63D338, MEMORY[0x1E69E5E78]);
                    swift_dynamicCast();
                  }
                }
              }

              goto LABEL_11;
            }

            v20 = v25;
            v23 = v24;
            v17 = v26;
            v31 = &type metadata for Float3x4Coder;
            v8 = sub_1AF608860();
          }

          v32 = v8;
          v9 = swift_allocObject();
          *&v29 = v9;
          v9[1] = v23;
          v9[2] = v20;
          v9[3] = v17;
        }

LABEL_11:
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v28);
        v5 = v31;
        v6 = v32;
        sub_1AF441150(&v29, v31);
        sub_1AF758548(v33, v5, v6);
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v29);
        return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v33);
      }

      v19 = v25;
      v22 = v24;
      v31 = &type metadata for Float2x4Coder;
      v3 = sub_1AF60895C();
    }

    v32 = v3;
    v4 = swift_allocObject();
    *&v29 = v4;
    *(v4 + 16) = v22;
    *(v4 + 32) = v19;
    goto LABEL_11;
  }

  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v33);
}

uint64_t sub_1AF9776EC()
{
  v1 = *(v0 + OBJC_IVAR____TtC3VFX12ConstantNode_holder);
  sub_1AF442064(v1);
  if (sub_1AF90DD74(2, v1))
  {
    v2 = 4;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2 & 0xFFFFFFFE | sub_1AF90DD74(0, v1);
  if (sub_1AF90DD74(1, v1))
  {
    v4 = v3 | 2;
  }

  else
  {
    v4 = v3;
  }

  v5 = sub_1AF90DD74(3, v1);
  sub_1AF445BE4(v1);
  if (v5)
  {
    return v4 | 8;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_1AF977788(unsigned __int8 *a1)
{
  v2 = v1;
  sub_1AF914FF0(v2 + OBJC_IVAR____TtC3VFX12ConstantNode_holder, v12);
  sub_1AF938228(v12, &v13);
  sub_1AF9151B0(v12);
  v4 = *a1;
  v8 = sub_1AF930984(v13, v14, 3174949, 0xE300000000000000, v4);
  v9 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v9 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (v9)
  {
    v10 = sub_1AF97E1F4(v4, v2, v8, v5, v6, v7);

    v8 = sub_1AFA5413C(v10);

    sub_1AF9151B0(&v13);
  }

  else
  {
    sub_1AF9151B0(&v13);
  }

  return v8;
}

char *sub_1AF9778C0(char *a1)
{
  v2 = swift_allocObject();
  v3 = OBJC_IVAR____TtC3VFX12ConstantNode_semantic;
  *(v2 + OBJC_IVAR____TtC3VFX12ConstantNode_semantic) = xmmword_1AFE22A20;
  sub_1AF914FF0(&a1[OBJC_IVAR____TtC3VFX12ConstantNode_holder], v2 + OBJC_IVAR____TtC3VFX12ConstantNode_holder);
  *(v2 + v3) = *&a1[OBJC_IVAR____TtC3VFX12ConstantNode_semantic];
  return sub_1AF96FD00(a1);
}

uint64_t sub_1AF977938()
{

  sub_1AF919DAC(*(v0 + 24), *(v0 + 32));
  v1 = OBJC_IVAR____TtC3VFX4Node_authoringID;
  v2 = sub_1AFDFC318();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1AF9151B0(v0 + OBJC_IVAR____TtC3VFX12ConstantNode_holder);

  return swift_deallocClassInstance();
}

uint64_t sub_1AF977AEC(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a1[3];
  v7 = a1[4];
  sub_1AF441150(a1, v6);
  v10 = *(v4 + *a4);
  v8 = sub_1AF9748D8();
  return sub_1AF974C50(&v10, v6, &type metadata for AnyType, v7, v8);
}

void *sub_1AF977B8C(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_1AF441150(a1, a1[3]);
  sub_1AF974884();
  result = sub_1AF974940();
  if (!v5)
  {
    v8 = *(v4 + *a4);
    *(v4 + *a4) = v9;
    return sub_1AF445BE4(v8);
  }

  return result;
}

uint64_t sub_1AF977C3C@<X0>(uint64_t *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC3VFX12_ComposeNode_type;
  v4 = *(v1 + OBJC_IVAR____TtC3VFX12_ComposeNode_type);
  sub_1AF442064(v4);
  v5 = sub_1AF90DCF4(v4);
  v7 = v6;
  sub_1AF445BE4(v4);
  sub_1AF949EC8(v5, v7);
  v8 = sub_1AF61FA28(&unk_1F24EE020, &unk_1F24EE040, 0, (2 * v5) | 1);
  v9 = swift_allocObject();
  v10 = *(v1 + v3);
  sub_1AF442064(v10);
  sub_1AF90DCF4(v10);
  v12 = v11;
  sub_1AF445BE4(v10);
  *(v9 + 16) = v12;
  v13 = *(v1 + v3);
  sub_1AF442064(v13);
  v14 = sub_1AF90DCF4(v13);
  v16 = v15;
  sub_1AF445BE4(v13);
  sub_1AF949EC8(v14, v16);
  v17 = MEMORY[0x1E69E7CC0];
  if (v14 > 0)
  {
    v18 = sub_1AFDFD488();
    *(v18 + 16) = v14;
    v19 = v9 | 0x8000000000000000;
    *(v18 + 32) = v9 | 0x8000000000000000;
    v20 = v18 + 32;
    if (v14 == 1)
    {
LABEL_8:

      goto LABEL_9;
    }

LABEL_6:
    v21 = v14 - 1;
    v22 = (v20 + 8);
    do
    {
      *v22++ = v19;

      --v21;
    }

    while (v21);
    goto LABEL_8;
  }

  v18 = MEMORY[0x1E69E7CC0];
  if (v14)
  {
    v19 = v9 | 0x8000000000000000;
    *(MEMORY[0x1E69E7CC0] + 32) = v9 | 0x8000000000000000;
    v20 = v18 + 32;
    goto LABEL_6;
  }

LABEL_9:

  sub_1AF97FB54(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1AFE431C0;
  v24 = swift_allocObject();
  v25 = *(v1 + v3);
  *(v24 + 16) = v25;
  *(v23 + 32) = v24 | 0x8000000000000000;
  sub_1AF442064(v25);
  v26 = sub_1AF3C3AA4(v8);
  sub_1AF97FAD0(0, &qword_1EB630968, MEMORY[0x1E69E6F90]);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1AFE431C0;
  sub_1AF97FB54(0, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1AF488088();
  v28 = sub_1AFDFCD98();
  v30 = v29;

  *(v27 + 32) = v28;
  *(v27 + 40) = v30;
  *a1 = v18;
  a1[1] = v23;
  a1[2] = &unk_1F24EE080;
  a1[3] = v26;
  a1[4] = v27;
  a1[5] = v17;
  return result;
}

void sub_1AF977FB8(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC3VFX12_ComposeNode_type);
  sub_1AF442064(v3);
  v4 = sub_1AF90D394(v3);
  v6 = v5;
  sub_1AF445BE4(v3);

  sub_1AF9A0BAC(1, v4, v6);

  v7 = sub_1AFDFDDB8();
  v9 = v8;

  sub_1AF701628(1, v4, v6);

  sub_1AF725990();
  sub_1AFDFD0A8();

  MEMORY[0x1B2718AE0](v7, v9);
}

uint64_t sub_1AF9780EC@<X0>(uint64_t *a1@<X8>)
{
  sub_1AF97FB54(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1AFE431C0;
  v4 = swift_allocObject();
  v5 = OBJC_IVAR____TtC3VFX12_ComposeNode_type;
  v6 = *(v1 + OBJC_IVAR____TtC3VFX12_ComposeNode_type);
  *(v4 + 16) = v6;
  *(v3 + 32) = v4 | 0x8000000000000000;
  v7 = swift_allocObject();
  sub_1AF442064(v6);
  sub_1AF442064(v6);
  sub_1AF90DCF4(v6);
  v9 = v8;
  sub_1AF445BE4(v6);
  *(v7 + 16) = v9;
  v10 = *(v1 + v5);
  sub_1AF442064(v10);
  v11 = sub_1AF90DCF4(v10);
  v13 = v12;
  sub_1AF445BE4(v10);
  sub_1AF949EC8(v11, v13);
  v14 = MEMORY[0x1E69E7CC0];
  if (v11 > 0)
  {
    v15 = sub_1AFDFD488();
    *(v15 + 16) = v11;
    v16 = v7 | 0x8000000000000000;
    *(v15 + 32) = v7 | 0x8000000000000000;
    v17 = v15 + 32;
    if (v11 == 1)
    {
LABEL_8:

      goto LABEL_9;
    }

LABEL_6:
    v18 = v11 - 1;
    v19 = (v17 + 8);
    do
    {
      *v19++ = v16;

      --v18;
    }

    while (v18);
    goto LABEL_8;
  }

  v15 = MEMORY[0x1E69E7CC0];
  if (v11)
  {
    v16 = v7 | 0x8000000000000000;
    *(MEMORY[0x1E69E7CC0] + 32) = v7 | 0x8000000000000000;
    v17 = v15 + 32;
    goto LABEL_6;
  }

LABEL_9:

  *a1 = v3;
  a1[1] = v15;
  a1[2] = &unk_1F24EE8B0;
  a1[3] = v14;
  a1[4] = v14;
  a1[5] = v14;
  return result;
}

unint64_t sub_1AF9782D0()
{
  sub_1AFDFE218();

  v1 = *(v0 + OBJC_IVAR____TtC3VFX12_ComposeNode_type);
  sub_1AF442064(v1);
  v2 = sub_1AF90D394(v1);
  v4 = v3;
  sub_1AF445BE4(v1);

  sub_1AF9A0BAC(1, v2, v4);

  v5 = sub_1AFDFDDB8();
  v7 = v6;

  sub_1AF701628(1, v2, v4);

  sub_1AF725990();
  sub_1AFDFD0A8();

  MEMORY[0x1B2718AE0](v5, v7);

  return 0xD000000000000011;
}

uint64_t sub_1AF97848C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1AFDFE218();

  v13 = a2;
  v5 = *(v3 + OBJC_IVAR____TtC3VFX12_ComposeNode_type);
  sub_1AF442064(v5);
  v6 = sub_1AF90D394(v5);
  v8 = v7;
  sub_1AF445BE4(v5);

  sub_1AF9A0BAC(1, v6, v8);

  v9 = sub_1AFDFDDB8();
  v11 = v10;

  sub_1AF701628(1, v6, v8);

  sub_1AF725990();
  sub_1AFDFD0A8();

  MEMORY[0x1B2718AE0](v9, v11);

  return v13;
}

unint64_t sub_1AF9785E4@<X0>(uint64_t *a1@<X8>)
{
  v3 = swift_allocObject();
  v4 = swift_allocObject();
  v5 = OBJC_IVAR____TtC3VFX12_ComposeNode_type;
  v6 = *(v1 + OBJC_IVAR____TtC3VFX12_ComposeNode_type);
  sub_1AF442064(v6);
  sub_1AF90DCF4(v6);
  v8 = v7;
  sub_1AF445BE4(v6);
  *(v4 + 16) = v8;
  *(v3 + 16) = v4;
  v9 = *(v1 + v5);
  sub_1AF442064(v9);
  v10 = sub_1AF90DCF4(v9);
  v12 = v11;
  sub_1AF445BE4(v9);
  sub_1AF949EC8(v10, v12);
  v13 = MEMORY[0x1E69E7CC0];
  if (v10 > 0)
  {
    v14 = sub_1AFDFD488();
    *(v14 + 16) = v10;
    v15 = v3 | 0x8000000000000000;
    *(v14 + 32) = v3 | 0x8000000000000000;
    v16 = v14 + 32;
    if (v10 == 1)
    {
LABEL_8:

      goto LABEL_9;
    }

LABEL_6:
    v17 = v10 - 1;
    v18 = (v16 + 8);
    do
    {
      *v18++ = v15;

      --v17;
    }

    while (v17);
    goto LABEL_8;
  }

  v14 = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    v15 = v3 | 0x8000000000000000;
    *(MEMORY[0x1E69E7CC0] + 32) = v3 | 0x8000000000000000;
    v16 = v14 + 32;
    goto LABEL_6;
  }

LABEL_9:

  sub_1AF97FB54(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1AFE431C0;
  v20 = swift_allocObject();
  v21 = *(v1 + v5);
  *(v20 + 16) = v21;
  *(v19 + 32) = v20 | 0x8000000000000000;
  result = sub_1AF442064(v21);
  *a1 = v14;
  a1[1] = v19;
  a1[2] = &unk_1F24F0C00;
  a1[3] = v13;
  a1[4] = v13;
  a1[5] = v13;
  return result;
}

unint64_t sub_1AF9787E8()
{
  sub_1AFDFE218();

  v1 = *(v0 + OBJC_IVAR____TtC3VFX12_ComposeNode_type);
  sub_1AF442064(v1);
  v2 = sub_1AF90DCF4(v1);
  v4 = v3;
  sub_1AF445BE4(v1);
  sub_1AF949EC8(v2, v4);
  v5 = sub_1AFDFEA08();
  MEMORY[0x1B2718AE0](v5);

  return 0xD000000000000016;
}

uint64_t sub_1AF978A3C@<X0>(uint64_t *a1@<X8>)
{
  sub_1AF97FB54(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1AFE431C0;
  result = swift_allocObject();
  *(result + 16) = 0xC000000000000008;
  *(v2 + 32) = result | 0x8000000000000000;
  v4 = MEMORY[0x1E69E7CC0];
  *a1 = v2;
  a1[1] = v4;
  a1[2] = &unk_1F24F3750;
  a1[3] = v4;
  a1[4] = v4;
  a1[5] = v4;
  return result;
}

uint64_t sub_1AF978B90@<X0>(uint64_t *a1@<X8>)
{
  sub_1AF97FB54(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1AFE4C6B0;
  v3 = swift_allocObject();
  *(v3 + 16) = 0xC000000000000008;
  *(v2 + 32) = v3 | 0x8000000000000000;
  v4 = swift_allocObject();
  *(v4 + 16) = 0xC000000000000008;
  *(v2 + 40) = v4 | 0x8000000000000000;
  v5 = swift_allocObject();
  *(v5 + 16) = 0xC000000000000008;
  *(v2 + 48) = v5 | 0x8000000000000000;
  v6 = swift_allocObject();
  *(v6 + 16) = 0xC000000000000010;
  *(v2 + 56) = v6 | 0x8000000000000000;
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1AFE431C0;
  result = swift_allocObject();
  *(result + 16) = 0xC000000000000008;
  *(v7 + 32) = result | 0x8000000000000000;
  *a1 = v2;
  a1[1] = v7;
  a1[2] = &unk_1F24F2B58;
  a1[3] = &unk_1F24F2B88;
  v9 = MEMORY[0x1E69E7CC0];
  a1[4] = MEMORY[0x1E69E7CC0];
  a1[5] = v9;
  return result;
}

uint64_t sub_1AF978D04()
{
  v1 = sub_1AF978D50(v0);
  v2 = sub_1AFA5413C(v1);

  return v2;
}

uint64_t sub_1AF978D50(uint64_t a1)
{
  type metadata accessor for NoopNode(0);
  if (swift_dynamicCastClass())
  {
    v1 = sub_1AFA56CA0();
    v2 = MEMORY[0x1E69E62F8];
    sub_1AF97FA74(&unk_1F2505D00, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
    sub_1AF441DD8(0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1AFE431C0;
    *(inited + 32) = v1;
    v4 = inited + 32;
    v5 = sub_1AFA56CA0();
    swift_setDeallocating();
    sub_1AF97FA74(v4, &unk_1ED723290, &type metadata for CodeEmitter.Code, v2);
    sub_1AFA5413C(v5);

    v6 = sub_1AFAF888C(4);
    v8 = v7;

    MEMORY[0x1B2718AE0](v6, v8);

    MEMORY[0x1B2718AE0](125, 0xE100000000000000);
    v9 = swift_initStackObject();
    *(v9 + 16) = xmmword_1AFE431C0;
    *(v9 + 32) = MEMORY[0x1E69E7CC0];
    v10 = v9 + 32;
    v11 = sub_1AFA56CA0();
    swift_setDeallocating();
    sub_1AF97FA74(v10, &unk_1ED723290, &type metadata for CodeEmitter.Code, v2);
    sub_1AFA5413C(v11);

    sub_1AFAF888C(4);

    MEMORY[0x1B2718AE0](10, 0xE100000000000000);
    sub_1AF97FB54(0, &qword_1EB638390, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E6F90]);
    v12 = swift_initStackObject();
    *(v12 + 16) = xmmword_1AFE431C0;
    *(v12 + 32) = 0x2029332528206669;
    *(v12 + 40) = 0xEA00000000000A7BLL;
    *(v12 + 48) = 0;
    *(v12 + 56) = 0;
  }

  else
  {
    v13 = sub_1AFA56CA0();
    v14 = MEMORY[0x1E69E62F8];
    sub_1AF97FA74(&unk_1F2505D68, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
    sub_1AF441DD8(0);
    v15 = swift_initStackObject();
    *(v15 + 16) = xmmword_1AFE431C0;
    *(v15 + 32) = v13;
    v16 = v15 + 32;
    v17 = sub_1AFA56CA0();
    swift_setDeallocating();
    sub_1AF97FA74(v16, &unk_1ED723290, &type metadata for CodeEmitter.Code, v14);
    sub_1AFA5413C(v17);

    v18 = sub_1AFAF888C(4);
    v20 = v19;

    MEMORY[0x1B2718AE0](v18, v20);

    MEMORY[0x1B2718AE0](125, 0xE100000000000000);
    v21 = sub_1AFA56CA0();
    sub_1AF97FA74(&unk_1F2505DD0, &unk_1ED723290, &type metadata for CodeEmitter.Code, v14);
    v22 = swift_initStackObject();
    *(v22 + 16) = xmmword_1AFE431C0;
    *(v22 + 32) = v21;
    v23 = v22 + 32;

    v24 = sub_1AFA56CA0();
    swift_setDeallocating();
    sub_1AF97FA74(v23, &unk_1ED723290, &type metadata for CodeEmitter.Code, v14);
    sub_1AFA5413C(v24);

    v25 = sub_1AFAF888C(4);
    v27 = v26;

    v28 = *(v21 + 16);

    if (v28)
    {
      MEMORY[0x1B2718AE0](0xA7B2065736C6520, 0xE800000000000000);
      MEMORY[0x1B2718AE0](v25, v27);

      v29 = 2685;
      v30 = 0xE200000000000000;
    }

    else
    {

      v29 = 10;
      v30 = 0xE100000000000000;
    }

    MEMORY[0x1B2718AE0](v29, v30);
    sub_1AF97FB54(0, &qword_1EB638390, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E6F90]);
    v12 = swift_initStackObject();
    *(v12 + 16) = xmmword_1AFE431C0;
    *(v12 + 32) = 0x2029332528206669;
    *(v12 + 40) = 0xEA00000000000A7BLL;
    *(v12 + 48) = 0;
    *(v12 + 56) = 0;
  }

  v31 = swift_initStackObject();
  *(v31 + 16) = xmmword_1AFE431C0;
  *(v31 + 32) = v12;
  v32 = v31 + 32;
  v33 = sub_1AFA56CA0();
  swift_setDeallocating();
  v34 = MEMORY[0x1E69E62F8];
  sub_1AF97FA74(v32, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
  sub_1AF441DD8(0);
  v35 = swift_initStackObject();
  *(v35 + 16) = xmmword_1AFE4C620;
  *(v35 + 32) = v33;
  *(v35 + 40) = &unk_1F2505DD8;
  v36 = sub_1AFA56CA0();
  swift_setDeallocating();
  sub_1AF97FB54(0, &unk_1ED723290, &type metadata for CodeEmitter.Code, v34);
  swift_arrayDestroy();
  return v36;
}

uint64_t sub_1AF97934C@<X0>(uint64_t *a1@<X8>)
{
  sub_1AF97FB54(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1AFE4C680;
  v3 = swift_allocObject();
  *(v3 + 16) = 0xC000000000000008;
  *(v2 + 32) = v3 | 0x8000000000000000;
  v4 = swift_allocObject();
  *(v4 + 16) = 0xC000000000000008;
  *(v2 + 40) = v4 | 0x8000000000000000;
  v5 = swift_allocObject();
  *(v5 + 16) = 0xC000000000000038;
  *(v2 + 48) = v5 | 0x8000000000000000;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1AFE4C620;
  v7 = swift_allocObject();
  *(v7 + 16) = 0xC000000000000008;
  *(v6 + 32) = v7 | 0x8000000000000000;
  result = swift_allocObject();
  *(result + 16) = 0xC000000000000038;
  *(v6 + 40) = result | 0x8000000000000000;
  *a1 = v2;
  a1[1] = v6;
  a1[2] = &unk_1F24EDC40;
  a1[3] = &unk_1F24EDBB0;
  v9 = MEMORY[0x1E69E7CC0];
  a1[4] = &unk_1F24EDC00;
  a1[5] = v9;
  return result;
}

uint64_t sub_1AF9794E0(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 40);
  sub_1AF448650(*(a1 + 24), v3);
  sub_1AF442064(v4);

  v5 = *a2;
  v6 = sub_1AF937FF8(v5, v4);
  if ((~v6 & 0xF000000000000007) == 0)
  {
    sub_1AF442064(v4);
    v6 = v4;
  }

  if (v5 == 3)
  {
    strcpy(v21, "let $index = ");
    *&v21[14] = -4864;
  }

  else
  {
    *v21 = 0;
    *&v21[8] = 0xE000000000000000;
    v7 = sub_1AF937FF8(v5, v6);
    if ((~v7 & 0xF000000000000007) == 0)
    {
      sub_1AF442064(v6);
      v7 = v6;
    }

    v8 = sub_1AF94B594(v5, v7);
    v10 = v9;
    sub_1AF445BE4(v7);
    MEMORY[0x1B2718AE0](v8, v10);

    MEMORY[0x1B2718AE0](32, 0xE100000000000000);
    MEMORY[0x1B2718AE0](0x7865646E6924, 0xE600000000000000);
    MEMORY[0x1B2718AE0](2112800, 0xE300000000000000);
  }

  MEMORY[0x1B2718AE0](48, 0xE100000000000000);
  MEMORY[0x1B2718AE0](59, 0xE100000000000000);
  sub_1AF445BE4(v6);
  v11 = *v21;
  *v21 = *(a2 + 1);
  *&v21[9] = *(a2 + 25);
  v20 = v11;
  sub_1AF442064(v4);

  sub_1AF97F9EC(v21, v19);
  MEMORY[0x1B2718AE0](32, 0xE100000000000000);
  MEMORY[0x1B2718AE0](0x3C207865646E6924, 0xEC0000003B322520);
  MEMORY[0x1B2718AE0](32, 0xE100000000000000);
  MEMORY[0x1B2718AE0](0x2B2B7865646E6924, 0xE800000000000000);
  v12 = sub_1AFA56198(v20, *(&v20 + 1), v5, v4);
  v14 = v13;
  sub_1AF445BE4(v4);

  sub_1AF97FA74(v21, &qword_1EB640A58, &type metadata for CodeGenContext.SubGraphContext, MEMORY[0x1E69E6720]);

  sub_1AF97FB54(0, &qword_1EB638390, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 32) = v12;
  *(inited + 40) = v14;
  sub_1AF441DD8(0);
  *(inited + 48) = 0;
  *(inited + 56) = 0;
  v16 = swift_initStackObject();
  *(v16 + 16) = xmmword_1AFE4C620;
  *(v16 + 32) = inited;
  *(v16 + 40) = &unk_1F25059B8;
  v17 = sub_1AFA56CA0();
  sub_1AF445BE4(v4);
  swift_setDeallocating();
  sub_1AF97FB54(0, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
  swift_arrayDestroy();
  return v17;
}

uint64_t sub_1AF979864@<X0>(uint64_t *a1@<X8>)
{
  sub_1AF97FB54(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1AFE4C680;
  v3 = swift_allocObject();
  *(v3 + 16) = 0xC000000000000008;
  *(v2 + 32) = v3 | 0x8000000000000000;
  v4 = swift_allocObject();
  *(v4 + 16) = 0xC000000000000008;
  *(v2 + 40) = v4 | 0x8000000000000000;
  v5 = swift_allocObject();
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v5 + 16) = v6 | 0x4000000000000000;
  *(v2 + 48) = v5 | 0x2000000000000000;
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1AFE4C680;
  v8 = swift_allocObject();
  *(v8 + 16) = 0xC000000000000008;
  *(v7 + 32) = v8 | 0x8000000000000000;
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v7 + 40) = v9 | 0x4000000000000000;
  result = swift_allocObject();
  *(result + 16) = 0xC000000000000038;
  *(v7 + 48) = result | 0x8000000000000000;
  *a1 = v2;
  a1[1] = v7;
  a1[2] = &unk_1F24EE150;
  a1[3] = &unk_1F24EE0B0;
  v11 = MEMORY[0x1E69E7CC0];
  a1[4] = &unk_1F24EE100;
  a1[5] = v11;
  return result;
}

uint64_t sub_1AF979A4C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v3 = a2(v2, a1);
  v4 = sub_1AFA5413C(v3);

  return v4;
}

uint64_t sub_1AF979AA4(uint64_t a1, unsigned __int8 *a2)
{
  v4 = *(*(a1 + 24) + 48);
  sub_1AF448650(*(a1 + 24), *(a1 + 32));
  sub_1AF442064(v4);

  v5 = *a2;
  v36 = v4;
  v6 = sub_1AF97348C(12837, 0xE200000000000000, v4, *a2);
  v8 = v7;
  v9 = *(*(a1 + 32) + 40);
  sub_1AF448650(*(a1 + 24), *(a1 + 32));
  sub_1AF442064(v9);

  v11 = *(a1 + 24);
  v10 = *(a1 + 32);
  v12 = *(v10 + 48);
  sub_1AF448650(v11, v10);
  sub_1AF442064(v12);

  v13 = sub_1AF937FF8(v5, v12);
  if ((~v13 & 0xF000000000000007) == 0)
  {
    sub_1AF442064(v12);
    v13 = v12;
  }

  if (v5 == 3)
  {
    strcpy(v41, "let $index = ");
    *&v41[14] = -4864;
  }

  else
  {
    *v41 = 0;
    *&v41[8] = 0xE000000000000000;
    v14 = sub_1AF937FF8(v5, v13);
    if ((~v14 & 0xF000000000000007) == 0)
    {
      sub_1AF442064(v13);
      v14 = v13;
    }

    v15 = sub_1AF94B594(v5, v14);
    v17 = v16;
    sub_1AF445BE4(v14);
    MEMORY[0x1B2718AE0](v15, v17);

    MEMORY[0x1B2718AE0](32, 0xE100000000000000);
    MEMORY[0x1B2718AE0](0x7865646E6924, 0xE600000000000000);
    MEMORY[0x1B2718AE0](2112800, 0xE300000000000000);
  }

  MEMORY[0x1B2718AE0](48, 0xE100000000000000);
  MEMORY[0x1B2718AE0](59, 0xE100000000000000);
  sub_1AF445BE4(v13);
  v18 = *v41;
  v19 = *&v41[8];
  strcpy(v41, "$index < ");
  *&v41[10] = 0;
  *&v41[12] = -385875968;
  MEMORY[0x1B2718AE0](v6, v8);

  MEMORY[0x1B2718AE0](59, 0xE100000000000000);
  v20 = *v41;
  v21 = *&v41[8];
  *v41 = *(a2 + 1);
  *&v41[9] = *(a2 + 25);
  v39 = v18;
  v40 = v19;
  sub_1AF442064(v36);
  sub_1AF442064(v9);
  sub_1AF442064(v12);

  sub_1AF97F9EC(v41, &v37);
  MEMORY[0x1B2718AE0](32, 0xE100000000000000);
  MEMORY[0x1B2718AE0](v20, v21);

  MEMORY[0x1B2718AE0](32, 0xE100000000000000);
  MEMORY[0x1B2718AE0](0x2B2B7865646E6924, 0xE800000000000000);
  v37 = 0x2820726F66;
  v38 = 0xE500000000000000;
  MEMORY[0x1B2718AE0](v39, v40);
  MEMORY[0x1B2718AE0](175841321, 0xE400000000000000);
  v22 = sub_1AF97F5D4(v5, v12, v9, v36);
  sub_1AF441DD8(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 32) = v22;
  v24 = inited + 32;
  v25 = sub_1AFA56CA0();
  swift_setDeallocating();
  v26 = MEMORY[0x1E69E62F8];
  sub_1AF97FA74(v24, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
  sub_1AFA5413C(v25);

  v27 = sub_1AFAF888C(4);
  v29 = v28;

  MEMORY[0x1B2718AE0](v27, v29);

  MEMORY[0x1B2718AE0](2685, 0xE200000000000000);
  sub_1AF445BE4(v36);
  sub_1AF445BE4(v9);
  sub_1AF445BE4(v12);
  v30 = v37;
  v31 = v38;

  sub_1AF97FA74(v41, &qword_1EB640A58, &type metadata for CodeGenContext.SubGraphContext, MEMORY[0x1E69E6720]);

  sub_1AF97FB54(0, &qword_1EB638390, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E6F90]);
  v32 = swift_initStackObject();
  *(v32 + 16) = xmmword_1AFE431C0;
  *(v32 + 32) = v30;
  *(v32 + 40) = v31;
  *(v32 + 48) = 0;
  *(v32 + 56) = 0;
  v33 = swift_initStackObject();
  *(v33 + 16) = xmmword_1AFE4C620;
  *(v33 + 32) = v32;
  *(v33 + 40) = &unk_1F2505B38;
  v34 = sub_1AFA56CA0();
  sub_1AF445BE4(v12);
  sub_1AF445BE4(v9);
  sub_1AF445BE4(v36);
  swift_setDeallocating();
  sub_1AF97FB54(0, &unk_1ED723290, &type metadata for CodeEmitter.Code, v26);
  swift_arrayDestroy();
  return v34;
}

uint64_t sub_1AF97A008@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  sub_1AF97FB54(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AFE431C0;
  v5 = swift_allocObject();
  *(v5 + 16) = 0xC000000000000008;
  *(v4 + 32) = v5 | 0x8000000000000000;
  v6 = swift_allocObject();
  v7 = v6;
  *(v6 + 16) = 0xC000000000000008;
  v8 = *(v2 + OBJC_IVAR____TtC3VFX6DoNode_count);
  v9 = MEMORY[0x1E69E7CC0];
  if (v8 > 0)
  {
    v10 = sub_1AFDFD488();
    *(v10 + 16) = v8;
    v11 = v7 | 0x8000000000000000;
    *(v10 + 32) = v7 | 0x8000000000000000;
    v12 = v10 + 32;
    if (v8 == 1)
    {
LABEL_9:

      goto LABEL_10;
    }

    v13 = v9;
LABEL_6:
    v14 = v8 - 1;
    v15 = (v12 + 8);
    do
    {
      *v15++ = v11;

      --v14;
    }

    while (v14);
    v9 = v13;
    goto LABEL_9;
  }

  v10 = MEMORY[0x1E69E7CC0];
  if (v8)
  {
    v13 = MEMORY[0x1E69E7CC0];
    v11 = v6 | 0x8000000000000000;
    *(MEMORY[0x1E69E7CC0] + 32) = v6 | 0x8000000000000000;
    v12 = v10 + 32;
    goto LABEL_6;
  }

LABEL_10:

  sub_1AF48F7D8(v10);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1AFE431C0;
  v17 = swift_allocObject();
  *(v17 + 16) = 0xC000000000000008;
  *(v16 + 32) = v17 | 0x8000000000000000;

  v19 = sub_1AF3C3AA4(v18);

  result = sub_1AF48F7B0(v19);
  *a1 = v4;
  a1[1] = v16;
  a1[2] = &unk_1F24F2B28;
  a1[3] = &unk_1F24F2AF8;
  a1[4] = v9;
  a1[5] = v9;
  return result;
}

char *sub_1AF97A230()
{
  sub_1AF97FB54(0, &qword_1EB6386E0, &type metadata for FlowScope, MEMORY[0x1E69E6F90]);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1AFE431C0;
  *(v1 + 32) = 1;
  *(v1 + 40) = 2;
  v2 = OBJC_IVAR____TtC3VFX6DoNode_count;
  if (*(v0 + OBJC_IVAR____TtC3VFX6DoNode_count) >= 2)
  {
    v3 = sub_1AF425DAC(1, 2, 1, v1);
    *(v3 + 2) = 2;
    *(v3 + 6) = 2;
    v3[56] = 2;
    v15 = v3;
    v4 = *(v0 + v2);
    v5 = MEMORY[0x1E69E7CC0];
    if (v4 != 1)
    {
      v13 = MEMORY[0x1E69E7CC0];
      sub_1AFC07708(0, (v4 - 1) & ~((v4 - 1) >> 63), 0);
      v5 = v13;
      v6 = *(v13 + 16);
      v7 = 16 * v6;
      for (i = 1; i != v4; ++i)
      {
        v14 = v5;
        v9 = *(v5 + 24);
        v10 = v6 + 1;
        if (v6 >= v9 >> 1)
        {
          sub_1AFC07708(v9 > 1, v6 + 1, 1);
          v5 = v14;
        }

        *(v5 + 16) = v10;
        v11 = v5 + v7;
        *(v11 + 32) = i;
        *(v11 + 40) = 0;
        v7 += 16;
        v6 = v10;
      }
    }

    sub_1AF4908E0(v5);
    return v15;
  }

  return v1;
}

void *sub_1AF97A3A0(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC3VFX6DoNode_count;
  v5 = OBJC_IVAR____TtC3VFX6DoNode_caseNames;
  *(v2 + OBJC_IVAR____TtC3VFX6DoNode_caseNames) = &unk_1F24FFDB0;
  *(v2 + v4) = a1;
  v6 = a1 - 1;
  v7 = MEMORY[0x1E69E7CC0];
  if (a1 - 1 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
    if (!v6)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v8 = sub_1AFDFD488();
    *(v8 + 16) = v6;
  }

  v9 = v8 + 32;
  if (v6 <= 3)
  {
    v10 = 0;
LABEL_9:
    v13 = ~v10 + a1;
    do
    {
      strcpy(v9, "then do that");
      *(v9 + 13) = 0;
      *(v9 + 14) = -5120;
      v9 += 16;
      --v13;
    }

    while (v13);
    goto LABEL_11;
  }

  v10 = v6 & 0xFFFFFFFFFFFFFFFCLL;
  v9 += 16 * (v6 & 0xFFFFFFFFFFFFFFFCLL);
  v11 = (v8 + 64);
  v12 = v6 & 0xFFFFFFFFFFFFFFFCLL;
  do
  {
    *(v11 - 2) = xmmword_1AFE87140;
    *(v11 - 1) = xmmword_1AFE87140;
    *v11 = xmmword_1AFE87140;
    v11[1] = xmmword_1AFE87140;
    v11 += 4;
    v12 -= 4;
  }

  while (v12);
  if (v6 != v10)
  {
    goto LABEL_9;
  }

LABEL_11:
  sub_1AF48FAF8(v8);
  *(v2 + v5) = &unk_1F24FFDF0;

  v2[3] = 0;
  v2[4] = 0;
  v2[2] = v7;
  sub_1AFDFC308();
  return v2;
}

char *sub_1AF97A4EC(char *a1)
{
  v2 = swift_allocObject();
  v3 = OBJC_IVAR____TtC3VFX6DoNode_caseNames;
  *(v2 + OBJC_IVAR____TtC3VFX6DoNode_count) = *&a1[OBJC_IVAR____TtC3VFX6DoNode_count];
  *(v2 + v3) = *&a1[v3];

  return sub_1AF96FD00(a1);
}

uint64_t sub_1AF97A54C(void *a1)
{
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF3C8();
  sub_1AF448018(v4, v5);
  sub_1AFDFEC28();
  if (!v2)
  {
    v6 = *(v1 + OBJC_IVAR____TtC3VFX6DoNode_caseNames);
    sub_1AF448018(v4, v5);
    sub_1AF97FB54(0, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1AF97F968(&qword_1EB639870, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
    sub_1AFDFEC38();
  }

  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v4);
}

void *sub_1AF97A690(void *a1)
{
  sub_1AF441150(a1, a1[3]);
  result = sub_1AFDFF388();
  if (!v2)
  {
    sub_1AF448018(v5, v6);
    *(v1 + OBJC_IVAR____TtC3VFX6DoNode_count) = sub_1AFDFEAB8();
    sub_1AF97FB54(0, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1AF448018(v5, v6);
    sub_1AF97F968(&qword_1ED726C58, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
    sub_1AFDFEAD8();
    *(v1 + OBJC_IVAR____TtC3VFX6DoNode_caseNames) = v4;

    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v5);
  }

  return result;
}

uint64_t sub_1AF97A800()
{

  v1 = sub_1AFA562B8(1, v0);
  v3 = v2;

  sub_1AF97FB54(0, &qword_1EB638390, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 32) = v1;
  *(inited + 40) = v3;
  sub_1AF441DD8(0);
  *(inited + 48) = 0;
  *(inited + 56) = 0;
  v5 = swift_initStackObject();
  *(v5 + 16) = xmmword_1AFE4C620;
  *(v5 + 32) = inited;
  *(v5 + 40) = &unk_1F2505C60;
  v6 = sub_1AFA56CA0();
  swift_setDeallocating();
  sub_1AF97FB54(0, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
  swift_arrayDestroy();
  v7 = sub_1AFA5413C(v6);

  return v7;
}

uint64_t sub_1AF97A93C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AFDFEA08();
  MEMORY[0x1B2718AE0](v4);

  sub_1AF97FB54(0, &qword_1EB638390, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 32) = 0x776F6C6625;
  *(inited + 40) = 0xE500000000000000;
  *(inited + 48) = 0;
  *(inited + 56) = 0;
  if (*(a2 + OBJC_IVAR____TtC3VFX6DoNode_count) <= a1)
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  else
  {

    v6 = sub_1AFA53D98(a1 + 1, a2);
    v8 = v7;
    v9 = swift_initStackObject();
    *(v9 + 16) = xmmword_1AFE431C0;
    *(v9 + 32) = v6;
    *(v9 + 40) = v8;
    sub_1AF441DD8(0);
    *(v9 + 48) = 0;
    *(v9 + 56) = 0;
    v10 = swift_initStackObject();
    *(v10 + 16) = xmmword_1AFE431C0;
    *(v10 + 32) = v9;
    v11 = v10 + 32;
    v12 = sub_1AFA56CA0();
    swift_setDeallocating();
    sub_1AF97FA74(v11, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
  }

  sub_1AF441DD8(0);
  v13 = swift_initStackObject();
  *(v13 + 16) = xmmword_1AFE4C620;
  *(v13 + 32) = inited;
  *(v13 + 40) = v12;
  v14 = sub_1AFA56CA0();
  swift_setDeallocating();
  sub_1AF97FB54(0, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
  swift_arrayDestroy();
  return v14;
}

uint64_t sub_1AF97AB94()
{

  sub_1AF919DAC(*(v0 + 24), *(v0 + 32));
  v1 = OBJC_IVAR____TtC3VFX4Node_authoringID;
  v2 = sub_1AFDFC318();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1AF97AD18@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  sub_1AF97FB54(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AFE431C0;
  v5 = swift_allocObject();
  *(v5 + 16) = 0xC000000000000008;
  *(v4 + 32) = v5 | 0x8000000000000000;
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(inited + 32) = v7 | 0x4000000000000000;
  sub_1AF48F7D8(inited);
  v8 = v4;
  v9 = swift_allocObject();
  v10 = v9;
  *(v9 + 16) = 0;
  v11 = OBJC_IVAR____TtC3VFX10SwitchNode_count;
  v12 = *(v2 + OBJC_IVAR____TtC3VFX10SwitchNode_count);
  if (v12 <= 0)
  {
    v13 = MEMORY[0x1E69E7CC0];
    if (!v12)
    {
      goto LABEL_9;
    }

    v14 = v9 | 0x4000000000000000;
    *(MEMORY[0x1E69E7CC0] + 32) = v9 | 0x4000000000000000;
    v15 = v13 + 32;
    goto LABEL_6;
  }

  v13 = sub_1AFDFD488();
  *(v13 + 16) = v12;
  v14 = v10 | 0x4000000000000000;
  *(v13 + 32) = v10 | 0x4000000000000000;
  v15 = v13 + 32;
  if (v12 != 1)
  {
LABEL_6:
    v16 = v12 - 1;
    v17 = (v15 + 8);
    do
    {
      *v17++ = v14;

      --v16;
    }

    while (v16);
  }

LABEL_9:

  sub_1AF48F7D8(v13);
  v18 = swift_allocObject();
  v19 = v18;
  *(v18 + 16) = 0xC000000000000008;
  v20 = *(v2 + v11);
  if (v20 >= 0x7FFFFFFFFFFFFFFFLL)
  {
    v21 = MEMORY[0x1E69E7CC0];
    if (v20 == -1)
    {
      goto LABEL_17;
    }

    v22 = v18 | 0x8000000000000000;
    *(MEMORY[0x1E69E7CC0] + 32) = v18 | 0x8000000000000000;
    v23 = v21 + 32;
    goto LABEL_14;
  }

  v21 = sub_1AFDFD488();
  *(v21 + 16) = v20 + 1;
  v22 = v19 | 0x8000000000000000;
  *(v21 + 32) = v19 | 0x8000000000000000;
  v23 = v21 + 32;
  if (v20)
  {
LABEL_14:
    v24 = (v23 + 8);
    do
    {
      *v24++ = v22;

      --v20;
    }

    while (v20);
  }

LABEL_17:

  sub_1AF48F7D8(v21);
  v25 = v8;
  sub_1AF48F7B0(&unk_1F24EDE08);
  v26 = *(v2 + v11);
  if (v26 <= 0)
  {
    v27 = MEMORY[0x1E69E7CC0];
    if (!v26)
    {
      goto LABEL_21;
    }
  }

  else
  {
    sub_1AF97FB54(0, &qword_1ED726CC0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    v27 = sub_1AFDFD488();
    *(v27 + 16) = v26;
  }

  bzero((v27 + 32), 16 * v26);
LABEL_21:
  v28 = MEMORY[0x1E69E7CC0];
  sub_1AF48F7B0(v27);
  v29 = *(v2 + v11);
  if (v29 < 1)
  {
    v30 = MEMORY[0x1E69E7CC0];
    if (!v29)
    {
      goto LABEL_31;
    }
  }

  else
  {
    sub_1AF97FB54(0, &qword_1ED726CC0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    v30 = sub_1AFDFD488();
    *(v30 + 16) = v29;
  }

  v31 = (v30 + 32);
  if (v29 <= 3)
  {
    v32 = 0;
LABEL_29:
    v35 = v29 - v32;
    do
    {
      *v31++ = xmmword_1AFE87150;
      --v35;
    }

    while (v35);
    goto LABEL_31;
  }

  v32 = v29 & 0xFFFFFFFFFFFFFFFCLL;
  v31 += v29 & 0xFFFFFFFFFFFFFFFCLL;
  v33 = (v30 + 64);
  v34 = v29 & 0xFFFFFFFFFFFFFFFCLL;
  do
  {
    *(v33 - 2) = xmmword_1AFE87150;
    *(v33 - 1) = xmmword_1AFE87150;
    *v33 = xmmword_1AFE87150;
    v33[1] = xmmword_1AFE87150;
    v33 += 4;
    v34 -= 4;
  }

  while (v34);
  if (v29 != v32)
  {
    goto LABEL_29;
  }

LABEL_31:
  sub_1AF48F7B0(v30);
  sub_1AF48F7B0(&unk_1F24EDE38);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1AFE431C0;
  result = swift_allocObject();
  *(result + 16) = 0xC000000000000008;
  *(v36 + 32) = result | 0x8000000000000000;
  *a1 = v25;
  a1[1] = v36;
  a1[2] = &unk_1F24EDE68;
  a1[3] = &unk_1F24EDDD8;
  a1[4] = v28;
  a1[5] = v28;
  return result;
}

void *sub_1AF97B164()
{
  v1 = v0;
  sub_1AF4908E0(&unk_1F25043E8);
  v2 = OBJC_IVAR____TtC3VFX10SwitchNode_count;
  v3 = *(v0 + OBJC_IVAR____TtC3VFX10SwitchNode_count);
  if (v3 < 1)
  {
    v4 = MEMORY[0x1E69E7CC0];
    if (!v3)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v4 = sub_1AFDFD488();
    *(v4 + 16) = v3;
  }

  v5 = 32;
  do
  {
    v6 = v4 + v5;
    *v6 = 3;
    *(v6 + 8) = 2;
    v5 += 16;
    --v3;
  }

  while (v3);
LABEL_6:
  sub_1AF4908E0(v4);
  v7 = *(v1 + v2);
  if (v7 >= 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = MEMORY[0x1E69E7CC0];
    if (v7 == -1)
    {
      goto LABEL_13;
    }

    *(MEMORY[0x1E69E7CC0] + 32) = 2;
    v9 = v8 + 32;
    *(v8 + 40) = 2;
  }

  else
  {
    v8 = sub_1AFDFD488();
    *(v8 + 16) = v7 + 1;
    *(v8 + 32) = 2;
    v9 = v8 + 32;
    *(v8 + 40) = 2;
    if (!v7)
    {
      goto LABEL_13;
    }
  }

  v10 = (v9 + 24);
  do
  {
    *(v10 - 1) = 2;
    *v10 = 2;
    v10 += 16;
    --v7;
  }

  while (v7);
LABEL_13:
  sub_1AF4908E0(v8);
  return &unk_1F25043B8;
}

uint64_t sub_1AF97B2F8(char *a1)
{
  v2 = sub_1AF97EFF0(v1, *a1);
  v3 = sub_1AFA5413C(v2);

  return v3;
}

uint64_t sub_1AF97B348(uint64_t a1)
{
  v1 = sub_1AFDFEA08();
  MEMORY[0x1B2718AE0](v1);

  sub_1AF97FB54(0, &qword_1EB638390, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 32) = 0x776F6C6625;
  *(inited + 40) = 0xE500000000000000;
  sub_1AF441DD8(0);
  *(inited + 48) = 0;
  *(inited + 56) = 0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_1AFE431C0;
  *(v3 + 32) = inited;
  v4 = v3 + 32;
  v5 = sub_1AFA56CA0();
  swift_setDeallocating();
  sub_1AF97FA74(v4, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
  return v5;
}

uint64_t sub_1AF97B588@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_1AF97FB54(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1AFE431C0;
  result = swift_allocObject();
  *(result + 16) = a1;
  *(v6 + 32) = result | 0x8000000000000000;
  v8 = MEMORY[0x1E69E7CC0];
  *a3 = MEMORY[0x1E69E7CC0];
  a3[1] = v6;
  a3[2] = a2;
  a3[3] = v8;
  a3[4] = v8;
  a3[5] = v8;
  return result;
}

uint64_t sub_1AF97B6B8()
{
  sub_1AF441194(v0 + OBJC_IVAR____TtC3VFX16EnumConstantNode_value, v4);
  sub_1AF441150(v4, v4[3]);
  DynamicType = swift_getDynamicType();
  v2 = v4[4];
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v4);
  return (*(v2 + 40))(DynamicType, v2);
}

uint64_t sub_1AF97B750()
{
  v1 = sub_1AF441150((v0 + OBJC_IVAR____TtC3VFX16EnumConstantNode_value), *(v0 + OBJC_IVAR____TtC3VFX16EnumConstantNode_value + 24));
  v2 = MEMORY[0x1EEE9AC00](v1);
  (*(v4 + 16))(&v6 - v3, v2);
  return sub_1AFDFCF88();
}

uint64_t sub_1AF97B818(void *a1)
{
  v2 = v1;
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF3D8();
  v3 = *(v1 + OBJC_IVAR____TtC3VFX16EnumConstantNode_value + 24);
  v4 = sub_1AF441150((v2 + OBJC_IVAR____TtC3VFX16EnumConstantNode_value), *(v2 + OBJC_IVAR____TtC3VFX16EnumConstantNode_value + 24));
  v7[3] = v3;
  v5 = sub_1AF585714(v7);
  (*(*(v3 - 8) + 16))(v5, v4, v3);
  sub_1AF448018(v8, v8[3]);
  sub_1AF48726C();
  sub_1AFDFEF28();
  sub_1AF4872C0(v7);
  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v8);
}

void *sub_1AF97B91C(void *a1)
{
  sub_1AF441150(a1, a1[3]);
  result = sub_1AFDFF398();
  if (!v2)
  {
    sub_1AF441150(v11, v11[3]);
    sub_1AF4870B8();
    sub_1AFDFEE88();
    sub_1AF449D40(&v9, &v8);
    sub_1AF5C5358(0, &qword_1EB641060, &protocol descriptor for EnumMeta);
    if (swift_dynamicCast())
    {
      sub_1AF0FBA54(v6, v10);
      v4 = OBJC_IVAR____TtC3VFX16EnumConstantNode_value;
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0((v1 + OBJC_IVAR____TtC3VFX16EnumConstantNode_value));
      sub_1AF0FBA54(v10, v1 + v4);
    }

    else
    {
      v7 = 0;
      memset(v6, 0, sizeof(v6));
      sub_1AF97F8A4(v6);
      sub_1AF4567E0();
      swift_allocError();
      *v5 = xmmword_1AFE87160;
      *(v5 + 16) = 32;
      swift_willThrow();
    }

    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v11);
  }

  return result;
}

uint64_t sub_1AF97BB54(unsigned __int8 *a1)
{
  v2 = *a1;
  sub_1AF441194(v1 + OBJC_IVAR____TtC3VFX16EnumConstantNode_value, v8);
  v3 = v9;
  v4 = v10;
  sub_1AF441150(v8, v9);
  v5 = (*(v4 + 48))(v3, v4);
  v11[3] = MEMORY[0x1E69E7360];
  v11[0] = v5;
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v8);
  v6 = sub_1AF92F69C(0xC000000000000040, v11, v2);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v11);
  return v6;
}

uint64_t sub_1AF97BC0C()
{
  sub_1AF441194(v0 + OBJC_IVAR____TtC3VFX16EnumConstantNode_value, v5);
  sub_1AF441150(v5, v5[3]);
  DynamicType = swift_getDynamicType();
  v2 = v5[4];
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v5);
  v3 = (*(v2 + 40))(DynamicType, v2);
  v5[0] = 0x746963696C706D49;
  v5[1] = 0xE800000000000000;
  MEMORY[0x1B2718AE0](v3);

  return v5[0];
}

char *sub_1AF97BCBC(char *a1)
{
  v2 = swift_allocObject();
  sub_1AF441194(&a1[OBJC_IVAR____TtC3VFX16EnumConstantNode_value], v2 + OBJC_IVAR____TtC3VFX16EnumConstantNode_value);
  return sub_1AF96FD00(a1);
}

uint64_t sub_1AF97BD0C()
{

  sub_1AF919DAC(*(v0 + 24), *(v0 + 32));
  v1 = OBJC_IVAR____TtC3VFX4Node_authoringID;
  v2 = sub_1AFDFC318();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0((v0 + OBJC_IVAR____TtC3VFX16EnumConstantNode_value));

  return swift_deallocClassInstance();
}

uint64_t sub_1AF97BF20@<X0>(uint64_t *a1@<X8>)
{
  v2 = MEMORY[0x1E69E6F90];
  sub_1AF97FB54(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1AFE431C0;
  v4 = swift_allocObject();
  *(v4 + 16) = 0xC000000000000070;
  *(v3 + 32) = v4 | 0x8000000000000000;
  sub_1AF97FB54(0, &unk_1EB630980, &type metadata for AnyValue, v2);
  v5 = swift_allocObject();
  v6 = MEMORY[0x1E69E6158];
  *(v5 + 16) = xmmword_1AFE431C0;
  v8[3] = v6;
  v8[0] = 0x726156796DLL;
  v8[1] = 0xE500000000000000;
  sub_1AF975674(v8, (v5 + 32));
  result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v8);
  *a1 = v3;
  a1[1] = &unk_1F24F11E0;
  a1[2] = &unk_1F24F1180;
  a1[3] = &unk_1F24F11B0;
  a1[4] = MEMORY[0x1E69E7CC0];
  a1[5] = v5;
  return result;
}

uint64_t sub_1AF97C0CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = MEMORY[0x1E69E6F90];
  sub_1AF97FB54(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1AFE4C680;
  v11 = swift_allocObject();
  *(v11 + 16) = 0xC000000000000008;
  *(v10 + 32) = v11 | 0x8000000000000000;
  v12 = swift_allocObject();
  *(v12 + 16) = 0xC000000000000070;
  *(v10 + 40) = v12 | 0x8000000000000000;
  *(v10 + 48) = 0xA000000000000000;
  sub_1AF97FB54(0, &unk_1EB630980, &type metadata for AnyValue, v9);
  v13 = swift_allocObject();
  v14 = MEMORY[0x1E69E6530];
  *(v13 + 64) = MEMORY[0x1E69E6530];
  *(v13 + 16) = xmmword_1AFE4C680;
  *(v13 + 32) = xmmword_1AFE87170;
  v18[3] = MEMORY[0x1E69E6158];
  v18[0] = a1;
  v18[1] = a2;
  sub_1AF975674(v18, (v13 + 72));
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v18);
  *(v13 + 144) = v14;
  *(v13 + 112) = xmmword_1AFE87170;
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1AFE431C0;
  result = swift_allocObject();
  *(result + 16) = 0xC000000000000008;
  *(v15 + 32) = result | 0x8000000000000000;
  *a5 = v10;
  a5[1] = v15;
  a5[2] = a3;
  a5[3] = a4;
  a5[4] = MEMORY[0x1E69E7CC0];
  a5[5] = v13;
  return result;
}

uint64_t sub_1AF97C298(unsigned __int8 *a1)
{
  v2 = v1;

  v4 = sub_1AF9A1B58(1, 0);
  v6 = v5;

  if (v6)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0;
  }

  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xE000000000000000;
  }

  v9 = sub_1AF95A008(v7, v8);
  v11 = v10;

  v12 = *a1;
  v13 = *(v2 + 24);
  v14 = *(v2 + 32);
  v15 = *(v13 + 48);
  sub_1AF448650(v13, v14);
  sub_1AF442064(v15);

  v16 = sub_1AF937FF8(v12, v15);
  if ((~v16 & 0xF000000000000007) == 0)
  {
    sub_1AF442064(v15);
    v16 = v15;
  }

  if (v12 == 3)
  {
    v22 = 544499052;
  }

  else
  {
    v22 = 0;
    v17 = sub_1AF937FF8(v12, v16);
    if ((~v17 & 0xF000000000000007) == 0)
    {
      sub_1AF442064(v16);
      v17 = v16;
    }

    v18 = sub_1AF94B594(v12, v17);
    v20 = v19;
    sub_1AF445BE4(v17);
    MEMORY[0x1B2718AE0](v18, v20);

    MEMORY[0x1B2718AE0](32, 0xE100000000000000);
  }

  MEMORY[0x1B2718AE0](v9, v11);

  MEMORY[0x1B2718AE0](2112800, 0xE300000000000000);
  MEMORY[0x1B2718AE0](12837, 0xE200000000000000);
  MEMORY[0x1B2718AE0](59, 0xE100000000000000);
  sub_1AF445BE4(v16);
  sub_1AF445BE4(v15);
  return v22;
}

unint64_t sub_1AF97C5BC@<X0>(uint64_t *a1@<X8>)
{
  sub_1AF97FB54(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1AFE4C680;
  v4 = swift_allocObject();
  *(v4 + 16) = 0xC000000000000008;
  *(v3 + 32) = v4 | 0x8000000000000000;
  v5 = swift_allocObject();
  *(v5 + 16) = 0xC000000000000070;
  *(v3 + 40) = v5 | 0x8000000000000000;
  v6 = swift_allocObject();
  v7 = *(v1 + OBJC_IVAR____TtC3VFX21_ResolvedVariableNode_type);
  *(v6 + 16) = v7;
  *(v3 + 48) = v6 | 0x8000000000000000;
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1AFE431C0;
  v9 = swift_allocObject();
  *(v9 + 16) = 0xC000000000000008;
  *(v8 + 32) = v9 | 0x8000000000000000;
  result = sub_1AF442064(v7);
  *a1 = v3;
  a1[1] = v8;
  a1[2] = &unk_1F24F24B8;
  a1[3] = &unk_1F24F24E8;
  v11 = MEMORY[0x1E69E7CC0];
  a1[4] = MEMORY[0x1E69E7CC0];
  a1[5] = v11;
  return result;
}

uint64_t sub_1AF97C714()
{

  v0 = sub_1AF9A1B58(1, 0);
  v2 = v1;

  if (v2)
  {
    v3 = v0;
  }

  else
  {
    v3 = 0;
  }

  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = 0xE000000000000000;
  }

  v5 = sub_1AF95A008(v3, v4);

  MEMORY[0x1B2718AE0](0x3B3225203D20, 0xE600000000000000);
  return v5;
}

unint64_t sub_1AF97C7FC@<X0>(uint64_t *a1@<X8>)
{
  sub_1AF97FB54(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1AFE431C0;
  v4 = swift_allocObject();
  *(v4 + 16) = 0xC000000000000070;
  *(v3 + 32) = v4 | 0x8000000000000000;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1AFE431C0;
  v6 = swift_allocObject();
  v7 = *(v1 + OBJC_IVAR____TtC3VFX21_ResolvedVariableNode_type);
  *(v6 + 16) = v7;
  *(v5 + 32) = v6 | 0x8000000000000000;
  result = sub_1AF442064(v7);
  *a1 = v3;
  a1[1] = v5;
  a1[2] = &unk_1F24F2458;
  a1[3] = &unk_1F24F2488;
  v9 = MEMORY[0x1E69E7CC0];
  a1[4] = MEMORY[0x1E69E7CC0];
  a1[5] = v9;
  return result;
}

uint64_t sub_1AF97C920(unsigned __int8 *a1)
{
  v2 = v1;

  v4 = sub_1AF9A1B58(1, 0);
  v6 = v5;

  if (v6)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0;
  }

  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xE000000000000000;
  }

  v9 = sub_1AF95A008(v7, v8);
  v11 = v10;

  v12 = *a1;
  v14 = *(v2 + 24);
  v13 = *(v2 + 32);
  v15 = *(v13 + 32);
  sub_1AF448650(v14, v13);
  sub_1AF442064(v15);

  v16 = sub_1AF937FF8(v12, v15);
  if ((~v16 & 0xF000000000000007) == 0)
  {
    sub_1AF442064(v15);
    v16 = v15;
  }

  v17 = sub_1AF94B594(v12, v16);
  v19 = v18;
  sub_1AF445BE4(v16);
  sub_1AF445BE4(v15);
  MEMORY[0x1B2718AE0](v17, v19);

  MEMORY[0x1B2718AE0](0x203D2030722520, 0xE700000000000000);
  MEMORY[0x1B2718AE0](v9, v11);

  MEMORY[0x1B2718AE0](59, 0xE100000000000000);
  return 0;
}

char *sub_1AF97CA94(char *a1, void *a2)
{
  v4 = swift_allocObject();
  v5 = *&a1[*a2];
  *(v4 + *a2) = v5;
  sub_1AF442064(v5);
  return sub_1AF96FD00(a1);
}

uint64_t sub_1AF97CAEC(void *a1)
{

  sub_1AF919DAC(*(v1 + 24), *(v1 + 32));
  v3 = OBJC_IVAR____TtC3VFX4Node_authoringID;
  v4 = sub_1AFDFC318();
  (*(*(v4 - 8) + 8))(v1 + v3, v4);
  sub_1AF445BE4(*(v1 + *a1));

  return swift_deallocClassInstance();
}

void sub_1AF97CC30(void *a1@<X8>)
{
  v1 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = v1;
  a1[2] = &unk_1F24F1318;
  a1[3] = v1;
  a1[4] = v1;
  a1[5] = v1;
}

uint64_t sub_1AF97CC94@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1AF97FB54(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AFE431C0;
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v4 + 32) = v5 | 0x4000000000000000;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1AFE431C0;
  result = swift_allocObject();
  *(result + 16) = 0;
  *(v6 + 32) = result | 0x4000000000000000;
  *a2 = v4;
  a2[1] = v6;
  v8 = MEMORY[0x1E69E7CC0];
  a2[2] = a1;
  a2[3] = v8;
  a2[4] = v8;
  a2[5] = v8;
  return result;
}

uint64_t sub_1AF97CE3C(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = sub_1AF97F7A4(*a1, a4, a5, a6);
  v7 = sub_1AFA5413C(v6);

  return v7;
}

uint64_t sub_1AF97CEAC@<X0>(uint64_t *a1@<X8>)
{
  v2 = MEMORY[0x1E69E6F90];
  sub_1AF97FB54(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1AFE4C620;
  v4 = swift_allocObject();
  *(v4 + 16) = 0xC000000000000070;
  *(v3 + 32) = v4 | 0x8000000000000000;
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v3 + 40) = v5 | 0x4000000000000000;
  sub_1AF97FB54(0, &unk_1EB630980, &type metadata for AnyValue, v2);
  v6 = swift_allocObject();
  v7 = MEMORY[0x1E69E6158];
  *(v6 + 16) = xmmword_1AFE4C620;
  v10[3] = v7;
  v10[0] = 0x3A65756C6176;
  v10[1] = 0xE600000000000000;
  sub_1AF975674(v10, (v6 + 32));
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v10);
  *(v6 + 104) = MEMORY[0x1E69E6530];
  *(v6 + 72) = xmmword_1AFE87170;
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1AFE431C0;
  result = swift_allocObject();
  *(result + 16) = 0;
  *(v8 + 32) = result | 0x4000000000000000;
  *a1 = v3;
  a1[1] = v8;
  a1[2] = &unk_1F24F1CC8;
  a1[3] = &unk_1F24F1C88;
  a1[4] = MEMORY[0x1E69E7CC0];
  a1[5] = v6;
  return result;
}

uint64_t sub_1AF97D064(_BYTE *a1)
{
  v2 = v1;

  v4 = sub_1AF9A1B58(1, 0);
  v6 = v5;

  if (v6)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0;
  }

  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xE000000000000000;
  }

  v9 = *(v1 + 24);
  v10 = *(v2 + 32);
  v11 = *(v9 + 40);
  sub_1AF448650(v9, v10);
  sub_1AF442064(v11);

  if (*a1 == 3)
  {
    sub_1AFDFE218();

    v16 = 0x28676F6C5F786676;
    MEMORY[0x1B2718AE0](v7, v8);

    MEMORY[0x1B2718AE0](34, 0xE100000000000000);
    MEMORY[0x1B2718AE0](34, 0xE100000000000000);

    v12 = 0xD000000000000014;
    v13 = 0x80000001AFF3CA20;
  }

  else
  {
    v16 = 0;
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0xD000000000000038, 0x80000001AFF3C9C0);
    MEMORY[0x1B2718AE0](v7, v8);

    MEMORY[0x1B2718AE0](34, 0xE100000000000000);
    MEMORY[0x1B2718AE0](34, 0xE100000000000000);

    MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
    sub_1AF9102F8(v11);
    v14 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v14);

    v13 = 0x80000001AFF3CA00;
    v12 = 0xD000000000000012;
  }

  MEMORY[0x1B2718AE0](v12, v13);
  sub_1AF445BE4(v11);
  return v16;
}

uint64_t sub_1AF97D300(_BYTE *a1)
{
  v2 = v1;

  v4 = sub_1AF9A1B58(1, 0);
  v6 = v5;

  if (v6)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0;
  }

  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xE000000000000000;
  }

  v9 = *(v1 + 24);
  v10 = *(v2 + 32);
  v11 = *(v9 + 48);
  sub_1AF448650(v9, v10);
  sub_1AF442064(v11);

  if (*a1 == 3)
  {
    sub_1AFDFE218();

    v16 = 0x28676F6C5F786676;
    MEMORY[0x1B2718AE0](v7, v8);

    MEMORY[0x1B2718AE0](34, 0xE100000000000000);
    MEMORY[0x1B2718AE0](34, 0xE100000000000000);

    v12 = 0xD000000000000014;
    v13 = 0x80000001AFF3C9A0;
  }

  else
  {
    v16 = 0;
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0xD000000000000038, 0x80000001AFF3C940);
    MEMORY[0x1B2718AE0](v7, v8);

    MEMORY[0x1B2718AE0](34, 0xE100000000000000);
    MEMORY[0x1B2718AE0](34, 0xE100000000000000);

    MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
    sub_1AF9102F8(v11);
    v14 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v14);

    v13 = 0x80000001AFF3C980;
    v12 = 0xD000000000000012;
  }

  MEMORY[0x1B2718AE0](v12, v13);
  sub_1AF445BE4(v11);
  return v16;
}

uint64_t sub_1AF97D5CC@<X0>(uint64_t *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC3VFX14StringJoinNode_count;
  v4 = *(v1 + OBJC_IVAR____TtC3VFX14StringJoinNode_count);
  if (v4 < 1)
  {
    v5 = MEMORY[0x1E69E7CC0];
    if (!v4)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v5 = sub_1AFDFD488();
    *(v5 + 16) = v4;
  }

  memset_pattern16((v5 + 32), &unk_1AFE854D0, 8 * v4);
LABEL_5:
  v6 = MEMORY[0x1E69E7CC0];
  sub_1AF97FB54(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1AFE431C0;
  v8 = swift_allocObject();
  *(v8 + 16) = 0xC000000000000070;
  *(v7 + 32) = v8 | 0x8000000000000000;
  v13[3] = MEMORY[0x1E69E6158];
  v13[0] = 0;
  v13[1] = 0xE000000000000000;
  sub_1AF975674(v13, v14);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v13);
  v9 = *(v1 + v3);
  if (v9 < 1)
  {
    v10 = MEMORY[0x1E69E7CC0];
    if (!v9)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v10 = sub_1AFDFD488();
    *(v10 + 16) = v9;
  }

  v11 = v10 + 32;
  do
  {
    sub_1AF914FF0(v14, v11);
    v11 += 40;
    --v9;
  }

  while (v9);
LABEL_10:
  result = sub_1AF9151B0(v14);
  *a1 = v5;
  a1[1] = v7;
  a1[2] = &unk_1F24EF260;
  a1[3] = v6;
  a1[4] = v6;
  a1[5] = v10;
  return result;
}

uint64_t sub_1AF97D76C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1AFDFEA08();
  v7 = v6;
  sub_1AF97FB54(0, &qword_1EB638390, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 32) = v5;
  *(inited + 40) = v7;
  *(inited + 48) = 0;
  *(inited + 56) = 0;
  v9 = swift_initStackObject();
  *(v9 + 16) = xmmword_1AFE431C0;
  *(v9 + 32) = a2;
  *(v9 + 40) = a3;
  sub_1AF441DD8(0);
  *(v9 + 48) = 0;
  *(v9 + 56) = 0;
  v10 = swift_initStackObject();
  *(v10 + 16) = xmmword_1AFE4C680;
  *(v10 + 32) = &unk_1F2504D68;
  *(v10 + 40) = inited;
  *(v10 + 48) = v9;

  v11 = sub_1AFA56CA0();
  swift_setDeallocating();
  sub_1AF97FB54(0, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
  swift_arrayDestroy();
  return v11;
}

uint64_t sub_1AF97D9A8(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a1[3];
  v7 = a1[4];
  sub_1AF441150(a1, v6);
  v9 = *(v4 + *a4);
  return sub_1AF974C50(&v9, v6, MEMORY[0x1E69E6530], v7, MEMORY[0x1E69E6538]);
}

void *sub_1AF97DA40(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_1AF441150(a1, a1[3]);
  result = sub_1AF974940();
  if (!v5)
  {
    *(v4 + *a4) = v8;
  }

  return result;
}

uint64_t destroy for AnyValue(unint64_t *a1)
{
  v1 = a1 + 1;
  sub_1AF445BE4(*a1);
  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v1);
}

unint64_t *initializeWithCopy for AnyValue(unint64_t *a1, unint64_t *a2)
{
  v4 = *a2;
  sub_1AF442064(*a2);
  *a1 = v4;
  v5 = a2[4];
  a1[4] = v5;
  (**(v5 - 8))(a1 + 1, a2 + 1);
  return a1;
}

unint64_t *assignWithCopy for AnyValue(unint64_t *a1, unint64_t *a2)
{
  v3 = (a2 + 1);
  v4 = *a2;
  sub_1AF442064(*a2);
  v5 = *a1;
  *a1 = v4;
  sub_1AF445BE4(v5);
  sub_1AF60685C(a1 + 1, v3);
  return a1;
}

uint64_t assignWithTake for AnyValue(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;
  sub_1AF445BE4(v4);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0((a1 + 8));
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t getEnumTagSinglePayload for AnyValue(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for AnyValue(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

unint64_t sub_1AF97DD7C()
{
  result = qword_1EB6310E0;
  if (!qword_1EB6310E0)
  {
    result = swift_getWitnessTable(byte_1AFE875E8, &type metadata for AnyValue, v0, v1);
    atomic_store(result, &qword_1EB6310E0);
  }

  return result;
}

uint64_t sub_1AF97DDD0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  *a2 = v4;
  sub_1AF445BE4(v5);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0((a2 + 8));
  v6 = *(a1 + 1);
  *(a2 + 24) = *(a1 + 3);
  *(a2 + 8) = v6;
  return a2;
}

unint64_t sub_1AF97DE20()
{
  result = qword_1EB640A50;
  if (!qword_1EB640A50)
  {
    result = swift_getWitnessTable(byte_1AFE875C0, &type metadata for AnyValue, v0, v1);
    atomic_store(result, &qword_1EB640A50);
  }

  return result;
}

void *sub_1AF97DE74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[3] = a3;
  v11[4] = a4;
  v6 = sub_1AF585714(v11);
  (*(*(a3 - 8) + 32))(v6, a1, a3);
  type metadata accessor for ImplicitEnumConstantNode(0);
  v7 = swift_allocObject();
  sub_1AF441194(v11, v10);
  sub_1AF441194(v10, v7 + OBJC_IVAR____TtC3VFX16EnumConstantNode_value);
  v8 = MEMORY[0x1E69E7CC0];
  v7[3] = 0;
  v7[4] = 0;
  v7[2] = v8;
  sub_1AFDFC308();
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v10);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v11);
  return v7;
}

uint64_t sub_1AF97DF4C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR____TtC3VFX12_ComposeNode_type);
  sub_1AF442064(v4);
  v5 = sub_1AF90DCF4(v4);
  v7 = v6;
  sub_1AF445BE4(v4);
  sub_1AF949EC8(v5, v7);
  if (v5)
  {
    v25 = a1;
    v26 = MEMORY[0x1E69E7CC0];
    sub_1AFC05CE4(0, v5 & ~(v5 >> 63), 0);
    v8 = 0;
    do
    {
      v9 = sub_1AFDFEA08();
      MEMORY[0x1B2718AE0](v9);

      v11 = *(v26 + 16);
      v10 = *(v26 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_1AFC05CE4(v10 > 1, v11 + 1, 1);
      }

      ++v8;
      *(v26 + 16) = v11 + 1;
      v12 = v26 + 16 * v11;
      *(v12 + 32) = 37;
      *(v12 + 40) = 0xE100000000000000;
    }

    while (v5 != v8);
    a1 = v25;
  }

  sub_1AF97FB54(0, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1AF488088();
  v13 = sub_1AFDFCD98();
  v15 = v14;

  v16 = *(*(v2 + 32) + 32);
  sub_1AF448650(*(v2 + 24), *(v2 + 32));
  sub_1AF442064(v16);

  v17 = *(v2 + 24);
  v18 = *(v2 + 32);
  v19 = *(v18 + 32);
  sub_1AF448650(v17, v18);
  sub_1AF442064(v19);

  v20 = sub_1AF94B4E8(a1, v19);
  v22 = v21;
  sub_1AF445BE4(v19);
  MEMORY[0x1B2718AE0](40, 0xE100000000000000);
  MEMORY[0x1B2718AE0](v13, v15);

  MEMORY[0x1B2718AE0](41, 0xE100000000000000);
  v23 = sub_1AF9316FC(3174949, 0xE300000000000000, v16, v20, v22, a1);

  sub_1AF445BE4(v16);
  return v23;
}

uint64_t sub_1AF97E1F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(*(a2 + 32) + 32);
  sub_1AF448650(*(a2 + 24), *(a2 + 32));
  sub_1AF442064(v11);

  v12 = sub_1AF9316FC(3174949, 0xE300000000000000, v11, a3, a4, a1);
  v14 = v13;
  sub_1AF445BE4(v11);
  sub_1AF97FB54(0, &qword_1EB638390, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 32) = v12;
  *(inited + 40) = v14;
  *(inited + 48) = 0;
  *(inited + 56) = 0;
  v16 = swift_initStackObject();
  *(v16 + 16) = xmmword_1AFE431C0;
  *(v16 + 32) = a5;
  *(v16 + 40) = a6;
  sub_1AF441DD8(0);
  *(v16 + 48) = 0;
  *(v16 + 56) = 0;
  v17 = swift_initStackObject();
  *(v17 + 16) = xmmword_1AFE4C680;
  *(v17 + 32) = inited;
  *(v17 + 40) = &unk_1F25050A0;
  *(v17 + 48) = v16;

  v18 = sub_1AFA56CA0();
  swift_setDeallocating();
  sub_1AF97FB54(0, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
  swift_arrayDestroy();
  return v18;
}

uint64_t sub_1AF97E3AC(unsigned int a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC3VFX12_ComposeNode_type);
  sub_1AF442064(v2);
  v3 = sub_1AF90DCF4(v2);
  v5 = v4;
  sub_1AF445BE4(v2);
  sub_1AF949EC8(v3, v5);
  if (v3)
  {
    v23 = MEMORY[0x1E69E7CC0];
    sub_1AFC05CE4(0, v3 & ~(v3 >> 63), 0);
    v6 = 0;
    do
    {
      v7 = sub_1AFDFEA08();
      MEMORY[0x1B2718AE0](v7);

      v8 = *(*(v21 + 32) + 8 * v6 + 32);
      sub_1AF448650(*(v21 + 24), *(v21 + 32));
      sub_1AF442064(v8);

      v9 = *(*(v21 + 24) + 32);
      sub_1AF448650(*(v21 + 24), *(v21 + 32));
      sub_1AF442064(v9);

      v10 = sub_1AF931868(v9, v6, a1);
      v12 = v11;
      sub_1AF445BE4(v9);
      MEMORY[0x1B2718AE0](v10, v12);

      v13 = sub_1AF9316FC(29221, 0xE200000000000000, v8, 12325, 0xE200000000000000, a1);
      v15 = v14;

      sub_1AF445BE4(v8);
      v17 = *(v23 + 16);
      v16 = *(v23 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_1AFC05CE4(v16 > 1, v17 + 1, 1);
      }

      ++v6;
      *(v23 + 16) = v17 + 1;
      v18 = v23 + 16 * v17;
      *(v18 + 32) = v13;
      *(v18 + 40) = v15;
    }

    while (v3 != v6);
  }

  sub_1AF97FB54(0, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1AF488088();
  v19 = sub_1AFDFCD98();

  return v19;
}

uint64_t sub_1AF97E63C(uint64_t a1, unsigned int a2)
{
  v2 = *(*(a1 + 24) + 16);

  if (v2)
  {
    v4 = 0;
    v5 = v3 + 32;
    v6 = MEMORY[0x1E69E7CC0];
    do
    {
      v7 = *(v5 + 8 * v4);
      sub_1AF442064(v7);
      v8 = sub_1AF937FF8(a2, v7);
      if ((~v8 & 0xF000000000000007) == 0)
      {
        sub_1AF442064(v7);
        v8 = v7;
      }

      v9 = sub_1AF90F890(v8, 0xC000000000000018);
      sub_1AF445BE4(v8);
      v10 = (v9 & 1) == 0;
      if (v9)
      {
        v11 = 0;
      }

      else
      {
        v11 = 38;
      }

      if (v10)
      {
        v12 = 0xE100000000000000;
      }

      else
      {
        v12 = 0xE000000000000000;
      }

      sub_1AF9102F8(v7);
      v13 = sub_1AFDFEA08();
      MEMORY[0x1B2718AE0](v13);

      MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
      MEMORY[0x1B2718AE0](v11, v12);

      MEMORY[0x1B2718AE0](37, 0xE100000000000000);
      v14 = sub_1AFDFEA08();
      MEMORY[0x1B2718AE0](v14);

      MEMORY[0x1B2718AE0](2915616, 0xE300000000000000);
      sub_1AF97FB54(0, &qword_1EB638390, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E6F90]);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1AFE431C0;
      *(inited + 32) = 8315;
      *(inited + 40) = 0xE200000000000000;
      sub_1AF441DD8(0);
      *(inited + 48) = 0;
      *(inited + 56) = 0;
      v16 = swift_initStackObject();
      *(v16 + 16) = xmmword_1AFE431C0;
      *(v16 + 32) = inited;
      v17 = v16 + 32;
      v18 = sub_1AFA56CA0();
      swift_setDeallocating();
      sub_1AF97FA74(v17, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_1AF426BC8(0, v6[2] + 1, 1, v6);
      }

      v20 = v6[2];
      v19 = v6[3];
      if (v20 >= v19 >> 1)
      {
        v6 = sub_1AF426BC8(v19 > 1, v20 + 1, 1, v6);
      }

      ++v4;
      sub_1AF445BE4(v7);
      v6[2] = v20 + 1;
      v6[v20 + 4] = v18;
    }

    while (v2 != v4);
  }

  v21 = sub_1AFA56CA0();

  sub_1AF441DD8(0);
  v22 = swift_initStackObject();
  *(v22 + 16) = xmmword_1AFE431C0;
  *(v22 + 32) = v21;
  v23 = v22 + 32;
  v24 = sub_1AFA56CA0();
  swift_setDeallocating();
  sub_1AF97FA74(v23, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
  return v24;
}