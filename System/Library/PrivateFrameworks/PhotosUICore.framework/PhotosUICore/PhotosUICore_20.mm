uint64_t sub_1A3EB12C8()
{
  v1 = MEMORY[0x1E69E7D40];
  KeyPath = swift_getKeyPath();
  (*((*v1 & *v0) + 0x8C8))(KeyPath);

  v3 = v0 + qword_1EB12DAB8;
  swift_beginAccess();
  return *v3;
}

uint64_t sub_1A3EB13A0@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x558))();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  return result;
}

uint64_t (*sub_1A3EB1478(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x8C8))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationMemoriesModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A3EB1268(v4);
  return sub_1A3EB1630;
}

uint64_t sub_1A3EB163C()
{
  v1 = qword_1EB12DAC0;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A3EB1680(char a1)
{
  v3 = qword_1EB12DAC0;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1A3EB1744@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x588))();
  *a2 = result & 1;
  return result;
}

uint64_t (*sub_1A3EB180C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x8C8))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationMemoriesModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A3EB16D0(v4);
  return sub_1A3EB19C4;
}

uint64_t sub_1A3EB19D0()
{
  v1 = qword_1EB12DAC8;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A3EB1A14(char a1)
{
  v3 = qword_1EB12DAC8;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1A3EB1AD8@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x5B8))();
  *a2 = result & 1;
  return result;
}

uint64_t (*sub_1A3EB1BA0(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x8C8))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationMemoriesModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A3EB1A64(v4);
  return sub_1A3EB1D58;
}

uint64_t sub_1A3EB1D64()
{
  v1 = qword_1EB12DAD0;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A3EB1DA8(char a1)
{
  v3 = qword_1EB12DAD0;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1A3EB1E6C@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x5E8))();
  *a2 = result & 1;
  return result;
}

uint64_t (*sub_1A3EB1F34(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x8C8))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationMemoriesModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A3EB1DF8(v4);
  return sub_1A3EB20EC;
}

uint64_t sub_1A3EB2178()
{
  v1 = MEMORY[0x1E69E7D40];
  KeyPath = swift_getKeyPath();
  (*((*v1 & *v0) + 0x8C8))(KeyPath);

  v3 = (v0 + qword_1EB12DAD8);
  swift_beginAccess();
  v4 = *v3;

  return v4;
}

uint64_t sub_1A3EB225C@<X0>(void **a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x618))();
  v5 = v4;
  result = swift_allocObject();
  *(result + 16) = v3;
  *(result + 24) = v5;
  *a2 = sub_1A3DDBE10;
  a2[1] = result;
  return result;
}

uint64_t sub_1A3EB22F8(uint64_t *a1, void **a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x620);

  return v6(sub_1A3E30F88, v5);
}

uint64_t (*sub_1A3EB23B8(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x8C8))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationMemoriesModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A3EB2118(v4);
  return sub_1A3EB2570;
}

uint64_t sub_1A3EB2610@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x648))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t (*sub_1A3EB26F4(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x8C8))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationMemoriesModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A3EB259C(v4);
  return sub_1A3EB28AC;
}

uint64_t sub_1A3EB28B8()
{
  v1 = qword_1EB12DAE8;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A3EB28FC(uint64_t a1)
{
  v3 = qword_1EB12DAE8;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1A3EB29C0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x678))();
  *a2 = result;
  return result;
}

uint64_t (*sub_1A3EB2A84(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x8C8))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationMemoriesModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A3EB294C(v4);
  return sub_1A3EB2C3C;
}

uint64_t sub_1A3EB2C48()
{
  v1 = qword_1EB12DAF0;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A3EB2C8C(char a1)
{
  v3 = qword_1EB12DAF0;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1A3EB2D50@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x6A8))();
  *a2 = result & 1;
  return result;
}

uint64_t (*sub_1A3EB2E18(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x8C8))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationMemoriesModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A3EB2CDC(v4);
  return sub_1A3EB2FD0;
}

uint64_t sub_1A3EB2FDC(uint64_t a1)
{
  v3 = qword_1EB12DAF8;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return (*((*MEMORY[0x1E69E7D40] & *v1) + 0x6B0))(1);
}

uint64_t (*sub_1A3EB3080(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A3EB30E4;
}

uint64_t sub_1A3EB30E4(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return (*((*MEMORY[0x1E69E7D40] & **(a1 + 24)) + 0x6B0))(1);
  }

  return result;
}

uint64_t sub_1A3EB3168@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x6D8))();
  *a2 = result;
  return result;
}

uint64_t (*sub_1A3EB3238(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x8C8))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationMemoriesModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A3EB3080(v4);
  return sub_1A3EB33F0;
}

uint64_t sub_1A3EB33FC()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = *((*((*MEMORY[0x1E69E7D40] & *v0) + 0x708))() + 16);

  v3 = *((*v1 & *v0) + 0x800);

  return v3(v2);
}

uint64_t sub_1A3EB34B4(uint64_t a1)
{
  v3 = qword_1EB12DB00;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return sub_1A3EB33FC();
}

uint64_t (*sub_1A3EB3510(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A3EB3574;
}

uint64_t sub_1A3EB3574(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1A3EB33FC();
  }

  return result;
}

uint64_t sub_1A3EB35BC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x708))();
  *a2 = result;
  return result;
}

uint64_t (*sub_1A3EB368C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x8C8))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationMemoriesModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A3EB3510(v4);
  return sub_1A3EB3844;
}

uint64_t sub_1A3EB3850()
{
  v1 = qword_1EB12DB08;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A3EB3894(char a1)
{
  v3 = qword_1EB12DB08;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1A3EB3958@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x738))();
  *a2 = result & 1;
  return result;
}

uint64_t (*sub_1A3EB3A20(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x8C8))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationMemoriesModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A3EB38E4(v4);
  return sub_1A3EB3BD8;
}

uint64_t sub_1A3EB3C64@<X0>(void **a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x768))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = sub_1A3DDBE10;
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t sub_1A3EB3D0C(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1A3E30F88;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x770);
  v8 = sub_1A3C66EE8(v3, v4);
  return v7(v6, v5, v8);
}

uint64_t (*sub_1A3EB3DDC(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x8C8))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationMemoriesModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A3EB3BF0(v4);
  return sub_1A3EB3F94;
}

uint64_t sub_1A3EB3FC0(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t))
{
  v8 = (v4 + *a3);
  swift_beginAccess();
  v9 = v8[1];
  *v8 = a1;
  v8[1] = a2;
  return a4(v9);
}

void sub_1A3EB4098(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E69E7D40];
  KeyPath = swift_getKeyPath();
  (*((*v3 & *v2) + 0x8C8))(KeyPath);

  swift_beginAccess();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A3EB4174@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x798))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t (*sub_1A3EB4258(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x8C8))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationMemoriesModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A3EB4024(v4);
  return sub_1A3EB4410;
}

double sub_1A3EB4428(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  *(v2 + v4) = a1;

  return result;
}

void sub_1A3EB44F0(uint64_t a1, uint64_t *a2)
{
  v3 = MEMORY[0x1E69E7D40];
  KeyPath = swift_getKeyPath();
  (*((*v3 & *v2) + 0x8C8))(KeyPath);

  swift_beginAccess();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A3EB45BC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x7C8))();
  *a2 = result;
  return result;
}

uint64_t (*sub_1A3EB468C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x8C8))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationMemoriesModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A3EB447C(v4);
  return sub_1A3EB4844;
}

uint64_t sub_1A3EB4850()
{
  v1 = qword_1EB12DB28;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A3EB4894(uint64_t a1)
{
  v3 = qword_1EB12DB28;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1A3EB4958(uint64_t a1, uint64_t *a2)
{
  v4 = MEMORY[0x1E69E7D40];
  KeyPath = swift_getKeyPath();
  (*((*v4 & *v2) + 0x8C8))(KeyPath);

  v6 = *a2;
  swift_beginAccess();
  return *(v2 + v6);
}

uint64_t sub_1A3EB4A20@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x7F8))();
  *a2 = result;
  return result;
}

uint64_t (*sub_1A3EB4AE4(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x8C8))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationMemoriesModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A3EB48E4(v4);
  return sub_1A3EB4C9C;
}

uint64_t sub_1A3EB4CA8()
{
  v1 = qword_1EB12DB30;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A3EB4CEC(char a1)
{
  v3 = qword_1EB12DB30;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1A3EB4DB0@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x828))();
  *a2 = result & 1;
  return result;
}

uint64_t (*sub_1A3EB4E78(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x8C8))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationMemoriesModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A3EB4D3C(v4);
  return sub_1A3EB5030;
}

uint64_t sub_1A3EB503C()
{
  v1 = qword_1EB12DB38;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A3EB5080(char a1)
{
  v3 = qword_1EB12DB38;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1A3EB5144(uint64_t a1, uint64_t *a2)
{
  v4 = MEMORY[0x1E69E7D40];
  KeyPath = swift_getKeyPath();
  (*((*v4 & *v2) + 0x8C8))(KeyPath);

  v6 = *a2;
  swift_beginAccess();
  return *(v2 + v6);
}

uint64_t sub_1A3EB520C@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x858))();
  *a2 = result & 1;
  return result;
}

uint64_t (*sub_1A3EB52D4(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x8C8))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationMemoriesModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A3EB50D0(v4);
  return sub_1A3EB548C;
}

uint64_t sub_1A3EB54A4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *v6 = a1;
  v6[1] = a2;
  return sub_1A3C33378(v7, v8);
}

uint64_t sub_1A3EB5574(uint64_t a1, void *a2)
{
  v4 = MEMORY[0x1E69E7D40];
  KeyPath = swift_getKeyPath();
  (*((*v4 & *v2) + 0x8C8))(KeyPath);

  v6 = (v2 + *a2);
  swift_beginAccess();
  v7 = *v6;
  sub_1A3C66EE8(*v6, v6[1]);
  return v7;
}

uint64_t sub_1A3EB5654@<X0>(void **a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x888))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = sub_1A3DDBE10;
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t sub_1A3EB56FC(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1A3D6069C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x890);
  v8 = sub_1A3C66EE8(v3, v4);
  return v7(v6, v5, v8);
}

uint64_t (*sub_1A3EB57CC(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x8C8))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationMemoriesModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A3EB5500(v4);
  return sub_1A3EB5984;
}

void sub_1A3EB5990(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *(*a1 + 32);
  (*(*a1 + 40))(*a1, 0);
  v5 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x50);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationMemoriesModel(255, v5, v6, v7);
  swift_getWitnessTable();
  sub_1A52415E4();

  free(v3);
}

uint64_t sub_1A3EB5A74()
{
  v1 = qword_1EB12DB48;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A3EB5AB8(char a1)
{
  v3 = qword_1EB12DB48;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void sub_1A3EB5B68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v78 = a2;
  v79 = a4;
  v81 = a3;
  v6 = MEMORY[0x1E69E7D40];
  v7 = *MEMORY[0x1E69E7D40] & *v4;
  v8 = sub_1A524BEE4();
  v74 = *(v8 - 8);
  v75 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v72 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_1A524BF64();
  v71 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v70 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1A523FBB4();
  v76 = *(v11 - 8);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1E69E7CC0];
  v89 = MEMORY[0x1E69E7CC0];
  v77 = v7;
  v16 = *(v7 + 424);
  v80 = v7 + 424;
  v82 = v16;
  v17 = v16(v12);
  v18 = (*((*v6 & *v5) + 0x458))();
  (*((*v6 & *v5) + 0x278))(v18);
  v19 = objc_allocWithZone(PXRenameMemoryAction);
  v20 = sub_1A524C634();

  v21 = sub_1A524C634();

  v22 = [v19 initWithMemory:v17 title:v20 subtitle:v21];

  if (v22)
  {
    v23 = v22;
    MEMORY[0x1A5907D70]();
    v24 = v15;
    if (*((v89 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v89 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1A524CA74();
      v24 = v15;
    }

    sub_1A524CAE4();

    v25 = v89;
    v27 = v81;
    v26 = v82;
  }

  else
  {
    v25 = v15;
    v27 = v81;
    v26 = v82;
    v24 = v15;
  }

  v28 = MEMORY[0x1E69E7D40];
  if ((*((*MEMORY[0x1E69E7D40] & *v5) + 0x6A8))())
  {
    v29 = (*((*v28 & *v5) + 0x6D8))();
    if (*(v29 + 16))
    {
      v30 = v76;
      (*(v76 + 16))(v14, v29 + ((*(v30 + 80) + 32) & ~*(v30 + 80)), v11);

      v31 = sub_1A523FB64();
      v33 = v32;
      v34 = (*(v30 + 8))(v14, v11);
      if (v33)
      {
        v35 = (*((*v28 & *v5) + 0x1D8))(v34);
        v36 = [v35 librarySpecificFetchOptions];

        [v36 setWantsIncrementalChangeDetails_];
        v37 = objc_opt_self();
        sub_1A3C489AC(0, &qword_1EB12B260, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
        v38 = swift_allocObject();
        *(v38 + 16) = xmmword_1A52F8E10;
        *(v38 + 32) = v31;
        *(v38 + 40) = v33;
        v39 = sub_1A524CA14();

        v40 = [v37 fetchAssetsWithLocalIdentifiers:v39 options:v36];

        v41 = [v40 firstObject];
        v27 = v81;
        if (v41)
        {
          v26 = v82;
          v42 = v82();
          [objc_allocWithZone(PXEditMemoryAction) initWithMemory:v42 keyAsset:v41];

          MEMORY[0x1A5907D70]();
          v24 = MEMORY[0x1E69E7CC0];
          if (*((v89 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v89 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1A524CA74();
            v24 = MEMORY[0x1E69E7CC0];
          }

          sub_1A524CAE4();

          v25 = v89;
        }

        else
        {

          v26 = v82;
          v24 = MEMORY[0x1E69E7CC0];
        }
      }

      else
      {
        v27 = v81;
        v26 = v82;
      }
    }

    else
    {
    }
  }

  v43 = v26();
  v44 = [v43 localIdentifier];

  v45 = sub_1A524C674();
  v47 = v46;

  if (v25 >> 62)
  {
    if (sub_1A524E2B4() >= 1)
    {
      goto LABEL_19;
    }
  }

  else if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
  {
LABEL_19:
    v48 = objc_allocWithZone(PXActionGroup);
    sub_1A3C52C70(0, &qword_1EB12DBC0, off_1E771CF30);
    v49 = sub_1A524CA14();

    v50 = [v48 initWithActions_];

    v51 = sub_1A524C634();
    v52 = PXLocalizedString(v51);

    if (!v52)
    {
      sub_1A524C674();
      v52 = sub_1A524C634();
    }

    [v50 setLocalizedActionName_];

    v53 = v26();
    v54 = swift_allocObject();
    v54[2] = *(v77 + 80);
    v54[3] = v53;
    v54[4] = v45;
    v54[5] = v47;
    v55 = v79;
    v54[6] = v27;
    v54[7] = v55;
    v87 = sub_1A3EBB27C;
    v88 = v54;
    aBlock = MEMORY[0x1E69E9820];
    v84 = 1107296256;
    v85 = sub_1A3D6084C;
    v86 = &block_descriptor_179;
    v56 = _Block_copy(&aBlock);
    sub_1A3C66EE8(v27, v55);

    [v50 executeWithUndoManager:v78 completionHandler:v56];
    _Block_release(v56);
    goto LABEL_27;
  }

  v57 = sub_1A524D224();
  v58 = *sub_1A3CAA3FC();
  if (os_log_type_enabled(v58, v57))
  {
    v59 = v58;
    v60 = swift_slowAlloc();
    aBlock = swift_slowAlloc();
    *v60 = 136446210;
    sub_1A3C2EF94(v45, v47, &aBlock);
  }

  v50 = (v26)(v61);
  if (v27)
  {
    sub_1A3C52C70(0, &qword_1EB12B180, 0x1E69E9610);
    v62 = v79;

    v63 = sub_1A524D474();
    v64 = swift_allocObject();
    *(v64 + 16) = v27;
    *(v64 + 24) = v62;
    *(v64 + 32) = 1;
    *(v64 + 40) = v50;
    v87 = sub_1A3EBB230;
    v88 = v64;
    aBlock = MEMORY[0x1E69E9820];
    v84 = 1107296256;
    v85 = sub_1A3C2E0D0;
    v86 = &block_descriptor_37;
    v65 = _Block_copy(&aBlock);
    sub_1A3C66EE8(v27, v62);
    v50 = v50;

    v66 = v70;
    sub_1A524BF14();
    aBlock = v24;
    sub_1A3EBB234(&qword_1EB12B1E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    sub_1A3EBA6DC(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    sub_1A3C5DE88();
    v67 = v72;
    v68 = v75;
    sub_1A524E224();
    MEMORY[0x1A5908800](0, v66, v67, v65);
    _Block_release(v65);

    sub_1A3C33378(v27, v62);
    (*(v74 + 8))(v67, v68);
    (*(v71 + 8))(v66, v73);
  }

LABEL_27:
}

void sub_1A3EB670C(int a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, NSObject *a7)
{
  LODWORD(v13) = a1;
  v14 = sub_1A524BEE4();
  v46 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1A524BF64();
  v44 = *(v17 - 8);
  v45 = v17;
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((v13 & 1) == 0)
  {
    v42 = a7;
    v26 = a3;
    v27 = sub_1A524D244();
    v28 = *sub_1A3CAA3FC();
    if (os_log_type_enabled(v28, v27))
    {
      v43 = v13;
      v29 = v28;
      v13 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v13 = 138412290;
      if (a2)
      {
        v31 = a2;
        v32 = _swift_stdlib_bridgeErrorToNSError();
        v33 = v32;
      }

      else
      {
        v32 = 0;
        v33 = 0;
      }

      *(v13 + 4) = v32;
      *v30 = v33;
      _os_log_impl(&dword_1A3C1C000, v29, v27, "Unable to update memory: %@", v13, 0xCu);
      sub_1A3CB65E4(v30);
      MEMORY[0x1A590EEC0](v30, -1, -1);
      MEMORY[0x1A590EEC0](v13, -1, -1);

      v25 = v26;
      v47 = 0;
      LOBYTE(v13) = v43;
      a7 = v42;
      if (!a6)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v25 = v26;
      v47 = 0;
      a7 = v42;
      if (!a6)
      {
        goto LABEL_17;
      }
    }

LABEL_14:
    sub_1A3C52C70(0, &qword_1EB12B180, 0x1E69E9610);

    v37 = sub_1A524D474();
    v38 = swift_allocObject();
    *(v38 + 16) = a6;
    *(v38 + 24) = a7;
    *(v38 + 32) = v13 & 1;
    *(v38 + 40) = v25;
    aBlock[4] = sub_1A3EBB708;
    aBlock[5] = v38;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3C2E0D0;
    aBlock[3] = &block_descriptor_219;
    v39 = _Block_copy(aBlock);
    sub_1A3C66EE8(a6, a7);
    v40 = v25;

    sub_1A524BF14();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1A3EBB234(&qword_1EB12B1E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    sub_1A3EBA6DC(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    sub_1A3C5DE88();
    sub_1A524E224();
    MEMORY[0x1A5908800](0, v20, v16, v39);
    _Block_release(v39);

    sub_1A3C33378(a6, a7);
    (*(v46 + 8))(v16, v14);
    (*(v44 + 8))(v20, v45);

    return;
  }

  v43 = v13;
  v47 = a3;
  v21 = [a3 photoLibrary];
  if (!v21)
  {
    __break(1u);
    return;
  }

  v22 = v21;
  v23 = sub_1A524C634();
  v24 = [v22 px:v23 memoryWithLocalIdentifier:?];

  if (v24)
  {
    v25 = v24;
    v47 = v25;
  }

  else
  {
    v34 = sub_1A524D244();
    v35 = *sub_1A3CAA3FC();
    if (os_log_type_enabled(v35, v34))
    {
      v42 = v35;
      v36 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v36 = 136446210;
      sub_1A3C2EF94(a4, a5, aBlock);
    }

    v25 = v47;
    v47 = 0;
  }

  LOBYTE(v13) = v43;
  if (a6)
  {
    goto LABEL_14;
  }

LABEL_17:

  v41 = v47;
}

uint64_t sub_1A3EB6CE0(uint64_t a1, uint64_t (*a2)(void, void))
{
  if (a2)
  {
    return a2(0, 0);
  }

  return result;
}

id sub_1A3EB6ECC(uint64_t (*a1)(void, void))
{
  v2 = a1(0, *((*MEMORY[0x1E69E7D40] & *v1) + 0x50));
  v4.receiver = v1;
  v4.super_class = v2;
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_1A3EB6F30(uint64_t a1)
{
  swift_unknownObjectRelease();

  sub_1A3C33378(*(a1 + qword_1EB12DA80), *(a1 + qword_1EB12DA80 + 8));

  sub_1A3C33378(*(a1 + qword_1EB12DB10), *(a1 + qword_1EB12DB10 + 8));

  sub_1A3C33378(*(a1 + qword_1EB12DB40), *(a1 + qword_1EB12DB40 + 8));
  v2 = qword_1EB19A370;
  v3 = sub_1A5241614();
  v4 = *(*(v3 - 8) + 8);

  return v4(a1 + v2, v3);
}

uint64_t sub_1A3EB7114@<X0>(uint64_t *a1@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x298))();
  *a1 = result;
  return result;
}

void (*sub_1A3EB71D8(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x2A8))();
  return sub_1A3E658B0;
}

void (*sub_1A3EB73F4(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x2E8))();
  return sub_1A3E658B0;
}

void (*sub_1A3EB755C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x318))();
  return sub_1A3E658B0;
}

void (*sub_1A3EB76C0(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x658))();
  return sub_1A3E658B0;
}

void (*sub_1A3EB7824(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x628))();
  return sub_1A3E658B0;
}

void (*sub_1A3EB798C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x348))();
  return sub_1A3E658B0;
}

void (*sub_1A3EB7B4C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x468))();
  return sub_1A3E658B0;
}

void (*sub_1A3EB7CC4(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x3A8))();
  return sub_1A3E658B0;
}

void (*sub_1A3EB7E28(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x3D8))();
  return sub_1A3E658B0;
}

void (*sub_1A3EB7F8C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x408))();
  return sub_1A3E658B0;
}

void (*sub_1A3EB80F0(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x438))();
  return sub_1A3E658B0;
}

void (*sub_1A3EB82BC(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x538))();
  return sub_1A3E658B0;
}

void (*sub_1A3EB8428(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x568))();
  return sub_1A3E658B0;
}

void (*sub_1A3EB85A0(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x500))();
  return sub_1A3E658B0;
}

void (*sub_1A3EB8764(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x598))();
  return sub_1A3E658B0;
}

void (*sub_1A3EB88CC(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x5C8))();
  return sub_1A3E658B0;
}

void (*sub_1A3EB8A34(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x5F8))();
  return sub_1A3E658B0;
}

void (*sub_1A3EB8B98(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x718))();
  return sub_1A3E658B0;
}

void (*sub_1A3EB8CFC(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x6E8))();
  return sub_1A3E658B0;
}

void (*sub_1A3EB8E60(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x688))();
  return sub_1A3E658B0;
}

void (*sub_1A3EB8FC8(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x748))();
  return sub_1A3E62A10;
}

void (*sub_1A3EB912C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x778))();
  return sub_1A3E658B0;
}

void (*sub_1A3EB9290(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x7A8))();
  return sub_1A3E658B0;
}

void (*sub_1A3EB93F4(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x7D8))();
  return sub_1A3E658B0;
}

void (*sub_1A3EB9614(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x808))();
  return sub_1A3E658B0;
}

void (*sub_1A3EB977C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x838))();
  return sub_1A3E658B0;
}

void (*sub_1A3EB98E4(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x868))();
  return sub_1A3E658B0;
}

void (*sub_1A3EB9A48(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x898))();
  return sub_1A3E658B0;
}

void (*sub_1A3EB9BB0(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x8B0))();
  return sub_1A3E658B0;
}

uint64_t sub_1A3EB9D48@<X0>(uint64_t *a1@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x290))();
  *a1 = result;
  a1[1] = v4;
  return result;
}

void *sub_1A3EB9DAC(void *a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  result = sub_1A3EB9DCC(a1, a2, a3, *v4, a4);
  *v4 = result;
  return result;
}

void *sub_1A3EB9DCC(void *result, int64_t a2, char a3, void *a4, __n128 a5)
{
  v6 = result;
  if (a3)
  {
    v7 = a4[3];
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = a4[2];
  if (v8 <= v9)
  {
    v10 = a4[2];
  }

  else
  {
    v10 = v8;
  }

  if (!v10)
  {
    v14 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1A3EBA6DC(0, &qword_1EB12E380, MEMORY[0x1E6985D18], MEMORY[0x1E69E6F90]);
  v11 = *(sub_1A523FBB4() - 8);
  v12 = *(v11 + 72);
  v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v14 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v14);
  if (!v12)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v13) == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_29;
  }

  v14[2] = v9;
  v14[3] = 2 * ((result - v13) / v12);
LABEL_19:
  v16 = *(sub_1A523FBB4() - 8);
  if (v6)
  {
    if (v14 < a4 || (v17 = (*(v16 + 80) + 32) & ~*(v16 + 80), v14 + v17 >= a4 + v17 + *(v16 + 72) * v9))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v14 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v14;
}

uint64_t sub_1A3EBA020(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1A3C52C70(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1A3EBA090(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = *(v1 + 24);
  swift_beginAccess();
  v5 = *(v2 + v3);
  *(v2 + v3) = v4;
}

unint64_t sub_1A3EBA0F4(__n128 a1)
{
  result = qword_1EB12DA10;
  if (!qword_1EB12DA10)
  {
    sub_1A3EBA6DC(255, &qword_1EB12DA08, type metadata accessor for StoryAssetPicker, MEMORY[0x1E69E6720]);
    sub_1A3EBB234(&qword_1EB12DA18, type metadata accessor for StoryAssetPicker, MEMORY[0x1E69E81C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12DA10);
  }

  return result;
}

uint64_t sub_1A3EBA1EC()
{
  v1 = qword_1EB12DA20;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A3EBA248()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x5C8))(v4);
    *v3 = !*v3;
    v2(v4, 0);
  }
}

void sub_1A3EBA304()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1A3EAD4D8();
  }
}

unint64_t sub_1A3EBA3F8()
{
  result = qword_1EB12DB70;
  if (!qword_1EB12DB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12DB70);
  }

  return result;
}

unint64_t sub_1A3EBA4B8()
{
  result = qword_1EB131660;
  if (!qword_1EB131660)
  {
    sub_1A3C4B7E8(255, &qword_1EB126620, &qword_1EB126630, 0x1E69DCAB8);
    sub_1A3EBA020(&qword_1EB12DB80, &qword_1EB126630, 0x1E69DCAB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB131660);
  }

  return result;
}

unint64_t sub_1A3EBA5E8()
{
  result = qword_1EB12DB88;
  if (!qword_1EB12DB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12DB88);
  }

  return result;
}

void sub_1A3EBA67C(uint64_t *a1)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = *a1;
  v5 = v2;
  swift_beginAccess();
  v6 = *(v3 + v4);
  *(v3 + v4) = v2;
}

void sub_1A3EBA6DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1A3EBA740()
{
  result = qword_1EB1266E0;
  if (!qword_1EB1266E0)
  {
    sub_1A3EBA6DC(255, &unk_1EB1266F0, type metadata accessor for CGSize, MEMORY[0x1E69E6720]);
    sub_1A3EBB234(&qword_1EB126710, type metadata accessor for CGSize, MEMORY[0x1E695EF98]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1266E0);
  }

  return result;
}

void sub_1A3EBA818()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 16) + qword_1EB12DAB8;
  swift_beginAccess();
  *v4 = v1;
  *(v4 + 8) = v2;
  *(v4 + 16) = v3;
}

double sub_1A3EBA8E8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = (v1 + qword_1EB12DAD8);

  swift_beginAccess();
  *v4 = v2;
  v4[1] = v3;

  return result;
}

unint64_t sub_1A3EBA9E0()
{
  result = qword_1EB120D30;
  if (!qword_1EB120D30)
  {
    sub_1A3EBA6DC(255, &qword_1EB120D40, MEMORY[0x1E6985D18], MEMORY[0x1E69E62F8]);
    sub_1A3EBB234(&qword_1EB1260F0, MEMORY[0x1E6985D18], MEMORY[0x1E6985D20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB120D30);
  }

  return result;
}

uint64_t sub_1A3EBABA0(uint64_t (*a1)(uint64_t, uint64_t, double))
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = sub_1A3C66EE8(v3, v4);
  return a1(v3, v4, v5);
}

void sub_1A3EBAD30(uint64_t *a1)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = *a1;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

void sub_1A3EBADF0(void *a1)
{
  if (!a1)
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = MEMORY[0x1E69E7D40];
  v3 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x1B0))(a1);
  v4 = (*((*v2 & *v1) + 0x1A8))(v3);
  v5 = [v4 photoLibrary];

  if (!v5)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v6 = *((*v2 & *v1) + 0x1E0);

  v6(v5);
}

uint64_t sub_1A3EBAF08@<X0>(uint64_t *a1@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **(v1 + 32)) + 0x278))();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t objectdestroy_143Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3EBB03C(uint64_t a1)
{
  v2 = type metadata accessor for LemonadeCollectionCustomizationTitleField(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1A3EBB098(uint64_t a1)
{
  if (!qword_1EB12DBA8)
  {
    sub_1A3EBB100(255);
    sub_1A3EBB1B4(255);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB12DBA8);
    }
  }
}

void sub_1A3EBB100(uint64_t a1)
{
  if (!qword_1EB12DBB0)
  {
    type metadata accessor for LemonadeCollectionCustomizationTitleField(255);
    sub_1A3EBB234(&qword_1EB12DBA0, type metadata accessor for LemonadeCollectionCustomizationTitleField, &protocol conformance descriptor for LemonadeCollectionCustomizationTitleField);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB12DBB0);
    }
  }
}

void sub_1A3EBB1B4(uint64_t a1)
{
  if (!qword_1EB127790)
  {
    sub_1A3C489AC(255, &qword_1EB126D60, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]);
    v1 = sub_1A5249F44();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB127790);
    }
  }
}

uint64_t sub_1A3EBB234(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A3EBB300(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A3EBB358(uint64_t a1)
{
  result = sub_1A5241614();
  if (v2 <= 0x3F)
  {
    return swift_initClassMetadata2();
  }

  return result;
}

unint64_t sub_1A3EBB4E8()
{
  result = qword_1EB12DC88;
  if (!qword_1EB12DC88)
  {
    sub_1A3EBB098(255);
    type metadata accessor for LemonadeCollectionCustomizationTitleField(255);
    sub_1A3EBB234(&qword_1EB12DBA0, type metadata accessor for LemonadeCollectionCustomizationTitleField, &protocol conformance descriptor for LemonadeCollectionCustomizationTitleField);
    swift_getOpaqueTypeConformance2();
    sub_1A3EBB234(&qword_1EB1277A0, sub_1A3EBB1B4, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12DC88);
  }

  return result;
}

void sub_1A3EBB5F8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x240))(0);
  }
}

uint64_t objectdestroy_172Tm()
{

  return swift_deallocObject();
}

uint64_t sub_1A3EBB7A4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC12PhotosUICore33PhotosDetailsLocationSearchResult_suggestion + 24);
  v6 = *(v2 + OBJC_IVAR____TtC12PhotosUICore33PhotosDetailsLocationSearchResult_suggestion + 32);
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC12PhotosUICore33PhotosDetailsLocationSearchResult_suggestion), v5);
  return (*(v6 + 32))(a1, a2, v5, v6);
}

void *sub_1A3EBB84C(void *a1)
{
  v2 = v1;
  v4 = sub_1A52411C4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC12PhotosUICore33PhotosDetailsLocationSearchResult_imageColor;
  *&v1[OBJC_IVAR____TtC12PhotosUICore33PhotosDetailsLocationSearchResult_imageColor] = 0;
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  (*(v10 + 8))(v9, v10);
  v11 = sub_1A5241164();
  v13 = v12;
  (*(v5 + 8))(v7, v4);
  v14 = &v2[OBJC_IVAR____TtC12PhotosUICore33PhotosDetailsLocationSearchResult_id];
  *v14 = v11;
  v14[1] = v13;
  v15 = a1[3];
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v15);
  v17 = (*(v16 + 16))(v15, v16);
  v18 = &v2[OBJC_IVAR____TtC12PhotosUICore33PhotosDetailsLocationSearchResult_title];
  *v18 = v17;
  v18[1] = v19;
  v20 = a1[3];
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v20);
  v22 = (*(v21 + 24))(v20, v21);
  v23 = &v2[OBJC_IVAR____TtC12PhotosUICore33PhotosDetailsLocationSearchResult_subtitle];
  *v23 = v22;
  v23[1] = v24;
  sub_1A3C341C8(a1, &v2[OBJC_IVAR____TtC12PhotosUICore33PhotosDetailsLocationSearchResult_suggestion]);
  *&v2[OBJC_IVAR____TtC12PhotosUICore33PhotosDetailsLocationSearchResult_image] = sub_1A524B544();
  v25 = sub_1A524B3C4();
  swift_beginAccess();
  *&v2[v8] = v25;

  v28 = type metadata accessor for PhotosDetailsLocationSearchResult(v26, v27);
  v32.receiver = v2;
  v32.super_class = v28;
  v29 = objc_msgSendSuper2(&v32, sel_init);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v29;
}

id sub_1A3EBBCF4(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a1 + *a3 + 8))
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return 0;
}

double sub_1A3EBBD6C(void *a1)
{
  swift_beginAccess();

  return result;
}

double sub_1A3EBBDBC(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  *(v2 + v4) = a1;

  return result;
}

id sub_1A3EBBE70()
{
  v1 = v0;
  v2 = MEMORY[0x1E69816A0];
  v3 = MEMORY[0x1E69E6720];
  sub_1A3EBE3CC(0, &qword_1EB121CC8, MEMORY[0x1E69816A0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v32 - v5;
  v7 = sub_1A52411C4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC12PhotosUICore35PhotosDetailsNoLocationSearchResult_imageColor;
  *&v1[OBJC_IVAR____TtC12PhotosUICore35PhotosDetailsNoLocationSearchResult_imageColor] = 0;
  sub_1A52411B4();
  v12 = sub_1A5241164();
  v14 = v13;
  (*(v8 + 8))(v10, v7);
  v15 = &v1[OBJC_IVAR____TtC12PhotosUICore35PhotosDetailsNoLocationSearchResult_id];
  *v15 = v12;
  v15[1] = v14;
  v16 = sub_1A524C634();
  v17 = PXLocalizedString(v16);

  v18 = sub_1A524C674();
  v20 = v19;

  v21 = &v1[OBJC_IVAR____TtC12PhotosUICore35PhotosDetailsNoLocationSearchResult_title];
  *v21 = v18;
  v21[1] = v20;
  v22 = &v1[OBJC_IVAR____TtC12PhotosUICore35PhotosDetailsNoLocationSearchResult_subtitle];
  *v22 = 0;
  *(v22 + 1) = 0;
  sub_1A524B544();
  v23 = *MEMORY[0x1E6981688];
  v24 = sub_1A524B594();
  v25 = *(v24 - 8);
  (*(v25 + 104))(v6, v23, v24);
  (*(v25 + 56))(v6, 0, 1, v24);
  v26 = sub_1A524B564();

  sub_1A3C2C4D8(v6, &qword_1EB121CC8, v2, v3, sub_1A3EBE3CC);
  *&v1[OBJC_IVAR____TtC12PhotosUICore35PhotosDetailsNoLocationSearchResult_image] = v26;
  v27 = sub_1A524B3B4();
  swift_beginAccess();
  *&v1[v11] = v27;

  v30 = type metadata accessor for PhotosDetailsNoLocationSearchResult(v28, v29);
  v33.receiver = v1;
  v33.super_class = v30;
  return objc_msgSendSuper2(&v33, sel_init);
}

uint64_t sub_1A3EBC3A8()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1A3EBC4E0(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1A3EBC540(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC12PhotosUICore37PhotosDetailsLocationSearchDataSource_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1A3DA46A0;
}

uint64_t sub_1A3EBC5D8()
{
  v1 = (v0 + OBJC_IVAR____TtC12PhotosUICore37PhotosDetailsLocationSearchDataSource_undoManagerProvider);
  swift_beginAccess();
  v2 = *v1;
  sub_1A3C66EE8(*v1, v1[1]);
  return v2;
}

uint64_t sub_1A3EBC634(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC12PhotosUICore37PhotosDetailsLocationSearchDataSource_undoManagerProvider);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_1A3C33378(v6, v7);
}

id sub_1A3EBC6F4()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore37PhotosDetailsLocationSearchDataSource____lazy_storage___infoUpdater;
  v2 = *(v0 + OBJC_IVAR____TtC12PhotosUICore37PhotosDetailsLocationSearchDataSource____lazy_storage___infoUpdater);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC12PhotosUICore37PhotosDetailsLocationSearchDataSource____lazy_storage___infoUpdater);
  }

  else
  {
    v4 = objc_allocWithZone(off_1E7721770);
    v5 = sub_1A524C634();
    v6 = [v4 initWithInfoProvider:v0 infoKind:v5];

    [v6 setObserver_];
    v7 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_1A3EBC7F8(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v5 = OBJC_IVAR____TtC12PhotosUICore37PhotosDetailsLocationSearchDataSource_suggester;
  type metadata accessor for PXMapKitSuggester(0, a2);
  *&v2[v5] = _s12PhotosUICore22PeopleRemovalUtilitiesCACycfC_0();
  v6 = &v2[OBJC_IVAR____TtC12PhotosUICore37PhotosDetailsLocationSearchDataSource_searchQuery];
  *v6 = 0;
  v6[1] = 0;
  v7 = &v2[OBJC_IVAR____TtC12PhotosUICore37PhotosDetailsLocationSearchDataSource_completion];
  *v7 = 0;
  v7[1] = 0;
  v8 = swift_unknownObjectWeakInit();
  v9 = &v2[OBJC_IVAR____TtC12PhotosUICore37PhotosDetailsLocationSearchDataSource_undoManagerProvider];
  *v9 = 0;
  v9[1] = 0;
  *&v2[OBJC_IVAR____TtC12PhotosUICore37PhotosDetailsLocationSearchDataSource____lazy_storage___infoUpdater] = 0;
  *&v2[OBJC_IVAR____TtC12PhotosUICore37PhotosDetailsLocationSearchDataSource_assets] = a1;
  v2[OBJC_IVAR____TtC12PhotosUICore37PhotosDetailsLocationSearchDataSource_canRemoveLocation] = v3;
  v12.receiver = v2;
  v12.super_class = type metadata accessor for PhotosDetailsLocationSearchDataSource(v8, v10);
  return objc_msgSendSuper2(&v12, sel_init);
}

uint64_t sub_1A3EBC8F8()
{
  v0 = sub_1A524C634();
  v1 = PXLocalizedString(v0);

  v2 = sub_1A524C674();
  return v2;
}

uint64_t sub_1A3EBC96C()
{
  v0 = sub_1A524C634();
  v1 = PXLocalizedString(v0);

  v2 = sub_1A524C674();
  return v2;
}

uint64_t sub_1A3EBC9E0()
{
  v0 = sub_1A524C634();
  v1 = PXLocalizedString(v0);

  v2 = sub_1A524C674();
  return v2;
}

void sub_1A3EBCA54(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A524C634();
  v5 = PXLocalizedString(v4);

  sub_1A524C674();
  sub_1A3C71018(0, &qword_1EB12B110, &qword_1EB12B100, MEMORY[0x1E69E7740]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1A52F8E10;
  *(v6 + 56) = MEMORY[0x1E69E6158];
  *(v6 + 64) = sub_1A3D710E8();
  *(v6 + 32) = a1;
  *(v6 + 40) = a2;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A3EBCB5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = (v4 + OBJC_IVAR____TtC12PhotosUICore37PhotosDetailsLocationSearchDataSource_completion);
  v8 = *(v4 + OBJC_IVAR____TtC12PhotosUICore37PhotosDetailsLocationSearchDataSource_completion);
  v9 = *(v4 + OBJC_IVAR____TtC12PhotosUICore37PhotosDetailsLocationSearchDataSource_completion + 8);
  *v7 = a3;
  v7[1] = a4;

  sub_1A3C33378(v8, v9);
  v10 = (v4 + OBJC_IVAR____TtC12PhotosUICore37PhotosDetailsLocationSearchDataSource_searchQuery);
  *v10 = a1;
  v10[1] = a2;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A3EBCC0C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for PhotosDetailsSearchView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = MEMORY[0x1E69E7D40];
  v11 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0xD8))(v9);
  if (v11)
  {
    v13 = v12;
    v14 = v11;
    v15 = v11();
    sub_1A3C33378(v14, v13);
  }

  else
  {
    v15 = 0;
  }

  sub_1A3C341C8(a2, v45);
  v16 = sub_1A3C34400(0, &qword_1EB12DDB8, &protocol descriptor for PhotosDetailsSearchViewResult);
  type metadata accessor for PhotosDetailsNoLocationSearchResult(v16, v17);
  v18 = swift_dynamicCast();
  if (v18)
  {

    v20 = [objc_allocWithZone(PXRemoveAssetLocationAction) initWithAssets_];
    if (v20)
    {
      v21 = v20;
      v22 = swift_allocObject();
      *(v22 + 16) = v3;
      aBlock[4] = sub_1A3EBE534;
      aBlock[5] = v22;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1A3D6084C;
      aBlock[3] = &block_descriptor_38;
      v23 = _Block_copy(aBlock);
      v24 = v21;
      v25 = v3;

      [v24 executeWithUndoManager:v15 completionHandler:v23];

      _Block_release(v23);
    }

    else
    {
    }
  }

  else
  {
    type metadata accessor for PhotosDetailsLocationSearchResult(v18, v19);
    if (swift_dynamicCast())
    {
      v26 = aBlock[0];
      sub_1A49CC790(1);
      v27 = swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_1A3EBE334(a1, &aBlock[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
      v28 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v29 = swift_allocObject();
      *(v29 + 16) = v27;
      *(v29 + 24) = v15;
      sub_1A3EBE430(&aBlock[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v29 + v28);
      *(v29 + ((v8 + v28 + 7) & 0xFFFFFFFFFFFFFFF8)) = v26;
      v30 = *((*v10 & *v26) + 0x98);
      v31 = v15;
      v32 = v26;

      v30(sub_1A3EBE494, v29);
    }

    else
    {
      v33 = sub_1A524D244();
      sub_1A3C341C8(a2, aBlock);
      sub_1A3EBD0AC(0, v34);
      v35 = sub_1A524DED4();
      if (os_log_type_enabled(v35, v33))
      {
        v36 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        *v36 = 136315138;
        sub_1A3C341C8(aBlock, v43);
        v37 = sub_1A524C714();
        v39 = v38;
        __swift_destroy_boxed_opaque_existential_0(aBlock);
        sub_1A3C2EF94(v37, v39, &v44);
      }

      __swift_destroy_boxed_opaque_existential_0(aBlock);
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v45);
}

unint64_t sub_1A3EBD0AC(uint64_t a1, uint64_t a2)
{
  result = qword_1EB12B140;
  if (!qword_1EB12B140)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB12B140);
  }

  return result;
}

void sub_1A3EBD0F8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = type metadata accessor for PhotosDetailsSearchView(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v14 = [objc_allocWithZone(PXAnnotatedLocation) initWithLocation:a1 placeAnnotation:0];
    v15 = [objc_allocWithZone(PXChangeAssetLocationAction) initWithAssets:*&v13[OBJC_IVAR____TtC12PhotosUICore37PhotosDetailsLocationSearchDataSource_assets] annotatedLocation:v14 sourceType:0];
    if (v15)
    {
      v16 = v15;
      sub_1A3EBE334(a4, &aBlock[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
      v17 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v18 = swift_allocObject();
      *(v18 + 16) = v13;
      *(v18 + 24) = a1;
      sub_1A3EBE430(&aBlock[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17);
      *(v18 + ((v11 + v17 + 7) & 0xFFFFFFFFFFFFFFF8)) = a5;
      aBlock[4] = sub_1A3EBED30;
      aBlock[5] = v18;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1A3D6084C;
      aBlock[3] = &block_descriptor_46_1;
      v19 = _Block_copy(aBlock);
      v20 = v16;
      v21 = v13;
      v22 = a1;
      v23 = a5;

      [v20 executeWithUndoManager:a3 completionHandler:v19];

      _Block_release(v19);
      v14 = v20;
    }

    else
    {
    }
  }
}

uint64_t sub_1A3EBD354(uint64_t a1, uint64_t a2, void (*a3)(void *, __n128), uint64_t a4)
{
  if (*(v4 + OBJC_IVAR____TtC12PhotosUICore37PhotosDetailsLocationSearchDataSource_searchQuery + 8))
  {
    *(swift_allocObject() + 16) = MEMORY[0x1E69E7CC0];
    if (*(v4 + OBJC_IVAR____TtC12PhotosUICore37PhotosDetailsLocationSearchDataSource_canRemoveLocation) == 1)
    {
      sub_1A3C71018(0, &unk_1EB12DDC0, &qword_1EB12DDB8, &protocol descriptor for PhotosDetailsSearchViewResult);
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_1A52F8E10;
      v7 = objc_allocWithZone(type metadata accessor for PhotosDetailsNoLocationSearchResult(v5, v6));
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return 0;
}

void sub_1A3EBD664(uint64_t a1, uint64_t a2, void (*a3)(void, __n128), uint64_t a4)
{
  v62 = sub_1A52411C4();
  v8 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  if (v11)
  {
    v57 = a2;
    v58 = a4;
    v59 = a3;
    v12 = sub_1A524C634();
    v13 = PXLocalizedString(v12);

    v55 = sub_1A524C674();
    v56 = v14;

    v63[0] = MEMORY[0x1E69E7CC0];
    sub_1A3EBE6BC(0, v11, 0);
    v15 = a1 + 32;
    v16 = v63[0];
    v60 = (v8 + 8);
    v61 = "ustomizationMemoriesModel";
    do
    {
      sub_1A3C341C8(v15, &v68);
      v17 = sub_1A3C341C8(&v68, v65);
      v19 = type metadata accessor for PhotosDetailsLocationSearchResult(v17, v18);
      v20 = objc_allocWithZone(v19);
      v21 = OBJC_IVAR____TtC12PhotosUICore33PhotosDetailsLocationSearchResult_imageColor;
      *&v20[OBJC_IVAR____TtC12PhotosUICore33PhotosDetailsLocationSearchResult_imageColor] = 0;
      v23 = v66;
      v22 = v67;
      __swift_project_boxed_opaque_existential_1(v65, v66);
      (*(v22 + 8))(v23, v22);
      v24 = sub_1A5241164();
      v26 = v25;
      (*v60)(v10, v62);
      v27 = &v20[OBJC_IVAR____TtC12PhotosUICore33PhotosDetailsLocationSearchResult_id];
      *v27 = v24;
      v27[1] = v26;
      v28 = v66;
      v29 = v67;
      __swift_project_boxed_opaque_existential_1(v65, v66);
      v30 = (*(v29 + 16))(v28, v29);
      v31 = &v20[OBJC_IVAR____TtC12PhotosUICore33PhotosDetailsLocationSearchResult_title];
      *v31 = v30;
      v31[1] = v32;
      v33 = v66;
      v34 = v67;
      __swift_project_boxed_opaque_existential_1(v65, v66);
      v35 = (*(v34 + 24))(v33, v34);
      v36 = &v20[OBJC_IVAR____TtC12PhotosUICore33PhotosDetailsLocationSearchResult_subtitle];
      *v36 = v35;
      v36[1] = v37;
      sub_1A3C341C8(v65, &v20[OBJC_IVAR____TtC12PhotosUICore33PhotosDetailsLocationSearchResult_suggestion]);
      *&v20[OBJC_IVAR____TtC12PhotosUICore33PhotosDetailsLocationSearchResult_image] = sub_1A524B544();
      v38 = sub_1A524B3C4();
      swift_beginAccess();
      *&v20[v21] = v38;

      v64.receiver = v20;
      v64.super_class = v19;
      v39 = objc_msgSendSuper2(&v64, sel_init);
      __swift_destroy_boxed_opaque_existential_0(v65);
      __swift_destroy_boxed_opaque_existential_0(&v68);
      v63[0] = v16;
      v41 = *(v16 + 16);
      v40 = *(v16 + 24);
      if (v41 >= v40 >> 1)
      {
        sub_1A3EBE6BC((v40 > 1), v41 + 1, 1);
        v16 = v63[0];
      }

      *(&v69 + 1) = v19;
      v70 = &off_1F16E60E0;
      *&v68 = v39;
      *(v16 + 16) = v41 + 1;
      sub_1A3C34460(&v68, v16 + 40 * v41 + 32);
      v15 += 40;
      --v11;
    }

    while (v11);
    sub_1A49CC3A4(v55, v56, v16, &v68);
    a2 = v57;
    swift_beginAccess();
    v42 = *(a2 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a2 + 16) = v42;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v42 = sub_1A3EBE1FC(0, *(v42 + 2) + 1, 1, v42);
      *(a2 + 16) = v42;
    }

    v45 = *(v42 + 2);
    v44 = *(v42 + 3);
    if (v45 >= v44 >> 1)
    {
      v42 = sub_1A3EBE1FC((v44 > 1), v45 + 1, 1, v42);
    }

    *(v42 + 2) = v45 + 1;
    v46 = &v42[40 * v45];
    v47 = v68;
    v48 = v69;
    *(v46 + 8) = v70;
    *(v46 + 2) = v47;
    *(v46 + 3) = v48;
    *(a2 + 16) = v42;
    swift_endAccess();
  }

  v49 = swift_beginAccess();
  v50 = *(a2 + 16);
  v52 = type metadata accessor for PhotosDetailsLocationSearchResults(v49, v51);
  v53 = swift_allocObject();
  *(v53 + 16) = v50;
  v66 = v52;
  v65[0] = v53;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A3EBDBD4(uint64_t a1, uint64_t a2)
{
  sub_1A3EBECA4(a1, v11);
  v3 = v12;
  if (v12)
  {
    v4 = __swift_project_boxed_opaque_existential_1(v11, v12);
    v5 = *(v3 - 8);
    v6 = MEMORY[0x1EEE9AC00](v4);
    v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v8, v6);
    v9 = sub_1A524EA94();
    (*(v5 + 8))(v8, v3);
    __swift_destroy_boxed_opaque_existential_0(v11);
  }

  else
  {
    v9 = 0;
  }

  (*(a2 + 16))(a2, v9);
  return swift_unknownObjectRelease();
}

void *sub_1A3EBDD10(void *result)
{
  v2 = *(v1 + OBJC_IVAR____TtC12PhotosUICore37PhotosDetailsLocationSearchDataSource_completion);
  if (v2)
  {
    v3 = result;
    v4 = *(v1 + OBJC_IVAR____TtC12PhotosUICore37PhotosDetailsLocationSearchDataSource_completion + 8);

    v5 = [v3 info];
    if (v5)
    {
      type metadata accessor for PhotosDetailsLocationSearchResults(v5, v6);
      if (swift_dynamicCastClass())
      {
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      swift_unknownObjectRelease();
    }

    return sub_1A3C33378(v2, v4);
  }

  return result;
}

id sub_1A3EBDE94(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

char *sub_1A3EBE1FC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A3C37150(0, &qword_1EB12DFB0, &type metadata for PhotosDetailsSearchViewResultSection, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    if (v10 != a4 || v12 >= &v13[40 * v8])
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

uint64_t sub_1A3EBE334(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotosDetailsSearchView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1A3EBE3CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A3EBE430(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotosDetailsSearchView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1A3EBE494(void *a1)
{
  v3 = *(type metadata accessor for PhotosDetailsSearchView(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);

  sub_1A3EBD0F8(a1, v6, v7, v1 + v4, v5);
}

void *sub_1A3EBE534()
{
  v1 = *(v0 + 16);
  result = (*((*MEMORY[0x1E69E7D40] & *v1) + 0xC0))();
  if (result)
  {
    v3 = result;
    if ([result respondsToSelector_])
    {
      [v3 locationSearchDataSourceDidRemoveLocation_];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1A3EBE614(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1A3EBE65C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_1A3EBE6BC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1A3EBE6DC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1A3EBE6DC(void *result, int64_t a2, char a3, void *a4)
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
    sub_1A3C71018(0, &unk_1EB12DDC0, &qword_1EB12DDB8, &protocol descriptor for PhotosDetailsSearchViewResult);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1A3C34400(0, &qword_1EB12DDB8, &protocol descriptor for PhotosDetailsSearchViewResult);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1A3EBE834(uint64_t a1, void (**a2)(void, void))
{
  *(swift_allocObject() + 16) = a2;
  if (*(a1 + OBJC_IVAR____TtC12PhotosUICore37PhotosDetailsLocationSearchDataSource_searchQuery + 8))
  {
    *(swift_allocObject() + 16) = MEMORY[0x1E69E7CC0];
    if (*(a1 + OBJC_IVAR____TtC12PhotosUICore37PhotosDetailsLocationSearchDataSource_canRemoveLocation))
    {
      sub_1A3C71018(0, &unk_1EB12DDC0, &qword_1EB12DDB8, &protocol descriptor for PhotosDetailsSearchViewResult);
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_1A52F8E10;
      v6 = objc_allocWithZone(type metadata accessor for PhotosDetailsNoLocationSearchResult(v4, v5));
      _Block_copy(a2);
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    _Block_copy(a2);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  _Block_copy(a2);

  return 0;
}

uint64_t sub_1A3EBECA4(uint64_t a1, uint64_t a2)
{
  sub_1A3C37150(0, &qword_1EB126130, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_1A3EBED30()
{
  v1 = *(type metadata accessor for PhotosDetailsSearchView(0) - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + ((*(v1 + 64) + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = sub_1A524D224();
  v6 = sub_1A475874C();
  swift_beginAccess();
  v7 = *v6;
  if (os_log_type_enabled(v7, v5))
  {
    v8 = v2;
    log = v7;
    v16 = v4;
    v9 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v9 = 134349571;
    *(v9 + 4) = [*(v8 + OBJC_IVAR____TtC12PhotosUICore37PhotosDetailsLocationSearchDataSource_assets) count];

    *(v9 + 12) = 2081;
    [v3 coordinate];
    v10 = sub_1A524CEE4();
    sub_1A3C2EF94(v10, v11, &v17);
  }

  v12 = sub_1A49CC790(0);
  result = (*((*MEMORY[0x1E69E7D40] & *v2) + 0xC0))(v12);
  if (result)
  {
    v14 = result;
    if ([result respondsToSelector_])
    {
      [v14 locationSearchDataSource:v2 didSelectLocationSearchResult:v4];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1A3EBEFD0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v88 = a2;
  v90 = sub_1A5249AB4();
  v89 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v87 = &v76 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for LemonadeMemoryCellPlayButtonView(0);
  v84 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v85 = v5;
  v86 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3EC2854(0);
  v81 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v77 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v76 = &v76 - v9;
  v10 = sub_1A52486A4();
  v94 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v93 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v92 = &v76 - v13;
  sub_1A3EC1A14(0);
  v83 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v79 = &v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1A5242D14();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3EC17F0(0, &qword_1EB12DFD0, sub_1A3EC1864, sub_1A3EC1940);
  v21 = v20;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v76 - v23;
  sub_1A3EC1760(0, v22);
  v95 = v25;
  v26 = MEMORY[0x1EEE9AC00](v25);
  v28 = &v76 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3EC1654(0, v26);
  v82 = v29;
  v80 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v78 = &v76 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_1A524B544();
  v31 = a1;
  sub_1A3D61808(v19);
  if ((*(v17 + 88))(v19, v16) == *MEMORY[0x1E69C21F0])
  {
    sub_1A524A1D4();
    v32 = sub_1A524A104();
  }

  else
  {
    sub_1A524A0F4();
    sub_1A524A1A4();
    v32 = sub_1A524A1F4();

    (*(v17 + 8))(v19, v16);
  }

  KeyPath = swift_getKeyPath();
  sub_1A3EBFABC();
  sub_1A3EBFABC();
  sub_1A524BC74();
  sub_1A52481F4();
  v34 = &v24[*(v21 + 36)];
  sub_1A524BBB4();
  sub_1A3EC1940(0);
  *&v34[*(v35 + 56)] = 256;
  *v24 = v91;
  *(v24 + 1) = KeyPath;
  *(v24 + 2) = v32;
  v36 = v101;
  *(v24 + 24) = v100;
  *(v24 + 40) = v36;
  *(v24 + 56) = v102;
  sub_1A3C371A0(0, &unk_1EB1202B0, MEMORY[0x1E6980D50], MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A52FC9F0;
  v38 = sub_1A524A084();
  *(inited + 32) = v38;
  v39 = sub_1A524A0B4();
  *(inited + 33) = v39;
  v40 = sub_1A524A0A4();
  sub_1A524A0A4();
  v41 = sub_1A524A0A4();
  v42 = v92;
  if (v41 != v38)
  {
    v40 = sub_1A524A0A4();
  }

  sub_1A524A0A4();
  v43 = v28;
  if (sub_1A524A0A4() != v39)
  {
    v40 = sub_1A524A0A4();
  }

  v44 = v94;
  v45 = v95;
  sub_1A3EBFE28();
  sub_1A5247BC4();
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v53 = v52;
  sub_1A3EC28BC(v24, v28);
  v54 = &v28[*(v45 + 36)];
  *v54 = v40;
  *(v54 + 1) = v47;
  *(v54 + 2) = v49;
  *(v54 + 3) = v51;
  *(v54 + 4) = v53;
  v54[40] = 0;
  v55 = v44[13];
  v55(v42, *MEMORY[0x1E697E718], v10);
  v56 = v93;
  v55(v93, *MEMORY[0x1E697E708], v10);
  sub_1A3EC1C40(&qword_1EB1288D0, MEMORY[0x1E697E730], MEMORY[0x1E697E748]);
  result = sub_1A524C544();
  if (result)
  {
    v58 = v44[4];
    v59 = v76;
    v58(v76, v42, v10);
    v92 = v43;
    v60 = v81;
    v58((v59 + *(v81 + 48)), v56, v10);
    v61 = v77;
    sub_1A3EC2950(v59, v77, sub_1A3EC2854);
    v62 = *(v60 + 48);
    v94 = v31;
    v63 = v79;
    v58(v79, v61, v10);
    v64 = v44[1];
    v64(v61 + v62, v10);
    sub_1A3EC2BD4(v59, v61, sub_1A3EC2854);
    v65 = v83;
    v58((v63 + *(v83 + 36)), (v61 + *(v60 + 48)), v10);
    v64(v61, v10);
    v66 = sub_1A3EC1BC0(&qword_1EB12DFD8, sub_1A3EC1760, sub_1A3EC1AA8);
    v67 = sub_1A3EC1C40(&qword_1EB126FC0, sub_1A3EC1A14, MEMORY[0x1E69E5FB8]);
    v68 = v78;
    v69 = v95;
    v70 = v92;
    sub_1A524AB84();
    sub_1A3EC27F4(v63, sub_1A3EC1A14);
    sub_1A3EC27F4(v70, sub_1A3EC1760);
    v71 = v86;
    sub_1A3EC2950(v94, v86, type metadata accessor for LemonadeMemoryCellPlayButtonView);
    v72 = (*(v84 + 80) + 16) & ~*(v84 + 80);
    v73 = swift_allocObject();
    sub_1A3EC2BD4(v71, v73 + v72, type metadata accessor for LemonadeMemoryCellPlayButtonView);
    v74 = v87;
    sub_1A5249AA4();
    v96 = v69;
    v97 = v65;
    v98 = v66;
    v99 = v67;
    swift_getOpaqueTypeConformance2();
    v75 = v82;
    sub_1A524AD34();

    (*(v89 + 8))(v74, v90);
    return (*(v80 + 8))(v68, v75);
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_1A3EBFABC()
{
  sub_1A3EC1F48(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A5249234();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3EC2038(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v26 - v9;
  v11 = sub_1A5242D14();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for LemonadeMemoryCellPlayButtonView(0);
  sub_1A3D61D44(&v0[*(v15 + 32)], v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = *(v12 + 32);
    v16(v14, v10, v11);
  }

  else
  {
    v17 = sub_1A524D254();
    v18 = sub_1A524A014();
    v27 = v4;
    v19 = v18;
    sub_1A5246DF4(v17, &dword_1A3C1C000, v18, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v27);
    v16 = *(v12 + 32);
  }

  v20 = *v0;
  v16(v3, v14, v11);
  v21 = (*(v12 + 88))(v3, v11);
  v22.n128_u64[0] = 0x4042000000000000;
  v23.n128_u64[0] = 0x4046000000000000;
  if (!(v20 & 1 | (v21 == *MEMORY[0x1E69C21F0])))
  {
    v23.n128_f64[0] = 36.0;
  }

  if (v21 == *MEMORY[0x1E69C21F8])
  {
    v24 = 36.0;
  }

  else
  {
    v24 = v23.n128_f64[0];
  }

  (*(v12 + 8))(v3, v11, v22, v23);
  return v24;
}

double sub_1A3EBFE28()
{
  sub_1A3EC1F48(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A5249234();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3EC2038(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v26 - v9;
  v11 = sub_1A5242D14();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for LemonadeMemoryCellPlayButtonView(0);
  sub_1A3D61D44(&v0[*(v15 + 32)], v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = *(v12 + 32);
    v16(v14, v10, v11);
  }

  else
  {
    v17 = sub_1A524D254();
    v18 = sub_1A524A014();
    v27 = v4;
    v19 = v18;
    sub_1A5246DF4(v17, &dword_1A3C1C000, v18, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v27);
    v16 = *(v12 + 32);
  }

  v20 = *v0;
  v16(v3, v14, v11);
  v21 = (*(v12 + 88))(v3, v11);
  v22.n128_u64[0] = 14.0;
  v23.n128_u64[0] = 16.0;
  if (!(v20 & 1 | (v21 == *MEMORY[0x1E69C21F0])))
  {
    v23.n128_f64[0] = 14.0;
  }

  if (v21 == *MEMORY[0x1E69C21F8])
  {
    v24 = 14.0;
  }

  else
  {
    v24 = v23.n128_f64[0];
  }

  (*(v12 + 8))(v3, v11, v22, v23);
  return v24;
}

uint64_t sub_1A3EC018C(uint64_t a1)
{
  sub_1A3EC2B6C(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v34 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A5249234();
  v32 = *(v4 - 8);
  v33 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A5246F24();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3EC2BA0(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for LemonadeNavigationDestination(0);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a1 + 24))(v16);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1A3EC27F4(v13, sub_1A3EC2BA0);
    v19 = sub_1A3C38A40();
    (*(v8 + 16))(v10, v19, v7);
    v20 = sub_1A5246F04();
    v21 = sub_1A524D244();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1A3C1C000, v20, v21, "Failed to navigate by the play button: destination is nil", v22, 2u);
      MEMORY[0x1A590EEC0](v22, -1, -1);
    }

    return (*(v8 + 8))(v10, v7);
  }

  else
  {
    sub_1A3EC2BD4(v13, v18, type metadata accessor for LemonadeNavigationDestination);
    v24 = *(a1 + 40);
    v25 = *(a1 + 48);

    if ((v25 & 1) == 0)
    {
      v26 = sub_1A524D254();
      v27 = sub_1A524A014();
      sub_1A5246DF4(v26, &dword_1A3C1C000, v27, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

      sub_1A5249224();
      swift_getAtKeyPath();
      j__swift_release(v24);
      (*(v32 + 8))(v6, v33);
      v24 = v35;
    }

    if (v24)
    {
      v28 = sub_1A52434D4();
      v29 = v34;
      (*(*(v28 - 8) + 56))(v34, 1, 1, v28);
      v30 = sub_1A3C30368();
      v31 = sub_1A4657324(v18, 0, v30 & 1, 0, 0, v29, 0, 0);

      sub_1A3E00630(v31);
      sub_1A3EC27F4(v29, sub_1A3EC2B6C);
    }

    return sub_1A3EC27F4(v18, type metadata accessor for LemonadeNavigationDestination);
  }
}

uint64_t sub_1A3EC0634@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = a1 & 1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  *(a6 + 40) = swift_getKeyPath();
  *(a6 + 48) = 0;
  v7 = *(type metadata accessor for LemonadeMemoryCellPlayButtonView(0) + 32);
  *(a6 + v7) = swift_getKeyPath();
  sub_1A3EC2038(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);

  return swift_storeEnumTagMultiPayload();
}

void sub_1A3EC06E8(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1 - 8);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - v9;
  v19 = sub_1A3EC14B4(*(v2 + 40), *(v2 + 48));
  v20 = v2;
  sub_1A3EC2950(v2, v10, type metadata accessor for LemonadeMemoryCellPlayButtonView);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  sub_1A3EC2BD4(v10, v12 + v11, type metadata accessor for LemonadeMemoryCellPlayButtonView);
  sub_1A3EC2950(v3, v7, type metadata accessor for LemonadeMemoryCellPlayButtonView);
  v13 = swift_allocObject();
  sub_1A3EC2BD4(v7, v13 + v11, type metadata accessor for LemonadeMemoryCellPlayButtonView);
  sub_1A3EC17F0(0, &qword_1EB12DFB8, sub_1A3EC1654, MEMORY[0x1E697CBE8]);
  v15 = v14;
  v16 = sub_1A3EC1C88();
  sub_1A472916C(v19, sub_1A3EC2C44, sub_1A3EC2C3C, v12, sub_1A3EC2C40, v13, v15, a2, v16);
  sub_1A3EC17F0(0, &qword_1EB12DFF0, sub_1A3EC1E20, sub_1A3EC1EB4);
  *(a2 + *(v17 + 36)) = 0;
}

uint64_t sub_1A3EC0954@<X0>(uint64_t *a1@<X8>)
{
  sub_1A524A044();
  sub_1A3EC2400(0);
  a1[3] = v3;
  a1[4] = sub_1A3EC1C40(&qword_1EB12E080, sub_1A3EC2400, MEMORY[0x1E697BE60]);
  __swift_allocate_boxed_opaque_existential_1(a1);
  sub_1A3EC2494(0);
  sub_1A3EC1C40(&qword_1EB12E078, sub_1A3EC2494, MEMORY[0x1E6981870]);
  return sub_1A5247D14();
}

uint64_t sub_1A3EC0A44@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_1A5249574();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  sub_1A3EC278C(0);
  return sub_1A3EC0A88(a1 + *(v3 + 44));
}

uint64_t sub_1A3EC0A88@<X0>(uint64_t a1@<X8>)
{
  v88 = a1;
  sub_1A3EC2724(0);
  v86 = v1 - 8;
  MEMORY[0x1EEE9AC00](v1 - 8);
  v87 = &v81 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v83 = &v81 - v4;
  v104 = sub_1A524B394();
  v5 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v7 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3EC25D0(0);
  v9 = v8 - 8;
  v93 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v85 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v84 = &v81 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v89 = &v81 - v14;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v81 - v17;
  v102 = *MEMORY[0x1E69814D8];
  v19 = *(v5 + 104);
  v103 = v5 + 104;
  v105 = v19;
  v19(v7, v16);
  v92 = sub_1A524B4C4();
  sub_1A524BC74();
  sub_1A52481F4();
  v20 = v106;
  v21 = v107;
  v22 = v108;
  v23 = v109;
  v91 = v110;
  v90 = v111;
  sub_1A3EC2604(0);
  v101 = v24;
  v25 = &v18[*(v24 + 36)];
  v100 = sub_1A5248A14();
  v26 = *(v100 + 20);
  v98 = *MEMORY[0x1E697F468];
  v27 = v98;
  v97 = sub_1A52494A4();
  v28 = *(v97 - 8);
  v96 = *(v28 + 104);
  v99 = v28 + 104;
  v96(&v25->i8[v26], v27, v97);
  v95 = vdupq_n_s64(0x4040000000000000uLL);
  *v25 = v95;
  sub_1A3E42C88(0);
  v94 = v29;
  *(v25->i16 + *(v29 + 36)) = 256;
  *v18 = v92;
  *(v18 + 1) = v20;
  v18[16] = v21;
  *(v18 + 3) = v22;
  v18[32] = v23;
  v30 = v90;
  *(v18 + 5) = v91;
  *(v18 + 6) = v30;
  v31 = sub_1A524BC34();
  v33 = v32;
  v34 = &v18[*(v9 + 44)];
  *v34 = 0;
  *(v34 + 1) = 0;
  *(v34 + 2) = 0;
  *(v34 + 3) = sub_1A3DBF244;
  *(v34 + 4) = 0;
  *(v34 + 5) = swift_getKeyPath();
  v34[48] = 0;
  v92 = type metadata accessor for LemonadeMemoryCellPlayButtonView(0);
  v35 = *(v92 + 32);
  *&v34[v35] = swift_getKeyPath();
  sub_1A3EC2038(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);
  v91 = v36;
  swift_storeEnumTagMultiPayload();
  sub_1A3EC2690(0);
  v90 = v37;
  v38 = &v34[*(v37 + 36)];
  *v38 = v31;
  v38[1] = v33;
  v82 = v7;
  v105(v7, v102, v104);
  v39 = sub_1A524B4C4();
  sub_1A524BC74();
  sub_1A52481F4();
  v40 = v112;
  LOBYTE(v35) = v113;
  v41 = v114;
  LOBYTE(v31) = v115;
  v42 = v116;
  v43 = v117;
  v44 = v89;
  v45 = (v89 + *(v101 + 36));
  v96(&v45->i8[*(v100 + 20)], v98, v97);
  *v45 = v95;
  *(v45->i16 + *(v94 + 36)) = 256;
  *v44 = v39;
  *(v44 + 8) = v40;
  *(v44 + 16) = v35;
  *(v44 + 24) = v41;
  *(v44 + 32) = v31;
  *(v44 + 40) = v42;
  *(v44 + 48) = v43;
  v46 = sub_1A524BC34();
  v48 = v47;
  v49 = v44 + *(v93 + 44);
  *v49 = 1;
  *(v49 + 8) = 0;
  *(v49 + 16) = 0;
  *(v49 + 24) = sub_1A3D65CF4;
  *(v49 + 32) = 0;
  *(v49 + 40) = swift_getKeyPath();
  *(v49 + 48) = 0;
  v50 = *(v92 + 32);
  *(v49 + v50) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v51 = (v49 + *(v90 + 36));
  *v51 = v46;
  v51[1] = v48;
  v105(v82, v102, v104);
  v52 = sub_1A524B4C4();
  sub_1A524BC74();
  sub_1A52481F4();
  v53 = v118;
  LOBYTE(v45) = v119;
  v54 = v120;
  LOBYTE(v42) = v121;
  v55 = v122;
  v56 = v123;
  v57 = v83;
  v58 = &v83[*(v101 + 36)];
  v96(&v58->i8[*(v100 + 20)], v98, v97);
  *v58 = v95;
  *(v58->i16 + *(v94 + 36)) = 256;
  *v57 = v52;
  *(v57 + 1) = v53;
  v57[16] = v45;
  *(v57 + 3) = v54;
  v57[32] = v42;
  *(v57 + 5) = v55;
  *(v57 + 6) = v56;
  v59 = v57;
  v60 = sub_1A524BC34();
  v62 = v61;
  v63 = &v57[*(v93 + 44)];
  *v63 = 0;
  *(v63 + 1) = 0;
  *(v63 + 2) = 0;
  *(v63 + 3) = sub_1A3DBF244;
  *(v63 + 4) = 0;
  *(v63 + 5) = swift_getKeyPath();
  v63[48] = 0;
  v64 = *(v92 + 32);
  *&v63[v64] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v65 = &v63[*(v90 + 36)];
  *v65 = v60;
  v65[1] = v62;
  KeyPath = swift_getKeyPath();
  v67 = &v57[*(v86 + 44)];
  sub_1A3EC2758(0);
  v69 = *(v68 + 28);
  v70 = *MEMORY[0x1E69C21F0];
  v71 = sub_1A5242D14();
  (*(*(v71 - 8) + 104))(v67 + v69, v70, v71);
  *v67 = KeyPath;
  v72 = v84;
  sub_1A3EC2950(v18, v84, sub_1A3EC25D0);
  v73 = v89;
  v74 = v85;
  sub_1A3EC2950(v89, v85, sub_1A3EC25D0);
  v75 = v87;
  sub_1A3EC2950(v59, v87, sub_1A3EC2724);
  v76 = v88;
  sub_1A3EC2950(v72, v88, sub_1A3EC25D0);
  sub_1A3EC255C(0, v77);
  v79 = v78;
  sub_1A3EC2950(v74, v76 + *(v78 + 48), sub_1A3EC25D0);
  sub_1A3EC2950(v75, v76 + *(v79 + 64), sub_1A3EC2724);
  sub_1A3EC27F4(v59, sub_1A3EC2724);
  sub_1A3EC27F4(v73, sub_1A3EC25D0);
  sub_1A3EC27F4(v18, sub_1A3EC25D0);
  sub_1A3EC27F4(v75, sub_1A3EC2724);
  sub_1A3EC27F4(v74, sub_1A3EC25D0);
  return sub_1A3EC27F4(v72, sub_1A3EC25D0);
}

uint64_t sub_1A3EC13D0@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for LemonadeNavigationDestination(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_1A3EC14B4(uint64_t a1, char a2)
{
  v4 = sub_1A5249234();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    v8 = sub_1A524D254();
    v9 = sub_1A524A014();
    sub_1A5246DF4(v8, &dword_1A3C1C000, v9, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();
    j__swift_release(a1);
    (*(v5 + 8))(v7, v4);
    return v11[1];
  }

  return a1;
}

uint64_t type metadata accessor for LemonadeMemoryCellPlayButtonView(uint64_t a1)
{
  result = qword_1EB19A990;
  if (!qword_1EB19A990)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A3EC1654(uint64_t a1, double a2)
{
  if (!qword_1EB12DFC0)
  {
    sub_1A3EC1760(255, a2);
    sub_1A3EC1A14(255);
    sub_1A3EC1BC0(&qword_1EB12DFD8, sub_1A3EC1760, sub_1A3EC1AA8);
    sub_1A3EC1C40(&qword_1EB126FC0, sub_1A3EC1A14, MEMORY[0x1E69E5FB8]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB12DFC0);
    }
  }
}

void sub_1A3EC1760(uint64_t a1, double a2)
{
  if (!qword_1EB12DFC8)
  {
    sub_1A3EC17F0(255, &qword_1EB12DFD0, sub_1A3EC1864, sub_1A3EC1940);
    v2 = sub_1A5248804();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB12DFC8);
    }
  }
}

void sub_1A3EC17F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_1A5248804();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A3EC1864(uint64_t a1)
{
  if (!qword_1EB1282E0)
  {
    sub_1A3E352FC(255);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1282E0);
    }
  }
}

void sub_1A3EC18C4(uint64_t a1)
{
  if (!qword_1EB127820)
  {
    sub_1A3C371A0(255, &qword_1EB1276A0, MEMORY[0x1E6980F50], MEMORY[0x1E69E6720]);
    v1 = sub_1A5249F44();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB127820);
    }
  }
}

void sub_1A3EC1940(uint64_t a1)
{
  if (!qword_1EB122080)
  {
    sub_1A524BBF4();
    sub_1A3EC19C0();
    v1 = sub_1A5249FC4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB122080);
    }
  }
}

unint64_t sub_1A3EC19C0()
{
  result = qword_1EB121A30;
  if (!qword_1EB121A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB121A30);
  }

  return result;
}

void sub_1A3EC1A14(uint64_t a1)
{
  if (!qword_1EB126FC8)
  {
    sub_1A52486A4();
    sub_1A3EC1C40(&qword_1EB1288D0, MEMORY[0x1E697E730], MEMORY[0x1E697E748]);
    v1 = sub_1A524C574();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB126FC8);
    }
  }
}

unint64_t sub_1A3EC1AA8()
{
  result = qword_1EB12DFE0;
  if (!qword_1EB12DFE0)
  {
    sub_1A3EC17F0(255, &qword_1EB12DFD0, sub_1A3EC1864, sub_1A3EC1940);
    sub_1A3EC1BC0(&qword_1EB1282E8, sub_1A3EC1864, sub_1A3E4509C);
    sub_1A3EC1C40(&qword_1EB122088, sub_1A3EC1940, MEMORY[0x1E6980BA8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12DFE0);
  }

  return result;
}

uint64_t sub_1A3EC1BC0(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A3EC1C40(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1A3EC1C88()
{
  result = qword_1EB12DFE8;
  if (!qword_1EB12DFE8)
  {
    sub_1A3EC17F0(255, &qword_1EB12DFB8, sub_1A3EC1654, MEMORY[0x1E697CBE8]);
    sub_1A3EC1760(255, v1);
    sub_1A3EC1A14(255);
    sub_1A3EC1BC0(&qword_1EB12DFD8, sub_1A3EC1760, sub_1A3EC1AA8);
    sub_1A3EC1C40(&qword_1EB126FC0, sub_1A3EC1A14, MEMORY[0x1E69E5FB8]);
    swift_getOpaqueTypeConformance2();
    sub_1A3EC1C40(&qword_1EB127710, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12DFE8);
  }

  return result;
}

void sub_1A3EC1E20(uint64_t a1)
{
  if (!qword_1EB12DFF8)
  {
    sub_1A3EC17F0(255, &qword_1EB12DFB8, sub_1A3EC1654, MEMORY[0x1E697CBE8]);
    v3 = v2;
    v4 = sub_1A3EC1C88();
    v6 = type metadata accessor for LemonadeDetailsNavigationButton(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_1EB12DFF8);
    }
  }
}

void sub_1A3EC1EB4(uint64_t a1)
{
  if (!qword_1EB127A70)
  {
    sub_1A5243A04();
    sub_1A3EC1C40(&qword_1EB129040, MEMORY[0x1E69C2770], MEMORY[0x1E69C2768]);
    v1 = sub_1A5249DC4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB127A70);
    }
  }
}

void sub_1A3EC1F48(uint64_t a1)
{
  if (!qword_1EB12E000)
  {
    sub_1A5242D14();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB12E000);
    }
  }
}

unint64_t sub_1A3EC1FB4()
{
  result = qword_1EB12E008;
  if (!qword_1EB12E008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12E008);
  }

  return result;
}

void sub_1A3EC2038(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A3EC20B0(uint64_t a1)
{
  sub_1A3C371A0(319, &qword_1EB126FA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1A3C3637C();
    if (v2 <= 0x3F)
    {
      sub_1A3EC2038(319, &unk_1EB1247C0, sub_1A3D639F0, MEMORY[0x1E697DCC0]);
      if (v3 <= 0x3F)
      {
        sub_1A3EC2038(319, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_1A3EC2218()
{
  result = qword_1EB12E010;
  if (!qword_1EB12E010)
  {
    sub_1A3EC17F0(255, &qword_1EB12DFF0, sub_1A3EC1E20, sub_1A3EC1EB4);
    sub_1A3EC1C40(&qword_1EB12E018, sub_1A3EC1E20, &unk_1A535BA5C);
    sub_1A3EC1C40(&qword_1EB127A80, sub_1A3EC1EB4, MEMORY[0x1E6980758]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12E010);
  }

  return result;
}

void sub_1A3EC2400(uint64_t a1)
{
  if (!qword_1EB12E020)
  {
    sub_1A3EC2494(255);
    sub_1A3EC1C40(&qword_1EB12E078, sub_1A3EC2494, MEMORY[0x1E6981870]);
    v1 = sub_1A5247D04();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB12E020);
    }
  }
}

void sub_1A3EC2494(uint64_t a1)
{
  if (!qword_1EB12E028)
  {
    sub_1A3EC2528(255);
    sub_1A3EC1C40(&qword_1EB12E070, sub_1A3EC2528, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B894();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB12E028);
    }
  }
}

void sub_1A3EC255C(uint64_t a1, double a2)
{
  if (!qword_1EB12E038)
  {
    sub_1A3EC25D0(255);
    sub_1A3EC2724(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB12E038);
    }
  }
}

void sub_1A3EC2638()
{
  if (!qword_1EB128608)
  {
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB128608);
    }
  }
}

void sub_1A3EC2690(uint64_t a1)
{
  if (!qword_1EB12E050)
  {
    type metadata accessor for LemonadeMemoryCellPlayButtonView(255);
    sub_1A3EC1C40(&qword_1EB12E058, type metadata accessor for LemonadeMemoryCellPlayButtonView, &unk_1A5304F30);
    v1 = sub_1A5248AE4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB12E050);
    }
  }
}

void sub_1A3EC278C(uint64_t a1)
{
  if (!qword_1EB12E088)
  {
    sub_1A3EC2528(255);
    v1 = sub_1A52483B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB12E088);
    }
  }
}

uint64_t sub_1A3EC27F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A3EC2854(uint64_t a1)
{
  if (!qword_1EB1288D8)
  {
    sub_1A52486A4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB1288D8);
    }
  }
}

uint64_t sub_1A3EC28BC(uint64_t a1, uint64_t a2)
{
  sub_1A3EC17F0(0, &qword_1EB12DFD0, sub_1A3EC1864, sub_1A3EC1940);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3EC2950(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroyTm_9()
{
  v1 = (type metadata accessor for LemonadeMemoryCellPlayButtonView(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  j__swift_release(*(v2 + 40));
  v3 = v1[10];
  sub_1A3EC2038(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1A5242D14();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A3EC2B0C()
{
  v1 = *(type metadata accessor for LemonadeMemoryCellPlayButtonView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1A3EC018C(v2);
}

uint64_t sub_1A3EC2BD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A3EC2C48@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1A5249234();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E31270(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3EC6674(v2, v10, sub_1A3E31270);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1A52486A4();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    v13 = sub_1A524D254();
    v14 = sub_1A524A014();
    sub_1A5246DF4(v13, &dword_1A3C1C000, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t type metadata accessor for PhotosDetailsNoLocationWidgetView(uint64_t a1)
{
  result = qword_1EB19AAC0;
  if (!qword_1EB19AAC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A3EC2E88@<X0>(uint64_t *a2@<X8>)
{
  *a2 = swift_getKeyPath();
  sub_1A3E31270(0);
  swift_storeEnumTagMultiPayload();
  v3 = type metadata accessor for PhotosDetailsNoLocationWidgetView(0);
  v4 = a2 + *(v3 + 24);
  sub_1A524B694();
  *v4 = v8;
  *(v4 + 1) = v9;
  v5 = (a2 + *(v3 + 20));
  type metadata accessor for PhotosDetailsNoLocationWidgetViewModel(0);
  sub_1A3EC4434(&qword_1EB12E090, type metadata accessor for PhotosDetailsNoLocationWidgetViewModel, &unk_1A533DFE8);
  result = sub_1A5248494();
  *v5 = result;
  v5[1] = v7;
  return result;
}

uint64_t sub_1A3EC2F7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A3EC659C(0, &qword_1EB12E188, sub_1A3EC39FC, MEMORY[0x1E6981E70], MEMORY[0x1E697F948]);
  v5 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v74 - v6;
  v8 = type metadata accessor for PhotosDetailsNoLocationWidgetView(0);
  v82 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v84 = v9;
  v85 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_1A5249764();
  v80 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v79 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1A52486A4();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3EC3C58(0);
  v81 = v15;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = (&v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A3EC3B84(0, v16);
  v87 = v19;
  v83 = *(v19 - 8);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v92 = &v74 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3EC3A30(0, v20);
  v91 = v22;
  v89 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v88 = &v74 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3EC39FC(0);
  v93 = v24;
  MEMORY[0x1EEE9AC00](v24);
  v90 = &v74 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a1;
  if (sub_1A48C7A6C())
  {
    swift_storeEnumTagMultiPayload();
    sub_1A3EC63EC();
    return sub_1A5249744();
  }

  else
  {
    *v18 = sub_1A524BC74();
    v18[1] = v28;
    sub_1A3EC6608(0, &qword_1EB12E190, sub_1A3EC3DF0, MEMORY[0x1E697E330], MEMORY[0x1E697E320]);
    sub_1A3EC46A0(a1, v18 + *(v29 + 44));
    sub_1A3EC3CE8(0, &qword_1EB12E0C8, sub_1A3EC3D5C, sub_1A3EC447C);
    v31 = *(v30 + 36);
    v78 = a2;
    v32 = v18 + v31;
    v33 = sub_1A5248A14();
    v77 = v7;
    v34 = *(v33 + 20);
    v35 = *MEMORY[0x1E697F468];
    v36 = sub_1A52494A4();
    (*(*(v36 - 8) + 104))(&v32[v34], v35, v36);
    __asm { FMOV            V0.2D, #16.0 }

    *v32 = _Q0;
    sub_1A3EC447C(0);
    v32[*(v42 + 36)] = 0;
    sub_1A3EC2C48(v14);
    sub_1A4394B64(v14, v8, &off_1EE6D6B40);
    v76 = v5;
    v43 = *(v12 + 8);
    v43(v14, v11);
    sub_1A3EC2C48(v14);
    v44 = sub_1A4394B64(v14, v8, &off_1EE6D6B40);
    (v43)(v14, v11, v44);
    sub_1A524BC74();
    sub_1A52481F4();
    v45 = v81;
    v46 = (v18 + *(v81 + 36));
    v47 = v101;
    *v46 = v100;
    v46[1] = v47;
    v46[2] = v102;
    v48 = v79;
    sub_1A5248B84();
    v75 = sub_1A3EC4510();
    v49 = sub_1A3EC4434(&qword_1EB122360, MEMORY[0x1E697C658], MEMORY[0x1E697C650]);
    v50 = v86;
    sub_1A524A974();
    (*(v80 + 8))(v48, v50);
    sub_1A3EC67A4(v18, sub_1A3EC3C58);
    v51 = v26 + *(v8 + 24);
    v52 = *v51;
    v53 = *(v51 + 8);
    v98 = v52;
    v99 = v53;
    sub_1A3EC6A68(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
    sub_1A524B6C4();
    v54 = v85;
    sub_1A3EC6674(v26, v85, type metadata accessor for PhotosDetailsNoLocationWidgetView);
    v55 = (*(v82 + 80) + 16) & ~*(v82 + 80);
    v56 = swift_allocObject();
    sub_1A3EC66DC(v54, v56 + v55);
    v85 = type metadata accessor for PhotosDetailsSearchView(0);
    v94 = v45;
    v95 = v50;
    v96 = v75;
    v97 = v49;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v73 = sub_1A3EC4434(&qword_1EB13C5C0, type metadata accessor for PhotosDetailsSearchView, &unk_1A537A27C);
    v57 = v88;
    v58 = v87;
    v59 = v92;
    sub_1A524AFF4();

    (*(v83 + 8))(v59, v58);
    v60 = sub_1A524C634();
    v61 = PXLocalizedString(v60);

    v62 = sub_1A524C674();
    v64 = v63;

    v94 = v62;
    v95 = v64;
    sub_1A3D5F9DC();
    v65 = sub_1A524A464();
    v67 = v66;
    v69 = v68;
    v94 = v58;
    v95 = v85;
    v96 = OpaqueTypeConformance2;
    v97 = v73;
    swift_getOpaqueTypeConformance2();
    v71 = v90;
    v70 = v91;
    sub_1A524AC04();
    sub_1A3E04DF4(v65, v67, v69 & 1);

    (*(v89 + 8))(v57, v70);
    sub_1A3EC6B7C(v71, v77, sub_1A3EC39FC);
    swift_storeEnumTagMultiPayload();
    sub_1A3EC63EC();
    sub_1A5249744();
    return sub_1A3EC67A4(v71, sub_1A3EC39FC);
  }
}

void sub_1A3EC3A30(uint64_t a1, double a2)
{
  if (!qword_1EB12E0B0)
  {
    sub_1A3EC3B84(255, a2);
    type metadata accessor for PhotosDetailsSearchView(255);
    sub_1A3EC3C58(255);
    sub_1A5249764();
    sub_1A3EC4510();
    sub_1A3EC4434(&qword_1EB122360, MEMORY[0x1E697C658], MEMORY[0x1E697C650]);
    swift_getOpaqueTypeConformance2();
    sub_1A3EC4434(&qword_1EB13C5C0, type metadata accessor for PhotosDetailsSearchView, &unk_1A537A27C);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB12E0B0);
    }
  }
}

void sub_1A3EC3B84(uint64_t a1, double a2)
{
  if (!qword_1EB12E0B8)
  {
    sub_1A3EC3C58(255);
    sub_1A5249764();
    sub_1A3EC4510();
    sub_1A3EC4434(&qword_1EB122360, MEMORY[0x1E697C658], MEMORY[0x1E697C650]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB12E0B8);
    }
  }
}

void sub_1A3EC3C58(uint64_t a1)
{
  if (!qword_1EB12E0C0)
  {
    sub_1A3EC3CE8(255, &qword_1EB12E0C8, sub_1A3EC3D5C, sub_1A3EC447C);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB12E0C0);
    }
  }
}

void sub_1A3EC3CE8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_1A5248804();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A3EC3D5C(uint64_t a1)
{
  if (!qword_1EB12E0D0)
  {
    sub_1A3EC3DF0(255);
    sub_1A3EC4434(&qword_1EB12E140, sub_1A3EC3DF0, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B8B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB12E0D0);
    }
  }
}

void sub_1A3EC3E68(uint64_t a1, uint64_t a2)
{
  if (!qword_1EB125E98)
  {
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB125E98);
    }
  }
}

void sub_1A3EC3F04(uint64_t a1)
{
  if (!qword_1EB12E0F0)
  {
    sub_1A3EC4008(255);
    sub_1A52489A4();
    sub_1A3EC4434(&qword_1EB12E138, sub_1A3EC4008, MEMORY[0x1E697D680]);
    sub_1A3EC4434(&qword_1EB122F70, MEMORY[0x1E697C248], MEMORY[0x1E697C240]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB12E0F0);
    }
  }
}

void sub_1A3EC4008(uint64_t a1)
{
  if (!qword_1EB12E0F8)
  {
    sub_1A3EC409C(255);
    sub_1A3EC4434(&qword_1EB12E130, sub_1A3EC409C, MEMORY[0x1E6981870]);
    v1 = sub_1A524B764();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB12E0F8);
    }
  }
}

void sub_1A3EC409C(uint64_t a1)
{
  if (!qword_1EB12E100)
  {
    sub_1A3EC4130(255);
    sub_1A3EC4434(&qword_1EB12E128, sub_1A3EC4130, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B894();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB12E100);
    }
  }
}

void sub_1A3EC416C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_1A3EC41C8(255, a3, a4, a5);
    v6 = sub_1A524BE24();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A3EC41C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1A3EC4244(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1A3EC6A68(255, a3, a4, MEMORY[0x1E69E6720]);
    v5 = sub_1A5249F44();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A3EC42B0(uint64_t a1)
{
  if (!qword_1EB12E118)
  {
    sub_1A3EC4330(255);
    sub_1A3EC4244(255, &qword_1EB1277F0, &qword_1EB127560, MEMORY[0x1E69815C0]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB12E118);
    }
  }
}

void sub_1A3EC4330(uint64_t a1)
{
  if (!qword_1EB12E120)
  {
    sub_1A3EC43B0(255);
    sub_1A3EC4244(255, &qword_1EB127820, &qword_1EB1276A0, MEMORY[0x1E6980F50]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB12E120);
    }
  }
}

void sub_1A3EC43B0(uint64_t a1)
{
  if (!qword_1EB1286E0)
  {
    sub_1A3EC6A68(255, &unk_1EB127840, MEMORY[0x1E697E1E0], MEMORY[0x1E6980A08]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1286E0);
    }
  }
}

uint64_t sub_1A3EC4434(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1A3EC447C(uint64_t a1)
{
  if (!qword_1EB122300)
  {
    sub_1A5248A14();
    sub_1A3EC4434(&qword_1EB128080, MEMORY[0x1E697EAF0], MEMORY[0x1E697EAE0]);
    v1 = sub_1A52499A4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB122300);
    }
  }
}

unint64_t sub_1A3EC4510()
{
  result = qword_1EB12E148;
  if (!qword_1EB12E148)
  {
    sub_1A3EC3C58(255);
    sub_1A3EC4590();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12E148);
  }

  return result;
}

unint64_t sub_1A3EC4590()
{
  result = qword_1EB12E150;
  if (!qword_1EB12E150)
  {
    sub_1A3EC3CE8(255, &qword_1EB12E0C8, sub_1A3EC3D5C, sub_1A3EC447C);
    sub_1A3EC4434(&qword_1EB12E158, sub_1A3EC3D5C, MEMORY[0x1E6981880]);
    sub_1A3EC4434(&qword_1EB122308, sub_1A3EC447C, MEMORY[0x1E697FD58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12E150);
  }

  return result;
}

uint64_t sub_1A3EC46A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a2;
  v66 = sub_1A52489A4();
  v68 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v62 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PhotosDetailsNoLocationWidgetView(0);
  v58 = *(v4 - 8);
  v57 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v55 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3EC4008(0);
  v7 = *(v6 - 8);
  v63 = v6;
  v64 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v59 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3EC3EC8(0);
  v65 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9 - 8);
  v67 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v60 = &v53 - v12;
  v13 = sub_1A52486A4();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3EC3E2C(0);
  v18 = v17 - 8;
  MEMORY[0x1EEE9AC00](v17);
  v61 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v54 = &v53 - v21;
  v56 = *(a1 + *(v4 + 20) + 8);
  sub_1A4110614(v56);
  sub_1A3EC2C48(v16);
  sub_1A4394B64(v16, v4, &off_1EE6D6B40);
  v22 = *(v14 + 8);
  v22(v16, v13);
  sub_1A3EC2C48(v16);
  v23 = sub_1A4394B64(v16, v4, &off_1EE6D6B40);
  (v22)(v16, v13, v23);
  sub_1A524BC74();
  sub_1A52481F4();
  v24 = v54;
  v25 = &v54[*(v18 + 44)];
  v26 = v71;
  *v25 = v70;
  *(v25 + 1) = v26;
  *(v25 + 2) = v72;
  v27 = v55;
  sub_1A3EC6674(a1, v55, type metadata accessor for PhotosDetailsNoLocationWidgetView);
  v28 = (*(v58 + 80) + 16) & ~*(v58 + 80);
  v29 = swift_allocObject();
  sub_1A3EC66DC(v27, v29 + v28);
  sub_1A3EC409C(0);
  sub_1A3EC4434(&qword_1EB12E130, sub_1A3EC409C, MEMORY[0x1E6981870]);
  v30 = v59;
  sub_1A524B704();
  v31 = v62;
  sub_1A5248994();
  sub_1A3EC4434(&qword_1EB12E138, sub_1A3EC4008, MEMORY[0x1E697D680]);
  sub_1A3EC4434(&qword_1EB122F70, MEMORY[0x1E697C248], MEMORY[0x1E697C240]);
  v32 = v60;
  v33 = v63;
  v34 = v66;
  sub_1A524A934();
  (*(v68 + 8))(v31, v34);
  v35 = (*(v64 + 8))(v30, v33);
  v36 = (*((*MEMORY[0x1E69E7D40] & *v56) + 0xC0))(v35);
  [v36 contentGuideInsets];

  EdgeInsets.init(_:)();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v45 = sub_1A524A064();
  v46 = v32 + *(v65 + 44);
  *v46 = v45;
  *(v46 + 8) = v38;
  *(v46 + 16) = v40;
  *(v46 + 24) = v42;
  *(v46 + 32) = v44;
  *(v46 + 40) = 0;
  v47 = v61;
  sub_1A3EC6B7C(v24, v61, sub_1A3EC3E2C);
  v48 = v32;
  v49 = v67;
  sub_1A3EC6B7C(v32, v67, sub_1A3EC3EC8);
  v50 = v69;
  sub_1A3EC6B7C(v47, v69, sub_1A3EC3E2C);
  sub_1A3EC41C8(0, &qword_1EB12E0E0, sub_1A3EC3E2C, sub_1A3EC3EC8);
  sub_1A3EC6B7C(v49, v50 + *(v51 + 48), sub_1A3EC3EC8);
  sub_1A3EC67A4(v48, sub_1A3EC3EC8);
  sub_1A3EC67A4(v24, sub_1A3EC3E2C);
  sub_1A3EC67A4(v49, sub_1A3EC3EC8);
  return sub_1A3EC67A4(v47, sub_1A3EC3E2C);
}

double sub_1A3EC4E34@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_1A5249574();
  v18 = 0;
  sub_1A3EC4F68(&v10);
  v23 = v14;
  v24 = v15;
  v25 = v16;
  v19 = v10;
  v20 = v11;
  v21 = v12;
  v22 = v13;
  v26[0] = v10;
  v26[1] = v11;
  v26[2] = v12;
  v26[3] = v13;
  v26[4] = v14;
  v26[5] = v15;
  v27 = v16;
  sub_1A3EC6674(&v19, &v9, sub_1A3EC4130);
  sub_1A3EC6BE4(v26, sub_1A3EC4130);
  *&v17[55] = v22;
  *&v17[71] = v23;
  *&v17[87] = v24;
  *&v17[103] = v25;
  *&v17[7] = v19;
  *&v17[23] = v20;
  *&v17[39] = v21;
  v4 = *&v17[32];
  *(a1 + 65) = *&v17[48];
  v5 = *&v17[80];
  *(a1 + 81) = *&v17[64];
  *(a1 + 97) = v5;
  *(a1 + 112) = *&v17[95];
  result = *v17;
  v7 = *&v17[16];
  *(a1 + 17) = *v17;
  *(a1 + 33) = v7;
  v8 = v18;
  *a1 = v3;
  *(a1 + 8) = 0x4028000000000000;
  *(a1 + 16) = v8;
  *(a1 + 49) = v4;
  return result;
}

double sub_1A3EC4F68@<D0>(uint64_t a1@<X8>)
{
  v40 = sub_1A524A274();
  v2 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v4 = v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E75D84(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_1A524B544();
  v8 = sub_1A524A154();
  v9 = *(v8 - 8);
  v36[0] = *(v9 + 56);
  v36[1] = v9 + 56;
  (v36[0])(v7, 1, 1, v8);
  v42 = sub_1A524A1B4();
  sub_1A3EC6BE4(v7, sub_1A3E75D84);
  KeyPath = swift_getKeyPath();
  v10 = sub_1A524C634();
  v11 = PXLocalizedString(v10);

  v12 = sub_1A524C674();
  v14 = v13;

  v52 = v12;
  v53 = v14;
  sub_1A3D5F9DC();
  v15 = sub_1A524A464();
  v37 = v16;
  v38 = v15;
  LOBYTE(v12) = v17;
  v39 = v18;
  v19 = swift_getKeyPath();
  v20 = v40;
  (*(v2 + 104))(v4, *MEMORY[0x1E6980F18], v40);
  (v36[0])(v7, 1, 1, v8);
  sub_1A524A1A4();
  v21 = sub_1A524A1C4();
  sub_1A3EC6BE4(v7, sub_1A3E75D84);
  (*(v2 + 8))(v4, v20);
  v22 = swift_getKeyPath();
  LOBYTE(v12) = v12 & 1;
  LOBYTE(v52) = v12;
  v23 = sub_1A524B484();
  v24 = swift_getKeyPath();
  v25 = *v46;
  *(&v48 + 1) = *v46;
  DWORD1(v48) = *&v46[3];
  v26 = *v45;
  *(&v49 + 9) = *v45;
  HIDWORD(v49) = *&v45[3];
  v28 = v37;
  v27 = v38;
  *&v47 = v38;
  *(&v47 + 1) = v37;
  LOBYTE(v48) = v12;
  v29 = v39;
  *(&v48 + 1) = v39;
  *&v49 = v19;
  BYTE8(v49) = 1;
  *&v50 = v22;
  *(&v50 + 1) = v21;
  *&v51 = v24;
  *(&v51 + 1) = v23;
  v30 = v42;
  v31 = KeyPath;
  *a1 = v43;
  *(a1 + 8) = v31;
  *(a1 + 16) = v30;
  v32 = v48;
  *(a1 + 24) = v47;
  v33 = v49;
  v34 = v50;
  *(a1 + 88) = v51;
  *(a1 + 72) = v34;
  *(a1 + 56) = v33;
  *(a1 + 40) = v32;
  v52 = v27;
  v53 = v28;
  v54 = v12;
  *&v55[3] = *&v46[3];
  *v55 = v25;
  v56 = v29;
  v57 = v19;
  v58 = 1;
  *&v59[3] = *&v45[3];
  *v59 = v26;
  v60 = v22;
  v61 = v21;
  v62 = v24;
  v63 = v23;

  sub_1A3EC6674(&v47, &v44, sub_1A3EC42B0);
  sub_1A3EC6BE4(&v52, sub_1A3EC42B0);

  return result;
}

void sub_1A3EC538C(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for PhotosDetailsNoLocationWidgetView(0);
  v4 = v3 - 8;
  v47 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v49 = v5;
  *&v50 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_opt_self();
  sub_1A3EC6A68(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1A52F9790;
  v8 = *(v4 + 28);
  *&v51 = v1;
  v9 = *((*MEMORY[0x1E69E7D40] & **(v1 + v8 + 8)) + 0x88);
  *(v7 + 32) = v9();
  sub_1A3C52C70(0, &qword_1EB126660, 0x1E6978630);
  v10 = sub_1A524CA14();

  v11 = [v6 transientAssetCollectionWithAssets:v10 title:0];

  v12 = objc_opt_self();
  v48 = v11;
  v13 = [v12 fetchAssetsInAssetCollection:v11 options:0];
  v14 = v9();
  v15 = [v14 location];

  if (v15 && (v15, v17 = v9(), v18 = [v17 px_singleLineMailingAddress], v17, v18))
  {
    v19 = a1;
    v20 = sub_1A524C674();
    v22 = v21;
  }

  else
  {
    v19 = a1;
    v20 = 0;
    v22 = 0;
  }

  v23 = type metadata accessor for PhotosDetailsLocationSearchDataSource(0, v16);
  v45 = v13;
  v24 = sub_1A3EBC7B4(v45, v15 != 0);
  *(&v53 + 1) = v23;
  v54 = &off_1F16E6170;
  *&v52 = v24;
  v46 = v24;
  v25 = v19;
  sub_1A49CC818(&v52, v20, v22, 1, v19);
  v26 = v51;
  v27 = v50;
  sub_1A3EC6674(v51, v50, type metadata accessor for PhotosDetailsNoLocationWidgetView);
  v28 = *(v47 + 80);
  v29 = swift_allocObject();
  sub_1A3EC66DC(v27, v29 + ((v28 + 16) & ~v28));
  v47 = type metadata accessor for PhotosDetailsSearchView(0);
  v30 = (v25 + *(v47 + 32));
  sub_1A3C784D4(*v30, v30[1]);
  *v30 = sub_1A3EC692C;
  v30[1] = v29;
  sub_1A3C52C70(0, &qword_1EB12E198, off_1E771F520);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v32 = v9();
  LODWORD(ObjCClassFromMetadata) = [ObjCClassFromMetadata canPerformOnAsset:v32 inAssetCollection:0];

  if (ObjCClassFromMetadata)
  {
    v33 = sub_1A524C634();
    v34 = PXLocalizedString(v33);

    v35 = sub_1A524C674();
    v36 = v25;
    v38 = v37;

    v39 = sub_1A524B3B4();
    sub_1A3EC6674(v26, v27, type metadata accessor for PhotosDetailsNoLocationWidgetView);
    v40 = swift_allocObject();
    *(v40 + 16) = v45;
    sub_1A3EC66DC(v27, v40 + ((v28 + 24) & ~v28));
    sub_1A49CC4A4(v35, v38, v39, sub_1A3EC6934, v40, &v52);
    v50 = v53;
    v51 = v52;
    v41 = v54;

    v42 = (v36 + *(v47 + 36));
    sub_1A3EC6998(*v42, v42[1], v42[2], v42[3], v42[4]);
    v43 = v50;
    *v42 = v51;
    *(v42 + 1) = v43;
    v42[4] = v41;
  }

  else
  {
  }
}

void sub_1A3EC588C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotosDetailsNoLocationWidgetView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = [objc_allocWithZone(PXRevertAssetLocationAction) initWithAssets_];
  if (v7)
  {
    v8 = v7;
    sub_1A3EC6674(a2, aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PhotosDetailsNoLocationWidgetView);
    v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v10 = swift_allocObject();
    sub_1A3EC66DC(aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
    aBlock[4] = sub_1A3EC69E8;
    aBlock[5] = v10;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3D6084C;
    aBlock[3] = &block_descriptor_39;
    v11 = _Block_copy(aBlock);
    v12 = v8;

    [v12 executeWithUndoManager:0 completionHandler:v11];

    _Block_release(v11);
  }
}

void sub_1A3EC5A4C(char a1, NSObject *a2, uint64_t a3)
{
  v6 = type metadata accessor for PhotosDetailsNoLocationWidgetView(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v35 - v10;
  if ((a1 & 1) == 0)
  {
    v21 = sub_1A524D244();
    v22 = sub_1A475874C();
    swift_beginAccess();
    v23 = *v22;
    sub_1A3EC6674(a3, v8, type metadata accessor for PhotosDetailsNoLocationWidgetView);
    if (os_log_type_enabled(v23, v21))
    {
      v35[1] = v23;
      v24 = a2;
      v25 = swift_slowAlloc();
      v37[0] = swift_slowAlloc();
      *v25 = 136446466;
      v26 = (*((*MEMORY[0x1E69E7D40] & **&v8[*(v6 + 20) + 8]) + 0x88))();
      v27 = [v26 uuid];

      if (v27)
      {

        v28 = sub_1A524C674();
        v30 = v29;

        sub_1A3EC6BE4(v8, type metadata accessor for PhotosDetailsNoLocationWidgetView);
        sub_1A3C2EF94(v28, v30, v37);
      }

      goto LABEL_12;
    }

    v31 = v8;
LABEL_10:
    sub_1A3EC6BE4(v31, type metadata accessor for PhotosDetailsNoLocationWidgetView);
    v32 = (a3 + *(v6 + 24));
    v33 = *v32;
    v34 = *(v32 + 1);
    LOBYTE(v37[0]) = v33;
    v37[1] = v34;
    v36 = 0;
    sub_1A3EC6A68(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
    sub_1A524B6B4();
    return;
  }

  v12 = sub_1A524D224();
  v13 = sub_1A475874C();
  swift_beginAccess();
  v14 = *v13;
  sub_1A3EC6674(a3, v11, type metadata accessor for PhotosDetailsNoLocationWidgetView);
  if (!os_log_type_enabled(v14, v12))
  {
    v31 = v11;
    goto LABEL_10;
  }

  a2 = v14;
  v15 = swift_slowAlloc();
  v37[0] = swift_slowAlloc();
  *v15 = 136446210;
  v16 = (*((*MEMORY[0x1E69E7D40] & **&v11[*(v6 + 20) + 8]) + 0x88))();
  v17 = [v16 uuid];

  if (v17)
  {
    v18 = sub_1A524C674();
    v20 = v19;

    sub_1A3EC6BE4(v11, type metadata accessor for PhotosDetailsNoLocationWidgetView);
    sub_1A3C2EF94(v18, v20, v37);
  }

  __break(1u);
LABEL_12:

  __break(1u);
}

uint64_t sub_1A3EC5F58@<X0>(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = swift_getKeyPath();
  sub_1A3E31270(0);
  swift_storeEnumTagMultiPayload();
  v5 = a3 + *(a2 + 24);
  sub_1A524B694();
  *v5 = v9;
  *(v5 + 1) = v10;
  v6 = (a3 + *(a2 + 20));
  type metadata accessor for PhotosDetailsNoLocationWidgetViewModel(0);
  sub_1A3EC4434(&qword_1EB12E090, type metadata accessor for PhotosDetailsNoLocationWidgetViewModel, &unk_1A533DFE8);
  result = sub_1A5248494();
  *v6 = result;
  v6[1] = v8;
  return result;
}

uint64_t sub_1A3EC6044(uint64_t a1)
{
  result = sub_1A3EC4434(&qword_1EB133740, type metadata accessor for PhotosDetailsNoLocationWidgetView, &unk_1A530511C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A3EC60E8@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_1A5249574();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  sub_1A3EC6608(0, &qword_1EB12E098, sub_1A3EC39C0, MEMORY[0x1E697E300], MEMORY[0x1E697E2F8]);
  return sub_1A3EC2F7C(v2, a1 + *(v4 + 44));
}

void sub_1A3EC6184(uint64_t a1)
{
  sub_1A3EC6C44(319, &qword_1EB124718, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
  if (v1 <= 0x3F)
  {
    sub_1A3EC6274(319);
    if (v2 <= 0x3F)
    {
      sub_1A3EC6A68(319, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1A3EC6274(uint64_t a1)
{
  if (!qword_1EB12E160)
  {
    type metadata accessor for PhotosDetailsNoLocationWidgetViewModel(255);
    sub_1A3EC4434(&qword_1EB12E090, type metadata accessor for PhotosDetailsNoLocationWidgetViewModel, &unk_1A533DFE8);
    v1 = sub_1A52484C4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB12E160);
    }
  }
}

void sub_1A3EC6308(uint64_t a1)
{
  if (!qword_1EB12E170)
  {
    sub_1A3EC39C0(255);
    sub_1A3EC636C();
    v1 = sub_1A524B894();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB12E170);
    }
  }
}

unint64_t sub_1A3EC636C()
{
  result = qword_1EB12E178;
  if (!qword_1EB12E178)
  {
    sub_1A3EC39C0(255);
    sub_1A3EC63EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12E178);
  }

  return result;
}

unint64_t sub_1A3EC63EC()
{
  result = qword_1EB12E180;
  if (!qword_1EB12E180)
  {
    sub_1A3EC39FC(255);
    sub_1A3EC3B84(255, v1);
    type metadata accessor for PhotosDetailsSearchView(255);
    sub_1A3EC3C58(255);
    sub_1A5249764();
    sub_1A3EC4510();
    sub_1A3EC4434(&qword_1EB122360, MEMORY[0x1E697C658], MEMORY[0x1E697C650]);
    swift_getOpaqueTypeConformance2();
    sub_1A3EC4434(&qword_1EB13C5C0, type metadata accessor for PhotosDetailsSearchView, &unk_1A537A27C);
    swift_getOpaqueTypeConformance2();
    sub_1A3EC4434(&qword_1EB127710, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12E180);
  }

  return result;
}

void sub_1A3EC659C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1A3EC6608(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    v6 = sub_1A52483B4();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1A3EC6674(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A3EC66DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotosDetailsNoLocationWidgetView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3EC67A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroyTm_10()
{
  v1 = type metadata accessor for PhotosDetailsNoLocationWidgetView(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  sub_1A3E31270(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_1A52486A4();
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
  }

  else
  {
  }

  return swift_deallocObject();
}

void sub_1A3EC6934()
{
  v1 = *(type metadata accessor for PhotosDetailsNoLocationWidgetView(0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  sub_1A3EC588C(v2, v3);
}

double sub_1A3EC6998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
  }

  return result;
}

void sub_1A3EC69E8(char a1, NSObject *a2)
{
  v5 = *(type metadata accessor for PhotosDetailsNoLocationWidgetView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_1A3EC5A4C(a1, a2, v6);
}

void sub_1A3EC6A68(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1A3EC6AC0(char a1)
{
  type metadata accessor for PhotosDetailsNoLocationWidgetView(0);
  sub_1A3EC6A68(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  return sub_1A524B6B4();
}

uint64_t sub_1A3EC6B7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A3EC6BE4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A3EC6C44(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A3EC6CA8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1A52490D4();
  *a1 = result;
  return result;
}

uint64_t sub_1A3EC6CFC()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB19AAF8);
  __swift_project_value_buffer(v0, qword_1EB19AAF8);
  return sub_1A5246F14();
}

void sub_1A3EC6D9C()
{
  sub_1A3DA5F68(0);
  v5[4] = v1;
  MEMORY[0x1EEE9AC00](v1);
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5[3] = v5 - v4;
  if ((*((*MEMORY[0x1E69E7D40] & *v0) + 0x98))(v3))
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }
}

uint64_t sub_1A3EC7050(uint64_t a1, uint64_t a2)
{
  sub_1A3DA5F68(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3EC70B4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x78))();
  *a2 = result;
  return result;
}

uint64_t sub_1A3EC7110(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x80);
  v4 = *a1;
  return v3(v2);
}

void *sub_1A3EC7178()
{
  v1 = OBJC_IVAR___PXPhotosSearchUtilities_searchMatchInfo;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1A3EC71C4(uint64_t a1)
{
  v3 = OBJC_IVAR___PXPhotosSearchUtilities_searchMatchInfo;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_1A3EC7290()
{
  result = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x78))();
  if (result)
  {
    v2 = result;
    v3 = [result localizedQueryString];

    if (v3)
    {
      v4 = sub_1A524C674();
      v6 = v5;

      sub_1A3C38BD4(0xD00000000000002CLL);
      sub_1A3C71070(0, &qword_1EB12B110, sub_1A3D78B5C, MEMORY[0x1E69E6F90]);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_1A52F8E10;
      *(v7 + 56) = MEMORY[0x1E69E6158];
      *(v7 + 64) = sub_1A3D710E8();
      *(v7 + 32) = v4;
      *(v7 + 40) = v6;
      v8 = sub_1A524C6C4();

      return v8;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1A3EC73F0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x98))();
  *a2 = result;
  return result;
}

uint64_t sub_1A3EC7470@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xB0))();
  *a2 = result;
  return result;
}

uint64_t sub_1A3EC74F0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xC8))();
  *a2 = result;
  return result;
}

void sub_1A3EC7558(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  *(v6 + v7) = v5;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

id PhotosSearchUtilities.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PhotosSearchUtilities.init()()
{
  *&v0[OBJC_IVAR___PXPhotosSearchUtilities_searchMatchInfo] = 0;
  v1 = OBJC_IVAR___PXPhotosSearchUtilities_collectionResultUUIDs;
  *&v0[OBJC_IVAR___PXPhotosSearchUtilities_collectionResultUUIDs] = 0;
  v2 = OBJC_IVAR___PXPhotosSearchUtilities_rankedCollectionResultUUIDs;
  *&v0[OBJC_IVAR___PXPhotosSearchUtilities_rankedCollectionResultUUIDs] = 0;
  v3 = OBJC_IVAR___PXPhotosSearchUtilities_collectionResultsScoreMap;
  *&v0[OBJC_IVAR___PXPhotosSearchUtilities_collectionResultsScoreMap] = 0;
  swift_beginAccess();
  *&v0[v1] = 0;
  swift_beginAccess();
  *&v0[v2] = 0;
  swift_beginAccess();
  *&v0[v3] = 0;

  v7.receiver = v0;
  v7.super_class = type metadata accessor for PhotosSearchUtilities(v4, v5);
  return objc_msgSendSuper2(&v7, sel_init);
}

id PhotosSearchUtilities.__allocating_init(collectionResultUUIDs:rankedCollectionResultUUIDs:collectionResultsScoreMap:searchMatchInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = OBJC_IVAR___PXPhotosSearchUtilities_searchMatchInfo;
  *&v9[OBJC_IVAR___PXPhotosSearchUtilities_searchMatchInfo] = 0;
  v11 = OBJC_IVAR___PXPhotosSearchUtilities_collectionResultUUIDs;
  *&v9[OBJC_IVAR___PXPhotosSearchUtilities_collectionResultUUIDs] = 0;
  v12 = OBJC_IVAR___PXPhotosSearchUtilities_rankedCollectionResultUUIDs;
  *&v9[OBJC_IVAR___PXPhotosSearchUtilities_rankedCollectionResultUUIDs] = 0;
  v13 = OBJC_IVAR___PXPhotosSearchUtilities_collectionResultsScoreMap;
  *&v9[OBJC_IVAR___PXPhotosSearchUtilities_collectionResultsScoreMap] = 0;
  swift_beginAccess();
  *&v9[v11] = a1;
  swift_beginAccess();
  *&v9[v12] = a2;
  swift_beginAccess();
  *&v9[v13] = a3;
  swift_beginAccess();
  v14 = *&v9[v10];
  *&v9[v10] = a4;
  v15 = a4;

  v18.receiver = v9;
  v18.super_class = v4;
  v16 = objc_msgSendSuper2(&v18, sel_init);

  return v16;
}

id PhotosSearchUtilities.init(collectionResultUUIDs:rankedCollectionResultUUIDs:collectionResultsScoreMap:searchMatchInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v9 = OBJC_IVAR___PXPhotosSearchUtilities_searchMatchInfo;
  *&v4[OBJC_IVAR___PXPhotosSearchUtilities_searchMatchInfo] = 0;
  v10 = OBJC_IVAR___PXPhotosSearchUtilities_collectionResultUUIDs;
  *&v4[OBJC_IVAR___PXPhotosSearchUtilities_collectionResultUUIDs] = 0;
  v11 = OBJC_IVAR___PXPhotosSearchUtilities_rankedCollectionResultUUIDs;
  *&v4[OBJC_IVAR___PXPhotosSearchUtilities_rankedCollectionResultUUIDs] = 0;
  v12 = OBJC_IVAR___PXPhotosSearchUtilities_collectionResultsScoreMap;
  *&v4[OBJC_IVAR___PXPhotosSearchUtilities_collectionResultsScoreMap] = 0;
  swift_beginAccess();
  *&v4[v10] = a1;
  swift_beginAccess();
  *&v4[v11] = a2;
  swift_beginAccess();
  *&v4[v12] = a3;

  swift_beginAccess();
  v13 = *&v4[v9];
  *&v4[v9] = a4;
  v14 = a4;

  v19.receiver = v4;
  v19.super_class = type metadata accessor for PhotosSearchUtilities(v15, v16);
  v17 = objc_msgSendSuper2(&v19, sel_init);

  return v17;
}

uint64_t sub_1A3EC7998(id a1)
{
  v2 = sub_1A5243994();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1E69E7D40];
  result = (*((*MEMORY[0x1E69E7D40] & *v1) + 0xB0))(v4);
  if (result)
  {
    v9 = result;
    if ((*((*v7 & *v1) + 0xC8))())
    {
      (*(v3 + 104))(v6, *MEMORY[0x1E69C26E8], v2);
      if (*(v9 + 16))
      {
        sub_1A3DAC880(v6);
        if (v10)
        {
          _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
        }
      }

      (*(v3 + 8))(v6, v2);
    }

    else
    {
    }

    return 0;
  }

  return result;
}

uint64_t sub_1A3EC7D84(void *a1)
{
  v3 = sub_1A52411C4();
  v28[14] = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1A5243994();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v29 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v28 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v28 - v11;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = v28 - v15;
  v17 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0xB0))(v14);
  result = MEMORY[0x1E69E7CC0];
  if (v17)
  {
    v28[10] = v3;
    v28[15] = a1;
    v28[13] = v1;
    v31 = MEMORY[0x1E69E7CC0];
    sub_1A3C52C70(0, &qword_1EB126A10, off_1E771E328);
    v19 = [swift_getObjCClassFromMetadata() sharedInstance];
    v28[12] = [v19 maxCuratedCollectionsPerType];

    v20 = *MEMORY[0x1E69C2710];
    v30 = v5;
    v21 = *(v5 + 104);
    v21(v16, v20, v4);
    if (*(v17 + 16))
    {
      sub_1A3DAC880(v16);
      if (v22)
      {
        v28[9] = v9;
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }
    }

    v23 = *(v30 + 8);
    v23(v16, v4);
    v21(v12, *MEMORY[0x1E69C26E8], v4);
    if (*(v17 + 16))
    {
      sub_1A3DAC880(v12);
      if (v24)
      {
        v28[8] = v21;
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }
    }

    v23(v12, v4);
    v25 = v29;
    v21(v9, *MEMORY[0x1E69C26E0], v4);
    if (*(v17 + 16))
    {
      sub_1A3DAC880(v9);
      if (v26)
      {
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }
    }

    v23(v9, v4);
    v21(v25, *MEMORY[0x1E69C26F8], v4);
    if (*(v17 + 16))
    {
      sub_1A3DAC880(v25);
      if (v27)
      {
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }
    }

    v23(v25, v4);
    return v31;
  }

  return result;
}

void static PhotosSearchUtilities.makeTextFoundIdentifier()()
{
  v0 = sub_1A52411C4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A524C674();
  v6 = v5;
  sub_1A52411B4();
  sub_1A5241164();
  (*(v1 + 8))(v3, v0);
  v7[0] = v4;
  v7[1] = v6;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

unint64_t sub_1A3EC9600(uint64_t a1, unint64_t a2, __n128 a3)
{
  v4 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v5 = sub_1A524E2B4();
  }

  else
  {
    v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  while (1)
  {
    if (v5 == v6)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1A59097F0](v6, a2, a3);
    }

    else
    {
      if (v6 >= *(v4 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v7 = *(a2 + 8 * v6 + 32);
    }

    v8 = v7;
    sub_1A3C52C70(0, &qword_1EB126AC0, 0x1E6978650);
    v9 = sub_1A524DBF4();

    if (v9)
    {
      return v6;
    }

    if (__OFADD__(v6++, 1))
    {
      goto LABEL_16;
    }
  }
}

unint64_t sub_1A3EC9710(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_1A3E2AE98(v3, v5);
    v3 = result;
  }

  v6 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v6 <= a1)
  {
    __break(1u);
  }

  else
  {
    v7 = v6 - 1;
    v8 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v6 - 1 - a1));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v7;
    *v1 = v3;
    return v8;
  }

  return result;
}

void sub_1A3EC97A0(unint64_t a1, __n128 a2)
{
  if (a1 >> 62)
  {
    v4 = sub_1A524E2B4();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v2 >> 62))
  {
    v5 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = __OFADD__(v5, v4);
    v7 = v5 + v4;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = sub_1A524E2B4();
  v6 = __OFADD__(v15, v4);
  v7 = v15 + v4;
  if (v6)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_1A3D5C1C8(v7, 1);
  v8 = *v2;
  v9 = *v2 & 0xFFFFFFFFFFFFFF8;
  sub_1A3ECD858(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1, v10);
  v12 = v11;

  if (v12 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 < 1)
  {
LABEL_9:
    *v2 = v8;
    return;
  }

  v13 = *(v9 + 16);
  v6 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v6)
  {
    *(v9 + 16) = v14;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
}

char *sub_1A3EC9890(unint64_t a1, __n128 a2)
{
  if (a1 >> 62)
  {
    v3 = sub_1A524E2B4();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = MEMORY[0x1E69E7CC0];
  if (!v3)
  {
    return v4;
  }

  v14 = MEMORY[0x1E69E7CC0];
  result = sub_1A3D3E490(0, v3 & ~(v3 >> 63), 0);
  if ((v3 & 0x8000000000000000) == 0)
  {
    v4 = v14;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v3; ++i)
      {
        MEMORY[0x1A59097F0](i, a1);
        sub_1A3C52C70(0, &qword_1EB126AC0, 0x1E6978650);
        swift_dynamicCast();
        v14 = v4;
        v8 = *(v4 + 16);
        v7 = *(v4 + 24);
        if (v8 >= v7 >> 1)
        {
          sub_1A3D3E490((v7 > 1), v8 + 1, 1);
          v4 = v14;
        }

        *(v4 + 16) = v8 + 1;
        sub_1A3C57128(v13, (v4 + 32 * v8 + 32));
      }
    }

    else
    {
      v9 = (a1 + 32);
      sub_1A3C52C70(0, &qword_1EB126AC0, 0x1E6978650);
      do
      {
        v10 = *v9;
        swift_dynamicCast();
        v14 = v4;
        v12 = *(v4 + 16);
        v11 = *(v4 + 24);
        if (v12 >= v11 >> 1)
        {
          sub_1A3D3E490((v11 > 1), v12 + 1, 1);
          v4 = v14;
        }

        *(v4 + 16) = v12 + 1;
        sub_1A3C57128(v13, (v4 + 32 * v12 + 32));
        ++v9;
        --v3;
      }

      while (v3);
    }

    return v4;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A3EC9A8C(void *a1)
{
  v3 = sub_1A52411C4();
  v31[8] = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v31[7] = v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A5243994();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v33 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v34 = v31 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v31 - v11;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = v31 - v15;
  v17 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x98))(v14);
  result = MEMORY[0x1E69E7CC0];
  if (v17)
  {
    v31[5] = v3;
    v35 = MEMORY[0x1E69E7CC0];
    v19 = *MEMORY[0x1E69C2710];
    v20 = v6;
    v22 = *(v6 + 13);
    v21 = v6 + 104;
    v32 = v22;
    v22(v16, v19, v5);
    if (*(v17 + 16))
    {
      sub_1A3DAC880(v16);
      if (v23)
      {
        v31[3] = v21;
        v31[4] = a1;
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }
    }

    v24 = *(v20 + 1);
    v24(v16, v5);
    v25 = v32;
    v32(v12, *MEMORY[0x1E69C26E8], v5);
    v26 = v34;
    if (*(v17 + 16))
    {
      sub_1A3DAC880(v12);
      if (v27)
      {
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }
    }

    v24(v12, v5);
    v28 = v33;
    v25(v26, *MEMORY[0x1E69C26E0], v5);
    if (*(v17 + 16))
    {
      sub_1A3DAC880(v26);
      if (v29)
      {
        v34 = v20;
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }
    }

    v24(v26, v5);
    v25(v28, *MEMORY[0x1E69C26F8], v5);
    if (*(v17 + 16))
    {
      sub_1A3DAC880(v28);
      if (v30)
      {
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }
    }

    v24(v28, v5);
    return v35;
  }

  return result;
}

id sub_1A3ECA6CC(void *a1)
{
  v2 = sub_1A5243994();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x98))(v4);
  if (v7)
  {
    v8 = v7;
    (*(v3 + 104))(v6, *MEMORY[0x1E69C2700], v2);
    if (*(v8 + 16))
    {
      sub_1A3DAC880(v6);
      if (v9)
      {
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }
    }

    (*(v3 + 8))(v6, v2);
  }

  return MEMORY[0x1E69E7CC0];
}

void sub_1A3ECA924(uint64_t a1)
{
  v3 = OBJC_IVAR___PXPhotosSearchUtilities_collectionResultUUIDs;
  swift_beginAccess();
  *(v1 + v3) = a1;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

id sub_1A3ECA988(void *a1, uint64_t a2, void *a3)
{
  if (!a3)
  {
    return a2;
  }

  v5 = a3;
  v6 = [v5 ocrAssetUUIDs];
  v7 = sub_1A524CA34();
  result = [a1 uuid];
  if (result)
  {
    v9 = result;

    v10 = sub_1A524C674();
    v12 = v11;

    v15[0] = v10;
    v15[1] = v12;
    MEMORY[0x1EEE9AC00](v13);
    v14[2] = v15;
    LOBYTE(v10) = sub_1A3D3E5DC(sub_1A3D3E6C0, v14, v7);

    if (v10)
    {
      return (a2 | 0x1000000000);
    }

    return a2;
  }

  __break(1u);
  return result;
}

id static PhotosSearchUtilities.makeSearchDataSourceManager(for:in:subtype:)(unint64_t a1, uint64_t a2, uint64_t a3, char a4, __n128 a5)
{
  sub_1A3EC9890(a1, a5);
  sub_1A524C674();
  v8 = objc_allocWithZone(MEMORY[0x1E69788E0]);
  v9 = sub_1A524CA14();

  v10 = sub_1A524C634();

  v11 = sub_1A524C634();
  v12 = [v8 initWithObjects:v9 photoLibrary:a2 fetchType:v10 fetchPropertySets:0 identifier:v11 registerIfNeeded:0];

  v13 = [objc_allocWithZone(MEMORY[0x1E6978AF8]) initWithPhotoLibrary_];
  [v13 setIdentifier_];
  if ((a4 & 1) == 0)
  {
    [v13 setSubtype_];
  }

  v14 = [objc_opt_self() transientAssetCollectionWithOptions_];
  v15 = [objc_allocWithZone(PXPhotosDataSourceConfiguration) initWithCollectionListFetchResult:v12 containerCollection:v14 options:8392705];
  sub_1A3C2DC84(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1A52F9790;
  v17 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v18 = sub_1A524C634();
  v19 = [v17 initWithKey:v18 ascending:1];

  *(v16 + 32) = v19;
  sub_1A3C52C70(0, &qword_1EB126B60, 0x1E696AEB0);
  v20 = sub_1A524CA14();

  [v15 setSortDescriptors_];

  [v15 setReverseSortOrder_];
  v21 = [objc_opt_self() defaultFilterStateForContainerCollection:v14 photoLibrary:a2];
  v22 = [v21 predicateForUseCase_];
  [v15 setFilterPredicate_];

  v23 = [objc_allocWithZone(PXPhotosDataSource) initWithPhotosDataSourceConfiguration_];
  type metadata accessor for PhotosSearchPhotoKitAssetsDataSourceManager();
  v24 = sub_1A43F36AC(v23);

  return v24;
}

void static PhotosSearchUtilities.dataSourceManagerChangeRequest(allResultCollection:topResultCollection:collectionResultCollection:allResultAssetUUIDs:topResultAssetUUIDs:hasCollectionUUIDs:isInSelectMode:)(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, char a6)
{
  sub_1A3C71070(0, &qword_1EB12E1C0, sub_1A3ECDA00, MEMORY[0x1E69E6F90]);
  if (a6)
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1A52FC9F0;
    *(inited + 32) = a1;
    v9 = a1;
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v10 = swift_initStackObject();
  *(v10 + 16) = xmmword_1A52FF950;
  *(v10 + 32) = a1;
  v11 = a1;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void static PhotosSearchUtilities.saveRecentSearch(_:in:)(void *a1, unint64_t a2)
{
  v3 = a1;
  v68[1] = *MEMORY[0x1E69E9840];
  v4 = [a1 searchResults];
  if (v4)
  {
    v5 = v4;
    sub_1A3C52C70(0, &qword_1EB12C298, 0x1E6978A90);
    v6 = sub_1A524CA34();

    v68[0] = MEMORY[0x1E69E7CC0];
    if (v6 >> 62)
    {
      goto LABEL_17;
    }

    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v65 = v3;
    v67 = a2;
    if (v7)
    {
      while (1)
      {
        a2 = 0;
        while ((v6 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x1A59097F0](a2, v6);
          v9 = a2 + 1;
          if (__OFADD__(a2, 1))
          {
LABEL_14:
            __break(1u);
LABEL_15:
            a2 = v67;
            v11 = v68[0];
            v3 = v65;
            goto LABEL_19;
          }

LABEL_10:
          v3 = v8;
          v10 = PHSearchResult.isAsset.getter();

          if (v10)
          {
            sub_1A524E514();
            sub_1A524E564();
            sub_1A524E574();
            sub_1A524E524();
          }

          else
          {
          }

          ++a2;
          if (v9 == v7)
          {
            goto LABEL_15;
          }
        }

        if (a2 < *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          break;
        }

        __break(1u);
LABEL_17:
        v7 = sub_1A524E2B4();
        v65 = v3;
        v67 = a2;
        if (!v7)
        {
          goto LABEL_18;
        }
      }

      v8 = *(v6 + 8 * a2 + 32);
      v9 = a2 + 1;
      if (__OFADD__(a2, 1))
      {
        goto LABEL_14;
      }

      goto LABEL_10;
    }

LABEL_18:
    v11 = MEMORY[0x1E69E7CC0];
LABEL_19:

    if ((v11 & 0x8000000000000000) != 0 || (v11 & 0x4000000000000000) != 0)
    {
LABEL_62:
      v12 = sub_1A524E2B4();
    }

    else
    {
      v12 = *(v11 + 16);
    }

    if (v12 > 0)
    {
      v13 = [v3 searchQuery];
      if (qword_1EB19AAF0 != -1)
      {
        swift_once();
      }

      v14 = sub_1A5246F24();
      __swift_project_value_buffer(v14, qword_1EB19AAF8);
      v15 = v13;
      v16 = sub_1A5246F04();
      v17 = sub_1A524D224();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v68[0] = swift_slowAlloc();
        *v18 = 136315138;
        v19 = [v15 searchText];
        v20 = [v19 string];

        v21 = sub_1A524C674();
        v23 = v22;

        sub_1A3C2EF94(v21, v23, v68);
      }

      v24 = [v3 rankedAssetSearchResults];
      v25 = MEMORY[0x1E69E7CC0];
      if (!v24)
      {
        goto LABEL_66;
      }

      v66 = v12;
      v26 = v24;
      v27 = sub_1A524CA34();

      v68[0] = v25;
      if (v27 >> 62)
      {
        v28 = sub_1A524E2B4();
      }

      else
      {
        v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v29 = MEMORY[0x1E69E7CC0];
      if (v28)
      {
        v30 = 0;
        a2 = v27 & 0xFFFFFFFFFFFFFF8;
        while (1)
        {
          if ((v27 & 0xC000000000000001) != 0)
          {
            v31 = MEMORY[0x1A59097F0](v30, v27);
            v32 = v30 + 1;
            if (__OFADD__(v30, 1))
            {
LABEL_41:
              __break(1u);
              goto LABEL_42;
            }
          }

          else
          {
            if (v30 >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              goto LABEL_62;
            }

            v31 = *(v27 + 8 * v30 + 32);
            v32 = v30 + 1;
            if (__OFADD__(v30, 1))
            {
              goto LABEL_41;
            }
          }

          v3 = v31;
          v33 = PHSearchResult.isAsset.getter();

          if (v33)
          {
            sub_1A524E514();
            sub_1A524E564();
            sub_1A524E574();
            sub_1A524E524();
          }

          else
          {
          }

          ++v30;
          if (v32 == v28)
          {
            v38 = v68[0];
            v29 = MEMORY[0x1E69E7CC0];
            goto LABEL_49;
          }
        }
      }

      v38 = MEMORY[0x1E69E7CC0];
LABEL_49:

      if ((v38 & 0x8000000000000000) != 0 || (v38 & 0x4000000000000000) != 0)
      {
        v39 = sub_1A524E2B4();
        if (v39)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v39 = *(v38 + 16);
        if (v39)
        {
LABEL_52:
          v68[0] = v29;
          sub_1A3C57108(0, v39 & ~(v39 >> 63), 0);
          if (v39 < 0)
          {
            __break(1u);
          }

          v40 = 0;
          v41 = v68[0];
          do
          {
            if ((v38 & 0xC000000000000001) != 0)
            {
              v42 = MEMORY[0x1A59097F0](v40, v38);
            }

            else
            {
              v42 = *(v38 + 8 * v40 + 32);
            }

            v43 = v42;
            v44 = [v43 uuid];
            v45 = sub_1A524C674();
            v47 = v46;

            v68[0] = v41;
            v49 = v41[2];
            v48 = v41[3];
            if (v49 >= v48 >> 1)
            {
              sub_1A3C57108((v48 > 1), v49 + 1, 1);
              v41 = v68[0];
            }

            ++v40;
            v41[2] = v49 + 1;
            v50 = &v41[2 * v49];
            v50[4] = v45;
            v50[5] = v47;
          }

          while (v39 != v40);
        }
      }

      v12 = v66;
      a2 = v67;
LABEL_66:
      v51 = objc_opt_self();
      v52 = sub_1A524CA14();

      v68[0] = 0;
      LODWORD(v51) = [v51 saveRecentSearchQuery:v15 assetResultCount:v12 keyAssetUUIDs:v52 photoLibrary:a2 error:v68];

      v53 = v68[0];
      if (v51)
      {
        v54 = v15;
        v55 = v53;
        v56 = sub_1A5246F04();
        v57 = sub_1A524D224();

        if (os_log_type_enabled(v56, v57))
        {
          v58 = swift_slowAlloc();
          v68[0] = swift_slowAlloc();
          *v58 = 136315138;
          v59 = [v54 searchText];
          v60 = [v59 string];

          v61 = sub_1A524C674();
          v63 = v62;

          sub_1A3C2EF94(v61, v63, v68);
        }
      }

      else
      {
        v64 = v68[0];
        sub_1A5240B84();

        swift_willThrow();
      }

      return;
    }
  }

LABEL_42:
  if (qword_1EB19AAF0 != -1)
  {
    swift_once();
  }

  v34 = sub_1A5246F24();
  __swift_project_value_buffer(v34, qword_1EB19AAF8);
  v35 = sub_1A5246F04();
  v36 = sub_1A524D244();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&dword_1A3C1C000, v35, v36, "Failed to save current search: empty asset result", v37, 2u);
    MEMORY[0x1A590EEC0](v37, -1, -1);
  }

  sub_1A3ECDC90();
  swift_allocError();
  swift_willThrow();
}

uint64_t PhotosSearchUtilities.SearchError.hashValue.getter()
{
  sub_1A524EC94();
  MEMORY[0x1A590A010](0);
  return sub_1A524ECE4();
}

id PhotosSearchUtilities.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for PhotosSearchUtilities(a1, a2);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

unint64_t sub_1A3ECBAC4(void *a1)
{
  v2 = MEMORY[0x1E69E6720];
  sub_1A3C71070(0, &qword_1EB126008, MEMORY[0x1E6969770], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v62 - v4;
  v6 = sub_1A5241144();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C71070(0, &qword_1EB12AFE0, MEMORY[0x1E6969530], v2);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v62 - v15;
  v73 = 0xD000000000000022;
  v74 = 0x80000001A53BBC90;
  v17 = [a1 searchQuery];
  v70 = [v17 searchText];
  v69 = [v17 queryStringSentToSpotlight];
  v18 = [v17 searchText];
  v19 = [v18 string];

  v65 = sub_1A524C674();
  v66 = v20;

  v21 = [v17 startDate];
  if (v21)
  {
    v22 = v21;
    sub_1A52410F4();

    (*(v7 + 56))(v12, 0, 1, v6);
  }

  else
  {
    (*(v7 + 56))(v12, 1, 1, v6);
  }

  sub_1A3E98DA0(v12, v16);
  if ((*(v7 + 48))(v16, 1, v6))
  {
    sub_1A3C42B70(v16, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
    v63 = 0xE400000000000000;
    v67 = 1819047278;
  }

  else
  {
    (*(v7 + 16))(v9, v16, v6);
    sub_1A3C42B70(v16, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
    sub_1A5241244();
    v23 = sub_1A5241284();
    (*(*(v23 - 8) + 56))(v5, 0, 1, v23);
    v67 = sub_1A5241014();
    v63 = v24;
    sub_1A3C42B70(v5, &qword_1EB126008, MEMORY[0x1E6969770]);
    (*(v7 + 8))(v9, v6);
  }

  v25 = [a1 searchResults];
  if (v25)
  {
    v26 = v25;
    sub_1A3C52C70(0, &qword_1EB12C298, 0x1E6978A90);
    v27 = sub_1A524CA34();

    if (v27 >> 62)
    {
      v28 = sub_1A524E2B4();
    }

    else
    {
      v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }
  }

  else
  {
    v28 = 0;
  }

  v29 = [a1 rankedAssetSearchResults];
  if (v29)
  {
    v30 = v29;
    sub_1A3C52C70(0, &qword_1EB12C298, 0x1E6978A90);
    v31 = sub_1A524CA34();

    if (v31 >> 62)
    {
      v32 = sub_1A524E2B4();
    }

    else
    {
      v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }
  }

  else
  {
    v32 = 0;
  }

  v33 = [a1 rankedCollectionSearchResults];
  if (v33)
  {
    v34 = v33;
    sub_1A3C52C70(0, &qword_1EB12C298, 0x1E6978A90);
    v35 = sub_1A524CA34();

    if (v35 >> 62)
    {
      v36 = sub_1A524E2B4();
    }

    else
    {
      v36 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }
  }

  else
  {
    v36 = 0;
  }

  v37 = [a1 searchSuggestions];
  if (v37)
  {
    v38 = v37;
    sub_1A3C52C70(0, &qword_1EB1209D8, 0x1E6978A98);
    v39 = sub_1A524CA34();

    if (v39 >> 62)
    {
      v40 = sub_1A524E2B4();
    }

    else
    {
      v40 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }
  }

  else
  {
    v40 = 0;
  }

  v41 = [a1 queryMatchDetails];
  if (v41)
  {
    v42 = v41;
    v43 = [v41 description];

    v68 = sub_1A524C674();
    v64 = v44;
  }

  else
  {
    v68 = 1819047278;
    v64 = 0xE400000000000000;
  }

  strcpy(v72, "Query ID: ");
  BYTE3(v72[1]) = 0;
  HIDWORD(v72[1]) = -369098752;
  LODWORD(v71) = [v17 queryIdentifier];
  v45 = sub_1A524EA44();
  MEMORY[0x1A5907B60](v45);

  MEMORY[0x1A5907B60](10, 0xE100000000000000);
  MEMORY[0x1A5907B60](v72[0], v72[1]);

  v72[0] = 0;
  v72[1] = 0xE000000000000000;
  sub_1A524E404();

  strcpy(v72, "Query text: ");
  HIWORD(v72[1]) = -4864;
  MEMORY[0x1A5907B60](v65, v66);

  MEMORY[0x1A5907B60](2594, 0xE200000000000000);
  MEMORY[0x1A5907B60](v72[0], v72[1]);

  strcpy(v72, "Results: ");
  WORD1(v72[1]) = 0;
  HIDWORD(v72[1]) = -385875968;
  v71 = v28;
  v46 = sub_1A524EA44();
  MEMORY[0x1A5907B60](v46);

  MEMORY[0x1A5907B60](10, 0xE100000000000000);
  MEMORY[0x1A5907B60](v72[0], v72[1]);

  strcpy(v72, "Top Assets: ");
  BYTE5(v72[1]) = 0;
  HIWORD(v72[1]) = -5120;
  v71 = v32;
  v47 = sub_1A524EA44();
  MEMORY[0x1A5907B60](v47);

  MEMORY[0x1A5907B60](10, 0xE100000000000000);
  MEMORY[0x1A5907B60](v72[0], v72[1]);

  v72[0] = 0;
  v72[1] = 0xE000000000000000;
  sub_1A524E404();

  v72[0] = 0xD000000000000011;
  v72[1] = 0x80000001A53BBCC0;
  v71 = v36;
  v48 = sub_1A524EA44();
  MEMORY[0x1A5907B60](v48);

  MEMORY[0x1A5907B60](10, 0xE100000000000000);
  MEMORY[0x1A5907B60](v72[0], v72[1]);

  v72[0] = 0;
  v72[1] = 0xE000000000000000;
  sub_1A524E404();

  strcpy(v72, "Suggestions: ");
  HIWORD(v72[1]) = -4864;
  v71 = v40;
  v49 = sub_1A524EA44();
  MEMORY[0x1A5907B60](v49);

  MEMORY[0x1A5907B60](10, 0xE100000000000000);
  MEMORY[0x1A5907B60](v72[0], v72[1]);

  v72[0] = 0;
  v72[1] = 0xE000000000000000;
  sub_1A524E404();

  v72[0] = 0xD000000000000012;
  v72[1] = 0x80000001A53BBCE0;
  MEMORY[0x1A5907B60](v67, v63);

  MEMORY[0x1A5907B60](10, 0xE100000000000000);
  MEMORY[0x1A5907B60](v72[0], v72[1]);

  MEMORY[0x1A5907B60](0xD00000000000002CLL, 0x80000001A53BBD00);
  v50 = v70;
  v51 = [v70 description];
  v52 = sub_1A524C674();
  v54 = v53;

  v72[0] = v52;
  v72[1] = v54;
  MEMORY[0x1A5907B60](10, 0xE100000000000000);
  MEMORY[0x1A5907B60](v72[0], v72[1]);

  MEMORY[0x1A5907B60](0xD00000000000002FLL, 0x80000001A53BBD30);
  v55 = v69;
  if (v69)
  {
    v56 = v69;
    v57 = [v56 description];
    v58 = sub_1A524C674();
    v60 = v59;

    v72[0] = v58;
    v72[1] = v60;
    MEMORY[0x1A5907B60](10, 0xE100000000000000);
    MEMORY[0x1A5907B60](v72[0], v72[1]);
  }

  MEMORY[0x1A5907B60](0xD000000000000021, 0x80000001A53BBD60);
  v72[0] = v68;
  v72[1] = v64;
  MEMORY[0x1A5907B60](10, 0xE100000000000000);
  MEMORY[0x1A5907B60](v72[0], v72[1]);

  return v73;
}

uint64_t sub_1A3ECC600@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v57 = *MEMORY[0x1E69E9840];
  v4 = sub_1A5240E64();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v51 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v47 - v8;
  v10 = sub_1A5246F24();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A5246F14();
  if (a1)
  {
    v49 = v10;
    v50 = a2;
    v53 = v4;
    v14 = a1;
    v15 = [v14 searchQuery];
    v16 = [v15 queryIdentifier];

    v55 = 0;
    v56 = 0xE000000000000000;
    sub_1A524E404();

    v55 = 0xD00000000000001ALL;
    v56 = 0x80000001A53BBE40;
    v54 = v16;
    v17 = sub_1A524EA44();
    MEMORY[0x1A5907B60](v17);

    MEMORY[0x1A5907B60](0x6E6F736A2ELL, 0xE500000000000000);
    v52 = v9;
    sub_1A5240D84();

    v18 = [v14 jsonDictionary];
    sub_1A524C3E4();

    v19 = objc_opt_self();
    v20 = sub_1A524C3D4();
    v21 = [v19 isValidJSONObject_];

    if (v21)
    {
      v48 = v14;
      v22 = sub_1A524C3D4();

      v55 = 0;
      v23 = [v19 dataWithJSONObject:v22 options:1 error:&v55];

      v24 = v55;
      if (v23)
      {
        v25 = sub_1A5240EA4();
        v27 = v26;

        sub_1A3D602A8(v25, v27);
        v28 = v52;
        sub_1A5240EB4();
        v4 = v53;
        v29 = v51;
        v47 = v27;
        sub_1A3C59280(v25, v27);
      }

      else
      {
        v37 = v24;
        v38 = sub_1A5240B84();

        swift_willThrow();
        v25 = 0;
        v47 = 0xF000000000000000;
        v28 = v52;
        v4 = v53;
        v29 = v51;
      }

      (*(v5 + 16))(v29, v28, v4);
      v39 = sub_1A5246F04();
      v40 = sub_1A524D264();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v51 = v25;
        v42 = v41;
        v55 = swift_slowAlloc();
        *v42 = 136315138;
        sub_1A3C2E15C(&qword_1EB12B000, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
        v43 = sub_1A524EA44();
        v45 = v44;
        (*(v5 + 8))(v29, v53);
        sub_1A3C2EF94(v43, v45, &v55);
      }

      sub_1A3DB556C(v25, v47);
      (*(v5 + 8))(v29, v4);
      (*(v11 + 8))(v13, v49);
      a2 = v50;
    }

    else
    {

      v31 = v14;
      v32 = sub_1A5246F04();
      v33 = sub_1A524D244();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        *v34 = 138412290;
        *(v34 + 4) = v31;
        *v35 = a1;
        v36 = v31;
        _os_log_impl(&dword_1A3C1C000, v32, v33, "Unable to attach active search query result to radar. Invalid JSON for searchQueryResult: %@", v34, 0xCu);
        sub_1A3CB65E4(v35);
        MEMORY[0x1A590EEC0](v35, -1, -1);
        MEMORY[0x1A590EEC0](v34, -1, -1);
      }

      else
      {
      }

      (*(v11 + 8))(v13, v49);
      a2 = v50;
      v4 = v53;
    }

    (*(v5 + 32))(a2, v52, v4);
    v30 = 0;
  }

  else
  {
    (*(v11 + 8))(v13, v10);
    v30 = 1;
  }

  return (*(v5 + 56))(a2, v30, 1, v4);
}

char *sub_1A3ECCD48(void *a1)
{
  v32[1] = *MEMORY[0x1E69E9840];
  sub_1A3C71070(0, &unk_1EB12B250, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v31 - v3;
  v5 = sub_1A5240E64();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v31 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v31 - v13;
  sub_1A3ECD214();
  v15 = [objc_opt_self() defaultManager];
  v16 = sub_1A5240D44();
  v32[0] = 0;
  v17 = [v15 createDirectoryAtURL:v16 withIntermediateDirectories:1 attributes:0 error:v32];

  if (v17)
  {
    v18 = v32[0];
  }

  else
  {
    v19 = v32[0];
    v20 = sub_1A5240B84();

    swift_willThrow();
  }

  sub_1A3ECC600(a1, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1A3C42B70(v4, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
    v21 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v22 = *(v6 + 32);
    v22(v11, v4, v5);
    v23 = *(v6 + 16);
    v31[0] = v8;
    v23(v8, v11, v5);
    v21 = sub_1A3ECD488(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v25 = *(v21 + 2);
    v24 = *(v21 + 3);
    if (v25 >= v24 >> 1)
    {
      v21 = sub_1A3ECD488((v24 > 1), v25 + 1, 1, v21);
    }

    (*(v6 + 8))(v11, v5);
    *(v21 + 2) = v25 + 1;
    v22(&v21[((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v25], v31[0], v5);
  }

  if (qword_1EB19AAF0 != -1)
  {
    swift_once();
  }

  v26 = sub_1A5246F24();
  __swift_project_value_buffer(v26, qword_1EB19AAF8);
  v27 = sub_1A5246F04();
  v28 = sub_1A524D264();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v32[0] = swift_slowAlloc();
    *v29 = 136315138;
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  (*(v6 + 8))(v14, v5);
  return v21;
}

uint64_t sub_1A3ECD214()
{
  v0 = sub_1A5240CB4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A52411C4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = NSTemporaryDirectory();
  sub_1A524C674();

  sub_1A5240D14();

  sub_1A3C2DC84(0, &qword_1EB12B260, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1A52FC9F0;
  strcpy((v9 + 32), "photos_search");
  *(v9 + 46) = -4864;
  sub_1A52411B4();
  v10 = sub_1A5241164();
  v12 = v11;
  (*(v5 + 8))(v7, v4);
  *(v9 + 48) = v10;
  *(v9 + 56) = v12;
  (*(v1 + 104))(v3, *MEMORY[0x1E6968F70], v0);
  sub_1A3D5F9DC();
  sub_1A5240E24();

  return (*(v1 + 8))(v3, v0);
}

void *sub_1A3ECD488(void *result, int64_t a2, char a3, void *a4)
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

  sub_1A3C71070(0, &qword_1EB1203C0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6F90]);
  v10 = *(sub_1A5240E64() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
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
  v15 = *(sub_1A5240E64() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
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

void sub_1A3ECD684(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_1A3C2DC84(0, &qword_1EB12B260, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 17;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

unint64_t sub_1A3ECD774()
{
  result = qword_1EB140610;
  if (!qword_1EB140610)
  {
    sub_1A3C2DC84(255, &qword_1EB126ED0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB140610);
  }

  return result;
}

void sub_1A3ECD7F0(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1A3C52C70(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1A3ECD858(uint64_t result, uint64_t a2, unint64_t a3, __n128 a4)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    v13 = a2;
    result = sub_1A524E2B4();
    a2 = v13;
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    if (v6)
    {
      v8 = a2;
      result = sub_1A524E2B4();
      if (result <= v8)
      {
        if (v7 >= 1)
        {
          sub_1A3ECD7F0(0, &qword_1EB140620, &qword_1EB126AC0, 0x1E6978650, MEMORY[0x1E69E62F8]);
          sub_1A3ECE1C4();
          for (i = 0; i != v7; ++i)
          {
            v10 = sub_1A3D5C268(v14, i, a3);
            v12 = *v11;
            (v10)(v14, 0);
            *(v5 + 8 * i) = v12;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1A3C52C70(0, &qword_1EB126AC0, 0x1E6978650);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1A3ECDA00(uint64_t a1)
{
  if (!qword_1EB139EC0)
  {
    sub_1A3C52C70(255, &qword_1EB126AC0, 0x1E6978650);
    sub_1A3ECE164(255, &qword_1EB120B48, MEMORY[0x1E69E64E8]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB139EC0);
    }
  }
}

void sub_1A3ECDA9C(uint64_t a1)
{
  if (!qword_1EB139ED0)
  {
    sub_1A3C52C70(255, &qword_1EB126AC0, 0x1E6978650);
    sub_1A3C2DC84(255, &qword_1EB126ED0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB139ED0);
    }
  }
}

unint64_t sub_1A3ECDB40(uint64_t a1, void (*a2)(void))
{
  if (*(a1 + 16))
  {
    a2(0);
    sub_1A524E794();

    v3 = *(a1 + 32);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return MEMORY[0x1E69E7CC8];
}

uint64_t sub_1A3ECDC30(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1A3ECDC90()
{
  result = qword_1EB12E1D0;
  if (!qword_1EB12E1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12E1D0);
  }

  return result;
}

unint64_t sub_1A3ECDCE8()
{
  result = qword_1EB12E1D8;
  if (!qword_1EB12E1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12E1D8);
  }

  return result;
}

void sub_1A3ECE00C(uint64_t a1)
{
  if (!qword_1EB139EE0)
  {
    sub_1A3C52C70(255, &qword_1EB126AC0, 0x1E6978650);
    sub_1A3C2DC84(255, &qword_1EB126ED0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1A3D8E4B0();
    v1 = sub_1A524E7A4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB139EE0);
    }
  }
}

void sub_1A3ECE0BC(uint64_t a1)
{
  if (!qword_1EB139EF0[0])
  {
    sub_1A3C52C70(255, &qword_1EB126AC0, 0x1E6978650);
    sub_1A3ECE164(255, &qword_1EB120B48, MEMORY[0x1E69E64E8]);
    sub_1A3D8E4B0();
    v1 = sub_1A524E7A4();
    if (!v2)
    {
      atomic_store(v1, qword_1EB139EF0);
    }
  }
}

void sub_1A3ECE164(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void, void))
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

unint64_t sub_1A3ECE1C4()
{
  result = qword_1EB140630;
  if (!qword_1EB140630)
  {
    sub_1A3ECD7F0(255, &qword_1EB140620, &qword_1EB126AC0, 0x1E6978650, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB140630);
  }

  return result;
}

uint64_t sub_1A3ECE2A8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x110))();
  *a2 = result;
  return result;
}

uint64_t sub_1A3ECE30C(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x118);

  return v2(v3);
}

double sub_1A3ECE378()
{
  swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x560))();

  swift_beginAccess();

  return result;
}

double sub_1A3ECE414(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12PhotosUICore31SharedCollectionActionViewModel__navigationContext;
  swift_beginAccess();
  if (*(v1 + v3) != a1)
  {
    KeyPath = swift_getKeyPath();
    v5.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*((*MEMORY[0x1E69E7D40] & *v1) + 0x568))(v5);
  }

  return result;
}

void sub_1A3ECE534()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC12PhotosUICore31SharedCollectionActionViewModel__navigationContext;
  swift_beginAccess();
  *(v2 + v3) = v1;
}

uint64_t (*sub_1A3ECE5A0(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x560))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore31SharedCollectionActionViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A3EE0F88(&qword_1EB12E1E8, type metadata accessor for SharedCollectionActionViewModel, &protocol conformance descriptor for SharedCollectionActionViewModel);
  sub_1A52415F4();

  v4[7] = sub_1A3ECE248(v4);
  return sub_1A3ECE700;
}

uint64_t type metadata accessor for SharedCollectionActionViewModel(uint64_t a1)
{
  result = qword_1EB1628A0;
  if (!qword_1EB1628A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A3ECE7B8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x140))();
  *a2 = result;
  return result;
}

uint64_t sub_1A3ECE81C(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x148);
  v4 = *a1;
  return v3(v2);
}

void sub_1A3ECE8A0(void *a1)
{
  v3 = OBJC_IVAR____TtC12PhotosUICore31SharedCollectionActionViewModel__extensionContext;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    v10.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*((*MEMORY[0x1E69E7D40] & *v1) + 0x568))(v10);

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1A3C52C70(0, &qword_1EB12B418, 0x1E696ABD8);
  v5 = v4;
  v6 = a1;
  v7 = sub_1A524DBF4();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v1 + v3);
LABEL_8:
  *(v1 + v3) = a1;
}

uint64_t (*sub_1A3ECEA4C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x560))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore31SharedCollectionActionViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A3EE0F88(&qword_1EB12E1E8, type metadata accessor for SharedCollectionActionViewModel, &protocol conformance descriptor for SharedCollectionActionViewModel);
  sub_1A52415F4();

  v4[7] = sub_1A3ECE758(v4);
  return sub_1A3ECEBAC;
}

uint64_t sub_1A3ECEC18@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x170))();
  *a2 = result;
  return result;
}

uint64_t sub_1A3ECEC7C(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x178);
  v4 = *a1;
  return v3(v2);
}

void *sub_1A3ECED00(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x560))();

  v4 = *a2;
  swift_beginAccess();
  v5 = *(v2 + v4);
  v6 = v5;
  return v5;
}

void sub_1A3ECEDA0(void *a1)
{
  v3 = OBJC_IVAR____TtC12PhotosUICore31SharedCollectionActionViewModel__sharedCollection;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    v10.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*((*MEMORY[0x1E69E7D40] & *v1) + 0x568))(v10);

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1A3C52C70(0, &qword_1EB126AC0, 0x1E6978650);
  v5 = v4;
  v6 = a1;
  v7 = sub_1A524DBF4();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v1 + v3);
LABEL_8:
  *(v1 + v3) = a1;
}

uint64_t (*sub_1A3ECEF4C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x560))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore31SharedCollectionActionViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A3EE0F88(&qword_1EB12E1E8, type metadata accessor for SharedCollectionActionViewModel, &protocol conformance descriptor for SharedCollectionActionViewModel);
  sub_1A52415F4();

  v4[7] = sub_1A3ECEBB8(v4);
  return sub_1A3ECF0AC;
}

uint64_t sub_1A3ECF118@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1A0))();
  *a2 = result;
  return result;
}

uint64_t (*sub_1A3ECF34C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x560))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore31SharedCollectionActionViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A3EE0F88(&qword_1EB12E1E8, type metadata accessor for SharedCollectionActionViewModel, &protocol conformance descriptor for SharedCollectionActionViewModel);
  sub_1A52415F4();

  v4[7] = sub_1A3ECF0B8(v4);
  return sub_1A3ECF4AC;
}

void sub_1A3ECF4B8(void *a1)
{
  v2 = OBJC_IVAR____TtC12PhotosUICore31SharedCollectionActionViewModel__assets;
  a1[2] = OBJC_IVAR____TtC12PhotosUICore31SharedCollectionActionViewModel__assets;
  *a1 = *(v1 + v2);
  a1[1] = v1;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A3ECF510(uint64_t *a1, char a2)
{
  v3 = a1[1];
  v2 = a1[2];
  v4 = *(v3 + v2);
  *(v3 + v2) = *a1;
  v5 = MEMORY[0x1E69E7D40];
  if (a2)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v6 = (*((*MEMORY[0x1E69E7D40] & *v3) + 0x1D0))();
  v8 = sub_1A3D5B724(v6, v4, &qword_1EB126660, 0x1E6978630, v7);

  if ((v8 & 1) == 0)
  {
    v10 = (*((*v5 & *v3) + 0x4C8))(v9);
    v11 = *((*v5 & *v3) + 0x3C8);
    v12 = v11(v10);
    if (v12)
    {
      v14 = sub_1A3C33378(v12, v13);
      v15 = v11(v14);
      if (!v15)
      {
        __break(1u);
        return;
      }

      v17 = v16;
      v18 = v15;
      v15();
      sub_1A3C33378(v18, v17);
    }
  }
}

uint64_t sub_1A3ECF770@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1D0))();
  *a2 = result;
  return result;
}

void sub_1A3ECFAC8(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x560))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore31SharedCollectionActionViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A3EE0F88(&qword_1EB12E1E8, type metadata accessor for SharedCollectionActionViewModel, &protocol conformance descriptor for SharedCollectionActionViewModel);
  sub_1A52415F4();

  sub_1A3ECF4B8(v4);
}

void *sub_1A3ECFC34()
{
  v1 = sub_1A523FBB4();
  v2 = *(v1 - 8);
  v22 = v1;
  v23 = v2;
  v3.n128_f64[0] = MEMORY[0x1EEE9AC00](v1);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x1D0))(v3);
  v7 = v6;
  if (v6 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1A524E2B4())
  {
    v9 = 0;
    v20 = v7 & 0xFFFFFFFFFFFFFF8;
    v21 = v7 & 0xC000000000000001;
    v19[1] = v23 + 32;
    v10 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v21)
      {
        v11 = MEMORY[0x1A59097F0](v9, v7);
      }

      else
      {
        if (v9 >= *(v20 + 16))
        {
          goto LABEL_16;
        }

        v11 = *(v7 + 8 * v9 + 32);
      }

      v12 = v11;
      v13 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      v14 = i;
      v15 = [v11 localIdentifier];
      sub_1A524C674();

      sub_1A523FB54();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_1A3D5BB08(0, v10[2] + 1, 1, v10);
      }

      v17 = v10[2];
      v16 = v10[3];
      if (v17 >= v16 >> 1)
      {
        v10 = sub_1A3D5BB08((v16 > 1), v17 + 1, 1, v10);
      }

      v10[2] = v17 + 1;
      (*(v23 + 32))(v10 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v17, v5, v22);
      ++v9;
      i = v14;
      if (v13 == v14)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  v10 = MEMORY[0x1E69E7CC0];
LABEL_19:

  return v10;
}

void sub_1A3ECFED0(uint64_t a1)
{
  v3 = sub_1A523FBB4();
  v4 = *(v3 - 8);
  v5.n128_f64[0] = MEMORY[0x1EEE9AC00](v3);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1E69E7D40];
  v9 = *((*((*MEMORY[0x1E69E7D40] & *v1) + 0x110))(v5) + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_photoLibraryContext);

  v10 = *(v9 + 16);

  v11 = a1;
  v12 = *(a1 + 16);
  if (v12)
  {
    v32 = v10;
    v33 = v1;
    v14 = *(v4 + 16);
    v13 = v4 + 16;
    v15 = *(v13 + 64);
    v31 = v11;
    v16 = v11 + ((v15 + 32) & ~v15);
    v35 = *(v13 + 56);
    v36 = v14;
    v17 = MEMORY[0x1E69E7CC0];
    v34 = v13;
    v14(v7, v16, v3);
    while (1)
    {
      v19 = sub_1A523FB64();
      v21 = v20;
      (*(v13 - 8))(v7, v3);
      if (v21)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_1A3D3D914(0, *(v17 + 2) + 1, 1, v17);
        }

        v23 = *(v17 + 2);
        v22 = *(v17 + 3);
        if (v23 >= v22 >> 1)
        {
          v17 = sub_1A3D3D914((v22 > 1), v23 + 1, 1, v17);
        }

        *(v17 + 2) = v23 + 1;
        v18 = &v17[16 * v23];
        *(v18 + 4) = v19;
        *(v18 + 5) = v21;
      }

      v16 += v35;
      if (!--v12)
      {
        break;
      }

      v36(v7, v16, v3);
    }

    v10 = v32;
    v1 = v33;
    v8 = MEMORY[0x1E69E7D40];
  }

  else
  {
  }

  v24 = objc_opt_self();
  v25 = sub_1A524CA14();

  v26 = [v10 librarySpecificFetchOptions];
  v27 = [v24 fetchAssetsWithLocalIdentifiers:v25 options:v26];

  v28 = [v27 fetchedObjects];
  if (v28)
  {
    v29 = v28;
    sub_1A3C52C70(0, &qword_1EB126660, 0x1E6978630);
    v30 = sub_1A524CA34();
  }

  else
  {
    v30 = MEMORY[0x1E69E7CC0];
  }

  (*((*v8 & *v1) + 0x1D8))(v30);
}

void (*sub_1A3ED0248(void *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1A3ECFC34();
  return sub_1A3ED0290;
}

void sub_1A3ED0290(uint64_t *a1, char a2)
{
  if (a2)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  sub_1A3ECFED0(*a1);
}

uint64_t sub_1A3ED0348@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x218))();
  *a2 = result;
  return result;
}

uint64_t (*sub_1A3ED057C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x560))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore31SharedCollectionActionViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A3EE0F88(&qword_1EB12E1E8, type metadata accessor for SharedCollectionActionViewModel, &protocol conformance descriptor for SharedCollectionActionViewModel);
  sub_1A52415F4();

  v4[7] = sub_1A3ED02E8(v4);
  return sub_1A3ED06DC;
}

void sub_1A3ED06E8(void *a1)
{
  v2 = OBJC_IVAR____TtC12PhotosUICore31SharedCollectionActionViewModel__subscribers;
  a1[2] = OBJC_IVAR____TtC12PhotosUICore31SharedCollectionActionViewModel__subscribers;
  *a1 = *(v1 + v2);
  a1[1] = v1;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A3ED0740(uint64_t *a1, char a2)
{
  v3 = a1[1];
  v2 = a1[2];
  v4 = *(v3 + v2);
  *(v3 + v2) = *a1;
  v5 = MEMORY[0x1E69E7D40];
  if (a2)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v6 = (*((*MEMORY[0x1E69E7D40] & *v3) + 0x248))();
  v8 = sub_1A3D5B724(v6, v4, &qword_1EB12C1B0, off_1E771F698, v7);

  if ((v8 & 1) == 0)
  {
    v10 = *((*v5 & *v3) + 0x3C8);
    v11 = v10(v9);
    if (v11)
    {
      v13 = sub_1A3C33378(v11, v12);
      v14 = v10(v13);
      if (!v14)
      {
        __break(1u);
        return;
      }

      v16 = v15;
      v17 = v14;
      v14();
      sub_1A3C33378(v17, v16);
    }
  }
}

uint64_t sub_1A3ED0920@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x248))();
  *a2 = result;
  return result;
}

void sub_1A3ED0A04(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x560))();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A3ED0CC4(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x560))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore31SharedCollectionActionViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A3EE0F88(&qword_1EB12E1E8, type metadata accessor for SharedCollectionActionViewModel, &protocol conformance descriptor for SharedCollectionActionViewModel);
  sub_1A52415F4();

  sub_1A3ED06E8(v4);
}

uint64_t sub_1A3ED0E90@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x278))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t (*sub_1A3ED0FB0(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x560))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore31SharedCollectionActionViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A3EE0F88(&qword_1EB12E1E8, type metadata accessor for SharedCollectionActionViewModel, &protocol conformance descriptor for SharedCollectionActionViewModel);
  sub_1A52415F4();

  v4[7] = sub_1A3ED0E30(v4);
  return sub_1A3ED1110;
}

uint64_t sub_1A3ED117C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x2A8))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t (*sub_1A3ED129C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x560))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore31SharedCollectionActionViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A3EE0F88(&qword_1EB12E1E8, type metadata accessor for SharedCollectionActionViewModel, &protocol conformance descriptor for SharedCollectionActionViewModel);
  sub_1A52415F4();

  v4[7] = sub_1A3ED111C(v4);
  return sub_1A3ED13FC;
}

uint64_t sub_1A3ED1468@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x2D8))();
  *a2 = result & 1;
  return result;
}

uint64_t (*sub_1A3ED156C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x560))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore31SharedCollectionActionViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A3EE0F88(&qword_1EB12E1E8, type metadata accessor for SharedCollectionActionViewModel, &protocol conformance descriptor for SharedCollectionActionViewModel);
  sub_1A52415F4();

  v4[7] = sub_1A3ED1408(v4);
  return sub_1A3ED16CC;
}

uint64_t sub_1A3ED1738@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x308))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

void sub_1A3ED1830(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x560))();

  swift_beginAccess();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

double sub_1A3ED1904(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = (v4 + *a3);
  swift_beginAccess();
  v8 = *v7 == a1 && v7[1] == a2;
  if (v8 || (sub_1A524EAB4() & 1) != 0)
  {
    *v7 = a1;
    v7[1] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v11.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*((*MEMORY[0x1E69E7D40] & *v4) + 0x568))(v11);
  }

  return result;
}

uint64_t (*sub_1A3ED1A4C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x560))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore31SharedCollectionActionViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A3EE0F88(&qword_1EB12E1E8, type metadata accessor for SharedCollectionActionViewModel, &protocol conformance descriptor for SharedCollectionActionViewModel);
  sub_1A52415F4();

  v4[7] = sub_1A3ED16D8(v4);
  return sub_1A3ED1BAC;
}

uint64_t sub_1A3ED1C18@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x338))();
  *a2 = result;
  return result;
}

uint64_t sub_1A3ED1CDC()
{
  swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x560))();

  v1 = OBJC_IVAR____TtC12PhotosUICore31SharedCollectionActionViewModel__displayMediaType;
  swift_beginAccess();
  return *(v0 + v1);
}

double sub_1A3ED1D74(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12PhotosUICore31SharedCollectionActionViewModel__displayMediaType;
  swift_beginAccess();
  if (*(v1 + v3) != a1)
  {
    KeyPath = swift_getKeyPath();
    v6.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*((*MEMORY[0x1E69E7D40] & *v1) + 0x568))(v6);
  }

  return result;
}

uint64_t (*sub_1A3ED1E84(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x560))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore31SharedCollectionActionViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A3EE0F88(&qword_1EB12E1E8, type metadata accessor for SharedCollectionActionViewModel, &protocol conformance descriptor for SharedCollectionActionViewModel);
  sub_1A52415F4();

  v4[7] = sub_1A3ED1BB8(v4);
  return sub_1A3ED1FE4;
}

uint64_t sub_1A3ED2050@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x368))();
  *a2 = result;
  return result;
}

void sub_1A3ED2134(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x560))();

  swift_beginAccess();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t (*sub_1A3ED2320(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x560))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore31SharedCollectionActionViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A3EE0F88(&qword_1EB12E1E8, type metadata accessor for SharedCollectionActionViewModel, &protocol conformance descriptor for SharedCollectionActionViewModel);
  sub_1A52415F4();

  v4[7] = sub_1A3ED1FF0(v4);
  return sub_1A3ED2480;
}

uint64_t sub_1A3ED24EC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x398))();
  *a2 = result;
  return result;
}

void sub_1A3ED25BC()
{
  swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x560))();

  swift_beginAccess();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

double sub_1A3ED2658(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12PhotosUICore31SharedCollectionActionViewModel__perAssetCreationOptions;
  swift_beginAccess();
  if (*(v1 + v3))
  {
    if (a1)
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    goto LABEL_5;
  }

  if (a1)
  {
LABEL_5:
    KeyPath = swift_getKeyPath();
    v5.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*((*MEMORY[0x1E69E7D40] & *v1) + 0x568))(v5);

    return result;
  }

  *(v1 + v3) = 0;

  return result;
}

uint64_t (*sub_1A3ED27AC(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x560))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore31SharedCollectionActionViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A3EE0F88(&qword_1EB12E1E8, type metadata accessor for SharedCollectionActionViewModel, &protocol conformance descriptor for SharedCollectionActionViewModel);
  sub_1A52415F4();

  v4[7] = sub_1A3ED248C(v4);
  return sub_1A3ED290C;
}

uint64_t sub_1A3ED2978@<X0>(void **a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x3C8))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = sub_1A3C7146C;
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t sub_1A3ED2A20(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1A3D6069C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x3D0);
  v8 = sub_1A3C66EE8(v3, v4);
  return v7(v6, v5, v8);
}

uint64_t (*sub_1A3ED2B4C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x560))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore31SharedCollectionActionViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A3EE0F88(&qword_1EB12E1E8, type metadata accessor for SharedCollectionActionViewModel, &protocol conformance descriptor for SharedCollectionActionViewModel);
  sub_1A52415F4();

  v4[7] = sub_1A3ED2918(v4);
  return sub_1A3ED2CAC;
}

uint64_t sub_1A3ED2D18@<X0>(void **a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x3F8))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = sub_1A3EE12E0;
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t sub_1A3ED2DC0(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1A3EE12A8;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x400);
  v8 = sub_1A3C66EE8(v3, v4);
  return v7(v6, v5, v8);
}

uint64_t sub_1A3ED2EB8(uint64_t a1, void *a2, void (*a3)(void, void, __n128))
{
  swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v3) + 0x560))();

  v6 = (v3 + *a2);
  swift_beginAccess();
  v7 = *v6;
  (a3)(*v6, v6[1]);
  return v7;
}

double sub_1A3ED2FA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  KeyPath = swift_getKeyPath();
  v13 = v5;
  v14 = a1;
  v15 = a2;
  (*((*MEMORY[0x1E69E7D40] & *v5) + 0x568))(KeyPath, a4, &v12, MEMORY[0x1E69E7CA8] + 8);
  a5(a1, a2);

  return result;
}

uint64_t (*sub_1A3ED3074(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x560))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore31SharedCollectionActionViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A3EE0F88(&qword_1EB12E1E8, type metadata accessor for SharedCollectionActionViewModel, &protocol conformance descriptor for SharedCollectionActionViewModel);
  sub_1A52415F4();

  v4[7] = sub_1A3ED2CB8(v4);
  return sub_1A3ED31D4;
}

uint64_t sub_1A3ED3240@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x428))();
  *a2 = result & 1;
  return result;
}

uint64_t (*sub_1A3ED3344(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x560))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore31SharedCollectionActionViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A3EE0F88(&qword_1EB12E1E8, type metadata accessor for SharedCollectionActionViewModel, &protocol conformance descriptor for SharedCollectionActionViewModel);
  sub_1A52415F4();

  v4[7] = sub_1A3ED31E0(v4);
  return sub_1A3ED34A4;
}

uint64_t sub_1A3ED3510@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x458))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A3ED35EC(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x560))();

  v4 = *a2;
  swift_beginAccess();
  return *(v2 + v4);
}

void sub_1A3ED36AC(char a1, uint64_t *a2, uint64_t a3)
{
  v4 = a1 & 1;
  v5 = *a2;
  swift_beginAccess();
  if (*(v3 + v5) == v4)
  {
    *(v3 + v5) = v4;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v7.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*((*MEMORY[0x1E69E7D40] & *v3) + 0x568))(v7);
  }
}

uint64_t (*sub_1A3ED37B8(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x560))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore31SharedCollectionActionViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A3EE0F88(&qword_1EB12E1E8, type metadata accessor for SharedCollectionActionViewModel, &protocol conformance descriptor for SharedCollectionActionViewModel);
  sub_1A52415F4();

  v4[7] = sub_1A3ED34B0(v4);
  return sub_1A3ED3918;
}

uint64_t sub_1A3ED3AA4()
{
  v1 = [v0 inputItems];
  v2 = sub_1A524CA34();

  v3 = sub_1A3D5B5F8(v2);

  if (!v3)
  {
    return 0;
  }

  if (!(v3 >> 62))
  {
    result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  result = sub_1A524E2B4();
  if (!result)
  {
LABEL_11:

    return 0;
  }

LABEL_4:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x1A59097F0](0, v3);
    goto LABEL_7;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v5 = *(v3 + 32);
LABEL_7:
    v6 = v5;

    v7 = [v6 userInfo];
    if (v7)
    {
      v8 = v7;
      sub_1A524C3E4();

      sub_1A3D444EC();
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    return 0;
  }

  __break(1u);
  return result;
}

id sub_1A3ED3C7C()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x140);
  v3 = v2();
  if (!v3)
  {
    v18 = *((*v1 & *v0) + 0x218);
    v19 = v18();
    if (v19 >> 62)
    {
      v20 = sub_1A524E2B4();
    }

    else
    {
      v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v20 < 1)
    {
      v22 = (*((*v1 & *v0) + 0x1D0))(v21);
    }

    else
    {
      v22 = (v18)(v21);
    }

    if (v22 >> 62)
    {
      v11 = sub_1A524E2B4();
    }

    else
    {
      v11 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

LABEL_26:

    return v11;
  }

  result = v2();
  if (result)
  {
    v5 = result;
    v6 = [result inputItems];

    v7 = sub_1A524CA34();
    v8 = sub_1A3D4C284(v7);

    if (v8 >> 62)
    {
LABEL_30:
      v9 = sub_1A524E2B4();
    }

    else
    {
      v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v10 = 0;
    v11 = 0;
    while (v9 != v10)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x1A59097F0](v10, v8);
      }

      else
      {
        if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_28;
        }

        v12 = *(v8 + 8 * v10 + 32);
      }

      v13 = v12;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      result = [v12 attachments];
      if (!result)
      {
        __break(1u);
        goto LABEL_34;
      }

      v14 = result;
      sub_1A3C52C70(0, &qword_1EB120AD0, 0x1E696ACA0);
      v15 = sub_1A524CA34();

      if (v15 >> 62)
      {
        v16 = sub_1A524E2B4();
      }

      else
      {
        v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      ++v10;
      v17 = __OFADD__(v11, v16);
      v11 += v16;
      if (v17)
      {
        goto LABEL_29;
      }
    }

    goto LABEL_26;
  }

LABEL_34:
  __break(1u);
  return result;
}

double sub_1A3ED3F64()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x140))();
  if (v2)
  {

    return sub_1A3ED5660();
  }

  else
  {
    v4 = (*((*v1 & *v0) + 0x218))();
    if (v4 >> 62)
    {
      v5 = sub_1A524E2B4();
    }

    else
    {
      v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v5 < 1)
    {

      return sub_1A3EDBA0C();
    }

    else
    {

      return sub_1A3ED9BA4();
    }
  }
}

void sub_1A3ED4090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = MEMORY[0x1E69E7D40];
  v12 = (*((*MEMORY[0x1E69E7D40] & *v5) + 0x460))(1);
  v13 = (*((*v11 & *v5) + 0x1D0))(v12);
  v14 = sub_1A3ED4958();
  v15 = swift_allocObject();
  v15[2] = v5;
  v15[3] = a4;
  v15[4] = a5;
  v15[5] = a3;
  v16 = v5;
  sub_1A3C66EE8(a4, a5);
  swift_unknownObjectRetain();
  SharedCollectionsCreateAlbum(albumName:assets:photoLibrary:completionHandler:)(a1, a2, v13, v14, sub_1A3EDF40C, v15);
}

double sub_1A3ED41F0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = *(a1 + 32);
  if (a4)
  {
    v9 = sub_1A524CA34();
  }

  else
  {
    v9 = 0;
  }

  v10 = a2;
  v11 = a5;
  v8(a2, a3, v9, a5);

  return result;
}

void sub_1A3ED42AC(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = (*((*MEMORY[0x1E69E7D40] & *v3) + 0x1A0))();
  v9 = v8;
  v26 = MEMORY[0x1E69E7CC0];
  if (v8 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1A524E2B4())
  {
    v22 = a1;
    v23 = a2;
    v11 = 0;
    v24 = a3;
    a2 = v9 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x1A59097F0](v11, v9);
      }

      else
      {
        if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v12 = *(v9 + 8 * v11 + 32);
      }

      v13 = v12;
      a1 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      v14 = [v12 uuid];
      v15 = sub_1A524C674();
      v17 = v16;

      if (v15 == (*((*MEMORY[0x1E69E7D40] & *v4) + 0x308))() && v17 == v18)
      {
      }

      else
      {
        a3 = sub_1A524EAB4();

        if ((a3 & 1) == 0)
        {

          goto LABEL_6;
        }
      }

      sub_1A524E514();
      a3 = *(v26 + 16);
      sub_1A524E564();
      sub_1A524E574();
      sub_1A524E524();
LABEL_6:
      ++v11;
      if (a1 == i)
      {
        v20 = v26;
        a2 = v23;
        a3 = v24;
        a1 = v22;
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  v20 = MEMORY[0x1E69E7CC0];
LABEL_23:

  if ((v20 & 0x8000000000000000) == 0 && (v20 & 0x4000000000000000) == 0)
  {
    if (*(v20 + 16))
    {
      goto LABEL_26;
    }

LABEL_34:

    __break(1u);
    goto LABEL_35;
  }

  if (!sub_1A524E2B4())
  {
    goto LABEL_34;
  }

LABEL_26:
  if ((v20 & 0xC000000000000001) != 0)
  {
    v21 = MEMORY[0x1A59097F0](0, v20);
    goto LABEL_29;
  }

  if (!*(v20 + 16))
  {
LABEL_35:
    __break(1u);
    return;
  }

  v21 = *(v20 + 32);
LABEL_29:
  v25 = v21;

  (*((*MEMORY[0x1E69E7D40] & *v4) + 0x4E0))(v25, a1, a2, a3);
}

void sub_1A3ED45C8(void *a1, uint64_t a2, void (*a3)(void, void, __n128), uint64_t a4)
{
  v8 = MEMORY[0x1E69E7D40];
  v9 = (*((*MEMORY[0x1E69E7D40] & *v4) + 0x140))(a1, a2);
  if (v9)
  {
  }

  else
  {
    v10 = (*((*v8 & *v4) + 0x218))();
    if (v10 >> 62)
    {
      v11 = sub_1A524E2B4();
    }

    else
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v11 < 1)
    {
      (*((*v8 & *v4) + 0x460))(1);
      v13 = objc_opt_self();
      (*((*v8 & *v4) + 0x1D0))();
      sub_1A3C52C70(0, &qword_1EB126660, 0x1E6978630);
      v14 = sub_1A524CA14();

      (*((*v8 & *v4) + 0x2A8))(v15);
      v16 = sub_1A524C634();

      v17 = swift_allocObject();
      v17[2] = v4;
      v17[3] = a1;
      v17[4] = a3;
      v17[5] = a4;
      v21[4] = sub_1A3EE0C14;
      v21[5] = v17;
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 1107296256;
      v21[2] = sub_1A3D6084C;
      v21[3] = &block_descriptor_105;
      v18 = _Block_copy(v21);
      v19 = v4;
      v20 = a1;
      sub_1A3C66EE8(a3, a4);

      [v13 addAssetsTo:v20 assets:v14 comment:v16 completionHandler:v18];
      _Block_release(v18);

      return;
    }
  }

  v12 = *((*v8 & *v4) + 0x460);
  v12(1);
  v12(0);
  if (a3)
  {

    (a3)(0, 0);

    sub_1A3C33378(a3, a4);
  }
}

unint64_t sub_1A3ED4958()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x170))();
  if (v2)
  {
    v3 = v2;
    result = [v2 photoLibrary];
    if (result)
    {
LABEL_10:
      v6 = result;

      return v6;
    }

    __break(1u);
  }

  result = (*((*v1 & *v0) + 0x1D0))();
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }

LABEL_12:

    v10 = *((*((*v1 & *v0) + 0x110))(v9) + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_photoLibraryContext);

    v11 = *(v10 + 16);

    return v11;
  }

  v7 = result;
  v8 = sub_1A524E2B4();
  result = v7;
  if (!v8)
  {
    goto LABEL_12;
  }

LABEL_6:
  if ((result & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x1A59097F0](0);
LABEL_9:
    v3 = v5;

    result = [v3 photoLibrary];
    if (result)
    {
      goto LABEL_10;
    }

    goto LABEL_15;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v5 = *(result + 32);
    goto LABEL_9;
  }

  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

char *sub_1A3ED4B30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v89 = a2;
  v97 = *MEMORY[0x1E69E9840];
  v3 = sub_1A5246F24();
  v91 = *(v3 - 8);
  v92 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v82 = &v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v93 = &v81 - v6;
  v90 = sub_1A5240CB4();
  v7 = *(v90 - 1);
  MEMORY[0x1EEE9AC00](v90);
  v9 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_1A5240E64();
  v94 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v88 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v87 = &v81 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v84 = &v81 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v81 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v81 - v19;
  v21 = sub_1A52411C4();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v81 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v83) = sub_1A5240D24();
  sub_1A52411B4();
  v25 = sub_1A5241164();
  v27 = v26;
  (*(v22 + 8))(v24, v21);
  v95 = v25;
  v96 = v27;
  MEMORY[0x1A5907B60](46, 0xE100000000000000);
  v86 = a1;
  v28 = sub_1A5240CC4();
  MEMORY[0x1A5907B60](v28);

  v29 = v95;
  v30 = v96;
  v31 = NSTemporaryDirectory();
  sub_1A524C674();

  sub_1A5240D14();
  v32 = v20;

  v33 = *(v7 + 104);
  v34 = MEMORY[0x1E6968F58];
  v95 = v29;
  v96 = v30;
  v35 = v94;
  if ((v83 & 1) == 0)
  {
    v34 = MEMORY[0x1E6968F68];
  }

  v36 = v90;
  v33(v9, *v34, v90);
  sub_1A3D5F9DC();
  sub_1A5240E44();
  (*(v7 + 8))(v9, v36);
  v37 = v17;
  v38 = v85;
  v90 = *(v35 + 8);
  (v90)(v37, v85);
  v39 = v84;

  v40 = objc_opt_self();
  v41 = [v40 defaultManager];
  sub_1A5240E14();
  v42 = sub_1A524C634();

  v43 = [v41 fileExistsAtPath_];

  v44 = v93;
  v83 = v35 + 8;
  if (v43)
  {
    v45 = v44;
    v46 = [v40 defaultManager];
    v47 = sub_1A5240D44();
    v95 = 0;
    v48 = [v46 removeItemAtURL:v47 error:&v95];

    v49 = v95;
    if (!v48)
    {
      v60 = v87;
      v59 = v88;
      v62 = v86;
      goto LABEL_13;
    }

    v50 = v95;
    v44 = v45;
  }

  SharedCollectionsLogger.getter();
  (*(v35 + 16))(v39, v32, v38);
  v51 = sub_1A5246F04();
  v52 = sub_1A524D264();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v81 = v32;
    v54 = v38;
    v55 = v53;
    v95 = swift_slowAlloc();
    *v55 = 136446210;
    sub_1A3EE0F88(&qword_1EB12B000, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v56 = sub_1A524EA44();
    v58 = v57;
    (v90)(v39, v54);
    sub_1A3C2EF94(v56, v58, &v95);
  }

  (v90)(v39, v38);
  (*(v91 + 8))(v44, v92);
  v60 = v87;
  v59 = v88;
  v61 = [v40 defaultManager];
  v62 = v86;
  v63 = sub_1A5240D44();
  v64 = sub_1A5240D44();
  v95 = 0;
  v65 = [v61 copyItemAtURL:v63 toURL:v64 error:&v95];

  v49 = v95;
  if (v65)
  {
    v93 = v95;
    v66 = v89;
    (*(v35 + 32))(v89, v32, v38);
    (*(v35 + 56))(v66, 0, 1, v38);
    v67 = v93;

    return v67;
  }

LABEL_13:
  v93 = v49;
  v69 = v49;
  v70 = sub_1A5240B84();

  swift_willThrow();
  v71 = v82;
  SharedCollectionsLogger.getter();
  v72 = *(v35 + 16);
  v72(v60, v62, v38);
  v72(v59, v32, v38);
  v73 = v70;
  v74 = sub_1A5246F04();
  v75 = sub_1A524D244();

  if (os_log_type_enabled(v74, v75))
  {
    v76 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    v93 = swift_slowAlloc();
    v95 = v93;
    *v76 = 136315650;
    sub_1A3EE0F88(&qword_1EB12B000, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v81 = v32;
    LODWORD(v87) = v75;
    v77 = sub_1A524EA44();
    v79 = v78;
    (v90)(v60, v38);
    sub_1A3C2EF94(v77, v79, &v95);
  }

  v80 = v90;
  (v90)(v59, v38);
  v80(v60, v38);
  (*(v91 + 8))(v71, v92);
  v80(v32, v38);
  return (*(v35 + 56))(v89, 1, 1, v38);
}