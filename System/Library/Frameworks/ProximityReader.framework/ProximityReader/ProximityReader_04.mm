uint64_t sub_23A6AA0A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CCC8, &qword_23A6E3C40);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_23A6AA164()
{
  result = qword_27DF9CEA8;
  if (!qword_27DF9CEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9CEA8);
  }

  return result;
}

void sub_23A6AA1E0(uint64_t a1, __n128 a2)
{
  sub_23A6AA274(319, a2);
  if (v2 <= 0x3F)
  {
    sub_23A6AA2CC();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23A6AA274(uint64_t a1, __n128 a2)
{
  if (!qword_27DF9CD80)
  {
    sub_23A6DE0A4();
    v2 = sub_23A6DF954();
    if (!v3)
    {
      atomic_store(v2, &qword_27DF9CD80);
    }
  }
}

void sub_23A6AA2CC()
{
  if (!qword_27DF9CEB0)
  {
    v0 = sub_23A6DF744();
    if (!v1)
    {
      atomic_store(v0, &qword_27DF9CEB0);
    }
  }
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_23A6AA330(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_23A6AA378(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_23A6AA3D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t MobileDriversLicenseDataRequest.Response.DocumentElements.EyeColor.hashValue.getter()
{
  v1 = *v0;
  sub_23A6DFCE4();
  MEMORY[0x23EE8A1E0](v1);
  return sub_23A6DFD14();
}

uint64_t _s8EyeColorOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s8EyeColorOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t MobileDriversLicenseDataRequest.Response.DocumentElements.HairColor.hashValue.getter()
{
  v1 = *v0;
  sub_23A6DFCE4();
  MEMORY[0x23EE8A1E0](v1);
  return sub_23A6DFD14();
}

uint64_t MobileDriversLicenseDataRequest.Response.DocumentElements.IssuingAuthority.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t MobileDriversLicenseDataRequest.Response.DocumentElements.IssuingAuthority.jurisdiction.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t MobileDriversLicenseDataRequest.Response.DocumentElements.IssuingAuthority.isoCountryCode.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t MobileDriversLicenseDataRequest.Response.DocumentElements.IssuingAuthority.hash(into:)(uint64_t a1)
{
  v2 = v1[3];
  v3 = v1[5];
  if (v1[1])
  {
    sub_23A6DFD04();
    sub_23A6DF684();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_8:
    sub_23A6DFD04();
    if (v3)
    {
      goto LABEL_4;
    }

    return sub_23A6DFD04();
  }

  sub_23A6DFD04();
  if (!v2)
  {
    goto LABEL_8;
  }

LABEL_3:
  sub_23A6DFD04();
  sub_23A6DF684();
  if (!v3)
  {
    return sub_23A6DFD04();
  }

LABEL_4:
  sub_23A6DFD04();

  return sub_23A6DF684();
}

uint64_t MobileDriversLicenseDataRequest.Response.DocumentElements.IssuingAuthority.hashValue.getter()
{
  v1 = v0[1];
  v2 = v0[3];
  v3 = v0[5];
  sub_23A6DFCE4();
  if (v1)
  {
    sub_23A6DFD04();
    sub_23A6DF684();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_23A6DFD04();
    if (v3)
    {
      goto LABEL_4;
    }

LABEL_7:
    sub_23A6DFD04();
    return sub_23A6DFD14();
  }

  sub_23A6DFD04();
  if (!v2)
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_23A6DFD04();
  sub_23A6DF684();
  if (!v3)
  {
    goto LABEL_7;
  }

LABEL_4:
  sub_23A6DFD04();
  sub_23A6DF684();
  return sub_23A6DFD14();
}

uint64_t sub_23A6AA8F8(uint64_t a1)
{
  v2 = v1[3];
  v3 = v1[5];
  if (v1[1])
  {
    sub_23A6DFD04();
    sub_23A6DF684();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_8:
    sub_23A6DFD04();
    if (v3)
    {
      goto LABEL_4;
    }

    return sub_23A6DFD04();
  }

  sub_23A6DFD04();
  if (!v2)
  {
    goto LABEL_8;
  }

LABEL_3:
  sub_23A6DFD04();
  sub_23A6DF684();
  if (!v3)
  {
    return sub_23A6DFD04();
  }

LABEL_4:
  sub_23A6DFD04();

  return sub_23A6DF684();
}

uint64_t sub_23A6AA9DC(uint64_t a1)
{
  v2 = v1[1];
  v3 = v1[3];
  v4 = v1[5];
  sub_23A6DFCE4();
  if (v2)
  {
    sub_23A6DFD04();
    sub_23A6DF684();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_23A6DFD04();
    if (v4)
    {
      goto LABEL_4;
    }

LABEL_7:
    sub_23A6DFD04();
    return sub_23A6DFD14();
  }

  sub_23A6DFD04();
  if (!v3)
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_23A6DFD04();
  sub_23A6DF684();
  if (!v4)
  {
    goto LABEL_7;
  }

LABEL_4:
  sub_23A6DFD04();
  sub_23A6DF684();
  return sub_23A6DFD14();
}

uint64_t _s15ProximityReader31MobileDriversLicenseDataRequestV8ResponseV16DocumentElementsV16IssuingAuthorityV2eeoiySbAI_AItFZ_0(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v6 = a1[3];
  v5 = a1[4];
  v7 = a1[5];
  v8 = a2[1];
  v9 = a2[2];
  v11 = a2[3];
  v10 = a2[4];
  v12 = a2[5];
  if (v3)
  {
    if (!v8 || (*a1 != *a2 || v3 != v8) && (sub_23A6DFC04() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  if (v6)
  {
    if (!v11 || (v4 != v9 || v6 != v11) && (sub_23A6DFC04() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  if (v7)
  {
    if (v12 && (v5 == v10 && v7 == v12 || (sub_23A6DFC04() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v12)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_23A6AABCC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_23A6AAC28(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t MobileDriversLicenseDataRequest.Response.DocumentElements.Sex.hashValue.getter()
{
  v1 = *v0;
  sub_23A6DFCE4();
  MEMORY[0x23EE8A1E0](v1);
  return sub_23A6DFD14();
}

uint64_t MobileDriversLicenseDataRequest.Response.DocumentElements.Sex.localizedName.getter()
{
  v1 = sub_23A6DEFB4();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 104))(v5, **(&unk_278B544B8 + *v0), v1, v3);
  v6 = sub_23A6DEFA4();
  (*(v2 + 8))(v5, v1);
  return v6;
}

uint64_t getEnumTagSinglePayload for ForegroundActiveState(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ForegroundActiveState(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_23A6AAF7C(unint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v26 - v3;
  v5 = sub_23A6DCDF0();
  sub_23A69A270(v5, v4);
  v6 = sub_23A6DECC4();
  v7 = *(v6 - 8);
  v8 = a1 >> 62;
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    sub_23A646DB0(v4, &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {

    v9 = sub_23A6DECA4();
    v10 = sub_23A6DF874();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 134217984;
      if (v8)
      {
        v12 = sub_23A6DFB54();
      }

      else
      {
        v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v11 + 4) = v12;

      _os_log_impl(&dword_23A63D000, v9, v10, "Received a batch of [%ld] transaction(s)", v11, 0xCu);
      MEMORY[0x23EE8A960](v11, -1, -1);
    }

    else
    {
    }

    (*(v7 + 8))(v4, v6);
  }

  if (v8)
  {
    goto LABEL_25;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_23A6DFB54())
  {
    v14 = 0;
    v15 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x23EE89F80](v14, a1);
      }

      else
      {
        if (v14 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_24;
        }

        v16 = *(a1 + 8 * v14 + 32);
      }

      v17 = v16;
      v18 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      sub_23A6DAFF0(v26);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_23A6ABAF8(0, *(v15 + 2) + 1, 1, v15);
      }

      v20 = *(v15 + 2);
      v19 = *(v15 + 3);
      if (v20 >= v19 >> 1)
      {
        v15 = sub_23A6ABAF8((v19 > 1), v20 + 1, 1, v15);
      }

      *(v15 + 2) = v20 + 1;
      v21 = &v15[64 * v20];
      v22 = v26[0];
      v23 = v26[1];
      v24 = v26[3];
      *(v21 + 4) = v26[2];
      *(v21 + 5) = v24;
      *(v21 + 2) = v22;
      *(v21 + 3) = v23;
      ++v14;
      if (v18 == i)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    ;
  }

  v15 = MEMORY[0x277D84F90];
LABEL_27:
  swift_beginAccess();
  sub_23A6AB2AC(v15);
  swift_endAccess();
}

uint64_t sub_23A6AB2AC(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_23A6ABAF8(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_23A6AB3A0(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v19 - v5;
  v7 = sub_23A6DCDF0();
  sub_23A69A270(v7, v6);
  v8 = sub_23A6DECC4();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) == 1)
  {
    sub_23A646DB0(v6, &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v10 = a1;
    v11 = sub_23A6DECA4();
    v12 = sub_23A6DF874();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      *(v13 + 4) = v10;
      *v14 = v10;
      v15 = v10;
      _os_log_impl(&dword_23A63D000, v11, v12, "Received batch header:\n%@", v13, 0xCu);
      sub_23A646DB0(v14, &qword_27DF9C8B0, &qword_23A6E4ED0);
      MEMORY[0x23EE8A960](v14, -1, -1);
      MEMORY[0x23EE8A960](v13, -1, -1);
    }

    (*(v9 + 8))(v6, v8);
  }

  v16 = *(v2 + 24);
  *(v2 + 24) = a1;

  v17 = a1;
}

double sub_23A6AB5AC@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v47 - v8;
  v10 = sub_23A6DE2F4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v2 + 24);
  if (!v14)
  {
    v33 = sub_23A6DCDF0();
    sub_23A69A270(v33, v6);
    v34 = sub_23A6DECC4();
    v35 = *(v34 - 8);
    if ((*(v35 + 48))(v6, 1, v34) == 1)
    {
      sub_23A646DB0(v6, &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v39 = sub_23A6DECA4();
      v40 = sub_23A6DF884();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&dword_23A63D000, v39, v40, "Batch header was not populated", v41, 2u);
        MEMORY[0x23EE8A960](v41, -1, -1);
      }

      (*(v35 + 8))(v6, v34);
    }

    goto LABEL_15;
  }

  v15 = v14;
  v16 = sub_23A6DEAA4();
  swift_beginAccess();
  if (v16 != *(*(v2 + 16) + 16))
  {
    v36 = sub_23A6DCDF0();
    sub_23A69A270(v36, v9);
    v37 = sub_23A6DECC4();
    v38 = *(v37 - 8);
    if ((*(v38 + 48))(v9, 1, v37) == 1)
    {

      sub_23A646DB0(v9, &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v42 = v15;

      v43 = sub_23A6DECA4();
      v44 = sub_23A6DF884();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 134218240;
        *(v45 + 4) = *(*(v2 + 16) + 16);

        *(v45 + 12) = 2048;
        *(v45 + 14) = sub_23A6DEAA4();

        _os_log_impl(&dword_23A63D000, v43, v44, "Transactions received [%ld] do not match the requested [%ld]", v45, 0x16u);
        MEMORY[0x23EE8A960](v45, -1, -1);
      }

      else
      {

        v43 = v42;
      }

      (*(v38 + 8))(v9, v37);
    }

LABEL_15:
    *(a1 + 64) = 0;
    *&v32 = 0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return *&v32;
  }

  sub_23A6DEAB4();
  v48 = sub_23A6DE2C4();
  v18 = v17;
  (*(v11 + 8))(v13, v10);
  v19 = sub_23A6DEAA4();
  v20 = sub_23A6DEAC4();
  v22 = v21;
  v23 = sub_23A6DE224();
  v25 = v24;
  sub_23A691B9C(v20, v22);
  v26 = sub_23A6DEA94();
  v27 = sub_23A6DEA84();
  v29 = v28;

  sub_23A645604(v48, v18, v19, v23, v25, v26, v27, v29, v49, v30);

  v31 = v49[3];
  *(a1 + 32) = v49[2];
  *(a1 + 48) = v31;
  *(a1 + 64) = v50;
  v32 = v49[1];
  *a1 = v49[0];
  *(a1 + 16) = v32;
  return *&v32;
}

uint64_t sub_23A6ABA88()
{

  return swift_deallocClassInstance();
}

uint64_t sub_23A6ABAC8()
{
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x277D84F90];
  *(result + 24) = 0;
  return result;
}

char *sub_23A6ABAF8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CEB8, &unk_23A6E4060);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t static MobileNationalIDCardDataRequest.isSupportedRegion(_:)(uint64_t a1)
{
  v2 = *(**sub_23A6509F0() + 168);

  LOBYTE(a1) = v2(a1);

  return a1 & 1;
}

uint64_t MobileNationalIDCardDataRequest.region.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23A6DE314();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t MobileNationalIDCardDataRequest.region.setter(uint64_t a1)
{
  v3 = sub_23A6DE314();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t MobileNationalIDCardDataRequest.retainedElements.getter(__n128 a1)
{
  type metadata accessor for MobileNationalIDCardDataRequest(0);
}

uint64_t type metadata accessor for MobileNationalIDCardDataRequest(uint64_t a1)
{
  result = qword_27DFA15D0;
  if (!qword_27DFA15D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MobileNationalIDCardDataRequest.retainedElements.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MobileNationalIDCardDataRequest(0) + 20);

  *(v1 + v3) = a1;
  return result;
}

uint64_t MobileNationalIDCardDataRequest.nonRetainedElements.getter()
{
  type metadata accessor for MobileNationalIDCardDataRequest(0);
}

uint64_t MobileNationalIDCardDataRequest.nonRetainedElements.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MobileNationalIDCardDataRequest(0) + 24);

  *(v1 + v3) = a1;
  return result;
}

uint64_t MobileNationalIDCardDataRequest.init(region:retainedElements:nonRetainedElements:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_23A6DE314();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  result = type metadata accessor for MobileNationalIDCardDataRequest(0);
  *(a4 + *(result + 20)) = a2;
  *(a4 + *(result + 24)) = a3;
  return result;
}

uint64_t static MobileNationalIDCardDataRequest.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((MEMORY[0x23EE887F0]() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for MobileNationalIDCardDataRequest(0);
  if ((sub_23A6AC058(*(a1 + *(v4 + 20)), *(a2 + *(v4 + 20)), v5) & 1) == 0)
  {
    return 0;
  }

  v7 = *(v4 + 24);
  v8 = *(a1 + v7);
  v9 = *(a2 + v7);

  return sub_23A6AC058(v8, v9, v6);
}

uint64_t sub_23A6AC058(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for MobileNationalIDCardDataRequest.Element(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v23 - v11;
  v13 = *(a1 + 16);
  if (v13 == *(a2 + 16))
  {
    if (!v13 || a1 == a2)
    {
      v19 = 1;
    }

    else
    {
      v14 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v15 = a1 + v14;
      v16 = a2 + v14;
      v17 = *(v9 + 72);
      do
      {
        sub_23A6AC4A0(v15, v12, v10);
        sub_23A6AC4A0(v16, v7, v18);
        sub_23A6AD06C(&qword_27DF9CEF0, type metadata accessor for MobileNationalIDCardDataRequest.Element, &protocol conformance descriptor for MobileNationalIDCardDataRequest.Element);
        v19 = sub_23A6DF604();
        sub_23A6AC504(v7, v20);
        sub_23A6AC504(v12, v21);
        if ((v19 & 1) == 0)
        {
          break;
        }

        v16 += v17;
        v15 += v17;
        --v13;
      }

      while (v13);
    }
  }

  else
  {
    v19 = 0;
  }

  return v19 & 1;
}

uint64_t MobileNationalIDCardDataRequest.hash(into:)(uint64_t a1, __n128 a2)
{
  v3 = type metadata accessor for MobileNationalIDCardDataRequest.Element(0);
  v25 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - v7;
  sub_23A6DE314();
  sub_23A6AD06C(&qword_27DF9CEC0, MEMORY[0x277CC9698], MEMORY[0x277CC96A8]);
  sub_23A6DF5E4();
  v9 = type metadata accessor for MobileNationalIDCardDataRequest(0);
  v10 = *(v9 + 20);
  v24 = v2;
  v11 = *(v2 + v10);
  MEMORY[0x23EE8A1E0](*(v11 + 16));
  v13 = *(v11 + 16);
  if (v13)
  {
    v14 = v11 + ((*(v25 + 80) + 32) & ~*(v25 + 80));
    v15 = *(v25 + 72);
    do
    {
      sub_23A6AC4A0(v14, v8, v12);
      sub_23A6AD06C(&qword_27DF9CEC8, type metadata accessor for MobileNationalIDCardDataRequest.Element, &protocol conformance descriptor for MobileNationalIDCardDataRequest.Element);
      sub_23A6DF5E4();
      sub_23A6AC504(v8, v16);
      v14 += v15;
      --v13;
    }

    while (v13);
  }

  v17 = *(v24 + *(v9 + 24));
  result = MEMORY[0x23EE8A1E0](*(v17 + 16));
  v20 = *(v17 + 16);
  if (v20)
  {
    v21 = v17 + ((*(v25 + 80) + 32) & ~*(v25 + 80));
    v22 = *(v25 + 72);
    do
    {
      sub_23A6AC4A0(v21, v5, v19);
      sub_23A6AD06C(&qword_27DF9CEC8, type metadata accessor for MobileNationalIDCardDataRequest.Element, &protocol conformance descriptor for MobileNationalIDCardDataRequest.Element);
      sub_23A6DF5E4();
      result = sub_23A6AC504(v5, v23);
      v21 += v22;
      --v20;
    }

    while (v20);
  }

  return result;
}

uint64_t sub_23A6AC4A0(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for MobileNationalIDCardDataRequest.Element(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23A6AC504(uint64_t a1, __n128 a2)
{
  v3 = type metadata accessor for MobileNationalIDCardDataRequest.Element(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t MobileNationalIDCardDataRequest.hashValue.getter(__n128 a1)
{
  v2 = type metadata accessor for MobileNationalIDCardDataRequest.Element(0);
  v22 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v22 - v6;
  sub_23A6DFCE4();
  sub_23A6DE314();
  sub_23A6AD06C(&qword_27DF9CEC0, MEMORY[0x277CC9698], MEMORY[0x277CC96A8]);
  sub_23A6DF5E4();
  v8 = type metadata accessor for MobileNationalIDCardDataRequest(0);
  v9 = *(v1 + *(v8 + 20));
  MEMORY[0x23EE8A1E0](*(v9 + 16));
  v11 = *(v9 + 16);
  if (v11)
  {
    v12 = v9 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
    v13 = *(v22 + 72);
    do
    {
      sub_23A6AC4A0(v12, v7, v10);
      sub_23A6AD06C(&qword_27DF9CEC8, type metadata accessor for MobileNationalIDCardDataRequest.Element, &protocol conformance descriptor for MobileNationalIDCardDataRequest.Element);
      sub_23A6DF5E4();
      sub_23A6AC504(v7, v14);
      v12 += v13;
      --v11;
    }

    while (v11);
  }

  v15 = *(v1 + *(v8 + 24));
  MEMORY[0x23EE8A1E0](*(v15 + 16));
  v17 = *(v15 + 16);
  if (v17)
  {
    v18 = v15 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
    v19 = *(v22 + 72);
    do
    {
      sub_23A6AC4A0(v18, v4, v16);
      sub_23A6AD06C(&qword_27DF9CEC8, type metadata accessor for MobileNationalIDCardDataRequest.Element, &protocol conformance descriptor for MobileNationalIDCardDataRequest.Element);
      sub_23A6DF5E4();
      sub_23A6AC504(v4, v20);
      v18 += v19;
      --v17;
    }

    while (v17);
  }

  return sub_23A6DFD14();
}

uint64_t sub_23A6AC7F4(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for MobileNationalIDCardDataRequest.Element(0);
  v25 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v24 - v9;
  sub_23A6DE314();
  sub_23A6AD06C(&qword_27DF9CEC0, MEMORY[0x277CC9698], MEMORY[0x277CC96A8]);
  sub_23A6DF5E4();
  v24 = a2;
  v11 = *(v3 + *(a2 + 20));
  MEMORY[0x23EE8A1E0](*(v11 + 16));
  v13 = *(v11 + 16);
  if (v13)
  {
    v14 = v11 + ((*(v25 + 80) + 32) & ~*(v25 + 80));
    v15 = *(v25 + 72);
    do
    {
      sub_23A6AC4A0(v14, v10, v12);
      sub_23A6AD06C(&qword_27DF9CEC8, type metadata accessor for MobileNationalIDCardDataRequest.Element, &protocol conformance descriptor for MobileNationalIDCardDataRequest.Element);
      sub_23A6DF5E4();
      sub_23A6AC504(v10, v16);
      v14 += v15;
      --v13;
    }

    while (v13);
  }

  v17 = *(v3 + *(v24 + 24));
  result = MEMORY[0x23EE8A1E0](*(v17 + 16));
  v20 = *(v17 + 16);
  if (v20)
  {
    v21 = v17 + ((*(v25 + 80) + 32) & ~*(v25 + 80));
    v22 = *(v25 + 72);
    do
    {
      sub_23A6AC4A0(v21, v7, v19);
      sub_23A6AD06C(&qword_27DF9CEC8, type metadata accessor for MobileNationalIDCardDataRequest.Element, &protocol conformance descriptor for MobileNationalIDCardDataRequest.Element);
      sub_23A6DF5E4();
      result = sub_23A6AC504(v7, v23);
      v21 += v22;
      --v20;
    }

    while (v20);
  }

  return result;
}

uint64_t sub_23A6ACA74(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for MobileNationalIDCardDataRequest.Element(0);
  v25 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v25 - v9;
  sub_23A6DFCE4();
  sub_23A6DE314();
  sub_23A6AD06C(&qword_27DF9CEC0, MEMORY[0x277CC9698], MEMORY[0x277CC96A8]);
  sub_23A6DF5E4();
  v11 = a2;
  v12 = *(v3 + *(a2 + 20));
  MEMORY[0x23EE8A1E0](*(v12 + 16));
  v14 = *(v12 + 16);
  if (v14)
  {
    v15 = v12 + ((*(v25 + 80) + 32) & ~*(v25 + 80));
    v16 = *(v25 + 72);
    do
    {
      sub_23A6AC4A0(v15, v10, v13);
      sub_23A6AD06C(&qword_27DF9CEC8, type metadata accessor for MobileNationalIDCardDataRequest.Element, &protocol conformance descriptor for MobileNationalIDCardDataRequest.Element);
      sub_23A6DF5E4();
      sub_23A6AC504(v10, v17);
      v15 += v16;
      --v14;
    }

    while (v14);
  }

  v18 = *(v3 + *(v11 + 24));
  MEMORY[0x23EE8A1E0](*(v18 + 16));
  v20 = *(v18 + 16);
  if (v20)
  {
    v21 = v18 + ((*(v25 + 80) + 32) & ~*(v25 + 80));
    v22 = *(v25 + 72);
    do
    {
      sub_23A6AC4A0(v21, v7, v19);
      sub_23A6AD06C(&qword_27DF9CEC8, type metadata accessor for MobileNationalIDCardDataRequest.Element, &protocol conformance descriptor for MobileNationalIDCardDataRequest.Element);
      sub_23A6DF5E4();
      sub_23A6AC504(v7, v23);
      v21 += v22;
      --v20;
    }

    while (v20);
  }

  return sub_23A6DFD14();
}

uint64_t sub_23A6ACD08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((MEMORY[0x23EE887F0]() & 1) == 0 || (sub_23A6AC058(*(a1 + *(a3 + 20)), *(a2 + *(a3 + 20)), v6) & 1) == 0)
  {
    return 0;
  }

  v8 = *(a3 + 24);
  v9 = *(a1 + v8);
  v10 = *(a2 + v8);

  return sub_23A6AC058(v9, v10, v7);
}

uint64_t static MobileDocumentRequest<>.nationalIDCardData(region:retaining:notRetaining:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_23A6DE314();
  (*(*(v8 - 8) + 16))(a4, a1, v8);
  v9 = type metadata accessor for MobileNationalIDCardDataRequest(0);
  *(a4 + *(v9 + 20)) = a2;
  *(a4 + *(v9 + 24)) = a3;
}

uint64_t sub_23A6ACE70(uint64_t a1)
{
  result = sub_23A6AD06C(&qword_27DF9CED0, type metadata accessor for MobileNationalIDCardDataRequest, &protocol conformance descriptor for MobileNationalIDCardDataRequest);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_23A6ACF10(uint64_t a1)
{
  result = sub_23A6AD06C(&qword_27DF9CEE0, type metadata accessor for MobileNationalIDCardDataRequest, &protocol conformance descriptor for MobileNationalIDCardDataRequest);
  *(a1 + 8) = result;
  return result;
}

void sub_23A6ACF90(uint64_t a1)
{
  sub_23A6DE314();
  if (v2 <= 0x3F)
  {
    sub_23A6AD014(319, v1);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23A6AD014(uint64_t a1, __n128 a2)
{
  if (!qword_27DF9CEE8)
  {
    type metadata accessor for MobileNationalIDCardDataRequest.Element(255);
    v2 = sub_23A6DF744();
    if (!v3)
    {
      atomic_store(v2, &qword_27DF9CEE8);
    }
  }
}

uint64_t sub_23A6AD06C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for MobileNationalIDCardDataRequest.Element(uint64_t a1)
{
  result = qword_27DFA17C0;
  if (!qword_27DFA17C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23A6AD264(uint64_t a1, uint64_t *a2, unsigned int *a3)
{
  v5 = type metadata accessor for MobileNationalIDCardDataRequest.Element(0);
  __swift_allocate_value_buffer(v5, a2);
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *a3;
  v8 = sub_23A6DE9B4();
  v9 = *(*(v8 - 8) + 104);

  return v9(v6, v7, v8);
}

uint64_t sub_23A6AD324@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for MobileNationalIDCardDataRequest.Element(0);
  v7 = __swift_project_value_buffer(v6, a2);

  return sub_23A6AC4A0(v7, a4, v8);
}

uint64_t static MobileNationalIDCardDataRequest.Element.ageAtLeast(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  v3 = *MEMORY[0x277D43A48];
  v4 = sub_23A6DE9B4();
  v5 = *(*(v4 - 8) + 104);

  return v5(a2, v3, v4);
}

uint64_t MobileNationalIDCardDataRequest.Element.hash(into:)(uint64_t a1)
{
  sub_23A6DE9B4();
  sub_23A6AD6E4(&qword_27DF9CC10, MEMORY[0x277D43AE8], MEMORY[0x277D43AF0]);

  return sub_23A6DF5E4();
}

uint64_t MobileNationalIDCardDataRequest.Element.hashValue.getter()
{
  sub_23A6DFCE4();
  sub_23A6DE9B4();
  sub_23A6AD6E4(&qword_27DF9CC10, MEMORY[0x277D43AE8], MEMORY[0x277D43AF0]);
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

uint64_t sub_23A6AD50C()
{
  sub_23A6DFCE4();
  sub_23A6DE9B4();
  sub_23A6AD6E4(&qword_27DF9CC10, MEMORY[0x277D43AE8], MEMORY[0x277D43AF0]);
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

uint64_t sub_23A6AD594(uint64_t a1)
{
  sub_23A6DE9B4();
  sub_23A6AD6E4(&qword_27DF9CC10, MEMORY[0x277D43AE8], MEMORY[0x277D43AF0]);

  return sub_23A6DF5E4();
}

uint64_t sub_23A6AD618(uint64_t a1)
{
  sub_23A6DFCE4();
  sub_23A6DE9B4();
  sub_23A6AD6E4(&qword_27DF9CC10, MEMORY[0x277D43AE8], MEMORY[0x277D43AF0]);
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

uint64_t sub_23A6AD6E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23A6AD760(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileNationalIDCardDataRequest.Response.DocumentElements(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t MobileNationalIDCardDataRequest.Response.region.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MobileNationalIDCardDataRequest.Response(0) + 20);
  v4 = sub_23A6DE314();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for MobileNationalIDCardDataRequest.Response(uint64_t a1)
{
  result = qword_27DFA1950;
  if (!qword_27DFA1950)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static MobileNationalIDCardDataRequest.Response.== infix(_:_:)()
{
  if (static MobileNationalIDCardDataRequest.Response.DocumentElements.== infix(_:_:)())
  {
    type metadata accessor for MobileNationalIDCardDataRequest.Response(0);

    JUMPOUT(0x23EE887F0);
  }

  return 0;
}

uint64_t MobileNationalIDCardDataRequest.Response.hash(into:)(uint64_t a1)
{
  type metadata accessor for MobileNationalIDCardDataRequest.Response.DocumentElements(0);
  sub_23A6ADF50(&qword_27DF9CEF8, type metadata accessor for MobileNationalIDCardDataRequest.Response.DocumentElements, &protocol conformance descriptor for MobileNationalIDCardDataRequest.Response.DocumentElements);
  sub_23A6DF5E4();
  type metadata accessor for MobileNationalIDCardDataRequest.Response(0);
  sub_23A6DE314();
  sub_23A6ADF50(&qword_27DF9CEC0, MEMORY[0x277CC9698], MEMORY[0x277CC96A8]);
  return sub_23A6DF5E4();
}

uint64_t MobileNationalIDCardDataRequest.Response.hashValue.getter()
{
  sub_23A6DFCE4();
  type metadata accessor for MobileNationalIDCardDataRequest.Response.DocumentElements(0);
  sub_23A6ADF50(&qword_27DF9CEF8, type metadata accessor for MobileNationalIDCardDataRequest.Response.DocumentElements, &protocol conformance descriptor for MobileNationalIDCardDataRequest.Response.DocumentElements);
  sub_23A6DF5E4();
  type metadata accessor for MobileNationalIDCardDataRequest.Response(0);
  sub_23A6DE314();
  sub_23A6ADF50(&qword_27DF9CEC0, MEMORY[0x277CC9698], MEMORY[0x277CC96A8]);
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

uint64_t sub_23A6ADAB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_23A6ADDE4(a1, a3);
  v5 = *(type metadata accessor for MobileNationalIDCardDataRequest.Response(0) + 20);
  v6 = sub_23A6DE314();
  v7 = *(*(v6 - 8) + 32);

  return v7(a3 + v5, a2, v6);
}

uint64_t sub_23A6ADB3C()
{
  sub_23A6DFCE4();
  type metadata accessor for MobileNationalIDCardDataRequest.Response.DocumentElements(0);
  sub_23A6ADF50(&qword_27DF9CEF8, type metadata accessor for MobileNationalIDCardDataRequest.Response.DocumentElements, &protocol conformance descriptor for MobileNationalIDCardDataRequest.Response.DocumentElements);
  sub_23A6DF5E4();
  sub_23A6DE314();
  sub_23A6ADF50(&qword_27DF9CEC0, MEMORY[0x277CC9698], MEMORY[0x277CC96A8]);
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

uint64_t sub_23A6ADC28(uint64_t a1)
{
  type metadata accessor for MobileNationalIDCardDataRequest.Response.DocumentElements(0);
  sub_23A6ADF50(&qword_27DF9CEF8, type metadata accessor for MobileNationalIDCardDataRequest.Response.DocumentElements, &protocol conformance descriptor for MobileNationalIDCardDataRequest.Response.DocumentElements);
  sub_23A6DF5E4();
  sub_23A6DE314();
  sub_23A6ADF50(&qword_27DF9CEC0, MEMORY[0x277CC9698], MEMORY[0x277CC96A8]);
  return sub_23A6DF5E4();
}

uint64_t sub_23A6ADCFC(uint64_t a1)
{
  sub_23A6DFCE4();
  type metadata accessor for MobileNationalIDCardDataRequest.Response.DocumentElements(0);
  sub_23A6ADF50(&qword_27DF9CEF8, type metadata accessor for MobileNationalIDCardDataRequest.Response.DocumentElements, &protocol conformance descriptor for MobileNationalIDCardDataRequest.Response.DocumentElements);
  sub_23A6DF5E4();
  sub_23A6DE314();
  sub_23A6ADF50(&qword_27DF9CEC0, MEMORY[0x277CC9698], MEMORY[0x277CC96A8]);
  sub_23A6DF5E4();
  return sub_23A6DFD14();
}

uint64_t sub_23A6ADDE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileNationalIDCardDataRequest.Response.DocumentElements(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23A6ADE90()
{
  if (static MobileNationalIDCardDataRequest.Response.DocumentElements.== infix(_:_:)())
  {

    JUMPOUT(0x23EE887F0);
  }

  return 0;
}

uint64_t sub_23A6ADEF8(uint64_t a1)
{
  result = sub_23A6ADF50(&qword_27DF9CC60, type metadata accessor for MobileNationalIDCardDataRequest.Response, &protocol conformance descriptor for MobileNationalIDCardDataRequest.Response);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_23A6ADF50(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23A6ADFC0(uint64_t a1)
{
  result = type metadata accessor for MobileNationalIDCardDataRequest.Response.DocumentElements(319);
  if (v2 <= 0x3F)
  {
    result = sub_23A6DE314();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t MobileNationalIDCardDataRequest.Response.DocumentElements.portraitData.getter()
{
  v1 = v0 + *(type metadata accessor for MobileNationalIDCardDataRequest.Response.DocumentElements(0) + 20);
  v2 = *v1;
  sub_23A693750(*v1, *(v1 + 8));
  return v2;
}

uint64_t type metadata accessor for MobileNationalIDCardDataRequest.Response.DocumentElements(uint64_t a1)
{
  result = qword_27DFA1A60;
  if (!qword_27DFA1A60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MobileNationalIDCardDataRequest.Response.DocumentElements.ageAtLeastElements.getter()
{
  type metadata accessor for MobileNationalIDCardDataRequest.Response.DocumentElements(0);
}

uint64_t MobileNationalIDCardDataRequest.Response.DocumentElements.sex.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for MobileNationalIDCardDataRequest.Response.DocumentElements(0);
  *a1 = *(v1 + *(result + 36));
  return result;
}

uint64_t MobileNationalIDCardDataRequest.Response.DocumentElements.documentNumber.getter()
{
  v1 = *(v0 + *(type metadata accessor for MobileNationalIDCardDataRequest.Response.DocumentElements(0) + 40));

  return v1;
}

uint64_t MobileNationalIDCardDataRequest.Response.DocumentElements.hash(into:)(uint64_t a1, __n128 a2)
{
  v3 = v2;
  v5 = sub_23A6DE0A4();
  v25 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v24 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CCC8, &qword_23A6E3C40);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v23 - v8;
  v10 = sub_23A6DE0F4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CCC0, &unk_23A6E3790);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v23 - v15;
  sub_23A646D48(v3, &v23 - v15, &qword_27DF9CCC0, &unk_23A6E3790);
  if ((*(v11 + 48))(v16, 1, v10) == 1)
  {
    sub_23A6DFD04();
  }

  else
  {
    (*(v11 + 32))(v13, v16, v10);
    sub_23A6DFD04();
    sub_23A6AF394(&qword_27DF9CCF8, MEMORY[0x277CC8E50], MEMORY[0x277CC8E60]);
    sub_23A6DF5E4();
    (*(v11 + 8))(v13, v10);
  }

  v17 = type metadata accessor for MobileNationalIDCardDataRequest.Response.DocumentElements(0);
  v18 = v25;
  if (*(v3 + v17[5] + 8) >> 60 == 15)
  {
    sub_23A6DFD04();
  }

  else
  {
    sub_23A6DFD04();
    sub_23A6DE244();
  }

  sub_23A6A3D10(a1, *(v3 + v17[6]));
  v19 = v3 + v17[7];
  if (*(v19 + 8) == 1)
  {
    sub_23A6DFD04();
  }

  else
  {
    v20 = *v19;
    sub_23A6DFD04();
    MEMORY[0x23EE8A1E0](v20);
  }

  sub_23A646D48(v3 + v17[8], v9, &qword_27DF9CCC8, &qword_23A6E3C40);
  if ((*(v18 + 48))(v9, 1, v5) == 1)
  {
    sub_23A6DFD04();
  }

  else
  {
    v21 = v24;
    (*(v18 + 32))(v24, v9, v5);
    sub_23A6DFD04();
    sub_23A6AF394(&qword_27DF9CD00, MEMORY[0x277CC8990], MEMORY[0x277CC89A0]);
    sub_23A6DF5E4();
    (*(v18 + 8))(v21, v5);
  }

  if (*(v3 + v17[9]) == 4)
  {
    sub_23A6DFD04();
  }

  else
  {
    v26 = *(v3 + v17[9]);
    sub_23A6DFD04();
    sub_23A6AF0B4();
    sub_23A6DF5E4();
  }

  if (!*(v3 + v17[10] + 8))
  {
    return sub_23A6DFD04();
  }

  sub_23A6DFD04();
  return sub_23A6DF684();
}

uint64_t MobileNationalIDCardDataRequest.Response.DocumentElements.hashValue.getter()
{
  sub_23A6DFCE4();
  MobileNationalIDCardDataRequest.Response.DocumentElements.hash(into:)(v2, v0);
  return sub_23A6DFD14();
}

uint64_t sub_23A6AE734@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v18 = *a8;
  sub_23A69EED0(a1, a9, &qword_27DF9CCC0, &unk_23A6E3790);
  v19 = type metadata accessor for MobileNationalIDCardDataRequest.Response.DocumentElements(0);
  v20 = (a9 + v19[5]);
  *v20 = a2;
  v20[1] = a3;
  *(a9 + v19[6]) = a4;
  v21 = a9 + v19[7];
  *v21 = a5;
  *(v21 + 8) = a6 & 1;
  result = sub_23A69EED0(a7, a9 + v19[8], &qword_27DF9CCC8, &qword_23A6E3C40);
  *(a9 + v19[9]) = v18;
  v23 = (a9 + v19[10]);
  *v23 = a10;
  v23[1] = a11;
  return result;
}

uint64_t sub_23A6AE828()
{
  sub_23A6DFCE4();
  MobileNationalIDCardDataRequest.Response.DocumentElements.hash(into:)(v2, v0);
  return sub_23A6DFD14();
}

uint64_t sub_23A6AE86C(uint64_t a1)
{
  sub_23A6DFCE4();
  MobileNationalIDCardDataRequest.Response.DocumentElements.hash(into:)(v3, v1);
  return sub_23A6DFD14();
}

BOOL _s15ProximityReader31MobileNationalIDCardDataRequestV8ResponseV16DocumentElementsV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = sub_23A6DE0A4();
  v6 = *(v5 - 8);
  v65 = v5;
  v66 = v6;
  MEMORY[0x28223BE20](v5);
  v63 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CCC8, &qword_23A6E3C40);
  MEMORY[0x28223BE20](v8 - 8);
  v67 = &v63 - v9;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CDF0, &qword_23A6E3DA0);
  MEMORY[0x28223BE20](v64);
  v68 = &v63 - v10;
  v11 = sub_23A6DE0F4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CCC0, &unk_23A6E3790);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v63 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CDF8, &qword_23A6E3900);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v63 - v19;
  v22 = *(v21 + 56);
  v69 = a1;
  sub_23A646D48(a1, &v63 - v19, &qword_27DF9CCC0, &unk_23A6E3790);
  sub_23A646D48(a2, &v20[v22], &qword_27DF9CCC0, &unk_23A6E3790);
  v23 = *(v12 + 48);
  if (v23(v20, 1, v11) == 1)
  {
    if (v23(&v20[v22], 1, v11) == 1)
    {
      sub_23A646DB0(v20, &qword_27DF9CCC0, &unk_23A6E3790);
      goto LABEL_9;
    }

LABEL_6:
    v24 = &qword_27DF9CDF8;
    v25 = &qword_23A6E3900;
    v26 = v20;
LABEL_7:
    sub_23A646DB0(v26, v24, v25);
    return 0;
  }

  sub_23A646D48(v20, v17, &qword_27DF9CCC0, &unk_23A6E3790);
  if (v23(&v20[v22], 1, v11) == 1)
  {
    (*(v12 + 8))(v17, v11);
    goto LABEL_6;
  }

  (*(v12 + 32))(v14, &v20[v22], v11);
  sub_23A6AF394(&qword_27DF9CE50, MEMORY[0x277CC8E50], MEMORY[0x277CC8E68]);
  v27 = sub_23A6DF604();
  v28 = *(v12 + 8);
  v28(v14, v11);
  v28(v17, v11);
  sub_23A646DB0(v20, &qword_27DF9CCC0, &unk_23A6E3790);
  if ((v27 & 1) == 0)
  {
    return 0;
  }

LABEL_9:
  v29 = type metadata accessor for MobileNationalIDCardDataRequest.Response.DocumentElements(0);
  v30 = v29[5];
  v31 = v69;
  v33 = *(v69 + v30);
  v32 = *(v69 + v30 + 8);
  v34 = (a2 + v30);
  v35 = *v34;
  v36 = v34[1];
  if (v32 >> 60 == 15)
  {
    if (v36 >> 60 == 15)
    {
      sub_23A693750(v33, v32);
      sub_23A693750(v35, v36);
      sub_23A6A62F8(v33, v32);
      goto LABEL_15;
    }

LABEL_13:
    sub_23A693750(v33, v32);
    sub_23A693750(v35, v36);
    sub_23A6A62F8(v33, v32);
    sub_23A6A62F8(v35, v36);
    return 0;
  }

  if (v36 >> 60 == 15)
  {
    goto LABEL_13;
  }

  sub_23A693750(v33, v32);
  sub_23A693750(v35, v36);
  v37 = sub_23A6A3EE8(v33, v32, v35, v36);
  sub_23A6A62F8(v35, v36);
  sub_23A6A62F8(v33, v32);
  if (!v37)
  {
    return 0;
  }

LABEL_15:
  if ((sub_23A6A216C(*(v31 + v29[6]), *(a2 + v29[6])) & 1) == 0)
  {
    return 0;
  }

  v38 = v29[7];
  v39 = (v31 + v38);
  v40 = *(v31 + v38 + 8);
  v41 = (a2 + v38);
  v42 = *(a2 + v38 + 8);
  if (v40)
  {
    v44 = v67;
    v43 = v68;
    if (!v42)
    {
      return 0;
    }
  }

  else
  {
    if (*v39 != *v41)
    {
      LOBYTE(v42) = 1;
    }

    v44 = v67;
    v43 = v68;
    if (v42)
    {
      return 0;
    }
  }

  v46 = v29;
  v47 = v29[8];
  v48 = *(v64 + 48);
  sub_23A646D48(v31 + v47, v43, &qword_27DF9CCC8, &qword_23A6E3C40);
  sub_23A646D48(a2 + v47, v43 + v48, &qword_27DF9CCC8, &qword_23A6E3C40);
  v49 = v65;
  v50 = *(v66 + 48);
  if (v50(v43, 1, v65) == 1)
  {
    if (v50(v43 + v48, 1, v49) == 1)
    {
      sub_23A646DB0(v43, &qword_27DF9CCC8, &qword_23A6E3C40);
      goto LABEL_30;
    }

    goto LABEL_28;
  }

  sub_23A646D48(v43, v44, &qword_27DF9CCC8, &qword_23A6E3C40);
  if (v50(v43 + v48, 1, v49) == 1)
  {
    (*(v66 + 8))(v44, v49);
LABEL_28:
    v24 = &qword_27DF9CDF0;
    v25 = &qword_23A6E3DA0;
    v26 = v43;
    goto LABEL_7;
  }

  v51 = v66;
  v52 = v63;
  (*(v66 + 32))(v63, v43 + v48, v49);
  sub_23A6AF394(&qword_27DF9CE10, MEMORY[0x277CC8990], MEMORY[0x277CC89A8]);
  v53 = sub_23A6DF604();
  v54 = *(v51 + 8);
  v54(v52, v49);
  v54(v44, v49);
  sub_23A646DB0(v43, &qword_27DF9CCC8, &qword_23A6E3C40);
  if ((v53 & 1) == 0)
  {
    return 0;
  }

LABEL_30:
  v55 = v46[9];
  v56 = *(v31 + v55);
  v57 = *(a2 + v55);
  if (v56 == 4)
  {
    if (v57 != 4)
    {
      return 0;
    }
  }

  else
  {
    v71 = v56;
    if (v57 == 4)
    {
      return 0;
    }

    v70 = v57;
    sub_23A6AF340();
    if ((sub_23A6DF604() & 1) == 0)
    {
      return 0;
    }
  }

  v58 = v46[10];
  v59 = (v31 + v58);
  v60 = *(v31 + v58 + 8);
  v61 = (a2 + v58);
  v62 = v61[1];
  if (v60)
  {
    return v62 && (*v59 == *v61 && v60 == v62 || (sub_23A6DFC04() & 1) != 0);
  }

  return !v62;
}

unint64_t sub_23A6AF0B4()
{
  result = qword_27DF9CF08;
  if (!qword_27DF9CF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9CF08);
  }

  return result;
}

void sub_23A6AF178(uint64_t a1)
{
  sub_23A6AF2EC(319, &qword_27DF9CD60, MEMORY[0x277CC8E50]);
  if (v1 <= 0x3F)
  {
    sub_23A6A62AC(319, &qword_27DF9CD68, MEMORY[0x277CC9318]);
    if (v2 <= 0x3F)
    {
      sub_23A6A6194();
      if (v3 <= 0x3F)
      {
        sub_23A6A62AC(319, &qword_27DF9CD78, MEMORY[0x277D83B88]);
        if (v4 <= 0x3F)
        {
          sub_23A6AF2EC(319, &qword_27DF9CD80, MEMORY[0x277CC8990]);
          if (v5 <= 0x3F)
          {
            sub_23A6A62AC(319, &qword_27DF9CF18, &type metadata for MobileNationalIDCardDataRequest.Response.DocumentElements.Sex);
            if (v6 <= 0x3F)
            {
              sub_23A6A62AC(319, &qword_27DF9C7C8, MEMORY[0x277D837D0]);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_23A6AF2EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_23A6DF954();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_23A6AF340()
{
  result = qword_27DF9CF20;
  if (!qword_27DF9CF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9CF20);
  }

  return result;
}

uint64_t sub_23A6AF394(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23A6AF3DC@<X0>(char *a1@<X8>)
{
  v2 = sub_23A6DE404();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23A6DE414();
  result = (*(v3 + 88))(v5, v2);
  if (result == *MEMORY[0x277D436C8])
  {
    result = (*(v3 + 8))(v5, v2);
    goto LABEL_3;
  }

  if (result == *MEMORY[0x277D436D0])
  {
    *a1 = 0;
  }

  else
  {
    if (result == *MEMORY[0x277D43638])
    {
      v7 = 1;
      goto LABEL_4;
    }

    if (result == *MEMORY[0x277D436D8])
    {
      goto LABEL_3;
    }

    if (result == *MEMORY[0x277D43630])
    {
      v7 = 5;
      goto LABEL_4;
    }

    if (result == *MEMORY[0x277D43670])
    {
      v7 = 9;
      goto LABEL_4;
    }

    if (result == *MEMORY[0x277D43680])
    {
      goto LABEL_3;
    }

    if (result == *MEMORY[0x277D43658])
    {
      v7 = 8;
      goto LABEL_4;
    }

    if (result == *MEMORY[0x277D43640])
    {
      v7 = 7;
      goto LABEL_4;
    }

    v8 = result == *MEMORY[0x277D43648] || result == *MEMORY[0x277D43650];
    if (v8 || result == *MEMORY[0x277D436B8] || result == *MEMORY[0x277D43698] || result == *MEMORY[0x277D436C0] || result == *MEMORY[0x277D43688])
    {
      goto LABEL_3;
    }

    if (result == *MEMORY[0x277D43660])
    {
      v7 = 2;
      goto LABEL_4;
    }

    if (result == *MEMORY[0x277D43690] || result == *MEMORY[0x277D43628] || result == *MEMORY[0x277D43668])
    {
      goto LABEL_3;
    }

    if (result == *MEMORY[0x277D43678])
    {
      v7 = 4;
      goto LABEL_4;
    }

    if (result == *MEMORY[0x277D436A0])
    {
      v7 = 6;
      goto LABEL_4;
    }

    if (result == *MEMORY[0x277D436A8] || result == *MEMORY[0x277D436B0])
    {
LABEL_3:
      v7 = 3;
LABEL_4:
      *a1 = v7;
      return result;
    }

    *a1 = 0;
    return (*(v3 + 8))(v5, v2);
  }

  return result;
}

uint64_t sub_23A6AF6FC()
{
  sub_23A6AF3DC(v5);
  v0 = sub_23A6DF644();
  v5[0] = v0;
  v5[1] = v1;
  v2 = sub_23A6DE3F4();
  if (!v3)
  {
    return v0;
  }

  MEMORY[0x23EE89BB0](v2);

  MEMORY[0x23EE89BB0](41, 0xE100000000000000);
  MEMORY[0x23EE89BB0](10272, 0xE200000000000000);

  return v5[0];
}

void sub_23A6AF7AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(a4 + 16))(a3, a4);
  (*(a4 + 24))(a3, a4);
  v6 = [objc_opt_self() mainBundle];
  v7 = [v6 preferredLocalizations];

  v8 = sub_23A6DF734();
  if (*(v8 + 16))
  {

    v9 = objc_allocWithZone(sub_23A6DEB14());

    sub_23A6DEB04();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_23A6AF8E0@<X0>(uint64_t a1@<X8>)
{
  v79 = a1;
  v1 = type metadata accessor for MobilePhotoIDDataRequest.Response(0);
  v67 = *(v1 - 8);
  v68 = v1;
  MEMORY[0x28223BE20](v1);
  v64 = &v64 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CF28, &qword_23A6E4350);
  MEMORY[0x28223BE20](v3 - 8);
  v66 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v69 = &v64 - v6;
  v7 = type metadata accessor for MobileNationalIDCardDataRequest.Response(0);
  v76 = *(v7 - 8);
  v77 = v7;
  MEMORY[0x28223BE20](v7);
  v72 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CF30, &qword_23A6E4358);
  MEMORY[0x28223BE20](v9 - 8);
  v75 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v78 = &v64 - v12;
  v73 = _s14descr284D50EA1O8ResponseV15InternalStorageOMa(0);
  MEMORY[0x28223BE20](v73);
  v74 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for MobileDriversLicenseDataRequest.Response(0);
  v70 = *(v14 - 8);
  v71 = v14;
  MEMORY[0x28223BE20](v14);
  v65 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CF38, &qword_23A6E4360);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v64 - v20;
  v22 = sub_23A6DEB84();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v64 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_23A6DE8C4();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v64 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v32 = &v64 - v31;
  sub_23A6DEB94();
  if ((*(v23 + 88))(v25, v22) != *MEMORY[0x277D43BE8])
  {
    (*(v23 + 8))(v25, v22);
LABEL_7:
    v47 = type metadata accessor for MobileDocumentAnyOfDataRequest.Response(0);
    v48 = *(*(v47 - 8) + 56);
    v49 = v79;
    return v48(v49, 1, 1, v47);
  }

  (*(v23 + 96))(v25, v22);
  v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CF40, &qword_23A6E4368) + 48);
  (*(v27 + 32))(v32, v25, v26);
  v34 = sub_23A6DF0C4();
  (*(*(v34 - 8) + 8))(&v25[v33], v34);
  (*(v27 + 16))(v29, v32, v26);
  v35 = (*(v27 + 88))(v29, v26);
  v36 = v32;
  if (v35 != *MEMORY[0x277D43928])
  {
    if (v35 == *MEMORY[0x277D43920])
    {
      sub_23A6C21E8(v21);
      sub_23A646D48(v21, v18, &qword_27DF9CF38, &qword_23A6E4360);
      if ((*(v70 + 48))(v18, 1, v71) == 1)
      {
        sub_23A646DB0(v21, &qword_27DF9CF38, &qword_23A6E4360);
        (*(v27 + 8))(v32, v26);
        goto LABEL_7;
      }

      v54 = v65;
      sub_23A6B0348(v18, v65, type metadata accessor for MobileDriversLicenseDataRequest.Response);
      v55 = v74;
      sub_23A6B1B48(v54, v74, type metadata accessor for MobileDriversLicenseDataRequest.Response);
      swift_storeEnumTagMultiPayload();
      v53 = v79;
      sub_23A69F310(v55, v79);
      sub_23A6B1BB0(v54, type metadata accessor for MobileDriversLicenseDataRequest.Response);
      v56 = &qword_27DF9CF38;
      v57 = &qword_23A6E4360;
      v58 = v21;
    }

    else
    {
      if (v35 != *MEMORY[0x277D43930])
      {
        v59 = *(v27 + 8);
        v59(v32, v26);
        v60 = type metadata accessor for MobileDocumentAnyOfDataRequest.Response(0);
        (*(*(v60 - 8) + 56))(v79, 1, 1, v60);
        return (v59)(v29, v26);
      }

      v50 = v69;
      sub_23A6C5134(v69);
      v51 = v66;
      sub_23A646D48(v50, v66, &qword_27DF9CF28, &qword_23A6E4350);
      v52 = (*(v67 + 48))(v51, 1, v68);
      v53 = v79;
      if (v52 == 1)
      {
        sub_23A646DB0(v50, &qword_27DF9CF28, &qword_23A6E4350);
        (*(v27 + 8))(v32, v26);
        v47 = type metadata accessor for MobileDocumentAnyOfDataRequest.Response(0);
        v48 = *(*(v47 - 8) + 56);
        v49 = v53;
        return v48(v49, 1, 1, v47);
      }

      v61 = v64;
      sub_23A6B0348(v51, v64, type metadata accessor for MobilePhotoIDDataRequest.Response);
      v62 = v74;
      sub_23A6B1B48(v61, v74, type metadata accessor for MobilePhotoIDDataRequest.Response);
      swift_storeEnumTagMultiPayload();
      sub_23A69F310(v62, v53);
      sub_23A6B1BB0(v61, type metadata accessor for MobilePhotoIDDataRequest.Response);
      v56 = &qword_27DF9CF28;
      v57 = &qword_23A6E4350;
      v58 = v50;
    }

    sub_23A646DB0(v58, v56, v57);
    (*(v27 + 8))(v32, v26);
    v63 = type metadata accessor for MobileDocumentAnyOfDataRequest.Response(0);
    return (*(*(v63 - 8) + 56))(v53, 0, 1, v63);
  }

  v37 = v78;
  sub_23A6C4870(v78);
  v38 = v75;
  sub_23A646D48(v37, v75, &qword_27DF9CF30, &qword_23A6E4358);
  v39 = 1;
  v40 = (*(v76 + 48))(v38, 1, v77);
  v41 = v79;
  if (v40 != 1)
  {
    v42 = v72;
    sub_23A6B0348(v38, v72, type metadata accessor for MobileNationalIDCardDataRequest.Response);
    v43 = v74;
    sub_23A6B1B48(v42, v74, type metadata accessor for MobileNationalIDCardDataRequest.Response);
    swift_storeEnumTagMultiPayload();
    sub_23A69F310(v43, v41);
    sub_23A6B1BB0(v42, type metadata accessor for MobileNationalIDCardDataRequest.Response);
    v39 = 0;
  }

  sub_23A646DB0(v37, &qword_27DF9CF30, &qword_23A6E4358);
  v44 = *(v27 + 8);
  v44(v36, v26);
  v45 = type metadata accessor for MobileDocumentAnyOfDataRequest.Response(0);
  (*(*(v45 - 8) + 56))(v41, v39, 1, v45);
  return (v44)(v29, v26);
}

uint64_t sub_23A6B0348(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_23A6B0594(uint64_t (*a1)(void, __n128), uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v84 = sub_23A6DE9B4();
  v7 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v83 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v72 - v11;
  v13 = a1(0, v10);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13 - 8);
  v81 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v72 - v17;
  v19 = sub_23A69EA14(MEMORY[0x277D84F90]);
  v73 = a2(0);
  v74 = v3;
  v20 = *(v3 + *(v73 + 20));
  v21 = *(v20 + 16);
  v82 = a3;
  v77 = v21;
  v78 = v7;
  v80 = v14;
  if (!v21)
  {
LABEL_17:
    v39 = *(v74 + *(v73 + 24));
    v79 = *(v39 + 16);
    if (!v79)
    {
LABEL_32:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CF48, &qword_23A6E4370);
      v62 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CF50, &unk_23A6E4378) - 8);
      v63 = (*(*v62 + 80) + 32) & ~*(*v62 + 80);
      v64 = swift_allocObject();
      *(v64 + 16) = xmmword_23A6E2120;
      v65 = v64 + v63;
      v66 = v62[14];
      v67 = sub_23A6DE314();
      (*(*(v67 - 8) + 16))(v65, v74, v67);
      v68 = *MEMORY[0x277D43928];
      v69 = sub_23A6DE8C4();
      (*(*(v69 - 8) + 104))(v65, v68, v69);
      *(v65 + v66) = v19;

      v70 = sub_23A6B1960(v64);
      swift_setDeallocating();
      sub_23A646DB0(v65, &qword_27DF9CF50, &unk_23A6E4378);
      swift_deallocClassInstance();

      return v70;
    }

    v40 = 0;
    v41 = v80;
    v77 = v39 + ((*(v80 + 80) + 32) & ~*(v80 + 80));
    v42 = (v78 + 16);
    v43 = (v78 + 8);
    while (1)
    {
      if (v40 >= *(v39 + 16))
      {
        goto LABEL_35;
      }

      v44 = v81;
      sub_23A6B1B48(v77 + *(v41 + 72) * v40, v81, a3);
      v45 = *v42;
      v46 = v83;
      (*v42)(v83, v44, v84);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v85 = v19;
      v48 = sub_23A69CEA0(v46);
      v50 = v19[2];
      v51 = (v49 & 1) == 0;
      v37 = __OFADD__(v50, v51);
      v52 = v50 + v51;
      if (v37)
      {
        goto LABEL_36;
      }

      v53 = v49;
      if (v19[3] < v52)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_27;
      }

      v61 = v48;
      sub_23A69DDB4();
      v48 = v61;
      v19 = v85;
      if (v53)
      {
LABEL_19:
        *(v19[7] + v48) = 0;
        (*v43)(v83, v84);
        a3 = v82;
        sub_23A6B1BB0(v81, v82);
        goto LABEL_20;
      }

LABEL_28:
      v19[(v48 >> 6) + 8] |= 1 << v48;
      v55 = v78;
      v56 = v48;
      v58 = v83;
      v57 = v84;
      v45(v19[6] + *(v78 + 72) * v48, v83, v84);
      *(v19[7] + v56) = 0;
      (*(v55 + 8))(v58, v57);
      a3 = v82;
      sub_23A6B1BB0(v81, v82);
      v59 = v19[2];
      v37 = __OFADD__(v59, 1);
      v60 = v59 + 1;
      if (v37)
      {
        goto LABEL_38;
      }

      v19[2] = v60;
      v41 = v80;
LABEL_20:
      if (v79 == ++v40)
      {
        goto LABEL_32;
      }
    }

    sub_23A69D350(v52, isUniquelyReferenced_nonNull_native);
    v48 = sub_23A69CEA0(v83);
    if ((v53 & 1) != (v54 & 1))
    {
      goto LABEL_39;
    }

LABEL_27:
    v19 = v85;
    if (v53)
    {
      goto LABEL_19;
    }

    goto LABEL_28;
  }

  v22 = 0;
  v76 = v20 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
  v79 = (v7 + 16);
  v75 = (v7 + 8);
  while (v22 < *(v20 + 16))
  {
    v23 = v20;
    sub_23A6B1B48(v76 + *(v80 + 72) * v22, v18, a3);
    v24 = *v79;
    (*v79)(v12, v18, v84);
    v25 = swift_isUniquelyReferenced_nonNull_native();
    v85 = v19;
    v27 = sub_23A69CEA0(v12);
    v28 = v19[2];
    v29 = (v26 & 1) == 0;
    v30 = v28 + v29;
    if (__OFADD__(v28, v29))
    {
      goto LABEL_34;
    }

    v31 = v26;
    if (v19[3] >= v30)
    {
      if (v25)
      {
        v19 = v85;
        if (v26)
        {
          goto LABEL_3;
        }
      }

      else
      {
        sub_23A69DDB4();
        v19 = v85;
        if (v31)
        {
          goto LABEL_3;
        }
      }
    }

    else
    {
      sub_23A69D350(v30, v25);
      v32 = sub_23A69CEA0(v12);
      if ((v31 & 1) != (v33 & 1))
      {
        goto LABEL_39;
      }

      v27 = v32;
      v19 = v85;
      if (v31)
      {
LABEL_3:
        *(v19[7] + v27) = 1;
        (*v75)(v12, v84);
        a3 = v82;
        sub_23A6B1BB0(v18, v82);
        goto LABEL_4;
      }
    }

    v19[(v27 >> 6) + 8] |= 1 << v27;
    v34 = v78;
    v35 = v84;
    v24((v19[6] + *(v78 + 72) * v27), v12, v84);
    *(v19[7] + v27) = 1;
    (*(v34 + 8))(v12, v35);
    a3 = v82;
    sub_23A6B1BB0(v18, v82);
    v36 = v19[2];
    v37 = __OFADD__(v36, 1);
    v38 = v36 + 1;
    if (v37)
    {
      goto LABEL_37;
    }

    v19[2] = v38;
LABEL_4:
    ++v22;
    v20 = v23;
    if (v77 == v22)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  result = sub_23A6DFC54();
  __break(1u);
  return result;
}

double sub_23A6B0CCC@<D0>(void *a1@<X0>, void (*a2)(_OWORD *__return_ptr, void, void, void, void)@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v33[-v7];
  v9 = sub_23A6DEB84();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v33[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v15 = &v33[-v14];
  sub_23A6DEB94();
  if ((*(v10 + 88))(v15, v9) == *MEMORY[0x277D43BE0])
  {
    (*(v10 + 96))(v15, v9);
    a2(v38, *v15, v15[1], v15[2], v15[3]);
    result = *v38;
    v17 = v38[1];
    *a3 = v38[0];
    *(a3 + 16) = v17;
  }

  else
  {
    v18 = *(v10 + 8);
    v18(v15, v9);
    v19 = sub_23A6DCDF0();
    sub_23A646D48(v19, v8, &qword_27DF9D240, qword_23A6E1D30);
    v20 = sub_23A6DECC4();
    v21 = *(v20 - 8);
    if ((*(v21 + 48))(v8, 1, v20) == 1)
    {
      sub_23A646DB0(v8, &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v37 = v18;
      v22 = a1;
      v23 = sub_23A6DECA4();
      v24 = sub_23A6DF874();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v35 = v23;
        v26 = v25;
        v36 = swift_slowAlloc();
        *&v38[0] = v36;
        *v26 = 136315138;
        v34 = v24;
        sub_23A6DEB94();
        sub_23A6B1F2C(&qword_27DF9CF58, MEMORY[0x277D43BF0], MEMORY[0x277D43BF8]);
        v27 = sub_23A6DFBD4();
        v29 = v28;
        v37(v12, v9);
        v30 = sub_23A657E78(v27, v29, v38);

        *(v26 + 4) = v30;
        v31 = v35;
        _os_log_impl(&dword_23A63D000, v35, v34, "Unexpected response returned. Expected raw data response but received: %s", v26, 0xCu);
        v32 = v36;
        __swift_destroy_boxed_opaque_existential_1Tm(v36);
        MEMORY[0x23EE8A960](v32, -1, -1);
        MEMORY[0x23EE8A960](v26, -1, -1);
      }

      else
      {
      }

      (*(v21 + 8))(v8, v20);
    }

    result = 0.0;
    *a3 = xmmword_23A6E4340;
    *(a3 + 16) = 0;
    *(a3 + 24) = 0;
  }

  return result;
}

unint64_t sub_23A6B10F8(uint64_t (*a1)(void, __n128), uint64_t (*a2)(void), unsigned int *a3)
{
  v71 = a3;
  v82 = sub_23A6DE9B4();
  v6 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v75 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v70 - v10;
  v12 = a1(0, v9);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12 - 8);
  v79 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v70 - v16;
  v18 = *v3;
  v77 = v3[1];
  v19 = sub_23A69EA14(MEMORY[0x277D84F90]);
  v20 = *(v18 + 16);
  v80 = v13;
  v81 = a2;
  v76 = v6;
  v74 = v20;
  if (v20)
  {
    v21 = 0;
    v73 = v18 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v78 = (v6 + 16);
    v72 = (v6 + 8);
    do
    {
      if (v21 >= *(v18 + 16))
      {
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        result = sub_23A6DFC54();
        __break(1u);
        return result;
      }

      sub_23A6B1B48(v73 + *(v13 + 72) * v21, v17, a2);
      v22 = *v78;
      (*v78)(v11, v17, v82);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v83 = v19;
      v25 = sub_23A69CEA0(v11);
      v26 = v19[2];
      v27 = (v24 & 1) == 0;
      v28 = v26 + v27;
      if (__OFADD__(v26, v27))
      {
        goto LABEL_33;
      }

      v29 = v24;
      if (v19[3] >= v28)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v19 = v83;
          if (v24)
          {
            goto LABEL_3;
          }
        }

        else
        {
          sub_23A69DDB4();
          v19 = v83;
          if (v29)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
        sub_23A69D350(v28, isUniquelyReferenced_nonNull_native);
        v30 = sub_23A69CEA0(v11);
        if ((v29 & 1) != (v31 & 1))
        {
          goto LABEL_38;
        }

        v25 = v30;
        v19 = v83;
        if (v29)
        {
LABEL_3:
          *(v19[7] + v25) = 1;
          (*v72)(v11, v82);
          a2 = v81;
          sub_23A6B1BB0(v17, v81);
          goto LABEL_4;
        }
      }

      v19[(v25 >> 6) + 8] |= 1 << v25;
      v32 = v76;
      v33 = v82;
      v22((v19[6] + *(v76 + 72) * v25), v11, v82);
      *(v19[7] + v25) = 1;
      (*(v32 + 8))(v11, v33);
      a2 = v81;
      sub_23A6B1BB0(v17, v81);
      v34 = v19[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        goto LABEL_36;
      }

      v19[2] = v36;
LABEL_4:
      ++v21;
      v13 = v80;
    }

    while (v74 != v21);
  }

  v37 = *(v77 + 16);
  if (v37)
  {
    v38 = 0;
    v39 = v77 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v40 = v75;
    v41 = (v76 + 16);
    v78 = (v76 + 8);
    while (v38 < *(v77 + 16))
    {
      v42 = v39 + *(v13 + 72) * v38;
      v43 = v79;
      sub_23A6B1B48(v42, v79, a2);
      v44 = *v41;
      (*v41)(v40, v43, v82);
      v45 = swift_isUniquelyReferenced_nonNull_native();
      v83 = v19;
      v46 = sub_23A69CEA0(v40);
      v48 = v19[2];
      v49 = (v47 & 1) == 0;
      v35 = __OFADD__(v48, v49);
      v50 = v48 + v49;
      if (v35)
      {
        goto LABEL_35;
      }

      v51 = v47;
      if (v19[3] >= v50)
      {
        if ((v45 & 1) == 0)
        {
          v60 = v46;
          sub_23A69DDB4();
          v46 = v60;
        }
      }

      else
      {
        sub_23A69D350(v50, v45);
        v46 = sub_23A69CEA0(v40);
        if ((v51 & 1) != (v52 & 1))
        {
          goto LABEL_38;
        }
      }

      a2 = v81;
      v19 = v83;
      if (v51)
      {
        *(v83[7] + v46) = 0;
        (*v78)(v40, v82);
        sub_23A6B1BB0(v79, a2);
      }

      else
      {
        v53 = v39;
        v83[(v46 >> 6) + 8] |= 1 << v46;
        v54 = v76;
        v55 = v46;
        v56 = v82;
        v44(v19[6] + *(v76 + 72) * v46, v75, v82);
        *(v19[7] + v55) = 0;
        v57 = *(v54 + 8);
        v40 = v75;
        v57(v75, v56);
        sub_23A6B1BB0(v79, a2);
        v58 = v19[2];
        v35 = __OFADD__(v58, 1);
        v59 = v58 + 1;
        if (v35)
        {
          goto LABEL_37;
        }

        v19[2] = v59;
        v39 = v53;
      }

      ++v38;
      v13 = v80;
      if (v37 == v38)
      {
        goto LABEL_31;
      }
    }

    goto LABEL_34;
  }

LABEL_31:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CF48, &qword_23A6E4370);
  v61 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CF50, &unk_23A6E4378) - 8);
  v62 = (*(*v61 + 80) + 32) & ~*(*v61 + 80);
  v63 = swift_allocObject();
  *(v63 + 16) = xmmword_23A6E2120;
  v64 = v63 + v62;
  v65 = v61[14];
  v66 = *v71;
  v67 = sub_23A6DE8C4();
  (*(*(v67 - 8) + 104))(v64, v66, v67);
  *(v64 + v65) = v19;

  v68 = sub_23A6B1960(v63);
  swift_setDeallocating();
  sub_23A646DB0(v64, &qword_27DF9CF50, &unk_23A6E4378);
  swift_deallocClassInstance();

  return v68;
}

void *sub_23A6B1814@<X0>(void *(*a1)(_OWORD *__return_ptr, void, void, void, void)@<X3>, __int128 *a2@<X8>)
{
  v5 = sub_23A6DEB84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_23A6DEB94();
  if ((*(v6 + 88))(v8, v5) == *MEMORY[0x277D43BE0])
  {
    (*(v6 + 96))(v8, v5);
    result = a1(v12, *v8, v8[1], v8[2], v8[3]);
    v10 = v12[0];
    v11 = v12[1];
  }

  else
  {
    result = (*(v6 + 8))(v8, v5);
    v10 = xmmword_23A6E4340;
    v11 = 0uLL;
  }

  *a2 = v10;
  a2[1] = v11;
  return result;
}

unint64_t sub_23A6B1960(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CF50, &unk_23A6E4378);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CC28, &qword_23A6E61B0);
    v7 = sub_23A6DFB84();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_23A646D48(v9, v5, &qword_27DF9CF50, &unk_23A6E4378);
      result = sub_23A69CDCC(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_23A6DE8C4();
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

uint64_t sub_23A6B1B48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23A6B1BB0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_23A6B1C10(uint64_t a1)
{
  result = sub_23A6B1C38();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23A6B1C38()
{
  result = qword_27DF9CF60;
  if (!qword_27DF9CF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9CF60);
  }

  return result;
}

uint64_t sub_23A6B1C8C(uint64_t a1)
{
  result = sub_23A6B1F2C(&qword_27DF9CEE0, type metadata accessor for MobileNationalIDCardDataRequest, &protocol conformance descriptor for MobileNationalIDCardDataRequest);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23A6B1CE4(uint64_t a1)
{
  result = sub_23A6B1D0C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23A6B1D0C()
{
  result = qword_27DF9CF68;
  if (!qword_27DF9CF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9CF68);
  }

  return result;
}

unint64_t sub_23A6B1D60(uint64_t a1)
{
  result = sub_23A6B1D88();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23A6B1D88()
{
  result = qword_27DF9CF70;
  if (!qword_27DF9CF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9CF70);
  }

  return result;
}

unint64_t sub_23A6B1DDC(uint64_t a1)
{
  result = sub_23A6B1E04();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23A6B1E04()
{
  result = qword_27DF9CF78;
  if (!qword_27DF9CF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9CF78);
  }

  return result;
}

uint64_t sub_23A6B1E58(uint64_t a1)
{
  result = sub_23A6B1F2C(&qword_27DF9CF80, type metadata accessor for MobileNationalIDCardRawDataRequest, &protocol conformance descriptor for MobileNationalIDCardRawDataRequest);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23A6B1EB0(uint64_t a1)
{
  result = sub_23A6B1ED8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23A6B1ED8()
{
  result = qword_27DF9CF88;
  if (!qword_27DF9CF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9CF88);
  }

  return result;
}

uint64_t sub_23A6B1F2C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23A6B1FA8(char a1)
{
  result = swift_beginAccess();
  *(v1 + 32) = a1;
  return result;
}

uint64_t sub_23A6B1FE8()
{
  v0 = swift_allocObject();
  sub_23A6B2020();
  return v0;
}

void *sub_23A6B2020()
{
  v1 = v0;
  v0[2] = MEMORY[0x277D84F90];
  v0[3] = [objc_opt_self() mapTableWithKeyOptions:0x10000 valueOptions:5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CF90, &unk_23A6E44A0);
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  v0[5] = v2;
  if ([objc_opt_self() isMainThread])
  {
    v3 = [objc_opt_self() sharedApplication];
    v4 = [v3 applicationState];
  }

  else
  {
    sub_23A691180(0, &qword_27DF9CF98, 0x277D85C78);
    v5 = sub_23A6DF8B4();
    type metadata accessor for State(0);
    v3 = 0;
    sub_23A6DF8C4();

    v4 = v15;
  }

  if (v4 >= 3)
  {
    sub_23A6DFB44();
    __break(1u);

    type metadata accessor for UIForegroundActiveArbiter();
    result = swift_deallocPartialClassInstance();
    __break(1u);
  }

  else
  {
    *(v1 + 33) = 1u >> (8 * v4);
    *(v1 + 32) = 2 - v4;
    v6 = *MEMORY[0x277D76648];
    v7 = swift_allocObject();
    swift_weakInit();

    sub_23A6B3098(v6, sub_23A6B2764, v7);

    v8 = *MEMORY[0x277D76768];
    v9 = swift_allocObject();
    swift_weakInit();

    sub_23A6B3098(v8, sub_23A6B3258, v9);

    v10 = *MEMORY[0x277D76660];
    v11 = swift_allocObject();
    swift_weakInit();

    sub_23A6B3098(v10, sub_23A6B3260, v11);

    v12 = *MEMORY[0x277D76770];
    v13 = swift_allocObject();
    swift_weakInit();

    sub_23A6B3098(v12, sub_23A6B3268, v13);

    return v1;
  }

  return result;
}

void sub_23A6B23C4(void *a1@<X8>)
{
  v2 = [objc_opt_self() sharedApplication];
  v3 = [v2 applicationState];

  *a1 = v3;
}

uint64_t sub_23A6B2468(uint64_t a1)
{
  v1 = sub_23A6DE144();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    if ((*(result + 33) & 1) == 0)
    {
      *(result + 33) = 1;
      swift_beginAccess();
      *(v6 + 32) = 2;
      os_unfair_lock_lock((*(v6 + 40) + 16));
      v7 = [*(v6 + 24) keyEnumerator];
      sub_23A6DF854();

      sub_23A6DE134();
      if (v25)
      {
        v21 = MEMORY[0x277D84F90];
        do
        {
          sub_23A6B3F18(v24, &v23);
          sub_23A691180(0, &qword_27DF9CFA8, 0x277CCACA8);
          if (swift_dynamicCast())
          {
            v8 = v22;
            v9 = [*(v6 + 24) objectForKey_];
            if (v9)
            {
              v10 = v9;
              swift_getObjectType();
              v11 = swift_conformsToProtocol2();
              if (v11)
              {
                v20 = v11;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v21 = sub_23A6B4038(0, v21[2] + 1, 1, v21);
                }

                v13 = v21[2];
                v12 = v21[3];
                v18 = v13 + 1;
                v19 = v13;
                if (v13 >= v12 >> 1)
                {
                  v21 = sub_23A6B4038((v12 > 1), v13 + 1, 1, v21);
                }

                v14 = v20;
                v15 = v21;
                v16 = v19;
                v21[2] = v18;
                v17 = &v15[2 * v16];
                v17[4] = v10;
                v17[5] = v14;
              }

              else
              {

                swift_unknownObjectRelease();
              }
            }

            else
            {
            }
          }

          sub_23A6DE134();
        }

        while (v25);
      }

      else
      {
        v21 = MEMORY[0x277D84F90];
      }

      (*(v2 + 8))(v4, v1);
      os_unfair_lock_unlock((*(v6 + 40) + 16));
      sub_23A6B34B8(v21, 2);
    }
  }

  return result;
}

uint64_t sub_23A6B276C(uint64_t a1)
{
  v1 = sub_23A6DE144();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    if (*(result + 33) == 1)
    {
      *(result + 33) = 0;
      swift_beginAccess();
      *(v6 + 32) = 1;
      os_unfair_lock_lock((*(v6 + 40) + 16));
      v7 = [*(v6 + 24) keyEnumerator];
      sub_23A6DF854();

      sub_23A6DE134();
      if (v25)
      {
        v21 = MEMORY[0x277D84F90];
        do
        {
          sub_23A6B3F18(v24, &v23);
          sub_23A691180(0, &qword_27DF9CFA8, 0x277CCACA8);
          if (swift_dynamicCast())
          {
            v8 = v22;
            v9 = [*(v6 + 24) objectForKey_];
            if (v9)
            {
              v10 = v9;
              swift_getObjectType();
              v11 = swift_conformsToProtocol2();
              if (v11)
              {
                v20 = v11;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v21 = sub_23A6B4038(0, v21[2] + 1, 1, v21);
                }

                v13 = v21[2];
                v12 = v21[3];
                v18 = v13 + 1;
                v19 = v13;
                if (v13 >= v12 >> 1)
                {
                  v21 = sub_23A6B4038((v12 > 1), v13 + 1, 1, v21);
                }

                v14 = v20;
                v15 = v21;
                v16 = v19;
                v21[2] = v18;
                v17 = &v15[2 * v16];
                v17[4] = v10;
                v17[5] = v14;
              }

              else
              {

                swift_unknownObjectRelease();
              }
            }

            else
            {
            }
          }

          sub_23A6DE134();
        }

        while (v25);
      }

      else
      {
        v21 = MEMORY[0x277D84F90];
      }

      (*(v2 + 8))(v4, v1);
      os_unfair_lock_unlock((*(v6 + 40) + 16));
      sub_23A6B34B8(v21, 1);
    }
  }

  return result;
}

uint64_t sub_23A6B2A68(uint64_t a1)
{
  v1 = sub_23A6DE144();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    if ((*(*result + 168))())
    {
      v21 = v2;
      swift_beginAccess();
      *(v6 + 32) = 0;
      os_unfair_lock_lock((*(v6 + 40) + 16));
      v7 = [*(v6 + 24) keyEnumerator];
      sub_23A6DF854();

      sub_23A6DE134();
      if (v25)
      {
        v8 = MEMORY[0x277D84F90];
        do
        {
          sub_23A6B3F18(v24, &v23);
          sub_23A691180(0, &qword_27DF9CFA8, 0x277CCACA8);
          if (swift_dynamicCast())
          {
            v9 = v22;
            v10 = [*(v6 + 24) objectForKey_];
            if (v10)
            {
              v11 = v10;
              swift_getObjectType();
              v12 = swift_conformsToProtocol2();
              if (v12)
              {
                v20 = v12;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v8 = sub_23A6B4038(0, v8[2] + 1, 1, v8);
                }

                v14 = v8[2];
                v13 = v8[3];
                v18 = v14 + 1;
                v19 = v14;
                if (v14 >= v13 >> 1)
                {
                  v8 = sub_23A6B4038((v13 > 1), v14 + 1, 1, v8);
                }

                v15 = v19;
                v8[2] = v18;
                v16 = &v8[2 * v15];
                v17 = v20;
                v16[4] = v11;
                v16[5] = v17;
              }

              else
              {

                swift_unknownObjectRelease();
              }
            }

            else
            {
            }
          }

          sub_23A6DE134();
        }

        while (v25);
      }

      else
      {
        v8 = MEMORY[0x277D84F90];
      }

      (*(v21 + 8))(v4, v1);
      os_unfair_lock_unlock((*(v6 + 40) + 16));
      sub_23A6B34B8(v8, 0);
    }
  }

  return result;
}

uint64_t sub_23A6B2D78(uint64_t a1)
{
  v1 = sub_23A6DE144();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    if ((*(*result + 168))() != 3)
    {
      swift_beginAccess();
      *(v6 + 32) = 3;
      os_unfair_lock_lock((*(v6 + 40) + 16));
      v7 = [*(v6 + 24) keyEnumerator];
      sub_23A6DF854();

      sub_23A6DE134();
      if (v25)
      {
        v21 = MEMORY[0x277D84F90];
        do
        {
          sub_23A6B3F18(v24, &v23);
          sub_23A691180(0, &qword_27DF9CFA8, 0x277CCACA8);
          if (swift_dynamicCast())
          {
            v8 = v22;
            v9 = [*(v6 + 24) objectForKey_];
            if (v9)
            {
              v10 = v9;
              swift_getObjectType();
              v11 = swift_conformsToProtocol2();
              if (v11)
              {
                v20 = v11;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v21 = sub_23A6B4038(0, v21[2] + 1, 1, v21);
                }

                v13 = v21[2];
                v12 = v21[3];
                v18 = v13 + 1;
                v19 = v13;
                if (v13 >= v12 >> 1)
                {
                  v21 = sub_23A6B4038((v12 > 1), v13 + 1, 1, v21);
                }

                v14 = v20;
                v15 = v21;
                v16 = v19;
                v21[2] = v18;
                v17 = &v15[2 * v16];
                v17[4] = v10;
                v17[5] = v14;
              }

              else
              {

                swift_unknownObjectRelease();
              }
            }

            else
            {
            }
          }

          sub_23A6DE134();
        }

        while (v25);
      }

      else
      {
        v21 = MEMORY[0x277D84F90];
      }

      (*(v2 + 8))(v4, v1);
      os_unfair_lock_unlock((*(v6 + 40) + 16));
      sub_23A6B34B8(v21, 3);
    }
  }

  return result;
}

void sub_23A6B3098(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = [objc_opt_self() defaultCenter];
  v17 = a2;
  v18 = a3;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v15 = sub_23A6B3270;
  ObjectType = &block_descriptor_3;
  v8 = _Block_copy(&aBlock);

  v9 = [v7 addObserverForName:a1 object:0 queue:0 usingBlock:v8];
  _Block_release(v8);
  ObjectType = swift_getObjectType();
  *&aBlock = v9;
  swift_beginAccess();
  v10 = *(v3 + 16);
  swift_unknownObjectRetain();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + 16) = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = sub_23A6B3F28(0, *(v10 + 2) + 1, 1, v10);
    *(v3 + 16) = v10;
  }

  v13 = *(v10 + 2);
  v12 = *(v10 + 3);
  if (v13 >= v12 >> 1)
  {
    v10 = sub_23A6B3F28((v12 > 1), v13 + 1, 1, v10);
  }

  *(v10 + 2) = v13 + 1;
  sub_23A6B3F18(&aBlock, &v10[32 * v13 + 32]);
  *(v3 + 16) = v10;
  swift_endAccess();
  swift_unknownObjectRelease();
}

uint64_t sub_23A6B3270(uint64_t a1, uint64_t a2)
{
  v3 = sub_23A6DE064();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  sub_23A6DE054();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_23A6B3364()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = objc_opt_self();
    v4 = v1 + 32;

    do
    {
      sub_23A648D94(v4, v7);
      v5 = [v3 defaultCenter];
      __swift_project_boxed_opaque_existential_1(v7, v7[3]);
      [v5 removeObserver_];

      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_1Tm(v7);
      v4 += 32;
      --v2;
    }

    while (v2);
  }

  return v0;
}

uint64_t sub_23A6B3484()
{
  sub_23A6B3364();

  return swift_deallocClassInstance();
}

uint64_t sub_23A6B34B8(uint64_t result, uint64_t a2)
{
  v3 = *(result + 16);
  if (v3)
  {
    v4 = v2;
    v6 = result;
    active = type metadata accessor for UIForegroundActiveArbiter();
    v8 = (v6 + 40);
    do
    {
      v9 = *v8;
      ObjectType = swift_getObjectType();
      v12[3] = active;
      v12[4] = &off_284D54638;
      v12[0] = v4;
      v11 = *(v9 + 16);
      swift_unknownObjectRetain();

      v11(v12, a2, ObjectType, v9);
      swift_unknownObjectRelease();
      result = __swift_destroy_boxed_opaque_existential_1Tm(v12);
      v8 += 2;
      --v3;
    }

    while (v3);
  }

  return result;
}

void sub_23A6B358C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v21 - v7;
  v9 = sub_23A6DCDF0();
  sub_23A69A270(v9, v8);
  v10 = sub_23A6DECC4();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) == 1)
  {
    sub_23A69A2E0(v8);
  }

  else
  {
    v12 = sub_23A6507C0();
    v13 = sub_23A6DCFB0();
    sub_23A6DCFBC(v12 & 1, v3, 0xD00000000000001BLL, 0x800000023A6EB310, v13, v14);

    (*(v11 + 8))(v8, v10);
  }

  v15 = *(v3 + 40);
  os_unfair_lock_lock(v15 + 4);
  v16 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v18 = *(a2 + 8);
  v19 = v16;
  v18(ObjectType, a2);
  v20 = sub_23A6DF614();

  [v19 setObject:a1 forKey:v20];

  os_unfair_lock_unlock(v15 + 4);
}

void sub_23A6B3774(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v20 - v6;
  v8 = sub_23A6DCDF0();
  sub_23A69A270(v8, v7);
  v9 = sub_23A6DECC4();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v7, 1, v9) == 1)
  {
    sub_23A69A2E0(v7);
  }

  else
  {
    v11 = sub_23A6507C0();
    v12 = sub_23A6DCFB0();
    sub_23A6DCFBC(v11 & 1, v3, 0xD00000000000001DLL, 0x800000023A6EB330, v12, v13);

    (*(v10 + 8))(v7, v9);
  }

  v14 = *(v3 + 40);
  os_unfair_lock_lock(v14 + 4);
  v15 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v17 = *(a2 + 8);
  v18 = v15;
  v17(ObjectType, a2);
  v19 = sub_23A6DF614();

  [v18 removeObjectForKey_];

  os_unfair_lock_unlock(v14 + 4);
}

uint64_t sub_23A6B3958()
{
  v1 = *(*v0 + 168);
  v1();
  sub_23A6765D8();
  sub_23A6DF714();
  v2 = sub_23A6DF714();
  v3 = 1;
  if (v7 != v6)
  {
    (v1)(v2);
    sub_23A6DF714();
    sub_23A6DF714();
    sub_23A691180(0, &qword_27DF9CF98, 0x277D85C78);
    v4 = sub_23A6DF8B4();
    sub_23A6DF8C4();

    return v7;
  }

  return v3;
}

void sub_23A6B3AB8(BOOL *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v28 - v7;
  v9 = objc_opt_self();
  v10 = [v9 sharedApplication];
  v11 = [v10 applicationState];

  if (v11 >= 2)
  {
    v13 = sub_23A6DCDF0();
    sub_23A69A270(v13, v8);
    v14 = sub_23A6DECC4();
    v32 = *(v14 - 8);
    v15 = *(v32 + 48);
    if (v15(v8, 1, v14) == 1)
    {
      sub_23A69A2E0(v8);
    }

    else
    {
      v30 = a1;
      v31 = v1;
      v16 = sub_23A6DECA4();
      v17 = sub_23A6DF8A4();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v29 = v9;
        v19 = v18;
        *v18 = 0;
        _os_log_impl(&dword_23A63D000, v16, v17, "isForegroundAfterTransition, still in background", v18, 2u);
        v20 = v19;
        v9 = v29;
        MEMORY[0x23EE8A960](v20, -1, -1);
      }

      (*(v32 + 8))(v8, v14);
      a1 = v30;
    }

    [objc_opt_self() sleepForTimeInterval_];
    sub_23A69A270(v13, v5);
    if (v15(v5, 1, v14) == 1)
    {
      sub_23A69A2E0(v5);
    }

    else
    {
      v21 = sub_23A6DECA4();
      v22 = sub_23A6DF8A4();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = v9;
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_23A63D000, v21, v22, "isForegroundAfterTransition, check again", v24, 2u);
        v25 = v24;
        v9 = v23;
        MEMORY[0x23EE8A960](v25, -1, -1);
      }

      (*(v32 + 8))(v5, v14);
    }

    v26 = [v9 sharedApplication];
    v27 = [v26 applicationState];

    v12 = v27 < 2;
  }

  else
  {
    v12 = 1;
  }

  *a1 = v12;
}

void sub_23A6B3EB0(uint64_t a1, unint64_t *a2, uint64_t a3)
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

void *sub_23A6B3EFC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

_OWORD *sub_23A6B3F18(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

char *sub_23A6B3F28(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CA48, &qword_23A6E2398);
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

void *sub_23A6B4038(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CFB0, &qword_23A6E45A8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CFB8, &unk_23A6E45B0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_23A6B4184@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_23A6B430C(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_23A6B41BC(unsigned __int8 a1)
{
  v1 = 0x756F72676B636162;
  v2 = 0x74616E696D726574;
  if (a1 != 3)
  {
    v2 = 0xD000000000000013;
  }

  if (a1 == 2)
  {
    v2 = 0xD000000000000010;
  }

  if (a1)
  {
    v1 = 0xD000000000000012;
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

unint64_t sub_23A6B4264()
{
  v1 = *v0;
  v2 = 0x756F72676B636162;
  v3 = 0x74616E696D726574;
  if (v1 != 3)
  {
    v3 = 0xD000000000000013;
  }

  if (v1 == 2)
  {
    v3 = 0xD000000000000010;
  }

  if (*v0)
  {
    v2 = 0xD000000000000012;
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

unint64_t sub_23A6B430C(unint64_t result)
{
  if (result >= 5)
  {
    return 5;
  }

  return result;
}

uint64_t sub_23A6B4330(unsigned int *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  MEMORY[0x28223BE20](v2 - 8);
  v88 = v74 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v86 = v74 - v5;
  MEMORY[0x28223BE20](v6);
  v81 = v74 - v7;
  MEMORY[0x28223BE20](v8);
  v91 = v74 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CB88, qword_23A6E2C70);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v74 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CB90, &unk_23A6E46F0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v74 - v14;
  v16 = sub_23A6DE644();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v87 = v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = v74 - v20;
  sub_23A6DE7E4();
  v22 = sub_23A6DE314();
  (*(*(v22 - 8) + 56))(v12, 1, 1, v22);
  v23 = v17;
  sub_23A6DE7D4();
  sub_23A646DB0(v12, &qword_27DF9CB88, qword_23A6E2C70);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_23A646DB0(v15, &qword_27DF9CB90, &unk_23A6E46F0);
    v24 = sub_23A6DCDF0();
    v25 = v88;
    sub_23A646D48(v24, v88, &qword_27DF9D240, qword_23A6E1D30);
    v26 = sub_23A6DECC4();
    v27 = *(v26 - 8);
    if ((*(v27 + 48))(v25, 1, v26) == 1)
    {
      sub_23A646DB0(v25, &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v35 = sub_23A6DECA4();
      v36 = sub_23A6DF884();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&dword_23A63D000, v35, v36, "PaymentCardTransactionRequest - invalidCurrencyCode", v37, 2u);
        MEMORY[0x23EE8A960](v37, -1, -1);
      }

      (*(v27 + 8))(v25, v26);
    }

    sub_23A6763DC();
    swift_allocError();
    *v38 = xmmword_23A6E2C30;
    *(v38 + 16) = 3;
    return swift_willThrow();
  }

  (*(v17 + 32))(v21, v15, v16);
  v88 = *a1;
  v28 = *(a1 + 2);
  v84 = *(a1 + 3);
  v83 = *(a1 + 6);
  v82 = *(a1 + 7);
  v77 = sub_23A6DCDF0();
  v29 = v91;
  sub_23A646D48(v77, v91, &qword_27DF9D240, qword_23A6E1D30);
  v30 = sub_23A6DECC4();
  v78 = *(v30 - 8);
  v31 = *(v78 + 48);
  v80 = v30;
  v75 = v31;
  v76 = v78 + 48;
  v32 = (v31)(v29, 1);
  v33 = v88 | (v28 << 32);
  v88 = v21;
  v79 = v17;
  v85 = v16;
  if (v32 == 1)
  {
    sub_23A646DB0(v91, &qword_27DF9D240, qword_23A6E1D30);
    v34 = v80;
  }

  else
  {
    v74[1] = v33;
    v40 = v87;
    (*(v17 + 16))(v87, v21, v16);
    v41 = v91;
    v42 = sub_23A6DECA4();
    v43 = sub_23A6DF874();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = v40;
      v45 = swift_slowAlloc();
      *v45 = 134218240;
      *(v45 + 4) = sub_23A6DF944();
      *(v45 + 12) = 2048;
      result = sub_23A6DE634();
      v46 = -result;
      if (__OFSUB__(0, result))
      {
LABEL_34:
        __break(1u);
        return result;
      }

      (*(v23 + 8))(v44, v85);
      *(v45 + 14) = v46;
      _os_log_impl(&dword_23A63D000, v42, v43, "validateAmount - requested: %ld, expected: %ld", v45, 0x16u);
      MEMORY[0x23EE8A960](v45, -1, -1);
    }

    else
    {
      (*(v23 + 8))(v40, v85);
    }

    v34 = v80;

    (*(v78 + 8))(v41, v34);
  }

  v47 = sub_23A6DF944();
  v48 = v88;
  result = sub_23A6DE634();
  if (__OFSUB__(0, result))
  {
    __break(1u);
    goto LABEL_34;
  }

  if (v47 >= -result)
  {
    MEMORY[0x23EE89E00](10);
    sub_23A6DE634();
    sub_23A6DE1E4();
    v51 = sub_23A6DF934();
    v53 = v52;
    v55 = v54;
    v56 = objc_allocWithZone(MEMORY[0x277CCA980]);
    v89[0] = v51;
    v89[1] = v53;
    v90 = v55;
    v57 = [v56 initWithDecimal_];
    v58 = [v57 integerValue];

    v59 = MEMORY[0x23EE89E00](0);
    if ((MEMORY[0x23EE89E10](v59) & 1) != 0 && v58 < 1000000000000)
    {
      return (*(v79 + 8))(v88, v85);
    }

    else
    {
      v60 = v81;
      sub_23A646D48(v77, v81, &qword_27DF9D240, qword_23A6E1D30);
      v61 = v75(v60, 1, v34);
      v62 = v79;
      if (v61 == 1)
      {
        sub_23A646DB0(v60, &qword_27DF9D240, qword_23A6E1D30);
      }

      else
      {
        v69 = sub_23A6DECA4();
        v70 = sub_23A6DF884();
        if (os_log_type_enabled(v69, v70))
        {
          v71 = swift_slowAlloc();
          *v71 = 0;
          _os_log_impl(&dword_23A63D000, v69, v70, "PaymentCardTransactionRequest - invalidAmount", v71, 2u);
          MEMORY[0x23EE8A960](v71, -1, -1);
        }

        (*(v78 + 8))(v60, v34);
      }

      v72 = v88;
      sub_23A6763DC();
      swift_allocError();
      *v73 = xmmword_23A6E46D0;
      *(v73 + 16) = 3;
      swift_willThrow();
      return (*(v62 + 8))(v72, v85);
    }
  }

  else
  {
    v49 = v86;
    sub_23A646D48(v77, v86, &qword_27DF9D240, qword_23A6E1D30);
    if (v75(v49, 1, v34) == 1)
    {
      sub_23A646DB0(v49, &qword_27DF9D240, qword_23A6E1D30);
      v50 = v79;
    }

    else
    {
      v63 = sub_23A6DECA4();
      v64 = sub_23A6DF884();
      v65 = os_log_type_enabled(v63, v64);
      v50 = v79;
      if (v65)
      {
        v66 = swift_slowAlloc();
        *v66 = 0;
        _os_log_impl(&dword_23A63D000, v63, v64, "validateAmount - too many decimal places", v66, 2u);
        v67 = v66;
        v48 = v88;
        MEMORY[0x23EE8A960](v67, -1, -1);
      }

      (*(v78 + 8))(v49, v34);
    }

    sub_23A6763DC();
    swift_allocError();
    *v68 = xmmword_23A6E46D0;
    *(v68 + 16) = 3;
    swift_willThrow();
    return (*(v50 + 8))(v48, v85);
  }
}

uint64_t sub_23A6B4DAC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = v33 - v6;
  v8 = *(a1 + 16);
  if (v8)
  {
    result = sub_23A6DEC44();
    if (result < v8)
    {
      v10 = sub_23A6DCDF0();
      sub_23A646D48(v10, v4, &qword_27DF9D240, qword_23A6E1D30);
      v11 = sub_23A6DECC4();
      v12 = *(v11 - 8);
      if ((*(v12 + 48))(v4, 1, v11) == 1)
      {
        sub_23A646DB0(v4, &qword_27DF9D240, qword_23A6E1D30);
      }

      else
      {
        v27 = sub_23A6DECA4();
        v28 = sub_23A6DF884();
        if (os_log_type_enabled(v27, v28))
        {
          a1 = swift_slowAlloc();
          *a1 = 0;
          _os_log_impl(&dword_23A63D000, v27, v28, "too many preferred AIDs", a1, 2u);
          MEMORY[0x23EE8A960](a1, -1, -1);
        }

        (*(v12 + 8))(v4, v11);
      }

      sub_23A6763DC();
      swift_allocError();
      *v29 = xmmword_23A6E46E0;
      *(v29 + 16) = 3;
      swift_willThrow();
      return a1;
    }

    for (i = (a1 + 40); ; i += 2)
    {
      v14 = *(i - 1);
      v15 = *i;
      v16 = *i >> 62;
      if (v16 > 1)
      {
        if (v16 != 2)
        {
          goto LABEL_29;
        }

        v18 = *(v14 + 16);
        v17 = *(v14 + 24);
        v19 = v17 - v18;
        if (__OFSUB__(v17, v18))
        {
          goto LABEL_41;
        }
      }

      else
      {
        if (!v16)
        {
          if (BYTE6(v15) < 5uLL)
          {
            goto LABEL_29;
          }

          goto LABEL_18;
        }

        if (__OFSUB__(HIDWORD(v14), v14))
        {
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
          return result;
        }

        v19 = HIDWORD(v14) - v14;
      }

      result = sub_23A693764(*(i - 1), *i);
      if (v19 < 5)
      {
        goto LABEL_29;
      }

LABEL_18:
      if (v16 == 2)
      {
        v21 = *(v14 + 16);
        v20 = *(v14 + 24);
        v22 = __OFSUB__(v20, v21);
        v23 = v20 - v21;
        if (v22)
        {
          goto LABEL_43;
        }

        if (v23 > 16)
        {
LABEL_29:
          v24 = sub_23A6DCDF0();
          sub_23A646D48(v24, v7, &qword_27DF9D240, qword_23A6E1D30);
          v25 = sub_23A6DECC4();
          v26 = *(v25 - 8);
          if ((*(v26 + 48))(v7, 1, v25) == 1)
          {
            sub_23A646DB0(v7, &qword_27DF9D240, qword_23A6E1D30);
          }

          else
          {
            a1 = sub_23A6DECA4();
            v30 = sub_23A6DF884();
            if (os_log_type_enabled(a1, v30))
            {
              v31 = swift_slowAlloc();
              *v31 = 0;
              _os_log_impl(&dword_23A63D000, a1, v30, "invalid AID length", v31, 2u);
              MEMORY[0x23EE8A960](v31, -1, -1);
            }

            (*(v26 + 8))(v7, v25);
          }

          sub_23A6763DC();
          swift_allocError();
          *v32 = xmmword_23A6E46E0;
          *(v32 + 16) = 3;
          swift_willThrow();
          sub_23A691B9C(v14, v15);
          return a1;
        }
      }

      else if (v16 == 1)
      {
        if (__OFSUB__(HIDWORD(v14), v14))
        {
          goto LABEL_42;
        }

        if (HIDWORD(v14) - v14 > 16)
        {
          goto LABEL_29;
        }
      }

      else if (BYTE6(v15) > 0x10uLL)
      {
        goto LABEL_29;
      }

      result = sub_23A691B9C(v14, v15);
      if (!--v8)
      {

        return a1;
      }
    }
  }

  return MEMORY[0x277D84F90];
}

char *sub_23A6B5230(uint64_t a1, char *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C7B0, &qword_23A6E11D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v38 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CB68, &unk_23A6E4700);
  MEMORY[0x28223BE20](v8 - 8);
  v48 = &v38 - v9;
  v10 = type metadata accessor for VASRequest.Merchant(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v42 = (&v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(*(a1 + 16) + 16);
  if (v13)
  {

    a2 = result;
  }

  else
  {
    v13 = *(a2 + 2);

    if (!v13)
    {

      v15 = 0x800000023A6EB4D0;
      sub_23A6763DC();
      swift_allocError();
      v17 = 0xD000000000000018;
LABEL_21:
      *v16 = v17;
      *(v16 + 8) = v15;
      *(v16 + 16) = 0;
LABEL_22:
      swift_willThrow();
      return a2;
    }
  }

  if (v13 >= 0x33)
  {

    v15 = 0x800000023A6EB4B0;
    sub_23A6763DC();
    swift_allocError();
    v17 = 0xD00000000000001FLL;
    goto LABEL_21;
  }

  v39 = v7;
  v40 = v2;
  v41 = a1;
  v18 = 0;
  v44 = &a2[(*(v11 + 80) + 32) & ~*(v11 + 80)];
  v45 = a2;
  v19 = &qword_27DF9CB68;
  v20 = v42;
  v43 = v13;
  do
  {
    if (v18 >= *(a2 + 2))
    {
      __break(1u);
      return result;
    }

    sub_23A6B57B8(&v44[*(v11 + 72) * v18], v20);
    v22 = v48;
    sub_23A646D48(v20 + *(v10 + 20), v48, v19, &unk_23A6E4700);
    v23 = v19;
    v24 = sub_23A6DE1D4();
    v25 = *(v24 - 8);
    if ((*(v25 + 48))(v22, 1, v24) == 1)
    {
      sub_23A6B581C(v20);
      result = sub_23A646DB0(v22, v23, &unk_23A6E4700);
      v19 = v23;
      a2 = v45;
      v21 = v43;
    }

    else
    {
      v26 = sub_23A6DE1B4();
      v28 = v27;
      (*(v25 + 8))(v22, v24);
      if ((v28 & 0x1000000000000000) != 0)
      {
        v29 = sub_23A6DF6D4();

        if (v29 >= 65)
        {
          goto LABEL_16;
        }
      }

      else
      {

        if ((v28 & 0x2000000000000000) == 0 && (v26 & 0xFFFFFFFFFFFFuLL) >= 0x41)
        {
LABEL_16:

          v46 = 0;
          v47 = 0xE000000000000000;
          sub_23A6DFA84();

          v46 = 0x746E61686372654DLL;
          v47 = 0xE900000000000020;
          a2 = v42;
          MEMORY[0x23EE89BB0](*v42, v42[1]);
          MEMORY[0x23EE89BB0](0xD00000000000001DLL, 0x800000023A6EB490);
          v30 = v46;
          v31 = v47;
          sub_23A6763DC();
          swift_allocError();
          *v32 = v30;
          *(v32 + 8) = v31;
          *(v32 + 16) = 1;
          swift_willThrow();
          sub_23A6B581C(a2);
          return a2;
        }
      }

      v20 = v42;
      result = sub_23A6B581C(v42);
      a2 = v45;
      v21 = v43;
      v19 = &qword_27DF9CB68;
    }

    ++v18;
  }

  while (v21 != v18);
  v33 = v41;
  v35 = *(v41 + 24);
  v34 = *(v41 + 32);

  if (sub_23A6DF694() >= 23)
  {

    sub_23A6763DC();
    swift_allocError();
    *v36 = 0xD000000000000029;
    *(v36 + 8) = 0x800000023A6EB460;
    *(v36 + 16) = 1;
    goto LABEL_22;
  }

  type metadata accessor for VASRequest(0);
  a2 = VASRequest.__allocating_init(vasMerchants:localizedVASType:)(a2, v35, v34);
  v37 = v39;
  (*(*v33 + 104))();
  (*(*a2 + 112))(v37);
  return a2;
}

uint64_t sub_23A6B57B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VASRequest.Merchant(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23A6B581C(uint64_t a1)
{
  v2 = type metadata accessor for VASRequest.Merchant(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23A6B589C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_23A6DEB24();
  v7 = MEMORY[0x28223BE20](v6 - 8);
  (*(a4 + 24))(a3, a4, v7);
  (*(a4 + 32))(a3, a4);
  v8 = objc_allocWithZone(sub_23A6DEB34());
  sub_23A6DEB44();
  (*(a4 + 16))(a3, a4);
  objc_allocWithZone(sub_23A6DEB74());

  return sub_23A6DEB64();
}

uint64_t sub_23A6B59E0()
{
  v1 = type metadata accessor for MobileDocumentDisplayRequest.Options.DocumentType(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23A6DE8C4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v0 + *(type metadata accessor for MobileDocumentDisplayRequest(0) + 20));
  v10 = *(v9 + 16);
  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    v19 = MEMORY[0x277D84F90];
    sub_23A6B68E8(0, v10, 0);
    v11 = v19;
    v12 = v9 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v13 = *(v2 + 72);
    v17[1] = v6 + 32;
    v18 = v13;
    do
    {
      sub_23A6B698C(v12, v4, type metadata accessor for MobileDocumentDisplayRequest.Options.DocumentType);
      (*(v6 + 16))(v8, v4, v5);
      sub_23A6B692C(v4, type metadata accessor for MobileDocumentDisplayRequest.Options.DocumentType);
      v19 = v11;
      v15 = *(v11 + 16);
      v14 = *(v11 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_23A6B68E8((v14 > 1), v15 + 1, 1);
        v11 = v19;
      }

      *(v11 + 16) = v15 + 1;
      (*(v6 + 32))(v11 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15, v8, v5);
      v12 += v18;
      --v10;
    }

    while (v10);
  }

  return v11;
}

uint64_t sub_23A6B5C9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for MobileDocumentDisplayRequest.Options.ValidationMode(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v2 + *(a1 + 20);
  v9 = type metadata accessor for MobileDocumentDisplayRequest.Options(0);
  sub_23A6B698C(v8 + *(v9 + 20), v7, type metadata accessor for MobileDocumentDisplayRequest.Options.ValidationMode);
  v10 = sub_23A6DEB24();
  return (*(*(v10 - 8) + 32))(a2, v7, v10);
}

uint64_t sub_23A6B5DAC(uint64_t (*a1)(void), uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v22 = a2;
  v23 = a3;
  v4 = a1(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v20 - v6;
  v8 = sub_23A6DE9B4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v13 = *(*v3 + 16);
  v14 = MEMORY[0x277D84F90];
  if (v13)
  {
    v24 = MEMORY[0x277D84F90];
    sub_23A6B68A4(0, v13, 0);
    v14 = v24;
    v15 = v12 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v16 = *(v5 + 72);
    v20[1] = v9 + 32;
    v21 = v16;
    do
    {
      sub_23A6B698C(v15, v7, v22);
      (*(v9 + 16))(v11, v7, v8);
      sub_23A6B692C(v7, v23);
      v24 = v14;
      v18 = *(v14 + 16);
      v17 = *(v14 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_23A6B68A4((v17 > 1), v18 + 1, 1);
        v14 = v24;
      }

      *(v14 + 16) = v18 + 1;
      (*(v9 + 32))(v14 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v18, v11, v8);
      v15 += v21;
      --v13;
    }

    while (v13);
  }

  return v14;
}

uint64_t sub_23A6B5FEC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CFC0, &qword_23A6E4730);
  v0 = sub_23A6DE8C4();
  v1 = *(v0 - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_23A6E2120;
  (*(v1 + 104))(v3 + v2, *MEMORY[0x277D43920], v0);
  return v3;
}

uint64_t sub_23A6B6120@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for MobileDriversLicenseDisplayRequest.Options.ValidationMode(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MobileDriversLicenseDisplayRequest.Options(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23A6B698C(v2 + *(a1 + 20), v10, type metadata accessor for MobileDriversLicenseDisplayRequest.Options);
  sub_23A6B69F4(v10, v7, type metadata accessor for MobileDriversLicenseDisplayRequest.Options.ValidationMode);
  v11 = sub_23A6DEB24();
  return (*(*(v11 - 8) + 32))(a2, v7, v11);
}

uint64_t sub_23A6B6260()
{
  v1 = type metadata accessor for MobileNationalIDCardDisplayRequest.Element(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23A6DE9B4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v0 + *(type metadata accessor for MobileNationalIDCardDisplayRequest(0) + 20));
  v10 = *(v9 + 16);
  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    v19 = MEMORY[0x277D84F90];
    sub_23A6B68A4(0, v10, 0);
    v11 = v19;
    v12 = v9 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v13 = *(v2 + 72);
    v17[1] = v6 + 32;
    v18 = v13;
    do
    {
      sub_23A6B698C(v12, v4, type metadata accessor for MobileNationalIDCardDisplayRequest.Element);
      (*(v6 + 16))(v8, v4, v5);
      sub_23A6B692C(v4, type metadata accessor for MobileNationalIDCardDisplayRequest.Element);
      v19 = v11;
      v15 = *(v11 + 16);
      v14 = *(v11 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_23A6B68A4((v14 > 1), v15 + 1, 1);
        v11 = v19;
      }

      *(v11 + 16) = v15 + 1;
      (*(v6 + 32))(v11 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15, v8, v5);
      v12 += v18;
      --v10;
    }

    while (v10);
  }

  return v11;
}

void *sub_23A6B64C4@<X0>(void *(*a1)(uint64_t *__return_ptr, char *)@<X1>, _BYTE *a2@<X8>)
{
  v4 = sub_23A6DEBB4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23A6DEBC4();
  v8 = (*(v5 + 88))(v7, v4);
  if (v8 != *MEMORY[0x277D43C10])
  {
    if (v8 == *MEMORY[0x277D43C00])
    {
      v12 = 1;
      v9 = &v12;
      goto LABEL_7;
    }

    if (v8 == *MEMORY[0x277D43C08])
    {
      v13 = 2;
      v9 = &v13;
      goto LABEL_7;
    }

    (*(v5 + 8))(v7, v4);
  }

  v14 = 0;
  v9 = &v14;
LABEL_7:
  result = a1(&v15, v9);
  *a2 = v15;
  return result;
}

uint64_t sub_23A6B663C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CFC0, &qword_23A6E4730);
  v1 = sub_23A6DE8C4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23A6E2120;
  v5 = sub_23A6DE314();
  (*(*(v5 - 8) + 16))(v4 + v3, v0, v5);
  (*(v2 + 104))(v4 + v3, *MEMORY[0x277D43928], v1);
  return v4;
}

uint64_t sub_23A6B6764@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for MobileNationalIDCardDisplayRequest.Options.ValidationMode(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MobileNationalIDCardDisplayRequest.Options(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23A6B698C(v2 + *(a1 + 24), v10, type metadata accessor for MobileNationalIDCardDisplayRequest.Options);
  sub_23A6B69F4(v10, v7, type metadata accessor for MobileNationalIDCardDisplayRequest.Options.ValidationMode);
  v11 = sub_23A6DEB24();
  return (*(*(v11 - 8) + 32))(a2, v7, v11);
}

void *sub_23A6B68A4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23A6B6BAC(a1, a2, a3, *v3, &qword_27DF9CFE0, &qword_23A6E47B8, MEMORY[0x277D43AE8]);
  *v3 = result;
  return result;
}

void *sub_23A6B68E8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23A6B6BAC(a1, a2, a3, *v3, &qword_27DF9CFC0, &qword_23A6E4730, MEMORY[0x277D43938]);
  *v3 = result;
  return result;
}

uint64_t sub_23A6B692C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_23A6B698C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23A6B69F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_23A6B6A5C(uint64_t a1)
{
  result = sub_23A6B6B64(&qword_27DF9CFC8, type metadata accessor for MobileDocumentDisplayRequest, &protocol conformance descriptor for MobileDocumentDisplayRequest);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_23A6B6AB4(uint64_t a1)
{
  result = sub_23A6B6B64(&qword_27DF9CFD0, type metadata accessor for MobileDriversLicenseDisplayRequest, &protocol conformance descriptor for MobileDriversLicenseDisplayRequest);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_23A6B6B0C(uint64_t a1)
{
  result = sub_23A6B6B64(&qword_27DF9CFD8, type metadata accessor for MobileNationalIDCardDisplayRequest, &protocol conformance descriptor for MobileNationalIDCardDisplayRequest);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_23A6B6B64(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_23A6B6BAC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

uint64_t type metadata accessor for DiscoveryErrorSheet(uint64_t a1)
{
  result = qword_27DFA2400;
  if (!qword_27DFA2400)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23A6B6DF8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a1;
  v45 = a2;
  v3 = type metadata accessor for DiscoveryErrorSheet(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v42 = v5;
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D040, &qword_23A6E4928);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v43 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v39 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D048, &qword_23A6E4930);
  MEMORY[0x28223BE20](v13 - 8);
  v44 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v39 - v16;
  *v17 = sub_23A6DF224();
  *(v17 + 1) = 0;
  v17[16] = 1;
  v18 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D050, &qword_23A6E4938) + 44)];
  v41 = v6;
  sub_23A6B7E0C(a1, v6);
  v19 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v20 = swift_allocObject();
  sub_23A6B7E70(v6, v20 + v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D058, &qword_23A6E4940);
  sub_23A6B7F34();
  sub_23A6DF514();
  v21 = *(v8 + 16);
  v22 = v43;
  v21(v43, v12, v7);
  *v18 = 0;
  v18[8] = 1;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D098, &qword_23A6E4960);
  v21(&v18[*(v23 + 48)], v22, v7);
  v24 = *(v8 + 8);
  v24(v12, v7);
  v24(v22, v7);
  v25 = v40;
  v26 = *v40;
  v27 = v40[1];
  v28 = v40[2];
  v29 = v40[3];

  sub_23A6B8E94(v26, v27, v28, v29, 0, &v46);
  v30 = v41;
  sub_23A6B7E0C(v25, v41);
  v31 = swift_allocObject();
  sub_23A6B7E70(v30, v31 + v19);
  v32 = v44;
  sub_23A646D48(v17, v44, &qword_27DF9D048, &qword_23A6E4930);
  v33 = v45;
  sub_23A646D48(v32, v45, &qword_27DF9D048, &qword_23A6E4930);
  v34 = v33 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D0A0, &qword_23A6E4968) + 48);
  v35 = v46;
  v36 = v47;
  v49[0] = v46;
  v49[1] = v47;
  v50 = v48;
  *&v51 = 0;
  *(&v51 + 1) = sub_23A6B8228;
  v52 = v31;
  *(v34 + 64) = v31;
  *v34 = v35;
  *(v34 + 16) = v36;
  v37 = v51;
  *(v34 + 32) = v50;
  *(v34 + 48) = v37;
  sub_23A646D48(v49, v53, &qword_27DF9D0A8, &qword_23A6E4970);
  sub_23A646DB0(v17, &qword_27DF9D048, &qword_23A6E4930);
  v53[0] = v46;
  v53[1] = v47;
  v54 = v48;
  v55 = 0;
  v56 = 0;
  v57 = sub_23A6B8228;
  v58 = v31;
  sub_23A646DB0(v53, &qword_27DF9D0A8, &qword_23A6E4970);
  return sub_23A646DB0(v32, &qword_27DF9D048, &qword_23A6E4930);
}

uint64_t sub_23A6B72EC(uint64_t a1)
{
  v16 = sub_23A6DF214();
  v2 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CFE8, &qword_23A6E47C0);
  MEMORY[0x28223BE20](v5);
  v7 = &v15 - v6;
  v8 = sub_23A6DF114();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DiscoveryErrorSheet(0);
  sub_23A646D48(a1 + *(v12 + 28), v7, &qword_27DF9CFE8, &qword_23A6E47C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  else
  {
    sub_23A6DF894();
    v13 = sub_23A6DF364();
    sub_23A6DEC94();

    sub_23A6DF204();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v16);
  }

  sub_23A6DF104();
  return (*(v9 + 8))(v11, v8);
}

void sub_23A6B7574(uint64_t a1@<X8>)
{
  v2 = sub_23A6DF4F4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23A6DF4E4();
  (*(v3 + 104))(v5, *MEMORY[0x277CE0FE0], v2);
  v20 = sub_23A6DF504();

  (*(v3 + 8))(v5, v2);
  sub_23A6DF554();
  sub_23A6DF0F4();
  v6 = v23;
  v7 = v24;
  v8 = v25;
  v9 = v26;
  v11 = v27;
  v10 = v28;
  v12 = [objc_opt_self() systemDarkGrayColor];
  v13 = sub_23A6DF4D4();
  KeyPath = swift_getKeyPath();
  v22 = v7;
  v21 = v9;
  v15 = sub_23A6DF384();
  sub_23A6DF0D4();
  *a1 = v20;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7;
  *(a1 + 24) = v8;
  *(a1 + 32) = v9;
  *(a1 + 40) = v11;
  *(a1 + 48) = v10;
  *(a1 + 56) = KeyPath;
  *(a1 + 64) = v13;
  *(a1 + 72) = v15;
  *(a1 + 80) = v16;
  *(a1 + 88) = v17;
  *(a1 + 96) = v18;
  *(a1 + 104) = v19;
  *(a1 + 112) = 0;
}

uint64_t sub_23A6B7778@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CFE8, &qword_23A6E47C0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_23A6B77D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  *a8 = a1;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a4;
  a8[4] = a5;
  a8[5] = a6;
  v9 = a8 + *(type metadata accessor for DiscoveryErrorSheet(0) + 28);

  return sub_23A6B782C(a7, v9);
}

uint64_t sub_23A6B782C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CAB0, &qword_23A6E25A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23A6B78C0@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_23A6DF544();
  a1[1] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CFF0, &qword_23A6E47F8);
  sub_23A6B6DF8(v1, a1 + *(v4 + 44));
  v5 = sub_23A6DF174();
  v6 = sub_23A6DF384();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CFF8, &unk_23A6E4800);
  v8 = a1 + *(result + 36);
  *v8 = v5;
  v8[8] = v6;
  return result;
}

unint64_t sub_23A6B7968()
{
  result = qword_27DF9D000;
  if (!qword_27DF9D000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9D000);
  }

  return result;
}

uint64_t sub_23A6B79D8@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  *(a1 + *(type metadata accessor for DiscoveryErrorSheet(0) + 28)) = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CFE8, &qword_23A6E47C0);
  result = swift_storeEnumTagMultiPayload();
  strcpy(a1, "Unable to Open");
  *(a1 + 15) = -18;
  *(a1 + 16) = 0xD000000000000037;
  *(a1 + 24) = 0x800000023A6EB5B0;
  *(a1 + 32) = nullsub_1;
  *(a1 + 40) = 0;
  return result;
}

uint64_t sub_23A6B7A9C(uint64_t a1)
{
  v2 = sub_23A6B7DB8();

  return MEMORY[0x28212D8F0](a1, v2);
}

uint64_t sub_23A6B7AE8(uint64_t a1)
{
  v2 = sub_23A6B7DB8();

  return MEMORY[0x28212D8E0](a1, v2);
}

void sub_23A6B7B5C(uint64_t a1)
{
  sub_23A6B7BF0();
  if (v1 <= 0x3F)
  {
    sub_23A6B7C40(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_23A6B7BF0()
{
  result = qword_27DF9D008;
  if (!qword_27DF9D008)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27DF9D008);
  }

  return result;
}

void sub_23A6B7C40(uint64_t a1)
{
  if (!qword_27DF9D010)
  {
    sub_23A6DF114();
    v1 = sub_23A6DF0E4();
    if (!v2)
    {
      atomic_store(v1, &qword_27DF9D010);
    }
  }
}

unint64_t sub_23A6B7CA8()
{
  result = qword_27DF9D018;
  if (!qword_27DF9D018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF9CFF8, &unk_23A6E4800);
    sub_23A6A64B0(&qword_27DF9D020, &qword_27DF9D028, &qword_23A6E4920, MEMORY[0x277CE11A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9D018);
  }

  return result;
}

unint64_t sub_23A6B7D60()
{
  result = qword_27DF9D030;
  if (!qword_27DF9D030)
  {
    type metadata accessor for DiscoveryErrorSheet(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9D030);
  }

  return result;
}

unint64_t sub_23A6B7DB8()
{
  result = qword_27DF9D038;
  if (!qword_27DF9D038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9D038);
  }

  return result;
}

uint64_t sub_23A6B7E0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DiscoveryErrorSheet(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23A6B7E70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DiscoveryErrorSheet(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23A6B7ED4()
{
  v1 = *(type metadata accessor for DiscoveryErrorSheet(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_23A6B72EC(v2);
}

unint64_t sub_23A6B7F34()
{
  result = qword_27DF9D060;
  if (!qword_27DF9D060)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF9D058, &qword_23A6E4940);
    sub_23A6B7FC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9D060);
  }

  return result;
}

unint64_t sub_23A6B7FC0()
{
  result = qword_27DF9D068;
  if (!qword_27DF9D068)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF9D070, &qword_23A6E4948);
    sub_23A6B8078();
    sub_23A6A64B0(&qword_27DF9D088, &qword_27DF9D090, &qword_23A6E4958, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9D068);
  }

  return result;
}

unint64_t sub_23A6B8078()
{
  result = qword_27DF9D078;
  if (!qword_27DF9D078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF9D080, &qword_23A6E4950);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9D078);
  }

  return result;
}

uint64_t objectdestroyTm_0()
{
  v1 = (type metadata accessor for DiscoveryErrorSheet(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CFE8, &qword_23A6E47C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_23A6DF114();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_23A6B828C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23A6DF194();
  *a1 = result;
  return result;
}

double sub_23A6B82E4@<D0>(uint64_t a1@<X8>)
{
  v93 = sub_23A6DF254();
  v127 = 1;
  v2 = *(v1 + 8);
  v130 = *v1;
  *v131 = v2;
  sub_23A677268();

  v3 = sub_23A6DF434();
  v5 = v4;
  v7 = v6;
  sub_23A6DF3E4();
  v8 = sub_23A6DF424();
  v10 = v9;
  v12 = v11;

  sub_23A6B99F0(v3, v5, v7 & 1);

  sub_23A6DF3C4();
  v13 = sub_23A6DF404();
  v103 = v14;
  v104 = v13;
  LOBYTE(v5) = v15;
  v105 = v16;
  sub_23A6B99F0(v8, v10, v12 & 1);

  KeyPath = swift_getKeyPath();
  v101 = swift_getKeyPath();
  v95 = v5 & 1;
  v172 = v5 & 1;
  v100 = sub_23A6DF394();
  v92 = *(v1 + 32);
  sub_23A6DF0D4();
  v18 = v17;
  v89 = v17;
  v86 = v19;
  v96 = v21;
  v97 = v20;
  v173 = 0;
  v98 = sub_23A6DF374();
  sub_23A6DF0D4();
  v23 = v22;
  v90 = v24;
  v91 = v22;
  v87 = v26;
  v88 = v25;
  v27 = v24;
  v175 = 0;
  v99 = sub_23A6DF3A4();
  sub_23A6DF0D4();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v178 = 0;
  v36 = *(v1 + 24);
  v130 = *(v1 + 16);
  *v131 = v36;

  v37 = sub_23A6DF434();
  v39 = v38;
  v41 = v40;
  sub_23A6DF3F4();
  v42 = sub_23A6DF424();
  v44 = v43;
  LOBYTE(v8) = v45;

  sub_23A6B99F0(v37, v39, v41 & 1);

  sub_23A6DF4A4();
  v46 = sub_23A6DF414();
  v48 = v47;
  v50 = v49;
  v85 = v51;

  sub_23A6B99F0(v42, v44, v8 & 1);

  v52 = swift_getKeyPath();
  v53 = swift_getKeyPath();
  LOBYTE(v37) = v50 & 1;
  v164 = v50 & 1;
  LOBYTE(v42) = sub_23A6DF3A4();
  sub_23A6DF0D4();
  v55 = v54;
  v83 = v57;
  v84 = v56;
  v82 = v58;
  v165 = 0;
  v59 = sub_23A6DF374();
  sub_23A6DF0D4();
  v167 = 0;
  v152 = 1;
  *&__src[0] = v104;
  *(&__src[0] + 1) = v103;
  LOBYTE(__src[1]) = v95;
  *(&__src[1] + 1) = *v171;
  DWORD1(__src[1]) = *&v171[3];
  *(&__src[1] + 1) = v105;
  *&__src[2] = KeyPath;
  BYTE8(__src[2]) = 1;
  HIDWORD(__src[2]) = *&v170[3];
  *(&__src[2] + 9) = *v170;
  *&__src[3] = v101;
  *(&__src[3] + 1) = 0x3FE0000000000000;
  LOBYTE(__src[4]) = v100;
  DWORD1(__src[4]) = *&v174[3];
  *(&__src[4] + 1) = *v174;
  *(&__src[4] + 1) = v18;
  *&__src[5] = v86;
  *(&__src[5] + 1) = v97;
  *&__src[6] = v96;
  BYTE8(__src[6]) = 0;
  HIDWORD(__src[6]) = *&v177[3];
  *(&__src[6] + 9) = *v177;
  LOBYTE(__src[7]) = v98;
  DWORD1(__src[7]) = *&v176[3];
  *(&__src[7] + 1) = *v176;
  *(&__src[7] + 1) = v23;
  *&__src[8] = v88;
  *(&__src[8] + 1) = v27;
  *&__src[9] = v87;
  BYTE8(__src[9]) = 0;
  HIDWORD(__src[9]) = *(v180 + 3);
  *(&__src[9] + 9) = v180[0];
  LOBYTE(__src[10]) = v99;
  DWORD1(__src[10]) = *&v179[3];
  *(&__src[10] + 1) = *v179;
  *(&__src[10] + 1) = v29;
  *&__src[11] = v31;
  *(&__src[11] + 1) = v33;
  *&__src[12] = v35;
  BYTE8(__src[12]) = 0;
  *&v151[7] = __src[0];
  *&v151[71] = __src[4];
  *&v151[55] = __src[3];
  *&v151[39] = __src[2];
  *&v151[23] = __src[1];
  *&v151[135] = __src[8];
  *&v151[119] = __src[7];
  *&v151[103] = __src[6];
  *&v151[87] = __src[5];
  *&v151[192] = *(&__src[11] + 9);
  *&v151[183] = __src[11];
  *&v151[167] = __src[10];
  *&v151[151] = __src[9];
  *&v153 = v46;
  *(&v153 + 1) = v48;
  LOBYTE(v154) = v37;
  *(&v154 + 1) = *v163;
  DWORD1(v154) = *&v163[3];
  *(&v154 + 1) = v85;
  *&v155 = v52;
  BYTE8(v155) = 1;
  *(&v155 + 9) = *v162;
  HIDWORD(v155) = *&v162[3];
  *&v156 = v53;
  *(&v156 + 1) = 0x3FE0000000000000;
  LOBYTE(v157) = v42;
  DWORD1(v157) = *&v166[3];
  *(&v157 + 1) = *v166;
  *(&v157 + 1) = v55;
  *&v158 = v84;
  *(&v158 + 1) = v83;
  *&v159 = v82;
  BYTE8(v159) = 0;
  *(&v159 + 9) = v169[0];
  HIDWORD(v159) = *(v169 + 3);
  LOBYTE(v160) = v59;
  *(&v160 + 1) = *v168;
  DWORD1(v160) = *&v168[3];
  *(&v160 + 1) = v60;
  *v161 = v61;
  *&v161[8] = v62;
  *&v161[16] = v63;
  v161[24] = 0;
  *&v150[103] = v159;
  *&v150[119] = v160;
  *&v150[135] = *v161;
  *&v150[39] = v155;
  *&v150[55] = v156;
  *&v150[71] = v157;
  *&v150[87] = v158;
  *&v150[7] = v153;
  *&v150[23] = v154;
  *&v150[144] = *&v161[9];
  v149 = 1;
  *&v106 = v46;
  *(&v106 + 1) = v48;
  LOBYTE(v107) = v37;
  *(&v107 + 1) = *v163;
  DWORD1(v107) = *&v163[3];
  *(&v107 + 1) = v85;
  *&v108 = v52;
  BYTE8(v108) = 1;
  *(&v108 + 9) = *v162;
  HIDWORD(v108) = *&v162[3];
  v109 = v53;
  v110 = 0x3FE0000000000000;
  v111 = v42;
  *&v112[3] = *&v166[3];
  *v112 = *v166;
  v113 = v55;
  v114 = v84;
  v115 = v83;
  v116 = v82;
  v117 = 0;
  *v118 = v169[0];
  *&v118[3] = *(v169 + 3);
  v119 = v59;
  *&v120[3] = *&v168[3];
  *v120 = *v168;
  v121 = v60;
  v122 = v61;
  v123 = v62;
  v124 = v63;
  v125 = 0;
  sub_23A646D48(__src, &v130, &qword_27DF9D148, &qword_23A6E4C70);
  sub_23A646D48(&v153, &v130, &qword_27DF9D150, &unk_23A6E4C78);
  sub_23A646DB0(&v106, &qword_27DF9D150, &unk_23A6E4C78);
  v130 = v104;
  *v131 = v103;
  v131[8] = v95;
  *&v131[9] = *v171;
  *&v131[12] = *&v171[3];
  *&v131[16] = v105;
  *&v131[24] = KeyPath;
  v131[32] = 1;
  *v132 = *v170;
  *&v132[3] = *&v170[3];
  *&v132[7] = v101;
  *&v132[15] = 0x3FE0000000000000;
  v132[23] = v100;
  *&v132[27] = *&v174[3];
  *&v132[24] = *v174;
  *&v132[31] = v89;
  *&v132[39] = v86;
  *&v132[47] = v97;
  *&v132[55] = v96;
  v132[63] = 0;
  *v133 = *v177;
  *&v133[3] = *&v177[3];
  v133[7] = v98;
  *&v133[8] = *v176;
  *&v133[11] = *&v176[3];
  *&v133[15] = v91;
  *&v133[23] = v88;
  *&v133[31] = v90;
  *&v133[39] = v87;
  v133[47] = 0;
  *v134 = v180[0];
  *&v134[3] = *(v180 + 3);
  v134[7] = v99;
  *&v134[8] = *v179;
  *&v134[11] = *&v179[3];
  *&v134[15] = v29;
  *&v134[23] = v31;
  *&v134[31] = v33;
  *&v134[39] = v35;
  v134[47] = 0;
  sub_23A646DB0(&v130, &qword_27DF9D148, &qword_23A6E4C70);
  *(__src + 9) = *v151;
  *(&__src[4] + 9) = *&v151[64];
  *(&__src[3] + 9) = *&v151[48];
  *(&__src[2] + 9) = *&v151[32];
  *(&__src[1] + 9) = *&v151[16];
  *(&__src[8] + 9) = *&v151[128];
  *(&__src[7] + 9) = *&v151[112];
  *(&__src[6] + 9) = *&v151[96];
  *(&__src[5] + 9) = *&v151[80];
  *(&__src[12] + 9) = *&v151[192];
  *(&__src[11] + 9) = *&v151[176];
  *(&__src[10] + 9) = *&v151[160];
  *(&__src[9] + 9) = *&v151[144];
  *(&__src[20] + 9) = *&v150[112];
  *(&__src[21] + 9) = *&v150[128];
  *(&__src[22] + 9) = *&v150[144];
  *(&__src[16] + 9) = *&v150[48];
  *(&__src[17] + 9) = *&v150[64];
  *(&__src[18] + 9) = *&v150[80];
  *(&__src[19] + 9) = *&v150[96];
  *(&__src[15] + 9) = *&v150[32];
  *(&__src[13] + 9) = *v150;
  *(&__src[14] + 9) = *&v150[16];
  *v134 = *&v151[144];
  *&v134[16] = *&v151[160];
  *&v134[32] = *&v151[176];
  v135 = *&v151[192];
  *&v132[48] = *&v151[80];
  *v133 = *&v151[96];
  *&v133[16] = *&v151[112];
  *&v133[32] = *&v151[128];
  *&v131[17] = *&v151[16];
  *v132 = *&v151[32];
  *&v132[16] = *&v151[48];
  *&v132[32] = *&v151[64];
  *&v131[1] = *v151;
  v143 = *&v150[112];
  v144 = *&v150[128];
  v145 = *&v150[144];
  v139 = *&v150[48];
  v140 = *&v150[64];
  *&__src[0] = 0;
  BYTE8(__src[0]) = 1;
  *(&__src[23] + 9) = v153;
  HIDWORD(__src[23]) = *(&v153 + 3);
  *&__src[24] = 0;
  BYTE8(__src[24]) = 1;
  v130 = 0;
  v131[0] = 1;
  v141 = *&v150[80];
  v142 = *&v150[96];
  v138 = *&v150[32];
  v136 = *v150;
  v137 = *&v150[16];
  *v146 = v153;
  *&v146[3] = *(&v153 + 3);
  v147 = 0;
  v148 = 1;
  sub_23A646D48(__src, &v106, &qword_27DF9D0B0, &qword_23A6E49B0);
  sub_23A646DB0(&v130, &qword_27DF9D0B0, &qword_23A6E49B0);
  memcpy(&v126[7], __src, 0x189uLL);
  v64 = v127;
  if (v92)
  {
    v65 = [objc_opt_self() mainScreen];
    [v65 bounds];
    v67 = v66;
    v69 = v68;
    v71 = v70;
    v73 = v72;

    v181.origin.x = v67;
    v181.origin.y = v69;
    v181.size.width = v71;
    v181.size.height = v73;
    CGRectGetHeight(v181);
  }

  sub_23A6DF554();
  sub_23A6DF0F4();
  *&v128[7] = v106;
  *&v128[23] = v107;
  *&v128[39] = v108;
  v74 = sub_23A6DF174();
  v75 = sub_23A6DF384();
  if (v92)
  {
    sub_23A6B8E40();
  }

  v76 = sub_23A6DF524();
  v77 = sub_23A6DF554();
  v79 = v78;
  *a1 = v93;
  *(a1 + 8) = 0;
  *(a1 + 16) = v64;
  memcpy((a1 + 17), v126, 0x190uLL);
  v80 = *&v128[16];
  *(a1 + 417) = *v128;
  *(a1 + 433) = v80;
  result = *&v128[32];
  *(a1 + 449) = *&v128[32];
  *(a1 + 464) = *&v128[47];
  *(a1 + 472) = v74;
  *(a1 + 480) = v75;
  *(a1 + 488) = v76;
  *(a1 + 496) = v77;
  *(a1 + 504) = v79;
  return result;
}

unint64_t sub_23A6B8E40()
{
  result = qword_27DF9D0B8;
  if (!qword_27DF9D0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9D0B8);
  }

  return result;
}

uint64_t sub_23A6B8E94@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return result;
}

uint64_t sub_23A6B8F00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23A6B97BC();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_23A6B8F64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23A6B97BC();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_23A6B8FC8(uint64_t a1)
{
  sub_23A6B97BC();
  sub_23A6DF304();
  __break(1u);
}

void sub_23A6B8FF0(uint64_t a1@<X8>)
{
  strcpy(a1, "Unable to Open");
  *(a1 + 15) = -18;
  *(a1 + 16) = 0xD000000000000037;
  *(a1 + 24) = 0x800000023A6EB5B0;
  *(a1 + 32) = 0;
}

uint64_t sub_23A6B9038(uint64_t a1)
{
  v2 = sub_23A6B9768();

  return MEMORY[0x28212D8F0](a1, v2);
}

uint64_t sub_23A6B9084(uint64_t a1)
{
  v2 = sub_23A6B9768();

  return MEMORY[0x28212D8E0](a1, v2);
}

uint64_t sub_23A6B90D0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23A6DF1D4();
  *a1 = result;
  return result;
}

id sub_23A6B9178()
{
  v0 = sub_23A6DF564();
  v15 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v2 = &v12 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_23A6DF584();
  v13 = *(v3 - 8);
  v14 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  sub_23A6B9810();
  v7 = sub_23A6DF8B4();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  aBlock[4] = sub_23A6B985C;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23A672F1C;
  aBlock[3] = &block_descriptor_4;
  v9 = _Block_copy(aBlock);
  v10 = v6;

  sub_23A6DF574();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_23A6B9998();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D138, &qword_23A6E4C08);
  sub_23A6A64B0(&qword_27DF9D140, &qword_27DF9D138, &qword_23A6E4C08, MEMORY[0x277D83970]);
  sub_23A6DF9A4();
  MEMORY[0x23EE89DC0](0, v5, v2, v9);
  _Block_release(v9);

  (*(v15 + 8))(v2, v0);
  (*(v13 + 8))(v5, v14);
  return v10;
}

unint64_t sub_23A6B9478()
{
  result = qword_27DF9D0C0;
  if (!qword_27DF9D0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9D0C0);
  }

  return result;
}

unint64_t sub_23A6B9518()
{
  result = qword_27DF9D0C8;
  if (!qword_27DF9D0C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF9D0D0, &qword_23A6E4BE0);
    sub_23A6B95D0();
    sub_23A6A64B0(&qword_27DF9D108, &qword_27DF9D110, &qword_23A6E4C00, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9D0C8);
  }

  return result;
}

unint64_t sub_23A6B95D0()
{
  result = qword_27DF9D0D8;
  if (!qword_27DF9D0D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF9D0E0, &qword_23A6E4BE8);
    sub_23A6B965C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9D0D8);
  }

  return result;
}

unint64_t sub_23A6B965C()
{
  result = qword_27DF9D0E8;
  if (!qword_27DF9D0E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF9D0F0, &qword_23A6E4BF0);
    sub_23A6A64B0(&qword_27DF9D0F8, &qword_27DF9D100, &qword_23A6E4BF8, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9D0E8);
  }

  return result;
}

unint64_t sub_23A6B9714()
{
  result = qword_27DF9D118;
  if (!qword_27DF9D118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9D118);
  }

  return result;
}

unint64_t sub_23A6B9768()
{
  result = qword_27DF9D120;
  if (!qword_27DF9D120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9D120);
  }

  return result;
}

unint64_t sub_23A6B97BC()
{
  result = qword_27DF9D128;
  if (!qword_27DF9D128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9D128);
  }

  return result;
}

unint64_t sub_23A6B9810()
{
  result = qword_27DF9CF98;
  if (!qword_27DF9CF98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DF9CF98);
  }

  return result;
}

void sub_23A6B985C()
{
  v1 = *(v0 + 16);
  v2 = [v1 superview];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 superview];

    if (v4)
    {
      v5 = [objc_opt_self() clearColor];
      [v4 setBackgroundColor_];
    }
  }

  v6 = [v1 superview];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 superview];

    if (v8)
    {
      [v8 setUserInteractionEnabled_];
    }
  }
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_23A6B9998()
{
  result = qword_27DF9D130;
  if (!qword_27DF9D130)
  {
    sub_23A6DF564();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9D130);
  }

  return result;
}

uint64_t sub_23A6B99F0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_23A6B9A04@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23A6DF214();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CFE8, &qword_23A6E47C0);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for DiscoveryRotatedView(0);
  sub_23A646D48(v1 + *(v10 + 24), v9, &qword_27DF9CFE8, &qword_23A6E47C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_23A6DF114();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_23A6DF894();
    v13 = sub_23A6DF364();
    sub_23A6DEC94();

    sub_23A6DF204();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t type metadata accessor for DiscoveryRotatedView(uint64_t a1)
{
  result = qword_27DFA2740;
  if (!qword_27DFA2740)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23A6B9C58@<X0>(uint64_t a1@<X8>)
{
  v25[1] = a1;
  v2 = sub_23A6DF354();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D158, &qword_23A6E4CB8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = (v25 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D160, &qword_23A6E4CC0);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = v25 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D168, &qword_23A6E4CC8);
  MEMORY[0x28223BE20](v13);
  v15 = v25 - v14;
  *v8 = sub_23A6DF544();
  v8[1] = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D170, &qword_23A6E4CD0);
  sub_23A6B9F6C(v1, v8 + *(v17 + 44));
  sub_23A6DF554();
  sub_23A6DF184();
  sub_23A69EED0(v8, v12, &qword_27DF9D158, &qword_23A6E4CB8);
  v18 = &v12[*(v10 + 44)];
  v19 = v31;
  *(v18 + 4) = v30;
  *(v18 + 5) = v19;
  *(v18 + 6) = v32;
  v20 = v27;
  *v18 = v26;
  *(v18 + 1) = v20;
  v21 = v29;
  *(v18 + 2) = v28;
  *(v18 + 3) = v21;
  v22 = &v15[*(v13 + 36)];
  sub_23A6DF534();
  v23 = sub_23A6DF384();
  v22[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D178, qword_23A6E4CD8) + 36)] = v23;
  sub_23A69EED0(v12, v15, &qword_27DF9D160, &qword_23A6E4CC0);
  sub_23A6DF344();
  sub_23A6BAFF4();
  sub_23A6DF494();
  (*(v3 + 8))(v5, v2);
  return sub_23A646DB0(v15, &qword_27DF9D168, &qword_23A6E4CC8);
}

uint64_t sub_23A6B9F6C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v130 = a1;
  v127 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D1A0, &qword_23A6E4D58);
  v4 = *(v3 - 8);
  v125 = v3;
  v126 = v4;
  MEMORY[0x28223BE20](v3);
  v121 = &KeyPath - v5;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D1A8, &unk_23A6E4D60);
  MEMORY[0x28223BE20](v124);
  v122 = &KeyPath - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v123 = &KeyPath - v8;
  v9 = sub_23A6DF244();
  v128 = *(v9 - 8);
  v129 = v9;
  MEMORY[0x28223BE20](v9);
  v118 = &KeyPath - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_23A6DF354();
  v12 = *(v11 - 8);
  v135 = v11;
  v136 = v12;
  MEMORY[0x28223BE20](v11);
  v131 = &KeyPath - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DiscoveryRotatedView(0);
  v120 = *(v14 - 8);
  v15 = *(v120 + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D040, &qword_23A6E4928);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &KeyPath - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &KeyPath - v21;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D1B0, &qword_23A6E4D70);
  MEMORY[0x28223BE20](v133);
  v24 = &KeyPath - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D1B8, &qword_23A6E4D78);
  v26 = *(v25 - 8);
  v116 = v25;
  v117 = v26;
  MEMORY[0x28223BE20](v25);
  KeyPath = &KeyPath - v27;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D1C0, &unk_23A6E4D80);
  MEMORY[0x28223BE20](v115);
  v114 = &KeyPath - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v132 = &KeyPath - v30;
  MEMORY[0x28223BE20](v31);
  v134 = &KeyPath - v32;
  *v24 = sub_23A6DF224();
  *(v24 + 1) = 0;
  v24[16] = 1;
  v33 = &v24[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D050, &qword_23A6E4938) + 44)];
  sub_23A6BB5D8(a1, &KeyPath - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = (*(v120 + 80) + 16) & ~*(v120 + 80);
  v35 = swift_allocObject();
  sub_23A6BB63C(&KeyPath - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v35 + v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D058, &qword_23A6E4940);
  sub_23A6B7F34();
  sub_23A6DF514();
  v36 = *(v17 + 16);
  v36(v19, v22, v16);
  *v33 = 0;
  v33[8] = 1;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D098, &qword_23A6E4960);
  v36(&v33[*(v37 + 48)], v19, v16);
  v38 = *(v17 + 8);
  v38(v22, v16);
  v38(v19, v16);
  v39 = sub_23A6DF174();
  v40 = sub_23A6DF384();
  v41 = v133;
  v42 = &v24[*(v133 + 36)];
  *v42 = v39;
  v42[8] = v40;
  v43 = v131;
  sub_23A6DF334();
  v44 = sub_23A6BB700();
  v45 = KeyPath;
  sub_23A6DF494();
  v46 = *(v136 + 8);
  v136 += 8;
  v119 = v46;
  v46(v43, v135);
  sub_23A646DB0(v24, &qword_27DF9D1B0, &qword_23A6E4D70);
  sub_23A6DEC54();
  v47 = sub_23A6DF674();
  v49 = v48;

  *&v150 = v47;
  *(&v150 + 1) = v49;
  *&v139 = v41;
  *(&v139 + 1) = v44;
  v120 = MEMORY[0x277CDEAE8];
  swift_getOpaqueTypeConformance2();
  v133 = sub_23A677268();
  v50 = v114;
  v51 = v116;
  sub_23A6DF484();

  (*(v117 + 8))(v45, v51);
  v52 = v118;
  sub_23A6DF234();
  v53 = v132;
  sub_23A6DF124();
  (*(v128 + 8))(v52, v129);
  sub_23A646DB0(v50, &qword_27DF9D1C0, &unk_23A6E4D80);
  sub_23A6DF134();
  sub_23A646DB0(v53, &qword_27DF9D1C0, &unk_23A6E4D80);
  v118 = sub_23A6DF254();
  v142 = 1;
  sub_23A6DF4E4();
  v54 = sub_23A6DF444();
  v56 = v55;
  LOBYTE(v50) = v57;
  sub_23A6DF3B4();
  v58 = sub_23A6DF424();
  v60 = v59;
  LOBYTE(v15) = v61;

  sub_23A6B99F0(v54, v56, v50 & 1);

  sub_23A6DF4B4();
  v62 = sub_23A6DF414();
  v64 = v63;
  LOBYTE(v53) = v65;

  sub_23A6B99F0(v58, v60, v15 & 1);

  sub_23A6DF3D4();
  v66 = sub_23A6DF404();
  v114 = v67;
  v115 = v66;
  LOBYTE(v54) = v68;
  v117 = v69;
  sub_23A6B99F0(v62, v64, v53 & 1);

  KeyPath = swift_getKeyPath();
  LODWORD(v129) = sub_23A6DF3A4();
  sub_23A6DF0D4();
  v71 = v70;
  v73 = v72;
  v75 = v74;
  v77 = v76;
  LODWORD(v128) = v54 & 1;
  LOBYTE(v150) = v54 & 1;
  LOBYTE(v139) = 0;
  v78 = v130[1];
  *&v150 = *v130;
  *(&v150 + 1) = v78;

  v79 = sub_23A6DF434();
  v81 = v80;
  LOBYTE(v64) = v82;
  sub_23A6DF3F4();
  v83 = sub_23A6DF424();
  v85 = v84;
  LOBYTE(v60) = v86;

  sub_23A6B99F0(v79, v81, v64 & 1);

  sub_23A6DF4C4();
  v87 = sub_23A6DF414();
  v89 = v88;
  LOBYTE(v41) = v90;
  v92 = v91;

  sub_23A6B99F0(v83, v85, v60 & 1);

  v93 = swift_getKeyPath();
  v94 = swift_getKeyPath();
  v95 = v41 & 1;
  LOBYTE(v150) = v41 & 1;
  v167 = 1;
  v96 = v114;
  v97 = v115;
  *&v139 = v115;
  *(&v139 + 1) = v114;
  v140[0] = v128;
  *&v140[1] = v137;
  *&v140[4] = *(&v137 + 3);
  v98 = v117;
  v99 = KeyPath;
  *&v140[8] = v117;
  *&v140[16] = KeyPath;
  *&v140[24] = 0x3FE0000000000000;
  v140[32] = v129;
  *&v140[36] = *(v170 + 3);
  *&v140[33] = v170[0];
  *&v140[40] = v71;
  *&v140[48] = v73;
  *&v140[56] = v75;
  *&v140[64] = v77;
  v140[72] = 0;
  *(&v166[1] + 7) = *v140;
  *(v166 + 7) = v139;
  v166[5] = *&v140[57];
  *(&v166[4] + 7) = *&v140[48];
  *(&v166[3] + 7) = *&v140[32];
  *(&v166[2] + 7) = *&v140[16];
  *v143 = v87;
  *&v143[8] = v89;
  v143[16] = v95;
  *&v143[20] = *(v169 + 3);
  *&v143[17] = v169[0];
  *&v143[24] = v92;
  *&v143[32] = v93;
  v143[40] = 1;
  *&v143[44] = *&v168[3];
  *&v143[41] = *v168;
  *&v143[48] = v94;
  *&v143[56] = 0x3FE0000000000000;
  *&v165[55] = *&v143[48];
  *&v165[39] = *&v143[32];
  *&v165[23] = *&v143[16];
  *&v165[7] = *v143;
  v164 = 1;
  LODWORD(v116) = 1;
  v144 = v87;
  *v145 = v89;
  v145[8] = v95;
  *&v145[12] = *(v169 + 3);
  *&v145[9] = v169[0];
  *&v145[16] = v92;
  *&v145[24] = v93;
  v145[32] = 1;
  *(v146 + 3) = *&v168[3];
  LODWORD(v146[0]) = *v168;
  *(v146 + 7) = v94;
  *(v146 + 15) = 0x3FE0000000000000;
  sub_23A646D48(&v139, &v150, &qword_27DF9D1F8, &qword_23A6E4E08);
  sub_23A646D48(v143, &v150, &qword_27DF9D200, &qword_23A6E4E10);
  sub_23A646DB0(&v144, &qword_27DF9D200, &qword_23A6E4E10);
  *&v150 = v97;
  *(&v150 + 1) = v96;
  LOBYTE(v151) = v128;
  *(&v151 + 1) = v137;
  DWORD1(v151) = *(&v137 + 3);
  *(&v151 + 1) = v98;
  *&v152 = v99;
  *(&v152 + 1) = 0x3FE0000000000000;
  LOBYTE(v153) = v129;
  *(&v153 + 1) = v170[0];
  DWORD1(v153) = *(v170 + 3);
  *(&v153 + 1) = v71;
  *&v154 = v73;
  *(&v154 + 1) = v75;
  *&v155 = v77;
  BYTE8(v155) = 0;
  sub_23A646DB0(&v150, &qword_27DF9D1F8, &qword_23A6E4E08);
  *&v143[41] = v166[2];
  *&v143[57] = v166[3];
  *&v143[73] = v166[4];
  *&v143[89] = v166[5];
  *&v143[9] = v166[0];
  *&v143[25] = v166[1];
  *&v143[105] = *v165;
  *&v143[168] = *&v165[63];
  *&v143[153] = *&v165[48];
  *&v143[137] = *&v165[32];
  *&v143[121] = *&v165[16];
  *&v145[17] = v166[1];
  *&v145[1] = v166[0];
  v146[3] = v166[5];
  v146[2] = v166[4];
  v146[1] = v166[3];
  v146[0] = v166[2];
  *v143 = 0;
  v143[8] = v116;
  *&v143[176] = 0;
  v143[184] = 1;
  v144 = 0;
  v145[0] = v116;
  v146[4] = *v165;
  *&v147[15] = *&v165[63];
  *v147 = *&v165[48];
  v146[6] = *&v165[32];
  v146[5] = *&v165[16];
  v148 = 0;
  v149 = 1;
  sub_23A646D48(v143, &v150, &qword_27DF9D1D8, &qword_23A6E4D90);
  sub_23A646DB0(&v144, &qword_27DF9D1D8, &qword_23A6E4D90);
  *(&v141[8] + 7) = *&v143[128];
  *(&v141[9] + 7) = *&v143[144];
  *(&v141[10] + 7) = *&v143[160];
  v141[11] = *&v143[169];
  *(&v141[4] + 7) = *&v143[64];
  *(&v141[5] + 7) = *&v143[80];
  *(&v141[6] + 7) = *&v143[96];
  *(&v141[7] + 7) = *&v143[112];
  *(v141 + 7) = *v143;
  *(&v141[1] + 7) = *&v143[16];
  *(&v141[2] + 7) = *&v143[32];
  *(&v141[3] + 7) = *&v143[48];
  *&v140[129] = v141[8];
  *&v140[145] = v141[9];
  *&v140[161] = v141[10];
  *&v140[177] = *&v143[169];
  *&v140[65] = v141[4];
  *&v140[81] = v141[5];
  *&v140[97] = v141[6];
  *&v140[113] = v141[7];
  *&v140[1] = v141[0];
  *&v140[17] = v141[1];
  *&v140[33] = v141[2];
  v139 = v118;
  v140[0] = v142;
  *&v140[49] = v141[3];
  v100 = v131;
  sub_23A6DF334();
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D1E0, &qword_23A6E4D98);
  v102 = sub_23A6A64B0(&qword_27DF9D1E8, &qword_27DF9D1E0, &qword_23A6E4D98, MEMORY[0x277CE1198]);
  v103 = v121;
  sub_23A6DF494();
  v119(v100, v135);
  v160 = *&v140[144];
  v161 = *&v140[160];
  v162 = *&v140[176];
  v163 = v140[192];
  v156 = *&v140[80];
  v157 = *&v140[96];
  v158 = *&v140[112];
  v159 = *&v140[128];
  v152 = *&v140[16];
  v153 = *&v140[32];
  v154 = *&v140[48];
  v155 = *&v140[64];
  v150 = v139;
  v151 = *v140;
  sub_23A646DB0(&v150, &qword_27DF9D1E0, &qword_23A6E4D98);
  v104 = v130[1];
  *&v139 = *v130;
  *(&v139 + 1) = v104;
  v137 = v101;
  v138 = v102;
  swift_getOpaqueTypeConformance2();
  v105 = v122;
  v106 = v125;
  sub_23A6DF484();
  (*(v126 + 8))(v103, v106);
  v107 = v123;
  sub_23A6DF134();
  sub_23A646DB0(v105, &qword_27DF9D1A8, &unk_23A6E4D60);
  v108 = v134;
  v109 = v132;
  sub_23A646D48(v134, v132, &qword_27DF9D1C0, &unk_23A6E4D80);
  sub_23A646D48(v107, v105, &qword_27DF9D1A8, &unk_23A6E4D60);
  v110 = v127;
  sub_23A646D48(v109, v127, &qword_27DF9D1C0, &unk_23A6E4D80);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D1F0, &qword_23A6E4DA0);
  sub_23A646D48(v105, v110 + *(v111 + 48), &qword_27DF9D1A8, &unk_23A6E4D60);
  sub_23A646DB0(v107, &qword_27DF9D1A8, &unk_23A6E4D60);
  sub_23A646DB0(v108, &qword_27DF9D1C0, &unk_23A6E4D80);
  sub_23A646DB0(v105, &qword_27DF9D1A8, &unk_23A6E4D60);
  return sub_23A646DB0(v109, &qword_27DF9D1C0, &unk_23A6E4D80);
}

unint64_t sub_23A6BAFF4()
{
  result = qword_27DF9D180;
  if (!qword_27DF9D180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF9D168, &qword_23A6E4CC8);
    sub_23A6BB0AC();
    sub_23A6A64B0(&qword_27DF9D198, &qword_27DF9D178, qword_23A6E4CD8, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9D180);
  }

  return result;
}

unint64_t sub_23A6BB0AC()
{
  result = qword_27DF9D188;
  if (!qword_27DF9D188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF9D160, &qword_23A6E4CC0);
    sub_23A6A64B0(&qword_27DF9D190, &qword_27DF9D158, &qword_23A6E4CB8, MEMORY[0x277CE11A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9D188);
  }

  return result;
}

uint64_t sub_23A6BB164(uint64_t a1)
{
  v2 = sub_23A6DF114();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23A6B9A04(v5);
  sub_23A6DF104();
  v6 = (*(v3 + 8))(v5, v2);
  return (*(a1 + 16))(v6);
}

void sub_23A6BB248(uint64_t a1@<X8>)
{
  v2 = sub_23A6DF4F4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23A6DF4E4();
  (*(v3 + 104))(v5, *MEMORY[0x277CE0FE0], v2);
  v20 = sub_23A6DF504();

  (*(v3 + 8))(v5, v2);
  sub_23A6DF554();
  sub_23A6DF0F4();
  v6 = v23;
  v7 = v24;
  v8 = v25;
  v9 = v26;
  v11 = v27;
  v10 = v28;
  v12 = [objc_opt_self() systemDarkGrayColor];
  v13 = sub_23A6DF4D4();
  KeyPath = swift_getKeyPath();
  v22 = v7;
  v21 = v9;
  v15 = sub_23A6DF384();
  sub_23A6DF0D4();
  *a1 = v20;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7;
  *(a1 + 24) = v8;
  *(a1 + 32) = v9;
  *(a1 + 40) = v11;
  *(a1 + 48) = v10;
  *(a1 + 56) = KeyPath;
  *(a1 + 64) = v13;
  *(a1 + 72) = v15;
  *(a1 + 80) = v16;
  *(a1 + 88) = v17;
  *(a1 + 96) = v18;
  *(a1 + 104) = v19;
  *(a1 + 112) = 0;
}

uint64_t sub_23A6BB44C@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CFE8, &qword_23A6E47C0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_23A6BB4AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = a1;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  v7 = a6 + *(type metadata accessor for DiscoveryRotatedView(0) + 24);

  return sub_23A6B782C(a5, v7);
}

void sub_23A6BB544(uint64_t a1)
{
  sub_23A6B7BF0();
  if (v1 <= 0x3F)
  {
    sub_23A6B7C40(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_23A6BB5D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DiscoveryRotatedView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23A6BB63C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DiscoveryRotatedView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23A6BB6A0()
{
  v1 = *(type metadata accessor for DiscoveryRotatedView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_23A6BB164(v2);
}

unint64_t sub_23A6BB700()
{
  result = qword_27DF9D1C8;
  if (!qword_27DF9D1C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF9D1B0, &qword_23A6E4D70);
    sub_23A6A64B0(&qword_27DF9D1D0, &qword_27DF9D048, &qword_23A6E4930, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9D1C8);
  }

  return result;
}

uint64_t sub_23A6BB7B8@<X0>(void *a1@<X8>)
{
  v9 = sub_23A6DE714();
  v10 = v2;

  MEMORY[0x23EE89BB0](95, 0xE100000000000000);

  v3 = sub_23A6DE724();
  v5 = v4;

  MEMORY[0x23EE89BB0](v3, v5);

  v6 = sub_23A6DE704();

  return sub_23A64FD74(v6, v7, v9, v10, a1);
}

unint64_t sub_23A6BB890@<X0>(unint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v2 = 0x5050403020100uLL >> (8 * result);
  if (result >= 7)
  {
    LOBYTE(v2) = 5;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_23A6BB8BC()
{
  swift_beginAccess();
  v1 = *(v0 + 24);

  return v1;
}

uint64_t sub_23A6BB908(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
}

void *LayoutBundleManager.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = [objc_opt_self() defaultManager];
  v0[3] = 0;
  v0[4] = 0;
  v0[2] = v1;
  return v0;
}

void *LayoutBundleManager.init()()
{
  v1 = [objc_opt_self() defaultManager];
  v0[3] = 0;
  v0[4] = 0;
  v0[2] = v1;
  return v0;
}

uint64_t sub_23A6BBA48(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CB68, &unk_23A6E4700);
  v3[6] = swift_task_alloc();
  v4 = sub_23A6DE1D4();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A6BBBFC, 0, 0);
}

uint64_t sub_23A6BBBFC(uint64_t a1)
{
  v2 = v1[17];
  v3 = sub_23A6DCE38();
  sub_23A69A270(v3, v2);
  v4 = sub_23A6DECC4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 48);
  v7 = v6(v2, 1, v4);
  v8 = v1[17];
  if (v7 == 1)
  {
    sub_23A646DB0(v1[17], &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v9 = v1[5];
    v10 = sub_23A6507C0();
    v11 = sub_23A6DCFB0();
    sub_23A6DCFBC(v10 & 1, v9, 0x286C6C6174736E69, 0xEE00293A6D6F7266, v11, v12);

    (*(v5 + 8))(v8, v4);
  }

  v13 = v1[7];
  v14 = v1[8];
  v15 = v1[6];
  sub_23A6DE1C4();
  if ((*(v14 + 48))(v15, 1, v13) == 1)
  {
    v16 = v1[16];
    sub_23A646DB0(v1[6], &qword_27DF9CB68, &unk_23A6E4700);
    sub_23A69A270(v3, v16);
    if (v6(v16, 1, v4) == 1)
    {
      sub_23A646DB0(v1[16], &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v33 = sub_23A6DECA4();
      v34 = sub_23A6DF884();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_23A63D000, v33, v34, "install - unable to install layout bundle", v35, 2u);
        MEMORY[0x23EE8A960](v35, -1, -1);
      }

      v36 = v1[16];

      (*(v5 + 8))(v36, v4);
    }

    sub_23A691B48();
    swift_allocError();
    *v37 = 1;
    swift_willThrow();

    v38 = v1[1];

    return v38();
  }

  else
  {
    v18 = v1[12];
    v17 = v1[13];
    v19 = v1[11];
    v20 = v1[8];
    v21 = v1[7];
    v22 = v1[5];
    (*(v20 + 32))(v1[15], v1[6], v21);
    v39 = *(v22 + 16);
    v1[18] = v39;
    v23 = [v39 temporaryDirectory];
    sub_23A6DE1A4();

    sub_23A6DEC24();
    sub_23A6DE194();

    v24 = *(v20 + 8);
    v1[19] = v24;
    v1[20] = (v20 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v24(v19, v21);
    sub_23A6DEC34();
    sub_23A6DE194();

    v24(v18, v21);
    sub_23A6DE164();
    sub_23A6DE194();

    v24(v17, v21);
    v25 = [v39 temporaryDirectory];
    sub_23A6DE1A4();

    sub_23A6DEC24();
    sub_23A6DE194();

    v24(v19, v21);
    sub_23A6DEC34();
    sub_23A6DE194();

    v24(v18, v21);
    sub_23A6DE184();
    sub_23A6DE164();
    v24(v18, v21);
    sub_23A6DE194();

    v24(v17, v21);
    v26 = sub_23A6DE1B4();
    sub_23A6BCA70(v26, v27);

    v28 = [v39 temporaryDirectory];
    sub_23A6DE1A4();

    sub_23A6DEC24();
    sub_23A6DE194();

    v24(v18, v21);
    sub_23A6DEC34();
    sub_23A6DE194();

    v24(v17, v21);
    v29 = swift_task_alloc();
    v1[21] = v29;
    *v29 = v1;
    v29[1] = sub_23A6BC2A4;
    v30 = v1[15];
    v31 = v1[9];

    return sub_23A6BCF14(v30, v31);
  }
}

uint64_t sub_23A6BC2A4()
{
  v2 = *(*v1 + 152);
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 56);
  *(*v1 + 176) = v0;

  v2(v3, v4);
  if (v0)
  {
    v5 = sub_23A6BC76C;
  }

  else
  {
    v5 = sub_23A6BC450;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_23A6BC450(__n128 a1)
{
  v2 = v1[22];
  sub_23A6BF1B4(v1[14], v1[10], a1);
  if (v2)
  {
    v3 = v1[19];
    v4 = v1[14];
    v5 = v1[15];
    v6 = v1[7];
    v3(v1[10], v6);
    v3(v4, v6);
    v3(v5, v6);

    v7 = v1[1];

    return v7();
  }

  else
  {
    v9 = v1[18];
    sub_23A6DE1B4();
    v10 = sub_23A6DF614();

    v1[2] = 0;
    LODWORD(v9) = [v9 removeItemAtPath:v10 error:v1 + 2];

    v11 = v1[2];
    if (v9)
    {
      v12 = v11;
    }

    else
    {
      v13 = v11;
      v14 = sub_23A6DE124();

      swift_willThrow();
    }

    v15 = v1[19];
    v17 = v1[14];
    v16 = v1[15];
    v18 = v1[10];
    v19 = v1[7];
    v20 = v1[5];
    v21 = sub_23A6DE1B4();
    (*(*v20 + 104))(v21);
    v22 = sub_23A6DE1B4();
    v24 = v23;
    v15(v18, v19);
    v15(v17, v19);
    v15(v16, v19);

    v25 = v1[1];

    return v25(v22, v24);
  }
}

uint64_t sub_23A6BC76C()
{
  v1 = v0[19];
  v2 = v0[14];
  v3 = v0[15];
  v4 = v0[7];
  v1(v0[10], v4);
  v1(v2, v4);
  v1(v3, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_23A6BC8B0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15 - v3;
  v5 = sub_23A6DCE38();
  sub_23A69A270(v5, v4);
  v6 = sub_23A6DECC4();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    v8 = sub_23A646DB0(v4, &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v9 = sub_23A6507C0();
    v10 = sub_23A6DCFB0();
    sub_23A6DCFBC(v9 & 1, v1, 0x292865766F6D6572, 0xE800000000000000, v10, v11);

    v8 = (*(v7 + 8))(v4, v6);
  }

  v12 = (*(*v1 + 96))(v8);
  sub_23A6BCA70(v12, v13);

  return (*(*v1 + 104))(0, 0);
}

void sub_23A6BCA70(void *a1, void *a2)
{
  v41[2] = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v39 - v6;
  if (!a2)
  {
    return;
  }

  v8 = *(v2 + 16);
  v9 = sub_23A6DF614();
  v10 = [v8 fileExistsAtPath_];

  if (!v10)
  {
    return;
  }

  v11 = sub_23A6DF614();
  v41[0] = 0;
  v12 = [v8 contentsOfDirectoryAtPath:v11 error:v41];

  v13 = v41[0];
  if (v12)
  {
    v39 = v7;
    v40 = v8;
    v14 = sub_23A6DF734();
    v15 = v13;

    v16 = *(v14 + 16);
    if (v16)
    {
      v17 = 0;
      v18 = (v14 + 40);
      while (1)
      {
        if (v17 >= *(v14 + 16))
        {
          __break(1u);
        }

        v20 = *(v18 - 1);
        v19 = *v18;
        v41[0] = a1;
        v41[1] = a2;

        MEMORY[0x23EE89BB0](47, 0xE100000000000000);

        MEMORY[0x23EE89BB0](v20, v19);

        v21 = sub_23A6DF614();

        v41[0] = 0;
        LODWORD(v20) = [v40 removeItemAtPath:v21 error:v41];

        if (!v20)
        {
          break;
        }

        ++v17;
        v22 = v41[0];
        v18 += 2;
        if (v16 == v17)
        {
          goto LABEL_9;
        }
      }

      v29 = v41[0];

      v28 = sub_23A6DE124();

      swift_willThrow();
      v7 = v39;
      goto LABEL_17;
    }

LABEL_9:

    v23 = sub_23A6DF614();
    v41[0] = 0;
    v24 = [v40 removeItemAtPath:v23 error:v41];

    v25 = v41[0];
    v7 = v39;
    if (v24)
    {

      v26 = v25;
      return;
    }

    v40 = v41[0];
    v27 = v41[0];
  }

  else
  {
    v27 = v41[0];
  }

  v28 = sub_23A6DE124();

  swift_willThrow();
LABEL_17:
  v30 = sub_23A6DCE38();
  sub_23A69A270(v30, v7);
  v31 = sub_23A6DECC4();
  v32 = *(v31 - 8);
  if ((*(v32 + 48))(v7, 1, v31) == 1)
  {

    sub_23A646DB0(v7, &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {

    v33 = sub_23A6DECA4();
    v34 = sub_23A6DF884();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v37 = a1;
      v38 = v36;
      v41[0] = v36;
      *v35 = 136315138;
      *(v35 + 4) = sub_23A657E78(v37, a2, v41);
      _os_log_impl(&dword_23A63D000, v33, v34, "removeBundle - unable to remove the bundle folder %s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v38);
      MEMORY[0x23EE8A960](v38, -1, -1);
      MEMORY[0x23EE8A960](v35, -1, -1);
    }

    (*(v32 + 8))(v7, v31);
  }
}

uint64_t sub_23A6BCF14(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = sub_23A6DE044();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v5 = sub_23A6DE1D4();
  v3[19] = v5;
  v3[20] = *(v5 - 8);
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A6BD0F8, 0, 0);
}

uint64_t sub_23A6BD0F8(uint64_t a1)
{
  v75 = v1;
  v74[1] = *MEMORY[0x277D85DE8];
  v2 = v1[18];
  sub_23A6DE164();
  sub_23A6DE194();

  v3 = sub_23A6DCE38();
  v1[25] = v3;
  sub_23A69A270(v3, v2);
  v4 = sub_23A6DECC4();
  v1[26] = v4;
  v5 = *(v4 - 8);
  v1[27] = v5;
  v6 = *(v5 + 48);
  v1[28] = v6;
  v1[29] = (v5 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v73 = v6;
  if (v6(v2, 1, v4) == 1)
  {
    sub_23A646DB0(v1[18], &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    (*(v1[20] + 16))(v1[23], v1[7], v1[19]);
    v7 = sub_23A6DECA4();
    v8 = sub_23A6DF8A4();
    v9 = os_log_type_enabled(v7, v8);
    v10 = v1[23];
    v12 = v1[19];
    v11 = v1[20];
    if (v9)
    {
      v71 = v4;
      v13 = swift_slowAlloc();
      v69 = v5;
      v14 = swift_slowAlloc();
      v74[0] = v14;
      *v13 = 136315138;
      v67 = v3;
      v15 = sub_23A6DE154();
      v17 = v16;
      (*(v11 + 8))(v10, v12);
      v18 = v15;
      v3 = v67;
      v19 = sub_23A657E78(v18, v17, v74);

      *(v13 + 4) = v19;
      _os_log_impl(&dword_23A63D000, v7, v8, "downloadFile - remoteFileURL:      %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      v20 = v14;
      v5 = v69;
      MEMORY[0x23EE8A960](v20, -1, -1);
      v21 = v13;
      v4 = v71;
      MEMORY[0x23EE8A960](v21, -1, -1);
    }

    else
    {

      (*(v11 + 8))(v10, v12);
    }

    (*(v5 + 8))(v1[18], v4);
    v6 = v73;
  }

  v22 = v1[17];
  sub_23A69A270(v3, v22);
  if (v6(v22, 1, v4) == 1)
  {
    sub_23A646DB0(v1[17], &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    (*(v1[20] + 16))(v1[22], v1[24], v1[19]);
    v23 = sub_23A6DECA4();
    v24 = sub_23A6DF8A4();
    v25 = os_log_type_enabled(v23, v24);
    v26 = v1[22];
    v28 = v1[19];
    v27 = v1[20];
    if (v25)
    {
      v72 = v4;
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v74[0] = v30;
      *v29 = 136315138;
      v68 = v3;
      v70 = v5;
      v31 = sub_23A6DE154();
      v33 = v32;
      (*(v27 + 8))(v26, v28);
      v34 = v31;
      v5 = v70;
      v35 = sub_23A657E78(v34, v33, v74);
      v3 = v68;

      *(v29 + 4) = v35;
      _os_log_impl(&dword_23A63D000, v23, v24, "               destinationFileURL: %s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v30);
      MEMORY[0x23EE8A960](v30, -1, -1);
      v36 = v29;
      v4 = v72;
      MEMORY[0x23EE8A960](v36, -1, -1);
    }

    else
    {

      (*(v27 + 8))(v26, v28);
    }

    (*(v5 + 8))(v1[17], v4);
    v6 = v73;
  }

  v37 = *(v1[9] + 16);
  sub_23A6DE1B4();
  v38 = sub_23A6DF614();

  v39 = [v37 fileExistsAtPath_];

  if ((v39 & 1) == 0)
  {
    sub_23A6DE1B4();
    v54 = sub_23A6DF614();

    v1[5] = 0;
    v55 = [v37 createDirectoryAtPath:v54 withIntermediateDirectories:1 attributes:0 error:v1 + 5];

    v44 = v1[5];
    if ((v55 & 1) == 0)
    {
      v60 = v1[15];
      v61 = v44;
      v47 = sub_23A6DE124();

      swift_willThrow();
      sub_23A69A270(v3, v60);
      v62 = v6(v60, 1, v4);
      v49 = v1[15];
      if (v62 != 1)
      {
        v50 = sub_23A6DECA4();
        v63 = sub_23A6DF884();
        if (os_log_type_enabled(v50, v63))
        {
          v64 = swift_slowAlloc();
          *v64 = 0;
          _os_log_impl(&dword_23A63D000, v50, v63, "downloadFile - unable to create folder", v64, 2u);
          MEMORY[0x23EE8A960](v64, -1, -1);
        }

        v53 = v1[15];
        goto LABEL_30;
      }

LABEL_26:
      sub_23A646DB0(v49, &qword_27DF9D240, qword_23A6E1D30);
LABEL_31:
      sub_23A691B48();
      swift_allocError();
      *v65 = 6;
      swift_willThrow();

      (*(v1[20] + 8))(v1[24], v1[19]);

      v66 = v1[1];

      return v66();
    }

    goto LABEL_21;
  }

  sub_23A6DE1B4();
  v40 = sub_23A6DF614();

  v41 = [v37 fileExistsAtPath_];

  if (v41)
  {
    sub_23A6DE1B4();
    v42 = sub_23A6DF614();

    v1[6] = 0;
    v43 = [v37 removeItemAtPath:v42 error:v1 + 6];

    v44 = v1[6];
    if (!v43)
    {
      v45 = v1[14];
      v46 = v44;
      v47 = sub_23A6DE124();

      swift_willThrow();
      sub_23A69A270(v3, v45);
      v48 = v6(v45, 1, v4);
      v49 = v1[14];
      if (v48 != 1)
      {
        v50 = sub_23A6DECA4();
        v51 = sub_23A6DF884();
        if (os_log_type_enabled(v50, v51))
        {
          v52 = swift_slowAlloc();
          *v52 = 0;
          _os_log_impl(&dword_23A63D000, v50, v51, "downloadFile - unable to delete former file", v52, 2u);
          MEMORY[0x23EE8A960](v52, -1, -1);
        }

        v53 = v1[14];
LABEL_30:

        (*(v5 + 8))(v53, v4);
        goto LABEL_31;
      }

      goto LABEL_26;
    }

LABEL_21:
    v56 = v44;
  }

  (*(v1[20] + 16))(v1[21], v1[7], v1[19]);
  sub_23A6DE024();
  v57 = swift_task_alloc();
  v1[30] = v57;
  *v57 = v1;
  v57[1] = sub_23A6BD9FC;
  v58 = v1[12];

  return sub_23A6BE054((v1 + 2), v58);
}

uint64_t sub_23A6BD9FC()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x2822009F8](sub_23A6BDB80, 0, 0);
}

uint64_t sub_23A6BDB80()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v0 + 32);
  if (v3)
  {
    v4 = *(v0 + 224);
    v5 = *(v0 + 208);
    v6 = *(v0 + 128);
    sub_23A69A270(*(v0 + 200), v6);
    if (v4(v6, 1, v5) == 1)
    {
      sub_23A646DB0(*(v0 + 128), &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v7 = sub_23A6DECA4();
      v8 = sub_23A6DF884();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&dword_23A63D000, v7, v8, "downloadFile - unable to download file", v9, 2u);
        MEMORY[0x23EE8A960](v9, -1, -1);
      }

      v10 = *(v0 + 208);
      v11 = *(v0 + 216);
      v12 = *(v0 + 128);

      (*(v11 + 8))(v12, v10);
    }

    sub_23A691B48();
    swift_allocError();
    *v13 = v2;
    swift_willThrow();
    sub_23A6BFAF8(v2, v1, v3);
    (*(*(v0 + 160) + 8))(*(v0 + 192), *(v0 + 152));

    v17 = *(v0 + 8);
  }

  else
  {
    sub_23A6DE254();
    v14 = *(v0 + 192);
    v15 = *(v0 + 152);
    v16 = *(v0 + 160);
    sub_23A6BFAF8(v2, v1, 0);
    (*(v16 + 8))(v14, v15);

    v17 = *(v0 + 8);
  }

  return v17();
}

void sub_23A6BDFE0()
{
  v0 = [objc_opt_self() ephemeralSessionConfiguration];
  v1 = [objc_opt_self() sessionWithConfiguration_];

  qword_27DFA5EB0 = v1;
}

uint64_t sub_23A6BE054(uint64_t a1, uint64_t a2)
{
  v2[8] = a1;
  v2[9] = a2;
  v3 = sub_23A6DE354();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D208, &unk_23A6E4EC0);
  v2[14] = swift_task_alloc();
  v4 = sub_23A6DE374();
  v2[15] = v4;
  v2[16] = *(v4 - 8);
  v2[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CB68, &unk_23A6E4700);
  v2[18] = swift_task_alloc();
  v5 = sub_23A6DE044();
  v2[19] = v5;
  v2[20] = *(v5 - 8);
  v2[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A6BE2BC, 0, 0);
}

uint64_t sub_23A6BE2BC(uint64_t a1)
{
  v28 = v1;
  v2 = v1[27];
  v3 = sub_23A6DCE38();
  v1[28] = v3;
  sub_23A69A270(v3, v2);
  v4 = sub_23A6DECC4();
  v1[29] = v4;
  v5 = *(v4 - 8);
  v1[30] = v5;
  v6 = *(v5 + 48);
  v1[31] = v6;
  v1[32] = (v5 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v6(v2, 1, v4) == 1)
  {
    sub_23A646DB0(v1[27], &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    (*(v1[20] + 16))(v1[21], v1[9], v1[19]);
    v7 = sub_23A6DECA4();
    v8 = sub_23A6DF8A4();
    v9 = os_log_type_enabled(v7, v8);
    v10 = v1[21];
    if (v9)
    {
      v11 = v1[18];
      v12 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v27 = v26;
      *v12 = 136315138;
      sub_23A6DE034();
      v13 = sub_23A6DE1D4();
      v14 = *(v13 - 8);
      if ((*(v14 + 48))(v11, 1, v13) == 1)
      {
        sub_23A646DB0(v1[18], &qword_27DF9CB68, &unk_23A6E4700);
        v15 = 0xE800000000000000;
        v16 = 0x3E6C7275206F6E3CLL;
      }

      else
      {
        v25 = v1[18];
        v16 = sub_23A6DE154();
        v15 = v19;
        (*(v14 + 8))(v25, v13);
      }

      (*(v1[20] + 8))(v1[21], v1[19]);
      v20 = sub_23A657E78(v16, v15, &v27);

      *(v12 + 4) = v20;
      _os_log_impl(&dword_23A63D000, v7, v8, "Request: %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      MEMORY[0x23EE8A960](v26, -1, -1);
      MEMORY[0x23EE8A960](v12, -1, -1);
    }

    else
    {
      v17 = v1[19];
      v18 = v1[20];

      (*(v18 + 8))(v10, v17);
    }

    (*(v5 + 8))(v1[27], v4);
  }

  if (qword_27DFA2768 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v21 = qword_27DFA5EB0;
  v1[33] = qword_27DFA5EB0;
  v21;
  v22 = swift_task_alloc();
  v1[34] = v22;
  *v22 = v1;
  v22[1] = sub_23A6BE67C;
  v23 = v1[9];

  return MEMORY[0x28211ECF8](v23, 0);
}

uint64_t sub_23A6BE67C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  *(v5 + 280) = a1;
  *(v5 + 288) = a2;
  *(v5 + 296) = a3;
  *(v5 + 304) = v3;

  if (v3)
  {
    v6 = sub_23A6BEB5C;
  }

  else
  {

    v6 = sub_23A6BE79C;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_23A6BE79C()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v2 = v1;
    if ([v1 statusCode] - 300 >= 0xFFFFFFFFFFFFFF9CLL)
    {

      v15 = 0;
      v16 = *(v0 + 280);
      goto LABEL_15;
    }

    v3 = *(v0 + 248);
    v4 = *(v0 + 232);
    v5 = *(v0 + 200);
    sub_23A69A270(*(v0 + 224), v5);
    v6 = v3(v5, 1, v4);
    v7 = *(v0 + 296);
    if (v6 == 1)
    {
      v8 = *(v0 + 200);
      sub_23A691B9C(*(v0 + 280), *(v0 + 288));

      sub_23A646DB0(v8, &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v25 = v7;
      v26 = sub_23A6DECA4();
      v27 = sub_23A6DF884();
      v28 = os_log_type_enabled(v26, v27);
      v30 = *(v0 + 288);
      v29 = *(v0 + 296);
      v31 = *(v0 + 280);
      v32 = *(v0 + 232);
      v33 = *(v0 + 240);
      v39 = *(v0 + 200);
      if (v28)
      {
        v38 = *(v0 + 232);
        v34 = swift_slowAlloc();
        *v34 = 134217984;
        *(v34 + 4) = [v2 statusCode];

        _os_log_impl(&dword_23A63D000, v26, v27, "Execute download file - serverError - Invalid status from server: %ld", v34, 0xCu);
        MEMORY[0x23EE8A960](v34, -1, -1);
        sub_23A691B9C(v31, v30);

        (*(v33 + 8))(v39, v38);
      }

      else
      {

        sub_23A691B9C(v31, v30);
        (*(v33 + 8))(v39, v32);
      }
    }
  }

  else
  {
    v9 = *(v0 + 248);
    v10 = *(v0 + 232);
    v11 = *(v0 + 208);
    sub_23A69A270(*(v0 + 224), v11);
    if (v9(v11, 1, v10) == 1)
    {
      v12 = *(v0 + 288);
      v13 = *(v0 + 280);
      v14 = *(v0 + 208);

      sub_23A691B9C(v13, v12);
      sub_23A646DB0(v14, &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v17 = sub_23A6DECA4();
      v18 = sub_23A6DF884();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_23A63D000, v17, v18, "Execute download file - internalError - Channel failure, nil api service", v19, 2u);
        MEMORY[0x23EE8A960](v19, -1, -1);
      }

      v20 = *(v0 + 288);
      v21 = *(v0 + 280);
      v22 = *(v0 + 232);
      v23 = *(v0 + 240);
      v24 = *(v0 + 208);

      sub_23A691B9C(v21, v20);
      (*(v23 + 8))(v24, v22);
    }
  }

  v16 = xmmword_23A6E4E50;
  v15 = 1;
LABEL_15:
  v35 = *(v0 + 64);
  *v35 = v16;
  *(v35 + 16) = v15;

  v36 = *(v0 + 8);

  return v36();
}

uint64_t sub_23A6BEB5C()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 128);

  *(v0 + 40) = v1;
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8B8, &qword_23A6E1C30);
  v4 = swift_dynamicCast();
  v5 = *(v2 + 56);
  if (v4)
  {
    v7 = *(v0 + 128);
    v6 = *(v0 + 136);
    v9 = *(v0 + 112);
    v8 = *(v0 + 120);
    v11 = *(v0 + 96);
    v10 = *(v0 + 104);
    v12 = *(v0 + 80);
    v13 = *(v0 + 88);
    v5(v9, 0, 1, v8);
    (*(v7 + 32))(v6, v9, v8);
    sub_23A6BFB04(&qword_27DF9D210, MEMORY[0x277CC9AE8], MEMORY[0x277CC9AE0]);
    sub_23A6DE104();
    sub_23A6DE364();
    sub_23A6BFB04(&qword_27DF9D218, MEMORY[0x277CC9AC8], MEMORY[0x277CC9AD8]);
    sub_23A6DF714();
    sub_23A6DF714();
    v14 = *(v13 + 8);
    v14(v11, v12);
    v14(v10, v12);
    if (*(v0 + 48) == *(v0 + 56))
    {
      v15 = *(v0 + 248);
      v16 = *(v0 + 232);
      v17 = *(v0 + 192);
      sub_23A69A270(*(v0 + 224), v17);
      if (v15(v17, 1, v16) == 1)
      {
        v18 = *(v0 + 304);
        v19 = *(v0 + 192);
        (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));

        sub_23A646DB0(v19, &qword_27DF9D240, qword_23A6E1D30);
        v20 = 5;
      }

      else
      {
        v49 = sub_23A6DECA4();
        v50 = sub_23A6DF884();
        v51 = os_log_type_enabled(v49, v50);
        v52 = *(v0 + 304);
        if (v51)
        {
          v53 = swift_slowAlloc();
          *v53 = 0;
          _os_log_impl(&dword_23A63D000, v49, v50, "Execute download file - request cancelled", v53, 2u);
          MEMORY[0x23EE8A960](v53, -1, -1);
        }

        else
        {
        }

        v54 = *(v0 + 232);
        v55 = *(v0 + 240);
        v56 = *(v0 + 192);
        (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));
        (*(v55 + 8))(v56, v54);
        v20 = 5;
      }

      goto LABEL_19;
    }

    (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));
  }

  else
  {
    v21 = *(v0 + 112);
    v5(v21, 1, 1, *(v0 + 120));
    sub_23A646DB0(v21, &qword_27DF9D208, &unk_23A6E4EC0);
  }

  v22 = *(v0 + 248);
  v23 = *(v0 + 232);
  v24 = *(v0 + 184);
  sub_23A69A270(*(v0 + 224), v24);
  if (v22(v24, 1, v23) == 1)
  {
    sub_23A646DB0(*(v0 + 184), &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v25 = sub_23A6DECA4();
    v26 = sub_23A6DF884();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_23A63D000, v25, v26, "Execute download file - networkError - Server not reachable", v27, 2u);
      MEMORY[0x23EE8A960](v27, -1, -1);
    }

    v28 = *(v0 + 232);
    v29 = *(v0 + 240);
    v30 = *(v0 + 184);

    (*(v29 + 8))(v30, v28);
  }

  v31 = *(v0 + 248);
  v32 = *(v0 + 232);
  v33 = *(v0 + 176);
  sub_23A69A270(*(v0 + 224), v33);
  v34 = v31(v33, 1, v32);
  v35 = *(v0 + 304);
  v36 = *(v0 + 176);
  if (v34 == 1)
  {

    sub_23A646DB0(v36, &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v37 = v35;
    v38 = sub_23A6DECA4();
    v39 = sub_23A6DF884();

    v40 = os_log_type_enabled(v38, v39);
    v41 = *(v0 + 304);
    if (v40)
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *v42 = 138412290;
      v44 = v41;
      v45 = _swift_stdlib_bridgeErrorToNSError();
      *(v42 + 4) = v45;
      *v43 = v45;
      _os_log_impl(&dword_23A63D000, v38, v39, "Error processing request: %@", v42, 0xCu);
      sub_23A646DB0(v43, &qword_27DF9C8B0, &qword_23A6E4ED0);
      MEMORY[0x23EE8A960](v43, -1, -1);
      MEMORY[0x23EE8A960](v42, -1, -1);
    }

    else
    {
    }

    (*(*(v0 + 240) + 8))(*(v0 + 176), *(v0 + 232));
  }

  v20 = 3;
LABEL_19:
  v46 = *(v0 + 64);
  *v46 = v20;
  *(v46 + 8) = 0;
  *(v46 + 16) = 1;

  v47 = *(v0 + 8);

  return v47();
}

void sub_23A6BF1B4(uint64_t a1, uint64_t a2, __n128 a3)
{
  v74 = a1;
  v75[1] = *MEMORY[0x277D85DE8];
  v4 = sub_23A6DE1D4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v70 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v62 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  MEMORY[0x28223BE20](v10 - 8);
  v71 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v62 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v62 - v16;
  v18 = sub_23A6DCE38();
  sub_23A69A270(v18, v17);
  v19 = sub_23A6DECC4();
  v72 = *(v19 - 8);
  v73 = v19;
  v20 = *(v72 + 48);
  v21 = v20(v17, 1);
  v67 = v20;
  v68 = v18;
  v69 = v4;
  if (v21 == 1)
  {
    sub_23A646DB0(v17, &qword_27DF9D240, qword_23A6E1D30);
    v22 = v73;
  }

  else
  {
    v65 = a2;
    (*(v5 + 16))(v9, v74, v4);
    v64 = v5;
    v23 = sub_23A6DECA4();
    v24 = sub_23A6DF8A4();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v75[0] = v63;
      *v25 = 136315138;
      v26 = sub_23A6DE1B4();
      v28 = v27;
      v29 = v9;
      v30 = v69;
      (*(v64 + 8))(v29, v69);
      v31 = sub_23A657E78(v26, v28, v75);
      v20 = v67;

      *(v25 + 4) = v31;
      _os_log_impl(&dword_23A63D000, v23, v24, "unzipping file %s", v25, 0xCu);
      v32 = v63;
      __swift_destroy_boxed_opaque_existential_1Tm(v63);
      MEMORY[0x23EE8A960](v32, -1, -1);
      v33 = v25;
      v18 = v68;
      MEMORY[0x23EE8A960](v33, -1, -1);

      v4 = v30;
      v5 = v64;
    }

    else
    {

      v5 = v64;
      v4 = v69;
      (*(v64 + 8))(v9, v69);
    }

    v22 = v73;
    (*(v72 + 8))(v17, v73);
    a2 = v65;
  }

  sub_23A69A270(v18, v14);
  v34 = (v20)(v14, 1, v22);
  v35 = v70;
  if (v34 == 1)
  {
    sub_23A646DB0(v14, &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    (*(v5 + 16))(v70, a2, v4);
    v36 = v5;
    v37 = v35;
    v38 = sub_23A6DECA4();
    v39 = sub_23A6DF8A4();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v65 = a2;
      v41 = v40;
      v42 = swift_slowAlloc();
      v75[0] = v42;
      *v41 = 136315138;
      v64 = sub_23A6DE1B4();
      v44 = v43;
      (*(v36 + 8))(v37, v69);
      v45 = sub_23A657E78(v64, v44, v75);
      v22 = v73;

      *(v41 + 4) = v45;
      _os_log_impl(&dword_23A63D000, v38, v39, "     to folder %s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v42);
      MEMORY[0x23EE8A960](v42, -1, -1);
      MEMORY[0x23EE8A960](v41, -1, -1);
    }

    else
    {

      (*(v36 + 8))(v37, v69);
    }

    (*(v72 + 8))(v14, v22);
  }

  v46 = v71;
  v47 = sub_23A6DE174();
  v48 = sub_23A6DE174();
  v49 = PKUnarchiverZip(v47, v48);

  if ((v49 & 1) == 0)
  {
    sub_23A69A270(v68, v46);
    if ((v67)(v46, 1, v22) == 1)
    {
      sub_23A646DB0(v46, &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v50 = sub_23A6DECA4();
      v51 = sub_23A6DF874();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        *v52 = 0;
        _os_log_impl(&dword_23A63D000, v50, v51, "unzip failure", v52, 2u);
        MEMORY[0x23EE8A960](v52, -1, -1);
      }

      (*(v72 + 8))(v46, v22);
    }

    v53 = sub_23A6DE1B4();
    v54 = v66;
    sub_23A6BCA70(v53, v55);

    v56 = *(v54 + 16);
    sub_23A6DE1B4();
    v57 = sub_23A6DF614();

    v75[0] = 0;
    LODWORD(v54) = [v56 removeItemAtPath:v57 error:v75];

    if (v54)
    {
      v58 = v75[0];
    }

    else
    {
      v59 = v75[0];
      v60 = sub_23A6DE124();

      swift_willThrow();
    }

    sub_23A691B48();
    swift_allocError();
    *v61 = 6;
    swift_willThrow();
  }
}

uint64_t LayoutBundleManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t dispatch thunk of LayoutBundleManager.install(from:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 136) + **(*v2 + 136));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_23A64E070;

  return v8(a1, a2);
}

uint64_t sub_23A6BFAF8(uint64_t result, unint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    return sub_23A691B9C(result, a2);
  }

  return result;
}

uint64_t sub_23A6BFB04(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23A6BFB94(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ProximityReader40ProximityReaderDiscoveryAnalyticsManager_discoveryService;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

__n128 sub_23A6BFC4C@<Q0>(__n128 *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC15ProximityReader40ProximityReaderDiscoveryAnalyticsManager_sessionData);
  swift_beginAccess();
  v4 = v3[3];
  v11 = v3[2];
  v12 = v4;
  v13 = v3[4];
  v5 = v3[1];
  v9 = *v3;
  v10 = v5;
  sub_23A646D48(&v9, v8, &qword_27DF9D230, qword_23A6E4EE0);
  v6 = v12;
  a1[2] = v11;
  a1[3] = v6;
  a1[4] = v13;
  result = v10;
  *a1 = v9;
  a1[1] = result;
  return result;
}

__n128 sub_23A6BFCEC(_OWORD *a1)
{
  v3 = v1 + OBJC_IVAR____TtC15ProximityReader40ProximityReaderDiscoveryAnalyticsManager_sessionData;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  v9 = *(v3 + 40);
  v10 = *(v3 + 48);
  v11 = *(v3 + 56);
  v12 = a1[3];
  *(v3 + 32) = a1[2];
  *(v3 + 48) = v12;
  *(v3 + 64) = a1[4];
  v13 = a1[1];
  *v3 = *a1;
  *(v3 + 16) = v13;
  sub_23A6BFD68(v4, v5, v6, v7, v8, v9, v10, v11);
  return result;
}

void sub_23A6BFD68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
  }
}

uint64_t sub_23A6BFE2C()
{
  v1 = OBJC_IVAR____TtC15ProximityReader40ProximityReaderDiscoveryAnalyticsManager_lastQuantile;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_23A6BFE70(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ProximityReader40ProximityReaderDiscoveryAnalyticsManager_lastQuantile;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_23A6BFF20(void *a1, uint64_t *a2, int a3, double a4, double a5)
{
  v6 = v5;
  v66 = a3;
  v70 = sub_23A6DE904();
  v68 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v69 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_23A6DE924();
  v71 = *(v12 - 8);
  v72 = v12;
  MEMORY[0x28223BE20](v12);
  v67 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  MEMORY[0x28223BE20](v14 - 8);
  v60 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v53 - v17;
  v57 = sub_23A6DCE38();
  sub_23A646D48(v57, v18, &qword_27DF9D240, qword_23A6E1D30);
  v19 = sub_23A6DECC4();
  v20 = *(v19 - 8);
  v21 = *(v20 + 48);
  v56 = v20 + 48;
  v55 = v21;
  v22 = v21(v18, 1, v19);
  v58 = v19;
  v54 = v20;
  if (v22 == 1)
  {
    sub_23A646DB0(v18, &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v23 = sub_23A6507C0();
    v24 = sub_23A6DCFB0();
    sub_23A6DCFBC(v23 & 1, v6, 0xD00000000000004ALL, 0x800000023A6EB680, v24, v25);

    (*(v20 + 8))(v18, v19);
  }

  v26 = MEMORY[0x277D85000];
  v27 = *((*MEMORY[0x277D85000] & *v6) + 0x70);
  v28 = swift_unknownObjectRetain();
  v59 = a1;
  v27(v28);
  v30 = *a2;
  v29 = a2[1];
  v31 = *((*v26 & *v6) + 0xD8);

  v33 = v31(v32);
  v34 = a2[2];
  v35 = a2[3];
  v36 = a2[4];
  v37 = a2[5];
  LOBYTE(v31) = v66;
  v65 = v30;
  v74[0] = v30;
  v74[1] = v29;
  v64 = v33;
  v74[2] = v33;
  v74[3] = v38;
  v63 = v34;
  v74[4] = v34;
  v74[5] = v35;
  v62 = v36;
  v74[6] = v36;
  v74[7] = v37;
  v61 = v66 & 1;
  v75 = v66 & 1;
  v76 = a4;
  v39 = *((*v26 & *v6) + 0x88);
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();

  v39(v74);
  v40 = (*((*v26 & *v6) + 0xD0))(a5, a4);
  v41 = (*((*v26 & *v6) + 0xA0))(v40);
  if (v31)
  {
    v73 = (*((*v26 & *v6) + 0x98))(v41);
    sub_23A6DFBD4();
  }

  else
  {
    sub_23A6DEC14();
  }

  (*(v68 + 104))(v69, *MEMORY[0x277D43990], v70);
  v42 = v67;
  sub_23A6DE914();
  v43 = sub_23A6DE8F4();
  v45 = v44;
  (*(v71 + 8))(v42, v72);
  if (v45 >> 60 == 15)
  {
    v46 = v60;
    sub_23A646D48(v57, v60, &qword_27DF9D240, qword_23A6E1D30);
    v47 = v58;
    if (v55(v46, 1, v58) == 1)
    {
      return sub_23A646DB0(v46, &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v50 = sub_23A6DECA4();
      v51 = sub_23A6DF884();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        *v52 = 0;
        _os_log_impl(&dword_23A63D000, v50, v51, "Discovery analytics present event could not be encoded", v52, 2u);
        MEMORY[0x23EE8A960](v52, -1, -1);
      }

      return (*(v54 + 8))(v46, v47);
    }
  }

  else
  {
    v49 = sub_23A6DE214();
    [v59 sendAnalyticsWithAnalyticsData_];

    return sub_23A6A62F8(v43, v45);
  }
}

uint64_t sub_23A6C05F8(double a1)
{
  v2 = v1;
  v4 = sub_23A6DE904();
  v67 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23A6DE924();
  v8 = *(v7 - 8);
  v68 = v7;
  v69 = v8;
  MEMORY[0x28223BE20](v7);
  v10 = v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v55 - v15;
  v18 = MEMORY[0x28223BE20](v17);
  v20 = v55 - v19;
  v21 = MEMORY[0x277D85000];
  v22 = (*((*MEMORY[0x277D85000] & *v1) + 0x80))(v71, v18);
  if (!v71[1])
  {
    v31 = sub_23A6DCE38();
    sub_23A646D48(v31, v13, &qword_27DF9D240, qword_23A6E1D30);
    v32 = sub_23A6DECC4();
    v33 = *(v32 - 8);
    if ((*(v33 + 48))(v13, 1, v32) != 1)
    {
      v35 = sub_23A6DECA4();
      v36 = sub_23A6DF884();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&dword_23A63D000, v35, v36, "sendContentScrolled - session data was not found", v37, 2u);
        MEMORY[0x23EE8A960](v37, -1, -1);
      }

      return (*(v33 + 8))(v13, v32);
    }

    v28 = &qword_27DF9D240;
    v29 = qword_23A6E1D30;
    v30 = v13;
    return sub_23A646DB0(v30, v28, v29);
  }

  v66 = v16;
  v61 = v71[0];
  v64 = v71[3];
  v65 = v71[2];
  v62 = v71[5];
  v63 = v71[4];
  v60 = v71[6];
  v59 = v71[7];
  v23 = v72;
  v24 = (*((*v21 & *v1) + 0xD0))(v22, a1, v73);
  if ((*((*v21 & *v1) + 0x98))() == v24 || (v23 & 1) == 0)
  {
    v28 = &qword_27DF9D230;
    v29 = qword_23A6E4EE0;
    v30 = v71;
    return sub_23A646DB0(v30, v28, v29);
  }

  v56 = sub_23A6DCE38();
  sub_23A646D48(v56, v20, &qword_27DF9D240, qword_23A6E1D30);
  v25 = sub_23A6DECC4();
  v57 = *(v25 - 8);
  v26 = *(v57 + 48);
  v58 = v25;
  v55[1] = v57 + 48;
  v55[0] = v26;
  if (v26(v20, 1) == 1)
  {
    sub_23A646DB0(v20, &qword_27DF9D240, qword_23A6E1D30);
    v27 = v66;
  }

  else
  {
    v38 = sub_23A6DECA4();
    v39 = sub_23A6DF8A4();
    v40 = v38;
    v41 = os_log_type_enabled(v38, v39);
    v27 = v66;
    if (v41)
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      v43 = v39;
      v44 = v42;
      _os_log_impl(&dword_23A63D000, v40, v43, "sendContentScrolled - quantile triggered", v42, 2u);
      MEMORY[0x23EE8A960](v44, -1, -1);
    }

    (*(v57 + 8))(v20, v58);
  }

  (*((*MEMORY[0x277D85000] & *v2) + 0xA0))(v24);
  (*(v67 + 104))(v6, *MEMORY[0x277D43980], v4);
  v70 = v24;

  sub_23A6DFBD4();
  sub_23A6DE914();
  sub_23A646DB0(v71, &qword_27DF9D230, qword_23A6E4EE0);
  v45 = sub_23A6DE8F4();
  v47 = v46;
  v48 = (*(v69 + 8))(v10, v68);
  if (v47 >> 60 == 15)
  {
    sub_23A646D48(v56, v27, &qword_27DF9D240, qword_23A6E1D30);
    if ((v55[0])(v27, 1, v58) == 1)
    {
      v28 = &qword_27DF9D240;
      v29 = qword_23A6E1D30;
      v30 = v27;
      return sub_23A646DB0(v30, v28, v29);
    }

    v52 = sub_23A6DECA4();
    v53 = sub_23A6DF884();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&dword_23A63D000, v52, v53, "Discovery analytics scroll event could not be encoded", v54, 2u);
      MEMORY[0x23EE8A960](v54, -1, -1);
    }

    return (*(v57 + 8))(v27, v58);
  }

  else
  {
    v49 = (*((*MEMORY[0x277D85000] & *v2) + 0x68))(v48);
    if (v49)
    {
      v50 = v49;
      v51 = sub_23A6DE214();
      [v50 sendAnalyticsWithAnalyticsData_];
      sub_23A6A62F8(v45, v47);

      return swift_unknownObjectRelease();
    }

    else
    {
      return sub_23A6A62F8(v45, v47);
    }
  }
}

uint64_t sub_23A6C0E20()
{
  v1 = v0;
  v2 = sub_23A6DE904();
  v48 = *(v2 - 8);
  v49 = v2;
  MEMORY[0x28223BE20](v2);
  v50 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23A6DE924();
  v52 = *(v4 - 8);
  v53 = v4;
  MEMORY[0x28223BE20](v4);
  v51 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v43 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v43 - v13;
  v55 = sub_23A6DCE38();
  sub_23A646D48(v55, v14, &qword_27DF9D240, qword_23A6E1D30);
  v15 = sub_23A6DECC4();
  v16 = *(v15 - 8);
  v54 = *(v16 + 48);
  if (v54(v14, 1, v15) == 1)
  {
    v17 = sub_23A646DB0(v14, &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v18 = sub_23A6507C0();
    v19 = sub_23A6DCFB0();
    sub_23A6DCFBC(v18 & 1, v1, 0xD000000000000016, 0x800000023A6EB6D0, v19, v20);

    v17 = (*(v16 + 8))(v14, v15);
  }

  (*((*MEMORY[0x277D85000] & *v1) + 0x80))(v56, v17);
  if (v56[1])
  {
    v47 = v1;
    v44 = v11;
    v45 = v16;
    v46 = v15;
    (*(v48 + 104))(v50, *MEMORY[0x277D43988], v49);

    v21 = v51;
    sub_23A6DE914();
    sub_23A646DB0(v56, &qword_27DF9D230, qword_23A6E4EE0);
    v22 = sub_23A6DE8F4();
    v24 = v23;
    v25 = (*(v52 + 8))(v21, v53);
    if (v24 >> 60 == 15)
    {
      v26 = v44;
      sub_23A646D48(v55, v44, &qword_27DF9D240, qword_23A6E1D30);
      v27 = v46;
      v28 = v54(v26, 1, v46);
      v29 = v45;
      if (v28 == 1)
      {
        v30 = sub_23A646DB0(v26, &qword_27DF9D240, qword_23A6E1D30);
      }

      else
      {
        v40 = sub_23A6DECA4();
        v41 = sub_23A6DF884();
        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          *v42 = 0;
          _os_log_impl(&dword_23A63D000, v40, v41, "Discovery analytics dismiss event could not be encoded", v42, 2u);
          MEMORY[0x23EE8A960](v42, -1, -1);
        }

        v30 = (*(v29 + 8))(v26, v27);
      }

      v33 = MEMORY[0x277D85000];
      v32 = v47;
    }

    else
    {
      v32 = v47;
      v33 = MEMORY[0x277D85000];
      v34 = (*((*MEMORY[0x277D85000] & *v47) + 0x68))(v25);
      if (v34)
      {
        v35 = v34;
        v36 = sub_23A6DE214();
        [v35 sendAnalyticsWithAnalyticsData_];
        sub_23A6A62F8(v22, v24);

        v30 = swift_unknownObjectRelease();
      }

      else
      {
        v30 = sub_23A6A62F8(v22, v24);
      }
    }

    return (*((*v33 & *v32) + 0xE0))(v30);
  }

  else
  {
    sub_23A646D48(v55, v8, &qword_27DF9D240, qword_23A6E1D30);
    if (v54(v8, 1, v15) == 1)
    {
      return sub_23A646DB0(v8, &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v37 = sub_23A6DECA4();
      v38 = sub_23A6DF884();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&dword_23A63D000, v37, v38, "sendContentDismissed - session data was not found", v39, 2u);
        MEMORY[0x23EE8A960](v39, -1, -1);
      }

      return (*(v16 + 8))(v8, v15);
    }
  }
}

uint64_t sub_23A6C14CC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 *a6)
{
  v7 = v6;
  v61 = a4;
  v62 = a5;
  v59 = a3;
  v60 = a2;
  v51 = a1;
  v9 = sub_23A6DE904();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v63 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_23A6DE924();
  v57 = *(v12 - 8);
  v58 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  MEMORY[0x28223BE20](v15 - 8);
  v52 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v47 - v18;
  v54 = *a6;
  v49 = sub_23A6DCE38();
  sub_23A646D48(v49, v19, &qword_27DF9D240, qword_23A6E1D30);
  v20 = sub_23A6DECC4();
  v21 = *(v20 - 8);
  v48 = *(v21 + 48);
  v22 = v48(v19, 1, v20);
  v50 = v20;
  v47 = v21;
  if (v22 == 1)
  {
    sub_23A646DB0(v19, &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v23 = sub_23A6507C0();
    v56 = v21 + 48;
    v24 = v14;
    v25 = v9;
    v26 = v7;
    v27 = v21;
    v28 = v23;
    v29 = sub_23A6DCFB0();
    sub_23A6DCFBC(v28 & 1, v26, 0xD000000000000033, 0x800000023A6EB6F0, v29, v30);

    v31 = v27;
    v7 = v26;
    v9 = v25;
    v14 = v24;
    (*(v31 + 8))(v19, v20);
  }

  v32 = (*(v10 + 104))(v63, *MEMORY[0x277D43998], v9);
  v33 = (*((*MEMORY[0x277D85000] & *v7) + 0xD8))(v32);
  v55 = v34;
  v56 = v33;
  v53 = sub_23A6DEC04();
  sub_23A6DEC14();
  v66 = 0;
  v67 = 0xE000000000000000;
  LOBYTE(v64) = v54;
  sub_23A6DFB34();
  v64 = 46;
  v65 = 0xE100000000000000;
  sub_23A677268();
  v35 = sub_23A6DF964();

  if (*(v35 + 16))
  {
  }

  else
  {

    sub_23A6DEBF4();
  }

  sub_23A6DE914();
  v36 = sub_23A6DE8F4();
  v38 = v37;
  (*(v57 + 8))(v14, v58);
  if (v38 >> 60 == 15)
  {
    v39 = v52;
    sub_23A646D48(v49, v52, &qword_27DF9D240, qword_23A6E1D30);
    v40 = v50;
    if (v48(v39, 1, v50) == 1)
    {
      v41 = sub_23A646DB0(v39, &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v43 = sub_23A6DECA4();
      v44 = sub_23A6DF884();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&dword_23A63D000, v43, v44, "Discovery analytics error event could not be encoded", v45, 2u);
        MEMORY[0x23EE8A960](v45, -1, -1);
      }

      v41 = (*(v47 + 8))(v39, v40);
    }
  }

  else
  {
    v42 = sub_23A6DE214();
    [v51 sendAnalyticsWithAnalyticsData_];

    v41 = sub_23A6A62F8(v36, v38);
  }

  return (*((*MEMORY[0x277D85000] & *v7) + 0xE0))(v41);
}

uint64_t sub_23A6C1AD8(double a1, double a2)
{
  v2 = a1 / a2 * 100.0;
  v3 = 25.0;
  if (v2 >= 25.0)
  {
    v3 = 100.0;
    if (v2 <= 100.0)
    {
      v3 = floor(v2 / 25.0 + 0.01) * 25.0;
    }
  }

  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v3 < 9.22337204e18)
  {
    return v3;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_23A6C1B68()
{
  v0 = sub_23A6DE2F4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23A6DE2E4();
  v4 = sub_23A6DE2B4();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t sub_23A6C1C44()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v13 - v3;
  v5 = sub_23A6DCE38();
  sub_23A646D48(v5, v4, &qword_27DF9D240, qword_23A6E1D30);
  v6 = sub_23A6DECC4();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    sub_23A646DB0(v4, &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v8 = sub_23A6507C0();
    v9 = sub_23A6DCFB0();
    sub_23A6DCFBC(v8 & 1, v1, 0xD000000000000013, 0x800000023A6EB730, v9, v10);

    (*(v7 + 8))(v4, v6);
  }

  memset(v13, 0, sizeof(v13));
  v11 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v1) + 0x88))(v13);
  (*((*v11 & *v1) + 0x70))(0);
  return (*((*v11 & *v1) + 0xA0))(0);
}

id sub_23A6C1E6C()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_23A6C1F14(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ProximityReaderDiscoveryAnalyticsManager();
  return objc_msgSendSuper2(&v3, sel_dealloc);
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

uint64_t sub_23A6C2080(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_23A6C20C8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for PresentationDetails(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for PresentationDetails(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

_BYTE *sub_23A6C21E8@<X0>(uint64_t a1@<X8>)
{
  v288 = a1;
  v280 = sub_23A6DEE74();
  v314 = *(v280 - 8);
  MEMORY[0x28223BE20](v280);
  v273 = &v262[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v327 = sub_23A6DEF04();
  v294 = *(v327 - 8);
  MEMORY[0x28223BE20](v327);
  v326 = &v262[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v325 = sub_23A6DEF34();
  v293 = *(v325 - 8);
  MEMORY[0x28223BE20](v325);
  v324 = &v262[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v312 = sub_23A6DEEC4();
  v274 = *(v312 - 8);
  MEMORY[0x28223BE20](v312);
  v292 = &v262[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D310, &qword_23A6E5020);
  MEMORY[0x28223BE20](v5 - 8);
  v311 = &v262[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v320 = &v262[-v8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CE68, &unk_23A6E3910);
  MEMORY[0x28223BE20](v9 - 8);
  v323 = &v262[-v10];
  v319 = sub_23A6DEF64();
  v307 = *(v319 - 8);
  MEMORY[0x28223BE20](v319);
  v318 = &v262[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements.AAMVADrivingPrivilege(0);
  v304 = *(v12 - 8);
  MEMORY[0x28223BE20](v12 - 8);
  v305 = &v262[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D318, &qword_23A6E5028);
  MEMORY[0x28223BE20](v14 - 8);
  v313 = &v262[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v16);
  v277 = &v262[-v17];
  v331 = sub_23A6DEDC4();
  v295 = *(v331 - 8);
  MEMORY[0x28223BE20](v331);
  v330 = &v262[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v297 = sub_23A6DEDF4();
  v308 = *(v297 - 8);
  MEMORY[0x28223BE20](v297);
  v296 = &v262[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements.DrivingPrivilege(0);
  v306 = *(v20 - 8);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v262[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v333 = sub_23A6DEE34();
  v329 = *(v333 - 8);
  MEMORY[0x28223BE20](v333);
  *&v272 = &v262[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D320, &qword_23A6E5030);
  MEMORY[0x28223BE20](v24 - 8);
  v328 = &v262[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v26);
  v332 = &v262[-v27];
  v317 = sub_23A6DF094();
  v309 = *(v317 - 8);
  MEMORY[0x28223BE20](v317);
  *&v271 = &v262[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D328, &qword_23A6E5038);
  MEMORY[0x28223BE20](v29 - 8);
  v315 = &v262[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v31);
  *&v316 = &v262[-v32];
  v310 = sub_23A6DF074();
  *&v300 = *(v310 - 8);
  MEMORY[0x28223BE20](v310);
  v270 = &v262[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D330, &qword_23A6E5040);
  MEMORY[0x28223BE20](v34 - 8);
  v302 = &v262[-((v35 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v36);
  v301 = &v262[-v37];
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CCE0, &qword_23A6E37B0);
  MEMORY[0x28223BE20](v38 - 8);
  v285 = &v262[-v39];
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CCD8, &qword_23A6E37A8);
  MEMORY[0x28223BE20](v40 - 8);
  v284 = &v262[-v41];
  *&v299 = sub_23A6DF054();
  *&v278 = *(v299 - 8);
  MEMORY[0x28223BE20](v299);
  v269 = &v262[-((v42 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D338, &qword_23A6E5048);
  MEMORY[0x28223BE20](v43 - 8);
  *&v279 = &v262[-((v44 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v45);
  v298 = &v262[-v46];
  v47 = sub_23A6DEFB4();
  v48 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  *&v268 = &v262[-((v49 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D340, &qword_23A6E5050);
  MEMORY[0x28223BE20](v50 - 8);
  v52 = &v262[-((v51 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v53);
  v55 = &v262[-v54];
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CCC8, &qword_23A6E3C40);
  MEMORY[0x28223BE20](v56 - 8);
  v291 = &v262[-((v57 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v58);
  v290 = &v262[-v59];
  MEMORY[0x28223BE20](v60);
  v276 = &v262[-v61];
  MEMORY[0x28223BE20](v62);
  v281 = &v262[-v63];
  MEMORY[0x28223BE20](v64);
  v322 = &v262[-v65];
  MEMORY[0x28223BE20](v66);
  v321 = &v262[-v67];
  MEMORY[0x28223BE20](v68);
  v283 = &v262[-v69];
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CCC0, &unk_23A6E3790);
  MEMORY[0x28223BE20](v70 - 8);
  v282 = &v262[-v71];
  v72 = type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements(0);
  MEMORY[0x28223BE20](v72 - 8);
  v275 = &v262[-((v73 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v74 = sub_23A6DEB84();
  v75 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v77 = &v262[-((v76 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v78 = sub_23A6DF0C4();
  v286 = *(v78 - 8);
  v287 = v78;
  MEMORY[0x28223BE20](v78);
  v289 = &v262[-((v79 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_23A6DEB94();
  if ((*(v75 + 88))(v77, v74) != *MEMORY[0x277D43BE8])
  {
    (*(v75 + 8))(v77, v74);
LABEL_7:
    v91 = type metadata accessor for MobileDriversLicenseDataRequest.Response(0);
    return (*(*(v91 - 8) + 56))(v288, 1, 1, v91);
  }

  v303 = v22;
  (*(v75 + 96))(v77, v74);
  v80 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CF40, &qword_23A6E4368) + 48);
  v81 = sub_23A6DE8C4();
  v82 = (*(v81 - 8) + 88);
  v83 = (*v82)(v77, v81);
  v84 = (v82 - 10);
  if (v83 != *MEMORY[0x277D43920])
  {
    (*(v286 + 8))(&v77[v80], v287);
    (*v84)(v77, v81);
    goto LABEL_7;
  }

  (*(v286 + 32))(v289, &v77[v80], v287);
  (*v84)(v77, v81);
  v85 = v282;
  sub_23A6DED64();
  v86 = sub_23A6DE0F4();
  (*(*(v86 - 8) + 56))(v85, 0, 1, v86);
  v87 = sub_23A6DED44();
  v266 = v88;
  v267 = v87;
  v265 = sub_23A6DED14();
  v264 = sub_23A6DEFC4();
  v263 = v89;
  sub_23A6DED24();
  sub_23A6DEFD4();
  sub_23A646D48(v55, v52, &qword_27DF9D340, &qword_23A6E5050);
  if ((*(v48 + 48))(v52, 1, v47) == 1)
  {
    sub_23A646DB0(v55, &qword_27DF9D340, &qword_23A6E5050);
    v90 = 5;
    v347 = 5;
  }

  else
  {
    v93 = v268;
    (*(v48 + 32))(v268, v52, v47);
    sub_23A6C4250(v93, &v347);
    (*(v48 + 8))(v93, v47);
    sub_23A646DB0(v55, &qword_27DF9D340, &qword_23A6E5050);
    v90 = v347;
  }

  v95 = v298;
  v94 = v299;
  v96 = v279;
  v97 = v278;
  v346 = v90;
  sub_23A6DF064();
  sub_23A646D48(v95, v96, &qword_27DF9D338, &qword_23A6E5048);
  v98 = (*(v97 + 48))(v96, 1, v94);
  v99 = v300;
  if (v98 == 1)
  {
    v100 = 0;
    v101 = 0;
    v299 = xmmword_23A6E5010;
    v278 = 0u;
    v279 = 0u;
    v268 = 0u;
  }

  else
  {
    v102 = v269;
    (*(v97 + 32))(v269, v96, v94);
    *&v299 = sub_23A6DF044();
    *&v279 = v103;
    *&v278 = sub_23A6DF024();
    *&v268 = v104;
    v105 = sub_23A6DF034();
    v107 = v106;
    v108 = sub_23A6DF004();
    v110 = v109;
    v111 = sub_23A6DF014();
    sub_23A6C67F0(v299, v279, v278, v268, v105, v107, v108, v110, v348, v111, v112);
    v299 = v348[0];
    v268 = v348[3];
    v278 = v348[2];
    v279 = v348[1];
    v113 = v94;
    v100 = v349;
    v101 = v350;
    (*(v97 + 8))(v102, v113);
  }

  v114 = v333;
  v115 = v332;
  v116 = v317;
  v117 = v316;
  sub_23A646DB0(v95, &qword_27DF9D338, &qword_23A6E5048);
  v351[1] = v279;
  v351[0] = v299;
  v351[3] = v268;
  v351[2] = v278;
  v352 = v100;
  v353 = v101;
  sub_23A6DEFE4();
  sub_23A6DEFF4();
  v118 = v301;
  sub_23A6DF084();
  v119 = v302;
  sub_23A646D48(v118, v302, &qword_27DF9D330, &qword_23A6E5040);
  v120 = v310;
  if ((*(v99 + 48))(v119, 1, v310) == 1)
  {
    sub_23A646DB0(v118, &qword_27DF9D330, &qword_23A6E5040);
    v121 = 10;
    v345 = 10;
  }

  else
  {
    v122 = v119;
    v123 = v118;
    v124 = v270;
    (*(v99 + 32))(v270, v122, v120);
    sub_23A6C43E0(v124, &v345);
    (*(v99 + 8))(v124, v120);
    sub_23A646DB0(v123, &qword_27DF9D330, &qword_23A6E5040);
    v121 = v345;
  }

  v125 = v318;
  v126 = v297;
  v127 = v309;
  v128 = v114;
  v344 = v121;
  sub_23A6DF0A4();
  v129 = v315;
  sub_23A646D48(v117, v315, &qword_27DF9D328, &qword_23A6E5038);
  v130 = (*(v127 + 6))(v129, 1, v116);
  v131 = v329;
  if (v130 == 1)
  {
    sub_23A646DB0(v117, &qword_27DF9D328, &qword_23A6E5038);
    v132 = 10;
    v343 = 10;
  }

  else
  {
    v133 = v129;
    v134 = v271;
    (*(v127 + 4))(v271, v133, v116);
    sub_23A6C4628(v134, &v343);
    (*(v127 + 1))(v134, v116);
    sub_23A646DB0(v117, &qword_27DF9D328, &qword_23A6E5038);
    v132 = v343;
  }

  v135 = v314;
  v342 = v132;
  LODWORD(v279) = sub_23A6DED34();
  LODWORD(v278) = sub_23A6DF0B4();
  sub_23A6DEE44();
  v136 = v328;
  sub_23A646D48(v115, v328, &qword_27DF9D320, &qword_23A6E5030);
  if ((*(v131 + 48))(v136, 1, v128) == 1)
  {
    sub_23A646DB0(v115, &qword_27DF9D320, &qword_23A6E5030);
    v137 = xmmword_23A6E5010;
    v138 = 0uLL;
    v139 = 0uLL;
  }

  else
  {
    v140 = v272;
    (*(v131 + 32))(v272, v136, v128);
    v141 = v131;
    v142 = sub_23A6DEE24();
    v144 = v143;
    v145 = sub_23A6DEDA4();
    v147 = v146;
    v148 = sub_23A6DEDB4();
    sub_23A6A979C(v142, v144, v145, v147, v148, v149, &v339);
    (*(v141 + 8))(v140, v333);
    sub_23A646DB0(v332, &qword_27DF9D320, &qword_23A6E5030);
    v137 = v339;
    v138 = v340;
    v139 = v341;
  }

  v150 = v313;
  v151 = v296;
  v339 = v137;
  v340 = v138;
  v341 = v139;
  v152 = sub_23A6DEE64();
  v153 = *(v152 + 16);
  if (v153)
  {
    v338 = MEMORY[0x277D84F90];
    v154 = v152;
    sub_23A6C5F34(0, v153, 0);
    result = v154;
    v155 = 0;
    *&v300 = &result[(*(v308 + 80) + 32) & ~*(v308 + 80)];
    v156 = v338;
    v329 = v295 + 16;
    v328 = (v295 + 8);
    v298 = (v308 + 8);
    *&v299 = v308 + 16;
    v301 = v153;
    v302 = result;
    while (v155 < *(result + 2))
    {
      v317 = v156;
      v157 = *(v308 + 72);
      *&v316 = v155;
      (*(v308 + 16))(v151, v300 + v157 * v155, v126);
      v158 = sub_23A6DED84();
      v315 = v159;
      sub_23A6DEDE4();
      sub_23A6DED74();
      v160 = sub_23A6DEDD4();
      v161 = *(v160 + 16);
      if (v161)
      {
        v310 = v158;
        v337 = MEMORY[0x277D84F90];
        v162 = v160;
        sub_23A6C5FE8(0, v161, 0);
        v163 = v337;
        v164 = *(v295 + 80);
        v309 = v162;
        v165 = v162 + ((v164 + 32) & ~v164);
        v333 = *(v295 + 72);
        v332 = *(v295 + 16);
        do
        {
          v166 = v330;
          v167 = v331;
          (v332)(v330, v165, v331);
          v168 = sub_23A6DED94();
          v170 = v169;
          v171 = sub_23A6DEDA4();
          v173 = v172;
          v174 = sub_23A6DEDB4();
          sub_23A6A979C(v168, v170, v171, v173, v174, v175, &v334);
          (*v328)(v166, v167);
          v176 = v334;
          v177 = v335;
          v178 = v336;
          v337 = v163;
          v180 = *(v163 + 16);
          v179 = *(v163 + 24);
          if (v180 >= v179 >> 1)
          {
            v271 = v336;
            v272 = v335;
            sub_23A6C5FE8((v179 > 1), v180 + 1, 1);
            v178 = v271;
            v177 = v272;
            v163 = v337;
          }

          *(v163 + 16) = v180 + 1;
          v181 = (v163 + 48 * v180);
          v181[2] = v176;
          v181[3] = v177;
          v181[4] = v178;
          v165 += v333;
          --v161;
        }

        while (v161);

        v150 = v313;
        v135 = v314;
        v125 = v318;
        v151 = v296;
        v126 = v297;
        v158 = v310;
      }

      else
      {

        v163 = MEMORY[0x277D84F90];
      }

      v182 = v303;
      sub_23A6A8F08(v158, v315, v321, v322, v163, v303);
      (*v298)(v151, v126);
      v156 = v317;
      v338 = v317;
      v184 = *(v317 + 16);
      v183 = *(v317 + 24);
      if (v184 >= v183 >> 1)
      {
        sub_23A6C5F34((v183 > 1), v184 + 1, 1);
        v156 = v338;
      }

      v185 = (v316 + 1);
      *(v156 + 16) = v184 + 1;
      v186 = v156 + ((*(v306 + 80) + 32) & ~*(v306 + 80)) + *(v306 + 72) * v184;
      v155 = v185;
      sub_23A6C6008(v182, v186, type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements.DrivingPrivilege);
      result = v302;
      if (v155 == v301)
      {
        v317 = v156;

        goto LABEL_36;
      }
    }

    __break(1u);
    goto LABEL_69;
  }

  v317 = MEMORY[0x277D84F90];
LABEL_36:
  v187 = sub_23A6DEF74();
  v188 = *(v187 + 16);
  v189 = MEMORY[0x277D84F90];
  if (v188)
  {
    v338 = MEMORY[0x277D84F90];
    v190 = v187;
    sub_23A6C5EF0(0, v188, 0);
    result = v190;
    v191 = 0;
    v309 = &v190[(*(v307 + 80) + 32) & ~*(v307 + 80)];
    v192 = v338;
    v308 = v307 + 16;
    v306 = v274 + 48;
    v301 = (v274 + 8);
    v302 = (v274 + 32);
    v331 = v293 + 16;
    v330 = (v293 + 8);
    v329 = v294 + 16;
    v328 = (v294 + 8);
    v303 = (v307 + 8);
    v315 = v190;
    v310 = v188;
    while (v191 < *(result + 2))
    {
      v322 = v192;
      v193 = *(v307 + 72);
      v321 = v191;
      (*(v307 + 16))(v125, &v309[v193 * v191], v319);
      v194 = v320;
      sub_23A6DEED4();
      v195 = v194;
      v196 = v311;
      sub_23A646D48(v195, v311, &qword_27DF9D310, &qword_23A6E5020);
      v197 = 1;
      if ((*v306)(v196, 1, v312) != 1)
      {
        v198 = v292;
        v199 = v312;
        (*v302)(v292, v311, v312);
        v200 = sub_23A6DED84();
        v202 = v201;
        v203 = sub_23A6DEE84();
        v205 = v204;
        v206 = v290;
        sub_23A6DEEB4();
        v207 = v291;
        sub_23A6DEE94();
        v208 = v202;
        v189 = MEMORY[0x277D84F90];
        sub_23A6A6E14(v200, v208, v203, v205, v206, v207, v323);
        (*v301)(v198, v199);
        v197 = 0;
      }

      sub_23A646DB0(v320, &qword_27DF9D310, &qword_23A6E5020);
      v209 = type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements.AAMVADrivingPrivilege.VehicleClass(0);
      (*(*(v209 - 8) + 56))(v323, v197, 1, v209);
      v210 = sub_23A6DEF54();
      v211 = *(v210 + 2);
      if (v211)
      {
        v337 = v189;
        sub_23A6C5FB0(0, v211, 0);
        v212 = v337;
        v213 = *(v293 + 80);
        v332 = v210;
        v214 = &v210[(v213 + 32) & ~v213];
        v333 = *(v293 + 72);
        v215 = *(v293 + 16);
        do
        {
          v216 = v324;
          v217 = v325;
          v215(v324, v214, v325);
          v218 = sub_23A6DEEF4();
          v220 = v219;
          v221 = sub_23A6DEEE4();
          sub_23A6A8558(v218, &v334, v220, v221, v222);
          (*v330)(v216, v217);
          v223 = v334;
          v224 = v335;
          v337 = v212;
          v226 = *(v212 + 16);
          v225 = *(v212 + 24);
          if (v226 >= v225 >> 1)
          {
            v316 = v334;
            sub_23A6C5FB0((v225 > 1), v226 + 1, 1);
            v223 = v316;
            v212 = v337;
          }

          *(v212 + 16) = v226 + 1;
          v227 = v212 + 32 * v226;
          *(v227 + 32) = v223;
          *(v227 + 48) = v224;
          v214 += v333;
          --v211;
        }

        while (v211);

        v125 = v318;
        v189 = MEMORY[0x277D84F90];
      }

      else
      {

        v212 = v189;
      }

      v228 = sub_23A6DEF44();
      v229 = *(v228 + 16);
      if (v229)
      {
        v337 = v189;
        sub_23A6C5F78(0, v229, 0);
        v230 = v337;
        v231 = *(v294 + 80);
        *&v316 = v228;
        v232 = v228 + ((v231 + 32) & ~v231);
        v333 = *(v294 + 72);
        v332 = *(v294 + 16);
        do
        {
          v233 = v326;
          v234 = v327;
          (v332)(v326, v232, v327);
          v235 = sub_23A6DEEF4();
          v237 = v236;
          v238 = sub_23A6DEEE4();
          sub_23A64FD74(v235, v237, v238, v239, &v334);
          (*v328)(v233, v234);
          v240 = v334;
          v241 = v335;
          v337 = v230;
          v243 = *(v230 + 16);
          v242 = *(v230 + 24);
          if (v243 >= v242 >> 1)
          {
            v300 = v334;
            sub_23A6C5F78((v242 > 1), v243 + 1, 1);
            v240 = v300;
            v230 = v337;
          }

          *(v230 + 16) = v243 + 1;
          v244 = v230 + 32 * v243;
          *(v244 + 32) = v240;
          *(v244 + 48) = v241;
          v232 += v333;
          --v229;
        }

        while (v229);

        v125 = v318;
        v189 = MEMORY[0x277D84F90];
      }

      else
      {

        v230 = v189;
      }

      v245 = v305;
      sub_23A6A6850(v323, v212, v230, v305);
      (*v303)(v125, v319);
      v192 = v322;
      v338 = v322;
      v247 = *(v322 + 2);
      v246 = *(v322 + 3);
      if (v247 >= v246 >> 1)
      {
        sub_23A6C5EF0((v246 > 1), v247 + 1, 1);
        v245 = v305;
        v192 = v338;
      }

      v248 = v321 + 1;
      *(v192 + 2) = v247 + 1;
      v249 = v245;
      v191 = v248;
      sub_23A6C6008(v249, &v192[((*(v304 + 80) + 32) & ~*(v304 + 80)) + *(v304 + 72) * v247], type metadata accessor for MobileDriversLicenseDataRequest.Response.DocumentElements.AAMVADrivingPrivilege);
      v150 = v313;
      v135 = v314;
      result = v315;
      if (v191 == v310)
      {

        goto LABEL_60;
      }
    }

LABEL_69:
    __break(1u);
    return result;
  }

  v192 = MEMORY[0x277D84F90];
LABEL_60:
  v250 = sub_23A6DED54();
  v252 = v251;
  sub_23A6DEE54();
  v253 = v276;
  sub_23A6DEF84();
  v254 = v277;
  sub_23A6DEF94();
  sub_23A6C6070(v254, v150);
  v255 = v280;
  if ((*(v135 + 48))(v150, 1, v280) == 1)
  {
    v256 = 2;
    v257 = v288;
    v258 = v275;
  }

  else
  {
    v259 = v273;
    (*(v135 + 32))(v273, v150, v255);
    v260 = (*(v135 + 88))(v259, v255);
    v257 = v288;
    if (v260 == *MEMORY[0x277CFEFC0])
    {
      v256 = 0;
      v258 = v275;
    }

    else
    {
      v258 = v275;
      if (v260 != *MEMORY[0x277CFEFB8])
      {
        (*(v135 + 8))(v273, v280);
      }

      v256 = 1;
    }
  }

  LOBYTE(v334) = v256;
  sub_23A6A3670(v282, v267, v266, v265, v264, v263 & 1, v283, &v346, v258, v351, v284, v285, &v344, &v342, v279, v278, &v339, v317, v192, v250, v252, v281, v253, &v334);
  sub_23A6A1844(v258, v257);
  (*(v286 + 8))(v289, v287);
  v261 = type metadata accessor for MobileDriversLicenseDataRequest.Response(0);
  return (*(*(v261 - 8) + 56))(v257, 0, 1, v261);
}