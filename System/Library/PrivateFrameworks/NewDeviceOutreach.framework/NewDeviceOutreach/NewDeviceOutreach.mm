id _NDOLogSystem(uint64_t a1)
{
  if (_NDOLogSystem_onceToken != -1)
  {
    _NDOLogSystem_cold_1();
  }

  v2 = _NDOLogSystem_log;

  return v2;
}

uint64_t sub_25BD53C0C(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {

    v6 = v4;
    v4 = sub_25BD796A8();
    v8 = v7;
  }

  else
  {

    v8 = 0xF000000000000000;
  }

  v9 = a3;
  v5(v4, v8, a3);

  sub_25BD54D60(v4, v8);
}

uint64_t type metadata accessor for NDOWarrantyProperties(uint64_t a1)
{
  result = qword_28145A900;
  if (!qword_28145A900)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25BD53D04(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_25BD53D58(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_25BD53DFC()
{
  result = qword_28145AAA0;
  if (!qword_28145AAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28145AAA0);
  }

  return result;
}

uint64_t sub_25BD53E50(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25BD53E88(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NDOSettingsCoverageSectionOfferProperties(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25BD53EE0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for NDOSettingsCoverageSectionOfferProperties.Link(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDC010, &qword_25BD7C0A0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_25BD54028(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_25BD79678();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t NDOWarrantyProperties.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDC0A0, &qword_25BD7C490);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDC0B8, &qword_25BD7C4A0);
  v23 = *(v7 - 8);
  v24 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = v20 - v8;
  v10 = type metadata accessor for NDOWarrantyProperties(0);
  MEMORY[0x28223BE20](v10);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BD53DFC();
  sub_25BD79A08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = a1;
  v13 = v6;
  v15 = v23;
  v14 = v24;
  v29 = 0;
  *v12 = sub_25BD79938();
  *(v12 + 1) = v16;
  v20[1] = v16;
  v28 = 1;
  v12[16] = sub_25BD79948() & 1;
  v27 = 2;
  *(v12 + 3) = sub_25BD79938();
  *(v12 + 4) = v17;
  v26 = 3;
  *(v12 + 5) = sub_25BD79918();
  *(v12 + 6) = v18;
  type metadata accessor for NDOSettingsCoverageSectionOfferProperties(0);
  v25 = 4;
  sub_25BD53E88(qword_28145A630, &protocol conformance descriptor for NDOSettingsCoverageSectionOfferProperties);
  sub_25BD79928();
  (*(v15 + 8))(v9, v14);
  sub_25BD5472C(v13, &v12[*(v10 + 32)]);
  sub_25BD546C8(v12, v22);
  __swift_destroy_boxed_opaque_existential_1(v21);
  return sub_25BD72DF0(v12, type metadata accessor for NDOWarrantyProperties);
}

uint64_t sub_25BD544D8()
{
  v1 = *v0;
  v2 = 0x754E6C6169726573;
  v3 = 0x6567617265766F63;
  v4 = 0xD000000000000017;
  if (v1 != 3)
  {
    v4 = 0xD000000000000026;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x7466656854736168;
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

uint64_t storeEnumTagSinglePayload for NDOWarrantyProperties.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_25BD546C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NDOWarrantyProperties(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25BD5472C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDC0A0, &qword_25BD7C490);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25BD547B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for NDOSettingsCoverageSectionOfferProperties.Link(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
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

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDC010, &qword_25BD7C0A0);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 28);

    return v13(v14, a2, v12);
  }
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

uint64_t sub_25BD54950(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDC0A0, &qword_25BD7C490);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_25BD54A00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NDOWarrantyProperties(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25BD54A64()
{
  if (qword_28145A7D0 != -1)
  {
    swift_once();
  }

  v0 = sub_25BD79748();

  return __swift_project_value_buffer(v0, qword_28145AAB0);
}

unint64_t sub_25BD54AC8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_25BD54B94(v11, 0, 0, 1, a1, a2);
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
    sub_25BD55514(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_25BD54B94(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_25BD740A8(a5, a6);
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
    result = sub_25BD798F8();
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

void sub_25BD54CA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_25BD79608();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

uint64_t sub_25BD54D60(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_25BD54D74(a1, a2);
  }

  return a1;
}

uint64_t sub_25BD54D74(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_25BD54DF0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_25BD79678();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_25BD54F54()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25BD54F8C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v33 = a3;
  v34 = a4;
  v35 = a1;
  v7 = sub_25BD79748();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for NDOSignpost(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v33 - v16;
  sub_25BD7495C(2u, &v33 - v16);
  v36 = v17;
  sub_25BD74604(v17, v15, type metadata accessor for NDOSignpost);
  v18 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v19 = v7;
  v20 = swift_allocObject();
  *(v20 + 16) = v34;
  *(v20 + 24) = a5;
  sub_25BD7459C(v15, v20 + v18, type metadata accessor for NDOSignpost);

  v21 = sub_25BD54A64();
  (*(v8 + 16))(v10, v21, v7);

  v22 = sub_25BD79728();
  v23 = sub_25BD79838();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    aBlock[0] = v25;
    *v24 = 134218242;
    *(v24 + 4) = v33;
    *(v24 + 12) = 2080;
    v26 = v35;
    *(v24 + 14) = sub_25BD54AC8(v35, a2, aBlock);
    _os_log_impl(&dword_25BD52000, v22, v23, "Cached coverage details requested by %lu for serial number %s", v24, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v25);
    MEMORY[0x25F87B060](v25, -1, -1);
    MEMORY[0x25F87B060](v24, -1, -1);

    (*(v8 + 8))(v10, v19);
    v27 = v26;
  }

  else
  {

    (*(v8 + 8))(v10, v19);
    v27 = v35;
  }

  v28 = [objc_allocWithZone(NDOManager) init];
  v29 = sub_25BD797A8();
  v30 = swift_allocObject();
  v30[2] = v27;
  v30[3] = a2;
  v30[4] = sub_25BD744A0;
  v30[5] = v20;
  aBlock[4] = sub_25BD7452C;
  aBlock[5] = v30;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25BD53C0C;
  aBlock[3] = &block_descriptor;
  v31 = _Block_copy(aBlock);

  [v28 getCoverageInfoForSerialNumber:v29 usingPolicy:1 withReply:v31];
  _Block_release(v31);

  return sub_25BD74538(v36, type metadata accessor for NDOSignpost);
}

uint64_t sub_25BD553C8()
{
  v1 = *(type metadata accessor for NDOSignpost(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);

  v5 = sub_25BD79718();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_25BD5549C()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_25BD55514(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_25BD55B4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25BD79718();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 3)
    {
      return v10 - 2;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_25BD55C04(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_25BD79718();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 2;
  }

  return result;
}

uint64_t sub_25BD55CBC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDC0A0, &qword_25BD7C490);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

void sub_25BD5B650(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25BD5C038(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25BD5C7E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25BD5CAC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25BD5CD98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25BD5CFF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25BD5D488(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25BD5E9D8(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x310], 8);
  _Block_object_dispose(&STACK[0x200], 8);
  _Block_object_dispose(&STACK[0x220], 8);
  _Block_object_dispose(&STACK[0x240], 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void sub_25BD63384(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_0_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 2u);
}

void sub_25BD69534(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25BD6AEAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25BD6B76C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25BD6C8C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25BD6CF30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_25BD6D1D4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25BD79718();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t type metadata accessor for NDOSignpost(uint64_t a1)
{
  result = qword_27FBDC2A0;
  if (!qword_27FBDC2A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25BD6D2AC@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  if (a1 >= 2u)
  {
    if (qword_27FBDC180 != -1)
    {
      swift_once();
    }

    v4 = &qword_27FBDC188;
  }

  else
  {
    if (qword_27FBDC190 != -1)
    {
      swift_once();
    }

    v4 = &qword_27FBDC198;
  }

  v5 = *v4;
  sub_25BD79708();
  result = type metadata accessor for NDOSignpost(0);
  *(a2 + *(result + 20)) = a1;
  return result;
}

id sub_25BD6D370(unsigned __int8 a1)
{
  if (a1 > 1u)
  {
    if (qword_27FBDC180 != -1)
    {
      swift_once();
    }

    v1 = &qword_27FBDC188;
  }

  else
  {
    if (qword_27FBDC190 != -1)
    {
      swift_once();
    }

    v1 = &qword_27FBDC198;
  }

  v2 = *v1;

  return v2;
}

const char *sub_25BD6D418(char a1)
{
  if (!a1)
  {
    return "loadCoverageCentral";
  }

  if (a1 == 1)
  {
    return "loadCoverage";
  }

  return "getCachedCoverageDetails";
}

uint64_t sub_25BD6D498(unsigned __int8 a1)
{
  sub_25BD799D8();
  MEMORY[0x25F87A830](a1);
  return sub_25BD799F8();
}

uint64_t sub_25BD6D4F4()
{
  v1 = *v0;
  sub_25BD799D8();
  MEMORY[0x25F87A830](v1);
  return sub_25BD799F8();
}

uint64_t sub_25BD6D568(uint64_t a1)
{
  v2 = *v1;
  sub_25BD799D8();
  MEMORY[0x25F87A830](v2);
  return sub_25BD799F8();
}

void sub_25BD6D5AC()
{
  sub_25BD79848();
  if (*(v0 + *(type metadata accessor for NDOSignpost(0) + 20)) >= 2u)
  {
    if (qword_27FBDC180 != -1)
    {
      swift_once();
    }

    v1 = qword_27FBDC188;
  }

  else
  {
    if (qword_27FBDC190 != -1)
    {
      swift_once();
    }

    v1 = qword_27FBDC198;
  }

  v2 = v1;
  sub_25BD796F8();
}

uint64_t sub_25BD6D708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_25BD6D9D0();
  sub_25BD7781C();

  result = sub_25BD79888();
  *a4 = result;
  return result;
}

unint64_t sub_25BD6D77C()
{
  result = qword_27FBDBEE0;
  if (!qword_27FBDBEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBDBEE0);
  }

  return result;
}

uint64_t sub_25BD6D7F8(uint64_t a1)
{
  result = sub_25BD79718();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NDOSignpost.Event(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NDOSignpost.Event(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_25BD6D9D0()
{
  result = qword_27FBDBEE8;
  if (!qword_27FBDBEE8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FBDBEE8);
  }

  return result;
}

uint64_t NDOAMSProperties.url.getter@<X0>(uint64_t a1@<X8>)
{
  sub_25BD6E1E0(v1 + OBJC_IVAR___NDOAMSProperties__url, v7, &qword_27FBDBEF8, &qword_25BD7C070);
  if (v7[3])
  {
    v3 = sub_25BD79678();
    v4 = swift_dynamicCast();
    return (*(*(v3 - 8) + 56))(a1, v4 ^ 1u, 1, v3);
  }

  else
  {
    sub_25BD6E248(v7, &qword_27FBDBEF8, &qword_25BD7C070);
    v6 = sub_25BD79678();
    return (*(*(v6 - 8) + 56))(a1, 1, 1, v6);
  }
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

uint64_t NDOAMSProperties.bodyData.getter()
{
  v1 = *(v0 + OBJC_IVAR___NDOAMSProperties_bodyData);
  sub_25BD53D04(v1, *(v0 + OBJC_IVAR___NDOAMSProperties_bodyData + 8));
  return v1;
}

id NDOAMSProperties.init(url:signatureHeaders:bodyData:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = sub_25BD79678();
  v8 = *(v7 - 8);
  v9 = 0;
  if ((*(v8 + 48))(a1, 1, v7) != 1)
  {
    v9 = sub_25BD79638();
    (*(v8 + 8))(a1, v7);
  }

  v10 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v11 = sub_25BD79768();

  v12 = sub_25BD79688();
  v13 = [v10 initWithUrl:v9 signatureHeaders:v11 bodyData:v12];

  sub_25BD54D74(a3, a4);
  return v13;
}

id NDOAMSProperties.init(url:signatureHeaders:bodyData:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDBF18, &qword_25BD7C078);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - v10;
  sub_25BD6E1E0(a1, &v20 - v10, &qword_27FBDBF18, &qword_25BD7C078);
  v12 = sub_25BD79678();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_25BD6E248(v11, &qword_27FBDBF18, &qword_25BD7C078);
    v21 = 0u;
    v22 = 0u;
  }

  else
  {
    *(&v22 + 1) = v12;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v21);
    (*(v13 + 32))(boxed_opaque_existential_0, v11, v12);
  }

  v15 = &v4[OBJC_IVAR___NDOAMSProperties__url];
  v16 = v22;
  *v15 = v21;
  v15[1] = v16;
  v17 = &v4[OBJC_IVAR___NDOAMSProperties_bodyData];
  *v17 = a3;
  v17[1] = a4;
  *&v4[OBJC_IVAR___NDOAMSProperties_signatureHeaders] = a2;
  v4[OBJC_IVAR___NDOAMSProperties_presentModally] = 0;
  v20.receiver = v4;
  v20.super_class = NDOAMSProperties;
  v18 = objc_msgSendSuper2(&v20, sel_init);
  sub_25BD6E248(a1, &qword_27FBDBF18, &qword_25BD7C078);
  return v18;
}

uint64_t sub_25BD6E1E0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_25BD6E248(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

id NDOAMSProperties.init(url:signatureHeaders:bodyData:presentModally:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  v9 = sub_25BD79678();
  v10 = *(v9 - 8);
  v11 = 0;
  if ((*(v10 + 48))(a1, 1, v9) != 1)
  {
    v11 = sub_25BD79638();
    (*(v10 + 8))(a1, v9);
  }

  v12 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v13 = sub_25BD79768();

  v14 = sub_25BD79688();
  v15 = [v12 initWithUrl:v11 signatureHeaders:v13 bodyData:v14 presentModally:a5 & 1];

  sub_25BD54D74(a3, a4);
  return v15;
}

id NDOAMSProperties.init(url:signatureHeaders:bodyData:presentModally:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDBF18, &qword_25BD7C078);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v22 - v12;
  sub_25BD6E1E0(a1, &v22 - v12, &qword_27FBDBF18, &qword_25BD7C078);
  v14 = sub_25BD79678();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_25BD6E248(v13, &qword_27FBDBF18, &qword_25BD7C078);
    v23 = 0u;
    v24 = 0u;
  }

  else
  {
    *(&v24 + 1) = v14;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v23);
    (*(v15 + 32))(boxed_opaque_existential_0, v13, v14);
  }

  v17 = &v5[OBJC_IVAR___NDOAMSProperties__url];
  v18 = v24;
  *v17 = v23;
  v17[1] = v18;
  v19 = &v5[OBJC_IVAR___NDOAMSProperties_bodyData];
  *v19 = a3;
  v19[1] = a4;
  *&v5[OBJC_IVAR___NDOAMSProperties_signatureHeaders] = a2;
  v5[OBJC_IVAR___NDOAMSProperties_presentModally] = a5 & 1;
  v22.receiver = v5;
  v22.super_class = NDOAMSProperties;
  v20 = objc_msgSendSuper2(&v22, sel_init);
  sub_25BD6E248(a1, &qword_27FBDBF18, &qword_25BD7C078);
  return v20;
}

id NDOAMSProperties.init(coder:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];

  return v2;
}

{
  v2 = v1;
  v4 = sub_25BD79748();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDBF18, &qword_25BD7C078);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v38 - v12;
  sub_25BD6F2F4(0, &unk_27FBDBF20, 0x277CBEA90);
  v14 = sub_25BD79868();
  if (v14)
  {
    v39 = xmmword_25BD7C060;
    v15 = v14;
    sub_25BD79698();

    v16 = *(&v39 + 1);
    if (*(&v39 + 1) >> 60 != 15)
    {
      v17 = v39;
      sub_25BD6F2F4(0, &unk_27FBDC150, 0x277CCACA8);
      v18 = sub_25BD79878();
      if (v18)
      {
        *&v39 = v18;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBDBF30, &qword_25BD7C080);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDC160, &qword_25BD7C0C0);
        if (swift_dynamicCast())
        {
          v19 = v41;
          sub_25BD6F2F4(0, &unk_27FBDBF40, 0x277CBEBC0);
          v20 = sub_25BD79868();
          if (v20)
          {
            v21 = v20;
            sub_25BD79658();

            v22 = 0;
          }

          else
          {
            v22 = 1;
          }

          v29 = sub_25BD79678();
          v30 = *(v29 - 8);
          (*(v30 + 56))(v11, v22, 1, v29);
          sub_25BD6F33C(v11, v13);
          if ((*(v30 + 48))(v13, 1, v29) == 1)
          {
            sub_25BD6E248(v13, &qword_27FBDBF18, &qword_25BD7C078);
            v39 = 0u;
            v40 = 0u;
          }

          else
          {
            *(&v40 + 1) = v29;
            boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v39);
            (*(v30 + 32))(boxed_opaque_existential_0, v13, v29);
          }

          v32 = &v2[OBJC_IVAR___NDOAMSProperties__url];
          v33 = v40;
          *v32 = v39;
          v32[1] = v33;
          v34 = &v2[OBJC_IVAR___NDOAMSProperties_bodyData];
          *v34 = v17;
          v34[1] = v16;
          *&v2[OBJC_IVAR___NDOAMSProperties_signatureHeaders] = v19;
          sub_25BD53D04(v17, v16);
          v35 = sub_25BD797A8();
          v36 = [a1 decodeBoolForKey_];
          sub_25BD54D60(v17, v16);

          v2[OBJC_IVAR___NDOAMSProperties_presentModally] = v36;
          v38.receiver = v2;
          v38.super_class = NDOAMSProperties;
          v37 = objc_msgSendSuper2(&v38, sel_init);

          return v37;
        }
      }

      sub_25BD54D60(v17, v16);
    }
  }

  v23 = sub_25BD54A64();
  (*(v5 + 16))(v7, v23, v4);
  v24 = sub_25BD79728();
  v25 = sub_25BD79828();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_25BD52000, v24, v25, "Unable to decode from coder", v26, 2u);
    MEMORY[0x25F87B060](v26, -1, -1);
  }

  v27 = (*(v5 + 8))(v7, v4);
  type metadata accessor for NDOAMSProperties(v27);
  swift_deallocPartialClassInstance();
  return 0;
}

Swift::Void __swiftcall NDOAMSProperties.encode(with:)(NSCoder with)
{
  v2 = v1;
  v4 = sub_25BD79678();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [v2 url];
  if (v8)
  {
    v9 = v8;
    sub_25BD79658();

    v10 = sub_25BD79638();
    (*(v5 + 8))(v7, v4);
  }

  else
  {
    v10 = 0;
  }

  v11 = sub_25BD797A8();
  [(objc_class *)with.super.isa encodeObject:v10 forKey:v11];
  swift_unknownObjectRelease();

  v12 = [v2 bodyData];
  v13 = sub_25BD796A8();
  v15 = v14;

  v16 = sub_25BD79688();
  sub_25BD54D74(v13, v15);
  v17 = sub_25BD797A8();
  [(objc_class *)with.super.isa encodeObject:v16 forKey:v17];

  v18 = [v2 signatureHeaders];
  sub_25BD79778();

  v19 = sub_25BD79768();

  v20 = sub_25BD797A8();
  [(objc_class *)with.super.isa encodeObject:v19 forKey:v20];

  v21 = [v2 presentModally];
  v22 = sub_25BD797A8();
  [(objc_class *)with.super.isa encodeBool:v21 forKey:v22];
}

id NDOAMSProperties.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_25BD6F2F4(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_25BD6F33C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDBF18, &qword_25BD7C078);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t NDOSettingsCoverageSectionOfferProperties.singularFooter.getter()
{
  v1 = *(v0 + *(type metadata accessor for NDOSettingsCoverageSectionOfferProperties(0) + 20));

  return v1;
}

uint64_t NDOSettingsCoverageSectionOfferProperties.pluralFooter.getter()
{
  v1 = *(v0 + *(type metadata accessor for NDOSettingsCoverageSectionOfferProperties(0) + 24));

  return v1;
}

uint64_t NDOSettingsCoverageSectionOfferProperties.expiration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for NDOSettingsCoverageSectionOfferProperties(0) + 28);

  return sub_25BD6F4A4(v3, a1);
}

uint64_t sub_25BD6F4A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDC010, &qword_25BD7C0A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25BD6F524()
{
  v1 = 1802398060;
  v2 = 0x6F466C6172756C70;
  if (*v0 != 2)
  {
    v2 = 0x6974617269707865;
  }

  if (*v0)
  {
    v1 = 0x72616C75676E6973;
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

uint64_t sub_25BD6F5B0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_25BD71E30(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_25BD6F5F0(uint64_t a1)
{
  v2 = sub_25BD7149C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BD6F62C(uint64_t a1)
{
  v2 = sub_25BD7149C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NDOSettingsCoverageSectionOfferProperties.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDC018, &qword_25BD7C0A8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BD7149C();
  sub_25BD79A18();
  v8[15] = 0;
  type metadata accessor for NDOSettingsCoverageSectionOfferProperties.Link(0);
  sub_25BD714F0(&qword_27FBDC020, type metadata accessor for NDOSettingsCoverageSectionOfferProperties.Link, &protocol conformance descriptor for NDOSettingsCoverageSectionOfferProperties.Link);
  sub_25BD799A8();
  if (!v1)
  {
    type metadata accessor for NDOSettingsCoverageSectionOfferProperties(0);
    v8[14] = 1;
    sub_25BD79968();
    v8[13] = 2;
    sub_25BD79968();
    v8[12] = 3;
    sub_25BD796C8();
    sub_25BD714F0(&qword_27FBDC028, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
    sub_25BD79978();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t NDOSettingsCoverageSectionOfferProperties.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDC010, &qword_25BD7C0A0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v26 - v4;
  v6 = type metadata accessor for NDOSettingsCoverageSectionOfferProperties.Link(0);
  MEMORY[0x28223BE20](v6);
  v29 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDC030, &qword_25BD7C0B0);
  v26 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v9 = &v26 - v8;
  v10 = type metadata accessor for NDOSettingsCoverageSectionOfferProperties(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BD7149C();
  v28 = v9;
  v13 = v31;
  sub_25BD79A08();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v31 = v5;
  v14 = v12;
  v15 = v26;
  v16 = v27;
  v35 = 0;
  sub_25BD714F0(&qword_27FBDC038, type metadata accessor for NDOSettingsCoverageSectionOfferProperties.Link, &protocol conformance descriptor for NDOSettingsCoverageSectionOfferProperties.Link);
  sub_25BD79958();
  sub_25BD71538(v29, v14);
  v34 = 1;
  v17 = sub_25BD79918();
  v18 = (v14 + v10[5]);
  *v18 = v17;
  v18[1] = v19;
  v33 = 2;
  v20 = sub_25BD79918();
  v21 = a1;
  v22 = (v14 + v10[6]);
  *v22 = v20;
  v22[1] = v23;
  sub_25BD796C8();
  v32 = 3;
  sub_25BD714F0(&qword_27FBDC040, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
  v24 = v31;
  sub_25BD79928();
  (*(v15 + 8))(v28, v30);
  sub_25BD7159C(v24, v14 + v10[7]);
  sub_25BD7160C(v14, v16, type metadata accessor for NDOSettingsCoverageSectionOfferProperties);
  __swift_destroy_boxed_opaque_existential_1(v21);
  return sub_25BD71674(v14, type metadata accessor for NDOSettingsCoverageSectionOfferProperties);
}

uint64_t sub_25BD6FD54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  sub_25BD71538(a1, a7);
  v13 = type metadata accessor for NDOSettingsCoverageSectionOfferProperties(0);
  v14 = (a7 + v13[5]);
  *v14 = a2;
  v14[1] = a3;
  v15 = (a7 + v13[6]);
  *v15 = a4;
  v15[1] = a5;
  v16 = a7 + v13[7];

  return sub_25BD7159C(a6, v16);
}

uint64_t NDOSettingsCoverageSectionOfferProperties.Link.label.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t NDOSettingsCoverageSectionOfferProperties.Link.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NDOSettingsCoverageSectionOfferProperties.Link(0) + 20);
  v4 = sub_25BD79678();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NDOSettingsCoverageSectionOfferProperties.Link.additionalHeaders.getter()
{
  type metadata accessor for NDOSettingsCoverageSectionOfferProperties.Link(0);
}

uint64_t NDOSettingsCoverageSectionOfferProperties.Link.bodyPayload.getter()
{
  type metadata accessor for NDOSettingsCoverageSectionOfferProperties.Link(0);
}

uint64_t sub_25BD6FF24(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v26 = (v7 - 1) & v7;
LABEL_14:
    v12 = 16 * (v9 | (v3 << 6));
    v13 = result;
    v14 = (*(result + 48) + v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(result + 56) + v12);
    v19 = *v17;
    v18 = v17[1];

    v20 = sub_25BD70E94(v15, v16);
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      return 0;
    }

    v23 = (*(a2 + 56) + 16 * v20);
    if (*v23 == v19 && v23[1] == v18)
    {

      result = v13;
      v7 = v26;
    }

    else
    {
      v25 = sub_25BD799C8();

      result = v13;
      v7 = v26;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v26 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_25BD700C8()
{
  v1 = 0x6C6562616CLL;
  v2 = 0xD000000000000011;
  if (*v0 != 2)
  {
    v2 = 0x6C79615079646F62;
  }

  if (*v0)
  {
    v1 = 7107189;
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

uint64_t sub_25BD70144@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_25BD71FA8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_25BD7016C(uint64_t a1)
{
  v2 = sub_25BD716D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BD701A8(uint64_t a1)
{
  v2 = sub_25BD716D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NDOSettingsCoverageSectionOfferProperties.Link.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDC048, &qword_25BD7C0B8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BD716D4();
  sub_25BD79A18();
  LOBYTE(v13) = 0;
  sub_25BD79988();
  if (!v2)
  {
    v9 = type metadata accessor for NDOSettingsCoverageSectionOfferProperties.Link(0);
    LOBYTE(v13) = 1;
    sub_25BD79678();
    sub_25BD714F0(&qword_27FBDC050, MEMORY[0x277CC9260], MEMORY[0x277CC9268]);
    sub_25BD799A8();
    v13 = *(v3 + *(v9 + 24));
    v12 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDC160, &qword_25BD7C0C0);
    sub_25BD71770(&qword_27FBDC058, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
    sub_25BD799A8();
    v13 = *(v3 + *(v9 + 28));
    v12 = 3;
    sub_25BD799A8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t NDOSettingsCoverageSectionOfferProperties.Link.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v3 = sub_25BD79678();
  v20 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDC060, &qword_25BD7C0C8);
  v19 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v7 = v17 - v6;
  v8 = type metadata accessor for NDOSettingsCoverageSectionOfferProperties.Link(0);
  MEMORY[0x28223BE20](v8);
  v10 = (v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BD716D4();
  v21 = v7;
  v11 = v23;
  sub_25BD79A08();
  if (v11)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v23 = a1;
  v13 = v19;
  v12 = v20;
  LOBYTE(v25) = 0;
  *v10 = sub_25BD79938();
  v10[1] = v14;
  v17[2] = v14;
  LOBYTE(v25) = 1;
  sub_25BD714F0(&qword_27FBDC068, MEMORY[0x277CC9260], MEMORY[0x277CC9280]);
  sub_25BD79958();
  (*(v12 + 32))(v10 + v8[5], v5, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDC160, &qword_25BD7C0C0);
  v24 = 2;
  v17[0] = sub_25BD71770(&qword_27FBDC070, MEMORY[0x277D83808], MEMORY[0x277D83528]);
  v17[1] = 0;
  sub_25BD79958();
  v15 = v23;
  *(v10 + v8[6]) = v25;
  v24 = 3;
  sub_25BD79958();
  (*(v13 + 8))(v21, v22);
  *(v10 + v8[7]) = v25;
  sub_25BD7160C(v10, v18, type metadata accessor for NDOSettingsCoverageSectionOfferProperties.Link);
  __swift_destroy_boxed_opaque_existential_1(v15);
  return sub_25BD71674(v10, type metadata accessor for NDOSettingsCoverageSectionOfferProperties.Link);
}

uint64_t sub_25BD708D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  *a6 = a1;
  *(a6 + 1) = a2;
  v10 = type metadata accessor for NDOSettingsCoverageSectionOfferProperties.Link(0);
  v11 = v10[5];
  v12 = sub_25BD79678();
  result = (*(*(v12 - 8) + 32))(&a6[v11], a3, v12);
  *&a6[v10[6]] = a4;
  *&a6[v10[7]] = a5;
  return result;
}

BOOL NDOSettingsCoverageSectionOfferProperties.isValid.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDC010, &qword_25BD7C0A0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v12 - v2;
  v4 = sub_25BD796C8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for NDOSettingsCoverageSectionOfferProperties(0);
  sub_25BD6F4A4(v0 + *(v8 + 28), v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_25BD6E248(v3, &qword_27FBDC010, &qword_25BD7C0A0);
    return 1;
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    sub_25BD796B8();
    v11 = v10;
    (*(v5 + 8))(v7, v4);
    return v11 > 0.0;
  }
}

void NDOSettingsCoverageSectionOfferProperties.footer.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDC010, &qword_25BD7C0A0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v21 - v3;
  v5 = sub_25BD796C8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for NDOSettingsCoverageSectionOfferProperties(0);
  sub_25BD6F4A4(v1 + *(v9 + 28), v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_25BD6E248(v4, &qword_27FBDC010, &qword_25BD7C0A0);
LABEL_12:

    return;
  }

  (*(v6 + 32))(v8, v4, v5);
  sub_25BD796B8();
  v11 = ceil(v10 / 86400.0);
  if ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v11 <= -9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v11 >= 9.22337204e18)
  {
LABEL_16:
    __break(1u);
    return;
  }

  v12 = v11;
  if (v11 < 0)
  {
    goto LABEL_10;
  }

  if (v12 <= 1 || (v13 = (v1 + *(v9 + 24)), (v14 = v13[1]) == 0))
  {
    (*(v6 + 8))(v8, v5);
    goto LABEL_12;
  }

  v22 = *v13;
  v23 = v14;
  v21[0] = 16421;
  v21[1] = 0xE200000000000000;
  sub_25BD717DC();
  v15 = MEMORY[0x277D837D0];
  v16 = *(sub_25BD798A8() + 16);

  if (v16 > 2)
  {
LABEL_10:
    (*(v6 + 8))(v8, v5);
    return;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDC080, &qword_25BD7C0D0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_25BD7C090;
  v22 = v12;
  v18 = sub_25BD799B8();
  v20 = v19;
  *(v17 + 56) = v15;
  *(v17 + 64) = sub_25BD71830();
  *(v17 + 32) = v18;
  *(v17 + 40) = v20;
  sub_25BD797C8();
  (*(v6 + 8))(v8, v5);
}

unint64_t sub_25BD70E94(uint64_t a1, uint64_t a2)
{
  sub_25BD799D8();
  sub_25BD797E8();
  v4 = sub_25BD799F8();

  return sub_25BD70F0C(a1, a2, v4);
}

unint64_t sub_25BD70F0C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_25BD799C8())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t _s17NewDeviceOutreach41NDOSettingsCoverageSectionOfferPropertiesV4LinkV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_25BD799C8() & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for NDOSettingsCoverageSectionOfferProperties.Link(0);
  if ((sub_25BD79648() & 1) == 0 || (sub_25BD6FF24(*(a1 + *(v5 + 24)), *(a2 + *(v5 + 24))) & 1) == 0)
  {
    return 0;
  }

  v6 = *(v5 + 28);
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);

  return sub_25BD6FF24(v7, v8);
}

BOOL _s17NewDeviceOutreach41NDOSettingsCoverageSectionOfferPropertiesV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = sub_25BD796C8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDC010, &qword_25BD7C0A0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v36 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDC090, &qword_25BD7C480);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  if (*a1 != *a2 && (sub_25BD799C8() & 1) == 0)
  {
    return 0;
  }

  v14 = type metadata accessor for NDOSettingsCoverageSectionOfferProperties.Link(0);
  if ((sub_25BD79648() & 1) == 0 || (sub_25BD6FF24(*(a1 + *(v14 + 24)), *(a2 + *(v14 + 24))) & 1) == 0 || (sub_25BD6FF24(*(a1 + *(v14 + 28)), *(a2 + *(v14 + 28))) & 1) == 0)
  {
    return 0;
  }

  v15 = type metadata accessor for NDOSettingsCoverageSectionOfferProperties(0);
  v16 = v15[5];
  v17 = (a1 + v16);
  v18 = *(a1 + v16 + 8);
  v19 = (a2 + v16);
  v20 = v19[1];
  if (v18)
  {
    if (!v20)
    {
      return 0;
    }

    if (*v17 != *v19 || v18 != v20)
    {
      v21 = v15;
      v22 = sub_25BD799C8();
      v15 = v21;
      if ((v22 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v20)
  {
    return 0;
  }

  v23 = v15[6];
  v24 = (a1 + v23);
  v25 = *(a1 + v23 + 8);
  v26 = (a2 + v23);
  v27 = v26[1];
  if (v25)
  {
    if (!v27)
    {
      return 0;
    }

    if (*v24 != *v26 || v25 != v27)
    {
      v28 = v15;
      v29 = sub_25BD799C8();
      v15 = v28;
      if ((v29 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v27)
  {
    return 0;
  }

  v30 = v15[7];
  v31 = *(v11 + 48);
  sub_25BD6F4A4(a1 + v30, v13);
  sub_25BD6F4A4(a2 + v30, &v13[v31]);
  v32 = *(v5 + 48);
  if (v32(v13, 1, v4) != 1)
  {
    sub_25BD6F4A4(v13, v10);
    if (v32(&v13[v31], 1, v4) == 1)
    {
      (*(v5 + 8))(v10, v4);
      goto LABEL_25;
    }

    (*(v5 + 32))(v7, &v13[v31], v4);
    sub_25BD714F0(&qword_27FBDC098, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
    v34 = sub_25BD79798();
    v35 = *(v5 + 8);
    v35(v7, v4);
    v35(v10, v4);
    sub_25BD6E248(v13, &qword_27FBDC010, &qword_25BD7C0A0);
    return (v34 & 1) != 0;
  }

  if (v32(&v13[v31], 1, v4) != 1)
  {
LABEL_25:
    sub_25BD6E248(v13, &qword_27FBDC090, &qword_25BD7C480);
    return 0;
  }

  sub_25BD6E248(v13, &qword_27FBDC010, &qword_25BD7C0A0);
  return 1;
}

unint64_t sub_25BD7149C()
{
  result = qword_27FBDC2C0;
  if (!qword_27FBDC2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBDC2C0);
  }

  return result;
}

uint64_t sub_25BD714F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25BD71538(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NDOSettingsCoverageSectionOfferProperties.Link(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25BD7159C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDC010, &qword_25BD7C0A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25BD7160C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25BD71674(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_25BD716D4()
{
  result = qword_27FBDC2C8[0];
  if (!qword_27FBDC2C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FBDC2C8);
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

uint64_t sub_25BD71770(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBDC160, &qword_25BD7C0C0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25BD717DC()
{
  result = qword_27FBDC078;
  if (!qword_27FBDC078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBDC078);
  }

  return result;
}

unint64_t sub_25BD71830()
{
  result = qword_27FBDC088;
  if (!qword_27FBDC088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBDC088);
  }

  return result;
}

void sub_25BD71884(uint64_t a1)
{
  type metadata accessor for NDOSettingsCoverageSectionOfferProperties.Link(319);
  if (v1 <= 0x3F)
  {
    sub_25BD71920();
    if (v2 <= 0x3F)
    {
      sub_25BD71970(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_25BD71920()
{
  if (!qword_28145A590)
  {
    v0 = sub_25BD79898();
    if (!v1)
    {
      atomic_store(v0, &qword_28145A590);
    }
  }
}

void sub_25BD71970(uint64_t a1)
{
  if (!qword_28145A758)
  {
    sub_25BD796C8();
    v1 = sub_25BD79898();
    if (!v2)
    {
      atomic_store(v1, &qword_28145A758);
    }
  }
}

void sub_25BD719C8(uint64_t a1)
{
  sub_25BD79678();
  if (v1 <= 0x3F)
  {
    sub_25BD71A5C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_25BD71A5C()
{
  if (!qword_28145A598[0])
  {
    v0 = sub_25BD79788();
    if (!v1)
    {
      atomic_store(v0, qword_28145A598);
    }
  }
}

uint64_t sub_25BD71ACC(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_25BD71B60(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_25BD71C24()
{
  result = qword_27FBDC650[0];
  if (!qword_27FBDC650[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FBDC650);
  }

  return result;
}

unint64_t sub_25BD71C7C()
{
  result = qword_27FBDC860[0];
  if (!qword_27FBDC860[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FBDC860);
  }

  return result;
}

unint64_t sub_25BD71CD4()
{
  result = qword_27FBDC970;
  if (!qword_27FBDC970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBDC970);
  }

  return result;
}

unint64_t sub_25BD71D2C()
{
  result = qword_27FBDC978;
  if (!qword_27FBDC978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBDC978);
  }

  return result;
}

unint64_t sub_25BD71D84()
{
  result = qword_27FBDCA00;
  if (!qword_27FBDCA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBDCA00);
  }

  return result;
}

unint64_t sub_25BD71DDC()
{
  result = qword_27FBDCA08[0];
  if (!qword_27FBDCA08[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FBDCA08);
  }

  return result;
}

uint64_t sub_25BD71E30(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1802398060 && a2 == 0xE400000000000000;
  if (v3 || (sub_25BD799C8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x72616C75676E6973 && a2 == 0xEE007265746F6F46 || (sub_25BD799C8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F466C6172756C70 && a2 == 0xEC0000007265746FLL || (sub_25BD799C8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6974617269707865 && a2 == 0xEA00000000006E6FLL)
  {

    return 3;
  }

  else
  {
    v6 = sub_25BD799C8();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_25BD71FA8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C6562616CLL && a2 == 0xE500000000000000;
  if (v4 || (sub_25BD799C8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000 || (sub_25BD799C8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x800000025BD7EA10 == a2 || (sub_25BD799C8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C79615079646F62 && a2 == 0xEB0000000064616FLL)
  {

    return 3;
  }

  else
  {
    v6 = sub_25BD799C8();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t NDOWarrantyProperties.serialNumber.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t NDOWarrantyProperties.coverageLabel.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t NDOWarrantyProperties.coverageExpirationLabel.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t NDOWarrantyProperties.settingsCoverageSectionOfferProperties.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for NDOWarrantyProperties(0) + 32);

  return sub_25BD72214(v3, a1);
}

uint64_t sub_25BD72214(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDC0A0, &qword_25BD7C490);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25BD72288@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_25BD72C20(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_25BD722BC(uint64_t a1)
{
  v2 = sub_25BD53DFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BD722F8(uint64_t a1)
{
  v2 = sub_25BD53DFC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NDOWarrantyProperties.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDC0A8, &qword_25BD7C498);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BD53DFC();
  sub_25BD79A18();
  v8[15] = 0;
  sub_25BD79988();
  if (!v1)
  {
    v8[14] = 1;
    sub_25BD79998();
    v8[13] = 2;
    sub_25BD79988();
    v8[12] = 3;
    sub_25BD79968();
    type metadata accessor for NDOWarrantyProperties(0);
    v8[11] = 4;
    type metadata accessor for NDOSettingsCoverageSectionOfferProperties(0);
    sub_25BD53E88(&qword_27FBDC0B0, &protocol conformance descriptor for NDOSettingsCoverageSectionOfferProperties);
    sub_25BD79978();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_25BD7257C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  v10 = a9 + *(type metadata accessor for NDOWarrantyProperties(0) + 32);

  return sub_25BD5472C(a8, v10);
}

BOOL _s17NewDeviceOutreach21NDOWarrantyPropertiesV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NDOSettingsCoverageSectionOfferProperties(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDC0A0, &qword_25BD7C490);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDC0C0, &unk_25BD7C690);
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - v12;
  if (*a1 != *a2 && (sub_25BD799C8() & 1) == 0 || *(a1 + 16) != *(a2 + 16) || (*(a1 + 24) != *(a2 + 24) || *(a1 + 32) != *(a2 + 32)) && (sub_25BD799C8() & 1) == 0)
  {
    return 0;
  }

  v15 = *(a1 + 48);
  v16 = *(a2 + 48);
  if (v15)
  {
    if (!v16 || (*(a1 + 40) != *(a2 + 40) || v15 != v16) && (sub_25BD799C8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v16)
  {
    return 0;
  }

  v17 = *(type metadata accessor for NDOWarrantyProperties(0) + 32);
  v18 = *(v11 + 48);
  sub_25BD72214(a1 + v17, v13);
  sub_25BD72214(a2 + v17, &v13[v18]);
  v19 = *(v5 + 48);
  if (v19(v13, 1, v4) != 1)
  {
    sub_25BD72214(v13, v10);
    if (v19(&v13[v18], 1, v4) == 1)
    {
      sub_25BD72DF0(v10, type metadata accessor for NDOSettingsCoverageSectionOfferProperties);
      goto LABEL_20;
    }

    sub_25BD72E50(&v13[v18], v7);
    sub_25BD53E88(&qword_27FBDC0C8, &protocol conformance descriptor for NDOSettingsCoverageSectionOfferProperties);
    v20 = sub_25BD79798();
    sub_25BD72DF0(v7, type metadata accessor for NDOSettingsCoverageSectionOfferProperties);
    sub_25BD72DF0(v10, type metadata accessor for NDOSettingsCoverageSectionOfferProperties);
    sub_25BD6E248(v13, &qword_27FBDC0A0, &qword_25BD7C490);
    return (v20 & 1) != 0;
  }

  if (v19(&v13[v18], 1, v4) != 1)
  {
LABEL_20:
    sub_25BD6E248(v13, &qword_27FBDC0C0, &unk_25BD7C690);
    return 0;
  }

  sub_25BD6E248(v13, &qword_27FBDC0A0, &qword_25BD7C490);
  return 1;
}

void sub_25BD7297C(uint64_t a1)
{
  sub_25BD71920();
  if (v1 <= 0x3F)
  {
    sub_25BD72A20(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_25BD72A20(uint64_t a1)
{
  if (!qword_28145A5F8[0])
  {
    type metadata accessor for NDOSettingsCoverageSectionOfferProperties(255);
    v1 = sub_25BD79898();
    if (!v2)
    {
      atomic_store(v1, qword_28145A5F8);
    }
  }
}

uint64_t getEnumTagSinglePayload for NDOWarrantyProperties.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

unint64_t sub_25BD72B1C()
{
  result = qword_27FBDCB90[0];
  if (!qword_27FBDCB90[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FBDCB90);
  }

  return result;
}

unint64_t sub_25BD72B74()
{
  result = qword_28145AA90;
  if (!qword_28145AA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28145AA90);
  }

  return result;
}

unint64_t sub_25BD72BCC()
{
  result = qword_28145AA98;
  if (!qword_28145AA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28145AA98);
  }

  return result;
}

uint64_t sub_25BD72C20(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x754E6C6169726573 && a2 == 0xEC0000007265626DLL;
  if (v4 || (sub_25BD799C8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7466656854736168 && a2 == 0xEF73736F4C646E41 || (sub_25BD799C8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6567617265766F63 && a2 == 0xED00006C6562614CLL || (sub_25BD799C8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000017 && 0x800000025BD7EA30 == a2 || (sub_25BD799C8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000026 && 0x800000025BD7EA50 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_25BD799C8();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_25BD72DF0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_25BD72E50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NDOSettingsCoverageSectionOfferProperties(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_25BD72EB4()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_25BD797A8();
  v2 = [v0 initWithSuiteName_];

  if (!v2)
  {
    v2 = [objc_opt_self() standardUserDefaults];
  }

  qword_27FBDCCA8 = v2;
}

uint64_t *sub_25BD72F50()
{
  if (qword_27FBDCCA0 != -1)
  {
    swift_once();
  }

  return &qword_27FBDCCA8;
}

id static NDODeviceServicesInternalDebugHelpers.preferences.getter()
{
  if (qword_27FBDCCA0 != -1)
  {
    swift_once();
  }

  v1 = qword_27FBDCCA8;

  return v1;
}

uint64_t static NDODeviceServicesInternalDebugHelpers.getLocalURLOverridesForDeviceServices()()
{
  if (![objc_opt_self() isInternal])
  {
    return 0;
  }

  if (qword_27FBDCCA0 != -1)
  {
    swift_once();
  }

  v0 = qword_27FBDCCA8;
  v1 = sub_25BD797A8();
  v2 = [v0 stringForKey_];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_25BD797B8();

  return v3;
}

id NDODeviceServicesInternalDebugHelpers.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id NDODeviceServicesInternalDebugHelpers.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NDODeviceServicesInternalDebugHelpers();
  return objc_msgSendSuper2(&v2, sel_init);
}

id NDODeviceServicesInternalDebugHelpers.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NDODeviceServicesInternalDebugHelpers();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_25BD73374()
{
  v1 = (v0 + OBJC_IVAR___NDOACCoverageDetails_coverageLabel);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_25BD73438(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___NDOACCoverageDetails_coverageLabel);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_25BD73498()
{
  v1 = OBJC_IVAR___NDOACCoverageDetails_hasTheftAndLoss;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_25BD73530(char a1)
{
  v3 = OBJC_IVAR___NDOACCoverageDetails_hasTheftAndLoss;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

char *sub_25BD73580(uint64_t a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4 = *(a1 + 24);
  v3 = *(a1 + 32);
  v5 = &v2[OBJC_IVAR___NDOACCoverageDetails_coverageLabel];
  swift_beginAccess();
  *v5 = v4;
  *(v5 + 1) = v3;
  v6 = v2;

  LOBYTE(v3) = *(a1 + 16);
  sub_25BD74538(a1, type metadata accessor for NDOWarrantyProperties);
  v7 = OBJC_IVAR___NDOACCoverageDetails_hasTheftAndLoss;
  swift_beginAccess();
  v6[v7] = v3;

  return v6;
}

void sub_25BD73664(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, unint64_t a5, void (*a6)(char *, void *), uint64_t a7)
{
  v88 = a7;
  v89 = a6;
  v86 = a2;
  v87 = a4;
  v85 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDC0E8, &qword_25BD7C718);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v79 - v10;
  v12 = type metadata accessor for NDOWarrantyProperties(0);
  v84 = *(v12 - 8);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v79 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v79 - v19;
  v21 = sub_25BD79748();
  v22 = *(v21 - 8);
  v23 = MEMORY[0x28223BE20](v21);
  v24 = MEMORY[0x28223BE20](v23);
  MEMORY[0x28223BE20](v24);
  v28 = &v79 - v27;
  if (a3)
  {
    v29 = a3;
    v30 = sub_25BD54A64();
    (*(v22 + 16))(v28, v30, v21);
    v31 = a3;

    v32 = sub_25BD79728();
    v33 = sub_25BD79828();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v90[0] = v36;
      *v34 = 136315394;
      *(v34 + 4) = sub_25BD54AC8(v87, a5, v90);
      *(v34 + 12) = 2112;
      v37 = a3;
      v38 = _swift_stdlib_bridgeErrorToNSError();
      *(v34 + 14) = v38;
      *v35 = v38;
      _os_log_impl(&dword_25BD52000, v32, v33, "Cached coverage details request failed for serial number %s with error: %@", v34, 0x16u);
      sub_25BD6E248(v35, &qword_27FBDC0F8, qword_25BD7C720);
      MEMORY[0x25F87B060](v35, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v36);
      MEMORY[0x25F87B060](v36, -1, -1);
      MEMORY[0x25F87B060](v34, -1, -1);
    }

    (*(v22 + 8))(v28, v21);
    v39 = a3;
    v89(0, a3);

LABEL_10:
    return;
  }

  v40 = v11;
  v79 = v18;
  v80 = v15;
  v82 = v26;
  v83 = a5;
  v81 = v20;
  v41 = v86;
  if (v86 >> 60 == 15)
  {
    v43 = sub_25BD54A64();
    v44 = v82;
    (*(v22 + 16))(v82, v43, v21);
    v45 = v83;

    v46 = sub_25BD79728();
    v47 = sub_25BD79828();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v90[0] = v49;
      *v48 = 136315138;
      *(v48 + 4) = sub_25BD54AC8(v87, v45, v90);
      _os_log_impl(&dword_25BD52000, v46, v47, "Failed to decode cached coverage details response data for serial number %s", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v49);
      MEMORY[0x25F87B060](v49, -1, -1);
      MEMORY[0x25F87B060](v48, -1, -1);
    }

    (*(v22 + 8))(v44, v21);
    v50 = sub_25BD79758();
    sub_25BD53D58(&qword_27FBDC0F0, MEMORY[0x277D2B638], MEMORY[0x277D2B640]);
    a3 = swift_allocError();
    (*(*(v50 - 8) + 104))(v51, *MEMORY[0x277D2B630], v50);
    v89(0, a3);
    goto LABEL_10;
  }

  v42 = v25;
  sub_25BD795C8();
  swift_allocObject();
  sub_25BD53D04(v85, v41);
  sub_25BD795B8();
  sub_25BD53D58(&qword_28145A750, type metadata accessor for NDOWarrantyProperties, &protocol conformance descriptor for NDOWarrantyProperties);
  sub_25BD795A8();

  (*(v84 + 56))(v40, 0, 1, v12);
  v52 = v81;
  sub_25BD7459C(v40, v81, type metadata accessor for NDOWarrantyProperties);
  v53 = sub_25BD54A64();
  v54 = v22;
  v55 = v42;
  (*(v22 + 16))(v42, v53, v21);
  v56 = v79;
  sub_25BD74604(v52, v79, type metadata accessor for NDOWarrantyProperties);
  v57 = sub_25BD79728();
  v58 = sub_25BD79838();
  if (os_log_type_enabled(v57, v58))
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v90[0] = v61;
    *v60 = 136315138;
    v62 = v56;
    v87 = v21;
    v63 = v56;
    v64 = v80;
    sub_25BD74604(v62, v80, type metadata accessor for NDOWarrantyProperties);
    v65 = sub_25BD797D8();
    v67 = v66;
    sub_25BD74538(v63, type metadata accessor for NDOWarrantyProperties);
    v68 = sub_25BD54AC8(v65, v67, v90);
    v69 = v64;

    *(v60 + 4) = v68;
    _os_log_impl(&dword_25BD52000, v57, v58, "Successfully retrieved cached coverage details %s", v60, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v61);
    v70 = v61;
    v52 = v81;
    MEMORY[0x25F87B060](v70, -1, -1);
    MEMORY[0x25F87B060](v60, -1, -1);

    (*(v54 + 8))(v55, v87);
    v71 = v85;
  }

  else
  {

    sub_25BD74538(v56, type metadata accessor for NDOWarrantyProperties);
    (*(v22 + 8))(v55, v21);
    v71 = v85;
    v69 = v80;
  }

  sub_25BD74604(v52, v69, type metadata accessor for NDOWarrantyProperties);
  v72 = [objc_allocWithZone(NDOACCoverageDetails) init];
  v74 = *(v69 + 24);
  v73 = *(v69 + 32);
  v75 = &v72[OBJC_IVAR___NDOACCoverageDetails_coverageLabel];
  swift_beginAccess();
  *v75 = v74;
  *(v75 + 1) = v73;
  v76 = v72;

  LOBYTE(v73) = *(v69 + 16);
  sub_25BD74538(v69, type metadata accessor for NDOWarrantyProperties);
  v77 = OBJC_IVAR___NDOACCoverageDetails_hasTheftAndLoss;
  swift_beginAccess();
  v76[v77] = v73;

  v78 = v76;
  v89(v76, 0);
  sub_25BD54D60(v71, v86);

  sub_25BD74538(v52, type metadata accessor for NDOWarrantyProperties);
}

NDOACCoverageDetailsProvider __swiftcall NDOACCoverageDetailsProvider.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

void *sub_25BD740A8(uint64_t a1, unint64_t a2)
{
  v3 = sub_25BD740F4(a1, a2);
  sub_25BD74224(&unk_286D684E8);
  return v3;
}

void *sub_25BD740F4(uint64_t a1, unint64_t a2)
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

  v6 = sub_25BD74310(v5, 0);
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

  result = sub_25BD798F8();
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
        v10 = sub_25BD79808();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_25BD74310(v10, 0);
        result = sub_25BD798E8();
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

uint64_t sub_25BD74224(uint64_t result)
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

  result = sub_25BD74384(result, v11, 1, v3);
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

void *sub_25BD74310(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDC0E0, &qword_25BD7C710);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_25BD74384(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDC0E0, &qword_25BD7C710);
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

void sub_25BD744A0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for NDOSignpost(0);
  (*(v2 + 16))(a1, a2);
  sub_25BD6D5AC();
}

uint64_t sub_25BD74538(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_25BD7459C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_25BD74604(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

NDOUniversalLinkUtilities __swiftcall NDOUniversalLinkUtilities.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t _sSo25NDOUniversalLinkUtilitiesC17NewDeviceOutreachE11isValidPathySbSSFZ_0(uint64_t a1, uint64_t a2)
{
  sub_25BD797B8();
  v4 = sub_25BD79818();

  if (v4)
  {
    if (sub_25BD797B8() == a1 && v5 == a2)
    {
    }

    else
    {
      v6 = sub_25BD799C8();

      if ((v6 & 1) == 0)
      {
        goto LABEL_16;
      }
    }
  }

  sub_25BD797B8();
  v7 = sub_25BD79818();

  if (v7)
  {
    if (sub_25BD797B8() == a1 && v8 == a2)
    {

      goto LABEL_11;
    }

    v9 = sub_25BD799C8();

    if (v9)
    {
      goto LABEL_11;
    }

LABEL_16:
    v12 = 1;
    return v12 & 1;
  }

LABEL_11:
  sub_25BD797B8();
  v10 = sub_25BD79818();

  if (v10)
  {
    if (sub_25BD797B8() != a1 || v11 != a2)
    {
      v13 = sub_25BD799C8();

      v12 = v13 ^ 1;
      return v12 & 1;
    }
  }

  v12 = 0;
  return v12 & 1;
}

unint64_t type metadata accessor for NDOUniversalLinkUtilities()
{
  result = qword_27FBDCCC0;
  if (!qword_27FBDCCC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FBDCCC0);
  }

  return result;
}

void sub_25BD7495C(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  sub_25BD6D2AC(a1, a2);
  sub_25BD79858();
  v3 = *(a2 + *(type metadata accessor for NDOSignpost(0) + 20));
  v4 = sub_25BD6D370(v3);
  sub_25BD6D418(v3);
  sub_25BD796F8();
}

NDOManagerSupportAppUtilities __swiftcall NDOManagerSupportAppUtilities.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t sub_25BD74B68(uint64_t a1)
{
  v2 = sub_25BD798B8();

  return sub_25BD74BAC(a1, v2);
}

unint64_t sub_25BD74BAC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_25BD75A80(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x25F87A710](v9, a1);
      sub_25BD75ADC(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_25BD74C74(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBDC120, &qword_25BD7C7A0);
    v3 = sub_25BD79908();
    v4 = a1 + 32;

    while (1)
    {
      sub_25BD6E1E0(v4, v13, &qword_27FBDC108, &qword_25BD7C788);
      result = sub_25BD74B68(v13);
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
      result = sub_25BD75A70(&v15, (v3[7] + 32 * result));
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

id sub_25BD74DB0(uint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{
  v75 = a3;
  v76 = a4;
  v81 = a1;
  v5 = sub_25BD79748();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25BD79678();
  v73 = *(v9 - 8);
  v74 = v9;
  MEMORY[0x28223BE20](v9);
  v72 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for NDOSettingsCoverageSectionOfferProperties.Link(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDC0A0, &qword_25BD7C490);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v80 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v79 = &v68 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v78 = &v68 - v20;
  MEMORY[0x28223BE20](v19);
  v77 = &v68 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDC0E8, &qword_25BD7C718);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v68 - v23;
  v25 = type metadata accessor for NDOWarrantyProperties(0);
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v82 = &v68 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 >> 60 == 15)
  {
    v28 = sub_25BD54A64();
    (*(v6 + 16))(v8, v28, v5);
    v29 = sub_25BD79728();
    v30 = sub_25BD79828();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_25BD52000, v29, v30, "Unable to decode coverage info", v31, 2u);
      MEMORY[0x25F87B060](v31, -1, -1);
    }

    (*(v6 + 8))(v8, v5);
    return 0;
  }

  else
  {
    v70 = v11;
    v71 = v5;
    v69 = v13;
    sub_25BD795C8();
    swift_allocObject();
    sub_25BD53D04(v81, a2);
    sub_25BD795B8();
    sub_25BD75954();
    sub_25BD795A8();
    v71 = a2;

    (*(v26 + 56))(v24, 0, 1, v25);
    v33 = v82;
    sub_25BD54A00(v24, v82);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDC100, &qword_25BD7C780);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_25BD7C090;
    strcpy(v83, "serialNumber");
    BYTE5(v83[1]) = 0;
    HIWORD(v83[1]) = -5120;
    v35 = MEMORY[0x277D837D0];
    sub_25BD798D8();
    *(inited + 96) = v35;
    v36 = v76;
    *(inited + 72) = v75;
    *(inited + 80) = v36;

    sub_25BD74C74(inited);
    swift_setDeallocating();
    sub_25BD6E248(inited + 32, &qword_27FBDC108, &qword_25BD7C788);
    v37 = sub_25BD79768();

    v76 = [objc_opt_self() deviceWithDeviceListDevice_];

    v38 = swift_initStackObject();
    *(v38 + 16) = xmmword_25BD7C770;
    v83[0] = 0x45726566664F6361;
    v83[1] = 0xEF656C626967696CLL;
    sub_25BD798D8();
    v39 = *(v25 + 32);
    v40 = &v39[v33];
    v41 = v77;
    sub_25BD6E1E0(v40, v77, &qword_27FBDC0A0, &qword_25BD7C490);
    v42 = type metadata accessor for NDOSettingsCoverageSectionOfferProperties(0);
    v43 = *(*(v42 - 8) + 48);
    if (v43(v41, 1, v42) == 1)
    {
      sub_25BD6E248(v41, &qword_27FBDC0A0, &qword_25BD7C490);
      v44 = 0;
    }

    else
    {
      v45 = NDOSettingsCoverageSectionOfferProperties.isValid.getter();
      sub_25BD75A10(v41, type metadata accessor for NDOSettingsCoverageSectionOfferProperties);
      v44 = v45;
    }

    v46 = v78;
    *(v38 + 96) = MEMORY[0x277D839B0];
    *(v38 + 72) = v44;
    v83[0] = 0x4C5255736761;
    v83[1] = 0xE600000000000000;
    sub_25BD798D8();
    *(v38 + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDC110, &qword_25BD7C790);
    v78 = v39;
    sub_25BD6E1E0(&v39[v82], v46, &qword_27FBDC0A0, &qword_25BD7C490);
    if (v43(v46, 1, v42) == 1)
    {
      sub_25BD6E248(v46, &qword_27FBDC0A0, &qword_25BD7C490);
      v47 = 0;
      v48 = 0;
    }

    else
    {
      v49 = v69;
      sub_25BD759AC(v46, v69);
      sub_25BD75A10(v46, type metadata accessor for NDOSettingsCoverageSectionOfferProperties);
      v50 = v72;
      v51 = v73;
      v52 = v74;
      (*(v73 + 16))(v72, v49 + v70[5], v74);
      sub_25BD75A10(v49, type metadata accessor for NDOSettingsCoverageSectionOfferProperties.Link);
      v47 = sub_25BD79618();
      v48 = v53;
      (*(v51 + 8))(v50, v52);
    }

    *(v38 + 144) = v47;
    *(v38 + 152) = v48;
    v83[0] = 0xD00000000000001DLL;
    v83[1] = 0x800000025BD7EC80;
    sub_25BD798D8();
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDC118, &qword_25BD7C798);
    *(v38 + 240) = v54;
    v56 = v78;
    v55 = v79;
    sub_25BD6E1E0(&v78[v82], v79, &qword_27FBDC0A0, &qword_25BD7C490);
    if (v43(v55, 1, v42) == 1)
    {
      sub_25BD6E248(v55, &qword_27FBDC0A0, &qword_25BD7C490);
      v57 = 0;
    }

    else
    {
      v58 = v69;
      sub_25BD759AC(v55, v69);
      sub_25BD75A10(v55, type metadata accessor for NDOSettingsCoverageSectionOfferProperties);
      v57 = *(v58 + v70[6]);

      sub_25BD75A10(v58, type metadata accessor for NDOSettingsCoverageSectionOfferProperties.Link);
    }

    *(v38 + 216) = v57;
    v83[0] = 0xD00000000000001ALL;
    v83[1] = 0x800000025BD7ECA0;
    sub_25BD798D8();
    *(v38 + 312) = v54;
    v59 = v80;
    sub_25BD6E1E0(&v56[v82], v80, &qword_27FBDC0A0, &qword_25BD7C490);
    if (v43(v59, 1, v42) == 1)
    {
      sub_25BD6E248(v59, &qword_27FBDC0A0, &qword_25BD7C490);
      v60 = 0;
    }

    else
    {
      v61 = v69;
      sub_25BD759AC(v59, v69);
      sub_25BD75A10(v59, type metadata accessor for NDOSettingsCoverageSectionOfferProperties);
      v60 = *(v61 + v70[7]);

      sub_25BD75A10(v61, type metadata accessor for NDOSettingsCoverageSectionOfferProperties.Link);
    }

    *(v38 + 288) = v60;
    sub_25BD74C74(v38);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDC108, &qword_25BD7C788);
    swift_arrayDestroy();
    v62 = objc_allocWithZone(NDOWarranty);
    v63 = sub_25BD79768();

    v64 = [v62 initWithDictionary_];

    v65 = objc_opt_self();
    v66 = v76;
    v67 = [v65 deviceInfoWithDevice:v76 warranty:v64];
    sub_25BD54D60(v81, v71);

    sub_25BD75A10(v82, type metadata accessor for NDOWarrantyProperties);
    return v67;
  }
}

unint64_t type metadata accessor for NDOManagerSupportAppUtilities()
{
  result = qword_27FBDCCC8;
  if (!qword_27FBDCCC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FBDCCC8);
  }

  return result;
}

unint64_t sub_25BD75954()
{
  result = qword_28145A750;
  if (!qword_28145A750)
  {
    type metadata accessor for NDOWarrantyProperties(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28145A750);
  }

  return result;
}

uint64_t sub_25BD759AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NDOSettingsCoverageSectionOfferProperties.Link(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25BD75A10(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

_OWORD *sub_25BD75A70(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t NDOAMSPropertiesRequestContext.serialNumber.getter()
{
  v1 = *(v0 + OBJC_IVAR___NDOAMSPropertiesRequestContext_serialNumber);

  return v1;
}

id sub_25BD75BB4(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a1 + *a3 + 8))
  {

    v3 = sub_25BD797A8();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t NDOAMSPropertiesRequestContext.universalLinkPath.getter()
{
  v1 = *(v0 + OBJC_IVAR___NDOAMSPropertiesRequestContext_universalLinkPath);

  return v1;
}

id NDOAMSPropertiesRequestContext.init(requestType:serialNumber:universalLinkPath:additionalBody:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!a3)
  {
    v8 = 0;
    if (a5)
    {
      goto LABEL_3;
    }

LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }

  v8 = sub_25BD797A8();

  if (!a5)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9 = sub_25BD797A8();

LABEL_6:
  v10 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v11 = sub_25BD79768();

  v12 = [v10 initWithRequestType:a1 serialNumber:v8 universalLinkPath:v9 additionalBody:v11];

  return v12;
}

{
  *(v6 + OBJC_IVAR___NDOAMSPropertiesRequestContext_requestType) = a1;
  v7 = (v6 + OBJC_IVAR___NDOAMSPropertiesRequestContext_serialNumber);
  *v7 = a2;
  v7[1] = a3;
  v8 = (v6 + OBJC_IVAR___NDOAMSPropertiesRequestContext_universalLinkPath);
  *v8 = a4;
  v8[1] = a5;
  *(v6 + OBJC_IVAR___NDOAMSPropertiesRequestContext_additionalBody) = a6;
  v10.super_class = NDOAMSPropertiesRequestContext;
  return objc_msgSendSuper2(&v10, sel_init);
}

id NDOAMSPropertiesRequestContext.init(coder:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];

  return v2;
}

void NDOAMSPropertiesRequestContext.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = sub_25BD79748();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_25BD797A8();
  v9 = [a1 decodeIntegerForKey_];

  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    sub_25BD6F2F4(0, &unk_27FBDC150, 0x277CCACA8);
    v10 = sub_25BD79878();
    if (v10 && (v31 = v10, __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBDBF30, &qword_25BD7C080), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDC160, &qword_25BD7C0C0), (swift_dynamicCast() & 1) != 0))
    {
      v11 = v30;
      *&v2[OBJC_IVAR___NDOAMSPropertiesRequestContext_requestType] = v9;
      v12 = sub_25BD79868();
      if (v12)
      {
        v13 = v12;
        v14 = sub_25BD797B8();
        v16 = v15;
      }

      else
      {
        v14 = 0;
        v16 = 0;
      }

      v22 = &v2[OBJC_IVAR___NDOAMSPropertiesRequestContext_serialNumber];
      *v22 = v14;
      v22[1] = v16;
      v23 = sub_25BD79868();
      if (v23)
      {
        v24 = v23;
        v25 = sub_25BD797B8();
        v27 = v26;
      }

      else
      {
        v25 = 0;
        v27 = 0;
      }

      v28 = &v2[OBJC_IVAR___NDOAMSPropertiesRequestContext_universalLinkPath];
      *v28 = v25;
      v28[1] = v27;
      *&v2[OBJC_IVAR___NDOAMSPropertiesRequestContext_additionalBody] = v11;
      v29.receiver = v2;
      v29.super_class = NDOAMSPropertiesRequestContext;
      objc_msgSendSuper2(&v29, sel_init);
    }

    else
    {
      v17 = sub_25BD54A64();
      (*(v5 + 16))(v7, v17, v4);
      v18 = sub_25BD79728();
      v19 = sub_25BD79828();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_25BD52000, v18, v19, "Unable to decode from coder", v20, 2u);
        MEMORY[0x25F87B060](v20, -1, -1);
      }

      v21 = (*(v5 + 8))(v7, v4);
      type metadata accessor for NDOAMSPropertiesRequestContext(v21);
      swift_deallocPartialClassInstance();
    }
  }
}

Swift::Void __swiftcall NDOAMSPropertiesRequestContext.encode(with:)(NSCoder with)
{
  v3 = [v1 requestType];
  if (v3 >> 31)
  {
    __break(1u);
  }

  else
  {
    v4 = v3;
    v5 = sub_25BD797A8();
    [(objc_class *)with.super.isa encodeInt:v4 forKey:v5];

    v6 = [v1 serialNumber];
    v7 = sub_25BD797A8();
    [(objc_class *)with.super.isa encodeObject:v6 forKey:v7];

    v8 = [v1 universalLinkPath];
    v9 = sub_25BD797A8();
    [(objc_class *)with.super.isa encodeObject:v8 forKey:v9];

    v10 = [v1 additionalBody];
    sub_25BD79778();

    v11 = sub_25BD79768();

    v12 = sub_25BD797A8();
    [(objc_class *)with.super.isa encodeObject:v11 forKey:v12];
  }
}

id NDOAMSPropertiesRequestContext.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t static NDOUniversalLinkConverter.convertUrl(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDC168, qword_25BD7C7B0);
  MEMORY[0x28223BE20](v4 - 8);
  v76 = &v65 - v5;
  v77 = sub_25BD795F8();
  v79 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v7 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_25BD79678();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_25BD79748();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v68 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v70 = &v65 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v65 - v18;
  v20 = sub_25BD54A64();
  v75 = v13;
  v21 = *(v13 + 16);
  v71 = v20;
  v72 = v21;
  v73 = v13 + 16;
  (v21)(v19);
  v22 = *(v9 + 16);
  v78 = a1;
  v22(v11, a1, v8);
  v23 = sub_25BD79728();
  v24 = sub_25BD79838();
  v25 = os_log_type_enabled(v23, v24);
  v69 = v7;
  v74 = v9;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v67 = a2;
    v27 = v26;
    v28 = swift_slowAlloc();
    v66 = v12;
    v29 = v28;
    v80 = v28;
    *v27 = 136315138;
    sub_25BD77708();
    v30 = sub_25BD799B8();
    v32 = v31;
    (*(v9 + 8))(v11, v8);
    v33 = sub_25BD54AC8(v30, v32, &v80);
    v34 = v77;

    *(v27 + 4) = v33;
    _os_log_impl(&dword_25BD52000, v23, v24, "Converting universal link url: %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v29);
    v35 = v29;
    v12 = v66;
    MEMORY[0x25F87B060](v35, -1, -1);
    v36 = v27;
    a2 = v67;
    MEMORY[0x25F87B060](v36, -1, -1);

    v37 = *(v75 + 8);
    v37(v19, v12);
    v38 = v8;
  }

  else
  {

    (*(v9 + 8))(v11, v8);
    v37 = *(v75 + 8);
    v37(v19, v12);
    v38 = v8;
    v34 = v77;
  }

  v39 = v76;
  sub_25BD795D8();
  if ((*(v79 + 48))(v39, 1, v34) == 1)
  {
    sub_25BD6E248(v39, &qword_27FBDC168, qword_25BD7C7B0);
    v40 = v68;
    v72(v68, v71, v12);
    v41 = sub_25BD79728();
    v42 = sub_25BD79828();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_25BD52000, v41, v42, "Not converting URL, unable to get components", v43, 2u);
      MEMORY[0x25F87B060](v43, -1, -1);
    }

    v37(v40, v12);
    return (*(v74 + 56))(a2, 1, 1, v38);
  }

  v44 = v69;
  (*(v79 + 32))(v69, v39, v34);
  v45 = (sub_25BD79628() + 16);
  if (!*v45)
  {

    goto LABEL_17;
  }

  v46 = v34;
  v47 = &v45[2 * *v45];
  v48 = *v47;
  v49 = v47[1];

  v50 = HIBYTE(v49) & 0xF;
  if ((v49 & 0x2000000000000000) == 0)
  {
    v50 = v48 & 0xFFFFFFFFFFFFLL;
  }

  if (!v50 || v48 == 47 && v49 == 0xE100000000000000 || (sub_25BD799C8() & 1) != 0)
  {

    v34 = v46;
    v44 = v69;
LABEL_17:
    v72(v70, v71, v12);
    v51 = sub_25BD79728();
    v52 = sub_25BD79828();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_25BD52000, v51, v52, "Not converting URL, last path component is not present", v53, 2u);
      MEMORY[0x25F87B060](v53, -1, -1);
    }

    v37(v70, v12);
    (*(v79 + 8))(v44, v34);
    return (*(v74 + 56))(a2, 1, 1, v38);
  }

  v55 = v69;
  v56 = sub_25BD79628();
  if (v56[2] == 3)
  {
    v57 = v56[6];
    v58 = v56[7];
    if ((v57 != 99 || v58 != 0xE100000000000000) && (sub_25BD799C8() & 1) == 0 && (v57 != 100 || v58 != 0xE100000000000000))
    {
      sub_25BD799C8();
    }
  }

  v59 = sub_25BD797B8();
  v61 = v60;

  v63 = MEMORY[0x25F87A430](v62);
  sub_25BD76E80(v59, v61, v48, v49, v63, v64, a2);

  return (*(v79 + 8))(v55, v46);
}

uint64_t sub_25BD76E80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v64 = a7;
  v65 = sub_25BD79748();
  v63 = *(v65 - 8);
  v13 = MEMORY[0x28223BE20](v65);
  v60 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v61 = &v59 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDBF18, &qword_25BD7C078);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v59 - v17;
  v66 = sub_25BD79678();
  v19 = *(v66 - 8);
  v20 = MEMORY[0x28223BE20](v66);
  v22 = &v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v62 = &v59 - v23;
  v69 = 0xD00000000000003ALL;
  v70 = 0x800000025BD7EE20;
  MEMORY[0x25F87A640](a1, a2);

  MEMORY[0x25F87A640](a3, a4);

  v25 = v69;
  v24 = v70;
  if (a6)
  {
    v26 = HIBYTE(a6) & 0xF;
    if ((a6 & 0x2000000000000000) == 0)
    {
      v26 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (v26)
    {
      v67 = 63;
      v68 = 0xE100000000000000;
      MEMORY[0x25F87A640](a5, a6);
      MEMORY[0x25F87A640](v67, v68);

      v25 = v69;
      v24 = v70;
    }
  }

  sub_25BD79668();
  v27 = v66;
  v28 = (*(v19 + 48))(v18, 1, v66);
  v29 = v63;
  if (v28 == 1)
  {
    sub_25BD6E248(v18, &qword_27FBDBF18, &qword_25BD7C078);
    v30 = sub_25BD54A64();
    v31 = v60;
    v32 = v65;
    (*(v29 + 16))(v60, v30, v65);

    v33 = sub_25BD79728();
    v34 = sub_25BD79828();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = v29;
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v67 = v37;
      *v36 = 136315138;
      v38 = sub_25BD54AC8(v25, v24, &v67);

      *(v36 + 4) = v38;
      _os_log_impl(&dword_25BD52000, v33, v34, "Not converting URL, unable to construct url from string: %s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v37);
      v39 = v37;
      v27 = v66;
      MEMORY[0x25F87B060](v39, -1, -1);
      MEMORY[0x25F87B060](v36, -1, -1);

      (*(v35 + 8))(v31, v32);
    }

    else
    {

      (*(v29 + 8))(v31, v32);
    }

    v56 = 1;
    v57 = v64;
  }

  else
  {

    v40 = *(v19 + 32);
    v41 = v62;
    (v40)(v62, v18, v27);
    v42 = sub_25BD54A64();
    v43 = v61;
    v44 = v65;
    (*(v29 + 16))(v61, v42, v65);
    (*(v19 + 16))(v22, v41, v27);
    v45 = sub_25BD79728();
    v46 = sub_25BD79838();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v60 = v40;
      v48 = v47;
      v49 = v29;
      v50 = swift_slowAlloc();
      v67 = v50;
      *v48 = 136315138;
      sub_25BD77708();
      v51 = sub_25BD799B8();
      v53 = v52;
      (*(v19 + 8))(v22, v66);
      v54 = sub_25BD54AC8(v51, v53, &v67);
      v27 = v66;

      *(v48 + 4) = v54;
      _os_log_impl(&dword_25BD52000, v45, v46, "Converted universal link to url: %s", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v50);
      MEMORY[0x25F87B060](v50, -1, -1);
      v55 = v48;
      v40 = v60;
      MEMORY[0x25F87B060](v55, -1, -1);

      (*(v49 + 8))(v61, v65);
    }

    else
    {

      (*(v19 + 8))(v22, v27);
      (*(v29 + 8))(v43, v44);
    }

    v57 = v64;
    (v40)(v64, v62, v27);
    v56 = 0;
  }

  return (*(v19 + 56))(v57, v56, 1, v27);
}

NDOUniversalLinkConverter __swiftcall NDOUniversalLinkConverter.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t sub_25BD77708()
{
  result = qword_27FBDC170;
  if (!qword_27FBDC170)
  {
    sub_25BD79678();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBDC170);
  }

  return result;
}

unint64_t type metadata accessor for NDOUniversalLinkConverter()
{
  result = qword_27FBDCCD8;
  if (!qword_27FBDCCD8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FBDCCD8);
  }

  return result;
}

uint64_t sub_25BD777AC()
{
  v0 = sub_25BD79748();
  __swift_allocate_value_buffer(v0, qword_28145AAB0);
  __swift_project_value_buffer(v0, qword_28145AAB0);
  return sub_25BD79738();
}

uint64_t sub_25BD77828@<X0>(uint64_t a1@<X8>)
{
  if (qword_28145A7D0 != -1)
  {
    swift_once();
  }

  v2 = sub_25BD79748();
  v3 = __swift_project_value_buffer(v2, qword_28145AAB0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
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

id sub_25BD77970()
{
  type metadata accessor for ResourceBundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_27FBDCCE8 = result;
  return result;
}

uint64_t sub_25BD77CA8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_25BD796E8();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  if (qword_27FBDCCE0 != -1)
  {
    swift_once();
  }

  v6 = qword_27FBDCCE8;
  return sub_25BD796D8();
}

uint64_t sub_25BD77D70(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = sub_25BD796E8();

  return __swift_project_value_buffer(v4, a2);
}

uint64_t sub_25BD77DE8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_25BD796E8();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}