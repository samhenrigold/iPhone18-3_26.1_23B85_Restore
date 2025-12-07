id sub_241EFC710(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EC7AA60, &qword_241EFDE48);
  MEMORY[0x28223BE20]();
  v3 = &v11 - v2;
  v4 = sub_241EFD7B4();
  sub_241EFC854();
  v5 = a1;
  sub_241EFD804();

  v6 = *(v4 - 8);
  v7 = (*(v6 + 48))(v3, 1, v4);
  v8 = 0;
  if (v7 != 1)
  {
    v9 = sub_241EFD794();
    (*(v6 + 8))(v3, v4);
    v8 = v9;
  }

  return v8;
}

unint64_t sub_241EFC854()
{
  result = qword_28119E380;
  if (!qword_28119E380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28119E380);
  }

  return result;
}

uint64_t sub_241EFC8A8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_241EFC8E0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

id getCPSWebClipServiceClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCPSWebClipServiceClass_softClass;
  v7 = getCPSWebClipServiceClass_softClass;
  if (!getCPSWebClipServiceClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getCPSWebClipServiceClass_block_invoke;
    v3[3] = &unk_278D29B18;
    v3[4] = &v4;
    __getCPSWebClipServiceClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_241EFCA9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCPSWebClipServiceClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!ClipServicesLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __ClipServicesLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278D29B38;
    v6 = 0;
    ClipServicesLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (ClipServicesLibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np("%s", v4[0]);
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("CPSWebClipService");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCPSWebClipServiceClass_block_invoke_cold_1();
  }

  getCPSWebClipServiceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __ClipServicesLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  ClipServicesLibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t (*sub_241EFD080(uint64_t a1, uint64_t a2))()
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  swift_unknownObjectRetain();
  return sub_241EFD4F0;
}

uint64_t sub_241EFD170(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_241EFD7B4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_241EFD1D0@<X0>(__int128 *a1@<X0>, void *a2@<X8>)
{
  v4 = swift_allocObject();
  *(v4 + 16) = *a1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_241EFD458;
  *(v5 + 24) = v4;
  *a2 = sub_241EFD45C;
  a2[1] = v5;

  return swift_unknownObjectRetain();
}

uint64_t sub_241EFD27C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;

  sub_241EFD7F4();
}

uint64_t getEnumTagSinglePayload for WebClipConnectionOptionDefinition(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for WebClipConnectionOptionDefinition(_WORD *result, int a2, int a3)
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

uint64_t sub_241EFD420(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_241EFD488(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  return (*(v5 + 8))(a1, a2, ObjectType, v5);
}

id sub_241EFD558(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_241EFD7B4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20]();
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_241EFD7A4();
  sub_241EFC854();
  v7 = sub_241EFD7C4();
  (*(v4 + 8))(v6, v3);

  return v7;
}

uint64_t UISceneConnectionOptions.webClipID.getter()
{
  sub_241EFD7B4();
  sub_241EFC854();

  return sub_241EFD804();
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