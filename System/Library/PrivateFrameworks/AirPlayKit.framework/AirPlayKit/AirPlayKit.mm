id AVDataDestinationForAPKDataDestination(__CFString *a1)
{
  if (a1 == @"APKOutputDeviceCommunicationChannelDataDestinationFitness")
  {
    v2 = *MEMORY[0x277CB8658];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_23E87BE34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t SpriteSheetAnimable.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  if (*(v1 + 8))
  {
    if (*(v1 + 8) != 1)
    {
      return MEMORY[0x23EF17B90](0);
    }

    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  MEMORY[0x23EF17B90](v4);

  return sub_23E87D9E8(a1, v3);
}

uint64_t SpriteSheetAnimable.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_23E900EB4();
  if (v2)
  {
    if (v2 != 1)
    {
      MEMORY[0x23EF17B90](0);
      return sub_23E900F14();
    }

    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  MEMORY[0x23EF17B90](v3);
  sub_23E87D9E8(v5, v1);
  return sub_23E900F14();
}

uint64_t sub_23E87D488()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_23E900EB4();
  if (v2)
  {
    if (v2 != 1)
    {
      MEMORY[0x23EF17B90](0);
      return sub_23E900F14();
    }

    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  MEMORY[0x23EF17B90](v3);
  sub_23E87D9E8(v5, v1);
  return sub_23E900F14();
}

uint64_t sub_23E87D508(uint64_t a1)
{
  v3 = *v1;
  if (*(v1 + 8))
  {
    if (*(v1 + 8) != 1)
    {
      return MEMORY[0x23EF17B90](0);
    }

    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  MEMORY[0x23EF17B90](v4);

  return sub_23E87D9E8(a1, v3);
}

uint64_t sub_23E87D58C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_23E900EB4();
  if (v3)
  {
    if (v3 != 1)
    {
      MEMORY[0x23EF17B90](0);
      return sub_23E900F14();
    }

    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  MEMORY[0x23EF17B90](v4);
  sub_23E87D9E8(v6, v2);
  return sub_23E900F14();
}

uint64_t sub_23E87D614(uint64_t a1, id *a2)
{
  result = sub_23E900864();
  *a2 = 0;
  return result;
}

uint64_t sub_23E87D68C(uint64_t a1, id *a2)
{
  v3 = sub_23E900874();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_23E87D70C@<X0>(uint64_t *a1@<X8>)
{
  sub_23E900884();
  v2 = sub_23E900854();

  *a1 = v2;
  return result;
}

uint64_t sub_23E87D750@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_23E900854();

  *a2 = v3;
  return result;
}

uint64_t sub_23E87D798@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23E900884();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_23E87D7C4(uint64_t a1)
{
  v2 = sub_23E87E330(&qword_27E35E3C0, &unk_23E902BEC);
  v3 = sub_23E87E330(&qword_27E35E3C8, &unk_23E902B8C);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_23E87D85C()
{
  v0 = sub_23E900884();
  v1 = MEMORY[0x23EF17620](v0);

  return v1;
}

uint64_t sub_23E87D898(uint64_t a1)
{
  sub_23E900884();
  sub_23E900904();
}

uint64_t sub_23E87D8EC(uint64_t a1)
{
  sub_23E900884();
  sub_23E900EB4();
  sub_23E900904();
  v1 = sub_23E900F14();

  return v1;
}

uint64_t sub_23E87D960(void *a1, uint64_t *a2)
{
  v2 = sub_23E900884();
  v4 = v3;
  if (v2 == sub_23E900884() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_23E900E04();
  }

  return v7 & 1;
}

uint64_t sub_23E87D9E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SpriteSheetAnimation(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 + 16);
  result = MEMORY[0x23EF17B90](v8);
  if (v8)
  {
    v10 = *(v4 + 20);
    v11 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v12 = *(v5 + 72);
    v16 = v12;
    v17 = v10;
    do
    {
      sub_23E87E4B8(v11, v7, type metadata accessor for SpriteSheetAnimation);
      v13 = *(v7 + 4);
      v14 = v7[40];
      v18 = v7[41];
      sub_23E900904();
      if (v14)
      {
        v13 = 0;
      }

      else
      {
        MEMORY[0x23EF17B90](1);
        sub_23E900EE4();
        sub_23E900EE4();
        sub_23E900EE4();
        v12 = v16;
        sub_23E900EE4();
      }

      MEMORY[0x23EF17B90](v13);
      sub_23E900904();

      sub_23E8D3688(a1);
      result = sub_23E87E520(v7, type metadata accessor for SpriteSheetAnimation);
      v11 += v12;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t sub_23E87DC2C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E430, &unk_23E902C80);
  MEMORY[0x28223BE20](v4 - 8);
  v40 = &v36 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E438, &unk_23E907E20);
  MEMORY[0x28223BE20](v6 - 8);
  v39 = &v36 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35E440, &unk_23E902C90);
  MEMORY[0x28223BE20](v8 - 8);
  v38 = &v36 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35E630, &qword_23E903300);
  MEMORY[0x28223BE20](v10 - 8);
  v37 = &v36 - v11;
  v12 = type metadata accessor for ContainerContent.Child(0);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v36 - v17;
  v19 = *(a2 + 16);
  v41 = a1;
  result = MEMORY[0x23EF17B90](v19);
  if (v19)
  {
    v21 = a2 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v22 = *(v13 + 72);
    do
    {
      sub_23E87E4B8(v21, v18, type metadata accessor for ContainerContent.Child);
      sub_23E87E4B8(v18, v16, type metadata accessor for ContainerContent.Child);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 1)
      {
        if (EnumCaseMultiPayload == 2)
        {
          v31 = v39;
          v32 = &qword_27E35E438;
          v33 = &unk_23E907E20;
          sub_23E87E3F0(v16, v39, &qword_27E35E438, &unk_23E907E20);
          v34 = v41;
          MEMORY[0x23EF17B90](2);
          sub_23E8AA7BC(v34);
        }

        else
        {
          v31 = v40;
          v32 = &qword_27E35E430;
          v33 = &unk_23E902C80;
          sub_23E87E3F0(v16, v40, &qword_27E35E430, &unk_23E902C80);
          v35 = v41;
          MEMORY[0x23EF17B90](3);
          sub_23E8AA52C(v35);
        }

        v25 = v31;
        v26 = v32;
        v27 = v33;
      }

      else if (EnumCaseMultiPayload)
      {
        v23 = v38;
        sub_23E87E3F0(v16, v38, &unk_27E35E440, &unk_23E902C90);
        v24 = v41;
        MEMORY[0x23EF17B90](1);
        sub_23E8AAA3C(v24);
        v25 = v23;
        v26 = &unk_27E35E440;
        v27 = &unk_23E902C90;
      }

      else
      {
        v29 = v37;
        v30 = v41;
        sub_23E87E3F0(v16, v37, &unk_27E35E630, &qword_23E903300);
        MEMORY[0x23EF17B90](0);
        sub_23E8AACF8(v30);
        v25 = v29;
        v26 = &unk_27E35E630;
        v27 = &qword_23E903300;
      }

      sub_23E87E458(v25, v26, v27);
      result = sub_23E87E520(v18, type metadata accessor for ContainerContent.Child);
      v21 += v22;
      --v19;
    }

    while (v19);
  }

  return result;
}

uint64_t _s10AirPlayKit19SpriteSheetAnimableO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (*(a1 + 8) != 1)
    {
      if (v3 != 2 || v2 != 0)
      {
        goto LABEL_11;
      }

      v5 = 1;
LABEL_13:

      return v5 & 1;
    }

    if (v3 != 1)
    {
      goto LABEL_11;
    }

LABEL_6:

    v5 = sub_23E8DE708(v4, v2);

    goto LABEL_13;
  }

  if (!*(a2 + 8))
  {
    goto LABEL_6;
  }

LABEL_11:
  v5 = 0;
  return v5 & 1;
}

unint64_t sub_23E87E0E4()
{
  result = qword_27E35E320;
  if (!qword_27E35E320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35E320);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10AirPlayKit19SpriteSheetAnimableO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_23E87E168(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_23E87E1B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_23E87E1F8(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_23E87E26C(uint64_t a1, int a2)
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

uint64_t sub_23E87E28C(uint64_t result, int a2, int a3)
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

uint64_t sub_23E87E330(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AirPlayOutputDeviceCommunicationChannelDataDestination(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
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

uint64_t sub_23E87E3F0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_23E87E458(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_23E87E4B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23E87E520(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for SpringParameters(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for SpringParameters(uint64_t result, int a2, int a3)
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

uint64_t sub_23E87E604(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 80))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_23E87E660(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

void sub_23E87E704(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t Material.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x694C6D756964654DLL;
  v2 = 0x67694C6172746C55;
  if (a1 != 2)
  {
    v2 = 0x7261446172746C55;
  }

  if (a1)
  {
    v1 = 0x61446D756964654DLL;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_23E87E7E8(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xEB00000000746867;
  v3 = 0x694C6D756964654DLL;
  v4 = *a1;
  v5 = 0xEA00000000007468;
  v6 = 0x7261446172746C55;
  if (v4 == 2)
  {
    v6 = 0x67694C6172746C55;
  }

  else
  {
    v5 = 0xE90000000000006BLL;
  }

  v7 = 0x61446D756964654DLL;
  if (*a1)
  {
    v8 = 0xEA00000000006B72;
  }

  else
  {
    v7 = 0x694C6D756964654DLL;
    v8 = 0xEB00000000746867;
  }

  if (*a1 <= 1u)
  {
    v9 = v7;
  }

  else
  {
    v9 = v6;
  }

  if (v4 <= 1)
  {
    v10 = v8;
  }

  else
  {
    v10 = v5;
  }

  v11 = 0x67694C6172746C55;
  v12 = 0xEA00000000007468;
  if (*a2 != 2)
  {
    v11 = 0x7261446172746C55;
    v12 = 0xE90000000000006BLL;
  }

  if (*a2)
  {
    v3 = 0x61446D756964654DLL;
    v2 = 0xEA00000000006B72;
  }

  if (*a2 <= 1u)
  {
    v13 = v3;
  }

  else
  {
    v13 = v11;
  }

  if (*a2 <= 1u)
  {
    v14 = v2;
  }

  else
  {
    v14 = v12;
  }

  if (v9 == v13 && v10 == v14)
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_23E900E04();
  }

  return v15 & 1;
}

unint64_t sub_23E87E948@<X0>(Swift::String *a1@<X0>, AirPlayKit::Material_optional *a2@<X8>)
{
  result = _s10AirPlayKit8MaterialO8rawValueACSgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

void sub_23E87E978(uint64_t *a1@<X8>)
{
  v2 = 0xEB00000000746867;
  v3 = 0x694C6D756964654DLL;
  v4 = 0xEA00000000007468;
  v5 = 0x67694C6172746C55;
  if (*v1 != 2)
  {
    v5 = 0x7261446172746C55;
    v4 = 0xE90000000000006BLL;
  }

  if (*v1)
  {
    v3 = 0x61446D756964654DLL;
    v2 = 0xEA00000000006B72;
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

uint64_t sub_23E87EA10()
{
  sub_23E900EB4();
  sub_23E900904();

  return sub_23E900F14();
}

uint64_t sub_23E87EAEC(uint64_t a1)
{
  sub_23E900904();
}

uint64_t sub_23E87EBB4(uint64_t a1)
{
  sub_23E900EB4();
  sub_23E900904();

  return sub_23E900F14();
}

unint64_t _s10AirPlayKit8MaterialO8rawValueACSgSS_tcfC_0(uint64_t a1, uint64_t a2)
{
  v2 = sub_23E900DA4();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_23E87ECDC()
{
  result = qword_27E35E530;
  if (!qword_27E35E530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35E530);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Material(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Material(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void *sub_23E87EE9C(uint64_t a1, uint64_t a2, int *a3)
{
  v126 = a2;
  v6 = sub_23E900BD4();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v118 - v9;
  v11 = *(a3 - 1);
  MEMORY[0x28223BE20](v8);
  v13 = &v118 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, a1, v6);
  v14 = (*(v11 + 6))(v10, 1, a3);
  v125 = a3;
  if (v14 == 1)
  {
    (*(v7 + 8))(v10, v6);
    v15 = (v3 + a3[16]);
    v16 = *v15;
    v123 = v15[1];
    v124 = v16;
    LODWORD(v122) = *(v15 + 16);
    v17 = v3;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E538, &unk_23E907970);
    v137[3] = v18;
    v137[4] = sub_23E880EFC(&unk_27E35F5E0, &qword_27E35E538, &unk_23E907970);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v137);
    v20 = sub_23E9006D4();
    v21 = *(v20 - 8);
    v120 = *(v21 + 16);
    v121 = v21 + 16;
    v22 = v126;
    v118 = v20;
    v120(boxed_opaque_existential_1, v126, v20);
    *(boxed_opaque_existential_1 + *(v18 + 36)) = 5;
    v23 = boxed_opaque_existential_1 + *(v18 + 40);
    v24 = v123;
    *v23 = v124;
    *(v23 + 1) = v24;
    v23[16] = v122;
    v25 = v125;
    v26 = v125[10];
    v119 = v17;
    LODWORD(v124) = *(v17 + v26);
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E540, &qword_23E902E10);
    v138[3] = v27;
    v138[4] = sub_23E880EFC(&unk_27E35F5F0, &qword_27E35E540, &qword_23E902E10);
    v28 = __swift_allocate_boxed_opaque_existential_1(v138);
    v29 = v22;
    v30 = v22;
    v31 = v120;
    v120(v28, v29, v20);
    *(v28 + *(v27 + 36)) = 6;
    *(v28 + *(v27 + 40)) = v124;
    v32 = *(v17 + v25[17]);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E548, &unk_23E907980);
    v139[3] = v33;
    v139[4] = sub_23E880EFC(&unk_27E35F600, &qword_27E35E548, &unk_23E907980);
    v34 = __swift_allocate_boxed_opaque_existential_1(v139);
    v35 = v118;
    v31(v34, v30, v118);
    *(v34 + *(v33 + 36)) = 7;
    *(v34 + *(v33 + 40)) = v32;
    v36 = (v119 + v25[18]);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E550, &qword_23E902E18);
    v140[3] = v37;
    v140[4] = sub_23E880EFC(&unk_27E35F610, &qword_27E35E550, &qword_23E902E18);
    v38 = __swift_allocate_boxed_opaque_existential_1(v140);
    v39 = *v36;
    v40 = v36[1];
    v31(v38, v126, v35);
    *(v38 + *(v37 + 36)) = 9;
    v41 = (v38 + *(v37 + 40));
    *v41 = v39;
    v41[1] = v40;
    v42 = MEMORY[0x277D84F90];
    for (i = 32; i != 192; i += 40)
    {
      sub_23E880F50(&v136[i], &v133);
      v127 = v133;
      v128 = v134;
      v129 = v135;
      if (*(&v134 + 1))
      {
        sub_23E881028(&v127, v130);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v141 = v42;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v42 = sub_23E889F50(0, v42[2] + 1, 1, v42);
          v141 = v42;
        }

        v46 = v42[2];
        v45 = v42[3];
        if (v46 >= v45 >> 1)
        {
          v42 = sub_23E889F50((v45 > 1), v46 + 1, 1, v42);
          v141 = v42;
        }

        v47 = v131;
        v48 = v132;
        v49 = __swift_mutable_project_boxed_opaque_existential_1(v130, v131);
        MEMORY[0x28223BE20](v49);
        v51 = &v118 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v52 + 16))(v51);
        sub_23E8F2C70(v46, v51, &v141, v47, v48);
        __swift_destroy_boxed_opaque_existential_1(v130);
      }

      else
      {
        sub_23E880FC0(&v127);
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E558, &unk_23E907990);
    swift_arrayDestroy();
  }

  else
  {
    v123 = v11;
    (*(v11 + 4))(v13, v10, a3);
    v53 = a3[16];
    v54 = &v13[v53];
    v55 = *&v13[v53];
    v56 = *&v13[v53 + 8];
    v57 = v3 + v53;
    v58 = *v57;
    v59 = *(v57 + 8);
    v60 = *(v57 + 16);
    v61 = _s10AirPlayKit5ColorO2eeoiySbAC_ACtFZ_0(v55, v56, v54[16], *v57, v59, v60);
    v124 = v13;
    if (v61)
    {
      v62 = MEMORY[0x277D84F90];
    }

    else
    {
      v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E538, &unk_23E907970);
      *(&v134 + 1) = v63;
      v135 = sub_23E880EFC(&unk_27E35F5E0, &qword_27E35E538, &unk_23E907970);
      v64 = __swift_allocate_boxed_opaque_existential_1(&v133);
      v65 = sub_23E9006D4();
      (*(*(v65 - 8) + 16))(v64, v126, v65);
      *(v64 + *(v63 + 36)) = 5;
      v66 = v64 + *(v63 + 40);
      *v66 = v58;
      *(v66 + 1) = v59;
      v66[16] = v60;
      v62 = sub_23E88A098(0, 1, 1, MEMORY[0x277D84F90]);
      v68 = v62[2];
      v67 = v62[3];
      if (v68 >= v67 >> 1)
      {
        v62 = sub_23E88A098((v67 > 1), v68 + 1, 1, v62);
      }

      v62[2] = v68 + 1;
      v69 = &v62[5 * v68];
      v70 = v133;
      v71 = v134;
      v69[8] = v135;
      *(v69 + 2) = v70;
      *(v69 + 3) = v71;
      v13 = v124;
    }

    v72 = v126;
    v73 = a3[10];
    v74 = *(v3 + v73);
    if ((sub_23E89A140(v13[v73], v74) & 1) == 0)
    {
      v75 = v62;
      v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E540, &qword_23E902E10);
      *(&v134 + 1) = v76;
      v135 = sub_23E880EFC(&unk_27E35F5F0, &qword_27E35E540, &qword_23E902E10);
      v77 = __swift_allocate_boxed_opaque_existential_1(&v133);
      v78 = sub_23E9006D4();
      (*(*(v78 - 8) + 16))(v77, v72, v78);
      *(v77 + *(v76 + 36)) = 6;
      v79 = *(v76 + 40);
      v62 = v75;
      *(v77 + v79) = v74;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v62 = sub_23E88A098(0, v75[2] + 1, 1, v75);
      }

      v81 = v62[2];
      v80 = v62[3];
      v13 = v124;
      if (v81 >= v80 >> 1)
      {
        v62 = sub_23E88A098((v80 > 1), v81 + 1, 1, v62);
      }

      v62[2] = v81 + 1;
      v82 = &v62[5 * v81];
      v83 = v133;
      v84 = v134;
      v82[8] = v135;
      *(v82 + 2) = v83;
      *(v82 + 3) = v84;
    }

    v85 = a3[17];
    v86 = *(v3 + v85);
    if (*&v13[v85] != v86)
    {
      v87 = v62;
      v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E548, &unk_23E907980);
      *(&v134 + 1) = v88;
      v135 = sub_23E880EFC(&unk_27E35F600, &qword_27E35E548, &unk_23E907980);
      v89 = __swift_allocate_boxed_opaque_existential_1(&v133);
      v90 = sub_23E9006D4();
      (*(*(v90 - 8) + 16))(v89, v72, v90);
      *(v89 + *(v88 + 36)) = 7;
      v91 = *(v88 + 40);
      v62 = v87;
      *(v89 + v91) = v86;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v62 = sub_23E88A098(0, v87[2] + 1, 1, v87);
      }

      v93 = v62[2];
      v92 = v62[3];
      v13 = v124;
      if (v93 >= v92 >> 1)
      {
        v62 = sub_23E88A098((v92 > 1), v93 + 1, 1, v62);
      }

      v62[2] = v93 + 1;
      v94 = &v62[5 * v93];
      v95 = v133;
      v96 = v134;
      v94[8] = v135;
      *(v94 + 2) = v95;
      *(v94 + 3) = v96;
    }

    v97 = a3[18];
    if ((vminv_u16(vmovn_s32(vceqq_f32(*&v13[v97], *(v3 + v97)))) & 1) == 0)
    {
      v122 = *(v3 + v97);
      v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E550, &qword_23E902E18);
      *(&v134 + 1) = v98;
      v135 = sub_23E880EFC(&unk_27E35F610, &qword_27E35E550, &qword_23E902E18);
      v99 = __swift_allocate_boxed_opaque_existential_1(&v133);
      v100 = sub_23E9006D4();
      (*(*(v100 - 8) + 16))(v99, v72, v100);
      *(v99 + *(v98 + 36)) = 9;
      *(v99 + *(v98 + 40)) = v122;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v62 = sub_23E88A098(0, v62[2] + 1, 1, v62);
      }

      v102 = v62[2];
      v101 = v62[3];
      if (v102 >= v101 >> 1)
      {
        v62 = sub_23E88A098((v101 > 1), v102 + 1, 1, v62);
      }

      v62[2] = v102 + 1;
      v103 = &v62[5 * v102];
      v104 = v133;
      v105 = v134;
      v103[8] = v135;
      *(v103 + 2) = v104;
      *(v103 + 3) = v105;
    }

    v106 = v62[2];
    v126 = v62;
    if (v106)
    {
      v107 = (v62 + 4);
      v42 = MEMORY[0x277D84F90];
      do
      {
        sub_23E880F50(v107, &v133);
        v127 = v133;
        v128 = v134;
        v129 = v135;
        if (*(&v134 + 1))
        {
          sub_23E881028(&v127, v130);
          v108 = swift_isUniquelyReferenced_nonNull_native();
          v141 = v42;
          if ((v108 & 1) == 0)
          {
            v42 = sub_23E889F50(0, v42[2] + 1, 1, v42);
            v141 = v42;
          }

          v110 = v42[2];
          v109 = v42[3];
          if (v110 >= v109 >> 1)
          {
            v42 = sub_23E889F50((v109 > 1), v110 + 1, 1, v42);
            v141 = v42;
          }

          v111 = v131;
          v112 = v132;
          v113 = __swift_mutable_project_boxed_opaque_existential_1(v130, v131);
          MEMORY[0x28223BE20](v113);
          v115 = &v118 - ((v114 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v116 + 16))(v115);
          sub_23E8F2C70(v110, v115, &v141, v111, v112);
          __swift_destroy_boxed_opaque_existential_1(v130);
        }

        else
        {
          sub_23E880FC0(&v127);
        }

        v107 += 40;
        --v106;
      }

      while (v106);
    }

    else
    {
      v42 = MEMORY[0x277D84F90];
    }

    (*(v123 + 1))(v124, v125);
  }

  return v42;
}

void *sub_23E87FB14(uint64_t a1, uint64_t a2, int *a3)
{
  v90 = a2;
  v6 = sub_23E900BD4();
  v7 = *(v6 - 1);
  v8 = MEMORY[0x28223BE20](v6);
  v81 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v80 = &v76 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v76 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v76 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v76 - v18;
  v20 = a3[11];
  v88 = v3;
  v89 = a1;
  v21 = v3 + v20;
  v23 = *v21;
  v22 = *(v21 + 8);
  v77 = *(v21 + 16) | (*(v21 + 20) << 32);
  v78 = *(v21 + 21);
  v79 = v22;
  v86 = *(v7 + 16);
  v87 = v7 + 16;
  v86(&v76 - v18, a1, v6);
  v24 = *(a3 - 1);
  v84 = *(v24 + 48);
  v85 = v24 + 48;
  v25 = v84(v19, 1, a3);
  v82 = v24;
  v83 = v7;
  if (v25 == 1)
  {
    (*(v7 + 8))(v19, v6);
    v26 = 0;
    v27 = 0;
    v28 = 0xFF0000000000;
  }

  else
  {
    v29 = &v19[a3[11]];
    v26 = *v29;
    v27 = *(v29 + 1);
    v30 = v29[20];
    v31 = *(v29 + 4);
    v76 = v6;
    v32 = v14;
    v33 = v23;
    v34 = v31 | (v30 << 32);
    v35 = v29[21];
    sub_23E8811D8(v26, v27, v34, v29[21]);
    (*(v24 + 8))(v19, a3);
    v28 = v34 | (v35 << 40);
    v23 = v33;
    v14 = v32;
    v6 = v76;
  }

  v79 = sub_23E8E7358(v26, v27, v28 & 0xFFFFFFFFFFFFLL, v90, 0, v23, v79, v77 & 0xFFFFFFFFFFLL | (v78 << 40));
  sub_23E881140(v26, v27, v28);
  v36 = v88 + a3[12];
  v37 = *v36;
  v38 = *(v36 + 8) | (*(v36 + 12) << 32);
  v39 = *(v36 + 13);
  v86(v17, v89, v6);
  if (v84(v17, 1, a3) == 1)
  {
    (*(v83 + 8))(v17, v6);
    v40 = 0;
    v41 = 0xFF0000000000;
  }

  else
  {
    v42 = &v17[a3[12]];
    v40 = *v42;
    v43 = *(v42 + 2) | (v42[12] << 32);
    v44 = v42[13];
    sub_23E881208(*v42, v43, v42[13]);
    (*(v82 + 8))(v17, a3);
    v41 = v43 | (v44 << 40);
  }

  v78 = sub_23E8E7794(v40, v41 & 0xFFFFFFFFFFFFLL, v90, 1, v37, v38 & 0xFFFFFFFFFFLL | (v39 << 40));
  sub_23E88116C(v40, v41);
  v45 = v88 + a3[13];
  v46 = *v45;
  v47 = *(v45 + 8);
  v86(v14, v89, v6);
  if (v84(v14, 1, a3) == 1)
  {
    v48 = 0;
    v49 = -1;
    v50 = v83;
    v51 = v6;
  }

  else
  {
    v52 = &v14[a3[13]];
    v48 = *v52;
    v49 = v52[8];
    sub_23E8811F0(*v52, v49);
    v50 = v82;
    v51 = a3;
  }

  (*(v50 + 8))(v14, v51);
  v77 = sub_23E8E7BB8(v48, v49, v90, 3, v46, v47);
  sub_23E881198(v48, v49);
  v53 = v88 + a3[14];
  v54 = *(v53 + 8);
  v76 = *v53;
  v55 = *(v53 + 16);
  v56 = *(v53 + 24);
  v57 = v80;
  v86(v80, v89, v6);
  if (v84(v57, 1, a3) == 1)
  {
    v58 = 0;
    v59 = 0;
    v60 = 0;
    v61 = 255;
    v62 = v83;
    v63 = v6;
  }

  else
  {
    v64 = &v57[a3[14]];
    v58 = *v64;
    v59 = *(v64 + 1);
    v60 = *(v64 + 2);
    v61 = v64[24];
    sub_23E8811D8(*v64, v59, v60, v64[24]);
    v62 = v82;
    v63 = a3;
  }

  (*(v62 + 8))(v57, v63);
  v65 = sub_23E8E8028(v58, v59, v60, v61, v90, 2, v76, v54, v55, v56);
  sub_23E8811C4(v58, v59, v60, v61);
  v66 = v88 + a3[15];
  v67 = *v66;
  v68 = *(v66 + 8);
  v69 = v81;
  v86(v81, v89, v6);
  if (v84(v69, 1, a3) == 1)
  {
    v70 = 0;
    v71 = -1;
    v72 = v83;
  }

  else
  {
    v73 = &v69[a3[15]];
    v70 = *v73;
    v71 = v73[8];
    sub_23E8811F0(*v73, v71);
    v72 = v82;
    v6 = a3;
  }

  (*(v72 + 8))(v69, v6);
  v74 = sub_23E8E84DC(v70, v71, v90, 8, v67, v68);
  sub_23E881198(v70, v71);
  v91 = v79;
  sub_23E8EBFB4(v78);
  sub_23E8EBFB4(v77);
  sub_23E8EBFB4(v65);
  sub_23E8EBFB4(v74);
  return v91;
}

char *sub_23E8801A4(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v110 = a1;
  v102 = a4;
  v105 = a2;
  v6 = *(a3 + 16);
  v99 = sub_23E900BD4();
  v98 = *(v99 - 8);
  v7 = MEMORY[0x28223BE20](v99);
  v97 = &v89 - v8;
  v104 = v6;
  v100 = *(v6 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v108 = &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a3 - 8);
  MEMORY[0x28223BE20](v9);
  v90 = &v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_23E900BD4();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v93 = *(TupleTypeMetadata2 - 8);
  v15 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v17 = &v89 - v16;
  v103 = *(v13 - 8);
  v18 = v103;
  v19 = MEMORY[0x28223BE20](v15);
  v96 = &v89 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v107 = &v89 - v22;
  MEMORY[0x28223BE20](v21);
  v24 = &v89 - v23;
  v25 = *(v11 + 16);
  v106 = v4;
  v25(&v89 - v23, v4, a3);
  (*(v11 + 56))(v24, 0, 1, a3);
  v94 = TupleTypeMetadata2;
  v26 = *(TupleTypeMetadata2 + 48);
  v91 = v18;
  v27 = *(v18 + 16);
  v27(v17, v24, v13);
  v27(&v26[v17], v110, v13);
  v101 = v11;
  v28 = *(v11 + 48);
  v29 = v28(v17, 1, a3);
  v95 = v27;
  if (v29 == 1)
  {
    v107 = v26;
    v30 = *(v103 + 8);
    (v30)(v24, v13);
    v31 = a3;
    if (v28(&v107[v17], 1, a3) == 1)
    {
      (v30)(v17, v13);
      return MEMORY[0x277D84F90];
    }

    v92 = v28;
    goto LABEL_7;
  }

  v27(v107, v17, v13);
  v32 = v28(&v26[v17], 1, a3);
  v92 = v28;
  if (v32 == 1)
  {
    v30 = *(v103 + 8);
    (v30)(v24, v13);
    v31 = a3;
    (*(v101 + 8))(v107, a3);
LABEL_7:
    (*(v93 + 8))(v17, v94);
    v33 = v104;
    v34 = v100;
    v35 = v108;
    goto LABEL_8;
  }

  v46 = v101;
  v47 = v90;
  (*(v101 + 32))(v90, &v26[v17], a3);
  LODWORD(v94) = static RenderNode.== infix(_:_:)(v107, v47, v104, *(v102 + 16));
  v93 = *(v46 + 8);
  (v93)(v47, a3);
  v30 = *(v103 + 8);
  (v30)(v24, v13);
  v31 = a3;
  v48 = a3;
  v33 = v104;
  (v93)(v107, v48);
  (v30)(v17, v13);
  v34 = v100;
  v35 = v108;
  if (v94)
  {
    return MEMORY[0x277D84F90];
  }

LABEL_8:
  v107 = v30;
  v36 = v31;
  v37 = *(v34 + 16);
  v37(v35, v106 + *(v31 + 36), v33);
  v38 = v96;
  v95(v96, v110, v13);
  if (v92(v38, 1, v31) == 1)
  {
    (v107)(v38, v13);
    v39 = 1;
    v40 = v105;
    v41 = v97;
  }

  else
  {
    v41 = v97;
    v37(v97, &v38[*(v31 + 36)], v33);
    (*(v101 + 8))(v38, v31);
    v39 = 0;
    v40 = v105;
  }

  (*(v34 + 56))(v41, v39, 1, v33);
  v42 = v108;
  v43 = v109;
  v44 = (*(*(v102 + 8) + 8))(v41, v40, v33);
  if (v43)
  {
    (*(v98 + 8))(v41, v99);
    return (*(v34 + 8))(v42, v33);
  }

  else
  {
    v49 = v44;
    v107 = v36;
    v109 = 0;
    (*(v98 + 8))(v41, v99);
    (*(v34 + 8))(v42, v33);
    v50 = *(v49 + 16);
    if (v50)
    {
      v51 = v49 + 32;
      v52 = MEMORY[0x277D84F90];
      do
      {
        sub_23E8810DC(v51, v115);
        sub_23E881028(v115, v112);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v116 = v52;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v52 = sub_23E889F50(0, v52[2] + 1, 1, v52);
          v116 = v52;
        }

        v55 = v52[2];
        v54 = v52[3];
        if (v55 >= v54 >> 1)
        {
          v52 = sub_23E889F50((v54 > 1), v55 + 1, 1, v52);
          v116 = v52;
        }

        v56 = v113;
        v57 = v114;
        v58 = __swift_mutable_project_boxed_opaque_existential_1(v112, v113);
        MEMORY[0x28223BE20](v58);
        v60 = &v89 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v61 + 16))(v60);
        sub_23E8F2C70(v55, v60, &v116, v56, v57);
        __swift_destroy_boxed_opaque_existential_1(v112);
        v51 += 40;
        --v50;
      }

      while (v50);
    }

    else
    {

      v52 = MEMORY[0x277D84F90];
    }

    v108 = v52;
    v62 = sub_23E87FB14(v110, v105, v107);
    v63 = v62[2];
    if (v63)
    {
      v104 = v62;
      v64 = (v62 + 4);
      v65 = MEMORY[0x277D84F90];
      do
      {
        sub_23E8810DC(v64, v115);
        sub_23E881028(v115, v112);
        v66 = swift_isUniquelyReferenced_nonNull_native();
        v116 = v65;
        if ((v66 & 1) == 0)
        {
          v65 = sub_23E889F50(0, v65[2] + 1, 1, v65);
          v116 = v65;
        }

        v68 = v65[2];
        v67 = v65[3];
        if (v68 >= v67 >> 1)
        {
          v65 = sub_23E889F50((v67 > 1), v68 + 1, 1, v65);
          v116 = v65;
        }

        v69 = v113;
        v70 = v114;
        v71 = __swift_mutable_project_boxed_opaque_existential_1(v112, v113);
        MEMORY[0x28223BE20](v71);
        v73 = &v89 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v74 + 16))(v73);
        sub_23E8F2C70(v68, v73, &v116, v69, v70);
        __swift_destroy_boxed_opaque_existential_1(v112);
        v64 += 40;
        --v63;
      }

      while (v63);
    }

    else
    {

      v65 = MEMORY[0x277D84F90];
    }

    v75 = v109;
    v76 = sub_23E87EE9C(v110, v105, v107);
    if (v75)
    {
    }

    else
    {
      v109 = 0;
      v77 = *(v76 + 2);
      if (v77)
      {
        v110 = v76;
        v78 = (v76 + 32);
        v79 = MEMORY[0x277D84F90];
        do
        {
          sub_23E8810DC(v78, v115);
          sub_23E881028(v115, v112);
          v80 = swift_isUniquelyReferenced_nonNull_native();
          v116 = v79;
          if ((v80 & 1) == 0)
          {
            v79 = sub_23E889F50(0, v79[2] + 1, 1, v79);
            v116 = v79;
          }

          v82 = v79[2];
          v81 = v79[3];
          if (v82 >= v81 >> 1)
          {
            v79 = sub_23E889F50((v81 > 1), v82 + 1, 1, v79);
            v116 = v79;
          }

          v83 = v113;
          v84 = v114;
          v85 = __swift_mutable_project_boxed_opaque_existential_1(v112, v113);
          MEMORY[0x28223BE20](v85);
          v87 = &v89 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v88 + 16))(v87);
          sub_23E8F2C70(v82, v87, &v116, v83, v84);
          __swift_destroy_boxed_opaque_existential_1(v112);
          v78 += 40;
          --v77;
        }

        while (v77);
      }

      else
      {

        v79 = MEMORY[0x277D84F90];
      }

      v111 = v108;
      sub_23E8EBFB4(v79);
      sub_23E8EBFB4(v65);
      return v111;
    }
  }
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

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_23E880EFC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_23E880F50(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E558, &unk_23E907990);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23E880FC0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E558, &unk_23E907990);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23E881028(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
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

uint64_t sub_23E8810DC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_23E881140(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (BYTE5(a3) != 255)
  {
    return sub_23E881154(a1, a2, a3, BYTE5(a3));
  }

  return a1;
}

uint64_t sub_23E881154(uint64_t result, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 - 1 <= 1)
  {
  }

  return v4;
}

uint64_t sub_23E88116C(uint64_t a1, uint64_t a2)
{
  if (BYTE5(a2) != 255)
  {
    return sub_23E881180(a1, a2, BYTE5(a2));
  }

  return a1;
}

uint64_t sub_23E881180(uint64_t result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 - 1 <= 1)
  {
  }

  return v3;
}

uint64_t sub_23E881198(uint64_t a1, unsigned __int8 a2)
{
  if (a2 != 0xFF)
  {
    return sub_23E8811AC(a1, a2);
  }

  return a1;
}

uint64_t sub_23E8811AC(uint64_t result, unsigned __int8 a2)
{
  if (a2 - 1 <= 1)
  {
  }

  return v2;
}

uint64_t sub_23E8811C4(uint64_t result, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 != 0xFF)
  {
    return sub_23E881154(result, a2, a3, a4);
  }

  return result;
}

uint64_t sub_23E8811D8(uint64_t result, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 - 1 <= 1)
  {
  }

  return v4;
}

uint64_t sub_23E8811F0(uint64_t result, unsigned __int8 a2)
{
  if (a2 - 1 <= 1)
  {
  }

  return v2;
}

uint64_t sub_23E881208(uint64_t result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 - 1 <= 1)
  {
  }

  return v3;
}

uint64_t static Insets.== infix(_:_:)(float a1, float a2, float a3, float a4, float a5, float a6, float a7, float a8)
{
  v9 = a2 == a6 && a1 == a5;
  v10 = v9 && a3 == a7;
  if (a4 == a8)
  {
    return v10;
  }

  else
  {
    return 0;
  }
}

uint64_t Insets.hash(into:)(float a1, float a2, float a3, float a4)
{
  sub_23E900EE4();
  sub_23E900EE4();
  sub_23E900EE4();
  return sub_23E900EE4();
}

uint64_t Insets.hashValue.getter(float a1, float a2, float a3, float a4)
{
  sub_23E900EB4();
  Insets.hash(into:)(a1, a2, a3, a4);
  return sub_23E900F14();
}

uint64_t sub_23E881368()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_23E900EB4();
  Insets.hash(into:)(v1, v2, v3, v4);
  return sub_23E900F14();
}

uint64_t sub_23E8813DC(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  sub_23E900EB4();
  Insets.hash(into:)(v2, v3, v4, v5);
  return sub_23E900F14();
}

unint64_t sub_23E881444()
{
  result = qword_27E35E560;
  if (!qword_27E35E560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35E560);
  }

  return result;
}

unint64_t sub_23E8814D4(uint64_t a1)
{
  result = sub_23E8814FC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23E8814FC()
{
  result = qword_27E35E568;
  if (!qword_27E35E568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35E568);
  }

  return result;
}

__n128 __swift_memcpy16_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

unint64_t sub_23E881570()
{
  result = qword_27E35E570;
  if (!qword_27E35E570)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E35E578, qword_23E904420);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35E570);
  }

  return result;
}

unint64_t sub_23E8815EC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E590, &qword_23E905070);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E902EE0;
  *(inited + 32) = 1701869940;
  *(inited + 40) = 0xE400000000000000;
  sub_23E900C64();
  strcpy((inited + 88), "controlPoint1");
  *(inited + 102) = -4864;
  v1 = swift_initStackObject();
  *(v1 + 16) = xmmword_23E902EF0;
  *(v1 + 32) = 120;
  *(v1 + 40) = 0xE100000000000000;
  sub_23E900C64();
  *(v1 + 88) = 121;
  *(v1 + 96) = 0xE100000000000000;
  sub_23E900C64();
  sub_23E88F1F4(v1);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E598, &unk_23E905080);
  swift_arrayDestroy();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E5A0, &qword_23E902F38);
  sub_23E8819CC();
  sub_23E900C64();
  strcpy((inited + 144), "controlPoint2");
  *(inited + 158) = -4864;
  v2 = swift_initStackObject();
  *(v2 + 16) = xmmword_23E902EF0;
  *(v2 + 32) = 120;
  *(v2 + 40) = 0xE100000000000000;
  sub_23E900C64();
  *(v2 + 88) = 121;
  *(v2 + 96) = 0xE100000000000000;
  sub_23E900C64();
  sub_23E88F1F4(v2);
  swift_setDeallocating();
  swift_arrayDestroy();
  sub_23E900C64();
  v3 = sub_23E88F1F4(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  return v3;
}

unint64_t sub_23E8818AC@<X0>(unint64_t *a1@<X8>)
{
  result = sub_23E8815EC();
  *a1 = result;
  return result;
}

unint64_t sub_23E8818D4(uint64_t a1)
{
  result = sub_23E8818FC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23E8818FC()
{
  result = qword_27E35E580;
  if (!qword_27E35E580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35E580);
  }

  return result;
}

unint64_t sub_23E881950(uint64_t a1)
{
  result = sub_23E881978();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23E881978()
{
  result = qword_27E35E588;
  if (!qword_27E35E588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35E588);
  }

  return result;
}

unint64_t sub_23E8819CC()
{
  result = qword_27E35E5A8;
  if (!qword_27E35E5A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E35E5A0, &qword_23E902F38);
    sub_23E881570();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35E5A8);
  }

  return result;
}

AirPlayKit::CubicParameters __swiftcall CubicParameters.init(controlPoint1:controlPoint2:)(AirPlayKit::Anchor controlPoint1, AirPlayKit::Anchor controlPoint2)
{
  *v2 = controlPoint1.x;
  v2[1] = controlPoint1.y;
  v2[2] = controlPoint2.x;
  v2[3] = controlPoint2.y;
  result.controlPoint2.y = controlPoint2.y;
  result.controlPoint2.x = controlPoint2.x;
  result.controlPoint1.y = controlPoint1.y;
  result.controlPoint1.x = controlPoint1.x;
  return result;
}

uint64_t CubicParameters.hash(into:)()
{
  sub_23E900EE4();
  sub_23E900EE4();
  sub_23E900EE4();
  return sub_23E900EE4();
}

uint64_t CubicParameters.hashValue.getter()
{
  sub_23E900EB4();
  CubicParameters.hash(into:)();
  return sub_23E900F14();
}

uint64_t sub_23E881B2C()
{
  sub_23E900EB4();
  CubicParameters.hash(into:)();
  return sub_23E900F14();
}

uint64_t sub_23E881B7C(uint64_t a1)
{
  sub_23E900EB4();
  CubicParameters.hash(into:)();
  return sub_23E900F14();
}

BOOL _s10AirPlayKit15CubicParametersV2eeoiySbAC_ACtFZ_0(float *a1, float *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  return a1[3] == a2[3] && a1[2] == a2[2];
}

unint64_t sub_23E881C04()
{
  result = qword_27E35E5B0;
  if (!qword_27E35E5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35E5B0);
  }

  return result;
}

uint64_t ContainerContent.Child.id.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E438, &unk_23E907E20);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v31 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35E630, &qword_23E903300);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35E440, &unk_23E902C90);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v31 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E430, &unk_23E902C80);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v31 - v14;
  v16 = type metadata accessor for ContainerContent.Child(0);
  MEMORY[0x28223BE20](v16);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23E882004(v2, v18);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v20 = &unk_23E907E20;
      sub_23E87E3F0(v18, v6, &qword_27E35E438, &unk_23E907E20);
      v24 = sub_23E9006D4();
      (*(*(v24 - 8) + 16))(a1, v6, v24);
      v22 = v6;
      v23 = &qword_27E35E438;
      goto LABEL_6;
    }

    v26 = &qword_27E35E430;
    v27 = &unk_23E902C80;
    sub_23E87E3F0(v18, v15, &qword_27E35E430, &unk_23E902C80);
    v29 = sub_23E9006D4();
    (*(*(v29 - 8) + 16))(a1, v15, v29);
    v22 = v15;
LABEL_9:
    v23 = v26;
    v25 = v27;
    return sub_23E87E458(v22, v23, v25);
  }

  if (EnumCaseMultiPayload)
  {
    v26 = &unk_27E35E440;
    v27 = &unk_23E902C90;
    sub_23E87E3F0(v18, v12, &unk_27E35E440, &unk_23E902C90);
    v28 = sub_23E9006D4();
    (*(*(v28 - 8) + 16))(a1, v12, v28);
    v22 = v12;
    goto LABEL_9;
  }

  v20 = &qword_23E903300;
  sub_23E87E3F0(v18, v9, &unk_27E35E630, &qword_23E903300);
  v21 = sub_23E9006D4();
  (*(*(v21 - 8) + 16))(a1, v9, v21);
  v22 = v9;
  v23 = &unk_27E35E630;
LABEL_6:
  v25 = v20;
  return sub_23E87E458(v22, v23, v25);
}

uint64_t sub_23E882004(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContainerContent.Child(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_23E88206C()
{
  result = qword_27E35E5B8;
  if (!qword_27E35E5B8)
  {
    sub_23E9006D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35E5B8);
  }

  return result;
}

uint64_t sub_23E882150(uint64_t a1, uint64_t *a2)
{
  v3 = sub_23E900764();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  sub_23E900884();
  return sub_23E900754();
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void sub_23E882260(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = a2;
  v7 = a1;
  v31[0] = a1;
  v31[1] = a2;
  sub_23E882570();
  v8 = (sub_23E900BF4() + 16);
  if (*v8)
  {
    v9 = &v8[2 * *v8];
    v7 = *v9;
    v6 = v9[1];
  }

  else
  {
  }

  sub_23E8C5AD4(46, 0xE100000000000000, v7, v6);
  v10 = sub_23E900974();
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = MEMORY[0x23EF175C0](v10, v12, v14, v16);
  v19 = v18;

  sub_23E8C5AD4(40, 0xE100000000000000, a3, a4);
  v20 = sub_23E900974();
  v21 = MEMORY[0x23EF175C0](v20);
  v23 = v22;

  v24 = sub_23E900744();
  v25 = sub_23E900B14();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v31[0] = v27;
    *v26 = 67109634;
    v28 = pthread_self();
    *(v26 + 4) = pthread_mach_thread_np(v28);
    *(v26 + 8) = 2082;
    v29 = sub_23E887B9C(v17, v19, v31);

    *(v26 + 10) = v29;
    *(v26 + 18) = 2082;
    v30 = sub_23E887B9C(v21, v23, v31);

    *(v26 + 20) = v30;
    _os_log_impl(&dword_23E879000, v24, v25, "[%u] %{public}s::%{public}s", v26, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x23EF18560](v27, -1, -1);
    MEMORY[0x23EF18560](v26, -1, -1);
  }

  else
  {
  }
}

unint64_t sub_23E882570()
{
  result = qword_27E35E5C0;
  if (!qword_27E35E5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35E5C0);
  }

  return result;
}

uint64_t sub_23E8825E4@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 56);
  v5 = *(v3 + 64);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_23E888E00;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_23E8829CC(v4, v5);
}

uint64_t sub_23E882678(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_23E888DC8;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 56);
  v9 = *(v7 + 64);
  *(v7 + 56) = v6;
  *(v7 + 64) = v5;
  sub_23E8829CC(v3, v4);
  return sub_23E882A30(v8, v9);
}

uint64_t AirPlayOverlayCoordinator.onConnectionError.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 56);
  sub_23E8829CC(v1, *(v0 + 64));
  return v1;
}

uint64_t AirPlayOverlayCoordinator.onConnectionError.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 56);
  v6 = *(v2 + 64);
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return sub_23E882A30(v5, v6);
}

uint64_t sub_23E88282C@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 72);
  v5 = *(v3 + 80);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_23E888DC0;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_23E8829CC(v4, v5);
}

uint64_t sub_23E8828C0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_23E888DB8;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 72);
  v9 = *(v7 + 80);
  *(v7 + 72) = v6;
  *(v7 + 80) = v5;
  sub_23E8829CC(v3, v4);
  return sub_23E882A30(v8, v9);
}

uint64_t AirPlayOverlayCoordinator.onReady.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 72);
  sub_23E8829CC(v1, *(v0 + 80));
  return v1;
}

uint64_t sub_23E8829CC(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t AirPlayOverlayCoordinator.onReady.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 72);
  v6 = *(v2 + 80);
  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  return sub_23E882A30(v5, v6);
}

uint64_t sub_23E882A30(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t AirPlayOverlayCoordinator.__allocating_init(displayTreeBuilder:connectionProvider:)(void *a1, void *a2)
{
  v23 = a2;
  v22 = a1;
  v2 = sub_23E900794();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23E9005E4();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v21 - v11;
  v13 = NSTemporaryDirectory();
  sub_23E900884();

  sub_23E900594();

  (*(v7 + 16))(v10, v12, v6);
  sub_23E882D3C();
  (*(v3 + 104))(v5, *MEMORY[0x277D851D0], v2);
  v14 = sub_23E900B44();
  (*(v3 + 8))(v5, v2);
  type metadata accessor for RenderActionsFileLogger(0);
  swift_allocObject();
  v15 = sub_23E8E5768(v10, v14);

  v16 = v22;
  sub_23E8810DC(v22, v25);
  v17 = v23;
  sub_23E8810DC(v23, v24);
  v18 = swift_allocObject();
  v19 = sub_23E888284(v25, v24, v15, v18);
  __swift_destroy_boxed_opaque_existential_1(v17);
  __swift_destroy_boxed_opaque_existential_1(v16);
  (*(v7 + 8))(v12, v6);
  return v19;
}

unint64_t sub_23E882D3C()
{
  result = qword_27E35E5D0;
  if (!qword_27E35E5D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E35E5D0);
  }

  return result;
}

uint64_t AirPlayOverlayCoordinator.__allocating_init(displayTreeBuilder:connectionProvider:actionsLogger:)(void *a1, void *a2, void *a3)
{
  v7 = a3[3];
  v8 = a3[4];
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a3, v7);
  v10 = sub_23E8889DC(a1, a2, v9, v3, v7, v8);
  __swift_destroy_boxed_opaque_existential_1(a3);
  return v10;
}

uint64_t AirPlayOverlayCoordinator.init(displayTreeBuilder:connectionProvider:actionsLogger:)(void *a1, void *a2, void *a3)
{
  v7 = a3[3];
  v8 = a3[4];
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a3, v7);
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11);
  v13 = sub_23E88861C(a1, a2, v11, v3, v7, v8);
  __swift_destroy_boxed_opaque_existential_1(a3);
  return v13;
}

uint64_t sub_23E882F24()
{
  swift_beginAccess();

  v2 = sub_23E8BC8C4(v1);
  *(v0 + 48) = 0;

  *(v0 + 56) = sub_23E8C45C8(v2);

  return MEMORY[0x2822009F8](sub_23E882FDC, 0, 0);
}

uint64_t sub_23E882FDC()
{
  v1 = sub_23E88305C(*(v0 + 56));

  v2 = *(v0 + 8);

  return v2(v1);
}

void *sub_23E88305C(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v25 = MEMORY[0x277D84F90];
    sub_23E900D04();
    v4 = v1 + 56;
    v5 = sub_23E900C24();
    v6 = *(v1 + 36);
    result = objc_opt_self();
    v22 = result;
    v23 = v1;
    v7 = 0;
    v20 = v1 + 64;
    v21 = v6;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v1 + 32))
    {
      v9 = v5 >> 6;
      if ((*(v4 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_21;
      }

      if (v6 != *(v1 + 36))
      {
        goto LABEL_22;
      }

      v24 = v7;
      v6 = v4;

      v10 = sub_23E900854();
      v11 = sub_23E900854();

      v12 = [v22 resourceWithURL:v10 type:2 MIMEType:v11];

      sub_23E900CE4();
      sub_23E900D14();
      v1 = v23;
      sub_23E900D24();
      result = sub_23E900CF4();
      v8 = 1 << *(v23 + 32);
      if (v5 >= v8)
      {
        goto LABEL_23;
      }

      v13 = *(v6 + 8 * v9);
      if ((v13 & (1 << v5)) == 0)
      {
        goto LABEL_24;
      }

      v4 = v6;
      LODWORD(v6) = v21;
      if (v21 != *(v23 + 36))
      {
        goto LABEL_25;
      }

      v14 = v13 & (-2 << (v5 & 0x3F));
      if (v14)
      {
        v8 = __clz(__rbit64(v14)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v15 = v9 << 6;
        v16 = v9 + 1;
        v17 = (v20 + 8 * v9);
        while (v16 < (v8 + 63) >> 6)
        {
          v19 = *v17++;
          v18 = v19;
          v15 += 64;
          ++v16;
          if (v19)
          {
            result = sub_23E889730(v5, v21, 0);
            v8 = __clz(__rbit64(v18)) + v15;
            goto LABEL_4;
          }
        }

        result = sub_23E889730(v5, v21, 0);
      }

LABEL_4:
      v7 = v24 + 1;
      v5 = v8;
      if (v24 + 1 == v2)
      {
        return v25;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_23E883348(uint64_t a1, uint64_t a2)
{
  v2[18] = a1;
  v2[19] = a2;
  v5 = swift_task_alloc();
  v2[20] = v5;
  *v5 = v2;
  v5[1] = sub_23E8833FC;

  return sub_23E8BCB48((v2 + 10), a1, a2);
}

uint64_t sub_23E8833FC()
{

  return MEMORY[0x2822009F8](sub_23E8834F8, 0, 0);
}

uint64_t sub_23E8834F8()
{
  v1 = *(v0 + 96);
  *(v0 + 16) = *(v0 + 80);
  *(v0 + 32) = v1;
  v2 = *(v0 + 128);
  *(v0 + 48) = *(v0 + 112);
  *(v0 + 64) = v2;
  if (*(v0 + 24))
  {
    v9 = (*(v0 + 64) + **(v0 + 64));
    v3 = swift_task_alloc();
    *(v0 + 168) = v3;
    *v3 = v0;
    v3[1] = sub_23E88366C;
    v5 = *(v0 + 144);
    v4 = *(v0 + 152);

    return v9(v5, v4);
  }

  else
  {
    sub_23E8896DC();
    swift_allocError();
    *v7 = 1;
    swift_willThrow();
    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_23E88366C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 176) = v2;

  if (v2)
  {
    v7 = sub_23E883818;
  }

  else
  {
    *(v6 + 184) = a2;
    *(v6 + 192) = a1;
    v7 = sub_23E8837A0;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_23E8837A0()
{
  sub_23E87E458((v0 + 2), &qword_27E35E620, &qword_23E9032F0);
  v1 = v0[1];
  v3 = v0[23];
  v2 = v0[24];

  return v1(v2, v3);
}

uint64_t sub_23E883818()
{
  sub_23E87E458(v0 + 16, &qword_27E35E620, &qword_23E9032F0);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23E8838AC()
{
  v9 = v0;
  v1 = *(v0[5] + 216);
  v0[6] = v1;
  os_unfair_lock_lock((v1 + 36));
  sub_23E883EA4((v1 + 16), &v8);
  os_unfair_lock_unlock((v1 + 36));
  v2 = v0[5];
  v0[7] = v8;
  v3 = v2[19];
  v4 = v2[20];
  __swift_project_boxed_opaque_existential_1(v2 + 16, v3);
  v7 = (*(v4 + 48) + **(v4 + 48));
  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_23E883A44;

  return v7(v3, v4);
}

uint64_t sub_23E883A44()
{

  return MEMORY[0x2822009F8](sub_23E883B40, 0, 0);
}

uint64_t sub_23E883B40()
{
  v1 = *(v0 + 40);
  v3 = v1[24];
  v2 = v1[25];
  __swift_project_boxed_opaque_existential_1(v1 + 21, v3);
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *v4 = v0;
  v4[1] = sub_23E883C04;

  return AirPlayOverlayDisplayTreeProtocol.activate(with:)((v1 + 2), v3, v2);
}

uint64_t sub_23E883C04()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_23E883E40;
  }

  else
  {
    v2 = sub_23E883D18;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_23E883D18()
{
  v1 = v0[10];
  v3 = v0[6];
  v2 = v0[7];
  sub_23E8B543C();
  *(swift_task_alloc() + 16) = v2;
  os_unfair_lock_lock(v3 + 9);
  sub_23E8893A8(&v3[4]);
  os_unfair_lock_unlock(v3 + 9);
  if (!v1)
  {
    v4 = v0[5];

    swift_beginAccess();
    v5 = *(v4 + 72);
    if (v5)
    {
      v6 = *(v0[5] + 80);

      v5(v7);
      swift_unknownObjectRelease();
      sub_23E882A30(v5, v6);
    }

    else
    {
      swift_unknownObjectRelease();
    }

    v8 = v0[1];

    v8();
  }
}

uint64_t sub_23E883E40()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23E883EA4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *(a1 + 16);
  if (v2 > 1)
  {
    if (v2 != 2 && v2 == 3)
    {
      sub_23E889400();
      swift_allocError();
      v5 = 2;
LABEL_10:
      *v4 = v5;
      return swift_willThrow();
    }

LABEL_9:
    sub_23E889400();
    swift_allocError();
    v5 = 1;
    goto LABEL_10;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_9;
  }

  v8 = *a1;
  v9 = a1[1];
  if ([swift_unknownObjectRetain() playerTimeControlStatus] == 2)
  {
    sub_23E889028(v8, v9, 1u);
    *a1 = v8;
    a1[1] = 0;
    *(a1 + 16) = 2;
    *a2 = v8;
    return swift_unknownObjectRetain();
  }

  else
  {
    sub_23E889400();
    swift_allocError();
    *v11 = 1;
    swift_willThrow();
    return swift_unknownObjectRelease();
  }
}

uint64_t sub_23E883FDC()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_23E88406C;

  return sub_23E88388C();
}

uint64_t sub_23E88406C()
{
  v2 = *v1;
  *(v2 + 32) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_23E8841A0, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_23E8841A0()
{
  v17 = v0;
  if (qword_27E35E178 != -1)
  {
    swift_once();
  }

  v1 = v0[4];
  v2 = sub_23E900764();
  __swift_project_value_buffer(v2, qword_27E367138);
  v3 = v1;
  v4 = sub_23E900744();
  v5 = sub_23E900B04();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[4];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136446210;
    v0[2] = v7;
    v10 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E5F0, "^K");
    v11 = sub_23E9008D4();
    v13 = sub_23E887B9C(v11, v12, &v16);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_23E879000, v4, v5, "Unable to handle time control status change: %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x23EF18560](v9, -1, -1);
    MEMORY[0x23EF18560](v8, -1, -1);
  }

  else
  {
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_23E884370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E5E0, &qword_23E905750);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_23E8891B4(a3, v25 - v10, &qword_27E35E5E0, &qword_23E905750);
  v12 = sub_23E900A74();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_23E87E458(v11, &qword_27E35E5E0, &qword_23E905750);
  }

  else
  {
    sub_23E900A64();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_23E900A34();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_23E9008E4() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_23E87E458(a3, &qword_27E35E5E0, &qword_23E905750);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_23E87E458(a3, &qword_27E35E5E0, &qword_23E905750);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

void *AirPlayOverlayCoordinator.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  sub_23E882A30(v0[7], v0[8]);
  sub_23E882A30(v0[9], v0[10]);
  __swift_destroy_boxed_opaque_existential_1(v0 + 11);
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 21);

  sub_23E87E458((v0 + 28), &unk_27E35F5B0, &unk_23E903040);
  return v0;
}

uint64_t AirPlayOverlayCoordinator.__deallocating_deinit()
{
  AirPlayOverlayCoordinator.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_23E884734()
{
  v1 = *(*(v0 + 16) + 216);
  os_unfair_lock_lock(v1 + 9);
  sub_23E88938C(&v1[4]);
  os_unfair_lock_unlock(v1 + 9);
  if (qword_27E35E178 != -1)
  {
    swift_once();
  }

  v2 = sub_23E900764();
  __swift_project_value_buffer(v2, qword_27E367138);
  sub_23E882260(0xD000000000000068, 0x800000023E9087B0, 0xD000000000000014, 0x800000023E908840);
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_23E8848AC;

  return sub_23E88388C();
}

uint64_t sub_23E8848AC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_23E8849A0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) - 2 >= 3)
  {
    v4 = *a1;
    if (*(a1 + 16))
    {
    }

    v5 = swift_allocObject();
    swift_weakInit();
    v8[4] = sub_23E88948C;
    v8[5] = v5;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 1107296256;
    v8[2] = sub_23E8906D8;
    v8[3] = &block_descriptor;
    v6 = _Block_copy(v8);

    v7 = [v4 beginObserveringTimeControlStatusWithChangeHandler_];
    _Block_release(v6);
    *a1 = v4;
    *(a1 + 8) = v7;
    *(a1 + 16) = 1;
  }

  else
  {
    sub_23E889400();
    swift_allocError();
    *v2 = 0;
    swift_willThrow();
  }
}

uint64_t sub_23E884AF8(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E5E0, &qword_23E905750);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = sub_23E900A74();
    (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
    v7 = swift_allocObject();
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = v5;
    sub_23E884370(0, 0, v3, &unk_23E9032B8, v7);
  }

  return result;
}

uint64_t AirPlayOverlayCoordinator.didConnect(adaptor:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E5E0, &qword_23E905750);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - v4;
  v6 = sub_23E900A74();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_23E8810DC(a1, v10);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v1;
  sub_23E881028(v10, (v7 + 5));

  sub_23E884370(0, 0, v5, &unk_23E903058, v7);
}

uint64_t sub_23E884D40()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_23E884DDC;

  return sub_23E884714();
}

uint64_t sub_23E884DDC()
{
  v2 = *v1;
  *(v2 + 32) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_23E884F10, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_23E884F10()
{
  v17 = v0;
  if (qword_27E35E178 != -1)
  {
    swift_once();
  }

  v1 = v0[4];
  v2 = sub_23E900764();
  __swift_project_value_buffer(v2, qword_27E367138);
  v3 = v1;
  v4 = sub_23E900744();
  v5 = sub_23E900B04();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[4];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136446210;
    v0[2] = v7;
    v10 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E5F0, "^K");
    v11 = sub_23E9008D4();
    v13 = sub_23E887B9C(v11, v12, &v16);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_23E879000, v4, v5, "Unable to handle didConnect event: %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x23EF18560](v9, -1, -1);
    MEMORY[0x23EF18560](v8, -1, -1);
  }

  else
  {
  }

  v14 = v0[1];

  return v14();
}

uint64_t AirPlayOverlayCoordinator.adaptor(_:connectionDidFailWithError:)(uint64_t a1, void *a2)
{
  v3 = v2;
  if (qword_27E35E178 != -1)
  {
    swift_once();
  }

  v6 = sub_23E900764();
  __swift_project_value_buffer(v6, qword_27E367138);
  sub_23E8810DC(a1, v25);
  v7 = a2;
  v8 = sub_23E900744();
  v9 = sub_23E900B04();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v24 = v11;
    *v10 = 136446466;
    sub_23E8810DC(v25, &v23);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E5E8, &unk_23E903060);
    v12 = sub_23E9008D4();
    v14 = v13;
    __swift_destroy_boxed_opaque_existential_1(v25);
    v15 = sub_23E887B9C(v12, v14, &v24);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2082;
    v23 = a2;
    v16 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E5F0, "^K");
    v17 = sub_23E9008D4();
    v19 = sub_23E887B9C(v17, v18, &v24);

    *(v10 + 14) = v19;
    _os_log_impl(&dword_23E879000, v8, v9, "Unable to connect adaptor %{public}s: %{public}s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EF18560](v11, -1, -1);
    MEMORY[0x23EF18560](v10, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(v25);
  }

  result = swift_beginAccess();
  v21 = *(v3 + 56);
  if (v21)
  {
    v22 = *(v3 + 64);

    v21(a2);
    return sub_23E882A30(v21, v22);
  }

  return result;
}

void AirPlayOverlayCoordinator.didDisconnect(adaptor:)()
{
  v1 = *(v0 + 216);
  os_unfair_lock_lock((v1 + 36));
  sub_23E888BA4((v1 + 16));

  os_unfair_lock_unlock((v1 + 36));
}

uint64_t sub_23E885394(uint64_t *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E5E0, &qword_23E905750);
  result = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11 - v6;
  v8 = *a1;
  if (*(a1 + 16) <= 1u)
  {
    if (*(a1 + 16))
    {
    }

    goto LABEL_6;
  }

  if (*(a1 + 16) - 2 < 2)
  {
LABEL_6:
    *a1 = v8;
    a1[1] = 0;
    *(a1 + 16) = 0;
    v9 = sub_23E900A74();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = a2;

    sub_23E884370(0, 0, v7, &unk_23E903278, v10);
  }

  return result;
}

uint64_t sub_23E885508()
{
  if (qword_27E35E178 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = sub_23E900764();
  __swift_project_value_buffer(v2, qword_27E367138);
  sub_23E882260(0xD000000000000068, 0x800000023E9087B0, 0xD000000000000017, 0x800000023E908820);
  v3 = v1[19];
  v4 = v1[20];
  __swift_project_boxed_opaque_existential_1(v1 + 16, v3);
  v7 = (*(v4 + 32) + **(v4 + 32));
  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_23E8856B8;

  return v7(v3, v4);
}

uint64_t sub_23E8856B8(uint64_t a1)
{
  *(*v1 + 32) = a1;

  return MEMORY[0x2822009F8](sub_23E8857B8, 0, 0);
}

uint64_t sub_23E8857B8()
{
  v1 = *(v0 + 16);
  v2 = v1[19];
  v3 = v1[20];
  __swift_project_boxed_opaque_existential_1(v1 + 16, v2);
  v6 = (*(v3 + 56) + **(v3 + 56));
  v4 = swift_task_alloc();
  *(v0 + 40) = v4;
  *v4 = v0;
  v4[1] = sub_23E8858E0;

  return v6(v2, v3);
}

uint64_t sub_23E8858E0()
{

  return MEMORY[0x2822009F8](sub_23E8859DC, 0, 0);
}

uint64_t sub_23E8859DC()
{
  v1 = v0[2];
  v2 = v1[19];
  v3 = v1[20];
  __swift_project_boxed_opaque_existential_1(v1 + 16, v2);
  v7 = (*(v3 + 8) + **(v3 + 8));
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_23E885B0C;
  v5 = v0[4];

  return v7(v5, v2, v3);
}

uint64_t sub_23E885B0C()
{

  return MEMORY[0x2822009F8](sub_23E885C24, 0, 0);
}

uint64_t sub_23E885C24()
{
  v1 = *(v0 + 16);
  v2 = v1[24];
  v3 = v1[25];
  __swift_project_boxed_opaque_existential_1(v1 + 21, v2);
  (*(v3 + 56))(v2, v3);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_23E885CB8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E5E0, &qword_23E905750);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - v4;
  v6 = sub_23E900A74();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_23E8810DC(a1, v10);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v1;
  sub_23E881028(v10, (v7 + 5));

  sub_23E884370(0, 0, v5, &unk_23E903268, v7);
}

void sub_23E885DE4()
{
  v1 = *(v0 + 216);
  os_unfair_lock_lock((v1 + 36));
  sub_23E889A98((v1 + 16));

  os_unfair_lock_unlock((v1 + 36));
}

BOOL AirPlayOverlayCoordinator.isActive.getter()
{
  v1 = *(v0 + 216);
  os_unfair_lock_lock((v1 + 36));
  v2 = *(v1 + 32) == 3;
  os_unfair_lock_unlock((v1 + 36));
  return v2;
}

void AirPlayOverlayCoordinator.activate(with:)()
{
  v1 = *(v0 + 216);
  os_unfair_lock_lock(v1 + 9);
  sub_23E888BC0(&v1[4]);
  os_unfair_lock_unlock(v1 + 9);
}

uint64_t sub_23E885ED0(uint64_t result, uint64_t a2, void *a3)
{
  if (*(result + 16) == 4 && *result == 0)
  {
    v15 = v3;
    v16 = v4;
    *result = a2;
    *(result + 8) = 0;
    *(result + 16) = 0;
    v5 = a3[14];
    v6 = a3[15];
    __swift_project_boxed_opaque_existential_1(a3 + 11, v5);
    v8 = *(v6 + 40);
    v9 = swift_unknownObjectRetain();
    v8(v9, v5, v6);
    sub_23E8891B4((a3 + 28), v12, &unk_27E35F5B0, &unk_23E903040);
    v10 = v13;
    if (v13)
    {
      v11 = v14;
      __swift_project_boxed_opaque_existential_1(v12, v13);
      (*(v11 + 8))(v10, v11);
      return __swift_destroy_boxed_opaque_existential_1(v12);
    }

    else
    {
      return sub_23E87E458(v12, &unk_27E35F5B0, &unk_23E903040);
    }
  }

  return result;
}

Swift::Void __swiftcall AirPlayOverlayCoordinator.deactivate()()
{
  v1 = *(v0 + 216);
  os_unfair_lock_lock(v1 + 9);
  sub_23E888BDC(&v1[4]);

  os_unfair_lock_unlock(v1 + 9);
}

uint64_t sub_23E886050(uint64_t a1, void *a2)
{
  sub_23E889028(*a1, *(a1 + 8), *(a1 + 16));
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 4;
  v4 = a2[14];
  v5 = a2[15];
  __swift_project_boxed_opaque_existential_1(a2 + 11, v4);
  (*(v5 + 48))(v4, v5);
  v6 = a2[24];
  v7 = a2[25];
  __swift_project_boxed_opaque_existential_1(a2 + 21, v6);
  (*(v7 + 48))(v6, v7);
  sub_23E8891B4((a2 + 28), v11, &unk_27E35F5B0, &unk_23E903040);
  v8 = v12;
  if (!v12)
  {
    return sub_23E87E458(v11, &unk_27E35F5B0, &unk_23E903040);
  }

  v9 = v13;
  __swift_project_boxed_opaque_existential_1(v11, v12);
  (*(v9 + 16))(v8, v9);
  return __swift_destroy_boxed_opaque_existential_1(v11);
}

uint64_t sub_23E8861A8()
{
  v1 = *(v0 + 16);
  v2 = v1[14];
  v3 = v1[15];
  __swift_project_boxed_opaque_existential_1(v1 + 11, v2);
  v6 = (*(v3 + 56) + **(v3 + 56));
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_23E8848AC;

  return v6(v2, v3);
}

BOOL sub_23E8862D0()
{
  v1 = *(*v0 + 216);
  os_unfair_lock_lock((v1 + 36));
  v2 = *(v1 + 32) == 3;
  os_unfair_lock_unlock((v1 + 36));
  return v2;
}

void sub_23E886314()
{
  v1 = *(*v0 + 216);
  os_unfair_lock_lock(v1 + 9);
  sub_23E889AFC(&v1[4]);
  os_unfair_lock_unlock(v1 + 9);
}

void sub_23E88636C()
{
  v1 = *(*v0 + 216);
  os_unfair_lock_lock(v1 + 9);
  sub_23E889A80(&v1[4]);

  os_unfair_lock_unlock(v1 + 9);
}

uint64_t sub_23E8863EC()
{
  v1 = *(v0 + 16);
  v2 = v1[14];
  v3 = v1[15];
  __swift_project_boxed_opaque_existential_1(v1 + 11, v2);
  v6 = (*(v3 + 56) + **(v3 + 56));
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_23E889A7C;

  return v6(v2, v3);
}

Swift::Void __swiftcall AirPlayOverlayCoordinator.setNeedsUpdate()()
{
  v1 = v0[24];
  v2 = v0[25];
  __swift_project_boxed_opaque_existential_1(v0 + 21, v1);
  (*(*(v2 + 8) + 8))(v1);
}

uint64_t sub_23E886568()
{
  v1 = *v0;
  v2 = *(*v0 + 192);
  v3 = *(*v0 + 200);
  __swift_project_boxed_opaque_existential_1((v1 + 168), v2);
  return (*(*(v3 + 8) + 8))(v2);
}

uint64_t AirPlayOverlayCoordinator.register(assets:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_23E8865D8, 0, 0);
}

uint64_t sub_23E8865D8()
{
  v1 = v0[3];
  v2 = v1[19];
  v3 = v1[20];
  __swift_project_boxed_opaque_existential_1(v1 + 16, v2);
  v7 = (*(v3 + 8) + **(v3 + 8));
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_23E886708;
  v5 = v0[2];

  return v7(v5, v2, v3);
}

uint64_t sub_23E886708()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t AirPlayOverlayCoordinator.unregisterAsset(identifier:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_23E886820, 0, 0);
}

uint64_t sub_23E886820()
{
  v1 = v0[4];
  v2 = v1[19];
  v3 = v1[20];
  __swift_project_boxed_opaque_existential_1(v1 + 16, v2);
  v8 = (*(v3 + 16) + **(v3 + 16));
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_23E886950;
  v6 = v0[2];
  v5 = v0[3];

  return v8(v6, v5, v2, v3);
}

uint64_t sub_23E886950()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t AirPlayOverlayCoordinator.filteredAssets(by:)(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 32) = a1;
  return MEMORY[0x2822009F8](sub_23E886A68, 0, 0);
}

uint64_t sub_23E886A68()
{
  v1 = *(v0 + 16);
  v2 = v1[19];
  v3 = v1[20];
  __swift_project_boxed_opaque_existential_1(v1 + 16, v2);
  v7 = (*(v3 + 24) + **(v3 + 24));
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_23E886B98;
  v5 = *(v0 + 32);

  return v7(v5, v2, v3);
}

uint64_t sub_23E886B98(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_23E886CB4()
{
  v1 = *(v0 + 16);
  v2 = v1[19];
  v3 = v1[20];
  __swift_project_boxed_opaque_existential_1(v1 + 16, v2);
  v6 = (*(v3 + 32) + **(v3 + 32));
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_23E889AEC;

  return v6(v2, v3);
}

uint64_t AirPlayOverlayCoordinator.queryAsset(identifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_23E886E00, 0, 0);
}

uint64_t sub_23E886E00()
{
  v1 = v0[5];
  v2 = v1[19];
  v3 = v1[20];
  __swift_project_boxed_opaque_existential_1(v1 + 16, v2);
  v9 = (*(v3 + 40) + **(v3 + 40));
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_23E886F34;
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[2];

  return v9(v7, v5, v6, v2, v3);
}

uint64_t sub_23E886F34()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_23E887048()
{
  v1 = *(v0 + 16);
  v2 = v1[19];
  v3 = v1[20];
  __swift_project_boxed_opaque_existential_1(v1 + 16, v2);
  v6 = (*(v3 + 48) + **(v3 + 48));
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_23E8848AC;

  return v6(v2, v3);
}

uint64_t sub_23E887190()
{
  v1 = *(v0 + 16);
  v2 = v1[19];
  v3 = v1[20];
  __swift_project_boxed_opaque_existential_1(v1 + 16, v2);
  v6 = (*(v3 + 56) + **(v3 + 56));
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_23E889A7C;

  return v6(v2, v3);
}

uint64_t sub_23E8872B8(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_23E8872DC, 0, 0);
}

uint64_t sub_23E8872DC()
{
  v1 = v0[3];
  v2 = v1[19];
  v3 = v1[20];
  __swift_project_boxed_opaque_existential_1(v1 + 16, v2);
  v7 = (*(v3 + 8) + **(v3 + 8));
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_23E889ACC;
  v5 = v0[2];

  return v7(v5, v2, v3);
}

uint64_t sub_23E88740C(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *v2;
  return MEMORY[0x2822009F8](sub_23E887434, 0, 0);
}

uint64_t sub_23E887434()
{
  v1 = v0[4];
  v2 = v1[19];
  v3 = v1[20];
  __swift_project_boxed_opaque_existential_1(v1 + 16, v2);
  v8 = (*(v3 + 16) + **(v3 + 16));
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_23E889AD0;
  v6 = v0[2];
  v5 = v0[3];

  return v8(v6, v5, v2, v3);
}

uint64_t sub_23E887564(char a1)
{
  *(v2 + 32) = a1;
  *(v2 + 16) = *v1;
  return MEMORY[0x2822009F8](sub_23E88758C, 0, 0);
}

uint64_t sub_23E88758C()
{
  v1 = *(v0 + 16);
  v2 = v1[19];
  v3 = v1[20];
  __swift_project_boxed_opaque_existential_1(v1 + 16, v2);
  v7 = (*(v3 + 24) + **(v3 + 24));
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_23E889AEC;
  v5 = *(v0 + 32);

  return v7(v5, v2, v3);
}

uint64_t sub_23E8876E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a1;
  v4[3] = a2;
  v5 = *v3;
  v4[4] = a3;
  v4[5] = v5;
  return MEMORY[0x2822009F8](sub_23E887708, 0, 0);
}

uint64_t sub_23E887708()
{
  v1 = v0[5];
  v2 = v1[19];
  v3 = v1[20];
  __swift_project_boxed_opaque_existential_1(v1 + 16, v2);
  v9 = (*(v3 + 40) + **(v3 + 40));
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_23E889AD4;
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[2];

  return v9(v7, v5, v6, v2, v3);
}

uint64_t sub_23E887860()
{
  v1 = *(v0 + 16);
  v2 = v1[19];
  v3 = v1[20];
  __swift_project_boxed_opaque_existential_1(v1 + 16, v2);
  v6 = (*(v3 + 48) + **(v3 + 48));
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_23E889A7C;

  return v6(v2, v3);
}

uint64_t sub_23E8879AC(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_23E887AA4;

  return v6(a1);
}

uint64_t sub_23E887AA4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_23E887B9C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_23E887C68(v11, 0, 0, 1, a1, a2);
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
    sub_23E889154(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_23E887C68(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_23E887D74(a5, a6);
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
    result = sub_23E900CD4();
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

void *sub_23E887D74(uint64_t a1, unint64_t a2)
{
  v3 = sub_23E887DC0(a1, a2);
  sub_23E887EF0(&unk_28511BB28);
  return v3;
}

void *sub_23E887DC0(uint64_t a1, unint64_t a2)
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

  v6 = sub_23E887FDC(v5, 0);
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

  result = sub_23E900CD4();
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
        v10 = sub_23E900944();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_23E887FDC(v10, 0);
        result = sub_23E900CA4();
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

uint64_t sub_23E887EF0(uint64_t result)
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

  result = sub_23E888050(result, v11, 1, v3);
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

void *sub_23E887FDC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E5F8, &qword_23E903280);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_23E888050(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E5F8, &qword_23E903280);
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

uint64_t sub_23E888144(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = &type metadata for DispatchSourceTimeProvider;
  v17 = &off_28511CB58;
  v13 = type metadata accessor for AirPlayOverlayAdaptor();
  v14 = &protocol witness table for AirPlayOverlayAdaptor;
  *&v12 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E628, &qword_23E9032F8);
  v6 = swift_allocObject();
  *(v6 + 68) = 0;
  *(v6 + 16) = 0u;
  *(v6 + 32) = 0u;
  *(v6 + 48) = 0u;
  *(v6 + 64) = 2;
  *(a3 + 136) = v6;
  *(a3 + 144) = 0;
  v7 = OBJC_IVAR____TtC10AirPlayKit25AirPlayOverlayDisplayTree_rootNode;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35E630, &qword_23E903300);
  (*(*(v8 - 8) + 56))(a3 + v7, 1, 1, v8);
  v9 = (a3 + OBJC_IVAR____TtC10AirPlayKit25AirPlayOverlayDisplayTree_onRootNodeUpdated);
  *v9 = 0;
  v9[1] = 0;
  sub_23E881028(&v12, a3 + 16);
  v10 = *(a2 + 16);
  *(a3 + 56) = *a2;
  *(a3 + 72) = v10;
  *(a3 + 88) = *(a2 + 32);
  sub_23E881028(&v15, a3 + 96);
  return a3;
}

uint64_t sub_23E888284(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v33 = type metadata accessor for RenderActionsFileLogger(0);
  v34 = &protocol witness table for RenderActionsFileLogger;
  *&v32 = a3;
  *(a4 + 56) = 0u;
  *(a4 + 72) = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E608, &unk_23E9032C0);
  v7 = swift_allocObject();
  *(v7 + 36) = 0;
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  *(v7 + 32) = 4;
  *(a4 + 216) = v7;
  type metadata accessor for RemoteInspectorCoordinator();
  swift_allocObject();
  v8 = sub_23E8B573C();
  sub_23E8810DC(a2, &v29);
  v25 = type metadata accessor for AirPlayOverlayAdaptor();
  v9 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E610, &qword_23E905A40);
  v10 = swift_allocObject();
  *(v10 + 48) = 0;
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  *(v10 + 32) = 0;
  *(v10 + 40) = 0xC000000000000000;
  *(v9 + 56) = v10;
  *(v9 + 72) = 0;
  swift_unknownObjectWeakInit();
  sub_23E881028(&v29, v9 + 16);
  sub_23E8810DC(&v32, &v29);
  v11 = type metadata accessor for AirPlayOverlayDisplayTree(0);
  v12 = swift_allocObject();
  v13 = sub_23E888144(v9, &v29, v12);
  sub_23E8810DC(&v32, &v29);
  v28[3] = v25;
  v28[4] = &protocol witness table for AirPlayOverlayAdaptor;
  v28[0] = v9;
  v14 = type metadata accessor for AirPlayOverlayAssetStore();
  v15 = swift_allocObject();
  swift_retain_n();
  swift_defaultActor_initialize();
  sub_23E8810DC(v28, v15 + 112);
  sub_23E8891B4(&v29, v15 + 152, &unk_27E35F5B0, &unk_23E903040);
  v16 = sub_23E88F918(MEMORY[0x277D84F90]);
  sub_23E87E458(&v29, &unk_27E35F5B0, &unk_23E903040);
  __swift_destroy_boxed_opaque_existential_1(v28);
  *(v15 + 192) = v16;
  sub_23E8810DC(a1, a4 + 16);
  *(a4 + 112) = v25;
  *(a4 + 120) = &protocol witness table for AirPlayOverlayAdaptor;
  *(a4 + 88) = v9;
  *(a4 + 152) = v14;
  *(a4 + 160) = &off_28511E938;
  *(a4 + 128) = v15;
  v30 = v11;
  v31 = &off_28511FBF8;
  *&v29 = v13;

  __swift_destroy_boxed_opaque_existential_1(a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  sub_23E881028(&v29, a4 + 168);
  *(a4 + 208) = v8;
  sub_23E881028(&v32, a4 + 224);
  swift_beginAccess();
  *(v9 + 72) = &protocol witness table for AirPlayOverlayCoordinator;
  swift_unknownObjectWeakAssign();

  v17 = (v13 + OBJC_IVAR____TtC10AirPlayKit25AirPlayOverlayDisplayTree_onRootNodeUpdated);
  swift_beginAccess();
  v18 = *v17;
  v19 = v17[1];
  *v17 = sub_23E889AF8;
  v17[1] = v8;

  sub_23E882A30(v18, v19);

  v20 = v8[12];
  v21 = v8[13];
  v8[12] = &unk_23E903308;
  v8[13] = v15;

  sub_23E882A30(v20, v21);
  v22 = v8[14];
  v23 = v8[15];
  v8[14] = &unk_23E903310;
  v8[15] = v15;
  sub_23E882A30(v22, v23);

  return a4;
}

uint64_t sub_23E88861C(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v37 = a5;
  v38 = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v36);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1, a3, a5);
  *(a4 + 56) = 0u;
  *(a4 + 72) = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E608, &unk_23E9032C0);
  v11 = swift_allocObject();
  *(v11 + 36) = 0;
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  *(v11 + 32) = 4;
  *(a4 + 216) = v11;
  type metadata accessor for RemoteInspectorCoordinator();
  swift_allocObject();
  v12 = sub_23E8B573C();
  sub_23E8810DC(a2, &v33);
  v29 = type metadata accessor for AirPlayOverlayAdaptor();
  v13 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E610, &qword_23E905A40);
  v14 = swift_allocObject();
  *(v14 + 48) = 0;
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  *(v14 + 32) = 0;
  *(v14 + 40) = 0xC000000000000000;
  *(v13 + 56) = v14;
  *(v13 + 72) = 0;
  swift_unknownObjectWeakInit();
  sub_23E881028(&v33, v13 + 16);
  sub_23E8810DC(&v36, &v33);
  v15 = type metadata accessor for AirPlayOverlayDisplayTree(0);
  v16 = swift_allocObject();
  v17 = sub_23E888144(v13, &v33, v16);
  sub_23E8810DC(&v36, &v33);
  v32[3] = v29;
  v32[4] = &protocol witness table for AirPlayOverlayAdaptor;
  v32[0] = v13;
  v18 = type metadata accessor for AirPlayOverlayAssetStore();
  v19 = swift_allocObject();
  swift_retain_n();
  swift_defaultActor_initialize();
  sub_23E8810DC(v32, v19 + 112);
  sub_23E8891B4(&v33, v19 + 152, &unk_27E35F5B0, &unk_23E903040);
  v20 = sub_23E88F918(MEMORY[0x277D84F90]);
  sub_23E87E458(&v33, &unk_27E35F5B0, &unk_23E903040);
  __swift_destroy_boxed_opaque_existential_1(v32);
  *(v19 + 192) = v20;
  sub_23E8810DC(a1, a4 + 16);
  *(a4 + 112) = v29;
  *(a4 + 120) = &protocol witness table for AirPlayOverlayAdaptor;
  *(a4 + 88) = v13;
  *(a4 + 152) = v18;
  *(a4 + 160) = &off_28511E938;
  *(a4 + 128) = v19;
  v34 = v15;
  v35 = &off_28511FBF8;
  *&v33 = v17;

  __swift_destroy_boxed_opaque_existential_1(a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  sub_23E881028(&v33, a4 + 168);
  *(a4 + 208) = v12;
  sub_23E881028(&v36, a4 + 224);
  swift_beginAccess();
  *(v13 + 72) = &protocol witness table for AirPlayOverlayCoordinator;
  swift_unknownObjectWeakAssign();

  v21 = (v17 + OBJC_IVAR____TtC10AirPlayKit25AirPlayOverlayDisplayTree_onRootNodeUpdated);
  swift_beginAccess();
  v22 = *v21;
  v23 = v21[1];
  *v21 = sub_23E8895A0;
  v21[1] = v12;

  sub_23E882A30(v22, v23);

  v24 = v12[12];
  v25 = v12[13];
  v12[12] = &unk_23E9032D8;
  v12[13] = v19;

  sub_23E882A30(v24, v25);
  v26 = v12[14];
  v27 = v12[15];
  v12[14] = &unk_23E9032E8;
  v12[15] = v19;
  sub_23E882A30(v26, v27);

  return a4;
}

uint64_t sub_23E8889DC(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  (*(v11 + 16))(v13, a3, a5);
  return sub_23E88861C(a1, a2, v13, v14, a5, a6);
}

uint64_t sub_23E888AE4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23E889AD8;

  return sub_23E884D40();
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10AirPlayKit0aB18OverlayCoordinatorC5StateO(uint64_t a1)
{
  if ((*(a1 + 16) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_23E888CCC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_23E888D14(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

uint64_t sub_23E888D58(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    LOBYTE(a2) = 4;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_23E888D80()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23E888DC8(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t objectdestroyTm()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1((v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_23E888E74()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23E888F34;

  return sub_23E884D40();
}

uint64_t sub_23E888F34()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_23E889028(uint64_t a1, void *a2, unsigned __int8 a3)
{
  if (a3 > 1u)
  {
    if (a3 != 2 && a3 != 3)
    {
      return;
    }
  }

  else if (a3)
  {
    if (a3 == 1)
    {
      swift_unknownObjectRelease();
    }

    return;
  }

  swift_unknownObjectRelease();
}

uint64_t sub_23E8890A0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_23E889AD8;

  return sub_23E8854E8(a1, v4, v5, v6);
}

uint64_t sub_23E889154(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_23E8891B4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_23E88921C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23E889AD8;

  return sub_23E8879AC(a1, v4);
}

uint64_t sub_23E8892D4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23E888F34;

  return sub_23E8879AC(a1, v4);
}

uint64_t sub_23E8893A8(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_23E889028(*a1, *(a1 + 8), *(a1 + 16));
  *a1 = v3;
  *(a1 + 8) = 0;
  *(a1 + 16) = 3;
  return swift_unknownObjectRetain();
}

unint64_t sub_23E889400()
{
  result = qword_27E35E600;
  if (!qword_27E35E600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35E600);
  }

  return result;
}

uint64_t sub_23E889454()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_46Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23E8894EC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23E889AD8;

  return sub_23E883FDC();
}

uint64_t sub_23E8895A4()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_23E889ADC;

  return sub_23E882F04(v0);
}

uint64_t sub_23E889634(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23E889AF0;

  return sub_23E883348(a1, a2);
}

unint64_t sub_23E8896DC()
{
  result = qword_27E35E618;
  if (!qword_27E35E618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35E618);
  }

  return result;
}

uint64_t sub_23E889730(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_23E88973C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_23E8897CC;

  return sub_23E882F04(v0);
}

uint64_t sub_23E8897CC(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_23E8898C8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23E889970;

  return sub_23E883348(a1, a2);
}

uint64_t sub_23E889970(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t static RenderNode<>.container(identifier:children:flow:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a3;
  v8 = sub_23E9006D4();
  (*(*(v8 - 8) + 16))(a4, a1, v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35E630, &qword_23E903300);
  v10 = (a4 + v9[9]);
  *v10 = a2;
  v10[1] = v7;
  *(a4 + v9[10]) = 0;
  v11 = (a4 + v9[11]);
  *v11 = 0;
  v11[1] = 0;
  *(v11 + 14) = 0;
  v12 = a4 + v9[12];
  *v12 = 0;
  *(v12 + 12) = 0;
  *(v12 + 8) = 0;
  v13 = a4 + v9[13];
  *v13 = 0x3F0000003F000000;
  *(v13 + 8) = 0;
  v14 = a4 + v9[14];
  *v14 = xmmword_23E903320;
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  v15 = a4 + v9[15];
  *v15 = 1065353216;
  *(v15 + 8) = 0;
  v16 = a4 + v9[16];
  *v16 = 0;
  *(v16 + 8) = 0;
  *(v16 + 16) = 2;
  *(a4 + v9[17]) = 0;
  v17 = (a4 + v9[18]);
  *v17 = 0;
  v17[1] = 0;
}

uint64_t RenderNode<>.withChildren(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35E630, &qword_23E903300);
  v6 = *(v2 + *(v5 + 36) + 8);
  sub_23E8891B4(v2, a2, &unk_27E35E630, &qword_23E903300);
  v7 = (a2 + *(v5 + 36));

  *v7 = a1;
  v7[1] = v6;
  return result;
}

uint64_t RenderNode<>.appending(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  return sub_23E889D1C(a1, &qword_27E35E430, &unk_23E902C80, a2);
}

{
  return sub_23E889D1C(a1, &unk_27E35E630, &qword_23E903300, a2);
}

{
  return sub_23E889D1C(a1, &unk_27E35E440, &unk_23E902C90, a2);
}

uint64_t sub_23E889D1C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a5@<X8>)
{
  v24 = a5;
  v9 = type metadata accessor for ContainerContent.Child(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35E630, &qword_23E903300);
  v14 = *(v13 + 36);
  v23 = v5;
  v15 = v5 + v14;
  v16 = *v15;
  sub_23E8891B4(a1, v12, a2, a3);
  swift_storeEnumTagMultiPayload();

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v16 = sub_23E88A764(0, v16[2] + 1, 1, v16, &qword_27E35E688, &qword_23E903360, type metadata accessor for ContainerContent.Child);
  }

  v18 = v16[2];
  v17 = v16[3];
  if (v18 >= v17 >> 1)
  {
    v16 = sub_23E88A764((v17 > 1), v18 + 1, 1, v16, &qword_27E35E688, &qword_23E903360, type metadata accessor for ContainerContent.Child);
  }

  v16[2] = v18 + 1;
  sub_23E88A940(v12, v16 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v18);
  v19 = *(v15 + 8);
  v20 = v24;
  sub_23E8891B4(v23, v24, &unk_27E35E630, &qword_23E903300);
  v21 = (v20 + *(v13 + 36));

  *v21 = v16;
  v21[1] = v19;
  return result;
}

void *sub_23E889F50(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F640, &unk_23E905090);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F5C0, &unk_23E905D80);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_23E88A098(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E660, &unk_23E905150);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E558, &unk_23E907990);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_23E88A1E0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E668, &unk_23E9079A0);
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

void *sub_23E88A2E4(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E690, &qword_23E903368);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E698, &unk_23E903370);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_23E88A418(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E640, &qword_23E903330);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E578, qword_23E904420);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_23E88A574(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E650, &qword_23E903340);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E658, &qword_23E905CE0) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E658, &qword_23E905CE0) - 8);
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

void *sub_23E88A764(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_23E88A940(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContainerContent.Child(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

char *sub_23E88A9A4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E678, &qword_23E903350);
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

char *sub_23E88AAB0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E680, &qword_23E903358);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_23E88ABB4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E670, &qword_23E903348);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_23E88ACD0()
{
  v1 = v0;
  v2 = type metadata accessor for ImageContent.ContentType(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v18[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for RenderLayerType(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_23E890014(v1, v7, type metadata accessor for RenderLayerType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v9 = EnumCaseMultiPayload;
  if (EnumCaseMultiPayload > 2)
  {
    result = 0;
    if ((v9 - 4) < 2)
    {
      return result;
    }

    v14 = *v7;
    v15 = v7[1];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E590, &qword_23E905070);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23E903380;
    *(inited + 32) = 1954047348;
    v12 = inited + 32;
    *(inited + 40) = 0xE400000000000000;
    v19 = v14;
    v20 = v15;
    goto LABEL_7;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v10 = *v7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E590, &qword_23E905070);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_23E903380;
      *(inited + 32) = 0x737569646172;
      v12 = inited + 32;
      *(inited + 40) = 0xE600000000000000;
      LODWORD(v19) = v10;
LABEL_7:
      sub_23E900C64();
      v16 = sub_23E88F1F4(inited);
      swift_setDeallocating();
      sub_23E87E458(v12, &qword_27E35E598, &unk_23E905080);
      return v16;
    }

    sub_23E89007C(v7, v4, type metadata accessor for ImageContent.ContentType);
    v17 = sub_23E8CDEC8();
    sub_23E88FC6C(v4, type metadata accessor for ImageContent.ContentType);
    return v17;
  }

  else
  {
    v19 = *v7;
    return sub_23E8D2B70();
  }
}

uint64_t sub_23E88AF58()
{
  v1 = type metadata accessor for RenderLayerType(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E6B8, &unk_23E9039B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E902EF0;
  *(inited + 32) = 1701869940;
  v5 = 0xE400000000000000;
  *(inited + 40) = 0xE400000000000000;
  sub_23E890014(v0, v3, type metadata accessor for RenderLayerType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_23E88FC6C(v3, type metadata accessor for RenderLayerType);
      v7 = 1954047348;
    }

    else if (EnumCaseMultiPayload == 4)
    {
      v5 = 0xE500000000000000;
      v7 = 0x6576727563;
    }

    else
    {
      v5 = 0xE700000000000000;
      v7 = 0x6E6F67796C6F70;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v7 = 1735289202;
    }

    else
    {
      sub_23E88FC6C(v3, type metadata accessor for RenderLayerType);
      v5 = 0xE500000000000000;
      v7 = 0x6567616D69;
    }
  }

  else
  {
    v5 = 0xE500000000000000;
    v7 = 0x726579616CLL;
  }

  v13 = v7;
  v14 = v5;
  sub_23E900C64();
  *(inited + 88) = 0x7241657461657263;
  *(inited + 96) = 0xEF73746E656D7567;
  v8 = sub_23E88ACD0();
  if (v8)
  {
    v13 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E578, qword_23E904420);
    sub_23E881570();
    sub_23E900C64();
  }

  else
  {
    *(inited + 136) = 0;
    *(inited + 120) = 0u;
    *(inited + 104) = 0u;
  }

  v9 = sub_23E88FAD8(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E6C0, &qword_23E906330);
  swift_arrayDestroy();
  v10 = sub_23E88B1F4(v9);

  return v10;
}

uint64_t sub_23E88B1F4(uint64_t a1)
{
  v1 = a1;
  v2 = MEMORY[0x277D84F98];
  v46 = MEMORY[0x277D84F98];
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  v29 = result;
  if (v6)
  {
    goto LABEL_11;
  }

  do
  {
LABEL_7:
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      goto LABEL_30;
    }

    if (v10 >= v7)
    {

      return v2;
    }

    v6 = *(v3 + 8 * v10);
    ++v9;
  }

  while (!v6);
  v47 = v2;
  v9 = v10;
  while (1)
  {
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = v11 | (v9 << 6);
    v13 = (*(v1 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    sub_23E8891B4(*(v1 + 56) + 40 * v12, v44, &qword_27E35E6C8, &unk_23E9039A0);
    *&v43 = v15;
    *(&v43 + 1) = v14;
    v39 = v43;
    v40 = v44[0];
    v41 = v44[1];
    v42 = v45;
    sub_23E8891B4(&v40, &v30, &qword_27E35E6C8, &unk_23E9039A0);
    if (!*(&v31 + 1))
    {

      sub_23E87E458(&v39, &qword_27E35E6D0, &unk_23E9039C0);
      result = sub_23E87E458(&v30, &qword_27E35E6C8, &unk_23E9039A0);
      v2 = v47;
      if (!v6)
      {
        goto LABEL_7;
      }

      goto LABEL_11;
    }

    v33 = v30;
    v34 = v31;
    v37[0] = v40;
    v37[1] = v41;
    v35 = v32;
    v38 = v42;
    v36 = v39;
    v2 = v47;
    v16 = *(v47 + 16);
    if (*(v47 + 24) <= v16)
    {

      sub_23E88D2B4(v16 + 1, 1);
      v2 = v46;
    }

    else
    {
    }

    v17 = v36;
    sub_23E900EB4();
    sub_23E900904();
    result = sub_23E900F14();
    v18 = v2 + 64;
    v19 = -1 << *(v2 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v2 + 64 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v2 + 64 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v18 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v2 + 48) + 16 * v22) = v17;
    v27 = *(v2 + 56) + 40 * v22;
    v28 = v34;
    *v27 = v33;
    *(v27 + 16) = v28;
    *(v27 + 32) = v35;
    ++*(v2 + 16);
    result = sub_23E87E458(v37, &qword_27E35E6C8, &unk_23E9039A0);
    v1 = v29;
    if (!v6)
    {
      goto LABEL_7;
    }

LABEL_11:
    v47 = v2;
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v18 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_26;
    }
  }

LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_23E88B530(__int128 *a1)
{
  v2 = v1;
  v4 = type metadata accessor for ImageContent.ContentType(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for RenderLayerType(0);
  MEMORY[0x28223BE20](v7);
  v9 = (&v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_23E890014(v2, v9, type metadata accessor for RenderLayerType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v13 = v9[2];
      MEMORY[0x23EF17B90](3);
      sub_23E900904();

      sub_23E8E1F30(a1, v13);
    }

    if (EnumCaseMultiPayload == 4)
    {
      v11 = 4;
    }

    else
    {
      v11 = 5;
    }

    return MEMORY[0x23EF17B90](v11);
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      sub_23E89007C(v9, v6, type metadata accessor for ImageContent.ContentType);
      MEMORY[0x23EF17B90](2);
      ImageContent.ContentType.hash(into:)(a1);
      return sub_23E88FC6C(v6, type metadata accessor for ImageContent.ContentType);
    }

    MEMORY[0x23EF17B90](1);
    return sub_23E900EE4();
  }

  v12 = *v9;
  MEMORY[0x23EF17B90](0);
  if (!(v12 >> 30))
  {
    MEMORY[0x23EF17B90](1);
    goto LABEL_17;
  }

  if (v12 >> 30 != 1)
  {
    v11 = 0;
    return MEMORY[0x23EF17B90](v11);
  }

  MEMORY[0x23EF17B90](2);
LABEL_17:
  sub_23E900904();

  return sub_23E900EE4();
}

uint64_t sub_23E88B8A0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23E88AF58();
  *a1 = result;
  return result;
}

uint64_t sub_23E88B8C8()
{
  sub_23E900EB4();
  sub_23E88B530(v1);
  return sub_23E900F14();
}

uint64_t sub_23E88B90C(uint64_t a1)
{
  sub_23E900EB4();
  sub_23E88B530(v2);
  return sub_23E900F14();
}

uint64_t type metadata accessor for RenderLayerType(uint64_t a1)
{
  result = qword_27E35E778;
  if (!qword_27E35E778)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23E88B9E0(uint64_t a1)
{
  result = sub_23E88FE6C(&qword_27E35E6A8, type metadata accessor for RenderLayerType, &unk_23E9033B8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_23E88BA38(uint64_t a1)
{
  result = sub_23E88FE6C(&qword_27E35E6B0, type metadata accessor for RenderLayerType, &unk_23E9033F8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_23E88BA90(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  v110 = a2 + 56;
  v97 = v7;
  v98 = result + 56;
  v99 = result;
  if (!v6)
  {
    goto LABEL_8;
  }

  while (2)
  {
    v8 = __clz(__rbit64(v6));
    v101 = (v6 - 1) & v6;
LABEL_13:
    v11 = *(result + 48) + 40 * (v8 | (v2 << 6));
    v13 = *v11;
    v12 = *(v11 + 8);
    v14 = *(v11 + 16);
    v15 = *(v11 + 20);
    v17 = *(v11 + 24);
    v16 = *(v11 + 32);
    sub_23E900EB4();
    sub_23E88FDE0(v13, v12, v14, v15);
    TextAttribute.hash(into:)(v111);
    v106 = v17;
    MEMORY[0x23EF17B90](v17);
    v105 = v16;
    MEMORY[0x23EF17B90](v16);
    v18 = sub_23E900F14();
    v19 = a2;
    v20 = -1 << *(a2 + 32);
    v21 = v18 & ~v20;
    if (((*(v110 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
    {
      v92 = v13;
      v93 = v12;
      v94 = v14;
LABEL_173:
      sub_23E88FDF8(v92, v93, v94, v15);
      return 0;
    }

    v100 = v2;
    v107 = ~v20;
    v104 = v14;
    v102 = v12 | v13;
    v22 = *&v14;
    v23 = v14;
    for (i = v14; ; v23 = i)
    {
      v24 = *(v19 + 48) + 40 * v21;
      v25 = *v24;
      v26 = *(v24 + 8);
      v27 = *(v24 + 16);
      v28 = *(v24 + 20);
      v30 = *(v24 + 24);
      v29 = *(v24 + 32);
      v111[0] = *v24;
      v111[1] = v26;
      v112 = v27;
      v113 = v28;
      v114 = v13;
      v115 = v12;
      v116 = v23;
      v117 = v15;
      if (v28 > 2)
      {
        if (v28 <= 4)
        {
          if (v28 == 3)
          {
            v31 = v30;
            v32 = v29;
            sub_23E88FDE0(v13, v12, v23, v15);
            sub_23E88FDF8(v25, v26, v27, 3);
            if (v15 != 3)
            {
              goto LABEL_102;
            }

LABEL_89:
            sub_23E87E458(v111, &qword_27E35E6F8, &qword_23E903458);
            v59 = *&v25 == *&v13;
LABEL_90:
            v60 = v59 && v31 == v106;
LABEL_93:
            if (v60 && v32 == v105)
            {
              break;
            }

            goto LABEL_103;
          }

          if (v15 == 4)
          {
            if (v26)
            {
              if (v12)
              {
                v103 = v29;
                if (v25 != v13 || v26 != v12)
                {
                  v57 = v23;
                  v58 = sub_23E900E04();
                  sub_23E88FDE0(v13, v12, v57, 4);
                  sub_23E88FDE0(v25, v26, v27, 4);
                  sub_23E88FDE0(v13, v12, v57, 4);
                  sub_23E88FDE0(v25, v26, v27, 4);
                  sub_23E88FDE0(v13, v12, v57, 4);
                  sub_23E88FDE0(v25, v26, v27, 4);
                  sub_23E87E458(v111, &qword_27E35E6F8, &qword_23E903458);

                  sub_23E88FDF8(v13, v12, v57, 4);
                  sub_23E88FDF8(v25, v26, v27, 4);
                  if ((v58 & 1) == 0 || *&v27 != v22)
                  {
                    goto LABEL_103;
                  }

                  goto LABEL_162;
                }

                v81 = v23;
                sub_23E88FDE0(v13, v12, v23, 4);
                sub_23E88FDE0(v13, v12, v27, 4);
                sub_23E88FDE0(v13, v12, v81, 4);
                sub_23E88FDE0(v13, v12, v27, 4);
                sub_23E88FDE0(v13, v12, v81, 4);
                sub_23E88FDE0(v13, v12, v27, 4);
                sub_23E87E458(v111, &qword_27E35E6F8, &qword_23E903458);

                sub_23E88FDF8(v13, v12, v81, 4);
                v82 = v13;
                v83 = v12;
                goto LABEL_138;
              }

              v80 = v23;
              sub_23E88FDE0(v13, 0, v23, 4);
              sub_23E88FDE0(v25, v26, v27, 4);
              sub_23E88FDE0(v13, 0, v80, 4);
              sub_23E88FDE0(v25, v26, v27, 4);
              sub_23E88FDE0(v13, 0, v80, 4);
              sub_23E88FDE0(v25, v26, v27, 4);
              sub_23E87E458(v111, &qword_27E35E6F8, &qword_23E903458);

              sub_23E88FDF8(v13, 0, v80, 4);
              v65 = v25;
              v66 = v26;
            }

            else
            {
              v103 = v29;
              v64 = v23;
              sub_23E88FDE0(v13, v12, v23, 4);
              sub_23E88FDE0(v25, 0, v27, 4);
              sub_23E88FDE0(v13, v12, v64, 4);
              sub_23E88FDE0(v25, 0, v27, 4);
              sub_23E88FDE0(v13, v12, v64, 4);
              sub_23E88FDE0(v25, 0, v27, 4);
              sub_23E87E458(v111, &qword_27E35E6F8, &qword_23E903458);
              if (!v12)
              {
                swift_bridgeObjectRelease_n();
                sub_23E88FDF8(v13, 0, v64, 4);
                v82 = v25;
                v83 = 0;
LABEL_138:
                sub_23E88FDF8(v82, v83, v27, 4);
                if (*&v27 != v22)
                {
                  goto LABEL_103;
                }

                goto LABEL_162;
              }

              sub_23E88FDF8(v13, v12, v64, 4);
              v65 = v25;
              v66 = 0;
            }

            sub_23E88FDF8(v65, v66, v27, 4);
            goto LABEL_103;
          }

          sub_23E88FDE0(v13, v12, v23, v15);
          sub_23E88FDE0(v25, v26, v27, 4);
LABEL_102:
          sub_23E87E458(v111, &qword_27E35E6F8, &qword_23E903458);
          goto LABEL_103;
        }

        if (v28 != 5)
        {
          v31 = v30;
          v32 = v29;
          sub_23E88FDE0(v13, v12, v23, v15);
          sub_23E88FDF8(v25, v26, v27, 6);
          if (v15 != 6)
          {
            goto LABEL_102;
          }

          goto LABEL_89;
        }

        if (v15 == 5)
        {
          if (v27)
          {
            if (v27 != 1)
            {
              v72 = v30;
              v73 = v29;
              v74 = v23;
              sub_23E88FDE0(v13, v12, v23, 5);
              sub_23E88FDE0(v13, v12, v74, 5);
              sub_23E87E458(v111, &qword_27E35E6F8, &qword_23E903458);
              sub_23E88FDF8(v25, v26, v27, 5);
              if (v104 == 2 && !v102 && v72 == v106 && v73 == v105)
              {
                break;
              }

              goto LABEL_103;
            }

            if (v104 != 1)
            {
              v84 = v23;
              sub_23E88FDE0(v13, v12, v23, 5);
              sub_23E88FDE0(v13, v12, v84, 5);
              sub_23E87E458(v111, &qword_27E35E6F8, &qword_23E903458);
              sub_23E88FDF8(v25, v26, v27, 5);
              goto LABEL_103;
            }

            v34 = v23;
            v103 = v29;
            v35 = 0xEA00000000007468;
            if (v25 == 2)
            {
              v36 = 0x67694C6172746C55;
            }

            else
            {
              v36 = 0x7261446172746C55;
            }

            if (v25 == 2)
            {
              v37 = 0xEA00000000007468;
            }

            else
            {
              v37 = 0xE90000000000006BLL;
            }

            if (v25)
            {
              v38 = 0x61446D756964654DLL;
            }

            else
            {
              v38 = 0x694C6D756964654DLL;
            }

            if (v25)
            {
              v39 = 0xEA00000000006B72;
            }

            else
            {
              v39 = 0xEB00000000746867;
            }

            if (v25 <= 1u)
            {
              v40 = v38;
            }

            else
            {
              v40 = v36;
            }

            if (v25 <= 1u)
            {
              v41 = v39;
            }

            else
            {
              v41 = v37;
            }

            if (v13 == 2)
            {
              v42 = 0x67694C6172746C55;
            }

            else
            {
              v42 = 0x7261446172746C55;
            }

            if (v13 != 2)
            {
              v35 = 0xE90000000000006BLL;
            }

            if (v13)
            {
              v43 = 0x61446D756964654DLL;
            }

            else
            {
              v43 = 0x694C6D756964654DLL;
            }

            if (v13)
            {
              v44 = 0xEA00000000006B72;
            }

            else
            {
              v44 = 0xEB00000000746867;
            }

            if (v13 <= 1u)
            {
              v45 = v43;
            }

            else
            {
              v45 = v42;
            }

            if (v13 <= 1u)
            {
              v35 = v44;
            }

            if (v40 != v45 || v41 != v35)
            {
              v96 = v30;
              v95 = sub_23E900E04();
              sub_23E88FDE0(v13, v12, v34, 5);
              sub_23E88FDE0(v13, v12, v34, 5);

              sub_23E87E458(v111, &qword_27E35E6F8, &qword_23E903458);
              sub_23E88FDF8(v13, v12, v34, 5);
              sub_23E88FDF8(v25, v26, v27, 5);
              v46 = v25;
              v47 = v26;
              v48 = v27;
              v49 = 5;
LABEL_166:
              sub_23E88FDF8(v46, v47, v48, v49);
              if ((v95 & 1) == 0 || v96 != v106)
              {
                goto LABEL_103;
              }

              goto LABEL_163;
            }

            goto LABEL_161;
          }

          v31 = v30;
          v32 = v29;
          v67 = v23;
          sub_23E88FDE0(v13, v12, v23, 5);
          sub_23E88FDE0(v13, v12, v67, 5);
          sub_23E87E458(v111, &qword_27E35E6F8, &qword_23E903458);
          v68 = v25;
          v69 = v26;
          v70 = v27;
          v71 = 5;
          goto LABEL_120;
        }

        sub_23E88FDE0(v13, v12, v23, v15);
        v50 = v25;
        v51 = v26;
        v52 = v27;
        v53 = 5;
        goto LABEL_100;
      }

      if (!v28)
      {
        if (!v15)
        {
          if (v27)
          {
            if (v27 != 1)
            {
              v78 = v30;
              v32 = v29;
              v79 = v23;
              sub_23E88FDE0(v13, v12, v23, 0);
              sub_23E88FDE0(v13, v12, v79, 0);
              sub_23E87E458(v111, &qword_27E35E6F8, &qword_23E903458);
              sub_23E88FDF8(v25, v26, v27, 0);
              if (v104 != 2 || v102)
              {
                goto LABEL_103;
              }

              v60 = v78 == v106;
              goto LABEL_93;
            }

            if (v104 != 1)
            {
              v85 = v23;
              sub_23E88FDE0(v13, v12, v23, 0);
              sub_23E88FDE0(v13, v12, v85, 0);
              sub_23E87E458(v111, &qword_27E35E6F8, &qword_23E903458);
              sub_23E88FDF8(v25, v26, v27, 0);
              goto LABEL_103;
            }

            v103 = v29;
            v34 = v23;
            if (v25 > 1u)
            {
              if (v25 == 2)
              {
                v63 = 0xEA00000000007468;
                v62 = 0x67694C6172746C55;
              }

              else
              {
                v63 = 0xE90000000000006BLL;
                v62 = 0x7261446172746C55;
              }
            }

            else if (v25)
            {
              v63 = 0xEA00000000006B72;
              v62 = 0x61446D756964654DLL;
            }

            else
            {
              v62 = 0x694C6D756964654DLL;
              v63 = 0xEB00000000746867;
            }

            v86 = 0x67694C6172746C55;
            if (v13 != 2)
            {
              v86 = 0x7261446172746C55;
            }

            v87 = 0xEA00000000007468;
            if (v13 != 2)
            {
              v87 = 0xE90000000000006BLL;
            }

            v88 = 0x694C6D756964654DLL;
            if (v13)
            {
              v88 = 0x61446D756964654DLL;
            }

            v89 = 0xEB00000000746867;
            if (v13)
            {
              v89 = 0xEA00000000006B72;
            }

            if (v13 <= 1u)
            {
              v90 = v88;
            }

            else
            {
              v90 = v86;
            }

            if (v13 <= 1u)
            {
              v91 = v89;
            }

            else
            {
              v91 = v87;
            }

            if (v62 != v90 || v63 != v91)
            {
              v96 = v30;
              v95 = sub_23E900E04();
              sub_23E88FDE0(v13, v12, v34, 0);
              sub_23E88FDE0(v13, v12, v34, 0);

              sub_23E87E458(v111, &qword_27E35E6F8, &qword_23E903458);
              sub_23E88FDF8(v13, v12, v34, 0);
              sub_23E88FDF8(v25, v26, v27, 0);
              v46 = v25;
              v47 = v26;
              v48 = v27;
              v49 = 0;
              goto LABEL_166;
            }

LABEL_161:
            sub_23E88FDE0(v13, v12, v34, v28);
            sub_23E88FDE0(v13, v12, v34, v28);

            sub_23E87E458(v111, &qword_27E35E6F8, &qword_23E903458);
            sub_23E88FDF8(v13, v12, v34, v28);
            sub_23E88FDF8(v25, v26, v27, v28);
            sub_23E88FDF8(v25, v26, v27, v28);
LABEL_162:
            if (v30 != v106)
            {
              goto LABEL_103;
            }

LABEL_163:
            if (v103 == v105)
            {
              break;
            }

            goto LABEL_103;
          }

          v31 = v30;
          v32 = v29;
          v75 = v23;
          sub_23E88FDE0(v13, v12, v23, 0);
          sub_23E88FDE0(v13, v12, v75, 0);
          sub_23E87E458(v111, &qword_27E35E6F8, &qword_23E903458);
          v68 = v25;
          v69 = v26;
          v70 = v27;
          v71 = 0;
LABEL_120:
          sub_23E88FDF8(v68, v69, v70, v71);
          if (v104)
          {
            goto LABEL_103;
          }

          v59 = *&v25 == *&v13 && *(&v25 + 1) == *(&v13 + 1) && *&v26 == *&v12 && *(&v26 + 1) == *(&v12 + 1);
          goto LABEL_90;
        }

        sub_23E88FDE0(v13, v12, v23, v15);
        v50 = v25;
        v51 = v26;
        v52 = v27;
        v53 = 0;
LABEL_100:
        sub_23E88FDF8(v50, v51, v52, v53);
        goto LABEL_102;
      }

      v33 = v29;
      if (v28 == 1)
      {
        sub_23E88FDE0(v13, v12, v23, v15);
        sub_23E88FDF8(v25, v26, v27, 1);
        if (v15 != 1)
        {
          goto LABEL_102;
        }
      }

      else
      {
        sub_23E88FDE0(v13, v12, v23, v15);
        sub_23E88FDF8(v25, v26, v27, 2);
        if (v15 != 2)
        {
          goto LABEL_102;
        }
      }

      sub_23E87E458(v111, &qword_27E35E6F8, &qword_23E903458);
      v54 = *&v25 == *&v13 && v30 == v106;
      if (v54 && v33 == v105)
      {
        break;
      }

LABEL_103:
      v21 = (v21 + 1) & v107;
      if (((*(v110 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
      {
        v92 = v13;
        v93 = v12;
        v94 = i;
        goto LABEL_173;
      }

      v19 = a2;
    }

    sub_23E88FDF8(v13, v12, i, v15);
    v3 = v98;
    result = v99;
    v2 = v100;
    v6 = v101;
    v7 = v97;
    if (v101)
    {
      continue;
    }

    break;
  }

LABEL_8:
  v9 = v2;
  while (1)
  {
    v2 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v2 >= v7)
    {
      return 1;
    }

    v10 = *(v3 + 8 * v2);
    ++v9;
    if (v10)
    {
      v8 = __clz(__rbit64(v10));
      v101 = (v10 - 1) & v10;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_23E88C9D8(uint64_t a1)
{
  sub_23E9006D4();
  sub_23E88FE6C(&qword_27E35E5B8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v2 = sub_23E900814();

  return sub_23E88CB30(a1, v2);
}

unint64_t sub_23E88CA70(uint64_t a1, uint64_t a2)
{
  sub_23E900EB4();
  sub_23E900904();
  v4 = sub_23E900F14();

  return sub_23E88CCF0(a1, a2, v4);
}

unint64_t sub_23E88CAE8(uint64_t a1)
{
  v2 = a1;
  v3 = MEMORY[0x23EF17B70](*(v1 + 40), a1, 4);

  return sub_23E88CDA8(v2, v3);
}

unint64_t sub_23E88CB30(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_23E9006D4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_23E88FE6C(&qword_27E35E708, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v15 = sub_23E900844();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_23E88CCF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_23E900E04())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_23E88CDA8(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_23E88CE14(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for ContainerContent.Child(0);
  v42 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v47 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23E9006D4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v46 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E720, &qword_23E903478);
  v43 = v4;
  result = sub_23E900D54();
  v12 = result;
  if (*(v10 + 16))
  {
    v38 = v2;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v39 = (v8 + 16);
    v40 = v8;
    v44 = (v8 + 32);
    v19 = result + 64;
    v41 = v10;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v45 = *(v8 + 72);
      v26 = v25 + v45 * v24;
      if (v43)
      {
        (*v44)(v46, v26, v7);
        v27 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_23E89007C(v27 + v28 * v24, v47, type metadata accessor for ContainerContent.Child);
      }

      else
      {
        (*v39)(v46, v26, v7);
        v29 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_23E890014(v29 + v28 * v24, v47, type metadata accessor for ContainerContent.Child);
      }

      sub_23E88FE6C(&qword_27E35E5B8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_23E900814();
      v30 = -1 << *(v12 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v19 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v19 + 8 * v32);
          if (v36 != -1)
          {
            v20 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v31) & ~*(v19 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v44)((*(v12 + 48) + v45 * v20), v46, v7);
      result = sub_23E89007C(v47, *(v12 + 56) + v28 * v20, type metadata accessor for ContainerContent.Child);
      ++*(v12 + 16);
      v8 = v40;
      v10 = v41;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v10 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v14, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v37;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t sub_23E88D2B4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E6D8, &qword_23E903438);
  v38 = v4;
  result = sub_23E900D54();
  v7 = result;
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
    v14 = result + 64;
    while (v12)
    {
      v20 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v23 = v20 | (v8 << 6);
      v24 = (*(v5 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v5 + 56) + 40 * v23;
      if (v38)
      {
        v28 = *v27;
        v29 = *(v27 + 16);
        v41 = *(v27 + 32);
        v39 = v28;
        v40 = v29;
      }

      else
      {
        sub_23E88FC10(v27, &v39);
      }

      sub_23E900EB4();
      sub_23E900904();
      result = sub_23E900F14();
      v30 = -1 << *(v7 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v14 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v14 + 8 * v32);
          if (v36 != -1)
          {
            v15 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v31) & ~*(v14 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v25;
      v16[1] = v26;
      v17 = *(v7 + 56) + 40 * v15;
      v18 = v39;
      v19 = v40;
      *(v17 + 32) = v41;
      *v17 = v18;
      *(v17 + 16) = v19;
      ++*(v7 + 16);
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
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
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v2;
    if (v37 >= 64)
    {
      bzero((v5 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_23E88D584(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E710, &qword_23E903468);
  v37 = v4;
  result = sub_23E900D54();
  v7 = result;
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
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(v5 + 56) + 72 * v21;
      if (v37)
      {
        v44 = *(v25 + 16);
        v45 = *(v25 + 32);
        v46 = *(v25 + 48);
        v47 = *(v25 + 64);
        v43 = *v25;
      }

      else
      {
        v38 = *v25;
        v27 = *(v25 + 32);
        v26 = *(v25 + 48);
        v28 = *(v25 + 16);
        v42 = *(v25 + 64);
        v40 = v27;
        v41 = v26;
        v39 = v28;

        sub_23E88FEB4(&v38, &v43);
        v45 = v40;
        v46 = v41;
        v47 = v42;
        v43 = v38;
        v44 = v39;
      }

      sub_23E900EB4();
      sub_23E900904();
      result = sub_23E900F14();
      v29 = -1 << *(v7 + 32);
      v30 = result & ~v29;
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

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = *(v7 + 56) + 72 * v15;
      *(v17 + 16) = v44;
      *(v17 + 32) = v45;
      *(v17 + 48) = v46;
      *(v17 + 64) = v47;
      *v17 = v43;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v2;
    if (v36 >= 64)
    {
      bzero((v5 + 64), ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_23E88D8D0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E6E8, &qword_23E903448);
  v37 = v4;
  result = sub_23E900D54();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
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
    v14 = result + 64;
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
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      sub_23E900EB4();
      sub_23E900904();
      result = sub_23E900F14();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
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

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_23E88DB90(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_23E9006D4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E700, &qword_23E903460);
  v47 = v4;
  result = sub_23E900D54();
  v11 = result;
  if (*(v9 + 16))
  {
    v50 = v8;
    v51 = v5;
    v43 = v2;
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
    v44 = (v6 + 16);
    v45 = v6;
    v48 = (v6 + 32);
    v18 = result + 64;
    v46 = v9;
    while (v16)
    {
      v24 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v27 = v24 | (v12 << 6);
      v28 = *(v9 + 48);
      v49 = *(v6 + 72);
      v29 = v28 + v49 * v27;
      if (v47)
      {
        (*v48)(v50, v29, v51);
        v30 = *(v9 + 56) + 56 * v27;
        v32 = *(v30 + 16);
        v31 = *(v30 + 32);
        v33 = *v30;
        v55 = *(v30 + 48);
        v53 = v32;
        v54 = v31;
        v52 = v33;
      }

      else
      {
        (*v44)(v50, v29, v51);
        sub_23E88FE10(*(v9 + 56) + 56 * v27, &v52);
      }

      sub_23E88FE6C(&qword_27E35E5B8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_23E900814();
      v34 = -1 << *(v11 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v18 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        v6 = v45;
        v9 = v46;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v18 + 8 * v36);
          if (v40 != -1)
          {
            v19 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v35) & ~*(v18 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
      v6 = v45;
      v9 = v46;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v48)(*(v11 + 48) + v49 * v19, v50, v51);
      v20 = *(v11 + 56) + 56 * v19;
      v21 = v55;
      v23 = v53;
      v22 = v54;
      *v20 = v52;
      *(v20 + 16) = v23;
      *(v20 + 32) = v22;
      *(v20 + 48) = v21;
      ++*(v11 + 16);
    }

    v25 = v12;
    while (1)
    {
      v12 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v26 = v13[v12];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v16 = (v26 - 1) & v26;
        goto LABEL_15;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v43;
      goto LABEL_34;
    }

    v41 = 1 << *(v9 + 32);
    v3 = v43;
    if (v41 >= 64)
    {
      bzero(v13, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v41;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_23E88DF94(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_23E9006D4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E748, &qword_23E9034A0);
  v38 = v4;
  result = sub_23E900D54();
  v11 = result;
  if (*(v9 + 16))
  {
    v41 = v8;
    v42 = v5;
    v34 = v2;
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
    v35 = (v6 + 16);
    v36 = v6;
    v39 = (v6 + 32);
    v18 = result + 64;
    v37 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v40 = *(v6 + 72);
      v25 = v24 + v40 * v23;
      if (v38)
      {
        (*v39)(v41, v25, v42);
        sub_23E881028((*(v9 + 56) + 40 * v23), v43);
      }

      else
      {
        (*v35)(v41, v25, v42);
        sub_23E8810DC(*(v9 + 56) + 40 * v23, v43);
      }

      sub_23E88FE6C(&qword_27E35E5B8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_23E900814();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        v6 = v36;
        v9 = v37;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
      v6 = v36;
      v9 = v37;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v39)((*(v11 + 48) + v40 * v19), v41, v42);
      result = sub_23E881028(v43, *(v11 + 56) + 40 * v19);
      ++*(v11 + 16);
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

    if ((v38 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_23E88E378(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v39 = sub_23E9006D4();
  v5 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v38 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E738, &qword_23E903490);
  v37 = v4;
  result = sub_23E900D54();
  v9 = result;
  if (*(v7 + 16))
  {
    v34 = v3;
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
    v35 = (v5 + 16);
    v36 = v5;
    v16 = (v5 + 32);
    v17 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(*(v7 + 48) + 4 * v22);
      v24 = *(v5 + 72);
      v25 = *(v7 + 56) + v24 * v22;
      if (v37)
      {
        (*v16)(v38, v25, v39);
      }

      else
      {
        (*v35)(v38, v25, v39);
      }

      result = MEMORY[0x23EF17B70](*(v9 + 40), v23, 4);
      v26 = -1 << *(v9 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v9 + 48) + 4 * v18) = v23;
      result = (*v16)(*(v9 + 56) + v24 * v18, v38, v39);
      ++*(v9 + 16);
      v5 = v36;
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

    if ((v37 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_34;
    }

    v33 = 1 << *(v7 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v7 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v33;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_23E88E6C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_23E9006D4();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v49 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v44 = &v39 - v9;
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E730, &qword_23E903488);
  v45 = v4;
  result = sub_23E900D54();
  v50 = result;
  if (*(v10 + 16))
  {
    v40 = v2;
    v12 = 0;
    v13 = (v10 + 64);
    v14 = 1 << *(v10 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v10 + 64);
    v17 = (v14 + 63) >> 6;
    v41 = (v6 + 16);
    v42 = v10;
    v43 = v6;
    v46 = (v6 + 32);
    v18 = v50 + 64;
    while (v16)
    {
      v23 = __clz(__rbit64(v16));
      v48 = (v16 - 1) & v16;
LABEL_15:
      v26 = *(v10 + 48);
      v47 = *(v43 + 72);
      v27 = v47 * (v23 | (v12 << 6));
      if (v45)
      {
        v28 = *v46;
        v29 = v44;
        (*v46)(v44, v26 + v27, v5);
      }

      else
      {
        v28 = *v41;
        v29 = v44;
        (*v41)(v44, v26 + v27, v5);
      }

      v28(v49, *(v10 + 56) + v27, v5);
      v30 = v50;
      sub_23E88FE6C(&qword_27E35E5B8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_23E900814();
      v31 = -1 << *(v30 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v18 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v18 + 8 * v33);
          if (v37 != -1)
          {
            v19 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v32) & ~*(v18 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      v20 = v50;
      v21 = v47 * v19;
      v22 = *v46;
      (*v46)((*(v50 + 48) + v47 * v19), v29, v5);
      result = (v22)(*(v20 + 56) + v21, v49, v5);
      ++*(v20 + 16);
      v10 = v42;
      v16 = v48;
    }

    v24 = v12;
    while (1)
    {
      v12 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v25 = v13[v12];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v48 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v45 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_34;
    }

    v38 = 1 << *(v10 + 32);
    v3 = v40;
    if (v38 >= 64)
    {
      bzero(v13, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v38;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v50;
  return result;
}

uint64_t sub_23E88EB14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageContent.ContentType(0);
  MEMORY[0x28223BE20](v4 - 8);
  v37 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for RenderLayerType(0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = (&v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v36 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = (&v36 - v14);
  MEMORY[0x28223BE20](v13);
  v17 = (&v36 - v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E6F0, &qword_23E903450);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v21 = &v36 - v20;
  v22 = &v36 + *(v19 + 56) - v20;
  sub_23E890014(a1, &v36 - v20, type metadata accessor for RenderLayerType);
  sub_23E890014(a2, v22, type metadata accessor for RenderLayerType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_23E890014(v21, v15, type metadata accessor for RenderLayerType);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v24 = *v15 == *v22;
LABEL_29:
          sub_23E88FC6C(v21, type metadata accessor for RenderLayerType);
          return v24 & 1;
        }
      }

      else
      {
        sub_23E890014(v21, v12, type metadata accessor for RenderLayerType);
        if (swift_getEnumCaseMultiPayload() == 2)
        {
          v34 = v37;
          sub_23E89007C(v22, v37, type metadata accessor for ImageContent.ContentType);
          v24 = _s10AirPlayKit12ImageContentV0E4TypeO2eeoiySbAE_AEtFZ_0(v12, v34);
          sub_23E88FC6C(v34, type metadata accessor for ImageContent.ContentType);
          sub_23E88FC6C(v12, type metadata accessor for ImageContent.ContentType);
          goto LABEL_29;
        }

        sub_23E88FC6C(v12, type metadata accessor for ImageContent.ContentType);
      }
    }

    else
    {
      sub_23E890014(v21, v17, type metadata accessor for RenderLayerType);
      if (!swift_getEnumCaseMultiPayload())
      {
        v25 = *v17;
        v38 = *v22;
        v39 = v25;
        v24 = _s10AirPlayKit16ContainerContentV4FlowO2eeoiySbAE_AEtFZ_0(&v39, &v38);
        goto LABEL_29;
      }
    }

    goto LABEL_25;
  }

  if (EnumCaseMultiPayload == 3)
  {
    sub_23E890014(v21, v9, type metadata accessor for RenderLayerType);
    v27 = *v9;
    v26 = v9[1];
    v28 = v9[2];
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v29 = *v22;
      v30 = *(v22 + 1);
      v31 = *(v22 + 2);
      if (v27 == v29 && v26 == v30)
      {
      }

      else
      {
        v33 = sub_23E900E04();

        if ((v33 & 1) == 0)
        {

          sub_23E88FC6C(v21, type metadata accessor for RenderLayerType);
LABEL_26:
          v24 = 0;
          return v24 & 1;
        }
      }

      v24 = sub_23E88BA90(v28, v31);

      goto LABEL_29;
    }

    goto LABEL_25;
  }

  if (EnumCaseMultiPayload != 4)
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      goto LABEL_22;
    }

LABEL_25:
    sub_23E87E458(v21, &qword_27E35E6F0, &qword_23E903450);
    goto LABEL_26;
  }

  if (swift_getEnumCaseMultiPayload() != 4)
  {
    goto LABEL_25;
  }

LABEL_22:
  sub_23E88FC6C(v21, type metadata accessor for RenderLayerType);
  v24 = 1;
  return v24 & 1;
}

unint64_t sub_23E88EFD8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E728, &qword_23E903480);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E720, &qword_23E903478);
    v7 = sub_23E900D64();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_23E8891B4(v9, v5, &qword_27E35E728, &qword_23E903480);
      result = sub_23E88C9D8(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_23E9006D4();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = type metadata accessor for ContainerContent.Child(0);
      result = sub_23E89007C(&v5[v8], v16 + *(*(v17 - 8) + 72) * v13, type metadata accessor for ContainerContent.Child);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
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

unint64_t sub_23E88F1F4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E6D8, &qword_23E903438);
    v3 = sub_23E900D64();
    v4 = a1 + 32;

    while (1)
    {
      sub_23E8891B4(v4, &v16, &qword_27E35E598, &unk_23E905080);
      v5 = v16;
      v6 = v17;
      result = sub_23E88CA70(v16, v17);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = v3[7] + 40 * result;
      v11 = v18;
      v12 = v19;
      *(v10 + 32) = v20;
      *v10 = v11;
      *(v10 + 16) = v12;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      v4 += 56;
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

unint64_t sub_23E88F32C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E770, &qword_23E9034C8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E738, &qword_23E903490);
    v7 = sub_23E900D64();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_23E8891B4(v9, v5, &qword_27E35E770, &qword_23E9034C8);
      v11 = *v5;
      result = sub_23E88CAE8(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 4 * result) = v11;
      v15 = v7[7];
      v16 = sub_23E9006D4();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
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

unint64_t sub_23E88F508(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E768, &qword_23E9034C0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E730, &qword_23E903488);
    v7 = sub_23E900D64();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v21 = *(v3 + 72);
    v22 = v8;

    while (1)
    {
      sub_23E8891B4(v9, v5, &qword_27E35E768, &qword_23E9034C0);
      result = sub_23E88C9D8(v5);
      if (v11)
      {
        break;
      }

      v12 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = v7[6];
      v14 = sub_23E9006D4();
      v15 = *(v14 - 8);
      v16 = *(v15 + 32);
      v17 = *(v15 + 72) * v12;
      v16(v13 + v17, v5, v14);
      result = (v16)(v7[7] + v17, &v5[v22], v14);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v21;
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

unint64_t sub_23E88F714(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E760, &qword_23E9034B8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v23 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E700, &qword_23E903460);
    v7 = sub_23E900D64();
    v8 = &v5[*(v2 + 48)];
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_23E8891B4(v9, v5, &qword_27E35E760, &qword_23E9034B8);
      result = sub_23E88C9D8(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_23E9006D4();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7] + 56 * v13;
      v17 = *v8;
      v18 = *(v8 + 1);
      v19 = *(v8 + 2);
      *(v16 + 48) = *(v8 + 6);
      *(v16 + 16) = v18;
      *(v16 + 32) = v19;
      *v16 = v17;
      v20 = v7[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v7[2] = v22;
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

unint64_t sub_23E88F918(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E710, &qword_23E903468);
  v3 = sub_23E900D64();

  v4 = *(a1 + 64);
  v5 = *(a1 + 96);
  v29 = *(a1 + 80);
  v30 = v5;
  v31 = *(a1 + 112);
  v6 = *(a1 + 48);
  v26 = *(a1 + 32);
  v27 = v6;
  v28 = v4;
  v8 = *(&v26 + 1);
  v7 = v26;
  sub_23E8891B4(&v26, v25, &qword_27E35E758, &qword_23E9034B0);
  result = sub_23E88CA70(v7, v8);
  if (v10)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v11 = (a1 + 120);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v12 = (v3[6] + 16 * result);
    *v12 = v7;
    v12[1] = v8;
    v13 = v3[7] + 72 * result;
    *v13 = v27;
    v14 = v28;
    v15 = v29;
    v16 = v30;
    *(v13 + 64) = v31;
    *(v13 + 32) = v15;
    *(v13 + 48) = v16;
    *(v13 + 16) = v14;
    v17 = v3[2];
    v18 = __OFADD__(v17, 1);
    v19 = v17 + 1;
    if (v18)
    {
      break;
    }

    v3[2] = v19;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v20 = (v11 + 88);
    v21 = v11[2];
    v22 = v11[4];
    v29 = v11[3];
    v30 = v22;
    v31 = *(v11 + 80);
    v23 = v11[1];
    v26 = *v11;
    v27 = v23;
    v28 = v21;
    v8 = *(&v26 + 1);
    v7 = v26;
    sub_23E8891B4(&v26, v25, &qword_27E35E758, &qword_23E9034B0);
    result = sub_23E88CA70(v7, v8);
    v11 = v20;
    if (v24)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_23E88FAD8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E6E0, &qword_23E903440);
    v3 = sub_23E900D64();
    v4 = a1 + 32;

    while (1)
    {
      sub_23E8891B4(v4, &v16, &qword_27E35E6C0, &qword_23E906330);
      v5 = v16;
      v6 = v17;
      result = sub_23E88CA70(v16, v17);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = v3[7] + 40 * result;
      v11 = v18;
      v12 = v19;
      *(v10 + 32) = v20;
      *v10 = v11;
      *(v10 + 16) = v12;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      v4 += 56;
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

uint64_t sub_23E88FC6C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_23E88FCCC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E6E8, &qword_23E903448);
    v3 = sub_23E900D64();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_23E88CA70(v5, v6);
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_23E88FDE0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 4)
  {
  }

  return result;
}

uint64_t sub_23E88FDF8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 4)
  {
  }

  return result;
}

uint64_t sub_23E88FE6C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_23E88FF10(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E718, &qword_23E903470);
    v3 = sub_23E900D64();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_23E88CA70(v5, v6);
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

uint64_t sub_23E890014(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23E89007C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_23E8900E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E740, &qword_23E903498);
    v3 = sub_23E900D64();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_23E88CA70(v5, v6);
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_23E8901F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E750, &qword_23E9034A8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E748, &qword_23E9034A0);
    v7 = sub_23E900D64();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_23E8891B4(v9, v5, &qword_27E35E750, &qword_23E9034A8);
      result = sub_23E88C9D8(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_23E9006D4();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      result = sub_23E881028(&v5[v8], v7[7] + 40 * v13);
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

void sub_23E890438(uint64_t a1)
{
  sub_23E8904D4();
  if (v1 <= 0x3F)
  {
    sub_23E890504();
    if (v2 <= 0x3F)
    {
      type metadata accessor for ImageContent.ContentType(319);
      if (v3 <= 0x3F)
      {
        sub_23E890534(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

ValueMetadata *sub_23E8904D4()
{
  result = qword_27E35E788;
  if (!qword_27E35E788)
  {
    result = &type metadata for ContainerContent.Flow;
    atomic_store(&type metadata for ContainerContent.Flow, &qword_27E35E788);
  }

  return result;
}

uint64_t sub_23E890504()
{
  result = qword_27E35E790;
  if (!qword_27E35E790)
  {
    result = MEMORY[0x277D83A90];
    atomic_store(MEMORY[0x277D83A90], &qword_27E35E790);
  }

  return result;
}

void sub_23E890534(uint64_t a1)
{
  if (!qword_27E35E798)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E35E7A0, &qword_23E9034E8);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27E35E798);
    }
  }
}

double Color.init(_:)(void *a1)
{
  v10[1] = *MEMORY[0x277D85DE8];
  result = 0.0;
  if (a1)
  {
    v9 = 0.0;
    v10[0] = 0;
    v7 = 1.0;
    v8 = 0.0;
    v3 = [a1 getRed:v10 green:&v9 blue:&v8 alpha:{&v7, 0.0}];

    if (v3)
    {
      v5.f64[0] = v9;
      *&v4.f64[0] = v10[0];
      v4.f64[1] = v8;
      *&v4.f64[0] = vcvt_f32_f64(v4);
      v5.f64[1] = v7;
      v6.i64[0] = LODWORD(v4.f64[0]);
      v6.i64[1] = HIDWORD(v4.f64[0]);
      *&result = vorrq_s8(vshll_n_s32(vcvt_f32_f64(v5), 0x20uLL), v6).u64[0];
    }

    else
    {
      return 0.0;
    }
  }

  return result;
}

uint64_t sub_23E8906D8(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t DispatchSourceTimerProviding.makeTimer(fireInterval:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  sub_23E89162C(0, &qword_27E35E5D0, 0x277D85C78);
  v10 = sub_23E900B24();
  v11 = (*(a4 + 8))(v10, a1, a2, a3, a4, a5);

  return v11;
}

uint64_t DispatchSourceTimerProviding.makeRepeatingTimer(fireInterval:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v10 = sub_23E900774();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = (&v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v13 = 100;
  (*(v11 + 104))(v13, *MEMORY[0x277D85170], v10);
  v14 = DispatchSourceTimerProviding.makeRepeatingTimer(fireInterval:leewayInterval:handler:)(v13, a1, a2, a3, a4, a5);
  (*(v11 + 8))(v13, v10);
  return v14;
}

uint64_t DispatchSourceTimerProviding.makeRepeatingTimer(fireInterval:leewayInterval:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  sub_23E89162C(0, &qword_27E35E5D0, 0x277D85C78);
  v12 = sub_23E900B24();
  v13 = (*(a5 + 16))(a1, v12, a2, a3, a4, a5, a6);

  return v13;
}

uint64_t sub_23E8909F8()
{
  sub_23E900784();
  sub_23E8916E8(&qword_27E35E7C8, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E7D0, &qword_23E903560);
  sub_23E891730(&qword_27E35E7D8, &qword_27E35E7D0, &qword_23E903560);
  return sub_23E900C14();
}

uint64_t sub_23E890AD0(uint64_t a1, uint64_t (*a2)(void))
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result || (swift_getObjectType(), v4 = sub_23E900B74(), result = swift_unknownObjectRelease(), (v4 & 1) == 0))
  {
    if (a2)
    {
      return a2();
    }
  }

  return result;
}

uint64_t sub_23E890B5C(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v47 = a2;
  v48 = a3;
  v45 = a1;
  v4 = sub_23E900784();
  v52 = *(v4 - 8);
  v53 = v4;
  MEMORY[0x28223BE20](v4);
  v49 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23E9007B4();
  v50 = *(v6 - 8);
  v51 = v6;
  MEMORY[0x28223BE20](v6);
  v46 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23E900774();
  v43 = *(v8 - 8);
  v44 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v42 = &v40 - v12;
  v41 = sub_23E9007D4();
  v54 = *(v41 - 8);
  v13 = MEMORY[0x28223BE20](v41);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v40 - v16;
  v18 = sub_23E900B54();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_23E89162C(0, &qword_27E35E7A8, 0x277D85CA0);
  aBlock[0] = MEMORY[0x277D84F90];
  sub_23E8916E8(&qword_27E35E7B0, MEMORY[0x277D85278], MEMORY[0x277D85280]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E7B8, &unk_23E903550);
  sub_23E891730(&qword_27E35E7C0, &qword_27E35E7B8, &unk_23E903550);
  sub_23E900C14();
  v40 = sub_23E900B64();
  (*(v19 + 8))(v21, v18);
  ObjectType = swift_getObjectType();
  v45 = ObjectType;
  sub_23E9007C4();
  sub_23E9007E4();
  v23 = *(v54 + 8);
  v54 += 8;
  v24 = v41;
  v23(v15, v41);
  v26 = v42;
  v25 = v43;
  v27 = *(v43 + 104);
  v28 = v44;
  v27(v42, *MEMORY[0x277D85180], v44);
  *v11 = 0;
  v27(v11, *MEMORY[0x277D85168], v28);
  v29 = ObjectType;
  v30 = v40;
  MEMORY[0x23EF17870](v17, v26, v11, v29);
  v31 = *(v25 + 8);
  v31(v11, v28);
  v31(v26, v28);
  v23(v17, v24);
  v32 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v33 = swift_allocObject();
  v35 = v47;
  v34 = v48;
  v33[2] = v32;
  v33[3] = v35;
  v33[4] = v34;
  aBlock[4] = sub_23E8917D8;
  aBlock[5] = v33;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23E8906D8;
  aBlock[3] = &block_descriptor_10;
  v36 = _Block_copy(aBlock);

  sub_23E889AE0(v35, v34);
  v37 = v46;
  sub_23E9007A4();
  v38 = v49;
  sub_23E8909F8();
  sub_23E900B84();
  _Block_release(v36);
  (*(v52 + 8))(v38, v53);
  (*(v50 + 8))(v37, v51);

  sub_23E900B94();
  return v30;
}

uint64_t sub_23E891190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v30 = a3;
  v31 = a4;
  v27[1] = a2;
  v28 = a1;
  v6 = sub_23E900784();
  v35 = *(v6 - 8);
  v36 = v6;
  MEMORY[0x28223BE20](v6);
  v32 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23E9007B4();
  v33 = *(v8 - 8);
  v34 = v8;
  MEMORY[0x28223BE20](v8);
  v29 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27[0] = sub_23E9007D4();
  v10 = *(v27[0] - 8);
  MEMORY[0x28223BE20](v27[0]);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_23E900B54();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23E89162C(0, &qword_27E35E7A8, 0x277D85CA0);
  aBlock[0] = MEMORY[0x277D84F90];
  sub_23E8916E8(&qword_27E35E7B0, MEMORY[0x277D85278], MEMORY[0x277D85280]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E7B8, &unk_23E903550);
  sub_23E891730(&qword_27E35E7C0, &qword_27E35E7B8, &unk_23E903550);
  sub_23E900C14();
  v17 = sub_23E900B64();
  (*(v14 + 8))(v16, v13);
  ObjectType = swift_getObjectType();
  sub_23E9007C4();
  MEMORY[0x23EF17880](v12, v28, ObjectType, a5);
  (*(v10 + 8))(v12, v27[0]);
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = swift_allocObject();
  v22 = v30;
  v21 = v31;
  v20[2] = v19;
  v20[3] = v22;
  v20[4] = v21;
  aBlock[4] = sub_23E8916B0;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23E8906D8;
  aBlock[3] = &block_descriptor_0;
  v23 = _Block_copy(aBlock);

  sub_23E889AE0(v22, v21);
  v24 = v29;
  sub_23E9007A4();
  v25 = v32;
  sub_23E8909F8();
  sub_23E900B84();
  _Block_release(v23);
  (*(v35 + 8))(v25, v36);
  (*(v33 + 8))(v24, v34);

  sub_23E900B94();
  return v17;
}

uint64_t sub_23E89162C(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_23E891674()
{
  MEMORY[0x23EF18610](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23E8916E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23E891730(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t objectdestroy_2Tm()
{

  if (*(v0 + 24))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

unint64_t sub_23E8917DC(uint64_t a1)
{
  result = sub_23E891804();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_23E891804()
{
  result = qword_27E35E7E0;
  if (!qword_27E35E7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35E7E0);
  }

  return result;
}