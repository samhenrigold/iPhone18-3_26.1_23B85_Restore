uint64_t sub_1ABB96BE4(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1ABE7A0B4();
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_1ABB96E48((*a3 + 8 * *v9), (*a3 + 8 * *v11), (*a3 + 8 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_1ABB96D10(uint64_t *a1, double *a2, void *a3)
{
  v4 = a1;
  v15 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1ABE7A0B4();
    v15 = result;
  }

  v12 = v4;
  *v4 = v15;
  v6 = (v15 + 16);
  for (i = *(v15 + 16); ; *v6 = i)
  {
    if (i < 2)
    {
LABEL_10:
      *v12 = v15;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v4 = (v15 + 16 * i);
    v8 = *v4;
    v9 = &v6[2 * i];
    v10 = v9[1];
    sub_1ABB96FCC((*a3 + 40 * *v4), (*a3 + 40 * *v9), *a3 + 40 * v10, a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v10 < v8)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (i - 2 >= *v6)
    {
      goto LABEL_12;
    }

    *v4 = v8;
    v4[1] = v10;
    v11 = *v6 - i;
    if (*v6 < i)
    {
      goto LABEL_13;
    }

    i = *v6 - 1;
    result = memmove(v9, v9 + 2, 16 * v11);
  }

  *v12 = v15;
  __break(1u);
  return result;
}

uint64_t sub_1ABB96E48(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 8;
  v9 = (a3 - a2) / 8;
  if (v8 < v9)
  {
    sub_1ABAE304C(a1, (a2 - a1) / 8, a4);
    v10 = &v4[8 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      v12 = *v6;
      if (*(*v4 + 24) >= *(*v6 + 24))
      {
        break;
      }

      v13 = v7 == v6;
      v6 += 8;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
    }

    v12 = *v4;
    v13 = v7 == v4;
    v4 += 8;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v12;
    goto LABEL_13;
  }

  sub_1ABAE304C(a2, (a3 - a2) / 8, a4);
  v10 = &v4[8 * v9];
LABEL_15:
  v14 = v6 - 8;
  for (v5 -= 8; v10 > v4 && v6 > v7; v5 -= 8)
  {
    v16 = *(v10 - 1);
    if (*(*v14 + 24) < *(v16 + 24))
    {
      v13 = v5 + 8 == v6;
      v6 -= 8;
      if (!v13)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_15;
    }

    if (v10 != v5 + 8)
    {
      *v5 = v16;
    }

    v10 -= 8;
  }

LABEL_28:
  v17 = (v10 - v4) / 8;
  if (v6 != v4 || v6 >= &v4[8 * v17])
  {
    memmove(v6, v4, 8 * v17);
  }

  return 1;
}

uint64_t sub_1ABB96FCC(char *a1, double *a2, unint64_t a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 40;
  v9 = (a3 - a2) / 40;
  if (v8 < v9)
  {
    sub_1ABADD470(a1, (a2 - a1) / 40, a4);
    v10 = &v4[5 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      if (v4[1] >= v6[1])
      {
        break;
      }

      v12 = v6;
      v13 = v7 == v6;
      v6 += 5;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 40;
    }

    v12 = v4;
    v13 = v7 == v4;
    v4 += 5;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    v14 = *v12;
    v15 = *(v12 + 1);
    *(v7 + 4) = v12[4];
    *v7 = v14;
    *(v7 + 1) = v15;
    goto LABEL_13;
  }

  sub_1ABADD470(a2, (a3 - a2) / 40, a4);
  v10 = &v4[5 * v9];
LABEL_15:
  for (v5 -= 40; v10 > v4 && v6 > v7; v5 -= 40)
  {
    if (*(v6 - 4) < *(v10 - 4))
    {
      v19 = v6 - 5;
      v13 = v5 + 40 == v6;
      v6 -= 5;
      if (!v13)
      {
        v20 = *v19;
        v21 = *(v19 + 1);
        *(v5 + 32) = v19[4];
        *v5 = v20;
        *(v5 + 16) = v21;
        v6 = v19;
      }

      goto LABEL_15;
    }

    if (v10 != (v5 + 40))
    {
      v17 = *(v10 - 5);
      v18 = *(v10 - 3);
      *(v5 + 32) = *(v10 - 1);
      *v5 = v17;
      *(v5 + 16) = v18;
    }

    v10 -= 5;
  }

LABEL_28:
  v22 = (v10 - v4) / 40;
  if (v6 != v4 || v6 >= &v4[5 * v22])
  {
    memmove(v6, v4, 40 * v22);
  }

  return 1;
}

unint64_t sub_1ABB97174()
{
  result = qword_1EB4D3E28;
  if (!qword_1EB4D3E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3E28);
  }

  return result;
}

unint64_t sub_1ABB97234()
{
  result = qword_1ED8707B0;
  if (!qword_1ED8707B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8707B0);
  }

  return result;
}

uint64_t sub_1ABB97288(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ABAD219C(&qword_1EB4D3E58, qword_1ABF40A68);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1ABB97320()
{
  result = qword_1ED8707A0;
  if (!qword_1ED8707A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8707A0);
  }

  return result;
}

uint64_t sub_1ABB973A8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000015 && 0x80000001ABF89240 == a2;
  if (v3 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001ABF89260 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_1ABF25054();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

unint64_t sub_1ABB97480(char a1)
{
  if (a1)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0xD000000000000015;
  }
}

uint64_t sub_1ABB974B4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a4;
  v14[1] = a5;
  v7 = sub_1ABAD219C(&qword_1EB4D3EB0, &qword_1ABF40F98);
  sub_1ABA7BB64();
  v9 = v8;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v14 - v11;
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABB9A2C0();
  sub_1ABF252E4();
  v16 = 0;
  sub_1ABF24F34();
  if (!v5)
  {
    v15 = 1;
    sub_1ABF24F34();
  }

  return (*(v9 + 8))(v12, v7);
}

uint64_t sub_1ABB9761C(void *a1)
{
  sub_1ABAD219C(&qword_1EB4D3EA8, &qword_1ABF40F90);
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v3);
  v4 = a1[4];
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABB9A2C0();
  sub_1ABF252C4();
  if (!v1)
  {
    v4 = sub_1ABF24E14();
    sub_1ABF24E14();
    v6 = sub_1ABA7BCF0();
    v7(v6);
  }

  sub_1ABA84B54(a1);
  return v4;
}

uint64_t sub_1ABB977E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABB973A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABB97808(uint64_t a1)
{
  v2 = sub_1ABB9A2C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABB97844(uint64_t a1)
{
  v2 = sub_1ABB9A2C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABB97880@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1ABB9761C(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_1ABB978D0()
{
  sub_1ABA906D0();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v1[4] = v10;
  v1[5] = v0;
  v1[2] = v6;
  v1[3] = v2;
  v1[6] = *v0;
  swift_defaultActor_initialize();
  v11 = swift_task_alloc();
  v1[7] = v11;
  *v11 = v1;
  v11[1] = sub_1ABB979E4;

  return sub_1ABC20104(v5, v3, v9, v7, 0);
}

uint64_t sub_1ABB979E4()
{
  sub_1ABA7BBF8();
  sub_1ABA7BC10();
  v3 = v2;
  sub_1ABA7D4E0();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 64) = v5;
  *(v3 + 72) = v0;

  if (v0)
  {
    v6 = sub_1ABB97C58;
  }

  else
  {

    v6 = sub_1ABB97AFC;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1ABB97AFC()
{
  v1 = *(v0 + 64);
  if (!v1)
  {
    v3 = sub_1ABB91E1C();
    sub_1ABA7BD00(&type metadata for EntityRelevanceInferenceInterface.Errors.InitError, v3);
    swift_willThrow();
    swift_defaultActor_destroy();

    sub_1ABA837B4();
    sub_1ABA7BBE0();

    __asm { BRAA            X1, X16 }
  }

  v2 = *(v0 + 40);
  *(v2 + 128) = v1;
  *(v2 + 112) = 0;
  *(v2 + 120) = 1;

  return MEMORY[0x1EEE6DFA0](sub_1ABB97BF4);
}

uint64_t sub_1ABB97BF4()
{
  sub_1ABA7BBF8();

  v1 = *(v0 + 8);
  v2 = *(v0 + 40);

  return v1(v2);
}

uint64_t sub_1ABB97C58()
{

  swift_defaultActor_destroy();

  sub_1ABA837B4();
  sub_1ABA7BBE0();

  return v0();
}

uint64_t sub_1ABB97CE4(uint64_t a1, void *a2, uint64_t a3)
{
  v4[89] = a3;
  v4[90] = v3;
  v4[88] = a1;
  v4[91] = *v3;
  v4[92] = *a2;
  return sub_1ABA8F224(sub_1ABB97D38, v3);
}

uint64_t sub_1ABB97D38()
{
  sub_1ABA906D0();
  v1 = [*(*(v0[90] + 128) + 16) modelDescription];
  v2 = [v1 metadata];

  type metadata accessor for MLModelMetadataKey(0);
  sub_1ABB9A1B0(&qword_1ED86B968, 255, type metadata accessor for MLModelMetadataKey, &unk_1ABF33010);
  v3 = sub_1ABF23974();

  sub_1ABAD56C8(*MEMORY[0x1E695FDD0], v3);

  if (v0[5])
  {
    v4 = swift_dynamicCast();
    if (v4)
    {
      v5 = v0[82];
    }

    else
    {
      v5 = 0;
    }

    if (v4)
    {
      v6 = v0[83];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    sub_1ABA925A4((v0 + 2), &qword_1EB4D3000, &unk_1ABF3AA60);
    v5 = 0;
    v6 = 0;
  }

  v0[94] = v6;
  v0[93] = v5;
  v7 = v0[92];
  if (!v7)
  {
    v14 = v0[88];

    v15 = sub_1ABF239C4();
    *v14 = v5;
    *(v14 + 8) = v6;
    *(v14 + 16) = 0;
    *(v14 + 24) = 0;
    *(v14 + 32) = v15;
    *(v14 + 40) = v5;
    *(v14 + 48) = v6;
    *(v14 + 56) = 0;
    *(v14 + 64) = 1;
    sub_1ABA7BBE0();
    sub_1ABA8E16C();

    __asm { BRAA            X1, X16 }
  }

  v8 = v0[91];
  v9 = v0[90];
  v10 = v0[89];
  v11 = swift_allocObject();
  v0[95] = v11;
  v11[2] = v7;
  v11[3] = v9;
  v11[4] = v10;
  v11[5] = v5;
  v11[6] = v6;
  v11[7] = v8;

  swift_unknownObjectRetain_n();

  swift_asyncLet_begin();
  sub_1ABA80948();
  sub_1ABA8E16C();

  return MEMORY[0x1EEE6DEC0](v12);
}

uint64_t sub_1ABB97FD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1ABA7BBF8();
  *(v15 + 768) = v14;
  if (v14)
  {

    v16 = sub_1ABA80948();

    return MEMORY[0x1EEE6DEB0](v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    v24 = *(v15 + 720);

    return MEMORY[0x1EEE6DFA0](sub_1ABB98074, v24, 0);
  }
}

uint64_t sub_1ABB98074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1ABA88600();
  v48 = v14[87];
  v49 = v14;
  ObjectType = swift_getObjectType();
  v16 = MLFeatureProvider.dictionary.getter(ObjectType);
  sub_1ABAD219C(&qword_1EB4D3E98, &qword_1ABF40F70);
  v17 = sub_1ABF24D24();
  v25 = v17;
  v26 = 0;
  v27 = 1 << *(v16 + 32);
  v28 = -1;
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  v29 = v28 & *(v16 + 64);
  v30 = (v27 + 63) >> 6;
  v50 = (v17 + 8);
  if (v29)
  {
    while (1)
    {
      v31 = __clz(__rbit64(v29));
      v29 &= v29 - 1;
LABEL_10:
      v34 = v31 | (v26 << 6);
      v35 = (*(v16 + 48) + 16 * v34);
      v37 = *v35;
      v36 = v35[1];
      v38 = *(*(v16 + 56) + 8 * v34);

      v17 = [v38 doubleValue];
      *&v50[(v34 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v34;
      v39 = (v25[6] + 16 * v34);
      *v39 = v37;
      v39[1] = v36;
      *(v25[7] + 8 * v34) = v40;
      v41 = v25[2];
      v42 = __OFADD__(v41, 1);
      v43 = v41 + 1;
      if (v42)
      {
        break;
      }

      v25[2] = v43;
      if (!v29)
      {
        goto LABEL_5;
      }
    }

LABEL_17:
    __break(1u);
  }

  else
  {
LABEL_5:
    v32 = v26;
    while (1)
    {
      v26 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        __break(1u);
        goto LABEL_17;
      }

      if (v26 >= v30)
      {
        break;
      }

      v33 = *(v16 + 64 + 8 * v26);
      ++v32;
      if (v33)
      {
        v31 = __clz(__rbit64(v33));
        v29 = (v33 - 1) & v33;
        goto LABEL_10;
      }
    }

    v44 = v49[94];
    v45 = v49[93];
    v46 = v49[88];

    *v46 = v48;
    *(v46 + 8) = 0;
    *(v46 + 16) = 1;
    *(v46 + 24) = v48;
    *(v46 + 32) = v25;
    *(v46 + 40) = v45;
    *(v46 + 48) = v44;
    *(v46 + 56) = 0;
    *(v46 + 64) = 1;
    sub_1ABA80948();
    sub_1ABA8BF40();
  }

  return MEMORY[0x1EEE6DEB0](v17, v18, v19, v20, v21, v22, v23, v24, v48, v49, v50, a12, a13, a14);
}

uint64_t sub_1ABB98268()
{
  sub_1ABA7BBF8();
  swift_unknownObjectRelease();

  sub_1ABA7BBE0();

  return v0();
}

uint64_t sub_1ABB982E8()
{
  sub_1ABA7BBF8();
  swift_unknownObjectRelease();

  sub_1ABA7BBE0();

  return v0();
}

uint64_t sub_1ABB98350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 16) = a1;
  v14 = swift_task_alloc();
  *(v7 + 24) = v14;
  *v14 = v7;
  v14[1] = sub_1ABB98420;

  return sub_1ABB9858C(a2, a3, a4, a5, a6, a7);
}

uint64_t sub_1ABB98420(double a1)
{
  sub_1ABA7BC10();
  v5 = v4;
  sub_1ABA7D4E0();
  *v6 = v5;
  v7 = *v2;
  sub_1ABA7BBC0();
  *v8 = v7;

  if (v1)
  {
    v9 = *(v7 + 8);

    __asm { BRAA            X1, X16 }
  }

  *(v5 + 32) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1ABB9855C, 0, 0);
}

uint64_t sub_1ABB9855C()
{
  **(v0 + 16) = *(v0 + 32);
  sub_1ABA7BBE0();
  return v1();
}

uint64_t sub_1ABB9858C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[9] = a2;
  v6[10] = a4;
  v6[8] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1ABB985B4, 0, 0);
}

uint64_t sub_1ABB985B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1ABA88600();
  sub_1ABB98D34(v14[8]);
  v14[13] = v15;
  v16 = swift_task_alloc();
  v14[14] = v16;
  *v16 = v14;
  v16[1] = sub_1ABB98858;
  sub_1ABA8BF40();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, sub_1ABDF7E7C, a10, a11, a12, a13, a14);
}

uint64_t sub_1ABB98858()
{
  sub_1ABA7BBF8();
  sub_1ABA7BC10();
  sub_1ABA7D4E0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 120) = v4;
  *(v2 + 128) = v0;

  if (v0)
  {
    v5 = sub_1ABB98B2C;
  }

  else
  {
    v5 = sub_1ABB98960;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1ABB98960()
{
  v1 = *(v0 + 120);
  swift_unknownObjectRelease();
  swift_unknownObjectRetain();
  v2 = sub_1ABF23BD4();
  v3 = [v1 featureValueForName_];
  swift_unknownObjectRelease();

  if (v3 && (v4 = [v3 dictionaryValue], v3, sub_1ABB373C8(), v5 = sub_1ABF23974(), v4, *(v0 + 56) = 1, sub_1ABF249F4(), v6 = sub_1ABAD5744(v0 + 16, v5), , sub_1ABAFDC60(v0 + 16), v6))
  {
    [v6 doubleValue];
    v8 = v7;
    swift_unknownObjectRelease();

    sub_1ABA7BBE0();
    v10.n128_u64[0] = v8;
  }

  else
  {
    v11 = sub_1ABB91E74();
    sub_1ABA7BD00(&type metadata for EntityRelevanceInferenceInterface.Errors.RunError, v11);
    *v12 = 1;
    swift_willThrow();
    swift_unknownObjectRelease();
    sub_1ABA7BBE0();
  }

  return v9(v10);
}

uint64_t sub_1ABB98B2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  sub_1ABA88600();
  a21 = v23;
  a22 = v24;
  a20 = v22;
  swift_unknownObjectRelease();
  v25 = v22[16];
  if (qword_1EB4CE7C0 != -1)
  {
    sub_1ABA7BFD0(&qword_1EB4CE7C0);
  }

  v26 = v22[11];
  v27 = sub_1ABF237F4();
  sub_1ABA7AA24(v27, qword_1EB4CE7C8);

  v28 = v25;
  v29 = sub_1ABF237D4();
  v30 = sub_1ABF24664();

  if (os_log_type_enabled(v29, v30))
  {
    v32 = v22[10];
    v31 = v22[11];
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    a10 = v35;
    *v33 = 136315394;
    v36 = v31 == 0;
    if (v31)
    {
      v37 = v32;
    }

    else
    {
      v37 = 0x20746C7561666564;
    }

    if (v36)
    {
      v38 = 0xED00006C65646F6DLL;
    }

    else
    {
      v38 = v26;
    }

    sub_1ABADD6D8(v37, v38, &a10);

    sub_1ABA97A84();
    v39 = _swift_stdlib_bridgeErrorToNSError();
    *(v33 + 14) = v39;
    *v34 = v39;
    sub_1ABA84004(&dword_1ABA78000, v40, v41, "[ERInferenceService] Failed to generate predictions for %s: %@");
    sub_1ABA925A4(v34, &unk_1EB4D57F0, &qword_1ABF390C0);
    sub_1ABA7BC34();
    sub_1ABA84B54(v35);
    sub_1ABA7BC34();
    sub_1ABA7BC34();
  }

  v42 = sub_1ABB91E74();
  sub_1ABA7BD00(&type metadata for EntityRelevanceInferenceInterface.Errors.RunError, v42);
  *v43 = 0;
  swift_willThrow();

  sub_1ABA7BBE0();
  sub_1ABA8BF40();

  return v45(v44, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, a12, a13, a14);
}

void sub_1ABB98D34(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v2 = MLFeatureProvider.dictionary.getter(ObjectType);
  sub_1ABAD219C(&qword_1EB4D3EA0, &qword_1ABF40F88);
  v3 = sub_1ABF24D24();
  v4 = v3;
  v5 = 0;
  v7 = v2 + 64;
  v6 = *(v2 + 64);
  v30 = v2;
  v8 = 1 << *(v2 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v6;
  v11 = (v8 + 63) >> 6;
  v29 = v3 + 64;
  if ((v9 & v6) != 0)
  {
    while (1)
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_10:
      v15 = v12 | (v5 << 6);
      v16 = (*(v30 + 48) + 16 * v15);
      v18 = *v16;
      v17 = v16[1];
      v19 = *(*(v30 + 56) + 8 * v15);

      v20 = v19;
      if ([v20 type] == 2)
      {
        [v20 doubleValue];
        if ((~v21 & 0x7FF0000000000000) == 0 && (v21 & 0xFFFFFFFFFFFFFLL) != 0)
        {
          v28 = [objc_opt_self() featureValueWithDouble_];

          v20 = v28;
        }
      }

      *(v29 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v22 = (v4[6] + 16 * v15);
      *v22 = v18;
      v22[1] = v17;
      *(v4[7] + 8 * v15) = v20;
      v23 = v4[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        break;
      }

      v4[2] = v25;
      if (!v10)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v11)
      {

        v26 = sub_1ABDF8098(v4);

        v27 = objc_allocWithZone(MEMORY[0x1E695FE48]);
        sub_1ABDF9974(v26);
        return;
      }

      v14 = *(v7 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1ABB98F58()
{

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

void sub_1ABB98FB4(uint64_t a1@<X8>)
{
  v2 = *(*v1 + 120);
  *a1 = *(*v1 + 112);
  *(a1 + 8) = v2;
}

uint64_t sub_1ABB98FCC(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1ABA7FDA0;

  return sub_1ABB97CE4(a1, a2, a3);
}

uint64_t sub_1ABB99080()
{
  sub_1ABA906D0();
  type metadata accessor for EntityRelevanceMLModelInferenceServiceDefinition.Runner();
  swift_allocObject();

  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1ABB9916C;
  sub_1ABA8E16C();

  return sub_1ABB978D0();
}

uint64_t sub_1ABB9916C()
{
  sub_1ABA7BBF8();
  v3 = v2;
  sub_1ABA7BC10();
  v4 = *v1;
  sub_1ABA7BBC0();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_1ABB9927C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1ABB9931C;

  return sub_1ABB99080();
}

uint64_t sub_1ABB9931C(uint64_t a1)
{
  sub_1ABA7BC10();
  v5 = v4;
  sub_1ABA7D4E0();
  *v6 = v5;
  v7 = *v2;
  sub_1ABA7BBC0();
  *v8 = v7;

  if (!v1)
  {
    **(v5 + 16) = a1;
  }

  v9 = *(v7 + 8);

  return v9();
}

uint64_t EntityRelevanceMLModelInferenceServiceRunEvent.modelVersionString.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1ABB99478(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65726F6373 && a2 == 0xE500000000000000;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7365727574616566 && a2 == 0xE800000000000000;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000012 && 0x80000001ABF891D0 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_1ABF25054();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1ABB9958C(char a1)
{
  if (!a1)
  {
    return 0x65726F6373;
  }

  if (a1 == 1)
  {
    return 0x7365727574616566;
  }

  return 0xD000000000000012;
}

uint64_t sub_1ABB995EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABB99478(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABB99614(uint64_t a1)
{
  v2 = sub_1ABB99880();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABB99650(uint64_t a1)
{
  v2 = sub_1ABB99880();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t EntityRelevanceMLModelInferenceServiceRunEvent.encode(to:)(void *a1)
{
  v4 = sub_1ABAD219C(&qword_1EB4D3E60, &qword_1ABF40BF0);
  sub_1ABA7BB64();
  v6 = v5;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v12 - v8;
  v10 = *(v1 + 8);
  v12[1] = *(v1 + 16);
  v13 = v10;
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABB99880();
  sub_1ABF252E4();
  v17 = 0;
  sub_1ABF24F54();
  if (!v2)
  {
    v16 = v13;
    v15 = 1;
    sub_1ABAD219C(&qword_1EB4D3E68, &qword_1ABF40BF8);
    sub_1ABB99B30(&qword_1EB4D3E70, MEMORY[0x1E69E6160], MEMORY[0x1E69E63C0], MEMORY[0x1E69E5E38]);
    sub_1ABF24F84();
    v14 = 2;
    sub_1ABF24ED4();
  }

  return (*(v6 + 8))(v9, v4);
}

unint64_t sub_1ABB99880()
{
  result = qword_1EB4CEA10;
  if (!qword_1EB4CEA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CEA10);
  }

  return result;
}

uint64_t EntityRelevanceMLModelInferenceServiceRunEvent.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1ABAD219C(&qword_1EB4D3E78, &qword_1ABF40C00);
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABB99880();
  sub_1ABF252C4();
  if (v2)
  {
    return sub_1ABA84B54(a1);
  }

  sub_1ABF24E34();
  v7 = v6;
  sub_1ABAD219C(&qword_1EB4D3E68, &qword_1ABF40BF8);
  sub_1ABB99B30(&qword_1EB4D3E80, MEMORY[0x1E69E6190], MEMORY[0x1E69E63E8], MEMORY[0x1E69E5E58]);
  sub_1ABF24E64();
  v8 = sub_1ABF24DB4();
  v10 = v9;
  v11 = sub_1ABA7BFF0();
  v12(v11);
  *a2 = v7;
  a2[1] = v14;
  a2[2] = v8;
  a2[3] = v10;

  sub_1ABA84B54(a1);
}

uint64_t sub_1ABB99B30(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1ABAE2850(&qword_1EB4D3E68, &qword_1ABF40BF8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1ABB99BF0()
{
  result = qword_1EB4CE9F0;
  if (!qword_1EB4CE9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CE9F0);
  }

  return result;
}

unint64_t sub_1ABB99C44()
{
  result = qword_1EB4CE9F8;
  if (!qword_1EB4CE9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CE9F8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for EntityRelevanceMLModelInferenceServiceRunEvent.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1ABB99DE4()
{
  result = qword_1EB4D3E88;
  if (!qword_1EB4D3E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3E88);
  }

  return result;
}

unint64_t sub_1ABB99E3C()
{
  result = qword_1EB4CE960;
  if (!qword_1EB4CE960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CE960);
  }

  return result;
}

unint64_t sub_1ABB99E94()
{
  result = qword_1EB4CEB50;
  if (!qword_1EB4CEB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CEB50);
  }

  return result;
}

uint64_t sub_1ABB99F5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1ABB99F98()
{
  result = qword_1EB4CE968;
  if (!qword_1EB4CE968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CE968);
  }

  return result;
}

unint64_t sub_1ABB99FEC()
{
  result = qword_1EB4CE970;
  if (!qword_1EB4CE970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CE970);
  }

  return result;
}

unint64_t sub_1ABB9A044()
{
  result = qword_1EB4CE998;
  if (!qword_1EB4CE998)
  {
    sub_1ABAE2850(&qword_1EB4D3E90, &unk_1ABF40E88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CE998);
  }

  return result;
}

uint64_t sub_1ABB9A0A8(uint64_t a1, uint64_t a2)
{
  result = sub_1ABB9A1B0(&qword_1EB4CE958, a2, type metadata accessor for EntityRelevanceMLModelInferenceServiceDefinition.Runner, &unk_1ABF40E98);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1ABB9A104()
{
  result = qword_1EB4CEA00;
  if (!qword_1EB4CEA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CEA00);
  }

  return result;
}

unint64_t sub_1ABB9A15C()
{
  result = qword_1EB4CEA08;
  if (!qword_1EB4CEA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CEA08);
  }

  return result;
}

uint64_t sub_1ABB9A1B0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_1ABB9A1F8()
{
  sub_1ABA906D0();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1ABA7FDA0;
  sub_1ABA8E16C();

  return sub_1ABB98350(v2, v3, v4, v5, v6, v7, v8);
}

unint64_t sub_1ABB9A2C0()
{
  result = qword_1EB4CE988;
  if (!qword_1EB4CE988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CE988);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for EntityRelevanceMLModelInferenceServiceDefinition.ConfigParameters.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1ABB9A400()
{
  result = qword_1EB4D3EB8;
  if (!qword_1EB4D3EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3EB8);
  }

  return result;
}

unint64_t sub_1ABB9A458()
{
  result = qword_1EB4CE978;
  if (!qword_1EB4CE978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CE978);
  }

  return result;
}

unint64_t sub_1ABB9A4B0()
{
  result = qword_1EB4CE980;
  if (!qword_1EB4CE980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CE980);
  }

  return result;
}

uint64_t sub_1ABB9A510@<X0>(unint64_t **a1@<X1>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v7 = *a1;
  v27 = a1[6];
  v28 = a1[5];
  v25 = a1[8];
  v26 = a1[7];
  v8 = a1[10];
  v9 = a1[11];
  v24 = *(a1 + 96);
  v10 = a1[13];
  v29 = a1[14];
  v30 = a1[15];
  v31 = a1[16];
  memcpy(__dst, a1 + 17, sizeof(__dst));
  v11 = sub_1ABBA1DE0(a3, v7);
  v12 = objc_autoreleasePoolPush();
  sub_1ABBA45E0(v11, &v33, __src);

  objc_autoreleasePoolPop(v12);
  memcpy(v32, __src, 0x3C8uLL);
  sub_1ABB9AEA4(v32);
  memcpy(v35, v32, sizeof(v35));
  if (!v8)
  {
    memcpy(v32, a1 + 17, 0xB8uLL);
    v23 = sub_1ABB9AE48(v32);
    v22 = *&v32[21];
    if (v23 == 1)
    {
      v22 = 0.0;
    }

    *a4 = v7;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    *(a4 + 24) = 0;
    goto LABEL_9;
  }

  v13 = sub_1ABF23C84();
  v15 = v14;
  v16 = sub_1ABF23C84();
  v18 = sub_1ABB9A7AC(v13, v15, v16, v17);

  if (!__OFADD__(v18, 1))
  {
    v20 = 1.0 / (v18 + 1);
    memcpy(v32, __dst, 0xB8uLL);
    v21 = sub_1ABB9AE48(v32);
    v22 = *&v32[21];
    *a4 = v7;
    if (v21 == 1)
    {
      v22 = 0.0;
    }

    *(a4 + 8) = v20;
    *(a4 + 16) = v20;
    *(a4 + 24) = 0;
LABEL_9:
    *(a4 + 32) = v22;
    *(a4 + 40) = v28;
    *(a4 + 48) = v27;
    *(a4 + 56) = v26;
    *(a4 + 64) = v25;
    *(a4 + 72) = 0u;
    *(a4 + 88) = 0u;
    *(a4 + 104) = 0;
    memcpy((a4 + 112), v35, 0x3C9uLL);
    *(a4 + 1152) = 0;
    *(a4 + 1088) = 0;
    *(a4 + 1096) = 1;
    *(a4 + 1104) = v9;
    *(a4 + 1112) = v24;
    *(a4 + 1120) = v10;
    *(a4 + 1128) = v29;
    *(a4 + 1136) = v30;
    *(a4 + 1144) = v31;
    sub_1ABB9AE60(v28, v27);
  }

  __break(1u);
  return result;
}

unint64_t sub_1ABB9A7AC(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v9 = sub_1ABF23D44();
  v65 = sub_1ABF23D44();
  v10 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v10 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10)
  {
    goto LABEL_54;
  }

  v11 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v11 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v11)
  {
LABEL_54:
    if (v65 <= v9)
    {
      return v9;
    }

    else
    {
      return v65;
    }
  }

  if (__OFADD__(v65, 1))
  {
    goto LABEL_84;
  }

  v12 = sub_1ABB9ACDC(0, v65 + 1);
  if (__OFADD__(v9, 1))
  {
    goto LABEL_85;
  }

  v13 = sub_1ABB9AD80(v12, v9 + 1);
  if (v9 < 1)
  {
    goto LABEL_86;
  }

  v14 = v13;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_87;
  }

  while (1)
  {
    if (v14[2] < 2uLL)
    {
      __break(1u);
    }

    else
    {
      v15 = v14[5];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v14[5] = v15;
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_13;
      }
    }

    sub_1ABD8EF00();
    v15 = v61;
    v14[5] = v61;
LABEL_13:
    if (!*(v15 + 16))
    {
      __break(1u);
LABEL_91:
      __break(1u);
      goto LABEL_92;
    }

    *(v15 + 32) = 1;
    v17 = v9 - 1;
    if (v9 != 1)
    {
      v4 = v14 + 6;
      v52 = 2;
      while (v52 < v14[2])
      {
        v53 = *v4;
        v54 = swift_isUniquelyReferenced_nonNull_native();
        *v4 = v53;
        if ((v54 & 1) == 0)
        {
          sub_1ABD8EF00();
          v53 = v55;
          *v4 = v55;
        }

        if (!*(v53 + 16))
        {
          goto LABEL_81;
        }

        *(v53 + 32) = v52++;
        ++v4;
        if (!--v17)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_81:
      __break(1u);
      goto LABEL_82;
    }

LABEL_15:
    if (v65 < 1)
    {
      goto LABEL_91;
    }

    if (v14[2])
    {
      v4 = v14 + 4;
      v18 = v14[4];
      v19 = swift_isUniquelyReferenced_nonNull_native();
      v14[4] = v18;
      if (v19)
      {
        goto LABEL_18;
      }

      goto LABEL_93;
    }

LABEL_92:
    __break(1u);
LABEL_93:
    sub_1ABD8EF00();
    v18 = v62;
LABEL_18:
    if (*(v18 + 16) < 2uLL)
    {
      break;
    }

    *(v18 + 40) = 1;
    *v4 = v18;
    v20 = v65 - 1;
    if (v65 == 1)
    {
LABEL_20:
      v63 = v9;
      v64 = v14;
      v21 = 1;
LABEL_21:
      v22 = 0;
      v23 = v21 - 1;
      while (1)
      {
        sub_1ABF23D84();
        v24 = sub_1ABF23E94();
        v26 = v25;
        sub_1ABF23D84();
        v28 = v24 == sub_1ABF23E94() && v26 == v27;
        if (v28)
        {

          v29 = 0;
        }

        else
        {
          v24 = sub_1ABF25054();

          v29 = (v24 & 1) == 0;
        }

        v30 = *(v64 + 16);
        if (v23 >= v30)
        {
          break;
        }

        v24 = v22 + 1;
        v31 = v4[v23];
        if (v22 + 1 >= *(v31 + 16))
        {
          goto LABEL_72;
        }

        v32 = v31 + 8 * v22;
        v33 = *(v32 + 40);
        v34 = __OFADD__(v33, 1);
        v35 = v33 + 1;
        if (v34)
        {
          goto LABEL_73;
        }

        if (v21 >= v30)
        {
          goto LABEL_74;
        }

        v36 = v4[v21];
        if (v22 >= *(v36 + 16))
        {
          goto LABEL_75;
        }

        v37 = *(v36 + 8 * v22 + 32);
        v34 = __OFADD__(v37, 1);
        v38 = v37 + 1;
        if (v34)
        {
          goto LABEL_76;
        }

        v39 = *(v32 + 32);
        v34 = __OFADD__(v39, v29);
        v40 = v39 + v29;
        if (v34)
        {
          goto LABEL_77;
        }

        if (v38 < v35)
        {
          v35 = v38;
        }

        if (v40 >= v35)
        {
          v41 = v35;
        }

        else
        {
          v41 = v40;
        }

        v42 = swift_isUniquelyReferenced_nonNull_native();
        v4[v21] = v36;
        if ((v42 & 1) == 0)
        {
          sub_1ABD8EF00();
          v36 = v43;
          v4[v21] = v43;
        }

        if (v24 >= *(v36 + 16))
        {
          goto LABEL_78;
        }

        *(v36 + 8 * v22++ + 40) = v41;
        if (v65 == v22)
        {
          v9 = v63;
          v28 = v21++ == v63;
          if (!v28)
          {
            goto LABEL_21;
          }

          v44 = sub_1ABB310C0(v64);
          if (!v44 || (v24 = sub_1ABB310F4(v44), v46 = v45, , (v46 & 1) != 0))
          {
            if (qword_1ED871B18 != -1)
            {
              goto LABEL_95;
            }

            goto LABEL_49;
          }

LABEL_79:

          return v24;
        }
      }

      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
      goto LABEL_79;
    }

    v56 = 6;
    while (v14[2])
    {
      v57 = *v4;
      v58 = swift_isUniquelyReferenced_nonNull_native();
      *v4 = v57;
      if ((v58 & 1) == 0)
      {
        sub_1ABD8EF00();
        v57 = v59;
        *v4 = v59;
      }

      if ((v56 - 4) >= *(v57 + 16))
      {
        goto LABEL_83;
      }

      *(v57 + 8 * v56) = v56 - 4;
      ++v56;
      if (!--v20)
      {
        goto LABEL_20;
      }
    }

LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    sub_1ABD8EF18();
    v14 = v60;
  }

  __break(1u);
LABEL_95:
  swift_once();
LABEL_49:
  v47 = sub_1ABF237F4();
  sub_1ABA7AA24(v47, qword_1ED871B20);
  v48 = sub_1ABF237D4();
  v49 = sub_1ABF24664();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    *v50 = 0;
    _os_log_impl(&dword_1ABA78000, v48, v49, "Edit distance error. Empty output matrix.", v50, 2u);
    MEMORY[0x1AC5AB8B0](v50, -1, -1);
  }

  if (v65 <= v9)
  {
    return v9;
  }

  else
  {
    return v65;
  }
}

uint64_t sub_1ABB9ACDC(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = result;
    result = sub_1ABF24164();
    v4 = 0;
    *(result + 16) = a2;
    v5 = vdupq_n_s64(a2 - 1);
    do
    {
      v6 = vmovn_s64(vcgeq_u64(v5, vorrq_s8(vdupq_n_s64(v4), xmmword_1ABF34750)));
      v7 = result + 8 * v4;
      if (v6.i8[0])
      {
        *(v7 + 32) = v3;
      }

      if (v6.i8[4])
      {
        *(v7 + 40) = v3;
      }

      v4 += 2;
    }

    while (((a2 + 1) & 0xFFFFFFFFFFFFFFFELL) != v4);
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_1ABB9AD80(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (a2)
    {
      sub_1ABAD219C(&qword_1EB4D1970, &qword_1ABF33B00);
      v4 = sub_1ABF24164();
      *(v4 + 16) = a2;
      v5 = a2 - 1;
      for (i = 32; ; i += 8)
      {
        *(v4 + i) = v3;
        if (!v5)
        {
          break;
        }

        --v5;
      }
    }

    else
    {

      return MEMORY[0x1E69E7CC0];
    }

    return v4;
  }

  return result;
}

uint64_t sub_1ABB9AE48(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1ABB9AE60(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1ABB9AEAC(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1ABB9AEC4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 32))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1ABB9AF18(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

unint64_t sub_1ABB9AF7C(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return sub_1ABF23EC4();
  }

  __break(1u);
  return result;
}

uint64_t sub_1ABB9AFC8(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1ABAB4CF4(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1ABBA04D4(v6);
  return sub_1ABF24BA4();
}

char *sub_1ABB9B044(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1ABE7A2B4();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1ABBA05B4(v6);
  *a1 = v2;
  return result;
}

unint64_t sub_1ABB9B0B0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1ABF24D84();

  if (v2 >= 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1ABB9B0FC(char a1)
{
  result = 0x7974706D65;
  switch(a1)
  {
    case 1:
      result = 0x636E6176656C6572;
      break;
    case 2:
      result = 0x75747865746E6F63;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0x6553726F74636576;
      break;
    case 5:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1ABB9B1F4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1ABB9B0B0(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1ABB9B224@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1ABB9B0FC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1ABB9B300(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v6 = v5;
  LOBYTE(v7) = a2;
  v8 = a1;
  LOBYTE(v9) = *v4;
  v10 = *(v4 + 8);
  i = *(v4 + 16);
  v12 = *(v4 + 24);
  v34 = v10;
  if ((a2 & 1) == 0)
  {
    sub_1ABBA043C();
    sub_1ABBA0480();
    v13 = sub_1ABF239C4();
    goto LABEL_5;
  }

  LOBYTE(__src[0]) = *v4;
  __src[1] = v10;
  __src[2] = i;
  __src[3] = v12;
  v13 = sub_1ABB9B6D8(a1);
  if (!v5)
  {
LABEL_5:
    v14 = v13;
    goto LABEL_6;
  }

  sub_1ABBA043C();
  sub_1ABBA0480();
  v14 = sub_1ABF239C4();
  v6 = 0;
LABEL_6:

  if (qword_1ED871B18 != -1)
  {
LABEL_34:
    sub_1ABA7D4EC();
    swift_once();
  }

  v15 = sub_1ABF237F4();
  sub_1ABA7AA24(v15, qword_1ED871B20);

  v16 = sub_1ABF237D4();
  v17 = sub_1ABF24654();
  v18 = sub_1ABA84024();
  v20 = os_log_type_enabled(v18, v19);
  v35 = v9;
  v32 = v12;
  v33 = i;
  v45 = v14;
  if (v20)
  {
    v9 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    __src[0] = v38;
    *v9 = 136315394;
    if (v7)
    {
      v21 = 1702195828;
    }

    else
    {
      v21 = 0x65736C6166;
    }

    if (v7)
    {
      v22 = 0xE400000000000000;
    }

    else
    {
      v22 = 0xE500000000000000;
    }

    v23 = v14;
    v24 = sub_1ABADD6D8(v21, v22, __src);

    *(v9 + 4) = v24;
    *(v9 + 12) = 2048;
    v25 = *(v23 + 16);

    *(v9 + 14) = v25;

    _os_log_impl(&dword_1ABA78000, v16, v17, "ECR reranker: includeFeatures: %s. Fetched features count: %ld", v9, 0x16u);
    sub_1ABA84B54(v38);
    sub_1ABA7BDD8();
    MEMORY[0x1AC5AB8B0]();
    sub_1ABA7BDD8();
    MEMORY[0x1AC5AB8B0]();
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  v26 = sub_1ABAAB7C8(v8);
  v14 = 0;
  v39 = v8 & 0xC000000000000001;
  v12 = v8 & 0xFFFFFFFFFFFFFF8;
  v7 = MEMORY[0x1E69E7CC0];
  for (i = v8; ; v8 = i)
  {
    if (v26 == v14)
    {

      return v7;
    }

    if (v39)
    {
      v9 = MEMORY[0x1AC5AA170](v14, v8);
    }

    else
    {
      if (v14 >= *(v12 + 16))
      {
        goto LABEL_33;
      }

      v9 = *(v8 + 8 * v14 + 32);
    }

    if (__OFADD__(v14, 1))
    {
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    __dst[88] = v35;
    v41 = v34;
    v42 = v33;
    v43 = v32;
    sub_1ABB9BB20(__src, v9, a3, a4, v45);
    if (v6)
    {
      break;
    }

    memcpy(__dst, __src, 0x58uLL);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1ABA7BEF0();
      sub_1ABADA44C();
      v7 = v29;
    }

    v28 = *(v7 + 16);
    v27 = *(v7 + 24);
    if (v28 >= v27 >> 1)
    {
      sub_1ABA7BBEC(v27);
      sub_1ABADA44C();
      v7 = v30;
    }

    *(v7 + 16) = v28 + 1;
    memcpy((v7 + 88 * v28 + 32), __dst, 0x58uLL);
    ++v14;
  }

  return v7;
}

uint64_t sub_1ABB9B6D8(uint64_t a1)
{
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v1 + 8);
    v4 = a1;
    v37 = a1 & 0xC000000000000001;
    v38 = sub_1ABAAB7C8(a1);
    v31 = v4;
    v32 = v3;
    v35 = v4 + 32;
    v36 = v4 & 0xFFFFFFFFFFFFFF8;
    swift_unknownObjectRetain();
    v33 = v2;
    swift_unknownObjectRetain();
    v5 = 0;
    v6 = MEMORY[0x1E69E7CC0];
    while (v5 != v38)
    {
      if (v37)
      {
        v7 = MEMORY[0x1AC5AA170](v5, v31);
      }

      else
      {
        if (v5 >= *(v36 + 16))
        {
          goto LABEL_40;
        }

        v7 = *(v35 + 8 * v5);
      }

      v8 = __OFADD__(v5++, 1);
      if (v8)
      {
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

      swift_beginAccess();
      v9 = *(v7 + 16);
      v10 = *(v9 + 16);
      if (v10)
      {
        v39 = v6;
        v40 = v5;
        v46 = MEMORY[0x1E69E7CC0];

        sub_1ABADDBD4(0, v10, 0);
        v11 = v46;
        v12 = v10 - 1;
        for (i = 32; ; i += 328)
        {
          memcpy(__dst, (v9 + i), 0x145uLL);
          if ((__dst[0] & 0x80000000000000) != 0)
          {
            v14 = 3826797;
          }

          else
          {
            v14 = 3828069;
          }

          v42 = __dst[0];
          v43 = v14;
          v44 = 0xE300000000000000;
          sub_1ABBA193C(__dst, v41);
          v15 = sub_1ABF24FF4();
          MEMORY[0x1AC5A9410](v15);

          sub_1ABBA1998(__dst);
          v16 = v43;
          v17 = v44;
          v46 = v11;
          v19 = *(v11 + 16);
          v18 = *(v11 + 24);
          if (v19 >= v18 >> 1)
          {
            sub_1ABADDBD4(v18 > 1, v19 + 1, 1);
            v11 = v46;
          }

          *(v11 + 16) = v19 + 1;
          v20 = v11 + 16 * v19;
          *(v20 + 32) = v16;
          *(v20 + 40) = v17;
          if (!v12)
          {
            break;
          }

          --v12;
        }

        v6 = v39;
        v5 = v40;
      }

      else
      {

        v11 = MEMORY[0x1E69E7CC0];
      }

      v21 = *(v11 + 16);
      v4 = *(v6 + 16);
      if (__OFADD__(v4, v21))
      {
        goto LABEL_41;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v4 + v21 > *(v6 + 24) >> 1)
      {
        sub_1ABAAA4F4();
        v6 = v22;
      }

      if (*(v11 + 16))
      {
        if ((*(v6 + 24) >> 1) - *(v6 + 16) < v21)
        {
          goto LABEL_43;
        }

        swift_arrayInitWithCopy();

        if (v21)
        {
          v23 = *(v6 + 16);
          v8 = __OFADD__(v23, v21);
          v24 = v23 + v21;
          if (v8)
          {
            goto LABEL_44;
          }

          *(v6 + 16) = v24;
        }
      }

      else
      {

        if (v21)
        {
          goto LABEL_42;
        }
      }
    }

    sub_1ABC3FAA4();
    if (!v34)
    {
      v4 = v25;
    }

    sub_1ABBA19EC(v32, v33);
    return v4;
  }

  else
  {
    if (qword_1ED871B18 != -1)
    {
LABEL_45:
      swift_once();
    }

    v26 = sub_1ABF237F4();
    sub_1ABA7AA24(v26, qword_1ED871B20);
    v27 = sub_1ABF237D4();
    v28 = sub_1ABF24664();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_1ABA78000, v27, v28, "Unable to access kv feature store. Returning default feature values for request.", v29, 2u);
      MEMORY[0x1AC5AB8B0](v29, -1, -1);
    }

    sub_1ABBA043C();
    sub_1ABBA0480();
    return sub_1ABF239C4();
  }
}

void sub_1ABB9C9C0(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v224 = v2;
  v225 = v1;
  v229 = v3;
  v231 = v4;
  v6 = v5;
  v258 = v7;
  v265 = sub_1ABF21944();
  sub_1ABA7BB64();
  v251 = v8;
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA7BC58();
  v262 = v11 - v10;
  v249 = *v6;
  v12 = *(v6 + 24);
  v341 = *(v6 + 8);
  v342 = v12;
  v226 = *(v6 + 40);
  v227 = *(v6 + 48);
  v233 = *(v6 + 56);
  v234 = *(v6 + 64);
  v340 = *(v6 + 72);
  v13 = *(v6 + 88);
  v339 = *(v6 + 96);
  v338[0] = *(v6 + 97);
  *(v338 + 3) = *(v6 + 100);
  v242 = *(v6 + 104);
  v228 = *(v6 + 120);
  v223 = *(v6 + 128);
  v14 = *(v6 + 152);
  v335 = *(v6 + 136);
  v336 = v14;
  v15 = *(v6 + 176);
  v337 = *(v6 + 168);
  v16 = *(v6 + 192);
  v17 = *(v6 + 208);
  v236 = *(v6 + 200);
  v18 = *(v6 + 216);
  v243 = *(v6 + 184);
  v244 = *(v6 + 224);
  v19 = *(v6 + 232);
  v20 = *(v6 + 240);
  v246 = *(v6 + 256);
  v247 = *(v6 + 248);
  v245 = *(v6 + 264);
  v21 = *(v6 + 288);
  v334 = *(v6 + 304);
  v22 = *(v6 + 272);
  v333 = v21;
  v332 = v22;
  v331 = *(v6 + 324);
  v330 = *(v6 + 320);
  sub_1ABAD219C(&qword_1EB4D3EC0, &qword_1ABF41168);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1ABF39090;
  v24 = *(v6 + 152);
  v343 = *(v6 + 136);
  v344 = v24;
  v25 = *(v6 + 288);
  v358 = *(v6 + 272);
  v345 = *(v6 + 168);
  v240 = v19;
  v241 = v15;
  v346 = v15;
  v26 = v236;
  v347 = v243;
  v348 = v16;
  v349 = v236;
  v237 = v18;
  v238 = v17;
  v350 = v17;
  v351 = v18;
  v352 = v244;
  v353 = v19;
  v239 = v20;
  v354 = v20;
  v27 = v247;
  v355 = v247;
  v356 = v246;
  v357 = v245;
  v359 = v25;
  v360 = *(v6 + 304);
  v235 = v16;
  if (sub_1ABB9AE48(&v343) == 1)
  {
    v28 = 0;
    v29 = 0;
    v27 = 0;
    v30 = 0;
    v31 = 0;
    *(v23 + 96) = 0;
    *(v23 + 64) = 0u;
    *(v23 + 80) = 0u;
    *(v23 + 32) = 0u;
    *(v23 + 48) = 0u;
  }

  else
  {
    v32 = v345;
    *(v23 + 32) = *(&v344 + 1);
    *(v23 + 40) = v32;
    *(v23 + 48) = v241;
    *(v23 + 56) = v243;
    *(v23 + 64) = v16;
    *(v23 + 72) = v236;
    *(v23 + 80) = v17;
    *(v23 + 88) = v18;
    *(v23 + 96) = v244;

    v28 = v240;

    v29 = v20;
    v30 = v246;
    v31 = v245;
  }

  v33 = v23;
  *(v23 + 104) = v28;
  *(v23 + 112) = v29;
  *(v23 + 120) = v27;
  *(v23 + 128) = v30;
  *(v23 + 136) = v31;
  v34 = v233;
  v36 = v229;
  v35 = v231;
  v268 = v23;
  if (!*(v258 + 32))
  {
    v40 = 0;
    v41 = MEMORY[0x1E69E7CC0];
    v42 = v244;
LABEL_7:
    v43 = 16 * v40 + 40;
    while (v40 != 7)
    {
      if (v40 > 6)
      {
LABEL_97:
        __break(1u);
        sub_1ABA7D4EC();
        swift_once();
        v196 = sub_1ABF237F4();
        sub_1ABA7AA24(v196, qword_1ED871B20);
        v197 = sub_1ABF237D4();
        v198 = sub_1ABF24664();
        v199 = sub_1ABA84024();
        if (os_log_type_enabled(v199, v200))
        {
          v201 = sub_1ABA88598();
          *v201 = 0;
          _os_log_impl(&dword_1ABA78000, v197, v198, "Decoding error while collating features. Returning empty entity", v201, 2u);
          sub_1ABA7BDD8();
          MEMORY[0x1AC5AB8B0]();
        }

        v202 = sub_1ABA81694();
        if (v204)
        {
          v205 = v203;
        }

        else
        {
          v205 = v202;
        }

        sub_1ABB9AE18(v275);
        v206 = v339;
        *v224 = v249;
        *(v224 + 8) = 0;
        *(v224 + 16) = 0;
        *(v224 + 24) = 0;
        *(v224 + 32) = v205;
        *(v224 + 40) = v226;
        *(v224 + 48) = v227;
        *(v224 + 56) = v34;
        *(v224 + 64) = v36;
        *(v224 + 72) = 0u;
        *(v224 + 88) = 0u;
        *(v224 + 104) = 0;
        memcpy((v224 + 112), v275, 0x3C9uLL);
        *(v224 + 1152) = 0;
        *(v224 + 1088) = 0;
        *(v224 + 1096) = 1;
        *(v224 + 1104) = v13;
        *(v224 + 1112) = v206;
        *(v224 + 1136) = vdupq_n_s64(v228);
        *(v224 + 1120) = v242;
        swift_bridgeObjectRetain_n();
        sub_1ABB9AE60(v226, v227);

        return;
      }

      ++v40;
      v44 = v43 + 16;
      v26 = *(v33 + v43);
      v43 += 16;
      if (v26)
      {
        v45 = *(v33 + v44 - 24);

        v34 = v42;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1ABA7BEF0();
          sub_1ABAAA4F4();
          v41 = v49;
        }

        v47 = *(v41 + 16);
        v46 = *(v41 + 24);
        v33 = v268;
        if (v47 >= v46 >> 1)
        {
          sub_1ABA7BBEC(v46);
          sub_1ABAAA4F4();
          v41 = v50;
          v33 = v268;
        }

        *(v41 + 16) = v47 + 1;
        v48 = v41 + 16 * v47;
        *(v48 + 32) = v45;
        *(v48 + 40) = v26;
        v36 = v229;
        v35 = v231;
        v42 = v34;
        goto LABEL_7;
      }
    }

    sub_1ABB9ED18();

    v38 = *&v275[8];
    if (*&v275[8])
    {
      v37 = *v275;
      v39 = *&v275[16];
      v34 = v233;
      goto LABEL_18;
    }

    swift_setDeallocating();
    sub_1ABB4DB98();
    if (qword_1ED871B18 != -1)
    {
      sub_1ABA7D4EC();
      swift_once();
    }

    v169 = sub_1ABF237F4();
    sub_1ABA7AA24(v169, qword_1ED871B20);
    v170 = sub_1ABF237D4();
    v171 = sub_1ABF24644();
    v172 = sub_1ABA84024();
    if (os_log_type_enabled(v172, v173))
    {
      v174 = sub_1ABA88598();
      *v174 = 0;
      _os_log_impl(&dword_1ABA78000, v170, v171, "Nil span passed to contextualModel. Falling back to relevance ranking.", v174, 2u);
      sub_1ABA7BDD8();
      MEMORY[0x1AC5AB8B0]();
    }

    sub_1ABA7D500();
    *&v275[56] = v233;
    *&v275[64] = v234;
    goto LABEL_73;
  }

  v220 = *(v258 + 40);
  v37 = *(v258 + 24);

  v39 = v220;
LABEL_18:
  v51 = HIBYTE(v35) & 0xF;
  if ((v35 & 0x2000000000000000) == 0)
  {
    v51 = v36 & 0xFFFFFFFFFFFFLL;
  }

  v52 = *(&v39 + 1);
  if ((4 * v51) < *(&v39 + 1) >> 14)
  {

    swift_setDeallocating();
    sub_1ABB4DB98();
    sub_1ABA7D500();
    *&v275[56] = v34;
    *&v275[64] = v234;
LABEL_73:
    sub_1ABA9A34C();
    v275[96] = *(v175 + 208);
    *(v176 + 97) = v338[0];
    *&v275[100] = *(v175 + 203);
    sub_1ABA837D4();
    sub_1ABA7E53C(v235);
    sub_1ABB9E620(v275, v225, v224);
    return;
  }

  v217 = v37;
  v218 = v38;
  v221 = v39;
  v53 = sub_1ABF23EC4();
  v54 = MEMORY[0x1AC5A9330](v53);
  v55 = v36;
  v57 = v56;

  *v275 = v54;
  *&v275[8] = v57;
  v58 = sub_1ABA8E7B8();
  MEMORY[0x1AC5A9410](v58);
  v59 = sub_1ABB9AF7C(v52, v55, v35);
  v60 = MEMORY[0x1AC5A9330](v59);
  v62 = v61;

  MEMORY[0x1AC5A9410](v60, v62);

  sub_1ABE85170(*v275, *&v275[8]);

  sub_1ABF23C84();

  sub_1ABBE6A60();
  sub_1ABA8E794(v63, v64);
  v66 = v65;
  v68 = v67;

  v214 = sub_1ABE84B8C(v66, v68);
  v216 = v69;

  v70 = sub_1ABF23EC4();
  v71 = MEMORY[0x1AC5A9330](v70);
  v73 = v72;

  sub_1ABE85170(v71, v73);

  sub_1ABF23C84();

  sub_1ABBE6A60();
  sub_1ABA8E794(v74, v75);
  v77 = v76;
  v79 = v78;

  v255 = sub_1ABE84B8C(v77, v79);
  v259 = v80;

  v325 = MEMORY[0x1E69E7CC0];
  sub_1ABADE0CC(0, 7, 0);
  v81 = 0;
  v82 = v325;
  v252 = v251 + 1;
  v83 = v268;
  do
  {
    v84 = *(v83 + v81 + 40);
    if (v84)
    {
      v85 = *(v83 + v81 + 32);

      sub_1ABE85170(v85, v84);
      sub_1ABF23C84();

      sub_1ABBE6A60();
      sub_1ABA8E794(v86, v87);
      v89 = v88;
      v91 = v90;

      v92 = objc_autoreleasePoolPush();
      *v275 = v89;
      *&v275[8] = v91;
      sub_1ABF21924();
      sub_1ABAE28EC();
      sub_1ABAA5264();
      v93 = sub_1ABF24874();
      (*v252)(v262, v265);

      *v275 = v93;
      sub_1ABAD219C(&unk_1EB4D33D0, &unk_1ABF3A8C0);
      sub_1ABAAA5C0();
      sub_1ABA8E7B8();
      v94 = sub_1ABF23B54();
      v96 = v95;

      objc_autoreleasePoolPop(v92);
      v97 = objc_autoreleasePoolPush();
      sub_1ABBA0194(v94, v96, v255, v259, v275);

      objc_autoreleasePoolPop(v97);

      v98 = *v275;
      v83 = v268;
    }

    else
    {
      v98 = 0;
    }

    v325 = v82;
    v100 = *(v82 + 16);
    v99 = *(v82 + 24);
    if (v100 >= v99 >> 1)
    {
      v101 = sub_1ABA7BBEC(v99);
      sub_1ABADE0CC(v101, v100 + 1, 1);
      v83 = v268;
      v82 = v325;
    }

    *(v82 + 16) = v100 + 1;
    *(v82 + 4 * v100 + 32) = v98;
    v81 += 16;
  }

  while (v81 != 112);
  v256 = v82;
  swift_setDeallocating();
  sub_1ABB4DB98();

  sub_1ABBA1A30();
  v102 = sub_1ABF239C4();
  v307[0] = v335;
  v307[1] = v336;
  sub_1ABA8FF50(v334);
  v308 = v337;
  v309 = v241;
  v310 = v243;
  v311 = v235;
  v312 = v236;
  v313 = v238;
  v314 = v237;
  v315 = v244;
  v316 = v240;
  v317 = v239;
  v318 = v247;
  v319 = v246;
  v320 = v245;
  *(v103 + 136) = v104;
  if (sub_1ABB9AE48(v307) != 1)
  {

    v102 = sub_1ABB9F3D8(v321, v322, v323, v324, v214, v216);
  }

  v105 = swift_allocObject();
  *(v105 + 16) = xmmword_1ABF34740;
  v293[0] = v335;
  v293[1] = v336;
  sub_1ABA8FF50(v334);
  v294 = v337;
  v295 = v241;
  v296 = v243;
  v297 = v235;
  v298 = v236;
  v299 = v238;
  v300 = v237;
  v301 = v244;
  v302 = v240;
  v303 = v239;
  v304 = v247;
  v305 = v246;
  v306 = v245;
  *(v106 + 136) = v107;
  if (sub_1ABB9AE48(v293) == 1)
  {
    v108 = 0;
    v109 = 0;
  }

  else
  {
    v108 = v305;
  }

  *(v105 + 32) = v108;
  *(v105 + 40) = v109;
  v26 = v218;
  *v275 = v217;
  *&v275[8] = v218;
  *&v275[16] = v221;
  sub_1ABB9F674();
  v111 = v110;
  swift_setDeallocating();
  sub_1ABB4DB98();

  sub_1ABBA043C();
  sub_1ABBA0480();
  v112 = sub_1ABF239C4();
  v34 = v102 + 64;
  v113 = 1 << *(v102 + 32);
  v114 = -1;
  if (v113 < 64)
  {
    v114 = ~(-1 << v113);
  }

  v115 = v114 & *(v102 + 64);
  v36 = (v113 + 63) >> 6;
  sub_1ABA8071C();
  v253 = v116;
  sub_1ABA8071C();
  v230 = v117;
  v232 = v118;
  sub_1ABA8071C();
  v222 = v119;
  sub_1ABA8071C();
  v219 = v120;
  sub_1ABA8071C();
  v260 = v121;
  sub_1ABA8071C();
  v269 = v122;

  v123 = 0;
  v263 = v102;
LABEL_37:
  v266 = v112;
  while (v115)
  {
LABEL_43:
    v125 = __clz(__rbit64(v115));
    v115 &= v115 - 1;
    v126 = v125 | (v123 << 6);
    v127 = *(*(v102 + 48) + v126);
    v128 = *(*(v102 + 56) + 4 * v126);
    v129 = 0xEA00000000006572;
    v130 = 0x6F63536369706F74;
    v131 = v249;
    switch(v127)
    {
      case 1:
        sub_1ABA97AA4();
        v130 = v133 + 9;
        v129 = v219;
        break;
      case 2:
        sub_1ABA97AA4();
        v130 = v134 + 8;
        v129 = v222;
        break;
      case 3:
        sub_1ABA97AA4();
        v130 = v132 + 4;
        v129 = v230;
        break;
      case 4:
        sub_1ABA97AA4();
        v130 = v135 + 9;
        v129 = v232;
        break;
      case 5:
        sub_1ABA97AA4();
        v130 = v136 + 5;
        v129 = v253;
        break;
      case 6:
        break;
      default:
        v130 = 0xD000000000000012;
        v129 = v260;
        break;
    }

    v137 = 3826797;
    if ((v131 & 0x80000000000000) == 0)
    {
      v137 = 3828069;
    }

    *v275 = v137;
    *&v275[8] = 0xE300000000000000;
    v271[0] = v131;
    v138 = sub_1ABF24FF4();
    MEMORY[0x1AC5A9410](v138);

    *&v326 = 0xD000000000000014;
    *(&v326 + 1) = v269;
    *&v327 = v130;
    *(&v327 + 1) = v129;
    v328 = *v275;
    v139 = [objc_opt_self() featureValueWithDouble_];
    if (v139)
    {
      v26 = v139;
      swift_isUniquelyReferenced_nonNull_native();
      *v275 = v266;
      sub_1ABA8E184();
      v215 = sub_1ABAFF5BC();
      v102 = v263;
      if (__OFADD__(v266[2], (v143 & 1) == 0))
      {
        __break(1u);
      }

      else
      {
        v144 = v143;
        sub_1ABAD219C(&qword_1EB4D1FC8, &qword_1ABF4E1A0);
        sub_1ABAA5264();
        if (sub_1ABF24C64())
        {
          sub_1ABA8E184();
          v145 = sub_1ABAFF5BC();
          if ((v144 & 1) != (v146 & 1))
          {
            goto LABEL_100;
          }
        }

        else
        {
          v145 = v215;
        }

        v147 = v144;
        v112 = *v275;
        if (v147)
        {
          v148 = *(*v275 + 56);
          v149 = *(v148 + 8 * v145);
          *(v148 + 8 * v145) = v26;

          v150 = sub_1ABA8E184();
          sub_1ABBA1A84(v150);
          goto LABEL_37;
        }

        *(*v275 + 8 * (v145 >> 6) + 64) |= 1 << v145;
        v151 = (v112[6] + 48 * v145);
        v152 = v326;
        v153 = v328;
        v151[1] = v327;
        v151[2] = v153;
        *v151 = v152;
        *(v112[7] + 8 * v145) = v26;
        v154 = v112[2];
        v155 = __OFADD__(v154, 1);
        v156 = v154 + 1;
        if (!v155)
        {
          v112[2] = v156;
          goto LABEL_37;
        }
      }

      __break(1u);
      objc_autoreleasePoolPop(v36);
      __break(1u);
LABEL_100:
      sub_1ABF25104();
      __break(1u);
      return;
    }

    sub_1ABA8E184();
    v112 = v266;
    v26 = sub_1ABAFF5BC();
    v141 = v140;
    v142 = sub_1ABA8E184();
    sub_1ABBA1A84(v142);
    v102 = v263;
    if (v141)
    {
      swift_isUniquelyReferenced_nonNull_native();
      *v275 = v266;
      sub_1ABAD219C(&qword_1EB4D1FC8, &qword_1ABF4E1A0);
      sub_1ABAA5264();
      sub_1ABF24C64();
      v112 = *v275;

      sub_1ABF24C84();
      goto LABEL_37;
    }
  }

  while (1)
  {
    v124 = v123 + 1;
    if (__OFADD__(v123, 1))
    {
      __break(1u);
      goto LABEL_97;
    }

    if (v124 >= v36)
    {
      break;
    }

    v115 = *(v34 + 8 * v124);
    ++v123;
    if (v115)
    {
      v123 = v124;
      goto LABEL_43;
    }
  }

  *v275 = v249;
  v157 = EntityIdentifier.stringValue.getter();
  v329[0] = 0xD000000000000014;
  v329[1] = v269;
  v329[2] = 0xD000000000000012;
  v329[3] = v260;
  v329[4] = v157;
  v329[5] = v158;
  v159 = [objc_opt_self() featureValueWithDouble_];
  if (v159)
  {
    v160 = v159;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v275 = v112;
    sub_1ABAFB3A0(v160, v329, isUniquelyReferenced_nonNull_native);
    v162 = sub_1ABAA4494();
    sub_1ABBA1A84(v162);
    v163 = *v275;
  }

  else
  {
    sub_1ABAA4494();
    v164 = sub_1ABAFF5BC();
    if (v165)
    {
      v166 = v164;
      swift_isUniquelyReferenced_nonNull_native();
      *v275 = v112;
      sub_1ABAD219C(&qword_1EB4D1FC8, &qword_1ABF4E1A0);
      sub_1ABAA5264();
      sub_1ABF24C64();
      v163 = *v275;

      v167 = *(*(v163 + 56) + 8 * v166);
      sub_1ABF24C84();
      v168 = sub_1ABAA4494();
      sub_1ABBA1A84(v168);
    }

    else
    {
      v177 = sub_1ABAA4494();
      sub_1ABBA1A84(v177);
      v163 = v112;
    }
  }

  sub_1ABAD219C(&qword_1EB4D1360, &unk_1ABF41170);
  v178 = swift_allocObject();
  *(v178 + 16) = xmmword_1ABF3BFB0;
  v179 = sub_1ABAD578C(1, v102);
  if ((v179 & 0x100000000) != 0)
  {
    v180 = 0;
  }

  else
  {
    v180 = v179;
  }

  *(v178 + 32) = v180;
  v181 = sub_1ABAD578C(3, v102);
  if ((v181 & 0x100000000) != 0)
  {
    v182 = 0;
  }

  else
  {
    v182 = v181;
  }

  *(v178 + 36) = v182;
  v183 = sub_1ABAD578C(5, v102);
  if ((v183 & 0x100000000) != 0)
  {
    v184 = 0;
  }

  else
  {
    v184 = v183;
  }

  *(v178 + 40) = v184;
  v185 = sub_1ABAD578C(2, v102);

  if ((v185 & 0x100000000) != 0)
  {
    v186 = 0;
  }

  else
  {
    v186 = v185;
  }

  *(v178 + 44) = v186;

  v187 = sub_1ABB9FBC4(v163, v225);
  v188 = sub_1ABBA1DE0(v187, v249);
  v189 = objc_autoreleasePoolPush();
  sub_1ABBA45E0(v188, &v291, v292);

  objc_autoreleasePoolPop(v189);

  memcpy(v272, v292, sizeof(v272));
  v274 = v249;
  v190 = swift_allocObject();
  *(v190 + 16) = xmmword_1ABF34060;
  *(v190 + 32) = 0;
  *(v190 + 36) = v111;
  v273 = v256;
  sub_1ABD7E24C(v190);
  sub_1ABD7E24C(v178);
  v276[0] = v335;
  v276[1] = v336;
  sub_1ABA8FF50(v334);
  v191 = v273;
  v277 = v337;
  v278 = v241;
  v279 = v243;
  v280 = v235;
  v281 = v236;
  v282 = v238;
  v283 = v237;
  v284 = v244;
  v285 = v240;
  v286 = v239;
  v287 = v247;
  v288 = v246;
  v289 = v245;
  *(v192 + 136) = v193;
  v194 = sub_1ABB9AE48(v276);
  v195 = v290;
  if (v194 == 1)
  {
    v195 = 0.0;
  }

  sub_1ABBA2F10(v275, v272, &v274, v191, v339, v242, *(&v242 + 1), v228, v223, v195, v13);

  memcpy(v271, v275, 0x488uLL);
  v207 = v271[9];
  v208 = v271[10];
  v209 = v271[11];
  v210 = v271[12];
  v211 = v271[144];
  v212 = v271[138];
  v270 = v271[139];
  v264 = v271[140];
  v267 = v271[0];
  v213 = v271[141];
  v248 = v271[142];
  v250 = v271[143];
  v257 = *&v271[3];
  v261 = *&v271[1];
  v254 = v271[13];
  sub_1ABB9AE60(v226, v227);
  sub_1ABBA1F34(v207, v208);

  sub_1ABB4F2B0(v271);
  *v224 = v267;
  *(v224 + 24) = v257;
  *(v224 + 8) = v261;
  *(v224 + 40) = v226;
  *(v224 + 48) = v227;
  *(v224 + 56) = v233;
  *(v224 + 64) = v234;
  *(v224 + 72) = v207;
  *(v224 + 80) = v208;
  *(v224 + 88) = v209;
  *(v224 + 96) = v210;
  *(v224 + 104) = v254;
  memcpy((v224 + 112), &v271[14], 0x3C9uLL);
  *(v224 + 1152) = v211;
  *(v224 + 1088) = 0;
  *(v224 + 1096) = 1;
  *(v224 + 1104) = v212;
  *(v224 + 1112) = v270;
  *(v224 + 1120) = v264;
  *(v224 + 1128) = v213;
  *(v224 + 1136) = v248;
  *(v224 + 1144) = v250;
}

void sub_1ABB9E354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1ABAD219C(&qword_1EB4D3EC8, &unk_1ABF41180);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v40 - v6;
  v8 = type metadata accessor for MorphunTokenizer(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  sub_1ABA7BC58();
  v11 = v10 - v9;
  v12 = sub_1ABF21F54();
  sub_1ABA7B9B4(v7, 1, 1, v12);
  MorphunTokenizer.init(locale:overrideConfigOptions:)();
  if (!v4)
  {
    v13 = objc_autoreleasePoolPush();
    v14 = sub_1ABF22F34();
    MEMORY[0x1EEE9AC00](v14);
    sub_1ABAA491C();
    sub_1ABAAA034(sub_1ABAAA358, v15, v16, v17, v18, v19, v20, v21, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51);
    v23 = v22;

    objc_autoreleasePoolPop(v13);
    v24 = sub_1ABE8AE5C(v23);
    v25 = objc_autoreleasePoolPush();
    v26 = sub_1ABF22F34();
    MEMORY[0x1EEE9AC00](v26);
    sub_1ABAA491C();
    sub_1ABAAA034(sub_1ABAAA340, v27, v28, v29, v30, v31, v32, v33, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51);
    v35 = v34;

    objc_autoreleasePoolPop(v25);
    v36 = sub_1ABE8AE5C(v35);

    sub_1ABD91F24(v37, v24);
    v39 = *(v38 + 16);

    if (v39)
    {
      sub_1ABBA22D8(v36, v24);

      sub_1ABBA294C(v11);
    }

    else
    {
      sub_1ABBA294C(v11);
    }
  }
}

void sub_1ABB9E620(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  v16 = a1[6];
  v17 = a1[5];
  v7 = a1[7];
  v8 = a1[8];
  v9 = a1[11];
  v15 = *(a1 + 96);
  v18 = *(a1 + 13);
  v10 = a1[15];
  v11 = sub_1ABBA1DE0(a2, *a1);
  v12 = objc_autoreleasePoolPush();
  sub_1ABBA45E0(v11, &v23, __src);
  if (v3)
  {

    objc_autoreleasePoolPop(v12);
  }

  else
  {

    objc_autoreleasePoolPop(v12);
    memcpy(__dst, a1 + 17, sizeof(__dst));
    if (sub_1ABB9AE48(__dst) == 1)
    {
      v13 = 0.0;
    }

    else
    {
      v13 = __dst[21];
    }

    memcpy(v20, a1 + 17, sizeof(v20));
    if (sub_1ABB9AE48(v20) == 1)
    {
      v14 = 0;
    }

    else
    {
      v14 = v20[22];
    }

    memcpy(v19, __src, 0x3C8uLL);
    sub_1ABB9AEA4(v19);
    *a3 = v6;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *(a3 + 24) = 0;
    *(a3 + 32) = v13;
    *(a3 + 40) = v17;
    *(a3 + 48) = v16;
    *(a3 + 56) = v7;
    *(a3 + 64) = v8;
    *(a3 + 72) = 0u;
    *(a3 + 88) = 0u;
    *(a3 + 104) = 0;
    memcpy((a3 + 112), v19, 0x3C9uLL);
    *(a3 + 1152) = 0;
    *(a3 + 1088) = v14;
    *(a3 + 1096) = 0;
    *(a3 + 1104) = v9;
    *(a3 + 1112) = v15;
    *(a3 + 1136) = vdupq_n_s64(v10);
    *(a3 + 1120) = v18;
    swift_bridgeObjectRetain_n();
    sub_1ABB9AE60(v17, v16);
  }
}

uint64_t sub_1ABB9E7FC(uint64_t a1)
{
  __dst[0] = a1;

  sub_1ABB9B044(__dst);
  result = __dst[0];
  v2 = *(__dst[0] + 16);
  if (v2)
  {
    v3 = *(__dst[0] + 40);
    v4 = v2 - 1;
    v5 = __dst[0] + 144;
    v6 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      memcpy(__dst, (v5 - 112), 0x488uLL);
      v7 = *&__dst[1];
      if (*&__dst[1] == v3)
      {
        v40 = v4;
        v8 = __dst[144];
        v9 = __dst[143];
        v10 = __dst[142];
        v11 = __dst[141];
        v12 = v5;
        v13 = __dst[140];
        v36 = __dst[139];
        v14 = __dst[138];
        v15 = __dst[7];
        v16 = __dst[8];
        v17 = *&__dst[4];
        v18 = __dst[3];
        v19 = __dst[2];
        v32 = __dst[0];
        v34 = v12;
        memcpy(&__src[7], v12, 0x3C9uLL);
        memcpy(v45, __src, 0x3D0uLL);
        v33 = __dst[5];
        v35 = __dst[6];
        sub_1ABB9AE60(__dst[5], __dst[6]);
        v39 = v8;

        v37 = v13;

        v38 = v9;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1ABA7BEF0();
          sub_1ABADA37C();
          v6 = v28;
        }

        v21 = *(v6 + 16);
        v20 = *(v6 + 24);
        v5 = v34;
        if (v21 >= v20 >> 1)
        {
          sub_1ABA7BBEC(v20);
          sub_1ABADA37C();
          v6 = v29;
        }

        *(v6 + 16) = v21 + 1;
        v22 = v6 + 1160 * v21;
        *(v22 + 32) = v32;
        *(v22 + 40) = v7 + v17;
        *(v22 + 48) = v19;
        *(v22 + 56) = v18;
        *(v22 + 64) = v17;
        *(v22 + 72) = v33;
        *(v22 + 80) = v35;
        *(v22 + 88) = v15;
        *(v22 + 96) = v16;
        *(v22 + 104) = 0u;
        *(v22 + 120) = 0u;
        *(v22 + 136) = 0;
        memcpy((v22 + 137), v45, 0x3D0uLL);
        v23 = *&v44[3];
        *(v22 + 1113) = *v44;
        *(v22 + 1116) = v23;
        *(v22 + 1120) = 0;
        *(v22 + 1128) = 1;
        v24 = *&v43[3];
        *(v22 + 1129) = *v43;
        *(v22 + 1132) = v24;
        *(v22 + 1136) = v14;
        *(v22 + 1144) = v36;
        v25 = *&v42[3];
        *(v22 + 1145) = *v42;
        *(v22 + 1148) = v25;
        *(v22 + 1152) = v37;
        *(v22 + 1160) = v11;
        *(v22 + 1168) = v10;
        *(v22 + 1176) = v38;
        v4 = v40;
        *(v22 + 1184) = v39;
        if (!v40)
        {
          goto LABEL_16;
        }
      }

      else
      {
        sub_1ABB4F254(__dst, v45);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1ABA7BEF0();
          sub_1ABADA37C();
          v6 = v30;
        }

        v27 = *(v6 + 16);
        v26 = *(v6 + 24);
        if (v27 >= v26 >> 1)
        {
          sub_1ABA7BBEC(v26);
          sub_1ABADA37C();
          v6 = v31;
        }

        *(v6 + 16) = v27 + 1;
        memcpy((v6 + 1160 * v27 + 32), __dst, 0x488uLL);
        if (!v4)
        {
LABEL_16:

          v45[0] = v6;

          sub_1ABB9B044(v45);

          return v45[0];
        }
      }

      --v4;
      v5 += 1160;
    }
  }

  return result;
}

void sub_1ABB9EB88()
{
  sub_1ABA7E2A8();
  v16 = MEMORY[0x1E69E7CD0];
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = v0 + 32;
    v4 = MEMORY[0x1E69E7CC0];
    do
    {
      memcpy(__dst, (v3 + 1160 * v2), sizeof(__dst));
      v5 = __dst[0];
      v6 = v16;
      if (*(v16 + 16))
      {
        sub_1ABF25234();
        MEMORY[0x1AC5AA8D0](v5);
        v7 = sub_1ABF25294();
        v8 = ~(-1 << *(v6 + 32));
        while (1)
        {
          v9 = v7 & v8;
          if (((*(v6 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v7 & v8)) & 1) == 0)
          {
            break;
          }

          v7 = v9 + 1;
          if (*(*(v6 + 48) + 8 * v9) == v5)
          {
            goto LABEL_13;
          }
        }
      }

      sub_1ABB4F254(__dst, v14);
      sub_1ABB180F8(v14, v5);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1ABA7BEF0();
        sub_1ABADA37C();
        v4 = v12;
      }

      v11 = *(v4 + 16);
      v10 = *(v4 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_1ABA7BBEC(v10);
        sub_1ABADA37C();
        v4 = v13;
      }

      *(v4 + 16) = v11 + 1;
      memcpy((v4 + 1160 * v11 + 32), __dst, 0x488uLL);
LABEL_13:
      ++v2;
    }

    while (v2 != v1);
  }

  sub_1ABA7BC1C();
}

void sub_1ABB9ED18()
{
  sub_1ABA7E2A8();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v68 = v6;
  v7 = sub_1ABAD219C(&qword_1EB4D3EC8, &unk_1ABF41180);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v67 = &v64 - v8;
  v65 = v5;
  v66 = v3;
  v9 = sub_1ABF23C84();
  v11 = v10;
  v12 = *(v1 + 16);
  v13 = MEMORY[0x1E69E7CC0];
  if (v12)
  {
    v80 = MEMORY[0x1E69E7CC0];
    sub_1ABADDBD4(0, v12, 0);
    v13 = v80;
    v14 = v1 + 40;
    do
    {
      v15 = sub_1ABF23C84();
      v17 = v16;
      v80 = v13;
      v19 = *(v13 + 16);
      v18 = *(v13 + 24);
      v20 = v19 + 1;
      if (v19 >= v18 >> 1)
      {
        v22 = sub_1ABA7BBEC(v18);
        sub_1ABADDBD4(v22, v19 + 1, 1);
        v13 = v80;
      }

      *(v13 + 16) = v20;
      v21 = v13 + 16 * v19;
      *(v21 + 32) = v15;
      *(v21 + 40) = v17;
      v14 += 16;
      --v12;
    }

    while (v12);
  }

  else
  {
    v20 = *(MEMORY[0x1E69E7CC0] + 16);
    if (!v20)
    {
LABEL_63:

LABEL_64:

      v61 = v68;
      v60 = 0uLL;
LABEL_65:
      *v61 = v60;
      v61[1] = v60;
      goto LABEL_66;
    }
  }

  v23 = 0;
  v76 = 0;
  v78 = 0;
  v74 = v13 + 32;
  v71 = v9;
  v72 = v11;
  v69 = v13;
  v70 = v20;
  do
  {
    if (v23 >= *(v13 + 16))
    {
      __break(1u);
LABEL_68:
      sub_1ABA7D4EC();
      swift_once();
LABEL_57:
      v56 = sub_1ABF237F4();
      sub_1ABA7AA24(v56, qword_1ED871B20);
      v57 = sub_1ABF237D4();
      v58 = sub_1ABF24654();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = sub_1ABA88598();
        *v59 = 0;
        _os_log_impl(&dword_1ABA78000, v57, v58, "Invalid mapping of mention found. Returning nil for mention span", v59, 2u);
        sub_1ABA7BDD8();
        MEMORY[0x1AC5AB8B0]();
      }

      v60 = 0uLL;
      v61 = v68;
      goto LABEL_65;
    }

    v24 = (v74 + 16 * v23);
    v26 = *v24;
    v25 = v24[1];
    v80 = v9;
    v81 = v11;
    v82 = v26;
    v83 = v25;
    v27 = sub_1ABAE28EC();

    v75 = v27;
    if (sub_1ABF248D4())
    {
      v28 = sub_1ABF23D44();
      if (v78)
      {
        if (sub_1ABF23D44() < v28)
        {

LABEL_15:
          v76 = v26;
          v78 = v25;
          goto LABEL_53;
        }
      }

      else if (v28 > 0)
      {
        goto LABEL_15;
      }
    }

    v29 = objc_autoreleasePoolPush();
    v80 = v9;
    v81 = v11;
    v82 = 32;
    v83 = 0xE100000000000000;
    v30 = sub_1ABF24884();
    objc_autoreleasePoolPop(v29);
    v31 = objc_autoreleasePoolPush();
    v80 = v26;
    v81 = v25;
    v82 = 32;
    v83 = 0xE100000000000000;
    v32 = sub_1ABF24884();

    objc_autoreleasePoolPop(v31);
    v33 = sub_1ABE8AE5C(v32);
    v79 = *(v30 + 16);
    if (!v79)
    {

      v20 = v70;
      v9 = v71;
      v11 = v72;
      goto LABEL_53;
    }

    v73 = v23;
    sub_1ABAA3478();
    v34 = 0;
    v77 = v30 + 32;
    do
    {
      if (v34 >= *(v30 + 16))
      {
        __break(1u);
        goto LABEL_63;
      }

      v35 = v13;
      v36 = v25;
      if (*(v33 + 16))
      {
        v37 = (v77 + 16 * v34);
        v25 = *v37;
        v13 = v37[1];
        sub_1ABF25234();

        sub_1ABF23D34();
        v38 = sub_1ABF25294();
        v39 = ~(-1 << *(v33 + 32));
        do
        {
          v40 = v38 & v39;
          if (((*(v33 + 56 + (((v38 & v39) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v38 & v39)) & 1) == 0)
          {

            goto LABEL_30;
          }

          v41 = (*(v33 + 48) + 16 * v40);
          if (*v41 == v25 && v41[1] == v13)
          {
            break;
          }

          v43 = sub_1ABF25054();
          v38 = v40 + 1;
        }

        while ((v43 & 1) == 0);
        if (v35)
        {
          v80 = v36;
          v81 = v35;
          v44 = sub_1ABA8E7B8();
          MEMORY[0x1AC5A9410](v44);
          MEMORY[0x1AC5A9410](v25, v13);

          v25 = v80;
          v13 = v81;
        }
      }

      else
      {
LABEL_30:
        if (!v35)
        {
          goto LABEL_37;
        }

        v45 = sub_1ABF23D44();
        v25 = v45;
        if (v78)
        {
          if (sub_1ABF23D44() < v45)
          {

LABEL_35:
            sub_1ABAA3478();
            v76 = v36;
            v78 = v35;
            goto LABEL_38;
          }

LABEL_37:
          sub_1ABAA3478();
          goto LABEL_38;
        }

        if (v45 > 0)
        {
          goto LABEL_35;
        }

        sub_1ABAA3478();
        v78 = 0;
      }

LABEL_38:
      ++v34;
    }

    while (v34 != v79);

    v20 = v70;
    if (!v13)
    {
      v9 = v71;
      v11 = v72;
LABEL_50:
      v13 = v69;
      v23 = v73;
      goto LABEL_53;
    }

    v46 = sub_1ABF23D44();
    v47 = v46;
    v9 = v71;
    if (v78)
    {
      v48 = sub_1ABF23D44();
      v11 = v72;
      if (v48 >= v47)
      {
      }

      else
      {

        v76 = v25;
        v78 = v13;
      }

      goto LABEL_50;
    }

    v11 = v72;
    v23 = v73;
    if (v46 <= 0)
    {

      v78 = 0;
    }

    else
    {
      v76 = v25;
      v78 = v13;
    }

    v13 = v69;
LABEL_53:
    ++v23;
  }

  while (v23 != v20);

  if (!v78)
  {
    goto LABEL_64;
  }

  v80 = v9;
  v81 = v11;
  v82 = v76;
  v83 = v78;
  v49 = sub_1ABF21F54();
  v50 = v67;
  sub_1ABA7B9B4(v67, 1, 1, v49);
  v51 = sub_1ABF248C4();
  v53 = v52;
  v55 = v54;
  sub_1ABBA28E4(v50);

  if (v55)
  {
    if (qword_1ED871B18 == -1)
    {
      goto LABEL_57;
    }

    goto LABEL_68;
  }

  v62 = v68;
  v63 = v66;
  *v68 = v65;
  v62[1] = v63;
  v62[2] = v51;
  v62[3] = v53;

LABEL_66:
  sub_1ABA7BC1C();
}

uint64_t sub_1ABB9F3D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26[0] = a5;
  v26[1] = a6;
  sub_1ABAE28EC();
  sub_1ABA8E7B8();
  result = sub_1ABF248E4();
  v9 = result;
  v10 = 0;
  v25 = MEMORY[0x1E69E7CD0];
  v11 = *(result + 16);
  v12 = (result + 56);
  while (v11 != v10)
  {
    if (v10 >= *(v9 + 16))
    {
      __break(1u);
      return result;
    }

    ++v10;
    v13 = *(v12 - 1);
    v14 = *v12;
    v16 = *(v12 - 3);
    v15 = *(v12 - 2);

    v17 = MEMORY[0x1AC5A9330](v16, v15, v13, v14);
    sub_1ABB1840C(v26, v17, v18);

    v12 += 4;
  }

  v26[0] = v25;
  if (a1 && sub_1ABAAB7C8(a1))
  {
    sub_1ABB9FC48();

    swift_isUniquelyReferenced_nonNull_native();
    *&v19 = sub_1ABA933AC();
  }

  else
  {
    swift_isUniquelyReferenced_nonNull_native();
    v19 = sub_1ABA7C000();
  }

  sub_1ABAFB2B0(1, *&v19);
  if (a2 && sub_1ABAAB7C8(a2))
  {
    sub_1ABB9FC48();

    swift_isUniquelyReferenced_nonNull_native();
    *&v20 = sub_1ABA933AC();
  }

  else
  {
    swift_isUniquelyReferenced_nonNull_native();
    v20 = sub_1ABA7C000();
  }

  sub_1ABAFB2B0(3, *&v20);
  if (a3 && sub_1ABAAB7C8(a3))
  {
    sub_1ABB9FC48();

    swift_isUniquelyReferenced_nonNull_native();
    *&v21 = sub_1ABA933AC();
  }

  else
  {
    swift_isUniquelyReferenced_nonNull_native();
    v21 = sub_1ABA7C000();
  }

  sub_1ABAFB2B0(5, *&v21);
  if (a4 && sub_1ABAAB7C8(a4))
  {
    sub_1ABB9FC48();

    swift_isUniquelyReferenced_nonNull_native();
    *&v22 = sub_1ABA933AC();
  }

  else
  {

    swift_isUniquelyReferenced_nonNull_native();
    v22 = sub_1ABA7C000();
  }

  sub_1ABAFB2B0(2, *&v22);
  return v25;
}

void sub_1ABB9F674()
{
  sub_1ABA7E2A8();
  v59 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v56 = v7;
  v8 = sub_1ABF21944();
  sub_1ABA7BB64();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  sub_1ABA7BC58();
  v14 = v13 - v12;
  v57 = *(v2 + 24);
  sub_1ABF23EC4();
  sub_1ABF21914();
  sub_1ABBA2890();
  sub_1ABF248A4();
  v15 = *(v10 + 8);
  v15(v14, v8);

  sub_1ABB9AF7C(v57, v6, v4);
  sub_1ABF21914();
  sub_1ABF248A4();
  v15(v14, v8);

  sub_1ABAE28EC();
  sub_1ABAA37DC();
  v16 = sub_1ABF24884();

  sub_1ABAA37DC();
  v17 = sub_1ABF24884();

  v18 = *(v16 + 16);
  if (v18 >= v59)
  {
    if (v59 == 0x8000000000000000)
    {
LABEL_37:
      __break(1u);
    }

    else if (!__OFADD__(v18, -v59))
    {
      if (v18 < v18 - v59)
      {
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

      sub_1ABDF015C();
      v20 = v19;
      v22 = v21;

      if (v22)
      {
        v16 = sub_1ABF25094();
        swift_unknownObjectRetain_n();
        v24 = swift_dynamicCastClass();
        if (!v24)
        {
          swift_unknownObjectRelease();
          v24 = MEMORY[0x1E69E7CC0];
        }

        v25 = *(v24 + 16);

        if (__OFSUB__(v22 >> 1, v20))
        {
          goto LABEL_42;
        }

        if (v25 == (v22 >> 1) - v20)
        {
          v16 = swift_dynamicCastClass();
          swift_unknownObjectRelease_n();
          if (v16)
          {
            goto LABEL_14;
          }

          v16 = MEMORY[0x1E69E7CC0];
          goto LABEL_13;
        }

        swift_unknownObjectRelease_n();
      }

      sub_1ABB62CE0();
      v16 = v23;
LABEL_13:
      swift_unknownObjectRelease();
      goto LABEL_14;
    }

    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

LABEL_14:
  if (*(v17 + 16) < v59)
  {
    goto LABEL_25;
  }

  if (v59 < 0)
  {
    goto LABEL_39;
  }

  sub_1ABDF015C();
  v27 = v26;
  v29 = v28;

  if ((v29 & 1) == 0)
  {
LABEL_17:
    sub_1ABB62CE0();
    v17 = v30;
    goto LABEL_24;
  }

  sub_1ABF25094();
  swift_unknownObjectRetain_n();
  v31 = swift_dynamicCastClass();
  if (!v31)
  {
    swift_unknownObjectRelease();
    v31 = MEMORY[0x1E69E7CC0];
  }

  v32 = *(v31 + 16);

  if (__OFSUB__(v29 >> 1, v27))
  {
    goto LABEL_41;
  }

  if (v32 != (v29 >> 1) - v27)
  {
LABEL_43:
    swift_unknownObjectRelease_n();
    goto LABEL_17;
  }

  v17 = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  if (v17)
  {
    goto LABEL_25;
  }

  v17 = MEMORY[0x1E69E7CC0];
LABEL_24:
  swift_unknownObjectRelease();
LABEL_25:
  v33 = sub_1ABE8AE5C(v16);
  v34 = sub_1ABE8AE5C(v17);
  sub_1ABD91F24(v34, v33);
  v36 = v35;
  v37 = 0;
  v38 = 0;
  v16 = *(v56 + 16);
  v39 = v56 + 40;
LABEL_26:
  v40 = (v39 + 16 * v37);
  while (v16 != v37)
  {
    if (v37 >= v16)
    {
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v41 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      goto LABEL_36;
    }

    v43 = *v40;
    v40 += 2;
    v42 = v43;
    ++v37;
    if (v43)
    {
      v44 = *(v40 - 3);
      v60 = v39;

      sub_1ABE85170(v44, v42);
      sub_1ABF23C84();
      v58 = v36;

      sub_1ABBE6A60();
      sub_1ABA8E794(v45, v46);
      v48 = v47;
      v50 = v49;

      sub_1ABE84B8C(v48, v50);

      v51 = sub_1ABF24884();
      v36 = v58;

      v52 = sub_1ABE8AE5C(v51);
      v53 = sub_1ABBA22D8(v58, v52);

      v54 = v53[2];

      v39 = v60;
      v37 = v41;
      v55 = __OFADD__(v38, v54);
      v38 += v54;
      if (!v55)
      {
        goto LABEL_26;
      }

      __break(1u);
      break;
    }
  }

  sub_1ABA7BC1C();
}

uint64_t sub_1ABB9FBC4(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = a2;
  sub_1ABBA1AD8(a1, sub_1ABBA2844, 0, isUniquelyReferenced_nonNull_native, &v8);
  v6 = v8;
  if (v2)
  {
  }

  return v6;
}

void sub_1ABB9FC48()
{
  sub_1ABA7E2A8();
  v57 = v0;
  v2 = v1;
  v58 = v3;
  v60[1] = *MEMORY[0x1E69E9840];

  v60[0] = sub_1ABC1E730(v2);
  sub_1ABB9AFC8(v60);
  v4 = v60[0];
  v60[0] = MEMORY[0x1E69E7CD0];
  v56 = sub_1ABAAB7C8(v4);
  if (!v56)
  {

LABEL_49:
    sub_1ABA7BC1C();
    return;
  }

  v5 = 0;
  v54 = 0;
  v55 = v4 & 0xC000000000000001;
  v52 = v4 + 32;
  v53 = v4;
  while (1)
  {
    if (v55)
    {
      v6 = MEMORY[0x1AC5AA170](v5, v4);
    }

    else
    {
      if (v5 >= *(v4 + 16))
      {
        goto LABEL_54;
      }

      v6 = *(v52 + 8 * v5);
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_53;
    }

    if (v57)
    {
      v8 = sub_1ABBE8AA4();
      v9 = v8;
      v10 = *v58;
      v11 = *(v8 + 16);
      if (*(*v58 + 16) <= v11 >> 3)
      {
        v59[0] = v8;
        if (v11)
        {
          sub_1ABA7F040();
          v31 = v30 & v29;
          v33 = (v32 + 63) >> 6;

          v34 = 0;
          if (v31)
          {
            while (1)
            {
LABEL_29:
              sub_1ABAA3FE8();
              sub_1ABAA5FB8();

              sub_1ABB22428();
            }
          }

          while (1)
          {
            v35 = v34 + 1;
            if (__OFADD__(v34, 1))
            {
              goto LABEL_52;
            }

            if (v35 >= v33)
            {
              break;
            }

            ++v34;
            if (*(v10 + 56 + 8 * v35))
            {
              goto LABEL_29;
            }
          }

          v9 = v59[0];
          v4 = v53;
        }
      }

      else
      {
        v9 = sub_1ABC13D68(*v58, v8);
      }

      v36 = *(v9 + 16);

      if (!v36)
      {
        sub_1ABB18C18(v59, *(v6 + 16));
        v37 = *(v6 + 40) + 56;
        sub_1ABA7F040();
        v40 = v39 & v38;
        v42 = (v41 + 63) >> 6;

        v43 = 0;
        if (!v40)
        {
          goto LABEL_36;
        }

        while (1)
        {
          do
          {
            v40 &= v40 - 1;
            sub_1ABAA5FB8();

            sub_1ABB22428();
          }

          while (v40);
          do
          {
LABEL_36:
            v44 = v43 + 1;
            if (__OFADD__(v43, 1))
            {
              goto LABEL_51;
            }

            if (v44 >= v42)
            {
              goto LABEL_42;
            }

            v40 = *(v37 + 8 * v44);
            ++v43;
          }

          while (!v40);
          v43 = v44;
        }
      }

      goto LABEL_33;
    }

    sub_1ABBE8D20();
    v12 = *(sub_1ABBE8AA4() + 32);
    v13 = v12 & 0x3F;
    v14 = ((1 << v12) + 63) >> 6;

    if (v13 <= 0xD)
    {
      break;
    }

    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if (isStackAllocationSafe)
    {
      break;
    }

    swift_slowAlloc();

    sub_1ABAA301C();
    v21 = sub_1ABBA2248(v45, v46, v47, v48);

    v54 = v14;
    if (v14)
    {
      goto LABEL_56;
    }

    sub_1ABA7BDD8();
    MEMORY[0x1AC5AB8B0]();
LABEL_14:
    if (!v21[2])
    {

LABEL_33:

      goto LABEL_43;
    }

    sub_1ABB18C18(v59, *(v6 + 16));
    v22 = 0;
    sub_1ABA7F040();
    v25 = v24 & v23;
    v27 = (v26 + 63) >> 6;
    if ((v24 & v23) == 0)
    {
      goto LABEL_17;
    }

    do
    {
LABEL_21:
      sub_1ABAA3FE8();
      sub_1ABAA5FB8();

      sub_1ABB22428();
    }

    while (v25);
    while (1)
    {
LABEL_17:
      v28 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
      }

      if (v28 >= v27)
      {
        break;
      }

      v25 = v21[v28 + 7];
      ++v22;
      if (v25)
      {
        v22 = v28;
        goto LABEL_21;
      }
    }

LABEL_42:

    v4 = v53;
LABEL_43:
    if (v5 == v56)
    {

      goto LABEL_49;
    }
  }

  MEMORY[0x1EEE9AC00](isStackAllocationSafe);
  sub_1ABB18078(0, v14, &v51 - ((8 * v14 + 15) & 0x3FFFFFFFFFFFFFF0));
  sub_1ABAA301C();
  v20 = sub_1ABBA24A0(v16, v17, v18, v19);
  v54 = v14;
  if (!v14)
  {
    v21 = v20;

    goto LABEL_14;
  }

  v49 = v54;
  v50 = v54;
  swift_willThrow();

  __break(1u);

  __break(1u);
LABEL_56:

  sub_1ABA7BDD8();
  MEMORY[0x1AC5AB8B0]();
  __break(1u);
}

uint64_t sub_1ABBA0194@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, float *a5@<X8>)
{
  v38 = a1;
  v39 = a2;
  sub_1ABAE28EC();
  result = sub_1ABF248E4();
  v7 = result;
  v8 = 0;
  v40 = MEMORY[0x1E69E7CD0];
  v9 = *(result + 16);
  v10 = (result + 56);
  while (v9 != v8)
  {
    if (v8 >= *(v7 + 16))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return result;
    }

    ++v8;
    v11 = *(v10 - 1);
    v12 = *v10;
    v14 = *(v10 - 3);
    v13 = *(v10 - 2);

    v15 = MEMORY[0x1AC5A9330](v14, v13, v11, v12);
    sub_1ABB1840C(&v38, v15, v16);

    v10 += 4;
  }

  v17 = v40;
  v38 = a3;
  v39 = a4;
  result = sub_1ABF248E4();
  v18 = result;
  v19 = 0;
  v40 = MEMORY[0x1E69E7CD0];
  v20 = *(result + 16);
  v21 = (result + 56);
  while (v20 != v19)
  {
    if (v19 >= *(v18 + 16))
    {
      goto LABEL_11;
    }

    ++v19;
    v22 = *(v21 - 1);
    v23 = *v21;
    v25 = *(v21 - 3);
    v24 = *(v21 - 2);

    v26 = MEMORY[0x1AC5A9330](v25, v24, v22, v23);
    sub_1ABB1840C(&v38, v26, v27);

    v21 += 4;
  }

  v28 = v40;

  v29 = sub_1ABBA22D8(v28, v17);

  v30 = v29[2];

  v31 = v30;

  v32 = *(sub_1ABC10A08(v28, v17) + 16);

  v33 = v32;
  v34 = sub_1ABC10A08(v17, v28);

  v35 = *(v34 + 16);

  *a5 = (((v31 / ((v31 + v33) + 0.001)) * (v31 / ((v31 + v35) + 0.001))) + ((v31 / ((v31 + v33) + 0.001)) * (v31 / ((v31 + v35) + 0.001)))) / (((v31 / ((v31 + v33) + 0.001)) + (v31 / ((v31 + v35) + 0.001))) + 0.001);
  return result;
}

unint64_t sub_1ABBA043C()
{
  result = qword_1ED86E428;
  if (!qword_1ED86E428)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED86E428);
  }

  return result;
}

unint64_t sub_1ABBA0480()
{
  result = qword_1ED86DB10;
  if (!qword_1ED86DB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86DB10);
  }

  return result;
}

void sub_1ABBA04D4(uint64_t *a1)
{
  v3 = a1[1];
  v4 = sub_1ABF24FE4();
  if (v4 < v3)
  {
    v5 = v4;
    v6 = sub_1ABAE8C34(v3 / 2);
    v8[0] = v7;
    v8[1] = (v3 / 2);
    sub_1ABBA087C(v8, v9, a1, v5);
    if (v1)
    {
      if (v3 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v3 < -1)
    {
LABEL_12:
      __break(1u);
      return;
    }

    *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

    return;
  }

LABEL_5:
  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v3)
  {
    sub_1ABBA06A8(0, v3, 1, a1);
  }
}

char *sub_1ABBA05B4(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1ABF24FE4();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v6 = sub_1ABF24164();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1ABBA0EF0(v7, v8, a1, v4);
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
    return sub_1ABBA079C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1ABBA06A8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = (*a4 + 8 * a3 - 8);
    v7 = result - a3;
    while (2)
    {
      v8 = v7;
      v14 = v6;
      do
      {

        v9 = sub_1ABF23D44();
        v10 = sub_1ABF23D44();

        if (v10 >= v9)
        {
          break;
        }

        if (!v5)
        {
          __break(1u);
          return result;
        }

        v11 = *v6;
        *v6 = v6[1];
        v6[1] = v11;
        --v6;
      }

      while (!__CFADD__(v8++, 1));
      ++v4;
      v6 = v14 + 1;
      --v7;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

char *sub_1ABBA079C(char *result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 1160 * a3 - 1160;
    v8 = &result[-a3];
    while (2)
    {
      v9 = v8;
      v10 = v7;
      do
      {
        if (v10[1] >= v10[146])
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        memcpy(__dst, v10 + 145, sizeof(__dst));
        memcpy(v10 + 145, v10, 0x488uLL);
        result = memcpy(v10, __dst, 0x488uLL);
        v10 -= 145;
      }

      while (!__CFADD__(v9++, 1));
      ++v4;
      v7 += 1160;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1ABBA087C(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_95:
    v105 = *a1;
    if (!*a1)
    {
      goto LABEL_136;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_97:
      v87 = v8 + 16;
      v88 = *(v8 + 2);
      while (v88 >= 2)
      {
        if (!*a3)
        {
          goto LABEL_133;
        }

        v89 = v8;
        v90 = &v8[16 * v88];
        v91 = *v90;
        v92 = &v87[2 * v88];
        v93 = *(v92 + 1);
        sub_1ABBA155C((*a3 + 8 * *v90), (*a3 + 8 * *v92), (*a3 + 8 * v93), v105);
        if (v5)
        {
          break;
        }

        if (v93 < v91)
        {
          goto LABEL_121;
        }

        if (v88 - 2 >= *v87)
        {
          goto LABEL_122;
        }

        *v90 = v91;
        *(v90 + 1) = v93;
        v94 = *v87 - v88;
        if (*v87 < v88)
        {
          goto LABEL_123;
        }

        v88 = *v87 - 1;
        sub_1ABE7A0CC(v92 + 16, v94, v92);
        *v87 = v88;
        v8 = v89;
      }

LABEL_105:

      return;
    }

LABEL_130:
    v8 = sub_1ABE7A0B4();
    goto LABEL_97;
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7;
    v10 = v7 + 1;
    if (v7 + 1 < v6)
    {
      v98 = v5;
      v11 = (*a3 + 8 * v7);
      v95 = 8 * v7;
      v13 = *v11;
      v12 = v11 + 2;
      v5 = v13;

      v105 = sub_1ABF23D44();
      v102 = sub_1ABF23D44();

      v14 = v9 + 2;
      while (1)
      {
        v15 = v14;
        v16 = v10 + 1;
        if (v16 >= v6)
        {
          break;
        }

        v5 = *(v12 - 1);
        v17 = v16;

        v18 = sub_1ABF23D44();
        v19 = sub_1ABF23D44();

        v20 = v19 < v18;
        v10 = v17;
        v21 = !v20;
        v22 = (v102 < v105) ^ v21;
        ++v12;
        v14 = v15 + 1;
        if ((v22 & 1) == 0)
        {
          goto LABEL_12;
        }
      }

      v10 = v6;
LABEL_12:
      if (v102 >= v105)
      {
        v5 = v98;
      }

      else
      {
        v23 = v9;
        if (v10 < v9)
        {
          goto LABEL_127;
        }

        if (v9 >= v10)
        {
          v5 = v98;
        }

        else
        {
          if (v6 >= v15)
          {
            v24 = v15;
          }

          else
          {
            v24 = v6;
          }

          v25 = 8 * v24 - 8;
          v26 = v10;
          v5 = v98;
          v27 = v95;
          do
          {
            if (v23 != --v26)
            {
              v28 = *a3;
              if (!*a3)
              {
                goto LABEL_134;
              }

              v29 = *(v28 + v27);
              *(v28 + v27) = *(v28 + v25);
              *(v28 + v25) = v29;
            }

            ++v23;
            v25 -= 8;
            v27 += 8;
          }

          while (v23 < v26);
        }
      }
    }

    v30 = a3[1];
    if (v10 < v30)
    {
      if (__OFSUB__(v10, v9))
      {
        goto LABEL_126;
      }

      if (v10 - v9 < a4)
      {
        break;
      }
    }

LABEL_43:
    if (v10 < v9)
    {
      goto LABEL_125;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1ABAD8820();
      v8 = v85;
    }

    v42 = *(v8 + 2);
    v43 = v42 + 1;
    if (v42 >= *(v8 + 3) >> 1)
    {
      sub_1ABAD8820();
      v8 = v86;
    }

    *(v8 + 2) = v43;
    v44 = v8 + 32;
    v45 = &v8[16 * v42 + 32];
    *v45 = v9;
    *(v45 + 1) = v10;
    v104 = *a1;
    if (!*a1)
    {
      goto LABEL_135;
    }

    v105 = v10;
    if (v42)
    {
      while (1)
      {
        v46 = v43 - 1;
        v47 = &v44[16 * v43 - 16];
        v48 = &v8[16 * v43];
        if (v43 >= 4)
        {
          break;
        }

        if (v43 == 3)
        {
          v49 = *(v8 + 4);
          v50 = *(v8 + 5);
          v59 = __OFSUB__(v50, v49);
          v51 = v50 - v49;
          v52 = v59;
LABEL_63:
          if (v52)
          {
            goto LABEL_112;
          }

          v64 = *v48;
          v63 = *(v48 + 1);
          v65 = __OFSUB__(v63, v64);
          v66 = v63 - v64;
          v67 = v65;
          if (v65)
          {
            goto LABEL_115;
          }

          v68 = *(v47 + 1);
          v69 = v68 - *v47;
          if (__OFSUB__(v68, *v47))
          {
            goto LABEL_118;
          }

          if (__OFADD__(v66, v69))
          {
            goto LABEL_120;
          }

          if (v66 + v69 >= v51)
          {
            if (v51 < v69)
            {
              v46 = v43 - 2;
            }

            goto LABEL_85;
          }

          goto LABEL_78;
        }

        if (v43 < 2)
        {
          goto LABEL_114;
        }

        v71 = *v48;
        v70 = *(v48 + 1);
        v59 = __OFSUB__(v70, v71);
        v66 = v70 - v71;
        v67 = v59;
LABEL_78:
        if (v67)
        {
          goto LABEL_117;
        }

        v73 = *v47;
        v72 = *(v47 + 1);
        v59 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v59)
        {
          goto LABEL_119;
        }

        if (v74 < v66)
        {
          goto LABEL_92;
        }

LABEL_85:
        if (v46 - 1 >= v43)
        {
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
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (!*a3)
        {
          goto LABEL_132;
        }

        v78 = v8;
        v79 = &v44[16 * v46 - 16];
        v80 = *v79;
        v81 = v46;
        v82 = &v44[16 * v46];
        v83 = *(v82 + 1);
        sub_1ABBA155C((*a3 + 8 * *v79), (*a3 + 8 * *v82), (*a3 + 8 * v83), v104);
        if (v5)
        {
          goto LABEL_105;
        }

        if (v83 < v80)
        {
          goto LABEL_107;
        }

        v5 = *(v78 + 2);
        if (v81 > v5)
        {
          goto LABEL_108;
        }

        *v79 = v80;
        *(v79 + 1) = v83;
        if (v81 >= v5)
        {
          goto LABEL_109;
        }

        v84 = v81;
        v43 = v5 - 1;
        sub_1ABE7A0CC(v82 + 16, v5 - 1 - v84, v82);
        v8 = v78;
        *(v78 + 2) = v5 - 1;
        v20 = v5 > 2;
        v5 = 0;
        if (!v20)
        {
          goto LABEL_92;
        }
      }

      v53 = &v44[16 * v43];
      v54 = *(v53 - 8);
      v55 = *(v53 - 7);
      v59 = __OFSUB__(v55, v54);
      v56 = v55 - v54;
      if (v59)
      {
        goto LABEL_110;
      }

      v58 = *(v53 - 6);
      v57 = *(v53 - 5);
      v59 = __OFSUB__(v57, v58);
      v51 = v57 - v58;
      v52 = v59;
      if (v59)
      {
        goto LABEL_111;
      }

      v60 = *(v48 + 1);
      v61 = v60 - *v48;
      if (__OFSUB__(v60, *v48))
      {
        goto LABEL_113;
      }

      v59 = __OFADD__(v51, v61);
      v62 = v51 + v61;
      if (v59)
      {
        goto LABEL_116;
      }

      if (v62 >= v56)
      {
        v76 = *v47;
        v75 = *(v47 + 1);
        v59 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v59)
        {
          goto LABEL_124;
        }

        if (v51 < v77)
        {
          v46 = v43 - 2;
        }

        goto LABEL_85;
      }

      goto LABEL_63;
    }

LABEL_92:
    v6 = a3[1];
    v7 = v105;
    if (v105 >= v6)
    {
      goto LABEL_95;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_128;
  }

  if (v9 + a4 >= v30)
  {
    v31 = a3[1];
  }

  else
  {
    v31 = v9 + a4;
  }

  if (v31 < v9)
  {
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  if (v10 == v31)
  {
    goto LABEL_43;
  }

  v97 = v8;
  v99 = v5;
  v32 = v9;
  v33 = *a3;
  v34 = *a3 + 8 * v10 - 8;
  v100 = v32;
  v35 = v32 - v10;
  v103 = v31;
LABEL_36:
  v105 = v10;
  v36 = v35;
  v37 = v34;
  while (1)
  {

    v38 = sub_1ABF23D44();
    v39 = sub_1ABF23D44();

    if (v39 >= v38)
    {
LABEL_41:
      ++v10;
      v34 += 8;
      --v35;
      if (v105 + 1 == v103)
      {
        v10 = v103;
        v8 = v97;
        v5 = v99;
        v9 = v100;
        goto LABEL_43;
      }

      goto LABEL_36;
    }

    if (!v33)
    {
      break;
    }

    v40 = *v37;
    *v37 = v37[1];
    v37[1] = v40;
    --v37;
    if (__CFADD__(v36++, 1))
    {
      goto LABEL_41;
    }
  }

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
}

void sub_1ABBA0EF0(double **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v84 = MEMORY[0x1E69E7CC0];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v9 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v10 = *(*a3 + 1160 * v9 + 8);
        v11 = 1160 * v7;
        v12 = *a3 + 1160 * v7;
        v13 = *(v12 + 8);
        v14 = (v12 + 2328);
        v15 = v7 + 2;
        v16 = v10;
        while (1)
        {
          v17 = v15;
          if (++v9 >= v6)
          {
            break;
          }

          v18 = *v14;
          v19 = (v13 < v10) ^ (v16 >= *v14);
          v14 += 145;
          ++v15;
          v16 = v18;
          if ((v19 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v9 = v6;
LABEL_9:
        if (v13 < v10)
        {
          if (v9 < v7)
          {
            goto LABEL_109;
          }

          if (v7 < v9)
          {
            if (v6 >= v17)
            {
              v6 = v17;
            }

            v20 = 1160 * v6 - 1160;
            v21 = v9;
            v22 = v7;
            do
            {
              if (v22 != --v9)
              {
                v23 = *a3;
                if (!*a3)
                {
                  goto LABEL_114;
                }

                memcpy(__dst, (v23 + v11), sizeof(__dst));
                memmove((v23 + v11), (v23 + v20), 0x488uLL);
                memcpy((v23 + v20), __dst, 0x488uLL);
              }

              ++v22;
              v20 -= 1160;
              v11 += 1160;
            }

            while (v22 < v9);
            v6 = a3[1];
            v9 = v21;
          }
        }
      }

      if (v9 < v6)
      {
        if (__OFSUB__(v9, v7))
        {
          goto LABEL_108;
        }

        if (v9 - v7 < a4)
        {
          if (__OFADD__(v7, a4))
          {
            goto LABEL_110;
          }

          if (v7 + a4 >= v6)
          {
            v24 = v6;
          }

          else
          {
            v24 = v7 + a4;
          }

          if (v24 < v7)
          {
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
            return;
          }

          if (v9 != v24)
          {
            v25 = *a3;
            v26 = *a3 + 1160 * v9 - 1160;
            v80 = v7;
            v27 = v9;
            v28 = v7 - v9;
            do
            {
              v29 = v28;
              v30 = v26;
              do
              {
                if (v30[1] >= v30[146])
                {
                  break;
                }

                if (!v25)
                {
                  goto LABEL_112;
                }

                memcpy(__dst, v30 + 145, sizeof(__dst));
                memcpy(v30 + 145, v30, 0x488uLL);
                memcpy(v30, __dst, 0x488uLL);
                v30 -= 145;
              }

              while (!__CFADD__(v29++, 1));
              v26 += 1160;
              --v28;
              ++v27;
            }

            while (v27 != v24);
            v9 = v24;
            v7 = v80;
          }
        }
      }

      if (v9 < v7)
      {
        goto LABEL_107;
      }

      v79 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1ABA7BEF0();
        sub_1ABAD8820();
        v8 = v75;
      }

      v32 = v8[2];
      v33 = v32 + 1;
      if (v32 >= v8[3] >> 1)
      {
        sub_1ABAD8820();
        v8 = v76;
      }

      v8[2] = v33;
      v34 = v8 + 4;
      v35 = &v8[2 * v32 + 4];
      *v35 = v7;
      v35[1] = v9;
      v81 = *a1;
      if (!*a1)
      {
        goto LABEL_115;
      }

      if (v32)
      {
        while (1)
        {
          v36 = v33 - 1;
          v37 = &v34[2 * v33 - 2];
          v38 = &v8[2 * v33];
          if (v33 >= 4)
          {
            break;
          }

          if (v33 == 3)
          {
            v39 = v8[4];
            v40 = v8[5];
            v49 = __OFSUB__(v40, v39);
            v41 = v40 - v39;
            v42 = v49;
LABEL_57:
            if (v42)
            {
              goto LABEL_97;
            }

            v54 = *v38;
            v53 = v38[1];
            v55 = __OFSUB__(v53, v54);
            v56 = v53 - v54;
            v57 = v55;
            if (v55)
            {
              goto LABEL_100;
            }

            v58 = v37[1];
            v59 = v58 - *v37;
            if (__OFSUB__(v58, *v37))
            {
              goto LABEL_103;
            }

            if (__OFADD__(v56, v59))
            {
              goto LABEL_105;
            }

            if (v56 + v59 >= v41)
            {
              if (v41 < v59)
              {
                v36 = v33 - 2;
              }

              goto LABEL_79;
            }

            goto LABEL_72;
          }

          if (v33 < 2)
          {
            goto LABEL_99;
          }

          v61 = *v38;
          v60 = v38[1];
          v49 = __OFSUB__(v60, v61);
          v56 = v60 - v61;
          v57 = v49;
LABEL_72:
          if (v57)
          {
            goto LABEL_102;
          }

          v63 = *v37;
          v62 = v37[1];
          v49 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v49)
          {
            goto LABEL_104;
          }

          if (v64 < v56)
          {
            goto LABEL_86;
          }

LABEL_79:
          if (v36 - 1 >= v33)
          {
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
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
            goto LABEL_111;
          }

          if (!*a3)
          {
            goto LABEL_113;
          }

          v68 = &v34[2 * v36 - 2];
          v69 = *v68;
          v70 = &v34[2 * v36];
          v71 = v70[1];
          sub_1ABBA1794((*a3 + 1160 * *v68), (*a3 + 1160 * *v70), (*a3 + 1160 * v71), v81);
          if (v5)
          {
            goto LABEL_90;
          }

          if (v71 < v69)
          {
            goto LABEL_92;
          }

          v72 = v8;
          v73 = v8[2];
          if (v36 > v73)
          {
            goto LABEL_93;
          }

          *v68 = v69;
          v68[1] = v71;
          if (v36 >= v73)
          {
            goto LABEL_94;
          }

          v33 = v73 - 1;
          memmove(&v34[2 * v36], v70 + 2, 16 * (v73 - 1 - v36));
          v72[2] = v73 - 1;
          v74 = v73 > 2;
          v8 = v72;
          v5 = 0;
          if (!v74)
          {
            goto LABEL_86;
          }
        }

        v43 = &v34[2 * v33];
        v44 = *(v43 - 8);
        v45 = *(v43 - 7);
        v49 = __OFSUB__(v45, v44);
        v46 = v45 - v44;
        if (v49)
        {
          goto LABEL_95;
        }

        v48 = *(v43 - 6);
        v47 = *(v43 - 5);
        v49 = __OFSUB__(v47, v48);
        v41 = v47 - v48;
        v42 = v49;
        if (v49)
        {
          goto LABEL_96;
        }

        v50 = v38[1];
        v51 = v50 - *v38;
        if (__OFSUB__(v50, *v38))
        {
          goto LABEL_98;
        }

        v49 = __OFADD__(v41, v51);
        v52 = v41 + v51;
        if (v49)
        {
          goto LABEL_101;
        }

        if (v52 >= v46)
        {
          v66 = *v37;
          v65 = v37[1];
          v49 = __OFSUB__(v65, v66);
          v67 = v65 - v66;
          if (v49)
          {
            goto LABEL_106;
          }

          if (v41 < v67)
          {
            v36 = v33 - 2;
          }

          goto LABEL_79;
        }

        goto LABEL_57;
      }

LABEL_86:
      v6 = a3[1];
      v7 = v79;
      if (v79 >= v6)
      {
        v84 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_116;
  }

  sub_1ABBA1424(&v84, *a1, a3);
LABEL_90:
}

uint64_t sub_1ABBA1424(uint64_t *a1, double *a2, void *a3)
{
  v4 = a1;
  v15 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1ABE7A0B4();
    v15 = result;
  }

  v12 = v4;
  *v4 = v15;
  v6 = (v15 + 16);
  for (i = *(v15 + 16); ; *v6 = i)
  {
    if (i < 2)
    {
LABEL_10:
      *v12 = v15;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v4 = (v15 + 16 * i);
    v8 = *v4;
    v9 = &v6[2 * i];
    v10 = v9[1];
    sub_1ABBA1794((*a3 + 1160 * *v4), (*a3 + 1160 * *v9), (*a3 + 1160 * v10), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v10 < v8)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (i - 2 >= *v6)
    {
      goto LABEL_12;
    }

    *v4 = v8;
    v4[1] = v10;
    v11 = *v6 - i;
    if (*v6 < i)
    {
      goto LABEL_13;
    }

    i = *v6 - 1;
    result = memmove(v9, v9 + 2, 16 * v11);
  }

  *v12 = v15;
  __break(1u);
  return result;
}

uint64_t sub_1ABBA155C(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 8;
  v9 = (a3 - a2) / 8;
  if (v8 < v9)
  {
    sub_1ABAE304C(a1, (a2 - a1) / 8, a4);
    v10 = &v4[8 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      v12 = v5;

      v13 = sub_1ABF23D44();
      v14 = sub_1ABF23D44();

      if (v14 >= v13)
      {
        break;
      }

      v15 = v6;
      v16 = v7 == v6;
      v6 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      v5 = v12;
    }

    v15 = v4;
    v16 = v7 == v4;
    v4 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  sub_1ABAE304C(a2, (a3 - a2) / 8, a4);
  v10 = &v4[8 * v9];
  v27 = v4;
  v26 = v7;
LABEL_15:
  v17 = v6 - 8;
  v5 -= 8;
  while (v10 > v4 && v6 > v7)
  {
    v19 = v17;

    v20 = sub_1ABF23D44();
    v21 = sub_1ABF23D44();

    v22 = v5 + 8;
    if (v21 < v20)
    {
      v16 = v22 == v6;
      v6 = v19;
      v7 = v26;
      v4 = v27;
      if (!v16)
      {
        *v5 = *v19;
        v6 = v19;
      }

      goto LABEL_15;
    }

    if (v10 != v22)
    {
      *v5 = *(v10 - 1);
    }

    v5 -= 8;
    v10 -= 8;
    v7 = v26;
    v4 = v27;
    v17 = v19;
  }

LABEL_28:
  v23 = (v10 - v4) / 8;
  if (v6 != v4 || v6 >= &v4[8 * v23])
  {
    memmove(v6, v4, 8 * v23);
  }

  return 1;
}

uint64_t sub_1ABBA1794(char *a1, double *a2, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 1160;
  v9 = (a3 - a2) / 1160;
  if (v8 < v9)
  {
    sub_1ABADD4BC(a1, (a2 - a1) / 1160, a4);
    v10 = &v4[145 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_26;
      }

      if (v4[1] >= v6[1])
      {
        break;
      }

      v12 = v6;
      v13 = v7 == v6;
      v6 += 145;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 1160;
    }

    v12 = v4;
    v13 = v7 == v4;
    v4 += 145;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    memmove(v7, v12, 0x488uLL);
    goto LABEL_13;
  }

  sub_1ABADD4BC(a2, (a3 - a2) / 1160, a4);
  v14 = &v4[145 * v9];
  while (1)
  {
    v5 -= 145;
    v14 -= 145;
    v10 = v14 + 145;
    if (v14 + 145 <= v4 || v6 <= v7)
    {
      break;
    }

    if (*(v6 - 144) < v14[1])
    {
      v16 = v6 - 145;
      v14 += 145;
      v13 = v5 + 145 == v6;
      v6 -= 145;
      if (!v13)
      {
        memmove(v5, v16, 0x488uLL);
        v6 = v16;
      }
    }

    else if (v10 != v5 + 145)
    {
      memmove(v5, v14, 0x488uLL);
    }
  }

LABEL_26:
  v17 = (v10 - v4) / 1160;
  if (v6 != v4 || v6 >= &v4[145 * v17])
  {
    memmove(v6, v4, 1160 * v17);
  }

  return 1;
}

uint64_t sub_1ABBA19EC(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    swift_unknownObjectRelease();

    return swift_unknownObjectRelease();
  }

  return v2;
}

unint64_t sub_1ABBA1A30()
{
  result = qword_1EB4CF2D0[0];
  if (!qword_1EB4CF2D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB4CF2D0);
  }

  return result;
}

uint64_t sub_1ABBA1AD8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  sub_1ABAB4C04(v52);
  v6 = v52[1];
  v47 = v52[0];
  v7 = v52[3];
  v8 = v52[4];
  v46 = v52[5];
  v56 = v52[6];
  v9 = (v52[2] + 64) >> 6;

  for (i = v6; ; v6 = i)
  {
    v10 = v8;
    v11 = v7;
    if (!v8)
    {
      break;
    }

LABEL_7:
    v13 = __clz(__rbit64(v10)) | (v11 << 6);
    v14 = (*(v47 + 48) + 48 * v13);
    v15 = v14[1];
    v16 = v14[2];
    v17 = v14[3];
    v18 = v14[4];
    v19 = v14[5];
    v20 = a4;
    v21 = *(*(v47 + 56) + 8 * v13);
    v48[0] = *v14;
    v48[1] = v15;
    v48[2] = v16;
    v48[3] = v17;
    v48[4] = v18;
    v48[5] = v19;
    v49 = v21;

    v22 = v21;
    v46(v50, v48);

    if (!*(&v50[0] + 1))
    {
LABEL_19:
      sub_1ABAB4C48(v47);
    }

    v53 = v50[0];
    v54 = v50[1];
    v55 = v50[2];
    v23 = v51;
    v24 = *a5;
    v26 = sub_1ABAFF5BC();
    v27 = v24[2];
    v28 = (v25 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      goto LABEL_21;
    }

    v30 = v25;
    if (v24[3] >= v29)
    {
      if ((v20 & 1) == 0)
      {
        sub_1ABAD219C(&qword_1EB4D1FC8, &qword_1ABF4E1A0);
        sub_1ABF24C74();
      }
    }

    else
    {
      sub_1ABC04BB4(v29, v20 & 1);
      v31 = sub_1ABAFF5BC();
      if ((v30 & 1) != (v32 & 1))
      {
        goto LABEL_23;
      }

      v26 = v31;
    }

    v8 = (v10 - 1) & v10;
    v33 = *a5;
    if (v30)
    {
      v34 = *(v33[7] + 8 * v26);

      sub_1ABBA1A84(&v53);
      v35 = v33[7];
      v36 = *(v35 + 8 * v26);
      *(v35 + 8 * v26) = v34;
    }

    else
    {
      v33[(v26 >> 6) + 8] |= 1 << v26;
      v37 = (v33[6] + 48 * v26);
      v38 = v53;
      v39 = v55;
      v37[1] = v54;
      v37[2] = v39;
      *v37 = v38;
      *(v33[7] + 8 * v26) = v23;
      v40 = v33[2];
      v41 = __OFADD__(v40, 1);
      v42 = v40 + 1;
      if (v41)
      {
        goto LABEL_22;
      }

      v33[2] = v42;
    }

    a4 = 1;
    v7 = v11;
  }

  v12 = v7;
  while (1)
  {
    v11 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v11 >= v9)
    {
      goto LABEL_19;
    }

    v10 = *(v6 + 8 * v11);
    ++v12;
    if (v10)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = sub_1ABF25104();
  __break(1u);
  return result;
}

unint64_t *sub_1ABBA1DE0(uint64_t a1, unint64_t *a2)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = ((1 << v4) + 63) >> 6;
  if ((v4 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      swift_slowAlloc();
      sub_1ABAA2C38();
      a2 = sub_1ABBA21C0(v12, v13, v14, v15);
      sub_1ABA7BDD8();
      MEMORY[0x1AC5AB8B0]();
      return a2;
    }
  }

  MEMORY[0x1EEE9AC00](a1);
  sub_1ABB18078(0, v5, v16 - ((8 * v5 + 15) & 0x3FFFFFFFFFFFFFF0));
  sub_1ABAA2C38();
  sub_1ABBA1F78(v6, v7, v8, v9);
  if (!v2)
  {
    return v10;
  }

  swift_willThrow();
  return a2;
}

uint64_t sub_1ABBA1F34(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

void sub_1ABBA1F78(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = 0;
  v4 = 0;
  v28 = a4;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v30 = (v8 - 1) & v8;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = *(a3 + 48) + 48 * v13;
    v15 = *(v14 + 32);
    v16 = *(v14 + 40);
    v27 = v13;
    v17 = *(*(a3 + 56) + 8 * v13);
    v18 = 3826797;
    if ((a4 & 0x80000000000000) == 0)
    {
      v18 = 3828069;
    }

    v31 = v18;

    v19 = v17;
    v20 = sub_1ABF24FF4();
    MEMORY[0x1AC5A9410](v20);

    if (v15 == v31 && v16 == 0xE300000000000000)
    {

      a4 = v28;
      v8 = v30;
LABEL_20:
      *(result + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
      if (__OFADD__(v26++, 1))
      {
        __break(1u);
LABEL_23:
        sub_1ABD21898(result, a2, v26, a3);
        return;
      }
    }

    else
    {
      v22 = sub_1ABF25054();

      a4 = v28;
      v8 = v30;
      if (v22)
      {
        goto LABEL_20;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      goto LABEL_23;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v30 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
}

unint64_t *sub_1ABBA21C0(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_1ABBA1F78(v7, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

unint64_t *sub_1ABBA2248(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_1ABBA24A0(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

unint64_t *sub_1ABBA22D8(uint64_t a1, uint64_t a2)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v8 = (v12 - ((8 * v6 + 15) & 0x3FFFFFFFFFFFFFF0));
    sub_1ABB18078(0, v6, v8);
    v9 = sub_1ABBA24A0(v8, v6, a2, a1);
  }

  else
  {
    v11 = swift_slowAlloc();

    v9 = sub_1ABBA2248(v11, v6, a2, a1);

    MEMORY[0x1AC5AB8B0](v11, -1, -1);
  }

  return v9;
}

unint64_t *sub_1ABBA24A0(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v52 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v53 = 0;
    v28 = 0;
    v29 = 1 << *(a3 + 32);
    if (v29 < 64)
    {
      v30 = ~(-1 << v29);
    }

    else
    {
      v30 = -1;
    }

    v31 = v30 & *(a3 + 56);
    v32 = (v29 + 63) >> 6;
    v33 = a4 + 56;
LABEL_28:
    while (v31)
    {
      v34 = __clz(__rbit64(v31));
      v51 = (v31 - 1) & v31;
LABEL_35:
      v49 = v34 | (v28 << 6);
      v37 = (*(v5 + 48) + 16 * v49);
      v39 = *v37;
      v38 = v37[1];
      sub_1ABF25234();

      sub_1ABF23D34();
      v40 = sub_1ABF25294();
      v41 = ~(-1 << *(v4 + 32));
      do
      {
        v42 = v40 & v41;
        if (((*(v33 + (((v40 & v41) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v40 & v41)) & 1) == 0)
        {

          v4 = a4;
          v31 = v51;
          goto LABEL_28;
        }

        v43 = (*(a4 + 48) + 16 * v42);
        if (*v43 == v39 && v43[1] == v38)
        {
          break;
        }

        v45 = sub_1ABF25054();
        v40 = v42 + 1;
      }

      while ((v45 & 1) == 0);

      *(v52 + ((v49 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v49;
      v27 = __OFADD__(v53++, 1);
      v4 = a4;
      v31 = v51;
      if (v27)
      {
        goto LABEL_50;
      }
    }

    v35 = v28;
    while (1)
    {
      v28 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v28 >= v32)
      {
LABEL_46:

        return sub_1ABC13714(v52, a2, v53, v5);
      }

      v36 = *(v5 + 56 + 8 * v28);
      ++v35;
      if (v36)
      {
        v34 = __clz(__rbit64(v36));
        v51 = (v36 - 1) & v36;
        goto LABEL_35;
      }
    }
  }

  else
  {
    v53 = 0;
    v6 = 0;
    v46 = a4 + 56;
    v7 = 1 << *(a4 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(a4 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = a3 + 56;
    v48 = v10;
LABEL_6:
    while (v9)
    {
      v12 = __clz(__rbit64(v9));
      v50 = (v9 - 1) & v9;
LABEL_13:
      v15 = (*(v4 + 48) + 16 * (v12 | (v6 << 6)));
      v17 = *v15;
      v16 = v15[1];
      sub_1ABF25234();

      sub_1ABF23D34();
      v18 = sub_1ABF25294();
      v19 = v5;
      v20 = ~(-1 << *(v5 + 32));
      do
      {
        v21 = v18 & v20;
        v22 = (v18 & v20) >> 6;
        v23 = 1 << (v18 & v20);
        if ((v23 & *(v11 + 8 * v22)) == 0)
        {

          v5 = v19;
          v4 = a4;
          v10 = v48;
          v9 = v50;
          goto LABEL_6;
        }

        v24 = (*(v19 + 48) + 16 * v21);
        if (*v24 == v17 && v24[1] == v16)
        {
          break;
        }

        v26 = sub_1ABF25054();
        v18 = v21 + 1;
      }

      while ((v26 & 1) == 0);

      v9 = v50;
      v52[v22] |= v23;
      v27 = __OFADD__(v53++, 1);
      v5 = v19;
      v4 = a4;
      v10 = v48;
      if (v27)
      {
        goto LABEL_49;
      }
    }

    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_46;
      }

      v14 = *(v46 + 8 * v6);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v50 = (v14 - 1) & v14;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
  return result;
}

id sub_1ABBA2844@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v3;
  v5[2] = *(a1 + 32);
  result = sub_1ABDBC910(a2, v5, *(a1 + 48));
  *(a2 + 48) = result;
  return result;
}

unint64_t sub_1ABBA2890()
{
  result = qword_1ED870678;
  if (!qword_1ED870678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED870678);
  }

  return result;
}

uint64_t sub_1ABBA28E4(uint64_t a1)
{
  v2 = sub_1ABAD219C(&qword_1EB4D3EC8, &unk_1ABF41180);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1ABBA294C(uint64_t a1)
{
  v2 = type metadata accessor for MorphunTokenizer(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for RerankerAlgorithm(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1ABBA2A88()
{
  result = qword_1EB4D3ED0;
  if (!qword_1EB4D3ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3ED0);
  }

  return result;
}

unint64_t sub_1ABBA2ADC()
{
  result = qword_1ED8716D0;
  if (!qword_1ED8716D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8716D0);
  }

  return result;
}

uint64_t sub_1ABBA2B30(uint64_t a1, uint64_t a2)
{
  v38 = a1;
  v39 = a2;
  v37 = sub_1ABF23744();
  sub_1ABA7BB64();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  v36 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v34 - v7;
  v9 = sub_1ABF237F4();
  sub_1ABA7BB64();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  sub_1ABA7BC58();
  v15 = v14 - v13;
  v35 = sub_1ABF23774();
  sub_1ABA7BB64();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  sub_1ABA7BC58();
  v21 = v20 - v19;
  v34 = type metadata accessor for LogSignpost(0);
  MEMORY[0x1EEE9AC00](v34);
  sub_1ABA7BC58();
  v24 = v23 - v22;
  if (qword_1ED871F20 != -1)
  {
    swift_once();
  }

  v25 = sub_1ABA7AA24(v9, qword_1ED871EF8);
  (*(v11 + 16))(v15, v25, v9);
  sub_1ABF23754();
  sub_1ABF23764();
  sub_1ABF23714();
  v26 = sub_1ABF23764();
  v27 = sub_1ABF24714();
  if (sub_1ABF247D4())
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    v29 = sub_1ABF23724();
    _os_signpost_emit_with_name_impl(&dword_1ABA78000, v26, v27, v29, "ECR.Reranker.model", "", v28, 2u);
    MEMORY[0x1AC5AB8B0](v28, -1, -1);
  }

  v30 = v37;
  (*(v3 + 16))(v36, v8, v37);
  sub_1ABF237B4();
  swift_allocObject();
  v31 = sub_1ABF237A4();
  (*(v3 + 8))(v8, v30);
  *v24 = "ECR.Reranker.model";
  *(v24 + 8) = 18;
  *(v24 + 16) = 2;
  *(v24 + 24) = v31;
  (*(v17 + 32))(v24 + *(v34 + 24), v21, v35);
  if (qword_1EB4CFD98 != -1)
  {
    swift_once();
  }

  v32 = sub_1ABBA38E8();
  sub_1ABBA4284(v24);
  sub_1ABBA4F10(v24);
  return v32;
}

void sub_1ABBA2F10(uint64_t *__return_ptr a1@<X8>, void *__src@<X2>, uint64_t *a3@<X0>, uint64_t a4@<X1>, char a5@<W3>, uint64_t a6@<X4>, uint64_t a7@<X5>, __objc2_class **a8@<X6>, uint64_t a9@<X7>, float a10@<S0>, double a11@<D1>)
{
  v13 = v12;
  v76 = *a3;
  memcpy(__dst, __src, sizeof(__dst));
  v22 = *(a4 + 16);
  if (v22 != *(v11 + 24))
  {
    v28 = sub_1ABBA4EBC();
    sub_1ABA7BD00(&type metadata for ECRModelError, v28);
    *v29 = 0;
    goto LABEL_6;
  }

  v73 = a5;
  v74 = a1;
  sub_1ABAD219C(&qword_1EB4D1910, &qword_1ABF33AA0);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1ABF3BF80;
  sub_1ABB373C8();
  *(v23 + 32) = sub_1ABF24794();
  *(v23 + 40) = sub_1ABF24404();
  v24 = objc_allocWithZone(MEMORY[0x1E695FED0]);
  v25 = sub_1ABE0F040(v23, 65568);
  if (v12)
  {

LABEL_4:
    v26 = sub_1ABBA4EBC();
    sub_1ABA7BD00(&type metadata for ECRModelError, v26);
    *v27 = 1;
LABEL_6:
    swift_willThrow();
    return;
  }

  if (!v25)
  {
    goto LABEL_4;
  }

  v70 = a6;
  v71 = a7;
  v72 = a4;
  v69 = a8;
  v30 = v25;
  v31 = [v25 count];
  if ((v31 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v32 = v31;
  v33 = v30;
  if (!v31)
  {
    goto LABEL_14;
  }

  if (!v22)
  {
    goto LABEL_33;
  }

  if (v31 > v22)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    swift_once();
    goto LABEL_25;
  }

  v34 = 0;
  v35 = a4 + 32;
  a8 = &off_1E7963000;
  v33 = v30;
  do
  {
    v36 = *(v35 + 4 * v34);
    v37 = objc_allocWithZone(MEMORY[0x1E696AD98]);
    LODWORD(v38) = v36;
    v39 = [v37 initWithFloat_];
    [v30 setObject:v39 atIndexedSubscript:v34];

    ++v34;
  }

  while (v32 != v34);
LABEL_14:
  sub_1ABED49B4(v33);
  v13 = v33;

  v40 = sub_1ABED467C(0x6D5F656375646572, 0xEC000000305F7861);

  a6 = v70;
  if (v40 && (a8 = [v40 multiArrayValue], v40, a8))
  {

    v41 = sub_1ABED467C(0xD000000000000012, 0x80000001ABF893D0);

    a4 = v72;
    if (v41 && (v42 = [v41 multiArrayValue], v41, (v78 = v42) != 0))
    {

      v43 = sub_1ABED467C(0x30345F726176, 0xE600000000000000);

      if (v43)
      {
        v44 = [v43 multiArrayValue];

        if (v44)
        {
          v45 = [v44 objectAtIndexedSubscript_];
          sub_1ABF242E4();
          v47 = v46;

          v48 = [a8 objectAtIndexedSubscript_];
          sub_1ABF242E4();
          v50 = v49;

          v51 = [v78 objectAtIndexedSubscript_];
          sub_1ABF242E4();
          v53 = v52;

          memcpy(v79, __src, 0x3C8uLL);
          sub_1ABB9AEA4(v79);
          *v74 = v76;
          v74[1] = v47;
          v74[2] = v50;
          v74[3] = v53;
          *(v74 + 4) = a10;
          *(v74 + 5) = 0u;
          *(v74 + 7) = 0u;
          *(v74 + 9) = 0u;
          *(v74 + 11) = 0u;
          *(v74 + 104) = 0;
          memcpy(v74 + 14, v79, 0x3C9uLL);
          v74[144] = v72;
          v74[136] = 0;
          *(v74 + 1096) = 1;
          *(v74 + 138) = a11;
          *(v74 + 1112) = v73 & 1;
          v74[140] = v70;
          v74[141] = v71;
          v74[142] = v69;
          v74[143] = a9;

          return;
        }
      }

      v66 = sub_1ABBA4EBC();
      v67 = sub_1ABA7BD00(&type metadata for ECRModelError, v66);
      sub_1ABA7F05C(v67, v68);
    }

    else
    {
      v63 = sub_1ABBA4EBC();
      v64 = sub_1ABA7BD00(&type metadata for ECRModelError, v63);
      sub_1ABA7F05C(v64, v65);
    }

    a7 = v71;
  }

  else
  {
    v54 = sub_1ABBA4EBC();
    v55 = sub_1ABA7BD00(&type metadata for ECRModelError, v54);
    sub_1ABA7F05C(v55, v56);

    a4 = v72;
  }

  v80 = a8;
  v57 = a8;
  sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
  if (!swift_dynamicCast() || v79[975] != 6)
  {

    return;
  }

  if (qword_1ED871B18 != -1)
  {
    goto LABEL_35;
  }

LABEL_25:
  v58 = sub_1ABF237F4();
  sub_1ABA7AA24(v58, qword_1ED871B20);
  v59 = sub_1ABF237D4();
  v60 = sub_1ABF24664();
  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    *v61 = 0;
    _os_log_impl(&dword_1ABA78000, v59, v60, "Model execution failed. Unable to retrieve output featureValue for field.", v61, 2u);
    MEMORY[0x1AC5AB8B0](v61, -1, -1);
  }

  memcpy(v79, __dst, 0x3C8uLL);
  sub_1ABB9AEA4(v79);
  *v74 = v76;
  v74[1] = 0;
  v74[2] = 0;
  v74[3] = 0;
  *(v74 + 4) = a10;
  *(v74 + 5) = 0u;
  *(v74 + 7) = 0u;
  *(v74 + 9) = 0u;
  *(v74 + 11) = 0u;
  *(v74 + 104) = 0;
  memcpy(v74 + 14, v79, 0x3C9uLL);
  v74[144] = a4;
  v74[136] = 0;
  *(v74 + 1096) = 1;
  *(v74 + 138) = a11;
  *(v74 + 1112) = v73 & 1;
  v74[140] = a6;
  v74[141] = a7;
  v74[142] = v69;
  v74[143] = a9;
  v62 = v80;
}

id sub_1ABBA36E4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x63735F7475706E69 && a2 == 0xEC0000007365726FLL;
  if (v3 || (sub_1ABF25054()) && (v4 = *(v2 + 16)) != 0)
  {
    return [objc_opt_self() featureValueWithMultiArray_];
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1ABBA37DC()
{
  sub_1ABA7D544();

  return swift_deallocClassInstance();
}

uint64_t sub_1ABBA3830()
{

  sub_1ABA7D544();

  return swift_deallocClassInstance();
}

uint64_t sub_1ABBA3860()
{
  type metadata accessor for EntityRerankerHandler.EntityRerankerHandlerCache.GuardedData();
  v1 = swift_allocObject();
  *(v1 + 16) = sub_1ABF239C4();
  sub_1ABAD219C(&qword_1EB4D3EE8, &qword_1ABF41388);
  v2 = swift_allocObject();
  *(v2 + 24) = 0;
  *(v2 + 16) = v1;
  *(v0 + 16) = v2;
  return v0;
}

uint64_t sub_1ABBA38E8()
{
  v2 = v1;
  v3 = *(v0 + 16);

  os_unfair_lock_lock((v3 + 24));
  sub_1ABBA4F6C((v3 + 16), &v5);
  os_unfair_lock_unlock((v3 + 24));
  if (!v1)
  {
    v2 = v5;
  }

  return v2;
}

void sub_1ABBA396C(uint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = *a1;
  swift_beginAccess();
  sub_1ABAD57E8(&v31, a2, a3, *(v8 + 16));
  if (v32 == 1)
  {
    sub_1ABA925A4(&v31, &qword_1EB4D3EE0, &unk_1ABF41370);
    swift_endAccess();
  }

  else
  {
    sub_1ABAFF42C(&v31, v34);
    swift_endAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v10 = Strong;
      if (qword_1ED871B18 != -1)
      {
        swift_once();
      }

      v11 = sub_1ABF237F4();
      sub_1ABA7AA24(v11, qword_1ED871B20);

      v12 = sub_1ABF237D4();
      v13 = sub_1ABF24654();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v31 = v10;
        v33[0] = v29;
        *v14 = 136315394;
        type metadata accessor for EntityRerankerHandler();

        v15 = sub_1ABF23C74();
        v17 = a2;
        v18 = a4;
        v19 = sub_1ABADD6D8(v15, v16, v33);

        *(v14 + 4) = v19;
        a4 = v18;
        *(v14 + 12) = 2080;
        *(v14 + 14) = sub_1ABADD6D8(v17, a3, v33);
        _os_log_impl(&dword_1ABA78000, v12, v13, "EntityRerankerHandler: using cached handler %s for %s", v14, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1AC5AB8B0](v29, -1, -1);
        MEMORY[0x1AC5AB8B0](v14, -1, -1);
      }

      sub_1ABBA4F88(v34);
      goto LABEL_16;
    }

    sub_1ABBA4F88(v34);
  }

  type metadata accessor for EntityRerankerHandler();
  v10 = swift_allocObject();
  sub_1ABBA3E34();
  if (v4)
  {
    return;
  }

  swift_weakInit();
  v32 = 0;
  swift_beginAccess();

  sub_1ABD25860(&v31, a2, a3);
  swift_endAccess();
  if (qword_1ED871B18 != -1)
  {
    swift_once();
  }

  v20 = sub_1ABF237F4();
  sub_1ABA7AA24(v20, qword_1ED871B20);

  v21 = sub_1ABF237D4();
  v22 = sub_1ABF24654();

  if (os_log_type_enabled(v21, v22))
  {
    v30 = a4;
    v23 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v33[0] = v28;
    *v23 = 136315394;
    v31 = v10;

    v24 = sub_1ABF23C74();
    v26 = sub_1ABADD6D8(v24, v25, v33);

    *(v23 + 4) = v26;
    *(v23 + 12) = 2080;
    *(v23 + 14) = sub_1ABADD6D8(a2, a3, v33);
    _os_log_impl(&dword_1ABA78000, v21, v22, "EntityRerankerModel: caching model %s for %s", v23, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1AC5AB8B0](v28, -1, -1);
    v27 = v23;
    a4 = v30;
    MEMORY[0x1AC5AB8B0](v27, -1, -1);
  }

LABEL_16:
  *a4 = v10;
}

uint64_t sub_1ABBA3DC8()
{

  sub_1ABA7D544();

  return swift_deallocClassInstance();
}

uint64_t sub_1ABBA3DF8()
{
  type metadata accessor for EntityRerankerHandler.EntityRerankerHandlerCache();
  v0 = swift_allocObject();
  result = sub_1ABBA3860();
  qword_1EB4CFDA0 = v0;
  return result;
}

unsigned __int8 *sub_1ABBA3E34()
{
  type metadata accessor for EntityRerankerModel();
  v2 = sub_1ABED4314([objc_allocWithZone(MEMORY[0x1E695FEB0]) initWithComputeUnits_]);
  if (v1)
  {
    goto LABEL_79;
  }

  *(v0 + 16) = v2;
  v3 = [*(v2 + 16) modelDescription];
  v4 = [v3 metadata];

  type metadata accessor for MLModelMetadataKey(0);
  sub_1ABBA4FB8();
  v5 = sub_1ABF23974();

  sub_1ABAD56C8(*MEMORY[0x1E695FDB0], v5);

  if (v34[3])
  {
    sub_1ABAD219C(&qword_1EB4D2068, &qword_1ABF41380);
    if (swift_dynamicCast())
    {
      v6 = sub_1ABA94FF4(0x75746165466D756ELL, 0xEB00000000736572);
      v8 = v7;

      if (v8)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
    sub_1ABA925A4(v34, &qword_1EB4D3000, &unk_1ABF3AA60);
  }

  v6 = 0;
  v8 = 0xE000000000000000;
LABEL_8:
  v10 = HIBYTE(v8) & 0xF;
  v11 = v6 & 0xFFFFFFFFFFFFLL;
  if ((v8 & 0x2000000000000000) != 0)
  {
    v12 = HIBYTE(v8) & 0xF;
  }

  else
  {
    v12 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (!v12)
  {

LABEL_78:
    v31 = sub_1ABBA4EBC();
    sub_1ABA7BD00(&type metadata for ECRModelError, v31);
    *v32 = 5;
    swift_willThrow();

LABEL_79:
    swift_deallocPartialClassInstance();
    return v0;
  }

  if ((v8 & 0x1000000000000000) != 0)
  {
    v14 = sub_1ABB81A68(v6, v8, 10);
    v30 = v33;
LABEL_77:

    if ((v30 & 1) == 0)
    {
      *(v0 + 24) = v14;
      return v0;
    }

    goto LABEL_78;
  }

  if ((v8 & 0x2000000000000000) == 0)
  {
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v8 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      result = sub_1ABF24B74();
    }

    v13 = *result;
    if (v13 == 43)
    {
      if (v11 >= 1)
      {
        if (v11 != 1)
        {
          v14 = 0;
          if (result)
          {
            while (1)
            {
              sub_1ABA7D44C();
              if (!v16 & v15)
              {
                goto LABEL_75;
              }

              sub_1ABA8F22C();
              if (!v16)
              {
                goto LABEL_75;
              }

              v14 = v23 + v22;
              if (__OFADD__(v23, v22))
              {
                goto LABEL_75;
              }

              sub_1ABA7E4F0();
              if (v16)
              {
                goto LABEL_76;
              }
            }
          }

          goto LABEL_66;
        }

        goto LABEL_75;
      }

      goto LABEL_87;
    }

    if (v13 != 45)
    {
      if (v11)
      {
        v14 = 0;
        if (result)
        {
          while (1)
          {
            v26 = *result - 48;
            if (v26 > 9)
            {
              goto LABEL_75;
            }

            v27 = 10 * v14;
            if ((v14 * 10) >> 64 != (10 * v14) >> 63)
            {
              goto LABEL_75;
            }

            v14 = v27 + v26;
            if (__OFADD__(v27, v26))
            {
              goto LABEL_75;
            }

            ++result;
            if (!--v11)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_66;
      }

LABEL_75:
      v14 = 0;
      v19 = 1;
      goto LABEL_76;
    }

    if (v11 >= 1)
    {
      if (v11 != 1)
      {
        v14 = 0;
        if (result)
        {
          while (1)
          {
            sub_1ABA7D44C();
            if (!v16 & v15)
            {
              goto LABEL_75;
            }

            sub_1ABA8F22C();
            if (!v16)
            {
              goto LABEL_75;
            }

            v14 = v18 - v17;
            if (__OFSUB__(v18, v17))
            {
              goto LABEL_75;
            }

            sub_1ABA7E4F0();
            if (v16)
            {
              goto LABEL_76;
            }
          }
        }

LABEL_66:
        v19 = 0;
LABEL_76:
        v30 = v19;
        goto LABEL_77;
      }

      goto LABEL_75;
    }

    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  v34[0] = v6;
  v34[1] = v8 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v10)
      {
        while (1)
        {
          sub_1ABA7D44C();
          if (!v16 & v15)
          {
            break;
          }

          sub_1ABA8F22C();
          if (!v16)
          {
            break;
          }

          v14 = v29 + v28;
          if (__OFADD__(v29, v28))
          {
            break;
          }

          sub_1ABA7E4F0();
          if (v16)
          {
            goto LABEL_76;
          }
        }
      }

      goto LABEL_75;
    }

    if (v10)
    {
      if (v10 != 1)
      {
        sub_1ABA8095C();
        while (1)
        {
          sub_1ABA7D44C();
          if (!v16 & v15)
          {
            break;
          }

          sub_1ABA8F22C();
          if (!v16)
          {
            break;
          }

          v14 = v21 - v20;
          if (__OFSUB__(v21, v20))
          {
            break;
          }

          sub_1ABA7E4F0();
          if (v16)
          {
            goto LABEL_76;
          }
        }
      }

      goto LABEL_75;
    }

    goto LABEL_86;
  }

  if (v10)
  {
    if (v10 != 1)
    {
      sub_1ABA8095C();
      while (1)
      {
        sub_1ABA7D44C();
        if (!v16 & v15)
        {
          break;
        }

        sub_1ABA8F22C();
        if (!v16)
        {
          break;
        }

        v14 = v25 + v24;
        if (__OFADD__(v25, v24))
        {
          break;
        }

        sub_1ABA7E4F0();
        if (v16)
        {
          goto LABEL_76;
        }
      }
    }

    goto LABEL_75;
  }

LABEL_88:
  __break(1u);
  return result;
}

uint64_t sub_1ABBA4284(uint64_t a1)
{
  v2 = sub_1ABF23784();
  v19 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v17[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1ABF23744();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for LogSignpost(0);
  v9 = *a1;
  v10 = *(a1 + 16);
  v11 = sub_1ABF23764();
  sub_1ABF23794();
  v18 = sub_1ABF24704();
  result = sub_1ABF247D4();
  if ((result & 1) == 0)
  {
LABEL_13:

    return (*(v6 + 8))(v8, v5);
  }

  if ((v10 & 1) == 0)
  {
    if (v9)
    {
LABEL_9:

      sub_1ABF237C4();

      v13 = v19;
      if ((*(v19 + 88))(v4, v2) == *MEMORY[0x1E69E93E8])
      {
        v14 = "[Error] Interval already ended";
      }

      else
      {
        (*(v13 + 8))(v4, v2);
        v14 = "";
      }

      v15 = swift_slowAlloc();
      *v15 = 0;
      v16 = sub_1ABF23724();
      _os_signpost_emit_with_name_impl(&dword_1ABA78000, v11, v18, v16, v9, v14, v15, 2u);
      MEMORY[0x1AC5AB8B0](v15, -1, -1);
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v9 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v9 & 0xFFFFF800) != 0xD800)
  {
    if (v9 >> 16 <= 0x10)
    {
      v9 = &v20;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1ABBA452C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1ABBA45E0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v127 = a3;
  v128 = a2;
  v4 = v3;
  v136[1] = *MEMORY[0x1E69E9840];
  v136[0] = MEMORY[0x1E69E7CC8];
  v6 = a1 + 64;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  if (!v9)
  {
    goto LABEL_5;
  }

  do
  {
    v12 = v11;
LABEL_8:
    v13 = __clz(__rbit64(v9)) | (v12 << 6);
    v14 = *(a1 + 48) + 48 * v13;
    v15 = *(v14 + 8);
    v16 = *(v14 + 16);
    v17 = *(v14 + 24);
    v18 = *(v14 + 32);
    v19 = *(v14 + 40);
    v20 = *(*(a1 + 56) + 8 * v13);
    v129 = *v14;
    v130 = v15;
    v131 = v16;
    v132 = v17;
    v133 = v18;
    v134 = v19;
    v135 = v20;

    v21 = v20;
    sub_1ABBA4CD8(v136, &v129);
    if (v4)
    {
LABEL_58:

      __break(1u);
      return result;
    }

    v9 &= v9 - 1;

    v11 = v12;
  }

  while (v9);
  while (1)
  {
LABEL_5:
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
    }

    if (v12 >= v10)
    {
      break;
    }

    v9 = *(v6 + 8 * v12);
    ++v11;
    if (v9)
    {
      goto LABEL_8;
    }
  }

  v126 = v4;

  v22 = 0;
  v4 = v136[0];
  do
  {
    v23 = byte_1F208FCA8[v22 + 32];
    v24 = sub_1ABBAE950(v23);
    if (v4[2])
    {
      sub_1ABA94FC8(v24, v25, v26, v27, v28, v29, v30, v31, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135);
      v33 = v32;

      if (v33)
      {
        goto LABEL_46;
      }
    }

    else
    {
    }

    if (qword_1EB4CFFD8 != -1)
    {
      swift_once();
    }

    v34 = qword_1EB5495B0;
    v35 = sub_1ABBAE950(v23);
    v37 = v36;
    if (*(v34 + 16))
    {
      v38 = v35;
      sub_1ABF25234();
      sub_1ABF23D34();
      v39 = sub_1ABF25294();
      v40 = ~(-1 << *(v34 + 32));
      do
      {
        v41 = v39 & v40;
        if (((*(v34 + 56 + (((v39 & v40) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v39 & v40)) & 1) == 0)
        {
          goto LABEL_33;
        }

        v42 = (*(v34 + 48) + 16 * v41);
        if (*v42 == v38 && v42[1] == v37)
        {
          break;
        }

        v44 = sub_1ABF25054();
        v39 = v41 + 1;
      }

      while ((v44 & 1) == 0);

      sub_1ABBAE950(v23);
      v45 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
      if (!v45)
      {
LABEL_41:
        v102 = sub_1ABA8E7C4();
        v110 = sub_1ABA94FC8(v102, v103, v104, v105, v106, v107, v108, v109, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135);
        v112 = v111;

        if (v112)
        {
          swift_isUniquelyReferenced_nonNull_native();
          v129 = v4;
          sub_1ABAD219C(&qword_1EB4D1FF8, &unk_1ABF4C460);
          sub_1ABF24C64();
          v4 = v129;

          sub_1ABB373C8();
          sub_1ABF24C84();
        }

        goto LABEL_46;
      }

      v46 = v45;
      swift_isUniquelyReferenced_nonNull_native();
      v129 = v4;
      v47 = sub_1ABA8E7C4();
      sub_1ABA94FC8(v47, v48, v49, v50, v51, v52, v53, v54, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135);
      sub_1ABA81720();
      if (v57)
      {
        goto LABEL_55;
      }

      v58 = v55;
      v59 = v56;
      v60 = sub_1ABAD219C(&qword_1EB4D1FF8, &unk_1ABF4C460);
      if (sub_1ABA8FF64(v60))
      {
        v61 = sub_1ABA8E7C4();
        v69 = sub_1ABA94FC8(v61, v62, v63, v64, v65, v66, v67, v68, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135);
        if ((v59 & 1) != (v70 & 1))
        {
          goto LABEL_57;
        }

        v58 = v69;
      }

      v4 = v129;
      if (v59)
      {
        v71 = v129[7];
        v72 = *(v71 + 8 * v58);
        *(v71 + 8 * v58) = v46;
LABEL_40:

        goto LABEL_46;
      }

      sub_1ABAFF5B0();
    }

    else
    {
LABEL_33:

      v73 = sub_1ABBAE950(v23);
      v75 = v74;
      v76 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
      if (!v76)
      {
        goto LABEL_41;
      }

      v77 = v76;
      swift_isUniquelyReferenced_nonNull_native();
      v129 = v4;
      v78 = sub_1ABA8E7C4();
      sub_1ABA94FC8(v78, v79, v80, v81, v82, v83, v84, v85, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135);
      sub_1ABA81720();
      if (v57)
      {
        goto LABEL_54;
      }

      v88 = v86;
      v89 = v87;
      v90 = sub_1ABAD219C(&qword_1EB4D1FF8, &unk_1ABF4C460);
      if (sub_1ABA8FF64(v90))
      {
        v91 = sub_1ABA8E7C4();
        v99 = sub_1ABA94FC8(v91, v92, v93, v94, v95, v96, v97, v98, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135);
        if ((v89 & 1) != (v100 & 1))
        {
LABEL_57:
          sub_1ABF25104();
          __break(1u);
          goto LABEL_58;
        }

        v88 = v99;
      }

      v4 = v129;
      if (v89)
      {
        v101 = v129[7];
        v72 = *(v101 + 8 * v88);
        *(v101 + 8 * v88) = v77;
        goto LABEL_40;
      }

      v129[(v88 >> 6) + 8] |= 1 << v88;
      v113 = (v4[6] + 16 * v88);
      *v113 = v73;
      v113[1] = v75;
      *(v4[7] + 8 * v88) = v77;
      v114 = v4[2];
      v57 = __OFADD__(v114, 1);
      v115 = v114 + 1;
      if (v57)
      {
        goto LABEL_56;
      }

      v4[2] = v115;
    }

LABEL_46:
    ++v22;
  }

  while (v22 != 122);
  v116 = objc_opt_self();
  sub_1ABB373C8();
  v117 = sub_1ABF23954();
  v129 = 0;
  v118 = [v116 dataWithJSONObject:v117 options:0 error:&v129];

  v119 = v129;
  if (!v118)
  {
    v124 = v119;
    v123 = sub_1ABF21BE4();

    swift_willThrow();
    goto LABEL_51;
  }

  v120 = sub_1ABF21DD4();
  v122 = v121;

  sub_1ABF217F4();
  swift_allocObject();
  sub_1ABF217E4();
  sub_1ABBA4E68();
  sub_1ABF217D4();
  v123 = v126;
  if (v126)
  {

    sub_1ABA96210(v120, v122);
LABEL_51:

    *v128 = v123;
    return result;
  }

  sub_1ABA96210(v120, v122);
}

void sub_1ABBA4CD8(uint64_t *a1, uint64_t *a2)
{
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[6];
  v20 = *a2;
  v22 = a2[1];

  MEMORY[0x1AC5A9410](43, 0xE100000000000000);
  MEMORY[0x1AC5A9410](v3, v4);
  v6 = v20;
  if (qword_1EB4CFFD8 != -1)
  {
    swift_once();
  }

  sub_1ABB130E0();
  if (v7)
  {
    v8 = [v5 int64Value];
    v9 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    if (v9)
    {
LABEL_5:
      v16 = v9;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = *a1;
      sub_1ABAFB584(v16, v6, v22, isUniquelyReferenced_nonNull_native);

      *a1 = v21;
      return;
    }
  }

  else
  {
    [v5 doubleValue];
    v9 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    if (v9)
    {
      goto LABEL_5;
    }
  }

  v19 = sub_1ABC25DD8(v20, v22, v10, v11, v12, v13, v14, v15);
}

unint64_t sub_1ABBA4E68()
{
  result = qword_1EB4CFFC8;
  if (!qword_1EB4CFFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CFFC8);
  }

  return result;
}

unint64_t sub_1ABBA4EBC()
{
  result = qword_1EB4D3ED8;
  if (!qword_1EB4D3ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3ED8);
  }

  return result;
}

uint64_t sub_1ABBA4F10(uint64_t a1)
{
  v2 = type metadata accessor for LogSignpost(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1ABBA4FB8()
{
  result = qword_1ED86B968;
  if (!qword_1ED86B968)
  {
    type metadata accessor for MLModelMetadataKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86B968);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ECRModelError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1ABBA50F0()
{
  result = qword_1EB4D3EF0;
  if (!qword_1EB4D3EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3EF0);
  }

  return result;
}

IntelligencePlatform::EntityResolutionMode_optional __swiftcall EntityResolutionMode.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1ABF24D84();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t EntityResolutionMode.rawValue.getter()
{
  result = 0x6E6574614C776F6CLL;
  switch(*v0)
  {
    case 1:
      result = 0x6465636E616C6162;
      break;
    case 2:
      result = 0x6C61755168676968;
      break;
    case 3:
      v2 = 0x786966657270;
      goto LABEL_8;
    case 4:
      result = 0xD000000000000014;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
      v2 = 0x646972627968;
LABEL_8:
      result = v2 & 0xFFFFFFFFFFFFLL | 0x6553000000000000;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABBA52BC@<X0>(uint64_t *a1@<X8>)
{
  result = EntityResolutionMode.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void static EntityResolutionConfig.fromResource(configName:)()
{
  sub_1ABA7E2A8();
  v1 = v0;
  v3 = v2;
  v37 = v4;
  v5 = sub_1ABF21CF4();
  sub_1ABA7BB64();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v35 - v12;
  if (qword_1ED871EA0 != -1)
  {
    swift_once();
  }

  v14 = qword_1ED871EA8;
  v15 = sub_1ABF23BD4();
  v16 = sub_1ABF23BD4();
  v17 = sub_1ABBA918C(v3, v1, v15, v16, v14);

  if (!v17)
  {
    if (qword_1ED871B18 != -1)
    {
      sub_1ABA7BE6C(&qword_1ED871B18);
    }

    v28 = sub_1ABF237F4();
    sub_1ABA7AA24(v28, qword_1ED871B20);

    v29 = sub_1ABF237D4();
    v30 = sub_1ABF24664();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v39[0] = v32;
      *v31 = 136315138;
      *(v31 + 4) = sub_1ABADD6D8(v3, v1, v39);
      _os_log_impl(&dword_1ABA78000, v29, v30, "Failed to get the correct URL for config file %s", v31, 0xCu);
      sub_1ABA84B54(v32);
      sub_1ABA7BC34();
      sub_1ABA7BC34();
    }

    sub_1ABBA91F4(v39);
    goto LABEL_15;
  }

  sub_1ABF21CA4();

  sub_1ABBA57F4(v13, v39);
  if (sub_1ABBA91FC(v39) != 1)
  {
    (*(v7 + 8))(v13, v5);
LABEL_15:
    v33 = v39;
    goto LABEL_18;
  }

  if (qword_1ED871B18 != -1)
  {
    sub_1ABA7BE6C(&qword_1ED871B18);
  }

  v18 = sub_1ABF237F4();
  sub_1ABA7AA24(v18, qword_1ED871B20);
  (*(v7 + 16))(v10, v13, v5);
  v19 = sub_1ABF237D4();
  v20 = sub_1ABF24664();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v35 = v21;
    v36 = swift_slowAlloc();
    v38[0] = v36;
    *v21 = 136315138;
    sub_1ABAE27F8();
    v22 = sub_1ABF24FF4();
    v24 = v23;
    v25 = *(v7 + 8);
    v25(v10, v5);
    v26 = sub_1ABADD6D8(v22, v24, v38);

    v27 = v35;
    *(v35 + 1) = v26;
    _os_log_impl(&dword_1ABA78000, v19, v20, "Failed to load config data from %s", v27, 0xCu);
    sub_1ABA84B54(v36);
    sub_1ABA7BC34();
    sub_1ABA7BC34();

    v25(v13, v5);
  }

  else
  {

    v34 = *(v7 + 8);
    v34(v10, v5);
    v34(v13, v5);
  }

  sub_1ABBA91F4(v38);
  v33 = v38;
LABEL_18:
  memcpy(v37, v33, 0x8DuLL);
  sub_1ABA7BC1C();
}

void *sub_1ABBA57F4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v44 = a2;
  v3 = sub_1ABF21CF4();
  v42 = *(v3 - 8);
  v43 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1ABF23C54();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1ABF23BC4();
  sub_1ABF23C44();
  v41 = sub_1ABF23C14();
  v11 = v10;

  (*(v7 + 8))(v9, v6);
  if (v11 >> 60 == 15)
  {
    v46[0] = 0;
    v46[1] = 0xE000000000000000;
    sub_1ABF24AB4();

    v46[0] = 0xD00000000000001ELL;
    v46[1] = 0x80000001ABF89530;
    sub_1ABAE27F8();
    v12 = v43;
    v13 = sub_1ABF24FF4();
    MEMORY[0x1AC5A9410](v13);

    v14 = v46[0];
    v15 = v46[1];
    sub_1ABBAA394();
    v16 = swift_allocError();
    *v17 = v14;
    v17[1] = v15;
    swift_willThrow();
    v20 = v5;
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v21 = sub_1ABF237F4();
    sub_1ABA7AA24(v21, qword_1ED871B40);
    v22 = v42;
    (*(v42 + 16))(v20, a1, v12);
    v23 = v16;
    v24 = sub_1ABF237D4();
    v25 = sub_1ABF24674();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = v20;
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v46[0] = v29;
      *v26 = 136315394;
      sub_1ABAE27F8();
      v30 = sub_1ABF24FF4();
      v31 = v22;
      v32 = v30;
      v33 = v12;
      v35 = v34;
      (*(v31 + 8))(v27, v33);
      v36 = sub_1ABADD6D8(v32, v35, v46);

      *(v26 + 4) = v36;
      *(v26 + 12) = 2112;
      v37 = v16;
      v38 = _swift_stdlib_bridgeErrorToNSError();
      *(v26 + 14) = v38;
      *v28 = v38;
      _os_log_impl(&dword_1ABA78000, v24, v25, "Failed to load data from %s with error %@", v26, 0x16u);
      sub_1ABB24B18(v28);
      MEMORY[0x1AC5AB8B0](v28, -1, -1);
      sub_1ABA84B54(v29);
      MEMORY[0x1AC5AB8B0](v29, -1, -1);
      MEMORY[0x1AC5AB8B0](v26, -1, -1);
    }

    else
    {

      (*(v22 + 8))(v20, v12);
    }

    sub_1ABBAA4C0(v46);
    v40 = v46;
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    sub_1ABF217F4();
    swift_allocObject();
    sub_1ABF217E4();
    sub_1ABAD219C(&qword_1EB4D4000, &qword_1ABF41B30);
    sub_1ABBAA4F0();
    v19 = v41;
    sub_1ABF217D4();

    objc_autoreleasePoolPop(v18);
    sub_1ABAC9310(v19, v11);
    memcpy(v45, v46, 0x8DuLL);
    nullsub_1();
    v40 = v45;
  }

  return memcpy(v44, v40, 0x8DuLL);
}

void sub_1ABBA5D18()
{
  sub_1ABA7E2A8();
  v1 = v0;
  v41 = v2;
  v42 = sub_1ABF21CF4();
  sub_1ABA7BB64();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1ABF23C54();
  sub_1ABA7BB64();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1ABF23BC4();
  sub_1ABF23C44();
  v14 = sub_1ABF23C14();
  v16 = v15;

  (*(v10 + 8))(v13, v8);
  if (v16 >> 60 == 15)
  {
    v43 = 0;
    v44 = 0xE000000000000000;
    sub_1ABF24AB4();

    v43 = 0xD00000000000001ELL;
    v44 = 0x80000001ABF89530;
    sub_1ABAE27F8();
    v17 = sub_1ABF24FF4();
    MEMORY[0x1AC5A9410](v17);

    v18 = v43;
    v19 = v44;
    sub_1ABBAA394();
    v20 = swift_allocError();
    *v21 = v18;
    v21[1] = v19;
    swift_willThrow();
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v23 = sub_1ABF237F4();
    sub_1ABA7AA24(v23, qword_1ED871B40);
    v24 = v42;
    (*(v4 + 16))(v7, v1, v42);
    v25 = v20;
    v26 = sub_1ABF237D4();
    v27 = sub_1ABF24674();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v43 = v30;
      *v28 = 136315394;
      sub_1ABAE27F8();
      v31 = sub_1ABF24FF4();
      v32 = v24;
      v33 = v31;
      v35 = v34;
      (*(v4 + 8))(v7, v32);
      v36 = sub_1ABADD6D8(v33, v35, &v43);

      *(v28 + 4) = v36;
      *(v28 + 12) = 2112;
      v37 = v20;
      v38 = _swift_stdlib_bridgeErrorToNSError();
      *(v28 + 14) = v38;
      *v29 = v38;
      _os_log_impl(&dword_1ABA78000, v26, v27, "Failed to load data from %s with error %@", v28, 0x16u);
      sub_1ABB24B18(v29);
      sub_1ABA7BC34();
      sub_1ABA84B54(v30);
      sub_1ABA7BC34();
      sub_1ABA7BC34();
    }

    else
    {

      (*(v4 + 8))(v7, v24);
    }

    v39 = 1;
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    sub_1ABF217F4();
    swift_allocObject();
    sub_1ABF217E4();
    sub_1ABAD219C(&qword_1EB4D3FE8, &qword_1ABF41B28);
    sub_1ABBAA3E8();
    sub_1ABF217D4();

    objc_autoreleasePoolPop(v22);
    sub_1ABAC9310(v14, v16);
    v39 = v43;
  }

  *v41 = v39;
  sub_1ABA7BC1C();
}

void sub_1ABBA61BC()
{
  sub_1ABA7E2A8();
  v0 = sub_1ABF239C4();
  v1 = 0;
  v32 = 0x80000001ABF7F180;
  v33 = 0x80000001ABF7F1A0;
  while (1)
  {
    v2 = 0xEA00000000007963;
    v3 = 0x6E6574614C776F6CLL;
    switch(byte_1F208FF30[v1 + 32])
    {
      case 1:
        v2 = 0xE800000000000000;
        v3 = 0x6465636E616C6162;
        break;
      case 2:
        v3 = 0x6C61755168676968;
        v2 = 0xEB00000000797469;
        break;
      case 3:
        v4 = 0x786966657270;
        goto LABEL_9;
      case 4:
        v3 = 0xD000000000000014;
        v2 = v32;
        break;
      case 5:
        v3 = 0xD000000000000010;
        v2 = v33;
        break;
      case 6:
        v4 = 0x646972627968;
LABEL_9:
        v3 = v4 & 0xFFFFFFFFFFFFLL | 0x6553000000000000;
        v2 = 0xEC00000068637261;
        break;
      default:
        break;
    }

    static EntityResolutionConfig.fromResource(configName:)();
    memcpy(v37, __src, 0x8DuLL);
    if (sub_1ABBAA37C(v37) == 1)
    {

      if (qword_1ED871B18 == -1)
      {
LABEL_22:
        v28 = sub_1ABF237F4();
        sub_1ABA7AA24(v28, qword_1ED871B20);
        v29 = sub_1ABF237D4();
        v30 = sub_1ABF24664();
        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          *v31 = 0;
          _os_log_impl(&dword_1ABA78000, v29, v30, "Failed to load config from resources. Using the dynamically built config instead.", v31, 2u);
          sub_1ABA7BC34();
        }

LABEL_25:
        sub_1ABA7BC1C();
        return;
      }

LABEL_28:
      sub_1ABA7BE6C(&qword_1ED871B18);
      goto LABEL_22;
    }

    swift_isUniquelyReferenced_nonNull_native();
    v35 = v0;
    v11 = sub_1ABA94FC8(v3, v2, v5, v6, v7, v8, v9, v10, v32, v33, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7]);
    if (__OFADD__(v0[2], (v12 & 1) == 0))
    {
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v13 = v11;
    v14 = v12;
    sub_1ABAD219C(&qword_1EB4D3FD8, &unk_1ABF41B18);
    if ((sub_1ABF24C64() & 1) == 0)
    {
      goto LABEL_15;
    }

    v21 = sub_1ABA94FC8(v3, v2, v15, v16, v17, v18, v19, v20, v32, v33, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7]);
    if ((v14 & 1) != (v22 & 1))
    {
      break;
    }

    v13 = v21;
LABEL_15:
    if (v14)
    {
      v0 = v35;
      v23 = (v35[7] + 144 * v13);
      memcpy(__dst, v23, 0x8DuLL);
      memcpy(v23, __src, 0x8DuLL);
      sub_1ABBA954C(__dst);
    }

    else
    {
      v0 = v35;
      v35[(v13 >> 6) + 8] |= 1 << v13;
      v24 = (v0[6] + 16 * v13);
      *v24 = v3;
      v24[1] = v2;
      memcpy((v0[7] + 144 * v13), __src, 0x8DuLL);
      v25 = v0[2];
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        goto LABEL_27;
      }

      v0[2] = v27;
    }

    if (v1 == 6)
    {
      goto LABEL_25;
    }

    ++v1;
  }

  sub_1ABF25104();
  __break(1u);
}

uint64_t sub_1ABBA6540()
{

  return v0;
}

uint64_t sub_1ABBA6570()
{
  sub_1ABBA6540();

  return swift_deallocClassInstance();
}

uint64_t sub_1ABBA65A4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000012 && 0x80000001ABF89490 == a2;
  if (v3 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD00000000000001CLL && 0x80000001ABF894B0 == a2;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000016 && 0x80000001ABF894D0 == a2;
      if (v7 || (sub_1ABF25054() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000018 && 0x80000001ABF894F0 == a2;
        if (v8 || (sub_1ABF25054() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x72656B6E61726572 && a2 == 0xEE006769666E6F43;
          if (v9 || (sub_1ABF25054() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x6143656C62616E65 && a2 == 0xEB00000000656863)
          {

            return 5;
          }

          else
          {
            v11 = sub_1ABF25054();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1ABBA67A4(char a1)
{
  result = 0x72656B6E61726572;
  switch(a1)
  {
    case 1:
      result = 0xD00000000000001CLL;
      break;
    case 2:
      result = 0xD000000000000016;
      break;
    case 3:
      result = 0xD000000000000018;
      break;
    case 4:
      return result;
    case 5:
      result = 0x6143656C62616E65;
      break;
    default:
      result = 0xD000000000000012;
      break;
  }

  return result;
}

uint64_t sub_1ABBA68A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABBA65A4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABBA68D0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1ABBA679C();
  *a1 = result;
  return result;
}

uint64_t sub_1ABBA68F8(uint64_t a1)
{
  v2 = sub_1ABBA9220();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABBA6934(uint64_t a1)
{
  v2 = sub_1ABBA9220();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void EntityResolutionConfig.encode(to:)()
{
  sub_1ABA7BCA8();
  v3 = v2;
  v4 = sub_1ABAD219C(&qword_1EB4D3EF8, &qword_1ABF41450);
  sub_1ABA7BB64();
  v8 = v5;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v6);
  sub_1ABA7ED98();
  sub_1ABA93E20(v3, v3[3]);
  sub_1ABBA9220();

  sub_1ABA8E0D4();
  sub_1ABF252E4();
  sub_1ABBA9274();
  sub_1ABA933C0();
  sub_1ABF24F84();
  if (v0)
  {

    (*(v8 + 8))(v1, v4);
  }

  else
  {

    sub_1ABA933C0();
    sub_1ABA948C8();
    sub_1ABF24F84();
    sub_1ABBA92C8();
    sub_1ABA933C0();
    sub_1ABA948C8();
    sub_1ABF24F84();
    v7 = sub_1ABBA931C();

    sub_1ABA933C0();
    sub_1ABA948C8();
    sub_1ABF24F84();

    if (!v7)
    {
      sub_1ABBA9370();
      sub_1ABA933C0();
      sub_1ABA948C8();
      sub_1ABF24F84();
      sub_1ABA948C8();
      sub_1ABF24F44();
    }

    (*(v8 + 8))(v1, v4);
  }

  sub_1ABA7BC90();
}

void EntityResolutionConfig.init(from:)()
{
  sub_1ABA7BCA8();
  v2 = v1;
  v4 = v3;
  sub_1ABAD219C(&qword_1EB4D3F20, &qword_1ABF41458);
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v5);
  v30 = v2;
  sub_1ABA93E20(v2, v2[3]);
  sub_1ABBA9220();
  sub_1ABF252C4();
  if (v0)
  {
    sub_1ABA84B54(v2);
  }

  else
  {
    v29 = v4;
    sub_1ABBA93C4();
    sub_1ABA8FF84();
    sub_1ABF24E64();
    v26 = v32;
    v27 = v38;
    v60 = v33;
    v59 = v35;
    v58 = v37;
    sub_1ABA7F07C();
    sub_1ABA8FF84();
    sub_1ABF24E64();
    v24 = v36;
    v25 = v34;
    v23 = v32;
    v28 = v38;
    v57 = v33;
    v56 = v35;
    v55 = v37;
    sub_1ABBA9418();
    sub_1ABA7F07C();
    sub_1ABA8FF84();
    sub_1ABF24E64();
    v21 = v36;
    v22 = v32;
    sub_1ABBA946C();
    sub_1ABA7F07C();
    sub_1ABA8FF84();
    sub_1ABF24E64();
    v20 = v34;
    v6 = v32;
    v19 = v33;
    v7 = BYTE1(v34);
    v54 = v34;
    LOBYTE(v31[0]) = 4;
    sub_1ABBA94C0();
    sub_1ABA7F07C();
    sub_1ABA8FF84();
    sub_1ABF24E64();
    v18 = BYTE2(v34);
    v8 = v32;
    sub_1ABA8FF84();
    v9 = sub_1ABF24E24();
    v10 = sub_1ABA83818();
    v11(v10);
    v31[0] = v26;
    LOBYTE(v31[1]) = v60;
    v31[2] = v25;
    v17 = v59;
    LOBYTE(v31[3]) = v59;
    v31[4] = v24;
    LOBYTE(v31[5]) = v58;
    v31[6] = v27;
    v31[7] = v23;
    v15 = v57;
    v16 = v58;
    LOBYTE(v31[8]) = v57;
    v31[9] = v20;
    v14 = v56;
    LOBYTE(v31[10]) = v56;
    v31[11] = v21;
    v12 = v55;
    LOBYTE(v31[12]) = v55;
    v31[13] = v28;
    LOBYTE(v31[14]) = v22;
    v31[15] = v6;
    v31[16] = v19;
    v13 = v54;
    LOBYTE(v31[17]) = v54;
    BYTE1(v31[17]) = v7;
    BYTE2(v31[17]) = v18;
    BYTE3(v31[17]) = v8;
    BYTE4(v31[17]) = v9 & 1;
    memcpy(v29, v31, 0x8DuLL);
    sub_1ABBA9514(v31, &v32);
    sub_1ABA84B54(v30);
    v32 = v26;
    LOBYTE(v33) = v60;
    v34 = v25;
    v35 = v17;
    v36 = v24;
    v37 = v16;
    v38 = v27;
    v39 = v23;
    v40 = v15;
    v41 = v20;
    v42 = v14;
    v43 = v21;
    v44 = v12;
    v45 = v28;
    v46 = v22;
    v47 = v6;
    v48 = v19;
    v49 = v13;
    v50 = v7;
    v51 = v18;
    v52 = v8;
    v53 = v9 & 1;
    sub_1ABBA954C(&v32);
  }

  sub_1ABA7BC90();
}

uint64_t sub_1ABBA71F0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x797265755178616DLL && a2 == 0xEC000000657A6953;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000011 && 0x80000001ABF89550 == a2;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000014 && 0x80000001ABF89570 == a2;
      if (v7 || (sub_1ABF25054() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 1701080941 && a2 == 0xE400000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_1ABF25054();

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

unint64_t sub_1ABBA7358(char a1)
{
  result = 0x797265755178616DLL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0xD000000000000014;
      break;
    case 3:
      result = 1701080941;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABBA73E8(void *a1)
{
  v3 = v1;
  v5 = sub_1ABAD219C(&qword_1EB4D3F48, &qword_1ABF41AC8);
  sub_1ABA7BB64();
  v7 = v6;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18[-v9];
  sub_1ABA8A074(a1);
  sub_1ABBA9C80();
  sub_1ABA892E8();
  sub_1ABF252E4();
  v11 = *v3;
  v12 = *(v3 + 8);
  v22 = 0;
  sub_1ABA84030(v11, v12, &v22);
  if (!v2)
  {
    v13 = *(v3 + 16);
    v14 = *(v3 + 24);
    v21 = 1;
    sub_1ABA84030(v13, v14, &v21);
    v15 = *(v3 + 32);
    v16 = *(v3 + 40);
    v20 = 2;
    sub_1ABA84030(v15, v16, &v20);
    v19 = *(v3 + 48);
    v18[15] = 3;
    sub_1ABAD219C(&qword_1EB4D3F50, &qword_1ABF41AD0);
    sub_1ABBA9CD4();
    sub_1ABF24F84();
  }

  return (*(v7 + 8))(v10, v5);
}