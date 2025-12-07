uint64_t sub_1A39F0900@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v13[0] = v2[2];
  v5 = v13[0];
  v13[1] = v6;
  v13[2] = v7;
  v13[3] = v8;
  v9 = *(type metadata accessor for ControlGrid(0, v13) - 8);
  v10 = v2 + ((*(v9 + 80) + 48) & ~*(v9 + 80));
  v11 = *(v10 + *(v9 + 64));

  return sub_1A39E9F78(a1, v10, v11, v5, v6, v7, v8, a2);
}

void *sub_1A39F09F4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v14[0] = v2[2];
  v5 = v14[0];
  v14[1] = v6;
  v14[2] = v7;
  v14[3] = v8;
  v9 = *(type metadata accessor for ControlGrid(0, v14) - 8);
  v10 = v2[6];
  v11 = v2 + ((*(v9 + 80) + 56) & ~*(v9 + 80));
  v12 = *(v11 + *(v9 + 64));

  return sub_1A39EAE40(a1, v10, v11, v12, v5, v6, v7, v8, a2);
}

double sub_1A39F0AD4(uint64_t *a1)
{
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v11[0] = *(v1 + 16);
  v3 = v11[0];
  v11[1] = v4;
  v11[2] = v5;
  v11[3] = v6;
  v7 = *(type metadata accessor for ControlGrid(0, v11) - 8);
  v8 = *(v1 + 48);
  v9 = v1 + ((*(v7 + 80) + 49) & ~*(v7 + 80));

  return sub_1A39ECFEC(a1, v8, v9, v3, v4, v5, v6);
}

unint64_t sub_1A39F0B84()
{
  result = qword_1EB100BE0;
  if (!qword_1EB100BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB100BE0);
  }

  return result;
}

unint64_t sub_1A39F0BD8()
{
  result = qword_1EB100BE8;
  if (!qword_1EB100BE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FFD28, &qword_1A3A7C6D0);
    sub_1A389EEE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB100BE8);
  }

  return result;
}

unint64_t sub_1A39F0C5C()
{
  result = qword_1EB100BF8;
  if (!qword_1EB100BF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB100BA0, &unk_1A3A82090);
    sub_1A38A04EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB100BF8);
  }

  return result;
}

uint64_t sub_1A39F0D14()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v8[0] = v0[2];
  v8[1] = v1;
  v8[2] = v2;
  v8[3] = v3;
  v4 = *(type metadata accessor for ControlGrid(0, v8) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = *(v0 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1A39EE19C(v0 + v5, v6);
}

uint64_t objectdestroy_24Tm()
{
  v1 = *(v0 + 32);
  v13[0] = *(v0 + 16);
  v13[1] = v1;
  v2 = type metadata accessor for ControlGrid(0, v13);
  v3 = (*(*(v2 - 8) + 80) + 48) & ~*(*(v2 - 8) + 80);
  v4 = *(*(v2 - 8) + 64) + v3 + 7;
  v5 = v0 + v3;

  if (*(v5 + 72))
  {
  }

  v6 = v4 & 0xFFFFFFFFFFFFFFF8;
  v7 = v5 + *(v2 + 76);
  v8 = sub_1A3A30430();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v7, 1, v8))
  {
    (*(v9 + 8))(v7, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCF78, &qword_1A3A6EC40);

  v10 = *(v2 + 88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCE78, &unk_1A3A6F1A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1A3A30090();
    (*(*(v11 - 8) + 8))(v5 + v10, v11);
  }

  else
  {
  }

  if (*(v0 + v6) >= 0x23uLL)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A39F1034()
{
  v1 = *(v0 + 32);
  v5[0] = *(v0 + 16);
  v5[1] = v1;
  v2 = *(type metadata accessor for ControlGrid(0, v5) - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  return (*(v0 + v3 + 56))(*(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

void sub_1A39F10D8(uint64_t a1@<X8>)
{
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v12[0] = v1[2];
  v3 = v12[0];
  v12[1] = v4;
  v12[2] = v5;
  v12[3] = v6;
  v7 = *(type metadata accessor for ControlGrid(0, v12) - 8);
  v8 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v9 = v1 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
  v10 = *v9;
  v11 = v9[8];

  sub_1A39EDA78(v1 + v8, v10, v11, v3, v4, v5, v6, a1);
}

uint64_t sub_1A39F11C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1A39F1204(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1A39F124C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1A39F12DC()
{
  result = qword_1EB100C98;
  if (!qword_1EB100C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB100C98);
  }

  return result;
}

unint64_t sub_1A39F1364()
{
  result = qword_1EB100CA0[0];
  if (!qword_1EB100CA0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB100CA0);
  }

  return result;
}

uint64_t sub_1A39F1444(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_1A39F148C()
{
  swift_getKeyPath("кhG");
  sub_1A39F225C();
  sub_1A3A2F080();

  return *(v0 + 24);
}

void sub_1A39F14FC(double a1, double a2)
{
  if (*(v2 + 24) == a1 && *(v2 + 32) == a2)
  {
    *(v2 + 24) = a1;
    *(v2 + 32) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath("кhG");
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A39F225C();
    sub_1A3A2F070();
  }
}

double sub_1A39F15EC()
{
  swift_getKeyPath(byte_1A3A82518);
  sub_1A39F225C();
  sub_1A3A2F080();

  return *(v0 + 40);
}

uint64_t sub_1A39F165C()
{
  swift_getKeyPath(byte_1A3A824F0);
  sub_1A39F225C();
  sub_1A3A2F080();

  return *(v0 + 56);
}

double sub_1A39F16CC()
{
  swift_getKeyPath(a0_21);
  sub_1A39F225C();
  sub_1A3A2F080();

  return *(v0 + 72);
}

uint64_t sub_1A39F173C()
{
  swift_getKeyPath(byte_1A3A82428);
  sub_1A39F225C();
  sub_1A3A2F080();

  return *(v0 + 80);
}

uint64_t sub_1A39F17AC()
{
  swift_getKeyPath(byte_1A3A82450);
  sub_1A39F225C();
  sub_1A3A2F080();

  return *(v0 + 82);
}

uint64_t sub_1A39F181C()
{
  swift_getKeyPath("лhG");
  sub_1A39F225C();
  sub_1A3A2F080();

  return *(v0 + 16);
}

void sub_1A39F188C(char a1)
{
  if (*(v1 + 16) == (a1 & 1))
  {
    *(v1 + 16) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath("лhG");
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A39F225C();
    sub_1A3A2F070();
  }
}

uint64_t sub_1A39F196C(uint64_t result, double a2, double a3)
{
  *(result + 24) = a2;
  *(result + 32) = a3;
  return result;
}

void sub_1A39F1974(double a1, double a2)
{
  if (*(v2 + 40) == a1 && *(v2 + 48) == a2)
  {
    *(v2 + 40) = a1;
    *(v2 + 48) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath(byte_1A3A82518);
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A39F225C();
    sub_1A3A2F070();
  }
}

uint64_t sub_1A39F1A64(uint64_t result, double a2, double a3)
{
  *(result + 40) = a2;
  *(result + 48) = a3;
  return result;
}

double sub_1A39F1A6C(uint64_t a1)
{
  if (*(v1 + 56) != a1)
  {
    KeyPath = swift_getKeyPath(byte_1A3A824F0);
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A39F225C();
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A39F1B48()
{
  swift_getKeyPath(aP_34);
  sub_1A39F225C();
  sub_1A3A2F080();

  return *(v0 + 64);
}

double sub_1A39F1BB8(uint64_t a1)
{
  if (*(v1 + 64) != a1)
  {
    KeyPath = swift_getKeyPath(aP_34);
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A39F225C();
    sub_1A3A2F070();
  }

  return result;
}

void sub_1A39F1C94(double a1)
{
  if (*(v1 + 72) == a1)
  {
    *(v1 + 72) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath(a0_21);
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A39F225C();
    sub_1A3A2F070();
  }
}

void sub_1A39F1D84(char a1)
{
  if (*(v1 + 80) == (a1 & 1))
  {
    *(v1 + 80) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath(byte_1A3A82428);
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A39F225C();
    sub_1A3A2F070();
  }
}

uint64_t sub_1A39F1E6C()
{
  swift_getKeyPath(aP_35);
  sub_1A39F225C();
  sub_1A3A2F080();

  return *(v0 + 81);
}

void sub_1A39F1EDC(char a1)
{
  if (*(v1 + 81) == (a1 & 1))
  {
    *(v1 + 81) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath(aP_35);
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A39F225C();
    sub_1A3A2F070();
  }
}

void sub_1A39F1FC4(char a1)
{
  if (*(v1 + 82) == (a1 & 1))
  {
    *(v1 + 82) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath(byte_1A3A82450);
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A39F225C();
    sub_1A3A2F070();
  }
}

uint64_t sub_1A39F20AC()
{
  v1 = OBJC_IVAR____TtC8CameraUI25ChromeSmartStyleViewModel___observationRegistrar;
  v2 = sub_1A3A2F0C0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ChromeSmartStyleViewModel(uint64_t a1)
{
  result = qword_1ED999278;
  if (!qword_1ED999278)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A39F219C(uint64_t a1)
{
  result = sub_1A3A2F0C0();
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

unint64_t sub_1A39F225C()
{
  result = qword_1ED996610;
  if (!qword_1ED996610)
  {
    type metadata accessor for ChromeSmartStyleViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED996610);
  }

  return result;
}

uint64_t sub_1A39F22D4(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = 0u;
  *(v1 + 40) = 0u;
  *(v1 + 56) = 0;
  *(v1 + 64) = 1;
  *(v1 + 72) = 0x3FF0000000000000;
  *(v1 + 80) = 0;
  *(v1 + 82) = 0;
  sub_1A3A2F0B0();
  return v1;
}

__n128 sub_1A39F2334()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 40) = result;
  return result;
}

__n128 sub_1A39F2344()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 24) = result;
  return result;
}

double sub_1A39F2354()
{
  swift_getKeyPath(byte_1A3A82638);
  sub_1A39F31F8();
  sub_1A3A2F080();

  return *(v0 + 248);
}

void sub_1A39F23C8(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v10.origin.x = a1;
  v10.origin.y = a2;
  v10.size.width = a3;
  v10.size.height = a4;
  if (CGRectEqualToRect(*(v4 + 248), v10))
  {
    *(v4 + 248) = a1;
    *(v4 + 256) = a2;
    *(v4 + 264) = a3;
    *(v4 + 272) = a4;
  }

  else
  {
    KeyPath = swift_getKeyPath(byte_1A3A82638);
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A39F31F8();
    sub_1A3A2F070();
  }
}

double sub_1A39F24E0()
{
  swift_getKeyPath(asc_1A3A82750);
  sub_1A39F31F8();
  sub_1A3A2F080();

  return *(v0 + 280);
}

double sub_1A39F2554()
{
  swift_getKeyPath(asc_1A3A82728);
  sub_1A39F31F8();
  sub_1A3A2F080();

  return *(v0 + 312);
}

__n128 sub_1A39F25C8@<Q0>(uint64_t a1@<X8>)
{
  swift_getKeyPath(aH_24);
  sub_1A39F31F8();
  sub_1A3A2F080();

  v3 = *(v1 + 64);
  *(a1 + 32) = *(v1 + 48);
  *(a1 + 48) = v3;
  *(a1 + 64) = *(v1 + 80);
  result = *(v1 + 32);
  *a1 = *(v1 + 16);
  *(a1 + 16) = result;
  return result;
}

double sub_1A39F2650(uint64_t a1)
{
  v3 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v3;
  v12 = *(a1 + 64);
  v4 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v4;
  v5 = *(*&v1 + 64);
  v13[2] = *(*&v1 + 48);
  v13[3] = v5;
  v14 = *(*&v1 + 80);
  v6 = *(*&v1 + 32);
  v13[0] = *(*&v1 + 16);
  v13[1] = v6;
  if (CAMLiquidShutterShapeEqualToShape(v13, v11))
  {
    v7 = *(a1 + 48);
    *(*&v1 + 48) = *(a1 + 32);
    *(*&v1 + 64) = v7;
    *(*&v1 + 80) = *(a1 + 64);
    v8 = *(a1 + 16);
    *(*&v1 + 16) = *a1;
    *(*&v1 + 32) = v8;
  }

  else
  {
    KeyPath = swift_getKeyPath(aH_24);
    MEMORY[0x1EEE9AC00](KeyPath);
    v13[0].f64[0] = v1;
    sub_1A39F31F8();
    sub_1A3A2F070();
  }

  return *&v8;
}

__n128 sub_1A39F2774(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a1 + 48) = *(a2 + 32);
  *(a1 + 64) = v2;
  *(a1 + 80) = *(a2 + 64);
  result = *(a2 + 16);
  *(a1 + 16) = *a2;
  *(a1 + 32) = result;
  return result;
}

__n128 sub_1A39F2790@<Q0>(uint64_t a1@<X8>)
{
  swift_getKeyPath(aH_25);
  sub_1A39F31F8();
  sub_1A3A2F080();

  result = *(v1 + 104);
  v4 = *(v1 + 136);
  *(a1 + 32) = *(v1 + 120);
  *(a1 + 48) = v4;
  *(a1 + 64) = *(v1 + 152);
  *a1 = *(v1 + 88);
  *(a1 + 16) = result;
  return result;
}

double sub_1A39F2820(uint64_t a1)
{
  v3 = *(a1 + 48);
  v12[2] = *(a1 + 32);
  v12[3] = v3;
  v13 = *(a1 + 64);
  v4 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v4;
  v5 = *(*&v1 + 104);
  v6 = *(*&v1 + 136);
  v14[2] = *(*&v1 + 120);
  v14[3] = v6;
  v15 = *(*&v1 + 152);
  v14[0] = *(*&v1 + 88);
  v14[1] = v5;
  if (CAMLiquidShutterShapeEqualToShape(v14, v12))
  {
    v7 = *a1;
    *(*&v1 + 104) = *(a1 + 16);
    v8 = *(a1 + 32);
    v9 = *(a1 + 48);
    *(*&v1 + 120) = v8;
    *(*&v1 + 136) = v9;
    *(*&v1 + 152) = *(a1 + 64);
    *(*&v1 + 88) = v7;
  }

  else
  {
    KeyPath = swift_getKeyPath(aH_25);
    MEMORY[0x1EEE9AC00](KeyPath);
    v14[0].f64[0] = v1;
    sub_1A39F31F8();
    sub_1A3A2F070();
  }

  return *&v8;
}

__n128 sub_1A39F2954(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  *(a1 + 104) = a2[1];
  result = a2[2];
  v4 = a2[3];
  *(a1 + 120) = result;
  *(a1 + 136) = v4;
  *(a1 + 152) = *(a2 + 8);
  *(a1 + 88) = v2;
  return result;
}

__n128 sub_1A39F2978@<Q0>(uint64_t a1@<X8>)
{
  swift_getKeyPath(byte_1A3A826B0);
  sub_1A39F31F8();
  sub_1A3A2F080();

  v3 = *(v1 + 208);
  *(a1 + 32) = *(v1 + 192);
  *(a1 + 48) = v3;
  *(a1 + 64) = *(v1 + 224);
  result = *(v1 + 176);
  *a1 = *(v1 + 160);
  *(a1 + 16) = result;
  return result;
}

double sub_1A39F2A00(uint64_t a1)
{
  v3 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v3;
  v12 = *(a1 + 64);
  v4 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v4;
  v5 = *(*&v1 + 208);
  v13[2] = *(*&v1 + 192);
  v13[3] = v5;
  v14 = *(*&v1 + 224);
  v6 = *(*&v1 + 176);
  v13[0] = *(*&v1 + 160);
  v13[1] = v6;
  if (CAMLiquidShutterShapeEqualToShape(v13, v11))
  {
    v7 = *(a1 + 48);
    *(*&v1 + 192) = *(a1 + 32);
    *(*&v1 + 208) = v7;
    *(*&v1 + 224) = *(a1 + 64);
    v8 = *(a1 + 16);
    *(*&v1 + 160) = *a1;
    *(*&v1 + 176) = v8;
  }

  else
  {
    KeyPath = swift_getKeyPath(byte_1A3A826B0);
    MEMORY[0x1EEE9AC00](KeyPath);
    v13[0].f64[0] = v1;
    sub_1A39F31F8();
    sub_1A3A2F070();
  }

  return *&v8;
}

__n128 sub_1A39F2B24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a1 + 192) = *(a2 + 32);
  *(a1 + 208) = v2;
  *(a1 + 224) = *(a2 + 64);
  result = *(a2 + 16);
  *(a1 + 160) = *a2;
  *(a1 + 176) = result;
  return result;
}

uint64_t sub_1A39F2B40()
{
  swift_getKeyPath(byte_1A3A82688);
  sub_1A39F31F8();
  sub_1A3A2F080();

  return *(v0 + 232);
}

void sub_1A39F2BB0(char a1)
{
  if (*(v1 + 232) == (a1 & 1))
  {
    *(v1 + 232) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath(byte_1A3A82688);
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A39F31F8();
    sub_1A3A2F070();
  }
}

double sub_1A39F2C98()
{
  swift_getKeyPath("ȹhG");
  sub_1A39F31F8();
  sub_1A3A2F080();

  return *(v0 + 240);
}

void sub_1A39F2D08(double a1)
{
  if (*(v1 + 240) == a1)
  {
    *(v1 + 240) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath("ȹhG");
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A39F31F8();
    sub_1A3A2F070();
  }
}

void sub_1A39F2DF8(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v10.origin.x = a1;
  v10.origin.y = a2;
  v10.size.width = a3;
  v10.size.height = a4;
  if (CGRectEqualToRect(*(v4 + 280), v10))
  {
    *(v4 + 280) = a1;
    *(v4 + 288) = a2;
    *(v4 + 296) = a3;
    *(v4 + 304) = a4;
  }

  else
  {
    KeyPath = swift_getKeyPath(asc_1A3A82750);
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A39F31F8();
    sub_1A3A2F070();
  }
}

void sub_1A39F2F10(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v10.origin.x = a1;
  v10.origin.y = a2;
  v10.size.width = a3;
  v10.size.height = a4;
  if (CGRectEqualToRect(*(v4 + 312), v10))
  {
    *(v4 + 312) = a1;
    *(v4 + 320) = a2;
    *(v4 + 328) = a3;
    *(v4 + 336) = a4;
  }

  else
  {
    KeyPath = swift_getKeyPath(asc_1A3A82728);
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A39F31F8();
    sub_1A3A2F070();
  }
}

uint64_t sub_1A39F3028()
{
  v1 = OBJC_IVAR____TtC8CameraUI29ChromeDynamicShutterViewModel___observationRegistrar;
  v2 = sub_1A3A2F0C0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ChromeDynamicShutterViewModel(uint64_t a1)
{
  result = qword_1ED999378;
  if (!qword_1ED999378)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A39F3118(uint64_t a1)
{
  result = sub_1A3A2F0C0();
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

__n128 sub_1A39F31DC()
{
  v1 = *(v0 + 16);
  result = *(v0 + 24);
  v3 = *(v0 + 40);
  *(v1 + 248) = result;
  *(v1 + 264) = v3;
  return result;
}

unint64_t sub_1A39F31F8()
{
  result = qword_1ED996CE8;
  if (!qword_1ED996CE8)
  {
    type metadata accessor for ChromeDynamicShutterViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED996CE8);
  }

  return result;
}

uint64_t sub_1A39F3250(uint64_t a1)
{
  *(v1 + 48) = *ymmword_1A3A6AD10;
  *(v1 + 64) = *&ymmword_1A3A6AD10[16];
  *(v1 + 80) = 0;
  *(v1 + 16) = CAMLiquidShutterShapeZero;
  *(v1 + 32) = unk_1A3A6AD00;
  *(v1 + 104) = unk_1A3A6AD00;
  *(v1 + 120) = *ymmword_1A3A6AD10;
  *(v1 + 136) = *&ymmword_1A3A6AD10[16];
  *(v1 + 152) = 0;
  *(v1 + 88) = CAMLiquidShutterShapeZero;
  *(v1 + 192) = *ymmword_1A3A6AD10;
  *(v1 + 208) = *&ymmword_1A3A6AD10[16];
  *(v1 + 160) = CAMLiquidShutterShapeZero;
  *(v1 + 176) = unk_1A3A6AD00;
  *(v1 + 224) = 0;
  *(v1 + 232) = 0;
  *(v1 + 240) = 0x3FF0000000000000;
  *(v1 + 248) = 0u;
  *(v1 + 264) = 0u;
  *(v1 + 280) = 0u;
  *(v1 + 296) = 0u;
  *(v1 + 312) = 0u;
  *(v1 + 328) = 0u;
  sub_1A3A2F0B0();
  return v1;
}

double sub_1A39F32DC()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 240) = result;
  return result;
}

__n128 sub_1A39F32FC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(v2 + 32);
  v3 = *(v2 + 48);
  v5 = *(v2 + 16);
  *(v1 + 224) = *(v2 + 64);
  *(v1 + 192) = v4;
  *(v1 + 208) = v3;
  *(v1 + 176) = v5;
  result = *v2;
  *(v1 + 160) = *v2;
  return result;
}

__n128 sub_1A39F3324()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(v2 + 32);
  v3 = *(v2 + 48);
  v5 = *(v2 + 16);
  *(v1 + 80) = *(v2 + 64);
  *(v1 + 48) = v4;
  *(v1 + 64) = v3;
  *(v1 + 32) = v5;
  result = *v2;
  *(v1 + 16) = *v2;
  return result;
}

__n128 sub_1A39F334C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(v2 + 32);
  v3 = *(v2 + 48);
  v5 = *(v2 + 64);
  *(v1 + 104) = *(v2 + 16);
  *(v1 + 152) = v5;
  *(v1 + 136) = v3;
  *(v1 + 120) = v4;
  result = *v2;
  *(v1 + 88) = *v2;
  return result;
}

__n128 sub_1A39F3378()
{
  v1 = *(v0 + 16) + 312;
  result = *(v0 + 24);
  v3 = *(v0 + 40);
  *v1 = result;
  *(v1 + 16) = v3;
  return result;
}

__n128 sub_1A39F3390()
{
  v1 = *(v0 + 16) + 280;
  result = *(v0 + 24);
  v3 = *(v0 + 40);
  *v1 = result;
  *(v1 + 16) = v3;
  return result;
}

uint64_t sub_1A39F33A8(void *a1)
{
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    type metadata accessor for SpringModel.State(255, result, a1[11], a1[12]);
    result = sub_1A3A31DE0();
    if (v4 <= 0x3F)
    {
      result = sub_1A3A2F0C0();
      if (v5 <= 0x3F)
      {
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

double sub_1A39F34EC(char a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 128);
  v15 = *(v1 + v4);
  v5 = a1 & 1;
  v14 = a1;
  v13 = *(v3 + 80);
  v6 = *(v2 + 96);
  v7 = sub_1A3A31790();
  if (v7)
  {
    *(v1 + v4) = v5;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v7);
    KeyPath = swift_getKeyPath(byte_1A3A82868, v13, v6);
    MEMORY[0x1EEE9AC00](KeyPath);
    v11[2] = v1;
    v12 = v5;
    sub_1A39F4A80(v10, sub_1A39F692C, v11, MEMORY[0x1E69E7CA8] + 8);
  }

  return result;
}

uint64_t sub_1A39F3664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((sub_1A3A310C0() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for SpringModel.SpringAttachment(0, a3, a4, a5);
  return sub_1A3A31790() & 1;
}

uint64_t sub_1A39F36F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v126 = a1;
  v127 = a2;
  v3 = *v2;
  v122 = sub_1A3A2ECE0();
  v119 = *(v122 - 8);
  MEMORY[0x1EEE9AC00](v122);
  v120 = v100 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v3[10];
  v6 = v3[11];
  v7 = v3[12];
  v8 = type metadata accessor for SpringModel.SpringAttachment(255, v5, v6, v7);
  v108 = sub_1A3A31DE0();
  v107 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108);
  v110 = v100 - v9;
  v121 = v8;
  v111 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v109 = v100 - v11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v128 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v116 = v100 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v115 = v100 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v123 = v100 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v133 = v100 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v130 = v6;
  v131 = v100 - v20;
  v132 = v7;
  v21 = type metadata accessor for SpringModel.State(255, v5, v6, v7);
  v22 = sub_1A3A31DE0();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v117 = v100 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = v100 - v26;
  v28 = *(v21 - 8);
  v30 = MEMORY[0x1EEE9AC00](v29);
  v32 = v100 - v31;
  v33 = *(*(v5 - 8) + 16);
  v34 = v2 + v3[15];
  v134 = v5;
  v33(v127, v34, v5, v30);
  v35 = *(*v2 + 136);
  swift_beginAccess();
  v36 = *(v23 + 16);
  v129 = v2;
  v36(v27, v2 + v35, v22);
  v124 = v28;
  v125 = v21;
  v37 = (*(v28 + 48))(v27, 1, v21);
  v118 = v22;
  if (v37 == 1)
  {
    v38 = v23;
    (*(v23 + 8))(v27, v22);
    v39 = v129;
    v40 = v115;
    v41 = v134;
    v42 = v132;
    sub_1A3A2F4B0();
    swift_getAssociatedConformanceWitness();
    v43 = v116;
    sub_1A3A320A0();
    v44 = v120;
    (*(v119 + 16))(v120, v126, v122);
    v45 = v117;
    sub_1A39F47A8(v40, v43, v44, v41, v130, v42, v117);
    (*(v124 + 56))(v45, 0, 1, v125);
    swift_beginAccess();
    (*(v38 + 40))(v39 + v35, v45, v118);
    return swift_endAccess();
  }

  else
  {
    v104 = v35;
    v105 = v23;
    v47 = v125;
    (*(v124 + 32))(v32, v27, v125);
    sub_1A3A2EC70();
    v48 = v133;
    v50 = v128 + 16;
    v49 = *(v128 + 16);
    v113 = v49;
    v51 = v131;
    v52 = AssociatedTypeWitness;
    v49();
    v53 = *(v47 + 44);
    v103 = v32;
    (v49)(v48, &v32[v53], v52);
    v135 = *(v129 + 16);
    v54 = v134;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v106 = *(AssociatedConformanceWitness + 8);
    sub_1A3A2EA50();
    v55 = v115;
    v56 = sub_1A3A320A0();
    v112 = v100;
    MEMORY[0x1EEE9AC00](v56);
    v57 = v130;
    v100[-6] = v54;
    v100[-5] = v57;
    v100[-4] = v58;
    v100[-3] = v51;
    v100[-2] = v48;
    v59 = sub_1A3A31A40();
    WitnessTable = swift_getWitnessTable();
    v61 = v123;
    v100[3] = v59;
    v100[2] = WitnessTable;
    sub_1A3A31950();
    v100[1] = 0;
    v62 = v128;
    v63 = v128 + 8;
    v112 = *(v128 + 8);
    v112(v55, v52);

    v64 = v113;
    (v113)(v55, v61, v52);
    sub_1A3A2FBE0();
    v65 = *(v62 + 40);
    v66 = v133;
    v65(v133, v55, v52);
    v67 = v116;
    v102 = v50;
    (v64)(v116, v66, v52);
    sub_1A3A2FBE0();
    v68 = v131;
    sub_1A3A32090();
    v69 = v112;
    v112(v67, v52);
    v128 = v62 + 40;
    v100[0] = v65;
    v65(v68, v55, v52);
    sub_1A3A2FBD0();
    v71 = fabs(v70);
    v72 = v129;
    sub_1A3A2F4B0();
    v73 = v122;
    sub_1A3A2FBD0();
    v75 = v74;
    AssociatedConformanceWitness = v63;
    v69(v55, v52);
    v76 = v73;
    v77 = v133;
    v78 = v72;
    v79 = v52;
    if (v71 <= v75)
    {
      v80 = v67;
      v135 = *(v72 + 16);
      sub_1A3A2EA50();
      swift_getWitnessTable();
      v81 = v72;
      v82 = v110;
      sub_1A3A31BA0();
      v83 = v82;
      v84 = v111;
      if ((*(v111 + 48))(v82, 1, v121) == 1)
      {
        (*(v107 + 8))(v82, v108);

        v77 = v133;
        v78 = v81;
      }

      else
      {
        v85 = v109;
        (*(v84 + 32))(v109, v83, v121);

        v110 = v100;
        v135 = *(v81 + 16);
        MEMORY[0x1EEE9AC00](v86);
        v87 = v130;
        v100[-4] = v134;
        v100[-3] = v87;
        v100[-2] = v132;
        v100[-1] = v85;
        sub_1A3A2EA50();
        v88 = sub_1A3A31940();

        v77 = v133;
        if (v88)
        {
          sub_1A3A2F4B0();
          v89 = v100[0];
          (v100[0])(v131, v55, v79);
          sub_1A3A320A0();
          v89(v77, v55, v79);
        }

        (*(v84 + 8))(v85, v121);
        v76 = v122;
        v78 = v129;
      }

      v67 = v80;
    }

    LODWORD(v129) = v71 <= v75;
    v90 = v113;
    (v113)(v55, v131, v79);
    (v90)(v67, v77, v79);
    v91 = v120;
    (*(v119 + 16))(v120, v126, v76);
    v92 = v117;
    sub_1A39F47A8(v55, v67, v91, v134, v130, v132, v117);
    v93 = v55;
    v94 = v124;
    v95 = v125;
    (*(v124 + 56))(v92, 0, 1, v125);
    v96 = v104;
    swift_beginAccess();
    (*(v105 + 40))(v78 + v96, v92, v118);
    swift_endAccess();
    v97 = sub_1A39F34EC(v129);
    v98 = v131;
    (v90)(v93, v131, v79, v97);
    sub_1A3A2F4C0();
    v99 = v112;
    v112(v123, v79);
    (*(v94 + 8))(v103, v95);
    v99(v133, v79);
    return (v99)(v98, v79);
  }
}

uint64_t sub_1A39F4534@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v31 = a1;
  v28 = a3;
  v29 = a4;
  v32 = a2;
  v30 = a8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v27 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v27 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v27 - v22;
  v27 = a5;
  type metadata accessor for SpringModel.SpringAttachment(0, a5, a6, a7);
  sub_1A3A2F4B0();
  v24 = *(v12 + 16);
  v24(v17, v28, AssociatedTypeWitness);
  v24(v14, v29, AssociatedTypeWitness);
  swift_getAssociatedConformanceWitness();
  sub_1A3A310E0();
  v25 = *(v12 + 8);
  v25(v14, AssociatedTypeWitness);
  v25(v17, AssociatedTypeWitness);
  v25(v20, AssociatedTypeWitness);
  sub_1A3A32090();
  return (v25)(v23, AssociatedTypeWitness);
}

uint64_t sub_1A39F47A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = *(*(AssociatedTypeWitness - 8) + 32);
  v15(a7, a1, AssociatedTypeWitness);
  v16 = type metadata accessor for SpringModel.State(0, a4, a5, a6);
  v15(a7 + *(v16 + 44), a2, AssociatedTypeWitness);
  v17 = *(v16 + 48);
  v18 = sub_1A3A2ECE0();
  v19 = *(*(v18 - 8) + 32);

  return v19(a7 + v17, a3, v18);
}

uint64_t sub_1A39F48D8()
{
  v1 = *v0;
  v4 = *(*v0 + 80);
  v5 = *(v1 + 96);
  KeyPath = swift_getKeyPath(byte_1A3A82868, &v4);
  sub_1A39F49D4(KeyPath);

  return *(v0 + *(*v0 + 128));
}

uint64_t sub_1A39F497C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1A39F48D8();
  *a1 = result & 1;
  return result;
}

char *sub_1A39F4B64()
{
  v1 = *v0;

  v2 = v1[10];
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + *(*v0 + 112), v2);
  v3(v0 + *(*v0 + 120), v2);
  v4 = *(*v0 + 136);
  type metadata accessor for SpringModel.State(255, v2, v1[11], v1[12]);
  v5 = sub_1A3A31DE0();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = *(*v0 + 152);
  v7 = sub_1A3A2F0C0();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  return v0;
}

uint64_t sub_1A39F4CF0()
{
  sub_1A39F4B64();

  return swift_deallocClassInstance();
}

uint64_t sub_1A39F4D80(uint64_t a1)
{
  result = sub_1A3A310F0();
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

uint64_t sub_1A39F4E08(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_1A3A310F0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(*(a3 + 16) - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v8)
  {
    v12 = *(v7 + 84);
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(*(v6 - 8) + 64) + v11;
  if (a2 <= v12)
  {
    goto LABEL_28;
  }

  v14 = (v13 & ~v11) + *(v9 + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((a2 - v12 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_27:
      if (v12)
      {
LABEL_28:
        if (v8 >= v10)
        {
          v23 = *(v7 + 48);

          return v23(a1);
        }

        else
        {
          v21 = *(v9 + 48);

          return v21((a1 + v13) & ~v11, v10);
        }
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_27;
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
      v19 = (v13 & ~v11) + *(v9 + 64);
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v20 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v20 = *a1;
      }
    }

    else if (v19 == 1)
    {
      v20 = *a1;
    }

    else
    {
      v20 = *a1;
    }
  }

  else
  {
    v20 = 0;
  }

  return v12 + (v20 | v18) + 1;
}

void sub_1A39F5048(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_1A3A310F0() - 8);
  v9 = *(v8 + 84);
  v10 = *(*(a4 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 64);
  v13 = *(v10 + 80);
  if (v11 <= v9)
  {
    v14 = *(v8 + 84);
  }

  else
  {
    v14 = *(v10 + 84);
  }

  v15 = v12 + v13;
  v16 = ((v12 + v13) & ~v13) + *(v10 + 64);
  if (a3 <= v14)
  {
    v17 = 0;
  }

  else if (v16 <= 3)
  {
    v20 = ((a3 - v14 + ~(-1 << (8 * v16))) >> (8 * v16)) + 1;
    if (HIWORD(v20))
    {
      v17 = 4;
    }

    else
    {
      if (v20 < 0x100)
      {
        v21 = 1;
      }

      else
      {
        v21 = 2;
      }

      if (v20 >= 2)
      {
        v17 = v21;
      }

      else
      {
        v17 = 0;
      }
    }
  }

  else
  {
    v17 = 1;
  }

  if (v14 < a2)
  {
    v18 = ~v14 + a2;
    if (v16 < 4)
    {
      v19 = (v18 >> (8 * v16)) + 1;
      if (v16)
      {
        v22 = v18 & ~(-1 << (8 * v16));
        bzero(a1, v16);
        if (v16 != 3)
        {
          if (v16 == 2)
          {
            *a1 = v22;
            if (v17 > 1)
            {
LABEL_46:
              if (v17 == 2)
              {
                *&a1[v16] = v19;
              }

              else
              {
                *&a1[v16] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v17 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v22;
        a1[2] = BYTE2(v22);
      }

      if (v17 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v18;
      v19 = 1;
      if (v17 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v17)
    {
      a1[v16] = v19;
    }

    return;
  }

  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *&a1[v16] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v16] = 0;
  }

  else if (v17)
  {
    a1[v16] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v9 >= v11)
  {
    v24 = *(v8 + 56);

    v24(a1, a2);
  }

  else
  {
    v23 = *(v10 + 56);

    v23(&a1[v15] & ~v13, a2, v11);
  }
}

uint64_t sub_1A39F532C(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    result = sub_1A3A2ECE0();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1A39F53C8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  v8 = sub_1A3A2ECE0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(v6 + 64);
  v12 = *(v6 + 80);
  v13 = *(v9 + 80);
  if (v10 <= v7)
  {
    v14 = v7;
  }

  else
  {
    v14 = *(v9 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v15 = v11 + v12;
  if (a2 <= v14)
  {
    goto LABEL_28;
  }

  v16 = ((v11 + v13 + (v15 & ~v12)) & ~v13) + *(*(v8 - 8) + 64);
  v17 = 8 * v16;
  if (v16 <= 3)
  {
    v19 = ((a2 - v14 + ~(-1 << v17)) >> v17) + 1;
    if (HIWORD(v19))
    {
      v18 = *(a1 + v16);
      if (!v18)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v19 > 0xFF)
    {
      v18 = *(a1 + v16);
      if (!*(a1 + v16))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v19 < 2)
    {
LABEL_27:
      if (v14)
      {
LABEL_28:
        if (v7 >= v10)
        {
          v25 = *(v6 + 48);

          return v25(a1, v7, AssociatedTypeWitness);
        }

        else
        {
          v23 = *(v9 + 48);

          return v23((((a1 + v15) & ~v12) + v11 + v13) & ~v13);
        }
      }

      return 0;
    }
  }

  v18 = *(a1 + v16);
  if (!*(a1 + v16))
  {
    goto LABEL_27;
  }

LABEL_14:
  v20 = (v18 - 1) << v17;
  if (v16 > 3)
  {
    v20 = 0;
  }

  if (v16)
  {
    if (v16 <= 3)
    {
      v21 = v16;
    }

    else
    {
      v21 = 4;
    }

    if (v21 > 2)
    {
      if (v21 == 3)
      {
        v22 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v22 = *a1;
      }
    }

    else if (v21 == 1)
    {
      v22 = *a1;
    }

    else
    {
      v22 = *a1;
    }
  }

  else
  {
    v22 = 0;
  }

  return v14 + (v22 | v20) + 1;
}

void sub_1A39F566C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v25 = v8;
  v9 = *(v8 + 84);
  v10 = *(sub_1A3A2ECE0() - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 64);
  if (v11 <= v9)
  {
    v13 = v9;
  }

  else
  {
    v13 = *(v10 + 84);
  }

  v14 = *(v8 + 80);
  v15 = *(v10 + 80);
  v16 = ((v12 + v15 + ((v12 + v14) & ~v14)) & ~v15) + *(v10 + 64);
  if (a3 <= v13)
  {
    v17 = 0;
  }

  else if (v16 <= 3)
  {
    v20 = ((a3 - v13 + ~(-1 << (8 * v16))) >> (8 * v16)) + 1;
    if (HIWORD(v20))
    {
      v17 = 4;
    }

    else
    {
      if (v20 < 0x100)
      {
        v21 = 1;
      }

      else
      {
        v21 = 2;
      }

      if (v20 >= 2)
      {
        v17 = v21;
      }

      else
      {
        v17 = 0;
      }
    }
  }

  else
  {
    v17 = 1;
  }

  if (v13 < a2)
  {
    v18 = ~v13 + a2;
    if (v16 < 4)
    {
      v19 = (v18 >> (8 * v16)) + 1;
      if (v16)
      {
        v22 = v18 & ~(-1 << (8 * v16));
        bzero(a1, v16);
        if (v16 != 3)
        {
          if (v16 == 2)
          {
            *a1 = v22;
            if (v17 > 1)
            {
LABEL_46:
              if (v17 == 2)
              {
                *&a1[v16] = v19;
              }

              else
              {
                *&a1[v16] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v17 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v22;
        a1[2] = BYTE2(v22);
      }

      if (v17 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v18;
      v19 = 1;
      if (v17 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v17)
    {
      a1[v16] = v19;
    }

    return;
  }

  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *&a1[v16] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v16] = 0;
  }

  else if (v17)
  {
    a1[v16] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v9 >= v11)
  {
    v24 = *(v25 + 56);

    v24(a1, a2, v9, AssociatedTypeWitness);
  }

  else
  {
    v23 = *(v10 + 56);

    v23(((&a1[v12 + v14] & ~v14) + v12 + v15) & ~v15, a2);
  }
}

uint64_t sub_1A39F599C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v35 = a7;
  v36 = a8;
  v32 = a5;
  v33 = a2;
  v34 = a3;
  v37 = a9;
  v30 = sub_1A3A30450();
  MEMORY[0x1EEE9AC00](v30);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1A39F6A84();
  v14 = sub_1A3A2F730();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v29 - v19;
  sub_1A39F48D8();
  sub_1A3A30440();
  v21 = swift_allocObject();
  v22 = v32;
  v21[2] = a4;
  v21[3] = v22;
  v23 = a6;
  v25 = v35;
  v24 = v36;
  v21[4] = a6;
  v21[5] = v25;
  v21[6] = v24;
  v21[7] = a1;
  v26 = v34;
  v21[8] = v33;
  v21[9] = v26;
  sub_1A3A2EA60();
  sub_1A3A2EA60();
  sub_1A39F5E9C(v13, sub_1A39F6ADC, v21, v30, a4, v31, v23);
  v38 = v23;
  swift_getWitnessTable();
  sub_1A3964BD0();
  v27 = *(v15 + 8);
  v27(v17, v14);
  sub_1A3964BD0();
  return (v27)(v20, v14);
}

uint64_t sub_1A39F5C04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v27 = a3;
  v28 = a7;
  v26[0] = a6;
  v26[1] = a2;
  v26[2] = a4;
  v29 = a8;
  v10 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v26 - v14;
  v16 = sub_1A3A2ECE0();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = v26 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100D28, &qword_1A3A82948);
  sub_1A3A2F700();
  sub_1A39F36F4(v19, v23);
  (*(v17 + 8))(v19, v16);
  v27(v23);
  (*(v20 + 8))(v23, v26[0]);
  sub_1A3964BD0();
  v24 = *(v10 + 8);
  v24(v12, a5);
  sub_1A3964BD0();
  return (v24)(v15, a5);
}

uint64_t sub_1A39F5E9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = *(a4 - 8);
  v15 = MEMORY[0x1EEE9AC00](a1);
  (*(v14 + 16))(&v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v17, v15);
  v18 = swift_allocObject();
  v18[2] = a4;
  v18[3] = a5;
  v18[4] = a6;
  v18[5] = a7;
  v18[6] = a2;
  v18[7] = a3;
  sub_1A3A2F720();
  return (*(v14 + 8))(a1, a4);
}

uint64_t sub_1A39F6010@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v45 = a4;
  v46 = a8;
  v42 = a6;
  v43 = a3;
  v47 = a9;
  v41 = a13;
  v38 = a11;
  v39 = a12;
  v37 = a10;
  v17 = sub_1A3A30450();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1A39F6A84();
  v44 = v17;
  v40 = v20;
  v21 = sub_1A3A2F730();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v37 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v37 - v26;
  if (sub_1A39F48D8())
  {
    sub_1A39F48D8();
  }

  sub_1A3A30440();
  v28 = swift_allocObject();
  v29 = v42;
  v28[2] = a5;
  v28[3] = v29;
  v28[4] = a7;
  v30 = v46;
  v31 = v37;
  v32 = v38;
  v28[5] = v46;
  v28[6] = v31;
  v33 = v39;
  v28[7] = v32;
  v28[8] = v33;
  v28[9] = v41;
  v28[10] = a1;
  v34 = v43;
  v28[11] = a2;
  v28[12] = v34;
  v28[13] = v45;
  sub_1A3A2EA60();
  sub_1A3A2EA60();
  sub_1A3A2EA60();
  sub_1A39F5E9C(v19, sub_1A39F6C48, v28, v44, a5, v40, v30);
  v48 = v30;
  swift_getWitnessTable();
  sub_1A3964BD0();
  v35 = *(v22 + 8);
  v35(v24, v21);
  sub_1A3964BD0();
  return (v35)(v27, v21);
}

uint64_t sub_1A39F62CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(char *, char *)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v35 = a8;
  v36 = a2;
  v37 = a7;
  v40 = a5;
  v41 = a4;
  v39 = a3;
  v46 = a9;
  v10 = *(a6 - 8);
  v44 = a6;
  v45 = v10;
  v43 = a10;
  MEMORY[0x1EEE9AC00](a1);
  v38 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v42 = &v33 - v13;
  v14 = sub_1A3A2ECE0();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v34 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v33 - v22;
  v33 = *(v24 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100D28, &qword_1A3A82948);
  sub_1A3A2F700();
  sub_1A39F36F4(v17, v23);
  v25 = *(v15 + 8);
  v25(v17, v14);
  sub_1A3A2F700();
  sub_1A39F36F4(v17, &v23[v33]);
  v25(v17, v14);
  v26 = v34;
  (*(v34 + 16))(v20, v23, TupleTypeMetadata2);
  v27 = *(TupleTypeMetadata2 + 48);
  v28 = v38;
  v41(v20, &v20[v27]);
  (*(v26 + 8))(v23, TupleTypeMetadata2);
  (*(*(v35 - 8) + 8))(&v20[v27]);
  (*(*(v37 - 8) + 8))(v20);
  v29 = v42;
  v30 = v44;
  sub_1A3964BD0();
  v31 = *(v45 + 8);
  v31(v28, v30);
  sub_1A3964BD0();
  return (v31)(v29, v30);
}

uint64_t sub_1A39F66E8@<X0>(uint64_t a1@<X0>, void (*a2)(char *)@<X1>, uint64_t a3@<X2>, uint64_t a5@<X4>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v29 = a8;
  v30 = a7;
  v27 = a3;
  v28 = a2;
  v26 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100D28, &qword_1A3A82948);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v25 - v12;
  v14 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v25 - v19;
  v21 = sub_1A3A2F710();
  v23 = *(v21 - 8);
  result = v21 - 8;
  if (*(v23 + 64) == v11)
  {
    (*(v10 + 16))(v13, v26, v9);
    v28(v13);
    (*(v10 + 8))(v13, v9);
    sub_1A3964BD0();
    v24 = *(v14 + 8);
    v24(v17, a5);
    sub_1A3964BD0();
    return (v24)(v20, a5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A39F69E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_1A39F6A84()
{
  result = qword_1ED9995C0[0];
  if (!qword_1ED9995C0[0])
  {
    sub_1A3A30450();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED9995C0);
  }

  return result;
}

uint64_t sub_1A39F6B20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1A39F6B5C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1A39F6BA4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1A39F6CC8@<X0>(char a1@<W1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  if (a1)
  {
    v4 = 0x80000001A3AA7F60;
    if (qword_1ED996468 != -1)
    {
      swift_once();
    }

    v5 = qword_1ED99D880;
    sub_1A3A2EA60();
    v6 = sub_1A3A30DD0();
    v7 = 0xD000000000000027;
  }

  else if (a2)
  {
    if (a2 == 2)
    {
      v5 = 0;
      v6 = 0;
      v4 = 0xEF6C6C69662E6873;
      v7 = 0x616C732E746C6F62;
    }

    else
    {
      if (a2 != 1)
      {
        result = sub_1A3A321F0();
        __break(1u);
        return result;
      }

      v5 = 0;
      v6 = 0;
      v4 = 0xE90000000000006CLL;
      v7 = 0x6C69662E746C6F62;
    }
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v7 = 0xD000000000000019;
    v4 = 0x80000001A3AA7F40;
  }

  *a3 = v7;
  *(a3 + 8) = v4;
  *(a3 + 16) = 1;
  *(a3 + 24) = v5;
  *(a3 + 32) = v6;
  type metadata accessor for ChromeElementIcon(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1A39F6E4C(uint64_t a1)
{
  v2 = *v1;
  if (!*v1)
  {
    v3 = 0xE400000000000000;
    v4 = 1869903169;
    goto LABEL_7;
  }

  if (v2 == 2)
  {
    v3 = 0xE300000000000000;
    v4 = 6710863;
LABEL_7:
    MEMORY[0x1A58F7770](v4, v3);

    return 0xD000000000000014;
  }

  if (v2 == 1)
  {
    v3 = 0xE200000000000000;
    v4 = 28239;
    goto LABEL_7;
  }

  result = sub_1A3A321F0();
  __break(1u);
  return result;
}

unint64_t sub_1A39F6F54()
{
  result = qword_1EB100D50;
  if (!qword_1EB100D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB100D50);
  }

  return result;
}

uint64_t sub_1A39F6FA8(unint64_t a1)
{
  if (a1 < 3)
  {
    return 2 - a1;
  }

  sub_1A3A31F20();
  MEMORY[0x1A58F7770](0xD000000000000015, 0x80000001A3AA5D10);
  type metadata accessor for CAMFlashMode(0);
  sub_1A3A32060();
  result = sub_1A3A32070("Fatal error", 11, 2, 0, 0xE000000000000000, "CameraUI/ChromeFlashMode.swift", 30, 2, 52, 0);
  __break(1u);
  return result;
}

uint64_t sub_1A39F70B4(uint64_t a1, uint64_t a2, char a3, unsigned int *a4, uint64_t (*a5)(uint64_t, uint64_t, __n128))
{
  v18 = a5;
  v9 = sub_1A3A2F1E0();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = (&v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a3)
  {
    *v13 = a1;
    v13[1] = a2;
    (*(v10 + 104))(v13, *a4, v9, v11);
    v14 = sub_1A3A2F200();
    (*(v10 + 8))(v13, v9);
    return v14;
  }

  else
  {
    v16 = v18;

    return v16(a1, a2, v11);
  }
}

uint64_t type metadata accessor for ChromePadView(uint64_t a1)
{
  result = qword_1ED9996A0;
  if (!qword_1ED9996A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A39F727C(uint64_t a1)
{
  sub_1A39F72E8(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1A39F72E8(uint64_t a1)
{
  if (!qword_1ED9996B0)
  {
    type metadata accessor for ChromeViewModel(255);
    v1 = sub_1A3A312E0();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED9996B0);
    }
  }
}

uint64_t sub_1A39F73AC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_1A3A82C68);
  sub_1A39F9054(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  v6 = *(v3 + 40);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  v7 = *(v3 + 48);
  *(a2 + 24) = v7;
  return sub_1A38BCF64(v4, v5, v6, v7);
}

void sub_1A39F7468(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  sub_1A38BCF64(*a1, v2, v3, v4);
  sub_1A38EDFE0(v1, v2, v3, v4);
}

uint64_t sub_1A39F74CC@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v2 = type metadata accessor for ChromePadView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100D58, &qword_1A3A82BE8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v43 - v7);
  *v8 = sub_1A3A31480();
  v8[1] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100D60, &qword_1A3A82BF0);
  sub_1A39F7A88(v1, v8 + *(v10 + 44));
  sub_1A39F8C50(v1, v5);
  v11 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v12 = swift_allocObject();
  sub_1A39F8CB4(v5, v12 + v11);
  v13 = (v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100D68, &qword_1A3A82BF8) + 36));
  *v13 = 0;
  v13[1] = 0;
  v13[2] = sub_1A39F8D18;
  v13[3] = v12;
  sub_1A39F8C50(v1, v5);
  v14 = swift_allocObject();
  sub_1A39F8CB4(v5, v14 + v11);
  v15 = v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100D70, &qword_1A3A82C00) + 36);
  v16 = *MEMORY[0x1E697BE30];
  v17 = sub_1A3A2F540();
  (*(*(v17 - 8) + 104))(v15, v16, v17);
  v18 = type metadata accessor for ScenePhaseModifier(0);
  v15[v18[5]] = 1;
  v19 = &v15[v18[6]];
  *v19 = sub_1A39F96A4;
  *(v19 + 1) = v14;
  v20 = &v15[v18[7]];
  *v20 = swift_getKeyPath("ضhG");
  v20[8] = 0;
  v21 = *(type metadata accessor for ChromeScenePhase(0) + 20);
  *&v20[v21] = swift_getKeyPath(byte_1A3A82C30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD670, &qword_1A3A6F6C0);
  swift_storeEnumTagMultiPayload();
  v22 = sub_1A3A30DD0();
  *(v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100D78, &qword_1A3A82C60) + 36)) = v22;
  v44 = sub_1A3A314E0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FFE90, &qword_1A3A7CFB0);
  sub_1A3A312A0();
  v23 = v46;
  swift_getKeyPath(byte_1A3A82C68);
  v46 = v23;
  sub_1A39F9054(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  v24 = *(v23 + 24);
  v25 = *(v23 + 32);
  v26 = *(v23 + 40);
  LOBYTE(v22) = *(v23 + 48);
  sub_1A38BCF64(v24, v25, v26, v22);

  v27 = v8 + *(v6 + 36);
  *v27 = v44;
  *(v27 + 1) = v24;
  *(v27 + 2) = v25;
  *(v27 + 3) = v26;
  v27[32] = v22;
  sub_1A3A312A0();
  type metadata accessor for ChromeViewModel(0);
  sub_1A39F8D70();
  v28 = v45;
  sub_1A3A30980();

  sub_1A388F740(v8, &qword_1EB100D58, &qword_1A3A82BE8);
  v29 = (v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100DC0, &qword_1A3A82CA0) + 36));
  v30 = v28;
  v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FFF08, &qword_1A3A7D088) + 28);
  v32 = *MEMORY[0x1E697DBA8];
  v33 = sub_1A3A2F5B0();
  (*(*(v33 - 8) + 104))(&v29[v31], v32, v33);
  *v29 = swift_getKeyPath(aP_36);
  v34 = (v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100DC8, &qword_1A3A82CD8) + 36));
  *v34 = 0x77656956746F6F52;
  v34[1] = 0xE800000000000000;
  v35 = sub_1A3A2FAA0();
  LOBYTE(v29) = sub_1A3A30610();
  v36 = v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100DD0, &qword_1A3A82CE0) + 36);
  *v36 = v35;
  *(v36 + 8) = v29;
  KeyPath = swift_getKeyPath(byte_1A3A82CE8);
  v38 = (v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100DD8, &qword_1A3A82D18) + 36));
  v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF9B8, &qword_1A3A7B8D0) + 28);
  v40 = *MEMORY[0x1E697E7D0];
  v41 = sub_1A3A2F9F0();
  result = (*(*(v41 - 8) + 104))(v38 + v39, v40, v41);
  *v38 = KeyPath;
  return result;
}

uint64_t sub_1A39F7A88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v87 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100DE0, &qword_1A3A82D20);
  v83 = *(v3 - 8);
  v84 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v81 = &v66 - v4;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100DE8, &qword_1A3A82D28);
  MEMORY[0x1EEE9AC00](v80);
  v79 = &v66 - v5;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100DF0, &qword_1A3A82D30);
  MEMORY[0x1EEE9AC00](v78);
  v86 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v77 = &v66 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v85 = &v66 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100DF8, &qword_1A3A82D38);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v82 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v76 = (&v66 - v14);
  v15 = type metadata accessor for ChromePadView(0);
  v88 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v89 = v16;
  v90 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1A3A2F570();
  v66 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FFF50, &qword_1A3A7D160);
  v69 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v68 = &v66 - v20;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FFF58, &qword_1A3A7D168);
  v21 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v67 = &v66 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100E00, &qword_1A3A82D40);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v75 = &v66 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v66 - v26;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FFE90, &qword_1A3A7CFB0);
  v28 = a1;
  sub_1A3A312A0();
  v29 = v91;
  swift_getKeyPath(byte_1A3A82C68);
  v91 = v29;
  v72 = sub_1A39F9054(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  v30 = *(v29 + 24);
  v31 = *(v29 + 32);
  v32 = *(v29 + 40);
  v33 = *(v29 + 48);
  sub_1A38BCF64(v30, v31, v32, *(v29 + 48));

  if (v33 == 255)
  {
    v43 = 1;
    v35 = v28;
    v44 = v74;
  }

  else
  {
    sub_1A38BC250(v30, v31, v32, v33);
    sub_1A3A30DD0();
    v34 = sub_1A3A30E10();

    v91 = v34;
    v92 = 0;
    sub_1A3A2F560();
    v35 = v28;
    v36 = v90;
    sub_1A39F8C50(v28, v90);
    v37 = (*(v88 + 80) + 16) & ~*(v88 + 80);
    v38 = swift_allocObject();
    sub_1A39F8CB4(v36, v38 + v37);
    v39 = v68;
    sub_1A3A31240();

    (*(v66 + 8))(v19, v17);
    sub_1A3A2F660();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FFF70, &unk_1A3A7D180);
    sub_1A399F5B0();
    sub_1A38A08F8(&qword_1ED998C68, &qword_1EB0FFF50, &qword_1A3A7D160, MEMORY[0x1E697E238]);
    v40 = v67;
    v41 = v70;
    sub_1A3A30AE0();
    (*(v69 + 8))(v39, v41);

    v42 = v74;
    (*(v21 + 32))(v27, v40, v74);
    v43 = 0;
    v44 = v42;
  }

  (*(v21 + 56))(v27, v43, 1, v44);
  v45 = sub_1A3A2FF40();
  v46 = v76;
  *v76 = v45;
  *(v46 + 8) = 0;
  *(v46 + 16) = 0;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100E08, &qword_1A3A82D48);
  sub_1A39F86DC(v46 + *(v47 + 44));
  sub_1A3A30DA0();
  v71 = v27;
  sub_1A3A312A0();
  v48 = v91;
  swift_getKeyPath(byte_1A3A82D50);
  v91 = v48;
  sub_1A3A2F080();

  v49 = sub_1A3A30E10();

  v91 = v49;
  v50 = v90;
  sub_1A39F8C50(v35, v90);
  v51 = (*(v88 + 80) + 16) & ~*(v88 + 80);
  v52 = swift_allocObject();
  sub_1A39F8CB4(v50, v52 + v51);
  v53 = v81;
  sub_1A3A309D0();

  v54 = sub_1A3A2FAA0();
  LOBYTE(v51) = sub_1A3A30610();
  v55 = v79;
  (*(v83 + 32))(v79, v53, v84);
  v56 = v55 + *(v80 + 36);
  *v56 = v54;
  *(v56 + 8) = v51;
  v57 = v77;
  sub_1A388F670(v55, v77, &qword_1EB100DE8, &qword_1A3A82D28);
  *(v57 + *(v78 + 36)) = 0x3FF0000000000000;
  v58 = v57;
  v59 = v85;
  sub_1A388F670(v58, v85, &qword_1EB100DF0, &qword_1A3A82D30);
  v60 = v75;
  sub_1A388F6D8(v27, v75, &qword_1EB100E00, &qword_1A3A82D40);
  v61 = v82;
  sub_1A388F6D8(v46, v82, &qword_1EB100DF8, &qword_1A3A82D38);
  v62 = v86;
  sub_1A388F6D8(v59, v86, &qword_1EB100DF0, &qword_1A3A82D30);
  v63 = v87;
  sub_1A388F6D8(v60, v87, &qword_1EB100E00, &qword_1A3A82D40);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100E10, &qword_1A3A82D78);
  sub_1A388F6D8(v61, v63 + *(v64 + 48), &qword_1EB100DF8, &qword_1A3A82D38);
  sub_1A388F6D8(v62, v63 + *(v64 + 64), &qword_1EB100DF0, &qword_1A3A82D30);
  sub_1A388F740(v59, &qword_1EB100DF0, &qword_1A3A82D30);
  sub_1A388F740(v46, &qword_1EB100DF8, &qword_1A3A82D38);
  sub_1A388F740(v71, &qword_1EB100E00, &qword_1A3A82D40);
  sub_1A388F740(v62, &qword_1EB100DF0, &qword_1A3A82D30);
  sub_1A388F740(v61, &qword_1EB100DF8, &qword_1A3A82D38);
  return sub_1A388F740(v60, &qword_1EB100E00, &qword_1A3A82D40);
}

double sub_1A39F8540()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FFE90, &qword_1A3A7CFB0);
  sub_1A3A312A0();
  swift_getKeyPath(byte_1A3A82C68);
  sub_1A39F9054(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  if (*(v9 + 48) != 255)
  {
    swift_getKeyPath(byte_1A3A82C68);
    sub_1A3A2F080();

    v1 = *(v9 + 24);
    v0 = *(v9 + 32);
    v2 = *(v9 + 40);
    v3 = *(v9 + 48);
    sub_1A38BCF64(v1, v0, v2, *(v9 + 48));
    sub_1A38EEF8C(0, 0, 0, 255);
    if (v3 == 1)
    {
      if (v1 == 35)
      {
        v4 = 35;
      }

      else
      {
        sub_1A38F6EF8(v1, 0x23uLL);
        v4 = v1;
      }

      v5 = v0;
      v6 = v2;
      v7 = 1;
      goto LABEL_9;
    }

    if (v3 != 255)
    {
      v4 = v1;
      v5 = v0;
      v6 = v2;
      v7 = v3;
LABEL_9:
      sub_1A38BC250(v4, v5, v6, v7);
    }
  }

  return result;
}

uint64_t sub_1A39F86DC@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FFE90, &qword_1A3A7CFB0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100E18, &qword_1A3A82D80);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v24 - v11;
  sub_1A3A312B0();
  swift_getKeyPath(byte_1A3A82D88);
  sub_1A3A312D0();

  (*(v3 + 8))(v5, v2);
  v26 = v24[1];
  v27[0] = v25[0];
  *(v27 + 9) = *(v25 + 9);
  sub_1A3A312A0();
  sub_1A3A2EA60();

  v15 = sub_1A392A508(v13, v14);

  sub_1A392EB00(&v26, v15 & 1, v12);
  v16 = sub_1A3A30650();
  sub_1A3A2F520();
  v17 = &v12[*(v7 + 44)];
  *v17 = v16;
  *(v17 + 1) = v18;
  *(v17 + 2) = v19;
  *(v17 + 3) = v20;
  *(v17 + 4) = v21;
  v17[40] = 0;
  sub_1A388F6D8(v12, v9, &qword_1EB100E18, &qword_1A3A82D80);
  *a1 = 0;
  *(a1 + 8) = 1;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100E20, &qword_1A3A82DB0);
  sub_1A388F6D8(v9, a1 + *(v22 + 48), &qword_1EB100E18, &qword_1A3A82D80);
  sub_1A388F740(v12, &qword_1EB100E18, &qword_1A3A82D80);
  return sub_1A388F740(v9, &qword_1EB100E18, &qword_1A3A82D80);
}

double sub_1A39F896C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FFE90, &qword_1A3A7CFB0);
  sub_1A3A312A0();
  swift_getKeyPath(byte_1A3A82D50);
  sub_1A39F9054(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  v0 = *(v4 + 666);

  if (v0 == 1)
  {
    sub_1A3A312A0();
    v2 = *(v4 + 1224);
    v3 = *(v4 + 1232);
    __swift_project_boxed_opaque_existential_1((v4 + 1200), v2);
    (*(v3 + 8))(2, 0, 0, 160, v4, v2, v3);
  }

  return result;
}

double sub_1A39F8AB0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FFE90, &qword_1A3A7CFB0);
  sub_1A3A312A0();
  swift_getKeyPath(byte_1A3A82C68);
  sub_1A39F9054(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  if (*(v9 + 48) != 255)
  {
    swift_getKeyPath(byte_1A3A82C68);
    sub_1A3A2F080();

    v1 = *(v9 + 24);
    v0 = *(v9 + 32);
    v2 = *(v9 + 40);
    v3 = *(v9 + 48);
    sub_1A38BCF64(v1, v0, v2, *(v9 + 48));
    sub_1A38EEF8C(0, 0, 0, 255);
    if (v3 == 1)
    {
      if (v1 == 35)
      {
        v4 = 35;
      }

      else
      {
        sub_1A38F6EF8(v1, 0x23uLL);
        v4 = v1;
      }

      v5 = v0;
      v6 = v2;
      v7 = 1;
      goto LABEL_9;
    }

    if (v3 != 255)
    {
      v4 = v1;
      v5 = v0;
      v6 = v2;
      v7 = v3;
LABEL_9:
      sub_1A38BC250(v4, v5, v6, v7);
    }
  }

  return result;
}

uint64_t sub_1A39F8C50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChromePadView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A39F8CB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChromePadView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1A39F8D70()
{
  result = qword_1EB100D80;
  if (!qword_1EB100D80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB100D58, &qword_1A3A82BE8);
    sub_1A39F8E28();
    sub_1A38A08F8(&qword_1EB100DB0, &qword_1EB100DB8, &qword_1A3A82C98, MEMORY[0x1E697F548]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB100D80);
  }

  return result;
}

unint64_t sub_1A39F8E28()
{
  result = qword_1EB100D88;
  if (!qword_1EB100D88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB100D78, &qword_1A3A82C60);
    sub_1A39F8EE0();
    sub_1A38A08F8(qword_1ED996740, &qword_1EB0FCD60, &qword_1A3A76880, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB100D88);
  }

  return result;
}

unint64_t sub_1A39F8EE0()
{
  result = qword_1EB100D90;
  if (!qword_1EB100D90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB100D70, &qword_1A3A82C00);
    sub_1A39F8F9C();
    sub_1A39F9054(&qword_1ED996E60, type metadata accessor for ScenePhaseModifier, &unk_1A3A764F4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB100D90);
  }

  return result;
}

unint64_t sub_1A39F8F9C()
{
  result = qword_1EB100D98;
  if (!qword_1EB100D98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB100D68, &qword_1A3A82BF8);
    sub_1A38A08F8(&qword_1EB100DA0, &qword_1EB100DA8, &qword_1A3A82C90, MEMORY[0x1E6981880]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB100D98);
  }

  return result;
}

uint64_t sub_1A39F9054(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A39F90EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - v10;
  (*(v12 + 16))(&v14 - v10, a1, v9);
  return a6(v11);
}

double sub_1A39F91BC()
{
  type metadata accessor for ChromePadView(0);

  return sub_1A39F896C();
}

uint64_t objectdestroyTm_17()
{
  v1 = *(type metadata accessor for ChromePadView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FFE90, &qword_1A3A7CFB0);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

double sub_1A39F92F4()
{
  type metadata accessor for ChromePadView(0);

  return sub_1A39F8540();
}

unint64_t sub_1A39F9364()
{
  result = qword_1EB100E28;
  if (!qword_1EB100E28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB100DD8, &qword_1A3A82D18);
    sub_1A39F941C();
    sub_1A38A08F8(&qword_1EB0FF9B0, &qword_1EB0FF9B8, &qword_1A3A7B8D0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB100E28);
  }

  return result;
}

unint64_t sub_1A39F941C()
{
  result = qword_1EB100E30;
  if (!qword_1EB100E30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB100DD0, &qword_1A3A82CE0);
    sub_1A39F94A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB100E30);
  }

  return result;
}

unint64_t sub_1A39F94A8()
{
  result = qword_1EB100E38;
  if (!qword_1EB100E38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB100DC8, &qword_1A3A82CD8);
    sub_1A39F9560();
    sub_1A38A08F8(&qword_1EB100E50, &qword_1EB100E58, &qword_1A3A82DB8, MEMORY[0x1E697C968]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB100E38);
  }

  return result;
}

unint64_t sub_1A39F9560()
{
  result = qword_1EB100E40;
  if (!qword_1EB100E40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB100DC0, &qword_1A3A82CA0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB100D58, &qword_1A3A82BE8);
    type metadata accessor for ChromeViewModel(255);
    sub_1A39F8D70();
    sub_1A39F9054(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
    swift_getOpaqueTypeConformance2();
    sub_1A38A08F8(&qword_1EB100E48, &qword_1EB0FFF08, &qword_1A3A7D088, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB100E40);
  }

  return result;
}

uint64_t type metadata accessor for ChromeCircularSymbolButton(uint64_t a1)
{
  result = qword_1ED999738;
  if (!qword_1ED999738)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A39F971C(uint64_t a1)
{
  sub_1A38AB898(319, &qword_1ED9967B8, type metadata accessor for ChromeViewModel);
  if (v1 <= 0x3F)
  {
    sub_1A38AB898(319, qword_1ED9967C0, MEMORY[0x1E697F6A0]);
    if (v2 <= 0x3F)
    {
      sub_1A3969A58();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1A39F983C(uint64_t a1@<X8>)
{
  v2 = v1;
  v65[1] = a1;
  v74 = sub_1A3A2FEE0();
  v76 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74 - 8);
  v75 = v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ChromeElementState(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v65[0] = v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v66 = v65 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v67 = v65 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v65 - v11;
  v13 = type metadata accessor for ChromeCircularSymbolButton(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100E60, &qword_1A3A82E30);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v65 - v17;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100E68, &qword_1A3A82E38);
  v68 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v20 = v65 - v19;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100E70, &unk_1A3A82E40);
  MEMORY[0x1EEE9AC00](v71);
  v73 = v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v69 = v65 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v70 = v65 - v25;
  sub_1A39FBD84(v2, v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ChromeCircularSymbolButton);
  v26 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v27 = swift_allocObject();
  sub_1A39FB920(v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + v26);
  v78 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100E78, &qword_1A3A82E50);
  sub_1A39FB9EC();
  sub_1A3A30FE0();
  v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100EA8, &qword_1A3A82E78) + 36)] = 0;
  v28 = &v18[*(v16 + 36)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100EB0, &qword_1A3A82E80);
  sub_1A3A2FC40();
  *v28 = 0;
  v29 = sub_1A39FBBE8();
  sub_1A3A30BC0();
  sub_1A388F740(v18, &qword_1EB100E60, &qword_1A3A82E30);
  v30 = *(v2 + 24);
  v31 = *(v2 + 32);
  sub_1A3A2EA60();
  v32 = v30;
  if ((v31 & 1) == 0)
  {
    sub_1A3A31C30();
    v33 = sub_1A3A305C0();
    sub_1A3A2F270();

    v34 = v75;
    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v76 + 8))(v34, v74);
    v32 = v79;
  }

  v35 = *v2;
  swift_getKeyPath(byte_1A3A82E98);
  v79 = v32;
  v77 = sub_1A39FBF54(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  if (!*(v32 + 1192))
  {
    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_1A3A2EA60();
  v36 = sub_1A38BC058(v35);

  (*(v36 + 56))(v37);

  sub_1A3A2EA50();
  sub_1A3890834(v12);
  v79 = v16;
  v80 = v29;
  swift_getOpaqueTypeConformance2();
  v38 = v72;
  sub_1A3A30B70();

  (*(v68 + 8))(v20, v38);
  sub_1A3A2EA60();
  v39 = v30;
  if ((v31 & 1) == 0)
  {
    sub_1A3A31C30();
    v40 = sub_1A3A305C0();
    sub_1A3A2F270();

    v41 = v35;
    v42 = v75;
    sub_1A3A2FED0();
    swift_getAtKeyPath();

    v43 = v42;
    v35 = v41;
    (*(v76 + 8))(v43, v74);
    v39 = v79;
  }

  swift_getKeyPath(byte_1A3A82E98);
  v79 = v39;
  sub_1A3A2F080();

  v44 = v70;
  v45 = v69;
  if (!*(v39 + 1192))
  {
    goto LABEL_15;
  }

  sub_1A3A2EA60();
  v72 = v35;
  v46 = sub_1A38BC058(v35);

  v48 = v67;
  (*(v46 + 56))(v47);

  v49 = *(v48 + 16);
  v50 = *(v48 + 24);
  sub_1A3A2EA50();
  sub_1A3890834(v48);
  v79 = v49;
  v80 = v50;
  sub_1A389FD78();
  v51 = v73;
  sub_1A3A2FA10();

  sub_1A388F740(v51, &qword_1EB100E70, &unk_1A3A82E40);
  sub_1A3A2EA60();
  v52 = v30;
  if ((v31 & 1) == 0)
  {
    sub_1A3A31C30();
    v53 = sub_1A3A305C0();
    sub_1A3A2F270();

    v54 = v75;
    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v76 + 8))(v54, v74);
    v52 = v79;
  }

  swift_getKeyPath(byte_1A3A82E98);
  v79 = v52;
  sub_1A3A2F080();

  if (!*(v52 + 1192))
  {
    goto LABEL_16;
  }

  sub_1A3A2EA60();
  v55 = sub_1A38BC058(v72);

  v57 = v66;
  (*(v55 + 56))(v56);

  sub_1A3A2EA50();
  sub_1A3890834(v57);
  sub_1A3A2FA70();

  sub_1A388F740(v45, &qword_1EB100E70, &unk_1A3A82E40);
  sub_1A3A2EA60();
  if ((v31 & 1) == 0)
  {
    sub_1A3A31C30();
    v58 = sub_1A3A305C0();
    sub_1A3A2F270();

    v59 = v75;
    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v76 + 8))(v59, v74);
    v30 = v79;
  }

  swift_getKeyPath(byte_1A3A82E98);
  v79 = v30;
  sub_1A3A2F080();

  if (*(v30 + 1192))
  {
    sub_1A3A2EA60();
    v60 = sub_1A38BC058(v72);

    v62 = v65[0];
    (*(v60 + 56))(v61);

    v63 = *(v62 + 32);
    v64 = *(v62 + 40);
    sub_1A3A2EA50();
    sub_1A3890834(v62);
    v79 = v63;
    v80 = v64;
    sub_1A3A2FA20();

    sub_1A388F740(v44, &qword_1EB100E70, &unk_1A3A82E40);
    return;
  }

LABEL_17:
  __break(1u);
}

void sub_1A39FA2F4(uint64_t a1)
{
  v2 = sub_1A3A2FEE0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ChromeElementState(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  sub_1A3A2EA60();
  v11 = v9;
  if ((v10 & 1) == 0)
  {
    sub_1A3A31C30();
    v12 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
    v11 = v30;
  }

  v28 = v3;
  v29 = v2;
  v13 = *a1;
  swift_getKeyPath(byte_1A3A82E98);
  v30 = v11;
  sub_1A39FBF54(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  if (v11[149])
  {
    sub_1A3A2EA60();
    v14 = sub_1A38BC058(v13);

    (*(v14 + 56))(v15);

    v16 = *&v8[*(v6 + 44)];
    sub_1A3A2EA60();
    sub_1A3890834(v8);
    v17 = v16(*(a1 + 8), 0);
    v19 = v18;
    v21 = v20;
    v23 = v22;
    LODWORD(v14) = v22;

    if (v14 <= 0xFB)
    {
      sub_1A3A2EA60();
      if ((v10 & 1) == 0)
      {
        sub_1A3A31C30();
        v24 = sub_1A3A305C0();
        sub_1A3A2F270();

        sub_1A3A2FED0();
        swift_getAtKeyPath();

        (*(v28 + 8))(v5, v29);
        v9 = v30;
      }

      v25 = v9[153];
      v26 = v9[154];
      __swift_project_boxed_opaque_existential_1(v9 + 150, v25);
      (*(v26 + 8))(v17, v19, v21, v23, v9, v25, v26);

      sub_1A3890EA8(v17, v19, v21, v23);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1A39FA690(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v124 = a2;
  v123 = sub_1A3A31170();
  v122 = *(v123 - 8);
  MEMORY[0x1EEE9AC00](v123);
  v120 = &v101 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v121 = &v101 - v5;
  v103 = sub_1A3A31370();
  v102 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v101 = &v101 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_1A3A31430();
  v118 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119);
  v116 = &v101 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v117 = &v101 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FE150, &qword_1A3A72C90);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v112 = &v101 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD2B8, &qword_1A3A75B00);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v101 - v13;
  v15 = sub_1A3A30090();
  v16 = *(v15 - 8);
  v133 = v15;
  v134 = v16;
  MEMORY[0x1EEE9AC00](v15);
  v18 = (&v101 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = sub_1A3A2FEE0();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v128 = &v101 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = type metadata accessor for ChromeElementState(0);
  MEMORY[0x1EEE9AC00](v126);
  v111 = &v101 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v101 - v24;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FEAC0, &unk_1A3A75A00);
  MEMORY[0x1EEE9AC00](v127);
  v132 = &v101 - v26;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100EA0, &unk_1A3A82E60);
  MEMORY[0x1EEE9AC00](v110);
  v129 = &v101 - v27;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100E88, &qword_1A3A82E58);
  MEMORY[0x1EEE9AC00](v130);
  v131 = &v101 - v28;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100EE0, &qword_1A3A82EC0);
  v114 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115);
  v113 = &v101 - v29;
  v30 = *(a1 + 24);
  v31 = *(a1 + 32);
  sub_1A3A2EA60();
  v32 = v30;
  v125 = v31;
  if ((v31 & 1) == 0)
  {
    sub_1A3A31C30();
    v33 = sub_1A3A305C0();
    sub_1A3A2F270();

    v34 = v128;
    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v20 + 8))(v34, v19);
    v32 = v136;
  }

  v104 = v20;
  v105 = v19;
  v35 = *a1;
  swift_getKeyPath(byte_1A3A82E98);
  *&v136 = v32;
  sub_1A39FBF54(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  if (!*(v32 + 1192))
  {
    __break(1u);
LABEL_22:
    __break(1u);
    return;
  }

  sub_1A3A2EA60();
  v107 = v35;
  v36 = sub_1A38BC058(v35);

  (*(v36 + 56))(v37);

  v38 = v126;
  v39 = v132;
  sub_1A39FBD84(&v25[*(v126 + 36)], v132, type metadata accessor for ChromeElementIcon);
  sub_1A3890834(v25);
  sub_1A39FB5D4(v18);
  sub_1A391163C(v18);
  v40 = *(v134 + 8);
  v109 = v134 + 8;
  v108 = v40;
  v40(v18, v133);
  v41 = sub_1A3A306B0();
  (*(*(v41 - 8) + 56))(v14, 1, 1, v41);
  v42 = sub_1A3A30760();
  sub_1A388F740(v14, &qword_1EB0FD2B8, &qword_1A3A75B00);
  KeyPath = swift_getKeyPath(asc_1A3A82EC8);
  v44 = (v39 + *(v127 + 36));
  *v44 = KeyPath;
  v44[1] = v42;
  sub_1A3A2EA60();
  if ((v125 & 1) == 0)
  {
    sub_1A3A31C30();
    v45 = sub_1A3A305C0();
    sub_1A3A2F270();

    v46 = v128;
    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v104 + 8))(v46, v105);
    v30 = v136;
  }

  swift_getKeyPath(byte_1A3A82E98);
  *&v136 = v30;
  sub_1A3A2F080();

  if (!*(v30 + 1192))
  {
    goto LABEL_22;
  }

  sub_1A3A2EA60();
  v47 = sub_1A38BC058(v107);

  v49 = v111;
  (*(v47 + 56))(v48);

  LOBYTE(v47) = *(v49 + *(v38 + 40));
  sub_1A3890834(v49);
  v50 = v129;
  sub_1A388F670(v132, v129, &qword_1EB0FEAC0, &unk_1A3A75A00);
  *(v50 + *(v110 + 36)) = v47;
  v51 = a1;
  sub_1A39FB5D4(v18);
  v52 = v134;
  v53 = *(v134 + 16);
  v54 = v112;
  v55 = v18;
  v56 = v18;
  v57 = v133;
  v53(v112, v55, v133);
  v58 = *(v52 + 56);
  v58(v54, 0, 1, v57);
  v59 = sub_1A3A31CA0();
  sub_1A3912958(v59);
  v61 = v60;

  v62 = v108;
  v108(v56, v57);
  v134 = v61;
  sub_1A39FB5D4(v56);
  v53(v54, v56, v57);
  v58(v54, 0, 1, v57);
  v63 = sub_1A3A31CA0();
  sub_1A3912958(v63);

  v62(v56, v57);
  sub_1A3A31480();
  sub_1A3A2F780();
  v64 = v131;
  sub_1A388F670(v129, v131, &qword_1EB100EA0, &unk_1A3A82E60);
  v65 = (v64 + *(v130 + 36));
  v66 = v137;
  *v65 = v136;
  v65[1] = v66;
  v65[2] = v138;
  v67 = *(v51 + 8);
  v68 = v51;
  v69 = sub_1A39FB7C4();
  if (qword_1ED996480 != -1)
  {
    swift_once();
  }

  v70 = off_1ED997FE0;
  swift_getKeyPath(a8_11);
  v135 = v70;
  sub_1A39FBF54(&qword_1ED996650, type metadata accessor for SettingsManager, &unk_1A3A777B8);
  sub_1A3A2F080();

  v71 = v70[2];
  sub_1A3A2EA60();
  v72 = sub_1A394F77C(v67);
  v73 = sub_1A394FA74(v67);
  swift_getKeyPath(byte_1A3A82F20);
  v135 = v71;
  sub_1A39FBF54(&qword_1ED996658, type metadata accessor for CameraUISettings, &unk_1A3A777E4);
  sub_1A3A2F080();

  v74 = sub_1A394FC58(14);
  swift_getKeyPath(byte_1A3A82F48);
  v135 = v71;
  sub_1A3A2F080();

  v75 = sub_1A394FC58(11);

  v106 = v68;
  if (v72 - 2 >= 3)
  {
    if (v72 >= 2u)
    {
      v76 = v116;
      sub_1A3A31380();
    }

    else
    {
      if (v75)
      {
        v77 = 0x10000;
      }

      else
      {
        v77 = 0;
      }

      v78 = v77 | (v72 << 24);
      if (v74)
      {
        v79 = 256;
      }

      else
      {
        v79 = 0;
      }

      v80 = v101;
      sub_1A3908D0C(v69 & 1, (v78 | v79) & 0xFFFFFFFE | v73 & 1, v101);
      v76 = v116;
      sub_1A3A31390();
      (*(v102 + 8))(v80, v103);
    }
  }

  else
  {
    LOBYTE(v135) = v73 & 1;
    BYTE1(v135) = v74 & 1;
    BYTE2(v135) = v75 & 1;
    BYTE3(v135) = v72;
    sub_1A38BE1AC();
    v76 = v116;
    sub_1A3A31420();
  }

  v81 = v118;
  v82 = v117;
  v83 = v119;
  (*(v118 + 32))(v117, v76, v119);
  v84 = v120;
  sub_1A3A31160();
  v85 = v121;
  sub_1A3A31150();
  v86 = *(v122 + 8);
  v87 = v123;
  v86(v84, v123);
  sub_1A39FBAD0();
  sub_1A3890F84();
  v88 = v113;
  v89 = v131;
  sub_1A3A309A0();
  v86(v85, v87);
  (*(v81 + 8))(v82, v83);
  sub_1A388F740(v89, &qword_1EB100E88, &qword_1A3A82E58);
  v90 = sub_1A3A30610();
  sub_1A3A2F520();
  v92 = v91;
  v94 = v93;
  v96 = v95;
  v98 = v97;
  v99 = v124;
  (*(v114 + 32))(v124, v88, v115);
  v100 = v99 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100E78, &qword_1A3A82E50) + 36);
  *v100 = v90;
  *(v100 + 8) = v92;
  *(v100 + 16) = v94;
  *(v100 + 24) = v96;
  *(v100 + 32) = v98;
  *(v100 + 40) = 0;
}

uint64_t sub_1A39FB5D4@<X0>(void *a1@<X8>)
{
  v3 = sub_1A3A2FEE0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCE78, &unk_1A3A6F1A0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for ChromeCircularSymbolButton(0);
  sub_1A39FBDEC(v1 + *(v10 + 36), v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1A3A30090();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_1A3A31C30();
    v13 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1A39FB7C4()
{
  v1 = sub_1A3A2FEE0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for ChromeCircularSymbolButton(0) + 40);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {
    sub_1A3A2EA60();
    sub_1A3A31C30();
    v7 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();
    sub_1A3670FF4(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

uint64_t sub_1A39FB920(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChromeCircularSymbolButton(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1A39FB984()
{
  v1 = *(type metadata accessor for ChromeCircularSymbolButton(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_1A39FA2F4(v2);
}

unint64_t sub_1A39FB9EC()
{
  result = qword_1EB100E80;
  if (!qword_1EB100E80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB100E78, &qword_1A3A82E50);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB100E88, &qword_1A3A82E58);
    sub_1A39FBAD0();
    sub_1A3890F84();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB100E80);
  }

  return result;
}

unint64_t sub_1A39FBAD0()
{
  result = qword_1EB100E90;
  if (!qword_1EB100E90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB100E88, &qword_1A3A82E58);
    sub_1A39FBB5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB100E90);
  }

  return result;
}

unint64_t sub_1A39FBB5C()
{
  result = qword_1EB100E98;
  if (!qword_1EB100E98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB100EA0, &unk_1A3A82E60);
    sub_1A393AED4();
    sub_1A38C00C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB100E98);
  }

  return result;
}

unint64_t sub_1A39FBBE8()
{
  result = qword_1EB100EB8;
  if (!qword_1EB100EB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB100E60, &qword_1A3A82E30);
    sub_1A39FBCA0();
    sub_1A38A08F8(&qword_1EB100ED8, &qword_1EB100EB0, &qword_1A3A82E80, MEMORY[0x1E69805E8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB100EB8);
  }

  return result;
}

unint64_t sub_1A39FBCA0()
{
  result = qword_1EB100EC0;
  if (!qword_1EB100EC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB100EA8, &qword_1A3A82E78);
    sub_1A38A08F8(&qword_1EB100EC8, &qword_1EB100ED0, &unk_1A3A82E88, MEMORY[0x1E697D680]);
    sub_1A38A08F8(&qword_1EB0FFE40, &qword_1EB0FFE48, &qword_1A3A7C910, MEMORY[0x1E697FD58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB100EC0);
  }

  return result;
}

uint64_t sub_1A39FBD84(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A39FBDEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCE78, &unk_1A3A6F1A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1A39FBE5C()
{
  result = qword_1EB100EE8;
  if (!qword_1EB100EE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB100E70, &unk_1A3A82E40);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB100E60, &qword_1A3A82E30);
    sub_1A39FBBE8();
    swift_getOpaqueTypeConformance2();
    sub_1A39FBF54(&qword_1ED9966D8, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB100EE8);
  }

  return result;
}

uint64_t sub_1A39FBF54(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A39FBF9C(double a1)
{
  if (a1 < 0.0)
  {
    return 0;
  }

  if (a1 >= 1.0)
  {
    return 100;
  }

  v2 = round(a1 * 100.0);
  if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v2 <= -9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v2 < 9.22337204e18)
  {
    return v2;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_1A39FC01C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1A39FC0A4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  v7 = *(v4 + 64);
  if (v5 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_25;
  }

  v10 = v7 + ((v6 + 8) & ~v6) + 1;
  v11 = 8 * v10;
  if (v10 > 3)
  {
    goto LABEL_7;
  }

  v13 = ((v9 + ~(-1 << v11)) >> v11) + 1;
  if (HIWORD(v13))
  {
    v12 = *(a1 + v10);
    if (v12)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (v13 <= 0xFF)
    {
      if (v13 < 2)
      {
        goto LABEL_25;
      }

LABEL_7:
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_25;
      }

LABEL_14:
      v14 = (v12 - 1) << v11;
      if (v10 > 3)
      {
        v14 = 0;
      }

      if (v10)
      {
        if (v10 > 3)
        {
          LODWORD(v10) = 4;
        }

        if (v10 > 2)
        {
          if (v10 == 3)
          {
            LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            LODWORD(v10) = *a1;
          }
        }

        else if (v10 == 1)
        {
          LODWORD(v10) = *a1;
        }

        else
        {
          LODWORD(v10) = *a1;
        }
      }

      return v8 + (v10 | v14) + 1;
    }

    v12 = *(a1 + v10);
    if (*(a1 + v10))
    {
      goto LABEL_14;
    }
  }

LABEL_25:
  v15 = (a1 + v6 + 8) & ~v6;
  if (v5 >= 0xFE)
  {
    return (*(v4 + 48))(v15);
  }

  v17 = *(v15 + v7);
  if (v17 < 2)
  {
    return 0;
  }

  return ((v17 + 2147483646) & 0x7FFFFFFF) + 1;
}

void sub_1A39FC238(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = *(*(*(a4 + 16) - 8) + 64);
  v11 = v10 + ((v9 + 8) & ~v9) + 1;
  v12 = a3 >= v8;
  v13 = a3 - v8;
  if (v13 != 0 && v12)
  {
    if (v11 <= 3)
    {
      v17 = ((v13 + ~(-1 << (8 * v11))) >> (8 * v11)) + 1;
      if (HIWORD(v17))
      {
        v14 = 4;
      }

      else
      {
        if (v17 < 0x100)
        {
          v18 = 1;
        }

        else
        {
          v18 = 2;
        }

        if (v17 >= 2)
        {
          v14 = v18;
        }

        else
        {
          v14 = 0;
        }
      }
    }

    else
    {
      v14 = 1;
    }
  }

  else
  {
    v14 = 0;
  }

  if (v8 < a2)
  {
    v15 = ~v8 + a2;
    if (v11 < 4)
    {
      v16 = (v15 >> (8 * v11)) + 1;
      if (v10 + ((v9 + 8) & ~v9) != -1)
      {
        v19 = v15 & ~(-1 << (8 * v11));
        bzero(a1, v11);
        if (v11 != 3)
        {
          if (v11 == 2)
          {
            *a1 = v19;
            if (v14 > 1)
            {
LABEL_44:
              if (v14 == 2)
              {
                *&a1[v11] = v16;
              }

              else
              {
                *&a1[v11] = v16;
              }

              return;
            }
          }

          else
          {
            *a1 = v15;
            if (v14 > 1)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *a1 = v19;
        a1[2] = BYTE2(v19);
      }

      if (v14 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v15;
      v16 = 1;
      if (v14 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    if (v14)
    {
      a1[v11] = v16;
    }

    return;
  }

  if (v14 > 1)
  {
    if (v14 != 2)
    {
      *&a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v11] = 0;
  }

  else if (v14)
  {
    a1[v11] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  v20 = &a1[v9 + 8] & ~v9;
  if (v7 < 0xFE)
  {
    *(v20 + v10) = a2 + 1;
  }

  else
  {
    v21 = *(v6 + 56);

    v21(v20);
  }
}

uint64_t sub_1A39FC4E0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v36 = a2;
  v3 = sub_1A3A2FC50();
  v34 = *(v3 - 8);
  v35 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v33 = &OpaqueTypeMetadata2 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A3A303A0();
  v30 = *(v5 - 1);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &OpaqueTypeMetadata2 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  v26 = sub_1A39FC91C();
  v9 = *(a1 + 24);
  v40 = v5;
  v41 = v8;
  v42 = v26;
  v43 = v9;
  v28 = MEMORY[0x1E6981208];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v31 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v11 = &OpaqueTypeMetadata2 - v10;
  v29 = sub_1A3A30480();
  v12 = sub_1A3A2FA90();
  v32 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &OpaqueTypeMetadata2 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v27 = &OpaqueTypeMetadata2 - v16;
  sub_1A3A303B0();
  v17 = v26;
  sub_1A398EB18(*v37, v37 + *(a1 + 36), *(v37 + *(a1 + 40)), v5, v8, v26, v9, v11);
  (*(v30 + 8))(v7, v5);
  v18 = v33;
  sub_1A3A2FC40();
  v40 = v5;
  v41 = v8;
  v42 = v17;
  v43 = v9;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v20 = OpaqueTypeMetadata2;
  sub_1A3A309C0();
  (*(v34 + 8))(v18, v35);
  (*(v31 + 8))(v11, v20);
  WitnessTable = swift_getWitnessTable();
  v38 = OpaqueTypeConformance2;
  v39 = WitnessTable;
  swift_getWitnessTable();
  v22 = v27;
  sub_1A3964BD0();
  v23 = *(v32 + 8);
  v23(v14, v12);
  sub_1A3964BD0();
  return (v23)(v22, v12);
}

unint64_t sub_1A39FC91C()
{
  result = qword_1ED999240;
  if (!qword_1ED999240)
  {
    sub_1A3A303A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED999240);
  }

  return result;
}

uint64_t sub_1A39FC974(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFDC && *(a1 + 8))
  {
    return (*a1 + 2147483613);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 34;
  if (v4 >= 0x24)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A39FC9CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFDD)
  {
    *result = 0;
    *result = a2 - 2147483613;
    if (a3 >= 0x7FFFFFDD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFDD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 34;
    }
  }

  return result;
}

void *sub_1A39FCA1C(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_1A39FCA4C(unint64_t a1)
{
  if (a1 >= 0x23 && (sub_1A39FCD24(&unk_1F1653CE0, a1) & 1) != 0)
  {
    return 0;
  }

  v3 = sub_1A39FDA64(a1);
  MEMORY[0x1A58F7770](v3);

  sub_1A3A2EA50();
  MEMORY[0x1A58F7770](0x6C6562614C78612ELL, 0xE800000000000000);

  v4 = sub_1A3A31810();
  v5 = sub_1A3A31810();

  v6 = CAMLocalizedFrameworkString(v4, v5);

  v2 = sub_1A3A31850();
  return v2;
}

uint64_t sub_1A39FCB74(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_1A3A321C0() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1A39FCC04(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    for (i = 0; ; i += 48)
    {
      v4 = *(a1 + i + 48);
      v5 = *(a1 + i + 56);
      v6 = *(a1 + i + 64);
      v7 = *(a1 + i + 72);
      v8 = *(a2 + i + 48);
      v9 = *(a2 + i + 56);
      v10 = *(a2 + i + 64);
      v11 = *(a2 + i + 72);
      v12 = *(a1 + i + 32) == *(a2 + i + 32) && *(a1 + i + 40) == *(a2 + i + 40);
      if (!v12 && (sub_1A3A321C0() & 1) == 0)
      {
        break;
      }

      v13 = v4 == v8 && v5 == v9;
      if (!v13 && (sub_1A3A321C0() & 1) == 0)
      {
        break;
      }

      v14 = v6 == v10 && v7 == v11;
      if (!v14 && (sub_1A3A321C0() & 1) == 0)
      {
        break;
      }

      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1A39FCD24(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      v6 = *v3++;
      v5 = v6;
      v7 = *v4;
      switch(v6)
      {
        case 0uLL:
          if (v7)
          {
            return 0;
          }

          break;
        case 1uLL:
          if (v7 != 1)
          {
            return 0;
          }

          break;
        case 2uLL:
          if (v7 != 2)
          {
            return 0;
          }

          break;
        case 3uLL:
          if (v7 != 3)
          {
            return 0;
          }

          break;
        case 4uLL:
          if (v7 != 4)
          {
            return 0;
          }

          break;
        case 5uLL:
          if (v7 != 5)
          {
            return 0;
          }

          break;
        case 6uLL:
          if (v7 != 6)
          {
            return 0;
          }

          break;
        case 7uLL:
          if (v7 != 7)
          {
            return 0;
          }

          break;
        case 8uLL:
          if (v7 != 8)
          {
            return 0;
          }

          break;
        case 9uLL:
          if (v7 != 9)
          {
            return 0;
          }

          break;
        case 0xAuLL:
          if (v7 != 10)
          {
            return 0;
          }

          break;
        case 0xBuLL:
          if (v7 != 11)
          {
            return 0;
          }

          break;
        case 0xCuLL:
          if (v7 != 12)
          {
            return 0;
          }

          break;
        case 0xDuLL:
          if (v7 != 13)
          {
            return 0;
          }

          break;
        case 0xEuLL:
          if (v7 != 14)
          {
            return 0;
          }

          break;
        case 0xFuLL:
          if (v7 != 15)
          {
            return 0;
          }

          break;
        case 0x10uLL:
          if (v7 != 16)
          {
            return 0;
          }

          break;
        case 0x11uLL:
          if (v7 != 17)
          {
            return 0;
          }

          break;
        case 0x12uLL:
          if (v7 != 18)
          {
            return 0;
          }

          break;
        case 0x13uLL:
          if (v7 != 19)
          {
            return 0;
          }

          break;
        case 0x14uLL:
          if (v7 != 20)
          {
            return 0;
          }

          break;
        case 0x15uLL:
          if (v7 != 21)
          {
            return 0;
          }

          break;
        case 0x16uLL:
          if (v7 != 22)
          {
            return 0;
          }

          break;
        case 0x17uLL:
          if (v7 != 23)
          {
            return 0;
          }

          break;
        case 0x18uLL:
          if (v7 != 24)
          {
            return 0;
          }

          break;
        case 0x19uLL:
          if (v7 != 25)
          {
            return 0;
          }

          break;
        case 0x1AuLL:
          if (v7 != 26)
          {
            return 0;
          }

          break;
        case 0x1BuLL:
          if (v7 != 27)
          {
            return 0;
          }

          break;
        case 0x1CuLL:
          if (v7 != 28)
          {
            return 0;
          }

          break;
        case 0x1DuLL:
          if (v7 != 29)
          {
            return 0;
          }

          break;
        case 0x1EuLL:
          if (v7 != 30)
          {
            return 0;
          }

          break;
        case 0x1FuLL:
          if (v7 != 31)
          {
            return 0;
          }

          break;
        case 0x20uLL:
          if (v7 != 32)
          {
            return 0;
          }

          break;
        case 0x21uLL:
          if (v7 != 33)
          {
            return 0;
          }

          break;
        case 0x22uLL:
          if (v7 != 34)
          {
            return 0;
          }

          break;
        default:
          if (v7 < 0x23)
          {
            return 0;
          }

          v8 = v5;
          sub_1A38A8F64(*v4);
          sub_1A38A8F64(v8);
          v9 = sub_1A39FCD24(v8, v7);
          sub_1A3890F2C(v7);
          sub_1A3890F2C(v8);
          if ((v9 & 1) == 0)
          {
            return 0;
          }

          break;
      }

      ++v4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1A39FCFA4(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A39FD000(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A39FD05C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDA48, &qword_1A3A78090);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    return 0;
  }

  if (!v11 || a1 == a2)
  {
    return 1;
  }

  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = a1 + v12;
  v14 = a2 + v12;
  v15 = *(v8 + 72);
  while (1)
  {
    result = sub_1A3A07E10(v13, v10);
    if (!v11)
    {
      break;
    }

    sub_1A3A07E10(v14, v6);
    if ((sub_1A3A310C0() & 1) == 0)
    {
      sub_1A3A07E80(v6);
      sub_1A3A07E80(v10);
      return 0;
    }

    v17 = *(v4 + 44);
    v18 = *&v10[v17];
    sub_1A3A07E80(v10);
    v19 = *&v6[v17];
    sub_1A3A07E80(v6);
    result = v18 == v19;
    v20 = v18 != v19 || v11-- == 1;
    v14 += v15;
    v13 += v15;
    if (v20)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A39FD204@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ChromeElementIcon(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  switch(a1)
  {
    case 0:
      v9 = 0x80000001A3AA7860;
      v10 = 0xD000000000000011;
      goto LABEL_38;
    case 1:
      v16 = "slider.horizontal.3";
      goto LABEL_23;
    case 2:
    case 16:
      v7 = 0x7669737275632E66;
      v8 = 0xE900000000000065;
      goto LABEL_25;
    case 3:
      v7 = 0x6172746365707361;
      v8 = 0xEB000000006F6974;
      goto LABEL_25;
    case 4:
      v7 = 0x632E6172656D6163;
      v8 = 0xEE006C6F72746E6FLL;
      goto LABEL_25;
    case 5:
      v7 = 0x756E696D73756C70;
      v8 = 0xE900000000000073;
      goto LABEL_25;
    case 6:
      v7 = 0x662E6172656D6163;
      v8 = 0xEE00737265746C69;
      goto LABEL_25;
    case 7:
    case 27:
      v7 = 1953263458;
      v8 = 0xE400000000000000;
      goto LABEL_25;
    case 8:
      v9 = 0x80000001A3AA4290;
      v10 = 0xD00000000000001BLL;
      goto LABEL_38;
    case 9:
      *a2 = 0x632E6E6F73726570;
      *(a2 + 8) = 0xEF7069702E706F72;
      *(a2 + 16) = 1;
      goto LABEL_40;
    case 10:
      sub_1A3A30740();
      sub_1A391A414(v17);
      v18 = CEKFontOfSizeWeightStyle();
      v13 = sub_1A3A307B0();
      v14 = 5391432;
      goto LABEL_35;
    case 11:
      v7 = 0x6569762E74786574;
      v8 = 0xEF7265646E696677;
      goto LABEL_25;
    case 12:
      v7 = 0x74732E6F746F6870;
      v8 = 0xEB000000006B6361;
      goto LABEL_25;
    case 13:
      v7 = 6650213;
      v8 = 0xE300000000000000;
      goto LABEL_25;
    case 14:
      v7 = 0x746F68706576696CLL;
      v8 = 0xE90000000000006FLL;
      goto LABEL_25;
    case 15:
      v7 = 0x6D2E6172656D6163;
      v8 = 0xEC0000006F726361;
      goto LABEL_25;
    case 17:
      v21 = "camera.nightmode";
      goto LABEL_33;
    case 18:
      sub_1A3A30740();
      sub_1A391A414(v28);
      v29 = CEKFontOfSizeWeightStyle();
      v13 = sub_1A3A307B0();
      v14 = 0x74616D726F46;
      v15 = 0xE600000000000000;
      goto LABEL_36;
    case 19:
      sub_1A3A30740();
      sub_1A391A414(v19);
      v20 = CEKFontOfSizeWeightStyle();
      v13 = sub_1A3A307B0();
      v14 = 0x6974756C6F736552;
      v15 = 0xEA00000000006E6FLL;
      goto LABEL_36;
    case 20:
      v16 = "camera.lightcontrol";
LABEL_23:
      v9 = (v16 - 32) | 0x8000000000000000;
      v10 = 0xD000000000000013;
      goto LABEL_38;
    case 21:
      sub_1A3A30740();
      sub_1A391A414(v26);
      v27 = CEKFontOfSizeWeightStyle();
      v13 = sub_1A3A307B0();
      v14 = 0x7365526F7250;
      v15 = 0xE600000000000000;
      goto LABEL_36;
    case 22:
    case 30:
      v7 = 0x6B72616D78;
      v8 = 0xE500000000000000;
      goto LABEL_25;
    case 23:
      v7 = 0x322E6E6F73726570;
      v8 = 0xE800000000000000;
      goto LABEL_25;
    case 24:
      v9 = 0x80000001A3AA1CF0;
      v10 = 0xD00000000000001CLL;
      goto LABEL_38;
    case 25:
      v9 = 0x80000001A3AA1D10;
      v10 = 0xD00000000000002DLL;
      goto LABEL_38;
    case 26:
      v21 = "timer.monolinear";
LABEL_33:
      v9 = (v21 - 32) | 0x8000000000000000;
      v10 = 0xD000000000000010;
LABEL_38:
      *a2 = v10;
      *(a2 + 8) = v9;
      goto LABEL_39;
    case 28:
      sub_1A3A30740();
      sub_1A391A414(v30);
      v31 = CEKFontOfSizeWeightStyle();
      v13 = sub_1A3A307B0();
      v14 = 5460038;
LABEL_35:
      v15 = 0xE300000000000000;
      goto LABEL_36;
    case 29:
      sub_1A3A30740();
      sub_1A391A414(v22);
      v23 = CEKFontOfSizeWeightStyle();
      v13 = sub_1A3A307B0();
      v14 = 779314514;
      v15 = 0xE400000000000000;
      goto LABEL_36;
    case 31:
      v7 = 0x6C616E7265747865;
      v8 = 0xED00006576697264;
LABEL_25:
      *a2 = v7;
      *(a2 + 8) = v8;
LABEL_39:
      *(a2 + 16) = 1;
      *(a2 + 24) = 0;
      *(a2 + 32) = 0;
      goto LABEL_40;
    case 32:
      sub_1A3A30740();
      sub_1A391A414(v24);
      v25 = CEKFontOfSizeWeightStyle();
      v13 = sub_1A3A307B0();
      v14 = 0x6F6F5A206F747541;
      v15 = 0xE90000000000006DLL;
      goto LABEL_36;
    case 33:
      sub_1A3A30740();
      sub_1A391A414(v11);
      v12 = CEKFontOfSizeWeightStyle();
      v13 = sub_1A3A307B0();
      v14 = 0x746F52206F747541;
      v15 = 0xED00006E6F697461;
LABEL_36:
      *a2 = v14;
      *(a2 + 8) = v15;
      *(a2 + 16) = v13;
      *(a2 + 24) = 0;
      goto LABEL_40;
    case 34:
LABEL_40:

      result = swift_storeEnumTagMultiPayload();
      break;
    default:
      if (sub_1A39FCD24(&unk_1F1653CE0, a1) & 1) != 0 || (sub_1A39FCD24(&unk_1F1653D10, a1))
      {
        swift_storeEnumTagMultiPayload();
        result = sub_1A3890890(v6, a2);
      }

      else
      {
        v34 = 0;
        v35 = 0xE000000000000000;
        sub_1A3A31F20();

        v34 = 0xD000000000000025;
        v35 = 0x80000001A3AA7790;
        v33 = MEMORY[0x1A58F7830](a1, &type metadata for ChromeElement);
        MEMORY[0x1A58F7770](v33);

        result = sub_1A3A32070("Fatal error", 11, 2, v34, v35, "CameraUI/ChromeElement.swift", 28, 2, 202, 0);
        __break(1u);
      }

      break;
  }

  return result;
}

uint64_t sub_1A39FD894(unint64_t a1)
{
  v2 = sub_1A39FDA64(a1);
  MEMORY[0x1A58F7770](v2);

  sub_1A3A2EA50();
  MEMORY[0x1A58F7770](0x7475706E4978612ELL, 0xED00006C6562614CLL);

  v3 = sub_1A3A31810();
  v4 = sub_1A3A31810();
  v5 = CAMLocalizedFrameworkString(v3, v4);

  v6 = sub_1A3A31850();
  v8 = v7;

  if (v6 == 0x2E656D6F726843 && v8 == 0xE700000000000000)
  {
  }

  else
  {
    v9 = sub_1A3A321C0();

    if ((v9 & 1) == 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDD00, &unk_1A3A6FA40);
      result = swift_allocObject();
      *(result + 16) = xmmword_1A3A681C0;
      *(result + 32) = v6;
      goto LABEL_7;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDD00, &unk_1A3A6FA40);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1A3A681C0;
  v11 = sub_1A39FCA4C(a1);
  result = v10;
  v8 = v13;
  *(v10 + 32) = v11;
LABEL_7:
  *(result + 40) = v8;
  return result;
}

uint64_t sub_1A39FDA64(uint64_t a1)
{
  result = 0x6E6F69746341;
  switch(a1)
  {
    case 0:
      return result;
    case 1:
      result = 0x7473756A6441;
      break;
    case 2:
      result = 0x6572757472657041;
      break;
    case 3:
      result = 0x6152746365707341;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    case 5:
      result = 0x657275736F707845;
      break;
    case 6:
      result = 0x7265746C6946;
      break;
    case 7:
    case 27:
      result = 0x6873616C46;
      break;
    case 8:
      result = 1885957190;
      break;
    case 9:
      result = 0x504950746E6F7246;
      break;
    case 10:
      result = 5391432;
      break;
    case 11:
      result = 0x616E416567616D49;
      break;
    case 12:
      result = 0x6C65576567616D49;
      break;
    case 13:
      result = 0x69736F50736E654CLL;
      break;
    case 14:
      result = 0x746F68506576694CLL;
      break;
    case 15:
      result = 0x6F7263614DLL;
      break;
    case 16:
      result = 0x6874706544;
      break;
    case 17:
      result = 0x646F4D746867694ELL;
      break;
    case 18:
      result = 0x74616D726F46;
      break;
    case 19:
      result = 0x6974756C6F736552;
      break;
    case 20:
      result = 0xD000000000000017;
      break;
    case 21:
      result = 0x7365526F7250;
      break;
    case 22:
      result = 0xD000000000000012;
      break;
    case 23:
      result = 0x694C646572616853;
      break;
    case 24:
    case 25:
      result = 0x656C797453;
      break;
    case 26:
      result = 0x72656D6954;
      break;
    case 28:
      result = 0x6172466F65646956;
      break;
    case 29:
      result = 0x7365526F65646956;
      break;
    case 30:
      result = 0x6C65636E6143;
      break;
    case 31:
      result = 0xD000000000000016;
      break;
    case 32:
      result = 0xD000000000000014;
      break;
    case 33:
      result = 0xD000000000000018;
      break;
    case 34:
      result = 0x546C616974617053;
      break;
    default:
      if (sub_1A39FCD24(&unk_1F1653CE0, a1))
      {
        result = 0xD000000000000013;
      }

      else if (sub_1A39FCD24(&unk_1F1653D10, a1))
      {
        result = 0xD000000000000010;
      }

      else
      {
        sub_1A3A31F20();

        v4 = MEMORY[0x1A58F7830](a1, &type metadata for ChromeElement);
        MEMORY[0x1A58F7770](v4);

        result = sub_1A3A32070("Fatal error", 11, 2, 0xD000000000000025, 0x80000001A3AA7790, "CameraUI/ChromeElement.swift", 28, 2, 148, 0);
        __break(1u);
      }

      break;
  }

  return result;
}

uint64_t sub_1A39FDF1C(uint64_t a1)
{
  v2 = sub_1A3A05F40();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A39FDF58(uint64_t a1)
{
  v2 = sub_1A3A05F40();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A39FDF94(char a1)
{
  result = 0x6E6F69746361;
  switch(a1)
  {
    case 1:
      result = 0x7473756A6461;
      break;
    case 2:
      result = 0x6572757472657061;
      break;
    case 3:
      result = 0x6152746365707361;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    case 5:
      result = 0x657275736F707865;
      break;
    case 6:
      result = 0x7265746C6966;
      break;
    case 7:
      result = 0x6873616C66;
      break;
    case 8:
      result = 1885957222;
      break;
    case 9:
      result = 0x504950746E6F7266;
      break;
    case 10:
      result = 7496808;
      break;
    case 11:
      result = 0x616E416567616D69;
      break;
    case 12:
      result = 0x6C65576567616D69;
      break;
    case 13:
      result = 0x69736F50736E656CLL;
      break;
    case 14:
      result = 0x746F68506576696CLL;
      break;
    case 15:
      result = 0x6F7263616DLL;
      break;
    case 16:
      result = 0x6874706564;
      break;
    case 17:
      result = 0x646F4D746867696ELL;
      break;
    case 18:
      result = 0x726F466F746F6870;
      break;
    case 19:
      v3 = 1953458288;
      goto LABEL_33;
    case 20:
      result = 0xD000000000000017;
      break;
    case 21:
      result = 0x646E756F706D6F63;
      break;
    case 22:
      result = 0x7365526F7270;
      break;
    case 23:
      result = 0xD000000000000012;
      break;
    case 24:
      result = 0x694C646572616873;
      break;
    case 25:
      result = 0x6369746E616D6573;
      break;
    case 26:
      result = 0x7974537472616D73;
      break;
    case 27:
      result = 0x72656D6974;
      break;
    case 28:
      result = 0x6863726F74;
      break;
    case 29:
      result = 0x6172466F65646976;
      break;
    case 30:
      v3 = 1701079414;
LABEL_33:
      result = v3 | 0x7365526F00000000;
      break;
    case 31:
      result = 0xD000000000000011;
      break;
    case 32:
      result = 0xD000000000000016;
      break;
    case 33:
      result = 0xD000000000000014;
      break;
    case 34:
      result = 0xD000000000000018;
      break;
    case 35:
      result = 0x546C616974617073;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1A39FE374(void *a1, uint64_t a2)
{
  v200 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB101158, &qword_1A3A832B8);
  v198 = *(v3 - 8);
  v199 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v197 = &v96 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB101160, &qword_1A3A832C0);
  v195 = *(v5 - 8);
  v196 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v194 = &v96 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB101168, &qword_1A3A832C8);
  v192 = *(v7 - 8);
  v193 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v191 = &v96 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB101170, &qword_1A3A832D0);
  v189 = *(v9 - 8);
  v190 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v188 = &v96 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB101178, &qword_1A3A832D8);
  v186 = *(v11 - 8);
  v187 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v185 = &v96 - v12;
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB101180, &qword_1A3A832E0);
  v183 = *(v184 - 8);
  MEMORY[0x1EEE9AC00](v184);
  v182 = &v96 - v13;
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB101188, &qword_1A3A832E8);
  v180 = *(v181 - 8);
  MEMORY[0x1EEE9AC00](v181);
  v179 = &v96 - v14;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB101190, &qword_1A3A832F0);
  v177 = *(v178 - 8);
  MEMORY[0x1EEE9AC00](v178);
  v176 = &v96 - v15;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB101198, &qword_1A3A832F8);
  v174 = *(v175 - 8);
  MEMORY[0x1EEE9AC00](v175);
  v173 = &v96 - v16;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1011A0, &qword_1A3A83300);
  v171 = *(v172 - 8);
  MEMORY[0x1EEE9AC00](v172);
  v170 = &v96 - v17;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1011A8, &qword_1A3A83308);
  v168 = *(v169 - 8);
  MEMORY[0x1EEE9AC00](v169);
  v167 = &v96 - v18;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1011B0, &qword_1A3A83310);
  v165 = *(v166 - 8);
  MEMORY[0x1EEE9AC00](v166);
  v164 = &v96 - v19;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1011B8, &qword_1A3A83318);
  v162 = *(v163 - 8);
  MEMORY[0x1EEE9AC00](v163);
  v161 = &v96 - v20;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1011C0, &qword_1A3A83320);
  v157 = *(v158 - 8);
  MEMORY[0x1EEE9AC00](v158);
  v155 = &v96 - v21;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1011C8, &qword_1A3A83328);
  v159 = *(v160 - 8);
  MEMORY[0x1EEE9AC00](v160);
  v156 = &v96 - v22;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1011D0, &qword_1A3A83330);
  v153 = *(v154 - 8);
  MEMORY[0x1EEE9AC00](v154);
  v152 = &v96 - v23;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1011D8, &qword_1A3A83338);
  v150 = *(v151 - 8);
  MEMORY[0x1EEE9AC00](v151);
  v149 = &v96 - v24;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1011E0, &qword_1A3A83340);
  v147 = *(v148 - 8);
  MEMORY[0x1EEE9AC00](v148);
  v146 = &v96 - v25;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1011E8, &qword_1A3A83348);
  v144 = *(v145 - 8);
  MEMORY[0x1EEE9AC00](v145);
  v143 = &v96 - v26;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1011F0, &qword_1A3A83350);
  v141 = *(v142 - 8);
  MEMORY[0x1EEE9AC00](v142);
  v140 = &v96 - v27;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1011F8, &qword_1A3A83358);
  v138 = *(v139 - 8);
  MEMORY[0x1EEE9AC00](v139);
  v137 = &v96 - v28;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB101200, &qword_1A3A83360);
  v135 = *(v136 - 8);
  MEMORY[0x1EEE9AC00](v136);
  v134 = &v96 - v29;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB101208, &qword_1A3A83368);
  v132 = *(v133 - 8);
  MEMORY[0x1EEE9AC00](v133);
  v131 = &v96 - v30;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB101210, &qword_1A3A83370);
  v129 = *(v130 - 8);
  MEMORY[0x1EEE9AC00](v130);
  v128 = &v96 - v31;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB101218, &qword_1A3A83378);
  v126 = *(v127 - 8);
  MEMORY[0x1EEE9AC00](v127);
  v125 = &v96 - v32;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB101220, &qword_1A3A83380);
  v123 = *(v124 - 8);
  MEMORY[0x1EEE9AC00](v124);
  v122 = &v96 - v33;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB101228, &qword_1A3A83388);
  v120 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121);
  v119 = &v96 - v34;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB101230, &qword_1A3A83390);
  v117 = *(v118 - 8);
  MEMORY[0x1EEE9AC00](v118);
  v116 = &v96 - v35;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB101238, &qword_1A3A83398);
  v114 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115);
  v113 = &v96 - v36;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB101240, &qword_1A3A833A0);
  v111 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112);
  v110 = &v96 - v37;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB101248, &qword_1A3A833A8);
  v108 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v107 = &v96 - v38;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB101250, &qword_1A3A833B0);
  v105 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v104 = &v96 - v39;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB101258, &qword_1A3A833B8);
  v102 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v101 = &v96 - v40;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB101260, &qword_1A3A833C0);
  v99 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v42 = &v96 - v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB101268, &qword_1A3A833C8);
  v98 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v96 - v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB101270, &qword_1A3A833D0);
  v97 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v96 - v47;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB101278, &unk_1A3A833D8);
  v50 = *(v49 - 8);
  v202 = v49;
  v203 = v50;
  MEMORY[0x1EEE9AC00](v49);
  v52 = &v96 - v51;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A3A0531C();
  v201 = v52;
  v53 = v200;
  sub_1A3A32330();
  switch(v53)
  {
    case 0:
      LOBYTE(v205) = 0;
      sub_1A3A05F40();
      v55 = v201;
      v54 = v202;
      sub_1A3A32170();
      (*(v97 + 8))(v48, v46);
      goto LABEL_39;
    case 1:
      LOBYTE(v205) = 1;
      sub_1A3A05EEC();
      v55 = v201;
      v54 = v202;
      sub_1A3A32170();
      (*(v98 + 8))(v45, v43);
      goto LABEL_39;
    case 2:
      LOBYTE(v205) = 2;
      sub_1A3A05E98();
      v71 = v201;
      v72 = v202;
      sub_1A3A32170();
      (*(v99 + 8))(v42, v100);
      return (*(v203 + 8))(v71, v72);
    case 3:
      LOBYTE(v205) = 3;
      sub_1A3A05E44();
      v75 = v101;
      v55 = v201;
      v54 = v202;
      sub_1A3A32170();
      v57 = *(v102 + 8);
      v58 = v75;
      v59 = &v135;
      goto LABEL_38;
    case 4:
      LOBYTE(v205) = 4;
      sub_1A3A05DF0();
      v66 = v104;
      v55 = v201;
      v54 = v202;
      sub_1A3A32170();
      v57 = *(v105 + 8);
      v58 = v66;
      v59 = &v138;
      goto LABEL_38;
    case 5:
      LOBYTE(v205) = 5;
      sub_1A3A05D9C();
      v79 = v107;
      v55 = v201;
      v54 = v202;
      sub_1A3A32170();
      v57 = *(v108 + 8);
      v58 = v79;
      v59 = &v141;
      goto LABEL_38;
    case 6:
      LOBYTE(v205) = 6;
      sub_1A3A05D48();
      v82 = v110;
      v55 = v201;
      v54 = v202;
      sub_1A3A32170();
      v57 = *(v111 + 8);
      v58 = v82;
      v59 = &v144;
      goto LABEL_38;
    case 7:
      LOBYTE(v205) = 7;
      sub_1A3A05CF4();
      v76 = v113;
      v55 = v201;
      v54 = v202;
      sub_1A3A32170();
      v57 = *(v114 + 8);
      v58 = v76;
      v59 = &v147;
      goto LABEL_38;
    case 8:
      LOBYTE(v205) = 8;
      sub_1A3A05CA0();
      v85 = v116;
      v55 = v201;
      v54 = v202;
      sub_1A3A32170();
      v57 = *(v117 + 8);
      v58 = v85;
      v59 = &v150;
      goto LABEL_38;
    case 9:
      LOBYTE(v205) = 9;
      sub_1A3A05C4C();
      v68 = v119;
      v55 = v201;
      v54 = v202;
      sub_1A3A32170();
      v57 = *(v120 + 8);
      v58 = v68;
      v59 = &v153;
      goto LABEL_38;
    case 10:
      LOBYTE(v205) = 10;
      sub_1A3A05BF8();
      v84 = v122;
      v55 = v201;
      v54 = v202;
      sub_1A3A32170();
      v57 = *(v123 + 8);
      v58 = v84;
      v59 = &v156;
      goto LABEL_38;
    case 11:
      LOBYTE(v205) = 11;
      sub_1A3A05BA4();
      v65 = v125;
      v55 = v201;
      v54 = v202;
      sub_1A3A32170();
      v57 = *(v126 + 8);
      v58 = v65;
      v59 = &v159;
      goto LABEL_38;
    case 12:
      LOBYTE(v205) = 12;
      sub_1A3A05B50();
      v67 = v128;
      v55 = v201;
      v54 = v202;
      sub_1A3A32170();
      v57 = *(v129 + 8);
      v58 = v67;
      v59 = &v162;
      goto LABEL_38;
    case 13:
      LOBYTE(v205) = 13;
      sub_1A3A05AFC();
      v81 = v131;
      v55 = v201;
      v54 = v202;
      sub_1A3A32170();
      v57 = *(v132 + 8);
      v58 = v81;
      v59 = &v165;
      goto LABEL_38;
    case 14:
      LOBYTE(v205) = 14;
      sub_1A3A05AA8();
      v64 = v134;
      v55 = v201;
      v54 = v202;
      sub_1A3A32170();
      v57 = *(v135 + 8);
      v58 = v64;
      v59 = &v168;
      goto LABEL_38;
    case 15:
      LOBYTE(v205) = 15;
      sub_1A3A05A54();
      v74 = v137;
      v55 = v201;
      v54 = v202;
      sub_1A3A32170();
      v57 = *(v138 + 8);
      v58 = v74;
      v59 = &v171;
      goto LABEL_38;
    case 16:
      LOBYTE(v205) = 16;
      sub_1A3A05A00();
      v63 = v140;
      v55 = v201;
      v54 = v202;
      sub_1A3A32170();
      v57 = *(v141 + 8);
      v58 = v63;
      v59 = &v174;
      goto LABEL_38;
    case 17:
      LOBYTE(v205) = 17;
      sub_1A3A059AC();
      v77 = v143;
      v55 = v201;
      v54 = v202;
      sub_1A3A32170();
      v57 = *(v144 + 8);
      v58 = v77;
      v59 = &v177;
      goto LABEL_38;
    case 18:
      LOBYTE(v205) = 18;
      sub_1A3A05958();
      v83 = v146;
      v55 = v201;
      v54 = v202;
      sub_1A3A32170();
      v57 = *(v147 + 8);
      v58 = v83;
      v59 = &v180;
      goto LABEL_38;
    case 19:
      LOBYTE(v205) = 19;
      sub_1A3A05904();
      v87 = v149;
      v55 = v201;
      v54 = v202;
      sub_1A3A32170();
      v57 = *(v150 + 8);
      v58 = v87;
      v59 = &v183;
      goto LABEL_38;
    case 20:
      LOBYTE(v205) = 20;
      sub_1A3A058B0();
      v78 = v152;
      v55 = v201;
      v54 = v202;
      sub_1A3A32170();
      v57 = *(v153 + 8);
      v58 = v78;
      v59 = &v186;
      goto LABEL_38;
    case 21:
      LOBYTE(v205) = 22;
      sub_1A3A057B4();
      v80 = v155;
      v55 = v201;
      v54 = v202;
      sub_1A3A32170();
      v57 = *(v157 + 8);
      v58 = v80;
      v59 = &v190;
      goto LABEL_38;
    case 22:
      LOBYTE(v205) = 23;
      sub_1A3A05760();
      v86 = v161;
      v55 = v201;
      v54 = v202;
      sub_1A3A32170();
      v57 = *(v162 + 8);
      v58 = v86;
      v59 = &v195;
      goto LABEL_38;
    case 23:
      LOBYTE(v205) = 24;
      sub_1A3A0570C();
      v88 = v164;
      v55 = v201;
      v54 = v202;
      sub_1A3A32170();
      v57 = *(v165 + 8);
      v58 = v88;
      v59 = &v198;
      goto LABEL_38;
    case 24:
      LOBYTE(v205) = 25;
      sub_1A3A056B8();
      v70 = v167;
      v55 = v201;
      v54 = v202;
      sub_1A3A32170();
      v57 = *(v168 + 8);
      v58 = v70;
      v59 = &v201;
      goto LABEL_38;
    case 25:
      LOBYTE(v205) = 26;
      sub_1A3A05664();
      v69 = v170;
      v55 = v201;
      v54 = v202;
      sub_1A3A32170();
      v57 = *(v171 + 8);
      v58 = v69;
      v59 = &v204;
      goto LABEL_38;
    case 26:
      LOBYTE(v205) = 27;
      sub_1A3A05610();
      v91 = v173;
      v55 = v201;
      v54 = v202;
      sub_1A3A32170();
      v57 = *(v174 + 8);
      v58 = v91;
      v59 = &v205;
      goto LABEL_38;
    case 27:
      LOBYTE(v205) = 28;
      sub_1A3A055BC();
      v56 = v176;
      v55 = v201;
      v54 = v202;
      sub_1A3A32170();
      v57 = *(v177 + 8);
      v58 = v56;
      v59 = &v206;
      goto LABEL_38;
    case 28:
      LOBYTE(v205) = 29;
      sub_1A3A05568();
      v89 = v179;
      v55 = v201;
      v54 = v202;
      sub_1A3A32170();
      v57 = *(v180 + 8);
      v58 = v89;
      v59 = &v207;
LABEL_38:
      v57(v58, *(v59 - 32));
      goto LABEL_39;
    case 29:
      LOBYTE(v205) = 30;
      sub_1A3A05514();
      v90 = v182;
      v55 = v201;
      v54 = v202;
      sub_1A3A32170();
      (*(v183 + 8))(v90, v184);
      goto LABEL_39;
    case 30:
      LOBYTE(v205) = 31;
      sub_1A3A054C0();
      v60 = v185;
      v55 = v201;
      v54 = v202;
      sub_1A3A32170();
      v62 = v186;
      v61 = v187;
      goto LABEL_31;
    case 31:
      LOBYTE(v205) = 32;
      sub_1A3A0546C();
      v60 = v188;
      v55 = v201;
      v54 = v202;
      sub_1A3A32170();
      v62 = v189;
      v61 = v190;
      goto LABEL_31;
    case 32:
      LOBYTE(v205) = 33;
      sub_1A3A05418();
      v60 = v191;
      v55 = v201;
      v54 = v202;
      sub_1A3A32170();
      v62 = v192;
      v61 = v193;
      goto LABEL_31;
    case 33:
      LOBYTE(v205) = 34;
      sub_1A3A053C4();
      v60 = v194;
      v55 = v201;
      v54 = v202;
      sub_1A3A32170();
      v62 = v195;
      v61 = v196;
      goto LABEL_31;
    case 34:
      LOBYTE(v205) = 35;
      sub_1A3A05370();
      v60 = v197;
      v55 = v201;
      v54 = v202;
      sub_1A3A32170();
      v62 = v198;
      v61 = v199;
LABEL_31:
      (*(v62 + 8))(v60, v61);
LABEL_39:
      result = (*(v203 + 8))(v55, v54);
      break;
    default:
      LOBYTE(v205) = 21;
      sub_1A3A05808();
      v92 = v156;
      v94 = v201;
      v93 = v202;
      sub_1A3A32170();
      v205 = v53;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC8E8, &qword_1A3A6D270);
      sub_1A3A05F94(&qword_1EB101280, sub_1A3A0600C, MEMORY[0x1E69E6300]);
      v95 = v160;
      sub_1A3A32180();
      (*(v159 + 8))(v92, v95);
      result = (*(v203 + 8))(v94, v93);
      break;
  }

  return result;
}

unint64_t sub_1A3A00434(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x23)
  {
    return MEMORY[0x1A58F8150](qword_1A3A85018[a2]);
  }

  MEMORY[0x1A58F8150](21);
  v5 = *(a2 + 16);
  result = MEMORY[0x1A58F8150](v5);
  if (v5)
  {
    v6 = (a2 + 32);
    do
    {
      v7 = *v6++;
      sub_1A38A8F64(v7);
      sub_1A3A00434(a1, v7);
      result = sub_1A3890F2C(v7);
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t sub_1A3A004C0(uint64_t a1)
{
  v2 = sub_1A3A05EEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A3A004FC(uint64_t a1)
{
  v2 = sub_1A3A05EEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A3A00538(uint64_t a1)
{
  v2 = sub_1A3A05E98();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A3A00574(uint64_t a1)
{
  v2 = sub_1A3A05E98();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A3A005B0(uint64_t a1)
{
  v2 = sub_1A3A05E44();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A3A005EC(uint64_t a1)
{
  v2 = sub_1A3A05E44();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A3A00630@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A3A01B14(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A3A00664(uint64_t a1)
{
  v2 = sub_1A3A0531C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A3A006A0(uint64_t a1)
{
  v2 = sub_1A3A0531C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A3A006DC()
{
  sub_1A3A322C0();
  MEMORY[0x1A58F8150](0);
  return sub_1A3A32300();
}

uint64_t sub_1A3A00748(uint64_t a1)
{
  sub_1A3A322C0();
  MEMORY[0x1A58F8150](0);
  return sub_1A3A32300();
}

void sub_1A3A00794(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_1A3A321C0();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_1A3A00814(uint64_t a1)
{
  v2 = sub_1A3A05808();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A3A00850(uint64_t a1)
{
  v2 = sub_1A3A05808();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A3A0088C(uint64_t a1)
{
  v2 = sub_1A3A05DF0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A3A008C8(uint64_t a1)
{
  v2 = sub_1A3A05DF0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A3A00904(uint64_t a1)
{
  v2 = sub_1A3A05A00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A3A00940(uint64_t a1)
{
  v2 = sub_1A3A05A00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A3A0097C(uint64_t a1)
{
  v2 = sub_1A3A05760();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A3A009B8(uint64_t a1)
{
  v2 = sub_1A3A05760();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A3A009F4(uint64_t a1)
{
  v2 = sub_1A3A054C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A3A00A30(uint64_t a1)
{
  v2 = sub_1A3A054C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A3A00A6C(uint64_t a1)
{
  v2 = sub_1A3A05D9C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A3A00AA8(uint64_t a1)
{
  v2 = sub_1A3A05D9C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A3A00AE4(uint64_t a1)
{
  v2 = sub_1A3A05D48();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A3A00B20(uint64_t a1)
{
  v2 = sub_1A3A05D48();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A3A00B5C(uint64_t a1)
{
  v2 = sub_1A3A05CF4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A3A00B98(uint64_t a1)
{
  v2 = sub_1A3A05CF4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A3A00BD4(uint64_t a1)
{
  v2 = sub_1A3A05CA0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A3A00C10(uint64_t a1)
{
  v2 = sub_1A3A05CA0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A3A00C4C(uint64_t a1)
{
  v2 = sub_1A3A05C4C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A3A00C88(uint64_t a1)
{
  v2 = sub_1A3A05C4C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A3A00CC4(uint64_t a1)
{
  v2 = sub_1A3A05BF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A3A00D00(uint64_t a1)
{
  v2 = sub_1A3A05BF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A3A00D3C(uint64_t a1)
{
  v2 = sub_1A3A05BA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A3A00D78(uint64_t a1)
{
  v2 = sub_1A3A05BA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A3A00DB4(uint64_t a1)
{
  v2 = sub_1A3A05B50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A3A00DF0(uint64_t a1)
{
  v2 = sub_1A3A05B50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A3A00E2C(uint64_t a1)
{
  v2 = sub_1A3A05AFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A3A00E68(uint64_t a1)
{
  v2 = sub_1A3A05AFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A3A00EA4(uint64_t a1)
{
  v2 = sub_1A3A05AA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A3A00EE0(uint64_t a1)
{
  v2 = sub_1A3A05AA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A3A00F1C(uint64_t a1)
{
  v2 = sub_1A3A05A54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A3A00F58(uint64_t a1)
{
  v2 = sub_1A3A05A54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A3A00F94(uint64_t a1)
{
  v2 = sub_1A3A059AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A3A00FD0(uint64_t a1)
{
  v2 = sub_1A3A059AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A3A0100C(uint64_t a1)
{
  v2 = sub_1A3A05958();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A3A01048(uint64_t a1)
{
  v2 = sub_1A3A05958();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A3A01084(uint64_t a1)
{
  v2 = sub_1A3A05904();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A3A010C0(uint64_t a1)
{
  v2 = sub_1A3A05904();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A3A010FC(uint64_t a1)
{
  v2 = sub_1A3A058B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A3A01138(uint64_t a1)
{
  v2 = sub_1A3A058B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A3A01174(uint64_t a1)
{
  v2 = sub_1A3A057B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A3A011B0(uint64_t a1)
{
  v2 = sub_1A3A057B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A3A011EC(uint64_t a1)
{
  v2 = sub_1A3A0546C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A3A01228(uint64_t a1)
{
  v2 = sub_1A3A0546C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A3A01264(uint64_t a1)
{
  v2 = sub_1A3A056B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A3A012A0(uint64_t a1)
{
  v2 = sub_1A3A056B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A3A012DC(uint64_t a1)
{
  v2 = sub_1A3A0570C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A3A01318(uint64_t a1)
{
  v2 = sub_1A3A0570C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A3A01354(uint64_t a1)
{
  v2 = sub_1A3A053C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A3A01390(uint64_t a1)
{
  v2 = sub_1A3A053C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A3A013CC(uint64_t a1)
{
  v2 = sub_1A3A05418();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A3A01408(uint64_t a1)
{
  v2 = sub_1A3A05418();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A3A01444(uint64_t a1)
{
  v2 = sub_1A3A05664();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A3A01480(uint64_t a1)
{
  v2 = sub_1A3A05664();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A3A014BC(uint64_t a1)
{
  v2 = sub_1A3A05370();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A3A014F8(uint64_t a1)
{
  v2 = sub_1A3A05370();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A3A01534(uint64_t a1)
{
  v2 = sub_1A3A05610();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A3A01570(uint64_t a1)
{
  v2 = sub_1A3A05610();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A3A015AC(uint64_t a1)
{
  v2 = sub_1A3A055BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A3A015E8(uint64_t a1)
{
  v2 = sub_1A3A055BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A3A01624(uint64_t a1)
{
  v2 = sub_1A3A05568();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A3A01660(uint64_t a1)
{
  v2 = sub_1A3A05568();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A3A0169C(uint64_t a1)
{
  v2 = sub_1A3A05514();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A3A016D8(uint64_t a1)
{
  v2 = sub_1A3A05514();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A3A01714()
{
  v1 = *v0;
  sub_1A3A322C0();
  sub_1A3A00434(v3, v1);
  return sub_1A3A32300();
}

uint64_t sub_1A3A01764(uint64_t a1)
{
  v2 = *v1;
  sub_1A3A322C0();
  sub_1A3A00434(v4, v2);
  return sub_1A3A32300();
}

uint64_t sub_1A3A017A8@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1A3A0261C(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1A3A017F0()
{
  v1 = sub_1A39FDA64(*v0);
  MEMORY[0x1A58F7770](v1);

  sub_1A3A2EA50();
  MEMORY[0x1A58F7770](0x656C7469542ELL, 0xE600000000000000);

  return 0x2E656D6F726843;
}

unint64_t sub_1A3A0187C@<X0>(unint64_t *a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return sub_1A38A8F64(v2);
}

uint64_t sub_1A3A018A8(uint64_t a1, unint64_t a2)
{
  switch(a1)
  {
    case 0:
      if (a2)
      {
        goto LABEL_73;
      }

      result = 1;
      break;
    case 1:
      if (a2 != 1)
      {
        goto LABEL_73;
      }

      result = 1;
      break;
    case 2:
      if (a2 != 2)
      {
        goto LABEL_73;
      }

      result = 1;
      break;
    case 3:
      if (a2 != 3)
      {
        goto LABEL_73;
      }

      result = 1;
      break;
    case 4:
      if (a2 != 4)
      {
        goto LABEL_73;
      }

      result = 1;
      break;
    case 5:
      if (a2 != 5)
      {
        goto LABEL_73;
      }

      result = 1;
      break;
    case 6:
      if (a2 != 6)
      {
        goto LABEL_73;
      }

      result = 1;
      break;
    case 7:
      if (a2 != 7)
      {
        goto LABEL_73;
      }

      result = 1;
      break;
    case 8:
      if (a2 != 8)
      {
        goto LABEL_73;
      }

      result = 1;
      break;
    case 9:
      if (a2 != 9)
      {
        goto LABEL_73;
      }

      result = 1;
      break;
    case 10:
      if (a2 != 10)
      {
        goto LABEL_73;
      }

      result = 1;
      break;
    case 11:
      if (a2 != 11)
      {
        goto LABEL_73;
      }

      result = 1;
      break;
    case 12:
      if (a2 != 12)
      {
        goto LABEL_73;
      }

      result = 1;
      break;
    case 13:
      if (a2 != 13)
      {
        goto LABEL_73;
      }

      result = 1;
      break;
    case 14:
      if (a2 != 14)
      {
        goto LABEL_73;
      }

      result = 1;
      break;
    case 15:
      if (a2 != 15)
      {
        goto LABEL_73;
      }

      result = 1;
      break;
    case 16:
      if (a2 != 16)
      {
        goto LABEL_73;
      }

      result = 1;
      break;
    case 17:
      if (a2 != 17)
      {
        goto LABEL_73;
      }

      result = 1;
      break;
    case 18:
      if (a2 != 18)
      {
        goto LABEL_73;
      }

      result = 1;
      break;
    case 19:
      if (a2 != 19)
      {
        goto LABEL_73;
      }

      result = 1;
      break;
    case 20:
      if (a2 != 20)
      {
        goto LABEL_73;
      }

      result = 1;
      break;
    case 21:
      if (a2 != 21)
      {
        goto LABEL_73;
      }

      result = 1;
      break;
    case 22:
      if (a2 != 22)
      {
        goto LABEL_73;
      }

      result = 1;
      break;
    case 23:
      if (a2 != 23)
      {
        goto LABEL_73;
      }

      result = 1;
      break;
    case 24:
      if (a2 != 24)
      {
        goto LABEL_73;
      }

      result = 1;
      break;
    case 25:
      if (a2 != 25)
      {
        goto LABEL_73;
      }

      result = 1;
      break;
    case 26:
      if (a2 != 26)
      {
        goto LABEL_73;
      }

      result = 1;
      break;
    case 27:
      if (a2 != 27)
      {
        goto LABEL_73;
      }

      result = 1;
      break;
    case 28:
      if (a2 != 28)
      {
        goto LABEL_73;
      }

      result = 1;
      break;
    case 29:
      if (a2 != 29)
      {
        goto LABEL_73;
      }

      result = 1;
      break;
    case 30:
      if (a2 != 30)
      {
        goto LABEL_73;
      }

      result = 1;
      break;
    case 31:
      if (a2 != 31)
      {
        goto LABEL_73;
      }

      result = 1;
      break;
    case 32:
      if (a2 != 32)
      {
        goto LABEL_73;
      }

      result = 1;
      break;
    case 33:
      if (a2 != 33)
      {
        goto LABEL_73;
      }

      result = 1;
      break;
    case 34:
      if (a2 != 34)
      {
        goto LABEL_73;
      }

      result = 1;
      break;
    default:
      if (a2 >= 0x23)
      {
        result = sub_1A39FCD24(a1, a2);
      }

      else
      {
LABEL_73:
        result = 0;
      }

      break;
  }

  return result;
}

uint64_t sub_1A3A01B14(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F69746361 && a2 == 0xE600000000000000;
  if (v4 || (sub_1A3A321C0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7473756A6461 && a2 == 0xE600000000000000 || (sub_1A3A321C0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6572757472657061 && a2 == 0xE800000000000000 || (sub_1A3A321C0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6152746365707361 && a2 == 0xEB000000006F6974 || (sub_1A3A321C0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001A3AA8120 == a2 || (sub_1A3A321C0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x657275736F707865 && a2 == 0xE800000000000000 || (sub_1A3A321C0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7265746C6966 && a2 == 0xE600000000000000 || (sub_1A3A321C0() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6873616C66 && a2 == 0xE500000000000000 || (sub_1A3A321C0() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 1885957222 && a2 == 0xE400000000000000 || (sub_1A3A321C0() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x504950746E6F7266 && a2 == 0xE800000000000000 || (sub_1A3A321C0() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 7496808 && a2 == 0xE300000000000000 || (sub_1A3A321C0() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x616E416567616D69 && a2 == 0xED0000736973796CLL || (sub_1A3A321C0() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x6C65576567616D69 && a2 == 0xE90000000000006CLL || (sub_1A3A321C0() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x69736F50736E656CLL && a2 == 0xEC0000006E6F6974 || (sub_1A3A321C0() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x746F68506576696CLL && a2 == 0xE90000000000006FLL || (sub_1A3A321C0() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x6F7263616DLL && a2 == 0xE500000000000000 || (sub_1A3A321C0() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x6874706564 && a2 == 0xE500000000000000 || (sub_1A3A321C0() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x646F4D746867696ELL && a2 == 0xE900000000000065 || (sub_1A3A321C0() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x726F466F746F6870 && a2 == 0xEB0000000074616DLL || (sub_1A3A321C0() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0x7365526F746F6870 && a2 == 0xEF6E6F6974756C6FLL || (sub_1A3A321C0() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001A3AA8140 == a2 || (sub_1A3A321C0() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0x646E756F706D6F63 && a2 == 0xE800000000000000 || (sub_1A3A321C0() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0x7365526F7270 && a2 == 0xE600000000000000 || (sub_1A3A321C0() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001A3AA8160 == a2 || (sub_1A3A321C0() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0x694C646572616873 && a2 == 0xED00007972617262 || (sub_1A3A321C0() & 1) != 0)
  {

    return 24;
  }

  else if (a1 == 0x6369746E616D6573 && a2 == 0xED0000656C797453 || (sub_1A3A321C0() & 1) != 0)
  {

    return 25;
  }

  else if (a1 == 0x7974537472616D73 && a2 == 0xEA0000000000656CLL || (sub_1A3A321C0() & 1) != 0)
  {

    return 26;
  }

  else if (a1 == 0x72656D6974 && a2 == 0xE500000000000000 || (sub_1A3A321C0() & 1) != 0)
  {

    return 27;
  }

  else if (a1 == 0x6863726F74 && a2 == 0xE500000000000000 || (sub_1A3A321C0() & 1) != 0)
  {

    return 28;
  }

  else if (a1 == 0x6172466F65646976 && a2 == 0xEE0065746152656DLL || (sub_1A3A321C0() & 1) != 0)
  {

    return 29;
  }

  else if (a1 == 0x7365526F65646976 && a2 == 0xEF6E6F6974756C6FLL || (sub_1A3A321C0() & 1) != 0)
  {

    return 30;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001A3AA8180 == a2 || (sub_1A3A321C0() & 1) != 0)
  {

    return 31;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001A3AA81A0 == a2 || (sub_1A3A321C0() & 1) != 0)
  {

    return 32;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001A3AA81C0 == a2 || (sub_1A3A321C0() & 1) != 0)
  {

    return 33;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001A3AA81E0 == a2 || (sub_1A3A321C0() & 1) != 0)
  {

    return 34;
  }

  else if (a1 == 0x546C616974617073 && a2 == 0xED0000656C67676FLL)
  {

    return 35;
  }

  else
  {
    v6 = sub_1A3A321C0();

    if (v6)
    {
      return 35;
    }

    else
    {
      return 36;
    }
  }
}

uint64_t sub_1A3A0261C(void *a1)
{
  v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100EF0, &qword_1A3A83180);
  v174 = *(v209 - 8);
  MEMORY[0x1EEE9AC00](v209);
  v204 = v100 - v2;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100EF8, &qword_1A3A83188);
  v172 = *(v173 - 8);
  MEMORY[0x1EEE9AC00](v173);
  v208 = v100 - v3;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100F00, &qword_1A3A83190);
  v170 = *(v171 - 8);
  MEMORY[0x1EEE9AC00](v171);
  v203 = v100 - v4;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100F08, &qword_1A3A83198);
  v168 = *(v169 - 8);
  MEMORY[0x1EEE9AC00](v169);
  v202 = v100 - v5;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100F10, &qword_1A3A831A0);
  v166 = *(v167 - 8);
  MEMORY[0x1EEE9AC00](v167);
  v201 = v100 - v6;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100F18, &qword_1A3A831A8);
  v164 = *(v165 - 8);
  MEMORY[0x1EEE9AC00](v165);
  v200 = v100 - v7;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100F20, &qword_1A3A831B0);
  v162 = *(v163 - 8);
  MEMORY[0x1EEE9AC00](v163);
  v199 = v100 - v8;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100F28, &qword_1A3A831B8);
  v160 = *(v161 - 8);
  MEMORY[0x1EEE9AC00](v161);
  v198 = v100 - v9;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100F30, &qword_1A3A831C0);
  v158 = *(v159 - 8);
  MEMORY[0x1EEE9AC00](v159);
  v197 = v100 - v10;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100F38, &qword_1A3A831C8);
  v156 = *(v157 - 8);
  MEMORY[0x1EEE9AC00](v157);
  v196 = v100 - v11;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100F40, &qword_1A3A831D0);
  v154 = *(v155 - 8);
  MEMORY[0x1EEE9AC00](v155);
  v195 = v100 - v12;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100F48, &qword_1A3A831D8);
  v152 = *(v153 - 8);
  MEMORY[0x1EEE9AC00](v153);
  v194 = v100 - v13;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100F50, &qword_1A3A831E0);
  v150 = *(v151 - 8);
  MEMORY[0x1EEE9AC00](v151);
  v193 = v100 - v14;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100F58, &qword_1A3A831E8);
  v146 = *(v147 - 8);
  MEMORY[0x1EEE9AC00](v147);
  v191 = v100 - v15;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100F60, &qword_1A3A831F0);
  v148 = *(v149 - 8);
  MEMORY[0x1EEE9AC00](v149);
  v192 = v100 - v16;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100F68, &qword_1A3A831F8);
  v144 = *(v145 - 8);
  MEMORY[0x1EEE9AC00](v145);
  v190 = v100 - v17;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100F70, &qword_1A3A83200);
  v142 = *(v143 - 8);
  MEMORY[0x1EEE9AC00](v143);
  v189 = v100 - v18;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100F78, &qword_1A3A83208);
  v140 = *(v141 - 8);
  MEMORY[0x1EEE9AC00](v141);
  v188 = v100 - v19;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100F80, &qword_1A3A83210);
  v138 = *(v139 - 8);
  MEMORY[0x1EEE9AC00](v139);
  v187 = v100 - v20;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100F88, &qword_1A3A83218);
  v136 = *(v137 - 8);
  MEMORY[0x1EEE9AC00](v137);
  v186 = v100 - v21;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100F90, &qword_1A3A83220);
  v134 = *(v135 - 8);
  MEMORY[0x1EEE9AC00](v135);
  v185 = v100 - v22;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100F98, &qword_1A3A83228);
  v132 = *(v133 - 8);
  MEMORY[0x1EEE9AC00](v133);
  v184 = v100 - v23;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100FA0, &qword_1A3A83230);
  v130 = *(v131 - 8);
  MEMORY[0x1EEE9AC00](v131);
  v183 = v100 - v24;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100FA8, &qword_1A3A83238);
  v128 = *(v129 - 8);
  MEMORY[0x1EEE9AC00](v129);
  v182 = v100 - v25;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100FB0, &qword_1A3A83240);
  v126 = *(v127 - 8);
  MEMORY[0x1EEE9AC00](v127);
  v181 = v100 - v26;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100FB8, &qword_1A3A83248);
  v124 = *(v125 - 8);
  MEMORY[0x1EEE9AC00](v125);
  v180 = v100 - v27;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100FC0, &qword_1A3A83250);
  v122 = *(v123 - 8);
  MEMORY[0x1EEE9AC00](v123);
  v177 = v100 - v28;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100FC8, &qword_1A3A83258);
  v120 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121);
  v207 = v100 - v29;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100FD0, &qword_1A3A83260);
  v118 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119);
  v206 = v100 - v30;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100FD8, &qword_1A3A83268);
  v116 = *(v117 - 8);
  MEMORY[0x1EEE9AC00](v117);
  v179 = v100 - v31;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100FE0, &qword_1A3A83270);
  v114 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115);
  v178 = v100 - v32;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100FE8, &qword_1A3A83278);
  v112 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113);
  v205 = v100 - v33;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100FF0, &qword_1A3A83280);
  v110 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111);
  v176 = v100 - v34;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB100FF8, &qword_1A3A83288);
  v108 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v175 = v100 - v35;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB101000, &qword_1A3A83290);
  v106 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v37 = v100 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB101008, &qword_1A3A83298);
  v105 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v40 = v100 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB101010, &qword_1A3A832A0);
  v42 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v44 = v100 - v43;
  v45 = a1[3];
  v210 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v45);
  sub_1A3A0531C();
  v46 = v211;
  sub_1A3A32320();
  v211 = v46;
  if (!v46)
  {
    v102 = v40;
    v101 = v38;
    v103 = v37;
    v48 = v205;
    v47 = v206;
    v50 = v207;
    v49 = v208;
    v45 = v209;
    v104 = v42;
    v51 = sub_1A3A32160();
    if (*(v51 + 16) != 1 || (v52 = *(v51 + 32), v52 == 36))
    {
      v45 = sub_1A3A31F70();
      v54 = v41;
      v55 = swift_allocError();
      v57 = v56;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB101020, &unk_1A3A832A8);
      *v57 = &type metadata for ChromeElement;
      sub_1A3A32140();
      sub_1A3A31F60();
      (*(*(v45 - 8) + 104))(v57, *MEMORY[0x1E69E6AF8], v45);
      v211 = v55;
      swift_willThrow();
      (*(v104 + 8))(v44, v54);
LABEL_79:
      swift_unknownObjectRelease();
    }

    else
    {
      v100[1] = v51;
      switch(v52)
      {
        case 1:
          LOBYTE(v212) = 1;
          sub_1A3A05EEC();
          v45 = v103;
          v75 = v211;
          sub_1A3A32130();
          v211 = v75;
          if (v75)
          {
            goto LABEL_78;
          }

          (*(v106 + 8))(v45, v107);
          (*(v104 + 8))(v44, v41);
          swift_unknownObjectRelease();
          v45 = 1;
          break;
        case 2:
          LOBYTE(v212) = 2;
          sub_1A3A05E98();
          v45 = v175;
          v71 = v211;
          sub_1A3A32130();
          v211 = v71;
          if (v71)
          {
            goto LABEL_78;
          }

          (*(v108 + 8))(v45, v109);
          (*(v104 + 8))(v44, v41);
          swift_unknownObjectRelease();
          v45 = 2;
          break;
        case 3:
          LOBYTE(v212) = 3;
          sub_1A3A05E44();
          v45 = v176;
          v73 = v211;
          sub_1A3A32130();
          v211 = v73;
          if (v73)
          {
            goto LABEL_78;
          }

          (*(v110 + 8))(v45, v111);
          (*(v104 + 8))(v44, v41);
          swift_unknownObjectRelease();
          v45 = 3;
          break;
        case 4:
          LOBYTE(v212) = 4;
          sub_1A3A05DF0();
          v66 = v211;
          sub_1A3A32130();
          v211 = v66;
          if (v66)
          {
            goto LABEL_78;
          }

          (*(v112 + 8))(v48, v113);
          (*(v104 + 8))(v44, v41);
          swift_unknownObjectRelease();
          v45 = 4;
          break;
        case 5:
          LOBYTE(v212) = 5;
          sub_1A3A05D9C();
          v45 = v178;
          v79 = v211;
          sub_1A3A32130();
          v211 = v79;
          if (v79)
          {
            goto LABEL_78;
          }

          (*(v114 + 8))(v45, v115);
          (*(v104 + 8))(v44, v41);
          swift_unknownObjectRelease();
          v45 = 5;
          break;
        case 6:
          LOBYTE(v212) = 6;
          sub_1A3A05D48();
          v45 = v179;
          v87 = v211;
          sub_1A3A32130();
          v211 = v87;
          if (v87)
          {
            goto LABEL_78;
          }

          (*(v116 + 8))(v45, v117);
          (*(v104 + 8))(v44, v41);
          swift_unknownObjectRelease();
          v45 = 6;
          break;
        case 7:
          LOBYTE(v212) = 7;
          sub_1A3A05CF4();
          v45 = v47;
          v74 = v211;
          sub_1A3A32130();
          v211 = v74;
          if (v74)
          {
            goto LABEL_78;
          }

          (*(v118 + 8))(v47, v119);
          (*(v104 + 8))(v44, v41);
          swift_unknownObjectRelease();
          v45 = 7;
          break;
        case 8:
          LOBYTE(v212) = 8;
          sub_1A3A05CA0();
          v45 = v50;
          v90 = v211;
          sub_1A3A32130();
          v211 = v90;
          if (v90)
          {
            goto LABEL_78;
          }

          (*(v120 + 8))(v50, v121);
          (*(v104 + 8))(v44, v41);
          swift_unknownObjectRelease();
          v45 = 8;
          break;
        case 9:
          LOBYTE(v212) = 9;
          sub_1A3A05C4C();
          v45 = v177;
          v68 = v211;
          sub_1A3A32130();
          v211 = v68;
          if (v68)
          {
            goto LABEL_78;
          }

          (*(v122 + 8))(v45, v123);
          (*(v104 + 8))(v44, v41);
          swift_unknownObjectRelease();
          v45 = 9;
          break;
        case 10:
          LOBYTE(v212) = 10;
          sub_1A3A05BF8();
          v45 = v180;
          v89 = v211;
          sub_1A3A32130();
          v211 = v89;
          if (v89)
          {
            goto LABEL_78;
          }

          (*(v124 + 8))(v45, v125);
          (*(v104 + 8))(v44, v41);
          swift_unknownObjectRelease();
          v45 = 10;
          break;
        case 11:
          LOBYTE(v212) = 11;
          sub_1A3A05BA4();
          v45 = v181;
          v65 = v211;
          sub_1A3A32130();
          v211 = v65;
          if (v65)
          {
            goto LABEL_78;
          }

          (*(v126 + 8))(v45, v127);
          (*(v104 + 8))(v44, v41);
          swift_unknownObjectRelease();
          v45 = 11;
          break;
        case 12:
          LOBYTE(v212) = 12;
          sub_1A3A05B50();
          v45 = v182;
          v67 = v211;
          sub_1A3A32130();
          v211 = v67;
          if (v67)
          {
            goto LABEL_78;
          }

          (*(v128 + 8))(v45, v129);
          (*(v104 + 8))(v44, v41);
          swift_unknownObjectRelease();
          v45 = 12;
          break;
        case 13:
          LOBYTE(v212) = 13;
          sub_1A3A05AFC();
          v45 = v183;
          v86 = v211;
          sub_1A3A32130();
          v211 = v86;
          if (v86)
          {
            goto LABEL_78;
          }

          (*(v130 + 8))(v45, v131);
          (*(v104 + 8))(v44, v41);
          swift_unknownObjectRelease();
          v45 = 13;
          break;
        case 14:
          LOBYTE(v212) = 14;
          sub_1A3A05AA8();
          v45 = v184;
          v63 = v211;
          sub_1A3A32130();
          v211 = v63;
          if (v63)
          {
            goto LABEL_78;
          }

          (*(v132 + 8))(v45, v133);
          (*(v104 + 8))(v44, v41);
          swift_unknownObjectRelease();
          v45 = 14;
          break;
        case 15:
          LOBYTE(v212) = 15;
          sub_1A3A05A54();
          v45 = v185;
          v72 = v211;
          sub_1A3A32130();
          v211 = v72;
          if (v72)
          {
            goto LABEL_78;
          }

          (*(v134 + 8))(v45, v135);
          (*(v104 + 8))(v44, v41);
          swift_unknownObjectRelease();
          v45 = 15;
          break;
        case 16:
          LOBYTE(v212) = 16;
          sub_1A3A05A00();
          v45 = v186;
          v62 = v211;
          sub_1A3A32130();
          v211 = v62;
          if (v62)
          {
            goto LABEL_78;
          }

          (*(v136 + 8))(v45, v137);
          (*(v104 + 8))(v44, v41);
          swift_unknownObjectRelease();
          v45 = 16;
          break;
        case 17:
          LOBYTE(v212) = 17;
          sub_1A3A059AC();
          v45 = v187;
          v77 = v211;
          sub_1A3A32130();
          v211 = v77;
          if (v77)
          {
            goto LABEL_78;
          }

          (*(v138 + 8))(v45, v139);
          (*(v104 + 8))(v44, v41);
          swift_unknownObjectRelease();
          v45 = 17;
          break;
        case 18:
          LOBYTE(v212) = 18;
          sub_1A3A05958();
          v45 = v188;
          v88 = v211;
          sub_1A3A32130();
          v211 = v88;
          if (v88)
          {
            goto LABEL_78;
          }

          (*(v140 + 8))(v45, v141);
          (*(v104 + 8))(v44, v41);
          swift_unknownObjectRelease();
          v45 = 18;
          break;
        case 19:
          LOBYTE(v212) = 19;
          sub_1A3A05904();
          v45 = v189;
          v94 = v211;
          sub_1A3A32130();
          v211 = v94;
          if (v94)
          {
            goto LABEL_78;
          }

          (*(v142 + 8))(v45, v143);
          (*(v104 + 8))(v44, v41);
          swift_unknownObjectRelease();
          v45 = 19;
          break;
        case 20:
          LOBYTE(v212) = 20;
          sub_1A3A058B0();
          v45 = v190;
          v78 = v211;
          sub_1A3A32130();
          v211 = v78;
          if (v78)
          {
            goto LABEL_78;
          }

          (*(v144 + 8))(v45, v145);
          (*(v104 + 8))(v44, v41);
          swift_unknownObjectRelease();
          v45 = 20;
          break;
        case 21:
          LOBYTE(v212) = 21;
          sub_1A3A05808();
          v80 = v192;
          v81 = v211;
          sub_1A3A32130();
          v211 = v81;
          if (v81)
          {
            goto LABEL_78;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC8E8, &qword_1A3A6D270);
          sub_1A3A05F94(&qword_1EB1010A0, sub_1A3A0585C, MEMORY[0x1E69E6330]);
          v82 = v149;
          v83 = v211;
          sub_1A3A32150();
          v84 = v104;
          v211 = v83;
          if (v83)
          {
            (*(v148 + 8))(v80, v82);
            v85 = *(v84 + 8);
            v45 = v84 + 8;
            v85(v44, v41);
            goto LABEL_79;
          }

          (*(v148 + 8))(v80, v82);
          (*(v84 + 8))(v44, v41);
          swift_unknownObjectRelease();
          v45 = v212;
          break;
        case 22:
          LOBYTE(v212) = 22;
          sub_1A3A057B4();
          v45 = v191;
          v93 = v211;
          sub_1A3A32130();
          v211 = v93;
          if (v93)
          {
            goto LABEL_78;
          }

          (*(v146 + 8))(v45, v147);
          (*(v104 + 8))(v44, v41);
          swift_unknownObjectRelease();
          v45 = 21;
          break;
        case 23:
          LOBYTE(v212) = 23;
          sub_1A3A05760();
          v45 = v193;
          v95 = v211;
          sub_1A3A32130();
          v211 = v95;
          if (v95)
          {
            goto LABEL_78;
          }

          (*(v150 + 8))(v45, v151);
          (*(v104 + 8))(v44, v41);
          swift_unknownObjectRelease();
          v45 = 22;
          break;
        case 24:
          LOBYTE(v212) = 24;
          sub_1A3A0570C();
          v45 = v194;
          v70 = v211;
          sub_1A3A32130();
          v211 = v70;
          if (v70)
          {
            goto LABEL_78;
          }

          (*(v152 + 8))(v45, v153);
          (*(v104 + 8))(v44, v41);
          swift_unknownObjectRelease();
          v45 = 23;
          break;
        case 25:
          LOBYTE(v212) = 25;
          sub_1A3A056B8();
          v45 = v195;
          v69 = v211;
          sub_1A3A32130();
          v211 = v69;
          if (v69)
          {
            goto LABEL_78;
          }

          (*(v154 + 8))(v45, v155);
          (*(v104 + 8))(v44, v41);
          swift_unknownObjectRelease();
          v45 = 24;
          break;
        case 26:
          LOBYTE(v212) = 26;
          sub_1A3A05664();
          v45 = v196;
          v98 = v211;
          sub_1A3A32130();
          v211 = v98;
          if (v98)
          {
            goto LABEL_78;
          }

          (*(v156 + 8))(v45, v157);
          (*(v104 + 8))(v44, v41);
          swift_unknownObjectRelease();
          v45 = 25;
          break;
        case 27:
          LOBYTE(v212) = 27;
          sub_1A3A05610();
          v45 = v197;
          v60 = v211;
          sub_1A3A32130();
          v211 = v60;
          if (v60)
          {
            goto LABEL_78;
          }

          (*(v158 + 8))(v45, v159);
          (*(v104 + 8))(v44, v41);
          swift_unknownObjectRelease();
          v45 = 26;
          break;
        case 28:
          LOBYTE(v212) = 28;
          sub_1A3A055BC();
          v45 = v198;
          v96 = v211;
          sub_1A3A32130();
          v211 = v96;
          if (v96)
          {
            goto LABEL_78;
          }

          (*(v160 + 8))(v45, v161);
          (*(v104 + 8))(v44, v41);
          swift_unknownObjectRelease();
          v45 = 27;
          break;
        case 29:
          LOBYTE(v212) = 29;
          sub_1A3A05568();
          v45 = v199;
          v97 = v211;
          sub_1A3A32130();
          v211 = v97;
          if (v97)
          {
            goto LABEL_78;
          }

          (*(v162 + 8))(v45, v163);
          (*(v104 + 8))(v44, v41);
          swift_unknownObjectRelease();
          v45 = 28;
          break;
        case 30:
          LOBYTE(v212) = 30;
          sub_1A3A05514();
          v45 = v200;
          v91 = v211;
          sub_1A3A32130();
          v211 = v91;
          if (v91)
          {
            goto LABEL_78;
          }

          (*(v164 + 8))(v45, v165);
          (*(v104 + 8))(v44, v41);
          swift_unknownObjectRelease();
          v45 = 29;
          break;
        case 31:
          LOBYTE(v212) = 31;
          sub_1A3A054C0();
          v45 = v201;
          v76 = v211;
          sub_1A3A32130();
          v211 = v76;
          if (v76)
          {
            goto LABEL_78;
          }

          (*(v166 + 8))(v45, v167);
          (*(v104 + 8))(v44, v41);
          swift_unknownObjectRelease();
          v45 = 30;
          break;
        case 32:
          LOBYTE(v212) = 32;
          sub_1A3A0546C();
          v45 = v202;
          v92 = v211;
          sub_1A3A32130();
          v211 = v92;
          if (v92)
          {
            goto LABEL_78;
          }

          (*(v168 + 8))(v45, v169);
          (*(v104 + 8))(v44, v41);
          swift_unknownObjectRelease();
          v45 = 31;
          break;
        case 33:
          LOBYTE(v212) = 33;
          sub_1A3A05418();
          v45 = v203;
          v64 = v211;
          sub_1A3A32130();
          v211 = v64;
          if (v64)
          {
            goto LABEL_78;
          }

          (*(v170 + 8))(v45, v171);
          (*(v104 + 8))(v44, v41);
          swift_unknownObjectRelease();
          v45 = 32;
          break;
        case 34:
          LOBYTE(v212) = 34;
          sub_1A3A053C4();
          v61 = v211;
          sub_1A3A32130();
          v211 = v61;
          if (v61)
          {
            goto LABEL_78;
          }

          (*(v172 + 8))(v49, v173);
          (*(v104 + 8))(v44, v41);
          swift_unknownObjectRelease();
          v45 = 33;
          break;
        case 35:
          v58 = v45;
          LOBYTE(v212) = 35;
          sub_1A3A05370();
          v45 = v204;
          v59 = v211;
          sub_1A3A32130();
          v211 = v59;
          if (v59)
          {
            goto LABEL_78;
          }

          (*(v174 + 8))(v45, v58);
          (*(v104 + 8))(v44, v41);
          swift_unknownObjectRelease();
          v45 = 34;
          break;
        default:
          LOBYTE(v212) = 0;
          sub_1A3A05F40();
          v45 = v102;
          v53 = v211;
          sub_1A3A32130();
          v211 = v53;
          if (v53)
          {
LABEL_78:
            (*(v104 + 8))(v44, v41);
            goto LABEL_79;
          }

          (*(v105 + 8))(v45, v101);
          (*(v104 + 8))(v44, v41);
          swift_unknownObjectRelease();
          v45 = 0;
          break;
      }
    }
  }

  __swift_destroy_boxed_opaque_existential_0(v210);
  return v45;
}

unint64_t sub_1A3A0531C()
{
  result = qword_1EB101018;
  if (!qword_1EB101018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101018);
  }

  return result;
}

unint64_t sub_1A3A05370()
{
  result = qword_1EB101028;
  if (!qword_1EB101028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101028);
  }

  return result;
}

unint64_t sub_1A3A053C4()
{
  result = qword_1EB101030;
  if (!qword_1EB101030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101030);
  }

  return result;
}

unint64_t sub_1A3A05418()
{
  result = qword_1EB101038;
  if (!qword_1EB101038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101038);
  }

  return result;
}

unint64_t sub_1A3A0546C()
{
  result = qword_1EB101040;
  if (!qword_1EB101040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101040);
  }

  return result;
}

unint64_t sub_1A3A054C0()
{
  result = qword_1EB101048;
  if (!qword_1EB101048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101048);
  }

  return result;
}

unint64_t sub_1A3A05514()
{
  result = qword_1EB101050;
  if (!qword_1EB101050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101050);
  }

  return result;
}

unint64_t sub_1A3A05568()
{
  result = qword_1EB101058;
  if (!qword_1EB101058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101058);
  }

  return result;
}

unint64_t sub_1A3A055BC()
{
  result = qword_1EB101060;
  if (!qword_1EB101060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101060);
  }

  return result;
}

unint64_t sub_1A3A05610()
{
  result = qword_1EB101068;
  if (!qword_1EB101068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101068);
  }

  return result;
}

unint64_t sub_1A3A05664()
{
  result = qword_1EB101070;
  if (!qword_1EB101070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101070);
  }

  return result;
}

unint64_t sub_1A3A056B8()
{
  result = qword_1EB101078;
  if (!qword_1EB101078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101078);
  }

  return result;
}

unint64_t sub_1A3A0570C()
{
  result = qword_1EB101080;
  if (!qword_1EB101080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101080);
  }

  return result;
}

unint64_t sub_1A3A05760()
{
  result = qword_1EB101088;
  if (!qword_1EB101088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101088);
  }

  return result;
}

unint64_t sub_1A3A057B4()
{
  result = qword_1EB101090;
  if (!qword_1EB101090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101090);
  }

  return result;
}

unint64_t sub_1A3A05808()
{
  result = qword_1EB101098;
  if (!qword_1EB101098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101098);
  }

  return result;
}

unint64_t sub_1A3A0585C()
{
  result = qword_1EB1010A8;
  if (!qword_1EB1010A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1010A8);
  }

  return result;
}

unint64_t sub_1A3A058B0()
{
  result = qword_1EB1010B0;
  if (!qword_1EB1010B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1010B0);
  }

  return result;
}

unint64_t sub_1A3A05904()
{
  result = qword_1EB1010B8;
  if (!qword_1EB1010B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1010B8);
  }

  return result;
}

unint64_t sub_1A3A05958()
{
  result = qword_1EB1010C0;
  if (!qword_1EB1010C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1010C0);
  }

  return result;
}

unint64_t sub_1A3A059AC()
{
  result = qword_1EB1010C8;
  if (!qword_1EB1010C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1010C8);
  }

  return result;
}

unint64_t sub_1A3A05A00()
{
  result = qword_1EB1010D0;
  if (!qword_1EB1010D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1010D0);
  }

  return result;
}

unint64_t sub_1A3A05A54()
{
  result = qword_1EB1010D8;
  if (!qword_1EB1010D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1010D8);
  }

  return result;
}

unint64_t sub_1A3A05AA8()
{
  result = qword_1EB1010E0;
  if (!qword_1EB1010E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1010E0);
  }

  return result;
}

unint64_t sub_1A3A05AFC()
{
  result = qword_1EB1010E8;
  if (!qword_1EB1010E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1010E8);
  }

  return result;
}

unint64_t sub_1A3A05B50()
{
  result = qword_1EB1010F0;
  if (!qword_1EB1010F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1010F0);
  }

  return result;
}

unint64_t sub_1A3A05BA4()
{
  result = qword_1EB1010F8;
  if (!qword_1EB1010F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1010F8);
  }

  return result;
}

unint64_t sub_1A3A05BF8()
{
  result = qword_1EB101100;
  if (!qword_1EB101100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101100);
  }

  return result;
}

unint64_t sub_1A3A05C4C()
{
  result = qword_1EB101108;
  if (!qword_1EB101108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101108);
  }

  return result;
}

unint64_t sub_1A3A05CA0()
{
  result = qword_1EB101110;
  if (!qword_1EB101110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101110);
  }

  return result;
}

unint64_t sub_1A3A05CF4()
{
  result = qword_1EB101118;
  if (!qword_1EB101118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101118);
  }

  return result;
}

unint64_t sub_1A3A05D48()
{
  result = qword_1EB101120;
  if (!qword_1EB101120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101120);
  }

  return result;
}

unint64_t sub_1A3A05D9C()
{
  result = qword_1EB101128;
  if (!qword_1EB101128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101128);
  }

  return result;
}

unint64_t sub_1A3A05DF0()
{
  result = qword_1EB101130;
  if (!qword_1EB101130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101130);
  }

  return result;
}

unint64_t sub_1A3A05E44()
{
  result = qword_1EB101138;
  if (!qword_1EB101138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101138);
  }

  return result;
}

unint64_t sub_1A3A05E98()
{
  result = qword_1EB101140;
  if (!qword_1EB101140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101140);
  }

  return result;
}

unint64_t sub_1A3A05EEC()
{
  result = qword_1EB101148;
  if (!qword_1EB101148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101148);
  }

  return result;
}

unint64_t sub_1A3A05F40()
{
  result = qword_1EB101150;
  if (!qword_1EB101150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101150);
  }

  return result;
}

uint64_t sub_1A3A05F94(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FC8E8, &qword_1A3A6D270);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A3A0600C()
{
  result = qword_1EB101288;
  if (!qword_1EB101288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101288);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ChromeElement.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xDD)
  {
    goto LABEL_17;
  }

  if (a2 + 35 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 35) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 35;
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

      return (*a1 | (v4 << 8)) - 35;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 35;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x24;
  v8 = v6 - 36;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ChromeElement.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 35 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 35) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xDD)
  {
    v4 = 0;
  }

  if (a2 > 0xDC)
  {
    v5 = ((a2 - 221) >> 8) + 1;
    *result = a2 + 35;
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
    *result = a2 + 35;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1A3A063F4()
{
  result = qword_1EB101290;
  if (!qword_1EB101290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101290);
  }

  return result;
}

unint64_t sub_1A3A0644C()
{
  result = qword_1EB101298;
  if (!qword_1EB101298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101298);
  }

  return result;
}

unint64_t sub_1A3A064A4()
{
  result = qword_1EB1012A0;
  if (!qword_1EB1012A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1012A0);
  }

  return result;
}

unint64_t sub_1A3A064FC()
{
  result = qword_1EB1012A8;
  if (!qword_1EB1012A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1012A8);
  }

  return result;
}

unint64_t sub_1A3A06554()
{
  result = qword_1EB1012B0;
  if (!qword_1EB1012B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1012B0);
  }

  return result;
}

unint64_t sub_1A3A065AC()
{
  result = qword_1EB1012B8;
  if (!qword_1EB1012B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1012B8);
  }

  return result;
}

unint64_t sub_1A3A06604()
{
  result = qword_1EB1012C0;
  if (!qword_1EB1012C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1012C0);
  }

  return result;
}

unint64_t sub_1A3A0665C()
{
  result = qword_1EB1012C8;
  if (!qword_1EB1012C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1012C8);
  }

  return result;
}

unint64_t sub_1A3A066B4()
{
  result = qword_1EB1012D0;
  if (!qword_1EB1012D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1012D0);
  }

  return result;
}

unint64_t sub_1A3A0670C()
{
  result = qword_1EB1012D8;
  if (!qword_1EB1012D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1012D8);
  }

  return result;
}

unint64_t sub_1A3A06764()
{
  result = qword_1EB1012E0;
  if (!qword_1EB1012E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1012E0);
  }

  return result;
}

unint64_t sub_1A3A067BC()
{
  result = qword_1EB1012E8;
  if (!qword_1EB1012E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1012E8);
  }

  return result;
}

unint64_t sub_1A3A06814()
{
  result = qword_1EB1012F0;
  if (!qword_1EB1012F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1012F0);
  }

  return result;
}

unint64_t sub_1A3A0686C()
{
  result = qword_1EB1012F8;
  if (!qword_1EB1012F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1012F8);
  }

  return result;
}

unint64_t sub_1A3A068C4()
{
  result = qword_1EB101300;
  if (!qword_1EB101300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101300);
  }

  return result;
}

unint64_t sub_1A3A0691C()
{
  result = qword_1EB101308;
  if (!qword_1EB101308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101308);
  }

  return result;
}

unint64_t sub_1A3A06974()
{
  result = qword_1EB101310;
  if (!qword_1EB101310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101310);
  }

  return result;
}

unint64_t sub_1A3A069CC()
{
  result = qword_1EB101318;
  if (!qword_1EB101318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101318);
  }

  return result;
}

unint64_t sub_1A3A06A24()
{
  result = qword_1EB101320;
  if (!qword_1EB101320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101320);
  }

  return result;
}

unint64_t sub_1A3A06A7C()
{
  result = qword_1EB101328;
  if (!qword_1EB101328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101328);
  }

  return result;
}

unint64_t sub_1A3A06AD4()
{
  result = qword_1EB101330;
  if (!qword_1EB101330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101330);
  }

  return result;
}

unint64_t sub_1A3A06B2C()
{
  result = qword_1EB101338;
  if (!qword_1EB101338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101338);
  }

  return result;
}

unint64_t sub_1A3A06B84()
{
  result = qword_1EB101340;
  if (!qword_1EB101340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101340);
  }

  return result;
}

unint64_t sub_1A3A06BDC()
{
  result = qword_1EB101348;
  if (!qword_1EB101348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101348);
  }

  return result;
}

unint64_t sub_1A3A06C34()
{
  result = qword_1EB101350;
  if (!qword_1EB101350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101350);
  }

  return result;
}

unint64_t sub_1A3A06C8C()
{
  result = qword_1EB101358;
  if (!qword_1EB101358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101358);
  }

  return result;
}

unint64_t sub_1A3A06CE4()
{
  result = qword_1EB101360;
  if (!qword_1EB101360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101360);
  }

  return result;
}

unint64_t sub_1A3A06D3C()
{
  result = qword_1EB101368;
  if (!qword_1EB101368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101368);
  }

  return result;
}

unint64_t sub_1A3A06D94()
{
  result = qword_1EB101370;
  if (!qword_1EB101370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101370);
  }

  return result;
}

unint64_t sub_1A3A06DEC()
{
  result = qword_1EB101378;
  if (!qword_1EB101378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101378);
  }

  return result;
}

unint64_t sub_1A3A06E44()
{
  result = qword_1EB101380;
  if (!qword_1EB101380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101380);
  }

  return result;
}

unint64_t sub_1A3A06E9C()
{
  result = qword_1EB101388;
  if (!qword_1EB101388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101388);
  }

  return result;
}

unint64_t sub_1A3A06EF4()
{
  result = qword_1EB101390;
  if (!qword_1EB101390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101390);
  }

  return result;
}

unint64_t sub_1A3A06F4C()
{
  result = qword_1EB101398;
  if (!qword_1EB101398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101398);
  }

  return result;
}

unint64_t sub_1A3A06FA4()
{
  result = qword_1EB1013A0;
  if (!qword_1EB1013A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1013A0);
  }

  return result;
}

unint64_t sub_1A3A06FFC()
{
  result = qword_1EB1013A8;
  if (!qword_1EB1013A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1013A8);
  }

  return result;
}

unint64_t sub_1A3A07054()
{
  result = qword_1EB1013B0;
  if (!qword_1EB1013B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1013B0);
  }

  return result;
}

unint64_t sub_1A3A070AC()
{
  result = qword_1EB1013B8;
  if (!qword_1EB1013B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1013B8);
  }

  return result;
}

unint64_t sub_1A3A07104()
{
  result = qword_1EB1013C0;
  if (!qword_1EB1013C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1013C0);
  }

  return result;
}

unint64_t sub_1A3A0715C()
{
  result = qword_1EB1013C8;
  if (!qword_1EB1013C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1013C8);
  }

  return result;
}

unint64_t sub_1A3A071B4()
{
  result = qword_1EB1013D0;
  if (!qword_1EB1013D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1013D0);
  }

  return result;
}

unint64_t sub_1A3A0720C()
{
  result = qword_1EB1013D8;
  if (!qword_1EB1013D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1013D8);
  }

  return result;
}

unint64_t sub_1A3A07264()
{
  result = qword_1EB1013E0;
  if (!qword_1EB1013E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1013E0);
  }

  return result;
}

unint64_t sub_1A3A072BC()
{
  result = qword_1EB1013E8;
  if (!qword_1EB1013E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1013E8);
  }

  return result;
}

unint64_t sub_1A3A07314()
{
  result = qword_1EB1013F0;
  if (!qword_1EB1013F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1013F0);
  }

  return result;
}

unint64_t sub_1A3A0736C()
{
  result = qword_1EB1013F8;
  if (!qword_1EB1013F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1013F8);
  }

  return result;
}

unint64_t sub_1A3A073C4()
{
  result = qword_1EB101400;
  if (!qword_1EB101400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101400);
  }

  return result;
}

unint64_t sub_1A3A0741C()
{
  result = qword_1EB101408;
  if (!qword_1EB101408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101408);
  }

  return result;
}

unint64_t sub_1A3A07474()
{
  result = qword_1EB101410;
  if (!qword_1EB101410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101410);
  }

  return result;
}

unint64_t sub_1A3A074CC()
{
  result = qword_1EB101418;
  if (!qword_1EB101418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101418);
  }

  return result;
}

unint64_t sub_1A3A07524()
{
  result = qword_1EB101420;
  if (!qword_1EB101420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101420);
  }

  return result;
}

unint64_t sub_1A3A0757C()
{
  result = qword_1EB101428;
  if (!qword_1EB101428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101428);
  }

  return result;
}

unint64_t sub_1A3A075D4()
{
  result = qword_1EB101430;
  if (!qword_1EB101430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101430);
  }

  return result;
}

unint64_t sub_1A3A0762C()
{
  result = qword_1EB101438;
  if (!qword_1EB101438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101438);
  }

  return result;
}

unint64_t sub_1A3A07684()
{
  result = qword_1EB101440;
  if (!qword_1EB101440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101440);
  }

  return result;
}

unint64_t sub_1A3A076DC()
{
  result = qword_1EB101448;
  if (!qword_1EB101448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101448);
  }

  return result;
}

unint64_t sub_1A3A07734()
{
  result = qword_1EB101450;
  if (!qword_1EB101450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101450);
  }

  return result;
}

unint64_t sub_1A3A0778C()
{
  result = qword_1EB101458;
  if (!qword_1EB101458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101458);
  }

  return result;
}

unint64_t sub_1A3A077E4()
{
  result = qword_1EB101460;
  if (!qword_1EB101460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101460);
  }

  return result;
}

unint64_t sub_1A3A0783C()
{
  result = qword_1EB101468;
  if (!qword_1EB101468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101468);
  }

  return result;
}

unint64_t sub_1A3A07894()
{
  result = qword_1EB101470;
  if (!qword_1EB101470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101470);
  }

  return result;
}

unint64_t sub_1A3A078EC()
{
  result = qword_1EB101478;
  if (!qword_1EB101478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101478);
  }

  return result;
}

unint64_t sub_1A3A07944()
{
  result = qword_1EB101480;
  if (!qword_1EB101480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101480);
  }

  return result;
}

unint64_t sub_1A3A0799C()
{
  result = qword_1EB101488;
  if (!qword_1EB101488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101488);
  }

  return result;
}

unint64_t sub_1A3A079F4()
{
  result = qword_1EB101490;
  if (!qword_1EB101490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101490);
  }

  return result;
}

unint64_t sub_1A3A07A4C()
{
  result = qword_1EB101498;
  if (!qword_1EB101498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101498);
  }

  return result;
}

unint64_t sub_1A3A07AA4()
{
  result = qword_1EB1014A0;
  if (!qword_1EB1014A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1014A0);
  }

  return result;
}

unint64_t sub_1A3A07AFC()
{
  result = qword_1EB1014A8;
  if (!qword_1EB1014A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1014A8);
  }

  return result;
}

unint64_t sub_1A3A07B54()
{
  result = qword_1EB1014B0;
  if (!qword_1EB1014B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1014B0);
  }

  return result;
}

unint64_t sub_1A3A07BAC()
{
  result = qword_1EB1014B8;
  if (!qword_1EB1014B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1014B8);
  }

  return result;
}

unint64_t sub_1A3A07C04()
{
  result = qword_1EB1014C0;
  if (!qword_1EB1014C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1014C0);
  }

  return result;
}

unint64_t sub_1A3A07C5C()
{
  result = qword_1EB1014C8;
  if (!qword_1EB1014C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1014C8);
  }

  return result;
}

unint64_t sub_1A3A07CB4()
{
  result = qword_1EB1014D0;
  if (!qword_1EB1014D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1014D0);
  }

  return result;
}

unint64_t sub_1A3A07D0C()
{
  result = qword_1EB1014D8;
  if (!qword_1EB1014D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1014D8);
  }

  return result;
}

unint64_t sub_1A3A07D64()
{
  result = qword_1EB1014E0;
  if (!qword_1EB1014E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1014E0);
  }

  return result;
}

unint64_t sub_1A3A07DBC()
{
  result = qword_1EB1014E8;
  if (!qword_1EB1014E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1014E8);
  }

  return result;
}

uint64_t sub_1A3A07E10(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDA48, &qword_1A3A78090);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3A07E80(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FDA48, &qword_1A3A78090);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1A3A07F1C()
{
  result = qword_1EB1014F0;
  if (!qword_1EB1014F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB1014F8, qword_1A3A85188);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1014F0);
  }

  return result;
}

unint64_t sub_1A3A07F84()
{
  result = qword_1EB101500;
  if (!qword_1EB101500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB101500);
  }

  return result;
}

uint64_t sub_1A3A07FD8(unint64_t a1)
{
  if (a1 < 3)
  {
    return (2 - a1);
  }

  sub_1A3A31F20();
  MEMORY[0x1A58F7770](0xD000000000000015, 0x80000001A3AA8220);
  type metadata accessor for CAMTorchMode(0);
  sub_1A3A32060();
  result = sub_1A3A32070("Fatal error", 11, 2, 0, 0xE000000000000000, "CameraUI/ChromeTorchMode.swift", 30, 2, 43, 0);
  __break(1u);
  return result;
}

uint64_t sub_1A3A080A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = **a1;
  v5 = *(*a1 + 8);
  v6 = *(*a1 + 16);
  v7 = *(*a1 + 24);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1016B0, &qword_1A3A856B8);
  sub_1A388F6D8(*(a1 + 8), a2 + v8[12], &qword_1EB1015A0, &qword_1A3A85550);
  sub_1A388F6D8(*(a1 + 16), a2 + v8[16], &qword_1EB101598, &qword_1A3A85548);
  sub_1A388F6D8(*(a1 + 24), a2 + v8[20], &qword_1EB101590, &qword_1A3A85540);
  sub_1A388F6D8(*(a1 + 32), a2 + v8[24], &qword_1EB101588, &qword_1A3A85538);
  sub_1A388F6D8(*(a1 + 40), a2 + v8[28], &qword_1EB101588, &qword_1A3A85538);
  sub_1A388F6D8(*(a1 + 48), a2 + v8[32], &qword_1EB101580, &qword_1A3A85530);
  sub_1A388F6D8(*(a1 + 56), a2 + v8[36], &qword_1EB101578, &qword_1A3A85528);
  sub_1A388F6D8(*(a1 + 64), a2 + v8[40], &qword_1EB101568, &qword_1A3A85518);
  sub_1A36700E8(*(a1 + 72), a2 + v8[44]);
  sub_1A388F6D8(*(a1 + 80), a2 + v8[48], &qword_1EB101548, &qword_1A3A854F8);
  sub_1A389F1A4(v4, v5, v6);

  return sub_1A3A2EA50();
}

uint64_t sub_1A3A08270@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB101640, &qword_1A3A855E0);
  v6 = *(*(v5 - 8) + 16);
  v6(a2, v4, v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB101798, &qword_1A3A85B98);
  v6(a2 + v7[12], a1[1], v5);
  v6(a2 + v7[16], a1[2], v5);
  v6(a2 + v7[20], a1[3], v5);
  v6(a2 + v7[24], a1[4], v5);
  v6(a2 + v7[28], a1[5], v5);
  v6(a2 + v7[32], a1[6], v5);
  v6(a2 + v7[36], a1[7], v5);
  v6(a2 + v7[40], a1[8], v5);
  v6(a2 + v7[44], a1[9], v5);
  v6(a2 + v7[48], a1[10], v5);
  v6(a2 + v7[52], a1[11], v5);
  v6(a2 + v7[56], a1[12], v5);
  v6(a2 + v7[60], a1[13], v5);
  v6(a2 + v7[64], a1[14], v5);
  v8 = v7[68];
  v9 = a1[15];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB101790, &qword_1A3A858E8);
  v11 = *(*(v10 - 8) + 16);

  return v11(a2 + v8, v9, v10);
}