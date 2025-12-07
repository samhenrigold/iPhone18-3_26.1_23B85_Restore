void sub_1C20AFAEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getWBUFeatureManagerClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!WebUILibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __WebUILibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E8160308;
    v5 = 0;
    WebUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!WebUILibraryCore_frameworkLibrary)
  {
    __getWBUFeatureManagerClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("WBUFeatureManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getWBUFeatureManagerClass_block_invoke_cold_1();
  }

  getWBUFeatureManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1C20AFC7C@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

void *sub_1C20AFCD4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1C20AFD4C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C20AFD94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 16) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_1C2170024();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1C20AFE4C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *(result + 8) = 0;
    *(result + 16) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = sub_1C2170024();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C20AFEF8()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C20AFF30@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_1C20AFFE8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1C20B0000()
{
  MEMORY[0x1C6915430](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C20B0038()
{
  if (*(v0 + 24))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C20B0080(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1C20B0090()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C20B00D8()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C20B0110()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C20B0148()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C20B0180()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF238C0, &qword_1C21771F8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1C20B0214()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C20B024C()
{
  swift_unknownObjectRelease();

  sub_1C20D3174(*(v0 + 40), *(v0 + 48));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C20B0294()
{
  MEMORY[0x1C6915430](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C20B02CC()
{
  if (*(v0 + 24))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

unint64_t sub_1C20B031C(unint64_t result)
{
  if (result >= 6)
  {
    return 6;
  }

  return result;
}

uint64_t sub_1C20B034C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC26AuthenticationServicesCore50ASCPublicKeyCredentialRegistrationExtensionOutputs_largeBlob;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1C20B03A4(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC26AuthenticationServicesCore50ASCPublicKeyCredentialRegistrationExtensionOutputs_largeBlob;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_1C20B03F8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC26AuthenticationServicesCore50ASCPublicKeyCredentialRegistrationExtensionOutputs_prf;
  swift_beginAccess();
  return sub_1C20EB3E8(v3 + v4, a2, &qword_1EBF23BC8, &qword_1C21789D0);
}

uint64_t sub_1C20B0468(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
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
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23BF0, &unk_1C21813F0);
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 20)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_1C20B0524(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23BF0, &unk_1C21813F0);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1C20B05D0(id a1)
{
  if (a1 != 1)
  {
  }
}

uint64_t sub_1C20B05E0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState_name;
  swift_beginAccess();
  return sub_1C20EB3E8(v3 + v4, a2, &unk_1EBF23420, &unk_1C2176820);
}

id sub_1C20B0660@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState_phoneNumber;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

void sub_1C20B06C8(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1C210D3C4(v1);
}

void sub_1C20B0704(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  sub_1C210D748(v1, v2);
}

uint64_t sub_1C20B07C8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C21111D4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C20B07F4(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState____lazy_storage___forwardToEmailAddress);
  v5 = *v4;
  v6 = v4[1];
  *v4 = v3;
  v4[1] = v2;

  return sub_1C2116758(v5, v6);
}

uint64_t sub_1C20B0848@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C21116A0();
  *a1 = result;
  return result;
}

uint64_t sub_1C20B0874(uint64_t *a1, void *a2)
{
  *(*a2 + OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState____lazy_storage___sortedCredentialProviderIdentifiers) = *a1;
}

id sub_1C20B0914(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t sub_1C20B0984@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC26AuthenticationServicesCore31ASCCredentialRequestTestOptions_biometryType;
  result = swift_beginAccess();
  v5 = *(v3 + 8);
  *a2 = *v3;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_1C20B09E0(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2 + OBJC_IVAR____TtC26AuthenticationServicesCore31ASCCredentialRequestTestOptions_biometryType;
  result = swift_beginAccess();
  *v4 = v2;
  *(v4 + 8) = v3;
  return result;
}

uint64_t sub_1C20B0A60(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C21701F4();
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF251D0, &qword_1C2176940);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1C20B0B90(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1C21701F4();
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF251D0, &qword_1C2176940);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1C20B0CC0()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C20B0D14()
{
  _Block_release(*(v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C20B0D6C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C20B0DBC(uint64_t a1)
{
  if ((a1 - 1) > 8)
  {
    return 7;
  }

  else
  {
    return byte_1C217A270[a1 - 1];
  }
}

uint64_t get_enum_tag_for_layout_string_26AuthenticationServicesCore23ASCTAPPRFExtensionInputV9PRFValuesVSg_0(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C20B0E68(unsigned __int8 *a1)
{
  if (a1[1])
  {
    return (*a1 | (a1[1] << 8)) - 255;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1C20B0E88(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    result[1] = ((a2 - 1) >> 8) + 1;
  }

  else
  {
    result[1] = 0;
  }

  return result;
}

uint64_t sub_1C20B0ECC()
{
  if (*v0)
  {
    return 0x646E6F636573;
  }

  else
  {
    return 0x7473726966;
  }
}

uint64_t sub_1C20B0F20(uint64_t a1)
{
  if ((a1 - 1) >= 8)
  {
    return 7;
  }

  else
  {
    return (0x607050403020100uLL >> (8 * (a1 - 1)));
  }
}

uint64_t sub_1C20B0F4C()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C20B0F94()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C20B0FCC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C20B100C()
{
  v1 = *(v0 + 24);
  if (v1 >> 60 != 15)
  {
    sub_1C20D3174(*(v0 + 16), v1);
  }

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C20B1054()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C20B109C()
{
  _Block_release(*(v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C20B10F8()
{
  MEMORY[0x1C6915430](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

unint64_t sub_1C20B113C@<X0>(_BYTE *a1@<X8>, unint64_t a2@<X0>)
{
  result = sub_1C20B1EE8(a2);
  *a1 = result;
  return result;
}

unint64_t sub_1C20B116C@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C20B1EE8(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1C20B11C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23760, &qword_1C2176DC8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = sub_1C21703B4();
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24) + 8) >> 60;
      v15 = ((4 * v14) & 0xC) == 0;
      v16 = ((4 * v14) & 0xC | (v14 >> 2)) ^ 0xF;
      if (v15)
      {
        return 0;
      }

      else
      {
        return v16;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_1C20B12EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23760, &qword_1C2176DC8);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_1C21703B4();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      v15 = (a1 + *(a4 + 24));
      *v15 = 0;
      v15[1] = ((~a2 >> 2) & 3 | (4 * ~a2)) << 60;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1C20B1410(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C21703B4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 2)
    {
      v11 = ((v10 + 2147483646) & 0x7FFFFFFF) - 1;
    }

    else
    {
      v11 = -2;
    }

    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1C20B14E8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C21703B4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 2;
  }

  return result;
}

uint64_t sub_1C20B15A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24FD0, &unk_1C2180BE0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1C21703B4();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28));
  if (v14 <= 5)
  {
    v15 = 5;
  }

  else
  {
    v15 = *(a1 + *(a3 + 28));
  }

  v16 = v15 - 5;
  if (v14 >= 5)
  {
    return v16;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C20B16C0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24FD0, &unk_1C2180BE0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_1C21703B4();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = a2 + 5;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1C20B17DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C21703B4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1C20B1848(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C21703B4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1C20B18B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF25010, &qword_1C2180C08);
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
    v11 = sub_1C21703B4();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1C20B19E8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF25010, &qword_1C2180C08);
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
    v11 = sub_1C21703B4();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1C20B1B1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C21703B4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 <= 5)
    {
      v11 = 5;
    }

    else
    {
      v11 = *(a1 + *(a3 + 20));
    }

    v12 = v11 - 5;
    if (v10 >= 5)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1C20B1BE0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C21703B4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 5;
  }

  return result;
}

uint64_t sub_1C20B1C98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C21703B4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23678, &unk_1C2180C70);
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24) + 8) >> 60;
      v15 = ((4 * v14) & 0xC) == 0;
      v16 = ((4 * v14) & 0xC | (v14 >> 2)) ^ 0xF;
      if (v15)
      {
        return 0;
      }

      else
      {
        return v16;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_1C20B1DBC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1C21703B4();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23678, &unk_1C2180C70);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      v15 = (a1 + *(a4 + 24));
      *v15 = 0;
      v15[1] = ((~a2 >> 2) & 3 | (4 * ~a2)) << 60;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

unint64_t sub_1C20B1EE8(unint64_t result)
{
  if (result >= 5)
  {
    return 5;
  }

  return result;
}

uint64_t sub_1C20B1F10()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C20B1F68()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C20B1FA8()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C20B1FF4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C20B203C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC26AuthenticationServicesCore47ASCPublicKeyCredentialAssertionExtensionOutputs_prf;
  swift_beginAccess();
  return sub_1C20EB3E8(v3 + v4, a2, &qword_1EBF24840, &qword_1C217E130);
}

uint64_t sub_1C20B20B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C2170764();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23BF0, &unk_1C21813F0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1C20B21B0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1C2170764();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23BF0, &unk_1C21813F0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1C20B22B8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1C20D865C(a1, a2);
  }

  return a1;
}

void sub_1C20B22CC(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 >> 60 != 15)
  {
    sub_1C20D865C(a1, a2);

    sub_1C20B22B8(a3, a4);
  }
}

uint64_t get_enum_tag_for_layout_string_26AuthenticationServicesCore35ASCTAPPublicKeyCredentialDescriptorVSg_0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1C20B23C8(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1C20D3174(result, a2);
  }

  return result;
}

uint64_t sub_1C20B23DC(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 >> 60 != 15)
  {
    sub_1C20D3174(result, a2);

    return sub_1C20B23C8(a3, a4);
  }

  return result;
}

void OUTLINED_FUNCTION_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

uint64_t isClientWithAuditTokenProperlyEntitled(__int128 *a1)
{
  v2 = a1[1];
  v16 = *a1;
  v17 = v2;
  HasEntitlement = WBSAuditTokenHasEntitlement();
  if ((HasEntitlement & 1) != 0 || (v5 = a1[1], v16 = *a1, v17 = v5, HasEntitlement = WBSAuditTokenHasEntitlement(), HasEntitlement))
  {
    v6 = WBS_LOG_CHANNEL_PREFIXAuthorization(HasEntitlement, v4);
    v7 = 1;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      LOWORD(v16) = 0;
      v8 = "Client is properly entitled.";
LABEL_5:
      _os_log_impl(&dword_1C20AD000, v6, OS_LOG_TYPE_INFO, v8, &v16, 2u);
    }
  }

  else
  {
    v9 = [ASFeatureManager sharedManager:v16];
    v10 = a1[1];
    v16 = *a1;
    v17 = v10;
    v11 = [v9 isClientEntitledForInternalTestingWithAuditToken:&v16];

    v14 = WBS_LOG_CHANNEL_PREFIXAuthorization(v12, v13);
    v6 = v14;
    if (v11)
    {
      v7 = 1;
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        return v7;
      }

      LOWORD(v16) = 0;
      v8 = "Client has internal testing entitlement.";
      goto LABEL_5;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      isClientWithAuditTokenProperlyEntitled_cold_1(a1, v6);
    }

    return 0;
  }

  return v7;
}

void sub_1C20B58F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C20B5CB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C20B8954(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C20BC7C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, ...)
{
  va_start(va, a42);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C20BEDBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __shouldRequireCABLEAuthenticatorConsentForSourceApplication_block_invoke()
{
  shouldRequireCABLEAuthenticatorConsentForSourceApplication_systemScannerApplications = [MEMORY[0x1E695DFD8] setWithObjects:{@"com.apple.BarcodeScanner", @"com.apple.camera", @"com.apple.springboard", 0}];

  return MEMORY[0x1EEE66BB8]();
}

void OUTLINED_FUNCTION_1_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 2u);
}

id OUTLINED_FUNCTION_7(uint64_t a1, void *a2)
{

  return a2;
}

void OUTLINED_FUNCTION_8(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_fault_impl(a1, v8, OS_LOG_TYPE_FAULT, a4, va, 0xCu);
}

void sub_1C20C1C50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C20C1F74(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

id OUTLINED_FUNCTION_7_0(uint64_t a1, void *a2)
{

  return a2;
}

id descriptionForErrorCode(uint64_t a1)
{
  v2 = 0;
  if (a1 > 8)
  {
    if (a1 <= 12)
    {
      if (a1 != 9 && a1 != 10)
      {
        goto LABEL_21;
      }
    }

    else if (a1 != 13 && a1 != 20 && a1 != 21)
    {
      goto LABEL_21;
    }

LABEL_20:
    v2 = _WBSLocalizedString();
    goto LABEL_21;
  }

  if (a1 <= 5)
  {
    if (a1 != 4 && a1 != 5)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if (a1 != 7 || +[ASCWebKitSPISupport shouldUseAlternateCredentialStore])
  {
    goto LABEL_20;
  }

  if (biometryType_onceToken != -1)
  {
    descriptionForErrorCode_cold_1();
  }

  v2 = [biometryType_context biometryType];
  if (v2)
  {
    goto LABEL_20;
  }

LABEL_21:

  return v2;
}

uint64_t __biometryType_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696EE50]);
  v1 = biometryType_context;
  biometryType_context = v0;

  v2 = biometryType_context;

  return [v2 canEvaluatePolicy:1 error:0];
}

uint64_t compareLoginChoices(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (isSecurityKeyAssertionLoginChoice(v3) && [v4 loginChoiceKind] == 4)
  {
    goto LABEL_6;
  }

  if ([v3 loginChoiceKind] == 4 && isSecurityKeyAssertionLoginChoice(v4))
  {
    goto LABEL_11;
  }

  v5 = requestTypeForLoginChoice(v3);
  v6 = sortOrderForRequestType(v5);
  v7 = requestTypeForLoginChoice(v4);
  v8 = sortOrderForRequestType(v7);
  if (v6 < v8)
  {
LABEL_6:
    v9 = -1;
    goto LABEL_12;
  }

  if (v6 != v8)
  {
LABEL_11:
    v9 = 1;
    goto LABEL_12;
  }

  v9 = 0;
  if (v6 <= 3 && v6 != 2)
  {
    v9 = [v3 compare:v4];
  }

LABEL_12:

  return v9;
}

uint64_t requestTypeForLoginChoice(void *a1)
{
  v1 = a1;
  v2 = [v1 loginChoiceKind];
  v3 = 1;
  if (v2 <= 3)
  {
    if (!v2)
    {
      v3 = 2;
      goto LABEL_20;
    }

    if (v2 != 2)
    {
      if (v2 != 3)
      {
        goto LABEL_20;
      }

      v4 = [v1 credentialKind];
      if (v4 < 3)
      {
        v3 = qword_1C2175A08[v4];
        goto LABEL_20;
      }

      goto LABEL_15;
    }

    if ([v1 isRegistrationRequest])
    {
      v3 = 4;
    }

    else
    {
      v3 = 8;
    }
  }

  else
  {
    if (v2 <= 5)
    {
      if (v2 != 4)
      {
        v3 = 128;
        goto LABEL_20;
      }

LABEL_15:
      v3 = 64;
      goto LABEL_20;
    }

    v5 = 512;
    if (v2 != 7)
    {
      v5 = 1;
    }

    if (v2 == 6)
    {
      v3 = 256;
    }

    else
    {
      v3 = v5;
    }
  }

LABEL_20:

  return v3;
}

uint64_t __allowedCredentialsForSecurityKeyAssertionFromRequestContext_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 transports];
  if ([v3 count])
  {
    v4 = [v2 hasInternalTransport] ^ 1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

BOOL isSecurityKeyAssertionLoginChoice(void *a1)
{
  v1 = a1;
  v2 = [v1 loginChoiceKind] == 3 && objc_msgSend(v1, "credentialKind") == 1;

  return v2;
}

uint64_t sortOrderForRequestType(uint64_t a1)
{
  v1 = 11;
  v2 = 9;
  v3 = 7;
  v4 = 10;
  if (a1 != 1024)
  {
    v4 = 11;
  }

  if (a1 != 512)
  {
    v3 = v4;
  }

  if (a1 != 256)
  {
    v2 = v3;
  }

  v5 = 6;
  v6 = 4;
  v7 = 8;
  if (a1 != 128)
  {
    v7 = 11;
  }

  if (a1 != 64)
  {
    v6 = v7;
  }

  if (a1 != 32)
  {
    v5 = v6;
  }

  if (a1 <= 255)
  {
    v2 = v5;
  }

  v8 = 1;
  v9 = 5;
  if (a1 != 16)
  {
    v9 = 11;
  }

  if (a1 != 8)
  {
    v8 = v9;
  }

  if (a1 == 4)
  {
    v8 = 0;
  }

  if (a1 == 2)
  {
    v1 = 2;
  }

  if (a1 == 1)
  {
    v1 = 3;
  }

  if (a1 > 3)
  {
    v1 = v8;
  }

  if (a1 <= 31)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

void sub_1C20C82A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id noCredentialsErrorString(int a1, int a2, void *a3)
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (!a1)
  {
    v19 = _WBSLocalizedString();
    goto LABEL_21;
  }

  v28 = a2;
  v29 = v5;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v7 = [MEMORY[0x1E69C8DE0] sharedManager];
  v8 = [v7 getEnabledExtensionsSynchronously];

  v9 = [v8 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = 0;
    v13 = *v31;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v31 != v13)
        {
          objc_enumerationMutation(v8);
        }

        v15 = *(*(&v30 + 1) + 8 * i);
        v16 = [MEMORY[0x1E69C8DE0] sharedManager];
        v17 = [v16 extensionSupportsPasskeys:v15];

        if (v17)
        {
          v18 = v15;

          v11 = 1;
          v12 = v18;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v10);
  }

  else
  {
    v11 = 0;
    v12 = 0;
  }

  v20 = objc_alloc(MEMORY[0x1E69635F8]);
  v21 = [v12 sf_bundleIdentifierForContainingApp];
  v22 = [v20 initWithBundleIdentifier:v21 allowPlaceholder:0 error:0];
  v23 = [v22 localizedName];

  v24 = MEMORY[0x1E696AEC0];
  if (v28)
  {
    v6 = v29;
    if (v11)
    {
      goto LABEL_18;
    }

LABEL_19:
    v25 = _WBSLocalizedString();
    [v24 localizedStringWithFormat:v25, v6, v27];
    goto LABEL_20;
  }

  v6 = v29;
  if ((v11 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_18:
  v25 = _WBSLocalizedString();
  [v24 localizedStringWithFormat:v25, v23, v6];
  v19 = LABEL_20:;

LABEL_21:

  return v19;
}

uint64_t WBS_LOG_CHANNEL_PREFIXAuthenticationServicesAgent(uint64_t a1, uint64_t a2)
{
  if (WBS_LOG_CHANNEL_PREFIXAuthenticationServicesAgent_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXAuthenticationServicesAgent_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXAuthenticationServicesAgent_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXAuthorization(uint64_t a1, uint64_t a2)
{
  if (WBS_LOG_CHANNEL_PREFIXAuthorization_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXAuthorization_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXAuthorization_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXServiceLifecycle(uint64_t a1, uint64_t a2)
{
  if (WBS_LOG_CHANNEL_PREFIXServiceLifecycle_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXServiceLifecycle_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXServiceLifecycle_log;
}

void sub_1C20D1CE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C20D1F20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __WebUILibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  WebUILibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t ASAllLoginChoiceClasses()
{
  v0 = MEMORY[0x1E695DFD8];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  return [v0 setWithObjects:{v1, v2, v3, v4, v5, v6, v7, objc_opt_class(), 0}];
}

uint64_t sub_1C20D3018(void *a1)
{
  sub_1C216FD44();
  swift_allocObject();
  sub_1C216FD34();
  type metadata accessor for ASCPublicKeyCredentialRegistrationExtensionInputs();
  sub_1C20D8460(&unk_1EBF23140, v2, type metadata accessor for ASCPublicKeyCredentialRegistrationExtensionInputs, &protocol conformance descriptor for ASCPublicKeyCredentialRegistrationExtensionInputs);
  v3 = sub_1C216FD24();
  v5 = v4;

  v6 = sub_1C2170154();
  v7 = sub_1C21708F4();
  [a1 encodeObject:v6 forKey:v7];

  return sub_1C20D3174(v3, v5);
}

uint64_t sub_1C20D3174(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

id ASCPublicKeyCredentialRegistrationExtensionInputs.init(coder:)(void *a1)
{
  swift_getObjectType();
  sub_1C20D36A0();
  v2 = sub_1C2170CC4();
  if (v2)
  {
    v3 = v2;
    v4 = sub_1C2170174();
    v6 = v5;

    sub_1C216FCE4();
    swift_allocObject();
    sub_1C216FCD4();
    sub_1C20D8460(&qword_1EBF23150, v7, type metadata accessor for ASCPublicKeyCredentialRegistrationExtensionInputs, &protocol conformance descriptor for ASCPublicKeyCredentialRegistrationExtensionInputs);
    sub_1C216FCC4();

    v16 = objc_allocWithZone(type metadata accessor for ASCPublicKeyCredentialRegistrationExtensionInputs());
    v17 = sub_1C20D84A8(v19);

    sub_1C20D3174(v4, v6);
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return v17;
  }

  else
  {
    if (qword_1EDD4A728 != -1)
    {
      swift_once();
    }

    v8 = sub_1C21705A4();
    __swift_project_value_buffer(v8, qword_1EDD4CB08);
    v9 = sub_1C2170584();
    v10 = sub_1C2170C54();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v19 = v12;
      *v11 = 136446210;
      v13 = sub_1C21714E4();
      v15 = sub_1C20D7F2C(v13, v14, &v19);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_1C20AD000, v9, v10, "Could not find encoded json for %{public}s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v12);
      MEMORY[0x1C6915360](v12, -1, -1);
      MEMORY[0x1C6915360](v11, -1, -1);
    }

    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }
}

unint64_t sub_1C20D36A0()
{
  result = qword_1EDD4AD70;
  if (!qword_1EDD4AD70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDD4AD70);
  }

  return result;
}

id ASCPublicKeyCredentialRegistrationExtensionInputs.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ASCPublicKeyCredentialRegistrationExtensionInputs.init()()
{
  v0[OBJC_IVAR____TtC26AuthenticationServicesCore49ASCPublicKeyCredentialRegistrationExtensionInputs_largeBlob] = 2;
  v1 = &v0[OBJC_IVAR____TtC26AuthenticationServicesCore49ASCPublicKeyCredentialRegistrationExtensionInputs_prf];
  *v1 = 0u;
  *(v1 + 1) = 0u;
  *(v1 + 2) = 0u;
  *(v1 + 6) = 1;
  v3.receiver = v0;
  v3.super_class = type metadata accessor for ASCPublicKeyCredentialRegistrationExtensionInputs();
  return objc_msgSendSuper2(&v3, sel_init);
}

void sub_1C20D381C(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for ASCPublicKeyCredentialRegistrationExtensionInputs();
  v4 = objc_allocWithZone(v3);
  v5 = v1;
  v6 = sub_1C20D84A8(v5);

  a1[3] = v3;
  *a1 = v6;
}

BOOL sub_1C20D3944()
{
  v1 = OBJC_IVAR____TtC26AuthenticationServicesCore49ASCPublicKeyCredentialRegistrationExtensionInputs_largeBlob;
  swift_beginAccess();
  if (*(v0 + v1) != 2)
  {
    return 1;
  }

  v2 = v0 + OBJC_IVAR____TtC26AuthenticationServicesCore49ASCPublicKeyCredentialRegistrationExtensionInputs_prf;
  swift_beginAccess();
  return *(v2 + 48) != 1;
}

uint64_t sub_1C20D39C4(uint64_t a1)
{
  v14 = sub_1C2170AA4();
  v3 = v2;
  v4 = OBJC_IVAR____TtC26AuthenticationServicesCore49ASCPublicKeyCredentialRegistrationExtensionInputs_largeBlob;
  swift_beginAccess();
  if (*(v1 + v4) != 2)
  {
    sub_1C2170F34();
    MEMORY[0x1C6913CB0](v14, v3);
    MEMORY[0x1C6913CB0](0x6F6C42656772616CLL, 0xEB00000000203A62);
    sub_1C2171034();
    MEMORY[0x1C6913CB0](10, 0xE100000000000000);
    MEMORY[0x1C6913CB0](0, 0xE000000000000000);
  }

  v5 = (v1 + OBJC_IVAR____TtC26AuthenticationServicesCore49ASCPublicKeyCredentialRegistrationExtensionInputs_prf);
  swift_beginAccess();
  v6 = v5[6];
  if (v6 != 1)
  {
    v8 = v5[4];
    v7 = v5[5];
    v10 = v5[2];
    v9 = v5[3];
    v12 = *v5;
    v11 = v5[1];
    sub_1C20D860C(v11, v10, v9, v8, v7);

    MEMORY[0x1C6913CB0](v14, v3);
    MEMORY[0x1C6913CB0](0x203A667270, 0xE500000000000000);
    sub_1C2171034();
    MEMORY[0x1C6913CB0](10, 0xE100000000000000);
    MEMORY[0x1C6913CB0](0, 0xE000000000000000);

    sub_1C20D86B0(v12, v11, v10, v9, v8, v7, v6);
  }

  MEMORY[0x1C6913CB0](0xA656E6F4ELL, 0xE500000000000000);
  return v14;
}

uint64_t sub_1C20D3D48()
{
  v1 = OBJC_IVAR____TtC26AuthenticationServicesCore49ASCPublicKeyCredentialRegistrationExtensionInputs_largeBlob;
  swift_beginAccess();
  v2 = *(v0 + v1) != 2;
  v3 = v0 + OBJC_IVAR____TtC26AuthenticationServicesCore49ASCPublicKeyCredentialRegistrationExtensionInputs_prf;
  swift_beginAccess();
  if (*(v3 + 48) == 1)
  {
    return v2;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_1C20D3DCC()
{
  swift_getObjectType();
  v1 = OBJC_IVAR____TtC26AuthenticationServicesCore49ASCPublicKeyCredentialRegistrationExtensionInputs_largeBlob;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 == 2)
  {
    return 0;
  }

  v3 = (v2 & 1) == 0;
  v4 = 0x6465726975716572;
  if (v3)
  {
    v5 = 0xE800000000000000;
  }

  else
  {
    v4 = 0x6572726566657270;
    v5 = 0xE900000000000064;
  }

  *&v11 = v4;
  *(&v11 + 1) = v5;
  v12 = xmmword_1C2175A50;
  v13 = xmmword_1C2175A60;
  v14[0] = 1;
  memset(&v14[8], 0, 32);
  *&v14[40] = 1;
  v10 = 1;

  sub_1C20B22B8(0, 0xF000000000000000);
  v6 = ASCTAPExtensionInput.encode(for:)(&v10);
  v9[2] = v13;
  v9[3] = *v14;
  v9[4] = *&v14[16];
  v9[5] = *&v14[32];
  v9[0] = v11;
  v9[1] = v12;
  v7 = v6;
  sub_1C20D8758(v9);

  sub_1C20B23C8(0, 0xF000000000000000);
  return v7;
}

double ASCPublicKeyCredentialRegistrationExtensionInputs.LargeBlob.toCTAP()@<D0>(uint64_t a1@<X8>)
{
  v2 = 0x6465726975716572;
  if (*v1)
  {
    v2 = 0x6572726566657270;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xE900000000000064;
  }

  *a1 = v2;
  *(a1 + 8) = v3;
  *&result = 2;
  *(a1 + 16) = xmmword_1C2175A50;
  *(a1 + 32) = xmmword_1C2175A60;
  *(a1 + 48) = 1;
  return result;
}

uint64_t sub_1C20D4174()
{
  swift_getObjectType();
  v1 = OBJC_IVAR____TtC26AuthenticationServicesCore49ASCPublicKeyCredentialRegistrationExtensionInputs_largeBlob;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = 0x6465726975716572;
  if (v2)
  {
    v3 = 0x6572726566657270;
  }

  v4 = 0xE800000000000000;
  if (v2)
  {
    v4 = 0xE900000000000064;
  }

  v5 = v2 == 2;
  if (v2 == 2)
  {
    v6 = 0;
  }

  else
  {
    v6 = v3;
  }

  v32 = v6;
  if (v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = v4;
  }

  if (v5)
  {
    v8 = 0;
  }

  else
  {
    v8 = 2;
  }

  if (v5)
  {
    v9 = 0;
  }

  else
  {
    v9 = 0xF000000000000000;
  }

  v10 = !v5;
  v11 = v0 + OBJC_IVAR____TtC26AuthenticationServicesCore49ASCPublicKeyCredentialRegistrationExtensionInputs_prf;
  swift_beginAccess();
  v12 = *(v11 + 48);
  if (v12 == 1)
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 1;
  }

  else
  {
    v30 = v7;
    v18 = v8;
    v19 = v9;
    v20 = v10;
    v22 = *(v11 + 24);
    v21 = *(v11 + 32);
    v24 = *(v11 + 8);
    v23 = *(v11 + 16);
    v25 = *(v11 + 40);
    LOBYTE(v35) = *v11 & 1;
    *(&v35 + 1) = v24;
    *&v36 = v23;
    *(&v36 + 1) = v22;
    *&v37 = v21;
    BYTE8(v37) = v25;
    *&v38 = v12;
    sub_1C20D860C(v24, v23, v22, v21, v25);

    sub_1C20D45F8(v41);
    v26 = v21;
    v10 = v20;
    v9 = v19;
    v8 = v18;
    v7 = v30;
    sub_1C20D8708(v24, v23, v22, v26, v25);

    v13 = v41[0];
    v14 = v41[1];
    v15 = v41[2];
    v16 = v41[3];
    v17 = v41[4];
  }

  *&v35 = v32;
  *(&v35 + 1) = v7;
  v36 = v8;
  v37 = v9;
  LOBYTE(v38) = v10;
  *(&v38 + 1) = v13;
  *&v39 = v14;
  *(&v39 + 1) = v15;
  *&v40 = v16;
  *(&v40 + 1) = v17;
  v34 = 0;
  sub_1C20D87AC(v32, v7, v8, 0, v9);
  v31 = v13;
  sub_1C20D87FC(v13, v14, v15, v16, v17);
  v27 = ASCTAPExtensionInput.encode(for:)(&v34);
  v33[2] = v37;
  v33[3] = v38;
  v33[4] = v39;
  v33[5] = v40;
  v33[0] = v35;
  v33[1] = v36;
  v28 = v27;
  sub_1C20D8758(v33);
  sub_1C20D8840(v32, v7, v8, 0, v9);
  sub_1C20D8890(v31, v14, v15, v16, v17);
  return v28;
}

void *sub_1C20D45F8@<X0>(uint64_t *a1@<X8>)
{
  v139 = *MEMORY[0x1E69E9840];
  v3 = sub_1C2170844();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v110 = &v98 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v122 = &v98 - v7;
  v121 = sub_1C2170724();
  v8 = *(v121 - 8);
  v9 = MEMORY[0x1EEE9AC00](v121);
  v104 = &v98 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v9);
  v113 = &v98 - v12;
  v13 = *(v1 + 40);
  v14 = *(v1 + 48);
  v126 = v3;
  v120 = v14;
  if (v13 == 2)
  {
    v112 = 0;
    v15 = 0;
    v16 = 0;
    v111 = 0xF000000000000000;
    if (v14)
    {
      goto LABEL_3;
    }

LABEL_80:
    v17 = 0;
    goto LABEL_81;
  }

  v91 = *(v1 + 24);
  v90 = *(v1 + 32);
  v93 = *(v1 + 8);
  v92 = *(v1 + 16);
  *&v135 = v93;
  *(&v135 + 1) = v92;
  v136 = v91;
  v137 = v90;
  LOBYTE(v138) = v13 & 1;
  sub_1C20D865C(v93, v92);
  sub_1C20B22B8(v91, v90);
  v112 = ASCPublicKeyCredentialAssertionExtensionInputs.PRF.InputValues.salt1.getter();
  v111 = v94;
  *&v131 = v93;
  *(&v131 + 1) = v92;
  v132 = v91;
  v133 = v90;
  v134 = v13 & 1;
  v15 = ASCPublicKeyCredentialAssertionExtensionInputs.PRF.InputValues.salt2.getter();
  v16 = v95;
  v96 = v93;
  v14 = v120;
  result = sub_1C20D8708(v96, v92, v91, v90, v13);
  if (!v14)
  {
    goto LABEL_80;
  }

LABEL_3:
  v98 = v16;
  v99 = v15;
  v100 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF232D8, &unk_1C2176500);
  result = sub_1C21710E4();
  v17 = result;
  v18 = 0;
  v125 = 0;
  v19 = v14 + 64;
  v20 = 1 << *(v14 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(v14 + 64);
  v23 = (v20 + 63) >> 6;
  v116 = (v4 + 8);
  v115 = (v8 + 16);
  v114 = (v8 + 8);
  v24 = result + 8;
  v106 = result;
  v105 = result + 8;
  v107 = v23;
  if (v22)
  {
    goto LABEL_6;
  }

LABEL_7:
  v26 = v18;
  while (1)
  {
    v18 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      __break(1u);
      goto LABEL_83;
    }

    if (v18 >= v23)
    {
      break;
    }

    v27 = *(v19 + 8 * v18);
    ++v26;
    if (v27)
    {
      v25 = __clz(__rbit64(v27));
      v22 = (v27 - 1) & v27;
      while (2)
      {
        v28 = v25 | (v18 << 6);
        v29 = *(*(v14 + 48) + 16 * v28);
        v30 = *(v14 + 56) + 40 * v28;
        v31 = *v30;
        v128 = *(v30 + 16);
        v129 = v31;
        LOBYTE(v30) = *(v30 + 32);
        v127 = v29;
        if (v30)
        {
          sub_1C20D865C(v29, *(&v29 + 1));
          sub_1C20D865C(v129, *(&v129 + 1));
          result = sub_1C20B22B8(v128, *(&v128 + 1));
          v32 = v127;
          goto LABEL_75;
        }

        sub_1C20D865C(v29, *(&v29 + 1));
        v33 = *(&v129 + 1);
        v124 = v129;
        sub_1C20D865C(v129, *(&v129 + 1));
        v123 = v128;
        sub_1C20B22B8(v128, *(&v128 + 1));
        if (qword_1EBF230B8 != -1)
        {
          swift_once();
        }

        v34 = xmmword_1EBF23A40;
        v131 = xmmword_1EBF23A40;
        v137 = MEMORY[0x1E6969080];
        v138 = MEMORY[0x1E6969078];
        v135 = v129;
        v35 = __swift_project_boxed_opaque_existential_1(&v135, MEMORY[0x1E6969080]);
        v36 = *v35;
        v37 = v35[1];
        v38 = v37 >> 62;
        v119 = v22;
        if ((v37 >> 62) <= 1)
        {
          if (!v38)
          {
            v130[0] = v36;
            LOWORD(v130[1]) = v37;
            BYTE2(v130[1]) = BYTE2(v37);
            BYTE3(v130[1]) = BYTE3(v37);
            BYTE4(v130[1]) = BYTE4(v37);
            BYTE5(v130[1]) = BYTE5(v37);
            sub_1C20D865C(v124, v33);
            sub_1C20D865C(v34, *(&v34 + 1));
            goto LABEL_29;
          }

          v41 = v36;
          if (v36 >> 32 >= v36)
          {
            sub_1C20D865C(v124, v33);
            sub_1C20D865C(v34, *(&v34 + 1));
            if (!sub_1C216FDD4() || !__OFSUB__(v41, sub_1C216FE04()))
            {
LABEL_23:
              sub_1C216FDF4();
              goto LABEL_29;
            }

LABEL_90:
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
          }

LABEL_84:
          __break(1u);
LABEL_85:
          __break(1u);
LABEL_86:
          __break(1u);
LABEL_87:
          __break(1u);
LABEL_88:
          __break(1u);
LABEL_89:
          __break(1u);
          goto LABEL_90;
        }

        if (v38 == 2)
        {
          v39 = *(v36 + 16);
          v40 = *(v36 + 24);
          sub_1C20D865C(v124, v33);
          sub_1C20D865C(v34, *(&v34 + 1));
          if (!sub_1C216FDD4() || !__OFSUB__(v39, sub_1C216FE04()))
          {
            if (!__OFSUB__(v40, v39))
            {
              goto LABEL_23;
            }

            goto LABEL_85;
          }

          goto LABEL_88;
        }

        memset(v130, 0, 14);
        sub_1C20D865C(v124, v33);
        sub_1C20D865C(v34, *(&v34 + 1));
LABEL_29:
        sub_1C2170114();
        __swift_destroy_boxed_opaque_existential_0Tm(&v135);
        v42 = *(&v131 + 1);
        v43 = v131;
        v44 = sub_1C20D8460(&qword_1EDD4A7A0, 255, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
        v45 = v122;
        sub_1C2170704();
        v46 = v42 >> 62;
        v118 = v33;
        if ((v42 >> 62) > 1)
        {
          if (v46 == 2)
          {
            v108 = v28;
            v47 = v44;
            v48 = *(v43 + 16);
            *&v129 = *(v43 + 24);

            if (sub_1C216FDD4() && __OFSUB__(v48, sub_1C216FE04()))
            {
              goto LABEL_89;
            }

            v45 = v122;
            if (__OFSUB__(v129, v48))
            {
              goto LABEL_87;
            }

            sub_1C216FDF4();
            v50 = v126;
            v44 = v47;
            sub_1C21706E4();
            sub_1C20D3174(v43, v42);
            v28 = v108;
          }

          else
          {
            *(&v135 + 6) = 0;
            *&v135 = 0;
LABEL_41:
            v50 = v126;
            sub_1C21706E4();
            sub_1C20D3174(v43, v42);
          }
        }

        else
        {
          if (!v46)
          {
            *&v135 = v43;
            WORD4(v135) = v42;
            BYTE10(v135) = BYTE2(v42);
            BYTE11(v135) = BYTE3(v42);
            BYTE12(v135) = BYTE4(v42);
            BYTE13(v135) = BYTE5(v42);
            goto LABEL_41;
          }

          *&v129 = v19;
          if (v43 >> 32 < v43)
          {
            goto LABEL_86;
          }

          if (sub_1C216FDD4() && __OFSUB__(v43, sub_1C216FE04()))
          {
            goto LABEL_91;
          }

          v49 = v126;
          sub_1C216FDF4();
          v45 = v122;
          sub_1C21706E4();
          sub_1C20D3174(v43, v42);
          v19 = v129;
          v50 = v49;
        }

        v51 = v113;
        v117 = v44;
        sub_1C21706F4();
        sub_1C20D3174(v43, v42);
        v109 = *v116;
        v109(v45, v50);
        v52 = v121;
        v137 = v121;
        v53 = sub_1C20D8460(&qword_1EBF232E8, 255, MEMORY[0x1E69663E0], MEMORY[0x1E69663D0]);
        v138 = v53;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v135);
        v55 = *v115;
        (*v115)(boxed_opaque_existential_1, v51, v52);
        __swift_project_boxed_opaque_existential_1(&v135, v137);
        v56 = v125;
        sub_1C216FE24();
        v125 = v56;
        v57 = *v114;
        (*v114)(v51, v52);
        v129 = v131;
        __swift_destroy_boxed_opaque_existential_0Tm(&v135);
        v58 = *(&v123 + 1);
        if (*(&v123 + 1) >> 60 == 15)
        {
          sub_1C20D3174(v124, v118);
          result = sub_1C20B23C8(v123, v58);
          v14 = v120;
          v17 = v106;
          v24 = v105;
          v22 = v119;
          v32 = v127;
          v23 = v107;
          goto LABEL_75;
        }

        v101 = v55;
        v103 = v53;
        v59 = xmmword_1EBF23A40;
        v131 = xmmword_1EBF23A40;
        v137 = MEMORY[0x1E6969080];
        v138 = MEMORY[0x1E6969078];
        v135 = v128;
        v60 = __swift_project_boxed_opaque_existential_1(&v135, MEMORY[0x1E6969080]);
        v61 = *v60;
        v62 = v60[1];
        v63 = v62 >> 62;
        v23 = v107;
        v102 = v57;
        if ((v62 >> 62) > 1)
        {
          if (v63 == 2)
          {
            v65 = *(v61 + 16);
            *&v128 = *(v61 + 24);
            v66 = v123;
            sub_1C20B22B8(v123, v58);
            sub_1C20B22B8(v66, v58);
            sub_1C20D865C(v59, *(&v59 + 1));
            if (sub_1C216FDD4() && __OFSUB__(v65, sub_1C216FE04()))
            {
              goto LABEL_96;
            }

            if (__OFSUB__(v128, v65))
            {
              goto LABEL_93;
            }

            sub_1C216FDF4();
          }

          else
          {
            memset(v130, 0, 14);
            v71 = v123;
            sub_1C20B22B8(v123, v58);
            sub_1C20B22B8(v71, v58);
            sub_1C20D865C(v59, *(&v59 + 1));
          }

LABEL_59:
          sub_1C2170114();
          v70 = v110;
        }

        else
        {
          if (!v63)
          {
            v130[0] = v61;
            LOWORD(v130[1]) = v62;
            BYTE2(v130[1]) = BYTE2(v62);
            BYTE3(v130[1]) = BYTE3(v62);
            BYTE4(v130[1]) = BYTE4(v62);
            BYTE5(v130[1]) = BYTE5(v62);
            v64 = v123;
            sub_1C20B22B8(v123, v58);
            sub_1C20B22B8(v64, v58);
            sub_1C20D865C(v59, *(&v59 + 1));
            goto LABEL_59;
          }

          v67 = v61;
          v68 = v61 >> 32;
          *&v128 = v68 - v67;
          if (v68 < v67)
          {
            goto LABEL_92;
          }

          v69 = v123;
          sub_1C20B22B8(v123, v58);
          sub_1C20B22B8(v69, v58);
          sub_1C20D865C(v59, *(&v59 + 1));
          if (sub_1C216FDD4() && __OFSUB__(v67, sub_1C216FE04()))
          {
            goto LABEL_98;
          }

          v70 = v110;
          sub_1C216FDF4();
          sub_1C2170114();
        }

        __swift_destroy_boxed_opaque_existential_0Tm(&v135);
        v73 = *(&v131 + 1);
        v72 = v131;
        sub_1C2170704();
        v74 = v73 >> 62;
        v108 = v28;
        if ((v73 >> 62) > 1)
        {
          if (v74 != 2)
          {
            *(&v135 + 6) = 0;
            *&v135 = 0;
            goto LABEL_74;
          }

          v75 = *(v72 + 16);
          v76 = *(v72 + 24);

          if (sub_1C216FDD4() && __OFSUB__(v75, sub_1C216FE04()))
          {
            goto LABEL_97;
          }

          if (__OFSUB__(v76, v75))
          {
            goto LABEL_95;
          }
        }

        else
        {
          if (!v74)
          {
            *&v135 = v72;
            WORD4(v135) = v73;
            BYTE10(v135) = BYTE2(v73);
            BYTE11(v135) = BYTE3(v73);
            BYTE12(v135) = BYTE4(v73);
            BYTE13(v135) = BYTE5(v73);
LABEL_74:
            v77 = v126;
            sub_1C21706E4();
            sub_1C20D3174(v72, v73);
            v78 = v104;
            sub_1C21706F4();
            sub_1C20D3174(v72, v73);
            v109(v70, v77);
            v79 = v121;
            v137 = v121;
            v138 = v103;
            v80 = __swift_allocate_boxed_opaque_existential_1(&v135);
            v101(v80, v78, v79);
            __swift_project_boxed_opaque_existential_1(&v135, v137);
            v81 = v125;
            sub_1C216FE24();
            v125 = v81;
            v82 = *(&v123 + 1);
            v83 = v123;
            sub_1C20B23C8(v123, *(&v123 + 1));
            v102(v78, v79);
            v128 = v131;
            __swift_destroy_boxed_opaque_existential_0Tm(&v135);
            sub_1C20D3174(v124, v118);
            result = sub_1C20B23C8(v83, v82);
            v14 = v120;
            v17 = v106;
            v24 = v105;
            v22 = v119;
            v32 = v127;
            v28 = v108;
LABEL_75:
            v84 = v128;
            v85 = v129;
            *(v24 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
            *(v17[6] + 16 * v28) = v32;
            v86 = (v17[7] + 32 * v28);
            *v86 = v85;
            v86[1] = v84;
            v87 = v17[2];
            v88 = __OFADD__(v87, 1);
            v89 = v87 + 1;
            if (!v88)
            {
              v17[2] = v89;
              if (!v22)
              {
                goto LABEL_7;
              }

LABEL_6:
              v25 = __clz(__rbit64(v22));
              v22 &= v22 - 1;
              continue;
            }

LABEL_83:
            __break(1u);
            goto LABEL_84;
          }

          if (v72 >> 32 < v72)
          {
            goto LABEL_94;
          }

          if (sub_1C216FDD4() && __OFSUB__(v72, sub_1C216FE04()))
          {
            goto LABEL_99;
          }
        }

        break;
      }

      sub_1C216FDF4();
      v70 = v110;
      goto LABEL_74;
    }
  }

  a1 = v100;
  v15 = v99;
  v16 = v98;
LABEL_81:
  v97 = v111;
  *a1 = v112;
  a1[1] = v97;
  a1[2] = v15;
  a1[3] = v16;
  a1[4] = v17;
  return result;
}

id sub_1C20D5764(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a3();
  v7 = v6;

  if (v7 >> 60 == 15)
  {
    v8 = 0;
  }

  else
  {
    v9 = sub_1C2170154();
    sub_1C20B23C8(v5, v7);
    v8 = v9;
  }

  return v8;
}

uint64_t sub_1C20D57F0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC26AuthenticationServicesCore49ASCPublicKeyCredentialRegistrationExtensionInputs_largeBlob;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1C20D5848(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC26AuthenticationServicesCore49ASCPublicKeyCredentialRegistrationExtensionInputs_largeBlob;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_1C20D589C@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC26AuthenticationServicesCore49ASCPublicKeyCredentialRegistrationExtensionInputs_largeBlob;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t sub_1C20D58F0(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC26AuthenticationServicesCore49ASCPublicKeyCredentialRegistrationExtensionInputs_largeBlob;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

void sub_1C20D59A0(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC26AuthenticationServicesCore49ASCPublicKeyCredentialRegistrationExtensionInputs_prf);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  v10 = v3[6];
  *a2 = *v3;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  a2[4] = v8;
  a2[5] = v9;
  a2[6] = v10;
  sub_1C20D88D4(v4, v5, v6, v7, v8, v9, v10);
}

void sub_1C20D5A10(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v8 = a1[6];
  v9 = (*a2 + OBJC_IVAR____TtC26AuthenticationServicesCore49ASCPublicKeyCredentialRegistrationExtensionInputs_prf);
  swift_beginAccess();
  v10 = *v9;
  v11 = v9[1];
  v15 = v9[3];
  v16 = v9[2];
  v13 = v9[5];
  v14 = v9[4];
  v12 = v9[6];
  *v9 = v2;
  v9[1] = v3;
  v9[2] = v4;
  v9[3] = v5;
  v9[4] = v6;
  v9[5] = v7;
  v9[6] = v8;
  sub_1C20D88D4(v2, v3, v4, v5, v6, v7, v8);
  sub_1C20D86B0(v10, v11, v16, v15, v14, v13, v12);
}

void sub_1C20D5AEC(uint64_t *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC26AuthenticationServicesCore49ASCPublicKeyCredentialRegistrationExtensionInputs_prf);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  v10 = v3[6];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  a1[5] = v9;
  a1[6] = v10;
  sub_1C20D88D4(v4, v5, v6, v7, v8, v9, v10);
}

__n128 sub_1C20D5B58(uint64_t a1)
{
  v14 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = (v1 + OBJC_IVAR____TtC26AuthenticationServicesCore49ASCPublicKeyCredentialRegistrationExtensionInputs_prf);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[2];
  v8 = v4[3];
  v9 = v4[4];
  v10 = v4[5];
  v11 = v4[6];
  v12 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 1) = v12;
  *(v4 + 2) = v14;
  v4[6] = v3;
  sub_1C20D86B0(v5, v6, v7, v8, v9, v10, v11);
  return result;
}

uint64_t sub_1C20D5C58()
{
  if (*v0)
  {
    return 0x6572726566657270;
  }

  else
  {
    return 0x6465726975716572;
  }
}

uint64_t sub_1C20D5C98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6465726975716572 && a2 == 0xE800000000000000;
  if (v6 || (sub_1C2171324() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6572726566657270 && a2 == 0xE900000000000064)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1C2171324();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1C20D5D88(uint64_t a1)
{
  v2 = sub_1C20D89B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C20D5DC4(uint64_t a1)
{
  v2 = sub_1C20D89B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C20D5E0C(uint64_t a1)
{
  v2 = sub_1C20D8A0C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C20D5E48(uint64_t a1)
{
  v2 = sub_1C20D8A0C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C20D5E84(uint64_t a1)
{
  v2 = sub_1C20D8A60();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C20D5EC0(uint64_t a1)
{
  v2 = sub_1C20D8A60();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ASCPublicKeyCredentialRegistrationExtensionInputs.LargeBlob.SupportRequirement.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23168, &qword_1C2175A70);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23170, &qword_1C2175A78);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23178, &qword_1C2175A80);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C20D89B8();
  sub_1C2171484();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_1C20D8A0C();
    v14 = v18;
    sub_1C2171214();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_1C20D8A60();
    sub_1C2171214();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

uint64_t ASCPublicKeyCredentialRegistrationExtensionInputs.LargeBlob.SupportRequirement.hashValue.getter()
{
  v1 = *v0;
  sub_1C2171434();
  MEMORY[0x1C69146F0](v1);
  return sub_1C2171454();
}

uint64_t ASCPublicKeyCredentialRegistrationExtensionInputs.LargeBlob.SupportRequirement.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v30 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23198, &qword_1C2175A88);
  v4 = *(v3 - 8);
  v27 = v3;
  v28 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF231A0, &qword_1C2175A90);
  v26 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF231A8, &qword_1C2175A98);
  v29 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C20D89B8();
  v13 = v31;
  sub_1C2171464();
  if (v13)
  {
    goto LABEL_7;
  }

  v25 = v7;
  v31 = a1;
  v15 = v29;
  v14 = v30;
  v16 = v12;
  v17 = sub_1C2171204();
  if (*(v17 + 16) != 1)
  {
    v19 = sub_1C2170F74();
    swift_allocError();
    v21 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF231B0, &qword_1C2175AA0);
    *v21 = &type metadata for ASCPublicKeyCredentialRegistrationExtensionInputs.LargeBlob.SupportRequirement;
    sub_1C2171154();
    sub_1C2170F64();
    (*(*(v19 - 8) + 104))(v21, *MEMORY[0x1E69E6AF8], v19);
    swift_willThrow();
    (*(v15 + 8))(v16, v10);
    swift_unknownObjectRelease();
    a1 = v31;
LABEL_7:
    v22 = a1;
    return __swift_destroy_boxed_opaque_existential_0Tm(v22);
  }

  v24 = v17;
  v18 = *(v17 + 32);
  if (v18)
  {
    v33 = 1;
    sub_1C20D8A0C();
    sub_1C2171144();
    (*(v28 + 8))(v6, v27);
  }

  else
  {
    v32 = 0;
    sub_1C20D8A60();
    sub_1C2171144();
    (*(v26 + 8))(v9, v25);
  }

  (*(v15 + 8))(v16, v10);
  swift_unknownObjectRelease();
  *v14 = v18;
  v22 = v31;
  return __swift_destroy_boxed_opaque_existential_0Tm(v22);
}

uint64_t sub_1C20D6674()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C20D6728()
{
  sub_1C2171434();
  MEMORY[0x1C69146F0](0);
  return sub_1C2171454();
}

uint64_t sub_1C20D676C(uint64_t a1)
{
  sub_1C2171434();
  MEMORY[0x1C69146F0](0);
  return sub_1C2171454();
}

uint64_t sub_1C20D67C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x80000001C21846F0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1C2171324();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1C20D685C(uint64_t a1)
{
  v2 = sub_1C20D8B00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C20D6898(uint64_t a1)
{
  v2 = sub_1C20D8B00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ASCPublicKeyCredentialRegistrationExtensionInputs.LargeBlob.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF231B8, &qword_1C2175AA8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C20D8B00();
  sub_1C2171484();
  v10 = v7;
  sub_1C20D8B54();
  sub_1C2171294();
  return (*(v4 + 8))(v6, v3);
}

uint64_t ASCPublicKeyCredentialRegistrationExtensionInputs.LargeBlob.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF231D0, &qword_1C2175AB0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C20D8B00();
  sub_1C2171464();
  if (!v2)
  {
    sub_1C20D8BA8();
    sub_1C21711D4();
    (*(v6 + 8))(v8, v5);
    *a2 = v11;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t ASCPublicKeyCredentialRegistrationExtensionInputs.PRF.inputValues.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = *(v1 + 40);
  *(a1 + 32) = v6;
  return sub_1C20D860C(v2, v3, v4, v5, v6);
}

__n128 ASCPublicKeyCredentialRegistrationExtensionInputs.PRF.init(shouldCheckForSupport:inputValues:perCredentialInputValues:)@<Q0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a2 + 32);
  *a4 = a1;
  result = *a2;
  v6 = *(a2 + 16);
  *(a4 + 8) = *a2;
  *(a4 + 24) = v6;
  *(a4 + 40) = v4;
  *(a4 + 48) = a3;
  return result;
}

uint64_t sub_1C20D6C08()
{
  v1 = *v0;
  sub_1C2171434();
  MEMORY[0x1C69146F0](v1);
  return sub_1C2171454();
}

uint64_t sub_1C20D6C50(uint64_t a1)
{
  v2 = *v1;
  sub_1C2171434();
  MEMORY[0x1C69146F0](v2);
  return sub_1C2171454();
}

unint64_t sub_1C20D6C94()
{
  v1 = 0x6C61567475706E69;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000018;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000015;
  }
}

uint64_t sub_1C20D6CFC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1C20D9E8C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1C20D6D24(uint64_t a1)
{
  v2 = sub_1C20D8BFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C20D6D60(uint64_t a1)
{
  v2 = sub_1C20D8BFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ASCPublicKeyCredentialRegistrationExtensionInputs.PRF.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF231E0, &qword_1C2175AB8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - v5;
  v7 = *(v1 + 8);
  v17 = *(v1 + 16);
  v18 = v7;
  v8 = *(v1 + 24);
  v15 = *(v1 + 32);
  v16 = v8;
  v9 = *(v1 + 40);
  v14 = *(v1 + 48);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C20D8BFC();
  sub_1C2171484();
  LOBYTE(v20) = 0;
  v10 = v19;
  sub_1C2171284();
  if (!v10)
  {
    v11 = v14;
    v20 = v18;
    v21 = v17;
    v22 = v16;
    v23 = v15;
    v24 = v9;
    v25 = 1;
    sub_1C20D860C(v18, v17, v16, v15, v9);
    sub_1C20D8C50();
    sub_1C2171264();
    sub_1C20D8708(v20, v21, v22, v23, v24);
    v20 = v11;
    v25 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF23B00, &qword_1C2175AC0);
    sub_1C20D8D94(&qword_1EDD4A750, sub_1C20D8CEC, sub_1C20D8C50, MEMORY[0x1E69E5E38]);
    sub_1C2171264();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t ASCPublicKeyCredentialRegistrationExtensionInputs.PRF.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF231F0, &qword_1C2175AC8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C20D8BFC();
  sub_1C2171464();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  LOBYTE(v20) = 0;
  v9 = sub_1C21711C4();
  v26 = 1;
  sub_1C20D8D40();
  sub_1C21711A4();
  v10 = v20;
  v17 = v21;
  v18 = v22;
  v19 = v23;
  v25 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF23B00, &qword_1C2175AC0);
  v26 = 2;
  sub_1C20D8D94(&unk_1EDD4A760, sub_1C20D8E24, sub_1C20D8D40, MEMORY[0x1E69E5E58]);
  sub_1C21711A4();
  (*(v6 + 8))(v8, v5);
  v12 = v19;
  v11 = v20;
  *a2 = v9 & 1;
  v14 = v17;
  v13 = v18;
  *(a2 + 8) = v10;
  *(a2 + 16) = v14;
  *(a2 + 24) = v13;
  *(a2 + 32) = v12;
  v15 = v25;
  *(a2 + 40) = v25;
  *(a2 + 48) = v11;
  sub_1C20D860C(v10, v14, v13, v12, v15);

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  sub_1C20D8708(v10, v14, v13, v12, v15);
}

uint64_t sub_1C20D7314()
{
  if (*v0)
  {
    return 6713968;
  }

  else
  {
    return 0x6F6C42656772616CLL;
  }
}

uint64_t sub_1C20D734C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6F6C42656772616CLL && a2 == 0xE900000000000062;
  if (v6 || (sub_1C2171324() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 6713968 && a2 == 0xE300000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1C2171324();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1C20D7430(uint64_t a1)
{
  v2 = sub_1C20D8E78();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C20D746C(uint64_t a1)
{
  v2 = sub_1C20D8E78();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id ASCPublicKeyCredentialRegistrationExtensionInputs.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ASCPublicKeyCredentialRegistrationExtensionInputs();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C20D74FC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23200, &qword_1C2175AD0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C20D8E78();
  sub_1C2171484();
  v9 = OBJC_IVAR____TtC26AuthenticationServicesCore49ASCPublicKeyCredentialRegistrationExtensionInputs_largeBlob;
  swift_beginAccess();
  LOBYTE(v19) = *(v3 + v9);
  v26 = 0;
  sub_1C20D8ECC();
  sub_1C2171264();
  if (!v2)
  {
    v10 = (v3 + OBJC_IVAR____TtC26AuthenticationServicesCore49ASCPublicKeyCredentialRegistrationExtensionInputs_prf);
    swift_beginAccess();
    v11 = v10[1];
    v12 = v10[2];
    v13 = v10[3];
    v14 = v10[4];
    v15 = v10[5];
    v16 = v10[6];
    v19 = *v10;
    v20 = v11;
    v21 = v12;
    v22 = v13;
    v23 = v14;
    v24 = v15;
    v25 = v16;
    v18[7] = 1;
    sub_1C20D88D4(v19, v11, v12, v13, v14, v15, v16);
    sub_1C20D8F20();
    sub_1C2171264();
    sub_1C20D86B0(v19, v20, v21, v22, v23, v24, v25);
  }

  return (*(v6 + 8))(v8, v5);
}

_BYTE *ASCPublicKeyCredentialRegistrationExtensionInputs.init(from:)(void *a1)
{
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23220, &qword_1C2175AD8);
  v27 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v5 = &v24 - v4;
  v6 = OBJC_IVAR____TtC26AuthenticationServicesCore49ASCPublicKeyCredentialRegistrationExtensionInputs_largeBlob;
  v1[OBJC_IVAR____TtC26AuthenticationServicesCore49ASCPublicKeyCredentialRegistrationExtensionInputs_largeBlob] = 2;
  v7 = v1;
  v8 = &v1[OBJC_IVAR____TtC26AuthenticationServicesCore49ASCPublicKeyCredentialRegistrationExtensionInputs_prf];
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 2) = 0u;
  *(v8 + 6) = 1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C20D8E78();
  sub_1C2171464();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    sub_1C20D86B0(*v8, *(v8 + 1), *(v8 + 2), *(v8 + 3), *(v8 + 4), *(v8 + 5), *(v8 + 6));
    type metadata accessor for ASCPublicKeyCredentialRegistrationExtensionInputs();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v9 = v27;
    v34 = 0;
    sub_1C20D8F74();
    v10 = v35;
    sub_1C21711A4();
    v11 = v30;
    swift_beginAccess();
    v7[v6] = v11;
    v29 = 1;
    sub_1C20D8FC8();
    sub_1C21711A4();
    v13 = v33;
    v25 = v31;
    v26 = v32;
    v24 = v30;
    swift_beginAccess();
    v14 = *v8;
    v15 = *(v8 + 1);
    v16 = *(v8 + 2);
    v17 = *(v8 + 3);
    v18 = *(v8 + 4);
    v19 = *(v8 + 5);
    v20 = *(v8 + 6);
    v22 = v25;
    v21 = v26;
    *v8 = v24;
    *(v8 + 1) = v22;
    *(v8 + 2) = v21;
    *(v8 + 6) = v13;
    sub_1C20D86B0(v14, v15, v16, v17, v18, v19, v20);
    v23 = type metadata accessor for ASCPublicKeyCredentialRegistrationExtensionInputs();
    v28.receiver = v7;
    v28.super_class = v23;
    v7 = objc_msgSendSuper2(&v28, sel_init);
    (*(v9 + 8))(v5, v10);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  return v7;
}

_BYTE *sub_1C20D7A0C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for ASCPublicKeyCredentialRegistrationExtensionInputs());
  result = ASCPublicKeyCredentialRegistrationExtensionInputs.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1C20D7ABC(uint64_t a1)
{
  v2 = sub_1C20D8460(&qword_1EDD4A7C8, 255, type metadata accessor for ASCAuthorizationError, &unk_1C2176688);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1C20D7B2C(uint64_t a1)
{
  v2 = sub_1C20D8460(&qword_1EDD4A7C8, 255, type metadata accessor for ASCAuthorizationError, &unk_1C2176688);

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1C20D7B9C(uint64_t a1)
{
  v2 = sub_1C20D8460(&qword_1EDD4A800, 255, type metadata accessor for ASCAuthorizationError, &unk_1C21766CC);

  return MEMORY[0x1EEDC3B70](a1, v2);
}

uint64_t sub_1C20D7C2C(uint64_t a1)
{
  v2 = sub_1C20D8460(&qword_1EDD4A800, 255, type metadata accessor for ASCAuthorizationError, &unk_1C21766CC);

  return MEMORY[0x1EEDC3BE0](a1, v2);
}

uint64_t sub_1C20D7C9C(uint64_t a1)
{
  v2 = sub_1C20D8460(&qword_1EDD4A800, 255, type metadata accessor for ASCAuthorizationError, &unk_1C21766CC);

  return MEMORY[0x1EEDC3B98](a1, v2);
}

uint64_t sub_1C20D7D0C(void *a1, uint64_t a2)
{
  v4 = sub_1C20D8460(&qword_1EDD4A800, 255, type metadata accessor for ASCAuthorizationError, &unk_1C21766CC);
  v5 = a1;

  return MEMORY[0x1EEDC3B88](v5, a2, v4);
}

uint64_t sub_1C20D7DC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C20D8460(&qword_1EDD4A800, 255, type metadata accessor for ASCAuthorizationError, &unk_1C21766CC);

  return MEMORY[0x1EEDC3BC8](a1, a2, v4);
}

uint64_t sub_1C20D7E44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C2171434();
  sub_1C2170894();
  return sub_1C2171454();
}

uint64_t sub_1C20D7EA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C20D8460(&qword_1EDD4A800, 255, type metadata accessor for ASCAuthorizationError, &unk_1C21766CC);

  return MEMORY[0x1EEDC3BA8](a1, a2, a3, v6);
}

unint64_t sub_1C20D7F2C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1C20D7FF8(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
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
    sub_1C20DA01C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

unint64_t sub_1C20D7FF8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1C20D8104(a5, a6);
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
    result = sub_1C2170FA4();
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

void *sub_1C20D8104(uint64_t a1, unint64_t a2)
{
  v3 = sub_1C20D8150(a1, a2);
  sub_1C20D8280(&unk_1F419CC68);
  return v3;
}

void *sub_1C20D8150(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1C20FE954(v5, 0);
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

  result = sub_1C2170FA4();
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
        v10 = sub_1C2170A34();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1C20FE954(v10, 0);
        result = sub_1C2170F24();
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

uint64_t sub_1C20D8280(uint64_t result)
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

  result = sub_1C20D836C(result, v11, 1, v3);
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

char *sub_1C20D836C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF232F0, &unk_1C2176950);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

uint64_t sub_1C20D8460(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_1C20D84A8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26AuthenticationServicesCore49ASCPublicKeyCredentialRegistrationExtensionInputs_largeBlob;
  v1[OBJC_IVAR____TtC26AuthenticationServicesCore49ASCPublicKeyCredentialRegistrationExtensionInputs_largeBlob] = 2;
  v4 = &v1[OBJC_IVAR____TtC26AuthenticationServicesCore49ASCPublicKeyCredentialRegistrationExtensionInputs_prf];
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 2) = 0u;
  *(v4 + 6) = 1;
  v5 = OBJC_IVAR____TtC26AuthenticationServicesCore49ASCPublicKeyCredentialRegistrationExtensionInputs_largeBlob;
  swift_beginAccess();
  LOBYTE(v5) = *(a1 + v5);
  swift_beginAccess();
  v1[v3] = v5;
  v6 = (a1 + OBJC_IVAR____TtC26AuthenticationServicesCore49ASCPublicKeyCredentialRegistrationExtensionInputs_prf);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  v9 = v6[2];
  v10 = v6[3];
  v11 = v6[4];
  v12 = v6[5];
  v13 = v6[6];
  swift_beginAccess();
  v14 = *v4;
  v20 = *(v4 + 2);
  v21 = *(v4 + 1);
  v18 = *(v4 + 4);
  v19 = *(v4 + 3);
  v16 = *(v4 + 6);
  v17 = *(v4 + 5);
  *v4 = v7;
  *(v4 + 1) = v8;
  *(v4 + 2) = v9;
  *(v4 + 3) = v10;
  *(v4 + 4) = v11;
  *(v4 + 5) = v12;
  *(v4 + 6) = v13;
  sub_1C20D88D4(v7, v8, v9, v10, v11, v12, v13);
  sub_1C20D86B0(v14, v21, v20, v19, v18, v17, v16);
  v22.receiver = v1;
  v22.super_class = type metadata accessor for ASCPublicKeyCredentialRegistrationExtensionInputs();
  return objc_msgSendSuper2(&v22, sel_init);
}

uint64_t sub_1C20D860C(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  if (a5 != 2)
  {
    sub_1C20D865C(result, a2);

    return sub_1C20B22B8(a3, a4);
  }

  return result;
}

uint64_t sub_1C20D865C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

void sub_1C20D86B0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a7 != 1)
  {
    sub_1C20D8708(a2, a3, a4, a5, a6);
  }
}

uint64_t sub_1C20D8708(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  if (a5 != 2)
  {
    sub_1C20D3174(result, a2);

    return sub_1C20B23C8(a3, a4);
  }

  return result;
}

void sub_1C20D87AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a2 != 1)
  {

    sub_1C20B22B8(a4, a5);
  }
}

uint64_t sub_1C20D87FC(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  if (a5 != 1)
  {
    sub_1C20B22CC(result, a2, a3, a4);
  }

  return result;
}

void sub_1C20D8840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a2 != 1)
  {

    sub_1C20B23C8(a4, a5);
  }
}

uint64_t sub_1C20D8890(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  if (a5 != 1)
  {
    sub_1C20B23DC(result, a2, a3, a4);
  }

  return result;
}

void sub_1C20D88D4(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, char a6, uint64_t a7)
{
  if (a7 != 1)
  {
    sub_1C20D860C(a2, a3, a4, a5, a6);
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

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_1C20D89B8()
{
  result = qword_1EBF23180;
  if (!qword_1EBF23180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF23180);
  }

  return result;
}

unint64_t sub_1C20D8A0C()
{
  result = qword_1EBF23188;
  if (!qword_1EBF23188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF23188);
  }

  return result;
}

unint64_t sub_1C20D8A60()
{
  result = qword_1EBF23190;
  if (!qword_1EBF23190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF23190);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm(void *a1)
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

unint64_t sub_1C20D8B00()
{
  result = qword_1EBF231C0;
  if (!qword_1EBF231C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF231C0);
  }

  return result;
}

unint64_t sub_1C20D8B54()
{
  result = qword_1EBF231C8;
  if (!qword_1EBF231C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF231C8);
  }

  return result;
}

unint64_t sub_1C20D8BA8()
{
  result = qword_1EBF231D8;
  if (!qword_1EBF231D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF231D8);
  }

  return result;
}

unint64_t sub_1C20D8BFC()
{
  result = qword_1EBF231E8;
  if (!qword_1EBF231E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF231E8);
  }

  return result;
}

unint64_t sub_1C20D8C50()
{
  result = qword_1EDD4A740;
  if (!qword_1EDD4A740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD4A740);
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

unint64_t sub_1C20D8CEC()
{
  result = qword_1EDD4AC00;
  if (!qword_1EDD4AC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD4AC00);
  }

  return result;
}

unint64_t sub_1C20D8D40()
{
  result = qword_1EDD4A758;
  if (!qword_1EDD4A758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD4A758);
  }

  return result;
}

uint64_t sub_1C20D8D94(unint64_t *a1, void (*a2)(void), void (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBF23B00, &qword_1C2175AC0);
    a2();
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C20D8E24()
{
  result = qword_1EDD4AC10;
  if (!qword_1EDD4AC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD4AC10);
  }

  return result;
}

unint64_t sub_1C20D8E78()
{
  result = qword_1EBF23208;
  if (!qword_1EBF23208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF23208);
  }

  return result;
}

unint64_t sub_1C20D8ECC()
{
  result = qword_1EBF23210;
  if (!qword_1EBF23210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF23210);
  }

  return result;
}

unint64_t sub_1C20D8F20()
{
  result = qword_1EBF23218;
  if (!qword_1EBF23218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF23218);
  }

  return result;
}

unint64_t sub_1C20D8F74()
{
  result = qword_1EBF23228;
  if (!qword_1EBF23228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF23228);
  }

  return result;
}

unint64_t sub_1C20D8FC8()
{
  result = qword_1EBF23230;
  if (!qword_1EBF23230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF23230);
  }

  return result;
}

unint64_t sub_1C20D9020()
{
  result = qword_1EBF23238;
  if (!qword_1EBF23238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF23238);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t get_enum_tag_for_layout_string_26AuthenticationServicesCore46ASCPublicKeyCredentialAssertionExtensionInputsC3PRFV11InputValuesVSg(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1C20D9460(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 48);
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

uint64_t sub_1C20D94BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ASCPublicKeyCredentialRegistrationExtensionInputs.PRF.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ASCPublicKeyCredentialRegistrationExtensionInputs.PRF.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for ASCPublicKeyCredentialRegistrationExtensionInputs.LargeBlob.CodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for ASCPublicKeyCredentialRegistrationExtensionInputs.LargeBlob.CodingKeys(_WORD *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for ASCABLEPostHandshakeMessage.SupportedFeatures(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ASCABLEPostHandshakeMessage.SupportedFeatures(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C20D9910()
{
  result = qword_1EBF23258;
  if (!qword_1EBF23258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF23258);
  }

  return result;
}

unint64_t sub_1C20D9968()
{
  result = qword_1EBF23260;
  if (!qword_1EBF23260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF23260);
  }

  return result;
}

unint64_t sub_1C20D99C0()
{
  result = qword_1EBF23268;
  if (!qword_1EBF23268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF23268);
  }

  return result;
}

unint64_t sub_1C20D9A18()
{
  result = qword_1EBF23270;
  if (!qword_1EBF23270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF23270);
  }

  return result;
}

unint64_t sub_1C20D9A70()
{
  result = qword_1EBF23278;
  if (!qword_1EBF23278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF23278);
  }

  return result;
}

unint64_t sub_1C20D9AC8()
{
  result = qword_1EBF23280;
  if (!qword_1EBF23280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF23280);
  }

  return result;
}

unint64_t sub_1C20D9B20()
{
  result = qword_1EBF23288;
  if (!qword_1EBF23288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF23288);
  }

  return result;
}

unint64_t sub_1C20D9B78()
{
  result = qword_1EBF23290;
  if (!qword_1EBF23290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF23290);
  }

  return result;
}

unint64_t sub_1C20D9BD0()
{
  result = qword_1EBF23298;
  if (!qword_1EBF23298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF23298);
  }

  return result;
}

unint64_t sub_1C20D9C28()
{
  result = qword_1EBF232A0;
  if (!qword_1EBF232A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF232A0);
  }

  return result;
}

unint64_t sub_1C20D9C80()
{
  result = qword_1EBF232A8;
  if (!qword_1EBF232A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF232A8);
  }

  return result;
}

unint64_t sub_1C20D9CD8()
{
  result = qword_1EBF232B0;
  if (!qword_1EBF232B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF232B0);
  }

  return result;
}

unint64_t sub_1C20D9D30()
{
  result = qword_1EBF232B8;
  if (!qword_1EBF232B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF232B8);
  }

  return result;
}

unint64_t sub_1C20D9D88()
{
  result = qword_1EBF232C0;
  if (!qword_1EBF232C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF232C0);
  }

  return result;
}

unint64_t sub_1C20D9DE0()
{
  result = qword_1EBF232C8;
  if (!qword_1EBF232C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF232C8);
  }

  return result;
}

unint64_t sub_1C20D9E38()
{
  result = qword_1EBF232D0;
  if (!qword_1EBF232D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF232D0);
  }

  return result;
}

uint64_t sub_1C20D9E8C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000015 && 0x80000001C2184710 == a2 || (sub_1C2171324() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C61567475706E69 && a2 == 0xEB00000000736575 || (sub_1C2171324() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001C2184730 == a2)
  {

    return 2;
  }

  else
  {
    v5 = sub_1C2171324();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
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

uint64_t sub_1C20DA01C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_1C20DA234(uint64_t a1, unint64_t *a2, uint64_t a3)
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

unint64_t sub_1C20DA2D0()
{
  result = qword_1EDD4A7F0;
  if (!qword_1EDD4A7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD4A7F0);
  }

  return result;
}

char *ASCPasskeyAccountRegistrationLoginChoice.__allocating_init(with:clientApplicationBundleID:userHasSignInWithAppleAccountForService:)(char *a1, char *a2, char *a3, uint64_t a4)
{
  v5 = a4;
  v9 = objc_allocWithZone(v4);
  return ASCPasskeyAccountRegistrationLoginChoice.init(with:clientApplicationBundleID:userHasSignInWithAppleAccountForService:)(a1, a2, a3, v5);
}

char *ASCPasskeyAccountRegistrationLoginChoice.init(with:clientApplicationBundleID:userHasSignInWithAppleAccountForService:)(char *a1, char *a2, char *a3, char a4)
{
  v5 = *&a1[OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPublicKeyAccountRegistrationOptions_challenge];
  v6 = *&a1[OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPublicKeyAccountRegistrationOptions_challenge + 8];
  v7 = *&a1[OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPublicKeyAccountRegistrationOptions_userID];
  v8 = *&a1[OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPublicKeyAccountRegistrationOptions_userID + 8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF23400, &qword_1C2176810);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1C2176800;
  sub_1C20DB8B8(0, &qword_1EDD4A9B0, 0x1E696AD98);
  sub_1C20D865C(v5, v6);
  v27 = v7;
  sub_1C20D865C(v7, v8);
  *(v9 + 32) = sub_1C2170CD4();
  v25 = objc_allocWithZone(ASCPublicKeyCredentialCreationOptions);
  v10 = sub_1C2170154();
  sub_1C20D3174(v5, v6);
  v11 = sub_1C21708F4();
  v12 = sub_1C21708F4();
  v13 = sub_1C2170154();
  v14 = sub_1C21708F4();
  v15 = sub_1C2170B54();

  v16 = sub_1C21708F4();
  sub_1C20DB8B8(0, &qword_1EBF23410, off_1E815F1B8);
  v17 = sub_1C2170B54();
  v26 = [v25 initWithChallenge:v10 clientDataJSON:0 clientDataHash:0 relyingPartyIdentifier:v11 userName:v12 userIdentifier:v13 userDisplayName:v14 supportedAlgorithmIdentifiers:v15 attestationPreference:v16 userVerificationPreference:0 excludedCredentials:v17 extensions:0 origin:0];

  sub_1C20D3174(v27, v8);
  v18 = objc_allocWithZone(type metadata accessor for ASCPasskeyAccountRegistrationUserState(0));
  v19 = a1;
  v20 = ASCPasskeyAccountRegistrationUserState.init(for:clientApplicationBundleID:)(v19, a2, a3);
  v21 = type metadata accessor for ASCPasskeyAccountRegistrationLoginChoice();
  v22 = objc_allocWithZone(v21);
  *&v22[OBJC_IVAR____TtC26AuthenticationServicesCore40ASCPasskeyAccountRegistrationLoginChoice_options] = v19;
  *&v22[OBJC_IVAR____TtC26AuthenticationServicesCore40ASCPasskeyAccountRegistrationLoginChoice_userState] = v20;
  *&v22[OBJC_IVAR____TtC26AuthenticationServicesCore40ASCPasskeyAccountRegistrationLoginChoice_publicKeyCredentialCreationOptions] = v26;
  v22[OBJC_IVAR____TtC26AuthenticationServicesCore40ASCPasskeyAccountRegistrationLoginChoice_userHasSignInWithAppleAccountForService] = a4;
  v31.receiver = v22;
  v31.super_class = v21;
  v23 = objc_msgSendSuper2(&v31, sel_init);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v23;
}

id ASCPasskeyAccountRegistrationLoginChoice.init(coder:)(void *a1)
{
  type metadata accessor for ASCPublicKeyAccountRegistrationOptions();
  v2 = sub_1C2170CC4();
  if (v2)
  {
    v3 = v2;
    type metadata accessor for ASCPasskeyAccountRegistrationUserState(0);
    v4 = sub_1C2170CC4();
    if (v4)
    {
      v5 = v4;
      sub_1C20DB8B8(0, &qword_1EBF23418, off_1E815F1B0);
      v6 = sub_1C2170CC4();
      if (v6)
      {
        v7 = v6;
        v8 = sub_1C21708F4();
        v9 = [a1 decodeBoolForKey_];

        v10 = type metadata accessor for ASCPasskeyAccountRegistrationLoginChoice();
        v11 = objc_allocWithZone(v10);
        *&v11[OBJC_IVAR____TtC26AuthenticationServicesCore40ASCPasskeyAccountRegistrationLoginChoice_options] = v3;
        *&v11[OBJC_IVAR____TtC26AuthenticationServicesCore40ASCPasskeyAccountRegistrationLoginChoice_userState] = v5;
        *&v11[OBJC_IVAR____TtC26AuthenticationServicesCore40ASCPasskeyAccountRegistrationLoginChoice_publicKeyCredentialCreationOptions] = v7;
        v11[OBJC_IVAR____TtC26AuthenticationServicesCore40ASCPasskeyAccountRegistrationLoginChoice_userHasSignInWithAppleAccountForService] = v9;
        v17.receiver = v11;
        v17.super_class = v10;
        v12 = v3;
        v13 = v5;
        v14 = v7;
        v15 = objc_msgSendSuper2(&v17, sel_init);

        swift_getObjectType();
        swift_deallocPartialClassInstance();
        return v15;
      }

      v3 = v5;
    }
  }

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return 0;
}

void sub_1C20DAA7C(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC26AuthenticationServicesCore40ASCPasskeyAccountRegistrationLoginChoice_options);
  v4 = sub_1C21708F4();
  [a1 encodeObject:v3 forKey:v4];

  v5 = *(v1 + OBJC_IVAR____TtC26AuthenticationServicesCore40ASCPasskeyAccountRegistrationLoginChoice_userState);
  v6 = sub_1C21708F4();
  [a1 encodeObject:v5 forKey:v6];

  v7 = *(v1 + OBJC_IVAR____TtC26AuthenticationServicesCore40ASCPasskeyAccountRegistrationLoginChoice_publicKeyCredentialCreationOptions);
  v8 = sub_1C21708F4();
  [a1 encodeObject:v7 forKey:v8];

  v9 = *(v1 + OBJC_IVAR____TtC26AuthenticationServicesCore40ASCPasskeyAccountRegistrationLoginChoice_userHasSignInWithAppleAccountForService);
  v10 = sub_1C21708F4();
  [a1 encodeBool:v9 forKey:v10];
}

uint64_t sub_1C20DAC68()
{
  v1 = 0;
  v2 = v0[8];
  v3 = *(v2 + OBJC_IVAR____TtC26AuthenticationServicesCore40ASCPasskeyAccountRegistrationLoginChoice_options);
  v4 = *(v3 + OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPublicKeyAccountRegistrationOptions_acceptedContactIdentifiers);
  v5 = *(v4 + 16);
  v6 = (v4 + 32);
  do
  {
    if (v5 == v1)
    {
      goto LABEL_9;
    }

    v7 = v6[v1++];
  }

  while (v7 != 1);
  v8 = *(v2 + OBJC_IVAR____TtC26AuthenticationServicesCore40ASCPasskeyAccountRegistrationLoginChoice_userState);
  v9 = OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState_emailAddress;
  v0[9] = v8;
  v0[10] = v9;
  v10 = v8 + v9;
  swift_beginAccess();
  if (*(v10 + 8))
  {
    v11 = *(v3 + OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPublicKeyAccountRegistrationOptions_relyingPartyIdentifier);
    v12 = *(v3 + OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPublicKeyAccountRegistrationOptions_relyingPartyIdentifier + 8);
    v0[11] = v12;

    v13 = swift_task_alloc();
    v0[12] = v13;
    *v13 = v0;
    v13[1] = sub_1C20DAEA8;

    return sub_1C2111FD0(v11, v12);
  }

  else
  {
    v5 = *(v4 + 16);
    do
    {
LABEL_9:
      if (!v5)
      {
        goto LABEL_15;
      }

      v15 = *v6++;
      --v5;
    }

    while ((v15 & 1) != 0);
    v16 = *(v0[8] + OBJC_IVAR____TtC26AuthenticationServicesCore40ASCPasskeyAccountRegistrationLoginChoice_userState);
    v17 = OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState_phoneNumber;
    swift_beginAccess();
    v18 = *(v16 + v17);
    if (!v18)
    {
LABEL_15:
      v27 = 0;
      v26 = 0;
      goto LABEL_16;
    }

    v19 = *&v18[OBJC_IVAR____TtC26AuthenticationServicesCore14ASCPhoneNumber_cnPhoneNumber];
    v20 = v18;
    v21 = [v19 formattedStringValue];
    if (!v21)
    {
      v21 = [v19 stringValue];
    }

    v22 = v21;
    v23 = sub_1C2170914();
    v25 = v24;

    v26 = v25;
    v27 = v23;
LABEL_16:
    v28 = v0[1];

    return v28(v27, v26);
  }
}

uint64_t sub_1C20DAEA8()
{

  return MEMORY[0x1EEE6DFA0](sub_1C20DAFC0, 0, 0);
}

uint64_t sub_1C20DAFC0()
{
  v1 = (v0[9] + v0[10]);
  v3 = *v1;
  v2 = v1[1];
  v5 = v0[1];

  return v5(v3, v2);
}

BOOL sub_1C20DB044(char a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != (a1 & 1));
  return v4 != 0;
}

BOOL sub_1C20DB074()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF23420, &unk_1C2176820);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v18 - v2;
  v4 = *(v0 + OBJC_IVAR____TtC26AuthenticationServicesCore40ASCPasskeyAccountRegistrationLoginChoice_options);
  if (*(v4 + OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPublicKeyAccountRegistrationOptions_shouldRequestName) != 1 || (v5 = *(v0 + OBJC_IVAR____TtC26AuthenticationServicesCore40ASCPasskeyAccountRegistrationLoginChoice_userState), v6 = OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState_name, swift_beginAccess(), sub_1C20DB900(v5 + v6, v3), v7 = sub_1C216FF04(), LODWORD(v5) = (*(*(v7 - 8) + 48))(v3, 1, v7), sub_1C20DB970(v3), v5 != 1))
  {
    v8 = 0;
    v9 = *(v4 + OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPublicKeyAccountRegistrationOptions_acceptedContactIdentifiers);
    v10 = *(v9 + 16);
    v11 = (v9 + 32);
    do
    {
      if (v10 == v8)
      {
        goto LABEL_8;
      }

      v12 = v11[v8++];
    }

    while (v12 != 1);
    v13 = *(v0 + OBJC_IVAR____TtC26AuthenticationServicesCore40ASCPasskeyAccountRegistrationLoginChoice_userState) + OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState_emailAddress;
    swift_beginAccess();
    if (*(v13 + 8))
    {
      return 1;
    }

    v10 = *(v9 + 16);
LABEL_8:
    while (v10)
    {
      v14 = *v11++;
      --v10;
      if ((v14 & 1) == 0)
      {
        v15 = *(v0 + OBJC_IVAR____TtC26AuthenticationServicesCore40ASCPasskeyAccountRegistrationLoginChoice_userState);
        v16 = OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState_phoneNumber;
        swift_beginAccess();
        return *(v15 + v16) != 0;
      }
    }
  }

  return 0;
}

uint64_t sub_1C20DB260()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C20DB2EC;

  return sub_1C20DAC48();
}

uint64_t sub_1C20DB2EC(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t sub_1C20DB564(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1C20DB60C;

  return sub_1C20DAC48();
}

uint64_t sub_1C20DB60C(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(*v2 + 16);
  v6 = *v2;

  if (a2)
  {
    v7 = sub_1C21708F4();
  }

  else
  {
    v7 = 0;
  }

  v8 = *(v4 + 24);
  (v8)[2](v8, v7);

  _Block_release(v8);
  v9 = *(v6 + 8);

  return v9();
}

id ASCPasskeyAccountRegistrationLoginChoice.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ASCPasskeyAccountRegistrationLoginChoice.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ASCPasskeyAccountRegistrationLoginChoice();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C20DB8B8(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_1C20DB900(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF23420, &unk_1C2176820);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C20DB970(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF23420, &unk_1C2176820);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t dispatch thunk of ASCPasskeyAccountRegistrationLoginChoice.contactIdentifierValue.getter()
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x90);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C20DB2EC;

  return v5();
}

uint64_t dispatch thunk of ASCPasskeyAccountRegistrationLoginChoice.contactIdentifierValue()()
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xA0);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C20DBF90;

  return v5();
}

uint64_t sub_1C20DBCE0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1C20DBD8C;

  return sub_1C20DB564(v2, v3);
}

uint64_t sub_1C20DBD8C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t objectdestroy_10Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C20DBEC0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1C20DBF8C;

  return sub_1C2166CA0(a1, v4, v5, v6);
}

uint64_t type metadata accessor for ASCABLEAdvertisement(uint64_t a1)
{
  result = qword_1EDD4A868;
  if (!qword_1EDD4A868)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C20DC008(uint64_t a1)
{
  result = sub_1C2170024();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C20DC094()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF251D0, &qword_1C2176940);
  v1 = MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v15 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23508, &qword_1C2176960);
  v6 = sub_1C2170024();
  v7 = *(v6 - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1C21768C0;
  sub_1C2170014();
  v11 = *(v7 + 48);
  result = v11(v5, 1, v6);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v13 = v10 + v9;
    v14 = *(v7 + 32);
    v14(v13, v5, v6);
    sub_1C2170014();
    result = v11(v3, 1, v6);
    if (result != 1)
    {
      result = (v14)(v13 + v8, v3, v6);
      qword_1EDD4CAB0 = v10;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C20DC2BC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF251D0, &qword_1C2176940);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v49 - v7;
  v9 = sub_1C2170024();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v49 - v14;
  v16 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v16 != 2)
    {
      goto LABEL_14;
    }

    v18 = *(a1 + 16);
    v17 = *(a1 + 24);
    v19 = __OFSUB__(v17, v18);
    v20 = v17 - v18;
    if (!v19)
    {
      if (v20 != 16)
      {
        goto LABEL_14;
      }

      goto LABEL_8;
    }

    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v16)
  {
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 != 16)
      {
        goto LABEL_14;
      }

LABEL_8:
      v21 = sub_1C20DC7B8(14, 15, a1, a2);
      v22 = sub_1C212DC80(v21);
      sub_1C20DC824(v22, v8);
      if ((*(v10 + 48))(v8, 1, v9) != 1)
      {
        v52 = *(v10 + 32);
        v52(v15, v8, v9);
        v51 = sub_1C2170134();
        v36 = sub_1C20DC7B8(1, 10, a1, a2);
        v50 = v37;
        v38 = sub_1C20DC7B8(11, 13, a1, a2);
        v40 = v39;
        v41 = v15;
        v42 = v52;
        v52(v13, v41, v9);
        *a3 = v51;
        v43 = v50;
        *(a3 + 8) = v36;
        *(a3 + 16) = v43;
        *(a3 + 24) = v38;
        *(a3 + 32) = v40;
        v44 = type metadata accessor for ASCABLEAdvertisement(0);
        v42(a3 + *(v44 + 28), v13, v9);
        v45 = (a3 + *(v44 + 32));
        *v45 = a1;
        v45[1] = a2;
        return (*(*(v44 - 8) + 56))(a3, 0, 1, v44);
      }

      sub_1C20DD6F0(v8);
      if (qword_1EDD4A728 == -1)
      {
LABEL_10:
        v23 = sub_1C21705A4();
        __swift_project_value_buffer(v23, qword_1EDD4CB08);
        v24 = sub_1C2170584();
        v25 = sub_1C2170C54();
        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          *v26 = 0;
          v27 = "Could not decode caBLE server URL";
          v28 = v25;
          v29 = v24;
          v30 = v26;
          v31 = 2;
LABEL_30:
          _os_log_impl(&dword_1C20AD000, v29, v28, v27, v30, v31);
          MEMORY[0x1C6915360](v26, -1, -1);
        }

LABEL_31:
        sub_1C20D3174(a1, a2);

        v48 = type metadata accessor for ASCABLEAdvertisement(0);
        return (*(*(v48 - 8) + 56))(a3, 1, 1, v48);
      }

LABEL_34:
      swift_once();
      goto LABEL_10;
    }

    goto LABEL_33;
  }

  if (BYTE6(a2) == 16)
  {
    goto LABEL_8;
  }

LABEL_14:
  if (qword_1EDD4A728 != -1)
  {
    swift_once();
  }

  v32 = sub_1C21705A4();
  __swift_project_value_buffer(v32, qword_1EDD4CB08);
  sub_1C20D865C(a1, a2);
  v24 = sub_1C2170584();
  v33 = sub_1C2170C54();
  if (!os_log_type_enabled(v24, v33))
  {
    sub_1C20D3174(a1, a2);
    goto LABEL_31;
  }

  result = swift_slowAlloc();
  *result = 134217984;
  if (v16 > 1)
  {
    if (v16 != 2)
    {
      v35 = 0;
      goto LABEL_29;
    }

    v47 = *(a1 + 16);
    v46 = *(a1 + 24);
    v19 = __OFSUB__(v46, v47);
    v35 = v46 - v47;
    if (!v19)
    {
      goto LABEL_29;
    }

    __break(1u);
  }

  else if (!v16)
  {
    v35 = BYTE6(a2);
LABEL_29:
    *(result + 4) = v35;
    v26 = result;
    sub_1C20D3174(a1, a2);
    v27 = "Found caBLE advertisement of unexpected size: %ld";
    v28 = v33;
    v29 = v24;
    v30 = v26;
    v31 = 12;
    goto LABEL_30;
  }

  LODWORD(v35) = HIDWORD(a1) - a1;
  if (!__OFSUB__(HIDWORD(a1), a1))
  {
    v35 = v35;
    goto LABEL_29;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C20DC7B8(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v4 == 2)
    {
      v7 = *(a3 + 16);
      v6 = *(a3 + 24);
    }

    else
    {
      v6 = 0;
      v7 = 0;
    }
  }

  else
  {
    v5 = v4 == 0;
    if (v4)
    {
      v6 = a3 >> 32;
    }

    else
    {
      v6 = BYTE6(a4);
    }

    if (v5)
    {
      v7 = 0;
    }

    else
    {
      v7 = a3;
    }
  }

  if (v7 > a2)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v6 <= a2)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (a2 + 1 >= result)
  {
    return sub_1C2170124();
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1C20DC824@<X0>(unsigned __int16 a1@<W0>, uint64_t a2@<X8>)
{
  LOWORD(v2) = a1;
  v4 = a1;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23500, &qword_1C2176948);
  MEMORY[0x1EEE9AC00](v53);
  v6 = &v49 - v5;
  v7 = sub_1C2170844();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C2170724();
  v55 = *(v11 - 8);
  v56 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v54 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1C2170964();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v4 > 0xFF)
  {
    v52 = a2;
    sub_1C2170954();
    v23 = sub_1C2170924();
    v25 = v24;
    result = (*(v14 + 8))(v16, v13);
    if (v25 >> 60 == 15)
    {
      __break(1u);
      return result;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF232F0, &unk_1C2176950);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_1C21768D0;
    *(v27 + 32) = v2;
    *(v27 + 34) = 0;
    v60 = v23;
    v61 = v25;
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF23750, &qword_1C2176DC0);
    v58 = v28;
    v59 = sub_1C20DD758();
    v57.n128_u64[0] = v27;
    __swift_project_boxed_opaque_existential_1(&v57, v28);
    v50 = v25;
    v51 = v23;
    sub_1C20B22B8(v23, v25);

    sub_1C2170114();
    __swift_destroy_boxed_opaque_existential_0Tm(&v57);

    v30 = v60;
    v29 = v61;
    sub_1C20DD7BC();
    sub_1C2170704();
    sub_1C20D865C(v30, v29);
    sub_1C210656C(v30, v29, v10);
    sub_1C20D3174(v30, v29);
    v31 = v54;
    sub_1C21706F4();
    (*(v8 + 8))(v10, v7);
    (*(v55 + 16))(v6, v31, v56);
    *&v6[*(v53 + 36)] = 8;
    v32 = sub_1C212D9B0(v6);
    v33 = sub_1C21709C4();
    a2 = v52;
    if (v33)
    {
      v34 = v33;
      v2 = sub_1C20DD5B4(v33, 0);
      v35 = sub_1C20DD4EC(&v57, v2 + 4, v34, 0xD000000000000020, 0x80000001C2184CC0);

      if (v35 != v34)
      {
        __break(1u);
        goto LABEL_9;
      }
    }

    else
    {
      v2 = MEMORY[0x1E69E7CC0];
    }

    v57.n128_u64[0] = 0x2E656C626163;
    v57.n128_u64[1] = 0xE600000000000000;
    if (v32 < 4)
    {
LABEL_22:

      v46 = &aCom[16 * (v32 & 3)];
      v47 = *v46;
      v48 = *(v46 + 1);

      swift_arrayDestroy();
      MEMORY[0x1C6913CB0](v47, v48);

      sub_1C2170014();

      sub_1C20D3174(v30, v29);
      sub_1C20B23C8(v51, v50);
      return (*(v55 + 8))(v54, v56);
    }

    v41 = v32 >> 2;
    while ((v41 & 0x1F) < v2[2])
    {
      v42 = &v2[2 * (v41 & 0x1F) + 4];
      v43 = *v42;
      v44 = v42[1];

      MEMORY[0x1C6913CA0](v43, v44);

      v45 = v41 > 0x1F;
      v41 >>= 5;
      if (!v45)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
  }

  else if (qword_1EDD4A710 == -1)
  {
    goto LABEL_3;
  }

  swift_once();
LABEL_3:
  v17 = qword_1EDD4CAB0;
  if (*(qword_1EDD4CAB0 + 16) <= v2)
  {
LABEL_9:
    if (qword_1EDD4A728 != -1)
    {
      swift_once();
    }

    v36 = sub_1C21705A4();
    __swift_project_value_buffer(v36, qword_1EDD4CB08);
    v37 = sub_1C2170584();
    v38 = sub_1C2170C64();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 33554688;
      *(v39 + 4) = v2;
      _os_log_impl(&dword_1C20AD000, v37, v38, "Found unknown reserved caBLE URL: %hu", v39, 6u);
      MEMORY[0x1C6915360](v39, -1, -1);
    }

    v40 = sub_1C2170024();
    v19 = *(*(v40 - 8) + 56);
    v22 = v40;
    v20 = a2;
    v21 = 1;
    goto LABEL_14;
  }

  v18 = sub_1C2170024();
  v56 = *(v18 - 8);
  (*(v56 + 16))(a2, v17 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v2, v18);
  v19 = *(v56 + 56);
  v20 = a2;
  v21 = 0;
  v22 = v18;
LABEL_14:

  return v19(v20, v21, 1, v22);
}

uint64_t sub_1C20DCFA4@<X0>(int a1@<W0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, unsigned int a6@<W5>, uint64_t a7@<X8>)
{
  v72 = a2;
  v73 = a5;
  v70 = a7;
  v71 = a3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF251D0, &qword_1C2176940);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v63 - v11;
  v13 = sub_1C2170024();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v63 - v18;
  v69 = a6;
  sub_1C20DC824(a6, v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1C20DD6F0(v12);
    if (qword_1EDD4A728 != -1)
    {
      swift_once();
    }

    v20 = sub_1C21705A4();
    __swift_project_value_buffer(v20, qword_1EDD4CB08);
    v21 = sub_1C2170584();
    v22 = sub_1C2170C54();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1C20AD000, v21, v22, "Could not decode caBLE server URL", v23, 2u);
      MEMORY[0x1C6915360](v23, -1, -1);
    }

    sub_1C20D3174(a4, v73);
    sub_1C20D3174(v72, v71);

    v24 = type metadata accessor for ASCABLEAdvertisement(0);
    return (*(*(v24 - 8) + 56))(v70, 1, 1, v24);
  }

  else
  {
    v26 = *(v14 + 32);
    v66 = v14 + 32;
    v67 = v26;
    v26(v19, v12, v13);
    v27 = *(v14 + 16);
    v65 = v17;
    v27(v17, v19, v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF232F0, &unk_1C2176950);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1C21768E0;
    *(v28 + 32) = a1;
    v29 = sub_1C20E7898(v28);
    v68 = a4;
    v30 = v70;
    v31 = v29;
    v32 = v72;
    v34 = v33;

    v80 = v31;
    v81 = v34;
    v64 = a1;
    v35 = MEMORY[0x1E6969080];
    v63 = v13;
    v76 = MEMORY[0x1E6969080];
    v77 = MEMORY[0x1E6969078];
    v74 = v32;
    v36 = v32;
    v37 = v71;
    v75 = v71;
    v38 = __swift_project_boxed_opaque_existential_1(&v74, MEMORY[0x1E6969080]);
    v39 = *v38;
    v40 = v38[1];
    sub_1C20D865C(v31, v34);
    sub_1C20D865C(v36, v37);
    sub_1C2106434(v39, v40, &v80);
    sub_1C20D3174(v31, v34);
    __swift_destroy_boxed_opaque_existential_0Tm(&v74);
    v41 = v80;
    v42 = v81;
    v78 = v80;
    v79 = v81;
    v76 = v35;
    v77 = MEMORY[0x1E6969078];
    v43 = v68;
    v44 = v73;
    v74 = v68;
    v75 = v73;
    v45 = __swift_project_boxed_opaque_existential_1(&v74, v35);
    v47 = *v45;
    v46 = v45[1];
    sub_1C20D865C(v41, v42);
    sub_1C20D865C(v43, v44);
    sub_1C2106434(v47, v46, &v78);
    sub_1C20D3174(v41, v42);
    __swift_destroy_boxed_opaque_existential_0Tm(&v74);
    v48 = v78;
    v49 = v79;
    v50 = sub_1C212E2E8(1, v69);
    v52 = v51;
    v80 = v48;
    v81 = v49;
    v76 = MEMORY[0x1E6969080];
    v77 = MEMORY[0x1E6969078];
    v74 = v50;
    v75 = v51;
    v53 = __swift_project_boxed_opaque_existential_1(&v74, MEMORY[0x1E6969080]);
    v54 = *v53;
    v55 = v53[1];
    sub_1C20D865C(v48, v49);
    sub_1C20D865C(v50, v52);
    sub_1C2106434(v54, v55, &v80);
    sub_1C20D3174(v50, v52);
    sub_1C20D3174(v48, v49);
    v56 = v63;
    (*(v14 + 8))(v19, v63);
    __swift_destroy_boxed_opaque_existential_0Tm(&v74);
    v57 = v80;
    v58 = v81;
    *v30 = v64;
    v59 = v71;
    *(v30 + 8) = v72;
    *(v30 + 16) = v59;
    v60 = v73;
    *(v30 + 24) = v68;
    *(v30 + 32) = v60;
    v61 = type metadata accessor for ASCABLEAdvertisement(0);
    v67(v30 + *(v61 + 28), v65, v56);
    v62 = (v30 + *(v61 + 32));
    *v62 = v57;
    v62[1] = v58;
    return (*(*(v61 - 8) + 56))(v30, 0, 1, v61);
  }
}

__n128 *sub_1C20DD4EC(__n128 *result, uint64_t *a2, uint64_t a3, unint64_t a4, unint64_t a5)
{
  v5 = result;
  v6 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v6 = a4 & 0xFFFFFFFFFFFFLL;
  }

  v14 = a4;
  v15 = a5;
  v16.n128_u64[0] = 0;
  v16.n128_u64[1] = v6;
  v7.n128_u64[0] = 0;
  v7.n128_u64[1] = v6;
  if (!a2)
  {
LABEL_12:
    v8 = 0;
    goto LABEL_16;
  }

  v8 = a3;
  if (!a3)
  {
LABEL_16:
    v5->n128_u64[0] = a4;
    v5->n128_u64[1] = a5;
    v5[1] = v7;
    return v8;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = a2;
    v10 = 1;
    while (1)
    {
      v11 = sub_1C2170A24();
      if (!v12)
      {
        a4 = v14;
        a5 = v15;
        v8 = v10 - 1;
        goto LABEL_15;
      }

      *v9 = v11;
      v9[1] = v12;
      if (v8 == v10)
      {
        break;
      }

      v9 += 2;
      if (__OFADD__(v10++, 1))
      {
        __break(1u);
        goto LABEL_12;
      }
    }

    a4 = v14;
    a5 = v15;
LABEL_15:
    v7 = v16;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_1C20DD5B4(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF23510, &qword_1C2176968);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

BOOL sub_1C20DD638(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (!sub_1C21068CC(a1[1], a1[2], a2[1], a2[2]))
  {
    return 0;
  }

  if (!sub_1C21068CC(a1[3], a1[4], a2[3], a2[4]))
  {
    return 0;
  }

  v4 = type metadata accessor for ASCABLEAdvertisement(0);
  if ((sub_1C216FFC4() & 1) == 0)
  {
    return 0;
  }

  v5 = *(v4 + 32);
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = *v8;
  v10 = v8[1];

  return sub_1C21068CC(v6, v7, v9, v10);
}

uint64_t sub_1C20DD6F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF251D0, &qword_1C2176940);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C20DD758()
{
  result = qword_1EDD4A8B0;
  if (!qword_1EDD4A8B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBF23750, &qword_1C2176DC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD4A8B0);
  }

  return result;
}

unint64_t sub_1C20DD7BC()
{
  result = qword_1EDD4A7A0;
  if (!qword_1EDD4A7A0)
  {
    sub_1C2170844();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD4A7A0);
  }

  return result;
}

uint64_t _sSo8ASCAgentC26AuthenticationServicesCoreE29validatePresenceOfTestOptionsySbAC020ASCCredentialRequesthI0CSgFZ_0(uint64_t a1)
{
  if (!a1)
  {
    return 1;
  }

  if ([objc_opt_self() isInternalInstall])
  {
    return 1;
  }

  if (qword_1EDD4A728 != -1)
  {
    swift_once();
  }

  v2 = sub_1C21705A4();
  __swift_project_value_buffer(v2, qword_1EDD4CB08);
  v3 = sub_1C2170584();
  v4 = sub_1C2170C64();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1C20AD000, v3, v4, "Attempted to use test options on public build.", v5, 2u);
    MEMORY[0x1C6915360](v5, -1, -1);
  }

  return 0;
}

uint64_t _sSo8ASCAgentC26AuthenticationServicesCoreE26isClientEntitledWebBrowser10connection11testOptionsSbSo15NSXPCConnectionC_AC024ASCCredentialRequestTestL0CSgtFZ_0(void *a1, uint64_t a2)
{
  v4 = sub_1C2170354();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C2170374();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((_sSo8ASCAgentC26AuthenticationServicesCoreE29validatePresenceOfTestOptionsySbAC020ASCCredentialRequesthI0CSgFZ_0(a2) & 1) == 0)
  {
    goto LABEL_11;
  }

  if (!a2 || (v12 = OBJC_IVAR____TtC26AuthenticationServicesCore31ASCCredentialRequestTestOptions_isRequesterAWebBrowser, swift_beginAccess(), v13 = *(a2 + v12), v13 == 2))
  {
    [a1 auditToken];
    sub_1C2170384();
    (*(v5 + 104))(v7, *MEMORY[0x1E695AA00], v4);
    v14 = sub_1C2170364();
    (*(v5 + 8))(v7, v4);
    (*(v9 + 8))(v11, v8);
    if (v14)
    {
      LOBYTE(v13) = 1;
      return v13 & 1;
    }

    if (qword_1EDD4A728 != -1)
    {
      swift_once();
    }

    v15 = sub_1C21705A4();
    __swift_project_value_buffer(v15, qword_1EDD4CB08);
    v16 = sub_1C2170584();
    v17 = sub_1C2170C54();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1C20AD000, v16, v17, "Client is missing web browser entitlement.", v18, 2u);
      MEMORY[0x1C6915360](v18, -1, -1);
    }

LABEL_11:
    LOBYTE(v13) = 0;
  }

  return v13 & 1;
}

uint64_t _sSo8ASCAgentC26AuthenticationServicesCoreE31isClientTCCAuthorizedWebBrowser10connection11testOptionsSbSo15NSXPCConnectionC_AC024ASCCredentialRequestTestL0CSgtFZ_0(void *a1, uint64_t a2)
{
  if ((_sSo8ASCAgentC26AuthenticationServicesCoreE29validatePresenceOfTestOptionsySbAC020ASCCredentialRequesthI0CSgFZ_0(a2) & 1) == 0)
  {
    goto LABEL_11;
  }

  if (!a2 || (v4 = OBJC_IVAR____TtC26AuthenticationServicesCore31ASCCredentialRequestTestOptions_isRequesterAWebBrowser, swift_beginAccess(), v5 = *(a2 + v4), v5 == 2))
  {
    v6 = @"kTCCServiceWebBrowserPublicKeyCredential";
    [a1 auditToken];
    v7 = TCCAccessCheckAuditToken();

    if (v7)
    {
      LOBYTE(v5) = 1;
      return v5 & 1;
    }

    if (qword_1EDD4A728 != -1)
    {
      swift_once();
    }

    v8 = sub_1C21705A4();
    __swift_project_value_buffer(v8, qword_1EDD4CB08);
    v9 = sub_1C2170584();
    v10 = sub_1C2170C54();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1C20AD000, v9, v10, "Client is not authorized via TCC.", v11, 2u);
      MEMORY[0x1C6915360](v11, -1, -1);
    }

LABEL_11:
    LOBYTE(v5) = 0;
  }

  return v5 & 1;
}

uint64_t sub_1C20DDE60(uint64_t a1)
{
  v25[5] = *MEMORY[0x1E69E9840];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23660, &qword_1C2176D10);
  MEMORY[0x1EEE9AC00](v2);
  sub_1C20EB3E8(a1, &v21[-v3], &qword_1EBF23660, &qword_1C2176D10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23668, &qword_1C2176D18);
  if (!swift_dynamicCast())
  {
    v24 = 0;
    memset(v23, 0, sizeof(v23));
    v4 = sub_1C20EB498(v23, &qword_1EBF23670, &unk_1C2176D20);
    v23[0] = xmmword_1C2176980;
    MEMORY[0x1EEE9AC00](v4);
    *&v21[-16] = a1;
    v7 = sub_1C20F9A34(sub_1C20E8208, &v21[-32]);
    v9 = v8;
    v10 = v5;
    v11 = *(&v23[0] + 1) >> 62;
    if ((*(&v23[0] + 1) >> 62) > 1)
    {
      if (v11 != 2)
      {
        if (!v6)
        {
          goto LABEL_18;
        }

        v16 = 0;
LABEL_30:
        if (v16 < v6)
        {
          goto LABEL_36;
        }

        sub_1C2170104();
LABEL_32:

        goto LABEL_33;
      }

      v13 = *(*&v23[0] + 16);
      v12 = *(*&v23[0] + 24);
      v14 = __OFSUB__(v12, v13);
      v15 = v12 - v13;
      if (v14)
      {
        goto LABEL_37;
      }

      if (v6 != v15)
      {
        goto LABEL_13;
      }
    }

    else
    {
      if (!v11)
      {
        if (v6 == BYTE14(v23[0]))
        {
          goto LABEL_18;
        }

        goto LABEL_13;
      }

      if (__OFSUB__(DWORD1(v23[0]), v23[0]))
      {
        goto LABEL_38;
      }

      if (v6 != DWORD1(v23[0]) - LODWORD(v23[0]))
      {
LABEL_13:
        if (v11 == 2)
        {
          v16 = *(*&v23[0] + 24);
        }

        else if (v11 == 1)
        {
          v16 = *&v23[0] >> 32;
        }

        else
        {
          v16 = BYTE14(v23[0]);
        }

        goto LABEL_30;
      }
    }

LABEL_18:
    memset(v25, 0, 15);
    if (v5)
    {
      LOBYTE(v17) = 0;
      do
      {
        v18 = *(v7 + 2);
        if (v9 == v18)
        {
          break;
        }

        if (v9 >= v18)
        {
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
LABEL_38:
          __break(1u);
        }

        *(v25 + v17) = v7[v9 + 32];
        v17 = v17 + 1;
        if ((v17 >> 8))
        {
          goto LABEL_35;
        }

        if (v17 == 14)
        {
          *&v22 = v25[0];
          *(&v22 + 6) = *(v25 + 6);
          sub_1C2170114();
          LOBYTE(v17) = 0;
        }

        ++v9;
        --v10;
      }

      while (v10);
      if (v17)
      {
        *&v22 = v25[0];
        *(&v22 + 6) = *(v25 + 6);
        sub_1C2170114();
      }
    }

    goto LABEL_32;
  }

  sub_1C20AFFE8(v23, v25);
  __swift_project_boxed_opaque_existential_1(v25, v25[3]);
  sub_1C216FE24();
  v23[0] = v22;
  __swift_destroy_boxed_opaque_existential_0Tm(v25);
LABEL_33:
  v19 = v23[0];
  sub_1C20D865C(*&v23[0], *(&v23[0] + 1));
  sub_1C20EB498(a1, &qword_1EBF23660, &qword_1C2176D10);
  sub_1C20D3174(v19, *(&v19 + 1));
  return v19;
}

uint64_t sub_1C20DE218(uint64_t a1, unint64_t a2)
{
  v52 = *MEMORY[0x1E69E9840];
  v50 = a1;
  v51 = a2;
  *&v46 = a1;
  *(&v46 + 1) = a2;
  sub_1C20D865C(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF23710, &qword_1C2176D88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23668, &qword_1C2176D18);
  if (swift_dynamicCast())
  {
    sub_1C20AFFE8(v44, &v47);
    __swift_project_boxed_opaque_existential_1(&v47, v49);
    sub_1C216FE24();
    v44[0] = v46;
    __swift_destroy_boxed_opaque_existential_0Tm(&v47);
    goto LABEL_61;
  }

  v45 = 0;
  memset(v44, 0, sizeof(v44));
  sub_1C20EB498(v44, &qword_1EBF23670, &unk_1C2176D20);
  v2 = v51 >> 62;
  if ((v51 >> 62) > 1)
  {
    v3 = 0;
    v4 = 0;
    if (v2 == 2)
    {
      v3 = *(v50 + 16);
      v4 = *(v50 + 24);
    }
  }

  else
  {
    if (v2)
    {
      v3 = v50;
    }

    else
    {
      v3 = 0;
    }

    if (v2)
    {
      v4 = v50 >> 32;
    }

    else
    {
      v4 = BYTE6(v51);
    }
  }

  v5 = sub_1C20FA9B8(v3, v4, v50, v51);
  *&v44[0] = sub_1C20E7974(v5);
  *(&v44[0] + 1) = v6;
  MEMORY[0x1EEE9AC00](*&v44[0]);
  v29[2] = &v50;
  sub_1C20F9DD8(sub_1C20EB228, v29);
  v7 = v47;
  v8 = v48;
  v9 = *(&v44[0] + 1) >> 62;
  if ((*(&v44[0] + 1) >> 62) > 1)
  {
    if (v9 == 2)
    {
      v11 = *(*&v44[0] + 16);
      v10 = *(*&v44[0] + 24);
      v12 = __OFSUB__(v10, v11);
      v13 = v10 - v11;
      if (v12)
      {
        goto LABEL_73;
      }

      if (v49 != v13)
      {
        goto LABEL_22;
      }
    }

    else if (v49)
    {
      v14 = 0;
      goto LABEL_58;
    }

    goto LABEL_27;
  }

  if (v9)
  {
    if (__OFSUB__(DWORD1(v44[0]), v44[0]))
    {
      goto LABEL_74;
    }

    if (v49 != DWORD1(v44[0]) - LODWORD(v44[0]))
    {
      goto LABEL_22;
    }

    goto LABEL_27;
  }

  if (v49 == BYTE14(v44[0]))
  {
LABEL_27:
    LOBYTE(v15) = 0;
    v16 = *(&v47 + 1) >> 62;
    v42 = v47 >> 32;
    v43 = BYTE14(v47);
    *(&v47 + 7) = 0;
    *&v47 = 0;
    v41 = v7 >> 8;
    v40 = v7 >> 16;
    v39 = v7 >> 24;
    v38 = DWORD1(v7);
    v37 = v7 >> 40;
    v36 = WORD3(v7);
    v35 = BYTE7(v7);
    v34 = *(&v7 + 1) >> 8;
    v33 = *(&v7 + 1) >> 16;
    v32 = *(&v7 + 1) >> 24;
    v31 = HIDWORD(*(&v7 + 1));
    v30 = *(&v7 + 1) >> 40;
    while (1)
    {
      if (v16 > 1)
      {
        if (v16 == 2)
        {
          v17 = *(v7 + 16);
LABEL_33:
          if (v8 == v17)
          {
            goto LABEL_62;
          }

          goto LABEL_36;
        }
      }

      else
      {
        v17 = v7;
        if (v16)
        {
          goto LABEL_33;
        }
      }

      if (!v8)
      {
LABEL_62:
        if (v15)
        {
          *&v46 = v47;
          *(&v46 + 6) = *(&v47 + 6);
          sub_1C2170114();
        }

        goto LABEL_60;
      }

LABEL_36:
      v12 = __OFSUB__(v8--, 1);
      if (v12)
      {
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
      }

      if (v16 > 1)
      {
        if (v16 != 2)
        {
          goto LABEL_75;
        }

        if (v8 < *(v7 + 16))
        {
          goto LABEL_66;
        }

        if (v8 >= *(v7 + 24))
        {
          goto LABEL_69;
        }

        v19 = sub_1C216FDD4();
        if (!v19)
        {
          goto LABEL_77;
        }

        v20 = v19;
        v21 = sub_1C216FE04();
        v22 = v8 - v21;
        if (__OFSUB__(v8, v21))
        {
          goto LABEL_71;
        }

        goto LABEL_52;
      }

      if (v16)
      {
        if (v8 < v7 || v8 >= v42)
        {
          goto LABEL_68;
        }

        v23 = sub_1C216FDD4();
        if (!v23)
        {
          goto LABEL_76;
        }

        v20 = v23;
        v24 = sub_1C216FE04();
        v22 = v8 - v24;
        if (__OFSUB__(v8, v24))
        {
          goto LABEL_70;
        }

LABEL_52:
        v18 = *(v20 + v22);
        goto LABEL_53;
      }

      if (v8 >= v43)
      {
        goto LABEL_67;
      }

      LOBYTE(v46) = v7;
      BYTE1(v46) = v41;
      BYTE2(v46) = v40;
      BYTE3(v46) = v39;
      BYTE4(v46) = v38;
      BYTE5(v46) = v37;
      BYTE6(v46) = v36;
      BYTE7(v46) = v35;
      BYTE8(v46) = BYTE8(v7);
      BYTE9(v46) = v34;
      BYTE10(v46) = v33;
      BYTE11(v46) = v32;
      BYTE12(v46) = v31;
      BYTE13(v46) = v30;
      v18 = *(&v46 + v8);
LABEL_53:
      *(&v47 + v15) = v18;
      v15 = v15 + 1;
      if ((v15 >> 8))
      {
        goto LABEL_65;
      }

      if (v15 == 14)
      {
        *&v46 = v47;
        *(&v46 + 6) = *(&v47 + 6);
        sub_1C2170114();
        LOBYTE(v15) = 0;
      }
    }
  }

LABEL_22:
  if (v9 == 2)
  {
    v14 = *(*&v44[0] + 24);
  }

  else if (v9 == 1)
  {
    v14 = *&v44[0] >> 32;
  }

  else
  {
    v14 = BYTE14(v44[0]);
  }

LABEL_58:
  if (v14 < v49)
  {
    goto LABEL_72;
  }

  sub_1C2170104();
LABEL_60:
  sub_1C20D3174(v7, *(&v7 + 1));
LABEL_61:
  v25 = v44[0];
  v26 = v50;
  v27 = v51;
  sub_1C20D865C(*&v44[0], *(&v44[0] + 1));
  sub_1C20D3174(v26, v27);
  sub_1C20D3174(v25, *(&v25 + 1));
  return v25;
}

uint64_t sub_1C20DE7C0()
{
  result = sub_1C20E7898(&unk_1F419CD40);
  qword_1EBF23520 = result;
  *algn_1EBF23528 = v1;
  return result;
}

uint64_t sub_1C20DE828(uint64_t a1, uint64_t a2)
{
  sub_1C2171434();
  sub_1C2170894();
  return sub_1C2171454();
}

uint64_t sub_1C20DE88C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C20EB1D4();

  return MEMORY[0x1EEDC2D70](a1, a2, v4);
}

unint64_t sub_1C20DE8D8@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C20E7A14(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1C20DE90C(uint64_t a1)
{
  v2 = sub_1C20EB1D4();

  return MEMORY[0x1EEDC2D80](a1, v2);
}

uint64_t sub_1C20DE948(uint64_t a1)
{
  v2 = sub_1C20EB1D4();

  return MEMORY[0x1EEDC2D78](a1, v2);
}

uint64_t sub_1C20DE9A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C20EB1D4();

  return MEMORY[0x1EEDC2D68](a1, a2, v4);
}

uint64_t ASCABLEAuthenticator.__allocating_init(caBLEURL:)(uint64_t a1)
{
  v3 = sub_1C2170024();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_allocWithZone(v1);
  (*(v4 + 16))(v6, a1, v3);
  v7 = [objc_allocWithZone(MEMORY[0x1E695D250]) init];
  v8 = objc_allocWithZone(type metadata accessor for ASCABLEAuthenticator(0));
  sub_1C20E0E34(v6, v7);
  v10 = v9;
  (*(v4 + 8))(a1, v3);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v10;
}

uint64_t ASCABLEAuthenticator.init(caBLEURL:)(uint64_t a1)
{
  v2 = sub_1C2170024();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, a1, v2);
  v6 = [objc_allocWithZone(MEMORY[0x1E695D250]) init];
  v7 = objc_allocWithZone(type metadata accessor for ASCABLEAuthenticator(0));
  sub_1C20E0E34(v5, v6);
  v9 = v8;
  (*(v3 + 8))(a1, v2);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v9;
}

id sub_1C20DEF88(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_completionHandler);
  v4 = *(v2 + OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_completionHandler);
  v5 = *(v2 + OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_completionHandler + 8);
  *v3 = a1;
  v3[1] = a2;

  sub_1C20B0080(v4, v5);
  sub_1C20E19CC(0);
  v6 = *(v2 + OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_powerLogger);

  return [v6 logAuthenticationStartedEventIfNeeded];
}

void sub_1C20DF0CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_1C216FF84();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

void sub_1C20DF13C()
{
  v1 = sub_1C2170CA4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = (&v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_1C20E7898(&unk_1F419CEE0);
  v7 = v6;
  v8 = sub_1C20F8530(v5, v6, 1);
  v10 = *(v0 + OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_webSocket);
  if (v10)
  {
    *v4 = v8;
    v4[1] = v9;
    v11 = v8;
    v12 = v9;
    (*(v2 + 104))(v4, *MEMORY[0x1E6969F28], v1);
    *(swift_allocObject() + 16) = v10;
    v13 = v10;
    sub_1C20D865C(v11, v12);
    sub_1C2170C94();

    sub_1C20D3174(v11, v12);
    sub_1C20D3174(v5, v7);
    (*(v2 + 8))(v4, v1);
  }

  else
  {
    v14 = v8;
    v15 = v9;
    sub_1C20D3174(v5, v7);

    sub_1C20D3174(v14, v15);
  }
}

id sub_1C20DF4F8(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_1C2170CA4();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = (&v98 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1)
  {
    v115 = v8;
    objc_opt_self();
    v11 = swift_dynamicCastObjCClass();
    if (!v11)
    {
      objc_opt_self();
      v42 = swift_dynamicCastObjCClass();
      if (v42)
      {
        v43 = v42;
        swift_unknownObjectRetain_n();
        sub_1C2143680(v43, &v164);
        result = get_enum_tag_for_layout_string_26AuthenticationServicesCore35ASCTAPPublicKeyCredentialDescriptorVSg_0(&v164);
        if (result == 1)
        {
          __break(1u);
          goto LABEL_54;
        }

        *v181 = v170;
        *&v181[2] = v171[0];
        *(&v181[3] + 1) = *(v171 + 9);
        v178 = v166;
        v179 = v167;
        v180[1] = v169;
        v180[0] = v168;
        v177 = v165;
        v176 = v164;
        sub_1C20E0600(0, &v176, &v131);
        v124 = v139;
        v125 = v140;
        LOBYTE(v126) = v141;
        v120 = v135;
        v121 = v136;
        v122 = v137;
        v123 = v138;
        v116 = v131;
        v117 = v132;
        v118 = v133;
        v119 = v134;
        v45 = *(&v131 + 1);
        v46 = v132;
        sub_1C20D865C(*(&v131 + 1), v132);
        sub_1C20EB498(&v116, &qword_1EBF23540, &qword_1C21769F0);
      }

      else
      {
        objc_opt_self();
        v52 = swift_dynamicCastObjCClass();
        if (!v52)
        {
          v83 = qword_1EDD4A728;
          swift_unknownObjectRetain();
          if (v83 != -1)
          {
            swift_once();
          }

          v84 = sub_1C21705A4();
          __swift_project_value_buffer(v84, qword_1EDD4CB08);
          swift_unknownObjectRetain();
          v85 = sub_1C2170584();
          v86 = sub_1C2170C54();
          swift_unknownObjectRelease();
          if (os_log_type_enabled(v85, v86))
          {
            v87 = swift_slowAlloc();
            v88 = swift_slowAlloc();
            *&v131 = v88;
            *v87 = 136315138;
            swift_getObjectType();
            v89 = sub_1C21714E4();
            v91 = sub_1C20D7F2C(v89, v90, &v131);

            *(v87 + 4) = v91;
            _os_log_impl(&dword_1C20AD000, v85, v86, "Received credential with unexpected type: %s", v87, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v88);
            MEMORY[0x1C6915360](v88, -1, -1);
            MEMORY[0x1C6915360](v87, -1, -1);
          }

          sub_1C20E6774(7);

          return swift_unknownObjectRelease();
        }

        v53 = v52;
        swift_unknownObjectRetain();
        v54 = [v53 commandResponseData];
        v45 = sub_1C2170174();
        v56 = v55;

        v46 = v56 | 0x2000000000000000;
      }

LABEL_38:
      v74 = sub_1C20F8530(v45, v46, 1);
      v76 = *(v3 + OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_webSocket);
      if (v76)
      {
        v114 = *&v76[OBJC_IVAR____TtC26AuthenticationServicesCore11ASWebSocket_webSocketTask];
        *v10 = v74;
        v10[1] = v75;
        v77 = *MEMORY[0x1E6969F28];
        v78 = *(v7 + 104);
        v79 = v74;
        v113 = v74;
        *&v111 = v75;
        v78(v10, v77, v115);
        *(swift_allocObject() + 16) = v76;
        v112 = v76;
        v80 = v111;
        sub_1C20D865C(v79, v111);
        sub_1C2170C94();

        (*(v7 + 8))(v10, v115);
        [*(v3 + OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_powerLogger) logAuthenticationFinishedEventIfNeeded];
        sub_1C20E7A78(v45, v46);

        v81 = v113;
        v82 = v80;
      }

      else
      {
        v92 = v74;
        v93 = v75;
        if (qword_1EDD4A728 != -1)
        {
          swift_once();
        }

        v94 = sub_1C21705A4();
        __swift_project_value_buffer(v94, qword_1EDD4CB08);
        v95 = sub_1C2170584();
        v96 = sub_1C2170C54();
        if (os_log_type_enabled(v95, v96))
        {
          v97 = swift_slowAlloc();
          *v97 = 0;
          _os_log_impl(&dword_1C20AD000, v95, v96, "Could not send ctap response without a valid socket", v97, 2u);
          MEMORY[0x1C6915360](v97, -1, -1);
        }

        sub_1C20E6774(0);
        sub_1C20E7A78(v45, v46);
        v81 = v92;
        v82 = v93;
      }

      sub_1C20D3174(v81, v82);
      return swift_unknownObjectRelease();
    }

    v12 = v11;
    v13 = *(v2 + OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_currentCTAPCommand + 176);
    v14 = *(v2 + OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_currentCTAPCommand + 144);
    v161 = *(v2 + OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_currentCTAPCommand + 160);
    v162 = v13;
    v15 = *(v2 + OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_currentCTAPCommand + 176);
    v163[0] = *(v2 + OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_currentCTAPCommand + 192);
    *(v163 + 9) = *(v2 + OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_currentCTAPCommand + 201);
    v16 = *(v2 + OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_currentCTAPCommand + 112);
    v17 = *(v2 + OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_currentCTAPCommand + 80);
    v157 = *(v2 + OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_currentCTAPCommand + 96);
    v158 = v16;
    v18 = *(v2 + OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_currentCTAPCommand + 112);
    v19 = *(v2 + OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_currentCTAPCommand + 144);
    v159 = *(v2 + OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_currentCTAPCommand + 128);
    v160 = v19;
    v20 = *(v2 + OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_currentCTAPCommand + 48);
    v21 = *(v2 + OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_currentCTAPCommand + 16);
    v153 = *(v2 + OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_currentCTAPCommand + 32);
    v154 = v20;
    v22 = *(v2 + OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_currentCTAPCommand + 48);
    v23 = *(v2 + OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_currentCTAPCommand + 80);
    v155 = *(v2 + OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_currentCTAPCommand + 64);
    v156 = v23;
    v24 = *(v2 + OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_currentCTAPCommand + 16);
    v152[0] = *(v2 + OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_currentCTAPCommand);
    v152[1] = v24;
    v173 = v161;
    v174 = v15;
    v175[0] = *(v2 + OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_currentCTAPCommand + 192);
    *(v175 + 9) = *(v2 + OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_currentCTAPCommand + 201);
    v170 = v157;
    v171[0] = v18;
    v171[1] = v159;
    v172 = v14;
    v166 = v153;
    v167 = v22;
    v168 = v155;
    v169 = v17;
    v164 = v152[0];
    v165 = v21;
    if (sub_1C20E7AA8(&v164) != 1)
    {
      v150[10] = v173;
      v150[11] = v174;
      v151[0] = v175[0];
      *(v151 + 9) = *(v175 + 9);
      v150[6] = v170;
      v150[7] = v171[0];
      v150[8] = v171[1];
      v150[9] = v172;
      v150[2] = v166;
      v150[3] = v167;
      v150[4] = v168;
      v150[5] = v169;
      v150[0] = v164;
      v150[1] = v165;
      if (sub_1C20E7ABC(v150) == 1)
      {
        nullsub_1();
        v26 = *(v25 + 32);
        v27 = 1;
        if (v26)
        {
          if (*(v26 + 16))
          {
            v27 = 2;
          }

          else
          {
            v27 = 1;
          }
        }

        LODWORD(v114) = v27;
        if (*(v2 + OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_usedMagicCredentialID) == 1)
        {
          v28 = objc_opt_self();
          swift_unknownObjectRetain_n();
          sub_1C20EB3E8(v152, &v131, &qword_1EBF23558, &qword_1C21769F8);
          v29 = [v28 magicCredentialID];
          v30 = sub_1C2170174();
          v32 = v31;
        }

        else
        {
          swift_unknownObjectRetain_n();
          sub_1C20EB3E8(v152, &v131, &qword_1EBF23558, &qword_1C21769F8);
          v30 = 0;
          v32 = 0xF000000000000000;
        }

        swift_unknownObjectRetain();
        v58 = [v12 extensions];
        if (v58)
        {
          v59 = v58;
          sub_1C2168CF0(&v131);

          v111 = v131;
          v106 = v134;
          v107 = v133;
          v108 = v132;
          v112 = *(&v135 + 1);
          v113 = v135;
          v110 = v136;
          v109 = BYTE8(v136);
        }

        else
        {
          v112 = 0;
          v113 = 0;
          v110 = 0;
          v111 = 0u;
          v109 = 3;
          v107 = 0u;
          v108 = 0u;
          v106 = 0u;
        }

        v99 = v7;
        v60 = v30;
        v61 = v32;
        if (v32 >> 60 == 15)
        {
          v62 = [v12 credentialID];
          v60 = sub_1C2170174();
          v61 = v63;
        }

        v104 = v61;
        v105 = v60;
        sub_1C20B22B8(v30, v32);
        v64 = [v12 authenticatorData];
        v65 = sub_1C2170174();
        v102 = v66;
        v103 = v65;
        v67 = [v12 signature];
        v100 = sub_1C2170174();
        v101 = v68;
        result = [v12 userHandle];
        if (result)
        {
          v69 = v30;
          v70 = result;

          v71 = sub_1C2170174();
          v73 = v72;

          sub_1C20B23C8(v69, v32);
          swift_unknownObjectRelease();
          v149 = 1;
          sub_1C20E7AC4(0, 0, 0, 0, 0);
          sub_1C20E7B24(0, 0, 0, 0, 0, 0);
          v147 = 0;
          memset(v146, 0, sizeof(v146));
          v148 = 3;
          sub_1C20EB498(v146, &qword_1EBF23560, &unk_1C2176A00);
          v176 = xmmword_1C2176990;
          *&v177 = v105;
          *(&v177 + 1) = v104;
          *&v178 = 0;
          *(&v178 + 1) = v103;
          *&v179 = v102;
          *(&v179 + 1) = v100;
          *(v180 + 8) = xmmword_1C21769A0;
          *&v180[0] = v101;
          *(&v180[1] + 1) = v71;
          *&v181[1] = xmmword_1C21769A0;
          v181[0] = v73;
          v181[3] = 0;
          LOBYTE(v181[4]) = 1;
          BYTE1(v181[4]) = v114;
          *&v181[7] = v108;
          *&v181[5] = v111;
          *&v181[11] = v106;
          *&v181[9] = v107;
          v181[13] = v113;
          v181[14] = v112;
          v181[15] = v110;
          v182 = v109;
          sub_1C20E03E0(0, &v176, &v131);
          swift_unknownObjectRelease();
          sub_1C20EB498(v152, &qword_1EBF23558, &qword_1C21769F8);
          v128 = v143;
          v129 = v144;
          v130[0] = v145[0];
          *(v130 + 9) = *(v145 + 9);
          v124 = v139;
          v125 = v140;
          v126 = v141;
          v127 = v142;
          v120 = v135;
          v121 = v136;
          v122 = v137;
          v123 = v138;
          v116 = v131;
          v117 = v132;
          v118 = v133;
          v119 = v134;
          v45 = *(&v131 + 1);
          v46 = v132;
          sub_1C20D865C(*(&v131 + 1), v132);
          sub_1C20EB498(&v116, &qword_1EBF23568, &qword_1C21771F0);
          v7 = v99;
          goto LABEL_38;
        }

LABEL_54:
        __break(1u);
        return result;
      }

      nullsub_1();
    }

    v47 = qword_1EDD4A728;
    swift_unknownObjectRetain_n();
    if (v47 != -1)
    {
      swift_once();
    }

    v48 = sub_1C21705A4();
    __swift_project_value_buffer(v48, qword_1EDD4CB08);
    v49 = sub_1C2170584();
    v50 = sub_1C2170C54();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_1C20AD000, v49, v50, "Received getAssertion response to non-getAssertion command", v51, 2u);
      MEMORY[0x1C6915360](v51, -1, -1);
    }

    sub_1C20E6774(0);
    return swift_unknownObjectRelease_n();
  }

  else
  {
    if (qword_1EDD4A728 != -1)
    {
      swift_once();
    }

    v33 = sub_1C21705A4();
    __swift_project_value_buffer(v33, qword_1EDD4CB08);
    v34 = a2;
    v35 = sub_1C2170584();
    v36 = sub_1C2170C54();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *&v131 = v38;
      *v37 = 136315138;
      if (a2)
      {
        swift_getErrorValue();
        v39 = sub_1C21713D4();
        v41 = v40;
      }

      else
      {
        v41 = 0xE500000000000000;
        v39 = 0x3E6C696E3CLL;
      }

      v57 = sub_1C20D7F2C(v39, v41, &v131);

      *(v37 + 4) = v57;
      _os_log_impl(&dword_1C20AD000, v35, v36, "Transaction failed: %s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v38);
      MEMORY[0x1C6915360](v38, -1, -1);
      MEMORY[0x1C6915360](v37, -1, -1);
    }

    return sub_1C20E6774(7);
  }
}

uint64_t sub_1C20E03E0@<X0>(char a1@<W0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a2[13];
  v61 = a2[12];
  v62 = v6;
  v63 = *(a2 + 224);
  v7 = a2[9];
  v57 = a2[8];
  v58 = v7;
  v8 = a2[11];
  v59 = a2[10];
  v60 = v8;
  v9 = a2[5];
  v53 = a2[4];
  v54 = v9;
  v10 = a2[7];
  v55 = a2[6];
  v56 = v10;
  v11 = a2[1];
  v49 = *a2;
  v50 = v11;
  v12 = a2[3];
  v51 = a2[2];
  v52 = v12;
  v13 = sub_1C21460AC();
  if (v3)
  {
    v46 = v61;
    v47 = v62;
    v48 = v63;
    v42 = v57;
    v43 = v58;
    v44 = v59;
    v45 = v60;
    v38 = v53;
    v39 = v54;
    v40 = v55;
    v41 = v56;
    v34 = v49;
    v35 = v50;
    v36 = v51;
    v37 = v52;
    return sub_1C20EB2F0(&v34);
  }

  else
  {
    v16 = v13;
    v17 = v14;
    v18 = 0x7F2F2219050100uLL >> (8 * a1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF232F0, &unk_1C2176950);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1C21768E0;
    *(v19 + 32) = v18;
    v20 = sub_1C20E7898(v19);
    v22 = v21;

    *&v33 = v20;
    *(&v33 + 1) = v22;
    *(&v35 + 1) = MEMORY[0x1E6969080];
    *&v36 = MEMORY[0x1E6969078];
    *&v34 = v16;
    *(&v34 + 1) = v17;
    v23 = __swift_project_boxed_opaque_existential_1(&v34, MEMORY[0x1E6969080]);
    v24 = *v23;
    v25 = v23[1];
    sub_1C20D865C(v20, v22);
    sub_1C2106434(v24, v25, &v33);
    sub_1C20D3174(v20, v22);
    result = __swift_destroy_boxed_opaque_existential_0Tm(&v34);
    *(a3 + 8) = v33;
    v26 = v59;
    *(a3 + 200) = v60;
    v27 = v62;
    *(a3 + 216) = v61;
    *(a3 + 232) = v27;
    v28 = v55;
    *(a3 + 136) = v56;
    v29 = v58;
    *(a3 + 152) = v57;
    *(a3 + 168) = v29;
    *(a3 + 184) = v26;
    v30 = v51;
    *(a3 + 72) = v52;
    v31 = v54;
    *(a3 + 88) = v53;
    *(a3 + 104) = v31;
    *(a3 + 120) = v28;
    v32 = v50;
    *(a3 + 24) = v49;
    *(a3 + 40) = v32;
    *a3 = v18;
    *(a3 + 248) = v63;
    *(a3 + 56) = v30;
  }

  return result;
}

uint64_t sub_1C20E0600@<X0>(char a1@<W0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a2[7];
  v42 = a2[6];
  v43[0] = v6;
  *(v43 + 9) = *(a2 + 121);
  v7 = a2[3];
  v38 = a2[2];
  v39 = v7;
  v8 = a2[5];
  v40 = a2[4];
  v41 = v8;
  v9 = a2[1];
  v36 = *a2;
  v37 = v9;
  sub_1C2144918();
  if (v3)
  {
    v34 = v42;
    v35[0] = v43[0];
    *(v35 + 9) = *(v43 + 9);
    v30 = v38;
    v31 = v39;
    v32 = v40;
    v33 = v41;
    v28 = v36;
    v29 = v37;
    return sub_1C20EB344(&v28);
  }

  else
  {
    v13 = v10;
    v14 = v11;
    v15 = 0x7F2F2219050100uLL >> (8 * a1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF232F0, &unk_1C2176950);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1C21768E0;
    *(v16 + 32) = v15;
    v17 = sub_1C20E7898(v16);
    v19 = v18;

    *&v27 = v17;
    *(&v27 + 1) = v19;
    *(&v29 + 1) = MEMORY[0x1E6969080];
    *&v30 = MEMORY[0x1E6969078];
    *&v28 = v13;
    *(&v28 + 1) = v14;
    v20 = __swift_project_boxed_opaque_existential_1(&v28, MEMORY[0x1E6969080]);
    v21 = *v20;
    v22 = v20[1];
    sub_1C20D865C(v17, v19);
    sub_1C2106434(v21, v22, &v27);
    sub_1C20D3174(v17, v19);
    result = __swift_destroy_boxed_opaque_existential_0Tm(&v28);
    *(a3 + 8) = v27;
    v23 = v40;
    *(a3 + 104) = v41;
    v24 = v43[0];
    *(a3 + 120) = v42;
    *(a3 + 136) = v24;
    *(a3 + 145) = *(v43 + 9);
    v25 = v36;
    *(a3 + 40) = v37;
    v26 = v39;
    *(a3 + 56) = v38;
    *(a3 + 72) = v26;
    *(a3 + 88) = v23;
    *a3 = v15;
    *(a3 + 24) = v25;
  }

  return result;
}

uint64_t sub_1C20E0858()
{
  sub_1C2171434();
  sub_1C21709B4();

  return sub_1C2171454();
}

uint64_t sub_1C20E093C(uint64_t a1)
{
  sub_1C21709B4();
}

uint64_t sub_1C20E0A0C(uint64_t a1)
{
  sub_1C2171434();
  sub_1C21709B4();

  return sub_1C2171454();
}

unint64_t sub_1C20E0AEC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C20E81BC(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1C20E0B1C(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1701602409;
  v5 = 0xD000000000000015;
  v6 = 0x80000001C21842D0;
  v7 = 0x80000001C21842F0;
  v8 = 0xD00000000000001ALL;
  if (v2 != 3)
  {
    v8 = 0xD000000000000015;
    v7 = 0x80000001C2184310;
  }

  if (v2 != 2)
  {
    v5 = v8;
    v6 = v7;
  }

  if (*v1)
  {
    v4 = 0xD000000000000010;
    v3 = 0x80000001C21842B0;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v5;
  }

  if (*v1 > 1u)
  {
    v3 = v6;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_1C20E0CBC(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1C20E0D1C(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1C20E0DB4;
}

void sub_1C20E0DB4(void **a1, char a2)
{
  v3 = *a1;
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

void sub_1C20E0E34(uint64_t a1, void *a2)
{
  v91 = a2;
  v3 = v2;
  v93 = sub_1C2170024();
  v103 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v6 = v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_delegate;
  swift_unknownObjectWeakInit();
  v7 = OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_advertisement;
  v8 = type metadata accessor for ASCABLEAdvertisement(0);
  v9 = *(*(v8 - 8) + 56);
  v88 = v7;
  v9(&v3[v7], 1, 1, v8);
  v87 = OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_webSocket;
  *&v3[OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_webSocket] = 0;
  v10 = *MEMORY[0x1E698CF20];
  v11 = *MEMORY[0x1E698CF08];
  v12 = sub_1C20DB8B8(0, &qword_1EBF23780, 0x1E69E9610);
  v13 = v10;
  v14 = v11;
  v83[2] = v12;
  v15 = sub_1C2170C84();
  v16 = [objc_allocWithZone(MEMORY[0x1E698CF30]) initWithEnvironmentName:v13 namedDelegatePort:v14 queue:v15];

  if (!v16)
  {
    __break(1u);
    goto LABEL_15;
  }

  v84 = OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_apsConnection;
  *&v3[OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_apsConnection] = v16;
  v17 = &v3[OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_completionHandler];
  *v17 = 0;
  v17[1] = 0;
  v85 = v17;
  v18 = OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_powerLogger;
  v19 = [objc_allocWithZone(_ASCABLEPowerLogger) init];
  v86 = v18;
  *&v3[v18] = v19;
  v20 = &v3[OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_currentCTAPCommand];
  sub_1C20EB628(v101);
  v21 = v101[11];
  v20[10] = v101[10];
  v20[11] = v21;
  v20[12] = v102[0];
  *(v20 + 201) = *(v102 + 9);
  v22 = v101[7];
  v20[6] = v101[6];
  v20[7] = v22;
  v23 = v101[9];
  v20[8] = v101[8];
  v20[9] = v23;
  v24 = v101[3];
  v20[2] = v101[2];
  v20[3] = v24;
  v25 = v101[5];
  v20[4] = v101[4];
  v20[5] = v25;
  v26 = v101[1];
  *v20 = v101[0];
  v20[1] = v26;
  v27 = OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_networkPathMonitor;
  sub_1C21706B4();
  swift_allocObject();
  v28 = sub_1C21706A4();
  v83[3] = v27;
  *&v3[v27] = v28;
  v3[OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_usedMagicCredentialID] = 0;
  v3[OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_currentState] = 0;
  v29 = *(v103 + 16);
  v92 = a1;
  v29(v6, a1, v93);
  v30 = sub_1C216FFF4();
  v32 = sub_1C212C9F8(1uLL, v30, v31);
  v34 = v33;
  v36 = v35;
  v38 = v37;

  v39 = sub_1C20FD904(v32, v34, v36, v38);
  v41 = v40;

  if (v41 >> 60 != 15)
  {
    sub_1C21702A4();
    swift_allocObject();
    sub_1C2170294();
    sub_1C20EB6AC();
    v44 = v90;
    sub_1C2170274();
    v42 = v44;
    v45 = (v103 + 8);
    if (v44)
    {
      v46 = v6;
      v47 = v93;
      v90 = *v45;
      v90(v46, v93);
      v48 = v39;
      v43 = v47;
      sub_1C20B23C8(v48, v41);

      goto LABEL_7;
    }

    v90 = *v45;
    v83[1] = v103 + 8;
    v90(v6, v93);
    sub_1C20B23C8(v39, v41);

    v95[0] = v97;
    v95[1] = v98;
    v96[0] = v99[0];
    *(v96 + 15) = *(v99 + 15);
    v67 = sub_1C20FAFA8(v98, *(&v98 + 1), v97, *(&v97 + 1));
    sub_1C20EB700(v95);
    *&v3[OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_cryptographyManager] = v67;
    v68 = v91;
    *&v3[OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_bluetoothAdvertiser] = v91;
    v69 = objc_allocWithZone(type metadata accessor for ASCABLEAuthenticator.APSWrapper());
    v70 = v68;
    v71 = [v69 init];
    *&v3[OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_apsWrapper] = v71;
    v72 = type metadata accessor for ASCABLEAuthenticator(0);
    v94.receiver = v3;
    v94.super_class = v72;
    v73 = objc_msgSendSuper2(&v94, sel_init);
    v74 = OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_apsWrapper;
    if (*&v73[OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_apsWrapper])
    {
      v75 = v73;
      swift_unknownObjectWeakAssign();
      v76 = OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_apsConnection;
      v77 = *&v75[OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_apsConnection];
      v78 = *&v75[v74];
      v79 = v75;
      [v77 setDelegate_];
      v80 = *&v75[v76];
      v81 = sub_1C2170B54();
      [v80 _setEnabledTopics_];

      v82 = sub_1C2170C84();
      sub_1C2170694();

      v90(v92, v93);
      return;
    }

LABEL_15:
    __break(1u);
    return;
  }

  sub_1C20EB658();
  v42 = swift_allocError();
  swift_willThrow();
  v43 = v93;
  v90 = *(v103 + 8);
  v90(v6, v93);
LABEL_7:
  v49 = v92;
  if (qword_1EDD4A728 != -1)
  {
    swift_once();
  }

  v50 = sub_1C21705A4();
  __swift_project_value_buffer(v50, qword_1EDD4CB08);
  v51 = v42;
  v52 = sub_1C2170584();
  v53 = sub_1C2170C54();

  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v55 = v43;
    v56 = swift_slowAlloc();
    *v54 = 138412290;
    v57 = sub_1C216FF84();
    *(v54 + 4) = v57;
    *v56 = v57;
    _os_log_impl(&dword_1C20AD000, v52, v53, "Could not decode caBLE url: %@", v54, 0xCu);
    sub_1C20EB498(v56, &qword_1EBF23700, &qword_1C2176D80);
    v58 = v56;
    v43 = v55;
    MEMORY[0x1C6915360](v58, -1, -1);
    v59 = v54;
    v49 = v92;
    MEMORY[0x1C6915360](v59, -1, -1);
  }

  sub_1C20E7CE8();
  swift_allocError();
  *v60 = 2;
  swift_willThrow();

  v90(v49, v43);
  sub_1C20EB1AC(&v3[v89]);
  sub_1C20EB498(&v3[v88], &qword_1EBF23680, &qword_1C2176D30);

  sub_1C20B0080(*v85, v85[1]);
  v61 = v20[11];
  v99[8] = v20[10];
  v99[9] = v61;
  v100[0] = v20[12];
  *(v100 + 9) = *(v20 + 201);
  v62 = v20[7];
  v99[4] = v20[6];
  v99[5] = v62;
  v63 = v20[9];
  v99[6] = v20[8];
  v99[7] = v63;
  v64 = v20[3];
  v99[0] = v20[2];
  v99[1] = v64;
  v65 = v20[5];
  v99[2] = v20[4];
  v99[3] = v65;
  v66 = v20[1];
  v97 = *v20;
  v98 = v66;
  sub_1C20EB498(&v97, &qword_1EBF23558, &qword_1C21769F8);

  type metadata accessor for ASCABLEAuthenticator(0);
  swift_deallocPartialClassInstance();
}

void sub_1C20E1718(unsigned __int8 a1)
{
  if (qword_1EDD4A728 != -1)
  {
    swift_once();
  }

  v3 = sub_1C21705A4();
  __swift_project_value_buffer(v3, qword_1EDD4CB08);
  v4 = v1;
  oslog = sub_1C2170584();
  v5 = sub_1C2170C34();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = 1701602409;
    v7 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v22 = v20;
    *v7 = 136315394;
    v8 = 0xE400000000000000;
    v9 = 0x80000001C21842D0;
    v10 = 0x80000001C21842F0;
    v11 = 0xD00000000000001ALL;
    if (a1 != 3)
    {
      v11 = 0xD000000000000015;
      v10 = 0x80000001C2184310;
    }

    if (a1 == 2)
    {
      v11 = 0xD000000000000015;
    }

    else
    {
      v9 = v10;
    }

    if (a1)
    {
      v12 = 0xD000000000000010;
    }

    else
    {
      v12 = 1701602409;
    }

    if (a1)
    {
      v8 = 0x80000001C21842B0;
    }

    if (a1 <= 1u)
    {
      v13 = v12;
    }

    else
    {
      v13 = v11;
    }

    if (a1 <= 1u)
    {
      v14 = v8;
    }

    else
    {
      v14 = v9;
    }

    v15 = sub_1C20D7F2C(v13, v14, &v22);

    *(v7 + 4) = v15;
    *(v7 + 12) = 2080;
    v16 = v4[OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_currentState];
    if (v16 <= 1)
    {
      if (v4[OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_currentState])
      {
        v18 = 0x80000001C21842B0;
        v6 = 0xD000000000000010;
      }

      else
      {
        v18 = 0xE400000000000000;
      }
    }

    else
    {
      if (v16 != 2)
      {
        v17 = v20;
        if (v16 == 3)
        {
          v18 = 0x80000001C21842F0;
          v6 = 0xD00000000000001ALL;
        }

        else
        {
          v18 = 0x80000001C2184310;
          v6 = 0xD000000000000015;
        }

        goto LABEL_30;
      }

      v18 = 0x80000001C21842D0;
      v6 = 0xD000000000000015;
    }

    v17 = v20;
LABEL_30:
    v19 = sub_1C20D7F2C(v6, v18, &v22);

    *(v7 + 14) = v19;
    _os_log_impl(&dword_1C20AD000, oslog, v5, "Changing caBLE authenticator state from %s to %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1C6915360](v17, -1, -1);
    MEMORY[0x1C6915360](v7, -1, -1);
  }
}

void sub_1C20E19CC(uint64_t a1)
{
  v2 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23760, &qword_1C2176DC8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v75 = &v73 - v4;
  v76 = type metadata accessor for CableRequest.AllocationRequest(0);
  MEMORY[0x1EEE9AC00](v76);
  v6 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C2170764();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CableRequest(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v73 - v15;
  v17 = *(v1 + OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_currentState);
  *(v1 + OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_currentState) = 1;
  sub_1C20E1718(v17);
  v77 = v1;
  (*(v8 + 16))(v10, *(v1 + OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_cryptographyManager) + OBJC_IVAR____TtC26AuthenticationServicesCore26ASCABLECryptographyManager_tunnelID, v7);
  sub_1C2170734();
  (*(v8 + 8))(v10, v7);
  v18 = aBlock;
  v19 = v79;
  sub_1C2164014(aBlock, v79, v2, v16);
  sub_1C20D3174(v18, v19);
  sub_1C20EB450(&qword_1EBF23768, type metadata accessor for CableRequest, &unk_1C2180A88);
  v20 = sub_1C21704A4();
  v21 = v14;
  v74 = v16;
  v22 = v6;
  v23 = v20;
  v25 = v24;
  v26 = objc_allocWithZone(MEMORY[0x1E699BEA0]);
  v27 = sub_1C21708F4();
  v28 = sub_1C2170154();
  sub_1C20D3174(v23, v25);
  v29 = [v26 initWithPushTopic:v27 protoData:v28];

  if (v29)
  {
    v30 = [objc_opt_self() sharedInstance];
    if (v30)
    {
      v31 = v30;
      v32 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v82 = sub_1C20EB3E0;
      v83 = v32;
      aBlock = MEMORY[0x1E69E9820];
      v79 = 1107296256;
      v80 = sub_1C20E25A4;
      v81 = &block_descriptor_77;
      v33 = _Block_copy(&aBlock);
      v34 = v29;

      [v34 setCompletionBlock_];
      _Block_release(v33);
      if (qword_1EDD4A728 != -1)
      {
        swift_once();
      }

      v35 = sub_1C21705A4();
      __swift_project_value_buffer(v35, qword_1EDD4CB08);
      v36 = v74;
      v37 = v21;
      sub_1C20EB560(v74, v21, type metadata accessor for CableRequest);
      v38 = sub_1C2170584();
      v39 = sub_1C2170C74();
      if (!os_log_type_enabled(v38, v39))
      {

        sub_1C20EB5C8(v21, type metadata accessor for CableRequest);
LABEL_31:
        [v31 sendMessage_];

        sub_1C20EB5C8(v36, type metadata accessor for CableRequest);
        return;
      }

      LODWORD(v77) = v39;
      v40 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      aBlock = v73;
      *v40 = 136315138;
      v41 = v75;
      sub_1C20EB3E8(v21, v75, &qword_1EBF23760, &qword_1C2176DC8);
      v42 = type metadata accessor for CableRequest.OneOf_Request(0);
      if ((*(*(v42 - 8) + 48))(v41, 1, v42) == 1)
      {
        sub_1C20EB498(v41, &qword_1EBF23760, &qword_1C2176DC8);
      }

      else
      {
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          v63 = v22;
          sub_1C20EB4F8(v41, v22, type metadata accessor for CableRequest.AllocationRequest);
          v64 = v76;
          goto LABEL_28;
        }

        sub_1C20EB5C8(v41, type metadata accessor for CableRequest.OneOf_Request);
      }

      v63 = v22;
      sub_1C21703A4();
      v64 = v76;
      *(v63 + *(v76 + 20)) = xmmword_1C21769B0;
      *(v63 + *(v64 + 24)) = 2;
LABEL_28:
      v65 = (v63 + *(v64 + 20));
      v66 = *v65;
      v67 = v65[1];
      sub_1C20B22B8(*v65, v67);
      sub_1C20EB5C8(v63, type metadata accessor for CableRequest.AllocationRequest);
      if (v67 >> 60 == 15)
      {
        v66 = 0;
        v67 = 0xC000000000000000;
      }

      v68 = sub_1C2170084();
      v70 = v69;
      sub_1C20D3174(v66, v67);
      sub_1C20EB5C8(v37, type metadata accessor for CableRequest);
      v71 = sub_1C20D7F2C(v68, v70, &aBlock);

      *(v40 + 4) = v71;
      _os_log_impl(&dword_1C20AD000, v38, v77, "Requesting server allocation with tunnelID %s", v40, 0xCu);
      v72 = v73;
      __swift_destroy_boxed_opaque_existential_0Tm(v73);
      MEMORY[0x1C6915360](v72, -1, -1);
      MEMORY[0x1C6915360](v40, -1, -1);

      v36 = v74;
      goto LABEL_31;
    }

    if (qword_1EDD4A728 != -1)
    {
      swift_once();
    }

    v49 = sub_1C21705A4();
    __swift_project_value_buffer(v49, qword_1EDD4CB08);
    v50 = sub_1C2170584();
    v51 = sub_1C2170C54();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_1C20AD000, v50, v51, "Could not retrieve shared FTMessageDelivery_APS", v52, 2u);
      MEMORY[0x1C6915360](v52, -1, -1);
    }

    sub_1C20E7CE8();
    v47 = swift_allocError();
    *v53 = 1;
    swift_willThrow();
  }

  else
  {
    if (qword_1EDD4A728 != -1)
    {
      swift_once();
    }

    v43 = sub_1C21705A4();
    __swift_project_value_buffer(v43, qword_1EDD4CB08);
    v44 = sub_1C2170584();
    v45 = sub_1C2170C54();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_1C20AD000, v44, v45, "Could not encode protobuf message", v46, 2u);
      MEMORY[0x1C6915360](v46, -1, -1);
    }

    sub_1C20E7CE8();
    v47 = swift_allocError();
    *v48 = 1;
    swift_willThrow();
  }

  sub_1C20EB5C8(v74, type metadata accessor for CableRequest);
  if (qword_1EDD4A728 != -1)
  {
    swift_once();
  }

  v54 = sub_1C21705A4();
  __swift_project_value_buffer(v54, qword_1EDD4CB08);
  v55 = v47;
  v56 = sub_1C2170584();
  v57 = sub_1C2170C54();

  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    aBlock = v59;
    *v58 = 136315138;
    swift_getErrorValue();
    v60 = sub_1C21713D4();
    v62 = sub_1C20D7F2C(v60, v61, &aBlock);

    *(v58 + 4) = v62;
    _os_log_impl(&dword_1C20AD000, v56, v57, "Could not encode allocation request: %s", v58, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v59);
    MEMORY[0x1C6915360](v59, -1, -1);
    MEMORY[0x1C6915360](v58, -1, -1);
  }

  sub_1C20E6774(3);
}

void sub_1C20E247C(void *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    sub_1C20E8D60(a1, a2, a3);
  }

  else
  {
    if (qword_1EDD4A728 != -1)
    {
      swift_once();
    }

    v10 = sub_1C21705A4();
    __swift_project_value_buffer(v10, qword_1EDD4CB08);
    v9 = sub_1C2170584();
    v11 = sub_1C2170C74();
    if (os_log_type_enabled(v9, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1C20AD000, v9, v11, "caBLE authenticator was deinitialized while waiting for allocate server response", v12, 2u);
      MEMORY[0x1C6915360](v12, -1, -1);
    }
  }
}

uint64_t sub_1C20E25A4(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a1 + 32);
  if (a5)
  {
    v9 = sub_1C2170864();
  }

  else
  {
    v9 = 0;
  }

  v10 = a2;
  v11 = a3;
  v8(a2, a3, a4, v9);
}

uint64_t sub_1C20E2670(uint64_t a1, unint64_t a2, unsigned int a3)
{
  v4 = v3;
  v52 = a3;
  v50 = a1;
  v51 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23680, &qword_1C2176D30);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v48 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v46 - v8;
  v10 = type metadata accessor for ASCABLEAdvertisement(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v49 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1C2170784();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v14 = sub_1C2170764();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDD4A728 != -1)
  {
    swift_once();
  }

  v18 = sub_1C21705A4();
  __swift_project_value_buffer(v18, qword_1EDD4CB08);
  v19 = sub_1C2170584();
  v20 = sub_1C2170C34();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v47 = v9;
    v22 = v14;
    v23 = v11;
    v24 = v10;
    v25 = v4;
    v26 = v21;
    *v21 = 0;
    _os_log_impl(&dword_1C20AD000, v19, v20, "Starting Bluetooth advertisement", v21, 2u);
    v27 = v26;
    v4 = v25;
    v10 = v24;
    v11 = v23;
    v14 = v22;
    v9 = v47;
    MEMORY[0x1C6915360](v27, -1, -1);
  }

  sub_1C2170774();
  sub_1C2170754();
  sub_1C2170734();
  (*(v15 + 8))(v17, v14);
  v29 = aBlock;
  v28 = v54;
  sub_1C20D865C(aBlock, v54);
  v31 = v50;
  v30 = v51;
  sub_1C20D865C(v50, v51);
  sub_1C20DCFA4(0, v29, v28, v31, v30, v52, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1C20EB498(v9, &qword_1EBF23680, &qword_1C2176D30);
    sub_1C20E6774(3);
    return sub_1C20D3174(v29, v28);
  }

  else
  {
    v33 = v9;
    v34 = v49;
    sub_1C20EB4F8(v33, v49, type metadata accessor for ASCABLEAdvertisement);
    v35 = v48;
    sub_1C20EB560(v34, v48, type metadata accessor for ASCABLEAdvertisement);
    (*(v11 + 56))(v35, 0, 1, v10);
    v36 = OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_advertisement;
    swift_beginAccess();
    sub_1C20EB114(v35, &v4[v36]);
    swift_endAccess();
    v37 = sub_1C20F6D14(v34);
    if (v38 >> 60 == 15)
    {
      sub_1C20E6774(3);
    }

    else
    {
      v39 = *&v4[OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_bluetoothAdvertiser];
      v40 = v37;
      v41 = v38;
      v42 = sub_1C2170154();
      [v39 setFidoPayloadData_];

      v43 = swift_allocObject();
      *(v43 + 16) = v4;
      v57 = sub_1C20EB184;
      v58 = v43;
      aBlock = MEMORY[0x1E69E9820];
      v54 = 1107296256;
      v55 = sub_1C214FB48;
      v56 = &block_descriptor;
      v44 = _Block_copy(&aBlock);
      v45 = v4;

      [v39 activateWithCompletion_];
      sub_1C20B23C8(v40, v41);
      _Block_release(v44);
    }

    sub_1C20D3174(v29, v28);
    return sub_1C20EB5C8(v34, type metadata accessor for ASCABLEAdvertisement);
  }
}

void sub_1C20E2C1C(void *a1)
{
  if (a1)
  {
    if (qword_1EDD4A728 != -1)
    {
      swift_once();
    }

    v2 = sub_1C21705A4();
    __swift_project_value_buffer(v2, qword_1EDD4CB08);
    v3 = a1;
    v4 = sub_1C2170584();
    v5 = sub_1C2170C54();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138412290;
      v8 = sub_1C216FF84();
      *(v6 + 4) = v8;
      *v7 = v8;
      _os_log_impl(&dword_1C20AD000, v4, v5, "Could not begin advertising: %@", v6, 0xCu);
      sub_1C20EB498(v7, &qword_1EBF23700, &qword_1C2176D80);
      MEMORY[0x1C6915360](v7, -1, -1);
      MEMORY[0x1C6915360](v6, -1, -1);
    }

    sub_1C20E6774(5);
  }

  else
  {
    if (qword_1EDD4A728 != -1)
    {
      swift_once();
    }

    v9 = sub_1C21705A4();
    __swift_project_value_buffer(v9, qword_1EDD4CB08);
    oslog = sub_1C2170584();
    v10 = sub_1C2170C34();
    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1C20AD000, oslog, v10, "Started advertising", v11, 2u);
      MEMORY[0x1C6915360](v11, -1, -1);
    }
  }
}

void sub_1C20E2E50(uint64_t a1, void (*a2)(char *, uint64_t), uint64_t a3, uint64_t a4, char *a5, uint64_t a6, uint64_t a7, char *a8, uint64_t a9, uint64_t a10)
{
  v111 = a8;
  v110 = a7;
  v119 = a6;
  v118 = a5;
  v117 = a2;
  v107 = a1;
  v113 = sub_1C216FCB4();
  v108 = *(v113 - 8);
  v12 = MEMORY[0x1EEE9AC00](v113);
  v106 = &v100 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v121 = &v100 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF251D0, &qword_1C2176940);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v100 - v16;
  v18 = sub_1C2170024();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v109 = &v100 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v112 = &v100 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v116 = &v100 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v100 - v26;
  v115 = sub_1C216FDA4();
  v114 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115);
  v29 = &v100 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C216FD94();
  sub_1C216FD84();

  MEMORY[0x1C6913010](a9, a10);
  *&v128[0] = 0;
  *(&v128[0] + 1) = 0xE000000000000000;
  sub_1C2170F34();

  *&v128[0] = 0xD000000000000016;
  *(&v128[0] + 1) = 0x80000001C2185010;
  MEMORY[0x1C6913CB0](a3, a4);
  MEMORY[0x1C6913CB0](47, 0xE100000000000000);
  MEMORY[0x1C6913CB0](v118, v119);
  MEMORY[0x1C6913020](*&v128[0], *(&v128[0] + 1));
  v118 = v29;
  sub_1C216FD54();
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_1C20EB498(v17, &qword_1EBF251D0, &qword_1C2176940);
    if (qword_1EDD4A728 != -1)
    {
LABEL_29:
      swift_once();
    }

    v30 = sub_1C21705A4();
    __swift_project_value_buffer(v30, qword_1EDD4CB08);
    v31 = sub_1C2170584();
    v32 = sub_1C2170C54();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_1C20AD000, v31, v32, "Could not determine relay URL", v33, 2u);
      MEMORY[0x1C6915360](v33, -1, -1);
    }

    sub_1C20E6774(4);
    (*(v114 + 8))(v118, v115);
  }

  else
  {
    (*(v19 + 32))(v27, v17, v18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF236D0, &qword_1C2176D60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C21768E0;
    strcpy((inited + 32), "Authorization");
    *(inited + 46) = -4864;
    strcpy(v128, "AccessToken ");
    BYTE13(v128[0]) = 0;
    HIWORD(v128[0]) = -5120;
    MEMORY[0x1C6913CB0](v110, v111);
    v35 = *(&v128[0] + 1);
    *(inited + 48) = *&v128[0];
    *(inited + 56) = v35;
    v36 = sub_1C213F3FC(inited);
    swift_setDeallocating();
    sub_1C20EB498(inited + 32, &qword_1EBF236D8, &qword_1C2176D68);
    v110 = v19;
    v39 = *(v19 + 16);
    v37 = v19 + 16;
    v38 = v39;
    v40 = v116;
    v111 = v27;
    v39(v116, v27, v18);
    v41 = objc_opt_self();

    v42 = [v41 ephemeralSessionConfiguration];
    v43 = objc_opt_self();
    v44 = [v43 sessionWithConfiguration_];

    v45 = type metadata accessor for ASWebSocket();
    memset(v128, 0, sizeof(v128));
    v129 = 0;
    v103 = v45;
    v46 = objc_allocWithZone(v45);
    *&v46[OBJC_IVAR____TtC26AuthenticationServicesCore11ASWebSocket_delegate + 8] = 0;
    swift_unknownObjectWeakInit();
    v46[OBJC_IVAR____TtC26AuthenticationServicesCore11ASWebSocket_isConnected] = 0;
    v47 = &v46[OBJC_IVAR____TtC26AuthenticationServicesCore11ASWebSocket_connectionCompletionHandler];
    *v47 = 0;
    v47[1] = 0;
    v48 = &v46[OBJC_IVAR____TtC26AuthenticationServicesCore11ASWebSocket_testDelegate];
    *(v48 + 4) = 0;
    *v48 = 0u;
    *(v48 + 1) = 0u;
    v102 = v48;

    v49 = v44;
    if (!v44)
    {
      v49 = [v43 sharedSession];
    }

    v100 = OBJC_IVAR____TtC26AuthenticationServicesCore11ASWebSocket_urlSession;
    *&v46[OBJC_IVAR____TtC26AuthenticationServicesCore11ASWebSocket_urlSession] = v49;
    v119 = v18;
    v105 = v37;
    v104 = v38;
    v38(v112, v40, v18);
    v101 = v44;
    sub_1C216FC84();
    v50 = 0;
    v51 = 1 << *(v36 + 32);
    v52 = -1;
    if (v51 < 64)
    {
      v52 = ~(-1 << v51);
    }

    v53 = v52 & *(v36 + 64);
    v54 = (v51 + 63) >> 6;
    if (v53)
    {
      goto LABEL_16;
    }

    while (1)
    {
      v55 = v50 + 1;
      if (__OFADD__(v50, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v55 >= v54)
      {
        break;
      }

      v53 = *(v36 + 64 + 8 * v55);
      ++v50;
      if (v53)
      {
        v50 = v55;
        do
        {
LABEL_16:
          v53 &= v53 - 1;

          sub_1C216FC94();
        }

        while (v53);
        continue;
      }
    }

    v125[0] = &unk_1F419D128;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF236E0, &qword_1C2176D70);
    sub_1C20EB398(&qword_1EBF238E0, &unk_1EBF236E0, &qword_1C2176D70, MEMORY[0x1E69E6310]);
    sub_1C21708A4();
    v56 = v121;
    sub_1C216FC94();

    sub_1C20EB3E8(v128, &v123, &unk_1EBF236F0, &qword_1C2176D78);
    if (v124)
    {
      sub_1C20AFFE8(&v123, v125);
      v57 = v126;
      v58 = v127;
      __swift_project_boxed_opaque_existential_1(v125, v126);
      v59 = v106;
      (*(v58 + 8))(v56, v57, v58);
      v60 = v108;
      v61 = v113;
      (*(v108 + 8))(v56, v113);
      (*(v60 + 32))(v56, v59, v61);
      __swift_destroy_boxed_opaque_existential_0Tm(v125);
      v62 = v120;
      v63 = v110;
    }

    else
    {
      sub_1C20EB498(&v123, &unk_1EBF236F0, &qword_1C2176D78);
      v62 = v120;
      v63 = v110;
      v60 = v108;
    }

    v64 = *&v46[v100];
    v65 = sub_1C216FC74();
    v66 = [v64 webSocketTaskWithRequest_];

    *&v46[OBJC_IVAR____TtC26AuthenticationServicesCore11ASWebSocket_webSocketTask] = v66;
    v67 = sub_1C2170994();
    v68 = v66;

    host = nw_endpoint_create_host((v67 + 32), "https");

    [v68 set:host hostOverride:?];

    swift_unknownObjectRelease();
    v70 = v102;
    swift_beginAccess();
    sub_1C20EB090(v128, v70);
    swift_endAccess();
    v122.receiver = v46;
    v122.super_class = v103;
    v71 = objc_msgSendSuper2(&v122, sel_init);
    [*&v71[OBJC_IVAR____TtC26AuthenticationServicesCore11ASWebSocket_webSocketTask] setDelegate_];
    sub_1C20EB498(v128, &unk_1EBF236F0, &qword_1C2176D78);
    v117 = *(v63 + 8);
    v117(v116, v119);
    (*(v60 + 8))(v56, v113);

    v72 = OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_webSocket;
    v73 = *(v62 + OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_webSocket);
    *(v62 + OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_webSocket) = v71;
    v74 = v71;

    *&v74[OBJC_IVAR____TtC26AuthenticationServicesCore11ASWebSocket_delegate + 8] = &off_1F419E130;
    swift_unknownObjectWeakAssign();

    if (qword_1EDD4A728 != -1)
    {
      swift_once();
    }

    v75 = sub_1C21705A4();
    __swift_project_value_buffer(v75, qword_1EDD4CB08);
    v76 = v109;
    v77 = v111;
    v78 = v119;
    v104(v109, v111, v119);

    v79 = sub_1C2170584();
    v80 = sub_1C2170C74();

    if (os_log_type_enabled(v79, v80))
    {
      v81 = v76;
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      *&v128[0] = v83;
      *v82 = 136315394;
      sub_1C20EB450(&unk_1EBF238F0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
      v84 = sub_1C21712E4();
      v86 = v85;
      v117(v81, v119);
      v87 = sub_1C20D7F2C(v84, v86, v128);

      *(v82 + 4) = v87;
      *(v82 + 12) = 2080;
      v88 = sub_1C2170874();
      v90 = sub_1C20D7F2C(v88, v89, v128);

      *(v82 + 14) = v90;
      v77 = v111;
      _os_log_impl(&dword_1C20AD000, v79, v80, "Connecting to relay at %s, headers: %s", v82, 0x16u);
      swift_arrayDestroy();
      v62 = v120;
      v78 = v119;
      MEMORY[0x1C6915360](v83, -1, -1);
      MEMORY[0x1C6915360](v82, -1, -1);
    }

    else
    {

      v117(v76, v78);
    }

    v91 = *(v62 + v72);
    if (v91)
    {
      v92 = v91;

      v93 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v94 = *&v92[OBJC_IVAR____TtC26AuthenticationServicesCore11ASWebSocket_webSocketTask];

      [v94 resume];
      v117(v77, v78);
      (*(v114 + 8))(v118, v115);
      v95 = swift_allocObject();
      *(v95 + 2) = v92;
      *(v95 + 3) = sub_1C20EB100;
      *(v95 + 4) = v93;
      v96 = &v92[OBJC_IVAR____TtC26AuthenticationServicesCore11ASWebSocket_connectionCompletionHandler];
      v97 = *&v92[OBJC_IVAR____TtC26AuthenticationServicesCore11ASWebSocket_connectionCompletionHandler];
      v98 = *&v92[OBJC_IVAR____TtC26AuthenticationServicesCore11ASWebSocket_connectionCompletionHandler + 8];
      *v96 = sub_1C20EB108;
      v96[1] = v95;
      v99 = v92;
      sub_1C20B0080(v97, v98);
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1C20E3DA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1EDD4A728 != -1)
  {
    swift_once();
  }

  v5 = sub_1C21705A4();
  __swift_project_value_buffer(v5, qword_1EDD4CB08);
  v6 = sub_1C2170584();
  v7 = sub_1C2170C34();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1C20AD000, v6, v7, "Authenticator opened socket connection.", v8, 2u);
    MEMORY[0x1C6915360](v8, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    if (a2 && (a1 == 0x6261632E6F646966 && a2 == 0xEA0000000000656CLL || (sub_1C2171324() & 1) != 0))
    {
      v11 = *(&v10->isa + OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_currentState);
      *(&v10->isa + OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_currentState) = 3;
      sub_1C20E1718(v11);
    }

    else
    {

      v14 = sub_1C2170584();
      v15 = sub_1C2170C54();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v21 = v17;
        *v16 = 136315138;
        v18 = sub_1C2163D08(0x3E6C696E3CLL, 0xE500000000000000, a1, a2);
        v20 = sub_1C20D7F2C(v18, v19, &v21);

        *(v16 + 4) = v20;
        _os_log_impl(&dword_1C20AD000, v14, v15, "Received socket connection with unexpected protocol: %s", v16, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v17);
        MEMORY[0x1C6915360](v17, -1, -1);
        MEMORY[0x1C6915360](v16, -1, -1);
      }

      sub_1C20E6774(4);
    }
  }

  else
  {
    v10 = sub_1C2170584();
    v12 = sub_1C2170C74();
    if (os_log_type_enabled(v10, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1C20AD000, v10, v12, "Client was deinitialized while waiting for initial connection.", v13, 2u);
      MEMORY[0x1C6915360](v13, -1, -1);
    }
  }
}

void sub_1C20E4094(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v48 = a1;
  v49 = a2;
  v4 = sub_1C2170CA4();
  v45 = *(v4 - 8);
  v46 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v44 = (&v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_1C2170764();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23680, &qword_1C2176D30);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v44 - v11;
  v13 = type metadata accessor for ASCABLEAdvertisement(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v50 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDD4A728 != -1)
  {
    swift_once();
  }

  v16 = sub_1C21705A4();
  __swift_project_value_buffer(v16, qword_1EDD4CB08);
  v17 = sub_1C2170584();
  v18 = sub_1C2170C34();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v47 = v13;
    v20 = v7;
    v21 = v6;
    v22 = v3;
    v23 = v19;
    *v19 = 0;
    _os_log_impl(&dword_1C20AD000, v17, v18, "Received handshake", v19, 2u);
    v24 = v23;
    v3 = v22;
    v6 = v21;
    v7 = v20;
    v13 = v47;
    MEMORY[0x1C6915360](v24, -1, -1);
  }

  v25 = OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_advertisement;
  swift_beginAccess();
  sub_1C20EB3E8(v3 + v25, v12, &qword_1EBF23680, &qword_1C2176D30);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1C20EB498(v12, &qword_1EBF23680, &qword_1C2176D30);
    v26 = sub_1C2170584();
    v27 = sub_1C2170C54();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_1C20AD000, v26, v27, "Tried to perform Noise handshake without an advertisement.", v28, 2u);
      MEMORY[0x1C6915360](v28, -1, -1);
    }

    sub_1C20E6774(0);
  }

  else
  {
    v29 = v50;
    sub_1C20EB4F8(v12, v50, type metadata accessor for ASCABLEAdvertisement);
    v47 = v3;
    v53 = *(v29 + *(v13 + 32));
    v51 = sub_1C20E7898(&unk_1F419D008);
    v52 = v30;
    sub_1C2170844();
    sub_1C20EB450(&qword_1EDD4A7A0, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
    sub_1C20EB03C();
    sub_1C21707B4();
    sub_1C20D3174(v51, v52);
    sub_1C2170734();
    (*(v7 + 8))(v9, v6);
    v31 = v53;
    v32 = sub_1C20F78AC(v48, v49, v53, *(&v53 + 1));
    v34 = v33;
    v35 = sub_1C2170584();
    v36 = sub_1C2170C34();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_1C20AD000, v35, v36, "Finishing handshake", v37, 2u);
      MEMORY[0x1C6915360](v37, -1, -1);
    }

    v38 = *(v47 + OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_webSocket);
    if (v38)
    {
      v49 = *&v38[OBJC_IVAR____TtC26AuthenticationServicesCore11ASWebSocket_webSocketTask];
      v39 = v44;
      *v44 = v32;
      v39[1] = v34;
      v40 = v34;
      v41 = v45;
      v42 = v46;
      (*(v45 + 104))(v39, *MEMORY[0x1E6969F28], v46);
      *(swift_allocObject() + 16) = v38;
      v43 = v38;
      sub_1C20D865C(v32, v40);
      sub_1C2170C94();

      (*(v41 + 8))(v39, v42);

      sub_1C20E4864();
      sub_1C20D3174(v32, v40);
      sub_1C20D3174(v31, *(&v31 + 1));
      sub_1C20EB5C8(v50, type metadata accessor for ASCABLEAdvertisement);
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1C20E4864()
{
  v1 = sub_1C2170CA4();
  v33 = *(v1 - 8);
  v34 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v3 = (&v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = sub_1C213F300(&unk_1F419D058);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF236B8, &qword_1C2176D48);
  swift_arrayDestroy();
  if (qword_1EBF23098 != -1)
  {
    swift_once();
  }

  v4 = qword_1EBF23520;
  v5 = *algn_1EBF23528;
  sub_1C20D865C(qword_1EBF23520, *algn_1EBF23528);
  v44 = MEMORY[0x1E69E7CC0];
  sub_1C20E71CC(0, 2, 0);
  v6 = v44;
  if (byte_1F419CFC0 > 2u)
  {
    if (byte_1F419CFC0 == 3)
    {
      v7 = 0xE800000000000000;
      v8 = 0x6C616E7265746E69;
    }

    else if (byte_1F419CFC0 == 4)
    {
      v7 = 0xE600000000000000;
      v8 = 0x646972627968;
    }

    else
    {
      v8 = 0x61632D7472616D73;
      v7 = 0xEA00000000006472;
    }
  }

  else
  {
    v7 = 0xE300000000000000;
    if (byte_1F419CFC0)
    {
      if (byte_1F419CFC0 == 1)
      {
        v8 = 6514286;
      }

      else
      {
        v8 = 6646882;
      }
    }

    else
    {
      v8 = 6452085;
    }
  }

  v10 = *(v44 + 16);
  v9 = *(v44 + 24);
  v11 = v10 + 1;
  if (v10 >= v9 >> 1)
  {
    sub_1C20E71CC((v9 > 1), v10 + 1, 1);
    v6 = v44;
  }

  *(v6 + 16) = v11;
  v12 = v6 + 16 * v10;
  *(v12 + 32) = v8;
  *(v12 + 40) = v7;
  if (byte_1F419CFC1 > 2u)
  {
    if (byte_1F419CFC1 == 3)
    {
      v13 = 0xE800000000000000;
      v14 = 0x6C616E7265746E69;
    }

    else if (byte_1F419CFC1 == 4)
    {
      v13 = 0xE600000000000000;
      v14 = 0x646972627968;
    }

    else
    {
      v14 = 0x61632D7472616D73;
      v13 = 0xEA00000000006472;
    }
  }

  else
  {
    v13 = 0xE300000000000000;
    if (byte_1F419CFC1)
    {
      if (byte_1F419CFC1 == 1)
      {
        v14 = 6514286;
      }

      else
      {
        v14 = 6646882;
      }
    }

    else
    {
      v14 = 6452085;
    }
  }

  v44 = v6;
  v15 = *(v6 + 24);
  v16 = v10 + 2;
  if (v11 >= v15 >> 1)
  {
    sub_1C20E71CC((v15 > 1), v16, 1);
    v6 = v44;
  }

  *(v6 + 16) = v16;
  v17 = v6 + 16 * v11;
  *(v17 + 32) = v14;
  *(v17 + 40) = v13;
  *&v37 = &unk_1F419D0E8;
  *(&v37 + 1) = &unk_1F419CFC8;
  *&v38 = v4;
  *(&v38 + 1) = v5;
  v39 = v35;
  v40 = 0;
  LOBYTE(v41) = 1;
  v42 = 0;
  v43 = v6;
  v45[2] = v38;
  v45[3] = v35;
  v45[4] = v41;
  v45[0] = xmmword_1C21769B0;
  v45[1] = v37;
  v46 = v6;
  v47 = &unk_1F419D0C0;
  v18 = v0;
  sub_1C20EAF38(&v37, &v36);
  v19 = sub_1C20F82DC(v45);
  v21 = v20;
  v22 = *(v0 + OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_webSocket);
  if (v22)
  {
    v23 = *(v0 + OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_currentState);
    *(v18 + OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_currentState) = 4;
    v24 = v22;
    sub_1C20E1718(v23);
    *v3 = v19;
    v3[1] = v21;
    v26 = v33;
    v25 = v34;
    (*(v33 + 104))(v3, *MEMORY[0x1E6969F28], v34);
    *(swift_allocObject() + 16) = v24;
    v27 = v24;
    sub_1C20D865C(v19, v21);
    sub_1C2170C94();

    sub_1C20EAF94(v45);
    sub_1C20D3174(v19, v21);
    sub_1C20EAFE8(&v37);
    (*(v26 + 8))(v3, v25);
  }

  else
  {
    if (qword_1EDD4A728 != -1)
    {
      swift_once();
    }

    v28 = sub_1C21705A4();
    __swift_project_value_buffer(v28, qword_1EDD4CB08);
    v29 = sub_1C2170584();
    v30 = sub_1C2170C54();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_1C20AD000, v29, v30, "Could not send postHandshake without a valid socket", v31, 2u);
      MEMORY[0x1C6915360](v31, -1, -1);
    }

    sub_1C20E6774(0);
    sub_1C20D3174(v19, v21);
    sub_1C20EAF94(v45);
    sub_1C20EAFE8(&v37);
  }
}

uint64_t sub_1C20E4F30(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_1C20F87F4(a1, a2, 1);
  v6 = (v5 >> 60) & 3;
  if (((v5 >> 60) & 3) <= 1)
  {
    if (v6)
    {
      v13 = v4;
      v14 = v5;
      if (qword_1EDD4A728 != -1)
      {
        swift_once();
      }

      v15 = sub_1C21705A4();
      __swift_project_value_buffer(v15, qword_1EDD4CB08);
      v16 = sub_1C2170584();
      v17 = sub_1C2170C54();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_1C20AD000, v16, v17, "Unexpectedly received caBLE update message from client. Ignoring.", v18, 2u);
        MEMORY[0x1C6915360](v18, -1, -1);
      }

      v9 = v13;
      v10 = v14;
    }

    else
    {
      v7 = v4;
      v8 = v5;
      sub_1C20D865C(v4, v5);
      sub_1C20E5378(v7, v8);
      sub_1C20E7A78(v7, v8);
      v9 = v7;
      v10 = v8;
    }

    goto LABEL_11;
  }

  if (v6 == 2)
  {
    v11 = v5;
    v12 = v4;
    sub_1C20D865C(v4, v5 & 0xCFFFFFFFFFFFFFFFLL);
    sub_1C20E59D8(v12, v11 & 0xCFFFFFFFFFFFFFFFLL);
    sub_1C20E7A78(v12, v11);
    v9 = v12;
    v10 = v11;
LABEL_11:

    return sub_1C20E7A78(v9, v10);
  }

  v20 = v4;
  v21 = v5;
  if (qword_1EDD4A728 != -1)
  {
    swift_once();
  }

  v22 = sub_1C21705A4();
  __swift_project_value_buffer(v22, qword_1EDD4CB08);
  v23 = sub_1C2170584();
  v24 = sub_1C2170C74();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_1C20AD000, v23, v24, "Received shutdown message from client", v25, 2u);
    MEMORY[0x1C6915360](v25, -1, -1);
  }

  v26 = *(v3 + OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_webSocket);
  if (v26)
  {
    v27 = v26;
    sub_1C2152FA4();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong authenticator:v3 didCompleteTransactionWithError:0];
    swift_unknownObjectRelease();
  }

  return sub_1C20E7A78(v20, v21);
}

void sub_1C20E5378(uint64_t a1, unint64_t a2)
{
  sub_1C2128700(a1, a2, v103);
  v72 = v103[10];
  v73 = v103[11];
  v74[0] = v104[0];
  *(v74 + 9) = *(v104 + 9);
  v68 = v103[6];
  v69 = v103[7];
  v70 = v103[8];
  v71 = v103[9];
  v64 = v103[2];
  v65 = v103[3];
  v66 = v103[4];
  v67 = v103[5];
  v62 = v103[0];
  v63 = v103[1];
  nullsub_1();
  v3 = (v2 + OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_currentCTAPCommand);
  v4 = *(v2 + OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_currentCTAPCommand + 176);
  v75[10] = *(v2 + OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_currentCTAPCommand + 160);
  v75[11] = v4;
  v76[0] = *(v2 + OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_currentCTAPCommand + 192);
  *(v76 + 9) = *(v2 + OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_currentCTAPCommand + 201);
  v5 = *(v2 + OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_currentCTAPCommand + 112);
  v75[6] = *(v2 + OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_currentCTAPCommand + 96);
  v75[7] = v5;
  v6 = *(v2 + OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_currentCTAPCommand + 144);
  v75[8] = *(v2 + OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_currentCTAPCommand + 128);
  v75[9] = v6;
  v7 = *(v2 + OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_currentCTAPCommand + 48);
  v75[2] = *(v2 + OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_currentCTAPCommand + 32);
  v75[3] = v7;
  v8 = *(v2 + OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_currentCTAPCommand + 80);
  v75[4] = *(v2 + OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_currentCTAPCommand + 64);
  v75[5] = v8;
  v9 = *(v2 + OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_currentCTAPCommand + 16);
  v75[0] = *(v2 + OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_currentCTAPCommand);
  v75[1] = v9;
  v10 = v73;
  v3[10] = v72;
  v3[11] = v10;
  v3[12] = v74[0];
  *(v3 + 201) = *(v74 + 9);
  v11 = v69;
  v3[6] = v68;
  v3[7] = v11;
  v12 = v71;
  v3[8] = v70;
  v3[9] = v12;
  v13 = v65;
  v3[2] = v64;
  v3[3] = v13;
  v14 = v67;
  v3[4] = v66;
  v3[5] = v14;
  v15 = v63;
  *v3 = v62;
  v3[1] = v15;
  sub_1C20EB498(v75, &qword_1EBF23558, &qword_1C21769F8);
  v16 = v3[11];
  v17 = v3[9];
  v87 = v3[10];
  v88 = v16;
  v18 = v3[11];
  v89[0] = v3[12];
  *(v89 + 9) = *(v3 + 201);
  v19 = v3[7];
  v20 = v3[5];
  v83 = v3[6];
  v84 = v19;
  v21 = v3[7];
  v22 = v3[9];
  v85 = v3[8];
  v86 = v22;
  v23 = v3[3];
  v24 = v3[1];
  v79 = v3[2];
  v80 = v23;
  v25 = v3[3];
  v26 = v3[5];
  v81 = v3[4];
  v82 = v26;
  v27 = v3[1];
  v77 = *v3;
  v78 = v27;
  v100 = v87;
  v101 = v18;
  *v102 = v3[12];
  *&v102[9] = *(v3 + 201);
  v96 = v83;
  v97 = v21;
  v98 = v85;
  v99 = v17;
  v92 = v79;
  v93 = v25;
  v94 = v81;
  v95 = v20;
  v90 = v77;
  v91 = v24;
  if (sub_1C20E7AA8(&v90) == 1)
  {
    __break(1u);
  }

  else
  {
    v60[10] = v100;
    v60[11] = v101;
    v61[0] = *v102;
    *(v61 + 9) = *&v102[9];
    v60[6] = v96;
    v60[7] = v97;
    v60[8] = v98;
    v60[9] = v99;
    v60[2] = v92;
    v60[3] = v93;
    v60[4] = v94;
    v60[5] = v95;
    v60[0] = v90;
    v60[1] = v91;
    if (sub_1C20E7ABC(v60) == 1)
    {
      nullsub_1();
      v29 = v28[7];
      v46[6] = v28[6];
      v46[7] = v29;
      v30 = v28[8];
      v31 = v28[3];
      v46[2] = v28[2];
      v46[3] = v31;
      v32 = v28[5];
      v46[4] = v28[4];
      v46[5] = v32;
      v33 = v28[1];
      v46[0] = *v28;
      v46[1] = v33;
      v46[8] = v30;
      v47 = v77;
      v51 = v81;
      v52 = v82;
      v50 = v80;
      v48 = v78;
      v49 = v79;
      v55 = v85;
      v56 = v86;
      v53 = v83;
      v54 = v84;
      *&v59[9] = *(v89 + 9);
      v58 = v88;
      *v59 = v89[0];
      v57 = v87;
      sub_1C20EAEDC(&v47, &v45);
      v34 = sub_1C20E5FA0(v46);
      sub_1C20EB498(&v77, &qword_1EBF23558, &qword_1C21769F8);
    }

    else
    {
      nullsub_1();
      v57 = v35[10];
      v58 = v35[11];
      *v59 = v35[12];
      *&v59[16] = *(v35 + 26);
      v53 = v35[6];
      v54 = v35[7];
      v55 = v35[8];
      v56 = v35[9];
      v49 = v35[2];
      v50 = v35[3];
      v51 = v35[4];
      v52 = v35[5];
      v47 = *v35;
      v48 = v35[1];
      v34 = sub_1C20E8284(&v47);
    }

    v36 = (v2 + OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_completionHandler);
    v37 = *(v2 + OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_completionHandler);
    if (v37)
    {
      v38 = v36[1];

      v37(v34, 0);
      sub_1C20B0080(v37, v38);

      v39 = *v36;
      v40 = v36[1];
      *v36 = 0;
      v36[1] = 0;
      sub_1C20B0080(v39, v40);
    }

    else
    {
      if (qword_1EDD4A728 != -1)
      {
        swift_once();
      }

      v41 = sub_1C21705A4();
      __swift_project_value_buffer(v41, qword_1EDD4CB08);
      v42 = sub_1C2170584();
      v43 = sub_1C2170C54();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 0;
        _os_log_impl(&dword_1C20AD000, v42, v43, "Could not complete command without completionHandler", v44, 2u);
        MEMORY[0x1C6915360](v44, -1, -1);
      }

      sub_1C20E6774(0);
    }
  }
}