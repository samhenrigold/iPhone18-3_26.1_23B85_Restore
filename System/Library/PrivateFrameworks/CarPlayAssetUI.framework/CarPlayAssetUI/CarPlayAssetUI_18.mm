void sub_242DBE374(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  swift_retain_n();
  v5 = sub_242F05F50();
  if (v5 < v4)
  {
    if (v4 >= -1)
    {
      v6 = v5;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF55B8, &qword_242F2F600);
        v8 = sub_242F05360();
        *(v8 + 16) = v7;
      }

      v9[0] = (v8 + 32);
      v9[1] = v7;

      sub_242DBD62C(v9, v10, a1, v6, a2);

      *(v8 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {

    sub_242DBE0FC(0, v4, 1, a1, a2);
  }
}

uint64_t sub_242DBE4CC(void **a1, uint64_t a2)
{
  v4 = *a1;
  swift_retain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_242D9D194(v4);
  }

  v5 = v4[2];
  v7[0] = (v4 + 4);
  v7[1] = v5;

  sub_242DBE374(v7, a2);

  *a1 = v4;
}

uint64_t sub_242DBE590(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_242DBE5F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_242DBE6B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = (a1 + 40);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;

      sub_242CC0A30(&v5, v4, v3);

      v2 += 2;
      --v1;
    }

    while (v1);
  }
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_242DBE748(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_242DBE790(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_242DBE828(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF5DD8;
  if (!qword_27ECF5DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF5DD8);
  }

  return result;
}

unint64_t sub_242DBE880(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF5DE0;
  if (!qword_27ECF5DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF5DE0);
  }

  return result;
}

unint64_t sub_242DBE8D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF5DE8;
  if (!qword_27ECF5DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF5DE8);
  }

  return result;
}

unint64_t sub_242DBE92C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF5DF8;
  if (!qword_27ECF5DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF5DF8);
  }

  return result;
}

unint64_t sub_242DBE980()
{
  result = qword_27ECF5E08;
  if (!qword_27ECF5E08)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF5E00, &qword_242F2F890);
    sub_242DBEA04(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF5E08);
  }

  return result;
}

unint64_t sub_242DBEA04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF5E10;
  if (!qword_27ECF5E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF5E10);
  }

  return result;
}

unint64_t sub_242DBEA58()
{
  result = qword_27ECF5E20;
  if (!qword_27ECF5E20)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF5E00, &qword_242F2F890);
    sub_242DBEADC(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF5E20);
  }

  return result;
}

unint64_t sub_242DBEADC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF5E28;
  if (!qword_27ECF5E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF5E28);
  }

  return result;
}

unint64_t sub_242DBEB30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF5E38;
  if (!qword_27ECF5E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF5E38);
  }

  return result;
}

uint64_t sub_242DBEBEC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_242DBEC34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF5E50;
  if (!qword_27ECF5E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF5E50);
  }

  return result;
}

unint64_t sub_242DBEC88()
{
  result = qword_27ECF5E60;
  if (!qword_27ECF5E60)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF5E58, &qword_242F2F8B8);
    sub_242DBED0C(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF5E60);
  }

  return result;
}

unint64_t sub_242DBED0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF5E68;
  if (!qword_27ECF5E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF5E68);
  }

  return result;
}

unint64_t sub_242DBED60()
{
  result = qword_27ECF5E78;
  if (!qword_27ECF5E78)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF5E58, &qword_242F2F8B8);
    sub_242DBEDE4(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF5E78);
  }

  return result;
}

unint64_t sub_242DBEDE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF5E80;
  if (!qword_27ECF5E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF5E80);
  }

  return result;
}

unint64_t sub_242DBEE6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF5E88;
  if (!qword_27ECF5E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF5E88);
  }

  return result;
}

unint64_t sub_242DBEEC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF5E90;
  if (!qword_27ECF5E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF5E90);
  }

  return result;
}

unint64_t sub_242DBEF1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF5E98;
  if (!qword_27ECF5E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF5E98);
  }

  return result;
}

unint64_t sub_242DBEF74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF5EA0;
  if (!qword_27ECF5EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF5EA0);
  }

  return result;
}

unint64_t sub_242DBEFCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF5EA8;
  if (!qword_27ECF5EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF5EA8);
  }

  return result;
}

unint64_t sub_242DBF024(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF5EB0;
  if (!qword_27ECF5EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF5EB0);
  }

  return result;
}

unint64_t sub_242DBF07C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF5EB8;
  if (!qword_27ECF5EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF5EB8);
  }

  return result;
}

unint64_t sub_242DBF0D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF5EC0;
  if (!qword_27ECF5EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF5EC0);
  }

  return result;
}

unint64_t sub_242DBF12C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF5EC8;
  if (!qword_27ECF5EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF5EC8);
  }

  return result;
}

uint64_t sub_242DBF188(char a1)
{
  v3 = a1;
  v4 = sub_242F03400();
  MEMORY[0x28223BE20](v4);
  v17 = &type metadata for ArcPackage;
  v18 = sub_242DC3DD8(v5, v6, v7);
  v8 = swift_allocObject();
  v16[0] = v8;
  v9 = *(v1 + 80);
  *(v8 + 80) = *(v1 + 64);
  *(v8 + 96) = v9;
  *(v8 + 112) = *(v1 + 96);
  *(v8 + 128) = *(v1 + 112);
  v10 = *(v1 + 16);
  *(v8 + 16) = *v1;
  *(v8 + 32) = v10;
  v11 = *(v1 + 48);
  *(v8 + 48) = *(v1 + 32);
  *(v8 + 64) = v11;
  if (v3 == 2)
  {
    sub_242C66114(v1, v15);
    v12 = asLua(codable:)(v16);
  }

  else
  {
    sub_242F03440();
    swift_allocObject();
    sub_242C66114(v1, v15);
    sub_242F03430();
    byte_27ECF3A00 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5D50, &qword_242F2F500);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_242F0A4E0;
    sub_242F033E0();
    sub_242F033F0();
    v15[0] = v13;
    sub_242DC3C4C(&qword_27ECF5D58, MEMORY[0x277CC8718], MEMORY[0x277CC8730]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5D60, &qword_242F2F508);
    sub_242DC3C94();
    sub_242F05930();
    sub_242F03410();
    __swift_project_boxed_opaque_existential_2Tm(v16, v17);
    v12 = sub_242F03420();
  }

  __swift_destroy_boxed_opaque_existential_2Tm(v16);
  return v12;
}

uint64_t sub_242DBF478(char a1)
{
  v3 = a1;
  v4 = sub_242F03400();
  MEMORY[0x28223BE20](v4);
  v15 = &type metadata for FontLayoutData;
  v16 = sub_242DC3B9C(v5, v6, v7);
  v8 = swift_allocObject();
  v14[0] = v8;
  v9 = v1[1];
  v8[1] = *v1;
  v8[2] = v9;
  *(v8 + 41) = *(v1 + 25);
  if (v3 == 2)
  {
    sub_242DC3BF0(v1, v13);
    v10 = asLua(codable:)(v14);
  }

  else
  {
    sub_242F03440();
    swift_allocObject();
    sub_242DC3BF0(v1, v13);
    sub_242F03430();
    byte_27ECF3A00 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5D50, &qword_242F2F500);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_242F0A4E0;
    sub_242F033E0();
    sub_242F033F0();
    v13[0] = v11;
    sub_242DC3C4C(&qword_27ECF5D58, MEMORY[0x277CC8718], MEMORY[0x277CC8730]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5D60, &qword_242F2F508);
    sub_242DC3C94();
    sub_242F05930();
    sub_242F03410();
    __swift_project_boxed_opaque_existential_2Tm(v14, v15);
    v10 = sub_242F03420();
  }

  __swift_destroy_boxed_opaque_existential_2Tm(v14);
  return v10;
}

uint64_t sub_242DBF738(char a1, uint64_t a2)
{
  v4 = a1;
  v5 = sub_242F03400();
  MEMORY[0x28223BE20](v5);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF6330, &qword_242F2FF40);
  v10 = sub_242DC3CF8();
  v8[0] = a2;
  if (v4 == 2)
  {

    v6 = asLua(codable:)(v8);
  }

  else
  {
    sub_242F03440();
    swift_allocObject();

    sub_242F03430();
    byte_27ECF3A00 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5D50, &qword_242F2F500);
    *(swift_allocObject() + 16) = xmmword_242F0A4E0;
    sub_242F033E0();
    sub_242F033F0();
    sub_242DC3C4C(&qword_27ECF5D58, MEMORY[0x277CC8718], MEMORY[0x277CC8730]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5D60, &qword_242F2F508);
    sub_242DC3C94();
    sub_242F05930();
    sub_242F03410();
    __swift_project_boxed_opaque_existential_2Tm(v8, v9);
    v6 = sub_242F03420();
  }

  __swift_destroy_boxed_opaque_existential_2Tm(v8);
  return v6;
}

uint64_t RasterFont.Face.name.getter()
{
  v1 = 0x6D6574737953;
  v2 = 0x656D754E74666F53;
  if (*v0 != 2)
  {
    v2 = 0x4D2D6D6574737953;
  }

  if (*v0)
  {
    v1 = 1869508429;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

id RasterFont.Face.font(ofSize:weight:)(double a1, double a2)
{
  if (*v2 > 1u)
  {
    if (*v2 == 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF6288, &qword_242F2FBE0);
      inited = swift_initStackObject();
      v6 = *MEMORY[0x277D74328];
      *(inited + 32) = *MEMORY[0x277D74328];
      *(inited + 16) = xmmword_242F0A4E0;
      v7 = MEMORY[0x277D837D0];
      *(inited + 40) = 0x2074666F53204653;
      *(inited + 48) = 0xEF636972656D754ELL;
      v8 = *MEMORY[0x277D74380];
      *(inited + 64) = v7;
      *(inited + 72) = v8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF6290, &qword_242F2FBE8);
      v9 = swift_initStackObject();
      *(v9 + 16) = xmmword_242F09510;
      v10 = *MEMORY[0x277D74430];
      *(v9 + 32) = *MEMORY[0x277D74430];
      v11 = v6;
      v12 = v8;
      v13 = v10;
      *(v9 + 40) = sub_242F037D0();
      v14 = sub_242CE6A18(v9);
      swift_setDeallocating();
      sub_242DC3514(v9 + 32);
      *(inited + 104) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF62A0, &qword_242F2FBF8);
      *(inited + 80) = v14;
      sub_242CE6B10(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2230, &qword_242F13B30);
      swift_arrayDestroy();
      v15 = objc_allocWithZone(MEMORY[0x277D74310]);
      type metadata accessor for AttributeName(0);
      sub_242DC3C4C(&qword_27ECEFA88, type metadata accessor for AttributeName, &unk_242F0928C);
      v16 = sub_242F04CC0();

      v17 = [v15 initWithFontAttributes_];

      v18 = [objc_opt_self() fontWithDescriptor:v17 size:a1];
      return v18;
    }

    v4 = [objc_opt_self() monospacedSystemFontOfSize:a1 weight:a2];
  }

  else if (*v2)
  {
    v4 = [objc_opt_self() monospacedDigitSystemFontOfSize:a1 weight:a2];
  }

  else
  {
    v4 = [objc_opt_self() systemFontOfSize:a1 weight:a2];
  }

  return v4;
}

CarPlayAssetUI::RasterFont::Face_optional __swiftcall RasterFont.Face.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_242F05CD0();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t RasterFont.Face.rawValue.getter()
{
  v1 = 0x6D6574737973;
  v2 = 0x656D754E74666F73;
  if (*v0 != 2)
  {
    v2 = 0x6F4D6D6574737973;
  }

  if (*v0)
  {
    v1 = 0x636170736F6E6F6DLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_242DBFE50()
{
  sub_242F06390();
  sub_242F04DD0();

  return sub_242F063E0();
}

double sub_242DBFF28(uint64_t a1)
{
  sub_242F04DD0();

  return result;
}

uint64_t sub_242DBFFEC(uint64_t a1)
{
  sub_242F06390();
  sub_242F04DD0();

  return sub_242F063E0();
}

void sub_242DC00CC(uint64_t *a1@<X8>)
{
  v2 = 0xE600000000000000;
  v3 = 0x6D6574737973;
  v4 = 0xEB00000000636972;
  v5 = 0x656D754E74666F73;
  if (*v1 != 2)
  {
    v5 = 0x6F4D6D6574737973;
    v4 = 0xEA00000000006F6ELL;
  }

  if (*v1)
  {
    v3 = 0x636170736F6E6F6DLL;
    v2 = 0xEF74696769446465;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

void RasterFont.init(face:pointSize:design:weight:italic:stable:)(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X8>, double a7@<D0>)
{
  v7 = *a1;
  *(a6 + 40) = 0x322D6D6574737953;
  *(a6 + 48) = 0xE900000000000034;
  *a6 = v7;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a7;
  *(a6 + 32) = a4;
  *(a6 + 33) = a5;
  sub_242DC0268();
}

void sub_242DC0268()
{
  v1 = 0x2D656C62617453;
  if (!v0[33])
  {
    v1 = 0;
  }

  v2 = 0xE000000000000000;
  if (v0[33])
  {
    v2 = 0xE700000000000000;
  }

  v21 = v1;
  v22 = v2;
  v3 = 0xE600000000000000;
  v4 = 0x6D6574737953;
  v5 = 0xEB00000000636972;
  v6 = 0x656D754E74666F53;
  if (*v0 != 2)
  {
    v6 = 0x4D2D6D6574737953;
    v5 = 0xEB000000006F6E6FLL;
  }

  if (*v0)
  {
    v4 = 1869508429;
    v3 = 0xE400000000000000;
  }

  if (*v0 <= 1u)
  {
    v7 = v4;
  }

  else
  {
    v7 = v6;
  }

  if (*v0 <= 1u)
  {
    v8 = v3;
  }

  else
  {
    v8 = v5;
  }

  v9 = v0;
  MEMORY[0x245D26660](v7, v8);

  v10 = *(v0 + 2);
  v11 = sub_242F04F30();
  v13 = v12;
  if (v11 == sub_242F04F30() && v13 == v14)
  {
  }

  else
  {
    v16 = sub_242F06110();

    if (v16)
    {
      goto LABEL_23;
    }

    v17 = UIFontDescriptorSystemDesign.name.getter(v10);
    MEMORY[0x245D26660](v17);

    MEMORY[0x245D26660](45, 0xE100000000000000);
  }

LABEL_23:
  v18 = v9[3];
  if (v18 != *MEMORY[0x277D74418])
  {
    v19 = UIFontWeight.name.getter(v18);
    MEMORY[0x245D26660](v19);

    MEMORY[0x245D26660](45, 0xE100000000000000);
  }

  if (*(v9 + 32) == 1)
  {
    MEMORY[0x245D26660](0x63696C6174492DLL, 0xE700000000000000);
  }

  v20 = sub_242F05F60();
  MEMORY[0x245D26660](v20);

  MEMORY[0x245D26660](45, 0xE100000000000000);

  *(v9 + 5) = v21;
  *(v9 + 6) = v22;
}

void sub_242DC0530(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    sub_242DC0268();
  }
}

void RasterFont.design.setter(uint64_t a1)
{
  *(v1 + 16) = a1;

  sub_242DC0268();
}

double RasterFont.ascent.getter()
{
  v0 = RasterFont.cpFont.getter();
  Ascent = CTFontGetAscent(v0);

  return Ascent;
}

id RasterFont.cpFont.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = RasterFont.Face.font(ofSize:weight:)(*(v0 + 8), *(v0 + 24));
  v4 = [v3 fontDescriptor];
  v5 = [v4 fontDescriptorWithDesign_];

  if (!v5)
  {
    v7 = v3;
    if (!v2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  [v3 pointSize];
  v7 = [objc_opt_self() fontWithDescriptor:v5 size:v6];

  if (v2)
  {
LABEL_3:
    v8 = sub_242D0C3B0();

    v3 = v7;
    v7 = v8;
  }

LABEL_4:

  return v7;
}

double RasterFont.height.getter()
{
  v0 = RasterFont.cpFont.getter();
  Ascent = CTFontGetAscent(v0);
  Descent = CTFontGetDescent(v0);

  return ceil(Ascent + Descent);
}

void RasterFont.advance(for:)(uint64_t a1, const __CTFrame *a2)
{
  v4 = RasterFont.cpFont.getter();
  v5 = sub_242EB8B1C(a1, a2);

  if (*(v5 + 16))
  {
  }

  else
  {

    sub_242F05C60();
    __break(1u);
  }
}

void RasterFont.name.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
}

void RasterFont.makeStable()(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 1);
  v5 = *(v1 + 2);
  v6 = *(v1 + 3);
  v7 = v1[32];
  *(a1 + 40) = 0x322D6D6574737953;
  *(a1 + 48) = 0xE900000000000034;
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 33) = 1;
  v8 = v5;
  sub_242DC0268();
}

void RasterFont.softNumeric()(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 33);
  *(a1 + 40) = 0x322D6D6574737953;
  *(a1 + 48) = 0xE900000000000034;
  *a1 = 2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 33) = v7;
  v8 = v4;
  sub_242DC0268();
}

uint64_t sub_242DC0A2C()
{
  v1 = *v0;
  v2 = 1701011814;
  v3 = 0x656C62617473;
  if (v1 != 5)
  {
    v3 = 1701667182;
  }

  v4 = 0x746867696577;
  if (v1 != 3)
  {
    v4 = 0x63696C617469;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x7A6953746E696F70;
  if (v1 != 1)
  {
    v5 = 0x6E6769736564;
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

uint64_t sub_242DC0AE8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_242DC38B4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_242DC0B10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242DC357C(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242DC0B4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242DC357C(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t RasterFont.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF62A8, &qword_242F2FC10);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v20 - v6;
  v8 = *v1;
  v9 = *(v1 + 1);
  v23 = *(v1 + 2);
  v24 = v9;
  v10 = *(v1 + 3);
  LODWORD(v9) = v1[32];
  v21 = v1[33];
  v22 = v9;
  v11 = *(v1 + 5);
  v20[1] = *(v1 + 6);
  v20[2] = v11;
  v12 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242DC357C(v12, v13, v14);
  v15 = sub_242F064C0();
  LOBYTE(v25) = v8;
  v26 = 0;
  sub_242DC35D0(v15, v16, v17);
  sub_242F05F20();
  if (!v2)
  {
    v19 = v23;
    LOBYTE(v25) = 1;
    sub_242F05F00();
    v25 = v19;
    v26 = 2;
    type metadata accessor for SystemDesign(0);
    sub_242DC3C4C(&qword_27ECF62C0, type metadata accessor for SystemDesign, &protocol conformance descriptor for UIFontDescriptorSystemDesign);
    sub_242F05F20();
    v25 = v10;
    v26 = 3;
    type metadata accessor for Weight(0);
    sub_242DC3C4C(&qword_27ECF62C8, type metadata accessor for Weight, &protocol conformance descriptor for UIFontWeight);
    sub_242F05F20();
    LOBYTE(v25) = 4;
    sub_242F05ED0();
    LOBYTE(v25) = 5;
    sub_242F05ED0();
    LOBYTE(v25) = 6;
    sub_242F05EC0();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t RasterFont.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 24);
  sub_242F04DD0();

  MEMORY[0x245D279A0](v2);
  sub_242F04F30();
  sub_242F04DD0();

  v4 = 0.0;
  if (v3 != 0.0)
  {
    v4 = v3;
  }

  MEMORY[0x245D279D0](*&v4);
  sub_242F063B0();
  sub_242F063B0();

  return sub_242F04DD0();
}

uint64_t RasterFont.hashValue.getter()
{
  sub_242F06390();
  RasterFont.hash(into:)(v1);
  return sub_242F063E0();
}

void RasterFont.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF62D0, &qword_242F2FC18);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v29 - v7;
  v9 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242DC357C(v9, v10, v11);
  v12 = sub_242F06480();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_2Tm(a1);
  }

  else
  {
    LOBYTE(v33) = 0;
    sub_242DC3624(v12, v13, v14);
    sub_242F05E00();
    v15 = v37[0];
    LOBYTE(v37[0]) = 1;
    v16 = sub_242F05DE0();
    type metadata accessor for SystemDesign(0);
    LOBYTE(v33) = 2;
    sub_242DC3C4C(&qword_27ECF62E0, type metadata accessor for SystemDesign, &protocol conformance descriptor for UIFontDescriptorSystemDesign);
    sub_242F05E00();
    v32 = v37[0];
    type metadata accessor for Weight(0);
    LOBYTE(v33) = 3;
    sub_242DC3C4C(&qword_27ECF62E8, type metadata accessor for Weight, &protocol conformance descriptor for UIFontWeight);
    sub_242F05E00();
    v17 = v37[0];
    LOBYTE(v37[0]) = 4;
    v31 = sub_242F05DB0();
    LOBYTE(v37[0]) = 5;
    LODWORD(v30) = sub_242F05DB0();
    v44 = 6;
    v18 = sub_242F05DA0();
    v31 &= 1u;
    v19 = v30 & 1;
    v20 = *(v6 + 8);
    v30 = v18;
    v21 = v8;
    v23 = v22;
    v20(v21, v5);
    LOBYTE(v33) = v15;
    *(&v33 + 1) = *v47;
    DWORD1(v33) = *&v47[3];
    v24 = v32;
    *(&v33 + 1) = v16;
    *&v34 = v32;
    *(&v34 + 1) = v17;
    LOBYTE(v35) = v31;
    BYTE1(v35) = v19;
    *(&v35 + 2) = v45;
    WORD3(v35) = v46;
    v25 = v30;
    *(&v35 + 1) = v30;
    v36 = v23;
    v26 = v33;
    v27 = v34;
    v28 = v35;
    *(a2 + 48) = v23;
    *(a2 + 16) = v27;
    *(a2 + 32) = v28;
    *a2 = v26;
    sub_242C94884(&v33, v37);
    __swift_destroy_boxed_opaque_existential_2Tm(a1);
    LOBYTE(v37[0]) = v15;
    *(v37 + 1) = *v47;
    HIDWORD(v37[0]) = *&v47[3];
    v37[1] = v16;
    v37[2] = v24;
    v37[3] = v17;
    v38 = v31;
    v39 = v19;
    v40 = v45;
    v41 = v46;
    v42 = v25;
    v43 = v23;
    sub_242C954DC(v37);
  }
}

uint64_t sub_242DC14B8()
{
  sub_242F06390();
  RasterFont.hash(into:)(v1);
  return sub_242F063E0();
}

uint64_t sub_242DC14FC(uint64_t a1)
{
  sub_242F06390();
  RasterFont.hash(into:)(v2);
  return sub_242F063E0();
}

uint64_t RasterFont.identifier.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

NSFileWrapper_optional __swiftcall RasterFont.generateAsset(destination:)(CarPlayAssetUI::ArcPackageExporter::Destination destination)
{
  v2 = *destination;
  v3 = *(v1 + 33);
  v5 = *(v1 + 40);
  v4 = *(v1 + 48);
  v6 = objc_allocWithZone(MEMORY[0x277CCAA20]);
  sub_242C6CBCC();
  v7 = sub_242F04CC0();
  v8 = [v6 initDirectoryWithFileWrappers_];

  v9 = sub_242F04F00();

  [v8 setPreferredFilename_];

  v48 = v5;
  v10 = *(v1 + 16);
  *v59 = *v1;
  *&v59[16] = v10;
  LOBYTE(v60) = *(v1 + 32);
  BYTE1(v60) = v3;
  *(&v60 + 2) = *(v1 + 34);
  HIWORD(v60) = *(v1 + 38);
  v61 = v5;
  v62 = v4;
  if (v3)
  {
    sub_242DC1A98(&v49);
    v11 = v49;
    v12 = v50;
    v13 = v51;
    v14 = v52;
    v15 = v53;
    v16 = v54;
    v17 = v55;
  }

  else
  {
    v18 = RasterFont.cpFont.getter();
    v19 = sub_242EB9DF8(0x1000000000000050, 0x8000000242F5B550);
    v20 = CTFramesetterCreateWithAttributedString(v19);
    v66.width = 9.22337204e18;
    v64.location = 0;
    v64.length = 0;
    v66.height = 9.22337204e18;
    v21 = CTFramesetterSuggestFrameSizeWithConstraints(v20, v64, 0, v66, 0);
    v67.size.width = v21.width;
    v67.size.height = v21.height;
    v67.origin.x = 0.0;
    v67.origin.y = 0.0;
    v22 = CGPathCreateWithRect(v67, 0);
    v65.location = 0;
    v65.length = 0;
    Frame = CTFramesetterCreateFrame(v20, v65, v22, 0);

    v24 = sub_242EBBC7C(Frame, 0x1000000000000050, 0x8000000242F5B550);
    v25 = sub_242EBBF9C(v24);
    v27 = v26;
    v28 = v25;
    v30 = v29;

    sub_242EB96E0(v27, &v49, v30);
    v17 = sub_242EBC770(v27, v28, v30);

    v16 = v54;
    v15 = v53;
    v14 = v52;
    v13 = v51;
    v12 = v50;
    v11 = v49;
  }

  *v59 = v11;
  *&v59[8] = v12;
  v59[24] = v13;
  v59[25] = v14;
  v60 = v15;
  LOBYTE(v61) = v16;
  v31 = sub_242DBF478(v2);
  v33 = v32;

  if (v2 == 2)
  {
    v34 = 0x614474756F79614CLL;
  }

  else
  {
    v34 = 0x6A2E74756F79616CLL;
  }

  if (v2 == 2)
  {
    v35 = 0xEE0061756C2E6174;
  }

  else
  {
    v35 = 0xEB000000006E6F73;
  }

  NSFileWrapper.addRegularFile(withContents:fileName:)(v31, v33, v34, v35);

  sub_242C6CCC0(v31, v33);
  v36 = UIImagePNGRepresentation(v17);
  if (v36)
  {
    v39 = v36;
    v40 = sub_242F036B0();
    v42 = v41;

    v57 = v48;
    v58 = v4;

    MEMORY[0x245D26660](1735290926, 0xE400000000000000);
    NSFileWrapper.addRegularFile(withContents:fileName:)(v40, v42, v57, v58);

    sub_242C6CCC0(v40, v42);

    v44 = v8;
  }

  else
  {
    sub_242DC3678(0, v37, v38);
    v45 = swift_allocError();
    *v46 = 0;
    v47 = v45;
    swift_willThrow();

    v57 = 0;
    v58 = 0xE000000000000000;
    sub_242F05A80();
    MEMORY[0x245D26660](0xD000000000000019, 0x8000000242F5B5B0);
    MEMORY[0x245D26660](v48, v4);
    MEMORY[0x245D26660](2112034, 0xE300000000000000);
    v56 = v47;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27ECF1F50, &qword_242F304D0);
    sub_242F05C20();
    v44 = sub_242F05C60();
    __break(1u);
  }

  result.value.super.isa = v44;
  result.is_nil = v43;
  return result;
}

uint64_t sub_242DC1A98@<X0>(uint64_t a1@<X8>)
{
  v2 = RasterFont.cpFont.getter();
  v3 = [v2 fontDescriptor];
  v4 = sub_242F05540();
  v5 = sub_242F05540();
  CopyWithFeature = CTFontDescriptorCreateCopyWithFeature(v3, v4, v5);

  v7 = CopyWithFeature;
  [v2 pointSize];
  v9 = [objc_opt_self() fontWithDescriptor:v7 size:v8];

  if (v9 && (v10 = sub_242EB9DF8(0x1000000000000050, 0x8000000242F5B550), v11 = CTFramesetterCreateWithAttributedString(v10), v64.location = 0, v64.length = 0, v68.width = 9.22337204e18, v68.height = 9.22337204e18, v12 = CTFramesetterSuggestFrameSizeWithConstraints(v11, v64, 0, v68, 0), v70.size.width = v12.width, v70.size.height = v12.height, v70.origin.x = 0.0, v70.origin.y = 0.0, v13 = CGPathCreateWithRect(v70, 0), v65.location = 0, v65.length = 0, Frame = CTFramesetterCreateFrame(v11, v65, v13, 0), v10, v11, v13, v15 = sub_242EBBC7C(Frame, 0x1000000000000050, 0x8000000242F5B550), v16 = sub_242EBBF9C(v15), v18 = v17, v19 = v16, v21 = v20, , sub_242EB96E0(v18, &v55, v21), sub_242EBC770(v18, v19, v21), , Frame, v22 = sub_242EB9DF8(0x1000000000000050, 0x8000000242F5B550), v23 = CTFramesetterCreateWithAttributedString(v22), v66.location = 0, v66.length = 0, v69.width = 9.22337204e18, v69.height = 9.22337204e18, v24 = CTFramesetterSuggestFrameSizeWithConstraints(v23, v66, 0, v69, 0), v71.size.width = v24.width, v71.size.height = v24.height, v71.origin.x = 0.0, v71.origin.y = 0.0, v25 = CGPathCreateWithRect(v71, 0), v67.location = 0, v67.length = 0, v26 = CTFramesetterCreateFrame(v23, v67, v25, 0), v22, v23, v25, v27 = sub_242EBBC7C(v26, 0x1000000000000050, 0x8000000242F5B550), v28 = sub_242EBBF9C(v27), v30 = v29, v31 = v28, v33 = v32, , sub_242EB96E0(v30, v59, v33), v34 = sub_242EBC770(v30, v31, v33), , v26, v35 = v56, v56 == *&v59[1]) && (v36 = v57, v57 == *&v59[2]) && (v37 = v55, *(v55 + 16)) && (v38 = sub_242CE519C(49, 0xE100000000000000), (v39 & 1) != 0) && (v40 = v59[0], *(v59[0] + 16)) && (v41 = *(v37 + 56) + 88 * v38, v53 = *(v41 + 48), v54 = *(v41 + 32), v42 = *(v41 + 64), v43 = *(v41 + 72), v44 = *(v41 + 80), v45 = sub_242CE519C(49, 0xE100000000000000), (v46 & 1) != 0))
  {
    v47 = (*(v40 + 56) + 88 * v45);

    v51 = v47[1];
    v52 = *v47;
    sub_242DC3B48(v59);
    v60[0] = v52;
    v60[1] = v51;
    v60[2] = v54;
    v60[3] = v53;
    v61 = v42;
    v62 = v43;
    v63 = v44;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_242CDE25C(v60, 49, 0xE100000000000000, isUniquelyReferenced_nonNull_native);

    v49 = v58;

    result = sub_242DC3B48(&v55);
    *a1 = v40;
    *(a1 + 8) = v35;
    *(a1 + 16) = v36;
    *(a1 + 24) = 0;
    *(a1 + 32) = v49;
    *(a1 + 40) = 1;
    *(a1 + 48) = v34;
  }

  else
  {
    result = sub_242F05C60();
    __break(1u);
  }

  return result;
}

void sub_242DC1F94()
{
  v0 = *MEMORY[0x277D74410];
  v1 = *MEMORY[0x277D74358];
  *(&xmmword_27ECF5EF0 + 1) = 0x322D6D6574737953;
  qword_27ECF5F00 = 0xE900000000000034;
  LOBYTE(xmmword_27ECF5ED0) = 2;
  *(&xmmword_27ECF5ED0 + 1) = 170;
  unk_27ECF5EE0 = v1;
  qword_27ECF5EE8 = v0;
  LOWORD(xmmword_27ECF5EF0) = 256;
  v2 = v1;
  sub_242DC0268();
}

uint64_t static RasterFont.title1.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECEF548 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_27ECF5EE0;
  v7[0] = xmmword_27ECF5ED0;
  v7[1] = unk_27ECF5EE0;
  v2 = xmmword_27ECF5EF0;
  v7[2] = xmmword_27ECF5EF0;
  v3 = qword_27ECF5F00;
  v8 = qword_27ECF5F00;
  *a1 = xmmword_27ECF5ED0;
  *(a1 + 16) = v1;
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  return sub_242C94884(v7, v6);
}

void sub_242DC20C8()
{
  v0 = *MEMORY[0x277D74410];
  v1 = *MEMORY[0x277D74358];
  *(&xmmword_27ECF5F28 + 1) = 0x322D6D6574737953;
  qword_27ECF5F38 = 0xE900000000000034;
  LOBYTE(xmmword_27ECF5F08) = 0;
  *(&xmmword_27ECF5F08 + 1) = 90;
  unk_27ECF5F18 = v1;
  qword_27ECF5F20 = v0;
  LOWORD(xmmword_27ECF5F28) = 0;
  v2 = v1;
  sub_242DC0268();
}

uint64_t static RasterFont.title3.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECEF550 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_27ECF5F18;
  v7[0] = xmmword_27ECF5F08;
  v7[1] = unk_27ECF5F18;
  v2 = xmmword_27ECF5F28;
  v7[2] = xmmword_27ECF5F28;
  v3 = qword_27ECF5F38;
  v8 = qword_27ECF5F38;
  *a1 = xmmword_27ECF5F08;
  *(a1 + 16) = v1;
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  return sub_242C94884(v7, v6);
}

void sub_242DC21F4()
{
  v0 = *MEMORY[0x277D74410];
  v1 = *MEMORY[0x277D74358];
  *(&xmmword_27ECF5F60 + 1) = 0x322D6D6574737953;
  qword_27ECF5F70 = 0xE900000000000034;
  LOBYTE(xmmword_27ECF5F40) = 2;
  *(&xmmword_27ECF5F40 + 1) = 200;
  unk_27ECF5F50 = v1;
  qword_27ECF5F58 = v0;
  LOWORD(xmmword_27ECF5F60) = 256;
  v2 = v1;
  sub_242DC0268();
}

uint64_t static RasterFont.largeModularTitle.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECEF558 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_27ECF5F50;
  v7[0] = xmmword_27ECF5F40;
  v7[1] = unk_27ECF5F50;
  v2 = xmmword_27ECF5F60;
  v7[2] = xmmword_27ECF5F60;
  v3 = qword_27ECF5F70;
  v8 = qword_27ECF5F70;
  *a1 = xmmword_27ECF5F40;
  *(a1 + 16) = v1;
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  return sub_242C94884(v7, v6);
}

void sub_242DC2328()
{
  v0 = *MEMORY[0x277D74410];
  v1 = *MEMORY[0x277D74358];
  *(&xmmword_27ECF5F98 + 1) = 0x322D6D6574737953;
  qword_27ECF5FA8 = 0xE900000000000034;
  LOBYTE(xmmword_27ECF5F78) = 0;
  *(&xmmword_27ECF5F78 + 1) = 36;
  unk_27ECF5F88 = v1;
  qword_27ECF5F90 = v0;
  LOWORD(xmmword_27ECF5F98) = 0;
  v2 = v1;
  sub_242DC0268();
}

uint64_t static RasterFont.body.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECEF560 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_27ECF5F88;
  v7[0] = xmmword_27ECF5F78;
  v7[1] = unk_27ECF5F88;
  v2 = xmmword_27ECF5F98;
  v7[2] = xmmword_27ECF5F98;
  v3 = qword_27ECF5FA8;
  v8 = qword_27ECF5FA8;
  *a1 = xmmword_27ECF5F78;
  *(a1 + 16) = v1;
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  return sub_242C94884(v7, v6);
}

void sub_242DC2454()
{
  v0 = *MEMORY[0x277D74410];
  v1 = *MEMORY[0x277D74358];
  *(&xmmword_27ECF5FD0 + 1) = 0x322D6D6574737953;
  qword_27ECF5FE0 = 0xE900000000000034;
  LOBYTE(xmmword_27ECF5FB0) = 0;
  *(&xmmword_27ECF5FB0 + 1) = 30;
  unk_27ECF5FC0 = v1;
  qword_27ECF5FC8 = v0;
  LOWORD(xmmword_27ECF5FD0) = 0;
  v2 = v1;
  sub_242DC0268();
}

uint64_t static RasterFont.subheadline.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECEF568 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_27ECF5FC0;
  v7[0] = xmmword_27ECF5FB0;
  v7[1] = unk_27ECF5FC0;
  v2 = xmmword_27ECF5FD0;
  v7[2] = xmmword_27ECF5FD0;
  v3 = qword_27ECF5FE0;
  v8 = qword_27ECF5FE0;
  *a1 = xmmword_27ECF5FB0;
  *(a1 + 16) = v1;
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  return sub_242C94884(v7, v6);
}

void sub_242DC2580()
{
  v0 = *MEMORY[0x277D74410];
  v1 = *MEMORY[0x277D74358];
  *(&xmmword_27ECF6008 + 1) = 0x322D6D6574737953;
  qword_27ECF6018 = 0xE900000000000034;
  LOBYTE(xmmword_27ECF5FE8) = 0;
  *(&xmmword_27ECF5FE8 + 1) = 32;
  unk_27ECF5FF8 = v1;
  qword_27ECF6000 = v0;
  LOWORD(xmmword_27ECF6008) = 0;
  v2 = v1;
  sub_242DC0268();
}

uint64_t static RasterFont.system32.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECEF570 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_27ECF5FF8;
  v7[0] = xmmword_27ECF5FE8;
  v7[1] = unk_27ECF5FF8;
  v2 = xmmword_27ECF6008;
  v7[2] = xmmword_27ECF6008;
  v3 = qword_27ECF6018;
  v8 = qword_27ECF6018;
  *a1 = xmmword_27ECF5FE8;
  *(a1 + 16) = v1;
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  return sub_242C94884(v7, v6);
}

void sub_242DC26AC()
{
  v0 = *MEMORY[0x277D74410];
  v1 = *MEMORY[0x277D74358];
  *(&xmmword_27ECF6040 + 1) = 0x322D6D6574737953;
  qword_27ECF6050 = 0xE900000000000034;
  LOBYTE(xmmword_27ECF6020) = 3;
  *(&xmmword_27ECF6020 + 1) = 16;
  unk_27ECF6030 = v1;
  qword_27ECF6038 = v0;
  LOWORD(xmmword_27ECF6040) = 0;
  v2 = v1;
  sub_242DC0268();
}

uint64_t static RasterFont.tickOrnament.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECEF578 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_27ECF6030;
  v7[0] = xmmword_27ECF6020;
  v7[1] = unk_27ECF6030;
  v2 = xmmword_27ECF6040;
  v7[2] = xmmword_27ECF6040;
  v3 = qword_27ECF6050;
  v8 = qword_27ECF6050;
  *a1 = xmmword_27ECF6020;
  *(a1 + 16) = v1;
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  return sub_242C94884(v7, v6);
}

void sub_242DC27DC()
{
  v0 = *MEMORY[0x277D74410];
  v1 = *MEMORY[0x277D74358];
  *(&xmmword_27ECF6078 + 1) = 0x322D6D6574737953;
  qword_27ECF6088 = 0xE900000000000034;
  LOBYTE(xmmword_27ECF6058) = 0;
  *(&xmmword_27ECF6058 + 1) = 170;
  unk_27ECF6068 = v1;
  qword_27ECF6070 = v0;
  LOWORD(xmmword_27ECF6078) = 0;
  v2 = v1;
  sub_242DC0268();
}

uint64_t static RasterFont.largeRadialGaugeHeadlineFont.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECEF580 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_27ECF6068;
  v7[0] = xmmword_27ECF6058;
  v7[1] = unk_27ECF6068;
  v2 = xmmword_27ECF6078;
  v7[2] = xmmword_27ECF6078;
  v3 = qword_27ECF6088;
  v8 = qword_27ECF6088;
  *a1 = xmmword_27ECF6058;
  *(a1 + 16) = v1;
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  return sub_242C94884(v7, v6);
}

void sub_242DC2908()
{
  v0 = *MEMORY[0x277D74410];
  v1 = *MEMORY[0x277D74358];
  *(&xmmword_27ECF60B0 + 1) = 0x322D6D6574737953;
  qword_27ECF60C0 = 0xE900000000000034;
  LOBYTE(xmmword_27ECF6090) = 0;
  *(&xmmword_27ECF6090 + 1) = 36;
  unk_27ECF60A0 = v1;
  qword_27ECF60A8 = v0;
  LOWORD(xmmword_27ECF60B0) = 0;
  v2 = v1;
  sub_242DC0268();
}

uint64_t static RasterFont.largeRadialGaugeSubheadlineFont.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECEF588 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_27ECF60A0;
  v7[0] = xmmword_27ECF6090;
  v7[1] = unk_27ECF60A0;
  v2 = xmmword_27ECF60B0;
  v7[2] = xmmword_27ECF60B0;
  v3 = qword_27ECF60C0;
  v8 = qword_27ECF60C0;
  *a1 = xmmword_27ECF6090;
  *(a1 + 16) = v1;
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  return sub_242C94884(v7, v6);
}

void sub_242DC2A34()
{
  v0 = *MEMORY[0x277D74410];
  v1 = *MEMORY[0x277D74358];
  *(&xmmword_27ECF60E8 + 1) = 0x322D6D6574737953;
  qword_27ECF60F8 = 0xE900000000000034;
  LOBYTE(xmmword_27ECF60C8) = 0;
  *(&xmmword_27ECF60C8 + 1) = 36;
  unk_27ECF60D8 = v1;
  qword_27ECF60E0 = v0;
  LOWORD(xmmword_27ECF60E8) = 0;
  v2 = v1;
  sub_242DC0268();
}

uint64_t static RasterFont.largeRadialGaugeFooterFont.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECEF590 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_27ECF60D8;
  v7[0] = xmmword_27ECF60C8;
  v7[1] = unk_27ECF60D8;
  v2 = xmmword_27ECF60E8;
  v7[2] = xmmword_27ECF60E8;
  v3 = qword_27ECF60F8;
  v8 = qword_27ECF60F8;
  *a1 = xmmword_27ECF60C8;
  *(a1 + 16) = v1;
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  return sub_242C94884(v7, v6);
}

void sub_242DC2B60()
{
  v0 = *MEMORY[0x277D74358];
  v1 = *MEMORY[0x277D74418];
  *(&xmmword_27ECF6120 + 1) = 0x322D6D6574737953;
  qword_27ECF6130 = 0xE900000000000034;
  LOBYTE(xmmword_27ECF6100) = 0;
  *(&xmmword_27ECF6100 + 1) = 30;
  unk_27ECF6110 = v0;
  qword_27ECF6118 = v1;
  LOWORD(xmmword_27ECF6120) = 0;
  v2 = v0;
  sub_242DC0268();
}

uint64_t static RasterFont.largeRadialVectorFont.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECEF598 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_27ECF6110;
  v7[0] = xmmword_27ECF6100;
  v7[1] = unk_27ECF6110;
  v2 = xmmword_27ECF6120;
  v7[2] = xmmword_27ECF6120;
  v3 = qword_27ECF6130;
  v8 = qword_27ECF6130;
  *a1 = xmmword_27ECF6100;
  *(a1 + 16) = v1;
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  return sub_242C94884(v7, v6);
}

void sub_242DC2C8C()
{
  v0 = *MEMORY[0x277D74410];
  v1 = *MEMORY[0x277D74358];
  *(&xmmword_27ECF6158 + 1) = 0x322D6D6574737953;
  qword_27ECF6168 = 0xE900000000000034;
  LOBYTE(xmmword_27ECF6138) = 0;
  *(&xmmword_27ECF6138 + 1) = 36;
  unk_27ECF6148 = v1;
  qword_27ECF6150 = v0;
  LOWORD(xmmword_27ECF6158) = 0;
  v2 = v1;
  sub_242DC0268();
}

uint64_t static RasterFont.horizontalGaugeRegularFont.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECEF5A0 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_27ECF6148;
  v7[0] = xmmword_27ECF6138;
  v7[1] = unk_27ECF6148;
  v2 = xmmword_27ECF6158;
  v7[2] = xmmword_27ECF6158;
  v3 = qword_27ECF6168;
  v8 = qword_27ECF6168;
  *a1 = xmmword_27ECF6138;
  *(a1 + 16) = v1;
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  return sub_242C94884(v7, v6);
}

void sub_242DC2DB8()
{
  v0 = *MEMORY[0x277D74410];
  v1 = *MEMORY[0x277D74358];
  *(&xmmword_27ECF6190 + 1) = 0x322D6D6574737953;
  qword_27ECF61A0 = 0xE900000000000034;
  LOBYTE(xmmword_27ECF6170) = 0;
  *(&xmmword_27ECF6170 + 1) = 90;
  unk_27ECF6180 = v1;
  qword_27ECF6188 = v0;
  LOWORD(xmmword_27ECF6190) = 0;
  v2 = v1;
  sub_242DC0268();
}

uint64_t static RasterFont.horizontalGaugeLargeFont.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECEF5A8 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_27ECF6180;
  v7[0] = xmmword_27ECF6170;
  v7[1] = unk_27ECF6180;
  v2 = xmmword_27ECF6190;
  v7[2] = xmmword_27ECF6190;
  v3 = qword_27ECF61A0;
  v8 = qword_27ECF61A0;
  *a1 = xmmword_27ECF6170;
  *(a1 + 16) = v1;
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  return sub_242C94884(v7, v6);
}

void sub_242DC2EE4()
{
  v0 = *MEMORY[0x277D74410];
  v1 = *MEMORY[0x277D74358];
  *(&xmmword_27ECF61C8 + 1) = 0x322D6D6574737953;
  qword_27ECF61D8 = 0xE900000000000034;
  LOBYTE(xmmword_27ECF61A8) = 0;
  *(&xmmword_27ECF61A8 + 1) = 30;
  unk_27ECF61B8 = v1;
  qword_27ECF61C0 = v0;
  LOWORD(xmmword_27ECF61C8) = 0;
  v2 = v1;
  sub_242DC0268();
}

uint64_t static RasterFont.horizontalGaugeCruiseControlFont.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECEF5B0 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_27ECF61B8;
  v7[0] = xmmword_27ECF61A8;
  v7[1] = unk_27ECF61B8;
  v2 = xmmword_27ECF61C8;
  v7[2] = xmmword_27ECF61C8;
  v3 = qword_27ECF61D8;
  v8 = qword_27ECF61D8;
  *a1 = xmmword_27ECF61A8;
  *(a1 + 16) = v1;
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  return sub_242C94884(v7, v6);
}

void sub_242DC3010()
{
  v0 = *MEMORY[0x277D74410];
  v1 = *MEMORY[0x277D74358];
  *(&xmmword_27ECF6200 + 1) = 0x322D6D6574737953;
  qword_27ECF6210 = 0xE900000000000034;
  LOBYTE(xmmword_27ECF61E0) = 0;
  *(&xmmword_27ECF61E0 + 1) = 36;
  unk_27ECF61F0 = v1;
  qword_27ECF61F8 = v0;
  LOWORD(xmmword_27ECF6200) = 0;
  v2 = v1;
  sub_242DC0268();
}

uint64_t static RasterFont.modularGaugeFont.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECEF5B8 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_27ECF61F0;
  v7[0] = xmmword_27ECF61E0;
  v7[1] = unk_27ECF61F0;
  v2 = xmmword_27ECF6200;
  v7[2] = xmmword_27ECF6200;
  v3 = qword_27ECF6210;
  v8 = qword_27ECF6210;
  *a1 = xmmword_27ECF61E0;
  *(a1 + 16) = v1;
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  return sub_242C94884(v7, v6);
}

void sub_242DC313C()
{
  v0 = *MEMORY[0x277D74410];
  v1 = *MEMORY[0x277D74358];
  *(&xmmword_27ECF6238 + 1) = 0x322D6D6574737953;
  qword_27ECF6248 = 0xE900000000000034;
  LOBYTE(xmmword_27ECF6218) = 0;
  *(&xmmword_27ECF6218 + 1) = 220;
  unk_27ECF6228 = v1;
  qword_27ECF6230 = v0;
  LOWORD(xmmword_27ECF6238) = 0;
  v2 = v1;
  sub_242DC0268();
}

uint64_t static RasterFont.modularGaugeSpeedFont.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECEF5C0 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_27ECF6228;
  v7[0] = xmmword_27ECF6218;
  v7[1] = unk_27ECF6228;
  v2 = xmmword_27ECF6238;
  v7[2] = xmmword_27ECF6238;
  v3 = qword_27ECF6248;
  v8 = qword_27ECF6248;
  *a1 = xmmword_27ECF6218;
  *(a1 + 16) = v1;
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  return sub_242C94884(v7, v6);
}

void sub_242DC3268()
{
  v0 = *MEMORY[0x277D74410];
  v1 = *MEMORY[0x277D74358];
  *(&xmmword_27ECF6270 + 1) = 0x322D6D6574737953;
  qword_27ECF6280 = 0xE900000000000034;
  LOBYTE(xmmword_27ECF6250) = 0;
  *(&xmmword_27ECF6250 + 1) = 46;
  unk_27ECF6260 = v1;
  qword_27ECF6268 = v0;
  LOWORD(xmmword_27ECF6270) = 0;
  v2 = v1;
  sub_242DC0268();
}

uint64_t static RasterFont.digiLinearGearIndicatorFont.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECEF5C8 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_27ECF6260;
  v7[0] = xmmword_27ECF6250;
  v7[1] = unk_27ECF6260;
  v2 = xmmword_27ECF6270;
  v7[2] = xmmword_27ECF6270;
  v3 = qword_27ECF6280;
  v8 = qword_27ECF6280;
  *a1 = xmmword_27ECF6250;
  *(a1 + 16) = v1;
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  return sub_242C94884(v7, v6);
}

uint64_t _s14CarPlayAssetUI10RasterFontV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 33);
  v19 = *(a1 + 40);
  v20 = *(a1 + 48);
  v6 = *(a2 + 8);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 33);
  v11 = *(a2 + 40);
  v10 = *(a2 + 48);
  v12 = sub_242D71AEC(*a1, *a2);
  result = 0;
  if ((v12 & 1) != 0 && v2 == v6)
  {
    v14 = sub_242F04F30();
    v16 = v15;
    if (v14 == sub_242F04F30() && v16 == v17)
    {

      result = 0;
    }

    else
    {
      v18 = sub_242F06110();

      result = 0;
      if ((v18 & 1) == 0)
      {
        return result;
      }
    }

    if (v3 == v7 && ((v4 ^ v8) & 1) == 0 && ((v5 ^ v9) & 1) == 0)
    {
      if (v19 == v11 && v20 == v10)
      {
        return 1;
      }

      else
      {

        return sub_242F06110();
      }
    }
  }

  return result;
}

uint64_t sub_242DC3514(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF6298, &qword_242F2FBF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_242DC357C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF62B0;
  if (!qword_27ECF62B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF62B0);
  }

  return result;
}

unint64_t sub_242DC35D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF62B8;
  if (!qword_27ECF62B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF62B8);
  }

  return result;
}

unint64_t sub_242DC3624(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF62D8;
  if (!qword_27ECF62D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF62D8);
  }

  return result;
}

unint64_t sub_242DC3678(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF62F0;
  if (!qword_27ECF62F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF62F0);
  }

  return result;
}

unint64_t sub_242DC36D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF62F8;
  if (!qword_27ECF62F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF62F8);
  }

  return result;
}

unint64_t sub_242DC3728(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF6300;
  if (!qword_27ECF6300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF6300);
  }

  return result;
}

unint64_t sub_242DC37B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF6308;
  if (!qword_27ECF6308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF6308);
  }

  return result;
}

unint64_t sub_242DC3808(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF6310;
  if (!qword_27ECF6310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF6310);
  }

  return result;
}

unint64_t sub_242DC3860(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF6318;
  if (!qword_27ECF6318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF6318);
  }

  return result;
}

uint64_t sub_242DC38B4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701011814 && a2 == 0xE400000000000000;
  if (v3 || (sub_242F06110() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7A6953746E696F70 && a2 == 0xE900000000000065 || (sub_242F06110() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6769736564 && a2 == 0xE600000000000000 || (sub_242F06110() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x746867696577 && a2 == 0xE600000000000000 || (sub_242F06110() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x63696C617469 && a2 == 0xE600000000000000 || (sub_242F06110() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656C62617473 && a2 == 0xE600000000000000 || (sub_242F06110() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    return 6;
  }

  else
  {
    v6 = sub_242F06110();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

unint64_t sub_242DC3AF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF6320;
  if (!qword_27ECF6320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF6320);
  }

  return result;
}

unint64_t sub_242DC3B9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF6328;
  if (!qword_27ECF6328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF6328);
  }

  return result;
}

uint64_t sub_242DC3C4C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_242DC3C94()
{
  result = qword_27ECF5D68;
  if (!qword_27ECF5D68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF5D60, &qword_242F2F508);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF5D68);
  }

  return result;
}

unint64_t sub_242DC3CF8()
{
  result = qword_27ECF6338;
  if (!qword_27ECF6338)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF6330, &qword_242F2FF40);
    sub_242DC3D84(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF6338);
  }

  return result;
}

unint64_t sub_242DC3D84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF6340;
  if (!qword_27ECF6340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF6340);
  }

  return result;
}

unint64_t sub_242DC3DD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF6348;
  if (!qword_27ECF6348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF6348);
  }

  return result;
}

uint64_t sub_242DC3E3C()
{
  v0 = sub_242F04700();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *MEMORY[0x277CE0EE0];
  v6 = *(v1 + 104);
  v6(v4, v5, v0, v2);
  v16 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v15 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v14 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v7 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v8 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v9 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v10 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v11 = sub_242F047A0();
  (v6)(v4, v5, v0);
  result = sub_242F047A0();
  *&xmmword_27ECF6350 = v16;
  *(&xmmword_27ECF6350 + 1) = v15;
  qword_27ECF6360 = v14;
  unk_27ECF6368 = v7;
  *&xmmword_27ECF6370 = v8;
  *(&xmmword_27ECF6370 + 1) = v9;
  qword_27ECF6380 = v10;
  unk_27ECF6388 = v11;
  qword_27ECF6390 = result;
  return result;
}

uint64_t static Color.Ticks.red.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECEF5D0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = *&qword_27ECF6380;
  v8[2] = xmmword_27ECF6370;
  v8[3] = *&qword_27ECF6380;
  v9 = qword_27ECF6390;
  v3 = qword_27ECF6390;
  v4 = *&qword_27ECF6360;
  v8[0] = xmmword_27ECF6350;
  v5 = xmmword_27ECF6350;
  v8[1] = *&qword_27ECF6360;
  *(a1 + 32) = xmmword_27ECF6370;
  *(a1 + 48) = v2;
  *(a1 + 64) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return sub_242C8CBA8(v8, &v7);
}

uint64_t static Color.Ticks.red.setter(uint64_t a1)
{
  if (qword_27ECEF5D0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5[2] = xmmword_27ECF6370;
  v5[3] = *&qword_27ECF6380;
  v6 = qword_27ECF6390;
  v5[0] = xmmword_27ECF6350;
  v5[1] = *&qword_27ECF6360;
  v2 = *(a1 + 48);
  xmmword_27ECF6370 = *(a1 + 32);
  *&qword_27ECF6380 = v2;
  qword_27ECF6390 = *(a1 + 64);
  v3 = *(a1 + 16);
  xmmword_27ECF6350 = *a1;
  *&qword_27ECF6360 = v3;
  return sub_242C8CCB0(v5);
}

uint64_t (*static Color.Ticks.red.modify(uint64_t a1))()
{
  if (qword_27ECEF5D0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_242DC42FC()
{
  v0 = sub_242F04700();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *MEMORY[0x277CE0EE0];
  v6 = *(v1 + 104);
  v6(v4, v5, v0, v2);
  v16 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v15 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v14 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v7 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v8 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v9 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v10 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v11 = sub_242F047A0();
  (v6)(v4, v5, v0);
  result = sub_242F047A0();
  *&xmmword_27ECF6398 = v16;
  *(&xmmword_27ECF6398 + 1) = v15;
  qword_27ECF63A8 = v14;
  unk_27ECF63B0 = v7;
  *&xmmword_27ECF63B8 = v8;
  *(&xmmword_27ECF63B8 + 1) = v9;
  qword_27ECF63C8 = v10;
  unk_27ECF63D0 = v11;
  qword_27ECF63D8 = result;
  return result;
}

uint64_t static Color.ProgressBars.red.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECEF5D8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = *&qword_27ECF63C8;
  v8[2] = xmmword_27ECF63B8;
  v8[3] = *&qword_27ECF63C8;
  v9 = qword_27ECF63D8;
  v3 = qword_27ECF63D8;
  v4 = *&qword_27ECF63A8;
  v8[0] = xmmword_27ECF6398;
  v5 = xmmword_27ECF6398;
  v8[1] = *&qword_27ECF63A8;
  *(a1 + 32) = xmmword_27ECF63B8;
  *(a1 + 48) = v2;
  *(a1 + 64) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return sub_242C8D144(v8, &v7);
}

uint64_t static Color.ProgressBars.red.setter(uint64_t a1)
{
  if (qword_27ECEF5D8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5[2] = xmmword_27ECF63B8;
  v5[3] = *&qword_27ECF63C8;
  v6 = qword_27ECF63D8;
  v5[0] = xmmword_27ECF6398;
  v5[1] = *&qword_27ECF63A8;
  v2 = *(a1 + 48);
  xmmword_27ECF63B8 = *(a1 + 32);
  *&qword_27ECF63C8 = v2;
  qword_27ECF63D8 = *(a1 + 64);
  v3 = *(a1 + 16);
  xmmword_27ECF6398 = *a1;
  *&qword_27ECF63A8 = v3;
  return sub_242C8D24C(v5);
}

uint64_t (*static Color.ProgressBars.red.modify(uint64_t a1))()
{
  if (qword_27ECEF5D8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_242DC47DC()
{
  v0 = sub_242F04700();
  v1 = MEMORY[0x28223BE20](v0);
  (*(v3 + 104))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CE0EE0], v1);
  result = sub_242F047A0();
  qword_27ED5D340 = result;
  return result;
}

uint64_t sub_242DC48B4()
{
  v0 = sub_242F04700();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *MEMORY[0x277CE0EE0];
  v6 = *(v1 + 104);
  v6(v4, v5, v0, v2);
  v14 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v7 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v8 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v9 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v10 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v11 = sub_242F047A0();
  (v6)(v4, v5, v0);
  result = sub_242F047A0();
  *&xmmword_27ECF63E0 = v14;
  *(&xmmword_27ECF63E0 + 1) = v7;
  qword_27ECF63F0 = v8;
  unk_27ECF63F8 = v9;
  *&xmmword_27ECF6400 = v10;
  *(&xmmword_27ECF6400 + 1) = v11;
  qword_27ECF6410 = result;
  return result;
}

uint64_t static Color.ACC.red.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECEF5E8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = *(&xmmword_27ECF63E0 + 1);
  v3 = qword_27ECF63F0;
  v4 = unk_27ECF63F8;
  v5 = xmmword_27ECF6400;
  v6 = qword_27ECF6410;
  *a1 = xmmword_27ECF63E0;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
}

uint64_t static Color.ACC.red.setter(uint64_t a1)
{
  v4 = *(a1 + 16);
  v5 = *a1;
  v3 = *(a1 + 32);
  v1 = *(a1 + 48);
  if (qword_27ECEF5E8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  xmmword_27ECF63E0 = v5;
  *&qword_27ECF63F0 = v4;
  xmmword_27ECF6400 = v3;
  qword_27ECF6410 = v1;
}

uint64_t (*static Color.ACC.red.modify(uint64_t a1))()
{
  if (qword_27ECEF5E8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_242DC4D9C()
{
  if (qword_27ECEF5D8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v37 = xmmword_27ECF63B8;
  v38 = *&qword_27ECF63C8;
  v39 = qword_27ECF63D8;
  v35 = xmmword_27ECF6398;
  v36 = *&qword_27ECF63A8;
  sub_242C8D144(&v35, &v40);
  if (qword_27ECEF5D0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v42 = xmmword_27ECF6370;
  v43 = *&qword_27ECF6380;
  v44 = qword_27ECF6390;
  v40 = xmmword_27ECF6350;
  v41 = *&qword_27ECF6360;
  sub_242C8CBA8(&v40, &v31);
  if (qword_27ECEF5E0 != -1)
  {
    swift_once();
  }

  v0 = qword_27ECEF5E8;
  v29 = qword_27ED5D340;

  if (v0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = *(&xmmword_27ECF63E0 + 1);
  v2 = qword_27ECF63F0;
  v3 = unk_27ECF63F8;
  v4 = xmmword_27ECF6400;
  v5 = qword_27ECF6410;
  v6 = qword_27ECEF0B0;
  v28 = xmmword_27ECF63E0;

  v27 = v1;

  v26 = v2;

  v25 = v3;

  v24 = v5;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = *algn_27ECF3678;
  v8 = qword_27ECF3680;
  v9 = qword_27ECEF0B8;
  v23 = qword_27ECF3670;

  v22 = v7;

  v21 = v8;

  if (v9 != -1)
  {
    swift_once();
  }

  v10 = qword_27ECEF0C0;
  v20 = qword_27ECF3688;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = *algn_27ECF3698;
  v12 = qword_27ECF36A0;
  v13 = unk_27ECF36A8;
  v14 = qword_27ECF36B0;
  v15 = unk_27ECF36B8;
  v16 = qword_27ECF36C0;
  v17 = qword_27ECEF0C8;
  v19 = qword_27ECF3690;

  if (v17 != -1)
  {
    swift_once();
  }

  v31 = xmmword_27ECF36C8;
  v32 = *&qword_27ECF36D8;
  v33 = xmmword_27ECF36E8;
  v34 = *&qword_27ECF36F8;
  sub_242C8E7B0(&v31, v30);
  if (qword_27ECEF0D0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  xmmword_27ECF6438 = v37;
  unk_27ECF6448 = v38;
  xmmword_27ECF6418 = v35;
  unk_27ECF6428 = v36;
  unk_27ECF6460 = v40;
  unk_27ECF6490 = v43;
  qword_27ECF6458 = v39;
  unk_27ECF6480 = v42;
  unk_27ECF6470 = v41;
  qword_27ECF64A0 = v44;
  unk_27ECF64A8 = v29;
  qword_27ECF64B0 = v23;
  unk_27ECF64B8 = v22;
  qword_27ECF64C0 = v21;
  unk_27ECF64C8 = v28;
  qword_27ECF64D0 = v27;
  qword_27ECF64D8 = v26;
  unk_27ECF64E0 = v25;
  xmmword_27ECF64E8 = v4;
  qword_27ECF64F8 = v24;
  unk_27ECF6500 = v20;
  qword_27ECF6508 = v19;
  qword_27ECF6510 = v11;
  unk_27ECF6518 = v12;
  qword_27ECF6520 = v13;
  unk_27ECF6528 = v14;
  qword_27ECF6530 = v15;
  unk_27ECF6538 = v16;
  xmmword_27ECF6560 = v33;
  unk_27ECF6570 = v34;
  xmmword_27ECF6540 = v31;
  *algn_27ECF6550 = v32;
  xmmword_27ECF6580 = xmmword_27ECF3708;
  qword_27ECF6590 = qword_27ECF3718;
  unk_27ECF6598 = unk_27ECF3720;
  xmmword_27ECF65A0 = xmmword_27ECF3728;
  qword_27ECF65B0 = qword_27ECF3738;
}

uint64_t static Color.ColorValues.red.getter@<X0>(void *a1@<X8>)
{
  if (qword_27ECEF5F0 != -1)
  {
    swift_once();
  }

  memcpy(__dst, &xmmword_27ECF6418, sizeof(__dst));
  memcpy(a1, &xmmword_27ECF6418, 0x1A0uLL);
  return sub_242C8DFF4(__dst, &v3);
}

uint64_t sub_242DC5310()
{
  v0 = sub_242F04700();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0758, &qword_242F0B4B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_242F0A4E0;
  *(inited + 32) = xmmword_242F0B490;
  v25 = inited + 32;
  *(inited + 48) = 0;
  v5 = *(v1 + 104);
  v24 = *MEMORY[0x277CE0EE0];
  v23 = v5;
  v5(v3);
  v6 = sub_242F047A0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE50, &unk_242F37640);
  v7 = swift_initStackObject();
  v22 = xmmword_242F09510;
  *(v7 + 16) = xmmword_242F09510;
  *(v7 + 32) = 0;
  v8 = v7 + 32;
  *(v7 + 40) = v6;
  v9 = sub_242CE6C84(v7);
  swift_setDeallocating();

  sub_242C6E840(v8);
  v10 = sub_242E1E384(v9);

  if (*(v10 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE60, &qword_242F37650);
    v11 = sub_242F05CB0();
  }

  else
  {
    v11 = MEMORY[0x277D84F98];
  }

  v26[0] = v11;

  sub_242E21B3C(v12, 1, v26);

  *(inited + 56) = v26[0];
  *(inited + 64) = xmmword_242F0B4A0;
  *(inited + 80) = 0;
  v23(v3, v24, v0);
  v13 = sub_242F047A0();
  v14 = swift_initStackObject();
  *(v14 + 16) = v22;
  *(v14 + 32) = 0;
  v15 = v14 + 32;
  *(v14 + 40) = v13;
  v16 = sub_242CE6C84(v14);
  swift_setDeallocating();

  sub_242C6E840(v15);
  v17 = sub_242E1E384(v16);

  if (*(v17 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE60, &qword_242F37650);
    v18 = sub_242F05CB0();
  }

  else
  {
    v18 = MEMORY[0x277D84F98];
  }

  v26[0] = v18;

  sub_242E21B3C(v19, 1, v26);

  *(inited + 88) = v26[0];
  v20 = sub_242CE6EE4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0760, &qword_242F0B4B8);
  result = swift_arrayDestroy();
  qword_27ECF65B8 = v20;
  return result;
}

uint64_t (*static Theme.LayoutStyle.overridesDigiBandLightRed.modify(uint64_t a1))()
{
  if (qword_27ECEF5F8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

unint64_t sub_242DC57A8()
{
  result = sub_242CE6EE4(MEMORY[0x277D84F90]);
  qword_27ECF65C0 = result;
  return result;
}

uint64_t (*static Theme.LayoutStyle.overridesDigiRingLightRed.modify(uint64_t a1))()
{
  if (qword_27ECEF600 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_242DC58A0()
{
  v0 = sub_242F04700();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0758, &qword_242F0B4B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_242F0A4E0;
  *(inited + 32) = xmmword_242F2FF90;
  v25 = inited + 32;
  *(inited + 48) = 1;
  v5 = *(v1 + 104);
  v24 = *MEMORY[0x277CE0EE0];
  v23 = v5;
  v5(v3);
  v6 = sub_242F047A0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE50, &unk_242F37640);
  v7 = swift_initStackObject();
  v22 = xmmword_242F09510;
  *(v7 + 16) = xmmword_242F09510;
  *(v7 + 32) = 0;
  v8 = v7 + 32;
  *(v7 + 40) = v6;
  v9 = sub_242CE6C84(v7);
  swift_setDeallocating();

  sub_242C6E840(v8);
  v10 = sub_242E1E384(v9);

  if (*(v10 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE60, &qword_242F37650);
    v11 = sub_242F05CB0();
  }

  else
  {
    v11 = MEMORY[0x277D84F98];
  }

  v26[0] = v11;

  sub_242E21B3C(v12, 1, v26);

  *(inited + 56) = v26[0];
  *(inited + 64) = xmmword_242F2FFA0;
  *(inited + 80) = 1;
  v23(v3, v24, v0);
  v13 = sub_242F047A0();
  v14 = swift_initStackObject();
  *(v14 + 16) = v22;
  *(v14 + 32) = 0;
  v15 = v14 + 32;
  *(v14 + 40) = v13;
  v16 = sub_242CE6C84(v14);
  swift_setDeallocating();

  sub_242C6E840(v15);
  v17 = sub_242E1E384(v16);

  if (*(v17 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE60, &qword_242F37650);
    v18 = sub_242F05CB0();
  }

  else
  {
    v18 = MEMORY[0x277D84F98];
  }

  v26[0] = v18;

  sub_242E21B3C(v19, 1, v26);

  *(inited + 88) = v26[0];
  v20 = sub_242CE6EE4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0760, &qword_242F0B4B8);
  result = swift_arrayDestroy();
  qword_27ECF65C8 = v20;
  return result;
}

uint64_t (*static Theme.LayoutStyle.overridesModularLightRed.modify(uint64_t a1))()
{
  if (qword_27ECEF608 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

id static CHSWidgetMetrics.carPlayMetrics(for:)(double a1, double a2)
{
  v3 = _sSo16CHSWidgetMetricsC14CarPlayAssetUIE03cardB04withAB12CoreGraphics7CGFloatV_tFZ_0(1.0);
  [v3 size];
  v5 = _sSo16CHSWidgetMetricsC14CarPlayAssetUIE03cardB04withAB12CoreGraphics7CGFloatV_tFZ_0(a2 / v4);

  return v5;
}

id _sSo16CHSWidgetMetricsC14CarPlayAssetUIE03cardB04withAB12CoreGraphics7CGFloatV_tFZ_0(double a1)
{
  v1 = [objc_allocWithZone(MEMORY[0x277D66160]) init];
  v2 = [v1 layoutForIconLocation_];
  if (!v2)
  {
    goto LABEL_5;
  }

  v3 = v2;
  if (([v2 respondsToSelector_] & 1) == 0)
  {
    swift_unknownObjectRelease();
LABEL_5:
    v5 = 170.0;
    v7 = 170.0;
    goto LABEL_6;
  }

  [v3 iconImageInfoForGridSizeClass_];
  v5 = v4;
  v7 = v6;
  swift_unknownObjectRelease();
LABEL_6:
  v8 = [objc_allocWithZone(MEMORY[0x277CFA3E8]) initWithSafeAreaInsets:*MEMORY[0x277CFA180] layoutInsets:*(MEMORY[0x277CFA180] + 8) contentMargins:*(MEMORY[0x277CFA180] + 16) backgroundRemovedContentMargins:{*(MEMORY[0x277CFA180] + 24), *MEMORY[0x277CFA180], *(MEMORY[0x277CFA180] + 8), *(MEMORY[0x277CFA180] + 16), *(MEMORY[0x277CFA180] + 24), v5 * 0.101265823, v5 * 0.101265823, v5 * 0.101265823, v5 * 0.101265823, v5 * 0.0443037975, v5 * 0.0443037975, v5 * 0.0443037975, v5 * 0.0443037975}];
  v9 = [objc_allocWithZone(MEMORY[0x277CFA3F0]) initWithSize:0 cornerRadius:v8 scaleFactor:2 fontStyle:v5 margins:v7 supportsDynamicText:{23.0, a1}];

  return v9;
}

uint64_t Instrument.GaugeStyle.DigiBarColorsConfiguration.TrackColorIDs.init(_:overlimitColorIDs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (*(a1 + 16) && (result = sub_242CE52B8(0), (v7 & 1) != 0) && (!a2 || *(a2 + 16) && (result = sub_242CE52B8(0), (v8 & 1) != 0)))
  {
    *a3 = a1;
    a3[1] = a2;
  }

  else
  {
    result = sub_242F05C60();
    __break(1u);
  }

  return result;
}

uint64_t Instrument.GaugeStyle.DigiBarColorsConfiguration.TrackColorIDs.init(_:overlimitColorID:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 16);
  v7 = *a2;
  v8 = a2[1];
  v9 = *(a2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3378, &unk_242F2FFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_242F09510;
  *(inited + 32) = 0;
  v11 = inited + 32;
  *(inited + 40) = v4;
  *(inited + 48) = v5;
  *(inited + 56) = v6;
  v12 = sub_242CE7008(inited);
  swift_setDeallocating();
  sub_242DC8318(v11);
  if (v9 == 255)
  {
    v15 = 0;
  }

  else
  {
    v13 = swift_initStackObject();
    *(v13 + 16) = xmmword_242F09510;
    *(v13 + 32) = 0;
    v14 = v13 + 32;
    *(v13 + 40) = v7;
    *(v13 + 48) = v8;
    *(v13 + 56) = v9;
    v15 = sub_242CE7008(v13);
    swift_setDeallocating();
    sub_242DC8318(v14);
  }

  result = Instrument.GaugeStyle.DigiBarColorsConfiguration.TrackColorIDs.init(_:overlimitColorIDs:)(v12, v15, v18);
  v17 = v18[1];
  *a3 = v18[0];
  a3[1] = v17;
  return result;
}

uint64_t static Instrument.GaugeStyle.DigiBarColorsConfiguration.TrackColorIDs.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (sub_242C75A30(*a1, *a2))
  {
    if (v2)
    {
      if (v3)
      {

        v4 = sub_242C75A30(v2, v3);

        if (v4)
        {
          return 1;
        }
      }
    }

    else if (!v3)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_242DC625C()
{
  if (*v0)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0x734449726F6C6F63;
  }
}

void sub_242DC629C(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x734449726F6C6F63 && a2 == 0xE800000000000000;
  if (v6 || (sub_242F06110() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000242F5B720 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_242F06110();

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
}

uint64_t sub_242DC6380(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242DC8380(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242DC63BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242DC8380(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t Instrument.GaugeStyle.DigiBarColorsConfiguration.TrackColorIDs.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF6610, &unk_242F2FFD0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - v6;
  v8 = *v1;
  v13 = v1[1];
  v9 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242DC8380(v9, v10, v11);

  sub_242F064C0();
  v15 = v8;
  v14 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1BF8, &qword_242F180D0);
  sub_242CCFBCC(&qword_27ECF1C00, sub_242C7DEA0, MEMORY[0x277D83B90], MEMORY[0x277D83508]);
  sub_242F05F20();

  if (!v2)
  {
    v15 = v13;
    v14 = 1;
    sub_242F05EB0();
  }

  return (*(v5 + 8))(v7, v4);
}

double Instrument.GaugeStyle.DigiBarColorsConfiguration.TrackColorIDs.hash(into:)(uint64_t a1)
{
  v3 = v1[1];
  sub_242C79508(a1, *v1);
  if (v3)
  {
    sub_242F063B0();

    sub_242C79508(a1, v3);
  }

  else
  {
    sub_242F063B0();
  }

  return result;
}

uint64_t Instrument.GaugeStyle.DigiBarColorsConfiguration.TrackColorIDs.hashValue.getter()
{
  v2 = *v0;
  v1 = v0[1];
  sub_242F06390();
  sub_242C79508(v4, v2);
  sub_242F063B0();
  if (v1)
  {
    sub_242C79508(v4, v1);
  }

  return sub_242F063E0();
}

void Instrument.GaugeStyle.DigiBarColorsConfiguration.TrackColorIDs.init(from:)(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF6620, &qword_242F2FFE0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  v9 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242DC8380(v9, v10, v11);
  sub_242F06480();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_2Tm(a1);
  }

  else
  {
    v15 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1BF8, &qword_242F180D0);
    v16 = 0;
    sub_242CCFBCC(&qword_27ECF1C10, sub_242C7DFAC, MEMORY[0x277D83BB8], MEMORY[0x277D83528]);
    sub_242F05E00();
    v12 = v17;
    v16 = 1;
    sub_242F05D90();
    (*(v6 + 8))(v8, v5);
    v13 = v17;
    v14 = v15;
    *v15 = v12;
    v14[1] = v13;

    __swift_destroy_boxed_opaque_existential_2Tm(a1);
  }
}

uint64_t sub_242DC6964()
{
  v2 = *v0;
  v1 = v0[1];
  sub_242F06390();
  sub_242C79508(v4, v2);
  sub_242F063B0();
  if (v1)
  {
    sub_242C79508(v4, v1);
  }

  return sub_242F063E0();
}

double sub_242DC69DC(uint64_t a1)
{
  v3 = v1[1];
  sub_242C79508(a1, *v1);
  if (v3)
  {
    sub_242F063B0();

    sub_242C79508(a1, v3);
  }

  else
  {
    sub_242F063B0();
  }

  return result;
}

uint64_t sub_242DC6A50(uint64_t a1)
{
  v3 = *v1;
  v2 = v1[1];
  sub_242F06390();
  sub_242C79508(v5, v3);
  sub_242F063B0();
  if (v2)
  {
    sub_242C79508(v5, v2);
  }

  return sub_242F063E0();
}

uint64_t sub_242DC6AC4(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (sub_242C75A30(*a1, *a2))
  {
    if (v2)
    {
      if (v3)
      {

        v4 = sub_242C75A30(v2, v3);

        if (v4)
        {
          return 1;
        }
      }
    }

    else if (!v3)
    {
      return 1;
    }
  }

  return 0;
}

double Instrument.GaugeStyle.DigiBarColorsConfiguration.trackColorIDs.getter@<D0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = v2;
  a1[1] = v3;
  return sub_242DC83D4(v2, v3);
}

uint64_t Instrument.GaugeStyle.DigiBarColorsConfiguration.trackColorIDs.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_242C6CEC0(*(v1 + 8), *(v1 + 16));
  *(v1 + 8) = v2;
  *(v1 + 16) = v3;
  return result;
}

uint64_t Instrument.GaugeStyle.DigiBarColorsConfiguration.init(activeColorIDs:trackColorIDs:verticalGradient:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v7 = *a2;
  v8 = a2[1];
  if (!a1 || *(a1 + 16) && (sub_242CE52B8(0), (v9 & 1) != 0))
  {
    result = sub_242C6CEC0(0, 0);
    *a4 = a1;
    *(a4 + 8) = v7;
    *(a4 + 16) = v8;
    *(a4 + 24) = a3 & 1;
  }

  else
  {
    result = sub_242F05C60();
    __break(1u);
  }

  return result;
}

uint64_t Instrument.GaugeStyle.DigiBarColorsConfiguration.init(activeColorID:trackColorID:trackOverlimitColorID:verticalGradient:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v6 = *(a1 + 16);
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v24 = *a2;
  v25 = *a3;
  v26 = *(a3 + 8);
  v9 = *(a3 + 16);
  if (v6 == 255)
  {
    v14 = 0;
    if (v8 != 255)
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_242C55484(v25, v26, v9);
    v21 = 0;
    v22 = 0;
    goto LABEL_9;
  }

  v11 = *a1;
  v10 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3378, &unk_242F2FFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_242F09510;
  *(inited + 32) = 0;
  v13 = inited + 32;
  *(inited + 40) = v11;
  *(inited + 48) = v10;
  *(inited + 56) = v6;
  v14 = sub_242CE7008(inited);
  swift_setDeallocating();
  sub_242DC8318(v13);
  if (v8 == 255)
  {
    goto LABEL_6;
  }

LABEL_3:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3378, &unk_242F2FFC0);
  v15 = swift_initStackObject();
  *(v15 + 16) = xmmword_242F09510;
  *(v15 + 32) = 0;
  v16 = v15 + 32;
  *(v15 + 40) = v24;
  *(v15 + 48) = v7;
  *(v15 + 56) = v8;
  v17 = sub_242CE7008(v15);
  swift_setDeallocating();
  sub_242C7CE5C(v24, v7, v8);
  sub_242DC8318(v16);
  if (v9 == 255)
  {
    v20 = 0;
  }

  else
  {
    v18 = swift_initStackObject();
    *(v18 + 16) = xmmword_242F09510;
    *(v18 + 32) = 0;
    v19 = v18 + 32;
    *(v18 + 40) = v25;
    *(v18 + 48) = v26;
    *(v18 + 56) = v9;
    v20 = sub_242CE7008(v18);
    swift_setDeallocating();
    sub_242DC8318(v19);
  }

  Instrument.GaugeStyle.DigiBarColorsConfiguration.TrackColorIDs.init(_:overlimitColorIDs:)(v17, v20, v28);
  sub_242C55484(v24, v7, v8);
  v21 = v28[0];
  v22 = v28[1];
LABEL_9:
  result = sub_242C6CEC0(0, 0);
  *a5 = v14;
  *(a5 + 8) = v21;
  *(a5 + 16) = v22;
  *(a5 + 24) = a4 & 1;
  return result;
}

unint64_t sub_242DC6EE4()
{
  v1 = 0x6C6F436B63617274;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6F43657669746361;
  }
}

uint64_t sub_242DC6F5C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_242DC8984(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_242DC6F84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242DC8418(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242DC6FC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242DC8418(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t Instrument.GaugeStyle.DigiBarColorsConfiguration.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF6628, &qword_242F2FFE8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - v6;
  v9 = *v1;
  v8 = *(v1 + 8);
  v18 = *(v1 + 16);
  v19 = v8;
  v22 = *(v1 + 24);
  v10 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242DC8418(v10, v11, v12);

  sub_242F064C0();
  v20 = v9;
  v23 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1BF8, &qword_242F180D0);
  sub_242CCFBCC(&qword_27ECF1C00, sub_242C7DEA0, MEMORY[0x277D83B90], MEMORY[0x277D83508]);
  sub_242F05EB0();

  if (!v2)
  {
    v13 = v22;
    v20 = v19;
    v21 = v18;
    v23 = 1;
    sub_242DC83D4(v19, v18);
    sub_242DC846C(v14, v15, v16);
    sub_242F05EB0();
    sub_242C6CEC0(v20, v21);
    LOBYTE(v20) = v13;
    v23 = 2;
    sub_242F05F20();
  }

  return (*(v5 + 8))(v7, v4);
}

double Instrument.GaugeStyle.DigiBarColorsConfiguration.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v5 = *v2;
  v4 = v2[1];
  v6 = v2[2];
  if (*v2)
  {
    sub_242F063B0();
    sub_242C79508(a1, v5);
    if (!v4)
    {
      goto LABEL_7;
    }
  }

  else
  {
    sub_242F063B0();
    if (!v4)
    {
LABEL_7:
      sub_242F063B0();
      goto LABEL_8;
    }
  }

  sub_242F063B0();
  sub_242C79508(a1, v4);
  if (!v6)
  {
    goto LABEL_7;
  }

  sub_242F063B0();
  sub_242C79508(a1, v6);
LABEL_8:
  sub_242F063B0();
  return result;
}

uint64_t Instrument.GaugeStyle.DigiBarColorsConfiguration.hashValue.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  sub_242F06390();
  if (v2)
  {
    sub_242F063B0();
    sub_242C79508(v5, v2);
    if (!v1)
    {
      goto LABEL_7;
    }
  }

  else
  {
    sub_242F063B0();
    if (!v1)
    {
LABEL_7:
      sub_242F063B0();
      goto LABEL_8;
    }
  }

  sub_242F063B0();
  sub_242C79508(v5, v1);
  if (!v3)
  {
    goto LABEL_7;
  }

  sub_242F063B0();
  sub_242C79508(v5, v3);
LABEL_8:
  sub_242F063B0();
  return sub_242F063E0();
}

uint64_t Instrument.GaugeStyle.DigiBarColorsConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF6640, &unk_242F2FFF0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - v7;
  v9 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242DC8418(v9, v10, v11);
  sub_242F06480();
  if (v2)
  {
    v17 = 0;
    v18 = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1BF8, &qword_242F180D0);
    v25 = 0;
    sub_242CCFBCC(&qword_27ECF1C10, sub_242C7DFAC, MEMORY[0x277D83BB8], MEMORY[0x277D83528]);
    v12 = sub_242F05D90();
    v14 = v23;
    v25 = 1;
    sub_242DC84C0(v12, v15, v16);
    sub_242F05D90();
    v22 = a2;
    v18 = v23;
    v17 = v24;
    sub_242C6CEC0(0, 0);
    LOBYTE(v23) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1400, &qword_242F503D0);
    sub_242CB95F8();
    sub_242F05D90();
    (*(v6 + 8))(v8, v5);
    v19 = v25;
    v20 = v22;
    *v22 = v14;
    v20[1] = v18;
    v20[2] = v17;
    *(v20 + 24) = v19 & 1;

    sub_242DC83D4(v18, v17);
  }

  __swift_destroy_boxed_opaque_existential_2Tm(a1);

  return sub_242C6CEC0(v18, v17);
}

uint64_t sub_242DC76F4(uint64_t a1)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2];
  sub_242F06390();
  if (v3)
  {
    sub_242F063B0();
    sub_242C79508(v6, v3);
    if (!v2)
    {
      goto LABEL_7;
    }
  }

  else
  {
    sub_242F063B0();
    if (!v2)
    {
LABEL_7:
      sub_242F063B0();
      goto LABEL_8;
    }
  }

  sub_242F063B0();
  sub_242C79508(v6, v2);
  if (!v4)
  {
    goto LABEL_7;
  }

  sub_242F063B0();
  sub_242C79508(v6, v4);
LABEL_8:
  sub_242F063B0();
  return sub_242F063E0();
}

void static DefaultColorID.default.getter(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

void sub_242DC77D4(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

uint64_t sub_242DC77E0()
{
  v0 = sub_242CE7008(&unk_28557AB08);
  sub_242DC8318(&unk_28557AB28);
  v1 = sub_242CE7008(&unk_28557AB48);
  sub_242DC8318(&unk_28557AB68);
  if (*(v1 + 16) && (sub_242CE52B8(0), (v2 & 1) != 0))
  {
    result = sub_242C6CEC0(0, 0);
    qword_27ECF65D0 = v0;
    *algn_27ECF65D8 = v1;
    qword_27ECF65E0 = 0;
    byte_27ECF65E8 = 0;
  }

  else
  {
    result = sub_242F05C60();
    __break(1u);
  }

  return result;
}

double static Instrument.GaugeStyle.DigiBarColorsConfiguration.barDefault.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_27ECEF610 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = *algn_27ECF65D8;
  v3 = qword_27ECF65E0;
  v4 = byte_27ECF65E8;
  *a1 = qword_27ECF65D0;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;

  return sub_242DC83D4(v2, v3);
}

uint64_t static Instrument.GaugeStyle.DigiBarColorsConfiguration.barDefault.setter(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  if (qword_27ECEF610 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = *algn_27ECF65D8;
  v6 = qword_27ECF65E0;
  qword_27ECF65D0 = v1;
  *algn_27ECF65D8 = v2;
  qword_27ECF65E0 = v3;
  byte_27ECF65E8 = v4;

  return sub_242C6CEC0(v5, v6);
}

uint64_t (*static Instrument.GaugeStyle.DigiBarColorsConfiguration.barDefault.modify(uint64_t a1))()
{
  if (qword_27ECEF610 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

double sub_242DC7AA4()
{
  if (qword_27ECEF610 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = *algn_27ECF65D8;
  v1 = qword_27ECF65E0;
  qword_27ECF65F0 = qword_27ECF65D0;
  *algn_27ECF65F8 = *algn_27ECF65D8;
  qword_27ECF6600 = qword_27ECF65E0;
  byte_27ECF6608 = byte_27ECF65E8;

  return sub_242DC83D4(v0, v1);
}

double static Instrument.GaugeStyle.DigiBarColorsConfiguration.default.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_27ECEF618 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_27ECF65F8;
  v2 = qword_27ECF6600;
  v3 = byte_27ECF6608;
  *a1 = qword_27ECF65F0;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;

  return sub_242DC83D4(v1, v2);
}

double sub_242DC7BDC@<D0>(uint64_t a1@<X8>)
{
  if (qword_27ECEF618 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_27ECF65F8;
  v2 = qword_27ECF6600;
  v3 = byte_27ECF6608;
  *a1 = qword_27ECF65F0;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;

  return sub_242DC83D4(v1, v2);
}

uint64_t Instrument.GaugeStyle.DigiBarColorsConfiguration.TrackColorIDs.init(dictionaryLiteral:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(a1 + 16))
  {
    v3 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2248, &qword_242F30000);
    v4 = sub_242F05CB0();
    a1 = v3;
  }

  else
  {
    v4 = MEMORY[0x277D84F98];
  }

  v8 = v4;
  sub_242DC7D84(a1, 1, &v8);
  v5 = v8;
  if (*(v8 + 16) && (result = sub_242CE52B8(0), (v7 & 1) != 0))
  {
    *a2 = v5;
    a2[1] = 0;
  }

  else
  {
    sub_242F05C60();
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void sub_242DC7D84(uint64_t a1, char a2, void *a3)
{
  v37 = *(a1 + 16);
  if (!v37)
  {
    goto LABEL_23;
  }

  v5 = *(a1 + 56);
  v7 = *(a1 + 40);
  v6 = *(a1 + 48);
  v8 = *(a1 + 32);
  sub_242C7CE5C(v7, v6, *(a1 + 56));
  if (v5 == 255)
  {
    goto LABEL_23;
  }

  v9 = *a3;
  v10 = sub_242CE52B8(v8);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  LOBYTE(v16) = v11;
  if (v9[3] < v15)
  {
    sub_242D08940(v15, a2 & 1);
    v10 = sub_242CE52B8(v8);
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_8;
    }

LABEL_6:
    v10 = sub_242F06320();
    __break(1u);
  }

  if (a2)
  {
LABEL_8:
    if (v16)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  v20 = v10;
  sub_242D03940();
  v10 = v20;
  if (v16)
  {
LABEL_9:
    v18 = swift_allocError();
    swift_willThrow();

    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27ECF1F50, &qword_242F304D0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      sub_242C7CEB0(v7, v6, v5);

      return;
    }

    goto LABEL_28;
  }

LABEL_12:
  v21 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  *(v21[6] + 8 * v10) = v8;
  v22 = v21[7] + 24 * v10;
  *v22 = v7;
  *(v22 + 8) = v6;
  *(v22 + 16) = v5;
  v23 = v21[2];
  v14 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v14)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    sub_242F05A80();
    MEMORY[0x245D26660](0xD00000000000001BLL, 0x8000000242F59E10);
    sub_242F05C20();
    MEMORY[0x245D26660](39, 0xE100000000000000);
    sub_242F05C60();
    __break(1u);
    return;
  }

  v21[2] = v24;
  if (v37 != 1)
  {
    v16 = (a1 + 88);
    v25 = 1;
    while (v25 < *(a1 + 16))
    {
      v5 = *v16;
      v7 = *(v16 - 2);
      v6 = *(v16 - 1);
      v8 = *(v16 - 3);
      sub_242C7CE5C(v7, v6, *v16);
      if (v5 == 255)
      {
        goto LABEL_23;
      }

      v26 = *a3;
      v27 = sub_242CE52B8(v8);
      v29 = v26[2];
      v30 = (v28 & 1) == 0;
      v14 = __OFADD__(v29, v30);
      v31 = v29 + v30;
      if (v14)
      {
        goto LABEL_25;
      }

      a2 = v28;
      if (v26[3] < v31)
      {
        sub_242D08940(v31, 1);
        v27 = sub_242CE52B8(v8);
        if ((a2 & 1) != (v32 & 1))
        {
          goto LABEL_6;
        }
      }

      if (a2)
      {
        goto LABEL_9;
      }

      v33 = *a3;
      *(*a3 + 8 * (v27 >> 6) + 64) |= 1 << v27;
      *(v33[6] + 8 * v27) = v8;
      v34 = v33[7] + 24 * v27;
      *v34 = v7;
      *(v34 + 8) = v6;
      *(v34 + 16) = v5;
      v35 = v33[2];
      v14 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v14)
      {
        goto LABEL_26;
      }

      ++v25;
      v33[2] = v36;
      v16 += 32;
      if (v37 == v25)
      {
        goto LABEL_23;
      }
    }

    goto LABEL_27;
  }

LABEL_23:
}

uint64_t _s14CarPlayAssetUI10InstrumentV10GaugeStyleO26DigiBarColorsConfigurationV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t *a2, __n128 a3)
{
  v4 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v8 = *a2;
  v7 = a2[1];
  v9 = a2[2];
  v10 = *(a2 + 24);
  if (*a1)
  {
    if (!v8)
    {
      return 0;
    }

    v11 = sub_242C75A30(v4, v8);

    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  if (v3)
  {
    if (v7)
    {
      sub_242DC83D4(v3, v5);
      sub_242DC83D4(v7, v9);
      sub_242DC83D4(v3, v5);
      if (sub_242C75A30(v3, v7))
      {
        if (v5)
        {
          if (v9)
          {

            v12 = sub_242C75A30(v5, v9);

            sub_242C6CEC0(v7, v9);
            if (v12)
            {
              goto LABEL_24;
            }

            goto LABEL_20;
          }
        }

        else if (!v9)
        {
          sub_242C6CEC0(v7, 0);
LABEL_24:

          goto LABEL_25;
        }
      }

      sub_242C6CEC0(v7, v9);
LABEL_20:

      v13 = v3;
      v14 = v5;
      goto LABEL_21;
    }

    sub_242DC83D4(v3, v5);
    sub_242DC83D4(0, v9);
    sub_242DC83D4(v3, v5);

LABEL_16:
    sub_242C6CEC0(v3, v5);
    v13 = v7;
    v14 = v9;
LABEL_21:
    sub_242C6CEC0(v13, v14);
    return 0;
  }

  sub_242DC83D4(0, v5);
  if (v7)
  {
    sub_242DC83D4(v7, v9);
    goto LABEL_16;
  }

  sub_242DC83D4(0, v9);
  v3 = 0;
LABEL_25:
  sub_242C6CEC0(v3, v5);
  return v6 ^ v10 ^ 1u;
}

uint64_t sub_242DC8318(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1F18, &qword_242F131D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_242DC8380(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF6618;
  if (!qword_27ECF6618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF6618);
  }

  return result;
}

double sub_242DC83D4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
  }

  return result;
}

unint64_t sub_242DC8418(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF6630;
  if (!qword_27ECF6630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF6630);
  }

  return result;
}

unint64_t sub_242DC846C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF6638;
  if (!qword_27ECF6638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF6638);
  }

  return result;
}

unint64_t sub_242DC84C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF6648;
  if (!qword_27ECF6648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF6648);
  }

  return result;
}

unint64_t sub_242DC8518(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF6650;
  if (!qword_27ECF6650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF6650);
  }

  return result;
}

unint64_t sub_242DC856C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF6658;
  if (!qword_27ECF6658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF6658);
  }

  return result;
}

unint64_t sub_242DC85C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF6660;
  if (!qword_27ECF6660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF6660);
  }

  return result;
}

unint64_t sub_242DC861C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF6668;
  if (!qword_27ECF6668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF6668);
  }

  return result;
}

uint64_t sub_242DC8670(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 25))
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

uint64_t sub_242DC86CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_242DC8778(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF6670;
  if (!qword_27ECF6670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF6670);
  }

  return result;
}

unint64_t sub_242DC87D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF6678;
  if (!qword_27ECF6678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF6678);
  }

  return result;
}

unint64_t sub_242DC8828(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF6680;
  if (!qword_27ECF6680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF6680);
  }

  return result;
}

unint64_t sub_242DC8880(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF6688;
  if (!qword_27ECF6688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF6688);
  }

  return result;
}

unint64_t sub_242DC88D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF6690;
  if (!qword_27ECF6690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF6690);
  }

  return result;
}

unint64_t sub_242DC8930(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF6698;
  if (!qword_27ECF6698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF6698);
  }

  return result;
}

uint64_t sub_242DC8984(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F43657669746361 && a2 == 0xEE00734449726F6CLL;
  if (v4 || (sub_242F06110() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C6F436B63617274 && a2 == 0xED0000734449726FLL || (sub_242F06110() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000242F5B740 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_242F06110();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_242DC8AB8()
{
  v0 = sub_242F04700();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *MEMORY[0x277CE0EE0];
  v6 = *(v1 + 104);
  v6(v4, v5, v0, v2);
  v16 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v15 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v14 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v7 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v8 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v9 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v10 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v11 = sub_242F047A0();
  (v6)(v4, v5, v0);
  result = sub_242F047A0();
  *&xmmword_27ECF66A0 = v16;
  *(&xmmword_27ECF66A0 + 1) = v15;
  qword_27ECF66B0 = v14;
  unk_27ECF66B8 = v7;
  *&xmmword_27ECF66C0 = v8;
  *(&xmmword_27ECF66C0 + 1) = v9;
  qword_27ECF66D0 = v10;
  unk_27ECF66D8 = v11;
  qword_27ECF66E0 = result;
  return result;
}

uint64_t static Color.Ticks.yellow.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECEF620 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = *&qword_27ECF66D0;
  v8[2] = xmmword_27ECF66C0;
  v8[3] = *&qword_27ECF66D0;
  v9 = qword_27ECF66E0;
  v3 = qword_27ECF66E0;
  v4 = *&qword_27ECF66B0;
  v8[0] = xmmword_27ECF66A0;
  v5 = xmmword_27ECF66A0;
  v8[1] = *&qword_27ECF66B0;
  *(a1 + 32) = xmmword_27ECF66C0;
  *(a1 + 48) = v2;
  *(a1 + 64) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return sub_242C8CBA8(v8, &v7);
}

uint64_t static Color.Ticks.yellow.setter(uint64_t a1)
{
  if (qword_27ECEF620 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5[2] = xmmword_27ECF66C0;
  v5[3] = *&qword_27ECF66D0;
  v6 = qword_27ECF66E0;
  v5[0] = xmmword_27ECF66A0;
  v5[1] = *&qword_27ECF66B0;
  v2 = *(a1 + 48);
  xmmword_27ECF66C0 = *(a1 + 32);
  *&qword_27ECF66D0 = v2;
  qword_27ECF66E0 = *(a1 + 64);
  v3 = *(a1 + 16);
  xmmword_27ECF66A0 = *a1;
  *&qword_27ECF66B0 = v3;
  return sub_242C8CCB0(v5);
}

uint64_t (*static Color.Ticks.yellow.modify(uint64_t a1))()
{
  if (qword_27ECEF620 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_242DC8F9C()
{
  v0 = sub_242F04700();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *MEMORY[0x277CE0EE0];
  v6 = *(v1 + 104);
  v6(v4, v5, v0, v2);
  v16 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v15 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v14 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v7 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v8 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v9 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v10 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v11 = sub_242F047A0();
  (v6)(v4, v5, v0);
  result = sub_242F047A0();
  *&xmmword_27ECF66E8 = v16;
  *(&xmmword_27ECF66E8 + 1) = v15;
  qword_27ECF66F8 = v14;
  unk_27ECF6700 = v7;
  *&xmmword_27ECF6708 = v8;
  *(&xmmword_27ECF6708 + 1) = v9;
  qword_27ECF6718 = v10;
  unk_27ECF6720 = v11;
  qword_27ECF6728 = result;
  return result;
}

uint64_t static Color.ProgressBars.yellow.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECEF628 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = *&qword_27ECF6718;
  v8[2] = xmmword_27ECF6708;
  v8[3] = *&qword_27ECF6718;
  v9 = qword_27ECF6728;
  v3 = qword_27ECF6728;
  v4 = *&qword_27ECF66F8;
  v8[0] = xmmword_27ECF66E8;
  v5 = xmmword_27ECF66E8;
  v8[1] = *&qword_27ECF66F8;
  *(a1 + 32) = xmmword_27ECF6708;
  *(a1 + 48) = v2;
  *(a1 + 64) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return sub_242C8D144(v8, &v7);
}

uint64_t static Color.ProgressBars.yellow.setter(uint64_t a1)
{
  if (qword_27ECEF628 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5[2] = xmmword_27ECF6708;
  v5[3] = *&qword_27ECF6718;
  v6 = qword_27ECF6728;
  v5[0] = xmmword_27ECF66E8;
  v5[1] = *&qword_27ECF66F8;
  v2 = *(a1 + 48);
  xmmword_27ECF6708 = *(a1 + 32);
  *&qword_27ECF6718 = v2;
  qword_27ECF6728 = *(a1 + 64);
  v3 = *(a1 + 16);
  xmmword_27ECF66E8 = *a1;
  *&qword_27ECF66F8 = v3;
  return sub_242C8D24C(v5);
}

uint64_t (*static Color.ProgressBars.yellow.modify(uint64_t a1))()
{
  if (qword_27ECEF628 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_242DC94AC()
{
  v0 = sub_242F04700();
  v1 = MEMORY[0x28223BE20](v0);
  (*(v3 + 104))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CE0EE0], v1);
  result = sub_242F047A0();
  qword_27ECF6730 = result;
  return result;
}

uint64_t static Color.Modular.yellow.getter@<X0>(void *a1@<X8>)
{
  if (qword_27ECEF630 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_27ECF6730;
}

uint64_t static Color.Modular.yellow.setter(uint64_t *a1)
{
  v1 = *a1;
  if (qword_27ECEF630 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27ECF6730 = v1;
}

uint64_t (*static Color.Modular.yellow.modify(uint64_t a1))()
{
  if (qword_27ECEF630 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_242DC970C()
{
  v0 = sub_242F04700();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *MEMORY[0x277CE0EE0];
  v6 = *(v1 + 104);
  v6(v4, v5, v0, v2);
  v14 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v7 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v8 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v9 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v10 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v11 = sub_242F047A0();
  (v6)(v4, v5, v0);
  result = sub_242F047A0();
  *&xmmword_27ECF6738 = v14;
  *(&xmmword_27ECF6738 + 1) = v7;
  qword_27ECF6748 = v8;
  unk_27ECF6750 = v9;
  *&xmmword_27ECF6758 = v10;
  *(&xmmword_27ECF6758 + 1) = v11;
  qword_27ECF6768 = result;
  return result;
}

uint64_t static Color.ACC.yellow.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECEF638 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = *(&xmmword_27ECF6738 + 1);
  v3 = qword_27ECF6748;
  v4 = unk_27ECF6750;
  v5 = xmmword_27ECF6758;
  v6 = qword_27ECF6768;
  *a1 = xmmword_27ECF6738;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
}

uint64_t static Color.ACC.yellow.setter(uint64_t a1)
{
  v4 = *(a1 + 16);
  v5 = *a1;
  v3 = *(a1 + 32);
  v1 = *(a1 + 48);
  if (qword_27ECEF638 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  xmmword_27ECF6738 = v5;
  *&qword_27ECF6748 = v4;
  xmmword_27ECF6758 = v3;
  qword_27ECF6768 = v1;
}

uint64_t (*static Color.ACC.yellow.modify(uint64_t a1))()
{
  if (qword_27ECEF638 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_242DC9BEC()
{
  if (qword_27ECEF628 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v36 = xmmword_27ECF6708;
  v37 = *&qword_27ECF6718;
  v38 = qword_27ECF6728;
  v34 = xmmword_27ECF66E8;
  v35 = *&qword_27ECF66F8;
  sub_242C8D144(&v34, &v39);
  if (qword_27ECEF620 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v41 = xmmword_27ECF66C0;
  v42 = *&qword_27ECF66D0;
  v43 = qword_27ECF66E0;
  v39 = xmmword_27ECF66A0;
  v40 = *&qword_27ECF66B0;
  sub_242C8CBA8(&v39, &v30);
  if (qword_27ECEF630 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_27ECEF638;
  v28 = qword_27ECF6730;

  if (v0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = *(&xmmword_27ECF6738 + 1);
  v2 = qword_27ECF6748;
  v3 = unk_27ECF6750;
  v4 = xmmword_27ECF6758;
  v5 = qword_27ECF6768;
  v6 = qword_27ECEF0B0;
  v27 = xmmword_27ECF6738;

  v26 = v1;

  v25 = v2;

  v24 = v5;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = *algn_27ECF3678;
  v8 = qword_27ECF3680;
  v9 = qword_27ECEF0B8;
  v23 = qword_27ECF3670;

  v22 = v7;

  v21 = v8;

  if (v9 != -1)
  {
    swift_once();
  }

  v10 = qword_27ECEF0C0;
  v20 = qword_27ECF3688;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = *algn_27ECF3698;
  v12 = qword_27ECF36A0;
  v13 = unk_27ECF36A8;
  v14 = qword_27ECF36B0;
  v15 = unk_27ECF36B8;
  v16 = qword_27ECF36C0;
  v17 = qword_27ECEF0C8;
  v19 = qword_27ECF3690;

  if (v17 != -1)
  {
    swift_once();
  }

  v30 = xmmword_27ECF36C8;
  v31 = *&qword_27ECF36D8;
  v32 = xmmword_27ECF36E8;
  v33 = *&qword_27ECF36F8;
  sub_242C8E7B0(&v30, v29);
  if (qword_27ECEF0D0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  xmmword_27ECF6790 = v36;
  unk_27ECF67A0 = v37;
  xmmword_27ECF6770 = v34;
  unk_27ECF6780 = v35;
  unk_27ECF67B8 = v39;
  unk_27ECF67E8 = v42;
  qword_27ECF67B0 = v38;
  unk_27ECF67D8 = v41;
  unk_27ECF67C8 = v40;
  qword_27ECF67F8 = v43;
  unk_27ECF6800 = v28;
  qword_27ECF6808 = v23;
  unk_27ECF6810 = v22;
  qword_27ECF6818 = v21;
  unk_27ECF6820 = v27;
  qword_27ECF6828 = v26;
  qword_27ECF6830 = v25;
  unk_27ECF6838 = v3;
  xmmword_27ECF6840 = v4;
  qword_27ECF6850 = v24;
  unk_27ECF6858 = v20;
  qword_27ECF6860 = v19;
  qword_27ECF6868 = v11;
  unk_27ECF6870 = v12;
  qword_27ECF6878 = v13;
  unk_27ECF6880 = v14;
  qword_27ECF6888 = v15;
  unk_27ECF6890 = v16;
  xmmword_27ECF68B8 = v32;
  unk_27ECF68C8 = v33;
  xmmword_27ECF6898 = v30;
  unk_27ECF68A8 = v31;
  xmmword_27ECF68D8 = xmmword_27ECF3708;
  qword_27ECF68E8 = qword_27ECF3718;
  unk_27ECF68F0 = unk_27ECF3720;
  xmmword_27ECF68F8 = xmmword_27ECF3728;
  qword_27ECF6908 = qword_27ECF3738;
}

uint64_t static Color.ColorValues.yellow.getter@<X0>(void *a1@<X8>)
{
  if (qword_27ECEF640 != -1)
  {
    swift_once();
  }

  memcpy(__dst, &xmmword_27ECF6770, sizeof(__dst));
  memcpy(a1, &xmmword_27ECF6770, 0x1A0uLL);
  return sub_242C8DFF4(__dst, &v3);
}

uint64_t sub_242DCA164()
{
  v0 = sub_242F04700();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0758, &qword_242F0B4B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_242F0A4E0;
  *(inited + 32) = xmmword_242F0B490;
  v25 = inited + 32;
  *(inited + 48) = 0;
  v5 = *(v1 + 104);
  v24 = *MEMORY[0x277CE0EE0];
  v23 = v5;
  v5(v3);
  v6 = sub_242F047A0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE50, &unk_242F37640);
  v7 = swift_initStackObject();
  v22 = xmmword_242F09510;
  *(v7 + 16) = xmmword_242F09510;
  *(v7 + 32) = 0;
  v8 = v7 + 32;
  *(v7 + 40) = v6;
  v9 = sub_242CE6C84(v7);
  swift_setDeallocating();

  sub_242C6E840(v8);
  v10 = sub_242E1E384(v9);

  if (*(v10 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE60, &qword_242F37650);
    v11 = sub_242F05CB0();
  }

  else
  {
    v11 = MEMORY[0x277D84F98];
  }

  v26[0] = v11;

  sub_242E21B3C(v12, 1, v26);

  *(inited + 56) = v26[0];
  *(inited + 64) = xmmword_242F0B4A0;
  *(inited + 80) = 0;
  v23(v3, v24, v0);
  v13 = sub_242F047A0();
  v14 = swift_initStackObject();
  *(v14 + 16) = v22;
  *(v14 + 32) = 0;
  v15 = v14 + 32;
  *(v14 + 40) = v13;
  v16 = sub_242CE6C84(v14);
  swift_setDeallocating();

  sub_242C6E840(v15);
  v17 = sub_242E1E384(v16);

  if (*(v17 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE60, &qword_242F37650);
    v18 = sub_242F05CB0();
  }

  else
  {
    v18 = MEMORY[0x277D84F98];
  }

  v26[0] = v18;

  sub_242E21B3C(v19, 1, v26);

  *(inited + 88) = v26[0];
  v20 = sub_242CE6EE4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0760, &qword_242F0B4B8);
  result = swift_arrayDestroy();
  qword_27ECF6910 = v20;
  return result;
}

uint64_t (*static Theme.LayoutStyle.overridesDigiBandLightYellow.modify(uint64_t a1))()
{
  if (qword_27ECEF648 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

unint64_t sub_242DCA60C()
{
  result = sub_242CE6EE4(MEMORY[0x277D84F90]);
  qword_27ECF6918 = result;
  return result;
}

uint64_t (*static Theme.LayoutStyle.overridesDigiRingLightYellow.modify(uint64_t a1))()
{
  if (qword_27ECEF650 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_242DCA704()
{
  v0 = sub_242F04700();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0758, &qword_242F0B4B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_242F09530;
  *(inited + 32) = xmmword_242F0B490;
  v36[1] = inited + 32;
  *(inited + 48) = 1;
  v5 = *(v1 + 104);
  v40 = *MEMORY[0x277CE0EE0];
  v39 = v5;
  v5(v3);
  v6 = sub_242F047A0();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE50, &unk_242F37640);
  v7 = swift_initStackObject();
  v37 = xmmword_242F09510;
  *(v7 + 16) = xmmword_242F09510;
  *(v7 + 32) = 0;
  v8 = v7 + 32;
  *(v7 + 40) = v6;
  v9 = sub_242CE6C84(v7);
  swift_setDeallocating();

  sub_242C6E840(v8);
  v10 = sub_242E1E384(v9);

  if (*(v10 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE60, &qword_242F37650);
    v11 = sub_242F05CB0();
  }

  else
  {
    v11 = MEMORY[0x277D84F98];
  }

  v41[0] = v11;

  sub_242E21B3C(v12, 1, v41);

  *(inited + 56) = v41[0];
  *(inited + 64) = xmmword_242F30530;
  *(inited + 80) = 1;
  v39(v3, v40, v0);
  v13 = sub_242F047A0();
  v14 = swift_initStackObject();
  *(v14 + 16) = v37;
  *(v14 + 32) = 0;
  v15 = v14 + 32;
  *(v14 + 40) = v13;
  v16 = sub_242CE6C84(v14);
  swift_setDeallocating();

  sub_242C6E840(v15);
  v17 = sub_242E1E384(v16);

  if (*(v17 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE60, &qword_242F37650);
    v18 = sub_242F05CB0();
  }

  else
  {
    v18 = MEMORY[0x277D84F98];
  }

  v41[0] = v18;

  sub_242E21B3C(v19, 1, v41);

  *(inited + 88) = v41[0];
  *(inited + 96) = xmmword_242F30540;
  *(inited + 112) = 1;
  v39(v3, v40, v0);
  v20 = sub_242F047A0();
  v21 = swift_initStackObject();
  *(v21 + 16) = v37;
  *(v21 + 32) = 0;
  v22 = v21 + 32;
  *(v21 + 40) = v20;
  v23 = sub_242CE6C84(v21);
  swift_setDeallocating();

  sub_242C6E840(v22);
  v24 = sub_242E1E384(v23);

  if (*(v24 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE60, &qword_242F37650);
    v25 = sub_242F05CB0();
  }

  else
  {
    v25 = MEMORY[0x277D84F98];
  }

  v41[0] = v25;

  sub_242E21B3C(v26, 1, v41);

  *(inited + 120) = v41[0];
  *(inited + 128) = xmmword_242F0B4A0;
  *(inited + 144) = 1;
  v39(v3, v40, v0);
  v27 = sub_242F047A0();
  v28 = swift_initStackObject();
  *(v28 + 16) = v37;
  *(v28 + 32) = 0;
  v29 = v28 + 32;
  *(v28 + 40) = v27;
  v30 = sub_242CE6C84(v28);
  swift_setDeallocating();

  sub_242C6E840(v29);
  v31 = sub_242E1E384(v30);

  if (*(v31 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE60, &qword_242F37650);
    v32 = sub_242F05CB0();
  }

  else
  {
    v32 = MEMORY[0x277D84F98];
  }

  v41[0] = v32;

  sub_242E21B3C(v33, 1, v41);

  *(inited + 152) = v41[0];
  v34 = sub_242CE6EE4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0760, &qword_242F0B4B8);
  result = swift_arrayDestroy();
  qword_27ECF6920 = v34;
  return result;
}

uint64_t (*static Theme.LayoutStyle.overridesModularLightYellow.modify(uint64_t a1))()
{
  if (qword_27ECEF658 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

void sub_242DCADD0(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = *(a1 + 16);
  memcpy(__dst, v2, sizeof(__dst));
  memcpy(v23, (v2 + 24), sizeof(v23));
  v7 = sub_242D0B464(v23);
  if (v7 > 1)
  {
    if (v7 != 2)
    {
      memcpy(v20, __dst, sizeof(v20));
      v15[0] = v5;
      v15[1] = v4;
      LOBYTE(v15[2]) = v6;
      sub_242DCB04C(v15, v16);
      v9 = v16[0];
      goto LABEL_9;
    }

    v10 = sub_242C56CEC(v23);
    memcpy(v20, __dst, sizeof(v20));
    v17 = v5;
    v18 = v4;
    v19 = v6;
    memcpy(v16, v10, sizeof(v16));
    sub_242DCB658(&__dst[24], v15);
    sub_242DCB334(&v17, v16, &v21);
    v11 = v21;
    memcpy(v20, __dst, sizeof(v20));
    v16[0] = v5;
    v16[1] = v4;
    LOBYTE(v16[2]) = v6;
    memcpy(v15, (v10 + 416), 0x1A0uLL);
    sub_242DCB6C8(v16, v15, &v17);
    sub_242D53D78(v10);
    sub_242D53D78(v10 + 416);
    v12 = v17;
    *a2 = v11;
LABEL_7:
    *(a2 + 8) = v12;
    *(a2 + 16) = 1;
    return;
  }

  if (v7)
  {
    v13 = sub_242C56CEC(v23);
    memcpy(v20, __dst, sizeof(v20));
    v17 = v5;
    v18 = v4;
    v19 = v6;
    memcpy(v16, v13, sizeof(v16));
    sub_242DCB658(&__dst[24], v15);
    sub_242DCB334(&v17, v16, &v21);
    v14 = v21;
    memcpy(v20, __dst, sizeof(v20));
    v15[0] = v5;
    v15[1] = v4;
    LOBYTE(v15[2]) = v6;
    sub_242DCB04C(v15, v16);
    sub_242C6D138(&__dst[24], &qword_27ECF2A60, &qword_242F161D0);
    v12 = v16[0];
    *a2 = v14;
    goto LABEL_7;
  }

  v8 = sub_242C56CEC(v23);
  memcpy(v20, __dst, sizeof(v20));
  v16[0] = v5;
  v16[1] = v4;
  LOBYTE(v16[2]) = v6;
  memcpy(v15, v8, 0x1A0uLL);
  sub_242DCB334(v16, v15, &v17);
  v9 = v17;
LABEL_9:
  *a2 = v9;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
}

void sub_242DCB04C(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 16);
  if (v5 <= 1)
  {
    if (*(a1 + 16))
    {
      memcpy(__dst, v2, sizeof(__dst));
      v20[0] = v4;
      sub_242DCB9F0(v20, a2);
    }

    else
    {
      memcpy(__dst, v2, sizeof(__dst));
      v20[0] = v4;
      sub_242DCC8B0(v20, a2);
    }
  }

  else if (v5 == 2)
  {
    memcpy(__dst, v2, sizeof(__dst));
    v20[0] = v4;
    sub_242DCC254(v20, a2);
  }

  else if (v5 == 3)
  {
    v6 = sub_242F04740();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE50, &unk_242F37640);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_242F09510;
    *(v7 + 32) = 0;
    v8 = v7 + 32;
    *(v7 + 40) = v6;
    v9 = sub_242CE6C84(v7);
    swift_setDeallocating();

    sub_242C6D138(v8, &qword_27ECEFE58, &unk_242F09520);
    swift_deallocClassInstance();
    v10 = sub_242E1E384(v9);

    if (*(v10 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE60, &qword_242F37650);
      v11 = sub_242F05CB0();
    }

    else
    {
      v11 = MEMORY[0x277D84F98];
    }

    __dst[0] = v11;

    sub_242E21B3C(v17, 1, __dst);

    *a2 = __dst[0];
  }

  else
  {
    v12 = a1[1];
    swift_beginAccess();
    v13 = off_27ECF8688;
    if (off_27ECF8688)
    {
      v14 = qword_27ECF8690;
      v19[0] = v4;
      v19[1] = v12;
      memcpy(__dst, v2, sizeof(__dst));

      (v13)(v21, v19, __dst);
      sub_242C655DC(v13, v14);
      v15 = v21[0];
      if (v22)
      {
        v16 = v21[1];

        sub_242C7FB88(v15, v16, 1);
        *a2 = v16;
      }

      else
      {
        *a2 = v21[0];
      }
    }

    else
    {
      sub_242F05C60();
      __break(1u);
      swift_unexpectedError();
      __break(1u);
    }
  }
}

void sub_242DCB334(uint64_t *a1@<X0>, const void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *a1;
  v7 = *(a1 + 16);
  if (v7 <= 1)
  {
    if (*(a1 + 16))
    {
      memcpy(__dst, v3, sizeof(__dst));
      LOBYTE(v24[0]) = v6;
      memcpy(v21, a2, sizeof(v21));
      sub_242C6DC80(v24, v21, a3);
    }

    else
    {
      memcpy(__dst, v3, sizeof(__dst));
      LOBYTE(v24[0]) = v6;
      memcpy(v21, a2, sizeof(v21));
      sub_242C6D468(v24, v21, a3);
    }
  }

  else if (v7 == 2)
  {
    memcpy(__dst, v3, sizeof(__dst));
    LOBYTE(v24[0]) = v6;
    memcpy(v21, a2, sizeof(v21));
    sub_242C6E2E4(v24, v21, a3);
  }

  else if (v7 == 3)
  {
    v8 = sub_242F04740();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE50, &unk_242F37640);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_242F09510;
    *(v9 + 32) = 0;
    v10 = v9 + 32;
    *(v9 + 40) = v8;
    v11 = sub_242CE6C84(v9);
    swift_setDeallocating();

    sub_242C6D138(v10, &qword_27ECEFE58, &unk_242F09520);
    swift_deallocClassInstance();
    v12 = sub_242E1E384(v11);

    if (*(v12 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE60, &qword_242F37650);
      v13 = sub_242F05CB0();
    }

    else
    {
      v13 = MEMORY[0x277D84F98];
    }

    __dst[0] = v13;

    sub_242E21B3C(v20, 1, __dst);

    *a3 = __dst[0];
  }

  else
  {
    v14 = a1[1];
    swift_beginAccess();
    v15 = off_27ECF8688;
    if (off_27ECF8688)
    {
      v16 = qword_27ECF8690;
      v23[0] = v6;
      v23[1] = v14;
      memcpy(__dst, v3, sizeof(__dst));

      (v15)(v24, v23, __dst);
      sub_242C655DC(v15, v16);
      v17 = v24[0];
      if (v25)
      {
        v18 = v24[1];

        sub_242C7FB88(v19, v18, 1);
      }

      *a3 = v17;
    }

    else
    {
      sub_242F05C60();
      __break(1u);
      swift_unexpectedError();
      __break(1u);
    }
  }
}

uint64_t sub_242DCB658(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2A60, &qword_242F161D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_242DCB6C8(uint64_t *a1@<X0>, const void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *a1;
  v7 = *(a1 + 16);
  if (v7 <= 1)
  {
    if (*(a1 + 16))
    {
      memcpy(__dst, v3, sizeof(__dst));
      LOBYTE(v23[0]) = v6;
      memcpy(v20, a2, sizeof(v20));
      sub_242C6DC80(v23, v20, a3);
    }

    else
    {
      memcpy(__dst, v3, sizeof(__dst));
      LOBYTE(v23[0]) = v6;
      memcpy(v20, a2, sizeof(v20));
      sub_242C6D468(v23, v20, a3);
    }
  }

  else if (v7 == 2)
  {
    memcpy(__dst, v3, sizeof(__dst));
    LOBYTE(v23[0]) = v6;
    memcpy(v20, a2, sizeof(v20));
    sub_242C6E2E4(v23, v20, a3);
  }

  else if (v7 == 3)
  {
    v8 = sub_242F04740();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE50, &unk_242F37640);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_242F09510;
    *(v9 + 32) = 0;
    v10 = v9 + 32;
    *(v9 + 40) = v8;
    v11 = sub_242CE6C84(v9);
    swift_setDeallocating();

    sub_242C6D138(v10, &qword_27ECEFE58, &unk_242F09520);
    swift_deallocClassInstance();
    v12 = sub_242E1E384(v11);

    if (*(v12 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE60, &qword_242F37650);
      v13 = sub_242F05CB0();
    }

    else
    {
      v13 = MEMORY[0x277D84F98];
    }

    __dst[0] = v13;

    sub_242E21B3C(v19, 1, __dst);

    *a3 = __dst[0];
  }

  else
  {
    v14 = a1[1];
    swift_beginAccess();
    v15 = off_27ECF8688;
    if (off_27ECF8688)
    {
      v16 = qword_27ECF8690;
      v22[0] = v6;
      v22[1] = v14;
      memcpy(__dst, v3, sizeof(__dst));

      (v15)(v23, v22, __dst);
      sub_242C655DC(v15, v16);
      v17 = v23[0];
      if (v24)
      {
        v18 = v23[1];

        sub_242C7FB88(v17, v18, 1);
        *a3 = v18;
      }

      else
      {
        *a3 = v23[0];
      }
    }

    else
    {
      sub_242F05C60();
      __break(1u);
      swift_unexpectedError();
      __break(1u);
    }
  }
}

void sub_242DCB9F0(_BYTE *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_242F04700();
  v8 = MEMORY[0x28223BE20](v5);
  switch(*a1)
  {
    case 1:
    case 3:
    case 5:
    case 7:
    case 0x14:
      memcpy(v41, v2, sizeof(v41));
      v39 = 1;
      v40 = 0;
      goto LABEL_3;
    case 8:
      if (qword_27ECEF668 != -1)
      {
        swift_once();
      }

      v16 = qword_27ECF6930;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE50, &unk_242F37640);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_242F09510;
      *(v17 + 32) = 0;
      v18 = v17 + 32;
      *(v17 + 40) = v16;
      v19 = sub_242CE6C84(v17);
      swift_setDeallocating();

      sub_242C6D138(v18, &qword_27ECEFE58, &unk_242F09520);
      swift_deallocClassInstance();
      v20 = sub_242E1E384(v19);

      if (*(v20 + 16))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE60, &qword_242F37650);
        v21 = sub_242F05CB0();
      }

      else
      {
        v21 = MEMORY[0x277D84F98];
      }

      v41[0] = v21;

      sub_242E21B3C(v37, 1, v41);
      goto LABEL_44;
    case 9:
      memcpy(v41, v2, sizeof(v41));
      v14 = 1;
      goto LABEL_23;
    case 0xA:
    case 0xC:
      memcpy(v41, v2, sizeof(v41));
      v11 = 5;
      goto LABEL_14;
    case 0xB:
    case 0x1F:
      memcpy(v41, v2, sizeof(v41));
      v10 = 5;
      goto LABEL_11;
    case 0xD:
      memcpy(v41, v2, sizeof(v41));
      v39 = 5;
      v40 = 1;
LABEL_3:
      v9 = 4;
      goto LABEL_40;
    case 0xE:
    case 0x10:
    case 0x24:
      memcpy(v41, v2, sizeof(v41));
      v10 = 4;
      goto LABEL_11;
    case 0xF:
      memcpy(v41, v2, sizeof(v41));
      v12 = 5;
      goto LABEL_37;
    case 0x11:
    case 0x12:
    case 0x13:
      memcpy(v41, v2, sizeof(v41));
      v11 = 6;
LABEL_14:
      v39 = v11;
      v40 = 1;
      v9 = 1;
      goto LABEL_40;
    case 0x15:
      memcpy(v41, v2, sizeof(v41));
      v14 = 4;
LABEL_23:
      v39 = v14;
      v40 = 0;
      goto LABEL_24;
    case 0x16:
    case 0x17:
    case 0x18:
      memcpy(v41, v2, sizeof(v41));
      v39 = 6;
      v40 = 1;
LABEL_24:
      v9 = 5;
      goto LABEL_40;
    case 0x19:
      memcpy(v41, v2, sizeof(v41));
      v39 = 6;
      v40 = 1;
      v9 = 2;
      goto LABEL_40;
    case 0x1A:
    case 0x1B:
    case 0x1D:
      memcpy(v41, v2, sizeof(v41));
      v39 = 0;
      goto LABEL_38;
    case 0x1C:
    case 0x1E:
      memcpy(v41, v2, sizeof(v41));
      v12 = 2;
      goto LABEL_37;
    case 0x20:
    case 0x21:
      memcpy(v41, v2, sizeof(v41));
      v39 = 1;
      v40 = 1;
      goto LABEL_39;
    case 0x22:
      memcpy(v41, v2, sizeof(v41));
      v12 = 3;
      goto LABEL_37;
    case 0x23:
      memcpy(v41, v2, sizeof(v41));
      v39 = 3;
      v40 = 1;
      goto LABEL_46;
    case 0x25:
      memcpy(v41, v2, sizeof(v41));
      v39 = 4;
      v40 = 0;
LABEL_46:
      v9 = 3;
      goto LABEL_40;
    case 0x26:
      memcpy(v41, v2, sizeof(v41));
      v12 = 4;
LABEL_37:
      v39 = v12;
LABEL_38:
      v40 = 1;
      goto LABEL_39;
    case 0x27:
      memcpy(v41, v2, sizeof(v41));
      v39 = 4;
      v40 = 1;
      v13 = 3;
      goto LABEL_33;
    case 0x28:
      memcpy(v41, v2, sizeof(v41));
      v39 = 1;
      v40 = 0;
      v13 = 4;
      goto LABEL_33;
    case 0x29:
      memcpy(v41, v2, sizeof(v41));
      v15 = 5;
      goto LABEL_32;
    case 0x2A:
      memcpy(v41, v2, sizeof(v41));
      v15 = 1;
LABEL_32:
      v39 = v15;
      v40 = 0;
      v13 = 0;
LABEL_33:
      v22 = sub_242D0B004(&v39, v13);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE50, &unk_242F37640);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_242F09510;
      *(v23 + 32) = 0;
      v24 = v23 + 32;
      *(v23 + 40) = v22;
      v25 = sub_242CE6C84(v23);
      swift_setDeallocating();
      swift_retain_n();
      sub_242C6D138(v24, &qword_27ECEFE58, &unk_242F09520);
      swift_deallocClassInstance();
      GradientColor.init(stops:)(v25, a2);

      break;
    case 0x2B:
    case 0x2C:
    case 0x2D:
      (*(v7 + 104))(&v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CE0EE0], v8);
      v33 = sub_242F047A0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE50, &unk_242F37640);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_242F09510;
      *(v34 + 32) = 0;
      v35 = v34 + 32;
      *(v34 + 40) = v33;
      v36 = sub_242CE6C84(v34);
      swift_setDeallocating();

      sub_242C6D138(v35, &qword_27ECEFE58, &unk_242F09520);
      swift_deallocClassInstance();
      GradientColor.init(stops:)(v36, a2);

      break;
    default:
      memcpy(v41, v2, sizeof(v41));
      v10 = 1;
LABEL_11:
      v39 = v10;
      v40 = 0;
LABEL_39:
      v9 = 0;
LABEL_40:
      v26 = sub_242D0B004(&v39, v9);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE50, &unk_242F37640);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_242F09510;
      *(v27 + 32) = 0;
      v28 = v27 + 32;
      *(v27 + 40) = v26;
      v29 = sub_242CE6C84(v27);
      swift_setDeallocating();
      swift_retain_n();
      sub_242C6D138(v28, &qword_27ECEFE58, &unk_242F09520);
      swift_deallocClassInstance();
      v30 = sub_242E1E384(v29);

      if (*(v30 + 16))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE60, &qword_242F37650);
        v31 = sub_242F05CB0();
      }

      else
      {
        v31 = MEMORY[0x277D84F98];
      }

      v41[0] = v31;

      sub_242E21B3C(v32, 1, v41);

LABEL_44:

      *a2 = v41[0];
      break;
  }
}

void sub_242DCC254(_BYTE *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_242F04700();
  v8 = MEMORY[0x28223BE20](v5);
  switch(*a1)
  {
    case 1:
    case 0x1A:
      memcpy(v35, v2, 0x3B0uLL);
      v33 = 1;
      v34 = 0;
      v12 = 4;
      goto LABEL_23;
    case 2:
      if (qword_27ECEF668 != -1)
      {
        swift_once();
      }

      v15 = qword_27ECF6930;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE50, &unk_242F37640);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_242F09510;
      *(v16 + 32) = 0;
      v17 = v16 + 32;
      *(v16 + 40) = v15;
      v18 = sub_242CE6C84(v16);
      swift_setDeallocating();

      sub_242C6D138(v17, &qword_27ECEFE58, &unk_242F09520);
      swift_deallocClassInstance();
      v19 = sub_242E1E384(v18);

      if (*(v19 + 16))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE60, &qword_242F37650);
        v20 = sub_242F05CB0();
      }

      else
      {
        v20 = MEMORY[0x277D84F98];
      }

      v35[0] = v20;

      sub_242E21B3C(v31, 1, v35);
      goto LABEL_28;
    case 3:
    case 5:
      memcpy(v35, v2, 0x3B0uLL);
      v10 = 5;
      goto LABEL_8;
    case 4:
    case 0x11:
    case 0x1B:
      memcpy(v35, v2, 0x3B0uLL);
      v9 = 5;
      goto LABEL_18;
    case 6:
    case 0x12:
    case 0x13:
    case 0x16:
      memcpy(v35, v2, 0x3B0uLL);
      v9 = 4;
      goto LABEL_18;
    case 7:
      memcpy(v35, v2, 0x3B0uLL);
      v21 = 4;
      goto LABEL_34;
    case 8:
      memcpy(v35, v2, 0x3B0uLL);
      v21 = 3;
LABEL_34:
      v33 = v21;
      v34 = 0;
      v12 = 2;
      goto LABEL_23;
    case 9:
    case 0xB:
      memcpy(v35, v2, 0x3B0uLL);
      v11 = 4;
      goto LABEL_32;
    case 0xA:
      memcpy(v35, v2, 0x3B0uLL);
      v11 = 3;
LABEL_32:
      v33 = v11;
      v34 = 0;
      v12 = 5;
      goto LABEL_23;
    case 0xC:
    case 0xD:
    case 0xF:
      memcpy(v35, v2, 0x3B0uLL);
      v33 = 0;
      goto LABEL_21;
    case 0xE:
    case 0x10:
      memcpy(v35, v2, 0x3B0uLL);
      v10 = 2;
LABEL_8:
      v33 = v10;
      v34 = 1;
      v12 = 1;
      goto LABEL_23;
    case 0x14:
      memcpy(v35, v2, 0x3B0uLL);
      v14 = 3;
      goto LABEL_20;
    case 0x15:
      memcpy(v35, v2, 0x3B0uLL);
      v13 = 3;
      goto LABEL_30;
    case 0x17:
      memcpy(v35, v2, 0x3B0uLL);
      v33 = 4;
      v34 = 0;
      goto LABEL_36;
    case 0x18:
      memcpy(v35, v2, 0x3B0uLL);
      v14 = 4;
LABEL_20:
      v33 = v14;
LABEL_21:
      v34 = 1;
      goto LABEL_22;
    case 0x19:
      memcpy(v35, v2, 0x3B0uLL);
      v13 = 4;
LABEL_30:
      v33 = v13;
      v34 = 1;
LABEL_36:
      v12 = 3;
      goto LABEL_23;
    case 0x1C:
    case 0x1D:
    case 0x1E:
      (*(v7 + 104))(&v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CE0EE0], v8);
      v29 = sub_242F047A0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE50, &unk_242F37640);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_242F09510;
      *(v30 + 32) = 0;
      v24 = v30 + 32;
      *(v30 + 40) = v29;
      v25 = sub_242CE6C84(v30);
      swift_setDeallocating();

      goto LABEL_24;
    default:
      memcpy(v35, v2, 0x3B0uLL);
      v9 = 1;
LABEL_18:
      v33 = v9;
      v34 = 0;
LABEL_22:
      v12 = 0;
LABEL_23:
      v22 = sub_242D0B004(&v33, v12);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE50, &unk_242F37640);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_242F09510;
      *(v23 + 32) = 0;
      v24 = v23 + 32;
      *(v23 + 40) = v22;
      v25 = sub_242CE6C84(v23);
      swift_setDeallocating();
      swift_retain_n();
LABEL_24:
      sub_242C6D138(v24, &qword_27ECEFE58, &unk_242F09520);
      swift_deallocClassInstance();
      v26 = sub_242E1E384(v25);

      if (*(v26 + 16))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE60, &qword_242F37650);
        v27 = sub_242F05CB0();
      }

      else
      {
        v27 = MEMORY[0x277D84F98];
      }

      v35[0] = v27;

      sub_242E21B3C(v28, 1, v35);

LABEL_28:

      *a2 = v35[0];
      return;
  }
}

void sub_242DCC8B0(_BYTE *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_242F04700();
  v8 = MEMORY[0x28223BE20](v5);
  switch(*a1)
  {
    case 1:
      memcpy(v46, v2, sizeof(v46));
      v17 = 1;
      goto LABEL_54;
    case 2:
      memcpy(v46, v2, sizeof(v46));
      v9 = 2;
      goto LABEL_41;
    case 3:
      memcpy(v46, v2, sizeof(v46));
      v17 = 2;
      goto LABEL_54;
    case 4:
      if (qword_27ECEF668 != -1)
      {
        swift_once();
      }

      v16 = qword_27ECF6930;
      goto LABEL_37;
    case 5:
      memcpy(v46, v2, sizeof(v46));
      v19 = 1;
      goto LABEL_57;
    case 6:
      if (qword_27ECEF660 != -1)
      {
        swift_once();
      }

      v16 = qword_27ECF6928;
LABEL_37:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE50, &unk_242F37640);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_242F09510;
      *(v21 + 32) = 0;
      v22 = v21 + 32;
      *(v21 + 40) = v16;
      v23 = sub_242CE6C84(v21);
      swift_setDeallocating();

      sub_242C6D138(v22, &qword_27ECEFE58, &unk_242F09520);
      swift_deallocClassInstance();
      v24 = sub_242E1E384(v23);

      if (*(v24 + 16))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE60, &qword_242F37650);
        v25 = sub_242F05CB0();
      }

      else
      {
        v25 = MEMORY[0x277D84F98];
      }

      v46[0] = v25;

      sub_242E21B3C(v42, 1, v46);
      goto LABEL_52;
    case 7:
    case 9:
      memcpy(v46, v2, sizeof(v46));
      v12 = 5;
      goto LABEL_62;
    case 8:
    case 0x18:
      memcpy(v46, v2, sizeof(v46));
      v9 = 5;
      goto LABEL_41;
    case 0xA:
      memcpy(v46, v2, sizeof(v46));
      v44 = 5;
      v45 = 1;
      goto LABEL_55;
    case 0xB:
      memcpy(v46, v2, sizeof(v46));
      v9 = 4;
      goto LABEL_41;
    case 0xC:
      memcpy(v46, v2, sizeof(v46));
      v11 = 5;
      goto LABEL_45;
    case 0xD:
      memcpy(v46, v2, sizeof(v46));
      v44 = 4;
      v45 = 0;
      goto LABEL_63;
    case 0xE:
      memcpy(v46, v2, sizeof(v46));
      v12 = 6;
LABEL_62:
      v44 = v12;
      v45 = 1;
LABEL_63:
      v18 = 1;
      goto LABEL_48;
    case 0xF:
      memcpy(v46, v2, sizeof(v46));
      v44 = 4;
      v45 = 0;
      v18 = 2;
      goto LABEL_48;
    case 0x10:
      memcpy(v46, v2, sizeof(v46));
      v19 = 4;
      goto LABEL_57;
    case 0x11:
      memcpy(v46, v2, sizeof(v46));
      v19 = 3;
      goto LABEL_57;
    case 0x12:
      memcpy(v46, v2, sizeof(v46));
      v19 = 2;
LABEL_57:
      v44 = v19;
      v45 = 0;
      v18 = 5;
      goto LABEL_48;
    case 0x13:
    case 0x14:
    case 0x16:
      memcpy(v46, v2, sizeof(v46));
      v44 = 0;
      goto LABEL_46;
    case 0x15:
    case 0x17:
      memcpy(v46, v2, sizeof(v46));
      v11 = 2;
LABEL_45:
      v44 = v11;
LABEL_46:
      v45 = 1;
      goto LABEL_47;
    case 0x19:
    case 0x1A:
      memcpy(v46, v2, sizeof(v46));
      v44 = 1;
      v45 = 1;
      goto LABEL_47;
    case 0x1B:
      memcpy(v46, v2, sizeof(v46));
      v10 = 3;
      goto LABEL_65;
    case 0x1C:
      memcpy(v46, v2, sizeof(v46));
      v15 = 3;
      goto LABEL_32;
    case 0x1D:
      memcpy(v46, v2, sizeof(v46));
      v14 = 4;
      goto LABEL_25;
    case 0x1E:
      memcpy(v46, v2, sizeof(v46));
      v20 = 4;
      goto LABEL_59;
    case 0x1F:
      memcpy(v46, v2, sizeof(v46));
      v10 = 4;
      goto LABEL_65;
    case 0x20:
      memcpy(v46, v2, sizeof(v46));
      v15 = 4;
LABEL_32:
      v44 = v15;
      v45 = 1;
      goto LABEL_60;
    case 0x21:
      memcpy(v46, v2, sizeof(v46));
      v13 = 1;
      goto LABEL_43;
    case 0x22:
      memcpy(v46, v2, sizeof(v46));
      v14 = 5;
      goto LABEL_25;
    case 0x23:
    case 0x31:
      memcpy(v46, v2, sizeof(v46));
      v9 = 7;
      goto LABEL_41;
    case 0x24:
      memcpy(v46, v2, sizeof(v46));
      v44 = 7;
      v45 = 0;
      v18 = 3;
      goto LABEL_48;
    case 0x25:
      memcpy(v46, v2, sizeof(v46));
      v17 = 7;
LABEL_54:
      v44 = v17;
      v45 = 0;
LABEL_55:
      v18 = 4;
      goto LABEL_48;
    case 0x26:
      memcpy(v46, v2, sizeof(v46));
      v14 = 7;
      goto LABEL_25;
    case 0x27:
      memcpy(v46, v2, sizeof(v46));
      v9 = 8;
      goto LABEL_41;
    case 0x28:
      memcpy(v46, v2, sizeof(v46));
      v20 = 8;
LABEL_59:
      v44 = v20;
      v45 = 0;
LABEL_60:
      v26 = 3;
      goto LABEL_67;
    case 0x29:
      memcpy(v46, v2, sizeof(v46));
      v13 = 8;
      goto LABEL_43;
    case 0x2A:
      memcpy(v46, v2, sizeof(v46));
      v14 = 8;
LABEL_25:
      v44 = v14;
      v45 = 0;
      goto LABEL_66;
    case 0x2B:
      memcpy(v46, v2, sizeof(v46));
      v13 = 2;
LABEL_43:
      v44 = v13;
      v45 = 0;
      v26 = 4;
      goto LABEL_67;
    case 0x2C:
    case 0x2D:
    case 0x2E:
      memcpy(v46, v2, sizeof(v46));
      v10 = 5;
LABEL_65:
      v44 = v10;
      v45 = 1;
LABEL_66:
      v26 = 0;
LABEL_67:
      v34 = sub_242D0B004(&v44, v26);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE50, &unk_242F37640);
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_242F09510;
      *(v35 + 32) = 0;
      v36 = v35 + 32;
      *(v35 + 40) = v34;
      v37 = sub_242CE6C84(v35);
      swift_setDeallocating();
      swift_retain_n();
      sub_242C6D138(v36, &qword_27ECEFE58, &unk_242F09520);
      swift_deallocClassInstance();
      GradientColor.init(stops:)(v37, a2);

      break;
    case 0x32:
    case 0x33:
    case 0x34:
      (*(v7 + 104))(&v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CE0EE0], v8);
      v38 = sub_242F047A0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE50, &unk_242F37640);
      v39 = swift_allocObject();
      *(v39 + 16) = xmmword_242F09510;
      *(v39 + 32) = 0;
      v40 = v39 + 32;
      *(v39 + 40) = v38;
      v41 = sub_242CE6C84(v39);
      swift_setDeallocating();

      sub_242C6D138(v40, &qword_27ECEFE58, &unk_242F09520);
      swift_deallocClassInstance();
      GradientColor.init(stops:)(v41, a2);

      break;
    default:
      memcpy(v46, v2, sizeof(v46));
      v9 = 1;
LABEL_41:
      v44 = v9;
      v45 = 0;
LABEL_47:
      v18 = 0;
LABEL_48:
      v27 = sub_242D0B004(&v44, v18);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE50, &unk_242F37640);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_242F09510;
      *(v28 + 32) = 0;
      v29 = v28 + 32;
      *(v28 + 40) = v27;
      v30 = sub_242CE6C84(v28);
      swift_setDeallocating();
      swift_retain_n();
      sub_242C6D138(v29, &qword_27ECEFE58, &unk_242F09520);
      swift_deallocClassInstance();
      v31 = sub_242E1E384(v30);

      if (*(v31 + 16))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE60, &qword_242F37650);
        v32 = sub_242F05CB0();
      }

      else
      {
        v32 = MEMORY[0x277D84F98];
      }

      v46[0] = v32;

      sub_242E21B3C(v33, 1, v46);

LABEL_52:

      *a2 = v46[0];
      break;
  }
}

uint64_t sub_242DCD2B8(uint64_t a1, uint64_t *a2)
{
  sub_242F04730();
  v3 = sub_242F04770();

  *a2 = v3;
  return result;
}

void sub_242DCD34C(uint64_t a1)
{
  sub_242DCD3D8();
  if (v1 <= 0x3F)
  {
    type metadata accessor for FancyNotificationConfiguration(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_242DCD3D8()
{
  if (!qword_27ECF6948)
  {
    v0 = sub_242F03BC0();
    if (!v1)
    {
      atomic_store(v0, &qword_27ECF6948);
    }
  }
}

uint64_t sub_242DCD444@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF6950, &qword_242F305D8);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v22 - v5;
  sub_242DCD634(&v22 - v5);
  v7 = v1 + *(_s21FancyNotificationViewVMa(0) + 20);
  v8 = type metadata accessor for FancyNotificationConfiguration(0);
  v9 = *(v7 + v8[5]);
  v10 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF6958, &qword_242F305E0) + 36)];
  v11 = type metadata accessor for PlatterView(0);
  _s7SwiftUI10ShapeStyleP012CarPlayAssetB0AA8MaterialVRszrlE07platterH0AFvgZ_0();
  v12 = (v7 + v8[12]);
  v14 = *v12;
  v13 = v12[1];
  v15 = v12[2];
  *v10 = swift_getKeyPath();
  *(v10 + 1) = 0;
  v10[16] = 0;
  *(v10 + 3) = swift_getKeyPath();
  v10[32] = 0;
  *(v10 + 5) = v9;
  v16 = &v10[*(v11 + 32)];
  *v16 = v14;
  *(v16 + 1) = v13;
  *(v16 + 2) = v15;

  v17 = sub_242F04A70();
  v19 = v18;
  v20 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF6960, &qword_242F30638) + 36)];
  *v20 = v17;
  v20[1] = v19;
  v6[*(v4 + 44)] = 1;
  sub_242DCDA70(*(v7 + v8[10]), *(v7 + v8[10] + 8), *(v7 + v8[10] + 16), *(v7 + v8[9]), *(v7 + v8[9] + 8), *(v7 + v8[9] + 16), &qword_27ECF6950, &qword_242F305D8, a1, &qword_27ECF6968, &qword_242F30640);
  return sub_242C6D138(v6, &qword_27ECF6950, &qword_242F305D8);
}

uint64_t sub_242DCD634@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v30 = a1;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF6970, &qword_242F30648);
  MEMORY[0x28223BE20](v29);
  v4 = &v26 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF6978, &qword_242F30650);
  MEMORY[0x28223BE20](v5);
  v7 = &v26 - v6;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF6980, &qword_242F30658);
  MEMORY[0x28223BE20](v31);
  v28 = &v26 - v8;
  v9 = sub_242F04000();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v1;
  v13 = *(v1 + 8);
  if (*(v2 + 16) == 1)
  {
    v32[0] = v14;
    v32[1] = v13;
  }

  else
  {

    sub_242F05710();
    v15 = sub_242F04360();
    v27 = v7;
    v16 = v15;
    sub_242F03930();

    v7 = v27;
    sub_242F03FF0();
    swift_getAtKeyPath();
    sub_242DD16BC(v14, v13, 0);
    (*(v10 + 8))(v12, v9);
    v14 = v32[0];
  }

  v17 = v2 + *(_s21FancyNotificationViewVMa(0) + 24);
  v18 = *(v17 + 48);
  if (v18)
  {
    v19 = *(v17 + 40);
  }

  else
  {
    v19 = 0;
  }

  v14(&v33, v19, v18);

  if (v33)
  {
    LOBYTE(v32[0]) = v34;

    v21 = v28;
    sub_242DCDDA0(v20, v32, v28);

    sub_242CA321C(v21, v7, &qword_27ECF6980, &qword_242F30658);
    swift_storeEnumTagMultiPayload();
    sub_242DD16C8();
    sub_242DD1838();
    sub_242F041C0();

    v22 = v21;
    v23 = &qword_27ECF6980;
    v24 = &qword_242F30658;
  }

  else
  {
    sub_242DCE2AC(v4);
    sub_242CA321C(v4, v7, &qword_27ECF6970, &qword_242F30648);
    swift_storeEnumTagMultiPayload();
    sub_242DD16C8();
    sub_242DD1838();
    sub_242F041C0();
    v22 = v4;
    v23 = &qword_27ECF6970;
    v24 = &qword_242F30648;
  }

  return sub_242C6D138(v22, v23, v24);
}

__n128 sub_242DCDA70@<Q0>(double a1@<X0>, double a2@<X1>, char a3@<W2>, double a4@<X3>, double a5@<X4>, char a6@<W5>, uint64_t *a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, uint64_t *a10, uint64_t *a11)
{
  sub_242F04A70();
  if (a3)
  {
    v20 = 0.0;
  }

  else
  {
    v20 = a1;
  }

  if (a3)
  {
    v21 = 0.0;
  }

  else
  {
    v21 = a2;
  }

  v22 = v20;
  if (a3)
  {
    v22 = -INFINITY;
  }

  if (a6)
  {
    v23 = 0.0;
  }

  else
  {
    v23 = a4;
  }

  if (a6)
  {
    v24 = 0.0;
  }

  else
  {
    v24 = a5;
  }

  v25 = v23;
  if (a6)
  {
    v25 = v22;
  }

  if (v22 > v25)
  {
    goto LABEL_23;
  }

  v26 = v21;
  if (a3)
  {
    v26 = -INFINITY;
  }

  v27 = v24;
  if (a6)
  {
    v27 = v26;
  }

  if (v26 > v27)
  {
LABEL_23:
    sub_242F05710();
    v28 = v11;
    v29 = a8;
    v30 = a9;
    v31 = sub_242F04360();
    sub_242F03930();

    a9 = v30;
    a8 = v29;
    v11 = v28;
  }

  sub_242F03E40();
  sub_242CA321C(v11, a9, a7, a8);
  v32 = (a9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(a10, a11) + 36));
  v32[4] = v39;
  v32[5] = v40;
  v32[6] = v41;
  *v32 = v35;
  v32[1] = v36;
  result = v38;
  v32[2] = v37;
  v32[3] = v38;
  return result;
}

uint64_t sub_242DCDDA0@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v50 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF69B8, &qword_242F30670);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v46 - v8;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF69A8, &qword_242F30668);
  MEMORY[0x28223BE20](v49);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v46 - v13;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF6A08, &qword_242F30698);
  MEMORY[0x28223BE20](v47);
  v16 = &v46 - v15;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF6998, &qword_242F30660);
  MEMORY[0x28223BE20](v48);
  v18 = &v46 - v17;
  v19 = *a2;
  v20 = (v3 + *(_s21FancyNotificationViewVMa(0) + 24));
  v21 = v20[9];
  if (!v21)
  {
    goto LABEL_6;
  }

  v22 = v20[8];
  v23 = HIBYTE(v21) & 0xF;
  if ((v21 & 0x2000000000000000) == 0)
  {
    v23 = v22 & 0xFFFFFFFFFFFFLL;
  }

  if (v23)
  {
    v24 = v20[10];
    v25 = v20[11];

    *v18 = sub_242F04080();
    *(v18 + 1) = 0;
    v18[16] = 0;
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF6A20, &qword_242F306B0);
    sub_242DCF438(a1, v19, v4, v22, v21, v24, v25, &v18[*(v26 + 44)]);
    sub_242CA321C(v18, v16, &qword_27ECF6998, &qword_242F30660);
    swift_storeEnumTagMultiPayload();
    sub_242C7E000(&qword_27ECF6990, &qword_27ECF6998, &qword_242F30660, MEMORY[0x277CE1198]);
    sub_242DD1780();
    sub_242F041C0();
    sub_242D3D654(v22, v21, v24, v25);
    v27 = v18;
    v28 = &qword_27ECF6998;
    v29 = &qword_242F30660;
  }

  else
  {
LABEL_6:
    *v9 = sub_242F04080();
    *(v9 + 1) = 0;
    v9[16] = 0;
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF6A10, &unk_242F306A0);
    sub_242DCFE9C(a1, v19, v4, &v9[*(v30 + 44)]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF6A18, &qword_242F48A60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_242F15420;
    v32 = sub_242F043E0();
    *(inited + 32) = v32;
    v33 = sub_242F04400();
    *(inited + 33) = v33;
    v34 = sub_242F043D0();
    *(inited + 34) = v34;
    v35 = sub_242F043F0();
    sub_242F043F0();
    if (sub_242F043F0() != v32)
    {
      v35 = sub_242F043F0();
    }

    sub_242F043F0();
    if (sub_242F043F0() != v33)
    {
      v35 = sub_242F043F0();
    }

    sub_242F043F0();
    if (sub_242F043F0() != v34)
    {
      v35 = sub_242F043F0();
    }

    sub_242F03B50();
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v43 = v42;
    sub_242CF6B3C(v9, v11, &qword_27ECF69B8, &qword_242F30670);
    v44 = &v11[*(v49 + 36)];
    *v44 = v35;
    *(v44 + 1) = v37;
    *(v44 + 2) = v39;
    *(v44 + 3) = v41;
    *(v44 + 4) = v43;
    v44[40] = 0;
    sub_242CF6B3C(v11, v14, &qword_27ECF69A8, &qword_242F30668);
    sub_242CA321C(v14, v16, &qword_27ECF69A8, &qword_242F30668);
    swift_storeEnumTagMultiPayload();
    sub_242C7E000(&qword_27ECF6990, &qword_27ECF6998, &qword_242F30660, MEMORY[0x277CE1198]);
    sub_242DD1780();
    sub_242F041C0();
    v27 = v14;
    v28 = &qword_27ECF69A8;
    v29 = &qword_242F30668;
  }

  return sub_242C6D138(v27, v28, v29);
}

uint64_t sub_242DCE2AC@<X0>(uint64_t a1@<X8>)
{
  v67 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF6A00, &qword_242F30690);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v61 - v3;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF69F0, &qword_242F30688);
  MEMORY[0x28223BE20](v66);
  v6 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v61 - v8;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF6AB8, &qword_242F30790);
  MEMORY[0x28223BE20](v65);
  v11 = &v61 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF69E0, &qword_242F30680);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v61 - v13;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF69D0, &qword_242F30678);
  MEMORY[0x28223BE20](v64);
  v16 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v61 - v18;
  v20 = (v1 + *(_s21FancyNotificationViewVMa(0) + 24));
  v21 = v20[9];
  if (!v21)
  {
    goto LABEL_12;
  }

  v22 = v20[8];
  v23 = HIBYTE(v21) & 0xF;
  if ((v21 & 0x2000000000000000) == 0)
  {
    v23 = v22 & 0xFFFFFFFFFFFFLL;
  }

  if (v23)
  {
    v24 = v20[10];
    v25 = v20[11];

    *v14 = sub_242F04080();
    *(v14 + 1) = 0;
    v14[16] = 0;
    v26 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF6AC8, &qword_242F307A0) + 44)];
    v62 = v24;
    v63 = v22;
    v61 = v25;
    sub_242DCE928(v1, v22, v21, v24, v25, v26);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF6A18, &qword_242F48A60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_242F15420;
    v28 = sub_242F043E0();
    *(inited + 32) = v28;
    v29 = sub_242F043D0();
    *(inited + 33) = v29;
    v30 = sub_242F04400();
    *(inited + 34) = v30;
    v31 = sub_242F043F0();
    sub_242F043F0();
    if (sub_242F043F0() != v28)
    {
      v31 = sub_242F043F0();
    }

    sub_242F043F0();
    if (sub_242F043F0() != v29)
    {
      v31 = sub_242F043F0();
    }

    sub_242F043F0();
    if (sub_242F043F0() != v30)
    {
      v31 = sub_242F043F0();
    }

    sub_242F03B50();
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v39 = v38;
    sub_242CF6B3C(v14, v16, &qword_27ECF69E0, &qword_242F30680);
    v40 = &v16[*(v64 + 36)];
    *v40 = v31;
    *(v40 + 1) = v33;
    *(v40 + 2) = v35;
    *(v40 + 3) = v37;
    *(v40 + 4) = v39;
    v40[40] = 0;
    v41 = &qword_27ECF69D0;
    v42 = &qword_242F30678;
    sub_242CF6B3C(v16, v19, &qword_27ECF69D0, &qword_242F30678);
    sub_242CA321C(v19, v11, &qword_27ECF69D0, &qword_242F30678);
    swift_storeEnumTagMultiPayload();
    sub_242DD18C4();
    sub_242DD197C();
    sub_242F041C0();
    sub_242D3D654(v63, v21, v62, v61);
    v43 = v19;
  }

  else
  {
LABEL_12:
    *v4 = sub_242F04080();
    *(v4 + 1) = 0x4024000000000000;
    v4[16] = 0;
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF6AC0, &qword_242F30798);
    sub_242DCF188(v1, &v4[*(v44 + 44)]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF6A18, &qword_242F48A60);
    v45 = swift_initStackObject();
    *(v45 + 16) = xmmword_242F09530;
    v46 = sub_242F043E0();
    *(v45 + 32) = v46;
    v47 = sub_242F04400();
    *(v45 + 33) = v47;
    v48 = sub_242F043D0();
    *(v45 + 34) = v48;
    v49 = sub_242F043C0();
    *(v45 + 35) = v49;
    v50 = sub_242F043F0();
    sub_242F043F0();
    if (sub_242F043F0() != v46)
    {
      v50 = sub_242F043F0();
    }

    sub_242F043F0();
    if (sub_242F043F0() != v47)
    {
      v50 = sub_242F043F0();
    }

    sub_242F043F0();
    if (sub_242F043F0() != v48)
    {
      v50 = sub_242F043F0();
    }

    sub_242F043F0();
    if (sub_242F043F0() != v49)
    {
      v50 = sub_242F043F0();
    }

    sub_242F03B50();
    v52 = v51;
    v54 = v53;
    v56 = v55;
    v58 = v57;
    sub_242CF6B3C(v4, v6, &qword_27ECF6A00, &qword_242F30690);
    v59 = &v6[*(v66 + 36)];
    *v59 = v50;
    *(v59 + 1) = v52;
    *(v59 + 2) = v54;
    *(v59 + 3) = v56;
    *(v59 + 4) = v58;
    v59[40] = 0;
    v41 = &qword_27ECF69F0;
    v42 = &qword_242F30688;
    sub_242CF6B3C(v6, v9, &qword_27ECF69F0, &qword_242F30688);
    sub_242CA321C(v9, v11, &qword_27ECF69F0, &qword_242F30688);
    swift_storeEnumTagMultiPayload();
    sub_242DD18C4();
    sub_242DD197C();
    sub_242F041C0();
    v43 = v9;
  }

  return sub_242C6D138(v43, v41, v42);
}

uint64_t sub_242DCE928@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v25 = a4;
  v26 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF6A28, &qword_242F306B8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v25 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF6AD0, &qword_242F307A8);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v25 - v20;
  *v21 = sub_242F04040();
  *(v21 + 1) = 0;
  v21[16] = 0;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF6AD8, &qword_242F307B0);
  sub_242DCEB64(a1, a2, a3, v25, v26, &v21[*(v22 + 44)]);
  sub_242DCEF4C(v15);
  sub_242CA321C(v21, v18, &qword_27ECF6AD0, &qword_242F307A8);
  sub_242CA321C(v15, v12, &qword_27ECF6A28, &qword_242F306B8);
  sub_242CA321C(v18, a6, &qword_27ECF6AD0, &qword_242F307A8);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF6AE0, &qword_242F307B8);
  sub_242CA321C(v12, a6 + *(v23 + 48), &qword_27ECF6A28, &qword_242F306B8);
  sub_242C6D138(v15, &qword_27ECF6A28, &qword_242F306B8);
  sub_242C6D138(v21, &qword_27ECF6AD0, &qword_242F307A8);
  sub_242C6D138(v12, &qword_27ECF6A28, &qword_242F306B8);
  return sub_242C6D138(v18, &qword_27ECF6AD0, &qword_242F307A8);
}

uint64_t sub_242DCEB64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v57 = a4;
  v58 = a5;
  v54 = a3;
  v55 = a2;
  v59 = a6;
  v53 = type metadata accessor for IconNotificationButton(0) - 8;
  MEMORY[0x28223BE20](v53);
  v56 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v50 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF6A80, &qword_242F30720);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v52 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = (&v50 - v15);
  v17 = _s21FancyNotificationViewVMa(0);
  v18 = a1 + *(v17 + 24);
  v19 = *v18;
  v20 = *(v18 + 8);
  v21 = *(v18 + 16);
  v22 = *(v18 + 24);
  v51 = a1 + *(v17 + 20);
  v23 = v51;
  LOBYTE(a1) = *(v18 + 32);
  v50 = type metadata accessor for FancyNotificationConfiguration(0);
  v24 = v23 + *(v50 + 32);
  v25 = type metadata accessor for TextContentView(0);
  sub_242D575E8(v24, v16 + *(v25 + 24));
  *v16 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0BA0, &qword_242F0D080);
  swift_storeEnumTagMultiPayload();
  v26 = v16 + *(v25 + 20);
  *v26 = v19;
  *(v26 + 1) = v20;
  *(v26 + 2) = v21;
  *(v26 + 3) = v22;
  v26[32] = a1;
  sub_242CD52B8(v19, v20, v21, v22, a1);
  LOBYTE(v21) = sub_242F043C0();
  sub_242F03B50();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v35 = v16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF6A88, &qword_242F30760) + 36);
  *v35 = v21;
  *(v35 + 1) = v28;
  *(v35 + 2) = v30;
  *(v35 + 3) = v32;
  *(v35 + 4) = v34;
  v35[40] = 0;
  LOBYTE(v21) = sub_242F043D0();
  sub_242F03B50();
  v36 = v16 + *(v12 + 44);
  *v36 = v21;
  *(v36 + 1) = v37;
  *(v36 + 2) = v38;
  *(v36 + 3) = v39;
  *(v36 + 4) = v40;
  v36[40] = 0;

  v41 = sub_242F047F0();
  sub_242DD1BA0(v51 + *(v50 + 28), v10 + *(v53 + 32), type metadata accessor for IconNotificationButtonConfiguration);
  v42 = swift_allocObject();
  v43 = v58;
  *(v42 + 16) = v57;
  *(v42 + 24) = v43;
  *v10 = v41;
  v10[1] = sub_242D5D194;
  v10[2] = v42;
  v44 = v52;
  sub_242CA321C(v16, v52, &qword_27ECF6A80, &qword_242F30720);
  v45 = v56;
  sub_242DD1BA0(v10, v56, type metadata accessor for IconNotificationButton);
  v46 = v59;
  sub_242CA321C(v44, v59, &qword_27ECF6A80, &qword_242F30720);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF6AE8, &qword_242F307C0);
  v48 = v46 + *(v47 + 48);
  *v48 = 0;
  *(v48 + 8) = 1;
  sub_242DD1BA0(v45, v46 + *(v47 + 64), type metadata accessor for IconNotificationButton);

  sub_242DD1C70(v10, type metadata accessor for IconNotificationButton);
  sub_242C6D138(v16, &qword_27ECF6A80, &qword_242F30720);
  sub_242DD1C70(v45, type metadata accessor for IconNotificationButton);
  return sub_242C6D138(v44, &qword_27ECF6A80, &qword_242F30720);
}

uint64_t sub_242DCEF4C@<X0>(uint64_t a1@<X8>)
{
  v3 = _s21FancyNotificationViewVMa(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = *(v1 + *(v6 + 24) + 96);
  v8 = *(v7 + 16) + 1;
  v9 = 48;
  do
  {
    if (!--v8)
    {
      break;
    }

    v10 = *(v7 + v9);
    v9 += 72;
  }

  while (!v10);
  v11 = v8 != 0;
  v12 = *(v1 + *(v6 + 20) + 32);
  *a1 = sub_242F04040();
  *(a1 + 8) = v12;
  *(a1 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF6A50, &qword_242F306E0);
  v19[1] = v7;
  sub_242DD1BA0(v1, v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), _s21FancyNotificationViewVMa);
  v13 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v14 = swift_allocObject();
  sub_242DD1C08(v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, _s21FancyNotificationViewVMa);
  *(v14 + v13 + v5) = v11;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF6A58, &qword_242F306E8);
  _s11FancyButtonVMa(0);
  sub_242C7E000(&qword_27ECF6A60, &qword_27ECF6A58, &qword_242F306E8, MEMORY[0x277D83980]);
  v15 = sub_242DD1AF4();
  sub_242DD1B4C(v15, v16, v17);
  return sub_242F049A0();
}

uint64_t sub_242DCF188@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF6A28, &qword_242F306B8);
  MEMORY[0x28223BE20](v3 - 8);
  v33 = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = v32 - v6;
  v8 = type metadata accessor for TextContentView(0);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = (v32 - v13);
  v15 = _s21FancyNotificationViewVMa(0);
  v17 = *(v15 + 20);
  v16 = *(v15 + 24);
  v18 = a1;
  v32[1] = a1;
  v19 = a1 + v16;
  v21 = *v19;
  v20 = *(v19 + 8);
  v22 = *(v19 + 16);
  v23 = *(v19 + 24);
  v24 = v18 + v17;
  v25 = *(v19 + 32);
  v26 = type metadata accessor for FancyNotificationConfiguration(0);
  sub_242D575E8(v24 + *(v26 + 32), v14 + *(v9 + 32));
  *v14 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0BA0, &qword_242F0D080);
  swift_storeEnumTagMultiPayload();
  v27 = v14 + *(v9 + 28);
  *v27 = v21;
  *(v27 + 1) = v20;
  *(v27 + 2) = v22;
  *(v27 + 3) = v23;
  v27[32] = v25;
  sub_242CD52B8(v21, v20, v22, v23, v25);
  sub_242DCEF4C(v7);
  sub_242DD1BA0(v14, v11, type metadata accessor for TextContentView);
  v28 = v33;
  sub_242CA321C(v7, v33, &qword_27ECF6A28, &qword_242F306B8);
  v29 = v34;
  sub_242DD1BA0(v11, v34, type metadata accessor for TextContentView);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF6AF0, &qword_242F307C8);
  sub_242CA321C(v28, v29 + *(v30 + 48), &qword_27ECF6A28, &qword_242F306B8);
  sub_242C6D138(v7, &qword_27ECF6A28, &qword_242F306B8);
  sub_242DD1C70(v14, type metadata accessor for TextContentView);
  sub_242C6D138(v28, &qword_27ECF6A28, &qword_242F306B8);
  return sub_242DD1C70(v11, type metadata accessor for TextContentView);
}

uint64_t sub_242DCF438@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X6>, uint64_t a8@<X8>)
{
  v49 = a7;
  v50 = a8;
  v46 = a5;
  v47 = a6;
  v10 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF6A28, &qword_242F306B8);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v46 - v13;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF6A30, &qword_242F306C0);
  MEMORY[0x28223BE20](v48);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v46 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v46 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF6A38, &qword_242F306C8);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v46 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v46 - v27;
  *v28 = sub_242F04040();
  *(v28 + 1) = 0;
  v28[16] = 0;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF6A40, &qword_242F306D0);
  sub_242DCF850(a1, v10, a3, a4, v46, v47, v49, &v28[*(v29 + 44)]);
  v49 = v14;
  sub_242DCEF4C(v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF6A18, &qword_242F48A60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_242F15420;
  LOBYTE(v14) = sub_242F043E0();
  *(inited + 32) = v14;
  v31 = sub_242F04400();
  *(inited + 33) = v31;
  v32 = sub_242F043D0();
  *(inited + 34) = v32;
  v33 = sub_242F043F0();
  sub_242F043F0();
  if (sub_242F043F0() != v14)
  {
    v33 = sub_242F043F0();
  }

  sub_242F043F0();
  if (sub_242F043F0() != v31)
  {
    v33 = sub_242F043F0();
  }

  sub_242F043F0();
  if (sub_242F043F0() != v32)
  {
    v33 = sub_242F043F0();
  }

  sub_242F03B50();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  sub_242CF6B3C(v49, v19, &qword_27ECF6A28, &qword_242F306B8);
  v42 = &v19[*(v48 + 36)];
  *v42 = v33;
  *(v42 + 1) = v35;
  *(v42 + 2) = v37;
  *(v42 + 3) = v39;
  *(v42 + 4) = v41;
  v42[40] = 0;
  sub_242CF6B3C(v19, v22, &qword_27ECF6A30, &qword_242F306C0);
  sub_242CA321C(v28, v25, &qword_27ECF6A38, &qword_242F306C8);
  sub_242CA321C(v22, v16, &qword_27ECF6A30, &qword_242F306C0);
  v43 = v50;
  sub_242CA321C(v25, v50, &qword_27ECF6A38, &qword_242F306C8);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF6A48, &qword_242F306D8);
  sub_242CA321C(v16, v43 + *(v44 + 48), &qword_27ECF6A30, &qword_242F306C0);
  sub_242C6D138(v22, &qword_27ECF6A30, &qword_242F306C0);
  sub_242C6D138(v28, &qword_27ECF6A38, &qword_242F306C8);
  sub_242C6D138(v16, &qword_27ECF6A30, &qword_242F306C0);
  return sub_242C6D138(v25, &qword_27ECF6A38, &qword_242F306C8);
}

uint64_t sub_242DCF850@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v81 = a7;
  v78 = a5;
  v79 = a6;
  v77 = a4;
  LODWORD(v87) = a2;
  v74 = a1;
  v84 = a8;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF6A78, &qword_242F30718);
  MEMORY[0x28223BE20](v80);
  v85 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v82 = (&v74 - v11);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF6A80, &qword_242F30720);
  MEMORY[0x28223BE20](v75);
  v83 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = (&v74 - v14);
  v16 = type metadata accessor for NotificationSymbolConfiguration(0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for SymbolView(0);
  MEMORY[0x28223BE20](v19);
  v76 = &v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v74 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v74 - v25;
  v27 = _s21FancyNotificationViewVMa(0);
  v28 = a3 + *(v27 + 20);
  v86 = type metadata accessor for FancyNotificationConfiguration(0);
  v29 = v28;
  sub_242DD1BA0(v28 + v86[6], v18, type metadata accessor for NotificationSymbolConfiguration);
  v30 = a3 + *(v27 + 24);
  if (*(v30 + 48))
  {
    v31 = *(v30 + 56);
  }

  else
  {
    v31 = 0;
  }

  *v23 = swift_getKeyPath();
  *(v23 + 1) = 0;
  v23[16] = 0;
  *(v23 + 3) = v74;
  v23[32] = v87;
  sub_242DD1C08(v18, &v23[*(v19 + 24)], type metadata accessor for NotificationSymbolConfiguration);
  *&v23[*(v19 + 28)] = v31;
  sub_242DD1C08(v23, v26, type metadata accessor for SymbolView);
  v32 = *v30;
  v33 = *(v30 + 8);
  v34 = *(v30 + 16);
  v35 = *(v30 + 24);
  v36 = v29 + v86[8];
  v37 = *(v30 + 32);
  v38 = type metadata accessor for TextContentView(0);
  v87 = v26;
  v39 = v38;
  sub_242D575E8(v36, v15 + *(v38 + 24));
  *v15 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0BA0, &qword_242F0D080);
  swift_storeEnumTagMultiPayload();
  v40 = v15 + *(v39 + 20);
  *v40 = v32;
  *(v40 + 1) = v33;
  *(v40 + 2) = v34;
  *(v40 + 3) = v35;
  v40[32] = v37;

  sub_242CD52B8(v32, v33, v34, v35, v37);
  LOBYTE(v32) = sub_242F043C0();
  sub_242F03B50();
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v49 = v15 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF6A88, &qword_242F30760) + 36);
  *v49 = v32;
  *(v49 + 1) = v42;
  *(v49 + 2) = v44;
  *(v49 + 3) = v46;
  *(v49 + 4) = v48;
  v49[40] = 0;
  LOBYTE(v32) = sub_242F043D0();
  sub_242F03B50();
  v50 = v15 + *(v75 + 36);
  *v50 = v32;
  *(v50 + 1) = v51;
  *(v50 + 2) = v52;
  *(v50 + 3) = v53;
  *(v50 + 4) = v54;
  v50[40] = 0;

  v55 = sub_242F047F0();
  v56 = v86[7];
  v57 = *(type metadata accessor for IconNotificationButton(0) + 24);
  v58 = v29 + v56;
  v59 = v82;
  sub_242DD1BA0(v58, v82 + v57, type metadata accessor for IconNotificationButtonConfiguration);
  v60 = swift_allocObject();
  v61 = v81;
  *(v60 + 16) = v79;
  *(v60 + 24) = v61;
  *v59 = v55;
  v59[1] = sub_242D5A674;
  v59[2] = v60;

  LOBYTE(v55) = sub_242F04400();
  sub_242F03B50();
  v62 = v59 + *(v80 + 36);
  *v62 = v55;
  *(v62 + 1) = v63;
  *(v62 + 2) = v64;
  *(v62 + 3) = v65;
  *(v62 + 4) = v66;
  v62[40] = 0;
  v67 = v76;
  sub_242DD1BA0(v87, v76, type metadata accessor for SymbolView);
  v68 = v83;
  v86 = v15;
  sub_242CA321C(v15, v83, &qword_27ECF6A80, &qword_242F30720);
  v69 = v85;
  sub_242CA321C(v59, v85, &qword_27ECF6A78, &qword_242F30718);
  v70 = v84;
  sub_242DD1BA0(v67, v84, type metadata accessor for SymbolView);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF6A90, &qword_242F30768);
  sub_242CA321C(v68, v70 + v71[12], &qword_27ECF6A80, &qword_242F30720);
  v72 = v70 + v71[16];
  *v72 = 0;
  *(v72 + 8) = 1;
  sub_242CA321C(v69, v70 + v71[20], &qword_27ECF6A78, &qword_242F30718);
  sub_242C6D138(v59, &qword_27ECF6A78, &qword_242F30718);
  sub_242C6D138(v86, &qword_27ECF6A80, &qword_242F30720);
  sub_242DD1C70(v87, type metadata accessor for SymbolView);
  sub_242C6D138(v69, &qword_27ECF6A78, &qword_242F30718);
  sub_242C6D138(v68, &qword_27ECF6A80, &qword_242F30720);
  return sub_242DD1C70(v67, type metadata accessor for SymbolView);
}

uint64_t sub_242DCFE9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF6A28, &qword_242F306B8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v23 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF6A98, &unk_242F30770);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v23 - v18;
  *v19 = sub_242F04040();
  *(v19 + 1) = 0;
  v19[16] = 0;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF6AA0, &qword_242F35C00);
  sub_242DD00CC(a1, v5, a3, &v19[*(v20 + 44)]);
  sub_242DCEF4C(v13);
  sub_242CA321C(v19, v16, &qword_27ECF6A98, &unk_242F30770);
  sub_242CA321C(v13, v10, &qword_27ECF6A28, &qword_242F306B8);
  sub_242CA321C(v16, a4, &qword_27ECF6A98, &unk_242F30770);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF6AA8, &unk_242F30780);
  sub_242CA321C(v10, a4 + *(v21 + 48), &qword_27ECF6A28, &qword_242F306B8);
  sub_242C6D138(v13, &qword_27ECF6A28, &qword_242F306B8);
  sub_242C6D138(v19, &qword_27ECF6A98, &unk_242F30770);
  sub_242C6D138(v10, &qword_27ECF6A28, &qword_242F306B8);
  return sub_242C6D138(v16, &qword_27ECF6A98, &unk_242F30770);
}

uint64_t sub_242DD00CC@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v53 = a2;
  v54 = a1;
  v57 = a4;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF6A80, &qword_242F30720);
  MEMORY[0x28223BE20](v55);
  v58 = &v52[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v8 = &v52[-v7];
  v9 = type metadata accessor for NotificationSymbolConfiguration(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v52[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for SymbolView(0);
  MEMORY[0x28223BE20](v12);
  v56 = &v52[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v16 = &v52[-v15];
  MEMORY[0x28223BE20](v17);
  v59 = &v52[-v18];
  v19 = _s21FancyNotificationViewVMa(0);
  v20 = a3 + *(v19 + 20);
  v21 = type metadata accessor for FancyNotificationConfiguration(0);
  sub_242DD1BA0(v20 + *(v21 + 24), v11, type metadata accessor for NotificationSymbolConfiguration);
  v22 = a3 + *(v19 + 24);
  if (*(v22 + 48))
  {
    v23 = *(v22 + 56);
  }

  else
  {
    v23 = 0;
  }

  *v16 = swift_getKeyPath();
  *(v16 + 1) = 0;
  v16[16] = 0;
  *(v16 + 3) = v54;
  v16[32] = v53;
  sub_242DD1C08(v11, &v16[*(v12 + 24)], type metadata accessor for NotificationSymbolConfiguration);
  *&v16[*(v12 + 28)] = v23;
  sub_242DD1C08(v16, v59, type metadata accessor for SymbolView);
  v24 = *v22;
  v25 = *(v22 + 8);
  v26 = *(v22 + 16);
  v27 = *(v22 + 24);
  v28 = v20 + *(v21 + 32);
  v29 = *(v22 + 32);
  v30 = type metadata accessor for TextContentView(0);
  sub_242D575E8(v28, v8 + *(v30 + 24));
  *v8 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0BA0, &qword_242F0D080);
  swift_storeEnumTagMultiPayload();
  v31 = v8 + *(v30 + 20);
  *v31 = v24;
  *(v31 + 1) = v25;
  *(v31 + 2) = v26;
  *(v31 + 3) = v27;
  v31[32] = v29;

  sub_242CD52B8(v24, v25, v26, v27, v29);
  LOBYTE(v30) = sub_242F043C0();
  sub_242F03B50();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v40 = v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF6A88, &qword_242F30760) + 36);
  *v40 = v30;
  *(v40 + 1) = v33;
  *(v40 + 2) = v35;
  *(v40 + 3) = v37;
  *(v40 + 4) = v39;
  v40[40] = 0;
  LOBYTE(v30) = sub_242F043D0();
  sub_242F03B50();
  v41 = v56;
  v42 = v8 + *(v55 + 36);
  *v42 = v30;
  *(v42 + 1) = v43;
  *(v42 + 2) = v44;
  *(v42 + 3) = v45;
  *(v42 + 4) = v46;
  v42[40] = 0;
  v47 = v59;
  sub_242DD1BA0(v59, v41, type metadata accessor for SymbolView);
  v48 = v58;
  sub_242CA321C(v8, v58, &qword_27ECF6A80, &qword_242F30720);
  v49 = v57;
  sub_242DD1BA0(v41, v57, type metadata accessor for SymbolView);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF6AB0, &qword_242F35C10);
  sub_242CA321C(v48, v49 + *(v50 + 48), &qword_27ECF6A80, &qword_242F30720);
  sub_242C6D138(v8, &qword_27ECF6A80, &qword_242F30720);
  sub_242DD1C70(v47, type metadata accessor for SymbolView);
  sub_242C6D138(v48, &qword_27ECF6A80, &qword_242F30720);
  return sub_242DD1C70(v41, type metadata accessor for SymbolView);
}

uint64_t sub_242DD0548@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = a1[3];
  v17[2] = a1[2];
  v17[3] = v8;
  v18 = *(a1 + 8);
  v9 = a1[1];
  v17[0] = *a1;
  v17[1] = v9;
  v10 = *(_s21FancyNotificationViewVMa(0) + 20);
  v11 = _s11FancyButtonVMa(0);
  sub_242DD1BA0(a2 + v10, a4 + *(v11 + 24), type metadata accessor for FancyNotificationConfiguration.FancyButtonConfiguration);
  KeyPath = swift_getKeyPath();
  v13 = *a1;
  *(a4 + 40) = a1[1];
  v14 = a1[3];
  *(a4 + 56) = a1[2];
  *(a4 + 72) = v14;
  *a4 = KeyPath;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *(a4 + 88) = *(a1 + 8);
  *(a4 + 24) = v13;
  *(a4 + *(v11 + 28)) = a3;
  return sub_242C7F9E8(v17, v16);
}

uint64_t sub_242DD062C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v30 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF6B80, &qword_242F30878);
  MEMORY[0x28223BE20](v3);
  v5 = (&v29 - v4);
  v6 = _s11FancyButtonVMa(0);
  v7 = v6 - 8;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF6B88, &qword_242F30880);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v29 - v12;
  sub_242DD1BA0(v2, &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), _s11FancyButtonVMa);
  v14 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v15 = swift_allocObject();
  sub_242DD1C08(&v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, _s11FancyButtonVMa);
  v31 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF6B90, &qword_242F30888);
  sub_242DD20B8();
  sub_242F048E0();
  v16 = *(v2 + *(v7 + 32) + 64);
  v17 = v5 + v3[12];
  v18 = *(sub_242F03E30() + 20);
  v19 = *MEMORY[0x277CE0118];
  v20 = sub_242F04070();
  (*(*(v20 - 8) + 104))(&v17[v18], v19, v20);
  *v17 = v16;
  *(v17 + 1) = v16;
  LOBYTE(v19) = *(v2 + 72);
  *v5 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0BA0, &qword_242F0D080);
  swift_storeEnumTagMultiPayload();
  v21 = v5 + v3[9];
  *v21 = swift_getKeyPath();
  v21[8] = 0;
  v22 = v5 + v3[10];
  *v22 = swift_getKeyPath();
  v22[8] = 0;
  v23 = v3[11];
  *(v5 + v23) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0BA8, &qword_242F30940);
  swift_storeEnumTagMultiPayload();
  *(v5 + v3[13]) = v19;
  *(v5 + v3[14]) = 0;
  *(v5 + v3[15]) = 0;
  sub_242C7E000(&qword_27ECF6BE0, &qword_27ECF6B88, &qword_242F30880, MEMORY[0x277CDF028]);
  sub_242C7E000(&qword_27ECF6BE8, &qword_27ECF6B80, &qword_242F30878, &protocol conformance descriptor for ElevatedButtonStyle<A>);
  v24 = v30;
  sub_242F045D0();
  sub_242C6D138(v5, &qword_27ECF6B80, &qword_242F30878);
  (*(v11 + 8))(v13, v10);
  LOBYTE(v11) = *(v2 + 74);
  KeyPath = swift_getKeyPath();
  v26 = swift_allocObject();
  *(v26 + 16) = v11;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF6BF0, &qword_242F30978);
  v28 = (v24 + *(result + 36));
  *v28 = KeyPath;
  v28[1] = sub_242DD2254;
  v28[2] = v26;
  return result;
}

uint64_t sub_242DD0AD4(uint64_t result)
{
  v1 = *(result + 80);
  if (v1)
  {
    v2 = *(result + 88);
    v3 = sub_242CA0064(*(result + 80), v2);
    v1(v3);

    return sub_242D0DC4C(v1, v2);
  }

  return result;
}

double sub_242DD0B34@<D0>(void (**a1)(uint64_t *__return_ptr, uint64_t, uint64_t, __n128)@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF6BB8, &qword_242F30898);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF6BA8, &qword_242F30890);
  MEMORY[0x28223BE20](v8);
  v10 = v21 - v9;
  *v7 = sub_242F04040();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF6BF8, &qword_242F30980);
  sub_242DD0E24(a1, &v7[*(v11 + 44)]);
  KeyPath = swift_getKeyPath();
  v13 = &v7[*(v5 + 44)];
  *v13 = KeyPath;
  v13[1] = 0x3FEB333333333333;
  _s11FancyButtonVMa(0);
  sub_242F04A70();
  sub_242F03E40();
  sub_242CF6B3C(v7, v10, &qword_27ECF6BB8, &qword_242F30898);
  v14 = &v10[*(v8 + 36)];
  v15 = v21[7];
  *(v14 + 4) = v21[6];
  *(v14 + 5) = v15;
  *(v14 + 6) = v21[8];
  v16 = v21[3];
  *v14 = v21[2];
  *(v14 + 1) = v16;
  v17 = v21[5];
  *(v14 + 2) = v21[4];
  *(v14 + 3) = v17;
  sub_242F04A70();
  sub_242F03C70();
  sub_242CF6B3C(v10, a2, &qword_27ECF6BA8, &qword_242F30890);
  v18 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF6B90, &qword_242F30888) + 36));
  v19 = v21[10];
  *v18 = v21[9];
  v18[1] = v19;
  result = *&v22;
  v18[2] = v22;
  return result;
}

uint64_t sub_242DD0E24@<X0>(void (**a1)(uint64_t *__return_ptr, uint64_t, uint64_t, __n128)@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF6C00, &qword_242F309B8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  *v9 = sub_242F04080();
  *(v9 + 1) = 0x4018000000000000;
  v9[16] = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF6C08, &qword_242F309C0);
  sub_242DD0F90(a1, &v9[*(v10 + 44)]);
  sub_242CA321C(v9, v6, &qword_27ECF6C00, &qword_242F309B8);
  *a2 = 0x4024000000000000;
  *(a2 + 8) = 0;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF6C10, &qword_242F309C8);
  sub_242CA321C(v6, a2 + *(v11 + 48), &qword_27ECF6C00, &qword_242F309B8);
  v12 = a2 + *(v11 + 64);
  *v12 = 0x4024000000000000;
  *(v12 + 8) = 0;
  sub_242C6D138(v9, &qword_27ECF6C00, &qword_242F309B8);
  return sub_242C6D138(v6, &qword_27ECF6C00, &qword_242F309B8);
}

uint64_t sub_242DD0F90@<X0>(void (**a1)(uint64_t *__return_ptr, uint64_t, uint64_t, __n128)@<X0>, uint64_t a2@<X8>)
{
  v76 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF6C18, &qword_242F309D0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v74 = &v68 - v5;
  v6 = type metadata accessor for NotificationSymbolConfiguration(0);
  MEMORY[0x28223BE20](v6 - 8);
  v71 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for SymbolView(0);
  MEMORY[0x28223BE20](v70);
  v73 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v68 - v10;
  MEMORY[0x28223BE20](v12);
  v72 = &v68 - v13;
  v14 = sub_242F04000();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF6C20, &qword_242F309D8);
  MEMORY[0x28223BE20](v18 - 8);
  v75 = &v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v68 - v21;
  v24 = *a1;
  v23 = a1[1];
  if (*(a1 + 16) == 1)
  {
    v77 = *a1;
    v78 = v23;

    v25 = a1[5];
    if (v25)
    {
LABEL_3:
      v26 = a1[4];

      goto LABEL_6;
    }
  }

  else
  {

    sub_242F05710();
    v68 = v14;
    v27 = sub_242F04360();
    v69 = v4;
    v28 = v22;
    v29 = v27;
    sub_242F03930();

    v22 = v28;
    v4 = v69;
    sub_242F03FF0();
    swift_getAtKeyPath();
    sub_242DD16BC(v24, v23, 0);
    (*(v15 + 8))(v17, v68);
    v24 = v77;
    v25 = a1[5];
    if (v25)
    {
      goto LABEL_3;
    }
  }

  v26 = 0;
LABEL_6:
  (v24)(&v79, v26, v25);

  v30 = v79;
  if (v79)
  {
    v31 = v80;
    v32 = a1 + *(_s11FancyButtonVMa(0) + 24);
    v33 = type metadata accessor for FancyNotificationConfiguration.FancyButtonConfiguration(0);
    v34 = v71;
    sub_242DD1BA0(&v32[*(v33 + 56)], v71, type metadata accessor for NotificationSymbolConfiguration);
    if (a1[5])
    {
      v35 = a1[6];
    }

    else
    {
      v35 = 0;
    }

    *v11 = swift_getKeyPath();
    *(v11 + 1) = 0;
    v11[16] = 0;
    *(v11 + 3) = v30;
    v11[32] = v31;
    v37 = v70;
    sub_242DD1C08(v34, &v11[*(v70 + 24)], type metadata accessor for NotificationSymbolConfiguration);
    *&v11[*(v37 + 28)] = v35;
    v38 = v72;
    sub_242DD1C08(v11, v72, type metadata accessor for SymbolView);
    v39 = v73;
    sub_242DD1BA0(v38, v73, type metadata accessor for SymbolView);
    v40 = v74;
    *v74 = 0x4028000000000000;
    v40[8] = 0;
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF6C30, &qword_242F30A18);
    sub_242DD1BA0(v39, &v40[*(v41 + 48)], type metadata accessor for SymbolView);
    sub_242DD1C70(v38, type metadata accessor for SymbolView);
    sub_242DD1C70(v39, type metadata accessor for SymbolView);
    sub_242CF6B3C(v40, v22, &qword_27ECF6C18, &qword_242F309D0);
    v36 = 0;
  }

  else
  {
    v36 = 1;
  }

  v42 = (*(v4 + 56))(v22, v36, 1, v3);
  v43 = a1[8];
  v77 = a1[7];
  v78 = v43;
  sub_242C6CB78(v42, v44, v45);

  v46 = sub_242F04550();
  v74 = v22;
  v48 = v47;
  v50 = v49;
  _s11FancyButtonVMa(0);

  v51 = sub_242F04540();
  v53 = v52;
  LODWORD(v73) = v54;
  v56 = v55;

  sub_242DD225C(v46, v48, v50 & 1);

  KeyPath = swift_getKeyPath();
  v58 = a1[5] == 0;
  LODWORD(v72) = v58;
  if (v58)
  {
    v59 = 0;
  }

  else
  {
    v59 = 0x4028000000000000;
  }

  v61 = v74;
  v60 = v75;
  sub_242CA321C(v74, v75, &qword_27ECF6C20, &qword_242F309D8);
  v62 = v76;
  sub_242CA321C(v60, v76, &qword_27ECF6C20, &qword_242F309D8);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF6C28, &qword_242F30A10);
  v64 = v62 + *(v63 + 48);
  *v64 = v51;
  *(v64 + 8) = v53;
  v65 = v73 & 1;
  *(v64 + 16) = v73 & 1;
  *(v64 + 24) = v56;
  *(v64 + 32) = KeyPath;
  *(v64 + 40) = 1;
  v66 = v62 + *(v63 + 64);
  *v66 = v59;
  *(v66 + 8) = 0;
  *(v66 + 9) = v72;
  sub_242DD226C(v51, v53, v65);

  sub_242C6D138(v61, &qword_27ECF6C20, &qword_242F309D8);
  sub_242DD225C(v51, v53, v65);

  return sub_242C6D138(v60, &qword_27ECF6C20, &qword_242F309D8);
}

unint64_t sub_242DD16C8()
{
  result = qword_27ECF6988;
  if (!qword_27ECF6988)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF6980, &qword_242F30658);
    sub_242C7E000(&qword_27ECF6990, &qword_27ECF6998, &qword_242F30660, MEMORY[0x277CE1198]);
    sub_242DD1780();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF6988);
  }

  return result;
}

unint64_t sub_242DD1780()
{
  result = qword_27ECF69A0;
  if (!qword_27ECF69A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF69A8, &qword_242F30668);
    sub_242C7E000(&qword_27ECF69B0, &qword_27ECF69B8, &qword_242F30670, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF69A0);
  }

  return result;
}

unint64_t sub_242DD1838()
{
  result = qword_27ECF69C0;
  if (!qword_27ECF69C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF6970, &qword_242F30648);
    sub_242DD18C4();
    sub_242DD197C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF69C0);
  }

  return result;
}

unint64_t sub_242DD18C4()
{
  result = qword_27ECF69C8;
  if (!qword_27ECF69C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF69D0, &qword_242F30678);
    sub_242C7E000(&qword_27ECF69D8, &qword_27ECF69E0, &qword_242F30680, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF69C8);
  }

  return result;
}

unint64_t sub_242DD197C()
{
  result = qword_27ECF69E8;
  if (!qword_27ECF69E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF69F0, &qword_242F30688);
    sub_242C7E000(&qword_27ECF69F8, &qword_27ECF6A00, &qword_242F30690, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF69E8);
  }

  return result;
}

uint64_t sub_242DD1A34@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(_s21FancyNotificationViewVMa(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));
  v7 = *(v6 + *(v5 + 64));

  return sub_242DD0548(a1, v6, v7, a2);
}

unint64_t sub_242DD1AF4()
{
  result = qword_27ECF6A68;
  if (!qword_27ECF6A68)
  {
    _s11FancyButtonVMa(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF6A68);
  }

  return result;
}

unint64_t sub_242DD1B4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF6A70;
  if (!qword_27ECF6A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF6A70);
  }

  return result;
}

uint64_t sub_242DD1BA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_242DD1C08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_242DD1C70(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_242DD1CF8(uint64_t a1)
{
  sub_242DCD3D8();
  if (v1 <= 0x3F)
  {
    type metadata accessor for FancyNotificationConfiguration.FancyButtonConfiguration(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_242DD1D8C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
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

unint64_t sub_242DD1E10()
{
  result = qword_27ECF6B50;
  if (!qword_27ECF6B50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF6950, &qword_242F305D8);
    v3 = sub_242DD1E9C();
    sub_242DD1FE0(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF6B50);
  }

  return result;
}

unint64_t sub_242DD1E9C()
{
  result = qword_27ECF6B58;
  if (!qword_27ECF6B58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF6958, &qword_242F305E0);
    sub_242DD1F54();
    sub_242C7E000(&qword_27ECF6B70, &qword_27ECF6960, &qword_242F30638, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF6B58);
  }

  return result;
}

unint64_t sub_242DD1F54()
{
  result = qword_27ECF6B60;
  if (!qword_27ECF6B60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF6B68, &qword_242F30820);
    sub_242DD16C8();
    sub_242DD1838();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF6B60);
  }

  return result;
}

unint64_t sub_242DD1FE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF6B78;
  if (!qword_27ECF6B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF6B78);
  }

  return result;
}

uint64_t sub_242DD2050()
{
  v1 = *(_s11FancyButtonVMa(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_242DD0AD4(v2);
}

unint64_t sub_242DD20B8()
{
  result = qword_27ECF6B98;
  if (!qword_27ECF6B98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF6B90, &qword_242F30888);
    sub_242DD1D8C(&qword_27ECF6BA0, &qword_27ECF6BA8, &qword_242F30890, sub_242DD2170);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF6B98);
  }

  return result;
}

unint64_t sub_242DD2170()
{
  result = qword_27ECF6BB0;
  if (!qword_27ECF6BB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF6BB8, &qword_242F30898);
    sub_242C7E000(&qword_27ECF6BC0, &qword_27ECF6BC8, &unk_242F308A0, MEMORY[0x277CE1138]);
    sub_242C7E000(&qword_27ECF6BD0, &qword_27ECF6BD8, &qword_242F35C90, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF6BB0);
  }

  return result;
}

double sub_242DD225C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }

  return result;
}

double sub_242DD226C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }

  return result;
}

unint64_t sub_242DD227C()
{
  result = qword_27ECF6C58;
  if (!qword_27ECF6C58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF6BF0, &qword_242F30978);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF6B88, &qword_242F30880);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF6B80, &qword_242F30878);
    sub_242C7E000(&qword_27ECF6BE0, &qword_27ECF6B88, &qword_242F30880, MEMORY[0x277CDF028]);
    sub_242C7E000(&qword_27ECF6BE8, &qword_27ECF6B80, &qword_242F30878, &protocol conformance descriptor for ElevatedButtonStyle<A>);
    swift_getOpaqueTypeConformance2();
    sub_242C7E000(&qword_27ECF6C60, &qword_27ECF6C68, &qword_242F30A40, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF6C58);
  }

  return result;
}

uint64_t Component.updatingWithTemplate(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for Slot(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF23E8, &unk_242F13C40);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v54 - v11;
  v13 = type metadata accessor for Component(0);
  v14 = *(a1 + v13[9]);
  v64 = v3;
  v15 = sub_242CE872C(sub_242DD4DB4, v63, v14);
  v62 = v12;
  sub_242CA321C(v3, v12, &qword_27ECF23E8, &unk_242F13C40);
  v16 = *(a1 + v13[5]);
  v17 = (a1 + v13[6]);
  v19 = *v17;
  v18 = v17[1];
  v20 = (a1 + v13[7]);
  v21 = *v20;
  v22 = v20[1];
  v59 = *(a1 + v13[8]);
  v60 = v16;
  v23 = *(v15 + 16);
  v54 = v7;
  v61 = v18;
  if (v23)
  {
    v55 = v19;
    v57 = a2;
    v66 = MEMORY[0x277D84F90];

    sub_242E3BC70(0, v23, 0);
    v24 = v66;
    v25 = *(v7 + 80);
    v56 = v15;
    v26 = v15 + ((v25 + 32) & ~v25);
    v27 = *(v7 + 72);
    v58 = v23;
    v28 = v23;
    do
    {
      sub_242DD6310(v26, v9, type metadata accessor for Slot);
      v30 = *(v9 + 15);
      v29 = *(v9 + 16);

      sub_242DD64D4(v9, type metadata accessor for Slot);
      v66 = v24;
      v32 = *(v24 + 16);
      v31 = *(v24 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_242E3BC70((v31 > 1), v32 + 1, 1);
        v24 = v66;
      }

      *(v24 + 16) = v32 + 1;
      v33 = v24 + 16 * v32;
      *(v33 + 32) = v30;
      *(v33 + 40) = v29;
      v26 += v27;
      --v28;
    }

    while (v28);
    a2 = v57;
    v23 = v58;
    v19 = v55;
    v15 = v56;
  }

  else
  {

    v24 = MEMORY[0x277D84F90];
  }

  v35 = sub_242C86440(v34);

  v36 = *(v35 + 16);

  v37 = *(v24 + 16);

  if (v36 == v37)
  {
    result = sub_242CF6B3C(v62, a2, &qword_27ECF23E8, &unk_242F13C40);
    *(a2 + v13[5]) = v60;
    v39 = (a2 + v13[6]);
    v40 = v61;
    *v39 = v19;
    v39[1] = v40;
    v41 = (a2 + v13[7]);
    *v41 = v21;
    v41[1] = v22;
    *(a2 + v13[9]) = v15;
    *(a2 + v13[8]) = v59;
  }

  else
  {
    v66 = 0;
    v67 = 0xE000000000000000;
    sub_242F05A80();

    v66 = 0xD000000000000023;
    v67 = 0x8000000242F59E80;
    v42 = MEMORY[0x277D84F90];
    if (v23)
    {
      v43 = v23;
      v65 = MEMORY[0x277D84F90];
      sub_242E3BC70(0, v23, 0);
      v42 = v65;
      v44 = v15 + ((*(v54 + 80) + 32) & ~*(v54 + 80));
      v45 = *(v54 + 72);
      do
      {
        sub_242DD6310(v44, v9, type metadata accessor for Slot);
        v47 = *(v9 + 15);
        v48 = *(v9 + 16);

        sub_242DD64D4(v9, type metadata accessor for Slot);
        v65 = v42;
        v50 = *(v42 + 16);
        v49 = *(v42 + 24);
        if (v50 >= v49 >> 1)
        {
          sub_242E3BC70((v49 > 1), v50 + 1, 1);
          v42 = v65;
        }

        *(v42 + 16) = v50 + 1;
        v46 = v42 + 16 * v50;
        *(v46 + 32) = v47;
        *(v46 + 40) = v48;
        v44 += v45;
        --v43;
      }

      while (v43);
    }

    v51 = MEMORY[0x245D26920](v42, MEMORY[0x277D837D0]);
    v53 = v52;

    MEMORY[0x245D26660](v51, v53);

    result = sub_242F05C60();
    __break(1u);
  }

  return result;
}

uint64_t Component.size.setter(double a1, double a2)
{
  result = type metadata accessor for Component(0);
  v6 = (v2 + *(result + 28));
  v7 = *v6;
  v8 = v6[1];
  *v6 = a1;
  v6[1] = a2;
  if (v7 != a1 || v8 != a2)
  {
    v10 = a1 / v7;
    v11 = a2 / v8;

    return sub_242DD3D14(v10, v11);
  }

  return result;
}

uint64_t Component.scaledBy(_:)@<X0>(uint64_t a1@<X8>, __n128 a2@<Q0>)
{
  v3 = v2;
  v110 = a2;
  v93 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0B08, &unk_242F17EB0);
  MEMORY[0x28223BE20](v4 - 8);
  v107 = &v86 - v5;
  v97 = type metadata accessor for Slot(0);
  v6 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v109 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v86 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF23E8, &unk_242F13C40);
  MEMORY[0x28223BE20](v11 - 8);
  v92 = &v86 - v12;
  sub_242CA321C(v2, &v86 - v12, &qword_27ECF23E8, &unk_242F13C40);
  v13 = type metadata accessor for Component(0);
  v14 = v13[6];
  v89 = *(v2 + v13[5]);
  v15 = *(v2 + v14 + 8);
  v91 = *(v2 + v14);
  v88 = *(v2 + v13[7]);
  v16 = *(v2 + v13[9]);
  v17 = *(v16 + 16);
  v87 = v6;
  v94 = v13;
  v90 = v15;
  if (v17)
  {
    v86 = v2;
    v114 = MEMORY[0x277D84F90];

    sub_242E3BEB0(0, v17, 0);
    v18 = v114;
    v96 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v19 = v16 + v96;
    v95 = *(v6 + 72);
    do
    {
      v108 = v18;
      v106 = v17;
      v104 = v19;
      v20 = v109;
      sub_242DD6310(v19, v109, type metadata accessor for Slot);
      v21 = *(v20 + 128);
      v105 = *(v20 + 120);
      v112.f64[0] = v21;
      v23 = *v20;
      v22 = *(v20 + 8);
      v24 = *(v20 + 16);
      v25 = *(v20 + 24);
      v27 = *(v20 + 32);
      v26 = *(v20 + 40);
      v28 = *(v20 + 48);
      v29 = *(v20 + 56);
      v30 = *(v20 + 64);
      v31 = *(v20 + 72);
      CGAffineTransformMakeScale(&v113, v110.n128_f64[0], v110.n128_f64[0]);
      v115.origin.x = v28;
      v115.origin.y = v29;
      v115.size.width = v30;
      v115.size.height = v31;
      v116 = CGRectApplyAffineTransform(v115, &v113);
      x = v116.origin.x;
      y = v116.origin.y;
      width = v116.size.width;
      height = v116.size.height;
      v103 = *(v20 + 112);
      v36 = v97;
      v37 = *(v97 + 36);
      v116.origin = *(v20 + 96);
      v102 = vmulq_n_f64(*(v20 + 80), v110.n128_f64[0]);
      v101 = vmulq_n_f64(v116.origin, v110.n128_f64[0]);
      sub_242CA321C(v20 + v37, v107, &qword_27ECF0B08, &unk_242F17EB0);
      v39 = v36[9];
      v38 = v36[10];
      v99 = v39;
      v40 = (v20 + v38);
      v42 = *v40;
      v41 = v40[1];
      v100 = v42;
      v111 = v41;
      v43 = type metadata accessor for Instrument(0);
      (*(*(v43 - 8) + 56))(&v10[v39], 1, 1, v43);
      v44 = v36[11];
      v98 = &v10[v36[10]];
      v45 = &v10[v44];

      sub_242CF428C(v23, v22, v24, v25, v27, v26);

      sub_242F03710();
      sub_242DD64D4(v20, type metadata accessor for Slot);
      *&v45[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2140, &qword_242F13A90) + 52)] = 7;
      *&v10[v36[12]] = 0;
      v46 = v112.f64[0];
      *v10 = v23;
      *(v10 + 1) = v22;
      *(v10 + 2) = v24;
      *(v10 + 3) = v25;
      *(v10 + 4) = v27;
      *(v10 + 5) = v26;
      *(v10 + 6) = x;
      *(v10 + 7) = y;
      *(v10 + 8) = width;
      *(v10 + 9) = height;
      v47 = v101;
      *(v10 + 5) = v102;
      *(v10 + 6) = v47;
      *(v10 + 15) = v105;
      *(v10 + 16) = v46;
      *(v10 + 14) = v103;
      sub_242D8E414(v107, &v10[v99], &qword_27ECF0B08, &unk_242F17EB0);
      v48 = v98;
      v49 = v111;
      *v98 = v100;
      *(v48 + 1) = v49;
      v18 = v108;
      v114 = v108;
      v51 = *(v108 + 16);
      v50 = *(v108 + 24);
      if (v51 >= v50 >> 1)
      {
        sub_242E3BEB0((v50 > 1), v51 + 1, 1);
        v18 = v114;
      }

      *(v18 + 16) = v51 + 1;
      v52 = v95;
      sub_242DD665C(v10, v18 + v96 + v51 * v95, type metadata accessor for Slot);
      v19 = v104 + v52;
      v17 = v106 - 1;
    }

    while (v106 != 1);
    v6 = v87;
    v13 = v94;
    v3 = v86;
  }

  else
  {

    v18 = MEMORY[0x277D84F90];
  }

  v53 = *(v3 + v13[8]);
  v54 = *(v18 + 16);
  a = MEMORY[0x277D84F90];
  if (v54)
  {
    LODWORD(v112.f64[0]) = *(v3 + v13[8]);
    *&v113.a = MEMORY[0x277D84F90];
    sub_242E3BC70(0, v54, 0);
    a = v113.a;
    v56 = *(v6 + 80);
    v108 = v18;
    v57 = v18 + ((v56 + 32) & ~v56);
    v58 = *(v6 + 72);
    v59 = v54;
    do
    {
      v60 = v109;
      sub_242DD6310(v57, v109, type metadata accessor for Slot);
      v62 = *(v60 + 120);
      v61 = *(v60 + 128);

      sub_242DD64D4(v60, type metadata accessor for Slot);
      v113.a = a;
      v64 = *(*&a + 16);
      v63 = *(*&a + 24);
      if (v64 >= v63 >> 1)
      {
        sub_242E3BC70((v63 > 1), v64 + 1, 1);
        a = v113.a;
      }

      *(*&a + 16) = v64 + 1;
      v65 = *&a + 16 * v64;
      *(v65 + 32) = v62;
      *(v65 + 40) = v61;
      v57 += v58;
      --v59;
    }

    while (v59);
    v13 = v94;
    v18 = v108;
    v53 = LOBYTE(v112.f64[0]);
  }

  v67 = sub_242C86440(v66);

  v68 = *(v67 + 16);

  v69 = *(*&a + 16);

  if (v68 == v69)
  {
    v112 = vmulq_n_f64(v88, v110.n128_f64[0]);
    v70 = v93;
    result = sub_242CF6B3C(v92, v93, &qword_27ECF23E8, &unk_242F13C40);
    *(v70 + v13[5]) = v89;
    v72 = (v70 + v13[6]);
    v73 = v90;
    *v72 = v91;
    v72[1] = v73;
    *(v70 + v13[7]) = v112;
    *(v70 + v13[9]) = v18;
    *(v70 + v13[8]) = v53;
  }

  else
  {
    v113.a = 0.0;
    v113.b = -2.68156159e154;
    sub_242F05A80();

    v113.a = -2.31584178e77;
    *&v113.b = 0x8000000242F59E80;
    v74 = MEMORY[0x277D84F90];
    if (v54)
    {
      v114 = MEMORY[0x277D84F90];
      sub_242E3BC70(0, v54, 0);
      v74 = v114;
      v75 = v18 + ((*(v87 + 80) + 32) & ~*(v87 + 80));
      v76 = *(v87 + 72);
      do
      {
        v78 = v109;
        sub_242DD6310(v75, v109, type metadata accessor for Slot);
        v80 = *(v78 + 120);
        v79 = *(v78 + 128);

        sub_242DD64D4(v78, type metadata accessor for Slot);
        v114 = v74;
        v82 = *(v74 + 16);
        v81 = *(v74 + 24);
        if (v82 >= v81 >> 1)
        {
          sub_242E3BC70((v81 > 1), v82 + 1, 1);
          v74 = v114;
        }

        *(v74 + 16) = v82 + 1;
        v77 = v74 + 16 * v82;
        *(v77 + 32) = v80;
        *(v77 + 40) = v79;
        v75 += v76;
        --v54;
      }

      while (v54);
    }

    v83 = MEMORY[0x245D26920](v74, MEMORY[0x277D837D0]);
    v85 = v84;

    MEMORY[0x245D26660](v83, v85);

    result = sub_242F05C60();
    __break(1u);
  }

  return result;
}

uint64_t Component.stableIdentifier.getter@<X0>(unint64_t *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0B08, &unk_242F17EB0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13[-v4];
  result = type metadata accessor for Component(0);
  v7 = *(v1 + *(result + 36));
  if (*(v7 + 16))
  {
    v8 = type metadata accessor for Slot(0);
    sub_242CA321C(v7 + *(v8 + 36) + ((*(*(v8 - 8) + 80) + 32) & ~*(*(v8 - 8) + 80)), v5, &qword_27ECF0B08, &unk_242F17EB0);
    v9 = type metadata accessor for Instrument(0);
    if ((*(*(v9 - 8) + 48))(v5, 1, v9) == 1)
    {
      result = sub_242C6D138(v5, &qword_27ECF0B08, &unk_242F17EB0);
      v10 = 0xEB00000000746567;
      v11 = 0x6469577974706D45;
    }

    else
    {
      memcpy(v14, &v5[*(v9 + 20)], sizeof(v14));
      sub_242CF6BA4(v14, v13);
      sub_242DD64D4(v5, type metadata accessor for Instrument);
      memcpy(v13, v14, sizeof(v13));
      v11 = Instrument.Kind.name.getter();
      v10 = v12;
      result = sub_242CF6C60(v14);
    }

    *a1 = v11;
    a1[1] = v10;
  }

  else
  {
    *a1 = 0;
    a1[1] = 0;
  }

  return result;
}

int *Component.init(id:type:name:size:slots:trackable:)@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X8>, double a8@<D0>, double a9@<D1>)
{
  v58 = a1;
  v17 = type metadata accessor for Slot(0);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = *a2;
  v21 = *(a5 + 16);
  v22 = MEMORY[0x277D84F90];
  v51 = v18;
  v52 = v21;
  if (v21)
  {
    v53 = a3;
    v54 = a4;
    v55 = a6;
    v60 = MEMORY[0x277D84F90];
    sub_242E3BC70(0, v21, 0);
    v22 = v60;
    v23 = *(v18 + 80);
    v56 = a5;
    v24 = a5 + ((v23 + 32) & ~v23);
    v25 = *(v18 + 72);
    do
    {
      sub_242DD6310(v24, v20, type metadata accessor for Slot);
      v26 = *(v20 + 15);
      v27 = *(v20 + 16);

      sub_242DD64D4(v20, type metadata accessor for Slot);
      v60 = v22;
      v29 = *(v22 + 16);
      v28 = *(v22 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_242E3BC70((v28 > 1), v29 + 1, 1);
        v22 = v60;
      }

      *(v22 + 16) = v29 + 1;
      v30 = v22 + 16 * v29;
      *(v30 + 32) = v26;
      *(v30 + 40) = v27;
      v24 += v25;
      --v21;
    }

    while (v21);
    a5 = v56;
    LOBYTE(a6) = v55;
    a3 = v53;
    a4 = v54;
  }

  v32 = sub_242C86440(v31);

  v33 = *(v32 + 16);

  v34 = *(v22 + 16);

  if (v33 == v34)
  {
    sub_242CF6B3C(v58, a7, &qword_27ECF23E8, &unk_242F13C40);
    result = type metadata accessor for Component(0);
    *(a7 + result[5]) = v57;
    v36 = (a7 + result[6]);
    *v36 = a3;
    v36[1] = a4;
    v37 = (a7 + result[7]);
    *v37 = a8;
    v37[1] = a9;
    *(a7 + result[9]) = a5;
    *(a7 + result[8]) = a6;
  }

  else
  {
    v60 = 0;
    v61 = 0xE000000000000000;
    sub_242F05A80();

    v60 = 0xD000000000000023;
    v61 = 0x8000000242F59E80;
    v38 = MEMORY[0x277D84F90];
    if (v52)
    {
      v59 = MEMORY[0x277D84F90];
      v39 = v52;
      sub_242E3BC70(0, v52, 0);
      v38 = v59;
      v40 = a5 + ((*(v51 + 80) + 32) & ~*(v51 + 80));
      v41 = *(v51 + 72);
      do
      {
        sub_242DD6310(v40, v20, type metadata accessor for Slot);
        v43 = *(v20 + 15);
        v44 = *(v20 + 16);

        sub_242DD64D4(v20, type metadata accessor for Slot);
        v59 = v38;
        v46 = *(v38 + 16);
        v45 = *(v38 + 24);
        if (v46 >= v45 >> 1)
        {
          sub_242E3BC70((v45 > 1), v46 + 1, 1);
          v38 = v59;
        }

        *(v38 + 16) = v46 + 1;
        v42 = v38 + 16 * v46;
        *(v42 + 32) = v43;
        *(v42 + 40) = v44;
        v40 += v41;
        --v39;
      }

      while (v39);
    }

    v47 = MEMORY[0x245D26920](v38, MEMORY[0x277D837D0]);
    v49 = v48;

    MEMORY[0x245D26660](v47, v49);

    result = sub_242F05C60();
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for Component(uint64_t a1)
{
  result = qword_27ECF6CB8;
  if (!qword_27ECF6CB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

CarPlayAssetUI::ComponentType_optional __swiftcall ComponentType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_242F05CD0();

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

uint64_t ComponentType.rawValue.getter()
{
  if (*v0)
  {
    return 0x79616C7265766FLL;
  }

  else
  {
    return 0x7972616D697270;
  }
}

uint64_t sub_242DD38D4(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x79616C7265766FLL;
  }

  else
  {
    v2 = 0x7972616D697270;
  }

  if (*a2)
  {
    v3 = 0x79616C7265766FLL;
  }

  else
  {
    v3 = 0x7972616D697270;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_242F06110();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_242DD395C()
{
  sub_242F06390();
  sub_242F04DD0();

  return sub_242F063E0();
}

double sub_242DD39D4(uint64_t a1)
{
  sub_242F04DD0();

  return result;
}

uint64_t sub_242DD3A30(uint64_t a1)
{
  sub_242F06390();
  sub_242F04DD0();

  return sub_242F063E0();
}

void sub_242DD3AA4(char *a2@<X8>)
{
  v3 = sub_242F05CD0();

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_242DD3B04(uint64_t *a1@<X8>)
{
  v2 = 0x7972616D697270;
  if (*v1)
  {
    v2 = 0x79616C7265766FLL;
  }

  *a1 = v2;
  a1[1] = 0xE700000000000000;
}

uint64_t Component.type.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for Component(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t Component.name.getter()
{
  v1 = *(v0 + *(type metadata accessor for Component(0) + 24));

  return v1;
}

uint64_t sub_242DD3CB8(double *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  result = type metadata accessor for Component(0);
  v6 = (a2 + *(result + 28));
  v7 = *v6;
  v8 = v6[1];
  *v6 = v3;
  v6[1] = v4;
  if (v3 != v7 || v4 != v8)
  {
    return sub_242DD3D14(v3 / v7, v4 / v8);
  }

  return result;
}

uint64_t sub_242DD3D14(CGFloat a1, CGFloat a2)
{
  v3 = v2;
  v58 = a2;
  v68 = a1;
  v4 = type metadata accessor for Slot(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v56 - v9);
  v11 = *(type metadata accessor for Component(0) + 36);
  v12 = *(v2 + v11);
  v13 = *(v12 + 16);
  if (v13)
  {
    v57 = v11;
    v72 = MEMORY[0x277D84F90];
    sub_242E3BEB0(0, v13, 0);
    v14 = v72;
    v15 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v56 = v12;
    v16 = v12 + v15;
    v17 = *(v5 + 72);
    do
    {
      sub_242DD6310(v16, v7, type metadata accessor for Slot);
      sub_242DD6310(v7, v10, type metadata accessor for Slot);
      v18 = v10[6];
      v19 = v10[7];
      v20 = v10[8];
      v21 = v10[9];
      v22 = v58;
      CGAffineTransformMakeScale(&v71, v68, v58);
      v73.origin.x = v18;
      v73.origin.y = v19;
      v73.size.width = v20;
      v73.size.height = v21;
      v74 = CGRectApplyAffineTransform(v73, &v71);
      width = v74.size.width;
      x = v74.origin.x;
      height = v74.size.height;
      y = v74.origin.y;
      v24 = v10[10];
      v23 = v10[11];
      v25 = v10[13];
      v63 = v10[12];
      v74.origin.x = v18;
      v74.origin.y = v19;
      v74.size.width = v20;
      v74.size.height = v21;
      v65 = v23 + CGRectGetMinX(v74);
      v75.origin.x = v18;
      v75.origin.y = v19;
      v75.size.width = v20;
      v75.size.height = v21;
      v64 = v24 + CGRectGetMinY(v75);
      v76.origin.x = v18;
      v76.origin.y = v19;
      v76.size.width = v20;
      v76.size.height = v21;
      v26 = CGRectGetWidth(v76) - v25 - v23;
      v77.origin.x = v18;
      v77.origin.y = v19;
      v77.size.width = v20;
      v77.size.height = v21;
      v27 = CGRectGetHeight(v77) - v63 - v24;
      CGAffineTransformMakeScale(&v71, v68, v22);
      v78.origin.x = v65;
      v78.origin.y = v64;
      v78.size.width = v26;
      v78.size.height = v27;
      v79 = CGRectApplyAffineTransform(v78, &v71);
      v59 = v79.size.width;
      v28 = v79.origin.x;
      v61 = v79.origin.x;
      v29 = v79.origin.y;
      v60 = v79.origin.y;
      v30 = v79.size.height;
      v62 = v79.size.height;
      MinY = CGRectGetMinY(v79);
      v32 = width;
      v33 = x;
      v80.origin.x = x;
      v35 = height;
      v34 = y;
      v80.origin.y = y;
      v80.size.width = width;
      v80.size.height = height;
      v65 = MinY - CGRectGetMinY(v80);
      v81.origin.x = v28;
      v81.origin.y = v29;
      v36 = v59;
      v81.size.width = v59;
      v81.size.height = v30;
      MinX = CGRectGetMinX(v81);
      v82.origin.x = v33;
      v82.origin.y = v34;
      v82.size.width = v32;
      v82.size.height = v35;
      v38 = v35;
      v64 = MinX - CGRectGetMinX(v82);
      v83.origin.x = v33;
      v39 = v33;
      v83.origin.y = v34;
      v40 = v32;
      v83.size.width = v32;
      v41 = v38;
      v83.size.height = v38;
      MaxY = CGRectGetMaxY(v83);
      v43 = v61;
      v84.origin.x = v61;
      v44 = v60;
      v84.origin.y = v60;
      v84.size.width = v36;
      v45 = v62;
      v84.size.height = v62;
      v63 = MaxY - CGRectGetMaxY(v84);
      v85.origin.x = v39;
      v46 = y;
      v85.origin.y = y;
      v85.size.width = v40;
      v85.size.height = v41;
      MaxX = CGRectGetMaxX(v85);
      v86.origin.x = v43;
      v86.origin.y = v44;
      v86.size.width = v36;
      v86.size.height = v45;
      v48 = CGRectGetMaxX(v86);
      sub_242DD64D4(v7, type metadata accessor for Slot);
      v10[6] = v39;
      v10[7] = v46;
      v49 = height;
      v10[8] = v40;
      v10[9] = v49;
      v50 = v64;
      v10[10] = v65;
      v10[11] = v50;
      v10[12] = v63;
      v10[13] = MaxX - v48;
      v72 = v14;
      v52 = *(v14 + 16);
      v51 = *(v14 + 24);
      if (v52 >= v51 >> 1)
      {
        sub_242E3BEB0((v51 > 1), v52 + 1, 1);
        v14 = v72;
      }

      *(v14 + 16) = v52 + 1;
      sub_242DD665C(v10, v14 + v15 + v52 * v17, type metadata accessor for Slot);
      v16 += v17;
      --v13;
    }

    while (v13);

    v11 = v57;
  }

  else
  {

    v14 = MEMORY[0x277D84F90];
  }

  *(v3 + v11) = v14;

  v54 = sub_242DA5BDC(v53, v3);
  result = swift_bridgeObjectRelease_n();
  *(v3 + v11) = v54;
  return result;
}

void (*Component.size.modify(uint64_t *a1))(double **a1)
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
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Component(0) + 28);
  *(v4 + 40) = v5;
  v6 = (v1 + v5);
  v7 = *v6;
  *(v4 + 24) = *v6;
  v8 = v6[1];
  *(v4 + 32) = v8;
  *v4 = v7;
  *(v4 + 8) = v8;
  return sub_242DD42A0;
}

void sub_242DD42A0(double **a1)
{
  v1 = *a1;
  v3 = (*a1)[3];
  v2 = (*a1)[4];
  v4 = (*(*a1 + 2) + *(*a1 + 10));
  v5 = **a1;
  v6 = (*a1)[1];
  *v4 = v5;
  v4[1] = v6;
  if (v5 != v3 || v6 != v2)
  {
    sub_242DD3D14(v5 / v1[3], v6 / v1[4]);
  }

  free(v1);
}

double Component.slots.getter()
{
  type metadata accessor for Component(0);

  return result;
}

void Component.slots.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Component(0) + 36);

  *(v1 + v3) = a1;
}

uint64_t sub_242DD43EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v74 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2170, &qword_242F13A98);
  MEMORY[0x28223BE20](v5 - 8);
  v62 = &v61 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0B08, &unk_242F17EB0);
  MEMORY[0x28223BE20](v7 - 8);
  v63 = &v61 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF4CF8, &qword_242F27C48);
  MEMORY[0x28223BE20](v9 - 8);
  v68 = &v61 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2168, &unk_242F17EA0);
  v65 = *(v11 - 8);
  v66 = v11;
  MEMORY[0x28223BE20](v11);
  v67 = &v61 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2140, &qword_242F13A90);
  MEMORY[0x28223BE20](v13 - 8);
  v69 = &v61 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF56F8, &qword_242F2E010);
  MEMORY[0x28223BE20](v15 - 8);
  v72 = &v61 - v16;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2138, &qword_242F2DFB0);
  v17 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v71 = &v61 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2F70, &qword_242F17928);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v61 - v23;
  MEMORY[0x28223BE20](v25);
  v73 = (&v61 - v26);
  v27 = type metadata accessor for Slot(0);
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v30 = &v61 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v33 = &v61 - v32;
  sub_242DD6310(a1, &v61 - v32, type metadata accessor for Slot);
  v34 = *(a2 + *(type metadata accessor for Component(0) + 36));
  v35 = *(v34 + 16);
  if (v35)
  {
    v64 = v21;
    v36 = v34 + ((*(v28 + 80) + 32) & ~*(v28 + 80));
    v37 = *(v28 + 72);
    while (1)
    {
      sub_242DD6310(v36, v30, type metadata accessor for Slot);
      v38 = *(v30 + 15) == *(v33 + 15) && *(v30 + 16) == *(v33 + 16);
      if (v38 || (sub_242F06110() & 1) != 0)
      {
        break;
      }

      sub_242DD64D4(v30, type metadata accessor for Slot);
      v36 += v37;
      if (!--v35)
      {
        v39 = 1;
        v40 = v73;
        goto LABEL_11;
      }
    }

    v40 = v73;
    sub_242DD665C(v30, v73, type metadata accessor for Slot);
    v39 = 0;
LABEL_11:
    v21 = v64;
  }

  else
  {
    v39 = 1;
    v40 = v73;
  }

  (*(v28 + 56))(v40, v39, 1, v27);
  sub_242CA321C(v40, v24, &qword_27ECF2F70, &qword_242F17928);
  v73 = *(v28 + 48);
  if ((v73)(v24, 1, v27) == 1)
  {
    sub_242C6D138(v24, &qword_27ECF2F70, &qword_242F17928);
    v41 = v72;
    v42 = v70;
    (*(v17 + 56))(v72, 1, 1, v70);
    v43 = v71;
    sub_242F03710();
    if ((*(v17 + 48))(v41, 1, v42) != 1)
    {
      sub_242C6D138(v41, &qword_27ECF56F8, &qword_242F2E010);
    }
  }

  else
  {
    v44 = v69;
    sub_242CA321C(&v24[*(v27 + 44)], v69, &qword_27ECF2140, &qword_242F13A90);
    v45 = v44;
    v46 = v72;
    sub_242CF6B3C(v45, v72, &qword_27ECF2138, &qword_242F2DFB0);
    sub_242DD64D4(v24, type metadata accessor for Slot);
    (*(v17 + 56))(v46, 0, 1, v70);
    v43 = v71;
    sub_242CF6B3C(v46, v71, &qword_27ECF2138, &qword_242F2DFB0);
  }

  sub_242D8E414(v43, &v33[*(v27 + 44)], &qword_27ECF2138, &qword_242F2DFB0);
  v47 = *(v27 + 36);
  v48 = type metadata accessor for Instrument(0);
  v49 = *(*(v48 - 8) + 48);
  if (!v49(&v33[v47], 1, v48))
  {
    sub_242CA321C(v40, v21, &qword_27ECF2F70, &qword_242F17928);
    if ((v73)(v21, 1, v27) == 1)
    {
      sub_242C6D138(v21, &qword_27ECF2F70, &qword_242F17928);
      v51 = v74;
      v52 = v68;
    }

    else
    {
      v53 = &v21[*(v27 + 36)];
      v54 = v63;
      sub_242CA321C(v53, v63, &qword_27ECF0B08, &unk_242F17EB0);
      sub_242DD64D4(v21, type metadata accessor for Slot);
      v55 = v49(v54, 1, v48);
      v52 = v68;
      if (v55 != 1)
      {
        sub_242C6D138(v40, &qword_27ECF2F70, &qword_242F17928);
        v59 = v62;
        sub_242CA321C(v54, v62, &qword_27ECF2170, &qword_242F13A98);
        sub_242CF6B3C(v59, v52, &qword_27ECF2168, &unk_242F17EA0);
        sub_242DD64D4(v54, type metadata accessor for Instrument);
        (*(v65 + 56))(v52, 0, 1, v66);
        v56 = v67;
        sub_242CF6B3C(v52, v67, &qword_27ECF2168, &unk_242F17EA0);
        v51 = v74;
LABEL_26:
        sub_242D8E414(v56, &v33[v47], &qword_27ECF2168, &unk_242F17EA0);
        v50 = v51;
        goto LABEL_27;
      }

      sub_242C6D138(v54, &qword_27ECF0B08, &unk_242F17EB0);
      v51 = v74;
    }

    v57 = v66;
    v56 = v67;
    v58 = v65;
    (*(v65 + 56))(v52, 1, 1, v66);
    sub_242F03710();
    sub_242C6D138(v40, &qword_27ECF2F70, &qword_242F17928);
    if ((*(v58 + 48))(v52, 1, v57) != 1)
    {
      sub_242C6D138(v52, &qword_27ECF4CF8, &qword_242F27C48);
    }

    goto LABEL_26;
  }

  sub_242C6D138(v40, &qword_27ECF2F70, &qword_242F17928);
  v50 = v74;
LABEL_27:
  sub_242DD6310(v33, v50, type metadata accessor for Slot);
  return sub_242DD64D4(v33, type metadata accessor for Slot);
}

uint64_t Component.updatingSize(_:)@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v4 = v3;
  sub_242DD6310(v4, a1, type metadata accessor for Component);
  result = type metadata accessor for Component(0);
  v9 = (a1 + *(result + 28));
  v10 = *v9;
  v11 = v9[1];
  *v9 = a2;
  v9[1] = a3;
  if (v10 != a2 || v11 != a3)
  {
    return sub_242DD3D14(a2 / v10, a3 / v11);
  }

  return result;
}

uint64_t sub_242DD4E54()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 1702521203;
  v4 = 0x6C62616B63617274;
  if (v1 != 4)
  {
    v4 = 0x73746F6C73;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 1701869940;
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

uint64_t sub_242DD4EEC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_242DD6A2C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_242DD4F14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242DD6378(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242DD4F50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242DD6378(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

void Component.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF23E8, &unk_242F13C40);
  MEMORY[0x28223BE20](v4);
  v6 = &v25 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF6C70, &qword_242F30A58);
  v27 = *(v7 - 8);
  v28 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v25 - v8;
  v10 = type metadata accessor for Component(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v30 = a1;
  v14 = __swift_project_boxed_opaque_existential_2Tm(a1, v13);
  sub_242DD6378(v14, v15, v16);
  v29 = v9;
  sub_242F06480();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_2Tm(v30);
  }

  else
  {
    v17 = v27;
    LOBYTE(v31) = 0;
    sub_242DD6534(&qword_27ECF6C80, &protocol conformance descriptor for <> TaggedValue<A, B>);
    v18 = v28;
    sub_242F05E00();
    v19 = sub_242CF6B3C(v6, v12, &qword_27ECF23E8, &unk_242F13C40);
    v32 = 1;
    sub_242DD63CC(v19, v20, v21);
    sub_242F05E00();
    v12[v10[5]] = v31;
    LOBYTE(v31) = 2;
    v22 = sub_242F05DA0();
    v23 = &v12[v10[6]];
    *v23 = v22;
    v23[1] = v24;
    type metadata accessor for CGSize(0);
    v32 = 3;
    sub_242DD6720(&qword_27ECF58D8, type metadata accessor for CGSize, MEMORY[0x277CBF2A0]);
    sub_242F05E00();
    *&v12[v10[7]] = v31;
    LOBYTE(v31) = 4;
    v12[v10[8]] = sub_242F05D40();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2C90, &qword_242F172D8);
    v32 = 5;
    sub_242DD6420();
    sub_242F05E00();
    (*(v17 + 8))(v29, v18);
    *&v12[v10[9]] = v31;
    sub_242DD6310(v12, v26, type metadata accessor for Component);
    __swift_destroy_boxed_opaque_existential_2Tm(v30);
    sub_242DD64D4(v12, type metadata accessor for Component);
  }
}

uint64_t sub_242DD5490()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0B08, &unk_242F17EB0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v23 - v3;
  v5 = type metadata accessor for Instrument(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v24 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Slot(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for Component(0);
  v13 = *(v1 + *(result + 36));
  v23 = *(v13 + 16);
  if (!v23)
  {
    return 0;
  }

  v14 = 0;
  v15 = *(v9 + 80);
  v27 = *(v8 + 36);
  v28 = v9;
  v25 = v5;
  v26 = v13 + ((v15 + 32) & ~v15);
  v16 = (v6 + 48);
  v17 = v23;
  while (v14 < *(v13 + 16))
  {
    sub_242DD6310(v26 + *(v28 + 72) * v14, v11, type metadata accessor for Slot);
    sub_242CA321C(&v11[v27], v4, &qword_27ECF0B08, &unk_242F17EB0);
    sub_242DD64D4(v11, type metadata accessor for Slot);
    v18 = v25;
    if ((*v16)(v4, 1, v25) == 1)
    {
      result = sub_242C6D138(v4, &qword_27ECF0B08, &unk_242F17EB0);
    }

    else
    {
      v19 = v24;
      sub_242DD665C(v4, v24, type metadata accessor for Instrument);
      memcpy(v29, (v19 + *(v18 + 20)), 0x238uLL);
      v20 = sub_242C9E788(v29);
      if (v20 == 4 || v20 == 3)
      {
        v21 = sub_242C556B4(v29);
        if (*v21 == 0x7765695673616461 && v21[1] == 0xE800000000000000)
        {
          sub_242DD64D4(v19, type metadata accessor for Instrument);
          return 1;
        }

        v22 = sub_242F06110();
        result = sub_242DD64D4(v19, type metadata accessor for Instrument);
        if (v22)
        {
          return 1;
        }

        v17 = v23;
      }

      else
      {
        result = sub_242DD64D4(v19, type metadata accessor for Instrument);
      }
    }

    if (v17 == ++v14)
    {
      return 0;
    }
  }

  __break(1u);
  return result;
}

uint64_t Component.description.getter()
{
  v1 = sub_242F03720();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = 0;
  v9 = 0xE000000000000000;
  sub_242F05A80();

  v8 = 0x6E656E6F706D6F43;
  v9 = 0xEA00000000002874;
  (*(v2 + 16))(v4, v0, v1);
  v5 = sub_242F04F90();
  MEMORY[0x245D26660](v5);

  MEMORY[0x245D26660](0x3D656D616E203A29, 0xE800000000000000);
  v6 = type metadata accessor for Component(0);
  MEMORY[0x245D26660](*(v0 + *(v6 + 24)), *(v0 + *(v6 + 24) + 8));
  return v8;
}

void *Component.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0B08, &unk_242F17EB0);
  MEMORY[0x28223BE20](v4 - 8);
  v71 = &v61 - v5;
  v74 = type metadata accessor for Instrument(0);
  v69 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v70 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Slot(0);
  v8 = *(v7 - 8);
  v72 = v7;
  v73 = v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF6C98, &qword_242F30A60);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v61 - v13;
  v15 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242DD6378(v15, v16, v17);
  sub_242F064C0();
  LOBYTE(v76[0]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF23E8, &unk_242F13C40);
  sub_242DD6534(&qword_27ECF6CA0, &protocol conformance descriptor for <> TaggedValue<A, B>);
  v18 = v78;
  sub_242F05F20();
  if (v18)
  {
    return (*(v12 + 8))(v14, v11);
  }

  v78 = v10;
  v19 = type metadata accessor for Component(0);
  LOBYTE(v76[0]) = *(v2 + v19[5]);
  LOBYTE(v75[0]) = 1;
  sub_242DD6608(v19, v20, v21);
  sub_242F05F20();
  LOBYTE(v76[0]) = 2;
  sub_242F05EC0();
  v68 = v12;
  v76[0] = *(v2 + v19[7]);
  LOBYTE(v75[0]) = 3;
  type metadata accessor for CGSize(0);
  sub_242DD6720(&qword_27ECF58C8, type metadata accessor for CGSize, MEMORY[0x277CBF288]);
  sub_242F05F20();
  LOBYTE(v76[0]) = 4;
  sub_242F05E60();
  LOBYTE(v76[0]) = 5;
  v62 = v14;
  v63 = 0;
  result = sub_242F05E30();
  v23 = *(v2 + v19[9]);
  v67 = *(v23 + 16);
  if (!v67)
  {
LABEL_52:
    (*(v68 + 8))(v62, v63);
    return __swift_destroy_boxed_opaque_existential_2Tm(v77);
  }

  v24 = 0;
  v25 = v73;
  v26 = v71;
  v27 = *(v72 + 36);
  v65 = v23 + ((*(v25 + 80) + 32) & ~*(v25 + 80));
  v66 = v27;
  v28 = v70;
  v69 += 6;
  v29 = v78;
  v64 = v23;
  while (v24 < *(v23 + 16))
  {
    sub_242DD6310(v65 + *(v25 + 72) * v24, v29, type metadata accessor for Slot);
    sub_242CA321C(v29 + v66, v26, &qword_27ECF0B08, &unk_242F17EB0);
    if ((*v69)(v26, 1, v74) == 1)
    {
      sub_242C6D138(v26, &qword_27ECF0B08, &unk_242F17EB0);
      goto LABEL_41;
    }

    sub_242DD665C(v26, v28, type metadata accessor for Instrument);
    if (!byte_27ECF3A00)
    {
      goto LABEL_40;
    }

    if (byte_27ECF3A00 == 1)
    {
      v30 = *(v74 + 20);
      memcpy(v76, (v28 + v30), 0x238uLL);
      v31 = sub_242C9E788(v76);
      if (v31 > 3)
      {
        if (v31 == 4 || v31 == 5)
        {
          goto LABEL_30;
        }

        if (v31 != 7)
        {
          goto LABEL_40;
        }

        v33 = sub_242C556B4(v76);
        v75[0] = *v33;
        v34 = v33[4];
        v36 = v33[1];
        v35 = v33[2];
        v75[3] = v33[3];
        v75[4] = v34;
        v75[1] = v36;
        v75[2] = v35;
        v37 = v33[8];
        v39 = v33[5];
        v38 = v33[6];
        v75[7] = v33[7];
        v75[8] = v37;
        v75[5] = v39;
        v75[6] = v38;
        v40 = v33[12];
        v42 = v33[9];
        v41 = v33[10];
        v75[11] = v33[11];
        v75[12] = v40;
        v75[9] = v42;
        v75[10] = v41;
        enum_tag_for_layout_string_14CarPlayAssetUI17NotificationModelV27TrailingButtonConfigurationVSg_0 = get_enum_tag_for_layout_string_14CarPlayAssetUI17NotificationModelV27TrailingButtonConfigurationVSg_0(v75);
      }

      else
      {
        if (v31 == 1)
        {
          if (*(sub_242C556B4(v76) + 552))
          {
            goto LABEL_36;
          }

          goto LABEL_40;
        }

        if (v31 != 2)
        {
          if (v31 != 3)
          {
            goto LABEL_40;
          }

LABEL_30:
          sub_242C556B4(v76);
LABEL_36:
          memcpy(v75, (v28 + v30), 0x238uLL);
          v56 = sub_242C9E788(v75);
          if (v56 != 4)
          {
            v29 = v78;
            if (v56 != 3)
            {
LABEL_45:
              sub_242DD64D4(v28, type metadata accessor for Instrument);
              goto LABEL_43;
            }
          }

          v57 = sub_242C556B4(v75);
          if (*v57 == 0x7765695673616461 && v57[1] == 0xE800000000000000)
          {
LABEL_40:
            sub_242DD64D4(v28, type metadata accessor for Instrument);
            goto LABEL_41;
          }

          v58 = sub_242F06110();
LABEL_48:
          sub_242DD64D4(v28, type metadata accessor for Instrument);
          if ((v58 & 1) == 0)
          {
            goto LABEL_42;
          }

          goto LABEL_41;
        }

        v55 = sub_242C556B4(v76);
        memcpy(v75, (v55 + 8), 0x1D0uLL);
        enum_tag_for_layout_string_14CarPlayAssetUI17NotificationModelV27TrailingButtonConfigurationVSg_0 = sub_242C9E7A4(v75);
      }

      if (enum_tag_for_layout_string_14CarPlayAssetUI17NotificationModelV27TrailingButtonConfigurationVSg_0 == 1)
      {
        goto LABEL_40;
      }

      goto LABEL_36;
    }

    memcpy(v76, (v28 + *(v74 + 20)), 0x238uLL);
    v32 = sub_242C9E788(v76);
    if (v32 <= 3)
    {
      if (v32 == 1)
      {
        v58 = *(sub_242C556B4(v76) + 552);
        goto LABEL_48;
      }

      if (v32 != 2)
      {
        if (v32 != 3)
        {
          goto LABEL_45;
        }

LABEL_31:
        sub_242C556B4(v76);
        goto LABEL_40;
      }

      v59 = sub_242C556B4(v76);
      v60 = sub_242C9E7A4(v59 + 8);
      sub_242DD64D4(v28, type metadata accessor for Instrument);
      if (v60)
      {
        goto LABEL_42;
      }

LABEL_41:
      __swift_mutable_project_boxed_opaque_existential_1(v77, v77[3]);
      sub_242DD6720(&qword_27ECF5758, type metadata accessor for Slot, &protocol conformance descriptor for Slot);
      sub_242F05FA0();
      v28 = v70;
      v26 = v71;
      goto LABEL_42;
    }

    if (v32 == 4 || v32 == 5)
    {
      goto LABEL_31;
    }

    if (v32 != 7)
    {
      goto LABEL_45;
    }

    v44 = sub_242C556B4(v76);
    v75[0] = *v44;
    v45 = v44[4];
    v47 = v44[1];
    v46 = v44[2];
    v75[3] = v44[3];
    v75[4] = v45;
    v75[1] = v47;
    v75[2] = v46;
    v48 = v44[8];
    v50 = v44[5];
    v49 = v44[6];
    v75[7] = v44[7];
    v75[8] = v48;
    v75[5] = v50;
    v75[6] = v49;
    v51 = v44[12];
    v53 = v44[9];
    v52 = v44[10];
    v75[11] = v44[11];
    v75[12] = v51;
    v75[9] = v53;
    v75[10] = v52;
    v54 = get_enum_tag_for_layout_string_14CarPlayAssetUI17NotificationModelV27TrailingButtonConfigurationVSg_0(v75);
    sub_242DD64D4(v28, type metadata accessor for Instrument);
    if (v54 != 1)
    {
      goto LABEL_41;
    }

LABEL_42:
    v29 = v78;
LABEL_43:
    ++v24;
    result = sub_242DD64D4(v29, type metadata accessor for Slot);
    v25 = v73;
    v23 = v64;
    if (v67 == v24)
    {
      goto LABEL_52;
    }
  }

  __break(1u);
  return result;
}