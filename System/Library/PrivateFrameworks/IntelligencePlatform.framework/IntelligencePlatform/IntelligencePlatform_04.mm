unint64_t sub_1ABAD42CC()
{
  result = qword_1EB4D0DA0;
  if (!qword_1EB4D0DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0DA0);
  }

  return result;
}

unint64_t sub_1ABAD4324()
{
  result = qword_1EB4D0DA8;
  if (!qword_1EB4D0DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0DA8);
  }

  return result;
}

unint64_t sub_1ABAD437C()
{
  result = qword_1EB4D0DB0;
  if (!qword_1EB4D0DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0DB0);
  }

  return result;
}

unint64_t sub_1ABAD43D4()
{
  result = qword_1EB4D0DB8;
  if (!qword_1EB4D0DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0DB8);
  }

  return result;
}

unint64_t sub_1ABAD442C()
{
  result = qword_1EB4D0DC0;
  if (!qword_1EB4D0DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0DC0);
  }

  return result;
}

unint64_t sub_1ABAD4484()
{
  result = qword_1EB4D0DC8;
  if (!qword_1EB4D0DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0DC8);
  }

  return result;
}

unint64_t sub_1ABAD44DC()
{
  result = qword_1EB4D0DD0;
  if (!qword_1EB4D0DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0DD0);
  }

  return result;
}

unint64_t sub_1ABAD4534()
{
  result = qword_1EB4D0DD8;
  if (!qword_1EB4D0DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0DD8);
  }

  return result;
}

unint64_t sub_1ABAD458C()
{
  result = qword_1EB4D0DE0;
  if (!qword_1EB4D0DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0DE0);
  }

  return result;
}

unint64_t sub_1ABAD45E4()
{
  result = qword_1EB4D0DE8;
  if (!qword_1EB4D0DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0DE8);
  }

  return result;
}

unint64_t sub_1ABAD463C()
{
  result = qword_1EB4D0DF0;
  if (!qword_1EB4D0DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0DF0);
  }

  return result;
}

unint64_t sub_1ABAD4694()
{
  result = qword_1EB4D0DF8;
  if (!qword_1EB4D0DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0DF8);
  }

  return result;
}

unint64_t sub_1ABAD46EC()
{
  result = qword_1EB4D0E00;
  if (!qword_1EB4D0E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0E00);
  }

  return result;
}

unint64_t sub_1ABAD4744()
{
  result = qword_1EB4D0E08;
  if (!qword_1EB4D0E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0E08);
  }

  return result;
}

unint64_t sub_1ABAD479C()
{
  result = qword_1EB4D0E10;
  if (!qword_1EB4D0E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0E10);
  }

  return result;
}

unint64_t sub_1ABAD47F4()
{
  result = qword_1EB4D0E18;
  if (!qword_1EB4D0E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0E18);
  }

  return result;
}

unint64_t sub_1ABAD484C()
{
  result = qword_1EB4D0E20;
  if (!qword_1EB4D0E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0E20);
  }

  return result;
}

unint64_t sub_1ABAD48A4()
{
  result = qword_1EB4D0E28;
  if (!qword_1EB4D0E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0E28);
  }

  return result;
}

uint64_t sub_1ABAD48F8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1ABAD4974(uint64_t a1, uint64_t a2)
{
  sub_1ABF23C04();
  sub_1ABA9FF78();
  sub_1ABF23C04();
  sub_1ABAA00D8();
  v6 = v6 && v2 == v5;
  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1ABA8BE28(v3, v5, v4);
  }

  return v7 & 1;
}

uint64_t sub_1ABAD49E4(uint64_t a1, uint64_t a2)
{
  sub_1ABF23C04();
  sub_1ABF25234();
  sub_1ABF23D34();
  v2 = sub_1ABF25294();

  return v2;
}

uint64_t sub_1ABAD4A58()
{
  sub_1ABA81488();

  v2 = sub_1ABF23BF4();
  *v0 = 0;
  return v2 & 1;
}

uint64_t sub_1ABAD4AD4(uint64_t a1)
{
  v1 = sub_1ABF23C04();
  v2 = MEMORY[0x1AC5A94D0](v1);

  return v2;
}

uint64_t sub_1ABAD4B0C()
{
  sub_1ABA81488();

  result = sub_1ABF23BE4();
  *v0 = 0;
  return result;
}

unint64_t sub_1ABAD4B80()
{
  result = qword_1EB4D0E50;
  if (!qword_1EB4D0E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0E50);
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for MockLocationFeatures(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1ABAD4E20(uint64_t a1)
{
  sub_1ABF23C04();
  v1 = sub_1ABF23BD4();

  return v1;
}

double sub_1ABAD4F50(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0.0;
  }

  v2 = (a1 + 32);
  result = 0.0;
  do
  {
    v4 = *v2++;
    result = result + v4;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_1ABAD4F7C()
{
  sub_1ABAD4FFC(v0[2], v0[3], v0[4], v0[5], v0[6], v0[7], v0[8], v0[9], v0[10], v0[11], v0[12], v0[13]);

  return swift_deallocClassInstance();
}

uint64_t sub_1ABAD4FFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1ABAD509C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (v2 = sub_1ABAF81A8(), (v3 & 1) != 0))
  {
    sub_1ABA97EC0(v2);
  }

  else
  {
    sub_1ABA8BA38();
  }

  return sub_1ABA7D000();
}

uint64_t sub_1ABAD50DC(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v2 = sub_1ABAF8208();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  sub_1ABAA146C(v2);
}

uint64_t sub_1ABAD5128(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (v2 = sub_1ABAF8208(), (v3 & 1) != 0))
  {
    sub_1ABA97EC0(v2);
  }

  else
  {
    sub_1ABA8BA38();
  }

  return sub_1ABA7D000();
}

double sub_1ABAD5168()
{
  sub_1ABAB5250();
  if (!v1)
  {
    return sub_1ABA9923C();
  }

  v2 = sub_1ABAF8388(v0);
  if ((v3 & 1) == 0)
  {
    return sub_1ABA9923C();
  }

  sub_1ABAA00F8(v2);
  return result;
}

void sub_1ABAD51A4()
{
  sub_1ABAB5250();
  v1 = 0uLL;
  if (v2)
  {
    sub_1ABAF8328();
    if (v3)
    {
      sub_1ABA8EE70();
      v5 = *(v4 + 2);
      v8 = *(v4 + 24);
      v9 = *v4;
      v6 = *(v4 + 5);

      v7 = v8;
      v1 = v9;
    }

    else
    {
      v5 = 0;
      v6 = 0;
      v7 = 0uLL;
      v1 = 0uLL;
    }
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v7 = 0uLL;
  }

  *v0 = v1;
  *(v0 + 16) = v5;
  *(v0 + 24) = v7;
  *(v0 + 40) = v6;
}

uint64_t sub_1ABAD5260(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v2 = sub_1ABAF8574(a1);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  sub_1ABAA146C(v2);
}

void sub_1ABAD538C()
{
  sub_1ABAB5250();
  if (v6)
  {
    v1 = v5;
    sub_1ABAF8328();
    if (v7)
    {
      sub_1ABA8EE70();
      v3 = *v8;
      v1 = v8[1];
      v10 = *(v8 + 1);
      v4 = v8[4];
      v2 = v8[5];

      swift_unknownObjectRetain();

      v9 = v10;
    }

    else
    {
      sub_1ABA8BC20();
      v9 = 0uLL;
    }
  }

  else
  {
    sub_1ABA8BC20();
  }

  *v0 = v3;
  *(v0 + 8) = v1;
  *(v0 + 16) = v9;
  *(v0 + 32) = v4;
  *(v0 + 40) = v2;
}

void sub_1ABAD54F0()
{
  sub_1ABAB5250();
  v2 = 0uLL;
  if (v3)
  {
    v4 = v1;
    v5 = sub_1ABAF8684();
    if (v6)
    {
      v7 = *(v4 + 56) + 40 * v5;
      v8 = *v7;
      v11 = *(v7 + 8);
      v10 = *(v7 + 24);
      v9 = *(v7 + 32);
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();

      v2 = v11;
    }

    else
    {
      v8 = 0;
      v10 = 0;
      v9 = 0;
      v2 = 0uLL;
    }
  }

  else
  {
    v8 = 0;
    v10 = 0;
    v9 = 0;
  }

  *v0 = v8;
  *(v0 + 8) = v2;
  *(v0 + 24) = v10;
  *(v0 + 32) = v9;
}

uint64_t sub_1ABAD55A0()
{
  sub_1ABAB5250();
  if (v2 && (v3 = v1, v4 = sub_1ABAF81A8(), (v5 & 1) != 0))
  {
    v6 = v4;
    v7 = *(v3 + 56);
    v8 = sub_1ABAD219C(&qword_1EB4D19B0, &unk_1ABF33B40);
    sub_1ABA7BBB0();
    (*(v9 + 16))(v0, v7 + *(v9 + 72) * v6, v8);
    sub_1ABA8C6E0();
    v13 = v8;
  }

  else
  {
    sub_1ABAD219C(&qword_1EB4D19B0, &unk_1ABF33B40);
    v10 = sub_1ABA8C900();
  }

  return sub_1ABA7B9B4(v10, v11, v12, v13);
}

uint64_t sub_1ABAD5664(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_1ABAFF5A4(a1);
  if (v4)
  {
    return *(*(a2 + 56) + 16 * v3);
  }

  else
  {
    return 0;
  }
}

double sub_1ABAD56E0()
{
  sub_1ABAB5250();
  if (v3 && (v4 = v1, v5 = v2(), (v6 & 1) != 0))
  {
    v7 = *(v4 + 56) + 32 * v5;

    sub_1ABAE2BF0(v7, v0);
  }

  else
  {
    result = 0.0;
    *v0 = 0u;
    v0[1] = 0u;
  }

  return result;
}

void *sub_1ABAD5744(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_1ABAF87E4();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(a2 + 56) + 8 * v3);
  v6 = v5;
  return v5;
}

unint64_t sub_1ABAD578C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    goto LABEL_5;
  }

  v4 = sub_1ABAF8820(a1);
  if ((v5 & 1) == 0)
  {
    v2 = 0;
LABEL_5:
    v6 = 1;
    return v2 | (v6 << 32);
  }

  v6 = 0;
  v2 = *(*(a2 + 56) + 4 * v4);
  return v2 | (v6 << 32);
}

uint64_t sub_1ABAD58A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a3(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  sub_1ABAA146C(v3);
}

uint64_t sub_1ABAD58F0(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v2 = sub_1ABAAFEB4();
  if (v3)
  {
    return sub_1ABAA146C(v2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1ABAD5944(uint64_t a1, double a2)
{
  if (*(a1 + 16) && (v2 = sub_1ABAF892C(a2), (v3 & 1) != 0))
  {
    sub_1ABA97EC0(v2);
  }

  else
  {
    sub_1ABA8BA38();
  }

  return sub_1ABA7D000();
}

uint64_t sub_1ABAD59D8(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v2 = sub_1ABAAFEB4();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  sub_1ABAA146C(v2);
}

void sub_1ABAD5A60()
{
  sub_1ABAB5250();
  if (v2 && (v3 = v1, v4 = sub_1ABAFF5BC(), (v5 & 1) != 0))
  {
    v6 = *(v3 + 56) + 48 * v4;

    sub_1ABAE2C4C(v6, v0);
  }

  else
  {
    sub_1ABA9923C();
    *(v0 + 40) = -1;
  }
}

unint64_t sub_1ABAD5BC8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    goto LABEL_5;
  }

  v4 = sub_1ABAFF5A4(a1);
  if ((v5 & 1) == 0)
  {
    v2 = 0;
LABEL_5:
    v6 = 1;
    return v2 | (v6 << 32);
  }

  v6 = 0;
  v2 = *(*(a2 + 56) + 4 * v4);
  return v2 | (v6 << 32);
}

uint64_t sub_1ABAD5C24()
{
  v1 = *(*v0 + 96);
  sub_1ABF247E4();
  sub_1ABA7BBB0();
  (*(v2 + 8))(v0 + v1);
  swift_weakDestroy();

  return v0;
}

uint64_t sub_1ABAD5CD8()
{
  sub_1ABAD5C24();

  return swift_deallocClassInstance();
}

uint64_t sub_1ABAD5D30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1ABAA068C();
  if (v7)
  {
    v8 = v6;
    v9 = v5;
    v10 = *(v3 + 16);

    result = sub_1ABA967E4(v9, v8);
    v12 = result;
    v13 = 0;
    v14 = *(result + 16);
    v15 = result + 40;
    while (v14 != v13)
    {
      if (v13 >= *(v12 + 16))
      {
        __break(1u);
        return result;
      }

      swift_beginAccess();
      v16 = *(v10 + 40);
      if (!*(v16 + 16) || (v17 = sub_1ABA826A8(), v25 = sub_1ABA980D8(v17, v18, v19, v20, v21, v22, v23, v24, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39), (v26 & 1) == 0))
      {

        return a3;
      }

      v27 = *(*(v16 + 56) + 8 * v25);

      ++v13;
      v15 += 16;
      v10 = v27;
    }

    v28 = *(v10 + 48);
    v29 = *(v10 + 52);

    if (v29)
    {
      return a3;
    }

    else
    {
      return v28;
    }
  }

  return a3;
}

uint64_t DictionaryTrie.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t AddressEmbedder.__allocating_init(modelName:dictionaryPaths:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = swift_allocObject();
  v5 = sub_1ABA805B4();
  AddressEmbedder.init(modelName:dictionaryPaths:)(v5, v6, a3);
  return v4;
}

uint64_t sub_1ABAD5F24@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for LocationEmbedderInferenceInterface.Output(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1ABAD219C(&qword_1EB4D1AA0, &unk_1ABF33C30);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v14 - v7;

  v9 = sub_1ABA826A8();
  sub_1ABAD6090(v9, v10, 0, 1, v11);

  if (!v1)
  {
    sub_1ABAE2D60(v8, v5);
    sub_1ABAD219C(&qword_1EB4D1AA8, &qword_1ABF661A0);
    sub_1ABA7BBB0();
    return (*(v13 + 32))(a1, v5);
  }

  return result;
}

uint64_t sub_1ABAD6090@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v26 = a5;
  v29 = a4;
  v28 = a3;
  v8 = sub_1ABAD219C(&qword_1EB4D1AB0, &qword_1ABF33C40);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v27 = &v26 - v9;
  v10 = sub_1ABAD219C(&qword_1EB4D1AB8, &qword_1ABF33C48);
  MEMORY[0x1EEE9AC00](v10);
  v30 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v31 = &v26 - v13;
  v14 = sub_1ABAD219C(&qword_1EB4D1AC0, &qword_1ABF33C50);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v26 - v15;
  v17 = dispatch_semaphore_create(0);
  sub_1ABAD219C(&qword_1EB4D1AC8, &qword_1ABF33C58);
  v18 = swift_allocObject();
  sub_1ABA7B9B4(v18 + *(*v18 + 96), 1, 1, v10);
  v19 = sub_1ABF24294();
  sub_1ABA7B9B4(v16, 1, 1, v19);
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  *(v20 + 24) = 0;
  *(v20 + 32) = v17;
  *(v20 + 40) = v5;
  *(v20 + 48) = a1;
  *(v20 + 56) = a2;
  *(v20 + 64) = v28;
  *(v20 + 72) = v29 & 1;
  *(v20 + 80) = v18;
  v21 = v17;

  v22 = v27;

  sub_1ABD4AC88(0, 0, v16, &unk_1ABF33C68, v20);

  sub_1ABF24734();
  swift_beginAccess();
  sub_1ABAE2EC4();
  if (sub_1ABA7E1E0(v22, 1, v10) == 1)
  {
    sub_1ABAB480C(v22, &qword_1EB4D1AB0, &qword_1ABF33C40);
    result = sub_1ABF24CD4();
    __break(1u);
  }

  else
  {
    v23 = v31;
    sub_1ABAE2F1C();
    v24 = v30;
    sub_1ABAE2EC4();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v32 = *v24;
      sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
      swift_willThrowTypedImpl();

      return sub_1ABAB480C(v23, &qword_1EB4D1AB8, &qword_1ABF33C48);
    }

    else
    {

      sub_1ABAB480C(v23, &qword_1EB4D1AB8, &qword_1ABF33C48);
      return sub_1ABAE2F1C();
    }
  }

  return result;
}

uint64_t AddressEmbedder.getEmbedding(address:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  String.wordCharTokens(max_words:max_chars:vocab:)(10, 10, *(v3 + 24), a1, a2);
  String.bpeTokens(max_words:max_tokens:vocab:)(10, 5, *(v3 + 32), a1, a2);
  sub_1ABAD5F24(a3);
}

void String.wordCharTokens(max_words:max_chars:vocab:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1ABAE28EC();
  v8 = sub_1ABF24884();
  v9 = __OFSUB__(a1, 1);
  v10 = a1 - 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    v11 = v8;

    sub_1ABAD6B90(0, v10, 1, v11, a2, a3);
  }
}

void String.bpeTokens(max_words:max_tokens:vocab:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  MEMORY[0x1AC5A9410](a4, a5);

  MEMORY[0x1AC5A9410](29487, 0xE200000000000000);

  v8 = objc_autoreleasePoolPush();
  v55[0] = 12147;
  v55[1] = 0xE200000000000000;
  v54[0] = 32;
  v54[1] = 0xE100000000000000;
  sub_1ABAE28EC();
  v9 = sub_1ABF24884();

  v10 = *(v9 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    v51 = v8;
    v53 = a2;
    v55[0] = MEMORY[0x1E69E7CC0];
    sub_1ABADDBD4(0, v10, 0);
    v12 = v55[0];
    v13 = v9 + 40;
    do
    {
      v14 = v12;
      v15 = *(v13 - 8);

      v16 = v15;
      v12 = v14;
      v17 = sub_1ABAD78A8(v16);
      v19 = v18;

      v55[0] = v14;
      v20 = *(v14 + 16);
      v21 = *(v12 + 24);
      if (v20 >= v21 >> 1)
      {
        v23 = sub_1ABA7BBEC(v21);
        sub_1ABADDBD4(v23, v20 + 1, 1);
        v12 = v55[0];
      }

      *(v12 + 16) = v20 + 1;
      v22 = v12 + 16 * v20;
      *(v22 + 32) = v17;
      *(v22 + 40) = v19;
      v13 += 16;
      --v10;
    }

    while (v10);

    v11 = MEMORY[0x1E69E7CC0];
    v8 = v51;
    a2 = v53;
  }

  else
  {

    v12 = MEMORY[0x1E69E7CC0];
  }

  v55[0] = v12;
  objc_autoreleasePoolPop(v8);
  v54[0] = v11;
  if (__OFSUB__(a1, 1))
  {
    goto LABEL_53;
  }

  if (*(v12 + 16) - 1 >= a1 - 1)
  {
    v24 = a1 - 1;
  }

  else
  {
    v24 = *(v12 + 16) - 1;
  }

  v25 = sub_1ABAD70C4(0, v24, 1, v55, v54, a1, a2, a3);
  v26 = *(v25 + 16);
  v27 = a1 - v26;
  if (a1 <= v26)
  {
    goto LABEL_15;
  }

  if (a1 - v26 < 0)
  {
    goto LABEL_54;
  }

  if (a1 == v26)
  {
    goto LABEL_15;
  }

  v28 = a2 - 1;
  if (__OFSUB__(a2, 1))
  {
    goto LABEL_55;
  }

  v29 = 0;
  v50 = a1 - v26;
LABEL_18:
  if (v29 >= v27)
  {
    goto LABEL_51;
  }

  v30 = __OFADD__(v29, 1);
  v31 = v29 + 1;
  if (!v30)
  {
    v32 = 0;
    v33 = 0;
    v34 = 0;
    do
    {
      if (v34 >= v28)
      {
        if ((v34 != v28) | v33 & 1)
        {
          v52 = v31;
          sub_1ABADDE7C(0, v32, 0);
          v35 = v11;
          v36 = 0;
          v37 = 0;
          if (!v32)
          {
            goto LABEL_41;
          }

          do
          {
            if (v37 >= v28)
            {
              if (v36 & 1 | (v37 != v28))
              {
                goto LABEL_50;
              }

              v36 = 1;
              v37 = v28;
            }

            else
            {
              ++v37;
            }

            v38 = sub_1ABA8B810();
            v40 = *(v35 + 16);
            v39 = *(v35 + 24);
            if (v40 >= v39 >> 1)
            {
              v41 = sub_1ABA7BBEC(v39);
              sub_1ABADDE7C(v41, v40 + 1, 1);
            }

            *(v35 + 16) = v40 + 1;
            *(v35 + 4 * v40 + 32) = v38;
            --v32;
          }

          while (v32);
          while (1)
          {
LABEL_41:
            if (v37 >= v28)
            {
              if ((v37 != v28) | v36 & 1)
              {
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  sub_1ABADCD70();
                  v25 = v48;
                }

                v11 = MEMORY[0x1E69E7CC0];
                v47 = *(v25 + 16);
                v46 = *(v25 + 24);
                if (v47 >= v46 >> 1)
                {
                  sub_1ABA7BBEC(v46);
                  sub_1ABADCD70();
                  v25 = v49;
                }

                *(v25 + 16) = v47 + 1;
                *(v25 + 8 * v47 + 32) = v35;
                v27 = v50;
                v29 = v52;
                if (v52 == v50)
                {
LABEL_15:

                  return;
                }

                goto LABEL_18;
              }

              v36 = 1;
              v37 = v28;
            }

            else
            {
              ++v37;
            }

            v42 = sub_1ABA8B810();
            v44 = *(v35 + 16);
            v43 = *(v35 + 24);
            if (v44 >= v43 >> 1)
            {
              v45 = sub_1ABA7BBEC(v43);
              sub_1ABADDE7C(v45, v44 + 1, 1);
            }

            *(v35 + 16) = v44 + 1;
            *(v35 + 4 * v44 + 32) = v42;
          }
        }

        v33 = 1;
        v34 = v28;
      }

      else
      {
        ++v34;
      }

      v30 = __OFADD__(v32++, 1);
    }

    while (!v30);
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
  }

  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
}

uint64_t AddressEmbedder.deinit()
{

  return v0;
}

uint64_t AddressEmbedder.__deallocating_deinit()
{
  AddressEmbedder.deinit();

  return swift_deallocClassInstance();
}

uint64_t String.charTokens(max_chars:vocab:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = result - 1;
  if (__OFSUB__(result, 1))
  {
    __break(1u);
  }

  else
  {

    return sub_1ABAD73A0(0, v4, 1, a3, a4, a2);
  }

  return result;
}

void sub_1ABAD6B90(int64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = a1;
  v66 = a2;
  v10 = sub_1ABAE2A40(a1, a2, a3);
  v69 = MEMORY[0x1E69E7CC0];
  sub_1ABADDE3C(0, v10 & ~(v10 >> 63), 0);
  if ((v10 & 0x8000000000000000) == 0)
  {
    v65 = v6;
    if (!v10)
    {
      v63 = 0;
      v64 = 0;
      v59 = a5 - 1;
      v38 = __OFSUB__(a5, 1);
      HIDWORD(v60) = v38;
      v20 = v66;
      v19 = a3;
      goto LABEL_47;
    }

    v57 = v10;
    v17 = 0;
    v63 = 0;
    v64 = 0;
    v59 = a5 - 1;
    v18 = __OFSUB__(a5, 1);
    HIDWORD(v60) = v18;
    v19 = a3;
    v56 = a4 + 32;
    v20 = v66;
    while (1)
    {
      v21 = v9 <= v20;
      if (v19 > 0)
      {
        v21 = v9 >= v20;
      }

      if (v21)
      {
        if (v63 & 1 | (v9 != v20))
        {
          goto LABEL_90;
        }

        if (!(BYTE4(v63) & 1 | (v64 != 0x8000000000000000)))
        {
          goto LABEL_94;
        }

        LODWORD(v63) = 1;
      }

      else
      {
        v22 = !__OFADD__(v9, v19);
        HIDWORD(v63) = v22;
        v23 = 0x8000000000000000;
        if (!__OFADD__(v9, v19))
        {
          v23 = 0;
        }

        v64 = v23;
        v20 = __OFADD__(v9, v19) ? ((v9 + v19) >> 63) ^ 0x8000000000000000 : v9 + v19;
      }

      v61 = v20;
      if (v9 >= *(a4 + 16))
      {
        break;
      }

      if (v9 < 0)
      {
        goto LABEL_91;
      }

      if ((v60 & 0x100000000) != 0)
      {
        goto LABEL_93;
      }

      v24 = (v56 + 16 * v9);
      v25 = *v24;
      v26 = v24[1];

      v27 = sub_1ABAD73A0(0, v59, 1, v25, v26, a6);
LABEL_25:
      v29 = *(v69 + 16);
      v28 = *(v69 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_1ABADDE3C(v28 > 1, v29 + 1, 1);
      }

      ++v17;
      *(v69 + 16) = v29 + 1;
      *(v69 + 8 * v29 + 32) = v27;
      v9 = v61;
      v20 = v66;
      v19 = a3;
      if (v17 == v57)
      {
        v9 = v61;
LABEL_47:
        v62 = (v19 >> 63) ^ 0x7FFFFFFFFFFFFFFFLL;
        v58 = a4 + 32;
        while (1)
        {
          v39 = v9 <= v20;
          if (v19 > 0)
          {
            v39 = v9 >= v20;
          }

          if (v39)
          {
            if (v9 != v20 || (v63 & 1) != 0 || !(BYTE4(v63) & 1 | (v64 != 0x8000000000000000)))
            {

              return;
            }

            LODWORD(v63) = 1;
          }

          else
          {
            v40 = __OFADD__(v9, v19);
            if (v40)
            {
              v20 = v62;
            }

            else
            {
              v20 = v9 + v19;
            }

            v41 = 0x8000000000000000;
            if (!v40)
            {
              v41 = 0;
            }

            v64 = v41;
            HIDWORD(v63) = !v40;
          }

          if (v9 >= *(a4 + 16))
          {
            if (a5 < 1)
            {
              goto LABEL_87;
            }

            v48 = 1;
            v45 = MEMORY[0x1E69E7CC0];
            while (1)
            {
              if (*(a6 + 16) && (v49 = sub_1ABA94FC8(0x3E6461703CLL, 0xE500000000000000, v11, v12, v13, v14, v15, v16, v55, v56, v58, v59, v60, v62, v63, v64, v65, v66), (v50 & 1) != 0))
              {
                v51 = *(*(a6 + 56) + 4 * v49);
              }

              else
              {
                v51 = 0;
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_1ABAD9278();
                v45 = v53;
              }

              v52 = *(v45 + 16);
              if (v52 >= *(v45 + 24) >> 1)
              {
                sub_1ABAD9278();
                v45 = v54;
              }

              *(v45 + 16) = v52 + 1;
              *(v45 + 4 * v52 + 32) = v51;
              if (a5 == v48)
              {
                break;
              }

              v35 = __OFADD__(v48++, 1);
              if (v35)
              {
                __break(1u);
                goto LABEL_86;
              }
            }
          }

          else
          {
            if (v9 < 0)
            {
              goto LABEL_88;
            }

            if ((v60 & 0x100000000) != 0)
            {
              goto LABEL_89;
            }

            v42 = (v58 + 16 * v9);
            v43 = *v42;
            v44 = v42[1];

            v45 = sub_1ABAD73A0(0, v59, 1, v43, v44, a6);
          }

          v47 = *(v69 + 16);
          v46 = *(v69 + 24);
          if (v47 >= v46 >> 1)
          {
            sub_1ABADDE3C(v46 > 1, v47 + 1, 1);
          }

          *(v69 + 16) = v47 + 1;
          *(v69 + 8 * v47 + 32) = v45;
          v9 = v20;
          v20 = v66;
          v19 = a3;
        }
      }
    }

    if (a5 >= 1)
    {
      v30 = 1;
      v27 = MEMORY[0x1E69E7CC0];
      do
      {
        if (*(a6 + 16) && (v31 = sub_1ABA94FC8(0x3E6461703CLL, 0xE500000000000000, v11, v12, v13, v14, v15, v16, v55, v56, v57, v59, v60, v61, v63, v64, v65, v66), (v32 & 1) != 0))
        {
          v33 = *(*(a6 + 56) + 4 * v31);
        }

        else
        {
          v33 = 0;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1ABAD9278();
          v27 = v36;
        }

        v34 = *(v27 + 16);
        if (v34 >= *(v27 + 24) >> 1)
        {
          sub_1ABAD9278();
          v27 = v37;
        }

        *(v27 + 16) = v34 + 1;
        *(v27 + 4 * v34 + 32) = v33;
        if (a5 == v30)
        {
          goto LABEL_25;
        }

        v35 = __OFADD__(v30++, 1);
      }

      while (!v35);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
    }

    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1ABAD70C4(int64_t a1, int64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v12 = a1;
  v13 = sub_1ABAE2A40(a1, a2, a3);
  v40 = MEMORY[0x1E69E7CC0];
  sub_1ABADDE3C(0, v13 & ~(v13 >> 63), 0);
  if (v13 < 0)
  {
    goto LABEL_47;
  }

  v14 = v40;
  if (!v13)
  {
    v30 = 0;
    v36 = 0;
    v35 = 0;
    goto LABEL_24;
  }

  v30 = 0;
  v36 = 0;
  v35 = 0;
  while (1)
  {
    v15 = v12 <= a2;
    if (a3 > 0)
    {
      v15 = v12 >= a2;
    }

    if (!v15)
    {
      v17 = !__OFADD__(v12, a3);
      v35 = v17;
      v18 = 0x8000000000000000;
      if (!__OFADD__(v12, a3))
      {
        v18 = 0;
      }

      v36 = v18;
      v16 = v12;
      if (__OFADD__(v12, a3))
      {
        v12 = ((v12 + a3) >> 63) ^ 0x8000000000000000;
      }

      else
      {
        v12 += a3;
      }

      goto LABEL_18;
    }

    if (v30 & 1 | (v12 != a2))
    {
      break;
    }

    if (!v35 && v36 == 0x8000000000000000)
    {
      goto LABEL_46;
    }

    v30 = 1;
    v16 = a2;
    v12 = a2;
LABEL_18:
    v37 = v16;
    v38 = 0;
    sub_1ABAD79DC(&v37, a4, a5, a6, a7, &v39);
    if (v9)
    {
      goto LABEL_48;
    }

    v9 = 0;
    v19 = v39;
    v40 = v14;
    v21 = *(v14 + 16);
    v20 = *(v14 + 24);
    if (v21 >= v20 >> 1)
    {
      sub_1ABADDE3C(v20 > 1, v21 + 1, 1);
      v14 = v40;
    }

    *(v14 + 16) = v21 + 1;
    *(v14 + 8 * v21 + 32) = v19;
    if (!--v13)
    {
      while (1)
      {
LABEL_24:
        v22 = v12 <= a2;
        if (a3 > 0)
        {
          v22 = v12 >= a2;
        }

        if (v22)
        {
          if (v12 != a2 || (v30 & 1) != 0 || !v35 && v36 == 0x8000000000000000)
          {

            return v14;
          }

          v30 = 1;
          v23 = a2;
        }

        else
        {
          v24 = __OFADD__(v12, a3);
          if (v24)
          {
            v23 = (a3 >> 63) ^ 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v23 = v12 + a3;
          }

          v25 = 0x8000000000000000;
          if (!v24)
          {
            v25 = 0;
          }

          v36 = v25;
          v35 = !v24;
        }

        v37 = v12;
        sub_1ABAD79DC(&v37, a4, a5, a6, a7, &v39);
        if (v9)
        {
          goto LABEL_48;
        }

        v9 = 0;
        v26 = v39;
        v40 = v14;
        v28 = *(v14 + 16);
        v27 = *(v14 + 24);
        if (v28 >= v27 >> 1)
        {
          sub_1ABADDE3C(v27 > 1, v28 + 1, 1);
          v14 = v40;
        }

        *(v14 + 16) = v28 + 1;
        *(v14 + 8 * v28 + 32) = v26;
        v12 = v23;
      }
    }
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:

  __break(1u);
  return result;
}

int64_t sub_1ABAD73A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = a3;
  v10 = a2;
  v11 = a1;
  v12 = sub_1ABAE2A40(a1, a2, a3);
  v98 = MEMORY[0x1E69E7CC0];
  result = sub_1ABADDE7C(0, v12 & ~(v12 >> 63), 0);
  if (v12 < 0)
  {
    goto LABEL_79;
  }

  v88 = v6;
  v94 = v9;
  v95 = a4;
  v93 = v10;
  v89 = v9 >> 63;
  if (v12)
  {
    HIDWORD(v92) = 0;
    v97 = 0;
    HIDWORD(v96) = 0;
    v90 = (v9 >> 63) ^ 0x7FFFFFFFFFFFFFFFLL;
    v14 = v11;
    while (1)
    {
      v15 = v14 <= v10;
      if (v9 > 0)
      {
        v15 = v14 >= v10;
      }

      if (v15)
      {
        if (BYTE4(v92) & 1 | (v14 != v10))
        {
          goto LABEL_76;
        }

        if (!(BYTE4(v96) & 1 | (v97 != 0x8000000000000000)))
        {
          goto LABEL_78;
        }

        HIDWORD(v92) = 1;
        v11 = v10;
      }

      else
      {
        v16 = __OFADD__(v14, v9);
        if (v16)
        {
          v11 = v90;
        }

        else
        {
          v11 = v14 + v9;
        }

        v17 = 0x8000000000000000;
        if (!v16)
        {
          v17 = 0;
        }

        v97 = v17;
        HIDWORD(v96) = !v16;
      }

      result = sub_1ABF23D44();
      if (v14 >= result)
      {
        break;
      }

      v24 = sub_1ABF23D84();
      result = sub_1ABF23D84();
      if (result >> 14 < v24 >> 14)
      {
        goto LABEL_77;
      }

      v25 = sub_1ABF23EC4();
      v26 = MEMORY[0x1AC5A9330](v25);
      v28 = v27;

      if (!*(a6 + 16) || (sub_1ABA94FC8(v26, v28, v29, v30, v31, v32, v33, v34, v87, v88, v89, v90, v92, v93, v94, v95, v96, v97), (v41 & 1) == 0))
      {

        if (!*(a6 + 16))
        {
          goto LABEL_33;
        }

        v45 = 0x6E776F6E6B6E753CLL;
        v46 = 0xE90000000000003ELL;
        goto LABEL_30;
      }

      if (!*(a6 + 16) || (v42 = sub_1ABA94FC8(v26, v28, v35, v36, v37, v38, v39, v40, v87, v88, v89, v90, v92, v93, v94, v95, v96, v97), (v43 & 1) == 0))
      {

LABEL_33:
        v44 = -1;
        goto LABEL_34;
      }

      v44 = *(*(a6 + 56) + 4 * v42);

LABEL_34:
      v49 = *(v98 + 16);
      v48 = *(v98 + 24);
      if (v49 >= v48 >> 1)
      {
        result = sub_1ABADDE7C((v48 > 1), v49 + 1, 1);
      }

      *(v98 + 16) = v49 + 1;
      *(v98 + 4 * v49 + 32) = v44;
      v14 = v11;
      --v12;
      v9 = v94;
      v10 = v93;
      if (!v12)
      {
        goto LABEL_39;
      }
    }

    if (!*(a6 + 16))
    {
      goto LABEL_33;
    }

    v45 = 0x3E6461703CLL;
    v46 = 0xE500000000000000;
LABEL_30:
    result = sub_1ABA94FC8(v45, v46, v18, v19, v20, v21, v22, v23, v87, v88, v89, v90, v92, v93, v94, v95, v96, v97);
    if ((v47 & 1) == 0)
    {
      goto LABEL_33;
    }

    v44 = *(*(a6 + 56) + 4 * result);
    goto LABEL_34;
  }

  HIDWORD(v92) = 0;
  v97 = 0;
  HIDWORD(v96) = 0;
LABEL_39:
  v91 = v89 ^ 0x7FFFFFFFFFFFFFFFLL;
  while (1)
  {
    v50 = v11 <= v10;
    if (v9 > 0)
    {
      v50 = v11 >= v10;
    }

    if (v50)
    {
      if (v11 != v10 || (v92 & 0x100000000) != 0 || !(BYTE4(v96) & 1 | (v97 != 0x8000000000000000)))
      {

        return v98;
      }

      HIDWORD(v92) = 1;
      v51 = v10;
    }

    else
    {
      v52 = __OFADD__(v11, v9);
      if (v52)
      {
        v51 = v91;
      }

      else
      {
        v51 = v11 + v9;
      }

      v53 = 0x8000000000000000;
      if (!v52)
      {
        v53 = 0;
      }

      v97 = v53;
      HIDWORD(v96) = !v52;
    }

    if (v11 >= sub_1ABF23D44())
    {
      if (!*(a6 + 16))
      {
        goto LABEL_70;
      }

      v81 = 0x3E6461703CLL;
      v82 = 0xE500000000000000;
      goto LABEL_67;
    }

    v60 = sub_1ABF23D84();
    result = sub_1ABF23D84();
    if (result >> 14 < v60 >> 14)
    {
      break;
    }

    v61 = sub_1ABF23EC4();
    v62 = MEMORY[0x1AC5A9330](v61);
    v64 = v63;

    if (*(a6 + 16))
    {
      sub_1ABA94FC8(v62, v64, v65, v66, v67, v68, v69, v70, v87, v88, v89, v91, v92, v93, v94, v95, v96, v97);
      if (v77)
      {
        if (*(a6 + 16))
        {
          v78 = sub_1ABA94FC8(v62, v64, v71, v72, v73, v74, v75, v76, v87, v88, v89, v91, v92, v93, v94, v95, v96, v97);
          if (v79)
          {
            v80 = *(*(a6 + 56) + 4 * v78);

            goto LABEL_71;
          }
        }

        goto LABEL_70;
      }
    }

    if (*(a6 + 16))
    {
      v81 = 0x6E776F6E6B6E753CLL;
      v82 = 0xE90000000000003ELL;
LABEL_67:
      v83 = sub_1ABA94FC8(v81, v82, v54, v55, v56, v57, v58, v59, v87, v88, v89, v91, v92, v93, v94, v95, v96, v97);
      if (v84)
      {
        v80 = *(*(a6 + 56) + 4 * v83);
        goto LABEL_71;
      }
    }

LABEL_70:
    v80 = -1;
LABEL_71:
    v86 = *(v98 + 16);
    v85 = *(v98 + 24);
    if (v86 >= v85 >> 1)
    {
      sub_1ABADDE7C((v85 > 1), v86 + 1, 1);
    }

    *(v98 + 16) = v86 + 1;
    *(v98 + 4 * v86 + 32) = v80;
    v11 = v51;
    v9 = v94;
    v10 = v93;
  }

  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
  return result;
}

uint64_t sub_1ABAD78A8(uint64_t a1)
{
  v2 = sub_1ABAE28EC();
  v9 = sub_1ABA956B4(v2, MEMORY[0x1E69E6158], v3, v4, v5, v6, v7, v8, 12147);
  if ((v9 & 1) == 0 || (v9 = sub_1ABA956B4(v9, MEMORY[0x1E69E6158], v10, v11, v12, v13, v14, v15, 29487), (v9 & 1) == 0))
  {
    v16 = sub_1ABA956B4(v9, MEMORY[0x1E69E6158], v10, v11, v12, v13, v14, v15, 12147);
    if (v16)
    {
      v27 = a1;

      v23 = 95;
      v24 = 0xE100000000000000;
    }

    else
    {
      v27 = a1;
      if ((sub_1ABA956B4(v16, MEMORY[0x1E69E6158], v17, v18, v19, v20, v21, v22, 29487) & 1) == 0)
      {
        v25 = sub_1ABAB6564();
        MEMORY[0x1AC5A9410](v25);

        MEMORY[0x1AC5A9410](95, 0xE100000000000000);

        return v27;
      }

      v23 = sub_1ABAB6564();
    }

    MEMORY[0x1AC5A9410](v23, v24);
    return v27;
  }

  return a1;
}

void sub_1ABAD79DC(unint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v7 = *result;
  if ((*result & 0x8000000000000000) != 0)
  {
    goto LABEL_51;
  }

  if (v7 >= *(*a2 + 16))
  {
LABEL_52:
    __break(1u);
  }

  else
  {
    v8 = *a2 + 16 * v7;
    v9 = *(v8 + 32);
    v10 = *(v8 + 40);

    v11 = sub_1ABF23D44();
    v12 = v11 - 1;
    if (!__OFSUB__(v11, 1))
    {
      v46 = a6;
      v13 = MEMORY[0x1E69E7CC0];
      while ((v12 & 0x8000000000000000) == 0 && *(*a3 + 16) < a4)
      {
        if (*(v13 + 16) >= a5)
        {
LABEL_45:

LABEL_46:
          *v46 = v13;
          return;
        }

        v14 = sub_1ABF23D84();
        if (sub_1ABF23D84() >> 14 < v14 >> 14)
        {
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
          goto LABEL_52;
        }

        sub_1ABF23D54();
        v15 = sub_1ABF23EC4();
        v16 = MEMORY[0x1AC5A9330](v15);
        v18 = v17;

        v19 = sub_1ABAD5D30(v16, v18, 0xFFFFFFFFLL);

        if (v19 != -1)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1ABAD9278();
            v13 = v32;
          }

          v20 = *(v13 + 16);
          if (v20 >= *(v13 + 24) >> 1)
          {
            sub_1ABAD9278();
            v13 = v33;
          }

          *(v13 + 16) = v20 + 1;
          *(v13 + 4 * v20 + 32) = v19;
          if (__OFADD__(v12, 1))
          {
            goto LABEL_49;
          }

          if (v12 + 1 >= sub_1ABF23D44())
          {

            v9 = 0;
            v10 = 0xE000000000000000;
          }

          else
          {
            v21 = sub_1ABF23D84();
            v22 = v9 & 0xFFFFFFFFFFFFLL;
            if ((v10 & 0x2000000000000000) != 0)
            {
              v22 = HIBYTE(v10) & 0xF;
            }

            if (4 * v22 < v21 >> 14)
            {
              goto LABEL_50;
            }

            v23 = sub_1ABF23EC4();
            v25 = v24;
            v27 = v26;
            v29 = v28;

            v9 = MEMORY[0x1AC5A9330](v23, v25, v27, v29);
            v10 = v30;
          }

          v12 = sub_1ABF23D44();
        }

        if (__OFSUB__(v12--, 1))
        {
          goto LABEL_48;
        }
      }

      v34 = v9 & 0xFFFFFFFFFFFFLL;
      if ((v10 & 0x2000000000000000) != 0)
      {
        v34 = HIBYTE(v10) & 0xF;
      }

      if (v34)
      {
        while (1)
        {
          sub_1ABF23DE4();
          if (!v35)
          {
            break;
          }

          if (*(*a3 + 16) >= a4)
          {
            break;
          }

          if (*(v13 + 16) >= a5)
          {
            goto LABEL_45;
          }

          v36 = sub_1ABAD5D30(4935253, 0xE300000000000000, 0xFFFFFFFFLL);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1ABAD9278();
            v13 = v38;
          }

          v37 = *(v13 + 16);
          if (v37 >= *(v13 + 24) >> 1)
          {
            sub_1ABAD9278();
            v13 = v39;
          }

          *(v13 + 16) = v37 + 1;
          *(v13 + 4 * v37 + 32) = v36;
        }
      }

      v40 = *(v13 + 16);
      v41 = a5 - v40;
      if (a5 > v40)
      {
        if (a5 - v40 < 0)
        {
          goto LABEL_54;
        }

        do
        {
          v42 = sub_1ABAD5D30(0x3E6461703CLL, 0xE500000000000000, 0xFFFFFFFFLL);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1ABAD9278();
            v13 = v44;
          }

          v43 = *(v13 + 16);
          if (v43 >= *(v13 + 24) >> 1)
          {
            sub_1ABAD9278();
            v13 = v45;
          }

          *(v13 + 16) = v43 + 1;
          *(v13 + 4 * v43 + 32) = v42;
          --v41;
        }

        while (v41);
      }

      goto LABEL_46;
    }
  }

  __break(1u);
LABEL_54:
  __break(1u);
}

uint64_t sub_1ABAD7E64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 88) = a4;
  *(v6 + 96) = v5;
  *(v6 + 57) = a5;
  *(v6 + 72) = a2;
  *(v6 + 80) = a3;
  *(v6 + 64) = a1;
  *(v6 + 104) = sub_1ABAD219C(&qword_1EB4D1AD8, &qword_1ABF33C88);
  *(v6 + 112) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1ABAD7F10, 0, 0);
}

uint64_t sub_1ABAD7F10()
{
  v1 = *(v0 + 57);
  v3 = *(v0 + 88);
  v2 = *(v0 + 96);
  v5 = *(v0 + 72);
  v4 = *(v0 + 80);
  v6 = v2[5];
  v7 = v2[6];
  sub_1ABA93E20(v2 + 2, v6);
  *(v0 + 16) = v5;
  *(v0 + 24) = v4;
  *(v0 + 32) = 0xD000000000000019;
  *(v0 + 40) = 0x80000001ABF86560;
  *(v0 + 48) = v3;
  *(v0 + 56) = v1 & 1;
  v8 = *(v7 + 32);

  v12 = (v8 + *v8);
  v9 = swift_task_alloc();
  *(v0 + 120) = v9;
  *v9 = v0;
  v9[1] = sub_1ABAD80B0;
  v10 = *(v0 + 112);

  return v12(v10, v0 + 16, &type metadata for LocationEmbedderInferenceInterface, v6, v7);
}

uint64_t sub_1ABAD80B0()
{
  sub_1ABA7BC04();
  sub_1ABA7BC10();
  v3 = v2;
  v4 = *v1;
  sub_1ABA7BBC0();
  *v5 = v4;
  *(v3 + 128) = v0;

  sub_1ABA814B0();

  return MEMORY[0x1EEE6DFA0]();
}

uint64_t sub_1ABAD81D4()
{
  sub_1ABA7BC04();
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[8];
  sub_1ABAE2FE4(v1, v3);
  v4 = *(v1 + *(v2 + 28));
  sub_1ABAB480C(v1, &qword_1EB4D1AD8, &qword_1ABF33C88);
  *(v3 + *(sub_1ABAD219C(&qword_1EB4D1AA0, &unk_1ABF33C30) + 28)) = v4;

  sub_1ABA7BBE0();

  return v5();
}

uint64_t sub_1ABAD8288()
{
  sub_1ABA7BBF8();

  sub_1ABA7BBE0();

  return v0();
}

uint64_t sub_1ABAD82E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a4;
  v8[9] = v17;
  sub_1ABAD219C(&qword_1EB4D1AB0, &qword_1ABF33C40);
  v8[10] = swift_task_alloc();
  sub_1ABAD219C(&qword_1EB4D1AA0, &unk_1ABF33C30);
  v12 = swift_task_alloc();
  v8[11] = v12;
  v13 = swift_task_alloc();
  v8[12] = v13;
  *v13 = v8;
  v13[1] = sub_1ABAD8448;

  return sub_1ABAD7E64(v12, a6, a7, a8, v16 & 1);
}

uint64_t sub_1ABAD8448()
{
  sub_1ABA7BBF8();
  sub_1ABA7BC10();
  v2 = *v1;
  sub_1ABA7BBC0();
  *v3 = v2;
  *(v4 + 104) = v0;

  sub_1ABA814B0();

  return MEMORY[0x1EEE6DFA0]();
}

uint64_t sub_1ABAD8548()
{
  sub_1ABA7BC04();
  v1 = *(v0 + 80);
  v2 = *(v0 + 72);
  sub_1ABAE2F1C();
  v3 = sub_1ABAD219C(&qword_1EB4D1AB8, &qword_1ABF33C48);
  swift_storeEnumTagMultiPayload();
  sub_1ABA8C6E0();
  sub_1ABA7B9B4(v4, v5, v6, v3);
  v7 = *(*v2 + 96);
  swift_beginAccess();
  sub_1ABAE2F74(v1, v2 + v7);
  swift_endAccess();
  sub_1ABF24744();

  sub_1ABA7BBE0();

  return v8();
}

uint64_t sub_1ABAD8650()
{
  sub_1ABA7BC04();
  v2 = v0[9];
  v1 = v0[10];
  *v1 = v0[13];
  v3 = sub_1ABAD219C(&qword_1EB4D1AB8, &qword_1ABF33C48);
  swift_storeEnumTagMultiPayload();
  sub_1ABA8C6E0();
  sub_1ABA7B9B4(v4, v5, v6, v3);
  v7 = *(*v2 + 96);
  swift_beginAccess();
  sub_1ABAE2F74(v1, v2 + v7);
  swift_endAccess();
  sub_1ABF24744();

  sub_1ABA7BBE0();

  return v8();
}

void sub_1ABAD8758()
{
  sub_1ABAA4428();
  if (v3)
  {
    sub_1ABA93188();
    if (v4 != v5)
    {
      sub_1ABAA4834();
      if (v4)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  sub_1ABA8E5E4();
  if (v2)
  {
    v6 = sub_1ABAD219C(&qword_1EB4D10A0, &qword_1ABF33228);
    v7 = sub_1ABAA3F10(v6);
    sub_1ABA7CFD8(v7);
  }

  sub_1ABAA3730();
  if (v1)
  {
    sub_1ABAA2F60();
    if (v11)
    {
      v12 = v10 > v8;
    }

    else
    {
      v12 = 0;
    }

    if (!v12)
    {
      sub_1ABA972A4(v8, v9);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1ABAD8820()
{
  sub_1ABAA4428();
  if (v4)
  {
    sub_1ABA93188();
    if (v5 != v6)
    {
      sub_1ABAA4834();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  sub_1ABA946F8();
  if (v2)
  {
    v7 = sub_1ABAD219C(&qword_1EB4D10C8, &unk_1ABF33250);
    v8 = sub_1ABAA1B54(v7);
    sub_1ABA80590(v8);
    v8[2] = v3;
    v8[3] = v9;
  }

  v10 = sub_1ABA97400();
  if (v1)
  {
    sub_1ABA8857C();
    if (v15)
    {
      v16 = v14 > v12;
    }

    else
    {
      v16 = 0;
    }

    if (!v16)
    {
      memmove(v12, v13, 16 * v3);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    memcpy(v10, v11, 16 * v3);
  }
}

void sub_1ABAD88DC()
{
  sub_1ABAA4428();
  if (v4)
  {
    sub_1ABA93188();
    if (v5 != v6)
    {
      sub_1ABAA4834();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  sub_1ABA8E5E4();
  if (v3)
  {
    v7 = sub_1ABAD219C(&qword_1EB4D1A58, &qword_1ABF33BE8);
    v8 = sub_1ABAA3F10(v7);
    sub_1ABA7CFD8(v8);
  }

  sub_1ABAA3730();
  if (v1)
  {
    sub_1ABAA2F60();
    if (v12)
    {
      v13 = v11 > v9;
    }

    else
    {
      v13 = 0;
    }

    if (!v13)
    {
      memmove(v9, v10, 144 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1ABAD89DC()
{
  sub_1ABAA4428();
  if (v3)
  {
    sub_1ABA93188();
    if (v4 != v5)
    {
      sub_1ABAA4834();
      if (v4)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  sub_1ABA8E5E4();
  if (v2)
  {
    v6 = sub_1ABAD219C(&qword_1EB4D17C0, &qword_1ABF33950);
    v7 = sub_1ABAA3F10(v6);
    sub_1ABA7CFD8(v7);
  }

  sub_1ABAA3730();
  if (v1)
  {
    sub_1ABAA2F60();
    if (v11)
    {
      v12 = v10 > v8;
    }

    else
    {
      v12 = 0;
    }

    if (!v12)
    {
      sub_1ABA9FF84(v8, v9);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1ABAD8AA4()
{
  sub_1ABAA4428();
  if (v4)
  {
    sub_1ABA93188();
    if (v5 != v6)
    {
      sub_1ABAA4834();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  sub_1ABA8E5E4();
  if (v3)
  {
    sub_1ABAD219C(&qword_1EB4D1130, &qword_1ABF332B8);
    v7 = swift_allocObject();
    v8 = j__malloc_size(v7);
    sub_1ABAB5070(v8);
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v9 = sub_1ABAA3730();
  if (v1)
  {
    if (v7 != v0 || &v10[v2] <= v9)
    {
      memmove(v9, v10, v2);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v9, v10, v2);
  }
}

void sub_1ABAD8BA4()
{
  sub_1ABAA4428();
  if (v3)
  {
    sub_1ABA93188();
    if (v4 != v5)
    {
      sub_1ABAA4834();
      if (v4)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  sub_1ABA8E5E4();
  if (v2)
  {
    v6 = sub_1ABAD219C(&qword_1EB4D17D0, &qword_1ABF33960);
    v7 = sub_1ABAA3F10(v6);
    sub_1ABA7CFD8(v7);
  }

  sub_1ABAA3730();
  if (v1)
  {
    sub_1ABAA2F60();
    if (v11)
    {
      v12 = v10 > v8;
    }

    else
    {
      v12 = 0;
    }

    if (!v12)
    {
      sub_1ABA9FF84(v8, v9);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1ABAD8C6C()
{
  sub_1ABAA4428();
  if (v4)
  {
    sub_1ABA93188();
    if (v5 != v6)
    {
      sub_1ABAA4834();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  sub_1ABA8E5E4();
  if (v3)
  {
    v7 = sub_1ABAD219C(&qword_1EB4D1198, &qword_1ABF33320);
    v8 = sub_1ABAA3F10(v7);
    sub_1ABA7CFD8(v8);
  }

  sub_1ABAA3730();
  if (v1)
  {
    sub_1ABAA2F60();
    if (v12)
    {
      v13 = v11 > v9;
    }

    else
    {
      v13 = 0;
    }

    if (!v13)
    {
      memmove(v9, v10, 120 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1ABAD8D3C()
{
  sub_1ABAA4428();
  if (v4)
  {
    sub_1ABA93188();
    if (v5 != v6)
    {
      sub_1ABAA4834();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  sub_1ABA8E5E4();
  if (v3)
  {
    sub_1ABAD219C(&qword_1EB4D10D8, &unk_1ABF33260);
    v7 = sub_1ABAA21A8();
    sub_1ABA80590(v7);
    v7[2] = v2;
    v7[3] = v8;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v9 = sub_1ABAA3730();
  if (v1)
  {
    if (v7 != v0 || &v10[16 * v2] <= v9)
    {
      memmove(v9, v10, 16 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1ABAD8E08()
{
  sub_1ABAA4428();
  if (v4)
  {
    sub_1ABA93188();
    if (v5 != v6)
    {
      sub_1ABAA4834();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  sub_1ABA8E5E4();
  if (v2)
  {
    v7 = sub_1ABAD219C(&qword_1EB4D1A60, &unk_1ABF33BF0);
    v3 = 56;
    v8 = sub_1ABAA3F10(v7);
    sub_1ABA7CFD8(v8);
  }

  sub_1ABAB0FDC();
  if (v1)
  {
    sub_1ABA95FC8();
    if (v10)
    {
      v11 = v9 > v3;
    }

    else
    {
      v11 = 0;
    }

    if (!v11)
    {
      v12 = sub_1ABA826A8();
      memmove(v12, v13, v14);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    v15 = sub_1ABAD219C(&qword_1EB4D1A68, &unk_1ABF6BE10);
    sub_1ABA83EB4(v15);
  }
}

void sub_1ABAD8EE4()
{
  sub_1ABAA4428();
  if (v3)
  {
    sub_1ABA93188();
    if (v4 != v5)
    {
      sub_1ABAA4834();
      if (v4)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  sub_1ABA8E5E4();
  if (v2)
  {
    v6 = sub_1ABAD219C(&qword_1EB4D17A8, &qword_1ABF33938);
    v7 = sub_1ABAA3F10(v6);
    sub_1ABA7CFD8(v7);
  }

  sub_1ABAA3730();
  if (v1)
  {
    sub_1ABAA2F60();
    if (v10)
    {
      v11 = v9 > v8;
    }

    else
    {
      v11 = 0;
    }

    if (!v11)
    {
      sub_1ABAA0E48();
      memmove(v12, v13, v14);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1ABAD8FE8()
{
  sub_1ABA968E8();
  if (v3)
  {
    sub_1ABA93188();
    if (v4 != v5)
    {
      sub_1ABAA4834();
      if (v4)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  sub_1ABAA1E48();
  if (v4 ^ v5 | v13)
  {
    v14 = v2;
  }

  else
  {
    v14 = v12;
  }

  if (v14)
  {
    sub_1ABAB540C(v6, v7, v8, v9, v10, v11);
    v15 = swift_allocObject();
    sub_1ABA81494(v15);
    *(v14 + 16) = v2;
    *(v14 + 24) = 2 * (v16 / 40);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  v17 = sub_1ABAA3730();
  if (v1)
  {
    if (v14 != v0 || &v18[40 * v2] <= v17)
    {
      memmove(v17, v18, 40 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1ABAD90DC()
{
  sub_1ABA968E8();
  if (v3)
  {
    sub_1ABA93188();
    if (v4 != v5)
    {
      sub_1ABAA4834();
      if (v4)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  sub_1ABAA1E48();
  if (v4 ^ v5 | v13)
  {
    v14 = v2;
  }

  else
  {
    v14 = v12;
  }

  if (v14)
  {
    sub_1ABAB540C(v6, v7, v8, v9, v10, v11);
    v15 = swift_allocObject();
    sub_1ABA81494(v15);
    *(v14 + 16) = v2;
    *(v14 + 24) = 2 * (v16 / 112);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  v17 = sub_1ABAA3730();
  if (v1)
  {
    if (v14 != v0 || &v18[112 * v2] <= v17)
    {
      memmove(v17, v18, 112 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1ABAD91B4()
{
  sub_1ABAA4428();
  if (v4)
  {
    sub_1ABA93188();
    if (v5 != v6)
    {
      sub_1ABAA4834();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  sub_1ABA946F8();
  if (v2)
  {
    sub_1ABAD219C(&qword_1EB4D1150, &qword_1ABF332D8);
    v7 = sub_1ABAA21A8();
    j__malloc_size(v7);
    sub_1ABA83554();
    v7[2] = v3;
    v7[3] = v8;
  }

  v9 = sub_1ABA97400();
  if (v1)
  {
    sub_1ABAB2A9C();
    if (v14)
    {
      v15 = v13 > v11;
    }

    else
    {
      v15 = 0;
    }

    if (!v15)
    {
      memmove(v11, v12, 8 * v3);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    memcpy(v9, v10, 8 * v3);
  }
}

void sub_1ABAD9278()
{
  sub_1ABAA4428();
  if (v4)
  {
    sub_1ABA93188();
    if (v5 != v6)
    {
      sub_1ABAA4834();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  sub_1ABA946F8();
  if (v2)
  {
    sub_1ABAD219C(&qword_1EB4D1380, &qword_1ABF33508);
    v7 = sub_1ABAA21A8();
    sub_1ABAA3B60(v7);
    sub_1ABA8BE44(v8);
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v9 = sub_1ABA97400();
  if (v1)
  {
    if (v7 != v0 || &v10[4 * v3] <= v9)
    {
      memmove(v9, v10, 4 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v9, v10, 4 * v3);
  }
}

void sub_1ABAD9378()
{
  sub_1ABAA4428();
  if (v3)
  {
    sub_1ABA93188();
    if (v4 != v5)
    {
      sub_1ABAA4834();
      if (v4)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  sub_1ABA8E5E4();
  if (v2)
  {
    v6 = sub_1ABAD219C(&qword_1EB4D1848, &qword_1ABF339D8);
    v7 = sub_1ABAA3F10(v6);
    sub_1ABA7CFD8(v7);
  }

  sub_1ABAA3730();
  if (v1)
  {
    sub_1ABAA2F60();
    if (v11)
    {
      v12 = v10 > v8;
    }

    else
    {
      v12 = 0;
    }

    if (!v12)
    {
      sub_1ABA9FF84(v8, v9);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1ABAD9440()
{
  sub_1ABAA4428();
  if (v3)
  {
    sub_1ABA93188();
    if (v4 != v5)
    {
      sub_1ABAA4834();
      if (v4)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  sub_1ABA8E5E4();
  if (v2)
  {
    v6 = sub_1ABAD219C(&qword_1EB4D1228, &qword_1ABF333B0);
    v7 = sub_1ABAA3F10(v6);
    sub_1ABA7CFD8(v7);
  }

  sub_1ABAA3730();
  if (v1)
  {
    sub_1ABAA2F60();
    if (v11)
    {
      v12 = v10 > v8;
    }

    else
    {
      v12 = 0;
    }

    if (!v12)
    {
      sub_1ABA972A4(v8, v9);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1ABAD9508()
{
  sub_1ABAA4428();
  if (v4)
  {
    sub_1ABA93188();
    if (v5 != v6)
    {
      sub_1ABAA4834();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  sub_1ABA8E5E4();
  if (v3)
  {
    v7 = sub_1ABAD219C(&qword_1EB4D1840, &qword_1ABF339D0);
    v8 = sub_1ABAA3F10(v7);
    sub_1ABA7CFD8(v8);
  }

  sub_1ABAA3730();
  if (v1)
  {
    sub_1ABAA2F60();
    if (v12)
    {
      v13 = v11 > v9;
    }

    else
    {
      v13 = 0;
    }

    if (!v13)
    {
      memmove(v9, v10, 56 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1ABAD96B8()
{
  sub_1ABA9A268();
  if (v4)
  {
    sub_1ABA90578();
    if (v6 != v7)
    {
      sub_1ABA97710();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_1ABAA5EA4();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_1ABAABC34(v2, v5, &qword_1EB4D1108, &qword_1ABF33290);
  sub_1ABA89364();
  sub_1ABF21EB4();
  sub_1ABA826B4();
  sub_1ABA7AB74();
  if (v1)
  {
    sub_1ABAA218C(v8, MEMORY[0x1E6969530]);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_1ABAA5198();
  }
}

void sub_1ABAD9790()
{
  sub_1ABAA4428();
  if (v4)
  {
    sub_1ABA93188();
    if (v5 != v6)
    {
      sub_1ABAA4834();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  sub_1ABA8E5E4();
  if (v3)
  {
    sub_1ABAD219C(&qword_1EB4D17A0, &qword_1ABF33930);
    v7 = sub_1ABAA21A8();
    sub_1ABA81494(v7);
    sub_1ABA9922C(v8);
  }

  sub_1ABAA3730();
  if (v1)
  {
    sub_1ABAA0A10();
    if (v12)
    {
      v13 = v11 > v9;
    }

    else
    {
      v13 = 0;
    }

    if (!v13)
    {
      memmove(v9, v10, 32 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1ABAD9858()
{
  sub_1ABAA4428();
  if (v4)
  {
    sub_1ABA93188();
    if (v5 != v6)
    {
      sub_1ABAA4834();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  sub_1ABA8E5E4();
  if (v3)
  {
    v7 = sub_1ABAD219C(&qword_1EB4D10A8, &qword_1ABF33230);
    v8 = sub_1ABAA3F10(v7);
    sub_1ABA7CFD8(v8);
  }

  sub_1ABAA3730();
  if (v1)
  {
    sub_1ABAA2F60();
    if (v12)
    {
      v13 = v11 > v9;
    }

    else
    {
      v13 = 0;
    }

    if (!v13)
    {
      memmove(v9, v10, 136 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1ABAD9928()
{
  sub_1ABAA4428();
  if (v4)
  {
    sub_1ABA93188();
    if (v5 != v6)
    {
      sub_1ABAA4834();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  sub_1ABA8E5E4();
  if (v3)
  {
    v7 = sub_1ABAD219C(&qword_1EB4D1A50, &qword_1ABF33BE0);
    v8 = sub_1ABAA3F10(v7);
    sub_1ABA7CFD8(v8);
  }

  sub_1ABAA3730();
  if (v1)
  {
    sub_1ABAA2F60();
    if (v12)
    {
      v13 = v11 > v9;
    }

    else
    {
      v13 = 0;
    }

    if (!v13)
    {
      memmove(v9, v10, 56 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1ABAD99F8()
{
  sub_1ABAA4428();
  if (v3)
  {
    sub_1ABA93188();
    if (v4 != v5)
    {
      sub_1ABAA4834();
      if (v4)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  sub_1ABA8E5E4();
  if (v2)
  {
    v6 = sub_1ABAD219C(&qword_1EB4D19E8, &qword_1ABF33B78);
    v7 = sub_1ABAA3F10(v6);
    sub_1ABA7CFD8(v7);
  }

  sub_1ABAA3730();
  if (v1)
  {
    sub_1ABAA2F60();
    if (v10)
    {
      v11 = v9 > v8;
    }

    else
    {
      v11 = 0;
    }

    if (!v11)
    {
      sub_1ABAA0E48();
      memmove(v12, v13, v14);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1ABAD9AE8()
{
  sub_1ABA7E294();
  if (v7)
  {
    sub_1ABA93188();
    if (v9 != v10)
    {
      sub_1ABAA4834();
      if (v9)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  else
  {
    v8 = v4;
  }

  v11 = *(v0 + 16);
  sub_1ABADD158(v11, v8, v5, v6);
  v13 = v12;
  v14 = sub_1ABA7ECFC();
  sub_1ABAD219C(v14, v15);
  sub_1ABA826B4();
  sub_1ABA7AB74();
  if (v3)
  {
    sub_1ABADD54C(v0 + v16, v11, v13 + v16, v2, v1);
    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1ABAD9BE8()
{
  sub_1ABAA4428();
  if (v4)
  {
    sub_1ABA93188();
    if (v5 != v6)
    {
      sub_1ABAA4834();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  sub_1ABA8E5E4();
  if (v3)
  {
    v7 = sub_1ABAD219C(&qword_1EB4D1978, &qword_1ABF33B08);
    v8 = sub_1ABAA3F10(v7);
    sub_1ABA7CFD8(v8);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  v9 = sub_1ABAA3730();
  if (v1)
  {
    if (v3 != v0 || &v10[328 * v2] <= v9)
    {
      memmove(v9, v10, 328 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1ABAD9CB8()
{
  sub_1ABA9A268();
  if (v4)
  {
    sub_1ABA90578();
    if (v6 != v7)
    {
      sub_1ABA97710();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_1ABAA5EA4();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_1ABAABC34(v2, v5, &qword_1EB4D1A28, &qword_1ABF33BB8);
  v8 = sub_1ABA89364();
  type metadata accessor for ViewService.DefaultResolverInteractionsView.Interaction(v8);
  sub_1ABA826B4();
  sub_1ABA7AB74();
  if (v1)
  {
    sub_1ABAA218C(v9, type metadata accessor for ViewService.DefaultResolverInteractionsView.Interaction);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_1ABAA5198();
  }
}

void sub_1ABAD9D90()
{
  sub_1ABA9A268();
  if (v4)
  {
    sub_1ABA90578();
    if (v6 != v7)
    {
      sub_1ABA97710();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_1ABAA5EA4();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_1ABAABC34(v2, v5, &qword_1EB4D1A20, &qword_1ABF33BB0);
  v8 = sub_1ABA89364();
  type metadata accessor for ViewService.DefaultResolverInteractionsView.Event(v8);
  sub_1ABA826B4();
  sub_1ABA7AB74();
  if (v1)
  {
    sub_1ABAA218C(v9, type metadata accessor for ViewService.DefaultResolverInteractionsView.Event);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_1ABAA5198();
  }
}

void sub_1ABAD9E68()
{
  sub_1ABAA4428();
  if (v4)
  {
    sub_1ABA93188();
    if (v5 != v6)
    {
      sub_1ABAA4834();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  sub_1ABA8E5E4();
  if (v2)
  {
    v7 = sub_1ABAD219C(&qword_1EB4D1140, &qword_1ABF332C8);
    v3 = 104;
    v8 = sub_1ABAA3F10(v7);
    sub_1ABA7CFD8(v8);
  }

  sub_1ABAB0FDC();
  if (v1)
  {
    sub_1ABA8CA68();
    if (v10)
    {
      v11 = v9 > v3;
    }

    else
    {
      v11 = 0;
    }

    if (!v11)
    {
      v12 = sub_1ABA826A8();
      memmove(v12, v13, v14);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    v15 = sub_1ABAD219C(&qword_1EB4D1148, &qword_1ABF332D0);
    sub_1ABA83EB4(v15);
  }
}

void sub_1ABAD9F38()
{
  sub_1ABAA4428();
  if (v6)
  {
    sub_1ABA93188();
    if (v7 != v8)
    {
      sub_1ABAA4834();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  sub_1ABA8E5E4();
  if (v3)
  {
    sub_1ABAD219C(&qword_1EB4D1A10, &qword_1ABF33BA0);
    v9 = sub_1ABAA21A8();
    sub_1ABA81494(v9);
    sub_1ABA9922C(v10);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  sub_1ABAB0FDC();
  if (v1)
  {
    if (v3 != v0 || v5 + 32 * v2 <= v4)
    {
      v12 = sub_1ABA826A8();
      memmove(v12, v13, v14);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    v15 = sub_1ABAD219C(&qword_1EB4D1A18, &qword_1ABF33BA8);
    sub_1ABA83EB4(v15);
  }
}

void sub_1ABADA018()
{
  sub_1ABAA4428();
  if (v4)
  {
    sub_1ABA93188();
    if (v5 != v6)
    {
      sub_1ABAA4834();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  sub_1ABA8E5E4();
  if (v2)
  {
    v7 = sub_1ABAD219C(&qword_1EB4D1A00, &qword_1ABF33B90);
    v3 = 24;
    v8 = sub_1ABAA3F10(v7);
    sub_1ABA7CFD8(v8);
  }

  sub_1ABAB0FDC();
  if (v1)
  {
    sub_1ABA95FC8();
    if (v10)
    {
      v11 = v9 > v3;
    }

    else
    {
      v11 = 0;
    }

    if (!v11)
    {
      v12 = sub_1ABA826A8();
      memmove(v12, v13, v14);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    v15 = sub_1ABAD219C(&qword_1EB4D1A08, &qword_1ABF33B98);
    sub_1ABA83EB4(v15);
  }
}

void sub_1ABADA0F4()
{
  sub_1ABAA4428();
  if (v4)
  {
    sub_1ABA93188();
    if (v5 != v6)
    {
      sub_1ABAA4834();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  sub_1ABA8E5E4();
  if (v2)
  {
    v7 = sub_1ABAD219C(&qword_1EB4D19C8, &qword_1ABF33B58);
    v3 = 40;
    v8 = sub_1ABAA3F10(v7);
    sub_1ABA7CFD8(v8);
  }

  sub_1ABAB0FDC();
  if (v1)
  {
    sub_1ABA95FC8();
    if (v10)
    {
      v11 = v9 > v3;
    }

    else
    {
      v11 = 0;
    }

    if (!v11)
    {
      sub_1ABAA0E48();
      v12 = sub_1ABA826A8();
      memmove(v12, v13, v14);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    v15 = sub_1ABAD219C(&qword_1EB4D19D0, &qword_1ABF33B60);
    sub_1ABA83EB4(v15);
  }
}

void sub_1ABADA1CC()
{
  sub_1ABAA4428();
  if (v4)
  {
    sub_1ABA93188();
    if (v5 != v6)
    {
      sub_1ABAA4834();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  sub_1ABA946F8();
  if (v2)
  {
    sub_1ABAD219C(&qword_1EB4D1378, &qword_1ABF33500);
    v7 = sub_1ABAA21A8();
    j__malloc_size(v7);
    sub_1ABA83554();
    v7[2] = v3;
    v7[3] = v8;
  }

  v9 = sub_1ABA97400();
  if (v1)
  {
    sub_1ABAB2A9C();
    if (v14)
    {
      v15 = v13 > v11;
    }

    else
    {
      v15 = 0;
    }

    if (!v15)
    {
      memmove(v11, v12, 8 * v3);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    memcpy(v9, v10, 8 * v3);
  }
}

void sub_1ABADA2B4()
{
  sub_1ABAA4428();
  if (v4)
  {
    sub_1ABA93188();
    if (v5 != v6)
    {
      sub_1ABAA4834();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  sub_1ABA946F8();
  if (v2)
  {
    sub_1ABAD219C(&qword_1EB4D1360, &unk_1ABF41170);
    v7 = sub_1ABAA21A8();
    sub_1ABAA3B60(v7);
    sub_1ABA8BE44(v8);
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v9 = sub_1ABA97400();
  if (v1)
  {
    if (v7 != v0 || &v10[4 * v3] <= v9)
    {
      memmove(v9, v10, 4 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v9, v10, 4 * v3);
  }
}

void sub_1ABADA37C()
{
  sub_1ABAA4428();
  if (v4)
  {
    sub_1ABA93188();
    if (v5 != v6)
    {
      sub_1ABAA4834();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  sub_1ABA8E5E4();
  if (v3)
  {
    v7 = sub_1ABAD219C(&qword_1EB4D1958, &qword_1ABF33AE8);
    v8 = sub_1ABAA3F10(v7);
    sub_1ABA7CFD8(v8);
  }

  sub_1ABAA3730();
  if (v1)
  {
    sub_1ABAA2F60();
    if (v12)
    {
      v13 = v11 > v9;
    }

    else
    {
      v13 = 0;
    }

    if (!v13)
    {
      memmove(v9, v10, 1160 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1ABADA44C()
{
  sub_1ABAA4428();
  if (v3)
  {
    sub_1ABA93188();
    if (v4 != v5)
    {
      sub_1ABAA4834();
      if (v4)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  sub_1ABA8E5E4();
  if (v2)
  {
    v6 = sub_1ABAD219C(&qword_1EB4D1960, &qword_1ABF33AF0);
    v7 = sub_1ABAA3F10(v6);
    sub_1ABA7CFD8(v7);
  }

  sub_1ABAA3730();
  if (v1)
  {
    sub_1ABAA2F60();
    if (v11)
    {
      v12 = v10 > v8;
    }

    else
    {
      v12 = 0;
    }

    if (!v12)
    {
      sub_1ABA972A4(v8, v9);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1ABADA538()
{
  sub_1ABAA4428();
  if (v4)
  {
    sub_1ABA93188();
    if (v5 != v6)
    {
      sub_1ABAA4834();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  sub_1ABA946F8();
  if (v2)
  {
    v7 = sub_1ABAD219C(&qword_1EB4D1950, &qword_1ABF33AE0);
    v8 = sub_1ABAA1B54(v7);
    sub_1ABA80590(v8);
    v8[2] = v3;
    v8[3] = v9;
  }

  v10 = sub_1ABA97400();
  if (v1)
  {
    sub_1ABA8857C();
    if (v15)
    {
      v16 = v14 > v12;
    }

    else
    {
      v16 = 0;
    }

    if (!v16)
    {
      memmove(v12, v13, 16 * v3);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    memcpy(v10, v11, 16 * v3);
  }
}

void sub_1ABADA5F4()
{
  sub_1ABAA4428();
  if (v4)
  {
    sub_1ABA93188();
    if (v5 != v6)
    {
      sub_1ABAA4834();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  sub_1ABA946F8();
  if (v2)
  {
    v7 = sub_1ABAD219C(&qword_1EB4D1940, &qword_1ABF33AD0);
    v8 = sub_1ABAB5604(v7);
    sub_1ABA7ECDC(v8);
    v8[2] = v3;
    v8[3] = v9;
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  v10 = sub_1ABA97400();
  if (v1)
  {
    if (v8 != v0 || &v11[80 * v3] <= v10)
    {
      memmove(v10, v11, 80 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1ABADA6CC()
{
  sub_1ABAA4428();
  if (v4)
  {
    sub_1ABA93188();
    if (v5 != v6)
    {
      sub_1ABAA4834();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  sub_1ABA8E5E4();
  if (v3)
  {
    v7 = sub_1ABAD219C(&qword_1EB4D1780, &qword_1ABF33910);
    v8 = sub_1ABAA3F10(v7);
    sub_1ABA7CFD8(v8);
  }

  sub_1ABAA3730();
  if (v1)
  {
    sub_1ABAA2F60();
    if (v12)
    {
      v13 = v11 > v9;
    }

    else
    {
      v13 = 0;
    }

    if (!v13)
    {
      memmove(v9, v10, 104 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1ABADA79C()
{
  sub_1ABAA4428();
  if (v4)
  {
    sub_1ABA93188();
    if (v5 != v6)
    {
      sub_1ABAA4834();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  sub_1ABA8E5E4();
  if (v3)
  {
    v7 = sub_1ABAD219C(&qword_1EB4D1788, &qword_1ABF33918);
    v8 = sub_1ABAA3F10(v7);
    sub_1ABA7CFD8(v8);
  }

  sub_1ABAA3730();
  if (v1)
  {
    sub_1ABAA2F60();
    if (v12)
    {
      v13 = v11 > v9;
    }

    else
    {
      v13 = 0;
    }

    if (!v13)
    {
      memmove(v9, v10, 48 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1ABADA86C()
{
  sub_1ABAA4428();
  if (v4)
  {
    sub_1ABA93188();
    if (v5 != v6)
    {
      sub_1ABAA4834();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  sub_1ABA8E5E4();
  if (v3)
  {
    v7 = sub_1ABAD219C(&qword_1EB4D1990, &qword_1ABF33B20);
    v8 = sub_1ABAA3F10(v7);
    sub_1ABA7CFD8(v8);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  v9 = sub_1ABAA3730();
  if (v1)
  {
    if (v3 != v0 || &v10[184 * v2] <= v9)
    {
      memmove(v9, v10, 184 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1ABADA93C()
{
  sub_1ABAA4428();
  if (v4)
  {
    sub_1ABA93188();
    if (v5 != v6)
    {
      sub_1ABAA4834();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  sub_1ABA946F8();
  if (v2)
  {
    v7 = sub_1ABAD219C(&qword_1EB4D1938, &qword_1ABF33AC8);
    v8 = sub_1ABAB5604(v7);
    sub_1ABA7ECDC(v8);
    v8[2] = v3;
    v8[3] = v9;
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  v10 = sub_1ABA97400();
  if (v1)
  {
    if (v8 != v0 || &v11[24 * v3] <= v10)
    {
      memmove(v10, v11, 24 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v10, v11, 24 * v3);
  }
}

void sub_1ABADAA14()
{
  sub_1ABAA4428();
  if (v4)
  {
    sub_1ABA93188();
    if (v5 != v6)
    {
      sub_1ABAA4834();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  sub_1ABA946F8();
  if (v2)
  {
    sub_1ABAD219C(&qword_1EB4D1930, &qword_1ABF33AC0);
    v7 = sub_1ABAA21A8();
    j__malloc_size(v7);
    sub_1ABA8FDCC();
    v7[2] = v3;
    v7[3] = v8;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v9 = sub_1ABA97400();
  if (v1)
  {
    if (v7 != v0 || &v10[32 * v3] <= v9)
    {
      memmove(v9, v10, 32 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v9, v10, 32 * v3);
  }
}

void sub_1ABADAB00()
{
  sub_1ABAA00E4();
  sub_1ABA7E294();
  if (v5)
  {
    sub_1ABA93188();
    if (v6 != v7)
    {
      sub_1ABAA4834();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  sub_1ABAA5668();
  if (v3)
  {
    sub_1ABAB540C(v8, v9, v10, v11, v12, v13);
    v14 = sub_1ABAA21A8();
    sub_1ABA80590(v14);
    v14[2] = v2;
    v14[3] = v15;
  }

  sub_1ABA82D94();
  if (v1)
  {
    sub_1ABA96F3C();
    if (v17)
    {
      v18 = v16 > v4;
    }

    else
    {
      v18 = 0;
    }

    if (!v18)
    {
      v19 = sub_1ABA894A0();
      memmove(v19, v20, v21);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    v22 = sub_1ABA7ECFC();
    sub_1ABAD219C(v22, v23);
    sub_1ABA8E070();
    swift_arrayInitWithCopy();
  }

  sub_1ABA82A00();
}

void sub_1ABADAC00()
{
  sub_1ABAA4428();
  if (v4)
  {
    sub_1ABA93188();
    if (v5 != v6)
    {
      sub_1ABAA4834();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  sub_1ABA8E5E4();
  if (v2)
  {
    v7 = sub_1ABAD219C(&qword_1EB4D18E8, &qword_1ABF33A78);
    v3 = 120;
    v8 = sub_1ABAA3F10(v7);
    sub_1ABA7CFD8(v8);
  }

  sub_1ABAB0FDC();
  if (v1)
  {
    sub_1ABA95FC8();
    if (v10)
    {
      v11 = v9 > v3;
    }

    else
    {
      v11 = 0;
    }

    if (!v11)
    {
      v12 = sub_1ABA826A8();
      memmove(v12, v13, v14);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    v15 = sub_1ABAD219C(&qword_1EB4D18F0, &qword_1ABF33A80);
    sub_1ABA83EB4(v15);
  }
}

void sub_1ABADAD14()
{
  sub_1ABA9A268();
  if (v4)
  {
    sub_1ABA90578();
    if (v6 != v7)
    {
      sub_1ABA97710();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_1ABAA5EA4();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_1ABAABC34(v2, v5, &qword_1EB4D1230, &qword_1ABF333B8);
  v8 = sub_1ABA89364();
  type metadata accessor for CustomGraphDateRelationship(v8);
  sub_1ABA826B4();
  sub_1ABA7AB74();
  if (v1)
  {
    sub_1ABAA218C(v9, type metadata accessor for CustomGraphDateRelationship);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_1ABAA5198();
  }
}

void sub_1ABADAE94()
{
  sub_1ABAA4428();
  if (v3)
  {
    sub_1ABA93188();
    if (v4 != v5)
    {
      sub_1ABAA4834();
      if (v4)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  sub_1ABA8E5E4();
  if (v2)
  {
    v6 = sub_1ABAD219C(&qword_1EB4D1808, &qword_1ABF33998);
    v7 = sub_1ABAA3F10(v6);
    sub_1ABA7CFD8(v7);
  }

  sub_1ABAA3730();
  if (v1)
  {
    sub_1ABAA2F60();
    if (v10)
    {
      v11 = v9 > v8;
    }

    else
    {
      v11 = 0;
    }

    if (!v11)
    {
      sub_1ABAA0E48();
      memmove(v12, v13, v14);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1ABADAF60()
{
  sub_1ABAA4428();
  if (v4)
  {
    sub_1ABA93188();
    if (v5 != v6)
    {
      sub_1ABAA4834();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  sub_1ABA8E5E4();
  if (v3)
  {
    v7 = sub_1ABAD219C(&qword_1EB4D1870, &qword_1ABF33A00);
    v8 = sub_1ABAA3F10(v7);
    sub_1ABA7CFD8(v8);
  }

  sub_1ABAA3730();
  if (v1)
  {
    sub_1ABAA2F60();
    if (v12)
    {
      v13 = v11 > v9;
    }

    else
    {
      v13 = 0;
    }

    if (!v13)
    {
      memmove(v9, v10, 232 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1ABADB04C()
{
  sub_1ABA968E8();
  if (v4)
  {
    sub_1ABA93188();
    if (v5 != v6)
    {
      sub_1ABAA4834();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  sub_1ABA7FBEC();
  if (v3)
  {
    sub_1ABAB540C(v7, v8, v9, v10, v11, v12);
    v13 = swift_allocObject();
    sub_1ABAA3B60(v13);
    sub_1ABAB6868(v14);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  v15 = v13 + 32;
  v16 = v0 + 32;
  if (v1)
  {
    if (v13 != v0 || &v16[64 * v2] <= v15)
    {
      memmove(v15, v16, v2 << 6);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1ABADB13C()
{
  sub_1ABAA00E4();
  sub_1ABA7E294();
  if (v6)
  {
    sub_1ABA93188();
    if (v7 != v8)
    {
      sub_1ABAA4834();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  sub_1ABAA5668();
  if (v3)
  {
    sub_1ABAB540C(v9, v10, v11, v12, v13, v14);
    v15 = swift_allocObject();
    sub_1ABAA3B60(v15);
    sub_1ABA96BB8(v16 / 64);
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
  }

  sub_1ABA82D94();
  if (v1)
  {
    if (v15 != v0 || v5 + (v2 << 6) <= v4)
    {
      v18 = sub_1ABA894A0();
      memmove(v18, v19, v20);
    }

    v0[2] = 0;
  }

  else
  {
    v21 = sub_1ABA7ECFC();
    sub_1ABAD219C(v21, v22);
    sub_1ABA8E070();
    swift_arrayInitWithCopy();
  }

  sub_1ABA82A00();
}

void sub_1ABADB250()
{
  sub_1ABAA00E4();
  sub_1ABA7E294();
  if (v4)
  {
    sub_1ABA93188();
    if (v9 != v10)
    {
      sub_1ABAA4834();
      if (v9)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  else
  {
    v8 = v3;
  }

  v11 = v0[2];
  if (v8 <= v11)
  {
    v12 = v0[2];
  }

  else
  {
    v12 = v8;
  }

  if (v12)
  {
    sub_1ABAB540C(v2, v3, v4, v5, v6, v7);
    v13 = swift_allocObject();
    sub_1ABAA3B60(v13);
    v13[2] = v11;
    v13[3] = 2 * (v14 / 40);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  if (v1)
  {
    if (v13 != v0 || &v0[5 * v11 + 4] <= v13 + 4)
    {
      v16 = sub_1ABA894A0();
      memmove(v16, v17, v18);
    }

    v0[2] = 0;
  }

  else
  {
    v19 = sub_1ABA7ECFC();
    sub_1ABAD219C(v19, v20);
    sub_1ABA8E070();
    swift_arrayInitWithCopy();
  }

  sub_1ABA82A00();
}

void sub_1ABADB37C()
{
  sub_1ABAA4428();
  if (v4)
  {
    sub_1ABA93188();
    if (v5 != v6)
    {
      sub_1ABAA4834();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  sub_1ABA946F8();
  if (v2)
  {
    sub_1ABAB540C(v7, v8, v9, v10, v11, v12);
    v13 = sub_1ABAA21A8();
    j__malloc_size(v13);
    sub_1ABA83554();
    v13[2] = v3;
    v13[3] = v14;
  }

  v15 = sub_1ABA97400();
  if (v1)
  {
    sub_1ABAB2A9C();
    if (v20)
    {
      v21 = v19 > v17;
    }

    else
    {
      v21 = 0;
    }

    if (!v21)
    {
      memmove(v17, v18, 8 * v3);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v3);
  }
}

void sub_1ABADB430()
{
  sub_1ABAA4428();
  if (v4)
  {
    sub_1ABA93188();
    if (v5 != v6)
    {
      sub_1ABAA4834();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  sub_1ABA8E5E4();
  if (v3)
  {
    sub_1ABAD219C(&qword_1EB4D1778, &qword_1ABF33908);
    v7 = sub_1ABAA21A8();
    j__malloc_size(v7);
    sub_1ABA83554();
    v7[2] = v2;
    v7[3] = v8;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v9 = sub_1ABAA3730();
  if (v1)
  {
    if (v7 != v0 || &v10[8 * v2] <= v9)
    {
      memmove(v9, v10, 8 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1ABADB500()
{
  sub_1ABA9A268();
  if (v4)
  {
    sub_1ABA90578();
    if (v6 != v7)
    {
      sub_1ABA97710();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_1ABAA5EA4();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_1ABAABC34(v2, v5, &qword_1EB4D1110, &qword_1ABF33298);
  v8 = sub_1ABA89364();
  type metadata accessor for K2TTextualization(v8);
  sub_1ABA826B4();
  sub_1ABA7AB74();
  if (v1)
  {
    sub_1ABAA218C(v9, type metadata accessor for K2TTextualization);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_1ABAA5198();
  }
}

void sub_1ABADB5D8()
{
  sub_1ABAA4428();
  if (v4)
  {
    sub_1ABA93188();
    if (v5 != v6)
    {
      sub_1ABAA4834();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  sub_1ABA8E5E4();
  if (v3)
  {
    sub_1ABAD219C(&qword_1EB4D1318, &unk_1ABF334A0);
    v7 = sub_1ABAA21A8();
    j__malloc_size(v7);
    sub_1ABA83554();
    v7[2] = v2;
    v7[3] = v8;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v9 = sub_1ABAA3730();
  if (v1)
  {
    if (v7 != v0 || &v10[8 * v2] <= v9)
    {
      memmove(v9, v10, 8 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1ABADB6BC()
{
  sub_1ABAA4428();
  if (v4)
  {
    sub_1ABA93188();
    if (v5 != v6)
    {
      sub_1ABAA4834();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  sub_1ABA946F8();
  if (v2)
  {
    sub_1ABAD219C(&qword_1EB4D1320, qword_1ABF5EC20);
    v7 = sub_1ABAA21A8();
    sub_1ABAA3B60(v7);
    sub_1ABA8BE44(v8);
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v9 = sub_1ABA97400();
  if (v1)
  {
    if (v7 != v0 || &v10[2 * v3] <= v9)
    {
      memmove(v9, v10, 2 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v9, v10, 2 * v3);
  }
}

void sub_1ABADB784()
{
  sub_1ABAA4428();
  if (v4)
  {
    sub_1ABA93188();
    if (v5 != v6)
    {
      sub_1ABAA4834();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  sub_1ABA8E5E4();
  if (v2)
  {
    v7 = sub_1ABAD219C(&qword_1EB4D1328, &unk_1ABF334B0);
    v3 = 24;
    v8 = sub_1ABAA3F10(v7);
    sub_1ABA7CFD8(v8);
  }

  sub_1ABAB0FDC();
  if (v1)
  {
    sub_1ABA95FC8();
    if (v10)
    {
      v11 = v9 > v3;
    }

    else
    {
      v11 = 0;
    }

    if (!v11)
    {
      v12 = sub_1ABA826A8();
      memmove(v12, v13, v14);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    v15 = sub_1ABAD219C(&qword_1EB4D1330, &unk_1ABF69190);
    sub_1ABA83EB4(v15);
  }
}

void sub_1ABADB87C()
{
  sub_1ABAA4428();
  if (v4)
  {
    sub_1ABA93188();
    if (v5 != v6)
    {
      sub_1ABAA4834();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  sub_1ABA8E5E4();
  if (v3)
  {
    sub_1ABAD219C(&qword_1EB4D1768, &qword_1ABF338F8);
    v7 = sub_1ABAA21A8();
    sub_1ABA81494(v7);
    sub_1ABA9922C(v8);
  }

  sub_1ABAA3730();
  if (v1)
  {
    sub_1ABAA0A10();
    if (v12)
    {
      v13 = v11 > v9;
    }

    else
    {
      v13 = 0;
    }

    if (!v13)
    {
      memmove(v9, v10, 32 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1ABADB944()
{
  sub_1ABAA4428();
  if (v4)
  {
    sub_1ABA93188();
    if (v5 != v6)
    {
      sub_1ABAA4834();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  sub_1ABA8E5E4();
  if (v3)
  {
    sub_1ABAD219C(&qword_1EB4D17C8, &qword_1ABF33958);
    v7 = sub_1ABAA21A8();
    sub_1ABA81494(v7);
    sub_1ABA9922C(v8);
  }

  sub_1ABAA3730();
  if (v1)
  {
    sub_1ABAA0A10();
    if (v12)
    {
      v13 = v11 > v9;
    }

    else
    {
      v13 = 0;
    }

    if (!v13)
    {
      memmove(v9, v10, 32 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1ABADBA0C()
{
  sub_1ABAA4428();
  if (v6)
  {
    sub_1ABA93188();
    if (v7 != v8)
    {
      sub_1ABAA4834();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  sub_1ABA8E5E4();
  if (v3)
  {
    sub_1ABAD219C(&unk_1EB4D17B0, &qword_1ABF33940);
    v9 = swift_allocObject();
    sub_1ABA81494(v9);
    sub_1ABA9922C(v10);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  sub_1ABAB0FDC();
  if (v1)
  {
    if (v3 != v0 || v5 + (v2 << 6) <= v4)
    {
      v12 = sub_1ABA826A8();
      memmove(v12, v13, v14);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    v15 = sub_1ABAD219C(&unk_1EB4D2E40, &qword_1ABF33948);
    sub_1ABA83EB4(v15);
  }
}

void sub_1ABADBB08()
{
  sub_1ABA9A268();
  if (v4)
  {
    sub_1ABA90578();
    if (v6 != v7)
    {
      sub_1ABA97710();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_1ABAA5EA4();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_1ABAABC34(v2, v5, &qword_1EB4D1758, &qword_1ABF338E8);
  v8 = sub_1ABA89364();
  type metadata accessor for CustomGraphPerson(v8);
  sub_1ABA826B4();
  sub_1ABA7AB74();
  if (v1)
  {
    sub_1ABAA218C(v9, type metadata accessor for CustomGraphPerson);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_1ABAA5198();
  }
}

void sub_1ABADBBE0()
{
  sub_1ABAA4428();
  if (v4)
  {
    sub_1ABA93188();
    if (v5 != v6)
    {
      sub_1ABAA4834();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  sub_1ABA8E5E4();
  if (v3)
  {
    v7 = sub_1ABAD219C(&qword_1EB4D1750, &qword_1ABF338E0);
    v8 = sub_1ABAA3F10(v7);
    sub_1ABA7CFD8(v8);
  }

  sub_1ABAA3730();
  if (v1)
  {
    sub_1ABAA2F60();
    if (v12)
    {
      v13 = v11 > v9;
    }

    else
    {
      v13 = 0;
    }

    if (!v13)
    {
      memmove(v9, v10, 400 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1ABADBCB0()
{
  sub_1ABA9A268();
  if (v4)
  {
    sub_1ABA90578();
    if (v6 != v7)
    {
      sub_1ABA97710();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_1ABAA5EA4();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_1ABAABC34(v2, v5, &qword_1EB4D1480, &qword_1ABF33608);
  v8 = sub_1ABA89364();
  type metadata accessor for CustomGraphActivityEvent(v8);
  sub_1ABA826B4();
  sub_1ABA7AB74();
  if (v1)
  {
    sub_1ABAA218C(v9, type metadata accessor for CustomGraphActivityEvent);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_1ABAA5198();
  }
}

void sub_1ABADBD88()
{
  sub_1ABA9A268();
  if (v4)
  {
    sub_1ABA90578();
    if (v6 != v7)
    {
      sub_1ABA97710();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_1ABAA5EA4();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_1ABAABC34(v2, v5, &qword_1EB4D1760, &qword_1ABF338F0);
  v8 = sub_1ABA89364();
  type metadata accessor for CustomGraphBehaviorActivityEvent(v8);
  sub_1ABA826B4();
  sub_1ABA7AB74();
  if (v1)
  {
    sub_1ABAA218C(v9, type metadata accessor for CustomGraphBehaviorActivityEvent);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_1ABAA5198();
  }
}

void sub_1ABADC01C()
{
  sub_1ABAA4428();
  if (v4)
  {
    sub_1ABA93188();
    if (v5 != v6)
    {
      sub_1ABAA4834();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  sub_1ABA946F8();
  if (v2)
  {
    v13 = sub_1ABAB540C(v7, v8, v9, v10, v11, v12);
    v14 = sub_1ABAA1B54(v13);
    sub_1ABA80590(v14);
    v14[2] = v3;
    v14[3] = v15;
  }

  v16 = sub_1ABA97400();
  if (v1)
  {
    sub_1ABA8857C();
    if (v21)
    {
      v22 = v20 > v18;
    }

    else
    {
      v22 = 0;
    }

    if (!v22)
    {
      memmove(v18, v19, 16 * v3);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    memcpy(v16, v17, 16 * v3);
  }
}

void sub_1ABADC278()
{
  sub_1ABAA4428();
  if (v4)
  {
    sub_1ABA93188();
    if (v5 != v6)
    {
      sub_1ABAA4834();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  sub_1ABA946F8();
  if (v2)
  {
    v7 = sub_1ABAD219C(&qword_1EB4D1478, &qword_1ABF33600);
    v8 = sub_1ABAA1B54(v7);
    sub_1ABA80590(v8);
    v8[2] = v3;
    v8[3] = v9;
  }

  v10 = sub_1ABA97400();
  if (v1)
  {
    sub_1ABA8857C();
    if (v15)
    {
      v16 = v14 > v12;
    }

    else
    {
      v16 = 0;
    }

    if (!v16)
    {
      memmove(v12, v13, 16 * v3);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    memcpy(v10, v11, 16 * v3);
  }
}

void sub_1ABADC334()
{
  sub_1ABAA4428();
  if (v4)
  {
    sub_1ABA93188();
    if (v5 != v6)
    {
      sub_1ABAA4834();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  sub_1ABA8E5E4();
  if (v2)
  {
    v7 = sub_1ABAD219C(&qword_1EB4D1538, &qword_1ABF336C8);
    v3 = 40;
    v8 = sub_1ABAA3F10(v7);
    sub_1ABA7CFD8(v8);
  }

  sub_1ABAB0FDC();
  if (v1)
  {
    sub_1ABA95FC8();
    if (v10)
    {
      v11 = v9 > v3;
    }

    else
    {
      v11 = 0;
    }

    if (!v11)
    {
      sub_1ABAA0E48();
      v12 = sub_1ABA826A8();
      memmove(v12, v13, v14);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    v15 = sub_1ABAD219C(&qword_1EB4D1540, &qword_1ABF336D0);
    sub_1ABA83EB4(v15);
  }
}

void sub_1ABADC430()
{
  sub_1ABAA4428();
  if (v3)
  {
    sub_1ABA93188();
    if (v4 != v5)
    {
      sub_1ABAA4834();
      if (v4)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  sub_1ABA8E5E4();
  if (v2)
  {
    v6 = sub_1ABAD219C(&qword_1EB4D1490, &qword_1ABF33618);
    v7 = sub_1ABAA3F10(v6);
    sub_1ABA7CFD8(v7);
  }

  sub_1ABAA3730();
  if (v1)
  {
    sub_1ABAA2F60();
    if (v10)
    {
      v11 = v9 > v8;
    }

    else
    {
      v11 = 0;
    }

    if (!v11)
    {
      sub_1ABAA0E48();
      memmove(v12, v13, v14);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1ABADC558()
{
  sub_1ABA9A268();
  if (v4)
  {
    sub_1ABA90578();
    if (v6 != v7)
    {
      sub_1ABA97710();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_1ABAA5EA4();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_1ABAABC34(v2, v5, &qword_1EB4D1350, qword_1ABF68740);
  v8 = sub_1ABA89364();
  type metadata accessor for KGQ.Value(v8);
  sub_1ABA826B4();
  sub_1ABA7AB74();
  if (v1)
  {
    sub_1ABAA218C(v9, type metadata accessor for KGQ.Value);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_1ABAA5198();
  }
}

void sub_1ABADC630()
{
  sub_1ABAA4428();
  if (v4)
  {
    sub_1ABA93188();
    if (v5 != v6)
    {
      sub_1ABAA4834();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  sub_1ABA946F8();
  if (v2)
  {
    v7 = sub_1ABAD219C(&qword_1EB4D1308, &qword_1ABF33490);
    v8 = sub_1ABAB5604(v7);
    sub_1ABA7ECDC(v8);
    v8[2] = v3;
    v8[3] = v9;
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  v10 = sub_1ABA97400();
  if (v1)
  {
    if (v8 != v0 || &v11[24 * v3] <= v10)
    {
      memmove(v10, v11, 24 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1ABADC71C()
{
  sub_1ABAA4428();
  if (v4)
  {
    sub_1ABA93188();
    if (v5 != v6)
    {
      sub_1ABAA4834();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  sub_1ABA8E5E4();
  if (v3)
  {
    sub_1ABAB540C(v7, v8, v9, v10, v11, v12);
    v13 = swift_allocObject();
    v14 = j__malloc_size(v13);
    sub_1ABAB5070(v14);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  v15 = sub_1ABAA3730();
  if (v1)
  {
    if (v13 != v0 || &v16[v2] <= v15)
    {
      memmove(v15, v16, v2);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v15, v16, v2);
  }
}

void sub_1ABADC804()
{
  sub_1ABA968E8();
  if (v4)
  {
    sub_1ABA93188();
    if (v5 != v6)
    {
      sub_1ABAA4834();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  sub_1ABA7FBEC();
  if (v3)
  {
    sub_1ABAB540C(v7, v8, v9, v10, v11, v12);
    v13 = sub_1ABAA21A8();
    j__malloc_size(v13);
    sub_1ABA8FDCC();
    *(v13 + 2) = v2;
    *(v13 + 3) = v14;
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  v15 = v13 + 32;
  v16 = v0 + 32;
  if (v1)
  {
    if (v13 != v0 || &v16[32 * v2] <= v15)
    {
      memmove(v15, v16, 32 * v2);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1ABADC8CC()
{
  sub_1ABAA4428();
  if (v4)
  {
    sub_1ABA93188();
    if (v5 != v6)
    {
      sub_1ABAA4834();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  sub_1ABA8E5E4();
  if (v2)
  {
    v7 = sub_1ABAD219C(&qword_1EB4D12E8, &unk_1ABF33470);
    v3 = 184;
    v8 = sub_1ABAA3F10(v7);
    sub_1ABA7CFD8(v8);
  }

  sub_1ABAB0FDC();
  if (v1)
  {
    sub_1ABA95FC8();
    if (v10)
    {
      v11 = v9 > v3;
    }

    else
    {
      v11 = 0;
    }

    if (!v11)
    {
      v12 = sub_1ABA826A8();
      memmove(v12, v13, v14);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    v15 = sub_1ABAD219C(&qword_1EB4D12F0, &unk_1ABF69050);
    sub_1ABA83EB4(v15);
  }
}

void sub_1ABADC9D0()
{
  sub_1ABA9A268();
  if (v4)
  {
    sub_1ABA90578();
    if (v6 != v7)
    {
      sub_1ABA97710();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_1ABAA5EA4();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_1ABAABC34(v2, v5, &qword_1EB4D1208, &qword_1ABF33390);
  sub_1ABA89364();
  sub_1ABF22424();
  sub_1ABA826B4();
  sub_1ABA7AB74();
  if (v1)
  {
    sub_1ABAA218C(v8, MEMORY[0x1E699FE68]);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_1ABAA5198();
  }
}

void sub_1ABADCAA8()
{
  sub_1ABA9A268();
  if (v4)
  {
    sub_1ABA90578();
    if (v6 != v7)
    {
      sub_1ABA97710();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_1ABAA5EA4();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_1ABAABC34(v2, v5, &qword_1EB4D12C8, &unk_1ABF33450);
  sub_1ABA89364();
  sub_1ABF23094();
  sub_1ABA826B4();
  sub_1ABA7AB74();
  if (v1)
  {
    sub_1ABAA218C(v8, MEMORY[0x1E69DF510]);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_1ABAA5198();
  }
}

void sub_1ABADCB80()
{
  sub_1ABAA4428();
  if (v3)
  {
    sub_1ABA93188();
    if (v4 != v5)
    {
      sub_1ABAA4834();
      if (v4)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  sub_1ABA8E5E4();
  if (v2)
  {
    v6 = sub_1ABAD219C(&qword_1EB4D1280, &qword_1ABF33408);
    v7 = sub_1ABAA3F10(v6);
    sub_1ABA7CFD8(v7);
  }

  sub_1ABAA3730();
  if (v1)
  {
    sub_1ABAA2F60();
    if (v11)
    {
      v12 = v10 > v8;
    }

    else
    {
      v12 = 0;
    }

    if (!v12)
    {
      sub_1ABA972A4(v8, v9);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1ABADCC6C()
{
  sub_1ABAA4428();
  if (v6)
  {
    sub_1ABA93188();
    if (v7 != v8)
    {
      sub_1ABAA4834();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  sub_1ABA8E5E4();
  if (v3)
  {
    sub_1ABAD219C(&qword_1EB4D11E8, &qword_1ABF33370);
    v9 = sub_1ABAA21A8();
    sub_1ABA80590(v9);
    v9[2] = v2;
    v9[3] = v10;
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  sub_1ABAB0FDC();
  if (v1)
  {
    if (v9 != v0 || v5 + 16 * v2 <= v4)
    {
      v12 = sub_1ABA826A8();
      memmove(v12, v13, v14);
    }

    v0[2] = 0;
  }

  else
  {
    v15 = sub_1ABAD219C(&qword_1EB4D11F0, &qword_1ABF33378);
    sub_1ABA83EB4(v15);
  }
}

void sub_1ABADCD70()
{
  sub_1ABAA00E4();
  sub_1ABA7E294();
  if (v6)
  {
    sub_1ABA93188();
    if (v7 != v8)
    {
      sub_1ABAA4834();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  sub_1ABAA5668();
  if (v3)
  {
    sub_1ABAB540C(v9, v10, v11, v12, v13, v14);
    v15 = sub_1ABAA21A8();
    j__malloc_size(v15);
    sub_1ABA83554();
    v15[2] = v2;
    v15[3] = v16;
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
  }

  sub_1ABA82D94();
  if (v1)
  {
    if (v15 != v0 || v5 + 8 * v2 <= v4)
    {
      v18 = sub_1ABA894A0();
      memmove(v18, v19, v20);
    }

    v0[2] = 0;
  }

  else
  {
    v21 = sub_1ABA7ECFC();
    sub_1ABAD219C(v21, v22);
    sub_1ABA8E070();
    swift_arrayInitWithCopy();
  }

  sub_1ABA82A00();
}

const void *sub_1ABADCE40()
{
  sub_1ABAA1938();
  if (!v0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v1 = sub_1ABAD219C(&qword_1EB4D10A0, &qword_1ABF33228);
  v2 = sub_1ABAA123C(v1);
  v3 = j__malloc_size(v2);
  sub_1ABAA4C80(v3);
  return v2;
}

const void *sub_1ABADCEBC()
{
  sub_1ABAA1938();
  if (!v0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v1 = sub_1ABAD219C(&qword_1EB4D10C0, &qword_1ABF33248);
  v2 = sub_1ABAA123C(v1);
  v3 = j__malloc_size(v2);
  sub_1ABAA4C80(v3);
  return v2;
}

const void *sub_1ABADCF24()
{
  sub_1ABAA1938();
  if (!v0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v1 = sub_1ABAD219C(&qword_1EB4D1A58, &qword_1ABF33BE8);
  v2 = sub_1ABAA123C(v1);
  v3 = j__malloc_size(v2);
  sub_1ABAA4C80(v3);
  return v2;
}

void *sub_1ABADCF8C()
{
  sub_1ABAA1938();
  if (!v0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = v1;
  sub_1ABAD219C(&unk_1EB4DB330, &qword_1ABF33420);
  v3 = sub_1ABAA21A8();
  j__malloc_size(v3);
  sub_1ABA83554();
  v3[2] = v2;
  v3[3] = v4;
  return v3;
}

const void *sub_1ABADD018()
{
  sub_1ABAA1938();
  if (!v0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v5 = sub_1ABAA1070(v1, v2, v3, v4);
  v6 = sub_1ABAA123C(v5);
  v7 = j__malloc_size(v6);
  sub_1ABAA4C80(v7);
  return v6;
}

const void *sub_1ABADD06C()
{
  sub_1ABAA1938();
  if (!v0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v1 = sub_1ABAD219C(&qword_1EB4D1A40, &qword_1ABF33BD0);
  v2 = sub_1ABAA123C(v1);
  v3 = j__malloc_size(v2);
  sub_1ABAA4C80(v3);
  return v2;
}

void *sub_1ABADD0D4()
{
  sub_1ABAA1938();
  if (!v0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = v1;
  sub_1ABAD219C(&qword_1EB4D1910, &qword_1ABF33AA0);
  v3 = sub_1ABAA21A8();
  sub_1ABAA3B60(v3);
  v3[2] = v2;
  v3[3] = (2 * (v4 / 8)) | 1;
  return v3;
}

void sub_1ABADD158(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (v5)
  {
    sub_1ABAA1070(a1, a2, a3, a4);
    v6 = sub_1ABA7ECFC();
    v8 = sub_1ABAD219C(v6, v7);
    sub_1ABA7BBD0(v8);
    v10 = *(v9 + 72);
    v11 = swift_allocObject();
    j__malloc_size(v11);
    if (v10)
    {
      sub_1ABAA0504();
      v13 = v13 && v10 == -1;
      if (!v13)
      {
        v11[2] = v4;
        v11[3] = 2 * (v12 / v10);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

void *sub_1ABADD250()
{
  sub_1ABAA1938();
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1ABAA1070(v2, v3, v4, v5);
  v6 = sub_1ABAA21A8();
  j__malloc_size(v6);
  sub_1ABA8FDCC();
  v6[2] = v0;
  v6[3] = v7;
  return v6;
}

void sub_1ABADD2A0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (a2 <= a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = a2;
  }

  if (v6)
  {
    sub_1ABAA1070(a1, a2, a3, a4);
    v8 = sub_1ABA89364();
    v9 = a5(v8);
    sub_1ABA7BBD0(v9);
    v11 = *(v10 + 72);
    v12 = swift_allocObject();
    j__malloc_size(v12);
    if (v11)
    {
      sub_1ABAA0504();
      v14 = v14 && v11 == -1;
      if (!v14)
      {
        v12[2] = v5;
        v12[3] = 2 * (v13 / v11);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

char *sub_1ABADD380(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[88 * a2] <= a3)
  {
    return sub_1ABA8EE60(a3, result);
  }

  return result;
}

char *sub_1ABADD3A8(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return sub_1ABA8EE60(a3, result);
  }

  return result;
}

char *sub_1ABADD3D0(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[112 * a2] <= a3)
  {
    return sub_1ABA8EE60(a3, result);
  }

  return result;
}

char *sub_1ABADD3F8(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[64 * a2] <= a3)
  {
    return sub_1ABA8EE60(a3, result);
  }

  return result;
}

char *sub_1ABADD418(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[104 * a2] <= __dst)
  {
    return memmove(__dst, __src, 104 * a2);
  }

  return __src;
}

char *sub_1ABADD448(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[120 * a2] <= a3)
  {
    return sub_1ABA8EE60(a3, result);
  }

  return result;
}

char *sub_1ABADD470(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return sub_1ABA8EE60(a3, result);
  }

  return result;
}

char *sub_1ABADD498(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[72 * a2] <= a3)
  {
    return sub_1ABA8EE60(a3, result);
  }

  return result;
}

char *sub_1ABADD4BC(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[1160 * a2] <= a3)
  {
    return sub_1ABA8EE60(a3, result);
  }

  return result;
}

char *sub_1ABADD4E4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[80 * a2] <= a3)
  {
    return sub_1ABA8EE60(a3, result);
  }

  return result;
}

char *sub_1ABADD508(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return sub_1ABA8EE60(a3, result);
  }

  return result;
}

char *sub_1ABADD52C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[32 * a2] <= a3)
  {
    return sub_1ABA8EE60(a3, result);
  }

  return result;
}

void sub_1ABADD54C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4, uint64_t *a5)
{
  sub_1ABA81488();
  if (v11 < v10 || (sub_1ABAD219C(a4, a5), sub_1ABA7BBB0(), v6 + *(v12 + 72) * v5 <= a3))
  {
    sub_1ABAD219C(a4, a5);
    sub_1ABAA2B48();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != v6)
  {
    sub_1ABAA2B48();

    swift_arrayInitWithTakeBackToFront();
  }
}

void sub_1ABADD61C(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  sub_1ABA81488();
  if (v9 < v8 || (a4(0), sub_1ABA7BBB0(), v5 + *(v10 + 72) * v4 <= a3))
  {
    a4(0);
    sub_1ABAA2B48();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != v5)
  {
    sub_1ABAA2B48();

    swift_arrayInitWithTakeBackToFront();
  }
}

uint64_t sub_1ABADD6D8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  sub_1ABA814B0();
  v9 = sub_1ABADD798(v6, v7, v8, 1, a1, a2);
  v10 = v14[0];
  if (v9)
  {
    v11 = v9;

    ObjectType = swift_getObjectType();
    v14[0] = v11;
  }

  else
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v14[0] = a1;
    v14[1] = a2;
  }

  v12 = *a3;
  if (*a3)
  {
    sub_1ABAE2BF0(v14, *a3);
    *a3 = v12 + 32;
  }

  sub_1ABA84B54(v14);
  return v10;
}

unint64_t sub_1ABADD798(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1ABADD898(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_1ABF24B74();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_1ABADD898(uint64_t a1, unint64_t a2)
{
  v3 = sub_1ABADD8E4(a1, a2);
  sub_1ABADD9FC(&unk_1F208E280);
  return v3;
}

uint64_t sub_1ABADD8E4(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_1ABF23DF4())
  {
    result = sub_1ABB8080C(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_1ABF24A64();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_1ABF24B74();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1ABADD9FC(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_1ABADDAE0(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_1ABADDAE0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1ABAD219C(&unk_1EB4D1AE0, &unk_1ABF33C90);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void *sub_1ABADDD3C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1ABADF3A4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1ABADDD5C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1ABADF4D4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1ABADDDBC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1ABADF5EC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1ABADDDDC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1ABADF7CC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1ABADDE1C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1ABADF8E0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1ABADDE7C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1ABADF9D4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1ABADDE9C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1ABADFAD4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1ABADDF2C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1ABADFBEC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1ABADDF4C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1ABADFD04(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1ABADDFDC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1ABADFF08(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1ABADDFFC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1ABAE001C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1ABADE01C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1ABAE011C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1ABADE0AC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1ABAE03B0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1ABADE0CC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1ABAE04E8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1ABADE0EC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1ABAE06B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1ABADE10C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1ABAE07CC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1ABADE12C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1ABAE08CC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1ABADE14C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1ABAE09D4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1ABADE16C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1ABAE0ADC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1ABADE1AC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1ABAE0BF0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1ABADE1FC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1ABAE0CF0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1ABADE27C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1ABAE0F70(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1ABADE29C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1ABAE1070(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1ABADE954(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1ABAE16A8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1ABADEA0C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1ABAE17B0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1ABADEA2C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1ABAE18E8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1ABADEA8C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1ABAE1A00(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1ABADEAEC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1ABAE1B18(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1ABADEB0C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1ABAE1C2C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1ABADEBAC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1ABAE1D44(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1ABADEBCC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1ABAE1E5C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1ABADEBEC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1ABAE1F74(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1ABADEC4C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1ABAE2144(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1ABADED04(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1ABAE2374(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1ABADEEC4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1ABAE26F0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1ABADEF7C()
{
  sub_1ABAA4428();
  if (v4)
  {
    sub_1ABA93188();
    if (v5 != v6)
    {
      sub_1ABAA4834();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  sub_1ABA8E5E4();
  if (v3)
  {
    sub_1ABAD219C(&qword_1EB4D10F0, &qword_1ABF3A5C0);
    v7 = sub_1ABAA21A8();
    sub_1ABA80590(v7);
    v7[2] = v2;
    v7[3] = v8;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v9 = sub_1ABAA3730();
  if (v1)
  {
    if (v7 != v0 || &v10[16 * v2] <= v9)
    {
      memmove(v9, v10, 16 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1ABADF048()
{
  sub_1ABAA4428();
  if (v4)
  {
    sub_1ABA93188();
    if (v5 != v6)
    {
      sub_1ABAA4834();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  sub_1ABA8E5E4();
  if (v2)
  {
    v7 = sub_1ABAD219C(&qword_1EB4D10C0, &qword_1ABF33248);
    v3 = 24;
    v8 = sub_1ABAA3F10(v7);
    sub_1ABA7CFD8(v8);
  }

  sub_1ABAB0FDC();
  if (v1)
  {
    sub_1ABA95FC8();
    if (v10)
    {
      v11 = v9 > v3;
    }

    else
    {
      v11 = 0;
    }

    if (!v11)
    {
      v12 = sub_1ABA826A8();
      memmove(v12, v13, v14);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    v15 = sub_1ABAD219C(&qword_1EB4D10D0, &unk_1ABF6F240);
    sub_1ABA83EB4(v15);
  }
}

void sub_1ABADF124()
{
  sub_1ABAA4428();
  if (v3)
  {
    sub_1ABA93188();
    if (v4 != v5)
    {
      sub_1ABAA4834();
      if (v4)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  sub_1ABA8E5E4();
  if (v2)
  {
    v6 = sub_1ABAD219C(&qword_1EB4D17C0, &qword_1ABF33950);
    v7 = sub_1ABAA3F10(v6);
    sub_1ABA7CFD8(v7);
  }

  sub_1ABAA3730();
  if (v1)
  {
    sub_1ABAA2F60();
    if (v11)
    {
      v12 = v10 > v8;
    }

    else
    {
      v12 = 0;
    }

    if (!v12)
    {
      sub_1ABA9FF84(v8, v9);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1ABADF1EC()
{
  sub_1ABAA4428();
  if (v4)
  {
    sub_1ABA93188();
    if (v5 != v6)
    {
      sub_1ABAA4834();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  sub_1ABA8E5E4();
  if (v2)
  {
    v7 = sub_1ABAD219C(&qword_1EB4D1140, &qword_1ABF332C8);
    v3 = 104;
    v8 = sub_1ABAA3F10(v7);
    sub_1ABA7CFD8(v8);
  }

  sub_1ABAB0FDC();
  if (v1)
  {
    sub_1ABA8CA68();
    if (v10)
    {
      v11 = v9 > v3;
    }

    else
    {
      v11 = 0;
    }

    if (!v11)
    {
      v12 = sub_1ABA826A8();
      memmove(v12, v13, v14);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    v15 = sub_1ABAD219C(&qword_1EB4D1148, &qword_1ABF332D0);
    sub_1ABA83EB4(v15);
  }
}

void sub_1ABADF2D8()
{
  sub_1ABA968E8();
  if (v4)
  {
    sub_1ABA93188();
    if (v5 != v6)
    {
      sub_1ABAA4834();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  sub_1ABA7FBEC();
  if (v3)
  {
    sub_1ABAB540C(v7, v8, v9, v10, v11, v12);
    v13 = swift_allocObject();
    sub_1ABAA3B60(v13);
    sub_1ABAB6868(v14);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  v15 = v13 + 32;
  v16 = v0 + 32;
  if (v1)
  {
    if (v13 != v0 || &v16[64 * v2] <= v15)
    {
      memmove(v15, v16, v2 << 6);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void *sub_1ABADF3A4(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_1ABAD219C(&qword_1EB4D17E8, &qword_1ABF33978);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[2 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1ABAD219C(&qword_1EB4D17F0, &qword_1ABF33980);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1ABADF4D4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1ABAD219C(&qword_1EB4D17D0, &qword_1ABF33960);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 112);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[112 * v8] <= v12)
    {
      memmove(v12, v13, 112 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1ABADF5EC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1ABAD219C(&qword_1EB4D1A58, &qword_1ABF33BE8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    if (v10 != a4 || &v13[144 * v8] <= v12)
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

void sub_1ABADF704()
{
  sub_1ABAA4428();
  if (v3)
  {
    sub_1ABA93188();
    if (v4 != v5)
    {
      sub_1ABAA4834();
      if (v4)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  sub_1ABA8E5E4();
  if (v2)
  {
    v6 = sub_1ABAD219C(&qword_1EB4D10A0, &qword_1ABF33228);
    v7 = sub_1ABAA3F10(v6);
    sub_1ABA7CFD8(v7);
  }

  sub_1ABAA3730();
  if (v1)
  {
    sub_1ABAA2F60();
    if (v11)
    {
      v12 = v10 > v8;
    }

    else
    {
      v12 = 0;
    }

    if (!v12)
    {
      sub_1ABA972A4(v8, v9);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

char *sub_1ABADF7CC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1ABAD219C(&qword_1EB4D10F8, &qword_1ABF33280);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 112);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[112 * v8] <= v12)
    {
      memmove(v12, v13, 112 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1ABADF8E0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1ABAD219C(&qword_1EB4D10E8, &unk_1ABF33270);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_1ABADF9D4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1ABAD219C(&qword_1EB4D1380, &qword_1ABF33508);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[4 * v8] <= v12)
    {
      memmove(v12, v13, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 4 * v8);
  }

  return v10;
}

char *sub_1ABADFAD4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1ABAD219C(&qword_1EB4D1228, &qword_1ABF333B0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[88 * v8] <= v12)
    {
      memmove(v12, v13, 88 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1ABADFBEC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1ABAD219C(&qword_1EB4D10A8, &qword_1ABF33230);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    if (v10 != a4 || &v13[136 * v8] <= v12)
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

char *sub_1ABADFD04(char *result, int64_t a2, char a3, char *a4)
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
    sub_1ABAD219C(&qword_1EB4D1A50, &qword_1ABF33BE0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[56 * v8] <= v12)
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1ABADFE1C()
{
  sub_1ABAA4428();
  if (v4)
  {
    sub_1ABA93188();
    if (v5 != v6)
    {
      sub_1ABAA4834();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  sub_1ABA8E5E4();
  if (v2)
  {
    v7 = sub_1ABAD219C(&qword_1EB4D19C8, &qword_1ABF33B58);
    v3 = 40;
    v8 = sub_1ABAA3F10(v7);
    sub_1ABA7CFD8(v8);
  }

  sub_1ABAB0FDC();
  if (v1)
  {
    sub_1ABA95FC8();
    if (v10)
    {
      v11 = v9 > v3;
    }

    else
    {
      v11 = 0;
    }

    if (!v11)
    {
      sub_1ABAA0E48();
      v12 = sub_1ABA826A8();
      memmove(v12, v13, v14);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    v15 = sub_1ABAD219C(&qword_1EB4D19D0, &qword_1ABF33B60);
    sub_1ABA83EB4(v15);
  }
}

char *sub_1ABADFF08(char *result, int64_t a2, char a3, char *a4)
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
    sub_1ABAD219C(&qword_1EB4D1978, &qword_1ABF33B08);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 328);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[328 * v8] <= v12)
    {
      memmove(v12, v13, 328 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1ABAE001C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1ABAD219C(&unk_1EB4DB330, &qword_1ABF33420);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 8 * v8);
  }

  return v10;
}

char *sub_1ABAE011C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1ABAD219C(&qword_1EB4D1150, &qword_1ABF332D8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 8 * v8);
  }

  return v10;
}

void sub_1ABAE021C()
{
  sub_1ABAA4428();
  if (v4)
  {
    sub_1ABA93188();
    if (v5 != v6)
    {
      sub_1ABAA4834();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  sub_1ABA946F8();
  if (v2)
  {
    v7 = sub_1ABAD219C(&qword_1EB4D1A48, &qword_1ABF33BD8);
    v8 = sub_1ABAA1B54(v7);
    sub_1ABA80590(v8);
    v8[2] = v3;
    v8[3] = v9;
  }

  v10 = sub_1ABA97400();
  if (v1)
  {
    sub_1ABA8857C();
    if (v15)
    {
      v16 = v14 > v12;
    }

    else
    {
      v16 = 0;
    }

    if (!v16)
    {
      memmove(v12, v13, 16 * v3);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    memcpy(v10, v11, 16 * v3);
  }
}

void sub_1ABAE02D8()
{
  sub_1ABAA4428();
  if (v4)
  {
    sub_1ABA93188();
    if (v5 != v6)
    {
      sub_1ABAA4834();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  sub_1ABA946F8();
  if (v2)
  {
    v7 = sub_1ABAD219C(&qword_1EB4D1A40, &qword_1ABF33BD0);
    v8 = sub_1ABAB5604(v7);
    sub_1ABA7ECDC(v8);
    v8[2] = v3;
    v8[3] = v9;
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  v10 = sub_1ABA97400();
  if (v1)
  {
    if (v8 != v0 || &v11[72 * v3] <= v10)
    {
      memmove(v10, v11, 72 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void *sub_1ABAE03B0(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_1ABAD219C(&qword_1EB4D19F0, &qword_1ABF33B80);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[10 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 80 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1ABAD219C(&qword_1EB4D19F8, &qword_1ABF33B88);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1ABAE04E8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1ABAD219C(&qword_1EB4D1360, &unk_1ABF41170);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[4 * v8] <= v12)
    {
      memmove(v12, v13, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 4 * v8);
  }

  return v10;
}

void sub_1ABAE05E8()
{
  sub_1ABAA4428();
  if (v4)
  {
    sub_1ABA93188();
    if (v5 != v6)
    {
      sub_1ABAA4834();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  sub_1ABA8E5E4();
  if (v3)
  {
    v7 = sub_1ABAD219C(&qword_1EB4D1958, &qword_1ABF33AE8);
    v8 = sub_1ABAA3F10(v7);
    sub_1ABA7CFD8(v8);
  }

  sub_1ABAA3730();
  if (v1)
  {
    sub_1ABAA2F60();
    if (v12)
    {
      v13 = v11 > v9;
    }

    else
    {
      v13 = 0;
    }

    if (!v13)
    {
      memmove(v9, v10, 1160 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

char *sub_1ABAE06B8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1ABAD219C(&qword_1EB4D11A0, &qword_1ABF33328);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[40 * v8] <= v12)
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1ABAE07CC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1ABAD219C(&qword_1EB4D1950, &qword_1ABF33AE0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

char *sub_1ABAE08CC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1ABAD219C(&qword_1EB4D1988, &qword_1ABF33B18);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[32 * v8] <= v12)
    {
      memmove(v12, v13, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1ABAE09D4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1ABAD219C(&qword_1EB4D1980, &qword_1ABF33B10);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[32 * v8] <= v12)
    {
      memmove(v12, v13, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1ABAE0ADC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1ABAD219C(&qword_1EB4D1940, &qword_1ABF33AD0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[80 * v8] <= v12)
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1ABAE0BF0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1ABAD219C(&qword_1EB4D1930, &qword_1ABF33AC0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[32 * v8] <= v12)
    {
      memmove(v12, v13, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 32 * v8);
  }

  return v10;
}

char *sub_1ABAE0CF0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1ABAD219C(&qword_1EB4D1938, &qword_1ABF33AC8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    if (v10 != a4 || &v13[24 * v8] <= v12)
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 24 * v8);
  }

  return v10;
}

void sub_1ABAE0E04()
{
  sub_1ABAA4428();
  if (v4)
  {
    sub_1ABA93188();
    if (v5 != v6)
    {
      sub_1ABAA4834();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  sub_1ABA8E5E4();
  if (v3)
  {
    sub_1ABAB540C(v7, v8, v9, v10, v11, v12);
    v13 = swift_allocObject();
    v14 = j__malloc_size(v13);
    sub_1ABAB5070(v14);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  v15 = sub_1ABAA3730();
  if (v1)
  {
    if (v13 != v0 || &v16[v2] <= v15)
    {
      memmove(v15, v16, v2);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v15, v16, v2);
  }
}

void sub_1ABAE0EBC()
{
  sub_1ABAA4428();
  if (v4)
  {
    sub_1ABA93188();
    if (v5 != v6)
    {
      sub_1ABAA4834();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  sub_1ABA946F8();
  if (v2)
  {
    sub_1ABAB540C(v7, v8, v9, v10, v11, v12);
    v13 = sub_1ABAA21A8();
    j__malloc_size(v13);
    sub_1ABA83554();
    v13[2] = v3;
    v13[3] = v14;
  }

  v15 = sub_1ABA97400();
  if (v1)
  {
    sub_1ABAB2A9C();
    if (v20)
    {
      v21 = v19 > v17;
    }

    else
    {
      v21 = 0;
    }

    if (!v21)
    {
      memmove(v17, v18, 8 * v3);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v3);
  }
}

char *sub_1ABAE0F70(char *result, int64_t a2, char a3, char *a4)
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
    sub_1ABAD219C(&qword_1EB4D1920, &qword_1ABF33AB0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

char *sub_1ABAE1070(char *result, int64_t a2, char a3, char *a4)
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
    sub_1ABAD219C(&qword_1EB4D1918, &qword_1ABF33AA8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    if (v10 != a4 || &v13[24 * v8] <= v12)
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 24 * v8);
  }

  return v10;
}