BOOL sub_21DF08270(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t sub_21DF082E0()
{

  return swift_deallocObject();
}

uint64_t sub_21DF08318(uint64_t *a1)
{
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_21E140624();

    return sub_21E13FB54();
  }

  else
  {
    sub_21E13FCD4();
    swift_getWitnessTable();
    sub_21E140454();
    sub_21E13FB54();
    sub_21E142724();
    swift_getWitnessTable();
    sub_21E13FCD4();
    swift_getWitnessTable();
    sub_21E140454();
    return sub_21E13FB54();
  }
}

uint64_t sub_21DF0847C(uint64_t *a1)
{
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_21E140624();
    sub_21E13FB54();
  }

  else
  {
    sub_21E13FCD4();
    swift_getWitnessTable();
    sub_21E140454();
    sub_21E13FB54();
    sub_21E142724();
    swift_getWitnessTable();
    sub_21E13FCD4();
    swift_getWitnessTable();
    sub_21E140454();
    sub_21E13FB54();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_21DF0867C(uint64_t *a1)
{
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    sub_21E13F954();
  }

  else
  {
    sub_21E13F844();
  }

  return sub_21E13FB54();
}

uint64_t sub_21DF086E4(uint64_t *a1)
{
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    sub_21E13F954();
    sub_21E13FB54();
    sub_21DF23674();
  }

  else
  {
    sub_21E13F844();
    sub_21E13FB54();
    sub_21DF233CC(&unk_280F68FF0, MEMORY[0x277CDD8B0], MEMORY[0x277CDD8A0]);
  }

  return swift_getWitnessTable();
}

uint64_t sub_21DF087D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA68A0, &unk_21E144C10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for WaypointShape(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for WaypointShape(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_21DF08894()
{

  return swift_deallocObject();
}

uint64_t sub_21DF08938()
{

  return swift_deallocObject();
}

uint64_t sub_21DF08978(void *a1)
{
  sub_21E13FB54();
  sub_21DF26A24();
  return swift_getWitnessTable();
}

uint64_t sub_21DF08D24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21E13EEE4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_21E13F0A4();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_21DF08E14(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_21E13EEE4();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_21E13F0A4();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_21DF08FD8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_21DF288CC(v1, v2);
}

uint64_t sub_21DF09028(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_21DF09038()
{

  return swift_deallocObject();
}

uint64_t sub_21DF09134()
{

  return swift_deallocObject();
}

uint64_t sub_21DF0916C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6DB8, &qword_21E1460C0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6DC0, qword_21E1460C8);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 36);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_21DF092A8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6DB8, &qword_21E1460C0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6DC0, qword_21E1460C8);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 36);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_21DF093EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6FE8, &qword_21E1462B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21DF0945C()
{
  v1 = type metadata accessor for ScrollableSegmentedControl(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = sub_21E13FBB4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070, &qword_21E146170);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_21E13F444();
    (*(*(v8 - 8) + 8))(v0 + v3, v8);
  }

  else
  {
  }

  v9 = v0 + v3 + *(v1 + 36);
  if (!(*(v6 + 48))(v9, 1, v5))
  {
    (*(v6 + 8))(v9, v5);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6DC0, qword_21E1460C8);

  (*(v6 + 8))(v0 + ((v3 + v4 + v7) & ~v7), v5);

  return swift_deallocObject();
}

uint64_t sub_21DF09720()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA6E00, &qword_21E146178);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA6DF8, &qword_21E14B9B0);
  sub_21DF3CEB8();
  sub_21DF23E5C(&qword_280F68BF8, &qword_27CEA6DF8, &qword_21E14B9B0, MEMORY[0x277D84470]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21DF09814(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6DB8, &qword_21E1460C0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA70F0, qword_21E149AD0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_21DF09938(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6DB8, &qword_21E1460C0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA70F0, qword_21E149AD0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_21DF09A58()
{
  v1 = type metadata accessor for EventLookupPlaceholder(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070, &qword_21E146170);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_21E13F444();
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
  }

  else
  {
  }

  v4 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7140, &qword_21E149F40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_21E1401B4();
    (*(*(v5 - 8) + 8))(v0 + v2 + v4, v5);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21DF09C54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7370, &qword_21E146970);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21DF09CC4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7378, &qword_21E146978);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21DF09D2C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7380, &qword_21E146980);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7378, &qword_21E146978);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA73A8, &unk_21E1469D0);
  sub_21DF4470C();
  sub_21DF44860();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21DF09E30(uint64_t *a1)
{
  sub_21E13FB54();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA73F0, &qword_21E146A28);
  sub_21E13FB54();
  swift_getWitnessTable();
  v2 = MEMORY[0x277CE0328];
  sub_21DF23E5C(&qword_27CEA73F8, &qword_27CEA73F0, &qword_21E146A28, MEMORY[0x277CE0328]);
  swift_getWitnessTable();
  sub_21E13F3B4();
  sub_21E13FB54();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27CEA7400, &qword_21E146A30);
  sub_21E13FB54();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_21DF23E5C(&qword_280F68E80, qword_27CEA7400, &qword_21E146A30, MEMORY[0x277CE01A0]);
  swift_getWitnessTable();
  sub_21E141924();
  sub_21E1405B4();
  sub_21E13FB54();
  sub_21E13FB54();
  sub_21E13FB54();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA73C8, &qword_21E146A18);
  sub_21E13FB54();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA73D0, &qword_21E146A20);
  sub_21E13FB54();
  sub_21E142724();
  swift_getWitnessTable();
  sub_21DF49194(&qword_27CEA73D8, MEMORY[0x277CE0660], MEMORY[0x277CE0650]);
  swift_getWitnessTable();
  sub_21DF23E5C(&qword_27CEA73E0, &qword_27CEA73C8, &qword_21E146A18, v2);
  swift_getWitnessTable();
  sub_21DF23E5C(&qword_27CEA73E8, &qword_27CEA73D0, &qword_21E146A20, MEMORY[0x277CDFC88]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_21E140154();
  sub_21E13FB54();
  sub_21E13F3B4();
  sub_21E13FB54();
  sub_21E13FB54();
  sub_21E140304();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_21DF0A334()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  v13 = v1;
  v12 = *(v0 + 24);
  v14 = v12;
  v15 = v2;
  v3 = type metadata accessor for AttributionContainer(0, &v13);
  v4 = (*(*(v3 - 8) + 80) + 48) & ~*(*(v3 - 8) + 80);
  v5 = *(*(v3 - 8) + 64);
  v6 = sub_21E13F734();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = v0 + v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070, &qword_21E146170);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_21E13F444();
    (*(*(v10 - 8) + 8))(v0 + v4, v10);
  }

  else
  {
  }

  (*(*(v1 - 8) + 8))(v9 + *(v3 + 64), v1);
  (*(*(v12 - 8) + 8))(v9 + *(v3 + 68));

  (*(v7 + 8))(v0 + ((v4 + v5 + v8) & ~v8), v6);
  return swift_deallocObject();
}

uint64_t sub_21DF0A598()
{

  return swift_deallocObject();
}

uint64_t sub_21DF0A5D8(void *a1)
{
  sub_21E13FB54();
  sub_21DF4A784();
  return swift_getWitnessTable();
}

uint64_t sub_21DF0A63C()
{

  return swift_deallocObject();
}

uint64_t sub_21DF0A67C()
{
  v1 = sub_21E13EEE4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = sub_21E13EFC4();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_21DF0A804(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6DB8, &qword_21E1460C0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_21DF0A8DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6DB8, &qword_21E1460C0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_21DF0A9F8()
{
  swift_unknownObjectRelease();

  if (*(v0 + 48))
  {
  }

  return swift_deallocObject();
}

unint64_t sub_21DF0AA7C(unint64_t *a1)
{
  v2 = *a1;
  sub_21DF5706C(v2);
  return NewEntityModel.cardLayout.setter(&v2);
}

uint64_t sub_21DF0AC54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6DB8, &qword_21E1460C0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = sub_21E13D834();
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24));
      if (v14 >= 2)
      {
        return ((v14 + 2147483646) & 0x7FFFFFFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_21DF0AD7C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6DB8, &qword_21E1460C0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_21E13D834();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2 + 1;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

float64x2_t sub_21DF0AE98(float64x2_t *a1, float64x2_t *a2)
{
  v2 = a1[1];
  __asm { FMOV            V2.2D, #-0.5 }

  result = vaddq_f64(*a1, vmulq_f64(v2, _Q2));
  *a2 = result;
  a2[1] = v2;
  return result;
}

double sub_21DF0AEF4@<D0>(_OWORD *a1@<X8>)
{
  sub_21DF26814();
  sub_21E13FFA4();
  result = *&v3;
  *a1 = v3;
  return result;
}

double sub_21DF0AF48@<D0>(uint64_t a1@<X8>)
{
  *&result = 1801675074;
  *a1 = xmmword_21E147CA0;
  *(a1 + 16) = 0;
  *(a1 + 24) = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_21DF0AF68@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21E141634();
  *a1 = result;
  return result;
}

void sub_21DF0AFAC(void *a1@<X8>)
{
  sub_21E13F714();
  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_21DF0B084(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEAC9E0, qword_21E147F50);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[5];

    return v9(v10, a2, v8);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[7]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7988, &qword_21E147D88);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[11];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_21DF0B1C4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEAC9E0, qword_21E147F50);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[5];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[7]) = (a2 - 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7988, &qword_21E147D88);
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[11];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

uint64_t sub_21DF0B304()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7978, &qword_21E147D78);
  sub_21DF88B44();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21DF0B380()
{
  v1 = type metadata accessor for CardContainer(0);
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;
  sub_21DF446B8();
  v4 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACA00, &qword_21E147D08);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_21E140894();
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
  }

  else
  {
  }

  j__swift_release();

  v6 = v3 + v1[11];
  v7 = sub_21E140124();
  (*(*(v7 - 8) + 8))(v6, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7988, &qword_21E147D88);

  return swift_deallocObject();
}

uint64_t sub_21DF0B694()
{
  v1 = type metadata accessor for CardContainer(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = sub_21E13E034();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  swift_unknownObjectRelease();
  v8 = v0 + v3;
  sub_21DF446B8();
  v9 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACA00, &qword_21E147D08);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_21E140894();
    (*(*(v10 - 8) + 8))(v8 + v9, v10);
  }

  else
  {
  }

  j__swift_release();

  v11 = v8 + v1[11];
  v12 = sub_21E140124();
  (*(*(v12 - 8) + 8))(v11, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7988, &qword_21E147D88);

  (*(v6 + 8))(v0 + ((((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + v7 + 8) & ~v7), v5);

  return swift_deallocObject();
}

uint64_t sub_21DF0BA1C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  v14 = v1;
  v13 = *(v0 + 24);
  v15 = v13;
  v16 = v2;
  v3 = type metadata accessor for MarqueeSuggestedActionButton(0, &v14);
  v4 = (*(*(v3 - 1) + 80) + 48) & ~*(*(v3 - 1) + 80);
  v12 = *(*(v3 - 1) + 64);
  v5 = sub_21E13FBB4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = v0 + v4;

  v9 = v3[17];
  v10 = sub_21E13D834();
  (*(*(v10 - 8) + 8))(v0 + v4 + v9, v10);
  if (*(v0 + v4 + v3[18]))
  {
  }

  (*(*(v1 - 8) + 8))(v8 + v3[20], v1);
  (*(*(v13 - 8) + 8))(v8 + v3[23]);
  (*(v6 + 8))(v0 + ((v4 + v12 + v7) & ~v7), v5);
  return swift_deallocObject();
}

uint64_t sub_21DF0BC64(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA8288, &qword_21E14AC50);
  sub_21E13FB54();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA75D0, &qword_21E1489D0);
  sub_21E13FB54();
  sub_21E13FB54();
  sub_21E13FB54();
  sub_21DF23E5C(&qword_280F68DB0, &qword_27CEA75D0, &qword_21E1489D0, MEMORY[0x277CE0868]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_21E1417D4();
  swift_getTupleTypeMetadata2();
  sub_21E141DC4();
  swift_getWitnessTable();
  sub_21E1417C4();
  swift_getWitnessTable();
  sub_21E13F3B4();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_21E13FB54();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA8290, &qword_21E1489D8);
  sub_21E13FB54();
  sub_21DF9543C();
  swift_getWitnessTable();
  sub_21DF23E5C(&unk_280F68E10, &qword_27CEA8290, &qword_21E1489D8, MEMORY[0x277CE06A8]);
  swift_getWitnessTable();
  sub_21E1402D4();
  sub_21E13FB54();
  sub_21E13FB54();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA82A0, &qword_21E1489E0);
  sub_21E13FB54();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA82A8, &qword_21E1489E8);
  sub_21E13FB54();
  sub_21E13FB54();
  sub_21E13FB54();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA82B0, &qword_21E1489F0);
  sub_21E13FB54();
  sub_21E13FB54();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_21DF23E5C(&qword_27CEA82B8, &qword_27CEA82A0, &qword_21E1489E0, MEMORY[0x277CDF4F0]);
  swift_getWitnessTable();
  sub_21DF23E5C(&qword_27CEA82C0, &qword_27CEA82A8, &qword_21E1489E8, MEMORY[0x277CDFC88]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_21DF23E5C(&qword_27CEA82C8, &qword_27CEA82B0, &qword_21E1489F0, MEMORY[0x277CDDEB8]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_21E13FCC4();
  swift_getTupleTypeMetadata2();
  sub_21E141DC4();
  swift_getWitnessTable();
  sub_21E13F624();
  swift_getTupleTypeMetadata2();
  sub_21E141DC4();
  swift_getWitnessTable();
  sub_21E1417C4();
  swift_getWitnessTable();
  sub_21E141794();
  type metadata accessor for SuggestedActionButtonStyle(255);
  swift_getWitnessTable();
  sub_21DF95DD4(&qword_27CEA82D0, type metadata accessor for SuggestedActionButtonStyle, &unk_21E14B84C);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21DF0C358(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA8328, &qword_21E148A70);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA8330, &qword_21E148A78);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA8338, &qword_21E148A80);
  swift_getTupleTypeMetadata();
  sub_21E141DC4();
  sub_21E142724();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_21E141944();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA8340, &qword_21E148A88);
  swift_getWitnessTable();
  sub_21DF978C0();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_21E13FB54();
  sub_21E13FB54();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEADA80, &qword_21E148AB0);
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_21DF97B00();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA8360, &qword_21E148AB8);
  swift_getOpaqueTypeConformance2();
  sub_21DF97BB4();
  swift_getOpaqueTypeMetadata2();
  sub_21E13E3D4();
  swift_getOpaqueTypeConformance2();
  sub_21DFA21F0(&qword_280F690A8, MEMORY[0x277D79468], MEMORY[0x277D79470]);
  swift_getOpaqueTypeMetadata2();
  sub_21E13FB54();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA8368, &qword_21E148AC0);
  sub_21E13FB54();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_21DF23E5C(&qword_280F68E28, &qword_27CEA8368, &qword_21E148AC0, MEMORY[0x277CE06A8]);
  swift_getWitnessTable();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  type metadata accessor for ShiftingOverlayContainerWrapper(255, OpaqueTypeMetadata2, OpaqueTypeConformance2, v3);
  sub_21E140304();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_21DF0C8C0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21DF0C8F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 32);
  v6 = (type metadata accessor for OverlayView(0, v5, *(v4 + 40), a4) - 8);
  v7 = (*(*v6 + 80) + 48) & ~*(*v6 + 80);
  swift_unknownObjectRelease();

  v8 = v4 + v7 + v6[14];
  v9 = sub_21E13F444();
  (*(*(v9 - 8) + 8))(v8, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEAC530, &qword_21E148BC0);

  (*(*(v5 - 8) + 8))(v4 + v7 + v6[18], v5);

  return swift_deallocObject();
}

uint64_t sub_21DF0CAD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 32);
  v6 = (type metadata accessor for OverlayView(0, v5, *(v4 + 40), a4) - 8);
  v7 = (*(*v6 + 80) + 48) & ~*(*v6 + 80);
  v8 = *(*v6 + 64);
  v9 = sub_21E13E444();
  v10 = *(v9 - 8);
  v11 = (v7 + v8 + *(v10 + 80)) & ~*(v10 + 80);
  swift_unknownObjectRelease();
  v12 = v4 + v7;

  v13 = v12 + v6[14];
  v14 = sub_21E13F444();
  (*(*(v14 - 8) + 8))(v13, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEAC530, &qword_21E148BC0);

  (*(*(v5 - 8) + 8))(v12 + v6[18], v5);

  (*(v10 + 8))(v4 + v11, v9);

  return swift_deallocObject();
}

uint64_t sub_21DF0CDC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21E13DC14();
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

uint64_t sub_21DF0CE80(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21E13DC14();
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

uint64_t sub_21DF0CF3C()
{
  v1 = *(type metadata accessor for SiriReaderCardView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = sub_21E13F734();
  v5 = *(v4 - 8);
  v6 = (v2 + v3 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = sub_21E13DC14();
  (*(*(v7 - 8) + 8))(v0 + v2, v7);

  (*(v5 + 8))(v0 + v6, v4);

  return swift_deallocObject();
}

uint64_t sub_21DF0D0D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6DB8, &qword_21E1460C0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_21E13D7E4();
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

  return (v14 + 1);
}

uint64_t sub_21DF0D1EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6DB8, &qword_21E1460C0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_21E13D7E4();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_21DF0D308()
{

  return swift_deallocObject();
}

uint64_t sub_21DF0D340()
{
  v1 = type metadata accessor for VisualLookupSiriView(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = sub_21E13F734();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = v0 + v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070, &qword_21E146170);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_21E13F444();
    (*(*(v8 - 8) + 8))(v0 + v2, v8);
  }

  else
  {
  }

  v9 = (v2 + v3 + v6) & ~v6;
  v10 = *(v1 + 20);
  v11 = sub_21E13D7E4();
  (*(*(v11 - 8) + 8))(v7 + v10, v11);

  sub_21DFA7448();

  (*(v5 + 8))(v0 + v9, v4);

  return swift_deallocObject();
}

uint64_t sub_21DF0D578()
{
  v1 = type metadata accessor for VisualLookupSiriView(0);
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);

  v3 = v0 + v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070, &qword_21E146170);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_21E13F444();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  else
  {
  }

  v5 = *(v1 + 20);
  v6 = sub_21E13D7E4();
  (*(*(v6 - 8) + 8))(v3 + v5, v6);

  sub_21DFA7448();

  return swift_deallocObject();
}

uint64_t sub_21DF0D780(void *a1)
{
  sub_21E13FB54();
  sub_21DFA9224();
  return swift_getWitnessTable();
}

uint64_t sub_21DF0D7F0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA8780, &qword_21E149580);
  sub_21DFA9B60();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21DF0D86C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21E13D834();
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

uint64_t sub_21DF0D928(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21E13D834();
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

uint64_t sub_21DF0D9E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_21E13D344();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_21DF0DA4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_21E13D344();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_21DF0DAC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_21E13D344();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_21DF0DB3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_21E13D344();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_21DF0DBB8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21DF0DBF0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_21DF0DC08()
{

  return swift_deallocObject();
}

uint64_t sub_21DF0DCB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA70F0, qword_21E149AD0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_21DF0DD84(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA70F0, qword_21E149AD0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21DF0DE6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA70F0, qword_21E149AD0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_21DF0DF38(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA70F0, qword_21E149AD0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21DF0E004()
{

  return swift_deallocObject();
}

uint64_t sub_21DF0E090(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6DB8, &qword_21E1460C0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA70F0, qword_21E149AD0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_9:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_10;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEA9E00, qword_21E149E80);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[7];
    goto LABEL_9;
  }

  v15 = sub_21E13E2A4();
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[8];
    goto LABEL_9;
  }

  v17 = *(a1 + a3[10]);
  if (v17 >= 0xFFFFFFFF)
  {
    LODWORD(v17) = -1;
  }

  return (v17 + 1);
}

uint64_t sub_21DF0E250(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6DB8, &qword_21E1460C0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA70F0, qword_21E149AD0);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEA9E00, qword_21E149E80);
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[7];
      }

      else
      {
        result = sub_21E13E2A4();
        if (*(*(result - 8) + 84) != a3)
        {
          *(a1 + a4[10]) = (a2 - 1);
          return result;
        }

        v10 = result;
        v14 = *(result - 8);
        v15 = a4[8];
      }
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_21DF0E410@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_21E13EA44();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_21DF0E458()
{
  v1 = type metadata accessor for ImageSearchAdsBlockView(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = v0 + v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070, &qword_21E146170);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_21E13F444();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  else
  {
  }

  v5 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7140, &qword_21E149F40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_21E1401B4();
    (*(*(v6 - 8) + 8))(v3 + v5, v6);
  }

  else
  {
  }

  sub_21DF446B8();
  v7 = v3 + v1[7];
  v8 = type metadata accessor for IdentifiableURL(0);
  if (!(*(*(v8 - 8) + 48))(v7, 1, v8))
  {
    v9 = sub_21E13D264();
    (*(*(v9 - 8) + 8))(v7, v9);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEA9E00, qword_21E149E80);

  v10 = v1[8];
  v11 = sub_21E13E2A4();
  (*(*(v11 - 8) + 8))(v3 + v10, v11);

  return swift_deallocObject();
}

uint64_t sub_21DF0E6F8()
{

  return swift_deallocObject();
}

uint64_t sub_21DF0E730(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8C80, &qword_21E149F60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21DF0E7A0()
{
  v1 = type metadata accessor for ImageSearchAdsBlockView(0);
  v2 = (*(*(v1 - 1) + 80) + 56) & ~*(*(v1 - 1) + 80);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v3 = v0 + v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070, &qword_21E146170);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_21E13F444();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  else
  {
  }

  v5 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7140, &qword_21E149F40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_21E1401B4();
    (*(*(v6 - 8) + 8))(v3 + v5, v6);
  }

  else
  {
  }

  sub_21DF446B8();
  v7 = v3 + v1[7];
  v8 = type metadata accessor for IdentifiableURL(0);
  if (!(*(*(v8 - 8) + 48))(v7, 1, v8))
  {
    v9 = sub_21E13D264();
    (*(*(v9 - 8) + 8))(v7, v9);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEA9E00, qword_21E149E80);

  v10 = v1[8];
  v11 = sub_21E13E2A4();
  (*(*(v11 - 8) + 8))(v3 + v10, v11);

  return swift_deallocObject();
}

uint64_t sub_21DF0EA54()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA8C38, &qword_21E149F28);
  type metadata accessor for IdentifiableURL(255);
  type metadata accessor for InAppWebPresentationView(255);
  sub_21DFBC134(&qword_27CEA8C50, &qword_27CEA8C38, &qword_21E149F28, sub_21DFBB974);
  sub_21DFBBCE4(&qword_27CEA8C68, type metadata accessor for IdentifiableURL, &protocol conformance descriptor for IdentifiableURL);
  sub_21DFBBCE4(&qword_27CEA9E70, type metadata accessor for InAppWebPresentationView, &protocol conformance descriptor for InAppWebPresentationView);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21DF0EB88()
{

  return swift_deallocObject();
}

uint64_t sub_21DF0EC94()
{

  return swift_deallocObject();
}

uint64_t sub_21DF0ED20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6DB8, &qword_21E1460C0);
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

uint64_t sub_21DF0EDE8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6DB8, &qword_21E1460C0);
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

uint64_t sub_21DF0EEAC()
{
  v1 = *(type metadata accessor for ImageSearchRelatedSearchesCardView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070, &qword_21E146170);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_21E13F444();
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21DF0EFDC()
{
  v1 = *(type metadata accessor for ImageSearchRelatedSearchesCardView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = sub_21E13D264();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070, &qword_21E146170);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_21E13F444();
    (*(*(v7 - 8) + 8))(v0 + v2, v7);
  }

  else
  {
  }

  (*(v5 + 8))(v0 + ((v2 + v3 + v6) & ~v6), v4);

  return swift_deallocObject();
}

uint64_t sub_21DF0F1B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA90E0, &qword_21E14A740);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21DF0F264(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA70F0, qword_21E149AD0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  v11 = sub_21E13DDE4();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[6];
LABEL_11:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_12;
  }

  v14 = sub_21E13E1A4();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[7];
    goto LABEL_11;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEA9E00, qword_21E149E80);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[8];
    goto LABEL_11;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9238, &qword_21E14A980);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[10];
    goto LABEL_11;
  }

  v18 = *(a1 + a3[11] + 8);
  if (v18 >= 0xFFFFFFFF)
  {
    LODWORD(v18) = -1;
  }

  return (v18 + 1);
}

uint64_t sub_21DF0F470(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA70F0, qword_21E149AD0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_21E13DDE4();
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[6];
    }

    else
    {
      v16 = sub_21E13E1A4();
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[7];
      }

      else
      {
        v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEA9E00, qword_21E149E80);
        if (*(*(v17 - 8) + 84) == a3)
        {
          v10 = v17;
          v14 = *(v17 - 8);
          v15 = a4[8];
        }

        else
        {
          result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9238, &qword_21E14A980);
          if (*(*(result - 8) + 84) != a3)
          {
            *(a1 + a4[11] + 8) = (a2 - 1);
            return result;
          }

          v10 = result;
          v14 = *(result - 8);
          v15 = a4[10];
        }
      }
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_21DF0F67C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21E13D264();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 11)
  {
    v10 = *(a1 + *(a3 + 20) + 8) >> 60;
    v11 = ((4 * v10) & 0xC) == 0;
    v12 = ((4 * v10) & 0xC | (v10 >> 2)) ^ 0xF;
    if (v11)
    {
      return 0;
    }

    else
    {
      return v12;
    }
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9990, &qword_21E148DD0);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + *(a3 + 32);

    return v14(v15, a2, v13);
  }
}

uint64_t sub_21DF0F7B4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21E13D264();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 11)
  {
    v11 = (a1 + *(a4 + 20));
    *v11 = 0;
    v11[1] = ((~a2 >> 2) & 3 | (4 * ~a2)) << 60;
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9990, &qword_21E148DD0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 32);

    return v13(v14, a2, a2, v12);
  }

  return result;
}

uint64_t sub_21DF0F8F0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9990, &qword_21E148DD0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21DF0F9AC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9990, &qword_21E148DD0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21DF0FA88@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21E13DD24();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_21DF0FAB4()
{

  return swift_deallocObject();
}

uint64_t sub_21DF0FAFC()
{
  v1 = type metadata accessor for ImageSearchResultView(0);
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7140, &qword_21E149F40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_21E1401B4();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  else
  {
  }

  sub_21DF446B8();
  v5 = v1[6];
  v6 = sub_21E13DDE4();
  (*(*(v6 - 8) + 8))(v3 + v5, v6);
  v7 = v1[7];
  v8 = sub_21E13E1A4();
  (*(*(v8 - 8) + 8))(v3 + v7, v8);
  v9 = v3 + v1[8];
  v10 = type metadata accessor for IdentifiableURL(0);
  if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
  {
    v11 = sub_21E13D264();
    (*(*(v11 - 8) + 8))(v9, v11);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEA9E00, qword_21E149E80);

  v12 = v3 + v1[10];
  v13 = sub_21E140634();
  v14 = *(v13 - 8);
  if (!(*(v14 + 48))(v12, 1, v13))
  {
    (*(v14 + 8))(v12, v13);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9238, &qword_21E14A980);

  return swift_deallocObject();
}

uint64_t sub_21DF0FEAC()
{
  v1 = *(type metadata accessor for PlaceholderImageSearchResultView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070, &qword_21E146170);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_21E13F444();
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21DF0FFE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6DB8, &qword_21E1460C0);
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

uint64_t sub_21DF100AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6DB8, &qword_21E1460C0);
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

uint64_t sub_21DF101B4()
{
  v1 = *(type metadata accessor for PlaceholderImageSearchResultView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070, &qword_21E146170);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_21E13F444();
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21DF10318()
{

  v1 = *(v0 + 192);
  if (v1 != 255)
  {
    sub_21DF345FC(*(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176), *(v0 + 184), v1 & 1);
  }

  return swift_deallocObject();
}

uint64_t sub_21DF103D4()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6D40, &unk_21E145D30) - 8);
  v2 = (*(v1 + 80) + 200) & ~*(v1 + 80);
  v3 = *(v0 + 96);
  if (v3 != 255)
  {
    sub_21DF345FC(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), v3 & 1);
  }

  v4 = (v0 + v2);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6C58, &unk_21E1455A0);
  if (!(*(*(v5 - 8) + 48))(v0 + v2, 1, v5))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
    }

    else
    {
      v6 = sub_21E13EEE4();
      (*(*(v6 - 8) + 8))(v0 + v2, v6);
      v7 = *(type metadata accessor for PillQueryResult(0) + 20);
      v8 = sub_21E13F0A4();
      (*(*(v8 - 8) + 8))(v4 + v7, v8);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_21DF1066C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9590, &unk_21E14B2B8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9588, &qword_21E14B2B0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA95A8, &qword_21E14B358);
  sub_21DFD81D4();
  sub_21DFD8344();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21DF107B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA96F8, &qword_21E14B6C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21DF10848(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6DB8, &qword_21E1460C0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = sub_21E13D834();
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24));
      if (v14 >= 2)
      {
        return ((v14 + 2147483646) & 0x7FFFFFFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_21DF10970(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6DB8, &qword_21E1460C0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_21E13D834();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2 + 1;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_21DF10A84()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA96F8, &qword_21E14B6C0);
  sub_21DFDD498();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21DF10B18(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9810, &unk_21E14B9A0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA75E0, &qword_21E146E10);
  sub_21E13FB54();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA6DF8, &qword_21E14B9B0);
  sub_21DF23E5C(&qword_280F68DD0, &qword_27CEA75E0, &qword_21E146E10, MEMORY[0x277CE0868]);
  swift_getWitnessTable();
  sub_21DF23E5C(&qword_280F68BF8, &qword_27CEA6DF8, &qword_21E14B9B0, MEMORY[0x277D84470]);
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9818, &qword_21E14B9B8);
  sub_21E13FB54();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA8D48, &qword_21E14A040);
  sub_21E13FB54();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA75D0, &qword_21E1489D0);
  sub_21E13FB54();
  sub_21E1407F4();
  sub_21E13FB54();
  swift_getTupleTypeMetadata3();
  sub_21E141DC4();
  swift_getWitnessTable();
  sub_21E1417C4();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_21E13FB54();
  sub_21E13FB54();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27CEA9820, &qword_21E14B9C0);
  sub_21E13FB54();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_21DF23E5C(&qword_280F68E48, qword_27CEA9820, &qword_21E14B9C0, MEMORY[0x277CE0470]);
  swift_getWitnessTable();
  sub_21E141794();
  sub_21E13FB54();
  sub_21E13FC44();
  swift_getWitnessTable();
  sub_21DFE0D9C(&qword_27CEA9E80, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
  swift_getWitnessTable();
  sub_21DFE0D9C(&qword_27CEA7000, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21DF10F9C()
{

  return swift_deallocObject();
}

uint64_t sub_21DF10FD8(void *a1)
{
  sub_21E13FB54();
  sub_21DFA3F14();
  return swift_getWitnessTable();
}

uint64_t sub_21DF111D8()
{

  sub_21DFE0F78(*(v0 + 40), *(v0 + 48));

  return swift_deallocObject();
}

uint64_t sub_21DF11230()
{
  swift_unknownObjectRelease();

  sub_21DFE0F78(*(v0 + 56), *(v0 + 64));

  return swift_deallocObject();
}

uint64_t sub_21DF1128C()
{

  return swift_deallocObject();
}

uint64_t sub_21DF112C4()
{
  swift_unknownObjectRelease();

  sub_21DFE0F78(*(v0 + 56), *(v0 + 64));

  return swift_deallocObject();
}

uint64_t sub_21DF11334@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21E13FEC4();
  *a1 = result;
  return result;
}

uint64_t sub_21DF1138C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21E13FE44();
  *a1 = result;
  return result;
}

uint64_t sub_21DF113E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6DB8, &qword_21E1460C0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_21DF1145C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6DB8, &qword_21E1460C0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_21DF114F8()
{
  v1 = type metadata accessor for EventLookupResultView(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v3 = sub_21E13DDC4();
  (*(*(v3 - 8) + 8))(v2, v3);

  if (*(v2 + *(v1 + 24)))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21DF11628(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21E13DDC4();
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

uint64_t sub_21DF116E4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21E13DDC4();
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

uint64_t sub_21DF117A4()
{

  return swift_deallocObject();
}

uint64_t sub_21DF117E4()
{
  v1 = sub_21E13E444();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_21DF118B0(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEA9D90, &qword_21E14A8D0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

void *sub_21DF1196C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEA9D90, &qword_21E14A8D0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21DF11A2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEA9E00, qword_21E149E80);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21DF11AE8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEA9E00, qword_21E149E80);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21DF11B9C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9E48, &qword_21E14CD78);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21DF11C04(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEA9E60, &unk_21E14CD90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21DF11C80()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9F30, &qword_21E14CDA8);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_21DF11D14()
{

  return swift_deallocObject();
}

uint64_t sub_21DF11D54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6DB8, &qword_21E1460C0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_21DF11E20(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6DB8, &qword_21E1460C0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21DF11F28(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA97F8, &qword_21E14ED20);
  sub_21E13FB54();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA75E0, &qword_21E146E10);
  sub_21E13FB54();
  sub_21DF23E5C(&qword_27CEA97F0, &qword_27CEA97F8, &qword_21E14ED20, MEMORY[0x277CE0740]);
  swift_getWitnessTable();
  sub_21DF23E5C(&qword_280F68DD0, &qword_27CEA75E0, &qword_21E146E10, MEMORY[0x277CE0868]);
  swift_getWitnessTable();
  sub_21DFFCB98();
  swift_getOpaqueTypeMetadata2();
  sub_21E13FB54();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_21E13FB54();
  type metadata accessor for BreathingContentEffectModifier(255);
  sub_21E13FB54();
  sub_21E1415E4();
  sub_21E13FB54();
  sub_21E13FB54();
  sub_21E1404C4();
  sub_21E13FB54();
  sub_21E13FB54();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_21E0008C8(&qword_27CEAA0A8, type metadata accessor for BreathingContentEffectModifier, &unk_21E152508);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_21E1407F4();
  sub_21E13FB54();
  sub_21E1405B4();
  sub_21E13FB54();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CEA6848, &unk_21E144B30);
  sub_21E13FB54();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAA0B0, &qword_21E14D190);
  sub_21E13FB54();
  sub_21E13FB54();
  sub_21E13FB54();
  sub_21E0008C8(&qword_27CEA73D8, MEMORY[0x277CE0660], MEMORY[0x277CE0650]);
  swift_getWitnessTable();
  sub_21DF23E5C(&qword_280F68E40, &unk_27CEA6848, &unk_21E144B30, MEMORY[0x277CE04A0]);
  swift_getWitnessTable();
  v1 = MEMORY[0x277CE0328];
  sub_21DF23E5C(&qword_27CEAA0B8, &qword_27CEAA0B0, &qword_21E14D190, MEMORY[0x277CE0328]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_21E13FB54();
  sub_21E142724();
  swift_getTupleTypeMetadata2();
  sub_21E141DC4();
  swift_getWitnessTable();
  sub_21E141944();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAA0C0, &qword_21E14D198);
  sub_21E13FB54();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAA098, &unk_21E14D180);
  sub_21E13FB54();
  type metadata accessor for BreathingScaleEffectModifier(255);
  sub_21E13FB54();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAA0C8, &unk_21E14D1A0);
  sub_21E13FB54();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA8F18, &qword_21E14A4C0);
  sub_21E13FB54();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAA0D0, &qword_21E14D1B0);
  sub_21E13FB54();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAA0D8, &qword_21E14D1B8);
  sub_21E13FB54();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAA0E0, &qword_21E14D1C0);
  sub_21E13FB54();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAA0E8, &qword_21E14D1C8);
  sub_21E13FB54();
  sub_21E13FB54();
  swift_getWitnessTable();
  sub_21DF23E5C(&qword_27CEAA0F0, &qword_27CEAA0C0, &qword_21E14D198, v1);
  swift_getWitnessTable();
  sub_21DF23E5C(&qword_27CEAA0F8, &qword_27CEAA098, &unk_21E14D180, &unk_21E1524B8);
  swift_getWitnessTable();
  sub_21E0008C8(&qword_27CEAA100, type metadata accessor for BreathingScaleEffectModifier, &unk_21E152468);
  swift_getWitnessTable();
  sub_21DF23E5C(&qword_27CEAA108, &qword_27CEAA0C8, &unk_21E14D1A0, MEMORY[0x277CE0698]);
  swift_getWitnessTable();
  sub_21DF23E5C(&qword_27CEA8F10, &qword_27CEA8F18, &qword_21E14A4C0, MEMORY[0x277CDF4F0]);
  swift_getWitnessTable();
  sub_21DF23E5C(&qword_27CEAA110, &qword_27CEAA0D0, &qword_21E14D1B0, MEMORY[0x277CDFC88]);
  swift_getWitnessTable();
  sub_21DF23E5C(&qword_27CEAA118, &qword_27CEAA0D8, &qword_21E14D1B8, MEMORY[0x277CE01A0]);
  swift_getWitnessTable();
  sub_21DF23E5C(&qword_27CEAA120, &qword_27CEAA0E0, &qword_21E14D1C0, v1);
  swift_getWitnessTable();
  sub_21DF23E5C(&qword_27CEAA128, &qword_27CEAA0E8, &qword_21E14D1C8, v1);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_21DFFCBEC();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAA138, &qword_21E14D1D0);
  sub_21E13FB54();
  swift_getOpaqueTypeConformance2();
  sub_21DF23E5C(qword_27CEAA1E0, &qword_27CEAA138, &qword_21E14D1D0, MEMORY[0x277CE07A8]);
  return swift_getWitnessTable();
}

uint64_t sub_21DF12AC8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for InterpolatingBackgroundMaterial(255, *a1, a1[1], a4);
  swift_getWitnessTable();
  sub_21E140464();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAA368, &qword_21E14D588);
  sub_21E13FB54();
  sub_21DF23E5C(&qword_27CEAA370, &qword_27CEAA368, &qword_21E14D588, MEMORY[0x277CDFB08]);
  swift_getWitnessTable();
  sub_21E1402D4();
  sub_21E13FB54();
  sub_21E13F534();
  sub_21E13FB54();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_21DF12CA8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAA3F8, &qword_21E14D778);
  sub_21DF23E5C(&qword_27CEAA400, &qword_27CEAA3F8, &qword_21E14D778, MEMORY[0x277CE04B0]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21DF12EF4()
{

  return swift_deallocObject();
}

uint64_t sub_21DF12FCC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21DF1300C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21DF130C8()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC550, &qword_21E146C90) - 8);
  v2 = (*(v1 + 80) + 56) & ~*(v1 + 80);
  swift_unknownObjectRelease();

  v3 = sub_21E13DFD4();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

uint64_t sub_21DF13220@<X0>(uint64_t *a3@<X8>)
{

  result = sub_21E141634();
  *a3 = result;
  return result;
}

uint64_t sub_21DF13270(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9810, &unk_21E14B9A0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA75E0, &qword_21E146E10);
  sub_21E13FB54();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA6DF8, &qword_21E14B9B0);
  sub_21DF23E5C(&qword_280F68DD0, &qword_27CEA75E0, &qword_21E146E10, MEMORY[0x277CE0868]);
  swift_getWitnessTable();
  sub_21DF23E5C(&qword_280F68BF8, &qword_27CEA6DF8, &qword_21E14B9B0, MEMORY[0x277D84470]);
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA9818, &qword_21E14B9B8);
  sub_21E13FB54();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA8D48, &qword_21E14A040);
  sub_21E13FB54();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA75D0, &qword_21E1489D0);
  sub_21E13FB54();
  sub_21E1407F4();
  sub_21E13FB54();
  swift_getTupleTypeMetadata3();
  sub_21E141DC4();
  swift_getWitnessTable();
  sub_21E1417C4();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_21E13FB54();
  sub_21E13FB54();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA8B80, &unk_21E14E0D0);
  sub_21E13FB54();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27CEA9820, &qword_21E14B9C0);
  sub_21E13FB54();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_21DF23E5C(qword_27CEAA470, &qword_27CEA8B80, &unk_21E14E0D0, MEMORY[0x277CE08B0]);
  swift_getWitnessTable();
  sub_21DF23E5C(&qword_280F68E48, qword_27CEA9820, &qword_21E14B9C0, MEMORY[0x277CE0470]);
  swift_getWitnessTable();
  sub_21E141794();
  sub_21E13FB54();
  sub_21E13FC44();
  swift_getWitnessTable();
  sub_21E0157FC(&qword_27CEA9E80, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
  swift_getWitnessTable();
  sub_21E0157FC(&qword_27CEA7000, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21DF137D0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA6C8, &qword_21E14E840);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_21DF13898()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAA6C8, &qword_21E14E840);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_21DF13980(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6DB8, &qword_21E1460C0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[6];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA70F0, qword_21E149AD0);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[7];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v13 = *(a1 + a3[8]);
    if (v13 >= 0xFFFFFFFF)
    {
      LODWORD(v13) = -1;
    }

    return (v13 + 1);
  }

  else
  {
    v14 = sub_21E13D304();
    if (*(*(v14 - 8) + 84) == a2)
    {
      v7 = v14;
      v8 = *(v14 - 8);
      v9 = a3[11];
      goto LABEL_5;
    }

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9990, &qword_21E148DD0);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[16];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_21DF13B5C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6DB8, &qword_21E1460C0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_5:
    v13 = *(v10 + 56);

    return v13(a1 + v11, a2, a2, v9);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA70F0, qword_21E149AD0);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = *(result - 8);
    v11 = a4[7];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[8]) = (a2 - 1);
    return result;
  }

  v14 = sub_21E13D304();
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[11];
    goto LABEL_5;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9990, &qword_21E148DD0);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[16];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_21DF13D3C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21E141634();
  *a1 = result;
  return result;
}

uint64_t sub_21DF13D80()
{

  return swift_deallocObject();
}

uint64_t sub_21DF13E08@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21E13FF64();
  *a1 = result;
  return result;
}

uint64_t sub_21DF13E68()
{
  v1 = type metadata accessor for EventResultView(0);
  v2 = (*(*(v1 - 1) + 80) + 40) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();

  v4 = v0 + v2;
  j__swift_release();
  sub_21DF446B8();
  v5 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070, &qword_21E146170);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_21E13F444();
    (*(*(v6 - 8) + 8))(v4 + v5, v6);
  }

  else
  {
  }

  v7 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7140, &qword_21E149F40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_21E1401B4();
    (*(*(v8 - 8) + 8))(v4 + v7, v8);
  }

  else
  {
  }

  v9 = v1[11];
  v10 = sub_21E13D304();
  v11 = *(*(v10 - 8) + 8);
  v11(v4 + v9, v10);
  v11(v4 + v1[12], v10);

  v12 = v1[16];
  v13 = sub_21E13D264();
  v14 = *(v13 - 8);
  if (!(*(v14 + 48))(v4 + v12, 1, v13))
  {
    (*(v14 + 8))(v4 + v12, v13);
  }

  if (*(v4 + v1[18]))
  {
  }

  v15 = (v4 + v1[23]);
  if (v15[3])
  {
    __swift_destroy_boxed_opaque_existential_0(v15);
  }

  return swift_deallocObject();
}

uint64_t sub_21DF141DC@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x223D50720]();
  *a1 = result;
  return result;
}

uint64_t sub_21DF14238()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAA7F8, &qword_21E14EA80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAA830, &qword_21E1558E0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAA7F0, &qword_21E14EA78);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAA810, &qword_21E14EA98);
  sub_21E021B28();
  sub_21E021C24();
  swift_getOpaqueTypeConformance2();
  sub_21E021D0C();
  sub_21DF23E5C(&qword_27CEAA840, &qword_27CEAA830, &qword_21E1558E0, MEMORY[0x277CDF028]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21DF14424(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 40);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_21E13EEE4();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEAC530, &qword_21E148BC0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 44);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_21DF14554(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 40) = (a2 - 1);
  }

  else
  {
    v8 = sub_21E13EEE4();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEAC530, &qword_21E148BC0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 44);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_21DF14684()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAAA78, &qword_21E14EE88);
  type metadata accessor for SessionAnalytics(255);
  sub_21E02CB04();
  sub_21E02E4A0(&qword_280F6AEA8, type metadata accessor for SessionAnalytics, &protocol conformance descriptor for SessionAnalytics);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21DF14750()
{

  return swift_deallocObject();
}

uint64_t sub_21DF147F4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAAAD0, &unk_21E14F0A8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA6DF8, &qword_21E14B9B0);
  sub_21E02D128();
  sub_21DF23E5C(&qword_280F68BF8, &qword_27CEA6DF8, &qword_21E14B9B0, MEMORY[0x277D84470]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21DF148E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6DB8, &qword_21E1460C0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_21E13EDA4();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28) + 8);
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

uint64_t sub_21DF14A08(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6DB8, &qword_21E1460C0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_21E13EDA4();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28) + 8) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_21DF14B38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21E13D834();
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
    v12 = sub_21E13EDA4();
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_21DF14C2C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_21E13D834();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    v14 = sub_21E13EDA4();
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + *(a4 + 24);

    return v15(v16, a2, a2, v14);
  }
}

uint64_t sub_21DF14D38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21E13D834();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_21E13E9C4();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 24);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_21DF14E48(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_21E13D834();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_21E13E9C4();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 24) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_21DF15030()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21DF15074@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21E13E8D4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_21DF150CC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21E13E944();
  *a1 = result & 1;
  return result;
}

uint64_t sub_21DF15124@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21E13E964();
  *a1 = result & 1;
  return result;
}

uint64_t sub_21DF1517C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21E13E9A4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_21DF151D4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21E13E984();
  *a1 = result & 1;
  return result;
}

uint64_t sub_21DF1522C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB0B8, &qword_21E14FE70);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_21E13E9C4();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_21DF15328(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB0B8, &qword_21E14FE70);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_21E13E9C4();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_21DF15558(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB100, &unk_21E150060);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_21E13DA04();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_21DF15654(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB100, &unk_21E150060);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_21E13DA04();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_21DF158F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB190, &qword_21E150270);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_21E13DB94();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_21DF159EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB190, &qword_21E150270);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_21E13DB94();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_21DF15B08()
{
  v1 = *(v0 + 32);
  v2 = (sub_21E141A24() - 8);
  v3 = (*(*v2 + 80) + 80) & ~*(*v2 + 80);
  swift_unknownObjectRelease();

  (*(*(v1 - 8) + 8))(v0 + v3 + v2[10], v1);

  return swift_deallocObject();
}

uint64_t sub_21DF15C18()
{
  v1 = *(v0 + 32);
  v2 = (sub_21E141A24() - 8);
  v3 = (*(*v2 + 80) + 80) & ~*(*v2 + 80);
  swift_unknownObjectRelease();

  (*(*(v1 - 8) + 8))(v0 + v3 + v2[10], v1);

  return swift_deallocObject();
}

uint64_t sub_21DF15D18(uint64_t *a1)
{
  sub_21E142344();
  swift_getOpaqueTypeMetadata2();
  swift_getWitnessTable();
  sub_21E141A94();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_21E141854();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7CE0, &qword_21E148320);
  swift_getWitnessTable();
  sub_21DF23E5C(&qword_27CEA7CF8, &qword_27CEA7CE0, &qword_21E148320, MEMORY[0x277CDF028]);
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21DF15F1C()
{
  v1 = v0[2];
  v2 = (type metadata accessor for ConfigPicker(0, v1, v0[3], v0[4]) - 8);
  v3 = v0 + ((*(*v2 + 80) + 40) & ~*(*v2 + 80));

  v4 = &v3[v2[13]];

  v5 = sub_21E141A24();
  v6 = *(*(v1 - 8) + 8);
  v6(&v4[*(v5 + 32)], v1);
  v6(&v3[v2[14]], v1);

  return swift_deallocObject();
}

uint64_t sub_21DF16078@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21E140AD4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB310, &qword_21E150618) + 72));
  v9 = v8[1];
  v38 = *v8;
  v39 = v9;

  MEMORY[0x223D52A60](8250, 0xE200000000000000);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB4D8, &qword_21E1507A8);
  MEMORY[0x223D52200](&v37, v10);
  v11 = sub_21E04EC40(v37);
  MEMORY[0x223D52A60](v11);

  sub_21E140A74();
  v33 = sub_21E140C44();
  v34 = v12;
  v32 = v13;
  v35 = v14;

  sub_21E052484();
  (*(v5 + 104))(v7, *MEMORY[0x277CE0A98], v4);
  MEMORY[0x223D51250](0, 0xE000000000000000, v7, 12.0);
  (*(v5 + 8))(v7, v4);
  v15 = sub_21E140C44();
  v17 = v16;
  LOBYTE(v5) = v18;

  v19 = sub_21E140C04();
  v21 = v20;
  LOBYTE(a1) = v22;
  v24 = v23;
  sub_21DF3DE8C(v15, v17, v5 & 1);

  v36 = v32 & 1;
  LOBYTE(v38) = v32 & 1;
  LOBYTE(v17) = a1 & 1;
  LOBYTE(v37) = a1 & 1;
  v26 = v33;
  v25 = v34;
  sub_21DF42BEC(v33, v34, v32 & 1);
  v27 = v35;

  sub_21DF42BEC(v19, v21, v17);

  sub_21DF3DE8C(v19, v21, v17);

  sub_21DF3DE8C(v26, v25, v36);

  v29 = v38;
  v30 = v37;
  *a2 = v26;
  *(a2 + 8) = v25;
  *(a2 + 16) = v29;
  *(a2 + 24) = v27;
  *(a2 + 32) = v19;
  *(a2 + 40) = v21;
  *(a2 + 48) = v30;
  *(a2 + 56) = v24;
  return result;
}

uint64_t sub_21DF1637C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21E140AD4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB330, &qword_21E150638) + 72));
  v9 = v8[1];
  v38 = *v8;
  v39 = v9;

  MEMORY[0x223D52A60](8250, 0xE200000000000000);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB4B8, &qword_21E150798);
  MEMORY[0x223D52200](&v37, v10);
  v11 = sub_21E04F108(v37);
  MEMORY[0x223D52A60](v11);

  sub_21E140A74();
  v33 = sub_21E140C44();
  v34 = v12;
  v32 = v13;
  v35 = v14;

  sub_21E052820();
  (*(v5 + 104))(v7, *MEMORY[0x277CE0A98], v4);
  MEMORY[0x223D51250](0, 0xE000000000000000, v7, 12.0);
  (*(v5 + 8))(v7, v4);
  v15 = sub_21E140C44();
  v17 = v16;
  LOBYTE(v5) = v18;

  v19 = sub_21E140C04();
  v21 = v20;
  LOBYTE(a1) = v22;
  v24 = v23;
  sub_21DF3DE8C(v15, v17, v5 & 1);

  v36 = v32 & 1;
  LOBYTE(v38) = v32 & 1;
  LOBYTE(v17) = a1 & 1;
  LOBYTE(v37) = a1 & 1;
  v26 = v33;
  v25 = v34;
  sub_21DF42BEC(v33, v34, v32 & 1);
  v27 = v35;

  sub_21DF42BEC(v19, v21, v17);

  sub_21DF3DE8C(v19, v21, v17);

  sub_21DF3DE8C(v26, v25, v36);

  v29 = v38;
  v30 = v37;
  *a2 = v26;
  *(a2 + 8) = v25;
  *(a2 + 16) = v29;
  *(a2 + 24) = v27;
  *(a2 + 32) = v19;
  *(a2 + 40) = v21;
  *(a2 + 48) = v30;
  *(a2 + 56) = v24;
  return result;
}

uint64_t sub_21DF16680@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21E140AD4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB378, &unk_21E150680) + 72));
  v9 = v8[1];
  v38 = *v8;
  v39 = v9;

  MEMORY[0x223D52A60](8250, 0xE200000000000000);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6F58, &qword_21E146250);
  MEMORY[0x223D52200](&v37, v10);
  v11 = sub_21E04F36C(v37);
  MEMORY[0x223D52A60](v11);

  sub_21E140A74();
  v33 = sub_21E140C44();
  v34 = v12;
  v32 = v13;
  v35 = v14;

  sub_21E0529F4();
  (*(v5 + 104))(v7, *MEMORY[0x277CE0A98], v4);
  MEMORY[0x223D51250](0, 0xE000000000000000, v7, 12.0);
  (*(v5 + 8))(v7, v4);
  v15 = sub_21E140C44();
  v17 = v16;
  LOBYTE(v5) = v18;

  v19 = sub_21E140C04();
  v21 = v20;
  LOBYTE(a1) = v22;
  v24 = v23;
  sub_21DF3DE8C(v15, v17, v5 & 1);

  v36 = v32 & 1;
  LOBYTE(v38) = v32 & 1;
  LOBYTE(v17) = a1 & 1;
  LOBYTE(v37) = a1 & 1;
  v26 = v33;
  v25 = v34;
  sub_21DF42BEC(v33, v34, v32 & 1);
  v27 = v35;

  sub_21DF42BEC(v19, v21, v17);

  sub_21DF3DE8C(v19, v21, v17);

  sub_21DF3DE8C(v26, v25, v36);

  v29 = v38;
  v30 = v37;
  *a2 = v26;
  *(a2 + 8) = v25;
  *(a2 + 16) = v29;
  *(a2 + 24) = v27;
  *(a2 + 32) = v19;
  *(a2 + 40) = v21;
  *(a2 + 48) = v30;
  *(a2 + 56) = v24;
  return result;
}

uint64_t sub_21DF16B34()
{

  if (*(v0 + 80))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21DF16B9C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAB590, &qword_21E150958);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAB588, &qword_21E150950);
  sub_21E05C4E4();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21DF16C54()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAB5B8, &qword_21E150A70);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7CE0, &qword_21E148320);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAB5B0, &qword_21E150A68);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAB5A8, &qword_21E150A60);
  sub_21DF23E5C(qword_27CEAB5C0, &qword_27CEAB5A8, &qword_21E150A60, MEMORY[0x277CDF068]);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_21DF23E5C(&qword_27CEA7CF8, &qword_27CEA7CE0, &qword_21E148320, MEMORY[0x277CDF028]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21DF16DDC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ConfigurationFormView(255, *a1, a1[1], a4);

  return swift_getWitnessTable();
}

uint64_t sub_21DF16E94()
{
  v1 = (type metadata accessor for CVCoordinatorConfigurationForm(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB650, &qword_21E150C70) + 32);
  v4 = sub_21E13DAC4();
  v5 = *(*(v4 - 8) + 8);
  v5(v2 + v3, v4);
  v5(v2 + v1[7], v4);

  return swift_deallocObject();
}

uint64_t sub_21DF16FEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB650, &qword_21E150C70);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_21E13DAC4();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_21DF170E8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB650, &qword_21E150C70);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_21E13DAC4();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_21DF171F4()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB670, &qword_21E150C90) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  swift_unknownObjectRelease();

  v3 = v1[10];
  v4 = sub_21E13DAB4();
  (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_21DF17310()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB670, &qword_21E150C90) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  swift_unknownObjectRelease();

  v3 = v1[10];
  v4 = sub_21E13DAB4();
  (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_21DF17480(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB648, &qword_21E1511A0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_21E13D904();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_21DF1757C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB648, &qword_21E1511A0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_21E13D904();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_21DF17688()
{

  return swift_deallocObject();
}

uint64_t sub_21DF176D8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21E13FF24();
  *a1 = result & 1;
  return result;
}

uint64_t sub_21DF17744(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483638)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 9;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB840, &qword_21E151788);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_21DF17810(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483638)
  {
    *result = (a2 + 8);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB840, &qword_21E151788);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21DF178C4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB860, &qword_21E151830);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21DF1792C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAB860, &qword_21E151830);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21DF17AE8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAB860, &qword_21E151830);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAB868, &qword_21E151838);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAB870, &qword_21E151840);
  sub_21E0654D0();
  sub_21E06560C();
  swift_getOpaqueTypeConformance2();
  sub_21E065660();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21DF17BF4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21E13FF24();
  *a1 = result & 1;
  return result;
}

uint64_t sub_21DF17C88(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6DB8, &qword_21E1460C0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_21DF17D00(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6DB8, &qword_21E1460C0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_21DF17D8C()
{
  v1 = type metadata accessor for ReportAConcernButton(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = v0 + v2;
  v4 = sub_21E13D994();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  v6 = *(v1 + 24);
  v7 = sub_21E13DF64();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v3 + v6, 1, v7))
  {
    (*(v8 + 8))(v3 + v6, v7);
  }

  return swift_deallocObject();
}

uint64_t sub_21DF17F58(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6DB8, &qword_21E1460C0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6D98, &qword_21E145DC0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_9:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_10;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8838, &qword_21E1520B0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[7];
    goto LABEL_9;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABB70, qword_21E1520B8);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[10];
    goto LABEL_9;
  }

  v17 = *(a1 + a3[12] + 8);
  if (v17 >= 0xFFFFFFFF)
  {
    LODWORD(v17) = -1;
  }

  return (v17 + 1);
}

uint64_t sub_21DF18128(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6DB8, &qword_21E1460C0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6D98, &qword_21E145DC0);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8838, &qword_21E1520B0);
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[7];
      }

      else
      {
        result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEABB70, qword_21E1520B8);
        if (*(*(result - 8) + 84) != a3)
        {
          *(a1 + a4[12] + 8) = (a2 - 1);
          return result;
        }

        v10 = result;
        v14 = *(result - 8);
        v15 = a4[10];
      }
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_21DF182F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6D98, &qword_21E145DC0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8838, &qword_21E1520B0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_21DF1841C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6D98, &qword_21E145DC0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8838, &qword_21E1520B0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_21DF18540()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEABBB8, &qword_21E152148);
  sub_21E13D304();
  sub_21E076FA8();
  sub_21E078B1C(&qword_27CEAA468, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21DF186BC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  type metadata accessor for MorphingContainerBackgroundModifier(255, *a1, v5, a4);
  swift_getWitnessTable();
  sub_21E140464();
  type metadata accessor for InterpolatingBackgroundMaterial(255, v4, v5, v6);
  sub_21E13FB54();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7648, &qword_21E146E50);
  sub_21E13FB54();
  sub_21E13FB54();
  sub_21E13FB54();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_21DF23E5C(&qword_280F68E70, &qword_27CEA7648, &qword_21E146E50, MEMORY[0x277CE01A0]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21DF18938()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEABF68, &qword_21E152620);
  sub_21E07F6E8(&qword_27CEABF80, &qword_27CEABF68, &qword_21E152620, sub_21E07EBB8);
  sub_21E06560C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21DF18A44@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x223D505B0]();
  *a1 = result;
  return result;
}

uint64_t sub_21DF18BA0()
{
  swift_unknownObjectUnownedDestroy();

  return swift_deallocObject();
}

uint64_t sub_21DF18C58@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21E08A1EC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_21DF18C8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC470, &unk_21E1531E0);
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

uint64_t sub_21DF18D54(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC470, &unk_21E1531E0);
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

uint64_t sub_21DF18E54()
{
  MEMORY[0x223D541D0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21DF18EF8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAC528, &qword_21E153528);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAC520, &qword_21E153520);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAC470, &unk_21E1531E0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA8360, &qword_21E148AB8);
  sub_21E08CA80();
  sub_21DF97BB4();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21DF1901C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21DF1905C()
{

  return swift_deallocObject();
}

uint64_t sub_21DF1915C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9990, &qword_21E148DD0);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC700, &unk_21E154460);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 40);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_21DF19298(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA9990, &qword_21E148DD0);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC700, &unk_21E154460);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_21DF193D4()
{
  sub_21DF446B8();
  sub_21DFE0F78(*(v0 + 40), *(v0 + 48));

  return swift_deallocObject();
}

uint64_t sub_21DF19434()
{

  return swift_deallocObject();
}

uint64_t sub_21DF1946C()
{
  v1 = type metadata accessor for MapsDisambiguationViewItem(0);
  v12 = *(*(v1 - 1) + 64);
  v13 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v14 = v0;
  v2 = v0 + v13;

  v3 = v1[5];
  v4 = sub_21E13D264();
  v5 = *(v4 - 8);
  v6 = *(v5 + 48);
  if (!v6(v2 + v3, 1, v4))
  {
    (*(v5 + 8))(v2 + v3, v4);
  }

  v7 = v1[10];
  v8 = sub_21E13E504();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v2 + v7, 1, v8))
  {
    (*(v9 + 8))(v2 + v7, v8);
  }

  v10 = v1[11];
  if (!v6(v2 + v10, 1, v4))
  {
    (*(v5 + 8))(v2 + v10, v4);
  }

  sub_21DF446B8();
  sub_21DFE0F78(*(v14 + ((v12 + v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 24), *(v14 + ((v12 + v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 32));

  return swift_deallocObject();
}

uint64_t sub_21DF196D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MapsDisambiguationViewItem(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
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

uint64_t sub_21DF197A4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for MapsDisambiguationViewItem(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  return result;
}

uint64_t sub_21DF199BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEAC9E0, qword_21E147F50);
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

uint64_t sub_21DF19A84(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEAC9E0, qword_21E147F50);
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

uint64_t sub_21DF19BAC()
{

  return swift_deallocObject();
}

uint64_t sub_21DF19BF4()
{

  return swift_deallocObject();
}

id sub_21DF19C3C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC20VisualIntelligenceUI20OmnibarContainerView_hostingView;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

void sub_21DF19CA4(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  OmnibarContainerView.hostingView.setter(v1);
}

double sub_21DF19CD4@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC20VisualIntelligenceUI20OmnibarContainerView_additionalPartnerHorizontalPadding;
  swift_beginAccess();
  result = *(v3 + v4);
  *a2 = result;
  return result;
}

id sub_21DF19D2C(uint64_t *a1, char **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC20VisualIntelligenceUI20OmnibarContainerView_additionalPartnerHorizontalPadding;
  swift_beginAccess();
  *&v3[v4] = v2;
  return [v3 setNeedsLayout];
}

uint64_t sub_21DF19DA8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21DF19DE0()
{
  MEMORY[0x223D541D0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21DF19E40(uint64_t *a1)
{
  type metadata accessor for ContainerSmartDialogViewModifier(255);
  sub_21E13FB54();
  sub_21DFF5C7C();
  return swift_getWitnessTable();
}

uint64_t sub_21DF19EF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21E141FB4();
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

uint64_t sub_21DF19FAC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21E141FB4();
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

uint64_t sub_21DF1A064()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACA90, &qword_21E154EF8);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(*(type metadata accessor for ContainerSmartDialogViewModifier(0) - 8) + 80);
  v6 = (v3 + v4 + v5) & ~v5;
  (*(v2 + 8))(v0 + v3, v1);
  v7 = sub_21E141FB4();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);

  return swift_deallocObject();
}

uint64_t sub_21DF1A1DC()
{
  v1 = *(type metadata accessor for ContainerSmartDialogViewModifier(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = sub_21E141FB4();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

void sub_21DF1A354(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_21E120160(v1);
}

uint64_t sub_21DF1A454()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21DF1A51C@<X0>(uint64_t *a3@<X8>)
{
  result = NewBarModel.Item.id.getter();
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_21DF1A560()
{

  return swift_deallocObject();
}

uint64_t sub_21DF1A59C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21DF1A634()
{

  return swift_deallocObject();
}

uint64_t sub_21DF1A68C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACF60, &qword_21E156118);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_21DF1A718@<X0>(void *a1@<X8>)
{
  sub_21E0BA134();
  result = sub_21E13FFA4();
  *a1 = v3;
  return result;
}

uint64_t sub_21DF1A774(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6DB8, &qword_21E1460C0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_21E13DBC4();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[6];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v14 = *(a1 + a3[7]);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    return (v14 + 1);
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEAD130, &unk_21E156320);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[10];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_21DF1A900(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6DB8, &qword_21E1460C0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = sub_21E13DBC4();
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[6];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[7]) = (a2 - 1);
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEAD130, &unk_21E156320);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[10];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t sub_21DF1AAA0()
{

  return swift_deallocObject();
}

uint64_t sub_21DF1AAD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 16);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEACFB0, &qword_21E147730);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEAD2E0, &qword_21E156548);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_21DF1AC0C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 16) = -a2;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEACFB0, &qword_21E147730);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEAD2E0, &qword_21E156548);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_21DF1AD64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6DB8, &qword_21E1460C0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_21DF1AE2C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6DB8, &qword_21E1460C0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21DF1AEF0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD470, &qword_21E156858);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21DF1AF88@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21E13FE94();
  *a1 = result;
  return result;
}

uint64_t sub_21DF1AFE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_21E13D264();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_21DF1B054(uint64_t a1, uint64_t a2)
{
  v4 = sub_21E13D264();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_21DF1B184()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

void sub_21DF1B85C(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_21E0CDF44(v1);
}

uint64_t sub_21DF1B944()
{
  if (*(v0 + 16) >= 9uLL)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21DF1B98C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21DF1B9D4()
{

  return swift_deallocObject();
}

uint64_t sub_21DF1BB18()
{
  swift_unknownObjectRelease();

  if (*(v0 + 64))
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + 40));
  }

  return swift_deallocObject();
}

uint64_t sub_21DF1BC08()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_21DF1BC50()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACB50, &qword_21E14FA80) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);

  v3 = sub_21E13EF04();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

uint64_t sub_21DF1BD7C()
{
  v1 = *(v0 + 32);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_21DF1BEFC()
{

  return swift_deallocObject();
}

uint64_t sub_21DF1BF34(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD6B0, &qword_21E157738);
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 24)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_21DF1BFF0(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD6B0, &qword_21E157738);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 24)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21DF1C0A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_21E13F834();
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

uint64_t sub_21DF1C10C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_21E13F834();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_21DF1C194(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD700, &qword_21E157758);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21DF1C204(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD700, &qword_21E157758);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21DF1C26C()
{
  v1 = type metadata accessor for LighterRotatingContentLight(0);
  v2 = v0 + *(v1 + 24) + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v3 = sub_21E13F834();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v2, 2, v3))
  {
    (*(v4 + 8))(v2, v3);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD6B0, &qword_21E157738);

  return swift_deallocObject();
}

uint64_t sub_21DF1C3B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_21E13DBB4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_21DF1C424(uint64_t a1, uint64_t a2)
{
  v4 = sub_21E13DBB4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_21DF1C7AC()
{

  return swift_deallocObject();
}

uint64_t sub_21DF1C810(void *a1)
{
  sub_21E13FB54();
  sub_21E0AC400();
  return swift_getWitnessTable();
}

float sub_21DF1C8F8(uint64_t a1)
{
  v1 = *(a1 + 4);
  LOBYTE(v3[0]) = *a1;
  v3[1] = v1;
  FocusSelectionModel.focusSelectionConfiguration.setter(v3);
  return result;
}

id sub_21DF1C9D8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC20VisualIntelligenceUI19FocusSelectionModel_pixelBuffer;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_21DF1CA4C()
{

  return swift_deallocObject();
}

uint64_t sub_21DF1CA84()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21DF1CABC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD880, &qword_21E158570);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_21DF1CBE8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEAD8B0, &qword_21E1585E0);
  type metadata accessor for CGRect(255);
  sub_21E10F068();
  sub_21E10E7A8(&unk_280F68C60, type metadata accessor for CGRect, MEMORY[0x277CBF278]);
  return swift_getOpaqueTypeConformance2();
}

void sub_21DF1CDA0(id *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_21E110D04(*a1, v2);
  sub_21E10AB34(v1, v2);
}

void sub_21DF1CDE8(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_21E10A82C(v1);
}

void sub_21DF1CED4(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_21E104EA0(v1);
}

uint64_t sub_21DF1CF04()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

void sub_21DF1D0D4(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_21E12285C(v1);
}

void sub_21DF1D198(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_21E11EFC8(v1);
}

uint64_t sub_21DF1D1D8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21DF1D210()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21DF1D260()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21DF1D330()
{
  v1 = sub_21E13E084();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_21DF1D424(uint64_t a1, uint64_t a2)
{
  v4 = sub_21E13F064();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_21DF1D490(uint64_t a1, uint64_t a2)
{
  v4 = sub_21E13F064();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_21DF1D500()
{

  return swift_deallocObject();
}

uint64_t sub_21DF1D594(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA70F0, qword_21E149AD0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = sub_21E13F064();
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 32));
      if (v14 >= 2)
      {
        return ((v14 + 2147483646) & 0x7FFFFFFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_21DF1D6BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA70F0, qword_21E149AD0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_21E13F064();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 32)) = a2 + 1;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_21DF1D7E0@<X0>(uint64_t a1@<X8>)
{
  result = sub_21E13FF44();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_21DF1D84C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA70F0, qword_21E149AD0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADB60, &qword_21E159D20);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADC30, &unk_21E159E40);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 28);

  return v15(v16, a2, v14);
}

uint64_t sub_21DF1D9B0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA70F0, qword_21E149AD0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADB60, &qword_21E159D20);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADC30, &unk_21E159E40);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 28);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_21DF1DB54()
{

  return swift_deallocObject();
}

uint64_t sub_21DF1DB98()
{
  v1 = type metadata accessor for VisualSearchCardImageView(0);
  v2 = *(*(v1 - 8) + 80);
  v12 = *(*(v1 - 8) + 64);
  v3 = sub_21E13F174();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  swift_unknownObjectRelease();
  v6 = v0 + ((v2 + 32) & ~v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7140, &qword_21E149F40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_21E1401B4();
    (*(*(v7 - 8) + 8))(v0 + ((v2 + 32) & ~v2), v7);
  }

  else
  {
  }

  v8 = *(v1 + 20);
  v9 = *(v4 + 48);
  if (!v9(v6 + v8, 1, v3))
  {
    (*(v4 + 8))(v6 + v8, v3);
  }

  v10 = v6 + *(v1 + 28);
  if (!v9(v10, 1, v3))
  {
    (*(v4 + 8))(v10, v3);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADC30, &unk_21E159E40);

  (*(v4 + 8))(v0 + ((((v2 + 32) & ~v2) + v12 + v5) & ~v5), v3);

  return swift_deallocObject();
}

uint64_t sub_21DF1DE08(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADD88, &unk_21E159FF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21DF1DE78(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEADD88, &unk_21E159FF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21DF1DEE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VisualSearchState(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_21DF1DF54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VisualSearchState(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_21DF1DFC8()
{

  return swift_deallocObject();
}

double sub_21DF1E010@<D0>(_OWORD *a1@<X8>)
{
  sub_21DF497E0();
  sub_21E13FFA4();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_21DF1E070(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA70F0, qword_21E149AD0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6D40, &unk_21E145D30);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_21DF1E1B0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA70F0, qword_21E149AD0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6D40, &unk_21E145D30);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_21DF1E2F4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21E13F014();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_21DF1E320()
{
  v1 = type metadata accessor for VisualSearchGridView(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = v0 + v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7140, &qword_21E149F40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_21E1401B4();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  else
  {
  }

  sub_21DF446B8();

  v5 = (v3 + v1[7]);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6C58, &unk_21E1455A0);
  if (!(*(*(v6 - 8) + 48))(v5, 1, v6))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
    }

    else
    {
      v7 = sub_21E13EEE4();
      (*(*(v7 - 8) + 8))(v5, v7);
      v8 = *(type metadata accessor for PillQueryResult(0) + 20);
      v9 = sub_21E13F0A4();
      (*(*(v9 - 8) + 8))(v5 + v8, v9);
    }
  }

  v10 = v3 + v1[8];
  v11 = *(v10 + 32);
  if (v11 != 255)
  {
    sub_21DF346C4(*v10, *(v10 + 8), *(v10 + 16), *(v10 + 24), v11);
  }

  if (*(v3 + v1[10]))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21DF1E5D0()
{

  return swift_deallocObject();
}

uint64_t sub_21DF1E608()
{
  v1 = type metadata accessor for PillQueryResult(0);
  v25 = *(*(v1 - 8) + 80);
  v2 = (v25 + 16) & ~v25;
  v3 = *(*(v1 - 8) + 64);
  v4 = type metadata accessor for VisualSearchGridView(0);
  v5 = *(*(v4 - 1) + 80);
  v6 = (v2 + v3 + v5) & ~v5;
  v23 = *(*(v4 - 1) + 64);
  v24 = sub_21E13EFC4();
  v7 = *(v24 - 8);
  v8 = *(v7 + 80);
  v9 = v0 + v2;
  v10 = sub_21E13EEE4();
  v21 = *(*(v10 - 8) + 8);
  v21(v9, v10);
  v22 = v1;
  v11 = *(v1 + 20);
  v12 = sub_21E13F0A4();
  v20 = *(*(v12 - 8) + 8);
  v20(v9 + v11, v12);
  v13 = v0 + v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7140, &qword_21E149F40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_21E1401B4();
    (*(*(v14 - 8) + 8))(v0 + v6, v14);
  }

  else
  {
  }

  sub_21DF446B8();

  v15 = (v13 + v4[7]);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6C58, &unk_21E1455A0);
  if (!(*(*(v16 - 8) + 48))(v15, 1, v16))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
    }

    else
    {
      v21(v15, v10);
      v20(v15 + *(v22 + 20), v12);
    }
  }

  v17 = v13 + v4[8];
  v18 = *(v17 + 32);
  if (v18 != 255)
  {
    sub_21DF346C4(*v17, *(v17 + 8), *(v17 + 16), *(v17 + 24), v18);
  }

  if (*(v13 + v4[10]))
  {
  }

  (*(v7 + 8))(v0 + ((v6 + v23 + v8) & ~v8), v24);

  return swift_deallocObject();
}

uint64_t sub_21DF1E9F8()
{
  v1 = sub_21E13F064();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for VisualSearchGridView(0);
  v6 = (v3 + v4 + *(*(v5 - 1) + 80)) & ~*(*(v5 - 1) + 80);
  (*(v2 + 8))(v0 + v3, v1);
  v7 = v0 + v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7140, &qword_21E149F40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_21E1401B4();
    (*(*(v8 - 8) + 8))(v0 + v6, v8);
  }

  else
  {
  }

  sub_21DF446B8();

  v9 = (v7 + v5[7]);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6C58, &unk_21E1455A0);
  if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
    }

    else
    {
      v11 = sub_21E13EEE4();
      (*(*(v11 - 8) + 8))(v9, v11);
      v12 = *(type metadata accessor for PillQueryResult(0) + 20);
      v13 = sub_21E13F0A4();
      (*(*(v13 - 8) + 8))(v9 + v12, v13);
    }
  }

  v14 = v7 + v5[8];
  v15 = *(v14 + 32);
  if (v15 != 255)
  {
    sub_21DF346C4(*v14, *(v14 + 8), *(v14 + 16), *(v14 + 24), v15);
  }

  if (*(v7 + v5[10]))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21DF1ED20()
{

  if (*(v0 + 48))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21DF1ED98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21E13D884();
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

uint64_t sub_21DF1EE58(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21E13D884();
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

uint64_t sub_21DF1EF18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21E13D834();
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

uint64_t sub_21DF1EFD8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21E13D834();
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

uint64_t sub_21DF1F094()
{
  v1 = *(type metadata accessor for Waypoint(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = sub_21E13D834();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

uint64_t sub_21DF1F1DC(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

float32x4_t Main_wand_graph_60FD312B_BD15_40F5_A712_1FAA290862F8(uint64_t a1, uint64_t a2, _OWORD *a3, float32x4_t *a4)
{
  v16 = _simd_cos_f4(0);
  v6 = _simd_sin_f4(0);
  v7 = v16;
  v8 = vextq_s8(v7, v7, 4uLL);
  v9 = vmulq_f32(vzip1q_s32(vrev64q_s32(v16), v16), vextq_s8(vzip1q_s32(v8, v6), v8, 8uLL));
  v10 = vzip2q_s32(vzip1q_s32(v16, v6), v6);
  v11 = vextq_s8(v6, v6, 8uLL);
  v12 = vtrn1q_s32(v6, vextq_s8(v7, v7, 8uLL));
  v6.i32[3] = v6.i32[1];
  v10.f32[3] = -v6.f32[0];
  v13 = vmulq_f32(v6, v10);
  v14 = vtrn1q_s32(v11, v16);
  v14.f32[1] = -v16.f32[0];
  result = vmlaq_f32(vrev64q_s32(vmulq_f32(v13, v14)), v12, v9);
  *a3 = xmmword_21E144990;
  *a4 = result;
  return result;
}

float32x4_t __vfx_script_wand_graph_60FD312B_BD15_40F5_A712_1FAA290862F8()
{
  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = *(arguments_buffer + 16);
  v2 = *(arguments_buffer + 24);
  v13 = _simd_cos_f4(0);
  v3 = _simd_sin_f4(0);
  v4 = v13;
  v5 = vextq_s8(v4, v4, 4uLL);
  v6 = vmulq_f32(vzip1q_s32(vrev64q_s32(v13), v13), vextq_s8(vzip1q_s32(v5, v3), v5, 8uLL));
  v7 = vzip2q_s32(vzip1q_s32(v13, v3), v3);
  v8 = vextq_s8(v3, v3, 8uLL);
  v9 = vtrn1q_s32(v3, vextq_s8(v4, v4, 8uLL));
  v3.i32[3] = v3.i32[1];
  v7.f32[3] = -v3.f32[0];
  v10 = vmulq_f32(v3, v7);
  v11 = vtrn1q_s32(v8, v13);
  v11.f32[1] = -v13.f32[0];
  result = vmlaq_f32(vrev64q_s32(vmulq_f32(v10, v11)), v9, v6);
  *v1 = xmmword_21E144990;
  *v2 = result;
  return result;
}

int32x4_t Main_wand_graph_871F2BCC_D47F_4C4B_A756_367C9E3B1F1F(uint64_t a1, uint64_t a2, int32x4_t *a3, int32x4_t *a4)
{
  *a3 = vdupq_n_s32(0xBE4CCCCD);
  result = vdupq_n_s32(0x3E4CCCCDu);
  *a4 = result;
  return result;
}

int32x4_t __vfx_script_wand_graph_871F2BCC_D47F_4C4B_A756_367C9E3B1F1F()
{
  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = *(arguments_buffer + 24);
  **(arguments_buffer + 16) = vdupq_n_s32(0xBE4CCCCD);
  result = vdupq_n_s32(0x3E4CCCCDu);
  *v1 = result;
  return result;
}

float Init_wand_graph_7EA008FB_5C48_4CE5_98F1_2F09F9A5CD68(float a1, uint64_t a2, uint64_t a3, float *a4)
{
  result = a1 * 6.0;
  *a4 = result;
  a4[1] = result;
  return result;
}

float __vfx_script_wand_graph_7EA008FB_5C48_4CE5_98F1_2F09F9A5CD68()
{
  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = *(arguments_buffer + 24);
  result = **(arguments_buffer + 16) * 6.0;
  *v1 = result;
  v1[1] = result;
  return result;
}

void Main_wand_graph_72931B8F_2F95_4BB5_9FE6_1EB0C3BAC773(uint64_t a1, int a2, int a3, unsigned int a4, uint64_t a5, int a6, _OWORD *a7, float *a8, double a9, float32x4_t a10, float32x4_t a11, float a12, float a13, _BYTE *a14, void *a15, float *a16, float *a17)
{
  v25 = vsubq_f32(a10, a11);
  v26 = vmulq_f32(v25, v25);
  v27 = sqrtf(v26.f32[2] + vaddv_f32(*v26.f32));
  vfx_script_clock_delta_time();
  v29 = ((v28 * -10.0) + 1.0) * a12;
  if (v27 <= a12)
  {
    v30 = v29;
  }

  else
  {
    v30 = v27;
  }

  v31 = a3 ^ a4;
  if (!v31)
  {
    LOBYTE(a4) = a3;
  }

  v32 = v31 + a5;
  vfx_script_clock_delta_time();
  v35 = fmaxf(a13 + (v34 * -5.0), 0.0);
  if (!a6)
  {
    v35 = 1.0;
  }

  v36 = 277803737 * (((747796405 * a2 + 2112654314) >> (((747796405 * a2 + 2112654314) >> 28) + 4)) ^ (747796405 * a2 + 2112654314));
  *&v33 = a9;
  *a7 = v33;
  *a8 = v30;
  *a14 = a4;
  *a15 = v32;
  *a16 = v35;
  *a17 = COERCE_FLOAT((v36 >> 31) ^ (v36 >> 9) | 0x3F800000) + -1.0;
}

void __vfx_script_wand_graph_72931B8F_2F95_4BB5_9FE6_1EB0C3BAC773(uint64_t a1)
{
  arguments_buffer = vfx_script_get_arguments_buffer();
  v2 = *(arguments_buffer + 88);
  v3 = *(arguments_buffer + 96);
  v4 = *(arguments_buffer + 104);
  v5 = *(arguments_buffer + 112);
  v26 = *(arguments_buffer + 128);
  v27 = *(arguments_buffer + 120);
  v6 = **(arguments_buffer + 8);
  *&v7 = **(arguments_buffer + 16);
  v25 = v7;
  v8 = **(arguments_buffer + 40);
  v9 = **(arguments_buffer + 48);
  v10 = **(arguments_buffer + 56);
  v11 = **(arguments_buffer + 64);
  v12 = **(arguments_buffer + 72);
  v13 = **(arguments_buffer + 80);
  v14 = vsubq_f32(**(arguments_buffer + 24), **(arguments_buffer + 32));
  v15 = vmulq_f32(v14, v14);
  v16 = sqrtf(v15.f32[2] + vaddv_f32(*v15.f32));
  vfx_script_clock_delta_time();
  v18 = v8 * ((v17 * -10.0) + 1.0);
  if (v16 <= v8)
  {
    v19 = v18;
  }

  else
  {
    v19 = v16;
  }

  v20 = v9 ^ v10;
  if ((v9 ^ v10))
  {
    v9 = v10;
  }

  v21 = v11 + (v20 & 1);
  vfx_script_clock_delta_time();
  v23 = fmaxf(v12 + (v22 * -5.0), 0.0);
  if (!v13)
  {
    v23 = 1.0;
  }

  v24 = 277803737 * (((747796405 * v6 + 2112654314) >> (((747796405 * v6 + 2112654314) >> 28) + 4)) ^ (747796405 * v6 + 2112654314));
  *v2 = v25;
  *v3 = v19;
  *v4 = v9;
  *v5 = v21;
  *v27 = v23;
  *v26 = COERCE_FLOAT((v24 >> 31) ^ (v24 >> 9) | 0x3F800000) + -1.0;
}

void Spawn_wand_graph_141D2322_0B7C_4E79_BBE6_1B4ED64C475A(const void *a1, unsigned int a2, int a3, float *a4)
{
  v4 = 80.0;
  if (!a3)
  {
    v4 = 0.0;
  }

  *a4 = v4;
}

uint64_t __vfx_script_wand_graph_141D2322_0B7C_4E79_BBE6_1B4ED64C475A()
{
  result = vfx_script_get_arguments_buffer();
  v1 = 80.0;
  if (!**(result + 16))
  {
    v1 = 0.0;
  }

  **(result + 24) = v1;
  return result;
}

void Init_wand_graph_885370CA_9FEE_462C_9EC0_023D3C77D5FA(float a1, float a2, uint64_t a3, uint64_t a4, float *a5, float *a6)
{
  *a5 = a1;
  a5[1] = a1;
  *a6 = a2;
  a6[1] = a2;
}

float __vfx_script_wand_graph_885370CA_9FEE_462C_9EC0_023D3C77D5FA()
{
  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = *(arguments_buffer + 16);
  v2 = *(arguments_buffer + 32);
  v3 = *(arguments_buffer + 40);
  result = *v1;
  v5 = **(arguments_buffer + 24);
  *v2 = *v1;
  v2[1] = result;
  *v3 = v5;
  v3[1] = v5;
  return result;
}

uint64_t Main_wand_graph_F66D2FC7_9DFA_45F7_BDD1_184FB5A9E179(const void *a1, unsigned int a2, int a3, const void *a4)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = xmmword_21E1449A0;
  v9 = xmmword_21E1449B0;
  v10 = xmmword_21E1449C0;
  v11 = xmmword_21E1449D0;
  v12 = xmmword_21E1449A0;
  v6 = xmmword_21E1449F4;
  v7 = 1065353216;
  MEMORY[0x223D542A0](a1, &v8, &v6, 5, 1);
  v8 = xmmword_21E1449A0;
  v9 = xmmword_21E1449E0;
  v10 = xmmword_21E1449C0;
  v11 = xmmword_21E1449D0;
  v12 = xmmword_21E1449A0;
  v6 = xmmword_21E144A08;
  v7 = 1065353216;
  MEMORY[0x223D542A0](a1, &v8, &v6, 5, 1);
  vfx_script_color_ramp_copy();
  vfx_script_color_ramp_destroy();
  return vfx_script_color_ramp_destroy();
}

uint64_t __vfx_script_wand_graph_F66D2FC7_9DFA_45F7_BDD1_184FB5A9E179(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  vfx_script_get_arguments_buffer();
  v5 = xmmword_21E1449A0;
  v6 = xmmword_21E1449B0;
  v7 = xmmword_21E1449C0;
  v8 = xmmword_21E1449D0;
  v9 = xmmword_21E1449A0;
  v3 = xmmword_21E1449F4;
  v4 = 1065353216;
  MEMORY[0x223D542A0](a1, &v5, &v3, 5, 1);
  v5 = xmmword_21E1449A0;
  v6 = xmmword_21E1449E0;
  v7 = xmmword_21E1449C0;
  v8 = xmmword_21E1449D0;
  v9 = xmmword_21E1449A0;
  v3 = xmmword_21E144A08;
  v4 = 1065353216;
  MEMORY[0x223D542A0](a1, &v5, &v3, 5, 1);
  vfx_script_color_ramp_copy();
  vfx_script_color_ramp_destroy();
  return vfx_script_color_ramp_destroy();
}

double ParticleInit_wand_particleInit_40(__n128 a1, uint64_t a2, uint64_t a3, __n128 *a4, _OWORD *a5)
{
  a1.n128_u32[3] = 1.0;
  *a4 = a1;
  result = 0.0;
  *a5 = 0u;
  return result;
}

int32x4_t ParticleInit_wand_particleInit_0(int8x16_t a1, int8x16_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, float32x4_t *a7, int32x4_t *a8)
{
  v18 = *a2.i32;
  *a1.i32 = (a6 / 200.0) + *a1.i32;
  *a2.i32 = *a1.i32 - truncf(*a1.i32);
  v10.i64[0] = 0x8000000080000000;
  v10.i64[1] = 0x8000000080000000;
  v19 = vbslq_s8(v10, a2, a1).u64[0];
  vfx_script_clock_time();
  vfx_script_texture_sample1d();
  __asm { FMOV            V1.4S, #1.0 }

  *a7 = vmlaq_n_f32(v16, vsubq_f32(_Q1, v16), v18);
  result = vdupq_lane_s32(v19, 0);
  *a8 = result;
  return result;
}

float32x4_t ParticleUpdate_wand_particleUpdate_28(float32x4_t a1, float a2, uint64_t a3, uint64_t a4, float32x4_t *a5)
{
  result = vmulq_n_f32(a1, a2);
  *a5 = result;
  return result;
}

float32x4_t __vfx_script_wand_particleUpdate_28(uint64_t a1)
{
  vfx_script_get_iteration_range();
  vfx_script_get_arguments_buffer();
  return result;
}

int8x16_t ParticleUpdate_wand_particleUpdate_35(uint64_t a1, float32x4_t a2, uint64_t a3, int a4, int a5, int8x16_t *a6)
{
  vfx_script_clock_delta_time();
  *v10.i32 = v9 * 5.0;
  __asm { FMOV            V2.4S, #1.0 }

  v16 = vminnmq_f32(vmaxnmq_f32(vaddq_f32(vdupq_lane_s32(v10, 0), a2), 0), _Q2);
  v17 = vmulq_n_f32(a2, (v9 * -10.0) + 1.0);
  if ((a4 & ~a5) != 0)
  {
    v18 = -1;
  }

  else
  {
    v18 = 0;
  }

  result = vbslq_s8(vdupq_n_s32(v18), v16, v17);
  *a6 = result;
  return result;
}

float ParticleUpdate_wand_particleUpdate_1(uint64_t a1, int8x16_t a2, float a3, float32x4_t a4, float32x4_t a5, float a6, float a7, float a8, float a9, uint64_t a10, uint64_t a11, uint64_t a12, float32x4_t *a13)
{
  vfx_script_clock_time();
  vfx_script_texture_sample1d();
  v18 = vsubq_f32(a4, a5);
  v19 = vmulq_f32(v18, v18);
  v20 = fminf(fmaxf(sqrtf(v19.f32[2] + vaddv_f32(*v19.f32)) * 4.0, 0.0), 1.0);
  if (a6 > 0.3)
  {
    v20 = 1.0;
  }

  __asm { FMOV            V2.4S, #-1.0 }

  v26 = vaddq_f32(v17, _Q2);
  __asm { FMOV            V2.4S, #1.0 }

  v34 = vmlaq_n_f32(_Q2, v26, fminf(fmaxf(v20 - a7, 0.0), 1.0));
  vfx_script_texture_sample1d();
  result = a8 * v28;
  v30 = vmulq_n_f32(v34, result);
  *&v31 = vmuls_lane_f32(a9, v30, 2);
  v30.i64[0] = vmulq_n_f32(v30, a9).u64[0];
  v30.i64[1] = __PAIR64__(LODWORD(result), v31);
  *a13 = v30;
  return result;
}

uint64_t Wayfinder.init(model:isVisible:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  return result;
}

uint64_t Wayfinder.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEA6820, &unk_21E144A40);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v49 - v4;
  v6 = type metadata accessor for WaypointLayout(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v49 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACB50, &qword_21E14FA80);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v49 - v13;
  v15 = *v1;
  v16 = *(v1 + 8);
  v56 = a1;
  v55 = v5;
  v54 = v8;
  v53 = v16;
  v52 = v6;
  v51 = v11;
  if (v16 == 1)
  {
    v60 = v14;
    swift_getKeyPath();
    v66 = v15;
    sub_21DF233CC(&qword_280F6B250, type metadata accessor for NewSaliencyModel, &protocol conformance descriptor for NewSaliencyModel);
    sub_21E13D3C4();

    v17 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__entities;
    swift_beginAccess();
    v18 = *(v15 + v17);
    v65 = MEMORY[0x277D84F90];
    if (v18 >> 62)
    {
      goto LABEL_30;
    }

    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:

    if (v19)
    {
      v50 = v15;
      v20 = 0;
      v59 = v18 & 0xC000000000000001;
      *&v58 = v18 & 0xFFFFFFFFFFFFFF8;
      *&v57 = v19;
      while (1)
      {
        if (v59)
        {
          v21 = MEMORY[0x223D530F0](v20, v18);
          v22 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
LABEL_21:
            __break(1u);
            goto LABEL_22;
          }
        }

        else
        {
          if (v20 >= *(v58 + 16))
          {
            __break(1u);
LABEL_30:
            v19 = sub_21E1427B4();
            goto LABEL_4;
          }

          v21 = *(v18 + 8 * v20 + 32);

          v22 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            goto LABEL_21;
          }
        }

        v15 = v18;
        swift_getKeyPath();
        v64 = v21;
        sub_21DF233CC(&qword_280F6B6A0, type metadata accessor for NewEntityModel, &protocol conformance descriptor for NewEntityModel);
        sub_21E13D3C4();

        v23 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__pin;
        swift_beginAccess();
        v24 = v60;
        sub_21DF236C0(v21 + v23, v60, &qword_27CEACB50, &qword_21E14FA80);
        v25 = sub_21E13EF04();
        if ((*(*(v25 - 8) + 48))(v24, 1, v25) == 1)
        {

          sub_21DF23614(v24, &qword_27CEACB50, &qword_21E14FA80);
        }

        else
        {
          sub_21DF23614(v24, &qword_27CEACB50, &qword_21E14FA80);
          swift_getKeyPath();
          v64 = v21;
          sub_21E13D3C4();

          v26 = *(v21 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__systemImage + 8);
          if ((v26 & 0x2000000000000000) != 0)
          {
            v27 = HIBYTE(v26) & 0xF;
          }

          else
          {
            v27 = *(v21 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__systemImage) & 0xFFFFFFFFFFFFLL;
          }

          if (v27 && (swift_getKeyPath(), v64 = v21, sub_21E13D3C4(), , *(v21 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__prominence) < 2u))
          {
            sub_21E1428F4();
            sub_21E142934();
            sub_21E142944();
            sub_21E142904();
          }

          else
          {
          }
        }

        ++v20;
        if (v22 == v57)
        {
          v30 = v65;
          v15 = v50;
          goto LABEL_26;
        }
      }
    }

    v30 = MEMORY[0x277D84F90];
LABEL_26:
  }

  else
  {
LABEL_22:
    swift_getKeyPath();
    v66 = v15;
    sub_21DF233CC(&qword_280F6B250, type metadata accessor for NewSaliencyModel, &protocol conformance descriptor for NewSaliencyModel);
    sub_21E13D3C4();

    v28 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__selectedEntity;
    swift_beginAccess();
    v29 = *(v15 + v28);
    if (v29)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEA6858, &unk_21E147300);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_21E144A20;
      *(v30 + 32) = v29;
    }

    else
    {
      v30 = MEMORY[0x277D84F90];
    }
  }

  v60 = v30;
  v59 = sub_21DFAA298(v30);
  swift_getKeyPath();
  v65 = v15;
  sub_21DF233CC(&qword_280F6B250, type metadata accessor for NewSaliencyModel, &protocol conformance descriptor for NewSaliencyModel);
  sub_21E13D3C4();

  v31 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__userSelection;
  swift_beginAccess();
  v32 = *(v15 + v31);
  swift_getKeyPath();
  v64 = v32;
  sub_21DF233CC(&qword_280F6A5B0, type metadata accessor for FocusSelectionModel, &protocol conformance descriptor for FocusSelectionModel);

  sub_21E13D3C4();

  v33 = (v32 + OBJC_IVAR____TtC20VisualIntelligenceUI19FocusSelectionModel__contentsRect);
  swift_beginAccess();
  v34 = v33[1];
  v58 = *v33;
  v57 = v34;

  swift_getKeyPath();
  v63 = v15;
  sub_21E13D3C4();

  v35 = *(v15 + v31);
  swift_getKeyPath();
  v63 = v35;

  sub_21E13D3C4();

  v36 = OBJC_IVAR____TtC20VisualIntelligenceUI19FocusSelectionModel__contentsScale;
  swift_beginAccess();
  v37 = *(v35 + v36);

  swift_getKeyPath();
  v62 = v15;
  sub_21E13D3C4();

  v38 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__entryPoint;
  swift_beginAccess();
  v39 = sub_21E13D834();
  v40 = v15 + v38;
  v41 = v51;
  (*(*(v39 - 8) + 16))(v51, v40, v39);
  v42 = v52;
  *(v41 + *(v52 + 20)) = v59;
  v43 = (v41 + *(v42 + 24));
  v44 = v57;
  *v43 = v58;
  v43[1] = v44;
  *(v41 + *(v42 + 28)) = v37;
  v45 = v54;
  sub_21DF23A88(v41, v54, type metadata accessor for WaypointLayout);
  v46 = v55;
  sub_21DF23414(v45, v55);
  sub_21DF236C0(v46, v56, &unk_27CEA6820, &unk_21E144A40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6830, &qword_21E144B18);
  v61 = v60;
  v47 = swift_allocObject();
  *(v47 + 16) = v15;
  *(v47 + 24) = v53;
  *(v47 + 32) = v37;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6838, &qword_21E144B20);
  sub_21E13D344();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6840, &qword_21E144B28);
  sub_21DF23E5C(&qword_280F68CD8, &qword_27CEA6838, &qword_21E144B20, MEMORY[0x277D83980]);
  sub_21DF234D0();
  sub_21DF233CC(&unk_280F6B680, type metadata accessor for NewEntityModel, &protocol conformance descriptor for NewEntityModel);
  sub_21E141A84();
  sub_21DF23614(v46, &unk_27CEA6820, &unk_21E144A40);
  return sub_21DF235B8(v45);
}

uint64_t sub_21DF20C88@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v38 = a4;
  v9 = type metadata accessor for Waypoint(0);
  v10 = (v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  swift_getKeyPath();
  v41 = a2;
  sub_21DF233CC(&qword_280F6B250, type metadata accessor for NewSaliencyModel, &protocol conformance descriptor for NewSaliencyModel);
  sub_21E13D3C4();

  v14 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__entryPoint;
  swift_beginAccess();
  v15 = sub_21E13D834();
  (*(*(v15 - 8) + 16))(v12, a2 + v14, v15);
  swift_getKeyPath();
  v16 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel___observationRegistrar;
  v39 = v13;
  sub_21DF233CC(&qword_280F6B6A0, type metadata accessor for NewEntityModel, &protocol conformance descriptor for NewEntityModel);
  v36 = v16;
  sub_21E13D3C4();

  v17 = (v13 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__systemImage);
  v18 = *(v13 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__systemImage + 8);
  v35 = *(v13 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__systemImage);
  v39 = a2;
  v34 = a3;
  v37 = a3 & 1;
  v40 = a3;

  v19 = sub_21DF21084(v13);
  v32 = v20;
  v33 = v19;
  swift_getKeyPath();
  v39 = v13;
  sub_21E13D3C4();

  LOBYTE(a1) = *(v13 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__prominence) == 0;
  v21 = swift_allocObject();
  *(v21 + 16) = v13;
  *(v21 + 24) = a2;
  *(v21 + 32) = v34;
  v22 = &v12[v10[7]];
  *v22 = v35;
  *(v22 + 1) = v18;
  v23 = &v12[v10[8]];
  v24 = v32;
  *v23 = v33;
  *(v23 + 1) = v24;
  v12[v10[9]] = a1;
  *&v12[v10[10]] = a5;
  v25 = &v12[v10[11]];
  *v25 = sub_21DF23A7C;
  v25[1] = v21;
  *&v12[v10[12]] = 0x4049000000000000;
  swift_getKeyPath();
  v39 = v13;

  sub_21E13D3C4();

  if (*v17 != 0xD000000000000012 || (v26 = 0.5, 0x800000021E15B000 != v17[1]))
  {
    v27 = sub_21E142B14();
    v26 = 0.0;
    if (v27)
    {
      v26 = 0.5;
    }
  }

  v39 = a2;
  v28 = v37;
  v40 = v37;
  sub_21DF2165C(v26);
  v39 = a2;
  v40 = v28;
  sub_21DF217EC();
  v29 = sub_21E13F684();

  v30 = v38;
  sub_21DF23A88(v12, v38, type metadata accessor for Waypoint);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6840, &qword_21E144B28);
  *(v30 + *(result + 36)) = v29;
  return result;
}

uint64_t sub_21DF21084(uint64_t a1)
{
  v2 = sub_21E13D384();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_21E1420E4();
  MEMORY[0x28223BE20](v3 - 8);
  MEMORY[0x28223BE20](v4);
  swift_getKeyPath();
  sub_21DF233CC(&qword_280F6B6A0, type metadata accessor for NewEntityModel, &protocol conformance descriptor for NewEntityModel);
  sub_21E13D3C4();

  v5 = *(a1 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__systemImage) == 0xD000000000000012 && 0x800000021E15B000 == *(a1 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__systemImage + 8);
  if (v5 || (sub_21E142B14() & 1) != 0)
  {
    sub_21E142084();
    sub_21DF23B80();
    if (!sub_21E1426B4())
    {
      [objc_opt_self() mainBundle];
    }
  }

  else
  {
    sub_21E142084();
    sub_21DF23B80();
    if (!sub_21E1426B4())
    {
      [objc_opt_self() mainBundle];
    }
  }

  sub_21E13D374();
  return sub_21E142184();
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

uint64_t sub_21DF2139C(uint64_t a1, uint64_t a2, char a3)
{
  swift_getKeyPath();
  sub_21DF233CC(&qword_280F6B6A0, type metadata accessor for NewEntityModel, &protocol conformance descriptor for NewEntityModel);
  sub_21E13D3C4();

  if (*(a1 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__prominence) != 2)
  {
    MEMORY[0x28223BE20](result);
    sub_21E141D64();
    sub_21E13F864();
  }

  return result;
}

uint64_t sub_21DF214CC(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  v10[5] = a2;
  sub_21DF233CC(&qword_280F6B250, type metadata accessor for NewSaliencyModel, &protocol conformance descriptor for NewSaliencyModel);
  sub_21E13D3C4();

  v4 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__selectedEntity;
  swift_beginAccess();
  v5 = *(a2 + v4);
  if (!v5)
  {
    return NewSaliencyModel.updateUserSelection(_:)(a1);
  }

  v6 = sub_21E1423C4();
  MEMORY[0x28223BE20](v6);
  v10[2] = a1;
  v10[3] = v5;

  v7 = sub_21E0C372C(sub_21DF23B64, v10, "VisualIntelligenceUI/NewEntityModel.swift", 41, 2, 233);

  if ((v7 & 1) == 0)
  {
    return NewSaliencyModel.updateUserSelection(_:)(a1);
  }

  sub_21E0BD41C();
  v8 = swift_weakInit();
  sub_21E0DBD40(v8);
  return swift_weakDestroy();
}

uint64_t sub_21DF2165C(double a1)
{
  v1 = sub_21E13DF44();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21E13DEE4();
  sub_21E13DEC4();
  sub_21E13DF34();
  sub_21E13DF24();
  (*(v2 + 8))(v4, v1);
  MEMORY[0x223D52580](0.3, 0.62, 0.0);
  sub_21E141DE4();
  v9[3] = 0;
  v9[4] = v5;
  v9[5] = v6;
  v9[0] = 0x3FF0000000000000;
  v9[1] = v5;
  v9[2] = v6;
  sub_21DF23AF0();
  sub_21E13F6E4();
  sub_21E141D04();
  v7 = sub_21E13F6F4();

  return v7;
}

uint64_t sub_21DF217EC()
{
  v0 = sub_21E13DF44();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21E13DEE4();
  sub_21E13DEB4();
  sub_21E13DF34();
  sub_21E13DF24();
  (*(v1 + 8))(v3, v0);
  MEMORY[0x223D52580](0.3, 0.85, 0.0);
  sub_21E141DE4();
  v8[3] = 0;
  v8[4] = v4;
  v8[5] = v5;
  v8[0] = 0x3FF0000000000000;
  v8[1] = v4;
  v8[2] = v5;
  sub_21DF23AF0();
  sub_21E13F6E4();

  v6 = sub_21E13F6F4();

  return v6;
}

int64x2_t sub_21DF21968@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = *v2;
  v8 = *(v2 + 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6988, &qword_21E1450A8);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  v6 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6990, &unk_21E1450B0) + 36);
  result = vdupq_lane_s64(v9, 0);
  *v6 = result;
  *(v6 + 16) = v8;
  return result;
}

uint64_t sub_21DF21A2C@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = a3;
  *(a4 + 8) = a1 & 1;
  *(a4 + 9) = a2;
}

uint64_t sub_21DF21A44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a4;
  *(a5 + 8) = a1;
  *(a5 + 16) = a2;
  *(a5 + 24) = a3;
}

uint64_t sub_21DF21A8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  sub_21DF236C0(v4, a4, &qword_27CEA6868, &qword_21E158E90);
  v9 = a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6870, &unk_21E144BF0) + 36);
  *v9 = a1;
  *(v9 + 8) = a2;
  *(v9 + 16) = a3;
}

uint64_t sub_21DF21B1C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18 = a5;
  v9 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_21E140624();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v18 - v15;
  (*(v9 + 16))(v11, a1, a4, v14);
  (*(v9 + 32))(v16, v11, a4);
  v16[*(v12 + 36)] = a2;
  MEMORY[0x223D51B40](v16, a3, v12, v18);
  return (*(v13 + 8))(v16, v12);
}

uint64_t sub_21DF21D1C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21DF233CC(&qword_280F6B6A0, type metadata accessor for NewEntityModel, &protocol conformance descriptor for NewEntityModel);
  sub_21E13D3C4();

  v4 = *(v3 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__systemImage + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__systemImage);
  a2[1] = v4;
}

uint64_t sub_21DF21DD4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_21DF50738(v1, v2);
}

uint64_t sub_21DF21E14@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21DF233CC(&qword_280F6B6A0, type metadata accessor for NewEntityModel, &protocol conformance descriptor for NewEntityModel);
  sub_21E13D3C4();

  *a2 = *(v3 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__prominence);
  return result;
}

uint64_t sub_21DF21EFC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21DF233CC(&qword_280F6B6A0, type metadata accessor for NewEntityModel, &protocol conformance descriptor for NewEntityModel);
  sub_21E13D3C4();

  v4 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__pin;
  swift_beginAccess();
  return sub_21DF236C0(v3 + v4, a2, &qword_27CEACB50, &qword_21E14FA80);
}

uint64_t sub_21DF21FD4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACB50, &qword_21E14FA80);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  sub_21DF236C0(a1, &v6 - v3, &qword_27CEACB50, &qword_21E14FA80);
  return NewEntityModel.pin.setter(v4);
}

uint64_t sub_21DF220D0@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v33 = a7;
    v34 = a8;
    v35 = v9;
    v32 = sub_21E13F954();
    v18 = *(v32 - 8);
    MEMORY[0x28223BE20](v32);
    v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (!a2)
    {
      v37[0] = 0;
      v37[1] = 0xE000000000000000;
      sub_21E142884();

      strcpy(v37, "View.task @ ");
      BYTE5(v37[1]) = 0;
      HIWORD(v37[1]) = -5120;
      MEMORY[0x223D52A60](a4, a5);
      MEMORY[0x223D52A60](58, 0xE100000000000000);
      v36 = a6;
      v25 = sub_21E142AB4();
      MEMORY[0x223D52A60](v25);
    }

    v26 = sub_21E1423F4();
    v27 = MEMORY[0x28223BE20](v26);
    (*(v29 + 16))(&v31 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v27);

    sub_21E13F944();
    sub_21DF236C0(v35, a9, &qword_27CEA6888, &qword_21E148AA0);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6890, &unk_21E144C00);
    return (*(v18 + 32))(a9 + *(v30 + 36), v20, v32);
  }

  else
  {
    v21 = (a9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6898, &qword_21E148D70) + 36));
    v22 = *(sub_21E13F844() + 20);
    v23 = sub_21E1423F4();
    (*(*(v23 - 8) + 16))(&v21[v22], a3, v23);
    *v21 = a7;
    *(v21 + 1) = a8;
    return sub_21DF236C0(v9, a9, &qword_27CEA6888, &qword_21E148AA0);
  }
}

uint64_t sub_21DF2240C@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v33 = a7;
    v34 = a8;
    v35 = v9;
    v32 = sub_21E13F954();
    v18 = *(v32 - 8);
    MEMORY[0x28223BE20](v32);
    v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (!a2)
    {
      v37[0] = 0;
      v37[1] = 0xE000000000000000;
      sub_21E142884();

      strcpy(v37, "View.task @ ");
      BYTE5(v37[1]) = 0;
      HIWORD(v37[1]) = -5120;
      MEMORY[0x223D52A60](a4, a5);
      MEMORY[0x223D52A60](58, 0xE100000000000000);
      v36 = a6;
      v25 = sub_21E142AB4();
      MEMORY[0x223D52A60](v25);
    }

    v26 = sub_21E1423F4();
    v27 = MEMORY[0x28223BE20](v26);
    (*(v29 + 16))(&v31 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v27);

    sub_21E13F944();
    sub_21DF087D8(v35, a9);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA68A8, &qword_21E14ADE0);
    return (*(v18 + 32))(a9 + *(v30 + 36), v20, v32);
  }

  else
  {
    v21 = (a9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEA68B0, &qword_21E144C20) + 36));
    v22 = *(sub_21E13F844() + 20);
    v23 = sub_21E1423F4();
    (*(*(v23 - 8) + 16))(&v21[v22], a3, v23);
    *v21 = a7;
    *(v21 + 1) = a8;

    return sub_21DF087D8(v9, a9);
  }
}

uint64_t sub_21DF227AC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21DF233CC(&qword_280F6B250, type metadata accessor for NewSaliencyModel, &protocol conformance descriptor for NewSaliencyModel);
  sub_21E13D3C4();

  v4 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__userSelection;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_21DF228D4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21DF233CC(&qword_280F6B250, type metadata accessor for NewSaliencyModel, &protocol conformance descriptor for NewSaliencyModel);
  sub_21E13D3C4();

  v4 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__entryPoint;
  swift_beginAccess();
  v5 = sub_21E13D834();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_21DF229CC(uint64_t a1)
{
  v2 = sub_21E13D834();
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return NewSaliencyModel.entryPoint.setter(v5);
}

uint64_t sub_21DF22A98@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21DF233CC(&qword_280F6B250, type metadata accessor for NewSaliencyModel, &protocol conformance descriptor for NewSaliencyModel);
  sub_21E13D3C4();

  v4 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__entities;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_21DF22B8C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21DF233CC(&qword_280F6B250, type metadata accessor for NewSaliencyModel, &protocol conformance descriptor for NewSaliencyModel);
  sub_21E13D3C4();

  v4 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__selectedEntity;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

__n128 sub_21DF22C80@<Q0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21DF233CC(&qword_280F6A5B0, type metadata accessor for FocusSelectionModel, &protocol conformance descriptor for FocusSelectionModel);
  sub_21E13D3C4();

  v4 = v3 + OBJC_IVAR____TtC20VisualIntelligenceUI19FocusSelectionModel__contentsRect;
  swift_beginAccess();
  result = *v4;
  v6 = *(v4 + 16);
  *a2 = *v4;
  a2[1] = v6;
  return result;
}

double sub_21DF22D74@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21DF233CC(&qword_280F6A5B0, type metadata accessor for FocusSelectionModel, &protocol conformance descriptor for FocusSelectionModel);
  sub_21E13D3C4();

  v4 = OBJC_IVAR____TtC20VisualIntelligenceUI19FocusSelectionModel__contentsScale;
  swift_beginAccess();
  result = *(v3 + v4);
  *a2 = result;
  return result;
}

uint64_t sub_21DF22EF8(uint64_t a1, id *a2)
{
  result = sub_21E142104();
  *a2 = 0;
  return result;
}

uint64_t sub_21DF22F70(uint64_t a1, id *a2)
{
  v3 = sub_21E142114();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_21DF22FF0@<X0>(uint64_t *a1@<X8>)
{
  sub_21E142124();
  v2 = sub_21E1420F4();

  *a1 = v2;
  return result;
}

uint64_t sub_21DF23034()
{
  v0 = sub_21E142124();
  v1 = MEMORY[0x223D52A80](v0);

  return v1;
}

uint64_t sub_21DF23070(uint64_t a1)
{
  sub_21E142124();
  sub_21E142204();
}

uint64_t sub_21DF230C4(uint64_t a1)
{
  sub_21E142124();
  sub_21E142C14();
  sub_21E142204();
  v1 = sub_21E142C44();

  return v1;
}

void *sub_21DF23138@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_21DF23148()
{
  v1 = *v0;
  sub_21E142C14();
  MEMORY[0x223D53460](v1);
  return sub_21E142C44();
}

uint64_t sub_21DF231BC(uint64_t a1)
{
  v2 = *v1;
  sub_21E142C14();
  MEMORY[0x223D53460](v2);
  return sub_21E142C44();
}

uint64_t sub_21DF23200(void *a1, uint64_t *a2)
{
  v2 = sub_21E142124();
  v4 = v3;
  if (v2 == sub_21E142124() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_21E142B14();
  }

  return v7 & 1;
}

uint64_t sub_21DF2329C@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_21E1420F4();

  *a2 = v3;
  return result;
}

uint64_t sub_21DF232E4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21E142124();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_21DF23310(uint64_t a1)
{
  v2 = sub_21DF233CC(&qword_27CEA6998, type metadata accessor for Key, &unk_21E145060);
  v3 = sub_21DF233CC(&qword_27CEA69A0, type metadata accessor for Key, &unk_21E144F64);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_21DF233CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21DF23414(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WaypointLayout(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
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

unint64_t sub_21DF234D0()
{
  result = qword_280F68FD0;
  if (!qword_280F68FD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA6840, &qword_21E144B28);
    sub_21DF233CC(qword_280F693D8, type metadata accessor for Waypoint, &unk_21E15A9E0);
    sub_21DF23E5C(&qword_280F68E40, &unk_27CEA6848, &unk_21E144B30, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F68FD0);
  }

  return result;
}

uint64_t sub_21DF235B8(uint64_t a1)
{
  v2 = type metadata accessor for WaypointLayout(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21DF23614(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_21DF23674()
{
  result = qword_27CEA6878;
  if (!qword_27CEA6878)
  {
    sub_21E13F954();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA6878);
  }

  return result;
}

uint64_t sub_21DF236C0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_21DF23758(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_21DF237A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_21DF237F0()
{
  result = qword_280F68FE8;
  if (!qword_280F68FE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA6830, &qword_21E144B18);
    sub_21DF23E5C(&qword_280F69010, &unk_27CEA6820, &unk_21E144A40, MEMORY[0x277CDF510]);
    sub_21DF238A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F68FE8);
  }

  return result;
}

unint64_t sub_21DF238A8()
{
  result = qword_280F68CF8;
  if (!qword_280F68CF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA68C0, &qword_21E144CC0);
    sub_21DF234D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F68CF8);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_21DF239D4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21DF239F4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t sub_21DF23A88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_21DF23AF0()
{
  result = qword_27CEA6950;
  if (!qword_27CEA6950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA6950);
  }

  return result;
}

unint64_t sub_21DF23B80()
{
  result = qword_280F68C20;
  if (!qword_280F68C20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280F68C20);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ScaleFromAnchor(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for ScaleFromAnchor(uint64_t result, int a2, int a3)
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

void sub_21DF23C64(uint64_t a1, unint64_t *a2, uint64_t a3)
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

unint64_t sub_21DF23DA4()
{
  result = qword_27CEA69A8;
  if (!qword_27CEA69A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA6990, &unk_21E1450B0);
    sub_21DF23E5C(&unk_27CEA69B0, &qword_27CEA6988, &qword_21E1450A8, MEMORY[0x277CE04B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA69A8);
  }

  return result;
}

uint64_t sub_21DF23E5C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t get_enum_tag_for_layout_string_20VisualIntelligenceUI25CardContainerLoadingStyleO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_21DF23EE8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 2;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_21DF23F44(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = a2 - 2147483646;
    *(result + 8) = 0;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_21DF23FBC(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (!v3)
  {
    return !v4;
  }

  if (v3 == 1)
  {
    return v4 == 1;
  }

  if (v4 < 2)
  {
    return 0;
  }

  if (*a1 != *a2 || v3 != v4)
  {
    return sub_21E142B14();
  }

  return 1;
}

uint64_t sub_21DF2401C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v55 = a1;
  v76 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6A88, &qword_21E145198);
  MEMORY[0x28223BE20](v4);
  v6 = &v54 - v5;
  v61 = sub_21E1403A4();
  v59 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v56 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v54 - v9;
  v66 = sub_21E1403C4();
  v64 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v60 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_21E13FFD4();
  v58 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6A90, &qword_21E1451A0);
  v62 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v57 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v54 - v16;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6A98, &qword_21E1451A8);
  MEMORY[0x28223BE20](v72);
  v68 = &v54 - v18;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6AA0, &qword_21E1451B0);
  MEMORY[0x28223BE20](v74);
  v75 = &v54 - v19;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6AA8, &qword_21E1451B8);
  MEMORY[0x28223BE20](v69);
  v70 = &v54 - v20;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6AB0, &qword_21E1451C0);
  MEMORY[0x28223BE20](v73);
  v71 = &v54 - v21;
  v67 = sub_21E13FC84();
  v22 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v24 = &v54 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6AB8, &qword_21E1451C8);
  MEMORY[0x28223BE20](v25);
  v28 = &v54 - v27;
  if (!a2)
  {
    v54 = v26;
    v55 = v4;
    v45 = sub_21E1401C4();
    v80 = 1;
    sub_21DF24D44(v83);
    v81[6] = v83[6];
    v81[7] = v83[7];
    v81[8] = v83[8];
    v81[2] = v83[2];
    v81[3] = v83[3];
    v81[4] = v83[4];
    v81[5] = v83[5];
    v81[0] = v83[0];
    v81[1] = v83[1];
    v82[6] = v83[6];
    v82[7] = v83[7];
    v82[8] = v83[8];
    v82[2] = v83[2];
    v82[3] = v83[3];
    v82[4] = v83[4];
    v82[5] = v83[5];
    *&v81[9] = *&v83[9];
    *&v82[9] = *&v83[9];
    v82[0] = v83[0];
    v82[1] = v83[1];
    sub_21DF236C0(v81, v78, &qword_27CEA6B28, &qword_21E1451F8);
    sub_21DF23614(v82, &qword_27CEA6B28, &qword_21E1451F8);
    *(&v77[3] + 7) = v81[3];
    *(&v77[2] + 7) = v81[2];
    *(&v77[6] + 7) = v81[6];
    *(&v77[7] + 7) = v81[7];
    *(&v77[8] + 7) = v81[8];
    *(&v77[9] + 7) = *&v81[9];
    *(&v77[4] + 7) = v81[4];
    *(&v77[5] + 7) = v81[5];
    *(v77 + 7) = v81[0];
    *(&v77[1] + 7) = v81[1];
    *(&v78[7] + 1) = v77[6];
    *(&v78[8] + 1) = v77[7];
    *(&v78[9] + 1) = v77[8];
    v78[10] = *(&v77[8] + 15);
    *(&v78[3] + 1) = v77[2];
    *(&v78[4] + 1) = v77[3];
    *(&v78[5] + 1) = v77[4];
    *(&v78[6] + 1) = v77[5];
    *(&v78[1] + 1) = v77[0];
    v78[0] = v45;
    LOBYTE(v78[1]) = v80;
    *(&v78[2] + 1) = v77[1];
    sub_21E13FC64();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6AD0, &qword_21E1451D0);
    sub_21DF23E5C(&qword_27CEA6AD8, &qword_27CEA6AD0, &qword_21E1451D0, MEMORY[0x277CE1198]);
    sub_21E141344();
    (*(v22 + 8))(v24, v67);
    v83[8] = v78[8];
    v83[9] = v78[9];
    v83[10] = v78[10];
    v83[4] = v78[4];
    v83[5] = v78[5];
    v83[6] = v78[6];
    v83[7] = v78[7];
    v83[0] = v78[0];
    v83[1] = v78[1];
    v83[2] = v78[2];
    v83[3] = v78[3];
    sub_21DF23614(v83, &qword_27CEA6AD0, &qword_21E1451D0);
    v41 = &qword_27CEA6AB8;
    v42 = &qword_21E1451C8;
    sub_21DF236C0(v28, v70, &qword_27CEA6AB8, &qword_21E1451C8);
    swift_storeEnumTagMultiPayload();
    sub_21DF253C0();
    sub_21DF25510();
    v46 = v71;
    sub_21E1402F4();
    sub_21DF236C0(v46, v75, &qword_27CEA6AB0, &qword_21E1451C0);
    swift_storeEnumTagMultiPayload();
    sub_21DF25334();
    sub_21DF25638();
    sub_21E1402F4();
    sub_21DF23614(v46, &qword_27CEA6AB0, &qword_21E1451C0);
    v44 = v28;
    return sub_21DF23614(v44, v41, v42);
  }

  if (a2 == 1)
  {
    v54 = v26;
    v29 = sub_21E1401C4();
    v80 = 1;
    sub_21DF24E88(v83);
    memcpy(v81, v83, 0x188uLL);
    memcpy(v82, v83, 0x188uLL);
    v55 = v4;
    sub_21DF236C0(v81, v78, &qword_27CEA6B18, &qword_21E1451F0);
    sub_21DF23614(v82, &qword_27CEA6B18, &qword_21E1451F0);
    memcpy(&v79[7], v81, 0x188uLL);
    v78[0] = v29;
    LOBYTE(v78[1]) = v80;
    memcpy(&v78[1] + 1, v79, 0x18FuLL);
    sub_21E13FC64();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6AF0, &unk_21E1451D8);
    sub_21DF23E5C(&qword_27CEA6AF8, &qword_27CEA6AF0, &unk_21E1451D8, MEMORY[0x277CE1198]);
    sub_21E141344();
    (*(v22 + 8))(v24, v67);
    memcpy(v83, v78, 0x1A0uLL);
    sub_21DF23614(v83, &qword_27CEA6AF0, &unk_21E1451D8);
    sub_21E13FFC4();
    sub_21E140394();
    v30 = v59;
    v31 = v61;
    (*(v59 + 16))(v56, v10, v61);
    v32 = v60;
    sub_21E1403B4();
    (*(v30 + 8))(v10, v31);
    v33 = sub_21DF256F0(&qword_27CEA6B20, MEMORY[0x277CE0068], MEMORY[0x277CE0060]);
    v34 = sub_21DF256F0(&qword_280F68E58, MEMORY[0x277CE0418], MEMORY[0x277CE0410]);
    v35 = v63;
    v36 = v66;
    sub_21E13F414();
    (*(v64 + 8))(v32, v36);
    (*(v58 + 8))(v13, v35);
    v37 = v62;
    v38 = v65;
    (*(v62 + 16))(v57, v17, v65);
    *&v78[0] = v35;
    *(&v78[0] + 1) = v36;
    *&v78[1] = v33;
    *(&v78[1] + 1) = v34;
    swift_getOpaqueTypeConformance2();
    v39 = sub_21E13F704();
    (*(v37 + 8))(v17, v38);
    v40 = v68;
    *&v68[*(v72 + 36)] = v39;
    v41 = &qword_27CEA6A98;
    v42 = &qword_21E1451A8;
    sub_21DF236C0(v40, v70, &qword_27CEA6A98, &qword_21E1451A8);
    swift_storeEnumTagMultiPayload();
    sub_21DF253C0();
    sub_21DF25510();
    v43 = v71;
    sub_21E1402F4();
    sub_21DF236C0(v43, v75, &qword_27CEA6AB0, &qword_21E1451C0);
    swift_storeEnumTagMultiPayload();
    sub_21DF25334();
    sub_21DF25638();
    sub_21E1402F4();
    sub_21DF23614(v43, &qword_27CEA6AB0, &qword_21E1451C0);
    v44 = v40;
    return sub_21DF23614(v44, v41, v42);
  }

  *&v83[0] = v55;
  *(&v83[0] + 1) = a2;
  sub_21DF252E0();

  sub_21E13F584();
  v48 = sub_21E140914();
  sub_21E13F374();
  v49 = &v6[*(v4 + 36)];
  *v49 = v48;
  *(v49 + 1) = v50;
  *(v49 + 2) = v51;
  *(v49 + 3) = v52;
  *(v49 + 4) = v53;
  v49[40] = 0;
  sub_21DF236C0(v6, v75, &qword_27CEA6A88, &qword_21E145198);
  swift_storeEnumTagMultiPayload();
  sub_21DF25334();
  sub_21DF25638();
  sub_21E1402F4();
  return sub_21DF23614(v6, &qword_27CEA6A88, &qword_21E145198);
}

uint64_t sub_21DF24D44@<X0>(uint64_t a1@<X8>)
{
  sub_21E141704();
  v2 = v23;
  v3 = v24;
  sub_21E141CC4();
  sub_21E13F664();
  v4 = v12[11];
  v5 = v13;
  v6 = v14;
  v7 = v15;
  v19 = 1;
  v18 = v13;
  v17 = v15;
  *&v20 = 0xD0000000000000DDLL;
  *(&v20 + 1) = 0x800000021E15B1C0;
  *v21 = 0;
  memset(&v21[8], 0, 48);
  v21[56] = v23;
  v22 = v24;
  v8 = *v21;
  *a1 = v20;
  *(a1 + 16) = v8;
  v9 = *&v21[16];
  v10 = *&v21[48];
  *(a1 + 48) = *&v21[32];
  *(a1 + 64) = v10;
  *(a1 + 32) = v9;
  *(a1 + 80) = v3;
  *(a1 + 88) = 0;
  *(a1 + 96) = 1;
  *(a1 + 104) = v4;
  *(a1 + 112) = v5;
  *(a1 + 120) = v6;
  *(a1 + 128) = v7;
  *(a1 + 136) = v16;
  v23 = 0xD0000000000000DDLL;
  v24 = 0x800000021E15B1C0;
  v25 = 0;
  v27 = 0u;
  v28 = 0u;
  v26 = 0u;
  v29 = v2;
  v30 = v3;
  sub_21DF25738(&v20, v12);
  return sub_21DF25794(&v23);
}

uint64_t sub_21DF24E88@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21E140904();
  sub_21E13F374();
  v4 = v3;
  v29 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = sub_21E140924();
  sub_21E13F374();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = sub_21E140934();
  sub_21E13F374();
  v33 = v21;
  v34 = v22;
  v35 = v24;
  v36 = v23;
  v76 = 0;
  sub_21E141CC4();
  sub_21E13FCE4();
  *(&v77[6] + 7) = *&v77[21];
  *(&v77[8] + 7) = *&v77[23];
  *(&v77[10] + 7) = *&v77[25];
  *(&v77[12] + 7) = *&v77[27];
  *(v77 + 7) = *&v77[15];
  *(&v77[2] + 7) = *&v77[17];
  *(&v77[4] + 7) = *&v77[19];
  sub_21E141CC4();
  sub_21E13F664();
  KeyPath = swift_getKeyPath();
  v25 = swift_allocObject();
  *(v25 + 16) = 1;
  sub_21E141CC4();
  sub_21E13F664();
  v26 = v78;
  v30 = v79;
  v31 = v77[29];
  v27 = v80;
  v43 = 1;
  v42 = v78;
  v41 = v80;
  __src[0] = v2;
  *&__src[8] = v4;
  *&__src[16] = v6;
  *&__src[24] = v8;
  *&__src[32] = v10;
  __src[40] = 0;
  __src[48] = v11;
  *&__src[56] = v13;
  *&__src[64] = v15;
  *&__src[72] = v17;
  *&__src[80] = v19;
  __src[88] = 0;
  __src[96] = v20;
  *&__src[104] = v33;
  *&__src[112] = v36;
  *&__src[120] = v35;
  *&__src[128] = v34;
  __src[136] = 0;
  *&__src[201] = *&v77[8];
  *&__src[217] = *&v77[10];
  *&__src[233] = *&v77[12];
  *&__src[248] = *(&v77[13] + 7);
  *&__src[137] = *v77;
  *&__src[153] = *&v77[2];
  *&__src[169] = *&v77[4];
  *&__src[185] = *&v77[6];
  *&__src[288] = v40;
  *&__src[272] = v39;
  *&__src[256] = v38;
  *&__src[304] = KeyPath;
  *&__src[312] = sub_21DF259C8;
  *&__src[320] = v25;
  memcpy(a1, __src, 0x148uLL);
  *(a1 + 328) = 0;
  *(a1 + 336) = 1;
  *(a1 + 344) = v31;
  *(a1 + 352) = v26;
  *(a1 + 360) = v30;
  *(a1 + 368) = v27;
  *(a1 + 376) = v81;
  v45[0] = v2;
  v46 = v29;
  v47 = v6;
  v48 = v8;
  v49 = v10;
  v50 = 0;
  v51 = v11;
  v52 = v13;
  v53 = v15;
  v54 = v17;
  v55 = v19;
  v56 = 0;
  v57 = v20;
  v58 = v33;
  v59 = v36;
  v60 = v35;
  v61 = v34;
  v62 = 0;
  v67 = *&v77[8];
  v68 = *&v77[10];
  *v69 = *&v77[12];
  v63 = *v77;
  v64 = *&v77[2];
  v65 = *&v77[4];
  v66 = *&v77[6];
  v71 = v39;
  v72 = v40;
  v70 = v38;
  *&v69[15] = *(&v77[13] + 7);
  v73 = KeyPath;
  v74 = sub_21DF259C8;
  v75 = v25;
  sub_21DF236C0(__src, v37, &qword_27CEA6B30, &unk_21E145230);
  return sub_21DF23614(v45, &qword_27CEA6B30, &unk_21E145230);
}

uint64_t sub_21DF25284@<X0>(uint64_t *a2@<X8>)
{
  v5 = *v2;
  v4 = v2[1];
  *a2 = sub_21E141CC4();
  a2[1] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6A80, &qword_21E145190);
  return sub_21DF2401C(v5, v4, a2 + *(v7 + 44));
}

unint64_t sub_21DF252E0()
{
  result = qword_280F68CE0;
  if (!qword_280F68CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F68CE0);
  }

  return result;
}

unint64_t sub_21DF25334()
{
  result = qword_27CEA6AC0;
  if (!qword_27CEA6AC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA6AB0, &qword_21E1451C0);
    sub_21DF253C0();
    sub_21DF25510();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA6AC0);
  }

  return result;
}

unint64_t sub_21DF253C0()
{
  result = qword_27CEA6AC8;
  if (!qword_27CEA6AC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA6AB8, &qword_21E1451C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA6AD0, &qword_21E1451D0);
    sub_21DF23E5C(&qword_27CEA6AD8, &qword_27CEA6AD0, &qword_21E1451D0, MEMORY[0x277CE1198]);
    swift_getOpaqueTypeConformance2();
    sub_21DF254BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA6AC8);
  }

  return result;
}

unint64_t sub_21DF254BC()
{
  result = qword_27CEA6AE0;
  if (!qword_27CEA6AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA6AE0);
  }

  return result;
}

unint64_t sub_21DF25510()
{
  result = qword_27CEA6AE8;
  if (!qword_27CEA6AE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA6A98, &qword_21E1451A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA6AF0, &unk_21E1451D8);
    sub_21DF23E5C(&qword_27CEA6AF8, &qword_27CEA6AF0, &unk_21E1451D8, MEMORY[0x277CE1198]);
    swift_getOpaqueTypeConformance2();
    sub_21DF23E5C(&qword_280F68E40, &unk_27CEA6848, &unk_21E144B30, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA6AE8);
  }

  return result;
}

unint64_t sub_21DF25638()
{
  result = qword_27CEA6B00;
  if (!qword_27CEA6B00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA6A88, &qword_21E145198);
    sub_21DF23E5C(&qword_27CEA6B08, &qword_27CEA6B10, &qword_21E1451E8, MEMORY[0x277CDD7F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA6B00);
  }

  return result;
}

uint64_t sub_21DF256F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21DF257E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21E141CC4();
  v6 = v5;
  v7 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6B48, &qword_21E145340) + 36));
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6B50, &qword_21E145348) + 36);
  v9 = *MEMORY[0x277CE13B8];
  v10 = sub_21E141D94();
  (*(*(v10 - 8) + 104))(&v7[v8], v9, v10);
  *v7 = &unk_282F3B860;
  *(v7 + 1) = 0x403C000000000000;
  *&v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6B58, &qword_21E145350) + 36)] = 0x3FC999999999999ALL;
  v11 = sub_21E141484();
  v12 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6B60, &qword_21E145358) + 36)];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6B68, &qword_21E145360);
  v16 = *(*(v13 - 8) + 16);
  (v16)((v13 - 8), v12, a1, v13);
  *&v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6B70, &qword_21E145368) + 36)] = v11;
  v14 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6B78, &unk_21E145370) + 36)];
  *v14 = v4;
  v14[1] = v6;

  return v16(a2, a1, v13);
}

uint64_t sub_21DF259E0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_21DF25A34(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_21DF25A94(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

unint64_t sub_21DF25AE0()
{
  result = qword_27CEA6B80;
  if (!qword_27CEA6B80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA6B48, &qword_21E145340);
    sub_21DF23E5C(&qword_27CEA6B88, &qword_27CEA6B68, &qword_21E145360, MEMORY[0x277CE04B0]);
    sub_21DF23E5C(&qword_27CEA6B90, &qword_27CEA6B78, &unk_21E145370, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA6B80);
  }

  return result;
}

unint64_t OpenSensitiveURLOptions.toDictionary.getter()
{
  if (*v0 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEAD420, &unk_21E1453A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21E145380;
    *(inited + 32) = sub_21E142124();
    *(inited + 40) = v2;
    *(inited + 72) = MEMORY[0x277D839B0];
    *(inited + 48) = 1;
    v3 = sub_21DF2667C(inited);
    swift_setDeallocating();
    sub_21DF267AC(inited + 32);
    return v3;
  }

  else
  {
    v5 = MEMORY[0x277D84F90];

    return sub_21DF2667C(v5);
  }
}

uint64_t (*EnvironmentValues.openSensitiveURL.getter())()
{
  sub_21DF26814();
  sub_21E13FFA4();
  *(swift_allocObject() + 16) = v1;
  return sub_21DF26868;
}

uint64_t EnvironmentValues.openSensitiveURL.setter(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  sub_21DF26814();
  return sub_21E13FFB4();
}

void (*EnvironmentValues.openSensitiveURL.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
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
  *(v3 + 40) = sub_21DF26814();
  sub_21E13FFA4();
  v5 = swift_allocObject();
  *(v5 + 16) = *(v4 + 16);
  *v4 = sub_21DF27C9C;
  *(v4 + 8) = v5;
  return sub_21DF25EA0;
}

void sub_21DF25EA0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  if (a2)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    *(v5 + 24) = v3;
    v2[2] = sub_21DF27CA0;
    v2[3] = v5;

    sub_21E13FFB4();
  }

  else
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v3;
    v2[2] = sub_21DF27CA0;
    v2[3] = v6;
    sub_21E13FFB4();
  }

  free(v2);
}

uint64_t sub_21DF25F8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v5 = swift_allocObject();
  *(v5 + 16) = sub_21DF26AB4;
  *(v5 + 24) = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6BA8, &qword_21E1454F8);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6BB0, &qword_21E145500);
  v8 = (a2 + *(result + 36));
  *v8 = KeyPath;
  v8[1] = sub_21DF27CA0;
  v8[2] = v5;
  return result;
}

unint64_t sub_21DF26084(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6C48, &qword_21E145590);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6C50, &qword_21E145598);
    v7 = sub_21E142A14();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_21DF236C0(v9, v5, &qword_27CEA6C48, &qword_21E145590);
      v12 = *v5;
      v11 = v5[1];
      result = sub_21E0E0F20(*v5, v11);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v12;
      v16[1] = v11;
      v17 = v7[7];
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6C58, &unk_21E1455A0);
      result = sub_21DF27B48(v5 + v8, v17 + *(*(v18 - 8) + 72) * v15);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_21DF26264(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6C40, &qword_21E145588);
    v3 = sub_21E142A14();

    for (i = (a1 + 80); ; i += 56)
    {
      v5 = *(i - 6);
      v6 = *(i - 5);
      v7 = *(i - 4);
      v8 = *(i - 3);
      v9 = *(i - 2);
      v10 = *(i - 1);
      v11 = *i;

      sub_21DF27ADC(v7, v8, v9, v10, v11);
      result = sub_21E0E0F20(v5, v6);
      if (v13)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = (v3[6] + 16 * result);
      *v14 = v5;
      v14[1] = v6;
      v15 = v3[7] + 40 * result;
      *v15 = v7;
      *(v15 + 8) = v8;
      *(v15 + 16) = v9;
      *(v15 + 24) = v10;
      *(v15 + 32) = v11;
      v16 = v3[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v3[2] = v18;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_21DF263A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6C00, &qword_21E145548);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6C08, &unk_21E145550);
    v7 = sub_21E142A14();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_21DF236C0(v9, v5, &qword_27CEA6C00, &qword_21E145548);
      result = sub_21E0E1024(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_21E13D344();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_21DF26590(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6BF8, &qword_21E145540);
    v3 = sub_21E142A14();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = sub_21E0E0F98(v5);
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_21DF2667C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6C60, &unk_21E1576D0);
    v3 = sub_21E142A14();
    v4 = a1 + 32;

    while (1)
    {
      sub_21DF236C0(v4, &v13, &qword_27CEA6B98, &unk_21E14ED90);
      v5 = v13;
      v6 = v14;
      result = sub_21E0E0F20(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_21DF27A70(&v15, (v3[7] + 32 * result));
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_21DF267AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6B98, &unk_21E14ED90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21DF26814()
{
  result = qword_280F6A3F0[0];
  if (!qword_280F6A3F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280F6A3F0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OpenSensitiveURLOptions(unsigned __int8 *a1, unsigned int a2)
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
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for OpenSensitiveURLOptions(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_21DF26A24()
{
  result = qword_27CEA6BA0;
  if (!qword_27CEA6BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA6BA0);
  }

  return result;
}

unint64_t sub_21DF26AE0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6BF0, &qword_21E145538);
    v3 = sub_21E142A14();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_21E0E0F20(v5, v6);
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_21DF26BE4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6C38, &qword_21E145580);
    v3 = sub_21E142A14();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_21E0E0F20(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_21DF26CE0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6C28, &qword_21E145570);
    v3 = sub_21E142A14();
    v4 = a1 + 32;

    while (1)
    {
      sub_21DF236C0(v4, &v13, &qword_27CEA6C30, &qword_21E145578);
      v5 = v13;
      v6 = v14;
      result = sub_21E0E0F20(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_21DF27A80(&v15, v3[7] + 104 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 120;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_21DF26E14(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6BC0, &qword_21E145508);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6BC8, &qword_21E145510);
    v7 = sub_21E142A14();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_21DF236C0(v9, v5, &qword_27CEA6BC0, &qword_21E145508);
      result = sub_21E0E1024(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_21E13D344();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_21DF26FFC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6C20, &qword_21E145568);
    v3 = sub_21E142A14();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_21E0E0F20(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_21DF27100(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6C10, &unk_21E1576E0);
    v3 = sub_21E142A14();
    v4 = a1 + 32;

    while (1)
    {
      sub_21DF236C0(v4, v13, &qword_27CEA6C18, &qword_21E145560);
      result = sub_21E0E118C(v13);
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
      result = sub_21DF27A70(&v15, (v3[7] + 32 * result));
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_21DF2723C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6BE0, &qword_21E145528);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6BE8, &qword_21E145530);
    v7 = sub_21E142A14();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_21DF236C0(v9, v5, &qword_27CEA6BE0, &qword_21E145528);
      result = sub_21E0E11D0(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_21E13D534();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_21DF27424(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6BD0, &qword_21E145518);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v18 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6BD8, &qword_21E145520);
    v7 = sub_21E142A14();
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);

    while (1)
    {
      sub_21DF236C0(v8, v5, &qword_27CEA6BD0, &qword_21E145518);
      result = sub_21E0E8918();
      if (v11)
      {
        break;
      }

      v12 = result;
      *(v7 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v13 = *(v7 + 56);
      v14 = sub_21E13CEE4();
      result = (*(*(v14 - 8) + 32))(v13 + *(*(v14 - 8) + 72) * v12, v5, v14);
      v15 = *(v7 + 16);
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      *(v7 + 16) = v17;
      v8 += v9;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void sub_21DF275F0(uint64_t a1, unsigned __int8 *a2)
{
  v4 = sub_21E13D264();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21E13F1B4();
  v32 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v11) = *a2;
  sub_21E13EBE4();
  (*(v5 + 16))(v7, a1, v4);
  v12 = sub_21E13F1A4();
  v13 = sub_21E142544();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v30 = v11;
    v11 = v14;
    v15 = swift_slowAlloc();
    v29 = v8;
    v16 = v15;
    v33 = v15;
    *v11 = 136315138;
    sub_21DF279CC();
    v17 = sub_21E142AB4();
    v31 = a1;
    v19 = v18;
    (*(v5 + 8))(v7, v4);
    v20 = sub_21E0E08C0(v17, v19, &v33);

    *(v11 + 4) = v20;
    _os_log_impl(&dword_21DF05000, v12, v13, "Attempting to open a sensitive URL: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x223D540B0](v16, -1, -1);
    v21 = v11;
    LOBYTE(v11) = v30;
    MEMORY[0x223D540B0](v21, -1, -1);

    (*(v32 + 8))(v10, v29);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
    (*(v32 + 8))(v10, v8);
  }

  v22 = [objc_opt_self() defaultWorkspace];
  if (v22)
  {
    v23 = v22;
    v24 = sub_21E13D1D4();
    if (v11)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEAD420, &unk_21E1453A0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_21E145380;
      *(inited + 32) = sub_21E142124();
      *(inited + 40) = v26;
      *(inited + 72) = MEMORY[0x277D839B0];
      *(inited + 48) = 1;
      sub_21DF2667C(inited);
      swift_setDeallocating();
      sub_21DF267AC(inited + 32);
    }

    else
    {
      sub_21DF2667C(MEMORY[0x277D84F90]);
    }

    v27 = sub_21E141FF4();

    [v23 openSensitiveURL:v24 withOptions:v27];
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_21DF279CC()
{
  result = qword_27CEA6BB8;
  if (!qword_27CEA6BB8)
  {
    sub_21E13D264();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA6BB8);
  }

  return result;
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

_OWORD *sub_21DF27A70(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_21DF27ADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (!a5 || a5 == 2)
  {
  }

  else
  {
    if (a5 != 1)
    {
      return;
    }
  }
}

uint64_t sub_21DF27B48(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6C58, &unk_21E1455A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_21DF27BB8()
{
  result = qword_27CEA6C68;
  if (!qword_27CEA6C68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA6BB0, &qword_21E145500);
    sub_21DF23E5C(&qword_27CEA6C70, &qword_27CEA6BA8, &qword_21E1454F8, MEMORY[0x277CE04B0]);
    sub_21DF23E5C(&qword_27CEA6C78, &qword_27CEA6C80, &qword_21E1455B0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA6C68);
  }

  return result;
}

uint64_t static Font.cardBody.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEAD410, &qword_21E146960);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v7 - v1;
  v3 = [objc_opt_self() defaultMetrics];
  [v3 scaledValueForValue_];

  v4 = sub_21E1409D4();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v5 = sub_21E140A24();
  sub_21DF27DB8(v2);
  return v5;
}

uint64_t sub_21DF27DB8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEAD410, &qword_21E146960);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t CardModel.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel_id;
  v4 = sub_21E13D344();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_21DF27EE8()
{
  v1 = v0;
  swift_getKeyPath();
  sub_21DF34590(&qword_280F69240, type metadata accessor for CardModel, &protocol conformance descriptor for CardModel);
  sub_21E13D3C4();

  v2 = OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__carouselActions;
  result = swift_beginAccess();
  v4 = *(v1 + v2);
  if (v4 >> 62)
  {
    goto LABEL_24;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5)
  {
    do
    {
      v6 = (v1 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__selectedActionID);

      for (i = 0; ; ++i)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x223D530F0](i, v4);
        }

        else
        {
          if (i >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_23;
          }

          v8 = *(v4 + 8 * i + 32);
        }

        v10 = *(v8 + 16);
        v9 = *(v8 + 24);
        swift_getKeyPath();

        sub_21E13D3C4();

        v11 = v6[1];
        if (!v11)
        {
          break;
        }

        if (v10 == *v6 && v11 == v9)
        {

LABEL_20:
          swift_getKeyPath();
          sub_21E13D3C4();

          swift_getKeyPath();
          sub_21E13D3E4();

          swift_beginAccess();
          sub_21E001C40(i);
          swift_endAccess();

          sub_21DF27EE8();
          swift_getKeyPath();
          sub_21E13D3D4();
        }

        v12 = sub_21E142B14();

        if (v12)
        {

          goto LABEL_20;
        }

        v13 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_22;
        }

LABEL_16:
        if (v13 == v5)
        {
        }
      }

      v13 = i + 1;
      if (!__OFADD__(i, 1))
      {
        goto LABEL_16;
      }

LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      result = sub_21E1427B4();
      v5 = result;
    }

    while (result);
  }

  return result;
}

uint64_t sub_21DF28220()
{
  swift_getKeyPath();
  sub_21DF34590(&qword_280F69240, type metadata accessor for CardModel, &protocol conformance descriptor for CardModel);
  sub_21E13D3C4();

  v1 = *(v0 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__selectedActionID);

  return v1;
}

uint64_t sub_21DF282DC(unint64_t a1)
{
  v3 = OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__carouselActions;
  swift_beginAccess();

  v5 = sub_21E0E022C(v4, a1);

  if (v5)
  {
    *(v1 + v3) = a1;

    return sub_21DF27EE8();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21DF34590(&qword_280F69240, type metadata accessor for CardModel, &protocol conformance descriptor for CardModel);
    sub_21E13D3B4();
  }
}

uint64_t sub_21DF28430(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__carouselActions;
  swift_beginAccess();
  *(a1 + v4) = a2;

  return sub_21DF27EE8();
}

uint64_t sub_21DF284A8()
{
  swift_getKeyPath();
  sub_21DF34590(&qword_280F69240, type metadata accessor for CardModel, &protocol conformance descriptor for CardModel);
  sub_21E13D3C4();

  v1 = *(v0 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__executeAction);
  sub_21DF09028(v1, *(v0 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__executeAction + 8));
  return v1;
}

uint64_t sub_21DF28568@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21DF34590(&qword_280F69240, type metadata accessor for CardModel, &protocol conformance descriptor for CardModel);
  sub_21E13D3C4();

  v4 = *(v3 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__executeAction);
  v5 = *(v3 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__executeAction + 8);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_21DF35CB8;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_21DF09028(v4, v5);
}

uint64_t sub_21DF28660(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = sub_21DF35C80;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_21DF09028(v2, v3);
  sub_21DF34590(&qword_280F69240, type metadata accessor for CardModel, &protocol conformance descriptor for CardModel);
  sub_21E13D3B4();
  sub_21DF1F1DC(v5, v4);
}

uint64_t sub_21DF287BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a1 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__executeAction);
  v4 = *(a1 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__executeAction);
  v5 = *(a1 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__executeAction + 8);
  *v3 = a2;
  v3[1] = a3;
  sub_21DF09028(a2, a3);
  return sub_21DF1F1DC(v4, v5);
}

uint64_t sub_21DF28814@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21DF34590(&qword_280F69240, type metadata accessor for CardModel, &protocol conformance descriptor for CardModel);
  sub_21E13D3C4();

  v4 = *(v3 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__selectedActionID + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__selectedActionID);
  a2[1] = v4;
}