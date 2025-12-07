uint64_t sub_253167428()
{
  sub_25316B6C8(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

void *sub_2531674E8@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_253167508@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!result)
  {
    v2 = 0;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_253167524()
{
  if (*v0)
  {
    return 0x6574636964657270;
  }

  else
  {
    return 0x6148746573657270;
  }
}

unint64_t sub_2531675C4(unint64_t result)
{
  if (result >= 6)
  {
    return 6;
  }

  return result;
}

_OWORD *sub_2531675D4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_2531675E4()
{
  v1 = *(v0 + 32);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2531676A8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2531676F0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_253167730()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_253167768()
{
  v1 = sub_2531DA204();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

BOOL sub_253167838(char a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_2531DB3F4();
  v4 = word_2531E5612[a1];
  sub_2531DB424();
  v5 = sub_2531DB454();
  v6 = -1 << *(a2 + 32);
  v7 = v5 & ~v6;
  if (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  do
  {
    v9 = word_2531E5612[*(*(a2 + 48) + v7)];
    result = v9 == v4;
    if (v9 == v4)
    {
      break;
    }

    v7 = (v7 + 1) & v8;
  }

  while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  return result;
}

uint64_t sub_253167918(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + (v10 | (v4 << 6)));
    sub_2531DB3F4();
    v14 = word_2531E5612[v13];
    sub_2531DB424();
    result = sub_2531DB454();
    v15 = -1 << *(a2 + 32);
    v16 = result & ~v15;
    if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
    {
      return 0;
    }

    v17 = ~v15;
    while (word_2531E5612[*(*(a2 + 48) + v16)] != v14)
    {
      v16 = (v16 + 1) & v17;
      if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        return 0;
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

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_253167A9C(__int128 *a1, uint64_t a2)
{
  sub_2531DB454();
  v3 = 0;
  v4 = 0;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 56);
  v8 = (v5 + 63) >> 6;
  if (v7)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v9 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
      JUMPOUT(0x253167BD0);
    }

    if (v9 >= v8)
    {
      return MEMORY[0x259BFF230](v3);
    }

    v7 = *(a2 + 56 + 8 * v9);
    ++v4;
    if (v7)
    {
      v4 = v9;
      do
      {
LABEL_9:
        v7 &= v7 - 1;
        sub_2531DB3F4();
        sub_2531DB424();
        v3 ^= sub_2531DB454();
      }

      while (v7);
      continue;
    }
  }
}

uint64_t sub_253167C40()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_253167E58()
{

  v1 = *(v0 + 64);
  if (v1 != 255)
  {
    sub_25316D2BC(*(v0 + 48), *(v0 + 56), v1);
  }

  return MEMORY[0x2821FE8E8](v0, 65, 7);
}

uint64_t sub_253167EB8()
{
  sub_25316B6C8(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_253167EF8()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_253167F34()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

unint64_t sub_253167F80(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

uint64_t sub_253167F90()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25316808C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2531680C8()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_25316810C()
{
  sub_25316B6C8(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_25316814C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_253168190()
{

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_2531681C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2531DA204();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_253168234(uint64_t a1, uint64_t a2)
{
  v4 = sub_2531DA204();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2531682B4()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DFD8, &qword_2531E8DF8);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_2531682E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DFE0, &qword_2531E8E00);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25316835C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DFE0, &qword_2531E8E00);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_2531683EC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58E018, &qword_2531E8E30);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_253168480()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D888, &unk_2531E5090);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_253168554()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_253168604(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t MTR.Tag.rawValue.getter()
{
  v1 = __ROR8__(*v0, 32);
  if (*(v0 + 8))
  {
    return *v0;
  }

  else
  {
    return v1;
  }
}

unint64_t MTR.Tag.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = __ROR8__(result, 32);
  if (HIDWORD(result))
  {
    v3 = 0;
  }

  else
  {
    v2 = 0;
    v3 = -1;
  }

  if (result <= 0xFF)
  {
    v2 = result;
    v3 = 1;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t MTR.Tag.description.getter()
{
  if (*(v0 + 8) == 1)
  {
    v5 = 0x747865746E6F632ELL;
  }

  else
  {
    sub_2531DABC4();

    v5 = 0x656C69666F72702ELL;
    sub_253168D7C();
    v1 = sub_2531DA7A4();
    MEMORY[0x259BFE570](v1);

    MEMORY[0x259BFE570](30768, 0xE200000000000000);

    MEMORY[0x259BFE570](8236, 0xE200000000000000);
    v2 = sub_2531DAF34();
    MEMORY[0x259BFE570](v2);

    MEMORY[0x259BFE570](8236, 0xE200000000000000);
  }

  v3 = sub_2531DAF34();
  MEMORY[0x259BFE570](v3);

  MEMORY[0x259BFE570](41, 0xE100000000000000);
  return v5;
}

void sub_25316880C(void *a1@<X8>)
{
  v2 = __ROR8__(*v1, 32);
  v3 = *v1;
  if (!*(v1 + 8))
  {
    v3 = v2;
  }

  *a1 = v3;
}

uint64_t sub_2531688DC()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_2531DB3F4();
  v3 = __ROR8__(v1, 32);
  if (v2)
  {
    v4 = v1;
  }

  else
  {
    v4 = v3;
  }

  MEMORY[0x259BFF270](v4);
  return sub_2531DB454();
}

uint64_t sub_253168934()
{
  v1 = __ROR8__(*v0, 32);
  if (*(v0 + 8))
  {
    v2 = *v0;
  }

  else
  {
    v2 = v1;
  }

  return MEMORY[0x259BFF270](v2);
}

uint64_t sub_253168974(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_2531DB3F4();
  v4 = __ROR8__(v2, 32);
  if (v3)
  {
    v5 = v2;
  }

  else
  {
    v5 = v4;
  }

  MEMORY[0x259BFF270](v5);
  return sub_2531DB454();
}

uint64_t sub_253168A50()
{
  if (*(v0 + 8) == 1)
  {
    return *v0;
  }

  result = __ROR8__(*v0, 32);
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_253168ADC(uint64_t a1)
{
  v2 = sub_253168DD0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_253168B18(uint64_t a1)
{
  v2 = sub_253168DD0();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t MTR.Tag.codingKey.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  *(a1 + 24) = &_s3TagO14CodingKeyProxyVN;
  result = sub_253168DD0();
  *(a1 + 32) = result;
  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

uint64_t MTR.Tag.init<A>(codingKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v7 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  (*(v7 + 16))(&v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2);
  if (swift_dynamicCast())
  {
    v9 = v15;
    v10 = v16;
    result = (*(v7 + 8))(a1, a2);
LABEL_11:
    *a4 = v9;
    *(a4 + 8) = v10;
    return result;
  }

  v9 = sub_2531DB504();
  v13 = v12;
  result = (*(v7 + 8))(a1, a2);
  if (v13)
  {
LABEL_6:
    v9 = 0;
    v10 = -1;
    goto LABEL_11;
  }

  if ((v9 & 0x8000000000000000) == 0)
  {
    if (v9 - 256 >= 0xFFFFFF00)
    {
      v10 = HIDWORD(v9) == 0;
      v14 = __ROR8__(v9, 32);
      if (!HIDWORD(v9))
      {
        v14 = 0;
      }

      if (v9 >= 0x100)
      {
        v9 = v14;
      }

      goto LABEL_11;
    }

    goto LABEL_6;
  }

  __break(1u);
  return result;
}

unint64_t sub_253168D2C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  *(a1 + 24) = &_s3TagO14CodingKeyProxyVN;
  result = sub_253168DD0();
  *(a1 + 32) = result;
  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

unint64_t sub_253168D7C()
{
  result = qword_27F58D0F8;
  if (!qword_27F58D0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D0F8);
  }

  return result;
}

unint64_t sub_253168DD0()
{
  result = qword_27F58D100;
  if (!qword_27F58D100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D100);
  }

  return result;
}

unint64_t sub_253168E28()
{
  result = qword_27F58D108;
  if (!qword_27F58D108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D108);
  }

  return result;
}

uint64_t __swift_memcpy9_4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_253168ED0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
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

uint64_t sub_253168F18(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

unint64_t sub_253168F70()
{
  result = qword_27F58D118;
  if (!qword_27F58D118)
  {
    type metadata accessor for MTRAccessControlEntryPrivilege(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D118);
  }

  return result;
}

uint64_t sub_253168FD8()
{
  sub_2531DB3F4();
  sub_2531DB414();
  return sub_2531DB454();
}

uint64_t sub_253169020(uint64_t a1)
{
  sub_2531DB3F4();
  sub_2531DB414();
  return sub_2531DB454();
}

unint64_t sub_253169068()
{
  result = qword_27F58D120;
  if (!qword_27F58D120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D120);
  }

  return result;
}

unint64_t sub_2531690C0()
{
  result = qword_27F58D128;
  if (!qword_27F58D128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D128);
  }

  return result;
}

unint64_t sub_253169114()
{
  result = qword_27F58D130;
  if (!qword_27F58D130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D130);
  }

  return result;
}

uint64_t _s9AttributeO2IDVwet(uint64_t a1, int a2)
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

uint64_t _s9AttributeO2IDVwst(uint64_t result, int a2, int a3)
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

void sub_253169220(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t MTR.Attribute.ID.description.getter()
{
  sub_2531DABC4();

  sub_253169338();
  v0 = sub_2531DA7A4();
  MEMORY[0x259BFE570](v0);

  MEMORY[0x259BFE570](41, 0xE100000000000000);
  return 0x7475626972747441;
}

unint64_t sub_253169338()
{
  result = qword_27F58D168;
  if (!qword_27F58D168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D168);
  }

  return result;
}

void *sub_2531693F4@<X0>(void *result@<X0>, _DWORD *a2@<X1>, _DWORD *a3@<X8>)
{
  if (*result != -1)
  {
    v3 = a2;
    v4 = a3;
    result = swift_once();
    a3 = v4;
    a2 = v3;
  }

  *a3 = *a2;
  return result;
}

_DWORD *sub_253169444@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_253169510()
{
  sub_2531DB3F4();
  sub_2531DB434();
  return sub_2531DB454();
}

uint64_t sub_253169584(uint64_t a1)
{
  sub_2531DB3F4();
  sub_2531DB434();
  return sub_2531DB454();
}

_WORD *MTR.Attribute.Path.init(_:_:_:)@<X0>(_WORD *result@<X0>, int *a2@<X1>, int *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a2;
  v5 = *a3;
  *a4 = *result;
  *(a4 + 4) = v4;
  *(a4 + 8) = v5;
  return result;
}

_WORD *MTR.Attribute.Path.init(_:_:attributeID:)@<X0>(_WORD *result@<X0>, int *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v4 = *a2;
  *a4 = *result;
  *(a4 + 4) = v4;
  *(a4 + 8) = a3;
  return result;
}

_WORD *MTR.Attribute.Path.init(_:clusterID:attributeID:)@<X0>(_WORD *result@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = *result;
  *(a4 + 4) = a2;
  *(a4 + 8) = a3;
  return result;
}

void MTR.Attribute.Path.init(_:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  v4 = [v3 endpoint];
  v5 = [v4 unsignedShortValue];

  v6 = [v3 cluster];
  v7 = [v6 unsignedIntValue];

  v8 = [v3 attribute];
  v9 = [v8 unsignedIntValue];

  *a2 = v5;
  *(a2 + 4) = v7;
  *(a2 + 8) = v9;
}

id sub_2531697C0(void *a1, SEL *a2)
{
  v4 = *v2;
  v6 = *(v2 + 1);
  v5 = *(v2 + 2);
  v7 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedShort_];
  v8 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
  v9 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
  v10 = [objc_opt_self() *a2];

  return v10;
}

BOOL static MTR.Attribute.Path.== infix(_:_:)(__int16 *a1, void *a2)
{
  v3 = *a1;
  v4 = *(a1 + 2);
  return _s23HomeKitDaemonFoundation3MTRO9AttributeO4PathV6isSame4path03mtrG0SbAG_So012MTRAttributeG0CtFZ_0(&v3, a2);
}

BOOL static MTR.Attribute.Path.== infix(_:_:)(id a1, __int16 *a2)
{
  v3 = *a2;
  v4 = *(a2 + 2);
  return _s23HomeKitDaemonFoundation3MTRO9AttributeO4PathV6isSame4path03mtrG0SbAG_So012MTRAttributeG0CtFZ_0(&v3, a1);
}

uint64_t MTR.Attribute.Path.hash(into:)()
{
  sub_2531DB424();
  sub_2531DB434();
  return sub_2531DB434();
}

uint64_t MTR.Attribute.Path.hashValue.getter()
{
  sub_2531DB3F4();
  sub_2531DB424();
  sub_2531DB434();
  sub_2531DB434();
  return sub_2531DB454();
}

uint64_t sub_2531699F8()
{
  sub_2531DB3F4();
  sub_2531DB424();
  sub_2531DB434();
  sub_2531DB434();
  return sub_2531DB454();
}

uint64_t sub_253169A64()
{
  sub_2531DB424();
  sub_2531DB434();
  return sub_2531DB434();
}

uint64_t sub_253169AAC(uint64_t a1)
{
  sub_2531DB3F4();
  sub_2531DB424();
  sub_2531DB434();
  sub_2531DB434();
  return sub_2531DB454();
}

uint64_t MTR.Attribute.BatchReadResult.batchReadResponse.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t MTR.Attribute.BatchReadResult.batchReadRequestedPaths.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t MTR.Attribute.BatchReadResult.init(batchReadResponse:batchReadRequestedPaths:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = result;
  v4 = *(result + 16);
  if (v4)
  {
    v5 = 0;
    v6 = MEMORY[0x277D84F90];
    while (v5 < *(v3 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D170, &qword_2531E2AB0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D178, &qword_2531E11F8);
      sub_2531DA214();
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_25316A9CC(0, v6[2] + 1, 1, v6, &qword_27F58D218, &qword_2531E14B8, &qword_27F58D178, &qword_2531E11F8);
        v6 = result;
      }

      v8 = v6[2];
      v7 = v6[3];
      if (v8 >= v7 >> 1)
      {
        result = sub_25316A9CC((v7 > 1), v8 + 1, 1, v6, &qword_27F58D218, &qword_2531E14B8, &qword_27F58D178, &qword_2531E11F8);
        v6 = result;
      }

      ++v5;
      v6[2] = v8 + 1;
      v6[v8 + 4] = v11;
      if (v4 == v5)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
LABEL_11:

    *a3 = v6;
    a3[1] = a2;
  }

  return result;
}

uint64_t MTR.Attribute.BatchReadResult.debugDescription.getter()
{
  v2 = *v0;
  v1 = v0[1];
  sub_2531DABC4();

  strcpy(v7, "ReadResponse: ");
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D178, &qword_2531E11F8);
  v4 = MEMORY[0x259BFE6E0](v2, v3);
  MEMORY[0x259BFE570](v4);

  MEMORY[0x259BFE570](0x20726F6620, 0xE500000000000000);
  v5 = MEMORY[0x259BFE6E0](v1, &type metadata for MTR.Attribute.Path);
  MEMORY[0x259BFE570](v5);

  return v7[0];
}

char *sub_253169E64(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D200, &qword_2531E14A8);
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

void *sub_253169F70(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D190, &qword_2531E1448);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D198, &qword_2531E1450);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_25316A0B8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D210, &qword_2531E14B0);
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

char *sub_25316A1C4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D1B0, &qword_2531E1458);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_25316A2C8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D208, &qword_2531E1820);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_25316A3D4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D1A0, &qword_2531E48A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_25316A53C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    v15 = v14 - 32;
    if (v14 < 32)
    {
      v15 = v14 - 1;
    }

    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * (v15 >> 5);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  v16 = v13 + 32;
  v17 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v16 >= &v17[32 * v11])
    {
      memmove(v16, v17, 32 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_25316A65C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

char *sub_25316A748(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D1D8, &qword_2531E1480);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_25316A868(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D1E8, &qword_2531E1490);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 12);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[12 * v8])
    {
      memmove(v12, v13, 12 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 12 * v8);
  }

  return v10;
}

void *sub_25316A9CC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

BOOL _s23HomeKitDaemonFoundation3MTRO9AttributeO4PathV6isSame4path03mtrG0SbAG_So012MTRAttributeG0CtFZ_0(unsigned __int16 *a1, id a2)
{
  v3 = *a1;
  v5 = *(a1 + 1);
  v4 = *(a1 + 2);
  v6 = [a2 endpoint];
  v7 = [v6 unsignedIntValue];

  if (v7 != v3)
  {
    return 0;
  }

  v8 = [a2 cluster];
  v9 = [v8 unsignedIntValue];

  if (v5 != v9)
  {
    return 0;
  }

  v10 = [a2 attribute];
  v11 = [v10 unsignedIntValue];

  return v4 == v11;
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

unint64_t sub_25316AC34()
{
  result = qword_27F58D180;
  if (!qword_27F58D180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D180);
  }

  return result;
}

unint64_t sub_25316AC8C()
{
  result = qword_27F58D188;
  if (!qword_27F58D188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D188);
  }

  return result;
}

uint64_t _s6VendorOwet(unsigned int *a1, int a2)
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

_WORD *_s6VendorOwst(_WORD *result, int a2, int a3)
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

uint64_t __swift_memcpy12_4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t _s9AttributeO4PathVwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 12))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s9AttributeO4PathVwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
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

  *(result + 12) = v3;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_25316AE54(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_25316AE9C(uint64_t result, int a2, int a3)
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

unint64_t sub_25316AEEC()
{
  result = qword_27F58D1A8;
  if (!qword_27F58D1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D1A8);
  }

  return result;
}

id MTRDeviceTypeRevision.init(from:)(unsigned int *a1)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v2 = sub_2531DB484();
  v3 = sub_2531DB474();
  v4 = [v1 initWithDeviceTypeID:v2 revision:v3];

  return v4;
}

void MTRDeviceTypeRevision.makeDeviceType()(uint64_t a1@<X8>)
{
  v3 = [v1 deviceTypeID];
  v4 = [v3 unsignedIntValue];

  v5 = [v1 deviceTypeRevision];
  LOWORD(v3) = [v5 unsignedShortValue];

  *a1 = v4;
  *(a1 + 4) = v3;
}

unint64_t get_enum_tag_for_layout_string_23HomeKitDaemonFoundation3MTRO15_CodingPathNodeO(unint64_t *a1)
{
  if ((*a1 & 0x8000000000000000) == 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t sub_25316B104(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 8))
  {
    return (*a1 + 126);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_25316B160(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_25316B1C0(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (8 * (a2 - 2)) | 0x8000000000000000;
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_25316B21C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 25))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 24);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_25316B264(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_25316B2C4(unint64_t a1)
{
  if (a1 >> 62)
  {
    if (a1 >> 62 == 1)
    {
      v1 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v2 = sub_25316B2C4(*((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x18));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D190, &qword_2531E1448);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2531E14E0;
      *(inited + 56) = &_s10_CodingKeyON;
      *(inited + 64) = sub_25316B674();
      v4 = swift_allocObject();
      *(inited + 32) = v4;
      *(v4 + 16) = v1;
      *(v4 + 24) = 0;
      *(v4 + 32) = 0;
      *(v4 + 40) = 2;
      sub_25318DDCC(inited);
      return v2;
    }

    else
    {
      return MEMORY[0x277D84F90];
    }
  }

  else
  {
    v6 = *(a1 + 56);
    sub_25316B6E4(a1 + 16, v9);

    v7 = sub_25316B2C4(v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D190, &qword_2531E1448);
    v8 = swift_initStackObject();
    *(v8 + 16) = xmmword_2531E14E0;
    sub_25316B6E4(v9, v8 + 32);
    sub_25318DDCC(v8);

    __swift_destroy_boxed_opaque_existential_1(v9);
    return v7;
  }
}

uint64_t sub_25316B41C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 > 1u)
  {
    if (a4 == 2)
    {
      v5 = sub_2531DAF34();
      MEMORY[0x259BFE570](v5);

      return 0x207865646E49;
    }
  }

  else if (a4)
  {
    return sub_2531DAF34();
  }

  return a1;
}

uint64_t sub_25316B4E8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  return result;
}

uint64_t sub_25316B4F8()
{
  result = *v0;
  if (*(v0 + 24) > 1u)
  {
    if (*(v0 + 24) != 2)
    {
      return *(v0 + 16);
    }
  }

  else if (!*(v0 + 24))
  {
    return *(v0 + 24);
  }

  return result;
}

uint64_t sub_25316B538@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = result;
  *(a2 + 24) = 1;
  return result;
}

uint64_t sub_25316B54C(uint64_t a1)
{
  v2 = sub_25316B674();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25316B588(uint64_t a1)
{
  v2 = sub_25316B674();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_25316B5C8()
{
  result = qword_27F58D220;
  if (!qword_27F58D220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D220);
  }

  return result;
}

unint64_t sub_25316B620()
{
  result = qword_27F58D228;
  if (!qword_27F58D228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D228);
  }

  return result;
}

unint64_t sub_25316B674()
{
  result = qword_27F58D230;
  if (!qword_27F58D230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D230);
  }

  return result;
}

uint64_t sub_25316B6C8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 3 || a4 == 0)
  {
  }

  return result;
}

uint64_t sub_25316B6E4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
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

uint64_t MTR.Group.ID.description.getter()
{
  sub_253168D7C();
  v0 = sub_2531DA7A4();
  MEMORY[0x259BFE570](v0);

  return 30768;
}

uint64_t MTR.Group.ID.rawValue.getter()
{
  v1 = *v0 | 0xFFFFFF00;
  if (v0[2] != 1)
  {
    v1 = 0;
  }

  if (v0[2])
  {
    return v1;
  }

  else
  {
    return *v0;
  }
}

uint64_t MTR.Group.ID.debugDescription.getter()
{
  sub_253168D7C();
  v0 = sub_2531DA7A4();
  MEMORY[0x259BFE570](v0);

  MEMORY[0x259BFE570](41, 0xE100000000000000);
  return 0x44492E70756F7247;
}

unint64_t MTR.Group.ID.descriptiveName.getter()
{
  if (!*(v0 + 2))
  {
    v4 = 0x78302870756F7247;
    sub_253168D7C();
LABEL_8:
    v3 = sub_2531DA7A4();
    MEMORY[0x259BFE570](v3);

    MEMORY[0x259BFE570](41, 0xE100000000000000);
    return v4;
  }

  if (*(v0 + 2) != 1)
  {
    return 0xD000000000000011;
  }

  v1 = *v0;
  if (v1 == 253)
  {
    return 0xD000000000000010;
  }

  if (v1 != 255)
  {
    if (v1 == 254)
    {
      return 0xD000000000000014;
    }

    sub_2531DABC4();

    v4 = 0xD000000000000011;
    sub_25316BDB0();
    goto LABEL_8;
  }

  return 0x6C612E70756F7247;
}

uint64_t MTR.Group.ID.init(rawValue:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = result > 0xFEFEu;
  v3 = result;
  if (result <= 0xFEFEu)
  {
    v3 = result;
  }

  if (!result)
  {
    v2 = 2;
  }

  *a2 = v3;
  *(a2 + 2) = v2;
  return result;
}

unsigned __int16 *sub_25316BADC@<X0>(unsigned __int16 *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result;
  if (v2 <= 0xFEFE)
  {
    v3 = *result;
  }

  if (*result)
  {
    v4 = v2 > 0xFEFE;
  }

  else
  {
    v4 = 2;
  }

  *a2 = v3;
  *(a2 + 2) = v4;
  return result;
}

void sub_25316BB14(_WORD *a1@<X8>)
{
  v2 = *v1;
  v3 = *v1 | 0xFF00;
  if (*(v1 + 2) != 1)
  {
    v3 = 0;
  }

  if (*(v1 + 2))
  {
    v2 = v3;
  }

  *a1 = v2;
}

uint64_t sub_25316BBE8()
{
  sub_2531DB3F4();
  sub_2531DB424();
  return sub_2531DB454();
}

uint64_t sub_25316BC88(uint64_t a1)
{
  sub_2531DB3F4();
  sub_2531DB424();
  return sub_2531DB454();
}

uint64_t sub_25316BCE0()
{
  sub_253168D7C();
  v0 = sub_2531DA7A4();
  MEMORY[0x259BFE570](v0);

  return 30768;
}

BOOL sub_25316BD6C(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = v2 | 0xFF00;
  if (*(a1 + 2) != 1)
  {
    v4 = 0;
  }

  if (*(a1 + 2))
  {
    v2 = v4;
  }

  v5 = v3 | 0xFF00;
  if (*(a2 + 2) != 1)
  {
    v5 = 0;
  }

  if (*(a2 + 2))
  {
    v3 = v5;
  }

  return v2 == v3;
}

unint64_t sub_25316BDB0()
{
  result = qword_27F58D238;
  if (!qword_27F58D238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D238);
  }

  return result;
}

unint64_t sub_25316BE08()
{
  result = qword_27F58D240;
  if (!qword_27F58D240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D240);
  }

  return result;
}

uint64_t __swift_memcpy3_2(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t _s5GroupO2IDOwet(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE)
  {
    if ((a2 + 33554178) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776962;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776962;
      }
    }
  }

  v4 = *(a1 + 2);
  if (v4 <= 2)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4 ^ 0xFF;
  }

  return (v5 + 1);
}

uint64_t _s5GroupO2IDOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554178) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFD)
  {
    v3 = 0;
  }

  if (a2 > 0xFD)
  {
    *result = a2 - 254;
    *(result + 2) = (a2 - 254) >> 16;
    if (v3)
    {
      v4 = ((a2 - 254) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *(result + 2) = -a2;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t sub_25316BF80(unsigned __int16 *a1)
{
  if (*(a1 + 2) <= 1u)
  {
    return *(a1 + 2);
  }

  else
  {
    return *a1 + 2;
  }
}

uint64_t sub_25316BF98(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 2) = a2;
  return result;
}

unint64_t sub_25316BFC0()
{
  result = qword_27F58D248;
  if (!qword_27F58D248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D248);
  }

  return result;
}

uint64_t MTR.DeviceController.makeEndpoint(endpointID:deviceTypes:builder:)(__int16 *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v30 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v29 = *(AssociatedTypeWitness - 8);
  v13 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v15 = v28 - v14;
  v16 = *a1;
  v17 = a3(v13);
  if (!v6)
  {
    v18 = *(a6 + 88);
    v19 = v17;
    v28[1] = 0;
    v20 = v18(a5, a6);
    v28[2] = v28;
    v32 = v16;
    v31 = v19;
    MEMORY[0x28223BE20](v20);
    v28[-4] = a5;
    v28[-3] = a6;
    v28[-2] = v15;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D250, &unk_2531E1810);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    v23 = swift_getAssociatedTypeWitness();
    v24 = sub_25316D268(&qword_27F58D258, &qword_27F58D250, &unk_2531E1810);
    v26 = sub_25316C670(sub_25316C538, &v28[-6], v21, v23, MEMORY[0x277D84A98], v24, MEMORY[0x277D84AC0], v25);

    a4 = (*(AssociatedConformanceWitness + 40))(&v32, v30, v26, AssociatedTypeWitness, AssociatedConformanceWitness);

    (*(v29 + 8))(v15, AssociatedTypeWitness);
  }

  return a4;
}

uint64_t sub_25316C2F4@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v5 = *(a1 + 2);
  v22 = *a1;
  v21 = v5;
  v18 = a3;
  v19 = a4;
  v20 = a2;

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D260, &qword_2531E1A18);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_25316D268(&qword_27F58D268, &qword_27F58D260, &qword_2531E1A18);
  v11 = sub_25316C670(sub_25316D244, v17, v6, AssociatedTypeWitness, MEMORY[0x277D84A98], v9, MEMORY[0x277D84AC0], v10);

  v12 = *(AssociatedConformanceWitness + 32);
  v13 = swift_checkMetadataState();
  v14 = v12(&v22, &v21, v11, v13, AssociatedConformanceWitness);

  *a5 = v14;
  return result;
}

uint64_t sub_25316C55C@<X0>(int *a1@<X0>, uint64_t *a4@<X8>)
{
  v4 = *(a1 + 1);
  v5 = *(a1 + 2);
  v6 = *(a1 + 24);
  v7 = *(a1 + 25);
  v17 = *a1;
  v14 = v4;
  v15 = v5;
  v16 = v6;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = *(AssociatedConformanceWitness + 24);
  sub_25316D004(v4, v5, v6);
  v10 = swift_checkMetadataState();
  v11 = v9(&v17, &v14, v7, v10, AssociatedConformanceWitness);
  result = sub_25316D2BC(v14, v15, v16);
  *a4 = v11;
  return result;
}

uint64_t sub_25316C670(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v14 = &v27 - v13;
  MEMORY[0x28223BE20](v12);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v27 - v17;
  v19 = sub_2531DAA34();
  if (!v19)
  {
    return sub_2531DA8D4();
  }

  v41 = v19;
  v45 = sub_2531DACD4();
  v32 = sub_2531DACE4();
  sub_2531DAC84();
  result = sub_2531DAA24();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = sub_2531DAA54();
      v23 = v14;
      v24 = v14;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      sub_2531DACC4();
      result = sub_2531DAA44();
      ++v21;
      v14 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
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

uint64_t MTR.ServerEndpointBuilder.Cluster.init(_:revision:builder:)@<X0>(_DWORD *a1@<X0>, __int16 *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v5 = *a2;
  *a4 = *a1;
  *(a4 + 4) = v5;
  result = a3();
  *(a4 + 8) = result;
  return result;
}

uint64_t MTR.ServerEndpointBuilder.Cluster.init(_:revision:builder:)@<X0>(int *a1@<X0>, __int16 *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v6 = *a1;
  v7 = *a2;
  result = a3();
  if (!v4)
  {
    *a4 = v6;
    *(a4 + 4) = v7;
    *(a4 + 8) = result;
  }

  return result;
}

char *static MTR.ServerEndpointBuilder.buildBlock(_:)(char *result)
{
  v1 = *(result + 2);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = result + 32;
  v3 = MEMORY[0x277D84F90];
  while (1)
  {
    v4 = *v2;
    v5 = *(*v2 + 16);
    v6 = *(v3 + 2);
    v7 = v6 + v5;
    if (__OFADD__(v6, v5))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v7 <= *(v3 + 3) >> 1)
    {
      if (*(v4 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v6 <= v7)
      {
        v8 = v6 + v5;
      }

      else
      {
        v8 = v6;
      }

      result = sub_25316A0B8(result, v8, 1, v3);
      v3 = result;
      if (*(v4 + 16))
      {
LABEL_14:
        if ((*(v3 + 3) >> 1) - *(v3 + 2) < v5)
        {
          goto LABEL_22;
        }

        swift_arrayInitWithCopy();

        if (v5)
        {
          v9 = *(v3 + 2);
          v10 = __OFADD__(v9, v5);
          v11 = v9 + v5;
          if (v10)
          {
            goto LABEL_23;
          }

          *(v3 + 2) = v11;
        }

        goto LABEL_4;
      }
    }

    if (v5)
    {
      goto LABEL_21;
    }

LABEL_4:
    v2 += 8;
    if (!--v1)
    {
      return v3;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t static MTR.ServerEndpointBuilder.buildExpression(_:)(int *a1)
{
  v1 = *a1;
  v2 = *(a1 + 2);
  v3 = *(a1 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D210, &qword_2531E14B0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2531E14E0;
  *(v4 + 32) = v1;
  *(v4 + 36) = v2;
  *(v4 + 40) = v3;

  return v4;
}

uint64_t MTR.ServerClusterBuilder.Attribute.initialValue.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 24);
  *(a1 + 16) = v4;
  return sub_25316D004(v2, v3, v4);
}

__n128 MTR.ServerClusterBuilder.Attribute.init(_:initialValue:requiredPrivilege:)@<Q0>(_DWORD *a1@<X0>, __n128 *a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v4 = a2[1].n128_u8[0];
  *a4 = *a1;
  result = *a2;
  *(a4 + 8) = *a2;
  *(a4 + 24) = v4;
  *(a4 + 25) = a3;
  return result;
}

__n128 MTR.ServerClusterBuilder.Attribute.init<A>(_:initialValue:requiredPrivilege:)@<Q0>(int *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v11 = *a1;
  MTR.ValueEncoder.encode<A>(_:)(a2, a4, a5, &v14);
  (*(*(a4 - 1) + 8))(a2, a4);

  if (!v6)
  {
    v13 = v15;
    result = v14;
    *a6 = v11;
    *(a6 + 8) = result;
    *(a6 + 24) = v13;
    *(a6 + 25) = a3;
  }

  return result;
}

char *static MTR.ServerClusterBuilder.buildBlock(_:)(char *result)
{
  v1 = *(result + 2);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = result + 32;
  v3 = MEMORY[0x277D84F90];
  while (1)
  {
    v4 = *v2;
    v5 = *(*v2 + 16);
    v6 = *(v3 + 2);
    v7 = v6 + v5;
    if (__OFADD__(v6, v5))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v7 <= *(v3 + 3) >> 1)
    {
      if (*(v4 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v6 <= v7)
      {
        v8 = v6 + v5;
      }

      else
      {
        v8 = v6;
      }

      result = sub_25316A2C8(result, v8, 1, v3);
      v3 = result;
      if (*(v4 + 16))
      {
LABEL_14:
        if ((*(v3 + 3) >> 1) - *(v3 + 2) < v5)
        {
          goto LABEL_22;
        }

        swift_arrayInitWithCopy();

        if (v5)
        {
          v9 = *(v3 + 2);
          v10 = __OFADD__(v9, v5);
          v11 = v9 + v5;
          if (v10)
          {
            goto LABEL_23;
          }

          *(v3 + 2) = v11;
        }

        goto LABEL_4;
      }
    }

    if (v5)
    {
      goto LABEL_21;
    }

LABEL_4:
    v2 += 8;
    if (!--v1)
    {
      return v3;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t static MTR.ServerClusterBuilder.buildExpression(_:)(int *a1)
{
  v1 = *a1;
  v2 = *(a1 + 1);
  v3 = *(a1 + 2);
  v4 = *(a1 + 25);
  v5 = *(a1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D208, &qword_2531E1820);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2531E14E0;
  *(v6 + 32) = v1;
  *(v6 + 40) = v2;
  *(v6 + 48) = v3;
  *(v6 + 56) = v5;
  *(v6 + 57) = v4;
  sub_25316D004(v2, v3, v5);
  return v6;
}

uint64_t sub_25316D004(uint64_t result, unint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 6u)
  {
    if (a3 != 5)
    {
      if (a3 == 6)
      {
        return sub_25316D050(result, a2);
      }

      return result;
    }
  }

  if (a3 == 7 || a3 == 8)
  {
  }

  if (a3 == 9)
  {
  }

  return result;
}

uint64_t sub_25316D050(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_25316D0B4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_25316D0FC(uint64_t result, int a2, int a3)
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

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_23HomeKitDaemonFoundation3MTRO5ValueO(uint64_t a1)
{
  if ((*(a1 + 16) & 0xFu) <= 9)
  {
    return *(a1 + 16) & 0xF;
  }

  else
  {
    return (*a1 + 10);
  }
}

__n128 __swift_memcpy26_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t sub_25316D1A4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF6 && *(a1 + 26))
  {
    return (*a1 + 246);
  }

  v3 = *(a1 + 24);
  if (v3 <= 0xA)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_25316D1EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF5)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 246;
    if (a3 >= 0xF6)
    {
      *(result + 26) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF6)
    {
      *(result + 26) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_25316D268(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_25316D2BC(uint64_t result, unint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 6u)
  {
    if (a3 != 5)
    {
      if (a3 == 6)
      {
        return sub_25316D308(result, a2);
      }

      return result;
    }
  }

  if (a3 == 7 || a3 == 8)
  {
  }

  if (a3 == 9)
  {
  }

  return result;
}

uint64_t sub_25316D308(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

void *static MTR.Cluster.Global.readCachedAttributeList(device:endpoint:cluster:)(void *a1, __int16 *a2, int *a3)
{
  v4 = *a2;
  v5 = *a3;
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  v11 = v4;
  v12 = v5;
  v13 = 65531;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D270, &qword_2531E1A28);
  v9 = sub_25316D454();
  result = MTR.Device.readCachedAttributeValue<A>(from:of:)(&v11, v6, v8, v7, v9, &v14);
  if (!v3)
  {
    return v14;
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

unint64_t sub_25316D454()
{
  result = qword_27F58D278;
  if (!qword_27F58D278)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F58D270, &qword_2531E1A28);
    sub_25316D4D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D278);
  }

  return result;
}

unint64_t sub_25316D4D8()
{
  result = qword_27F58D280;
  if (!qword_27F58D280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D280);
  }

  return result;
}

uint64_t MTR.Value.typeAsString.getter()
{
  v1 = *(v0 + 16);
  if (v1 <= 4)
  {
    v7 = 7630441;
    v8 = 1953393013;
    v9 = 0x74616F6C66;
    if (v1 != 3)
    {
      v9 = 0x656C62756F64;
    }

    if (v1 != 2)
    {
      v8 = v9;
    }

    if (!*(v0 + 16))
    {
      v7 = 1819242338;
    }

    if (*(v0 + 16) <= 1u)
    {
      return v7;
    }

    else
    {
      return v8;
    }
  }

  else
  {
    v2 = 0x7275746375727473;
    v3 = 0x6E776F6E6B6E75;
    if (v1 != 9)
    {
      v3 = 1819047278;
    }

    if (v1 != 8)
    {
      v2 = v3;
    }

    v4 = 0x676E69727473;
    v5 = 1635017060;
    if (v1 != 6)
    {
      v5 = 0x7961727261;
    }

    if (v1 != 5)
    {
      v4 = v5;
    }

    if (*(v0 + 16) <= 7u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

void static MTR.Value.false.getter(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

double static MTR.Value.true.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 1;
  *a1 = xmmword_2531E1A40;
  *(a1 + 16) = 0;
  return result;
}

uint64_t sub_25316D684(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v10 = 1;
    }

    else
    {
      v3 = (a2 + 48);
      v4 = (a1 + 48);
      do
      {
        v5 = *(v4 - 1);
        v6 = *v4;
        v15 = *(v4 - 2);
        v16 = v5;
        v17 = v6;
        v8 = *(v3 - 1);
        v12 = *(v3 - 2);
        v7 = v12;
        v13 = v8;
        v14 = *v3;
        v9 = v14;
        sub_25316D004(v15, v5, v6);
        sub_25316D004(v7, v8, v9);
        v10 = _s23HomeKitDaemonFoundation3MTRO5ValueO2eeoiySbAE_AEtFZ_0(&v15, &v12);
        sub_25316D2BC(v12, v13, v14);
        sub_25316D2BC(v15, v16, v17);
        if ((v10 & 1) == 0)
        {
          break;
        }

        v4 += 24;
        v3 += 24;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t sub_25316D770(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a2 + 64);
    for (i = (a1 + 64); ; i += 40)
    {
      v5 = __ROR8__(*(i - 4), 32);
      v6 = *(i - 4);
      if (!*(i - 24))
      {
        v6 = v5;
      }

      v7 = __ROR8__(*(v3 - 4), 32);
      if (*(v3 - 24))
      {
        v7 = *(v3 - 4);
      }

      if (v6 != v7)
      {
        break;
      }

      v8 = *(i - 2);
      v9 = *(i - 1);
      v10 = *i;
      v12 = *(v3 - 2);
      v11 = *(v3 - 1);
      v13 = *v3;
      v19 = v8;
      v20 = v9;
      v21 = v10;
      v16 = v12;
      v17 = v11;
      v18 = v13;
      sub_25316D004(v8, v9, v10);
      sub_25316D004(v12, v11, v13);
      sub_25316D004(v8, v9, v10);
      sub_25316D004(v12, v11, v13);
      v14 = _s23HomeKitDaemonFoundation3MTRO5ValueO2eeoiySbAE_AEtFZ_0(&v19, &v16);
      sub_25316D2BC(v16, v17, v18);
      sub_25316D2BC(v19, v20, v21);
      sub_25316D2BC(v12, v11, v13);
      sub_25316D2BC(v8, v9, v10);
      if ((v14 & 1) == 0)
      {
        break;
      }

      v3 += 40;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t MTR.Value.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + 16);
  if (v4 <= 4)
  {
    if (*(v1 + 16) <= 1u)
    {
      if (!*(v1 + 16))
      {
        MEMORY[0x259BFF230](1);
        return sub_2531DB414();
      }

      v7 = 2;
    }

    else
    {
      if (v4 != 2)
      {
        if (v4 == 3)
        {
          MEMORY[0x259BFF230](4);
          return sub_2531DB434();
        }

        else
        {
          MEMORY[0x259BFF230](5);
          if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
          {
            v9 = v3;
          }

          else
          {
            v9 = 0;
          }

          return MEMORY[0x259BFF270](v9);
        }
      }

      v7 = 3;
    }

    MEMORY[0x259BFF230](v7);
    return MEMORY[0x259BFF270](v3);
  }

  if (*(v1 + 16) > 7u)
  {
    if (v4 == 8)
    {
      v8 = *(v3 + 16);
      MEMORY[0x259BFF230](9);

      sub_25316DC54(a1, v8);
LABEL_32:
    }

    if (v4 != 9)
    {
      return MEMORY[0x259BFF230](0);
    }

    v6 = 10;
  }

  else
  {
    if (v4 != 5)
    {
      if (v4 == 6)
      {
        MEMORY[0x259BFF230](7);

        return sub_2531DA164();
      }

      v10 = *(v3 + 16);
      MEMORY[0x259BFF230](8);
      result = MEMORY[0x259BFF230](*(v10 + 16));
      v11 = *(v10 + 16);
      if (!v11)
      {
        return result;
      }

      v12 = (v10 + 48);
      do
      {
        v14 = *(v12 - 2);
        v15 = *(v12 - 1);
        v13 = *v12;
        v12 += 24;
        sub_25316D004(v14, v15, v13);
        MTR.Value.hash(into:)(a1);
        sub_25316D2BC(v14, v15, v13);
        --v11;
      }

      while (v11);
      goto LABEL_32;
    }

    v6 = 6;
  }

  MEMORY[0x259BFF230](v6);

  return sub_2531DA734();
}

uint64_t MTR.Value.hashValue.getter()
{
  v1 = *(v0 + 16);
  v4 = *v0;
  v5 = v1;
  sub_2531DB3F4();
  MTR.Value.hash(into:)(v3);
  return sub_2531DB454();
}

uint64_t sub_25316DBA8()
{
  v1 = *(v0 + 16);
  v4 = *v0;
  v5 = v1;
  sub_2531DB3F4();
  MTR.Value.hash(into:)(v3);
  return sub_2531DB454();
}

uint64_t sub_25316DC00(uint64_t a1)
{
  v2 = *(v1 + 16);
  v5 = *v1;
  v6 = v2;
  sub_2531DB3F4();
  MTR.Value.hash(into:)(v4);
  return sub_2531DB454();
}

uint64_t sub_25316DC54(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  result = MEMORY[0x259BFF230](v4);
  if (v4)
  {
    v6 = a2 + 64;
    do
    {
      v7 = *(v6 - 32);
      v8 = *(v6 - 24);
      v6 += 40;
      v9 = __ROR8__(v7, 32);
      if (v8)
      {
        v10 = v7;
      }

      else
      {
        v10 = v9;
      }

      MEMORY[0x259BFF270](v10);
      result = MTR.Value.hash(into:)(a1);
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t _s23HomeKitDaemonFoundation3MTRO5ValueO2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v4 <= 4)
  {
    if (*(a1 + 16) <= 1u)
    {
      if (!*(a1 + 16))
      {
        if (!*(a2 + 16))
        {
          sub_25316D2BC(*a1, v3, 0);
          sub_25316D2BC(*&v5, v6, 0);
          v12 = LOBYTE(v5) ^ v2 ^ 1;
          return v12 & 1;
        }

        goto LABEL_43;
      }

      if (v7 != 1)
      {
        goto LABEL_43;
      }

      sub_25316D2BC(*a1, v3, 1u);
      v16 = *&v5;
      v17 = v6;
      v18 = 1;
    }

    else
    {
      if (v4 != 2)
      {
        if (v4 != 3)
        {
          if (v7 != 4)
          {
            goto LABEL_43;
          }

          sub_25316D2BC(*a1, v3, 4u);
          sub_25316D2BC(*&v5, v6, 4u);
          v12 = *&v2 == v5;
          return v12 & 1;
        }

        if (v7 == 3)
        {
          sub_25316D2BC(*a1, v3, 3u);
          sub_25316D2BC(*&v5, v6, 3u);
          v12 = *&v2 == *&v5;
          return v12 & 1;
        }

LABEL_43:
        sub_25316D004(*&v5, v6, v7);
        sub_25316D2BC(v2, v3, v4);
        sub_25316D2BC(*&v5, v6, v7);
        v12 = 0;
        return v12 & 1;
      }

      if (v7 != 2)
      {
        goto LABEL_43;
      }

      sub_25316D2BC(*a1, v3, 2u);
      v16 = *&v5;
      v17 = v6;
      v18 = 2;
    }

    sub_25316D2BC(v16, v17, v18);
    v12 = v2 == *&v5;
    return v12 & 1;
  }

  if (*(a1 + 16) > 7u)
  {
    if (v4 == 8)
    {
      if (v7 == 8)
      {
        v19 = *(v2 + 16);
        v20 = *(*&v5 + 16);
        sub_25316D004(*a2, *(a2 + 8), 8u);
        sub_25316D004(v2, v3, 8u);

        v8 = sub_25316D770(v19, v20);

        sub_25316D2BC(v2, v3, 8u);
        v9 = *&v5;
        v10 = v6;
        v11 = 8;
        goto LABEL_47;
      }

      goto LABEL_37;
    }

    if (v4 != 9)
    {
      if (v7 != 10 || v6 | *&v5)
      {
        goto LABEL_43;
      }

      sub_25316D2BC(*a1, v3, 0xAu);
      v13 = 0;
      v14 = 0;
      v15 = 10;
      goto LABEL_41;
    }

    if (v7 == 9)
    {
      if (v2 != *&v5 || v3 != v6)
      {
        v8 = sub_2531DB144();
        sub_25316D004(*&v5, v6, 9u);
        sub_25316D004(v2, v3, 9u);
        sub_25316D2BC(v2, v3, 9u);
        v9 = *&v5;
        v10 = v6;
        v11 = 9;
        goto LABEL_47;
      }

      sub_25316D004(*a1, v3, 9u);
      sub_25316D004(v2, v3, 9u);
      sub_25316D2BC(v2, v3, 9u);
      v13 = v2;
      v14 = v3;
      v15 = 9;
LABEL_41:
      sub_25316D2BC(v13, v14, v15);
      v12 = 1;
      return v12 & 1;
    }

    goto LABEL_29;
  }

  if (v4 == 5)
  {
    if (v7 == 5)
    {
      if (v2 != *&v5 || v3 != v6)
      {
        v8 = sub_2531DB144();
        sub_25316D004(*&v5, v6, 5u);
        sub_25316D004(v2, v3, 5u);
        sub_25316D2BC(v2, v3, 5u);
        v9 = *&v5;
        v10 = v6;
        v11 = 5;
        goto LABEL_47;
      }

      sub_25316D004(*a1, v3, 5u);
      sub_25316D004(v2, v3, 5u);
      sub_25316D2BC(v2, v3, 5u);
      v13 = v2;
      v14 = v3;
      v15 = 5;
      goto LABEL_41;
    }

LABEL_29:

    goto LABEL_43;
  }

  if (v4 != 6)
  {
    if (v7 == 7)
    {
      v21 = *(v2 + 16);
      v22 = *(*&v5 + 16);
      sub_25316D004(*a2, *(a2 + 8), 7u);
      sub_25316D004(v2, v3, 7u);

      v8 = sub_25316D684(v21, v22);

      sub_25316D2BC(v2, v3, 7u);
      v9 = *&v5;
      v10 = v6;
      v11 = 7;
      goto LABEL_47;
    }

LABEL_37:

    goto LABEL_43;
  }

  if (v7 != 6)
  {
    sub_25316D050(*a1, v3);
    goto LABEL_43;
  }

  sub_25316D004(*a2, *(a2 + 8), 6u);
  sub_25316D004(v2, v3, 6u);
  v8 = sub_25317DEF0(v2, v3, *&v5, v6);
  sub_25316D2BC(v2, v3, 6u);
  v9 = *&v5;
  v10 = v6;
  v11 = 6;
LABEL_47:
  sub_25316D2BC(v9, v10, v11);
  return v8 & 1;
}

unint64_t sub_25316E1D8()
{
  result = qword_27F58D288;
  if (!qword_27F58D288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D288);
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_25316E240(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF6 && *(a1 + 17))
  {
    return (*a1 + 246);
  }

  v3 = *(a1 + 16);
  if (v3 <= 0xA)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_25316E288(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF5)
  {
    *(result + 16) = 0;
    *result = a2 - 246;
    *(result + 8) = 0;
    if (a3 >= 0xF6)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF6)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_25316E2CC(uint64_t result, unsigned int a2)
{
  if (a2 >= 0xA)
  {
    *result = a2 - 10;
    *(result + 8) = 0;
    LOBYTE(a2) = 10;
  }

  *(result + 16) = a2;
  return result;
}

void MTR.Passcode.init(rawValue:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  v4 = objc_opt_self();
  v5 = sub_2531DB484();
  v6 = [v4 isValidSetupPasscode_];

  if (v6)
  {
    v7 = v2;
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  *(a2 + 4) = v6 ^ 1;
}

uint64_t MTR.Passcode.debugDescription.getter()
{
  v0 = sub_2531DAF34();
  MEMORY[0x259BFE570](v0);

  MEMORY[0x259BFE570](41, 0xE100000000000000);
  return 0x65646F6373736150;
}

void sub_25316E44C(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = objc_opt_self();
  v5 = sub_2531DB484();
  v6 = [v4 isValidSetupPasscode_];

  if (v6)
  {
    v7 = v3;
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  *(a2 + 4) = v6 ^ 1;
}

uint64_t sub_25316E5B8()
{
  v0 = sub_2531DAF34();
  MEMORY[0x259BFE570](v0);

  MEMORY[0x259BFE570](41, 0xE100000000000000);
  return 0x65646F6373736150;
}

void static MTR.Passcode.random()(_DWORD *a1@<X8>)
{
  v2 = [objc_opt_self() generateRandomSetupPasscode];
  v3 = [v2 integerValue];

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(v3))
  {
    *a1 = v3;
    return;
  }

  __break(1u);
}

unint64_t sub_25316E6BC()
{
  result = qword_27F58D290;
  if (!qword_27F58D290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D290);
  }

  return result;
}

unint64_t sub_25316E720()
{
  result = qword_27F58D298;
  if (!qword_27F58D298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D298);
  }

  return result;
}

uint64_t MTR.Cluster.ID.description.getter()
{
  sub_2531DABC4();

  strcpy(v2, "Cluster.ID(0x");
  sub_253169338();
  v0 = sub_2531DA7A4();
  MEMORY[0x259BFE570](v0);

  MEMORY[0x259BFE570](41, 0xE100000000000000);
  return v2[0];
}

unint64_t MTR.Cluster.ID.knownName.getter()
{
  v1 = *v0;
  v2 = 0xD000000000000010;
  v3 = 0x676E69646E6942;
  if (*v0 != 30)
  {
    v3 = 0;
  }

  if (v1 != 40)
  {
    v2 = v3;
  }

  if (v1 == 29)
  {
    return 0x7470697263736544;
  }

  else
  {
    return v2;
  }
}

_WORD *MTR.Cluster.Path.init(_:_:)@<X0>(_WORD *result@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *result;
  *(a3 + 4) = v3;
  return result;
}

_WORD *MTR.Cluster.Path.init(_:clusterID:)@<X0>(_WORD *result@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = *result;
  *(a3 + 4) = a2;
  return result;
}

uint64_t MTR.Cluster.Path.hashValue.getter()
{
  sub_2531DB3F4();
  sub_2531DB424();
  sub_2531DB434();
  return sub_2531DB454();
}

uint64_t sub_25316EAC8()
{
  sub_2531DB3F4();
  sub_2531DB424();
  sub_2531DB434();
  return sub_2531DB454();
}

uint64_t sub_25316EB68(uint64_t a1)
{
  sub_2531DB3F4();
  sub_2531DB424();
  sub_2531DB434();
  return sub_2531DB454();
}

_WORD *sub_25316EC18@<X0>(_WORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 2) = 0;
  return result;
}

uint64_t sub_25316ECE4()
{
  sub_2531DB3F4();
  sub_2531DB424();
  return sub_2531DB454();
}

uint64_t sub_25316ED58(uint64_t a1)
{
  sub_2531DB3F4();
  sub_2531DB424();
  return sub_2531DB454();
}

unint64_t sub_25316EDB4()
{
  result = qword_27F58D2A0;
  if (!qword_27F58D2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D2A0);
  }

  return result;
}

unint64_t sub_25316EE0C()
{
  result = qword_27F58D2A8;
  if (!qword_27F58D2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D2A8);
  }

  return result;
}

unint64_t sub_25316EE64()
{
  result = qword_27F58D2B0;
  if (!qword_27F58D2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D2B0);
  }

  return result;
}

uint64_t _s7ClusterO4PathVwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s7ClusterO4PathVwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t _s6VendorO2IDVwet(unsigned __int16 *a1, int a2)
{
  if (a2)
  {
    if ((a2 + 0xFFFF) <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if ((a2 + 0xFFFF) < 0xFF0000)
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
        return (*a1 | (v4 << 16)) - 0xFFFF;
      }
    }

    else if (v3 == 2)
    {
      v4 = a1[1];
      if (a1[1])
      {
        return (*a1 | (v4 << 16)) - 0xFFFF;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (*(a1 + 2))
      {
        return (*a1 | (v4 << 16)) - 0xFFFF;
      }
    }
  }

  return 0;
}

_WORD *_s6VendorO2IDVwst(_WORD *result, int a2, int a3)
{
  if ((a3 + 0xFFFF) <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if ((a3 + 0xFFFF) < 0xFF0000)
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
    v5 = ((a2 - 1) >> 16) + 1;
    *result = a2 - 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      result[1] = 0;
    }

    else
    {
      *(result + 1) = 0;
    }
  }

  else if (v4)
  {
    *(result + 2) = 0;
  }

  return result;
}

unint64_t sub_25316F074()
{
  result = qword_27F58D2B8;
  if (!qword_27F58D2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D2B8);
  }

  return result;
}

unint64_t sub_25316F0C8()
{
  result = qword_27F58D2C0;
  if (!qword_27F58D2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D2C0);
  }

  return result;
}

void MTR.TaggedValue.tag.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t MTR.TaggedValue.tag.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t MTR.TaggedValue.value.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 32);
  *(a1 + 16) = v4;
  return sub_25316D004(v2, v3, v4);
}

uint64_t MTR.TaggedValue.value.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = sub_25316D2BC(*(v1 + 16), *(v1 + 24), *(v1 + 32));
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  *(v1 + 32) = v4;
  return result;
}

__n128 MTR.TaggedValue.init(tag:value:)@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X1>, __n128 *a3@<X8>)
{
  v3 = *(a1 + 8);
  v4 = a2[1].n128_u8[0];
  a3->n128_u64[0] = *a1;
  a3->n128_u8[8] = v3;
  result = *a2;
  a3[1] = *a2;
  a3[2].n128_u8[0] = v4;
  return result;
}

uint64_t MTR.TaggedValue.hash(into:)(uint64_t a1)
{
  v3 = __ROR8__(*v1, 32);
  if (*(v1 + 8))
  {
    v4 = *v1;
  }

  else
  {
    v4 = v3;
  }

  MEMORY[0x259BFF270](v4);
  return MTR.Value.hash(into:)(a1);
}

uint64_t MTR.TaggedValue.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_2531DB3F4();
  v3 = __ROR8__(v1, 32);
  if (v2)
  {
    v4 = v1;
  }

  else
  {
    v4 = v3;
  }

  MEMORY[0x259BFF270](v4);
  MTR.Value.hash(into:)(v6);
  return sub_2531DB454();
}

uint64_t sub_25316F300(uint64_t a1)
{
  v3 = __ROR8__(*v1, 32);
  if (*(v1 + 8))
  {
    v4 = *v1;
  }

  else
  {
    v4 = v3;
  }

  MEMORY[0x259BFF270](v4);
  return MTR.Value.hash(into:)(a1);
}

uint64_t sub_25316F374(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_2531DB3F4();
  v4 = __ROR8__(v2, 32);
  if (v3)
  {
    v5 = v2;
  }

  else
  {
    v5 = v4;
  }

  MEMORY[0x259BFF270](v5);
  MTR.Value.hash(into:)(v7);
  return sub_2531DB454();
}

BOOL static MTR.TaggedValue.canonicalOrdering(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = __ROR8__(*a1, 32);
  v3 = *a1;
  if (!*(a1 + 8))
  {
    v3 = v2;
  }

  v4 = __ROR8__(*a2, 32);
  if (*(a2 + 8))
  {
    v4 = *a2;
  }

  return v3 < v4;
}

uint64_t _s23HomeKitDaemonFoundation3MTRO11TaggedValueV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = __ROR8__(*a1, 32);
  v3 = *a1;
  if (!*(a1 + 8))
  {
    v3 = v2;
  }

  v4 = __ROR8__(*a2, 32);
  if (*(a2 + 8))
  {
    v4 = *a2;
  }

  if (v3 == v4)
  {
    v6 = *(a2 + 16);
    v5 = *(a2 + 24);
    v7 = *(a1 + 24);
    v8 = *(a1 + 32);
    v9 = *(a2 + 32);
    v15 = *(a1 + 16);
    v16 = v7;
    v17 = v8;
    v12 = v6;
    v13 = v5;
    v14 = v9;
    sub_25316D004(v15, v7, v8);
    sub_25316D004(v6, v5, v9);
    v10 = _s23HomeKitDaemonFoundation3MTRO5ValueO2eeoiySbAE_AEtFZ_0(&v15, &v12);
    sub_25316D2BC(v12, v13, v14);
    sub_25316D2BC(v15, v16, v17);
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

unint64_t sub_25316F50C()
{
  result = qword_27F58D2C8;
  if (!qword_27F58D2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D2C8);
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_25316F574(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
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

uint64_t sub_25316F5BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t MTR.Discriminator.init(rawValue:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result <= 0xFFFu)
  {
    v2 = result;
  }

  else
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 2) = result > 0xFFFu;
  return result;
}

uint64_t MTR.Discriminator.description.getter()
{
  sub_253168D7C();
  v0 = sub_2531DA7A4();
  MEMORY[0x259BFE570](v0);

  return 30768;
}

unint64_t MTR.Discriminator.debugDescription.getter()
{
  sub_2531DABC4();

  sub_253168D7C();
  v0 = sub_2531DA7A4();
  MEMORY[0x259BFE570](v0);

  MEMORY[0x259BFE570](41, 0xE100000000000000);
  return 0xD000000000000010;
}

unsigned __int16 *sub_25316F75C@<X0>(unsigned __int16 *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 0xFFF;
  if (v2 > 0xFFF)
  {
    LOWORD(v2) = 0;
  }

  *a2 = v2;
  *(a2 + 2) = v3;
  return result;
}

uint64_t sub_25316F828()
{
  sub_253168D7C();
  v0 = sub_2531DA7A4();
  MEMORY[0x259BFE570](v0);

  return 30768;
}

uint64_t static MTR.Discriminator.random()@<X0>(_WORD *a1@<X8>)
{
  result = sub_25316F8DC(4094);
  if ((result + 1) > 0xFFFu)
  {
    __break(1u);
  }

  else
  {
    *a1 = result + 1;
  }

  return result;
}

uint64_t sub_25316F8DC(uint64_t result)
{
  if (result)
  {
    v7[3] = v1;
    v7[4] = v2;
    v3 = result;
    v7[0] = 0;
    MEMORY[0x259BFFAA0](v7, 8);
    v4 = v3;
    v5 = LOWORD(v7[0]) * v3;
    if (v3 > (LOWORD(v7[0]) * v3) && -v3 % v3 > (LOWORD(v7[0]) * v3))
    {
      v6 = (-v3 % v3);
      do
      {
        v7[0] = 0;
        MEMORY[0x259BFFAA0](v7, 8);
        v5 = LOWORD(v7[0]) * v4;
      }

      while (v6 > (LOWORD(v7[0]) * v4));
    }

    return HIWORD(v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_25316F978()
{
  result = qword_27F58D2D0;
  if (!qword_27F58D2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D2D0);
  }

  return result;
}

unint64_t sub_25316F9DC()
{
  result = qword_27F58D2D8;
  if (!qword_27F58D2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D2D8);
  }

  return result;
}

unint64_t sub_25316FAFC()
{
  result = qword_27F58D2E0;
  if (!qword_27F58D2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D2E0);
  }

  return result;
}

id sub_25316FB68(uint64_t *a1, unsigned __int16 *a2)
{
  v2 = sub_25318AA74(*a2 | 0x15000000000, 3u, *a1, a1[1]);
  v3 = [v2 unsignedIntegerValue];

  return v3;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_25316FD44(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D2E8, &unk_2531E8370);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MTR.ServerEndpointFactory.makeReadOnlyAttribute<A>(attributeID:initialValue:requiredPrivilege:)(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6, uint64_t *a7)
{
  v11 = *a1;
  v18 = MEMORY[0x277D84F98];
  MTR.ValueEncoder.encode<A>(_:)(a2, a5, a7, v16);
  if (!v7)
  {
    v12 = v16[0];
    v13 = v16[1];
    v14 = v17;
    LODWORD(v18) = v11;
    a6 = (*(a6 + 24))(&v18, v16, a3, a4, a6);
    sub_25316D2BC(v12, v13, v14);
  }

  return a6;
}

id MTRSetupPayload.init(setupPasscode:discriminator:productID:vendorID:discoveryCapabilities:commissioningFlow:)(unsigned int *a1, unsigned __int16 *a2, unsigned __int16 *a3, unsigned __int16 *a4, uint64_t a5, uint64_t a6)
{
  v8 = *a1;
  v9 = *a2;
  v10 = *a3;
  v11 = *a4;
  v12 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v13 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
  v14 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedShort_];
  v15 = [v12 initWithSetupPasscode:v13 discriminator:v14];

  v16 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  v17 = v15;
  v18 = [v16 initWithUnsignedShort_];
  [v17 setProductID_];

  v19 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedShort_];
  [v17 setVendorID_];

  [v17 setDiscoveryCapabilities_];
  [v17 setCommissioningFlow_];

  return v17;
}

uint64_t dispatch thunk of MTR.DeviceController.controllerNodeID.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 40) + **(a3 + 40));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_253170160;

  return v9(a1, a2, a3);
}

uint64_t sub_253170160()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t dispatch thunk of MTR.DeviceController.addServerEndpoint(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 64) + **(a3 + 64));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_253170160;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of MTR.DeviceController.removeServerEndpoint(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 72) + **(a3 + 72));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_253170628;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of MTR.DeviceController.removeServerEndpoint(_:queue:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 80) + **(a6 + 80));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_253170628;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_25317062C()
{
  sub_25317079C(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t get_enum_tag_for_layout_string_23HomeKitDaemonFoundation3MTRO14ValueReferenceC7BackingO(uint64_t a1)
{
  v1 = *(a1 + 16) >> 6;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_2531706A8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 17))
  {
    return (*a1 + 13);
  }

  v3 = ((*(a1 + 16) >> 2) & 0xC | (*(a1 + 16) >> 6)) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_2531706FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 16) = 0;
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 16 * (((-a2 >> 2) & 3) - 4 * a2);
    }
  }

  return result;
}

uint64_t sub_253170760(uint64_t result, unsigned int a2)
{
  if (a2 < 3)
  {
    *(result + 16) = *(result + 16) & 0xF | (a2 << 6);
  }

  else
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    *(result + 16) = -64;
  }

  return result;
}

uint64_t sub_25317079C(uint64_t result, unint64_t a2, unsigned __int8 a3)
{
  if ((a3 >> 6) > 1u)
  {
    if (a3 >> 6 != 2)
    {
      return result;
    }
  }

  else if (!(a3 >> 6))
  {
    return sub_25316D2BC(result, a2, a3);
  }
}

void *MTR.Device.readCachedAttributeValue<A>(from:of:)@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t x8_0@<X8>)
{
  LOWORD(v17[0]) = *a1;
  *(v17 + 4) = *(a1 + 4);
  result = (*(a5 + 8))(v18, v17, a3, a5);
  if (!v7)
  {
    v12 = v19;
    if (v19 == 255)
    {
      v15 = objc_opt_self();
      v16 = sub_2531DA6C4();
      [v15 hmfErrorWithCode:2 reason:v16];

      return swift_willThrow();
    }

    else
    {
      v13 = v18[0];
      v14 = v18[1];
      v17[0] = MEMORY[0x277D84F98];
      MTR.ValueDecoder.decode<A>(_:from:)(v18, a4, a6, x8_0);

      return sub_253170AB0(v13, v14, v12);
    }
  }

  return result;
}

uint64_t MTR.Device.writeAttributeValue<A>(_:to:for:)(uint64_t a1, __int16 *a2, __int128 *a3, uint64_t a4, char *a5, uint64_t a6, uint64_t *a7)
{
  v10 = *a2;
  v11 = *(a2 + 2);
  v16 = a3[1];
  v17 = *a3;
  v12 = *(a3 + 32);
  *&v23 = MEMORY[0x277D84F98];
  MTR.ValueEncoder.encode<A>(_:)(a1, a5, a7, &v18);

  if (!v7)
  {
    v14 = v18;
    v15 = v19;
    v23 = v18;
    v24 = v19;
    v21 = v10;
    v22 = v11;
    v19 = v16;
    v18 = v17;
    v20 = v12;
    (*(a6 + 40))(&v23, &v21, &v18, a4, a6);
    return sub_25316D2BC(v14, *(&v14 + 1), v15);
  }

  return result;
}

double static MTR.ReadPollingStrategy.withDefaultStrategy.getter@<D0>(uint64_t a1@<X8>)
{
  result = 5.50483202e-175;
  *a1 = xmmword_2531E2770;
  *(a1 + 16) = 10;
  return result;
}

double static MTR.WriteThroughStrategy.withDefaultStrategy.getter@<D0>(uint64_t a1@<X8>)
{
  result = 7.54356585e-205;
  *a1 = xmmword_2531E2780;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  return result;
}

uint64_t sub_253170AB0(uint64_t result, unint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_25316D2BC(result, a2, a3);
  }

  return result;
}

uint64_t MTR.Device.readAttributeValue<A>(from:of:polling:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 80) = a6;
  *(v8 + 88) = a8;
  *(v8 + 72) = a1;
  v11 = *(a4 + 16);
  *(v8 + 60) = *a2;
  *(v8 + 64) = *(a2 + 4);
  *(v8 + 16) = *a4;
  *(v8 + 32) = v11;
  v14 = (*(a7 + 16) + **(a7 + 16));
  v12 = swift_task_alloc();
  *(v8 + 96) = v12;
  *v12 = v8;
  v12[1] = sub_253170C24;

  return v14(v8 + 40, v8 + 60, v8 + 16, a5, a7);
}

uint64_t sub_253170C24()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_253170E60;
  }

  else
  {
    v2 = sub_253170D38;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_253170D38()
{
  v13 = v0;
  v1 = *(v0 + 56);
  if (v1 == 255)
  {
    v7 = objc_opt_self();
    v8 = sub_2531DA6C4();
    [v7 hmfErrorWithCode:2 reason:v8];

    swift_willThrow();
  }

  else
  {
    v3 = *(v0 + 48);
    v4 = *(v0 + 80);
    v5 = *(v0 + 88);
    v6 = *(v0 + 72);
    v11[0] = *(v0 + 40);
    v2 = v11[0];
    v11[1] = v3;
    v12 = v1;
    MTR.ValueDecoder.decode<A>(_:from:)(v11, v4, v5, v6);

    sub_253170AB0(v2, v3, v1);
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t MTR.Device.invokeCommand<A>(by:payload:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 120) = a8;
  *(v9 + 128) = v8;
  *(v9 + 104) = a6;
  *(v9 + 112) = a7;
  *(v9 + 88) = a4;
  *(v9 + 96) = a5;
  *(v9 + 72) = a1;
  *(v9 + 80) = a3;
  *(v9 + 34) = *a2;
  v10 = *(a2 + 8);
  *(v9 + 68) = *(a2 + 4);
  *(v9 + 168) = v10;
  return MEMORY[0x2822009F8](sub_253170EB8, 0, 0);
}

uint64_t sub_253170EB8()
{
  v19 = v0;
  v1 = *(v0 + 112);
  v2 = *(v0 + 96);
  v3 = *(v0 + 80);
  v18 = MEMORY[0x277D84F98];
  MTR.ValueEncoder.encode<A>(_:)(v3, v2, *(v1 + 8), v16);
  v4 = *(v0 + 168);
  v5 = *(v0 + 68);
  v6 = *(v0 + 34);
  v15 = *(v0 + 104);

  v7 = v16[0];
  v8 = v16[1];
  *(v0 + 136) = v16[0];
  *(v0 + 144) = v8;
  v9 = v17;
  *(v0 + 33) = v17;
  *(v0 + 36) = v6;
  *(v0 + 40) = v5;
  *(v0 + 44) = v4;
  *(v0 + 48) = v7;
  *(v0 + 56) = v8;
  *(v0 + 64) = v9;
  v14 = (*(v15 + 48) + **(v15 + 48));
  v10 = swift_task_alloc();
  *(v0 + 152) = v10;
  *v10 = v0;
  v10[1] = sub_2531710A0;
  v11 = *(v0 + 104);
  v12 = *(v0 + 88);

  return v14(v0 + 16, v0 + 36, v0 + 48, v12, v11);
}

uint64_t sub_2531710A0()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_2531712C0;
  }

  else
  {
    v2 = sub_2531711B4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2531711B4()
{
  v13 = v0;
  v1 = *(v0 + 120);
  v2 = *(v0 + 72);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11[0] = v3;
  v11[1] = v4;
  v12 = v5;
  MTR.ValueDecoder.decode<A>(_:from:)(v11, AssociatedTypeWitness, v1, v2);
  v7 = *(v0 + 136);
  v8 = *(v0 + 144);
  LOBYTE(v2) = *(v0 + 33);

  sub_25316D2BC(v7, v8, v2);
  sub_25316D2BC(v3, v4, v5);
  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_2531712C0()
{
  sub_25316D2BC(*(v0 + 136), *(v0 + 144), *(v0 + 33));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t MTR.Device.invokeCommand<A>(by:payload:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 104) = a6;
  *(v7 + 112) = v6;
  *(v7 + 88) = a4;
  *(v7 + 96) = a5;
  *(v7 + 72) = a2;
  *(v7 + 80) = a3;
  *(v7 + 34) = *a1;
  v8 = *(a1 + 8);
  *(v7 + 68) = *(a1 + 4);
  *(v7 + 152) = v8;
  return MEMORY[0x2822009F8](sub_253171364, 0, 0);
}

uint64_t sub_253171364()
{
  v19 = v0;
  v1 = *(v0 + 104);
  v2 = *(v0 + 88);
  v3 = *(v0 + 72);
  v18 = MEMORY[0x277D84F98];
  MTR.ValueEncoder.encode<A>(_:)(v3, v2, *(v1 + 8), v16);
  v4 = *(v0 + 152);
  v5 = *(v0 + 68);
  v6 = *(v0 + 34);
  v15 = *(v0 + 96);

  v7 = v16[0];
  v8 = v16[1];
  *(v0 + 120) = v16[0];
  *(v0 + 128) = v8;
  v9 = v17;
  *(v0 + 33) = v17;
  *(v0 + 36) = v6;
  *(v0 + 40) = v5;
  *(v0 + 44) = v4;
  *(v0 + 48) = v7;
  *(v0 + 56) = v8;
  *(v0 + 64) = v9;
  v14 = (*(v15 + 48) + **(v15 + 48));
  v10 = swift_task_alloc();
  *(v0 + 136) = v10;
  *v10 = v0;
  v10[1] = sub_25317154C;
  v11 = *(v0 + 96);
  v12 = *(v0 + 80);

  return v14(v0 + 16, v0 + 36, v0 + 48, v12, v11);
}

uint64_t sub_25317154C()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_2531719A8;
  }

  else
  {
    v2 = sub_253171660;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_253171660()
{
  v36 = v0;
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v31[0] = v1;
  v31[1] = v2;
  v32 = v3;
  v33 = 0;
  v34 = 0;
  v35 = 10;
  if (_s23HomeKitDaemonFoundation3MTRO5ValueO2eeoiySbAE_AEtFZ_0(v31, &v33))
  {
    v5 = *(v0 + 120);
    v4 = *(v0 + 128);
    v6 = *(v0 + 33);
    sub_25316D2BC(v1, v2, v3);
    sub_25316D2BC(v5, v4, v6);
    v7 = *(v0 + 8);
  }

  else
  {
    v30 = sub_2531DAC24();
    swift_allocError();
    v9 = v8;
    *v8 = MEMORY[0x277D84F78] + 8;
    v33 = 0;
    v34 = 0xE000000000000000;
    sub_2531DABC4();

    v33 = 0xD000000000000023;
    v34 = 0x80000002531DBF00;
    if (v3 <= 4)
    {
      v20 = 0xE300000000000000;
      v21 = 7630441;
      v22 = 0xE400000000000000;
      v23 = 1953393013;
      v24 = 0xE500000000000000;
      v25 = 0x74616F6C66;
      if (v3 != 3)
      {
        v25 = 0x656C62756F64;
        v24 = 0xE600000000000000;
      }

      if (v3 != 2)
      {
        v23 = v25;
        v22 = v24;
      }

      if (!v3)
      {
        v21 = 1819242338;
        v20 = 0xE400000000000000;
      }

      if (v3 <= 1)
      {
        v18 = v21;
      }

      else
      {
        v18 = v23;
      }

      if (v3 <= 1)
      {
        v19 = v20;
      }

      else
      {
        v19 = v22;
      }
    }

    else
    {
      v10 = 0xE900000000000065;
      v11 = 0x7275746375727473;
      v12 = 0xE700000000000000;
      v13 = 0x6E776F6E6B6E75;
      v14 = 0xE400000000000000;
      if (v3 != 9)
      {
        v13 = 1819047278;
        v12 = 0xE400000000000000;
      }

      if (v3 != 8)
      {
        v11 = v13;
        v10 = v12;
      }

      v15 = 0xE600000000000000;
      v16 = 0x676E69727473;
      v17 = 1635017060;
      if (v3 != 6)
      {
        v17 = 0x7961727261;
        v14 = 0xE500000000000000;
      }

      if (v3 != 5)
      {
        v16 = v17;
        v15 = v14;
      }

      if (v3 <= 7)
      {
        v18 = v16;
      }

      else
      {
        v18 = v11;
      }

      if (v3 <= 7)
      {
        v19 = v15;
      }

      else
      {
        v19 = v10;
      }
    }

    v26 = *(v0 + 120);
    v29 = *(v0 + 128);
    v28 = *(v0 + 33);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D2F0, &qword_2531E27C8);
    MEMORY[0x259BFE570](v18, v19);

    MEMORY[0x259BFE570](0x616574736E692027, 0xEA00000000002E64);
    sub_2531DAC14();
    (*(*(v30 - 8) + 104))(v9, *MEMORY[0x277D84160]);
    swift_willThrow();
    sub_25316D2BC(v1, v2, v3);
    sub_25316D2BC(v26, v29, v28);
    v7 = *(v0 + 8);
  }

  return v7();
}

uint64_t sub_2531719A8()
{
  sub_25316D2BC(*(v0 + 120), *(v0 + 128), *(v0 + 33));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t MTR.Device.endpointIDs.getter(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, v8, a1);
  v13 = 0;
  v14 = 0x30000001DLL;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D2F8, &qword_2531E27D0);
  v10 = sub_2531721BC(&qword_27F58D300, &qword_27F58D2F8, &qword_2531E27D0, sub_2531720C0);
  MTR.Device.readCachedAttributeValue<A>(from:of:)(&v13, a1, v9, a2, v10, &v15);
  if (!v2)
  {
    a2 = v15;
  }

  (*(v5 + 8))(v7, a1);
  return a2;
}

uint64_t MTR.Device.deviceTypes(in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v7;
  (*(v6 + 16))(v9, v11, a2);
  v16 = v10;
  v17 = 29;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D310, &qword_2531E27D8);
  v13 = sub_2531721BC(&qword_27F58D318, &qword_27F58D310, &qword_2531E27D8, sub_253172114);
  MTR.Device.readCachedAttributeValue<A>(from:of:)(&v16, a2, v12, a3, v13, &v18);
  if (!v3)
  {
    a3 = v18;
  }

  (*(v6 + 8))(v9, a2);
  return a3;
}

uint64_t sub_253171D84(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v8 = *(a2 - 8);
  v9 = MEMORY[0x28223BE20](a1);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v9;
  (*(v8 + 16))(v11, v13, a2);
  WORD2(v17) = v12;
  v18 = a4;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D328, &unk_2531E27E0);
  v15 = sub_2531721BC(&qword_27F58D330, &qword_27F58D328, &unk_2531E27E0, sub_253172168);
  MTR.Device.readCachedAttributeValue<A>(from:of:)(&v17 + 4, a2, v14, a3, v15, &v19);
  if (!v4)
  {
    a3 = v19;
  }

  (*(v8 + 8))(v11, a2);
  return a3;
}

uint64_t MTR.Device.attributeIDs(in:clusterID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = *(a3 - 8);
  v9 = MEMORY[0x28223BE20](a1);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v9;
  v14 = *v13;
  (*(v8 + 16))(v11, v15);
  v20 = v12;
  v21 = v14;
  v22 = 65531;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D270, &qword_2531E1A28);
  v17 = sub_2531721BC(&qword_27F58D278, &qword_27F58D270, &qword_2531E1A28, sub_25316D4D8);
  MTR.Device.readCachedAttributeValue<A>(from:of:)(&v20, a3, v16, a4, v17, &v23);
  if (!v4)
  {
    v5 = v23;
  }

  (*(v8 + 8))(v11, a3);
  return v5;
}

unint64_t sub_2531720C0()
{
  result = qword_27F58D308;
  if (!qword_27F58D308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D308);
  }

  return result;
}

unint64_t sub_253172114()
{
  result = qword_27F58D320;
  if (!qword_27F58D320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D320);
  }

  return result;
}

unint64_t sub_253172168()
{
  result = qword_27F58D338;
  if (!qword_27F58D338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D338);
  }

  return result;
}

uint64_t sub_2531721BC(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t dispatch thunk of MTR.Device.readAttributeValue(from:polling:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 16) + **(a5 + 16));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_253170628;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of MTR.Device.readAttributeValues(from:polling:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 32) + **(a5 + 32));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_253170628;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of MTR.Device.invokeCommand(by:payload:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 48) + **(a5 + 48));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_253170160;

  return v13(a1, a2, a3, a4, a5);
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t _s19ReadPollingStrategyOwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s19ReadPollingStrategyOwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

uint64_t _s20WriteThroughStrategyOwCP(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

uint64_t _s20WriteThroughStrategyOwet(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
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

uint64_t _s20WriteThroughStrategyOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

unint64_t sub_2531727D0()
{
  result = qword_27F58D340;
  if (!qword_27F58D340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D340);
  }

  return result;
}

uint64_t sub_25317289C()
{
  sub_2531DABC4();

  strcpy(v2, "EpochSeconds(");
  HIWORD(v2[1]) = -4864;
  v0 = sub_2531DAF34();
  MEMORY[0x259BFE570](v0);

  MEMORY[0x259BFE570](41, 0xE100000000000000);
  MEMORY[0x259BFE570](v2[0], v2[1]);
}

uint64_t sub_253172968(__int16 a1)
{
  sub_2531DABC4();

  strcpy(v3, "Endpoint.ID(0x");
  HIBYTE(v3[1]) = -18;
  sub_253168D7C();
  v1 = sub_2531DA7A4();
  MEMORY[0x259BFE570](v1);

  MEMORY[0x259BFE570](41, 0xE100000000000000);
  MEMORY[0x259BFE570](v3[0], v3[1]);
}

uint64_t sub_253172A8C(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2531DABC4();

  sub_253169338();
  v6 = sub_2531DA7A4();
  MEMORY[0x259BFE570](v6);

  MEMORY[0x259BFE570](41, 0xE100000000000000);
  MEMORY[0x259BFE570](a3, a4);
}

uint64_t sub_253172B50(unint64_t a1, unint64_t a2)
{
  v46 = *MEMORY[0x277D85DE8];
  v4 = a2 >> 62;
  v30 = HIDWORD(a1);
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      v5 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v4 != 2)
  {
    return MEMORY[0x277D84F90];
  }

  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v5 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_49;
    }

    v5 = HIDWORD(a1) - a1;
  }

LABEL_10:
  v8 = MEMORY[0x277D84F90];
  if (v5)
  {
    v45 = MEMORY[0x277D84F90];
    sub_2531B4574(0, v5 & ~(v5 >> 63), 0);
    if (v4)
    {
      if (v4 == 2)
      {
        v9 = *(a1 + 16);
      }

      else
      {
        v9 = a1;
      }
    }

    else
    {
      v9 = 0;
    }

    v32 = v9;
    if (v5 < 0)
    {
      goto LABEL_48;
    }

    v10 = 0;
    v8 = v45;
    v29 = &v33 + v9;
    v31 = v4;
    do
    {
      if (v10 >= v5)
      {
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
      }

      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_41;
      }

      v12 = v32 + v10;
      if (v4 == 2)
      {
        if (v12 < *(a1 + 16))
        {
          goto LABEL_43;
        }

        if (v12 >= *(a1 + 24))
        {
          goto LABEL_45;
        }

        v17 = sub_2531DA044();
        if (!v17)
        {
          goto LABEL_51;
        }

        v14 = v17;
        v18 = sub_2531DA074();
        v16 = v12 - v18;
        if (__OFSUB__(v12, v18))
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (v4 != 1)
        {
          if (v12 >= BYTE6(a2))
          {
            goto LABEL_42;
          }

          v33 = a1;
          v34 = BYTE2(a1);
          v35 = BYTE3(a1);
          v36 = v30;
          v37 = BYTE5(a1);
          v38 = BYTE6(a1);
          v39 = HIBYTE(a1);
          v40 = a2;
          v41 = BYTE2(a2);
          v42 = BYTE3(a2);
          v43 = BYTE4(a2);
          v44 = BYTE5(a2);
          v19 = v29[v10];
          goto LABEL_36;
        }

        if (v12 < a1 || v12 >= a1 >> 32)
        {
          goto LABEL_44;
        }

        v13 = sub_2531DA044();
        if (!v13)
        {
          goto LABEL_50;
        }

        v14 = v13;
        v15 = sub_2531DA074();
        v16 = v12 - v15;
        if (__OFSUB__(v12, v15))
        {
          goto LABEL_46;
        }
      }

      v19 = *(v14 + v16);
LABEL_36:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D720, &qword_2531E48A8);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_2531E14E0;
      *(v20 + 56) = MEMORY[0x277D84B78];
      *(v20 + 64) = MEMORY[0x277D84BC0];
      *(v20 + 32) = v19;
      v21 = sub_2531DA6E4();
      v45 = v8;
      v24 = *(v8 + 16);
      v23 = *(v8 + 24);
      if (v24 >= v23 >> 1)
      {
        v28 = v21;
        v26 = v22;
        sub_2531B4574((v23 > 1), v24 + 1, 1);
        v22 = v26;
        v21 = v28;
        v8 = v45;
      }

      *(v8 + 16) = v24 + 1;
      v25 = v8 + 16 * v24;
      *(v25 + 32) = v21;
      *(v25 + 40) = v22;
      ++v10;
      LODWORD(v4) = v31;
    }

    while (v11 != v5);
  }

  return v8;
}

uint64_t sub_253172EC0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unsigned __int8 a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = _s12ValueDecoderV14ImplementationCMa();
  v11 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D1A0, &qword_2531E48A0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_2531E14E0;
  *(v12 + 32) = a1;
  *(v12 + 40) = a2;
  *(v12 + 48) = a3;
  v11[3] = v12;
  v11[2] = a4;
  v11[4] = 0x8000000000000000;
  swift_beginAccess();

  sub_25316D004(a1, a2, a3);
  sub_25316D004(a1, a2, a3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11[3] = v12;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = sub_25316A3D4(0, *(v12 + 16) + 1, 1, v12);
    v11[3] = v12;
  }

  v15 = *(v12 + 16);
  v14 = *(v12 + 24);
  if (v15 >= v14 >> 1)
  {
    v12 = sub_25316A3D4((v14 > 1), v15 + 1, 1, v12);
  }

  *(v12 + 16) = v15 + 1;
  v16 = v12 + 24 * v15;
  *(v16 + 32) = a1;
  *(v16 + 40) = a2;
  *(v16 + 48) = a3;
  v11[3] = v12;
  swift_endAccess();
  v18[3] = v10;
  v18[4] = sub_253180A40(&qword_27F58D718, _s12ValueDecoderV14ImplementationCMa, &unk_2531E5EA4);
  v18[0] = v11;
  sub_25316D004(a1, a2, a3);

  MTR.Cluster.Thermostat.AppleActivePresetChangedEventStruct.init(from:)(v18, a5);
  v11[4] = 0x8000000000000000;

  sub_25319B61C();
  sub_25316D2BC(a1, a2, a3);
}

uint64_t sub_2531730E4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unsigned __int8 a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = _s12ValueDecoderV14ImplementationCMa();
  v11 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D1A0, &qword_2531E48A0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_2531E14E0;
  *(v12 + 32) = a1;
  *(v12 + 40) = a2;
  *(v12 + 48) = a3;
  v11[3] = v12;
  v11[2] = a4;
  v11[4] = 0x8000000000000000;
  swift_beginAccess();

  sub_25316D004(a1, a2, a3);
  sub_25316D004(a1, a2, a3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11[3] = v12;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = sub_25316A3D4(0, *(v12 + 16) + 1, 1, v12);
    v11[3] = v12;
  }

  v15 = *(v12 + 16);
  v14 = *(v12 + 24);
  if (v15 >= v14 >> 1)
  {
    v12 = sub_25316A3D4((v14 > 1), v15 + 1, 1, v12);
  }

  *(v12 + 16) = v15 + 1;
  v16 = v12 + 24 * v15;
  *(v16 + 32) = a1;
  *(v16 + 40) = a2;
  *(v16 + 48) = a3;
  v11[3] = v12;
  swift_endAccess();
  v18[3] = v10;
  v18[4] = sub_253180A40(&qword_27F58D718, _s12ValueDecoderV14ImplementationCMa, &unk_2531E5EA4);
  v18[0] = v11;
  sub_25316D004(a1, a2, a3);

  MTR.Cluster.AppleAlvaradoGuidanceConsumer.LoadEventStruct.init(from:)(v18, a5);
  v11[4] = 0x8000000000000000;

  sub_25319B61C();
  sub_25316D2BC(a1, a2, a3);
}

uint64_t sub_253173308@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unsigned __int8 a3@<W2>, uint64_t a4@<X3>, _DWORD *a5@<X8>)
{
  v10 = _s12ValueDecoderV14ImplementationCMa();
  v11 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D1A0, &qword_2531E48A0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_2531E14E0;
  *(v12 + 32) = a1;
  *(v12 + 40) = a2;
  *(v12 + 48) = a3;
  v11[3] = v12;
  v11[2] = a4;
  v11[4] = 0x8000000000000000;
  swift_beginAccess();

  sub_25316D004(a1, a2, a3);
  sub_25316D004(a1, a2, a3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11[3] = v12;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = sub_25316A3D4(0, *(v12 + 16) + 1, 1, v12);
    v11[3] = v12;
  }

  v15 = *(v12 + 16);
  v14 = *(v12 + 24);
  if (v15 >= v14 >> 1)
  {
    v12 = sub_25316A3D4((v14 > 1), v15 + 1, 1, v12);
  }

  *(v12 + 16) = v15 + 1;
  v16 = v12 + 24 * v15;
  *(v16 + 32) = a1;
  *(v16 + 40) = a2;
  *(v16 + 48) = a3;
  v11[3] = v12;
  swift_endAccess();
  v18[3] = v10;
  v18[4] = sub_253180A40(&qword_27F58D718, _s12ValueDecoderV14ImplementationCMa, &unk_2531E5EA4);
  v18[0] = v11;
  sub_25316D004(a1, a2, a3);

  MTR.Cluster.AppleAlvaradoGuidanceConsumer.ReducePeriodEventStruct.init(from:)(v18, a5);
  v11[4] = 0x8000000000000000;

  sub_25319B61C();
  sub_25316D2BC(a1, a2, a3);
}

uint64_t static MTR.Cluster.Thermostat.invokeAppleSetCurrentSuggestedPreset(device:endpoint:currentSuggestedPreset:)(uint64_t a1, _WORD *a2, uint64_t a3)
{
  *(v3 + 40) = a1;
  *(v3 + 38) = *a2;
  *(v3 + 48) = *a3;
  *(v3 + 92) = *(a3 + 16);
  *(v3 + 37) = *(a3 + 20);
  return MEMORY[0x2822009F8](sub_253173578, 0, 0);
}

uint64_t sub_253173578()
{
  v1 = *(v0 + 37);
  v2 = *(v0 + 92);
  v4 = *(v0 + 48);
  v3 = *(v0 + 56);
  v5 = *(v0 + 38);
  v6 = *(v0 + 40);
  v8 = v6[3];
  v7 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v8);
  *(v0 + 80) = v5;
  *(v0 + 84) = 0x134900F300000201;
  *(v0 + 16) = v4;
  *(v0 + 24) = v3;
  *(v0 + 32) = v2;
  *(v0 + 36) = v1;
  v9 = swift_task_alloc();
  *(v0 + 64) = v9;
  v10 = sub_2531737E8();
  *v9 = v0;
  v9[1] = sub_25317369C;

  return MTR.Device.invokeCommand<A>(by:payload:)(v0 + 80, v0 + 16, v8, &type metadata for MTR.Cluster.Thermostat.AppleSetCurrentSuggestedPresetCommand, v7, v10);
}

uint64_t sub_25317369C()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2531737D0, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

unint64_t sub_2531737E8()
{
  result = qword_27F58D348;
  if (!qword_27F58D348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D348);
  }

  return result;
}

uint64_t static MTR.Cluster.Thermostat.invokeAppleClearCurrentSuggestedPreset(device:endpoint:)(uint64_t a1, _WORD *a2)
{
  *(v2 + 16) = a1;
  *(v2 + 52) = *a2;
  return MEMORY[0x2822009F8](sub_253173864, 0, 0);
}

uint64_t sub_253173864()
{
  v1 = *(v0 + 52);
  v2 = *(v0 + 16);
  v4 = v2[3];
  v3 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v4);
  *(v0 + 40) = v1;
  *(v0 + 44) = 0x134900F400000201;
  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  v7 = sub_253173AA0();
  *v5 = v0;
  v5[1] = sub_253173954;

  return MTR.Device.invokeCommand<A>(by:payload:)(v0 + 40, v6, v4, &type metadata for MTR.Cluster.Thermostat.AppleEmptyStruct, v3, v7);
}

uint64_t sub_253173954()
{
  v2 = *v1;
  *(v2 + 32) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_253173A88, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

unint64_t sub_253173AA0()
{
  result = qword_27F58D350;
  if (!qword_27F58D350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D350);
  }

  return result;
}

uint64_t static MTR.Cluster.Thermostat.invokeAppleSetPredictedSuggestedPreset(device:endpoint:predictedSuggestedPreset:)(uint64_t a1, _WORD *a2, uint64_t a3)
{
  *(v3 + 48) = a1;
  *(v3 + 92) = *a2;
  *(v3 + 56) = *a3;
  *(v3 + 88) = *(a3 + 16);
  return MEMORY[0x2822009F8](sub_253173B30, 0, 0);
}

uint64_t sub_253173B30()
{
  v1 = *(v0 + 88);
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);
  v4 = *(v0 + 92);
  v5 = *(v0 + 48);
  v7 = v5[3];
  v6 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v7);
  *(v0 + 36) = v4;
  *(v0 + 16) = v3;
  *(v0 + 40) = 0x134900F500000201;
  *(v0 + 24) = v2;
  *(v0 + 32) = v1;
  v8 = swift_task_alloc();
  *(v0 + 72) = v8;
  v9 = sub_253173D90();
  *v8 = v0;
  v8[1] = sub_253173C44;

  return MTR.Device.invokeCommand<A>(by:payload:)(v0 + 36, v0 + 16, v7, &type metadata for MTR.Cluster.Thermostat.AppleSetPredictedSuggestedPresetCommand, v6, v9);
}

uint64_t sub_253173C44()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_253173D78, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

unint64_t sub_253173D90()
{
  result = qword_27F58D358;
  if (!qword_27F58D358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D358);
  }

  return result;
}

uint64_t static MTR.Cluster.Thermostat.invokeAppleClearPredictedSuggestedPreset(device:endpoint:)(uint64_t a1, _WORD *a2)
{
  *(v2 + 16) = a1;
  *(v2 + 52) = *a2;
  return MEMORY[0x2822009F8](sub_253173E0C, 0, 0);
}

uint64_t sub_253173E0C()
{
  v1 = *(v0 + 52);
  v2 = *(v0 + 16);
  v4 = v2[3];
  v3 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v4);
  *(v0 + 40) = v1;
  *(v0 + 44) = 0x134900F600000201;
  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  v7 = sub_253173AA0();
  *v5 = v0;
  v5[1] = sub_253173EFC;

  return MTR.Device.invokeCommand<A>(by:payload:)(v0 + 40, v6, v4, &type metadata for MTR.Cluster.Thermostat.AppleEmptyStruct, v3, v7);
}

uint64_t sub_253173EFC()
{
  v2 = *v1;
  *(v2 + 32) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_253180AF8, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t static MTR.Cluster.Thermostat.invokeAppleSetPrimaryFabricSuggestingPresets(device:endpoint:)(uint64_t a1, _WORD *a2)
{
  *(v2 + 16) = a1;
  *(v2 + 52) = *a2;
  return MEMORY[0x2822009F8](sub_253174058, 0, 0);
}

uint64_t sub_253174058()
{
  v1 = *(v0 + 52);
  v2 = *(v0 + 16);
  v4 = v2[3];
  v3 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v4);
  *(v0 + 40) = v1;
  *(v0 + 44) = 0x134900F700000201;
  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  v7 = sub_253173AA0();
  *v5 = v0;
  v5[1] = sub_253173EFC;

  return MTR.Device.invokeCommand<A>(by:payload:)(v0 + 40, v6, v4, &type metadata for MTR.Cluster.Thermostat.AppleEmptyStruct, v3, v7);
}

uint64_t static MTR.Cluster.Thermostat.invokeAppleClearPrimaryFabricSuggestingPresets(device:endpoint:)(uint64_t a1, _WORD *a2)
{
  *(v2 + 16) = a1;
  *(v2 + 52) = *a2;
  return MEMORY[0x2822009F8](sub_253174170, 0, 0);
}

uint64_t sub_253174170()
{
  v1 = *(v0 + 52);
  v2 = *(v0 + 16);
  v4 = v2[3];
  v3 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v4);
  *(v0 + 40) = v1;
  *(v0 + 44) = 0x134900F800000201;
  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  v7 = sub_253173AA0();
  *v5 = v0;
  v5[1] = sub_253173EFC;

  return MTR.Device.invokeCommand<A>(by:payload:)(v0 + 40, v6, v4, &type metadata for MTR.Cluster.Thermostat.AppleEmptyStruct, v3, v7);
}

void *static MTR.Cluster.Thermostat.readCachedLocalTemperature(device:endpoint:)(void *a1, __int16 *a2)
{
  v3 = *a2;
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  v7[0] = v3;
  v8 = 513;
  result = MTR.Device.readCachedAttributeValue<A>(from:of:)(v7, v4, MEMORY[0x277D84958], v5, MEMORY[0x277D84980], &v9);
  if (!v2)
  {
    return v9;
  }

  return result;
}

uint64_t static MTR.Cluster.Thermostat.readPresetTypes(device:endpoint:)(uint64_t a1, _WORD *a2)
{
  *(v2 + 48) = a1;
  *(v2 + 84) = *a2;
  return MEMORY[0x2822009F8](sub_253174318, 0, 0);
}

uint64_t sub_253174318()
{
  v1 = *(v0 + 84);
  v2 = *(v0 + 48);
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v3);
  *(v0 + 72) = v1;
  *(v0 + 76) = 0x4800000201;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D360, &qword_2531E2968);
  *(v0 + 16) = xmmword_2531E2770;
  *(v0 + 32) = 10;
  v6 = swift_task_alloc();
  *(v0 + 56) = v6;
  v7 = sub_25317455C();
  *v6 = v0;
  v6[1] = sub_253174448;

  return MTR.Device.readAttributeValue<A>(from:of:polling:)(v0 + 40, v0 + 72, v5, v0 + 16, v3, v5, v4, v7);
}

uint64_t sub_253174448()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_253180A88;
  }

  else
  {
    v2 = sub_253180B88;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

unint64_t sub_25317455C()
{
  result = qword_27F58D368;
  if (!qword_27F58D368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F58D360, &qword_2531E2968);
    sub_2531745E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D368);
  }

  return result;
}

unint64_t sub_2531745E0()
{
  result = qword_27F58D370;
  if (!qword_27F58D370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D370);
  }

  return result;
}

uint64_t static MTR.Cluster.Thermostat.readNumberOfPresets(device:endpoint:)(uint64_t a1, _WORD *a2)
{
  *(v2 + 40) = a1;
  *(v2 + 76) = *a2;
  return MEMORY[0x2822009F8](sub_25317465C, 0, 0);
}

uint64_t sub_25317465C()
{
  v1 = *(v0 + 76);
  v2 = *(v0 + 40);
  v4 = v2[3];
  v3 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v4);
  *(v0 + 64) = v1;
  *(v0 + 16) = xmmword_2531E2770;
  *(v0 + 68) = 0x4A00000201;
  *(v0 + 32) = 10;
  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  *v5 = v0;
  v5[1] = sub_253174770;
  v6 = MEMORY[0x277D84B78];
  v7 = MEMORY[0x277D84BA0];
  v8 = MEMORY[0x277D84B78];

  return MTR.Device.readAttributeValue<A>(from:of:polling:)(v0 + 78, v0 + 64, v6, v0 + 16, v4, v8, v3, v7);
}

uint64_t sub_253174770()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_2531748A0;
  }

  else
  {
    v2 = sub_253174884;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t static MTR.Cluster.Thermostat.readPresets(device:endpoint:)(uint64_t a1, _WORD *a2)
{
  *(v2 + 48) = a1;
  *(v2 + 84) = *a2;
  return MEMORY[0x2822009F8](sub_2531748E0, 0, 0);
}

uint64_t sub_2531748E0()
{
  v1 = *(v0 + 84);
  v2 = *(v0 + 48);
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v3);
  *(v0 + 72) = v1;
  *(v0 + 76) = 0x5000000201;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D378, &qword_2531E2980);
  *(v0 + 16) = xmmword_2531E2770;
  *(v0 + 32) = 10;
  v6 = swift_task_alloc();
  *(v0 + 56) = v6;
  v7 = sub_253174B58();
  *v6 = v0;
  v6[1] = sub_253174A10;

  return MTR.Device.readAttributeValue<A>(from:of:polling:)(v0 + 40, v0 + 72, v5, v0 + 16, v3, v5, v4, v7);
}

uint64_t sub_253174A10()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_253174B40;
  }

  else
  {
    v2 = sub_253174B24;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

unint64_t sub_253174B58()
{
  result = qword_27F58D380;
  if (!qword_27F58D380)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F58D378, &qword_2531E2980);
    sub_253174BDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D380);
  }

  return result;
}

unint64_t sub_253174BDC()
{
  result = qword_27F58D388;
  if (!qword_27F58D388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D388);
  }

  return result;
}

uint64_t static MTR.Cluster.Thermostat.readTemperatureSetpointHoldDuration(device:endpoint:)(uint64_t a1, _WORD *a2)
{
  *(v2 + 40) = a1;
  *(v2 + 80) = *a2;
  return MEMORY[0x2822009F8](sub_253174C9C, 0, 0);
}

uint64_t sub_253174C9C()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 40);
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v3);
  *(v0 + 64) = v1;
  *(v0 + 68) = 0x2400000201;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D390, &qword_2531E2990);
  *(v0 + 16) = xmmword_2531E2770;
  *(v0 + 32) = 10;
  v6 = swift_task_alloc();
  *(v0 + 48) = v6;
  v7 = sub_253175D18(&qword_27F58D398, &qword_27F58D390, &qword_2531E2990);
  *v6 = v0;
  v6[1] = sub_253174DF4;

  return MTR.Device.readAttributeValue<A>(from:of:polling:)(v0 + 76, v0 + 64, v5, v0 + 16, v3, v5, v4, v7);
}

uint64_t sub_253174DF4()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_2531748A0;
  }

  else
  {
    v2 = sub_253174F08;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t static MTR.Cluster.Thermostat.readAppleCurrentSuggestedPresetHandle(device:endpoint:)(uint64_t a1, _WORD *a2)
{
  *(v2 + 56) = a1;
  *(v2 + 92) = *a2;
  return MEMORY[0x2822009F8](sub_253174F5C, 0, 0);
}

uint64_t sub_253174F5C()
{
  v1 = *(v0 + 92);
  v2 = *(v0 + 56);
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v3);
  *(v0 + 80) = v1;
  *(v0 + 84) = 0x1349000900000201;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D3A0, &qword_2531E29A0);
  *(v0 + 16) = xmmword_2531E2770;
  *(v0 + 32) = 10;
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  v7 = sub_2531751BC();
  *v6 = v0;
  v6[1] = sub_25317508C;

  return MTR.Device.readAttributeValue<A>(from:of:polling:)(v0 + 40, v0 + 80, v5, v0 + 16, v3, v5, v4, v7);
}

uint64_t sub_25317508C()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_2531737D0;
  }

  else
  {
    v2 = sub_2531751A0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

unint64_t sub_2531751BC()
{
  result = qword_27F58D3A8;
  if (!qword_27F58D3A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F58D3A0, &qword_2531E29A0);
    sub_253175240();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D3A8);
  }

  return result;
}

unint64_t sub_253175240()
{
  result = qword_27F58D3B0;
  if (!qword_27F58D3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D3B0);
  }

  return result;
}

uint64_t static MTR.Cluster.Thermostat.readApplePredictedSuggestedPreset(device:endpoint:)(uint64_t a1, uint64_t a2, _WORD *a3)
{
  *(v3 + 40) = a1;
  *(v3 + 48) = a2;
  *(v3 + 84) = *a3;
  return MEMORY[0x2822009F8](sub_2531752BC, 0, 0);
}

uint64_t sub_2531752BC()
{
  v1 = *(v0 + 84);
  v2 = *(v0 + 48);
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v3);
  *(v0 + 72) = v1;
  *(v0 + 76) = 0x1349000A00000201;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D3B8, &qword_2531E29B0);
  *(v0 + 16) = xmmword_2531E2770;
  *(v0 + 32) = 10;
  v6 = swift_task_alloc();
  *(v0 + 56) = v6;
  v7 = sub_253175520();
  *v6 = v0;
  v6[1] = sub_2531753EC;
  v8 = *(v0 + 40);

  return MTR.Device.readAttributeValue<A>(from:of:polling:)(v8, v0 + 72, v5, v0 + 16, v3, v5, v4, v7);
}

uint64_t sub_2531753EC()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_253180A88, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

unint64_t sub_253175520()
{
  result = qword_27F58D3C0;
  if (!qword_27F58D3C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F58D3B8, &qword_2531E29B0);
    sub_2531755A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D3C0);
  }

  return result;
}

unint64_t sub_2531755A4()
{
  result = qword_27F58D3C8;
  if (!qword_27F58D3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D3C8);
  }

  return result;
}

uint64_t static MTR.Cluster.Thermostat.readAppleCurrentSuggestedPresetExpiration(device:endpoint:)(uint64_t a1, uint64_t a2, _WORD *a3)
{
  *(v3 + 40) = a1;
  *(v3 + 48) = a2;
  *(v3 + 84) = *a3;
  return MEMORY[0x2822009F8](sub_253175620, 0, 0);
}

uint64_t sub_253175620()
{
  v1 = *(v0 + 84);
  v2 = *(v0 + 48);
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v3);
  *(v0 + 72) = v1;
  *(v0 + 76) = 0x1349000B00000201;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D3D0, &qword_2531E29C0);
  *(v0 + 16) = xmmword_2531E2770;
  *(v0 + 32) = 10;
  v6 = swift_task_alloc();
  *(v0 + 56) = v6;
  v7 = sub_253175750();
  *v6 = v0;
  v6[1] = sub_2531753EC;
  v8 = *(v0 + 40);

  return MTR.Device.readAttributeValue<A>(from:of:polling:)(v8, v0 + 72, v5, v0 + 16, v3, v5, v4, v7);
}

unint64_t sub_253175750()
{
  result = qword_27F58D3D8;
  if (!qword_27F58D3D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F58D3D0, &qword_2531E29C0);
    sub_2531757D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D3D8);
  }

  return result;
}

unint64_t sub_2531757D4()
{
  result = qword_27F58D3E0;
  if (!qword_27F58D3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D3E0);
  }

  return result;
}

uint64_t static MTR.Cluster.Thermostat.readAppleSuggestedPresetNotFollowingReason(device:endpoint:)(uint64_t a1, uint64_t a2, _WORD *a3)
{
  *(v3 + 40) = a1;
  *(v3 + 48) = a2;
  *(v3 + 84) = *a3;
  return MEMORY[0x2822009F8](sub_253175850, 0, 0);
}

uint64_t sub_253175850()
{
  v1 = *(v0 + 84);
  v2 = *(v0 + 48);
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v3);
  *(v0 + 72) = v1;
  *(v0 + 76) = 0x1349000C00000201;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D3E8, &qword_2531E29D0);
  *(v0 + 16) = xmmword_2531E2770;
  *(v0 + 32) = 10;
  v6 = swift_task_alloc();
  *(v0 + 56) = v6;
  v7 = sub_253175980();
  *v6 = v0;
  v6[1] = sub_2531753EC;
  v8 = *(v0 + 40);

  return MTR.Device.readAttributeValue<A>(from:of:polling:)(v8, v0 + 72, v5, v0 + 16, v3, v5, v4, v7);
}

unint64_t sub_253175980()
{
  result = qword_27F58D3F0;
  if (!qword_27F58D3F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F58D3E8, &qword_2531E29D0);
    sub_253175A04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D3F0);
  }

  return result;
}

unint64_t sub_253175A04()
{
  result = qword_27F58D3F8;
  if (!qword_27F58D3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D3F8);
  }

  return result;
}

uint64_t static MTR.Cluster.Thermostat.readApplePrimaryFabricSuggestingPresets(device:endpoint:)(uint64_t a1, _WORD *a2)
{
  *(v2 + 40) = a1;
  *(v2 + 76) = *a2;
  return MEMORY[0x2822009F8](sub_253175A80, 0, 0);
}

uint64_t sub_253175A80()
{
  v1 = *(v0 + 76);
  v2 = *(v0 + 40);
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v3);
  *(v0 + 64) = v1;
  *(v0 + 68) = 0x1349000D00000201;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D400, &qword_2531E29E0);
  *(v0 + 16) = xmmword_2531E2770;
  *(v0 + 32) = 10;
  v6 = swift_task_alloc();
  *(v0 + 48) = v6;
  v7 = sub_253175D18(&qword_27F58D408, &qword_27F58D400, &qword_2531E29E0);
  *v6 = v0;
  v6[1] = sub_253175BD8;

  return MTR.Device.readAttributeValue<A>(from:of:polling:)(v0 + 78, v0 + 64, v5, v0 + 16, v3, v5, v4, v7);
}

uint64_t sub_253175BD8()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_2531748A0;
  }

  else
  {
    v2 = sub_253175CEC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_253175D18(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t static MTR.Cluster.Thermostat.readApplePresetsAdditionalInfo(device:endpoint:)(uint64_t a1, _WORD *a2)
{
  *(v2 + 48) = a1;
  *(v2 + 84) = *a2;
  return MEMORY[0x2822009F8](sub_253175DA8, 0, 0);
}

uint64_t sub_253175DA8()
{
  v1 = *(v0 + 84);
  v2 = *(v0 + 48);
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v3);
  *(v0 + 72) = v1;
  *(v0 + 76) = 0x1349001000000201;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D410, &qword_2531E29F0);
  *(v0 + 16) = xmmword_2531E2770;
  *(v0 + 32) = 10;
  v6 = swift_task_alloc();
  *(v0 + 56) = v6;
  v7 = sub_253175ED8();
  *v6 = v0;
  v6[1] = sub_253174448;

  return MTR.Device.readAttributeValue<A>(from:of:polling:)(v0 + 40, v0 + 72, v5, v0 + 16, v3, v5, v4, v7);
}

unint64_t sub_253175ED8()
{
  result = qword_27F58D418;
  if (!qword_27F58D418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F58D410, &qword_2531E29F0);
    sub_253175F5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D418);
  }

  return result;
}

unint64_t sub_253175F5C()
{
  result = qword_27F58D420;
  if (!qword_27F58D420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D420);
  }

  return result;
}

void *sub_253175FF4(void *a1, __int16 *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void), double a6)
{
  v11 = *a2;
  v12 = a1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v12);
  v17 = v11;
  v18 = a6;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v15 = a5();
  result = MTR.Device.readCachedAttributeValue<A>(from:of:)(&v17, v12, v14, v13, v15, &v19);
  if (!v6)
  {
    return v19;
  }

  return result;
}

uint64_t static MTR.Cluster.Thermostat.readAppleDefaultHoldPolicy(device:endpoint:)(uint64_t a1, uint64_t a2, _WORD *a3)
{
  *(v3 + 40) = a1;
  *(v3 + 48) = a2;
  *(v3 + 84) = *a3;
  return MEMORY[0x2822009F8](sub_2531760DC, 0, 0);
}

uint64_t sub_2531760DC()
{
  v1 = *(v0 + 84);
  v2 = *(v0 + 48);
  v4 = v2[3];
  v3 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v4);
  *(v0 + 72) = v1;
  *(v0 + 16) = xmmword_2531E2770;
  *(v0 + 76) = 0x1349001100000201;
  *(v0 + 32) = 10;
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  v6 = sub_253176324();
  *v5 = v0;
  v5[1] = sub_2531761F0;
  v7 = *(v0 + 40);

  return MTR.Device.readAttributeValue<A>(from:of:polling:)(v7, v0 + 72, &type metadata for MTR.Cluster.Thermostat.AppleHoldPolicyStruct, v0 + 16, v4, &type metadata for MTR.Cluster.Thermostat.AppleHoldPolicyStruct, v3, v6);
}

uint64_t sub_2531761F0()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_253174B40, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

unint64_t sub_253176324()
{
  result = qword_27F58D428;
  if (!qword_27F58D428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D428);
  }

  return result;
}

uint64_t static MTR.Cluster.Thermostat.readAppleHoldUntilPresetSuggestionChange(device:endpoint:)(uint64_t a1, _WORD *a2)
{
  *(v2 + 40) = a1;
  *(v2 + 76) = *a2;
  return MEMORY[0x2822009F8](sub_2531763A0, 0, 0);
}

uint64_t sub_2531763A0()
{
  v1 = *(v0 + 76);
  v2 = *(v0 + 40);
  v4 = v2[3];
  v3 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v4);
  *(v0 + 64) = v1;
  *(v0 + 16) = xmmword_2531E2770;
  *(v0 + 68) = 0x1349000E00000201;
  *(v0 + 32) = 10;
  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  *v5 = v0;
  v5[1] = sub_2531764B4;
  v6 = MEMORY[0x277D839B0];
  v7 = MEMORY[0x277D839D0];
  v8 = MEMORY[0x277D839B0];

  return MTR.Device.readAttributeValue<A>(from:of:polling:)(v0 + 78, v0 + 64, v6, v0 + 16, v4, v8, v3, v7);
}

uint64_t sub_2531764B4()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_253180A8C;
  }

  else
  {
    v2 = sub_253180B8C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t static MTR.Cluster.Thermostat.readValenciaStateEnabled(device:endpoint:)(uint64_t a1, _WORD *a2)
{
  *(v2 + 40) = a1;
  *(v2 + 76) = *a2;
  return MEMORY[0x2822009F8](sub_2531765F0, 0, 0);
}

uint64_t sub_2531765F0()
{
  v1 = *(v0 + 76);
  v2 = *(v0 + 40);
  v4 = v2[3];
  v3 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v4);
  *(v0 + 64) = v1;
  *(v0 + 16) = xmmword_2531E2770;
  *(v0 + 68) = 0x1349000200000201;
  *(v0 + 32) = 10;
  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  *v5 = v0;
  v5[1] = sub_253176704;
  v6 = MEMORY[0x277D839B0];
  v7 = MEMORY[0x277D839D0];
  v8 = MEMORY[0x277D839B0];

  return MTR.Device.readAttributeValue<A>(from:of:polling:)(v0 + 78, v0 + 64, v6, v0 + 16, v4, v8, v3, v7);
}

uint64_t sub_253176704()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_253176834;
  }

  else
  {
    v2 = sub_253176818;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t static MTR.Cluster.Thermostat.readAppleIgnorePredictedPresets(device:endpoint:)(uint64_t a1, _WORD *a2)
{
  *(v2 + 40) = a1;
  *(v2 + 76) = *a2;
  return MEMORY[0x2822009F8](sub_25317689C, 0, 0);
}

uint64_t sub_25317689C()
{
  v1 = *(v0 + 76);
  v2 = *(v0 + 40);
  v4 = v2[3];
  v3 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v4);
  *(v0 + 64) = v1;
  *(v0 + 16) = xmmword_2531E2770;
  *(v0 + 68) = 0x1349001300000201;
  *(v0 + 32) = 10;
  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  *v5 = v0;
  v5[1] = sub_2531764B4;
  v6 = MEMORY[0x277D839B0];
  v7 = MEMORY[0x277D839D0];
  v8 = MEMORY[0x277D839B0];

  return MTR.Device.readAttributeValue<A>(from:of:polling:)(v0 + 78, v0 + 64, v6, v0 + 16, v4, v8, v3, v7);
}

uint64_t sub_2531769F8(void *a1, __int16 *a2, double a3)
{
  v5 = *a2;
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  v10 = v5;
  v11 = a3;
  MTR.Device.readCachedAttributeValue<A>(from:of:)(&v10, v6, MEMORY[0x277D839B0], v7, MEMORY[0x277D839D0], &v12);
  if (!v3)
  {
    v8 = v12;
  }

  return v8 & 1;
}

uint64_t MTR.Cluster.Thermostat.SystemModeEnum.init(rawValue:)@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (result > 9u)
  {
    *a2 = 9;
  }

  else
  {
    *a2 = byte_2531E48B2[result];
  }

  return result;
}

uint64_t sub_253176C8C()
{
  sub_2531DB3F4();
  sub_2531DB414();
  return sub_2531DB454();
}

uint64_t sub_253176D14(uint64_t a1)
{
  sub_2531DB3F4();
  sub_2531DB414();
  return sub_2531DB454();
}

uint64_t MTR.Cluster.Thermostat.PresetScenarioEnum.init(rawValue:)@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if ((result + 2) > 8u)
  {
    *a2 = 7;
  }

  else
  {
    *a2 = byte_2531E48BC[(result + 2)];
  }

  return result;
}

uint64_t sub_253176ED8()
{
  sub_2531DB3F4();
  sub_2531DB414();
  return sub_2531DB454();
}

uint64_t sub_253176F78(uint64_t a1)
{
  sub_2531DB3F4();
  sub_2531DB414();
  return sub_2531DB454();
}

uint64_t MTR.Cluster.Thermostat.ValenciaStateNotFollowingReasonEnum.init(rawValue:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  v2 = result;
  if (result >= 3u)
  {
    v2 = 3;
  }

  *a2 = v2;
  return result;
}

uint64_t MTR.Cluster.Thermostat.AppleActivePresetChangedReasonEnum.init(rawValue:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  v2 = result;
  if (result >= 6u)
  {
    v2 = 6;
  }

  *a2 = v2;
  return result;
}

_BYTE *MTR.Cluster.Thermostat.PresetTypeStruct.init(presetScenario:numberOfPresets:presetTypeFeatures:)@<X0>(_BYTE *result@<X0>, char a2@<W1>, __int16 a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = *result;
  *(a4 + 1) = a2;
  *(a4 + 2) = a3;
  return result;
}

uint64_t MTR.Cluster.Thermostat.PresetTypeStruct.CodingKeys.init(stringValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6353746573657270 && a2 == 0xEE006F6972616E65;
  if (v6 || (sub_2531DB144() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x664F7265626D756ELL && a2 == 0xEF73746573657250 || (sub_2531DB144() & 1) != 0)
  {

    v8 = 1;
  }

  else if (a1 == 0xD000000000000012 && 0x80000002531DBF30 == a2)
  {

    v8 = 2;
  }

  else
  {
    v9 = sub_2531DB144();

    if (v9)
    {
      v8 = 2;
    }

    else
    {
      v8 = 3;
    }
  }

  *a3 = v8;
  return result;
}

unint64_t MTR.Cluster.Thermostat.PresetTypeStruct.CodingKeys.init(intValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 3;
  if (result < 3)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

unint64_t MTR.Cluster.Thermostat.PresetTypeStruct.CodingKeys.stringValue.getter()
{
  v1 = 0x664F7265626D756ELL;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6353746573657270;
  }
}

unint64_t sub_2531774F8()
{
  v1 = 0x664F7265626D756ELL;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6353746573657270;
  }
}

uint64_t sub_253177574(uint64_t a1)
{
  v2 = sub_253177974();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2531775B0(uint64_t a1)
{
  v2 = sub_253177974();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MTR.Cluster.Thermostat.PresetTypeStruct.description.getter()
{
  sub_2531DABC4();
  MEMORY[0x259BFE570](0xD000000000000021, 0x80000002531DBF50);
  sub_2531DAD24();
  MEMORY[0x259BFE570](0xD000000000000013, 0x80000002531DBF80);
  v0 = sub_2531DAF34();
  MEMORY[0x259BFE570](v0);

  MEMORY[0x259BFE570](0xD000000000000016, 0x80000002531DBFA0);
  v1 = sub_2531DAF34();
  MEMORY[0x259BFE570](v1);

  MEMORY[0x259BFE570](41, 0xE100000000000000);
  return 0;
}

uint64_t MTR.Cluster.Thermostat.PresetTypeStruct.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D430, &qword_2531E2A18);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v10 - v6;
  v8 = *v1;
  v10[6] = v1[1];
  v10[3] = *(v1 + 1);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_253177974();
  sub_2531DB4D4();
  v14 = v8;
  v13 = 0;
  sub_2531779C8();
  sub_2531DAED4();
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v12 = 1;
  sub_2531DAEE4();
  v11 = 2;
  sub_2531DAEF4();
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_253177974()
{
  result = qword_27F58D438;
  if (!qword_27F58D438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D438);
  }

  return result;
}

unint64_t sub_2531779C8()
{
  result = qword_27F58D440;
  if (!qword_27F58D440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D440);
  }

  return result;
}

uint64_t MTR.Cluster.Thermostat.PresetTypeStruct.hash(into:)()
{
  sub_2531DB414();
  sub_2531DB414();
  return sub_2531DB424();
}

uint64_t MTR.Cluster.Thermostat.PresetTypeStruct.hashValue.getter()
{
  sub_2531DB3F4();
  sub_2531DB414();
  sub_2531DB414();
  sub_2531DB424();
  return sub_2531DB454();
}

uint64_t MTR.Cluster.Thermostat.PresetTypeStruct.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D448, &qword_2531E2A20);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_253177974();
  sub_2531DB4B4();
  if (!v2)
  {
    v16 = 0;
    sub_253177E84();
    sub_2531DAE14();
    v9 = v17;
    v15 = 1;
    v11 = sub_2531DAE24();
    v14 = 2;
    v12 = sub_2531DAE34();
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    *(a2 + 1) = v11;
    *(a2 + 2) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_253177D1C()
{
  sub_2531DB3F4();
  sub_2531DB414();
  sub_2531DB414();
  sub_2531DB424();
  return sub_2531DB454();
}

uint64_t sub_253177DA0()
{
  sub_2531DB414();
  sub_2531DB414();
  return sub_2531DB424();
}

uint64_t sub_253177E04(uint64_t a1)
{
  sub_2531DB3F4();
  sub_2531DB414();
  sub_2531DB414();
  sub_2531DB424();
  return sub_2531DB454();
}

unint64_t sub_253177E84()
{
  result = qword_27F58D450;
  if (!qword_27F58D450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D450);
  }

  return result;
}

uint64_t MTR.Cluster.Thermostat.PresetStruct.presetHandle.getter()
{
  v1 = *v0;
  sub_25316D050(*v0, *(v0 + 8));
  return v1;
}

uint64_t MTR.Cluster.Thermostat.PresetStruct.presetHandle.setter(uint64_t a1, uint64_t a2)
{
  result = sub_25316D308(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t MTR.Cluster.Thermostat.PresetStruct.name.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t MTR.Cluster.Thermostat.PresetStruct.name.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t MTR.Cluster.Thermostat.PresetStruct.coolingSetpoint.setter(uint64_t result)
{
  *(v1 + 40) = result;
  *(v1 + 42) = BYTE2(result) & 1;
  return result;
}

uint64_t MTR.Cluster.Thermostat.PresetStruct.heatingSetpoint.setter(uint64_t result)
{
  *(v1 + 44) = result;
  *(v1 + 46) = BYTE2(result) & 1;
  return result;
}

uint64_t MTR.Cluster.Thermostat.PresetStruct.init(presetHandle:presetScenario:name:coolingSetpoint:heatingSetpoint:builtIn:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, __int16 a6@<W5>, __int16 a7@<W6>, char a8@<W7>, uint64_t a9@<X8>)
{
  v9 = *a3;
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = v9;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 42) = 0;
  *(a9 + 44) = a7;
  *(a9 + 46) = 0;
  *(a9 + 47) = a8;
  return result;
}

uint64_t MTR.Cluster.Thermostat.PresetStruct.CodingKeys.init(stringValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6148746573657270 && a2 == 0xEC000000656C646ELL;
  if (v6 || (sub_2531DB144() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6353746573657270 && a2 == 0xEE006F6972616E65 || (sub_2531DB144() & 1) != 0)
  {

    v8 = 1;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_2531DB144() & 1) != 0)
  {

    v8 = 2;
  }

  else if (a1 == 0x53676E696C6F6F63 && a2 == 0xEF746E696F707465 || (sub_2531DB144() & 1) != 0)
  {

    v8 = 3;
  }

  else if (a1 == 0x53676E6974616568 && a2 == 0xEF746E696F707465 || (sub_2531DB144() & 1) != 0)
  {

    v8 = 4;
  }

  else if (a1 == 0x6E49746C697562 && a2 == 0xE700000000000000)
  {

    v8 = 5;
  }

  else
  {
    v9 = sub_2531DB144();

    if (v9)
    {
      v8 = 5;
    }

    else
    {
      v8 = 6;
    }
  }

  *a3 = v8;
  return result;
}

unint64_t MTR.Cluster.Thermostat.PresetStruct.CodingKeys.init(intValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 6;
  if (result < 6)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t MTR.Cluster.Thermostat.PresetStruct.CodingKeys.stringValue.getter()
{
  v1 = *v0;
  v2 = 0x6148746573657270;
  v3 = 0x53676E696C6F6F63;
  v4 = 0x53676E6974616568;
  if (v1 != 4)
  {
    v4 = 0x6E49746C697562;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6353746573657270;
  if (v1 != 1)
  {
    v5 = 1701667182;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_2531784A0()
{
  v1 = *v0;
  v2 = 0x6148746573657270;
  v3 = 0x53676E696C6F6F63;
  v4 = 0x53676E6974616568;
  if (v1 != 4)
  {
    v4 = 0x6E49746C697562;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6353746573657270;
  if (v1 != 1)
  {
    v5 = 1701667182;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_253178588(uint64_t a1)
{
  v2 = sub_25317E1EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2531785C4(uint64_t a1)
{
  v2 = sub_25317E1EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MTR.Cluster.Thermostat.PresetStruct.description.getter()
{
  v1 = *v0;
  v2 = v0[1];

  sub_2531DABC4();
  MEMORY[0x259BFE570](0xD00000000000001DLL, 0x80000002531DBFC0);
  sub_253172B50(v1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D458, &qword_2531E2A28);
  sub_25317EB04(&qword_27F58D460, &qword_27F58D458, &qword_2531E2A28, MEMORY[0x277D83958]);
  v3 = sub_2531DA6A4();
  v5 = v4;

  MEMORY[0x259BFE570](v3, v5);

  MEMORY[0x259BFE570](0xD000000000000012, 0x80000002531DBFE0);
  sub_2531DAD24();
  MEMORY[0x259BFE570](0x203A656D616E202CLL, 0xE800000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D468, &qword_2531E2A30);
  v6 = sub_2531DA6F4();
  MEMORY[0x259BFE570](v6);

  MEMORY[0x259BFE570](0xD000000000000014, 0x80000002531DC000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D470, &qword_2531E2A38);
  v7 = sub_2531DA6F4();
  MEMORY[0x259BFE570](v7);

  MEMORY[0x259BFE570](0xD000000000000013, 0x80000002531DC020);
  v8 = sub_2531DA6F4();
  MEMORY[0x259BFE570](v8);

  MEMORY[0x259BFE570](0x49746C697562202CLL, 0xEB00000000203A6ELL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D478, &qword_2531E2A40);
  v9 = sub_2531DA6F4();
  MEMORY[0x259BFE570](v9);

  MEMORY[0x259BFE570](41, 0xE100000000000000);
  return 0;
}

uint64_t MTR.Cluster.Thermostat.PresetStruct.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D480, &qword_2531E2A48);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v12 - v5;
  v8 = *v1;
  v7 = *(v1 + 8);
  v18 = *(v1 + 16);
  v9 = *(v1 + 24);
  v13 = *(v1 + 32);
  v14 = v9;
  LODWORD(v9) = *(v1 + 40);
  v12[4] = *(v1 + 42);
  v12[5] = v9;
  LODWORD(v5) = *(v1 + 46);
  v12[2] = *(v1 + 44);
  v12[3] = v5;
  v12[1] = *(v1 + 47);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25316D050(v8, v7);
  sub_25317E1EC();
  sub_2531DB4D4();
  v16 = v8;
  v17 = v7;
  v19 = 0;
  sub_25317E240();
  v10 = v15;
  sub_2531DAED4();
  if (v10)
  {
    sub_25316D308(v16, v17);
  }

  else
  {
    sub_25316D308(v16, v17);
    LOBYTE(v16) = v18;
    v19 = 1;
    sub_2531779C8();
    sub_2531DAED4();
    LOBYTE(v16) = 2;
    sub_2531DAE74();
    LOBYTE(v16) = 3;
    sub_2531DAEA4();
    LOBYTE(v16) = 4;
    sub_2531DAEA4();
    LOBYTE(v16) = 5;
    sub_2531DAE84();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t MTR.Cluster.Thermostat.PresetStruct.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 42);
  v4 = *(v1 + 46);
  v5 = *(v1 + 47);
  sub_2531DA164();
  sub_2531DB414();
  if (v2)
  {
    sub_2531DB414();
    sub_2531DA734();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_2531DB414();
    if (v3)
    {
LABEL_3:
      sub_2531DB414();
      if (!v4)
      {
        goto LABEL_4;
      }

LABEL_8:
      sub_2531DB414();
      if (v5 == 2)
      {
        return sub_2531DB414();
      }

      goto LABEL_5;
    }
  }

  sub_2531DB414();
  sub_2531DB424();
  if (v4)
  {
    goto LABEL_8;
  }

LABEL_4:
  sub_2531DB414();
  sub_2531DB424();
  if (v5 != 2)
  {
LABEL_5:
    sub_2531DB414();
  }

  return sub_2531DB414();
}

uint64_t MTR.Cluster.Thermostat.PresetStruct.hashValue.getter()
{
  sub_2531DB3F4();
  MTR.Cluster.Thermostat.PresetStruct.hash(into:)(v1);
  return sub_2531DB454();
}

uint64_t MTR.Cluster.Thermostat.PresetStruct.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D498, &qword_2531E2A50);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25317E1EC();
  sub_2531DB4B4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v28) = 0;
  sub_253175240();
  sub_2531DAE14();
  v27 = v31;
  LOBYTE(v28) = 1;
  sub_253177E84();
  sub_2531DAE14();
  v9 = v31;
  LOBYTE(v31) = 2;
  v10 = sub_2531DADB4();
  v12 = v11;
  v26 = v10;
  v40 = v9;
  LOBYTE(v31) = 3;
  v13 = sub_2531DADE4();
  v42 = BYTE2(v13) & 1;
  LOBYTE(v31) = 4;
  v25 = sub_2531DADE4();
  v41 = BYTE2(v25) & 1;
  v43 = 5;
  v14 = sub_2531DADC4();
  (*(v6 + 8))(v8, v5);
  v15 = v27;
  v16 = v13;
  v24 = v13;
  v17 = *(&v27 + 1);
  v28 = v27;
  LOBYTE(v29) = v40;
  *(&v29 + 1) = v26;
  *&v30 = v12;
  WORD4(v30) = v16;
  v23 = v42;
  BYTE10(v30) = v42;
  v18 = v25;
  WORD6(v30) = v25;
  v19 = v41;
  BYTE14(v30) = v41;
  HIBYTE(v30) = v14;
  v20 = v29;
  *a2 = v27;
  a2[1] = v20;
  a2[2] = v30;
  sub_25317E294(&v28, &v31);
  __swift_destroy_boxed_opaque_existential_1(a1);
  *&v31 = v15;
  *(&v31 + 1) = v17;
  v32 = v40;
  v33 = v26;
  v34 = v12;
  v35 = v24;
  v36 = v23;
  v37 = v18;
  v38 = v19;
  v39 = v14;
  return sub_25317E2CC(&v31);
}

uint64_t sub_2531790A8()
{
  sub_2531DB3F4();
  MTR.Cluster.Thermostat.PresetStruct.hash(into:)(v1);
  return sub_2531DB454();
}

uint64_t sub_2531790EC(uint64_t a1)
{
  sub_2531DB3F4();
  MTR.Cluster.Thermostat.PresetStruct.hash(into:)(v2);
  return sub_2531DB454();
}

uint64_t MTR.Cluster.Thermostat.AppleHoldPolicyStruct.holdDuration.setter(uint64_t result)
{
  *(v1 + 2) = result;
  *(v1 + 4) = BYTE2(result) & 1;
  return result;
}

uint64_t MTR.Cluster.Thermostat.AppleHoldPolicyStruct.init(holdUntilPresetSuggestionChange:holdDuration:)@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 2) = a2;
  *(a3 + 4) = BYTE2(a2) & 1;
  return result;
}

uint64_t MTR.Cluster.Thermostat.AppleHoldPolicyStruct.CodingKeys.init(stringValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD00000000000001FLL && 0x80000002531DC040 == a2 || (sub_2531DB144() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x61727544646C6F68 && a2 == 0xEC0000006E6F6974)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_2531DB144();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t MTR.Cluster.Thermostat.AppleHoldPolicyStruct.CodingKeys.init(intValue:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!result)
  {
    v2 = 0;
  }

  *a2 = v2;
  return result;
}

uint64_t MTR.Cluster.Thermostat.AppleHoldPolicyStruct.CodingKeys.stringValue.getter()
{
  if (*v0)
  {
    return 0x61727544646C6F68;
  }

  else
  {
    return 0xD00000000000001FLL;
  }
}

uint64_t sub_253179320()
{
  if (*v0)
  {
    return 0x61727544646C6F68;
  }

  else
  {
    return 0xD00000000000001FLL;
  }
}

uint64_t sub_25317936C(uint64_t a1)
{
  v2 = sub_25317E2FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2531793A8(uint64_t a1)
{
  v2 = sub_25317E2FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MTR.Cluster.Thermostat.AppleHoldPolicyStruct.description.getter()
{
  v1 = *v0;
  sub_2531DABC4();
  MEMORY[0x259BFE570](0xD000000000000037, 0x80000002531DC060);
  if (v1)
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (v1)
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  MEMORY[0x259BFE570](v2, v3);

  MEMORY[0x259BFE570](0xD000000000000010, 0x80000002531DC0A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D390, &qword_2531E2990);
  v4 = sub_2531DA6F4();
  MEMORY[0x259BFE570](v4);

  MEMORY[0x259BFE570](41, 0xE100000000000000);
  return 0;
}

BOOL static MTR.Cluster.Thermostat.AppleHoldPolicyStruct.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = a2[4];
  if (a1[4])
  {
    return (a2[4] & 1) != 0;
  }

  else
  {
    if (*(a1 + 1) != *(a2 + 1))
    {
      v3 = 1;
    }

    return (v3 & 1) == 0;
  }
}

uint64_t MTR.Cluster.Thermostat.AppleHoldPolicyStruct.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D4A0, &qword_2531E2A58);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v9 - v6;
  v9[6] = *(v1 + 2);
  v9[3] = *(v1 + 4);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25317E2FC();
  sub_2531DB4D4();
  v11 = 0;
  sub_2531DAEC4();
  if (!v2)
  {
    v10 = 1;
    sub_2531DAEB4();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t MTR.Cluster.Thermostat.AppleHoldPolicyStruct.hash(into:)()
{
  v1 = *(v0 + 4);
  sub_2531DB414();
  if (v1 == 1)
  {
    return sub_2531DB414();
  }

  sub_2531DB414();
  return sub_2531DB424();
}

uint64_t MTR.Cluster.Thermostat.AppleHoldPolicyStruct.hashValue.getter()
{
  v1 = *(v0 + 4);
  sub_2531DB3F4();
  sub_2531DB414();
  sub_2531DB414();
  if (v1 != 1)
  {
    sub_2531DB424();
  }

  return sub_2531DB454();
}

uint64_t MTR.Cluster.Thermostat.AppleHoldPolicyStruct.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D4B0, &qword_2531E2A60);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25317E2FC();
  sub_2531DB4B4();
  if (!v2)
  {
    v14 = 0;
    v9 = sub_2531DAE04();
    v13 = 1;
    v11 = sub_2531DADF4();
    (*(v6 + 8))(v8, v5);
    *a2 = v9 & 1;
    *(a2 + 2) = v11;
    *(a2 + 4) = BYTE2(v11) & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2531799C0()
{
  v1 = *(v0 + 4);
  sub_2531DB3F4();
  sub_2531DB414();
  sub_2531DB414();
  if (v1 != 1)
  {
    sub_2531DB424();
  }

  return sub_2531DB454();
}

uint64_t sub_253179A44()
{
  v1 = *(v0 + 4);
  sub_2531DB414();
  if (v1 == 1)
  {
    return sub_2531DB414();
  }

  sub_2531DB414();
  return sub_2531DB424();
}

uint64_t sub_253179AA4(uint64_t a1)
{
  v2 = *(v1 + 4);
  sub_2531DB3F4();
  sub_2531DB414();
  sub_2531DB414();
  if (v2 != 1)
  {
    sub_2531DB424();
  }

  return sub_2531DB454();
}

uint64_t sub_253179B28(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = a2[4];
  if (a1[4])
  {
    if (a2[4])
    {
      return 1;
    }
  }

  else
  {
    if (*(a1 + 1) != *(a2 + 1))
    {
      v3 = 1;
    }

    if ((v3 & 1) == 0)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t MTR.Cluster.Thermostat.ApplePresetsAdditionalInfoStruct.presetHandle.getter()
{
  v1 = *v0;
  sub_25316D050(*v0, *(v0 + 8));
  return v1;
}

uint64_t MTR.Cluster.Thermostat.ApplePresetsAdditionalInfoStruct.presetHandle.setter(uint64_t a1, uint64_t a2)
{
  result = sub_25316D308(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t MTR.Cluster.Thermostat.ApplePresetsAdditionalInfoStruct.init(presetHandle:systemMode:automationEnabled:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v5 = *a3;
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = v5;
  *(a5 + 17) = a4;
  return result;
}

uint64_t MTR.Cluster.Thermostat.ApplePresetsAdditionalInfoStruct.CodingKeys.init(stringValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6148746573657270 && a2 == 0xEC000000656C646ELL;
  if (v6 || (sub_2531DB144() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F4D6D6574737973 && a2 == 0xEA00000000006564 || (sub_2531DB144() & 1) != 0)
  {

    v8 = 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002531DC0C0 == a2)
  {

    v8 = 2;
  }

  else
  {
    v9 = sub_2531DB144();

    if (v9)
    {
      v8 = 2;
    }

    else
    {
      v8 = 3;
    }
  }

  *a3 = v8;
  return result;
}

unint64_t MTR.Cluster.Thermostat.ApplePresetsAdditionalInfoStruct.CodingKeys.stringValue.getter()
{
  v1 = 0x6F4D6D6574737973;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6148746573657270;
  }
}

unint64_t sub_253179E28()
{
  v1 = 0x6F4D6D6574737973;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6148746573657270;
  }
}

uint64_t sub_253179E98(uint64_t a1)
{
  v2 = sub_25317E350();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_253179ED4(uint64_t a1)
{
  v2 = sub_25317E350();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MTR.Cluster.Thermostat.ApplePresetsAdditionalInfoStruct.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 17);
  sub_2531DABC4();
  MEMORY[0x259BFE570](0xD000000000000031, 0x80000002531DC0E0);
  sub_253172B50(v1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D458, &qword_2531E2A28);
  sub_25317EB04(&qword_27F58D460, &qword_27F58D458, &qword_2531E2A28, MEMORY[0x277D83958]);
  v4 = sub_2531DA6A4();
  v6 = v5;

  MEMORY[0x259BFE570](v4, v6);

  MEMORY[0x259BFE570](0x6D6574737973202CLL, 0xEE00203A65646F4DLL);
  sub_2531DAD24();
  MEMORY[0x259BFE570](0xD000000000000015, 0x80000002531DC120);
  if (v3)
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if (v3)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  MEMORY[0x259BFE570](v7, v8);

  MEMORY[0x259BFE570](41, 0xE100000000000000);
  return 0;
}

uint64_t static MTR.Cluster.Thermostat.ApplePresetsAdditionalInfoStruct.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 17);
  v4 = *(a2 + 16);
  v5 = *(a2 + 17);
  if (sub_25317DEF0(*a1, *(a1 + 8), *a2, *(a2 + 8)) && byte_2531E48C5[v2] == byte_2531E48C5[v4])
  {
    return v3 ^ v5 ^ 1u;
  }

  else
  {
    return 0;
  }
}

uint64_t MTR.Cluster.Thermostat.ApplePresetsAdditionalInfoStruct.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D4B8, &qword_2531E2A68);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v11 - v5;
  v7 = *v1;
  v8 = *(v1 + 8);
  v15 = *(v1 + 16);
  v11[1] = *(v1 + 17);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25316D050(v7, v8);
  sub_25317E350();
  sub_2531DB4D4();
  v13 = v7;
  v14 = v8;
  v16 = 0;
  sub_25317E240();
  v9 = v12;
  sub_2531DAED4();
  sub_25316D308(v13, v14);
  if (!v9)
  {
    LOBYTE(v13) = v15;
    v16 = 1;
    sub_25317E3A4();
    sub_2531DAED4();
    LOBYTE(v13) = 2;
    sub_2531DAEC4();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t MTR.Cluster.Thermostat.ApplePresetsAdditionalInfoStruct.hash(into:)(uint64_t a1)
{
  sub_2531DA164();
  sub_2531DB414();
  return sub_2531DB414();
}

uint64_t MTR.Cluster.Thermostat.ApplePresetsAdditionalInfoStruct.hashValue.getter()
{
  sub_2531DB3F4();
  sub_2531DA164();
  sub_2531DB414();
  sub_2531DB414();
  return sub_2531DB454();
}

uint64_t MTR.Cluster.Thermostat.ApplePresetsAdditionalInfoStruct.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D4D0, &qword_2531E2A70);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25317E350();
  sub_2531DB4B4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v15 = 0;
  sub_253175240();
  sub_2531DAE14();
  v10 = v13[0];
  v9 = v13[1];
  v15 = 1;
  sub_25317E3F8();
  sub_2531DAE14();
  v14 = LOBYTE(v13[0]);
  LOBYTE(v13[0]) = 2;
  v11 = sub_2531DAE04();
  (*(v6 + 8))(v8, v5);
  *a2 = v10;
  *(a2 + 8) = v9;
  *(a2 + 16) = v14;
  *(a2 + 17) = v11 & 1;
  sub_25316D050(v10, v9);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_25316D308(v10, v9);
}

uint64_t sub_25317A6A4()
{
  sub_2531DB3F4();
  sub_2531DA164();
  sub_2531DB414();
  sub_2531DB414();
  return sub_2531DB454();
}

uint64_t sub_25317A728(uint64_t a1)
{
  sub_2531DA164();
  sub_2531DB414();
  return sub_2531DB414();
}

uint64_t sub_25317A77C(uint64_t a1)
{
  sub_2531DB3F4();
  sub_2531DA164();
  sub_2531DB414();
  sub_2531DB414();
  return sub_2531DB454();
}

uint64_t sub_25317A7FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 17);
  v4 = *(a2 + 16);
  v5 = *(a2 + 17);
  if (sub_25317DEF0(*a1, *(a1 + 8), *a2, *(a2 + 8)) && byte_2531E48C5[v2] == byte_2531E48C5[v4])
  {
    return v3 ^ v5 ^ 1u;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25317A878@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_25317A8C0(uint64_t a1)
{
  v2 = sub_25317E44C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25317A8FC(uint64_t a1)
{
  v2 = sub_25317E44C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MTR.Cluster.Thermostat.AppleEmptyStruct.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D4E0, &qword_2531E2A78);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25317E44C();
  sub_2531DB4D4();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_25317AAD8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D4E0, &qword_2531E2A78);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25317E44C();
  sub_2531DB4D4();
  return (*(v3 + 8))(v5, v2);
}

uint64_t MTR.Cluster.Thermostat.ApplePredictedSuggestedPresetStruct.presetHandle.getter()
{
  v1 = *v0;
  sub_25316D050(*v0, *(v0 + 8));
  return v1;
}

uint64_t MTR.Cluster.Thermostat.ApplePredictedSuggestedPresetStruct.presetHandle.setter(uint64_t a1, uint64_t a2)
{
  result = sub_25316D308(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t MTR.Cluster.Thermostat.ApplePredictedSuggestedPresetStruct.init(presetHandle:predictedTime:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a3;
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = v4;
  return result;
}

uint64_t MTR.Cluster.Thermostat.ApplePredictedSuggestedPresetStruct.CodingKeys.stringValue.getter()
{
  if (*v0)
  {
    return 0x6574636964657270;
  }

  else
  {
    return 0x6148746573657270;
  }
}

uint64_t sub_25317AD14(uint64_t a1)
{
  v2 = sub_25317E4A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25317AD50(uint64_t a1)
{
  v2 = sub_25317E4A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MTR.Cluster.Thermostat.ApplePredictedSuggestedPresetStruct.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_2531DABC4();
  MEMORY[0x259BFE570](0xD000000000000034, 0x80000002531DC140);
  sub_253172B50(v1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D458, &qword_2531E2A28);
  sub_25317EB04(&qword_27F58D460, &qword_27F58D458, &qword_2531E2A28, MEMORY[0x277D83958]);
  v3 = sub_2531DA6A4();
  v5 = v4;

  MEMORY[0x259BFE570](v3, v5);

  MEMORY[0x259BFE570](0xD000000000000011, 0x80000002531DC180);
  sub_25317289C();
  MEMORY[0x259BFE570](41, 0xE100000000000000);
  return 0;
}

uint64_t MTR.Cluster.Thermostat.AppleSetCurrentSuggestedPresetCommand.presetHandle.getter()
{
  v1 = *v0;
  sub_25316D050(*v0, *(v0 + 8));
  return v1;
}

uint64_t MTR.Cluster.Thermostat.AppleSetCurrentSuggestedPresetCommand.presetHandle.setter(uint64_t a1, uint64_t a2)
{
  result = sub_25316D308(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t MTR.Cluster.Thermostat.AppleSetCurrentSuggestedPresetCommand.init(presetHandle:expirationInSeconds:clearSetpointHold:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int a3@<W2>, char a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 20) = a4;
  return result;
}

uint64_t MTR.Cluster.Thermostat.AppleSetCurrentSuggestedPresetCommand.CodingKeys.init(stringValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6148746573657270 && a2 == 0xEC000000656C646ELL;
  if (v6 || (sub_2531DB144() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000002531DC1A0 == a2 || (sub_2531DB144() & 1) != 0)
  {

    v8 = 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002531DC1C0 == a2)
  {

    v8 = 2;
  }

  else
  {
    v9 = sub_2531DB144();

    if (v9)
    {
      v8 = 2;
    }

    else
    {
      v8 = 3;
    }
  }

  *a3 = v8;
  return result;
}

unint64_t MTR.Cluster.Thermostat.AppleSetCurrentSuggestedPresetCommand.CodingKeys.stringValue.getter()
{
  v1 = 0xD000000000000013;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6148746573657270;
  }
}

unint64_t sub_25317B250()
{
  v1 = 0xD000000000000013;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6148746573657270;
  }
}

uint64_t sub_25317B2C4(uint64_t a1)
{
  v2 = sub_25317E548();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25317B300(uint64_t a1)
{
  v2 = sub_25317E548();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MTR.Cluster.Thermostat.AppleSetCurrentSuggestedPresetCommand.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 20);
  sub_2531DABC4();
  MEMORY[0x259BFE570](0xD000000000000036, 0x80000002531DC1E0);
  sub_253172B50(v1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D458, &qword_2531E2A28);
  sub_25317EB04(&qword_27F58D460, &qword_27F58D458, &qword_2531E2A28, MEMORY[0x277D83958]);
  v4 = sub_2531DA6A4();
  v6 = v5;

  MEMORY[0x259BFE570](v4, v6);

  MEMORY[0x259BFE570](0xD000000000000017, 0x80000002531DC220);
  v7 = sub_2531DAF34();
  MEMORY[0x259BFE570](v7);

  MEMORY[0x259BFE570](0xD000000000000015, 0x80000002531DC240);
  if (v3)
  {
    v8 = 1702195828;
  }

  else
  {
    v8 = 0x65736C6166;
  }

  if (v3)
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  MEMORY[0x259BFE570](v8, v9);

  MEMORY[0x259BFE570](41, 0xE100000000000000);
  return 0;
}

uint64_t static MTR.Cluster.Thermostat.AppleSetCurrentSuggestedPresetCommand.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 20);
  v4 = *(a2 + 16);
  v5 = *(a2 + 20);
  return (sub_25317DEF0(*a1, *(a1 + 8), *a2, *(a2 + 8)) && v2 == v4) & (v3 ^ v5 ^ 1u);
}

uint64_t MTR.Cluster.Thermostat.AppleSetCurrentSuggestedPresetCommand.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D510, &qword_2531E2A90);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v11 - v5;
  v7 = *v1;
  v8 = *(v1 + 8);
  v15 = *(v1 + 16);
  v11[1] = *(v1 + 20);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25316D050(v7, v8);
  sub_25317E548();
  sub_2531DB4D4();
  v13 = v7;
  v14 = v8;
  v16 = 0;
  sub_25317E240();
  v9 = v12;
  sub_2531DAED4();
  sub_25316D308(v13, v14);
  if (!v9)
  {
    LOBYTE(v13) = 1;
    sub_2531DAF04();
    LOBYTE(v13) = 2;
    sub_2531DAEC4();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t MTR.Cluster.Thermostat.AppleSetCurrentSuggestedPresetCommand.hash(into:)(uint64_t a1)
{
  sub_2531DA164();
  sub_2531DB434();
  return sub_2531DB414();
}

uint64_t MTR.Cluster.Thermostat.AppleSetCurrentSuggestedPresetCommand.hashValue.getter()
{
  sub_2531DB3F4();
  sub_2531DA164();
  sub_2531DB434();
  sub_2531DB414();
  return sub_2531DB454();
}

uint64_t MTR.Cluster.Thermostat.AppleSetCurrentSuggestedPresetCommand.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D520, &qword_2531E2A98);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25317E548();
  sub_2531DB4B4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v15 = 0;
  sub_253175240();
  sub_2531DAE14();
  v10 = v13[0];
  v9 = v13[1];
  LOBYTE(v13[0]) = 1;
  v14 = sub_2531DAE44();
  LOBYTE(v13[0]) = 2;
  v11 = sub_2531DAE04();
  (*(v6 + 8))(v8, v5);
  *a2 = v10;
  *(a2 + 8) = v9;
  *(a2 + 16) = v14;
  *(a2 + 20) = v11 & 1;
  sub_25316D050(v10, v9);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_25316D308(v10, v9);
}

uint64_t sub_25317BA7C()
{
  sub_2531DB3F4();
  sub_2531DA164();
  sub_2531DB434();
  sub_2531DB414();
  return sub_2531DB454();
}

uint64_t sub_25317BAF8(uint64_t a1)
{
  sub_2531DA164();
  sub_2531DB434();
  return sub_2531DB414();
}

uint64_t sub_25317BB44(uint64_t a1)
{
  sub_2531DB3F4();
  sub_2531DA164();
  sub_2531DB434();
  sub_2531DB414();
  return sub_2531DB454();
}

uint64_t sub_25317BBC0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 20);
  v4 = *(a2 + 16);
  v5 = *(a2 + 20);
  return (sub_25317DEF0(*a1, *(a1 + 8), *a2, *(a2 + 8)) && v2 == v4) & (v3 ^ v5 ^ 1u);
}

uint64_t _s23HomeKitDaemonFoundation3MTRO7ClusterO10ThermostatO35ApplePredictedSuggestedPresetStructV10CodingKeysO11stringValueAKSgSS_tcfC_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6148746573657270 && a2 == 0xEC000000656C646ELL;
  if (v6 || (sub_2531DB144() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6574636964657270 && a2 == 0xED0000656D695464)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2531DB144();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_25317BD48()
{
  v1 = *v0;
  sub_2531DB3F4();
  MEMORY[0x259BFF230](v1);
  return sub_2531DB454();
}

uint64_t sub_25317BD90(uint64_t a1)
{
  v2 = *v1;
  sub_2531DB3F4();
  MEMORY[0x259BFF230](v2);
  return sub_2531DB454();
}

uint64_t sub_25317BDD4(uint64_t a1)
{
  v2 = sub_25317E59C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25317BE10(uint64_t a1)
{
  v2 = sub_25317E59C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MTR.Cluster.Thermostat.AppleSetPredictedSuggestedPresetCommand.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_2531DABC4();
  MEMORY[0x259BFE570](0xD000000000000038, 0x80000002531DC260);
  sub_253172B50(v1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D458, &qword_2531E2A28);
  sub_25317EB04(&qword_27F58D460, &qword_27F58D458, &qword_2531E2A28, MEMORY[0x277D83958]);
  v3 = sub_2531DA6A4();
  v5 = v4;

  MEMORY[0x259BFE570](v3, v5);

  MEMORY[0x259BFE570](0xD000000000000011, 0x80000002531DC180);
  sub_25317289C();
  MEMORY[0x259BFE570](41, 0xE100000000000000);
  return 0;
}

uint64_t _s23HomeKitDaemonFoundation3MTRO7ClusterO10ThermostatO35ApplePredictedSuggestedPresetStructV2eeoiySbAI_AItFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  return sub_25317DEF0(*a1, *(a1 + 8), *a2, *(a2 + 8)) & (v2 == v3);
}

uint64_t sub_25317C030(void *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v16 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v18 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v15 - v8;
  v10 = *v5;
  v11 = *(v5 + 8);
  v21 = *(v5 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v12 = sub_25316D050(v10, v11);
  v16(v12);
  sub_2531DB4D4();
  v19 = v10;
  v20 = v11;
  v22 = 0;
  sub_25317E240();
  v13 = v17;
  sub_2531DAED4();
  sub_25316D308(v19, v20);
  if (!v13)
  {
    LODWORD(v19) = v21;
    v22 = 1;
    sub_25317E4F4();
    sub_2531DAED4();
  }

  return (*(v18 + 8))(v9, v7);
}