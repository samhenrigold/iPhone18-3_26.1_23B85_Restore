id sub_18E158B44(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_18E1A7500();
  }

  else
  {
    v3 = 0;
  }

  v4 = [objc_allocWithZone(v2) initWithSuiteName_];

  return v4;
}

uint64_t sub_18E158BC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  if (a3)
  {
    v5 = sub_18E1A7530();
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  return a4(v5, v6);
}

id NSUserDefaults.Global.init(suiteName:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  if (a2)
  {
    v5 = sub_18E1A7500();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v2;
  v8.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v8, sel_initWithSuiteName_, v5);

  if (v6)
  {
  }

  return v6;
}

void *sub_18E158E00(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t NSUserDefaults.Global.object(forKey:)@<X0>(void *a3@<X8>)
{
  v4 = sub_18E1A7500();
  v5 = CFPreferencesCopyValue(v4, *MEMORY[0x1E695E890], *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E8B0]);

  if (v5)
  {
    result = swift_getObjectType();
  }

  else
  {
    result = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  *a3 = v5;
  a3[3] = result;
  return result;
}

uint64_t sub_18E158EC4(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_18E158F10(uint64_t result, int a2, int a3)
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
      *(result + 120) = (a2 - 1);
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

uint64_t sub_18E158F70(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_18E158FE8(uint64_t a1, uint64_t a2)
{

  return sub_18E1A7A80();
}

void sub_18E1590E4()
{

  JUMPOUT(0x193ACB8D0);
}

uint64_t sub_18E1590FC(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_18E15914C(uint64_t a1)
{
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
  sub_18E158EC4(v2);
  *(v1 + 16) = a1;
  return v1;
}

uint64_t sub_18E1591C0(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_18E15921C@<X0>(char a1@<W8>)
{
  *(v1 - 96) = a1;

  return sub_18E1A7AB0();
}

uint64_t sub_18E1592B8()
{

  return sub_18E1A7A80();
}

uint64_t sub_18E1592FC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_18E159348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);

  return sub_18E18CC14(a1, va, v18, v19);
}

uint64_t sub_18E159364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  sub_18E159728(a3, a4);
  sub_18E15911C();
  if (v12)
  {
    __break(1u);
    goto LABEL_13;
  }

  v13 = v10;
  v14 = v11;
  sub_18E161880(&qword_1EABD05A8, &qword_18E1AA660);
  if ((sub_18E1A7940() & 1) == 0)
  {
    goto LABEL_5;
  }

  v15 = sub_18E159728(a3, a4);
  if ((v14 & 1) != (v16 & 1))
  {
LABEL_13:
    result = sub_18E1A7BB0();
    __break(1u);
    return result;
  }

  v13 = v15;
LABEL_5:
  v17 = *v5;
  if (v14)
  {
    v18 = (v17[7] + 16 * v13);
    *v18 = a1;
    v18[1] = a2;
  }

  else
  {
    sub_18E1598E0(v13, a3, a4, a1, a2, v17);
  }
}

uint64_t sub_18E1594AC(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_18E159534(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_18E159554(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_18E159668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{

  return swift_beginAccess();
}

uint64_t sub_18E159688(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_18E1A7B90();
}

uint64_t sub_18E1596B4(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_18E159704(uint64_t a1)
{

  return MEMORY[0x1EEE6BE20](v1, a1, 0, 0, 0);
}

unint64_t sub_18E159728(uint64_t a1, uint64_t a2)
{
  sub_18E1A7C60();
  sub_18E15A84C();
  sub_18E1A75C0();
  v4 = sub_18E1A7CA0();

  return sub_18E15979C(a1, a2, v4);
}

unint64_t sub_18E15979C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_18E1A7B90() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

void sub_18E159850()
{

  JUMPOUT(0x193ACB8D0);
}

void *sub_18E159880@<X0>(char a1@<W8>, uint64_t a2)
{
  *(v2 + 16) = a1;

  return memcpy((v2 + 17), &a2, 0x67uLL);
}

unint64_t sub_18E1598E0(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

uint64_t sub_18E15992C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void *StringRenderedPromptSanitizer.init(overrides:guardrails:)@<X0>(uint64_t *a1@<X0>, const void *a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 16);
  v7 = memcpy(__dst, a2, sizeof(__dst));
  LOBYTE(v37) = v6;
  sub_18E15BFA0(v7, v8, v9, v10, v11, v12, v13, v14, v24, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37);
  v15 = type metadata accessor for CachedSafetyModelsWrapper();
  sub_18E15B80C(v15);
  sub_18E15933C();
  v16 = type metadata accessor for CachedSafetyModels();
  sub_18E15B80C(v16);
  sub_18E161880(&qword_1EABD0988, &unk_18E1AB600);
  sub_18E161880(&qword_1EABD0A78, &qword_18E1ABBB8);
  sub_18E15A160();
  sub_18E1A7490();
  v17 = sub_18E161880(&qword_1EABD0A80, qword_18E1ABBC0);
  v18 = sub_18E15A434(v17);
  sub_18E15A8DC(v18);
  v19 = type metadata accessor for ModelManagerSessionWrapper();
  v20 = sub_18E15B80C(v19);
  v21 = sub_18E161880(&qword_1EABD0AE8, &qword_18E1AC170);
  v22 = sub_18E15A434(v21);
  *(v20 + 16) = sub_18E15B9EC(v22);
  *a3 = v4;
  a3[1] = v5;
  result = sub_18E159880(v38, v25);
  a3[15] = v6;
  a3[16] = v20;
  return result;
}

{
  v6 = *a1;
  v7 = a1[1];
  v8 = type metadata accessor for CachedSafetyModelsWrapper();
  sub_18E15B80C(v8);
  sub_18E15933C();
  v9 = type metadata accessor for CachedSafetyModels();
  v10 = sub_18E15B80C(v9);
  sub_18E161880(&qword_1EABD0988, &unk_18E1AB600);
  sub_18E161880(&qword_1EABD0A78, &qword_18E1ABBB8);
  sub_18E15A160();
  v11 = sub_18E1A7490();
  v12 = sub_18E161880(&qword_1EABD0A80, qword_18E1ABBC0);
  v13 = sub_18E15A434(v12);
  *(v13 + 24) = 0;
  *(v13 + 16) = v11;
  *(v10 + 16) = v13;
  *(v3 + 16) = v10;
  v14 = type metadata accessor for ModelManagerSessionWrapper();
  v15 = sub_18E15B80C(v14);
  v16 = sub_18E161880(&qword_1EABD0AE8, &qword_18E1AC170);
  v17 = sub_18E15A434(v16);
  *(v15 + 16) = sub_18E15B9EC(v17);
  v18 = memcpy(__dst, a2, sizeof(__dst));
  LOBYTE(v40) = v7 != 1;
  sub_18E15BFA0(v18, v19, v20, v21, v22, v23, v24, v25, v27, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40);
  *a3 = v6;
  a3[1] = v7;
  result = sub_18E159880(v41, v28);
  a3[15] = v3;
  a3[16] = v15;
  return result;
}

{
  v5 = *a1;
  v6 = a1[1];
  v18 = 1;
  memcpy(v17 + 7, a2, 0x60uLL);
  v7 = type metadata accessor for CachedSafetyModelsWrapper();
  sub_18E15B80C(v7);
  sub_18E15933C();
  v8 = type metadata accessor for CachedSafetyModels();
  sub_18E15B80C(v8);
  sub_18E161880(&qword_1EABD0988, &unk_18E1AB600);
  sub_18E161880(&qword_1EABD0A78, &qword_18E1ABBB8);
  sub_18E15A160();
  sub_18E1A7490();
  v9 = sub_18E161880(&qword_1EABD0A80, qword_18E1ABBC0);
  v10 = sub_18E15A434(v9);
  sub_18E15A8DC(v10);
  v11 = type metadata accessor for ModelManagerSessionWrapper();
  v12 = sub_18E15B80C(v11);
  v13 = sub_18E161880(&qword_1EABD0AE8, &qword_18E1AC170);
  v14 = sub_18E15A434(v13);
  *(v12 + 16) = sub_18E15B9EC(v14);
  v15 = v18;
  *a3 = v5;
  a3[1] = v6;
  result = sub_18E159880(v15, v17[0]);
  a3[15] = v3;
  a3[16] = v12;
  return result;
}

uint64_t sub_18E159AD0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_18E159AF4(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_18E159B18(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 136))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 120);
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

uint64_t sub_18E159B58(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_18E159B98(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t StringRenderedPromptSanitizer.guardrails.getter@<X0>(void *a1@<X8>)
{
  sub_18E18DFD8();
  memcpy(v3, v4, v5);
  memcpy(a1, (v1 + 24), 0x60uLL);
  return sub_18E18CC14(v8, &v7, &qword_1EABD0E08, &qword_18E1AD4E8);
}

uint64_t sub_18E159C7C(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 96))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t StringRenderedPromptSanitizer.overrides.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  return sub_18E159D24(v2, v3, v4);
}

uint64_t StringRenderedPromptSanitizerRunnerConfiguration.useCaseIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for StringRenderedPromptSanitizerRunnerConfiguration(0) + 20));

  return v1;
}

uint64_t sub_18E159D28(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_18E159D3C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t StringResponseSanitizer.init(overrides:guardrails:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = *(a1 + 16);
  v8 = *a2;
  v9 = type metadata accessor for CachedSafetyModelsWrapper();
  sub_18E15B80C(v9);
  sub_18E15933C();
  v10 = type metadata accessor for CachedSafetyModels();
  sub_18E15B80C(v10);
  sub_18E161880(&qword_1EABD0988, &unk_18E1AB600);
  sub_18E161880(&qword_1EABD0A78, &qword_18E1ABBB8);
  v11 = sub_18E15A160();
  sub_18E15BAE0(MEMORY[0x1E69E7CC0], v12, v13, v11);
  v14 = sub_18E161880(&qword_1EABD0A80, qword_18E1ABBC0);
  v15 = sub_18E15A434(v14);
  sub_18E15A8DC(v15);
  v16 = type metadata accessor for ModelManagerSessionWrapper();
  v17 = sub_18E15B80C(v16);
  v18 = sub_18E161880(&qword_1EABD0AE8, &qword_18E1AC170);
  v19 = sub_18E15A434(v18);
  result = sub_18E15D564(v19);
  *a3 = v5;
  *(a3 + 8) = v6;
  *(a3 + 16) = v7;
  *(a3 + 24) = v8;
  *(a3 + 32) = v3;
  *(a3 + 40) = v17;
  return result;
}

{
  v5 = *a1;
  v6 = a1[1];
  v7 = *a2;
  v8 = type metadata accessor for CachedSafetyModelsWrapper();
  sub_18E15B80C(v8);
  sub_18E15933C();
  v9 = type metadata accessor for CachedSafetyModels();
  sub_18E15B80C(v9);
  sub_18E161880(&qword_1EABD0988, &unk_18E1AB600);
  sub_18E161880(&qword_1EABD0A78, &qword_18E1ABBB8);
  v10 = sub_18E15A160();
  sub_18E15BAE0(MEMORY[0x1E69E7CC0], v11, v12, v10);
  v13 = sub_18E161880(&qword_1EABD0A80, qword_18E1ABBC0);
  v14 = sub_18E15A434(v13);
  sub_18E15A8DC(v14);
  v15 = type metadata accessor for ModelManagerSessionWrapper();
  v16 = sub_18E15B80C(v15);
  v17 = sub_18E161880(&qword_1EABD0AE8, &qword_18E1AC170);
  v18 = sub_18E15A434(v17);
  result = sub_18E15D564(v18);
  *a3 = v5;
  *(a3 + 8) = v6;
  *(a3 + 16) = v6 != 1;
  *(a3 + 24) = v7;
  *(a3 + 32) = v3;
  *(a3 + 40) = v16;
  return result;
}

{
  v5 = *a1;
  v6 = a1[1];
  v7 = *a2;
  v8 = type metadata accessor for CachedSafetyModelsWrapper();
  sub_18E15B80C(v8);
  sub_18E15933C();
  v9 = type metadata accessor for CachedSafetyModels();
  sub_18E15B80C(v9);
  sub_18E161880(&qword_1EABD0988, &unk_18E1AB600);
  sub_18E161880(&qword_1EABD0A78, &qword_18E1ABBB8);
  v10 = sub_18E15A160();
  sub_18E15BAE0(MEMORY[0x1E69E7CC0], v11, v12, v10);
  v13 = sub_18E161880(&qword_1EABD0A80, qword_18E1ABBC0);
  v14 = sub_18E15A434(v13);
  sub_18E15A8DC(v14);
  v15 = type metadata accessor for ModelManagerSessionWrapper();
  v16 = sub_18E15B80C(v15);
  v17 = sub_18E161880(&qword_1EABD0AE8, &qword_18E1AC170);
  v18 = sub_18E15A434(v17);
  result = sub_18E15D564(v18);
  *a3 = v5;
  *(a3 + 8) = v6;
  *(a3 + 16) = 1;
  *(a3 + 24) = v7;
  *(a3 + 32) = v3;
  *(a3 + 40) = v16;
  return result;
}

void sub_18E159EE4(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

void *sub_18E159F00(uint64_t a1, ...)
{

  return sub_18E1A7C60();
}

void *sub_18E159F18()
{

  return memcpy((v1 + 8), (v0 + 8), 0x58uLL);
}

void sub_18E159F68(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v4, a4, v5, 2u);
}

uint64_t sub_18E15A008(uint64_t a1)
{

  return MEMORY[0x1EEE6BDD8](v1, a1, 24, 7);
}

uint64_t sub_18E15A028(uint64_t a1, uint64_t a2)
{
  *v3 = a1;
  v3[1] = a2;
  *(v4 - 96) = v2;
  return v4 - 96;
}

void sub_18E15A074(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void sub_18E15A094()
{

  JUMPOUT(0x193ACB0A0);
}

uint64_t sub_18E15A124(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_18E1A7B90();
}

unint64_t sub_18E15A160()
{
  result = qword_1ED8D9F00[0];
  if (!qword_1ED8D9F00[0])
  {
    sub_18E169A64(&qword_1EABD0988, &unk_18E1AB600);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED8D9F00);
  }

  return result;
}

uint64_t sub_18E15A1C4()
{

  return sub_18E1A7C80();
}

uint64_t sub_18E15A1F8()
{

  return type metadata accessor for KeychainStore(0);
}

__n128 sub_18E15A240()
{
  v2 = *(v1 - 208);
  *(v1 - 304) = *(v1 - 224);
  *(v1 - 288) = v2;
  result = *(v0 + 32);
  v4 = *(v0 + 48);
  *(v1 - 272) = result;
  *(v1 - 256) = v4;
  return result;
}

void sub_18E15A2C0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

uint64_t sub_18E15A344()
{
  *(v2 - 208) = v1;
  *(v2 - 200) = v0;
  sub_18E177BE0((v2 - 240), (v2 - 192));
}

uint64_t sub_18E15A38C(unint64_t *a1)
{
  v4 = MEMORY[0x1E69B24E0];

  return sub_18E194920(a1, v1, v2, v4);
}

uint64_t sub_18E15A3DC(uint64_t a1, uint64_t a2)
{
  sub_18E1592FC(v2, a2);

  return swift_beginAccess();
}

_OWORD *sub_18E15A414()
{
  *(v0 + 584) = *(v0 + 16);

  return sub_18E177BE0((v0 + 32), (v0 + 336));
}

uint64_t sub_18E15A434(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_18E15A45C(uint64_t a1, uint64_t a2)
{

  return sub_18E1A7A30();
}

uint64_t sub_18E15A47C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = MEMORY[0x1E69B24D8];

  return sub_18E194920(a1, a2, a3, v4);
}

uint64_t sub_18E15A4A0()
{

  return swift_allocObject();
}

uint64_t static ModelBundleInfoForSanitizer.none.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_18E1A6D10();

  return sub_18E159EBC(a1, 1, 1, v2);
}

uint64_t type metadata accessor for StringRenderedPromptSanitizerRunnerConfiguration(uint64_t a1)
{
  result = qword_1ED8DA168;
  if (!qword_1ED8DA168)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_18E15A594(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ModelBundleInfoForSanitizer(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for ModelBundleInfoForSanitizer(uint64_t a1)
{
  result = qword_1ED8D9D00;
  if (!qword_1ED8D9D00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_18E15A650(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_18E15A674@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_18E1A7360();
  v7 = sub_18E1592FC(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t CachedSafetyModelsWrapper.__deallocating_deinit()
{

  sub_18E15959C();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_18E15A784()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t ModelManagerSessionWrapper.__deallocating_deinit()
{

  v0 = sub_18E1595A8();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_18E15A824(uint64_t a1, uint64_t a2)
{
  sub_18E1592FC(a1, a2);

  return sub_18E1A7340();
}

uint64_t sub_18E15A8BC@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  return (a1 + 1);
}

uint64_t sub_18E15A8DC(uint64_t result)
{
  *(result + 24) = 0;
  *(result + 16) = v3;
  *(v2 + 16) = result;
  *(v1 + 16) = v2;
  return result;
}

uint64_t sub_18E15A908(uint64_t a1)
{

  return sub_18E16D540(a1, v1, v2);
}

uint64_t sub_18E15A964(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
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

uint64_t sub_18E15A9DC(uint64_t a1)
{

  return swift_once();
}

BOOL sub_18E15AA20(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

BOOL sub_18E15AA3C(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_18E15AAC8(uint64_t a1, ...)
{

  return sub_18E1A75C0();
}

uint64_t sub_18E15AAEC@<X0>(uint64_t a1@<X8>, uint64_t a2, ...)
{
  *(v2 + 16) = a1;

  return swift_beginAccess();
}

uint64_t sub_18E15AB10@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = *a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  return a4;
}

uint64_t sub_18E15AB3C(uint64_t a1, uint64_t a2)
{

  return sub_18E1A79F0();
}

uint64_t sub_18E15ABA8(uint64_t a1)
{

  return sub_18E1A7B30();
}

__n128 sub_18E15ABD4()
{
  v2 = *(v0 + 32);
  *(v1 + 136) = *(v0 + 16);
  *(v1 + 152) = v2;
  result = *(v0 + 48);
  *(v1 + 168) = result;
  return result;
}

uint64_t sub_18E15AC04(uint64_t a1)
{

  return sub_18E16D540(a1, v1, v2);
}

void *sub_18E15AC1C(uint64_t a1, ...)
{

  return sub_18E1A7C60();
}

__n128 sub_18E15AC3C()
{
  v1 = *(v0 - 192);
  *(v0 - 160) = *(v0 - 208);
  *(v0 - 144) = v1;
  result = *(v0 - 176);
  *(v0 - 128) = result;
  return result;
}

uint64_t sub_18E15AC54(uint64_t a1)
{

  return swift_arrayInitWithCopy();
}

uint64_t StringResponseSanitizerRunnerConfiguration.useCaseIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for StringResponseSanitizerRunnerConfiguration(0) + 20));

  return v1;
}

uint64_t StringResponseSanitizer.overrides.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  return sub_18E159D24(v2, v3, v4);
}

uint64_t sub_18E15AD20(uint64_t a1, int a2)
{
  if (a2 == 0x7FFFFFFF)
  {
    return sub_18E15A8BC(*(a1 + 32));
  }

  type metadata accessor for StringResponseSanitizerRunnerConfiguration(0);
  v3 = sub_18E15AA9C();

  return sub_18E15D690(v3, v4, v5);
}

void sub_18E15ADAC()
{
  sub_18E15DA2C();
  if (v2)
  {
    *(v1 + 32) = (v0 - 1);
  }

  else
  {
    type metadata accessor for StringResponseSanitizerRunnerConfiguration(0);
    v3 = sub_18E15AA9C();

    sub_18E159EBC(v3, v4, v0, v5);
  }
}

uint64_t StringResponseSanitizerWithConfiguration.scrub(_:)(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  return sub_18E159130();
}

BOOL sub_18E15AE7C(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_18E15AE98(uint64_t a1, uint64_t a2)
{

  return sub_18E1A79F0();
}

uint64_t sub_18E15AEBC()
{

  return sub_18E1A78A0();
}

void sub_18E15AF4C(uint64_t result, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(result + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    sub_18E16BF8C();
    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t sub_18E15AF90(char a1)
{
  if (a1)
  {
    return 0x4474756F68746977;
  }

  else
  {
    return 0x6166654468746977;
  }
}

uint64_t sub_18E15AFE8()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 96);
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 16);
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v11 = v1[7];
  v12 = *(v0 + 104);
  v14 = *(type metadata accessor for StringResponseSanitizerWithConfiguration(0) + 20);
  sub_18E159D24(v3, v4, v5);

  *(v0 + 80) = v2;
  *(v0 + 88) = v12;
  *(v0 + 16) = v3;
  *(v0 + 24) = v4;
  *(v0 + 32) = v5;
  *(v0 + 40) = v6;
  *(v0 + 48) = v7;
  *(v0 + 56) = v8;
  v13 = (*(*(v11 + 8) + 40) + **(*(v11 + 8) + 40));
  v9 = swift_task_alloc();
  *(v0 + 120) = v9;
  *v9 = v0;
  v9[1] = sub_18E15EF2C;

  return v13(v0 + 64, v0 + 80, v1 + v14, v0 + 16);
}

void StringResponseSanitizer.DefaultableOverrides.init(from:)()
{
  sub_18E159F44();
  v3 = v2;
  v26 = v4;
  sub_18E161880(&qword_1EABD0FA0, &qword_18E1AE9D8);
  sub_18E159050();
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v5, v6);
  sub_18E15A114();
  sub_18E161880(&qword_1EABD0FA8, &qword_18E1AE9E0);
  sub_18E159050();
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v7, v8);
  sub_18E159FE0();
  v9 = sub_18E161880(&qword_1EABD0FB0, &unk_18E1AE9E8);
  sub_18E159050();
  v25 = v10;
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v11, v12);
  sub_18E15D458();
  sub_18E159D90(v3, v3[3]);
  sub_18E15C068();
  sub_18E15D900();
  sub_18E1A7CC0();
  if (v0)
  {
    goto LABEL_7;
  }

  sub_18E192214();
  sub_18E1A7AA0();
  v13 = sub_18E15AF14();
  v16 = v13;
  if (v14 == v15 >> 1)
  {
LABEL_6:
    v18 = sub_18E1A78C0();
    swift_allocError();
    v20 = v19;
    sub_18E161880(&qword_1EABD06A0, &qword_18E1AA9F0);
    *v20 = &type metadata for StringResponseSanitizer.DefaultableOverrides;
    sub_18E192214();
    sub_18E1A7A00();
    sub_18E15AEBC();
    (*(*(v18 - 8) + 104))(v20, *MEMORY[0x1E69E6AF8], v18);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v25 + 8))(v1, v9);
LABEL_7:
    sub_18E158EC4(v3);
    goto LABEL_8;
  }

  if (v14 < (v15 >> 1))
  {
    sub_18E15C52C(v13, v15 >> 1, v14, v15, v14);
    sub_18E15AF84();
    sub_18E19222C();
    if (!(v16 >> 1))
    {
      LOBYTE(v27) = 1;
      sub_18E191214();
      sub_18E15D5E8();
      sub_18E1A79F0();
      sub_18E15BAF8();
      sub_18E15A45C(&type metadata for StringResponseSanitizer.Overrides, v17);
      sub_18E15B9F8();
      swift_unknownObjectRelease();
      v21 = sub_18E1921E0();
      v22(v21);
      v23 = sub_18E15C598();
      v24(v23);
      *v26 = v27;
      *(v26 + 16) = v3;
      sub_18E158EC4(v3);
LABEL_8:
      sub_18E15A29C();
      return;
    }

    goto LABEL_6;
  }

  __break(1u);
}

void StringResponseSanitizer.Overrides.init(from:)()
{
  sub_18E159F44();
  v2 = v1;
  v4 = v3;
  sub_18E161880(&qword_1EABD0F68, &qword_18E1AE9A8);
  sub_18E159050();
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v5, v6);
  sub_18E15D458();
  sub_18E159D90(v2, v2[3]);
  sub_18E15BA04();
  sub_18E15D900();
  sub_18E15A8D0();
  sub_18E1A7CC0();
  if (!v0)
  {
    sub_18E15BD24();
    sub_18E15D5E8();
    sub_18E1A7A30();
    v7 = sub_18E15C048();
    v8(v7);
    *v4 = v9;
  }

  sub_18E158EC4(v2);
  sub_18E15A29C();
}

void sub_18E15B7A0()
{

  JUMPOUT(0x193ACB8D0);
}

uint64_t sub_18E15B7BC(uint64_t a1, uint64_t a2)
{

  return swift_allocError();
}

uint64_t sub_18E15B7D4()
{
  sub_18E159EBC(v0, 0, 1, v1);

  return MEMORY[0x1EEE0A328](0);
}

uint64_t sub_18E15B80C(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_18E15B8A4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_18E15B908(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_18E15B8D0()
{

  return swift_slowAlloc();
}

uint64_t sub_18E15B8EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);

  return sub_18E18CC14(a1, va, v20, v21);
}

uint64_t sub_18E15B908(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6166654468746977 && a2 == 0xEB00000000746C75;
  if (v4 || (sub_18E15A124(0x6166654468746977, 0xEB00000000746C75, a1) & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4474756F68746977 && a2 == 0xEE00746C75616665)
  {

    return 1;
  }

  else
  {
    v7 = sub_18E15A124(0x4474756F68746977, 0xEE00746C75616665, a1);

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

uint64_t sub_18E15B9CC(uint64_t a1)
{

  return sub_18E1A78A0();
}

uint64_t sub_18E15B9EC(uint64_t result)
{
  *(result + 24) = 0;
  *(result + 16) = 0;
  return result;
}

unint64_t sub_18E15BA04()
{
  result = qword_1EABD00F8;
  if (!qword_1EABD00F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD00F8);
  }

  return result;
}

uint64_t sub_18E15BA58(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
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

uint64_t sub_18E15BAE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_18E1A7490();
}

unint64_t sub_18E15BAF8()
{
  result = qword_1EABCFE00;
  if (!qword_1EABCFE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABCFE00);
  }

  return result;
}

_BYTE *sub_18E15BB7C(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x18E15BC48);
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

void sub_18E15BC70(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_18E15BC90(uint64_t a1, ...)
{

  return swift_beginAccess();
}

uint64_t sub_18E15BCEC()
{

  return swift_slowAlloc();
}

unint64_t sub_18E15BD24()
{
  result = qword_1EABCFE48;
  if (!qword_1EABCFE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABCFE48);
  }

  return result;
}

unint64_t sub_18E15BD78()
{
  result = qword_1EABD0100;
  if (!qword_1EABD0100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0100);
  }

  return result;
}

unint64_t sub_18E15BDCC()
{
  result = qword_1EABD01A8;
  if (!qword_1EABD01A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD01A8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ReadDataResponse.DataCodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *sub_18E15BE70(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x18E15BF0CLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_18E15BF34()
{
  result = qword_1EABD0208;
  if (!qword_1EABD0208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0208);
  }

  return result;
}

uint64_t sub_18E15BF88()
{

  return swift_slowAlloc();
}

void *sub_18E15BFA0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va1, a21);
  va_start(__srca, a21);
  __src = va_arg(va1, void);
  v25 = va_arg(va1, void);
  v26 = va_arg(va1, void);
  v27 = va_arg(va1, void);
  v28 = va_arg(va1, void);
  v29 = va_arg(va1, void);
  v30 = va_arg(va1, void);
  v31 = va_arg(va1, void);
  v32 = va_arg(va1, void);
  v33 = va_arg(va1, void);
  v34 = va_arg(va1, void);
  v35 = va_arg(va1, void);

  return memcpy(&a9 + 7, __srca, 0x60uLL);
}

uint64_t getEnumTagSinglePayload for AccessGroup(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

unint64_t sub_18E15C068()
{
  result = qword_1EABD0220;
  if (!qword_1EABD0220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0220);
  }

  return result;
}

uint64_t sub_18E15C124@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void (*a4)(void)@<X3>, uint64_t *a6@<X8>)
{
  v23 = a6;
  v9 = sub_18E161880(a2, a3);
  sub_18E159050();
  v22 = v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v21 - v13;
  sub_18E158E00(a1, a1[3]);
  a4();
  sub_18E1A7CC0();
  if (!v6)
  {
    v15 = v22;
    v16 = v23;
    v17 = sub_18E1A7A50();
    v19 = v18;
    (*(v15 + 8))(v14, v9);
    *v16 = v17;
    v16[1] = v19;
  }

  return sub_18E158EC4(a1);
}

unint64_t sub_18E15C2AC()
{
  result = qword_1EABD0108;
  if (!qword_1EABD0108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0108);
  }

  return result;
}

unint64_t sub_18E15C304()
{
  result = qword_1EABD0110;
  if (!qword_1EABD0110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0110);
  }

  return result;
}

unint64_t sub_18E15C358()
{
  result = qword_1EABD0118;
  if (!qword_1EABD0118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0118);
  }

  return result;
}

_BYTE *sub_18E15C3D4(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x18E15C470);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_18E15C4A0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void sub_18E15C4DC()
{

  os_activity_scope_leave(v0 + 1);
}

uint64_t sub_18E15C500(uint64_t a1, uint64_t a2)
{

  return sub_18E1A79F0();
}

void sub_18E15C578()
{
  v1[1].opaque[1] = 0;
  v1[1].opaque[0] = 0;

  os_activity_scope_enter(v0, v1 + 1);
}

__n128 sub_18E15C5B4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t ModelBundleInfoForSanitizer.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = sub_18E161880(&qword_1EABD0A98, &qword_18E1ABD40);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v20 - v6;
  v8 = sub_18E161880(&qword_1EABD0AA8, &qword_18E1ABD50);
  sub_18E159050();
  v22 = v9;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v20 - v12;
  v14 = type metadata accessor for ModelBundleInfoForSanitizer(0);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18E158E00(a1, a1[3]);
  sub_18E15C810();
  sub_18E1A7CC0();
  if (!v2)
  {
    v18 = v21;
    sub_18E1A6D10();
    sub_18E15C864(&qword_1EABCFE70, MEMORY[0x1E6968FD0]);
    sub_18E1A7A30();
    (*(v22 + 8))(v13, v8);
    sub_18E15C990(v7, v17);
    sub_18E15A594(v17, v18);
  }

  return sub_18E158EC4(a1);
}

unint64_t sub_18E15C810()
{
  result = qword_1ED8D96F8;
  if (!qword_1ED8D96F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8D96F8);
  }

  return result;
}

uint64_t sub_18E15C864(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_18E1A6D10();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ModelBundleInfoForSanitizer.CodingKeys(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x18E15C968);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_18E15C990(uint64_t a1, uint64_t a2)
{
  v4 = sub_18E161880(&qword_1EABD0A98, &qword_18E1ABD40);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_18E15CA18(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

__n128 sub_18E15CA58(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t InputDenyListBundle.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_18E15CAB0(uint64_t a1)
{

  return sub_18E1A7B30();
}

uint64_t DenyListUtility.DenyList.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_18E161880(&qword_1EABD1260, &qword_18E1B04C8);
  sub_18E159050();
  MEMORY[0x1EEE9AC00](v5, v6);
  sub_18E158E00(a1, a1[3]);
  sub_18E15CF68();
  sub_18E1A7CC0();
  if (v2)
  {
    return sub_18E158EC4(a1);
  }

  sub_18E161880(&qword_1EABD08A0, &qword_18E1AB268);
  sub_18E15CFBC(&qword_1EABCFFE0, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
  sub_18E159644();
  sub_18E1A7A80();
  sub_18E159644();
  sub_18E1A7A30();
  v8 = v13;
  if (!v13)
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  v12 = v8;
  sub_18E161880(&qword_1EABD1258, &qword_18E1B04C0);
  sub_18E15D3CC(&qword_1ED8D9968, MEMORY[0x1E69E6190], MEMORY[0x1E69E5E58]);
  sub_18E1A7A30();
  if (v13)
  {
    v11 = v13;
  }

  else
  {
    v11 = sub_18E1A7490();
  }

  sub_18E159644();
  sub_18E1A7A30();
  sub_18E159644();
  sub_18E1A7A30();
  sub_18E1A7A30();
  v9 = sub_18E15D7C0();
  v10(v9);
  *a2 = v13;
  a2[1] = v12;
  a2[2] = v11;
  a2[3] = v13;
  a2[4] = v13;
  a2[5] = v13;

  sub_18E158EC4(a1);
}

unint64_t sub_18E15CF68()
{
  result = qword_1EABD0080;
  if (!qword_1EABD0080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0080);
  }

  return result;
}

uint64_t sub_18E15CFBC(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_18E169A64(&qword_1EABD08A0, &qword_18E1AB268);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_18E15D048(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_18E15D068()
{
  *(v1 - 96) = *(v1 - 112);
  *(v1 - 65) = v0;
  return v1 - 65;
}

_OWORD *sub_18E15D098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  *(v12 - 72) = v9;

  return sub_18E177BF0(&v15, v10, v11, a1);
}

uint64_t sub_18E15D0C0(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_18E15D178(char a1)
{
  result = 0x7463656A6572;
  switch(a1)
  {
    case 1:
      result = 0x65766F6D6572;
      break;
    case 2:
      result = 0x6563616C706572;
      break;
    case 3:
      result = 0x6A65527865676572;
      break;
    case 4:
      result = 0x6D65527865676572;
      break;
    case 5:
      result = 0x7065527865676572;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DenyListUtility.DenyList.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x18E15D31CLL);
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

uint64_t getEnumTagSinglePayload for DenyListUtility.DenyList.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
    if (a2 + 5 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 5) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_18E15D3CC(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_18E169A64(&qword_1EABD1258, &qword_18E1B04C0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_18E15D438(uint64_t a1, uint64_t a2)
{

  return sub_18E1A7AD0();
}

void sub_18E15D484(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_18E15D4A4()
{

  return swift_getWitnessTable();
}

uint64_t sub_18E15D4EC()
{

  return swift_allocObject();
}

void *sub_18E15D50C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char __src)
{
  v31 = (*(v28 + 56) + 464 * v29);

  return memcpy(v31, &__src, 0x1D0uLL);
}

uint64_t sub_18E15D530(uint64_t a1, uint64_t a2)
{

  return sub_18E1A7AD0();
}

uint64_t sub_18E15D564(uint64_t result)
{
  *(result + 24) = 0;
  *(result + 16) = 0;
  *(v1 + 16) = result;
  return result;
}

unint64_t sub_18E15D574()
{
  result = qword_1EABCFFE8[0];
  if (!qword_1EABCFFE8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EABCFFE8);
  }

  return result;
}

uint64_t sub_18E15D5F4(uint64_t a1, uint64_t a2)
{

  return sub_18E1A79F0();
}

double sub_18E15D628()
{
  result = 0.0;
  v0[5] = 0u;
  v0[6] = 0u;
  v0[4] = 0u;
  return result;
}

void *sub_18E15D660(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char __src)
{
  v28 = (*(v25 + 56) + 464 * v26);

  return memcpy(v28, &__src, 0x1D0uLL);
}

uint64_t sub_18E15D6B8(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_18E15D6FC(uint64_t a1, uint64_t a2)
{

  return sub_18E1A7A80();
}

uint64_t sub_18E15D71C(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_18E15D73C(uint64_t a1)
{

  return sub_18E159EBC(v1, 1, 1, a1);
}

uint64_t sub_18E15D768(uint64_t a1)
{
  *(a1 + 24) = 0;
  *(a1 + 16) = v1;
  *(v2 + 16) = a1;
  return v2;
}

uint64_t sub_18E15D7D0@<X0>(uint64_t a1@<X8>)
{
  v4 = *(*(v2 - 288) + 56) + 32 * (v1 | (a1 << 6));

  return sub_18E16BBD0(v4, v2 - 240);
}

uint64_t sub_18E15D810()
{

  return sub_18E1A7B30();
}

void *sub_18E15D854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{

  return memcpy(&a58, (v58 + 8), 0x58uLL);
}

__n128 sub_18E15D8A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a16, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13, char a14, uint64_t a15, __n128 a17)
{
  *v17 = a13;
  *(v17 + 16) = a14;
  *(v17 + 24) = a15;
  result = a17;
  *(v17 + 32) = a17;
  return result;
}

uint64_t sub_18E15D8CC(uint64_t a1, uint64_t a2)
{

  return sub_18E1A79F0();
}

uint64_t sub_18E15D8E8(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t sub_18E15D90C(uint64_t a1)
{

  return sub_18E1A7CC0();
}

uint64_t sub_18E15D944(uint64_t a1, uint64_t a2)
{

  return sub_18E1A79F0();
}

uint64_t sub_18E15D968()
{

  return swift_beginAccess();
}

void sub_18E15D9B0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

__n128 sub_18E15D9E4()
{
  *(v0 + 560) = v1;
  v2 = *(v0 + 80);
  *(v0 + 16) = *(v0 + 64);
  *(v0 + 32) = v2;
  result = *(v0 + 96);
  *(v0 + 48) = result;
  *(v0 + 576) = *(v0 + 24);
  return result;
}

uint64_t sub_18E15DA04(unint64_t *a1)
{
  v3 = MEMORY[0x1E69C64F8];

  return sub_18E182094(a1, v1, v3);
}

void sub_18E15DA9C()
{
  sub_18E158EC4(v0);

  JUMPOUT(0x193ACB8D0);
}

uint64_t sub_18E15DB14()
{

  return swift_slowAlloc();
}

uint64_t sub_18E15DB30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);

  return sub_18E18CC14(a1, va, v20, v21);
}

uint64_t sub_18E15DB4C(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t sub_18E15DB68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{

  return sub_18E18CB80(&STACK[0x308], &a65);
}

uint64_t sub_18E15DB80()
{
  *v1 = v0;

  return sub_18E1A7A00();
}

uint64_t sub_18E15DBB0(uint64_t a1)
{

  return sub_18E1A7B30();
}

uint64_t sub_18E15DBF8(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_18E15DC38()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_18E15DD2C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t sub_18E15DD7C(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  sub_18E1A7C60();
  MEMORY[0x193ACB0A0](*a1);
  sub_18E1A7830();
  v6 = sub_18E1A7CA0();
  return sub_18E15DE64(a1, v6, a2, a3);
}

uint64_t SensitiveContentSettings.hash(into:)()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  result = MEMORY[0x193ACB0A0](v2);
  if (v2)
  {
    v4 = (v1 + 32);
    do
    {
      v5 = *v4++;
      result = MEMORY[0x193ACB0A0](v5);
      --v2;
    }

    while (v2);
  }

  return result;
}

unint64_t sub_18E15DE64(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a2 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v9 = ~v5;
    v10 = a1 + 1;
    v11 = *a1;
    do
    {
      sub_18E15DF6C(*(v4 + 48) + 48 * v6, &v20, a3, a4);
      if (v20 == v11)
      {
        v15 = MEMORY[0x193ACAC50](&v21, v10);
        sub_18E15A84C();
        sub_18E178150(v16, v17, v18);
        if (v15)
        {
          return v6;
        }
      }

      else
      {
        sub_18E15A84C();
        sub_18E178150(v12, v13, v14);
      }

      v6 = (v6 + 1) & v9;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

uint64_t sub_18E15DF6C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_18E161880(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_18E15DFE0(uint64_t result, uint64_t a2)
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

uint64_t sub_18E15E054@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v7 = v6;
  if (*(*a1 + 16) && (sub_18E15DD68(a2), (v14 & 1) != 0))
  {
    type metadata accessor for ModelCache.ModelHolder(0, a4, a5, v13);
    *a6 = swift_dynamicCastClassUnconditional();
  }

  else
  {
    if (qword_1ED8D94C8 != -1)
    {
      swift_once();
    }

    v16 = sub_18E1A7360();
    sub_18E1592FC(v16, qword_1ED8D94D0);
    v17 = sub_18E1A7340();
    v18 = sub_18E1A7700();
    if (os_log_type_enabled(v17, v18))
    {
      v28 = a4;
      v19 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v29 = v27;
      *v19 = 136315138;
      v20 = sub_18E1A7D10();
      v22 = sub_18E1694A4(v20, v21, &v29);

      *(v19 + 4) = v22;
      v7 = v6;
      _os_log_impl(&dword_18E157000, v17, v18, "Model Caching - %s does not exist, creating new model holder", v19, 0xCu);
      sub_18E158EC4(v27);
      MEMORY[0x193ACB8D0](v27, -1, -1);
      v23 = v19;
      a4 = v28;
      MEMORY[0x193ACB8D0](v23, -1, -1);
    }

    type metadata accessor for ModelCache.ModelHolder(0, a4, a5, v24);
    result = sub_18E17C698();
    if (!v7)
    {
      v25 = result;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v29 = *a1;
      result = sub_18E177F28(v25, a2, isUniquelyReferenced_nonNull_native);
      *a1 = v29;
      *a6 = v25;
    }
  }

  return result;
}

void sub_18E15E2FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = v4[2];
  v9 = *(v5 + 88);
  v10 = a1;
  type metadata accessor for GMFWeakReference(255, v9, a3, a4);
  v7 = sub_18E1A77A0();
  sub_18E15E7F4(sub_18E15E74C, &v8, v6, v7, v9);
}

void *ModelCache.getModel<A>(modelType:modelConfiguration:prewarm:keepAlive:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = v7;
  v37 = a4;
  v38 = a5;
  v48 = a3;
  v14 = sub_18E161880(&qword_1EABD0AB8, &qword_18E1ABEF0);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = v36 - v16;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_18E1A79D0();
  type metadata accessor for ModelCache.ModelHolderBase();
  v47 = a1;
  v18 = *(v9 + 16);
  v40 = a6;
  v41 = a7;
  v42 = &v47;
  v43 = a1;
  v19 = sub_18E161880(&qword_1EABD0AC0, &qword_18E1ABEF8);
  v21 = type metadata accessor for ModelCache.ModelHolder(0, a6, a7, v20);
  sub_18E15E7F4(sub_18E17CE20, v39, v18, v19, v21);
  if (!v8)
  {
    v25 = v48;
    v36[2] = a1;
    v36[3] = v9;
    v26 = v44;
    sub_18E15E2FC(a2, v22, v23, v24);
    v19 = v27;
    v36[1] = v26;
    if (v25)
    {
      sub_18E1A76B0();
      v29 = sub_18E1A76D0();
      sub_18E159EBC(v17, 0, 1, v29);
      v30 = swift_allocObject();
      v30[2] = 0;
      v30[3] = 0;
      v30[4] = a6;
      v30[5] = a7;
      v30[6] = v19;
      swift_unknownObjectRetain();
      sub_18E17CEEC(0, 0, v17, &unk_18E1ABF10, v30);
    }

    v32 = v37;
    v31 = v38;
    if (sub_18E1A7CE0())
    {
      v44 = 0;
      v45 = 0xE000000000000000;
      sub_18E1A7870();

      v44 = 0xD000000000000015;
      v45 = 0x800000018E1B27B0;
      (*(a7 + 40))(a6, a7);
      v33 = sub_18E1A7880();
      MEMORY[0x193ACAA20](v33);

      v35 = v44;
      v34 = v45;
      v46 = a6;
      v44 = v19;
      swift_unknownObjectRetain();
      sub_18E17D17C(v35, v34, v32, v31, &v44);

      sub_18E158EC4(&v44);
    }

    else
    {
    }
  }

  sub_18E178150(&v47, &qword_1EABD0980, &qword_18E1ABF00);
  return v19;
}

uint64_t sub_18E15E70C()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

void sub_18E15E76C(uint64_t a1, os_unfair_lock_t lock, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  os_unfair_lock_lock(lock);
  a3(a1);
  os_unfair_lock_unlock(lock);
  if (v7)
  {
    *a7 = v7;
  }
}

uint64_t sub_18E15E880@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v6 = v5;
  v62 = a2;
  v54 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v59 = *(AssociatedTypeWitness - 8);
  v60 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v11);
  v58 = &v51 - v12;
  v13 = sub_18E1A72B0();
  v56 = *(v13 - 8);
  v57 = v13;
  v15 = MEMORY[0x1EEE9AC00](v13, v14);
  v55 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v51 - v18;
  v20 = sub_18E1A7360();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v22);
  v24 = &v51 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_18E1A72E0();
  v63 = *(v25 - 8);
  v64 = v25;
  MEMORY[0x1EEE9AC00](v25, v26);
  v61 = &v51 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(a1 + 8) & 1) != 0 || (v30 = type metadata accessor for GMFWeakReference(0, a3, v27, v28), v52 = v19, v53 = a3, v31 = v30, v32 = *(v30 - 8), (*(v32 + 16))(&v65, a1, v30), sub_18E15EE30(v31, &v67), v33 = v31, v19 = v52, result = (*(v32 + 8))(&v65, v33), v6 = v5, a3 = v53, !v67))
  {
    v51 = a1;
    if (qword_1ED8DA268 != -1)
    {
      swift_once();
    }

    v35 = sub_18E1592FC(v20, qword_1ED8DA270);
    (*(v21 + 16))(v24, v35, v20);
    v36 = v61;
    sub_18E1A72C0();
    sub_18E1A72D0();
    sub_18E1A7290();
    v37 = sub_18E1A72D0();
    v38 = sub_18E1A7750();
    v39 = v19;
    if (sub_18E1A7780())
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      v41 = sub_18E1A72A0();
      _os_signpost_emit_with_name_impl(&dword_18E157000, v37, v38, v41, "ModelCache.ModelLoad", "", v40, 2u);
      MEMORY[0x193ACB8D0](v40, -1, -1);
    }

    v42 = v56;
    v43 = v57;
    (*(v56 + 16))(v55, v39, v57);
    sub_18E1A7320();
    swift_allocObject();
    v44 = sub_18E1A7310();
    (*(v42 + 8))(v39, v43);
    v45 = v58;
    (*(v59 + 16))(v58, v62, v60);
    v46 = (*(a4 + 32))(v45, a3, a4);
    if (!v6)
    {
      v47 = v46;
      v67 = v46;
      swift_unknownObjectRetain();
      sub_18E17CB10(&v67);
      v66 = 0;
      type metadata accessor for GMFWeakReference(255, a3, v48, v49);
      v50 = sub_18E1A77A0();
      (*(*(v50 - 8) + 40))(v51, &v65, v50);
      *v54 = v47;
    }

    sub_18E17C748(v36, "ModelCache.ModelLoad", 20, 2, v44, a3, a4);

    return (*(v63 + 8))(v36, v64);
  }

  else
  {
    *v54 = v67;
  }

  return result;
}

uint64_t sub_18E15EE30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_unknownObjectWeakLoadStrong();
  sub_18E161880(&qword_1EABD0AD0, &qword_18E1AC158);
  v4 = *(a1 + 16);
  v5 = swift_dynamicCast();
  return sub_18E159EBC(a2, v5 ^ 1u, 1, v4);
}

uint64_t FailureTrackingClientProvider.__allocating_init(catalogClient:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t FailureTrackingClientProvider.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_18E15EF2C()
{
  v2 = *v1;
  v3 = *v1;
  sub_18E159064();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 128) = v0;

  sub_18E15F0C0(*(v3 + 16), *(v2 + 24), *(v3 + 32));

  if (v0)
  {
    v5 = sub_18E1854DC;
  }

  else
  {
    v5 = sub_18E15F0D8;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_18E15F0C4(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_18E15F12C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18E15F0E0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_18E15F2FC()
{

  v0 = sub_18E15CF58();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_18E15F338(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_18E15933C();
  type metadata accessor for DocumentRegistration.Status(v6);
  sub_18E159F5C();
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3;
  }

  else
  {
    type metadata accessor for DocumentRegistration.InternalStatus(0);
    sub_18E159F5C();
    if (*(v12 + 84) == a2)
    {
      v9 = v11;
      v13 = *(a3 + 20);
    }

    else
    {
      v9 = sub_18E1A6D10();
      v13 = *(a3 + 24);
    }

    v10 = v3 + v13;
  }

  return sub_18E15D690(v10, a2, v9);
}

uint64_t sub_18E15F40C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_18E15933C();
  type metadata accessor for DocumentRegistration.Status(v8);
  sub_18E159F5C();
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v4;
  }

  else
  {
    type metadata accessor for DocumentRegistration.InternalStatus(0);
    sub_18E159F5C();
    if (*(v14 + 84) == a3)
    {
      v11 = v13;
      v15 = *(a4 + 20);
    }

    else
    {
      v11 = sub_18E1A6D10();
      v15 = *(a4 + 24);
    }

    v12 = v4 + v15;
  }

  return sub_18E159EBC(v12, a2, a2, v11);
}

uint64_t sub_18E15F4F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_18E15A9FC();
  v6 = sub_18E1A6D10();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_18E15D690(v3, a2, v6);
  }

  else
  {
    v8 = *(v3 + *(a3 + 24));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_18E15F598(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_18E1A6D10();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_18E159EBC(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_18E15F824()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_18E15F864(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
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
    v9 = sub_18E1A7360();
    v10 = a1 + *(a3 + 20);

    return sub_18E15D690(v10, a2, v9);
  }
}

uint64_t sub_18E15F8F8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_18E1A7360();
    v8 = v5 + *(a4 + 20);

    return sub_18E159EBC(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_18E15FA60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_18E1A6F70();
  sub_18E159F5C();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    sub_18E1A6D90();
    sub_18E159F5C();
    if (*(v11 + 84) != a2)
    {
      v13 = *(a1 + *(a3 + 28));
      if (v13 >= 3)
      {
        return v13 - 2;
      }

      else
      {
        return 0;
      }
    }

    v8 = v10;
    v9 = a1 + *(a3 + 20);
  }

  return sub_18E15D690(v9, a2, v8);
}

void sub_18E15FB48(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_18E1A6F70();
  sub_18E159F5C();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    sub_18E1A6D90();
    sub_18E159F5C();
    if (*(v13 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = a2 + 2;
      return;
    }

    v10 = v12;
    v11 = a1 + *(a4 + 20);
  }

  sub_18E159EBC(v11, a2, a2, v10);
}

uint64_t sub_18E15FCC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_18E161880(&qword_1EABD0A98, &qword_18E1ABD40);

  return sub_18E15D690(a1, a2, v4);
}

uint64_t sub_18E15FD1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_18E161880(&qword_1EABD0A98, &qword_18E1ABD40);

  return sub_18E159EBC(a1, a2, a2, v4);
}

uint64_t sub_18E15FD74()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_18E15FDBC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_18E17ECF0(a2, a3);
  *a1 = result & 1;
  return result;
}

uint64_t sub_18E15FE78(uint64_t a1, int a2)
{
  if (a2 == 0x7FFFFFFF)
  {
    return sub_18E15A8BC(*(a1 + 120));
  }

  type metadata accessor for StringRenderedPromptSanitizerRunnerConfiguration(0);
  v3 = sub_18E15AA9C();

  return sub_18E15D690(v3, v4, v5);
}

void sub_18E15FEEC()
{
  sub_18E15DA2C();
  if (v2)
  {
    *(v1 + 120) = (v0 - 1);
  }

  else
  {
    type metadata accessor for StringRenderedPromptSanitizerRunnerConfiguration(0);
    v3 = sub_18E15AA9C();

    sub_18E159EBC(v3, v4, v0, v5);
  }
}

unint64_t sub_18E15FF58(uint64_t a1, uint64_t a2)
{
  v2 = sub_18E1A79E0();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_18E15FFA4(char a1)
{
  result = 5461583;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0x72657470616461;
      break;
    case 3:
      result = 0x6566615365646F63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_18E160110@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_18E18A9B0(a2, a3);
  *a1 = result & 1;
  return result;
}

uint64_t sub_18E160168(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_18E160228(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ModelBundleInfoForSanitizer(0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_8:

    return sub_18E15D690(v8, a2, v7);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v7 = sub_18E1A6D90();
    v8 = a1 + *(a3 + 28);
    goto LABEL_8;
  }

  v9 = *(a1 + *(a3 + 20) + 8);
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_18E1602FC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ModelBundleInfoForSanitizer(0);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + *(a4 + 20) + 8) = (a2 - 1);
      return result;
    }

    v9 = sub_18E1A6D90();
    v10 = a1 + *(a4 + 28);
  }

  return sub_18E159EBC(v10, a2, a2, v9);
}

uint64_t sub_18E160404()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_18E16043C(char a1)
{
  if (a1)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0x6C646E75426D6C6CLL;
  }
}

uint64_t sub_18E1604A0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_18E193924(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_18E1604C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_18E15933C();
  v7 = type metadata accessor for ModelBundleInfoForSanitizer(v6);
  if (*(*(v7 - 8) + 84) == a2)
  {
    v8 = v7;
    v9 = v3;
LABEL_8:

    return sub_18E15D690(v9, a2, v8);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v8 = sub_18E1A6D90();
    v9 = v3 + *(a3 + 28);
    goto LABEL_8;
  }

  v10 = *(v3 + *(a3 + 20) + 8);
  if (v10 >= 0xFFFFFFFF)
  {
    LODWORD(v10) = -1;
  }

  return (v10 + 1);
}

uint64_t sub_18E160598(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_18E15933C();
  result = type metadata accessor for ModelBundleInfoForSanitizer(v8);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v11 = v4;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(v4 + *(a4 + 20) + 8) = (a2 - 1);
      return result;
    }

    v10 = sub_18E1A6D90();
    v11 = v4 + *(a4 + 28);
  }

  return sub_18E159EBC(v11, a2, a2, v10);
}

uint64_t sub_18E160984(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for PromptTemplate.ModelBundleID(0);
  sub_18E159F5C();
  if (*(v7 + 84) == a2)
  {

    return sub_18E15D690(a1, a2, v6);
  }

  else
  {
    v9 = *(a1 + *(a3 + 20) + 8);
    if (v9 >= 0xFFFFFFFF)
    {
      LODWORD(v9) = -1;
    }

    return (v9 + 1);
  }
}

void sub_18E160A30(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  type metadata accessor for PromptTemplate.ModelBundleID(0);
  sub_18E159F5C();
  if (*(v9 + 84) == a3)
  {

    sub_18E159EBC(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }
}

uint64_t sub_18E160B90@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_18E1641C8(a2, a3);
  *a1 = result & 1;
  return result;
}

uint64_t *sub_18E160BD8()
{
  if (qword_1EABD0138 != -1)
  {
    sub_18E15A9DC(&qword_1EABD0138);
  }

  return &qword_1EABD0140;
}

id static AvailabilityXPCService.interface.getter()
{
  if (qword_1EABD0138 != -1)
  {
    sub_18E15A9DC(&qword_1EABD0138);
  }

  sub_18E15D8E8(&qword_1EABD0140, v2);
  v0 = qword_1EABD0140;

  return v0;
}

void static AvailabilityXPCService.interface.setter(uint64_t a1)
{
  v1 = a1;
  if (qword_1EABD0138 != -1)
  {
    a1 = sub_18E15A9DC(&qword_1EABD0138);
  }

  sub_18E15BC90(a1);
  v2 = qword_1EABD0140;
  qword_1EABD0140 = v1;
}

uint64_t static AvailabilityXPCService.interface.modify()
{
  if (qword_1EABD0138 != -1)
  {
    sub_18E15A9DC(&qword_1EABD0138);
  }

  sub_18E15D968();
  return sub_18E15D874();
}

id sub_18E160D48@<X0>(void *a1@<X8>)
{
  sub_18E160BD8();
  swift_beginAccess();
  v2 = qword_1EABD0140;
  *a1 = qword_1EABD0140;

  return v2;
}

void sub_18E160DA8(id *a1)
{
  v1 = *a1;
  sub_18E160BD8();
  swift_beginAccess();
  v2 = qword_1EABD0140;
  qword_1EABD0140 = v1;
}

uint64_t sub_18E160E90(uint64_t *a1, void *a2)
{
  sub_18E15D8E8(a1, v5);
  v3 = *a1;

  return v3;
}

uint64_t sub_18E160EE8(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  swift_beginAccess();
  *a3 = a1;
  *a4 = a2;
}

uint64_t sub_18E160F9C@<X0>(void *a1@<X3>, uint64_t *a2@<X4>, void *a3@<X8>)
{
  sub_18E15D8E8(a1, v8);
  v6 = *a2;
  *a3 = *a1;
  a3[1] = v6;
}

uint64_t sub_18E161000(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t *a6)
{
  v9 = *a1;
  v8 = a1[1];
  swift_beginAccess();
  *a5 = v9;
  *a6 = v8;
}

uint64_t *sub_18E161084()
{
  if (qword_1EABD0170 != -1)
  {
    sub_18E15D6B8(&qword_1EABD0170);
  }

  return &qword_1EABD0168;
}

uint64_t static AvailabilityXPCService.selectorClasses.getter()
{
  if (qword_1EABD0170 != -1)
  {
    sub_18E15D6B8(&qword_1EABD0170);
  }

  sub_18E15D8E8(&qword_1EABD0168, v1);
}

uint64_t static AvailabilityXPCService.selectorClasses.setter(uint64_t a1)
{
  v1 = a1;
  if (qword_1EABD0170 != -1)
  {
    a1 = sub_18E15D6B8(&qword_1EABD0170);
  }

  sub_18E15BC90(a1);
  qword_1EABD0168 = v1;
}

uint64_t static AvailabilityXPCService.selectorClasses.modify()
{
  if (qword_1EABD0170 != -1)
  {
    sub_18E15D6B8(&qword_1EABD0170);
  }

  sub_18E15D968();
  return sub_18E15D874();
}

uint64_t sub_18E1611E8@<X0>(void *a1@<X8>)
{
  sub_18E161084();
  swift_beginAccess();
  *a1 = qword_1EABD0168;
}

uint64_t sub_18E16123C(uint64_t *a1)
{
  v1 = *a1;

  sub_18E161084();
  swift_beginAccess();
  qword_1EABD0168 = v1;
}

uint64_t sub_18E161298()
{
  v0 = sub_18E1A7360();
  sub_18E16BD84(v0, qword_1EABD0150);
  v1 = sub_18E1592FC(v0, qword_1EABD0150);
  if (qword_1ED8D9B48 != -1)
  {
    swift_once();
  }

  v2 = sub_18E1592FC(v0, qword_1ED8D9780);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_18E161360()
{
  if (qword_1EABD0148 != -1)
  {
    sub_18E1594AC(&qword_1EABD0148);
  }

  v0 = sub_18E1A7360();

  return sub_18E1592FC(v0, qword_1EABD0150);
}

uint64_t static AvailabilityXPCService.logger.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EABD0148 != -1)
  {
    sub_18E1594AC(&qword_1EABD0148);
  }

  v2 = sub_18E1A7360();
  v3 = sub_18E1592FC(v2, qword_1EABD0150);
  sub_18E15D8E8(v3, v6);
  sub_18E1594D8();
  return (*(v4 + 16))(a1, v3, v2);
}

uint64_t static AvailabilityXPCService.logger.setter(uint64_t a1)
{
  if (qword_1EABD0148 != -1)
  {
    sub_18E1594AC(&qword_1EABD0148);
  }

  v2 = sub_18E1A7360();
  v3 = sub_18E1592FC(v2, qword_1EABD0150);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t static AvailabilityXPCService.logger.modify(uint64_t a1)
{
  if (qword_1EABD0148 != -1)
  {
    sub_18E1594AC(&qword_1EABD0148);
  }

  v1 = sub_18E1A7360();
  sub_18E1592FC(v1, qword_1EABD0150);
  swift_beginAccess();
  return sub_18E15D874();
}

uint64_t sub_18E1615BC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_18E161360();
  swift_beginAccess();
  v3 = sub_18E1A7360();
  return (*(*(v3 - 8) + 16))(a1, v2, v3);
}

uint64_t sub_18E161638(uint64_t a1)
{
  v2 = sub_18E161360();
  swift_beginAccess();
  v3 = sub_18E1A7360();
  (*(*(v3 - 8) + 24))(v2, a1, v3);
  return swift_endAccess();
}

uint64_t sub_18E1616E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for AvailabilityFoundationClient.Delegate();

  return MEMORY[0x1EEE2EE60](a1, v5, a3);
}

uint64_t AvailabilityFoundationClient.__allocating_init()()
{
  sub_18E15CF58();
  v0 = swift_allocObject();
  AvailabilityFoundationClient.init()();
  return v0;
}

uint64_t AvailabilityFoundationClient.init()()
{
  *(v0 + 16) = 0;
  type metadata accessor for AvailabilityFoundationClient.Delegate();
  *(v0 + 24) = swift_allocObject();
  sub_18E16BB88(&qword_1ED8D9B78, type metadata accessor for AvailabilityFoundationClient.Delegate, &unk_18E1AA144);
  sub_18E161880(&qword_1EABD02A8, &qword_18E1A87C0);
  swift_allocObject();

  *(v0 + 16) = sub_18E1A7130();

  return v0;
}

uint64_t sub_18E161880(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t AvailabilityFoundationClient.CloudSubscriptionFeaturesAvailabilityWrapper.availability.getter@<X0>(unint64_t *a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return sub_18E1618D4(v2);
}

unint64_t sub_18E1618D4(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

uint64_t sub_18E161948@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18E161914();
  *a1 = result & 1;
  return result;
}

uint64_t sub_18E161974(uint64_t a1)
{
  v2 = sub_18E162E9C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E1619B0(uint64_t a1)
{
  v2 = sub_18E162E9C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18E1619EC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x800000018E1B1EB0 == a2;
  if (v3 || (sub_18E1A7B90() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD00000000000001ALL && 0x800000018E1B1ED0 == a2;
    if (v6 || (sub_18E1A7B90() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000010 && 0x800000018E1B1EF0 == a2;
      if (v7 || (sub_18E1A7B90() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000015 && 0x800000018E1B1F10 == a2;
        if (v8 || (sub_18E1A7B90() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6F506E6F69676572 && a2 == 0xEC0000007963696CLL;
          if (v9 || (sub_18E1A7B90() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000010 && 0x800000018E1B1F30 == a2;
            if (v10 || (sub_18E1A7B90() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x4E73497465737361 && a2 == 0xEF7964616552746FLL;
              if (v11 || (sub_18E1A7B90() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x53664F74726F6873 && a2 == 0xEE00656761726F74;
                if (v12 || (sub_18E1A7B90() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x646574704F746F6ELL && a2 == 0xEA00000000006E49;
                  if (v13 || (sub_18E1A7B90() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000019 && 0x800000018E1B1F50 == a2;
                    if (v14 || (sub_18E1A7B90() & 1) != 0)
                    {

                      return 9;
                    }

                    else if (a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000)
                    {

                      return 10;
                    }

                    else
                    {
                      v16 = sub_18E1A7B90();

                      if (v16)
                      {
                        return 10;
                      }

                      else
                      {
                        return 11;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_18E161D64(char a1)
{
  result = 0x6F506E6F69676572;
  switch(a1)
  {
    case 1:
      v3 = 10;
      goto LABEL_8;
    case 2:
      return 0xD000000000000010;
    case 3:
      v3 = 5;
      goto LABEL_8;
    case 4:
      return result;
    case 5:
      return 0xD000000000000010;
    case 6:
      return 0x4E73497465737361;
    case 7:
      return 0x53664F74726F6873;
    case 8:
      return 0x646574704F746F6ELL;
    case 9:
      v3 = 9;
LABEL_8:
      result = v3 | 0xD000000000000010;
      break;
    case 10:
      result = 0x6E776F6E6B6E75;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_18E161EBC(uint64_t a1)
{
  v2 = sub_18E162E48();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E161EF8(uint64_t a1)
{
  v2 = sub_18E162E48();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18E161F3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18E1619EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18E161F84@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18E161D5C();
  *a1 = result;
  return result;
}

uint64_t sub_18E161FAC(uint64_t a1)
{
  v2 = sub_18E162CA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E161FE8(uint64_t a1)
{
  v2 = sub_18E162CA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18E162024(uint64_t a1)
{
  v2 = sub_18E163040();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E162060(uint64_t a1)
{
  v2 = sub_18E163040();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18E16209C(uint64_t a1)
{
  v2 = sub_18E162F44();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E1620D8(uint64_t a1)
{
  v2 = sub_18E162F44();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18E162114(uint64_t a1)
{
  v2 = sub_18E162DA0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E162150(uint64_t a1)
{
  v2 = sub_18E162DA0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18E16218C(uint64_t a1)
{
  v2 = sub_18E162F98();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E1621C8(uint64_t a1)
{
  v2 = sub_18E162F98();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18E162204(uint64_t a1)
{
  v2 = sub_18E162EF0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E162240(uint64_t a1)
{
  v2 = sub_18E162EF0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18E16227C(uint64_t a1)
{
  v2 = sub_18E162FEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E1622B8(uint64_t a1)
{
  v2 = sub_18E162FEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18E1622F4(uint64_t a1)
{
  v2 = sub_18E162DF4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E162330(uint64_t a1)
{
  v2 = sub_18E162DF4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18E16236C(uint64_t a1)
{
  v2 = sub_18E162D4C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E1623A8(uint64_t a1)
{
  v2 = sub_18E162D4C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18E1623E4(uint64_t a1)
{
  v2 = sub_18E162CF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E162420(uint64_t a1)
{
  v2 = sub_18E162CF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AvailabilityFoundationClient.CloudSubscriptionFeaturesAvailabilityWrapper.Availability.UnavailabilityInfo.UnavailabilityReason.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_18E159F44();
  a19 = v24;
  a20 = v25;
  v26 = v20;
  v28 = v27;
  sub_18E161880(&qword_1EABD02B0, &qword_18E1A87C8);
  sub_18E159050();
  v115 = v30;
  v116 = v29;
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v31, v32);
  sub_18E15A1EC();
  v114 = v33;
  sub_18E161880(&qword_1EABD02B8, &qword_18E1A87D0);
  sub_18E159050();
  v112 = v35;
  v113 = v34;
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v36, v37);
  sub_18E15A1EC();
  v111 = v38;
  sub_18E161880(&qword_1EABD02C0, &qword_18E1A87D8);
  sub_18E159050();
  v109 = v40;
  v110 = v39;
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v41, v42);
  sub_18E15A1EC();
  v108 = v43;
  sub_18E161880(&qword_1EABD02C8, &qword_18E1A87E0);
  sub_18E159050();
  v106 = v45;
  v107 = v44;
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v46, v47);
  sub_18E15A1EC();
  v105 = v48;
  sub_18E161880(&qword_1EABD02D0, &qword_18E1A87E8);
  sub_18E159050();
  v103 = v50;
  v104 = v49;
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v51, v52);
  sub_18E15A1EC();
  v102 = v53;
  sub_18E161880(&qword_1EABD02D8, &qword_18E1A87F0);
  sub_18E159050();
  v100 = v55;
  v101 = v54;
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v56, v57);
  sub_18E15A1EC();
  sub_18E16C088(v58);
  v98 = sub_18E161880(&qword_1EABD02E0, &qword_18E1A87F8);
  sub_18E159050();
  v97 = v59;
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v60, v61);
  sub_18E15A1EC();
  sub_18E16C088(v62);
  v95 = sub_18E161880(&qword_1EABD02E8, &qword_18E1A8800);
  sub_18E159050();
  v94 = v63;
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v64, v65);
  sub_18E15A1EC();
  sub_18E16C088(v66);
  v92 = sub_18E161880(&qword_1EABD02F0, &qword_18E1A8808);
  sub_18E159050();
  v91 = v67;
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v68, v69);
  sub_18E15A1EC();
  sub_18E16C088(v70);
  v89 = sub_18E161880(&qword_1EABD02F8, &qword_18E1A8810);
  sub_18E159050();
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v71, v72);
  sub_18E15D458();
  v73 = sub_18E161880(&qword_1EABD0300, &qword_18E1A8818);
  sub_18E159050();
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v74, v75);
  sub_18E15BB5C();
  v118 = sub_18E161880(&qword_1EABD0308, &qword_18E1A8820);
  sub_18E159050();
  v77 = v76;
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v78, v79);
  sub_18E15A114();
  v80 = *v26;
  v81 = v28[4];
  sub_18E159D74(v28);
  sub_18E162CA4();
  v117 = v21;
  sub_18E1A7CD0();
  v82 = (v77 + 8);
  switch(v80)
  {
    case 1:
      v120 = 1;
      sub_18E162FEC();
      v28 = v117;
      v81 = v118;
      sub_18E1A7AD0();
      sub_18E16BF80();
      v84 = v22;
      v86 = &v122;
      goto LABEL_9;
    case 2:
      v121 = 2;
      sub_18E162F98();
      sub_18E15D438(&type metadata for AvailabilityFoundationClient.CloudSubscriptionFeaturesAvailabilityWrapper.Availability.UnavailabilityInfo.UnavailabilityReason.RegionIneligibleCodingKeys, &v121);
      sub_18E16BF80();
      v84 = v90;
      v86 = &a11;
      goto LABEL_9;
    case 3:
      LOBYTE(a10) = 3;
      sub_18E162F44();
      sub_18E15D438(&type metadata for AvailabilityFoundationClient.CloudSubscriptionFeaturesAvailabilityWrapper.Availability.UnavailabilityInfo.UnavailabilityReason.MdmAndParentalControlCodingKeys, &a10);
      sub_18E16BF80();
      v84 = v93;
      v86 = &a14;
      goto LABEL_9;
    case 4:
      BYTE1(a10) = 4;
      sub_18E162EF0();
      sub_18E15D438(&type metadata for AvailabilityFoundationClient.CloudSubscriptionFeaturesAvailabilityWrapper.Availability.UnavailabilityInfo.UnavailabilityReason.RegionPolicyCodingKeys, &a10 + 1);
      sub_18E16BF80();
      v84 = v96;
      v86 = &a17;
LABEL_9:
      v85 = *(v86 - 32);
      break;
    case 5:
      BYTE2(a10) = 5;
      sub_18E162E9C();
      v87 = v99;
      sub_18E15D438(&type metadata for AvailabilityFoundationClient.CloudSubscriptionFeaturesAvailabilityWrapper.Availability.UnavailabilityInfo.UnavailabilityReason.AccessNotGrantedCodingKeys, &a10 + 2);
      v88 = v100;
      v85 = v101;
      goto LABEL_14;
    case 6:
      BYTE3(a10) = 6;
      sub_18E162E48();
      v87 = v102;
      sub_18E15D438(&type metadata for AvailabilityFoundationClient.CloudSubscriptionFeaturesAvailabilityWrapper.Availability.UnavailabilityInfo.UnavailabilityReason.AssetIsNotReadyCodingKeys, &a10 + 3);
      v88 = v103;
      v85 = v104;
      goto LABEL_14;
    case 7:
      BYTE4(a10) = 7;
      sub_18E162DF4();
      v87 = v105;
      sub_18E15D438(&type metadata for AvailabilityFoundationClient.CloudSubscriptionFeaturesAvailabilityWrapper.Availability.UnavailabilityInfo.UnavailabilityReason.ShortOfStorageCodingKeys, &a10 + 4);
      v88 = v106;
      v85 = v107;
      goto LABEL_14;
    case 8:
      BYTE5(a10) = 8;
      sub_18E162DA0();
      v87 = v108;
      sub_18E15D438(&type metadata for AvailabilityFoundationClient.CloudSubscriptionFeaturesAvailabilityWrapper.Availability.UnavailabilityInfo.UnavailabilityReason.NotOptedInCodingKeys, &a10 + 5);
      v88 = v109;
      v85 = v110;
      goto LABEL_14;
    case 9:
      BYTE6(a10) = 9;
      sub_18E162D4C();
      v87 = v111;
      sub_18E15D438(&type metadata for AvailabilityFoundationClient.CloudSubscriptionFeaturesAvailabilityWrapper.Availability.UnavailabilityInfo.UnavailabilityReason.UnableToFetchAvailabilityCodingKeys, &a10 + 6);
      v88 = v112;
      v85 = v113;
      goto LABEL_14;
    case 10:
      HIBYTE(a10) = 10;
      sub_18E162CF8();
      v87 = v114;
      sub_18E15D438(&type metadata for AvailabilityFoundationClient.CloudSubscriptionFeaturesAvailabilityWrapper.Availability.UnavailabilityInfo.UnavailabilityReason.UnknownCodingKeys, &a10 + 7);
      v88 = v115;
      v85 = v116;
LABEL_14:
      v83 = *(v88 + 8);
      v84 = v87;
      break;
    default:
      v119 = 0;
      sub_18E163040();
      v28 = v117;
      v81 = v118;
      sub_18E1A7AD0();
      sub_18E16BF80();
      v84 = v23;
      v85 = v73;
      break;
  }

  v83(v84, v85);
  (*v82)(v28, v81);
  sub_18E15A29C();
}

unint64_t sub_18E162CA4()
{
  result = qword_1EABCFFC0;
  if (!qword_1EABCFFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABCFFC0);
  }

  return result;
}

unint64_t sub_18E162CF8()
{
  result = qword_1EABD0310;
  if (!qword_1EABD0310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0310);
  }

  return result;
}

unint64_t sub_18E162D4C()
{
  result = qword_1EABD0318;
  if (!qword_1EABD0318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0318);
  }

  return result;
}

unint64_t sub_18E162DA0()
{
  result = qword_1EABD0320;
  if (!qword_1EABD0320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0320);
  }

  return result;
}

unint64_t sub_18E162DF4()
{
  result = qword_1EABD0328;
  if (!qword_1EABD0328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0328);
  }

  return result;
}

unint64_t sub_18E162E48()
{
  result = qword_1EABCFF68;
  if (!qword_1EABCFF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABCFF68);
  }

  return result;
}

unint64_t sub_18E162E9C()
{
  result = qword_1EABCFF50;
  if (!qword_1EABCFF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABCFF50);
  }

  return result;
}

unint64_t sub_18E162EF0()
{
  result = qword_1EABD0330;
  if (!qword_1EABD0330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0330);
  }

  return result;
}

unint64_t sub_18E162F44()
{
  result = qword_1EABD0338;
  if (!qword_1EABD0338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0338);
  }

  return result;
}

unint64_t sub_18E162F98()
{
  result = qword_1EABCFEA8;
  if (!qword_1EABCFEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABCFEA8);
  }

  return result;
}

unint64_t sub_18E162FEC()
{
  result = qword_1EABD0340;
  if (!qword_1EABD0340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0340);
  }

  return result;
}

unint64_t sub_18E163040()
{
  result = qword_1EABCFF38;
  if (!qword_1EABCFF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABCFF38);
  }

  return result;
}

uint64_t AvailabilityFoundationClient.CloudSubscriptionFeaturesAvailabilityWrapper.Availability.UnavailabilityInfo.UnavailabilityReason.hashValue.getter()
{
  sub_18E16C068();
  sub_18E1A7C60();
  sub_18E16C128();
  return sub_18E1A7CA0();
}

void AvailabilityFoundationClient.CloudSubscriptionFeaturesAvailabilityWrapper.Availability.UnavailabilityInfo.UnavailabilityReason.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  sub_18E159F44();
  a26 = v28;
  a27 = v29;
  v141 = v27;
  v31 = v30;
  v136 = v32;
  sub_18E161880(&qword_1EABD0348, &qword_18E1A8828);
  sub_18E159050();
  v128 = v34;
  v129 = v33;
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v35, v36);
  sub_18E15A1EC();
  v135 = v37;
  sub_18E161880(&qword_1EABD0350, &qword_18E1A8830);
  sub_18E159050();
  v126 = v39;
  v127 = v38;
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v40, v41);
  sub_18E15A1EC();
  v134 = v42;
  sub_18E161880(&qword_1EABD0358, &qword_18E1A8838);
  sub_18E159050();
  v124 = v44;
  v125 = v43;
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v45, v46);
  sub_18E15A1EC();
  v133 = v47;
  sub_18E161880(&qword_1EABD0360, &qword_18E1A8840);
  sub_18E159050();
  v122 = v49;
  v123 = v48;
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v50, v51);
  sub_18E15A1EC();
  v139 = v52;
  v121[16] = sub_18E161880(&qword_1EABD0368, &qword_18E1A8848);
  sub_18E159050();
  v121[17] = v53;
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v54, v55);
  sub_18E15A1EC();
  v138 = v56;
  v121[15] = sub_18E161880(&qword_1EABD0370, &qword_18E1A8850);
  sub_18E159050();
  v121[14] = v57;
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v58, v59);
  sub_18E15A1EC();
  v137 = v60;
  v121[13] = sub_18E161880(&qword_1EABD0378, &qword_18E1A8858);
  sub_18E159050();
  v121[12] = v61;
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v62, v63);
  sub_18E15A1EC();
  v132 = v64;
  v121[11] = sub_18E161880(&qword_1EABD0380, &qword_18E1A8860);
  sub_18E159050();
  v121[10] = v65;
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v66, v67);
  sub_18E15A1EC();
  v131 = v68;
  v121[9] = sub_18E161880(&qword_1EABD0388, &qword_18E1A8868);
  sub_18E159050();
  v121[8] = v69;
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v70, v71);
  sub_18E15A1EC();
  v130 = v72;
  v121[7] = sub_18E161880(&qword_1EABD0390, &qword_18E1A8870);
  sub_18E159050();
  v121[6] = v73;
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v74, v75);
  v77 = v121 - v76;
  v78 = sub_18E161880(&qword_1EABD0398, &qword_18E1A8878);
  sub_18E159050();
  v121[5] = v79;
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v80, v81);
  v83 = v121 - v82;
  sub_18E161880(&qword_1EABD03A0, &unk_18E1A8880);
  sub_18E159050();
  v85 = v84;
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v86, v87);
  sub_18E15BB5C();
  v88 = v31[3];
  v140 = v31;
  sub_18E158E00(v31, v88);
  sub_18E162CA4();
  v89 = v141;
  sub_18E1A7CC0();
  if (v89)
  {
    goto LABEL_8;
  }

  v121[3] = v83;
  v121[2] = v78;
  v121[4] = v77;
  v90 = v138;
  v91 = v139;
  v141 = v85;
  v92 = sub_18E1A7AA0();
  sub_18E15AF4C(v92, 0);
  v94 = v93;
  if (v96 == v95 >> 1)
  {
LABEL_7:
    sub_18E1A78C0();
    swift_allocError();
    v111 = v110;
    sub_18E161880(&qword_1EABD06A0, &qword_18E1AA9F0);
    *v111 = &type metadata for AvailabilityFoundationClient.CloudSubscriptionFeaturesAvailabilityWrapper.Availability.UnavailabilityInfo.UnavailabilityReason;
    v112 = sub_18E1A7A00();
    sub_18E15B9CC(v112);
    sub_18E1594D8();
    (*(v113 + 104))(v111);
    swift_willThrow();
    swift_unknownObjectRelease();
    v114 = sub_18E15A4B8();
    v115(v114);
LABEL_8:
    v116 = v140;
LABEL_9:
    sub_18E158EC4(v116);
    sub_18E15A29C();
    return;
  }

  sub_18E16BFE4();
  v121[1] = 0;
  if (v101 < (v97 >> 1))
  {
    v102 = *(v100 + v98);
    sub_18E15BA58(v98 + 1, v97 >> 1, v94, v100, v98, v99);
    v104 = v103;
    v106 = v105;
    swift_unknownObjectRelease();
    if (v104 == v106 >> 1)
    {
      switch(v102)
      {
        case 1:
          v143 = 1;
          sub_18E162FEC();
          sub_18E15D944(&type metadata for AvailabilityFoundationClient.CloudSubscriptionFeaturesAvailabilityWrapper.Availability.UnavailabilityInfo.UnavailabilityReason.SelectedLanguageIneligibleCodingKeys, &v143);
          swift_unknownObjectRelease();
          v107 = sub_18E15A1DC();
          v109 = &v145;
          goto LABEL_18;
        case 2:
          v144 = 2;
          sub_18E162F98();
          sub_18E15D944(&type metadata for AvailabilityFoundationClient.CloudSubscriptionFeaturesAvailabilityWrapper.Availability.UnavailabilityInfo.UnavailabilityReason.RegionIneligibleCodingKeys, &v144);
          swift_unknownObjectRelease();
          v107 = sub_18E15A1DC();
          v109 = &a10;
          goto LABEL_18;
        case 3:
          a10 = 3;
          sub_18E162F44();
          sub_18E15D944(&type metadata for AvailabilityFoundationClient.CloudSubscriptionFeaturesAvailabilityWrapper.Availability.UnavailabilityInfo.UnavailabilityReason.MdmAndParentalControlCodingKeys, &a10);
          swift_unknownObjectRelease();
          v107 = sub_18E15A1DC();
          v109 = &a19;
          goto LABEL_18;
        case 4:
          a11 = 4;
          sub_18E162EF0();
          sub_18E15D944(&type metadata for AvailabilityFoundationClient.CloudSubscriptionFeaturesAvailabilityWrapper.Availability.UnavailabilityInfo.UnavailabilityReason.RegionPolicyCodingKeys, &a11);
          swift_unknownObjectRelease();
          v107 = sub_18E15A1DC();
          v109 = &a21;
          goto LABEL_18;
        case 5:
          a12 = 5;
          sub_18E162E9C();
          sub_18E15AB3C(&type metadata for AvailabilityFoundationClient.CloudSubscriptionFeaturesAvailabilityWrapper.Availability.UnavailabilityInfo.UnavailabilityReason.AccessNotGrantedCodingKeys, &a12);
          swift_unknownObjectRelease();
          v107 = sub_18E15A1DC();
          v109 = &a23;
          goto LABEL_18;
        case 6:
          a13 = 6;
          sub_18E162E48();
          sub_18E15AB3C(&type metadata for AvailabilityFoundationClient.CloudSubscriptionFeaturesAvailabilityWrapper.Availability.UnavailabilityInfo.UnavailabilityReason.AssetIsNotReadyCodingKeys, &a13);
          swift_unknownObjectRelease();
          sub_18E16BF80();
          v107 = v90;
          v109 = &a24;
          goto LABEL_18;
        case 7:
          a14 = 7;
          sub_18E162DF4();
          sub_18E15D944(&type metadata for AvailabilityFoundationClient.CloudSubscriptionFeaturesAvailabilityWrapper.Availability.UnavailabilityInfo.UnavailabilityReason.ShortOfStorageCodingKeys, &a14);
          swift_unknownObjectRelease();
          v118 = v122;
          v117 = v123;
          goto LABEL_21;
        case 8:
          a15 = 8;
          sub_18E162DA0();
          v91 = v133;
          sub_18E15D944(&type metadata for AvailabilityFoundationClient.CloudSubscriptionFeaturesAvailabilityWrapper.Availability.UnavailabilityInfo.UnavailabilityReason.NotOptedInCodingKeys, &a15);
          swift_unknownObjectRelease();
          v118 = v124;
          v117 = v125;
          goto LABEL_21;
        case 9:
          a16 = 9;
          sub_18E162D4C();
          v91 = v134;
          sub_18E15D944(&type metadata for AvailabilityFoundationClient.CloudSubscriptionFeaturesAvailabilityWrapper.Availability.UnavailabilityInfo.UnavailabilityReason.UnableToFetchAvailabilityCodingKeys, &a16);
          swift_unknownObjectRelease();
          v118 = v126;
          v117 = v127;
          goto LABEL_21;
        case 10:
          a17 = 10;
          sub_18E162CF8();
          v91 = v135;
          sub_18E15D944(&type metadata for AvailabilityFoundationClient.CloudSubscriptionFeaturesAvailabilityWrapper.Availability.UnavailabilityInfo.UnavailabilityReason.UnknownCodingKeys, &a17);
          swift_unknownObjectRelease();
          v118 = v128;
          v117 = v129;
LABEL_21:
          v108 = *(v118 + 8);
          v107 = v91;
          break;
        default:
          v142 = 0;
          sub_18E163040();
          sub_18E15D944(&type metadata for AvailabilityFoundationClient.CloudSubscriptionFeaturesAvailabilityWrapper.Availability.UnavailabilityInfo.UnavailabilityReason.DeviceNotCapableCodingKeys, &v142);
          swift_unknownObjectRelease();
          v107 = sub_18E15A1DC();
          v109 = &v138;
LABEL_18:
          v117 = *(v109 - 32);
          break;
      }

      v108(v107, v117);
      v119 = sub_18E15A4B8();
      v120(v119);
      v116 = v140;
      *v136 = v102;
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_18E163BAC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x736E6F73616572 && a2 == 0xE700000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_18E1A7B90();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_18E163C80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18E163BAC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_18E163CAC(uint64_t a1)
{
  v2 = sub_18E169A10();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E163CE8(uint64_t a1)
{
  v2 = sub_18E169A10();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AvailabilityFoundationClient.CloudSubscriptionFeaturesAvailabilityWrapper.Availability.UnavailabilityInfo.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_18E159F44();
  v22 = v21;
  v23 = sub_18E161880(&qword_1EABD03A8, &qword_18E1A8890);
  sub_18E159050();
  v25 = v24;
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v26, v27);
  sub_18E15A114();
  sub_18E159D74(v22);
  sub_18E169A10();

  sub_18E1A7CD0();
  sub_18E161880(&qword_1EABD03B0, &qword_18E1A8898);
  sub_18E169B00(&qword_1EABCFE78, sub_18E169AAC, MEMORY[0x1E69E64F0]);
  sub_18E1A7B30();

  (*(v25 + 8))(v20, v23);
  sub_18E15A29C();
}

void AvailabilityFoundationClient.CloudSubscriptionFeaturesAvailabilityWrapper.Availability.UnavailabilityInfo.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_18E159F44();
  v12 = v11;
  v14 = v13;
  sub_18E161880(&qword_1EABD03B8, &qword_18E1A88A0);
  sub_18E159050();
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v15, v16);
  sub_18E15D458();
  sub_18E159D74(v12);
  sub_18E169A10();
  sub_18E16C03C(&type metadata for AvailabilityFoundationClient.CloudSubscriptionFeaturesAvailabilityWrapper.Availability.UnavailabilityInfo.CodingKeys);
  if (!v10)
  {
    sub_18E161880(&qword_1EABD03B0, &qword_18E1A8898);
    sub_18E169B00(&qword_1EABCFC78, sub_18E169B78, MEMORY[0x1E69E6510]);
    sub_18E1A7A80();
    v17 = sub_18E15C048();
    v18(v17);
    *v14 = a10;
  }

  sub_18E158EC4(v12);
  sub_18E15A29C();
}

uint64_t sub_18E163FF8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C62616C69617661 && a2 == 0xE900000000000065;
  if (v4 || (sub_18E1A7B90() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x646574696D696CLL && a2 == 0xE700000000000000;
    if (v6 || (sub_18E1A7B90() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x616C696176616E75 && a2 == 0xEB00000000656C62)
    {

      return 2;
    }

    else
    {
      v8 = sub_18E1A7B90();

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

uint64_t sub_18E16411C(unsigned __int8 a1)
{
  sub_18E1A7C60();
  MEMORY[0x193ACB0A0](a1);
  return sub_18E1A7CA0();
}

uint64_t sub_18E164164(char a1)
{
  if (!a1)
  {
    return 0x6C62616C69617661;
  }

  if (a1 == 1)
  {
    return 0x646574696D696CLL;
  }

  return 0x616C696176616E75;
}

uint64_t sub_18E1641C8(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_18E1A7B90();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_18E164268(uint64_t a1)
{
  v2 = sub_18E169D1C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E1642A4(uint64_t a1)
{
  v2 = sub_18E169D1C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18E1642E0()
{
  sub_18E16C068();
  sub_18E1A7C60();
  sub_18E16C128();
  return sub_18E1A7CA0();
}

uint64_t sub_18E164320@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18E163FF8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18E164348@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18E164114();
  *a1 = result;
  return result;
}

uint64_t sub_18E164370(uint64_t a1)
{
  v2 = sub_18E169BCC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E1643AC(uint64_t a1)
{
  v2 = sub_18E169BCC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18E1643E8(uint64_t a1)
{
  v2 = sub_18E169CC8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E164424(uint64_t a1)
{
  v2 = sub_18E169CC8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18E164460(uint64_t a1)
{
  v2 = sub_18E169C20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E16449C(uint64_t a1)
{
  v2 = sub_18E169C20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AvailabilityFoundationClient.CloudSubscriptionFeaturesAvailabilityWrapper.Availability.encode(to:)()
{
  sub_18E159F44();
  v39 = v1;
  v4 = v3;
  sub_18E161880(&qword_1EABD03C0, &qword_18E1A88A8);
  sub_18E159050();
  v37 = v6;
  v38 = v5;
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v7, v8);
  sub_18E15A1EC();
  v36 = v9;
  sub_18E161880(&qword_1EABD03C8, &qword_18E1A88B0);
  sub_18E159050();
  v34 = v11;
  v35 = v10;
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v12, v13);
  sub_18E15A1EC();
  v33 = v14;
  sub_18E161880(&qword_1EABD03D0, &qword_18E1A88B8);
  sub_18E159050();
  v31 = v16;
  v32 = v15;
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v31 - v19;
  v21 = sub_18E161880(&qword_1EABD03D8, &qword_18E1A88C0);
  sub_18E159050();
  v23 = v22;
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v24, v25);
  sub_18E159FE0();
  v26 = *v0;
  sub_18E159D74(v4);
  sub_18E169BCC();
  sub_18E1A7CD0();
  if (v26)
  {
    if (v26 != 1)
    {
      sub_18E169C20();
      v29 = v36;
      sub_18E15BAD4();
      sub_18E1A7AD0();
      v40 = v26;
      sub_18E169C74();
      v30 = v38;
      sub_18E1A7B30();
      (*(v37 + 8))(v29, v30);
      (*(v23 + 8))(v2, v21);
      goto LABEL_7;
    }

    sub_18E169CC8();
    v20 = v33;
    sub_18E15BAD4();
    sub_18E1A7AD0();
    v28 = v34;
    v27 = v35;
  }

  else
  {
    sub_18E169D1C();
    sub_18E15BAD4();
    sub_18E1A7AD0();
    v28 = v31;
    v27 = v32;
  }

  (*(v28 + 8))(v20, v27);
  (*(v23 + 8))(v2, v21);
LABEL_7:
  sub_18E15A29C();
}

void AvailabilityFoundationClient.CloudSubscriptionFeaturesAvailabilityWrapper.Availability.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_18E159F44();
  a23 = v28;
  a24 = v29;
  v31 = v30;
  v80 = v32;
  sub_18E161880(&qword_1EABD03E8, &qword_18E1A88C8);
  sub_18E159050();
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v33, v34);
  sub_18E15A1EC();
  sub_18E161880(&qword_1EABD03F0, &qword_18E1A88D0);
  sub_18E159050();
  v78 = v35;
  v79 = v36;
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v37, v38);
  sub_18E159FE0();
  v39 = sub_18E161880(&qword_1EABD03F8, &qword_18E1A88D8);
  sub_18E159050();
  v77 = v40;
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v41, v42);
  sub_18E15BB5C();
  v43 = sub_18E161880(&qword_1EABD0400, &qword_18E1A88E0);
  sub_18E159050();
  v81 = v44;
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v45, v46);
  sub_18E15A114();
  sub_18E158E00(v31, v31[3]);
  sub_18E169BCC();
  sub_18E1A7CC0();
  if (v24)
  {
    goto LABEL_10;
  }

  v76 = v27;
  v82 = v31;
  v47 = v25;
  v48 = sub_18E1A7AA0();
  sub_18E15AF4C(v48, 0);
  v50 = v49;
  if (v52 == v51 >> 1)
  {
LABEL_9:
    sub_18E1A78C0();
    swift_allocError();
    v69 = v68;
    sub_18E161880(&qword_1EABD06A0, &qword_18E1AA9F0);
    *v69 = &type metadata for AvailabilityFoundationClient.CloudSubscriptionFeaturesAvailabilityWrapper.Availability;
    v70 = sub_18E1A7A00();
    sub_18E15B9CC(v70);
    sub_18E1594D8();
    (*(v71 + 104))(v69);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v81 + 8))(v47, v43);
    v31 = v82;
LABEL_10:
    sub_18E158EC4(v31);
LABEL_11:
    sub_18E15A29C();
    return;
  }

  sub_18E16BFE4();
  if (v57 < (v53 >> 1))
  {
    v58 = *(v56 + v54);
    sub_18E15BA58(v54 + 1, v53 >> 1, v50, v56, v54, v55);
    v60 = v59;
    v62 = v61;
    swift_unknownObjectRelease();
    if (v60 == v62 >> 1)
    {
      v63 = v25;
      if (v58)
      {
        if (v58 == 1)
        {
          a13 = 1;
          sub_18E169CC8();
          sub_18E15C500(&type metadata for AvailabilityFoundationClient.CloudSubscriptionFeaturesAvailabilityWrapper.Availability.LimitedCodingKeys, &a13);
          v64 = v80;
          swift_unknownObjectRelease();
          (*(v79 + 8))(v26, v78);
          v65 = sub_18E15D5D4();
          v66(v65);
          v67 = 1;
        }

        else
        {
          a14 = 2;
          sub_18E169C20();
          sub_18E15C500(&type metadata for AvailabilityFoundationClient.CloudSubscriptionFeaturesAvailabilityWrapper.Availability.UnavailableCodingKeys, &a14);
          v64 = v80;
          sub_18E169D70();
          sub_18E1A7A80();
          swift_unknownObjectRelease();
          v74 = sub_18E16C074();
          v75(v74);
          (*(v81 + 8))(v63, v43);
          v67 = v83;
        }
      }

      else
      {
        a12 = 0;
        sub_18E169D1C();
        sub_18E15C500(&type metadata for AvailabilityFoundationClient.CloudSubscriptionFeaturesAvailabilityWrapper.Availability.AvailableCodingKeys, &a12);
        swift_unknownObjectRelease();
        (*(v77 + 8))(v76, v39);
        v72 = sub_18E15D5D4();
        v73(v72);
        v67 = 0;
        v64 = v80;
      }

      *v64 = v67;
      sub_18E158EC4(v82);
      goto LABEL_11;
    }

    v47 = v25;
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t sub_18E164D98(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6962616C69617661 && a2 == 0xEC0000007974696CLL)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_18E1A7B90();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_18E164E14()
{
  sub_18E1A7C60();
  MEMORY[0x193ACB0A0](0);
  return sub_18E1A7CA0();
}

uint64_t sub_18E164EA8(uint64_t a1)
{
  sub_18E1A7C60();
  MEMORY[0x193ACB0A0](0);
  return sub_18E1A7CA0();
}

uint64_t sub_18E164EEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18E164D98(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_18E164F18(uint64_t a1)
{
  v2 = sub_18E169DC4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E164F54(uint64_t a1)
{
  v2 = sub_18E169DC4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AvailabilityFoundationClient.CloudSubscriptionFeaturesAvailabilityWrapper.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_18E159F44();
  v23 = v22;
  v24 = sub_18E161880(&qword_1EABD0408, &qword_18E1A88E8);
  sub_18E159050();
  v26 = v25;
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v27, v28);
  sub_18E15D458();
  v29 = *v20;
  sub_18E159D74(v23);
  sub_18E1618D4(v29);
  sub_18E169DC4();
  sub_18E1A7CD0();
  sub_18E169E18();
  sub_18E1A7B30();
  sub_18E169E6C(v29);
  (*(v26 + 8))(v21, v24);
  sub_18E15A29C();
}

void AvailabilityFoundationClient.CloudSubscriptionFeaturesAvailabilityWrapper.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_18E159F44();
  v12 = v11;
  v14 = v13;
  sub_18E161880(&qword_1EABD0410, &qword_18E1A88F0);
  sub_18E159050();
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v15, v16);
  sub_18E15D458();
  sub_18E159D74(v12);
  sub_18E169DC4();
  sub_18E16C03C(&type metadata for AvailabilityFoundationClient.CloudSubscriptionFeaturesAvailabilityWrapper.CodingKeys);
  if (!v10)
  {
    sub_18E169E7C();
    sub_18E15BAD4();
    sub_18E1A7A80();
    v17 = sub_18E15C048();
    v18(v17);
    *v14 = a10;
  }

  sub_18E158EC4(v12);
  sub_18E15A29C();
}

uint64_t AvailabilityFoundationClient.secureWriteCloudSubscriptionFeaturesAvailability(_:)()
{
  sub_18E158FCC();
  v3 = v2;
  v1[4] = v0;
  v4 = sub_18E1A7240();
  sub_18E15D028(v4);
  v1[6] = v5;
  v6 = sub_18E16BFBC();
  v7 = *v3;
  v1[7] = v6;
  v1[8] = v7;
  sub_18E159FD4();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_18E1652E4()
{
  sub_18E158FCC();
  v1 = sub_18E16C094();
  v2(v1);
  v3 = sub_18E1A7220();
  v4 = sub_18E1A7230();
  v0[9] = _os_activity_create(&dword_18E157000, "AvailabilityFoundationClient.secureWriteCloudSubscriptionFeaturesAvailability(_:)", v3, v4);
  swift_unknownObjectRelease();
  sub_18E15C578();
  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_18E165408;
  v6 = v0[8];
  v7 = v0[4];

  return sub_18E165684(v5, v6, v7);
}

uint64_t sub_18E165408()
{
  sub_18E15A288();
  sub_18E15A7FC();
  *v3 = v2;
  v4 = *v1;
  sub_18E159064();
  *v5 = v4;
  *(v6 + 88) = v0;

  sub_18E159FD4();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18E165534()
{
  sub_18E16C100();
  sub_18E15DAEC();
  sub_18E15C4DC();
  swift_unknownObjectRelease();
  v0 = sub_18E159FC4();
  v1(v0);

  sub_18E1594CC();
  sub_18E16C114();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_18E1655DC()
{
  sub_18E16C100();
  sub_18E15DAEC();
  sub_18E15C4DC();
  swift_unknownObjectRelease();
  v0 = sub_18E159FC4();
  v1(v0);

  sub_18E1594CC();
  sub_18E16C114();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_18E165684(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v4 = sub_18E1A7360();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18E165744, 0, 0);
}

uint64_t sub_18E165744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_18E16C000();
  sub_18E15D5C8();
  v11 = v10[8];
  sub_18E1A6CA0();
  swift_allocObject();
  sub_18E1A6C90();
  v10[7] = v11;
  sub_18E16BD28();
  v12 = sub_18E1A6C80();
  v10[13] = v12;
  v10[14] = v13;
  v14 = v12;
  v15 = v13;
  v16 = v10[9];

  v25 = *(v16 + 16);
  v10[15] = v25;
  if (v25)
  {
    v26 = swift_task_alloc();
    v10[16] = v26;
    *(v26 + 16) = v14;
    *(v26 + 24) = v15;

    swift_task_alloc();
    sub_18E15B77C();
    v10[17] = v27;
    *v27 = v28;
    v27[1] = sub_18E1659F8;
    sub_18E15D83C();
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE2EE30](v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

uint64_t sub_18E1659F8()
{
  sub_18E158FCC();
  sub_18E15D468();
  v3 = v2;
  sub_18E15A7FC();
  *v4 = v3;
  v5 = *v1;
  sub_18E159064();
  *v6 = v5;
  v3[18] = v0;

  if (!v0)
  {
    sub_18E16BCA0(v3[5], v3[6]);
  }

  sub_18E159FD4();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18E165B18()
{
  sub_18E15A288();
  sub_18E16BCA0(*(v0 + 104), *(v0 + 112));

  sub_18E15A7EC();

  return v1();
}

uint64_t sub_18E165B7C()
{
  sub_18E15DAEC();
  sub_18E16BCA0(v0[13], v0[14]);

  v1 = v0[18];
  if (qword_1EABD0148 != -1)
  {
    sub_18E1594AC(&qword_1EABD0148);
  }

  v2 = sub_18E1592FC(v0[10], qword_1EABD0150);
  sub_18E15DB4C(v2);
  v3 = sub_18E15BB6C();
  v4(v3);
  v5 = v1;
  v6 = sub_18E1A7340();
  v7 = sub_18E1A7710();

  if (os_log_type_enabled(v6, v7))
  {
    sub_18E15BF88();
    v8 = sub_18E15B8D0();
    *v2 = 138412290;
    v9 = v1;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    sub_18E16C024(v10);
    sub_18E159EE4(&dword_18E157000, v11, v7, "secureWriteCloudSubscriptionFeaturesAvailability error: %@");
    sub_18E16BC38(v8);
    sub_18E159850();
    sub_18E16BFA0();
  }

  v13 = v0[11];
  v12 = v0[12];
  v14 = v0[10];

  (*(v13 + 8))(v12, v14);
  swift_willThrow();

  sub_18E1594CC();

  return v15();
}

void sub_18E165D0C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;

  v9 = sub_18E1A6D40();
  v11[4] = sub_18E16BF6C;
  v11[5] = v8;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_18E173C64;
  v11[3] = &unk_1F0102DD0;
  v10 = _Block_copy(v11);

  [a1 secureWriteCloudSubscriptionFeaturesAvailabilityWithCsfAvailabilityWrapperData:v9 with:v10];
  _Block_release(v10);
}

uint64_t AvailabilityFoundationClient.updateCSFAccessGranted(for:)()
{
  sub_18E15A288();
  v1[4] = v2;
  v1[5] = v0;
  v3 = sub_18E1A7240();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = sub_18E16BFBC();
  sub_18E159FD4();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_18E165EF4()
{
  sub_18E158FCC();
  v1 = sub_18E16C094();
  v2(v1);
  v3 = sub_18E1A7220();
  v4 = sub_18E1A7230();
  v0[9] = _os_activity_create(&dword_18E157000, "AvailabilityFoundationClient.updateCSFAccessGranted(for:)", v3, v4);
  swift_unknownObjectRelease();
  sub_18E15C578();
  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_18E166014;
  v7 = v0[4];
  v6 = v0[5];

  return sub_18E166290(v5, v6, v7);
}

uint64_t sub_18E166014()
{
  sub_18E15A288();
  sub_18E15A7FC();
  *v3 = v2;
  v4 = *v1;
  sub_18E159064();
  *v5 = v4;
  *(v6 + 88) = v0;

  sub_18E159FD4();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18E166140()
{
  sub_18E16C100();
  sub_18E15DAEC();
  sub_18E16C0E0();
  swift_unknownObjectRelease();
  v0 = sub_18E159FC4();
  v1(v0);

  sub_18E1594CC();
  sub_18E16C114();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_18E1661E8()
{
  sub_18E16C100();
  sub_18E15DAEC();
  sub_18E16C0E0();
  swift_unknownObjectRelease();
  v0 = sub_18E159FC4();
  v1(v0);

  sub_18E1594CC();
  sub_18E16C114();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_18E166290(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v4 = sub_18E1A7360();
  v3[9] = v4;
  v3[10] = *(v4 - 8);
  v3[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18E166350, 0, 0);
}

uint64_t sub_18E166350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = *(v10[7] + 16);
  v10[12] = v11;
  if (v11)
  {
    sub_18E158FCC();
    v12 = v10[8];
    v13 = swift_task_alloc();
    v10[13] = v13;
    *(v13 + 16) = v12;

    swift_task_alloc();
    sub_18E15B77C();
    v10[14] = v14;
    *v14 = v15;
    v14[1] = sub_18E166434;
    a1 = sub_18E15D550();
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE2EE30](a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t sub_18E166434()
{
  sub_18E158FCC();
  sub_18E15D468();
  v3 = v2;
  sub_18E15A7FC();
  *v4 = v3;
  v5 = *v1;
  sub_18E159064();
  *v6 = v5;
  v3[15] = v0;

  if (!v0)
  {
    sub_18E16BCA0(v3[5], v3[6]);
  }

  sub_18E159FD4();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18E166554()
{
  sub_18E15A288();

  sub_18E15A7EC();

  return v0();
}

uint64_t sub_18E1665AC()
{
  sub_18E15DAEC();

  if (qword_1EABD0148 != -1)
  {
    sub_18E1594AC(&qword_1EABD0148);
  }

  v1 = *(v0 + 120);
  v2 = sub_18E1592FC(*(v0 + 72), qword_1EABD0150);
  sub_18E15DB4C(v2);
  v3 = sub_18E15BB6C();
  v4(v3);
  v5 = v1;
  v6 = sub_18E1A7340();
  v7 = sub_18E1A7710();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 120);
    sub_18E15BF88();
    v9 = sub_18E15B8D0();
    *v2 = 138412290;
    v10 = v8;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    sub_18E16C024(v11);
    sub_18E159EE4(&dword_18E157000, v12, v7, "updateCSFAccessGranted error: %@");
    sub_18E16BC38(v9);
    sub_18E159850();
    sub_18E16BFA0();
  }

  v13 = sub_18E16BFD4();
  v14(v13);
  swift_willThrow();

  sub_18E1594CC();

  return v15();
}

void sub_18E16672C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;

  v8 = sub_18E1A7470();
  v10[4] = sub_18E16BF6C;
  v10[5] = v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_18E173C64;
  v10[3] = &unk_1F0102D80;
  v9 = _Block_copy(v10);

  [a1 updateCSFAccessGrantedFor:v8 with:v9];
  _Block_release(v9);
}

uint64_t AvailabilityFoundationClient.updateOptInStatus(optedIn:)()
{
  sub_18E15A288();
  *(v1 + 32) = v0;
  *(v1 + 88) = v2;
  v3 = sub_18E1A7240();
  sub_18E15D028(v3);
  *(v1 + 48) = v4;
  *(v1 + 56) = sub_18E16BFBC();
  sub_18E159FD4();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_18E16691C()
{
  sub_18E158FCC();
  v1 = sub_18E16C094();
  v2(v1);
  v3 = sub_18E1A7220();
  v4 = sub_18E1A7230();
  *(v0 + 64) = _os_activity_create(&dword_18E157000, "AvailabilityFoundationClient.updateOptInStatus(optedIn:)", v3, v4);
  swift_unknownObjectRelease();
  sub_18E15C578();
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  *v5 = v0;
  v5[1] = sub_18E166A40;
  v6 = *(v0 + 32);
  v7 = *(v0 + 88);

  return sub_18E166CBC(v5, v6, v7);
}

uint64_t sub_18E166A40()
{
  sub_18E15A288();
  sub_18E15A7FC();
  *v3 = v2;
  v4 = *v1;
  sub_18E159064();
  *v5 = v4;
  *(v6 + 80) = v0;

  sub_18E159FD4();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18E166B6C()
{
  sub_18E16C100();
  sub_18E15DAEC();
  sub_18E16C0A0();
  swift_unknownObjectRelease();
  v0 = sub_18E159FC4();
  v1(v0);

  sub_18E1594CC();
  sub_18E16C114();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_18E166C14()
{
  sub_18E16C100();
  sub_18E15DAEC();
  sub_18E16C0A0();
  swift_unknownObjectRelease();
  v0 = sub_18E159FC4();
  v1(v0);

  sub_18E1594CC();
  sub_18E16C114();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_18E166CBC(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 120) = a3;
  *(v3 + 56) = a2;
  v4 = sub_18E1A7360();
  *(v3 + 64) = v4;
  *(v3 + 72) = *(v4 - 8);
  *(v3 + 80) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18E166D80, 0, 0);
}

uint64_t sub_18E166D80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = *(*(v10 + 56) + 16);
  *(v10 + 88) = v11;
  if (v11)
  {
    sub_18E158FCC();
    v12 = *(v10 + 120);
    v13 = swift_task_alloc();
    *(v10 + 96) = v13;
    *(v13 + 16) = v12;

    swift_task_alloc();
    sub_18E15B77C();
    *(v10 + 104) = v14;
    *v14 = v15;
    v14[1] = sub_18E166E64;
    a1 = sub_18E15D550();
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE2EE30](a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t sub_18E166E64()
{
  sub_18E158FCC();
  sub_18E15D468();
  v3 = v2;
  sub_18E15A7FC();
  *v4 = v3;
  v5 = *v1;
  sub_18E159064();
  *v6 = v5;
  v3[14] = v0;

  if (!v0)
  {
    sub_18E16BCA0(v3[5], v3[6]);
  }

  sub_18E159FD4();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18E166F84()
{
  sub_18E15A288();

  sub_18E15A7EC();

  return v0();
}

uint64_t sub_18E166FDC()
{
  sub_18E15DAEC();

  if (qword_1EABD0148 != -1)
  {
    sub_18E1594AC(&qword_1EABD0148);
  }

  v1 = *(v0 + 112);
  v2 = sub_18E1592FC(*(v0 + 64), qword_1EABD0150);
  sub_18E15DB4C(v2);
  v3 = sub_18E15BB6C();
  v4(v3);
  v5 = v1;
  v6 = sub_18E1A7340();
  v7 = sub_18E1A7710();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 112);
    sub_18E15BF88();
    v9 = sub_18E15B8D0();
    *v2 = 138412290;
    v10 = v8;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    sub_18E16C024(v11);
    sub_18E159EE4(&dword_18E157000, v12, v7, "updateOptInStatus error: %@");
    sub_18E16BC38(v9);
    sub_18E159850();
    sub_18E16BFA0();
  }

  v13 = sub_18E16BFD4();
  v14(v13);
  swift_willThrow();

  sub_18E1594CC();

  return v15();
}

void sub_18E16715C(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v10[4] = sub_18E16BF6C;
  v10[5] = v8;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_18E173C64;
  v10[3] = &unk_1F0102D30;
  v9 = _Block_copy(v10);

  [a1 updateOptInStatusWithOptedIn:a4 & 1 with:v9];
  _Block_release(v9);
}

uint64_t AvailabilityFoundationClient.didShowEnrollmentScreen(useCaseIdentifier:)()
{
  sub_18E15A288();
  v1[5] = v2;
  v1[6] = v0;
  v1[4] = v3;
  v4 = sub_18E1A7240();
  v1[7] = v4;
  v1[8] = *(v4 - 8);
  v1[9] = sub_18E16BFBC();
  sub_18E159FD4();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_18E167330()
{
  sub_18E158FCC();
  v1 = sub_18E16C094();
  v2(v1);
  v3 = sub_18E1A7220();
  v4 = sub_18E1A7230();
  v0[10] = _os_activity_create(&dword_18E157000, "AvailabilityFoundationClient.didShowEnrollmentScreen(useCaseIdentifier:)", v3, v4);
  swift_unknownObjectRelease();
  sub_18E15C578();
  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_18E167454;
  v7 = v0[5];
  v6 = v0[6];
  v8 = v0[4];

  return sub_18E1676D0(v5, v6, v8, v7);
}

uint64_t sub_18E167454()
{
  sub_18E15A288();
  sub_18E15A7FC();
  *v3 = v2;
  v4 = *v1;
  sub_18E159064();
  *v5 = v4;
  *(v6 + 96) = v0;

  sub_18E159FD4();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18E167580()
{
  sub_18E16C100();
  sub_18E15DAEC();
  sub_18E16C0C0();
  swift_unknownObjectRelease();
  v0 = sub_18E159FC4();
  v1(v0);

  sub_18E1594CC();
  sub_18E16C114();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_18E167628()
{
  sub_18E16C100();
  sub_18E15DAEC();
  sub_18E16C0C0();
  swift_unknownObjectRelease();
  v0 = sub_18E159FC4();
  v1(v0);

  sub_18E1594CC();
  sub_18E16C114();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_18E1676D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a3;
  v4[9] = a4;
  v4[7] = a2;
  v5 = sub_18E1A7360();
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18E167794, 0, 0);
}

uint64_t sub_18E167794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = *(v10[7] + 16);
  v10[13] = v11;
  if (v11)
  {
    sub_18E158FCC();
    v13 = v10[8];
    v12 = v10[9];
    v14 = swift_task_alloc();
    v10[14] = v14;
    *(v14 + 16) = v13;
    *(v14 + 24) = v12;

    swift_task_alloc();
    sub_18E15B77C();
    v10[15] = v15;
    *v15 = v16;
    v15[1] = sub_18E167878;
    a1 = sub_18E15D550();
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE2EE30](a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t sub_18E167878()
{
  sub_18E158FCC();
  sub_18E15D468();
  v3 = v2;
  sub_18E15A7FC();
  *v4 = v3;
  v5 = *v1;
  sub_18E159064();
  *v6 = v5;
  v3[16] = v0;

  if (!v0)
  {
    sub_18E16BCA0(v3[5], v3[6]);
  }

  sub_18E159FD4();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18E167998()
{
  sub_18E15A288();

  sub_18E15A7EC();

  return v0();
}

uint64_t sub_18E1679F0()
{
  sub_18E15DAEC();

  if (qword_1EABD0148 != -1)
  {
    sub_18E1594AC(&qword_1EABD0148);
  }

  v1 = *(v0 + 128);
  v2 = sub_18E1592FC(*(v0 + 80), qword_1EABD0150);
  sub_18E15DB4C(v2);
  v3 = sub_18E15BB6C();
  v4(v3);
  v5 = v1;
  v6 = sub_18E1A7340();
  v7 = sub_18E1A7710();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 128);
    sub_18E15BF88();
    v9 = sub_18E15B8D0();
    *v2 = 138412290;
    v10 = v8;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    sub_18E16C024(v11);
    sub_18E159EE4(&dword_18E157000, v12, v7, "didShowEnrollmentScreen: %@");
    sub_18E16BC38(v9);
    sub_18E159850();
    sub_18E16BFA0();
  }

  v13 = sub_18E16BFD4();
  v14(v13);
  swift_willThrow();

  sub_18E1594CC();

  return v15();
}

void sub_18E167B70(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;

  v9 = sub_18E1A7500();
  v11[4] = sub_18E16BCF8;
  v11[5] = v8;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_18E173C64;
  v11[3] = &unk_1F0102CE0;
  v10 = _Block_copy(v11);

  [a1 didShowEnrollmentScreenWithUseCaseIdentifier:v9 with:v10];
  _Block_release(v10);
}

uint64_t AvailabilityFoundationClient.updateCSFOptInStatus(optedIn:)()
{
  sub_18E15A288();
  v1 = sub_18E1A7360();
  sub_18E15D028(v1);
  *(v0 + 48) = v2;
  *(v0 + 56) = sub_18E16BFBC();
  sub_18E159FD4();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_18E167D1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_18E16C000();
  sub_18E15D5C8();
  if (qword_1EABD0148 != -1)
  {
    sub_18E1594AC(&qword_1EABD0148);
  }

  sub_18E16BFF4();
  sub_18E15A3DC(v11, qword_1EABD0150);
  v12 = sub_18E15A274();
  v13(v12);
  v14 = sub_18E1A7340();
  v15 = sub_18E1A7710();
  sub_18E15AE7C(v15);
  sub_18E16C030();
  if (v16)
  {
    sub_18E15BF88();
    sub_18E15DB14();
    sub_18E16C018();
    *v10 = 136315138;
    sub_18E15DBA0();
    *(v10 + 4) = sub_18E1694A4(0xD00000000000001ELL, v17, v18);
    sub_18E15BC70(&dword_18E157000, v19, v20, "%s is unimplemented.");
    sub_18E15DA9C();
    sub_18E159850();
  }

  v21 = sub_18E159F34();
  v22(v21);

  sub_18E15A7EC();
  sub_18E15D83C();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10);
}

uint64_t AvailabilityFoundationClient.updateCSFAccessStatus(accessGranted:)()
{
  sub_18E15A288();
  v1 = sub_18E1A7360();
  sub_18E15D028(v1);
  *(v0 + 48) = v2;
  *(v0 + 56) = sub_18E16BFBC();
  sub_18E159FD4();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_18E167ED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_18E16C000();
  sub_18E15D5C8();
  if (qword_1EABD0148 != -1)
  {
    sub_18E1594AC(&qword_1EABD0148);
  }

  sub_18E16BFF4();
  sub_18E15A3DC(v11, qword_1EABD0150);
  v12 = sub_18E15A274();
  v13(v12);
  v14 = sub_18E1A7340();
  v15 = sub_18E1A7710();
  sub_18E15AE7C(v15);
  sub_18E16C030();
  if (v16)
  {
    sub_18E15BF88();
    sub_18E15DB14();
    sub_18E16C018();
    *v10 = 136315138;
    sub_18E15DBA0();
    *(v10 + 4) = sub_18E1694A4(0xD000000000000025, v17, v18);
    sub_18E15BC70(&dword_18E157000, v19, v20, "%s is unimplemented.");
    sub_18E15DA9C();
    sub_18E159850();
  }

  v21 = sub_18E159F34();
  v22(v21);

  sub_18E15A7EC();
  sub_18E15D83C();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10);
}

uint64_t sub_18E16800C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4E73497465737361 && a2 == 0xEF7964616552746FLL;
  if (v4 || (sub_18E1A7B90() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x53664F74726F6873 && a2 == 0xEE00656761726F74)
  {

    return 1;
  }

  else
  {
    v7 = sub_18E1A7B90();

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

uint64_t sub_18E1680EC(char a1)
{
  sub_18E1A7C60();
  MEMORY[0x193ACB0A0](a1 & 1);
  return sub_18E1A7CA0();
}

uint64_t sub_18E168134(char a1)
{
  if (a1)
  {
    return 0x53664F74726F6873;
  }

  else
  {
    return 0x4E73497465737361;
  }
}

uint64_t sub_18E168184(uint64_t a1)
{
  v2 = sub_18E169F78();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E1681C0(uint64_t a1)
{
  v2 = sub_18E169F78();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18E16820C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18E16800C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18E168234@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18E1680E4();
  *a1 = result;
  return result;
}

uint64_t sub_18E16825C(uint64_t a1)
{
  v2 = sub_18E169ED0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E168298(uint64_t a1)
{
  v2 = sub_18E169ED0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18E1682D4(uint64_t a1)
{
  v2 = sub_18E169F24();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E168310(uint64_t a1)
{
  v2 = sub_18E169F24();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AvailabilityFoundationClient.CloudSubscriptionFeaturesAssetUnavailableReason.encode(to:)()
{
  sub_18E159F44();
  v3 = v2;
  sub_18E161880(&qword_1EABD0418, &qword_18E1A8948);
  sub_18E159050();
  v26 = v5;
  v27 = v4;
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v6, v7);
  sub_18E15A1EC();
  v25 = v8;
  sub_18E161880(&qword_1EABD0420, &qword_18E1A8950);
  sub_18E159050();
  v23 = v10;
  v24 = v9;
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v11, v12);
  sub_18E15BB5C();
  v13 = sub_18E161880(&qword_1EABD0428, &qword_18E1A8958);
  sub_18E159050();
  v15 = v14;
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v23 - v18;
  v20 = *v0;
  sub_18E158E00(v3, v3[3]);
  sub_18E169ED0();
  sub_18E1A7CD0();
  v21 = (v15 + 8);
  if (v20)
  {
    sub_18E169F24();
    v22 = v25;
    sub_18E15BAD4();
    sub_18E1A7AD0();
    (*(v26 + 8))(v22, v27);
  }

  else
  {
    sub_18E169F78();
    sub_18E15BAD4();
    sub_18E1A7AD0();
    (*(v23 + 8))(v1, v24);
  }

  (*v21)(v19, v13);
  sub_18E15A29C();
}

uint64_t AvailabilityFoundationClient.CloudSubscriptionFeaturesAssetUnavailableReason.hashValue.getter()
{
  sub_18E16C068();
  sub_18E1A7C60();
  sub_18E16C128();
  return sub_18E1A7CA0();
}

void AvailabilityFoundationClient.CloudSubscriptionFeaturesAssetUnavailableReason.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_18E159F44();
  a22 = v26;
  a23 = v27;
  v78 = v23;
  v29 = v28;
  v75 = v30;
  v77 = sub_18E161880(&qword_1EABD0448, &qword_18E1A8960);
  sub_18E159050();
  v74 = v31;
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v32, v33);
  v35 = v70 - v34;
  v36 = sub_18E161880(&qword_1EABD0450, &qword_18E1A8968);
  sub_18E159050();
  v73 = v37;
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v38, v39);
  sub_18E159FE0();
  v40 = sub_18E161880(&qword_1EABD0458, &qword_18E1A8970);
  sub_18E159050();
  v76 = v41;
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v42, v43);
  sub_18E15D458();
  sub_18E159D74(v29);
  sub_18E169ED0();
  v44 = v78;
  sub_18E1A7CC0();
  if (v44)
  {
    goto LABEL_10;
  }

  v71 = v36;
  v72 = v25;
  v78 = v29;
  v45 = v77;
  v46 = sub_18E1A7AA0();
  sub_18E15AF4C(v46, 0);
  v48 = v47;
  if (v50 == v49 >> 1)
  {
    v77 = v47;
LABEL_9:
    sub_18E1A78C0();
    swift_allocError();
    v66 = v65;
    sub_18E161880(&qword_1EABD06A0, &qword_18E1AA9F0);
    *v66 = &type metadata for AvailabilityFoundationClient.CloudSubscriptionFeaturesAssetUnavailableReason;
    v67 = sub_18E1A7A00();
    sub_18E15B9CC(v67);
    sub_18E1594D8();
    (*(v68 + 104))(v66);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v76 + 8))(v24, v40);
    v29 = v78;
LABEL_10:
    sub_18E158EC4(v29);
LABEL_11:
    sub_18E15A29C();
    return;
  }

  sub_18E16BFE4();
  v70[1] = 0;
  if (v55 < (v51 >> 1))
  {
    v56 = *(v54 + v52);
    v57 = sub_18E15BA58(v52 + 1, v51 >> 1, v48, v54, v52, v53);
    v59 = v58;
    v61 = v60;
    swift_unknownObjectRelease();
    if (v59 == v61 >> 1)
    {
      if (v56)
      {
        a13 = 1;
        sub_18E169F24();
        v62 = v35;
        sub_18E15D5F4(&type metadata for AvailabilityFoundationClient.CloudSubscriptionFeaturesAssetUnavailableReason.ShortOfStorageCodingKeys, &a13);
        v63 = v75;
        v64 = v76;
        swift_unknownObjectRelease();
        (*(v74 + 8))(v62, v45);
      }

      else
      {
        a12 = 0;
        sub_18E169F78();
        v69 = v72;
        sub_18E15D5F4(&type metadata for AvailabilityFoundationClient.CloudSubscriptionFeaturesAssetUnavailableReason.AssetIsNotReadyCodingKeys, &a12);
        v63 = v75;
        v64 = v76;
        swift_unknownObjectRelease();
        (*(v73 + 8))(v69, v71);
      }

      (*(v64 + 8))(v24, v59);
      *v63 = v56;
      sub_18E158EC4(v78);
      goto LABEL_11;
    }

    v77 = v57;
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t AvailabilityFoundationClient.updateCSFAssetStatus(unavailableReasons:)()
{
  sub_18E15A288();
  v1 = sub_18E1A7360();
  sub_18E15D028(v1);
  *(v0 + 48) = v2;
  *(v0 + 56) = sub_18E16BFBC();
  sub_18E159FD4();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_18E168B18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_18E16C000();
  sub_18E15D5C8();
  if (qword_1EABD0148 != -1)
  {
    sub_18E1594AC(&qword_1EABD0148);
  }

  sub_18E16BFF4();
  sub_18E15A3DC(v11, qword_1EABD0150);
  v12 = sub_18E15A274();
  v13(v12);
  v14 = sub_18E1A7340();
  v15 = sub_18E1A7710();
  sub_18E15AE7C(v15);
  sub_18E16C030();
  if (v16)
  {
    sub_18E15BF88();
    sub_18E15DB14();
    sub_18E16C018();
    *v10 = 136315138;
    sub_18E15DBA0();
    *(v10 + 4) = sub_18E1694A4(0xD000000000000029, v17, v18);
    sub_18E15BC70(&dword_18E157000, v19, v20, "%s is unimplemented.");
    sub_18E15DA9C();
    sub_18E159850();
  }

  v21 = sub_18E159F34();
  v22(v21);

  sub_18E15A7EC();
  sub_18E15D83C();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10);
}

GenerativeModelsFoundation::AvailabilityFoundationClient::CFUType_optional __swiftcall AvailabilityFoundationClient.CFUType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_18E1A79E0();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t AvailabilityFoundationClient.CFUType.rawValue.getter()
{
  if (*v0)
  {
    return 7169121;
  }

  else
  {
    return 7169633;
  }
}

uint64_t sub_18E168CE8@<X0>(uint64_t *a1@<X8>)
{
  result = AvailabilityFoundationClient.CFUType.rawValue.getter();
  *a1 = result;
  a1[1] = 0xE300000000000000;
  return result;
}

uint64_t AvailabilityFoundationClient.updateCFUSentDate(for:date:)()
{
  sub_18E15A288();
  v1 = sub_18E1A7360();
  sub_18E15D028(v1);
  *(v0 + 48) = v2;
  *(v0 + 56) = sub_18E16BFBC();
  sub_18E159FD4();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_18E168DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_18E16C000();
  sub_18E15D5C8();
  if (qword_1EABD0148 != -1)
  {
    sub_18E1594AC(&qword_1EABD0148);
  }

  sub_18E16BFF4();
  sub_18E15A3DC(v11, qword_1EABD0150);
  v12 = sub_18E15A274();
  v13(v12);
  v14 = sub_18E1A7340();
  v15 = sub_18E1A7710();
  sub_18E15AE7C(v15);
  sub_18E16C030();
  if (v16)
  {
    sub_18E15BF88();
    sub_18E15DB14();
    sub_18E16C018();
    *v10 = 136315138;
    sub_18E15DBA0();
    *(v10 + 4) = sub_18E1694A4(0xD00000000000001CLL, v17, v18);
    sub_18E15BC70(&dword_18E157000, v19, v20, "%s is unimplemented.");
    sub_18E15DA9C();
    sub_18E159850();
  }

  v21 = sub_18E159F34();
  v22(v21);

  sub_18E15A7EC();
  sub_18E15D83C();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10);
}

uint64_t AvailabilityFoundationClient.updateCFUEngagedDate(for:date:)()
{
  sub_18E15A288();
  v1 = sub_18E1A7360();
  sub_18E15D028(v1);
  *(v0 + 48) = v2;
  *(v0 + 56) = sub_18E16BFBC();
  sub_18E159FD4();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_18E168F70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_18E16C000();
  sub_18E15D5C8();
  if (qword_1EABD0148 != -1)
  {
    sub_18E1594AC(&qword_1EABD0148);
  }

  sub_18E16BFF4();
  sub_18E15A3DC(v11, qword_1EABD0150);
  v12 = sub_18E15A274();
  v13(v12);
  v14 = sub_18E1A7340();
  v15 = sub_18E1A7710();
  sub_18E15AE7C(v15);
  sub_18E16C030();
  if (v16)
  {
    sub_18E15BF88();
    sub_18E15DB14();
    sub_18E16C018();
    *v10 = 136315138;
    sub_18E15DBA0();
    *(v10 + 4) = sub_18E1694A4(0xD00000000000001FLL, v17, v18);
    sub_18E15BC70(&dword_18E157000, v19, v20, "%s is unimplemented.");
    sub_18E15DA9C();
    sub_18E159850();
  }

  v21 = sub_18E159F34();
  v22(v21);

  sub_18E15A7EC();
  sub_18E15D83C();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10);
}

uint64_t AvailabilityFoundationClient.deinit()
{

  return v0;
}

uint64_t AvailabilityFoundationClient.__deallocating_deinit()
{
  AvailabilityFoundationClient.deinit();
  v0 = sub_18E15CF58();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_18E1690F0(uint64_t a1, id *a2)
{
  result = sub_18E1A7510();
  *a2 = 0;
  return result;
}

uint64_t sub_18E16916C(uint64_t a1, id *a2)
{
  v3 = sub_18E1A7520();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_18E1691EC@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_18E169214(a2);
  *a1 = result;
  return result;
}

uint64_t sub_18E169214(uint64_t a1)
{
  sub_18E1A7530();
  v1 = sub_18E1A7500();

  return v1;
}

uint64_t sub_18E169254(uint64_t a1)
{
  v1 = sub_18E1A7530();
  v2 = MEMORY[0x193ACAA50](v1);

  return v2;
}

uint64_t sub_18E169294(uint64_t a1, uint64_t a2)
{
  sub_18E1A7530();
  sub_18E1A75C0();
}

uint64_t sub_18E1692F0(uint64_t a1, uint64_t a2)
{
  sub_18E1A7530();
  sub_18E1A7C60();
  sub_18E1A75C0();
  v2 = sub_18E1A7CA0();

  return v2;
}

uint64_t sub_18E169370@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_18E1A7500();

  *a2 = v3;
  return result;
}

uint64_t sub_18E1693B8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_18E1693E4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_18E1693E8(uint64_t a1)
{
  v2 = sub_18E16BB88(&qword_1EABCFC58, type metadata accessor for FileAttributeKey, &unk_18E1AA318);
  v3 = sub_18E16BB88(&qword_1EABD0500, type metadata accessor for FileAttributeKey, &unk_18E1AA26C);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_18E1694A4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  sub_18E159FD4();
  v9 = sub_18E169564(v6, v7, v8, 1, a1, a2);
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
    sub_18E16BBD0(v14, *a3);
    *a3 = v12 + 32;
  }

  sub_18E158EC4(v14);
  return v10;
}

unint64_t sub_18E169564(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_18E169664(a5, a6);
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
    result = sub_18E1A78F0();
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

uint64_t sub_18E169664(uint64_t a1, unint64_t a2)
{
  v3 = sub_18E1696B0(a1, a2);
  sub_18E1697C8(&unk_1F0101BA0);
  return v3;
}

uint64_t sub_18E1696B0(uint64_t a1, unint64_t a2)
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

  for (; v5; v5 = sub_18E1A7610())
  {
    result = sub_18E1698AC(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_18E1A7850();
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
          result = sub_18E1A78F0();
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

uint64_t sub_18E1697C8(uint64_t result)
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

    result = sub_18E16991C(result, v7, 1, v3);
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

void *sub_18E1698AC(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_18E161880(&qword_1EABD04E0, qword_18E1AA1A0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_18E16991C(char *result, int64_t a2, char a3, char *a4)
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
    sub_18E161880(&qword_1EABD04E0, qword_18E1AA1A0);
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

unint64_t sub_18E169A10()
{
  result = qword_1EABCFEE8;
  if (!qword_1EABCFEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABCFEE8);
  }

  return result;
}

uint64_t sub_18E169A64(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_18E169AAC()
{
  result = qword_1EABCFEA0;
  if (!qword_1EABCFEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABCFEA0);
  }

  return result;
}

uint64_t sub_18E169B00(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_18E169A64(&qword_1EABD03B0, &qword_18E1A8898);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_18E169B78()
{
  result = qword_1EABCFDC8;
  if (!qword_1EABCFDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABCFDC8);
  }

  return result;
}

unint64_t sub_18E169BCC()
{
  result = qword_1EABD00E8;
  if (!qword_1EABD00E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD00E8);
  }

  return result;
}

unint64_t sub_18E169C20()
{
  result = qword_1EABCFED0;
  if (!qword_1EABCFED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABCFED0);
  }

  return result;
}

unint64_t sub_18E169C74()
{
  result = qword_1EABCFE98;
  if (!qword_1EABCFE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABCFE98);
  }

  return result;
}

unint64_t sub_18E169CC8()
{
  result = qword_1EABD03E0;
  if (!qword_1EABD03E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD03E0);
  }

  return result;
}

unint64_t sub_18E169D1C()
{
  result = qword_1EABD00C0;
  if (!qword_1EABD00C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD00C0);
  }

  return result;
}

unint64_t sub_18E169D70()
{
  result = qword_1EABCFDC0;
  if (!qword_1EABCFDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABCFDC0);
  }

  return result;
}

unint64_t sub_18E169DC4()
{
  result = qword_1EABD0098;
  if (!qword_1EABD0098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0098);
  }

  return result;
}

unint64_t sub_18E169E18()
{
  result = qword_1EABCFEC8;
  if (!qword_1EABCFEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABCFEC8);
  }

  return result;
}

unint64_t sub_18E169E6C(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

unint64_t sub_18E169E7C()
{
  result = qword_1EABCFDB8;
  if (!qword_1EABCFDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABCFDB8);
  }

  return result;
}

unint64_t sub_18E169ED0()
{
  result = qword_1EABD0430;
  if (!qword_1EABD0430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0430);
  }

  return result;
}

unint64_t sub_18E169F24()
{
  result = qword_1EABD0438;
  if (!qword_1EABD0438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0438);
  }

  return result;
}

unint64_t sub_18E169F78()
{
  result = qword_1EABD0440;
  if (!qword_1EABD0440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0440);
  }

  return result;
}

unint64_t sub_18E169FD0()
{
  result = qword_1EABCFEF0;
  if (!qword_1EABCFEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABCFEF0);
  }

  return result;
}

unint64_t sub_18E16A028()
{
  result = qword_1EABD0460;
  if (!qword_1EABD0460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0460);
  }

  return result;
}

unint64_t sub_18E16A080()
{
  result = qword_1EABD0468;
  if (!qword_1EABD0468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0468);
  }

  return result;
}

uint64_t sub_18E16A13C(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_18E16A160(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFD && *(a1 + 8))
    {
      v2 = *a1 + 2147483645;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 2;
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

uint64_t sub_18E16A1B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_18E16A210(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_18E16A264(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_18E16A2C0(void *result, int a2)
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

uint64_t sub_18E16A2F0(uint64_t *a1, int a2)
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

uint64_t sub_18E16A330(uint64_t result, int a2, int a3)
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

uint64_t sub_18E16A3B4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 464))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_18E16A3D4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 456) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
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
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 464) = v3;
  return result;
}

uint64_t sub_18E16A4C0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_18E16A4E0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

_BYTE *sub_18E16A51C(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = sub_18E16C060(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AvailabilityFoundationClient.CloudSubscriptionFeaturesAvailabilityWrapper.Availability.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AvailabilityFoundationClient.CloudSubscriptionFeaturesAvailabilityWrapper.Availability.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_18E16A7B8(unsigned __int8 *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return sub_18E160B38(a1);
}

_BYTE *sub_18E16A804(_BYTE *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for RusageDataFormat(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF6)
  {
    if (a2 + 10 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 10) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 11;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v5 = v6 - 11;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_18E16A938(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
          result = sub_18E16C060(result, a2 + 10);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_18E16AAC4()
{
  result = qword_1EABD0478;
  if (!qword_1EABD0478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0478);
  }

  return result;
}

unint64_t sub_18E16AB1C()
{
  result = qword_1EABD0480;
  if (!qword_1EABD0480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0480);
  }

  return result;
}

unint64_t sub_18E16AB74()
{
  result = qword_1EABD0488;
  if (!qword_1EABD0488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0488);
  }

  return result;
}

unint64_t sub_18E16ABCC()
{
  result = qword_1EABD0490;
  if (!qword_1EABD0490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0490);
  }

  return result;
}

unint64_t sub_18E16AC24()
{
  result = qword_1EABD0498;
  if (!qword_1EABD0498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0498);
  }

  return result;
}

unint64_t sub_18E16AC7C()
{
  result = qword_1EABD04A0;
  if (!qword_1EABD04A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD04A0);
  }

  return result;
}

unint64_t sub_18E16ACD4()
{
  result = qword_1EABD04A8;
  if (!qword_1EABD04A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD04A8);
  }

  return result;
}

unint64_t sub_18E16AD2C()
{
  result = qword_1EABD04B0;
  if (!qword_1EABD04B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD04B0);
  }

  return result;
}

unint64_t sub_18E16AD84()
{
  result = qword_1EABD04B8;
  if (!qword_1EABD04B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD04B8);
  }

  return result;
}

unint64_t sub_18E16ADDC()
{
  result = qword_1EABD04C0;
  if (!qword_1EABD04C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD04C0);
  }

  return result;
}

unint64_t sub_18E16AE34()
{
  result = qword_1EABD04C8;
  if (!qword_1EABD04C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD04C8);
  }

  return result;
}

unint64_t sub_18E16AE8C()
{
  result = qword_1EABD04D0;
  if (!qword_1EABD04D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD04D0);
  }

  return result;
}

unint64_t sub_18E16AEE4()
{
  result = qword_1EABD0088;
  if (!qword_1EABD0088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0088);
  }

  return result;
}

unint64_t sub_18E16AF3C()
{
  result = qword_1EABD0090;
  if (!qword_1EABD0090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0090);
  }

  return result;
}

unint64_t sub_18E16AF94()
{
  result = qword_1EABD00B0;
  if (!qword_1EABD00B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD00B0);
  }

  return result;
}

unint64_t sub_18E16AFEC()
{
  result = qword_1EABD00B8;
  if (!qword_1EABD00B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD00B8);
  }

  return result;
}

unint64_t sub_18E16B044()
{
  result = qword_1EABD00C8;
  if (!qword_1EABD00C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD00C8);
  }

  return result;
}

unint64_t sub_18E16B09C()
{
  result = qword_1EABD00D0;
  if (!qword_1EABD00D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD00D0);
  }

  return result;
}

unint64_t sub_18E16B0F4()
{
  result = qword_1EABD00A0;
  if (!qword_1EABD00A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD00A0);
  }

  return result;
}

unint64_t sub_18E16B14C()
{
  result = qword_1EABD00A8;
  if (!qword_1EABD00A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD00A8);
  }

  return result;
}

unint64_t sub_18E16B1A4()
{
  result = qword_1EABD00D8;
  if (!qword_1EABD00D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD00D8);
  }

  return result;
}

unint64_t sub_18E16B1FC()
{
  result = qword_1EABD00E0;
  if (!qword_1EABD00E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD00E0);
  }

  return result;
}

unint64_t sub_18E16B254()
{
  result = qword_1EABCFED8;
  if (!qword_1EABCFED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABCFED8);
  }

  return result;
}

unint64_t sub_18E16B2AC()
{
  result = qword_1EABCFEE0;
  if (!qword_1EABCFEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABCFEE0);
  }

  return result;
}

unint64_t sub_18E16B304()
{
  result = qword_1EABCFF28;
  if (!qword_1EABCFF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABCFF28);
  }

  return result;
}

unint64_t sub_18E16B35C()
{
  result = qword_1EABCFF30;
  if (!qword_1EABCFF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABCFF30);
  }

  return result;
}

unint64_t sub_18E16B3B4()
{
  result = qword_1EABCFEF8;
  if (!qword_1EABCFEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABCFEF8);
  }

  return result;
}

unint64_t sub_18E16B40C()
{
  result = qword_1EABCFF00;
  if (!qword_1EABCFF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABCFF00);
  }

  return result;
}

unint64_t sub_18E16B464()
{
  result = qword_1EABCFF18;
  if (!qword_1EABCFF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABCFF18);
  }

  return result;
}

unint64_t sub_18E16B4BC()
{
  result = qword_1EABCFF20;
  if (!qword_1EABCFF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABCFF20);
  }

  return result;
}

unint64_t sub_18E16B514()
{
  result = qword_1EABCFF08;
  if (!qword_1EABCFF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABCFF08);
  }

  return result;
}

unint64_t sub_18E16B56C()
{
  result = qword_1EABCFF10;
  if (!qword_1EABCFF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABCFF10);
  }

  return result;
}

unint64_t sub_18E16B5C4()
{
  result = qword_1EABCFF80;
  if (!qword_1EABCFF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABCFF80);
  }

  return result;
}

unint64_t sub_18E16B61C()
{
  result = qword_1EABCFF88;
  if (!qword_1EABCFF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABCFF88);
  }

  return result;
}

unint64_t sub_18E16B674()
{
  result = qword_1EABCFF40;
  if (!qword_1EABCFF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABCFF40);
  }

  return result;
}

unint64_t sub_18E16B6CC()
{
  result = qword_1EABCFF48;
  if (!qword_1EABCFF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABCFF48);
  }

  return result;
}

unint64_t sub_18E16B724()
{
  result = qword_1EABCFF58;
  if (!qword_1EABCFF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABCFF58);
  }

  return result;
}

unint64_t sub_18E16B77C()
{
  result = qword_1EABCFF60;
  if (!qword_1EABCFF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABCFF60);
  }

  return result;
}

unint64_t sub_18E16B7D4()
{
  result = qword_1EABCFF70;
  if (!qword_1EABCFF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABCFF70);
  }

  return result;
}

unint64_t sub_18E16B82C()
{
  result = qword_1EABCFF78;
  if (!qword_1EABCFF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABCFF78);
  }

  return result;
}

unint64_t sub_18E16B884()
{
  result = qword_1EABCFF90;
  if (!qword_1EABCFF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABCFF90);
  }

  return result;
}

unint64_t sub_18E16B8DC()
{
  result = qword_1EABCFF98;
  if (!qword_1EABCFF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABCFF98);
  }

  return result;
}

unint64_t sub_18E16B934()
{
  result = qword_1EABCFFC8;
  if (!qword_1EABCFFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABCFFC8);
  }

  return result;
}

unint64_t sub_18E16B98C()
{
  result = qword_1EABCFFD0;
  if (!qword_1EABCFFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABCFFD0);
  }

  return result;
}

unint64_t sub_18E16B9E4()
{
  result = qword_1EABCFFA0;
  if (!qword_1EABCFFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABCFFA0);
  }

  return result;
}

unint64_t sub_18E16BA3C()
{
  result = qword_1EABCFFA8;
  if (!qword_1EABCFFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABCFFA8);
  }

  return result;
}

unint64_t sub_18E16BA94()
{
  result = qword_1EABCFFB0;
  if (!qword_1EABCFFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABCFFB0);
  }

  return result;
}

unint64_t sub_18E16BAEC()
{
  result = qword_1EABCFFB8;
  if (!qword_1EABCFFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABCFFB8);
  }

  return result;
}

uint64_t sub_18E16BB88(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_18E16BBD0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_18E16BC38(uint64_t a1)
{
  v2 = sub_18E161880(&qword_1EABD04E8, &unk_18E1B1920);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_18E16BCA0(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t sub_18E16BD00(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_18E16BD28()
{
  result = qword_1EABCFEC0;
  if (!qword_1EABCFEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABCFEC0);
  }

  return result;
}

uint64_t *sub_18E16BD84(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

void sub_18E16BDFC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

void sub_18E16BFA0()
{

  JUMPOUT(0x193ACB8D0);
}

uint64_t sub_18E16BFBC()
{

  return swift_task_alloc();
}

uint64_t sub_18E16C024(uint64_t result)
{
  *(v1 + 4) = result;
  *v2 = result;
  return result;
}

uint64_t sub_18E16C03C(uint64_t a1)
{

  return sub_18E1A7CC0();
}

void sub_18E16C0A0()
{

  os_activity_scope_leave(v0 + 1);
}

void sub_18E16C0C0()
{

  os_activity_scope_leave(v0 + 1);
}

void sub_18E16C0E0()
{

  os_activity_scope_leave(v0 + 1);
}

void sub_18E16C128()
{

  JUMPOUT(0x193ACB0A0);
}

uint64_t DocumentRegistration.internalStatus.getter()
{
  v2 = sub_18E15D6F0();
  type metadata accessor for DocumentRegistration(v2);
  sub_18E1594E4();
  return sub_18E16C1DC(v1 + v3, v0);
}

uint64_t sub_18E16C1DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_18E15933C();
  v5(v4);
  sub_18E159098();
  (*(v6 + 16))(a2, v2);
  return a2;
}

uint64_t DocumentRegistration.url.getter()
{
  v2 = sub_18E15D6F0();
  v3 = *(type metadata accessor for DocumentRegistration(v2) + 24);
  sub_18E1A6D10();
  sub_18E159098();
  v6 = *(v5 + 16);

  return v6(v0, v1 + v3, v4);
}

void static DocumentRegistration.registering(progress:url:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_18E15D880();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  sub_18E15D6F0();
  v27 = sub_18E1A6D10();
  sub_18E159050();
  v29 = v28;
  MEMORY[0x1EEE9AC00](v30, v31);
  sub_18E15A808();
  v34 = v33 - v32;
  type metadata accessor for DocumentRegistration.InternalStatus(0);
  sub_18E159098();
  MEMORY[0x1EEE9AC00](v35, v36);
  sub_18E1590A8();
  v39 = v37 - v38;
  MEMORY[0x1EEE9AC00](v40, v41);
  v43 = &a9 - v42;
  *v43 = *v26;
  *(v43 + 8) = *(v26 + 8);
  swift_storeEnumTagMultiPayload();
  (*(v29 + 16))(v34, v24, v27);
  v44 = type metadata accessor for DocumentRegistration(0);
  sub_18E1594E4();
  sub_18E16C1DC(v43, v20 + v45);
  (*(v29 + 32))(v20 + *(v44 + 24), v34, v27);
  sub_18E16C4E0(v43, v39);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    *v20 = *v39;
    *(v20 + 8) = *(v39 + 8);
    sub_18E15AB5C();
LABEL_6:
    sub_18E15C540();
    goto LABEL_7;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_18E159080();
    sub_18E16D598(v39, v48);
    *v20 = 0;
    sub_18E15AB5C();
    *(v20 + 8) = 0;
    *(v20 + 16) = 0;
    goto LABEL_6;
  }

  sub_18E1A71A0();
  sub_18E159098();
  (*(v47 + 32))(v20, v39);
  sub_18E15AB5C();
LABEL_7:
  swift_storeEnumTagMultiPayload();
  sub_18E15BCD4();
}

uint64_t sub_18E16C4E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DocumentRegistration.InternalStatus(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void static DocumentRegistration.finished(identifier:url:)()
{
  sub_18E15D880();
  v27 = v2;
  v4 = v3;
  sub_18E15D6F0();
  v5 = sub_18E1A6D10();
  sub_18E159050();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8, v9);
  sub_18E15A808();
  v12 = v11 - v10;
  type metadata accessor for DocumentRegistration.InternalStatus(0);
  sub_18E159098();
  MEMORY[0x1EEE9AC00](v13, v14);
  sub_18E1590A8();
  v17 = v15 - v16;
  MEMORY[0x1EEE9AC00](v18, v19);
  sub_18E15D474();
  v20 = sub_18E1A71A0();
  sub_18E159F5C();
  v22 = v21;
  (*(v21 + 16))(v1, v4, v20);
  swift_storeEnumTagMultiPayload();
  (*(v7 + 16))(v12, v27, v5);
  v23 = type metadata accessor for DocumentRegistration(0);
  sub_18E1594E4();
  sub_18E16C1DC(v1, v0 + v24);
  (*(v7 + 32))(v0 + *(v23 + 24), v12, v5);
  sub_18E16C4E0(v1, v17);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    *v0 = *v17;
    *(v0 + 8) = *(v17 + 8);
    sub_18E15AB5C();
LABEL_6:
    sub_18E15C540();
    goto LABEL_7;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_18E159080();
    sub_18E16D598(v17, v26);
    *v0 = 0;
    sub_18E15AB5C();
    *(v0 + 8) = 0;
    *(v0 + 16) = 0;
    goto LABEL_6;
  }

  (*(v22 + 32))(v0, v17, v20);
  sub_18E15AB5C();
LABEL_7:
  swift_storeEnumTagMultiPayload();
  sub_18E15BCD4();
}

void static DocumentRegistration.error(description:url:)()
{
  sub_18E15D880();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  sub_18E15D6F0();
  v8 = sub_18E1A6D10();
  sub_18E159050();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  sub_18E15A808();
  v15 = v14 - v13;
  type metadata accessor for DocumentRegistration.InternalStatus(0);
  sub_18E159098();
  MEMORY[0x1EEE9AC00](v16, v17);
  sub_18E1590A8();
  v20 = v18 - v19;
  MEMORY[0x1EEE9AC00](v21, v22);
  sub_18E15D474();
  *v1 = v7;
  v1[1] = v5;
  swift_storeEnumTagMultiPayload();
  (*(v10 + 16))(v15, v3, v8);
  v23 = type metadata accessor for DocumentRegistration(0);
  sub_18E1594E4();
  sub_18E16C1DC(v1, v0 + v24);
  (*(v10 + 32))(v0 + *(v23 + 24), v15, v8);
  sub_18E16C4E0(v1, v20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {

      sub_18E159080();
      sub_18E16D598(v20, v27);
      *v0 = 0;
      sub_18E15AB5C();
      *(v0 + 8) = 0;
      *(v0 + 16) = 0;
      sub_18E15C540();
      swift_storeEnumTagMultiPayload();
      goto LABEL_7;
    }

    sub_18E1A71A0();
    sub_18E159098();
    (*(v26 + 32))(v0, v20);
    sub_18E15AB5C();
  }

  else
  {
    *v0 = *v20;
    *(v0 + 8) = *(v20 + 8);
    sub_18E15AB5C();
    sub_18E15C540();
  }

  swift_storeEnumTagMultiPayload();

LABEL_7:
  sub_18E15BCD4();
}

void static DocumentRegistration.InternalStatus.== infix(_:_:)()
{
  sub_18E15D880();
  v2 = v1;
  v4 = v3;
  sub_18E1A71A0();
  sub_18E159050();
  v39 = v6;
  v40 = v5;
  MEMORY[0x1EEE9AC00](v5, v7);
  v8 = sub_18E15D988();
  type metadata accessor for DocumentRegistration.InternalStatus(v8);
  sub_18E159098();
  MEMORY[0x1EEE9AC00](v9, v10);
  sub_18E1590A8();
  v13 = (v11 - v12);
  v16 = MEMORY[0x1EEE9AC00](v14, v15);
  v18 = &v39 - v17;
  MEMORY[0x1EEE9AC00](v16, v19);
  v21 = &v39 - v20;
  v22 = sub_18E161880(&qword_1EABD0508, &qword_18E1AA360);
  v24 = MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v26 = &v39 - v25;
  v27 = (&v39 + *(v24 + 56) - v25);
  sub_18E16C1DC(v4, &v39 - v25);
  sub_18E16C1DC(v2, v27);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_18E1594E4();
    sub_18E16C1DC(v26, v21);
    if (!swift_getEnumCaseMultiPayload())
    {
      goto LABEL_14;
    }

LABEL_17:
    sub_18E16D540(v26, &qword_1EABD0508, &qword_18E1AA360);
    goto LABEL_18;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_18E1594E4();
    sub_18E16C1DC(v26, v13);
    v36 = *v13;
    v35 = v13[1];
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      if (v36 != *v27 || v35 != v27[1])
      {
        sub_18E1A7B90();
      }

      goto LABEL_14;
    }

    goto LABEL_17;
  }

  sub_18E1594E4();
  sub_18E16C1DC(v26, v18);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v39 + 8))(v18, v40);
    goto LABEL_17;
  }

  v29 = v39;
  v30 = sub_18E15D618();
  v31 = v27;
  v32 = v40;
  v33(v30, v31, v40);
  sub_18E1A7190();
  v34 = *(v29 + 8);
  v34(v0, v32);
  v34(v18, v32);
LABEL_14:
  sub_18E159080();
  sub_18E16D598(v26, v38);
LABEL_18:
  sub_18E15BCD4();
}

uint64_t DocumentRegistration.InternalStatus.hash(into:)()
{
  sub_18E15933C();
  v2 = sub_18E1A71A0();
  sub_18E159050();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5, v6);
  v7 = sub_18E15D988();
  type metadata accessor for DocumentRegistration.InternalStatus(v7);
  sub_18E159098();
  MEMORY[0x1EEE9AC00](v8, v9);
  sub_18E15A808();
  v12 = v11 - v10;
  sub_18E1594E4();
  sub_18E16C1DC(v0, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v14 = sub_18E15D618();
      v15(v14, v12, v2);
      MEMORY[0x193ACB0A0](1);
      sub_18E15B788();
      v18 = sub_18E16D788(v16, v17, MEMORY[0x1E69C6188]);
      sub_18E16DD3C(v18);
      return (*(v4 + 8))(v1, v2);
    }

    else
    {
      MEMORY[0x193ACB0A0](2);
      sub_18E1A75C0();
    }
  }

  else
  {
    v20 = *(v12 + 8);
    v21 = *(v12 + 16);
    MEMORY[0x193ACB0A0](0);
    sub_18E1A7C90();
    MEMORY[0x193ACB0A0](v20);
    return MEMORY[0x193ACB0A0](v21);
  }
}