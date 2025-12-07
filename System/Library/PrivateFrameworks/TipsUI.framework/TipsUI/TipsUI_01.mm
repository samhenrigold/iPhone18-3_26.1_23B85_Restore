unint64_t sub_220B56218()
{
  result = qword_2812C0888;
  if (!qword_2812C0888)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2812C0888);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_7SwiftUI7BindingVySbGSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_220B56298(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_220B562E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_220B5635C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v43 = a1;
  v3 = sub_220BCDE60();
  v41 = *(v3 - 8);
  v42 = v3;
  MEMORY[0x28223BE20](v3);
  v38 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76F10, &qword_220BD1AD8);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76F18, &qword_220BD1AE0);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v37 = &v35 - v11;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76F20, &qword_220BD1AE8) - 8;
  MEMORY[0x28223BE20](v39);
  v40 = &v35 - v12;
  v13 = *v1;
  KeyPath = swift_getKeyPath();
  v36 = v13;
  v15 = sub_220BCD1B0();
  v16 = sub_220BCCD60();
  swift_getKeyPath();
  sub_220BCBF00();

  v17 = swift_allocObject();
  v18 = *(v1 + 16);
  *(v17 + 16) = *v1;
  *(v17 + 32) = v18;
  *(v17 + 48) = *(v1 + 32);
  *(v17 + 64) = *(v1 + 48);
  *v8 = v13;
  *(v8 + 1) = KeyPath;
  v8[16] = 0;
  *(v8 + 3) = v15;
  v8[32] = v16;
  v19 = &v8[*(v6 + 64)];
  *v19 = sub_220B569E0;
  v19[1] = v17;
  v20 = objc_opt_self();
  sub_220B569E8(v2, v44);
  v21 = [v20 defaultCenter];
  v22 = sub_220BCDB70();
  v23 = [v36 currentItem];
  v24 = v38;
  sub_220BCDE70();

  v25 = swift_allocObject();
  v26 = *(v2 + 16);
  *(v25 + 16) = *v2;
  *(v25 + 32) = v26;
  *(v25 + 48) = *(v2 + 32);
  *(v25 + 64) = *(v2 + 48);
  v27 = v37;
  sub_220B46540(v8, v37, &qword_27CF76F10, &qword_220BD1AD8);
  (*(v41 + 32))(v27 + *(v10 + 60), v24, v42);
  v28 = (v27 + *(v10 + 64));
  *v28 = sub_220B56A20;
  v28[1] = v25;
  swift_getKeyPath();
  v29 = v39;
  sub_220B569E8(v2, v44);
  v30 = v40;
  sub_220BCBF00();

  v31 = swift_allocObject();
  v32 = *(v2 + 16);
  *(v31 + 16) = *v2;
  *(v31 + 32) = v32;
  *(v31 + 48) = *(v2 + 32);
  *(v31 + 64) = *(v2 + 48);
  sub_220B46540(v27, v30, &qword_27CF76F18, &qword_220BD1AE0);
  v33 = (v30 + *(v29 + 64));
  *v33 = sub_220B56A9C;
  v33[1] = v31;
  sub_220B46540(v30, v43, &qword_27CF76F20, &qword_220BD1AE8);
  return sub_220B569E8(v2, v44);
}

float *sub_220B567C0(float *result, uint64_t a2)
{
  if (*result > 0.0)
  {
    if (*(a2 + 16))
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76D58, &unk_220BD1B90);
      sub_220BCD3A0();
    }
  }

  return result;
}

void sub_220B56860(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76D58, &unk_220BD1B90);
    sub_220BCD3A0();
  }
}

uint64_t *sub_220B568F4(uint64_t *result, uint64_t a2)
{
  if (*(a2 + 40))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76D58, &unk_220BD1B90);
    sub_220BCD3A0();
  }

  return v2;
}

uint64_t objectdestroyTm_0()
{
  if (*(v0 + 32))
  {
  }

  if (*(v0 + 56))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 65, 7);
}

unint64_t sub_220B56AA4()
{
  result = qword_2812C09D8;
  if (!qword_2812C09D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF76F20, &qword_220BD1AE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812C09D8);
  }

  return result;
}

id static UIFont.fontWithStyle(_:size:)(uint64_t a1, double a2)
{
  v3 = [objc_opt_self() preferredFontDescriptorWithTextStyle_];
  v4 = [objc_opt_self() fontWithDescriptor:v3 size:a2];

  return v4;
}

id static UIFont.fontWithStyle(_:weight:)(uint64_t a1, double a2)
{
  v3 = [objc_opt_self() preferredFontDescriptorWithTextStyle_];
  v4 = [v3 fontAttributes];
  type metadata accessor for AttributeName(0);
  sub_220B56E14();
  sub_220BCDB10();

  sub_220BCDBA0();
  v5 = sub_220BCDB70();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76F28, &qword_220BD1BB0);
  inited = swift_initStackObject();
  v7 = MEMORY[0x277CC49B8];
  *(inited + 16) = xmmword_220BD1BA0;
  v8 = *v7;
  *(inited + 32) = v8;
  *(inited + 40) = a2;
  v9 = v8;
  v10 = sub_220B4F46C(inited);
  swift_setDeallocating();
  sub_220B463F4(inited + 32, &qword_27CF76F30, &qword_220BD1BB8);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76F38, &qword_220BD1BC0);
  *&v18 = v10;
  sub_220B4F8A4(&v18, v17);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_220B56FCC(v17, v5, isUniquelyReferenced_nonNull_native, sub_220B7E0C8, sub_220B7D180, sub_220B7C92C, type metadata accessor for AttributeName);

  v12 = objc_allocWithZone(MEMORY[0x277D74310]);
  v13 = sub_220BCDB00();

  v14 = [v12 initWithFontAttributes_];

  v15 = [objc_opt_self() fontWithDescriptor:v14 size:0.0];
  return v15;
}

unint64_t sub_220B56E14()
{
  result = qword_27CF76A38;
  if (!qword_27CF76A38)
  {
    type metadata accessor for AttributeName(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF76A38);
  }

  return result;
}

uint64_t static UIFont.defaultFont.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76F40, &unk_220BD2F30);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v5 - v1;
  v3 = type metadata accessor for ConstellationContentAttributes(0);
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  sub_220B57370(v2);
  sub_220B463F4(v2, &qword_27CF76F40, &unk_220BD2F30);
  return sub_220BCCE80();
}

_OWORD *sub_220B56FCC(_OWORD *a1, void *a2, char a3, uint64_t (*a4)(void *), void (*a5)(void), void (*a6)(uint64_t, void), uint64_t (*a7)(void))
{
  v12 = v7;
  v15 = *v7;
  v16 = a4(a2);
  v18 = v15[2];
  v19 = (v17 & 1) == 0;
  v20 = __OFADD__(v18, v19);
  v21 = v18 + v19;
  if (v20)
  {
    __break(1u);
    goto LABEL_16;
  }

  v22 = v17;
  v23 = v15[3];
  if (v23 < v21 || (a3 & 1) == 0)
  {
    if (v23 >= v21 && (a3 & 1) == 0)
    {
      v24 = v16;
      a5();
      v16 = v24;
      goto LABEL_8;
    }

    a6(v21, a3 & 1);
    v16 = a4(a2);
    if ((v22 & 1) != (v25 & 1))
    {
LABEL_16:
      a7(0);
      result = sub_220BCE170();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v26 = *v12;
  if (v22)
  {
    v27 = (v26[7] + 32 * v16);
    __swift_destroy_boxed_opaque_existential_1(v27);

    return sub_220B4F8A4(a1, v27);
  }

  else
  {
    sub_220B57308(v16, a2, a1, v26);

    return a2;
  }
}

uint64_t sub_220B57174(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void))
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_220B7C4A8(a2, a3);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      a6(v20, a4 & 1);
      v15 = sub_220B7C4A8(a2, a3);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_18:
        v15 = sub_220BCE170();
        __break(1u);
        return MEMORY[0x2821F96F8](v15, v27);
      }
    }

    else
    {
      v23 = v15;
      a5();
      v15 = v23;
    }
  }

  v25 = *v9;
  if (v21)
  {
    v26 = v25[7];
    v27 = *(v26 + 8 * v15);
    *(v26 + 8 * v15) = a1;

    return MEMORY[0x2821F96F8](v15, v27);
  }

  v25[(v15 >> 6) + 8] |= 1 << v15;
  v28 = (v25[6] + 16 * v15);
  *v28 = a2;
  v28[1] = a3;
  *(v25[7] + 8 * v15) = a1;
  v29 = v25[2];
  v19 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25[2] = v30;
}

_OWORD *sub_220B57308(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_220B4F8A4(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

id sub_220B57370(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76F40, &unk_220BD2F30);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = (&v10 - v3);
  sub_220B574BC(a1, &v10 - v3);
  v5 = type metadata accessor for ConstellationContentAttributes(0);
  if ((*(*(v5 - 8) + 48))(v4, 1, v5) == 1)
  {
    sub_220B463F4(v4, &qword_27CF76F40, &unk_220BD2F30);
  }

  else
  {
    v6 = *v4;
    v7 = *v4;
    sub_220B5752C(v4);
    if (v6)
    {
      return v7;
    }
  }

  v9 = [objc_opt_self() preferredFontForTextStyle_];

  return v9;
}

uint64_t sub_220B574BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76F40, &unk_220BD2F30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220B5752C(uint64_t a1)
{
  v2 = type metadata accessor for ConstellationContentAttributes(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t View.readVerticalMotion(in:onChange:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v29 = a5;
  v30 = a2;
  v31 = a3;
  v32 = a6;
  v7 = sub_220BCC820();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF76F48, &qword_220BD1BD0);
  v11 = sub_220BCC860();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v28 - v13;
  (*(v8 + 16))(v10, a1, v7);
  v15 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v16 = swift_allocObject();
  (*(v8 + 32))(v16 + v15, v10, v7);
  v35 = sub_220B57918;
  v36 = v16;
  sub_220BCD460();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76F50, &qword_220BD1BD8);
  sub_220B43830(&qword_27CF76F58, &qword_27CF76F50, &qword_220BD1BD8, MEMORY[0x277CDF7D8]);
  v17 = v29;
  sub_220BCCFD0();

  v18 = swift_allocObject();
  v19 = v31;
  *(v18 + 16) = v30;
  *(v18 + 24) = v19;
  v20 = sub_220B43830(&qword_27CF76F60, &qword_27CF76F48, &qword_220BD1BD0, MEMORY[0x277CE0328]);
  v33 = v17;
  v34 = v20;

  WitnessTable = swift_getWitnessTable();
  v24 = sub_220B579C4(WitnessTable, v22, v23);
  sub_220B57A18(v24, v25, v26);
  sub_220BCD070();

  return (*(v12 + 8))(v14, v11);
}

void sub_220B578CC(uint64_t a3@<X8>)
{
  v4 = sub_220BCD1B0();
  sub_220BCC6F0();
  MinY = CGRectGetMinY(v6);
  *a3 = v4;
  *(a3 + 8) = MinY;
}

void sub_220B57918(uint64_t a2@<X8>)
{
  sub_220BCC820();

  sub_220B578CC(a2);
}

unint64_t sub_220B579C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CF76F68;
  if (!qword_27CF76F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF76F68);
  }

  return result;
}

unint64_t sub_220B57A18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CF76F70;
  if (!qword_27CF76F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF76F70);
  }

  return result;
}

void static ElementVerticalMotion.fromPositionChange(previous:current:)(char *a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  if (a2 < a3)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 < a2)
  {
    v3 = 0;
  }

  *a1 = v3;
}

uint64_t ElementVerticalMotion.hashValue.getter()
{
  v1 = *v0;
  sub_220BCE210();
  MEMORY[0x223D92FC0](v1);
  return sub_220BCE240();
}

unint64_t sub_220B57B24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CF76F78;
  if (!qword_27CF76F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF76F78);
  }

  return result;
}

uint64_t RemoteImageView<>.init(identifier:url:isLoaded:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  v28 = a4;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76C90, &qword_220BD1810);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v27 - v18;
  v30 = a3;
  sub_220B57DC0(a3, &v27 - v18);
  KeyPath = swift_getKeyPath();
  v36 = 0;
  sub_220B57DC0(v19, v17);
  v20 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = a1;
  *(v21 + 24) = a2;
  sub_220B58ECC(v17, v21 + v20);
  v35 = 0;
  if (a5)
  {
    v22 = v28;
    v32 = v28;
    v33 = a5;
    v34 = a6 & 1;
  }

  else
  {
    v31 = 0;
    sub_220BCD3C0();
    v22 = v32;
    a5 = v33;
    a6 = v34;
  }

  v23 = sub_220BCD1B0();
  sub_220B4F3F4(v30);
  result = sub_220B4F3F4(v19);
  v25 = v36;
  v26 = v35;
  *a7 = KeyPath;
  *(a7 + 8) = v25;
  *(a7 + 16) = sub_220B58F3C;
  *(a7 + 24) = v21;
  *(a7 + 32) = v26;
  *(a7 + 40) = v22;
  *(a7 + 48) = a5;
  *(a7 + 56) = a6 & 1;
  *(a7 + 64) = 0;
  *(a7 + 72) = v23;
  return result;
}

uint64_t sub_220B57DC0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76C90, &qword_220BD1810);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220B57E30()
{
  v1 = sub_220BCC9D0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *v0;
  if (*(v0 + 8) != 1)
  {

    sub_220BCDDC0();
    v6 = sub_220BCCD50();
    sub_220BCC3C0();

    sub_220BCC9C0();
    swift_getAtKeyPath();
    sub_220B4889C(v5, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v5) = v8[15];
  }

  return v5 & 1;
}

uint64_t sub_220B57F78()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = type metadata accessor for RemoteImageLoader(0);
  v5 = sub_220B59794();

  return MEMORY[0x282130840](v1, v2, v3, v4, v5);
}

uint64_t RemoteImageView.init(identifier:url:isLoaded:placeholder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, void (*a7)(uint64_t)@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v33 = a8;
  v34 = a7;
  v31 = a10;
  v32 = a11;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76C90, &qword_220BD1810);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v30 - v20;
  *a9 = swift_getKeyPath();
  *(a9 + 8) = 0;
  *(a9 + 64) = 0;
  v35 = a3;
  sub_220B57DC0(a3, v21);
  v22 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = a1;
  *(v23 + 24) = a2;
  sub_220B58ECC(v21, v23 + v22);
  *(a9 + 16) = sub_220B59A14;
  *(a9 + 24) = v23;
  *(a9 + 32) = 0;
  if (a5)
  {
    v25 = a6;
    v26 = a5;
    v27 = a4;
  }

  else
  {
    v36 = 0;
    sub_220BCD3C0();
    v27 = v37;
    v26 = v38;
    v25 = v39;
  }

  *(a9 + 40) = v27;
  *(a9 + 48) = v26;
  *(a9 + 56) = v25 & 1;
  type metadata accessor for RemoteImageView(0, v31, v32, v24);
  v28 = sub_220B48564(a4, a5);
  v34(v28);
  sub_220B485A4(a4, a5);
  return sub_220B4F3F4(v35);
}

uint64_t sub_220B58218(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76C90, &qword_220BD1810);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v10 - v7;
  sub_220B57DC0(a3, &v10 - v7);
  type metadata accessor for RemoteImageLoader(0);
  swift_allocObject();

  return sub_220B6BAC0(a1, a2, v8);
}

uint64_t RemoteImageView.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v55 = a2;
  v4 = *(a1 - 8);
  v56 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  v47 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF76D60, &qword_220BD11A0);
  v6 = *(a1 + 16);
  sub_220BCCC40();
  v7 = sub_220B59078();
  v8 = *(a1 + 24);
  v65 = v7;
  v66 = v8;
  v9 = v8;
  swift_getWitnessTable();
  v10 = sub_220BCD350();
  v49 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v44 = &v40 - v11;
  v50 = sub_220BCC860();
  v54 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v57 = &v40 - v12;
  v13 = sub_220BCC860();
  v52 = *(v13 - 8);
  v53 = v13;
  v14 = MEMORY[0x28223BE20](v13);
  v48 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v51 = &v40 - v16;
  v58 = v6;
  v59 = v9;
  v42 = v6;
  v43 = v9;
  v46 = v2;
  v60 = v2;
  sub_220BCCA50();
  sub_220BCD340();
  v45 = *(v4 + 16);
  v17 = v47;
  v18 = v2;
  v19 = a1;
  v41 = a1;
  v45(v47, v18, a1);
  v20 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = v6;
  *(v21 + 24) = v9;
  v22 = *(v4 + 32);
  v22(v21 + v20, v17, v19);
  v23 = v10;
  WitnessTable = swift_getWitnessTable();
  v25 = v44;
  sub_220BCD110();

  (*(v49 + 8))(v25, v23);
  v26 = v41;
  v45(v17, v46, v41);
  v27 = swift_allocObject();
  v28 = v43;
  *(v27 + 16) = v42;
  *(v27 + 24) = v28;
  v22(v27 + v20, v17, v26);
  v29 = MEMORY[0x277CE0790];
  v63 = WitnessTable;
  v64 = MEMORY[0x277CE0790];
  v30 = v50;
  v31 = swift_getWitnessTable();
  v32 = v48;
  v33 = v57;
  sub_220BCD010();

  (*(v54 + 8))(v33, v30);
  v61 = v31;
  v62 = v29;
  v34 = v53;
  swift_getWitnessTable();
  v36 = v51;
  v35 = v52;
  v37 = *(v52 + 16);
  v37(v51, v32, v34);
  v38 = *(v35 + 8);
  v38(v32, v34);
  v37(v55, v36, v34);
  return (v38)(v36, v34);
}

uint64_t sub_220B58888@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v49 = a3;
  v5 = *(a2 - 8);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - v9;
  v48 = v11;
  v14 = type metadata accessor for RemoteImageView(0, v12, v11, v13);
  v43 = *(v14 - 8);
  v41 = *(v43 + 64);
  MEMORY[0x28223BE20](v14);
  v42 = &v38 - v15;
  v40 = sub_220BCD270();
  v39 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF76D60, &qword_220BD11A0);
  v18 = sub_220BCCC40();
  v46 = *(v18 - 8);
  v47 = v18;
  MEMORY[0x28223BE20](v18);
  v45 = &v38 - v19;
  sub_220B57F78();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_220BCC4C0();

  v20 = v50;
  if (v51)
  {
    sub_220B485EC(v50, v51);
    v21 = *(v5 + 16);
    v21(v10, a1 + *(v14 + 48), a2);
    v21(v8, v10, a2);
    v22 = sub_220B59078();
    v23 = v45;
    v24 = v48;
    sub_220B65FB0(v8, v44, a2, v22, v48);
    v25 = *(v5 + 8);
    v25(v8, a2);
    v25(v10, a2);
  }

  else
  {
    v26 = v39;
    v27 = v40;
    (*(v39 + 104))(v17, *MEMORY[0x277CE0FE0], v40);
    v28 = sub_220BCD2B0();
    (*(v26 + 8))(v17, v27);
    LOBYTE(v27) = sub_220B57E30();
    v30 = v42;
    v29 = v43;
    (*(v43 + 16))(v42, a1, v14);
    v31 = (*(v29 + 80) + 32) & ~*(v29 + 80);
    v32 = swift_allocObject();
    v33 = v20;
    v24 = v48;
    *(v32 + 16) = a2;
    *(v32 + 24) = v24;
    (*(v29 + 32))(v32 + v31, v30, v14);
    v62 = 1;
    v50 = v28;
    v51 = 0;
    v52 = 1;
    v53 = v27;
    v54 = v60;
    v55 = v61;
    v56 = sub_220B59954;
    v57 = v32;
    v58 = 0;
    v59 = 0;
    v34 = sub_220B59078();
    swift_retain_n();
    swift_retain_n();
    v23 = v45;
    sub_220B65EB8(&v50, v44, a2, v34, v24);
    sub_220B485EC(v33, 0);
  }

  v63 = sub_220B59078();
  v64 = v24;
  v35 = v47;
  swift_getWitnessTable();
  v36 = v46;
  (*(v46 + 16))(v49, v23, v35);
  return (*(v36 + 8))(v23, v35);
}

uint64_t sub_220B58DDC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  type metadata accessor for RemoteImageView(0, a2, a3, a4);
  sub_220B57F78();
  a4();
}

void *sub_220B58E30@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_220B599BC(a2, a3, a4);
  result = sub_220BCC9E0();
  *a1 = v6;
  return result;
}

uint64_t sub_220B58ECC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76C90, &qword_220BD1810);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_1()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76C90, &qword_220BD1810) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);

  v5 = sub_220BCBF80();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

unint64_t sub_220B59078()
{
  result = qword_2812C09E0;
  if (!qword_2812C09E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF76D60, &qword_220BD11A0);
    sub_220B4868C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812C09E0);
  }

  return result;
}

uint64_t sub_220B59148(void (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for RemoteImageView(0, v6, v7, a4) - 8);
  return sub_220B58DDC(v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v6, v7, a1);
}

void sub_220B59214(uint64_t a1)
{
  sub_220B597EC(319, &qword_2812C0A38, MEMORY[0x277CDF400], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_220B59730(319);
    if (v2 <= 0x3F)
    {
      sub_220B597EC(319, &qword_2812C0970, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);
      if (v3 <= 0x3F)
      {
        sub_220B597EC(319, &qword_2812C0988, MEMORY[0x277CE1088], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_checkMetadataState();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_220B59350(unint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
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

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 72) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      v15 = a1 & 0xFFFFFFFFFFFFFFF8;
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((v15 + v6 + 72) & ~v6);
      }

      v16 = *(v15 + 48);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_220B594D8(unint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 72) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *(a1 + v10) = v15;
              }

              else
              {
                *(a1 + v10) = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        *(a1 + 2) = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      *(a1 + v10) = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(a1 + v10) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *(a1 + v10) = 0;
  }

  else if (v13)
  {
    *(a1 + v10) = 0;
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
  v19 = a1 & 0xFFFFFFFFFFFFFFF8;
  if ((v7 & 0x80000000) != 0)
  {
    v20 = *(v6 + 56);

    v20((v19 + v9 + 72) & ~v9);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *(v19 + 56) = 0;
    *(v19 + 40) = a2 & 0x7FFFFFFF;
    *(v19 + 48) = 0;
  }

  else
  {
    *(v19 + 48) = a2 - 1;
  }
}

void sub_220B59730(uint64_t a1)
{
  if (!qword_2812C0A30)
  {
    type metadata accessor for RemoteImageLoader(255);
    sub_220B59794();
    v1 = sub_220BCC630();
    if (!v2)
    {
      atomic_store(v1, &qword_2812C0A30);
    }
  }
}

unint64_t sub_220B59794()
{
  result = qword_2812C1DA0;
  if (!qword_2812C1DA0)
  {
    type metadata accessor for RemoteImageLoader(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812C1DA0);
  }

  return result;
}

void sub_220B597EC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t objectdestroy_6Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = (type metadata accessor for RemoteImageView(0, v5, *(v4 + 24), a4) - 8);
  v7 = *(*v6 + 80);
  v8 = (v7 + 32) & ~v7;
  v9 = *(*v6 + 64);
  sub_220B4889C(*(v4 + v8), *(v4 + v8 + 8));
  sub_220B59110(*(v4 + v8 + 16), *(v4 + v8 + 24));

  (*(*(v5 - 8) + 8))(v4 + v8 + v6[14], v5);

  return MEMORY[0x2821FE8E8](v4, v8 + v9, v7 | 7);
}

unint64_t sub_220B599BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2812C1418;
  if (!qword_2812C1418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812C1418);
  }

  return result;
}

uint64_t TipSearchView.init(viewModel:displaySectionHeader:maxResultsCount:)@<X0>(char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  type metadata accessor for SearchResultsViewModel(0);
  sub_220B5A4EC(&qword_2812C0F98, type metadata accessor for SearchResultsViewModel, &protocol conformance descriptor for SearchResultsViewModel);
  result = sub_220BCC7A0();
  *a4 = result;
  *(a4 + 8) = v8;
  *(a4 + 16) = a2;
  *(a4 + 24) = a3;
  return result;
}

uint64_t TipSearchView.body.getter()
{
  v1 = type metadata accessor for SearchResultsView(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v15[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = *v0;
  v5 = v0[1];
  v6 = *(v0 + 16);
  v7 = v0[3];
  *v3 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76CE0, &unk_220BD3D40);
  swift_storeEnumTagMultiPayload();
  v8 = v3 + v1[6];
  v20 = 0;
  v21 = 0;
  v9 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76F90, &qword_220BD6030);
  sub_220BCD2E0();
  v10 = v23;
  *v8 = v22;
  *(v8 + 2) = v10;
  v11 = (v3 + v1[5]);
  type metadata accessor for SearchResultsViewModel(0);
  sub_220B5A4EC(&qword_2812C0F98, type metadata accessor for SearchResultsViewModel, &protocol conformance descriptor for SearchResultsViewModel);
  *v11 = sub_220BCC7A0();
  v11[1] = v12;
  *(v3 + v1[7]) = v6;
  *(v3 + v1[8]) = v7;
  v13 = sub_220BCC7B0();
  swift_getKeyPath();
  sub_220BCC7C0();

  v16 = v4;
  v17 = v9;
  v18 = v6;
  v19 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76F98, &qword_220BD1E30);
  sub_220B5A4EC(&qword_27CF76FA0, type metadata accessor for SearchResultsView, &protocol conformance descriptor for SearchResultsView);
  sub_220B5A534();
  sub_220BCD0D0();

  return sub_220B5A774(v3);
}

uint64_t sub_220B59D44@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_220BCC4C0();

  *a2 = v4;
  return result;
}

uint64_t sub_220B59DC4(char *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_220BCC4D0();
}

double sub_220B59E34@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v15 = a1;
  v16 = a2;
  v17 = a3;
  v18 = a4;
  sub_220B59E94(v11);
  v6 = v12;
  v7 = v13;
  v8 = v14;
  result = *v11;
  v10 = v11[1];
  *a5 = v11[0];
  *(a5 + 16) = v10;
  *(a5 + 32) = v6;
  *(a5 + 40) = v7;
  *(a5 + 41) = v8;
  return result;
}

double sub_220B59E94@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  sub_220BCC4C0();

  if (v18 > 1u)
  {
    if (v18 - 2 < 2)
    {
      goto LABEL_5;
    }

    if (v18 == 4)
    {
      v9 = v4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76F90, &qword_220BD6030);
      sub_220BCD2E0();
      type metadata accessor for SearchResultsViewModel(0);
      sub_220B5A4EC(&qword_2812C0F98, type metadata accessor for SearchResultsViewModel, &protocol conformance descriptor for SearchResultsViewModel);
      sub_220BCC7A0();
      v11 = v10;

      v8 = v11;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76FF8, &qword_220BD1E58);
      sub_220B5A720(&qword_27CF76FF0, &qword_27CF76FF8, &qword_220BD1E58);
      sub_220BCCC30();
      goto LABEL_8;
    }

LABEL_9:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76FF8, &qword_220BD1E58);
    sub_220B5A720(&qword_27CF76FF0, &qword_27CF76FF8, &qword_220BD1E58);
    sub_220BCCC30();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76FB8, &qword_220BD1E38);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76FE8, &qword_220BD1E50);
    sub_220B5A5C0();
    sub_220B5A67C();
    sub_220BCCC30();
    goto LABEL_10;
  }

  if (!v18)
  {
    goto LABEL_9;
  }

LABEL_5:
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76F90, &qword_220BD6030);
  sub_220BCD2E0();
  type metadata accessor for SearchResultsViewModel(0);
  sub_220B5A4EC(&qword_2812C0F98, type metadata accessor for SearchResultsViewModel, &protocol conformance descriptor for SearchResultsViewModel);
  sub_220BCC7A0();
  v7 = v6;

  v8 = v7;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76FC8, &qword_220BD1E40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76FD8, &qword_220BD1E48);
  sub_220B5A720(&qword_27CF76FC0, &qword_27CF76FC8, &qword_220BD1E40);
  sub_220B5A720(&qword_27CF76FD0, &qword_27CF76FD8, &qword_220BD1E48);
  sub_220BCCC30();
LABEL_8:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76FB8, &qword_220BD1E38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76FE8, &qword_220BD1E50);
  sub_220B5A5C0();
  sub_220B5A67C();
  sub_220BCCC30();

LABEL_10:
  result = *&v13;
  *a1 = v13;
  *(a1 + 16) = v14;
  *(a1 + 32) = v15;
  *(a1 + 40) = v16;
  *(a1 + 41) = v17;
  return result;
}

uint64_t sub_220B5A414(uint64_t a1)
{
  v2 = sub_220BCC5C0();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_220BCC900();
}

uint64_t sub_220B5A4EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_220B5A534()
{
  result = qword_27CF76FA8;
  if (!qword_27CF76FA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF76F98, &qword_220BD1E30);
    sub_220B5A5C0();
    sub_220B5A67C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF76FA8);
  }

  return result;
}

unint64_t sub_220B5A5C0()
{
  result = qword_27CF76FB0;
  if (!qword_27CF76FB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF76FB8, &qword_220BD1E38);
    sub_220B5A720(&qword_27CF76FC0, &qword_27CF76FC8, &qword_220BD1E40);
    sub_220B5A720(&qword_27CF76FD0, &qword_27CF76FD8, &qword_220BD1E48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF76FB0);
  }

  return result;
}

unint64_t sub_220B5A67C()
{
  result = qword_27CF76FE0;
  if (!qword_27CF76FE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF76FE8, &qword_220BD1E50);
    sub_220B5A720(&qword_27CF76FF0, &qword_27CF76FF8, &qword_220BD1E58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF76FE0);
  }

  return result;
}

uint64_t sub_220B5A720(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_220B5A774(uint64_t a1)
{
  v2 = type metadata accessor for SearchResultsView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_220B5A7F8(uint64_t a1, int a2)
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

uint64_t sub_220B5A840(uint64_t result, int a2, int a3)
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

uint64_t type metadata accessor for ListAnswerViewModel(uint64_t a1)
{
  result = qword_27CF77000;
  if (!qword_27CF77000)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_220B5A904(uint64_t a1)
{
  sub_220BCC2E0();
  if (v1 <= 0x3F)
  {
    sub_220B5A9B8();
    if (v2 <= 0x3F)
    {
      sub_220B48ADC(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_220B5A9B8()
{
  if (!qword_27CF77010)
  {
    v0 = sub_220BCDCA0();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF77010);
    }
  }
}

uint64_t getEnumTagSinglePayload for ListAnswerViewModel.ListStyle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ListAnswerViewModel.ListStyle(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_220B5AB68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CF77018;
  if (!qword_27CF77018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF77018);
  }

  return result;
}

uint64_t sub_220B5ABBC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v113 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76D78, &unk_220BD11C0);
  MEMORY[0x28223BE20](v5 - 8);
  v112 = &v102 - v6;
  v121 = sub_220BCC0A0();
  v102 = *(v121 - 8);
  MEMORY[0x28223BE20](v121);
  v120 = &v102 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_220BCC2D0();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v102 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v102 - v13;
  v15 = sub_220BCC2B0();
  v118 = v15;
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v104 = &v102 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v102 - v19;
  v116 = type metadata accessor for ListAnswerViewModel(0);
  v21 = v116[9];
  v22 = type metadata accessor for AttributionItem(0);
  v103 = *(v22 - 8);
  v23 = *(v103 + 56);
  v111 = v21;
  v110 = v22;
  v109 = v103 + 56;
  v108 = v23;
  (v23)(a3 + v21, 1, 1);
  v24 = sub_220BCC2E0();
  v106 = *(v24 - 8);
  v25 = *(v106 + 16);
  v119 = a1;
  v107 = v24;
  v25(a3, a1);
  sub_220BCC2C0();
  sub_220BCC2A0();
  v26 = *(v16 + 8);
  v117 = v16 + 8;
  v26(v20, v15);
  v115 = v26;
  (*(v9 + 104))(v12, *MEMORY[0x277D38DE8], v8);
  sub_220B5B69C();
  sub_220BCDC40();
  sub_220BCDC40();
  v27 = *(v9 + 8);
  v27(v12, v8);
  v27(v14, v8);
  v28 = v116;
  *(a3 + v116[5]) = v125[0] != v122[0];
  sub_220BCC2C0();
  v29 = sub_220BCC250();
  v105 = v20;
  v30 = v20;
  v31 = v118;
  v26(v30, v118);
  v32 = sub_220B670E4(v29);
  v34 = v33;
  LOBYTE(v8) = v35;
  v37 = v36;

  v38 = v28[6];
  v114 = a3;
  v39 = a3 + v38;
  *v39 = v32;
  *(v39 + 8) = v34;
  *(v39 + 16) = v8 & 1;
  *(v39 + 24) = v37;
  v40 = v104;
  sub_220BCC2C0();
  v41 = sub_220BCC270();
  v115(v40, v31);
  v42 = *(v41 + 16);
  v43 = MEMORY[0x277D84F90];
  if (!v42)
  {

    v44 = MEMORY[0x277D84F90];
    v59 = *(MEMORY[0x277D84F90] + 16);
    if (!v59)
    {
      goto LABEL_13;
    }

    goto LABEL_7;
  }

  v125[0] = MEMORY[0x277D84F90];
  sub_220B4CD64(0, v42, 0);
  v44 = v125[0];
  v45 = *(v102 + 16);
  v46 = (*(v102 + 80) + 32) & ~*(v102 + 80);
  v104 = v41;
  v47 = v41 + v46;
  v48 = *(v102 + 72);
  v49 = (v102 + 8);
  v50 = v102 + 16;
  do
  {
    v51 = v44;
    v52 = v120;
    v53 = v121;
    v54 = v50;
    v45(v120, v47, v121);
    v55 = sub_220BCC090();
    v56 = v52;
    v44 = v51;
    (*v49)(v56, v53);
    v125[0] = v51;
    v58 = *(v51 + 16);
    v57 = *(v51 + 24);
    if (v58 >= v57 >> 1)
    {
      sub_220B4CD64((v57 > 1), v58 + 1, 1);
      v44 = v125[0];
    }

    *(v44 + 16) = v58 + 1;
    *(v44 + 8 * v58 + 32) = v55;
    v47 += v48;
    --v42;
    v50 = v54;
  }

  while (v42);

  v43 = MEMORY[0x277D84F90];
  v59 = *(v44 + 16);
  if (v59)
  {
LABEL_7:
    v125[0] = v43;
    v121 = v44;
    sub_220B4CD44(0, v59, 0);
    v60 = 32;
    v43 = v125[0];
    do
    {

      v62 = sub_220B670E4(v61);
      v64 = v63;
      v66 = v65;
      v68 = v67;

      v125[0] = v43;
      v70 = *(v43 + 16);
      v69 = *(v43 + 24);
      if (v70 >= v69 >> 1)
      {
        sub_220B4CD44((v69 > 1), v70 + 1, 1);
        v43 = v125[0];
      }

      *(v43 + 16) = v70 + 1;
      v71 = v43 + 32 * v70;
      *(v71 + 32) = v62;
      *(v71 + 40) = v64;
      *(v71 + 48) = v66 & 1;
      *(v71 + 56) = v68;
      v60 += 8;
      --v59;
    }

    while (v59);
  }

LABEL_13:

  v72 = v116;
  v73 = v114;
  *(v114 + v116[7]) = v43;
  v74 = v105;
  sub_220BCC2C0();
  v75 = sub_220BCC260();
  v115(v74, v118);
  v76 = sub_220B670E4(v75);
  v78 = v77;
  v80 = v79;
  v82 = v81;

  v83 = v73 + v72[8];
  *v83 = v76;
  *(v83 + 8) = v78;
  *(v83 + 16) = v80 & 1;
  *(v83 + 24) = v82;
  v84 = v113;
  sub_220B469AC(v113, v125);
  v85 = __swift_mutable_project_boxed_opaque_existential_1(v125, v125[3]);
  MEMORY[0x28223BE20](v85);
  v87 = (&v102 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v88 + 16))(v87);
  v89 = *v87;
  v90 = type metadata accessor for TipsApp();
  v123 = v90;
  v124 = &off_28345CDC0;
  v122[0] = v89;
  type metadata accessor for AttributionItemFactory();
  inited = swift_initStackObject();
  v92 = __swift_mutable_project_boxed_opaque_existential_1(v122, v123);
  MEMORY[0x28223BE20](v92);
  v94 = (&v102 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v95 + 16))(v94);
  v96 = *v94;
  inited[5] = v90;
  inited[6] = &off_28345CDC0;
  inited[2] = v96;
  __swift_destroy_boxed_opaque_existential_1(v122);
  __swift_destroy_boxed_opaque_existential_1(v125);
  v97 = sub_220BCC130();
  v98 = sub_220B9A30C(v97);

  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1(inited + 2);
  if (v98[2])
  {
    v99 = v112;
    sub_220B49240(v98 + ((*(v103 + 80) + 32) & ~*(v103 + 80)), v112);
    v100 = 0;
  }

  else
  {
    v100 = 1;
    v99 = v112;
  }

  __swift_destroy_boxed_opaque_existential_1(v84);
  (*(v106 + 8))(v119, v107);
  v108(v99, v100, 1, v110);
  return sub_220B492A4(v99, v73 + v111);
}

uint64_t sub_220B5B5C0(uint64_t a1, uint64_t a2, int *a3)
{
  if ((sub_220BCCF40() & 1) == 0 || (sub_220B9D8C4(*(a1 + a3[7]), *(a2 + a3[7])) & 1) == 0)
  {
    return 0;
  }

  return sub_220BCCF40();
}

unint64_t sub_220B5B69C()
{
  result = qword_27CF77020;
  if (!qword_27CF77020)
  {
    sub_220BCC2D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF77020);
  }

  return result;
}

uint64_t sub_220B5B6F4()
{
  swift_getKeyPath();
  sub_220B5BDD0();
  sub_220BCC300();

  return *(v0 + 16);
}

uint64_t sub_220B5B764(uint64_t result)
{
  if (*(v1 + 16) == (result & 1))
  {
    *(v1 + 16) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_220B5BDD0();
    sub_220BCC2F0();
  }

  return result;
}

uint64_t sub_220B5B844()
{
  v1 = v0;
  *(v0 + 16) = 0;
  sub_220BCC330();
  v2 = [objc_opt_self() coalescedKeyboard];
  v3 = v2;
  if (v2)
  {
  }

  if (((v3 != 0) ^ *(v1 + 16)))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_220B5BDD0();
    sub_220BCC2F0();
  }

  else
  {
    *(v1 + 16) = v3 != 0;
  }

  v5 = objc_opt_self();
  v6 = [v5 defaultCenter];
  [v6 addObserver:v1 selector:sel_keyboardConnected name:*MEMORY[0x277CCB028] object:0];

  v7 = [v5 defaultCenter];
  [v7 addObserver:v1 selector:sel_keyboardDisconnected name:*MEMORY[0x277CCB030] object:0];

  return v1;
}

void sub_220B5BA08()
{
  if (*(v0 + 16) == 1)
  {
    *(v0 + 16) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_220B5BDD0();
    sub_220BCC2F0();
  }
}

void sub_220B5BB00()
{
  if (*(v0 + 16))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_220B5BDD0();
    sub_220BCC2F0();
  }

  else
  {
    *(v0 + 16) = 0;
  }
}

uint64_t sub_220B5BBF0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{

  a3(v4);
}

uint64_t sub_220B5BC34()
{
  v1 = OBJC_IVAR____TtC6TipsUI23ExternalKeyboardMonitor___observationRegistrar;
  v2 = sub_220BCC340();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t type metadata accessor for ExternalKeyboardMonitor(uint64_t a1)
{
  result = qword_27CF77030;
  if (!qword_27CF77030)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_220B5BD24(uint64_t a1)
{
  result = sub_220BCC340();
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

unint64_t sub_220B5BDD0()
{
  result = qword_27CF76CD0;
  if (!qword_27CF76CD0)
  {
    type metadata accessor for ExternalKeyboardMonitor(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF76CD0);
  }

  return result;
}

id SearchResultsViewModel.symbol(for:)(void *a1)
{
  result = [a1 tocAssets];
  if (result)
  {
    v2 = result;
    v3 = [result symbolId];

    if (v3)
    {
      v4 = sub_220BCDBA0();

      return v4;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t SearchResultsViewModel.title(for:)(void *a1)
{
  v1 = [a1 title];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_220BCDBA0();

  return v3;
}

uint64_t sub_220B5BF30(void *a1)
{
  v2 = [a1 tileContent];
  v3 = [v2 bodyContent];

  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77048, &unk_220BD20A0);
    v4 = sub_220BCDC70();

    v5 = sub_220B79D34(v4);

    if (!v5)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76DD0, &unk_220BD2490);
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_220BD1BA0;
      *(v5 + 32) = sub_220B4F2C4(MEMORY[0x277D84F90]);
    }
  }

  else
  {
    v6 = objc_opt_self();
    v7 = [a1 text];
    v8 = [v6 textContentWithText_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77040, &qword_220BD2098);
    v9 = sub_220BCDC70();

    v5 = sub_220B79E74(v9);
  }

  return v5;
}

uint64_t sub_220B5C0A4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_220BCC4C0();
}

uint64_t sub_220B5C11C(uint64_t a1)
{
  sub_220B5D250();
  v2 = OBJC_IVAR____TtC6TipsUI16RemoteFileLoader__state;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76EC8, &qword_220BD1838);
  (*(*(v3 - 8) + 8))(v1 + v2, v3);

  sub_220B463F4(v1 + OBJC_IVAR____TtC6TipsUI16RemoteFileLoader_url, &qword_27CF76C90, &qword_220BD1810);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 52);

  return MEMORY[0x2821FE8D8](v1, v4, v5);
}

uint64_t type metadata accessor for RemoteFileLoader(uint64_t a1)
{
  result = qword_2812C1FD0;
  if (!qword_2812C1FD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_220B5C260(uint64_t a1)
{
  sub_220B5D464(319);
  if (v1 <= 0x3F)
  {
    sub_220B5D4C8(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_220B5C340(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a2;
  v22 = a3;
  v20 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76EC8, &qword_220BD1838);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76EF0, &qword_220BD1858);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v20 - v12;
  v14 = OBJC_IVAR____TtC6TipsUI16RemoteFileLoader__state;
  swift_storeEnumTagMultiPayload();
  sub_220B462DC(v13, v11, &qword_27CF76EF0, &qword_220BD1858);
  sub_220BCC480();
  sub_220B463F4(v13, &qword_27CF76EF0, &qword_220BD1858);
  (*(v5 + 32))(v3 + v14, v7, v4);
  *(v3 + OBJC_IVAR____TtC6TipsUI16RemoteFileLoader_urlSessionItem) = 0;
  v15 = (v3 + OBJC_IVAR____TtC6TipsUI16RemoteFileLoader_identifier);
  *v15 = 0;
  v15[1] = 0;
  v16 = OBJC_IVAR____TtC6TipsUI16RemoteFileLoader_url;
  v17 = sub_220BCBF80();
  (*(*(v17 - 8) + 56))(v3 + v16, 1, 1, v17);
  v18 = v21;
  *v15 = v20;
  v15[1] = v18;
  swift_beginAccess();
  sub_220B55518(v22, v3 + v16);
  swift_endAccess();
  return v3;
}

void sub_220B5C58C()
{
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76EF0, &qword_220BD1858);
  v1 = MEMORY[0x28223BE20](v42);
  v41 = v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = (v40 - v4);
  MEMORY[0x28223BE20](v3);
  v7 = v40 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76C90, &qword_220BD1810);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v40 - v9;
  v11 = sub_220BCBF80();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC6TipsUI16RemoteFileLoader_url;
  swift_beginAccess();
  v43 = v0;
  v16 = v0 + v15;
  v17 = v11;
  v18 = v12;
  sub_220B462DC(v16, v10, &qword_27CF76C90, &qword_220BD1810);
  if ((*(v12 + 48))(v10, 1, v17) == 1)
  {
    v19 = sub_220B463F4(v10, &qword_27CF76C90, &qword_220BD1810);
LABEL_7:
    sub_220B5D560(v19, v20, v21);
    v24 = swift_allocError();
    *v25 = 1;
    *v5 = v24;
    swift_storeEnumTagMultiPayload();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_220B462DC(v5, v41, &qword_27CF76EF0, &qword_220BD1858);

    sub_220BCC4D0();
    v26 = v5;
LABEL_8:
    sub_220B463F4(v26, &qword_27CF76EF0, &qword_220BD1858);
    return;
  }

  (*(v12 + 32))(v14, v10, v17);
  v22 = v14;
  if (!*(v43 + OBJC_IVAR____TtC6TipsUI16RemoteFileLoader_identifier + 8))
  {
    v19 = (*(v12 + 8))(v14, v17);
    goto LABEL_7;
  }

  v23 = OBJC_IVAR____TtC6TipsUI16RemoteFileLoader_urlSessionItem;
  if (*(v43 + OBJC_IVAR____TtC6TipsUI16RemoteFileLoader_urlSessionItem))
  {
    (*(v12 + 8))(v22, v17);
    return;
  }

  v27 = v22;
  v40[1] = *(v43 + OBJC_IVAR____TtC6TipsUI16RemoteFileLoader_identifier);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_220BCC4C0();

  if (!swift_getEnumCaseMultiPayload())
  {
    (*(v12 + 8))(v27, v17);

    v26 = v7;
    goto LABEL_8;
  }

  v40[0] = v27;
  sub_220B463F4(v7, &qword_27CF76EF0, &qword_220BD1858);
  swift_storeEnumTagMultiPayload();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_220B462DC(v5, v41, &qword_27CF76EF0, &qword_220BD1858);

  sub_220BCC4D0();
  sub_220B463F4(v5, &qword_27CF76EF0, &qword_220BD1858);
  sub_220B5D5B4();
  v28 = [swift_getObjCClassFromMetadata() sharedInstance];
  if (v28)
  {
    v29 = v28;
    v30 = v40[0];
    sub_220BCBF10();
    v31 = v23;
    v32 = sub_220BCDB70();

    v33 = sub_220BCDB70();

    v34 = *MEMORY[0x277CCA798];
    v35 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_220B5D600;
    aBlock[5] = v35;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_220B7F848;
    aBlock[3] = &block_descriptor_0;
    v36 = _Block_copy(aBlock);

    LODWORD(v37) = v34;
    v38 = [v29 formattedDataForPath:v32 identifier:v33 attributionIdentifier:0 priority:v36 completionHandler:v37];
    _Block_release(v36);

    v23 = v31;
    (*(v18 + 8))(v30, v17);
  }

  else
  {
    (*(v12 + 8))(v40[0], v17);

    v38 = 0;
  }

  v39 = *(v43 + v23);
  *(v43 + v23) = v38;
}

void sub_220B5CBD8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10)
{
  v51 = a3;
  v57 = a1;
  v11 = sub_220BCD630();
  v55 = *(v11 - 8);
  v56 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76C90, &qword_220BD1810);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v51 - v15;
  v17 = sub_220BCBF80();
  v52 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76EF0, &qword_220BD1858);
  v21 = MEMORY[0x28223BE20](v20);
  v54 = &v51 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v53 = (&v51 - v24);
  MEMORY[0x28223BE20](v23);
  v26 = &v51 - v25;
  *(&v51 - v25) = a9;
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v28 = Strong;
    v29 = *(Strong + OBJC_IVAR____TtC6TipsUI16RemoteFileLoader_identifier + 8);
    if (v29 && a2 && (*(Strong + OBJC_IVAR____TtC6TipsUI16RemoteFileLoader_identifier) == v57 && v29 == a2 || (sub_220BCE130() & 1) != 0))
    {
      sub_220B462DC(v51, &v58, &qword_27CF77050, &unk_220BD2180);
      v30 = v60;
      v31 = a9;
      if (v30)
      {
        v32 = swift_dynamicCast();
        v33 = v52;
        (*(v52 + 56))(v16, v32 ^ 1u, 1, v17);
        v34 = (*(v33 + 48))(v16, 1, v17);
        v35 = v53;
        if (v34 != 1)
        {
          sub_220B463F4(v26, &qword_27CF76EF0, &qword_220BD1858);
          v36 = *(v33 + 32);
          v36(v19, v16, v17);
          v36(v26, v19, v17);
          swift_storeEnumTagMultiPayload();
LABEL_29:
          sub_220B462DC(v26, v35, &qword_27CF76EF0, &qword_220BD1858);
          swift_getKeyPath();
          swift_getKeyPath();
          sub_220B462DC(v35, v54, &qword_27CF76EF0, &qword_220BD1858);

          sub_220BCC4D0();
          sub_220B463F4(v35, &qword_27CF76EF0, &qword_220BD1858);
          sub_220B463F4(v26, &qword_27CF76EF0, &qword_220BD1858);
          v50 = *(v28 + OBJC_IVAR____TtC6TipsUI16RemoteFileLoader_urlSessionItem);
          *(v28 + OBJC_IVAR____TtC6TipsUI16RemoteFileLoader_urlSessionItem) = 0;

          return;
        }
      }

      else
      {
        sub_220B463F4(&v58, &qword_27CF77050, &unk_220BD2180);
        (*(v52 + 56))(v16, 1, 1, v17);
        v35 = v53;
      }

      v45 = sub_220B463F4(v16, &qword_27CF76C90, &qword_220BD1810);
      sub_220B5D560(v45, v46, v47);
      v48 = swift_allocError();
      *v49 = 2;
      sub_220B463F4(v26, &qword_27CF76EF0, &qword_220BD1858);
      *v35 = v48;
      swift_storeEnumTagMultiPayload();
      sub_220B5D640(v35, v26);
      goto LABEL_29;
    }

    v37 = a9;
  }

  else
  {
    v38 = a9;
  }

  sub_220BCD600();
  v39 = 0xE000000000000000;
  v58 = 0;
  v59 = 0xE000000000000000;
  sub_220BCDFB0();
  v61 = v58;
  v62 = v59;
  MEMORY[0x223D929B0](0xD000000000000042, 0x8000000220BD70E0);
  swift_beginAccess();
  v40 = swift_weakLoadStrong();
  if (v40)
  {
    v42 = *(v40 + OBJC_IVAR____TtC6TipsUI16RemoteFileLoader_identifier);
    v41 = *(v40 + OBJC_IVAR____TtC6TipsUI16RemoteFileLoader_identifier + 8);

    if (v41)
    {
      v40 = v42;
    }

    else
    {
      v40 = 0;
    }

    if (v41)
    {
      v43 = v41;
    }

    else
    {
      v43 = 0xE000000000000000;
    }
  }

  else
  {
    v43 = 0xE000000000000000;
  }

  MEMORY[0x223D929B0](v40, v43);

  MEMORY[0x223D929B0](0xD000000000000017, 0x8000000220BD7130);
  if (a2)
  {
    v44 = v57;
  }

  else
  {
    v44 = 0;
  }

  if (a2)
  {
    v39 = a2;
  }

  MEMORY[0x223D929B0](v44, v39);

  sub_220BCDA40();

  (*(v55 + 8))(v13, v56);
  sub_220B463F4(v26, &qword_27CF76EF0, &qword_220BD1858);
}

uint64_t sub_220B5D250()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76EF0, &qword_220BD1858);
  v2 = MEMORY[0x28223BE20](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v14 - v6;
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  v10 = [objc_opt_self() defaultManager];
  v11 = OBJC_IVAR____TtC6TipsUI16RemoteFileLoader_urlSessionItem;
  [v10 cancelSessionItem_];

  v12 = *(v0 + v11);
  *(v0 + v11) = 0;

  swift_getKeyPath();
  swift_getKeyPath();
  sub_220BCC4C0();

  LODWORD(v10) = swift_getEnumCaseMultiPayload();
  result = sub_220B463F4(v9, &qword_27CF76EF0, &qword_220BD1858);
  if (v10)
  {
    swift_storeEnumTagMultiPayload();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_220B462DC(v7, v4, &qword_27CF76EF0, &qword_220BD1858);

    sub_220BCC4D0();
    return sub_220B463F4(v7, &qword_27CF76EF0, &qword_220BD1858);
  }

  return result;
}

void sub_220B5D464(uint64_t a1)
{
  if (!qword_2812C0AA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF76EF0, &qword_220BD1858);
    v1 = sub_220BCC4E0();
    if (!v2)
    {
      atomic_store(v1, &qword_2812C0AA0);
    }
  }
}

void sub_220B5D4C8(uint64_t a1)
{
  if (!qword_2812C2218)
  {
    sub_220BCBF80();
    v1 = sub_220BCDF10();
    if (!v2)
    {
      atomic_store(v1, &qword_2812C2218);
    }
  }
}

uint64_t sub_220B5D520@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for RemoteFileLoader(0);
  result = sub_220BCC420();
  *a2 = result;
  return result;
}

unint64_t sub_220B5D560(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2812C2068[0];
  if (!qword_2812C2068[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2812C2068);
  }

  return result;
}

unint64_t sub_220B5D5B4()
{
  result = qword_2812C08C8;
  if (!qword_2812C08C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2812C08C8);
  }

  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_220B5D640(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76EF0, &qword_220BD1858);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_220B5D6B0()
{
  v1 = sub_220BCC9D0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for ItemListView(0) + 20);
  v6 = *v5;
  if (*(v5 + 8) == 1)
  {
    if ((v6 & 1) == 0)
    {
LABEL_3:
      v7 = sub_220BCCB20();
      sub_220BCCA20();
      return v7;
    }
  }

  else
  {

    sub_220BCDDC0();
    v9 = sub_220BCCD50();
    sub_220BCC3C0();

    sub_220BCC9C0();
    swift_getAtKeyPath();
    sub_220B3385C(v6, 0);
    (*(v2 + 8))(v4, v1);
    if ((v10[15] & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  if (qword_27CF768E8 != -1)
  {
    swift_once();
  }

  return qword_27CF77058;
}

double sub_220B5D860()
{
  v1 = sub_220BCC9D0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for ItemListView(0) + 20);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_220BCDDC0();
    v7 = sub_220BCCD50();
    sub_220BCC3C0();

    sub_220BCC9C0();
    swift_getAtKeyPath();
    sub_220B3385C(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  result = 6.0;
  if (v6)
  {
    return 4.0;
  }

  return result;
}

uint64_t sub_220B5D9C4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v9 = __OFADD__(a2, 1);
  v10 = a2 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    v24 = v7;
    v25 = v8;
    sub_220B5DAF8(result, v10, v22);
    v16 = v22[0];
    v17 = v22[1];
    v18 = v22[2];
    v19 = v22[3];
    v20 = v23;
    v21 = sub_220BCCCE0();
    LOBYTE(v22[0]) = v20;
    *a7 = v16;
    *(a7 + 8) = v17;
    *(a7 + 16) = v18;
    *(a7 + 24) = v19;
    *(a7 + 32) = v20;
    *(a7 + 36) = v21;
    *(a7 + 40) = a3;
    *(a7 + 48) = a4;
    *(a7 + 56) = a5 & 1;
    *(a7 + 64) = a6;
    *(a7 + 72) = 256;
    sub_220B5E890(a3, a4, a5 & 1);

    sub_220B5E8A0(v16, v17, v18, v19);
    sub_220B5E890(a3, a4, a5 & 1);

    sub_220B5E8DC(a3, a4, a5 & 1);

    return sub_220B5E8EC(v16, v17, v18, v19);
  }

  return result;
}

double sub_220B5DAF8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_220BCC080();
  MEMORY[0x28223BE20](v6 - 8);
  v26[1] = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF770D0, &qword_220BD2298);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v26 - v10;
  v12 = sub_220BCC9D0();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1 + *(type metadata accessor for ItemListView(0) + 20);
  v17 = *v16;
  v18 = MEMORY[0x277D84F90];
  if (*(v16 + 8) != 1)
  {

    sub_220BCDDC0();
    v26[0] = v12;
    v22 = sub_220BCCD50();
    sub_220BCC3C0();

    v18 = MEMORY[0x277D84F90];
    sub_220BCC9C0();
    swift_getAtKeyPath();
    sub_220B3385C(v17, 0);
    (*(v13 + 8))(v15, v26[0]);
    if ((v31 & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v27 = xmmword_220BD2190;
    v28 = 0;
    v29 = v18;
    v30 = 1;
    goto LABEL_6;
  }

  if (v17)
  {
    goto LABEL_5;
  }

LABEL_3:
  *&v31 = a2;
  v19 = sub_220BCC040();
  sub_220B5E928(v19, v20, v21);
  sub_220BCBED0();
  sub_220B43830(&qword_27CF770E0, &qword_27CF770D0, &qword_220BD2298, MEMORY[0x277CC8CE8]);
  sub_220BCDF30();
  (*(v9 + 8))(v11, v8);
  v31 = v27;
  MEMORY[0x223D929B0](46, 0xE100000000000000);
  v27 = v31;
  v28 = 0;
  v29 = v18;
  v30 = 0;
LABEL_6:
  sub_220BCCC30();
  result = *&v31;
  v24 = v32;
  v25 = v33;
  *a3 = v31;
  *(a3 + 16) = v24;
  *(a3 + 32) = v25;
  return result;
}

uint64_t sub_220B5DE84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1 - 8;
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_220B5D6B0();
  v10 = v9;
  v11 = sub_220B5D860();
  *a2 = v8;
  *(a2 + 8) = v10;
  *(a2 + 16) = v11;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0x4018000000000000;
  *(a2 + 40) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF770A0, &qword_220BD2258);
  v16[1] = sub_220B5E470(*(v2 + *(v4 + 36)));
  swift_getKeyPath();
  sub_220B5E6A8(v2, v7);
  v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v13 = swift_allocObject();
  sub_220B5E70C(v7, v13 + v12);
  v14 = swift_allocObject();
  *(v14 + 16) = sub_220B5E770;
  *(v14 + 24) = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF770B0, &qword_220BD2288);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF770B8, &qword_220BD2290);
  sub_220B43830(&qword_27CF770C0, &qword_27CF770B0, &qword_220BD2288, MEMORY[0x277D83980]);
  sub_220B43830(&qword_27CF770C8, &qword_27CF770B8, &qword_220BD2290, MEMORY[0x277CDF0A0]);
  return sub_220BCD3D0();
}

uint64_t sub_220B5E0D8()
{
  v0 = sub_220BCCB10();
  result = sub_220BCCA30();
  qword_27CF77058 = v0;
  unk_27CF77060 = result;
  return result;
}

uint64_t sub_220B5E10C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_220B5E148(a1, a2, a3);
  sub_220BCC9E0();
  return v4;
}

unint64_t sub_220B5E148(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CF77068;
  if (!qword_27CF77068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF77068);
  }

  return result;
}

uint64_t type metadata accessor for ItemListView(uint64_t a1)
{
  result = qword_27CF77078;
  if (!qword_27CF77078)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_220B5E220(uint64_t a1)
{
  sub_220B5E340(319);
  if (v1 <= 0x3F)
  {
    sub_220B5E398(319, &qword_27CF77090, &type metadata for ListAnswerViewModel.ListStyle, MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_220B5E398(319, &qword_27CF77098, MEMORY[0x277D85048], MEMORY[0x277CE10B8]);
      if (v3 <= 0x3F)
      {
        sub_220B5E398(319, &qword_27CF77010, MEMORY[0x277CE0BD8], MEMORY[0x277D83940]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_220B5E340(uint64_t a1)
{
  if (!qword_27CF77088)
  {
    sub_220BCC830();
    v1 = sub_220BCC600();
    if (!v2)
    {
      atomic_store(v1, &qword_27CF77088);
    }
  }
}

void sub_220B5E398(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_220B5E40C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_220B5AB68(a1, a2, a3);

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

void *sub_220B5E470(void *result)
{
  v1 = result[2];
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v3 = 0;
    v4 = 0;
    v5 = MEMORY[0x277D84F90] + 32;
    v6 = result + 7;
    v24 = result[2];
    while (1)
    {
      v8 = *(v6 - 3);
      v7 = *(v6 - 2);
      v9 = *(v6 - 8);
      v10 = *v6;
      if (v4)
      {
        sub_220B5E890(*(v6 - 3), *(v6 - 2), *(v6 - 8));

        goto LABEL_20;
      }

      v11 = v2[3];
      if (((v11 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_29;
      }

      v25 = *(v6 - 3);
      v12 = v11 & 0xFFFFFFFFFFFFFFFELL;
      if (v12 <= 1)
      {
        v13 = 1;
      }

      else
      {
        v13 = v12;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF770E8, &qword_220BD22A0);
      v14 = swift_allocObject();
      v15 = (_swift_stdlib_malloc_size(v14) - 32) / 40;
      v14[2] = v13;
      v14[3] = 2 * v15;
      v16 = v2[2];
      v17 = v2;
      v18 = v2[3] >> 1;
      v5 = &v14[5 * v18 + 4];
      v4 = (v15 & 0x7FFFFFFFFFFFFFFFLL) - v18;
      if (!v16)
      {
        sub_220B5E890(v25, v7, v9);

        v2 = v14;
        v8 = v25;
        v1 = v24;
        goto LABEL_20;
      }

      if (v14 < v17 || v14 + 4 >= &v17[5 * v18 + 4])
      {
        sub_220B5E890(v25, v7, v9);
      }

      else
      {
        sub_220B5E890(v25, v7, v9);
        if (v14 == v17)
        {
          goto LABEL_19;
        }
      }

      memmove(v14 + 4, v17 + 4, 40 * v18);
LABEL_19:

      v17[2] = 0;

      v2 = v14;
      v1 = v24;
      v8 = v25;
LABEL_20:
      v20 = __OFSUB__(v4--, 1);
      if (v20)
      {
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
        return result;
      }

      *v5 = v3;
      *(v5 + 8) = v8;
      *(v5 + 16) = v7;
      *(v5 + 24) = v9;
      *(v5 + 32) = v10;
      v5 += 40;
      v6 += 4;
      if (v1 == ++v3)
      {
        goto LABEL_24;
      }
    }
  }

  v4 = 0;
LABEL_24:
  v21 = v2[3];
  if (v21 >= 2)
  {
    v22 = v21 >> 1;
    v20 = __OFSUB__(v22, v4);
    v23 = v22 - v4;
    if (v20)
    {
      goto LABEL_30;
    }

    v2[2] = v23;
  }

  return v2;
}

uint64_t sub_220B5E6A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ItemListView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220B5E70C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ItemListView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 sub_220B5E770@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, __n128 *a6@<X8>)
{
  v13 = *(type metadata accessor for ItemListView(0) - 8);
  v17.n128_u64[0] = 0;
  v17.n128_u8[8] = 1;
  sub_220B5D9C4(v6 + ((*(v13 + 80) + 16) & ~*(v13 + 80)), a1, a2, a3, a4 & 1, a5, v18);
  v14 = v18[2];
  a6[2] = v18[1];
  a6[3] = v14;
  a6[4] = v19[0];
  *(a6 + 74) = *(v19 + 10);
  result = v17;
  v16 = v18[0];
  *a6 = v17;
  a6[1] = v16;
  return result;
}

uint64_t sub_220B5E890(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_220B5E8A0(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_220B5E890(a1, a2, a3 & 1);
}

uint64_t sub_220B5E8DC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_220B5E8EC(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_220B5E8DC(a1, a2, a3 & 1);
}

unint64_t sub_220B5E928(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CF770D8;
  if (!qword_27CF770D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF770D8);
  }

  return result;
}

char *sub_220B5E97C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = v1;
  sub_220B5F0DC(v2, v3);
  if (sub_220BCC5D0())
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  v6 = objc_allocWithZone(type metadata accessor for _PlayerView());
  return sub_220B5EB84(v1, v5);
}

void sub_220B5E9EC()
{
  v1 = *v0;
  v2 = v1;
  sub_220B5F220(v1);
}

uint64_t sub_220B5EA94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_220B5F320(a1, a2, a3);

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_220B5EAF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_220B5F320(a1, a2, a3);

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_220B5EB5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_220B5F320(a1, a2, a3);
  sub_220BCCBF0();
  __break(1u);
}

char *sub_220B5EB84(void *a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC6TipsUI11_PlayerView_player] = 0;
  v11.receiver = v2;
  v11.super_class = type metadata accessor for _PlayerView();
  v5 = objc_msgSendSuper2(&v11, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v6 = *&v5[OBJC_IVAR____TtC6TipsUI11_PlayerView_player];
  *&v5[OBJC_IVAR____TtC6TipsUI11_PlayerView_player] = a1;
  v7 = v5;
  v8 = a1;

  [v7 setContentMode_];
  v9 = [objc_opt_self() clearColor];
  [v7 setBackgroundColor_];

  return v7;
}

id _PlayerView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id _PlayerView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _PlayerView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_220B5EE34()
{
  result = qword_2812C0938;
  if (!qword_2812C0938)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2812C0938);
  }

  return result;
}

Swift::Void __swiftcall _PlayerView.layoutSubviews()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _PlayerView();
  objc_msgSendSuper2(&v2, sel_layoutSubviews);
  v1 = [v0 layer];
  [v0 bounds];
  [v1 setBounds_];
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_220B5EFB8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 17))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_220B5F014(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_220B5F088(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2812C0BF0;
  if (!qword_2812C0BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812C0BF0);
  }

  return result;
}

uint64_t sub_220B5F0DC(uint64_t a1, char a2)
{
  v4 = sub_220BCC9D0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((a2 & 1) == 0)
  {

    sub_220BCDDC0();
    v8 = sub_220BCCD50();
    sub_220BCC3C0();

    sub_220BCC9C0();
    swift_getAtKeyPath();
    sub_220B4889C(a1, 0);
    (*(v5 + 8))(v7, v4);
    LOBYTE(a1) = v10[15];
  }

  return a1 & 1;
}

void sub_220B5F220(void *a1)
{
  v2 = OBJC_IVAR____TtC6TipsUI11_PlayerView_player;
  v3 = *&v1[OBJC_IVAR____TtC6TipsUI11_PlayerView_player];
  *&v1[OBJC_IVAR____TtC6TipsUI11_PlayerView_player] = a1;
  v4 = a1;

  v5 = [v1 layer];
  objc_opt_self();
  v6 = swift_dynamicCastObjCClassUnconditional();
  [v6 setPlayer_];
  v7 = [v1 contentMode];
  if (v7 > 2)
  {
    v8 = MEMORY[0x277CE5DD0];
  }

  else
  {
    v8 = qword_278451690[v7];
  }

  v9 = *v8;
  [v6 setVideoGravity_];
}

unint64_t sub_220B5F320(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2812C0BF8;
  if (!qword_2812C0BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812C0BF8);
  }

  return result;
}

uint64_t SearchResultsViewModel.thumbnailAssetConfiguration(for:userInterfaceStyle:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76C90, &qword_220BD1810);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v33 - v10;
  v12 = [a1 fullContentAssets];
  v13 = [a1 language];
  if (!v13)
  {
    sub_220BCDBA0();
    v13 = sub_220BCDB70();
  }

  v14 = [a1 assetFileInfoManager];
  v15 = [objc_allocWithZone(MEMORY[0x277D716B0]) initWithAssets:v12 language:v13 userInterfaceStyle:a2 assetFileInfoManager:v14];

  v16 = objc_opt_self();
  v17 = v15;
  v18 = [v16 assetPathFromAssetConfiguration:v17 type:2];
  if (v18)
  {
    v19 = v18;
    sub_220BCDBA0();

    sub_220BCBF40();
  }

  else
  {

    v20 = sub_220BCBF80();
    (*(*(v20 - 8) + 56))(v11, 1, 1, v20);
  }

  v21 = [v17 cacheIdentifierForType_];
  if (v21)
  {
    v22 = v21;
    v23 = sub_220BCDBA0();
    v25 = v24;
  }

  else
  {
    v23 = 0;
    v25 = 0;
  }

  if (qword_2812C1420 != -1)
  {
    swift_once();
  }

  v26 = [qword_2812C1428 assetSizes];
  if (v26)
  {
    v27 = v26;
    v28 = [v26 thumbnail];

    [v28 heightToWidthRatioForViewMode_];
    v30 = v29;
  }

  else
  {
    v30 = 1.0;
  }

  sub_220B58ECC(v11, v9);
  *a3 = v23;
  a3[1] = v25;
  v31 = type metadata accessor for SearchResultsViewModel.AssetConfiguration(0);
  result = sub_220B58ECC(v9, a3 + *(v31 + 20));
  *(a3 + *(v31 + 24)) = v30;
  return result;
}

uint64_t SearchResultsViewModel.AssetConfiguration.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SearchResultsViewModel.AssetConfiguration.identifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t SearchResultsViewModel.AssetConfiguration.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SearchResultsViewModel.AssetConfiguration(0) + 20);

  return sub_220B57DC0(v3, a1);
}

uint64_t SearchResultsViewModel.AssetConfiguration.url.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for SearchResultsViewModel.AssetConfiguration(0) + 20);

  return sub_220B55518(a1, v3);
}

uint64_t SearchResultsViewModel.AssetConfiguration.heightToWidthRatio.setter(double a1)
{
  result = type metadata accessor for SearchResultsViewModel.AssetConfiguration(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

id SearchResultsViewModel.title(for:)(void *a1)
{
  result = [a1 fullContent];
  if (result)
  {
    v2 = result;
    v3 = [result title];

    if (v3)
    {
      v4 = sub_220BCDBA0();

      return v4;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t SearchResultsViewModel.assetsBaseURL(for:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [a1 fullContentAssets];
  v4 = [v3 baseURL];

  if (v4)
  {
    sub_220BCBF30();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_220BCBF80();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

uint64_t type metadata accessor for SearchResultsViewModel.AssetConfiguration(uint64_t a1)
{
  result = qword_27CF77108;
  if (!qword_27CF77108)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t _s6TipsUI22SearchResultsViewModelC11bodyContent3forSaySDySSypGGSo6TPSTipC_tF_0(void *a1)
{
  v2 = [a1 bodyContent];
  if (v2)
  {

    v3 = [a1 bodyContent];
    if (!v3 || (v4 = v3, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77048, &unk_220BD20A0), v5 = sub_220BCDC70(), v4, v6 = sub_220B79D34(v5), , !v6))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76DD0, &unk_220BD2490);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_220BD1BA0;
      *(v6 + 32) = sub_220B4F2C4(MEMORY[0x277D84F90]);
    }

    return v6;
  }

  else
  {
    v8 = objc_opt_self();
    v9 = [a1 bodyText];
    v10 = [v8 textContentWithText_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77040, &qword_220BD2098);
    v11 = sub_220BCDC70();

    v12 = sub_220B79E74(v11);

    return v12;
  }
}

void sub_220B5FBF0(uint64_t a1)
{
  sub_220B5FC7C();
  if (v1 <= 0x3F)
  {
    sub_220B5D4C8(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_220B5FC7C()
{
  if (!qword_27CF77118)
  {
    v0 = sub_220BCDF10();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF77118);
    }
  }
}

id ContentMessageViewController.__allocating_init(contentMessageViewModel:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR___ContentMessageViewController_contentMessageViewModel] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_initWithNibName_bundle_, 0, 0);
}

id ContentMessageViewController.init(contentMessageViewModel:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___ContentMessageViewController_contentMessageViewModel] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ContentMessageViewController();
  return objc_msgSendSuper2(&v3, sel_initWithNibName_bundle_, 0, 0);
}

void sub_220B5FEA8()
{
  v1 = v0;
  v39.receiver = v0;
  v39.super_class = type metadata accessor for ContentMessageViewController();
  objc_msgSendSuper2(&v39, sel_loadView);
  v2 = *&v0[OBJC_IVAR___ContentMessageViewController_contentMessageViewModel];
  v38 = v2;
  v3 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77128, &unk_220BD24B0));
  v4 = v2;
  v5 = sub_220BCCB50();
  [v1 addChildViewController_];
  v6 = [v1 view];
  if (!v6)
  {
    __break(1u);
    goto LABEL_14;
  }

  v7 = v6;
  v8 = [v5 view];
  if (!v8)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v9 = v8;
  [v7 addSubview_];

  v10 = [v5 view];
  if (!v10)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  [v10 setTranslatesAutoresizingMaskIntoConstraints_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF77E60, &unk_220BD4CA0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_220BD24A0;
  v12 = [v5 view];

  if (!v12)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v13 = [v12 topAnchor];

  v14 = [v1 view];
  if (!v14)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v15 = v14;
  v16 = [v14 topAnchor];

  v17 = [v13 constraintEqualToAnchor_];
  *(v11 + 32) = v17;
  v18 = [v5 view];

  if (!v18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v19 = [v18 bottomAnchor];

  v20 = [v1 view];
  if (!v20)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v21 = v20;
  v22 = [v20 bottomAnchor];

  v23 = [v19 constraintEqualToAnchor_];
  *(v11 + 40) = v23;
  v24 = [v5 view];

  if (!v24)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v25 = [v24 leadingAnchor];

  v26 = [v1 view];
  if (!v26)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v27 = v26;
  v28 = [v26 leadingAnchor];

  v29 = [v25 constraintEqualToAnchor_];
  *(v11 + 48) = v29;
  v30 = [v5 view];

  if (!v30)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v31 = [v30 trailingAnchor];

  v32 = [v1 view];
  if (v32)
  {
    v33 = v32;
    v34 = objc_opt_self();
    v35 = [v33 trailingAnchor];

    v36 = [v31 constraintEqualToAnchor_];
    *(v11 + 56) = v36;
    sub_220B60340();
    v37 = sub_220BCDC60();

    [v34 activateConstraints_];

    [v5 didMoveToParentViewController_];
    return;
  }

LABEL_23:
  __break(1u);
}

unint64_t sub_220B60340()
{
  result = qword_27CF77130;
  if (!qword_27CF77130)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CF77130);
  }

  return result;
}

id ContentMessageViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ContentMessageViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_220B60444(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_220B56F4C(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_220B7C4A8(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_220B7D194();
        v14 = v16;
      }

      result = sub_220B865BC(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

uint64_t sub_220B60584()
{
  v1 = OBJC_IVAR___TPSUIAppController_viewNavigationCollapsed;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_220B6061C(char a1)
{
  v3 = OBJC_IVAR___TPSUIAppController_viewNavigationCollapsed;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id TPSUIAppController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

char *TPSUIAppController.init()()
{
  v1 = sub_220BCDE00();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_220BCDDD0();
  MEMORY[0x28223BE20](v5);
  v6 = sub_220BCD580();
  MEMORY[0x28223BE20](v6 - 8);
  v0[OBJC_IVAR___TPSUIAppController_viewNavigationCollapsed] = 0;
  *&v0[OBJC_IVAR___TPSUIAppController_syncQueue] = 0;
  *&v0[OBJC_IVAR___TPSUIAppController_attributedStringCache] = 0;
  *&v0[OBJC_IVAR___TPSUIAppController_footnoteAttributedStringCache] = 0;
  *&v0[OBJC_IVAR___TPSUIAppController_availabilityMessageAttributedStringCache] = 0;
  v7 = type metadata accessor for TPSUIAppController();
  v33.receiver = v0;
  v33.super_class = v7;
  v8 = objc_msgSendSuper2(&v33, sel_init);
  v9 = [objc_opt_self() sharedInstance];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 tipsAccessAllowed];

    if (v11)
    {
      v12 = sub_220B60CE8();
      v30 = "e. Use init(error:) instead.";
      v31 = v12;
      sub_220BCD570();
      aBlock[0] = MEMORY[0x277D84F90];
      sub_220B628B4(&qword_2812C0908, MEMORY[0x277D85230], MEMORY[0x277D85238]);
      v29 = v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77160, &unk_220BD2500);
      sub_220B628FC(&qword_2812C0948, &qword_27CF77160, &unk_220BD2500);
      sub_220BCDF50();
      (*(v2 + 104))(v4, *MEMORY[0x277D85260], v29);
      v13 = sub_220BCDE30();
      v14 = *&v8[OBJC_IVAR___TPSUIAppController_syncQueue];
      *&v8[OBJC_IVAR___TPSUIAppController_syncQueue] = v13;

      v15 = MEMORY[0x277D84F90];
      v16 = sub_220B4F55C(MEMORY[0x277D84F90]);
      v17 = OBJC_IVAR___TPSUIAppController_attributedStringCache;
      swift_beginAccess();
      *&v8[v17] = v16;

      v18 = sub_220B4F55C(v15);
      v19 = OBJC_IVAR___TPSUIAppController_footnoteAttributedStringCache;
      swift_beginAccess();
      *&v8[v19] = v18;

      v20 = sub_220B4F55C(v15);
      v21 = OBJC_IVAR___TPSUIAppController_availabilityMessageAttributedStringCache;
      swift_beginAccess();
      *&v8[v21] = v20;

      v22 = [objc_opt_self() defaultCenter];
      v23 = *MEMORY[0x277D76810];
      v24 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = sub_220B6288C;
      aBlock[5] = v24;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_220B61044;
      aBlock[3] = &block_descriptor_1;
      v25 = _Block_copy(aBlock);

      v26 = [v22 addObserverForName:v23 object:0 queue:0 usingBlock:v25];
      _Block_release(v25);
      swift_unknownObjectRelease();
    }
  }

  return v8;
}

unint64_t sub_220B60CE8()
{
  result = qword_2812C0900;
  if (!qword_2812C0900)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2812C0900);
  }

  return result;
}

void sub_220B60D34(uint64_t a1, uint64_t a2)
{
  v2 = sub_220BCD550();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_220BCD580();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = *&Strong[OBJC_IVAR___TPSUIAppController_syncQueue];
    if (v12)
    {
      v13 = swift_allocObject();
      *(v13 + 16) = v11;
      aBlock[4] = sub_220B62E60;
      aBlock[5] = v13;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_220B61C68;
      aBlock[3] = &block_descriptor_78;
      v18 = _Block_copy(aBlock);
      v14 = v12;
      v19 = v6;
      v15 = v14;
      v20 = v11;
      sub_220BCD570();
      v21 = MEMORY[0x277D84F90];
      sub_220B628B4(&qword_2812C0968, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77168, &qword_220BD4710);
      sub_220B628FC(&qword_2812C0950, &qword_27CF77168, &qword_220BD4710);
      sub_220BCDF50();
      v16 = v18;
      MEMORY[0x223D92BC0](0, v9, v5, v18);
      _Block_release(v16);

      (*(v3 + 8))(v5, v2);
      (*(v7 + 8))(v9, v19);
    }

    else
    {
    }
  }
}

uint64_t sub_220B61044(uint64_t a1, uint64_t a2)
{
  v3 = sub_220BCBE80();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  sub_220BCBE70();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

id sub_220B6115C()
{
  v1 = sub_220BCD550();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_220BCD580();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TPSUIAppController();
  v22.receiver = v0;
  v22.super_class = v9;
  result = objc_msgSendSuper2(&v22, sel_contentWillUpdate);
  v11 = *&v0[OBJC_IVAR___TPSUIAppController_syncQueue];
  if (v11)
  {
    v12 = swift_allocObject();
    *(v12 + 16) = v0;
    aBlock[4] = sub_220B628AC;
    aBlock[5] = v12;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_220B61C68;
    aBlock[3] = &block_descriptor_6;
    v18 = _Block_copy(aBlock);
    v19 = v5;
    v13 = v11;
    v14 = v0;
    sub_220BCD570();
    v20 = MEMORY[0x277D84F90];
    sub_220B628B4(&qword_2812C0968, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    v15 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77168, &qword_220BD4710);
    sub_220B628FC(&qword_2812C0950, &qword_27CF77168, &qword_220BD4710);
    sub_220BCDF50();
    v16 = v18;
    MEMORY[0x223D92BC0](0, v8, v15, v18);
    _Block_release(v16);

    (*(v2 + 8))(v15, v1);
    (*(v6 + 8))(v8, v19);
  }

  return result;
}

uint64_t sub_220B6155C(uint64_t a1, uint64_t a2)
{
  v16 = 0;
  v3 = *&v2[OBJC_IVAR___TPSUIAppController_syncQueue];
  if (!v3)
  {
    v14 = 0;
    v13 = 0;
    v6 = 0;
    goto LABEL_5;
  }

  v6 = swift_allocObject();
  v6[2] = &v16;
  v6[3] = v2;
  v6[4] = a1;
  v6[5] = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_220B629F8;
  *(v7 + 24) = v6;
  aBlock[4] = sub_220B550BC;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_220B61738;
  aBlock[3] = &block_descriptor_15;
  v8 = _Block_copy(aBlock);
  v9 = v3;
  v10 = v2;

  dispatch_sync(v9, v8);

  _Block_release(v8);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v13 = sub_220B629F8;
    v14 = v16;
LABEL_5:
    sub_220B3A128(v13, v6);
    return v14;
  }

  __break(1u);
  return result;
}

uint64_t sub_220B61778(uint64_t a1, uint64_t a2)
{
  v16 = 0;
  v3 = *&v2[OBJC_IVAR___TPSUIAppController_syncQueue];
  if (!v3)
  {
    v14 = 0;
    v13 = 0;
    v6 = 0;
    goto LABEL_5;
  }

  v6 = swift_allocObject();
  v6[2] = &v16;
  v6[3] = v2;
  v6[4] = a1;
  v6[5] = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_220B62A20;
  *(v7 + 24) = v6;
  aBlock[4] = sub_220B62E3C;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_220B61738;
  aBlock[3] = &block_descriptor_25;
  v8 = _Block_copy(aBlock);
  v9 = v3;
  v10 = v2;

  dispatch_sync(v9, v8);

  _Block_release(v8);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v13 = sub_220B62A20;
    v14 = v16;
LABEL_5:
    sub_220B3A128(v13, v6);
    return v14;
  }

  __break(1u);
  return result;
}

uint64_t sub_220B61944(uint64_t a1, uint64_t a2)
{
  v16 = 0;
  v3 = *&v2[OBJC_IVAR___TPSUIAppController_syncQueue];
  if (!v3)
  {
    v14 = 0;
    v13 = 0;
    v6 = 0;
    goto LABEL_5;
  }

  v6 = swift_allocObject();
  v6[2] = &v16;
  v6[3] = v2;
  v6[4] = a1;
  v6[5] = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_220B62A88;
  *(v7 + 24) = v6;
  aBlock[4] = sub_220B62E3C;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_220B61738;
  aBlock[3] = &block_descriptor_35;
  v8 = _Block_copy(aBlock);
  v9 = v3;
  v10 = v2;

  dispatch_sync(v9, v8);

  _Block_release(v8);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v13 = sub_220B62A88;
    v14 = v16;
LABEL_5:
    sub_220B3A128(v13, v6);
    return v14;
  }

  __break(1u);
  return result;
}

void sub_220B61AF8(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v9 = *a5;
  swift_beginAccess();
  v10 = *(a2 + v9);
  if (!v10 || !*(v10 + 16))
  {
    goto LABEL_6;
  }

  v11 = sub_220B7C4A8(a3, a4);
  if ((v12 & 1) == 0)
  {

LABEL_6:
    v13 = 0;
    goto LABEL_7;
  }

  v13 = *(*(v10 + 56) + 8 * v11);

LABEL_7:
  v14 = *a1;
  *a1 = v13;
}

id sub_220B61BC8(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = sub_220BCDBA0();
  v8 = v7;
  v9 = a1;
  v10 = a4(v6, v8);

  return v10;
}

uint64_t sub_220B61C68(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_220B61CEC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26 = a5;
  v27 = a6;
  v10 = sub_220BCD550();
  v28 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_220BCD580();
  v14 = *(v13 - 8);
  result = MEMORY[0x28223BE20](v13);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *&v6[OBJC_IVAR___TPSUIAppController_syncQueue];
  if (v18)
  {
    v25 = result;
    v19 = swift_allocObject();
    v19[2] = v6;
    v19[3] = a2;
    v19[4] = a3;
    v19[5] = a1;
    aBlock[4] = v26;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_220B61C68;
    aBlock[3] = v27;
    v20 = _Block_copy(aBlock);
    v21 = a1;
    v22 = v18;
    v23 = v6;

    sub_220BCD570();
    v29 = MEMORY[0x277D84F90];
    sub_220B628B4(&qword_2812C0968, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77168, &qword_220BD4710);
    sub_220B628FC(&qword_2812C0950, &qword_27CF77168, &qword_220BD4710);
    sub_220BCDF50();
    MEMORY[0x223D92BC0](0, v17, v12, v20);
    _Block_release(v20);

    (*(v28 + 8))(v12, v10);
    (*(v14 + 8))(v17, v25);
  }

  return result;
}

uint64_t sub_220B62008(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(_BYTE *))
{
  v8 = a5(v12);
  if (*v9)
  {
    v10 = a4;

    sub_220B60444(a4, a2, a3);
  }

  return v8(v12, 0);
}

uint64_t sub_220B620B4(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void *, uint64_t, uint64_t))
{
  v8 = sub_220BCDBA0();
  v10 = v9;
  v11 = a3;
  v12 = a1;
  a5(a3, v8, v10);
}

uint64_t sub_220B62140()
{
  v1 = sub_220BCD550();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_220BCD580();
  result = MEMORY[0x28223BE20](v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *&v0[OBJC_IVAR___TPSUIAppController_syncQueue];
  if (v10)
  {
    v16 = v7;
    v17 = result;
    v11 = swift_allocObject();
    *(v11 + 16) = v0;
    aBlock[4] = sub_220B62E60;
    aBlock[5] = v11;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_220B61C68;
    aBlock[3] = &block_descriptor_60;
    v12 = _Block_copy(aBlock);
    v13 = v10;
    v14 = v0;
    sub_220BCD570();
    v18 = MEMORY[0x277D84F90];
    sub_220B628B4(&qword_2812C0968, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77168, &qword_220BD4710);
    sub_220B628FC(&qword_2812C0950, &qword_27CF77168, &qword_220BD4710);
    sub_220BCDF50();
    MEMORY[0x223D92BC0](0, v9, v4, v12);
    _Block_release(v12);

    (*(v2 + 8))(v4, v1);
    (*(v16 + 8))(v9, v17);
  }

  return result;
}

uint64_t sub_220B62408()
{
  v1 = sub_220B606CC(v11);
  v2 = MEMORY[0x277D84F98];
  if (*v0)
  {
    v3 = v0;

    *v3 = v2;
  }

  (v1)(v11, 0);
  v5 = sub_220B6072C(v11);
  if (*v4)
  {
    v6 = v4;

    *v6 = v2;
  }

  (v5)(v11, 0);
  v8 = sub_220B6078C(v11);
  if (*v7)
  {
    v9 = v7;

    *v9 = v2;
  }

  return (v8)(v11, 0);
}

id TPSUIAppController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TPSUIAppController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_220B625D8()
{
  result = [objc_allocWithZone(type metadata accessor for TPSUIAppController()) init];
  qword_2812C1428 = result;
  return result;
}

id static TPSUIAppController.shared.getter()
{
  if (qword_2812C1420 != -1)
  {
    swift_once();
  }

  v1 = qword_2812C1428;

  return v1;
}

id static TPSUIAppController.sharedInstance()()
{
  if (qword_2812C1420 != -1)
  {
    swift_once();
  }

  v0 = swift_dynamicCastClassUnconditional();

  return v0;
}

void TPSUIAppController.overrideWidget(with:)(uint64_t a1)
{
  type metadata accessor for TipsContentModel(0);
  v3 = static TipsContentModel.shared()();
  if ([objc_opt_self() isInternalBuild])
  {
    v2 = sub_220BA0840();
    [v2 attemptWidgetUpdateWith_];
  }
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_220B628B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_220B628FC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

id sub_220B62950(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = 0;
  if (a1)
  {
    if (a3)
    {
      v10 = a1;
      v11 = sub_220BCDB70();
      v12 = [v5 assetConfigurationForAssets:v10 language:v11 userInterfaceStyle:a4 != 1 assetFileInfoManager:a5];

      return v12;
    }
  }

  return result;
}

uint64_t objectdestroy_8Tm()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t objectdestroy_37Tm()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t View.onAttributionAction(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  sub_220BCD0C0();
}

double sub_220B62F30@<D0>(uint64_t a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_220B633AC(a2, a3, a4);
  sub_220BCC9E0();
  result = v9;
  *a1 = v6;
  *(a1 + 16) = v7;
  *(a1 + 24) = v8;
  *(a1 + 32) = v9;
  return result;
}

uint64_t sub_220B62F98(uint64_t *a1)
{
  v1 = sub_220B3A13C(*a1, a1[1]);
  sub_220B633AC(v1, v2, v3);

  return sub_220BCC9F0();
}

uint64_t sub_220B63018(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v7 = a1[1];

  result = sub_220B3A128(v6, v7);
  *a1 = a2;
  a1[1] = a3;
  return result;
}

uint64_t sub_220B6306C(uint64_t *a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *a1;
  v6 = a1[1];

  result = sub_220B3A128(v5, v6);
  *a1 = v4;
  a1[1] = v3;
  return result;
}

uint64_t View.showsPlaceholder(_:)(char a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  *(swift_allocObject() + 16) = a1;
  sub_220BCD0C0();
}

uint64_t View.placeholderGradientColors(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  *(swift_allocObject() + 16) = a1;

  sub_220BCD0C0();
}

uint64_t sub_220B63240(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(a1 + 24) = v3;
  return result;
}

uint64_t View.placeholderTimeoutInSeconds(_:)(uint64_t a1, uint64_t a2, double a3)
{
  swift_getKeyPath();
  *(swift_allocObject() + 16) = a3;
  sub_220BCD0C0();
}

double sub_220B6333C(uint64_t a1)
{
  result = *(v1 + 16);
  *(a1 + 32) = result;
  return result;
}

unint64_t sub_220B63348()
{
  result = qword_27CF77178;
  if (!qword_27CF77178)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF77170, &unk_220BD5710);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF77178);
  }

  return result;
}

unint64_t sub_220B633AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CF77180;
  if (!qword_27CF77180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF77180);
  }

  return result;
}

uint64_t sub_220B63400@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_220BCC9D0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF771B8, &unk_220BD25C0);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_220B462DC(v2, &v14 - v9, &qword_27CF771B8, &unk_220BD25C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_220BCC5A0();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_220BCDDC0();
    v13 = sub_220BCCD50();
    sub_220BCC3C0();

    sub_220BCC9C0();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_220B63600@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF771B8, &unk_220BD25C0);
  swift_storeEnumTagMultiPayload();
  v6 = type metadata accessor for ArticleSearchResultItemView(0);
  sub_220BCCF00();
  v7 = v6[10];
  sub_220BCD2E0();
  *(a3 + v7) = v48;
  v8 = v6[11];
  sub_220BCD2E0();
  *(a3 + v8) = v48;
  v9 = a3 + v6[12];
  type metadata accessor for CGSize(0);
  sub_220BCD2E0();
  *v9 = v48;
  *(v9 + 2) = v49;
  v10 = (a3 + v6[5]);
  type metadata accessor for SearchResultsViewModel(0);
  sub_220B6588C(&qword_2812C0F98, type metadata accessor for SearchResultsViewModel, &protocol conformance descriptor for SearchResultsViewModel);
  v46 = a1;
  *v10 = sub_220BCC7A0();
  v10[1] = v11;
  *(a3 + v6[6]) = a2;
  v12 = [swift_unknownObjectRetain() title];
  v47 = v6;
  v45 = a2;
  if (v12)
  {
    v15 = v12;
    sub_220BCDBA0();
  }

  sub_220B43454(v12, v13, v14);
  v16 = sub_220BCCF80();
  v18 = v17;
  v20 = v19;
  if (qword_27CF768F0 != -1)
  {
    swift_once();
  }

  v21 = sub_220BCCF50();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  sub_220B5E8DC(v16, v18, v20 & 1);

  v28 = a3 + v47[8];
  *v28 = v21;
  *(v28 + 1) = v23;
  v28[16] = v25 & 1;
  *(v28 + 3) = v27;
  v29 = [v45 body];
  if (v29)
  {
    v30 = v29;
    sub_220BCDBA0();
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
  }

  sub_220BCDF20();

  v31 = sub_220BCCF80();
  v33 = v32;
  v35 = v34;
  if (qword_27CF768F8 != -1)
  {
    swift_once();
  }

  v36 = sub_220BCCF50();
  v38 = v37;
  v40 = v39;
  v42 = v41;

  sub_220B5E8DC(v31, v33, v35 & 1);

  v44 = a3 + v47[9];
  *v44 = v36;
  *(v44 + 1) = v38;
  v44[16] = v40 & 1;
  *(v44 + 3) = v42;
  return result;
}

__n128 sub_220B63A04@<Q0>(uint64_t a1@<X8>)
{
  v50 = a1;
  v44 = sub_220BCC5A0();
  v47 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v41 = v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for ArticleSearchResultItemView(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v38[1] = v5;
  v6 = v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77208, &qword_220BD2650);
  v8 = *(v7 - 8);
  v45 = v7;
  v46 = v8;
  MEMORY[0x28223BE20](v7);
  v42 = v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77268, &qword_220BD2688);
  v48 = *(v10 - 8);
  v49 = v10;
  MEMORY[0x28223BE20](v10);
  v43 = v38 - v11;
  v12 = sub_220BCCB20();
  v39 = v1;
  v40 = v12;
  v53 = 0;
  sub_220B643F0(v1, v105);
  v62 = v105[8];
  v63 = v105[9];
  v64 = v105[10];
  v58 = v105[4];
  v59 = v105[5];
  v60 = v105[6];
  v61 = v105[7];
  v54 = v105[0];
  v55 = v105[1];
  v56 = v105[2];
  v57 = v105[3];
  v66[8] = v105[8];
  v66[9] = v105[9];
  v66[10] = v105[10];
  v66[4] = v105[4];
  v66[5] = v105[5];
  v66[6] = v105[6];
  v66[7] = v105[7];
  v66[0] = v105[0];
  v66[1] = v105[1];
  v65 = *&v105[11];
  v67 = *&v105[11];
  v66[2] = v105[2];
  v66[3] = v105[3];
  sub_220B462DC(&v54, v51, &qword_27CF77270, &unk_220BD2690);
  sub_220B463F4(v66, &qword_27CF77270, &unk_220BD2690);
  *(&v52[8] + 7) = v62;
  *(&v52[9] + 7) = v63;
  *(&v52[10] + 7) = v64;
  *(&v52[4] + 7) = v58;
  *(&v52[5] + 7) = v59;
  *(&v52[6] + 7) = v60;
  *(&v52[7] + 7) = v61;
  *(v52 + 7) = v54;
  *(&v52[1] + 7) = v55;
  *(&v52[2] + 7) = v56;
  *(&v52[11] + 7) = v65;
  *(&v52[3] + 7) = v57;
  v13 = v53;
  v38[0] = v6;
  sub_220B658D4(v1, v6);
  v14 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v15 = swift_allocObject();
  sub_220B65938(v6, v15 + v14);
  v16 = sub_220BCD460();
  v18 = v17;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_220B6599C;
  *(v19 + 24) = v15;
  *&v68 = v40;
  *(&v68 + 1) = 0x4008000000000000;
  LOBYTE(v69[0]) = v13;
  *(&v69[8] + 1) = v52[8];
  *(&v69[9] + 1) = v52[9];
  *(&v69[10] + 1) = v52[10];
  v69[11] = *(&v52[10] + 15);
  *(&v69[4] + 1) = v52[4];
  *(&v69[5] + 1) = v52[5];
  *(&v69[6] + 1) = v52[6];
  *(&v69[7] + 1) = v52[7];
  *(v69 + 1) = v52[0];
  *(&v69[1] + 1) = v52[1];
  *(&v69[2] + 1) = v52[2];
  *(&v69[3] + 1) = v52[3];
  v70 = sub_220B96260;
  v71 = 0;
  *&v72 = v16;
  *(&v72 + 1) = v18;
  v98 = v69[7];
  v99 = v69[8];
  v101 = v69[10];
  v100 = v69[9];
  v94 = v69[3];
  v95 = v69[4];
  v97 = v69[6];
  v96 = v69[5];
  v90 = v68;
  v91 = v69[0];
  v93 = v69[2];
  v92 = v69[1];
  v102 = *(&v52[10] + 15);
  v103 = sub_220B96260;
  v104 = v72;
  v83 = v52[8];
  v84 = v52[9];
  *v85 = v52[10];
  *&v85[15] = *(&v52[10] + 15);
  v79 = v52[4];
  v80 = v52[5];
  v81 = v52[6];
  v82 = v52[7];
  v75 = v52[0];
  v76 = v52[1];
  v77 = v52[2];
  v73[0] = v40;
  v73[1] = 0x4008000000000000;
  v74 = v13;
  v78 = v52[3];
  v86 = sub_220B96260;
  v87 = 0;
  v88 = v16;
  v89 = v18;
  sub_220B462DC(&v68, v105, &qword_27CF77238, &qword_220BD2668);
  sub_220B463F4(v73, &qword_27CF77238, &qword_220BD2668);
  v20 = v39;
  v21 = v38[0];
  sub_220B658D4(v39, v38[0]);
  v22 = swift_allocObject();
  sub_220B65938(v21, v22 + v14);
  v51[12] = v102;
  v51[13] = v103;
  v51[14] = v104;
  v51[8] = v98;
  v51[9] = v99;
  v51[10] = v100;
  v51[11] = v101;
  v51[4] = v94;
  v51[5] = v95;
  v51[6] = v96;
  v51[7] = v97;
  v51[0] = v90;
  v51[1] = v91;
  v51[2] = v92;
  v51[3] = v93;
  *&v51[15] = sub_220B65A14;
  *(&v51[15] + 1) = v19;
  *&v51[16] = sub_220B65A1C;
  *(&v51[16] + 1) = v22;
  v51[17] = 0uLL;
  v23 = v41;
  sub_220B63400(v41);
  sub_220B658D4(v20, v21);
  v24 = swift_allocObject();
  sub_220B65938(v21, v24 + v14);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77210, &qword_220BD2658);
  v26 = sub_220B65664();
  v27 = sub_220B6588C(&qword_27CF77260, MEMORY[0x277CDD6C8], MEMORY[0x277CDD6D0]);
  v28 = v42;
  v29 = v23;
  v30 = v44;
  sub_220BCD130();

  (*(v47 + 8))(v29, v30);
  memcpy(v105, v51, 0x120uLL);
  sub_220B463F4(v105, &qword_27CF77210, &qword_220BD2658);
  *&v51[0] = v25;
  *(&v51[0] + 1) = v30;
  *&v51[1] = v26;
  *(&v51[1] + 1) = v27;
  swift_getOpaqueTypeConformance2();
  v31 = v43;
  v32 = v45;
  sub_220BCD050();
  (*(v46 + 8))(v28, v32);
  sub_220BCD470();
  sub_220BCC880();
  v33 = v50;
  (*(v48 + 32))(v50, v31, v49);
  v34 = v33 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF771F8, &qword_220BD2648) + 36);
  v35 = v51[5];
  *(v34 + 64) = v51[4];
  *(v34 + 80) = v35;
  *(v34 + 96) = v51[6];
  v36 = v51[1];
  *v34 = v51[0];
  *(v34 + 16) = v36;
  result = v51[3];
  *(v34 + 32) = v51[2];
  *(v34 + 48) = result;
  return result;
}

uint64_t sub_220B6429C()
{
  v0 = sub_220BCCD40();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF771F8, &qword_220BD2648);
  MEMORY[0x28223BE20](v4);
  v6 = &v8 - v5;
  sub_220B63A04(&v8 - v5);
  sub_220BCCD30();
  sub_220B65508();
  sub_220BCD0B0();
  (*(v1 + 8))(v3, v0);
  return sub_220B351AC(v6);
}

uint64_t sub_220B643F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_220BCCE40();
  v56 = *(v4 - 8);
  v57 = v4;
  MEMORY[0x28223BE20](v4);
  v55 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ArticleSearchResultItemView(0);
  v7 = a1 + v6[8];
  v8 = *v7;
  v9 = *(v7 + 8);
  v10 = *(v7 + 16);
  v11 = *(v7 + 24);
  v99 = *(a1 + v6[10]);
  v69 = v9;
  v70 = v8;
  sub_220B5E890(v8, v9, v10);
  v71 = v11;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77290, &qword_220BD26B0);
  sub_220BCD2F0();
  *(&v67 + 1) = v81;
  *&v67 = swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_220BCC4C0();

  v12 = 0;
  if ((v99 & 1) == 0)
  {
    v12 = sub_220BCD1F0();
  }

  v66 = v12;
  KeyPath = swift_getKeyPath();
  v68 = v10;
  v114 = v10;
  v113 = 0;
  v13 = a1 + v6[9];
  v14 = *v13;
  v15 = *(v13 + 8);
  v16 = *(v13 + 16);
  v17 = *(v13 + 24);
  v99 = *(a1 + v6[11]);
  v64 = v17;

  v59 = v14;
  v63 = v15;
  sub_220B5E890(v14, v15, v16);
  sub_220BCD2F0();
  *(&v61 + 1) = v81;
  *&v61 = swift_getKeyPath();
  v18 = objc_opt_self();
  v19 = [v18 secondaryLabelColor];
  v58 = sub_220BCD150();
  v60 = swift_getKeyPath();
  v62 = v16;
  LOBYTE(v99) = v16;
  LOBYTE(v81) = 0;
  v20 = sub_220BBEDA4(*(a1 + v6[6]));
  if (v21)
  {
    *&v99 = v20;
    *(&v99 + 1) = v21;
    sub_220B43454(v20, v21, v22);
    v23 = sub_220BCCF80();
    v25 = v24;
    v27 = v26;
    v28 = [v18 tertiaryLabelColor];
    sub_220BCD150();
    v29 = sub_220BCCF20();
    v54 = v30;
    v32 = v31;

    sub_220B5E8DC(v23, v25, v27 & 1);

    sub_220BCCE60();
    v34 = v55;
    v33 = v56;
    v35 = v57;
    (*(v56 + 104))(v55, *MEMORY[0x277CE0A10], v57);
    sub_220BCCE50();

    (*(v33 + 8))(v34, v35);
    v57 = a2;
    v36 = v32;
    v37 = v54;
    v38 = sub_220BCCF50();
    v40 = v39;
    LOBYTE(v34) = v41;
    v43 = v42;

    v44 = v36 & 1;
    a2 = v57;
    sub_220B5E8DC(v29, v37, v44);

    v45 = v34 & 1;
    sub_220B5E890(v38, v40, v45);
  }

  else
  {
    v38 = 0;
    v40 = 0;
    v45 = 0;
    v43 = 0;
  }

  *&v81 = v70;
  *(&v81 + 1) = v69;
  LOBYTE(v82) = v68;
  *(&v82 + 1) = *v110;
  DWORD1(v82) = *&v110[3];
  *(&v82 + 1) = v71;
  v83 = v67;
  LOBYTE(v84[0]) = 0;
  *(v84 + 1) = *v109;
  DWORD1(v84[0]) = *&v109[3];
  *(&v84[0] + 1) = KeyPath;
  *&v84[1] = v66;
  WORD4(v84[1]) = 256;
  *(v75 + 10) = *(v84 + 10);
  v74 = v67;
  v75[0] = v84[0];
  v72 = v81;
  v73 = v82;
  v46 = v59;
  *&v85 = v59;
  *(&v85 + 1) = v63;
  LOBYTE(v86) = v62;
  DWORD1(v86) = *&v112[3];
  *(&v86 + 1) = *v112;
  *(&v86 + 1) = v64;
  v87 = v61;
  LOBYTE(v88) = 0;
  DWORD1(v88) = *&v111[3];
  *(&v88 + 1) = *v111;
  v47 = v58;
  *(&v88 + 1) = v60;
  v89 = v58;
  v80 = v58;
  v78 = v61;
  v79 = v88;
  v76 = v85;
  v77 = v86;
  sub_220B462DC(&v81, &v99, &qword_27CF77298, &qword_220BD2760);
  sub_220B462DC(&v85, &v99, &qword_27CF772A0, &qword_220BD2768);
  sub_220B65C50(v38, v40, v45, v43);
  sub_220B65C94(v38, v40, v45, v43);
  v48 = v78;
  *(a2 + 96) = v77;
  *(a2 + 112) = v48;
  *(a2 + 128) = v79;
  v49 = v80;
  v50 = v75[0];
  *(a2 + 32) = v74;
  *(a2 + 48) = v50;
  v51 = v76;
  *(a2 + 64) = v75[1];
  *(a2 + 80) = v51;
  v52 = v73;
  *a2 = v72;
  *(a2 + 16) = v52;
  *(a2 + 144) = v49;
  *(a2 + 152) = v38;
  *(a2 + 160) = v40;
  *(a2 + 168) = v45;
  *(a2 + 176) = v43;
  sub_220B65C94(v38, v40, v45, v43);
  v90[0] = v46;
  v90[1] = v63;
  v91 = v62;
  *v92 = *v112;
  *&v92[3] = *&v112[3];
  v93 = v64;
  v94 = v61;
  v95 = 0;
  *v96 = *v111;
  *&v96[3] = *&v111[3];
  v97 = v60;
  v98 = v47;
  sub_220B463F4(v90, &qword_27CF772A0, &qword_220BD2768);
  *&v99 = v70;
  *(&v99 + 1) = v69;
  v100 = v68;
  *v101 = *v110;
  *&v101[3] = *&v110[3];
  v102 = v71;
  v103 = v67;
  v104 = 0;
  *v105 = *v109;
  *&v105[3] = *&v109[3];
  v106 = KeyPath;
  v107 = v66;
  v108 = 256;
  return sub_220B463F4(&v99, &qword_27CF77298, &qword_220BD2760);
}

uint64_t sub_220B64A5C(uint64_t a1, double a2, double a3)
{
  type metadata accessor for ArticleSearchResultItemView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77278, &unk_220BD34B0);
  sub_220BCD300();
  sub_220BCD2F0();
  return sub_220B64B14(a2, a3);
}

uint64_t sub_220B64B14(double a1, double a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77280, &unk_220BD26A0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v31 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77288, qword_220BD34C0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v31 - v9;
  v11 = sub_220BCCEF0();
  v12 = *(v11 - 8);
  result = MEMORY[0x28223BE20](v11);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 != 0.0 || a2 != 0.0)
  {
    v37 = v12;
    v40 = result;
    v41 = type metadata accessor for ArticleSearchResultItemView(0);
    if (qword_27CF76900 != -1)
    {
      swift_once();
    }

    v35 = unk_27CF771A0;
    v36 = qword_27CF77198;
    v34 = qword_27CF771B0;
    v16 = sub_220BCCEC0();
    v17 = *(v16 - 8);
    v38 = *(v17 + 56);
    v39 = v17 + 56;
    v38(v10, 1, 1, v16);
    v18 = sub_220BCCF60();
    v19 = *(v18 - 8);
    v32 = *(v19 + 56);
    v33 = v19 + 56;
    v32(v7, 1, 1, v18);
    sub_220BCCEE0();
    sub_220BCCED0();
    v21 = v20;
    v22 = *(v37 + 8);
    v23 = v40;
    v22(v15, v40);
    v24 = (v2 + *(v41 + 32));
    v25 = *v24;
    v36 = v24[1];
    v37 = v25;
    LODWORD(v35) = *(v24 + 16);
    v34 = v24[3];
    v38(v10, 1, 1, v16);
    v32(v7, 1, 1, v18);
    sub_220BCCEE0();
    sub_220BCCED0();
    v27 = v26;
    result = (v22)(v15, v23);
    v28 = round(v27 / v21);
    if ((*&v28 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v28 > -9.22337204e18)
    {
      if (v28 < 9.22337204e18)
      {
        v29 = v28;
        if (v28 >= 2)
        {
          v30 = v41;
          v43 = *(v2 + *(v41 + 44));
          v42 = 1;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77290, &qword_220BD26B0);
          sub_220BCD300();
          v29 = 2;
          goto LABEL_12;
        }

        v30 = v41;
        if (!__OFSUB__(3, v29))
        {
          v43 = *(v2 + *(v41 + 44));
          v42 = 3 - v29;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77290, &qword_220BD26B0);
          sub_220BCD300();
LABEL_12:
          v43 = *(v2 + *(v30 + 40));
          v42 = v29;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77290, &qword_220BD26B0);
          return sub_220BCD300();
        }

LABEL_17:
        __break(1u);
        return result;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    __break(1u);
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_220B64F98(uint64_t a1)
{
  type metadata accessor for ArticleSearchResultItemView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77278, &unk_220BD34B0);
  sub_220BCD2F0();
  return sub_220B64B14(v2, v3);
}

uint64_t sub_220B6500C()
{
  v0 = sub_220BCCE40();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220BCCDB0();
  (*(v1 + 104))(v3, *MEMORY[0x277CE0A10], v0);
  sub_220BCCE50();

  (*(v1 + 8))(v3, v0);
  v4 = sub_220BCCDC0();

  qword_27CF77188 = v4;
  return result;
}

uint64_t sub_220B65130(uint64_t a1)
{
  result = sub_220BCCE60();
  qword_27CF77190 = result;
  return result;
}

uint64_t sub_220B65150()
{
  if (qword_27CF768F0 != -1)
  {
    swift_once();
  }

  v0 = sub_220BCCF50();
  v2 = v1;
  v4 = v3;
  v6 = v5;

  qword_27CF77198 = v0;
  unk_27CF771A0 = v2;
  byte_27CF771A8 = v4 & 1;
  qword_27CF771B0 = v6;
  return result;
}

uint64_t type metadata accessor for ArticleSearchResultItemView(uint64_t a1)
{
  result = qword_27CF771C8;
  if (!qword_27CF771C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_220B65280(uint64_t a1)
{
  sub_220B65488(319, &qword_27CF771D8, MEMORY[0x277CDD6C8], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_220B43CD4(319);
    if (v2 <= 0x3F)
    {
      sub_220B653D4();
      if (v3 <= 0x3F)
      {
        sub_220BCCF10();
        if (v4 <= 0x3F)
        {
          sub_220B65438();
          if (v5 <= 0x3F)
          {
            sub_220B65488(319, &qword_27CF771F0, type metadata accessor for CGSize, MEMORY[0x277CE10B8]);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

unint64_t sub_220B653D4()
{
  result = qword_27CF771E0;
  if (!qword_27CF771E0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27CF771E0);
  }

  return result;
}

void sub_220B65438()
{
  if (!qword_27CF771E8)
  {
    v0 = sub_220BCD320();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF771E8);
    }
  }
}

void sub_220B65488(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_220B65508()
{
  result = qword_27CF77200;
  if (!qword_27CF77200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF771F8, &qword_220BD2648);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF77208, &qword_220BD2650);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF77210, &qword_220BD2658);
    sub_220BCC5A0();
    sub_220B65664();
    sub_220B6588C(&qword_27CF77260, MEMORY[0x277CDD6C8], MEMORY[0x277CDD6D0]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF77200);
  }

  return result;
}

unint64_t sub_220B65664()
{
  result = qword_27CF77218;
  if (!qword_27CF77218)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF77210, &qword_220BD2658);
    sub_220B656F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF77218);
  }

  return result;
}

unint64_t sub_220B656F0()
{
  result = qword_27CF77220;
  if (!qword_27CF77220)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF77228, &qword_220BD2660);
    sub_220B657A8();
    sub_220B43830(&qword_2812C09A8, &qword_27CF77258, &qword_220BD2680, MEMORY[0x277CE07C8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF77220);
  }

  return result;
}

unint64_t sub_220B657A8()
{
  result = qword_27CF77230;
  if (!qword_27CF77230)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF77238, &qword_220BD2668);
    sub_220B43830(&qword_27CF77240, &qword_27CF77248, &unk_220BD2670, MEMORY[0x277CE1198]);
    sub_220B43830(&qword_2812C09C0, &qword_27CF77250, &unk_220BD3490, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF77230);
  }

  return result;
}

uint64_t sub_220B6588C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_220B658D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArticleSearchResultItemView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220B65938(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArticleSearchResultItemView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_220B6599C(double a1, double a2)
{
  v5 = *(type metadata accessor for ArticleSearchResultItemView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_220B64A5C(v6, a1, a2);
}

uint64_t objectdestroyTm_2()
{
  v1 = type metadata accessor for ArticleSearchResultItemView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF771B8, &unk_220BD25C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_220BCC5A0();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  swift_unknownObjectRelease();
  v7 = v1[7];
  v8 = sub_220BCCF10();
  (*(*(v8 - 8) + 8))(v5 + v7, v8);
  sub_220B5E8DC(*(v5 + v1[8]), *(v5 + v1[8] + 8), *(v5 + v1[8] + 16));

  sub_220B5E8DC(*(v5 + v1[9]), *(v5 + v1[9] + 8), *(v5 + v1[9] + 16));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_220B65C50(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_220B5E890(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_220B65C94(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_220B5E8DC(result, a2, a3 & 1);
  }

  return result;
}

void sub_220B65CDC(void *a1)
{
  if (a1)
  {
    v14 = MEMORY[0x277D84F90];
    v1 = a1;
    v2 = [v1 stops];
    sub_220B43A8C();
    v3 = sub_220BCDC70();

    if (v3 >> 62)
    {
      v4 = sub_220BCDF70();
      if (v4)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v4)
      {
LABEL_4:
        if (v4 < 1)
        {
          __break(1u);
          return;
        }

        for (i = 0; i != v4; ++i)
        {
          if ((v3 & 0xC000000000000001) != 0)
          {
            v6 = MEMORY[0x223D92D80](i, v3);
          }

          else
          {
            v6 = *(v3 + 8 * i + 32);
          }

          v7 = v6;
          v8 = [v6 colorString];
          if (v8)
          {
            v9 = v8;
            v10 = sub_220BCDBA0();
            v12 = v11;

            _sSo7UIColorC6TipsUIE25colorForSystemColorStringyABSSFZ_0(v10, v12);

            sub_220BCD150();

            MEMORY[0x223D929F0](v13);
            if (*(v14 + 16) >= *(v14 + 24) >> 1)
            {
              sub_220BCDC80();
            }

            sub_220BCDC90();
          }

          else
          {
          }
        }
      }
    }
  }
}

uint64_t sub_220B65EB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_220BCCC20();
  MEMORY[0x28223BE20](v7);
  (*(*(a2 - 8) + 16))(&v10 - v8, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_220BCCC30();
}

uint64_t sub_220B65FB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_220BCCC20();
  MEMORY[0x28223BE20](v7);
  (*(*(a3 - 8) + 16))(&v10 - v8, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_220BCCC30();
}

void TipGradientView.init(_:startPoint:endPoint:gradientView:)(void *a1@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>, double a9@<D3>)
{
  sub_220B65CDC(a1);
  *(a5 + 32) = v17;
  *a5 = a6;
  *(a5 + 8) = a7;
  *(a5 + 16) = a8;
  *(a5 + 24) = a9;
  type metadata accessor for TipGradientView(0, a3, a4, v18);
  a2();
}

uint64_t TipGradientView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF772A8, &qword_220BD2780);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v35 = a1;
  v39 = v4;
  sub_220BCC640();
  v6 = sub_220BCC860();
  v43 = sub_220B66620();
  WitnessTable = swift_getWitnessTable();
  v36 = swift_getWitnessTable();
  v37 = v6;
  v7 = sub_220BCD370();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v33 - v13;
  v34 = *(v5 - 8);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v33 - v18;
  v20 = sub_220BCCC40();
  v38 = *(v20 - 8);
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v33 - v22;
  if (*(*(v2 + 32) + 16))
  {
    MEMORY[0x28223BE20](v21);
    v24 = v8;
    v25 = v39;
    *(&v33 - 4) = v5;
    *(&v33 - 3) = v25;
    *(&v33 - 2) = v26;
    sub_220BCD460();
    sub_220BCD360();
    v27 = swift_getWitnessTable();
    sub_220B59A10();
    v28 = *(v24 + 8);
    v28(v11, v7);
    sub_220B59A10();
    sub_220B65FB0(v11, v5, v7, v25, v27);
    v28(v11, v7);
    v28(v14, v7);
  }

  else
  {
    v25 = v39;
    sub_220B59A10();
    sub_220B59A10();
    v29 = swift_getWitnessTable();
    sub_220B65EB8(v17, v5, v7, v25, v29);
    v30 = *(v34 + 8);
    v30(v17, v5);
    v30(v19, v5);
  }

  v31 = swift_getWitnessTable();
  v41 = v25;
  v42 = v31;
  swift_getWitnessTable();
  sub_220B59A10();
  return (*(v38 + 8))(v23, v20);
}

unint64_t sub_220B66620()
{
  result = qword_2812C0A00;
  if (!qword_2812C0A00)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF772A8, &qword_220BD2780);
    sub_220B666AC(v1, v2, v3);
    sub_220B66700();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812C0A00);
  }

  return result;
}

unint64_t sub_220B666AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2812C0A18;
  if (!qword_2812C0A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812C0A18);
  }

  return result;
}

unint64_t sub_220B66700()
{
  result = qword_2812C09B8;
  if (!qword_2812C09B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF772B0, &qword_220BD2788);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812C09B8);
  }

  return result;
}

uint64_t sub_220B66764@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v26 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF772A8, &qword_220BD2780);
  MEMORY[0x28223BE20](v6);
  v8 = v23 - v7;
  v23[1] = a3;
  v25 = sub_220BCC640();
  v9 = sub_220BCC860();
  v24 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v23 - v13;

  MEMORY[0x223D921C0](v15);
  sub_220BCC790();
  v16 = &v8[*(v6 + 36)];
  type metadata accessor for TipGradientView(0, a2, a3, v17);
  sub_220B66A5C(v16);
  LOBYTE(a3) = sub_220BCCD60();
  *(v16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF772B0, &qword_220BD2788) + 36)) = a3;
  *(v8 + 4) = v31;
  v18 = v30;
  *v8 = v29;
  *(v8 + 1) = v18;
  v19 = sub_220B66620();
  sub_220BCD100();
  sub_220B6707C(v8);
  WitnessTable = swift_getWitnessTable();
  v27 = v19;
  v28 = WitnessTable;
  swift_getWitnessTable();
  sub_220B59A10();
  v21 = *(v24 + 8);
  v21(v12, v9);
  sub_220B59A10();
  return (v21)(v14, v9);
}

double sub_220B66A5C@<D0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF772B8, &qword_220BD2810);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_220BD2770;
  sub_220BCD1C0();
  v3 = sub_220BCD1E0();

  *(v2 + 32) = v3;
  sub_220BCD1C0();
  v4 = sub_220BCD1E0();

  *(v2 + 40) = v4;
  MEMORY[0x223D921C0](v2);
  sub_220BCC790();
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF772C0, &qword_220BD2818) + 36);
  v6 = *MEMORY[0x277CE13B8];
  v7 = sub_220BCD4D0();
  (*(*(v7 - 8) + 104))(a1 + v5, v6, v7);
  result = *&v9;
  *a1 = v9;
  *(a1 + 16) = v10;
  *(a1 + 32) = v11;
  return result;
}

void sub_220B66BA0(uint64_t a1)
{
  sub_220B6702C();
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_220B66C38(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
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

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 40) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      v15 = ((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8);
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((v15 + v6 + 8) & ~v6);
      }

      v16 = *v15;
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_220B66DCC(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 40) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_47:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_47;
            }
          }

          goto LABEL_44;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

LABEL_44:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
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
  v19 = ((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8);
  if ((v7 & 0x80000000) != 0)
  {
    v21 = *(v6 + 56);

    v21((v19 + v9 + 8) & ~v9);
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v20 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v20 = a2 - 1;
    }

    *v19 = v20;
  }
}

void sub_220B6702C()
{
  if (!qword_2812C0958)
  {
    v0 = sub_220BCDCA0();
    if (!v1)
    {
      atomic_store(v0, &qword_2812C0958);
    }
  }
}

uint64_t sub_220B6707C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF772A8, &qword_220BD2780);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_220B670E4(uint64_t a1)
{
  v2 = sub_220BCCA90();
  MEMORY[0x28223BE20](v2 - 8);
  v70 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_220BCC200();
  v4 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v65 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_220BCC170();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v80 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF772C8, &unk_220BD2820);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v59 - v10;
  v12 = sub_220BCC0C0();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v72 = &v59 - v17;
  v71 = sub_220BCC0E0();
  MEMORY[0x28223BE20](v71);
  v81 = &v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a1 + 16);
  if (v20)
  {
    v79 = v6;
    v87 = 0;
    v86 = 0;
    v22 = *(v18 + 16);
    v21 = v18 + 16;
    v23 = a1 + ((*(v21 + 64) + 32) & ~*(v21 + 64));
    v90 = *(v21 + 56);
    v91 = v22;
    v89 = (v13 + 48);
    v77 = (v13 + 32);
    v76 = (v13 + 16);
    v75 = (v13 + 88);
    v74 = *MEMORY[0x277D38DB8];
    v63 = *MEMORY[0x277D38DC0];
    v73 = (v13 + 8);
    v88 = (v21 - 8);
    v67 = (v13 + 96);
    v60 = (v4 + 32);
    v59 = (v4 + 8);
    v62 = (v7 + 32);
    v85 = MEMORY[0x277D84F90];
    v61 = (v7 + 8);
    v84 = 0xE000000000000000;
    v69 = v12;
    v68 = v16;
    v24 = v72;
    v25 = v71;
    v78 = v21;
    v26 = v81;
    v64 = v11;
    v22(v81, v23, v71);
    while (1)
    {
      sub_220BCC0D0();
      if ((*v89)(v11, 1, v12) == 1)
      {
        (*v88)(v26, v25);
        sub_220B679C8(v11);
        goto LABEL_4;
      }

      (*v77)(v24, v11, v12);
      (*v76)(v16, v24, v12);
      v27 = (*v75)(v16, v12);
      if (v27 == v74)
      {
        (*v67)(v16, v12);
        (*v62)(v80, v16, v79);
        v92 = sub_220BCC160();
        v93 = v28;
        sub_220B43454(v92, v28, v29);
        v30 = sub_220BCCF80();
        v32 = v31;
        v34 = v33;
        if (sub_220BCC150())
        {
          sub_220BCCDF0();
        }

        v40 = sub_220BCCEB0();
        v82 = v41;
        v83 = v40;
        v43 = v42;
        v45 = v44;
        sub_220B5E8DC(v30, v32, v34 & 1);

        (*v61)(v80, v79);
        v11 = v64;
      }

      else
      {
        if (v27 != v63)
        {
          v46 = *v73;
          (*v73)(v16, v12);
          v46(v24, v12);
          v26 = v81;
          (*v88)(v81, v25);
          goto LABEL_4;
        }

        (*v67)(v16, v12);
        (*v60)(v65, v16, v66);
        sub_220BCC160();
        sub_220BCD280();
        v35 = sub_220BCCF90();
        v37 = v36;
        v39 = v38;
        if (sub_220BCC1E0())
        {
          sub_220BCCDF0();
        }

        v47 = sub_220BCCEB0();
        v82 = v48;
        v83 = v47;
        v43 = v49;
        v45 = v50;
        sub_220B5E8DC(v35, v37, v39 & 1);

        (*v59)(v65, v66);
      }

      sub_220BCCA80();
      sub_220BCCA70();
      v51 = v86;
      v52 = v87;
      v53 = v84;
      sub_220BCCA60();
      sub_220B5E8DC(v52, v53, v51 & 1);

      sub_220BCCA70();
      v54 = v83;
      sub_220BCCA60();
      sub_220BCCA70();
      sub_220BCCAB0();
      v87 = sub_220BCCF70();
      v84 = v55;
      v85 = v56;
      v86 = v57;
      sub_220B5E8DC(v54, v43, v45 & 1);

      v24 = v72;
      v12 = v69;
      (*v73)(v72, v69);
      v26 = v81;
      v25 = v71;
      (*v88)(v81, v71);
      v16 = v68;
LABEL_4:
      v23 += v90;
      if (!--v20)
      {
        return v87;
      }

      v91(v26, v23, v25);
    }
  }

  v87 = 0;
  v86 = 0;
  v84 = 0xE000000000000000;
  v85 = MEMORY[0x277D84F90];
  return v87;
}

uint64_t sub_220B679C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF772C8, &unk_220BD2820);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for AttributionActionModifier(uint64_t a1)
{
  result = qword_27CF772D0;
  if (!qword_27CF772D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_220B67AA4(uint64_t a1)
{
  sub_220B67B28();
  if (v1 <= 0x3F)
  {
    sub_220B48ADC(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_220B67B28()
{
  if (!qword_27CF772E0)
  {
    v0 = sub_220BCC600();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF772E0);
    }
  }
}

uint64_t sub_220B67B94@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_220BCC9D0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v9 = *(v1 + 2);
  v8 = *(v1 + 3);
  v10 = *(v1 + 4);
  LODWORD(v5) = *(v1 + 40);
  v16[0] = *v1;
  if (v5 == 1)
  {
    sub_220B3A13C(v7, *(&v7 + 1));
    v11 = v10;

    v13 = v16[0];
  }

  else
  {
    v14 = v7;

    sub_220BCDDC0();
    v15 = sub_220BCCD50();
    sub_220BCC3C0();

    sub_220BCC9C0();
    swift_getAtKeyPath();
    sub_220B680EC(v14, *(&v16[0] + 1), v9, v8, v10, 0);
    result = (*(v4 + 8))(v6, v3);
    v13 = v16[1];
    LOBYTE(v9) = v17;
    v8 = v18;
    v11 = v19;
  }

  *a1 = v13;
  *(a1 + 16) = v9 & 1;
  *(a1 + 24) = v8;
  *(a1 + 32) = v11;
  return result;
}

uint64_t sub_220B67D58(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76D78, &unk_220BD11C0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v13 - v3;
  v5 = type metadata accessor for AttributionItem(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AttributionActionModifier(0);
  sub_220B681FC(a1 + *(v9 + 20), v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_220B463F4(v4, &qword_27CF76D78, &unk_220BD11C0);
  }

  sub_220B6826C(v4, v8, type metadata accessor for AttributionItem);
  sub_220B67B94(v13);
  v12 = v13[0];
  v11 = v13[1];
  v14 = v13[3];
  sub_220B463F4(&v14, &qword_27CF772F8, &qword_220BD28A8);
  if (v12)
  {
    v12(&v8[*(v5 + 32)]);
    sub_220B3A128(v12, v11);
  }

  return sub_220B682D4(v8);
}

uint64_t sub_220B67F44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](a1);
  sub_220B68088(v4, &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v6 = swift_allocObject();
  sub_220B6826C(&v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for AttributionActionModifier);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF772E8, &qword_220BD28A0);
  sub_220B68198();
  sub_220BCD020();
}

uint64_t sub_220B68088(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttributionActionModifier(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220B680EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
    sub_220B3A128(a1, a2);
  }

  else
  {
  }
}

uint64_t sub_220B68138()
{
  v1 = *(type metadata accessor for AttributionActionModifier(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_220B67D58(v2);
}

unint64_t sub_220B68198()
{
  result = qword_27CF772F0;
  if (!qword_27CF772F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF772E8, &qword_220BD28A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF772F0);
  }

  return result;
}

uint64_t sub_220B681FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76D78, &unk_220BD11C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220B6826C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_220B682D4(uint64_t a1)
{
  v2 = type metadata accessor for AttributionItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t View.when<A>(_:_:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v38 = a7;
  v39 = a6;
  v32 = a3;
  v33 = a2;
  v34 = a1;
  v37 = a8;
  v10 = *(a4 - 8);
  v11 = MEMORY[0x28223BE20](a1);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v32 - v15;
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v14);
  v21 = &v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v32 - v22;
  v24 = sub_220BCCC40();
  v36 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v26 = &v32 - v25;
  if (v34)
  {
    v33(v35);
    v27 = v38;
    sub_220B59A10();
    v28 = *(v18 + 8);
    v28(v21, a5);
    sub_220B59A10();
    sub_220B65EB8(v21, a5, a4, v27, v39);
    v28(v21, a5);
    v28(v23, a5);
  }

  else
  {
    v29 = v39;
    sub_220B59A10();
    sub_220B59A10();
    sub_220B65FB0(v13, a5, a4, v38, v29);
    v30 = *(v10 + 8);
    v30(v13, a4);
    v30(v16, a4);
  }

  v40 = v38;
  v41 = v39;
  swift_getWitnessTable();
  sub_220B59A10();
  return (*(v36 + 8))(v26, v24);
}

id ContentMessageViewModel.__allocating_init(error:defaultMessage:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_allocWithZone(v3);
  if (!a1)
  {
    goto LABEL_10;
  }

  sub_220BCD810();
  if (sub_220BCD7E0())
  {
    v7 = 2;
    goto LABEL_11;
  }

  if (sub_220BCD7F0())
  {
    v7 = 3;
    goto LABEL_11;
  }

  v8 = objc_opt_self();
  if ([v8 isInternalDevice] && objc_msgSend(v8, sel_isInternalBuild) && (sub_220BCD800() & 1) != 0)
  {
    v7 = 7;
  }

  else
  {
LABEL_10:
    v7 = 1;
  }

LABEL_11:
  if (a3)
  {
    v9 = sub_220BCDB70();
  }

  else
  {
    v9 = 0;
  }

  v10 = [v6 initWithType:v7 additionalContext:0 defaultMessage:v9];

  return v10;
}

TipsUI::ContentMessageSymbolName_optional __swiftcall ContentMessageSymbolName.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_220BCE100();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t ContentMessageSymbolName.rawValue.getter()
{
  v1 = *v0;
  v2 = 0xD00000000000002BLL;
  if (v1 != 3)
  {
    v2 = 0x697966696E67616DLL;
  }

  if (v1 == 2)
  {
    v2 = 0;
  }

  v3 = 0xD00000000000001DLL;
  if (*v0)
  {
    v3 = 0xD000000000000014;
  }

  if (*v0 <= 1u)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_220B688F0()
{
  sub_220BCE210();
  sub_220BCDBF0();

  return sub_220BCE240();
}

uint64_t sub_220B689E0(uint64_t a1)
{
  sub_220BCDBF0();
}

uint64_t sub_220B68ABC()
{
  sub_220BCE210();
  sub_220BCDBF0();

  return sub_220BCE240();
}

void sub_220B68BB4(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0x8000000220BD6B50;
  v4 = 0xD00000000000002BLL;
  if (v2 != 3)
  {
    v4 = 0x697966696E67616DLL;
    v3 = 0xEF7373616C67676ELL;
  }

  if (v2 == 2)
  {
    v4 = 0;
    v3 = 0xE000000000000000;
  }

  v5 = 0x8000000220BD6B10;
  v6 = 0xD00000000000001DLL;
  if (*v1)
  {
    v6 = 0xD000000000000014;
    v5 = 0x8000000220BD6B30;
  }

  if (*v1 <= 1u)
  {
    v7 = v6;
  }

  else
  {
    v7 = v4;
  }

  if (*v1 <= 1u)
  {
    v3 = v5;
  }

  *a1 = v7;
  a1[1] = v3;
}

id sub_220B68C84(uint64_t a1, uint64_t a2, void *a3)
{

  v3 = sub_220BCDB70();

  return v3;
}

uint64_t sub_220B69108()
{
  v1 = (v0 + OBJC_IVAR___ContentMessageViewModel_debugActionHandler);
  swift_beginAccess();
  v2 = *v1;
  sub_220B3A13C(*v1, v1[1]);
  return v2;
}

uint64_t sub_220B69224(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___ContentMessageViewModel_debugActionHandler);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_220B3A128(v6, v7);
}

uint64_t sub_220B69284@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR___ContentMessageViewModel_debugActionHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_220B6B818;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_220B3A13C(v4, v5);
}

uint64_t sub_220B69324(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_220B6B810;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR___ContentMessageViewModel_debugActionHandler);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_220B3A13C(v3, v4);
  return sub_220B3A128(v8, v9);
}

id ContentMessageViewModel.init(contentMessageType:additionalContext:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v77 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76C90, &qword_220BD1810);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v76 - v8;
  v10 = sub_220BCC080();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = sub_220BCDB60();
  MEMORY[0x28223BE20](v11 - 8);
  v12 = OBJC_IVAR___ContentMessageViewModel_settingsURL;
  v13 = sub_220BCBF80();
  (*(*(v13 - 8) + 56))(&v3[v12], 1, 1, v13);
  v14 = &v3[OBJC_IVAR___ContentMessageViewModel_settingsText];
  *v14 = 0;
  v14[1] = 0;
  v15 = &v3[OBJC_IVAR___ContentMessageViewModel_debugActionHandler];
  sub_220B6AECC();
  *v15 = 0;
  *(v15 + 1) = 0;
  v16 = sub_220BCDEC0();
  if (!v16)
  {
    v16 = [objc_opt_self() mainBundle];
  }

  v17 = v16;
  if (a1 <= 4)
  {
    if (a1 == 2)
    {

      sub_220BCDB50();
      v54 = v17;
      sub_220BCC050();
      v55 = v54;
      v56 = sub_220BCDBC0();
      v57 = &v4[OBJC_IVAR___ContentMessageViewModel_title];
      *v57 = v56;
      v57[1] = v58;
      sub_220BCDB50();
      sub_220BCC050();
      v59 = sub_220BCDBC0();
      v60 = &v4[OBJC_IVAR___ContentMessageViewModel_message];
      *v60 = v59;
      v60[1] = v61;
      v62 = &v4[OBJC_IVAR___ContentMessageViewModel_symbolName];
      *v62 = 0xD000000000000014;
      *(v62 + 1) = 0x8000000220BD6B30;
      v63 = objc_opt_self();
      if (([v63 isMacUI] & 1) != 0 || objc_msgSend(v63, sel_supportsOpenSensitiveURL))
      {
        if (![v63 isMacUI])
        {
          [v63 isWatchUI];
        }

        sub_220BCBF40();

        swift_beginAccess();
        sub_220B55518(v9, &v4[v12]);
        swift_endAccess();
        sub_220BCDB50();
        sub_220BCC050();
        v73 = sub_220BCDBC0();
        v75 = v74;

        *v14 = v73;
        v14[1] = v75;
      }

      else
      {
      }
    }

    else
    {
      if (a1 != 4)
      {
        goto LABEL_21;
      }

      sub_220BCDB50();
      v23 = v17;
      sub_220BCC050();
      v24 = v23;
      sub_220BCDBC0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77320, &qword_220BD3A80);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_220BD1BA0;
      *(v25 + 56) = MEMORY[0x277D837D0];
      *(v25 + 64) = sub_220B6AF64(v25, v26, v27);
      v28 = v77;
      if (!a3)
      {
        v28 = 0;
      }

      v29 = 0xE000000000000000;
      if (a3)
      {
        v29 = a3;
      }

      *(v25 + 32) = v28;
      *(v25 + 40) = v29;
      v30 = sub_220BCDBB0();
      v32 = v31;

      v33 = &v4[OBJC_IVAR___ContentMessageViewModel_title];
      *v33 = v30;
      v33[1] = v32;
      sub_220BCDB50();
      sub_220BCC050();
      v34 = sub_220BCDBC0();
      v35 = &v4[OBJC_IVAR___ContentMessageViewModel_message];
      *v35 = v34;
      v35[1] = v36;

      v37 = &v4[OBJC_IVAR___ContentMessageViewModel_symbolName];
      *v37 = 0x697966696E67616DLL;
      *(v37 + 1) = 0xEF7373616C67676ELL;
    }
  }

  else
  {
    if (a1 != 5)
    {
      if (a1 == 6)
      {

        sub_220BCDB50();
        v44 = v17;
        sub_220BCC050();
        v45 = v44;
        v46 = sub_220BCDBC0();
        v47 = &v4[OBJC_IVAR___ContentMessageViewModel_title];
        *v47 = v46;
        v47[1] = v48;
        sub_220BCDB50();
        sub_220BCC050();
        v49 = sub_220BCDBC0();
        v50 = &v4[OBJC_IVAR___ContentMessageViewModel_message];
        *v50 = v49;
        v50[1] = v51;

        v52 = 0x8000000220BD6B10;
        v53 = &v4[OBJC_IVAR___ContentMessageViewModel_symbolName];
        *&v4[OBJC_IVAR___ContentMessageViewModel_symbolName] = 0xD00000000000001DLL;
LABEL_23:
        *(v53 + 1) = v52;
        goto LABEL_24;
      }

      if (a1 == 7)
      {

        sub_220BCDB50();
        v18 = v17;
        sub_220BCC050();
        v19 = sub_220BCDBC0();
        v20 = &v4[OBJC_IVAR___ContentMessageViewModel_title];
        *v20 = v19;
        v20[1] = v21;
        v22 = &v4[OBJC_IVAR___ContentMessageViewModel_message];
        *v22 = 0x100000000000004FLL;
        *(v22 + 1) = 0x8000000220BD7520;
LABEL_22:

        v52 = 0x8000000220BD6B50;
        v53 = &v4[OBJC_IVAR___ContentMessageViewModel_symbolName];
        *&v4[OBJC_IVAR___ContentMessageViewModel_symbolName] = 0xD00000000000002BLL;
        goto LABEL_23;
      }

LABEL_21:

      sub_220BCDB50();
      v64 = v17;
      sub_220BCC050();
      v18 = v64;
      v65 = sub_220BCDBC0();
      v66 = &v4[OBJC_IVAR___ContentMessageViewModel_title];
      *v66 = v65;
      v66[1] = v67;
      sub_220BCDB50();
      sub_220BCC050();
      v68 = sub_220BCDBC0();
      v69 = &v4[OBJC_IVAR___ContentMessageViewModel_message];
      *v69 = v68;
      v69[1] = v70;
      goto LABEL_22;
    }

    sub_220BCDB50();
    v38 = v17;
    sub_220BCC050();
    v39 = sub_220BCDBC0();
    v40 = &v4[OBJC_IVAR___ContentMessageViewModel_title];
    *v40 = v39;
    v40[1] = v41;
    v42 = &v4[OBJC_IVAR___ContentMessageViewModel_message];
    *v42 = 0;
    *(v42 + 1) = 0xE000000000000000;

    v43 = &v4[OBJC_IVAR___ContentMessageViewModel_symbolName];
    *v43 = 0;
    *(v43 + 1) = 0xE000000000000000;
  }

LABEL_24:
  v71 = type metadata accessor for ContentMessageViewModel(0);
  v78.receiver = v4;
  v78.super_class = v71;
  return objc_msgSendSuper2(&v78, sel_init);
}

uint64_t static ContentMessageViewModel.networkSettingsURL.getter()
{
  v0 = objc_opt_self();
  if (![v0 isMacUI])
  {
    [v0 isWatchUI];
  }

  sub_220BCBF40();
}

id ContentMessageViewModel.init(type:additionalContext:defaultMessage:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v81 = a4;
  v83 = a2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76C90, &qword_220BD1810);
  MEMORY[0x28223BE20](v10 - 8);
  v82 = &v80 - v11;
  v12 = sub_220BCC080();
  MEMORY[0x28223BE20](v12 - 8);
  v13 = sub_220BCDB60();
  MEMORY[0x28223BE20](v13 - 8);
  v14 = OBJC_IVAR___ContentMessageViewModel_settingsURL;
  v15 = sub_220BCBF80();
  (*(*(v15 - 8) + 56))(&v5[v14], 1, 1, v15);
  v16 = &v5[OBJC_IVAR___ContentMessageViewModel_settingsText];
  *v16 = 0;
  v16[1] = 0;
  v17 = &v5[OBJC_IVAR___ContentMessageViewModel_debugActionHandler];
  sub_220B6AECC();
  *v17 = 0;
  *(v17 + 1) = 0;
  v18 = sub_220BCDEC0();
  if (!v18)
  {
    v18 = [objc_opt_self() mainBundle];
  }

  v19 = v18;
  if (a1 <= 4)
  {
    if (a1 == 2)
    {

      sub_220BCDB50();
      v56 = v19;
      sub_220BCC050();
      v57 = v56;
      v58 = sub_220BCDBC0();
      v59 = &v6[OBJC_IVAR___ContentMessageViewModel_title];
      *v59 = v58;
      v59[1] = v60;
      sub_220BCDB50();
      sub_220BCC050();
      v61 = sub_220BCDBC0();
      v62 = &v6[OBJC_IVAR___ContentMessageViewModel_message];
      *v62 = v61;
      v62[1] = v63;
      v64 = &v6[OBJC_IVAR___ContentMessageViewModel_symbolName];
      *v64 = 0xD000000000000014;
      *(v64 + 1) = 0x8000000220BD6B30;
      v65 = objc_opt_self();
      if (([v65 isMacUI] & 1) != 0 || objc_msgSend(v65, sel_supportsOpenSensitiveURL))
      {
        if (![v65 isMacUI])
        {
          [v65 isWatchUI];
        }

        v72 = v82;
        sub_220BCBF40();

        swift_beginAccess();
        sub_220B55518(v72, &v6[v14]);
        swift_endAccess();
        sub_220BCDB50();
        sub_220BCC050();
        v73 = sub_220BCDBC0();
        v75 = v74;

        *v16 = v73;
        v16[1] = v75;
      }

      else
      {
      }
    }

    else
    {
      if (a1 != 4)
      {
        goto LABEL_21;
      }

      sub_220BCDB50();
      v27 = v19;
      sub_220BCC050();
      v28 = v27;
      sub_220BCDBC0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77320, &qword_220BD3A80);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_220BD1BA0;
      *(v29 + 56) = MEMORY[0x277D837D0];
      *(v29 + 64) = sub_220B6AF64(v29, v30, v31);
      v32 = v83;
      if (!a3)
      {
        v32 = 0;
      }

      v33 = 0xE000000000000000;
      if (a3)
      {
        v33 = a3;
      }

      *(v29 + 32) = v32;
      *(v29 + 40) = v33;
      v34 = sub_220BCDBB0();
      v36 = v35;

      v37 = &v6[OBJC_IVAR___ContentMessageViewModel_title];
      *v37 = v34;
      v37[1] = v36;
      sub_220BCDB50();
      sub_220BCC050();
      v38 = sub_220BCDBC0();
      v39 = &v6[OBJC_IVAR___ContentMessageViewModel_message];
      *v39 = v38;
      v39[1] = v40;

      v41 = &v6[OBJC_IVAR___ContentMessageViewModel_symbolName];
      *v41 = 0x697966696E67616DLL;
      *(v41 + 1) = 0xEF7373616C67676ELL;
    }
  }

  else
  {
    if (a1 != 5)
    {
      if (a1 == 6)
      {

        sub_220BCDB50();
        v48 = v19;
        sub_220BCC050();
        v49 = v48;
        v50 = sub_220BCDBC0();
        v51 = &v6[OBJC_IVAR___ContentMessageViewModel_title];
        *v51 = v50;
        v51[1] = v52;
        sub_220BCDB50();
        sub_220BCC050();
        v53 = sub_220BCDBC0();
        v54 = &v6[OBJC_IVAR___ContentMessageViewModel_message];
        *v54 = v53;
        v54[1] = v55;

        v25 = 0x8000000220BD6B10;
        v26 = &v6[OBJC_IVAR___ContentMessageViewModel_symbolName];
        *&v6[OBJC_IVAR___ContentMessageViewModel_symbolName] = 0xD00000000000001DLL;
LABEL_28:
        *(v26 + 1) = v25;
        goto LABEL_29;
      }

      if (a1 == 7)
      {

        sub_220BCDB50();
        v20 = v19;
        sub_220BCC050();
        v21 = sub_220BCDBC0();
        v22 = &v6[OBJC_IVAR___ContentMessageViewModel_title];
        *v22 = v21;
        v22[1] = v23;
        v24 = &v6[OBJC_IVAR___ContentMessageViewModel_message];
        *v24 = 0x100000000000004FLL;
        *(v24 + 1) = 0x8000000220BD7520;

        v25 = 0x8000000220BD6B50;
        v26 = &v6[OBJC_IVAR___ContentMessageViewModel_symbolName];
LABEL_27:
        *v26 = 0xD00000000000002BLL;
        goto LABEL_28;
      }

LABEL_21:

      sub_220BCDB50();
      v66 = v19;
      sub_220BCC050();
      v67 = v66;
      v68 = sub_220BCDBC0();
      v69 = &v6[OBJC_IVAR___ContentMessageViewModel_title];
      *v69 = v68;
      v69[1] = v70;
      if (a5)
      {

        v71 = v81;
      }

      else
      {
        sub_220BCDB50();
        sub_220BCC050();
        v71 = sub_220BCDBC0();
        a5 = v76;
      }

      v77 = &v6[OBJC_IVAR___ContentMessageViewModel_message];
      *v77 = v71;
      v77[1] = a5;

      v25 = 0x8000000220BD6B50;
      v26 = &v6[OBJC_IVAR___ContentMessageViewModel_symbolName];
      goto LABEL_27;
    }

    sub_220BCDB50();
    v42 = v19;
    sub_220BCC050();
    v43 = sub_220BCDBC0();
    v44 = &v6[OBJC_IVAR___ContentMessageViewModel_title];
    *v44 = v43;
    v44[1] = v45;
    v46 = &v6[OBJC_IVAR___ContentMessageViewModel_message];
    *v46 = 0;
    *(v46 + 1) = 0xE000000000000000;

    v47 = &v6[OBJC_IVAR___ContentMessageViewModel_symbolName];
    *v47 = 0;
    *(v47 + 1) = 0xE000000000000000;
  }

LABEL_29:
  v78 = type metadata accessor for ContentMessageViewModel(0);
  v84.receiver = v6;
  v84.super_class = v78;
  return objc_msgSendSuper2(&v84, sel_init);
}

id ContentMessageViewModel.__allocating_init(title:message:symbolName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = objc_allocWithZone(v6);
  v14 = OBJC_IVAR___ContentMessageViewModel_settingsURL;
  v15 = sub_220BCBF80();
  (*(*(v15 - 8) + 56))(&v13[v14], 1, 1, v15);
  v16 = &v13[OBJC_IVAR___ContentMessageViewModel_settingsText];
  *v16 = 0;
  *(v16 + 1) = 0;
  v17 = &v13[OBJC_IVAR___ContentMessageViewModel_debugActionHandler];
  *v17 = 0;
  *(v17 + 1) = 0;
  v18 = &v13[OBJC_IVAR___ContentMessageViewModel_title];
  *v18 = a1;
  *(v18 + 1) = a2;
  v19 = &v13[OBJC_IVAR___ContentMessageViewModel_message];
  *v19 = a3;
  *(v19 + 1) = a4;
  v20 = &v13[OBJC_IVAR___ContentMessageViewModel_symbolName];
  *v20 = a5;
  *(v20 + 1) = a6;
  v22.receiver = v13;
  v22.super_class = v6;
  return objc_msgSendSuper2(&v22, sel_init);
}

id ContentMessageViewModel.init(title:message:symbolName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = OBJC_IVAR___ContentMessageViewModel_settingsURL;
  v14 = sub_220BCBF80();
  (*(*(v14 - 8) + 56))(&v6[v13], 1, 1, v14);
  v15 = &v6[OBJC_IVAR___ContentMessageViewModel_settingsText];
  *v15 = 0;
  *(v15 + 1) = 0;
  v16 = &v6[OBJC_IVAR___ContentMessageViewModel_debugActionHandler];
  *v16 = 0;
  *(v16 + 1) = 0;
  v17 = &v6[OBJC_IVAR___ContentMessageViewModel_title];
  *v17 = a1;
  *(v17 + 1) = a2;
  v18 = &v6[OBJC_IVAR___ContentMessageViewModel_message];
  *v18 = a3;
  *(v18 + 1) = a4;
  v19 = &v6[OBJC_IVAR___ContentMessageViewModel_symbolName];
  *v19 = a5;
  *(v19 + 1) = a6;
  v21.receiver = v6;
  v21.super_class = type metadata accessor for ContentMessageViewModel(0);
  return objc_msgSendSuper2(&v21, sel_init);
}

id ContentMessageViewModel.__allocating_init(error:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithError:a1 defaultMessage:0];

  return v3;
}

id ContentMessageViewModel.init(error:)(void *a1)
{
  v3 = [v1 initWithError:a1 defaultMessage:0];

  return v3;
}

id ContentMessageViewModel.init(error:defaultMessage:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (!a1)
  {
    goto LABEL_10;
  }

  sub_220BCD810();
  if (sub_220BCD7E0())
  {
    v7 = 2;
    goto LABEL_11;
  }

  if (sub_220BCD7F0())
  {
    v7 = 3;
    goto LABEL_11;
  }

  v8 = objc_opt_self();
  if ([v8 isInternalDevice] && objc_msgSend(v8, sel_isInternalBuild) && (sub_220BCD800() & 1) != 0)
  {
    v7 = 7;
  }

  else
  {
LABEL_10:
    v7 = 1;
  }

LABEL_11:
  if (a3)
  {
    v9 = sub_220BCDB70();
  }

  else
  {
    v9 = 0;
  }

  v10 = [v4 initWithType:v7 additionalContext:0 defaultMessage:v9];

  return v10;
}

unint64_t sub_220B6AECC()
{
  result = qword_27CF77300;
  if (!qword_27CF77300)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CF77300);
  }

  return result;
}

uint64_t type metadata accessor for ContentMessageViewModel(uint64_t a1)
{
  result = qword_27CF77338;
  if (!qword_27CF77338)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_220B6AF64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CF77328;
  if (!qword_27CF77328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF77328);
  }

  return result;
}

id ContentMessageViewModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ContentMessageViewModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ContentMessageViewModel(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t _s6TipsUI23ContentMessageViewModelC4type3forAA0cD4TypeOSo7NSErrorCSg_tFZ_0(void *a1)
{
  if (!a1)
  {
    return 1;
  }

  sub_220BCD810();
  v2 = a1;
  if (sub_220BCD7E0())
  {

    return 2;
  }

  if (sub_220BCD7F0())
  {

    return 3;
  }

  v4 = objc_opt_self();
  if ([v4 isInternalDevice] && objc_msgSend(v4, sel_isInternalBuild))
  {
    v5 = sub_220BCD800();

    if (v5)
    {
      return 7;
    }
  }

  else
  {
  }

  return 1;
}

unint64_t sub_220B6B4A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CF77330;
  if (!qword_27CF77330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF77330);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ContentMessageSymbolName(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ContentMessageSymbolName(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_220B6B64C(uint64_t a1)
{
  sub_220B5D4C8(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_220B6B824()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_220BCC4C0();

  return v1;
}

uint64_t sub_220B6B89C(uint64_t a1)
{
  sub_220B6C6D4();
  v2 = OBJC_IVAR____TtC6TipsUI17RemoteImageLoader__state;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76EA8, &qword_220BD1818);
  (*(*(v3 - 8) + 8))(v1 + v2, v3);

  sub_220B463F4(v1 + OBJC_IVAR____TtC6TipsUI17RemoteImageLoader_url, &qword_27CF76C90, &qword_220BD1810);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 52);

  return MEMORY[0x2821FE8D8](v1, v4, v5);
}

uint64_t type metadata accessor for RemoteImageLoader(uint64_t a1)
{
  result = qword_2812C1D90;
  if (!qword_2812C1D90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_220B6B9E0(uint64_t a1)
{
  sub_220B6C7F0(319);
  if (v1 <= 0x3F)
  {
    sub_220B5D4C8(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_220B6BAC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76EA8, &qword_220BD1818);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v16 - v9;
  v11 = OBJC_IVAR____TtC6TipsUI17RemoteImageLoader__state;
  v16[1] = 0;
  v17 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76EB0, &qword_220BD1820);
  sub_220BCC480();
  (*(v8 + 32))(v3 + v11, v10, v7);
  *(v3 + OBJC_IVAR____TtC6TipsUI17RemoteImageLoader_urlSessionItem) = 0;
  v12 = (v3 + OBJC_IVAR____TtC6TipsUI17RemoteImageLoader_identifier);
  *v12 = 0;
  v12[1] = 0;
  v13 = OBJC_IVAR____TtC6TipsUI17RemoteImageLoader_url;
  v14 = sub_220BCBF80();
  (*(*(v14 - 8) + 56))(v3 + v13, 1, 1, v14);
  *v12 = a1;
  v12[1] = a2;
  swift_beginAccess();
  sub_220B55518(a3, v3 + v13);
  swift_endAccess();
  return v3;
}

void sub_220B6BC70()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76C90, &qword_220BD1810);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v29 - v2;
  v4 = sub_220BCBF80();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC6TipsUI17RemoteImageLoader_url;
  swift_beginAccess();
  sub_220B462DC(v0 + v8, v3, &qword_27CF76C90, &qword_220BD1810);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    v9 = sub_220B463F4(v3, &qword_27CF76C90, &qword_220BD1810);
LABEL_7:
    sub_220B5D560(v9, v10, v11);
    v13 = swift_allocError();
    *v14 = 1;
    swift_getKeyPath();
    swift_getKeyPath();
    aBlock = v13;
    LOBYTE(v31) = 1;

    sub_220BCC4D0();
    return;
  }

  (*(v5 + 32))(v7, v3, v4);
  if (!*(v0 + OBJC_IVAR____TtC6TipsUI17RemoteImageLoader_identifier + 8))
  {
    v9 = (*(v5 + 8))(v7, v4);
    goto LABEL_7;
  }

  v12 = OBJC_IVAR____TtC6TipsUI17RemoteImageLoader_urlSessionItem;
  if (*(v0 + OBJC_IVAR____TtC6TipsUI17RemoteImageLoader_urlSessionItem))
  {
LABEL_5:
    (*(v5 + 8))(v7, v4);
    return;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_220BCC4C0();

  if (!v31)
  {
    sub_220B485EC(aBlock, 0);

    goto LABEL_5;
  }

  sub_220B485EC(aBlock, v31);
  v15 = objc_opt_self();
  v16 = sub_220BCDB70();
  v17 = [v15 imageFromMemoryCacheForIdentifier_];

  if (v17)
  {

    v18 = v17;
    v19 = _s7SwiftUI5ImageV04TipsB0E03tpsC0ACSo7UIImageC_tcfC_0();
    swift_getKeyPath();
    swift_getKeyPath();
    aBlock = v19;
    LOBYTE(v31) = 0;

    sub_220BCC4D0();

    goto LABEL_5;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  aBlock = 1;
  LOBYTE(v31) = 2;

  sub_220BCC4D0();
  v20 = v0;
  sub_220BCBF10();
  v21 = sub_220BCDB70();

  v22 = sub_220BCDB70();

  v23 = *MEMORY[0x277CCA798];
  v24 = swift_allocObject();
  swift_weakInit();
  v34 = sub_220B6C894;
  v35 = v24;
  aBlock = MEMORY[0x277D85DD0];
  v31 = 1107296256;
  v32 = sub_220B6C56C;
  v33 = &block_descriptor_3;
  v25 = _Block_copy(&aBlock);

  LODWORD(v26) = v23;
  v27 = [v15 formattedDataForPath:v21 identifier:v22 priority:v25 completionHandler:v26];
  _Block_release(v25);

  (*(v5 + 8))(v7, v4);
  v28 = *(v20 + v12);
  *(v20 + v12) = v27;
}

void sub_220B6C180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10)
{
  v13 = sub_220BCD630();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    v19 = *(Strong + OBJC_IVAR____TtC6TipsUI17RemoteImageLoader_identifier + 8);
    if (v19)
    {
      v20 = *(Strong + OBJC_IVAR____TtC6TipsUI17RemoteImageLoader_identifier) == a1 && v19 == a2;
      if (v20 || (sub_220BCE130() & 1) != 0)
      {
        if (a9)
        {
          swift_getKeyPath();
          swift_getKeyPath();
          v31 = a9;
          LOBYTE(v32) = 1;
          v21 = a9;
        }

        else
        {
          sub_220B462DC(a3, &v31, &qword_27CF77050, &unk_220BD2180);
          if (v33)
          {
            sub_220B6C93C();
            v22 = swift_dynamicCast();
            if (v22)
            {
              v25 = v34;
              v26 = _s7SwiftUI5ImageV04TipsB0E03tpsC0ACSo7UIImageC_tcfC_0();
              swift_getKeyPath();
              swift_getKeyPath();
              v31 = v26;
              LOBYTE(v32) = 0;

              sub_220BCC4D0();

LABEL_20:
              v29 = *(v18 + OBJC_IVAR____TtC6TipsUI17RemoteImageLoader_urlSessionItem);
              *(v18 + OBJC_IVAR____TtC6TipsUI17RemoteImageLoader_urlSessionItem) = 0;

              return;
            }
          }

          else
          {
            v22 = sub_220B463F4(&v31, &qword_27CF77050, &unk_220BD2180);
          }

          sub_220B5D560(v22, v23, v24);
          v27 = swift_allocError();
          *v28 = 2;
          swift_getKeyPath();
          swift_getKeyPath();
          v31 = v27;
          LOBYTE(v32) = 1;
        }

        sub_220BCC4D0();
        goto LABEL_20;
      }
    }
  }

  sub_220BCD600();
  v31 = 0;
  v32 = 0xE000000000000000;
  sub_220BCDFB0();
  v34 = v31;
  v35 = v32;
  MEMORY[0x223D929B0](0xD000000000000043, 0x8000000220BD7A90);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
  }

  MEMORY[0x223D929B0]();

  MEMORY[0x223D929B0](0xD000000000000017, 0x8000000220BD7130);
  MEMORY[0x223D929B0](a1, a2);
  sub_220BCDA40();

  (*(v14 + 8))(v16, v13);
}

uint64_t sub_220B6C56C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void *a7)
{
  v22 = *(a1 + 32);
  v12 = sub_220BCDBA0();
  v14 = v13;
  if (a3)
  {
    ObjectType = swift_getObjectType();
    *&v23 = a3;
    sub_220B4F8A4(&v23, v25);
  }

  else
  {
    memset(v25, 0, sizeof(v25));
  }

  swift_unknownObjectRetain();
  if (!a4)
  {
    v17 = 0xF000000000000000;
    if (a6)
    {
      goto LABEL_6;
    }

LABEL_8:
    v18 = 0;
    goto LABEL_9;
  }

  v15 = a4;
  a4 = sub_220BCBFB0();
  v17 = v16;

  if (!a6)
  {
    goto LABEL_8;
  }

LABEL_6:
  v18 = sub_220BCDBA0();
  a6 = v19;
LABEL_9:
  v20 = a7;
  v22(v12, v14, v25, a4, v17, a5, v18, a6, a7);

  sub_220B6C8D4(a4, v17);

  return sub_220B463F4(v25, &qword_27CF77050, &unk_220BD2180);
}

void sub_220B6C6D4()
{
  v1 = [objc_opt_self() defaultManager];
  v2 = OBJC_IVAR____TtC6TipsUI17RemoteImageLoader_urlSessionItem;
  [v1 cancelSessionItem_];

  v3 = *(v0 + v2);
  *(v0 + v2) = 0;

  swift_getKeyPath();
  swift_getKeyPath();
  sub_220BCC4C0();

  if (v5)
  {
    sub_220B485EC(v4, v5);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_220BCC4D0();
  }

  else
  {
    sub_220B485EC(v4, 0);
  }
}

void sub_220B6C7F0(uint64_t a1)
{
  if (!qword_2812C0AA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF76EB0, &qword_220BD1820);
    v1 = sub_220BCC4E0();
    if (!v2)
    {
      atomic_store(v1, &qword_2812C0AA8);
    }
  }
}

uint64_t sub_220B6C854@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for RemoteImageLoader(0);
  result = sub_220BCC420();
  *a2 = result;
  return result;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_220B6C8D4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_220B6C8E8(a1, a2);
  }

  return a1;
}

uint64_t sub_220B6C8E8(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_220B6C93C()
{
  result = qword_2812C0880;
  if (!qword_2812C0880)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2812C0880);
  }

  return result;
}

uint64_t sub_220B6C988()
{
  v0 = sub_220B6CA58();
  v1 = sub_220BCC030();
  if (v1[2])
  {
    v3 = v1[4];
    v2 = v1[5];
  }

  else
  {
    v3 = 0;
    v2 = 0xE000000000000000;
  }

  v8[0] = v3;
  v8[1] = v2;
  MEMORY[0x28223BE20](v4);
  v7[2] = v8;
  v5 = sub_220B9DEE8(sub_220B6CF1C, v7, v0);

  return v5 & 1;
}

id sub_220B6CA58()
{
  v32 = *MEMORY[0x277D85DE8];
  v28 = sub_220BCD630();
  v0 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v2 = &v29[-1] - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_220BCBF80();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v29[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v29[-1] - v8;
  sub_220B6AECC();
  v10 = sub_220BCDEC0();
  if (!v10)
  {
    v10 = [objc_opt_self() mainBundle];
  }

  v11 = v10;
  v12 = sub_220BCDB70();
  v13 = sub_220BCDB70();
  v14 = [v11 URLForResource:v12 withExtension:v13];

  if (!v14)
  {
    goto LABEL_16;
  }

  sub_220BCBF30();

  (*(v4 + 32))(v9, v7, v3);
  v15 = sub_220BCBF90();
  v17 = v16;
  v18 = objc_opt_self();
  v19 = sub_220BCBFA0();
  v29[0] = 0;
  v20 = [v18 propertyListWithData:v19 options:0 format:0 error:v29];

  v21 = v29[0];
  if (!v20)
  {
    v26 = v21;
    v27 = sub_220BCBEF0();

    swift_willThrow();
    sub_220B6C8E8(v15, v17);

LABEL_15:
    (*(v4 + 8))(v9, v3);
    goto LABEL_16;
  }

  sub_220BCDF40();
  swift_unknownObjectRelease();
  sub_220B4F8A4(v30, v31);
  sub_220B506E4(v31, v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76DD8, &qword_220BD1470);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_220B6C8E8(v15, v17);
LABEL_14:
    __swift_destroy_boxed_opaque_existential_1(v31);
    goto LABEL_15;
  }

  v22 = v29[0];
  if (!*(v29[0] + 2) || (v23 = sub_220B7C4A8(0xD000000000000010, 0x8000000220BD7B20), (v24 & 1) == 0))
  {
    sub_220B6C8E8(v15, v17);

    goto LABEL_14;
  }

  sub_220B506E4(v22[7] + 32 * v23, v30);
  sub_220B6C8E8(v15, v17);
  __swift_destroy_boxed_opaque_existential_1(v31);
  (*(v4 + 8))(v9, v3);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76DB8, &qword_220BD1288);
  if (swift_dynamicCast())
  {
    result = v29[0];
    if (*(v29[0] + 2))
    {
      return result;
    }
  }

LABEL_16:
  sub_220BCD620();
  sub_220BCDA50();
  (*(v0 + 8))(v2, v28);
  return MEMORY[0x277D84F90];
}

uint64_t get_enum_tag_for_layout_string_10Foundation3URLVSgIegn_Sg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_220B6CF68(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_220B6CFB0(uint64_t result, int a2, int a3)
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

double sub_220B6D008@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_220B633AC(a1, a2, a3);
  sub_220BCC9E0();
  result = v9;
  *a4 = v6;
  *(a4 + 16) = v7;
  *(a4 + 24) = v8;
  *(a4 + 32) = v9;
  return result;
}

double sub_220B6D07C@<D0>(uint64_t a1@<X8>)
{
  sub_220B89FD4(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

uint64_t AttributionItem.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AttributionItem.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t AttributionItem.group.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t AttributionItem.group.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t AttributionItem.title.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t AttributionItem.title.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t AttributionItem.subtitle.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t AttributionItem.subtitle.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t AttributionItem.actionURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AttributionItem(0) + 32);

  return sub_220B57DC0(v3, a1);
}

uint64_t type metadata accessor for AttributionItem(uint64_t a1)
{
  result = qword_27CF77348;
  if (!qword_27CF77348)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AttributionItem.actionURL.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for AttributionItem(0) + 32);

  return sub_220B55518(a1, v3);
}

uint64_t AttributionItem.init(id:group:title:subtitle:actionURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10)
{
  v18 = *(type metadata accessor for AttributionItem(0) + 32);
  v19 = sub_220BCBF80();
  (*(*(v19 - 8) + 56))(&a9[v18], 1, 1, v19);
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  *(a9 + 4) = a5;
  *(a9 + 5) = a6;
  *(a9 + 6) = a7;
  *(a9 + 7) = a8;

  return sub_220B55518(a10, &a9[v18]);
}

void sub_220B6D50C(uint64_t a1)
{
  sub_220B5D4C8(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_220B6D58C(uint64_t *a1, int a2)
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

uint64_t sub_220B6D5D4(uint64_t result, int a2, int a3)
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

uint64_t sub_220B6D640(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 56) = a2;
  *(v4 + 64) = a4;
  *(v4 + 106) = a3;
  *(v4 + 48) = a1;
  sub_220BCDD00();
  *(v4 + 72) = sub_220BCDCF0();
  v6 = sub_220BCDCB0();
  *(v4 + 80) = v6;
  *(v4 + 88) = v5;

  return MEMORY[0x2822009F8](sub_220B6D6E0, v6, v5);
}

uint64_t sub_220B6D6E0()
{
  v1 = *(v0 + 106);
  *(v0 + 16) = v1;
  *(v0 + 24) = *(v0 + 64);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77368, &qword_220BD2C60);
  sub_220BCD2F0();
  if (*(v0 + 104))
  {

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    v4 = *(v0 + 64);
    *(v0 + 32) = v1;
    v5 = *(v0 + 48);
    *(v0 + 40) = v4;
    *(v0 + 105) = 1;
    sub_220BCD300();

    v7 = (v5 + *v5);
    v6 = swift_task_alloc();
    *(v0 + 96) = v6;
    *v6 = v0;
    v6[1] = sub_220B6D894;

    return v7();
  }
}

uint64_t sub_220B6D894()
{
  v1 = *v0;

  v2 = *(v1 + 88);
  v3 = *(v1 + 80);

  return MEMORY[0x2822009F8](sub_220B6D9B4, v3, v2);
}

uint64_t sub_220B6D9B4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_220B6DA14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *v2;
  v5 = v2[1];
  v7 = *(v2 + 16);
  v8 = v2[3];
  v9 = swift_allocObject();
  *(v9 + 16) = v6;
  *(v9 + 24) = v5;
  *(v9 + 32) = v7;
  *(v9 + 40) = v8;
  v10 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77358, &qword_220BD2C50) + 36));
  sub_220BCC750();

  sub_220BCDD20();
  *v10 = &unk_220BD2C48;
  v10[1] = v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77360, &qword_220BD2C58);
  v12 = *(*(v11 - 8) + 16);

  return v12(a2, a1, v11);
}

uint64_t sub_220B6DB28()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_220B4EA34;

  return sub_220B6D640(v2, v3, v4, v5);
}

unint64_t sub_220B6DBD8()
{
  result = qword_27CF77370;
  if (!qword_27CF77370)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF77358, &qword_220BD2C50);
    sub_220B6DC64();
    sub_220B6DCC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF77370);
  }

  return result;
}

unint64_t sub_220B6DC64()
{
  result = qword_27CF77378;
  if (!qword_27CF77378)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF77360, &qword_220BD2C58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF77378);
  }

  return result;
}

unint64_t sub_220B6DCC8()
{
  result = qword_27CF77380;
  if (!qword_27CF77380)
  {
    sub_220BCC750();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF77380);
  }

  return result;
}

uint64_t TPSSearchQueryClient.performQuery(_:)(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](sub_220B6DD40, 0, 0);
}

uint64_t sub_220B6DD40()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  v1[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v3 = sub_220BCD770();
  *v2 = v0;
  v2[1] = sub_220B6DE40;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000010, 0x8000000220BD6DF0, sub_220B4E850, v1, v3);
}

uint64_t sub_220B6DE40()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_220B6DF78;
  }

  else
  {

    v2 = sub_220B6DF5C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_220B6DF78()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_220B6DFDC(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77388, &unk_220BD2C70);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = aBlock - v8;
  (*(v7 + 16))(aBlock - v8, a1, v6);
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = swift_allocObject();
  (*(v7 + 32))(v11 + v10, v9, v6);
  aBlock[4] = sub_220B6E298;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_220B6E324;
  aBlock[3] = &block_descriptor_4;
  v12 = _Block_copy(aBlock);

  [a2 performQuery:a3 completion:v12];
  _Block_release(v12);
}

uint64_t sub_220B6E194(void *a1, id a2)
{
  if (a1)
  {
    v2 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77388, &unk_220BD2C70);
    return sub_220BCDCD0();
  }

  else
  {
    if (!a2)
    {
      v4 = sub_220BCD640();
      sub_220B6E3C8();
      swift_allocError();
      (*(*(v4 - 8) + 104))(v5, *MEMORY[0x277D715B0], v4);
      a2 = 0;
    }

    v6 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77388, &unk_220BD2C70);
    return sub_220BCDCC0();
  }
}

uint64_t sub_220B6E298(void *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77388, &unk_220BD2C70);

  return sub_220B6E194(a1, a2);
}

void sub_220B6E324(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_220B6E3C8()
{
  result = qword_27CF77390;
  if (!qword_27CF77390)
  {
    sub_220BCD640();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF77390);
  }

  return result;
}

uint64_t sub_220B6E420(uint64_t a1)
{
  v27 = a1;
  v2 = type metadata accessor for DeviceExpertViewModel(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v24 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF775B8, &unk_220BD2F20);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77398, &qword_220BD2C90);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v23 - v13;
  v25 = type metadata accessor for DeviceExpertClientView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF773C8, &unk_220BD2CF0);
  v26 = v1;
  sub_220BCD2F0();
  v15 = *(v6 + 56);
  sub_220B462DC(v27, v8, &qword_27CF77398, &qword_220BD2C90);
  sub_220B462DC(v14, &v8[v15], &qword_27CF77398, &qword_220BD2C90);
  v16 = *(v3 + 48);
  if (v16(v8, 1, v2) == 1)
  {
    sub_220B463F4(v14, &qword_27CF77398, &qword_220BD2C90);
    if (v16(&v8[v15], 1, v2) == 1)
    {
      return sub_220B463F4(v8, &qword_27CF77398, &qword_220BD2C90);
    }

    goto LABEL_6;
  }

  sub_220B462DC(v8, v12, &qword_27CF77398, &qword_220BD2C90);
  if (v16(&v8[v15], 1, v2) == 1)
  {
    sub_220B463F4(v14, &qword_27CF77398, &qword_220BD2C90);
    sub_220B731F0(v12, type metadata accessor for DeviceExpertViewModel);
LABEL_6:
    sub_220B463F4(v8, &qword_27CF775B8, &unk_220BD2F20);
LABEL_7:
    v18 = (v26 + *(v25 + 28));
    v19 = *v18;
    v20 = *(v18 + 1);
    v29 = v19;
    v30 = v20;
    v28 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77368, &qword_220BD2C60);
    return sub_220BCD300();
  }

  v21 = v24;
  sub_220B73120(&v8[v15], v24, type metadata accessor for DeviceExpertViewModel);
  v22 = sub_220B7F278(v12, v21);
  sub_220B731F0(v21, type metadata accessor for DeviceExpertViewModel);
  sub_220B463F4(v14, &qword_27CF77398, &qword_220BD2C90);
  sub_220B731F0(v12, type metadata accessor for DeviceExpertViewModel);
  result = sub_220B463F4(v8, &qword_27CF77398, &qword_220BD2C90);
  if ((v22 & 1) == 0)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t DeviceExpertClientView.init(response:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77398, &qword_220BD2C90);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v20[-v8];
  *a2 = swift_getKeyPath();
  v10 = type metadata accessor for DeviceExpertClientView(0);
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0;
  v11 = type metadata accessor for DeviceExpertViewModel(0);
  (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  sub_220B462DC(v9, v7, &qword_27CF77398, &qword_220BD2C90);
  sub_220BCD2E0();
  sub_220B463F4(v9, &qword_27CF77398, &qword_220BD2C90);
  v12 = a2 + v10[7];
  v20[15] = 1;
  sub_220BCD2E0();
  v13 = v21;
  *v12 = v20[16];
  *(v12 + 8) = v13;
  v14 = v10[8];
  type metadata accessor for TipsApp();
  v15 = swift_allocObject();
  sub_220BCD990();
  swift_allocObject();
  *(v15 + 24) = sub_220BCD980();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76E00, &unk_220BD1490);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_220BD1BA0;
  if (qword_27CF76908 != -1)
  {
    v19 = v16;
    swift_once();
    v16 = v19;
  }

  v17 = unk_27CF7B2A0;
  *(v16 + 32) = qword_27CF7B298;
  *(v16 + 40) = v17;
  *(v15 + 16) = v16;
  *(a2 + v14) = v15;
  sub_220B46540(a1, a2 + v10[5], &qword_27CF773A0, &qword_220BD2CC8);
}

uint64_t type metadata accessor for DeviceExpertClientView(uint64_t a1)
{
  result = qword_27CF77430;
  if (!qword_27CF77430)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DeviceExpertClientView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v22[1] = a1;
  v2 = type metadata accessor for DeviceExpertClientView(0);
  v22[0] = *(v2 - 8);
  v3 = *(v22[0] + 64);
  MEMORY[0x28223BE20](v2);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF773A8, &qword_220BD2CD0);
  MEMORY[0x28223BE20](v4);
  v6 = v22 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF773B0, &qword_220BD2CD8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF773B8, &qword_220BD2CE0);
  MEMORY[0x28223BE20](v10);
  v12 = v22 - v11;
  *v9 = sub_220BCCB10();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF773C0, &qword_220BD2CE8);
  sub_220B6EE38(&v9[*(v13 + 44)]);
  sub_220BCD470();
  sub_220BCC880();
  sub_220B46540(v9, v12, &qword_27CF773B0, &qword_220BD2CD8);
  v14 = &v12[*(v10 + 36)];
  v15 = v28;
  *(v14 + 4) = v27;
  *(v14 + 5) = v15;
  *(v14 + 6) = v29;
  v16 = v24;
  *v14 = v23;
  *(v14 + 1) = v16;
  v17 = v26;
  *(v14 + 2) = v25;
  *(v14 + 3) = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF773A0, &qword_220BD2CC8);
  MEMORY[0x223D92130](v18);
  sub_220B73188(v1, v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DeviceExpertClientView);
  v19 = (*(v22[0] + 80) + 16) & ~*(v22[0] + 80);
  v20 = swift_allocObject();
  sub_220B73120(v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19, type metadata accessor for DeviceExpertClientView);
  sub_220B724EC();
  sub_220B725A4();
  sub_220BCD120();

  sub_220B463F4(v6, &qword_27CF773A8, &qword_220BD2CD0);
  return sub_220B463F4(v12, &qword_27CF773B8, &qword_220BD2CE0);
}

uint64_t sub_220B6EE38@<X0>(uint64_t a1@<X8>)
{
  v20 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77428, &qword_220BD2D30);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v19 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77398, &qword_220BD2C90);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v19 - v6;
  v8 = type metadata accessor for DeviceExpertViewModel(0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v19 - v13;
  type metadata accessor for DeviceExpertClientView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF773C8, &unk_220BD2CF0);
  sub_220BCD2F0();
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_220B463F4(v7, &qword_27CF77398, &qword_220BD2C90);
LABEL_6:
    v17 = 1;
    v16 = v20;
    return (*(v2 + 56))(v16, v17, 1, v1);
  }

  sub_220B73120(v7, v14, type metadata accessor for DeviceExpertViewModel);
  sub_220B73188(v14, v12, type metadata accessor for DeviceExpertViewModel);
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    sub_220B731F0(v14, type metadata accessor for DeviceExpertViewModel);
    goto LABEL_6;
  }

  sub_220B731F0(v12, type metadata accessor for DeviceExpertViewModel);
  DeviceExpertClientView.deviceExpertView.getter(v4);
  sub_220B731F0(v14, type metadata accessor for DeviceExpertViewModel);
  v15 = v20;
  sub_220B46540(v4, v20, &qword_27CF77428, &qword_220BD2D30);
  v16 = v15;
  v17 = 0;
  return (*(v2 + 56))(v16, v17, 1, v1);
}

uint64_t DeviceExpertClientView.deviceExpertView.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v67 = a1;
  v3 = sub_220BCCA10();
  v65 = *(v3 - 8);
  v66 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v63 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v64 = &v59 - v6;
  v61 = type metadata accessor for DeviceExpertViewModel(0);
  v7 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v59 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77398, &qword_220BD2C90);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v59 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76D78, &unk_220BD11C0);
  MEMORY[0x28223BE20](v12 - 8);
  v62 = &v59 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF773F0, &qword_220BD2D00);
  v15 = v14 - 8;
  MEMORY[0x28223BE20](v14);
  v17 = &v59 - v16;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF773F8, &qword_220BD2D08);
  MEMORY[0x28223BE20](v60);
  v19 = &v59 - v18;
  *v17 = sub_220BCCA40();
  *(v17 + 1) = 0;
  v17[16] = 1;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77400, &qword_220BD2D10);
  sub_220B70804(v2, &v17[*(v20 + 44)]);
  v21 = sub_220BCCD60();
  sub_220BCC590();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77408, &qword_220BD2D18) + 36)];
  *v30 = v21;
  *(v30 + 1) = v23;
  *(v30 + 2) = v25;
  *(v30 + 3) = v27;
  *(v30 + 4) = v29;
  v30[40] = 0;
  v31 = [objc_opt_self() quaternarySystemFillColor];
  v32 = sub_220BCD150();
  v33 = sub_220BCCD60();
  v34 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77410, &qword_220BD2D20) + 36)];
  *v34 = v32;
  v34[8] = v33;
  v35 = sub_220BCD460();
  v37 = v36;
  v38 = &v17[*(v15 + 44)];
  v39 = v38 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77418, &qword_220BD2D28) + 36);
  v40 = *(sub_220BCC870() + 20);
  v41 = *MEMORY[0x277CE0118];
  v42 = sub_220BCCAC0();
  (*(*(v42 - 8) + 104))(&v39[v40], v41, v42);
  __asm { FMOV            V0.2D, #24.0 }

  *v39 = _Q0;
  *v38 = v35;
  v38[1] = v37;
  type metadata accessor for DeviceExpertClientView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF773C8, &unk_220BD2CF0);
  sub_220BCD2F0();
  if ((*(v7 + 48))(v11, 1, v61))
  {
    sub_220B463F4(v11, &qword_27CF77398, &qword_220BD2C90);
    v48 = type metadata accessor for AttributionItem(0);
    v49 = v62;
    (*(*(v48 - 8) + 56))(v62, 1, 1, v48);
  }

  else
  {
    v50 = v59;
    sub_220B73188(v11, v59, type metadata accessor for DeviceExpertViewModel);
    sub_220B463F4(v11, &qword_27CF77398, &qword_220BD2C90);
    v49 = v62;
    sub_220B7F038(v62);
    sub_220B731F0(v50, type metadata accessor for DeviceExpertViewModel);
  }

  v51 = &v19[*(v60 + 36)];
  v52 = type metadata accessor for AttributionActionModifier(0);
  sub_220B46540(v49, &v51[*(v52 + 20)], &qword_27CF76D78, &unk_220BD11C0);
  *v51 = swift_getKeyPath();
  *(v51 + 8) = 0u;
  *(v51 + 24) = 0u;
  v51[40] = 0;
  sub_220B46540(v17, v19, &qword_27CF773F0, &qword_220BD2D00);
  v53 = v64;
  sub_220BCCA00();
  v55 = v65;
  v54 = v66;
  (*(v65 + 16))(v63, v53, v66);
  sub_220B72FF8(&qword_27CF77420, MEMORY[0x277CE0068], MEMORY[0x277CE0060]);
  v56 = sub_220BCC6D0();
  (*(v55 + 8))(v53, v54);
  v57 = v67;
  sub_220B46540(v19, v67, &qword_27CF773F8, &qword_220BD2D08);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77428, &qword_220BD2D30);
  *(v57 + *(result + 36)) = v56;
  return result;
}

uint64_t sub_220B6F7AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for DeviceExpertClientView(0);
  v23 = *(v5 - 8);
  v6 = *(v23 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF773A8, &qword_220BD2CD0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v11 = &v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76E08, &qword_220BD2F00);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v22 - v13;
  v15 = sub_220BCDD40();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  sub_220B462DC(a2, v11, &qword_27CF773A8, &qword_220BD2CD0);
  sub_220B73188(a3, &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DeviceExpertClientView);
  sub_220BCDD00();
  v16 = sub_220BCDCF0();
  v17 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v18 = (v9 + *(v23 + 80) + v17) & ~*(v23 + 80);
  v19 = swift_allocObject();
  v20 = MEMORY[0x277D85700];
  *(v19 + 16) = v16;
  *(v19 + 24) = v20;
  sub_220B46540(v11, v19 + v17, &qword_27CF773A8, &qword_220BD2CD0);
  sub_220B73120(&v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, type metadata accessor for DeviceExpertClientView);
  sub_220BA5594(0, 0, v14, &unk_220BD2F10, v19);
}

uint64_t sub_220B6FA64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF773A8, &qword_220BD2CD0);
  v5[4] = swift_task_alloc();
  v6 = sub_220BCC2E0();
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();
  sub_220BCDD00();
  v5[8] = sub_220BCDCF0();
  v8 = sub_220BCDCB0();
  v5[9] = v8;
  v5[10] = v7;

  return MEMORY[0x2822009F8](sub_220B6FB90, v8, v7);
}

uint64_t sub_220B6FB90()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[4];
  sub_220B462DC(v0[2], v3, &qword_27CF773A8, &qword_220BD2CD0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_220B463F4(v0[4], &qword_27CF773A8, &qword_220BD2CD0);
    v4 = swift_task_alloc();
    v0[12] = v4;
    *v4 = v0;
    v4[1] = sub_220B6FEF4;
    v5 = v0[2];

    return sub_220B70088(v5);
  }

  else
  {
    (*(v0[6] + 32))(v0[7], v0[4], v0[5]);
    type metadata accessor for DeviceExpertClientView(0);
    v7 = swift_task_alloc();
    v0[11] = v7;
    *v7 = v0;
    v7[1] = sub_220B6FD28;
    v8 = v0[7];

    return sub_220B7430C(v8);
  }
}

uint64_t sub_220B6FD28()
{
  v1 = *v0;

  v2 = *(v1 + 80);
  v3 = *(v1 + 72);

  return MEMORY[0x2822009F8](sub_220B6FE48, v3, v2);
}

uint64_t sub_220B6FE48()
{
  (*(v0[6] + 8))(v0[7], v0[5]);
  v1 = swift_task_alloc();
  v0[12] = v1;
  *v1 = v0;
  v1[1] = sub_220B6FEF4;
  v2 = v0[2];

  return sub_220B70088(v2);
}

uint64_t sub_220B6FEF4()
{
  v1 = *v0;

  v2 = *(v1 + 80);
  v3 = *(v1 + 72);

  return MEMORY[0x2822009F8](sub_220B70014, v3, v2);
}

uint64_t sub_220B70014()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_220B70088(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v3 = sub_220BCC120();
  v2[13] = v3;
  v2[14] = *(v3 - 8);
  v2[15] = swift_task_alloc();
  v4 = sub_220BCD630();
  v2[16] = v4;
  v2[17] = *(v4 - 8);
  v2[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77398, &qword_220BD2C90);
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v5 = sub_220BCC2E0();
  v2[22] = v5;
  v2[23] = *(v5 - 8);
  v2[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF773A8, &qword_220BD2CD0);
  v2[25] = swift_task_alloc();
  sub_220BCDD00();
  v2[26] = sub_220BCDCF0();
  v7 = sub_220BCDCB0();

  return MEMORY[0x2822009F8](sub_220B702BC, v7, v6);
}

uint64_t sub_220B702BC()
{
  v1 = v0[25];
  v2 = v0[22];
  v3 = v0[23];
  v4 = v0[11];

  sub_220B462DC(v4, v1, &qword_27CF773A8, &qword_220BD2CD0);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v6 = v0[20];
    v5 = v0[21];
    v7 = type metadata accessor for DeviceExpertViewModel(0);
    (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
    sub_220B6E420(v5);
    type metadata accessor for DeviceExpertClientView(0);
    sub_220B462DC(v5, v6, &qword_27CF77398, &qword_220BD2C90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF773C8, &unk_220BD2CF0);
    sub_220BCD300();
    sub_220B463F4(v5, &qword_27CF77398, &qword_220BD2C90);
    goto LABEL_9;
  }

  v9 = v0[20];
  v8 = v0[21];
  v31 = v0[19];
  v10 = v0[12];
  (*(v0[23] + 32))(v0[24], v0[25], v0[22]);
  v11 = *(v10 + *(type metadata accessor for DeviceExpertClientView(0) + 32));
  v12 = type metadata accessor for TipsApp();
  v0[2] = v11;
  v0[5] = v12;
  v0[6] = &off_28345CDC0;

  sub_220B46634((v0 + 2), v8);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v13 = type metadata accessor for DeviceExpertViewModel(0);
  v14 = *(v13 - 8);
  (*(v14 + 56))(v8, 0, 1, v13);
  sub_220B6E420(v8);
  sub_220B462DC(v8, v9, &qword_27CF77398, &qword_220BD2C90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF773C8, &unk_220BD2CF0);
  sub_220BCD300();
  sub_220B463F4(v8, &qword_27CF77398, &qword_220BD2C90);
  sub_220BCD2F0();
  v15 = (*(v14 + 48))(v31, 1, v13);
  v16 = v0[19];
  if (v15 == 1)
  {
    sub_220B463F4(v0[19], &qword_27CF77398, &qword_220BD2C90);
LABEL_7:
    v19 = v0[23];
    v18 = v0[24];
    v32 = v0[22];
    v21 = v0[17];
    v20 = v0[18];
    v26 = v0[15];
    v22 = v0[16];
    v28 = v0[13];
    v27 = v0[14];
    sub_220BCD620();
    sub_220BCDFB0();
    v0[7] = 0;
    v0[8] = 0xE000000000000000;
    MEMORY[0x223D929B0](0xD00000000000003CLL, 0x8000000220BD7BD0);
    sub_220BCC140();
    sub_220BCE070();
    (*(v27 + 8))(v26, v28);
    goto LABEL_8;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_220B731F0(v16, type metadata accessor for DeviceExpertViewModel);
  if (EnumCaseMultiPayload != 2)
  {
    goto LABEL_7;
  }

  v19 = v0[23];
  v18 = v0[24];
  v32 = v0[22];
  v21 = v0[17];
  v20 = v0[18];
  v23 = v0[15];
  v22 = v0[16];
  v25 = v0[13];
  v24 = v0[14];
  sub_220BCD620();
  sub_220BCDFB0();
  v0[9] = 0;
  v0[10] = 0xE000000000000000;
  MEMORY[0x223D929B0](0xD00000000000001ELL, 0x8000000220BD7C10);
  sub_220BCC140();
  sub_220BCE070();
  (*(v24 + 8))(v23, v25);
  MEMORY[0x223D929B0](0xD000000000000044, 0x8000000220BD7C30);
LABEL_8:
  sub_220BCD9E0();

  (*(v21 + 8))(v20, v22);
  (*(v19 + 8))(v18, v32);
LABEL_9:

  v29 = v0[1];

  return v29();
}

uint64_t sub_220B70804@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76CE8, &qword_220BD0D50);
  MEMORY[0x28223BE20](v3 - 8);
  v55 = &v54 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF774B0, &qword_220BD2DC8);
  v58 = *(v5 - 8);
  v59 = v5;
  MEMORY[0x28223BE20](v5);
  v54 = &v54 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77398, &qword_220BD2C90);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v54 - v8;
  v10 = type metadata accessor for DeviceExpertViewModel(0);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v56 = &v54 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF774B8, &qword_220BD2DD0);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v57 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v54 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF774C0, &qword_220BD2DD8);
  v22 = v21 - 8;
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v54 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v54 - v26;
  *v27 = sub_220BCCB20();
  *(v27 + 1) = 0x4024000000000000;
  v27[16] = 0;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF774C8, &unk_220BD2DE0);
  sub_220B70F78(a1, &v27[*(v28 + 44)]);
  *&v27[*(v22 + 44)] = 256;
  v29 = (a1 + *(type metadata accessor for DeviceExpertClientView(0) + 28));
  v30 = *v29;
  v31 = *(v29 + 1);
  LOBYTE(v62) = v30;
  v63 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77368, &qword_220BD2C60);
  sub_220BCD2F0();
  if (v61)
  {
    goto LABEL_10;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF773C8, &unk_220BD2CF0);
  sub_220BCD2F0();
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_220B463F4(v9, &qword_27CF77398, &qword_220BD2C90);
LABEL_10:
    v38 = 1;
    v39 = v59;
    goto LABEL_11;
  }

  v32 = v56;
  sub_220B73120(v9, v56, type metadata accessor for DeviceExpertViewModel);
  sub_220B73188(v32, v14, type metadata accessor for DeviceExpertViewModel);
  if (swift_getEnumCaseMultiPayload() > 1)
  {
LABEL_9:
    sub_220B731F0(v32, type metadata accessor for DeviceExpertViewModel);
    goto LABEL_10;
  }

  sub_220B731F0(v14, type metadata accessor for DeviceExpertViewModel);
  v33 = [objc_opt_self() tps_userRegion];
  v34 = sub_220BCDBA0();
  v36 = v35;

  if (v34 == 28259 && v36 == 0xE200000000000000)
  {

    goto LABEL_9;
  }

  v37 = sub_220BCE130();

  if (v37)
  {
    goto LABEL_9;
  }

  v62 = sub_220BCD280();
  sub_220BCCDF0();
  v44 = v54;
  sub_220BCCFE0();

  if (qword_27CF76920 != -1)
  {
    swift_once();
  }

  v45 = xmmword_27CF77798;
  v46 = v44 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF774D8, &qword_220BD2DF8) + 36);
  *v46 = v45;
  v47 = *(&xmmword_27CF77798 + 8);
  *(v46 + 24) = unk_27CF777B0;
  *(v46 + 8) = v47;
  v48 = sub_220BCCDD0();
  v49 = v55;
  (*(*(v48 - 8) + 56))(v55, 1, 1, v48);

  v50 = sub_220BCCE00();
  sub_220B463F4(v49, &qword_27CF76CE8, &qword_220BD0D50);
  sub_220B731F0(v32, type metadata accessor for DeviceExpertViewModel);
  KeyPath = swift_getKeyPath();
  v52 = v59;
  v53 = (v44 + *(v59 + 36));
  *v53 = KeyPath;
  v53[1] = v50;
  sub_220B46540(v44, v20, &qword_27CF774B0, &qword_220BD2DC8);
  v39 = v52;
  v38 = 0;
LABEL_11:
  (*(v58 + 56))(v20, v38, 1, v39);
  sub_220B462DC(v27, v25, &qword_27CF774C0, &qword_220BD2DD8);
  v40 = v57;
  sub_220B462DC(v20, v57, &qword_27CF774B8, &qword_220BD2DD0);
  v41 = v60;
  sub_220B462DC(v25, v60, &qword_27CF774C0, &qword_220BD2DD8);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF774D0, &qword_220BD2DF0);
  sub_220B462DC(v40, v41 + *(v42 + 48), &qword_27CF774B8, &qword_220BD2DD0);
  sub_220B463F4(v20, &qword_27CF774B8, &qword_220BD2DD0);
  sub_220B463F4(v27, &qword_27CF774C0, &qword_220BD2DD8);
  sub_220B463F4(v40, &qword_27CF774B8, &qword_220BD2DD0);
  return sub_220B463F4(v25, &qword_27CF774C0, &qword_220BD2DD8);
}