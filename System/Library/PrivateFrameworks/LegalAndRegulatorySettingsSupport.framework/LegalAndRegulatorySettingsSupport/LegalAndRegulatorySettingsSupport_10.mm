void Theme.heading5.getter(void *a1@<X8>)
{
  v2 = *(v1 + 240);
  if (v2[2] < 5uLL)
  {
    __break(1u);
  }

  else
  {
    v3 = v2[13];
    *a1 = v2[12];
    a1[1] = v3;
  }
}

void sub_255CF3470(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(a2 + 240);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_255CF4310(v5);
  }

  if (v5[2] < 5uLL)
  {
    __break(1u);
  }

  else
  {
    v5[12] = v4;
    v5[13] = v3;

    *(a2 + 240) = v5;
  }
}

void Theme.heading5.setter(__int128 *a1)
{
  v3 = *a1;
  v2 = *(v1 + 240);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_255CF4310(v2);
  }

  if (v2[2] < 5uLL)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 6) = v3;

    *(v1 + 240) = v2;
  }
}

void (*Theme.heading5.modify(void (*result)(uint64_t *a1, char a2)))(uint64_t *a1, char a2)
{
  v2 = *(v1 + 240);
  *(result + 2) = v1;
  *(result + 3) = v2;
  if (v2[2] < 5uLL)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    v4 = v2[13];
    *v3 = v2[12];
    *(v3 + 1) = v4;

    return sub_255CF35B8;
  }

  return result;
}

void sub_255CF35B8(uint64_t *a1, char a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[3];
  if ((a2 & 1) == 0)
  {
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_255CF4310(v5);
  }

  if (v5[2] < 5uLL)
  {
    __break(1u);
LABEL_12:
    v5 = sub_255CF4310(v5);
LABEL_9:
    if (v5[2] < 5uLL)
    {
      __break(1u);
    }

    else
    {
      v7 = a1[2];
      v5[12] = v4;
      v5[13] = v3;

      *(v7 + 240) = v5;
    }

    return;
  }

  v6 = a1[2];
  v5[12] = v4;
  v5[13] = v3;

  *(v6 + 240) = v5;
}

void Theme.heading6.getter(void *a1@<X8>)
{
  v2 = *(v1 + 240);
  if (v2[2] < 6uLL)
  {
    __break(1u);
  }

  else
  {
    v3 = v2[15];
    *a1 = v2[14];
    a1[1] = v3;
  }
}

void sub_255CF36B8(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(a2 + 240);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_255CF4310(v5);
  }

  if (v5[2] < 6uLL)
  {
    __break(1u);
  }

  else
  {
    v5[14] = v4;
    v5[15] = v3;

    *(a2 + 240) = v5;
  }
}

void Theme.heading6.setter(__int128 *a1)
{
  v3 = *a1;
  v2 = *(v1 + 240);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_255CF4310(v2);
  }

  if (v2[2] < 6uLL)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 7) = v3;

    *(v1 + 240) = v2;
  }
}

void (*Theme.heading6.modify(void (*result)(uint64_t *a1, char a2)))(uint64_t *a1, char a2)
{
  v2 = *(v1 + 240);
  *(result + 2) = v1;
  *(result + 3) = v2;
  if (v2[2] < 6uLL)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    v4 = v2[15];
    *v3 = v2[14];
    *(v3 + 1) = v4;

    return sub_255CF3800;
  }

  return result;
}

void sub_255CF3800(uint64_t *a1, char a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[3];
  if ((a2 & 1) == 0)
  {
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_255CF4310(v5);
  }

  if (v5[2] < 6uLL)
  {
    __break(1u);
LABEL_12:
    v5 = sub_255CF4310(v5);
LABEL_9:
    if (v5[2] < 6uLL)
    {
      __break(1u);
    }

    else
    {
      v7 = a1[2];
      v5[14] = v4;
      v5[15] = v3;

      *(v7 + 240) = v5;
    }

    return;
  }

  v6 = a1[2];
  v5[14] = v4;
  v5[15] = v3;

  *(v6 + 240) = v5;
}

double Theme.paragraph.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 256);
  *a1 = *(v1 + 248);
  a1[1] = v2;

  return result;
}

__n128 Theme.paragraph.setter(__n128 *a1)
{

  result = *a1;
  *(v1 + 248) = *a1;
  return result;
}

double Theme.blockquote.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 272);
  *a1 = *(v1 + 264);
  a1[1] = v2;

  return result;
}

__n128 Theme.blockquote.setter(__n128 *a1)
{

  result = *a1;
  *(v1 + 264) = *a1;
  return result;
}

double Theme.codeBlock.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 288);
  *a1 = *(v1 + 280);
  a1[1] = v2;

  return result;
}

__n128 Theme.codeBlock.setter(__n128 *a1)
{

  result = *a1;
  *(v1 + 280) = *a1;
  return result;
}

double Theme.image.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 304);
  *a1 = *(v1 + 296);
  a1[1] = v2;

  return result;
}

__n128 Theme.image.setter(__n128 *a1)
{

  result = *a1;
  *(v1 + 296) = *a1;
  return result;
}

double Theme.list.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 320);
  *a1 = *(v1 + 312);
  a1[1] = v2;

  return result;
}

__n128 Theme.list.setter(__n128 *a1)
{

  result = *a1;
  *(v1 + 312) = *a1;
  return result;
}

double Theme.listItem.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 336);
  *a1 = *(v1 + 328);
  a1[1] = v2;

  return result;
}

__n128 Theme.listItem.setter(__n128 *a1)
{

  result = *a1;
  *(v1 + 328) = *a1;
  return result;
}

double Theme.taskListMarker.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 352);
  *a1 = *(v1 + 344);
  a1[1] = v2;

  return result;
}

__n128 Theme.taskListMarker.setter(__n128 *a1)
{

  result = *a1;
  *(v1 + 344) = *a1;
  return result;
}

double Theme.bulletedListMarker.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 368);
  *a1 = *(v1 + 360);
  a1[1] = v2;

  return result;
}

__n128 Theme.bulletedListMarker.setter(__n128 *a1)
{

  result = *a1;
  *(v1 + 360) = *a1;
  return result;
}

double Theme.numberedListMarker.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 384);
  *a1 = *(v1 + 376);
  a1[1] = v2;

  return result;
}

__n128 Theme.numberedListMarker.setter(__n128 *a1)
{

  result = *a1;
  *(v1 + 376) = *a1;
  return result;
}

double Theme.table.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 400);
  *a1 = *(v1 + 392);
  a1[1] = v2;

  return result;
}

__n128 Theme.table.setter(__n128 *a1)
{

  result = *a1;
  *(v1 + 392) = *a1;
  return result;
}

double Theme.tableCell.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 416);
  *a1 = *(v1 + 408);
  a1[1] = v2;

  return result;
}

__n128 Theme.tableCell.setter(__n128 *a1)
{

  result = *a1;
  *(v1 + 408) = *a1;
  return result;
}

double Theme.thematicBreak.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 432);
  *a1 = *(v1 + 424);
  a1[1] = v2;

  return result;
}

__n128 Theme.thematicBreak.setter(__n128 *a1)
{

  result = *a1;
  *(v1 + 424) = *a1;
  return result;
}

uint64_t Theme.emphasis<A>(emphasis:)@<X0>(void (*a1)(void)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  sub_255C99DF4(v4, a4);
  v11 = a2;
  v12 = a3;
  __swift_allocate_boxed_opaque_existential_1(&v10);
  a1();
  __swift_destroy_boxed_opaque_existential_1((a4 + 80));
  return sub_255CAC668(&v10, a4 + 80);
}

uint64_t Theme.strikethrough<A>(strikethrough:)@<X0>(void (*a1)(void)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  sub_255C99DF4(v4, a4);
  v11 = a2;
  v12 = a3;
  __swift_allocate_boxed_opaque_existential_1(&v10);
  a1();
  __swift_destroy_boxed_opaque_existential_1((a4 + 160));
  return sub_255CAC668(&v10, a4 + 160);
}

double Theme.image<A>(body:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_255C99DF4(v5, a5);

  BlockStyle.init<A>(body:)(a1, a2, &type metadata for BlockConfiguration, a3, a4, &v12);

  result = *&v12;
  *(a5 + 296) = v12;
  return result;
}

double Theme.list<A>(body:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_255C99DF4(v5, a5);

  BlockStyle.init<A>(body:)(a1, a2, &type metadata for BlockConfiguration, a3, a4, &v12);

  result = *&v12;
  *(a5 + 312) = v12;
  return result;
}

void Theme.taskListMarker(_:)(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  sub_255C99DF4(v2, a2);

  *(a2 + 344) = v5;
  *(a2 + 352) = v4;
}

void Theme.bulletedListMarker(_:)(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  sub_255C99DF4(v2, a2);

  *(a2 + 360) = v5;
  *(a2 + 368) = v4;
}

double Theme.bulletedListMarker<A>(body:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_255C99DF4(v5, a5);

  BlockStyle.init<A>(body:)(a1, a2, &type metadata for ListMarkerConfiguration, a3, a4, &v12);

  result = *&v12;
  *(a5 + 360) = v12;
  return result;
}

void Theme.numberedListMarker(_:)(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  sub_255C99DF4(v2, a2);

  *(a2 + 376) = v5;
  *(a2 + 384) = v4;
}

double Theme.numberedListMarker<A>(body:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_255C99DF4(v5, a5);

  BlockStyle.init<A>(body:)(a1, a2, &type metadata for ListMarkerConfiguration, a3, a4, &v12);

  result = *&v12;
  *(a5 + 376) = v12;
  return result;
}

uint64_t Theme.textBackgroundColor.getter()
{
  v1 = sub_255D059D8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_255D059C8();
  v5 = v0[3];
  v6 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v5);
  (*(v6 + 8))(v4, v5, v6);
  sub_255C95C48();
  sub_255D059E8();
  (*(v2 + 8))(v4, v1);
  return v8[1];
}

uint64_t sub_255CF4324(char *a1)
{
  v2[71] = *a1;
  sub_255CDE3AC(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E0068, &qword_255D12070);
  sub_255CF4880(&qword_27F7E0070, &qword_27F7E0068, &qword_255D12070);
  return sub_255D06E78();
}

uint64_t sub_255CF43A8(__int128 *a1)
{
  v3 = *a1;
  sub_255CFBC80(&v3, &v2);
  return sub_255D06E78();
}

uint64_t sub_255CF43F0(__int128 *a1)
{
  v2[4] = *a1;
  sub_255CFB704(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E0058, &qword_255D12068);
  sub_255CF4880(&qword_27F7E0060, &qword_27F7E0058, &qword_255D12068);
  return sub_255D06E78();
}

uint64_t sub_255CF4474()
{
  v0 = sub_255D06E98();
  MEMORY[0x28223BE20](v0);
  sub_255D06E88();
  sub_255CF47D4();
  return sub_255D06E78();
}

uint64_t sub_255CF44FC(uint64_t a1)
{
  sub_255CF482C();

  return sub_255D06E78();
}

uint64_t sub_255CF454C(uint64_t a1)
{
  sub_255CF48D4();

  return sub_255D06E78();
}

uint64_t sub_255CF45A0(uint64_t *a1)
{
  sub_255CEC8D8();

  return sub_255D06E78();
}

void sub_255CF45F0(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 240);
  if (v2[2])
  {
    v3 = v2[5];
    *a2 = v2[4];
    a2[1] = v3;
  }

  else
  {
    __break(1u);
  }
}

void sub_255CF4610(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 240);
  if (v2[2] <= 1uLL)
  {
    __break(1u);
  }

  else
  {
    v3 = v2[7];
    *a2 = v2[6];
    a2[1] = v3;
  }
}

void sub_255CF4634(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 240);
  if (v2[2] <= 2uLL)
  {
    __break(1u);
  }

  else
  {
    v3 = v2[9];
    *a2 = v2[8];
    a2[1] = v3;
  }
}

void sub_255CF4658(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 240);
  if (v2[2] <= 3uLL)
  {
    __break(1u);
  }

  else
  {
    v3 = v2[11];
    *a2 = v2[10];
    a2[1] = v3;
  }
}

void sub_255CF467C(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 240);
  if (v2[2] <= 4uLL)
  {
    __break(1u);
  }

  else
  {
    v3 = v2[13];
    *a2 = v2[12];
    a2[1] = v3;
  }
}

void sub_255CF46A0(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 240);
  if (v2[2] <= 5uLL)
  {
    __break(1u);
  }

  else
  {
    v3 = v2[15];
    *a2 = v2[14];
    a2[1] = v3;
  }
}

uint64_t sub_255CF46CC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 440))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_255CF4714(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 440) = 1;
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

    *(result + 440) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_255CF47D4()
{
  result = qword_27F7E0048;
  if (!qword_27F7E0048)
  {
    sub_255D06E98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E0048);
  }

  return result;
}

unint64_t sub_255CF482C()
{
  result = qword_27F7E0050;
  if (!qword_27F7E0050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E0050);
  }

  return result;
}

uint64_t sub_255CF4880(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_255CF48D4()
{
  result = qword_27F7E0078;
  if (!qword_27F7E0078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E0078);
  }

  return result;
}

uint64_t FontProperties.init(family:familyVariant:capsVariant:digitVariant:style:weight:size:scale:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, char *a4@<X3>, char *a5@<X4>, uint64_t a6@<X8>, double a7@<D0>, double a8@<D1>, double a9@<D2>)
{
  v28 = *a3;
  v29 = *a2;
  v27 = *a4;
  v14 = *a5;
  v15 = *MEMORY[0x277CE0990];
  v16 = sub_255D06808();
  (*(*(v16 - 8) + 104))(a6, v15, v16);
  type metadata accessor for FontProperties.Family(0);
  swift_storeEnumTagMultiPayload();
  v17 = type metadata accessor for FontProperties(0);
  v18 = v17[5];
  *(a6 + v18) = 0;
  v19 = v17[6];
  *(a6 + v19) = 0;
  v20 = v17[7];
  *(a6 + v20) = 0;
  v21 = v17[8];
  *(a6 + v21) = 0;
  v22 = v17[9];
  _s33LegalAndRegulatorySettingsSupport14FontPropertiesV13defaultWeight7SwiftUI0F0V0I0VvgZ_0();
  v23 = a6 + v17[10];
  *(v23 + 32) = 0;
  *v23 = 0u;
  *(v23 + 16) = 0u;
  v25 = v17[11];
  v24 = v17[12];
  result = sub_255C92E40(a1, a6);
  *(a6 + v18) = v29;
  *(a6 + v19) = v28;
  *(a6 + v20) = v27;
  *(a6 + v21) = v14;
  *(a6 + v22) = a7;
  *(a6 + v25) = a8;
  *(a6 + v24) = a9;
  return result;
}

uint64_t FontProperties.width.setter(uint64_t a1)
{
  v3 = sub_255D067D8();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  (*(v4 + 16))(&v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8], a1, v3, v5);
  sub_255CF6BBC(&qword_27F7DE830, MEMORY[0x277CE0960], MEMORY[0x277CE0968]);
  sub_255D07538();
  (*(v4 + 8))(a1, v3);
  v7 = type metadata accessor for FontProperties(0);
  return sub_255CA4B3C(v10, v1 + *(v7 + 40));
}

void FontProperties.Family.hash(into:)(uint64_t a1)
{
  v2 = sub_255D06808();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FontProperties.Family(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v9 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_255CF6E4C(v1, v8, type metadata accessor for FontProperties.Family);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    MEMORY[0x259C4BB60](1);
    sub_255D07058();
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    MEMORY[0x259C4BB60](0);
    sub_255CF6BBC(&qword_27F7E0080, MEMORY[0x277CE09A8], MEMORY[0x277CE09B0]);
    sub_255D07038();
    (*(v3 + 8))(v5, v2);
  }
}

uint64_t FontProperties.Family.hashValue.getter()
{
  v1 = v0;
  v2 = sub_255D06808();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FontProperties.Family(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_255D07728();
  sub_255CF6E4C(v1, v8, type metadata accessor for FontProperties.Family);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    MEMORY[0x259C4BB60](1);
    sub_255D07058();
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    MEMORY[0x259C4BB60](0);
    sub_255CF6BBC(&qword_27F7E0080, MEMORY[0x277CE09A8], MEMORY[0x277CE09B0]);
    sub_255D07038();
    (*(v3 + 8))(v5, v2);
  }

  return sub_255D07768();
}

uint64_t sub_255CF5038(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_255D06808();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_255D07728();
  sub_255CF6E4C(v3, v10, type metadata accessor for FontProperties.Family);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    MEMORY[0x259C4BB60](1);
    sub_255D07058();
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    MEMORY[0x259C4BB60](0);
    sub_255CF6BBC(&qword_27F7E0080, MEMORY[0x277CE09A8], MEMORY[0x277CE09B0]);
    sub_255D07038();
    (*(v5 + 8))(v7, v4);
  }

  return sub_255D07768();
}

uint64_t FontProperties.CapsVariant.hashValue.getter()
{
  v1 = *v0;
  sub_255D07728();
  MEMORY[0x259C4BB60](v1);
  return sub_255D07768();
}

uint64_t FontProperties.familyVariant.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for FontProperties(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t FontProperties.familyVariant.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for FontProperties(0);
  *(v1 + *(result + 20)) = v2;
  return result;
}

uint64_t FontProperties.capsVariant.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for FontProperties(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t FontProperties.capsVariant.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for FontProperties(0);
  *(v1 + *(result + 24)) = v2;
  return result;
}

uint64_t FontProperties.digitVariant.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for FontProperties(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t FontProperties.digitVariant.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for FontProperties(0);
  *(v1 + *(result + 28)) = v2;
  return result;
}

uint64_t FontProperties.style.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for FontProperties(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t FontProperties.style.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for FontProperties(0);
  *(v1 + *(result + 32)) = v2;
  return result;
}

uint64_t FontProperties.weight.setter(double a1)
{
  result = type metadata accessor for FontProperties(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t FontProperties.width.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E0088, &unk_255D12078);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12[-v4 - 8];
  v6 = type metadata accessor for FontProperties(0);
  sub_255C7299C(v1 + *(v6 + 40), v12, &qword_27F7DE838, &qword_255D0D260);
  if (v13)
  {
    v7 = sub_255D067D8();
    v8 = swift_dynamicCast();
    v9 = *(v7 - 8);
    (*(v9 + 56))(v5, v8 ^ 1u, 1, v7);
    if ((*(v9 + 48))(v5, 1, v7) != 1)
    {
      return (*(v9 + 32))(a1, v5, v7);
    }
  }

  else
  {
    sub_255C76B94(v12, &qword_27F7DE838, &qword_255D0D260);
    v7 = sub_255D067D8();
    (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  }

  sub_255D067C8();
  sub_255D067D8();
  result = (*(*(v7 - 8) + 48))(v5, 1, v7);
  if (result != 1)
  {
    return sub_255C76B94(v5, &qword_27F7E0088, &unk_255D12078);
  }

  return result;
}

uint64_t sub_255CF58F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_255D067D8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v16[-v10 - 8];
  v12 = *(v5 + 16);
  v12(&v16[-v10 - 8], a1, v4, v9);
  (v12)(v7, v11, v4);
  sub_255CF6BBC(&qword_27F7DE830, MEMORY[0x277CE0960], MEMORY[0x277CE0968]);
  sub_255D07538();
  (*(v5 + 8))(v11, v4);
  v13 = type metadata accessor for FontProperties(0);
  return sub_255CA4B3C(v16, a2 + *(v13 + 40));
}

void (*FontProperties.width.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x80uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 80) = v1;
  v6 = sub_255D067D8();
  v5[11] = v6;
  v7 = *(v6 - 8);
  v5[12] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[13] = swift_coroFrameAlloc();
    v5[14] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[13] = malloc(*(v7 + 64));
    v5[14] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[15] = v9;
  FontProperties.width.getter(v9);
  return sub_255CF5BA4;
}

void sub_255CF5BA4(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 112);
  v3 = *(*a1 + 120);
  v6 = *(*a1 + 96);
  v5 = *(*a1 + 104);
  v8 = *(*a1 + 80);
  v7 = *(*a1 + 88);
  if (a2)
  {
    v9 = *(v2[12] + 16);
    v9(v2[14], v2[15], v2[11]);
    v9(v5, v4, v7);
    sub_255CF6BBC(&qword_27F7DE830, MEMORY[0x277CE0960], MEMORY[0x277CE0968]);
    sub_255D07538();
    v10 = *(v6 + 8);
    v10(v4, v7);
    v11 = type metadata accessor for FontProperties(0);
    sub_255CA4B3C(v2, v8 + *(v11 + 40));
    v10(v3, v7);
  }

  else
  {
    (*(v2[12] + 16))(v2[14], v2[15], v2[11]);
    sub_255CF6BBC(&qword_27F7DE830, MEMORY[0x277CE0960], MEMORY[0x277CE0968]);
    sub_255D07538();
    (*(v6 + 8))(v3, v7);
    v12 = type metadata accessor for FontProperties(0);
    sub_255CA4B3C((v2 + 5), v8 + *(v12 + 40));
  }

  free(v3);
  free(v4);
  free(v5);

  free(v2);
}

uint64_t FontProperties.size.setter(double a1)
{
  result = type metadata accessor for FontProperties(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t FontProperties.scale.setter(double a1)
{
  result = type metadata accessor for FontProperties(0);
  *(v1 + *(result + 48)) = a1;
  return result;
}

uint64_t FontProperties.init(family:familyVariant:capsVariant:digitVariant:style:weight:width:size:scale:)@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, unsigned __int8 *a3@<X2>, unsigned __int8 *a4@<X3>, unsigned __int8 *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a8@<D0>, double a9@<D1>, double a10@<D2>)
{
  v58 = a6;
  v55 = a1;
  v57 = sub_255D067D8();
  v54 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v56 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v53 = &v48 - v21;
  v22 = type metadata accessor for FontProperties.Family(0);
  MEMORY[0x28223BE20](v22);
  v24 = &v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *a2;
  v49 = *a3;
  v50 = v25;
  v26 = *a4;
  v51 = *a5;
  v52 = v26;
  sub_255CF6E4C(a1, v24, type metadata accessor for FontProperties.Family);
  v27 = *MEMORY[0x277CE0990];
  v28 = sub_255D06808();
  (*(*(v28 - 8) + 104))(a7, v27, v28);
  swift_storeEnumTagMultiPayload();
  v29 = type metadata accessor for FontProperties(0);
  v30 = v29[5];
  *(a7 + v30) = 0;
  v31 = v29[6];
  *(a7 + v31) = 0;
  v32 = v29[7];
  *(a7 + v32) = 0;
  v33 = v29[8];
  *(a7 + v33) = 0;
  v34 = v29[9];
  _s33LegalAndRegulatorySettingsSupport14FontPropertiesV13defaultWeight7SwiftUI0F0V0I0VvgZ_0();
  v35 = a7 + v29[10];
  *(v35 + 32) = 0;
  *v35 = 0u;
  *(v35 + 16) = 0u;
  v37 = v29[11];
  v36 = v29[12];
  sub_255C92E40(v24, a7);
  v38 = v49;
  *(a7 + v30) = v50;
  *(a7 + v31) = v38;
  v39 = v54;
  v40 = v54;
  v41 = v51;
  *(a7 + v32) = v52;
  *(a7 + v33) = v41;
  *(a7 + v34) = a8;
  *(a7 + v37) = a9;
  *(a7 + v36) = a10;
  v42 = *(v40 + 16);
  v43 = v53;
  v45 = v57;
  v44 = v58;
  v42(v53, v58, v57);
  v42(v56, v43, v45);
  sub_255CF6BBC(&qword_27F7DE830, MEMORY[0x277CE0960], MEMORY[0x277CE0968]);
  sub_255D07538();
  v46 = *(v39 + 8);
  v46(v44, v45);
  sub_255CF6C04(v55);
  v46(v43, v45);
  return sub_255CA4B3C(v59, v35);
}

uint64_t FontProperties.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v3 = sub_255D06808();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FontProperties.Family(0);
  MEMORY[0x28223BE20](v7);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_255CF6E4C(v2, v9, type metadata accessor for FontProperties.Family);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    MEMORY[0x259C4BB60](1);
    sub_255D07058();
  }

  else
  {
    (*(v4 + 32))(v6, v9, v3);
    MEMORY[0x259C4BB60](0);
    sub_255CF6BBC(&qword_27F7E0080, MEMORY[0x277CE09A8], MEMORY[0x277CE09B0]);
    sub_255D07038();
    (*(v4 + 8))(v6, v3);
  }

  v10 = type metadata accessor for FontProperties(0);
  MEMORY[0x259C4BB60](*(v2 + v10[5]));
  MEMORY[0x259C4BB60](*(v2 + v10[6]));
  MEMORY[0x259C4BB60](*(v2 + v10[7]));
  MEMORY[0x259C4BB60](*(v2 + v10[8]));
  sub_255D06838();
  sub_255C7299C(v2 + v10[10], &v16, &qword_27F7DE838, &qword_255D0D260);
  if (*(&v17 + 1))
  {
    v14[0] = v16;
    v14[1] = v17;
    v15 = v18;
    sub_255D07748();
    sub_255D07528();
    sub_255C7DF4C(v14);
  }

  else
  {
    sub_255D07748();
  }

  v11 = *(v2 + v10[11]);
  if (v11 == 0.0)
  {
    v11 = 0.0;
  }

  MEMORY[0x259C4BB80](*&v11);
  v12 = *(v2 + v10[12]);
  if (v12 == 0.0)
  {
    v12 = 0.0;
  }

  return MEMORY[0x259C4BB80](*&v12);
}

uint64_t FontProperties.hashValue.getter()
{
  sub_255D07728();
  FontProperties.hash(into:)(v1);
  return sub_255D07768();
}

uint64_t sub_255CF6544()
{
  sub_255D07728();
  FontProperties.hash(into:)(v1);
  return sub_255D07768();
}

uint64_t sub_255CF6588()
{
  sub_255D07728();
  FontProperties.hash(into:)(v1);
  return sub_255D07768();
}

uint64_t FontProperties._collectAttributes(in:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DD9E0, &qword_255D0A9A0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v9 - v5;
  sub_255CF6E4C(v0, &v9 - v5, type metadata accessor for FontProperties);
  v7 = type metadata accessor for FontProperties(0);
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  sub_255C7299C(v6, v3, &qword_27F7DD9E0, &qword_255D0A9A0);
  sub_255C73C84();
  sub_255D059F8();
  return sub_255C76B94(v6, &qword_27F7DD9E0, &qword_255D0A9A0);
}

uint64_t sub_255CF6718(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DD9E0, &qword_255D0A9A0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v11 - v8;
  sub_255CF6E4C(v2, &v11 - v8, type metadata accessor for FontProperties);
  (*(*(a2 - 8) + 56))(v9, 0, 1, a2);
  sub_255C7299C(v9, v6, &qword_27F7DD9E0, &qword_255D0A9A0);
  sub_255C73C84();
  sub_255D059F8();
  return sub_255C76B94(v9, &qword_27F7DD9E0, &qword_255D0A9A0);
}

uint64_t _s33LegalAndRegulatorySettingsSupport14FontPropertiesV6FamilyO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v27 = sub_255D06808();
  v4 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FontProperties.Family(0);
  MEMORY[0x28223BE20](v7);
  v9 = (&v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v12 = &v26 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E00F0, &unk_255D123D8);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v26 - v14;
  v17 = (&v26 + *(v16 + 56) - v14);
  sub_255CF6E4C(a1, &v26 - v14, type metadata accessor for FontProperties.Family);
  sub_255CF6E4C(a2, v17, type metadata accessor for FontProperties.Family);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_255CF6E4C(v15, v12, type metadata accessor for FontProperties.Family);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v23 = v27;
      (*(v4 + 32))(v6, v17, v27);
      v22 = sub_255D067F8();
      v24 = *(v4 + 8);
      v24(v6, v23);
      v24(v12, v23);
      sub_255CF6C04(v15);
      return v22 & 1;
    }

    (*(v4 + 8))(v12, v27);
    goto LABEL_12;
  }

  sub_255CF6E4C(v15, v9, type metadata accessor for FontProperties.Family);
  v19 = *v9;
  v18 = v9[1];
  if (swift_getEnumCaseMultiPayload() != 1)
  {

LABEL_12:
    sub_255C76B94(v15, &qword_27F7E00F0, &unk_255D123D8);
    goto LABEL_13;
  }

  if (v19 == *v17 && v18 == v17[1])
  {

    goto LABEL_16;
  }

  v21 = sub_255D076D8();

  if (v21)
  {
LABEL_16:
    sub_255CF6C04(v15);
    v22 = 1;
    return v22 & 1;
  }

  sub_255CF6C04(v15);
LABEL_13:
  v22 = 0;
  return v22 & 1;
}

uint64_t sub_255CF6BBC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_255CF6C04(uint64_t a1)
{
  v2 = type metadata accessor for FontProperties.Family(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL _s33LegalAndRegulatorySettingsSupport14FontPropertiesV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((_s33LegalAndRegulatorySettingsSupport14FontPropertiesV6FamilyO2eeoiySbAE_AEtFZ_0(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for FontProperties(0);
  if (*(a1 + v4[5]) != *(a2 + v4[5]))
  {
    return 0;
  }

  if (*(a1 + v4[6]) != *(a2 + v4[6]))
  {
    return 0;
  }

  if (*(a1 + v4[7]) != *(a2 + v4[7]))
  {
    return 0;
  }

  if (*(a1 + v4[8]) != *(a2 + v4[8]))
  {
    return 0;
  }

  v5 = v4;
  if ((sub_255D06818() & 1) == 0)
  {
    return 0;
  }

  v6 = v5[10];
  sub_255C7299C(a1 + v6, v12, &qword_27F7DE838, &qword_255D0D260);
  sub_255C7299C(a2 + v6, &v14, &qword_27F7DE838, &qword_255D0D260);
  if (v13)
  {
    sub_255C7299C(v12, v11, &qword_27F7DE838, &qword_255D0D260);
    if (*(&v15 + 1))
    {
      v9[0] = v14;
      v9[1] = v15;
      v10 = v16;
      v7 = MEMORY[0x259C4B940](v11, v9);
      sub_255C7DF4C(v9);
      sub_255C7DF4C(v11);
      sub_255C76B94(v12, &qword_27F7DE838, &qword_255D0D260);
      if ((v7 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_13;
    }

    sub_255C7DF4C(v11);
LABEL_16:
    sub_255C76B94(v12, &qword_27F7E00E8, &qword_255D123D0);
    return 0;
  }

  if (*(&v15 + 1))
  {
    goto LABEL_16;
  }

  sub_255C76B94(v12, &qword_27F7DE838, &qword_255D0D260);
LABEL_13:
  if (*(a1 + v5[11]) == *(a2 + v5[11]))
  {
    return *(a1 + v5[12]) == *(a2 + v5[12]);
  }

  return 0;
}

uint64_t sub_255CF6E4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_255CF6F00()
{
  result = qword_27F7E0098;
  if (!qword_27F7E0098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E0098);
  }

  return result;
}

unint64_t sub_255CF6F58()
{
  result = qword_27F7E00A0;
  if (!qword_27F7E00A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E00A0);
  }

  return result;
}

unint64_t sub_255CF6FB0()
{
  result = qword_27F7E00A8;
  if (!qword_27F7E00A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E00A8);
  }

  return result;
}

unint64_t sub_255CF7008()
{
  result = qword_27F7E00B0;
  if (!qword_27F7E00B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E00B0);
  }

  return result;
}

uint64_t sub_255CF70E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FontProperties.Family(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 40) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_255CF71C0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for FontProperties.Family(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 40) + 24) = a2;
  }

  return result;
}

void sub_255CF727C(uint64_t a1)
{
  type metadata accessor for FontProperties.Family(319);
  if (v1 <= 0x3F)
  {
    sub_255CF7344();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_255CF7344()
{
  if (!qword_27F7E00D0)
  {
    v0 = sub_255D074A8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F7E00D0);
    }
  }
}

uint64_t sub_255CF7394(uint64_t a1)
{
  result = sub_255D06808();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

double Strong._inlineContent.getter@<D0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDB40, &qword_255D0AE20);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_255D0AA80;
  *(v4 + 40) = 0;
  *(v4 + 48) = 0;
  *(v4 + 32) = v3;
  *(v4 + 56) = 4;
  *a1 = v4;

  return result;
}

LegalAndRegulatorySettingsSupport::Strong __swiftcall Strong.init(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDB40, &qword_255D0AE20);
  result.content.inlines._rawValue = swift_allocObject();
  *(result.content.inlines._rawValue + 1) = xmmword_255D0AA80;
  *(result.content.inlines._rawValue + 4) = countAndFlagsBits;
  *(result.content.inlines._rawValue + 5) = object;
  *(result.content.inlines._rawValue + 6) = 0;
  *(result.content.inlines._rawValue + 56) = 0;
  v4->content.inlines._rawValue = result.content.inlines._rawValue;
  return result;
}

void *Strong.init(content:)@<X0>(void *(*a1)(uint64_t *__return_ptr)@<X0>, void *a2@<X8>)
{
  result = a1(&v4);
  *a2 = v4;
  return result;
}

double sub_255CF75A0@<D0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDB40, &qword_255D0AE20);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_255D0AA80;
  *(v4 + 40) = 0;
  *(v4 + 48) = 0;
  *(v4 + 32) = v3;
  *(v4 + 56) = 4;
  *a1 = v4;

  return result;
}

uint64_t sub_255CF7628(void (*a1)(char *, char *), uint64_t a2, unsigned int (*a3)(char *, uint64_t, uint64_t), char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v45 = a8;
  v9 = v8;
  v60 = a2;
  v61 = a4;
  v59 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v54 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v43 = &v42 - v14;
  v46 = a5;
  v44 = *(a5 - 8);
  MEMORY[0x28223BE20](v15);
  v56 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v57 = &v42 - v18;
  v19 = sub_255D074A8();
  v47 = *(v19 - 8);
  v48 = v19;
  MEMORY[0x28223BE20](v19);
  v50 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v42 - v22;
  MEMORY[0x28223BE20](v24);
  v49 = &v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v55 = *(a3 - 1);
  MEMORY[0x28223BE20](v27);
  v29 = &v42 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = a6;
  v62 = swift_getAssociatedTypeWitness();
  v51 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v31 = &v42 - v30;
  v32 = sub_255D07248();
  v63 = sub_255D075F8();
  v58 = sub_255D07608();
  sub_255D075D8();
  (*(v55 + 2))(v29, v52, a3);
  v61 = v31;
  v55 = a3;
  result = sub_255D07238();
  if (v32 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v32)
  {
    v34 = (v54 + 48);
    v35 = (v54 + 8);
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      sub_255D074B8();
      result = (*v34)(v23, 1, AssociatedTypeWitness);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v59(v23, v57);
      if (v9)
      {
        (*(v51 + 8))(v61, v62);

        (*(v44 + 32))(v45, v57, v46);
        return (*v35)(v23, AssociatedTypeWitness);
      }

      v9 = 0;
      (*v35)(v23, AssociatedTypeWitness);
      sub_255D075E8();
      if (!--v32)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v36 = v50;
  sub_255D074B8();
  v37 = v36;
  v38 = v54;
  v39 = *(v54 + 48);
  v57 = (v54 + 48);
  v55 = v39;
  if (v39(v36, 1, AssociatedTypeWitness) == 1)
  {
LABEL_13:
    (*(v51 + 8))(v61, v62);
    (*(v47 + 8))(v37, v48);
    return v63;
  }

  else
  {
    v54 = *(v38 + 32);
    v40 = (v38 + 8);
    v41 = v43;
    while (1)
    {
      (v54)(v41, v37, AssociatedTypeWitness);
      v59(v41, v56);
      if (v9)
      {
        break;
      }

      v9 = 0;
      (*v40)(v41, AssociatedTypeWitness);
      sub_255D075E8();
      sub_255D074B8();
      if (v55(v37, 1, AssociatedTypeWitness) == 1)
      {
        goto LABEL_13;
      }
    }

    (*v40)(v41, AssociatedTypeWitness);
    (*(v51 + 8))(v61, v62);

    return (*(v44 + 32))(v45, v56, v46);
  }
}

double BulletedList._markdownContent.getter@<D0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDA60, &qword_255D0B7E0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_255D0AA80;
  *(v5 + 32) = v3;
  *(v5 + 40) = v4;
  *(v5 + 48) = 0;
  *(v5 + 56) = 0;
  *(v5 + 64) = 1;
  *a1 = v5;

  return result;
}

void sub_255CF7DA0(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = 0;
  v31 = a2 + 32;
  v32 = *(a2 + 16);
  while (2)
  {
    v6 = *(a2 + 16);
    if (v4 == v32)
    {
      v17 = a1;
      goto LABEL_17;
    }

    if (v4 < v6)
    {
      v7 = *(v31 + 8 * v4++);
      v8 = *(v7 + 16);
      swift_bridgeObjectRetain_n();
      v9 = 0;
      v10 = MEMORY[0x277D84F90];
LABEL_6:
      v11 = v7 - 8 + 40 * v9;
      while (v8 != v9)
      {
        if (v9 >= *(v7 + 16))
        {
          __break(1u);
          goto LABEL_32;
        }

        ++v9;
        v12 = (v11 + 40);
        v13 = *(v11 + 72);
        v11 += 40;
        if (v13 == 6)
        {
          v33 = v12[1];
          v34 = *v12;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_255C977F8(0, *(v10 + 16) + 1, 1);
          }

          v15 = *(v10 + 16);
          v14 = *(v10 + 24);
          if (v15 >= v14 >> 1)
          {
            sub_255C977F8((v14 > 1), v15 + 1, 1);
          }

          *(v10 + 16) = v15 + 1;
          v16 = v10 + 40 * v15;
          *(v16 + 32) = v34;
          *(v16 + 48) = v33;
          *(v16 + 64) = 6;
          goto LABEL_6;
        }
      }

      swift_bridgeObjectRelease_n();
      v5 = *(v10 + 16);

      if (v5 < 2)
      {
        continue;
      }

      v17 = 0;
      v6 = *(a2 + 16);
LABEL_17:
      v37 = v17 & 1;
      if (v6)
      {
        v35 = MEMORY[0x277D84F90];
        sub_255C97818(0, v6, 0);
        v18 = 32;
        v19 = v35;
        do
        {
          v20 = *(a2 + v18);
          v22 = *(v35 + 16);
          v21 = *(v35 + 24);

          if (v22 >= v21 >> 1)
          {
            sub_255C97818((v21 > 1), v22 + 1, 1);
          }

          *(v35 + 16) = v22 + 1;
          *(v35 + 8 * v22 + 32) = v20;
          v18 += 8;
          --v6;
        }

        while (v6);

        v23 = *(v35 + 16);
        if (v23)
        {
          goto LABEL_23;
        }
      }

      else
      {

        v19 = MEMORY[0x277D84F90];
        v23 = *(MEMORY[0x277D84F90] + 16);
        if (v23)
        {
LABEL_23:
          v36 = MEMORY[0x277D84F90];
          sub_255C978C8(0, v23, 0);
          v24 = 32;
          v25 = v36;
          do
          {
            v26 = *(v19 + v24);
            v27 = *(v36 + 16);
            v28 = *(v36 + 24);

            if (v27 >= v28 >> 1)
            {
              sub_255C978C8((v28 > 1), v27 + 1, 1);
            }

            *(v36 + 16) = v27 + 1;
            *(v36 + 8 * v27 + 32) = v26;
            v24 += 8;
            --v23;
          }

          while (v23);

          goto LABEL_30;
        }
      }

      v25 = MEMORY[0x277D84F90];
LABEL_30:
      *a3 = v37;
      *(a3 + 8) = v25;
      return;
    }

    break;
  }

LABEL_32:
  __break(1u);
}

void BulletedList.init(tight:items:)(char a1@<W0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = a2();
  sub_255CF7DA0(a1, v5, v7);
  v6 = v8;
  *a3 = v7[0];
  *(a3 + 8) = v6;
}

uint64_t BulletedList.init<A>(of:tight:items:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a5@<X4>, uint64_t a7@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E00F8, &qword_255D12438);
  sub_255CF81F0();
  v11 = sub_255D07258();
  sub_255CF7DA0(a2, v11, v14);
  result = (*(*(a5 - 8) + 8))(a1, a5);
  v13 = v15;
  *a7 = v14[0];
  *(a7 + 8) = v13;
  return result;
}

unint64_t sub_255CF81F0()
{
  result = qword_27F7E0100;
  if (!qword_27F7E0100)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E00F8, &qword_255D12438);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E0100);
  }

  return result;
}

uint64_t BulletedList.init<A>(of:tight:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, unsigned int (*a3)(char *, uint64_t, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X7>, uint64_t a6@<X8>)
{
  v10 = sub_255CF7628(sub_255CF8324, 0, a3, &type metadata for ListItem, MEMORY[0x277D84A98], a4, MEMORY[0x277D84AC0], a5);
  sub_255CF7DA0(a2, v10, v13);
  result = (*(*(a3 - 1) + 8))(a1, a3);
  v12 = v14;
  *a6 = v13[0];
  *(a6 + 8) = v12;
  return result;
}

double sub_255CF8324@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDA60, &qword_255D0B7E0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_255D0AA80;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDB40, &qword_255D0AE20);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_255D0AA80;
  *(v6 + 32) = v4;
  *(v6 + 40) = v3;
  *(v6 + 48) = 0;
  *(v6 + 56) = 0;
  *(v5 + 32) = v6;
  *(v5 + 40) = 0;
  *(v5 + 48) = 0;
  *(v5 + 56) = 0;
  *(v5 + 64) = 6;
  *a2 = v5;

  return result;
}

double sub_255CF83EC@<D0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDA60, &qword_255D0B7E0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_255D0AA80;
  *(v5 + 32) = v3;
  *(v5 + 40) = v4;
  *(v5 + 48) = 0;
  *(v5 + 56) = 0;
  *(v5 + 64) = 1;
  *a1 = v5;

  return result;
}

double InlineImage._inlineContent.getter@<D0>(uint64_t *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDB40, &qword_255D0AE20);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_255D0AA80;
  *(v6 + 32) = v4;
  *(v6 + 40) = v3;
  *(v6 + 48) = v5;
  *(v6 + 56) = 7;
  *a1 = v6;

  return result;
}

uint64_t InlineImage.init(source:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_255D05AC8();
  v6 = v5;
  v7 = sub_255D05B78();
  result = (*(*(v7 - 8) + 8))(a1, v7);
  *a2 = v4;
  a2[1] = v6;
  a2[2] = MEMORY[0x277D84F90];
  return result;
}

uint64_t InlineImage.init(_:source:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = sub_255D05AC8();
  v10 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDB40, &qword_255D0AE20);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_255D0AA80;
  *(v11 + 32) = a1;
  *(v11 + 40) = a2;
  *(v11 + 48) = 0;
  *(v11 + 56) = 0;
  v12 = sub_255D05B78();
  result = (*(*(v12 - 8) + 8))(a3, v12);
  *a4 = v8;
  a4[1] = v10;
  a4[2] = v11;
  return result;
}

double sub_255CF8660@<D0>(uint64_t *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDB40, &qword_255D0AE20);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_255D0AA80;
  *(v6 + 32) = v4;
  *(v6 + 40) = v3;
  *(v6 + 48) = v5;
  *(v6 + 56) = 7;
  *a1 = v6;

  return result;
}

void sub_255CF8730(uint64_t *a1@<X8>)
{
  v3 = sub_255D063E8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = *(v1 + 8);
  v9 = *(v1 + 24);
  if (*(v1 + 16) == 1)
  {
    v30 = *v1;
    v31 = v8;
  }

  else
  {

    sub_255D07438();
    v10 = sub_255D066C8();
    sub_255D05D88();

    sub_255D063D8();
    swift_getAtKeyPath();
    sub_255C74DD0(v7, v8, 0);
    (*(v4 + 8))(v6, v3);
    v7 = v30;
  }

  KeyPath = swift_getKeyPath();
  v12 = swift_getKeyPath();
  v28 = sub_255CD474C(MEMORY[0x277D84F90]);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DE698, &qword_255D0D680);
  sub_255D06D98();
  v13 = v19;
  v14 = v20;
  v15 = sub_255CAA848(0, v9);
  LOBYTE(v28) = 0;
  v29 = 0;
  v19 = KeyPath;
  LOBYTE(v20) = 0;
  v21 = v12;
  v22 = 0;
  v23 = v13;
  v24 = v14;
  v25 = v15;
  v26 = sub_255CB255C;
  v27 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF5E8, &qword_255D105C0);
  sub_255CF89F8();
  v16 = sub_255D06E78();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDA60, &qword_255D0B7E0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_255D0AA80;
  *(v17 + 32) = v9;
  *(v17 + 40) = 0;
  *(v17 + 48) = 0;
  *(v17 + 56) = 0;
  *(v17 + 64) = 0;
  v19 = v16;
  v20 = v17;
  v18 = v7(&v19);

  *a1 = v18;
}

unint64_t sub_255CF89F8()
{
  result = qword_27F7DF5F8;
  if (!qword_27F7DF5F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DF5E8, &qword_255D105C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DF5F8);
  }

  return result;
}

uint64_t static MarkdownContentBuilder.buildExpression(_:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_255CA7390(a1, a2);
  v5 = MEMORY[0x277D84F90];
  if (result)
  {
    v5 = result;
  }

  *a3 = v5;
  return result;
}

void static MarkdownContentBuilder.buildArray(_:)(char **a2@<X8>)
{

  sub_255C95F58(v3, a2);
}

uint64_t static MarkdownContentBuilder.buildOptional(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_255CF8B78(a1, v8);
  v3 = v9;
  if (v9)
  {
    v4 = v10;
    __swift_project_boxed_opaque_existential_1(v8, v9);
    (*(v4 + 8))(&v7, v3, v4);
    v5 = v7;
    result = __swift_destroy_boxed_opaque_existential_1(v8);
  }

  else
  {
    result = sub_255CF8BE8(v8);
    v5 = MEMORY[0x277D84F90];
  }

  *a2 = v5;
  return result;
}

uint64_t sub_255CF8B78(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E0108, &unk_255D12630);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_255CF8BE8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E0108, &unk_255D12630);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_255CF8C54(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  return (*(v2 + 8))(v1, v2);
}

double View.markdownImageProvider<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  (*(v8 + 16))(v10, a1, a3);
  v13[0] = sub_255CAFFA4(v10, a3, a5);
  v13[1] = v11;
  sub_255D06A78();

  return result;
}

uint64_t sub_255CF8DFC()
{
  sub_255CF8FEC();
  sub_255D063F8();
  return v1;
}

double sub_255CF8E38@<D0>(_OWORD *a1@<X8>)
{
  sub_255CF8FEC();
  sub_255D063F8();
  result = *&v3;
  *a1 = v3;
  return result;
}

double sub_255CF8E88@<D0>(_OWORD *a1@<X8>)
{
  sub_255CF8FEC();
  sub_255D063F8();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_255CF8ED8(void *a1, uint64_t a2)
{
  sub_255CF8FEC();

  return sub_255D06408();
}

uint64_t sub_255CF8F3C(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DF080, qword_255D0EAB0);
  sub_255D061D8();
  sub_255C810A8(&qword_27F7DF078, &qword_27F7DF080, qword_255D0EAB0, MEMORY[0x277CE0868]);
  return swift_getWitnessTable();
}

unint64_t sub_255CF8FEC()
{
  result = qword_27F7E0120;
  if (!qword_27F7E0120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E0120);
  }

  return result;
}

double sub_255CF9070@<D0>(void *a1@<X8>)
{
  if (qword_27F7DD890 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = *algn_27F7E0118;
  *a1 = qword_27F7E0110;
  a1[1] = v2;

  return result;
}

uint64_t sub_255CF90E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E0128, &unk_255D126E0);
  MEMORY[0x28223BE20](v2);
  DefaultImageProvider.makeImage(url:)(a1, &v5 - v3);
  sub_255C810A8(&qword_27F7E0130, &qword_27F7E0128, &unk_255D126E0, &protocol conformance descriptor for NetworkImage<A>);
  return sub_255D06E78();
}

uint64_t sub_255CF91BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_255CF9204(uint64_t result, int a2, int a3)
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
      *(result + 56) = (a2 - 1);
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

void sub_255CF9280(uint64_t *a1@<X8>)
{
  v27 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E0138, &qword_255D12828);
  v25 = *(v2 - 8);
  v26 = v2;
  MEMORY[0x28223BE20](v2);
  v23 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v24 = &v21 - v5;
  v6 = sub_255D063E8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v1[1];
  v30[0] = *v1;
  v30[1] = v10;
  v11 = v1[3];
  v30[2] = v1[2];
  v31 = v11;
  v32 = v30[0];
  v33 = *(v1 + 16);
  if (v33 == 1)
  {
    v22 = *&v30[0];
    v29 = __PAIR128__(*(&v32 + 1), *&v30[0]);
    v12 = sub_255C7299C(&v32, v28, &qword_27F7DF5E0, &unk_255D12830);
  }

  else
  {
    sub_255C7299C(&v32, v28, &qword_27F7DF5E0, &unk_255D12830);
    sub_255D07438();
    v13 = sub_255D066C8();
    sub_255D05D88();

    sub_255D063D8();
    swift_getAtKeyPath();
    sub_255C76B94(&v32, &qword_27F7DF5E0, &unk_255D12830);
    v12 = (*(v7 + 8))(v9, v6);
    v22 = v29;
  }

  MEMORY[0x28223BE20](v12);
  *(&v21 - 2) = v30;
  MEMORY[0x28223BE20](v14);
  *(&v21 - 2) = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF5E8, &qword_255D105C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF620, &qword_255D12840);
  sub_255C810A8(&qword_27F7DF5F8, &qword_27F7DF5E8, &qword_255D105C0, &unk_255D0DF48);
  sub_255C810A8(&qword_27F7DF618, &qword_27F7DF620, &qword_255D12840, &unk_255D0CF58);
  v16 = v24;
  sub_255D06D88();
  v18 = v25;
  v17 = v26;
  (*(v25 + 16))(v23, v16, v26);
  sub_255C810A8(&qword_27F7E0140, &qword_27F7E0138, &qword_255D12828, MEMORY[0x277CDEFF0]);
  v19 = sub_255D06E78();
  (*(v18 + 8))(v16, v17);
  v28[0] = v19;
  v28[1] = *(&v31 + 1);

  v20 = v22(v28);

  *v27 = v20;
}

uint64_t sub_255CF96FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 56);
  KeyPath = swift_getKeyPath();
  v5 = swift_getKeyPath();
  sub_255CD474C(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DE698, &qword_255D0D680);
  sub_255D06D98();
  result = sub_255CAA848(0, v3);
  *a2 = KeyPath;
  *(a2 + 8) = 0;
  *(a2 + 16) = v5;
  *(a2 + 24) = 0;
  *(a2 + 32) = v7;
  *(a2 + 40) = v8;
  *(a2 + 48) = result;
  *(a2 + 56) = sub_255CB255C;
  *(a2 + 64) = 0;
  return result;
}

uint64_t sub_255CF97DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_255D063E8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v15 = *(a1 + 24);
  v16 = *(a1 + 40);
  v8 = v15;
  if (v16 == 1)
  {
    v14 = v15;
    sub_255C7299C(&v15, v13, &qword_27F7E0148, &qword_255D12848);
  }

  else
  {
    sub_255C7299C(&v15, v13, &qword_27F7E0148, &qword_255D12848);
    sub_255D07438();
    v9 = sub_255D066C8();
    sub_255D05D88();

    sub_255D063D8();
    swift_getAtKeyPath();
    sub_255C76B94(&v15, &qword_27F7E0148, &qword_255D12848);
    (*(v5 + 8))(v7, v4);
    v8 = v14;
  }

  v13[0] = *(a1 + 48) & 1;
  v10 = v8(v13);

  result = swift_getKeyPath();
  *a2 = result;
  *(a2 + 40) = 0;
  *(a2 + 48) = sub_255CF9A24;
  *(a2 + 56) = v10;
  return result;
}

uint64_t sub_255CF99F4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_255C89D10(a1, *a2);
  *a3 = result;
  a3[1] = v5;
  a3[2] = v6;
  return result;
}

uint64_t sub_255CF9A24@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_255C89D10(a1, v2);
  *a2 = result;
  a2[1] = v5;
  a2[2] = v6;
  return result;
}

uint64_t DefaultImageProvider.makeImage(url:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDCD0, &qword_255D0B290);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDCB0, &qword_255D0BED0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  sub_255C867BC(a1, &v17 - v8);
  *a2 = swift_getKeyPath();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = sub_255C7EC24;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  v10 = sub_255D05B78();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    v12 = type metadata accessor for ImageSource(0);
    (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  }

  else
  {
    (*(v11 + 32))(v6, v9, v10);
    v13 = type metadata accessor for ImageSource(0);
    *&v6[*(v13 + 20)] = 0x3FF0000000000000;
    (*(*(v13 - 8) + 56))(v6, 0, 1, v13);
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E0128, &unk_255D126E0);
  result = sub_255C80A40(v6, a2 + v14[10]);
  *(a2 + v14[11]) = 0;
  v16 = (a2 + v14[12]);
  *v16 = sub_255CF9CC0;
  v16[1] = 0;
  return result;
}

double sub_255CF9CC0@<D0>(unint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = sub_255D06CF8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*a1 >= 2)
  {
    v11 = a1[1];
    v10 = a1[2];
    (*(v5 + 104))(v8, *MEMORY[0x277CE0FE0], v4, v6);
    v12 = sub_255D06D58();
    (*(v5 + 8))(v8, v4);
    v22 = 1;
    v16 = v11;
    v17 = v10;
    v18 = v12;
    v19 = v23;
    v20 = v24;
    v21 = 1;
  }

  else
  {
    v9 = sub_255D06C88();
    sub_255D06F58();
    sub_255D06018();
    v22 = BYTE8(v23);
    v15[16] = BYTE8(v24);
    v15[8] = 0;
    v16 = v9;
    v17 = v23;
    LOBYTE(v18) = BYTE8(v23);
    *&v19 = v24;
    BYTE8(v19) = BYTE8(v24);
    v20 = v25;
    v21 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E0150, &qword_255D12938);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DE018, &unk_255D0BF40);
  sub_255CF9FC0();
  sub_255C810A8(&qword_27F7DE010, &qword_27F7DE018, &unk_255D0BF40, &unk_255D10F50);
  sub_255D06528();
  v13 = v27;
  *a2 = v26;
  a2[1] = v13;
  a2[2] = v28[0];
  result = *(v28 + 9);
  *(a2 + 41) = *(v28 + 9);
  return result;
}

unint64_t sub_255CF9FC0()
{
  result = qword_27F7E0158;
  if (!qword_27F7E0158)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E0150, &qword_255D12938);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E0158);
  }

  return result;
}

uint64_t sub_255CFA044()
{
  sub_255C76F08();
  sub_255D063F8();
  return v1;
}

uint64_t sub_255CFA080()
{
  sub_255CAD65C();
  sub_255D063F8();
  return v1;
}

double Strikethrough._inlineContent.getter@<D0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDB40, &qword_255D0AE20);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_255D0AA80;
  *(v4 + 40) = 0;
  *(v4 + 48) = 0;
  *(v4 + 32) = v3;
  *(v4 + 56) = 5;
  *a1 = v4;

  return result;
}

LegalAndRegulatorySettingsSupport::Strikethrough __swiftcall Strikethrough.init(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDB40, &qword_255D0AE20);
  result.content.inlines._rawValue = swift_allocObject();
  *(result.content.inlines._rawValue + 1) = xmmword_255D0AA80;
  *(result.content.inlines._rawValue + 4) = countAndFlagsBits;
  *(result.content.inlines._rawValue + 5) = object;
  *(result.content.inlines._rawValue + 6) = 0;
  *(result.content.inlines._rawValue + 56) = 0;
  v4->content.inlines._rawValue = result.content.inlines._rawValue;
  return result;
}

void *Strikethrough.init(content:)@<X0>(void *(*a1)(uint64_t *__return_ptr)@<X0>, void *a2@<X8>)
{
  result = a1(&v4);
  *a2 = v4;
  return result;
}

double sub_255CFA220@<D0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDB40, &qword_255D0AE20);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_255D0AA80;
  *(v4 + 40) = 0;
  *(v4 + 48) = 0;
  *(v4 + 32) = v3;
  *(v4 + 56) = 5;
  *a1 = v4;

  return result;
}

double Code._inlineContent.getter@<D0>(uint64_t *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDB40, &qword_255D0AE20);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_255D0AA80;
  *(v5 + 32) = v4;
  *(v5 + 40) = v3;
  *(v5 + 48) = 0;
  *(v5 + 56) = 1;
  *a1 = v5;

  return result;
}

double sub_255CFA330@<D0>(uint64_t *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDB40, &qword_255D0AE20);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_255D0AA80;
  *(v5 + 32) = v4;
  *(v5 + 40) = v3;
  *(v5 + 48) = 0;
  *(v5 + 56) = 1;
  *a1 = v5;

  return result;
}

__n128 __swift_memcpy200_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  *(a1 + 144) = result;
  return result;
}

uint64_t sub_255CFA404(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 200))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_255CFA44C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 184) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 200) = 1;
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

    *(result + 200) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t Color.init(rgba:)(unsigned int a1)
{
  v1 = sub_255D06C58();
  MEMORY[0x28223BE20](v1);
  (*(v3 + 104))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CE0EE0]);
  return sub_255D06CB8();
}

uint64_t Color.init(light:dark:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = a4;
  v9 = objc_allocWithZone(MEMORY[0x277D75348]);
  v13[4] = sub_255CFAD28;
  v13[5] = v8;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_255CFAD34;
  v13[3] = &block_descriptor_0;
  v10 = _Block_copy(v13);

  [v9 initWithDynamicProvider_];
  _Block_release(v10);

  v11 = sub_255D06C48();

  return v11;
}

uint64_t sub_255CFA71C(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  if (v1 > 2)
  {
    v2 = 488447999;
  }

  else
  {
    v2 = dword_255D12AC4[v1];
  }

  sub_255CFADB4();
  Color.init(rgba:)(v2);
  return sub_255D07468();
}

uint64_t sub_255CFA77C(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  if (v1 > 2)
  {
    v2 = 6737151;
  }

  else
  {
    v2 = dword_255D12AD0[v1];
  }

  sub_255CFADB4();
  Color.init(rgba:)(v2);
  return sub_255D07468();
}

uint64_t sub_255CFA7DC(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  if (v1 > 2)
  {
    v2 = 101058303;
  }

  else
  {
    v2 = dword_255D12ADC[v1];
  }

  sub_255CFADB4();
  Color.init(rgba:)(v2);
  return sub_255D07468();
}

uint64_t sub_255CFA83C(void *a1)
{
  if ([a1 userInterfaceStyle] == 2)
  {
    sub_255CFADB4();
    Color.init(rgba:)(0x18191DFFu);
  }

  else
  {
    sub_255CFADB4();
    sub_255D06C98();
  }

  return sub_255D07468();
}

uint64_t sub_255CFA8A0(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  if (v1 > 2)
  {
    v2 = -134743553;
  }

  else
  {
    v2 = dword_255D12AE8[v1];
  }

  sub_255CFADB4();
  Color.init(rgba:)(v2);
  return sub_255D07468();
}

uint64_t sub_255CFA900(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  if (v1 > 2)
  {
    v2 = 744869887;
  }

  else
  {
    v2 = dword_255D12AF4[v1];
  }

  sub_255CFADB4();
  Color.init(rgba:)(v2);
  return sub_255D07468();
}

uint64_t sub_255CFA960(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  if (v1 > 2)
  {
    v2 = -791620609;
  }

  else
  {
    v2 = dword_255D12B00[v1];
  }

  sub_255CFADB4();
  Color.init(rgba:)(v2);
  return sub_255D07468();
}

uint64_t sub_255CFA9C0(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  if (v1 > 2)
  {
    v2 = 1802402815;
  }

  else
  {
    v2 = dword_255D12B0C[v1];
  }

  sub_255CFADB4();
  Color.init(rgba:)(v2);
  return sub_255D07468();
}

uint64_t sub_255CFAA20(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  if (v1 > 2)
  {
    v2 = -454760193;
  }

  else
  {
    v2 = dword_255D12B18[v1];
  }

  sub_255CFADB4();
  Color.init(rgba:)(v2);
  return sub_255D07468();
}

uint64_t sub_255CFAA80(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  if (v1 > 2)
  {
    v2 = 1802402815;
  }

  else
  {
    v2 = dword_255D12B24[v1];
  }

  sub_255CFADB4();
  Color.init(rgba:)(v2);
  return sub_255D07468();
}

uint64_t sub_255CFAAE0(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  if (v1 > 2)
  {
    v2 = -168429569;
  }

  else
  {
    v2 = dword_255D12B30[v1];
  }

  sub_255CFADB4();
  Color.init(rgba:)(v2);
  return sub_255D07468();
}

uint64_t sub_255CFAB40(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  if (v1 > 2)
  {
    v2 = 1768516095;
  }

  else
  {
    v2 = dword_255D12B3C[v1];
  }

  sub_255CFADB4();
  Color.init(rgba:)(v2);
  return sub_255D07468();
}

uint64_t sub_255CFABA0(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  if (v1 > 2)
  {
    v2 = -168429569;
  }

  else
  {
    v2 = dword_255D12B48[v1];
  }

  sub_255CFADB4();
  Color.init(rgba:)(v2);
  return sub_255D07468();
}

uint64_t sub_255CFAC00(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  if (v1 > 2)
  {
    v2 = -757934081;
  }

  else
  {
    v2 = dword_255D12B54[v1];
  }

  sub_255CFADB4();
  Color.init(rgba:)(v2);
  return sub_255D07468();
}

uint64_t sub_255CFAC60(void *a1, uint64_t (*a2)(void), uint64_t a3, uint64_t (*a4)(void))
{
  if ([a1 userInterfaceStyle] == 2)
  {
    sub_255CFADB4();
    a4();
  }

  else
  {
    sub_255CFADB4();
    a2();
  }

  return sub_255D07468();
}

uint64_t sub_255CFACE8()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

id sub_255CFAD34(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

double block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t sub_255CFADB4()
{
  result = qword_27F7E0160;
  if (!qword_27F7E0160)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F7E0160);
  }

  return result;
}

id sub_255CFAE00()
{
  v0 = objc_allocWithZone(MEMORY[0x277CCAC68]);
  result = sub_255CFAE8C(0xD000000000000018, 0x8000000255D197A0, 0);
  qword_27F7E0168 = result;
  return result;
}

id sub_255CFAE8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = sub_255D070C8();

  v10[0] = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_255D05A68();

    swift_willThrow();
  }

  return v6;
}

__n128 sub_255CFAFF0@<Q0>(uint64_t a1@<X1>, char a2@<W2>, uint64_t *a5@<X5>, uint64_t *a6@<X6>, uint64_t *a7@<X7>, uint64_t a8@<X8>, double a9@<D0>, uint64_t *a10)
{
  v22 = a6;
  v23 = a7;
  v21 = a5;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DD9E0, &qword_255D0A9A0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v21 - v15;
  *&v24 = a9;
  BYTE8(v24) = a2 & 1;
  sub_255C73C84();
  sub_255D059E8();
  sub_255C9129C(v16);
  sub_255C76B94(v16, &qword_27F7DD9E0, &qword_255D0A9A0);
  sub_255D06278();
  sub_255C7299C(a1, a8, v21, v22);
  v17 = a8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(v23, a10) + 36);
  v18 = v29;
  *(v17 + 64) = v28;
  *(v17 + 80) = v18;
  *(v17 + 96) = v30;
  v19 = v25;
  *v17 = v24;
  *(v17 + 16) = v19;
  result = v27;
  *(v17 + 32) = v26;
  *(v17 + 48) = result;
  return result;
}

__n128 sub_255CFB1E8@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X2>, int a3@<W3>, unint64_t a4@<X4>, char a5@<W5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9@<D0>)
{
  v22[1] = a7;
  v22[2] = a6;
  v23 = a3;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DD9E0, &qword_255D0A9A0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = v22 - v16;
  v34 = a9;
  LOBYTE(v35) = a5 & 1;
  sub_255C73C84();
  sub_255D059E8();
  sub_255C9129C(v17);
  sub_255C76B94(v17, &qword_27F7DD9E0, &qword_255D0A9A0);
  sub_255D06278();
  v31 = v49;
  v32 = v50;
  v33 = v51;
  v27 = v45;
  v28 = v46;
  v29 = v47;
  v30 = v48;
  v42 = v49;
  v43 = v50;
  v44 = v51;
  v38 = v45;
  v39 = v46;
  v52 = v23 & 1;
  *&v25 = a1;
  *(&v25 + 1) = a2;
  v26.n128_u8[0] = v23 & 1;
  v26.n128_u64[1] = a4;
  v34 = a1;
  v35 = a2;
  v36 = v23 & 1;
  v37 = a4;
  v40 = v47;
  v41 = v48;
  sub_255C8A25C(a1, a2, v23 & 1);

  sub_255C7299C(&v25, &v24, &qword_27F7E0170, &unk_255D12BE0);
  sub_255C76B94(&v34, &qword_27F7E0170, &unk_255D12BE0);
  v18 = v32;
  *(a8 + 96) = v31;
  *(a8 + 112) = v18;
  *(a8 + 128) = v33;
  v19 = v28;
  *(a8 + 32) = v27;
  *(a8 + 48) = v19;
  v20 = v30;
  *(a8 + 64) = v29;
  *(a8 + 80) = v20;
  result = v26;
  *a8 = v25;
  *(a8 + 16) = result;
  return result;
}

double sub_255CFB470@<D0>(double a1@<X1>, char a2@<W2>, uint64_t a3@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v19[1] = a3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DD9E0, &qword_255D0A9A0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v19 - v11;
  v22 = a6;
  LOBYTE(v23) = a2 & 1;
  sub_255C73C84();
  sub_255D059E8();
  sub_255C9129C(v12);
  sub_255C76B94(v12, &qword_27F7DD9E0, &qword_255D0A9A0);
  sub_255D06278();
  *v21 = a1;
  *&v21[56] = v33;
  *&v21[72] = v34;
  *&v21[88] = v35;
  *&v21[104] = v36;
  *&v21[8] = v30;
  *&v21[24] = v31;
  *&v21[40] = v32;
  v22 = a1;
  v23 = v30;
  v24 = v31;
  v28 = v35;
  v29 = v36;
  v25 = v32;
  v26 = v33;
  v27 = v34;

  sub_255C7299C(v21, &v20, &qword_27F7E0180, &qword_255D12BF8);
  sub_255C76B94(&v22, &qword_27F7E0180, &qword_255D12BF8);
  v13 = *&v21[80];
  v14 = *&v21[96];
  v15 = *&v21[48];
  *(a5 + 64) = *&v21[64];
  *(a5 + 80) = v13;
  *(a5 + 96) = v14;
  result = *v21;
  v17 = *&v21[16];
  v18 = *&v21[32];
  *a5 = *v21;
  *(a5 + 16) = v17;
  *(a5 + 112) = *&v21[112];
  *(a5 + 32) = v18;
  *(a5 + 48) = v15;
  return result;
}

uint64_t sub_255CFB704@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_255D06468();
  MEMORY[0x28223BE20](v3 - 8);
  sub_255D06458();
  sub_255D06448();
  sub_255D06438();
  sub_255D06448();
  sub_255D06488();
  v4 = sub_255D06988();
  v6 = v5;
  v8 = v7;
  v9 = sub_255D06928();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  sub_255C8A038(v4, v6, v8 & 1);

  v16 = sub_255D06F78();
  v18 = v17;
  v19 = swift_allocObject();
  *(v19 + 16) = v9;
  *(v19 + 24) = v11;
  *(v19 + 32) = v13 & 1;
  *(v19 + 40) = v15;
  *(v19 + 48) = 0x3FF8000000000000;
  *(v19 + 56) = 0;
  *(v19 + 64) = v16;
  *(v19 + 72) = v18;
  result = swift_getKeyPath();
  *a2 = result;
  *(a2 + 40) = 0;
  *(a2 + 48) = sub_255CFBEEC;
  *(a2 + 56) = v19;
  return result;
}

uint64_t sub_255CFB8E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  sub_255C9AF18(*(a1 + 8), a3);

  MEMORY[0x259C4B5D0](46, 0xE100000000000000);

  sub_255C8407C();
  v4 = sub_255D069A8();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = sub_255D06F78();
  v13 = v12;
  v16 = v8 & 1;
  v14 = swift_allocObject();
  *(v14 + 16) = v4;
  *(v14 + 24) = v6;
  *(v14 + 32) = v16;
  *(v14 + 40) = v10;
  *(v14 + 48) = 0x3FF8000000000000;
  *(v14 + 56) = 0;
  *(v14 + 64) = v11;
  *(v14 + 72) = v13;
  result = swift_getKeyPath();
  *a2 = result;
  *(a2 + 40) = 0;
  *(a2 + 48) = sub_255CFBEEC;
  *(a2 + 56) = v14;
  return result;
}

uint64_t sub_255CFBA0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  sub_255C9AF18(*(a1 + 8), a3);
  sub_255D07128();

  MEMORY[0x259C4B5D0](46, 0xE100000000000000);

  sub_255C8407C();
  v4 = sub_255D069A8();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = sub_255D06F78();
  v13 = v12;
  v16 = v8 & 1;
  v14 = swift_allocObject();
  *(v14 + 16) = v4;
  *(v14 + 24) = v6;
  *(v14 + 32) = v16;
  *(v14 + 40) = v10;
  *(v14 + 48) = 0x3FF8000000000000;
  *(v14 + 56) = 0;
  *(v14 + 64) = v11;
  *(v14 + 72) = v13;
  result = swift_getKeyPath();
  *a2 = result;
  *(a2 + 40) = 0;
  *(a2 + 48) = sub_255CFBEEC;
  *(a2 + 56) = v14;
  return result;
}

uint64_t sub_255CFBB48@<X0>(uint64_t a1@<X8>)
{
  sub_255D06478();
  v2 = sub_255D06988();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_255D06F78();
  v11 = v10;
  v14 = v6 & 1;
  v12 = swift_allocObject();
  *(v12 + 16) = v2;
  *(v12 + 24) = v4;
  *(v12 + 32) = v14;
  *(v12 + 40) = v8;
  *(v12 + 48) = 0x3FF8000000000000;
  *(v12 + 56) = 0;
  *(v12 + 64) = v9;
  *(v12 + 72) = v11;
  result = swift_getKeyPath();
  *a1 = result;
  *(a1 + 40) = 0;
  *(a1 + 48) = sub_255CFBE6C;
  *(a1 + 56) = v12;
  return result;
}

void sub_255CFBC80(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = 3;
  if (*a1 < 3)
  {
    v4 = *a1;
  }

  v5 = __OFSUB__(v4, 1);
  v6 = v4 - 1;
  if (v5)
  {
    __break(1u);
  }

  else if (v6 <= 2)
  {
    v7 = a1[1];
    v8 = off_2867D4BD8[2 * v6];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E0188, &unk_255D12C00);
    swift_arrayDestroy();
    v10[0] = v3;
    v10[1] = v7;
    v9 = (v8)(v10);

    *a2 = v9;
    return;
  }

  __break(1u);
}

uint64_t sub_255CFBD8C(__int128 *a1, void (*a2)(void *__return_ptr, __int128 *))
{
  v4 = *a1;
  a2(v3, &v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E0058, &qword_255D12068);
  sub_255CFBE04();
  return sub_255D06E78();
}

unint64_t sub_255CFBE04()
{
  result = qword_27F7E0060;
  if (!qword_27F7E0060)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E0058, &qword_255D12068);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E0060);
  }

  return result;
}

uint64_t objectdestroyTm_4()
{
  sub_255C8A038(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

double NumberedList._markdownContent.getter@<D0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v5 = *(v1 + 1);
  v4 = *(v1 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDA60, &qword_255D0B7E0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_255D0AA80;
  *(v6 + 32) = v3;
  *(v6 + 40) = v5;
  *(v6 + 48) = v4;
  *(v6 + 56) = 0;
  *(v6 + 64) = 2;
  *a1 = v6;

  return result;
}

void sub_255CFBF74(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = 0;
  v33 = a3 + 32;
  v34 = *(a3 + 16);
  while (2)
  {
    v7 = *(a3 + 16);
    if (v5 == v34)
    {
      v18 = a1;
      goto LABEL_17;
    }

    if (v5 < v7)
    {
      v8 = *(v33 + 8 * v5++);
      v9 = *(v8 + 16);
      swift_bridgeObjectRetain_n();
      v10 = 0;
      v11 = MEMORY[0x277D84F90];
LABEL_6:
      v12 = v8 - 8 + 40 * v10;
      while (v9 != v10)
      {
        if (v10 >= *(v8 + 16))
        {
          __break(1u);
          goto LABEL_32;
        }

        ++v10;
        v13 = (v12 + 40);
        v14 = *(v12 + 72);
        v12 += 40;
        if (v14 == 6)
        {
          v35 = v13[1];
          v36 = *v13;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_255C977F8(0, *(v11 + 16) + 1, 1);
          }

          v16 = *(v11 + 16);
          v15 = *(v11 + 24);
          if (v16 >= v15 >> 1)
          {
            sub_255C977F8((v15 > 1), v16 + 1, 1);
          }

          *(v11 + 16) = v16 + 1;
          v17 = v11 + 40 * v16;
          *(v17 + 32) = v36;
          *(v17 + 48) = v35;
          *(v17 + 64) = 6;
          goto LABEL_6;
        }
      }

      swift_bridgeObjectRelease_n();
      v6 = *(v11 + 16);

      if (v6 < 2)
      {
        continue;
      }

      v18 = 0;
      v7 = *(a3 + 16);
LABEL_17:
      v39 = v18 & 1;
      if (v7)
      {
        v37 = MEMORY[0x277D84F90];
        sub_255C97818(0, v7, 0);
        v19 = 32;
        v20 = v37;
        do
        {
          v21 = *(a3 + v19);
          v23 = *(v37 + 16);
          v22 = *(v37 + 24);

          if (v23 >= v22 >> 1)
          {
            sub_255C97818((v22 > 1), v23 + 1, 1);
          }

          *(v37 + 16) = v23 + 1;
          *(v37 + 8 * v23 + 32) = v21;
          v19 += 8;
          --v7;
        }

        while (v7);

        v24 = *(v37 + 16);
        if (v24)
        {
          goto LABEL_23;
        }
      }

      else
      {

        v20 = MEMORY[0x277D84F90];
        v24 = *(MEMORY[0x277D84F90] + 16);
        if (v24)
        {
LABEL_23:
          v38 = MEMORY[0x277D84F90];
          sub_255C978C8(0, v24, 0);
          v25 = 32;
          v26 = v38;
          do
          {
            v27 = *(v20 + v25);
            v29 = *(v38 + 16);
            v28 = *(v38 + 24);

            if (v29 >= v28 >> 1)
            {
              sub_255C978C8((v28 > 1), v29 + 1, 1);
            }

            *(v38 + 16) = v29 + 1;
            *(v38 + 8 * v29 + 32) = v27;
            v25 += 8;
            --v24;
          }

          while (v24);

          goto LABEL_30;
        }
      }

      v26 = MEMORY[0x277D84F90];
LABEL_30:
      *a4 = v39;
      *(a4 + 8) = a2;
      *(a4 + 16) = v26;
      return;
    }

    break;
  }

LABEL_32:
  __break(1u);
}

void NumberedList.init(tight:start:items:)(char a1@<W0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v7 = a3();
  sub_255CFBF74(a1, a2, v7, v10);
  v8 = v11;
  v9 = v12;
  *a4 = v10[0];
  *(a4 + 8) = v8;
  *(a4 + 16) = v9;
}

uint64_t NumberedList.init<A>(of:tight:start:items:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a6@<X5>, uint64_t a8@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E00F8, &qword_255D12438);
  sub_255CF81F0();
  v13 = sub_255D07258();
  sub_255CFBF74(a2, a3, v13, v17);
  result = (*(*(a6 - 8) + 8))(a1, a6);
  v15 = v18;
  v16 = v19;
  *a8 = v17[0];
  *(a8 + 8) = v15;
  *(a8 + 16) = v16;
  return result;
}

uint64_t NumberedList.init<A>(of:tight:start:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, unsigned int (*a4)(char *, uint64_t, uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{
  v12 = sub_255CF7628(sub_255CF8324, 0, a4, &type metadata for ListItem, MEMORY[0x277D84A98], a5, MEMORY[0x277D84AC0], a6);
  sub_255CFBF74(a2, a3, v12, v16);
  result = (*(*(a4 - 1) + 8))(a1, a4);
  v14 = v17;
  v15 = v18;
  *a7 = v16[0];
  *(a7 + 8) = v14;
  *(a7 + 16) = v15;
  return result;
}

double sub_255CFC4C0@<D0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v5 = *(v1 + 1);
  v4 = *(v1 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDA60, &qword_255D0B7E0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_255D0AA80;
  *(v6 + 32) = v3;
  *(v6 + 40) = v5;
  *(v6 + 48) = v4;
  *(v6 + 56) = 0;
  *(v6 + 64) = 2;
  *a1 = v6;

  return result;
}

uint64_t static TextTableRowBuilder.buildExpression(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for TextTableRow(255, a2, a3, a4);
  sub_255D076C8();
  v6 = *(v5 - 8);
  swift_allocObject();
  v7 = sub_255D07298();
  (*(v6 + 16))(v8, a1, v5);

  return sub_255C9ACAC(v7);
}

uint64_t sub_255CFC660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TextTableRow(255, a2, a3, a4);
  sub_255D072C8();
  sub_255D072C8();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_255D07258();
}

uint64_t static TextTableRowBuilder.buildOptional(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v4 = a1;
  }

  else
  {
    type metadata accessor for TextTableRow(0, a2, a3, a4);
    v4 = sub_255D072A8();
  }

  return v4;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_255CFC79C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_255CFC7E4(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

void sub_255CFC85C(uint64_t a1, uint64_t a2)
{
  v12 = MEMORY[0x277D84F90];
  sub_255C97A98(0, 0, 0);
  v4 = a1 + 1;
  if (__OFADD__(a1, 1))
  {
LABEL_10:
    __break(1u);
  }

  else
  {
    v5 = *(a2 + 16);
    v6 = (a2 + 32);
    while (v5)
    {
      v7 = *v6;
      v9 = *(v12 + 16);
      v8 = *(v12 + 24);

      if (v9 >= v8 >> 1)
      {
        sub_255C97A98((v8 > 1), v9 + 1, 1);
      }

      *(v12 + 16) = v9 + 1;
      v10 = v12 + 16 * v9;
      *(v10 + 32) = a1;
      *(v10 + 40) = v7;
      --v5;
      ++v6;
      a1 = v4;
      if (__OFADD__(v4++, 1))
      {
        goto LABEL_10;
      }
    }
  }
}

double sub_255CFC94C@<D0>(uint64_t a1@<X8>)
{
  v16[2] = a1;
  v2 = sub_255D065B8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v1[1];
  v27 = *v1;
  v28[0] = v6;
  *(v28 + 9) = *(v1 + 25);
  v7 = v27;
  v8 = swift_allocObject();
  v9 = v1[1];
  v8[1] = *v1;
  v8[2] = v9;
  *(v8 + 41) = *(v1 + 25);
  KeyPath = swift_getKeyPath();
  v16[1] = KeyPath;
  v11 = swift_getKeyPath();
  v16[0] = v11;
  v26 = sub_255CD474C(MEMORY[0x277D84F90]);
  sub_255CFCCAC(&v27, &v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DE698, &qword_255D0D680);
  sub_255D06D98();
  v13 = v17;
  v12 = v18;
  sub_255CFC85C(0, v7);
  LOBYTE(v26) = 0;
  v29 = 0;
  v17 = KeyPath;
  LOBYTE(v18) = 0;
  v19 = v11;
  v20 = 0;
  v21 = v13;
  v22 = v12;
  v23 = v14;
  v24 = sub_255CFCC94;
  v25 = v8;
  sub_255D065A8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E0218, &qword_255D12D98);
  sub_255CFCCE4();
  sub_255C9CCD4();
  sub_255D06A38();
  (*(v3 + 8))(v5, v2);

  return result;
}

uint64_t sub_255CFCB90@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a3 + 8);
  v6 = v5 + result;
  if (__OFADD__(v5, result))
  {
    __break(1u);
  }

  else
  {
    v8 = *a2;
    v12 = *(a3 + 16);
    KeyPath = swift_getKeyPath();
    v11[0] = 0;
    v10 = swift_getKeyPath();
    v11[16] = 0;
    *a4 = KeyPath;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    *(a4 + 24) = v10;
    *(a4 + 32) = 0;
    *(a4 + 40) = v8;
    *(a4 + 48) = v6;
    *(a4 + 56) = *(a3 + 16);
    *(a4 + 72) = *(a3 + 32);
    *(a4 + 80) = *(a3 + 40);

    return sub_255CFCD58(&v12, v11);
  }

  return result;
}

uint64_t sub_255CFCC54()
{

  return MEMORY[0x2821FE8E8](v0, 57, 7);
}

unint64_t sub_255CFCCE4()
{
  result = qword_27F7E0220;
  if (!qword_27F7E0220)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E0218, &qword_255D12D98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E0220);
  }

  return result;
}

uint64_t sub_255CFCD58(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E0188, &unk_255D12C00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_255CFCDC8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E0218, &qword_255D12D98);
  sub_255D065B8();
  sub_255CFCCE4();
  sub_255C9CCD4();
  return swift_getOpaqueTypeConformance2();
}

void sub_255CFCE4C(uint64_t a1@<X0>, char **a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v28 = MEMORY[0x277D84F90];
    sub_255C97A60(0, v3, 0);
    v4 = v28;
    v5 = a1 + 32;
    do
    {
      sub_255C98A24(v5, v25);
      v6 = v26;
      v7 = v27;
      __swift_project_boxed_opaque_existential_1(v25, v26);
      (*(v7 + 8))(&v24, v6, v7);
      v8 = v24;
      __swift_destroy_boxed_opaque_existential_1(v25);
      v28 = v4;
      v10 = *(v4 + 16);
      v9 = *(v4 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_255C97A60((v9 > 1), v10 + 1, 1);
        v4 = v28;
      }

      *(v4 + 16) = v10 + 1;
      *(v4 + 8 * v10 + 32) = v8;
      v5 += 40;
      --v3;
    }

    while (v3);

    v11 = *(v4 + 16);
    if (v11)
    {
      goto LABEL_7;
    }

LABEL_25:
    v13 = MEMORY[0x277D84F90];
LABEL_26:

    *a2 = v13;
    return;
  }

  v4 = MEMORY[0x277D84F90];
  v11 = *(MEMORY[0x277D84F90] + 16);
  if (!v11)
  {
    goto LABEL_25;
  }

LABEL_7:
  v12 = 0;
  v13 = MEMORY[0x277D84F90];
  while (v12 < *(v4 + 16))
  {
    v14 = *(v4 + 32 + 8 * v12);
    v15 = *(v14 + 16);
    v16 = *(v13 + 2);
    v17 = v16 + v15;
    if (__OFADD__(v16, v15))
    {
      goto LABEL_28;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v17 <= *(v13 + 3) >> 1)
    {
      if (*(v14 + 16))
      {
        goto LABEL_20;
      }
    }

    else
    {
      if (v16 <= v17)
      {
        v19 = v16 + v15;
      }

      else
      {
        v19 = v16;
      }

      v13 = sub_255C96BE8(isUniquelyReferenced_nonNull_native, v19, 1, v13);
      if (*(v14 + 16))
      {
LABEL_20:
        if ((*(v13 + 3) >> 1) - *(v13 + 2) < v15)
        {
          goto LABEL_30;
        }

        swift_arrayInitWithCopy();

        if (v15)
        {
          v20 = *(v13 + 2);
          v21 = __OFADD__(v20, v15);
          v22 = v20 + v15;
          if (v21)
          {
            goto LABEL_31;
          }

          *(v13 + 2) = v22;
        }

        goto LABEL_9;
      }
    }

    if (v15)
    {
      goto LABEL_29;
    }

LABEL_9:
    if (v11 == ++v12)
    {
      goto LABEL_26;
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
}

double InlineContent._inlineContent.getter@<D0>(uint64_t *a1@<X8>)
{
  *a1 = *v1;

  return result;
}

uint64_t static Theme.docC(language:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  Theme.init()(v23);
  sub_255C99DF4(v23, v13);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E0258, &qword_255D12E88);
  v12 = &off_2867D69C0;
  if (qword_27F7DD8A0 != -1)
  {
    swift_once();
  }

  *&v9 = qword_27F7E0228;
  *(&v9 + 1) = a1;
  v10 = a2;

  sub_255C99E50(v23);
  __swift_destroy_boxed_opaque_existential_1(v13);
  sub_255CAC668(&v9, v13);
  sub_255C99DF4(v13, v23);
  v11 = &type metadata for ForegroundColor;
  v12 = &protocol witness table for ForegroundColor;
  if (qword_27F7DD8A8 != -1)
  {
    swift_once();
  }

  *&v9 = qword_27F7E0230;

  __swift_destroy_boxed_opaque_existential_1(v24);
  sub_255CAC668(&v9, v24);
  sub_255C99E50(v13);
  sub_255C99DF4(v23, v13);
  v7 = v14;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if (v7[2])
    {
      goto LABEL_7;
    }
  }

  else
  {
    v7 = sub_255CF4310(v7);
    if (v7[2])
    {
LABEL_7:
      v7[4] = sub_255CFF454;
      v7[5] = 0;

      v14 = v7;
      sub_255C99E50(v23);
      sub_255C99DF4(v13, v23);
      v7 = v25;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_8;
      }

      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_20:
  v7 = sub_255CF4310(v7);
LABEL_8:
  if (v7[2] < 2uLL)
  {
    __break(1u);
  }

  else
  {
    v7[6] = sub_255CFF8EC;
    v7[7] = 0;

    v25 = v7;
    sub_255C99E50(v13);
    sub_255C99DF4(v23, v13);
    v7 = v14;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_10;
    }
  }

  v7 = sub_255CF4310(v7);
LABEL_10:
  if (v7[2] < 3uLL)
  {
    __break(1u);
  }

  else
  {
    v7[8] = sub_255CFF9A0;
    v7[9] = 0;

    v14 = v7;
    sub_255C99E50(v23);
    sub_255C99DF4(v13, v23);
    v7 = v25;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_12;
    }
  }

  v7 = sub_255CF4310(v7);
LABEL_12:
  if (v7[2] < 4uLL)
  {
    __break(1u);
  }

  else
  {
    v7[10] = sub_255CFF9DC;
    v7[11] = 0;

    v25 = v7;
    sub_255C99E50(v13);
    sub_255C99DF4(v23, v13);
    v7 = v14;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_14;
    }
  }

  v7 = sub_255CF4310(v7);
LABEL_14:
  if (v7[2] < 5uLL)
  {
    __break(1u);
  }

  else
  {
    v7[12] = sub_255CFFA18;
    v7[13] = 0;

    v14 = v7;
    sub_255C99E50(v23);
    sub_255C99DF4(v13, v23);
    v7 = v25;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      goto LABEL_16;
    }
  }

  result = sub_255CF4310(v7);
  v7 = result;
LABEL_16:
  if (v7[2] < 6uLL)
  {
    __break(1u);
  }

  else
  {
    v7[14] = sub_255CFFA54;
    v7[15] = 0;

    v25 = v7;
    sub_255C99E50(v13);
    sub_255C99DF4(v23, v13);

    v15 = sub_255CFF424;
    v16 = 0;
    sub_255C99E50(v23);
    sub_255C99DF4(v13, v23);

    v26 = sub_255CFF8BC;
    v27 = 0;
    sub_255C99E50(v13);
    sub_255C99DF4(v23, v13);

    v17 = sub_255CFF814;
    v18 = 0;
    sub_255C99E50(v23);
    sub_255C99DF4(v13, v23);

    v28 = sub_255CFF7E4;
    v29 = 0;
    sub_255C99E50(v13);
    sub_255C99DF4(v23, v13);

    v19 = sub_255CFF7B4;
    v20 = 0;
    sub_255C99E50(v23);
    sub_255C99DF4(v13, v23);

    v30 = sub_255CFF6B0;
    v31 = 0;
    sub_255C99E50(v13);
    sub_255C99DF4(v23, v13);

    v21 = sub_255CFF5EC;
    v22 = 0;
    sub_255C99E50(v23);
    sub_255C99DF4(v13, v23);

    v32 = sub_255CFF554;
    v33 = 0;
    sub_255C99E50(v13);
    sub_255C99DF4(v23, a3);

    *(a3 + 424) = sub_255CFF4C8;
    *(a3 + 432) = 0;
    return sub_255C99E50(v23);
  }

  return result;
}

double sub_255CFD658@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (qword_27F7DD7D8 != -1)
  {
    swift_once();
  }

  v4 = qword_27F7DE030;
  v5 = byte_27F7DE038;
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  *(v6 + 24) = 0x3FE999999999999ALL;
  *(v6 + 32) = 0;
  *(v6 + 40) = v4;
  *(v6 + 48) = v5;
  *a2 = swift_getKeyPath();
  *(a2 + 40) = 0;
  *(a2 + 48) = sub_255C9AB68;
  *(a2 + 56) = v6;
  *(a2 + 64) = swift_getKeyPath();
  *(a2 + 72) = sub_255CE0A28;
  *(a2 + 80) = 0;

  return result;
}

uint64_t sub_255CFD760@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = 0x3FB0000000000000;
  *(v4 + 32) = 0;
  KeyPath = swift_getKeyPath();
  v6 = qword_27F7DD7D8;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = qword_27F7DE030;
  v8 = byte_27F7DE038;
  v9 = swift_allocObject();
  *(v9 + 16) = KeyPath;
  *(v9 + 56) = 0;
  *(v9 + 64) = sub_255D00838;
  *(v9 + 72) = v4;
  *(v9 + 80) = 0x3FF999999999999ALL;
  *(v9 + 88) = 0;
  *(v9 + 96) = v7;
  *(v9 + 104) = v8;
  *a2 = swift_getKeyPath();
  *(a2 + 40) = 0;
  *(a2 + 48) = sub_255D00834;
  *(a2 + 56) = v9;
  result = swift_getKeyPath();
  *(a2 + 64) = result;
  *(a2 + 72) = sub_255CE0138;
  *(a2 + 80) = 0;
  return result;
}

uint64_t sub_255CFD8C4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = 0x3FB2493C89F40A28;
  *(v4 + 32) = 0;
  KeyPath = swift_getKeyPath();
  v6 = qword_27F7DD7D8;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = qword_27F7DE030;
  v8 = byte_27F7DE038;
  v9 = swift_allocObject();
  *(v9 + 16) = KeyPath;
  *(v9 + 56) = 0;
  *(v9 + 64) = sub_255D00838;
  *(v9 + 72) = v4;
  *(v9 + 80) = 0x3FF999999999999ALL;
  *(v9 + 88) = 0;
  *(v9 + 96) = v7;
  *(v9 + 104) = v8;
  *a2 = swift_getKeyPath();
  *(a2 + 40) = 0;
  *(a2 + 48) = sub_255D00834;
  *(a2 + 56) = v9;
  result = swift_getKeyPath();
  *(a2 + 64) = result;
  *(a2 + 72) = sub_255CE014C;
  *(a2 + 80) = 0;
  return result;
}

uint64_t sub_255CFDA34@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = 0x3FB555714B9CB685;
  *(v4 + 32) = 0;
  KeyPath = swift_getKeyPath();
  v6 = qword_27F7DD7D8;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = qword_27F7DE030;
  v8 = byte_27F7DE038;
  v9 = swift_allocObject();
  *(v9 + 16) = KeyPath;
  *(v9 + 56) = 0;
  *(v9 + 64) = sub_255D00838;
  *(v9 + 72) = v4;
  *(v9 + 80) = 0x3FF999999999999ALL;
  *(v9 + 88) = 0;
  *(v9 + 96) = v7;
  *(v9 + 104) = v8;
  *a2 = swift_getKeyPath();
  *(a2 + 40) = 0;
  *(a2 + 48) = sub_255D00834;
  *(a2 + 56) = v9;
  result = swift_getKeyPath();
  *(a2 + 64) = result;
  *(a2 + 72) = sub_255CE0160;
  *(a2 + 80) = 0;
  return result;
}

uint64_t sub_255CFDBA4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = 0x3FB745E0B4E11DBDLL;
  *(v4 + 32) = 0;
  KeyPath = swift_getKeyPath();
  v6 = qword_27F7DD7D8;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = qword_27F7DE030;
  v8 = byte_27F7DE038;
  v9 = swift_allocObject();
  *(v9 + 16) = KeyPath;
  *(v9 + 56) = 0;
  *(v9 + 64) = sub_255D00838;
  *(v9 + 72) = v4;
  *(v9 + 80) = 0x3FF999999999999ALL;
  *(v9 + 88) = 0;
  *(v9 + 96) = v7;
  *(v9 + 104) = v8;
  *a2 = swift_getKeyPath();
  *(a2 + 40) = 0;
  *(a2 + 48) = sub_255D00834;
  *(a2 + 56) = v9;
  result = swift_getKeyPath();
  *(a2 + 64) = result;
  *(a2 + 72) = sub_255CE0174;
  *(a2 + 80) = 0;
  return result;
}

uint64_t sub_255CFDD14@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = 0x3FCE1E2584F4C6E7;
  *(v4 + 32) = 0;
  KeyPath = swift_getKeyPath();
  v6 = qword_27F7DD7D8;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = qword_27F7DE030;
  v8 = byte_27F7DE038;
  v9 = swift_allocObject();
  *(v9 + 16) = KeyPath;
  *(v9 + 56) = 0;
  *(v9 + 64) = sub_255D00794;
  *(v9 + 72) = v4;
  *(v9 + 80) = 0x3FF999999999999ALL;
  *(v9 + 88) = 0;
  *(v9 + 96) = v7;
  *(v9 + 104) = v8;
  *a2 = swift_getKeyPath();
  *(a2 + 40) = 0;
  *(a2 + 48) = sub_255D007A4;
  *(a2 + 56) = v9;
  result = swift_getKeyPath();
  *(a2 + 64) = result;
  *(a2 + 72) = sub_255CE0A30;
  *(a2 + 80) = 0;
  return result;
}

uint64_t sub_255CFDE84@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = 256;
  *(v4 + 32) = 0x3FCE1E2584F4C6E7;
  *(v4 + 40) = 0;
  KeyPath = swift_getKeyPath();
  v6 = qword_27F7DD7D8;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = qword_27F7DE030;
  v8 = byte_27F7DE038;
  v9 = swift_allocObject();
  *(v9 + 16) = KeyPath;
  *(v9 + 56) = 0;
  *(v9 + 64) = sub_255C9A894;
  *(v9 + 72) = v4;
  *(v9 + 80) = 0x3FE999999999999ALL;
  *(v9 + 88) = 0;
  *(v9 + 96) = v7;
  *(v9 + 104) = v8;
  result = swift_getKeyPath();
  *a2 = result;
  *(a2 + 40) = 0;
  *(a2 + 48) = sub_255D00660;
  *(a2 + 56) = v9;
  return result;
}

uint64_t sub_255CFDFDC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DFEB0, &qword_255D11678);
  v5 = v4 - 8;
  v34 = *(v4 - 8);
  v6 = *(v34 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v34 - v9;
  v11 = *a1;
  v12 = sub_255D06718();
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  *(v13 + 24) = v12;
  *(v13 + 32) = 0x3FEE1E2584F4C6E7;
  *(v13 + 40) = 1;
  KeyPath = swift_getKeyPath();
  v35 = 0;

  sub_255D06F68();
  sub_255D06278();
  v15 = v35;
  v16 = sub_255D06F58();
  v18 = v17;
  v19 = &v10[*(v5 + 44)];
  *v19 = sub_255D06F58();
  v19[1] = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E02D8, &qword_255D12F20);
  sub_255CFE2F0(v19 + *(v21 + 44), v22);
  v23 = (v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E02E0, &qword_255D12F28) + 36));
  *v23 = v16;
  v23[1] = v18;
  *v10 = KeyPath;
  v10[40] = v15;
  *(v10 + 6) = sub_255D00104;
  *(v10 + 7) = v13;
  v24 = v37;
  *(v10 + 4) = v36;
  *(v10 + 5) = v24;
  v25 = v42;
  *(v10 + 9) = v41;
  *(v10 + 10) = v25;
  v26 = v40;
  *(v10 + 7) = v39;
  *(v10 + 8) = v26;
  *(v10 + 6) = v38;
  if (qword_27F7DD7D8 != -1)
  {
    swift_once();
  }

  v27 = qword_27F7DE030;
  v28 = byte_27F7DE038;
  sub_255D00118(v10, v7);
  v29 = (*(v34 + 80) + 16) & ~*(v34 + 80);
  v30 = swift_allocObject();
  sub_255D00118(v7, v30 + v29);
  v31 = v30 + ((v29 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v31 = 0x3FF999999999999ALL;
  *(v31 + 8) = 0;
  v32 = v30 + ((v29 + v6 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v32 = v27;
  *(v32 + 8) = v28;
  result = swift_getKeyPath();
  *a2 = result;
  *(a2 + 40) = 0;
  *(a2 + 48) = sub_255D003B8;
  *(a2 + 56) = v30;
  return result;
}

uint64_t sub_255CFE2F0@<X0>(uint64_t a1@<X8>, __n128 a2@<Q0>)
{
  v46 = a1;
  v2 = sub_255D06258();
  MEMORY[0x28223BE20](v2);
  v4 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E02F0, &qword_255D12F38);
  MEMORY[0x28223BE20](v43);
  v45 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v42 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DFDB8, &qword_255D115B0);
  MEMORY[0x28223BE20](v9);
  v44 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v42 - v12;
  v14 = *(v2 + 20);
  v15 = *MEMORY[0x277CE0118];
  v16 = sub_255D06498();
  v17 = *(*(v16 - 8) + 104);
  v17(&v13[v14], v15, v16);
  __asm { FMOV            V0.2D, #15.0 }

  v42 = _Q0;
  *v13 = _Q0;
  if (qword_27F7DD8B0 != -1)
  {
    swift_once();
  }

  *&v13[*(v9 + 52)] = qword_27F7E0238;
  *&v13[*(v9 + 56)] = 256;
  v17(&v4[*(v2 + 20)], v15, v16);
  *v4 = v42;
  v23 = qword_27F7DD8B8;

  if (v23 != -1)
  {
    swift_once();
  }

  v24 = qword_27F7E0240;
  sub_255D05F68();
  sub_255D004C0(v4, v8, v25);
  v26.n128_u64[0] = v47;
  v27 = *&v47 * 0.5;
  v28 = &v8[*(v43 + 68)];
  sub_255D004C0(v4, v28, v26);
  *(v28 + *(sub_255D06248() + 20)) = v27;
  v29 = v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E02F8, &qword_255D12F40) + 36);
  v30 = v48;
  *v29 = v47;
  *(v29 + 16) = v30;
  *(v29 + 32) = v49;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E0300, &qword_255D12F48);
  *(v28 + *(v31 + 52)) = v24;
  *(v28 + *(v31 + 56)) = 256;

  v32 = sub_255D06F58();
  v34 = v33;
  sub_255D00524(v4, v35);
  v36 = (v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E0308, &qword_255D12F50) + 36));
  *v36 = v32;
  v36[1] = v34;
  v37 = v44;
  sub_255C7299C(v13, v44, &qword_27F7DFDB8, &qword_255D115B0);
  v38 = v45;
  sub_255D00580(v8, v45);
  v39 = v46;
  sub_255C7299C(v37, v46, &qword_27F7DFDB8, &qword_255D115B0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E02E8, &qword_255D12F30);
  sub_255D00580(v38, v39 + *(v40 + 48));
  sub_255D005F0(v8);
  sub_255C76B94(v13, &qword_27F7DFDB8, &qword_255D115B0);
  sub_255D005F0(v38);
  return sub_255C76B94(v37, &qword_27F7DFDB8, &qword_255D115B0);
}

uint64_t sub_255CFE728@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DFEA0, &qword_255D11668);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v34[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v10 = &v34[-v9];
  v11 = *(a1 + 16);
  v36[0] = *a1;
  v36[1] = v11;
  v37 = *(a1 + 32);
  sub_255D066D8();
  v35 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E02A8, &qword_255D12F00);
  sub_255CFFEB4(&qword_27F7E02B0, &qword_27F7E02A8, &qword_255D12F00, sub_255CECC60);
  sub_255D05F08();
  if (qword_27F7DD8C0 != -1)
  {
    swift_once();
  }

  v12 = qword_27F7E0248;
  v13 = sub_255D06718();
  v14 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E02B8, &qword_255D12F08) + 36)];
  *v14 = v12;
  v14[8] = v13;
  v15 = &v10[*(v4 + 36)];
  v16 = *(sub_255D06258() + 20);
  v17 = *MEMORY[0x277CE0118];
  v18 = sub_255D06498();
  (*(*(v18 - 8) + 104))(&v15[v16], v17, v18);
  __asm { FMOV            V0.2D, #15.0 }

  *v15 = _Q0;
  *&v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DFD50, &qword_255D11588) + 36)] = 256;
  v24 = qword_27F7DD7D8;

  if (v24 != -1)
  {
    swift_once();
  }

  v25 = qword_27F7DE030;
  v26 = byte_27F7DE038;
  sub_255CC1068(v10, v7, &qword_27F7DFEA0, &qword_255D11668);
  v27 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v28 = (v27 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = (v27 + v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  sub_255CC1068(v7, v30 + v27, &qword_27F7DFEA0, &qword_255D11668);
  v31 = v30 + v28;
  *v31 = 0x3FE999999999999ALL;
  *(v31 + 8) = 0;
  v32 = v30 + v29;
  *v32 = v25;
  *(v32 + 8) = v26;
  result = swift_getKeyPath();
  *a2 = result;
  *(a2 + 40) = 0;
  *(a2 + 48) = sub_255D000A4;
  *(a2 + 56) = v30;
  return result;
}

void sub_255CFEA9C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v13 = *(a1 + 32);
  v3 = swift_allocObject();
  *(v3 + 16) = v13;
  *(v3 + 24) = 256;
  *(v3 + 32) = 0x3FD5555C52E72DA1;
  *(v3 + 40) = 0;
  *a2 = swift_getKeyPath();
  *(a2 + 40) = 0;
  *(a2 + 48) = sub_255C9A894;
  *(a2 + 56) = v3;
  *(a2 + 64) = swift_getKeyPath();
  *(a2 + 72) = sub_255CE004C;
  *(a2 + 80) = 0;
  sub_255C9A8A4(&v13, &v12);
  LOBYTE(v3) = sub_255D06778();
  sub_255D05EF8();
  *(a2 + 88) = v3;
  *(a2 + 96) = v4;
  *(a2 + 104) = v5;
  *(a2 + 112) = v6;
  *(a2 + 120) = v7;
  *(a2 + 128) = 0;
  LOBYTE(v3) = sub_255D06748();
  sub_255D05EF8();
  *(a2 + 136) = v3;
  *(a2 + 144) = v8;
  *(a2 + 152) = v9;
  *(a2 + 160) = v10;
  *(a2 + 168) = v11;
  *(a2 + 176) = 0;
}

double sub_255CFEBA8@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_255D06F58();
  sub_255D06278();
  v4 = swift_allocObject();
  *(v4 + 72) = v9;
  *(v4 + 88) = v10;
  *(v4 + 104) = v11;
  *(v4 + 120) = v12;
  *(v4 + 24) = v6;
  *(v4 + 40) = v7;
  *(v4 + 16) = v3;
  *(v4 + 56) = v8;
  *(v4 + 136) = 0x3FF999999999999ALL;
  *(v4 + 144) = 0;
  *(v4 + 152) = 0x3FF999999999999ALL;
  *(v4 + 160) = 0;
  *a2 = swift_getKeyPath();
  *(a2 + 40) = 0;
  *(a2 + 48) = sub_255CFFE54;
  *(a2 + 56) = v4;

  return result;
}

double sub_255CFECD0@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = 0x3FE999999999999ALL;
  *(v4 + 32) = 0;
  *(v4 + 40) = 0;
  *(v4 + 48) = 2;
  *a2 = swift_getKeyPath();
  *(a2 + 40) = 0;
  *(a2 + 48) = sub_255C9AB24;
  *(a2 + 56) = v4;

  return result;
}

uint64_t sub_255CFED70@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = qword_27F7DD8C8;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = qword_27F7E0250;

  sub_255D05F68();
  *&v16 = swift_getKeyPath();
  *(&v16 + 1) = sub_255C87528;
  *&v17 = 0;
  *(&v17 + 1) = v5;
  v18 = v12;
  v19 = v13;
  *&v15[38] = v12;
  *&v15[54] = v13;
  *&v15[22] = v17;
  *&v15[6] = v16;
  v20 = v14;
  *&v15[70] = v14;
  v21[0] = v16;
  v21[1] = sub_255C87528;
  v21[2] = 0;
  v21[3] = v5;
  v24 = v14;
  v23 = v13;
  v22 = v12;
  sub_255C7299C(&v16, &v11, &qword_27F7DDF28, &qword_255D0B9D8);
  sub_255C76B94(v21, &qword_27F7DDF28, &qword_255D0B9D8);
  if (qword_27F7DD7D8 != -1)
  {
    swift_once();
  }

  v6 = qword_27F7DE030;
  v7 = byte_27F7DE038;
  v8 = swift_allocObject();
  v9 = *&v15[32];
  *(v8 + 42) = *&v15[16];
  *(v8 + 16) = v3;
  *(v8 + 24) = 256;
  *(v8 + 58) = v9;
  *(v8 + 74) = *&v15[48];
  *(v8 + 88) = *&v15[62];
  *(v8 + 26) = *v15;
  *(v8 + 104) = 0x3FF999999999999ALL;
  *(v8 + 112) = 0;
  *(v8 + 120) = v6;
  *(v8 + 128) = v7;
  result = swift_getKeyPath();
  *a2 = result;
  *(a2 + 40) = 0;
  *(a2 + 48) = sub_255CFFD48;
  *(a2 + 56) = v8;
  return result;
}

uint64_t sub_255CFEF94@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v5 = a1[3];
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = v4;
  v7[4] = v6;
  v7[5] = v5;
  KeyPath = swift_getKeyPath();
  v9 = swift_allocObject();
  *(v9 + 16) = sub_255C9A4D4;
  *(v9 + 24) = v7;
  v10 = swift_allocObject();
  *(v10 + 16) = v6;
  *(v10 + 24) = KeyPath;
  *(v10 + 32) = sub_255C9A54C;
  *(v10 + 40) = v9;
  *(v10 + 48) = 256;
  *(v10 + 56) = 0x3FCE1E2584F4C6E7;
  *(v10 + 64) = 0;
  v11 = swift_getKeyPath();
  swift_retain_n();

  LOBYTE(v5) = sub_255D06718();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 56) = 0;
  *(v12 + 64) = sub_255CFFC98;
  *(v12 + 72) = v10;
  *(v12 + 80) = v5;
  *(v12 + 88) = 0x3FE2D2DCB1465E89;
  *(v12 + 96) = 1;
  result = swift_getKeyPath();
  *a2 = result;
  *(a2 + 40) = 0;
  *(a2 + 48) = sub_255C9A56C;
  *(a2 + 56) = v12;
  return result;
}

double sub_255CFF134@<D0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DFE48, &qword_255D11610);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  sub_255D06E88();
  if (qword_27F7DD8C8 != -1)
  {
    swift_once();
  }

  v9 = qword_27F7E0250;
  v10 = sub_255D06718();
  v11 = &v8[*(v2 + 36)];
  *v11 = v9;
  v11[8] = v10;
  sub_255CC1068(v8, v5, &qword_27F7DFE48, &qword_255D11610);
  v12 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v13 = swift_allocObject();
  sub_255CC1068(v5, v13 + v12, &qword_27F7DFE48, &qword_255D11610);
  v14 = v13 + ((v12 + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v14 = 0x4002CCCCCCCCCCCDLL;
  *(v14 + 8) = 0;
  v15 = v13 + ((v12 + v4 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v15 = 0x4002CCCCCCCCCCCDLL;
  *(v15 + 8) = 0;
  *a1 = swift_getKeyPath();
  *(a1 + 40) = 0;
  *(a1 + 48) = sub_255CFFB90;
  *(a1 + 56) = v13;

  return result;
}

double sub_255CFF490@<D0>(uint64_t a1@<X1>, char a2@<W2>, uint64_t a3@<X8>, double a4@<D0>)
{
  v4 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v4;
  v7 = *(a1 + 32);
  return sub_255CE785C(v6, a2 & 1, a3, a4);
}

uint64_t sub_255CFF4C8()
{
  sub_255CFF134(&v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E0260, &qword_255D12E90);
  sub_255C810A8(&qword_27F7E0268, &qword_27F7E0260, &qword_255D12E90, &unk_255D0CF58);
  return sub_255D06E78();
}

uint64_t sub_255CFF554(_OWORD *a1)
{
  v1 = a1[1];
  v4[0] = *a1;
  v4[1] = v1;
  sub_255CFEF94(v4, &v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DFEC8, &qword_255D11690);
  sub_255C810A8(&qword_27F7E0270, &qword_27F7DFEC8, &qword_255D11690, &unk_255D0CF58);
  return sub_255D06E78();
}

uint64_t sub_255CFF61C(__int128 *a1, void (*a2)(void *__return_ptr, __int128 *), uint64_t *a3, uint64_t *a4, unint64_t *a5)
{
  v10 = *a1;
  a2(v9, &v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  sub_255C810A8(a5, a3, a4, &unk_255D0CF58);
  return sub_255D06E78();
}

uint64_t sub_255CFF6B0()
{
  v0 = sub_255D06CE8();
  v1 = sub_255D06F78();
  v3 = v2;
  v4 = swift_allocObject();
  *(v4 + 16) = v0;
  *(v4 + 24) = 0x3FF8000000000000;
  *(v4 + 32) = 0;
  *(v4 + 40) = v1;
  *(v4 + 48) = v3;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DD930, &unk_255D0A5A0);
  sub_255C810A8(&qword_27F7DD938, &qword_27F7DD930, &unk_255D0A5A0, &unk_255D0CF58);
  return sub_255D06E78();
}

uint64_t sub_255CFF814(__int128 *a1)
{
  v1 = *(a1 + 2);
  v4 = *a1;
  v5 = v1;
  v6 = *(a1 + 24);
  sub_255CFE728(&v4, &v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E0298, &qword_255D12EF8);
  sub_255C810A8(&qword_27F7E02A0, &qword_27F7E0298, &qword_255D12EF8, &unk_255D0CF58);
  return sub_255D06E78();
}

uint64_t sub_255CFF928(__int128 *a1, void (*a2)(void *__return_ptr, __int128 *), uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  v10 = *a1;
  a2(v9, &v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  a5();
  return sub_255D06E78();
}

uint64_t sub_255CFFA90()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DFE48, &qword_255D11610) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = sub_255D06E98();
  (*(*(v6 - 8) + 8))(v5, v6);

  return MEMORY[0x2821FE8E8](v0, v4 + 9, v2 | 7);
}

double block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_255CFFBD8()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_255CFFC18()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_255CFFC50()
{

  return MEMORY[0x2821FE8E8](v0, 65, 7);
}

double sub_255CFFC98@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  v3 = *(v1 + 64);
  v4 = *(v1 + 32);
  v6[0] = *(v1 + 16);
  v6[1] = v4;
  v7 = *(v1 + 48);
  return sub_255CE785C(v6, v3, a1, v2);
}

uint64_t sub_255CFFCF0()
{

  return MEMORY[0x2821FE8E8](v0, 129, 7);
}

double sub_255CFFD48@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 120);
  v3 = *(v1 + 128);
  v4 = *(v1 + 112);
  v5 = *(v1 + 64);
  v9[2] = *(v1 + 48);
  v9[3] = v5;
  v9[4] = *(v1 + 80);
  v6 = *(v1 + 104);
  v10 = *(v1 + 96);
  v7 = *(v1 + 32);
  v9[0] = *(v1 + 16);
  v9[1] = v7;
  *&result = sub_255CE8F6C(v9, v6, v4, v2, v3, a1).n128_u64[0];
  return result;
}

uint64_t sub_255CFFD98()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_255CFFDE4()
{

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

uint64_t sub_255CFFE1C()
{

  return MEMORY[0x2821FE8E8](v0, 161, 7);
}

double sub_255CFFE54@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 152);
  v3 = *(v1 + 160);
  v4 = *(v1 + 144);
  v5 = *(v1 + 96);
  v10[4] = *(v1 + 80);
  v10[5] = v5;
  v10[6] = *(v1 + 112);
  v6 = *(v1 + 136);
  v11 = *(v1 + 128);
  v7 = *(v1 + 32);
  v10[0] = *(v1 + 16);
  v10[1] = v7;
  v8 = *(v1 + 64);
  v10[2] = *(v1 + 48);
  v10[3] = v8;
  *&result = sub_255CE8CCC(v10, v6, v4, v2, v3, a1).n128_u64[0];
  return result;
}

uint64_t sub_255CFFEB4(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

uint64_t sub_255CFFF38()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DFEA0, &qword_255D11668) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E02C0, &qword_255D12F10);
  (*(*(v6 - 8) + 8))(v5, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E02B8, &qword_255D12F08);

  v7 = v1[11];
  v8 = v7 + *(sub_255D06258() + 20);
  v9 = sub_255D06498();
  (*(*(v9 - 8) + 8))(v5 + v8, v9);

  return MEMORY[0x2821FE8E8](v0, v4 + 9, v2 | 7);
}

uint64_t sub_255D000CC()
{

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_255D00118(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DFEB0, &qword_255D11678);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_255D00188()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DFEB0, &qword_255D11678);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  if (*(v0 + v3 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + v3));
  }

  else
  {
  }

  v6 = (v4 + v3 + 23) & 0xFFFFFFFFFFFFFFF8;

  v7 = *(v1 + 36);
  v8 = v5 + v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E02D8, &qword_255D12F20) + 44);
  v9 = sub_255D06258();
  v10 = *(v9 + 20);
  v11 = sub_255D06498();
  v12 = *(*(v11 - 8) + 8);
  v12(v8 + v10, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DFDB8, &qword_255D115B0);

  v13 = v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E02E8, &qword_255D12F30) + 48);
  v12(v13 + *(v9 + 20), v11);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E02F0, &qword_255D12F38);
  v12(v13 + *(v14 + 68) + *(v9 + 20), v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E02F8, &qword_255D12F40);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E0300, &qword_255D12F48);

  return MEMORY[0x2821FE8E8](v0, v6 + 9, v2 | 7);
}

uint64_t sub_255D003E0(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, unint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = v7 + *(v6 + 64);
  v9 = v4 + ((v8 + 7) & 0xFFFFFFFFFFFFFFF8);
  v10 = *v9;
  v11 = v4 + ((v8 + 23) & 0xFFFFFFFFFFFFFFF8);
  v12 = *v11;
  v13 = *(v11 + 8);
  v14 = *(v9 + 8);

  return a4(a1, v4 + v7, v10, v14, v12, v13);
}

uint64_t sub_255D004C0(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = sub_255D06258();
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_255D00524(uint64_t a1, __n128 a2)
{
  v3 = sub_255D06258();
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_255D00580(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E02F0, &qword_255D12F38);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_255D005F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E02F0, &qword_255D12F38);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_255D00678()
{
  result = qword_27F7E0318;
  if (!qword_27F7E0318)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E0310, &qword_255D12F58);
    sub_255C810A8(&qword_27F7E0320, &qword_27F7E0328, &unk_255D12F60, &unk_255D0CF58);
    sub_255C810A8(&qword_27F7DE4E0, &qword_27F7DE4E8, &qword_255D0C6D0, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E0318);
  }

  return result;
}

uint64_t sub_255D0075C()
{

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_255D0083C(uint64_t a1)
{
  v2 = sub_255D067D8();
  v32 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v31 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v31 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF2D8, &unk_255D0F160);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v31 - v8;
  v10 = sub_255D06808();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for FontProperties.Family(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for FontProperties(0);
  sub_255D00CD8(a1, v16);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = sub_255D06878();
  }

  else
  {
    (*(v11 + 32))(v13, v16, v10);
    (*(v11 + 16))(v9, v13, v10);
    (*(v11 + 56))(v9, 0, 1, v10);
    v18 = sub_255D06898();
    sub_255CC8C3C(v9);
    (*(v11 + 8))(v13, v10);
  }

  v19 = v32;
  if (*(a1 + v17[5]) == 1)
  {
    v20 = sub_255D06788();

    v18 = v20;
  }

  if (*(a1 + v17[6]) > 1u)
  {
    if (*(a1 + v17[6]) == 2)
    {
      v21 = sub_255D067A8();
    }

    else
    {
      v21 = sub_255D067B8();
    }
  }

  else
  {
    if (!*(a1 + v17[6]))
    {
      goto LABEL_13;
    }

    v21 = sub_255D068C8();
  }

  v22 = v21;

  v18 = v22;
LABEL_13:
  if (*(a1 + v17[7]) == 1)
  {
    v23 = sub_255D06798();

    v18 = v23;
  }

  _s33LegalAndRegulatorySettingsSupport14FontPropertiesV13defaultWeight7SwiftUI0F0V0I0VvgZ_0();
  if ((sub_255D06818() & 1) == 0)
  {
    v24 = sub_255D068A8();

    v18 = v24;
  }

  FontProperties.width.getter(v6);
  v25 = v31;
  sub_255D067C8();
  sub_255D00D3C();
  v26 = sub_255D07078();
  v27 = *(v19 + 8);
  v27(v25, v2);
  v27(v6, v2);
  if ((v26 & 1) == 0)
  {
    FontProperties.width.getter(v6);
    v28 = sub_255D067E8();

    v27(v6, v2);
    v18 = v28;
  }

  if (*(a1 + v17[8]) == 1)
  {
    v29 = sub_255D06888();

    return v29;
  }

  return v18;
}

uint64_t sub_255D00CD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FontProperties.Family(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_255D00D3C()
{
  result = qword_27F7E0330;
  if (!qword_27F7E0330)
  {
    sub_255D067D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E0330);
  }

  return result;
}

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_255D00DCC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 104);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_255D00E14(uint64_t result, int a2, int a3)
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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
      *(result + 104) = (a2 - 1);
      return result;
    }

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_255D00E9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = sub_255D063E8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v41[0] = *a1;
  v41[1] = v7;
  v8 = *(a1 + 48);
  v41[2] = *(a1 + 32);
  v41[3] = v8;
  v42 = *(a1 + 64);
  v9 = *&v41[0];
  v10 = *(a1 + 24);
  v43 = *(a1 + 8);
  v44 = v10;
  v45 = *(a1 + 40);
  v46 = *(a1 + 56);
  v11 = v42;
  if (v42)
  {
    *(v39 + 8) = *(a1 + 8);
    *(&v39[1] + 8) = *(a1 + 24);
    *(&v39[2] + 8) = *(a1 + 40);
    *(&v39[3] + 1) = *(a1 + 56);
    *&v39[0] = *&v41[0];
    sub_255D01720(v41, v26);
  }

  else
  {
    sub_255D01720(v41, v26);
    sub_255D07438();
    v12 = sub_255D066C8();
    sub_255D05D88();

    sub_255D063D8();
    swift_getAtKeyPath();
    sub_255D01790(v41);
    (*(v4 + 8))(v6, v3);
  }

  v38[0] = v39[0];
  v38[1] = v39[1];
  v38[2] = v39[2];
  v38[3] = v39[3];
  v13 = *&v39[0];

  sub_255D017F8(v38);
  if (v11)
  {
    *&v26[0] = v9;
    *(v26 + 8) = v43;
    *(&v26[1] + 8) = v44;
    *(&v26[2] + 8) = v45;
    *(&v26[3] + 1) = v46;
    v27 = v11;
    v34 = v26[0];
    v35 = v26[1];
    v36 = v26[2];
    v37 = v26[3];
    sub_255C88748(v26, &v30);
  }

  else
  {

    sub_255D07438();
    v24 = v3;
    v14 = sub_255D066C8();
    sub_255D05D88();

    sub_255D063D8();
    swift_getAtKeyPath();
    sub_255D01790(v41);
    (*(v4 + 8))(v6, v24);
  }

  v15 = *(a1 + 88);
  v40[0] = *(a1 + 72);
  v40[1] = v15;
  v40[2] = *(a1 + 104);
  v30 = v34;
  v31 = v35;
  v32 = v36;
  v33 = v37;
  sub_255D017F8(&v30);
  v16 = v13(v40, *(&v31 + 1));

  v17 = *(v16 + 16);
  v28 = 0;
  v29 = v17;
  swift_getKeyPath();
  v18 = swift_allocObject();
  v19 = *(a1 + 80);
  *(v18 + 88) = *(a1 + 64);
  *(v18 + 104) = v19;
  *(v18 + 120) = *(a1 + 96);
  v20 = *(a1 + 16);
  *(v18 + 24) = *a1;
  *(v18 + 40) = v20;
  v21 = *(a1 + 48);
  *(v18 + 56) = *(a1 + 32);
  *(v18 + 16) = v16;
  *(v18 + 136) = *(a1 + 112);
  *(v18 + 72) = v21;
  sub_255CE25F8(a1, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF778, &qword_255D11AF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E0348, &qword_255D130A0);
  sub_255CE23CC();
  sub_255D01930();
  return sub_255D06EA8();
}

void sub_255D012A0(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_255D063E8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  if ((*a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v12 >= *(a2 + 16))
  {
LABEL_11:
    __break(1u);
    return;
  }

  v13 = (a2 + 32 * v12);
  v15 = v13[4];
  v14 = v13[5];
  v16 = v13[6];
  v17 = v13[7];
  v18 = *(a3 + 16);
  v51[0] = *a3;
  v51[1] = v18;
  v19 = *(a3 + 48);
  v51[2] = *(a3 + 32);
  v51[3] = v19;
  v52 = *(a3 + 64);
  v20 = *&v51[0];
  v21 = *(a3 + 8);
  v22 = *(a3 + 24);
  v23 = *(a3 + 40);
  v56 = *(a3 + 56);
  v54 = v22;
  v55 = v23;
  v53 = v21;
  v24 = v52;
  if (v52)
  {
    *&v50[8] = *(a3 + 8);
    *&v50[24] = *(a3 + 24);
    *&v50[40] = *(a3 + 40);
    *&v50[56] = *(a3 + 56);
    *v50 = *&v51[0];
    sub_255D01720(v51, v47);
  }

  else
  {
    sub_255D01720(v51, v47);
    sub_255D07438();
    v25 = sub_255D066C8();
    sub_255D05D88();

    sub_255D063D8();
    swift_getAtKeyPath();
    sub_255D01790(v51);
    (*(v9 + 8))(v11, v8);
  }

  v46[0] = *v50;
  v46[1] = *&v50[16];
  v46[2] = *&v50[32];
  v46[3] = *&v50[48];
  v26 = *&v50[16];

  sub_255D017F8(v46);
  if (v24)
  {
    *&v45[8] = v53;
    *&v45[24] = v54;
    *&v45[40] = v55;
    *&v45[56] = v56;
    *v45 = v20;
    sub_255D01720(v51, v47);
  }

  else
  {
    sub_255D01720(v51, v47);
    sub_255D07438();
    v27 = sub_255D066C8();
    sub_255D05D88();

    sub_255D063D8();
    swift_getAtKeyPath();
    sub_255D01790(v51);
    (*(v9 + 8))(v11, v8);
  }

  v48 = *&v45[32];
  v49 = *&v45[48];
  v47[0] = *v45;
  v47[1] = *&v45[16];
  v28 = *&v45[24];
  v29 = *&v45[48];
  v40 = *&v45[56];
  v41 = *&v45[40];

  v39 = v48;
  sub_255D017F8(v47);
  v30 = sub_255D06F58();
  v32 = v31;
  v57.origin.x = v15;
  v57.origin.y = v14;
  v57.size.width = v16;
  v57.size.height = v17;
  MinX = CGRectGetMinX(v57);
  v58.origin.x = v15;
  v58.origin.y = v14;
  v58.size.width = v16;
  v58.size.height = v17;
  MinY = CGRectGetMinY(v58);
  v59.origin.x = v15;
  v59.origin.y = v14;
  v59.size.width = v16;
  v59.size.height = v17;
  CGRectGetWidth(v59);
  v60.origin.x = v15;
  v60.origin.y = v14;
  v60.size.width = v16;
  v60.size.height = v17;
  CGRectGetHeight(v60);
  sub_255D06F58();
  sub_255D06018();
  *a4 = v28 * 0.5;
  *(a4 + 8) = v28;
  v35 = v40;
  v36 = v41;
  *(a4 + 16) = v39;
  *(a4 + 24) = v36;
  *(a4 + 32) = v29;
  *(a4 + 40) = v35;
  *(a4 + 48) = v26;
  *(a4 + 56) = 256;
  *(a4 + 64) = v30;
  *(a4 + 72) = v32;
  *(a4 + 80) = MinX;
  *(a4 + 88) = MinY;
  v37 = v43;
  *(a4 + 96) = v42;
  *(a4 + 112) = v37;
  *(a4 + 128) = v44;
}

uint64_t sub_255D016A4@<X0>(uint64_t *a9@<X8>)
{
  v11 = *(v9 + 80);
  v17[4] = *(v9 + 64);
  v17[5] = v11;
  v17[6] = *(v9 + 96);
  v18 = *(v9 + 112);
  v12 = *(v9 + 16);
  v17[0] = *v9;
  v17[1] = v12;
  v13 = *(v9 + 48);
  v17[2] = *(v9 + 32);
  v17[3] = v13;
  *a9 = sub_255D06F48();
  a9[1] = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E0338, &qword_255D13068);
  return sub_255D00E9C(v17, a9 + *(v15 + 44));
}

uint64_t sub_255D01720(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E0340, &unk_255D13070);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_255D01790(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E0340, &unk_255D13070);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_255D0184C()
{

  sub_255D018B8(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88));

  return MEMORY[0x2821FE8E8](v0, 144, 7);
}

double sub_255D018B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (a9)
  {
  }

  else
  {
  }

  return result;
}

unint64_t sub_255D01930()
{
  result = qword_27F7E0350;
  if (!qword_27F7E0350)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E0348, &qword_255D130A0);
    sub_255D019BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E0350);
  }

  return result;
}

unint64_t sub_255D019BC()
{
  result = qword_27F7E0358;
  if (!qword_27F7E0358)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E0360, &qword_255D130A8);
    sub_255C810A8(&qword_27F7E0368, &qword_27F7E0370, &qword_255D130B0, MEMORY[0x277CE0458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E0358);
  }

  return result;
}

void *TextTableColumn.init(alignment:title:content:)@<X0>(char a1@<W0>, void *(*a2)(uint64_t *__return_ptr)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  *a5 = a1;
  result = a2(&v9);
  *(a5 + 8) = v9;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  return result;
}

void TextTableColumn.init<A>(alignment:title:value:)(char a1@<W0>, void (*a2)(uint64_t *__return_ptr, uint64_t)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a4;
  *(v10 + 24) = a3;

  a2(&v13, v11);
  v12 = v13;

  *a5 = a1;
  *(a5 + 8) = v12;
  *(a5 + 16) = sub_255D01D8C;
  *(a5 + 24) = v10;
}

void sub_255D01BBC(uint64_t a1@<X0>, void *a2@<X1>, char **a4@<X8>)
{
  v5 = *(*a2 + *MEMORY[0x277D84DE8] + 8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v14 - v7;
  swift_getAtKeyPath();
  v9 = sub_255D076B8();
  v11 = v10;
  (*(v6 + 8))(v8, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDB40, &qword_255D0AE20);
  v12 = swift_allocObject();
  v14 = xmmword_255D0AA80;
  *(v12 + 16) = xmmword_255D0AA80;
  *(v12 + 32) = v9;
  *(v12 + 40) = v11;
  *(v12 + 48) = 0;
  *(v12 + 56) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E0408, &qword_255D13138);
  inited = swift_initStackObject();
  *(inited + 16) = v14;
  *(inited + 56) = &type metadata for InlineContent;
  *(inited + 64) = &protocol witness table for InlineContent;
  *(inited + 32) = v12;
  sub_255CFCE4C(inited, a4);
}

uint64_t sub_255D01D54()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void TextTableColumn.init(alignment:title:content:)(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_255D01E74(a2, a3, &v11);
  v10 = v11;

  *a6 = a1;
  *(a6 + 8) = v10;
  *(a6 + 16) = a4;
  *(a6 + 24) = a5;
}

double TextTableColumn.init<A>(alignment:title:value:)@<D0>(char a1@<W0>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  TextTableColumn.init<A>(alignment:title:value:)(a1, sub_255D01F40, a3, a4, v8);

  v6 = v10;
  *a5 = v8[0];
  result = *&v9;
  *(a5 + 8) = v9;
  *(a5 + 24) = v6;
  return result;
}

void sub_255D01E74(uint64_t a1@<X0>, uint64_t a2@<X1>, char **a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDB40, &qword_255D0AE20);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_255D0AA80;
  *(v6 + 32) = a1;
  *(v6 + 40) = a2;
  *(v6 + 48) = 0;
  *(v6 + 56) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E0408, &qword_255D13138);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_255D0AA80;
  *(inited + 56) = &type metadata for InlineContent;
  *(inited + 64) = &protocol witness table for InlineContent;
  *(inited + 32) = v6;

  sub_255CFCE4C(inited, a3);
}

uint64_t sub_255D01F5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_255D01F98(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_255D01FE0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t get_enum_tag_for_layout_string_33LegalAndRegulatorySettingsSupport10InlineNodeO(uint64_t a1)
{
  if ((*(a1 + 24) & 8) != 0)
  {
    return (*a1 + 8);
  }

  else
  {
    return *(a1 + 24) & 0xF;
  }
}

uint64_t sub_255D02054(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF8 && *(a1 + 25))
  {
    return (*a1 + 248);
  }

  v3 = *(a1 + 24);
  if (v3 <= 8)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_255D0209C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF7)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 248;
    if (a3 >= 0xF8)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF8)
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

uint64_t sub_255D020E4(uint64_t result, unsigned int a2)
{
  v2 = a2 - 8;
  if (a2 >= 8)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 8;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

uint64_t sub_255D02110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 > 3u)
  {
    if (a5 <= 5u)
    {
      if (a5 == 4)
      {
        MEMORY[0x259C4BB60](6, a2, a3, a4);
        v16 = *(a2 + 16);
        result = MEMORY[0x259C4BB60](v16);
        if (v16)
        {
          v17 = (a2 + 56);
          do
          {
            v18 = *(v17 - 3);
            v19 = *(v17 - 2);
            v20 = *(v17 - 1);
            v21 = *v17;
            v17 += 32;
            sub_255C74200(v18, v19, v20, v21);
            sub_255D02110(a1, v18, v19, v20, v21);
            result = sub_255C7429C(v18, v19, v20, v21);
            --v16;
          }

          while (v16);
        }
      }

      else
      {
        MEMORY[0x259C4BB60](7, a2, a3, a4);
        v35 = *(a2 + 16);
        result = MEMORY[0x259C4BB60](v35);
        if (v35)
        {
          v36 = (a2 + 56);
          do
          {
            v37 = *(v36 - 3);
            v38 = *(v36 - 2);
            v39 = *(v36 - 1);
            v40 = *v36;
            v36 += 32;
            sub_255C74200(v37, v38, v39, v40);
            sub_255D02110(a1, v37, v38, v39, v40);
            result = sub_255C7429C(v37, v38, v39, v40);
            --v35;
          }

          while (v35);
        }
      }
    }

    else if (a5 == 6)
    {
      MEMORY[0x259C4BB60](8);
      sub_255D07058();
      v22 = *(a4 + 16);
      result = MEMORY[0x259C4BB60](v22);
      if (v22)
      {
        v23 = (a4 + 56);
        do
        {
          v24 = *(v23 - 3);
          v25 = *(v23 - 2);
          v26 = *(v23 - 1);
          v27 = *v23;
          v23 += 32;
          sub_255C74200(v24, v25, v26, v27);
          sub_255D02110(a1, v24, v25, v26, v27);
          result = sub_255C7429C(v24, v25, v26, v27);
          --v22;
        }

        while (v22);
      }
    }

    else if (a5 == 7)
    {
      MEMORY[0x259C4BB60](9);
      sub_255D07058();
      v8 = *(a4 + 16);
      result = MEMORY[0x259C4BB60](v8);
      if (v8)
      {
        v10 = (a4 + 56);
        do
        {
          v11 = *(v10 - 3);
          v12 = *(v10 - 2);
          v13 = *(v10 - 1);
          v14 = *v10;
          v10 += 32;
          sub_255C74200(v11, v12, v13, v14);
          sub_255D02110(a1, v11, v12, v13, v14);
          result = sub_255C7429C(v11, v12, v13, v14);
          --v8;
        }

        while (v8);
      }
    }

    else
    {
      if (a4 | a3 | a2)
      {
        v34 = 2;
      }

      else
      {
        v34 = 1;
      }

      return MEMORY[0x259C4BB60](v34);
    }

    return result;
  }

  if (a5 <= 1u)
  {
    if (a5)
    {
      v15 = 3;
    }

    else
    {
      v15 = 0;
    }

    goto LABEL_24;
  }

  if (a5 == 2)
  {
    v15 = 4;
LABEL_24:
    MEMORY[0x259C4BB60](v15, a2, a3, a4);

    return sub_255D07058();
  }

  MEMORY[0x259C4BB60](5, a2, a3, a4);
  v28 = *(a2 + 16);
  result = MEMORY[0x259C4BB60](v28);
  if (v28)
  {
    v29 = (a2 + 56);
    do
    {
      v30 = *(v29 - 3);
      v31 = *(v29 - 2);
      v32 = *(v29 - 1);
      v33 = *v29;
      v29 += 32;
      sub_255C74200(v30, v31, v32, v33);
      sub_255D02110(a1, v30, v31, v32, v33);
      result = sub_255C7429C(v30, v31, v32, v33);
      --v28;
    }

    while (v28);
  }

  return result;
}

uint64_t sub_255D0246C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  sub_255D07728();
  sub_255D02110(v6, v1, v2, v3, v4);
  return sub_255D07768();
}

uint64_t sub_255D024E0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  sub_255D07728();
  sub_255D02110(v6, v1, v2, v3, v4);
  return sub_255D07768();
}

unint64_t sub_255D02568()
{
  result = qword_27F7E0410;
  if (!qword_27F7E0410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E0410);
  }

  return result;
}

uint64_t sub_255D025BC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a4 > 3u)
  {
    if (a4 > 5u)
    {
      if (a4 != 6)
      {
        if (a4 == 7)
        {
          if (a8 != 7)
          {
            return 0;
          }

          goto LABEL_18;
        }

        if (a3 | a2 | a1)
        {
          if (a8 != 8 || a5 != 1 || a7 | a6)
          {
            return 0;
          }
        }

        else if (a8 != 8 || a7 | a6 | a5)
        {
          return 0;
        }

        return 1;
      }

      if (a8 == 6)
      {
LABEL_18:
        if (a1 != a5 || a2 != a6)
        {
          v8 = a3;
          v9 = a7;
          v10 = sub_255D076D8();
          a3 = v8;
          a7 = v9;
          if ((v10 & 1) == 0)
          {
            return 0;
          }
        }

        a1 = a3;
        v11 = a7;
        goto LABEL_35;
      }

      return 0;
    }

    if (a4 == 4)
    {
      if (a8 != 4)
      {
        return 0;
      }
    }

    else if (a8 != 5)
    {
      return 0;
    }

LABEL_34:
    v11 = a5;
LABEL_35:

    return sub_255C8E694(a1, v11);
  }

  if (a4 > 1u)
  {
    if (a4 != 2)
    {
      if (a8 != 3)
      {
        return 0;
      }

      goto LABEL_34;
    }

    if (a8 != 2)
    {
      return 0;
    }
  }

  else if (a4)
  {
    if (a8 != 1)
    {
      return 0;
    }
  }

  else if (a8)
  {
    return 0;
  }

  if (a1 == a5 && a2 == a6)
  {
    return 1;
  }

  return sub_255D076D8();
}

double BlockConfiguration.label.getter@<D0>(uint64_t *a1@<X8>)
{
  *a1 = *v1;

  return result;
}

double BlockConfiguration.content.getter@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 8);

  return result;
}

uint64_t sub_255D027B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16) == 1)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);
    sub_255C74200(v3, v4, v5, v6);

    sub_255C7407C(v3, v4, v5, v6, &v19);
    sub_255C7429C(v3, v4, v5, v6);
    v7 = v20;
    if (v20)
    {
      v8 = v19;
      *a2 = swift_getKeyPath();
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *(a2 + 24) = swift_getKeyPath();
      *(a2 + 32) = 0;
      *(a2 + 40) = 0;
      v9 = type metadata accessor for ImageView(0);
      v10 = *(v9 + 24);
      *(a2 + v10) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DE6F8, &qword_255D0D180);
      swift_storeEnumTagMultiPayload();
      v11 = a2 + *(v9 + 28);
      *v11 = v8;
      *(v11 + 8) = v7;
      v12 = v22;
      *(v11 + 16) = v21;
      *(v11 + 32) = v12;
      v13 = *(*(v9 - 8) + 56);
      v14 = a2;
      v15 = 0;
      v16 = v9;
      goto LABEL_6;
    }
  }

  else
  {
  }

  v17 = type metadata accessor for ImageView(0);
  v13 = *(*(v17 - 8) + 56);
  v16 = v17;
  v14 = a2;
  v15 = 1;
LABEL_6:

  return v13(v14, v15, 1, v16);
}

uint64_t sub_255D029A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DE6A0, &unk_255D0CB90);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_255D02A88(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DE6A0, &unk_255D0CB90);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28) + 8) = (a2 - 1);
  }

  return result;
}

void sub_255D02B54(uint64_t a1)
{
  sub_255D02C4C(319, &qword_27F7E0428, &qword_27F7DE238, &qword_255D11F50);
  if (v1 <= 0x3F)
  {
    sub_255D04578(319, &qword_27F7E0430, &type metadata for AnyImageProvider, MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_255D02C4C(319, &qword_27F7DE6C8, &qword_27F7DDCB0, &qword_255D0BED0);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_255D02C4C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_255D05F28();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_255D02CBC(uint64_t *a1@<X8>)
{
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E0438, &qword_255D13480);
  MEMORY[0x28223BE20](v23);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v21 - v6;
  v8 = sub_255D063E8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v1;
  v13 = *(v1 + 8);
  if (*(v1 + 16) == 1)
  {
    v25 = *v1;
    v26 = v13;
  }

  else
  {
    v22 = v10;

    sub_255D07438();
    v15 = sub_255D066C8();
    sub_255D05D88();

    sub_255D063D8();
    swift_getAtKeyPath();
    sub_255C74BA0(v14, v13, 0);
    (*(v9 + 8))(v12, v22);
    v14 = v25;
  }

  sub_255D02F7C(v7);
  sub_255C7299C(v7, v4, &qword_27F7E0438, &qword_255D13480);
  sub_255D034DC();
  v16 = sub_255D06E78();
  sub_255C76B94(v7, &qword_27F7E0438, &qword_255D13480);
  sub_255D03320(v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDA60, &qword_255D0B7E0);
  v17 = swift_allocObject();
  v18 = v27[0];
  v19 = v27[1];
  *(v17 + 16) = xmmword_255D0AA80;
  *(v17 + 32) = v18;
  *(v17 + 48) = v19;
  *(v17 + 64) = v28;
  v24[0] = v16;
  v24[1] = v17;
  v20 = v14(v24);

  *a1 = v20;
}

uint64_t sub_255D02F7C@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDCB0, &qword_255D0BED0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = (&v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v7 = &v27 - v6;
  v8 = sub_255D063E8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E0450, &qword_255D13488);
  MEMORY[0x28223BE20](v29);
  v13 = (&v27 - v12);
  v15 = *(v1 + 24);
  v14 = *(v1 + 32);
  if (*(v1 + 40) == 1)
  {
  }

  else
  {

    sub_255D07438();
    v28 = v8;
    v16 = sub_255D066C8();
    sub_255D05D88();

    sub_255D063D8();
    swift_getAtKeyPath();
    sub_255C74BA0(v15, v14, 0);
    (*(v9 + 8))(v11, v28);
    v15 = v31;
  }

  v17 = (v1 + *(type metadata accessor for ImageView(0) + 28));
  sub_255CBEFD4(v4);
  sub_255D05B38();
  sub_255C76B94(v4, &qword_27F7DDCB0, &qword_255D0BED0);
  v18 = v15(v7);

  sub_255C76B94(v7, &qword_27F7DDCB0, &qword_255D0BED0);
  v20 = v17[4];
  v19 = v17[5];
  v21 = (v13 + *(v29 + 36));
  *v21 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DE6F8, &qword_255D0D180);
  swift_storeEnumTagMultiPayload();
  v22 = type metadata accessor for LinkModifier(0);
  v23 = *(v22 + 20);
  *(v21 + v23) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF038, &unk_255D0EA00);
  swift_storeEnumTagMultiPayload();
  v24 = (v21 + *(v22 + 24));
  *v24 = v20;
  v24[1] = v19;
  *v13 = v18;
  v25 = v17[3];
  v31 = v17[2];
  v32 = v25;
  sub_255D03598();
  sub_255C8407C();

  sub_255D06B08();
  return sub_255C76B94(v13, &qword_27F7E0450, &qword_255D13488);
}

double sub_255D03320@<D0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ImageView(0) + 28));
  v4 = v3[5];
  if (v4)
  {
    v5 = v3[4];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDB40, &qword_255D0AE20);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_255D0AA80;
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_255D0AA80;
    v9 = *v3;
    v8 = v3[1];
    v10 = swift_allocObject();
    v11 = v7;
    *(v10 + 16) = xmmword_255D0AA80;
    v12 = v3[3];
    *(v10 + 32) = v3[2];
    *(v10 + 40) = v12;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v7 + 32) = v9;
    *(v7 + 40) = v8;
    *(v7 + 48) = v10;
    *(v7 + 56) = 7;
    v13 = 6;
    v14 = v4;
    *(v6 + 32) = v5;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDB40, &qword_255D0AE20);
    v13 = 7;
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_255D0AA80;
    v15 = *v3;
    v14 = v3[1];
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_255D0AA80;
    v16 = v3[3];
    *(v11 + 32) = v3[2];
    *(v11 + 40) = v16;
    *(v11 + 48) = 0;
    *(v11 + 56) = 0;
    *(v6 + 32) = v15;
  }

  *(v6 + 40) = v14;
  *(v6 + 48) = v11;
  *(v6 + 56) = v13;

  *a1 = v6;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 6;

  return result;
}

unint64_t sub_255D034DC()
{
  result = qword_27F7E0440;
  if (!qword_27F7E0440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E0438, &qword_255D13480);
    sub_255D03598();
    sub_255D03674(&qword_27F7DEEA0, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E0440);
  }

  return result;
}

unint64_t sub_255D03598()
{
  result = qword_27F7E0448;
  if (!qword_27F7E0448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E0450, &qword_255D13488);
    sub_255D03674(&qword_27F7E0458, type metadata accessor for LinkModifier, &unk_255D134F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E0448);
  }

  return result;
}

uint64_t sub_255D03674(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_255D036BC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v61 = a1;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E0470, &qword_255D13548);
  MEMORY[0x28223BE20](v64);
  v66 = &v48 - v4;
  v65 = sub_255D06208();
  v5 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v60 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for LinkModifier(0);
  v8 = v7 - 8;
  v53 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v54 = v9;
  v55 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E0478, &qword_255D13550);
  v57 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v56 = &v48 - v10;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E0480, &qword_255D13558);
  v59 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v58 = &v48 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDCB0, &qword_255D0BED0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = (&v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15);
  v17 = &v48 - v16;
  v18 = sub_255D05B78();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  if (*(v2 + *(v8 + 32) + 8))
  {
    v51 = v5;
    v52 = &v48 - v23;
    sub_255CBEFD4(v14);
    sub_255D05B38();
    sub_255C76B94(v14, &qword_27F7DDCB0, &qword_255D0BED0);
    if ((*(v19 + 48))(v17, 1, v18) != 1)
    {
      v50 = a2;
      v25 = *(v19 + 32);
      v26 = v52;
      v27 = v17;
      v28 = v18;
      v25(v52, v27, v18);
      v29 = v55;
      sub_255D045F0(v2, v55);
      v30 = *(v19 + 16);
      v49 = v18;
      v30(v21, v26, v18);
      v31 = (*(v53 + 80) + 16) & ~*(v53 + 80);
      v32 = (v54 + *(v19 + 80) + v31) & ~*(v19 + 80);
      v33 = swift_allocObject();
      sub_255D0488C(v29, v33 + v31);
      v34 = (v25)(v33 + v32, v21, v28);
      MEMORY[0x28223BE20](v34);
      *(&v48 - 2) = v61;
      v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E0488, &qword_255D13560);
      sub_255C810A8(&qword_27F7E04A0, &qword_27F7E0488, &qword_255D13560, MEMORY[0x277CE04B0]);
      v35 = v56;
      sub_255D06DF8();
      v36 = v60;
      sub_255D061F8();
      v37 = sub_255C810A8(&qword_27F7E0490, &qword_27F7E0478, &qword_255D13550, MEMORY[0x277CDF028]);
      v38 = sub_255D03674(&qword_27F7E0498, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
      v39 = v58;
      v40 = v62;
      v41 = v65;
      sub_255D06A58();
      (*(v51 + 8))(v36, v41);
      (*(v57 + 8))(v35, v40);
      v42 = v59;
      v43 = v63;
      (*(v59 + 16))(v66, v39, v63);
      swift_storeEnumTagMultiPayload();
      v67 = v40;
      v68 = v41;
      v69 = v37;
      v70 = v38;
      swift_getOpaqueTypeConformance2();
      sub_255D06528();
      (*(v42 + 8))(v39, v43);
      return (*(v19 + 8))(v52, v49);
    }
  }

  else
  {
    (*(v19 + 56))(v17, 1, 1, v18, v24);
  }

  sub_255C76B94(v17, &qword_27F7DDCB0, &qword_255D0BED0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E0488, &qword_255D13560);
  (*(*(v45 - 8) + 16))(v66, v61, v45);
  swift_storeEnumTagMultiPayload();
  v46 = sub_255C810A8(&qword_27F7E0490, &qword_27F7E0478, &qword_255D13550, MEMORY[0x277CDF028]);
  v47 = sub_255D03674(&qword_27F7E0498, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
  v67 = v62;
  v68 = v65;
  v69 = v46;
  v70 = v47;
  swift_getOpaqueTypeConformance2();
  sub_255C810A8(&qword_27F7E04A0, &qword_27F7E0488, &qword_255D13560, MEMORY[0x277CE04B0]);
  return sub_255D06528();
}

uint64_t sub_255D03F7C(uint64_t a1, uint64_t a2)
{
  v16[1] = a2;
  v16[0] = sub_255D063E8();
  v3 = *(v16[0] - 8);
  MEMORY[0x28223BE20](v16[0]);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF038, &unk_255D0EA00);
  MEMORY[0x28223BE20](v6);
  v8 = v16 - v7;
  v9 = sub_255D060C8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for LinkModifier(0);
  sub_255C7299C(a1 + *(v13 + 20), v8, &qword_27F7DF038, &unk_255D0EA00);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v12, v8, v9);
  }

  else
  {
    sub_255D07438();
    v14 = sub_255D066C8();
    sub_255D05D88();

    sub_255D063D8();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v16[0]);
  }

  sub_255D060B8();
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_255D04234(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DE6A0, &unk_255D0CB90);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF148, &unk_255D0EC70);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_255D0437C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DE6A0, &unk_255D0CB90);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF148, &unk_255D0EC70);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_255D044A0(uint64_t a1)
{
  sub_255D02C4C(319, &qword_27F7DE6C8, &qword_27F7DDCB0, &qword_255D0BED0);
  if (v1 <= 0x3F)
  {
    sub_255CC76A4(319);
    if (v2 <= 0x3F)
    {
      sub_255D04578(319, &qword_27F7DED78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_255D04578(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_255D045F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LinkModifier(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_255D04654()
{
  v1 = type metadata accessor for LinkModifier(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = sub_255D05B78();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v12 = *(v6 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DE6F8, &qword_255D0D180);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    if (!(*(v6 + 48))(v0 + v3, 1, v5))
    {
      (*(v6 + 8))(v0 + v3, v5);
    }
  }

  else
  {
  }

  v8 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF038, &unk_255D0EA00);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_255D060C8();
    (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);
  }

  else
  {
  }

  v10 = (v3 + v4 + v7) & ~v7;

  (*(v6 + 8))(v0 + v10, v5);

  return MEMORY[0x2821FE8E8](v0, v10 + v12, v2 | v7 | 7);
}

uint64_t sub_255D0488C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LinkModifier(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_255D048F0()
{
  v1 = *(type metadata accessor for LinkModifier(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_255D05B78() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_255D03F7C(v0 + v2, v5);
}

uint64_t sub_255D049BC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E0488, &qword_255D13560);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v3, v4);
}

unint64_t sub_255D04A38()
{
  result = qword_27F7E04A8;
  if (!qword_27F7E04A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F7E04B0, &qword_255D13568);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E0478, &qword_255D13550);
    sub_255D06208();
    sub_255C810A8(&qword_27F7E0490, &qword_27F7E0478, &qword_255D13550, MEMORY[0x277CDF028]);
    sub_255D03674(&qword_27F7E0498, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
    swift_getOpaqueTypeConformance2();
    sub_255C810A8(&qword_27F7E04A0, &qword_27F7E0488, &qword_255D13560, MEMORY[0x277CE04B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E04A8);
  }

  return result;
}

uint64_t __isPlatformVersionAtLeast(int a1, int a2, int a3, int a4)
{
  if (qword_27F7E5E18 == -1)
  {
    if (qword_27F7E5E20)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    __isPlatformVersionAtLeast_cold_1();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_27F7E5E20)
    {
      return _availability_version_check();
    }
  }

  if (qword_27F7E5E10 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    __isPlatformVersionAtLeast_cold_2();
    a3 = v10;
    a4 = v9;
    v8 = _MergedGlobals < v11;
    if (_MergedGlobals > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_27F7E5E04 > a3)
      {
        return 1;
      }

      if (dword_27F7E5E04 >= a3)
      {
        return dword_27F7E5E08 >= a4;
      }
    }

    return 0;
  }

  v8 = _MergedGlobals < a2;
  if (_MergedGlobals <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t _initializeAvailabilityCheck(uint64_t result)
{
  v29 = *MEMORY[0x277D85DE8];
  v1 = qword_27F7E5E20;
  if (qword_27F7E5E20)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (MEMORY[0x28223BE68])
    {
      v1 = MEMORY[0x28223BE68];
      qword_27F7E5E20 = MEMORY[0x28223BE68];
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = MEMORY[0x259C4BF60](v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &_MergedGlobals, &dword_27F7E5E04, &dword_27F7E5E08);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
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

  return result;
}

uint64_t houdini_escape_html0(_DWORD *a1, uint64_t a2, int a3, int a4)
{
  if (a3 >= 1)
  {
    v8 = 0;
    v9 = a3;
    do
    {
      v10 = v8;
      while (1)
      {
        v11 = *(a2 + v10);
        v12 = HTML_ESCAPE_TABLE[v11];
        if (HTML_ESCAPE_TABLE[v11])
        {
          break;
        }

        if (++v10 >= v9)
        {
          v13 = 0;
          goto LABEL_8;
        }
      }

      v13 = HTML_ESCAPE_TABLE[v11];
LABEL_8:
      if (v8 < v10)
      {
        cmark_strbuf_put(a1, (a2 + v8), v10 - v8);
      }

      if (!v12)
      {
        return 1;
      }

      v14 = *(a2 + v10);
      if (v14 == 47)
      {
        if (a4)
        {
          goto LABEL_17;
        }
      }

      else if (a4 || v14 != 39)
      {
LABEL_17:
        cmark_strbuf_puts(a1, *(&HTML_ESCAPES + v13));
        goto LABEL_18;
      }

      cmark_strbuf_putc(a1, v14);
LABEL_18:
      v8 = v10 + 1;
    }

    while (v10 + 1 < a3);
  }

  return 1;
}

_DWORD *houdini_escape_href_cold_1(_DWORD *result, int a2, uint64_t a3, _DWORD *a4)
{
  v7 = result;
  LODWORD(v8) = 0;
  v9 = a2;
  do
  {
    v10 = v8;
    v11 = a2 <= v8 + 1 ? v8 + 1 : a2;
    v8 = v8;
    while (1)
    {
      v12 = *(a3 + v8);
      v13 = HREF_SAFE[v12];
      if (!HREF_SAFE[v12])
      {
        break;
      }

      if (++v8 >= v9)
      {
        goto LABEL_10;
      }
    }

    v11 = v8;
LABEL_10:
    if (v11 > v10)
    {
      result = cmark_strbuf_put(a4, (a3 + v10), v11 - v10);
    }

    if (v13)
    {
      break;
    }

    v14 = *(a3 + v11);
    if (v14 == 38)
    {
      v15 = a4;
      v16 = "&amp;";
    }

    else
    {
      if (v14 != 39)
      {
        v7[1] = houdini_escape_href_hex_chars[v14 >> 4];
        v7[2] = houdini_escape_href_hex_chars[v14 & 0xF];
        result = cmark_strbuf_put(a4, v7, 3u);
        goto LABEL_19;
      }

      v15 = a4;
      v16 = "&#x27;";
    }

    result = cmark_strbuf_puts(v15, v16);
LABEL_19:
    LODWORD(v8) = v11 + 1;
  }

  while (v11 + 1 < a2);
  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x2821115C8](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectOffset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x282111608](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x282111618](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}