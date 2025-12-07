uint64_t sub_23310B530()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23310B574()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23310B5E8()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23310B628()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23310B714(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D8, &qword_23329FAC0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_23310B78C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D8, &qword_23329FAC0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_23310BA90(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 3;
}

uint64_t sub_23310C224(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTSVBError.Reason(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }
}

uint64_t sub_23310C2F0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for TTSVBError.Reason(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2;
  }

  return result;
}

__n128 sub_23310C3B8(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_23310C428(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = sub_23328CE8C();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_23328CE1C();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1A18, &unk_233297730);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[18];

  return v15(v16, a2, v14);
}

uint64_t sub_23310C5A0(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_23328CE8C();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_23328CE1C();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1A18, &unk_233297730);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[18];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_23310C718(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_23310C72C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23310C764()
{
  MEMORY[0x23839D090](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23310C7A0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23310C7E0()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_23310C89C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D8, &qword_23329FAC0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_23310C914(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D8, &qword_23329FAC0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_23310C990(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2720, &qword_233298B58);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_23310CA08(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2720, &qword_233298B58);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_23310CA88()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_23310CAF4()
{
  v1 = sub_23328CC9C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_23328CE8C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 16) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;

  (*(v2 + 8))(v0 + v4, v1);

  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_23310CC5C()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_23310CCA4()
{

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_23310CCFC()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_23310CD4C()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_23310CD9C()
{
  v1 = sub_23328CE8C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, ((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 16, v3 | 7);
}

uint64_t sub_23310CE68()
{
  v1 = sub_23328CE8C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_23310CF40()
{
  v1 = sub_23328CE8C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, ((v5 + 17) & 0xFFFFFFFFFFFFFFF8) + 16, v3 | 7);
}

uint64_t sub_23310CFF0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23310D028()
{
  v1 = sub_23328CC9C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_23310D140()
{
  v1 = sub_23328CE8C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19A0, &unk_233290360) - 8);
  v7 = *(v6 + 80);
  v8 = (v5 + v7) & ~v7;
  v17 = *(v6 + 64);
  v9 = sub_23328CE1C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v16 = *(v10 + 64);

  (*(v2 + 8))(v0 + v4, v1);
  v12 = sub_23328CC9C();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v0 + v8, 1, v12))
  {
    (*(v13 + 8))(v0 + v8, v12);
  }

  v14 = (((((v17 + v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v11 + 16) & ~v11;

  (*(v10 + 8))(v0 + v14, v9);

  return MEMORY[0x2821FE8E8](v0, ((((((((((v16 + v14 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFF8) + 16, v3 | v7 | v11 | 7);
}

uint64_t sub_23310D3FC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23310D438()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23310D488()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23310D4C8()
{
  v1 = sub_23328CE8C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_23310D568()
{
  v1 = sub_23328CE8C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 24, v3 | 7);
}

uint64_t sub_23310D65C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE29A8, &qword_233299AC0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_23310D72C()
{
  v1 = sub_23328CE8C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 50) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19B0, &qword_233290370) - 8);
  v7 = *(v6 + 80);
  v8 = (v5 + v4 + v7 + 1) & ~v7;
  v9 = *(v6 + 64);

  v10 = *(v2 + 8);
  v10(v0 + v4, v1);
  if (!(*(v2 + 48))(v0 + v8, 1, v1))
  {
    v10(v0 + v8, v1);
  }

  return MEMORY[0x2821FE8E8](v0, ((v9 + v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v3 | v7 | 7);
}

uint64_t sub_23310D8B8()
{
  v1 = (type metadata accessor for TTSVBVoiceModel(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v15 = *(*v1 + 64);

  v4 = v1[7];
  v5 = sub_23328CE8C();
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v3 + v4, v5);
  v6(v0 + v3 + v1[8], v5);
  v7 = v1[9];
  v8 = sub_23328CE1C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 8);
  v10(v0 + v3 + v7, v8);

  v11 = v1[20];
  if (!(*(v9 + 48))(v0 + v3 + v11, 1, v8))
  {
    v10(v0 + v3 + v11, v8);
  }

  v12 = (v15 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x2821FE8E8](v0, v13 + 16, v2 | 7);
}

uint64_t sub_23310DB00()
{
  v1 = type metadata accessor for TTSVBError(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  sub_2331220AC(*(v0 + v3), *(v0 + v3 + 8), *(v0 + v3 + 16));
  v5 = v0 + v3 + *(v1 + 20);
  type metadata accessor for TTSVBError.Reason(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 7u:
    case 0x18u:
    case 0x1Cu:
    case 0x1Eu:
    case 0x22u:
    case 0x23u:
      goto LABEL_4;
    case 1u:
    case 2u:
    case 3u:
    case 4u:
    case 5u:
    case 6u:
    case 8u:
    case 9u:
    case 0xAu:
    case 0xBu:
    case 0xDu:
    case 0x10u:
    case 0x11u:
    case 0x12u:
    case 0x13u:
    case 0x14u:
    case 0x15u:
    case 0x16u:
    case 0x1Au:
      v6 = sub_23328CC9C();
      goto LABEL_3;
    case 0xCu:
      v10 = sub_23328CC9C();
      (*(*(v10 - 8) + 8))(v5, v10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1B10, &unk_233290990);
      goto LABEL_4;
    case 0xEu:
    case 0xFu:
      v7 = sub_23328CC9C();
      v8 = *(*(v7 - 8) + 8);
      v8(v5, v7);
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1B18, &qword_23329B0D0);
      v8(v5 + *(v9 + 48), v7);
      break;
    case 0x17u:
    case 0x19u:
    case 0x1Du:
    case 0x1Fu:
      v6 = sub_23328CE8C();
LABEL_3:
      (*(*(v6 - 8) + 8))(v5, v6);
      break;
    case 0x21u:

LABEL_4:

      break;
    default:
      break;
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_23310DDE8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23310DE20()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_23310DEA4()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE25D0, &unk_233290330) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_23328CC9C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  v9 = v0 + v3;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = v8;
    sub_2331220AC(*v9, *(v9 + 8), *(v9 + 16));
    v10 = type metadata accessor for TTSVBError(0);
    v11 = v9 + *(v10 + 20);
    type metadata accessor for TTSVBError.Reason(0);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
      case 7u:
      case 0x18u:
      case 0x1Cu:
      case 0x1Eu:
      case 0x22u:
      case 0x23u:
        goto LABEL_4;
      case 1u:
      case 2u:
      case 3u:
      case 4u:
      case 5u:
      case 6u:
      case 8u:
      case 9u:
      case 0xAu:
      case 0xBu:
      case 0xDu:
      case 0x10u:
      case 0x11u:
      case 0x12u:
      case 0x13u:
      case 0x14u:
      case 0x15u:
      case 0x16u:
      case 0x1Au:
        (*(v6 + 8))(v11, v5);
        break;
      case 0xCu:
        (*(v6 + 8))(v11, v5);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1B10, &unk_233290990);
        goto LABEL_4;
      case 0xEu:
      case 0xFu:
        v16 = *(v6 + 8);
        v16(v11, v5);
        v13 = v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1B18, &qword_23329B0D0) + 48);
        v16(v13, v5);
        break;
      case 0x17u:
      case 0x19u:
      case 0x1Du:
      case 0x1Fu:
        v12 = sub_23328CE8C();
        (*(*(v12 - 8) + 8))(v11, v12);
        break;
      case 0x21u:

LABEL_4:

        break;
      default:
        break;
    }

    v8 = v17;
  }

  v14 = (((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + v7 + 16) & ~v7;

  (*(v6 + 8))(v0 + v14, v5);

  return MEMORY[0x2821FE8E8](v0, v14 + v8, v2 | v7 | 7);
}

uint64_t sub_23310E238()
{

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_23310E29C()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_23310E474()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_23310E4B4()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_23310E4F4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23310E53C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23310E588(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTSVBVoiceModel(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_23310E5F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTSVBVoiceModel(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_23310E664()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23310E69C()
{
  MEMORY[0x23839D090](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23310E6D4()
{

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_23310E714()
{

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_23310E76C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23310E7AC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23310E7E4()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23310E82C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23310E86C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23310E8A4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23310E8E4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23310E91C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTSVBVoice(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_23310E9D8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for TTSVBVoice(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_23310EA90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D00, &qword_23329AB80);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D18, &unk_23329AB88);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_23310EB98(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D00, &qword_23329AB80);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D18, &unk_23329AB88);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_23310ECAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTSVBVoiceModel(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_23310ED18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTSVBVoiceModel(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_23310ED88()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23310EDC0()
{
  v1 = sub_23328CC9C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_23310EE70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23328CC9C();
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

uint64_t sub_23310EF30(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_23328CC9C();
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

uint64_t sub_23310EFEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTSVBVoiceModel(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_23328CC9C();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = sub_23328CE8C();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_23310F12C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for TTSVBVoiceModel(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_23328CC9C();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = sub_23328CE8C();
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_23310F294(uint64_t a1, uint64_t a2)
{
  v4 = sub_23328C93C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_23310F300(uint64_t a1, uint64_t a2)
{
  v4 = sub_23328C93C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_23310F388()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23310F3C8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23310F400()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23310F458()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE25D0, &unk_233290330) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);

  v5 = v0 + v3;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2331220AC(*v5, *(v5 + 8), *(v5 + 16));
    v6 = type metadata accessor for TTSVBError(0);
    v7 = v5 + *(v6 + 20);
    type metadata accessor for TTSVBError.Reason(0);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
      case 7u:
      case 0x18u:
      case 0x1Cu:
      case 0x1Eu:
      case 0x22u:
      case 0x23u:
        goto LABEL_5;
      case 1u:
      case 2u:
      case 3u:
      case 4u:
      case 5u:
      case 6u:
      case 8u:
      case 9u:
      case 0xAu:
      case 0xBu:
      case 0xDu:
      case 0x10u:
      case 0x11u:
      case 0x12u:
      case 0x13u:
      case 0x14u:
      case 0x15u:
      case 0x16u:
      case 0x1Au:
        v8 = sub_23328CC9C();
        goto LABEL_4;
      case 0xCu:
        v12 = sub_23328CC9C();
        (*(*(v12 - 8) + 8))(v7, v12);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1B10, &unk_233290990);
        goto LABEL_5;
      case 0xEu:
      case 0xFu:
        v9 = sub_23328CC9C();
        v10 = *(*(v9 - 8) + 8);
        v10(v7, v9);
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1B18, &qword_23329B0D0);
        v10(v7 + *(v11 + 48), v9);
        break;
      case 0x17u:
      case 0x19u:
      case 0x1Du:
      case 0x1Fu:
        v8 = sub_23328CE8C();
LABEL_4:
        (*(*(v8 - 8) + 8))(v7, v8);
        break;
      case 0x21u:

LABEL_5:

        break;
      default:
        break;
    }
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_23310F760()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23310F798()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23310F7F4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23310F82C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23310F8C0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19A0, &unk_233290360);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1A18, &unk_233297730);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 60);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_23310F9FC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19A0, &unk_233290360);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1A18, &unk_233297730);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 60);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_23310FB4C()
{
  MEMORY[0x23839D090](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23310FB88()
{
  v1 = sub_23328CC9C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_23310FC64()
{
  v1 = sub_23328CC9C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, ((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 79) & 0xFFFFFFFFFFFFFFF8) + 16, v3 | 7);
}

uint64_t sub_23310FD98()
{

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_23310FDF8(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_23328CC9C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_23310FEA4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_23328CC9C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23310FF4C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23310FF84()
{
  v1 = sub_23328CC9C();
  v2 = *(v1 - 8);
  v7 = *(v2 + 80);
  v3 = (v7 + 48) & ~v7;
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return MEMORY[0x2821FE8E8](v0, ((((((((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16, v7 | 7);
}

uint64_t sub_23311010C()
{
  v1 = sub_23328CC9C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 72) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 16, v3 | 7);
}

uint64_t sub_233110218()
{
  v1 = (type metadata accessor for TTSVBAudioService.RecordingResult(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  v6 = sub_23328CC9C();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_233110330()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_233110370()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2331103B8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_233110458()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE33A8, &unk_23329D700);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2331104EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D00, &qword_23329AB80);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_233110564(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D00, &qword_23329AB80);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2331105E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3400, &unk_23329DB70);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3408, &unk_23329E570);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3410, &qword_23329DB80);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 28);

  return v15(v16, a2, v14);
}

uint64_t sub_233110744(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3400, &unk_23329DB70);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3408, &unk_23329E570);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
    goto LABEL_5;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3410, &qword_23329DB80);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 28);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_2331108B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3480, &qword_23329DDF0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_23311092C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3480, &qword_23329DDF0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2331109A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D8, &qword_23329FAC0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_233110A20(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D8, &qword_23329FAC0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_233110A9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3400, &unk_23329DB70);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3500, &qword_23329E2E8);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_233110BA4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3400, &unk_23329DB70);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3500, &qword_23329E2E8);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_233110CB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3408, &unk_23329E570);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D8, &qword_23329FAC0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 24);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_233110DC0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3408, &unk_23329E570);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D8, &qword_23329FAC0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 24);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_233110ED4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D00, &qword_23329AB80);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3408, &unk_23329E570);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3400, &unk_23329DB70);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 28);

  return v15(v16, a2, v14);
}

uint64_t sub_233111038(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D00, &qword_23329AB80);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3408, &unk_23329E570);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3400, &unk_23329DB70);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 28);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_2331111A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D00, &qword_23329AB80);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_233111220(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D00, &qword_23329AB80);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_23311129C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D00, &qword_23329AB80);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_233111314(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D00, &qword_23329AB80);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_233111390(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D00, &qword_23329AB80);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D8, &qword_23329FAC0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_233111498(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D00, &qword_23329AB80);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D8, &qword_23329FAC0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_2331115AC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2331115F4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23311162C()
{
  v1 = sub_23328CC9C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, ((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_23311172C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_23328CC9C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2331117D8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_23328CC9C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2331118B8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2990, &qword_233299AB0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_233111A38(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_23328CE8C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_233111AE4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_23328CE8C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_233111B88(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D8, &qword_23329FAC0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_233111C00(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D8, &qword_23329FAC0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_233111C7C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D00, &qword_23329AB80);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_233111CF4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D00, &qword_23329AB80);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_233111D70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D8, &qword_23329FAC0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_233111DE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D8, &qword_23329FAC0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_233111EB4(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = sub_23328CE8C();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_23328CE1C();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[8];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1A18, &unk_233297730);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[18];

  return v15(v16, a2, v14);
}

uint64_t sub_23311202C(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_23328CE8C();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_23328CE1C();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[8];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1A18, &unk_233297730);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[18];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_2331121A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D8, &qword_23329FAC0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_23311221C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D8, &qword_23329FAC0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_233112298(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3400, &unk_23329DB70);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_233112310(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3400, &unk_23329DB70);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_23311238C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D00, &qword_23329AB80);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_233112404(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D00, &qword_23329AB80);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_233112480(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D00, &qword_23329AB80);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3500, &qword_23329E2E8);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3408, &unk_23329E570);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_2331125E4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D00, &qword_23329AB80);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3500, &qword_23329E2E8);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3408, &unk_23329E570);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_233112754(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3A80, &unk_2332A1DC0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3408, &unk_23329E570);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_23311285C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3A80, &unk_2332A1DC0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3408, &unk_23329E570);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_233112970(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3400, &unk_23329DB70);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3AC8, &qword_2332A2068);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_11:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_12;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3408, &unk_23329E570);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[7];
    goto LABEL_11;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D8, &qword_23329FAC0);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[8];
    goto LABEL_11;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3410, &qword_23329DB80);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[11];
    goto LABEL_11;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3AD8, &qword_2332A2080);
  v19 = *(*(v18 - 8) + 48);
  v20 = a1 + a3[13];

  return v19(v20, a2, v18);
}

uint64_t sub_233112BD0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3400, &unk_23329DB70);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_12:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3AC8, &qword_2332A2068);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_11:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_12;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3408, &unk_23329E570);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[7];
    goto LABEL_11;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D8, &qword_23329FAC0);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[8];
    goto LABEL_11;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3410, &qword_23329DB80);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[11];
    goto LABEL_11;
  }

  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3AD8, &qword_2332A2080);
  v21 = *(*(v20 - 8) + 56);
  v22 = a1 + a4[13];

  return v21(v22, a2, a2, v20);
}

uint64_t sub_233112E3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D00, &qword_23329AB80);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D8, &qword_23329FAC0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_233112F44(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D00, &qword_23329AB80);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D8, &qword_23329FAC0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_233113058(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D00, &qword_23329AB80);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2331130D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D00, &qword_23329AB80);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_23311314C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3BE8, &qword_2332A2AE0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2331131C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3BE8, &qword_2332A2AE0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_233113240(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3400, &unk_23329DB70);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2331132B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3400, &unk_23329DB70);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_233113334(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3C78, &unk_2332A30F0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2331133AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3C78, &unk_2332A30F0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_233113428(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3D08, &unk_2332A34E8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D8, &qword_23329FAC0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3410, &qword_23329DB80);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[7];
    goto LABEL_7;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3D18, &qword_2332A34F8);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[8];

  return v17(v18, a2, v16);
}

uint64_t sub_2331135E0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3D08, &unk_2332A34E8);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D8, &qword_23329FAC0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3410, &qword_23329DB80);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[7];
    goto LABEL_7;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3D18, &qword_2332A34F8);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[8];

  return v19(v20, a2, a2, v18);
}

uint64_t sub_2331137A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D00, &qword_23329AB80);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3AD8, &qword_2332A2080);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_2331138AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D00, &qword_23329AB80);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3AD8, &qword_2332A2080);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_2331139C0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_23328CE8C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_233113A6C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_23328CE8C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

__n128 sub_233113B1C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_233113B28()
{
  type metadata accessor for TTSVBError.Reason(0);

  return swift_storeEnumTagMultiPayload();
}

void *sub_233113B6C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_233113B90@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23328D98C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_233113D20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getSiriTTSTrainerTaskClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!SiriTTSTrainingLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __SiriTTSTrainingLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_2789C3AC0;
    v6 = 0;
    SiriTTSTrainingLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (SiriTTSTrainingLibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np("%s", v4[0]);
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("SiriTTSTrainerTask");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getSiriTTSTrainerTaskClass_block_invoke_cold_1();
  }

  getSiriTTSTrainerTaskClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __SiriTTSTrainingLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  SiriTTSTrainingLibraryCore_frameworkLibrary = result;
  return result;
}

id LogTTSVBTrain(uint64_t a1)
{
  if (LogTTSVBTrain_onceToken != -1)
  {
    LogTTSVBTrain_cold_1();
  }

  v2 = LogTTSVBTrain__logObj;

  return v2;
}

uint64_t __LogTTSVBTrain_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x277CE6828], "TTSVBTrain");
  LogTTSVBTrain__logObj = v0;

  return MEMORY[0x2821F96F8](v0);
}

id LogTTSVBSiri(uint64_t a1)
{
  if (LogTTSVBSiri_onceToken != -1)
  {
    LogTTSVBSiri_cold_1();
  }

  v2 = LogTTSVBSiri__logObj;

  return v2;
}

uint64_t __LogTTSVBSiri_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x277CE6828], "TTSVBSiri");
  LogTTSVBSiri__logObj = v0;

  return MEMORY[0x2821F96F8](v0);
}

uint64_t TTSVBProcessIsVoicebankingd(uint64_t a1, uint64_t a2)
{
  if (TTSVBProcessIsVoicebankingd_Once != -1)
  {
    TTSVBProcessIsVoicebankingd_cold_1();
  }

  return TTSVBProcessIsVoicebankingd__TTSVBProcessIsVoicebankingd;
}

void __TTSVBProcessIsVoicebankingd_block_invoke()
{
  v0 = [MEMORY[0x277CCA8D8] mainBundle];
  v1 = [v0 bundleIdentifier];
  v2 = [v1 isEqualToString:@"com.apple.voicebankingd"];

  if (v2)
  {
    TTSVBProcessIsVoicebankingd__TTSVBProcessIsVoicebankingd = 1;
  }
}

id TTSVBSupportBundle()
{
  v0 = TTSVBSupportBundle__ttsVBSupportBundle;
  if (!TTSVBSupportBundle__ttsVBSupportBundle)
  {
    v1 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.TextToSpeechVoiceBankingSupport"];
    v2 = TTSVBSupportBundle__ttsVBSupportBundle;
    TTSVBSupportBundle__ttsVBSupportBundle = v1;

    v0 = TTSVBSupportBundle__ttsVBSupportBundle;
  }

  return v0;
}

id TTSVBSupportLocString(void *a1)
{
  v1 = a1;
  Type = AXDeviceGetType();
  v3 = @"_MAC";
  if (Type == 3)
  {
    v3 = @"_IPAD";
  }

  if (Type == 1)
  {
    v4 = @"_IPHONE";
  }

  else
  {
    v4 = v3;
  }

  v5 = [v1 stringByAppendingString:v4];
  v6 = TTSVBSupportBundle();
  v7 = [v6 localizedStringForKey:v5 value:&stru_28487AD88 table:@"VoiceBankingSupport"];

  if ([v7 isEqualToString:v5])
  {
    v8 = TTSVBSupportBundle();
    v9 = [v8 localizedStringForKey:v1 value:&stru_28487AD88 table:@"VoiceBankingSupport"];
  }

  else
  {
    v9 = v7;
  }

  return v9;
}

void TTSVBRegisterForFirstUnlockSinceBoot(void *a1)
{
  v1 = a1;
  out_token = 0;
  v2 = dispatch_get_global_queue(0, 0);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __TTSVBRegisterForFirstUnlockSinceBoot_block_invoke;
  v4[3] = &unk_2789C3B00;
  v5 = v1;
  v3 = v1;
  notify_register_dispatch("com.apple.mobile.keybagd.first_unlock", &out_token, v2, v4);
}

uint64_t __TTSVBRegisterForFirstUnlockSinceBoot_block_invoke(uint64_t a1, int a2)
{
  (*(*(a1 + 32) + 16))();

  return notify_cancel(a2);
}

uint64_t TTSVBSiriTTSTrainerTaskModeForString(void *a1)
{
  v1 = a1;
  v2 = [v1 lowercaseString];
  v3 = [v2 isEqualToString:@"partial"];

  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v5 = [v1 lowercaseString];
    v6 = [v5 isEqualToString:@"p2a"];

    if (v6)
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }
  }

  return v4;
}

__CFString *TTSVBSiriTTSTrainerTaskModeStringForMode(uint64_t a1)
{
  v1 = @"partial";
  if (a1 == 1)
  {
    v1 = @"full";
  }

  if (a1 == 2)
  {
    return @"p2a";
  }

  else
  {
    return v1;
  }
}

__CFString *TTSVBSiriTTSTrainerTaskStatusDescription(unint64_t a1)
{
  if (a1 > 7)
  {
    return @"Unknown";
  }

  else
  {
    return *(&off_2789C3B38 + a1);
  }
}

void sub_233114834(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getSiriTTSTrainerTaskClass_block_invoke_0(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!SiriTTSTrainingLibraryCore_frameworkLibrary_0)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __SiriTTSTrainingLibraryCore_block_invoke_0;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_2789C3B20;
    v6 = 0;
    SiriTTSTrainingLibraryCore_frameworkLibrary_0 = _sl_dlopen();
    v2 = v4[0];
    if (SiriTTSTrainingLibraryCore_frameworkLibrary_0)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np("%s", v4[0]);
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("SiriTTSTrainerTask");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getSiriTTSTrainerTaskClass_block_invoke_cold_1();
  }

  getSiriTTSTrainerTaskClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __SiriTTSTrainingLibraryCore_block_invoke_0(uint64_t a1)
{
  result = _sl_dlopen();
  SiriTTSTrainingLibraryCore_frameworkLibrary_0 = result;
  return result;
}

void sub_233114EF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getSiriTTSTrainerAudioQualityHelperClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!SiriTTSTrainingLibraryCore_frameworkLibrary_1)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __SiriTTSTrainingLibraryCore_block_invoke_1;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_2789C3BA0;
    v6 = 0;
    SiriTTSTrainingLibraryCore_frameworkLibrary_1 = _sl_dlopen();
    v2 = v4[0];
    if (SiriTTSTrainingLibraryCore_frameworkLibrary_1)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np("%s", v4[0]);
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("SiriTTSTrainerAudioQualityHelper");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getSiriTTSTrainerAudioQualityHelperClass_block_invoke_cold_1();
  }

  getSiriTTSTrainerAudioQualityHelperClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __SiriTTSTrainingLibraryCore_block_invoke_1(uint64_t a1)
{
  result = _sl_dlopen();
  SiriTTSTrainingLibraryCore_frameworkLibrary_1 = result;
  return result;
}

void sub_2331153FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getSiriTTSTrainerSessionClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!SiriTTSTrainingLibraryCore_frameworkLibrary_2)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __SiriTTSTrainingLibraryCore_block_invoke_2;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_2789C3E40;
    v6 = 0;
    SiriTTSTrainingLibraryCore_frameworkLibrary_2 = _sl_dlopen();
    v2 = v4[0];
    if (SiriTTSTrainingLibraryCore_frameworkLibrary_2)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np("%s", v4[0]);
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("SiriTTSTrainerSession");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getSiriTTSTrainerSessionClass_block_invoke_cold_1();
  }

  getSiriTTSTrainerSessionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __SiriTTSTrainingLibraryCore_block_invoke_2(uint64_t a1)
{
  result = _sl_dlopen();
  SiriTTSTrainingLibraryCore_frameworkLibrary_2 = result;
  return result;
}

uint64_t TTSVBPath.url.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v183 = a1;
  v3 = type metadata accessor for TTSVBInstalledVoiceModel(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v170 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTSVBVoiceModel(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v170 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TTSVBPath(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v170 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v170 - v13;
  sub_23311A230(v2, &v170 - v13);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
    case 3u:
    case 5u:
    case 7u:
      v181 = sub_23328CE8C();
      v182 = &v170;
      v81 = *(v181 - 1);
      v82 = MEMORY[0x28223BE20](v181);
      v84 = &v170 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v81 + 32))(v84, v14, v82);
      swift_storeEnumTagMultiPayload();
      v85 = sub_23328CC9C();
      v180 = &v170;
      v86 = *(v85 - 8);
      MEMORY[0x28223BE20](v85);
      v88 = &v170 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
      TTSVBPath.url.getter(v88);
      sub_23311A350(v11, type metadata accessor for TTSVBPath);
      v186 = sub_23328CE3C();
      v187 = v89;
      v90 = sub_23328CB3C();
      v179 = &v170;
      v91 = *(v90 - 8);
      v92 = MEMORY[0x28223BE20](v90);
      v94 = &v170 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v91 + 104))(v94, *MEMORY[0x277CC91E0], v90, v92);
      sub_23311A294();
      sub_23328CC8C();
      (*(v91 + 8))(v94, v90);

      (*(v86 + 8))(v88, v85);
      return (*(v81 + 8))(v84, v181);
    case 2u:
    case 8u:
      sub_23311A2E8(v14, v8, type metadata accessor for TTSVBVoiceModel);
      v142 = *(v6 + 20);
      v143 = sub_23328CE8C();
      (*(*(v143 - 8) + 16))(v11, &v8[v142], v143);
      swift_storeEnumTagMultiPayload();
      v144 = sub_23328CC9C();
      v182 = &v170;
      v145 = *(v144 - 8);
      MEMORY[0x28223BE20](v144);
      v147 = &v170 - ((v146 + 15) & 0xFFFFFFFFFFFFFFF0);
      TTSVBPath.url.getter(v147);
      sub_23311A350(v11, type metadata accessor for TTSVBPath);
      v186 = sub_23328CE3C();
      v187 = v148;
      v149 = sub_23328CB3C();
      v150 = *(v149 - 8);
      v151 = MEMORY[0x28223BE20](v149);
      v153 = &v170 - ((v152 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v150 + 104))(v153, *MEMORY[0x277CC91E0], v149, v151);
      sub_23311A294();
      sub_23328CC8C();
      (*(v150 + 8))(v153, v149);

      (*(v145 + 8))(v147, v144);
      return sub_23311A350(v8, type metadata accessor for TTSVBVoiceModel);
    case 4u:
    case 6u:
      v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1930, &unk_2332901D0);
      v100 = &v14[*(v99 + 48)];
      v102 = *v100;
      v101 = v100[1];
      v103 = &v14[*(v99 + 64)];
      LODWORD(v179) = *v103;
      v177 = *(v103 + 1);
      v104 = v177;
      v178 = v101;
      v105 = sub_23328CE8C();
      v182 = &v170;
      v106 = *(v105 - 8);
      v107 = MEMORY[0x28223BE20](v105);
      v109 = &v170 - ((v108 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v106 + 32))(v109, v14, v105, v107);
      (*(v106 + 16))(v11, v109, v105);
      swift_storeEnumTagMultiPayload();
      v180 = sub_23328CC9C();
      v181 = &v170;
      v110 = *(v180 - 1);
      MEMORY[0x28223BE20](v180);
      v112 = &v170 - ((v111 + 15) & 0xFFFFFFFFFFFFFFF0);
      TTSVBPath.url.getter(v112);
      sub_23311A350(v11, type metadata accessor for TTSVBPath);
      v186 = v102;
      v187 = v178;
      MEMORY[0x23839B7E0](46, 0xE100000000000000);
      v184 = v179;
      v185 = v104;
      v113 = TTSVBAudioDescriptor.fileExtension.getter();
      MEMORY[0x23839B7E0](v113);

      v114 = sub_23328CB3C();
      v179 = &v170;
      v115 = *(v114 - 8);
      v116 = MEMORY[0x28223BE20](v114);
      v118 = &v170 - ((v117 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v115 + 104))(v118, *MEMORY[0x277CC91E0], v114, v116);
      sub_23311A294();
      sub_23328CC8C();

      (*(v115 + 8))(v118, v114);

      (*(v110 + 8))(v112, v180);
      return (*(v106 + 8))(v109, v105);
    case 9u:
      sub_23311A2E8(v14, v5, type metadata accessor for TTSVBInstalledVoiceModel);
      swift_getKeyPath();
      TTSVBInstalledVoiceModel.subscript.getter();

      swift_storeEnumTagMultiPayload();
      v181 = sub_23328CC9C();
      v182 = &v170;
      v64 = *(v181 - 1);
      MEMORY[0x28223BE20](v181);
      v66 = &v170 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
      TTSVBPath.url.getter(v66);
      sub_23311A350(v11, type metadata accessor for TTSVBPath);
      swift_getKeyPath();
      v67 = sub_23328CE8C();
      v68 = *(v67 - 8);
      MEMORY[0x28223BE20](v67);
      v70 = &v170 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
      TTSVBInstalledVoiceModel.subscript.getter();

      v71 = sub_23328CE3C();
      v73 = v72;
      (*(v68 + 8))(v70, v67);
      v186 = v71;
      v187 = v73;
      v74 = sub_23328CB3C();
      v75 = *(v74 - 8);
      v76 = MEMORY[0x28223BE20](v74);
      v78 = &v170 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v75 + 104))(v78, *MEMORY[0x277CC91E0], v74, v76);
      sub_23311A294();
      sub_23328CC8C();
      (*(v75 + 8))(v78, v74);

      (*(v64 + 8))(v66, v181);
      return sub_23311A350(v5, type metadata accessor for TTSVBInstalledVoiceModel);
    case 0xAu:
      v125 = sub_23328CE8C();
      v182 = &v170;
      v126 = *(v125 - 8);
      v179 = v125;
      v180 = v126;
      v127 = MEMORY[0x28223BE20](v125);
      v130 = *(v129 + 32);
      v177 = &v170 - ((v128 + 15) & 0xFFFFFFFFFFFFFFF0);
      v130(v177, v14, v127);
      v176 = sub_23328CC9C();
      v178 = &v170;
      v181 = *(v176 - 1);
      v131 = v181[8];
      MEMORY[0x28223BE20](v176);
      v132 = (v131 + 15) & 0xFFFFFFFFFFFFFFF0;
      v170 = &v170 - v132;
      v133 = swift_storeEnumTagMultiPayload();
      v175 = &v170;
      MEMORY[0x28223BE20](v133);
      TTSVBPath.url.getter(&v170 - v132);
      sub_23311A350(v11, type metadata accessor for TTSVBPath);
      v186 = sub_23328CE3C();
      v187 = v134;
      v53 = sub_23328CB3C();
      v174 = &v170;
      v135 = *(v53 - 8);
      v136 = v135[8];
      v137 = MEMORY[0x28223BE20](v53);
      v173 = (v136 + 15) & 0xFFFFFFFFFFFFFFF0;
      v138 = &v170 - v173;
      v172 = *MEMORY[0x277CC91E0];
      v171 = v135[13];
      v171(&v170 - v173, v137);
      sub_23311A294();
      sub_23328CC8C();
      v58 = v135[1];
      v58(v138, v53);

      v59 = v181[1];
      ++v181;
      v60 = v176;
      v61 = (v59)(&v170 - v132, v176);
      v175 = &v170;
      v62 = 0x676E696E69617254;
      v63 = 0xEC00000061746144;
      goto LABEL_17;
    case 0xBu:
      v43 = sub_23328CE8C();
      v182 = &v170;
      v44 = *(v43 - 8);
      v179 = v43;
      v180 = v44;
      v45 = MEMORY[0x28223BE20](v43);
      v48 = *(v47 + 32);
      v177 = &v170 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
      v48(v177, v14, v45);
      v176 = sub_23328CC9C();
      v178 = &v170;
      v181 = *(v176 - 1);
      v49 = v181[8];
      MEMORY[0x28223BE20](v176);
      v50 = (v49 + 15) & 0xFFFFFFFFFFFFFFF0;
      v170 = &v170 - v50;
      v51 = swift_storeEnumTagMultiPayload();
      v175 = &v170;
      MEMORY[0x28223BE20](v51);
      TTSVBPath.url.getter(&v170 - v50);
      sub_23311A350(v11, type metadata accessor for TTSVBPath);
      v186 = sub_23328CE3C();
      v187 = v52;
      v53 = sub_23328CB3C();
      v174 = &v170;
      v54 = *(v53 - 8);
      v55 = v54[8];
      v56 = MEMORY[0x28223BE20](v53);
      v173 = (v55 + 15) & 0xFFFFFFFFFFFFFFF0;
      v57 = &v170 - v173;
      v172 = *MEMORY[0x277CC91E0];
      v171 = v54[13];
      v171(&v170 - v173, v56);
      sub_23311A294();
      sub_23328CC8C();
      v58 = v54[1];
      v58(v57, v53);

      v59 = v181[1];
      ++v181;
      v60 = v176;
      v61 = (v59)(&v170 - v50, v176);
      v175 = &v170;
      v62 = 0x7365766968637241;
      v63 = 0xE800000000000000;
LABEL_17:
      v186 = v62;
      v187 = v63;
      v139 = MEMORY[0x28223BE20](v61);
      v140 = &v170 - v173;
      (v171)(&v170 - v173, v172, v53, v139);
      v141 = v170;
      sub_23328CC8C();
      v58(v140, v53);
      (v59)(v141, v60);
      return (v180[1])(v177, v179);
    case 0xCu:
    case 0xDu:
      v95 = sub_23328CC9C();
      v96 = *(v95 - 8);
      MEMORY[0x28223BE20](v95);
      v98 = &v170 - ((v97 + 15) & 0xFFFFFFFFFFFFFFF0);
      static TTSVBPath.requireGroupContainerURL()();
      sub_23328CBEC();
      return (*(v96 + 8))(v98, v95);
    case 0xEu:
      swift_storeEnumTagMultiPayload();
      v36 = sub_23328CC9C();
      v37 = *(v36 - 8);
      MEMORY[0x28223BE20](v36);
      v39 = &v170 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
      TTSVBPath.url.getter(v39);
      sub_23311A350(v11, type metadata accessor for TTSVBPath);
      v40 = 0x676E6967617453;
      v41 = 0xE700000000000000;
      goto LABEL_14;
    case 0xFu:
      swift_storeEnumTagMultiPayload();
      v36 = sub_23328CC9C();
      v37 = *(v36 - 8);
      MEMORY[0x28223BE20](v36);
      v39 = &v170 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
      TTSVBPath.url.getter(v39);
      sub_23311A350(v11, type metadata accessor for TTSVBPath);
      v40 = 0x676E696E69617254;
      v41 = 0xE900000000000073;
      goto LABEL_14;
    case 0x10u:
      swift_storeEnumTagMultiPayload();
      v36 = sub_23328CC9C();
      v37 = *(v36 - 8);
      MEMORY[0x28223BE20](v36);
      v39 = &v170 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
      TTSVBPath.url.getter(v39);
      sub_23311A350(v11, type metadata accessor for TTSVBPath);
      v40 = 0x6E6964726F636552;
      v41 = 0xEA00000000007367;
      goto LABEL_14;
    case 0x11u:
      swift_storeEnumTagMultiPayload();
      v36 = sub_23328CC9C();
      v37 = *(v36 - 8);
      MEMORY[0x28223BE20](v36);
      v39 = &v170 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
      TTSVBPath.url.getter(v39);
      sub_23311A350(v11, type metadata accessor for TTSVBPath);
      v186 = 0xD000000000000011;
      v187 = 0x80000002332A42E0;
      goto LABEL_15;
    case 0x12u:
      swift_storeEnumTagMultiPayload();
      v36 = sub_23328CC9C();
      v37 = *(v36 - 8);
      MEMORY[0x28223BE20](v36);
      v39 = &v170 - ((v119 + 15) & 0xFFFFFFFFFFFFFFF0);
      TTSVBPath.url.getter(v39);
      sub_23311A350(v11, type metadata accessor for TTSVBPath);
      v40 = 0x736563696F56;
      v41 = 0xE600000000000000;
LABEL_14:
      v186 = v40;
      v187 = v41;
LABEL_15:
      v120 = sub_23328CB3C();
      v121 = *(v120 - 8);
      v122 = MEMORY[0x28223BE20](v120);
      v124 = &v170 - ((v123 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v121 + 104))(v124, *MEMORY[0x277CC91E0], v120, v122);
      sub_23311A294();
      sub_23328CC8C();
      (*(v121 + 8))(v124, v120);
      result = (*(v37 + 8))(v39, v36);
      break;
    case 0x13u:
      v181 = sub_23328CC9C();
      v182 = &v170;
      v154 = *(v181 - 1);
      MEMORY[0x28223BE20](v181);
      v175 = &v170;
      v180 = &v170;
      MEMORY[0x28223BE20](v155);
      v157 = &v170 - v156;
      sub_23328CBBC();
      v186 = 0x6563696F56535454;
      v187 = 0xEF676E696B6E6142;
      v158 = sub_23328CB3C();
      v179 = &v170;
      v159 = *(v158 - 8);
      v160 = v159[8];
      v161 = MEMORY[0x28223BE20](v158);
      v178 = ((v160 + 15) & 0xFFFFFFFFFFFFFFF0);
      v162 = (&v170 - v178);
      LODWORD(v177) = *MEMORY[0x277CC91E0];
      v176 = v159[13];
      v176(&v170 - v178, v161);
      sub_23311A294();
      sub_23328CC8C();
      v163 = v159[1];
      v163(v162, v158);
      v164 = *(v154 + 8);
      v174 = (v154 + 8);
      v165 = v181;
      v166 = v164(v157, v181);
      v180 = &v170;
      v186 = 0x74726F707845;
      v187 = 0xE600000000000000;
      v167 = MEMORY[0x28223BE20](v166);
      v168 = (&v170 - v178);
      (v176)(&v170 - v178, v177, v158, v167);
      v169 = v175;
      sub_23328CC8C();
      v163(v168, v158);
      result = v164(v169, v165);
      break;
    default:
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1930, &unk_2332901D0);
      v16 = &v14[*(v15 + 48)];
      v17 = *(v16 + 1);
      v177 = *v16;
      v18 = &v14[*(v15 + 64)];
      v19 = *v18;
      v20 = *(v18 + 1);
      v181 = sub_23328CE8C();
      v182 = &v170;
      v21 = *(v181 - 1);
      v22 = MEMORY[0x28223BE20](v181);
      v24 = &v170 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v21 + 32))(v24, v14, v22);
      swift_storeEnumTagMultiPayload();
      v179 = sub_23328CC9C();
      v180 = &v170;
      v178 = *(v179 - 1);
      MEMORY[0x28223BE20](v179);
      v26 = &v170 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
      TTSVBPath.url.getter(v26);
      sub_23311A350(v11, type metadata accessor for TTSVBPath);
      v186 = 0;
      v187 = 0xE000000000000000;
      sub_23328E24C();

      v186 = 0x6E6964726F636552;
      v187 = 0xEA00000000005F67;
      v27 = sub_23328CE3C();
      MEMORY[0x23839B7E0](v27);

      MEMORY[0x23839B7E0](95, 0xE100000000000000);
      MEMORY[0x23839B7E0](v177, v17);

      MEMORY[0x23839B7E0](46, 0xE100000000000000);
      v184 = v19;
      v185 = v20;
      v28 = v20;
      v29 = TTSVBAudioDescriptor.fileExtension.getter();
      MEMORY[0x23839B7E0](v29);

      v30 = sub_23328CB3C();
      v31 = *(v30 - 8);
      v32 = MEMORY[0x28223BE20](v30);
      v34 = &v170 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v31 + 104))(v34, *MEMORY[0x277CC91E0], v30, v32);
      sub_23311A294();
      sub_23328CC8C();

      (*(v31 + 8))(v34, v30);

      (*(v178 + 1))(v26, v179);
      result = (*(v21 + 8))(v24, v181);
      break;
  }

  return result;
}

void static TTSVBPath.requireGroupContainerURL()()
{
  v0 = [objc_opt_self() defaultManager];
  v1 = sub_23328D95C();
  v2 = [v0 containerURLForSecurityApplicationGroupIdentifier_];

  if (v2)
  {
    sub_23328CC4C();
  }

  else
  {
    type metadata accessor for TTSVBError(0);
    sub_23311A3F8();
    swift_allocError();
    TTSVBError.init(_:_:_:)(0xD00000000000002FLL, 0x80000002332A4370, 0, 0, 0, v3);
    swift_willThrow();
  }
}

uint64_t type metadata accessor for TTSVBPath(uint64_t a1)
{
  result = qword_280D3A6C0;
  if (!qword_280D3A6C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23311A230(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTSVBPath(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_23311A294()
{
  result = qword_280D39BC0;
  if (!qword_280D39BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D39BC0);
  }

  return result;
}

uint64_t sub_23311A2E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_23311A350(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_23311A3F8()
{
  result = qword_280D3A0B0;
  if (!qword_280D3A0B0)
  {
    type metadata accessor for TTSVBError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D3A0B0);
  }

  return result;
}

void static TTSVBPath.longLivedLogsDirectoryURL()()
{
  v1 = sub_23328CC9C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static TTSVBPath.requireGroupContainerURL()();
  if (!v0)
  {
    sub_23328CBEC();
    (*(v2 + 8))(v4, v1);
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> TTSVBPath.markAsExcludedFromBackup()()
{
  v1 = sub_23328D6EC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23328CC9C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTSVBPath.url.getter(v8);
  v9 = sub_23328CC0C();
  if (v0 || (v9 & 1) == 0)
  {
    (*(v6 + 8))(v8, v5);
  }

  else
  {
    v10 = sub_23328CA0C();
    v30[4] = &v22;
    v28 = *(v10 - 8);
    v29 = v10;
    MEMORY[0x28223BE20](v10);
    v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_23328C9FC();
    v27 = v12;
    sub_23328C9CC();
    v13 = sub_233225314();
    (*(v2 + 16))(v4, v13, v1);
    v14 = sub_23328D6CC();
    v26 = sub_23328DE4C();
    if (os_log_type_enabled(v14, v26))
    {
      v15 = swift_slowAlloc();
      v25 = v15;
      v24 = swift_slowAlloc();
      v30[0] = v24;
      *v15 = 136315138;
      swift_beginAccess();
      v23 = v14;
      v16 = sub_23328CC6C();
      v18 = sub_23311A8F4(v16, v17, v30);

      v19 = v25;
      *(v25 + 1) = v18;
      v14 = v23;
      _os_log_impl(&dword_233109000, v23, v26, "Marking path as excluded from backups: %s", v19, 0xCu);
      v20 = v24;
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x23839CFD0](v20, -1, -1);
      MEMORY[0x23839CFD0](v25, -1, -1);
    }

    (*(v2 + 8))(v4, v1);
    swift_beginAccess();
    v21 = v27;
    sub_23328CBAC();
    swift_endAccess();
    (*(v28 + 8))(v21, v29);
    (*(v6 + 8))(v8, v5);
  }
}

unint64_t sub_23311A8F4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_23311A9C0(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_23311B0C0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_23311A9C0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_23311AACC(a5, a6);
    *a1 = v8;
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
    v11 = a6;
    result = sub_23328E2AC();
    a6 = v11;
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

void *sub_23311AACC(uint64_t a1, unint64_t a2)
{
  v3 = sub_23311AB18(a1, a2);
  sub_23311AC48(&unk_28486FB30);
  return v3;
}

void *sub_23311AB18(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_23311AD34(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_23328E2AC();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_23328DAAC();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_23311AD34(v10, 0);
        result = sub_23328E23C();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_23311AC48(uint64_t result)
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

  result = sub_23311ADA8(result, v11, 1, v3);
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

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

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

void *sub_23311AD34(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE25E0, &qword_233290270);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_23311ADA8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE25E0, &qword_233290270);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
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

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
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

void sub_23311AF3C(uint64_t a1)
{
  sub_23311B004(319);
  if (v1 <= 0x3F)
  {
    sub_23311B078();
    if (v2 <= 0x3F)
    {
      type metadata accessor for TTSVBVoiceModel(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for TTSVBInstalledVoiceModel(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_23311B004(uint64_t a1)
{
  if (!qword_280D3A0D0)
  {
    sub_23328CE8C();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_280D3A0D0);
    }
  }
}

void sub_23311B078()
{
  if (!qword_280D3A0C8)
  {
    v0 = sub_23328CE8C();
    if (!v1)
    {
      atomic_store(v0, &qword_280D3A0C8);
    }
  }
}

uint64_t sub_23311B0C0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

id static TTSVBService.configuredClientInterface()()
{
  v0 = [objc_opt_self() interfaceWithProtocol_];

  return v0;
}

uint64_t TTSVBService.__allocating_init()()
{
  v0 = swift_allocObject();
  TTSVBService.init()();
  return v0;
}

void *TTSVBService.init()()
{
  v10 = sub_23328DEAC();
  v1 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23328DE7C();
  MEMORY[0x28223BE20](v4);
  v5 = sub_23328D80C();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_23311F61C();
  v9[0] = "com.apple.voicebanking.services";
  v9[1] = v6;
  sub_23328D7FC();
  v11 = MEMORY[0x277D84F90];
  sub_233121BFC(&qword_280D3A230, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2B80, qword_233290290);
  sub_2331216CC(&qword_280D3A250, &unk_27DDE2B80, qword_233290290);
  sub_23328E14C();
  (*(v1 + 104))(v3, *MEMORY[0x277D85268], v10);
  v0[2] = sub_23328DEDC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1938, &qword_2332990E0);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  v0[3] = v7;
  v0[4] = 0;
  return v0;
}

uint64_t TTSVBService.deinit()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    [v1 invalidate];
  }

  return v0;
}

uint64_t TTSVBService.__deallocating_deinit()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    [v1 invalidate];
  }

  return swift_deallocClassInstance();
}

id sub_23311B4E8()
{
  v1 = v0;
  v2 = sub_23328D6EC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  os_unfair_lock_assert_owner((*(v1 + 24) + 16));
  v6 = *(v1 + 32);
  if (v6)
  {

    return v6;
  }

  else
  {
    v8 = sub_23322575C();
    (*(v3 + 16))(v5, v8, v2);
    v9 = sub_23328D6CC();
    v10 = sub_23328DE4C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_233109000, v9, v10, "Creating VoiceBanking service connection.", v11, 2u);
      MEMORY[0x23839CFD0](v11, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    v12 = objc_allocWithZone(MEMORY[0x277CCAE80]);
    v13 = sub_23328D95C();
    v14 = [v12 initWithMachServiceName:v13 options:0];

    v15 = _s31TextToSpeechVoiceBankingSupport12TTSVBServiceC26configuredServiceInterfaceSo14NSXPCInterfaceCyFZ_0();
    [v14 setRemoteObjectInterface_];

    v16 = [objc_opt_self() interfaceWithProtocol_];
    [v14 setExportedInterface_];

    v17 = swift_allocObject();
    swift_weakInit();
    v27 = sub_233122120;
    v28 = v17;
    aBlock = MEMORY[0x277D85DD0];
    v24 = 1107296256;
    v25 = sub_2331221F8;
    v26 = &block_descriptor_279;
    v18 = _Block_copy(&aBlock);

    [v14 setInterruptionHandler_];
    _Block_release(v18);
    v19 = swift_allocObject();
    swift_weakInit();
    v27 = sub_233122128;
    v28 = v19;
    aBlock = MEMORY[0x277D85DD0];
    v24 = 1107296256;
    v25 = sub_2331221F8;
    v26 = &block_descriptor_283;
    v20 = _Block_copy(&aBlock);

    [v14 setInvalidationHandler_];
    _Block_release(v20);
    [v14 resume];
    v21 = *(v1 + 32);
    *(v1 + 32) = v14;
    v22 = v14;

    return v22;
  }
}

uint64_t sub_23311B8BC(uint64_t a1)
{
  v1 = sub_23328D6EC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23322575C();
  (*(v2 + 16))(v4, v5, v1);
  v6 = sub_23328D6CC();
  v7 = sub_23328DE3C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_233109000, v6, v7, "VoiceBanking connection interrupted.", v8, 2u);
    MEMORY[0x23839CFD0](v8, -1, -1);
  }

  (*(v2 + 8))(v4, v1);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = *(result + 24);
    MEMORY[0x28223BE20](result);
    *(&v12 - 2) = sub_2331221E0;
    *(&v12 - 1) = v11;

    os_unfair_lock_lock(v10 + 4);
    sub_233122284();
    os_unfair_lock_unlock(v10 + 4);
  }

  return result;
}

uint64_t sub_23311BAB0(uint64_t a1)
{
  v1 = sub_23328D6EC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23322575C();
  (*(v2 + 16))(v4, v5, v1);
  v6 = sub_23328D6CC();
  v7 = sub_23328DE4C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_233109000, v6, v7, "Connection to voicebankingd invalidated.", v8, 2u);
    MEMORY[0x23839CFD0](v8, -1, -1);
  }

  (*(v2 + 8))(v4, v1);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = *(result + 24);
    MEMORY[0x28223BE20](result);
    *(&v12 - 2) = sub_233122130;
    *(&v12 - 1) = v11;

    os_unfair_lock_lock(v10 + 4);
    sub_233122284();
    os_unfair_lock_unlock(v10 + 4);
  }

  return result;
}

uint64_t sub_23311BCA4(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_assert_owner((*(v2 + 24) + 16));
  v5 = sub_23311B4E8();
  v6 = swift_allocObject();
  v6[2] = v2;
  v6[3] = a1;
  v6[4] = a2;
  aBlock[4] = sub_23311F6B0;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23311C4C4;
  aBlock[3] = &block_descriptor;
  v7 = _Block_copy(aBlock);

  v8 = [v5 remoteObjectProxyWithErrorHandler_];
  _Block_release(v7);

  sub_23328E0DC();
  swift_unknownObjectRelease();
  sub_23311B0C0(aBlock, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1940, &qword_2332902A8);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(aBlock);
    return v10;
  }

  else
  {
    v11[0] = 0;
    v11[1] = 0xE000000000000000;
    sub_23328E24C();
    MEMORY[0x23839B7E0](0xD00000000000001CLL, 0x80000002332A44B0);
    MEMORY[0x23839B7E0](0xD00000000000004ALL, 0x80000002332A44D0);
    result = sub_23328E31C();
    __break(1u);
  }

  return result;
}

uint64_t sub_23311BEB8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v43 = a2;
  v44 = a3;
  v6 = sub_23328D7CC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v48 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23328D80C();
  v46 = *(v9 - 8);
  v47 = v9;
  MEMORY[0x28223BE20](v9);
  v45 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_23328D6EC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_23322575C();
  (*(v12 + 16))(v14, v15, v11);
  v16 = a1;
  v17 = sub_23328D6CC();
  v18 = sub_23328DE3C();

  v42 = v18;
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v40 = v7;
    v20 = v19;
    v21 = swift_slowAlloc();
    v41 = v6;
    v22 = v21;
    aBlock[0] = v21;
    *v20 = 136315394;
    *(v20 + 4) = sub_23311A8F4(0xD00000000000001CLL, 0x80000002332A44B0, aBlock);
    *(v20 + 12) = 2080;
    v23 = sub_23328CA6C();
    v39 = a4;
    v24 = v23;
    v25 = a1;
    v26 = [v23 debugDescription];

    v27 = sub_23328D98C();
    v29 = v28;

    a1 = v25;
    v30 = sub_23311A8F4(v27, v29, aBlock);

    *(v20 + 14) = v30;
    a4 = v39;
    _os_log_impl(&dword_233109000, v17, v42, "%s - remoteObjectProxy error: %s", v20, 0x16u);
    swift_arrayDestroy();
    v6 = v41;
    MEMORY[0x23839CFD0](v22, -1, -1);
    v31 = v20;
    v7 = v40;
    MEMORY[0x23839CFD0](v31, -1, -1);
  }

  (*(v12 + 8))(v14, v11);
  v32 = swift_allocObject();
  v32[2] = v44;
  v32[3] = a4;
  v32[4] = a1;
  aBlock[4] = sub_2331220A0;
  aBlock[5] = v32;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2331221F8;
  aBlock[3] = &block_descriptor_273;
  v33 = _Block_copy(aBlock);
  v34 = a1;

  v35 = v45;
  sub_23328D7DC();
  v49 = MEMORY[0x277D84F90];
  sub_233121BFC(qword_280D3A270, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
  sub_2331216CC(&qword_280D3A258, &unk_27DDE2540, &qword_233290328);
  v36 = v48;
  sub_23328E14C();
  MEMORY[0x23839BC20](0, v35, v36, v33);
  _Block_release(v33);
  (*(v7 + 8))(v36, v6);
  (*(v46 + 8))(v35, v47);
}

uint64_t sub_23311C3BC(void (*a1)(char *), uint64_t a2, void *a3)
{
  v5 = type metadata accessor for TTSVBError(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2331524CC(&v11);
  v9 = v11;
  v10 = v12;
  static TTSVBError.map(_:_:)(a3, &v9, v7);
  sub_2331220AC(v9, *(&v9 + 1), v10);
  a1(v7);
  return sub_2331220C4(v7);
}

uint64_t sub_23311C480(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_23311C4C4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_23311C52C(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = sub_23328D7CC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_23328D80C();
  v11 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[1] = *(v3 + 16);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a1;
  v14[4] = a2;
  aBlock[4] = sub_2331216C0;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2331221F8;
  aBlock[3] = &block_descriptor_36;
  v15 = _Block_copy(aBlock);
  v16 = a3;

  sub_23328D7DC();
  v20 = MEMORY[0x277D84F90];
  sub_233121BFC(qword_280D3A270, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
  sub_2331216CC(&qword_280D3A258, &unk_27DDE2540, &qword_233290328);
  sub_23328E14C();
  MEMORY[0x23839BC20](0, v13, v10, v15);
  _Block_release(v15);
  (*(v8 + 8))(v10, v7);
  (*(v11 + 8))(v13, v19);
}

uint64_t sub_23311C7F8(void *a1, void (*a2)(char *))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE25D0, &unk_233290330);
  MEMORY[0x28223BE20](v4);
  v6 = &v10 - v5;
  if (a1)
  {
    v7 = *((*MEMORY[0x277D85000] & *a1) + 0x70);
    v8 = a1;
    v7();
    swift_storeEnumTagMultiPayload();
    a2(v6);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    a2(v6);
  }

  return sub_233121E04(v6, &unk_27DDE25D0, &unk_233290330);
}

void TTSVBService.createVoice(named:localeID:_:)()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock(v1 + 4);
  sub_23311F868();
  os_unfair_lock_unlock(v1 + 4);
}

void TTSVBService.importTrainingData(fromDirectory:creatingVoiceName:localeID:completion:)()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock(v1 + 4);
  sub_233122284();
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t sub_23311CA44(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  MEMORY[0x28223BE20](v9);
  v11 = &v13 - v10;
  sub_233121720(a1, &v13 - v10);
  swift_storeEnumTagMultiPayload();
  a2(v11);
  return sub_233121E04(v11, a4, a5);
}

uint64_t sub_23311CB14(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v31 = a7;
  v32 = a8;
  v28 = a6;
  v29 = a4;
  v30 = a5;
  v11 = sub_23328D7CC();
  v36 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_23328D80C();
  v34 = *(v14 - 8);
  v35 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *(a3 + 16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19B0, &qword_233290370);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v28 - v19;
  sub_233121D34(a1, &v28 - v19, &qword_27DDE19B0, &qword_233290370);
  v21 = (*(v18 + 80) + 40) & ~*(v18 + 80);
  v22 = swift_allocObject();
  v23 = v29;
  v24 = v30;
  v22[2] = a2;
  v22[3] = v23;
  v22[4] = v24;
  sub_233121D9C(v20, v22 + v21, &qword_27DDE19B0, &qword_233290370);
  aBlock[4] = v31;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2331221F8;
  aBlock[3] = v32;
  v25 = _Block_copy(aBlock);
  v26 = a2;

  sub_23328D7DC();
  v37 = MEMORY[0x277D84F90];
  sub_233121BFC(qword_280D3A270, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
  sub_2331216CC(&qword_280D3A258, &unk_27DDE2540, &qword_233290328);
  sub_23328E14C();
  MEMORY[0x23839BC20](0, v16, v13, v25);
  _Block_release(v25);
  (*(v36 + 8))(v13, v11);
  (*(v34 + 8))(v16, v35);
}

uint64_t sub_23311CE98(void *a1, void (*a2)(char *), uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19B8, &unk_233299B20);
    MEMORY[0x28223BE20](v6);
    v8 = &v21 - v7;
    v9 = *((*MEMORY[0x277D85000] & *a1) + 0x70);
    v10 = a1;
    v9();
    swift_storeEnumTagMultiPayload();
    a2(v8);

    return sub_233121E04(v8, &qword_27DDE19B8, &unk_233299B20);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19B8, &unk_233299B20);
    MEMORY[0x28223BE20](v13);
    v15 = &v21 - v14;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19B0, &qword_233290370);
    MEMORY[0x28223BE20](v16 - 8);
    v18 = &v21 - v17;
    sub_233121D34(a4, &v21 - v17, &qword_27DDE19B0, &qword_233290370);
    v19 = sub_23328CE8C();
    v20 = *(v19 - 8);
    result = (*(v20 + 48))(v18, 1, v19);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      (*(v20 + 32))(v15, v18, v19);
      swift_storeEnumTagMultiPayload();
      a2(v15);
      return sub_233121E04(v15, &qword_27DDE19B8, &unk_233299B20);
    }
  }

  return result;
}

void TTSVBService.importModel(fromDirectory:overrideLocaleID:addingToVoice:completion:)()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock(v1 + 4);
  sub_233122284();
  os_unfair_lock_unlock(v1 + 4);
}

void sub_23311D1B0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

void TTSVBService.updateTCCCloudKitAccess(allowed:completion:)()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock(v1 + 4);
  sub_233122284();
  os_unfair_lock_unlock(v1 + 4);
}

void TTSVBService.initializeCloudKitSchema(completion:)()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock(v1 + 4);
  sub_233122284();
  os_unfair_lock_unlock(v1 + 4);
}

void TTSVBService.synchronizeFileBackedFuturesForModelID(_:completion:)()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock(v1 + 4);
  sub_233122284();
  os_unfair_lock_unlock(v1 + 4);
}

void TTSVBService.exportTrainingData(voiceID:shouldCompressResult:includeEntireScript:completion:)()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock(v1 + 4);
  sub_233122284();
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t sub_23311D3D8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = a4;
  v25 = a5;
  v26 = sub_23328D7CC();
  v30 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_23328D80C();
  v27 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *(a3 + 16);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19A0, &unk_233290360);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v24 - v14;
  sub_233121D34(a1, &v24 - v14, &qword_27DDE19A0, &unk_233290360);
  v16 = (*(v13 + 80) + 40) & ~*(v13 + 80);
  v17 = swift_allocObject();
  v18 = v24;
  v19 = v25;
  v17[2] = a2;
  v17[3] = v18;
  v17[4] = v19;
  sub_233121D9C(v15, v17 + v16, &qword_27DDE19A0, &unk_233290360);
  aBlock[4] = sub_233121C7C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2331221F8;
  aBlock[3] = &block_descriptor_201;
  v20 = _Block_copy(aBlock);
  v21 = a2;

  sub_23328D7DC();
  v31 = MEMORY[0x277D84F90];
  sub_233121BFC(qword_280D3A270, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
  sub_2331216CC(&qword_280D3A258, &unk_27DDE2540, &qword_233290328);
  v22 = v26;
  sub_23328E14C();
  MEMORY[0x23839BC20](0, v11, v9, v20);
  _Block_release(v20);
  (*(v30 + 8))(v9, v22);
  (*(v27 + 8))(v11, v29);
}

uint64_t sub_23311D774(void *a1, void (*a2)(char *), uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19A8, &qword_233299A30);
    MEMORY[0x28223BE20](v6);
    v8 = v24 - v7;
    v9 = *((*MEMORY[0x277D85000] & *a1) + 0x70);
    v10 = a1;
    v9();
    swift_storeEnumTagMultiPayload();
    a2(v8);

    return sub_233121E04(v8, &qword_27DDE19A8, &qword_233299A30);
  }

  else
  {
    v13 = sub_23328CC9C();
    v24[1] = v24;
    v14 = *(v13 - 8);
    MEMORY[0x28223BE20](v13);
    v16 = v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19A0, &unk_233290360);
    MEMORY[0x28223BE20](v17 - 8);
    v19 = v24 - v18;
    sub_233121D34(a4, v24 - v18, &qword_27DDE19A0, &unk_233290360);
    if ((*(v14 + 48))(v19, 1, v13) == 1)
    {
      sub_233121E04(v19, &qword_27DDE19A0, &unk_233290360);
      result = sub_23328E31C();
      __break(1u);
    }

    else
    {
      (*(v14 + 32))(v16, v19, v13);
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19A8, &qword_233299A30);
      v21 = MEMORY[0x28223BE20](v20);
      v23 = v24 - v22;
      (*(v14 + 16))(v24 - v22, v16, v13, v21);
      swift_storeEnumTagMultiPayload();
      a2(v23);
      sub_233121E04(v23, &qword_27DDE19A8, &qword_233299A30);
      return (*(v14 + 8))(v16, v13);
    }
  }

  return result;
}

uint64_t sub_23311DB40(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t *a5, void (*a6)(uint64_t, double), uint64_t (*a7)(void))
{
  v13 = *(a1 + 32);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v22 - v16;
  if (a2)
  {
    a6(a2, v15);
    v18 = a7(0);
    (*(*(v18 - 8) + 56))(v17, 0, 1, v18);
  }

  else
  {
    v19 = (a7)(0, v15);
    (*(*(v19 - 8) + 56))(v17, 1, 1, v19);
  }

  v20 = a3;
  v13(v17, a3);

  return sub_233121E04(v17, a4, a5);
}

void TTSVBService.deleteVoice(withID:completion:)()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock(v1 + 4);
  sub_233122284();
  os_unfair_lock_unlock(v1 + 4);
}

void TTSVBService.deleteModel(withID:completion:)()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock(v1 + 4);
  sub_233122284();
  os_unfair_lock_unlock(v1 + 4);
}

void TTSVBService.fetchVoices(completion:)()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock(v1 + 4);
  sub_233122284();
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t sub_23311DDF0(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1988, &qword_23329F8C0);
  MEMORY[0x28223BE20](v7);
  v9 = (&v12 - v8);
  v10 = type metadata accessor for TTSVBVoice(0);
  sub_233121BFC(&qword_27DDE1990, type metadata accessor for TTSVBVoice, &protocol conformance descriptor for TTSVBVoice);
  sub_233121BFC(&qword_27DDE1998, type metadata accessor for TTSVBVoice, &protocol conformance descriptor for TTSVBVoice);
  *v9 = static Array<A>.fromData(_:)(a3, a4, v10);
  swift_storeEnumTagMultiPayload();
  a1(v9);
  return sub_233121E04(v9, &qword_27DDE1988, &qword_23329F8C0);
}

uint64_t sub_23311DF50(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = sub_23328CCDC();
  v7 = v6;

  v3(v5, v7);
  sub_233121870(v5, v7);
}

void TTSVBService.fetchVoiceModels(completion:)()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock(v1 + 4);
  sub_233122284();
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t sub_23311E044(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22 = a7;
  v23 = a8;
  v13 = sub_23328D7CC();
  v26 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_23328D80C();
  v16 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(a3 + 16);
  v19 = swift_allocObject();
  v19[2] = a4;
  v19[3] = a5;
  v19[4] = a1;
  v19[5] = a2;
  aBlock[4] = v22;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2331221F8;
  aBlock[3] = v23;
  v20 = _Block_copy(aBlock);

  sub_2331218F0(a1, a2);
  sub_23328D7DC();
  v27 = MEMORY[0x277D84F90];
  sub_233121BFC(qword_280D3A270, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
  sub_2331216CC(&qword_280D3A258, &unk_27DDE2540, &qword_233290328);
  sub_23328E14C();
  MEMORY[0x23839BC20](0, v18, v15, v20);
  _Block_release(v20);
  (*(v26 + 8))(v15, v13);
  (*(v16 + 8))(v18, v25);
}

uint64_t sub_23311E318(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1970, &unk_233290350);
  MEMORY[0x28223BE20](v7);
  v9 = (&v12 - v8);
  v10 = type metadata accessor for TTSVBVoiceModel(0);
  sub_233121BFC(&qword_27DDE1978, type metadata accessor for TTSVBVoiceModel, &protocol conformance descriptor for TTSVBVoiceModel);
  sub_233121BFC(&qword_27DDE1980, type metadata accessor for TTSVBVoiceModel, &protocol conformance descriptor for TTSVBVoiceModel);
  *v9 = static Array<A>.fromData(_:)(a3, a4, v10);
  swift_storeEnumTagMultiPayload();
  a1(v9);
  return sub_233121E04(v9, &qword_27DDE1970, &unk_233290350);
}

void TTSVBService.fetchInstalledVoiceModels(completion:)()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock(v1 + 4);
  sub_233122284();
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t sub_23311E4E4(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1968, &unk_23329F8A0);
  MEMORY[0x28223BE20](v7);
  v9 = (&v12 - v8);
  v10 = type metadata accessor for TTSVBInstalledVoiceModel(0);
  sub_233121BFC(&qword_280D3A0B8, type metadata accessor for TTSVBInstalledVoiceModel, &protocol conformance descriptor for TTSVBInstalledVoiceModel);
  sub_233121BFC(&qword_280D3A0C0, type metadata accessor for TTSVBInstalledVoiceModel, &protocol conformance descriptor for TTSVBInstalledVoiceModel);
  *v9 = static Array<A>.fromData(_:)(a3, a4, v10);
  swift_storeEnumTagMultiPayload();
  a1(v9);
  return sub_233121E04(v9, &qword_27DDE1968, &unk_23329F8A0);
}

void TTSVBService.fetchPersonalVoiceSystemRepresentation(completion:)()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock(v1 + 4);
  sub_233122284();
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t sub_23311E6B0(uint64_t a1, unint64_t a2, void (*a3)(uint64_t *), uint64_t a4, void *a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1960, &unk_233290340);
  MEMORY[0x28223BE20](v9);
  v11 = (&v16 - v10);
  if (a2 >> 60 != 15)
  {
    sub_2331218F0(a1, a2);
    v14 = type metadata accessor for TTSVBPersonalVoiceSystemRepresentation(0);
    sub_233121BFC(&qword_280D3A1B0, type metadata accessor for TTSVBPersonalVoiceSystemRepresentation, &protocol conformance descriptor for TTSVBPersonalVoiceSystemRepresentation);
    sub_233121BFC(&qword_280D3A1B8, type metadata accessor for TTSVBPersonalVoiceSystemRepresentation, &protocol conformance descriptor for TTSVBPersonalVoiceSystemRepresentation);
    *v11 = static Array<A>.fromData(_:)(a1, a2, v14);
    swift_storeEnumTagMultiPayload();
    a3(v11);
    sub_23312185C(a1, a2);
    return sub_233121E04(v11, &qword_27DDE1960, &unk_233290340);
  }

  if (a5)
  {
    v12 = *((*MEMORY[0x277D85000] & *a5) + 0x70);
    v13 = a5;
    v12();
    swift_storeEnumTagMultiPayload();
    a3(v11);

    return sub_233121E04(v11, &qword_27DDE1960, &unk_233290340);
  }

  result = sub_23328E31C();
  __break(1u);
  return result;
}

uint64_t sub_23311E900(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {

    v6 = v4;
    v4 = sub_23328CCDC();
    v8 = v7;
  }

  else
  {

    v8 = 0xF000000000000000;
  }

  v9 = a3;
  v5(v4, v8, a3);

  sub_23312185C(v4, v8);
}

void TTSVBService.fetchTrainingMetadata(voiceID:completion:)()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock(v1 + 4);
  sub_233122284();
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t sub_23311EA18(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v26 = a8;
  v27 = a9;
  v15 = sub_23328D7CC();
  v31 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_23328D80C();
  v29 = *(v18 - 8);
  v30 = v18;
  MEMORY[0x28223BE20](v18);
  v20 = &v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *(a4 + 16);
  v21 = swift_allocObject();
  v21[2] = a1;
  v21[3] = a2;
  v21[4] = a5;
  v21[5] = a6;
  v21[6] = a3;
  aBlock[4] = v26;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2331221F8;
  aBlock[3] = v27;
  v22 = _Block_copy(aBlock);
  sub_2331218DC(a1, a2);
  v23 = a3;

  sub_23328D7DC();
  v32 = MEMORY[0x277D84F90];
  sub_233121BFC(qword_280D3A270, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
  sub_2331216CC(&qword_280D3A258, &unk_27DDE2540, &qword_233290328);
  sub_23328E14C();
  MEMORY[0x23839BC20](0, v20, v17, v22);
  _Block_release(v22);
  (*(v31 + 8))(v17, v15);
  (*(v29 + 8))(v20, v30);
}

uint64_t sub_23311ECF8(uint64_t a1, unint64_t a2, void (*a3)(uint64_t *), uint64_t a4, void *a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1948, &qword_23329F890);
  MEMORY[0x28223BE20](v9);
  v11 = (&v16 - v10);
  if (a2 >> 60 != 15)
  {
    sub_2331218F0(a1, a2);
    v14 = type metadata accessor for TTSVBVoiceSample(0);
    sub_233121BFC(&qword_27DDE1950, type metadata accessor for TTSVBVoiceSample, &protocol conformance descriptor for TTSVBVoiceSample);
    sub_233121BFC(&qword_27DDE1958, type metadata accessor for TTSVBVoiceSample, &protocol conformance descriptor for TTSVBVoiceSample);
    *v11 = static Array<A>.fromData(_:)(a1, a2, v14);
    swift_storeEnumTagMultiPayload();
    a3(v11);
    sub_23312185C(a1, a2);
    return sub_233121E04(v11, &qword_27DDE1948, &qword_23329F890);
  }

  if (a5)
  {
    v12 = *((*MEMORY[0x277D85000] & *a5) + 0x70);
    v13 = a5;
    v12();
    swift_storeEnumTagMultiPayload();
    a3(v11);

    return sub_233121E04(v11, &qword_27DDE1948, &qword_23329F890);
  }

  result = sub_23328E31C();
  __break(1u);
  return result;
}

void TTSVBService.trainModel(withID:mode:startImmediately:skipValidation:overrideMinimumPhraseCount:useUserRecordingsForTraining:completion:)()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock(v1 + 4);
  sub_233122284();
  os_unfair_lock_unlock(v1 + 4);
}

void TTSVBService.discardTrainingTasks(completion:)()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock(v1 + 4);
  sub_233122284();
  os_unfair_lock_unlock(v1 + 4);
}

void TTSVBService.cancelTrainingTask(taskID:completion:)()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock(v1 + 4);
  sub_233122284();
  os_unfair_lock_unlock(v1 + 4);
}

void TTSVBService.requestVoiceCacheRebuildIfNeeded(completion:)()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock(v1 + 4);
  sub_233122284();
  os_unfair_lock_unlock(v1 + 4);
}

void TTSVBService.repairDatastoreFromFilesystem(completion:)()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock(v1 + 4);
  sub_233122284();
  os_unfair_lock_unlock(v1 + 4);
}

void TTSVBService.createSupplementaryModelForVoice(voiceID:sourceVersion:targetVersion:completion:)()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock(v1 + 4);
  sub_233122284();
  os_unfair_lock_unlock(v1 + 4);
}

void TTSVBService.synthesizeAudioSamplesForVoice(withID:completion:)()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock(v1 + 4);
  sub_233122284();
  os_unfair_lock_unlock(v1 + 4);
}

void TTSVBService.sendMockUserNotification(completion:)()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock(v1 + 4);
  sub_233122284();
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t _s31TextToSpeechVoiceBankingSupport12TTSVBServiceC26configuredServiceInterfaceSo14NSXPCInterfaceCyFZ_0()
{
  [objc_opt_self() interfaceWithProtocol_];
  type metadata accessor for TTSVBBoxedError(0);
  v0 = [objc_allocWithZone(MEMORY[0x277CBEB58]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19C0, &qword_233290378);
  [v0 addObject_];
  swift_unknownObjectRelease();
  v1 = v0;
  sub_23328DD1C();

  result = sub_23328E31C();
  __break(1u);
  return result;
}

unint64_t sub_23311F61C()
{
  result = qword_280D3A220;
  if (!qword_280D3A220)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280D3A220);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23311F6D4()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;

  v5 = sub_23311BCA4(sub_233121E64, v4);

  v6 = sub_23328D95C();
  v7 = sub_23328D95C();
  v8 = swift_allocObject();
  v8[2] = v2;
  v8[3] = v1;
  v8[4] = v3;
  v11[4] = sub_233121ED0;
  v11[5] = v8;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_23311C9AC;
  v11[3] = &block_descriptor_261;
  v9 = _Block_copy(v11);

  [v5 createVoiceWithNamed:v6 localeID:v7 reply:v9];
  _Block_release(v9);

  return swift_unknownObjectRelease();
}

uint64_t sub_23311F890()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;

  v11 = sub_23311BCA4(sub_2331222A0, v4);

  v5 = sub_23328CBCC();
  v6 = sub_23328D95C();
  v7 = sub_23328D95C();
  v8 = swift_allocObject();
  v8[2] = v2;
  v8[3] = v1;
  v8[4] = v3;
  aBlock[4] = sub_233121CF0;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23311C9AC;
  aBlock[3] = &block_descriptor_246;
  v9 = _Block_copy(aBlock);

  [v11 importTrainingDataFromDirectory:v5 creatingVoiceName:v6 localeID:v7 reply:v9];
  _Block_release(v9);

  return swift_unknownObjectRelease();
}

uint64_t sub_23311FA40()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[7];
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = v3;

  v12 = sub_23311BCA4(sub_23312229C, v5);

  v6 = sub_23328CBCC();
  if (v4)
  {
    v7 = sub_23328D95C();
  }

  else
  {
    v7 = 0;
  }

  v8 = sub_23328CE4C();
  v9 = swift_allocObject();
  v9[2] = v1;
  v9[3] = v2;
  v9[4] = v3;
  aBlock[4] = sub_233122200;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23311D1B0;
  aBlock[3] = &block_descriptor_237;
  v10 = _Block_copy(aBlock);

  [v12 importModelFromDirectory:v6 overrideLocaleID:v7 addingToVoice:v8 reply:v10];
  _Block_release(v10);

  return swift_unknownObjectRelease();
}

uint64_t sub_23311FBF4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = v3;

  v6 = sub_23311BCA4(sub_23312229C, v5);

  v7 = swift_allocObject();
  v7[2] = v1;
  v7[3] = v2;
  v7[4] = v3;
  v10[4] = sub_233122200;
  v10[5] = v7;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_23311D1B0;
  v10[3] = &block_descriptor_228;
  v8 = _Block_copy(v10);

  [v6 updateTCCCloudKitAccessWithAllowed:v4 reply:v8];
  _Block_release(v8);
  return swift_unknownObjectRelease();
}

uint64_t sub_23311FD58()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;

  v5 = sub_23311BCA4(sub_23312229C, v4);

  v6 = swift_allocObject();
  v6[2] = v1;
  v6[3] = v2;
  v6[4] = v3;
  v9[4] = sub_233122200;
  v9[5] = v6;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_23311D1B0;
  v9[3] = &block_descriptor_219;
  v7 = _Block_copy(v9);

  [v5 initializeCloudKitSchemaWithReply_];
  _Block_release(v7);
  return swift_unknownObjectRelease();
}

uint64_t sub_23311FEB4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;

  v5 = sub_23311BCA4(sub_23312229C, v4);

  v6 = sub_23328CE4C();
  v7 = swift_allocObject();
  v7[2] = v1;
  v7[3] = v2;
  v7[4] = v3;
  v10[4] = sub_233122200;
  v10[5] = v7;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_23311D1B0;
  v10[3] = &block_descriptor_210;
  v8 = _Block_copy(v10);

  [v5 synchronizeModelFuturesWithModelID:v6 reply:v8];
  _Block_release(v8);

  return swift_unknownObjectRelease();
}

uint64_t sub_233120024()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 48);
  v5 = *(v0 + 49);
  v6 = swift_allocObject();
  *(v6 + 16) = v1;
  *(v6 + 24) = v3;

  v7 = sub_23311BCA4(sub_233121C44, v6);

  v8 = sub_23328CE4C();
  v9 = swift_allocObject();
  v9[2] = v2;
  v9[3] = v1;
  v9[4] = v3;
  v12[4] = sub_233121C70;
  v12[5] = v9;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_23311DB1C;
  v12[3] = &block_descriptor_195;
  v10 = _Block_copy(v12);

  [v7 exportTrainingDataWithVoiceID:v8 shouldCompressResult:v4 includeEntireScript:v5 reply:v10];
  _Block_release(v10);

  return swift_unknownObjectRelease();
}

uint64_t sub_2331201A4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;

  v5 = sub_23311BCA4(sub_23312229C, v4);

  v6 = sub_23328CE4C();
  v7 = swift_allocObject();
  v7[2] = v1;
  v7[3] = v2;
  v7[4] = v3;
  v10[4] = sub_233122200;
  v10[5] = v7;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_23311D1B0;
  v10[3] = &block_descriptor_186;
  v8 = _Block_copy(v10);

  [v5 deleteVoiceWithVoiceID:v6 reply:v8];
  _Block_release(v8);

  return swift_unknownObjectRelease();
}

uint64_t sub_233120314()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;

  v5 = sub_23311BCA4(sub_23312229C, v4);

  v6 = sub_23328CE4C();
  v7 = swift_allocObject();
  v7[2] = v1;
  v7[3] = v2;
  v7[4] = v3;
  v10[4] = sub_233122200;
  v10[5] = v7;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_23311D1B0;
  v10[3] = &block_descriptor_177;
  v8 = _Block_copy(v10);

  [v5 deleteModelWithModelID:v6 reply:v8];
  _Block_release(v8);

  return swift_unknownObjectRelease();
}

uint64_t sub_233120484()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;

  v5 = sub_23311BCA4(sub_233121B40, v4);

  v6 = swift_allocObject();
  v6[2] = v1;
  v6[3] = v2;
  v6[4] = v3;
  v9[4] = sub_233121B6C;
  v9[5] = v6;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_23311DF50;
  v9[3] = &block_descriptor_162;
  v7 = _Block_copy(v9);

  [v5 fetchVoicesWithCompletion_];
  _Block_release(v7);
  return swift_unknownObjectRelease();
}

uint64_t sub_2331205E0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;

  v5 = sub_23311BCA4(sub_233121AC4, v4);

  v6 = swift_allocObject();
  v6[2] = v1;
  v6[3] = v2;
  v6[4] = v3;
  v9[4] = sub_233121AF0;
  v9[5] = v6;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_23311DF50;
  v9[3] = &block_descriptor_147;
  v7 = _Block_copy(v9);

  [v5 fetchVoiceModelsWithCompletion_];
  _Block_release(v7);
  return swift_unknownObjectRelease();
}

uint64_t sub_23312073C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;

  v5 = sub_23311BCA4(sub_233121A48, v4);

  v6 = swift_allocObject();
  v6[2] = v1;
  v6[3] = v2;
  v6[4] = v3;
  v9[4] = sub_233121A74;
  v9[5] = v6;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_23311DF50;
  v9[3] = &block_descriptor_132;
  v7 = _Block_copy(v9);

  [v5 fetchInstalledVoiceModelsWithCompletion_];
  _Block_release(v7);
  return swift_unknownObjectRelease();
}

uint64_t sub_233120898()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;

  v5 = sub_23311BCA4(sub_233121944, v4);

  v6 = swift_allocObject();
  v6[2] = v1;
  v6[3] = v2;
  v6[4] = v3;
  v9[4] = sub_233121970;
  v9[5] = v6;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_23311E900;
  v9[3] = &block_descriptor_117;
  v7 = _Block_copy(v9);

  [v5 fetchPersonalVoiceSystemRepresentationWithCompletion_];
  _Block_release(v7);
  return swift_unknownObjectRelease();
}

uint64_t sub_2331209F4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;

  v5 = sub_23311BCA4(sub_2331217E0, v4);

  v6 = sub_23328CE4C();
  v7 = swift_allocObject();
  v7[2] = v1;
  v7[3] = v2;
  v7[4] = v3;
  v10[4] = sub_23312180C;
  v10[5] = v7;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_23311E900;
  v10[3] = &block_descriptor_102;
  v8 = _Block_copy(v10);

  [v5 fetchTrainingMetadataWithVoiceID:v6 completion:v8];
  _Block_release(v8);

  return swift_unknownObjectRelease();
}

uint64_t sub_233120B64()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 48);
  v16 = *(v0 + 57);
  v17 = *(v0 + 56);
  v14 = *(v0 + 64);
  v5 = *(v0 + 72);
  v15 = *(v0 + 73);
  v6 = swift_allocObject();
  *(v6 + 16) = v1;
  *(v6 + 24) = v3;

  v7 = sub_23311BCA4(sub_23312229C, v6);

  v8 = sub_23328CE4C();
  v9 = TTSVBSiriTTSTrainerTaskModeStringForMode(v4);
  if (!v9)
  {
    sub_23328D98C();
    v9 = sub_23328D95C();
  }

  if (v5)
  {
    v10 = -1;
  }

  else
  {
    v10 = v14;
  }

  v11 = swift_allocObject();
  v11[2] = v2;
  v11[3] = v1;
  v11[4] = v3;
  aBlock[4] = sub_233122200;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23311D1B0;
  aBlock[3] = &block_descriptor_93;
  v12 = _Block_copy(aBlock);

  [v7 trainModelWithVoiceID:v8 mode:v9 startImmediately:v17 skipValidation:v16 overrideMinimumPhraseCount:v10 useUserRecordingsForTraining:v15 reply:v12];
  _Block_release(v12);

  return swift_unknownObjectRelease();
}

uint64_t sub_233120D50()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;

  v5 = sub_23311BCA4(sub_23312229C, v4);

  v6 = swift_allocObject();
  v6[2] = v1;
  v6[3] = v2;
  v6[4] = v3;
  v9[4] = sub_233122200;
  v9[5] = v6;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_23311D1B0;
  v9[3] = &block_descriptor_84;
  v7 = _Block_copy(v9);

  [v5 discardTrainingTasksWithReply_];
  _Block_release(v7);
  return swift_unknownObjectRelease();
}

uint64_t sub_233120EAC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;

  v5 = sub_23311BCA4(sub_23312229C, v4);

  v6 = sub_23328D95C();
  v7 = swift_allocObject();
  v7[2] = v1;
  v7[3] = v2;
  v7[4] = v3;
  v10[4] = sub_233122200;
  v10[5] = v7;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_23311D1B0;
  v10[3] = &block_descriptor_75;
  v8 = _Block_copy(v10);

  [v5 cancelTrainingTaskWithTaskID:v6 reply:v8];
  _Block_release(v8);

  return swift_unknownObjectRelease();
}

uint64_t sub_233121068()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;

  v5 = sub_23311BCA4(sub_23312229C, v4);

  v6 = swift_allocObject();
  v6[2] = v1;
  v6[3] = v2;
  v6[4] = v3;
  v9[4] = sub_233122200;
  v9[5] = v6;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_23311D1B0;
  v9[3] = &block_descriptor_63;
  v7 = _Block_copy(v9);

  [v5 repairDatastoreFromFilesystemWithReply_];
  _Block_release(v7);
  return swift_unknownObjectRelease();
}

uint64_t sub_2331211C4()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;

  v11 = sub_23311BCA4(sub_23312229C, v4);

  v5 = sub_23328CE4C();
  v6 = sub_23328D95C();
  v7 = sub_23328D95C();
  v8 = swift_allocObject();
  v8[2] = v2;
  v8[3] = v1;
  v8[4] = v3;
  aBlock[4] = sub_233122200;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23311D1B0;
  aBlock[3] = &block_descriptor_54;
  v9 = _Block_copy(aBlock);

  [v11 createSupplementaryModelForVoiceWithVoiceID:v5 sourceVersion:v6 targetVersion:v7 reply:v9];
  _Block_release(v9);

  return swift_unknownObjectRelease();
}

uint64_t sub_233121374()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;

  v5 = sub_23311BCA4(sub_233121784, v4);

  v6 = sub_23328CE4C();
  v7 = swift_allocObject();
  v7[2] = v1;
  v7[3] = v2;
  v7[4] = v3;
  v10[4] = sub_2331217B0;
  v10[5] = v7;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_23311D1B0;
  v10[3] = &block_descriptor_45;
  v8 = _Block_copy(v10);

  [v5 synthesizeAudioSamplesForVoiceWithID:v6 reply:v8];
  _Block_release(v8);

  return swift_unknownObjectRelease();
}

uint64_t sub_233121520(uint64_t a1, uint64_t a2, SEL *a3)
{
  v6 = *(v3 + 24);
  v7 = *(v3 + 32);
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v8 + 24) = v7;

  v9 = sub_23311BCA4(a2, v8);

  [v9 *a3];
  sub_23311C52C(v6, v7, 0);
  return swift_unknownObjectRelease();
}

uint64_t getEnumTagSinglePayload for TTSVBVoiceModelFlags(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for TTSVBVoiceModelFlags(uint64_t result, int a2, int a3)
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

void type metadata accessor for os_unfair_lock_s()
{
  if (!qword_280D3A118)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_280D3A118);
    }
  }
}

uint64_t sub_2331216CC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_233121720(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTSVBError(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23312185C(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_233121870(result, a2);
  }

  return result;
}

uint64_t sub_233121870(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_2331218DC(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2331218F0(result, a2);
  }

  return result;
}

uint64_t sub_2331218F0(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t objectdestroy_104Tm()
{
  v1 = *(v0 + 24);
  if (v1 >> 60 != 15)
  {
    sub_233121870(*(v0 + 16), v1);
  }

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t objectdestroy_134Tm()
{

  sub_233121870(*(v0 + 32), *(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_233121BFC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_233121C7C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19A0, &unk_233290360) - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80));

  return sub_23311D774(v2, v3, v4, v5);
}

uint64_t sub_233121D34(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_233121D9C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_233121E04(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t objectdestroyTm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t objectdestroy_197Tm(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a1, a2) - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 40) & ~v6;
  v8 = *(v5 + 64);

  v9 = a3(0);
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v3 + v7, 1, v9))
  {
    (*(v10 + 8))(v3 + v7, v9);
  }

  return MEMORY[0x2821FE8E8](v3, v7 + v8, v6 | 7);
}

uint64_t sub_2331220AC(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_2331220C4(uint64_t a1)
{
  v2 = type metadata accessor for TTSVBError(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_233122130()
{
  v1 = *(v0 + 32);
  *(v0 + 32) = 0;
}

uint64_t TTSVBCommonVoiceMO.immutableVoice()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  result = (*(a2 + 32))();
  if (!v7)
  {
    __break(1u);
    goto LABEL_11;
  }

  v8 = result;
  v9 = v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19B0, &qword_233290370);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v19 - v12;
  (*(a2 + 80))(a1, a2, v11);
  v14 = sub_23328CE8C();
  result = (*(*(v14 - 8) + 48))(v13, 1, v14);
  if (result == 1)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v15 = (*(a2 + 56))(a1, a2);
  if (v16)
  {
    v17 = v15;
  }

  else
  {
    v17 = 0x53552D6E65;
  }

  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = 0xE500000000000000;
  }

  return TTSVBVoice.init(name:voiceID:localeID:)(v8, v9, v13, v17, v18, a3);
}

uint64_t TTSVBCommonVoiceMO.displayName.getter(uint64_t a1, uint64_t a2)
{
  result = (*(a2 + 32))(a1);
  if (!v3)
  {
    return 0x6E776F6E6B6E753CLL;
  }

  return result;
}

uint64_t sub_233122464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v8 = (*(a2 + 8))(ObjectType, a2);
  (*(a4 + 16))(v8, a3, a4);
  v9 = (*(a2 + 32))(ObjectType, a2);
  (*(a4 + 40))(v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19B0, &qword_233290370);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v16 - v12;
  (*(a2 + 80))(ObjectType, a2, v11);
  (*(a4 + 88))(v13, a3, a4);
  v14 = (*(a2 + 56))(ObjectType, a2);
  return (*(a4 + 64))(v14);
}

void *sub_233122608(uint64_t a1)
{
  v2 = type metadata accessor for TTSVBVoice(0);
  v34 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TTSVBLocalVoiceMO();
  v6 = sub_2331F88A8(v5, &protocol witness table for TTSVBLocalVoiceMO);
  v8 = static DSO<>.fetch(in:config:)(a1, v6, v7, v5, &protocol witness table for TTSVBLocalVoiceMO);

  if (v8 >> 62)
  {
    goto LABEL_24;
  }

  v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v9)
  {
    while (1)
    {
      v37 = MEMORY[0x277D84F90];
      result = sub_2331229AC(0, v9 & ~(v9 >> 63), 0);
      if (v9 < 0)
      {
        break;
      }

      v11 = 0;
      v12 = v37;
      v32 = off_284875B98[0];
      v33 = v8 & 0xC000000000000001;
      v29 = v8 & 0xFFFFFFFFFFFFFF8;
      v30 = v9;
      v31 = v5;
      while (!__OFADD__(v11, 1))
      {
        v35 = v11 + 1;
        v36 = v12;
        if (v33)
        {
          v13 = MEMORY[0x23839BFC0](v11, v8);
        }

        else
        {
          if (v11 >= *(v29 + 16))
          {
            goto LABEL_23;
          }

          v13 = *(v8 + 8 * v11 + 32);
        }

        v14 = v13;
        result = (v32)(v5, &protocol witness table for TTSVBLocalVoiceMO);
        if (!v15)
        {
          goto LABEL_28;
        }

        v16 = result;
        v17 = v15;
        v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19B0, &qword_233290370);
        MEMORY[0x28223BE20](v18 - 8);
        v20 = &v28 - v19;
        off_284875BC8(v5, &protocol witness table for TTSVBLocalVoiceMO);
        v21 = sub_23328CE8C();
        result = (*(*(v21 - 8) + 48))(v20, 1, v21);
        if (result == 1)
        {
          goto LABEL_29;
        }

        v22 = off_284875BB0(v5, &protocol witness table for TTSVBLocalVoiceMO);
        if (v23)
        {
          v24 = v22;
        }

        else
        {
          v24 = 0x53552D6E65;
        }

        if (v23)
        {
          v25 = v23;
        }

        else
        {
          v25 = 0xE500000000000000;
        }

        TTSVBVoice.init(name:voiceID:localeID:)(v16, v17, v20, v24, v25, v4);

        v12 = v36;
        v37 = v36;
        v27 = *(v36 + 16);
        v26 = *(v36 + 24);
        if (v27 >= v26 >> 1)
        {
          sub_2331229AC((v26 > 1), v27 + 1, 1);
          v12 = v37;
        }

        *(v12 + 16) = v27 + 1;
        sub_2331229CC(v4, v12 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v27);
        ++v11;
        v5 = v31;
        if (v35 == v30)
        {

          return v12;
        }
      }

      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      v9 = sub_23328E19C();
      if (!v9)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {
LABEL_25:

    return MEMORY[0x277D84F90];
  }

  return result;
}

void *sub_2331229AC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_233122BC0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_2331229CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTSVBVoice(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_233122BC0(void *result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19C8, &qword_233299AD0);
  v10 = *(type metadata accessor for TTSVBVoice(0) - 8);
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
  v15 = *(type metadata accessor for TTSVBVoice(0) - 8);
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

uint64_t sub_233122D98()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE1A70, &unk_233290940);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_23328D51C();
  __swift_allocate_value_buffer(v3, qword_27DE089E0);
  __swift_project_value_buffer(v3, qword_27DE089E0);
  v4 = sub_23328D4DC();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  return sub_23328D50C();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_233122F2C()
{
  v1[39] = v0;
  v1[40] = *(type metadata accessor for TTSVBInstalledVoiceModel(0) - 8);
  v1[41] = swift_task_alloc();
  v1[42] = type metadata accessor for TTSVBPath(0);
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();
  v1[47] = swift_task_alloc();
  v1[48] = type metadata accessor for TTSVBVoice(0);
  v1[49] = swift_task_alloc();
  v1[50] = type metadata accessor for TTSVBPersonalVoiceSystemRepresentation(0);
  v1[51] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19E0, &qword_2332903E8);
  v1[52] = swift_task_alloc();
  v1[53] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2331230EC, 0, 0);
}

uint64_t sub_2331230EC()
{
  sub_23328D20C();
  v1 = sub_233237A1C();
  v2 = *v1;
  *(v0 + 432) = *v1;
  v3 = *(*v2 + 224);

  v6 = (v3 + *v3);
  v4 = swift_task_alloc();
  *(v0 + 440) = v4;
  *v4 = v0;
  v4[1] = sub_2331232F0;

  return v6();
}

uint64_t sub_2331232F0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 448) = a1;
  *(v3 + 456) = v1;

  if (v1)
  {
    v4 = sub_233125654;
  }

  else
  {
    v4 = sub_233123404;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_233123404()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D8, &qword_23329FAC0);
  sub_23328D54C();
  v147 = v0 + 58;
  if (*(v0 + 465) != 1)
  {
    v6 = *(v0 + 57);
    v144 = *(v0 + 49);
    v145 = *(v0 + 50);
    v146 = *(v0 + 48);
    v150 = *(v0 + 40);
    v176 = v0;
    while (1)
    {
      v9 = *(v0 + 52);
      v8 = *(v0 + 53);
      sub_233125748(v9);
      sub_233121D9C(v9, v8, &qword_27DDE19E0, &qword_2332903E8);
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19E8, &qword_2332903F0);
      if ((*(*(v10 - 8) + 48))(v8, 1, v10) == 1)
      {

        sub_23328D30C();
        sub_23328D27C();

        goto LABEL_61;
      }

      v11 = *(v0 + 51);
      v12 = *(v0 + 49);
      v13 = *(v0 + 47);
      sub_233125938(*(v0 + 53) + *(v10 + 48), v11);
      sub_23312719C(v11, v12, type metadata accessor for TTSVBVoice);
      v161 = sub_2331DEBE8();
      v185 = *v161;
      v14 = *v161;
      v15 = *(v146 + 20);
      v16 = sub_23328CE8C();
      v153 = *(v16 - 8);
      v17 = *(v153 + 16);
      v180 = v12;
      v182 = v15;
      v163 = v16;
      v17(v13, v12 + v15);
      swift_storeEnumTagMultiPayload();
      v175 = sub_23328CC9C();
      v18 = *(v175 - 8);
      v19 = swift_task_alloc();
      v20 = v14;
      TTSVBPath.url.getter(v19);
      sub_233126A64(v13, type metadata accessor for TTSVBPath);
      v21 = _TTSVBFileManager.calculateSize(ofItemAtURL:)(v19);
      if (v6)
      {

        v169 = 0;
      }

      else
      {
        v169 = v21;
      }

      v22 = *(v0 + 46);
      v174 = *(v18 + 8);
      v174(v19, v175);

      v23 = *v161;
      (v17)(v22, v12 + v182, v163);
      swift_storeEnumTagMultiPayload();
      v24 = swift_task_alloc();
      v25 = v23;
      TTSVBPath.url.getter(v24);
      sub_233126A64(v22, type metadata accessor for TTSVBPath);
      v170 = _TTSVBFileManager.calculateSize(ofItemAtURL:)(v24);
      v26 = *(v0 + 45);
      v174(v24, v175);

      v186 = *v161;
      v27 = *v161;
      (v17)(v26, v12 + v182, v163);
      swift_storeEnumTagMultiPayload();
      v28 = swift_task_alloc();
      v29 = v27;
      TTSVBPath.url.getter(v28);
      sub_233126A64(v26, type metadata accessor for TTSVBPath);
      v178 = v17;
      v171 = _TTSVBFileManager.calculateSize(ofItemAtURL:)(v28);
      v167 = *(v0 + 51);
      v30 = *(v0 + 49);
      v31 = *(v176 + 44);
      v174(v28, v175);

      sub_23328E24C();
      MEMORY[0x23839B7E0](0xD00000000000001FLL, 0x80000002332A4DF0);
      MEMORY[0x23839B7E0](*v30, *(v144 + 8));
      MEMORY[0x23839B7E0](0xD00000000000001FLL, 0x80000002332A4E10);
      v32 = sub_23328CE3C();
      MEMORY[0x23839B7E0](v32);

      MEMORY[0x23839B7E0](0xD00000000000001FLL, 0x80000002332A4E30);
      MEMORY[0x23839B7E0](*(v30 + *(v146 + 24)), *(v30 + *(v146 + 24) + 8));
      MEMORY[0x23839B7E0](0xD00000000000001FLL, 0x80000002332A4E50);
      v178(v31, v12 + v182, v163);
      swift_storeEnumTagMultiPayload();
      v33 = swift_task_alloc();
      TTSVBPath.url.getter(v33);
      sub_233126A64(v31, type metadata accessor for TTSVBPath);
      v34 = sub_23328CC6C();
      v36 = v35;
      v174(v33, v175);
      MEMORY[0x23839B7E0](v34, v36);

      MEMORY[0x23839B7E0](0xD00000000000001FLL, 0x80000002332A4E70);
      *(v176 + 37) = v169;
      v37 = sub_23328CA4C();
      v162 = *(v37 - 8);
      v38 = swift_task_alloc();
      v39 = sub_23328CA1C();
      v40 = *(v39 - 8);
      v41 = swift_task_alloc();
      v160 = *MEMORY[0x277CC8DE0];
      v42 = v40;
      v159 = *(v40 + 104);
      v159();
      v158 = sub_23328CA3C();
      v43 = *(v158 - 8);
      v44 = swift_task_alloc();
      sub_23328CA2C();
      sub_23328C82C();
      v157 = *(v43 + 8);
      v157(v44, v158);
      v156 = *(v42 + 8);
      v156(v41, v39);

      sub_23312599C();
      sub_2331259F0();
      sub_233125A3C();
      sub_23328E0CC();
      v155 = *(v162 + 8);
      v155(v38, v37);

      MEMORY[0x23839B7E0](*(v176 + 4), *(v176 + 5));

      MEMORY[0x23839B7E0](0xD00000000000001FLL, 0x80000002332A4E90);
      v178(v31, v180 + v182, v163);
      swift_storeEnumTagMultiPayload();
      v45 = swift_task_alloc();
      TTSVBPath.url.getter(v45);
      sub_233126A64(v31, type metadata accessor for TTSVBPath);
      v46 = sub_23328CC6C();
      v48 = v47;
      v174(v45, v175);
      MEMORY[0x23839B7E0](v46, v48);

      MEMORY[0x23839B7E0](0xD00000000000001FLL, 0x80000002332A4EB0);
      *(v176 + 33) = v170;
      v49 = swift_task_alloc();
      v50 = swift_task_alloc();
      (v159)(v50, v160, v39);
      v51 = swift_task_alloc();
      sub_23328CA2C();
      sub_23328C82C();
      v157(v51, v158);
      v156(v50, v39);

      v154 = v37;
      sub_23328E0CC();
      v155(v49, v37);

      MEMORY[0x23839B7E0](*(v176 + 8), *(v176 + 9));

      MEMORY[0x23839B7E0](0xD00000000000001FLL, 0x80000002332A4ED0);
      v178(v31, v180 + v182, v163);
      swift_storeEnumTagMultiPayload();
      v52 = swift_task_alloc();
      TTSVBPath.url.getter(v52);
      v0 = v176;
      sub_233126A64(v31, type metadata accessor for TTSVBPath);
      v53 = sub_23328CC6C();
      v55 = v54;
      v174(v52, v175);
      MEMORY[0x23839B7E0](v53, v55);

      MEMORY[0x23839B7E0](0xD00000000000001FLL, 0x80000002332A4EF0);
      *(v176 + 30) = v171;
      v56 = swift_task_alloc();
      v57 = swift_task_alloc();
      (v159)(v57, v160, v39);
      v58 = swift_task_alloc();
      sub_23328CA2C();
      sub_23328C82C();
      v157(v58, v158);
      v152 = v39;
      v156(v57, v39);

      sub_23328E0CC();
      v155(v56, v154);

      MEMORY[0x23839B7E0](*(v0 + 12), *(v0 + 13));

      MEMORY[0x23839B7E0](657930, 0xE300000000000000);
      MEMORY[0x23839B7E0](0, 0xE000000000000000);

      v59 = *(v167 + *(v145 + 20));
      v151 = *(v59 + 16);
      if (v151)
      {
        break;
      }

      v6 = 0;
LABEL_6:
      v7 = *(v0 + 49);
      sub_233126A64(*(v0 + 51), type metadata accessor for TTSVBPersonalVoiceSystemRepresentation);
      sub_233126A64(v7, type metadata accessor for TTSVBVoice);
    }

    result = MEMORY[0x23839B7E0](0x203A736C65646F4DLL, 0xEA00000000000A0ALL);
    v61 = 0;
    v148 = v59 + ((*(v150 + 80) + 32) & ~*(v150 + 80));
    v149 = v59;
    while (v61 < *(v59 + 16))
    {
      v76 = *(v0 + 43);
      v77 = *(v0 + 41);
      v173 = v61;
      sub_23312719C(v148 + *(v150 + 72) * v61, v77, type metadata accessor for TTSVBInstalledVoiceModel);
      v78 = *v161;
      sub_23312719C(v77, v76, type metadata accessor for TTSVBInstalledVoiceModel);
      swift_storeEnumTagMultiPayload();
      v79 = swift_task_alloc();
      v80 = v78;
      TTSVBPath.url.getter(v79);
      sub_233126A64(v76, type metadata accessor for TTSVBPath);
      v172 = _TTSVBFileManager.calculateSize(ofItemAtURL:)(v79);
      v81 = *(v0 + 41);
      v181 = *(v0 + 44);
      v174(v79, v175);

      sub_23328E24C();
      MEMORY[0x23839B7E0](0xD000000000000020, 0x80000002332A4F10);
      swift_getKeyPath();
      TTSVBInstalledVoiceModel.subscript.getter();

      MEMORY[0x23839B7E0](*(v0 + 16), *(v0 + 17));

      MEMORY[0x23839B7E0](0xD000000000000021, 0x80000002332A4F40);
      swift_getKeyPath();
      v82 = swift_task_alloc();
      TTSVBInstalledVoiceModel.subscript.getter();

      v83 = sub_23328CE3C();
      v85 = v84;
      v86 = *(v153 + 8);
      v86(v82, v163);
      MEMORY[0x23839B7E0](v83, v85);

      MEMORY[0x23839B7E0](0xD000000000000021, 0x80000002332A4F70);
      swift_getKeyPath();
      v87 = swift_task_alloc();
      TTSVBInstalledVoiceModel.subscript.getter();

      v88 = sub_23328CE3C();
      v90 = v89;
      v86(v87, v163);
      MEMORY[0x23839B7E0](v88, v90);

      MEMORY[0x23839B7E0](0xD000000000000021, 0x80000002332A4FA0);
      sub_23312719C(v81, v181, type metadata accessor for TTSVBInstalledVoiceModel);
      swift_storeEnumTagMultiPayload();
      v91 = swift_task_alloc();
      TTSVBPath.url.getter(v91);
      sub_233126A64(v181, type metadata accessor for TTSVBPath);
      v92 = sub_23328CC6C();
      v94 = v93;
      v174(v91, v175);
      MEMORY[0x23839B7E0](v92, v94);

      MEMORY[0x23839B7E0](0xD000000000000021, 0x80000002332A4FD0);
      swift_getKeyPath();
      TTSVBInstalledVoiceModel.subscript.getter();

      MEMORY[0x23839B7E0](*(v0 + 18), *(v0 + 19));

      MEMORY[0x23839B7E0](0xD000000000000021, 0x80000002332A5000);
      swift_getKeyPath();
      TTSVBInstalledVoiceModel.subscript.getter();

      v95 = *(v0 + 29);
      v96 = *(v95 + 16);
      if (v96)
      {
        v187 = MEMORY[0x277D84F90];
        sub_23312676C(0, v96, 0);
        v97 = v187;
        v98 = sub_23328CF0C();
        v99 = 0;
        v100 = *(v98 - 8);
        v183 = v95 + ((*(v100 + 80) + 32) & ~*(v100 + 80));
        do
        {
          v101 = swift_task_alloc();
          (*(v100 + 16))(v101, v183 + *(v100 + 72) * v99, v98);
          v102 = sub_23328CEAC();
          v104 = v103;
          (*(v100 + 8))(v101, v98);

          v106 = *(v187 + 16);
          v105 = *(v187 + 24);
          if (v106 >= v105 >> 1)
          {
            sub_23312676C((v105 > 1), v106 + 1, 1);
          }

          ++v99;
          *(v187 + 16) = v106 + 1;
          v107 = v187 + 16 * v106;
          *(v107 + 32) = v102;
          *(v107 + 40) = v104;
        }

        while (v96 != v99);
      }

      else
      {

        v97 = MEMORY[0x277D84F90];
      }

      v108 = MEMORY[0x23839B960](v97, MEMORY[0x277D837D0]);
      v110 = v109;

      MEMORY[0x23839B7E0](v108, v110);

      MEMORY[0x23839B7E0](0xD000000000000021, 0x80000002332A5030);
      swift_getKeyPath();
      v111 = sub_23328CE1C();
      v179 = *(v111 - 8);
      v112 = swift_task_alloc();
      TTSVBInstalledVoiceModel.subscript.getter();

      v113 = sub_23328CD6C();
      v114 = *(v113 - 8);
      v115 = swift_task_alloc();
      sub_23328CD5C();
      v116 = sub_23328CD3C();
      v117 = *(v116 - 8);
      v118 = swift_task_alloc();
      sub_23328CD1C();
      v177 = sub_23328CDEC();
      v120 = v119;
      v168 = v116;
      v165 = *(v117 + 8);
      v165(v118, v116);
      v164 = *(v114 + 8);
      v164(v115, v113);
      v184 = v111;
      v166 = *(v179 + 8);
      v166(v112, v111);

      MEMORY[0x23839B7E0](v177, v120);

      MEMORY[0x23839B7E0](0xD000000000000021, 0x80000002332A5060);
      swift_getKeyPath();
      TTSVBInstalledVoiceModel.subscript.getter();

      MEMORY[0x23839B7E0](*(v176 + 22), *(v176 + 23));

      MEMORY[0x23839B7E0](0xD000000000000021, 0x80000002332A5090);
      swift_getKeyPath();
      TTSVBInstalledVoiceModel.subscript.getter();

      v121 = *(v176 + 25);
      if (v121)
      {
        v122 = *(v176 + 24);
      }

      else
      {
        v122 = 0x3E6C696E3CLL;
      }

      if (v121)
      {
        v123 = *(v176 + 25);
      }

      else
      {
        v123 = 0xE500000000000000;
      }

      MEMORY[0x23839B7E0](v122, v123);

      MEMORY[0x23839B7E0](0xD000000000000021, 0x80000002332A50C0);
      swift_getKeyPath();
      TTSVBInstalledVoiceModel.subscript.getter();

      v124 = *(v176 + 27);
      if (v124)
      {
        v125 = *(v176 + 26);
      }

      else
      {
        v125 = 0x3E6C696E3CLL;
      }

      if (v124)
      {
        v126 = *(v176 + 27);
      }

      else
      {
        v126 = 0xE500000000000000;
      }

      MEMORY[0x23839B7E0](v125, v126);

      MEMORY[0x23839B7E0](0xD000000000000021, 0x80000002332A50F0);
      swift_getKeyPath();
      TTSVBInstalledVoiceModel.subscript.getter();

      v127 = *(v176 + 3);
      if (v127)
      {
        v128 = *(v176 + 2);
      }

      else
      {
        v128 = 0x3E6C696E3CLL;
      }

      if (v127)
      {
        v129 = *(v176 + 3);
      }

      else
      {
        v129 = 0xE500000000000000;
      }

      MEMORY[0x23839B7E0](v128, v129);

      MEMORY[0x23839B7E0](0xD000000000000021, 0x80000002332A5120);
      swift_getKeyPath();
      TTSVBInstalledVoiceModel.subscript.getter();

      MEMORY[0x23839B7E0](*(v176 + 20), *(v176 + 21));

      MEMORY[0x23839B7E0](0xD000000000000021, 0x80000002332A5150);
      swift_getKeyPath();
      TTSVBInstalledVoiceModel.subscript.getter();

      MEMORY[0x23839B7E0](*(v176 + 14), *(v176 + 15));

      MEMORY[0x23839B7E0](0xD000000000000021, 0x80000002332A5180);
      swift_getKeyPath();
      TTSVBInstalledVoiceModel.subscript.getter();

      v130 = TTSVBVoiceStatus.description.getter(*(v176 + 31));
      MEMORY[0x23839B7E0](v130);

      MEMORY[0x23839B7E0](0xD000000000000021, 0x80000002332A51B0);
      swift_getKeyPath();
      TTSVBInstalledVoiceModel.subscript.getter();

      v131 = TTSVBVoiceTrainingStatus.description.getter(*(v176 + 32));
      MEMORY[0x23839B7E0](v131);

      MEMORY[0x23839B7E0](0xD000000000000021, 0x80000002332A51E0);
      swift_getKeyPath();
      TTSVBInstalledVoiceModel.subscript.getter();

      v132 = 1.0;
      if (*(v176 + 34) != 7)
      {
        swift_getKeyPath();
        TTSVBInstalledVoiceModel.subscript.getter();

        v132 = v176[35];
      }

      v176[36] = v132;
      v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1A00, &unk_2332905E0);
      v134 = *(v133 - 8);
      v135 = swift_task_alloc();
      sub_23328CF0C();
      swift_task_alloc();
      sub_23328CEEC();
      sub_23312678C();
      sub_23328CA8C();

      sub_2331267E0();
      sub_23328D86C();
      (*(v134 + 8))(v135, v133);

      MEMORY[0x23839B7E0](*(v176 + 10), *(v176 + 11));

      MEMORY[0x23839B7E0](0xD000000000000021, 0x80000002332A5210);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1A18, &unk_233297730);
      v136 = swift_task_alloc();
      swift_getKeyPath();
      TTSVBInstalledVoiceModel.subscript.getter();

      if ((*(v179 + 48))(v136, 1, v184) == 1)
      {
        sub_233126838(v136);
        v62 = 0x3E656E6F6E3CLL;
        v63 = 0xE600000000000000;
      }

      else
      {
        v137 = swift_task_alloc();
        sub_23328CD5C();
        v138 = swift_task_alloc();
        sub_23328CD1C();
        v62 = sub_23328CDEC();
        v63 = v139;
        v165(v138, v168);
        v164(v137, v113);

        v166(v136, v184);
      }

      v61 = v173 + 1;
      v0 = v176;
      v64 = *(v176 + 41);

      MEMORY[0x23839B7E0](v62, v63);

      MEMORY[0x23839B7E0](0xD000000000000021, 0x80000002332A5240);
      swift_getKeyPath();
      v65 = swift_task_alloc();
      TTSVBInstalledVoiceModel.subscript.getter();

      *(swift_task_alloc() + 16) = v64;
      v6 = 0;
      v66 = sub_233125BDC(sub_2331268A0);
      v68 = v67;

      sub_233126838(v65);

      if (v68)
      {
        v69 = v66;
      }

      else
      {
        v69 = 0x3E656E6F4E3CLL;
      }

      if (v68)
      {
        v70 = v68;
      }

      else
      {
        v70 = 0xE600000000000000;
      }

      MEMORY[0x23839B7E0](v69, v70);

      MEMORY[0x23839B7E0](0xD000000000000021, 0x80000002332A5270);
      swift_getKeyPath();
      TTSVBInstalledVoiceModel.subscript.getter();

      if (*v147)
      {
        v71 = 7562585;
      }

      else
      {
        v71 = 28494;
      }

      if (*v147)
      {
        v72 = 0xE300000000000000;
      }

      else
      {
        v72 = 0xE200000000000000;
      }

      MEMORY[0x23839B7E0](v71, v72);

      MEMORY[0x23839B7E0](0xD000000000000021, 0x80000002332A52A0);
      *(v176 + 38) = v172;
      v73 = swift_task_alloc();
      v74 = swift_task_alloc();
      (v159)(v74, v160, v152);
      v75 = swift_task_alloc();
      sub_23328CA2C();
      sub_23328C82C();
      v157(v75, v158);
      v156(v74, v152);

      sub_23328E0CC();
      v155(v73, v154);

      MEMORY[0x23839B7E0](*(v176 + 6), *(v176 + 7));

      MEMORY[0x23839B7E0](657930, 0xE300000000000000);
      MEMORY[0x23839B7E0](0, 0xE000000000000000);

      result = sub_233126A64(v64, type metadata accessor for TTSVBInstalledVoiceModel);
      v59 = v149;
      if (v61 == v151)
      {

        goto LABEL_6;
      }
    }

    __break(1u);
    goto LABEL_66;
  }

  v2 = *(v0 + 56);
  v1 = *(v0 + 57);
  sub_23328C8BC();
  swift_allocObject();
  sub_23328C8AC();
  sub_23328C87C();
  swift_task_alloc();
  sub_23328C86C();
  sub_23328C88C();

  *(v0 + 28) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1A20, &qword_233290630);
  sub_2331268CC();
  v3 = sub_23328C89C();
  if (!v1)
  {
    v140 = v3;
    v141 = v4;
    sub_23328D30C();
    sub_23328D9DC();
    swift_task_alloc();
    sub_23328D9CC();
    sub_23328D9AC();
    v143 = v142;

    if (v143)
    {

      sub_23328D27C();

      sub_233121870(v140, v141);
LABEL_61:

      v5 = *(v0 + 1);
      goto LABEL_62;
    }

LABEL_66:
    __break(1u);
    return result;
  }

  v5 = *(v0 + 1);
LABEL_62:

  return v5();
}

uint64_t sub_233125654()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_233125748(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19E8, &qword_2332903F0);
  v5.n128_f64[0] = MEMORY[0x28223BE20](v3);
  v7 = (&v16 - v6);
  v9 = *v1;
  v8 = v1[1];
  v10 = *(*v1 + 16);
  if (v8 == v10)
  {
    v11 = *(v4 + 56);

    v11(a1, 1, 1, v3, v5);
  }

  else
  {
    if (v8 >= v10)
    {
      __break(1u);
    }

    else
    {
      v17 = v4;
      v12 = *(type metadata accessor for TTSVBPersonalVoiceSystemRepresentation(0) - 8);
      v13 = v9 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v8;
      v1[1] = v8 + 1;
      v14 = *(v3 + 48);
      v15 = v1[2];
      *v7 = v15;
      sub_23312719C(v13, v7 + v14, type metadata accessor for TTSVBPersonalVoiceSystemRepresentation);
      if (!__OFADD__(v15, 1))
      {
        v1[2] = v15 + 1;
        sub_233121D9C(v7, a1, &qword_27DDE19E8, &qword_2332903F0);
        (*(v17 + 56))(a1, 0, 1, v3);
        return;
      }
    }

    __break(1u);
  }
}

uint64_t sub_233125938(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTSVBPersonalVoiceSystemRepresentation(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_23312599C()
{
  result = qword_27DDE19F0;
  if (!qword_27DDE19F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE19F0);
  }

  return result;
}

unint64_t sub_2331259F0()
{
  result = qword_27DDE1B30;
  if (!qword_27DDE1B30)
  {
    sub_23328CA4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE1B30);
  }

  return result;
}

unint64_t sub_233125A3C()
{
  result = qword_27DDE19F8;
  if (!qword_27DDE19F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE19F8);
  }

  return result;
}

uint64_t sub_233125A90@<X0>(uint64_t *a1@<X8>)
{
  result = TTSVBVoiceModel.primarySpeakingLocales.getter();
  *a1 = result;
  return result;
}

uint64_t sub_233125ABC@<X0>(uint64_t *a1@<X8>)
{
  swift_getKeyPath();
  v2 = sub_23328CE1C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTSVBInstalledVoiceModel.subscript.getter();

  sub_23328CD8C();
  (*(v3 + 8))(v5, v2);
  sub_23328E6BC();
  result = sub_23328E6AC();
  *a1 = result;
  a1[1] = v7;
  return result;
}

uint64_t sub_233125BDC(void (*a1)(uint64_t *__return_ptr, char *))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1A18, &unk_233297730);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  sub_23312712C(v1, &v14 - v5);
  v7 = sub_23328CE1C();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v6, 1, v7);
  if (v9 == 1)
  {
    return 0;
  }

  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v14 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 32))(v13, v6, v7, v11);
  a1(&v14, v13);
  if (v2)
  {
    result = (*(v8 + 8))(v13, v7);
    __break(1u);
  }

  else
  {
    (*(v8 + 8))(v13, v7);
    return v14;
  }

  return result;
}

uint64_t sub_233125DA0()
{
  sub_23328E61C();
  MEMORY[0x23839C380](0);
  return sub_23328E66C();
}

uint64_t sub_233125E0C(uint64_t a1)
{
  sub_23328E61C();
  MEMORY[0x23839C380](0);
  return sub_23328E66C();
}

uint64_t sub_233125E5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1852797802 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_23328E54C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_233125EFC(uint64_t a1)
{
  v2 = sub_233126A10();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_233125F38(uint64_t a1)
{
  v2 = sub_233126A10();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_233125F74@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D8, &qword_23329FAC0);
  v22 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v20 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1A30, qword_233290638);
  v23 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v20 - v7;
  v9 = sub_23328D4DC();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D0, &unk_2332903D0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v20 - v11;
  v13 = _s32ListVoicesForSystemSpeechCommandVMa(0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_23328D3CC();
  (*(*(v16 - 8) + 56))(v12, 1, 1, v16);
  sub_23328D4CC();
  sub_23328D58C();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_233126A10();
  v17 = v24;
  sub_23328E68C();
  if (!v17)
  {
    v18 = v22;
    sub_233126AC4();
    sub_23328E41C();
    (*(v23 + 8))(v8, v6);
    (*(v18 + 40))(v15, v5, v3);
    sub_23312719C(v15, v21, _s32ListVoicesForSystemSpeechCommandVMa);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_233126A64(v15, _s32ListVoicesForSystemSpeechCommandVMa);
}

uint64_t sub_2331262E8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_233126374;

  return sub_233122F2C();
}

uint64_t sub_233126374()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_233126468(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = sub_233126C90(&qword_27DDE1A40, _s32ListVoicesForSystemSpeechCommandVMa, &unk_233290670);
  *v3 = v1;
  v3[1] = sub_233127268;

  return MEMORY[0x2821388D8](a1, v4);
}

uint64_t sub_233126544@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DDE3E70 != -1)
  {
    swift_once();
  }

  v2 = sub_23328D51C();
  v3 = __swift_project_value_buffer(v2, qword_27DE089E0);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_233126620()
{
  v0 = sub_23328D4DC();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D0, &unk_2332903D0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v6 - v2;
  v4 = sub_23328D3CC();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  sub_23328D4CC();
  return sub_23328D58C();
}

char *sub_23312676C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_233127020(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_23312678C()
{
  result = qword_27DDE1A08;
  if (!qword_27DDE1A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE1A08);
  }

  return result;
}

unint64_t sub_2331267E0()
{
  result = qword_27DDE1A10;
  if (!qword_27DDE1A10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DDE1A00, &unk_2332905E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE1A10);
  }

  return result;
}

uint64_t sub_233126838(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1A18, &unk_233297730);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2331268CC()
{
  result = qword_27DDE1A28;
  if (!qword_27DDE1A28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DDE1A20, &qword_233290630);
    sub_233126C90(&qword_280D3A1B8, type metadata accessor for TTSVBPersonalVoiceSystemRepresentation, &protocol conformance descriptor for TTSVBPersonalVoiceSystemRepresentation);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE1A28);
  }

  return result;
}

uint64_t _s32ListVoicesForSystemSpeechCommandVMa(uint64_t a1)
{
  result = qword_27DDE4210;
  if (!qword_27DDE4210)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_233126A10()
{
  result = qword_27DDE3F00[0];
  if (!qword_27DDE3F00[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DDE3F00);
  }

  return result;
}

uint64_t sub_233126A64(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_233126AC4()
{
  result = qword_27DDE1A38;
  if (!qword_27DDE1A38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DDE19D8, &qword_23329FAC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE1A38);
  }

  return result;
}

uint64_t sub_233126C90(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_233126D00(uint64_t a1)
{
  sub_233126EC8(319, &qword_27DDE1A68, MEMORY[0x277D839B0], MEMORY[0x277CEEA50]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t _s32ListVoicesForSystemSpeechCommandV10CodingKeysOwet(unsigned int *a1, int a2)
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

_WORD *_s32ListVoicesForSystemSpeechCommandV10CodingKeysOwst(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

void sub_233126EC8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_233126F1C()
{
  result = qword_27DDE43A0[0];
  if (!qword_27DDE43A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DDE43A0);
  }

  return result;
}

unint64_t sub_233126F74()
{
  result = qword_27DDE44B0;
  if (!qword_27DDE44B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE44B0);
  }

  return result;
}

unint64_t sub_233126FCC()
{
  result = qword_27DDE44B8[0];
  if (!qword_27DDE44B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DDE44B8);
  }

  return result;
}

char *sub_233127020(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE22B0, &qword_233297B80);
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
    v10 = MEMORY[0x277D84F90];
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

uint64_t sub_23312712C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1A18, &unk_233297730);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23312719C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
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

uint64_t static TTSVBBoxedError.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_27DDE1A80 = a1;
  return result;
}

uint64_t sub_2331273E0@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27DDE1A80;
  return result;
}

uint64_t sub_23312742C(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_27DDE1A80 = v1;
  return result;
}

uint64_t sub_233127474(void *a1)
{
  sub_23328C8BC();
  swift_allocObject();
  sub_23328C8AC();
  type metadata accessor for TTSVBError(0);
  sub_23314400C(&qword_27DDE1A88, type metadata accessor for TTSVBError, &protocol conformance descriptor for TTSVBError);
  v2 = sub_23328C89C();
  v4 = v3;

  v5 = sub_23328CCBC();
  v6 = sub_23328D95C();
  [a1 encodeObject:v5 forKey:v6];

  return sub_233121870(v2, v4);
}

uint64_t TTSVBError.description.getter()
{
  v1 = v0;
  v2 = v69;
  v68 = *(v0 + 16);
  v70 = TTSVBError.Problem.description.getter();
  v71 = v3;
  inited = type metadata accessor for TTSVBError(0);
  v5 = v0 + *(inited + 20);
  v72 = TTSVBError.Reason.description.getter();
  v73 = v6;
  v7 = *(v1 + *(inited + 24));
  if (!v7)
  {
    v74 = 0;
    v75 = 0;
    goto LABEL_45;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2298, &qword_233297608);
  inited = swift_initStackObject();
  v67 = xmmword_233290950;
  *(inited + 16) = xmmword_233290950;
  v8 = [v7 localizedDescription];
  v9 = sub_23328D98C();
  v11 = v10;

  *(inited + 32) = v9;
  *(inited + 40) = v11;
  v12 = [v7 localizedFailureReason];
  if (v12)
  {
    v13 = v12;
    v14 = sub_23328D98C();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  *(inited + 48) = v14;
  *(inited + 56) = v16;
  v17 = [v7 userInfo];
  v18 = sub_23328D89C();

  v2 = "modelTargetVersionAlreadyExists";
  if (*(v18 + 16) && (v19 = sub_233144260(0xD000000000000012, 0x80000002332A70D0), (v20 & 1) != 0))
  {
    sub_23311B0C0(*(v18 + 56) + 32 * v19, v77);

    if (swift_dynamicCast())
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  *(inited + 64) = 0;
  *(inited + 72) = 0;
LABEL_12:
  v80 = inited;
  v78 = MEMORY[0x277D84F90];
  v21 = [v7 underlyingErrors];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE1B40, &unk_23329A7A0);
  v22 = sub_23328DBFC();

  v23 = sub_233143BD8(v22);

  sub_233143CEC(v23);
  v5 = v78;
  if (v78 >> 62)
  {
    goto LABEL_62;
  }

  if (*((v78 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    do
    {
      inited = MEMORY[0x277D837D0];
      while (1)
      {
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v5 & 0x8000000000000000) != 0 || (v5 & 0x4000000000000000) != 0)
        {
          v5 = sub_233144378(v5);
        }

        v24 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v24)
        {
          break;
        }

        v25 = v24 - 1;
        v26 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x20);
        memmove(((v5 & 0xFFFFFFFFFFFFFF8) + 32), ((v5 & 0xFFFFFFFFFFFFFF8) + 40), 8 * (v24 - 1));
        *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) = v25;
        v78 = v5;
        v27 = swift_initStackObject();
        *(v27 + 16) = v67;
        v28 = [v26 localizedDescription];
        v29 = sub_23328D98C();
        v31 = v30;

        *(v27 + 32) = v29;
        *(v27 + 40) = v31;
        v32 = [v26 localizedFailureReason];
        if (v32)
        {
          v33 = v32;
          v34 = sub_23328D98C();
          v36 = v35;
        }

        else
        {
          v34 = 0;
          v36 = 0;
        }

        *(v27 + 48) = v34;
        *(v27 + 56) = v36;
        v37 = [v26 userInfo];
        v38 = sub_23328D89C();

        if (*(v38 + 16) && (v39 = sub_233144260(0xD000000000000012, v2 | 0x8000000000000000), (v40 & 1) != 0))
        {
          sub_23311B0C0(*(v38 + 56) + 32 * v39, &v76);

          if (swift_dynamicCast())
          {
            goto LABEL_29;
          }
        }

        else
        {
        }

        *(v27 + 64) = 0;
        *(v27 + 72) = 0;
LABEL_29:
        sub_233143DDC(v27);
        v41 = [v26 underlyingErrors];
        v42 = sub_23328DBFC();

        v43 = sub_233143BD8(v42);

        sub_233143CEC(v43);

        v5 = v78;
        if (v78 >> 62)
        {
          if (!sub_23328E19C())
          {
LABEL_33:
            inited = v80;
            goto LABEL_34;
          }
        }

        else if (!*((v78 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_33;
        }
      }

LABEL_61:
      __break(1u);
LABEL_62:
      ;
    }

    while (sub_23328E19C());
  }

LABEL_34:
  v44 = 0;
  v45 = *(inited + 16);
  v46 = MEMORY[0x277D84F90];
  v2 = v69;
LABEL_35:
  v47 = 16 * v44 + 40;
  while (v45 != v44)
  {
    if (v44 >= *(inited + 16))
    {
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    v48 = v47 + 16;
    ++v44;
    v49 = *(inited + v47);
    v47 += 16;
    if (v49)
    {
      v50 = *(inited + v48 - 24);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v46 = sub_233143EE0(0, *(v46 + 2) + 1, 1, v46);
      }

      v52 = *(v46 + 2);
      v51 = *(v46 + 3);
      if (v52 >= v51 >> 1)
      {
        v46 = sub_233143EE0((v51 > 1), v52 + 1, 1, v46);
      }

      *(v46 + 2) = v52 + 1;
      v53 = &v46[16 * v52];
      *(v53 + 4) = v50;
      *(v53 + 5) = v49;
      goto LABEL_35;
    }
  }

  v76 = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE1A98, &unk_2332985F0);
  sub_23315246C(&qword_280D39BB0, &unk_27DDE1A98, &unk_2332985F0, MEMORY[0x277D83958]);
  v5 = sub_23328D8FC();
  inited = v54;

  v74 = v5;
  v75 = inited;
LABEL_45:
  v55 = 0;
  v56 = MEMORY[0x277D84F90];
LABEL_46:
  if (v55 <= 3)
  {
    v57 = 3;
  }

  else
  {
    v57 = v55;
  }

  v58 = v57 + 1;
  v59 = 16 * v55 + 40;
  while (v55 != 3)
  {
    if (v58 == ++v55)
    {
      __break(1u);
      goto LABEL_60;
    }

    v60 = v59 + 16;
    v5 = *&v69[v59];
    v59 += 16;
    if (v5)
    {
      v61 = *&v69[v60 - 24];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v56 = sub_233143EE0(0, *(v56 + 2) + 1, 1, v56);
      }

      v63 = *(v56 + 2);
      v62 = *(v56 + 3);
      inited = v63 + 1;
      if (v63 >= v62 >> 1)
      {
        v56 = sub_233143EE0((v62 > 1), v63 + 1, 1, v56);
      }

      *(v56 + 2) = inited;
      v64 = &v56[16 * v63];
      *(v64 + 4) = v61;
      *(v64 + 5) = v5;
      goto LABEL_46;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1A90, &unk_233290970);
  swift_arrayDestroy();
  v79[0] = v56;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE1A98, &unk_2332985F0);
  sub_23315246C(&qword_280D39BB0, &unk_27DDE1A98, &unk_2332985F0, MEMORY[0x277D83958]);
  v65 = sub_23328D8FC();

  return v65;
}

id TTSVBBoxedError.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for TTSVBError(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_233144EEC(0, &qword_27DDE1AA8, 0x277CBEA90);
  v7 = sub_23328DFAC();
  if (v7 && (v16 = xmmword_233290960, v8 = v7, sub_23328CCCC(), v8, v9 = *(&v16 + 1), *(&v16 + 1) >> 60 != 15))
  {
    v10 = v16;
    sub_23328C85C();
    swift_allocObject();
    sub_23328C84C();
    sub_23314400C(&qword_27DDE1AB0, type metadata accessor for TTSVBError, &protocol conformance descriptor for TTSVBError);
    sub_23328C83C();
    sub_23312185C(v10, v9);

    sub_233144E3C(v6, v2 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport15TTSVBBoxedError_ttsvbError, type metadata accessor for TTSVBError);
    v12 = type metadata accessor for TTSVBBoxedError(0);
    v15.receiver = v2;
    v15.super_class = v12;
    v13 = objc_msgSendSuper2(&v15, sel_init);

    return v13;
  }

  else
  {

    type metadata accessor for TTSVBBoxedError(0);
    swift_deallocPartialClassInstance();
    return 0;
  }
}

id TTSVBBoxedError.__allocating_init(_:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  sub_23314406C(a1, v3 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport15TTSVBBoxedError_ttsvbError, type metadata accessor for TTSVBError);
  v6.receiver = v3;
  v6.super_class = v1;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  sub_233144DDC(a1, type metadata accessor for TTSVBError);
  return v4;
}

id TTSVBBoxedError.init(_:)(uint64_t a1)
{
  sub_23314406C(a1, v1 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport15TTSVBBoxedError_ttsvbError, type metadata accessor for TTSVBError);
  v5.receiver = v1;
  v5.super_class = type metadata accessor for TTSVBBoxedError(0);
  v3 = objc_msgSendSuper2(&v5, sel_init);
  sub_233144DDC(a1, type metadata accessor for TTSVBError);
  return v3;
}

id TTSVBBoxedError.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TTSVBBoxedError.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTSVBBoxedError(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id TTSVBError.boxed.getter()
{
  v1 = type metadata accessor for TTSVBError(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23314406C(v0, v3, type metadata accessor for TTSVBError);
  v4 = type metadata accessor for TTSVBBoxedError(0);
  v5 = objc_allocWithZone(v4);
  sub_23314406C(v3, v5 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport15TTSVBBoxedError_ttsvbError, type metadata accessor for TTSVBError);
  v8.receiver = v5;
  v8.super_class = v4;
  v6 = objc_msgSendSuper2(&v8, sel_init);
  sub_233144DDC(v3, type metadata accessor for TTSVBError);
  return v6;
}

uint64_t TTSVBError.problem.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + 16);
  *(a1 + 16) = v4;
  return sub_233144054(v2, v3, v4);
}

void *TTSVBError.wrappedError.getter()
{
  v1 = *(v0 + *(type metadata accessor for TTSVBError(0) + 24));
  v2 = v1;
  return v1;
}

uint64_t sub_233128544(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x6E6F73616572;
  if (v2 != 1)
  {
    v4 = 0x4564657070617277;
    v3 = 0xEC000000726F7272;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6D656C626F7270;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x6E6F73616572;
  if (*a2 != 1)
  {
    v8 = 0x4564657070617277;
    v7 = 0xEC000000726F7272;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6D656C626F7270;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_23328E54C();
  }

  return v11 & 1;
}

uint64_t sub_233128650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2331523A8();
  sub_23328DB5C();
  sub_23328DB5C();
  if (v9 == v7 && v10 == v8)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_23328E54C();
  }

  return v5 & 1;
}

uint64_t sub_233128700()
{
  sub_23328E61C();
  sub_23328DA3C();

  return sub_23328E66C();
}

uint64_t sub_2331287A8(uint64_t a1)
{
  sub_23328DA3C();
}

uint64_t sub_23312883C(uint64_t a1)
{
  sub_23328E61C();
  sub_23328DA3C();

  return sub_23328E66C();
}

unint64_t sub_2331288E0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_233144CE8(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_233128910(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x6E6F73616572;
  if (v2 != 1)
  {
    v5 = 0x4564657070617277;
    v4 = 0xEC000000726F7272;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6D656C626F7270;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_233128974()
{
  v1 = 0x6E6F73616572;
  if (*v0 != 1)
  {
    v1 = 0x4564657070617277;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6D656C626F7270;
  }
}

unint64_t sub_2331289D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_233144CE8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_233128A08(uint64_t a1)
{
  v2 = sub_233144D34();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_233128A44(uint64_t a1)
{
  v2 = sub_233144D34();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TTSVBError.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v3 = type metadata accessor for TTSVBError.Reason(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1AB8, &qword_233290980);
  v23 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v22 - v7;
  v9 = type metadata accessor for TTSVBError(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v25 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_233144D34();
  v13 = v24;
  sub_23328E68C();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_0(v25);
  }

  v14 = v11;
  v28 = 0;
  sub_233144D88();
  sub_23328E41C();
  v16 = v27;
  *v11 = v26;
  v11[16] = v16;
  LOBYTE(v26) = 1;
  sub_23314400C(&qword_27DDE1AD0, type metadata accessor for TTSVBError.Reason, &protocol conformance descriptor for TTSVBError.Reason);
  sub_23328E41C();
  sub_233144E3C(v5, &v11[*(v9 + 20)], type metadata accessor for TTSVBError.Reason);
  v28 = 2;
  sub_233144EA4();
  sub_23328E3BC();
  v24 = v6;
  v17 = *(&v26 + 1);
  if (*(&v26 + 1) >> 60 == 15)
  {
    (*(v23 + 8))(v8, v24);
    v18 = 0;
    v19 = v22;
  }

  else
  {
    v20 = v26;
    sub_233144EEC(0, &unk_27DDE1AE0, 0x277CCAAC8);
    sub_233144EEC(0, &qword_280D3A208, 0x277CCA9B8);
    v18 = sub_23328DE6C();
    v21 = v22;
    (*(v23 + 8))(v8, v24);
    sub_23312185C(v20, v17);
    v19 = v21;
  }

  *(v14 + *(v9 + 24)) = v18;
  sub_23314406C(v14, v19, type metadata accessor for TTSVBError);
  __swift_destroy_boxed_opaque_existential_0(v25);
  return sub_233144DDC(v14, type metadata accessor for TTSVBError);
}

uint64_t TTSVBError.encode(to:)(void *a1)
{
  v3 = v1;
  v27 = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1AF0, &qword_233290988);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_233144D34();
  sub_23328E69C();
  v9 = *(v3 + 8);
  v10 = *(v3 + 16);
  v24 = *v3;
  v25 = v9;
  v26 = v10;
  v23 = 0;
  sub_233144054(v24, v9, v10);
  sub_233144F34();
  sub_23328E4DC();
  sub_2331220AC(v24, v25, v26);
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v11 = type metadata accessor for TTSVBError(0);
  LOBYTE(v24) = 1;
  type metadata accessor for TTSVBError.Reason(0);
  sub_23314400C(&qword_27DDE1B00, type metadata accessor for TTSVBError.Reason, &protocol conformance descriptor for TTSVBError.Reason);
  sub_23328E4DC();
  v13 = *(v3 + *(v11 + 24));
  if (!v13)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v14 = objc_opt_self();
  v24 = 0;
  v15 = v13;
  v16 = [v14 archivedDataWithRootObject:v15 requiringSecureCoding:1 error:&v24];
  v17 = v24;
  if (!v16)
  {
    v21 = v17;
    sub_23328CA7C();

    swift_willThrow();
    return (*(v6 + 8))(v8, v5);
  }

  v18 = sub_23328CCDC();
  v20 = v19;

  v24 = v18;
  v25 = v20;
  v23 = 2;
  sub_233144F88();
  sub_23328E4DC();
  (*(v6 + 8))(v8, v5);

  return sub_233121870(v18, v20);
}

uint64_t TTSVBError.failureReason.getter()
{
  strcpy(v2, "Error Code: ");
  type metadata accessor for TTSVBError(0);
  TTSVBError.Reason.errorCode.getter();
  v0 = sub_23328E51C();
  MEMORY[0x23839B7E0](v0);

  return v2[0];
}

uint64_t TTSVBError.Reason.errorCode.getter()
{
  v1 = type metadata accessor for TTSVBError.Reason(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23314406C(v0, v3, type metadata accessor for TTSVBError.Reason);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = -1;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      sub_233144DDC(v3, type metadata accessor for TTSVBError.Reason);
      result = 9;
      break;
    case 2:
      sub_233144DDC(v3, type metadata accessor for TTSVBError.Reason);
      result = 10;
      break;
    case 3:
      sub_233144DDC(v3, type metadata accessor for TTSVBError.Reason);
      result = 14;
      break;
    case 4:
      sub_233144DDC(v3, type metadata accessor for TTSVBError.Reason);
      result = 33;
      break;
    case 5:
      sub_233144DDC(v3, type metadata accessor for TTSVBError.Reason);
      result = 16;
      break;
    case 6:
      sub_233144DDC(v3, type metadata accessor for TTSVBError.Reason);
      result = 17;
      break;
    case 7:
      sub_233144DDC(v3, type metadata accessor for TTSVBError.Reason);
      result = 23;
      break;
    case 8:
      sub_233144DDC(v3, type metadata accessor for TTSVBError.Reason);
      result = 24;
      break;
    case 9:
      sub_233144DDC(v3, type metadata accessor for TTSVBError.Reason);
      result = 25;
      break;
    case 10:
      sub_233144DDC(v3, type metadata accessor for TTSVBError.Reason);
      result = 26;
      break;
    case 11:
      sub_233144DDC(v3, type metadata accessor for TTSVBError.Reason);
      result = 60;
      break;
    case 12:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1B10, &unk_233290990);

      v12 = sub_23328CC9C();
      (*(*(v12 - 8) + 8))(v3, v12);
      result = 61;
      break;
    case 13:
      sub_233144DDC(v3, type metadata accessor for TTSVBError.Reason);
      result = 27;
      break;
    case 14:
      v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1B18, &qword_23329B0D0) + 48);
      v10 = sub_23328CC9C();
      v11 = *(*(v10 - 8) + 8);
      v11(&v3[v9], v10);
      v11(v3, v10);
      result = 28;
      break;
    case 15:
      v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1B18, &qword_23329B0D0) + 48);
      v7 = sub_23328CC9C();
      v8 = *(*(v7 - 8) + 8);
      v8(&v3[v6], v7);
      v8(v3, v7);
      result = 47;
      break;
    case 16:
      sub_233144DDC(v3, type metadata accessor for TTSVBError.Reason);
      result = 29;
      break;
    case 17:
      sub_233144DDC(v3, type metadata accessor for TTSVBError.Reason);
      result = 31;
      break;
    case 18:
      sub_233144DDC(v3, type metadata accessor for TTSVBError.Reason);
      result = 32;
      break;
    case 19:
      sub_233144DDC(v3, type metadata accessor for TTSVBError.Reason);
      result = 35;
      break;
    case 20:
      sub_233144DDC(v3, type metadata accessor for TTSVBError.Reason);
      result = 36;
      break;
    case 21:
      sub_233144DDC(v3, type metadata accessor for TTSVBError.Reason);
      result = 40;
      break;
    case 22:
      sub_233144DDC(v3, type metadata accessor for TTSVBError.Reason);
      result = 42;
      break;
    case 23:
      sub_233144DDC(v3, type metadata accessor for TTSVBError.Reason);
      result = 43;
      break;
    case 24:
      sub_233144DDC(v3, type metadata accessor for TTSVBError.Reason);
      result = 44;
      break;
    case 25:
      sub_233144DDC(v3, type metadata accessor for TTSVBError.Reason);
      result = 45;
      break;
    case 26:
      sub_233144DDC(v3, type metadata accessor for TTSVBError.Reason);
      result = 46;
      break;
    case 27:
      result = 54;
      break;
    case 28:
      sub_233144DDC(v3, type metadata accessor for TTSVBError.Reason);
      result = 56;
      break;
    case 29:
      v13 = sub_23328CE8C();
      (*(*(v13 - 8) + 8))(v3, v13);
      result = 57;
      break;
    case 30:
      sub_233144DDC(v3, type metadata accessor for TTSVBError.Reason);
      result = 58;
      break;
    case 31:
      sub_233144DDC(v3, type metadata accessor for TTSVBError.Reason);
      result = 59;
      break;
    case 32:
      result = 62;
      break;
    case 33:
      sub_233144DDC(v3, type metadata accessor for TTSVBError.Reason);
      result = 63;
      break;
    case 34:
      sub_233144DDC(v3, type metadata accessor for TTSVBError.Reason);
      result = 64;
      break;
    case 35:
      sub_233144DDC(v3, type metadata accessor for TTSVBError.Reason);
      result = 65;
      break;
    case 36:
      return result;
    case 37:
      result = 1;
      break;
    case 38:
      result = 2;
      break;
    case 39:
      result = 3;
      break;
    case 40:
      result = 4;
      break;
    case 41:
      result = 5;
      break;
    case 42:
      result = 6;
      break;
    case 43:
      result = 7;
      break;
    case 44:
      result = 8;
      break;
    case 45:
      result = 11;
      break;
    case 46:
      result = 12;
      break;
    case 47:
      result = 13;
      break;
    case 48:
      result = 15;
      break;
    case 49:
      result = 18;
      break;
    case 50:
      result = 19;
      break;
    case 51:
      result = 22;
      break;
    case 52:
      result = 21;
      break;
    case 53:
      result = 53;
      break;
    case 54:
      result = 30;
      break;
    case 55:
      result = 34;
      break;
    case 56:
      result = 37;
      break;
    case 57:
      result = 38;
      break;
    case 58:
      result = 39;
      break;
    case 59:
      result = 41;
      break;
    case 60:
      result = 43;
      break;
    case 61:
      result = 48;
      break;
    case 62:
      result = 49;
      break;
    case 63:
      result = 50;
      break;
    case 64:
      result = 51;
      break;
    case 65:
      result = 52;
      break;
    case 66:
      result = 55;
      break;
    default:
      sub_233144DDC(v3, type metadata accessor for TTSVBError.Reason);
      result = 0;
      break;
  }

  return result;
}

unint64_t TTSVBError.Problem.description.getter()
{
  v1 = *v0;
  if (*(v0 + 16) <= 1u)
  {
    v2 = *(v0 + 8);
    if (!*(v0 + 16))
    {

      return v1;
    }

    sub_23328E24C();

    v8 = 0xD000000000000026;
    MEMORY[0x23839B7E0](v1, v2);
    v5 = 39;
    v6 = 0xE100000000000000;
LABEL_13:
    MEMORY[0x23839B7E0](v5, v6);
    return v8;
  }

  if (*(v0 + 16) == 2)
  {
    sub_23328E24C();

    v8 = 0x6F4E20646C756F43;
    if (v1)
    {
      v3 = 0x6574617669746341;
    }

    else
    {
      v3 = 0x6176697463616544;
    }

    if (v1)
    {
      v4 = 0xE800000000000000;
    }

    else
    {
      v4 = 0xEA00000000006574;
    }

    MEMORY[0x23839B7E0](v3, v4);

    v5 = 0x53206F6964754120;
    v6 = 0xEE006E6F69737365;
    goto LABEL_13;
  }

  switch(v1)
  {
    case 1uLL:
    case 0x13uLL:
      v1 = 0xD00000000000001CLL;
      break;
    case 2uLL:
    case 0x16uLL:
    case 0x18uLL:
      v1 = 0xD000000000000019;
      break;
    case 3uLL:
      v1 = 0xD000000000000017;
      break;
    case 4uLL:
    case 0x12uLL:
    case 0x15uLL:
      v1 = 0xD00000000000001BLL;
      break;
    case 5uLL:
    case 0xDuLL:
      v1 = 0xD000000000000021;
      break;
    case 6uLL:
    case 7uLL:
    case 0x14uLL:
      v1 = 0xD00000000000001ALL;
      break;
    case 8uLL:
    case 0xCuLL:
      v1 = 0xD000000000000022;
      break;
    case 9uLL:
    case 0x10uLL:
      v1 = 0xD000000000000016;
      break;
    case 0xAuLL:
    case 0xEuLL:
    case 0xFuLL:
      v1 = 0xD00000000000001ELL;
      break;
    case 0xBuLL:
      v1 = 0xD000000000000020;
      break;
    case 0x11uLL:
      v1 = 0xD00000000000001DLL;
      break;
    case 0x17uLL:
      v1 = 0xD000000000000017;
      break;
    case 0x19uLL:
      v1 = 0xD000000000000017;
      break;
    case 0x1AuLL:
      v1 = 0xD00000000000002DLL;
      break;
    case 0x1BuLL:
      v1 = 0xD00000000000002BLL;
      break;
    default:
      v1 = 0xD000000000000015;
      break;
  }

  return v1;
}

unint64_t TTSVBError.Reason.description.getter()
{
  v1 = type metadata accessor for TTSVBError.Reason(0);
  MEMORY[0x28223BE20](v1);
  v3 = (&v142 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_23314406C(v0, v3, type metadata accessor for TTSVBError.Reason);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v10 = sub_23328CC9C();
      v11 = *(v10 - 8);
      v78 = MEMORY[0x28223BE20](v10);
      v14 = &v142 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v11 + 32))(v14, v3, v10, v78);
      v163[0] = 0;
      v163[1] = 0xE000000000000000;
      sub_23328E24C();

      v39 = "Could not create directory: ";
      goto LABEL_30;
    case 2u:
      v10 = sub_23328CC9C();
      v11 = *(v10 - 8);
      v61 = MEMORY[0x28223BE20](v10);
      v14 = &v142 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v11 + 32))(v14, v3, v10, v61);
      v163[0] = 0;
      v163[1] = 0xE000000000000000;
      sub_23328E24C();

      v42 = 0x80000002332A6110;
      v63 = 13;
      goto LABEL_53;
    case 3u:
      v10 = sub_23328CC9C();
      v11 = *(v10 - 8);
      v73 = MEMORY[0x28223BE20](v10);
      v14 = &v142 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v11 + 32))(v14, v3, v10, v73);
      v163[0] = 0;
      v163[1] = 0xE000000000000000;
      sub_23328E24C();

      v75 = "Could not write to audio file: ";
      goto LABEL_40;
    case 4u:
      v10 = sub_23328CC9C();
      v11 = *(v10 - 8);
      v40 = MEMORY[0x28223BE20](v10);
      v14 = &v142 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v11 + 32))(v14, v3, v10, v40);
      v163[0] = 0;
      v163[1] = 0xE000000000000000;
      sub_23328E24C();

      v42 = 0x80000002332A6050;
      v43 = 0xD000000000000020;
      goto LABEL_67;
    case 5u:
      v10 = sub_23328CC9C();
      v11 = *(v10 - 8);
      v86 = MEMORY[0x28223BE20](v10);
      v14 = &v142 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v11 + 32))(v14, v3, v10, v86);
      v163[0] = 0;
      v163[1] = 0xE000000000000000;
      sub_23328E24C();

      v42 = 0x80000002332A6000;
      v43 = 0xD000000000000025;
      goto LABEL_67;
    case 6u:
      v10 = sub_23328CC9C();
      v11 = *(v10 - 8);
      v92 = MEMORY[0x28223BE20](v10);
      v14 = &v142 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v11 + 32))(v14, v3, v10, v92);
      v163[0] = 0;
      v163[1] = 0xE000000000000000;
      sub_23328E24C();

      v42 = 0x80000002332A5FD0;
      v43 = 0xD000000000000022;
      goto LABEL_67;
    case 7u:
      v77 = *v3;
      v76 = v3[1];
      v163[0] = 0;
      v163[1] = 0xE000000000000000;
      sub_23328E24C();

      strcpy(v163, "Voice named '");
      HIWORD(v163[1]) = -4864;
      goto LABEL_61;
    case 8u:
      v10 = sub_23328CC9C();
      v11 = *(v10 - 8);
      v99 = MEMORY[0x28223BE20](v10);
      v14 = &v142 - ((v100 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v11 + 32))(v14, v3, v10, v99);
      v163[0] = 0;
      v163[1] = 0xE000000000000000;
      sub_23328E24C();

      v42 = 0x80000002332A5E60;
      v43 = 0xD00000000000002ALL;
      goto LABEL_67;
    case 9u:
      v10 = sub_23328CC9C();
      v11 = *(v10 - 8);
      v53 = MEMORY[0x28223BE20](v10);
      v14 = &v142 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v11 + 32))(v14, v3, v10, v53);
      v163[0] = 0;
      v163[1] = 0xE000000000000000;
      sub_23328E24C();

      v55 = "Directory does not exist: ";
      goto LABEL_52;
    case 0xAu:
      v10 = sub_23328CC9C();
      v11 = *(v10 - 8);
      v97 = MEMORY[0x28223BE20](v10);
      v14 = &v142 - ((v98 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v11 + 32))(v14, v3, v10, v97);
      v163[0] = 0;
      v163[1] = 0xE000000000000000;
      sub_23328E24C();

      v42 = 0x80000002332A5E20;
      v63 = 5;
      goto LABEL_53;
    case 0xBu:
      v10 = sub_23328CC9C();
      v11 = *(v10 - 8);
      v37 = MEMORY[0x28223BE20](v10);
      v14 = &v142 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v11 + 32))(v14, v3, v10, v37);
      v163[0] = 0;
      v163[1] = 0xE000000000000000;
      sub_23328E24C();

      v39 = "Could not fetch attributes: ";
LABEL_30:
      v42 = (v39 - 32) | 0x8000000000000000;
      v43 = 0xD00000000000001CLL;
      goto LABEL_67;
    case 0xCu:
      v44 = (v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1B10, &unk_233290990) + 48));
      v46 = *v44;
      v45 = v44[1];
      v47 = sub_23328CC9C();
      v48 = *(v47 - 8);
      v49 = MEMORY[0x28223BE20](v47);
      v51 = &v142 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v48 + 32))(v51, v3, v47, v49);
      v163[0] = 0;
      v163[1] = 0xE000000000000000;
      sub_23328E24C();

      v163[0] = 0xD000000000000018;
      v163[1] = 0x80000002332A5E90;
      MEMORY[0x23839B7E0](v46, v45);

      MEMORY[0x23839B7E0](540680231, 0xE400000000000000);
      v52 = sub_23328CC6C();
      MEMORY[0x23839B7E0](v52);

      v4 = v163[0];
      (*(v48 + 8))(v51, v47);
      return v4;
    case 0xDu:
      v10 = sub_23328CC9C();
      v11 = *(v10 - 8);
      v90 = MEMORY[0x28223BE20](v10);
      v14 = &v142 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v11 + 32))(v14, v3, v10, v90);
      v163[0] = 0;
      v163[1] = 0xE000000000000000;
      sub_23328E24C();

      v15 = "Could not delete item: ";
      goto LABEL_42;
    case 0xEu:
      v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1B18, &qword_23329B0D0) + 48);
      v17 = sub_23328CC9C();
      v159 = &v142;
      v18 = *(v17 - 8);
      v19 = v18[8];
      v20 = MEMORY[0x28223BE20](v17);
      v21 = &v142 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
      v22 = v18[4];
      v23 = v22(v21, v3, v17, v20);
      v24 = MEMORY[0x28223BE20](v23);
      v25 = v21;
      v22(v21, (v3 + v16), v17, v24);
      v163[0] = 0;
      v163[1] = 0xE000000000000000;
      sub_23328E24C();

      v26 = "Could not copy item: ";
      goto LABEL_26;
    case 0xFu:
      v64 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1B18, &qword_23329B0D0) + 48);
      v17 = sub_23328CC9C();
      v159 = &v142;
      v18 = *(v17 - 8);
      v65 = v18[8];
      v66 = MEMORY[0x28223BE20](v17);
      v21 = &v142 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
      v67 = v18[4];
      v68 = v67(v21, v3, v17, v66);
      v69 = MEMORY[0x28223BE20](v68);
      v25 = v21;
      v67(v21, (v3 + v64), v17, v69);
      v163[0] = 0;
      v163[1] = 0xE000000000000000;
      sub_23328E24C();

      v26 = "Could not move item: ";
LABEL_26:
      v163[0] = 0xD000000000000015;
      v163[1] = (v26 - 32) | 0x8000000000000000;
      v70 = sub_23328CC6C();
      MEMORY[0x23839B7E0](v70);

      MEMORY[0x23839B7E0](544175136, 0xE400000000000000);
      v71 = sub_23328CC6C();
      MEMORY[0x23839B7E0](v71);

      v4 = v163[0];
      v72 = v18[1];
      v72(v25, v17);
      v72(v21, v17);
      return v4;
    case 0x10u:
      v10 = sub_23328CC9C();
      v11 = *(v10 - 8);
      v12 = MEMORY[0x28223BE20](v10);
      v14 = &v142 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v11 + 32))(v14, v3, v10, v12);
      v163[0] = 0;
      v163[1] = 0xE000000000000000;
      sub_23328E24C();

      v15 = "Could not create file: ";
LABEL_42:
      v42 = (v15 - 32) | 0x8000000000000000;
      v43 = 0xD000000000000017;
      goto LABEL_67;
    case 0x11u:
      v10 = sub_23328CC9C();
      v11 = *(v10 - 8);
      v82 = MEMORY[0x28223BE20](v10);
      v14 = &v142 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v11 + 32))(v14, v3, v10, v82);
      v163[0] = 0;
      v163[1] = 0xE000000000000000;
      sub_23328E24C();

      v42 = 0x80000002332A5D60;
      v63 = 9;
      goto LABEL_53;
    case 0x12u:
      v10 = sub_23328CC9C();
      v11 = *(v10 - 8);
      v94 = MEMORY[0x28223BE20](v10);
      v14 = &v142 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v11 + 32))(v14, v3, v10, v94);
      v163[0] = 0;
      v163[1] = 0xE000000000000000;
      sub_23328E24C();

      v96 = "Could not open audio file for reading: ";
      goto LABEL_66;
    case 0x13u:
      v10 = sub_23328CC9C();
      v11 = *(v10 - 8);
      v130 = MEMORY[0x28223BE20](v10);
      v14 = &v142 - ((v131 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v11 + 32))(v14, v3, v10, v130);
      v163[0] = 0;
      v163[1] = 0xE000000000000000;
      sub_23328E24C();

      v42 = 0x80000002332A5CE0;
      v43 = 0xD000000000000026;
      goto LABEL_67;
    case 0x14u:
      v10 = sub_23328CC9C();
      v11 = *(v10 - 8);
      v84 = MEMORY[0x28223BE20](v10);
      v14 = &v142 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v11 + 32))(v14, v3, v10, v84);
      v163[0] = 0;
      v163[1] = 0xE000000000000000;
      sub_23328E24C();

      v42 = 0x80000002332A5CB0;
      v43 = 0xD000000000000021;
      goto LABEL_67;
    case 0x15u:
      v10 = sub_23328CC9C();
      v11 = *(v10 - 8);
      v88 = MEMORY[0x28223BE20](v10);
      v14 = &v142 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v11 + 32))(v14, v3, v10, v88);
      v163[0] = 0;
      v163[1] = 0xE000000000000000;
      sub_23328E24C();

      v75 = "Could not set file attributes: ";
LABEL_40:
      v42 = (v75 - 32) | 0x8000000000000000;
      v43 = 0xD00000000000001FLL;
      goto LABEL_67;
    case 0x16u:
      v10 = sub_23328CC9C();
      v11 = *(v10 - 8);
      v128 = MEMORY[0x28223BE20](v10);
      v14 = &v142 - ((v129 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v11 + 32))(v14, v3, v10, v128);
      v163[0] = 0;
      v163[1] = 0xE000000000000000;
      sub_23328E24C();

      v55 = "Could not create archive: ";
LABEL_52:
      v42 = (v55 - 32) | 0x8000000000000000;
      v63 = 10;
LABEL_53:
      v43 = v63 | 0xD000000000000010;
      goto LABEL_67;
    case 0x17u:
      v10 = sub_23328CE8C();
      v11 = *(v10 - 8);
      v132 = MEMORY[0x28223BE20](v10);
      v14 = &v142 - ((v133 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v11 + 32))(v14, v3, v10, v132);
      v163[0] = 0;
      v163[1] = 0xE000000000000000;
      sub_23328E24C();

      v58 = 0x80000002332A5B50;
      v59 = 0xD00000000000001ELL;
      goto LABEL_59;
    case 0x18u:
      v60 = *v3;
      v163[0] = 0;
      v163[1] = 0xE000000000000000;
      sub_23328E24C();

      v163[0] = 0xD00000000000001FLL;
      v163[1] = 0x80000002332A5B30;
      v9 = v60;
      goto LABEL_49;
    case 0x19u:
      v10 = sub_23328CE8C();
      v11 = *(v10 - 8);
      v56 = MEMORY[0x28223BE20](v10);
      v14 = &v142 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v11 + 32))(v14, v3, v10, v56);
      v163[0] = 0;
      v163[1] = 0xE000000000000000;
      sub_23328E24C();

      v58 = 0x80000002332A5B00;
      v59 = 0xD000000000000024;
      goto LABEL_59;
    case 0x1Au:
      v10 = sub_23328CC9C();
      v11 = *(v10 - 8);
      v138 = MEMORY[0x28223BE20](v10);
      v14 = &v142 - ((v139 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v11 + 32))(v14, v3, v10, v138);
      v163[0] = 0;
      v163[1] = 0xE000000000000000;
      sub_23328E24C();

      v96 = "Could not read or parse file contents: ";
LABEL_66:
      v42 = (v96 - 32) | 0x8000000000000000;
      v43 = 0xD000000000000027;
LABEL_67:
      v163[0] = v43;
      v163[1] = v42;
      v134 = sub_23328CC6C();
      goto LABEL_68;
    case 0x1Bu:
      v8 = *(v3 + 2);
      v163[0] = 0;
      v163[1] = 0xE000000000000000;
      sub_23328E24C();
      MEMORY[0x23839B7E0](0xD00000000000002CLL, 0x80000002332A59D0);
      sub_23328DCDC();
      MEMORY[0x23839B7E0](0xD000000000000010, 0x80000002332A5A00);
      LODWORD(v161) = v8;
      v9 = sub_23328E51C();
      goto LABEL_49;
    case 0x1Cu:
      v77 = *v3;
      v76 = v3[1];
      v163[0] = 0;
      v163[1] = 0xE000000000000000;
      sub_23328E24C();

      v163[0] = 0xD000000000000010;
      v163[1] = 0x80000002332A5960;
LABEL_61:
      MEMORY[0x23839B7E0](v77, v76);

      v104 = 0x80000002332A5980;
      v103 = 0xD000000000000010;
      goto LABEL_62;
    case 0x1Du:
      v10 = sub_23328CE8C();
      v11 = *(v10 - 8);
      v135 = MEMORY[0x28223BE20](v10);
      v14 = &v142 - ((v136 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v11 + 32))(v14, v3, v10, v135);
      v163[0] = 0;
      v163[1] = 0xE000000000000000;
      sub_23328E24C();

      strcpy(v163, "Category id '");
      HIWORD(v163[1]) = -4864;
      v137 = sub_23328CE3C();
      MEMORY[0x23839B7E0](v137);

      MEMORY[0x23839B7E0](0xD000000000000010, 0x80000002332A5940);
      goto LABEL_69;
    case 0x1Eu:
      v102 = *v3;
      v101 = v3[1];
      v163[0] = 0;
      v163[1] = 0xE000000000000000;
      sub_23328E24C();

      strcpy(v163, "Phrase named '");
      HIBYTE(v163[1]) = -18;
      MEMORY[0x23839B7E0](v102, v101);

      v103 = 0x652073656F642027;
      v104 = 0xEC00000074736978;
LABEL_62:
      MEMORY[0x23839B7E0](v103, v104);
      return v163[0];
    case 0x1Fu:
      v10 = sub_23328CE8C();
      v11 = *(v10 - 8);
      v80 = MEMORY[0x28223BE20](v10);
      v14 = &v142 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v11 + 32))(v14, v3, v10, v80);
      v163[0] = 0;
      v163[1] = 0xE000000000000000;
      sub_23328E24C();

      v58 = 0x80000002332A5920;
      v59 = 0xD00000000000001FLL;
LABEL_59:
      v163[0] = v59;
      v163[1] = v58;
      v134 = sub_23328CE3C();
LABEL_68:
      MEMORY[0x23839B7E0](v134);

LABEL_69:
      v4 = v163[0];
      (*(v11 + 8))(v14, v10);
      return v4;
    case 0x20u:
      v105 = *v3;
      v106 = v3[1];
      v158 = v105;
      v163[0] = 0;
      v163[1] = 0xE000000000000000;
      sub_23328E24C();

      v163[0] = 0xD000000000000022;
      v163[1] = 0x80000002332A58F0;
      v160 = v106;
      v150 = sub_23328CA4C();
      v155 = &v142;
      v159 = *(v150 - 8);
      v156 = v159[8];
      MEMORY[0x28223BE20](v150);
      v157 = (v107 + 15) & 0xFFFFFFFFFFFFFFF0;
      v108 = &v142 - v157;
      v109 = sub_23328CA1C();
      v145 = &v142;
      v110 = *(v109 - 8);
      v153 = v110[8];
      v111 = MEMORY[0x28223BE20](v109);
      v154 = (v112 + 15) & 0xFFFFFFFFFFFFFFF0;
      v113 = &v142 - v154;
      v152 = *MEMORY[0x277CC8DE0];
      v151 = v110[13];
      v151(&v142 - v154, v111);
      v114 = sub_23328CA3C();
      v147 = v114;
      v115 = *(v114 - 8);
      v148 = *(v115 + 64);
      MEMORY[0x28223BE20](v114);
      v149 = (v116 + 15) & 0xFFFFFFFFFFFFFFF0;
      v117 = &v142 - v149;
      sub_23328CA2C();
      sub_23328C82C();
      v146 = *(v115 + 8);
      v146(v117, v114);
      v118 = v110[1];
      v118(v113, v109);
      v145 = sub_233125A3C();
      v144 = sub_233149EA8(&qword_27DDE1B30, MEMORY[0x28220BA58], MEMORY[0x28220BA48]);
      v119 = v150;
      sub_23328E0BC();
      v120 = v159[1];
      ++v159;
      v143 = v120;
      v120(v108, v119);
      MEMORY[0x23839B7E0](v161, v162);

      v121 = MEMORY[0x23839B7E0](0x62616C6961764120, 0xEB000000003D656CLL);
      v155 = &v142;
      v160 = v158;
      MEMORY[0x28223BE20](v121);
      v122 = &v142 - v157;
      v124 = MEMORY[0x28223BE20](v123);
      v125 = &v142 - v154;
      v126 = (v151)(&v142 - v154, v152, v109, v124);
      MEMORY[0x28223BE20](v126);
      v127 = &v142 - v149;
      sub_23328CA2C();
      sub_23328C82C();
      v146(v127, v147);
      v118(v125, v109);
      sub_23328E0BC();
      v143(v122, v119);
      v9 = v161;
LABEL_49:
      MEMORY[0x23839B7E0](v9);
      goto LABEL_50;
    case 0x21u:
      v28 = *v3;
      v27 = v3[1];
      v30 = v3[2];
      v29 = v3[3];
      v163[0] = 0;
      v163[1] = 0xE000000000000000;
      sub_23328E24C();
      MEMORY[0x23839B7E0](0xD00000000000002CLL, 0x80000002332A58C0);
      v161 = v28;
      v162 = v27;
      sub_233144FD0();
      v31 = sub_23328E51C();
      v33 = v32;

      MEMORY[0x23839B7E0](v31, v33);

      MEMORY[0x23839B7E0](0x3D74656772615420, 0xE800000000000000);
      v161 = v30;
      v162 = v29;
      goto LABEL_13;
    case 0x22u:
      v6 = *v3;
      v5 = v3[1];
      v163[0] = 0;
      v163[1] = 0xE000000000000000;
      sub_23328E24C();

      v7 = "Model source version does not exist: ";
      goto LABEL_9;
    case 0x23u:
      v6 = *v3;
      v5 = v3[1];
      v163[0] = 0;
      v163[1] = 0xE000000000000000;
      sub_23328E24C();

      v7 = "Model target version already exists: ";
LABEL_9:
      v163[0] = 0xD000000000000025;
      v163[1] = (v7 - 32) | 0x8000000000000000;
      v161 = v6;
      v162 = v5;
      sub_233144FD0();
LABEL_13:
      v34 = sub_23328E51C();
      v36 = v35;

      MEMORY[0x23839B7E0](v34, v36);
LABEL_50:

      return v163[0];
    case 0x24u:
      return 0xD000000000000011;
    case 0x25u:
    case 0x30u:
      return 0xD000000000000017;
    case 0x26u:
    case 0x28u:
    case 0x2Du:
    case 0x37u:
      v140 = 13;
      goto LABEL_74;
    case 0x27u:
    case 0x40u:
      return 0xD000000000000018;
    case 0x29u:
      return 0xD000000000000012;
    case 0x2Au:
      return 0xD000000000000013;
    case 0x2Bu:
    case 0x3Eu:
      return 0xD000000000000026;
    case 0x2Cu:
    case 0x39u:
    case 0x3Bu:
      return 0xD000000000000020;
    case 0x2Eu:
    case 0x36u:
    case 0x38u:
      return 0xD000000000000016;
    case 0x2Fu:
    case 0x42u:
      return 0xD000000000000021;
    case 0x31u:
      return 0xD000000000000010;
    case 0x32u:
    case 0x3Cu:
      return 0xD000000000000027;
    case 0x33u:
      v140 = 35;
      goto LABEL_74;
    case 0x34u:
    case 0x3Fu:
      v140 = 36;
LABEL_74:
      v4 = v140 | 0xD000000000000010;
      break;
    case 0x35u:
      v4 = 0xD000000000000024;
      break;
    case 0x3Au:
      v4 = 0xD00000000000001ELL;
      break;
    case 0x3Du:
      v4 = 0xD00000000000002CLL;
      break;
    case 0x41u:
      v4 = 0xD00000000000001CLL;
      break;
    default:
      v4 = *v3;
      break;
  }

  return v4;
}

uint64_t TTSVBError.init(_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = v7;
  v8 = type metadata accessor for TTSVBError(0);
  result = sub_233144E3C(a2, a4 + *(v8 + 20), type metadata accessor for TTSVBError.Reason);
  *(a4 + *(v8 + 24)) = a3;
  return result;
}

uint64_t TTSVBError.init(_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for TTSVBError.Reason(0);
  MEMORY[0x28223BE20](v12);
  v14 = (&v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15);
  v17 = &v20 - v16;
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = 0;
  if (a4)
  {
    *v14 = a3;
    v14[1] = a4;
    swift_storeEnumTagMultiPayload();
    sub_233144E3C(v14, v17, type metadata accessor for TTSVBError.Reason);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
  }

  v18 = type metadata accessor for TTSVBError(0);
  result = sub_233144E3C(v17, a6 + *(v18 + 20), type metadata accessor for TTSVBError.Reason);
  *(a6 + *(v18 + 24)) = a5;
  return result;
}

uint64_t static TTSVBError.map(_:_:)@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1B38, &unk_2332909A0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v17 - v7;
  v9 = *a2;
  v10 = a2[1];
  v11 = *(a2 + 16);
  v17[1] = a1;
  v12 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE1B40, &unk_23329A7A0);
  v13 = type metadata accessor for TTSVBError(0);
  v14 = swift_dynamicCast();
  v15 = *(*(v13 - 8) + 56);
  if (v14)
  {
    v15(v8, 0, 1, v13);
    return sub_233144E3C(v8, a3, type metadata accessor for TTSVBError);
  }

  else
  {
    v15(v8, 1, 1, v13);
    sub_233121E04(v8, &qword_27DDE1B38, &unk_2332909A0);
    type metadata accessor for TTSVBError.Reason(0);
    swift_storeEnumTagMultiPayload();
    sub_233144054(v9, v10, v11);
    result = sub_23328CA6C();
    *a3 = v9;
    *(a3 + 8) = v10;
    *(a3 + 16) = v11;
    *(a3 + *(v13 + 24)) = result;
  }

  return result;
}

void static TTSVBError.perform<A>(_:orThrow:)(void (*a1)(void), uint64_t a2, uint64_t (*a3)(void))
{
  a1();
  if (v3)
  {
    type metadata accessor for TTSVBError(0);
    sub_23314400C(&qword_280D3A0B0, type metadata accessor for TTSVBError, &protocol conformance descriptor for TTSVBError);
    swift_allocError();
    a3();
    swift_willThrow();
  }
}

void static TTSVBError.perform<A>(_:errorTransform:)(void (*a1)(void), uint64_t a2, uint64_t (*a3)(void *))
{
  a1();
  if (v3)
  {
    type metadata accessor for TTSVBError(0);
    sub_23314400C(&qword_280D3A0B0, type metadata accessor for TTSVBError, &protocol conformance descriptor for TTSVBError);
    swift_allocError();
    a3(v3);
    swift_willThrow();
  }
}

void static TTSVBError.perform<A>(_:problem:reason:)(void (*a1)(double), uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v18 = a4;
  v7 = type metadata accessor for TTSVBError.Reason(0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a3;
  v12 = a3[1];
  v13 = *(a3 + 16);
  a1(v8);
  if (v4)
  {
    sub_23314406C(v18, v10, type metadata accessor for TTSVBError.Reason);
    sub_233144054(v11, v12, v13);
    v18 = sub_23328CA6C();
    v14 = type metadata accessor for TTSVBError(0);
    sub_23314400C(&qword_280D3A0B0, type metadata accessor for TTSVBError, &protocol conformance descriptor for TTSVBError);
    swift_allocError();
    v16 = v15;
    *v15 = v11;
    *(v15 + 8) = v12;
    *(v15 + 16) = v13;
    sub_233144E3C(v10, v15 + *(v14 + 20), type metadata accessor for TTSVBError.Reason);
    *(v16 + *(v14 + 24)) = v18;
    swift_willThrow();
  }
}

uint64_t static TTSVBError.unwrap<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = sub_23328E00C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v15 - v11;
  (*(v9 + 16))(v15 - v11, a1, v8, v10);
  v13 = *(a3 - 8);
  if ((*(v13 + 48))(v12, 1, a3) != 1)
  {
    return (*(v13 + 32))(a4, v12, a3);
  }

  (*(v9 + 8))(v12, v8);
  type metadata accessor for TTSVBError(0);
  sub_23314400C(&qword_280D3A0B0, type metadata accessor for TTSVBError, &protocol conformance descriptor for TTSVBError);
  swift_allocError();
  a2();
  return swift_willThrow();
}

uint64_t static TTSVBError.unwrap<A>(_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v24 = a5;
  v25 = a3;
  v8 = type metadata accessor for TTSVBError.Reason(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_23328E00C();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v24 - v14;
  v16 = a2[1];
  v26 = *a2;
  v17 = *(a2 + 16);
  (*(v12 + 16))(&v24 - v14, a1, v11, v13);
  v18 = *(a4 - 8);
  if ((*(v18 + 48))(v15, 1, a4) != 1)
  {
    return (*(v18 + 32))(v24, v15, a4);
  }

  (*(v12 + 8))(v15, v11);
  sub_23314406C(v25, v10, type metadata accessor for TTSVBError.Reason);
  v19 = type metadata accessor for TTSVBError(0);
  sub_23314400C(&qword_280D3A0B0, type metadata accessor for TTSVBError, &protocol conformance descriptor for TTSVBError);
  swift_allocError();
  v21 = v20;
  v22 = v26;
  *v20 = v26;
  *(v20 + 8) = v16;
  *(v20 + 16) = v17;
  sub_233144E3C(v10, v20 + *(v19 + 20), type metadata accessor for TTSVBError.Reason);
  *(v21 + *(v19 + 24)) = 0;
  swift_willThrow();
  return sub_233144054(v22, v16, v17);
}

void __swiftcall TTSVBError.convertToNSError()(NSError *__return_ptr retstr)
{
  sub_233145024(MEMORY[0x277D84F90]);
  v1 = sub_23328D98C();
  v3 = v2;
  v4 = MEMORY[0x277D837D0];
  v24 = MEMORY[0x277D837D0];
  *&v23 = 0xD000000000000011;
  *(&v23 + 1) = 0x80000002332A5420;
  sub_233145134(&v23, v22);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_23314474C(v22, v1, v3, isUniquelyReferenced_nonNull_native);

  strcpy(&v23, "Error Code: ");
  BYTE13(v23) = 0;
  HIWORD(v23) = -5120;
  type metadata accessor for TTSVBError(0);
  *&v22[0] = TTSVBError.Reason.errorCode.getter();
  v6 = sub_23328E51C();
  MEMORY[0x23839B7E0](v6);

  v7 = v23;
  v8 = sub_23328D98C();
  v10 = v9;
  v24 = v4;
  v23 = v7;
  sub_233145134(&v23, v22);
  v11 = swift_isUniquelyReferenced_nonNull_native();
  sub_23314474C(v22, v8, v10, v11);

  v12 = sub_23328D98C();
  v14 = v13;
  v15 = TTSVBError.description.getter();
  v24 = v4;
  *&v23 = v15;
  *(&v23 + 1) = v16;
  sub_233145134(&v23, v22);
  v17 = swift_isUniquelyReferenced_nonNull_native();
  sub_23314474C(v22, v12, v14, v17);

  v18 = TTSVBError.Reason.errorCode.getter();
  v19 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  v20 = sub_23328D95C();
  v21 = sub_23328D87C();

  [v19 initWithDomain:v20 code:v18 userInfo:v21];
}

void TTSVBError.hash(into:)(uint64_t a1)
{
  TTSVBError.Problem.hash(into:)(a1);
  v3 = type metadata accessor for TTSVBError(0);
  TTSVBError.Reason.hash(into:)(a1);
  v4 = *(v1 + *(v3 + 24));
  if (v4)
  {
    sub_23328E63C();
    v5 = v4;
    sub_23328DFEC();
  }

  else
  {
    sub_23328E63C();
  }
}

uint64_t TTSVBError.hashValue.getter()
{
  sub_23328E61C();
  TTSVBError.Problem.hash(into:)(v5);
  v1 = type metadata accessor for TTSVBError(0);
  TTSVBError.Reason.hash(into:)(v5);
  v2 = *(v0 + *(v1 + 24));
  sub_23328E63C();
  if (v2)
  {
    v3 = v2;
    sub_23328DFEC();
  }

  return sub_23328E66C();
}

uint64_t sub_23312D13C()
{
  strcpy(v2, "Error Code: ");
  TTSVBError.Reason.errorCode.getter();
  v0 = sub_23328E51C();
  MEMORY[0x23839B7E0](v0);

  return v2[0];
}

uint64_t sub_23312D1F0(uint64_t a1)
{
  sub_23328E61C();
  TTSVBError.Problem.hash(into:)(v6);
  TTSVBError.Reason.hash(into:)(v6);
  v3 = *(v1 + *(a1 + 24));
  sub_23328E63C();
  if (v3)
  {
    v4 = v3;
    sub_23328DFEC();
  }

  return sub_23328E66C();
}