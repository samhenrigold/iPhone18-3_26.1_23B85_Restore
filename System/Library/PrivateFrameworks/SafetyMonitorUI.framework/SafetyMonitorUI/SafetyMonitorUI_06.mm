uint64_t sub_2646B857C(uint64_t result, int a2, int a3)
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

uint64_t sub_2646B85E4(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  return sub_264785334();
}

uint64_t sub_2646B868C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_264785274();
  *a1 = result;
  return result;
}

uint64_t sub_2646B86CC()
{
  v1 = sub_264784934();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77480, &qword_26478D1B0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8[-v4];
  sub_2647848E4();
  v9 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77488, &qword_26478D1B8);
  sub_26460CDF0(&qword_27FF77490, &qword_27FF77488, &qword_26478D1B8, MEMORY[0x277CDF028]);
  sub_264783FE4();
  v6 = sub_26460CDF0(&qword_27FF77498, &qword_27FF77480, &qword_26478D1B0, MEMORY[0x277CDD7A8]);
  MEMORY[0x26673E690](v5, v2, v6);
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_2646B88C8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2646B8900()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF77480, &qword_26478D1B0);
  sub_26460CDF0(&qword_27FF77498, &qword_27FF77480, &qword_26478D1B0, MEMORY[0x277CDD7A8]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t SafetyCacheDetailedAddressFormatter.init(displayLocality:administrativeArea:formattedTime:shortAddress:coordinate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[8] = a5;
  a9[9] = a6;
  v14 = swift_allocObject();
  *(v14 + 16) = a7;
  *(v14 + 24) = a8;
  a9[4] = sub_2646B8A70;
  a9[5] = v14;
  result = swift_allocObject();
  *(result + 16) = a10;
  *(result + 24) = a11;
  a9[6] = sub_2646B8A98;
  a9[7] = result;
  return result;
}

uint64_t sub_2646B8A38()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_2646B8AC0(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756B8, &qword_26478AC90);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v41 - v7;
  v9 = [a1 location];
  if (v9)
  {
    v10 = v9;
    v11 = [objc_allocWithZone(MEMORY[0x277CD4F00]) initWithPlacemark_];
    v12 = [objc_allocWithZone(MEMORY[0x277CD4E80]) initWithPlacemark_];

    v13 = [v12 _geoMapItem];
    if (v13)
    {
      v14 = [v13 addressObject];
      swift_unknownObjectRelease();
      v15 = swift_allocObject();
      *(v15 + 16) = v14;
      if (v14 && (v16 = [v14 cityDisplayNameWithFallback_]) != 0)
      {
        v17 = v16;
        v18 = sub_264785724();
        v47 = v19;
        v48 = v18;
      }

      else
      {
        v47 = 0;
        v48 = 0;
      }

      v20 = [a1 administrativeArea];
      if (v20)
      {
        v21 = v20;
        v22 = sub_264785724();
        v45 = v23;
        v46 = v22;
      }

      else
      {
        v45 = 0;
        v46 = 0;
      }

      sub_2646B9908(a2, v8);
      v24 = sub_264783AF4();
      v25 = *(v24 - 8);
      if ((*(v25 + 48))(v8, 1, v24) == 1)
      {

        sub_2646B9898(a2);
        sub_2646B9898(v8);
        v26 = 0;
        v27 = 0;
      }

      else
      {
        v28 = sub_264783A64();
        v43 = v12;
        v29 = v28;
        v30 = [v28 preciseFormattedTime];
        v44 = v15;
        v42 = a2;
        v31 = v10;
        v32 = v30;

        v26 = sub_264785724();
        v34 = v33;

        v27 = v34;
        v10 = v31;
        v15 = v44;
        sub_2646B9898(v42);
        (*(v25 + 8))(v8, v24);
      }

      v35 = swift_allocObject();
      *(v35 + 16) = sub_2646B9900;
      *(v35 + 24) = v15;
      v36 = swift_allocObject();
      *(v36 + 16) = v10;
      v37 = swift_allocObject();
      *(v37 + 16) = sub_2646B9DD0;
      *(v37 + 24) = v35;
      v38 = swift_allocObject();
      *(v38 + 16) = sub_2646B99B0;
      *(v38 + 24) = v36;
      v39 = v47;
      *a3 = v48;
      a3[1] = v39;
      v40 = v45;
      a3[2] = v46;
      a3[3] = v40;
      a3[4] = sub_2646B9DD0;
      a3[5] = v37;
      a3[6] = sub_2646B9DD4;
      a3[7] = v38;
      a3[8] = v26;
      a3[9] = v27;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_2646B9898(a2);

    *(a3 + 3) = 0u;
    *(a3 + 4) = 0u;
    *(a3 + 1) = 0u;
    *(a3 + 2) = 0u;
    *a3 = 0u;
  }
}

id sub_2646B8E98(id result)
{
  if (result)
  {
    result = [result shortAddress];
    if (result)
    {
      v1 = result;
      v2 = sub_264785724();
      v4 = v3;

      v5 = HIBYTE(v4) & 0xF;
      if ((v4 & 0x2000000000000000) == 0)
      {
        v5 = v2 & 0xFFFFFFFFFFFFLL;
      }

      if (v5)
      {
        return v2;
      }

      else
      {

        return 0;
      }
    }
  }

  return result;
}

Swift::String __swiftcall SafetyCacheDetailedAddressFormatter.formattedString()()
{
  v1 = sub_264783B94();
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_264785704();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_2647856E4();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = *v0;
  v8 = v0[2];
  v7 = v0[3];
  v9 = v0[8];
  v10 = v0[9];
  if (v0[1])
  {
    if (v7)
    {

      sub_2647856D4();
      sub_2647856C4();
      sub_2647856B4();

      sub_2647856C4();
      sub_2647856B4();
      sub_2647856C4();
      if (v10)
      {
        sub_2647856B4();
        sub_2647856C4();
      }

      sub_2647856F4();
      sub_26460EC78();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v12 = [objc_opt_self() bundleForClass_];
      sub_264783B84();
    }

    else
    {
      if (!v10)
      {

        goto LABEL_14;
      }

      sub_2647856D4();
      sub_2647856C4();
      sub_2647856B4();

      sub_2647856C4();
      sub_2647856B4();
      sub_2647856C4();
      sub_2647856F4();
      sub_26460EC78();
      v21 = swift_getObjCClassFromMetadata();
      v22 = [objc_opt_self() bundleForClass_];
      sub_264783B84();
    }

    goto LABEL_12;
  }

  v25 = v3;
  v13 = v9;
  v14 = v0;
  v16 = v0[4];
  v15 = v0[5];
  v17 = v16(0);
  if (!v10)
  {
    if (v18)
    {
      goto LABEL_13;
    }

    v26 = v6;
    v27 = 0;
    v28 = v8;
    v29 = v7;
    v30 = v16;
    v31 = v15;
    v32 = *(v14 + 3);
    v33 = v13;
    v34 = 0;
LABEL_18:
    v17 = sub_2646B947C();
    goto LABEL_13;
  }

  if (!v18)
  {
    v26 = v6;
    v27 = 0;
    v28 = v8;
    v29 = v7;
    v30 = v16;
    v31 = v15;
    v32 = *(v14 + 3);
    v33 = v13;
    v34 = v10;
    goto LABEL_18;
  }

  sub_2647856D4();
  sub_2647856C4();
  sub_2647856B4();

  sub_2647856C4();
  sub_2647856B4();
  sub_2647856C4();
  sub_2647856F4();
  sub_26460EC78();
  v19 = swift_getObjCClassFromMetadata();
  v20 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
LABEL_12:
  v17 = sub_264785744();
LABEL_13:
  v6 = v17;
LABEL_14:
  v23 = v6;
  result._object = v18;
  result._countAndFlagsBits = v23;
  return result;
}

uint64_t sub_2646B947C()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = (*(v0 + 48))();
  v5 = v4;
  v29 = sub_2646B99C0();
  v7 = v6;
  v9 = sub_2646B9B94();
  v10 = v8;
  if (v2)
  {
    v28 = v8;
    sub_26460EC78();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v12 = objc_opt_self();

    v13 = [v12 bundleForClass_];
    sub_264783904();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75F78, &unk_264789910);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_2647889A0;
    v15 = MEMORY[0x277D839F8];
    v16 = MEMORY[0x277D83A80];
    *(v14 + 56) = MEMORY[0x277D839F8];
    *(v14 + 64) = v16;
    *(v14 + 32) = fabs(v3);
    v17 = MEMORY[0x277D837D0];
    *(v14 + 96) = MEMORY[0x277D837D0];
    v18 = sub_2646B9D68();
    *(v14 + 104) = v18;
    *(v14 + 72) = v29;
    *(v14 + 80) = v7;
    *(v14 + 136) = v15;
    *(v14 + 144) = v16;
    *(v14 + 112) = fabs(v5);
    *(v14 + 176) = v17;
    *(v14 + 184) = v18;
    *(v14 + 152) = v9;
    *(v14 + 160) = v28;
    *(v14 + 216) = v17;
    *(v14 + 224) = v18;
    *(v14 + 192) = v1;
    *(v14 + 200) = v2;
  }

  else
  {
    sub_26460EC78();
    v19 = swift_getObjCClassFromMetadata();
    v20 = [objc_opt_self() bundleForClass_];
    sub_264783904();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75F78, &unk_264789910);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_26478D1C0;
    v22 = MEMORY[0x277D839F8];
    v23 = MEMORY[0x277D83A80];
    *(v21 + 56) = MEMORY[0x277D839F8];
    *(v21 + 64) = v23;
    *(v21 + 32) = fabs(v3);
    v24 = MEMORY[0x277D837D0];
    *(v21 + 96) = MEMORY[0x277D837D0];
    v25 = sub_2646B9D68();
    *(v21 + 104) = v25;
    *(v21 + 72) = v29;
    *(v21 + 80) = v7;
    *(v21 + 136) = v22;
    *(v21 + 144) = v23;
    *(v21 + 112) = fabs(v5);
    *(v21 + 176) = v24;
    *(v21 + 184) = v25;
    *(v21 + 152) = v9;
    *(v21 + 160) = v10;
  }

  v26 = sub_264785734();

  return v26;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_2646B97EC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2646B9834(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2646B9898(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756B8, &qword_26478AC90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2646B9908(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756B8, &qword_26478AC90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2646B9978()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2646B99C0()
{
  v0 = sub_264783B94();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_264785704();
  MEMORY[0x28223BE20](v1 - 8);
  sub_264785694();
  sub_26460EC78();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  return sub_264785744();
}

uint64_t sub_2646B9B94()
{
  v0 = sub_264783B94();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_264785704();
  MEMORY[0x28223BE20](v1 - 8);
  sub_264785694();
  sub_26460EC78();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  return sub_264785744();
}

unint64_t sub_2646B9D68()
{
  result = qword_27FF774A0;
  if (!qword_27FF774A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF774A0);
  }

  return result;
}

uint64_t LocationSearchRowCompletionItem.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v2 = *(v1 + 8);
  if (*v1)
  {
    sub_264785F64();
    v4 = v3;
    sub_264785AF4();

    if (v2)
    {
LABEL_3:
      sub_264785F64();
      v5 = v2;
      sub_264785AF4();

      goto LABEL_6;
    }
  }

  else
  {
    sub_264785F64();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  sub_264785F64();
LABEL_6:

  return sub_264785794();
}

uint64_t LocationSearchRowCompletionItem.hashValue.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  sub_264785F44();
  if (!v2)
  {
    sub_264785F64();
    if (v1)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_264785F64();
    goto LABEL_6;
  }

  sub_264785F64();
  v3 = v2;
  sub_264785AF4();

  if (!v1)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_264785F64();
  v4 = v1;
  sub_264785AF4();

LABEL_6:
  sub_264785794();
  return sub_264785F94();
}

uint64_t sub_2646B9F5C()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 3);
  v5 = *v0;
  v6 = v1;
  v7 = v2;
  sub_264785F44();
  LocationSearchRowCompletionItem.hash(into:)(v4);
  return sub_264785F94();
}

uint64_t sub_2646B9FB4(uint64_t a1)
{
  v2 = *(v1 + 2);
  v3 = *(v1 + 3);
  v6 = *v1;
  v7 = v2;
  v8 = v3;
  sub_264785F44();
  LocationSearchRowCompletionItem.hash(into:)(v5);
  return sub_264785F94();
}

uint64_t _s15SafetyMonitorUI31LocationSearchRowCompletionItemV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24))
  {
    v7 = sub_264785E84();
    result = 0;
    if ((v7 & 1) == 0)
    {
      return result;
    }
  }

  v9 = v3;
  if (v3)
  {
    if (v5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v9 = [v2 mapItem];
    if (v5)
    {
LABEL_8:
      v10 = v3;
      v11 = v5;
      if (v9)
      {
LABEL_9:
        if (v11)
        {
          sub_2646BA220();
          v12 = v5;
          v13 = v9;
          v14 = sub_264785AE4();

          return v14 & 1;
        }

        v17 = v5;

        return 0;
      }

      goto LABEL_13;
    }
  }

  v15 = v3;
  v11 = [v4 mapItem];
  if (v9)
  {
    goto LABEL_9;
  }

LABEL_13:
  if (v11)
  {
    v16 = v5;

    return 0;
  }

  v18 = v5;
  return 1;
}

unint64_t sub_2646BA134()
{
  result = qword_27FF774A8;
  if (!qword_27FF774A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF774A8);
  }

  return result;
}

uint64_t sub_2646BA188(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_2646BA1D0(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

unint64_t sub_2646BA220()
{
  result = qword_27FF76FC8;
  if (!qword_27FF76FC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FF76FC8);
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

uint64_t getEnumTagSinglePayload for ETAOptionRow(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && a1[17])
  {
    return (*a1 + 253);
  }

  v3 = *a1;
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ETAOptionRow(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

double sub_2646BA334@<D0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v4 = *(v1 + 16);
  v5 = *v1;
  v6 = swift_allocObject();
  *&v49[0] = 0;
  sub_2647852E4();
  v7 = sub_2647845C4();
  v34 = 1;
  sub_2646BA55C(v5, v3, v4, v6, &v19);
  v45 = v29;
  v46 = v30;
  v47 = v31;
  v48 = v32;
  v41 = v25;
  v42 = v26;
  v43 = v27;
  v44 = v28;
  v37 = v21;
  v38 = v22;
  v39 = v23;
  v40 = v24;
  v35 = v19;
  v36 = v20;
  v49[10] = v29;
  v49[11] = v30;
  v49[12] = v31;
  v49[13] = v32;
  v49[6] = v25;
  v49[7] = v26;
  v49[8] = v27;
  v49[9] = v28;
  v49[2] = v21;
  v49[3] = v22;
  v49[4] = v23;
  v49[5] = v24;
  v49[0] = v19;
  v49[1] = v20;
  sub_26460CCE8(&v35, &v18, &qword_27FF774B8, &qword_26478D378);
  sub_26460CD50(v49, &qword_27FF774B8, &qword_26478D378);
  *&v33[167] = v45;
  *&v33[183] = v46;
  *&v33[199] = v47;
  *&v33[215] = v48;
  *&v33[103] = v41;
  *&v33[119] = v42;
  *&v33[135] = v43;
  *&v33[151] = v44;
  *&v33[39] = v37;
  *&v33[55] = v38;
  *&v33[71] = v39;
  *&v33[87] = v40;
  *&v33[7] = v35;
  *&v33[23] = v36;
  v8 = *&v33[160];
  *(a1 + 193) = *&v33[176];
  v9 = *&v33[208];
  *(a1 + 209) = *&v33[192];
  *(a1 + 225) = v9;
  v10 = *&v33[96];
  *(a1 + 129) = *&v33[112];
  v11 = *&v33[144];
  *(a1 + 145) = *&v33[128];
  *(a1 + 161) = v11;
  *(a1 + 177) = v8;
  v12 = *&v33[32];
  *(a1 + 65) = *&v33[48];
  v13 = *&v33[80];
  *(a1 + 81) = *&v33[64];
  *(a1 + 97) = v13;
  *(a1 + 113) = v10;
  result = *v33;
  v15 = *&v33[16];
  *(a1 + 17) = *v33;
  *(a1 + 33) = v15;
  v16 = v34;
  *a1 = v7;
  *(a1 + 8) = 0;
  *(a1 + 16) = v16;
  v17 = *&v33[223];
  *(a1 + 49) = v12;
  *(a1 + 240) = v17;
  *(a1 + 248) = sub_2646BAE4C;
  *(a1 + 256) = v6;
  return result;
}

uint64_t sub_2646BA55C@<X0>(uint64_t a1@<X0>, double a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v6 = a1;
  v18 = sub_264785274();
  v17 = sub_264785504();
  v9 = v8;
  v10 = *(a4 + 24);
  v44 = *(a4 + 16);
  v45 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF774C0, &qword_26478D380);
  sub_2647852F4();
  sub_264785504();
  sub_2647840A4();
  LOBYTE(a4) = sub_264784C24();
  v56 = 1;
  v11 = sub_264784724();
  LOBYTE(v44) = 1;
  sub_2646BA9D8(v6, a2, a3 & 1, v28);
  *&v27[7] = v28[0];
  *&v27[23] = v28[1];
  *&v27[39] = v28[2];
  *&v27[55] = v29;
  v12 = v44;
  *&v30 = v18;
  *(&v30 + 1) = sub_2646BA8D8;
  *&v31 = 0;
  *(&v31 + 1) = v17;
  *v32 = v9;
  *&v32[24] = v25;
  *&v32[40] = v26;
  *&v32[8] = v24;
  v32[56] = a4;
  v34 = 0u;
  v33 = 0u;
  v19 = *v32;
  v20 = *&v32[16];
  v23[0] = 1;
  v21 = *&v32[32];
  v22 = *&v32[48];
  v36 = v11;
  v37[0] = v44;
  *&v37[1] = *v27;
  *&v37[17] = *&v27[16];
  *&v37[33] = *&v27[32];
  *&v37[49] = *&v27[48];
  *&v37[64] = *(&v29 + 1);
  *&v23[8] = v11;
  *&v23[24] = *v37;
  *&v23[72] = *&v37[48];
  *&v23[88] = *(&v29 + 1);
  *&v23[56] = *&v37[32];
  *&v23[40] = *&v37[16];
  v13 = v31;
  *a5 = v30;
  a5[1] = v13;
  a5[4] = v21;
  a5[5] = v22;
  a5[2] = v19;
  a5[3] = v20;
  a5[8] = *v23;
  a5[9] = *&v23[16];
  a5[6] = 0u;
  a5[7] = 0u;
  a5[12] = *&v23[64];
  a5[13] = *&v23[80];
  a5[10] = *&v23[32];
  a5[11] = *&v23[48];
  v35 = 1;
  v38[0] = v11;
  v38[1] = 0;
  v39 = v12;
  v41 = *&v27[16];
  v42 = *&v27[32];
  *v43 = *&v27[48];
  *&v43[15] = *&v27[63];
  v40 = *v27;
  sub_26460CCE8(&v30, &v44, &qword_27FF774C8, &qword_26478D388);
  sub_26460CCE8(&v36, &v44, &qword_27FF774D0, &unk_26478D390);
  sub_26460CD50(v38, &qword_27FF774D0, &unk_26478D390);
  v49 = v24;
  v44 = v18;
  v45 = sub_2646BA8D8;
  v46 = 0;
  v47 = v17;
  v48 = v9;
  v50 = v25;
  v51 = v26;
  v52 = a4;
  v53 = 0u;
  v54 = 0u;
  v55 = 1;
  return sub_26460CD50(&v44, &qword_27FF774C8, &qword_26478D388);
}

uint64_t sub_2646BA8D8@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_264784894();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2647851A4();
  sub_2647849F4();
  sub_2647840F4();
  v8 = v7;
  result = (*(v3 + 8))(v5, v2);
  *a1 = v6;
  a1[1] = v8;
  return result;
}

uint64_t sub_2646BA9D8@<X0>(char a1@<W0>, double a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = sub_264785E64();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = a1;
  v49 = ETAType.labelName.getter();
  v50 = v12;
  sub_264613FC4();
  v13 = sub_264784E44();
  v45 = v14;
  v46 = v13;
  HIDWORD(v44) = v15;
  v47 = v16;
  if ((a3 & 1) != 0 || (v17 = [objc_opt_self() hourMinuteShortTimeIntervalFormatter], (*(v9 + 104))(v11, *MEMORY[0x277D84680], v8), v18 = sub_26473BF14(v11, 300.0, a2), (*(v9 + 8))(v11, v8), v19 = objc_msgSend(v17, sel_stringFromTimeInterval_, v18), v17, !v19))
  {
    if (qword_27FF752E8 != -1)
    {
      swift_once();
    }

    v20 = qword_27FF79188;
    v22 = qword_27FF79190;
  }

  else
  {
    v20 = sub_264785724();
    v22 = v21;
  }

  v49 = v20;
  v50 = v22;
  v23 = sub_264784E44();
  v25 = v24;
  v27 = v26;
  sub_264784D64();
  v28 = sub_264784E24();
  v30 = v29;
  v32 = v31;

  sub_26460ECC4(v23, v25, v27 & 1);

  LODWORD(v49) = sub_2647849C4();
  v33 = sub_264784DF4();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  sub_26460ECC4(v28, v30, v32 & 1);

  v40 = BYTE4(v44) & 1;
  v48 = BYTE4(v44) & 1;
  LOBYTE(v49) = BYTE4(v44) & 1;
  v51 = v37 & 1;
  v42 = v45;
  v41 = v46;
  *a4 = v46;
  *(a4 + 8) = v42;
  *(a4 + 16) = v40;
  *(a4 + 24) = v47;
  *(a4 + 32) = v33;
  *(a4 + 40) = v35;
  *(a4 + 48) = v37 & 1;
  *(a4 + 56) = v39;
  sub_26460C474(v41, v42, v40);

  sub_26460C474(v33, v35, v37 & 1);

  sub_26460ECC4(v33, v35, v37 & 1);

  sub_26460ECC4(v41, v42, v48);
}

double sub_2646BADAC@<D0>(void *a1@<X8>)
{
  result = *&qword_27FF774B0;
  *a1 = qword_27FF774B0;
  return result;
}

void *sub_2646BADBC(double *a1, void *(*a2)(double *__return_ptr))
{
  result = a2(&v5);
  v4 = v5;
  if (*a1 > v5)
  {
    v4 = *a1;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_2646BAE14()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t sub_2646BAE68()
{
  result = qword_27FF774D8;
  if (!qword_27FF774D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF774E0, &qword_26478D3B8);
    sub_26460CDF0(&qword_27FF774E8, &qword_27FF774F0, &qword_26478D3C0, MEMORY[0x277CE1138]);
    sub_26460CDF0(&qword_27FF774F8, &qword_27FF77500, qword_26478D3C8, MEMORY[0x277CE07C8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF774D8);
  }

  return result;
}

SafetyMonitorUI::SessionLocationType_optional __swiftcall SessionLocationType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_264785E14();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t SessionLocationType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 1802661751;
  v4 = 0x6C6F6F686373;
  if (v1 != 3)
  {
    v4 = 0x726568746FLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1701670760;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_2646BB03C()
{
  result = qword_27FF77508;
  if (!qword_27FF77508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF77508);
  }

  return result;
}

uint64_t sub_2646BB090()
{
  sub_264785F44();
  sub_264785794();

  return sub_264785F94();
}

uint64_t sub_2646BB15C(uint64_t a1)
{
  sub_264785794();
}

uint64_t sub_2646BB214(uint64_t a1)
{
  sub_264785F44();
  sub_264785794();

  return sub_264785F94();
}

void sub_2646BB2E8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xE400000000000000;
  v6 = 1802661751;
  v7 = 0xE600000000000000;
  v8 = 0x6C6F6F686373;
  if (v2 != 3)
  {
    v8 = 0x726568746FLL;
    v7 = 0xE500000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 1701670760;
    v3 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t getEnumTagSinglePayload for SessionLocationType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SessionLocationType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_2646BB4C0()
{
  v1 = v0;
  v2 = 7104878;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756B8, &qword_26478AC90);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v17 - v4;
  *&v21[0] = 0;
  *(&v21[0] + 1) = 0xE000000000000000;
  sub_264785CE4();

  v26 = 0x203A656C74697428;
  v27 = 0xE900000000000022;
  MEMORY[0x26673F4D0](*v1, v1[1]);
  MEMORY[0x26673F4D0](0xD000000000000011, 0x8000000264797700);
  v6 = v0[2];
  v7 = type metadata accessor for SafetyCacheMapViewModel.AnnotationInfo.LocationInfo(0);
  sub_26460CCE8(v1 + *(v7 + 24), v5, &qword_27FF756B8, &qword_26478AC90);
  v8 = v6;
  sub_2646B8AC0(v8, v5, v21);
  if (v22)
  {
    v17 = v21[0];
    v18 = v21[1];
    *&v19[0] = v22;
    *(v19 + 8) = v23;
    *(&v19[1] + 8) = v24;
    *(&v19[2] + 1) = v25;
    v9 = SafetyCacheDetailedAddressFormatter.formattedString()();
    countAndFlagsBits = v9._countAndFlagsBits;
    object = v9._object;
    v20[2] = v19[0];
    v20[3] = v19[1];
    v20[4] = v19[2];
    v20[0] = v17;
    v20[1] = v18;
    sub_264681A38(v20);
  }

  else
  {
    object = 0xE300000000000000;
    countAndFlagsBits = 7104878;
  }

  MEMORY[0x26673F4D0](countAndFlagsBits, object);

  MEMORY[0x26673F4D0](0x3A656D616E202C22, 0xEA00000000002220);
  v12 = [v8 name];
  if (v12)
  {
    v13 = v12;
    v2 = sub_264785724();
    v15 = v14;
  }

  else
  {
    v15 = 0xE300000000000000;
  }

  MEMORY[0x26673F4D0](v2, v15);

  MEMORY[0x26673F4D0](10530, 0xE200000000000000);
  return v26;
}

uint64_t sub_2646BB6FC()
{
  v1 = sub_264783E24();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264783E04();
  v5 = v0;
  v6 = sub_264783E14();
  v7 = sub_2647859B4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v25 = v1;
    v9 = v8;
    v10 = swift_slowAlloc();
    v27 = v10;
    *v9 = 136315651;
    v11 = v5;
    v12 = [v11 description];
    v13 = sub_264785724();
    v15 = v14;

    v16 = sub_2646DF234(v13, v15, &v27);

    *(v9 + 4) = v16;
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_2646DF234(0x697461746F6E6E61, 0xEB00000000736E6FLL, &v27);
    *(v9 + 22) = 2085;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4(&v26);

    v17 = v26;
    v18 = type metadata accessor for SafetyCacheMapView.Annotation(0);
    v19 = MEMORY[0x26673F530](v17, v18);
    v21 = v20;

    v22 = sub_2646DF234(v19, v21, &v27);

    *(v9 + 24) = v22;
    _os_log_impl(&dword_264605000, v6, v7, "#SafetyCacheMapViewModel, %s, %s: updating annotation to %{sensitive}s", v9, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v10, -1, -1);
    MEMORY[0x266740650](v9, -1, -1);

    return (*(v2 + 8))(v4, v25);
  }

  else
  {

    return (*(v2 + 8))(v4, v1);
  }
}

uint64_t sub_2646BB9C8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v1);

  return v1;
}

uint64_t sub_2646BBA3C@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(a1);
}

uint64_t sub_2646BBAB4(__int128 *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76970, &qword_264789300);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v30[-v4];
  v6 = &v1[OBJC_IVAR____TtC15SafetyMonitorUI23SafetyCacheMapViewModel_safetyCache];
  v7 = *&v1[OBJC_IVAR____TtC15SafetyMonitorUI23SafetyCacheMapViewModel_safetyCache + 48];
  v33 = *&v1[OBJC_IVAR____TtC15SafetyMonitorUI23SafetyCacheMapViewModel_safetyCache + 32];
  v34 = v7;
  v8 = *&v1[OBJC_IVAR____TtC15SafetyMonitorUI23SafetyCacheMapViewModel_safetyCache + 80];
  v35 = *&v1[OBJC_IVAR____TtC15SafetyMonitorUI23SafetyCacheMapViewModel_safetyCache + 64];
  v36 = v8;
  v9 = *&v1[OBJC_IVAR____TtC15SafetyMonitorUI23SafetyCacheMapViewModel_safetyCache + 16];
  v31 = *&v1[OBJC_IVAR____TtC15SafetyMonitorUI23SafetyCacheMapViewModel_safetyCache];
  v32 = v9;
  v43[2] = v33;
  v43[3] = v7;
  v43[4] = v35;
  v43[5] = v8;
  v43[0] = v31;
  v43[1] = v9;
  v10 = a1[3];
  v6[2] = a1[2];
  v6[3] = v10;
  v11 = a1[5];
  v6[4] = a1[4];
  v6[5] = v11;
  v12 = a1[1];
  *v6 = *a1;
  v6[1] = v12;
  sub_26460CCE8(&v31, &v37, &qword_27FF756F8, &qword_264787DF0);
  sub_26460CD50(v43, &qword_27FF756F8, &qword_264787DF0);
  v13 = v6[3];
  v39 = v6[2];
  v40 = v13;
  v14 = v6[5];
  v41 = v6[4];
  v42 = v14;
  v15 = v6[1];
  v37 = *v6;
  v38 = v15;
  v16 = *&v1[OBJC_IVAR____TtC15SafetyMonitorUI23SafetyCacheMapViewModel_destinationLocation];
  v17 = *&v1[OBJC_IVAR____TtC15SafetyMonitorUI23SafetyCacheMapViewModel_destinationLocation + 8];
  v18 = v1[OBJC_IVAR____TtC15SafetyMonitorUI23SafetyCacheMapViewModel_destinationLocation + 16];
  v19 = sub_2647858E4();
  (*(*(v19 - 8) + 56))(v5, 1, 1, v19);
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  *(v20 + 24) = 0;
  *(v20 + 32) = v1;
  v21 = v34;
  *(v20 + 72) = v33;
  *(v20 + 88) = v21;
  v22 = v36;
  *(v20 + 104) = v35;
  *(v20 + 120) = v22;
  v23 = v32;
  *(v20 + 40) = v31;
  *(v20 + 56) = v23;
  v24 = v37;
  *(v20 + 152) = v38;
  *(v20 + 136) = v24;
  v25 = v39;
  v26 = v40;
  v27 = v41;
  *(v20 + 216) = v42;
  *(v20 + 200) = v27;
  *(v20 + 184) = v26;
  *(v20 + 168) = v25;
  *(v20 + 232) = v16;
  *(v20 + 240) = v17;
  *(v20 + 248) = v18;
  sub_26460CCE8(&v37, v30, &qword_27FF756F8, &qword_264787DF0);
  v28 = v1;
  sub_264635430(0, 0, v5, &unk_26478D7D8, v20);
}

uint64_t sub_2646BBCE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5, _OWORD *a6, uint64_t a7, uint64_t a8)
{
  v11 = a5[3];
  *(v8 + 48) = a5[2];
  *(v8 + 64) = v11;
  v12 = a5[5];
  *(v8 + 80) = a5[4];
  *(v8 + 96) = v12;
  v13 = a5[1];
  *(v8 + 16) = *a5;
  *(v8 + 32) = v13;
  v14 = a6[3];
  *(v8 + 144) = a6[2];
  *(v8 + 160) = v14;
  v15 = a6[5];
  *(v8 + 176) = a6[4];
  *(v8 + 192) = v15;
  v16 = a6[1];
  *(v8 + 112) = *a6;
  *(v8 + 128) = v16;
  v17 = swift_task_alloc();
  *(v8 + 208) = v17;
  *v17 = v8;
  v17[1] = sub_2646BBDDC;

  return sub_2646BBED0((v8 + 16), (v8 + 112), a7, a8, v20 & 1);
}

uint64_t sub_2646BBDDC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2646BBED0(_OWORD *a1, _OWORD *a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 368) = a4;
  *(v6 + 376) = v5;
  *(v6 + 704) = a5;
  *(v6 + 360) = a3;
  v9 = type metadata accessor for SafetyCacheMapView.Annotation(0);
  *(v6 + 384) = v9;
  *(v6 + 392) = *(v9 - 8);
  *(v6 + 400) = swift_task_alloc();
  *(v6 + 408) = swift_task_alloc();
  *(v6 + 416) = swift_task_alloc();
  *(v6 + 424) = swift_task_alloc();
  *(v6 + 432) = swift_task_alloc();
  *(v6 + 440) = type metadata accessor for SafetyCacheMapViewModel.AnnotationInfo(0);
  *(v6 + 448) = swift_task_alloc();
  *(v6 + 456) = swift_task_alloc();
  *(v6 + 464) = swift_task_alloc();
  *(v6 + 472) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76970, &qword_264789300);
  *(v6 + 480) = swift_task_alloc();
  v10 = *(a1 + 40);
  *(v6 + 488) = a1[1];
  *(v6 + 504) = v10;
  *(v6 + 520) = *(a1 + 72);
  v11 = a2[3];
  *(v6 + 48) = a2[2];
  *(v6 + 64) = v11;
  v12 = a2[5];
  *(v6 + 80) = a2[4];
  *(v6 + 96) = v12;
  v13 = a2[1];
  *(v6 + 16) = *a2;
  *(v6 + 32) = v13;

  return MEMORY[0x2822009F8](sub_2646BC094, 0, 0);
}

uint64_t sub_2646BC094()
{
  v97 = v0;
  v1 = v0 + 536;
  v2 = *(v0 + 32);
  v3 = *(v0 + 56);
  *(v0 + 536) = v2;
  *(v0 + 552) = v3;
  v5 = *(v0 + 88);
  v4 = *(v0 + 96);
  *(v0 + 568) = v5;
  *(v0 + 576) = v4;
  if (!v2)
  {
    sub_2647858B4();
    *(v0 + 696) = sub_2647858A4();
    v10 = sub_264785874();
    v12 = v11;
    v13 = sub_2646BEEC0;
LABEL_8:

    return MEMORY[0x2822009F8](v13, v10, v12);
  }

  v6 = *(&v2 + 1);
  if (!*(v0 + 488) || (v7 = *(v0 + 496)) == 0)
  {
    if (!*(&v2 + 1))
    {
      v16 = *(v0 + 16);
      v17 = *(v0 + 24);
      v18 = *(v0 + 48);
      v94 = *(v0 + 72);
      v19 = v3;
      v20 = *(v0 + 80);
      v21 = v16;
      v22 = v17;

      v23 = v18;
      v24 = v19;
      v25 = *(&v19 + 1);
      v26 = v94;
      sub_2646C6804(v5, v4);
      v27 = *(v0 + 488);

      if (!v27)
      {
        goto LABEL_22;
      }

      goto LABEL_17;
    }

    sub_26460CCE8(v0 + 16, v0 + 112, &qword_27FF756F8, &qword_264787DF0);
LABEL_13:
    *(v0 + 584) = v6;
    v14 = v6;
    v15 = swift_task_alloc();
    *(v0 + 592) = v15;
    *v15 = v0;
    v15[1] = sub_2646BC9DC;

    return sub_2646BFA44(v14);
  }

  if (!*(&v2 + 1))
  {
    v33 = *(v0 + 16);
    v34 = *(v0 + 24);
    v35 = *(v0 + 48);
    v95 = *(v0 + 72);
    v37 = *(&v3 + 1);
    v36 = v3;
    v38 = *(v0 + 80);
    v39 = v33;
    v40 = v34;

    v41 = v35;
    v42 = v36;
    v43 = v37;
    v44 = v95;
    sub_2646C6804(v5, v4);

    v28 = *(v0 + 504);
    if (v28)
    {
      goto LABEL_18;
    }

    goto LABEL_22;
  }

  sub_264659B70(0, &qword_27FF75E80, 0x277D4AB28);
  v6 = v6;
  sub_26460CCE8(v0 + 16, v0 + 208, &qword_27FF756F8, &qword_264787DF0);
  v8 = v7;
  v9 = sub_264785AE4();

  if ((v9 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_17:
  v28 = *(v0 + 504);
  if (v28)
  {
LABEL_18:
    v29 = *(v0 + 552);
    if (!v29)
    {
      goto LABEL_27;
    }

    sub_264659B70(0, &qword_27FF75E80, 0x277D4AB28);
    v30 = v29;
    v31 = v28;
    v32 = sub_264785AE4();

    if (v32)
    {
      goto LABEL_27;
    }

LABEL_23:
    *(v0 + 600) = v30;
    v45 = v30;
    v46 = swift_task_alloc();
    *(v0 + 608) = v46;
    *v46 = v0;
    v46[1] = sub_2646BD1A8;

    return sub_2646BFEF0(v45);
  }

LABEL_22:
  v30 = *(v0 + 552);
  if (v30)
  {
    goto LABEL_23;
  }

  if (!*(v0 + 488))
  {
    v49 = 0;
    v48 = 0xF000000000000000;
LABEL_34:
    v50 = *(v0 + 576);
    if (v50 >> 60 == 15)
    {
      sub_2646C6804(*(v0 + 568), *(v0 + 576));
      v55 = v49;
      v56 = v48;
LABEL_38:
      sub_264655900(v55, v56);
      goto LABEL_39;
    }

    goto LABEL_36;
  }

LABEL_27:
  v47 = *(v0 + 528);
  sub_2646C6804(*(v0 + 520), v47);
  if (v47 >> 60 == 15)
  {
    v48 = *(v0 + 528);
    v49 = *(v0 + 520);
    goto LABEL_34;
  }

  v50 = *(v0 + 576);
  if (v50 >> 60 == 15)
  {
    v48 = *(v0 + 528);
    v49 = *(v0 + 520);
LABEL_36:
    v57 = *(v0 + 568);
    sub_2646C6804(v57, v50);
    sub_264655900(v49, v48);
    sub_264655900(v57, v50);
    if (v50 >> 60 == 15)
    {
      goto LABEL_39;
    }

    goto LABEL_37;
  }

  v51 = *(v0 + 568);
  v52 = *(v0 + 528);
  v53 = *(v0 + 520);
  sub_2646C6804(v51, *(v0 + 576));
  sub_2646C6804(v51, v50);
  sub_2646C6804(v53, v52);
  v54 = sub_2646C6DE4(v53, v52, v51, v50);
  sub_264655900(v51, v50);
  sub_264655900(v53, v52);
  sub_264655900(v51, v50);
  sub_264655900(v53, v52);
  if (!v54)
  {
LABEL_37:
    v58 = *(v0 + 576);
    v59 = *(v0 + 568);
    v60 = *(v0 + 480);
    v61 = *(v0 + 376);
    sub_26465944C(v59, v58);
    sub_2647858C4();
    v62 = sub_2647858E4();
    (*(*(v62 - 8) + 56))(v60, 0, 1, v62);
    v63 = swift_allocObject();
    v63[2] = 0;
    v63[3] = 0;
    v63[4] = v59;
    v63[5] = v58;
    v63[6] = v61;
    sub_2646C6804(v59, v58);
    v64 = v61;
    sub_264635430(0, 0, v60, &unk_26478D780, v63);

    v55 = v59;
    v56 = v58;
    goto LABEL_38;
  }

LABEL_39:
  v65 = *(v0 + 560);
  if (*(v0 + 488) && (v66 = *(v0 + 512)) != 0)
  {
    if (!v65 || (sub_264659B70(0, &qword_27FF75E80, 0x277D4AB28), v65 = v65, v67 = v66, v68 = sub_264785AE4(), v65, v67, (v68 & 1) != 0))
    {
LABEL_43:
      if ((*v1 & 0xC000000000000001) != 0)
      {
        v69 = sub_264785C14();
        v70 = v69 + 6;
        if (!__OFADD__(v69, 6))
        {
          goto LABEL_45;
        }
      }

      else
      {
        v69 = *(*v1 + 16);
        v70 = v69 + 6;
        if (!__OFADD__(v69, 6))
        {
LABEL_45:
          v71 = *(v0 + 560);
          v69 = sub_2647031CC(0, v70 & ~(v70 >> 63), 0, MEMORY[0x277D84F90]);
          *(v0 + 632) = v69;
          *(v0 + 344) = v69;
          if (v71)
          {
            v72 = *(v0 + 560);
            sub_2647858B4();
            v73 = v72;
            *(v0 + 640) = sub_2647858A4();
            v10 = sub_264785874();
            v12 = v74;
            v13 = sub_2646BDC90;
            goto LABEL_8;
          }

LABEL_54:
          *(v0 + 648) = v69;
          v77 = *(v0 + 544);
          if (v77)
          {
            sub_2647858B4();
            v78 = v77;
            *(v0 + 656) = sub_2647858A4();
            v10 = sub_264785874();
            v12 = v79;
            v13 = sub_2646BE15C;
          }

          else
          {
            v80 = *(v0 + 552);
            v81 = *(v0 + 376);
            v82 = swift_allocObject();
            *(v82 + 16) = v81;
            v83 = v81;

            sub_2646BF230(v84, sub_2646C6850, v82);
            if (v80)
            {
              v85 = *(v0 + 552);
              sub_2647858B4();
              v86 = v85;
              *(v0 + 664) = sub_2647858A4();
              v10 = sub_264785874();
              v12 = v87;
              v13 = sub_2646BE5D0;
            }

            else if (*(v0 + 704))
            {
              v88 = *(v0 + 344);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v88 = sub_26468177C(v88);
              }

              *(v0 + 680) = v88;
              v89 = v88[2];
              v90 = *(*(v0 + 392) + 80);
              v96[0] = v88 + ((v90 + 32) & ~v90);
              v96[1] = v89;
              sub_2646C4A4C(v96);
              sub_2647858B4();

              *(v0 + 688) = sub_2647858A4();
              v10 = sub_264785874();
              v12 = v92;
              v13 = sub_2646BED04;
            }

            else
            {
              sub_2647858B4();
              *(v0 + 672) = sub_2647858A4();
              v10 = sub_264785874();
              v12 = v91;
              v13 = sub_2646BE9C8;
            }
          }

          goto LABEL_8;
        }
      }

      __break(1u);
      goto LABEL_54;
    }
  }

  else if (!v65)
  {
    goto LABEL_43;
  }

  *(v0 + 616) = v65;
  v75 = v65;
  v76 = swift_task_alloc();
  *(v0 + 624) = v76;
  *v76 = v0;
  v76[1] = sub_2646BD88C;

  return sub_2646C04AC(v75);
}

uint64_t sub_2646BC9DC()
{

  return MEMORY[0x2822009F8](sub_2646BCAD8, 0, 0);
}

uint64_t sub_2646BCAD8()
{
  v59 = v0;

  if (!*(v0 + 488))
  {
    v2 = *(v0 + 552);
    if (!v2)
    {
      v5 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_14;
    }

    goto LABEL_9;
  }

  v1 = *(v0 + 504);
  v2 = *(v0 + 552);
  if (!v1)
  {
    if (!v2)
    {
      goto LABEL_12;
    }

LABEL_9:
    *(v0 + 600) = v2;
    v7 = v2;
    v8 = swift_task_alloc();
    *(v0 + 608) = v8;
    *v8 = v0;
    v8[1] = sub_2646BD1A8;

    return sub_2646BFEF0(v7);
  }

  if (v2)
  {
    sub_264659B70(0, &qword_27FF75E80, 0x277D4AB28);
    v2 = v2;
    v3 = v1;
    v4 = sub_264785AE4();

    if ((v4 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

LABEL_12:
  v10 = *(v0 + 528);
  sub_2646C6804(*(v0 + 520), v10);
  if (v10 >> 60 == 15)
  {
    v6 = *(v0 + 528);
    v5 = *(v0 + 520);
LABEL_14:
    v11 = *(v0 + 576);
    if (v11 >> 60 == 15)
    {
      sub_2646C6804(*(v0 + 568), *(v0 + 576));
      v12 = v5;
      v13 = v6;
LABEL_22:
      sub_264655900(v12, v13);
      goto LABEL_23;
    }

    goto LABEL_18;
  }

  v11 = *(v0 + 576);
  if (v11 >> 60 != 15)
  {
    v15 = *(v0 + 568);
    v16 = *(v0 + 528);
    v17 = *(v0 + 520);
    sub_2646C6804(v15, *(v0 + 576));
    sub_2646C6804(v15, v11);
    sub_2646C6804(v17, v16);
    v18 = sub_2646C6DE4(v17, v16, v15, v11);
    sub_264655900(v15, v11);
    sub_264655900(v17, v16);
    sub_264655900(v15, v11);
    sub_264655900(v17, v16);
    if (v18)
    {
      goto LABEL_23;
    }

    goto LABEL_21;
  }

  v6 = *(v0 + 528);
  v5 = *(v0 + 520);
LABEL_18:
  v14 = *(v0 + 568);
  sub_2646C6804(v14, v11);
  sub_264655900(v5, v6);
  sub_264655900(v14, v11);
  if (v11 >> 60 != 15)
  {
LABEL_21:
    v19 = *(v0 + 576);
    v20 = *(v0 + 568);
    v21 = *(v0 + 480);
    v22 = *(v0 + 376);
    sub_26465944C(v20, v19);
    sub_2647858C4();
    v23 = sub_2647858E4();
    (*(*(v23 - 8) + 56))(v21, 0, 1, v23);
    v24 = swift_allocObject();
    v24[2] = 0;
    v24[3] = 0;
    v24[4] = v20;
    v24[5] = v19;
    v24[6] = v22;
    sub_2646C6804(v20, v19);
    v25 = v22;
    sub_264635430(0, 0, v21, &unk_26478D780, v24);

    v12 = v20;
    v13 = v19;
    goto LABEL_22;
  }

LABEL_23:
  v26 = *(v0 + 560);
  if (*(v0 + 488) && (v27 = *(v0 + 512)) != 0)
  {
    if (!v26 || (sub_264659B70(0, &qword_27FF75E80, 0x277D4AB28), v26 = v26, v28 = v27, v29 = sub_264785AE4(), v26, v28, (v29 & 1) != 0))
    {
LABEL_27:
      v30 = *(v0 + 536);
      if ((v30 & 0xC000000000000001) != 0)
      {
        v31 = sub_264785C14();
        v32 = v31 + 6;
        if (!__OFADD__(v31, 6))
        {
          goto LABEL_29;
        }
      }

      else
      {
        v31 = *(v30 + 16);
        v32 = v31 + 6;
        if (!__OFADD__(v31, 6))
        {
LABEL_29:
          v33 = *(v0 + 560);
          v31 = sub_2647031CC(0, v32 & ~(v32 >> 63), 0, MEMORY[0x277D84F90]);
          *(v0 + 632) = v31;
          *(v0 + 344) = v31;
          if (v33)
          {
            v34 = *(v0 + 560);
            sub_2647858B4();
            v35 = v34;
            *(v0 + 640) = sub_2647858A4();
            v36 = sub_264785874();
            v38 = v37;
            v39 = sub_2646BDC90;
LABEL_47:

            return MEMORY[0x2822009F8](v39, v36, v38);
          }

LABEL_38:
          *(v0 + 648) = v31;
          v42 = *(v0 + 544);
          if (v42)
          {
            sub_2647858B4();
            v43 = v42;
            *(v0 + 656) = sub_2647858A4();
            v36 = sub_264785874();
            v38 = v44;
            v39 = sub_2646BE15C;
          }

          else
          {
            v45 = *(v0 + 552);
            v46 = *(v0 + 376);
            v47 = swift_allocObject();
            *(v47 + 16) = v46;
            v48 = v46;

            sub_2646BF230(v49, sub_2646C6850, v47);
            if (v45)
            {
              v50 = *(v0 + 552);
              sub_2647858B4();
              v51 = v50;
              *(v0 + 664) = sub_2647858A4();
              v36 = sub_264785874();
              v38 = v52;
              v39 = sub_2646BE5D0;
            }

            else if (*(v0 + 704))
            {
              v53 = *(v0 + 344);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v53 = sub_26468177C(v53);
              }

              *(v0 + 680) = v53;
              v54 = v53[2];
              v55 = *(*(v0 + 392) + 80);
              v58[0] = v53 + ((v55 + 32) & ~v55);
              v58[1] = v54;
              sub_2646C4A4C(v58);
              sub_2647858B4();

              *(v0 + 688) = sub_2647858A4();
              v36 = sub_264785874();
              v38 = v57;
              v39 = sub_2646BED04;
            }

            else
            {
              sub_2647858B4();
              *(v0 + 672) = sub_2647858A4();
              v36 = sub_264785874();
              v38 = v56;
              v39 = sub_2646BE9C8;
            }
          }

          goto LABEL_47;
        }
      }

      __break(1u);
      goto LABEL_38;
    }
  }

  else if (!v26)
  {
    goto LABEL_27;
  }

  *(v0 + 616) = v26;
  v40 = v26;
  v41 = swift_task_alloc();
  *(v0 + 624) = v41;
  *v41 = v0;
  v41[1] = sub_2646BD88C;

  return sub_2646C04AC(v40);
}

uint64_t sub_2646BD1A8()
{

  return MEMORY[0x2822009F8](sub_2646BD2A4, 0, 0);
}

uint64_t sub_2646BD2A4()
{
  v53 = v0;

  if (!*(v0 + 488))
  {
    v3 = 0;
    v2 = 0xF000000000000000;
LABEL_5:
    v4 = *(v0 + 576);
    if (v4 >> 60 == 15)
    {
      sub_2646C6804(*(v0 + 568), *(v0 + 576));
      v5 = v3;
      v6 = v2;
LABEL_13:
      sub_264655900(v5, v6);
      goto LABEL_14;
    }

    goto LABEL_9;
  }

  v1 = *(v0 + 528);
  sub_2646C6804(*(v0 + 520), v1);
  if (v1 >> 60 == 15)
  {
    v2 = *(v0 + 528);
    v3 = *(v0 + 520);
    goto LABEL_5;
  }

  v4 = *(v0 + 576);
  if (v4 >> 60 == 15)
  {
    v2 = *(v0 + 528);
    v3 = *(v0 + 520);
LABEL_9:
    v7 = *(v0 + 568);
    sub_2646C6804(v7, v4);
    sub_264655900(v3, v2);
    sub_264655900(v7, v4);
    if (v4 >> 60 == 15)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  v8 = *(v0 + 568);
  v9 = *(v0 + 528);
  v10 = *(v0 + 520);
  sub_2646C6804(v8, *(v0 + 576));
  sub_2646C6804(v8, v4);
  sub_2646C6804(v10, v9);
  v11 = sub_2646C6DE4(v10, v9, v8, v4);
  sub_264655900(v8, v4);
  sub_264655900(v10, v9);
  sub_264655900(v8, v4);
  sub_264655900(v10, v9);
  if (!v11)
  {
LABEL_12:
    v12 = *(v0 + 576);
    v13 = *(v0 + 568);
    v14 = *(v0 + 480);
    v15 = *(v0 + 376);
    sub_26465944C(v13, v12);
    sub_2647858C4();
    v16 = sub_2647858E4();
    (*(*(v16 - 8) + 56))(v14, 0, 1, v16);
    v17 = swift_allocObject();
    v17[2] = 0;
    v17[3] = 0;
    v17[4] = v13;
    v17[5] = v12;
    v17[6] = v15;
    sub_2646C6804(v13, v12);
    v18 = v15;
    sub_264635430(0, 0, v14, &unk_26478D780, v17);

    v5 = v13;
    v6 = v12;
    goto LABEL_13;
  }

LABEL_14:
  v19 = *(v0 + 560);
  if (*(v0 + 488) && (v20 = *(v0 + 512)) != 0)
  {
    if (!v19 || (sub_264659B70(0, &qword_27FF75E80, 0x277D4AB28), v19 = v19, v21 = v20, v22 = sub_264785AE4(), v19, v21, (v22 & 1) != 0))
    {
LABEL_18:
      v23 = *(v0 + 536);
      if ((v23 & 0xC000000000000001) != 0)
      {
        v24 = sub_264785C14();
        v25 = v24 + 6;
        if (!__OFADD__(v24, 6))
        {
          goto LABEL_20;
        }
      }

      else
      {
        v24 = *(v23 + 16);
        v25 = v24 + 6;
        if (!__OFADD__(v24, 6))
        {
LABEL_20:
          v26 = *(v0 + 560);
          v24 = sub_2647031CC(0, v25 & ~(v25 >> 63), 0, MEMORY[0x277D84F90]);
          *(v0 + 632) = v24;
          *(v0 + 344) = v24;
          if (v26)
          {
            v27 = *(v0 + 560);
            sub_2647858B4();
            v28 = v27;
            *(v0 + 640) = sub_2647858A4();
            v29 = sub_264785874();
            v31 = v30;
            v32 = sub_2646BDC90;
LABEL_38:

            return MEMORY[0x2822009F8](v32, v29, v31);
          }

LABEL_29:
          *(v0 + 648) = v24;
          v36 = *(v0 + 544);
          if (v36)
          {
            sub_2647858B4();
            v37 = v36;
            *(v0 + 656) = sub_2647858A4();
            v29 = sub_264785874();
            v31 = v38;
            v32 = sub_2646BE15C;
          }

          else
          {
            v39 = *(v0 + 552);
            v40 = *(v0 + 376);
            v41 = swift_allocObject();
            *(v41 + 16) = v40;
            v42 = v40;

            sub_2646BF230(v43, sub_2646C6850, v41);
            if (v39)
            {
              v44 = *(v0 + 552);
              sub_2647858B4();
              v45 = v44;
              *(v0 + 664) = sub_2647858A4();
              v29 = sub_264785874();
              v31 = v46;
              v32 = sub_2646BE5D0;
            }

            else if (*(v0 + 704))
            {
              v47 = *(v0 + 344);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v47 = sub_26468177C(v47);
              }

              *(v0 + 680) = v47;
              v48 = v47[2];
              v49 = *(*(v0 + 392) + 80);
              v52[0] = v47 + ((v49 + 32) & ~v49);
              v52[1] = v48;
              sub_2646C4A4C(v52);
              sub_2647858B4();

              *(v0 + 688) = sub_2647858A4();
              v29 = sub_264785874();
              v31 = v51;
              v32 = sub_2646BED04;
            }

            else
            {
              sub_2647858B4();
              *(v0 + 672) = sub_2647858A4();
              v29 = sub_264785874();
              v31 = v50;
              v32 = sub_2646BE9C8;
            }
          }

          goto LABEL_38;
        }
      }

      __break(1u);
      goto LABEL_29;
    }
  }

  else if (!v19)
  {
    goto LABEL_18;
  }

  *(v0 + 616) = v19;
  v33 = v19;
  v34 = swift_task_alloc();
  *(v0 + 624) = v34;
  *v34 = v0;
  v34[1] = sub_2646BD88C;

  return sub_2646C04AC(v33);
}

uint64_t sub_2646BD88C()
{

  return MEMORY[0x2822009F8](sub_2646BD988, 0, 0);
}

uint64_t sub_2646BD988()
{
  v29 = v0;

  v1 = *(v0 + 536);
  if ((v1 & 0xC000000000000001) != 0)
  {
    v2 = sub_264785C14();
    v3 = v2 + 6;
    if (!__OFADD__(v2, 6))
    {
      goto LABEL_3;
    }

LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v2 = *(v1 + 16);
  v3 = v2 + 6;
  if (__OFADD__(v2, 6))
  {
    goto LABEL_7;
  }

LABEL_3:
  v4 = *(v0 + 560);
  v2 = sub_2647031CC(0, v3 & ~(v3 >> 63), 0, MEMORY[0x277D84F90]);
  *(v0 + 632) = v2;
  *(v0 + 344) = v2;
  if (v4)
  {
    v5 = *(v0 + 560);
    sub_2647858B4();
    v6 = v5;
    *(v0 + 640) = sub_2647858A4();
    v7 = sub_264785874();
    v9 = v8;
    v10 = sub_2646BDC90;
    goto LABEL_17;
  }

LABEL_8:
  *(v0 + 648) = v2;
  v11 = *(v0 + 544);
  if (v11)
  {
    sub_2647858B4();
    v12 = v11;
    *(v0 + 656) = sub_2647858A4();
    v7 = sub_264785874();
    v9 = v13;
    v10 = sub_2646BE15C;
  }

  else
  {
    v14 = *(v0 + 552);
    v15 = *(v0 + 376);
    v16 = swift_allocObject();
    *(v16 + 16) = v15;
    v17 = v15;

    sub_2646BF230(v18, sub_2646C6850, v16);
    if (v14)
    {
      v19 = *(v0 + 552);
      sub_2647858B4();
      v20 = v19;
      *(v0 + 664) = sub_2647858A4();
      v7 = sub_264785874();
      v9 = v21;
      v10 = sub_2646BE5D0;
    }

    else if (*(v0 + 704))
    {
      v22 = *(v0 + 344);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = sub_26468177C(v22);
      }

      *(v0 + 680) = v22;
      v23 = v22[2];
      v24 = *(*(v0 + 392) + 80);
      v28[0] = v22 + ((v24 + 32) & ~v24);
      v28[1] = v23;
      sub_2646C4A4C(v28);
      sub_2647858B4();

      *(v0 + 688) = sub_2647858A4();
      v7 = sub_264785874();
      v9 = v26;
      v10 = sub_2646BED04;
    }

    else
    {
      sub_2647858B4();
      *(v0 + 672) = sub_2647858A4();
      v7 = sub_264785874();
      v9 = v25;
      v10 = sub_2646BE9C8;
    }
  }

LABEL_17:

  return MEMORY[0x2822009F8](v10, v7, v9);
}

uint64_t sub_2646BDC90()
{
  v1 = *(v0 + 472);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(v1);

  return MEMORY[0x2822009F8](sub_2646BDD4C, 0, 0);
}

uint64_t sub_2646BDD4C()
{
  v45 = v0;
  v1 = *(v0 + 472);
  v2 = v1 + *(*(v0 + 440) + 24);
  v3 = type metadata accessor for SafetyCacheMapViewModel.AnnotationInfo.LocationInfo(0);
  v4 = 0;
  if (!(*(*(v3 - 8) + 48))(v2, 1, v3))
  {
    v4 = *(v2 + 16);
    v5 = v4;
  }

  v6 = *(v0 + 632);
  v7 = *(v0 + 560);
  v8 = *(v0 + 432);
  v10 = *(v0 + 376);
  v9 = *(v0 + 384);
  sub_2646C68C0(v1, type metadata accessor for SafetyCacheMapViewModel.AnnotationInfo);
  [v7 latitude];
  v12 = v11;
  [v7 longitude];
  v14 = v13;
  v15 = *(v10 + OBJC_IVAR____TtC15SafetyMonitorUI23SafetyCacheMapViewModel_contact);
  v16 = v15;
  v17 = [v7 date];
  sub_264783AC4();

  *v8 = v4;
  *(v8 + 8) = v12;
  *(v8 + 16) = v14;
  *(v8 + 24) = 2;
  *(v8 + 32) = v15;
  v18 = v8 + *(v9 + 36);
  *v18 = 0;
  *(v18 + 8) = 1;
  v20 = *(v6 + 16);
  v19 = *(v6 + 24);
  v21 = *(v0 + 632);
  if (v20 >= v19 >> 1)
  {
    v21 = sub_2647031CC((v19 > 1), v20 + 1, 1, *(v0 + 632));
  }

  v22 = *(v0 + 432);
  v23 = *(v0 + 392);

  v21[2] = v20 + 1;
  sub_2646C6920(v22, v21 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v20, type metadata accessor for SafetyCacheMapView.Annotation);
  *(v0 + 344) = v21;
  *(v0 + 648) = v21;
  v24 = *(v0 + 544);
  if (v24)
  {
    sub_2647858B4();
    v25 = v24;
    *(v0 + 656) = sub_2647858A4();
    v26 = sub_264785874();
    v28 = v27;
    v29 = sub_2646BE15C;
  }

  else
  {
    v30 = *(v0 + 552);
    v31 = *(v0 + 376);
    v32 = swift_allocObject();
    *(v32 + 16) = v31;
    v33 = v31;

    sub_2646BF230(v34, sub_2646C6850, v32);
    if (v30)
    {
      v35 = *(v0 + 552);
      sub_2647858B4();
      v36 = v35;
      *(v0 + 664) = sub_2647858A4();
      v26 = sub_264785874();
      v28 = v37;
      v29 = sub_2646BE5D0;
    }

    else if (*(v0 + 704))
    {
      v38 = *(v0 + 344);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v38 = sub_26468177C(v38);
      }

      *(v0 + 680) = v38;
      v39 = v38[2];
      v40 = *(*(v0 + 392) + 80);
      v44[0] = v38 + ((v40 + 32) & ~v40);
      v44[1] = v39;
      sub_2646C4A4C(v44);
      sub_2647858B4();

      *(v0 + 688) = sub_2647858A4();
      v26 = sub_264785874();
      v28 = v42;
      v29 = sub_2646BED04;
    }

    else
    {
      sub_2647858B4();
      *(v0 + 672) = sub_2647858A4();
      v26 = sub_264785874();
      v28 = v41;
      v29 = sub_2646BE9C8;
    }
  }

  return MEMORY[0x2822009F8](v29, v26, v28);
}

uint64_t sub_2646BE15C()
{
  v1 = *(v0 + 464);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(v1);

  return MEMORY[0x2822009F8](sub_2646BE218, 0, 0);
}

uint64_t sub_2646BE218()
{
  v42 = v0;
  v1 = *(v0 + 464);
  v2 = v1 + *(*(v0 + 440) + 20);
  v3 = type metadata accessor for SafetyCacheMapViewModel.AnnotationInfo.LocationInfo(0);
  v4 = 0;
  if (!(*(*(v3 - 8) + 48))(v2, 1, v3))
  {
    v4 = *(v2 + 16);
    v5 = v4;
  }

  v6 = *(v0 + 648);
  v7 = *(v0 + 544);
  v8 = *(v0 + 424);
  v10 = *(v0 + 376);
  v9 = *(v0 + 384);
  sub_2646C68C0(v1, type metadata accessor for SafetyCacheMapViewModel.AnnotationInfo);
  [v7 latitude];
  v12 = v11;
  [v7 longitude];
  v14 = v13;
  v15 = *(v10 + OBJC_IVAR____TtC15SafetyMonitorUI23SafetyCacheMapViewModel_contact);
  v16 = v15;
  v17 = [v7 date];
  sub_264783AC4();

  *v8 = v4;
  *(v8 + 8) = v12;
  *(v8 + 16) = v14;
  *(v8 + 24) = 1;
  *(v8 + 32) = v15;
  v18 = v8 + *(v9 + 36);
  *v18 = 0;
  *(v18 + 8) = 1;
  v20 = *(v6 + 16);
  v19 = *(v6 + 24);
  v21 = *(v0 + 648);
  if (v20 >= v19 >> 1)
  {
    v21 = sub_2647031CC((v19 > 1), v20 + 1, 1, *(v0 + 648));
  }

  v22 = *(v0 + 424);
  v23 = *(v0 + 392);

  v21[2] = v20 + 1;
  sub_2646C6920(v22, v21 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v20, type metadata accessor for SafetyCacheMapView.Annotation);
  *(v0 + 344) = v21;
  v24 = *(v0 + 552);
  v25 = *(v0 + 376);
  v26 = swift_allocObject();
  *(v26 + 16) = v25;
  v27 = v25;

  sub_2646BF230(v28, sub_2646C6850, v26);
  if (v24)
  {
    v29 = *(v0 + 552);
    sub_2647858B4();
    v30 = v29;
    *(v0 + 664) = sub_2647858A4();
    v31 = sub_264785874();
    v33 = v32;
    v34 = sub_2646BE5D0;
  }

  else if (*(v0 + 704))
  {
    v35 = *(v0 + 344);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v35 = sub_26468177C(v35);
    }

    *(v0 + 680) = v35;
    v36 = v35[2];
    v37 = *(*(v0 + 392) + 80);
    v41[0] = v35 + ((v37 + 32) & ~v37);
    v41[1] = v36;
    sub_2646C4A4C(v41);
    sub_2647858B4();

    *(v0 + 688) = sub_2647858A4();
    v31 = sub_264785874();
    v33 = v39;
    v34 = sub_2646BED04;
  }

  else
  {
    sub_2647858B4();
    *(v0 + 672) = sub_2647858A4();
    v31 = sub_264785874();
    v33 = v38;
    v34 = sub_2646BE9C8;
  }

  return MEMORY[0x2822009F8](v34, v31, v33);
}

uint64_t sub_2646BE5D0()
{
  v1 = *(v0 + 456);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(v1);

  return MEMORY[0x2822009F8](sub_2646BE68C, 0, 0);
}

uint64_t sub_2646BE68C()
{
  v33 = v0;
  v1 = *(v0 + 456);
  v2 = v1 + *(*(v0 + 440) + 28);
  v3 = type metadata accessor for SafetyCacheMapViewModel.AnnotationInfo.LocationInfo(0);
  v4 = 0;
  if (!(*(*(v3 - 8) + 48))(v2, 1, v3))
  {
    v4 = *(v2 + 16);
    v5 = v4;
  }

  v6 = *(v0 + 552);
  v7 = *(v0 + 416);
  v9 = *(v0 + 376);
  v8 = *(v0 + 384);
  sub_2646C68C0(v1, type metadata accessor for SafetyCacheMapViewModel.AnnotationInfo);
  [v6 latitude];
  v11 = v10;
  [v6 longitude];
  v13 = v12;
  v14 = *(v9 + OBJC_IVAR____TtC15SafetyMonitorUI23SafetyCacheMapViewModel_contact);
  v15 = v14;
  v16 = [v6 date];
  sub_264783AC4();

  [v6 hunc];
  *v7 = v4;
  *(v7 + 8) = v11;
  *(v7 + 16) = v13;
  *(v7 + 24) = 3;
  *(v7 + 32) = v14;
  v17 = v7 + *(v8 + 36);
  *v17 = v18;
  *(v17 + 8) = 0;
  v19 = *(v0 + 344);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v19 = sub_2647031CC(0, v19[2] + 1, 1, v19);
  }

  v21 = v19[2];
  v20 = v19[3];
  if (v21 >= v20 >> 1)
  {
    v19 = sub_2647031CC((v20 > 1), v21 + 1, 1, v19);
  }

  v22 = *(v0 + 416);
  v23 = *(v0 + 392);

  v19[2] = v21 + 1;
  sub_2646C6920(v22, v19 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v21, type metadata accessor for SafetyCacheMapView.Annotation);
  *(v0 + 344) = v19;
  if (*(v0 + 704))
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v19 = sub_26468177C(v19);
    }

    *(v0 + 680) = v19;
    v24 = v19[2];
    v25 = *(*(v0 + 392) + 80);
    v32[0] = v19 + ((v25 + 32) & ~v25);
    v32[1] = v24;
    sub_2646C4A4C(v32);
    sub_2647858B4();

    *(v0 + 688) = sub_2647858A4();
    v27 = sub_264785874();
    v29 = v28;
    v30 = sub_2646BED04;
  }

  else
  {
    sub_2647858B4();
    *(v0 + 672) = sub_2647858A4();
    v27 = sub_264785874();
    v29 = v26;
    v30 = sub_2646BE9C8;
  }

  return MEMORY[0x2822009F8](v30, v27, v29);
}

uint64_t sub_2646BE9C8()
{
  v1 = *(v0 + 448);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(v1);

  return MEMORY[0x2822009F8](sub_2646BEA84, 0, 0);
}

uint64_t sub_2646BEA84()
{
  v24 = v0;
  v1 = v0[56];
  v2 = type metadata accessor for SafetyCacheMapViewModel.AnnotationInfo.LocationInfo(0);
  v3 = 0;
  if (!(*(*(v2 - 8) + 48))(v1, 1, v2))
  {
    v3 = *(v1 + 16);
    v4 = v3;
  }

  v5 = v0[51];
  v7 = v0[47];
  v6 = v0[48];
  v9 = v0[45];
  v8 = v0[46];
  sub_2646C68C0(v1, type metadata accessor for SafetyCacheMapViewModel.AnnotationInfo);
  v10 = *(v7 + OBJC_IVAR____TtC15SafetyMonitorUI23SafetyCacheMapViewModel_contact);
  v11 = v10;
  sub_264783A34();
  *v5 = v3;
  *(v5 + 8) = v9;
  *(v5 + 16) = v8;
  *(v5 + 24) = 0;
  *(v5 + 32) = v10;
  v12 = v5 + *(v6 + 36);
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = v0[43];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v13 = sub_2647031CC(0, v13[2] + 1, 1, v13);
  }

  v15 = v13[2];
  v14 = v13[3];
  if (v15 >= v14 >> 1)
  {
    v13 = sub_2647031CC((v14 > 1), v15 + 1, 1, v13);
  }

  v16 = v0[51];
  v17 = v0[49];
  v13[2] = v15 + 1;
  sub_2646C6920(v16, v13 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v15, type metadata accessor for SafetyCacheMapView.Annotation);
  v0[43] = v13;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v13 = sub_26468177C(v13);
  }

  v0[85] = v13;
  v18 = v13[2];
  v19 = *(v0[49] + 80);
  v23[0] = v13 + ((v19 + 32) & ~v19);
  v23[1] = v18;
  sub_2646C4A4C(v23);
  sub_2647858B4();

  v0[86] = sub_2647858A4();
  v21 = sub_264785874();

  return MEMORY[0x2822009F8](sub_2646BED04, v21, v20);
}

uint64_t sub_2646BED04()
{
  v1 = v0[85];
  v2 = v0[47];

  swift_getKeyPath();
  swift_getKeyPath();
  v0[44] = v1;
  v2;
  sub_264783EE4();
  sub_2646BB6FC();

  return MEMORY[0x2822009F8](sub_2646BEDCC, 0, 0);
}

uint64_t sub_2646BEDCC()
{
  sub_26460CD50(v0 + 16, &qword_27FF756F8, &qword_264787DF0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2646BEEC0()
{
  v1 = v0[55];
  v2 = v0[47];

  swift_getKeyPath();
  swift_getKeyPath();
  v0[42] = MEMORY[0x277D84F90];
  v3 = v2;
  sub_264783EE4();
  sub_2646BB6FC();
  swift_getKeyPath();
  swift_getKeyPath();
  v13 = sub_264783EC4();
  v5 = v4;
  sub_26460CD50(v4, &qword_27FF767D0, &qword_26478AC98);
  v6 = type metadata accessor for SafetyCacheMapViewModel.AnnotationInfo.LocationInfo(0);
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 1, 1, v6);
  v8 = v1[5];
  sub_26460CD50(v5 + v8, &qword_27FF767D0, &qword_26478AC98);
  v7(v5 + v8, 1, 1, v6);
  v9 = v1[6];
  sub_26460CD50(v5 + v9, &qword_27FF767D0, &qword_26478AC98);
  v7(v5 + v9, 1, 1, v6);
  v10 = v1[7];
  sub_26460CD50(v5 + v10, &qword_27FF767D0, &qword_26478AC98);
  v7(v5 + v10, 1, 1, v6);
  v13();

  v11 = v0[1];

  return v11();
}

void sub_2646BF15C(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  [*a1 latitude];
  v7 = v6;
  [v5 longitude];
  v9 = v8;
  v10 = *(a2 + OBJC_IVAR____TtC15SafetyMonitorUI23SafetyCacheMapViewModel_contact);
  v11 = v10;
  v12 = [v5 date];
  v13 = type metadata accessor for SafetyCacheMapView.Annotation(0);
  sub_264783AC4();

  *a3 = 0;
  *(a3 + 8) = v7;
  *(a3 + 16) = v9;
  *(a3 + 24) = 4;
  *(a3 + 32) = v10;
  v14 = a3 + *(v13 + 36);
  *v14 = 0;
  *(v14 + 8) = 1;
}

uint64_t sub_2646BF230(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v44 = type metadata accessor for SafetyCacheMapView.Annotation(0);
  v7 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF766A8, &unk_26478AA80);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v47 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v13);
  v45 = &v39 - v14;
  v43 = v15;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v16 = sub_264785C14();
  }

  else
  {
    v16 = *(a1 + 16);
  }

  v17 = *v3;
  v18 = *(*v3 + 16);
  v19 = v18 + v16;
  if (__OFADD__(v18, v16))
  {
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v46 = v9;
  if (!isUniquelyReferenced_nonNull_native || (v21 = v17[3] >> 1, v21 < v19))
  {
    if (v18 <= v19)
    {
      v22 = v18 + v16;
    }

    else
    {
      v22 = v18;
    }

    v17 = sub_2647031CC(isUniquelyReferenced_nonNull_native, v22, 1, v17);
    v21 = v17[3] >> 1;
  }

  v23 = v17[2];
  v19 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = *(v7 + 72);
  v24 = v21 - v23;
  v25 = sub_2646C5FEC(&v48, v17 + v19 + v9 * v23, v21 - v23, a1, a2, a3);
  if (v25 < v16)
  {
    goto LABEL_19;
  }

  if (v25 >= 1)
  {
    v26 = v17[2];
    v27 = __OFADD__(v26, v25);
    v28 = v26 + v25;
    if (v27)
    {
      __break(1u);
      goto LABEL_24;
    }

    v17[2] = v28;
  }

  if (v25 == v24)
  {
LABEL_20:
    v40 = v3;
    a1 = v17[2];
    v30 = v45;
    sub_2646C6B78(v45);
    v24 = v43;
    sub_26460CCE8(v30, v43, &qword_27FF766A8, &unk_26478AA80);
    v42 = *(v7 + 48);
    if (v42(v24, 1, v44) == 1)
    {
      v3 = v40;
LABEL_22:
      sub_26460CD50(v45, &qword_27FF766A8, &unk_26478AA80);
      sub_26467A824(v48);

      result = sub_26460CD50(v24, &qword_27FF766A8, &unk_26478AA80);
      goto LABEL_17;
    }

LABEL_24:
    v3 = v40;
    do
    {
      sub_26460CD50(v24, &qword_27FF766A8, &unk_26478AA80);
      v32 = v17[3];
      v33 = v32 >> 1;
      if ((v32 >> 1) < a1 + 1)
      {
        v17 = sub_2647031CC((v32 > 1), a1 + 1, 1, v17);
        v33 = v17[3] >> 1;
      }

      v34 = v47;
      sub_26460CCE8(v45, v47, &qword_27FF766A8, &unk_26478AA80);
      if (v42(v34, 1, v44) == 1)
      {
LABEL_25:
        sub_26460CD50(v47, &qword_27FF766A8, &unk_26478AA80);
        v31 = a1;
      }

      else
      {
        if (a1 <= v33)
        {
          v31 = v33;
        }

        else
        {
          v31 = a1;
        }

        v35 = v17 + v19 + v9 * a1;
        v41 = v31;
        while (1)
        {
          sub_2646C6920(v47, v46, type metadata accessor for SafetyCacheMapView.Annotation);
          if (v31 == a1)
          {
            break;
          }

          v36 = v45;
          sub_26460CD50(v45, &qword_27FF766A8, &unk_26478AA80);
          sub_2646C6920(v46, v35, type metadata accessor for SafetyCacheMapView.Annotation);
          sub_2646C6B78(v36);
          v37 = v36;
          v3 = v40;
          v31 = v41;
          v38 = v47;
          ++a1;
          sub_26460CCE8(v37, v47, &qword_27FF766A8, &unk_26478AA80);
          v35 += v9;
          if (v42(v38, 1, v44) == 1)
          {
            goto LABEL_25;
          }
        }

        sub_2646C68C0(v46, type metadata accessor for SafetyCacheMapView.Annotation);
        a1 = v31;
      }

      v17[2] = v31;
      v24 = v43;
      sub_26460CCE8(v45, v43, &qword_27FF766A8, &unk_26478AA80);
    }

    while (v42(v24, 1, v44) != 1);
    goto LABEL_22;
  }

  sub_26467A824(v48);

LABEL_17:
  *v3 = v17;
  return result;
}

void *sub_2646BF754(void *result)
{
  v4 = result[2];
  v5 = *v1;
  v6 = *(*v1 + 2);
  v7 = v6 + v4;
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v10 = *(v5 + 3) >> 1, v10 < v7))
  {
    if (v6 <= v7)
    {
      v11 = v6 + v4;
    }

    else
    {
      v11 = v6;
    }

    v5 = sub_2647034DC(isUniquelyReferenced_nonNull_native, v11, 1, v5);
    v10 = *(v5 + 3) >> 1;
  }

  v12 = *(v5 + 2);
  v13 = (v10 - v12);
  result = sub_2646C5E8C(v43, &v5[24 * v12 + 32], v10 - v12, v8);
  if (result < v4)
  {
    goto LABEL_16;
  }

  if (result)
  {
    v14 = *(v5 + 2);
    v15 = __OFADD__(v14, result);
    v16 = result + v14;
    if (v15)
    {
      __break(1u);
      while (1)
      {
LABEL_20:
        v19 = (v16 + 1);
        if (__OFADD__(v16, 1))
        {
          goto LABEL_45;
        }

        if (v19 >= ((v3 + 64) >> 6))
        {
          goto LABEL_43;
        }

        v18 = v13[v19];
        ++v16;
        if (v18)
        {
          goto LABEL_23;
        }
      }
    }

    *(v5 + 2) = v16;
  }

  if (result != v13)
  {
    v17 = v43[0];
LABEL_14:
    result = sub_26467A824(v17);
    *v1 = v5;
    return result;
  }

LABEL_17:
  v2 = *(v5 + 2);
  v13 = v43[1];
  v42 = v43[0];
  v3 = v43[2];
  v16 = v44;
  v18 = v45;
  if (!v45)
  {
    goto LABEL_20;
  }

  v19 = v44;
LABEL_23:
  v20 = (v18 - 1) & v18;
  v21 = *(v42 + 48) + 24 * (__clz(__rbit64(v18)) | (v19 << 6));
  v23 = *v21;
  v22 = *(v21 + 8);
  v24 = *(v21 + 16);
  result = *v21;
  if (!v23)
  {
LABEL_43:
    v17 = v42;
    goto LABEL_14;
  }

  v25 = (v3 + 64) >> 6;
  v26 = v19;
  while (1)
  {
    v27 = *(v5 + 3);
    v28 = v27 >> 1;
    if ((v27 >> 1) >= v2 + 1)
    {
      if (v2 < v28)
      {
        break;
      }

      goto LABEL_25;
    }

    v40 = result;
    v5 = sub_2647034DC((v27 > 1), v2 + 1, 1, v5);
    result = v40;
    v28 = *(v5 + 3) >> 1;
    if (v2 < v28)
    {
      break;
    }

LABEL_25:
    *(v5 + 2) = v2;
    if (!result)
    {
      goto LABEL_43;
    }
  }

  while (1)
  {
    v29 = &v5[24 * v2 + 32];
    *v29 = result;
    *(v29 + 8) = v22;
    *(v29 + 16) = v24;
    v30 = v2 + 1;
    if (!v20)
    {
      break;
    }

    v41 = v30;
    v31 = v28;
LABEL_35:
    v34 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    v35 = *(v42 + 48) + 24 * (v34 | (v26 << 6));
    v36 = v26;
    v37 = *v35;
    v22 = *(v35 + 8);
    v24 = *(v35 + 16);
    result = *v35;
    v38 = v37 == 0;
    v26 = v36;
    v28 = v31;
    v2 = v41;
    if (v38 || v41 >= v28)
    {
      goto LABEL_25;
    }
  }

  v32 = v26;
  while (1)
  {
    v33 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      break;
    }

    if (v33 >= v25)
    {
      *(v5 + 2) = v30;
      goto LABEL_43;
    }

    v20 = v13[v33];
    ++v32;
    if (v20)
    {
      v41 = v30;
      v31 = v28;
      v26 = v33;
      goto LABEL_35;
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
  return result;
}

uint64_t sub_2646BFA44(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76970, &qword_264789300);
  v2[14] = swift_task_alloc();
  sub_264783B94();
  v2[15] = swift_task_alloc();
  sub_264785704();
  v2[16] = swift_task_alloc();
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756B8, &qword_26478AC90) - 8);
  v2[17] = v3;
  v2[18] = *(v3 + 64);
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2646BFBB0, 0, 0);
}

uint64_t sub_2646BFBB0()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 160);
  v23 = *(v0 + 136);
  v24 = *(v0 + 144);
  v4 = *(v0 + 104);
  v3 = *(v0 + 112);
  v5 = *(v0 + 96);
  v6 = [v5 date];
  sub_264783AC4();

  v7 = sub_264783AF4();
  (*(*(v7 - 8) + 56))(v2, 0, 1, v7);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  v10 = sub_264785754();
  v21 = v11;
  v22 = v10;
  KeyPath = swift_getKeyPath();
  *(v0 + 40) = sub_264659B70(0, &qword_27FF75E80, 0x277D4AB28);
  *(v0 + 48) = &protocol witness table for SMLocation;
  *(v0 + 16) = v5;
  v13 = v5;
  sub_2647858C4();
  v14 = sub_2647858E4();
  v15 = v3;
  (*(*(v14 - 8) + 56))(v3, 0, 1, v14);
  sub_264689A40(v0 + 16, v0 + 56);
  sub_26460CCE8(v2, v1, &qword_27FF756B8, &qword_26478AC90);
  v16 = (*(v23 + 80) + 104) & ~*(v23 + 80);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  sub_264689B0C((v0 + 56), (v17 + 4));
  v17[9] = KeyPath;
  v17[10] = v4;
  v17[11] = v22;
  v17[12] = v21;
  sub_26460CF84(v1, v17 + v16);
  *(v17 + v16 + v24) = 1;

  v18 = v4;
  sub_264635430(0, 0, v15, &unk_26478D768, v17);

  sub_26460CD50(v2, &qword_27FF756B8, &qword_26478AC90);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_2646BFEF0(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76970, &qword_264789300);
  v2[14] = swift_task_alloc();
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756B8, &qword_26478AC90) - 8);
  v2[15] = v3;
  v2[16] = *(v3 + 64);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  sub_264783B94();
  v2[19] = swift_task_alloc();
  sub_264785704();
  v2[20] = swift_task_alloc();
  sub_2647856E4();
  v2[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2646C0088, 0, 0);
}

uint64_t sub_2646C0088(uint64_t a1)
{
  v2 = *(v1 + 104);
  if (*(v2 + OBJC_IVAR____TtC15SafetyMonitorUI23SafetyCacheMapViewModel_contact))
  {
    sub_264785B14();
LABEL_5:
    sub_2647856D4();
    sub_2647856C4();
    sub_2647856B4();

    sub_2647856C4();
    sub_2647856F4();
    sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v4 = [objc_opt_self() bundleForClass_];
    sub_264783B84();
    goto LABEL_6;
  }

  if (*(v2 + OBJC_IVAR____TtC15SafetyMonitorUI23SafetyCacheMapViewModel_handle + 8))
  {

    goto LABEL_5;
  }

  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  v23 = swift_getObjCClassFromMetadata();
  v24 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
LABEL_6:
  v5 = *(v1 + 144);
  v6 = *(v1 + 136);
  v25 = *(v1 + 128);
  v7 = *(v1 + 112);
  v8 = *(v1 + 120);
  v10 = *(v1 + 96);
  v9 = *(v1 + 104);
  v11 = sub_264785754();
  v26 = v12;
  v27 = v11;
  v13 = [v10 date];
  sub_264783AC4();

  v14 = sub_264783AF4();
  (*(*(v14 - 8) + 56))(v5, 0, 1, v14);
  KeyPath = swift_getKeyPath();
  *(v1 + 40) = sub_264659B70(0, &qword_27FF75E80, 0x277D4AB28);
  *(v1 + 48) = &protocol witness table for SMLocation;
  *(v1 + 16) = v10;
  v16 = v10;
  sub_2647858C4();
  v17 = sub_2647858E4();
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  sub_264689A40(v1 + 16, v1 + 56);
  sub_26460CCE8(v5, v6, &qword_27FF756B8, &qword_26478AC90);
  v18 = (*(v8 + 80) + 104) & ~*(v8 + 80);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  sub_264689B0C((v1 + 56), (v19 + 4));
  v19[9] = KeyPath;
  v19[10] = v9;
  v19[11] = v27;
  v19[12] = v26;
  sub_26460CF84(v6, v19 + v18);
  *(v19 + v18 + v25) = 1;

  v20 = v9;
  sub_264635430(0, 0, v7, &unk_26478D740, v19);

  sub_26460CD50(v5, &qword_27FF756B8, &qword_26478AC90);
  __swift_destroy_boxed_opaque_existential_0((v1 + 16));

  v21 = *(v1 + 8);

  return v21();
}

uint64_t sub_2646C04AC(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76970, &qword_264789300);
  v2[14] = swift_task_alloc();
  sub_264783B94();
  v2[15] = swift_task_alloc();
  sub_264785704();
  v2[16] = swift_task_alloc();
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756B8, &qword_26478AC90) - 8);
  v2[17] = v3;
  v2[18] = *(v3 + 64);
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2646C0618, 0, 0);
}

uint64_t sub_2646C0618()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 160);
  v23 = *(v0 + 136);
  v24 = *(v0 + 144);
  v4 = *(v0 + 104);
  v3 = *(v0 + 112);
  v5 = *(v0 + 96);
  v6 = [v5 date];
  sub_264783AC4();

  v7 = sub_264783AF4();
  (*(*(v7 - 8) + 56))(v2, 0, 1, v7);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  v10 = sub_264785754();
  v21 = v11;
  v22 = v10;
  KeyPath = swift_getKeyPath();
  *(v0 + 40) = sub_264659B70(0, &qword_27FF75E80, 0x277D4AB28);
  *(v0 + 48) = &protocol witness table for SMLocation;
  *(v0 + 16) = v5;
  v13 = v5;
  sub_2647858C4();
  v14 = sub_2647858E4();
  v15 = v3;
  (*(*(v14 - 8) + 56))(v3, 0, 1, v14);
  sub_264689A40(v0 + 16, v0 + 56);
  sub_26460CCE8(v2, v1, &qword_27FF756B8, &qword_26478AC90);
  v16 = (*(v23 + 80) + 104) & ~*(v23 + 80);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  sub_264689B0C((v0 + 56), (v17 + 4));
  v17[9] = KeyPath;
  v17[10] = v4;
  v17[11] = v22;
  v17[12] = v21;
  sub_26460CF84(v1, v17 + v16);
  *(v17 + v16 + v24) = 1;

  v18 = v4;
  sub_264635430(0, 0, v15, &unk_26478D680, v17);

  sub_26460CD50(v2, &qword_27FF756B8, &qword_26478AC90);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_2646C0950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[34] = a5;
  v6[35] = a6;
  v6[33] = a4;
  v7 = sub_264783E24();
  v6[36] = v7;
  v6[37] = *(v7 - 8);
  v6[38] = swift_task_alloc();
  v6[39] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76970, &qword_264789300);
  v6[40] = swift_task_alloc();
  sub_264783B94();
  v6[41] = swift_task_alloc();
  sub_264785704();
  v6[42] = swift_task_alloc();
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756B8, &qword_26478AC90) - 8);
  v6[43] = v8;
  v6[44] = *(v8 + 64);
  v6[45] = swift_task_alloc();
  v6[46] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2646C0B28, 0, 0);
}

uint64_t sub_2646C0B28()
{
  v1 = objc_opt_self();
  v2 = sub_264783A04();
  v0[47] = v2;
  v0[2] = v0;
  v0[7] = v0 + 31;
  v0[3] = sub_2646C0C74;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77590, &qword_26478D788);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_26463F8C4;
  v0[13] = &block_descriptor_9;
  v0[14] = v3;
  [v1 _mapItemFromHandle_completionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2646C0C74()
{
  v1 = *(*v0 + 48);
  *(*v0 + 384) = v1;
  if (v1)
  {
    v2 = sub_2646C12F4;
  }

  else
  {
    v2 = sub_2646C0D84;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2646C0D84()
{
  v51 = v0;
  v1 = *(v0 + 248);

  if (v1)
  {
    v3 = *(v0 + 360);
    v2 = *(v0 + 368);
    v4 = *(v0 + 344);
    v48 = *(v0 + 352);
    v5 = *(v0 + 320);
    v6 = *(v0 + 280);
    [v1 _coordinate];
    v8 = v7;
    [v1 _coordinate];
    v10 = v9;
    v11 = sub_264783AF4();
    (*(*(v11 - 8) + 56))(v2, 1, 1, v11);
    sub_264785694();
    sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v13 = [objc_opt_self() bundleForClass_];
    sub_264783B84();
    v14 = sub_264785754();
    v45 = v15;
    v46 = v14;
    KeyPath = swift_getKeyPath();
    type metadata accessor for CLLocationCoordinate2D(0);
    *(v0 + 144) = v8;
    *(v0 + 168) = v17;
    *(v0 + 176) = &protocol witness table for CLLocationCoordinate2D;
    *(v0 + 152) = v10;
    sub_2647858C4();
    v18 = sub_2647858E4();
    (*(*(v18 - 8) + 56))(v5, 0, 1, v18);
    sub_264689A40(v0 + 144, v0 + 184);
    sub_26460CCE8(v2, v3, &qword_27FF756B8, &qword_26478AC90);
    v19 = (*(v4 + 80) + 104) & ~*(v4 + 80);
    v20 = swift_allocObject();
    v20[2] = 0;
    v20[3] = 0;
    sub_264689B0C((v0 + 184), (v20 + 4));
    v20[9] = KeyPath;
    v20[10] = v6;
    v20[11] = v46;
    v20[12] = v45;
    sub_26460CF84(v3, v20 + v19);
    *(v20 + v19 + v48) = 1;

    v21 = v6;
    sub_264635430(0, 0, v5, &unk_26478D7C0, v20);

    sub_26460CD50(v2, &qword_27FF756B8, &qword_26478AC90);
    __swift_destroy_boxed_opaque_existential_0((v0 + 144));
  }

  else
  {
    v22 = *(v0 + 320);
    v23 = *(v0 + 280);
    v24 = sub_2647858E4();
    (*(*(v24 - 8) + 56))(v22, 1, 1, v24);
    v25 = swift_allocObject();
    v25[2] = 0;
    v25[3] = 0;
    v25[4] = v23;
    v26 = v23;
    sub_264635430(0, 0, v22, &unk_26478D798, v25);

    sub_264783E04();
    v27 = v26;
    v28 = sub_264783E14();
    v29 = sub_2647859D4();

    v30 = os_log_type_enabled(v28, v29);
    v31 = *(v0 + 312);
    v33 = *(v0 + 288);
    v32 = *(v0 + 296);
    if (v30)
    {
      v49 = *(v0 + 312);
      v34 = *(v0 + 280);
      v47 = *(v0 + 288);
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v50[0] = v36;
      *v35 = 136315394;
      v37 = v34;
      v38 = [v37 description];
      v39 = sub_264785724();
      v41 = v40;

      v42 = sub_2646DF234(v39, v41, v50);

      *(v35 + 4) = v42;
      *(v35 + 12) = 2080;
      *(v35 + 14) = sub_2646DF234(0xD000000000000016, 0x8000000264797850, v50);
      _os_log_impl(&dword_264605000, v28, v29, "#SafetyCacheMapViewModel, %s, %s: Fail to resolve destination map item", v35, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266740650](v36, -1, -1);
      MEMORY[0x266740650](v35, -1, -1);

      (*(v32 + 8))(v49, v47);
    }

    else
    {

      (*(v32 + 8))(v31, v33);
    }
  }

  v43 = *(v0 + 8);

  return v43();
}

uint64_t sub_2646C12F4(uint64_t a1)
{
  v31 = v1;
  v2 = *(v1 + 376);
  v3 = *(v1 + 384);
  v4 = *(v1 + 280);
  swift_willThrow();

  sub_264783E04();
  v5 = v4;
  v6 = v3;
  v7 = sub_264783E14();
  v8 = sub_2647859D4();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v1 + 296);
    v29 = *(v1 + 304);
    v10 = *(v1 + 280);
    v27 = *(v1 + 384);
    v28 = *(v1 + 288);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v30[0] = v12;
    *v11 = 136315650;
    v13 = v10;
    v14 = [v13 description];
    v15 = sub_264785724();
    v17 = v16;

    v18 = sub_2646DF234(v15, v17, v30);

    *(v11 + 4) = v18;
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_2646DF234(0xD000000000000016, 0x8000000264797850, v30);
    *(v11 + 22) = 2080;
    swift_getErrorValue();
    v19 = sub_264785EF4();
    v21 = sub_2646DF234(v19, v20, v30);

    *(v11 + 24) = v21;
    _os_log_impl(&dword_264605000, v7, v8, "#SafetyCacheMapViewModel, %s, %s: Error resolving map item from map data handle, error: %s", v11, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v12, -1, -1);
    MEMORY[0x266740650](v11, -1, -1);

    (*(v9 + 8))(v29, v28);
  }

  else
  {
    v23 = *(v1 + 296);
    v22 = *(v1 + 304);
    v24 = *(v1 + 288);

    (*(v23 + 8))(v22, v24);
  }

  v25 = *(v1 + 8);

  return v25();
}

uint64_t sub_2646C15BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 48) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF767D0, &qword_26478AC98);
  *(v4 + 56) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2646C1658, 0, 0);
}

uint64_t sub_2646C1658()
{
  sub_2647858B4();
  *(v0 + 64) = sub_2647858A4();
  v2 = sub_264785874();

  return MEMORY[0x2822009F8](sub_2646C16EC, v2, v1);
}

uint64_t sub_2646C16EC()
{
  v1 = *(v0 + 56);

  v2 = type metadata accessor for SafetyCacheMapViewModel.AnnotationInfo.LocationInfo(0);
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = sub_264783EC4();
  sub_264659660(v1, v4, &qword_27FF767D0, &qword_26478AC98);
  v3(v0 + 16, 0);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_2646C1820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 488) = v17;
  *(v8 + 280) = a8;
  *(v8 + 288) = v16;
  *(v8 + 264) = a6;
  *(v8 + 272) = a7;
  *(v8 + 248) = a4;
  *(v8 + 256) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76970, &qword_264789300);
  *(v8 + 296) = swift_task_alloc();
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756B8, &qword_26478AC90) - 8);
  *(v8 + 304) = v9;
  *(v8 + 312) = *(v9 + 64);
  *(v8 + 320) = swift_task_alloc();
  v10 = type metadata accessor for SafetyCacheMapViewModel.AnnotationInfo.LocationInfo(0);
  *(v8 + 328) = v10;
  v11 = *(v10 - 8);
  *(v8 + 336) = v11;
  *(v8 + 344) = *(v11 + 64);
  *(v8 + 352) = swift_task_alloc();
  *(v8 + 360) = swift_task_alloc();
  *(v8 + 368) = swift_task_alloc();
  v12 = sub_264783AF4();
  *(v8 + 376) = v12;
  *(v8 + 384) = *(v12 - 8);
  *(v8 + 392) = swift_task_alloc();
  v13 = sub_264783E24();
  *(v8 + 400) = v13;
  *(v8 + 408) = *(v13 - 8);
  *(v8 + 416) = swift_task_alloc();
  *(v8 + 424) = swift_task_alloc();
  *(v8 + 432) = swift_task_alloc();
  *(v8 + 440) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2646C1A98, 0, 0);
}

uint64_t sub_2646C1A98(uint64_t a1)
{
  v44 = v1;
  v2 = v1[31];
  sub_264783E04();
  sub_264689A40(v2, (v1 + 2));

  v3 = sub_264783E14();
  v4 = sub_2647859F4();

  if (os_log_type_enabled(v3, v4))
  {
    v42 = v1[55];
    v6 = v1[50];
    v5 = v1[51];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v43 = v8;
    *v7 = 136643075;
    sub_264689A40((v1 + 2), (v1 + 22));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77588, &qword_26478D6A8);
    v9 = sub_264785764();
    v11 = v10;
    __swift_destroy_boxed_opaque_existential_0(v1 + 2);
    v12 = sub_2646DF234(v9, v11, &v43);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2080;
    v13 = sub_264785BB4();
    v15 = sub_2646DF234(v13, v14, &v43);

    *(v7 + 14) = v15;
    _os_log_impl(&dword_264605000, v3, v4, "#SafetyCacheMapViewModel: Trying to resolve location for %{sensitive}s (key path: %s)", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v8, -1, -1);
    MEMORY[0x266740650](v7, -1, -1);

    (*(v5 + 8))(v42, v6);
  }

  else
  {
    v16 = v1[55];
    v17 = v1[50];
    v18 = v1[51];

    __swift_destroy_boxed_opaque_existential_0(v1 + 2);
    (*(v18 + 8))(v16, v17);
  }

  v20 = v1[48];
  v19 = v1[49];
  v21 = v1[47];
  v22 = v1[31];
  v23 = v22[3];
  v24 = v22[4];
  __swift_project_boxed_opaque_existential_0(v22, v23);
  v25 = (*(v24 + 8))(v23, v24);
  v26 = v22[3];
  v27 = v22[4];
  __swift_project_boxed_opaque_existential_0(v22, v26);
  v28 = (*(v27 + 16))(v26, v27);
  v29 = objc_opt_self();
  v30 = v22[3];
  v31 = v22[4];
  __swift_project_boxed_opaque_existential_0(v22, v30);
  v32 = (*(v31 + 8))(v30, v31);
  v33 = v22[3];
  v34 = v22[4];
  __swift_project_boxed_opaque_existential_0(v22, v33);
  if ([v29 isLocationShiftRequiredForCoordinate_])
  {
    v35 = 2;
  }

  else
  {
    v35 = 1;
  }

  sub_264783AE4();
  v36 = objc_allocWithZone(MEMORY[0x277CE41F8]);
  v37 = sub_264783A64();
  v38 = [v36 initWithCoordinate:v37 altitude:v35 horizontalAccuracy:v25 verticalAccuracy:v28 timestamp:0.0 referenceFrame:{0.0, -1.0}];
  v1[56] = v38;

  (*(v20 + 8))(v19, v21);
  v39 = [objc_allocWithZone(MEMORY[0x277CBFBE8]) init];
  v1[57] = v39;
  v40 = swift_task_alloc();
  v1[58] = v40;
  *v40 = v1;
  v40[1] = sub_2646C1EC8;

  return CachedGeocoder.placemark(forKey:with:)(v38, v39);
}

uint64_t sub_2646C1EC8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 472) = a1;
  *(v3 + 480) = v1;

  if (v1)
  {
    v4 = sub_2646C266C;
  }

  else
  {

    v4 = sub_2646C1FE4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2646C1FE4(uint64_t a1)
{
  v68 = v1;
  v2 = v1[59];
  if (v2)
  {
    v3 = v1[47];
    v4 = v1[48];
    v5 = v1[46];
    v64 = v1[45];
    v6 = v1[40];
    v7 = v1[41];
    v8 = v1[35];
    v9 = v1[34];
    sub_26460CCE8(v1[36], v6, &qword_27FF756B8, &qword_26478AC90);
    v10 = *(v7 + 24);
    (*(v4 + 56))(&v5[v10], 1, 1, v3);
    *v5 = v9;
    *(v5 + 1) = v8;
    *(v5 + 2) = v2;

    sub_264659660(v6, &v5[v10], &qword_27FF756B8, &qword_26478AC90);
    sub_264783E04();
    sub_2646C6858(v5, v64, type metadata accessor for SafetyCacheMapViewModel.AnnotationInfo.LocationInfo);

    v11 = sub_264783E14();
    v12 = sub_2647859F4();

    v13 = os_log_type_enabled(v11, v12);
    v14 = v1[54];
    v16 = v1[50];
    v15 = v1[51];
    v17 = v1[45];
    if (v13)
    {
      v65 = v1[50];
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v67 = v19;
      *v18 = 136643075;
      v20 = sub_2646BB4C0();
      v63 = v14;
      v22 = v21;
      sub_2646C68C0(v17, type metadata accessor for SafetyCacheMapViewModel.AnnotationInfo.LocationInfo);
      v23 = sub_2646DF234(v20, v22, &v67);

      *(v18 + 4) = v23;
      *(v18 + 12) = 2080;
      v24 = sub_264785BB4();
      v26 = sub_2646DF234(v24, v25, &v67);

      *(v18 + 14) = v26;
      _os_log_impl(&dword_264605000, v11, v12, "#SafetyCacheMapViewModel: setting last unlock location name: %{sensitive}s (key path: %s)", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266740650](v19, -1, -1);
      MEMORY[0x266740650](v18, -1, -1);

      (*(v15 + 8))(v63, v65);
    }

    else
    {

      sub_2646C68C0(v17, type metadata accessor for SafetyCacheMapViewModel.AnnotationInfo.LocationInfo);
      (*(v15 + 8))(v14, v16);
    }

    v43 = v1[56];
    v44 = v1[46];
    v45 = v1[44];
    v46 = v1[42];
    v47 = v1[37];
    v48 = v1[32];
    v49 = v1[33];
    v50 = sub_2647858E4();
    (*(*(v50 - 8) + 56))(v47, 1, 1, v50);
    sub_2646C6858(v44, v45, type metadata accessor for SafetyCacheMapViewModel.AnnotationInfo.LocationInfo);
    v51 = (*(v46 + 80) + 48) & ~*(v46 + 80);
    v52 = swift_allocObject();
    v52[2] = 0;
    v52[3] = 0;
    v52[4] = v49;
    v52[5] = v48;
    sub_2646C6920(v45, v52 + v51, type metadata accessor for SafetyCacheMapViewModel.AnnotationInfo.LocationInfo);

    v53 = v49;
    sub_264635430(0, 0, v47, &unk_26478D6B8, v52);

    sub_2646C68C0(v44, type metadata accessor for SafetyCacheMapViewModel.AnnotationInfo.LocationInfo);
  }

  else
  {
    v27 = v1[31];
    sub_264783E04();
    sub_264689A40(v27, (v1 + 12));

    v28 = sub_264783E14();
    v29 = sub_2647859D4();

    v30 = os_log_type_enabled(v28, v29);
    v31 = v1[53];
    v33 = v1[50];
    v32 = v1[51];
    if (v30)
    {
      v66 = v1[53];
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v67 = v35;
      *v34 = 136643075;
      sub_264689A40((v1 + 12), (v1 + 17));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77588, &qword_26478D6A8);
      v36 = sub_264785764();
      v38 = v37;
      __swift_destroy_boxed_opaque_existential_0(v1 + 12);
      v39 = sub_2646DF234(v36, v38, &v67);

      *(v34 + 4) = v39;
      *(v34 + 12) = 2080;
      v40 = sub_264785BB4();
      v42 = sub_2646DF234(v40, v41, &v67);

      *(v34 + 14) = v42;
      _os_log_impl(&dword_264605000, v28, v29, "#SafetyCacheMapViewModel: No result for reverse geo returned for location: %{sensitive}s (key path: %s).", v34, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266740650](v35, -1, -1);
      MEMORY[0x266740650](v34, -1, -1);

      (*(v32 + 8))(v66, v33);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0(v1 + 12);
      (*(v32 + 8))(v31, v33);
    }

    v54 = v1[56];
    v55 = v1[37];
    v56 = v1[32];
    v57 = v1[33];
    v58 = sub_2647858E4();
    (*(*(v58 - 8) + 56))(v55, 1, 1, v58);
    v59 = swift_allocObject();
    v59[2] = 0;
    v59[3] = 0;
    v59[4] = v57;
    v59[5] = v56;

    v60 = v57;
    sub_264635430(0, 0, v55, &unk_26478D6A0, v59);
  }

  v61 = v1[1];

  return v61();
}

uint64_t sub_2646C266C()
{
  v42 = v0;
  v1 = *(v0 + 480);

  sub_264783E04();

  v2 = v1;
  v3 = sub_264783E14();
  v4 = sub_2647859D4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 408);
    v39 = *(v0 + 416);
    v6 = *(v0 + 400);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v41 = v8;
    *v7 = 136315394;
    swift_getErrorValue();
    v9 = sub_264785EF4();
    v11 = sub_2646DF234(v9, v10, &v41);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    v12 = sub_264785BB4();
    v14 = sub_2646DF234(v12, v13, &v41);

    *(v7 + 14) = v14;
    _os_log_impl(&dword_264605000, v3, v4, "#SafetyCacheMapViewModel: Failed to reverse geocode for location: %s (key path: %s)", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v8, -1, -1);
    MEMORY[0x266740650](v7, -1, -1);

    (*(v5 + 8))(v39, v6);
  }

  else
  {
    v16 = *(v0 + 408);
    v15 = *(v0 + 416);
    v17 = *(v0 + 400);

    (*(v16 + 8))(v15, v17);
  }

  v18 = *(v0 + 480);
  v20 = *(v0 + 312);
  v19 = *(v0 + 320);
  v22 = *(v0 + 296);
  v21 = *(v0 + 304);
  v40 = *(v0 + 448);
  v36 = *(v0 + 488);
  v23 = *(v0 + 280);
  v24 = *(v0 + 288);
  v37 = *(v0 + 264);
  v38 = *(v0 + 272);
  v26 = *(v0 + 248);
  v25 = *(v0 + 256);
  v27 = sub_2647858E4();
  (*(*(v27 - 8) + 56))(v22, 1, 1, v27);
  sub_264689A40(v26, v0 + 56);
  sub_26460CCE8(v24, v19, &qword_27FF756B8, &qword_26478AC90);
  v28 = (*(v21 + 80) + 96) & ~*(v21 + 80);
  v29 = (v20 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  *(v30 + 16) = 0;
  *(v30 + 24) = 0;
  *(v30 + 32) = v18;
  *(v30 + 40) = v36;
  sub_264689B0C((v0 + 56), v30 + 48);
  *(v30 + 88) = v37;
  sub_26460CF84(v19, v30 + v28);
  v31 = (v30 + v29);
  *v31 = v38;
  v31[1] = v23;
  *(v30 + ((v29 + 23) & 0xFFFFFFFFFFFFFFF8)) = v25;

  v32 = v37;
  v33 = v18;
  sub_264635430(0, 0, v22, &unk_26478D690, v30);

  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_2646C2A5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF767D0, &qword_26478AC98);
  v5[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2646C2AF8, 0, 0);
}

uint64_t sub_2646C2AF8()
{
  sub_2647858B4();
  *(v0 + 72) = sub_2647858A4();
  v2 = sub_264785874();

  return MEMORY[0x2822009F8](sub_2646C2B8C, v2, v1);
}

uint64_t sub_2646C2B8C()
{
  v1 = *(v0 + 64);

  v2 = type metadata accessor for SafetyCacheMapViewModel.AnnotationInfo.LocationInfo(0);
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = sub_264783EC4();
  swift_setAtWritableKeyPath();
  v3(v0 + 16, 0);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2646C2CB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[6] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF767D0, &qword_26478AC98);
  v6[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2646C2D58, 0, 0);
}

uint64_t sub_2646C2D58()
{
  sub_2647858B4();
  *(v0 + 80) = sub_2647858A4();
  v2 = sub_264785874();

  return MEMORY[0x2822009F8](sub_2646C2DEC, v2, v1);
}

uint64_t sub_2646C2DEC()
{
  v1 = v0[9];
  v2 = v0[8];

  sub_2646C6858(v2, v1, type metadata accessor for SafetyCacheMapViewModel.AnnotationInfo.LocationInfo);
  v3 = type metadata accessor for SafetyCacheMapViewModel.AnnotationInfo.LocationInfo(0);
  (*(*(v3 - 8) + 56))(v1, 0, 1, v3);
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = sub_264783EC4();
  swift_setAtWritableKeyPath();
  v4(v0 + 2, 0);

  v5 = v0[1];

  return v5();
}

uint64_t sub_2646C2F3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 208) = v13;
  *(v8 + 192) = v12;
  *(v8 + 176) = a7;
  *(v8 + 184) = a8;
  *(v8 + 272) = a5;
  *(v8 + 160) = a4;
  *(v8 + 168) = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF767D0, &qword_26478AC98);
  *(v8 + 216) = swift_task_alloc();
  v9 = sub_264783E24();
  *(v8 + 224) = v9;
  *(v8 + 232) = *(v9 - 8);
  *(v8 + 240) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2646C3050, 0, 0);
}

uint64_t sub_2646C3050()
{
  v1 = *(v0 + 160);
  *(v0 + 128) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75EE0, &qword_264789888);
  type metadata accessor for CLError(0);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 136);
    *(v0 + 144) = v3;
    *(v0 + 248) = v3;
    sub_2646C49F4();
    sub_264783954();
    if (*(v0 + 152) == 2 && (*(v0 + 272) & 1) != 0)
    {
      v4 = (v0 + 16);
      v5 = *(v0 + 168);
      sub_264783E04();
      sub_264689A40(v5, v0 + 16);
      v6 = sub_264783E14();
      v7 = sub_2647859D4();
      v8 = os_log_type_enabled(v6, v7);
      v9 = *(v0 + 232);
      v10 = *(v0 + 240);
      v11 = *(v0 + 224);
      if (v8)
      {
        v12 = swift_slowAlloc();
        v30 = v10;
        v13 = swift_slowAlloc();
        v32 = v13;
        *v12 = 136642819;
        sub_264689A40(v4, v0 + 56);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77588, &qword_26478D6A8);
        v14 = sub_264785764();
        v16 = v15;
        __swift_destroy_boxed_opaque_existential_0(v4);
        v17 = sub_2646DF234(v14, v16, &v32);

        *(v12 + 4) = v17;
        _os_log_impl(&dword_264605000, v6, v7, "#SafetyCacheMapViewModel: retrying reverse resolve location: %{sensitive}s because of network error", v12, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v13);
        MEMORY[0x266740650](v13, -1, -1);
        MEMORY[0x266740650](v12, -1, -1);

        (*(v9 + 8))(v30, v11);
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_0((v0 + 16));
        (*(v9 + 8))(v10, v11);
      }

      v20 = *(v0 + 168);
      v21 = v20[3];
      v22 = __swift_project_boxed_opaque_existential_0(v20, v21);
      v23 = swift_task_alloc();
      *(v0 + 256) = v23;
      *v23 = v0;
      v23[1] = sub_2646C3394;
      v24 = *(v0 + 200);
      v25 = *(v0 + 208);
      v26 = *(v0 + 184);
      v27 = *(v0 + 192);
      v28 = *(v0 + 176);

      return sub_2646C6250(v22, v26, v27, v24, v25, 0, v28, v21);
    }
  }

  sub_2647858B4();
  *(v0 + 264) = sub_2647858A4();
  v19 = sub_264785874();

  return MEMORY[0x2822009F8](sub_2646C3504, v19, v18);
}

uint64_t sub_2646C3394()
{

  return MEMORY[0x2822009F8](sub_2646C3490, 0, 0);
}

uint64_t sub_2646C3490()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2646C3504()
{
  v1 = *(v0 + 216);

  v2 = type metadata accessor for SafetyCacheMapViewModel.AnnotationInfo.LocationInfo(0);
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = sub_264783EC4();
  swift_setAtWritableKeyPath();
  v3(v0 + 96, 0);

  v4 = *(v0 + 8);

  return v4();
}

id sub_2646C3670()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SafetyCacheMapViewModel(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_2646C37F4(uint64_t a1)
{
  sub_2646C3930(319);
  if (v1 <= 0x3F)
  {
    sub_2646C3C3C(319, &qword_27FF77558, type metadata accessor for SafetyCacheMapViewModel.AnnotationInfo, MEMORY[0x277CBCED0]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_2646C3930(uint64_t a1)
{
  if (!qword_27FF77550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF756F0, &qword_264787DE8);
    v1 = sub_264783EF4();
    if (!v2)
    {
      atomic_store(v1, &qword_27FF77550);
    }
  }
}

uint64_t sub_2646C39C8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756B8, &qword_26478AC90);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2646C3A98(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756B8, &qword_26478AC90);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_2646C3B68(uint64_t a1)
{
  sub_264659B70(319, &qword_27FF77F50, 0x277CBFC40);
  if (v1 <= 0x3F)
  {
    sub_2646C3C3C(319, &qword_27FF75DE8, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2646C3C3C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2646C3CB4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF767D0, &qword_26478AC98);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2646C3D40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF767D0, &qword_26478AC98);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_2646C3DBC(uint64_t a1)
{
  sub_2646C3C3C(319, &qword_27FF77580, type metadata accessor for SafetyCacheMapViewModel.AnnotationInfo.LocationInfo, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_2646C3E5C@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for SafetyCacheMapViewModel(0);
  result = sub_264783E64();
  *a2 = result;
  return result;
}

uint64_t sub_2646C3E9C@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_264783864();
    if (v10)
    {
      v11 = sub_264783884();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_264783874();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_264783864();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_264783884();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_264783874();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_2646C40CC(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_2646C6D2C(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_264655264(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_2646C3E9C(v13, a3, a4, &v12);
  v10 = v4;
  sub_264655264(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_2646C4268(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756B8, &qword_26478AC90);
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[9];
  v6 = v1[10];
  v7 = v1[11];
  v8 = v1[12];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_264611390;

  return sub_2646C1820(a1, v3, v4, (v1 + 4), v5, v6, v7, v8);
}

uint64_t sub_2646C43C0()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756B8, &qword_26478AC90) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 96) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0((v0 + 48));
  v5 = sub_264783AF4();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return MEMORY[0x2821FE8E8](v0, ((((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_2646C4520(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756B8, &qword_26478AC90) - 8);
  v4 = (*(v3 + 80) + 96) & ~*(v3 + 80);
  v5 = *(v1 + 24);
  v11 = *(v1 + 16);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 88);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_264611390;

  return sub_2646C2F3C(a1, v11, v5, v6, v7, v1 + 48, v8, v1 + v4);
}

uint64_t sub_2646C4698()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2646C46E0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_264611390;

  return sub_2646C2A5C(a1, v4, v5, v7, v6);
}

uint64_t sub_2646C47A0()
{
  v1 = (type metadata accessor for SafetyCacheMapViewModel.AnnotationInfo.LocationInfo(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(*v1 + 64);
  swift_unknownObjectRelease();

  v5 = v1[8];
  v6 = sub_264783AF4();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v3 + v5, 1, v6))
  {
    (*(v7 + 8))(v0 + v3 + v5, v6);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2646C48E8(uint64_t a1)
{
  v4 = *(type metadata accessor for SafetyCacheMapViewModel.AnnotationInfo.LocationInfo(0) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_264611390;

  return sub_2646C2CB8(a1, v6, v7, v8, v9, v1 + v5);
}

unint64_t sub_2646C49F4()
{
  result = qword_27FF75788;
  if (!qword_27FF75788)
  {
    type metadata accessor for CLError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF75788);
  }

  return result;
}

uint64_t sub_2646C4A4C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_264785E34();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for SafetyCacheMapView.Annotation(0);
        v6 = sub_264785834();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for SafetyCacheMapView.Annotation(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_2646C4DDC(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_2646C4B78(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2646C4B78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for SafetyCacheMapView.Annotation(0);
  v9 = MEMORY[0x28223BE20](v8);
  v35 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v27 - v12;
  result = MEMORY[0x28223BE20](v11);
  v17 = &v27 - v16;
  v29 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v21 = -v19;
    v22 = a1 - a3;
    v34 = v18;
    v28 = v19;
    v23 = v18 + v19 * a3;
LABEL_5:
    v32 = v20;
    v33 = a3;
    v30 = v23;
    v31 = v22;
    while (1)
    {
      sub_2646C6858(v23, v17, type metadata accessor for SafetyCacheMapView.Annotation);
      sub_2646C6858(v20, v13, type metadata accessor for SafetyCacheMapView.Annotation);
      v24 = sub_264783A84();
      sub_2646C68C0(v13, type metadata accessor for SafetyCacheMapView.Annotation);
      result = sub_2646C68C0(v17, type metadata accessor for SafetyCacheMapView.Annotation);
      if ((v24 & 1) == 0)
      {
LABEL_4:
        a3 = v33 + 1;
        v20 = v32 + v28;
        v22 = v31 - 1;
        v23 = v30 + v28;
        if (v33 + 1 == v29)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v34)
      {
        break;
      }

      v25 = v35;
      sub_2646C6920(v23, v35, type metadata accessor for SafetyCacheMapView.Annotation);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_2646C6920(v25, v20, type metadata accessor for SafetyCacheMapView.Annotation);
      v20 += v21;
      v23 += v21;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2646C4DDC(unint64_t *a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v6 = v4;
  v104 = a1;
  v9 = type metadata accessor for SafetyCacheMapView.Annotation(0);
  v112 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v107 = &v100 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v115 = &v100 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v116 = &v100 - v15;
  result = MEMORY[0x28223BE20](v14);
  v18 = &v100 - v17;
  v114 = a3;
  v19 = a3[1];
  if (v19 < 1)
  {
    v21 = MEMORY[0x277D84F90];
LABEL_95:
    v5 = *v104;
    if (!*v104)
    {
      goto LABEL_134;
    }

    a4 = v21;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
    }

    else
    {
LABEL_128:
      result = sub_2646F47DC(a4);
    }

    v118 = result;
    a4 = *(result + 16);
    if (a4 >= 2)
    {
      while (*v114)
      {
        v96 = *(result + 16 * a4);
        v97 = result;
        v98 = *(result + 16 * (a4 - 1) + 40);
        sub_2646C5740(*v114 + *(v112 + 72) * v96, *v114 + *(v112 + 72) * *(result + 16 * (a4 - 1) + 32), *v114 + *(v112 + 72) * v98, v5);
        if (v6)
        {
        }

        if (v98 < v96)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v97 = sub_2646F47DC(v97);
        }

        if (a4 - 2 >= *(v97 + 2))
        {
          goto LABEL_122;
        }

        v99 = &v97[16 * a4];
        *v99 = v96;
        *(v99 + 1) = v98;
        v118 = v97;
        sub_2646F4750(a4 - 1);
        result = v118;
        a4 = *(v118 + 16);
        if (a4 <= 1)
        {
        }
      }

      goto LABEL_132;
    }
  }

  v20 = 0;
  v21 = MEMORY[0x277D84F90];
  v103 = a4;
  v117 = v9;
  while (1)
  {
    v22 = v20;
    v23 = v20 + 1;
    v108 = v21;
    if (v20 + 1 >= v19)
    {
      v19 = v20 + 1;
    }

    else
    {
      v24 = *(v112 + 72);
      v5 = *v114 + v24 * v23;
      v110 = *v114;
      v25 = v110;
      sub_2646C6858(v110 + v24 * v23, v18, type metadata accessor for SafetyCacheMapView.Annotation);
      v26 = v25 + v24 * v22;
      v27 = v22;
      v28 = v116;
      sub_2646C6858(v26, v116, type metadata accessor for SafetyCacheMapView.Annotation);
      LODWORD(v111) = sub_264783A84();
      sub_2646C68C0(v28, type metadata accessor for SafetyCacheMapView.Annotation);
      result = sub_2646C68C0(v18, type metadata accessor for SafetyCacheMapView.Annotation);
      v102 = v27;
      v29 = v27 + 2;
      v113 = v24;
      v30 = v110 + v24 * (v27 + 2);
      while (v19 != v29)
      {
        sub_2646C6858(v30, v18, type metadata accessor for SafetyCacheMapView.Annotation);
        v31 = v116;
        sub_2646C6858(v5, v116, type metadata accessor for SafetyCacheMapView.Annotation);
        v32 = sub_264783A84() & 1;
        sub_2646C68C0(v31, type metadata accessor for SafetyCacheMapView.Annotation);
        result = sub_2646C68C0(v18, type metadata accessor for SafetyCacheMapView.Annotation);
        ++v29;
        v30 += v113;
        v5 += v113;
        if ((v111 & 1) != v32)
        {
          v19 = v29 - 1;
          break;
        }
      }

      v22 = v102;
      a4 = v103;
      if (v111)
      {
        if (v19 < v102)
        {
          goto LABEL_125;
        }

        if (v102 < v19)
        {
          v101 = v6;
          v33 = v113 * (v19 - 1);
          v34 = v19;
          v35 = v19 * v113;
          v111 = v19;
          v36 = v102;
          v37 = v102;
          v38 = v102 * v113;
          do
          {
            if (v36 != --v34)
            {
              v39 = *v114;
              if (!*v114)
              {
                goto LABEL_131;
              }

              v5 = v39 + v38;
              sub_2646C6920(v39 + v38, v107, type metadata accessor for SafetyCacheMapView.Annotation);
              if (v38 < v33 || v5 >= v39 + v35)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v38 != v33)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_2646C6920(v107, v39 + v33, type metadata accessor for SafetyCacheMapView.Annotation);
            }

            ++v36;
            v33 -= v113;
            v35 -= v113;
            v38 += v113;
          }

          while (v36 < v34);
          v6 = v101;
          a4 = v103;
          v22 = v37;
          v19 = v111;
        }
      }
    }

    v40 = v114[1];
    if (v19 < v40)
    {
      if (__OFSUB__(v19, v22))
      {
        goto LABEL_124;
      }

      if (v19 - v22 < a4)
      {
        if (__OFADD__(v22, a4))
        {
          goto LABEL_126;
        }

        if ((v22 + a4) >= v40)
        {
          v41 = v114[1];
        }

        else
        {
          v41 = v22 + a4;
        }

        if (v41 < v22)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v19 != v41)
        {
          break;
        }
      }
    }

    v20 = v19;
    if (v19 < v22)
    {
      goto LABEL_123;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v21 = v108;
    }

    else
    {
      result = sub_2646F48D4(0, *(v108 + 2) + 1, 1, v108);
      v21 = result;
    }

    a4 = *(v21 + 2);
    v42 = *(v21 + 3);
    v5 = a4 + 1;
    if (a4 >= v42 >> 1)
    {
      result = sub_2646F48D4((v42 > 1), a4 + 1, 1, v21);
      v21 = result;
    }

    *(v21 + 2) = v5;
    v43 = &v21[16 * a4];
    *(v43 + 4) = v22;
    *(v43 + 5) = v20;
    v44 = *v104;
    if (!*v104)
    {
      goto LABEL_133;
    }

    if (a4)
    {
      while (1)
      {
        v45 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v46 = *(v21 + 4);
          v47 = *(v21 + 5);
          v56 = __OFSUB__(v47, v46);
          v48 = v47 - v46;
          v49 = v56;
LABEL_52:
          if (v49)
          {
            goto LABEL_112;
          }

          v62 = &v21[16 * v5];
          v64 = *v62;
          v63 = *(v62 + 1);
          v65 = __OFSUB__(v63, v64);
          v66 = v63 - v64;
          v67 = v65;
          if (v65)
          {
            goto LABEL_115;
          }

          v68 = &v21[16 * v45 + 32];
          v70 = *v68;
          v69 = *(v68 + 1);
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v66, v71))
          {
            goto LABEL_119;
          }

          if (v66 + v71 >= v48)
          {
            if (v48 < v71)
            {
              v45 = v5 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v72 = &v21[16 * v5];
        v74 = *v72;
        v73 = *(v72 + 1);
        v56 = __OFSUB__(v73, v74);
        v66 = v73 - v74;
        v67 = v56;
LABEL_66:
        if (v67)
        {
          goto LABEL_114;
        }

        v75 = &v21[16 * v45];
        v77 = *(v75 + 4);
        v76 = *(v75 + 5);
        v56 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v56)
        {
          goto LABEL_117;
        }

        if (v78 < v66)
        {
          goto LABEL_3;
        }

LABEL_73:
        a4 = v45 - 1;
        if (v45 - 1 >= v5)
        {
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
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
          goto LABEL_127;
        }

        if (!*v114)
        {
          goto LABEL_130;
        }

        v83 = v21;
        v84 = *&v21[16 * a4 + 32];
        v5 = *&v21[16 * v45 + 40];
        sub_2646C5740(*v114 + *(v112 + 72) * v84, *v114 + *(v112 + 72) * *&v21[16 * v45 + 32], *v114 + *(v112 + 72) * v5, v44);
        if (v6)
        {
        }

        if (v5 < v84)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v83 = sub_2646F47DC(v83);
        }

        if (a4 >= *(v83 + 2))
        {
          goto LABEL_109;
        }

        v85 = &v83[16 * a4];
        *(v85 + 4) = v84;
        *(v85 + 5) = v5;
        v118 = v83;
        result = sub_2646F4750(v45);
        v21 = v118;
        v5 = *(v118 + 16);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v50 = &v21[16 * v5 + 32];
      v51 = *(v50 - 64);
      v52 = *(v50 - 56);
      v56 = __OFSUB__(v52, v51);
      v53 = v52 - v51;
      if (v56)
      {
        goto LABEL_110;
      }

      v55 = *(v50 - 48);
      v54 = *(v50 - 40);
      v56 = __OFSUB__(v54, v55);
      v48 = v54 - v55;
      v49 = v56;
      if (v56)
      {
        goto LABEL_111;
      }

      v57 = &v21[16 * v5];
      v59 = *v57;
      v58 = *(v57 + 1);
      v56 = __OFSUB__(v58, v59);
      v60 = v58 - v59;
      if (v56)
      {
        goto LABEL_113;
      }

      v56 = __OFADD__(v48, v60);
      v61 = v48 + v60;
      if (v56)
      {
        goto LABEL_116;
      }

      if (v61 >= v53)
      {
        v79 = &v21[16 * v45 + 32];
        v81 = *v79;
        v80 = *(v79 + 1);
        v56 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v56)
        {
          goto LABEL_120;
        }

        if (v48 < v82)
        {
          v45 = v5 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v19 = v114[1];
    a4 = v103;
    if (v20 >= v19)
    {
      goto LABEL_95;
    }
  }

  v101 = v6;
  v86 = v19;
  v87 = v22;
  v88 = *v114;
  v89 = *(v112 + 72);
  v90 = *v114 + v89 * (v19 - 1);
  v91 = -v89;
  v102 = v87;
  v92 = v87 - v19;
  v111 = v86;
  v105 = v89;
  v106 = v41;
  v5 = v88 + v86 * v89;
LABEL_85:
  v109 = v5;
  v110 = v92;
  v113 = v90;
  while (1)
  {
    sub_2646C6858(v5, v18, type metadata accessor for SafetyCacheMapView.Annotation);
    v93 = v116;
    sub_2646C6858(v90, v116, type metadata accessor for SafetyCacheMapView.Annotation);
    a4 = sub_264783A84();
    sub_2646C68C0(v93, type metadata accessor for SafetyCacheMapView.Annotation);
    result = sub_2646C68C0(v18, type metadata accessor for SafetyCacheMapView.Annotation);
    if ((a4 & 1) == 0)
    {
LABEL_84:
      v20 = v106;
      v90 = v113 + v105;
      v92 = v110 - 1;
      v5 = v109 + v105;
      if (++v111 != v106)
      {
        goto LABEL_85;
      }

      v6 = v101;
      v22 = v102;
      if (v106 < v102)
      {
        goto LABEL_123;
      }

      goto LABEL_33;
    }

    if (!v88)
    {
      break;
    }

    a4 = type metadata accessor for SafetyCacheMapView.Annotation;
    v94 = v115;
    sub_2646C6920(v5, v115, type metadata accessor for SafetyCacheMapView.Annotation);
    swift_arrayInitWithTakeFrontToBack();
    sub_2646C6920(v94, v90, type metadata accessor for SafetyCacheMapView.Annotation);
    v90 += v91;
    v5 += v91;
    if (__CFADD__(v92++, 1))
    {
      goto LABEL_84;
    }
  }

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
  return result;
}

uint64_t sub_2646C5740(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v45 = type metadata accessor for SafetyCacheMapView.Annotation(0);
  v8 = MEMORY[0x28223BE20](v45);
  v44 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v43 = &v35 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_62;
  }

  v15 = (a2 - a1) / v13;
  v48 = a1;
  v47 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v23 = a4 + v17;
    if (v17 >= 1)
    {
      v24 = -v13;
      v25 = a4 + v17;
      v39 = a1;
      v40 = a4;
      v38 = -v13;
      do
      {
        v36 = v23;
        v26 = a2;
        v27 = a2 + v24;
        v41 = v26;
        v42 = v27;
        while (1)
        {
          if (v26 <= a1)
          {
            v48 = v26;
            v46 = v36;
            goto LABEL_59;
          }

          v37 = v23;
          v29 = a3 + v24;
          v30 = v25 + v24;
          v31 = v43;
          sub_2646C6858(v30, v43, type metadata accessor for SafetyCacheMapView.Annotation);
          v32 = v44;
          sub_2646C6858(v27, v44, type metadata accessor for SafetyCacheMapView.Annotation);
          v33 = sub_264783A84();
          sub_2646C68C0(v32, type metadata accessor for SafetyCacheMapView.Annotation);
          sub_2646C68C0(v31, type metadata accessor for SafetyCacheMapView.Annotation);
          if (v33)
          {
            break;
          }

          v23 = v30;
          if (a3 < v25 || v29 >= v25)
          {
            a3 = v29;
            swift_arrayInitWithTakeFrontToBack();
            a1 = v39;
          }

          else
          {
            v34 = a3 == v25;
            a3 = v29;
            a1 = v39;
            if (!v34)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v25 = v30;
          v26 = v41;
          v28 = v30 > v40;
          v27 = v42;
          v24 = v38;
          if (!v28)
          {
            a2 = v41;
            goto LABEL_58;
          }
        }

        if (a3 < v41 || v29 >= v41)
        {
          a3 = v29;
          a2 = v42;
          swift_arrayInitWithTakeFrontToBack();
          v24 = v38;
          a1 = v39;
          v23 = v37;
        }

        else
        {
          v34 = a3 == v41;
          a3 = v29;
          a2 = v42;
          v24 = v38;
          a1 = v39;
          v23 = v37;
          if (!v34)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v25 > v40);
    }

LABEL_58:
    v48 = a2;
    v46 = v23;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v42 = a4 + v16;
    v46 = a4 + v16;
    if (v16 >= 1 && a2 < a3)
    {
      do
      {
        v19 = a3;
        v20 = v43;
        sub_2646C6858(a2, v43, type metadata accessor for SafetyCacheMapView.Annotation);
        v21 = v44;
        sub_2646C6858(a4, v44, type metadata accessor for SafetyCacheMapView.Annotation);
        v22 = sub_264783A84();
        sub_2646C68C0(v21, type metadata accessor for SafetyCacheMapView.Annotation);
        sub_2646C68C0(v20, type metadata accessor for SafetyCacheMapView.Annotation);
        if (v22)
        {
          if (a1 < a2 || a1 >= a2 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 += v13;
            a3 = v19;
          }

          else
          {
            a3 = v19;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 += v13;
          }
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
            a3 = v19;
          }

          else
          {
            a3 = v19;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v47 = a4 + v13;
          a4 += v13;
        }

        a1 += v13;
        v48 = a1;
      }

      while (a4 < v42 && a2 < a3);
    }
  }

LABEL_59:
  sub_2646F47F0(&v48, &v47, &v46);
  return 1;
}

void *sub_2646C5C70(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v10 = 0;
    v18 = -1 << *(v4 + 32);
    v8 = v4 + 56;
    v9 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v11 = v20 & *(v4 + 56);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v12 = 0;
    goto LABEL_32;
  }

  sub_264785C04();
  sub_264659B70(0, &qword_27FF75E80, 0x277D4AB28);
  sub_26467A890();
  result = sub_264785984();
  v4 = v25;
  v8 = v26;
  v9 = v27;
  v10 = v28;
  v11 = v29;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v12 = 0;
    goto LABEL_32;
  }

  if (a3 < 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v22 = v9;
  v23 = v7;
  v12 = 0;
  v13 = (v9 + 64) >> 6;
  v7 = 1;
  while (1)
  {
    if (v4 < 0)
    {
      if (!sub_264785C44())
      {
        goto LABEL_30;
      }

      sub_264659B70(0, &qword_27FF75E80, 0x277D4AB28);
      swift_dynamicCast();
      result = v24;
      if (!v24)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v14 = v10;
    if (!v11)
    {
      break;
    }

    v15 = v10;
LABEL_13:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    result = *(*(v4 + 48) + ((v15 << 9) | (8 * v16)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v7 == a3)
    {
      v12 = a3;
      goto LABEL_30;
    }

    ++a2;
    v12 = v7;
    if (__OFADD__(v7++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v15 >= v13)
    {
      break;
    }

    v11 = *(v8 + 8 * v15);
    ++v14;
    if (v11)
    {
      v10 = v15;
      goto LABEL_13;
    }
  }

  v11 = 0;
  if (v13 <= v10 + 1)
  {
    v21 = v10 + 1;
  }

  else
  {
    v21 = v13;
  }

  v10 = v21 - 1;
LABEL_30:
  v9 = v22;
  v7 = v23;
LABEL_32:
  *v7 = v4;
  *(v7 + 8) = v8;
  *(v7 + 16) = v9;
  *(v7 + 24) = v10;
  *(v7 + 32) = v11;
  return v12;
}

void *sub_2646C5E8C(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(a4 + 48) + 24 * (v17 | (v12 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      LOBYTE(v18) = *(v18 + 16);
      *v11 = v19;
      *(v11 + 8) = v20;
      *(v11 + 16) = v18;
      if (v14 == v10)
      {
        v24 = v19;
        goto LABEL_24;
      }

      v11 += 24;
      v21 = v19;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v23 = v12 + 1;
    }

    else
    {
      v23 = (63 - v7) >> 6;
    }

    v12 = v23 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_2646C5FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF766A8, &unk_26478AA80);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v27 - v13;
  v15 = type metadata accessor for SafetyCacheMapView.Annotation(0);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_2646C6A98(a4, a5, a6, &v30);
  v27 = v30;
  v28 = v31;
  *v29 = v32;
  *&v29[16] = v33;
  if (!a2)
  {
    a3 = 0;
    v24 = v31;
    *a1 = v30;
    *(a1 + 16) = v24;
    *(a1 + 32) = v32;
    *(a1 + 48) = v33;
    return a3;
  }

  if (!a3)
  {
LABEL_10:
    v22 = *v29;
    v23 = v28;
    *a1 = v27;
    *(a1 + 16) = v23;
    *(a1 + 32) = v22;
    *(a1 + 40) = *&v29[8];
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v20 = 1;
    while (1)
    {
      sub_2646C6B78(v14);
      if ((*(v16 + 48))(v14, 1, v15) == 1)
      {
        break;
      }

      sub_2646C6920(v14, v18, type metadata accessor for SafetyCacheMapView.Annotation);
      sub_2646C6920(v18, a2, type metadata accessor for SafetyCacheMapView.Annotation);
      if (a3 == v20)
      {
        goto LABEL_10;
      }

      a2 += *(v16 + 72);
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
        goto LABEL_10;
      }
    }

    sub_26460CD50(v14, &qword_27FF766A8, &unk_26478AA80);
    v25 = *v29;
    v26 = v28;
    *a1 = v27;
    *(a1 + 16) = v26;
    *(a1 + 32) = v25;
    *(a1 + 40) = *&v29[8];
    return (v20 - 1);
  }

  __break(1u);
  return result;
}

uint64_t sub_2646C6250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 120) = a5;
  *(v8 + 128) = a7;
  *(v8 + 168) = a6;
  *(v8 + 104) = a3;
  *(v8 + 112) = a4;
  *(v8 + 96) = a2;
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756B8, &qword_26478AC90) - 8);
  *(v8 + 136) = v11;
  *(v8 + 144) = *(v11 + 64);
  *(v8 + 152) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76970, &qword_264789300);
  *(v8 + 160) = swift_task_alloc();
  *(v8 + 40) = a8;
  *(v8 + 48) = v15;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v8 + 16));
  (*(*(a8 - 8) + 16))(boxed_opaque_existential_1, a1, a8);

  return MEMORY[0x2822009F8](sub_2646C63B8, 0, 0);
}

uint64_t sub_2646C63B8(uint64_t a1)
{
  v3 = *(v1 + 152);
  v2 = *(v1 + 160);
  v4 = *(v1 + 136);
  v5 = *(v1 + 144);
  v6 = *(v1 + 120);
  v7 = *(v1 + 128);
  v17 = *(v1 + 168);
  v9 = *(v1 + 104);
  v8 = *(v1 + 112);
  v10 = *(v1 + 96);
  sub_2647858C4();
  v11 = sub_2647858E4();
  (*(*(v11 - 8) + 56))(v2, 0, 1, v11);
  sub_264689A40(v1 + 16, v1 + 56);
  sub_26460CCE8(v10, v3, &qword_27FF756B8, &qword_26478AC90);
  v12 = (*(v4 + 80) + 104) & ~*(v4 + 80);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  sub_264689B0C((v1 + 56), (v13 + 4));
  v13[9] = v6;
  v13[10] = v7;
  v13[11] = v9;
  v13[12] = v8;
  sub_26460CF84(v3, v13 + v12);
  *(v13 + v12 + v5) = v17;

  v14 = v7;

  sub_264635430(0, 0, v2, &unk_26478D718, v13);

  __swift_destroy_boxed_opaque_existential_0((v1 + 16));

  v15 = *(v1 + 8);

  return v15();
}

uint64_t objectdestroyTm_6()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756B8, &qword_26478AC90) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 104) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 32));

  v5 = sub_264783AF4();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return MEMORY[0x2821FE8E8](v0, v4 + v3 + 1, v2 | 7);
}

uint64_t sub_2646C66AC(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756B8, &qword_26478AC90);
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[9];
  v6 = v1[10];
  v7 = v1[11];
  v8 = v1[12];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_26460F764;

  return sub_2646C1820(a1, v3, v4, (v1 + 4), v5, v6, v7, v8);
}

uint64_t sub_2646C6804(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_26465944C(a1, a2);
  }

  return a1;
}

uint64_t sub_2646C6818()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2646C6858(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2646C68C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2646C6920(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2646C6988()
{
  swift_unknownObjectRelease();
  sub_264655264(*(v0 + 32), *(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2646C69D0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_264611390;

  return sub_2646C0950(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_2646C6A98@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if ((result & 0xC000000000000001) != 0)
  {
    sub_264785C04();
    sub_264659B70(0, &qword_27FF75E80, 0x277D4AB28);
    sub_26467A890();
    sub_264785984();
    result = v14;
    v7 = v15;
    v9 = v16;
    v8 = v17;
    v10 = v18;
  }

  else
  {
    v8 = 0;
    v11 = -1;
    v12 = -1 << *(result + 32);
    v7 = result + 56;
    v9 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v11 = ~(-1 << v13);
    }

    v10 = v11 & *(result + 56);
  }

  *a4 = result;
  a4[1] = v7;
  a4[2] = v9;
  a4[3] = v8;
  a4[4] = v10;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

void sub_2646C6B78(uint64_t a2@<X8>)
{
  if ((*v2 & 0x8000000000000000) != 0)
  {
    if (sub_264785C44())
    {
      sub_264659B70(0, &qword_27FF75E80, 0x277D4AB28);
      swift_dynamicCast();
      v7 = v16;
      if (v16)
      {
LABEL_16:
        v14 = v2[5];
        v16 = v7;
        v14(&v16);

        v15 = type metadata accessor for SafetyCacheMapView.Annotation(0);
        (*(*(v15 - 8) + 56))(a2, 0, 1, v15);
        return;
      }
    }

LABEL_6:
    v8 = type metadata accessor for SafetyCacheMapView.Annotation(0);
    (*(*(v8 - 8) + 56))(a2, 1, 1, v8);
    return;
  }

  v4 = v2[3];
  v5 = v2[4];
  if (v5)
  {
    v6 = v2[3];
LABEL_14:
    v12 = (v5 - 1) & v5;
    v7 = *(*(*v2 + 48) + ((v6 << 9) | (8 * __clz(__rbit64(v5)))));
    v13 = v7;
    v11 = v6;
LABEL_15:
    v2[3] = v11;
    v2[4] = v12;
    if (v7)
    {
      goto LABEL_16;
    }

    goto LABEL_6;
  }

  v9 = (v2[2] + 64) >> 6;
  if (v9 <= v4 + 1)
  {
    v10 = v4 + 1;
  }

  else
  {
    v10 = (v2[2] + 64) >> 6;
  }

  v11 = v10 - 1;
  while (1)
  {
    v6 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v6 >= v9)
    {
      v7 = 0;
      v12 = 0;
      goto LABEL_15;
    }

    v5 = *(v2[1] + 8 * v6);
    ++v4;
    if (v5)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

uint64_t sub_2646C6D2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_264783864();
  v11 = result;
  if (result)
  {
    result = sub_264783884();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_264783874();
  sub_2646C3E9C(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL sub_2646C6DE4(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_26465944C(a3, a4);
          return sub_2646C40CC(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_2646C6F78()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2646C6FB8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_264611390;

  return sub_2646C15BC(a1, v4, v5, v6);
}

uint64_t sub_2646C706C()
{
  swift_unknownObjectRelease();

  if (*(v0 + 56))
  {

    v1 = *(v0 + 120);
    if (v1 >> 60 != 15)
    {
      sub_264655264(*(v0 + 112), v1);
    }
  }

  if (*(v0 + 152))
  {

    v2 = *(v0 + 216);
    if (v2 >> 60 != 15)
    {
      sub_264655264(*(v0 + 208), v2);
    }
  }

  return MEMORY[0x2821FE8E8](v0, 249, 7);
}

uint64_t sub_2646C718C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 232);
  v8 = *(v1 + 240);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_264611390;

  return sub_2646BBCE8(a1, v4, v5, v6, (v1 + 40), (v1 + 136), v7, v8);
}

void *sub_2646C7270(void *result, void *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9, uint64_t a10, unint64_t a11, uint64_t a12)
{
  if (a3)
  {
    v18 = result;

    sub_264655900(a10, a11);
  }

  return result;
}

uint64_t *CriticalAlertOnboardingView.makeUIViewController(context:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6[0] = v1;
  v6[1] = v2;
  v6[2] = v3;
  v6[3] = v4;
  objc_allocWithZone(type metadata accessor for CriticalAlertOnboardingViewController());

  return CriticalAlertOnboardingViewController.init(model:)(v6);
}

uint64_t *sub_2646C73B0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6[0] = v1;
  v6[1] = v2;
  v6[2] = v3;
  v6[3] = v4;
  objc_allocWithZone(type metadata accessor for CriticalAlertOnboardingViewController());

  return CriticalAlertOnboardingViewController.init(model:)(v6);
}

uint64_t sub_2646C7418(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2646C7518();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_2646C747C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2646C7518();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_2646C74E0(uint64_t a1)
{
  sub_2646C7518();
  sub_264784B74();
  __break(1u);
}

unint64_t sub_2646C7518()
{
  result = qword_27FF77598;
  if (!qword_27FF77598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF77598);
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

uint64_t sub_2646C7580(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_2646C75C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2646C7634(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF775B8, &qword_26478D998);
  MEMORY[0x28223BE20](v6);
  v8 = &v13 - v7;
  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF775D8, &qword_26478D9B0);
  sub_2646C7D40();
  sub_264785334();
  v10 = sub_264784C24();
  v11 = &v8[*(v6 + 36)];
  *v11 = v10;
  *(v11 + 8) = 0u;
  *(v11 + 24) = 0u;
  v11[40] = 1;
  sub_2646C7C34();
  sub_264785034();
  return sub_2646C7DF8(v8);
}

uint64_t sub_2646C77C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SafetyMonitorUINavigationPathItem(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF762F8, &qword_264789EC0);
  (*(*(v10 - 8) + 56))(v9, 2, 3, v10);
  v15[4] = a1;
  v15[5] = a2;
  v15[6] = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76188, &qword_264789D48);
  MEMORY[0x26673F100](&v16);
  v11 = v16;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v11 = sub_2647031A4(0, v11[2] + 1, 1, v11);
  }

  v13 = v11[2];
  v12 = v11[3];
  if (v13 >= v12 >> 1)
  {
    v11 = sub_2647031A4((v12 > 1), v13 + 1, 1, v11);
  }

  v11[2] = v13 + 1;
  sub_26468FA08(v9, v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v13);
  v15[1] = a1;
  v15[2] = a2;
  v15[3] = a3;
  v15[0] = v11;
  sub_2647853E4();
}

void sub_2646C79C8(uint64_t a2@<X8>)
{
  v3 = sub_2647845C4();
  if (qword_27FF752B0 != -1)
  {
    swift_once();
  }

  sub_264613FC4();

  v4 = sub_264784E44();
  v6 = v5;
  v8 = v7;
  v10 = v9 & 1;
  sub_26460C474(v4, v5, v9 & 1);

  sub_26460ECC4(v4, v6, v10);

  v11 = sub_264784C94();
  sub_264783F54();
  *a2 = v3;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = v4;
  *(a2 + 32) = v6;
  *(a2 + 40) = v10;
  *(a2 + 48) = v8;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = v11;
  *(a2 + 80) = v12;
  *(a2 + 88) = v13;
  *(a2 + 96) = v14;
  *(a2 + 104) = v15;
  *(a2 + 112) = 0;
}

double sub_2646C7AF8@<D0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF775A0, &qword_26478D990);
  sub_2646C7BA8();
  sub_264785464();
  v2 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF775D0, &qword_26478D9A8) + 36);
  *(v2 + 32) = 0;
  result = 0.0;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  return result;
}

unint64_t sub_2646C7BA8()
{
  result = qword_27FF775A8;
  if (!qword_27FF775A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF775A0, &qword_26478D990);
    sub_2646C7C34();
    sub_264695700();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF775A8);
  }

  return result;
}

unint64_t sub_2646C7C34()
{
  result = qword_27FF775B0;
  if (!qword_27FF775B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF775B8, &qword_26478D998);
    sub_26460CDF0(&qword_27FF775C0, &qword_27FF775C8, &qword_26478D9A0, MEMORY[0x277CDF028]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF775B0);
  }

  return result;
}

uint64_t sub_2646C7CEC()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

unint64_t sub_2646C7D40()
{
  result = qword_27FF775E0;
  if (!qword_27FF775E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF775D8, &qword_26478D9B0);
    sub_26460CDF0(&qword_27FF775E8, &qword_27FF775F0, &qword_26478D9B8, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF775E0);
  }

  return result;
}

uint64_t sub_2646C7DF8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF775B8, &qword_26478D998);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2646C7E64()
{
  result = qword_27FF775F8;
  if (!qword_27FF775F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF775D0, &qword_26478D9A8);
    sub_2646C7F1C();
    sub_26460CDF0(&qword_27FF76038, &qword_27FF76040, &unk_264789B80, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF775F8);
  }

  return result;
}

unint64_t sub_2646C7F1C()
{
  result = qword_27FF77600;
  if (!qword_27FF77600)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF77608, &unk_26478D9C0);
    sub_2646C7BA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF77600);
  }

  return result;
}

SafetyMonitorUI::ReverseGeocodeStatus_optional __swiftcall ReverseGeocodeStatus.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_264785E14();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ReverseGeocodeStatus.rawValue.getter()
{
  v1 = 0x6974736575716572;
  if (*v0 != 1)
  {
    v1 = 0x6574656C706D6F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6575716552746F6ELL;
  }
}

uint64_t sub_2646C80C4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6974736575716572;
  v4 = 0xEA0000000000676ELL;
  if (v2 != 1)
  {
    v3 = 0x6574656C706D6F63;
    v4 = 0xE900000000000064;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6575716552746F6ELL;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xED0000676E697473;
  }

  v7 = 0x6974736575716572;
  v8 = 0xEA0000000000676ELL;
  if (*a2 != 1)
  {
    v7 = 0x6574656C706D6F63;
    v8 = 0xE900000000000064;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6575716552746F6ELL;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xED0000676E697473;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_264785E84();
  }

  return v11 & 1;
}

uint64_t sub_2646C81E0()
{
  sub_264785F44();
  sub_264785794();

  return sub_264785F94();
}

uint64_t sub_2646C8298(uint64_t a1)
{
  sub_264785794();
}

uint64_t sub_2646C833C(uint64_t a1)
{
  sub_264785F44();
  sub_264785794();

  return sub_264785F94();
}

void sub_2646C83FC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED0000676E697473;
  v4 = 0xEA0000000000676ELL;
  v5 = 0x6974736575716572;
  if (v2 != 1)
  {
    v5 = 0x6574656C706D6F63;
    v4 = 0xE900000000000064;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6575716552746F6ELL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

void LocationSearchViewModel.init(selectedLocation:destinationType:geofenceSize:)(void *a1, uint64_t a2, unsigned __int8 *a3)
{
  *&v98 = a2;
  v99 = a1;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77610, &qword_26478D9D0);
  v85 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v84 = v83 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77618, &qword_26478D9D8);
  v95 = *(v6 - 8);
  v96.i64[0] = v6;
  MEMORY[0x28223BE20](v6);
  v94 = v83 - v7;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77620, &qword_26478D9E0);
  v92 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v91 = v83 - v8;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77628, &qword_26478D9E8);
  v87 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v90 = v83 - v9;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77630, &qword_26478D9F0);
  v10 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v12 = v83 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77638, &qword_26478D9F8);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v83 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77640, &unk_26478DA00);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = v83 - v19;
  LODWORD(v97) = *a3;
  v21 = OBJC_IVAR____TtC15SafetyMonitorUI23LocationSearchViewModel__locationSearchText;
  *&v101 = 0;
  *(&v101 + 1) = 0xE000000000000000;
  sub_264783E94();
  v22 = *(v18 + 32);
  v83[1] = v17;
  v23 = v17;
  v24 = v87;
  v22(&v3[v21], v20, v23);
  v25 = OBJC_IVAR____TtC15SafetyMonitorUI23LocationSearchViewModel__searchedLocations;
  v26 = MEMORY[0x277D84F90];
  *&v101 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77658, &qword_26478E4E0);
  sub_264783E94();
  v27 = &v3[v25];
  v28 = v89;
  (*(v14 + 32))(v27, v16, v13);
  v29 = OBJC_IVAR____TtC15SafetyMonitorUI23LocationSearchViewModel__selectedLocationValidity;
  LOBYTE(v101) = 0;
  sub_264783E94();
  (*(v10 + 32))(&v3[v29], v12, v88);
  v30 = OBJC_IVAR____TtC15SafetyMonitorUI23LocationSearchViewModel__selectedFenceSize;
  LOBYTE(v101) = 0;
  v31 = v90;
  sub_264783E94();
  (*(v24 + 32))(&v3[v30], v31, v28);
  v32 = OBJC_IVAR____TtC15SafetyMonitorUI23LocationSearchViewModel__annotations;
  *&v101 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77678, &qword_26478DA10);
  v33 = v91;
  sub_264783E94();
  (*(v92 + 32))(&v3[v32], v33, v93);
  v34 = OBJC_IVAR____TtC15SafetyMonitorUI23LocationSearchViewModel__selectedLocationReverseGeocodeStatus;
  LOBYTE(v101) = 0;
  v35 = v94;
  sub_264783E94();
  (*(v95 + 32))(&v3[v34], v35, v96.i64[0]);
  if (v26 >> 62 && sub_264785C14())
  {
    v36 = sub_26476D298(MEMORY[0x277D84F90]);
  }

  else
  {
    v36 = MEMORY[0x277D84FA0];
  }

  v37 = v98;
  *&v3[OBJC_IVAR____TtC15SafetyMonitorUI23LocationSearchViewModel_cancellableSet] = v36;
  v38 = OBJC_IVAR____TtC15SafetyMonitorUI23LocationSearchViewModel_safetyMonitorManager;
  *&v3[v38] = [objc_opt_self() defaultManager];
  v39 = &qword_27FF77000;
  v40 = OBJC_IVAR____TtC15SafetyMonitorUI23LocationSearchViewModel_mkLocalSearchCompleter;
  *&v3[v40] = [objc_allocWithZone(MEMORY[0x277CD4E28]) init];
  if (qword_27FF74FC8 != -1)
  {
    swift_once();
  }

  v98 = xmmword_27FF80718;
  v96 = *&qword_27FF80728;
  swift_beginAccess();
  v101 = v98;
  v102 = v96;
  type metadata accessor for MKCoordinateRegion(0);
  sub_264783E94();
  swift_endAccess();
  swift_beginAccess();
  v103 = v37;
  type metadata accessor for SMSessionDestinationType(0);
  sub_264783E94();
  swift_endAccess();
  swift_beginAccess();
  (*(v24 + 8))(&v3[v30], v28);
  LOBYTE(v103) = v97;
  sub_264783E94();
  swift_endAccess();
  sub_264785724();
  v41 = objc_allocWithZone(MEMORY[0x277CBFC10]);
  v42 = sub_264785714();

  v43 = [v41 initWithEffectiveBundlePath_];

  if (v43)
  {
    *&v3[OBJC_IVAR____TtC15SafetyMonitorUI23LocationSearchViewModel_locationManager] = v43;
    v44 = v99;
    if (v99)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF769A0, &unk_26478BD70);
      v45 = swift_allocObject();
      *(v45 + 16) = xmmword_264788990;
      *(v45 + 32) = v44;
      swift_beginAccess();
      v103 = v45;
      v46 = v44;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF776C0, &unk_26478DA18);
      sub_264783E94();
      swift_endAccess();
    }

    else
    {
      swift_beginAccess();
      v103 = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF776C0, &unk_26478DA18);
      sub_264783E94();
      swift_endAccess();
    }

    v47 = type metadata accessor for LocationSearchViewModel(0);
    v100.receiver = v3;
    v100.super_class = v47;
    v48 = objc_msgSendSuper2(&v100, sel_init);
    v49 = v48;
    if (v44)
    {
      *&v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF769A0, &unk_26478BD70);
      v50 = swift_allocObject();
      v97 = xmmword_264788990;
      *(v50 + 16) = xmmword_264788990;
      *(v50 + 32) = v44;
      swift_getKeyPath();
      swift_getKeyPath();
      *&v101 = v50;
      v51 = v44;
      v52 = v49;
      v53 = v51;
      v54 = v52;
      sub_264783EE4();
      sub_2646CA060();
      v96.i64[0] = sub_2646CFDA4(v53, v37);
      v56 = v55;
      v58 = v57;
      v60 = v59;
      v61 = [v53 placemark];
      v62 = [v61 location];

      if (v62)
      {
        v95 = v58;
        [v62 coordinate];
        v64 = v63;
        v66 = v65;
        swift_getKeyPath();
        swift_getKeyPath();
        *&v101 = v64;
        *(&v101 + 1) = v66;
        v102 = vdupq_n_s64(0x3F747AE147AE147BuLL);
        v67 = v54;
        sub_264783EE4();
        v68 = [objc_allocWithZone(MEMORY[0x277CD4F08]) init];
        [v62 coordinate];
        [v68 setCoordinate_];
        v69 = v68;
        if (v56)
        {

          v70 = sub_264785714();
        }

        else
        {
          v70 = 0;
        }

        [v68 setTitle_];

        if (v60)
        {
          v72 = sub_264785714();
        }

        else
        {
          v72 = 0;
        }

        v39 = &qword_27FF77000;
        [v68 setSubtitle_];

        v73 = swift_allocObject();
        *(v73 + 16) = v97;
        *(v73 + 32) = v68;
        swift_getKeyPath();
        swift_getKeyPath();
        *&v101 = v73;
        v74 = v67;
        v75 = v68;
        sub_264783EE4();

        v44 = v99;
      }

      else
      {

        v39 = &qword_27FF77000;
      }
    }

    else
    {
      v71 = v48;
    }

    v76 = *&v49[v39[211]];
    v77 = v49;
    [v76 setDelegate_];
    v78 = OBJC_IVAR____TtC15SafetyMonitorUI23LocationSearchViewModel_locationManager;
    v79 = *&v77[OBJC_IVAR____TtC15SafetyMonitorUI23LocationSearchViewModel_locationManager];
    [v79 setDelegate_];

    [*&v77[v78] requestLocation];
    swift_beginAccess();
    v80 = v84;
    sub_264783EA4();
    swift_endAccess();
    *(swift_allocObject() + 16) = v77;
    sub_26460CDF0(&unk_27FF776C8, &qword_27FF77610, &qword_26478D9D0, MEMORY[0x277CBCEC8]);
    v81 = v77;
    v82 = v86;
    sub_264783F14();

    (*(v85 + 8))(v80, v82);
    swift_beginAccess();
    sub_264783E34();
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }
}

uint64_t type metadata accessor for LocationSearchViewModel(uint64_t a1)
{
  result = qword_27FF77758;
  if (!qword_27FF77758)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2646C9228(double a1, double a2, double a3, double a4)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = v4;
  return sub_264783EE4();
}

uint64_t sub_2646C92B4(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  return sub_264783EE4();
}

uint64_t sub_2646C9320(char *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  return sub_264783EE4();
}

uint64_t sub_2646C938C(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  sub_264783EE4();
  return sub_2646CA060();
}

uint64_t sub_2646C9414()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v1);

  return v1;
}

uint64_t sub_2646C9488(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_264783EE4();
}

uint64_t (*sub_2646C9500(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_264783EC4();
  return sub_26465A0B0;
}

uint64_t sub_2646C95A4(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77610, &qword_26478D9D0);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77640, &unk_26478DA00);
  sub_264783EB4();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_2646C9744(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77610, &qword_26478D9D0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77640, &unk_26478DA00);
  sub_264783EB4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_2646C987C(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77610, &qword_26478D9D0);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC15SafetyMonitorUI23LocationSearchViewModel__locationSearchText;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77640, &unk_26478DA00);
  sub_264783EA4();
  swift_endAccess();
  return sub_26465A0AC;
}

uint64_t sub_2646C99EC@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v4);

  *a2 = v4;
  return result;
}

uint64_t sub_2646C9A6C(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return sub_264783EE4();
}

uint64_t sub_2646C9B0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  return sub_264783EE4();
}

uint64_t (*sub_2646C9B74(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_264783EC4();
  return sub_26465A0B0;
}

uint64_t sub_2646C9C18(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF776D8, &qword_26478DC20);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77638, &qword_26478D9F8);
  sub_264783EB4();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_2646C9DB8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF776D8, &qword_26478DC20);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77638, &qword_26478D9F8);
  sub_264783EB4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_2646C9EF0(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF776D8, &qword_26478DC20);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC15SafetyMonitorUI23LocationSearchViewModel__searchedLocations;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77638, &qword_26478D9F8);
  sub_264783EA4();
  swift_endAccess();
  return sub_26465A0AC;
}

uint64_t sub_2646CA060()
{
  v1 = sub_264785594();
  v13 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2647855C4();
  v4 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264659B70(0, &qword_27FF76980, 0x277D85C78);
  v7 = sub_264785A44();
  v8 = swift_allocObject();
  *(v8 + 16) = v0;
  aBlock[4] = sub_2646D1814;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_264659F60;
  aBlock[3] = &block_descriptor_119;
  v9 = _Block_copy(aBlock);
  v10 = v0;

  sub_2647855B4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_2646683C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF76990, &qword_264788A90);
  sub_26460CDF0(&qword_27FF75CE0, &unk_27FF76990, &qword_264788A90, MEMORY[0x277D83970]);
  sub_264785BD4();
  MEMORY[0x26673F780](0, v6, v3, v9);
  _Block_release(v9);

  (*(v13 + 8))(v3, v1);
  return (*(v4 + 8))(v6, v12);
}

void sub_2646CA324(void *a1)
{
  v2 = sub_264785594();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2647855C4();
  v39 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v38 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2647855A4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(aBlock) = 0;
  v12 = a1;
  sub_264783EE4();
  sub_2646CBF08();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&aBlock);

  v13 = aBlock;
  if (!(aBlock >> 62))
  {
    if (*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_10:

    return;
  }

  if (!sub_264785C14())
  {
    goto LABEL_10;
  }

LABEL_3:
  v37 = v5;
  if ((v13 & 0xC000000000000001) != 0)
  {
    v14 = MEMORY[0x26673FA30](0, v13);
  }

  else
  {
    if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v14 = *(v13 + 32);
  }

  v15 = v14;

  v16 = [v15 placemark];
  v17 = [v16 location];

  if (v17)
  {
    [v17 coordinate];
    v19 = v18;
    v21 = v20;
    swift_getKeyPath();
    swift_getKeyPath();
    v36 = v6;
    aBlock = v19;
    v42 = v21;
    v43 = vdupq_n_s64(0x3F747AE147AE147BuLL);
    v22 = v12;
    sub_264783EE4();
    swift_getKeyPath();
    swift_getKeyPath();
    v34 = v2;
    v35 = v3;
    LOBYTE(aBlock) = 1;
    v23 = v22;
    sub_264783EE4();
    sub_2646CBF08();
    sub_264659B70(0, &qword_27FF76980, 0x277D85C78);
    (*(v9 + 104))(v11, *MEMORY[0x277D851B8], v8);
    v24 = sub_264785A64();
    (*(v9 + 8))(v11, v8);
    v25 = swift_allocObject();
    v25[2] = v17;
    v25[3] = v23;
    v25[4] = v15;
    v44 = sub_2646D1864;
    v45 = v25;
    aBlock = MEMORY[0x277D85DD0];
    v42 = 1107296256;
    v43.i64[0] = sub_264659F60;
    v43.i64[1] = &block_descriptor_125;
    v26 = _Block_copy(&aBlock);
    v27 = v23;
    v28 = v17;
    v29 = v15;
    v30 = v38;
    sub_2647855B4();
    v40 = MEMORY[0x277D84F90];
    sub_2646683C4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF76990, &qword_264788A90);
    sub_26460CDF0(&qword_27FF75CE0, &unk_27FF76990, &qword_264788A90, MEMORY[0x277D83970]);
    v31 = v37;
    v32 = v34;
    sub_264785BD4();
    MEMORY[0x26673F780](0, v30, v31, v26);
    _Block_release(v26);

    (*(v35 + 8))(v31, v32);
    (*(v39 + 8))(v30, v36);
  }

  else
  {
  }
}

void sub_2646CA8E0(void *a1, char *a2, void *a3)
{
  v6 = sub_264783E24();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264783DF4();
  v10 = a1;
  v11 = sub_264783E14();
  v12 = sub_2647859F4();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v32 = a2;
    v14 = v13;
    v15 = swift_slowAlloc();
    aBlock[0] = v15;
    *v14 = 136642819;
    v16 = [v10 debugDescription];
    v17 = sub_264785724();
    v31 = v6;
    v18 = a3;
    v20 = v19;

    v21 = sub_2646DF234(v17, v20, aBlock);
    a3 = v18;

    *(v14 + 4) = v21;
    _os_log_impl(&dword_264605000, v11, v12, "#Initiator,LocationSearchViewModel, checkEligibility, request eligibility for location %{sensitive}s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x266740650](v15, -1, -1);
    v22 = v14;
    a2 = v32;
    MEMORY[0x266740650](v22, -1, -1);

    (*(v7 + 8))(v9, v31);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  v23 = *&a2[OBJC_IVAR____TtC15SafetyMonitorUI23LocationSearchViewModel_safetyMonitorManager];
  [a3 _coordinate];
  v25 = v24;
  [a3 _coordinate];
  v27 = [objc_allocWithZone(MEMORY[0x277CE41F8]) initWithLatitude:v25 longitude:v26];
  v28 = swift_allocObject();
  *(v28 + 16) = a2;
  aBlock[4] = sub_2646D1870;
  aBlock[5] = v28;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2646CB7A4;
  aBlock[3] = &block_descriptor_131;
  v29 = _Block_copy(aBlock);
  v30 = a2;

  [v23 checkEligibilityOfDestination:v27 completionHandler:v29];
  _Block_release(v29);
}

uint64_t sub_2646CABF4(char a1, void *a2, void *a3, id a4)
{
  v8 = sub_264785594();
  v99 = *(v8 - 8);
  v100 = v8;
  MEMORY[0x28223BE20](v8);
  v96 = &v89[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_2647855C4();
  v97 = *(v10 - 8);
  v98 = v10;
  MEMORY[0x28223BE20](v10);
  v95 = &v89[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_264783E24();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v89[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = MEMORY[0x28223BE20](v14);
  v94 = &v89[-v18];
  MEMORY[0x28223BE20](v17);
  v20 = &v89[-v19];
  sub_264783DF4();
  v21 = a2;
  v22 = sub_264783E14();
  v23 = sub_2647859F4();

  v24 = os_log_type_enabled(v22, v23);
  v93 = v21;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v90 = v23;
    v26 = v25;
    v91 = swift_slowAlloc();
    aBlock = v91;
    *v26 = 136315395;
    if (a1)
    {
      v27 = 0x64696C6176;
    }

    else
    {
      v27 = 0x64696C61766E69;
    }

    if (a1)
    {
      v28 = 0xE500000000000000;
    }

    else
    {
      v28 = 0xE700000000000000;
    }

    v29 = sub_2646DF234(v27, v28, &aBlock);
    v92 = v13;
    v30 = v29;

    *(v26 + 4) = v30;
    *(v26 + 12) = 2085;
    v31 = [v21 debugDescription];
    v32 = sub_264785724();
    v33 = v16;
    v34 = a3;
    v35 = v12;
    v36 = a4;
    v38 = v37;

    v39 = v32;
    v13 = v92;
    v40 = sub_2646DF234(v39, v38, &aBlock);
    a4 = v36;
    v12 = v35;
    a3 = v34;
    v16 = v33;

    *(v26 + 14) = v40;
    _os_log_impl(&dword_264605000, v22, v90, "#Initiator,LocationSearchViewModel, checkEligibility, isValid: %s, location: %{sensitive}s", v26, 0x16u);
    v41 = v91;
    swift_arrayDestroy();
    MEMORY[0x266740650](v41, -1, -1);
    MEMORY[0x266740650](v26, -1, -1);
  }

  v42 = *(v13 + 1);
  v42(v20, v12);
  if (a3)
  {
    v43 = a3;
    v44 = v94;
    sub_264783DF4();
    v45 = a3;
    v46 = sub_264783E14();
    v47 = sub_2647859D4();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v92 = v42;
      v49 = v48;
      v50 = swift_slowAlloc();
      v93 = a4;
      v51 = v50;
      aBlock = v50;
      *v49 = 136315138;
      swift_getErrorValue();
      v52 = sub_264785EF4();
      v54 = sub_2646DF234(v52, v53, &aBlock);

      *(v49 + 4) = v54;
      _os_log_impl(&dword_264605000, v46, v47, "#Initiator,LocationSearchViewModel, checkEligibility, error checking eligibility: %s", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v51);
      v55 = v51;
      a4 = v93;
      MEMORY[0x266740650](v55, -1, -1);
      MEMORY[0x266740650](v49, -1, -1);

      v92(v44, v12);
    }

    else
    {

      v42(v44, v12);
    }

    sub_264659B70(0, &qword_27FF76980, 0x277D85C78);
    v77 = sub_264785A44();
    v78 = swift_allocObject();
    *(v78 + 16) = a3;
    *(v78 + 24) = a4;
    v105 = sub_2646D18C0;
    v106 = v78;
    aBlock = MEMORY[0x277D85DD0];
    v102 = 1107296256;
    v103 = sub_264659F60;
    v104 = &block_descriptor_143;
    v79 = a3;
    v80 = _Block_copy(&aBlock);
    v81 = v79;
    v82 = a4;

    v83 = v95;
    sub_2647855B4();
    aBlock = MEMORY[0x277D84F90];
    sub_2646683C4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF76990, &qword_264788A90);
    sub_26460CDF0(&qword_27FF75CE0, &unk_27FF76990, &qword_264788A90, MEMORY[0x277D83970]);
    v84 = v96;
    v85 = v100;
    sub_264785BD4();
    MEMORY[0x26673F780](0, v83, v84, v80);
    _Block_release(v80);

    (*(v99 + 8))(v84, v85);
    return (*(v97 + 8))(v83, v98);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&aBlock);

  v56 = aBlock;
  if (aBlock >> 62)
  {
    result = sub_264785C14();
    if (result)
    {
      goto LABEL_14;
    }
  }

  else
  {
    result = *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
LABEL_14:
      if ((v56 & 0xC000000000000001) != 0)
      {
        v58 = v12;
        v59 = MEMORY[0x26673FA30](0, v56);
      }

      else
      {
        if (!*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return result;
        }

        v58 = v12;
        v59 = *(v56 + 32);
      }

      v60 = v59;

      v61 = [v60 placemark];
      v62 = [v61 location];

      if (v62)
      {
        [v62 coordinate];
        v64 = v63;
        v65 = v93;
        [v93 coordinate];
        if (v64 == v66)
        {
          [v62 coordinate];
          v68 = v67;
          [v65 coordinate];
          if (v68 == v69)
          {
            sub_264659B70(0, &qword_27FF76980, 0x277D85C78);
            v70 = sub_264785A44();
            v71 = swift_allocObject();
            *(v71 + 16) = a4;
            v105 = sub_2646D1878;
            v106 = v71;
            aBlock = MEMORY[0x277D85DD0];
            v102 = 1107296256;
            v103 = sub_264659F60;
            v104 = &block_descriptor_137;
            v72 = _Block_copy(&aBlock);
            v73 = a4;

            v74 = v95;
            sub_2647855B4();
            aBlock = MEMORY[0x277D84F90];
            sub_2646683C4();
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF76990, &qword_264788A90);
            sub_26460CDF0(&qword_27FF75CE0, &unk_27FF76990, &qword_264788A90, MEMORY[0x277D83970]);
            v75 = v96;
            v76 = v100;
            sub_264785BD4();
            MEMORY[0x26673F780](0, v74, v75, v72);

            _Block_release(v72);
            (*(v99 + 8))(v75, v76);
            return (*(v97 + 8))(v74, v98);
          }
        }
      }

      else
      {
      }

      v12 = v58;
      goto LABEL_28;
    }
  }

LABEL_28:
  sub_264783DF4();
  v86 = sub_264783E14();
  v87 = sub_2647859D4();
  if (os_log_type_enabled(v86, v87))
  {
    v88 = swift_slowAlloc();
    *v88 = 0;
    _os_log_impl(&dword_264605000, v86, v87, "#Initiator,LocationSearchViewModel, checkEligibility, the selected location is not the same as the requested location - will not set the location validity", v88, 2u);
    MEMORY[0x266740650](v88, -1, -1);
  }

  return (v42)(v16, v12);
}

uint64_t sub_2646CB658(uint64_t a1, void *a2)
{
  v3 = sub_264783984();
  [v3 code];

  swift_getKeyPath();
  swift_getKeyPath();
  v4 = a2;
  sub_264783EE4();
  return sub_2646CBF08();
}

uint64_t sub_2646CB728(void *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  a1;
  sub_264783EE4();
  return sub_2646CBF08();
}

void sub_2646CB7A4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);

  v9 = a3;
  v8 = a4;
  v7(a2, v9, a4);
}

uint64_t (*sub_2646CB84C(void *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(a1 + 1);

  *a1 = a1[1];
  return sub_2646CB8E0;
}

uint64_t sub_2646CB8E0(uint64_t *a1, char a2)
{
  v4 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  a1[1] = v4;
  a1[2];
  if (a2)
  {

    sub_264783EE4();
    sub_2646CA060();
  }

  else
  {
    sub_264783EE4();
    return sub_2646CA060();
  }
}

uint64_t sub_2646CB9C4(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF776E8, &qword_26478DC30);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF776E0, &qword_26478DC28);
  sub_264783EB4();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_2646CBB64(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF776E8, &qword_26478DC30);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF776E0, &qword_26478DC28);
  sub_264783EB4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_2646CBC9C(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF776E8, &qword_26478DC30);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC15SafetyMonitorUI23LocationSearchViewModel__selectedLocation;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF776E0, &qword_26478DC28);
  sub_264783EA4();
  swift_endAccess();
  return sub_26465A0AC;
}

uint64_t sub_2646CBE0C@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v4);

  *a2 = v4;
  return result;
}

uint64_t sub_2646CBE8C(char *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v2;
  sub_264783EE4();
  return sub_2646CBF08();
}

uint64_t sub_2646CBF08()
{
  v1 = sub_264783E24();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264783DF4();
  v5 = v0;
  v6 = sub_264783E14();
  v7 = sub_2647859F4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v22 = v9;
    *v8 = 136315138;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4((&v21 + 7));

    v10 = 0xEC00000064657461;
    v11 = 0x64696C6156746F6ELL;
    v12 = 0xE700000000000000;
    v13 = 0x64696C61766E69;
    v14 = 0xED00007261466F6FLL;
    if (HIBYTE(v21) != 4)
    {
      v14 = 0xEF65736F6C436F6FLL;
    }

    if (HIBYTE(v21) != 3)
    {
      v13 = 0x5464696C61766E69;
      v12 = v14;
    }

    v15 = 0xEA0000000000676ELL;
    v16 = 0x69746164696C6176;
    if (HIBYTE(v21) != 1)
    {
      v16 = 0x64696C6176;
      v15 = 0xE500000000000000;
    }

    if (HIBYTE(v21))
    {
      v11 = v16;
      v10 = v15;
    }

    if (HIBYTE(v21) <= 2u)
    {
      v17 = v11;
    }

    else
    {
      v17 = v13;
    }

    if (HIBYTE(v21) <= 2u)
    {
      v18 = v10;
    }

    else
    {
      v18 = v12;
    }

    v19 = sub_2646DF234(v17, v18, &v22);

    *(v8 + 4) = v19;
    _os_log_impl(&dword_264605000, v6, v7, "#Initiator,LocationSearchViewModel, set isSelectedLocationValid to %s ", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x266740650](v9, -1, -1);
    MEMORY[0x266740650](v8, -1, -1);
  }

  return (*(v2 + 8))(v4, v1);
}

uint64_t LocationSearchViewModel.LocationValidity.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x64696C6156746F6ELL;
  v3 = 0x64696C61766E69;
  if (v1 != 3)
  {
    v3 = 0x5464696C61766E69;
  }

  v4 = 0x69746164696C6176;
  if (v1 != 1)
  {
    v4 = 0x64696C6176;
  }

  if (*v0)
  {
    v2 = v4;
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

uint64_t (*sub_2646CC2E4(void *a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  v2 = a1 + 1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(v2);

  return sub_2646CC37C;
}

uint64_t sub_2646CC3A4(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF776F0, &unk_26478DC80);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77630, &qword_26478D9F0);
  sub_264783EB4();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_2646CC544(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF776F0, &unk_26478DC80);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77630, &qword_26478D9F0);
  sub_264783EB4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_2646CC67C(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF776F0, &unk_26478DC80);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC15SafetyMonitorUI23LocationSearchViewModel__selectedLocationValidity;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77630, &qword_26478D9F0);
  sub_264783EA4();
  swift_endAccess();
  return sub_26465A0AC;
}

uint64_t sub_2646CC7EC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v1);

  return v1;
}

uint64_t (*sub_2646CC860(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_264783EC4();
  return sub_26465A0B0;
}

uint64_t sub_2646CC904(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77700, &qword_26478DC90);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF776F8, &unk_26478FF60);
  sub_264783EB4();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_2646CCAA4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77700, &qword_26478DC90);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF776F8, &unk_26478FF60);
  sub_264783EB4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_2646CCBDC(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77700, &qword_26478DC90);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC15SafetyMonitorUI23LocationSearchViewModel__destinationType;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF776F8, &unk_26478FF60);
  sub_264783EA4();
  swift_endAccess();
  return sub_26465A0AC;
}

uint64_t (*sub_2646CCD60(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_264783EC4();
  return sub_26465A0B0;
}

uint64_t sub_2646CCE04(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77708, &qword_26478DC98);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77628, &qword_26478D9E8);
  sub_264783EB4();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_2646CCFA4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77708, &qword_26478DC98);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77628, &qword_26478D9E8);
  sub_264783EB4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_2646CD0DC(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77708, &qword_26478DC98);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC15SafetyMonitorUI23LocationSearchViewModel__selectedFenceSize;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77628, &qword_26478D9E8);
  sub_264783EA4();
  swift_endAccess();
  return sub_26465A0AC;
}

uint64_t (*sub_2646CD260(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_264783EC4();
  return sub_26465A0B0;
}

uint64_t sub_2646CD304(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77710, &qword_26478DCA0);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77620, &qword_26478D9E0);
  sub_264783EB4();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_2646CD4A4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77710, &qword_26478DCA0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77620, &qword_26478D9E0);
  sub_264783EB4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_2646CD5DC(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77710, &qword_26478DCA0);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC15SafetyMonitorUI23LocationSearchViewModel__annotations;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77620, &qword_26478D9E0);
  sub_264783EA4();
  swift_endAccess();
  return sub_26465A0AC;
}

uint64_t sub_2646CD74C()
{
  v1 = sub_264783E24();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264783DF4();
  v5 = v0;
  v6 = sub_264783E14();
  v7 = sub_2647859F4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136315138;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4((&v16 + 7));

    v10 = 0xEA0000000000676ELL;
    v11 = 0x6974736575716572;
    if (HIBYTE(v16) != 1)
    {
      v11 = 0x6574656C706D6F63;
      v10 = 0xE900000000000064;
    }

    if (HIBYTE(v16))
    {
      v12 = v11;
    }

    else
    {
      v12 = 0x6575716552746F6ELL;
    }

    if (HIBYTE(v16))
    {
      v13 = v10;
    }

    else
    {
      v13 = 0xED0000676E697473;
    }

    v14 = sub_2646DF234(v12, v13, &v17);

    *(v8 + 4) = v14;
    _os_log_impl(&dword_264605000, v6, v7, "#Initiator,LocationSearchViewModel, set selectedLocationReverseGeocodeStatus to %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x266740650](v9, -1, -1);
    MEMORY[0x266740650](v8, -1, -1);
  }

  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_2646CD9E0(char *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  swift_getKeyPath();
  swift_getKeyPath();
  v6 = v4;
  v7 = sub_264783EE4();
  return a4(v7);
}

uint64_t (*sub_2646CDA60(void *a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  v2 = a1 + 1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(v2);

  return sub_2646CDAF8;
}

uint64_t sub_2646CDB20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v7 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v8 = *a1;
  *(a1 + 9) = v7;
  v9 = v8;
  v10 = sub_264783EE4();
  return a5(v10);
}

uint64_t sub_2646CDBA4(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77718, &unk_26478DCF0);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77618, &qword_26478D9D8);
  sub_264783EB4();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_2646CDD44(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77718, &unk_26478DCF0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77618, &qword_26478D9D8);
  sub_264783EB4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_2646CDE7C(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77718, &unk_26478DCF0);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC15SafetyMonitorUI23LocationSearchViewModel__selectedLocationReverseGeocodeStatus;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77618, &qword_26478D9D8);
  sub_264783EA4();
  swift_endAccess();
  return sub_26465A0AC;
}

double sub_2646CDFEC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v1);

  return v1;
}

uint64_t (*sub_2646CE064(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_264783EC4();
  return sub_264622F4C;
}

uint64_t sub_2646CE108(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77728, &qword_26478DD00);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77720, &qword_26478B008);
  sub_264783EB4();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_2646CE2A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77728, &qword_26478DD00);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77720, &qword_26478B008);
  sub_264783EB4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_2646CE3E0(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77728, &qword_26478DD00);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC15SafetyMonitorUI23LocationSearchViewModel__endLocation;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77720, &qword_26478B008);
  sub_264783EA4();
  swift_endAccess();
  return sub_2646263E8;
}

uint64_t sub_2646CE550(uint64_t a1, uint64_t a2)
{
  v4 = sub_264785594();
  v16 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2647855C4();
  v7 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264659B70(0, &qword_27FF76980, 0x277D85C78);
  v10 = sub_264785A44();
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = a1;
  v12[4] = a2;
  aBlock[4] = sub_2646D1808;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_264659F60;
  aBlock[3] = &block_descriptor_113;
  v13 = _Block_copy(aBlock);

  sub_2647855B4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_2646683C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF76990, &qword_264788A90);
  sub_26460CDF0(&qword_27FF75CE0, &unk_27FF76990, &qword_264788A90, MEMORY[0x277D83970]);
  sub_264785BD4();
  MEMORY[0x26673F780](0, v9, v6, v13);
  _Block_release(v13);

  (*(v16 + 8))(v6, v4);
  return (*(v7 + 8))(v9, v15);
}

void sub_2646CE848(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC15SafetyMonitorUI23LocationSearchViewModel_mkLocalSearchCompleter);

    v6 = sub_264785714();
    [v5 setQueryFragment_];
  }
}

uint64_t sub_2646CE8E8(uint64_t *a1, void *a2)
{
  v4 = sub_264785594();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2647855C4();
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[1];
  v13 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v13 = *a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v13)
  {
    return sub_2646CE550(*a1, v12);
  }

  v20 = v9;
  sub_264659B70(0, &qword_27FF76980, 0x277D85C78);
  v19 = sub_264785A44();
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  aBlock[4] = sub_2646D18C8;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_264659F60;
  aBlock[3] = &block_descriptor_149;
  v16 = _Block_copy(aBlock);
  v17 = a2;

  sub_2647855B4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_2646683C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF76990, &qword_264788A90);
  sub_26460CDF0(&qword_27FF75CE0, &unk_27FF76990, &qword_264788A90, MEMORY[0x277D83970]);
  sub_264785BD4();
  v18 = v19;
  MEMORY[0x26673F780](0, v11, v7, v16);
  _Block_release(v16);

  (*(v5 + 8))(v7, v4);
  return (*(v20 + 8))(v11, v8);
}

uint64_t sub_2646CEBD8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2646CEC20(void *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = a1;
  return sub_264783EE4();
}

SafetyMonitorUI::LocationSearchViewModel::LocationValidity_optional __swiftcall LocationSearchViewModel.LocationValidity.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_264785E14();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_2646CED08(uint64_t a1)
{
  sub_264785794();
}

void sub_2646CEE2C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC00000064657461;
  v4 = 0x64696C6156746F6ELL;
  v5 = 0xE700000000000000;
  v6 = 0x64696C61766E69;
  v7 = 0xED00007261466F6FLL;
  if (v2 != 4)
  {
    v7 = 0xEF65736F6C436F6FLL;
  }

  if (v2 != 3)
  {
    v6 = 0x5464696C61766E69;
    v5 = v7;
  }

  v8 = 0xEA0000000000676ELL;
  v9 = 0x69746164696C6176;
  if (v2 != 1)
  {
    v9 = 0x64696C6176;
    v8 = 0xE500000000000000;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = v8;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

id LocationSearchViewModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LocationSearchViewModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LocationSearchViewModel(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2646CF2F0@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for LocationSearchViewModel(0);
  result = sub_264783E64();
  *a2 = result;
  return result;
}

Swift::Void __swiftcall LocationSearchViewModel.completerDidUpdateResults(_:)(MKLocalSearchCompleter a1)
{
  v2 = v1;
  v4 = sub_264785594();
  v42 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v41 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2647855C4();
  v39 = *(v6 - 8);
  v40 = v6;
  MEMORY[0x28223BE20](v6);
  v38 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_264783E24();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264783DF4();
  v12 = a1.super.isa;
  v13 = sub_264783E14();
  v14 = sub_2647859B4();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v37 = v4;
    v17 = v16;
    aBlock[0] = v16;
    *v15 = 136315138;
    v18 = [(objc_class *)v12 results];
    v35 = v8;
    v19 = v18;
    v20 = sub_264659B70(0, &unk_27FF77730, 0x277CD4E30);
    v36 = v2;
    v21 = v20;
    v22 = sub_2647857F4();

    v23 = MEMORY[0x26673F530](v22, v21);
    v25 = v24;

    v26 = sub_2646DF234(v23, v25, aBlock);
    v2 = v36;

    *(v15 + 4) = v26;
    _os_log_impl(&dword_264605000, v13, v14, "#Initiator,LocationSearchViewModel,MKLocalSearchCompleterDelegate, completion results:%s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    v27 = v17;
    v4 = v37;
    MEMORY[0x266740650](v27, -1, -1);
    MEMORY[0x266740650](v15, -1, -1);

    (*(v9 + 8))(v11, v35);
  }

  else
  {

    (*(v9 + 8))(v11, v8);
  }

  sub_264659B70(0, &qword_27FF76980, 0x277D85C78);
  v28 = sub_264785A44();
  v29 = swift_allocObject();
  *(v29 + 16) = v2;
  *(v29 + 24) = v12;
  aBlock[4] = sub_2646D0314;
  aBlock[5] = v29;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_264659F60;
  aBlock[3] = &block_descriptor_10;
  v30 = _Block_copy(aBlock);
  v31 = v12;
  v32 = v2;

  v33 = v38;
  sub_2647855B4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_2646683C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF76990, &qword_264788A90);
  sub_26460CDF0(&qword_27FF75CE0, &unk_27FF76990, &qword_264788A90, MEMORY[0x277D83970]);
  v34 = v41;
  sub_264785BD4();
  MEMORY[0x26673F780](0, v33, v34, v30);
  _Block_release(v30);

  (*(v42 + 8))(v34, v4);
  (*(v39 + 8))(v33, v40);
}

uint64_t sub_2646CF908(void *a1, id a2)
{
  v3 = [a2 results];
  sub_264659B70(0, &unk_27FF77730, 0x277CD4E30);
  v4 = sub_2647857F4();

  if (v4 >> 62)
  {
LABEL_24:
    v5 = sub_264785C14();
    if (!v5)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      goto LABEL_25;
    }
  }

  v6 = 0;
  v23 = a1;
  v24 = MEMORY[0x277D84F90];
  do
  {
    v7 = v6;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x26673FA30](v7, v4);
      }

      else
      {
        if (v7 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v8 = *(v4 + 8 * v7 + 32);
      }

      a1 = v8;
      v6 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      v9 = [v8 mapItem];
      if (v9)
      {
        break;
      }

LABEL_6:

      ++v7;
      if (v6 == v5)
      {
        a1 = v23;
        goto LABEL_25;
      }
    }

    v10 = v9;
    v11 = [v9 placemark];
    v12 = [v11 location];

    if (!v12)
    {

      goto LABEL_6;
    }

    v13 = [a1 title];
    v14 = sub_264785724();
    v16 = v15;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v24 = sub_2647033D0(0, *(v24 + 2) + 1, 1, v24);
    }

    v19 = *(v24 + 2);
    v18 = *(v24 + 3);
    if (v19 >= v18 >> 1)
    {
      v24 = sub_2647033D0((v18 > 1), v19 + 1, 1, v24);
    }

    *(v24 + 2) = v19 + 1;
    v20 = &v24[32 * v19];
    *(v20 + 4) = a1;
    *(v20 + 5) = 0;
    *(v20 + 6) = v14;
    *(v20 + 7) = v16;
    a1 = v23;
  }

  while (v6 != v5);
LABEL_25:

  swift_getKeyPath();
  swift_getKeyPath();
  v21 = a1;
  return sub_264783EE4();
}