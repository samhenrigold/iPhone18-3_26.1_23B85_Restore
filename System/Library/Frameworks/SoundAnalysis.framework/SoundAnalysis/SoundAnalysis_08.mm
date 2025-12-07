uint64_t sub_1C983482C(__int128 *a1)
{
  v1 = *(a1 + 2);
  v2 = *(a1 + 3);
  sub_1C97A2CEC(&qword_1EC3C7C70, &qword_1C9A9D640);
  result = swift_allocObject();
  *(result + 16) = xmmword_1C9A9EE60;
  *(result + 32) = vdupq_n_s64(1uLL);
  if (__OFSUB__(v2 >> 1, v1))
  {
    __break(1u);
  }

  else
  {
    *(result + 48) = (v2 >> 1) - v1;
    swift_unknownObjectRetain();
    sub_1C97A2CEC(&qword_1EC3C7C80, &qword_1C9AB6790);
    sub_1C97AE67C(&qword_1EC3C7C88, &qword_1EC3C7C80, &qword_1C9AB6790, &unk_1C9AC83C0);
    return sub_1C9A91B88();
  }

  return result;
}

uint64_t sub_1C983493C@<X0>(uint64_t *a1@<X8>)
{
  sub_1C97A2CEC(&qword_1EC3C8A38, &unk_1C9AA4F50);
  sub_1C97AE67C(&qword_1EC3C8A70, &qword_1EC3C8A38, &unk_1C9AA4F50, MEMORY[0x1E695FCF0]);
  result = sub_1C9A91BC8();
  *a1 = result;
  return result;
}

void sub_1C98349C8()
{
  sub_1C97AEB48();
  WitnessTable = swift_getWitnessTable();
  sub_1C9835390(WitnessTable);
}

void sub_1C9834A0C(void *a1@<X0>, uint64_t a4@<X8>)
{
  v6 = sub_1C97A2CEC(&qword_1EC3C8A78, &unk_1C9AA4F70);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v13 - v7;
  v9 = sub_1C9A92478();
  v10 = [a1 featureValueForName_];

  if (v10)
  {
    if ([v10 type] != 5)
    {
LABEL_5:
      sub_1C9834F94();
      swift_allocError();
      *v12 = 1;
      swift_willThrow();

      return;
    }

    sub_1C9A92FD8();
    v11 = sub_1C97A2CEC(&qword_1EC3C8A38, &unk_1C9AA4F50);
    if (sub_1C97ABF20(v8, 1, v11) == 1)
    {
      sub_1C97DA1E0(v8, &qword_1EC3C8A78, &unk_1C9AA4F70);
      goto LABEL_5;
    }

    (*(*(v11 - 8) + 32))(a4, v8, v11);
  }

  else
  {
    __break(1u);
  }
}

uint64_t (*sub_1C9834BC8(uint64_t a1, uint64_t (*a2)(uint64_t a1)))(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v6 = *(a2 + 2);
  v7 = v6(ObjectType, a2);
  v8 = sub_1C98BBF7C(v7);
  v10 = v9;

  if (!v2)
  {
    v11 = v6(ObjectType, a2);
    v13 = sub_1C98BBF9C(v11);
    v15 = v14;

    v16 = swift_allocObject();
    *(v16 + 16) = v8;
    *(v16 + 24) = v10;
    v17 = swift_allocObject();
    *(v17 + 16) = a1;
    *(v17 + 24) = a2;
    v18 = swift_allocObject();
    *(v18 + 16) = v13;
    *(v18 + 24) = v15;
    v19 = swift_allocObject();
    v19[2] = sub_1C9834F54;
    v19[3] = v18;
    v19[4] = sub_1C9834F38;
    v19[5] = v17;
    v19[6] = sub_1C9834F1C;
    v19[7] = v16;
    a2 = sub_1C9834F70;
    swift_unknownObjectRetain();
  }

  return a2;
}

uint64_t sub_1C9834D64(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t (*a4)(void), uint64_t a5, uint64_t (*a6)(uint64_t))
{
  result = a6(a1);
  if (!v6)
  {
    v10 = a4();
    swift_unknownObjectRelease();
    a2(v10);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1C9834E10()
{
  sub_1C97AEB48();
  WitnessTable = swift_getWitnessTable();
  sub_1C9835390(WitnessTable);
}

uint64_t sub_1C9834E54(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C97A2CEC(&qword_1EC3C76A0, &unk_1C9AA4F40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C9834F94()
{
  result = qword_1EC3C8A80[0];
  if (!qword_1EC3C8A80[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC3C8A80);
  }

  return result;
}

uint64_t sub_1C9834FE8@<X0>(uint64_t *a4@<X8>)
{
  result = sub_1C98BFBD4();
  *a4 = result;
  return result;
}

uint64_t sub_1C9835020@<X0>(uint64_t *a1@<X8>)
{
  result = (*(*(v1 + 24) + 24))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

_BYTE *sub_1C98350AC(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1C98352A0(uint64_t a1)
{

  return swift_getWitnessTable();
}

uint64_t sub_1C98352CC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = MEMORY[0x1E695BCC0];

  return sub_1C97AE67C(a1, a2, a3, v4);
}

uint64_t sub_1C98352F0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = MEMORY[0x1E695BE28];

  return sub_1C97AE67C(a1, a2, a3, v4);
}

uint64_t sub_1C9835314(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = MEMORY[0x1E695BD60];

  return sub_1C97AE67C(a1, a2, a3, v4);
}

uint64_t sub_1C9835338(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1C9835358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return swift_getAssociatedConformanceWitness();
}

void sub_1C9835390(uint64_t a1)
{

  sub_1C9831614(v3, v2, v1, a1);
}

uint64_t sub_1C98353B4@<X0>(char a2@<W8>)
{
  *(v2 - 112) = a2;

  return sub_1C9A93A08();
}

uint64_t sub_1C9835400@<X0>(char a1@<W8>)
{
  *(v1 - 112) = a1;

  return sub_1C9A938E8();
}

uint64_t sub_1C9835420(uint64_t a1)
{
  v5[2] = sub_1C983E024;
  v6 = v1;
  v7 = &v8;
  v8 = a1;

  v3 = sub_1C97E30A4(v2, sub_1C983E04C, v5);

  return v3;
}

uint64_t sub_1C98354C0()
{
  v1 = sub_1C97A2CEC(&qword_1EC3C8D30, &qword_1C9AB0A20);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v15 - v3;
  v5 = sub_1C97A2CEC(&qword_1EC3C8D38, &unk_1C9AA5520);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - v7;
  if (qword_1EC3C5DA8 != -1)
  {
    swift_once();
  }

  result = sub_1C9835420(qword_1EC3D31F0);
  if (!v0)
  {
    v17 = 0;
    v18 = result;
    v19 = sub_1C97FB98C();
    sub_1C97A2CEC(&qword_1EC3C79C0, &qword_1C9AA15D0);
    v16 = v6;
    type metadata accessor for SNAOPReport(0);
    v15 = v5;
    sub_1C97AE67C(&qword_1EC3C79D0, &qword_1EC3C79C0, &qword_1C9AA15D0, MEMORY[0x1E695BED8]);
    sub_1C9A92048();

    type metadata accessor for SNAOPReport.SuccessPayload(0);
    v10 = MEMORY[0x1E695BE28];
    sub_1C97AE67C(&qword_1EC3C8D40, &qword_1EC3C8D30, &qword_1C9AB0A20, MEMORY[0x1E695BE28]);
    sub_1C9A92048();
    (*(v2 + 8))(v4, v1);
    sub_1C97AE67C(&qword_1EC3C8D48, &qword_1EC3C8D38, &unk_1C9AA5520, v10);
    v11 = v15;
    sub_1C9A92008();
    sub_1C97A2CEC(&qword_1EC3C8D50, qword_1C9AA5530);
    swift_allocObject();
    v12 = sub_1C98E3778();
    (*(v16 + 8))(v8, v11);
    v19 = v12;
    sub_1C97AE67C(qword_1EC3C8D58, &qword_1EC3C8D50, qword_1C9AA5530, &unk_1C9AB4B80);
    v13 = sub_1C9A91F28();

    type metadata accessor for SharedAOPReportStream.Instance(v14);
    result = swift_allocObject();
    *(result + 16) = v13;
  }

  return result;
}

uint64_t sub_1C9835884()
{
  v3[2] = sub_1C983DFFC;
  v4 = v0;

  v1 = sub_1C97E30D0(sub_1C983DFC0, v3);

  return v1;
}

uint64_t sub_1C9835908()
{
  v3[2] = &v4;

  v1 = sub_1C98E2558(v0, sub_1C983DFE0, v3);

  return v1;
}

uint64_t sub_1C9835980()
{
  v3[2] = sub_1C983DF98;
  v4 = v0;

  v1 = sub_1C97E30F8(sub_1C983DFC0, v3);

  return v1;
}

uint64_t AOPClassificationDemo.Request.init(modelURL:enablePostProcessing:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  sub_1C9835A8C(a1, a3);
  result = type metadata accessor for AOPClassificationDemo.Request(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t sub_1C9835A8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C97A2CEC(&qword_1EC3C7FE0, &unk_1C9AA1890);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for AOPClassificationDemo.Request(uint64_t a1)
{
  result = qword_1EC3C8B48;
  if (!qword_1EC3C8B48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static AOPClassificationDemo.Request.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C9A91558();
  sub_1C97AE9C8();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  sub_1C97AEAD8();
  v10 = v9 - v8;
  v11 = sub_1C97A2CEC(&qword_1EC3C7FE0, &unk_1C9AA1890);
  sub_1C97DACE4(v11);
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v29 - v13;
  v15 = sub_1C97A2CEC(&qword_1EC3C8B08, &qword_1C9AA50D8);
  sub_1C97DACE4(v15);
  sub_1C97ABFF0();
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v29 - v18;
  v20 = *(v17 + 56);
  sub_1C9835DE0(a1, &v29 - v18);
  sub_1C9835DE0(a2, &v19[v20]);
  sub_1C983E180(v19);
  if (v21)
  {
    sub_1C983E180(&v19[v20]);
    if (v21)
    {
      sub_1C97DA1E0(v19, &qword_1EC3C7FE0, &unk_1C9AA1890);
LABEL_12:
      v27 = type metadata accessor for AOPClassificationDemo.Request(0);
      v22 = *(a1 + *(v27 + 20)) ^ *(a2 + *(v27 + 20)) ^ 1;
      return v22 & 1;
    }

    goto LABEL_9;
  }

  sub_1C9835DE0(v19, v14);
  sub_1C983E180(&v19[v20]);
  if (v21)
  {
    (*(v6 + 8))(v14, v4);
LABEL_9:
    sub_1C97DA1E0(v19, &qword_1EC3C8B08, &qword_1C9AA50D8);
    goto LABEL_10;
  }

  (*(v6 + 32))(v10, &v19[v20], v4);
  sub_1C983E0FC();
  sub_1C983DE88(v23, v24, MEMORY[0x1E6968FC8]);
  v25 = sub_1C9A92438();
  v26 = *(v6 + 8);
  v26(v10, v4);
  v26(v14, v4);
  sub_1C97DA1E0(v19, &qword_1EC3C7FE0, &unk_1C9AA1890);
  if (v25)
  {
    goto LABEL_12;
  }

LABEL_10:
  v22 = 0;
  return v22 & 1;
}

uint64_t sub_1C9835DE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C97A2CEC(&qword_1EC3C7FE0, &unk_1C9AA1890);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C9835E50(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4C52556C65646F6DLL && a2 == 0xE800000000000000;
  if (v4 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001C9AD62F0 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C9A93B18();

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

uint64_t sub_1C9835F20(char a1)
{
  if (a1)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0x4C52556C65646F6DLL;
  }
}

uint64_t sub_1C9835F64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C9835E50(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C9835F8C(uint64_t a1)
{
  v2 = sub_1C983619C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9835FC8(uint64_t a1)
{
  v2 = sub_1C983619C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AOPClassificationDemo.Request.encode(to:)(void *a1)
{
  v3 = sub_1C97A2CEC(&qword_1EC3C8B10, &qword_1C9AA50E0);
  sub_1C97AE9C8();
  v5 = v4;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v12[-v7];
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C983619C();
  sub_1C9A93DD8();
  v12[15] = 0;
  sub_1C9A91558();
  sub_1C983E0FC();
  sub_1C983DE88(v9, v10, MEMORY[0x1E6968FB8]);
  sub_1C9A939B8();
  if (!v1)
  {
    type metadata accessor for AOPClassificationDemo.Request(0);
    v12[14] = 1;
    sub_1C9A939D8();
  }

  return (*(v5 + 8))(v8, v3);
}

unint64_t sub_1C983619C()
{
  result = qword_1EC3C8B18;
  if (!qword_1EC3C8B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C8B18);
  }

  return result;
}

uint64_t AOPClassificationDemo.Request.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1C9A91558();
  sub_1C97AE9C8();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  sub_1C97AEAD8();
  v9 = v8 - v7;
  v10 = sub_1C97A2CEC(&qword_1EC3C7FE0, &unk_1C9AA1890);
  sub_1C97DACE4(v10);
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v19 - v12;
  sub_1C9835DE0(v2, &v19 - v12);
  v14 = sub_1C983E174();
  if (sub_1C97ABF20(v14, v15, v3) == 1)
  {
    sub_1C9A93CE8();
  }

  else
  {
    (*(v5 + 32))(v9, v13, v3);
    sub_1C9A93CE8();
    sub_1C983E0FC();
    sub_1C983DE88(v16, v17, MEMORY[0x1E6968FC0]);
    sub_1C9A92398();
    (*(v5 + 8))(v9, v3);
  }

  type metadata accessor for AOPClassificationDemo.Request(0);
  return sub_1C9A93CE8();
}

uint64_t AOPClassificationDemo.Request.hashValue.getter()
{
  v1 = v0;
  v2 = sub_1C9A91558();
  sub_1C97AE9C8();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  sub_1C97AEAD8();
  v8 = v7 - v6;
  v9 = sub_1C97A2CEC(&qword_1EC3C7FE0, &unk_1C9AA1890);
  sub_1C97DACE4(v9);
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v18 - v11;
  sub_1C9A93CC8();
  sub_1C9835DE0(v1, v12);
  v13 = sub_1C983E174();
  if (sub_1C97ABF20(v13, v14, v2) == 1)
  {
    sub_1C9A93CE8();
  }

  else
  {
    (*(v4 + 32))(v8, v12, v2);
    sub_1C9A93CE8();
    sub_1C983E0FC();
    sub_1C983DE88(v15, v16, MEMORY[0x1E6968FC0]);
    sub_1C9A92398();
    (*(v4 + 8))(v8, v2);
  }

  type metadata accessor for AOPClassificationDemo.Request(0);
  sub_1C9A93CE8();
  return sub_1C9A93D18();
}

uint64_t AOPClassificationDemo.Request.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v4 = sub_1C97A2CEC(&qword_1EC3C7FE0, &unk_1C9AA1890);
  sub_1C97DACE4(v4);
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v5);
  v27 = &v24 - v6;
  v7 = sub_1C97A2CEC(&qword_1EC3C8B20, &qword_1C9AA50E8);
  sub_1C97AE9C8();
  v26 = v8;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - v10;
  v12 = type metadata accessor for AOPClassificationDemo.Request(0);
  sub_1C97DA940();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C97AEAD8();
  v16 = v15 - v14;
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C983619C();
  sub_1C9A93DB8();
  if (v2)
  {
    return sub_1C97A592C(a1);
  }

  v17 = v16;
  v18 = v26;
  sub_1C9A91558();
  v29 = 0;
  sub_1C983E0FC();
  sub_1C983DE88(v19, v20, MEMORY[0x1E6968FD0]);
  v21 = v27;
  sub_1C9A93898();
  sub_1C9835A8C(v21, v17);
  v28 = 1;
  v22 = sub_1C9A938B8();
  (*(v18 + 8))(v11, v7);
  *(v17 + *(v12 + 20)) = v22 & 1;
  sub_1C9836A34(v17, v25);
  sub_1C97A592C(a1);
  return sub_1C983B42C(v17, type metadata accessor for AOPClassificationDemo.Request);
}

uint64_t sub_1C9836848(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_1C9A91558();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C97A2CEC(&qword_1EC3C7FE0, &unk_1C9AA1890);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v12 - v9;
  sub_1C9A93CC8();
  sub_1C9835DE0(v3, v10);
  if (sub_1C97ABF20(v10, 1, v4) == 1)
  {
    sub_1C9A93CE8();
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    sub_1C9A93CE8();
    sub_1C983DE88(&qword_1EC3C6BA0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
    sub_1C9A92398();
    (*(v5 + 8))(v7, v4);
  }

  sub_1C9A93CE8();
  return sub_1C9A93D18();
}

uint64_t sub_1C9836A34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AOPClassificationDemo.Request(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C9836AA4()
{
  v1 = *v0;

  sub_1C99DC144();
  v4[3] = sub_1C97A2CEC(&qword_1EC3C8C08, &unk_1C9AA5450);
  v4[4] = sub_1C983DE04();
  v4[0] = v1;
  sub_1C99DC184(v4, v2);

  return sub_1C97A592C(v4);
}

uint64_t sub_1C9836B38()
{
  sub_1C97AA884();
  *(v0 + 16) = v1;
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_1C9836BC8;

  return sub_1C988FB68();
}

uint64_t sub_1C9836BC8(uint64_t a1)
{
  sub_1C97AA890();
  v5 = v4;
  v6 = *v2;
  sub_1C97AA83C();
  *v7 = v6;
  *(v5 + 32) = a1;

  if (v1)
  {
    v8 = *(v6 + 8);

    return v8();
  }

  else
  {
    v10 = sub_1C97DA8BC();
    *(v5 + 40) = v10;
    *v10 = v6;
    v10[1] = sub_1C9836D40;

    return v11();
  }
}

uint64_t sub_1C9836D40(uint64_t a1)
{
  sub_1C97AA890();
  v5 = v4;
  v6 = *v2;
  sub_1C97AA83C();
  *v7 = v6;
  *(v5 + 48) = v1;

  if (!v1)
  {
    *(v5 + 56) = a1;
  }

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C9836E58()
{
  sub_1C97AA884();
  v1 = *(v0 + 56);
  v2 = *(v0 + 16);

  *v2 = v1;
  sub_1C97DA91C();

  return v3();
}

uint64_t sub_1C9836EC0()
{
  sub_1C97AA884();

  sub_1C97DA91C();

  return v0();
}

uint64_t sub_1C9836F34()
{
  sub_1C97AA884();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C97D9C3C;

  return sub_1C9836B38();
}

uint64_t sub_1C9836FD0@<X0>(char *a1@<X0>, void *a3@<X8>)
{
  if (qword_1EC3C5E08 != -1)
  {
    sub_1C983E114();
    swift_once();
  }

  memcpy(__dst, &qword_1EC3D33B0, 0x41uLL);
  memcpy(v11, &qword_1EC3D33B0, 0x41uLL);
  sub_1C98137F8();
  v6 = swift_allocObject();
  sub_1C983E150(v6);
  sub_1C98137F8();
  v7 = swift_allocObject();
  sub_1C983E150(v7);
  v17 = &unk_1F492E308;
  v18 = &off_1F492E690;
  sub_1C98137F8();
  v8 = swift_allocObject();
  v15 = v7;
  v16 = v8;
  sub_1C983E150(v8);
  v12 = sub_1C983E0CC;
  v13 = v6;
  v14 = sub_1C983E0E4;
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  sub_1C97A6264(__dst, v10);
  sub_1C98371B8(a1, v11, &v20);
  result = sub_1C97DA1E0(v11, &qword_1EC3C8B28, &qword_1C9AA5100);
  if (!v3)
  {
    *a3 = v20;
  }

  return result;
}

uint64_t sub_1C98371B8@<X0>(char *a1@<X0>, void (*a2)(char *, uint64_t)@<X1>, uint64_t *a3@<X8>)
{
  v153 = a2;
  v151 = a3;
  v130 = sub_1C97A2CEC(&qword_1EC3C7A10, &qword_1C9A9FE90);
  v129 = *(v130 - 8);
  MEMORY[0x1EEE9AC00](v130);
  v128 = &v109 - v4;
  v133 = sub_1C97A2CEC(&qword_1EC3C8C18, &qword_1C9AA5460);
  v132 = *(v133 - 8);
  MEMORY[0x1EEE9AC00](v133);
  v131 = &v109 - v5;
  v123 = sub_1C97A2CEC(&qword_1EC3C8C20, &qword_1C9AA5468);
  v121 = *(v123 - 8);
  MEMORY[0x1EEE9AC00](v123);
  v119 = &v109 - v6;
  v122 = sub_1C97A2CEC(&qword_1EC3C8C28, &qword_1C9AA5470);
  v120 = *(v122 - 8);
  MEMORY[0x1EEE9AC00](v122);
  v118 = &v109 - v7;
  v115 = sub_1C97A2CEC(&qword_1EC3C8C30, &qword_1C9AA5478);
  MEMORY[0x1EEE9AC00](v115);
  v114 = &v109 - v8;
  v124 = sub_1C97A2CEC(&qword_1EC3C8C38, &qword_1C9AA5480);
  v136 = *(v124 - 8);
  MEMORY[0x1EEE9AC00](v124);
  v134 = &v109 - v9;
  v126 = sub_1C97A2CEC(&qword_1EC3C8C40, &qword_1C9AA5488);
  v137 = *(v126 - 8);
  MEMORY[0x1EEE9AC00](v126);
  v125 = &v109 - v10;
  v117 = sub_1C97A2CEC(&qword_1EC3C8C48, &unk_1C9AA5490);
  v116 = *(v117 - 8);
  v11 = MEMORY[0x1EEE9AC00](v117);
  v127 = &v109 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v138 = &v109 - v13;
  v14 = sub_1C97A2CEC(&unk_1EC3C9910, &unk_1C9AA3410);
  v148 = *(v14 - 8);
  v149 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v146 = (&v109 - v15);
  v150 = sub_1C9A91C28();
  v147 = *(v150 - 8);
  MEMORY[0x1EEE9AC00](v150);
  v17 = &v109 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_1C97A2CEC(&qword_1EC3C8C50, &qword_1C9AA54A0);
  v111 = *(v112 - 1);
  MEMORY[0x1EEE9AC00](v112);
  v110 = &v109 - v18;
  v139 = sub_1C97A2CEC(&qword_1EC3C8C58, &qword_1C9AA54A8);
  v113 = *(v139 - 8);
  MEMORY[0x1EEE9AC00](v139);
  v135 = &v109 - v19;
  v20 = sub_1C97A2CEC(&qword_1EC3C8C60, &unk_1C9AA54B0);
  v140 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v109 - v21;
  v144 = sub_1C97A2CEC(&qword_1EC3C7A20, &qword_1C9A9FE98);
  v142 = *(v144 - 8);
  MEMORY[0x1EEE9AC00](v144);
  v152 = &v109 - v23;
  v145 = sub_1C97A2CEC(&qword_1EC3C8C68, &unk_1C9AA54C0);
  v143 = *(v145 - 8);
  MEMORY[0x1EEE9AC00](v145);
  v141 = &v109 - v24;
  v25 = sub_1C97A2CEC(&qword_1EC3C7FE0, &unk_1C9AA1890);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v27 = &v109 - v26;
  v28 = sub_1C9A91558();
  v29 = *(v28 - 8);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v32 = &v109 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v34 = &v109 - v33;
  v160 = sub_1C9A91748();
  v156 = *(v160 - 8);
  MEMORY[0x1EEE9AC00](v160);
  v155 = &v109 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C9A91738();
  sub_1C9835DE0(a1, v27);
  if (sub_1C97ABF20(v27, 1, v28) != 1)
  {
    v152 = a1;
    (*(v29 + 32))(v34, v27, v28);
    v40 = v154;
    v41 = sub_1C9880658();
    if (v40)
    {
      (*(v29 + 8))(v34, v28);
      v38 = v160;
      v39 = v155;
      return (*(v156 + 8))(v39, v38);
    }

    v58 = v41;
    v143 = v17;
    type metadata accessor for E5RTExecutionStream(0);
    swift_allocObject();
    v59 = sub_1C9880798(v58);
    type metadata accessor for E5RTExecutionStreamOperation(v60);
    v144 = v34;
    sub_1C9A913F8();
    v61 = sub_1C9A91508();
    v63 = v62;
    v64 = v32;
    v65 = *(v29 + 8);
    v145 = v28;
    v65(v64, v28);
    sub_1C98817E8(1852399981, 0xE400000000000000, v61, v63, 1852399981, 0xE400000000000000, 1, 1);
    v67 = v66;
    v142 = v59;

    sub_1C9882AF4(v67, 1);
    v68 = v144;
    v69 = v142;
    sub_1C9880DE8(v67);
    v70 = *(v153 + 9);
    memcpy(__dst, v153, 0x41uLL);
    v71 = sub_1C983BB80(v69, v67, &unk_1F492A050, __dst, v70);
    v141 = v67;
    v153 = v65;
    v72 = v152[*(type metadata accessor for AOPClassificationDemo.Request(0) + 20)];
    v154 = 0;
    v140 = v71;
    if (v72)
    {
      v73 = v110;
      sub_1C983A848(12, 11, v71);
      sub_1C97AE67C(&qword_1EC3C8C98, &qword_1EC3C8C50, &qword_1C9AA54A0, MEMORY[0x1E695BC80]);
      v74 = v112;
      sub_1C9A92008();
      v109 = sub_1C97A2CEC(&qword_1EC3C8CA0, &qword_1C9AA54D8);
      swift_allocObject();
      v75 = sub_1C98E3778();
      v152 = v75;
      (*(v111 + 8))(v73, v74);
      v157 = v75;
      v76 = v147;
      v77 = v143;
      (*(v147 + 104))(v143, *MEMORY[0x1E695BD20], v150);
      v78 = v146;
      *v146 = sub_1C983AAA4;
      *(v78 + 1) = 0;
      v80 = v148;
      v79 = v149;
      (*(v148 + 104))(v78, *MEMORY[0x1E695BD48], v149);
      sub_1C97AE67C(&qword_1EC3C8CA8, &qword_1EC3C8CA0, &qword_1C9AA54D8, &unk_1C9AB4B80);
      sub_1C9A92018();
      (*(v80 + 8))(v78, v79);
      (*(v76 + 8))(v77, v150);

      v152 = sub_1C97AE67C(&qword_1EC3C8CB0, &qword_1EC3C8C58, &qword_1C9AA54A8, MEMORY[0x1E695BDD8]);
      v81 = v134;
      sub_1C9A92048();
      v82 = sub_1C9A92838();
      *(v82 + 16) = 13;
      *(v82 + 32) = 0u;
      *(v82 + 48) = 0u;
      *(v82 + 64) = 0u;
      *(v82 + 80) = 0u;
      *(v82 + 96) = 0u;
      *(v82 + 112) = 0u;
      *(v82 + 128) = 0;
      v157 = v82;
      v83 = sub_1C97A2CEC(&qword_1EC3C8290, &qword_1C9AA2920);
      v149 = sub_1C97AE67C(&qword_1EC3C8CB8, &qword_1EC3C8C38, &qword_1C9AA5480, MEMORY[0x1E695BE28]);
      v150 = sub_1C97AE67C(&qword_1EC3C8CC0, &qword_1EC3C8290, &qword_1C9AA2920, MEMORY[0x1E69E6328]);
      v84 = v124;
      sub_1C9A92098();

      v148 = *(v136 + 8);
      v136 += 8;
      (v148)(v81, v84);
      v147 = sub_1C97AE67C(&qword_1EC3C8CC8, &qword_1EC3C8C40, &qword_1C9AA5488, MEMORY[0x1E695BCA8]);
      v146 = sub_1C983CF40;
      v85 = v114;
      v86 = v126;
      v111 = v83;
      sub_1C9A91F68();
      v87 = v115;
      *(v85 + *(v115 + 60)) = 14;
      *(v85 + v87[16]) = 1;
      *(v85 + v87[17]) = v83;
      *(swift_allocObject() + 16) = 4;
      v143 = sub_1C97AE67C(&qword_1EC3C8CD0, &qword_1EC3C8C30, &qword_1C9AA5478, &unk_1C9AB2030);
      sub_1C9A91F68();

      sub_1C97DA1E0(v85, &qword_1EC3C8C30, &qword_1C9AA5478);
      v88 = *(v137 + 8);
      v137 += 8;
      v112 = v88;
      v89 = v125;
      (v88)(v125, v86);
      sub_1C9A92048();
      v90 = sub_1C9A92838();
      *(v90 + 16) = 27;
      bzero((v90 + 32), 0xD8uLL);
      v157 = v90;
      v91 = v124;
      v92 = v111;
      v93 = v134;
      sub_1C9A92098();

      (v148)(v93, v91);
      v94 = v126;
      sub_1C9A91F68();
      *(v85 + v87[15]) = 28;
      *(v85 + v87[16]) = 1;
      *(v85 + v87[17]) = v92;
      *(swift_allocObject() + 16) = 9;
      sub_1C9A91F68();

      sub_1C97DA1E0(v85, &qword_1EC3C8C30, &qword_1C9AA5478);
      (v112)(v89, v94);
      v95 = MEMORY[0x1E695BD60];
      sub_1C97AE67C(&qword_1EC3C8CD8, &qword_1EC3C8C48, &unk_1C9AA5490, MEMORY[0x1E695BD60]);
      v96 = v119;
      v97 = v117;
      v98 = v135;
      sub_1C9A91F88();
      sub_1C97A2CEC(&qword_1EC3C82B8, &qword_1C9AA91F0);
      sub_1C97AE67C(&qword_1EC3C8CE0, &qword_1EC3C8C20, &qword_1C9AA5468, MEMORY[0x1E695BD90]);
      v99 = v118;
      v100 = v123;
      sub_1C9A91F68();
      (*(v121 + 8))(v96, v100);
      sub_1C97AE67C(&qword_1EC3C8CE8, &qword_1EC3C8C28, &qword_1C9AA5470, v95);
      v101 = v122;
      v102 = sub_1C9A91F28();
      (*(v120 + 8))(v99, v101);
      v103 = *(v116 + 8);
      v103(v127, v97);
      v103(v138, v97);
      (*(v113 + 8))(v98, v139);
    }

    else
    {
      v157 = v71;
      sub_1C97A2CEC(&qword_1EC3C84D0, &qword_1C9AA54D0);
      sub_1C97AE67C(&qword_1EC3C84D8, &qword_1EC3C84D0, &qword_1C9AA54D0, MEMORY[0x1E695BED8]);
      v102 = sub_1C9A91F28();
    }

    v157 = v102;

    sub_1C97A2CEC(&qword_1EC3C84D0, &qword_1C9AA54D0);
    sub_1C97BD318(v104, 0, &qword_1EC3CAE80, off_1E8345890);
    sub_1C97AE67C(&qword_1EC3C84D8, &qword_1EC3C84D0, &qword_1C9AA54D0, MEMORY[0x1E695BED8]);
    v105 = v128;
    sub_1C9A91F68();

    v157 = 0;
    v158 = 0xE000000000000000;
    sub_1C9A935B8();

    v157 = 0xD00000000000001FLL;
    v158 = 0x80000001C9AD6310;
    sub_1C983DE88(&qword_1EC3C5480, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v50 = v155;
    v51 = v160;
    v106 = sub_1C9A93A98();
    MEMORY[0x1CCA90230](v106);

    MEMORY[0x1CCA90230](8250, 0xE200000000000000);
    v107 = v131;
    sub_1C993B2B0();

    (*(v129 + 8))(v105, v130);
    sub_1C97AE67C(&qword_1EC3C8C90, &qword_1EC3C8C18, &qword_1C9AA5460, MEMORY[0x1E695BCC0]);
    v108 = v133;
    v56 = sub_1C9A91F28();

    (*(v132 + 8))(v107, v108);
    v153(v68, v145);
LABEL_7:
    result = (*(v156 + 8))(v50, v51);
    *v151 = v56;
    return result;
  }

  v36 = sub_1C97DA1E0(v27, &qword_1EC3C7FE0, &unk_1C9AA1890);
  v37 = v154;
  (*(v153 + 11))(v36);
  v154 = v37;
  if (!v37)
  {
    v42 = sub_1C9903378();

    v157 = v42;
    sub_1C97A2CEC(&qword_1EC3C8C70, &qword_1C9AB3140);
    sub_1C97BD318(v43, 0, &qword_1EC3CAE80, off_1E8345890);
    sub_1C97AE67C(&qword_1EC3C8C78, &qword_1EC3C8C70, &qword_1C9AB3140, MEMORY[0x1E695BED8]);
    sub_1C9A91F68();

    v44 = v147;
    v45 = v150;
    (*(v147 + 104))(v17, *MEMORY[0x1E695BD20], v150);
    v46 = v17;
    v47 = v146;
    *v146 = sub_1C983ADB4;
    *(v47 + 1) = 0;
    v49 = v148;
    v48 = v149;
    (*(v148 + 104))(v47, *MEMORY[0x1E695BD48], v149);
    sub_1C97AE67C(&qword_1EC3C8C80, &qword_1EC3C8C60, &unk_1C9AA54B0, MEMORY[0x1E695BD60]);
    sub_1C9A92018();
    (*(v49 + 8))(v47, v48);
    (*(v44 + 8))(v46, v45);
    (*(v140 + 1))(v22, v20);
    v157 = 0;
    v158 = 0xE000000000000000;
    sub_1C9A935B8();

    v157 = 0xD00000000000001FLL;
    v158 = 0x80000001C9AD6310;
    sub_1C983DE88(&qword_1EC3C5480, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v50 = v155;
    v51 = v160;
    v52 = sub_1C9A93A98();
    MEMORY[0x1CCA90230](v52);

    MEMORY[0x1CCA90230](8250, 0xE200000000000000);
    v53 = v141;
    v54 = v152;
    sub_1C993B3A4();

    (*(v142 + 8))(v54, v144);
    sub_1C97AE67C(&qword_1EC3C8C88, &qword_1EC3C8C68, &unk_1C9AA54C0, MEMORY[0x1E695BCC0]);
    v55 = v145;
    v56 = sub_1C9A91F28();
    (*(v143 + 8))(v53, v55);
    goto LABEL_7;
  }

  v38 = v160;
  v39 = v155;
  return (*(v156 + 8))(v39, v38);
}

uint64_t sub_1C9838D30@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v156 = a2;
  v154 = a3;
  v134 = sub_1C97A2CEC(&qword_1EC3C7A10, &qword_1C9A9FE90);
  v133 = *(v134 - 8);
  MEMORY[0x1EEE9AC00](v134);
  v132 = &v113 - v4;
  v137 = sub_1C97A2CEC(&qword_1EC3C8C18, &qword_1C9AA5460);
  v136 = *(v137 - 8);
  MEMORY[0x1EEE9AC00](v137);
  v135 = &v113 - v5;
  v128 = sub_1C97A2CEC(&qword_1EC3C8C20, &qword_1C9AA5468);
  v126 = *(v128 - 8);
  MEMORY[0x1EEE9AC00](v128);
  v124 = &v113 - v6;
  v127 = sub_1C97A2CEC(&qword_1EC3C8C28, &qword_1C9AA5470);
  v125 = *(v127 - 8);
  MEMORY[0x1EEE9AC00](v127);
  v123 = &v113 - v7;
  v119 = sub_1C97A2CEC(&qword_1EC3C8C30, &qword_1C9AA5478);
  MEMORY[0x1EEE9AC00](v119);
  v118 = &v113 - v8;
  v129 = sub_1C97A2CEC(&qword_1EC3C8C38, &qword_1C9AA5480);
  v138 = *(v129 - 8);
  MEMORY[0x1EEE9AC00](v129);
  v116 = &v113 - v9;
  v131 = sub_1C97A2CEC(&qword_1EC3C8C40, &qword_1C9AA5488);
  v139 = *(v131 - 8);
  MEMORY[0x1EEE9AC00](v131);
  v130 = &v113 - v10;
  v122 = sub_1C97A2CEC(&qword_1EC3C8C48, &unk_1C9AA5490);
  v121 = *(v122 - 8);
  v11 = MEMORY[0x1EEE9AC00](v122);
  v120 = &v113 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v140 = &v113 - v13;
  v14 = sub_1C97A2CEC(&unk_1EC3C9910, &unk_1C9AA3410);
  v152 = *(v14 - 8);
  v153 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v149 = (&v113 - v15);
  v16 = sub_1C9A91C28();
  v150 = *(v16 - 8);
  v151 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v113 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_1C97A2CEC(&qword_1EC3C8C50, &qword_1C9AA54A0);
  v114 = *(v115 - 1);
  MEMORY[0x1EEE9AC00](v115);
  v113 = &v113 - v19;
  v141 = sub_1C97A2CEC(&qword_1EC3C8C58, &qword_1C9AA54A8);
  v117 = *(v141 - 8);
  MEMORY[0x1EEE9AC00](v141);
  v142 = &v113 - v20;
  v21 = sub_1C97A2CEC(&qword_1EC3C8C60, &unk_1C9AA54B0);
  v143 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v113 - v22;
  v147 = sub_1C97A2CEC(&qword_1EC3C7A20, &qword_1C9A9FE98);
  v145 = *(v147 - 1);
  MEMORY[0x1EEE9AC00](v147);
  v155 = &v113 - v24;
  v148 = sub_1C97A2CEC(&qword_1EC3C8C68, &unk_1C9AA54C0);
  v146 = *(v148 - 8);
  MEMORY[0x1EEE9AC00](v148);
  v144 = &v113 - v25;
  v26 = sub_1C97A2CEC(&qword_1EC3C7FE0, &unk_1C9AA1890);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v28 = &v113 - v27;
  v29 = sub_1C9A91558();
  v30 = *(v29 - 8);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v33 = &v113 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v35 = &v113 - v34;
  v162 = sub_1C9A91748();
  v159 = *(v162 - 8);
  MEMORY[0x1EEE9AC00](v162);
  v158 = &v113 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C9A91738();
  sub_1C9835DE0(a1, v28);
  if (sub_1C97ABF20(v28, 1, v29) != 1)
  {
    v155 = a1;
    (*(v30 + 32))(v35, v28, v29);
    v41 = v157;
    v42 = sub_1C9880658();
    if (v41)
    {
      (*(v30 + 8))(v35, v29);
      v39 = v162;
      v40 = v158;
      return (*(v159 + 8))(v40, v39);
    }

    v59 = v42;
    v146 = v18;
    type metadata accessor for E5RTExecutionStream(0);
    swift_allocObject();
    v60 = sub_1C9880798(v59);
    type metadata accessor for E5RTExecutionStreamOperation(v61);
    v148 = v35;
    sub_1C9A913F8();
    v62 = sub_1C9A91508();
    v64 = v63;
    v65 = v33;
    v66 = v29;
    v147 = *(v30 + 8);
    v147(v65, v29);
    sub_1C98817E8(1852399981, 0xE400000000000000, v62, v64, 1852399981, 0xE400000000000000, 1, 1);
    v68 = v67;
    v144 = (v30 + 8);
    v145 = v60;

    sub_1C9882AF4(v68, 1);
    v69 = v148;
    v70 = v68;
    v71 = v68;
    v72 = v145;
    sub_1C9880DE8(v70);
    v73 = sub_1C983BFE0(v72, v71, &unk_1F492A050, *v156);
    v156 = v71;
    v74 = v155[*(type metadata accessor for AOPClassificationDemo.Request(0) + 20)];
    v157 = 0;
    if (v74)
    {
      v75 = v113;
      v143 = v73;
      sub_1C983A848(12, 11, v73);
      sub_1C97AE67C(&qword_1EC3C8C98, &qword_1EC3C8C50, &qword_1C9AA54A0, MEMORY[0x1E695BC80]);
      v76 = v115;
      sub_1C9A92008();
      sub_1C97A2CEC(&qword_1EC3C8CA0, &qword_1C9AA54D8);
      swift_allocObject();
      v77 = sub_1C98E3778();
      v155 = v77;
      (*(v114 + 8))(v75, v76);
      v160 = v77;
      v79 = v150;
      v78 = v151;
      v80 = v146;
      (*(v150 + 104))(v146, *MEMORY[0x1E695BD20], v151);
      v81 = v149;
      *v149 = sub_1C983AAA4;
      *(v81 + 1) = 0;
      v83 = v152;
      v82 = v153;
      (*(v152 + 104))(v81, *MEMORY[0x1E695BD48], v153);
      sub_1C97AE67C(&qword_1EC3C8CA8, &qword_1EC3C8CA0, &qword_1C9AA54D8, &unk_1C9AB4B80);
      sub_1C9A92018();
      (*(v83 + 8))(v81, v82);
      (*(v79 + 8))(v80, v78);

      v155 = sub_1C97AE67C(&qword_1EC3C8CB0, &qword_1EC3C8C58, &qword_1C9AA54A8, MEMORY[0x1E695BDD8]);
      v84 = v116;
      sub_1C9A92048();
      v85 = sub_1C9A92838();
      *(v85 + 16) = 13;
      *(v85 + 32) = 0u;
      *(v85 + 48) = 0u;
      *(v85 + 64) = 0u;
      *(v85 + 80) = 0u;
      *(v85 + 96) = 0u;
      *(v85 + 112) = 0u;
      *(v85 + 128) = 0;
      v160 = v85;
      v86 = sub_1C97A2CEC(&qword_1EC3C8290, &qword_1C9AA2920);
      v152 = sub_1C97AE67C(&qword_1EC3C8CB8, &qword_1EC3C8C38, &qword_1C9AA5480, MEMORY[0x1E695BE28]);
      v153 = sub_1C97AE67C(&qword_1EC3C8CC0, &qword_1EC3C8290, &qword_1C9AA2920, MEMORY[0x1E69E6328]);
      v87 = v129;
      sub_1C9A92098();

      v151 = *(v138 + 8);
      v138 += 8;
      v88 = v84;
      v151(v84, v87);
      v150 = sub_1C97AE67C(&qword_1EC3C8CC8, &qword_1EC3C8C40, &qword_1C9AA5488, MEMORY[0x1E695BCA8]);
      v149 = sub_1C983CF40;
      v89 = v118;
      v90 = v131;
      v114 = v86;
      sub_1C9A91F68();
      v91 = v119;
      *(v89 + *(v119 + 60)) = 14;
      *(v89 + v91[16]) = 1;
      *(v89 + v91[17]) = v86;
      *(swift_allocObject() + 16) = 4;
      v146 = sub_1C97AE67C(&qword_1EC3C8CD0, &qword_1EC3C8C30, &qword_1C9AA5478, &unk_1C9AB2030);
      sub_1C9A91F68();

      sub_1C97DA1E0(v89, &qword_1EC3C8C30, &qword_1C9AA5478);
      v92 = *(v139 + 8);
      v139 += 8;
      v115 = v92;
      v93 = v130;
      (v92)(v130, v90);
      v94 = v88;
      sub_1C9A92048();
      v95 = sub_1C9A92838();
      *(v95 + 16) = 27;
      bzero((v95 + 32), 0xD8uLL);
      v160 = v95;
      v96 = v129;
      v97 = v114;
      sub_1C9A92098();
      v69 = v148;

      v151(v94, v96);
      v98 = v131;
      sub_1C9A91F68();
      *(v89 + v91[15]) = 28;
      *(v89 + v91[16]) = 1;
      *(v89 + v91[17]) = v97;
      *(swift_allocObject() + 16) = 9;
      v99 = v120;
      sub_1C9A91F68();

      sub_1C97DA1E0(v89, &qword_1EC3C8C30, &qword_1C9AA5478);
      (v115)(v93, v98);
      v100 = MEMORY[0x1E695BD60];
      sub_1C97AE67C(&qword_1EC3C8CD8, &qword_1EC3C8C48, &unk_1C9AA5490, MEMORY[0x1E695BD60]);
      v101 = v124;
      v102 = v122;
      sub_1C9A91F88();
      sub_1C97A2CEC(&qword_1EC3C82B8, &qword_1C9AA91F0);
      sub_1C97AE67C(&qword_1EC3C8CE0, &qword_1EC3C8C20, &qword_1C9AA5468, MEMORY[0x1E695BD90]);
      v103 = v123;
      v104 = v128;
      sub_1C9A91F68();
      (*(v126 + 8))(v101, v104);
      sub_1C97AE67C(&qword_1EC3C8CE8, &qword_1EC3C8C28, &qword_1C9AA5470, v100);
      v105 = v127;
      v106 = sub_1C9A91F28();
      (*(v125 + 8))(v103, v105);
      v107 = *(v121 + 8);
      v107(v99, v102);
      v107(v140, v102);
      (*(v117 + 8))(v142, v141);
    }

    else
    {
      v160 = v73;
      sub_1C97A2CEC(&qword_1EC3C84D0, &qword_1C9AA54D0);
      sub_1C97AE67C(&qword_1EC3C84D8, &qword_1EC3C84D0, &qword_1C9AA54D0, MEMORY[0x1E695BED8]);
      v106 = sub_1C9A91F28();
    }

    v160 = v106;

    sub_1C97A2CEC(&qword_1EC3C84D0, &qword_1C9AA54D0);
    v155 = v106;
    sub_1C97BD318(v108, 0, &qword_1EC3CAE80, off_1E8345890);
    sub_1C97AE67C(&qword_1EC3C84D8, &qword_1EC3C84D0, &qword_1C9AA54D0, MEMORY[0x1E695BED8]);
    v109 = v132;
    sub_1C9A91F68();

    v160 = 0;
    v161 = 0xE000000000000000;
    sub_1C9A935B8();

    v160 = 0xD00000000000001FLL;
    v161 = 0x80000001C9AD6310;
    sub_1C983DE88(&qword_1EC3C5480, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v51 = v158;
    v52 = v162;
    v110 = sub_1C9A93A98();
    MEMORY[0x1CCA90230](v110);

    MEMORY[0x1CCA90230](8250, 0xE200000000000000);
    v111 = v135;
    sub_1C993B2B0();

    (*(v133 + 8))(v109, v134);
    sub_1C97AE67C(&qword_1EC3C8C90, &qword_1EC3C8C18, &qword_1C9AA5460, MEMORY[0x1E695BCC0]);
    v112 = v137;
    v57 = sub_1C9A91F28();

    (*(v136 + 8))(v111, v112);
    v147(v69, v66);
LABEL_7:
    result = (*(v159 + 8))(v51, v52);
    *v154 = v57;
    return result;
  }

  v37 = sub_1C97DA1E0(v28, &qword_1EC3C7FE0, &unk_1C9AA1890);
  v38 = v157;
  (*(v156 + 16))(v37);
  v157 = v38;
  if (!v38)
  {
    v43 = sub_1C9903378();

    v160 = v43;
    sub_1C97A2CEC(&qword_1EC3C8C70, &qword_1C9AB3140);
    sub_1C97BD318(v44, 0, &qword_1EC3CAE80, off_1E8345890);
    sub_1C97AE67C(&qword_1EC3C8C78, &qword_1EC3C8C70, &qword_1C9AB3140, MEMORY[0x1E695BED8]);
    sub_1C9A91F68();

    v46 = v150;
    v45 = v151;
    (*(v150 + 104))(v18, *MEMORY[0x1E695BD20], v151);
    v47 = v18;
    v48 = v149;
    *v149 = sub_1C983ADB4;
    *(v48 + 1) = 0;
    v50 = v152;
    v49 = v153;
    (*(v152 + 104))(v48, *MEMORY[0x1E695BD48], v153);
    sub_1C97AE67C(&qword_1EC3C8C80, &qword_1EC3C8C60, &unk_1C9AA54B0, MEMORY[0x1E695BD60]);
    sub_1C9A92018();
    (*(v50 + 8))(v48, v49);
    (*(v46 + 8))(v47, v45);
    (*(v143 + 1))(v23, v21);
    v160 = 0;
    v161 = 0xE000000000000000;
    sub_1C9A935B8();

    v160 = 0xD00000000000001FLL;
    v161 = 0x80000001C9AD6310;
    sub_1C983DE88(&qword_1EC3C5480, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v51 = v158;
    v52 = v162;
    v53 = sub_1C9A93A98();
    MEMORY[0x1CCA90230](v53);

    MEMORY[0x1CCA90230](8250, 0xE200000000000000);
    v54 = v144;
    v55 = v155;
    sub_1C993B3A4();

    (*(v145 + 8))(v55, v147);
    sub_1C97AE67C(&qword_1EC3C8C88, &qword_1EC3C8C68, &unk_1C9AA54C0, MEMORY[0x1E695BCC0]);
    v56 = v148;
    v57 = sub_1C9A91F28();
    (*(v146 + 8))(v54, v56);
    goto LABEL_7;
  }

  v39 = v162;
  v40 = v158;
  return (*(v159 + 8))(v40, v39);
}

uint64_t sub_1C983A7F8()
{
  sub_1C983C524();
  swift_allocError();
  *v0 = 1;
  return swift_willThrow();
}

uint64_t sub_1C983A848(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C97A2CEC(&qword_1EC3C8CF0, &qword_1C9AA54E0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v14 - v7;
  v14[1] = a3;
  sub_1C97A2CEC(&qword_1EC3C84D0, &qword_1C9AA54D0);
  sub_1C97A2CEC(&qword_1EC3C8CF8, &unk_1C9AA54E8);
  sub_1C97AE67C(&qword_1EC3C84D8, &qword_1EC3C84D0, &qword_1C9AA54D0, MEMORY[0x1E695BED8]);
  sub_1C9A91F68();
  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = sub_1C983CF98;
  v9[4] = 0;
  v10 = swift_allocObject();
  v10[2] = sub_1C983DED8;
  v10[3] = v9;
  v10[4] = a1;
  v11 = &v8[*(v6 + 52)];
  *v11 = sub_1C9911F58;
  *(v11 + 1) = 0;
  v12 = &v8[*(v6 + 56)];
  *v12 = sub_1C983DEE4;
  *(v12 + 1) = v10;
  sub_1C97A2CEC(&qword_1EC3C82B8, &qword_1C9AA91F0);
  sub_1C97AE67C(&qword_1EC3C8D00, &qword_1EC3C8CF0, &qword_1C9AA54E0, &unk_1C9AC4E90);
  sub_1C9A91F38();
  return sub_1C97DA1E0(v8, &qword_1EC3C8CF0, &qword_1C9AA54E0);
}

uint64_t sub_1C983AAA4@<X0>(uint64_t *a1@<X8>)
{
  sub_1C983C524();
  result = swift_allocError();
  *a1 = result;
  *v3 = 3;
  return result;
}

unint64_t sub_1C983AAEC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (*(*a1 + 16) && (result = sub_1C9A32230(0x636973756DLL, 0xE500000000000000), (v5 & 1) != 0))
  {
    *a2 = *(*(v3 + 56) + 8 * result);
  }

  else
  {
    sub_1C983C524();
    swift_allocError();
    *v6 = 4;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1C983AB80@<X0>(double *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[1];
  v4 = a1[2];
  *a2 = *a1;

  sub_1C97EE3D8(0x636973756DLL, 0xE500000000000000);
  v5 = *a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1C97EEC24(0x68735F636973756DLL, 0xEB0000000074726FLL, isUniquelyReferenced_nonNull_native, v3);
  *a2 = v5;
  v7 = swift_isUniquelyReferenced_nonNull_native();
  result = sub_1C97EEC24(0x6F6C5F636973756DLL, 0xEA0000000000676ELL, v7, v4);
  *a2 = v5;
  return result;
}

id sub_1C983AC5C@<X0>(uint64_t *a2@<X8>, double a3@<D0>)
{
  sub_1C97BD318(a3, 0, &qword_1EC3CAE80, off_1E8345890);
  sub_1C9878818();
  result = sub_1C983ACB8(v4);
  *a2 = result;
  return result;
}

id sub_1C983ACB8(uint64_t a1)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_1C97BD318(v2, 0, &qword_1EC3C54B0, 0x1E696AD98);
  v3 = sub_1C9A922F8();

  v4 = [v1 initWithClassificationDictionary_];

  return v4;
}

id sub_1C983AD50@<X0>(void *a2@<X8>, double a3@<D0>)
{
  sub_1C97BD318(a3, 0, &qword_1EC3CAE80, off_1E8345890);
  type metadata accessor for AOPClassificationResult(0);
  sub_1C9878818();
  result = sub_1C983ACB8(v4);
  *a2 = result;
  return result;
}

uint64_t sub_1C983ADB4@<X0>(uint64_t *a1@<X8>)
{
  sub_1C983DEF0();
  result = swift_allocError();
  *a1 = result;
  return result;
}

uint64_t run(_:)()
{
  sub_1C97AA884();
  v0[45] = v1;
  v0[46] = v2;
  v3 = type metadata accessor for RemoteRequest(0);
  v0[47] = v3;
  sub_1C97DACE4(v3);
  v0[48] = swift_task_alloc();
  v4 = sub_1C97A2CEC(&qword_1EC3C7FE0, &unk_1C9AA1890);
  sub_1C97DACE4(v4);
  v0[49] = swift_task_alloc();
  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

{
  sub_1C97AA884();
  v0[10] = v1;
  v0[11] = type metadata accessor for RemoteRequest(0);
  v0[12] = swift_task_alloc();
  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

{
  sub_1C97AA884();
  v0[7] = v1;
  v2 = type metadata accessor for AccessibilitySoundActions.Session(0);
  sub_1C97DACE4(v2);
  v0[8] = swift_task_alloc();
  v3 = type metadata accessor for RemoteRequest(0);
  v0[9] = v3;
  sub_1C97DACE4(v3);
  v0[10] = swift_task_alloc();
  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

{
  sub_1C97AA884();
  v0[61] = v1;
  v2 = type metadata accessor for AccessibilitySoundRecognition.Session(0);
  sub_1C97DACE4(v2);
  v0[62] = swift_task_alloc();
  v3 = type metadata accessor for RemoteRequest(0);
  v0[63] = v3;
  sub_1C97DACE4(v3);
  v0[64] = swift_task_alloc();
  sub_1C997138C();
  memcpy(v4, v5, v6);
  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C983AEB0()
{
  v21 = v0;
  v1 = *(v0 + 392);
  sub_1C9835DE0(*(v0 + 368), v1);
  sub_1C9A91558();
  v2 = sub_1C983E174();
  v5 = sub_1C97ABF20(v2, v3, v4);
  sub_1C97DA1E0(v1, &qword_1EC3C7FE0, &unk_1C9AA1890);
  if (v5 == 1)
  {
    v6 = *(v0 + 384);
    v7 = *(v0 + 368);
    *(v0 + 328) = &unk_1F492E330;
    *(v0 + 336) = &off_1F492E6A0;
    sub_1C97A5A8C((v0 + 304), &unk_1F492E330);
    sub_1C9836A34(v7, v6);
    swift_storeEnumTagMultiPayload();
    v8 = sub_1C97DA8BC();
    *(v0 + 400) = v8;
    *v8 = v0;
    v8[1] = sub_1C983B240;
    v9 = *(v0 + 384);

    return v19(v0 + 344, v9);
  }

  else
  {
    if (qword_1EC3C5D88 != -1)
    {
      swift_once();
    }

    v11 = qword_1EC3D3178;
    if (byte_1EC3D31A0)
    {
      *(v0 + 352) = qword_1EC3D3178;
      v12 = v11;
      sub_1C97A2CEC(&unk_1EC3CA040, &qword_1C9A9C750);
      swift_willThrowTypedImpl();

      sub_1C97DA91C();
    }

    else
    {
      v13 = qword_1EC3C5E08;

      if (v13 != -1)
      {
        sub_1C983E114();
        swift_once();
      }

      v14 = *(v0 + 368);
      memcpy((v0 + 160), &qword_1EC3D33B0, 0x41uLL);
      memcpy((v0 + 16), &qword_1EC3D33B0, 0x41uLL);
      sub_1C98137F8();
      v15 = swift_allocObject();
      sub_1C983E164(v15);
      sub_1C98137F8();
      v16 = swift_allocObject();
      sub_1C983E164(v16);
      *(v0 + 144) = &unk_1F492E308;
      *(v0 + 152) = &off_1F492E690;
      sub_1C98137F8();
      v17 = swift_allocObject();
      *(v0 + 112) = v16;
      *(v0 + 120) = v17;
      sub_1C983E164(v17);
      *(v0 + 88) = sub_1C983C4E4;
      *(v0 + 96) = v15;
      *(v0 + 104) = sub_1C983C500;
      swift_retain_n();
      swift_retain_n();
      swift_retain_n();
      sub_1C97A6264(v0 + 160, v0 + 232);
      sub_1C98371B8(v14, (v0 + 16), &v20);
      sub_1C97DA1E0(v0 + 16, &qword_1EC3C8B28, &qword_1C9AA5100);
      **(v0 + 360) = v20;

      sub_1C97DA91C();
    }

    return v18();
  }
}

uint64_t sub_1C983B240()
{
  sub_1C97AA884();
  sub_1C97AA890();
  v2 = *v1;
  sub_1C97AA83C();
  *v3 = v2;
  *(v4 + 408) = v0;

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C983B340()
{
  sub_1C97AA884();
  sub_1C983E128();
  v1 = *(v0 + 344);
  sub_1C97A592C((v0 + 304));
  **(v0 + 360) = v1;

  sub_1C97DA91C();

  return v2();
}

uint64_t sub_1C983B3BC()
{
  sub_1C97AA884();
  sub_1C983E128();
  sub_1C97A592C((v0 + 304));

  sub_1C97DA91C();

  return v1();
}

uint64_t sub_1C983B42C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C97DA940();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t run(_:file:)()
{
  sub_1C97AA884();
  v0[12] = v1;
  v0[13] = v2;
  v0[11] = v3;
  v4 = sub_1C97A2CEC(&qword_1EC3C7FE0, &unk_1C9AA1890);
  sub_1C97DACE4(v4);
  v0[14] = swift_task_alloc();
  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C983B518()
{
  v17 = v0;
  v1 = v0[14];
  sub_1C9835DE0(v0[12], v1);
  sub_1C9A91558();
  v2 = sub_1C983E174();
  v5 = sub_1C97ABF20(v2, v3, v4);
  sub_1C97DA1E0(v1, &qword_1EC3C7FE0, &unk_1C9AA1890);
  if (v5 == 1)
  {
    sub_1C983C524();
    swift_allocError();
    *v6 = 2;
    swift_willThrow();

    sub_1C97DA91C();
  }

  else
  {
    sub_1C983B718(v0[13], v15);
    v7 = v0[12];
    v8 = swift_allocObject();
    v9 = v15[1];
    v8[1] = v15[0];
    v8[2] = v9;
    v10 = v15[3];
    v8[3] = v15[2];
    v8[4] = v10;
    v11 = swift_allocObject();
    *(v11 + 16) = sub_1C983D1C8;
    *(v11 + 24) = v8;
    v0[9] = &unk_1F4937AE0;
    v0[10] = &off_1F4937AF0;
    v0[2] = sub_1C983D1E4;
    v0[3] = v11;
    v0[4] = sub_1C983A7F8;
    v0[5] = 0;
    sub_1C9838D30(v7, (v0 + 2), &v16);
    v14 = v0[11];
    sub_1C97DA1E0((v0 + 2), &qword_1EC3C8B38, &qword_1C9AA5110);
    *v14 = v16;

    sub_1C97DA91C();
  }

  return v12();
}

id sub_1C983B718@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v35 = a2;
  v38 = sub_1C97A2CEC(&qword_1EC3C8D10, &qword_1C9AA5500);
  sub_1C97DA940();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v3);
  v37 = &v34 - v4;
  sub_1C97A2CEC(&qword_1EC3C8D18, &qword_1C9AA5508);
  sub_1C97AE9C8();
  v39 = v6;
  v40 = v5;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v7);
  v36 = &v34 - v8;
  v9 = sub_1C9A91558();
  sub_1C97AE9C8();
  v11 = v10;
  v13 = *(v12 + 64);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v16 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v34 - v17;
  v19 = *(v11 + 16);
  v19(&v34 - v17, a1, v9);
  v20 = objc_allocWithZone(MEMORY[0x1E6958408]);
  v21 = v44;
  result = sub_1C99CA154(v18, 1, 0);
  if (!v21)
  {
    v23 = result;
    v44 = [result processingFormat];

    v19(v16, a1, v9);
    v24 = (*(v11 + 80) + 16) & ~*(v11 + 80);
    v25 = (v13 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
    v26 = swift_allocObject();
    (*(v11 + 32))(v26 + v24, v16, v9);
    v27 = v44;
    *(v26 + v25) = v44;
    v41 = sub_1C9812A50;
    v42 = v26;
    v43 = 2048;
    sub_1C983DF44();
    v28 = v27;
    v29 = v37;
    sub_1C9A92658();

    v30 = v38;
    v31 = (v29 + *(v38 + 52));
    *v31 = sub_1C9904AE0;
    v31[1] = 0;
    v32 = (v29 + *(v30 + 56));
    *v32 = sub_1C99D6968;
    v32[1] = 0;
    sub_1C97A2CEC(&unk_1EC3CA040, &qword_1C9A9C750);
    sub_1C97AE67C(&qword_1EC3C8D28, &qword_1EC3C8D10, &qword_1C9AA5500, &unk_1C9AC4E90);
    v33 = v36;
    sub_1C9A920E8();
    sub_1C97DA1E0(v29, &qword_1EC3C8D10, &qword_1C9AA5500);
    sub_1C999D290(v28, v35);

    return (*(v39 + 8))(v33, v40);
  }

  return result;
}

uint64_t sub_1C983BAD4(void *__src, uint64_t (*a2)(void *))
{
  memcpy(__dst, __src, 0x41uLL);
  *&__dst[9] = xmmword_1C9AA50C0;
  sub_1C97E2DB0(__src, v6);
  v4 = a2(__dst);
  memcpy(v6, __dst, sizeof(v6));
  sub_1C97DA1E0(v6, &unk_1EC3C9940, &unk_1C9AA5510);
  return v4;
}

char *sub_1C983BB80(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void *))
{
  v34 = a2;
  v35 = a3;
  v33 = a1;
  v29 = sub_1C97A2CEC(&unk_1EC3C9910, &unk_1C9AA3410);
  v27 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v9 = v24 - v8;
  v36 = sub_1C9A91C28();
  v10 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1C97A2CEC(&qword_1EC3C8240, &qword_1C9AA28E0);
  v31 = *(v13 - 8);
  v32 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v24 - v14;
  v30 = sub_1C97A2CEC(&qword_1EC3C99E0, &qword_1C9AA54F8);
  v28 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v17 = v24 - v16;
  v18 = sub_1C983BAD4(a4, a5);
  if (!v5)
  {
    v26 = v18;
    v25 = sub_1C98BF080();
    v37 = v25;
    v19 = v10;
    (*(v10 + 104))(v12, *MEMORY[0x1E695BD28], v36);
    v20 = v27;
    v21 = v29;
    (*(v27 + 104))(v9, *MEMORY[0x1E695BD40], v29);
    v24[1] = sub_1C97A2CEC(&unk_1EC3C7390, &unk_1C9A9C770);
    sub_1C97AE67C(&unk_1EC3C4AA0, &unk_1EC3C7390, &unk_1C9A9C770, MEMORY[0x1E695BED8]);
    sub_1C9A92018();
    (*(v20 + 8))(v9, v21);
    (*(v19 + 8))(v12, v36);

    sub_1C97A2CEC(&qword_1EC3C7C80, &qword_1C9AB6790);
    sub_1C97AE67C(&unk_1EC3C9950, &qword_1EC3C8240, &qword_1C9AA28E0, MEMORY[0x1E695BDD8]);
    v22 = v32;
    sub_1C9A91F68();
    (*(v31 + 8))(v15, v22);
    v9 = sub_1C9873E78(v33, v34, v35);
    (*(v28 + 8))(v17, v30);
  }

  return v9;
}

char *sub_1C983BFE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(__int128 *))
{
  v33 = a3;
  v39 = a2;
  v37 = a1;
  v6 = sub_1C97A2CEC(&unk_1EC3C9910, &unk_1C9AA3410);
  v30 = *(v6 - 8);
  v31 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v26 - v7;
  v9 = sub_1C9A91C28();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1C97A2CEC(&qword_1EC3C8240, &qword_1C9AA28E0);
  v35 = *(v13 - 8);
  v36 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v26 - v14;
  v34 = sub_1C97A2CEC(&qword_1EC3C99E0, &qword_1C9AA54F8);
  v32 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v17 = &v26 - v16;
  v38 = xmmword_1C9AA50C0;
  v18 = a4(&v38);
  if (!v4)
  {
    v29 = v18;
    v28 = sub_1C98BF080();
    *&v38 = v28;
    v19 = *MEMORY[0x1E695BD28];
    v20 = v10;
    v21 = *(v10 + 104);
    v27 = v9;
    v21(v12, v19, v9);
    v23 = v30;
    v22 = v31;
    (*(v30 + 104))(v8, *MEMORY[0x1E695BD40], v31);
    v26 = sub_1C97A2CEC(&unk_1EC3C7390, &unk_1C9A9C770);
    sub_1C97AE67C(&unk_1EC3C4AA0, &unk_1EC3C7390, &unk_1C9A9C770, MEMORY[0x1E695BED8]);
    sub_1C9A92018();
    (*(v23 + 8))(v8, v22);
    (*(v20 + 8))(v12, v27);

    sub_1C97A2CEC(&qword_1EC3C7C80, &qword_1C9AB6790);
    sub_1C97AE67C(&unk_1EC3C9950, &qword_1EC3C8240, &qword_1C9AA28E0, MEMORY[0x1E695BDD8]);
    v24 = v36;
    sub_1C9A91F68();
    (*(v35 + 8))(v15, v24);
    v8 = sub_1C9873E78(v37, v39, v33);
    (*(v32 + 8))(v17, v34);
  }

  return v8;
}

unint64_t sub_1C983C524()
{
  result = qword_1EC3C8B30;
  if (!qword_1EC3C8B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C8B30);
  }

  return result;
}

uint64_t sub_1C983C578(uint64_t a1, unint64_t a2)
{
  v4 = a1;

  sub_1C983C608(&v4);
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(v4 + 16) > a2)
  {
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1C983C608(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C98254D4(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1C983C674(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_1C983C674(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1C9A93A88();
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
        v6 = sub_1C9A92838();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1C983C7C4(v7, v8, a1, v4);
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
    return sub_1C983C768(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1C983C768(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 8 * a3 - 8;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 8 * a3);
      v8 = v6;
      v9 = v5;
      do
      {
        v10 = *v9;
        if (v7 >= *v9)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        *v9 = v7;
        v9[1] = v10;
        --v9;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 8;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1C983C7C4(double **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v80 = MEMORY[0x1E69E7CC0];
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x1E69E7CC0];
    v75 = a4;
    while (1)
    {
      v8 = v6 + 1;
      if (v6 + 1 < v5)
      {
        v9 = *(*a3 + 8 * v8);
        v10 = *(*a3 + 8 * v6);
        v11 = v6 + 2;
        v12 = v9;
        while (1)
        {
          v13 = v11;
          if (v11 >= v5)
          {
            break;
          }

          v14 = (v9 < v10) ^ (*(*a3 + 8 * v11++) >= v12);
          v12 = *(*a3 + 8 * v13);
          if ((v14 & 1) == 0)
          {
            v8 = v13;
            goto LABEL_9;
          }
        }

        v8 = v5;
LABEL_9:
        if (v9 < v10)
        {
          if (v8 < v6)
          {
            goto LABEL_108;
          }

          if (v6 < v8)
          {
            if (v5 >= v13)
            {
              v5 = v13;
            }

            v15 = 8 * v5 - 8;
            v16 = 8 * v6;
            v17 = v8;
            v18 = v6;
            do
            {
              if (v18 != --v17)
              {
                v19 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v20 = *(v19 + v16);
                *(v19 + v16) = *(v19 + v15);
                *(v19 + v15) = v20;
              }

              ++v18;
              v15 -= 8;
              v16 += 8;
            }

            while (v18 < v17);
            v5 = a3[1];
          }
        }
      }

      if (v8 < v5)
      {
        if (__OFSUB__(v8, v6))
        {
          goto LABEL_107;
        }

        if (v8 - v6 < a4)
        {
          if (__OFADD__(v6, a4))
          {
            goto LABEL_109;
          }

          if (v6 + a4 < v5)
          {
            v5 = v6 + a4;
          }

          if (v5 < v6)
          {
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
            return;
          }

          if (v8 != v5)
          {
            v21 = *a3;
            v22 = *a3 + 8 * v8 - 8;
            v23 = v6 - v8;
            do
            {
              v24 = *(v21 + 8 * v8);
              v25 = v23;
              v26 = v22;
              do
              {
                v27 = *v26;
                if (v24 >= *v26)
                {
                  break;
                }

                if (!v21)
                {
                  goto LABEL_111;
                }

                *v26 = v24;
                v26[1] = v27;
                --v26;
              }

              while (!__CFADD__(v25++, 1));
              ++v8;
              v22 += 8;
              --v23;
            }

            while (v8 != v5);
            v8 = v5;
          }
        }
      }

      if (v8 < v6)
      {
        goto LABEL_106;
      }

      v77 = v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C97E510C(0, v7[2] + 1, 1, v7);
        v7 = v73;
      }

      v30 = v7[2];
      v29 = v7[3];
      v31 = v30 + 1;
      if (v30 >= v29 >> 1)
      {
        sub_1C97E510C(v29 > 1, v30 + 1, 1, v7);
        v7 = v74;
      }

      v7[2] = v31;
      v32 = v7 + 4;
      v33 = &v7[2 * v30 + 4];
      *v33 = v6;
      v33[1] = v8;
      v78 = *result;
      if (!*result)
      {
        goto LABEL_114;
      }

      if (v30)
      {
        while (1)
        {
          v34 = v31 - 1;
          v35 = &v32[2 * v31 - 2];
          v36 = &v7[2 * v31];
          if (v31 >= 4)
          {
            break;
          }

          if (v31 == 3)
          {
            v37 = v7[4];
            v38 = v7[5];
            v47 = __OFSUB__(v38, v37);
            v39 = v38 - v37;
            v40 = v47;
LABEL_56:
            if (v40)
            {
              goto LABEL_96;
            }

            v52 = *v36;
            v51 = v36[1];
            v53 = __OFSUB__(v51, v52);
            v54 = v51 - v52;
            v55 = v53;
            if (v53)
            {
              goto LABEL_99;
            }

            v56 = v35[1];
            v57 = v56 - *v35;
            if (__OFSUB__(v56, *v35))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v54, v57))
            {
              goto LABEL_104;
            }

            if (v54 + v57 >= v39)
            {
              if (v39 < v57)
              {
                v34 = v31 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v31 < 2)
          {
            goto LABEL_98;
          }

          v59 = *v36;
          v58 = v36[1];
          v47 = __OFSUB__(v58, v59);
          v54 = v58 - v59;
          v55 = v47;
LABEL_71:
          if (v55)
          {
            goto LABEL_101;
          }

          v61 = *v35;
          v60 = v35[1];
          v47 = __OFSUB__(v60, v61);
          v62 = v60 - v61;
          if (v47)
          {
            goto LABEL_103;
          }

          if (v62 < v54)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v34 - 1 >= v31)
          {
            __break(1u);
LABEL_91:
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
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v66 = &v32[2 * v34 - 2];
          v67 = *v66;
          v68 = &v32[2 * v34];
          v69 = v68[1];
          sub_1C983CDA0((*a3 + 8 * *v66), (*a3 + 8 * *v68), (*a3 + 8 * v69), v78);
          if (v4)
          {
            goto LABEL_89;
          }

          if (v69 < v67)
          {
            goto LABEL_91;
          }

          v70 = v7;
          v71 = v7[2];
          if (v34 > v71)
          {
            goto LABEL_92;
          }

          *v66 = v67;
          v66[1] = v69;
          if (v34 >= v71)
          {
            goto LABEL_93;
          }

          v31 = v71 - 1;
          memmove(&v32[2 * v34], v68 + 2, 16 * (v71 - 1 - v34));
          v70[2] = v71 - 1;
          v72 = v71 > 2;
          v7 = v70;
          if (!v72)
          {
            goto LABEL_85;
          }
        }

        v41 = &v32[2 * v31];
        v42 = *(v41 - 8);
        v43 = *(v41 - 7);
        v47 = __OFSUB__(v43, v42);
        v44 = v43 - v42;
        if (v47)
        {
          goto LABEL_94;
        }

        v46 = *(v41 - 6);
        v45 = *(v41 - 5);
        v47 = __OFSUB__(v45, v46);
        v39 = v45 - v46;
        v40 = v47;
        if (v47)
        {
          goto LABEL_95;
        }

        v48 = v36[1];
        v49 = v48 - *v36;
        if (__OFSUB__(v48, *v36))
        {
          goto LABEL_97;
        }

        v47 = __OFADD__(v39, v49);
        v50 = v39 + v49;
        if (v47)
        {
          goto LABEL_100;
        }

        if (v50 >= v44)
        {
          v64 = *v35;
          v63 = v35[1];
          v47 = __OFSUB__(v63, v64);
          v65 = v63 - v64;
          if (v47)
          {
            goto LABEL_105;
          }

          if (v39 < v65)
          {
            v34 = v31 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v5 = a3[1];
      v6 = v77;
      a4 = v75;
      if (v77 >= v5)
      {
        v80 = v7;
        break;
      }
    }
  }

  if (!*result)
  {
    goto LABEL_115;
  }

  sub_1C983CC74(&v80, *result, a3);
LABEL_89:
}

uint64_t sub_1C983CC74(uint64_t *a1, double *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1C984A014(v5);
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
    sub_1C983CDA0((*a3 + 8 * *v9), (*a3 + 8 * *v11), (*a3 + 8 * v12), a2);
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

uint64_t sub_1C983CDA0(char *a1, char *a2, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 8;
  v9 = (a3 - a2) / 8;
  if (v8 < v9)
  {
    sub_1C978D33C(a1, (a2 - a1) / 8, a4);
    v10 = &v4[v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      v12 = *v6;
      if (*v6 >= *v4)
      {
        break;
      }

      v13 = v7 == v6++;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
    }

    v12 = *v4;
    v13 = v7 == v4++;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v12;
    goto LABEL_13;
  }

  sub_1C978D33C(a2, (a3 - a2) / 8, a4);
  v10 = &v4[v9];
LABEL_15:
  v14 = v6 - 1;
  for (--v5; v10 > v4 && v6 > v7; --v5)
  {
    v16 = *(v10 - 1);
    if (v16 < *v14)
    {
      v13 = v5 + 1 == v6--;
      if (!v13)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_15;
    }

    if (v10 != v5 + 1)
    {
      *v5 = v16;
    }

    --v10;
  }

LABEL_28:
  v17 = v10 - v4;
  if (v6 != v4 || v6 >= &v4[v17])
  {
    memmove(v6, v4, 8 * v17);
  }

  return 1;
}

uint64_t sub_1C983CF14@<X0>(uint64_t *a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  result = sub_1C983C578(*a1, a2);
  *a3 = v5;
  return result;
}

uint64_t sub_1C983CF6C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C983C490();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C983CF98@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C983C4AC(*a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1C983CFCC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C983C4DC();
  *a1 = result;
  return result;
}

uint64_t sub_1C983CFFC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (*a5)(uint64_t *__return_ptr, void *, uint64_t)@<X4>, uint64_t *a6@<X8>)
{
  result = sub_1C97D92B0(*a1, a1[1], a2, a3, a4, a5);
  *a6 = result;
  a6[1] = v8;
  return result;
}

void *sub_1C983D040@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, void *(*a3)(uint64_t *__return_ptr, void *, void, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  result = sub_1C97D90FC(*a1, a1[1], a2, a3, a4, a5);
  *a6 = result;
  a6[1] = v8;
  return result;
}

uint64_t sub_1C983D080@<X0>(uint64_t *a1@<X0>, void (*a2)(uint64_t *__return_ptr, uint64_t *)@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X8>)
{
  result = sub_1C97E46A4(*a1, a2, a3, *a4);
  if (!v5)
  {
    *a5 = result;
  }

  return result;
}

uint64_t sub_1C983D0B4@<X0>(uint64_t *a1@<X8>, uint64_t *a2@<X0>)
{
  result = sub_1C9835A04(*a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1C983D0E8@<X0>(uint64_t *a1@<X8>, uint64_t *a2@<X0>, void (*a3)(uint64_t *__return_ptr)@<X1>, uint64_t a4@<X2>)
{
  result = sub_1C97E8438(*a2, a3, a4);
  if (!v4)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1C983D118@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C9835A2C();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1C983D164@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C983C448();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AOPClassificationDemo(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

void sub_1C983D330(uint64_t a1)
{
  sub_1C983D3A4(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1C983D3A4(uint64_t a1)
{
  if (!qword_1EC3C8B58[0])
  {
    sub_1C9A91558();
    v1 = sub_1C9A93258();
    if (!v2)
    {
      atomic_store(v1, qword_1EC3C8B58);
    }
  }
}

uint64_t *initializeBufferWithCopyOfBuffer for AOPClassificationDemo.Session(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *assignWithCopy for AOPClassificationDemo.Session(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *assignWithTake for AOPClassificationDemo.Session(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for AOPClassificationDemo.Session(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for AOPClassificationDemo.Session(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AOPClassificationDemo.DomainError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C983D614(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      result = sub_1C983DB24();
      if (v4 <= 0x3F)
      {
        result = sub_1C983DB6C();
        if (v5 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1C983D6D0(uint64_t result, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(*(v5 - 8) + 84);
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  if (v9 <= v6)
  {
    v10 = *(*(v5 - 8) + 84);
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(v8 + 80);
  if (v10 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = v10;
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(*(v5 - 8) + 64) + v11;
  v14 = *(*(v7 - 8) + 64) + 7;
  if (v12 >= a2)
  {
LABEL_28:
    if (v6 != v12)
    {
      result = (v13 + result) & ~v11;
      if (v9 != v12)
      {
        v24 = *((v14 + result) & 0xFFFFFFFFFFFFFFF8);
        if (v24 >= 0xFFFFFFFF)
        {
          LODWORD(v24) = -1;
        }

        return (v24 + 1);
      }

      v6 = v9;
      v5 = v7;
    }

    return sub_1C97ABF20(result, v6, v5);
  }

  v15 = ((((((v14 + (v13 & ~v11)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 40;
  v16 = a2 - v12;
  v17 = v15 & 0xFFFFFFF8;
  if ((v15 & 0xFFFFFFF8) != 0)
  {
    v18 = 2;
  }

  else
  {
    v18 = v16 + 1;
  }

  if (v18 >= 0x10000)
  {
    v19 = 4;
  }

  else
  {
    v19 = 2;
  }

  if (v18 < 0x100)
  {
    v19 = 1;
  }

  if (v18 >= 2)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  switch(v20)
  {
    case 1:
      v21 = *(result + v15);
      if (!v21)
      {
        goto LABEL_28;
      }

      goto LABEL_25;
    case 2:
      v21 = *(result + v15);
      if (!v21)
      {
        goto LABEL_28;
      }

      goto LABEL_25;
    case 3:
      __break(1u);
      return result;
    case 4:
      v21 = *(result + v15);
      if (!v21)
      {
        goto LABEL_28;
      }

LABEL_25:
      v22 = v21 - 1;
      if (v17)
      {
        v22 = 0;
        v23 = *result;
      }

      else
      {
        v23 = 0;
      }

      result = v12 + (v23 | v22) + 1;
      break;
    default:
      goto LABEL_28;
  }

  return result;
}

void sub_1C983D8A4(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = a1;
  v7 = *(a4 + 16);
  v8 = *(*(v7 - 8) + 84);
  v9 = *(a4 + 24);
  v10 = *(v9 - 8);
  v11 = *(v10 + 84);
  if (v11 <= v8)
  {
    v12 = *(*(v7 - 8) + 84);
  }

  else
  {
    v12 = *(v10 + 84);
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  v13 = *(v10 + 80);
  v14 = *(*(v7 - 8) + 64) + v13;
  v15 = v14 & ~v13;
  v16 = *(*(v9 - 8) + 64) + 7;
  v17 = ((((((v16 + v15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 40;
  if (v12 >= a3)
  {
    v21 = 0;
  }

  else
  {
    v18 = a3 - v12;
    if (((((((v16 + v15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFD8)
    {
      v19 = v18 + 1;
    }

    else
    {
      v19 = 2;
    }

    if (v19 >= 0x10000)
    {
      v20 = 4;
    }

    else
    {
      v20 = 2;
    }

    if (v19 < 0x100)
    {
      v20 = 1;
    }

    if (v19 >= 2)
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }
  }

  if (a2 <= v12)
  {
    switch(v21)
    {
      case 1:
        a1[v17] = 0;
        if (a2)
        {
          goto LABEL_34;
        }

        return;
      case 2:
        *&a1[v17] = 0;
        if (a2)
        {
          goto LABEL_34;
        }

        return;
      case 3:
LABEL_47:
        __break(1u);
        return;
      case 4:
        *&a1[v17] = 0;
        goto LABEL_33;
      default:
LABEL_33:
        if (!a2)
        {
          return;
        }

LABEL_34:
        if (v8 == v12)
        {
          goto LABEL_37;
        }

        a1 = (&a1[v14] & ~v13);
        if (v11 == v12)
        {
          v8 = v11;
          v7 = v9;
LABEL_37:

          sub_1C97ACC50(a1, a2, v8, v7);
        }

        else
        {
          v24 = (&a1[v16] & 0xFFFFFFFFFFFFFFF8);
          if ((a2 & 0x80000000) != 0)
          {
            v25 = a2 & 0x7FFFFFFF;
            v24[1] = 0;
          }

          else
          {
            v25 = (a2 - 1);
          }

          *v24 = v25;
        }

        break;
    }
  }

  else
  {
    if (((((((v16 + v15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFD8)
    {
      v22 = a2 - v12;
    }

    else
    {
      v22 = 1;
    }

    if (((((((v16 + v15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFD8)
    {
      v23 = ~v12 + a2;
      bzero(a1, ((((((v16 + v15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 40);
      *v6 = v23;
    }

    switch(v21)
    {
      case 1:
        *(v6 + v17) = v22;
        break;
      case 2:
        *(v6 + v17) = v22;
        break;
      case 3:
        goto LABEL_47;
      case 4:
        *(v6 + v17) = v22;
        break;
      default:
        return;
    }
  }
}

unint64_t sub_1C983DB24()
{
  result = qword_1EC3C49F0;
  if (!qword_1EC3C49F0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1EC3C49F0);
  }

  return result;
}

unint64_t sub_1C983DB6C()
{
  result = qword_1EC3C8BE0;
  if (!qword_1EC3C8BE0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EC3C8BE0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AOPClassificationDemo.Request.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C983DCA8()
{
  result = qword_1EC3C8BE8;
  if (!qword_1EC3C8BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C8BE8);
  }

  return result;
}

unint64_t sub_1C983DD00()
{
  result = qword_1EC3C8BF0;
  if (!qword_1EC3C8BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C8BF0);
  }

  return result;
}

unint64_t sub_1C983DD58()
{
  result = qword_1EC3C8BF8;
  if (!qword_1EC3C8BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C8BF8);
  }

  return result;
}

unint64_t sub_1C983DDB0()
{
  result = qword_1EC3C8C00;
  if (!qword_1EC3C8C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C8C00);
  }

  return result;
}

unint64_t sub_1C983DE04()
{
  result = qword_1EC3C8C10;
  if (!qword_1EC3C8C10)
  {
    sub_1C97AA4F0(&qword_1EC3C8C08, &unk_1C9AA5450);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C8C10);
  }

  return result;
}

uint64_t sub_1C983DE88(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1C983DEF0()
{
  result = qword_1EC3C8D08;
  if (!qword_1EC3C8D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C8D08);
  }

  return result;
}

unint64_t sub_1C983DF44()
{
  result = qword_1EC3C8D20;
  if (!qword_1EC3C8D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C8D20);
  }

  return result;
}

uint64_t sub_1C983E06C()
{

  sub_1C98137F8();

  return swift_deallocObject();
}

uint64_t sub_1C983E128()
{
  v2 = *(v0 + 384);

  return sub_1C983B42C(v2, type metadata accessor for RemoteRequest);
}

__n128 sub_1C983E150(uint64_t a1)
{
  result = *v1;
  v3 = *(v1 + 16);
  *(a1 + 16) = *v1;
  *(a1 + 32) = v3;
  *(a1 + 48) = *(v1 + 32);
  return result;
}

uint64_t sub_1C983E164(uint64_t result)
{
  *(result + 16) = v2;
  *(result + 24) = v4;
  *(result + 32) = v5;
  *(result + 40) = v3;
  *(result + 48) = v1;
  return result;
}

uint64_t sub_1C983E1E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = v4[3];
  v10 = v4[4];
  sub_1C97A5A8C(v4, v9);
  return sub_1C983E270(a1, a2, v9, a4, *(a3 + 16), v10);
}

uint64_t sub_1C983E2EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  swift_getAssociatedTypeWitness();
  sub_1C9A92458();
  sub_1C9A92458();
  swift_dynamicCast();
  return a3();
}

uint64_t sub_1C983E3CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C983E408(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C983E448(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_1C983E4A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[12] = a2;
  v3[13] = a3;
  v3[11] = a1;
  return sub_1C97DA66C();
}

uint64_t sub_1C983E4C0()
{
  sub_1C97AA95C();
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  v0[2] = v0;
  v0[7] = v0 + 10;
  v0[3] = sub_1C983E570;
  v4 = swift_continuation_init();
  sub_1C983E69C(v4, v3, v2, v1);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1C983E570()
{
  sub_1C97AA95C();
  sub_1C981E01C();
  *v2 = v1;
  v3 = *v0;
  *v2 = *v0;
  if (*(v4 + 48))
  {
    swift_willThrow();
    sub_1C9840CB0();

    return v5();
  }

  else
  {
    v7 = *(v1 + 80);
    v8 = *(v3 + 8);

    return v8(v7);
  }
}

void sub_1C983E69C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = [objc_allocWithZone(MEMORY[0x1E6999498]) init];
  sub_1C9840944(a2, a3, v8);
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  v11[4] = sub_1C9840ABC;
  v11[5] = v9;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1C983E8AC;
  v11[3] = &unk_1F4933BF0;
  v10 = _Block_copy(v11);

  [v8 setCompletionHandler_];
  _Block_release(v10);
  [a4 performQuery_];
}

uint64_t sub_1C983E7C4(void *a1, void *a2, uint64_t a3)
{
  result = sub_1C9A92A48();
  if ((result & 1) == 0)
  {
    if (a1)
    {
      **(*(a3 + 64) + 40) = a1;
      v7 = a1;

      return swift_continuation_throwingResume();
    }

    else if (a2)
    {
      sub_1C97A2CEC(&unk_1EC3CA040, &qword_1C9A9C750);
      swift_allocError();
      *v8 = a2;
      v9 = a2;

      return swift_continuation_throwingResumeWithError();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_1C983E8AC(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_1C983E94C()
{
  sub_1C97AA95C();
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 16;
  v6 = v0[17];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_1C983EA90;
  v7 = swift_continuation_init();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v1[14] = sub_1C9840A70;
  v1[15] = v8;
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_1C983ECA8;
  v1[13] = &unk_1F4933BA0;
  v9 = _Block_copy(v4);

  [v6 getIdentitiesWithCompletion_];
  _Block_release(v9);

  return MEMORY[0x1EEE6DEC8](v3);
}

uint64_t sub_1C983EA90()
{
  sub_1C97AA95C();
  sub_1C981E01C();
  *v2 = v1;
  v3 = *v0;
  *v2 = *v0;
  if (*(v4 + 48))
  {
    swift_willThrow();
    sub_1C9840CB0();

    return v5();
  }

  else
  {
    v7 = *(v1 + 128);
    v8 = *(v3 + 8);

    return v8(v7);
  }
}

uint64_t sub_1C983EBBC(uint64_t a1, void *a2, uint64_t a3)
{
  result = sub_1C9A92A48();
  if ((result & 1) == 0)
  {
    if (a1)
    {
      **(*(a3 + 64) + 40) = a1;

      return swift_continuation_throwingResume();
    }

    else if (a2)
    {
      sub_1C97A2CEC(&unk_1EC3CA040, &qword_1C9A9C750);
      swift_allocError();
      *v7 = a2;
      v8 = a2;

      return swift_continuation_throwingResumeWithError();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1C983ECA8(uint64_t a1, uint64_t a2, void *a3, double a4)
{
  v5 = a2;
  v6 = *(a1 + 32);
  if (a2)
  {
    sub_1C9840A78(a4);
    v5 = sub_1C9A92798();
  }

  v7 = a3;
  v6(v5, a3);
}

uint64_t sub_1C983ED3C()
{
  sub_1C97AA884();
  v2 = v1;
  v0[2] = v3;
  v0[3] = v4;
  v5 = swift_task_alloc();
  v0[4] = v5;
  *v5 = v0;
  v5[1] = sub_1C983EDD0;

  return sub_1C983E938(v2);
}

uint64_t sub_1C983EDD0()
{
  sub_1C97AA884();
  sub_1C97AA890();
  sub_1C981E01C();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 40) = v4;

  if (v0)
  {
    sub_1C97DA91C();

    return v5();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1C983EEF0, 0, 0);
  }
}

void sub_1C983EEF0()
{
  v1 = v0[5];
  v2 = v0[3];
  v3 = sub_1C97BDEE0();
  for (i = 0; v3 != i; ++i)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1CCA912B0](i, v0[5]);
    }

    else
    {
      if (i >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_22;
      }

      v5 = *(v1 + 32 + 8 * i);
    }

    v6 = v5;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
      return;
    }

    v7 = sub_1C9A21160(v5);
    if (!v8)
    {
LABEL_13:

      continue;
    }

    if (v7 == v0[2] && v8 == v2)
    {
    }

    else
    {
      v10 = sub_1C9A93B18();

      if ((v10 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    sub_1C9A93678();
    sub_1C9A936A8();
    sub_1C9A936B8();
    sub_1C9A93688();
  }

  sub_1C9840CC0();

  v11();
}

uint64_t sub_1C983F074()
{
  sub_1C97AA95C();
  v0[3] = v1;
  v0[4] = v2;
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_1C983F120;

  return sub_1C983ED3C();
}

uint64_t sub_1C983F120()
{
  sub_1C97AA884();
  sub_1C97AA890();
  sub_1C981E01C();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 48) = v4;

  if (v0)
  {
    sub_1C97DA91C();

    return v5();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1C983F240, 0, 0);
  }
}

uint64_t sub_1C983F240()
{
  v2 = sub_1C97BDEE0();
  if (v2 == 1)
  {
    if (sub_1C97BDEE0())
    {
      v3 = v1[6] & 0xC000000000000001;
      sub_1C97C4F68();
      v0 = v1[6];
      if (!v3)
      {
        v4 = *(v0 + 32);
LABEL_5:

        sub_1C9840CC0();

        return v5(v4);
      }
    }

    else
    {
      __break(1u);
    }

    v4 = MEMORY[0x1CCA912B0](0, v0);
    goto LABEL_5;
  }

  v7 = v2;
  v9 = v1[3];
  v8 = v1[4];

  type metadata accessor for SNError(v10);
  sub_1C9A935B8();

  MEMORY[0x1CCA90230](v9, v8);
  MEMORY[0x1CCA90230](0x20646E756F66203BLL, 0xE800000000000000);
  v1[2] = v7;
  v11 = sub_1C9A93A98();
  MEMORY[0x1CCA90230](v11);

  sub_1C9840C80(0xD00000000000001FLL, "com.apple.SoundAnalysis");

  swift_willThrow();
  sub_1C97DA91C();

  return v12();
}

uint64_t sub_1C983F420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[22] = a5;
  v6[23] = a6;
  v6[20] = a3;
  v6[21] = a4;
  v6[18] = a1;
  v6[19] = a2;
  return sub_1C97DA66C();
}

uint64_t sub_1C983F43C()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 16;
  v6 = v0[23];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_1C983F60C;
  v7 = swift_continuation_init();
  v8 = sub_1C9A92478();
  v9 = sub_1C9A922F8();
  v10 = sub_1C9A92478();
  v11 = swift_allocObject();
  *(v11 + 16) = v7;
  v1[14] = sub_1C9840A50;
  v1[15] = v11;
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_1C983F818;
  v1[13] = &unk_1F4933B50;
  v12 = _Block_copy(v4);

  [v6 sendRequestID:v8 request:v9 destinationID:v10 options:0 responseHandler:v12];
  _Block_release(v12);

  return MEMORY[0x1EEE6DEC8](v3);
}

uint64_t sub_1C983F60C()
{
  sub_1C97AA95C();
  sub_1C981E01C();
  *v2 = v1;
  v3 = *v0;
  *v2 = *v0;
  if (*(v4 + 48))
  {
    swift_willThrow();
    sub_1C9840CB0();

    return v5();
  }

  else
  {
    v7 = *(v1 + 128);
    v8 = *(v1 + 136);
    v9 = *(v3 + 8);

    return v9(v7, v8);
  }
}

uint64_t sub_1C983F738(uint64_t result, uint64_t a2, void *a3, uint64_t a4)
{
  if (result)
  {
    if (a2)
    {
      v4 = *(*(a4 + 64) + 40);
      *v4 = result;
      v4[1] = a2;

      return swift_continuation_throwingResume();
    }

    __break(1u);
LABEL_11:
    __break(1u);
    return result;
  }

  if (!a3)
  {
    goto LABEL_11;
  }

  sub_1C97A2CEC(&unk_1EC3CA040, &qword_1C9A9C750);
  swift_allocError();
  *v6 = a3;
  v7 = a3;

  return swift_continuation_throwingResumeWithError();
}

uint64_t sub_1C983F818(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v6 = *(a1 + 32);
  if (a2)
  {
    v7 = sub_1C9A92328();
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7 = 0;
  if (a3)
  {
LABEL_3:
    v5 = sub_1C9A92328();
  }

LABEL_4:

  v8 = a4;
  v6(v7, v5, a4);
}

id sub_1C983F8FC(void *a1)
{
  v2 = sub_1C984099C(a1, &selRef_identifier);
  if (!v3)
  {
    goto LABEL_13;
  }

  v5 = v2;
  v6 = v3;
  v7 = sub_1C9A2116C(a1);
  if (!v8)
  {
LABEL_12:

LABEL_13:
    type metadata accessor for SNError(v4);
    sub_1C9929478(0xD000000000000017, 0x80000001C9AD4AA0, 2, 0, 0xD000000000000028, 0x80000001C9AD6440);
    return swift_willThrow();
  }

  v9 = v7;
  v10 = v8;
  v11 = sub_1C984099C(a1, &selRef_model);
  if (!v12)
  {

    goto LABEL_12;
  }

  v13 = v12;
  v24 = v11;
  v14 = sub_1C984099C(a1, &selRef_name);
  if (v15)
  {
    v17 = v14;
  }

  else
  {
    v17 = 0x6E776F6E6B6E753CLL;
  }

  if (v15)
  {
    v18 = v15;
  }

  else
  {
    v18 = 0xE90000000000003ELL;
  }

  v19 = type metadata accessor for SNFileServerInfo(v16);
  v20 = objc_allocWithZone(v19);
  v21 = &v20[OBJC_IVAR___SNFileServerInfo_impl];
  *v21 = v5;
  *(v21 + 1) = v6;
  *(v21 + 2) = v9;
  *(v21 + 3) = v10;
  *(v21 + 4) = v24;
  *(v21 + 5) = v13;
  *(v21 + 6) = v17;
  *(v21 + 7) = v18;
  v23.receiver = v20;
  v23.super_class = v19;
  return objc_msgSendSuper2(&v23, sel_init);
}

id sub_1C983FA80(id a1, void *a2)
{
  v4 = sub_1C983F8FC(a2);
  if (!v2)
  {
    v5 = v4;
    v6 = *&v4[OBJC_IVAR___SNFileServerInfo_impl + 48];
    v8 = *&v4[OBJC_IVAR___SNFileServerInfo_impl];
    v7 = *&v4[OBJC_IVAR___SNFileServerInfo_impl + 16];
    v22 = *&v4[OBJC_IVAR___SNFileServerInfo_impl + 32];
    v23 = v6;
    v20 = v8;
    v21 = v7;
    type metadata accessor for SNFileSharingUtils(*&v22);
    v9 = sub_1C983FB94(a1) & 1;
    v11 = type metadata accessor for SNFileServerDiscoveryResult(v10);
    v12 = objc_allocWithZone(v11);
    v13 = &v12[OBJC_IVAR___SNFileServerDiscoveryResult_impl];
    v15 = v22;
    v14 = v23;
    v16 = v21;
    *v13 = v20;
    *(v13 + 1) = v16;
    *(v13 + 2) = v15;
    *(v13 + 3) = v14;
    v13[64] = v9;
    sub_1C9840AC4(&v20, v19);
    v18.receiver = v12;
    v18.super_class = v11;
    a1 = objc_msgSendSuper2(&v18, sel_init);
  }

  return a1;
}

unint64_t sub_1C983FB94(unint64_t result)
{
  if (result >= 2)
  {
    sub_1C98409FC();
    swift_allocError();
    *v1 = 2;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1C983FBF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[21] = a3;
  v4[22] = v3;
  v4[19] = a1;
  v4[20] = a2;
  return sub_1C97DA66C();
}

uint64_t sub_1C983FC0C()
{
  sub_1C97AA884();
  v1 = sub_1C9A92348();
  v0[23] = v1;
  v2 = swift_task_alloc();
  v0[24] = v2;
  *v2 = v0;
  v2[1] = sub_1C983FCE8;
  v3 = v0[20];
  v4 = v0[21];
  v5 = v0[19];

  return sub_1C983F420(0xD000000000000012, 0x80000001C9AD64A0, v1, v5, v3, v4);
}

uint64_t sub_1C983FCE8()
{
  sub_1C97AA95C();
  sub_1C97AA890();
  *(v2 + 200) = v1;
  *(v2 + 208) = v0;

  if (v0)
  {
    v3 = sub_1C983FF30;
  }

  else
  {

    v3 = sub_1C983FE14;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

void sub_1C983FE14()
{
  sub_1C97AA95C();
  *(v0 + 120) = 0x6E6F6973726576;
  v1 = *(v0 + 200);
  *(v0 + 128) = 0xE700000000000000;
  sub_1C9A93548();
  sub_1C98784BC(v1, (v0 + 88));
  if (!*(v0 + 112))
  {
    __break(1u);
    goto LABEL_7;
  }

  sub_1C97C90D4(v0 + 16);
  sub_1C97A2D34((v0 + 88), (v0 + 56));
  swift_dynamicCast();
  sub_1C983FF8C(*(v0 + 136), *(v0 + 144));
  if (v2)
  {
LABEL_7:
    __break(1u);
    return;
  }

  sub_1C97DA91C();

  v3();
}

uint64_t sub_1C983FF30()
{
  sub_1C97AA884();

  sub_1C97DA91C();

  return v0();
}

uint64_t sub_1C983FF8C(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v2 = sub_1C98407E0(a1, a2, &v4);

  if (v2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C983FFEC(uint64_t a1, uint64_t a2, double a3)
{
  *(v4 + 56) = v3;
  *(v4 + 48) = a3;
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;
  return sub_1C97DA66C();
}

uint64_t sub_1C9840008()
{
  sub_1C97AA95C();
  result = sub_1C984099C(*(v0 + 32), &selRef_identifier);
  *(v0 + 64) = v2;
  if (v2)
  {
    v3 = result;
    v4 = v2;
    v5 = swift_task_alloc();
    *(v0 + 72) = v5;
    *v5 = v0;
    v5[1] = sub_1C98400CC;
    v6 = *(v0 + 40);

    return sub_1C983FBF4(v3, v4, v6);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C98400CC()
{
  sub_1C97AA884();
  sub_1C97AA890();
  *(v1 + 80) = v2;
  *(v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_1C9840438;
  }

  else
  {

    v3 = sub_1C98401E4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1C98401E4()
{
  v20 = v0;
  v1 = *(v0 + 48);
  if (*(v0 + 80) >= v1)
  {
    v3 = *(v0 + 88);
    sub_1C983FA80(0, *(v0 + 32));
    v2 = v3;
    if (!v3)
    {
      goto LABEL_12;
    }
  }

  else
  {
    type metadata accessor for SNError(v1);
    v19[0] = 0;
    v19[1] = 0xE000000000000000;
    sub_1C9A935B8();
    *(v0 + 16) = 0;
    *(v0 + 24) = 0xE000000000000000;
    MEMORY[0x1CCA90230](0xD000000000000024, 0x80000001C9AD6470);
    sub_1C9A92AF8();
    v2 = sub_1C9840C80(*(v0 + 16), "com.apple.SoundAnalysis");

    swift_willThrow();
  }

  if (qword_1EC3C5520 != -1)
  {
    sub_1C97DAA64(&qword_1EC3C5520);
  }

  v4 = *(v0 + 32);
  v5 = sub_1C9A91B58();
  sub_1C97BFF6C(v5, qword_1EC3D3108);
  v6 = v4;
  v7 = sub_1C9A91B38();
  LOBYTE(v4) = sub_1C9A92F88();

  if (os_log_type_enabled(v7, v4))
  {
    v8 = *(v0 + 32);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19[0] = v10;
    *v9 = 136315138;
    v11 = sub_1C984099C(v8, &selRef_identifier);
    if (v12)
    {
      v13 = v12;
    }

    else
    {
      v11 = 0x6E776F6E6B6E753CLL;
      v13 = 0xE90000000000003ELL;
    }

    v14 = sub_1C9849140(v11, v13, v19);

    *(v9 + 4) = v14;
    sub_1C9840CCC(&dword_1C9788000, v15, v16, "Failed to discover file server at %s; this may not be an issue, since not all devices are expected to host file servers compatible with this client");
    sub_1C97A592C(v10);
    sub_1C9840CEC();
    sub_1C9840CEC();
  }

LABEL_12:
  sub_1C9840CC0();

  return v17();
}

uint64_t sub_1C9840438()
{
  v18 = v0;

  v1 = *(v0 + 88);
  if (qword_1EC3C5520 != -1)
  {
    sub_1C97DAA64(&qword_1EC3C5520);
  }

  v2 = *(v0 + 32);
  v3 = sub_1C9A91B58();
  sub_1C97BFF6C(v3, qword_1EC3D3108);
  v4 = v2;
  v5 = sub_1C9A91B38();
  LOBYTE(v2) = sub_1C9A92F88();

  if (os_log_type_enabled(v5, v2))
  {
    v6 = *(v0 + 32);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136315138;
    v9 = sub_1C984099C(v6, &selRef_identifier);
    if (v10)
    {
      v11 = v10;
    }

    else
    {
      v9 = 0x6E776F6E6B6E753CLL;
      v11 = 0xE90000000000003ELL;
    }

    v12 = sub_1C9849140(v9, v11, &v17);

    *(v7 + 4) = v12;
    sub_1C9840CCC(&dword_1C9788000, v13, v14, "Failed to discover file server at %s; this may not be an issue, since not all devices are expected to host file servers compatible with this client");
    sub_1C97A592C(v8);
    sub_1C9840CEC();
    sub_1C9840CEC();
  }

  sub_1C9840CC0();

  return v15(0);
}

uint64_t sub_1C98405D8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1C9A91558();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v22 - v9;
  v11 = sub_1C984099C(a1, &selRef_filename);
  if (v12)
  {
    v13 = v12;
    v23 = v11;
    v14 = [a1 itemURL];
    if (v14)
    {
      v15 = v14;
      sub_1C9A914F8();

      v16 = *(v5 + 32);
      v16(v10, v8, v4);
      v17 = [a1 fileSize];
      v18 = type metadata accessor for FileCopyingResult(0);
      result = (v16)(a2 + *(v18 + 24), v10, v4);
      *a2 = v23;
      a2[1] = v13;
      a2[2] = v17;
      return result;
    }

    v20 = 1;
  }

  else
  {
    v20 = 0;
  }

  sub_1C98409FC();
  swift_allocError();
  *v21 = v20;
  return swift_willThrow();
}

BOOL sub_1C98407E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v4 < 0x21 && ((0x100003E01uLL >> v4) & 1) != 0)
      {
        return 0;
      }

      goto LABEL_9;
    }

LABEL_13:
    sub_1C9A935A8();
    if (!v3)
    {
      return v8;
    }

    return v6;
  }

  if (a1 <= 0x20u && ((0x100003E01uLL >> a1) & 1) != 0)
  {
    return 0;
  }

LABEL_9:
  v5 = _swift_stdlib_strtod_clocale();
  if (!v5)
  {
    return 0;
  }

  return *v5 == 0;
}

_BYTE *sub_1C98408D8@<X0>(_BYTE *result@<X0>, BOOL *a3@<X8>)
{
  v4 = *result;
  v5 = v4 > 0x20;
  v6 = (1 << v4) & 0x100003E01;
  v7 = v5 || v6 == 0;
  v8 = v7 && (result = _swift_stdlib_strtod_clocale()) != 0 && *result == 0;
  *a3 = v8;
  return result;
}

void sub_1C9840944(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1C9A92478();
  [a3 setPath_];
}

uint64_t sub_1C984099C(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_1C9A924A8();

  return v4;
}

unint64_t sub_1C98409FC()
{
  result = qword_1EC3C8DE0;
  if (!qword_1EC3C8DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C8DE0);
  }

  return result;
}

uint64_t sub_1C9840A58(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1C9840A78(double a1)
{
  result = qword_1EC3C8DE8;
  if (!qword_1EC3C8DE8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC3C8DE8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SNFileSharingUtils.DomainError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C9840C1C()
{
  result = qword_1EC3C8DF0;
  if (!qword_1EC3C8DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C8DF0);
  }

  return result;
}

id sub_1C9840C80@<X0>(uint64_t a1@<X4>, uint64_t a2@<X8>)
{

  return sub_1C9929478(0xD000000000000017, (a2 - 32) | 0x8000000000000000, 2, 0, a1, v2);
}

void sub_1C9840CCC(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void sub_1C9840CEC()
{

  JUMPOUT(0x1CCA93280);
}

double SNDirectionOfArrivalResult.timeRange.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR___SNDirectionOfArrivalResult_impl;
  v3 = *(v1 + OBJC_IVAR___SNDirectionOfArrivalResult_impl + 40);
  *a1 = *(v1 + OBJC_IVAR___SNDirectionOfArrivalResult_impl);
  *(a1 + 8) = *(v2 + 8);
  *(a1 + 16) = *(v2 + 16);
  result = *(v2 + 32);
  *(a1 + 32) = result;
  *(a1 + 40) = v3;
  return result;
}

double SNDirectionOfArrivalResult.timeRange.setter(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = v1 + OBJC_IVAR___SNDirectionOfArrivalResult_impl;
  *v3 = *a1;
  *(v3 + 8) = *(a1 + 8);
  *(v3 + 16) = *(a1 + 16);
  result = *(a1 + 32);
  *(v3 + 32) = result;
  *(v3 + 40) = v2;
  return result;
}

double sub_1C9840E28@<D0>(_OWORD *a1@<X8>)
{
  SNDirectionOfArrivalResult.timeRange.getter(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

void (*SNDirectionOfArrivalResult.timeRange.modify(void *a1))(void **a1)
{
  v3 = sub_1C97A2C48(0x38uLL);
  *a1 = v3;
  *v3 = v1;
  SNDirectionOfArrivalResult.timeRange.getter((v3 + 1));
  return sub_1C9840ED0;
}

void sub_1C9840ED0(void **a1)
{
  v1 = *a1;
  SNDirectionOfArrivalResult.timeRange.setter(*a1 + 8);

  free(v1);
}

float (*SNDirectionOfArrivalResult.azimuth.modify(uint64_t a1))(uint64_t a1)
{
  v2 = OBJC_IVAR___SNDirectionOfArrivalResult_impl;
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + v2 + 48);
  return sub_1C979B5E4;
}

float (*SNDirectionOfArrivalResult.elevation.modify(uint64_t a1))(uint64_t a1)
{
  v2 = OBJC_IVAR___SNDirectionOfArrivalResult_impl;
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + v2 + 52);
  return sub_1C9841060;
}

float sub_1C9841060(uint64_t a1)
{
  result = *(a1 + 16);
  *(*a1 + *(a1 + 8) + 52) = result;
  return result;
}

uint64_t SNDirectionOfArrivalResult.spatialSpectrum.getter()
{
  v1 = *(v0 + OBJC_IVAR___SNDirectionOfArrivalResult_impl + 56);
  v2 = *(v1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v5 = MEMORY[0x1E69E7CC0];

    sub_1C9A93698();
    v4 = 32;
    do
    {
      [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
      sub_1C9A93678();
      sub_1C9A936A8();
      sub_1C9A936B8();
      sub_1C9A93688();
      v4 += 8;
      --v2;
    }

    while (v2);

    return v5;
  }

  return result;
}

void SNDirectionOfArrivalResult.spatialSpectrum.setter(unint64_t a1)
{
  v2 = v1;
  if (a1 >> 62)
  {
    v4 = sub_1C9A934C8();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_13:

    v6 = MEMORY[0x1E69E7CC0];
    goto LABEL_14;
  }

  v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_13;
  }

LABEL_3:
  v13 = MEMORY[0x1E69E7CC0];
  sub_1C97B7EE8(0, v4 & ~(v4 >> 63), 0);
  if (v4 < 0)
  {
    __break(1u);
    return;
  }

  v5 = 0;
  v6 = v13;
  do
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1CCA912B0](v5, a1);
    }

    else
    {
      v7 = *(a1 + 8 * v5 + 32);
    }

    v8 = v7;
    [v7 doubleValue];
    v10 = v9;

    v12 = *(v13 + 16);
    v11 = *(v13 + 24);
    if (v12 >= v11 >> 1)
    {
      sub_1C97B7EE8(v11 > 1, v12 + 1, 1);
    }

    ++v5;
    *(v13 + 16) = v12 + 1;
    *(v13 + 8 * v12 + 32) = v10;
  }

  while (v4 != v5);

LABEL_14:
  *(v2 + OBJC_IVAR___SNDirectionOfArrivalResult_impl + 56) = v6;
}

void (*SNDirectionOfArrivalResult.spatialSpectrum.modify(uint64_t *a1))(unint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = SNDirectionOfArrivalResult.spatialSpectrum.getter();
  return sub_1C9841428;
}

void sub_1C9841428(unint64_t *a1, char a2)
{
  if (a2)
  {

    SNDirectionOfArrivalResult.spatialSpectrum.setter(v2);
  }

  else
  {
    SNDirectionOfArrivalResult.spatialSpectrum.setter(*a1);
  }
}

id sub_1C9841480()
{
  ObjectType = swift_getObjectType();
  v2 = MEMORY[0x1E6960C98];
  v3 = *(MEMORY[0x1E6960C98] + 40);
  v4 = &v0[OBJC_IVAR___SNDirectionOfArrivalResult_impl];
  *v4 = *MEMORY[0x1E6960C98];
  *(v4 + 1) = *(v2 + 8);
  *(v4 + 1) = *(v2 + 16);
  *(v4 + 4) = *(v2 + 32);
  *(v4 + 5) = v3;
  v5 = MEMORY[0x1E69E7CC0];
  *(v4 + 6) = 0;
  *(v4 + 7) = v5;
  v7.receiver = v0;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, sel_init);
}

void *SNDirectionOfArrivalResult.copy(with:)@<X0>(void *a1@<X8>)
{
  ObjectType = swift_getObjectType();
  sub_1C9841D88(OBJC_IVAR___SNDirectionOfArrivalResult_impl);
  v4 = objc_allocWithZone(v3);
  v5 = &v4[OBJC_IVAR___SNDirectionOfArrivalResult_impl];
  v6 = v12[3];
  v8 = v12[0];
  v7 = v12[1];
  *(v5 + 2) = v12[2];
  *(v5 + 3) = v6;
  *v5 = v8;
  *(v5 + 1) = v7;
  sub_1C97A6844(v12, v11);
  v10.receiver = v4;
  v10.super_class = ObjectType;
  result = objc_msgSendSuper2(&v10, sel_init);
  a1[3] = ObjectType;
  *a1 = result;
  return result;
}

uint64_t SNDirectionOfArrivalResult.hash.getter()
{
  sub_1C9841D88(OBJC_IVAR___SNDirectionOfArrivalResult_impl);
  sub_1C9A93CC8();
  sub_1C9804E84();
  return sub_1C9A93D18();
}

uint64_t SNDirectionOfArrivalResult.isEqual(_:)(uint64_t a1)
{
  sub_1C97A2C7C(a1, &v5);
  if (v6)
  {
    sub_1C97A2D34(&v5, v4);
    v2 = sub_1C9859AAC(v4, v1);
    sub_1C97A592C(v4);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

id SNDirectionOfArrivalResult.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  sub_1C97A1868(1819307369, 0xE400000000000000);
  v3 = objc_allocWithZone(ObjectType);
  v4 = &v3[OBJC_IVAR___SNDirectionOfArrivalResult_impl];
  v5 = v12;
  *v4 = v11;
  *(v4 + 1) = v5;
  v6 = v14;
  *(v4 + 2) = v13;
  *(v4 + 3) = v6;
  v10.receiver = v3;
  v10.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v10, sel_init);

  v8 = swift_getObjectType();
  sub_1C9841DA0(v8);
  return v7;
}

Swift::Void __swiftcall SNDirectionOfArrivalResult.encode(with:)(NSCoder with)
{
  sub_1C9841D88(OBJC_IVAR___SNDirectionOfArrivalResult_impl);
  sub_1C97A6844(v3, v2);
  sub_1C979F3CC(v3, 1819307369, 0xE400000000000000, with.super.isa);
  sub_1C9841CB4(v3);
}

uint64_t SNDirectionOfArrivalResult.description.getter()
{
  ObjectType = swift_getObjectType();
  *&v11[0] = 0;
  *(&v11[0] + 1) = 0xE000000000000000;
  sub_1C9A935B8();
  v10 = v11[0];
  v9.receiver = v0;
  v9.super_class = ObjectType;
  v2 = objc_msgSendSuper2(&v9, sel_description);
  sub_1C9A924A8();

  sub_1C98285A8();

  MEMORY[0x1CCA90230](0x756D696D7A41203BLL, 0xEC000000203A6874);
  sub_1C9A92B08();
  MEMORY[0x1CCA90230](0x746176656C45203BLL, 0xED0000203A6E6F69);
  sub_1C9A92B08();
  MEMORY[0x1CCA90230](0xD000000000000013, 0x80000001C9AD64C0);

  MEMORY[0x1CCA90460](v3, MEMORY[0x1E69E63B0]);

  sub_1C98285A8();

  MEMORY[0x1CCA90230](0x203A656D6954203BLL, 0xE800000000000000);
  SNDirectionOfArrivalResult.timeRange.getter(v11);
  v4 = objc_opt_self();
  v8[0] = v11[0];
  v8[1] = v11[1];
  v8[2] = v11[2];
  v5 = [v4 valueWithCMTimeRange_];
  v6 = [v5 description];
  sub_1C9A924A8();

  sub_1C98285A8();

  return v10;
}

id SNDirectionOfArrivalResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double sub_1C9841C74@<D0>(_OWORD *a1@<X8>)
{
  SNDirectionOfArrivalResult.timeRange.getter(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

unint64_t sub_1C9841D44(double a1)
{
  result = qword_1EC3C54B0;
  if (!qword_1EC3C54B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC3C54B0);
  }

  return result;
}

uint64_t sub_1C9841DA0(uint64_t a1)
{

  return swift_deallocPartialClassInstance();
}

_BYTE *storeEnumTagSinglePayload for FindMyBundle(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1C9841E6C(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C9841ED8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  v10 = type metadata accessor for Rational(0, a3, a4, v9);
  v11 = *(*(a4 - 8) + 32);
  v12 = a5 + *(v10 + 36);

  return v11(v12, a2, a4);
}

void sub_1C984205C()
{
  sub_1C97BE460();
  v71 = v0;
  v54 = v2;
  v55 = v1;
  v68 = v3;
  v59 = v4;
  v60 = v5;
  v64 = v6;
  v65 = v7;
  v8 = *(v4 + 8);
  v10 = v9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1C97AE9DC();
  v72 = v12;
  MEMORY[0x1EEE9AC00](v13);
  sub_1C98435A0();
  v58 = (v14 - v15);
  sub_1C98435B0();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C98435C8();
  v57 = v17;
  sub_1C98435B0();
  MEMORY[0x1EEE9AC00](v18);
  sub_1C98435C8();
  v69 = v19;
  sub_1C98435B0();
  MEMORY[0x1EEE9AC00](v20);
  sub_1C98435C8();
  v67 = v21;
  sub_1C98435B0();
  MEMORY[0x1EEE9AC00](v22);
  sub_1C98435C8();
  v66 = v23;
  sub_1C98435B0();
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = &v52 - v26;
  v28 = MEMORY[0x1EEE9AC00](v25);
  v30 = &v52 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v70 = &v52 - v31;
  v32 = *(v8 + 32);
  v32(v10);
  v33 = v10;
  v34 = v10;
  v62 = v10;
  v63 = v32;
  v35 = v32;
  (v32)(v33, v8);
  v56 = *(v71 + 8);
  sub_1C99046D0(v30, v27, AssociatedTypeWitness, v55, *(v56 + 8), v70);
  v36 = *(v72 + 8);
  v72 += 8;
  v36(v27, AssociatedTypeWitness);
  v52 = v30;
  v36(v30, AssociatedTypeWitness);
  v61 = v8;
  v35(v34, v8);
  v55 = *(v68 + 8);
  sub_1C98435BC();
  v37();
  v53 = v27;
  v36(v27, AssociatedTypeWitness);
  v38 = v66;
  v39 = v62;
  v63(v62, v8);
  sub_1C98435BC();
  v55();
  v36(v38, AssociatedTypeWitness);
  v40 = v67;
  v41 = v61;
  v63(v39, v61);
  v42 = v52;
  sub_1C98435BC();
  sub_1C9A92B98();
  v36(v40, AssociatedTypeWitness);
  v43 = v41;
  v44 = *(v41 + 24);
  v45 = v57;
  v46 = v62;
  v44(v62, v43);
  sub_1C98435BC();
  sub_1C9A92B98();
  v36(v45, AssociatedTypeWitness);
  v47 = v58;
  v44(v46, v61);
  v48 = v45;
  v49 = v53;
  sub_1C98435BC();
  sub_1C9A92B98();
  v36(v47, AssociatedTypeWitness);
  v50 = v67;
  v51 = v69;
  sub_1C9A93798();
  v36(v48, AssociatedTypeWitness);
  v36(v51, AssociatedTypeWitness);
  v36(v49, AssociatedTypeWitness);
  v36(v42, AssociatedTypeWitness);
  v36(v70, AssociatedTypeWitness);
  (*(v59 + 16))(v50, v66, v46);
  sub_1C97BE478();
}

void sub_1C984253C()
{
  sub_1C97BE460();
  v30 = v0;
  v31 = v1;
  v3 = v2;
  v4 = *(v0 + 8);
  v7 = sub_1C98435F4(v5, v2, v0, v6, &unk_1C9AFB26C);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v29 = &v28 - v9;
  v13 = sub_1C98435F4(v8, v10, v11, v12, &unk_1C9AFB264);
  sub_1C97AE9DC();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  sub_1C98435A0();
  v19 = v17 - v18;
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v28 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v28 - v24;
  sub_1C9A937C8();
  (*(v4 + 24))(v3, v4);
  sub_1C9A937A8();
  v26 = *(v15 + 8);
  v26(v19, v13);
  v26(v23, v13);
  v27 = v29;
  (*(v4 + 32))(v3, v4);
  (*(v30 + 16))(v25, v27, v3);
  sub_1C97BE478();
}

void sub_1C9842750()
{
  sub_1C97BE460();
  sub_1C97AE9DC();
  MEMORY[0x1EEE9AC00](v0);
  sub_1C984253C();
  sub_1C984205C();
  v1 = sub_1C98435D4();
  v2(v1);
  sub_1C97BE478();
}

void sub_1C9842858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  sub_1C97BE460();
  v61 = v21;
  v56 = v22;
  v57 = v23;
  v52 = v25;
  v53 = v24;
  v54 = a21;
  AssociatedConformanceWitness = v26;
  v64 = *(a21 + 16);
  v28 = *(v27 + 8);
  v30 = v29;
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v58 = &v49 - v31;
  v32 = swift_checkMetadataState();
  sub_1C97AE9DC();
  v51 = v33;
  MEMORY[0x1EEE9AC00](v34);
  sub_1C98435A0();
  v37 = v35 - v36;
  v39 = MEMORY[0x1EEE9AC00](v38);
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v49 - v40;
  v63 = v30;
  sub_1C97AE9DC();
  v60 = v42;
  MEMORY[0x1EEE9AC00](v43);
  v62 = &v49 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C9842750();
  v57 = *(v28 + 24);
  v57(v30, v28);
  v50 = v28;
  (*(v28 + 32))(v30, v28);
  sub_1C9A92B98();
  v45 = *(v51 + 8);
  v45(v37, v32);
  v46 = sub_1C98435D4();
  (v45)(v46);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_1C9A93BA8();
  sub_1C98435E0();
  sub_1C9A93AF8();
  LODWORD(v56) = sub_1C9A923D8();
  v47 = sub_1C98435D4();
  (v45)(v47);
  v45(v41, v32);
  v57(v63, v50);
  sub_1C9A93BA8();
  sub_1C98435E0();
  sub_1C9A93AF8();
  sub_1C9A92438();
  v48 = sub_1C98435D4();
  (v45)(v48);
  v45(v41, v32);
  (*(v60 + 8))(v62, v63);
  sub_1C97BE478();
}

uint64_t sub_1C9842D8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1C9A93CC8();
  sub_1C9842D2C(v13, a1, v8, v9, v10, v11, a6);
  return sub_1C9A93D18();
}

uint64_t sub_1C9842F58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 40);
  sub_1C9A93CC8();
  sub_1C9842D2C(v10, a2, v5, v6, v7, v8, v4);
  return sub_1C9A93D18();
}

uint64_t sub_1C9843000(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C984308C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(*(v5 - 8) + 84);
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 80);
  if (v9 <= v6)
  {
    v11 = *(*(v5 - 8) + 84);
  }

  else
  {
    v11 = *(v8 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v12 = *(*(v5 - 8) + 64) + v10;
  v13 = a2 - v11;
  if (a2 <= v11)
  {
LABEL_25:
    if (v6 < v9)
    {
      a1 = ((a1 + v12) & ~v10);
      v6 = *(v8 + 84);
      v5 = v7;
    }

    return sub_1C97ABF20(a1, v6, v5);
  }

  v14 = (v12 & ~v10) + *(*(v7 - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((v13 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_24:
      if (v11)
      {
        goto LABEL_25;
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_24;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = v14;
    }

    else
    {
      v19 = 4;
    }

    switch(v19)
    {
      case 2:
        v20 = *a1;
        break;
      case 3:
        v20 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v20 = *a1;
        break;
      default:
        v20 = *a1;
        break;
    }
  }

  else
  {
    v20 = 0;
  }

  return v11 + (v20 | v18) + 1;
}

void sub_1C9843254(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = a1;
  v7 = *(a4 + 16);
  v8 = *(a4 + 24);
  v9 = *(*(v7 - 8) + 84);
  v10 = *(v8 - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = *(*(v7 - 8) + 84);
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  v14 = *(*(v7 - 8) + 64) + v13;
  v15 = (v14 & ~v13) + *(*(v8 - 8) + 64);
  v16 = 8 * v15;
  v17 = a3 >= v12;
  v18 = a3 - v12;
  if (v18 != 0 && v17)
  {
    if (v15 <= 3)
    {
      v22 = ((v18 + ~(-1 << v16)) >> v16) + 1;
      if (HIWORD(v22))
      {
        v19 = 4;
      }

      else
      {
        if (v22 < 0x100)
        {
          v23 = 1;
        }

        else
        {
          v23 = 2;
        }

        if (v22 >= 2)
        {
          v19 = v23;
        }

        else
        {
          v19 = 0;
        }
      }
    }

    else
    {
      v19 = 1;
    }
  }

  else
  {
    v19 = 0;
  }

  if (v12 >= a2)
  {
    switch(v19)
    {
      case 1:
        a1[v15] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v15] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *&a1[v15] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if (v9 < v11)
          {
            a1 = (&a1[v14] & ~v13);
            v9 = v11;
            v7 = v8;
          }

          sub_1C97ACC50(a1, a2, v9, v7);
        }

        break;
    }
  }

  else
  {
    v20 = ~v12 + a2;
    if (v15 < 4)
    {
      v21 = (v20 >> v16) + 1;
      if (v15)
      {
        v24 = v20 & ~(-1 << v16);
        bzero(a1, v15);
        if (v15 == 3)
        {
          *v6 = v24;
          v6[2] = BYTE2(v24);
        }

        else if (v15 == 2)
        {
          *v6 = v24;
        }

        else
        {
          *v6 = v20;
        }
      }
    }

    else
    {
      bzero(a1, v15);
      *v6 = v20;
      v21 = 1;
    }

    switch(v19)
    {
      case 1:
        v6[v15] = v21;
        break;
      case 2:
        *&v6[v15] = v21;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *&v6[v15] = v21;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1C98434F8(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C9843534(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return swift_getWitnessTable();
}

void sub_1C9843578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v24 = *(v21 + 16);
  v25 = *(v21 + 24);

  sub_1C9842858(a1, a2, a3, a4, a6, a7, a8, v24, v25, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21);
}

uint64_t sub_1C98435F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return swift_getAssociatedTypeWitness();
}

uint64_t *sub_1C9843614(void *a1)
{
  v4 = *v1;
  *(v1 + 8) = 0;
  *(v1 + 36) = 1;
  v1[5] = a1;
  v1[2] = 0;
  v1[3] = 0;
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  *(v5 + 24) = v4;
  v6 = a1;

  v7 = sub_1C97C1C8C();

  if (v2)
  {
  }

  else
  {

    v6 = v1[2];
    v1[2] = v7;
  }

  return v1;
}

id sub_1C9843700(char *a1, double a2)
{
  v116[6] = *MEMORY[0x1E69E9840];
  v4 = objc_opt_self();
  v116[0] = 0;
  v6 = sub_1C9A761F8(v4, v116, v5);
  if (!v6)
  {
    v41 = v116[0];
    sub_1C9A913C8();

    swift_willThrow();
    return v6;
  }

  v7 = v116[0];
  v8 = sub_1C9A92478();
  sub_1C9A6B534(v6, v8);

  v9 = sub_1C9A92478();
  v10 = sub_1C9844214();
  v13 = sub_1C9A72FAC(v10, v11, v9, v12);

  if (!v13)
  {
    v42 = v116[0];
    sub_1C9A913C8();

    swift_willThrow();
LABEL_17:

    return v6;
  }

  v14 = v116[0];
  v15 = sub_1C9A92478();
  v16 = sub_1C9844214();
  v19 = sub_1C9A74DF0(v16, v17, v15, v18);

  if (!v19)
  {
    v43 = v116[0];
    sub_1C9A913C8();

    swift_willThrow();
    goto LABEL_17;
  }

  v20 = v116[0];
  v21 = sub_1C9A92478();
  v22 = sub_1C9844214();
  v25 = sub_1C9A7514C(v22, v23, v21, v24);

  if (!v25)
  {
    v44 = v116[0];
    sub_1C9A913C8();

    swift_willThrow();
LABEL_13:

    goto LABEL_17;
  }

  v114 = v25;
  v26 = v116[0];
  v27 = sub_1C9A92478();
  v28 = sub_1C9844214();
  v31 = sub_1C9A74DF0(v28, v29, v27, v30);

  if (!v31)
  {
    v45 = v116[0];
    sub_1C9844250();

    swift_willThrow();
    v46 = v25;
LABEL_15:

    goto LABEL_17;
  }

  v113 = v19;
  v32 = v116[0];
  v33 = sub_1C9A92478();
  v34 = sub_1C9844214();
  v19 = sub_1C9A75428(v34, v35, v33, v36);

  if (!v19)
  {
    v47 = v116[0];
    sub_1C9844250();

    swift_willThrow();
    goto LABEL_17;
  }

  v112 = v31;
  v38 = *&a1[OBJC_IVAR____TtC13SoundAnalysis42SNLogMelBasedFeatureExtractorConfiguration_model];
  v37 = *&a1[OBJC_IVAR____TtC13SoundAnalysis42SNLogMelBasedFeatureExtractorConfiguration_model + 8];
  v39 = v116[0];
  sub_1C9A3B76C(v19, v38, v37, v40);
  if (!v2)
  {
    v49 = sub_1C9A92478();
    v50 = sub_1C9844214();
    v53 = sub_1C9A73214(v50, v51, v49, v52);

    v111 = v53;
    if (v53)
    {
      v54 = v116[0];
      sub_1C9844228();
      sub_1C9A76554(v55, 160, 1, v56);
      v57 = sub_1C98441E4();
      v63 = v115;
      if (sub_1C9844238(v57, v58, v13, v113, v59, v60, v61, v62) && (v64 = v115, sub_1C9844228(), sub_1C9A76640(v65, 160, 400, 1, v66), v67 = sub_1C98441E4(), v63 = v115, sub_1C9844238(v67, v68, v113, v114, v69, v70, v71, v72)))
      {
        v73 = v115;
        sub_1C9844228();
        sub_1C9A76640(v74, 160, 64, 1, v75);
        v76 = sub_1C98441E4();
        if (sub_1C9844238(v76, v77, v114, v112, v78, v79, v80, v81))
        {
          v82 = *&a1[OBJC_IVAR____TtC13SoundAnalysis42SNLogMelBasedFeatureExtractorConfiguration_stepSizeFrames];
          if ((v82 - 15361) < 0xFFFFC400)
          {
            sub_1C9844044();
            swift_allocError();
            *v83 = 0;
            swift_willThrow();
            v84 = v115;

            return v6;
          }

          v88 = v115;
          sub_1C9844228();
          sub_1C9A76640(v89, v82, 6144, 1, v90);
          v91 = sub_1C98441E4();
          if (sub_1C9844238(v91, v92, v112, v19, v93, v94, v95, v96))
          {
            v97 = v115;
            sub_1C98568F8(v98);
            sub_1C9844228();
            sub_1C9A76640(v99, v82, v100, 1, v101);
            v102 = sub_1C98441E4();
            if (sub_1C9844238(v102, v103, v19, v111, v104, v105, v106, v107))
            {
              v108 = v115;
              sub_1C9A695C8(v6, 0x4000, 16000, 1);
              sub_1C9A69B8C(v6);

              return v6;
            }

            v110 = v115;
            sub_1C9A913C8();

            swift_willThrow();
            goto LABEL_17;
          }

          v109 = v115;
          sub_1C9844250();

          swift_willThrow();
        }

        else
        {
          v87 = v115;
          sub_1C9A913C8();

          swift_willThrow();
        }
      }

      else
      {
        v85 = v63;
        sub_1C9844250();

        swift_willThrow();
      }

      v46 = v111;
      goto LABEL_15;
    }

    v86 = v116[0];
    sub_1C9844250();

    swift_willThrow();
    goto LABEL_13;
  }

  return v6;
}

id sub_1C9843DCC()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1;
  }

  sub_1C9844044();
  swift_allocError();
  *v3 = 1;
  return swift_willThrow();
}

void sub_1C9843E30(int a1, double a2)
{
  v6 = *v2;
  if ((*(v2 + 36) & 1) != 0 || (v2[3] == a2 ? (v7 = *(v2 + 8) == a1) : (v7 = 0), !v7))
  {
    v8 = swift_allocObject();
    *(v8 + 16) = v2;
    *(v8 + 24) = v6;

    v9 = sub_1C97C1C8C();

    if (!v3)
    {
      v10 = *(v2 + 2);
      *(v2 + 2) = v9;

      v2[3] = a2;
      *(v2 + 8) = a1;
      *(v2 + 36) = 0;
    }
  }
}

void sub_1C9843F20(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 40);
  v6 = sub_1C9843700(v4, v5);

  if (!v2)
  {
    *a2 = v6;
  }
}

uint64_t sub_1C9843FA0()
{
  sub_1C9843F78();

  return swift_deallocClassInstance();
}

unint64_t sub_1C9844044()
{
  result = qword_1EC3C8E88;
  if (!qword_1EC3C8E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C8E88);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SNLogMelBasedFeatureExtractor.DomainError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C9844178()
{
  result = qword_1EC3C8E90;
  if (!qword_1EC3C8E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C8E90);
  }

  return result;
}

uint64_t sub_1C9844238(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, __int128 *a7, uint64_t a8)
{

  return sub_1C9A762F8(a1, a2, a3, a4, 0, 0, a7, a8);
}

uint64_t sub_1C9844250()
{

  return sub_1C9A913C8();
}

id sub_1C9844268(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C9A93228();
  sub_1C97AE9C8();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  sub_1C97AEAD8();
  v10 = v9 - v8;
  sub_1C9844964(v11);

  v12 = sub_1C98443D4(a1, a2);
  (*(v6 + 104))(v10, *MEMORY[0x1E696A028], v4);
  v13 = sub_1C9A93218();
  v15 = v14;
  (*(v6 + 8))(v10, v4);
  if ((v15 & 1) != 0 || ([v12 isAtEnd] & 1) == 0)
  {

    return 0;
  }

  else
  {
    v16 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  }

  return v16;
}

id sub_1C98443D4(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_1C9A92478();

  v4 = [v2 initWithString_];

  return v4;
}

id sub_1C9844448(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), SEL *a4)
{
  v8 = sub_1C9A93228();
  sub_1C97AE9C8();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  sub_1C97AEAD8();
  v14 = v13 - v12;
  sub_1C9844964(v15);

  v16 = sub_1C98443D4(a1, a2);
  (*(v10 + 104))(v14, *MEMORY[0x1E696A028], v8);
  v17 = a3(v14);
  LOBYTE(a1) = v18;
  (*(v10 + 8))(v14, v8);
  if ((a1 & 1) != 0 || ([v16 isAtEnd] & 1) == 0)
  {

    return 0;
  }

  else
  {
    v19 = [objc_allocWithZone(MEMORY[0x1E696AD98]) *a4];
  }

  return v19;
}

id sub_1C98445B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C9844A60();
  v9 = sub_1C9844448(v5, v6, v7, v8);
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    sub_1C9844A78();
    v14 = sub_1C9844448(a1, a2, v12, v13);
    if (!v14)
    {
      v14 = sub_1C9844268(a1, a2);
      if (!v14)
      {
        type metadata accessor for SNError(v15);
        sub_1C9A935B8();

        MEMORY[0x1CCA90230](a1, a2);
        v11 = 0x80000001C9AD65D0;
        sub_1C9929478(0xD000000000000017, 0x80000001C9AD4AA0, 1, 0, 0xD000000000000026, 0x80000001C9AD65D0);

        swift_willThrow();
        return v11;
      }
    }

    v11 = v14;
  }

  v16 = v10;

  return v11;
}

uint64_t sub_1C98446F0(uint64_t result)
{
  v1 = 0;
  v2 = *(result + 16);
  v3 = result + 40;
  v4 = MEMORY[0x1E69E7CC0];
LABEL_2:
  for (i = (v3 + 16 * v1); ; i += 2)
  {
    if (v2 == v1)
    {
      return v4;
    }

    if (v1 >= v2)
    {
      break;
    }

    if (__OFADD__(v1, 1))
    {
      goto LABEL_17;
    }

    v7 = *(i - 1);
    v6 = *i;
    if (v7 || v6 != 0xE000000000000000)
    {
      result = sub_1C9A93B18();
      if ((result & 1) == 0)
      {

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1C97B7B08(0, *(v4 + 16) + 1, 1);
        }

        v9 = *(v4 + 16);
        v8 = *(v4 + 24);
        if (v9 >= v8 >> 1)
        {
          result = sub_1C97B7B08((v8 > 1), v9 + 1, 1);
        }

        *(v4 + 16) = v9 + 1;
        v10 = v4 + 16 * v9;
        *(v10 + 32) = v7;
        *(v10 + 40) = v6;
        ++v1;
        goto LABEL_2;
      }
    }

    ++v1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1C9844824()
{
  v0 = sub_1C9A912E8();
  sub_1C97AE9C8();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  sub_1C97AEAD8();
  v6 = v5 - v4;
  sub_1C9A912D8();
  sub_1C98449A8();
  v7 = sub_1C9A932C8();
  sub_1C98446F0(v7);

  (*(v2 + 8))(v6, v0);
  sub_1C97A2CEC(&qword_1EC3C7BF0, &unk_1C9AA0050);
  sub_1C98449FC();
  v8 = sub_1C9A923C8();

  return v8;
}

unint64_t sub_1C9844964(double a1)
{
  result = qword_1EC3C8E98;
  if (!qword_1EC3C8E98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC3C8E98);
  }

  return result;
}

unint64_t sub_1C98449A8()
{
  result = qword_1EC3C5510;
  if (!qword_1EC3C5510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C5510);
  }

  return result;
}

unint64_t sub_1C98449FC()
{
  result = qword_1EC3C8EA0;
  if (!qword_1EC3C8EA0)
  {
    sub_1C97AA4F0(&qword_1EC3C7BF0, &unk_1C9AA0050);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C8EA0);
  }

  return result;
}

uint64_t sub_1C9844AB0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v10 = sub_1C98450A4(a1, a2, a3, a4, a5, a6, a7, a8, v19);
  result = sub_1C98450C8(v10, v11, v12, v13, v14, v15, v16, v17, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32);
  if (!v9)
  {
    *v8 = result;
  }

  return result;
}

uint64_t sub_1C9844AEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1C97AE9C8();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v16 - v13;
  (*(a3 + 16))(a2, a3);
  (*(a5 + 56))(a1, AssociatedTypeWitness, a5);
  return (*(v11 + 8))(v14, AssociatedTypeWitness);
}

uint64_t sub_1C9844C30(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  sub_1C98450A4(a1, a2, a3, a4, a5, a6, a7, a8, v11);
  result = sub_1C97DD31C(v12);
  if (!v9)
  {
    *v8 = result;
  }

  return result;
}

uint64_t sub_1C9844C78(void *a1)
{
  v2 = sub_1C97A2CEC(&qword_1EC3C8EA8, &qword_1C9AA5D68);
  sub_1C97AE9C8();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - v6;
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C9844F90();
  sub_1C9A93DD8();
  return (*(v4 + 8))(v7, v2);
}

uint64_t sub_1C9844D80(uint64_t a1)
{
  v2 = sub_1C9844F90();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9844DBC(uint64_t a1)
{
  v2 = sub_1C9844F90();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1C9844E14()
{
  result = qword_1EC3C57C0[0];
  if (!qword_1EC3C57C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC3C57C0);
  }

  return result;
}

uint64_t sub_1C9844E80()
{
  sub_1C984511C();
  swift_getWitnessTable();
  v1 = *(v0 + 96);
  v7[0] = *(v0 + 80);
  v7[1] = v1;
  _s21ServerEnvironmentImplVMa(255, v7);
  WitnessTable = swift_getWitnessTable();
  return sub_1C98450F4(WitnessTable, v3, v4, v5);
}

uint64_t sub_1C9844F08()
{
  sub_1C984511C();
  swift_getWitnessTable();
  v1 = *(v0 + 32);
  v7[0] = *(v0 + 16);
  v7[1] = v1;
  type metadata accessor for AudioStreamAnalyzerEnvironmentImpl(255, v7);
  WitnessTable = swift_getWitnessTable();
  return sub_1C98450F4(WitnessTable, v3, v4, v5);
}

unint64_t sub_1C9844F90()
{
  result = qword_1EC3C8EB0;
  if (!qword_1EC3C8EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C8EB0);
  }

  return result;
}

unint64_t sub_1C9844FF8()
{
  result = qword_1EC3C8EB8;
  if (!qword_1EC3C8EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C8EB8);
  }

  return result;
}

unint64_t sub_1C9845050()
{
  result = qword_1EC3C8EC0;
  if (!qword_1EC3C8EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C8EC0);
  }

  return result;
}

void *sub_1C98450A4(void *__src, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, ...)
{
  va_start(va, a9);

  return memcpy(va, __src, 0x41uLL);
}

uint64_t sub_1C98450C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __int128 a19, __int128 a20, uint64_t a21)
{
  v23 = v21[1];
  a19 = *v21;
  a20 = v23;
  a21 = *(v21 + 4);

  return sub_1C978F4A0(&a10);
}

uint64_t sub_1C98450F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1C9844AEC(v5, v4, v6, a4, a1);
}

void static AOPClassificationResult.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (sub_1C9A916B8())
  {
    v4 = type metadata accessor for AOPClassificationResult(0);
    if (sub_1C9A916B8())
    {
      v5 = *(v4 + 24);
      v6 = *(a1 + v5);
      v7 = *(a2 + v5);

      sub_1C9845534(v6, v7);
    }
  }
}

uint64_t type metadata accessor for AOPClassificationResult(uint64_t a1)
{
  result = qword_1EC3C8F78;
  if (!qword_1EC3C8F78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C9845200(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sub_1C984AD0C();
    if (v7)
    {
      v8 = 0;
      sub_1C984ACA4();
      sub_1C984AD4C();
      while (v6)
      {
        sub_1C984AD38();
LABEL_12:
        sub_1C984AD24();
        v15 = *(v14 + 4 * v13);

        v16 = sub_1C984ADE8();
        sub_1C9A32230(v16, v17);
        sub_1C984AE68();
        if ((v4 & 1) == 0 || *(*(v2 + 56) + 4 * v3) != v15)
        {
          return;
        }
      }

      v9 = v8;
      while (1)
      {
        v8 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if (v8 >= v5)
        {
          return;
        }

        sub_1C984AEB8();
        if (v10)
        {
          sub_1C984ACD8();
          v6 = v12 & v11;
          goto LABEL_12;
        }
      }

      __break(1u);
    }
  }
}

void sub_1C98452DC(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sub_1C984AD0C();
    if (v7)
    {
      v8 = 0;
      sub_1C984ACA4();
      sub_1C984AD4C();
      while (v6)
      {
        sub_1C984AD38();
LABEL_12:
        sub_1C984AD24();
        v15 = *(v14 + 8 * v13);

        v16 = sub_1C984ADE8();
        sub_1C9A32230(v16, v17);
        sub_1C984AE68();
        if ((v4 & 1) == 0 || *(*(v2 + 56) + 8 * v3) != v15)
        {
          return;
        }
      }

      v9 = v8;
      while (1)
      {
        v8 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if (v8 >= v5)
        {
          return;
        }

        sub_1C984AEB8();
        if (v10)
        {
          sub_1C984ACD8();
          v6 = v12 & v11;
          goto LABEL_12;
        }
      }

      __break(1u);
    }
  }
}

void sub_1C98453B0(uint64_t a1, uint64_t a2)
{
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v3 = 0;
    v4 = a1 + 64;
    sub_1C984ACA4();
    v8 = v7 & v6;
    v10 = (v9 + 63) >> 6;
    while (v8)
    {
      v11 = __clz(__rbit64(v8));
      v29 = (v8 - 1) & v8;
LABEL_11:
      v15 = v11 | (v3 << 6);
      v16 = v5;
      v17 = (*(v5 + 48) + 16 * v15);
      v18 = *v17;
      v19 = v17[1];
      v20 = (*(v5 + 56) + 16 * v15);
      v22 = *v20;
      v21 = v20[1];

      v23 = sub_1C9A32230(v18, v19);
      v25 = v24;

      if ((v25 & 1) == 0)
      {

        return;
      }

      v26 = (*(a2 + 56) + 16 * v23);
      if (*v26 == v22 && v26[1] == v21)
      {

        v5 = v16;
        v8 = v29;
      }

      else
      {
        v28 = sub_1C9A93B18();

        v5 = v16;
        v8 = v29;
        if ((v28 & 1) == 0)
        {
          return;
        }
      }
    }

    v12 = v3;
    while (1)
    {
      v3 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v3 >= v10)
      {
        return;
      }

      ++v12;
      if (*(v4 + 8 * v3))
      {
        sub_1C984ACD8();
        v29 = v14 & v13;
        goto LABEL_11;
      }
    }

    __break(1u);
  }
}

void sub_1C9845534(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sub_1C984AD0C();
    if (v7)
    {
      v8 = 0;
      sub_1C984ACA4();
      sub_1C984AD4C();
      while (v6)
      {
        sub_1C984AD38();
LABEL_12:
        sub_1C984AD24();
        v15 = *(v14 + 8 * v13);

        v16 = sub_1C984ADE8();
        sub_1C9A32230(v16, v17);
        sub_1C984AE68();
        if ((v4 & 1) == 0 || *(*(v2 + 56) + 8 * v3) != v15)
        {
          return;
        }
      }

      v9 = v8;
      while (1)
      {
        v8 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if (v8 >= v5)
        {
          return;
        }

        sub_1C984AEB8();
        if (v10)
        {
          sub_1C984ACD8();
          v6 = v12 & v11;
          goto LABEL_12;
        }
      }

      __break(1u);
    }
  }
}

uint64_t sub_1C9845610(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x6D617473656D6974 && a2 == 0xEE00747261745370;
  if (v3 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6D617473656D6974 && a2 == 0xEC000000646E4570;
    if (v6 || (sub_1C9A93B18() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6966697373616C63 && a2 == 0xEF736E6F69746163)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C9A93B18();

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

uint64_t sub_1C9845734(unsigned __int8 a1)
{
  result = 0x6D617473656D6974;
  if (a1 >= 2u)
  {
    return 0x6966697373616C63;
  }

  return result;
}

uint64_t sub_1C98457A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C9845610(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C98457D0(uint64_t a1)
{
  v2 = sub_1C9845A58();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C984580C(uint64_t a1)
{
  v2 = sub_1C9845A58();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AOPClassificationResult.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1C97A2CEC(&qword_1EC3C8ED0, &unk_1C9AA5E20);
  sub_1C97AE9C8();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v16 - v9;
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C9845A58();
  sub_1C9A93DD8();
  v19 = 0;
  sub_1C9A916E8();
  sub_1C984ACC0();
  sub_1C984A53C(v11, v12, MEMORY[0x1E6969538]);
  sub_1C984AE28(v3, &v19);
  if (!v2)
  {
    v13 = type metadata accessor for AOPClassificationResult(0);
    v14 = *(v13 + 20);
    v18 = 1;
    sub_1C984AE28(v3 + v14, &v18);
    v16[1] = *(v3 + *(v13 + 24));
    v17 = 2;
    sub_1C97A2CEC(&qword_1EC3C82B8, &qword_1C9AA91F0);
    sub_1C984A314(&qword_1EC3C8EF0, MEMORY[0x1E69E6160], MEMORY[0x1E69E63C0], MEMORY[0x1E69E5E38]);
    sub_1C9A93A18();
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_1C9845A58()
{
  result = qword_1EC3C8ED8;
  if (!qword_1EC3C8ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C8ED8);
  }

  return result;
}

uint64_t AOPClassificationResult.hash(into:)(uint64_t a1)
{
  sub_1C9A916E8();
  sub_1C984ACC0();
  sub_1C984A53C(v3, v4, MEMORY[0x1E6969540]);
  sub_1C984ADE8();
  sub_1C9A92398();
  v5 = type metadata accessor for AOPClassificationResult(0);
  sub_1C984ADE8();
  sub_1C9A92398();
  v6 = *(v1 + *(v5 + 24));

  return sub_1C984A234(a1, v6);
}

uint64_t AOPClassificationResult.hashValue.getter()
{
  sub_1C9A93CC8();
  sub_1C9A916E8();
  sub_1C984ACC0();
  sub_1C984A53C(v1, v2, MEMORY[0x1E6969540]);
  sub_1C9A92398();
  v3 = type metadata accessor for AOPClassificationResult(0);
  sub_1C9A92398();
  sub_1C984A234(v5, *(v0 + *(v3 + 24)));
  return sub_1C9A93D18();
}

uint64_t AOPClassificationResult.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = sub_1C9A916E8();
  sub_1C97AE9C8();
  v29 = v4;
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v30 = &v26 - v9;
  sub_1C97A2CEC(&qword_1EC3C8F00, &unk_1C9AA5E30);
  sub_1C97AE9C8();
  v31 = v11;
  v32 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v26 - v12;
  v14 = type metadata accessor for AOPClassificationResult(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C9845A58();
  v33 = v13;
  v17 = v34;
  sub_1C9A93DB8();
  if (v17)
  {
    return sub_1C97A592C(a1);
  }

  v34 = a1;
  v27 = v16;
  v38 = 0;
  sub_1C984ACC0();
  sub_1C984A53C(v18, v19, MEMORY[0x1E6969558]);
  v20 = v30;
  sub_1C984AF10(v3, &v38);
  v30 = *(v29 + 32);
  (v30)(v27, v20, v3);
  v37 = 1;
  sub_1C984AF10(v3, &v37);
  v21 = v14;
  v22 = *(v14 + 20);
  v23 = v27;
  (v30)(&v27[v22], v8, v3);
  sub_1C97A2CEC(&qword_1EC3C82B8, &qword_1C9AA91F0);
  v36 = 2;
  sub_1C984A314(&qword_1EC3C8F10, MEMORY[0x1E69E6190], MEMORY[0x1E69E63E8], MEMORY[0x1E69E5E58]);
  v24 = v33;
  sub_1C9A938F8();
  (*(v31 + 8))(v24, v32);
  *(v23 + *(v21 + 24)) = v35;
  sub_1C984A384(v23, v28);
  sub_1C97A592C(v34);
  return sub_1C984A3E8(v23);
}

uint64_t sub_1C9846048(uint64_t a1, uint64_t a2)
{
  sub_1C9A93CC8();
  sub_1C9A916E8();
  sub_1C984A53C(&qword_1EC3C8EF8, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1C9A92398();
  sub_1C9A92398();
  sub_1C984A234(v5, *(v2 + *(a2 + 24)));
  return sub_1C9A93D18();
}

uint64_t _SNClassification.identifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____SNClassification_impl);

  return v1;
}

uint64_t _SNClassification.identifier.setter(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____SNClassification_impl);
  *v3 = a1;
  v3[1] = a2;
}

uint64_t sub_1C9846258(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return _SNClassification.identifier.setter(v1, v2);
}

uint64_t (*_SNClassification.identifier.modify(void *a1))()
{
  v3 = OBJC_IVAR____SNClassification_impl;
  a1[2] = v1;
  a1[3] = v3;
  v4 = (v1 + v3);
  v5 = v4[1];
  *a1 = *v4;
  a1[1] = v5;

  return sub_1C98462F4;
}

uint64_t sub_1C98462F4(void *a1)
{
  v1 = (a1[2] + a1[3]);
  v2 = a1[1];
  *v1 = *a1;
  v1[1] = v2;
}

double (*_SNClassification.confidence.modify(void *a1))(uint64_t a1)
{
  v2 = OBJC_IVAR____SNClassification_impl;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = *(v1 + v2 + 16);
  return sub_1C98463B4;
}

double sub_1C98463B4(uint64_t a1)
{
  result = *a1;
  *(*(a1 + 8) + *(a1 + 16) + 16) = *a1;
  return result;
}

id sub_1C9846434(double a1)
{
  sub_1C981E1EC();
  ObjectType = swift_getObjectType();
  v6 = &v2[OBJC_IVAR____SNClassification_impl];
  *v6 = v3;
  *(v6 + 1) = v1;
  *(v6 + 2) = a1;
  v8.receiver = v2;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_init);
}

void *_SNClassification.copy(with:)@<X0>(void *a1@<X8>)
{
  ObjectType = swift_getObjectType();
  v4 = v1 + OBJC_IVAR____SNClassification_impl;
  v6 = *(v1 + OBJC_IVAR____SNClassification_impl);
  v5 = *(v1 + OBJC_IVAR____SNClassification_impl + 8);
  v7 = *(v4 + 16);
  v8 = objc_allocWithZone(ObjectType);
  v9 = &v8[OBJC_IVAR____SNClassification_impl];
  *v9 = v6;
  *(v9 + 1) = v5;
  *(v9 + 2) = v7;
  v11.receiver = v8;
  v11.super_class = ObjectType;

  result = objc_msgSendSuper2(&v11, sel_init);
  a1[3] = ObjectType;
  *a1 = result;
  return result;
}

uint64_t _SNClassification.hash.getter()
{
  v1 = v0 + OBJC_IVAR____SNClassification_impl;
  v2 = *(v0 + OBJC_IVAR____SNClassification_impl);
  v3 = *(v0 + OBJC_IVAR____SNClassification_impl + 8);
  v4 = *(v1 + 16);

  sub_1C992C5B8(v2, v3, v4);
  sub_1C97FB3E4();

  return v2;
}

id _SNClassification.__allocating_init(coder:)()
{
  v0 = objc_allocWithZone(sub_1C97FB3E4());
  sub_1C97C926C();
  return _SNClassification.init(coder:)();
}

id _SNClassification.init(coder:)()
{
  sub_1C97C926C();
  swift_getObjectType();
  sub_1C984AEC4();
  v1 = sub_1C9A92478();
  [v0 decodeDoubleForKey_];

  sub_1C97BD318(v2, 0, &qword_1EC3C8F28, 0x1E696AEC0);
  v3 = sub_1C9A93198();
  if (v3)
  {
    v4 = v3;
    v6 = 0;
    sub_1C9A92498();
  }

  sub_1C984AED8();
  swift_deallocPartialClassInstance();
  return 0;
}

Swift::Void __swiftcall _SNClassification.encode(with:)(NSCoder with)
{
  v3 = (v1 + OBJC_IVAR____SNClassification_impl);
  v4 = *(v1 + OBJC_IVAR____SNClassification_impl + 16);
  sub_1C984AEC4();
  v5 = sub_1C9A92478();
  [(objc_class *)with.super.isa encodeDouble:v5 forKey:v4];

  v6 = *v3;

  sub_1C9A92478();
  sub_1C984AEE4();

  v7 = sub_1C9A92478();
  [(objc_class *)with.super.isa encodeObject:v6 forKey:v7];
}

uint64_t _SNClassification.description.getter()
{

  v0 = sub_1C984AED8();
  MEMORY[0x1CCA90230](v0);

  MEMORY[0x1CCA90230](2112800, 0xE300000000000000);
  sub_1C9A92AF8();
  return 0;
}

void sub_1C98469FC()
{
  *(v0 + OBJC_IVAR____SNClassificationResult_cachedClassifications) = 0;
  sub_1C9A93778("Fatal error", 11, 2, 0xD000000000000045, 0x80000001C9AD6750, "SoundAnalysis/SNClassificationResult.swift", 42, 2, 166);
  __break(1u);
}

void _SNClassificationResult.classificationDictionary.getter(uint64_t a1)
{
  sub_1C984AD5C(a1);
  v2 = *(v1 + 48);
  sub_1C97A2CEC(&qword_1EC3CD2A0, &unk_1C9AA5E40);
  sub_1C97C926C();
  v3 = sub_1C9A937E8();
  sub_1C984ACA4();
  v6 = v5 & v4;
  v8 = (v7 + 63) >> 6;

  v9 = 0;
  if (v6)
  {
    while (1)
    {
      v10 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
LABEL_8:
      v14 = v10 | (v9 << 6);
      v15 = (*(v2 + 48) + 16 * v14);
      v17 = *v15;
      v16 = v15[1];
      v18 = *(*(v2 + 56) + 8 * v14);
      v19 = objc_allocWithZone(MEMORY[0x1E696AD98]);

      [v19 initWithDouble_];
      sub_1C984AEAC();
      sub_1C984AE98(v20);
      v22 = (v21 + 16 * v14);
      *v22 = v17;
      v22[1] = v16;
      *(*(v3 + 56) + 8 * v14) = v23;
      v24 = *(v3 + 16);
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        break;
      }

      *(v3 + 16) = v26;
      if (!v6)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v11 = v9;
    while (1)
    {
      v9 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v9 >= v8)
      {

        return;
      }

      ++v11;
      if (*(v2 + 64 + 8 * v9))
      {
        sub_1C984ACD8();
        v6 = v13 & v12;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void _SNClassificationResult.classificationDictionary.setter(uint64_t a1)
{
  sub_1C97A2CEC(&qword_1EC3C8F40, &unk_1C9ACA170);
  sub_1C984AEE4();
  v2 = sub_1C9A937E8();
  v3 = 0;
  sub_1C984ACA4();
  v6 = v5 & v4;
  v8 = (v7 + 63) >> 6;
  if ((v5 & v4) != 0)
  {
    while (1)
    {
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
LABEL_8:
      v14 = v9 | (v3 << 6);
      v15 = (*(a1 + 48) + 16 * v14);
      v17 = *v15;
      v16 = v15[1];
      v18 = *(*(a1 + 56) + 8 * v14);

      [v18 doubleValue];
      sub_1C984AEAC();
      sub_1C984AE98(v19);
      v21 = (v20 + 16 * v14);
      *v21 = v17;
      v21[1] = v16;
      *(*(v2 + 56) + 8 * v14) = v22;
      v23 = *(v2 + 16);
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        break;
      }

      *(v2 + 16) = v25;
      if (!v6)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
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

        v26 = v27 + OBJC_IVAR____SNClassificationResult_impl;
        sub_1C984AF30(v27 + OBJC_IVAR____SNClassificationResult_impl, v28);
        *(v26 + 48) = v2;

        return;
      }

      sub_1C984AEB8();
      if (v11)
      {
        sub_1C984ACD8();
        v6 = v13 & v12;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void (*_SNClassificationResult.classificationDictionary.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  _SNClassificationResult.classificationDictionary.getter(a1);
  *a1 = v3;
  return sub_1C9846EF0;
}

void sub_1C9846EF0(uint64_t *a1, char a2)
{
  if (a2)
  {

    _SNClassificationResult.classificationDictionary.setter(v2);
  }

  else
  {
    _SNClassificationResult.classificationDictionary.setter(*a1);
  }
}

double _SNClassificationResult.timeRange.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_1C97BE2CC(OBJC_IVAR____SNClassificationResult_impl);
  sub_1C984AE10(v3, v4);
  v5 = *(v1 + 40);
  *a1 = *v1;
  *(a1 + 8) = *(v1 + 8);
  *(a1 + 16) = *(v1 + 16);
  result = *(v1 + 32);
  *(a1 + 32) = result;
  *(a1 + 40) = v5;
  return result;
}

double _SNClassificationResult.timeRange.setter(double *a1)
{
  v3 = *a1;
  v4 = *(a1 + 2);
  v5 = *(a1 + 3);
  v6 = *(a1 + 5);
  v7 = sub_1C97BE2CC(OBJC_IVAR____SNClassificationResult_impl);
  sub_1C984AF30(v7, v8);
  *v1 = v3;
  *(v1 + 8) = a1[1];
  *(v1 + 16) = v4;
  *(v1 + 24) = v5;
  result = a1[4];
  *(v1 + 32) = result;
  *(v1 + 40) = v6;
  return result;
}

double sub_1C98470CC@<D0>(_OWORD *a1@<X8>)
{
  _SNClassificationResult.timeRange.getter(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

void (*_SNClassificationResult.timeRange.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = sub_1C97A2C48(0x98uLL);
  *a1 = v3;
  *v3 = v1;
  _SNClassificationResult.timeRange.getter((v3 + 13));
  return sub_1C9847174;
}

void sub_1C9847174(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = 56;
  if (a2)
  {
    v3 = 8;
  }

  v4 = (v2 + v3);
  v5 = *(v2 + 120);
  *v4 = *(v2 + 104);
  v4[1] = v5;
  v4[2] = *(v2 + 136);
  _SNClassificationResult.timeRange.setter((v2 + v3));

  free(v2);
}

uint64_t _SNClassificationResult.classifierIdentifier.getter(uint64_t a1)
{
  sub_1C984AD5C(a1);
  v2 = *(v1 + 56);

  return v2;
}

uint64_t _SNClassificationResult.classifierIdentifier.setter()
{
  sub_1C981E1EC();
  v3 = sub_1C97BE2CC(OBJC_IVAR____SNClassificationResult_impl);
  sub_1C984AF30(v3, v4);
  *(v1 + 56) = v2;
  *(v1 + 64) = v0;
}

uint64_t _SNClassificationResult.classifierIdentifier.modify(void *a1)
{
  v3 = sub_1C97A2C48(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____SNClassificationResult_impl;
  v3[5] = v1;
  v3[6] = v4;
  v5 = v1 + v4;
  sub_1C984AF30(v5, v3);
  v6 = *(v5 + 64);
  v3[3] = *(v5 + 56);
  v3[4] = v6;

  return sub_1C984AED8();
}

void sub_1C9847400(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v5 = *(*a1 + 40);
  v4 = *(*a1 + 48);
  v6 = *(*a1 + 32);
  v7 = v5 + v4;
  *(v7 + 56) = v3;
  *(v7 + 64) = v6;
  if (a2)
  {
  }

  free(v2);
}

id sub_1C984746C()
{
  sub_1C97FB3E4();
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____SNClassificationResult_cachedClassifications] = 0;
  v3 = MEMORY[0x1E6960C98];
  v4 = *MEMORY[0x1E6960C98];
  v5 = *(MEMORY[0x1E6960C98] + 16);
  v6 = *(MEMORY[0x1E6960C98] + 24);
  v7 = *(MEMORY[0x1E6960C98] + 40);
  v8 = sub_1C9A92348();
  v9 = &v1[OBJC_IVAR____SNClassificationResult_impl];
  *v9 = v4;
  *(v9 + 1) = *(v3 + 8);
  *(v9 + 2) = v5;
  *(v9 + 3) = v6;
  *(v9 + 4) = *(v3 + 32);
  *(v9 + 5) = v7;
  *(v9 + 6) = v8;
  *(v9 + 7) = 0;
  *(v9 + 8) = 0;
  v12.receiver = v1;
  v12.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v12, sel_init);

  return v10;
}

id sub_1C9847768(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return sub_1C9847778();
  }

  else
  {
    return 0;
  }
}

id sub_1C9847778()
{
  sub_1C981E1EC();
  v3 = v1 + OBJC_IVAR____SNClassificationResult_impl;
  swift_beginAccess();
  v4 = *(v3 + 48);
  if (*(v4 + 16) && (v5 = sub_1C9A32230(v2, v0), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 8 * v5);
    swift_endAccess();
    v9 = type metadata accessor for _SNClassification(v8);
    v10 = objc_allocWithZone(v9);
    v11 = &v10[OBJC_IVAR____SNClassification_impl];
    *v11 = v2;
    v11[1] = v0;
    v11[2] = v7;
    v13.receiver = v10;
    v13.super_class = v9;

    return objc_msgSendSuper2(&v13, sel_init);
  }

  else
  {
    swift_endAccess();
    return 0;
  }
}

void sub_1C984795C(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, uint64_t a14, uint64_t a15, objc_super a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  sub_1C984ADA8();
  a31 = v33;
  a32 = v39;
  v40 = *(v34 + 16);
  v41 = MEMORY[0x1E69E7CC0];
  if (v40)
  {
    v42 = v34;
    a18 = MEMORY[0x1E69E7CC0];
    sub_1C97B80BC(0, v40, 0, v35, v36, v37, v38);
    v43 = a18;
    v46 = sub_1C9887A94();
    v47 = 0;
    v48 = v42 + 64;
    v78 = v40;
    if ((v46 & 0x8000000000000000) == 0)
    {
      while (v46 < 1 << *(v42 + 32))
      {
        v32 = v46 >> 6;
        if ((*(v48 + 8 * (v46 >> 6)) & (1 << v46)) == 0)
        {
          goto LABEL_28;
        }

        if (*(v42 + 36) != v44)
        {
          goto LABEL_29;
        }

        v79 = v45;
        v80 = v47;
        v81 = v44;
        v49 = (*(v42 + 48) + 16 * v46);
        v51 = *v49;
        v50 = v49[1];
        v52 = *(*(v42 + 56) + 8 * v46);
        a18 = v43;
        v54 = *(v43 + 16);
        v53 = *(v43 + 24);

        if (v54 >= v53 >> 1)
        {
          sub_1C97B80BC(v53 > 1, v54 + 1, 1, v55, v56, v57, v58);
          v43 = a18;
        }

        *(v43 + 16) = v54 + 1;
        v59 = (v43 + 24 * v54);
        v59[4] = v51;
        v59[5] = v50;
        v59[6] = v52;
        v60 = 1 << *(v42 + 32);
        if (v46 >= v60)
        {
          goto LABEL_30;
        }

        v48 = v42 + 64;
        v61 = *(v42 + 64 + 8 * v32);
        if ((v61 & (1 << v46)) == 0)
        {
          goto LABEL_31;
        }

        if (*(v42 + 36) != v81)
        {
          goto LABEL_32;
        }

        v62 = v61 & (-2 << (v46 & 0x3F));
        if (v62)
        {
          v60 = __clz(__rbit64(v62)) | v46 & 0x7FFFFFFFFFFFFFC0;
          v63 = v78;
        }

        else
        {
          v64 = v32 << 6;
          v65 = v32 + 1;
          v63 = v78;
          v66 = (v42 + 72 + 8 * v32);
          while (v65 < (v60 + 63) >> 6)
          {
            v67 = *v66++;
            v32 = v67;
            v64 += 64;
            ++v65;
            if (v67)
            {
              sub_1C97FDD94(v46, v81, v79 & 1);
              v60 = __clz(__rbit64(v32)) + v64;
              goto LABEL_18;
            }
          }

          sub_1C97FDD94(v46, v81, v79 & 1);
        }

LABEL_18:
        v47 = v80 + 1;
        if (v80 + 1 == v63)
        {
          v41 = MEMORY[0x1E69E7CC0];
          goto LABEL_23;
        }

        v45 = 0;
        v44 = *(v42 + 36);
        v46 = v60;
        if (v60 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);

    __break(1u);
  }

  else
  {
    v43 = MEMORY[0x1E69E7CC0];
LABEL_23:
    a18 = v43;

    sub_1C9849640(&a18);

    v68 = a18;
    v69 = *(a18 + 16);
    if (v69)
    {
      a18 = v41;
      sub_1C9A93698();
      v71 = type metadata accessor for _SNClassification(v70);
      v72 = (v68 + 48);
      do
      {
        v74 = *(v72 - 2);
        v73 = *(v72 - 1);
        v75 = *v72;
        v72 += 3;
        v76 = objc_allocWithZone(v71);
        v77 = &v76[OBJC_IVAR____SNClassification_impl];
        *v77 = v74;
        *(v77 + 1) = v73;
        *(v77 + 2) = v75;
        a16.receiver = v76;
        a16.super_class = v71;

        objc_msgSendSuper2(&a16, sel_init);
        sub_1C9A93678();
        sub_1C9A936A8();
        sub_1C9A936B8();
        sub_1C9A93688();
        --v69;
      }

      while (v69);
    }

    sub_1C984ADC8();
  }
}

id sub_1C9847CE8()
{
  sub_1C97FB3E4();
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____SNClassificationResult_cachedClassifications] = 0;
  memcpy(&v1[OBJC_IVAR____SNClassificationResult_impl], v0, 0x48uLL);
  v4.receiver = v1;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, sel_init);
}

id _SNClassificationResult.copy(with:)@<X0>(void *a1@<X8>)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____SNClassificationResult_impl;
  sub_1C984AE10(v1 + OBJC_IVAR____SNClassificationResult_impl, v9);
  memcpy(__dst, (v1 + v4), sizeof(__dst));
  memcpy(v8, (v1 + v4), sizeof(v8));
  v5 = objc_allocWithZone(ObjectType);
  sub_1C984A444(__dst, &v7);
  result = sub_1C9847CE8();
  a1[3] = ObjectType;
  *a1 = result;
  return result;
}

uint64_t sub_1C9847E10(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void *__return_ptr))
{
  v5 = a1;
  a4(v8);

  sub_1C97A5A8C(v8, v8[3]);
  v6 = sub_1C9A93B08();
  sub_1C97A592C(v8);
  return v6;
}

uint64_t _SNClassificationResult.hash.getter()
{
  v1 = OBJC_IVAR____SNClassificationResult_impl;
  sub_1C984AE10(v0 + OBJC_IVAR____SNClassificationResult_impl, v7);
  memcpy(__dst, (v0 + v1), sizeof(__dst));
  memcpy(v6, (v0 + v1), sizeof(v6));
  sub_1C9A93CC8();
  sub_1C984A444(__dst, v4);
  sub_1C992FA74(v5);
  v2 = sub_1C9A93D18();
  sub_1C984A4A0(__dst);
  return v2;
}

uint64_t sub_1C9847F60(uint64_t a1, uint64_t (*a2)(__int128 *, uint64_t))
{
  sub_1C97A2C7C(a1, &v7);
  if (v8)
  {
    sub_1C97A2D34(&v7, v6);
    v4 = a2(v6, v2);
    sub_1C97A592C(v6);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_1C9847FF0(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_OWORD *))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    sub_1C9A93318();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v7 = a1;
  }

  v8 = a4(v10);

  sub_1C97A59D0(v10);
  return v8 & 1;
}

void _SNClassificationResult.__allocating_init(coder:)()
{
  v0 = objc_allocWithZone(sub_1C97FB3E4());
  sub_1C97C926C();
  _SNClassificationResult.init(coder:)();
}

void _SNClassificationResult.init(coder:)()
{
  sub_1C97C926C();
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____SNClassificationResult_cachedClassifications] = 0;
  sub_1C97BD318(v2, 0, &qword_1EC3C5690, 0x1E696B098);
  v3 = sub_1C9A93198();
  if (!v3)
  {
    sub_1C97A8E8C();
    v8 = swift_allocError();
    *v9 = 0;
    swift_willThrow();

LABEL_17:

    swift_deallocPartialClassInstance();
    return;
  }

  v5 = v3;
  sub_1C97BD318(v4, 0, &qword_1EC3C8F28, 0x1E696AEC0);
  v6 = sub_1C9A93198();
  v49 = 0;
  v50 = 0;
  sub_1C9A92498();

  sub_1C97BD318(v7, 0, &qword_1EC3C54B0, 0x1E696AD98);
  v10 = sub_1C9A931A8();
  if (!v10 || (v55[0] = v10, sub_1C97A2CEC(&qword_1EC3C8F58, &qword_1C9AA5E50), sub_1C97A2CEC(&qword_1EC3C8F60, &qword_1C9AA5E58), (swift_dynamicCast() & 1) == 0))
  {

    sub_1C97A8E8C();
    v8 = swift_allocError();
    *v36 = 0;
    swift_willThrow();

    goto LABEL_17;
  }

  v45 = v0;
  v46 = ObjectType;
  v44 = v5;
  [v5 CMTimeRangeValue];
  v42 = v51;
  v43 = v49;
  v40 = v53;
  v41 = v52;
  sub_1C97A2CEC(&qword_1EC3C8F40, &unk_1C9ACA170);
  sub_1C97C926C();
  v11 = sub_1C9A937E8();
  v12 = 0;
  v13 = v54 + 64;
  v47 = v54;
  sub_1C984ACA4();
  v16 = v15 & v14;
  v18 = (v17 + 63) >> 6;
  v20 = v19 + 64;
  if ((v15 & v14) != 0)
  {
    while (1)
    {
      v21 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_13:
      v25 = v21 | (v12 << 6);
      v26 = (*(v47 + 48) + 16 * v25);
      v28 = *v26;
      v27 = v26[1];
      v29 = *(*(v47 + 56) + 8 * v25);

      [v29 doubleValue];
      sub_1C984AEAC();
      *(v20 + v31) |= v30 << v25;
      v32 = (*(v11 + 48) + 16 * v25);
      *v32 = v28;
      v32[1] = v27;
      sub_1C984AE84(v33);
      if (v35)
      {
        break;
      }

      *(v11 + 16) = v34;
      if (!v16)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v12 >= v18)
      {

        sub_1C984AD80(OBJC_IVAR____SNClassificationResult_impl, v39, v40, v41, v42, v43);
        *(v37 + 56) = 0;
        *(v37 + 64) = 0;
        v48.receiver = v38;
        v48.super_class = v46;
        objc_msgSendSuper2(&v48, sel_init);

        return;
      }

      ++v22;
      if (*(v13 + 8 * v12))
      {
        sub_1C984ACD8();
        v16 = v24 & v23;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
}

Swift::Void __swiftcall _SNClassificationResult.encode(with:)(NSCoder with)
{
  _SNClassificationResult.timeRange.getter(v12);
  v3 = [objc_opt_self() valueWithCMTimeRange_];
  v4 = sub_1C9A92478();
  [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];

  _SNClassificationResult.classificationDictionary.getter(v5);
  sub_1C97BD318(v6, 0, &qword_1EC3C54B0, 0x1E696AD98);
  v7 = sub_1C9A922F8();

  v8 = sub_1C9A92478();
  [(objc_class *)with.super.isa encodeObject:v7 forKey:v8];

  v9 = v1 + OBJC_IVAR____SNClassificationResult_impl;
  sub_1C984AE10(v1 + OBJC_IVAR____SNClassificationResult_impl, v12);
  if (*(v9 + 64))
  {

    v10 = sub_1C9A92478();

    v11 = sub_1C9A92478();
    [(objc_class *)with.super.isa encodeObject:v10 forKey:v11];
  }
}

id sub_1C98486DC(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  sub_1C984AED8();
  v5 = sub_1C9A92478();

  return v5;
}

uint64_t _SNClassificationResult.description.getter()
{
  v1 = v0;
  v15.receiver = v0;
  v15.super_class = swift_getObjectType();
  v2 = objc_msgSendSuper2(&v15, sel_description);
  v3 = sub_1C9A924A8();
  v5 = v4;

  v16 = v3;
  v17 = v5;
  MEMORY[0x1CCA90230](32, 0xE100000000000000);
  _SNClassificationResult.timeRange.getter(v18);
  v6 = objc_opt_self();
  v14[0] = v18[0];
  v14[1] = v18[1];
  v14[2] = v18[2];
  v7 = [v6 valueWithCMTimeRange_];
  v8 = [v7 description];
  v9 = sub_1C9A924A8();
  v11 = v10;

  MEMORY[0x1CCA90230](v9, v11);

  MEMORY[0x1CCA90230](32, 0xE100000000000000);
  sub_1C984AE10(v1 + OBJC_IVAR____SNClassificationResult_impl, v14);

  sub_1C9A92338();

  v12 = sub_1C984ADE8();
  MEMORY[0x1CCA90230](v12);

  return v16;
}

id sub_1C98488C4(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____SNClassificationResult_cachedClassifications] = 0;
  sub_1C97BD318(v7, 0, &unk_1EC3C9010, 0x1E696ACD0);
  sub_1C97BD318(v8, 0, &qword_1EC3CAE80, off_1E8345890);
  v9 = sub_1C9A92FF8();
  v23 = v9;
  if (v9)
  {
    v24 = sub_1C9848B9C();

    v25 = OBJC_IVAR____SNClassificationResult_impl;
    sub_1C984AE10(&v24[OBJC_IVAR____SNClassificationResult_impl], v31);
    memcpy(__dst, &v24[v25], sizeof(__dst));
    sub_1C984A444(__dst, v30);

    memcpy(&v3[OBJC_IVAR____SNClassificationResult_impl], __dst, 0x48uLL);
  }

  else
  {
    sub_1C984AB48();
    v28 = swift_allocError();
    swift_willThrow();
    if (qword_1EC3C5520 != -1)
    {
      sub_1C97DAA64(&qword_1EC3C5520);
    }

    v29 = a2;
    v10 = sub_1C9A91B58();
    sub_1C97BFF6C(v10, qword_1EC3D3108);
    v11 = sub_1C9A91B38();
    v12 = sub_1C9A92FB8();
    v13 = ObjectType;
    if (os_log_type_enabled(v11, v12))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      __dst[0] = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_1C9849140(0xD000000000000047, 0x80000001C9AD67E0, __dst);
      _os_log_impl(&dword_1C9788000, v11, v12, "Would-be Fatal Error! %s", v14, 0xCu);
      sub_1C97A592C(v15);
      sub_1C9840CEC();
      sub_1C9840CEC();
    }

    v16 = MEMORY[0x1E6960C98];
    v17 = *MEMORY[0x1E6960C98];
    v18 = *(MEMORY[0x1E6960C98] + 16);
    v19 = *(MEMORY[0x1E6960C98] + 24);
    v20 = *(MEMORY[0x1E6960C98] + 40);
    v21 = sub_1C9A92348();

    v22 = &v3[OBJC_IVAR____SNClassificationResult_impl];
    *v22 = v17;
    *(v22 + 1) = *(v16 + 8);
    *(v22 + 2) = v18;
    *(v22 + 3) = v19;
    *(v22 + 4) = *(v16 + 32);
    *(v22 + 5) = v20;
    *(v22 + 6) = v21;
    *(v22 + 7) = 0;
    *(v22 + 8) = 0;
    ObjectType = v13;
    a2 = v29;
  }

  v33.receiver = v3;
  v33.super_class = ObjectType;
  v26 = objc_msgSendSuper2(&v33, sel_init, v29);
  sub_1C97A5978(a1, a2);
  return v26;
}

uint64_t sub_1C9848B9C()
{
  v1 = [v0 impl];
  sub_1C9A93318();
  swift_unknownObjectRelease();
  type metadata accessor for _SNClassificationResult(v2);
  swift_dynamicCast();
  return v4;
}

uint64_t _SNClassificationResult.binarySampleRepresentation()()
{
  v17[4] = *MEMORY[0x1E69E9840];
  ObjectType = swift_getObjectType();
  v2 = objc_opt_self();
  v17[3] = ObjectType;
  v17[0] = v0;
  v3 = objc_allocWithZone(SNClassificationResult);
  v4 = v0;
  v5 = sub_1C98490D8(v17);
  v17[0] = 0;
  v6 = [v2 archivedDataWithRootObject:v5 requiringSecureCoding:1 error:v17];

  v7 = v17[0];
  if (v6)
  {
    v8 = sub_1C9A91618();
  }

  else
  {
    v9 = v7;
    v10 = sub_1C9A913C8();

    swift_willThrow();
    if (qword_1EC3C5520 != -1)
    {
      sub_1C97DAA64(&qword_1EC3C5520);
    }

    v11 = sub_1C9A91B58();
    sub_1C97BFF6C(v11, qword_1EC3D3108);
    v12 = sub_1C9A91B38();
    v13 = sub_1C9A92FB8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v17[0] = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_1C9849140(0xD000000000000043, 0x80000001C9AD6640, v17);
      _os_log_impl(&dword_1C9788000, v12, v13, "Would-be Fatal Error! %s", v14, 0xCu);
      sub_1C97A592C(v15);
      sub_1C9840CEC();
      sub_1C9840CEC();
    }

    return 0;
  }

  return v8;
}

id _SNClassificationResult.__allocating_init(binarySampleRepresentation:metadata:timestamp:)()
{
  sub_1C981E1EC();

  v2 = objc_allocWithZone(v1);
  v3 = objc_allocWithZone(v1);
  v4 = sub_1C984AEE4();
  v5 = sub_1C98488C4(v4, v0);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v5;
}

id _SNClassificationResult.init(binarySampleRepresentation:metadata:timestamp:)(uint64_t a1, unint64_t a2)
{
  ObjectType = swift_getObjectType();

  v5 = objc_allocWithZone(ObjectType);
  sub_1C98488C4(a1, a2);
  sub_1C97C926C();
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v5;
}

double sub_1C9849094@<D0>(_OWORD *a1@<X8>)
{
  _SNClassificationResult.timeRange.getter(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

void *sub_1C98490D8(void *a1)
{
  sub_1C97A5A8C(a1, a1[3]);
  [v1 initWithImpl_];
  sub_1C984AEE4();
  swift_unknownObjectRelease();
  sub_1C97A592C(a1);
  return v1;
}

unint64_t sub_1C9849140(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1C9849204(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_1C97BD360(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_1C97A592C(v11);
  return v7;
}

unint64_t sub_1C9849204(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1C9849304(a5, a6);
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
    result = sub_1C9A93658();
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

uint64_t sub_1C9849304(uint64_t a1, unint64_t a2)
{
  v3 = sub_1C9849350(a1, a2);
  sub_1C9849468(&unk_1F4929C38);
  return v3;
}

uint64_t sub_1C9849350(uint64_t a1, unint64_t a2)
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

  for (; v5; v5 = sub_1C9A925A8())
  {
    result = sub_1C98F1078(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_1C9A93598();
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
          result = sub_1C9A93658();
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

uint64_t sub_1C9849468(uint64_t result)
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

    result = sub_1C984954C(result, v7, 1, v3);
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

char *sub_1C984954C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1C97A2CEC(&qword_1EC3C69E0, &qword_1C9A9D498);
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

uint64_t sub_1C9849640(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C98254E8(v2, v3, v4, v5, v6, v7, v8);
    v2 = v9;
  }

  v10 = *(v2 + 16);
  v12[0] = v2 + 32;
  v12[1] = v10;
  result = sub_1C98496AC(v12);
  *a1 = v2;
  return result;
}

uint64_t sub_1C98496AC(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1C9A93A88();
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
        v6 = sub_1C9A92838();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1C9849820(v7, v8, a1, v4);
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
    return sub_1C98497A0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1C98497A0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 24 * a3;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 24 * a3 + 16);
      v8 = v6;
      v9 = v5;
      do
      {
        if (*(v9 - 1) >= v7)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v10 = *v9;
        v11 = *(v9 + 1);
        *v9 = *(v9 - 3);
        v9[2] = *(v9 - 1);
        *(v9 - 2) = v11;
        *(v9 - 1) = v7;
        *(v9 - 3) = v10;
        v9 -= 3;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 24;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1C9849820(double **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v90 = MEMORY[0x1E69E7CC0];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    v85 = a4;
    while (1)
    {
      v9 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v10 = *(*a3 + 24 * v9 + 16);
        v11 = *a3 + 24 * v7;
        v12 = 24 * v7;
        v13 = *(v11 + 16);
        v14 = (v11 + 64);
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
          v14 += 3;
          v19 = (v13 < v10) ^ (v16 >= v18);
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
            goto LABEL_108;
          }

          if (v7 < v9)
          {
            if (v6 >= v17)
            {
              v6 = v17;
            }

            v20 = 24 * v6 - 8;
            v21 = v9;
            v22 = v7;
            do
            {
              if (v22 != --v21)
              {
                v23 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v24 = (v23 + v12);
                v25 = (v23 + v20);
                v26 = *v24;
                v27 = v24[1];
                v28 = v24[2];
                v29 = *v25;
                *v24 = *(v25 - 1);
                v24[2] = v29;
                *(v25 - 2) = v26;
                *(v25 - 1) = v27;
                *v25 = v28;
              }

              ++v22;
              v20 -= 24;
              v12 += 24;
            }

            while (v22 < v21);
            v6 = a3[1];
          }
        }
      }

      if (v9 < v6)
      {
        if (__OFSUB__(v9, v7))
        {
          goto LABEL_107;
        }

        if (v9 - v7 < a4)
        {
          if (__OFADD__(v7, a4))
          {
            goto LABEL_109;
          }

          if (v7 + a4 < v6)
          {
            v6 = v7 + a4;
          }

          if (v6 < v7)
          {
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
            return;
          }

          if (v9 != v6)
          {
            v30 = *a3;
            v31 = *a3 + 24 * v9;
            v32 = v7 - v9;
            do
            {
              v33 = *(v30 + 24 * v9 + 16);
              v34 = v32;
              v35 = v31;
              do
              {
                if (*(v35 - 1) >= v33)
                {
                  break;
                }

                if (!v30)
                {
                  goto LABEL_111;
                }

                v36 = *v35;
                v37 = *(v35 + 1);
                *v35 = *(v35 - 3);
                v35[2] = *(v35 - 1);
                *(v35 - 2) = v37;
                *(v35 - 1) = v33;
                *(v35 - 3) = v36;
                v35 -= 3;
              }

              while (!__CFADD__(v34++, 1));
              ++v9;
              v31 += 24;
              --v32;
            }

            while (v9 != v6);
            v9 = v6;
          }
        }
      }

      if (v9 < v7)
      {
        goto LABEL_106;
      }

      v87 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C97E510C(0, v8[2] + 1, 1, v8);
        v8 = v83;
      }

      v40 = v8[2];
      v39 = v8[3];
      v41 = v40 + 1;
      if (v40 >= v39 >> 1)
      {
        sub_1C97E510C(v39 > 1, v40 + 1, 1, v8);
        v8 = v84;
      }

      v8[2] = v41;
      v42 = v8 + 4;
      v43 = &v8[2 * v40 + 4];
      *v43 = v7;
      v43[1] = v87;
      v88 = *result;
      if (!*result)
      {
        goto LABEL_114;
      }

      if (v40)
      {
        while (1)
        {
          v44 = v41 - 1;
          v45 = &v42[2 * v41 - 2];
          v46 = &v8[2 * v41];
          if (v41 >= 4)
          {
            break;
          }

          if (v41 == 3)
          {
            v47 = v8[4];
            v48 = v8[5];
            v57 = __OFSUB__(v48, v47);
            v49 = v48 - v47;
            v50 = v57;
LABEL_56:
            if (v50)
            {
              goto LABEL_96;
            }

            v62 = *v46;
            v61 = v46[1];
            v63 = __OFSUB__(v61, v62);
            v64 = v61 - v62;
            v65 = v63;
            if (v63)
            {
              goto LABEL_99;
            }

            v66 = v45[1];
            v67 = v66 - *v45;
            if (__OFSUB__(v66, *v45))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v64, v67))
            {
              goto LABEL_104;
            }

            if (v64 + v67 >= v49)
            {
              if (v49 < v67)
              {
                v44 = v41 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v41 < 2)
          {
            goto LABEL_98;
          }

          v69 = *v46;
          v68 = v46[1];
          v57 = __OFSUB__(v68, v69);
          v64 = v68 - v69;
          v65 = v57;
LABEL_71:
          if (v65)
          {
            goto LABEL_101;
          }

          v71 = *v45;
          v70 = v45[1];
          v57 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v57)
          {
            goto LABEL_103;
          }

          if (v72 < v64)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v44 - 1 >= v41)
          {
            __break(1u);
LABEL_91:
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
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v76 = &v42[2 * v44 - 2];
          v77 = *v76;
          v78 = &v42[2 * v44];
          v79 = v78[1];
          sub_1C9849E6C(*a3 + 24 * *v76, (*a3 + 24 * *v78), *a3 + 24 * v79, v88);
          if (v5)
          {
            goto LABEL_89;
          }

          if (v79 < v77)
          {
            goto LABEL_91;
          }

          v80 = v8;
          v81 = v8[2];
          if (v44 > v81)
          {
            goto LABEL_92;
          }

          *v76 = v77;
          v76[1] = v79;
          if (v44 >= v81)
          {
            goto LABEL_93;
          }

          v41 = v81 - 1;
          memmove(&v42[2 * v44], v78 + 2, 16 * (v81 - 1 - v44));
          v80[2] = v81 - 1;
          v82 = v81 > 2;
          v8 = v80;
          v5 = 0;
          if (!v82)
          {
            goto LABEL_85;
          }
        }

        v51 = &v42[2 * v41];
        v52 = *(v51 - 8);
        v53 = *(v51 - 7);
        v57 = __OFSUB__(v53, v52);
        v54 = v53 - v52;
        if (v57)
        {
          goto LABEL_94;
        }

        v56 = *(v51 - 6);
        v55 = *(v51 - 5);
        v57 = __OFSUB__(v55, v56);
        v49 = v55 - v56;
        v50 = v57;
        if (v57)
        {
          goto LABEL_95;
        }

        v58 = v46[1];
        v59 = v58 - *v46;
        if (__OFSUB__(v58, *v46))
        {
          goto LABEL_97;
        }

        v57 = __OFADD__(v49, v59);
        v60 = v49 + v59;
        if (v57)
        {
          goto LABEL_100;
        }

        if (v60 >= v54)
        {
          v74 = *v45;
          v73 = v45[1];
          v57 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v57)
          {
            goto LABEL_105;
          }

          if (v49 < v75)
          {
            v44 = v41 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v6 = a3[1];
      v7 = v87;
      a4 = v85;
      if (v87 >= v6)
      {
        v90 = v8;
        break;
      }
    }
  }

  if (!*result)
  {
    goto LABEL_115;
  }

  sub_1C9849D34(&v90, *result, a3);
LABEL_89:
}

uint64_t sub_1C9849D34(uint64_t *a1, double *a2, void *a3)
{
  v4 = a1;
  v15 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1C984A014(v15);
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
    sub_1C9849E6C(*a3 + 24 * *v4, (*a3 + 24 * *v9), *a3 + 24 * v10, a2);
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

uint64_t sub_1C9849E6C(unint64_t a1, double *a2, unint64_t a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 24;
  v9 = (a3 - a2) / 24;
  if (v8 < v9)
  {
    sub_1C97E84F4(a1, (a2 - a1) / 24, a4);
    v10 = &v4[3 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      if (v4[2] >= v6[2])
      {
        break;
      }

      v12 = v6;
      v13 = v7 == v6;
      v6 += 3;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 24;
    }

    v12 = v4;
    v13 = v7 == v4;
    v4 += 3;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    v14 = *v12;
    *(v7 + 16) = v12[2];
    *v7 = v14;
    goto LABEL_13;
  }

  sub_1C97E84F4(a2, (a3 - a2) / 24, a4);
  v10 = &v4[3 * v9];
LABEL_15:
  for (v5 -= 24; v10 > v4 && v6 > v7; v5 -= 24)
  {
    if (*(v6 - 1) < *(v10 - 1))
    {
      v17 = v6 - 3;
      v13 = v5 + 24 == v6;
      v6 -= 3;
      if (!v13)
      {
        v18 = *v17;
        *(v5 + 16) = v17[2];
        *v5 = v18;
        v6 = v17;
      }

      goto LABEL_15;
    }

    if (v10 != (v5 + 24))
    {
      v16 = *(v10 - 3);
      *(v5 + 16) = *(v10 - 1);
      *v5 = v16;
    }

    v10 -= 3;
  }

LABEL_28:
  v19 = (v10 - v4) / 24;
  if (v6 != v4 || v6 >= &v4[3 * v19])
  {
    memmove(v6, v4, 24 * v19);
  }

  return 1;
}

char *sub_1C984A028(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[16 * a2] <= __dst)
  {
    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
}

char *sub_1C984A054(char *result, int64_t a2, char a3, char *a4)
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
    sub_1C97A2CEC(&unk_1EC3C7870, &qword_1C9A9D520);
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