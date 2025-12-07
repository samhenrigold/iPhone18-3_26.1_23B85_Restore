uint64_t sub_1AAE3997C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF8 && a1[41])
  {
    return (*a1 + 248);
  }

  v3 = *a1;
  v4 = v3 >= 9;
  v5 = v3 - 9;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1AAE399C0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF7)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 248;
    if (a3 >= 0xF8)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF8)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *result = a2 + 8;
    }
  }

  return result;
}

uint64_t sub_1AAE39A2C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v4;
  v8 = *(a1 + 32);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  v10 = *(a2 + 32);
  return v3(v7, v9);
}

unint64_t sub_1AAE39A84()
{
  result = qword_1ED9ADA50;
  if (!qword_1ED9ADA50)
  {
    sub_1AAD0A750(255, &qword_1ED9ADA48, sub_1AAE386A4, &type metadata for ScrollViewBoundsReader, MEMORY[0x1E697FDE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9ADA50);
  }

  return result;
}

uint64_t sub_1AAE39B14(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void), uint64_t a4)
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

double sub_1AAE39BBC()
{
  sub_1AAF8E934();
  sub_1AAF8E864();
  result = *&v1;
  xmmword_1ED9C3420 = v1;
  *algn_1ED9C3430 = v2;
  byte_1ED9C3440 = v3;
  return result;
}

double sub_1AAE39C2C()
{
  sub_1AAE39C6C(v1);
  result = *v1;
  xmmword_1EB4320C8 = v1[0];
  unk_1EB4320D8 = v1[1];
  byte_1EB4320E8 = v2;
  return result;
}

double sub_1AAE39C6C@<D0>(uint64_t a1@<X8>)
{
  sub_1AAF8E934();
  sub_1AAF8E8A4();
  sub_1AAF8E8D4();
  sub_1AAF8E8F4();
  sub_1AAF8E8D4();
  sub_1AAF8E8F4();
  sub_1AAF8E8D4();
  sub_1AAF8E8D4();
  sub_1AAF8E8F4();
  sub_1AAF8E8D4();
  sub_1AAF8E8F4();
  sub_1AAF8E8D4();
  sub_1AAF8E8D4();
  sub_1AAF8E8F4();
  sub_1AAF8E8D4();
  sub_1AAF8E8F4();
  sub_1AAF8E8D4();
  sub_1AAF8E8D4();
  sub_1AAF8E8F4();
  sub_1AAF8E8D4();
  sub_1AAF8E8F4();
  sub_1AAF8E884();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

double sub_1AAE39F1C()
{
  sub_1AAF8E934();
  sub_1AAF8E8A4();
  sub_1AAF8E8F4();
  sub_1AAF8E8D4();
  sub_1AAF8E8F4();
  sub_1AAF8E8D4();
  sub_1AAF8E8F4();
  sub_1AAF8E884();
  result = *&v1;
  xmmword_1EB4320F0 = v1;
  unk_1EB432100 = v2;
  byte_1EB432110 = v3;
  return result;
}

double sub_1AAE3A05C()
{
  sub_1AAE3A09C(v1);
  result = *v1;
  xmmword_1EB432118 = v1[0];
  unk_1EB432128 = v1[1];
  byte_1EB432138 = v2;
  return result;
}

double sub_1AAE3A09C@<D0>(uint64_t a1@<X8>)
{
  sub_1AAF8E934();
  sub_1AAF8E8A4();
  sub_1AAF8E8D4();
  sub_1AAF8E8F4();
  sub_1AAF8E8D4();
  sub_1AAF8E8F4();
  sub_1AAF8E8D4();
  sub_1AAF8E8D4();
  sub_1AAF8E8F4();
  sub_1AAF8E8D4();
  sub_1AAF8E8F4();
  sub_1AAF8E8D4();
  sub_1AAF8E8D4();
  sub_1AAF8E8F4();
  sub_1AAF8E8D4();
  sub_1AAF8E8F4();
  sub_1AAF8E8D4();
  sub_1AAF8E8D4();
  sub_1AAF8E8F4();
  sub_1AAF8E8D4();
  sub_1AAF8E8F4();
  sub_1AAF8E884();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

double sub_1AAE3A324()
{
  sub_1AAF8E934();
  sub_1AAF8E8A4();
  sub_1AAF8E8F4();
  sub_1AAF8E8D4();
  sub_1AAF8E8F4();
  sub_1AAF8E8D4();
  sub_1AAF8E8F4();
  sub_1AAF8E8D4();
  sub_1AAF8E8F4();
  sub_1AAF8E884();
  result = *&v1;
  xmmword_1EB432140 = v1;
  *algn_1EB432150 = v2;
  byte_1EB432160 = v3;
  return result;
}

double sub_1AAE3A460()
{
  sub_1AAE3A4A0(v1);
  result = *v1;
  xmmword_1EB432168 = v1[0];
  unk_1EB432178 = v1[1];
  byte_1EB432188 = v2;
  return result;
}

double sub_1AAE3A4A0@<D0>(uint64_t a1@<X8>)
{
  sub_1AAF8E934();
  sub_1AAF8E8A4();
  sub_1AAF8E8D4();
  sub_1AAF8E8F4();
  sub_1AAF8E8D4();
  sub_1AAF8E8F4();
  sub_1AAF8E8D4();
  sub_1AAF8E8D4();
  sub_1AAF8E8F4();
  sub_1AAF8E8D4();
  sub_1AAF8E8F4();
  sub_1AAF8E8D4();
  sub_1AAF8E8D4();
  sub_1AAF8E8F4();
  sub_1AAF8E8D4();
  sub_1AAF8E8F4();
  sub_1AAF8E8D4();
  sub_1AAF8E8D4();
  sub_1AAF8E8F4();
  sub_1AAF8E8D4();
  sub_1AAF8E8F4();
  sub_1AAF8E8D4();
  sub_1AAF8E8D4();
  sub_1AAF8E8F4();
  sub_1AAF8E8D4();
  sub_1AAF8E8F4();
  sub_1AAF8E8D4();
  sub_1AAF8E8D4();
  sub_1AAF8E8F4();
  sub_1AAF8E8D4();
  sub_1AAF8E8F4();
  sub_1AAF8E884();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

double sub_1AAE3A894()
{
  sub_1AAF8E934();
  sub_1AAF8E8A4();
  sub_1AAF8E8F4();
  sub_1AAF8E8D4();
  sub_1AAF8E8F4();
  sub_1AAF8E8D4();
  sub_1AAF8E8F4();
  sub_1AAF8E8D4();
  sub_1AAF8E8F4();
  sub_1AAF8E884();
  result = *&v1;
  xmmword_1EB432190 = v1;
  unk_1EB4321A0 = v2;
  byte_1EB4321B0 = v3;
  return result;
}

double sub_1AAE3A9F8()
{
  sub_1AAF8E934();
  sub_1AAF8E8A4();
  sub_1AAF8E8F4();
  sub_1AAF8E8D4();
  sub_1AAF8E8F4();
  sub_1AAF8E8D4();
  sub_1AAF8E8F4();
  sub_1AAF8E8D4();
  sub_1AAF8E8F4();
  sub_1AAF8E8D4();
  sub_1AAF8E8F4();
  sub_1AAF8E884();
  result = *&v1;
  xmmword_1EB4321C0 = v1;
  *algn_1EB4321D0 = v2;
  byte_1EB4321E0 = v3;
  return result;
}

double sub_1AAE3ABE8@<D0>(uint64_t a1@<X8>)
{
  sub_1AAF8E934();
  sub_1AAF8E8A4();
  sub_1AAF8E8F4();
  sub_1AAF8E8D4();
  sub_1AAF8E8F4();
  sub_1AAF8E8D4();
  sub_1AAF8E8F4();
  sub_1AAF8E8D4();
  sub_1AAF8E8F4();
  sub_1AAF8E884();
  sub_1AAF8E8A4();
  sub_1AAF8E8F4();
  sub_1AAF8E8D4();
  sub_1AAF8E8F4();
  sub_1AAF8E8D4();
  sub_1AAF8E8F4();
  sub_1AAF8E8D4();
  sub_1AAF8E8F4();
  sub_1AAF8E884();
  result = *&v4;
  *a1 = v4;
  *(a1 + 16) = v5;
  *(a1 + 32) = v6;
  return result;
}

double sub_1AAE3AE10@<D0>(uint64_t a1@<X8>, double a2@<D0>)
{
  if (a2 <= 1.0)
  {
    v3 = a2;
  }

  else
  {
    v3 = 1.0;
  }

  if (a2 > 0.0)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0.0;
  }

  sub_1AAF8E934();
  sub_1AAF8E8A4();
  sub_1AAF8E8F4();
  sub_1AAF8E8D4();
  sub_1AAF8E8F4();
  sub_1AAF8E8D4();
  sub_1AAF8E8F4();
  sub_1AAF8E8D4();
  sub_1AAF8E8F4();
  sub_1AAF8E884();
  sub_1AAF8E8A4();
  if (v4 >= 0.271820972)
  {
    sub_1AAF8E8D4();
    sub_1AAF8E8D4();
    sub_1AAF8E8D4();
    sub_1AAF8E8D4();
    sub_1AAF8E8D4();
    sub_1AAF8E8D4();
    sub_1AAF8E8D4();
  }

  else
  {
    sub_1AAF8E8F4();
    sub_1AAF8E8D4();
    sub_1AAF8E8F4();
    sub_1AAF8E8D4();
    sub_1AAF8E8F4();
    sub_1AAF8E8D4();
    sub_1AAF8E8F4();
  }

  sub_1AAF8E884();
  result = *&v6;
  *a1 = v6;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  return result;
}

double sub_1AAE3B0EC@<D0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v3 = 1.0;
  if (a2 <= 1.0)
  {
    v3 = a2;
  }

  v4 = a2 > 0.0;
  v5 = 0.0;
  if (v4)
  {
    v5 = v3;
  }

  v7 = v5;
  sub_1AAF8E934();
  sub_1AAF8E8A4();
  sub_1AAF8E8F4();
  sub_1AAF8E8D4();
  sub_1AAF8E8F4();
  sub_1AAF8E8D4();
  sub_1AAF8E8F4();
  sub_1AAF8E8D4();
  sub_1AAF8E8F4();
  sub_1AAF8E884();
  sub_1AAF8E8A4();
  if (v7 >= 0.292355541)
  {
    sub_1AAF8E8D4();
    sub_1AAF8E8D4();
    sub_1AAF8E8D4();
    sub_1AAF8E8D4();
    sub_1AAF8E8D4();
    sub_1AAF8E8D4();
    sub_1AAF8E8D4();
  }

  else
  {
    sub_1AAF8E8F4();
    sub_1AAF8E8D4();
    sub_1AAF8E8F4();
    sub_1AAF8E8D4();
    sub_1AAF8E8F4();
    sub_1AAF8E8D4();
    sub_1AAF8E8F4();
  }

  sub_1AAF8E884();
  result = *&v8;
  *a1 = v8;
  *(a1 + 16) = v9;
  *(a1 + 32) = v10;
  return result;
}

double sub_1AAE3B450@<D0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v3 = 1.0;
  if (a2 <= 1.0)
  {
    v3 = a2;
  }

  if (a2 > 0.0)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0.0;
  }

  sub_1AAF8E934();
  sub_1AAF8E8A4();
  sub_1AAF8E8F4();
  sub_1AAF8E8D4();
  sub_1AAF8E8F4();
  sub_1AAF8E8D4();
  sub_1AAF8E8F4();
  sub_1AAF8E884();
  sub_1AAF8E8A4();
  if (v4 >= 0.338203119)
  {
    sub_1AAF8E8D4();
    sub_1AAF8E8D4();
    sub_1AAF8E8D4();
    sub_1AAF8E8D4();
    sub_1AAF8E8D4();
  }

  else
  {
    sub_1AAF8E8F4();
    sub_1AAF8E8D4();
    sub_1AAF8E8F4();
    sub_1AAF8E8D4();
    sub_1AAF8E8F4();
  }

  sub_1AAF8E884();
  result = *&v6;
  *a1 = v6;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  return result;
}

double sub_1AAE3B7B0@<D0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v3 = 1.0;
  if (a2 <= 1.0)
  {
    v3 = a2;
  }

  if (a2 > 0.0)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0.0;
  }

  sub_1AAF8E934();
  sub_1AAF8E8A4();
  sub_1AAF8E8F4();
  sub_1AAF8E8D4();
  sub_1AAF8E8F4();
  sub_1AAF8E8D4();
  sub_1AAF8E8F4();
  sub_1AAF8E8D4();
  sub_1AAF8E8F4();
  sub_1AAF8E8D4();
  sub_1AAF8E8F4();
  sub_1AAF8E884();
  sub_1AAF8E8A4();
  if (v4 >= 0.258937054)
  {
    sub_1AAF8E8D4();
    sub_1AAF8E8D4();
    sub_1AAF8E8D4();
    sub_1AAF8E8D4();
    sub_1AAF8E8D4();
    sub_1AAF8E8D4();
    sub_1AAF8E8D4();
    sub_1AAF8E8D4();
    sub_1AAF8E8D4();
  }

  else
  {
    sub_1AAF8E8F4();
    sub_1AAF8E8D4();
    sub_1AAF8E8F4();
    sub_1AAF8E8D4();
    sub_1AAF8E8F4();
    sub_1AAF8E8D4();
    sub_1AAF8E8F4();
    sub_1AAF8E8D4();
    sub_1AAF8E8F4();
  }

  sub_1AAF8E884();
  result = *&v6;
  *a1 = v6;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  return result;
}

double ChartSymbolShape<>.strokeBorder(lineWidth:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = *(a1 - 8);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, v13, a1, v10);
  sub_1AAF8D914();
  (*(v9 + 32))(a4, v12, a1);
  v14 = a4 + *(type metadata accessor for StrokedSymbolShape(0, a1, a2, a3) + 44);
  result = *&v18;
  v16 = v19;
  *v14 = v18;
  *(v14 + 16) = v16;
  *(v14 + 32) = v20;
  return result;
}

double ChartSymbolShape<>.strokeBorder(style:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v11 = *(a2 - 8);
  v12 = MEMORY[0x1EEE9AC00](a1);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, v5, a2, v12);
  (*(v11 + 32))(a5, v14, a2);
  v15 = a5 + *(type metadata accessor for StrokedSymbolShape(0, a2, a3, a4) + 44);
  v16 = *(a1 + 16);
  *v15 = *a1;
  *(v15 + 16) = v16;
  *(v15 + 32) = *(a1 + 32);

  return result;
}

double sub_1AAE3BF60@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v25 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v24 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v24 - v9;
  swift_getAssociatedConformanceWitness();
  v11 = sub_1AAF8DB94();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v24 - v13;
  v15 = (v6 + *(a1 + 44));
  v16 = *v15;
  sub_1AAF8DEF4();
  v17 = v15[3];
  v18 = v15[4];
  v20 = v15[1];
  v19 = v15[2];
  v29 = v16;
  v30 = v20;
  v31 = v19;
  v32 = v17;
  v33 = v18;
  sub_1AAF8EE04();
  (*(v24 + 8))(v10, AssociatedTypeWitness);
  sub_1AAF8DB84();
  (*(v12 + 8))(v14, v11);
  result = *&v26;
  v22 = v27;
  v23 = v25;
  *v25 = v26;
  v23[1] = v22;
  *(v23 + 32) = v28;
  return result;
}

double sub_1AAE3C1E8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AAE3BF60(a1, v9);
  result = *v9;
  v8 = v9[1];
  *a2 = v9[0];
  *(a2 + 16) = v8;
  *(a2 + 32) = v10;
  return result;
}

void (*sub_1AAE3C254(uint64_t *a1))(void *)
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
  *(v2 + 32) = sub_1AAF8D804();
  return sub_1AAE3C2DC;
}

uint64_t sub_1AAE3C2E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDE4440](a1, a2, a3, WitnessTable);
}

uint64_t sub_1AAE3C35C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDE43F0](a1, a2, a3, WitnessTable);
}

uint64_t sub_1AAE3C3D8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDE4410](a1, WitnessTable);
}

__n128 sub_1AAE3C43C@<Q0>(uint64_t a1@<X8>)
{
  v42 = MEMORY[0x1E69E7CC0];
  Mutable = CGPathCreateMutable();
  v3 = sub_1AAF8E834();
  v4 = swift_allocObject();
  *(v4 + 16) = &Mutable;
  *(v4 + 24) = &v42;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1AAE3E628;
  *(v5 + 24) = v4;
  v39 = sub_1AAE3E630;
  v40 = v5;
  aBlock.n128_u64[0] = MEMORY[0x1E69E9820];
  aBlock.n128_u64[1] = 1107296256;
  *&v38 = sub_1AAE3C9E8;
  *(&v38 + 1) = &unk_1F1FD8A68;
  v6 = _Block_copy(&aBlock);

  CGPathApplyWithBlock(v3, v6);

  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    goto LABEL_33;
  }

  v35 = a1;
  isEscapingClosureAtFileLocation = v42;
  v1 = v42 & 0xFFFFFFFFFFFFFF8;
  if (v42 >> 62)
  {
    goto LABEL_34;
  }

  for (i = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1AAF8FFB4())
  {

    if (!i)
    {
      break;
    }

    v9 = 0;
    v10 = 0;
    v11 = isEscapingClosureAtFileLocation & 0xC000000000000001;
    v12 = 0.0;
    v13 = 1;
    while (1)
    {
      if (v11)
      {
        v14 = MEMORY[0x1AC598D40](v10, isEscapingClosureAtFileLocation);
      }

      else
      {
        if (v10 >= *(v1 + 16))
        {
          goto LABEL_32;
        }

        v14 = *(isEscapingClosureAtFileLocation + 32 + 8 * v10);
      }

      v15 = v14;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      PathBoundingBox = CGPathGetPathBoundingBox(v14);
      x = PathBoundingBox.origin.x;
      y = PathBoundingBox.origin.y;
      width = PathBoundingBox.size.width;
      height = PathBoundingBox.size.height;
      v20 = CGRectGetWidth(PathBoundingBox);
      v44.origin.x = x;
      v44.origin.y = y;
      v44.size.width = width;
      v44.size.height = height;
      v21 = -(v20 * CGRectGetHeight(v44));
      if (!(v13 & 1 | (v21 < v12)))
      {

        if (v10 + 1 == i)
        {
LABEL_25:
          v15 = v9;
          goto LABEL_27;
        }

        v22 = v10 + 5;
        while (1)
        {
          v23 = v22 - 4;
          if (v11)
          {
            v24 = MEMORY[0x1AC598D40](v22 - 4, isEscapingClosureAtFileLocation);
          }

          else
          {
            if (v23 >= *(v1 + 16))
            {
              goto LABEL_32;
            }

            v24 = *(isEscapingClosureAtFileLocation + 8 * v22);
          }

          v15 = v24;
          v25 = __OFADD__(v23, 1);
          v10 = v22 - 3;
          if (v25)
          {
            goto LABEL_31;
          }

          v45 = CGPathGetPathBoundingBox(v24);
          v26 = v45.origin.x;
          v27 = v45.origin.y;
          v28 = v45.size.width;
          v29 = v45.size.height;
          v30 = CGRectGetWidth(v45);
          v46.origin.x = v26;
          v46.origin.y = v27;
          v46.size.width = v28;
          v46.size.height = v29;
          v21 = -(v30 * CGRectGetHeight(v46));
          if (v21 < v12)
          {
            goto LABEL_12;
          }

          ++v22;
          if (v10 == i)
          {
            goto LABEL_25;
          }
        }
      }

      ++v10;
LABEL_12:

      v13 = 0;
      v9 = v15;
      v12 = v21;
      if (v10 == i)
      {
        goto LABEL_27;
      }
    }

LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    ;
  }

  v15 = 0;
LABEL_27:

  if (v15)
  {
    sub_1AAF8E954();
  }

  else
  {
    sub_1AAF8E934();
  }

  v31 = v35;
  v32 = v39;
  v34 = v38;
  v36 = aBlock;

  result = v36;
  *v31 = v36;
  *(v31 + 16) = v34;
  *(v31 + 32) = v32;
  return result;
}

uint64_t sub_1AAE3C7CC(int *a1, CGMutablePathRef *a2, void *a3)
{
  v4 = *a1;
  if (*a1 <= 1)
  {
    if (v4)
    {
      if (v4 != 1)
      {
        goto LABEL_19;
      }

      *a2;
      sub_1AAF8FD64();
    }

    else
    {
      *a2;
      sub_1AAF8FD54();
    }
  }

  else
  {
    switch(v4)
    {
      case 2:
        *a2;
        sub_1AAF8FD44();
        break;
      case 3:
        *a2;
        sub_1AAF8FD74();
        break;
      case 4:
        CGPathCloseSubpath(*a2);
        if (!CGPathIsEmpty(*a2))
        {
          v6 = *a2;
          MEMORY[0x1AC598430]();
          if (*((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1AAF8F874();
          }

          sub_1AAF8F8C4();
        }

        *a2 = CGPathCreateMutable();
        break;
      default:
LABEL_19:
        __break(1u);
        return MEMORY[0x1EEE66BB8]();
    }
  }

  return MEMORY[0x1EEE66BB8]();
}

double AnyChartSymbolShape.path(in:)@<D0>(uint64_t a1@<X8>)
{
  sub_1AACBB42C(v5, v5[3]);
  sub_1AAF8EDA4();
  result = *&v8;
  *a1 = v8;
  *(a1 + 16) = v9;
  *(a1 + 32) = v10;
  return result;
}

uint64_t AnyChartSymbolShape.perceptualUnitRect.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  sub_1AACBB42C(v0, v1);
  return (*(v2 + 16))(v1, v2);
}

unint64_t sub_1AAE3CB00()
{
  qword_1ED9C3468 = &type metadata for BasicChartSymbolShape;
  result = sub_1AAE3E100();
  qword_1ED9C3470 = result;
  qword_1ED9C3450 = 0;
  byte_1ED9C3458 = 5;
  return result;
}

unint64_t sub_1AAE3CB54()
{
  qword_1ED9C3350 = &type metadata for BasicChartSymbolShape;
  result = sub_1AAE3E100();
  qword_1ED9C3358 = result;
  qword_1ED9C3338 = 1;
  byte_1ED9C3340 = 5;
  return result;
}

unint64_t sub_1AAE3CBB0()
{
  qword_1ED9C32D8 = &type metadata for BasicChartSymbolShape;
  result = sub_1AAE3E100();
  qword_1ED9C32E0 = result;
  qword_1ED9C32C0 = 3;
  byte_1ED9C32C8 = 5;
  return result;
}

unint64_t sub_1AAE3CC0C()
{
  qword_1ED9C3328 = &type metadata for BasicChartSymbolShape;
  result = sub_1AAE3E100();
  qword_1ED9C3330 = result;
  qword_1ED9C3310 = 2;
  byte_1ED9C3318 = 5;
  return result;
}

unint64_t sub_1AAE3CC68()
{
  qword_1EB432200 = &type metadata for BasicChartSymbolShape;
  result = sub_1AAE3E100();
  qword_1EB432208 = result;
  qword_1EB4321E8 = 4;
  byte_1EB4321F0 = 5;
  return result;
}

unint64_t sub_1AAE3CCC4()
{
  qword_1ED9C33A0 = &type metadata for BasicChartSymbolShape;
  result = sub_1AAE3E100();
  qword_1ED9C33A8 = result;
  qword_1ED9C3388 = 6;
  byte_1ED9C3390 = 5;
  return result;
}

unint64_t sub_1AAE3CD20()
{
  qword_1ED9C3378 = &type metadata for BasicChartSymbolShape;
  result = sub_1AAE3E100();
  qword_1ED9C3380 = result;
  qword_1ED9C3360 = 5;
  byte_1ED9C3368 = 5;
  return result;
}

unint64_t sub_1AAE3CD74()
{
  qword_1ED9C3300 = &type metadata for BasicChartSymbolShape;
  result = sub_1AAE3E100();
  qword_1ED9C3308 = result;
  qword_1ED9C32E8 = 7;
  byte_1ED9C32F0 = 5;
  return result;
}

void sub_1AAE3CDD0(uint64_t *a1@<X8>, double a2@<D0>)
{
  sub_1AACAEF68(v2, v14);
  sub_1AAE3E670();
  sub_1AAE3E6D4();
  if (swift_dynamicCast())
  {
    sub_1AAE3E7F4(v13, &v15);
    v5 = v16;
    v6 = v17;
    v7 = v18;
    sub_1AACBB42C(&v15, v16);
    a1[3] = type metadata accessor for StrokedSymbolShape(0, v5, v6, v7);
    a1[4] = swift_getWitnessTable();
    v8 = sub_1AACB2508(a1);
    ChartSymbolShape<>.strokeBorder(lineWidth:)(v5, v6, v7, v8);
    sub_1AACB634C(&v15);
  }

  else
  {
    memset(v13, 0, sizeof(v13));
    sub_1AAE3E740(v13);
    sub_1AACAEF68(v2, &v15);
    if (swift_dynamicCast())
    {
      sub_1AAE3CF88(&v15, a2);
      v9 = BYTE8(v15);
      if (BYTE8(v15) == 255)
      {
        v10 = 0;
        v12 = 0;
        v11 = 0;
        a1[1] = 0;
        a1[2] = 0;
      }

      else
      {
        v10 = v15;
        v11 = sub_1AAE3E100();
        *(a1 + 8) = v9;
        v12 = &type metadata for BasicChartSymbolShape;
      }

      *a1 = v10;
      a1[3] = v12;
      a1[4] = v11;
    }

    else
    {
      a1[4] = 0;
      *a1 = 0u;
      *(a1 + 1) = 0u;
    }
  }
}

void sub_1AAE3CF88(uint64_t a1@<X8>, double a2@<D0>)
{
  v3 = *v2;
  v4 = *(v2 + 8);
  if (v4 <= 2)
  {
    if (v4 >= 2)
    {
      *a1 = v3;
LABEL_4:
      *(a1 + 8) = 2;
      return;
    }

    goto LABEL_7;
  }

  if (v4 == 3 || v4 == 4)
  {
LABEL_7:
    *a1 = v3;
    *(a1 + 8) = v4;
    return;
  }

  if (v3 > 2)
  {
    if ((v3 - 5) >= 3)
    {
      *a1 = a2;
      if (v3 == 3)
      {
        *(a1 + 8) = 3;
      }

      else
      {
        *(a1 + 8) = 4;
      }
    }

    else
    {
      *a1 = 0;
      *(a1 + 8) = -1;
    }
  }

  else if (v3)
  {
    if (v3 != 1)
    {
      *a1 = a2;
      goto LABEL_4;
    }

    *a1 = a2;
    *(a1 + 8) = 1;
  }

  else
  {
    *a1 = a2;
    *(a1 + 8) = 0;
  }
}

uint64_t sub_1AAE3D04C()
{
  v1 = v0[3];
  v2 = v0[4];
  sub_1AACBB42C(v0, v1);
  return (*(v2 + 16))(v1, v2);
}

double sub_1AAE3D0A0@<D0>(uint64_t a1@<X8>)
{
  sub_1AACBB42C(v5, v5[3]);
  sub_1AAF8EDA4();
  result = *&v8;
  *a1 = v8;
  *(a1 + 16) = v9;
  *(a1 + 32) = v10;
  return result;
}

void (*sub_1AAE3D138(uint64_t *a1))(void *)
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
  *(v2 + 32) = sub_1AAF8D804();
  return sub_1AAE3E818;
}

uint64_t sub_1AAE3D1C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1AAE3DCB4();

  return MEMORY[0x1EEDE4440](a1, a2, a3, v6);
}

uint64_t sub_1AAE3D224(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1AAE3DCB4();

  return MEMORY[0x1EEDE43F0](a1, a2, a3, v6);
}

uint64_t sub_1AAE3D288(uint64_t a1)
{
  v2 = sub_1AAE3DCB4();

  return MEMORY[0x1EEDE4410](a1, v2);
}

void *BasicChartSymbolShape.path(in:)@<X0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  v11 = *v5;
  v12 = *(v5 + 8);
  Width = CGRectGetWidth(*&a2);
  v37.origin.x = a2;
  v37.origin.y = a3;
  v37.size.width = a4;
  v37.size.height = a5;
  Height = CGRectGetHeight(v37);
  if (Height >= Width)
  {
    Height = Width;
  }

  v15 = Height * 0.5;
  v38.origin.x = a2;
  v38.origin.y = a3;
  v38.size.width = a4;
  v38.size.height = a5;
  MidX = CGRectGetMidX(v38);
  v39.origin.x = a2;
  v39.origin.y = a3;
  v39.size.width = a4;
  v39.size.height = a5;
  MidY = CGRectGetMidY(v39);
  if (v12 <= 2)
  {
    if (v12)
    {
      if (v12 == 1)
      {
        v31 = v15 * 3.65858451 * 0.25;
        v32 = 0;
        v33 = 0;
        v34 = v31;
        v35 = MidX;
        v36 = MidY;
        sub_1AAE3AE10(v26, v11 / v31);
      }

      else
      {
        v31 = v15 * 3.4016116 * 0.25;
        v32 = 0;
        v33 = 0;
        v34 = v31;
        v35 = MidX;
        v36 = MidY;
        sub_1AAE3B0EC(v26, v11 / v31);
      }
    }

    else
    {
      v31 = v15 * 4.0 * 0.25;
      v32 = 0;
      v33 = 0;
      v34 = v31;
      v35 = MidX;
      v36 = MidY;
      sub_1AAE3ABE8(v26);
    }

    goto LABEL_13;
  }

  if (v12 == 3)
  {
    v31 = v15 * 2.94048146 * 0.25;
    v32 = 0;
    v33 = 0;
    v34 = v31;
    v35 = MidX;
    v36 = MidY;
    sub_1AAE3B450(v26, v11 / v31);
    goto LABEL_13;
  }

  if (v12 == 4)
  {
    v31 = v15 * 3.84062453 * 0.25;
    v32 = 0;
    v33 = 0;
    v34 = v31;
    v35 = MidX;
    v36 = MidY;
    sub_1AAE3B7B0(v26, v11 / v31);
LABEL_13:
    sub_1AAF8E914();
    v24 = v28;
    v25 = v29;
    v18 = v30;
    result = sub_1AAD12C10(v26);
    v21 = v24;
    v20 = v25;
    goto LABEL_14;
  }

  if (*&v11 > 3)
  {
    if (*&v11 > 5)
    {
      if (*&v11 == 6)
      {
        v31 = v15 * 4.5521075 * 0.25;
        v32 = 0;
        v33 = 0;
        v34 = v31;
        v35 = MidX;
        v36 = MidY;
        if (qword_1EB422BD8 != -1)
        {
          swift_once();
        }

        v22 = &xmmword_1EB432118;
      }

      else
      {
        v31 = v15 * 4.66398225 * 0.25;
        v32 = 0;
        v33 = 0;
        v34 = v31;
        v35 = MidX;
        v36 = MidY;
        if (qword_1EB422BE8 != -1)
        {
          swift_once();
        }

        v22 = &xmmword_1EB432168;
      }
    }

    else if (*&v11 == 4)
    {
      v31 = v15 * 3.84062453 * 0.25;
      v32 = 0;
      v33 = 0;
      v34 = v31;
      v35 = MidX;
      v36 = MidY;
      if (qword_1EB422BF8 != -1)
      {
        swift_once();
      }

      v22 = &xmmword_1EB4321C0;
    }

    else
    {
      v31 = v15 * 4.66398225 * 0.25;
      v32 = 0;
      v33 = 0;
      v34 = v31;
      v35 = MidX;
      v36 = MidY;
      if (qword_1EB422BC8 != -1)
      {
        swift_once();
      }

      v22 = &xmmword_1EB4320C8;
    }
  }

  else if (*&v11 > 1)
  {
    if (*&v11 == 2)
    {
      v31 = v15 * 3.4016116 * 0.25;
      v32 = 0;
      v33 = 0;
      v34 = v31;
      v35 = MidX;
      v36 = MidY;
      if (qword_1EB422BF0 != -1)
      {
        swift_once();
      }

      v22 = &xmmword_1EB432190;
    }

    else
    {
      v31 = v15 * 2.94048146 * 0.25;
      v32 = 0;
      v33 = 0;
      v34 = v31;
      v35 = MidX;
      v36 = MidY;
      if (qword_1EB422BD0 != -1)
      {
        swift_once();
      }

      v22 = &xmmword_1EB4320F0;
    }
  }

  else if (v11 == 0.0)
  {
    v31 = v15 * 4.0 * 0.25;
    v32 = 0;
    v33 = 0;
    v34 = v31;
    v35 = MidX;
    v36 = MidY;
    if (qword_1ED9B09B0 != -1)
    {
      swift_once();
    }

    v22 = &xmmword_1ED9C3420;
  }

  else
  {
    v31 = v15 * 3.65858451 * 0.25;
    v32 = 0;
    v33 = 0;
    v34 = v31;
    v35 = MidX;
    v36 = MidY;
    if (qword_1EB422BE0 != -1)
    {
      swift_once();
    }

    v22 = &xmmword_1EB432140;
  }

  v23 = v22[1];
  v28 = *v22;
  v29 = v23;
  v30 = *(v22 + 32);
  result = sub_1AAF8E914();
  v20 = v26[1];
  v21 = v26[0];
  v18 = v27;
LABEL_14:
  *a1 = v21;
  *(a1 + 16) = v20;
  *(a1 + 32) = v18;
  return result;
}

void BasicChartSymbolShape.strokeBorder(lineWidth:)(uint64_t a1@<X8>, double a2@<D0>)
{
  v3 = *v2;
  v4 = *(v2 + 8);
  if (v4 >= 5)
  {
    v5 = v3 - 5;
    if (v3 == 3)
    {
      v6 = 3;
    }

    else
    {
      v6 = 4;
    }

    v7 = v5 >= 3;
    if (v5 >= 3)
    {
      v8 = a2;
    }

    else
    {
      v8 = *v2;
    }

    if (v7)
    {
      LOBYTE(v4) = v6;
    }

    else
    {
      LOBYTE(v4) = 5;
    }

    if (v3 == 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = 2;
    }

    if (!v3)
    {
      v9 = 0;
    }

    v10 = v3 <= 2;
    if (v3 <= 2)
    {
      v3 = *&a2;
    }

    else
    {
      v3 = *&v8;
    }

    if (v10)
    {
      LOBYTE(v4) = v9;
    }
  }

  *a1 = v3;
  *(a1 + 8) = v4;
}

double sub_1AAE3D924@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  BasicChartSymbolShape.path(in:)(v8, a2, a3, a4, a5);
  result = *v8;
  v7 = v8[1];
  *a1 = v8[0];
  *(a1 + 16) = v7;
  *(a1 + 32) = v9;
  return result;
}

void (*sub_1AAE3D968(uint64_t *a1))(void *)
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
  *(v2 + 32) = sub_1AAF8D804();
  return sub_1AAE3E818;
}

uint64_t sub_1AAE3D9F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1AAE3DEA0();

  return MEMORY[0x1EEDE4440](a1, a2, a3, v6);
}

uint64_t sub_1AAE3DA54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1AAE3DEA0();

  return MEMORY[0x1EEDE43F0](a1, a2, a3, v6);
}

uint64_t sub_1AAE3DAB8(uint64_t a1)
{
  v2 = sub_1AAE3DEA0();

  return MEMORY[0x1EEDE4410](a1, v2);
}

BOOL sub_1AAE3DB04(uint64_t a1, unsigned __int8 a2, uint64_t a3, char a4)
{
  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      if (a4 == 3)
      {
        goto LABEL_15;
      }
    }

    else if (a2 == 4)
    {
      if (a4 == 4)
      {
        goto LABEL_15;
      }
    }

    else if (a1 > 3)
    {
      if (a1 > 5)
      {
        if (a1 == 6)
        {
          if (a4 == 5 && a3 == 6)
          {
            return 1;
          }
        }

        else if (a4 == 5 && a3 == 7)
        {
          return 1;
        }
      }

      else if (a1 == 4)
      {
        if (a4 == 5 && a3 == 4)
        {
          return 1;
        }
      }

      else if (a4 == 5 && a3 == 5)
      {
        return 1;
      }
    }

    else if (a1 > 1)
    {
      if (a1 == 2)
      {
        if (a4 == 5 && a3 == 2)
        {
          return 1;
        }
      }

      else if (a4 == 5 && a3 == 3)
      {
        return 1;
      }
    }

    else if (a1)
    {
      if (a4 == 5 && a3 == 1)
      {
        return 1;
      }
    }

    else if (a4 == 5 && !a3)
    {
      return 1;
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      if (a4 == 1)
      {
        v4 = *&a1;
        v5 = *&a3;
        return v4 == v5;
      }

      return 0;
    }

    if (a4 == 2)
    {
LABEL_15:
      v4 = *&a1;
      v5 = *&a3;
      return v4 == v5;
    }
  }

  else if (!a4)
  {
    goto LABEL_15;
  }

  return 0;
}

unint64_t sub_1AAE3DC8C(uint64_t a1)
{
  result = sub_1AAE3DCB4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AAE3DCB4()
{
  result = qword_1ED9AE4D8;
  if (!qword_1ED9AE4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9AE4D8);
  }

  return result;
}

unint64_t sub_1AAE3DD0C()
{
  result = qword_1ED9AE4D0;
  if (!qword_1ED9AE4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9AE4D0);
  }

  return result;
}

unint64_t sub_1AAE3DD64()
{
  result = qword_1ED9AE4C8;
  if (!qword_1ED9AE4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9AE4C8);
  }

  return result;
}

unint64_t sub_1AAE3DDFC(uint64_t a1)
{
  result = sub_1AAE3DE24();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AAE3DE24()
{
  result = qword_1ED9AF4E0;
  if (!qword_1ED9AF4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9AF4E0);
  }

  return result;
}

unint64_t sub_1AAE3DE78(uint64_t a1)
{
  result = sub_1AAE3DEA0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AAE3DEA0()
{
  result = qword_1ED9B0900;
  if (!qword_1ED9B0900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9B0900);
  }

  return result;
}

unint64_t sub_1AAE3DEF8()
{
  result = qword_1ED9B08F8;
  if (!qword_1ED9B08F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9B08F8);
  }

  return result;
}

unint64_t sub_1AAE3DF50()
{
  result = qword_1ED9B08F0;
  if (!qword_1ED9B08F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9B08F0);
  }

  return result;
}

uint64_t sub_1AAE3DFE8(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1AAE3E038(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1AAE3E038(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    a3();
    v5 = sub_1AAF8D884();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1AAE3E100()
{
  result = qword_1ED9B08E8;
  if (!qword_1ED9B08E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9B08E8);
  }

  return result;
}

uint64_t sub_1AAE3E154(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1AAE3E1CC(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
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
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 40;
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
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *(((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 24);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

double sub_1AAE3E308(_DWORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 40;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFD8)
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
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFD8)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFD8)
    {
      v15 = ~v7 + a2;
      v16 = a1;
      bzero(a1, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 40);
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
  if (v6 < 0x7FFFFFFF)
  {
    v19 = (a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
    if ((a2 & 0x80000000) != 0)
    {
      result = 0.0;
      *(v19 + 8) = 0u;
      *(v19 + 24) = 0u;
      *v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      *(v19 + 24) = a2 - 1;
    }
  }

  else
  {
    v18 = *(v5 + 56);

    v18();
  }

  return result;
}

uint64_t sub_1AAE3E4CC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 9))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 8);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1AAE3E514(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 8) = 0;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
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

uint64_t sub_1AAE3E558(uint64_t a1)
{
  if (*(a1 + 8) <= 4u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t sub_1AAE3E570(uint64_t result, unsigned int a2)
{
  if (a2 >= 5)
  {
    *result = a2 - 5;
    LOBYTE(a2) = 5;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_1AAE3E5EC(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

double sub_1AAE3E658(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t sub_1AAE3E670()
{
  result = qword_1ED9AE8E0;
  if (!qword_1ED9AE8E0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1ED9AE8E0);
  }

  return result;
}

unint64_t sub_1AAE3E6D4()
{
  result = qword_1ED9AE8F0;
  if (!qword_1ED9AE8F0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1ED9AE8F0);
  }

  return result;
}

uint64_t sub_1AAE3E740(uint64_t a1)
{
  sub_1AAE3E79C(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1AAE3E79C(uint64_t a1)
{
  if (!qword_1ED9AE8E8)
  {
    sub_1AAE3E6D4();
    v1 = sub_1AAF8FE74();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED9AE8E8);
    }
  }
}

_OWORD *sub_1AAE3E7F4(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

double sub_1AAE3E824@<D0>(uint64_t a1@<X8>)
{
  sub_1AACBFE08();
  sub_1AAF8E144();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  return result;
}

void sub_1AAE3E880(uint64_t *a1, unsigned __int8 *a2)
{
  v2 = a1[6];
  if (v2 == 1)
  {
    v3 = *(a2 + 6);
    v4 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 1) = v4;
    *(a1 + 2) = *(a2 + 2);
    a1[6] = v3;
  }

  else
  {
    v5 = *a1;
    v6 = a1[1];
    v8 = a1[2];
    v7 = a1[3];
    v10 = a1[4];
    v9 = a1[5];
    v11 = *(a2 + 6);
    if (*a2 == 3)
    {
      v12 = *a1;
    }

    else
    {
      v12 = *a2;
    }

    if (a2[1] == 9)
    {
      v13 = BYTE1(*a1);
    }

    else
    {
      v13 = a2[1];
    }

    if (a2[40])
    {
      v14 = a1[4];
    }

    else
    {
      v14 = *(a2 + 4);
    }

    v15 = a2[40] & v9;
    if (v11)
    {
      v17 = v12;
      v18 = a1;
      v16 = v14;
      sub_1AAE3EED0(a2, v19);
      sub_1AACB87FC(v5, v6, v8, v7, v10, v9, v2);
      v14 = v16;
      v12 = v17;
      a1 = v18;
      v2 = v11;
    }

    *a1 = v12 | (v13 << 8);
    a1[1] = v6;
    a1[2] = v8;
    a1[3] = v7 & 1;
    a1[4] = v14;
    a1[5] = v15 & 1;
    a1[6] = v2;
  }
}

uint64_t sub_1AAE3E9D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 48);
  KeyPath = swift_getKeyPath();
  v7 = swift_allocObject();
  v8 = *(v2 + 16);
  *(v7 + 16) = *v2;
  *(v7 + 32) = v8;
  *(v7 + 48) = *(v2 + 32);
  *(v7 + 64) = v5;
  sub_1AAE3ED30(0);
  (*(*(v9 - 8) + 16))(a2, a1, v9);
  sub_1AAE3ED8C(0);
  v11 = (a2 + *(v10 + 36));
  *v11 = KeyPath;
  v11[1] = sub_1AAE3ED28;
  v11[2] = v7;
  v14 = v5;
  return sub_1AAE3EE5C(&v14, &v13);
}

double View.chartLegend<A>(position:alignment:spacing:content:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6, void x6_0, void x7_0, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v15 = MEMORY[0x1EEE9AC00](a1);
  v17 = *v16;
  v18(v15);
  v19 = sub_1AAF8EF44();
  v30 = a4 & 1;
  v29 = a6 & 1;
  v22[0] = 3;
  v22[1] = v17;
  v23 = a2;
  v24 = a3;
  v25 = a4 & 1;
  v26 = a5;
  v27 = a6 & 1;
  v28 = v19;
  MEMORY[0x1AC597820](v22, a8, &type metadata for ChartLegendModifier, a10);

  return result;
}

uint64_t View.chartLegend(position:alignment:spacing:)(char *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  v8 = *a1;
  v18 = a4 & 1;
  v17 = a6 & 1;
  v10[0] = 3;
  v10[1] = v8;
  v11 = a2;
  v12 = a3;
  v13 = a4 & 1;
  v14 = a5;
  v15 = a6 & 1;
  v16 = 0;
  return MEMORY[0x1AC597820](v10, a7, &type metadata for ChartLegendModifier, a8);
}

uint64_t View.chartLegend(_:)(char a1, uint64_t a2, uint64_t a3)
{
  v12 = 1;
  v11 = 1;
  v4[0] = a1;
  v4[1] = 9;
  v5 = 0;
  v6 = 0;
  v7 = 1;
  v8 = 0;
  v9 = 1;
  v10 = 0;
  return MEMORY[0x1AC597820](v4, a2, &type metadata for ChartLegendModifier, a3);
}

unint64_t sub_1AAE3ECA8()
{
  result = qword_1ED9B0BC0;
  if (!qword_1ED9B0BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9B0BC0);
  }

  return result;
}

void sub_1AAE3ED30(uint64_t a1)
{
  if (!qword_1ED9B06D0)
  {
    sub_1AAE3ECA8();
    v1 = sub_1AAF8E4F4();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED9B06D0);
    }
  }
}

void sub_1AAE3ED8C(uint64_t a1)
{
  if (!qword_1ED9B06D8)
  {
    sub_1AAE3ED30(255);
    sub_1AAE3EDF4(255);
    v1 = sub_1AAF8DF74();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED9B06D8);
    }
  }
}

void sub_1AAE3EDF4(uint64_t a1)
{
  if (!qword_1ED9B06C8)
  {
    sub_1AACB1BC0(255, &qword_1ED9B3888, &type metadata for ChartLegendConfiguration);
    v1 = sub_1AAF8E754();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED9B06C8);
    }
  }
}

uint64_t sub_1AAE3EE5C(uint64_t a1, uint64_t a2)
{
  sub_1AACB1BC0(0, &qword_1ED9B06C0, MEMORY[0x1E6981910]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AAE3EF08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1AAE3F208();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t sub_1AAE3EF6C(double *a1, double *a2)
{
  v2 = *a2;
  if (*a1 == 3)
  {
    if (v2 != 3)
    {
      return 0;
    }
  }

  else
  {
    if (v2 == 3)
    {
      return 0;
    }

    v3 = a1;
    v4 = a2;
    v5 = sub_1AAF8D874();
    a2 = v4;
    v6 = v5;
    a1 = v3;
    if ((v6 & 1) == 0)
    {
      return 0;
    }
  }

  v7 = *(a1 + 1);
  v8 = *(a2 + 1);
  if (v7 == 9)
  {
    if (v8 != 9)
    {
      return 0;
    }
  }

  else if (v7 != v8)
  {
    return 0;
  }

  if (a1[3])
  {
    if (a2[3])
    {
      goto LABEL_15;
    }

    return 0;
  }

  if (a2[3])
  {
    return 0;
  }

  v9 = a1;
  v10 = a2;
  v11 = sub_1AAF8F0F4();
  a2 = v10;
  v12 = v11;
  a1 = v9;
  if ((v12 & 1) == 0)
  {
    return 0;
  }

LABEL_15:
  v13 = *(a2 + 40);
  if (a1[5])
  {
    if (!*(a2 + 40))
    {
      return 0;
    }
  }

  else
  {
    if (a1[4] != a2[4])
    {
      v13 = 1;
    }

    if (v13)
    {
      return 0;
    }
  }

  v15 = *(a1 + 6);
  v16 = *(a2 + 6);
  result = (v15 | v16) == 0;
  if (v15)
  {
    if (v16)
    {
      return AGCompareValues();
    }
  }

  return result;
}

unint64_t sub_1AAE3F0E0()
{
  result = qword_1ED9B0A20[0];
  if (!qword_1ED9B0A20[0])
  {
    sub_1AAE3ED8C(255);
    sub_1AAE3F1C0(&qword_1ED9B0A18, sub_1AAE3ED30, MEMORY[0x1E697FDF8]);
    sub_1AAE3F1C0(&qword_1ED9B0A10, sub_1AAE3EDF4, MEMORY[0x1E6980B30]);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED9B0A20);
  }

  return result;
}

uint64_t sub_1AAE3F1C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1AAE3F208()
{
  result = qword_1EB425A10;
  if (!qword_1EB425A10)
  {
    sub_1AACB1BC0(255, &qword_1ED9B3888, &type metadata for ChartLegendConfiguration);
    sub_1AAE3F290();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB425A10);
  }

  return result;
}

unint64_t sub_1AAE3F290()
{
  result = qword_1EB425A18;
  if (!qword_1EB425A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB425A18);
  }

  return result;
}

uint64_t sub_1AAE3F2E8()
{
  sub_1AAE394F4();
  sub_1AAF8E144();
  return v1;
}

uint64_t sub_1AAE3F324()
{
  sub_1AAE394A0();
  sub_1AAF8E144();
  return v1;
}

uint64_t sub_1AAE3F380(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1AAE3F3C8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1AAE3F420(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_1AAE3F438(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_1AAE3F47C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_1AAE3F4C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AAE3F534(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3F && *(a1 + 25))
  {
    return (*a1 + 63);
  }

  v3 = ((*(a1 + 24) >> 1) & 0x3E | (*(a1 + 24) >> 7)) ^ 0x3F;
  if (v3 >= 0x3E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1AAE3F588(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3E)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 63;
    if (a3 >= 0x3F)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3F)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = 4 * (((-a2 >> 1) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

double sub_1AAE3F614@<D0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;

  return result;
}

void sub_1AAE3F648(uint64_t a1, uint64_t a2, char a3, double a4)
{
  if ((a3 & 1) == 0 && (~a2 & 0x7FF0000000000000) != 0)
  {
    v4 = *(a1 + 16);
    if (v4)
    {
      v6 = 0;
      v7 = v4 - 1;
      v8 = a1 + 32;
      v9 = *&a2 + a4;
      v10 = MEMORY[0x1E69E7CC0];
      for (i = 1; ; i = 0)
      {
        v12 = v4;
        if ((i & 1) == 0)
        {
          if (v6 < 2)
          {
            goto LABEL_31;
          }

          v12 = v6 - 1;
        }

        v13 = v7 / v12;
        if (v7 / v12 < -1)
        {
          break;
        }

        v6 = v12;
        if (v13 == -1)
        {
          v14 = v10;
        }

        else
        {
          v14 = sub_1AAF8F8A4();
          v14[2] = v13 + 1;
          v14[4] = 0;
          if (v13)
          {
            v15 = v14;
            bzero(v14 + 5, 8 * v13);
            v14 = v15;
          }
        }

        v16 = 0;
        v17 = (v14 + 4);
        do
        {
          v18 = v16 / v6;
          if (v16 / v6 < 0)
          {
            __break(1u);
LABEL_29:
            __break(1u);
            goto LABEL_30;
          }

          if (v18 >= v14[2])
          {
            goto LABEL_29;
          }

          v17[v18] = *(v8 + 8 * v16++) + a4 + v17[v18];
        }

        while (v4 != v16);
        v19 = v14[2];
        if (v19)
        {
          v20 = *v17;
          v21 = v19 - 1;
          if (v19 != 1)
          {
            v22 = (v14 + 5);
            do
            {
              v23 = *v22++;
              v24 = v23;
              if (v20 < v23)
              {
                v20 = v24;
              }

              --v21;
            }

            while (v21);
          }

          if (v20 <= v9)
          {
            return;
          }
        }

        else
        {

          if (v9 >= 0.0)
          {
            return;
          }
        }

        if (v6 == 1)
        {
          return;
        }
      }

LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
    }

    __break(1u);
  }
}

void sub_1AAE3F7E4(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, int a6, double a7)
{
  v105 = a4;
  v103 = a3;
  v104 = a1;
  v107 = sub_1AAF8DB24();
  v11 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v13 = &v101 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AAF8DC34();
  sub_1AAE44070(&qword_1ED9B5580, MEMORY[0x1E697E3C0], MEMORY[0x1E697E3D8]);
  v14 = sub_1AAF8FB34();
  if (v14)
  {
    v15 = v14;
    v102 = a2;
    v110 = MEMORY[0x1E69E7CC0];
    sub_1AAD4140C(0, v14 & ~(v14 >> 63), 0);
    v16 = v110;
    sub_1AAF8FB24();
    if (v15 < 0)
    {
LABEL_87:
      __break(1u);
      goto LABEL_88;
    }

    v101 = a6;
    v106 = (v11 + 16);
    v17 = (v11 + 8);
    v18 = v16;
    v19 = a5;
    do
    {
      v20 = sub_1AAF8FC84();
      v21 = v107;
      (*v106)(v13);
      v20(v109, 0);
      sub_1AAF8DFB4();
      LOBYTE(v109[0]) = v22 & 1;
      v108 = v23 & 1;
      sub_1AAF8DAF4();
      v25 = v24;
      v27 = v26;
      (*v17)(v13, v21);
      v110 = v18;
      v28 = v19;
      v30 = v18[2];
      v29 = v18[3];
      if (v30 >= v29 >> 1)
      {
        sub_1AAD4140C((v29 > 1), v30 + 1, 1);
        v18 = v110;
      }

      v18[2] = v30 + 1;
      v31 = &v18[2 * v30];
      v31[4] = v25;
      v31[5] = v27;
      sub_1AAF8FBB4();
      --v15;
      v19 = v28;
    }

    while (v15);
    v32 = v105;
    v33 = v104;
    LOBYTE(a6) = v101;
    LOBYTE(a2) = v102;
  }

  else
  {
    v18 = MEMORY[0x1E69E7CC0];
    v32 = v105;
    v33 = v104;
  }

  v34 = v18[2];
  v35 = MEMORY[0x1E69E7CC0];
  if (a6)
  {
    if (v34)
    {
      v109[0] = MEMORY[0x1E69E7CC0];
      sub_1AAD1FAF4(0, v34, 0);
      v35 = v109[0];
      v36 = *(v109[0] + 16);
      v37 = v18 + 5;
      do
      {
        v38 = *v37;
        v109[0] = v35;
        v39 = *(v35 + 24);
        if (v36 >= v39 >> 1)
        {
          sub_1AAD1FAF4((v39 > 1), v36 + 1, 1);
          v35 = v109[0];
        }

        *(v35 + 16) = v36 + 1;
        *(v35 + 8 * v36 + 32) = v38;
        v37 += 2;
        ++v36;
        --v34;
      }

      while (v34);
    }

    sub_1AAE3F648(v35, v103, v32 & 1, a7);
    v45 = v44;

    v46 = v18[2];
    v47 = MEMORY[0x1E69E7CC0];
    if (v46)
    {
      v109[0] = MEMORY[0x1E69E7CC0];
      sub_1AAD413EC(0, v46, 0);
      if (!v45)
      {
LABEL_89:
        __break(1u);
        goto LABEL_90;
      }

      v48 = v18;
      v49 = 0;
      v47 = v109[0];
      do
      {
        v109[0] = v47;
        v51 = *(v47 + 16);
        v50 = *(v47 + 24);
        if (v51 >= v50 >> 1)
        {
          sub_1AAD413EC((v50 > 1), v51 + 1, 1);
          v47 = v109[0];
        }

        *(v47 + 16) = v51 + 1;
        v52 = v47 + 16 * v51;
        *(v52 + 32) = v49 / v45;
        *(v52 + 40) = v49 % v45;
        ++v49;
      }

      while (v46 != v49);
LABEL_37:
      v60 = *(v47 + 16);
      v61 = MEMORY[0x1E69E7CC0];
      if (v60)
      {
        v109[0] = MEMORY[0x1E69E7CC0];
        sub_1AAD214F4(0, v60, 0);
        v62 = v109[0];
        v63 = (v47 + 32);
        v64 = *(v109[0] + 16);
        v65 = v60;
        do
        {
          v67 = *v63;
          v63 += 2;
          v66 = v67;
          v109[0] = v62;
          v68 = *(v62 + 24);
          if (v64 >= v68 >> 1)
          {
            sub_1AAD214F4((v68 > 1), v64 + 1, 1);
            v62 = v109[0];
          }

          *(v62 + 16) = v64 + 1;
          *(v62 + 8 * v64++ + 32) = v66;
          --v65;
        }

        while (v65);
      }

      else
      {
        v62 = MEMORY[0x1E69E7CC0];
      }

      v69 = sub_1AADC5D2C(v62);
      v71 = v70;

      if (v71)
      {
        v72 = 1;
        if (v60)
        {
LABEL_46:
          v109[0] = v61;
          sub_1AAD214F4(0, v60, 0);
          v73 = v109[0];
          v74 = *(v109[0] + 16);
          v75 = (v47 + 40);
          do
          {
            v77 = *v75;
            v75 += 2;
            v76 = v77;
            v109[0] = v73;
            v78 = *(v73 + 24);
            if (v74 >= v78 >> 1)
            {
              sub_1AAD214F4((v78 > 1), v74 + 1, 1);
              v73 = v109[0];
            }

            *(v73 + 16) = v74 + 1;
            *(v73 + 8 * v74++ + 32) = v76;
            --v60;
          }

          while (v60);
          goto LABEL_54;
        }
      }

      else
      {
        v79 = __OFADD__(v69, 1);
        v72 = v69 + 1;
        if (v79)
        {
LABEL_88:
          __break(1u);
          goto LABEL_89;
        }

        if (v60)
        {
          goto LABEL_46;
        }
      }

      v73 = MEMORY[0x1E69E7CC0];
LABEL_54:
      v80 = sub_1AADC5D2C(v73);
      v82 = v81;

      if (v82)
      {
        v83 = 0;
      }

      else
      {
        v83 = v80;
      }

      v84 = v83 + 1;
      if (__OFADD__(v83, 1))
      {
LABEL_85:
        __break(1u);
      }

      else if ((v72 & 0x8000000000000000) == 0)
      {
        if (v72)
        {
          v85 = sub_1AAF8F8A4();
          *(v85 + 16) = v72;
          bzero((v85 + 32), 8 * v72);
          if ((v84 & 0x8000000000000000) == 0)
          {
            goto LABEL_61;
          }
        }

        else
        {
          v85 = MEMORY[0x1E69E7CC0];
          if ((v84 & 0x8000000000000000) == 0)
          {
LABEL_61:
            if (v83 != -1)
            {
              v86 = sub_1AAF8F8A4();
              *(v86 + 16) = v84;
              bzero((v86 + 32), 8 * v83 + 8);
              v87 = *(v47 + 16);
              if (!v87)
              {
                goto LABEL_79;
              }

              goto LABEL_67;
            }

LABEL_66:
            v86 = MEMORY[0x1E69E7CC0];
            v87 = *(v47 + 16);
            if (!v87)
            {
LABEL_79:
              v109[0] = v86;
              v98 = sub_1AAE44B40(v85, a7);
              v99 = sub_1AAE44B40(v86, a7);
              MEMORY[0x1EEE9AC00](v99);
              *(&v101 - 4) = v98;
              *(&v101 - 3) = v100;
              *(&v101 - 2) = v109;
              sub_1AAE44900(v47, v48, sub_1AAE44BBC);

              return;
            }

LABEL_67:
            v88 = 0;
            v89 = v85 + 32;
            v90 = v86 + 32;
            v91 = (v47 + 40);
            v92 = (v48 + 40);
            while (1)
            {
              v93 = *(v48 + 16);
              if (v88 == v93)
              {
                goto LABEL_79;
              }

              if (v88 >= v93)
              {
                __break(1u);
LABEL_81:
                __break(1u);
LABEL_82:
                __break(1u);
LABEL_83:
                __break(1u);
LABEL_84:
                __break(1u);
                goto LABEL_85;
              }

              v94 = *(v91 - 1);
              if ((v94 & 0x8000000000000000) != 0)
              {
                goto LABEL_81;
              }

              if (v94 >= *(v85 + 16))
              {
                goto LABEL_82;
              }

              v95 = *v91;
              v97 = *(v92 - 1);
              v96 = *v92;
              if (*(v89 + 8 * v94) > v97)
              {
                v97 = *(v89 + 8 * v94);
              }

              *(v89 + 8 * v94) = v97;
              if ((v95 & 0x8000000000000000) != 0)
              {
                goto LABEL_83;
              }

              if (v95 >= *(v86 + 16))
              {
                goto LABEL_84;
              }

              ++v88;
              v91 += 2;
              if (*(v90 + 8 * v95) > v96)
              {
                v96 = *(v90 + 8 * v95);
              }

              *(v90 + 8 * v95) = v96;
              v92 += 2;
              if (v87 == v88)
              {
                goto LABEL_79;
              }
            }
          }
        }

        __break(1u);
        goto LABEL_66;
      }

      __break(1u);
      goto LABEL_87;
    }

LABEL_36:
    v48 = v18;
    goto LABEL_37;
  }

  if (v34)
  {
    v109[0] = MEMORY[0x1E69E7CC0];
    sub_1AAD1FAF4(0, v34, 0);
    v35 = v109[0];
    v40 = v18 + 4;
    v41 = *(v109[0] + 16);
    do
    {
      v42 = *v40;
      v109[0] = v35;
      v43 = *(v35 + 24);
      if (v41 >= v43 >> 1)
      {
        sub_1AAD1FAF4((v43 > 1), v41 + 1, 1);
        v35 = v109[0];
      }

      *(v35 + 16) = v41 + 1;
      *(v35 + 8 * v41 + 32) = v42;
      v40 += 2;
      ++v41;
      --v34;
    }

    while (v34);
  }

  sub_1AAE3F648(v35, v33, a2 & 1, a7);
  v54 = v53;

  v55 = v18[2];
  v47 = MEMORY[0x1E69E7CC0];
  if (!v55)
  {
    goto LABEL_36;
  }

  v109[0] = MEMORY[0x1E69E7CC0];
  sub_1AAD413EC(0, v55, 0);
  if (v54)
  {
    v48 = v18;
    v56 = 0;
    v47 = v109[0];
    do
    {
      v109[0] = v47;
      v58 = *(v47 + 16);
      v57 = *(v47 + 24);
      if (v58 >= v57 >> 1)
      {
        sub_1AAD413EC((v57 > 1), v58 + 1, 1);
        v47 = v109[0];
      }

      *(v47 + 16) = v58 + 1;
      v59 = v47 + 16 * v58;
      *(v59 + 32) = v56 % v54;
      *(v59 + 40) = v56 / v54;
      ++v56;
    }

    while (v55 != v56);
    goto LABEL_37;
  }

LABEL_90:
  __break(1u);
}

unint64_t sub_1AAE40078(unint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (*(a3 + 16) <= result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a4 + 16) <= a2)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (*(*a5 + 16) <= a2)
  {
LABEL_11:
    __break(1u);
  }

  return result;
}

double sub_1AAE400F4(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, double a6, uint64_t a7, char a8)
{
  sub_1AAF8DC34();
  sub_1AAE44070(&qword_1ED9B5580, MEMORY[0x1E697E3C0], MEMORY[0x1E697E3D8]);
  sub_1AAF8FB24();
  sub_1AAF8FBA4();
  v15 = 0.0;
  v16 = 0.0;
  if (v28 != v27)
  {
    sub_1AAE3F7E4(a1, a2 & 1, a3, a4 & 1, a5, a8 & 1, a6);
    v18 = *(v17 + 16);
    if (v18)
    {
      v19 = (v17 + 56);
      do
      {
        v20 = *(v19 - 3);
        v21 = *(v19 - 2);
        v22 = *(v19 - 1);
        v23 = *v19;
        v29.origin.x = v20;
        v29.origin.y = v21;
        v29.size.width = v22;
        v29.size.height = *v19;
        MaxX = CGRectGetMaxX(v29);
        if (v15 <= MaxX)
        {
          v15 = MaxX;
        }

        v30.origin.x = v20;
        v30.origin.y = v21;
        v30.size.width = v22;
        v30.size.height = v23;
        MaxY = CGRectGetMaxY(v30);
        if (v16 <= MaxY)
        {
          v16 = MaxY;
        }

        v19 += 4;
        --v18;
      }

      while (v18);
    }
  }

  return v15;
}

void *sub_1AAE40270(void (**a1)(char *), int a2, uint64_t a3, int a4, uint64_t a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9, double a10, uint64_t a11, int a12)
{
  LODWORD(v60) = a12;
  LODWORD(v57) = a4;
  v61 = a3;
  LODWORD(v56) = a2;
  v59 = a1;
  v18 = sub_1AAF8DB24();
  v54 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AAE45998(0, &qword_1ED9ADB30, MEMORY[0x1E697E168], type metadata accessor for CGRect);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v62 = &v51 - v22;
  v23 = sub_1AAF8DC34();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v51 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AAE44794(0, &qword_1ED9AD7B0, MEMORY[0x1E69E6AA0]);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v29 = &v51 - v28;
  sub_1AAE44794(0, &qword_1ED9AD7B8, MEMORY[0x1E69E6A98]);
  v31 = v30;
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v51 - v32;
  sub_1AAE44070(&qword_1ED9B5580, MEMORY[0x1E697E3C0], MEMORY[0x1E697E3D8]);
  sub_1AAF8FB24();
  result = sub_1AAF8FBA4();
  if (v63[0] != v64)
  {
    LOBYTE(v63[0]) = v56 & 1;
    LOBYTE(v64) = v57 & 1;
    sub_1AAE3F7E4(v59, v56 & 1, v61, v57 & 1, a5, v60 & 1, a10);
    v53 = v20;
    v35 = v18;
    v37 = v36;
    (*(v24 + 16))(v29, a5, v23);
    (*(v24 + 32))(v26, v29, v23);
    sub_1AAE44070(&qword_1ED9ADB08, MEMORY[0x1E697E3C0], MEMORY[0x1E697E3D0]);
    sub_1AAF8F744();
    v52 = v31;
    v38 = &v33[*(v31 + 52)];
    v60 = v38;
    v61 = v37;
    *v38 = v37;
    v38[1] = 0;
    sub_1AAD129C8(0);
    v40 = *(v39 + 36);
    sub_1AAF8FBA4();
    v41 = v35;
    v42 = v53;
    if (*&v33[v40] == v63[0])
    {
LABEL_9:
      v33[*(v52 + 56)] = 1;
      return sub_1AAE44888(v33);
    }

    else
    {
      v43 = 0;
      v58 = v33;
      v59 = (v54 + 16);
      v55 = (v54 + 32);
      v56 = v40;
      v57 = (v54 + 8);
      v44 = v61 + 40;
      while (1)
      {
        v45 = sub_1AAF8FC84();
        (*v59)(v42);
        v45(v63, 0);
        result = sub_1AAF8FBB4();
        v46 = *(v61 + 16);
        if (v43 == v46)
        {
          (*v57)(v42, v41);
          v33 = v58;
          goto LABEL_9;
        }

        if (v43 >= v46)
        {
          break;
        }

        v60[1] = ++v43;
        v47 = v62;
        (*v55)(v62, v42, v41);
        v65.origin.x = a6;
        v65.origin.y = a7;
        v65.size.width = a8;
        v65.size.height = a9;
        CGRectGetMinX(v65);
        v66.origin.x = a6;
        v66.origin.y = a7;
        v66.size.width = a8;
        v66.size.height = a9;
        CGRectGetMinY(v66);
        sub_1AAF8F1F4();
        sub_1AAF8DFB4();
        LOBYTE(v63[0]) = v48 & 1;
        LOBYTE(v64) = v49 & 1;
        sub_1AAF8DB04();
        (*v57)(v47, v41);
        v50 = v58;
        v33 = v58;
        sub_1AAF8FBA4();
        v44 += 32;
        if (*&v50[v56] == v63[0])
        {
          goto LABEL_9;
        }
      }

      __break(1u);
    }
  }

  return result;
}

void (*sub_1AAE408D8(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_1AAF8D804();
  return sub_1AAE3C2DC;
}

double sub_1AAE40960@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  sub_1AAF8E934();
  v19.origin.x = a2;
  v19.origin.y = a3;
  v19.size.width = a4;
  v19.size.height = a5;
  CGRectGetMinX(v19);
  v20.origin.x = a2;
  v20.origin.y = a3;
  v20.size.width = a4;
  v20.size.height = a5;
  CGRectGetMidY(v20);
  sub_1AAF8E8A4();
  v21.origin.x = a2;
  v21.origin.y = a3;
  v21.size.width = a4;
  v21.size.height = a5;
  CGRectGetMaxX(v21);
  v22.origin.x = a2;
  v22.origin.y = a3;
  v22.size.width = a4;
  v22.size.height = a5;
  CGRectGetMidY(v22);
  sub_1AAF8E8D4();
  v17[0] = v11;
  v17[1] = v12;
  v18 = v13;
  sub_1AAF8E854();
  sub_1AAD12C10(v17);
  result = *&v14;
  *a1 = v14;
  *(a1 + 16) = v15;
  *(a1 + 32) = v16;
  return result;
}

void (*sub_1AAE40A84(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_1AAF8D804();
  return sub_1AAE3E818;
}

uint64_t sub_1AAE40B0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1AAE457C0();

  return MEMORY[0x1EEDE4440](a1, a2, a3, v6);
}

uint64_t sub_1AAE40B70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1AAE457C0();

  return MEMORY[0x1EEDE43F0](a1, a2, a3, v6);
}

uint64_t sub_1AAE40BD4(uint64_t a1)
{
  v2 = sub_1AAE457C0();

  return MEMORY[0x1EEDE4410](a1, v2);
}

uint64_t sub_1AAE40C20@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_1AAE44F78(v1 + 56, &v58, &qword_1ED9AE4C0, &type metadata for AnyChartSymbolShape, MEMORY[0x1E69E6720], sub_1AAE45508);
  if (*(&v59 + 1))
  {
    v74 = v58;
    v75 = v59;
    v76 = v60;
  }

  else
  {
    if (qword_1ED9B0BD0 != -1)
    {
      swift_once();
    }

    sub_1AAD9B194(&qword_1ED9C3450, &v74);
    if (*(&v59 + 1))
    {
      sub_1AAE45558(&v58);
    }
  }

  v42 = *(v1 + 144);
  if (*(v1 + 48))
  {
    v4 = *(v1 + 48);
  }

  else
  {
    v4 = sub_1AAF8DA44();
  }

  v5 = *(&v75 + 1);
  v6 = v76;
  sub_1AACBB42C(&v74, *(&v75 + 1));
  v7 = *(v6 + 16);

  v7(v5, v6);
  sub_1AAD9B194(&v74, v68);
  v69 = v4;
  v70 = 256;

  sub_1AAF8F124();
  sub_1AAF8DA24();
  v71 = v77;
  v72 = v78;
  v73 = v79;
  v8 = *(v1 + 96);
  v9 = *(v1 + 104);
  v10 = *(v1 + 120);
  v45 = *(v2 + 112);
  v11 = *(v2 + 128);
  v12 = v4;
  if (v10)
  {
    sub_1AAE44F78(v2 + 56, &v58, &qword_1ED9AE4C0, &type metadata for AnyChartSymbolShape, MEMORY[0x1E69E6720], sub_1AAE45508);
    v13 = *(&v59 + 1) != 0;
    sub_1AAE45558(&v58);
    v14 = v13 | v42 ^ 1;
  }

  else
  {
    v14 = 1;
  }

  *a1 = sub_1AAF8E194();
  *(a1 + 8) = 0x4014000000000000;
  *(a1 + 16) = 0;
  *&v58 = sub_1AAF8F124();
  *(&v58 + 1) = v15;
  if (v14)
  {
    sub_1AAE45AF0(v68, v56);
    v44 = a1;
    if (v10)
    {
LABEL_15:
      v36 = v9 & 0xFFFFFFFF00000000;
      v43 = v8;

      sub_1AAF8F124();
      sub_1AAF8DA24();
      v40 = v81;
      v41 = v80;
      v38 = v83;
      v39 = v82;
      v16 = v11;
      v17 = v9;
      v18 = v45;
      v19 = 256;
      v20 = v12;
      v21 = v85;
      v37 = v84;
      goto LABEL_18;
    }
  }

  else
  {
    v57 = 0;
    memset(v56, 0, sizeof(v56));
    v44 = a1;
    if (v10)
    {
      goto LABEL_15;
    }
  }

  v41 = 0;
  v43 = 0;
  v18 = 0;
  v16 = 0;
  v20 = 0;
  v39 = 0;
  v40 = 0;
  v37 = 0;
  v38 = 0;
  v21 = 0;
  v19 = 0;
  v17 = 0;
  v36 = 0;
LABEL_18:
  sub_1AAE45814(v56, v47, sub_1AAE455D8);
  v22 = v36 | v17;
  sub_1AAE45814(v47, &v59, sub_1AAE455D8);
  *&v48 = v43;
  *(&v48 + 1) = v22;
  *&v49 = v18;
  *(&v49 + 1) = v10;
  *&v50 = v16;
  *(&v50 + 1) = v20;
  *&v51 = v19;
  *(&v51 + 1) = v41;
  *&v52 = v40;
  *(&v52 + 1) = v39;
  *&v53 = v38;
  *(&v53 + 1) = v37;
  v64 = v51;
  v65 = v52;
  v66 = v53;
  v61 = v48;
  v62 = v49;
  v54 = v21;
  v67 = v21;
  v63 = v50;
  sub_1AAE45814(&v48, v46, sub_1AAE456C0);
  sub_1AAE442D0(v56, sub_1AAE455D8);
  v55[0] = v43;
  v55[1] = v22;
  v55[2] = v18;
  v55[3] = v10;
  v55[4] = v16;
  v55[5] = v20;
  v55[6] = v19;
  v55[7] = v41;
  v55[8] = v40;
  v55[9] = v39;
  v55[10] = v38;
  v55[11] = v37;
  v55[12] = v21;
  sub_1AAE442D0(v55, sub_1AAE456C0);
  sub_1AAE442D0(v47, sub_1AAE455D8);
  if (qword_1ED9B1DA8 != -1)
  {
    swift_once();
  }

  v23 = sub_1AAF8EA24();
  v25 = v24;
  v27 = v26;
  if (qword_1ED9B1D98 != -1)
  {
    swift_once();
  }

  v28 = sub_1AAF8E9E4();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  sub_1AAD04750(v23, v25, v27 & 1);

  sub_1AAE45814(&v58, v46, sub_1AAE4587C);
  sub_1AAE45814(v46, v44 + 24, sub_1AAE4587C);
  *(v44 + 248) = v28;
  *(v44 + 256) = v30;
  *(v44 + 264) = v32 & 1;
  *(v44 + 272) = v34;
  sub_1AACD7304(v28, v30, v32 & 1);

  sub_1AAE442D0(&v58, sub_1AAE4587C);
  sub_1AAD04750(v28, v30, v32 & 1);

  sub_1AAE442D0(v46, sub_1AAE4587C);

  sub_1AAE45A14(&v74);
  return sub_1AAE45A68(v68);
}

uint64_t sub_1AAE412CC()
{
  v7 = *(v0 + 8);
  sub_1AAE45508(0, &qword_1ED9AD920, &type metadata for LegendRenderingContext.Category, MEMORY[0x1E69E62F8]);
  v2 = v1;
  v3 = sub_1AAE44BC8();
  v4 = sub_1AAE44C44();
  v5 = sub_1AAE44C98();

  return sub_1AAF8EFD4(&v7, sub_1AAE412C4, 0, v2, MEMORY[0x1E69E6158], &type metadata for DefaultChartLegend.CategoryView, v3, v4, v5);
}

uint64_t sub_1AAE413A0@<X0>(void *a1@<X8>)
{
  v3 = sub_1AAF8E134();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1E6969770];
  v8 = MEMORY[0x1E697DCB8];
  sub_1AAE45C24(0, &qword_1EB425A20, MEMORY[0x1E6969770], MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v17 - v10;
  v12 = type metadata accessor for DefaultChartLegend.ColorRampView(0);
  sub_1AAE44F78(v1 + *(v12 + 44), v11, &qword_1EB425A20, v7, v8, sub_1AAE45C24);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1AAF8CAA4();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = sub_1AAF8FD14();
    v16 = sub_1AAF8E764();
    sub_1AAF8D7B4(v15, &dword_1AACA8000, v16, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1AAF8E124();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

void sub_1AAE415E8()
{
  v1 = v0;
  v2 = sub_1AAF8CAA4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *v0;
  v7 = COERCE_DOUBLE(sub_1AADE69D4(v6));
  v8 = v7;
  v10 = v9 & 1;
  if (v9)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = v7;
  }

  v12 = COERCE_DOUBLE(sub_1AADC5CE8(v6));
  if (v13)
  {
    v14 = 0.0;
  }

  else
  {
    v14 = v12;
  }

  if (v10)
  {
    v15 = 0;
  }

  else
  {
    v15 = (*&v8 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000;
  }

  if (!v15 && v13 & 1 | ((*&v12 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000) && v11 <= v14)
  {
    v41 = v3;
    v42 = v2;
    v16 = *(v1 + 2);
    v17 = *(v1 + 24);
    if (*(v1 + 24) && (v17 == 1 || *&v16 == 2))
    {
      v40 = *(v1 + 2);
      v18 = sub_1AAEB1544(v11, v14);
      v19 = *(v18 + 2);
      v39[1] = v18;
      if (v19)
      {
        v20 = (v18 + 32);
        v21 = MEMORY[0x1E69E7CC0];
        do
        {
          v24 = *v20;
          if (v11 <= *v20 && v24 <= v14)
          {
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v50[0] = v21;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1AACEF664(0, v21[2] + 1, 1);
              v21 = v50[0];
            }

            v23 = v21[2];
            v22 = v21[3];
            if (v23 >= v22 >> 1)
            {
              sub_1AACEF664((v22 > 1), v23 + 1, 1);
              v21 = v50[0];
            }

            v21[2] = v23 + 1;
            *&v21[v23 + 4] = v24;
          }

          ++v20;
          --v19;
        }

        while (v19);
      }

      else
      {
        v21 = MEMORY[0x1E69E7CC0];
      }

      v16 = v40;
    }

    else
    {
      v27.n128_f64[0] = sub_1AADEAF9C(4, 1, 1, v11, v14, 0.0);
      sub_1AAEC512C(v54, v27, v11, v14);
      sub_1AAEC4CDC();
      v21 = v28;
      sub_1AAE442D0(v54, sub_1AAD172C4);
    }

    v31 = COERCE_DOUBLE(sub_1AADC5DE0(v21));
    v32 = v29;
    if (v11 <= v31)
    {
      v31 = v11;
    }

    if (v14 > v29)
    {
      v32 = v14;
    }

    if (v30)
    {
      v33 = v11;
    }

    else
    {
      v33 = v31;
    }

    if (v30)
    {
      v34 = v14;
    }

    else
    {
      v34 = v32;
    }

    sub_1AAE45508(0, &qword_1ED9B28C0, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6F90]);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_1AAF9E2B0;
    *(v35 + 32) = v33;
    *(v35 + 40) = v34;
    if (v17)
    {
      if (v17 == 1)
      {
        sub_1AAF42808(v35, v44, v16);
      }

      else if (*&v16 == 2)
      {
        sub_1AAF425F4(v35, v44);
      }

      else
      {
        sub_1AACDE39C(v35, v44);
      }
    }

    else
    {
      sub_1AAF429CC(v35, v44, v16);
    }

    v36 = *&v46;
    v37 = *&v45;
    v51[0] = *v44;
    v51[1] = *&v44[1];
    v51[2] = v45;
    v51[3] = v46;
    v51[4] = v47;
    v52 = v48;
    v53 = v49;
    sub_1AACDE510(v51, v50, 0.0, *(v1 + 4));
    sub_1AAE413A0(v5);
    sub_1AAF0D208(v21, v5, v43);
    v38 = (*(v41 + 8))(v5, v42);
    MEMORY[0x1EEE9AC00](v38);
    v39[-4] = v43;
    v39[-3] = v50;
    v39[-2] = v1;
    sub_1AADE5D0C(sub_1AAE4501C, &v39[-6], v21);
    sub_1AAE45040(v50);

    sub_1AACB4A98(v37, v36);

    if (v33 > v34)
    {
      __break(1u);
    }

    else
    {
      sub_1AAD57C94(v43);
    }
  }
}

uint64_t sub_1AAE41A84@<X0>(uint64_t *a1@<X0>, void (**a2)(void *__return_ptr, uint64_t *, __n128)@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v48 = a3;
  v42 = a2;
  v6 = MEMORY[0x1E69E6720];
  sub_1AAE45C24(0, &qword_1ED9B1E60, MEMORY[0x1E69810B0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v47 = &v41 - v8;
  sub_1AAE45C24(0, &qword_1ED9B1E68, MEMORY[0x1E6980F88], v6);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v43 = &v41 - v10;
  v11 = sub_1AAF8E9B4();
  v45 = *(v11 - 8);
  v46 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v44 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v50[0] = sub_1AAF75A98(*a1, 0, 0);
  v50[1] = v14;
  sub_1AADA6144();
  v15 = sub_1AAF8EA64();
  v17 = v16;
  v19 = v18;
  if (qword_1ED9B1D98 != -1)
  {
    swift_once();
  }

  v20 = sub_1AAF8E9E4();
  v22 = v21;
  v24 = v23;
  sub_1AAD04750(v15, v17, v19 & 1);

  if (qword_1ED9B1DA8 != -1)
  {
    swift_once();
  }

  v25 = sub_1AAF8EA24();
  v27 = v26;
  v51 = v28;
  v30 = v29;
  sub_1AAD04750(v20, v22, v24 & 1);

  v49 = v13;
  (*v42)(v50, &v49);
  v31 = v50[0];
  type metadata accessor for DefaultChartLegend.ColorRampView(0);
  v32 = sub_1AAF8E984();
  (*(*(v32 - 8) + 56))(v43, 1, 1, v32);
  v33 = sub_1AAF8EA34();
  (*(*(v33 - 8) + 56))(v47, 1, 1, v33);
  v34 = v44;
  sub_1AAF8E9A4();
  v35 = v51 & 1;
  sub_1AAF8E994();
  v37 = v36;
  v39 = v38;
  result = (*(v45 + 8))(v34, v46);
  *a4 = v13;
  *(a4 + 8) = v31;
  *(a4 + 16) = v25;
  *(a4 + 24) = v27;
  *(a4 + 32) = v35;
  *(a4 + 33) = v50[0];
  *(a4 + 36) = *(v50 + 3);
  *(a4 + 40) = v30;
  *(a4 + 48) = v37;
  *(a4 + 56) = v39;
  return result;
}

double sub_1AAE41EB0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AAF8E934();
  v7 = *(a1 + 16);
  if (*(v4 + 25))
  {
    if (v7)
    {
      v8 = a1 + 72;
      do
      {
        v9 = *(v8 - 24);
        v10 = *(v8 - 16);
        v11 = *(v8 - 8);
        v8 += 64;
        sub_1AACD7304(v9, v10, v11);

        sub_1AAF8E8A4();
        sub_1AAF8E8D4();
        sub_1AAD04750(v9, v10, v11);

        --v7;
      }

      while (v7);
    }
  }

  else if (v7)
  {
    v12 = a1 + 72;
    do
    {
      v13 = *(v12 - 24);
      v14 = *(v12 - 16);
      v15 = *(v12 - 8);
      v12 += 64;
      sub_1AACD7304(v13, v14, v15);

      sub_1AAF8E8A4();
      sub_1AAF8E8D4();
      sub_1AAD04750(v13, v14, v15);

      --v7;
    }

    while (v7);
  }

  result = *&v17;
  *a2 = v17;
  *(a2 + 16) = v18;
  *(a2 + 32) = v19;
  return result;
}

void sub_1AAE4202C(uint64_t a1)
{
  v3 = *(v1 + 25);
  v4 = *(a1 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if ((v3 & 1) == 0)
  {
    if (v4)
    {
      v48 = MEMORY[0x1E69E7CC0];
      sub_1AAD1FAF4(0, v4, 0);
      v5 = v48;
      v11 = *(v48 + 16);
      v12 = (a1 + 88);
      v13 = v4;
      do
      {
        v14 = *v12;
        v15 = *(v48 + 24);
        if (v11 >= v15 >> 1)
        {
          sub_1AAD1FAF4((v15 > 1), v11 + 1, 1);
        }

        *(v48 + 16) = v11 + 1;
        *(v48 + 8 * v11 + 32) = v14;
        v12 += 8;
        ++v11;
        --v13;
      }

      while (v13);
    }

    sub_1AADC5CE8(v5);

    v24 = MEMORY[0x1E69E7CC0];
    if (v4)
    {
      v50 = MEMORY[0x1E69E7CC0];
      sub_1AAD1FAF4(0, v4, 0);
      v25 = v50;
      v26 = *(v50 + 16);
      v27 = (a1 + 80);
      v28 = v4;
      do
      {
        v29 = *(v27 - 5);
        v30 = *v27;
        v31 = *(v50 + 24);
        if (v26 >= v31 >> 1)
        {
          sub_1AAD1FAF4((v31 > 1), v26 + 1, 1);
        }

        *(v50 + 16) = v26 + 1;
        *(v50 + 8 * v26 + 32) = v29 + v30 * -0.5;
        v27 += 8;
        ++v26;
        --v28;
      }

      while (v28);
    }

    else
    {
      v25 = MEMORY[0x1E69E7CC0];
    }

    sub_1AADE69D4(v25);
    v41 = v40;

    if (v41)
    {
      if (!v4)
      {
LABEL_39:
        v34 = MEMORY[0x1E69E7CC0];
        goto LABEL_40;
      }
    }

    else if (!v4)
    {
      goto LABEL_39;
    }

    sub_1AAD1FAF4(0, v4, 0);
    v34 = v24;
    v42 = *(v24 + 16);
    v43 = (a1 + 80);
    do
    {
      v44 = *(v43 - 5);
      v45 = *v43;
      v46 = *(v24 + 24);
      if (v42 >= v46 >> 1)
      {
        sub_1AAD1FAF4((v46 > 1), v42 + 1, 1);
      }

      *(v24 + 16) = v42 + 1;
      *(v24 + 8 * v42 + 32) = v44 + v45 * 0.5;
      v43 += 8;
      ++v42;
      --v4;
    }

    while (v4);
    goto LABEL_40;
  }

  if (v4)
  {
    v47 = MEMORY[0x1E69E7CC0];
    sub_1AAD1FAF4(0, v4, 0);
    v5 = v47;
    v6 = *(v47 + 16);
    v7 = (a1 + 80);
    v8 = v4;
    do
    {
      v9 = *v7;
      v10 = *(v47 + 24);
      if (v6 >= v10 >> 1)
      {
        sub_1AAD1FAF4((v10 > 1), v6 + 1, 1);
      }

      *(v47 + 16) = v6 + 1;
      *(v47 + 8 * v6 + 32) = v9;
      v7 += 8;
      ++v6;
      --v8;
    }

    while (v8);
  }

  sub_1AADC5CE8(v5);

  v16 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v49 = MEMORY[0x1E69E7CC0];
    sub_1AAD1FAF4(0, v4, 0);
    v17 = v49;
    v18 = *(v49 + 16);
    v19 = (a1 + 88);
    v20 = v4;
    do
    {
      v21 = *(v19 - 6);
      v22 = *v19;
      v23 = *(v49 + 24);
      if (v18 >= v23 >> 1)
      {
        sub_1AAD1FAF4((v23 > 1), v18 + 1, 1);
      }

      *(v49 + 16) = v18 + 1;
      *(v49 + 8 * v18 + 32) = v21 + v22 * -0.5;
      v19 += 8;
      ++v18;
      --v20;
    }

    while (v20);
  }

  else
  {
    v17 = MEMORY[0x1E69E7CC0];
  }

  sub_1AADE69D4(v17);
  v33 = v32;

  if (v33)
  {
    if (!v4)
    {
LABEL_29:
      v34 = MEMORY[0x1E69E7CC0];
      goto LABEL_40;
    }
  }

  else if (!v4)
  {
    goto LABEL_29;
  }

  sub_1AAD1FAF4(0, v4, 0);
  v34 = v16;
  v35 = *(v16 + 16);
  v36 = (a1 + 88);
  do
  {
    v37 = *(v36 - 6);
    v38 = *v36;
    v39 = *(v16 + 24);
    if (v35 >= v39 >> 1)
    {
      sub_1AAD1FAF4((v39 > 1), v35 + 1, 1);
    }

    *(v16 + 16) = v35 + 1;
    *(v16 + 8 * v35 + 32) = v37 + v38 * 0.5;
    v36 += 8;
    ++v35;
    --v4;
  }

  while (v4);
LABEL_40:
  sub_1AADC5CE8(v34);
}

uint64_t sub_1AAE42588(char *a1, uint64_t a2, void *a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11)
{
  v104 = a3;
  v100 = sub_1AAF8E134();
  v103 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v99 = &v92 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AAE45C24(0, &qword_1EB425A28, MEMORY[0x1E697E7E0], MEMORY[0x1E697DCB8]);
  v111 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v92 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v92 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v108 = &v92 - v23;
  v109 = sub_1AAF8DF14();
  v95 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109 - 8);
  v25 = &v92 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v98 = &v92 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v110 = &v92 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v106 = &v92 - v31;
  v32 = sub_1AAF8DE34();
  v33 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v92 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AAF8DD04();
  v36 = COERCE_DOUBLE(sub_1AADC5DE0(*a2));
  v38 = v37;
  if (v39)
  {
    v38 = 0.0;
    v36 = 0.0;
  }

  v40 = a11 - a10;
  v41 = (v36 - a10) / (a11 - a10);
  v42 = *(a2 + 25);
  v43 = *a1;
  v44 = (v33 + 8);
  v45 = (v38 - a10) / v40;
  v107 = a2;
  if (v42)
  {
    v96 = v25;
    v97 = v18;
    sub_1AAF8E944();
    v113 = *(a2 + 8);
    v114 = *&v41;
    *&v115 = v45;
    sub_1AAF8DE24();
    sub_1AAF8DDA4();
    sub_1AAD12C10(v117);
    v46 = *v44;
    (*v44)(v35, v32);
    v47 = v104;
    v108 = v43;
    sub_1AAE41EB0(v104, v118);
    if (qword_1ED9B09B8 != -1)
    {
      swift_once();
    }

    sub_1AAF8DE14();
    sub_1AAF8DE04();
    sub_1AAD12C10(v118);
    result = (v46)(v35, v32);
    v49 = v47[2];
    if (v49)
    {
      v106 = *(type metadata accessor for DefaultChartLegend.ColorRampView(0) + 48);
      v50 = (v47 + 4);
      v94 = v103 + 1;
      v93 = (v95 + 32);
      LODWORD(v105) = *MEMORY[0x1E697E7D8];
      v103 = (v95 + 8);
      v104 = v95 + 104;
      v108 = a1;
      v95 = v21;
      do
      {
        v102 = v49;
        v54 = v50[1];
        v113 = *v50;
        v114 = v54;
        v55 = v50[3];
        v115 = v50[2];
        v116 = v55;
        sub_1AAE44F40(&v113, v112);
        sub_1AAF8DED4();
        sub_1AAF8DD04();
        sub_1AAE44F78(&v106[a2], v21, &qword_1EB425A28, MEMORY[0x1E697E7E0], MEMORY[0x1E697DCB8], sub_1AAE45C24);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v57 = v98;
        if (EnumCaseMultiPayload == 1)
        {
          v58 = v109;
          (*v93)(v98, v21, v109);
        }

        else
        {
          v59 = sub_1AAF8FD14();
          v60 = sub_1AAF8E764();
          sub_1AAF8D7B4(v59, &dword_1AACA8000, v60, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

          v61 = v99;
          sub_1AAF8E124();
          swift_getAtKeyPath();

          (*v94)(v61, v100);
          v58 = v109;
        }

        v62 = *v104;
        v63 = v110;
        (*v104)(v110, v105, v58);
        v64 = sub_1AAF8DF04();
        v65 = *v103;
        (*v103)(v63, v58);
        v65(v57, v58);
        if (v64)
        {
          sub_1AAF8DE84();
        }

        v101 = *v108;
        v66 = v97;
        sub_1AAE44F78(&v106[a2], v97, &qword_1EB425A28, MEMORY[0x1E697E7E0], MEMORY[0x1E697DCB8], sub_1AAE45C24);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v67 = v96;
          (*v93)(v96, v66, v58);
          sub_1AAE44F40(&v113, v112);
        }

        else
        {
          sub_1AAE44F40(&v113, v112);
          v68 = sub_1AAF8FD14();
          v69 = sub_1AAF8E764();
          v70 = v68;
          v58 = v109;
          sub_1AAF8D7B4(v70, &dword_1AACA8000, v69, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

          v71 = v99;
          sub_1AAF8E124();
          v67 = v96;
          swift_getAtKeyPath();

          (*v94)(v71, v100);
        }

        v72 = v110;
        v62(v110, v105, v58);
        v73 = sub_1AAF8DF04();
        v65(v72, v58);
        v65(v67, v58);
        if (v73)
        {
          sub_1AAF8F284();
        }

        else
        {
          sub_1AAF8F274();
        }

        v52 = *(&v114 + 1);
        v51 = v114;
        v53 = v115;
        sub_1AAF8DD64();
        sub_1AAD04750(v51, v52, v53);

        sub_1AAF8DEE4();
        result = sub_1AAE44FEC(&v113);
        v50 += 4;
        v49 = v102 - 1;
        a2 = v107;
        v21 = v95;
      }

      while (v102 != 1);
    }
  }

  else
  {
    sub_1AAF8E944();
    *&v113 = *(a2 + 8);
    *(&v113 + 1) = v41;
    *&v114 = 0;
    *(&v114 + 1) = v45;
    *&v115 = 0;
    sub_1AAF8DE24();
    sub_1AAF8DDA4();
    sub_1AAD12C10(v117);
    v74 = *v44;
    (*v44)(v35, v32);
    v75 = v104;
    sub_1AAE41EB0(v104, v118);
    if (qword_1ED9B09B8 != -1)
    {
      swift_once();
    }

    sub_1AAF8DE14();
    sub_1AAF8DE04();
    sub_1AAD12C10(v118);
    result = (v74)(v35, v32);
    v76 = v75[2];
    if (v76)
    {
      v105 = *(type metadata accessor for DefaultChartLegend.ColorRampView(0) + 48);
      v77 = (v75 + 4);
      v102 = v103 + 1;
      v101 = (v95 + 32);
      LODWORD(v104) = *MEMORY[0x1E697E7D8];
      v103 = (v95 + 104);
      v78 = (v95 + 8);
      do
      {
        v81 = v77[1];
        v113 = *v77;
        v114 = v81;
        v82 = v77[3];
        v115 = v77[2];
        v116 = v82;
        sub_1AAE44F40(&v113, v112);
        sub_1AAF8DED4();
        sub_1AAF8DD04();
        v83 = v108;
        sub_1AAE44F78(a2 + v105, v108, &qword_1EB425A28, MEMORY[0x1E697E7E0], MEMORY[0x1E697DCB8], sub_1AAE45C24);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v84 = v106;
          v85 = v109;
          (*v101)(v106, v83, v109);
        }

        else
        {
          v86 = sub_1AAF8FD14();
          v87 = sub_1AAF8E764();
          sub_1AAF8D7B4(v86, &dword_1AACA8000, v87, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

          v88 = v99;
          sub_1AAF8E124();
          v84 = v106;
          swift_getAtKeyPath();

          (*v102)(v88, v100);
          v85 = v109;
        }

        v89 = v110;
        (*v103)(v110, v104, v85);
        v90 = sub_1AAF8DF04();
        v91 = *v78;
        (*v78)(v89, v85);
        v91(v84, v85);
        if (v90)
        {
          sub_1AAF8DE84();
        }

        v79 = v114;
        v80 = v115;
        sub_1AAE44F40(&v113, v112);
        sub_1AAF8F244();
        sub_1AAF8DD64();
        sub_1AAD04750(v79, *(&v79 + 1), v80);

        sub_1AAF8DEE4();
        result = sub_1AAE44FEC(&v113);
        v77 += 4;
        --v76;
        a2 = v107;
      }

      while (v76);
    }
  }

  return result;
}

double sub_1AAE43238@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1AAF8E1A4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v12 = v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AAE415E8();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  sub_1AAE4202C(v17);
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  sub_1AAE45814(v2, v12, type metadata accessor for DefaultChartLegend.ColorRampView);
  v27 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v28 = (v10 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  v29[2] = v20;
  v29[3] = v22;
  v29[4] = v24;
  v29[5] = v26;
  sub_1AAE44D24(v12, v29 + v27);
  v30 = (v29 + v28);
  *v30 = v14;
  v30[1] = v16;
  *(v29 + ((v28 + 23) & 0xFFFFFFFFFFFFFFF8)) = v18;
  (*(v6 + 104))(v8, *MEMORY[0x1E697F3A0], v5);
  sub_1AAF8EEA4();
  sub_1AAE44E54(0);
  *(a2 + *(v31 + 36)) = 1;
  sub_1AAF8F124();
  sub_1AAF8DA24();
  sub_1AAE44EE0(0);
  v33 = (a2 + *(v32 + 36));
  v34 = v36[1];
  *v33 = v36[0];
  v33[1] = v34;
  result = *&v37;
  v33[2] = v37;
  return result;
}

uint64_t sub_1AAE434C8@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  sub_1AAE43C40(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1AAF8E134();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a4 & 1) == 0)
  {

    v17 = sub_1AAF8FD14();
    v18 = sub_1AAF8E764();
    v31 = v14;
    v19 = a5;
    v20 = v18;
    sub_1AAF8D7B4(v17, &dword_1AACA8000, v18, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    a5 = v19;
    v14 = v31;
    sub_1AAF8E124();
    swift_getAtKeyPath();
    v21 = sub_1AAE43EC4(a3, 0);
    (*(v14 + 8))(v16, v13, v21);
    LOBYTE(a3) = v32;
  }

  if ((a2 & 1) == 0)
  {

    v25 = sub_1AAF8FD14();
    v26 = sub_1AAF8E764();
    sub_1AAF8D7B4(v25, &dword_1AACA8000, v26, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1AAF8E124();
    swift_getAtKeyPath();
    v27 = sub_1AAE43ED0(a1, 0);
    (*(v14 + 8))(v16, v13, v27);
    a1 = v32;
    if (v32)
    {
      goto LABEL_5;
    }

LABEL_7:
    v24 = 1;
    goto LABEL_8;
  }

  if (!a1)
  {
    goto LABEL_7;
  }

LABEL_5:
  *v12 = a3 & 1;
  *(v12 + 1) = 0x4020000000000000;
  v22 = *(a1 + 16);
  v32 = 0;
  v33 = v22;
  swift_getKeyPath();
  v23 = swift_allocObject();
  *(v23 + 16) = a1;
  *(v23 + 24) = a3 & 1;
  sub_1AAD26724(0, &qword_1ED9B29B0, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
  sub_1AAE44198(0, &qword_1ED9ADA58, MEMORY[0x1E697F960]);
  sub_1AAD116F4();
  sub_1AAE43F50();
  sub_1AAF8EFC4();
  sub_1AAE440B8();
  sub_1AAF8EB64();
  sub_1AAE442D0(v12, sub_1AAE43C40);
  v24 = 0;
LABEL_8:
  sub_1AAE43EDC(0);
  return (*(*(v28 - 8) + 56))(a5, v24, 1, v28);
}

void sub_1AAE438BC(unint64_t *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, void *a4@<X8>)
{
  v8 = type metadata accessor for DefaultChartLegend.ColorRampView(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v23[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1AAE44198(0, &qword_1ED9ADA88, MEMORY[0x1E697F948]);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v23[-v12];
  v14 = *a1;
  if ((*a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v14 >= *(a2 + 16))
  {
LABEL_8:
    __break(1u);
    return;
  }

  v15 = a2 + 32 * v14;
  v18 = *(v15 + 32);
  v17 = *(v15 + 40);
  v16 = v15 + 32;
  v19 = *(v16 + 24);
  if (v19 < 0)
  {
    v20 = *(v16 + 16);
    v24 = v19 & 0x7F;
    KeyPath = swift_getKeyPath();
    v25 = a4;
    *&v10[*(v8 + 44)] = KeyPath;
    v22 = MEMORY[0x1E697DCB8];
    sub_1AAE45C24(0, &qword_1EB425A20, MEMORY[0x1E6969770], MEMORY[0x1E697DCB8]);
    swift_storeEnumTagMultiPayload();
    *&v10[*(v8 + 48)] = swift_getKeyPath();
    sub_1AAE45C24(0, &qword_1EB425A28, MEMORY[0x1E697E7E0], v22);
    swift_storeEnumTagMultiPayload();
    *v10 = v18;
    *(v10 + 1) = v17;
    *(v10 + 2) = v20;
    v10[24] = v24;
    v10[25] = a3 & 1;
    *(v10 + 2) = xmmword_1AAFA6E90;
    *(v10 + 3) = xmmword_1AAFA6EA0;

    sub_1AAF8E9C4();
    sub_1AAE45814(v10, v13, type metadata accessor for DefaultChartLegend.ColorRampView);
    swift_storeEnumTagMultiPayload();
    sub_1AAE4401C();
    sub_1AAE44070(&qword_1ED9AE678, type metadata accessor for DefaultChartLegend.ColorRampView, &unk_1AAFA741C);
    sub_1AAF8E374();
    sub_1AAE442D0(v10, type metadata accessor for DefaultChartLegend.ColorRampView);
  }

  else
  {
    *v13 = v18;
    v13[1] = v17;
    swift_storeEnumTagMultiPayload();
    sub_1AAE4401C();
    sub_1AAE44070(&qword_1ED9AE678, type metadata accessor for DefaultChartLegend.ColorRampView, &unk_1AAFA741C);

    sub_1AAF8E374();
  }
}

void sub_1AAE43C40(uint64_t a1)
{
  if (!qword_1ED9ADB18)
  {
    sub_1AAE43CEC(255);
    sub_1AAE43D9C(255);
    sub_1AAE44070(&qword_1ED9ADB48, sub_1AAE43CEC, MEMORY[0x1E697DDC8]);
    v1 = sub_1AAF8DBA4();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED9ADB18);
    }
  }
}

void sub_1AAE43CEC(uint64_t a1)
{
  if (!qword_1ED9ADB38)
  {
    sub_1AAE43D48();
    v1 = sub_1AAF8D964();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED9ADB38);
    }
  }
}

unint64_t sub_1AAE43D48()
{
  result = qword_1ED9AE690;
  if (!qword_1ED9AE690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9AE690);
  }

  return result;
}

void sub_1AAE43D9C(uint64_t a1)
{
  if (!qword_1ED9AD9A8)
  {
    sub_1AAD26724(255, &qword_1ED9B29B0, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
    sub_1AAE44198(255, &qword_1ED9ADA58, MEMORY[0x1E697F960]);
    sub_1AAD116F4();
    v1 = sub_1AAF8EFE4();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED9AD9A8);
    }
  }
}

uint64_t type metadata accessor for DefaultChartLegend.ColorRampView(uint64_t a1)
{
  result = qword_1ED9AE668;
  if (!qword_1ED9AE668)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_1AAE43EC4(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

double sub_1AAE43ED0(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }

  return result;
}

void sub_1AAE43EDC(uint64_t a1)
{
  if (!qword_1ED9ADAC8)
  {
    sub_1AAE43C40(255);
    sub_1AAF8E734();
    v1 = sub_1AAF8DF74();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED9ADAC8);
    }
  }
}

unint64_t sub_1AAE43F50()
{
  result = qword_1ED9ADA60;
  if (!qword_1ED9ADA60)
  {
    sub_1AAE44198(255, &qword_1ED9ADA58, MEMORY[0x1E697F960]);
    sub_1AAE4401C();
    sub_1AAE44070(&qword_1ED9AE678, type metadata accessor for DefaultChartLegend.ColorRampView, &unk_1AAFA741C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9ADA60);
  }

  return result;
}

unint64_t sub_1AAE4401C()
{
  result = qword_1ED9AE5C0[0];
  if (!qword_1ED9AE5C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED9AE5C0);
  }

  return result;
}

uint64_t sub_1AAE44070(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1AAE440B8()
{
  result = qword_1ED9ADB20;
  if (!qword_1ED9ADB20)
  {
    sub_1AAE43C40(255);
    sub_1AAE44070(&qword_1ED9ADB40, sub_1AAE43CEC, MEMORY[0x1E697DDD0]);
    sub_1AAE45230(&qword_1ED9AD9B0, sub_1AAE43D9C, sub_1AAE43F50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9ADB20);
  }

  return result;
}

void sub_1AAE44198(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for DefaultChartLegend.ColorRampView(255);
    v7 = a3(a1, &type metadata for DefaultChartLegend.CategoriesView, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1AAE44200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - v10;
  (*(v12 + 16))(&v14 - v10, a1, v9);
  return a6(v11);
}

uint64_t sub_1AAE442D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1AAE44358(uint64_t a1, __n128 a2)
{
  sub_1AAF8E9D4();
  if (v2 <= 0x3F)
  {
    sub_1AAE45C24(319, &qword_1ED9ADBA8, MEMORY[0x1E6969770], MEMORY[0x1E697DCC0]);
    if (v3 <= 0x3F)
    {
      sub_1AAE45C24(319, &qword_1ED9ADBA0, MEMORY[0x1E697E7E0], MEMORY[0x1E697DCC0]);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for DefaultChartLegend.GridLayout(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[16])
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

uint64_t storeEnumTagSinglePayload for DefaultChartLegend.GridLayout(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1AAE44524()
{
  result = qword_1ED9ADAB8;
  if (!qword_1ED9ADAB8)
  {
    sub_1AAE45C24(255, &qword_1ED9ADAC0, sub_1AAE43EDC, MEMORY[0x1E69E6720]);
    sub_1AAE445CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9ADAB8);
  }

  return result;
}

unint64_t sub_1AAE445CC()
{
  result = qword_1ED9ADAD0;
  if (!qword_1ED9ADAD0)
  {
    sub_1AAE43EDC(255);
    sub_1AAE440B8();
    sub_1AAE44070(&qword_1ED9B44D8, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9ADAD0);
  }

  return result;
}

unint64_t sub_1AAE446B8()
{
  result = qword_1ED9AE688;
  if (!qword_1ED9AE688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9AE688);
  }

  return result;
}

unint64_t sub_1AAE4470C()
{
  result = qword_1ED9AD8D8;
  if (!qword_1ED9AD8D8)
  {
    sub_1AAE45C24(255, &qword_1ED9AD8E0, type metadata accessor for CGRect, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9AD8D8);
  }

  return result;
}

void sub_1AAE44794(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v6 = sub_1AAF8DC34();
    sub_1AAE45C24(255, &qword_1ED9AD8E0, type metadata accessor for CGRect, MEMORY[0x1E69E62F8]);
    v10[0] = v6;
    v10[1] = v7;
    v10[2] = sub_1AAE44070(&qword_1ED9ADB08, MEMORY[0x1E697E3C0], MEMORY[0x1E697E3D0]);
    v10[3] = sub_1AAE4470C();
    v8 = a3(a1, v10);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1AAE44888(uint64_t a1)
{
  sub_1AAE44794(0, &qword_1ED9AD7B8, MEMORY[0x1E69E6A98]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_1AAE44900(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, void, double, double))
{
  v4 = a1;
  v5 = *(a1 + 16);
  v6 = *(a2 + 16);
  if (v6 >= v5)
  {
    v7 = *(a1 + 16);
  }

  else
  {
    v7 = *(a2 + 16);
  }

  v45 = MEMORY[0x1E69E7CC0];
  result = sub_1AAD413CC(0, v7, 0);
  v41 = v5;
  v42 = v6;
  v39 = a2;
  v40 = v7;
  if (v7)
  {
    v9 = (a2 + 40);
    v10 = (v4 + 40);
    v43 = v4;
    while (v5)
    {
      if (!v6)
      {
        goto LABEL_22;
      }

      result = a3(*(v10 - 1), *v10, *(v9 - 1), *v9);
      v16 = *(v45 + 16);
      v15 = *(v45 + 24);
      if (v16 >= v15 >> 1)
      {
        v18 = v13;
        v19 = v14;
        v20 = v11;
        v21 = v12;
        result = sub_1AAD413CC((v15 > 1), v16 + 1, 1);
        v12 = v21;
        v11 = v20;
        v14 = v19;
        v13 = v18;
      }

      *(v45 + 16) = v16 + 1;
      v17 = (v45 + 32 * v16);
      v17[4] = v11;
      v17[5] = v12;
      --v6;
      v17[6] = v13;
      v17[7] = v14;
      --v5;
      v9 += 2;
      v10 += 2;
      --v7;
      v4 = v43;
      if (!v7)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
  }

  else
  {
LABEL_11:
    v22 = v42;
    if (v41 <= v42)
    {
      return v45;
    }

    v23 = v40;
    v24 = 16 * v40 + 40;
    v25 = (v4 + v24);
    v26 = (v39 + v24);
    while (v23 < v41)
    {
      v27 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        goto LABEL_24;
      }

      if (v22 != v23)
      {
        if (v23 >= v22)
        {
          goto LABEL_25;
        }

        result = a3(*(v25 - 1), *v25, *(v26 - 1), *v26);
        v33 = *(v45 + 16);
        v32 = *(v45 + 24);
        if (v33 >= v32 >> 1)
        {
          v35 = v28;
          v36 = v29;
          v37 = v30;
          v38 = v31;
          result = sub_1AAD413CC((v32 > 1), v33 + 1, 1);
          v31 = v38;
          v30 = v37;
          v29 = v36;
          v28 = v35;
        }

        ++v23;
        v25 += 2;
        v26 += 2;
        *(v45 + 16) = v33 + 1;
        v34 = (v45 + 32 * v33);
        v34[4] = v28;
        v34[5] = v29;
        v34[6] = v30;
        v34[7] = v31;
        v22 = v42;
        if (v27 != v41)
        {
          continue;
        }
      }

      return v45;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

char *sub_1AAE44B40(uint64_t a1, double a2)
{
  v3 = a1;
  v4 = *(a1 + 16);

  if (v4)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_1AADB81A8(v3);
    }

    v5 = 0.0;
    v6 = 32;
    do
    {
      v7 = *&v3[v6];
      *&v3[v6] = v5;
      v5 = v5 + v7 + a2;
      v6 += 8;
      --v4;
    }

    while (v4);
  }

  return v3;
}

unint64_t sub_1AAE44BC8()
{
  result = qword_1ED9AD918;
  if (!qword_1ED9AD918)
  {
    sub_1AAE45508(255, &qword_1ED9AD920, &type metadata for LegendRenderingContext.Category, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9AD918);
  }

  return result;
}

unint64_t sub_1AAE44C44()
{
  result = qword_1ED9AE680;
  if (!qword_1ED9AE680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9AE680);
  }

  return result;
}

unint64_t sub_1AAE44C98()
{
  result = qword_1ED9AE340;
  if (!qword_1ED9AE340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9AE340);
  }

  return result;
}

uint64_t sub_1AAE44D24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DefaultChartLegend.ColorRampView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AAE44D88(char *a1, double a2, double a3)
{
  v7 = *(type metadata accessor for DefaultChartLegend.ColorRampView(0) - 8);
  v8 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 23) & 0xFFFFFFFFFFFFFFF8;
  v11 = v3[2];
  v12 = v3[3];
  v13 = v3[4];
  v14 = v3[5];
  v15 = (v3 + v9);
  v16 = *(v3 + v10);
  v17 = *v15;
  v18 = v15[1];

  return sub_1AAE42588(a1, v3 + v8, v16, a2, a3, v11, v12, v13, v14, v17, v18);
}

void sub_1AAE44E54(uint64_t a1)
{
  if (!qword_1EB425A30)
  {
    sub_1AAD26724(255, &qword_1EB425A38, MEMORY[0x1E6981E70], MEMORY[0x1E6981E60], MEMORY[0x1E69817A8]);
    v1 = sub_1AAF8DF74();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB425A30);
    }
  }
}

void sub_1AAE44EE0(uint64_t a1)
{
  if (!qword_1EB425A40)
  {
    sub_1AAE44E54(255);
    v1 = sub_1AAF8DF74();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB425A40);
    }
  }
}

uint64_t sub_1AAE44F78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_1AAE45040(uint64_t a1)
{
  sub_1AAD26724(0, &qword_1ED9B4070, MEMORY[0x1E69E63B0], MEMORY[0x1E69E7DE0], type metadata accessor for ConcreteScale);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AAE450C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1AAE45110(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

uint64_t sub_1AAE45170(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 145))
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

uint64_t sub_1AAE451B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 144) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 145) = 1;
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

    *(result + 145) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AAE45230(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void))
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

void sub_1AAE452AC(uint64_t a1)
{
  if (!qword_1ED9AD9B8)
  {
    sub_1AAE45508(255, &qword_1ED9AD920, &type metadata for LegendRenderingContext.Category, MEMORY[0x1E69E62F8]);
    sub_1AAE44BC8();
    v1 = sub_1AAF8EFE4();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED9AD9B8);
    }
  }
}

unint64_t sub_1AAE4535C()
{
  result = qword_1EB425A48;
  if (!qword_1EB425A48)
  {
    sub_1AAE44EE0(255);
    sub_1AAE453DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB425A48);
  }

  return result;
}

unint64_t sub_1AAE453DC()
{
  result = qword_1EB425A50;
  if (!qword_1EB425A50)
  {
    sub_1AAE44E54(255);
    sub_1AAE4545C();
    sub_1AAD59C6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB425A50);
  }

  return result;
}

unint64_t sub_1AAE4545C()
{
  result = qword_1EB425A58;
  if (!qword_1EB425A58)
  {
    sub_1AAD26724(255, &qword_1EB425A38, MEMORY[0x1E6981E70], MEMORY[0x1E6981E60], MEMORY[0x1E69817A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB425A58);
  }

  return result;
}

void sub_1AAE45508(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1AAE45558(uint64_t a1)
{
  sub_1AAE45508(0, &qword_1ED9AE4C0, &type metadata for AnyChartSymbolShape, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1AAE455D8(uint64_t a1)
{
  if (!qword_1ED9ADAF0)
  {
    sub_1AAE4565C(255, &qword_1ED9ADAF8, &qword_1ED9ADBC0, sub_1AAE3DCB4, &type metadata for AnyChartSymbolShape);
    v1 = sub_1AAF8FE74();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED9ADAF0);
    }
  }
}

void sub_1AAE4565C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    sub_1AAE45744(255, a3, a4, a5);
    v6 = sub_1AAF8DF74();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1AAE456C0(uint64_t a1)
{
  if (!qword_1ED9ADAD8)
  {
    sub_1AAE4565C(255, &qword_1ED9ADAE0, &qword_1ED9ADBB8, sub_1AAE457C0, &type metadata for DefaultChartLegend.LineShape);
    v1 = sub_1AAF8FE74();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED9ADAD8);
    }
  }
}

void sub_1AAE45744(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    a3();
    v5 = sub_1AAF8D884();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1AAE457C0()
{
  result = qword_1ED9AE5B8;
  if (!qword_1ED9AE5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9AE5B8);
  }

  return result;
}

uint64_t sub_1AAE45814(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1AAE4587C(uint64_t a1, double a2)
{
  if (!qword_1ED9AD9E8)
  {
    sub_1AAE45910(255, a2);
    sub_1AAE44070(&qword_1ED9AD9A0, sub_1AAE45910, MEMORY[0x1E6981F48]);
    v2 = sub_1AAF8EF34();
    if (!v3)
    {
      atomic_store(v2, &qword_1ED9AD9E8);
    }
  }
}

void sub_1AAE45910(uint64_t a1, double a2)
{
  if (!qword_1ED9AD998)
  {
    sub_1AAE45998(255, &qword_1ED9ADAE8, sub_1AAE455D8, sub_1AAE456C0);
    v2 = sub_1AAF8F1E4();
    if (!v3)
    {
      atomic_store(v2, &qword_1ED9AD998);
    }
  }
}

void sub_1AAE45998(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
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

uint64_t sub_1AAE45A68(uint64_t a1)
{
  sub_1AAE4565C(0, &qword_1ED9ADAF8, &qword_1ED9ADBC0, sub_1AAE3DCB4, &type metadata for AnyChartSymbolShape);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AAE45AF0(uint64_t a1, uint64_t a2)
{
  sub_1AAE4565C(0, &qword_1ED9ADAF8, &qword_1ED9ADBC0, sub_1AAE3DCB4, &type metadata for AnyChartSymbolShape);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1AAE45B90(uint64_t a1)
{
  if (!qword_1ED9AD9F0)
  {
    sub_1AAE45C24(255, &qword_1ED9AD988, sub_1AAE45C88, MEMORY[0x1E6981F40]);
    sub_1AAE45CF0();
    v1 = sub_1AAF8EEC4();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED9AD9F0);
    }
  }
}

void sub_1AAE45C24(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1AAE45C88(uint64_t a1, double a2)
{
  if (!qword_1ED9AD9E0)
  {
    sub_1AAE4587C(255, a2);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ED9AD9E0);
    }
  }
}

unint64_t sub_1AAE45CF0()
{
  result = qword_1ED9AD990;
  if (!qword_1ED9AD990)
  {
    sub_1AAE45C24(255, &qword_1ED9AD988, sub_1AAE45C88, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9AD990);
  }

  return result;
}

void sub_1AAE45DC0(uint64_t a1)
{
  if (!qword_1EB425A68)
  {
    sub_1AAE457C0();
    v1 = sub_1AAF8D884();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB425A68);
    }
  }
}

unint64_t sub_1AAE45E40()
{
  result = qword_1ED9AE5B0;
  if (!qword_1ED9AE5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9AE5B0);
  }

  return result;
}

unint64_t sub_1AAE45E98()
{
  result = qword_1ED9AE5A8;
  if (!qword_1ED9AE5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9AE5A8);
  }

  return result;
}

void *AreaMark.init<A, B>(x:y:stacking:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v33 = a5;
  v34 = a7;
  v36 = a3;
  v35 = a2;
  v37 = a8;
  v11 = type metadata accessor for PlottableValue(0, a5, a7, a4);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v32 - v13);
  v16 = type metadata accessor for PlottableValue(0, a4, a6, v15);
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = (&v32 - v19);
  (*(v17 + 16))(&v32 - v19, a1, v16, v18);
  sub_1AACD6F84(v20, a4, a6, &v57);
  v21 = v35;
  (*(v12 + 16))(v14, v35, v11);
  sub_1AACD6F84(v14, v33, v34, &v62);
  (*(v12 + 8))(v21, v11);
  (*(v17 + 8))(a1, v16);
  v22 = v64;
  v23 = v65;
  if (!v65)
  {
    v24 = v59;
    v40 = v59;
    v41 = v60;
    *&v42 = v61;
    v38 = v57;
    v39 = v58;
    v25 = v60;
    sub_1AAE4637C(&v38);
    v56[6] = v44;
    v56[7] = v45;
    v56[8] = v46;
    v56[2] = v40;
    v56[3] = v41;
    v56[4] = v42;
    v56[5] = v43;
    v56[0] = v38;
    v56[1] = v39;
    v49 = v64;
    v50 = v65;
    *&v51 = v66;
    v47 = v62;
    v48 = v63;
    BYTE8(v51) = v36;
    *(&v51 + 9) = 257;
    v52 = v24;
    LOBYTE(v53) = v25;
    *(&v53 + 1) = 0;
    *&v54 = 0;
    BYTE8(v54) = -4;
    sub_1AACD7C5C(&v47);
    v56[15] = v53;
    v56[16] = v54;
    v56[17] = v55;
    v56[11] = v49;
    v56[12] = v50;
    v56[13] = v51;
    v56[14] = v52;
    v56[9] = v47;
    v56[10] = v48;
    sub_1AACD7C50(v22, *(&v22 + 1), 0);
    v27 = v24 >> 64;
    v26 = v24;
    v28 = v25;
LABEL_6:
    sub_1AACD7C50(v26, v27, v28);
    goto LABEL_7;
  }

  if (!v60)
  {
    v29 = v59;
    v40 = v59;
    v41 = v60;
    *&v42 = v61;
    v38 = v57;
    v39 = v58;
    BYTE8(v42) = v36;
    *(&v42 + 9) = 256;
    v43 = v64;
    LOBYTE(v44) = v65;
    *(&v44 + 1) = 0;
    *&v45 = 0;
    BYTE8(v45) = -4;
    sub_1AACD7C5C(&v38);
    v56[6] = v44;
    v56[7] = v45;
    v56[8] = v46;
    v56[2] = v40;
    v56[3] = v41;
    v56[4] = v42;
    v56[5] = v43;
    v56[0] = v38;
    v56[1] = v39;
    v49 = v64;
    v50 = v65;
    *&v51 = v66;
    v47 = v62;
    v48 = v63;
    sub_1AAE4637C(&v47);
    v56[15] = v53;
    v56[16] = v54;
    v56[17] = v55;
    v56[11] = v49;
    v56[12] = v50;
    v56[13] = v51;
    v56[14] = v52;
    v56[9] = v47;
    v56[10] = v48;
    sub_1AACD7C50(v22, *(&v22 + 1), v23);
    v27 = v29 >> 64;
    v26 = v29;
    v28 = 0;
    goto LABEL_6;
  }

  v40 = v59;
  v41 = v60;
  *&v42 = v61;
  v38 = v57;
  v39 = v58;
  sub_1AAE4637C(&v38);
  v56[6] = v44;
  v56[7] = v45;
  v56[8] = v46;
  v56[2] = v40;
  v56[3] = v41;
  v56[4] = v42;
  v56[5] = v43;
  v56[0] = v38;
  v56[1] = v39;
  v49 = v64;
  v50 = v65;
  *&v51 = v66;
  v47 = v62;
  v48 = v63;
  sub_1AAE4637C(&v47);
  v56[15] = v53;
  v56[16] = v54;
  v56[17] = v55;
  v56[11] = v49;
  v56[12] = v50;
  v56[13] = v51;
  v56[14] = v52;
  v56[9] = v47;
  v56[10] = v48;
LABEL_7:
  v30 = v37;
  result = memcpy(v37, v56, 0x120uLL);
  v30[36] = 0;
  v30[37] = 0;
  *(v30 + 304) = -1;
  return result;
}

int8x16_t sub_1AAE4637C(uint64_t a1)
{
  v1 = *(a1 + 64) & 0xFFFFFFFFFFFFFF8;
  v2 = *(a1 + 136) & 0xFFFFFFFFFFFFFF8;
  *(a1 + 48) = vandq_s8(*(a1 + 48), xmmword_1AAF92DB0);
  *(a1 + 64) = v1;
  result = vandq_s8(*(a1 + 120), xmmword_1AAF92DC0);
  *(a1 + 120) = result;
  *(a1 + 136) = v2;
  return result;
}

__n128 AreaMark.init<A, B>(xStart:xEnd:y:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  sub_1AAE83D50(a1, a2, a4, a6, v30);
  v16 = v30[7];
  *(a8 + 96) = v30[6];
  *(a8 + 112) = v16;
  *(a8 + 128) = v30[8];
  v17 = v30[3];
  *(a8 + 32) = v30[2];
  *(a8 + 48) = v17;
  v18 = v30[5];
  *(a8 + 64) = v30[4];
  *(a8 + 80) = v18;
  v19 = v30[1];
  *a8 = v30[0];
  *(a8 + 16) = v19;
  sub_1AAE83B9C(a3, a5, a7, v20, v31);
  v22 = type metadata accessor for PlottableValue(0, a5, a7, v21);
  (*(*(v22 - 8) + 8))(a3, v22);
  v24 = type metadata accessor for PlottableValue(0, a4, a6, v23);
  v25 = *(*(v24 - 8) + 8);
  v25(a2, v24);
  v25(a1, v24);
  v26 = v31[7];
  *(a8 + 240) = v31[6];
  *(a8 + 256) = v26;
  *(a8 + 272) = v31[8];
  v27 = v31[3];
  *(a8 + 176) = v31[2];
  *(a8 + 192) = v27;
  v28 = v31[5];
  *(a8 + 208) = v31[4];
  *(a8 + 224) = v28;
  result = v31[1];
  *(a8 + 144) = v31[0];
  *(a8 + 160) = result;
  *(a8 + 288) = 0;
  *(a8 + 296) = 0;
  *(a8 + 304) = -1;
  return result;
}

__n128 AreaMark.init<A, B>(x:yStart:yEnd:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  sub_1AAE83B9C(a1, a4, a6, a4, v29);
  v16 = v29[7];
  *(a8 + 96) = v29[6];
  *(a8 + 112) = v16;
  *(a8 + 128) = v29[8];
  v17 = v29[3];
  *(a8 + 32) = v29[2];
  *(a8 + 48) = v17;
  v18 = v29[5];
  *(a8 + 64) = v29[4];
  *(a8 + 80) = v18;
  v19 = v29[1];
  *a8 = v29[0];
  *(a8 + 16) = v19;
  sub_1AAE83D50(a2, a3, a5, a7, v30);
  v21 = type metadata accessor for PlottableValue(0, a5, a7, v20);
  v22 = *(*(v21 - 8) + 8);
  v22(a3, v21);
  v22(a2, v21);
  v24 = type metadata accessor for PlottableValue(0, a4, a6, v23);
  (*(*(v24 - 8) + 8))(a1, v24);
  v25 = v30[7];
  *(a8 + 240) = v30[6];
  *(a8 + 256) = v25;
  *(a8 + 272) = v30[8];
  v26 = v30[3];
  *(a8 + 176) = v30[2];
  *(a8 + 192) = v26;
  v27 = v30[5];
  *(a8 + 208) = v30[4];
  *(a8 + 224) = v27;
  result = v30[1];
  *(a8 + 144) = v30[0];
  *(a8 + 160) = result;
  *(a8 + 288) = 0;
  *(a8 + 296) = 0;
  *(a8 + 304) = -1;
  return result;
}

void *AreaMark.init<A, B, C>(x:y:series:stacking:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v69 = a4;
  v72 = a7;
  v73 = a3;
  v68 = a2;
  v78 = a9;
  v74 = *(a7 - 8);
  v70 = a11;
  MEMORY[0x1EEE9AC00](a1);
  v71 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for PlottableValue(0, v17, a10, v16);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = (&v66 - v20);
  v23 = type metadata accessor for PlottableValue(0, a5, a8, v22);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = (&v66 - v25);
  v75 = v27;
  v28 = *(v27 + 16);
  v77 = a1;
  v29 = a1;
  v31 = v30;
  v28(&v66 - v25, v29, v30, v24);
  v32 = v26;
  v33 = v68;
  sub_1AACD6F84(v32, a5, a8, &v98);
  (*(v19 + 16))(v21, v33, v18);
  sub_1AACD6F84(v21, a6, a10, &v103);
  v34 = v105;
  v35 = v106;
  v76 = v31;
  if (v106)
  {
    v37 = v70;
    v36 = v71;
    v67 = v18;
    v39 = v72;
    v38 = v73;
    if (v101)
    {
      v81 = v100;
      v82 = v101;
      *&v83 = v102;
      v79 = v98;
      v80 = v99;
      sub_1AAE4637C(&v79);
      v97[6] = v85;
      v97[7] = v86;
      v97[8] = v87;
      v97[2] = v81;
      v97[3] = v82;
      v97[4] = v83;
      v97[5] = v84;
      v97[0] = v79;
      v97[1] = v80;
      v90 = v105;
      v91 = v106;
      *&v92 = v107;
      v88 = v103;
      v89 = v104;
      sub_1AAE4637C(&v88);
      v97[15] = v94;
      v97[16] = v95;
      v97[17] = v96;
      v97[11] = v90;
      v97[12] = v91;
      v97[13] = v92;
      v97[14] = v93;
      v97[9] = v88;
      v97[10] = v89;
    }

    else
    {
      v66 = v100;
      v81 = v100;
      v82 = v101;
      *&v83 = v102;
      v79 = v98;
      v80 = v99;
      BYTE8(v83) = v69;
      *(&v83 + 9) = 256;
      v84 = v105;
      LOBYTE(v85) = v106;
      *(&v85 + 1) = 0;
      *&v86 = 0;
      BYTE8(v86) = -4;
      sub_1AACD7C5C(&v79);
      v97[6] = v85;
      v97[7] = v86;
      v97[8] = v87;
      v97[2] = v81;
      v97[3] = v82;
      v97[4] = v83;
      v97[5] = v84;
      v97[0] = v79;
      v97[1] = v80;
      v90 = v105;
      v91 = v106;
      *&v92 = v107;
      v88 = v103;
      v89 = v104;
      sub_1AAE4637C(&v88);
      v97[15] = v94;
      v97[16] = v95;
      v97[17] = v96;
      v97[11] = v90;
      v97[12] = v91;
      v97[13] = v92;
      v97[14] = v93;
      v97[9] = v88;
      v97[10] = v89;
      sub_1AACD7C50(v34, *(&v34 + 1), v35);
      sub_1AACD7C50(v66, *(&v66 + 1), 0);
    }

    v58 = v37;
    v59 = type metadata accessor for PlottableValue(0, v39, v37, v40);
    v60 = v36;
    sub_1AAE8CA40(v59, v61, v36);
    v57 = sub_1AACD78AC(v36, v39, v58);
    v53 = v62;
    v55 = v63;
    (*(v74 + 8))(v60, v39);
    (*(*(v59 - 8) + 8))(v38, v59);
    (*(v19 + 8))(v33, v67);
  }

  else
  {
    v41 = *(&v100 + 1);
    v42 = v100;
    v81 = v100;
    v82 = v101;
    *&v83 = v102;
    v79 = v98;
    v80 = v99;
    v43 = v101;
    sub_1AAE4637C(&v79);
    v97[6] = v85;
    v97[7] = v86;
    v97[8] = v87;
    v97[2] = v81;
    v97[3] = v82;
    v97[4] = v83;
    v97[5] = v84;
    v97[0] = v79;
    v97[1] = v80;
    v90 = v105;
    v91 = v106;
    *&v92 = v107;
    v88 = v103;
    v89 = v104;
    BYTE8(v92) = v69;
    *(&v92 + 9) = 257;
    v93 = __PAIR128__(v41, v42);
    LOBYTE(v94) = v43;
    *(&v94 + 1) = 0;
    *&v95 = 0;
    BYTE8(v95) = -4;
    sub_1AACD7C5C(&v88);
    v97[15] = v94;
    v97[16] = v95;
    v97[17] = v96;
    v97[11] = v90;
    v97[12] = v91;
    v97[13] = v92;
    v97[14] = v93;
    v97[9] = v88;
    v97[10] = v89;
    sub_1AACD7C50(v34, *(&v34 + 1), 0);
    sub_1AACD7C50(v42, v41, v43);
    v44 = v72;
    v45 = v70;
    v47 = type metadata accessor for PlottableValue(0, v72, v70, v46);
    v48 = v71;
    v49 = v73;
    sub_1AAE8CA40(v47, v50, v71);
    v51 = sub_1AACD78AC(v48, v44, v45);
    v53 = v52;
    v55 = v54;
    v56 = v48;
    v57 = v51;
    (*(v74 + 8))(v56, v44);
    (*(*(v47 - 8) + 8))(v49, v47);
    (*(v19 + 8))(v33, v18);
  }

  (*(v75 + 8))(v77, v76);
  v64 = v78;
  result = memcpy(v78, v97, 0x120uLL);
  v64[36] = v57;
  v64[37] = v53;
  *(v64 + 304) = v55;
  return result;
}

uint64_t AreaMark.init<A, B, C>(xStart:xEnd:y:series:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v48 = a5;
  v49 = a8;
  v12 = a6;
  v46 = a6;
  v47 = a3;
  v50 = a2;
  v51 = a1;
  v16 = *(a7 - 8);
  v45 = a10;
  MEMORY[0x1EEE9AC00](a1);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AAE83D50(v19, v20, v21, v22, v52);
  v23 = v52[7];
  *(a9 + 96) = v52[6];
  *(a9 + 112) = v23;
  *(a9 + 128) = v52[8];
  v24 = v52[3];
  *(a9 + 32) = v52[2];
  *(a9 + 48) = v24;
  v25 = v52[5];
  *(a9 + 64) = v52[4];
  *(a9 + 80) = v25;
  v26 = v52[1];
  *a9 = v52[0];
  *(a9 + 16) = v26;
  sub_1AAE83B9C(a3, v12, a10, v27, v53);
  v28 = v53[7];
  *(a9 + 240) = v53[6];
  *(a9 + 256) = v28;
  *(a9 + 272) = v53[8];
  v29 = v53[3];
  *(a9 + 176) = v53[2];
  *(a9 + 192) = v29;
  v30 = v53[5];
  *(a9 + 208) = v53[4];
  *(a9 + 224) = v30;
  v31 = v53[1];
  *(a9 + 144) = v53[0];
  *(a9 + 160) = v31;
  v33 = type metadata accessor for PlottableValue(0, a7, a11, v32);
  sub_1AAE8CA40(v33, v34, v18);
  v35 = sub_1AACD78AC(v18, a7, a11);
  v37 = v36;
  LOBYTE(v12) = v38;
  (*(v16 + 8))(v18, a7);
  (*(*(v33 - 8) + 8))(a4, v33);
  v40 = type metadata accessor for PlottableValue(0, v46, v45, v39);
  (*(*(v40 - 8) + 8))(v47, v40);
  v42 = type metadata accessor for PlottableValue(0, v48, v49, v41);
  v43 = *(*(v42 - 8) + 8);
  v43(v50, v42);
  result = (v43)(v51, v42);
  *(a9 + 288) = v35;
  *(a9 + 296) = v37;
  *(a9 + 304) = v12;
  return result;
}

uint64_t AreaMark.init<A, B, C>(x:yStart:yEnd:series:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v51 = a5;
  v52 = a8;
  v47 = a6;
  v48 = a3;
  v49 = a2;
  v50 = a4;
  v13 = a3;
  v53 = a1;
  v16 = *(a7 - 8);
  v46 = a10;
  MEMORY[0x1EEE9AC00](a1);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AAE83B9C(v19, v21, v22, v20, v54);
  v23 = v54[7];
  *(a9 + 96) = v54[6];
  *(a9 + 112) = v23;
  *(a9 + 128) = v54[8];
  v24 = v54[3];
  *(a9 + 32) = v54[2];
  *(a9 + 48) = v24;
  v25 = v54[5];
  *(a9 + 64) = v54[4];
  *(a9 + 80) = v25;
  v26 = v54[1];
  *a9 = v54[0];
  *(a9 + 16) = v26;
  sub_1AAE83D50(a2, v13, a6, a10, v55);
  v27 = v55[7];
  *(a9 + 240) = v55[6];
  *(a9 + 256) = v27;
  *(a9 + 272) = v55[8];
  v28 = v55[3];
  *(a9 + 176) = v55[2];
  *(a9 + 192) = v28;
  v29 = v55[5];
  *(a9 + 208) = v55[4];
  *(a9 + 224) = v29;
  v30 = v55[1];
  *(a9 + 144) = v55[0];
  *(a9 + 160) = v30;
  v32 = type metadata accessor for PlottableValue(0, a7, a11, v31);
  v33 = v50;
  sub_1AAE8CA40(v32, v34, v18);
  v35 = sub_1AACD78AC(v18, a7, a11);
  v37 = v36;
  LOBYTE(v13) = v38;
  (*(v16 + 8))(v18, a7);
  (*(*(v32 - 8) + 8))(v33, v32);
  v40 = type metadata accessor for PlottableValue(0, v47, v46, v39);
  v41 = *(*(v40 - 8) + 8);
  v41(v48, v40);
  v41(v49, v40);
  v43 = type metadata accessor for PlottableValue(0, v51, v52, v42);
  result = (*(*(v43 - 8) + 8))(v53, v43);
  *(a9 + 288) = v35;
  *(a9 + 296) = v37;
  *(a9 + 304) = v13;
  return result;
}

uint64_t static AreaMark._layoutChartContent(_:_:)(_OWORD *a1)
{
  v1 = a1[7];
  v13[6] = a1[6];
  v13[7] = v1;
  v2 = a1[9];
  v13[8] = a1[8];
  v3 = a1[3];
  v13[2] = a1[2];
  v13[3] = v3;
  v4 = a1[5];
  v13[4] = a1[4];
  v13[5] = v4;
  v5 = a1[1];
  v13[0] = *a1;
  v13[1] = v5;
  v6 = a1[14];
  v7 = a1[16];
  v8 = a1[17];
  v14[6] = a1[15];
  v14[7] = v7;
  v14[8] = v8;
  v9 = a1[10];
  v10 = a1[12];
  v11 = a1[13];
  v14[2] = a1[11];
  v14[3] = v10;
  v14[4] = v11;
  v14[5] = v6;
  v14[0] = v2;
  v14[1] = v9;
  return sub_1AACD2B20(v13, v14);
}

uint64_t static AreaMark._renderChartContent(_:_:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v237 = a3;
  v5 = type metadata accessor for SgArea(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v226 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ChartContentRenderContext.Environment(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v226 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v226 - v12;
  v14 = a1[5];
  v15 = a1[7];
  v330 = a1[6];
  v331 = v15;
  v16 = a1[7];
  v332 = a1[8];
  v17 = a1[1];
  v18 = a1[3];
  v326 = a1[2];
  v327 = v18;
  v20 = a1[3];
  v19 = a1[4];
  v21 = v19;
  v329 = a1[5];
  v328 = v19;
  v22 = *a1;
  v23 = *a1;
  v325[1] = a1[1];
  v325[0] = v22;
  v379[6] = v330;
  v379[7] = v16;
  v24 = a1[9];
  v379[8] = a1[8];
  v379[2] = v326;
  v379[3] = v20;
  v379[5] = v14;
  v379[4] = v21;
  v379[1] = v17;
  v379[0] = v23;
  v25 = a1[14];
  v26 = a1[16];
  v338 = a1[15];
  v339 = v26;
  v27 = a1[16];
  v340 = a1[17];
  v28 = a1[10];
  v29 = a1[12];
  v334 = a1[11];
  v335 = v29;
  v31 = a1[12];
  v30 = a1[13];
  v337 = a1[14];
  v336 = v30;
  v32 = a1[9];
  v333[1] = a1[10];
  v333[0] = v24;
  v380[6] = v338;
  v380[7] = v27;
  v380[8] = a1[17];
  v380[2] = v334;
  v380[3] = v31;
  v380[5] = v25;
  v380[4] = v30;
  v380[1] = v28;
  v380[0] = v32;
  v33 = *(a1 + 36);
  v234 = *(a1 + 37);
  v235 = v33;
  v34 = *(a1 + 304);
  *&v239 = *(a2 + 8);
  v35 = v239 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_environment;
  LOBYTE(a2) = *a2;
  swift_beginAccess();
  v232 = v35;
  v36 = v35;
  v37 = v13;
  v38 = v8;
  sub_1AAE4911C(v36, v37);
  sub_1AAD5835C(v325, &v300);
  sub_1AAD5835C(v325, &v300);
  sub_1AAD036DC(v325, 0, v318);
  *&v39 = v318[0];
  v240 = v39;
  v241 = v40;
  *&v39 = v318[1];
  v236 = v39;
  sub_1AAD5835C(v333, &v300);
  sub_1AAD5835C(v333, &v300);
  sub_1AAD036DC(v333, 1, v319[0].f64);
  v241 = v319[0];
  v238 = v8;
  if ((a2 & 1) == 0)
  {
    sub_1AADC7F60(v333);
    sub_1AADC7F60(v325);
    sub_1AADC7F60(v325);
    sub_1AADC7F60(v333);
    v45 = v34;
    v233 = v37;
    *&v229 = v5;
    v227 = v10;
    *&v228 = v7;
    if (v34 == 255)
    {
      v232 = v34;
      v55 = v37 + *(v8 + 68);
      if (*(v55 + 24))
      {
        v56 = *(v55 + 48);
        v51 = *(v55 + 32);
        v57 = *(v55 + 40);
        sub_1AACD7C50(v51, v57, *(v55 + 48));
        v53 = v56 | 0x8000000000000000;
      }

      else
      {
        v51 = 0;
        v57 = 0;
        v53 = 0x80000000000000FCLL;
      }

      v52 = v57;
      v123 = v37 + *(v38 + 72);
      if (*(v123 + 24))
      {
        v48 = *(v123 + 48);
        v46 = *(v123 + 32);
        v47 = *(v123 + 40);
        sub_1AACD7C50(v46, v47, *(v123 + 48));
      }

      else
      {
        v46 = 0;
        v47 = 0;
        v48 = 252;
      }

      v50 = v234;
      v49 = v235;
      v54 = v232;
    }

    else
    {
      v46 = 0;
      v47 = 0;
      v48 = 0;
      v50 = v234;
      v49 = v235;
      v51 = v235;
      v52 = v234;
      v53 = v45;
      v54 = v45;
    }

    v234 = v53;
    v235 = v51;
    *&v300 = v51;
    v124 = v52;
    *(&v300 + 1) = v52;
    *&v301 = v53;
    v230 = v46;
    v231 = v47;
    *(&v301 + 1) = v46;
    *&v302 = v47;
    LODWORD(v232) = v48;
    BYTE8(v302) = v48;
    v125 = OBJC_IVAR____TtC6Charts25ChartContentRenderContext_areaSeriesContext;
    v126 = v239;
    swift_beginAccess();
    v127 = *(v126 + v125);
    v128 = *(v127 + 16);
    sub_1AAE49370(v49, v50, v54);
    if (v128 && (v129 = sub_1AADB0AA8(&v300), (v130 & 1) != 0))
    {
      v131 = *(*(v127 + 56) + 8 * v129);

      v132 = v239;
      v133 = v124;
      v135 = v234;
      v134 = v235;
      v136 = v232;
      v137 = v230;
      v138 = v231;
    }

    else
    {
      type metadata accessor for SgArea.Points();
      v131 = swift_allocObject();
      *(v131 + 16) = MEMORY[0x1E69E7CC0];
      v135 = v234;
      v133 = v124;
      v139 = v124;
      v137 = v230;
      v138 = v231;
      v136 = v232;
      sub_1AAE49384(v235, v139, v234, v230, v231, v232, sub_1AACCAE10, sub_1AACDC974);

      v140 = v239;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v242[0] = *(v140 + v125);
      *(v140 + v125) = 0x8000000000000000;
      sub_1AADD2AB4(v131, &v300, isUniquelyReferenced_nonNull_native);
      v134 = v235;
      sub_1AAE49384(v235, v133, v135, v137, v138, v136, sub_1AACCA728, sub_1AADB2F88);
      *(v140 + v125) = *&v242[0];
      v132 = v140;
    }

    swift_endAccess();
    sub_1AAE49384(v134, v133, v135, v137, v138, v136, sub_1AACCA728, sub_1AADB2F88);
    v142 = *(v131 + 16);
    v143 = *(v142 + 2);
    v144 = *(*(v132 + 16) + 24);
    v145 = swift_isUniquelyReferenced_nonNull_native();
    *(v131 + 16) = v142;
    if ((v145 & 1) == 0)
    {
      v142 = sub_1AAD6992C(0, v143 + 1, 1, v142);
      *(v131 + 16) = v142;
    }

    v37 = v233;
    v147 = *(v142 + 2);
    v146 = *(v142 + 3);
    if (v147 >= v146 >> 1)
    {
      v142 = sub_1AAD6992C((v146 > 1), v147 + 1, 1, v142);
    }

    *(v142 + 2) = v147 + 1;
    v148 = &v142[40 * v147];
    *(v148 + 4) = v144;
    *&v381.val[0].f64[0] = v240;
    v381.val[1] = v241;
    *&v381.val[0].f64[1] = v236;
    v148 += 40;
    vst2q_f64(v148, v381);
    *(v131 + 16) = v142;
    if (!v143)
    {
      if (sub_1AACDB99C(v379) > 2)
      {
        v151 = 0;
        v150 = v238;
      }

      else
      {
        v149 = sub_1AACDB99C(v380);
        v150 = v238;
        v151 = v149 >= 3 || sub_1AAE63890(v325, v333);
      }

      v154 = v37 + v150[12];
      v155 = *v154;
      v156 = *(v154 + 8);
      v157 = v227;
      sub_1AAE4911C(v37, v227);
      v158 = v229;
      v159 = v228;
      sub_1AAD0F2A4(v157, v228 + *(v229 + 32));
      v160 = *(v37 + v150[16]);
      *v159 = 0;
      *(v159 + 8) = v131;
      *(v159 + 16) = v151;
      *(v159 + 24) = v155;
      *(v159 + 32) = v156;
      *(v159 + *(v158 + 36)) = v160;
      v161 = swift_allocBox();
      sub_1AAE49408(v159, v162);
      v163 = v161 | 0x8000000000000000;
      goto LABEL_106;
    }

LABEL_71:
    v163 = 0xE000000000000000;
LABEL_106:
    *v237 = v163;
    return sub_1AAE492C0(v37, type metadata accessor for ChartContentRenderContext.Environment);
  }

  LODWORD(v231) = sub_1AACDB99C(v379);
  if (v231 <= 2)
  {
    v41 = 1;
    if (sub_1AACDB99C(v380) <= 2)
    {
      v42 = !sub_1AAE63890(v325, v333);
      v41 = sub_1AAE63890(v325, v333);
    }

    else
    {
      v42 = 0;
    }

    if (sub_1AACDB99C(v380) > 2 || (v43 = v325, v44 = v333, sub_1AAE63890(v325, v333)))
    {
      v43 = v333;
      v44 = v325;
    }
  }

  else
  {
    v41 = 0;
    v42 = 1;
    v43 = v325;
    v44 = v333;
  }

  sub_1AADC7F60(v44);
  sub_1AADC7F60(v43);
  v58 = v44[7];
  v306 = v44[6];
  v307 = v58;
  v59 = v44[8];
  v60 = v44[3];
  v302 = v44[2];
  v303 = v60;
  v61 = v44[4];
  v305 = v44[5];
  v304 = v61;
  v62 = *v44;
  v301 = v44[1];
  v300 = v62;
  v63 = v43[6];
  v64 = v43[7];
  v65 = v43[4];
  v314 = v43[5];
  v315 = v63;
  v66 = v43[8];
  v316 = v64;
  v317 = v66;
  v67 = v43[2];
  v68 = v43[3];
  v69 = *v43;
  v310 = v43[1];
  v311 = v67;
  v312 = v68;
  v313 = v65;
  v308 = v59;
  v309 = v69;
  v347 = v306;
  v348 = v307;
  v349 = v59;
  v343 = v302;
  v344 = v303;
  v346 = v305;
  v345 = v304;
  v342 = v301;
  v341 = v300;
  v368[6] = v315;
  v368[7] = v316;
  v368[8] = v317;
  v368[2] = v67;
  v368[3] = v68;
  v368[5] = v314;
  v368[4] = v65;
  v368[1] = v310;
  v368[0] = v69;
  sub_1AAD6D0FC(0);
  v70 = swift_allocObject();
  *(v70 + 16) = xmmword_1AAF99670;
  sub_1AAD5835C(v368, v256);
  sub_1AAF72B20(v41, v368, v320);
  v71 = v320[5];
  *(v70 + 96) = v320[4];
  *(v70 + 112) = v71;
  v72 = v320[3];
  *(v70 + 64) = v320[2];
  *(v70 + 80) = v72;
  *(v70 + 176) = v321;
  v73 = v320[8];
  v74 = v320[6];
  *(v70 + 144) = v320[7];
  *(v70 + 160) = v73;
  *(v70 + 128) = v74;
  v75 = v320[1];
  *(v70 + 32) = v320[0];
  *(v70 + 48) = v75;
  v76 = v37 + *(v38 + 68);
  v77 = *(v76 + 48);
  v297 = *(v76 + 32);
  v298 = v77;
  v299 = *(v76 + 64);
  v78 = *v76;
  v296 = *(v76 + 16);
  v295 = v78;
  if (*(&v296 + 1))
  {
    *(v268 + 7) = *v76;
    v79 = *(v76 + 48);
    *(v243 + 8) = *(v76 + 32);
    *(&v268[1] + 7) = *(v76 + 16);
    *(&v243[1] + 8) = v79;
    *(&v243[2] + 1) = *(v76 + 64);
    LOBYTE(v242[0]) = 5;
    *(v242 + 1) = v268[0];
    v242[1] = *(v268 + 15);
    *&v243[0] = *(&v296 + 1);
    LOBYTE(v244[0]) = 3;
    sub_1AAE0C0B0(v242);
    *&v256[96] = v244[1];
    *&v256[112] = v245;
    *&v256[128] = v246;
    *&v256[144] = v247;
    *&v256[32] = v243[0];
    *&v256[48] = v243[1];
    *&v256[64] = v243[2];
    *&v256[80] = v244[0];
    *v256 = v242[0];
    *&v256[16] = v242[1];
    nullsub_1();
    v291 = *&v256[96];
    v292 = *&v256[112];
    v293 = *&v256[128];
    v294 = *&v256[144];
    v287 = *&v256[32];
    v288 = *&v256[48];
    v289 = *&v256[64];
    v290 = *&v256[80];
    v285 = *v256;
    v286 = *&v256[16];
  }

  else
  {
    sub_1AAE2D7EC(&v285);
  }

  v80 = v239;
  v81 = v290;
  *(v70 + 248) = v289;
  v82 = v287;
  *(v70 + 232) = v288;
  *(v70 + 216) = v82;
  v83 = v293;
  v84 = v291;
  *(v70 + 296) = v292;
  *(v70 + 312) = v83;
  *(v70 + 328) = v294;
  *(v70 + 264) = v81;
  *(v70 + 280) = v84;
  v85 = v286;
  *(v70 + 184) = v285;
  *(v70 + 200) = v85;
  v86 = v37 + *(v38 + 72);
  v87 = *(v86 + 48);
  v282 = *(v86 + 32);
  v283 = v87;
  v284 = *(v86 + 64);
  v88 = *v86;
  v281 = *(v86 + 16);
  v280 = v88;
  if (*(&v281 + 1))
  {
    *(v268 + 7) = *v86;
    v89 = *(v86 + 48);
    *(v243 + 8) = *(v86 + 32);
    *(&v268[1] + 7) = *(v86 + 16);
    *(&v243[1] + 8) = v89;
    *(&v243[2] + 1) = *(v86 + 64);
    LOBYTE(v242[0]) = 6;
    *(v242 + 1) = v268[0];
    v242[1] = *(v268 + 15);
    *&v243[0] = *(&v281 + 1);
    LOBYTE(v244[0]) = 3;
    sub_1AAE0C0B0(v242);
    *&v256[96] = v244[1];
    *&v256[112] = v245;
    *&v256[128] = v246;
    *&v256[144] = v247;
    *&v256[32] = v243[0];
    *&v256[48] = v243[1];
    *&v256[64] = v243[2];
    *&v256[80] = v244[0];
    *v256 = v242[0];
    *&v256[16] = v242[1];
    nullsub_1();
    v276 = *&v256[96];
    v277 = *&v256[112];
    v278 = *&v256[128];
    v279 = *&v256[144];
    v272 = *&v256[32];
    v273 = *&v256[48];
    v274 = *&v256[64];
    v275 = *&v256[80];
    v270 = *v256;
    v271 = *&v256[16];
  }

  else
  {
    sub_1AAE2D7EC(&v270);
  }

  v90 = v277;
  *(v70 + 432) = v276;
  *(v70 + 448) = v90;
  *(v70 + 464) = v278;
  *(v70 + 480) = v279;
  v91 = v273;
  *(v70 + 368) = v272;
  *(v70 + 384) = v91;
  v92 = v275;
  *(v70 + 400) = v274;
  *(v70 + 416) = v92;
  v93 = v271;
  *(v70 + 336) = v270;
  *(v70 + 352) = v93;
  v94 = MEMORY[0x1E69E6720];
  sub_1AAE49180(&v295, v256, qword_1ED9B3D88, &type metadata for AnyPlottableValue, MEMORY[0x1E69E6720]);
  sub_1AAE49180(&v280, v256, qword_1ED9B3D88, &type metadata for AnyPlottableValue, v94);
  v95 = sub_1AAF70438(v70);
  v97 = v96;
  swift_setDeallocating();
  sub_1AAE49320(0, qword_1ED9B2098, &type metadata for AccessibilityDataField, v94);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v369[6] = v347;
  v369[7] = v348;
  v369[8] = v349;
  v369[2] = v343;
  v369[3] = v344;
  v369[5] = v346;
  v369[4] = v345;
  v369[1] = v342;
  v369[0] = v341;
  result = sub_1AACDB99C(v369);
  if (!result)
  {
    v234 = v95;
    v235 = v97;
    v99 = sub_1AACD2C84(v369);
    v372 = *v99;
    v100 = *(v99 + 24);
    v373 = *(v99 + 16);
    v370 = *(v99 + 32);
    v371 = *(v99 + 48);
    v350 = v372;
    v351 = v373;
    v352 = v100;
    v353 = v370;
    v354 = v371;
    *&v355[15] = *(v99 + 64);
    *v355 = *(v99 + 49);
    v375 = v372;
    v376 = v373;
    v374 = v100;
    v378 = v371;
    v377 = v370;
    LODWORD(v230) = v42;
    if (v42)
    {
      swift_beginAccess();
      memcpy(v256, (v80 + 80), sizeof(v256));
      v101 = v238;
      if (*&v256[112])
      {
        v102 = *(v80 + 216);
        v261 = *(v80 + 200);
        v262 = v102;
        v263 = *(v80 + 232);
        LOBYTE(v264[0]) = *(v80 + 248);
        v103 = *(v80 + 184);
        v259 = *(v80 + 168);
        v260 = v103;

        sub_1AADFA6FC(&v375, v242);
        sub_1AAE49180(&v374, v242, &qword_1ED9B1E40, MEMORY[0x1E69810C8], MEMORY[0x1E69E62F8]);
        sub_1AAE14D50(&v377, v242);
        sub_1AAD5835C(&v341, v242);
        v252 = v261;
        v253 = v262;
        v254 = v263;
        v255 = v264[0];
        v250 = v259;
        v251 = v260;
LABEL_24:
        v104 = *(&v254 + 1);
        v106 = *(&v252 + 1);
        v105 = v252;
        v107 = v253;
        v108 = v255;
        sub_1AAE49180(&v256[88], v242, &qword_1ED9B22B8, &type metadata for SubPositionContext.Value, MEMORY[0x1E69E6720]);
        sub_1AAE0BFDC(&v250, v242);
        sub_1AAE0A738(v105, v106, v107, v104, v108, 4, &v322);
        v228 = v323;
        v229 = v322;
        v109 = v324;
        sub_1AAE0C014(&v250);
        sub_1AAD04750(v250, *(&v250 + 1), v251);

        sub_1AAD0E818(v105, v106, v107);
        v111 = v228;
        v110 = v229;
        v101 = v238;
        goto LABEL_61;
      }

      v122 = v256[257];

      if (v122 == 2)
      {
        sub_1AADFA6FC(&v375, v242);
        sub_1AAE49180(&v374, v242, &qword_1ED9B1E40, MEMORY[0x1E69810C8], MEMORY[0x1E69E62F8]);
        sub_1AAE14D50(&v377, v242);
        sub_1AAD5835C(&v341, v242);
      }

      else
      {
        sub_1AADFA6FC(&v375, v242);
        sub_1AAE49180(&v374, v242, &qword_1ED9B1E40, MEMORY[0x1E69810C8], MEMORY[0x1E69E62F8]);
        sub_1AAE14D50(&v377, v242);
        sub_1AAD5835C(&v341, v242);
        sub_1AACBB21C(v256, v242);
        v153 = sub_1AAF8E7A4();
        if (v153 == sub_1AAF8E7A4())
        {
          sub_1AAE49180(&v256[176], v242, &qword_1ED9B22B8, &type metadata for SubPositionContext.Value, MEMORY[0x1E69E6720]);
          sub_1AACBB254(v256);
          if (*&v256[200])
          {
            v250 = *&v256[176];
            v251 = *&v256[192];
            v252 = *&v256[208];
            v253 = *&v256[224];
            v254 = *&v256[240];
            v255 = v256[256];
            goto LABEL_24;
          }
        }

        else
        {
          sub_1AACBB254(v256);
        }
      }

      v110 = 0uLL;
      v109 = 2;
      v111 = 0uLL;
LABEL_61:
      v165 = v232;
      v166 = (v232 + v101[22]);
      v167 = *(v166 + 2);
      v362 = *v166;
      v363 = v167;
      v364 = v110;
      v365 = v111;
      v366 = v109;
      v367 = *(v80 + 368);
      v169 = *(v80 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 16);
      v168 = *(v80 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 32);
      v242[0] = *(v80 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale);
      v242[1] = v169;
      v243[0] = v168;
      v171 = *(v80 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 64);
      v170 = *(v80 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 80);
      v172 = *(v80 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 48);
      *(v244 + 9) = *(v80 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 89);
      v243[2] = v171;
      v244[0] = v170;
      v243[1] = v172;
      if (BYTE8(v244[1]) != 255)
      {
        v263 = v243[2];
        v264[0] = v244[0];
        *(v264 + 9) = *(v244 + 9);
        v259 = v242[0];
        v260 = v242[1];
        v262 = v243[1];
        v261 = v243[0];
        v357 = v242[1];
        v356 = v242[0];
        *(v361 + 9) = *(v244 + 9);
        v358 = v243[0];
        v359 = v243[1];
        v361[0] = v244[0];
        v360 = v243[2];
        sub_1AAE49180(&v259, &v248, &qword_1ED9B3E38, MEMORY[0x1E69E7DE0], type metadata accessor for AnyConcreteScale);
        v173 = v80;
        v174 = 1;
LABEL_67:
        sub_1AAE08D1C(&v356, v173, v174, &v350, v268);
        sub_1AAE492C0(v242, sub_1AACCF364);
        nullsub_1();

        sub_1AAD6E0DC(&v375);
        sub_1AAE491F0(&v374);
LABEL_69:
        sub_1AAD6E18C(&v377);
        *&v256[128] = v268[8];
        *&v256[144] = v268[9];
        *&v256[160] = v269;
        *&v256[64] = v268[4];
        *&v256[80] = v268[5];
        *&v256[96] = v268[6];
        *&v256[112] = v268[7];
        *v256 = v268[0];
        *&v256[16] = v268[1];
        *&v256[32] = v268[2];
        *&v256[48] = v268[3];
        if (sub_1AAE492A8(v256) != 1)
        {
          if (v231 <= 2 && (sub_1AACDB99C(v380) > 2 || sub_1AAE63890(v325, v333)))
          {
            if (*(v165 + v101[26]) == 1)
            {
              *(&v182 + 1) = *(&v240 + 1);
              if (*&v236 >= *&v240)
              {
                v185 = *&v240;
              }

              else
              {
                v185 = *&v236;
              }

              v189 = *(v80 + 40);
              v190 = *(v80 + 48);
              if (v190 >= v189)
              {
                v186 = *(v80 + 40);
              }

              else
              {
                v186 = *(v80 + 48);
              }

              v188 = vabdd_f64(v190, v189);
              v187 = 0.0;
            }

            else
            {
              if (*&v256[8] >= *v256)
              {
                v185 = *v256;
              }

              else
              {
                v185 = *&v256[8];
              }

              v193 = *(v80 + 40);
              v194 = *(v80 + 48);
              if (v194 >= v193)
              {
                v186 = *(v80 + 40);
              }

              else
              {
                v186 = *(v80 + 48);
              }

              v187 = vabdd_f64(*&v256[8], *v256);
              v188 = vabdd_f64(v194, v193);
            }
          }

          else if (*(v165 + v101[26]) == 1)
          {
            v183 = *(v80 + 24);
            v184 = *(v80 + 32);
            if (v184 >= v183)
            {
              v185 = *(v80 + 24);
            }

            else
            {
              v185 = *(v80 + 32);
            }

            if (v241.f64[1] >= v241.f64[0])
            {
              v186 = v241.f64[0];
            }

            else
            {
              v186 = v241.f64[1];
            }

            v187 = vabdd_f64(v184, v183);
            v188 = 0.0;
          }

          else
          {
            v191 = *(v80 + 24);
            v192 = *(v80 + 32);
            if (v192 >= v191)
            {
              v185 = *(v80 + 24);
            }

            else
            {
              v185 = *(v80 + 32);
            }

            if (*&v256[8] >= *v256)
            {
              v186 = *v256;
            }

            else
            {
              v186 = *&v256[8];
            }

            v187 = vabdd_f64(v192, v191);
            v188 = vabdd_f64(*&v256[8], *v256);
          }

          *&v240 = *(*(v80 + 16) + 24);
          v195 = v101[24];
          v196 = (v37 + v101[25]);
          v238 = v196[1];
          v197 = (v37 + v101[23]);
          v198 = *v197;
          v199 = v197[1];
          v201 = v197[2];
          v200 = v197[3];
          v202 = (v37 + v195);
          v233 = v37;
          v204 = *(v37 + v195);
          v203 = v202[1];
          v205 = v202[2];
          v206 = v202[3];
          *&v182 = *v196;
          v239 = v182;

          sub_1AADA61DC(v198, v199, v201, v200);
          sub_1AADA61DC(v204, v203, v205, v206);
          v207 = v234;

          sub_1AAF72B20(v230, &v341, v257);
          sub_1AADC7F60(v368);
          sub_1AAD6E0DC(&v375);
          sub_1AAE491F0(&v374);
          sub_1AAD6E18C(&v377);

          v264[1] = *&v256[112];
          v265 = *&v256[128];
          v266 = *&v256[144];
          v267 = *&v256[160];
          v261 = *&v256[48];
          v262 = *&v256[64];
          v263 = *&v256[80];
          v264[0] = *&v256[96];
          v259 = *&v256[16];
          v260 = *&v256[32];
          nullsub_1();
          sub_1AAE2D7EC(v242);
          v208 = swift_allocObject();
          *(v208 + 16) = v240;
          *(v208 + 24) = v185;
          *(v208 + 32) = v186;
          *(v208 + 40) = v187;
          *(v208 + 48) = v188;
          *&v209 = v239;
          *(&v209 + 1) = v238;
          *&v210 = v198;
          *(&v210 + 1) = v199;
          *(v208 + 72) = v210;
          *&v210 = v201;
          *(&v210 + 1) = v200;
          *&v211 = v204;
          v37 = v233;
          *(&v211 + 1) = v203;
          *(v208 + 56) = v209;
          *(v208 + 104) = v211;
          *(v208 + 88) = v210;
          *(v208 + 120) = v205;
          *(v208 + 128) = v206;
          *(v208 + 136) = v207;
          v212 = v257[7];
          *(v208 + 240) = v257[6];
          *(v208 + 256) = v212;
          *(v208 + 272) = v257[8];
          v213 = v258;
          v214 = v257[3];
          *(v208 + 176) = v257[2];
          *(v208 + 192) = v214;
          v215 = v257[5];
          *(v208 + 208) = v257[4];
          *(v208 + 224) = v215;
          v216 = v257[1];
          *(v208 + 144) = v257[0];
          *(v208 + 160) = v216;
          v217 = v235;
          *(v208 + 288) = v213;
          *(v208 + 296) = v217;
          v218 = v265;
          *(v208 + 400) = v264[1];
          *(v208 + 416) = v218;
          *(v208 + 432) = v266;
          *(v208 + 448) = v267;
          v219 = v262;
          *(v208 + 336) = v261;
          *(v208 + 352) = v219;
          v220 = v264[0];
          *(v208 + 368) = v263;
          *(v208 + 384) = v220;
          v221 = v260;
          *(v208 + 304) = v259;
          *(v208 + 320) = v221;
          v222 = v245;
          *(v208 + 552) = v244[1];
          *(v208 + 568) = v222;
          *(v208 + 584) = v246;
          *(v208 + 600) = v247;
          v223 = v243[1];
          *(v208 + 488) = v243[0];
          *(v208 + 504) = v223;
          v224 = v244[0];
          *(v208 + 520) = v243[2];
          *(v208 + 536) = v224;
          v225 = v242[1];
          *(v208 + 456) = v242[0];
          *(v208 + 472) = v225;
          *(v208 + 608) = 257;
          *(v208 + 610) = v248;
          *(v208 + 614) = v249;
          *(v208 + 616) = 0;
          v163 = v208 | 0xC000000000000000;
          goto LABEL_106;
        }

        sub_1AADC7F60(&v341);

        sub_1AADC7F60(v368);
        sub_1AAD6E0DC(&v375);
        sub_1AAE491F0(&v374);
        sub_1AAD6E18C(&v377);
        goto LABEL_71;
      }

      goto LABEL_68;
    }

    swift_beginAccess();
    memcpy(v256, (v80 + 80), sizeof(v256));
    v101 = v238;
    if (*&v256[24])
    {
      v112 = *(v80 + 128);
      v261 = *(v80 + 112);
      v262 = v112;
      v263 = *(v80 + 144);
      LOBYTE(v264[0]) = *(v80 + 160);
      v113 = *(v80 + 96);
      v259 = *(v80 + 80);
      v260 = v113;

      sub_1AADFA6FC(&v375, v242);
      sub_1AAE49180(&v374, v242, &qword_1ED9B1E40, MEMORY[0x1E69810C8], MEMORY[0x1E69E62F8]);
      sub_1AAE14D50(&v377, v242);
      sub_1AAD5835C(&v341, v242);
      v252 = v261;
      v253 = v262;
      v254 = v263;
      v255 = v264[0];
      v250 = v259;
      v251 = v260;
LABEL_27:
      v114 = *(&v254 + 1);
      v116 = *(&v252 + 1);
      v115 = v252;
      v117 = v253;
      v118 = v255;
      sub_1AAE49180(v256, v242, &qword_1ED9B22B8, &type metadata for SubPositionContext.Value, MEMORY[0x1E69E6720]);
      sub_1AAE0BFDC(&v250, v242);
      sub_1AAE0A738(v115, v116, v117, v114, v118, 3, &v322);
      v228 = v323;
      v229 = v322;
      v119 = v324;
      sub_1AAE0C014(&v250);
      sub_1AAD04750(v250, *(&v250 + 1), v251);

      sub_1AAD0E818(v115, v116, v117);
      v121 = v228;
      v120 = v229;
      v101 = v238;
      goto LABEL_65;
    }

    v152 = v256[257];

    if (v152 == 2)
    {
      sub_1AADFA6FC(&v375, v242);
      sub_1AAE49180(&v374, v242, &qword_1ED9B1E40, MEMORY[0x1E69810C8], MEMORY[0x1E69E62F8]);
      sub_1AAE14D50(&v377, v242);
      sub_1AAD5835C(&v341, v242);
    }

    else
    {
      sub_1AADFA6FC(&v375, v242);
      sub_1AAE49180(&v374, v242, &qword_1ED9B1E40, MEMORY[0x1E69810C8], MEMORY[0x1E69E62F8]);
      sub_1AAE14D50(&v377, v242);
      sub_1AAD5835C(&v341, v242);
      sub_1AACBB21C(v256, v242);
      v164 = sub_1AAF8E7A4();
      if (v164 == sub_1AAF8E7A4())
      {
        sub_1AAE49180(&v256[176], v242, &qword_1ED9B22B8, &type metadata for SubPositionContext.Value, MEMORY[0x1E69E6720]);
        sub_1AACBB254(v256);
        if (*&v256[200])
        {
          v250 = *&v256[176];
          v251 = *&v256[192];
          v252 = *&v256[208];
          v253 = *&v256[224];
          v254 = *&v256[240];
          v255 = v256[256];
          goto LABEL_27;
        }
      }

      else
      {
        sub_1AACBB254(v256);
      }
    }

    v120 = 0uLL;
    v119 = 2;
    v121 = 0uLL;
LABEL_65:
    v165 = v232;
    v175 = (v232 + v101[21]);
    v176 = *(v175 + 2);
    v362 = *v175;
    v363 = v176;
    v364 = v120;
    v365 = v121;
    v366 = v119;
    v367 = *(v80 + 352);
    v178 = *(v80 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 16);
    v177 = *(v80 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 32);
    v242[0] = *(v80 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale);
    v242[1] = v178;
    v243[0] = v177;
    v180 = *(v80 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 64);
    v179 = *(v80 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 80);
    v181 = *(v80 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 48);
    *(v244 + 9) = *(v80 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 89);
    v243[2] = v180;
    v244[0] = v179;
    v243[1] = v181;
    if (BYTE8(v244[1]) != 255)
    {
      v263 = v243[2];
      v264[0] = v244[0];
      *(v264 + 9) = *(v244 + 9);
      v259 = v242[0];
      v260 = v242[1];
      v262 = v243[1];
      v261 = v243[0];
      v357 = v242[1];
      v356 = v242[0];
      *(v361 + 9) = *(v244 + 9);
      v358 = v243[0];
      v359 = v243[1];
      v361[0] = v244[0];
      v360 = v243[2];
      sub_1AAE49180(&v259, &v248, &qword_1ED9B3E38, MEMORY[0x1E69E7DE0], type metadata accessor for AnyConcreteScale);
      v173 = v80;
      v174 = 0;
      goto LABEL_67;
    }

LABEL_68:

    sub_1AAD6E0DC(&v375);
    sub_1AAE491F0(&v374);
    sub_1AAE49270(v268);
    goto LABEL_69;
  }

  __break(1u);
  return result;
}

void sub_1AAE48C88(uint64_t a1)
{
  v2 = v1;
  v5 = *v2;
  v4 = *(v2 + 8);
  v6 = *(v2 + 16);
  if ((v6 & 0x8000000000000000) == 0)
  {
    MEMORY[0x1AC5992C0](0);
    v7 = a1;
    v8 = v5;
    v9 = v4;
    v10 = v6;
LABEL_3:

    sub_1AAE86E08(v7, v8, v9, v10);
    return;
  }

  v12 = *(v2 + 24);
  v11 = *(v2 + 32);
  v13 = *(v2 + 40);
  MEMORY[0x1AC5992C0](1);
  if (v6 < 0xFCu)
  {
    sub_1AAF906B4();
    if ((v6 & 0x80) != 0)
    {
      MEMORY[0x1AC5992C0](1);
      sub_1AACDC020(a1, v5, v4, v6 & 1);
      if (v13 <= 0xFB)
      {
        goto LABEL_13;
      }
    }

    else
    {
      MEMORY[0x1AC5992C0](0);
      sub_1AAE86E08(a1, v5, v4, v6);
      if (v13 <= 0xFB)
      {
        goto LABEL_13;
      }
    }

LABEL_11:
    sub_1AAF906B4();
    return;
  }

  sub_1AAF906B4();
  if (v13 > 0xFB)
  {
    goto LABEL_11;
  }

LABEL_13:
  sub_1AAF906B4();
  if ((v13 & 0x80) == 0)
  {
    MEMORY[0x1AC5992C0](0);
    v7 = a1;
    v8 = v12;
    v9 = v11;
    v10 = v13;
    goto LABEL_3;
  }

  MEMORY[0x1AC5992C0](1);

  sub_1AACDC020(a1, v12, v11, v13 & 1);
}

uint64_t sub_1AAE48E04()
{
  sub_1AAF90694();
  sub_1AAE48C88(v1);
  return sub_1AAF906F4();
}

uint64_t sub_1AAE48E48(uint64_t a1)
{
  sub_1AAF90694();
  sub_1AAE48C88(v2);
  return sub_1AAF906F4();
}

BOOL sub_1AAE48E84(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 9) = *(a1 + 25);
  v3 = a2[1];
  v7 = *a2;
  v8[0] = v3;
  *(v8 + 9) = *(a2 + 25);
  return sub_1AAE48ED0(&v5, &v7);
}

BOOL sub_1AAE48ED0(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if ((v6 & 0x8000000000000000) == 0)
  {
    if ((*(a2 + 16) & 0x8000000000000000) == 0)
    {
      v7 = *a2;
      v8 = *(a2 + 16);
      if (!v6)
      {
        v9 = v8 == 0;
        return v9 && v4 == v7;
      }

      if (v6 == 1)
      {
        v9 = v8 == 1;
        return v9 && v4 == v7;
      }

      if (v8 == 2)
      {
        if (*&v4 == *&v7 && *&v5 == *(a2 + 8))
        {
          return 1;
        }

        return (sub_1AAF904F4() & 1) != 0;
      }
    }

    return 0;
  }

  v10 = *(a2 + 16);
  if ((v10 & 0x8000000000000000) == 0)
  {
    return 0;
  }

  v12 = *(a1 + 24);
  v11 = *(a1 + 32);
  v13 = *(a1 + 40);
  v14 = *(a1 + 16);
  v16 = *(a2 + 24);
  v15 = *(a2 + 32);
  v17 = *(a2 + 16);
  v18 = *(a2 + 40);
  if (v6 > 0xFBu)
  {
    if (v17 <= 0xFB)
    {
      return 0;
    }

LABEL_9:
    if (v13 <= 0xFB)
    {
      if (v18 > 0xFB)
      {
        return 0;
      }

      if ((v13 & 0x80) == 0)
      {
        if ((v18 & 0x80) != 0)
        {
          return 0;
        }

        if (v13)
        {
          if (v13 != 1)
          {
            if (v18 != 2)
            {
              return 0;
            }

            if (*&v12 == *&v16 && *&v11 == *&v15)
            {
              return 1;
            }

            return (sub_1AAF904F4() & 1) != 0;
          }

          if (v18 != 1)
          {
            return 0;
          }
        }

        else if (v18)
        {
          return 0;
        }

        return v12 == v16;
      }

      if ((v18 & 0x80) != 0)
      {
        if (v13)
        {
          if ((v18 & 1) == 0)
          {
            return 0;
          }
        }

        else if (v18)
        {
          return 0;
        }

        if (v12 == v16 && v11 == v15)
        {
          return 1;
        }
      }
    }

    else if (v18 > 0xFB)
    {
      return 1;
    }

    return 0;
  }

  if (v17 > 0xFB)
  {
    return 0;
  }

  v21 = *a2;
  if ((v6 & 0x80) != 0)
  {
    if ((v10 & 0x80) == 0)
    {
      return 0;
    }

    if (v6)
    {
      if ((v10 & 1) == 0)
      {
        return 0;
      }
    }

    else if (v10)
    {
      return 0;
    }

    if (v4 != v21)
    {
      return 0;
    }

    v22 = v5;
    v23 = *(a2 + 8);
  }

  else
  {
    if ((v10 & 0x80) != 0)
    {
      return 0;
    }

    if (v14)
    {
      if (v14 != 1)
      {
        if (v17 != 2 || (*&v4 != *&v21 || *&v5 != *(a2 + 8)) && (sub_1AAF904F4() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_9;
      }

      if (v17 != 1)
      {
        return 0;
      }
    }

    else if (*(a2 + 16))
    {
      return 0;
    }

    v22 = v4;
    v23 = *a2;
  }

  result = 0;
  if (v22 == v23)
  {
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_1AAE4911C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChartContentRenderContext.Environment(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AAE49180(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(void, uint64_t))
{
  sub_1AAE49320(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_1AAE491F0(uint64_t a1)
{
  sub_1AAE49320(0, &qword_1ED9B1E40, MEMORY[0x1E69810C8], MEMORY[0x1E69E62F8]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_1AAE49270(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0xFFFFFFFF0;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  return result;
}

uint64_t sub_1AAE492A8(uint64_t a1)
{
  if ((*(a1 + 16) >> 4) > 0x80000000)
  {
    return -(*(a1 + 16) >> 4);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AAE492C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1AAE49320(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1AAE49370(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1AACCAE10(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_1AAE49384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t), void (*a8)(uint64_t, uint64_t))
{
  if (a3 < 0)
  {
    a8(a1, a2);

    return (a8)(a4, a5, a6);
  }

  else
  {

    return a7(a1, a2);
  }
}

uint64_t sub_1AAE49408(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SgArea(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AAE49474(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 305))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 48) >> 3) & 0xFFFFFFE0 | (*(a1 + 48) >> 2) & 0x1F;
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

double sub_1AAE494C8(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 296) = 0;
    result = 0.0;
    *(a1 + 248) = 0u;
    *(a1 + 232) = 0u;
    *(a1 + 216) = 0u;
    *(a1 + 200) = 0u;
    *(a1 + 184) = 0u;
    *(a1 + 168) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 304) = 0;
    *(a1 + 280) = 0u;
    *(a1 + 264) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 305) = 1;
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
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
      *(a1 + 48) = (8 * -a2) & 0x7FFFFFF00 | (4 * (-a2 & 0x1FLL));
      *(a1 + 56) = 0u;
      *(a1 + 72) = 0u;
      *(a1 + 88) = 0u;
      *(a1 + 104) = 0u;
      *(a1 + 120) = 0u;
      *(a1 + 136) = 0;
      return result;
    }

    *(a1 + 305) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AAE495A8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 17);
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

uint64_t sub_1AAE495F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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
      *result = 0;
      *(result + 8) = 0;
      *(result + 24) = 0;
      *(result + 32) = 0;
      *(result + 16) = -a2 << 8;
      *(result + 40) = 0;
      return result;
    }

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1AAE49684()
{
  result = qword_1ED9B03C8;
  if (!qword_1ED9B03C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9B03C8);
  }

  return result;
}

uint64_t sub_1AAE49700@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, unint64_t *a4@<X3>, uint64_t a5@<X4>, void (*a6)(uint64_t *, void *)@<X5>, uint64_t *a7@<X8>)
{
  v14 = a3 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_environment;
  swift_beginAccess();
  v15 = type metadata accessor for ChartContentRenderContext.Environment(0);
  v16 = *(v15 + 64);
  v17 = *(v14 + v16);
  *(v14 + v16) = 0;
  sub_1AAE527B8(0, a4, a5);
  sub_1AAF8EF94();
  v36[16] = a2 & 1;
  v37 = a3;
  v38 = a1;
  v18 = MEMORY[0x1E69E7CC0];
  sub_1AAF528D0(MEMORY[0x1E69E7CC0], a6, v36, v39, v40);
  v20 = v19;
  *(v14 + *(v15 + 64)) = v17;
  v21 = *(*(a3 + 16) + 24);
  v22 = *(v19 + 16);
  if (v22)
  {
    v23 = a7;
    v39 = v18;
    sub_1AAD0F6F0(0, v22, 0);
    v24 = v39;
    v25 = *(v39 + 16);
    v26 = 32;
    do
    {
      v27 = *(v20 + v26);
      v39 = v24;
      v28 = *(v24 + 24);

      if (v25 >= v28 >> 1)
      {
        sub_1AAD0F6F0((v28 > 1), v25 + 1, 1);
        v24 = v39;
      }

      *(v24 + 16) = v25 + 1;
      *(v24 + 8 * v25 + 32) = v27;
      v26 += 8;
      ++v25;
      --v22;
    }

    while (v22);

    a7 = v23;
    v18 = MEMORY[0x1E69E7CC0];
  }

  else
  {

    v24 = MEMORY[0x1E69E7CC0];
  }

  v29 = type metadata accessor for SgGroup(0);
  v30 = swift_allocBox();
  v32 = v31;
  v33 = v29[6];
  v34 = type metadata accessor for SgClipRect(0);
  result = (*(*(v34 - 8) + 56))(&v32[v33], 1, 1, v34);
  *v32 = v21;
  *(v32 + 1) = v24;
  *&v32[v29[7]] = 0x3FF0000000000000;
  *&v32[v29[8]] = v17;
  *&v32[v29[9]] = v18;
  v32[v29[10]] = 0;
  *a7 = v30;
  return result;
}

void sub_1AAE49940(char **a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, unint64_t *a7, uint64_t a8, void (*a9)(uint64_t *__return_ptr, void *, void *, __n128), void (*a10)(_BYTE *))
{
  v31 = a3;
  v12 = *(a5 + 16);
  sub_1AAE527B8(0, a7, a8);
  sub_1AAF8EFA4();
  v13 = *(v12 + 16);
  v14 = *(v13 + 32);

  v16 = sub_1AACD5520(__src[39], v14, v15);
  v17 = *(v13 + 32);
  *(v13 + 32) = v16;
  v24 = *(v12 + 24);
  v25 = v17;
  *(v12 + 24) = v16;
  v18 = sub_1AAF8EFB4();
  sub_1AAF8EF94();
  v27[0] = a3;
  v18(__src, v27);

  LOBYTE(v27[0]) = a4 & 1;
  v27[1] = a5;
  (a9)(&v29, __src, v27);
  memcpy(__dst, __src, 0x131uLL);
  a10(__dst);
  *(v12 + 24) = v24;
  *(v13 + 32) = v25;

  v19 = v29;
  if (v29 != 0xE000000000000000)
  {
    v20 = *a1;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v20 = sub_1AAD04BDC(0, *(v20 + 2) + 1, 1, v20);
    }

    v22 = *(v20 + 2);
    v21 = *(v20 + 3);
    if (v22 >= v21 >> 1)
    {
      v20 = sub_1AAD04BDC((v21 > 1), v22 + 1, 1, v20);
    }

    *(v20 + 2) = v22 + 1;
    *&v20[8 * v22 + 32] = v19;
    *a1 = v20;
  }
}

void *sub_1AAE49B40@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v6 = *(a1 + 48);
  if (v6 == 1)
  {
    v7 = a1[5];
    v8 = 0x80;
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v10 = *a1;
  v9 = a1[1];
  v11 = a1[3];
  v12 = a1[4];
  v39 = *(a1 + 16);
  v14 = *a2;
  v13 = a2[1];
  v16 = a2[3];
  v15 = a2[4];
  if (a2[6])
  {
    v17 = a2[5];
    v38 = *(a2 + 16);
    *&v20 = v10;
    *(&v20 + 1) = v9;
    LOBYTE(v21) = v39;
    *(&v21 + 1) = v11;
    *&v22 = v12;
    *(&v22 + 1) = v7;
    if (v6)
    {
      LOBYTE(v23) = v8;
      v18 = MEMORY[0x1E69E63B0];
      *(&v23 + 1) = MEMORY[0x1E69E63B0];
      *&v24 = &protocol witness table for Double;
      sub_1AAE4637C(&v20);
      __src[6] = v26;
      __src[7] = v27;
      __src[8] = v28;
      __src[2] = v22;
      __src[3] = v23;
      __src[4] = v24;
      __src[5] = v25;
      __src[0] = v20;
      __src[1] = v21;
      *&v29 = v14;
      *(&v29 + 1) = v13;
      LOBYTE(v30) = v38;
      *(&v30 + 1) = v16;
      *&v31 = v15;
      *(&v31 + 1) = v17;
      LOBYTE(v32) = 0x80;
      *(&v32 + 1) = v18;
      *&v33 = &protocol witness table for Double;
      sub_1AAE4637C(&v29);
      __src[15] = v35;
      __src[16] = v36;
      __src[17] = v37;
      __src[11] = v31;
      __src[12] = v32;
      __src[13] = v33;
      __src[14] = v34;
      __src[9] = v29;
      __src[10] = v30;
    }

    else
    {
      LOBYTE(v23) = 0;
      *(&v23 + 1) = MEMORY[0x1E69E63B0];
      *&v24 = &protocol witness table for Double;
      BYTE8(v24) = a3;
      *(&v24 + 9) = 256;
      *&v25 = v15;
      *(&v25 + 1) = v17;
      LOBYTE(v26) = 0x80;
      *(&v26 + 1) = 0;
      *&v27 = 0;
      BYTE8(v27) = -4;
      sub_1AACD7C5C(&v20);
      __src[6] = v26;
      __src[7] = v27;
      __src[8] = v28;
      __src[2] = v22;
      __src[3] = v23;
      __src[4] = v24;
      __src[5] = v25;
      __src[0] = v20;
      __src[1] = v21;
      *&v29 = v14;
      *(&v29 + 1) = v13;
      LOBYTE(v30) = v38;
      *(&v30 + 1) = v16;
      *&v31 = v15;
      *(&v31 + 1) = v17;
      LOBYTE(v32) = 0x80;
      *(&v32 + 1) = MEMORY[0x1E69E63B0];
      *&v33 = &protocol witness table for Double;
      sub_1AAE4637C(&v29);
      __src[15] = v35;
      __src[16] = v36;
      __src[17] = v37;
      __src[11] = v31;
      __src[12] = v32;
      __src[13] = v33;
      __src[14] = v34;
      __src[9] = v29;
      __src[10] = v30;
      sub_1AACCAE10(v12, v7, 0);
    }
  }

  else
  {
    v38 = *(a2 + 16);
    *&v20 = v10;
    *(&v20 + 1) = v9;
    LOBYTE(v21) = v39;
    *(&v21 + 1) = v11;
    *&v22 = v12;
    *(&v22 + 1) = v7;
    LOBYTE(v23) = v8;
    *(&v23 + 1) = MEMORY[0x1E69E63B0];
    *&v24 = &protocol witness table for Double;
    sub_1AAE4637C(&v20);
    __src[6] = v26;
    __src[7] = v27;
    __src[8] = v28;
    __src[2] = v22;
    __src[3] = v23;
    __src[4] = v24;
    __src[5] = v25;
    __src[0] = v20;
    __src[1] = v21;
    *&v29 = v14;
    *(&v29 + 1) = v13;
    LOBYTE(v30) = v38;
    *(&v30 + 1) = v16;
    v31 = v15;
    LOBYTE(v32) = 0;
    *(&v32 + 1) = MEMORY[0x1E69E63B0];
    *&v33 = &protocol witness table for Double;
    BYTE8(v33) = a3;
    *(&v33 + 9) = 257;
    *&v34 = v12;
    *(&v34 + 1) = v7;
    LOBYTE(v35) = v8;
    *(&v35 + 1) = 0;
    *&v36 = 0;
    BYTE8(v36) = -4;
    sub_1AACD7C5C(&v29);
    __src[15] = v35;
    __src[16] = v36;
    __src[17] = v37;
    __src[11] = v31;
    __src[12] = v32;
    __src[13] = v33;
    __src[14] = v34;
    __src[9] = v29;
    __src[10] = v30;
    sub_1AACD7C50(v12, v7, v8);
  }

  result = memcpy(a4, __src, 0x120uLL);
  *(a4 + 288) = 0;
  *(a4 + 296) = 0;
  *(a4 + 304) = -1;
  return result;
}

uint64_t AreaPlot<A>.body.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AACE0800();
  sub_1AACE0800();
  return (*(v2 + 8))(v4, v1);
}

uint64_t AreaPlot.init<A, B, C>(_:x:y:stacking:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v66 = a4;
  v68 = a3;
  v69 = a2;
  v57 = a1;
  v67 = a9;
  v60 = a6;
  v61 = a10;
  v64 = a7;
  v65 = a11;
  v52 = a8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v59 = type metadata accessor for PlottableProjection(0, AssociatedTypeWitness, a7, a11);
  v17 = *(v59 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v56 = &v49 - v19;
  v55 = type metadata accessor for PlottableProjection(0, AssociatedTypeWitness, a6, a10);
  v20 = *(v55 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v55);
  v23 = &v49 - v22;
  v51 = &v49 - v22;
  v58 = *(a5 - 8);
  v24 = v58;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v49 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = v27;
  v29 = type metadata accessor for VectorizedAreaPlotContent(0, a5, a8, v28);
  v62 = *(v29 - 8);
  v63 = v29;
  v30 = MEMORY[0x1EEE9AC00](v29);
  v54 = &v49 - v31;
  v32 = *(v24 + 16);
  v33 = v27;
  v34 = a5;
  v50 = a5;
  v32(v33, a1, a5, v30);
  v35 = v55;
  (*(v20 + 16))(v23, v69, v55);
  v36 = v56;
  v37 = v59;
  (*(v17 + 16))(v56, v68, v59);
  v38 = (*(v20 + 80) + 64) & ~*(v20 + 80);
  v39 = (v21 + *(v17 + 80) + v38) & ~*(v17 + 80);
  v40 = swift_allocObject();
  v41 = v60;
  *(v40 + 2) = v34;
  *(v40 + 3) = v41;
  v42 = v51;
  v43 = v52;
  *(v40 + 4) = v64;
  *(v40 + 5) = v43;
  v44 = v65;
  *(v40 + 6) = v61;
  *(v40 + 7) = v44;
  (*(v20 + 32))(&v40[v38], v42, v35);
  (*(v17 + 32))(&v40[v39], v36, v37);
  v40[v39 + v18] = v66;
  v45 = v54;
  v46 = v50;
  sub_1AAE4A8F8(v53, sub_1AAE4A78C, v40, v50, &type metadata for AreaMark, v43, &protocol witness table for AreaMark, v54);
  (*(v17 + 8))(v68, v37);
  (*(v20 + 8))(v69, v35);
  (*(v58 + 8))(v57, v46);
  v47 = v63;
  swift_getWitnessTable();
  return (*(v62 + 32))(v67, v45, v47);
}

void *sub_1AAE4A3FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v52 = a4;
  v50 = a2;
  v51 = a3;
  v48 = a1;
  v53 = a9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v45 = a7;
  v46 = a11;
  v49 = type metadata accessor for PlottableProjection(0, AssociatedTypeWitness, a7, a11);
  v47 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v44 = &v40 - v14;
  v16 = type metadata accessor for PlottableValue(0, a7, a11, v15);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v43 = &v40 - v17;
  v18 = a6;
  v41 = a6;
  v42 = type metadata accessor for PlottableProjection(0, AssociatedTypeWitness, a6, a10);
  v19 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v21 = &v40 - v20;
  v22 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v40 - v24;
  v27 = type metadata accessor for PlottableValue(0, v18, a10, v26);
  v28 = MEMORY[0x1EEE9AC00](v27 - 8);
  v30 = &v40 - v29;
  v31 = *(v22 + 16);
  v32 = v48;
  v31(v25, v48, AssociatedTypeWitness, v28);
  (*(v19 + 16))(v21, v50, v42);
  v33 = v41;
  sub_1AAF30D00(v25, v21, v41, AssociatedTypeWitness, a10, v30);
  (v31)(v25, v32, AssociatedTypeWitness);
  v34 = v44;
  (*(v47 + 16))(v44, v51, v49);
  v35 = v43;
  v36 = v25;
  v37 = v45;
  v38 = v46;
  sub_1AAF30D00(v36, v34, v45, AssociatedTypeWitness, v46, v43);
  AreaMark.init<A, B>(x:y:stacking:)(v30, v35, v52, v33, v37, a10, v38, v54);
  return memcpy(v53, v54, 0x131uLL);
}

void *sub_1AAE4A78C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2[3];
  v4 = v2[4];
  v5 = v2[6];
  v6 = v2[7];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(type metadata accessor for PlottableProjection(0, AssociatedTypeWitness, v3, v5) - 8);
  v9 = (*(v8 + 80) + 64) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(type metadata accessor for PlottableProjection(0, AssociatedTypeWitness, v4, v6) - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  return sub_1AAE4A3FC(a1, v2 + v9, v2 + v12, *(v2 + v12 + *(v11 + 64)), v3, v4, a2, v5, v6);
}

uint64_t sub_1AAE4A8F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v16 = *(a4 - 8);
  v17 = MEMORY[0x1EEE9AC00](a1);
  v19 = &v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v19, a1, v20, v17);
  v21 = sub_1AAF311A4(v19, a2, a3, a4, a5, a6, a7, a8);
  return (*(v16 + 8))(a1, a4, v21);
}

uint64_t AreaPlot.init<A, B, C>(_:xStart:xEnd:y:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v60 = a6;
  v72 = a1;
  v73 = a4;
  v70 = a2;
  v71 = a3;
  v67 = a9;
  v68 = a8;
  v62 = a10;
  v65 = a7;
  v66 = a11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v59 = type metadata accessor for PlottableProjection(0, AssociatedTypeWitness, a7, a11);
  v69 = *(v59 - 8);
  v61 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v57 = &v51 - v16;
  v17 = type metadata accessor for PlottableProjection(0, AssociatedTypeWitness, a6, a10);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v54 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v51 - v21;
  v53 = &v51 - v21;
  v58 = *(a5 - 8);
  v23 = v58;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v51 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = v26;
  v28 = type metadata accessor for VectorizedAreaPlotContent(0, a5, a8, v27);
  v63 = *(v28 - 8);
  v64 = v28;
  v29 = MEMORY[0x1EEE9AC00](v28);
  v56 = &v51 - v30;
  v31 = *(v23 + 16);
  v52 = a5;
  v31(v26, v72, a5, v29);
  v32 = *(v18 + 16);
  v32(v22, v70, v17);
  v32(&v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v71, v17);
  v33 = v69;
  v34 = v57;
  v35 = v59;
  (*(v69 + 16))(v57, v73, v59);
  v36 = *(v18 + 80);
  v37 = (v36 + 64) & ~v36;
  v38 = (v19 + v36 + v37) & ~v36;
  v39 = (v19 + *(v33 + 80) + v38) & ~*(v33 + 80);
  v40 = swift_allocObject();
  v41 = v60;
  *(v40 + 2) = a5;
  *(v40 + 3) = v41;
  v42 = v68;
  *(v40 + 4) = v65;
  *(v40 + 5) = v42;
  v43 = v66;
  *(v40 + 6) = v62;
  *(v40 + 7) = v43;
  v44 = *(v18 + 32);
  v44(&v40[v37], v53, v17);
  v44(&v40[v38], v54, v17);
  v45 = v69;
  (*(v69 + 32))(&v40[v39], v34, v35);
  v46 = v56;
  v47 = v52;
  sub_1AAE4A8F8(v55, sub_1AAE4B344, v40, v52, &type metadata for AreaMark, v68, &protocol witness table for AreaMark, v56);
  (*(v45 + 8))(v73, v35);
  v48 = *(v18 + 8);
  v48(v71, v17);
  v48(v70, v17);
  (*(v58 + 8))(v72, v47);
  v49 = v64;
  swift_getWitnessTable();
  return (*(v63 + 32))(v67, v46, v49);
}

void *sub_1AAE4AF18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v60 = a3;
  v61 = a4;
  v55 = a2;
  v62 = a9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v56 = a7;
  v57 = a11;
  v15 = type metadata accessor for PlottableProjection(0, AssociatedTypeWitness, a7, a11);
  v58 = *(v15 - 8);
  v59 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v54 = &v45 - v16;
  v18 = type metadata accessor for PlottableValue(0, a7, a11, v17);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v53 = &v45 - v19;
  v20 = a6;
  v52 = type metadata accessor for PlottableProjection(0, AssociatedTypeWitness, a6, a10);
  v21 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v51 = &v45 - v22;
  v23 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v45 - v25;
  v28 = type metadata accessor for PlottableValue(0, a6, a10, v27);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v49 = &v45 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v30);
  v33 = &v45 - v32;
  v50 = &v45 - v32;
  v47 = *(v23 + 16);
  v48 = v23 + 16;
  v45 = a1;
  v47(v26, a1, AssociatedTypeWitness, v31);
  v46 = *(v21 + 16);
  v34 = v51;
  v35 = v52;
  v46(v51, v55, v52);
  sub_1AAF30D00(v26, v34, v20, AssociatedTypeWitness, a10, v33);
  v36 = a1;
  v37 = v47;
  (v47)(v26, v36, AssociatedTypeWitness);
  v46(v34, v60, v35);
  v38 = v49;
  sub_1AAF30D00(v26, v34, v20, AssociatedTypeWitness, a10, v49);
  v37(v26, v45, AssociatedTypeWitness);
  v39 = v54;
  (*(v58 + 16))(v54, v61, v59);
  v40 = v53;
  v41 = v39;
  v42 = v56;
  v43 = v57;
  sub_1AAF30D00(v26, v41, v56, AssociatedTypeWitness, v57, v53);
  AreaMark.init<A, B>(xStart:xEnd:y:)(v50, v38, v40, v20, v42, a10, v43, v63);
  return memcpy(v62, v63, 0x131uLL);
}

void *sub_1AAE4B344@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2[3];
  v4 = v2[4];
  v5 = v2[6];
  v6 = v2[7];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(type metadata accessor for PlottableProjection(0, AssociatedTypeWitness, v3, v5) - 8);
  v9 = *(v8 + 80);
  v10 = (v9 + 64) & ~v9;
  v11 = *(v8 + 64);
  v12 = (v11 + v9 + v10) & ~v9;
  v13 = *(type metadata accessor for PlottableProjection(0, AssociatedTypeWitness, v4, v6) - 8);
  return sub_1AAE4AF18(a1, v2 + v10, v2 + v12, v2 + ((v12 + v11 + *(v13 + 80)) & ~*(v13 + 80)), v3, v4, a2, v5, v6);
}

uint64_t AreaPlot.init<A, B, C>(_:x:yStart:yEnd:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v73 = a8;
  v74 = a4;
  v75 = a2;
  v76 = a3;
  v62 = a1;
  v70 = a9;
  v64 = a7;
  v65 = a11;
  v68 = a6;
  v69 = a10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v61 = type metadata accessor for PlottableProjection(0, AssociatedTypeWitness, a6, a10);
  v59 = *(v61 - 8);
  v16 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v61);
  v72 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v71 = &v54 - v18;
  v19 = type metadata accessor for PlottableProjection(0, AssociatedTypeWitness, a7, a11);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v54 - v22;
  v57 = &v54 - v22;
  v63 = *(a5 - 8);
  v24 = v63;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v54 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = v27;
  v54 = a5;
  v29 = type metadata accessor for VectorizedAreaPlotContent(0, a5, v73, v28);
  v66 = *(v29 - 8);
  v67 = v29;
  v30 = MEMORY[0x1EEE9AC00](v29);
  v60 = &v54 - v31;
  (*(v24 + 16))(v27, a1, a5, v30);
  v32 = v20;
  v33 = *(v20 + 16);
  v34 = v19;
  v55 = v19;
  v33(v23, v75, v19);
  v35 = v59;
  v36 = *(v59 + 16);
  v37 = v61;
  v36(v71, v76, v61);
  v36(v72, v74, v37);
  v38 = *(v20 + 80);
  v56 = v20;
  v39 = (v38 + 64) & ~v38;
  v40 = *(v35 + 80);
  v41 = (v21 + v40 + v39) & ~v40;
  v42 = (v16 + v40 + v41) & ~v40;
  v43 = swift_allocObject();
  v44 = v54;
  v45 = v68;
  *(v43 + 2) = v54;
  *(v43 + 3) = v45;
  v46 = v73;
  *(v43 + 4) = v64;
  *(v43 + 5) = v46;
  v47 = v65;
  *(v43 + 6) = v69;
  *(v43 + 7) = v47;
  (*(v32 + 32))(&v43[v39], v57, v34);
  v48 = v35;
  v49 = *(v35 + 32);
  v49(&v43[v41], v71, v37);
  v49(&v43[v42], v72, v37);
  v50 = v60;
  sub_1AAE4A8F8(v58, sub_1AAE4BDA4, v43, v44, &type metadata for AreaMark, v46, &protocol witness table for AreaMark, v60);
  v51 = *(v48 + 8);
  v51(v74, v37);
  v51(v76, v37);
  (*(v56 + 8))(v75, v55);
  (*(v63 + 8))(v62, v44);
  v52 = v67;
  swift_getWitnessTable();
  return (*(v66 + 32))(v70, v50, v52);
}

void *sub_1AAE4B9A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v52 = a3;
  v53 = a4;
  v51 = a2;
  v54 = a9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v47 = a6;
  v48 = a10;
  v50 = type metadata accessor for PlottableProjection(0, AssociatedTypeWitness, a6, a10);
  v57 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v46 = &v42 - v15;
  v17 = type metadata accessor for PlottableValue(0, a6, a10, v16);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v49 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v55 = a7;
  v56 = &v42 - v20;
  v21 = a7;
  v45 = type metadata accessor for PlottableProjection(0, AssociatedTypeWitness, a7, a11);
  v22 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v24 = &v42 - v23;
  v25 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v42 - v27;
  v44 = a11;
  v30 = type metadata accessor for PlottableValue(0, v21, a11, v29);
  v31 = MEMORY[0x1EEE9AC00](v30 - 8);
  v33 = &v42 - v32;
  v42 = a1;
  v43 = &v42 - v32;
  v34 = *(v25 + 16);
  v34(v28, a1, AssociatedTypeWitness, v31);
  (*(v22 + 16))(v24, v51, v45);
  sub_1AAF30D00(v28, v24, v55, AssociatedTypeWitness, a11, v33);
  (v34)(v28, a1, AssociatedTypeWitness);
  v35 = *(v57 + 16);
  v57 += 16;
  v36 = v46;
  v37 = v50;
  v35(v46, v52, v50);
  v39 = v47;
  v38 = v48;
  sub_1AAF30D00(v28, v36, v47, AssociatedTypeWitness, v48, v56);
  (v34)(v28, v42, AssociatedTypeWitness);
  v35(v36, v53, v37);
  v40 = v49;
  sub_1AAF30D00(v28, v36, v39, AssociatedTypeWitness, v38, v49);
  AreaMark.init<A, B>(x:yStart:yEnd:)(v43, v56, v40, v55, v39, v44, v38, v58);
  return memcpy(v54, v58, 0x131uLL);
}

void *sub_1AAE4BDA4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2[3];
  v4 = v2[4];
  v5 = v2[6];
  v6 = v2[7];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(type metadata accessor for PlottableProjection(0, AssociatedTypeWitness, v4, v6) - 8);
  v9 = (*(v8 + 80) + 64) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(type metadata accessor for PlottableProjection(0, AssociatedTypeWitness, v3, v5) - 8);
  v12 = *(v11 + 80);
  return sub_1AAE4B9A0(a1, v2 + v9, v2 + ((v9 + v10 + v12) & ~v12), v2 + ((*(v11 + 64) + v12 + ((v9 + v10 + v12) & ~v12)) & ~v12), v3, v4, a2, v5, v6);
}

uint64_t AreaPlot.init<A, B, C, D>(_:x:y:series:stacking:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v68 = a7;
  v79 = a5;
  v86 = a3;
  v87 = a4;
  v84 = a1;
  v85 = a2;
  v80 = a9;
  v70 = a12;
  v73 = a8;
  v74 = a13;
  v77 = a10;
  v78 = a14;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v83 = type metadata accessor for PlottableProjection(0, AssociatedTypeWitness, a10, a14);
  v71 = *(v83 - 8);
  v72 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v83);
  v82 = &v59 - v18;
  v67 = type metadata accessor for PlottableProjection(0, AssociatedTypeWitness, a8, a13);
  v81 = *(v67 - 8);
  v19 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v67);
  v21 = &v59 - v20;
  v64 = &v59 - v20;
  v22 = type metadata accessor for PlottableProjection(0, AssociatedTypeWitness, a7, a12);
  v62 = v22;
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v59 - v25;
  v63 = &v59 - v25;
  v69 = *(a6 - 8);
  v27 = v69;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v59 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = v30;
  v32 = type metadata accessor for VectorizedAreaPlotContent(0, a6, a11, v31);
  v75 = *(v32 - 8);
  v76 = v32;
  v33 = MEMORY[0x1EEE9AC00](v32);
  v66 = &v59 - v34;
  v35 = *(v27 + 16);
  v60 = a6;
  v35(v30, v84, a6, v33);
  v36 = v23;
  (*(v23 + 16))(v26, v85, v22);
  v37 = v81;
  v38 = v67;
  (*(v81 + 16))(v21, v86, v67);
  v39 = v71;
  (*(v71 + 16))(v82, v87, v83);
  v40 = *(v36 + 80);
  v61 = v36;
  v41 = (v40 + 80) & ~v40;
  v42 = (v24 + *(v37 + 80) + v41) & ~*(v37 + 80);
  v43 = (v19 + *(v39 + 80) + v42) & ~*(v39 + 80);
  v44 = v43 + v72;
  v45 = swift_allocObject();
  v46 = v68;
  *(v45 + 2) = a6;
  *(v45 + 3) = v46;
  v47 = v77;
  *(v45 + 4) = v73;
  *(v45 + 5) = v47;
  v48 = v70;
  *(v45 + 6) = a11;
  *(v45 + 7) = v48;
  v49 = v78;
  *(v45 + 8) = v74;
  *(v45 + 9) = v49;
  v50 = *(v36 + 32);
  v51 = v62;
  v50(&v45[v41], v63, v62);
  v52 = v81;
  (*(v81 + 32))(&v45[v42], v64, v38);
  v53 = v83;
  (*(v39 + 32))(&v45[v43], v82, v83);
  v45[v44] = v79;
  v54 = v66;
  v55 = v45;
  v56 = v60;
  sub_1AAE4A8F8(v65, sub_1AAE4C9C8, v55, v60, &type metadata for AreaMark, a11, &protocol witness table for AreaMark, v66);
  (*(v39 + 8))(v87, v53);
  (*(v52 + 8))(v86, v38);
  (*(v61 + 8))(v85, v51);
  (*(v69 + 8))(v84, v56);
  v57 = v76;
  swift_getWitnessTable();
  return (*(v75 + 32))(v80, v54, v57);
}

void *sub_1AAE4C4F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v74 = a5;
  v72 = a3;
  v73 = a4;
  v69 = a2;
  v65 = a1;
  v75 = a9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v67 = a10;
  v68 = a14;
  v17 = type metadata accessor for PlottableProjection(0, AssociatedTypeWitness, a10, a14);
  v70 = *(v17 - 8);
  v71 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v66 = &v55 - v18;
  v20 = type metadata accessor for PlottableValue(0, a10, a14, v19);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v64 = &v55 - v21;
  v60 = a8;
  v61 = a13;
  v22 = type metadata accessor for PlottableProjection(0, AssociatedTypeWitness, a8, a13);
  v62 = *(v22 - 8);
  v63 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v59 = &v55 - v23;
  v25 = type metadata accessor for PlottableValue(0, a8, a13, v24);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v58 = &v55 - v26;
  v27 = a7;
  v76 = a12;
  v57 = type metadata accessor for PlottableProjection(0, AssociatedTypeWitness, a7, a12);
  v28 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v30 = &v55 - v29;
  v31 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v55 - v33;
  v35 = v27;
  v37 = type metadata accessor for PlottableValue(0, v27, a12, v36);
  v38 = MEMORY[0x1EEE9AC00](v37 - 8);
  v40 = &v55 - v39;
  v41 = *(v31 + 16);
  v42 = v65;
  v41(v34, v65, AssociatedTypeWitness, v38);
  (*(v28 + 16))(v30, v69, v57);
  v56 = v35;
  sub_1AAF30D00(v34, v30, v35, AssociatedTypeWitness, v76, v40);
  v43 = v42;
  (v41)(v34, v42, AssociatedTypeWitness);
  v44 = v59;
  (*(v62 + 16))(v59, v72, v63);
  v45 = v58;
  v46 = v44;
  v47 = v60;
  v48 = v61;
  sub_1AAF30D00(v34, v46, v60, AssociatedTypeWitness, v61, v58);
  (v41)(v34, v43, AssociatedTypeWitness);
  v49 = v66;
  (*(v70 + 16))(v66, v73, v71);
  v50 = v64;
  v51 = v49;
  v52 = v67;
  v53 = v68;
  sub_1AAF30D00(v34, v51, v67, AssociatedTypeWitness, v68, v64);
  AreaMark.init<A, B, C>(x:y:series:stacking:)(v40, v45, v50, v74, v56, v47, v52, v76, v77, v48, v53);
  return memcpy(v75, v77, 0x131uLL);
}

void *sub_1AAE4C9C8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2[3];
  v21 = v3;
  v4 = v2[4];
  v5 = v2[5];
  v20 = v4;
  v6 = v2[6];
  v7 = v2[7];
  v8 = v2[8];
  v9 = v2[9];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(type metadata accessor for PlottableProjection(0, AssociatedTypeWitness, v3, v7) - 8);
  v12 = (*(v11 + 80) + 80) & ~*(v11 + 80);
  v13 = *(v11 + 64);
  v14 = *(type metadata accessor for PlottableProjection(0, AssociatedTypeWitness, v4, v8) - 8);
  v15 = (v12 + v13 + *(v14 + 80)) & ~*(v14 + 80);
  v16 = *(v14 + 64);
  v17 = *(type metadata accessor for PlottableProjection(0, AssociatedTypeWitness, v5, v9) - 8);
  v18 = (v15 + v16 + *(v17 + 80)) & ~*(v17 + 80);
  return sub_1AAE4C4F4(a1, v2 + v12, v2 + v15, v2 + v18, *(v2 + v18 + *(v17 + 64)), v21, v20, a2, v5, v6, v7, v8, v9);
}

uint64_t AreaPlot.init<A, B, C, D>(_:xStart:xEnd:y:series:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v75 = a8;
  v71 = a7;
  v91 = a4;
  v92 = a5;
  v90 = a3;
  v87 = a2;
  v88 = a1;
  v72 = a12;
  v77 = a13;
  v81 = a14;
  v82 = a9;
  v80 = a10;
  v69 = a11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v89 = type metadata accessor for PlottableProjection(0, AssociatedTypeWitness, a10, a14);
  v73 = *(v89 - 8);
  v76 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v89);
  v86 = &v62 - v18;
  v19 = type metadata accessor for PlottableProjection(0, AssociatedTypeWitness, a8, a13);
  v84 = *(v19 - 8);
  v85 = v19;
  v70 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v83 = &v62 - v20;
  v21 = type metadata accessor for PlottableProjection(0, AssociatedTypeWitness, a7, a12);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v66 = &v62 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v62 - v25;
  v65 = &v62 - v25;
  v27 = a6;
  v74 = *(a6 - 8);
  v28 = v74;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v62 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = v31;
  v32 = v69;
  v34 = type metadata accessor for VectorizedAreaPlotContent(0, a6, v69, v33);
  v78 = *(v34 - 8);
  v79 = v34;
  v35 = MEMORY[0x1EEE9AC00](v34);
  v68 = &v62 - v36;
  v37 = *(v28 + 16);
  v62 = a6;
  v37(v31, v88, a6, v35);
  v38 = *(v22 + 16);
  v63 = v21;
  v38(v26, v87, v21);
  v38(&v62 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), v90, v21);
  v39 = v84;
  (*(v84 + 16))(v83, v91, v85);
  v40 = v73;
  (*(v73 + 16))(v86, v92, v89);
  v41 = *(v22 + 80);
  v64 = v22;
  v42 = (v41 + 80) & ~v41;
  v43 = (v23 + v41 + v42) & ~v41;
  v44 = (v23 + *(v39 + 80) + v43) & ~*(v39 + 80);
  v45 = (v70 + *(v40 + 80) + v44) & ~*(v40 + 80);
  v46 = swift_allocObject();
  v47 = v71;
  *(v46 + 2) = v27;
  *(v46 + 3) = v47;
  v48 = v80;
  *(v46 + 4) = v75;
  *(v46 + 5) = v48;
  v49 = v72;
  *(v46 + 6) = v32;
  *(v46 + 7) = v49;
  v50 = v81;
  *(v46 + 8) = v77;
  *(v46 + 9) = v50;
  v51 = *(v22 + 32);
  v52 = v63;
  v51(&v46[v42], v65, v63);
  v51(&v46[v43], v66, v52);
  v53 = v84;
  v54 = &v46[v44];
  v55 = v85;
  (*(v84 + 32))(v54, v83, v85);
  v56 = v89;
  (*(v40 + 32))(&v46[v45], v86, v89);
  v57 = v68;
  v58 = v62;
  sub_1AAE4A8F8(v67, sub_1AAE4D768, v46, v62, &type metadata for AreaMark, v32, &protocol witness table for AreaMark, v68);
  (*(v40 + 8))(v92, v56);
  (*(v53 + 8))(v91, v55);
  v59 = *(v64 + 8);
  v59(v90, v52);
  v59(v87, v52);
  (*(v74 + 8))(v88, v58);
  v60 = v79;
  swift_getWitnessTable();
  return (*(v78 + 32))(v82, v57, v60);
}

void *sub_1AAE4D20C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v79 = a4;
  v80 = a5;
  v76 = a3;
  v71 = a2;
  v81 = a9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v74 = a10;
  v75 = a14;
  v18 = type metadata accessor for PlottableProjection(0, AssociatedTypeWitness, a10, a14);
  v77 = *(v18 - 8);
  v78 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v73 = v59 - v19;
  v21 = type metadata accessor for PlottableValue(0, a10, a14, v20);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v72 = v59 - v22;
  v67 = a8;
  v68 = a13;
  v23 = type metadata accessor for PlottableProjection(0, AssociatedTypeWitness, a8, a13);
  v69 = *(v23 - 8);
  v70 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v66 = v59 - v24;
  v26 = type metadata accessor for PlottableValue(0, a8, a13, v25);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v65 = v59 - v27;
  v62 = a7;
  v82 = a12;
  v63 = type metadata accessor for PlottableProjection(0, AssociatedTypeWitness, a7, a12);
  v28 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v30 = v59 - v29;
  v31 = AssociatedTypeWitness;
  v32 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v33);
  v35 = v59 - v34;
  v37 = type metadata accessor for PlottableValue(0, a7, a12, v36);
  MEMORY[0x1EEE9AC00](v37 - 8);
  v83 = v59 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x1EEE9AC00](v39);
  v42 = v59 - v41;
  v64 = v59 - v41;
  v43 = *(v32 + 16);
  v61 = v32 + 16;
  v43(v35, a1, v31, v40);
  v44 = *(v28 + 16);
  v59[1] = v28 + 16;
  v60 = v44;
  v45 = v63;
  v44(v30, v71, v63);
  v46 = v62;
  v47 = v82;
  sub_1AAF30D00(v35, v30, v62, v31, v82, v42);
  (v43)(v35, a1, v31);
  v60(v30, v76, v45);
  sub_1AAF30D00(v35, v30, v46, v31, v47, v83);
  (v43)(v35, a1, v31);
  v48 = v66;
  (*(v69 + 16))(v66, v79, v70);
  v49 = v65;
  v50 = v48;
  v51 = v67;
  v52 = v68;
  sub_1AAF30D00(v35, v50, v67, v31, v68, v65);
  (v43)(v35, a1, v31);
  v53 = v73;
  (*(v77 + 16))(v73, v80, v78);
  v54 = v72;
  v55 = v35;
  v57 = v74;
  v56 = v75;
  sub_1AAF30D00(v55, v53, v74, v31, v75, v72);
  AreaMark.init<A, B, C>(xStart:xEnd:y:series:)(v64, v83, v49, v54, v46, v51, v57, v82, v84, v52, v56);
  return memcpy(v81, v84, 0x131uLL);
}

void *sub_1AAE4D768@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2[3];
  v20 = v3;
  v4 = v2[4];
  v19 = v2[5];
  v5 = v2[7];
  v21 = v2[6];
  v6 = v2[8];
  v7 = v2[9];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(type metadata accessor for PlottableProjection(0, AssociatedTypeWitness, v3, v5) - 8);
  v10 = *(v9 + 80);
  v11 = (v10 + 80) & ~v10;
  v12 = *(v9 + 64);
  v13 = (v12 + v10 + v11) & ~v10;
  v14 = *(type metadata accessor for PlottableProjection(0, AssociatedTypeWitness, v4, v6) - 8);
  v15 = (v13 + v12 + *(v14 + 80)) & ~*(v14 + 80);
  v16 = *(v14 + 64);
  v17 = *(type metadata accessor for PlottableProjection(0, AssociatedTypeWitness, v19, v7) - 8);
  return sub_1AAE4D20C(a1, v2 + v11, v2 + v13, v2 + v15, v2 + ((v15 + v16 + *(v17 + 80)) & ~*(v17 + 80)), v20, v4, a2, v19, v21, v5, v6, v7);
}

uint64_t AreaPlot.init<A, B, C, D>(_:x:yStart:yEnd:series:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v67 = a8;
  v70 = a7;
  v87 = a5;
  v88 = a3;
  v89 = a4;
  v86 = a2;
  v81 = a1;
  v77 = a9;
  v68 = a13;
  v72 = a12;
  v75 = a10;
  v76 = a14;
  v84 = a11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v85 = type metadata accessor for PlottableProjection(0, AssociatedTypeWitness, a10, a14);
  v82 = *(v85 - 8);
  v71 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v85);
  v80 = &v61 - v18;
  v19 = type metadata accessor for PlottableProjection(0, AssociatedTypeWitness, a7, a12);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v83 = &v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v61 - v23;
  v64 = &v61 - v23;
  v25 = type metadata accessor for PlottableProjection(0, AssociatedTypeWitness, a8, a13);
  v78 = *(v25 - 8);
  v26 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v61 - v27;
  v69 = *(a6 - 8);
  v29 = v69;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v61 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = v32;
  v79 = a6;
  v34 = type metadata accessor for VectorizedAreaPlotContent(0, a6, v84, v33);
  v73 = *(v34 - 8);
  v74 = v34;
  v35 = MEMORY[0x1EEE9AC00](v34);
  v66 = &v61 - v36;
  (*(v29 + 16))(v32, v81, a6, v35);
  v37 = v78;
  v38 = *(v78 + 16);
  v63 = v25;
  v38(v28, v86, v25);
  v39 = *(v20 + 16);
  v62 = v19;
  v39(v24, v88, v19);
  v39(v83, v89, v19);
  v40 = v82;
  (*(v82 + 16))(v80, v87, v85);
  v41 = (*(v37 + 80) + 80) & ~*(v37 + 80);
  v42 = *(v20 + 80);
  v43 = (v26 + v42 + v41) & ~v42;
  v44 = (v21 + v42 + v43) & ~v42;
  v45 = (v21 + *(v40 + 80) + v44) & ~*(v40 + 80);
  v46 = swift_allocObject();
  v47 = v70;
  *(v46 + 2) = v79;
  *(v46 + 3) = v47;
  v48 = v75;
  *(v46 + 4) = v67;
  *(v46 + 5) = v48;
  v49 = v84;
  v50 = v72;
  *(v46 + 6) = v84;
  *(v46 + 7) = v50;
  v51 = v76;
  *(v46 + 8) = v68;
  *(v46 + 9) = v51;
  (*(v37 + 32))(&v46[v41], v28, v25);
  v52 = *(v20 + 32);
  v53 = v62;
  v52(&v46[v43], v64, v62);
  v52(&v46[v44], v83, v53);
  v54 = v82;
  v55 = v85;
  (*(v82 + 32))(&v46[v45], v80, v85);
  v56 = v66;
  v57 = v79;
  sub_1AAE4A8F8(v65, sub_1AAE4E4E4, v46, v79, &type metadata for AreaMark, v49, &protocol witness table for AreaMark, v66);
  (*(v54 + 8))(v87, v55);
  v58 = *(v20 + 8);
  v58(v89, v53);
  v58(v88, v53);
  (*(v78 + 8))(v86, v63);
  (*(v69 + 8))(v81, v57);
  v59 = v74;
  swift_getWitnessTable();
  return (*(v73 + 32))(v77, v56, v59);
}

void *sub_1AAE4DF94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v72 = a4;
  v73 = a5;
  v69 = a3;
  v64 = a2;
  v77 = a1;
  v74 = a9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v67 = a10;
  v68 = a14;
  v17 = type metadata accessor for PlottableProjection(0, AssociatedTypeWitness, a10, a14);
  v70 = *(v17 - 8);
  v71 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v66 = &v55 - v18;
  v20 = type metadata accessor for PlottableValue(0, a10, a14, v19);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v65 = &v55 - v21;
  v60 = a7;
  v61 = a12;
  v63 = type metadata accessor for PlottableProjection(0, AssociatedTypeWitness, a7, a12);
  v78 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v59 = &v55 - v22;
  v24 = type metadata accessor for PlottableValue(0, a7, a12, v23);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v62 = &v55 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v75 = a8;
  v76 = &v55 - v27;
  v28 = a8;
  v56 = type metadata accessor for PlottableProjection(0, AssociatedTypeWitness, a8, a13);
  v29 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v31 = &v55 - v30;
  v32 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v55 - v34;
  v58 = a13;
  v37 = type metadata accessor for PlottableValue(0, v28, a13, v36);
  v38 = MEMORY[0x1EEE9AC00](v37 - 8);
  v40 = &v55 - v39;
  v57 = &v55 - v39;
  v41 = *(v32 + 16);
  v42 = v77;
  v41(v35, v77, AssociatedTypeWitness, v38);
  v55 = v32 + 16;
  (*(v29 + 16))(v31, v64, v56);
  sub_1AAF30D00(v35, v31, v75, AssociatedTypeWitness, a13, v40);
  (v41)(v35, v42, AssociatedTypeWitness);
  v43 = *(v78 + 16);
  v78 += 16;
  v44 = v59;
  v45 = v63;
  v43(v59, v69, v63);
  v46 = v60;
  v47 = v61;
  sub_1AAF30D00(v35, v44, v60, AssociatedTypeWitness, v61, v76);
  (v41)(v35, v42, AssociatedTypeWitness);
  v43(v44, v72, v45);
  v48 = v62;
  sub_1AAF30D00(v35, v44, v46, AssociatedTypeWitness, v47, v62);
  (v41)(v35, v77, AssociatedTypeWitness);
  v49 = v66;
  (*(v70 + 16))(v66, v73, v71);
  v50 = v65;
  v51 = v49;
  v53 = v67;
  v52 = v68;
  sub_1AAF30D00(v35, v51, v67, AssociatedTypeWitness, v68, v65);
  AreaMark.init<A, B, C>(x:yStart:yEnd:series:)(v57, v76, v48, v50, v75, v46, v53, v58, v79, v47, v52);
  return memcpy(v74, v79, 0x131uLL);
}

void *sub_1AAE4E4E4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2[3];
  v4 = v2[4];
  v22 = v4;
  v20 = v3;
  v21 = v2[5];
  v5 = v2[6];
  v6 = v2[7];
  v7 = v2[8];
  v8 = v2[9];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(type metadata accessor for PlottableProjection(0, AssociatedTypeWitness, v4, v7) - 8);
  v11 = (*(v10 + 80) + 80) & ~*(v10 + 80);
  v12 = *(v10 + 64);
  v13 = *(type metadata accessor for PlottableProjection(0, AssociatedTypeWitness, v3, v6) - 8);
  v14 = *(v13 + 80);
  v15 = (v11 + v12 + v14) & ~v14;
  v16 = *(v13 + 64);
  v17 = (v16 + v14 + v15) & ~v14;
  v18 = *(type metadata accessor for PlottableProjection(0, AssociatedTypeWitness, v21, v8) - 8);
  return sub_1AAE4DF94(a1, v2 + v11, v2 + v15, v2 + v17, v2 + ((v17 + v16 + *(v18 + 80)) & ~*(v18 + 80)), v20, v22, a2, v21, v5, v6, v7, v8);
}

__n128 AreaPlot<A>.init(x:yStart:yEnd:domain:function:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, char a11, __int128 a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16)
{
  *&v21 = a1;
  *(&v21 + 1) = a2;
  v22.n128_u8[0] = a3 & 1;
  v22.n128_u64[1] = a4;
  *&v23 = a5;
  *(&v23 + 1) = a6;
  LOBYTE(v24) = a7 & 1;
  *(&v24 + 1) = a8;
  v25 = a10;
  v26[0] = a11 & 1;
  *&v26[8] = a12;
  *&v26[24] = a13;
  LOBYTE(v27) = a14 & 1;
  *(&v27 + 1) = a15;
  v28 = a16;
  sub_1AAE4E784(&v21);
  v17 = v27;
  *(a9 + 96) = *&v26[16];
  *(a9 + 112) = v17;
  *(a9 + 128) = v28;
  v18 = v24;
  *(a9 + 32) = v23;
  *(a9 + 48) = v18;
  v19 = *v26;
  *(a9 + 64) = v25;
  *(a9 + 80) = v19;
  result = v22;
  *a9 = v21;
  *(a9 + 16) = result;
  return result;
}

void *sub_1AAE4E784(void *result)
{
  v1 = result[6] & 1;
  v2 = result[10] & 1;
  v3 = result[14] & 1 | 0x8000000000000000;
  result[2] &= 1uLL;
  result[6] = v1;
  result[10] = v2;
  result[14] = v3;
  return result;
}

__n128 AreaPlot<A>.init(x:yStart:yEnd:domain:function:)@<Q0>(uint64_t a9@<X8>, uint64_t a10, uint64_t a11, unsigned __int8 a12, uint64_t a13, __int128 a14, char a15, uint64_t a16, uint64_t a17)
{
  *&v31 = sub_1AAF8EA44();
  *(&v31 + 1) = v18;
  v32.n128_u8[0] = v19 & 1;
  v32.n128_u64[1] = v20;
  *&v33 = sub_1AAF8EA44();
  *(&v33 + 1) = v21;
  LOBYTE(v34) = v22 & 1;
  *(&v34 + 1) = v23;
  *&v35 = sub_1AAF8EA44();
  *(&v35 + 1) = v24;
  LOBYTE(v36) = v25 & 1;
  *(&v36 + 1) = v26;
  v37 = a14;
  LOBYTE(v38) = a15 & 1;
  *(&v38 + 1) = a16;
  v39 = a17;
  sub_1AAE4E784(&v31);
  v27 = v38;
  *(a9 + 96) = v37;
  *(a9 + 112) = v27;
  *(a9 + 128) = v39;
  v28 = v34;
  *(a9 + 32) = v33;
  *(a9 + 48) = v28;
  v29 = v36;
  *(a9 + 64) = v35;
  *(a9 + 80) = v29;
  result = v32;
  *a9 = v31;
  *(a9 + 16) = result;
  return result;
}