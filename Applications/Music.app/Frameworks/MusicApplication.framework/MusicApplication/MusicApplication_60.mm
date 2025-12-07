uint64_t sub_51AF78(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E710, &qword_B17A38);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = v16 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E760, &qword_B17A50);
  __chkstk_darwin();
  v7 = v16 - v6;
  v8 = *a1;
  if (MenuType.image.getter(*(*a1 + 32)))
  {
    __chkstk_darwin();
    v16[-2] = a1;
    __chkstk_darwin();
    v16[-2] = v9;
    v10 = v9;
    sub_AB75B0();
    (*(v3 + 16))(v7, v5, v2);
    swift_storeEnumTagMultiPayload();
    sub_36A00(&qword_E0E708, &qword_E0E710, &qword_B17A38, &protocol conformance descriptor for Label<A, B>);
    sub_AB6610();

    return (*(v3 + 8))(v5, v2);
  }

  else
  {
    v16[0] = MenuType.title.getter(*(v8 + 32));
    v16[1] = v12;
    sub_4FD6CC();
    *v7 = sub_AB6F20();
    *(v7 + 1) = v13;
    v7[16] = v14 & 1;
    *(v7 + 3) = v15;
    swift_storeEnumTagMultiPayload();
    sub_36A00(&qword_E0E708, &qword_E0E710, &qword_B17A38, &protocol conformance descriptor for Label<A, B>);
    return sub_AB6610();
  }
}

uint64_t sub_51B28C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  MenuType.title.getter(*(*a1 + 32));
  sub_4FD6CC();
  result = sub_AB6F20();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_51B2EC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E780, &qword_B17B58);
  v2 = __chkstk_darwin();
  v4 = &v15[-v3 - 8];
  (*(v0 + 8))(v16, v2);
  v5 = v17;
  v6 = v18;
  __swift_project_boxed_opaque_existential_1(v16, v17);
  if ((*(v6 + 48))(v5, v6))
  {
    sub_AB5650();
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = sub_AB5680();
  (*(*(v8 - 8) + 56))(v4, v7, 1, v8);
  v9 = swift_allocObject();
  v10 = v1[3];
  v9[3] = v1[2];
  v9[4] = v10;
  v11 = v1[5];
  v9[5] = v1[4];
  v9[6] = v11;
  v12 = v1[1];
  v9[1] = *v1;
  v9[2] = v12;
  __chkstk_darwin();
  *(&v14 - 2) = v1;
  *(&v14 - 1) = v16;
  sub_51D0F8(v1, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E788, &qword_B17B60);
  sub_36A00(&qword_E0E790, &qword_E0E788, &qword_B17B60, &protocol conformance descriptor for Label<A, B>);
  sub_AB7680();
  return __swift_destroy_boxed_opaque_existential_0(v16);
}

uint64_t ActionMenuItemStyle.buttonRole.getter@<X0>(char a1@<W0>, void *a2@<X8>)
{
  if (a1)
  {
    sub_AB5650();
    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = sub_AB5680();
  v5 = *(*(v4 - 8) + 56);

  return v5(a2, v3, 1, v4);
}

uint64_t sub_51B598(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E0E4A8, &qword_B178B0);
  sub_5180B0();
  swift_getOpaqueTypeMetadata2();
  sub_AB6620();
  swift_getOpaqueTypeConformance2();
  return swift_getWitnessTable();
}

uint64_t sub_51B670(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E0E4A8, &qword_B178B0);
  sub_5180B0();
  swift_getOpaqueTypeMetadata2();
  sub_AB6620();
  swift_getOpaqueTypeConformance2();
  return swift_getWitnessTable();
}

uint64_t sub_51B75C(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E0E4E0, &qword_B178C8);
  sub_519448();
  sub_AB6D20();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E0E4D8, &qword_B178C0);
  sub_AB5D50();
  swift_getWitnessTable();
  sub_36A00(&qword_E0E4D0, &qword_E0E4D8, &qword_B178C0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_51B894(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E5B0, &qword_B178F8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

void *sub_51B964(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E5B0, &qword_B178F8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_51BA14(uint64_t a1)
{
  type metadata accessor for ActionMenu();
  if (v1 <= 0x3F)
  {
    sub_51BAD0(319);
    if (v2 <= 0x3F)
    {
      sub_51BB34(319);
      if (v3 <= 0x3F)
      {
        sub_51BBC8(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_51BAD0(uint64_t a1)
{
  if (!qword_E0E620)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E0E0A0, &qword_B16AF0);
    v1 = sub_ABA9C0();
    if (!v2)
    {
      atomic_store(v1, &qword_E0E620);
    }
  }
}

void sub_51BB34(uint64_t a1)
{
  if (!qword_E0E628)
  {
    type metadata accessor for ActionMenuView.Excluding();
    sub_51D450(&qword_E0E4F0, type metadata accessor for ActionMenuView.Excluding, &unk_B17910);
    v1 = sub_AB5F30();
    if (!v2)
    {
      atomic_store(v1, &qword_E0E628);
    }
  }
}

void sub_51BBC8(uint64_t a1)
{
  if (!qword_E0E630)
  {
    sub_AB5C70();
    v1 = sub_AB57D0();
    if (!v2)
    {
      atomic_store(v1, &qword_E0E630);
    }
  }
}

double sub_51BC3C(__n128 *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E340, &qword_B18550);
  __chkstk_darwin();
  v3 = &v11[-v2];
  v4 = sub_AB9990();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  sub_AB9940();
  sub_51D0F8(a1, v11);
  v5 = sub_AB9930();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = &protocol witness table for MainActor;
  v7 = a1[3];
  *(v6 + 64) = a1[2];
  *(v6 + 80) = v7;
  v8 = a1[5];
  *(v6 + 96) = a1[4];
  *(v6 + 112) = v8;
  v9 = a1[1];
  *(v6 + 32) = *a1;
  *(v6 + 48) = v9;
  sub_6E35A0(0, 0, v3, &unk_B17B90, v6);

  return result;
}

uint64_t sub_51BD7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = sub_AB9940();
  v4[4] = sub_AB9930();
  v8 = (*(a4 + 40) + **(a4 + 40));
  v6 = swift_task_alloc();
  v4[5] = v6;
  *v6 = v4;
  v6[1] = sub_51BE88;

  return v8();
}

uint64_t sub_51BE88()
{
  *(*v1 + 48) = v0;

  v3 = sub_AB98B0();
  if (v0)
  {
    v4 = sub_51C064;
  }

  else
  {
    v4 = sub_51BFE4;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_51BFE4()
{
  v1 = *(v0 + 16);

  v3 = *(v1 + 64);
  if (v3)
  {
    v3(v2);
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_51C064()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_51C0C8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E798, &qword_B17B68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E7A0, &qword_B17B70);
  sub_51D368();
  sub_51D498();
  return sub_AB75B0();
}

uint64_t sub_51C184(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E7B8, &qword_B17B78);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v9[-v6];
  v10 = a1;
  v11 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E7D0, &qword_B17B80);
  sub_36A00(&qword_E0E7D8, &qword_E0E7D0, &qword_B17B80, &protocol conformance descriptor for TupleView<A>);
  sub_AB56A0();
  v12 = *(a1 + 80);
  sub_36A00(&qword_E0E7B0, &qword_E0E7B8, &qword_B17B78, &protocol conformance descriptor for LabelGroup<A>);
  sub_4FD6CC();
  sub_AB7160();
  return (*(v5 + 8))(v7, v4);
}

double sub_51C344@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 56);
  v6 = a2[3];
  v7 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v6);
  if ((v5 & 1) == 0)
  {
    goto LABEL_4;
  }

  (*(v7 + 16))(v6, v7);
  if (!v8)
  {
    v6 = a2[3];
    v7 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v6);
LABEL_4:
    (*(v7 + 8))(v6, v7);
  }

  sub_4FD6CC();
  v9 = sub_AB6F20();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = a2[3];
  v16 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v17);
  (*(v16 + 24))(v17, v16);
  v18 = sub_AB6F20();
  v20 = v19;
  LOBYTE(v16) = v21 & 1;
  *a3 = v9;
  *(a3 + 8) = v11;
  *(a3 + 16) = v13 & 1;
  *(a3 + 24) = v15;
  *(a3 + 32) = v18;
  *(a3 + 40) = v19;
  *(a3 + 48) = v21 & 1;
  *(a3 + 56) = v22;
  sub_AFF30(v9, v11, v13 & 1);

  sub_AFF30(v18, v20, v16);

  sub_36B74(v18, v20, v16);

  sub_36B74(v9, v11, v13 & 1);

  return result;
}

void sub_51C51C(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *(a1 + 57);
  v6 = a2[3];
  v7 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v6);
  if (v5)
  {
    v8 = (*(v7 + 40))(v6, v7);
    if (v8)
    {
      v12 = v8;
      v13 = v9;
      v14 = v10;
      v15 = v11;
      goto LABEL_6;
    }

    v6 = a2[3];
    v7 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v6);
  }

  v12 = (*(v7 + 32))(v6, v7);
  v13 = v16;
  v14 = v17;
  v15 = v18;
  if (!v12)
  {
    v20 = 0;
    goto LABEL_8;
  }

LABEL_6:

  v20 = v12(v19);
  sub_51D514(v12, v13, v14, v15);

LABEL_8:
  *a3 = v20;
}

uint64_t sub_51C664(uint64_t a1)
{
  sub_AB5C70();
  v2 = __chkstk_darwin();
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  return sub_AB6010();
}

uint64_t sub_51C734(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActionMenuView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_51C798()
{
  v1 = type metadata accessor for ActionMenuView(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);

  if (*(v0 + v2 + 16))
  {
  }

  v3 = *(v1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E6C8, &qword_B17A18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_AB5C70();
    (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_51C8E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActionMenuView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_51C948@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ActionMenuView(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_51A884(a1, (v2 + v6), v7, a2);
}

unint64_t sub_51C9F4()
{
  result = qword_E0E6E8;
  if (!qword_E0E6E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E0E6D8, &qword_B17A28);
    sub_51CAB0();
    sub_51D450(&qword_E0E4C8, type metadata accessor for ActionMenuView, &unk_B17948);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E0E6E8);
  }

  return result;
}

unint64_t sub_51CAB0()
{
  result = qword_E0E6F0;
  if (!qword_E0E6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E0E6F0);
  }

  return result;
}

unint64_t sub_51CB0C()
{
  result = qword_E0E700;
  if (!qword_E0E700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E0E6F8, &qword_B17A30);
    sub_36A00(&qword_E0E708, &qword_E0E710, &qword_B17A38, &protocol conformance descriptor for Label<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E0E700);
  }

  return result;
}

unint64_t sub_51CBC4()
{
  result = qword_E0E718;
  if (!qword_E0E718)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E0E6B8, &qword_B179E0);
    sub_51CC50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E0E718);
  }

  return result;
}

unint64_t sub_51CC50()
{
  result = qword_E0E720;
  if (!qword_E0E720)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E0E728, &qword_B17A40);
    sub_51C9F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E0E720);
  }

  return result;
}

unint64_t sub_51CCD4()
{
  result = qword_E0E740;
  if (!qword_E0E740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E0E6B0, &qword_B179D8);
    sub_36A00(&qword_E0E730, &qword_E0E680, &qword_B179A8, &protocol conformance descriptor for TupleView<A>);
    sub_36A00(&qword_E0E738, &qword_E0E670, &qword_B17998, &protocol conformance descriptor for Menu<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E0E740);
  }

  return result;
}

uint64_t sub_51CDB8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_AB6240();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E6C8, &qword_B17A18);
  __chkstk_darwin();
  v9 = &v14 - v8;
  sub_15F84(v2, &v14 - v8, &qword_E0E6C8, &qword_B17A18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_AB5C70();
    return (*(*(v10 - 8) + 32))(a1, v9, v10);
  }

  else
  {
    v12 = sub_AB9F40();
    v13 = sub_AB6A40();
    sub_AB4A90(v12, &dword_0, v13, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    sub_AB6230();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_51CFF0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  result = sub_AB7520();
  *a1 = result;
  return result;
}

double sub_51D020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if ((a1 & 0x8000000000000000) == 0)
  {
  }

  return result;
}

uint64_t sub_51D09C(uint64_t a1)
{
  v2 = type metadata accessor for ActionMenuView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_51D18C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_51D1D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_51D240()
{
  result = qword_E0E770;
  if (!qword_E0E770)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E0E778, &qword_B17B00);
    sub_51CCD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E0E770);
  }

  return result;
}

uint64_t sub_51D2E8()
{

  if (*(v0 + 80))
  {
  }

  return swift_deallocObject();
}

unint64_t sub_51D368()
{
  result = qword_E0E7A8;
  if (!qword_E0E7A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E0E798, &qword_B17B68);
    sub_36A00(&qword_E0E7B0, &qword_E0E7B8, &qword_B17B78, &protocol conformance descriptor for LabelGroup<A>);
    sub_51D450(&qword_E0E7C0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E0E7A8);
  }

  return result;
}

uint64_t sub_51D450(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_51D498()
{
  result = qword_E0E7C8;
  if (!qword_E0E7C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E0E7A0, &qword_B17B70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E0E7C8);
  }

  return result;
}

double sub_51D514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
  }

  return result;
}

uint64_t sub_51D560()
{
  swift_unknownObjectRelease();

  if (*(v0 + 96))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_51D5C8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_17BD0;

  return sub_51BD7C(a1, v4, v5, v1 + 32);
}

UIMenu_optional __swiftcall ActionMenuBuilder.uiMenu(excluding:includeUnsupported:)(Swift::OpaquePointer excluding, Swift::Bool includeUnsupported)
{
  v4 = ActionMenuBuilder.menu(excluding:includeUnsupported:)(excluding._rawValue, includeUnsupported);
  v6 = v5;
  v7 = _swiftEmptyArrayStorage;
  ActionMenu.elements(excluding:includeUnsupported:)(_swiftEmptyArrayStorage, 0);
  v9 = v8;

  v10 = *(v9 + 16);
  if (v10)
  {
    v38 = v6;
    v41 = _swiftEmptyArrayStorage;
    sub_ABAEC0();
    v11 = 32;
    v12 = v10;
    do
    {
      v13 = *(v9 + v11);
      v14 = *(v9 + v11 + 16);
      v15 = *(v9 + v11 + 32);
      v43 = *(v9 + v11 + 48);
      v42[1] = v14;
      v42[2] = v15;
      v42[0] = v13;
      sub_51EA04(v42, v40);
      v16._rawValue = excluding._rawValue;
      sub_51DA58(v4, v10, v16, includeUnsupported);
      sub_51EA60(v42);
      sub_ABAE90();
      sub_ABAED0();
      sub_ABAEE0();
      sub_ABAEA0();
      v11 += 56;
      --v12;
    }

    while (v12);

    v17 = v41;
    v6 = v38;
    v7 = _swiftEmptyArrayStorage;
  }

  else
  {

    v17 = _swiftEmptyArrayStorage;
  }

  v18 = 0;
  v40[0] = _swiftEmptyArrayStorage;
  v19 = v17[2];
  while (v19 != v18)
  {
    if (v18 >= v17[2])
    {
      __break(1u);
LABEL_28:
      if (!sub_ABB060())
      {
        goto LABEL_29;
      }

LABEL_15:
      v23 = *(v4 + 32);
      v39 = MenuType.title.getter(*(v4 + 32));
      v25 = v24;
      v26 = MenuType.image.getter(v23);
      v27 = (MenuType.style.getter(v23) & 1) == 0;
      if (v18)
      {
        v29 = sub_ABB060();
      }

      else
      {
        v29 = *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8));
      }

      if (MenuType.rawValue.getter(v23, v28) == 0x7463416B63697571 && v30 == 0xEB000000006E6F69)
      {

        if (v29 <= 1)
        {
          goto LABEL_25;
        }

LABEL_24:
        v32 = 1;
      }

      else
      {
        v31 = sub_ABB3C0();

        if ((v31 & 1) != 0 && v29 >= 2)
        {
          goto LABEL_24;
        }

LABEL_25:
        v32 = 2;
      }

      sub_13C80(0, &qword_E0E1E8, UIMenu_ptr);
      v46._countAndFlagsBits = v39;
      v46._object = v25;
      v47.value._countAndFlagsBits = 0;
      v47.value._object = 0;
      v45.value.super.isa = v26;
      v45.is_nil = 0;
      v33.value = v27;
      v34.super.super.isa = sub_ABA5B0(v46, v47, v45, v33, v32, v7, v37).super.super.isa;

      goto LABEL_30;
    }

    v20 = v17[v18++ + 4];
    if (v20)
    {
      v21 = v20;
      sub_AB9730();
      if (*(&dword_10 + (v40[0] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v40[0] & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_AB97A0();
      }

      sub_AB97F0();
      v7 = v40[0];
    }
  }

  v6(v22);
  v18 = v7 >> 62;
  if (v7 >> 62)
  {
    goto LABEL_28;
  }

  if (*(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_15;
  }

LABEL_29:

  v34.super.super.isa = 0;
LABEL_30:
  isa = v34.super.super.isa;
  result.value.super.super.isa = isa;
  result.is_nil = v35;
  return result;
}

id sub_51DA58(uint64_t a1, uint64_t a2, Swift::OpaquePointer excluding, char a4)
{
  v6 = *v4;
  if (*v4 < 0)
  {
    v15 = (v6 & 0x7FFFFFFFFFFFFFFFLL);
    v16 = ActionMenu.uiMenu(excluding:includeUnsupported:)(excluding, a4 & 1);
    v17 = v16;
    if (v16)
    {
      v18 = v16;
      sub_ABAD90(20);

      v88 = 0xD000000000000012;
      v89 = 0x8000000000B6A540;
      sub_AB94A0(v15[1]);
      if (qword_E0CF98 != -1)
      {
        swift_once();
      }

      v88 = qword_E16040;
      v89 = *algn_E16048;

      v92._countAndFlagsBits = 46;
      v92._object = 0xE100000000000000;
      sub_AB94A0(v92);

      v93._countAndFlagsBits = 0xD000000000000012;
      v93._object = 0x8000000000B6A540;
      sub_AB94A0(v93);

      v19 = sub_AB9260();

      [v18 setAccessibilityIdentifier:v19];
    }

    return v17;
  }

  v81 = v4[5];
  v82 = v4[6];
  v10 = v4[3];
  v9 = v4[4];
  v79 = v4[1];
  v80 = v4[2];
  v79(&v88, a1, a2, excluding._rawValue);
  v13 = MenuType.rawValue.getter(*(a1 + 32), v11) == 0x7463416B63697571 && v12 == 0xEB000000006E6F69;
  v86 = v6;
  if (v13)
  {

    if (a4)
    {
LABEL_16:
      v22 = 0;
LABEL_17:
      v23 = v90;
      v24 = v91;
      __swift_project_boxed_opaque_existential_1(&v88, v90);
      v25 = (*(v24 + 32))(v23, v24);
      v84 = v26;
      v28 = v27;
      v85 = v29;
      goto LABEL_18;
    }
  }

  else
  {
    v14 = sub_ABB3C0();

    if (v14 & 1) == 0 || (a4)
    {
      goto LABEL_16;
    }
  }

  if (a2 < 2)
  {
    goto LABEL_16;
  }

  v20 = [objc_opt_self() currentTraitCollection];
  v21 = [v20 preferredContentSizeCategory];

  LOBYTE(v20) = sub_ABA320();
  if (v20)
  {
    goto LABEL_16;
  }

  v40 = v90;
  v41 = v91;
  __swift_project_boxed_opaque_existential_1(&v88, v90);
  v42 = (*(v41 + 40))(v40, v41);
  v85 = v45;
  if (!v42)
  {
    v22 = 1;
    goto LABEL_17;
  }

  v25 = v42;
  v28 = v44;
  v84 = v43;
  v22 = 1;
LABEL_18:
  v30 = v10();
  if (v31 == 1)
  {
    v32 = 0;
  }

  else
  {
    sub_501D64(v30, v31);
    v32 = 1;
  }

  v33 = v90;
  v34 = v91;
  __swift_project_boxed_opaque_existential_1(&v88, v90);
  v35 = (*(v34 + 48))(v33, v34);
  v36 = v32 | 2;
  if ((v35 & 1) == 0)
  {
    v36 = v32;
  }

  v78 = v36;
  if (a2 <= 2)
  {
    v22 = 0;
  }

  v37 = v90;
  v38 = v91;
  __swift_project_boxed_opaque_existential_1(&v88, v90);
  if (v22 != 1)
  {
    goto LABEL_31;
  }

  (*(v38 + 16))(v37, v38);
  if (!v39)
  {
    v37 = v90;
    v38 = v91;
    __swift_project_boxed_opaque_existential_1(&v88, v90);
LABEL_31:
    (*(v38 + 8))(v37, v38);
  }

  v46 = v10;
  v47 = v90;
  v48 = v91;
  __swift_project_boxed_opaque_existential_1(&v88, v90);
  (*(v48 + 24))(v47, v48);
  v83 = v28;
  v49 = v9;
  if (v25)
  {

    v28(v50);
  }

  sub_13C80(0, &qword_E0E1D0, UIAction_ptr);
  v51 = v90;
  v52 = v91;
  __swift_project_boxed_opaque_existential_1(&v88, v90);
  v53 = (*(v52 + 56))(v51, v52);
  v54 = swift_allocObject();
  v54[2] = v86;
  v54[3] = v79;
  v54[4] = v80;
  v54[5] = v46;
  v54[6] = v49;
  v54[7] = v81;
  v54[8] = v82;

  v77 = v54;
  v76 = v53;
  v55 = sub_ABA7D0();
  v56 = v90;
  v57 = v91;
  __swift_project_boxed_opaque_existential_1(&v88, v90);
  v58 = *(v57 + 8);
  v17 = v55;
  v58(v56, v57);
  v87[0] = v59;
  v60 = v90;
  v61 = v91;
  __swift_project_boxed_opaque_existential_1(&v88, v90);
  v62 = (*(v61 + 24))(v60, v61);
  v63 = 0;
  v87[1] = v62;
  v87[2] = v64;
  v65 = _swiftEmptyArrayStorage;
LABEL_35:
  v66 = &v87[2 * v63];
  while (++v63 != 3)
  {
    v67 = v66 + 2;
    v68 = *v66;
    v66 += 2;
    if (v68)
    {
      v69 = *(v67 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v65 = sub_506314(0, *(v65 + 2) + 1, 1, v65);
      }

      v71 = *(v65 + 2);
      v70 = *(v65 + 3);
      if (v71 >= v70 >> 1)
      {
        v65 = sub_506314((v70 > 1), v71 + 1, 1, v65);
      }

      *(v65 + 2) = v71 + 1;
      v72 = &v65[16 * v71];
      *(v72 + 4) = v69;
      *(v72 + 5) = v68;
      goto LABEL_35;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E12FB0, &qword_B196A0);
  swift_arrayDestroy();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E103E0, &unk_B16BD0);
  sub_51EB04();
  sub_AB9140();

  v73 = sub_AB9260();

  [v17 setAccessibilityLabel:{v73, 0, v78, v76, sub_51EAFC, v77}];

  sub_ABAD90(20);

  v94._countAndFlagsBits = ActionType.rawValue.getter(v86);
  sub_AB94A0(v94);

  if (qword_E0CF98 != -1)
  {
    swift_once();
  }

  v95._countAndFlagsBits = 46;
  v95._object = 0xE100000000000000;
  sub_AB94A0(v95);

  v96._countAndFlagsBits = 0xD000000000000012;
  v96._object = 0x8000000000B6A540;
  sub_AB94A0(v96);

  v74 = sub_AB9260();

  [v17 setAccessibilityIdentifier:v74];
  sub_51D514(v25, v84, v83, v85);

  __swift_destroy_boxed_opaque_existential_0(&v88);
  return v17;
}

UIMenu_optional __swiftcall ActionMenu.uiMenu(excluding:includeUnsupported:)(Swift::OpaquePointer excluding, Swift::Bool includeUnsupported)
{
  v3 = v2;
  ActionMenu.elements(excluding:includeUnsupported:)(excluding._rawValue, includeUnsupported);
  v8 = v7;
  v9 = v6;
  v10 = *(v7 + 16);
  v11 = _swiftEmptyArrayStorage;
  if (v10)
  {
    v41 = v6;
    v44 = _swiftEmptyArrayStorage;
    sub_ABAEC0();
    v12 = 32;
    v13 = v10;
    do
    {
      v14 = *(v8 + v12);
      v15 = *(v8 + v12 + 16);
      v16 = *(v8 + v12 + 32);
      v46 = *(v8 + v12 + 48);
      v45[1] = v15;
      v45[2] = v16;
      v45[0] = v14;
      sub_51EA04(v45, v43);
      v17._rawValue = excluding._rawValue;
      sub_51DA58(v2, v10, v17, includeUnsupported);
      sub_51EA60(v45);
      sub_ABAE90();
      sub_ABAED0();
      sub_ABAEE0();
      sub_ABAEA0();
      v12 += 56;
      --v13;
    }

    while (v13);

    v18 = v44;
    v9 = v41;
    v11 = _swiftEmptyArrayStorage;
  }

  else
  {

    v18 = _swiftEmptyArrayStorage;
  }

  v19 = 0;
  v43[0] = _swiftEmptyArrayStorage;
  v20 = v18[2];
  while (v20 != v19)
  {
    if (v19 >= v18[2])
    {
      __break(1u);
LABEL_28:
      if (!sub_ABB060())
      {
        goto LABEL_29;
      }

LABEL_15:
      v24 = *(v2 + 32);
      v25 = MenuType.title.getter(*(v2 + 32));
      v27 = v26;
      v29 = *(v3 + 40);
      v28 = *(v3 + 48);

      v30 = MenuType.image.getter(v24);
      v31 = (MenuType.style.getter(v24) & 1) == 0;
      if (!includeUnsupported)
      {
        if (v19)
        {
          v42 = sub_ABB060();
        }

        else
        {
          v42 = *(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8));
        }

        if (MenuType.rawValue.getter(v24, v32) == 0x7463416B63697571 && v33 == 0xEB000000006E6F69)
        {

          goto LABEL_23;
        }

        v34 = sub_ABB3C0();

        if (v34)
        {
LABEL_23:
          if (v42 > 1)
          {
            v35 = 1;
LABEL_26:
            sub_13C80(0, &qword_E0E1E8, UIMenu_ptr);
            v49._countAndFlagsBits = v25;
            v49._object = v27;
            v50.value._countAndFlagsBits = v29;
            v50.value._object = v28;
            v48.value.super.isa = v30;
            v48.is_nil = 0;
            v36.value = v31;
            v37.super.super.isa = sub_ABA5B0(v49, v50, v48, v36, v35, v11, v40).super.super.isa;

            goto LABEL_30;
          }
        }
      }

      v35 = 2;
      goto LABEL_26;
    }

    v21 = v18[v19++ + 4];
    if (v21)
    {
      v22 = v21;
      sub_AB9730();
      if (*(&dword_10 + (v43[0] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v43[0] & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_AB97A0();
      }

      sub_AB97F0();
      v11 = v43[0];
    }
  }

  v9(v23);
  v19 = v11 >> 62;
  if (v11 >> 62)
  {
    goto LABEL_28;
  }

  if (*(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_15;
  }

LABEL_29:

  v37.super.super.isa = 0;
LABEL_30:
  isa = v37.super.super.isa;
  result.value.super.super.isa = isa;
  result.is_nil = v38;
  return result;
}

double sub_51E5DC(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E340, &qword_B18550);
  __chkstk_darwin();
  v4 = &v10 - v3;
  v5 = sub_AB9990();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_AB9940();

  v6 = sub_AB9930();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = &protocol witness table for MainActor;
  v8 = *(a2 + 16);
  *(v7 + 32) = *a2;
  *(v7 + 48) = v8;
  *(v7 + 64) = *(a2 + 32);
  *(v7 + 80) = *(a2 + 48);
  sub_6E35A0(0, 0, v4, &unk_B17BA8, v7);

  return result;
}

uint64_t sub_51E73C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = sub_AB9940();
  v4[3] = sub_AB9930();
  v8 = (*(a4 + 40) + **(a4 + 40));
  v6 = swift_task_alloc();
  v4[4] = v6;
  *v6 = v4;
  v6[1] = sub_51E844;

  return v8();
}

uint64_t sub_51E844()
{
  *(*v1 + 40) = v0;

  v3 = sub_AB98B0();
  if (v0)
  {
    v4 = sub_51E9A0;
  }

  else
  {
    v4 = sub_4FFD90;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_51E9A0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_51EAB4()
{

  return swift_deallocObject();
}

unint64_t sub_51EB04()
{
  result = qword_E10E70;
  if (!qword_E10E70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_E103E0, &unk_B16BD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E10E70);
  }

  return result;
}

uint64_t sub_51EB68()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_51EBB8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_17BD0;

  return sub_51E73C(a1, v4, v5, v1 + 32);
}

uint64_t static ActionMenu.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
  {
    return 1;
  }

  else
  {
    return sub_ABB3C0();
  }
}

uint64_t ActionMenuBuilder.menu(excluding:includeUnsupported:)(uint64_t a1, char a2)
{
  v3 = v2;
  v140 = sub_AB3470();
  v6 = *(v140 - 8);
  __chkstk_darwin();
  v139 = v119 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = 0;
  v143 = 0xE000000000000000;
  v145._countAndFlagsBits = 8254;
  v145._object = 0xE200000000000000;
  sub_AB94A0(v145);
  v8 = v2[1];
  v144[0] = *v2;
  v144[1] = v8;
  v144[2] = v2[2];
  sub_ABAF70();
  v9 = v142;
  v10 = v143;
  v11 = sub_506314(0, 1, 1, _swiftEmptyArrayStorage);
  v13 = *(v11 + 16);
  v12 = *(v11 + 24);
  v14 = v13 + 1;
  if (v13 >= v12 >> 1)
  {
    goto LABEL_88;
  }

  while (1)
  {
    v15 = swift_allocObject();
    *(v11 + 16) = v14;
    v16 = v11 + 16 * v13;
    *(v16 + 32) = v9;
    *(v16 + 40) = v10;
    v15[2] = v11;
    v17 = (v15 + 2);
    v18 = (*(v3 + 32))();

    v19 = sub_529574(v18, v15 + 2, a1, a2 & 1);

    if (!*(v19 + 16))
    {
      if (!*(*v17 + 16))
      {
        __break(1u);
        goto LABEL_100;
      }

      sub_529D90(1, 1, 0xD00000000000001CLL, 0x8000000000B6A560);
    }

    v121 = v15;
    *&v144[0] = v19;
    v120 = v19;

    sub_528648(v144);
    v119[1] = 0;
    v13 = 0x654D6E6F69746341;
    v124 = *&v144[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E808, &qword_B17BB0);
    inited = swift_initStackObject();
    v134 = xmmword_AF4EC0;
    *(inited + 16) = xmmword_AF4EC0;
    *(inited + 32) = 0;
    v10 = inited + 32;
    v21 = *(v3 + 16);
    v15 = *(v3 + 24);

    v9 = v139;
    _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
    v14 = sub_AB3440();
    v23 = v22;
    v24 = v6[1];
    v138 = v6 + 1;
    v136 = v24;
    v24(v9, v140);
    v135 = type metadata accessor for ActionMenu();
    v25 = swift_allocObject();
    *(v25 + 88) = 0;
    *(v25 + 96) = 0;
    *(v25 + 16) = v14;
    *(v25 + 24) = v23;
    *(v25 + 32) = 0;
    *(v25 + 40) = 0;
    *(v25 + 48) = 0;
    strcpy(v144, "ActionMenu: ");
    BYTE13(v144[0]) = 0;
    HIWORD(v144[0]) = -5120;

    v11 = v144;
    v137 = v21;
    v146._countAndFlagsBits = v21;
    v146._object = v15;
    sub_AB94A0(v146);

    v26 = *(&v144[0] + 1);
    *(v25 + 56) = *&v144[0];
    *(v25 + 64) = v26;
    *(v25 + 80) = _swiftEmptyArrayStorage;
    *(v25 + 72) = 1;
    *(inited + 40) = v25;
    v6 = sub_529E6C(inited);
    swift_setDeallocating();
    a1 = v124;
    sub_529F60(inited + 32);
    v123 = *(a1 + 16);
    if (!v123)
    {
      break;
    }

    v3 = 0;
    v122 = a1 + 32;
    a2 = 56;
    while (1)
    {
      v12 = *(a1 + 16);
      if (v3 >= v12)
      {
        break;
      }

      v27 = (v122 + 56 * v3);
      v28 = *v27;
      v29 = v27[1];
      v30 = v27[2];
      v10 = v27[3];
      v9 = v27[4];
      v31 = v27[5];
      v13 = v27[6];
      if (*v27 < 0)
      {
        v32 = *(&stru_20.cmd + (v28 & 0x7FFFFFFFFFFFFFFFLL));
        if ((v32 - 1) >= 0xA)
        {
          if (!*(&stru_20.cmd + (v28 & 0x7FFFFFFFFFFFFFFFLL)))
          {
            goto LABEL_9;
          }

          if (v32 == 11)
          {
            v11 = 4;
          }

          else
          {
            v11 = 6;
          }
        }

        else
        {
          v11 = 0;
        }
      }

      else
      {
        v11 = byte_B1804A[v28];
      }

      v14 = v6[2];
      v131 = v28;
      v132 = v29;
      v133 = v30;
      v33 = v31;
      sub_51D020(v28, v29, v30, v10, v9, v31, v13);
      v34 = v33;
      v130 = v13;
      if (!v14 || (v14 = v11, v35 = sub_522174(v11), v34 = v33, (v36 & 1) == 0))
      {
        v127 = v3;
        v129 = v9;
        v128 = v11;
        if ((v11 - 1) >= 0xA)
        {
          if (v11)
          {
            v42 = v34;
            v43 = v10;
            v45 = 0;
            if (v11 == 11)
            {
              v44 = 4;
            }

            else
            {
              v44 = 6;
            }

            goto LABEL_24;
          }

          sub_529FC8(v131, v132, v133, v10, v9, v34, v13);
          goto LABEL_8;
        }

        v42 = v34;
        v43 = v10;
        v44 = 0;
        v45 = 1;
LABEL_24:
        v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E0E2C0, &unk_B16C30);
        v47 = swift_allocObject();
        *(v47 + 16) = v134;
        v48 = v132;
        *(v47 + 32) = v131;
        *(v47 + 40) = v48;
        *(v47 + 48) = v133;
        *(v47 + 56) = v43;
        v49 = v129;
        *(v47 + 64) = v129;
        *(v47 + 72) = v42;
        v50 = v130;
        *(v47 + 80) = v130;

        v125 = v43;
        v51 = v43;
        v13 = v50;
        v126 = v42;
        sub_51D020(v131, v132, v133, v51, v49, v42, v50);
        v52 = v139;
        _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
        v53 = sub_AB3440();
        v55 = v54;
        v136(v52, v140);
        v56 = swift_allocObject();
        *(v56 + 88) = 0;
        *(v56 + 96) = 0;
        *(v56 + 16) = v53;
        *(v56 + 24) = v55;
        v57 = v128;
        *(v56 + 32) = v128;
        *(v56 + 40) = 0;
        *(v56 + 48) = 0;
        strcpy(v144, "ActionMenu: ");
        BYTE13(v144[0]) = 0;
        HIWORD(v144[0]) = -5120;
        v147._countAndFlagsBits = v137;
        v147._object = v15;
        sub_AB94A0(v147);

        v58 = *(&v144[0] + 1);
        *(v56 + 56) = *&v144[0];
        *(v56 + 64) = v58;
        *(v56 + 80) = v47;
        *(v56 + 72) = 1;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v144[0] = v6;
        sub_52583C(v56, v57, isUniquelyReferenced_nonNull_native);
        v6 = *&v144[0];
        if (*(*&v144[0] + 16))
        {
          v60 = sub_522174(v44);
          if (v61)
          {
LABEL_40:
            v11 = *(v6[7] + 8 * v60);

            swift_beginAccess();
            v14 = *(v11 + 80);
            v81 = swift_isUniquelyReferenced_nonNull_native();
            *(v11 + 80) = v14;
            a1 = v124;
            v10 = v125;
            if ((v81 & 1) == 0)
            {
              v14 = sub_506420(0, *(v14 + 16) + 1, 1, v14);
              *(v11 + 80) = v14;
            }

            v9 = *(v14 + 16);
            v82 = *(v14 + 24);
            if (v9 >= v82 >> 1)
            {
              v14 = sub_506420((v82 > 1), v9 + 1, 1, v14);
            }

            *(v14 + 16) = v9 + 1;
            a2 = 56;
            v83 = v14 + 56 * v9;
            *(v83 + 32) = v56 | 0x8000000000000000;
            *(v83 + 40) = 0u;
            *(v83 + 56) = 0u;
            *(v83 + 72) = 0u;
            *(v11 + 80) = v14;
            swift_endAccess();

            sub_529FC8(v131, v132, v133, v10, v129, v126, v13);

            v3 = v127;
            goto LABEL_9;
          }
        }

        while (2)
        {
          while (2)
          {
            v62 = swift_allocObject();
            *(v62 + 16) = v134;
            *(v62 + 32) = v56 | 0x8000000000000000;
            *(v62 + 40) = 0u;
            *(v62 + 56) = 0u;
            *(v62 + 72) = 0u;

            v63 = v139;
            _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
            v64 = sub_AB3440();
            v66 = v65;
            v136(v63, v140);
            v56 = swift_allocObject();
            *(v56 + 88) = 0;
            *(v56 + 96) = 0;
            *(v56 + 16) = v64;
            *(v56 + 24) = v66;
            *(v56 + 32) = v44;
            *(v56 + 40) = 0;
            *(v56 + 48) = 0;
            strcpy(v144, "ActionMenu: ");
            BYTE13(v144[0]) = 0;
            HIWORD(v144[0]) = -5120;
            v148._countAndFlagsBits = v137;
            v148._object = v15;
            sub_AB94A0(v148);

            v67 = *(&v144[0] + 1);
            *(v56 + 56) = *&v144[0];
            *(v56 + 64) = v67;
            *(v56 + 80) = v62;
            *(v56 + 72) = 1;

            v68 = swift_isUniquelyReferenced_nonNull_native();
            *&v144[0] = v6;
            v69 = sub_522174(v44);
            v71 = v6[2];
            v72 = (v70 & 1) == 0;
            v73 = __OFADD__(v71, v72);
            v74 = v71 + v72;
            if (v73)
            {
              __break(1u);
LABEL_60:
              __break(1u);
LABEL_61:
              if (v6[2])
              {
                v90 = sub_522174(0);
                if (v91)
                {
                  v10 = *(v6[7] + 8 * v90);
                  v92 = *(v46 + 80);

                  v93 = v139;
                  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
                  v94 = sub_AB3440();
                  v96 = v95;
                  v136(v93, v140);
                  v97 = swift_allocObject();
                  *(v97 + 88) = 0;
                  *(v97 + 96) = 0;
                  *(v97 + 16) = v94;
                  *(v97 + 24) = v96;
                  *(v97 + 32) = 6;
                  *(v97 + 40) = 0;
                  *(v97 + 48) = 0;
                  strcpy(v144, "ActionMenu: ");
                  BYTE13(v144[0]) = 0;
                  HIWORD(v144[0]) = -5120;

                  v149._countAndFlagsBits = v137;
                  v149._object = v15;
                  sub_AB94A0(v149);

                  v98 = *(&v144[0] + 1);
                  *(v97 + 56) = *&v144[0];
                  *(v97 + 64) = v98;
                  *(v97 + 80) = v92;
                  *(v97 + 72) = 1;
                  v19 = v97 | 0x8000000000000000;
                  swift_beginAccess();
                  v17 = *(v10 + 80);
                  v99 = swift_isUniquelyReferenced_nonNull_native();
                  *(v10 + 80) = v17;
                  if (v99)
                  {
                    goto LABEL_64;
                  }

                  goto LABEL_101;
                }

                goto LABEL_68;
              }

              goto LABEL_93;
            }

            v75 = v70;
            if (v6[3] < v74)
            {
              sub_522D14(v74, v68);
              v69 = sub_522174(v44);
              if ((v75 & 1) != (v76 & 1))
              {
                sub_ABB4C0();
                __break(1u);

                __break(1u);
                JUMPOUT(0x51FE70);
              }

              goto LABEL_31;
            }

            if (v68)
            {
LABEL_31:
              v6 = *&v144[0];
              if (v75)
              {
                goto LABEL_32;
              }
            }

            else
            {
              v77 = v69;
              sub_526C30();
              v69 = v77;
              v6 = *&v144[0];
              if (v75)
              {
LABEL_32:
                *(v6[7] + 8 * v69) = v56;

                if (v45)
                {
                  continue;
                }

LABEL_37:
                if (v6[2])
                {
                  v60 = sub_522174(0);
                  if (v80)
                  {
                    v13 = v130;
                    goto LABEL_40;
                  }
                }

                continue;
              }
            }

            break;
          }

          v6[(v69 >> 6) + 8] |= 1 << v69;
          *(v6[6] + v69) = v44;
          *(v6[7] + 8 * v69) = v56;
          v78 = v6[2];
          v73 = __OFADD__(v78, 1);
          v79 = v78 + 1;
          if (v73)
          {
            goto LABEL_60;
          }

          v6[2] = v79;
          if ((v45 & 1) == 0)
          {
            goto LABEL_37;
          }

          continue;
        }
      }

      v13 = v10;
      v11 = *(v6[7] + 8 * v35);
      swift_beginAccess();
      v14 = *(v11 + 80);

      v37 = swift_isUniquelyReferenced_nonNull_native();
      *(v11 + 80) = v14;
      v10 = v9;
      if ((v37 & 1) == 0)
      {
        v14 = sub_506420(0, *(v14 + 16) + 1, 1, v14);
        *(v11 + 80) = v14;
      }

      v9 = *(v14 + 16);
      v38 = *(v14 + 24);
      v39 = v133;
      v40 = v132;
      if (v9 >= v38 >> 1)
      {
        v84 = sub_506420((v38 > 1), v9 + 1, 1, v14);
        v40 = v132;
        v39 = v133;
        v14 = v84;
      }

      *(v14 + 16) = v9 + 1;
      a2 = 56;
      v41 = (v14 + 56 * v9);
      v41[4] = v131;
      v41[5] = v40;
      v41[6] = v39;
      v41[7] = v13;
      v41[8] = v10;
      v41[9] = v33;
      v41[10] = v130;
      *(v11 + 80) = v14;
      swift_endAccess();

LABEL_8:
      a1 = v124;
LABEL_9:
      if (++v3 == v123)
      {
        goto LABEL_53;
      }
    }

    __break(1u);
LABEL_88:
    v11 = sub_506314((v12 > 1), v14, 1, v11);
  }

LABEL_53:

  if (!v6[2])
  {
    goto LABEL_97;
  }

  v85 = sub_522174(12);
  if (v86)
  {
    v46 = *(v6[7] + 8 * v85);
    swift_beginAccess();
    if (*(*(v46 + 80) + 16) <= 2uLL)
    {
      v87 = v6[2];

      if (v87)
      {
        sub_522174(6);
        if ((v88 & 1) == 0)
        {
          goto LABEL_61;
        }

        swift_beginAccess();

        sub_510D3C(v89);
        swift_endAccess();
        while (1)
        {

LABEL_68:
          if (!v6[2])
          {
            break;
          }

          v103 = sub_522174(6);
          if ((v104 & 1) == 0)
          {
            break;
          }

          v17 = *(v6[7] + 8 * v103);
          swift_beginAccess();
          v105 = *(v17 + 10);
          v19 = *(v105 + 16);
          if (!v19)
          {
            break;
          }

          v10 = 0;
          v106 = 32;
          while (v10 < *(v105 + 16))
          {
            v108 = *(v105 + v106);
            if (v108 < 0)
            {
              v17 = 0xE800000000000000;
              switch(*(&stru_20.cmd + (v108 & 0x7FFFFFFFFFFFFFFFLL)))
              {
                case 1:
                  v17 = 0xEB000000006E6F69;
                  goto LABEL_73;
                case 2:
                  v17 = 0xE300000000000000;
                  goto LABEL_73;
                case 3:
                  v17 = 0xE700000000000000;
                  goto LABEL_73;
                case 6:
                  v17 = 0xEA00000000006E6FLL;
                  goto LABEL_73;
                case 7:
                  v17 = 0xE500000000000000;
                  goto LABEL_73;
                case 8:
                  v17 = 0xE900000000000067;
                  goto LABEL_73;
                case 9:
                  v17 = 0xE90000000000006ELL;
                  goto LABEL_73;
                case 0xA:
                  v17 = 0xEB00000000657669;
                  goto LABEL_73;
                case 0xB:
                  v17 = 0xEC00000074726F53;
                  goto LABEL_73;
                case 0xC:

                  goto LABEL_90;
                default:
LABEL_73:
                  v107 = sub_ABB3C0();

                  if ((v107 & 1) == 0)
                  {
                    goto LABEL_74;
                  }

LABEL_90:

                  if (v6[2])
                  {
                    sub_522174(6);
                    if (v109)
                    {
                      swift_beginAccess();

                      sub_5206F0(v10, v144);
                      swift_endAccess();
                      sub_51EA60(v144);
                    }
                  }

                  break;
              }

              goto LABEL_93;
            }

LABEL_74:
            ++v10;
            v106 += 56;
            if (v19 == v10)
            {

              goto LABEL_94;
            }
          }

LABEL_100:
          __break(1u);
LABEL_101:
          v17 = sub_506420(0, *(v17 + 2) + 1, 1, v17);
          *(v10 + 80) = v17;
LABEL_64:
          v101 = *(v17 + 2);
          v100 = *(v17 + 3);
          if (v101 >= v100 >> 1)
          {
            v17 = sub_506420((v100 > 1), v101 + 1, 1, v17);
          }

          *(v17 + 2) = v101 + 1;
          v102 = &v17[56 * v101];
          *(v102 + 4) = v19;
          *(v102 + 40) = 0u;
          *(v102 + 56) = 0u;
          *(v102 + 72) = 0u;
          *(v10 + 80) = v17;
          swift_endAccess();
        }
      }

LABEL_93:
    }
  }

LABEL_94:
  if (v6[2] && (v110 = sub_522174(0), (v111 & 1) != 0))
  {
    v112 = *(v6[7] + 8 * v110);
  }

  else
  {
LABEL_97:
    v113 = v139;
    _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
    v114 = sub_AB3440();
    v116 = v115;
    v136(v113, v140);
    v112 = swift_allocObject();
    *(v112 + 88) = 0;
    *(v112 + 96) = 0;
    *(v112 + 16) = v114;
    *(v112 + 24) = v116;
    *(v112 + 32) = 0;
    *(v112 + 40) = 0;
    *(v112 + 48) = 0;
    strcpy(v141, "ActionMenu: ");
    BYTE5(v141[1]) = 0;
    HIWORD(v141[1]) = -5120;
    v150._countAndFlagsBits = v137;
    v150._object = v15;
    sub_AB94A0(v150);

    v117 = v141[1];
    *(v112 + 56) = v141[0];
    *(v112 + 64) = v117;
    *(v112 + 80) = v120;
    *(v112 + 72) = 1;
  }

  return v112;
}

void ActionMenuBuilder.init(id:debugDescription:actionBuilder:)(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  strcpy(v15, "ActionMenu: ");
  BYTE5(v15[1]) = 0;
  HIWORD(v15[1]) = -5120;
  if (a4)
  {
    v12 = a4;
  }

  else
  {

    a3 = a1;
    v12 = a2;
  }

  v16._countAndFlagsBits = a3;
  v16._object = v12;
  sub_AB94A0(v16);

  v13 = v15[0];
  v14 = v15[1];
  *a7 = a1;
  a7[1] = a2;
  a7[2] = v13;
  a7[3] = v14;
  a7[4] = a5;
  a7[5] = a6;
}

double sub_51FF58@<D0>(void *a1@<X0>, char **a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, void *a5@<X8>)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  v9 = a1[3];
  v10 = a1[4];
  v11 = a1[6];
  v46 = a1[5];
  if (((1 << v6) & 0xF8FFFFD7FFE7FLL) == 0)
  {
    v45 = a1[1];
    v34 = a3;
    if (((1 << v6) & 0x700000000180) != 0)
    {
      v35 = sub_502058();
      v36 = FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MusicKit, v35);
    }

    else
    {
      v39 = sub_502004();
      v36 = FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaPlayer, v39);
    }

    a3 = v34;
    v7 = v45;
    if ((v36 & 1) == 0)
    {
      if (qword_E0D528 != -1)
      {
        swift_once();
      }

      if (static DeviceCapabilities.isInternalInstall != 1)
      {
        goto LABEL_40;
      }

      sub_ABAD90(29);

      v56._countAndFlagsBits = ActionType.rawValue.getter(v6);
      sub_AB94A0(v56);

      v57._object = 0x8000000000B6A640;
      v57._countAndFlagsBits = 0xD000000000000017;
      sub_AB94A0(v57);
      v14 = *a2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a2 = v14;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v14 = sub_506314(0, *(v14 + 2) + 1, 1, v14);
        *a2 = v14;
      }

      v17 = *(v14 + 2);
      v16 = *(v14 + 3);
      v18 = v17 + 1;
      if (v17 < v16 >> 1)
      {
        goto LABEL_39;
      }

LABEL_6:
      v14 = sub_506314((v16 > 1), v17 + 1, 1, v14);
      *a2 = v14;
      goto LABEL_39;
    }
  }

  if (!sub_67B7C4(v6, a3))
  {
    v43 = a2;
    v44 = v7;
    v42 = v8;
    v19 = v9();
    if (v20 == &dword_0 + 1)
    {
      v49._countAndFlagsBits = ActionType.rawValue.getter(v6);
      sub_AB94A0(v49);

      v21 = *a2;
      v22 = swift_isUniquelyReferenced_nonNull_native();
      *a2 = v21;
      if ((v22 & 1) == 0)
      {
        v21 = sub_506314(0, *(v21 + 2) + 1, 1, v21);
        *a2 = v21;
      }

      v24 = *(v21 + 2);
      v23 = *(v21 + 3);
      if (v24 >= v23 >> 1)
      {
        v21 = sub_506314((v23 > 1), v24 + 1, 1, v21);
        *a2 = v21;
      }

      *(v21 + 2) = v24 + 1;
      v25 = &v21[16 * v24];
      *(v25 + 4) = 0x20939CE22020;
      *(v25 + 5) = 0xA600000000000000;
      *a5 = v6;
      a5[1] = v44;
      a5[2] = v42;
      a5[3] = v9;
      a5[4] = v10;
      a5[5] = v46;
      a5[6] = v11;
    }

    else
    {
      v26 = v19;
      v27 = v20;
      if ((a4 & 1) == 0)
      {
        v53._countAndFlagsBits = ActionType.rawValue.getter(v6);
        sub_AB94A0(v53);

        v54._countAndFlagsBits = 2108704;
        v54._object = 0xE300000000000000;
        sub_AB94A0(v54);
        if (!v27)
        {
          sub_501D64(v26, 0);
          v27 = 0xE700000000000000;
          v26 = 0x6E776F6E6B6E75;
        }

        v55._countAndFlagsBits = v26;
        v55._object = v27;
        sub_AB94A0(v55);

        v14 = *v43;
        v37 = swift_isUniquelyReferenced_nonNull_native();
        *v43 = v14;
        if ((v37 & 1) == 0)
        {
          v14 = sub_506314(0, *(v14 + 2) + 1, 1, v14);
          *v43 = v14;
        }

        v17 = *(v14 + 2);
        v38 = *(v14 + 3);
        v18 = v17 + 1;
        if (v17 >= v38 >> 1)
        {
          v14 = sub_506314((v38 > 1), v17 + 1, 1, v14);
          *v43 = v14;
        }

        goto LABEL_39;
      }

      sub_ABAD90(44);

      v50._countAndFlagsBits = ActionType.rawValue.getter(v6);
      sub_AB94A0(v50);

      v51._countAndFlagsBits = 0xD000000000000022;
      v51._object = 0x8000000000B6A610;
      sub_AB94A0(v51);
      if (!v27)
      {
        sub_501D64(v26, 0);
        v27 = 0xE700000000000000;
        v26 = 0x6E776F6E6B6E75;
      }

      v52._countAndFlagsBits = v26;
      v52._object = v27;
      sub_AB94A0(v52);

      v28 = *v43;
      v29 = swift_isUniquelyReferenced_nonNull_native();
      *v43 = v28;
      if ((v29 & 1) == 0)
      {
        v28 = sub_506314(0, *(v28 + 2) + 1, 1, v28);
        *v43 = v28;
      }

      v31 = *(v28 + 2);
      v30 = *(v28 + 3);
      if (v31 >= v30 >> 1)
      {
        v28 = sub_506314((v30 > 1), v31 + 1, 1, v28);
        *v43 = v28;
      }

      *(v28 + 2) = v31 + 1;
      v32 = &v28[16 * v31];
      *(v32 + 4) = 0x20939CE22020;
      *(v32 + 5) = 0xA600000000000000;
      *a5 = v6;
      a5[1] = v44;
      a5[2] = v8;
      a5[3] = v9;
      a5[4] = v10;
      a5[5] = v46;
      a5[6] = v11;
    }

    return result;
  }

  sub_ABAD90(17);

  v47._countAndFlagsBits = ActionType.rawValue.getter(v6);
  sub_AB94A0(v47);

  v48._countAndFlagsBits = 0x756C637865202D20;
  v48._object = 0xEB00000000646564;
  sub_AB94A0(v48);
  v14 = *a2;
  v15 = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v14;
  if ((v15 & 1) == 0)
  {
    v14 = sub_506314(0, *(v14 + 2) + 1, 1, v14);
    *a2 = v14;
  }

  v17 = *(v14 + 2);
  v16 = *(v14 + 3);
  v18 = v17 + 1;
  if (v17 >= v16 >> 1)
  {
    goto LABEL_6;
  }

LABEL_39:
  *(v14 + 2) = v18;
  v41 = &v14[16 * v17];
  *(v41 + 4) = 544743456;
  *(v41 + 5) = 0xE400000000000000;
LABEL_40:
  *a5 = 0xF000000000000000;
  result = 0.0;
  *(a5 + 1) = 0u;
  *(a5 + 3) = 0u;
  *(a5 + 5) = 0u;
  return result;
}

uint64_t ActionMenu.__allocating_init(id:type:subtitle:debugDescription:elements:sort:)(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, char a9)
{
  v17 = swift_allocObject();
  *(v17 + 88) = 0;
  *(v17 + 96) = 0;
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  *(v17 + 32) = a3;
  *(v17 + 40) = a4;
  *(v17 + 48) = a5;
  strcpy(v20, "ActionMenu: ");
  BYTE5(v20[1]) = 0;
  HIWORD(v20[1]) = -5120;
  if (a7)
  {
    a2 = a7;
  }

  else
  {

    a6 = a1;
  }

  v21._countAndFlagsBits = a6;
  v21._object = a2;
  sub_AB94A0(v21);

  v18 = v20[1];
  *(v17 + 56) = v20[0];
  *(v17 + 64) = v18;
  *(v17 + 80) = a8;
  *(v17 + 72) = a9 & 1;
  return v17;
}

uint64_t sub_5206F0@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_5285A8(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 56 * a1;
    v10 = *(v9 + 32);
    v9 += 32;
    v11 = *(v9 + 48);
    v13 = *(v9 + 16);
    v12 = *(v9 + 32);
    result = memmove(v9, (v9 + 56), 56 * (v7 - 1 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
    *a2 = v10;
    *(a2 + 16) = v13;
    *(a2 + 32) = v12;
    *(a2 + 48) = v11;
  }

  return result;
}

uint64_t sub_5207C4(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_5285E4(v3);
    v3 = result;
  }

  v5 = v3[2];
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = &v3[2 * a1];
    v8 = v7[4];
    memmove(v7 + 4, v7 + 6, 16 * (v5 - 1 - a1));
    v3[2] = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_520850@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_5285F8(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    sub_52B454(&v5[2 * a1 + 4], a2);
    result = swift_arrayInitWithTakeFrontToBack();
    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_520900(unint64_t a1, uint64_t (*a2)(uint64_t))
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = a2(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *(v5 + a1 + 32);
    memmove((v5 + a1 + 32), (v5 + a1 + 33), v7 - 1 - a1);
    *(v5 + 16) = v8;
    *v2 = v5;
    return v9;
  }

  return result;
}

double sub_52098C@<D0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;

  return result;
}

uint64_t ActionMenu.init(id:type:subtitle:debugDescription:elements:sort:)(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, char a9)
{
  v10 = v9;
  *(v9 + 88) = 0;
  *(v9 + 96) = 0;
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  *(v9 + 32) = a3;
  *(v9 + 40) = a4;
  *(v9 + 48) = a5;
  strcpy(v16, "ActionMenu: ");
  BYTE5(v16[1]) = 0;
  HIWORD(v16[1]) = -5120;
  if (a7)
  {
    v12 = a7;
  }

  else
  {
    v12 = a2;

    a6 = a1;
  }

  v17._countAndFlagsBits = a6;
  v17._object = v12;
  sub_AB94A0(v17);

  v14 = v16[1];
  *(v10 + 56) = v16[0];
  *(v10 + 64) = v14;
  *(v10 + 80) = a8;
  *(v10 + 72) = a9 & 1;
  return v10;
}

uint64_t ActionMenu.__allocating_init(id:type:subtitle:debugDescription:sort:builder:)(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, char a8, uint64_t a9, uint64_t a10)
{
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  *(v17 + 32) = a3;
  *(v17 + 40) = a4;
  *(v17 + 48) = a5;
  strcpy(v21, "ActionMenu: ");
  BYTE5(v21[1]) = 0;
  HIWORD(v21[1]) = -5120;
  if (a7)
  {
    a2 = a7;
  }

  else
  {

    a6 = a1;
  }

  v22._countAndFlagsBits = a6;
  v22._object = a2;
  sub_AB94A0(v22);

  v18 = v21[1];
  *(v17 + 56) = v21[0];
  *(v17 + 64) = v18;
  *(v17 + 72) = a8 & 1;
  *(v17 + 96) = a10;
  *(v17 + 80) = _swiftEmptyArrayStorage;
  *(v17 + 88) = a9;
  return v17;
}

uint64_t ActionMenu.init(id:type:subtitle:debugDescription:sort:builder:)(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, char a8, uint64_t a9, uint64_t a10)
{
  v11 = v10;
  *(v10 + 88) = 0;
  *(v10 + 96) = 0;
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v10 + 32) = a3;
  *(v10 + 40) = a4;
  *(v10 + 48) = a5;
  strcpy(v19, "ActionMenu: ");
  BYTE5(v19[1]) = 0;
  HIWORD(v19[1]) = -5120;
  if (a7)
  {
    v13 = a7;
  }

  else
  {
    v13 = a2;

    a6 = a1;
  }

  v20._countAndFlagsBits = a6;
  v20._object = v13;
  sub_AB94A0(v20);

  v15 = v19[1];
  *(v11 + 56) = v19[0];
  *(v11 + 64) = v15;
  *(v11 + 72) = a8 & 1;
  v16 = *(v11 + 88);
  v17 = *(v11 + 96);
  *(v11 + 88) = a9;
  *(v11 + 96) = a10;

  sub_17654(v16, v17);

  *(v11 + 80) = _swiftEmptyArrayStorage;
  return v11;
}

uint64_t MetricsEvent.Dialog.message.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t MetricsEvent.Dialog.messageCode.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

void ActionMenu.elements(excluding:includeUnsupported:)(uint64_t a1, char a2)
{
  v3 = v2;
  v51 = 0;
  v52 = 0xE000000000000000;
  v61._countAndFlagsBits = 8254;
  v61._object = 0xE200000000000000;
  sub_AB94A0(v61);
  v60 = v2;
  type metadata accessor for ActionMenu();
  sub_ABAF70();
  v4 = 0;
  v5 = 0xE000000000000000;
  v6 = sub_506314(0, 1, 1, _swiftEmptyArrayStorage);
  v8 = *(v6 + 2);
  v7 = *(v6 + 3);
  v9 = (v8 + 1);
  if (v8 >= v7 >> 1)
  {
    goto LABEL_29;
  }

  while (1)
  {
    v10 = swift_allocObject();
    *(v6 + 2) = v9;
    v11 = &v6[16 * v8];
    *(v11 + 4) = v4;
    *(v11 + 5) = v5;
    *(v10 + 16) = v6;
    v47 = (v10 + 16);
    v12 = *(v3 + 88);
    if (v12)
    {
      v13 = *(v3 + 96);

      v15 = v12(v14);
      sub_17654(v12, v13);
    }

    else
    {
      v15 = _swiftEmptyArrayStorage;
    }

    swift_beginAccess();
    v43 = v3;
    v51 = v15;

    sub_510D3C(v16);
    v8 = v51;
    v59 = &_swiftEmptySetSingleton;
    v17 = *(v51 + 2);

    v46 = v17;
    if (!v17)
    {
      break;
    }

    v18 = 0;
    v4 = 0;
    v6 = (v8 + 40);
    v9 = _swiftEmptyArrayStorage;
    v45 = v8;
    while (1)
    {
      v7 = *(v8 + 16);
      if (v18 >= v7)
      {
        break;
      }

      v50 = v18;
      v20 = *(v6 - 1);
      v19 = *v6;
      v5 = *(v6 + 1);
      v3 = *(v6 + 2);
      v21 = *(v6 + 3);
      v22 = *(v6 + 4);
      v23 = *(v6 + 5);
      v51 = v20;
      v52 = v19;
      v53 = v5;
      v54 = v3;
      v55 = v21;
      v56 = v22;
      v57 = v23;
      sub_51D020(v20, v19, v5, v3, v21, v22, v23);
      if (sub_52110C(&v51, v47, a1, a2 & 1, &v59))
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v58 = v9;
        v44 = v4;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_5038D8(0, *(v9 + 2) + 1, 1);
          v9 = v58;
        }

        v25 = v5;
        v26 = v19;
        v27 = v3;
        v28 = v21;
        v29 = v22;
        v30 = v23;
        v31 = v20;
        v33 = *(v9 + 2);
        v32 = *(v9 + 3);
        v34 = v33 + 1;
        if (v33 >= v32 >> 1)
        {
          sub_5038D8((v32 > 1), v33 + 1, 1);
          v34 = v33 + 1;
          v31 = v20;
          v30 = v23;
          v29 = v22;
          v28 = v21;
          v27 = v3;
          v26 = v19;
          v25 = v5;
          v9 = v58;
        }

        *(v9 + 2) = v34;
        v35 = &v9[56 * v33];
        *(v35 + 4) = v31;
        *(v35 + 5) = v26;
        *(v35 + 6) = v25;
        *(v35 + 7) = v27;
        *(v35 + 8) = v28;
        *(v35 + 9) = v29;
        *(v35 + 10) = v30;
        v4 = v44;
      }

      else
      {
        sub_529FC8(v20, v19, v5, v3, v21, v22, v23);
      }

      v18 = v50 + 1;
      v6 += 56;
      v8 = v45;
      if (v46 == v50 + 1)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_29:
    v6 = sub_506314((v7 > 1), v9, 1, v6);
  }

  v9 = _swiftEmptyArrayStorage;
LABEL_17:
  v36 = v9;

  if (a2)
  {
    v37 = v9;
    v38 = v47;
    sub_529AA0(v37, v47, &v59);
    v40 = v39;

    v36 = v40;
    v41 = v43;
    if (*(v36 + 2))
    {
      goto LABEL_23;
    }
  }

  else
  {
    v41 = v43;
    v38 = v47;
    if (*(v36 + 2))
    {
      goto LABEL_23;
    }
  }

  if (!*(*v38 + 2))
  {
    __break(1u);
    return;
  }

  sub_529D90(1, 1, 0xD00000000000001CLL, 0x8000000000B6A560);
LABEL_23:
  if (*(v41 + 72) == 1)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v36 = sub_5285A8(v36);
    }

    v42 = *(v36 + 2);
    v51 = v36 + 32;
    v52 = v42;
    sub_5286DC(&v51, sub_52B630, sub_52B614);
  }
}

uint64_t sub_52110C(uint64_t *a1, char **a2, uint64_t a3, char a4, uint64_t *a5)
{
  v5 = *a1;
  if (*a1 < 0)
  {
    return 1;
  }

  v6 = a1[3];
  if (((1 << v5) & 0xF8FFFFD7FFE7FLL) != 0)
  {
LABEL_3:
    v10 = sub_67B7C4(v5, a3);
    if (v10)
    {
      sub_ABAD90(17);

      v40._countAndFlagsBits = ActionType.rawValue.getter(v5);
      sub_AB94A0(v40);

      v11._countAndFlagsBits = 0x756C637865202D20;
      v11._object = 0xEB00000000646564;
      goto LABEL_5;
    }

    v20 = v6(v10);
    if (v21 == &dword_0 + 1)
    {
      if (a4)
      {
        ActionType.mutuallyExclusiveActions.getter(v5);
        if (!v22)
        {
          v22 = &_swiftEmptySetSingleton;
        }

        sub_5216E4(v22);
        sub_6137FC(v5);
      }

      v41._countAndFlagsBits = ActionType.rawValue.getter(v5);
      sub_AB94A0(v41);

      v12 = 0x20939CE22020;
      v13 = 0xA600000000000000;
      v14 = *a2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a2 = v14;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v14 = sub_506314(0, *(v14 + 2) + 1, 1, v14);
        *a2 = v14;
      }

      v17 = *(v14 + 2);
      v24 = *(v14 + 3);
      v18 = v17 + 1;
      if (v17 < v24 >> 1)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v25 = v21;
      v26 = v20;
      if (a4 & 1) == 0 || (v27 = *a5, , v28 = sub_5E95F8(v5, v27), , (v28))
      {
        v42._countAndFlagsBits = ActionType.rawValue.getter(v5);
        sub_AB94A0(v42);

        v43._countAndFlagsBits = 2108704;
        v43._object = 0xE300000000000000;
        sub_AB94A0(v43);
        if (v25)
        {
          v29._countAndFlagsBits = v26;
        }

        else
        {
          sub_501D64(v26, 0);
          v25 = 0xE700000000000000;
          v29._countAndFlagsBits = 0x6E776F6E6B6E75;
        }

        v29._object = v25;
        sub_AB94A0(v29);

        v12 = 544743456;
        v13 = 0xE400000000000000;
        v14 = *a2;
        v33 = swift_isUniquelyReferenced_nonNull_native();
        *a2 = v14;
        if ((v33 & 1) == 0)
        {
          v14 = sub_506314(0, *(v14 + 2) + 1, 1, v14);
          *a2 = v14;
        }

        v17 = *(v14 + 2);
        v16 = *(v14 + 3);
        v18 = v17 + 1;
        if (v17 < v16 >> 1)
        {
          result = 0;
          goto LABEL_31;
        }

LABEL_47:
        v14 = sub_506314((v16 > 1), v18, 1, v14);
        result = 0;
        goto LABEL_48;
      }

      ActionType.mutuallyExclusiveActions.getter(v5);
      if (!v35)
      {
        v35 = &_swiftEmptySetSingleton;
      }

      sub_5216E4(v35);
      sub_ABAD90(44);

      v44._countAndFlagsBits = ActionType.rawValue.getter(v5);
      sub_AB94A0(v44);

      v45._countAndFlagsBits = 0xD000000000000022;
      v45._object = 0x8000000000B6A610;
      sub_AB94A0(v45);
      if (v25)
      {
        v36._countAndFlagsBits = v26;
      }

      else
      {
        sub_501D64(v26, 0);
        v25 = 0xE700000000000000;
        v36._countAndFlagsBits = 0x6E776F6E6B6E75;
      }

      v36._object = v25;
      sub_AB94A0(v36);

      v12 = 0x20939CE22020;
      v13 = 0xA600000000000000;
      v14 = *a2;
      v39 = swift_isUniquelyReferenced_nonNull_native();
      *a2 = v14;
      if ((v39 & 1) == 0)
      {
        v14 = sub_506314(0, *(v14 + 2) + 1, 1, v14);
        *a2 = v14;
      }

      v17 = *(v14 + 2);
      v24 = *(v14 + 3);
      v18 = v17 + 1;
      if (v17 < v24 >> 1)
      {
LABEL_18:
        result = 1;
        goto LABEL_31;
      }
    }

    v14 = sub_506314((v24 > 1), v18, 1, v14);
    result = 1;
LABEL_48:
    *a2 = v14;
    goto LABEL_31;
  }

  v30 = a3;
  if (((1 << v5) & 0x700000000180) != 0)
  {
    v31 = sub_502058();
    v32 = FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MusicKit, v31);
    a3 = v30;
    if (v32)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v37 = sub_502004();
    v38 = FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaPlayer, v37);
    a3 = v30;
    if (v38)
    {
      goto LABEL_3;
    }
  }

  if (qword_E0D528 != -1)
  {
    swift_once();
  }

  if (static DeviceCapabilities.isInternalInstall == 1)
  {
    sub_ABAD90(29);

    v46._countAndFlagsBits = ActionType.rawValue.getter(v5);
    sub_AB94A0(v46);

    v11._object = 0x8000000000B6A640;
    v11._countAndFlagsBits = 0xD000000000000017;
LABEL_5:
    sub_AB94A0(v11);
    v12 = 544743456;
    v13 = 0xE400000000000000;
    v14 = *a2;
    v15 = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v14;
    if ((v15 & 1) == 0)
    {
      v14 = sub_506314(0, *(v14 + 2) + 1, 1, v14);
      *a2 = v14;
    }

    v17 = *(v14 + 2);
    v16 = *(v14 + 3);
    v18 = v17 + 1;
    if (v17 < v16 >> 1)
    {
      result = 0;
LABEL_31:
      *(v14 + 2) = v18;
      v34 = &v14[16 * v17];
      *(v34 + 4) = v12;
      *(v34 + 5) = v13;
      return result;
    }

    goto LABEL_47;
  }

  return 0;
}

void sub_5216E4(uint64_t a1)
{
  v2 = 0;
  v3 = a1 + 56;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      sub_6828F4(&v10, *(*(a1 + 48) + (v9 | (v8 << 6))));
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

void sub_5217C0(uint64_t a1)
{
  v2 = sub_AB4BC0();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v6 = *(a1 + 16);
  v7 = *(v6 + 16);

  if (v7)
  {
    v9 = 0;
    v23 = (v3 + 16);
    v10 = (v3 + 8);
    v11 = (v6 + 40);
    *&v8 = 136446210;
    v20 = v8;
    v21 = v10;
    v22 = v7;
    while (v9 < *(v6 + 16))
    {
      v12 = *v11;
      v24 = *(v11 - 1);
      if (qword_E0CB98 != -1)
      {
        swift_once();
      }

      v13 = __swift_project_value_buffer(v2, qword_E0E7F0);
      (*v23)(v5, v13, v2);

      v14 = sub_AB4BA0();
      v15 = sub_AB9F50();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = v2;
        v18 = v6;
        v19 = swift_slowAlloc();
        v25 = v19;
        *v16 = v20;
        *(v16 + 4) = sub_500C84(v24, v12, &v25);
        _os_log_impl(&dword_0, v14, v15, "%{public}s", v16, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v19);
        v6 = v18;
        v2 = v17;
        v7 = v22;

        v10 = v21;
      }

      (*v10)(v5, v2);
      ++v9;
      v11 += 2;
      if (v7 == v9)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_9:
  }
}

uint64_t ActionMenu.append(_:)(__int128 *a1)
{
  swift_beginAccess();
  v3 = *(v1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 80) = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = sub_506420(0, *(v3 + 2) + 1, 1, v3);
    *(v1 + 80) = v3;
  }

  v6 = *(v3 + 2);
  v5 = *(v3 + 3);
  if (v6 >= v5 >> 1)
  {
    v3 = sub_506420((v5 > 1), v6 + 1, 1, v3);
  }

  *(v3 + 2) = v6 + 1;
  v7 = &v3[56 * v6];
  v8 = *a1;
  v9 = a1[1];
  v10 = a1[2];
  *(v7 + 10) = *(a1 + 6);
  *(v7 + 3) = v9;
  *(v7 + 4) = v10;
  *(v7 + 2) = v8;
  *(v1 + 80) = v3;
  swift_endAccess();
  return sub_51EA04(a1, v12);
}

Swift::Void __swiftcall ActionMenu.append(contentsOf:)(Swift::OpaquePointer contentsOf)
{
  swift_beginAccess();

  sub_510D3C(v1);
  swift_endAccess();
}

void *ActionMenu.deinit()
{

  sub_17654(*(v0 + 88), *(v0 + 96));
  return v0;
}

uint64_t ActionMenu.__deallocating_deinit()
{

  sub_17654(*(v0 + 88), *(v0 + 96));

  return swift_deallocClassInstance();
}

double sub_521C30@<D0>(void *a1@<X8>)
{
  v2 = *(*v1 + 24);
  *a1 = *(*v1 + 16);
  a1[1] = v2;

  return result;
}

uint64_t sub_521C40()
{
  v1 = *(*v0 + 56);

  return v1;
}

uint64_t ActionMenu.Item.menuItemConfiguring.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t ActionMenu.Item.execute.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t (*ActionMenuItemImage.init(systemName:)(uint64_t a1, uint64_t a2))()
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;

  return sub_52A070;
}

uint64_t sub_521DE8(uint64_t a1, uint64_t a2)
{

  return sub_AB7530();
}

uint64_t (*ActionMenuItemImage.init(uiImage:)(uint64_t a1, uint64_t a2))()
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  return sub_52A10C;
}

uint64_t sub_521EC8()
{
  v0 = sub_AB9260();
  v1 = [objc_opt_self() imageNamed:v0];

  if (v1)
  {
    return sub_AB7520();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_521FA8(uint64_t a1, uint64_t a2)
{
  v2 = sub_AB9260();
  v3 = [objc_opt_self() _systemImageNamed:v2];

  if (v3)
  {
    return sub_AB7520();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_52200C(uint64_t a1, uint64_t a2)
{

  return sub_AB7550();
}

id sub_52205C(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = sub_AB9260();
  v5 = [objc_opt_self() *a3];

  return v5;
}

uint64_t sub_5220B4(uint64_t *a1, uint64_t *a2)
{
  if (*(*a1 + 16) == *(*a2 + 16) && *(*a1 + 24) == *(*a2 + 24))
  {
    return 1;
  }

  else
  {
    return sub_ABB3C0();
  }
}

uint64_t sub_5220E0()
{
  v0 = sub_AB4BC0();
  __swift_allocate_value_buffer(v0, qword_E0E7F0);
  __swift_project_value_buffer(v0, qword_E0E7F0);
  return sub_AB4BB0();
}

unint64_t sub_522174(uint64_t a1)
{
  sub_ABB5C0();
  MenuType.rawValue.getter(a1, v2);
  sub_AB93F0();

  v3 = sub_ABB610();

  return sub_5223F4(a1, v3);
}

unint64_t sub_5221FC(uint64_t a1)
{
  v1 = a1;
  sub_ABB5C0();
  sub_ABB5D0(v1);
  v2 = sub_ABB610();
  return sub_5229E4(v1, v2);
}

unint64_t sub_522264(uint64_t a1)
{
  sub_AB3470();
  sub_52A2D0(&qword_E0E988, &protocol conformance descriptor for UUID);
  v2 = sub_AB90D0();

  return sub_522838(a1, v2);
}

unint64_t sub_5222E8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_ABA780(*(v2 + 40));
  return sub_2ED454(a1, v4, &qword_E11460, UIView_ptr);
}

unint64_t sub_522338(uint64_t a1)
{
  v2 = v1;
  v4 = sub_ABA780(*(v2 + 40));
  return sub_2ED454(a1, v4, &qword_E0E978, MPCPlayerPath_ptr);
}

unint64_t sub_522388(uint64_t a1)
{
  v1 = a1;
  sub_ABB5C0();
  sub_ABB5D0(v1 + 1);
  v2 = sub_ABB610();
  return sub_5229E4(v1, v2);
}

unint64_t sub_5223F4(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE800000000000000;
      v8 = 0x6C6576654C706F74;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0x7463416B63697571;
          v7 = 0xEB000000006E6F69;
          break;
        case 2:
          v7 = 0xE300000000000000;
          v8 = 7368564;
          break;
        case 3:
          v7 = 0xE700000000000000;
          v8 = 0x7972617262696CLL;
          break;
        case 4:
          v8 = 0x7473696C79616C70;
          break;
        case 5:
          v8 = 0x6B63616279616C70;
          break;
        case 6:
          v8 = 0x697461676976616ELL;
          v7 = 0xEA00000000006E6FLL;
          break;
        case 7:
          v7 = 0xE500000000000000;
          v8 = 0x6574736174;
          break;
        case 8:
          v8 = 0x6E6974726F706572;
          v7 = 0xE900000000000067;
          break;
        case 9:
          v7 = 0xE90000000000006ELL;
          v8 = 0x6F697463416E6970;
          break;
        case 0xA:
          v8 = 0x7463757274736564;
          v7 = 0xEB00000000657669;
          break;
        case 0xB:
          v8 = 0x7473696C79616C70;
          v7 = 0xEC00000074726F53;
          break;
        case 0xC:
          v7 = 0xE400000000000000;
          v8 = 1867804519;
          break;
        default:
          break;
      }

      v9 = 0xE800000000000000;
      v10 = 0x6C6576654C706F74;
      switch(a1)
      {
        case 1:
          v9 = 0xEB000000006E6F69;
          if (v8 == 0x7463416B63697571)
          {
            goto LABEL_39;
          }

          goto LABEL_40;
        case 2:
          v9 = 0xE300000000000000;
          if (v8 != 7368564)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        case 3:
          v9 = 0xE700000000000000;
          if (v8 != 0x7972617262696CLL)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        case 4:
          if (v8 != 0x7473696C79616C70)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        case 5:
          if (v8 != 0x6B63616279616C70)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        case 6:
          v9 = 0xEA00000000006E6FLL;
          if (v8 != 0x697461676976616ELL)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        case 7:
          v9 = 0xE500000000000000;
          if (v8 != 0x6574736174)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        case 8:
          v9 = 0xE900000000000067;
          if (v8 != 0x6E6974726F706572)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        case 9:
          v9 = 0xE90000000000006ELL;
          if (v8 != 0x6F697463416E6970)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        case 10:
          v10 = 0x7463757274736564;
          v9 = 0xEB00000000657669;
          goto LABEL_38;
        case 11:
          v9 = 0xEC00000074726F53;
          if (v8 != 0x7473696C79616C70)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        case 12:
          v9 = 0xE400000000000000;
          if (v8 != 1867804519)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        default:
LABEL_38:
          if (v8 != v10)
          {
            goto LABEL_40;
          }

LABEL_39:
          if (v7 == v9)
          {

            return v4;
          }

LABEL_40:
          v11 = sub_ABB3C0();

          if (v11)
          {
            return v4;
          }

          v4 = (v4 + 1) & v6;
          if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
          {
            return v4;
          }

          break;
      }
    }
  }

  return v4;
}

unint64_t sub_522838(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_AB3470();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin();
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4, v6);
      sub_52A2D0(&qword_E0E990, &protocol conformance descriptor for UUID);
      v16 = sub_AB91C0();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_5229E4(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

void sub_522A54(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EA60, &qword_B18028);
  v38 = v4;
  v6 = sub_ABB0A0();
  v7 = v6;
  if (*(v5 + 16))
  {
    v37 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v39 = *v26;
      if ((v38 & 1) == 0)
      {
      }

      sub_ABB5C0();
      sub_AB93F0();
      v28 = sub_ABB610();
      v29 = -1 << *(v7 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v14 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v14 + 8 * v31);
          if (v35 != -1)
          {
            v15 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v39;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v37;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v2;
    if (v36 >= 64)
    {
      bzero(v9, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_522D14(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EA88, &qword_B18040);
  v31 = v4;
  v6 = sub_ABB0A0();
  v7 = v6;
  if (!*(v5 + 16))
  {
LABEL_33:

    goto LABEL_34;
  }

  v8 = 0;
  v9 = (v5 + 64);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 64);
  v13 = (v10 + 63) >> 6;
  v14 = v6 + 64;
  while (v12)
  {
    v20 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_16:
    v23 = v20 | (v8 << 6);
    v24 = *(*(v5 + 48) + v23);
    v25 = *(*(v5 + 56) + 8 * v23);
    if ((v31 & 1) == 0)
    {
    }

    sub_ABB5C0();
    sub_AB93F0();

    v15 = sub_ABB610();
    v16 = -1 << *(v7 + 32);
    v17 = v15 & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v14 + 8 * (v17 >> 6))) != 0)
    {
      v19 = __clz(__rbit64((-1 << v17) & ~*(v14 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v26 = 0;
      v27 = (63 - v16) >> 6;
      do
      {
        if (++v18 == v27 && (v26 & 1) != 0)
        {
          goto LABEL_36;
        }

        v28 = v18 == v27;
        if (v18 == v27)
        {
          v18 = 0;
        }

        v26 |= v28;
        v29 = *(v14 + 8 * v18);
      }

      while (v29 == -1);
      v19 = __clz(__rbit64(~v29)) + (v18 << 6);
    }

    *(v14 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    *(*(v7 + 48) + v19) = v24;
    *(*(v7 + 56) + 8 * v19) = v25;
    ++*(v7 + 16);
  }

  v21 = v8;
  while (1)
  {
    v8 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      __break(1u);
LABEL_36:
      __break(1u);
      JUMPOUT(0x52310CLL);
    }

    if (v8 >= v13)
    {
      break;
    }

    v22 = v9[v8];
    ++v21;
    if (v22)
    {
      v20 = __clz(__rbit64(v22));
      v12 = (v22 - 1) & v22;
      goto LABEL_16;
    }
  }

  if (v31)
  {
    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
    goto LABEL_33;
  }

  v3 = v2;
LABEL_34:
  *v3 = v7;
}

void sub_523140(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EA68, &qword_B18030);
  v6 = sub_ABB0A0();
  v7 = v6;
  if (*(v5 + 16))
  {
    v35 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (v4)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v39 = *(v23 + 32);
        v37 = v24;
        v38 = v25;
        sub_9ACFC((*(v5 + 56) + 32 * v22), v36);
      }

      else
      {
        sub_9ACA0(v23, &v37);
        sub_808B0(*(v5 + 56) + 32 * v22, v36);
      }

      v26 = sub_ABACF0(*(v7 + 40));
      v27 = -1 << *(v7 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v37;
      v18 = v38;
      *(v16 + 32) = v39;
      *v16 = v17;
      *(v16 + 16) = v18;
      sub_9ACFC(v36, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v34 = 1 << *(v5 + 32);
      if (v34 >= 64)
      {
        bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v34;
      }

      *(v5 + 16) = 0;
    }

    v3 = v35;
  }

  else
  {
  }

  *v3 = v7;
}

void sub_5233F8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EA50, &qword_B18018);
  v6 = sub_ABB0A0();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v4;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      sub_ABB5C0();
      sub_ABB5D0(v20);
      v22 = sub_ABB610();
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v31 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_31:
  *v3 = v7;
}

void sub_523678(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EA48, &qword_B18010);
  v35 = v4;
  v6 = sub_ABB0A0();
  v7 = v6;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {
      }

      sub_ABB5C0();
      sub_AB93F0();
      v25 = sub_ABB610();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_523920(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_AB3470();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DB68, &qword_B15158);
  v40 = v4;
  v10 = sub_ABB0A0();
  v11 = v10;
  if (*(v9 + 16))
  {
    v44 = v8;
    v36 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = (v6 + 16);
    v38 = v9;
    v39 = v6;
    v41 = (v6 + 32);
    v18 = v10 + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v43 = *(v39 + 72);
      v25 = v24 + v43 * v23;
      if (v40)
      {
        (*v41)(v44, v25, v5);
        v42 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v37)(v44, v25, v5);
        v42 = *(*(v9 + 56) + 8 * v23);
      }

      sub_52A2D0(&qword_E0E988, &protocol conformance descriptor for UUID);
      v26 = sub_AB90D0();
      v27 = -1 << *(v11 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v41)((*(v11 + 48) + v43 * v19), v44, v5);
      *(*(v11 + 56) + 8 * v19) = v42;
      ++*(v11 + 16);
      v9 = v38;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v9 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero(v13, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v34;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
}

void sub_523CE8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E0EA30, &unk_B17FF8);
  v6 = sub_ABB0A0();
  v7 = v6;
  if (*(v5 + 16))
  {
    v32 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = (*(v5 + 56) + 32 * v19);
      if (v4)
      {
        sub_9ACFC(v21, v33);
      }

      else
      {
        sub_808B0(v21, v33);
        v22 = v20;
      }

      v23 = sub_ABA780(*(v7 + 40));
      v24 = -1 << *(v7 + 32);
      v25 = v23 & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      sub_9ACFC(v33, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v7;
}

void sub_523F60(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v42 = *(type metadata accessor for PushNotificationObserver.RegisteredHandler(0) - 8);
  __chkstk_darwin();
  v47 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_AB3470();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v46 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EA18, &qword_B17FE8);
  v43 = v4;
  v10 = sub_ABB0A0();
  v11 = v10;
  if (*(v9 + 16))
  {
    v38 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v39 = (v7 + 16);
    v40 = v7;
    v44 = (v7 + 32);
    v18 = v10 + 64;
    v41 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v45 = *(v7 + 72);
      v25 = v24 + v45 * v23;
      if (v43)
      {
        (*v44)(v46, v25, v6);
        v26 = *(v9 + 56);
        v27 = *(v42 + 72);
        sub_52B328(v26 + v27 * v23, v47);
      }

      else
      {
        (*v39)(v46, v25, v6);
        v28 = *(v9 + 56);
        v27 = *(v42 + 72);
        sub_52B3F0(v28 + v27 * v23, v47);
      }

      sub_52A2D0(&qword_E0E988, &protocol conformance descriptor for UUID);
      v29 = sub_AB90D0();
      v30 = -1 << *(v11 + 32);
      v31 = v29 & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v18 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v18 + 8 * v32);
          if (v36 != -1)
          {
            v19 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v19 = __clz(__rbit64((-1 << v31) & ~*(v18 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v44)((*(v11 + 48) + v45 * v19), v46, v6);
      sub_52B328(v47, *(v11 + 56) + v27 * v19);
      ++*(v11 + 16);
      v7 = v40;
      v9 = v41;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v9 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v13, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v37;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
}

void sub_5243B0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EA08, &qword_B27AC0);
  v34 = v4;
  v6 = sub_ABB0A0();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v34)
      {
        sub_9ACFC(v24, v35);
      }

      else
      {
        sub_808B0(v24, v35);
      }

      sub_ABB5C0();
      sub_AB93F0();
      v25 = sub_ABB610();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      sub_9ACFC(v35, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
}

void sub_524668(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E9F0, &qword_B17FC0);
  v6 = sub_ABB0A0();
  v7 = v6;
  if (*(v5 + 16))
  {
    v34 = v4;
    v35 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v23 = *v21;
      v22 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      sub_ABB5C0();
      sub_ABB5D0(v23);
      sub_ABB5D0(v22);
      v25 = sub_ABB610();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v22;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v35;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_31:
  *v3 = v7;
}

void sub_524900(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E980, &unk_B17F60);
  v6 = sub_ABB0A0();
  v7 = v6;
  if (*(v5 + 16))
  {
    v32 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
        v22 = v20;
        swift_unknownObjectRetain();
      }

      v23 = sub_ABA780(*(v7 + 40));
      v24 = -1 << *(v7 + 32);
      v25 = v23 & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_33;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_524B70(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E9E0, &qword_B17FB0);
  v5 = *(v53 - 8);
  __chkstk_darwin();
  v52 = &v41 - v6;
  v7 = sub_AB3470();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v54 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E9E8, &qword_B17FB8);
  v48 = v4;
  v11 = sub_ABB0A0();
  v12 = v11;
  if (*(v10 + 16))
  {
    v13 = 0;
    v14 = v8;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v44 = (v14 + 16);
    v45 = v14;
    v42 = v2;
    v43 = v5 + 16;
    v46 = v10;
    v47 = v5;
    v49 = (v5 + 32);
    v50 = (v14 + 32);
    v20 = v11 + 64;
    v21 = v14;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v26 = v23 | (v13 << 6);
      v27 = *(v10 + 48);
      v51 = *(v21 + 72);
      v28 = v27 + v51 * v26;
      if (v48)
      {
        (*v50)(v54, v28, v7);
        v29 = *(v10 + 56);
        v30 = *(v47 + 72);
        (*(v47 + 32))(v52, v29 + v30 * v26, v53);
      }

      else
      {
        (*v44)(v54, v28, v7);
        v31 = *(v10 + 56);
        v30 = *(v47 + 72);
        (*(v47 + 16))(v52, v31 + v30 * v26, v53);
      }

      sub_52A2D0(&qword_E0E988, &protocol conformance descriptor for UUID);
      v32 = sub_AB90D0();
      v33 = -1 << *(v12 + 32);
      v34 = v32 & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v20 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v20 + 8 * v35);
          if (v39 != -1)
          {
            v22 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v22 = __clz(__rbit64((-1 << v34) & ~*(v20 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      (*v50)((*(v12 + 48) + v51 * v22), v54, v7);
      (*v49)(*(v12 + 56) + v30 * v22, v52, v53);
      ++*(v12 + 16);
      v21 = v45;
      v10 = v46;
    }

    v24 = v13;
    while (1)
    {
      v13 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v19)
      {
        break;
      }

      v25 = v15[v13];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v48 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_34;
    }

    v40 = 1 << *(v10 + 32);
    v3 = v42;
    if (v40 >= 64)
    {
      bzero(v15, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v40;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
}

void sub_52500C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E9B8, &qword_B17F88);
  v46 = v4;
  v6 = sub_ABB0A0();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v43 = v3;
    v44 = (v5 + 64);
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 64);
    v12 = (v9 + 63) >> 6;
    v13 = v6 + 64;
    v45 = v5;
    while (v11)
    {
      v17 = __clz(__rbit64(v11));
      v47 = (v11 - 1) & v11;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v49 = *(*(v5 + 48) + v20);
      v21 = *(v5 + 56) + 56 * v20;
      v48 = *v21;
      v23 = *(v21 + 8);
      v22 = *(v21 + 16);
      v25 = *(v21 + 24);
      v24 = *(v21 + 32);
      v26 = *(v21 + 40);
      v27 = *(v21 + 48);
      if ((v46 & 1) == 0)
      {
        v28 = v23;
        v29 = v22;
        v30 = v25;
        v31 = v24;
        v32 = v26;
        v33 = v27;
      }

      sub_ABB5C0();
      sub_ABB5D0(v49 + 1);
      v34 = sub_ABB610();
      v35 = -1 << *(v7 + 32);
      v36 = v34 & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v13 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        v15 = v27;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v13 + 8 * v37);
          if (v41 != -1)
          {
            v14 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v14 = __clz(__rbit64((-1 << v36) & ~*(v13 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
      v15 = v27;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v7 + 48) + v14) = v49;
      v16 = *(v7 + 56) + 56 * v14;
      *v16 = v48;
      *(v16 + 8) = v23;
      *(v16 + 16) = v22;
      *(v16 + 24) = v25;
      *(v16 + 32) = v24;
      *(v16 + 40) = v26;
      *(v16 + 48) = v15;
      ++*(v7 + 16);
      v5 = v45;
      v11 = v47;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v12)
      {
        break;
      }

      v19 = v44[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v47 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if (v46)
    {
      v42 = 1 << *(v5 + 32);
      if (v42 >= 64)
      {
        bzero(v44, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v44 = -1 << v42;
      }

      *(v5 + 16) = 0;
    }

    v3 = v43;
  }

  else
  {
  }

  *v3 = v7;
}

void sub_52530C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v46 = sub_AB4590();
  v5 = *(v46 - 8);
  __chkstk_darwin();
  v45 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E970, &unk_B17F50);
  v43 = v4;
  v8 = sub_ABB0A0();
  v9 = v8;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v39 = v2;
    v40 = (v5 + 16);
    v41 = v7;
    v42 = v5;
    v44 = (v5 + 32);
    v16 = v8 + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v26 = *v24;
      v25 = v24[1];
      v27 = *(v42 + 72);
      v28 = v23 + v27 * v22;
      if (v43)
      {
        (*v44)(v45, v28, v46);
      }

      else
      {
        (*v40)(v45, v28, v46);
      }

      sub_ABB5C0();
      sub_AB93F0();
      v29 = sub_ABB610();
      v30 = -1 << *(v9 + 32);
      v31 = v29 & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v16 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v16 + 8 * v32);
          if (v36 != -1)
          {
            v17 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v31) & ~*(v16 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v26;
      v18[1] = v25;
      (*v44)((*(v9 + 56) + v27 * v17), v45, v46);
      ++*(v9 + 16);
      v7 = v41;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_34;
    }

    v37 = 1 << *(v7 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v11, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v37;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
}

void sub_52568C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_5292A8(a3, a4, sub_2ECE20);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_522A54(v18, a5 & 1);
      v13 = sub_5292A8(a3, a4, sub_2ECE20);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        sub_ABB4C0();
        __break(1u);
        return;
      }
    }

    else
    {
      v21 = v13;
      sub_526AB8();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;

    return;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v25 = (v23[6] + 16 * v13);
  *v25 = a3;
  v25[1] = a4;
  v26 = (v23[7] + 16 * v13);
  *v26 = a1;
  v26[1] = a2;
  v27 = v23[2];
  v17 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v28;
}

void sub_52583C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_522174(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_522D14(v14, a3 & 1);
      v9 = sub_522174(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        sub_ABB4C0();
        __break(1u);
        return;
      }
    }

    else
    {
      v17 = v9;
      sub_526C30();
      v9 = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(v9 >> 6) + 8] |= 1 << v9;
    *(v19[6] + v9) = a2;
    *(v19[7] + 8 * v9) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * v9) = a1;
}

_OWORD *sub_525988(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_2EC004(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_526D8C();
      goto LABEL_7;
    }

    sub_523140(v13, a3 & 1);
    v19 = sub_2EC004(a2);
    if ((v14 & 1) == (v20 & 1))
    {
      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_9ACA0(a2, v21);
      return sub_957F0(v10, v21, a1, v16);
    }

LABEL_15:
    result = sub_ABB4C0();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  __swift_destroy_boxed_opaque_existential_0(v17);

  return sub_9ACFC(a1, v17);
}

void sub_525AD4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_5292A8(a2, a3, sub_2ECE20);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_523678(v16, a4 & 1);
      v11 = sub_5292A8(a2, a3, sub_2ECE20);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_ABB4C0();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_52707C();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

void sub_525C78(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_AB3470();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_522264(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_5271EC();
      goto LABEL_7;
    }

    sub_523920(v17, a3 & 1);
    v23 = sub_522264(a2);
    if ((v18 & 1) == (v24 & 1))
    {
      v14 = v23;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      sub_5267BC(v14, v11, a1, v20);
      return;
    }

LABEL_15:
    sub_ABB4C0();
    __break(1u);
    return;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = *(v21 + 8 * v14);
  *(v21 + 8 * v14) = a1;
}

_OWORD *sub_525E44(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_5222E8(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_527460();
      v8 = v16;
      goto LABEL_8;
    }

    sub_523CE8(v13, a3 & 1);
    v8 = sub_5222E8(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      sub_13C80(0, &qword_E11460, UIView_ptr);
      result = sub_ABB4C0();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = (v18[7] + 32 * v8);
    __swift_destroy_boxed_opaque_existential_0(v19);

    return sub_9ACFC(a1, v19);
  }

  else
  {
    sub_526874(v8, a2, a1, v18);

    return a2;
  }
}

uint64_t sub_525F94(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_AB3470();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_522264(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_5275E0();
      goto LABEL_7;
    }

    sub_523F60(v17, a3 & 1);
    v24 = sub_522264(a2);
    if ((v18 & 1) == (v25 & 1))
    {
      v14 = v24;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_5268DC(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_ABB4C0();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = v21 + *(*(type metadata accessor for PushNotificationObserver.RegisteredHandler(0) - 8) + 72) * v14;

  return sub_52B38C(a1, v22);
}

void sub_52617C(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_5292A8(a2, a3, sub_2ECE20);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_5278E4();
      v11 = v19;
      goto LABEL_8;
    }

    sub_5243B0(v16, a4 & 1);
    v11 = sub_5292A8(a2, a3, sub_2ECE20);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      sub_ABB4C0();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0(v22);

    sub_9ACFC(a1, v22);
  }

  else
  {
    sub_95948(v11, a2, a3, a1, v21);
  }
}

unint64_t sub_5262F4(uint64_t a1, Swift::UInt a2, Swift::UInt a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_2EC75C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 >= v16 && (a4 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v18 >= v16 && (a4 & 1) == 0)
  {
    v19 = result;
    sub_527A88();
    result = v19;
    goto LABEL_8;
  }

  sub_524668(v16, a4 & 1);
  result = sub_2EC75C(a2, a3);
  if ((v17 & 1) == (v20 & 1))
  {
LABEL_8:
    v21 = *v5;
    if (v17)
    {
      *(v21[7] + 8 * result) = a1;
      return result;
    }

    v21[(result >> 6) + 8] |= 1 << result;
    v22 = (v21[6] + 16 * result);
    *v22 = a2;
    v22[1] = a3;
    *(v21[7] + 8 * result) = a1;
    v23 = v21[2];
    v15 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v15)
    {
      v21[2] = v24;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  type metadata accessor for MPCPlayerRequestTracklistRange(0);
  result = sub_ABB4C0();
  __break(1u);
  return result;
}

void sub_526430(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_522338(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_524900(v13, a3 & 1);
      v8 = sub_522338(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        sub_13C80(0, &qword_E0E978, MPCPlayerPath_ptr);
        sub_ABB4C0();
        __break(1u);
        return;
      }
    }

    else
    {
      v16 = v8;
      sub_527BD8();
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    *(v18[7] + 8 * v8) = a1;

    swift_unknownObjectRelease();
    return;
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v19 = v18[2];
  v12 = __OFADD__(v19, 1);
  v20 = v19 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v20;

  v21 = a2;
}

uint64_t sub_5265AC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_AB3470();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_522264(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_527D3C();
      goto LABEL_7;
    }

    sub_524B70(v17, a3 & 1);
    v28 = sub_522264(a2);
    if ((v18 & 1) == (v29 & 1))
    {
      v14 = v28;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_5269B8(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_ABB4C0();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E9E0, &qword_B17FB0);
  v23 = *(v22 - 8);
  v24 = *(v23 + 40);
  v25 = v22;
  v26 = v21 + *(v23 + 72) * v14;

  return v24(v26, a1, v25);
}

uint64_t sub_5267BC(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_AB3470();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

_OWORD *sub_526874(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_9ACFC(a3, (a4[7] + 32 * a1));
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

uint64_t sub_5268DC(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_AB3470();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = type metadata accessor for PushNotificationObserver.RegisteredHandler(0);
  result = sub_52B328(a3, v10 + *(*(v11 - 8) + 72) * a1);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t sub_5269B8(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_AB3470();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E9E0, &qword_B17FB0);
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a3, v11);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

void sub_526AB8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EA60, &qword_B18028);
  v2 = *v0;
  v3 = sub_ABB090();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_526C30()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EA88, &qword_B18040);
  v2 = *v0;
  v3 = sub_ABB090();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_526D8C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EA68, &qword_B18030);
  v2 = *v0;
  v3 = sub_ABB090();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 40 * v17;
        sub_9ACA0(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_808B0(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        sub_9ACFC(v22, (*(v4 + 56) + v17));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_526F30()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EA50, &qword_B18018);
  v2 = *v0;
  v3 = sub_ABB090();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_52707C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EA48, &qword_B18010);
  v2 = *v0;
  v3 = sub_ABB090();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_5271EC()
{
  v1 = v0;
  v32 = sub_AB3470();
  v34 = *(v32 - 8);
  __chkstk_darwin();
  v31 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DB68, &qword_B15158);
  v3 = *v0;
  v4 = sub_ABB090();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v27 = v1;
    v28 = v3 + 64;
    if (v5 != v3 || v6 >= &v7[8 * v8])
    {
      memmove(v6, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v33 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v29 = v34 + 32;
    v30 = v34 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v35 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v34;
        v20 = *(v34 + 72) * v18;
        v22 = v31;
        v21 = v32;
        (*(v34 + 16))(v31, *(v3 + 48) + v20, v32);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v33;
        (*(v19 + 32))(*(v33 + 48) + v20, v22, v21);
        *(*(v24 + 56) + 8 * v18) = v23;
        v25 = v23;
        v13 = v35;
      }

      while (v35);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v27;
        v5 = v33;
        goto LABEL_18;
      }

      v17 = *(v28 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v35 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }
}

void sub_527460()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E0EA30, &unk_B17FF8);
  v2 = *v0;
  v3 = sub_ABB090();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_808B0(*(v2 + 56) + 32 * v17, v20);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_9ACFC(v20, (*(v4 + 56) + 32 * v17));
        v19 = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_5275E0()
{
  v1 = v0;
  v35 = *(type metadata accessor for PushNotificationObserver.RegisteredHandler(0) - 8);
  __chkstk_darwin();
  v34 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_AB3470();
  v36 = *(v33 - 8);
  __chkstk_darwin();
  v32 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EA18, &qword_B17FE8);
  v4 = *v0;
  v5 = sub_ABB090();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v4 + 64;
    if (v6 != v4 || v7 >= &v8[8 * v9])
    {
      memmove(v7, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v37 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v30 = v36 + 32;
    v31 = v36 + 16;
    v16 = v32;
    if (v14)
    {
      do
      {
        v17 = __clz(__rbit64(v14));
        v38 = (v14 - 1) & v14;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = v36;
        v22 = *(v36 + 72) * v20;
        v23 = v33;
        (*(v36 + 16))(v16, *(v4 + 48) + v22, v33);
        v24 = v34;
        v25 = *(v35 + 72) * v20;
        sub_52B3F0(*(v4 + 56) + v25, v34);
        v26 = v37;
        (*(v21 + 32))(*(v37 + 48) + v22, v16, v23);
        sub_52B328(v24, *(v26 + 56) + v25);
        v14 = v38;
      }

      while (v38);
    }

    v18 = v10;
    v6 = v37;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v28;
        goto LABEL_18;
      }

      v19 = *(v29 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v38 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }
}

void sub_5278E4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EA08, &qword_B27AC0);
  v2 = *v0;
  v3 = sub_ABB090();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_808B0(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_9ACFC(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }
}

void sub_527A88()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E9F0, &qword_B17FC0);
  v2 = *v0;
  v3 = sub_ABB090();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 16 * v14) = *(*(v2 + 48) + 16 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_527BD8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E980, &unk_B17F60);
  v2 = *v0;
  v3 = sub_ABB090();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        swift_unknownObjectRetain();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_527D3C()
{
  v1 = v0;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E9E0, &qword_B17FB0);
  v44 = *(v41 - 8);
  __chkstk_darwin();
  v40 = &v30 - v2;
  v39 = sub_AB3470();
  v43 = *(v39 - 8);
  __chkstk_darwin();
  v38 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E9E8, &qword_B17FB8);
  v4 = *v0;
  v5 = sub_ABB090();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v4 + 64;
    if (v6 != v4 || v7 >= &v8[8 * v9])
    {
      memmove(v7, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v42 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v35 = v43 + 16;
    v36 = v15;
    v33 = v43 + 32;
    v34 = v44 + 16;
    v32 = v44 + 32;
    v37 = v4;
    v17 = v38;
    v16 = v39;
    if (v14)
    {
      do
      {
        v18 = __clz(__rbit64(v14));
        v45 = (v14 - 1) & v14;
LABEL_14:
        v21 = v18 | (v10 << 6);
        v22 = v43;
        v23 = *(v43 + 72) * v21;
        (*(v43 + 16))(v17, *(v4 + 48) + v23, v16);
        v24 = v44;
        v25 = *(v44 + 72) * v21;
        v26 = v40;
        v27 = v41;
        (*(v44 + 16))(v40, *(v4 + 56) + v25, v41);
        v28 = v42;
        (*(v22 + 32))(*(v42 + 48) + v23, v17, v16);
        v29 = *(v28 + 56);
        v4 = v37;
        (*(v24 + 32))(v29 + v25, v26, v27);
        v15 = v36;
        v14 = v45;
      }

      while (v45);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v30;
        v6 = v42;
        goto LABEL_18;
      }

      v20 = *(v31 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v45 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }
}

void sub_528098()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E9B8, &qword_B17F88);
  v30 = v0;
  v1 = *v0;
  v31 = sub_ABB090();
  if (*(v1 + 16))
  {
    v2 = (v31 + 64);
    v3 = ((1 << *(v31 + 32)) + 63) >> 6;
    if (v31 != v1 || v2 >= v1 + 64 + 8 * v3)
    {
      memmove(v2, (v1 + 64), 8 * v3);
    }

    v5 = 0;
    *(v31 + 16) = *(v1 + 16);
    v6 = 1 << *(v1 + 32);
    v7 = *(v1 + 64);
    v8 = -1;
    if (v6 < 64)
    {
      v8 = ~(-1 << v6);
    }

    v9 = v8 & v7;
    v10 = (v6 + 63) >> 6;
    if ((v8 & v7) != 0)
    {
      do
      {
        v11 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_17:
        v14 = v11 | (v5 << 6);
        v15 = *(v1 + 56) + 56 * v14;
        v16 = *v15;
        v17 = *(v15 + 8);
        v18 = *(v15 + 16);
        v19 = *(v15 + 24);
        v20 = *(v15 + 32);
        v21 = *(v15 + 40);
        v22 = *(v15 + 48);
        *(*(v31 + 48) + v14) = *(*(v1 + 48) + v14);
        v23 = *(v31 + 56) + 56 * v14;
        *v23 = v16;
        *(v23 + 8) = v17;
        *(v23 + 16) = v18;
        *(v23 + 24) = v19;
        *(v23 + 32) = v20;
        *(v23 + 40) = v21;
        *(v23 + 48) = v22;
        v24 = v17;
        v25 = v18;
        v26 = v19;
        v27 = v20;
        v28 = v21;
        v29 = v22;
      }

      while (v9);
    }

    v12 = v5;
    while (1)
    {
      v5 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v5 >= v10)
      {
        goto LABEL_19;
      }

      v13 = *(v1 + 64 + 8 * v5);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v9 = (v13 - 1) & v13;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v30 = v31;
  }
}

void sub_528254()
{
  v1 = v0;
  v35 = sub_AB4590();
  v37 = *(v35 - 8);
  __chkstk_darwin();
  v34 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E970, &unk_B17F50);
  v3 = *v0;
  v4 = sub_ABB090();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v3 + 64;
    if (v5 != v3 || v6 >= &v7[8 * v8])
    {
      memmove(v6, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v36 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v38 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = 16 * v18;
        v20 = (*(v3 + 48) + 16 * v18);
        v21 = *v20;
        v22 = v20[1];
        v23 = v37;
        v24 = *(v37 + 72) * v18;
        v25 = v34;
        v26 = v35;
        (*(v37 + 16))(v34, *(v3 + 56) + v24, v35);
        v27 = v36;
        v28 = (*(v36 + 48) + v19);
        *v28 = v21;
        v28[1] = v22;
        (*(v23 + 32))(*(v27 + 56) + v24, v25, v26);

        v13 = v38;
      }

      while (v38);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v30;
        v5 = v36;
        goto LABEL_18;
      }

      v17 = *(v31 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }
}

uint64_t sub_5284D4(uint64_t result, int64_t a2, uint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v3;
  v5 = *(*v3 + 2);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = __OFSUB__(1, v6);
  v8 = 1 - v6;
  if (v7)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = v5 + v8;
  if (__OFADD__(v5, v8))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v4;
  if (!isUniquelyReferenced_nonNull_native || v9 > *(v4 + 3) >> 1)
  {
    if (v5 <= v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = v5;
    }

    v4 = sub_506E8C(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    *v3 = v4;
  }

  result = sub_61D260();
  *v3 = v4;
  return result;
}

void sub_528648(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_735B48(v2);
  }

  v3 = *(v2 + 2);
  v4[0] = v2 + 32;
  v4[1] = v3;
  sub_5286DC(v4, sub_52B630, sub_52B614);
  *a1 = v2;
}

void sub_5286DC(uint64_t a1, void (*a2)(void *, _BYTE *, uint64_t, uint64_t), void (*a3)(void, uint64_t, uint64_t, uint64_t))
{
  v6 = *(a1 + 8);
  v7 = sub_ABB2B0(v6);
  if (v7 < v6)
  {
    if (v6 >= -1)
    {
      v8 = v7;
      if (v6 <= 1)
      {
        v9 = _swiftEmptyArrayStorage;
      }

      else
      {
        v9 = sub_AB97D0();
        v9[2] = v6 / 2;
      }

      v11[0] = v9 + 4;
      v11[1] = v6 / 2;
      v10 = v9;
      a2(v11, v12, a1, v8);
      v10[2] = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v6 < 0)
  {
    goto LABEL_12;
  }

  if (v6)
  {
    a3(0, v6, 1, a1);
  }
}

uint64_t *sub_5287E4(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 56 * a3 - 56;
    v6 = result - a3;
LABEL_5:
    v7 = *(v4 + 56 * a3);
    v8 = v6;
    result = v5;
    while (1)
    {
      v9 = &unk_B18080 + 8 * v7;
      if (v7 < 0)
      {
        v9 = &unk_B18220 + 8 * *(&stru_20.cmd + (v7 & 0x7FFFFFFFFFFFFFFFLL));
      }

      v10 = result + 7;
      v11 = *result;
      if (*result < 0)
      {
        v12 = &unk_B18220 + 8 * *(&stru_20.cmd + (v11 & 0x7FFFFFFFFFFFFFFFLL));
      }

      else
      {
        v12 = &unk_B18080 + 8 * v11;
      }

      if (*v9 >= *v12)
      {
LABEL_4:
        ++a3;
        v5 += 56;
        --v6;
        if (a3 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      v13 = *(result + 4);
      v14 = *(result + 5);
      v15 = *(result + 6);
      v16 = *(result + 1);
      *v10 = *result;
      *(result + 9) = v16;
      *(result + 11) = *(result + 2);
      v17 = result[6];
      *result = v7;
      *(result + 1) = v13;
      *(result + 3) = v14;
      *(result + 5) = v15;
      result -= 7;
      v10[6] = v17;
      if (__CFADD__(v8++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_5288CC(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v7 = a3[1];
  if (v7 < 1)
  {
    v10 = _swiftEmptyArrayStorage;
LABEL_105:
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_143;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_107:
      v102 = *(v10 + 2);
      if (v102 >= 2)
      {
        while (*a3)
        {
          v103 = *&v10[16 * v102];
          v104 = *&v10[16 * v102 + 24];
          sub_528FA0((*a3 + 56 * v103), (*a3 + 56 * *&v10[16 * v102 + 16]), *a3 + 56 * v104, v5);
          if (v6)
          {
            goto LABEL_115;
          }

          if (v104 < v103)
          {
            goto LABEL_130;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_735B34(v10);
          }

          if (v102 - 2 >= *(v10 + 2))
          {
            goto LABEL_131;
          }

          v105 = &v10[16 * v102];
          *v105 = v103;
          *(v105 + 1) = v104;
          sub_735AA8(v102 - 1);
          v102 = *(v10 + 2);
          if (v102 <= 1)
          {
            goto LABEL_115;
          }
        }

        goto LABEL_141;
      }

LABEL_115:

      return;
    }

LABEL_137:
    v10 = sub_735B34(v10);
    goto LABEL_107;
  }

  v8 = a4;
  v9 = 0;
  v10 = _swiftEmptyArrayStorage;
LABEL_4:
  v11 = v9++;
  if (v9 >= v7)
  {
    goto LABEL_32;
  }

  v12 = *a3;
  v13 = *(*a3 + 56 * v9);
  if (v13 < 0)
  {
    v14 = &unk_B18220 + 8 * *(&stru_20.cmd + (v13 & 0x7FFFFFFFFFFFFFFFLL));
  }

  else
  {
    v14 = &unk_B18080 + 8 * v13;
  }

  v15 = *(v12 + 56 * v11);
  if (v15 < 0)
  {
    v16 = &unk_B18220 + 8 * *(&stru_20.cmd + (v15 & 0x7FFFFFFFFFFFFFFFLL));
  }

  else
  {
    v16 = &unk_B18080 + 8 * v15;
  }

  v17 = *v14;
  v18 = *v16;
  v19 = v11 + 2;
  if (v7 > v11 + 2)
  {
    v19 = v7;
  }

  v20 = v19 - v11 - 2;
  v21 = 56 * v11;
  v22 = (v12 + 56 * v11 + 112);
  while (v20)
  {
    v25 = *v22;
    if (*v22 < 0)
    {
      v26 = &unk_B18220 + 8 * *(&stru_20.cmd + (v25 & 0x7FFFFFFFFFFFFFFFLL));
      if ((v13 & 0x8000000000000000) == 0)
      {
LABEL_21:
        v23 = &unk_B18080 + 8 * v13;
        goto LABEL_15;
      }
    }

    else
    {
      v26 = &unk_B18080 + 8 * v25;
      if ((v13 & 0x8000000000000000) == 0)
      {
        goto LABEL_21;
      }
    }

    v23 = &unk_B18220 + 8 * *(&stru_20.cmd + (v13 & 0x7FFFFFFFFFFFFFFFLL));
LABEL_15:
    v24 = (v17 < v18) ^ (*v26 >= *v23);
    --v20;
    v22 += 7;
    ++v9;
    v13 = v25;
    if ((v24 & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  v9 = v19;
LABEL_23:
  if (v17 < v18)
  {
    if (v9 < v11)
    {
      goto LABEL_134;
    }

    if (v11 < v9)
    {
      v27 = 56 * v9;
      v28 = v9;
      v29 = v11;
      do
      {
        if (v29 != --v28)
        {
          v39 = *a3;
          if (!*a3)
          {
            goto LABEL_140;
          }

          v30 = (v39 + v21);
          v31 = *(v39 + v21 + 48);
          v32 = v39 + v27;
          v33 = *v30;
          v34 = v30[1];
          v35 = v30[2];
          v36 = *(v32 - 40);
          v37 = *(v32 - 24);
          v38 = *(v32 - 56);
          *(v30 + 6) = *(v32 - 8);
          v30[1] = v36;
          v30[2] = v37;
          *v30 = v38;
          *(v32 - 56) = v33;
          *(v32 - 40) = v34;
          *(v32 - 24) = v35;
          *(v32 - 8) = v31;
        }

        ++v29;
        v27 -= 56;
        v21 += 56;
      }

      while (v29 < v28);
    }
  }

LABEL_32:
  v40 = a3[1];
  if (v9 >= v40)
  {
    goto LABEL_54;
  }

  if (__OFSUB__(v9, v11))
  {
    goto LABEL_133;
  }

  if (v9 - v11 >= v8)
  {
    goto LABEL_54;
  }

  if (__OFADD__(v11, v8))
  {
    goto LABEL_135;
  }

  if (v11 + v8 < v40)
  {
    v40 = v11 + v8;
  }

  if (v40 < v11)
  {
LABEL_136:
    __break(1u);
    goto LABEL_137;
  }

  if (v9 == v40)
  {
    goto LABEL_54;
  }

  v41 = *a3;
  v42 = *a3 + 56 * v9 - 56;
  v43 = v11 - v9;
LABEL_42:
  v44 = *(v41 + 56 * v9);
  v45 = v43;
  v46 = v42;
  while (1)
  {
    v47 = &unk_B18080 + 8 * v44;
    if (v44 < 0)
    {
      v47 = &unk_B18220 + 8 * *(&stru_20.cmd + (v44 & 0x7FFFFFFFFFFFFFFFLL));
    }

    v49 = v46 + 56;
    v48 = *v46;
    if ((*v46 & 0x8000000000000000) != 0)
    {
      v50 = &unk_B18220 + 8 * *(&stru_20.cmd + (v48 & 0x7FFFFFFFFFFFFFFFLL));
    }

    else
    {
      v50 = &unk_B18080 + 8 * v48;
    }

    if (*v47 >= *v50)
    {
LABEL_41:
      ++v9;
      v42 += 56;
      --v43;
      if (v9 == v40)
      {
        v9 = v40;
LABEL_54:
        if (v9 < v11)
        {
          goto LABEL_132;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_506670(0, *(v10 + 2) + 1, 1, v10);
        }

        v5 = *(v10 + 2);
        v57 = *(v10 + 3);
        v58 = v5 + 1;
        if (v5 >= v57 >> 1)
        {
          v10 = sub_506670((v57 > 1), v5 + 1, 1, v10);
        }

        *(v10 + 2) = v58;
        v59 = &v10[16 * v5];
        *(v59 + 4) = v11;
        *(v59 + 5) = v9;
        v60 = *a1;
        if (!*a1)
        {
          goto LABEL_142;
        }

        if (!v5)
        {
LABEL_3:
          v7 = a3[1];
          v8 = a4;
          if (v9 >= v7)
          {
            goto LABEL_105;
          }

          goto LABEL_4;
        }

        while (1)
        {
          v61 = v58 - 1;
          if (v58 >= 4)
          {
            break;
          }

          if (v58 == 3)
          {
            v62 = *(v10 + 4);
            v63 = *(v10 + 5);
            v72 = __OFSUB__(v63, v62);
            v64 = v63 - v62;
            v65 = v72;
LABEL_74:
            if (v65)
            {
              goto LABEL_121;
            }

            v78 = &v10[16 * v58];
            v80 = *v78;
            v79 = *(v78 + 1);
            v81 = __OFSUB__(v79, v80);
            v82 = v79 - v80;
            v83 = v81;
            if (v81)
            {
              goto LABEL_124;
            }

            v84 = &v10[16 * v61 + 32];
            v86 = *v84;
            v85 = *(v84 + 1);
            v72 = __OFSUB__(v85, v86);
            v87 = v85 - v86;
            if (v72)
            {
              goto LABEL_127;
            }

            if (__OFADD__(v82, v87))
            {
              goto LABEL_128;
            }

            if (v82 + v87 >= v64)
            {
              if (v64 < v87)
              {
                v61 = v58 - 2;
              }

              goto LABEL_95;
            }

            goto LABEL_88;
          }

          v88 = &v10[16 * v58];
          v90 = *v88;
          v89 = *(v88 + 1);
          v72 = __OFSUB__(v89, v90);
          v82 = v89 - v90;
          v83 = v72;
LABEL_88:
          if (v83)
          {
            goto LABEL_123;
          }

          v91 = &v10[16 * v61];
          v93 = *(v91 + 4);
          v92 = *(v91 + 5);
          v72 = __OFSUB__(v92, v93);
          v94 = v92 - v93;
          if (v72)
          {
            goto LABEL_126;
          }

          if (v94 < v82)
          {
            goto LABEL_3;
          }

LABEL_95:
          v99 = v61 - 1;
          if (v61 - 1 >= v58)
          {
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
LABEL_130:
            __break(1u);
LABEL_131:
            __break(1u);
LABEL_132:
            __break(1u);
LABEL_133:
            __break(1u);
LABEL_134:
            __break(1u);
LABEL_135:
            __break(1u);
            goto LABEL_136;
          }

          if (!*a3)
          {
            goto LABEL_139;
          }

          v100 = *&v10[16 * v99 + 32];
          v5 = *&v10[16 * v61 + 40];
          sub_528FA0((*a3 + 56 * v100), (*a3 + 56 * *&v10[16 * v61 + 32]), *a3 + 56 * v5, v60);
          if (v6)
          {
            goto LABEL_115;
          }

          if (v5 < v100)
          {
            goto LABEL_117;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_735B34(v10);
          }

          if (v99 >= *(v10 + 2))
          {
            goto LABEL_118;
          }

          v101 = &v10[16 * v99];
          *(v101 + 4) = v100;
          *(v101 + 5) = v5;
          sub_735AA8(v61);
          v58 = *(v10 + 2);
          if (v58 <= 1)
          {
            goto LABEL_3;
          }
        }

        v66 = &v10[16 * v58 + 32];
        v67 = *(v66 - 64);
        v68 = *(v66 - 56);
        v72 = __OFSUB__(v68, v67);
        v69 = v68 - v67;
        if (v72)
        {
          goto LABEL_119;
        }

        v71 = *(v66 - 48);
        v70 = *(v66 - 40);
        v72 = __OFSUB__(v70, v71);
        v64 = v70 - v71;
        v65 = v72;
        if (v72)
        {
          goto LABEL_120;
        }

        v73 = &v10[16 * v58];
        v75 = *v73;
        v74 = *(v73 + 1);
        v72 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v72)
        {
          goto LABEL_122;
        }

        v72 = __OFADD__(v64, v76);
        v77 = v64 + v76;
        if (v72)
        {
          goto LABEL_125;
        }

        if (v77 >= v69)
        {
          v95 = &v10[16 * v61 + 32];
          v97 = *v95;
          v96 = *(v95 + 1);
          v72 = __OFSUB__(v96, v97);
          v98 = v96 - v97;
          if (v72)
          {
            goto LABEL_129;
          }

          if (v64 < v98)
          {
            v61 = v58 - 2;
          }

          goto LABEL_95;
        }

        goto LABEL_74;
      }

      goto LABEL_42;
    }

    if (!v41)
    {
      break;
    }

    v51 = *(v46 + 64);
    v52 = *(v46 + 80);
    v53 = *(v46 + 96);
    v54 = *(v46 + 16);
    *v49 = *v46;
    *(v46 + 72) = v54;
    *(v46 + 88) = *(v46 + 32);
    v55 = *(v46 + 48);
    *v46 = v44;
    *(v46 + 8) = v51;
    *(v46 + 24) = v52;
    *(v46 + 40) = v53;
    v46 -= 56;
    *(v49 + 48) = v55;
    if (__CFADD__(v45++, 1))
    {
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
}

uint64_t sub_528FA0(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 56;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 56;
  if (v9 >= v11)
  {
    if (a4 != __src || &__src[56 * v11] <= a4)
    {
      memmove(a4, __src, 56 * v11);
    }

    v12 = &v4[56 * v11];
    if (v10 < 56 || v6 <= v7)
    {
      goto LABEL_42;
    }

LABEL_26:
    v22 = v6 - 56;
    v5 -= 56;
    v23 = v12;
    while (1)
    {
      v25 = *(v23 - 56);
      v23 -= 56;
      v24 = v25;
      if (v25 < 0)
      {
        v26 = &unk_B18220 + 8 * *(&stru_20.cmd + (v24 & 0x7FFFFFFFFFFFFFFFLL));
        v27 = *v22;
        if ((*v22 & 0x8000000000000000) != 0)
        {
LABEL_32:
          v28 = &unk_B18220 + 8 * *(&stru_20.cmd + (v27 & 0x7FFFFFFFFFFFFFFFLL));
          goto LABEL_33;
        }
      }

      else
      {
        v26 = &unk_B18080 + 8 * v24;
        v27 = *v22;
        if ((*v22 & 0x8000000000000000) != 0)
        {
          goto LABEL_32;
        }
      }

      v28 = &unk_B18080 + 8 * v27;
LABEL_33:
      if (*v26 < *v28)
      {
        if ((v5 + 56) != v6)
        {
          v32 = *v22;
          v33 = *(v6 - 40);
          v34 = *(v6 - 24);
          *(v5 + 48) = *(v6 - 1);
          *(v5 + 16) = v33;
          *(v5 + 32) = v34;
          *v5 = v32;
        }

        if (v12 <= v4 || (v6 -= 56, v22 <= v7))
        {
          v6 = v22;
          goto LABEL_42;
        }

        goto LABEL_26;
      }

      if ((v5 + 56) != v12)
      {
        v29 = *v23;
        v30 = *(v23 + 16);
        v31 = *(v23 + 32);
        *(v5 + 48) = *(v23 + 48);
        *(v5 + 16) = v30;
        *(v5 + 32) = v31;
        *v5 = v29;
      }

      v5 -= 56;
      v12 = v23;
      if (v23 <= v4)
      {
        v12 = v23;
        goto LABEL_42;
      }
    }
  }

  if (a4 != __dst || &__dst[56 * v9] <= a4)
  {
    memmove(a4, __dst, 56 * v9);
  }

  v12 = &v4[56 * v9];
  if (v8 >= 56 && v6 < v5)
  {
    do
    {
      v13 = *v6;
      if ((*v6 & 0x8000000000000000) != 0)
      {
        v14 = &unk_B18220 + 8 * *(&stru_20.cmd + (v13 & 0x7FFFFFFFFFFFFFFFLL));
        v15 = *v4;
        if ((*v4 & 0x8000000000000000) == 0)
        {
LABEL_9:
          v16 = &unk_B18080 + 8 * v15;
          goto LABEL_12;
        }
      }

      else
      {
        v14 = &unk_B18080 + 8 * v13;
        v15 = *v4;
        if ((*v4 & 0x8000000000000000) == 0)
        {
          goto LABEL_9;
        }
      }

      v16 = &unk_B18220 + 8 * *(&stru_20.cmd + (v15 & 0x7FFFFFFFFFFFFFFFLL));
LABEL_12:
      if (*v14 >= *v16)
      {
        v17 = v4;
        v18 = v7 == v4;
        v4 += 56;
        if (v18)
        {
          goto LABEL_18;
        }

LABEL_17:
        v19 = *v17;
        v20 = *(v17 + 1);
        v21 = *(v17 + 2);
        *(v7 + 6) = *(v17 + 6);
        *(v7 + 1) = v20;
        *(v7 + 2) = v21;
        *v7 = v19;
        goto LABEL_18;
      }

      v17 = v6;
      v18 = v7 == v6;
      v6 += 56;
      if (!v18)
      {
        goto LABEL_17;
      }

LABEL_18:
      v7 += 56;
    }

    while (v4 < v12 && v6 < v5);
  }

  v6 = v7;
LABEL_42:
  v35 = ((v12 - v4) * 0x4924924924924925) >> 64;
  v36 = (v35 >> 4) + (v35 >> 63);
  if (v6 != v4 || v6 >= &v4[56 * v36])
  {
    memmove(v6, v4, 56 * v36);
  }

  return 1;
}

uint64_t sub_5292A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  sub_ABB5C0();
  sub_AB93F0();
  v5 = sub_ABB610();

  return a3(a1, a2, v5);
}

uint64_t sub_52932C(void *(*a1)(void *__return_ptr), uint64_t a2, void (*a3)(void *__return_ptr, void *))
{
  v4 = a1(v29);
  a3(v26, v4);
  v5 = v30;
  v6 = v31;
  __swift_project_boxed_opaque_existential_1(v29, v30);
  v7 = (*(v6 + 8))(v5, v6);
  v9 = v8;
  v10 = v27;
  v11 = v28;
  __swift_project_boxed_opaque_existential_1(v26, v27);
  if (v7 == (*(v11 + 8))(v10, v11) && v9 == v12)
  {
  }

  else
  {
    v14 = sub_ABB3C0();

    v15 = 0;
    if ((v14 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  v16 = v30;
  v17 = v31;
  __swift_project_boxed_opaque_existential_1(v29, v30);
  v18 = (*(v17 + 24))(v16, v17);
  v20 = v19;
  v21 = v27;
  v22 = v28;
  __swift_project_boxed_opaque_existential_1(v26, v27);
  v23 = (*(v22 + 24))(v21, v22);
  if (v20)
  {
    if (v24)
    {
      if (v18 == v23 && v20 == v24)
      {

        v15 = 1;
      }

      else
      {
        v15 = sub_ABB3C0();
      }
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    if (!v24)
    {
      v15 = 1;
      goto LABEL_18;
    }

    v15 = 0;
  }

LABEL_18:
  __swift_destroy_boxed_opaque_existential_0(v26);
  __swift_destroy_boxed_opaque_existential_0(v29);
  return v15 & 1;
}

uint64_t sub_52953C()
{

  return swift_deallocObject();
}

char *sub_529574(uint64_t a1, char **a2, uint64_t a3, int a4)
{
  v29 = a4;
  v5 = *(a1 + 16);
  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  v8 = (a1 + 40);
  v9 = _swiftEmptyArrayStorage;
  while (1)
  {
    v11 = v8[5];
    v12 = *v8;
    LOBYTE(v25[0]) = *(v8 - 8);
    v25[1] = v12;
    v21 = *(v8 + 3);
    v26 = *(v8 + 1);
    v27 = v21;
    v28 = v11;

    sub_51FF58(v25, a2, a3, v29 & 1, v23);
    if (v4)
    {
      break;
    }

    if (*&v23[0] >> 60 != 15)
    {
      v22 = v23[0];
      v19 = v23[2];
      v20 = v23[1];
      v13 = v24;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_506420(0, *(v9 + 2) + 1, 1, v9);
      }

      v15 = *(v9 + 2);
      v14 = *(v9 + 3);
      v16 = v22;
      if (v15 >= v14 >> 1)
      {
        v17 = sub_506420((v14 > 1), v15 + 1, 1, v9);
        v16 = v22;
        v9 = v17;
      }

      *(v9 + 2) = v15 + 1;
      v10 = &v9[56 * v15];
      *(v10 + 2) = v16;
      *(v10 + 3) = v20;
      *(v10 + 4) = v19;
      *(v10 + 10) = v13;
    }

    v8 += 7;
    if (!--v5)
    {
      return v9;
    }
  }

  return v9;
}

char *sub_529774(char *result, int64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 2);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = &result[-a2];
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = &v7[v5];
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > *(v4 + 3) >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_506E8C(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_61C65C(v6, a2, 0);
  *v2 = v4;
  return result;
}

unint64_t sub_529834(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EA60, &qword_B18028);
    v3 = sub_ABB0C0();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_5292A8(v5, v6, sub_2ECE20);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_52995C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EA08, &qword_B27AC0);
    v3 = sub_ABB0C0();
    v4 = a1 + 32;

    while (1)
    {
      sub_15F84(v4, &v13, &qword_E0EA58, &qword_B18020);
      v5 = v13;
      v6 = v14;
      result = sub_5292A8(v13, v14, sub_2ECE20);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_9ACFC(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

void sub_529AA0(uint64_t result, char **a2, uint64_t *a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    v4 = 0;
    v5 = result + 40;
    v6 = _swiftEmptyArrayStorage;
    v24 = *(result + 16);
    v22 = result + 40;
    do
    {
      v23 = v6;
      v7 = (v5 + 56 * v4);
      for (i = v4; ; ++i)
      {
        if (i >= v3)
        {
          __break(1u);
LABEL_23:
          __break(1u);
          return;
        }

        v4 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_23;
        }

        v9 = *(v7 - 1);
        v32 = v7[4];
        v10 = v7[5];
        v30 = v7[2];
        v31 = v7[3];
        v28 = *v7;
        v29 = v7[1];
        if (v9 < 0)
        {
          break;
        }

        v27 = v10;

        sub_ABAD90(49);

        v33._countAndFlagsBits = ActionType.rawValue.getter(v9);
        sub_AB94A0(v33);

        v34._object = 0x8000000000B6A5E0;
        v34._countAndFlagsBits = 0xD00000000000002BLL;
        sub_AB94A0(v34);
        v11 = *a2;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *a2 = v11;
        v13 = i + 1;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v11 = sub_506314(0, *(v11 + 2) + 1, 1, v11);
          *a2 = v11;
        }

        v15 = *(v11 + 2);
        v14 = *(v11 + 3);
        if (v15 >= v14 >> 1)
        {
          v11 = sub_506314((v14 > 1), v15 + 1, 1, v11);
          *a2 = v11;
        }

        *(v11 + 2) = v15 + 1;
        v16 = &v11[16 * v15];
        *(v16 + 4) = 544743456;
        *(v16 + 5) = 0xE400000000000000;
        v17 = *a3;

        v18 = sub_5E95F8(v9, v17);

        v3 = v24;
        v4 = i + 1;
        v10 = v27;
        if ((v18 & 1) == 0)
        {
          goto LABEL_15;
        }

        sub_529FC8(v9, v28, v29, v30, v31, v32, v27);
        v7 += 7;
        if (v13 == v24)
        {
          return;
        }
      }

LABEL_15:
      v6 = v23;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_5038D8(0, v23[2] + 1, 1);
        v6 = v23;
      }

      v5 = v22;
      v20 = v6[2];
      v19 = v6[3];
      if (v20 >= v19 >> 1)
      {
        sub_5038D8((v19 > 1), v20 + 1, 1);
        v6 = v23;
      }

      v6[2] = v20 + 1;
      v21 = &v6[7 * v20];
      v21[4] = v9;
      v21[5] = v28;
      v21[6] = v29;
      v21[7] = v30;
      v21[8] = v31;
      v21[9] = v32;
      v21[10] = v10;
    }

    while (v4 != v3);
  }
}

void sub_529D90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v6 = *v4;
  v7 = *(*v4 + 2);
  if (v7 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = __OFSUB__(1, v9);
  v11 = 1 - v9;
  if (v10)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = v7 + v11;
  if (__OFADD__(v7, v11))
  {
LABEL_17:
    __break(1u);
    return;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v12 > *(v6 + 3) >> 1)
  {
    if (v7 <= v12)
    {
      v16 = v12;
    }

    else
    {
      v16 = v7;
    }

    v6 = sub_506314(isUniquelyReferenced_nonNull_native, v16, 1, v6);
    *v4 = v6;
  }

  sub_450504(a1, a2, 1, a3, a4);
  *v4 = v6;
}

unint64_t sub_529E6C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EA88, &qword_B18040);
    v3 = sub_ABB0C0();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;

      result = sub_522174(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_529F60(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E0E810, &unk_B17BB8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_529FC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if ((a1 & 0x8000000000000000) == 0)
  {
  }

  return result;
}

uint64_t sub_52A038()
{

  return swift_deallocObject();
}

uint64_t sub_52A070()
{

  return sub_AB7530();
}

uint64_t sub_52A0D4()
{

  return swift_deallocObject();
}

uint64_t sub_52A10C()
{
  result = (*(v0 + 16))();
  if (result)
  {
    return sub_AB7520();
  }

  return result;
}

unint64_t sub_52A140()
{
  result = qword_E0E828;
  if (!qword_E0E828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E0E828);
  }

  return result;
}

unint64_t sub_52A198()
{
  result = qword_E0E830;
  if (!qword_E0E830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E0E830);
  }

  return result;
}

uint64_t sub_52A1FC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_52A244(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_52A2D0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_AB3470();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_52A338(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E9A8, &qword_B17F78);
    v3 = sub_ABB0C0();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_5292A8(v5, v6, sub_2ECE20);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_52A468(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EA68, &qword_B18030);
    v3 = sub_ABB0C0();
    v4 = a1 + 32;

    while (1)
    {
      sub_15F84(v4, v13, &unk_E0EA70, &qword_B18038);
      result = sub_2EC004(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_9ACFC(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_52A5A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EA50, &qword_B18018);
    v3 = sub_ABB0C0();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = sub_5221FC(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

void *sub_52A684(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyDictionarySingleton;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E9A0, &qword_B17F70);
  v3 = sub_ABB0C0();
  LOBYTE(v4) = *(a1 + 32);
  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7 = sub_5221FC(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v5;
  v11 = (a1 + 72);
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v3[6] + v9) = v4;
    v12 = (v3[7] + 16 * v9);
    *v12 = v6;
    v12[1] = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 16);
    v6 = *(v11 - 1);
    v17 = *v11;

    v9 = sub_5221FC(v4);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}